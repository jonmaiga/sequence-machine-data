import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A131100: Indices of A002808 such that A081545(m) = Product_{k=m*(m-1)/2+1..m*(m+1)/2} A002808(a(k)).

The programs for A131100, there is no canonical definition to state claims against.
-/

/-! ## A131100.P12165615033828025130

`A131296(A214676(n+1)+1)`
-/

namespace A131100.P12165615033828025130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131296 (A214676 (n + 1) + 1).toNat

end

end A131100.P12165615033828025130

/-! ## A131100.P7625780260055332054

`A002262(n)+A000188(A024472(n+1))`
-/

namespace A131100.P7625780260055332054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + A000188 (A024472 (n + 1)).toNat

end

end A131100.P7625780260055332054

/-! ## A131100.P17503675417751182051

`A163351(n)+A000188(A024472(n+1))`
-/

namespace A131100.P17503675417751182051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163351 n + A000188 (A024472 (n + 1)).toNat

end

end A131100.P17503675417751182051

/-! ## A131100.P9999262321279254827

`A338493(A059268(n)^A308188(n+1))`
-/

namespace A131100.P9999262321279254827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338493 (SequenceMachineLib.roundAway ((A059268 n : ℚ) ^ (A308188 (n + 1) : ℤ))).toNat

end

end A131100.P9999262321279254827

/-! ## A131100.P14184193070171764901

`A214676(n+1)%A129000(A055690(n+1))`
-/

namespace A131100.P14184193070171764901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214676 (n + 1)) (A129000 (A055690 (n + 1)).toNat)

end

end A131100.P14184193070171764901

/-!
# A131101: Numbers that when added it to their prime factors +1 the result is a prime number, member of A131102.

The programs for A131101, the canonical program `A131101.P10777830498562902323` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131101 has offset 1).

The definition of A131101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131101.P10777830498562902323

`eq[1, A001222(A075254(n+1)+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A131101

/-- `eq[1, A001222(A075254(n+1)+1)]+1` -/
def P10777830498562902323.Spec : Prop :=
  ∀ n, (P10777830498562902323.a n : ℤ) = A131101 (n + 1)

theorem P10777830498562902323.correct : P10777830498562902323.Spec := by
  intro n
  simp only [A131101, Nat.add_sub_cancel]

end A131101

/-! ## A131101.P7102984942868599285

`record[(n+1)/A001222(A036288(n+1)+n+1)]`
-/

namespace A131101.P7102984942868599285
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A001222 (A036288 (n + 1) + (n + 1 : ℤ)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131101.P7102984942868599285

namespace A131101

/-- `record[(n+1)/A001222(A036288(n+1)+n+1)]` -/
def P7102984942868599285.Spec : Prop :=
  ∀ n, P7102984942868599285.a n = (A131101 (n + 1) : ℚ)

end A131101

/-! ## A131101.P4311687416613928603

`eq[1, A002033(A075254(n+1))]+1`
-/

namespace A131101.P4311687416613928603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A075254 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A131101.P4311687416613928603

namespace A131101

/-- `eq[1, A002033(A075254(n+1))]+1` -/
def P4311687416613928603.Spec : Prop :=
  ∀ n, (P4311687416613928603.a n : ℤ) = A131101 (n + 1)

end A131101

/-! ## A131101.P6198325148625589592

`eq[1, A002217(A036288(n+1)+n+1)]+1`
-/

namespace A131101.P6198325148625589592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002217 (A036288 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A131101.P6198325148625589592

namespace A131101

/-- `eq[1, A002217(A036288(n+1)+n+1)]+1` -/
def P6198325148625589592.Spec : Prop :=
  ∀ n, (P6198325148625589592.a n : ℤ) = A131101 (n + 1)

end A131101

/-! ## A131101.P1610674571488943654

`lt[A165826(A001414(n+1)+n+2), 8]+1`
-/

namespace A131101.P1610674571488943654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165826 (A001414 (n + 1) + (n + 2 : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A131101.P1610674571488943654

namespace A131101

/-- `lt[A165826(A001414(n+1)+n+2), 8]+1` -/
def P1610674571488943654.Spec : Prop :=
  ∀ n, (P1610674571488943654.a n : ℤ) = A131101 (n + 1)

end A131101

/-!
# A131102: Prime numbers arising from A131101.

The programs for A131102, there is no canonical definition to state claims against.
-/

/-! ## A131102.P10136046743418637535

`p?[A075254(n+1)+1]`
-/

namespace A131102.P10136046743418637535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075254 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A131102.P10136046743418637535

/-! ## A131102.P4580041892542811382

`p?[A036288(n+1)+1+n]`
-/

namespace A131102.P4580041892542811382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A131102.P4580041892542811382

/-! ## A131102.P5148674818109483395

`p?[A001414(n+1)+2+n]`
-/

namespace A131102.P5148674818109483395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) + 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A131102.P5148674818109483395

/-! ## A131102.P2390368154145645710

`p?[A107463(4*n)+n-3]`
-/

namespace A131102.P2390368154145645710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (4 * n) + ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A131102.P2390368154145645710

/-! ## A131102.P16048753164564916932

`p?[2*n+3-A075255(n+1)]`
-/

namespace A131102.P16048753164564916932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A075255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A131102.P16048753164564916932

/-! ## A131102.P2862173453698457561

`p?[A139693(A075254(n+1))]`
-/

namespace A131102.P2862173453698457561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139693 (A075254 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A131102.P2862173453698457561

/-! ## A131102.P4369495829735507995

`A075254(A131101(n+1))+1`
-/

namespace A131102.P4369495829735507995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075254 (A131101 (n + 1)).toNat + 1

end

end A131102.P4369495829735507995

/-! ## A131102.P17289423883007236175

`p?[A001414(A005408(n)+1)+n]`
-/

namespace A131102.P17289423883007236175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A005408 n + 1).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A131102.P17289423883007236175

/-! ## A131102.P41906457507897843

`p?[A001414(A005843(n+1))+n]`
-/

namespace A131102.P41906457507897843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A005843 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A131102.P41906457507897843

/-!
# A131103: Rectangular array read by antidiagonals: a(n, k) is the number of ways to put k labeled objects into n labeled boxes so that there are no boxes with exactly one object (n, k >= 1).

The programs for A131103, there is no canonical definition to state claims against.
-/

/-! ## A131103.P10889646143372830501

`A056924(A054582(n)^A327622(n))`
-/

namespace A131103.P10889646143372830501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (SequenceMachineLib.roundAway ((A054582 n : ℚ) ^ (A327622 n : ℤ))).toNat

end

end A131103.P10889646143372830501

/-! ## A131103.P14583984145149426227

`A002262(A038722(n+1)^A198062(n))`
-/

namespace A131103.P14583984145149426227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.roundAway ((A038722 (n + 1) : ℚ) ^ (A198062 n : ℤ))).toNat

end

end A131103.P14583984145149426227

/-!
# A131104: Rectangular array read by antidiagonals: a(n, k) is the number of ways to put k labeled objects into n labeled boxes so that there is one box with exactly one object (n, k >= 1).

The programs for A131104, there is no canonical definition to state claims against.
-/

/-! ## A131104.P1478358011623648926

`A284823(n+1)*A319420(A046802(n))`
-/

namespace A131104.P1478358011623648926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284823 (n + 1) * A319420 (A046802 n).toNat

end

end A131104.P1478358011623648926

/-! ## A131104.P10469827476010581291

`(2*A284871(n+1)-A143324(n+1))*A319420(A046802(n))`
-/

namespace A131104.P10469827476010581291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A284871 (n + 1) - A143324 (n + 1)) * A319420 (A046802 n).toNat

end

end A131104.P10469827476010581291

/-! ## A131104.P17138829832534690639

`A284823(n+1)*A348610(A076129(n+3))`
-/

namespace A131104.P17138829832534690639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284823 (n + 1) * A348610 (A076129 (n + 3)).toNat

end

end A131104.P17138829832534690639

/-! ## A131104.P7537781665477657411

`A000005(A009999(n))*A284823(A187829(n+1))`
-/

namespace A131104.P7537781665477657411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A009999 n).toNat * A284823 (A187829 (n + 1)).toNat

end

end A131104.P7537781665477657411

/-! ## A131104.P8160841304150571944

`A284823(n+1)*A325355(A241171(n+1))`
-/

namespace A131104.P8160841304150571944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284823 (n + 1) * A325355 (A241171 (n + 1)).toNat

end

end A131104.P8160841304150571944

/-!
# A131106: Rectangular array read by antidiagonals: k objects are each put into one of n boxes, independently with equal probability. a(n, k) is the expected number of boxes with exactly one object (n, k >= 1). Sequence gives the numerators.

The programs for A131106, there is no canonical definition to state claims against.
-/

/-! ## A131106.P15461289066540718566

`A003992(n)*A123275(n+1)`
-/

namespace A131106.P15461289066540718566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 n * A123275 (n + 1)

end

end A131106.P15461289066540718566

/-! ## A131106.P4320856151279997654

`A004248(A061579(n))*A123275(n+1)`
-/

namespace A131106.P4320856151279997654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (A061579 n).toNat * A123275 (n + 1)

end

end A131106.P4320856151279997654

/-! ## A131106.P8066932955361722654

`A004248(A114327(n)+n)*A123275(n+1)`
-/

namespace A131106.P8066932955361722654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (A114327 n + (n : ℤ)).toNat * A123275 (n + 1)

end

end A131106.P8066932955361722654

/-! ## A131106.P5454816256638019559

`A115621(A105152(n))*A210391(n)`
-/

namespace A131106.P5454816256638019559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115621 (A105152 n).toNat * A210391 n

end

end A131106.P5454816256638019559

/-! ## A131106.P139465656002172609

`A014963(A118888(n+1))*A003992(n)`
-/

namespace A131106.P139465656002172609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A118888 (n + 1)).toNat * A003992 n

end

end A131106.P139465656002172609

/-!
# A131107: Rectangular array read by antidiagonals: k objects are each put into one of n boxes, independently with equal probability. a(n, k) is the expected number of boxes with exactly one object (n, k >= 1). Sequence gives the denominators.

The programs for A131107, there is no canonical definition to state claims against.
-/

/-! ## A131107.P903882487786486005

`A009999(n)/gcd(A002260(n+1), A009999(n))`
-/

namespace A131107.P903882487786486005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009999 n : ℚ) / (Int.gcd (A002260 (n + 1)) (A009999 n) : ℚ)

end

end A131107.P903882487786486005

/-! ## A131107.P4522197176468432646

`lcm(A003991(n+1), A051128(n+1))/A003991(n+1)`
-/

namespace A131107.P4522197176468432646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A003991 (n + 1)) (A051128 (n + 1)) : ℚ) / (A003991 (n + 1) : ℚ)

end

end A131107.P4522197176468432646

/-!
# A131108: T(n,k) = 2*A007318(n,k) - A097806(n,k).

The programs for A131108, the canonical program `A131108.P4431672301133884722` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131108 has offset 0).

The definition of A131108 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131108.P8554867505108386549

`ceil(A131131(n)/2)`
-/

namespace A131108.P8554867505108386549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131131 n : ℚ) / 2⌉

end

end A131108.P8554867505108386549

namespace A131108

/-- `ceil(A131131(n)/2)` -/
def P8554867505108386549.Spec : Prop :=
  ∀ n, P8554867505108386549.a n = A131108 n

end A131108

/-! ## A131108.P4431672301133884722

`A028326(n)-A097806(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A131108

/-- `A028326(n)-A097806(n)` -/
def P4431672301133884722.Spec : Prop :=
  ∀ n, P4431672301133884722.a n = A131108 n

theorem P4431672301133884722.correct : P4431672301133884722.Spec := by
  intro n
  simp only [A131108]

end A131108

/-! ## A131108.P7193072537761045140

`A131398(n)-A014473(n)`
-/

namespace A131108.P7193072537761045140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131398 n - A014473 n

end

end A131108.P7193072537761045140

namespace A131108

/-- `A131398(n)-A014473(n)` -/
def P7193072537761045140.Spec : Prop :=
  ∀ n, P7193072537761045140.a n = A131108 n

end A131108

/-! ## A131108.P1711452420767153872

`A028326(n)-A167374(n)²`
-/

namespace A131108.P1711452420767153872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A167374 n ^ 2

end

end A131108.P1711452420767153872

namespace A131108

/-- `A028326(n)-A167374(n)²` -/
def P1711452420767153872.Spec : Prop :=
  ∀ n, P1711452420767153872.a n = A131108 n

end A131108

/-! ## A131108.P12318639823444287785

`A028326(n)-A103451(n+1)`
-/

namespace A131108.P12318639823444287785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A103451 (n + 1)

end

end A131108.P12318639823444287785

namespace A131108

/-- `A028326(n)-A103451(n+1)` -/
def P12318639823444287785.Spec : Prop :=
  ∀ n, P12318639823444287785.a n = A131108 n

end A131108

/-! ## A131108.P10045729460097255752

`A129994(n)-A129184(n+1)`
-/

namespace A131108.P10045729460097255752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129994 n - A129184 (n + 1)

end

end A131108.P10045729460097255752

namespace A131108

/-- `A129994(n)-A129184(n+1)` -/
def P10045729460097255752.Spec : Prop :=
  ∀ n, P10045729460097255752.a n = A131108 n

end A131108

/-! ## A131108.P12609316600482864377

`2*A007318(n)-A097806(n)`
-/

namespace A131108.P12609316600482864377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A097806 n

end

end A131108.P12609316600482864377

namespace A131108

/-- `2*A007318(n)-A097806(n)` -/
def P12609316600482864377.Spec : Prop :=
  ∀ n, P12609316600482864377.a n = A131108 n

end A131108

/-! ## A131108.P8507226679175953902

`(A131129(n)+A007318(n))/2`
-/

namespace A131108.P8507226679175953902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131129 n + A007318 n : ℚ) / 2

end

end A131108.P8507226679175953902

namespace A131108

/-- `(A131129(n)+A007318(n))/2` -/
def P8507226679175953902.Spec : Prop :=
  ∀ n, P8507226679175953902.a n = (A131108 n : ℚ)

end A131108

/-! ## A131108.P2359635468929239107

`(A131131(n)+A097806(n))/2`
-/

namespace A131108.P2359635468929239107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131131 n + A097806 n : ℚ) / 2

end

end A131108.P2359635468929239107

namespace A131108

/-- `(A131131(n)+A097806(n))/2` -/
def P2359635468929239107.Spec : Prop :=
  ∀ n, P2359635468929239107.a n = (A131108 n : ℚ)

end A131108

/-! ## A131108.P18156287436474282079

`2*A131129(n)-A131131(n)`
-/

namespace A131108.P18156287436474282079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131129 n - A131131 n

end

end A131108.P18156287436474282079

namespace A131108

/-- `2*A131129(n)-A131131(n)` -/
def P18156287436474282079.Spec : Prop :=
  ∀ n, P18156287436474282079.a n = A131108 n

end A131108

/-! ## A131108.P11899313972534149182

`A028326(n)-A103452(n+1)²`
-/

namespace A131108.P11899313972534149182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A103452 (n + 1) ^ 2

end

end A131108.P11899313972534149182

namespace A131108

/-- `A028326(n)-A103452(n+1)²` -/
def P11899313972534149182.Spec : Prop :=
  ∀ n, P11899313972534149182.a n = A131108 n

end A131108

/-! ## A131108.P12453892584532854819

`2*A007318(n)-A167374(n)²`
-/

namespace A131108.P12453892584532854819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A167374 n ^ 2

end

end A131108.P12453892584532854819

namespace A131108

/-- `2*A007318(n)-A167374(n)²` -/
def P12453892584532854819.Spec : Prop :=
  ∀ n, P12453892584532854819.a n = A131108 n

end A131108

/-! ## A131108.P3489332589740569187

`A131127(n)-2*A129184(n+1)`
-/

namespace A131108.P3489332589740569187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131127 n - 2 * A129184 (n + 1)

end

end A131108.P3489332589740569187

namespace A131108

/-- `A131127(n)-2*A129184(n+1)` -/
def P3489332589740569187.Spec : Prop :=
  ∀ n, P3489332589740569187.a n = A131108 n

end A131108

/-! ## A131108.P4313504341568073295

`A007318(n)+A131131(n)-A131129(n)`
-/

namespace A131108.P4313504341568073295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A131131 n - A131129 n)

end

end A131108.P4313504341568073295

namespace A131108

/-- `A007318(n)+A131131(n)-A131129(n)` -/
def P4313504341568073295.Spec : Prop :=
  ∀ n, P4313504341568073295.a n = A131108 n

end A131108

/-! ## A131108.P15426221575275520383

`A131127(n)+A131129(n)-A131111(n)`
-/

namespace A131108.P15426221575275520383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131127 n + (A131129 n - A131111 n)

end

end A131108.P15426221575275520383

namespace A131108

/-- `A131127(n)+A131129(n)-A131111(n)` -/
def P15426221575275520383.Spec : Prop :=
  ∀ n, P15426221575275520383.a n = A131108 n

end A131108

/-! ## A131108.P13345331382429712246

`A131127(n)+A167374(n)-A097806(n)`
-/

namespace A131108.P13345331382429712246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131127 n + (A167374 n - A097806 n)

end

end A131108.P13345331382429712246

namespace A131108

/-- `A131127(n)+A167374(n)-A097806(n)` -/
def P13345331382429712246.Spec : Prop :=
  ∀ n, P13345331382429712246.a n = A131108 n

end A131108

/-! ## A131108.P13333151880951311436

`A097806(n)-(A007318(n)-A131129(n))`
-/

namespace A131108.P13333151880951311436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n - (A007318 n - A131129 n)

end

end A131108.P13333151880951311436

namespace A131108

/-- `A097806(n)-(A007318(n)-A131129(n))` -/
def P13333151880951311436.Spec : Prop :=
  ∀ n, P13333151880951311436.a n = A131108 n

end A131108

/-! ## A131108.P11108347092765605213

`A028326(n)-(A028326(n)-A131127(n))²`
-/

namespace A131108.P11108347092765605213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - (A028326 n - A131127 n) ^ 2

end

end A131108.P11108347092765605213

namespace A131108

/-- `A028326(n)-(A028326(n)-A131127(n))²` -/
def P11108347092765605213.Spec : Prop :=
  ∀ n, P11108347092765605213.a n = A131108 n

end A131108

/-! ## A131108.P3430087434049511720

`A134058(n)-(A131127(n)-A134058(n))²`
-/

namespace A131108.P3430087434049511720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134058 n - (A131127 n - A134058 n) ^ 2

end

end A131108.P3430087434049511720

namespace A131108

/-- `A134058(n)-(A131127(n)-A134058(n))²` -/
def P3430087434049511720.Spec : Prop :=
  ∀ n, P3430087434049511720.a n = A131108 n

end A131108

/-! ## A131108.P10546665004939922652

`A007318(n)+A007318(n)-A103451(n+1)`
-/

namespace A131108.P10546665004939922652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A007318 n - A103451 (n + 1))

end

end A131108.P10546665004939922652

namespace A131108

/-- `A007318(n)+A007318(n)-A103451(n+1)` -/
def P10546665004939922652.Spec : Prop :=
  ∀ n, P10546665004939922652.a n = A131108 n

end A131108

/-!
# A131109: a(n) is the smallest semiprime such that difference between a(n) and next semiprime, b(n), is n.

The programs for A131109, there is no canonical definition to state claims against.
-/

/-! ## A131109.P4411348540140375272

`A001358(A123375(n+1))`
-/

namespace A131109.P4411348540140375272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A123375 (n + 1)).toNat

end

end A131109.P4411348540140375272

/-! ## A131109.P2941306558340177044

`A088707(A123375(n+1))-gcd(2, A000040(n+2))`
-/

namespace A131109.P2941306558340177044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (A123375 (n + 1)).toNat - (Int.gcd 2 (A000040 (n + 2)) : ℤ)

end

end A131109.P2941306558340177044

/-! ## A131109.P9516203962586112143

`A088707(A123375(n+1))-A000005(((-1)^n)²)`
-/

namespace A131109.P9516203962586112143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (A123375 (n + 1)).toNat - A000005 (((-1) ^ n) ^ 2).toNat

end

end A131109.P9516203962586112143

/-! ## A131109.P14369808331986722745

`A075818(A123375(n+1))/A001222(A033476(n))`
-/

namespace A131109.P14369808331986722745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075818 (A123375 (n + 1)).toNat : ℚ) / (A001222 (A033476 n).toNat : ℚ)

end

end A131109.P14369808331986722745

/-! ## A131109.P11378085045492604076

`A075818(A123375(n+1))/A001222(A099981(n))`
-/

namespace A131109.P11378085045492604076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075818 (A123375 (n + 1)).toNat : ℚ) / (A001222 (A099981 n).toNat : ℚ)

end

end A131109.P11378085045492604076

/-!
# A131110: A000012 * A133084.

The programs for A131110, the canonical program `A131110.P10774728730179441097` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131110 has offset 1).

The definition of A131110 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131110.P2409538047767051628

`A133567(comp[∑[n]]+1)`
-/

namespace A131110.P2409538047767051628
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133567 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A131110.P2409538047767051628

namespace A131110

/-- `A133567(comp[∑[n]]+1)` -/
def P2409538047767051628.Spec : Prop :=
  ∀ n, P2409538047767051628.a n = A131110 (n + 1)

end A131110

/-! ## A131110.P10774728730179441097

`A133567(A014132(n+2))+A098108(3*n+2)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A131110

/-- `A133567(A014132(n+2))+A098108(3*n+2)` -/
def P10774728730179441097.Spec : Prop :=
  ∀ n, P10774728730179441097.a n = A131110 (n + 1)

theorem P10774728730179441097.correct : P10774728730179441097.Spec := by
  intro n
  simp only [A131110, Nat.add_sub_cancel]

end A131110

/-! ## A131110.P3915024402268574923

`A059841(A001223(n+5))+A133567(A014132(n+2))-1`
-/

namespace A131110.P3915024402268574923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A001223 (n + 5)).toNat + (A133567 (A014132 (n + 2)).toNat - 1)

end

end A131110.P3915024402268574923

namespace A131110

/-- `A059841(A001223(n+5))+A133567(A014132(n+2))-1` -/
def P3915024402268574923.Spec : Prop :=
  ∀ n, P3915024402268574923.a n = A131110 (n + 1)

end A131110

/-! ## A131110.P1463215701788273836

`A059841(2*n)*A133567(A014132(n+2))`
-/

namespace A131110.P1463215701788273836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (2 * n) * A133567 (A014132 (n + 2)).toNat

end

end A131110.P1463215701788273836

namespace A131110

/-- `A059841(2*n)*A133567(A014132(n+2))` -/
def P1463215701788273836.Spec : Prop :=
  ∀ n, P1463215701788273836.a n = A131110 (n + 1)

end A131110

/-! ## A131110.P5564201972917504672

`A059841(A242057(n+1))+A133567(A014132(n+2))-1`
-/

namespace A131110.P5564201972917504672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A242057 (n + 1)).toNat + (A133567 (A014132 (n + 2)).toNat - 1)

end

end A131110.P5564201972917504672

namespace A131110

/-- `A059841(A242057(n+1))+A133567(A014132(n+2))-1` -/
def P5564201972917504672.Spec : Prop :=
  ∀ n, P5564201972917504672.a n = A131110 (n + 1)

end A131110

/-! ## A131110.P6394501169556797543

`A059841(A017365(n))+A133567(A014132(n+2))-1`
-/

namespace A131110.P6394501169556797543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A017365 n).toNat + (A133567 (A014132 (n + 2)).toNat - 1)

end

end A131110.P6394501169556797543

namespace A131110

/-- `A059841(A017365(n))+A133567(A014132(n+2))-1` -/
def P6394501169556797543.Spec : Prop :=
  ∀ n, P6394501169556797543.a n = A131110 (n + 1)

end A131110

/-! ## A131110.P7648893519463784735

`or(A133081(n+1), A133567(A014132(n+2)))`
-/

namespace A131110.P7648893519463784735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A133081 (n + 1)) (A133567 (A014132 (n + 2)).toNat)

end

end A131110.P7648893519463784735

namespace A131110

/-- `or(A133081(n+1), A133567(A014132(n+2)))` -/
def P7648893519463784735.Spec : Prop :=
  ∀ n, P7648893519463784735.a n = A131110 (n + 1)

end A131110

/-!
# A131111: T(n, k) = 3*binomial(n,k) - 2*I(n,k), where I is the identity matrix; triangle T read by rows (n >= 0 and 0 <= k <= n).

The programs for A131111, the canonical program `A131111.P2883146783880344196` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131111 has offset 0).

The definition of A131111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131111.P15083722931605072262

`ceil(A131114(n)/2)`
-/

namespace A131111.P15083722931605072262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131114 n : ℚ) / 2⌉

end

end A131111.P15083722931605072262

namespace A131111

/-- `ceil(A131114(n)/2)` -/
def P15083722931605072262.Spec : Prop :=
  ∀ n, P15083722931605072262.a n = A131111 n

end A131111

/-! ## A131111.P11955372009907014708

`A038220(n)/A247936(n)`
-/

namespace A131111.P11955372009907014708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038220 n : ℚ) / (A247936 n : ℚ)

end

end A131111.P11955372009907014708

namespace A131111

/-- `A038220(n)/A247936(n)` -/
def P11955372009907014708.Spec : Prop :=
  ∀ n, P11955372009907014708.a n = (A131111 n : ℚ)

end A131111

/-! ## A131111.P9136510881908979637

`A028326(n)-A154926(n+1)`
-/

namespace A131111.P9136510881908979637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A154926 (n + 1)

end

end A131111.P9136510881908979637

namespace A131111

/-- `A028326(n)-A154926(n+1)` -/
def P9136510881908979637.Spec : Prop :=
  ∀ n, P9136510881908979637.a n = A131111 n

end A131111

/-! ## A131111.P2883146783880344196

`2*A129994(n)-A007318(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A131111

/-- `2*A129994(n)-A007318(n)` -/
def P2883146783880344196.Spec : Prop :=
  ∀ n, P2883146783880344196.a n = A131111 n

theorem P2883146783880344196.correct : P2883146783880344196.Spec := by
  intro n
  simp only [A131111]

end A131111

/-! ## A131111.P15841153215984860626

`(A131113(n)+A007318(n))/2`
-/

namespace A131111.P15841153215984860626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131113 n + A007318 n : ℚ) / 2

end

end A131111.P15841153215984860626

namespace A131111

/-- `(A131113(n)+A007318(n))/2` -/
def P15841153215984860626.Spec : Prop :=
  ∀ n, P15841153215984860626.a n = (A131111 n : ℚ)

end A131111

/-! ## A131111.P6560259326856618903

`2*A131112(n)-A131113(n)`
-/

namespace A131111.P6560259326856618903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131112 n - A131113 n

end

end A131111.P6560259326856618903

namespace A131111

/-- `2*A131112(n)-A131113(n)` -/
def P6560259326856618903.Spec : Prop :=
  ∀ n, P6560259326856618903.a n = A131111 n

end A131111

/-! ## A131111.P11474957861101315967

`2*A131113(n)-A131115(n)`
-/

namespace A131111.P11474957861101315967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131113 n - A131115 n

end

end A131111.P11474957861101315967

namespace A131111

/-- `2*A131113(n)-A131115(n)` -/
def P11474957861101315967.Spec : Prop :=
  ∀ n, P11474957861101315967.a n = A131111 n

end A131111

/-! ## A131111.P17957296269992174544

`gcd(A027465(n), A120909(n+1))`
-/

namespace A131111.P17957296269992174544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027465 n) (A120909 (n + 1))

end

end A131111.P17957296269992174544

namespace A131111

/-- `gcd(A027465(n), A120909(n+1))` -/
def P17957296269992174544.Spec : Prop :=
  ∀ n, (P17957296269992174544.a n : ℤ) = A131111 n

end A131111

/-! ## A131111.P3823450499831763280

`gcd(A120910(n+1), A164942(n))`
-/

namespace A131111.P3823450499831763280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A120910 (n + 1)) (A164942 n)

end

end A131111.P3823450499831763280

namespace A131111

/-- `gcd(A120910(n+1), A164942(n))` -/
def P3823450499831763280.Spec : Prop :=
  ∀ n, (P3823450499831763280.a n : ℤ) = A131111 n

end A131111

/-! ## A131111.P12334708968242880826

`A131114(n)/gcd(2, A038207(n))`
-/

namespace A131111.P12334708968242880826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131114 n : ℚ) / (Int.gcd 2 (A038207 n) : ℚ)

end

end A131111.P12334708968242880826

namespace A131111

/-- `A131114(n)/gcd(2, A038207(n))` -/
def P12334708968242880826.Spec : Prop :=
  ∀ n, P12334708968242880826.a n = (A131111 n : ℚ)

end A131111

/-! ## A131111.P2527474670055529443

`and(A134059(n), A154990(n+1))`
-/

namespace A131111.P2527474670055529443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134059 n) (A154990 (n + 1))

end

end A131111.P2527474670055529443

namespace A131111

/-- `and(A134059(n), A154990(n+1))` -/
def P2527474670055529443.Spec : Prop :=
  ∀ n, P2527474670055529443.a n = A131111 n

end A131111

/-! ## A131111.P2940865081032472556

`(2-A154990(n+1))*A007318(n)`
-/

namespace A131111.P2940865081032472556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A154990 (n + 1)) * A007318 n

end

end A131111.P2940865081032472556

namespace A131111

/-- `(2-A154990(n+1))*A007318(n)` -/
def P2940865081032472556.Spec : Prop :=
  ∀ n, P2940865081032472556.a n = A131111 n

end A131111

/-! ## A131111.P13266651780492066570

`A134059(n)-A136521(A028310(n))`
-/

namespace A131111.P13266651780492066570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134059 n - A136521 (A028310 n).toNat

end

end A131111.P13266651780492066570

namespace A131111

/-- `A134059(n)-A136521(A028310(n))` -/
def P13266651780492066570.Spec : Prop :=
  ∀ n, P13266651780492066570.a n = A131111 n

end A131111

/-! ## A131111.P9331673326877698396

`A007318(n)+A131127(n)-A097806(n)`
-/

namespace A131111.P9331673326877698396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A131127 n - A097806 n)

end

end A131111.P9331673326877698396

namespace A131111

/-- `A007318(n)+A131127(n)-A097806(n)` -/
def P9331673326877698396.Spec : Prop :=
  ∀ n, P9331673326877698396.a n = A131111 n

end A131111

/-! ## A131111.P8362999469893445468

`A007318(n)+A131114(n)-A131112(n)`
-/

namespace A131111.P8362999469893445468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A131114 n - A131112 n)

end

end A131111.P8362999469893445468

namespace A131111

/-- `A007318(n)+A131114(n)-A131112(n)` -/
def P8362999469893445468.Spec : Prop :=
  ∀ n, P8362999469893445468.a n = A131111 n

end A131111

/-! ## A131111.P9185990151774552595

`A007318(n)+A131115(n)-A131113(n)`
-/

namespace A131111.P9185990151774552595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A131115 n - A131113 n)

end

end A131111.P9185990151774552595

namespace A131111

/-- `A007318(n)+A131115(n)-A131113(n)` -/
def P9185990151774552595.Spec : Prop :=
  ∀ n, P9185990151774552595.a n = A131111 n

end A131111

/-! ## A131111.P15123179337997473596

`A131108(n)+A131127(n)-A007318(n)`
-/

namespace A131111.P15123179337997473596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131108 n + (A131127 n - A007318 n)

end

end A131111.P15123179337997473596

namespace A131111

/-- `A131108(n)+A131127(n)-A007318(n)` -/
def P15123179337997473596.Spec : Prop :=
  ∀ n, P15123179337997473596.a n = A131111 n

end A131111

/-! ## A131111.P11813621702290752119

`A103451(n)+A132047(n)-A103452(n)`
-/

namespace A131111.P11813621702290752119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n + (A132047 n - A103452 n)

end

end A131111.P11813621702290752119

namespace A131111

/-- `A103451(n)+A132047(n)-A103452(n)` -/
def P11813621702290752119.Spec : Prop :=
  ∀ n, P11813621702290752119.a n = A131111 n

end A131111

/-! ## A131111.P15530892869578892344

`A131112(n)+A131113(n)-A131114(n)`
-/

namespace A131111.P15530892869578892344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131112 n + (A131113 n - A131114 n)

end

end A131111.P15530892869578892344

namespace A131111

/-- `A131112(n)+A131113(n)-A131114(n)` -/
def P15530892869578892344.Spec : Prop :=
  ∀ n, P15530892869578892344.a n = A131111 n

end A131111

/-! ## A131111.P15990415611785462668

`A131112(n)+A131114(n)-A131115(n)`
-/

namespace A131111.P15990415611785462668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131112 n + (A131114 n - A131115 n)

end

end A131111.P15990415611785462668

namespace A131111

/-- `A131112(n)+A131114(n)-A131115(n)` -/
def P15990415611785462668.Spec : Prop :=
  ∀ n, P15990415611785462668.a n = A131111 n

end A131111

/-!
# A131112: T(n,k) = 4*binomial(n,k) - 3*I(n,k), where I is the identity matrix; triangle T read by rows (n >= 0 and 0 <= k <= n).

The programs for A131112, the canonical program `A131112.P1892582295749430120` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131112 has offset 0).

The definition of A131112 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131112.P7397385894195128709

`A132200(n)%A094444(n)`
-/

namespace A131112.P7397385894195128709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132200 n) (A094444 n)

end

end A131112.P7397385894195128709

namespace A131112

/-- `A132200(n)%A094444(n)` -/
def P7397385894195128709.Spec : Prop :=
  ∀ n, P7397385894195128709.a n = A131112 n

end A131112

/-! ## A131112.P3647596444862291493

`gcd(A038231(n), A132200(n))`
-/

namespace A131112.P3647596444862291493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038231 n) (A132200 n)

end

end A131112.P3647596444862291493

namespace A131112

/-- `gcd(A038231(n), A132200(n))` -/
def P3647596444862291493.Spec : Prop :=
  ∀ n, (P3647596444862291493.a n : ℤ) = A131112 n

end A131112

/-! ## A131112.P12177681153707317538

`A129994(n)²/A007318(n)`
-/

namespace A131112.P12177681153707317538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129994 n ^ 2 : ℚ) / (A007318 n : ℚ)

end

end A131112.P12177681153707317538

namespace A131112

/-- `A129994(n)²/A007318(n)` -/
def P12177681153707317538.Spec : Prop :=
  ∀ n, P12177681153707317538.a n = (A131112 n : ℚ)

end A131112

/-! ## A131112.P15652027067989113399

`(A131115(n)+A007318(n))/2`
-/

namespace A131112.P15652027067989113399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131115 n + A007318 n : ℚ) / 2

end

end A131112.P15652027067989113399

namespace A131112

/-- `(A131115(n)+A007318(n))/2` -/
def P15652027067989113399.Spec : Prop :=
  ∀ n, P15652027067989113399.a n = (A131112 n : ℚ)

end A131112

/-! ## A131112.P1892582295749430120

`2*A131111(n)-A129994(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A131112

/-- `2*A131111(n)-A129994(n)` -/
def P1892582295749430120.Spec : Prop :=
  ∀ n, P1892582295749430120.a n = A131112 n

theorem P1892582295749430120.correct : P1892582295749430120.Spec := by
  intro n
  simp only [A131112]

end A131112

/-! ## A131112.P959265522833600462

`2*A131113(n)-A131114(n)`
-/

namespace A131112.P959265522833600462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131113 n - A131114 n

end

end A131112.P959265522833600462

namespace A131112

/-- `2*A131113(n)-A131114(n)` -/
def P959265522833600462.Spec : Prop :=
  ∀ n, P959265522833600462.a n = A131112 n

end A131112

/-! ## A131112.P6391058355761786166

`(A131113(n)+A131111(n))/2`
-/

namespace A131112.P6391058355761786166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131113 n + A131111 n : ℚ) / 2

end

end A131112.P6391058355761786166

namespace A131112

/-- `(A131113(n)+A131111(n))/2` -/
def P6391058355761786166.Spec : Prop :=
  ∀ n, P6391058355761786166.a n = (A131112 n : ℚ)

end A131112

/-! ## A131112.P11620774041628544180

`A104795(n)²-A014473(n)²`
-/

namespace A131112.P11620774041628544180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104795 n ^ 2 - A014473 n ^ 2

end

end A131112.P11620774041628544180

namespace A131112

/-- `A104795(n)²-A014473(n)²` -/
def P11620774041628544180.Spec : Prop :=
  ∀ n, P11620774041628544180.a n = A131112 n

end A131112

/-! ## A131112.P14213616827319948047

`(A023532(n)+1)²*A007318(n)`
-/

namespace A131112.P14213616827319948047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A023532 n + 1) ^ 2 * A007318 n

end

end A131112.P14213616827319948047

namespace A131112

/-- `(A023532(n)+1)²*A007318(n)` -/
def P14213616827319948047.Spec : Prop :=
  ∀ n, P14213616827319948047.a n = A131112 n

end A131112

/-! ## A131112.P7372612712335743851

`(A014473(n)+1)*A114284(n)²`
-/

namespace A131112.P7372612712335743851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A114284 n ^ 2

end

end A131112.P7372612712335743851

namespace A131112

/-- `(A014473(n)+1)*A114284(n)²` -/
def P7372612712335743851.Spec : Prop :=
  ∀ n, P7372612712335743851.a n = A131112 n

end A131112

/-! ## A131112.P15501651004228897914

`A238303(n+1)²*A007318(n)`
-/

namespace A131112.P15501651004228897914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238303 (n + 1) ^ 2 * A007318 n

end

end A131112.P15501651004228897914

namespace A131112

/-- `A238303(n+1)²*A007318(n)` -/
def P15501651004228897914.Spec : Prop :=
  ∀ n, P15501651004228897914.a n = A131112 n

end A131112

/-! ## A131112.P5961629678695546656

`(2-A023531(n))²*A007318(n)`
-/

namespace A131112.P5961629678695546656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A023531 n) ^ 2 * A007318 n

end

end A131112.P5961629678695546656

namespace A131112

/-- `(2-A023531(n))²*A007318(n)` -/
def P5961629678695546656.Spec : Prop :=
  ∀ n, P5961629678695546656.a n = A131112 n

end A131112

/-! ## A131112.P16011844286703010628

`gcd(2, A013620(n))²*A007318(n)`
-/

namespace A131112.P16011844286703010628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A013620 n) ^ 2 : ℤ) * A007318 n

end

end A131112.P16011844286703010628

namespace A131112

/-- `gcd(2, A013620(n))²*A007318(n)` -/
def P16011844286703010628.Spec : Prop :=
  ∀ n, P16011844286703010628.a n = A131112 n

end A131112

/-! ## A131112.P5807053423545100394

`A057427(A025581(n))*A135087(n)+1`
-/

namespace A131112.P5807053423545100394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A025581 n).toNat * A135087 n + 1

end

end A131112.P5807053423545100394

namespace A131112

/-- `A057427(A025581(n))*A135087(n)+1` -/
def P5807053423545100394.Spec : Prop :=
  ∀ n, P5807053423545100394.a n = A131112 n

end A131112

/-! ## A131112.P5623666836547342205

`A007318(n)+A131114(n)-A131111(n)`
-/

namespace A131112.P5623666836547342205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A131114 n - A131111 n)

end

end A131112.P5623666836547342205

namespace A131112

/-- `A007318(n)+A131114(n)-A131111(n)` -/
def P5623666836547342205.Spec : Prop :=
  ∀ n, P5623666836547342205.a n = A131112 n

end A131112

/-! ## A131112.P3067817713810776463

`A131111(n)+A131114(n)-A131113(n)`
-/

namespace A131112.P3067817713810776463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131111 n + (A131114 n - A131113 n)

end

end A131112.P3067817713810776463

namespace A131112

/-- `A131111(n)+A131114(n)-A131113(n)` -/
def P3067817713810776463.Spec : Prop :=
  ∀ n, P3067817713810776463.a n = A131112 n

end A131112

/-! ## A131112.P14780312364022909401

`A131111(n)+A131115(n)-A131114(n)`
-/

namespace A131112.P14780312364022909401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131111 n + (A131115 n - A131114 n)

end

end A131112.P14780312364022909401

namespace A131112

/-- `A131111(n)+A131115(n)-A131114(n)` -/
def P14780312364022909401.Spec : Prop :=
  ∀ n, P14780312364022909401.a n = A131112 n

end A131112

/-! ## A131112.P11287573001798616395

`A131113(n)+A131114(n)-A131115(n)`
-/

namespace A131112.P11287573001798616395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131113 n + (A131114 n - A131115 n)

end

end A131112.P11287573001798616395

namespace A131112

/-- `A131113(n)+A131114(n)-A131115(n)` -/
def P11287573001798616395.Spec : Prop :=
  ∀ n, P11287573001798616395.a n = A131112 n

end A131112

/-! ## A131112.P2703662701211411510

`gcd(2*A028326(n), A013620(n)²)`
-/

namespace A131112.P2703662701211411510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A028326 n) (A013620 n ^ 2)

end

end A131112.P2703662701211411510

namespace A131112

/-- `gcd(2*A028326(n), A013620(n)²)` -/
def P2703662701211411510.Spec : Prop :=
  ∀ n, (P2703662701211411510.a n : ℤ) = A131112 n

end A131112

/-! ## A131112.P6253274573236666444

`gcd(2*A134058(n), A038255(n)²)`
-/

namespace A131112.P6253274573236666444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A134058 n) (A038255 n ^ 2)

end

end A131112.P6253274573236666444

namespace A131112

/-- `gcd(2*A134058(n), A038255(n)²)` -/
def P6253274573236666444.Spec : Prop :=
  ∀ n, (P6253274573236666444.a n : ℤ) = A131112 n

end A131112

/-!
# A131113: T(n,k) = 5*binomial(n,k) - 4*I(n,k), where I is the identity matrix; triangle T read by rows (n >= 0 and 0 <= k <= n).

The programs for A131113, the canonical program `A131113.P8900513154664497593` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131113 has offset 0).

The definition of A131113 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131113.P4217948383406504433

`gcd(Δ[A003056(n)], A135089(n))`
-/

namespace A131113.P4217948383406504433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A135089 n)

end

end A131113.P4217948383406504433

namespace A131113

/-- `gcd(Δ[A003056(n)], A135089(n))` -/
def P4217948383406504433.Spec : Prop :=
  ∀ n, (P4217948383406504433.a n : ℤ) = A131113 n

end A131113

/-! ## A131113.P8900513154664497593

`2*A131111(n)-A007318(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A131113

/-- `2*A131111(n)-A007318(n)` -/
def P8900513154664497593.Spec : Prop :=
  ∀ n, P8900513154664497593.a n = A131113 n

theorem P8900513154664497593.correct : P8900513154664497593.Spec := by
  intro n
  simp only [A131113]

end A131113

/-! ## A131113.P11432787206991297782

`2*A131112(n)-A131111(n)`
-/

namespace A131113.P11432787206991297782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131112 n - A131111 n

end

end A131113.P11432787206991297782

namespace A131113

/-- `2*A131112(n)-A131111(n)` -/
def P11432787206991297782.Spec : Prop :=
  ∀ n, P11432787206991297782.a n = A131113 n

end A131113

/-! ## A131113.P5198974634464538452

`2*A131114(n)-A131115(n)`
-/

namespace A131113.P5198974634464538452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131114 n - A131115 n

end

end A131113.P5198974634464538452

namespace A131113

/-- `2*A131114(n)-A131115(n)` -/
def P5198974634464538452.Spec : Prop :=
  ∀ n, P5198974634464538452.a n = A131113 n

end A131113

/-! ## A131113.P9909841774536334853

`(A131114(n)+A131112(n))/2`
-/

namespace A131113.P9909841774536334853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131114 n + A131112 n : ℚ) / 2

end

end A131113.P9909841774536334853

namespace A131113

/-- `(A131114(n)+A131112(n))/2` -/
def P9909841774536334853.Spec : Prop :=
  ∀ n, P9909841774536334853.a n = (A131113 n : ℚ)

end A131113

/-! ## A131113.P1195486240438846668

`(A131115(n)+A131111(n))/2`
-/

namespace A131113.P1195486240438846668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131115 n + A131111 n : ℚ) / 2

end

end A131113.P1195486240438846668

namespace A131113

/-- `(A131115(n)+A131111(n))/2` -/
def P1195486240438846668.Spec : Prop :=
  ∀ n, P1195486240438846668.a n = (A131113 n : ℚ)

end A131113

/-! ## A131113.P8654632719267701197

`and(A135089(n), A154990(n+1))`
-/

namespace A131113.P8654632719267701197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A135089 n) (A154990 (n + 1))

end

end A131113.P8654632719267701197

namespace A131113

/-- `and(A135089(n), A154990(n+1))` -/
def P8654632719267701197.Spec : Prop :=
  ∀ n, P8654632719267701197.a n = A131113 n

end A131113

/-! ## A131113.P533660164080268020

`A007318(n)+A131115(n)-A131111(n)`
-/

namespace A131113.P533660164080268020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A131115 n - A131111 n)

end

end A131113.P533660164080268020

namespace A131113

/-- `A007318(n)+A131115(n)-A131111(n)` -/
def P533660164080268020.Spec : Prop :=
  ∀ n, P533660164080268020.a n = A131113 n

end A131113

/-! ## A131113.P10521539490159325281

`A131111(n)+A131114(n)-A131112(n)`
-/

namespace A131113.P10521539490159325281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131111 n + (A131114 n - A131112 n)

end

end A131113.P10521539490159325281

namespace A131113

/-- `A131111(n)+A131114(n)-A131112(n)` -/
def P10521539490159325281.Spec : Prop :=
  ∀ n, P10521539490159325281.a n = A131113 n

end A131113

/-! ## A131113.P1862601674596723826

`A131112(n)+A131115(n)-A131114(n)`
-/

namespace A131113.P1862601674596723826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131112 n + (A131115 n - A131114 n)

end

end A131113.P1862601674596723826

namespace A131113

/-- `A131112(n)+A131115(n)-A131114(n)` -/
def P1862601674596723826.Spec : Prop :=
  ∀ n, P1862601674596723826.a n = A131113 n

end A131113

/-! ## A131113.P3976339573963998498

`A135089(n%A062196(n+1))`
-/

namespace A131113.P3976339573963998498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135089 (Int.tmod (n : ℤ) (A062196 (n + 1))).toNat

end

end A131113.P3976339573963998498

namespace A131113

/-- `A135089(n%A062196(n+1))` -/
def P3976339573963998498.Spec : Prop :=
  ∀ n, P3976339573963998498.a n = A131113 n

end A131113

/-! ## A131113.P15346185862728180256

`A135089(n)/ceil(A135089(n)/A206819(n))`
-/

namespace A131113.P15346185862728180256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135089 n : ℚ) / (⌈(A135089 n : ℚ) / (A206819 n : ℚ)⌉ : ℚ)

end

end A131113.P15346185862728180256

namespace A131113

/-- `A135089(n)/ceil(A135089(n)/A206819(n))` -/
def P15346185862728180256.Spec : Prop :=
  ∀ n, P15346185862728180256.a n = (A131113 n : ℚ)

end A131113

/-! ## A131113.P11560078267195810745

`gcd(A013626(n), A135089(n))`
-/

namespace A131113.P11560078267195810745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013626 n) (A135089 n)

end

end A131113.P11560078267195810745

namespace A131113

/-- `gcd(A013626(n), A135089(n))` -/
def P11560078267195810745.Spec : Prop :=
  ∀ n, (P11560078267195810745.a n : ℤ) = A131113 n

end A131113

/-! ## A131113.P1671722855283298311

`A008706(A198321(n+1))`
-/

namespace A131113.P1671722855283298311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A198321 (n + 1)).toNat

end

end A131113.P1671722855283298311

namespace A131113

/-- `A008706(A198321(n+1))` -/
def P1671722855283298311.Spec : Prop :=
  ∀ n, P1671722855283298311.a n = A131113 n

end A131113

/-! ## A131113.P4475554187685048317

`A195140(A129994(n))`
-/

namespace A131113.P4475554187685048317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195140 (A129994 n).toNat

end

end A131113.P4475554187685048317

namespace A131113

/-- `A195140(A129994(n))` -/
def P4475554187685048317.Spec : Prop :=
  ∀ n, P4475554187685048317.a n = A131113 n

end A131113

/-! ## A131113.P558791080576800961

`A166711(A131111(n)-1)+A131111(n)`
-/

namespace A131113.P558791080576800961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166711 (A131111 n - 1).toNat + A131111 n

end

end A131113.P558791080576800961

namespace A131113

/-- `A166711(A131111(n)-1)+A131111(n)` -/
def P558791080576800961.Spec : Prop :=
  ∀ n, P558791080576800961.a n = A131113 n

end A131113

/-! ## A131113.P17844855180769112878

`A001068(A131112(n))`
-/

namespace A131113.P17844855180769112878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (A131112 n).toNat

end

end A131113.P17844855180769112878

namespace A131113

/-- `A001068(A131112(n))` -/
def P17844855180769112878.Spec : Prop :=
  ∀ n, P17844855180769112878.a n = A131113 n

end A131113

/-! ## A131113.P17905123776226678561

`A007494(A131112(n))-A028326(n)/2`
-/

namespace A131113.P17905123776226678561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007494 (A131112 n).toNat : ℚ) - (A028326 n : ℚ) / 2

end

end A131113.P17905123776226678561

namespace A131113

/-- `A007494(A131112(n))-A028326(n)/2` -/
def P17905123776226678561.Spec : Prop :=
  ∀ n, P17905123776226678561.a n = (A131113 n : ℚ)

end A131113

/-!
# A131114: T(n,k) = 6*binomial(n,k) - 5*I(n,k), where I is the identity matrix; triangle T read by rows (n >= 0 and 0 <= k <= n).

The programs for A131114, the canonical program `A131114.P17775388321855800452` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131114 has offset 0).

The definition of A131114 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131114.P17775388321855800452

`lcm(A129994(n), A131111(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A131114

/-- `lcm(A129994(n), A131111(n))` -/
def P17775388321855800452.Spec : Prop :=
  ∀ n, (P17775388321855800452.a n : ℤ) = A131114 n

theorem P17775388321855800452.correct : P17775388321855800452.Spec := by
  intro n
  simp only [A131114]

end A131114

/-! ## A131114.P6083289707565135557

`2*A131113(n)-A131112(n)`
-/

namespace A131114.P6083289707565135557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131113 n - A131112 n

end

end A131114.P6083289707565135557

namespace A131114

/-- `2*A131113(n)-A131112(n)` -/
def P6083289707565135557.Spec : Prop :=
  ∀ n, P6083289707565135557.a n = A131114 n

end A131114

/-! ## A131114.P4117994206432455183

`(A131115(n)+A131113(n))/2`
-/

namespace A131114.P4117994206432455183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131115 n + A131113 n : ℚ) / 2

end

end A131114.P4117994206432455183

namespace A131114

/-- `(A131115(n)+A131113(n))/2` -/
def P4117994206432455183.Spec : Prop :=
  ∀ n, P4117994206432455183.a n = (A131114 n : ℚ)

end A131114

/-! ## A131114.P3660514847673181339

`A131111(n)+A131112(n)-A007318(n)`
-/

namespace A131114.P3660514847673181339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131111 n + (A131112 n - A007318 n)

end

end A131114.P3660514847673181339

namespace A131114

/-- `A131111(n)+A131112(n)-A007318(n)` -/
def P3660514847673181339.Spec : Prop :=
  ∀ n, P3660514847673181339.a n = A131114 n

end A131114

/-! ## A131114.P17131159476431624679

`A131111(n)+A131115(n)-A131112(n)`
-/

namespace A131114.P17131159476431624679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131111 n + (A131115 n - A131112 n)

end

end A131114.P17131159476431624679

namespace A131114

/-- `A131111(n)+A131115(n)-A131112(n)` -/
def P17131159476431624679.Spec : Prop :=
  ∀ n, P17131159476431624679.a n = A131114 n

end A131114

/-! ## A131114.P16237068276425462549

`A131112(n)+A131113(n)-A131111(n)`
-/

namespace A131114.P16237068276425462549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131112 n + (A131113 n - A131111 n)

end

end A131114.P16237068276425462549

namespace A131114

/-- `A131112(n)+A131113(n)-A131111(n)` -/
def P16237068276425462549.Spec : Prop :=
  ∀ n, P16237068276425462549.a n = A131114 n

end A131114

/-! ## A131114.P17400022786852317577

`A131112(n)+A131115(n)-A131113(n)`
-/

namespace A131114.P17400022786852317577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131112 n + (A131115 n - A131113 n)

end

end A131114.P17400022786852317577

namespace A131114

/-- `A131112(n)+A131115(n)-A131113(n)` -/
def P17400022786852317577.Spec : Prop :=
  ∀ n, P17400022786852317577.a n = A131114 n

end A131114

/-! ## A131114.P15016828427627887627

`A007318(A131112(n)/A007318(n))*A131111(n)`
-/

namespace A131114.P15016828427627887627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.roundAway ((A131112 n : ℚ) / (A007318 n : ℚ))).toNat * A131111 n

end

end A131114.P15016828427627887627

namespace A131114

/-- `A007318(A131112(n)/A007318(n))*A131111(n)` -/
def P15016828427627887627.Spec : Prop :=
  ∀ n, P15016828427627887627.a n = A131114 n

end A131114

/-! ## A131114.P2087902255203780143

`A038255(n)%(10*A007318(n))`
-/

namespace A131114.P2087902255203780143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038255 n) (10 * A007318 n)

end

end A131114.P2087902255203780143

namespace A131114

/-- `A038255(n)%(10*A007318(n))` -/
def P2087902255203780143.Spec : Prop :=
  ∀ n, P2087902255203780143.a n = A131114 n

end A131114

/-! ## A131114.P3427006696715088244

`gcd(2*A134059(n), A013627(n))`
-/

namespace A131114.P3427006696715088244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A134059 n) (A013627 n)

end

end A131114.P3427006696715088244

namespace A131114

/-- `gcd(2*A134059(n), A013627(n))` -/
def P3427006696715088244.Spec : Prop :=
  ∀ n, (P3427006696715088244.a n : ℤ) = A131114 n

end A131114

/-! ## A131114.P16604951155027896515

`A020639(A131112(n))*A131111(n)`
-/

namespace A131114.P16604951155027896515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A131112 n).toNat * A131111 n

end

end A131114.P16604951155027896515

namespace A131114

/-- `A020639(A131112(n))*A131111(n)` -/
def P16604951155027896515.Spec : Prop :=
  ∀ n, P16604951155027896515.a n = A131114 n

end A131114

/-! ## A131114.P12260510946380598543

`A008458(A198321(n+1))`
-/

namespace A131114.P12260510946380598543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A198321 (n + 1)).toNat

end

end A131114.P12260510946380598543

namespace A131114

/-- `A008458(A198321(n+1))` -/
def P12260510946380598543.Spec : Prop :=
  ∀ n, P12260510946380598543.a n = A131114 n

end A131114

/-! ## A131114.P6491579067695007391

`A008486(2*A198321(n+1))`
-/

namespace A131114.P6491579067695007391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * A198321 (n + 1)).toNat

end

end A131114.P6491579067695007391

namespace A131114

/-- `A008486(2*A198321(n+1))` -/
def P6491579067695007391.Spec : Prop :=
  ∀ n, P6491579067695007391.a n = A131114 n

end A131114

/-! ## A131114.P7982091143188483426

`A246425(A131112(n)-1)+A131112(n)`
-/

namespace A131114.P7982091143188483426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A131112 n - 1).toNat + A131112 n

end

end A131114.P7982091143188483426

namespace A131114

/-- `A246425(A131112(n)-1)+A131112(n)` -/
def P7982091143188483426.Spec : Prop :=
  ∀ n, P7982091143188483426.a n = A131114 n

end A131114

/-! ## A131114.P1065273293847693962

`A026203(A131111(n))`
-/

namespace A131114.P1065273293847693962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026203 (A131111 n).toNat

end

end A131114.P1065273293847693962

namespace A131114

/-- `A026203(A131111(n))` -/
def P1065273293847693962.Spec : Prop :=
  ∀ n, P1065273293847693962.a n = A131114 n

end A131114

/-! ## A131114.P12450409790257754211

`A006368(A131112(n))`
-/

namespace A131114.P12450409790257754211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A131112 n).toNat

end

end A131114.P12450409790257754211

namespace A131114

/-- `A006368(A131112(n))` -/
def P12450409790257754211.Spec : Prop :=
  ∀ n, P12450409790257754211.a n = A131114 n

end A131114

/-! ## A131114.P10088972274265920156

`A007494(A131112(n)-1)+1`
-/

namespace A131114.P10088972274265920156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A131112 n - 1).toNat + 1

end

end A131114.P10088972274265920156

namespace A131114

/-- `A007494(A131112(n)-1)+1` -/
def P10088972274265920156.Spec : Prop :=
  ∀ n, P10088972274265920156.a n = A131114 n

end A131114

/-! ## A131114.P10754332974945426269

`A151988(A131113(n))`
-/

namespace A131114.P10754332974945426269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (A131113 n).toNat

end

end A131114.P10754332974945426269

namespace A131114

/-- `A151988(A131113(n))` -/
def P10754332974945426269.Spec : Prop :=
  ∀ n, P10754332974945426269.a n = A131114 n

end A131114

/-!
# A131115: Triangle read by rows: T(n,k) = 7*binomial(n,k) for 1 <= k <= n with T(n,n) = 1 for n >= 0.

The programs for A131115, the canonical program `A131115.P11138580464348698850` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131115 has offset 0).

The definition of A131115 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131115.P11138580464348698850

`2*A131112(n)-A007318(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A131115

/-- `2*A131112(n)-A007318(n)` -/
def P11138580464348698850.Spec : Prop :=
  ∀ n, P11138580464348698850.a n = A131115 n

theorem P11138580464348698850.correct : P11138580464348698850.Spec := by
  intro n
  simp only [A131115]

end A131115

/-! ## A131115.P17899764600342095654

`2*A131113(n)-A131111(n)`
-/

namespace A131115.P17899764600342095654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131113 n - A131111 n

end

end A131115.P17899764600342095654

namespace A131115

/-- `2*A131113(n)-A131111(n)` -/
def P17899764600342095654.Spec : Prop :=
  ∀ n, P17899764600342095654.a n = A131115 n

end A131115

/-! ## A131115.P7049987379633475466

`2*A131114(n)-A131113(n)`
-/

namespace A131115.P7049987379633475466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131114 n - A131113 n

end

end A131115.P7049987379633475466

namespace A131115

/-- `2*A131114(n)-A131113(n)` -/
def P7049987379633475466.Spec : Prop :=
  ∀ n, P7049987379633475466.a n = A131115 n

end A131115

/-! ## A131115.P1722543732776284675

`A131111(n)+A131113(n)-A007318(n)`
-/

namespace A131115.P1722543732776284675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131111 n + (A131113 n - A007318 n)

end

end A131115.P1722543732776284675

namespace A131115

/-- `A131111(n)+A131113(n)-A007318(n)` -/
def P1722543732776284675.Spec : Prop :=
  ∀ n, P1722543732776284675.a n = A131115 n

end A131115

/-! ## A131115.P16456122471598476476

`A131112(n)+A131114(n)-A131111(n)`
-/

namespace A131115.P16456122471598476476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131112 n + (A131114 n - A131111 n)

end

end A131115.P16456122471598476476

namespace A131115

/-- `A131112(n)+A131114(n)-A131111(n)` -/
def P16456122471598476476.Spec : Prop :=
  ∀ n, P16456122471598476476.a n = A131115 n

end A131115

/-! ## A131115.P17296665137722541105

`A131113(n)+A131114(n)-A131112(n)`
-/

namespace A131115.P17296665137722541105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131113 n + (A131114 n - A131112 n)

end

end A131115.P17296665137722541105

namespace A131115

/-- `A131113(n)+A131114(n)-A131112(n)` -/
def P17296665137722541105.Spec : Prop :=
  ∀ n, P17296665137722541105.a n = A131115 n

end A131115

/-! ## A131115.P5665746348038484100

`A131114(n)+A007318(n)%A131111(n)`
-/

namespace A131115.P5665746348038484100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131114 n + Int.tmod (A007318 n) (A131111 n)

end

end A131115.P5665746348038484100

namespace A131115

/-- `A131114(n)+A007318(n)%A131111(n)` -/
def P5665746348038484100.Spec : Prop :=
  ∀ n, P5665746348038484100.a n = A131115 n

end A131115

/-! ## A131115.P6679791268914903319

`A198321(n+1)+A008458(A198321(n+1))`
-/

namespace A131115.P6679791268914903319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198321 (n + 1) + A008458 (A198321 (n + 1)).toNat

end

end A131115.P6679791268914903319

namespace A131115

/-- `A198321(n+1)+A008458(A198321(n+1))` -/
def P6679791268914903319.Spec : Prop :=
  ∀ n, P6679791268914903319.a n = A131115 n

end A131115

/-! ## A131115.P3275512347996332920

`A030123(A129994(n))`
-/

namespace A131115.P3275512347996332920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030123 (A129994 n).toNat

end

end A131115.P3275512347996332920

namespace A131115

/-- `A030123(A129994(n))` -/
def P3275512347996332920.Spec : Prop :=
  ∀ n, P3275512347996332920.a n = A131115 n

end A131115

/-! ## A131115.P9298757350355985998

`A082206(A131111(n))`
-/

namespace A131115.P9298757350355985998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082206 (A131111 n).toNat

end

end A131115.P9298757350355985998

namespace A131115

/-- `A082206(A131111(n))` -/
def P9298757350355985998.Spec : Prop :=
  ∀ n, P9298757350355985998.a n = A131115 n

end A131115

/-!
# A131116: Record values in A003415 (arithmetic derivative).

The programs for A131116, there is no canonical definition to state claims against.
-/

/-! ## A131116.P16464148143435368901

`A302055(A131117(n+1))`
-/

namespace A131116.P16464148143435368901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 (A131117 (n + 1)).toNat

end

end A131116.P16464148143435368901

/-! ## A131116.P16754840344094923511

`record[A327858(n)*A351230(n)]`
-/

namespace A131116.P16754840344094923511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327858 n * A351230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131116.P16754840344094923511

/-! ## A131116.P16524079975081845161

`∑{d}[A131117(n+1), A300251(#)]`
-/

namespace A131116.P16524079975081845161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A131116.P16524079975081845161

/-! ## A131116.P15543315636476834465

`record[A086300(n+1)]%A198391(n+1)`
-/

namespace A131116.P15543315636476834465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A198391 (n + 1))

end

end A131116.P15543315636476834465

/-! ## A131116.P3805598773333296232

`record[2*A003415(n)+n]`
-/

namespace A131116.P3805598773333296232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003415 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131116.P3805598773333296232

/-!
# A131117: Where record values of A003415 occur.

The programs for A131117, there is no canonical definition to state claims against.
-/

/-! ## A131117.P6656786292582072938

`record[and(-2, A135086(n+1))]`
-/

namespace A131117.P6656786292582072938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A135086 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131117.P6656786292582072938

/-! ## A131117.P131613853154953708

`record[and(-2, A174523(n+1))]`
-/

namespace A131117.P131613853154953708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A174523 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131117.P131613853154953708

/-! ## A131117.P17105636129084599773

`eq[A091202(n), A138219(n)]`
-/

namespace A131117.P17105636129084599773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091202 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138219 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131117.P17105636129084599773

/-! ## A131117.P15455509301958260394

`eq[A091203(n), A138219(n)]`
-/

namespace A131117.P15455509301958260394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091203 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138219 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131117.P15455509301958260394

/-! ## A131117.P14223881048262143083

`eq[A091204(n), A138219(n)]`
-/

namespace A131117.P14223881048262143083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091204 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138219 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131117.P14223881048262143083

/-!
# A131118: a(4n) = -n^2, a(4n+1) = n^2, a(4n+2) = 1-n^2, a(4n+3) = n*(n+1).

The programs for A131118, the canonical program `A131118.P1045819778877883350` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131118 has offset 0).

The definition of A131118 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131118.P720414664354997149

`∑[A062157(n)*A131804(n)]`
-/

namespace A131118.P720414664354997149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A131804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131118.P720414664354997149

namespace A131118

/-- `∑[A062157(n)*A131804(n)]` -/
def P720414664354997149.Spec : Prop :=
  ∀ n, P720414664354997149.a n = A131118 n

end A131118

/-! ## A131118.P10082195212463020637

`∑[A131804(n)*A165326(n)]`
-/

namespace A131118.P10082195212463020637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131804 n * A165326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131118.P10082195212463020637

namespace A131118

/-- `∑[A131804(n)*A165326(n)]` -/
def P10082195212463020637.Spec : Prop :=
  ∀ n, P10082195212463020637.a n = A131118 n

end A131118

/-! ## A131118.P1045819778877883350

`(A029579(n)-A130766(n))*A059169(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A131118

/-- `(A029579(n)-A130766(n))*A059169(n+1)` -/
def P1045819778877883350.Spec : Prop :=
  ∀ n, P1045819778877883350.a n = A131118 n

theorem P1045819778877883350.correct : P1045819778877883350.Spec := by
  intro n
  simp only [A131118]

end A131118

/-! ## A131118.P2864807866263275241

`∑[A131804(n)/A165326(n+2)]`
-/

namespace A131118.P2864807866263275241
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131804 n : ℚ) / (A165326 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131118.P2864807866263275241

namespace A131118

/-- `∑[A131804(n)/A165326(n+2)]` -/
def P2864807866263275241.Spec : Prop :=
  ∀ n, P2864807866263275241.a n = (A131118 n : ℚ)

end A131118

/-!
# A131119: a(n) = (-1)^n * Sum_{i=1..floor(n/2)} i * floor(n/(n-i)).

The programs for A131119, the canonical program `A131119.P17560409850303249673` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131119 has offset 0).

The definition of A131119 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131119.P17560409850303249673

`floor(Δ[lcm(n, n+2)/4])`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A131119

/-- `floor(Δ[lcm(n, n+2)/4])` -/
def P17560409850303249673.Spec : Prop :=
  ∀ n, P17560409850303249673.a n = A131119 n

theorem P17560409850303249673.correct : P17560409850303249673.Spec := by
  intro n
  simp only [A131119]

end A131119

/-! ## A131119.P15843123104995422762

`Δ[gcd(2, n+1)*C(ceil(n/2), 2)]`
-/

namespace A131119.P15843123104995422762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1) * Nat.choose ⌈(n : ℚ) / 2⌉.toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A131119.P15843123104995422762

namespace A131119

/-- `Δ[gcd(2, n+1)*C(ceil(n/2), 2)]` -/
def P15843123104995422762.Spec : Prop :=
  ∀ n, P15843123104995422762.a n = A131119 n

end A131119

/-! ## A131119.P10053065747426033187

`∑[∑[(-1)^n*∑[n]]+n%2]`
-/

namespace A131119.P10053065747426033187
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131119.P10053065747426033187

namespace A131119

/-- `∑[∑[(-1)^n*∑[n]]+n%2]` -/
def P10053065747426033187.Spec : Prop :=
  ∀ n, P10053065747426033187.a n = A131119 n

end A131119

/-! ## A131119.P5543523806261850487

`∑[∑[(-1)^n*∑[n]]+and(1, n)]`
-/

namespace A131119.P5543523806261850487
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131119.P5543523806261850487

namespace A131119

/-- `∑[∑[(-1)^n*∑[n]]+and(1, n)]` -/
def P5543523806261850487.Spec : Prop :=
  ∀ n, P5543523806261850487.a n = A131119 n

end A131119

/-! ## A131119.P17611485093917344412

`∑[a(n-2)+n*(-1)^n]` with `a(0)=0, a(1)=0`
-/

namespace A131119.P17611485093917344412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 2) + (n : ℤ) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131119.P17611485093917344412

namespace A131119

/-- `∑[a(n-2)+n*(-1)^n]` -/
def P17611485093917344412.Spec : Prop :=
  ∀ n, P17611485093917344412.a n = A131119 n

end A131119

/-! ## A131119.P650224692790944615

`floor(n/(and(1, n)+1)-a(n-1))` with `a(0)=0`
-/

namespace A131119.P650224692790944615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n : ℚ) / (Nat.land 1 n + 1 : ℚ) - (a (n - 1) : ℚ)⌋

end

end A131119.P650224692790944615

namespace A131119

/-- `floor(n/(and(1, n)+1)-a(n-1))` -/
def P650224692790944615.Spec : Prop :=
  ∀ n, P650224692790944615.a n = A131119 n

end A131119

/-! ## A131119.P11873202030180468364

`(∑[n]-1)%(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A131119.P11873202030180468364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) (n + 1 : ℤ) - a (n - 1)

end

end A131119.P11873202030180468364

namespace A131119

/-- `(∑[n]-1)%(n+1)-a(n-1)` -/
def P11873202030180468364.Spec : Prop :=
  ∀ n, P11873202030180468364.a n = A131119 n

end A131119

/-! ## A131119.P3678668456721548193

`floor(n/gcd(n-1, 2*n))-a(n-1)` with `a(0)=0`
-/

namespace A131119.P3678668456721548193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n : ℚ) / (Int.gcd ((n : ℤ) - 1) (2 * n : ℤ) : ℚ)⌋ - a (n - 1)

end

end A131119.P3678668456721548193

namespace A131119

/-- `floor(n/gcd(n-1, 2*n))-a(n-1)` -/
def P3678668456721548193.Spec : Prop :=
  ∀ n, P3678668456721548193.a n = A131119 n

end A131119

/-! ## A131119.P3936215324469742597

`floor(lcm(n+1, 2*n)/(2*n+1)-a(n-1))` with `a(0)=0`
-/

namespace A131119.P3936215324469742597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(Nat.lcm (n + 1) (2 * n) : ℚ) / (2 * n + 1 : ℚ) - (a (n - 1) : ℚ)⌋

end

end A131119.P3936215324469742597

namespace A131119

/-- `floor(lcm(n+1, 2*n)/(2*n+1)-a(n-1))` -/
def P3936215324469742597.Spec : Prop :=
  ∀ n, P3936215324469742597.a n = A131119 n

end A131119

/-! ## A131119.P5573641753424346488

`Δ[A131174(abs(1-n))]`
-/

namespace A131119.P5573641753424346488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131174 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131119.P5573641753424346488

namespace A131119

/-- `Δ[A131174(abs(1-n))]` -/
def P5573641753424346488.Spec : Prop :=
  ∀ n, P5573641753424346488.a n = A131119 n

end A131119

/-! ## A131119.P5449141681139979412

`∑[(1-A188653(n+1))/2]`
-/

namespace A131119.P5449141681139979412
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A188653 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131119.P5449141681139979412

namespace A131119

/-- `∑[(1-A188653(n+1))/2]` -/
def P5449141681139979412.Spec : Prop :=
  ∀ n, P5449141681139979412.a n = (A131119 n : ℚ)

end A131119

/-! ## A131119.P7504747125015759215

`∑[A131723(n)]-A131723(n)`
-/

namespace A131119.P7504747125015759215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A131723 n

end

end A131119.P7504747125015759215

namespace A131119

/-- `∑[A131723(n)]-A131723(n)` -/
def P7504747125015759215.Spec : Prop :=
  ∀ n, P7504747125015759215.a n = A131119 n

end A131119

/-! ## A131119.P2700683560634919858

`A131174(n+1)-(A131723(n)+A131174(n))`
-/

namespace A131119.P2700683560634919858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131174 (n + 1) - (A131723 n + A131174 n)

end

end A131119.P2700683560634919858

namespace A131119

/-- `A131174(n+1)-(A131723(n)+A131174(n))` -/
def P2700683560634919858.Spec : Prop :=
  ∀ n, P2700683560634919858.a n = A131119 n

end A131119

/-! ## A131119.P16143172097823499317

`A211379(n+3)+A367204(n+3)-A211379(n+4)`
-/

namespace A131119.P16143172097823499317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211379 (n + 3) + (A367204 (n + 3) - A211379 (n + 4))

end

end A131119.P16143172097823499317

namespace A131119

/-- `A211379(n+3)+A367204(n+3)-A211379(n+4)` -/
def P16143172097823499317.Spec : Prop :=
  ∀ n, P16143172097823499317.a n = A131119 n

end A131119

/-! ## A131119.P1770402651526353989

`Δ[Δ[A330298(n)]]`
-/

namespace A131119.P1770402651526353989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330298 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131119.P1770402651526353989

namespace A131119

/-- `Δ[Δ[A330298(n)]]` -/
def P1770402651526353989.Spec : Prop :=
  ∀ n, P1770402651526353989.a n = A131119 n

end A131119

/-! ## A131119.P9727822921201158615

`∑[A004526(n)*A130472(n+2)]`
-/

namespace A131119.P9727822921201158615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n * A130472 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131119.P9727822921201158615

namespace A131119

/-- `∑[A004526(n)*A130472(n+2)]` -/
def P9727822921201158615.Spec : Prop :=
  ∀ n, P9727822921201158615.a n = A131119 n

end A131119

/-! ## A131119.P17982680366691479448

`record[n/A007318(n)]-(∑[n]%(n+1))²`
-/

namespace A131119.P17982680366691479448
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A007318 n : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1)) ^ 2 : ℕ) : ℚ)

end

end A131119.P17982680366691479448

namespace A131119

/-- `record[n/A007318(n)]-(∑[n]%(n+1))²` -/
def P17982680366691479448.Spec : Prop :=
  ∀ n, P17982680366691479448.a n = (A131119 n : ℚ)

end A131119

/-! ## A131119.P8266947237985793255

`∑[A131730(n*(n+2))]`
-/

namespace A131119.P8266947237985793255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131730 (n * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131119.P8266947237985793255

namespace A131119

/-- `∑[A131730(n*(n+2))]` -/
def P8266947237985793255.Spec : Prop :=
  ∀ n, P8266947237985793255.a n = A131119 n

end A131119

/-! ## A131119.P8425606108199273552

`Δ[A002265(A228564(n+1)-2*n)]`
-/

namespace A131119.P8425606108199273552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A228564 (n + 1) - (2 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131119.P8425606108199273552

namespace A131119

/-- `Δ[A002265(A228564(n+1)-2*n)]` -/
def P8425606108199273552.Spec : Prop :=
  ∀ n, P8425606108199273552.a n = A131119 n

end A131119

/-!
# A131120: a(1)=1. a(n+1) = n!/lcm(a(1),a(2),...,a(n)).

The programs for A131120, there is no canonical definition to state claims against.
-/

/-! ## A131120.P8342673060753130664

`A028310(n)*A131121(C(2, n)+n)`
-/

namespace A131120.P8342673060753130664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A131121 (Nat.choose 2 n + n)

end

end A131120.P8342673060753130664

/-! ## A131120.P3782340294898085093

`A028310(n)*A131121(gcd(n, C(2, n)))`
-/

namespace A131120.P3782340294898085093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A131121 (Nat.gcd n (Nat.choose 2 n))

end

end A131120.P3782340294898085093

/-! ## A131120.P12040454876551710035

`A028310(n)*A131121(round(sqrt(n²+1)))`
-/

namespace A131120.P12040454876551710035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A131121 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A131120.P12040454876551710035

/-! ## A131120.P13646504987819020022

`A065033(2*n)*A131121(C(2, n)+n)`
-/

namespace A131120.P13646504987819020022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n) * A131121 (Nat.choose 2 n + n)

end

end A131120.P13646504987819020022

/-! ## A131120.P14783761324958833804

`(A000007(n)+n)*A131121(C(2, n)+n)`
-/

namespace A131120.P14783761324958833804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + (n : ℤ)) * A131121 (Nat.choose 2 n + n)

end

end A131120.P14783761324958833804

/-!
# A131121: a(n) = A131120(n+1)/n.

The programs for A131121, there is no canonical definition to state claims against.
-/

/-! ## A131121.P5411185168872421492

`A131120(n+2)/(n+1)`
-/

namespace A131121.P5411185168872421492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131120 (n + 2) : ℚ) / (n + 1 : ℚ)

end

end A131121.P5411185168872421492

/-! ## A131121.P2293285910344052642

`sqrt(n!/A008339(n+1))`
-/

namespace A131121.P2293285910344052642
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((Nat.factorial n : ℚ) / (A008339 (n + 1) : ℚ) : ℝ)

end

end A131121.P2293285910344052642

/-! ## A131121.P8081419286936697523

`gcd(n, A008339(n))*a(n-1)` with `a(0)=1`
-/

namespace A131121.P8081419286936697523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (n : ℤ) (A008339 n) * a (n - 1)

end

end A131121.P8081419286936697523

/-! ## A131121.P16930091073657332198

`∏[gcd(n, A008339(A028310(n)))]`
-/

namespace A131121.P16930091073657332198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A008339 (A028310 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A131121.P16930091073657332198

/-! ## A131121.P13972776894636028331

`sqrt(A000142(n)/A008339(n+1))`
-/

namespace A131121.P13972776894636028331
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A000142 n : ℚ) / (A008339 (n + 1) : ℚ) : ℝ)

end

end A131121.P13972776894636028331

/-!
# A131122: Even numbers that are not the sum of an evil prime (A027699) and an odious prime (A027697).

The programs for A131122, there is no canonical definition to state claims against.
-/

/-! ## A131122.P2814936330940952451

`∑[A286553(A005598(n)²)]`
-/

namespace A131122.P2814936330940952451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286553 (A005598 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131122.P2814936330940952451

/-! ## A131122.P17745027687707090225

`∑[A071364(A008989(n)+1)]`
-/

namespace A131122.P17745027687707090225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (A008989 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131122.P17745027687707090225

/-! ## A131122.P10553243535477488634

`∑[A278251(p?[A294652(n+1)])]`
-/

namespace A131122.P10553243535477488634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294652 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278251 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131122.P10553243535477488634

/-! ## A131122.P15798705737622712893

`∑[A286557(∑[A148380(n)+n])]`
-/

namespace A131122.P15798705737622712893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148380 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286557 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131122.P15798705737622712893

/-! ## A131122.P9518547534193621431

`lt[A046351(A000010(n+4)), A185974(2*(n+1))]`
-/

namespace A131122.P9518547534193621431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046351 (A000010 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185974 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A131122.P9518547534193621431

/-!
# A131126: Expansion of (phi(q^2) / phi(-q))^2 in powers of q where phi() is a Ramanujan theta function.

The programs for A131126, there is no canonical definition to state claims against.
-/

/-! ## A131126.P16474377355609694103

`A208933(2*n)`
-/

namespace A131126.P16474377355609694103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208933 (2 * n)

end

end A131126.P16474377355609694103

/-! ## A131126.P16299742548461642499

`A215348(A004277(n))`
-/

namespace A131126.P16299742548461642499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215348 (A004277 n).toNat

end

end A131126.P16299742548461642499

/-! ## A131126.P9571572420969546113

`A215348(A004275(n+1))`
-/

namespace A131126.P9571572420969546113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215348 (A004275 (n + 1)).toNat

end

end A131126.P9571572420969546113

/-! ## A131126.P11133109904356517508

`A215348(A000007(n)+2*n)`
-/

namespace A131126.P11133109904356517508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215348 (A000007 n + (2 * n : ℤ)).toNat

end

end A131126.P11133109904356517508

/-! ## A131126.P14020987663838588327

`A215348(A008574(n)-2*n)`
-/

namespace A131126.P14020987663838588327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215348 (A008574 n - (2 * n : ℤ)).toNat

end

end A131126.P14020987663838588327

/-! ## A131126.P3122366056376232757

`A215348(A000007(n)+n+n)`
-/

namespace A131126.P3122366056376232757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215348 (A000007 n + (n : ℤ) + (n : ℤ)).toNat

end

end A131126.P3122366056376232757

/-! ## A131126.P7853926628207277427

`A215348(A008574(n)-n-n)`
-/

namespace A131126.P7853926628207277427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215348 (A008574 n - (n : ℤ) - (n : ℤ)).toNat

end

end A131126.P7853926628207277427

/-! ## A131126.P9141151416031060311

`ceil(A014969(n)/2)`
-/

namespace A131126.P9141151416031060311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A014969 n : ℚ) / 2⌉

end

end A131126.P9141151416031060311

/-! ## A131126.P17304217098693211527

`ceil(A007096(2*n)/2)`
-/

namespace A131126.P17304217098693211527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007096 (2 * n) : ℚ) / 2⌉

end

end A131126.P17304217098693211527

/-! ## A131126.P9166603390646975953

`ceil(A212318(2*n)/2)`
-/

namespace A131126.P9166603390646975953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A212318 (2 * n) : ℚ) / 2⌉

end

end A131126.P9166603390646975953

/-! ## A131126.P18350601865890275589

`A014969(n)/A036453(n+1)`
-/

namespace A131126.P18350601865890275589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014969 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A131126.P18350601865890275589

/-! ## A131126.P11954928280640777590

`A014969(n)/A280560(2*n)`
-/

namespace A131126.P11954928280640777590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014969 n : ℚ) / (A280560 (2 * n) : ℚ)

end

end A131126.P11954928280640777590

/-! ## A131126.P10985208110494909276

`A007096(2*n)/A280560(2*n)`
-/

namespace A131126.P10985208110494909276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007096 (2 * n) : ℚ) / (A280560 (2 * n) : ℚ)

end

end A131126.P10985208110494909276

/-! ## A131126.P8810142359511483030

`(A117569(2*n)+A007096(2*n))/2`
-/

namespace A131126.P8810142359511483030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117569 (2 * n) + A007096 (2 * n) : ℚ) / 2

end

end A131126.P8810142359511483030

/-! ## A131126.P8466581877731233743

`(A163805(2*n)+A007096(2*n))/2`
-/

namespace A131126.P8466581877731233743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163805 (2 * n) + A007096 (2 * n) : ℚ) / 2

end

end A131126.P8466581877731233743

/-! ## A131126.P17232400433070413933

`abs(A210066(n))`
-/

namespace A131126.P17232400433070413933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A210066 n|

end

end A131126.P17232400433070413933

/-! ## A131126.P5184465357040583068

`A033999(n)*A210066(n)`
-/

namespace A131126.P5184465357040583068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A210066 n

end

end A131126.P5184465357040583068

/-!
# A131127: Table read by rows: 2*A007318(n,m) - A167374(n,m).

The programs for A131127, the canonical program `A131127.P11296846227451289478` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131127 has offset 0).

The definition of A131127 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131127.P11296846227451289478

`A028326(n)-A167374(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A131127

/-- `A028326(n)-A167374(n)` -/
def P11296846227451289478.Spec : Prop :=
  ∀ n, P11296846227451289478.a n = A131127 n

theorem P11296846227451289478.correct : P11296846227451289478.Spec := by
  intro n
  simp only [A131127]

end A131127

/-! ## A131127.P755105498665221342

`xor(A028326(n), A136157(n))`
-/

namespace A131127.P755105498665221342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A028326 n) (A136157 n)

end

end A131127.P755105498665221342

namespace A131127

/-- `xor(A028326(n), A136157(n))` -/
def P755105498665221342.Spec : Prop :=
  ∀ n, P755105498665221342.a n = A131127 n

end A131127

/-! ## A131127.P11853348637700533642

`A103452(n+1)+A028326(n)`
-/

namespace A131127.P11853348637700533642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 (n + 1) + A028326 n

end

end A131127.P11853348637700533642

namespace A131127

/-- `A103452(n+1)+A028326(n)` -/
def P11853348637700533642.Spec : Prop :=
  ∀ n, P11853348637700533642.a n = A131127 n

end A131127

/-! ## A131127.P4957564308322812873

`A129994(n)+A129184(n+1)`
-/

namespace A131127.P4957564308322812873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129994 n + A129184 (n + 1)

end

end A131127.P4957564308322812873

namespace A131127

/-- `A129994(n)+A129184(n+1)` -/
def P4957564308322812873.Spec : Prop :=
  ∀ n, P4957564308322812873.a n = A131127 n

end A131127

/-! ## A131127.P7180262401326701810

`A133138(n)-A154926(n+1)`
-/

namespace A131127.P7180262401326701810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133138 n - A154926 (n + 1)

end

end A131127.P7180262401326701810

namespace A131127

/-- `A133138(n)-A154926(n+1)` -/
def P7180262401326701810.Spec : Prop :=
  ∀ n, P7180262401326701810.a n = A131127 n

end A131127

/-! ## A131127.P6247696411932252664

`2*A007318(n)-A167374(n)`
-/

namespace A131127.P6247696411932252664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A167374 n

end

end A131127.P6247696411932252664

namespace A131127

/-- `2*A007318(n)-A167374(n)` -/
def P6247696411932252664.Spec : Prop :=
  ∀ n, P6247696411932252664.a n = A131127 n

end A131127

/-! ## A131127.P4032320449355310235

`2*A129994(n)-A131108(n)`
-/

namespace A131127.P4032320449355310235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129994 n - A131108 n

end

end A131127.P4032320449355310235

namespace A131127

/-- `2*A129994(n)-A131108(n)` -/
def P4032320449355310235.Spec : Prop :=
  ∀ n, P4032320449355310235.a n = A131127 n

end A131127

/-! ## A131127.P3795448131324686562

`2*A133138(n)-A136157(n)`
-/

namespace A131127.P3795448131324686562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133138 n - A136157 n

end

end A131127.P3795448131324686562

namespace A131127

/-- `2*A133138(n)-A136157(n)` -/
def P3795448131324686562.Spec : Prop :=
  ∀ n, P3795448131324686562.a n = A131127 n

end A131127

/-! ## A131127.P15168202829636877872

`Δ[A023531(n)+2*A102363(n)]`
-/

namespace A131127.P15168202829636877872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n + 2 * A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131127.P15168202829636877872

namespace A131127

/-- `Δ[A023531(n)+2*A102363(n)]` -/
def P15168202829636877872.Spec : Prop :=
  ∀ n, P15168202829636877872.a n = A131127 n

end A131127

/-! ## A131127.P15040652643202048185

`A103452(n+1)+2*A007318(n)`
-/

namespace A131127.P15040652643202048185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 (n + 1) + 2 * A007318 n

end

end A131127.P15040652643202048185

namespace A131127

/-- `A103452(n+1)+2*A007318(n)` -/
def P15040652643202048185.Spec : Prop :=
  ∀ n, P15040652643202048185.a n = A131127 n

end A131127

/-! ## A131127.P4246088340467585213

`Δ[A073424(n+1)]+2*A007318(n)`
-/

namespace A131127.P4246088340467585213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A007318 n

end

end A131127.P4246088340467585213

namespace A131127

/-- `Δ[A073424(n+1)]+2*A007318(n)` -/
def P4246088340467585213.Spec : Prop :=
  ∀ n, P4246088340467585213.a n = A131127 n

end A131127

/-! ## A131127.P13733166086198202380

`A103451(n+1)+2*A198321(n+1)`
-/

namespace A131127.P13733166086198202380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 (n + 1) + 2 * A198321 (n + 1)

end

end A131127.P13733166086198202380

namespace A131127

/-- `A103451(n+1)+2*A198321(n+1)` -/
def P13733166086198202380.Spec : Prop :=
  ∀ n, P13733166086198202380.a n = A131127 n

end A131127

/-! ## A131127.P5079298930481826449

`A097806(n)+A131111(n)-A007318(n)`
-/

namespace A131127.P5079298930481826449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n + (A131111 n - A007318 n)

end

end A131127.P5079298930481826449

namespace A131127

/-- `A097806(n)+A131111(n)-A007318(n)` -/
def P5079298930481826449.Spec : Prop :=
  ∀ n, P5079298930481826449.a n = A131127 n

end A131127

/-! ## A131127.P5198090978253517707

`A210381(n+1)+A007318(n)`
-/

namespace A131127.P5198090978253517707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210381 (n + 1) + A007318 n

end

end A131127.P5198090978253517707

namespace A131127

/-- `A210381(n+1)+A007318(n)` -/
def P5198090978253517707.Spec : Prop :=
  ∀ n, P5198090978253517707.a n = A131127 n

end A131127

/-! ## A131127.P9524114894226969741

`A028326(n)+Δ[A010054(n+1)]`
-/

namespace A131127.P9524114894226969741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n + (f1 (n + 1) - f1 n)

end

end A131127.P9524114894226969741

namespace A131127

/-- `A028326(n)+Δ[A010054(n+1)]` -/
def P9524114894226969741.Spec : Prop :=
  ∀ n, P9524114894226969741.a n = A131127 n

end A131127

/-! ## A131127.P3907651101524309959

`Δ[A010054(n+1)]+2*A007318(n)`
-/

namespace A131127.P3907651101524309959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A007318 n

end

end A131127.P3907651101524309959

namespace A131127

/-- `Δ[A010054(n+1)]+2*A007318(n)` -/
def P3907651101524309959.Spec : Prop :=
  ∀ n, P3907651101524309959.a n = A131127 n

end A131127

/-! ## A131127.P3120037361679398654

`A124927(n+1)+A028326(n)-A129994(n+1)`
-/

namespace A131127.P3120037361679398654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124927 (n + 1) + (A028326 n - A129994 (n + 1))

end

end A131127.P3120037361679398654

namespace A131127

/-- `A124927(n+1)+A028326(n)-A129994(n+1)` -/
def P3120037361679398654.Spec : Prop :=
  ∀ n, P3120037361679398654.a n = A131127 n

end A131127

/-! ## A131127.P11461030287860895146

`A028326(n+1)+A129994(n)-A129994(n+1)`
-/

namespace A131127.P11461030287860895146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 (n + 1) + (A129994 n - A129994 (n + 1))

end

end A131127.P11461030287860895146

namespace A131127

/-- `A028326(n+1)+A129994(n)-A129994(n+1)` -/
def P11461030287860895146.Spec : Prop :=
  ∀ n, P11461030287860895146.a n = A131127 n

end A131127

/-! ## A131127.P3259057151411980343

`A007318(n)+A135278(n)-A325003(n+1)`
-/

namespace A131127.P3259057151411980343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A135278 n - A325003 (n + 1))

end

end A131127.P3259057151411980343

namespace A131127

/-- `A007318(n)+A135278(n)-A325003(n+1)` -/
def P3259057151411980343.Spec : Prop :=
  ∀ n, P3259057151411980343.a n = A131127 n

end A131127

/-! ## A131127.P1490625862098119796

`A074909(n+1)+A007318(n)-A325003(n+1)`
-/

namespace A131127.P1490625862098119796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) + (A007318 n - A325003 (n + 1))

end

end A131127.P1490625862098119796

namespace A131127

/-- `A074909(n+1)+A007318(n)-A325003(n+1)` -/
def P1490625862098119796.Spec : Prop :=
  ∀ n, P1490625862098119796.a n = A131127 n

end A131127

/-!
# A131128: Binomial transform of [1, 1, 5, 1, 5, 1, 5, ...].

The programs for A131128, the canonical program `A131128.P16377922990764128353` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131128 has offset 0).

The definition of A131128 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131128.P16377922990764128353

`2*a(n-1)+4` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A131128

/-- `2*a(n-1)+4` -/
def P16377922990764128353.Spec : Prop :=
  ∀ n, (P16377922990764128353.a n : ℤ) = A131128 n

theorem P16377922990764128353.correct : P16377922990764128353.Spec := by
  intro n
  simp only [A131128]

end A131128

/-! ## A131128.P9445848865836021324

`abs(3*2^n-4)`
-/

namespace A131128.P9445848865836021324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 * 2 ^ n : ℤ) - 4|

end

end A131128.P9445848865836021324

namespace A131128

/-- `abs(3*2^n-4)` -/
def P9445848865836021324.Spec : Prop :=
  ∀ n, P9445848865836021324.a n = A131128 n

end A131128

/-! ## A131128.P657611827771941410

`∑[2*a(n-1)]` with `a(0)=1, a(1)=1, a(2)=6`
-/

namespace A131128.P657611827771941410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 6] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131128.P657611827771941410

namespace A131128

/-- `∑[2*a(n-1)]` -/
def P657611827771941410.Spec : Prop :=
  ∀ n, (P657611827771941410.a n : ℤ) = A131128 n

end A131128

/-! ## A131128.P11893463437494714315

`lcm(2, a(n-1)+3)-2` with `a(0)=1`
-/

namespace A131128.P11893463437494714315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 2 (a (n - 1) + 3) : ℤ) - 2

end

end A131128.P11893463437494714315

namespace A131128

/-- `lcm(2, a(n-1)+3)-2` -/
def P11893463437494714315.Spec : Prop :=
  ∀ n, P11893463437494714315.a n = A131128 n

end A131128

/-! ## A131128.P5150927333118855610

`record[2*a(n-1)]-4` with `a(0)=5, a(1)=3`
-/

namespace A131128.P5150927333118855610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 3] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - 4

end

end A131128.P5150927333118855610

namespace A131128

/-- `record[2*a(n-1)]-4` -/
def P5150927333118855610.Spec : Prop :=
  ∀ n, P5150927333118855610.a n = A131128 n

end A131128

/-! ## A131128.P18003934105755759119

`-2*xor(-2, a(n-1))` with `a(0)=1`
-/

namespace A131128.P18003934105755759119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -(2 * Int.xor (-2) (a (n - 1)))

end

end A131128.P18003934105755759119

namespace A131128

/-- `-2*xor(-2, a(n-1))` -/
def P18003934105755759119.Spec : Prop :=
  ∀ n, P18003934105755759119.a n = A131128 n

end A131128

/-! ## A131128.P6200756955993019275

`6-2*(1-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A131128.P6200756955993019275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  6 - 2 * (1 - a (n - 1))

end

end A131128.P6200756955993019275

namespace A131128

/-- `6-2*(1-a(n-1))` -/
def P6200756955993019275.Spec : Prop :=
  ∀ n, P6200756955993019275.a n = A131128 n

end A131128

/-! ## A131128.P13131488308326816683

`4+a(n-1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A131128.P13131488308326816683
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 + (a (n - 1) + a (n - 1))

end

end A131128.P13131488308326816683

namespace A131128

/-- `4+a(n-1)+a(n-1)` -/
def P13131488308326816683.Spec : Prop :=
  ∀ n, (P13131488308326816683.a n : ℤ) = A131128 n

theorem P13131488308326816683.correct : P13131488308326816683.Spec := by
  intro n
  simp only [A131128, Nat.add_sub_cancel, A131128.P13131488308326816683.a, A131128.P16377922990764128353.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A131128

/-! ## A131128.P11475435802236468310

`4-a(n-1)/(1/2-1)` with `a(0)=1, a(1)=2`
-/

namespace A131128.P11475435802236468310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 - a (n - 1) / ((1 : ℚ) / 2 - 1)

end

end A131128.P11475435802236468310

namespace A131128

/-- `4-a(n-1)/(1/2-1)` -/
def P11475435802236468310.Spec : Prop :=
  ∀ n, P11475435802236468310.a n = (A131128 n : ℚ)

end A131128

/-! ## A131128.P13257470417983082616

`5-floor(1-a(n-1)-a(n-1))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A131128.P13257470417983082616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  5 - (1 - a (n - 1) - a (n - 1))

end

end A131128.P13257470417983082616

namespace A131128

/-- `5-floor(1-a(n-1)-a(n-1))` -/
def P13257470417983082616.Spec : Prop :=
  ∀ n, P13257470417983082616.a n = A131128 n

end A131128

/-! ## A131128.P17461443128719604608

`4-(a(n-1)%2-a(n-1)-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A131128.P17461443128719604608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 - (Int.tmod (a (n - 1)) 2 - a (n - 1) - a (n - 1))

end

end A131128.P17461443128719604608

namespace A131128

/-- `4-(a(n-1)%2-a(n-1)-a(n-1))` -/
def P17461443128719604608.Spec : Prop :=
  ∀ n, P17461443128719604608.a n = A131128 n

end A131128

/-! ## A131128.P15066185083354350897

`A296954(n+1)`
-/

namespace A131128.P15066185083354350897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296954 (n + 1)

end

end A131128.P15066185083354350897

namespace A131128

/-- `A296954(n+1)` -/
def P15066185083354350897.Spec : Prop :=
  ∀ n, P15066185083354350897.a n = A131128 n

end A131128

/-! ## A131128.P17491369448744944233

`∑[A082505(n)]+1`
-/

namespace A131128.P17491369448744944233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A131128.P17491369448744944233

namespace A131128

/-- `∑[A082505(n)]+1` -/
def P17491369448744944233.Spec : Prop :=
  ∀ n, P17491369448744944233.a n = A131128 n

end A131128

/-! ## A131128.P9875705181063044294

`xor(1, A033484(n)-1)`
-/

namespace A131128.P9875705181063044294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A033484 n - 1)

end

end A131128.P9875705181063044294

namespace A131128

/-- `xor(1, A033484(n)-1)` -/
def P9875705181063044294.Spec : Prop :=
  ∀ n, P9875705181063044294.a n = A131128 n

end A131128

/-! ## A131128.P2476920188804403558

`xor(1, A153893(n)-2)`
-/

namespace A131128.P2476920188804403558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A153893 n - 2)

end

end A131128.P2476920188804403558

namespace A131128

/-- `xor(1, A153893(n)-2)` -/
def P2476920188804403558.Spec : Prop :=
  ∀ n, P2476920188804403558.a n = A131128 n

end A131128

/-! ## A131128.P5769309650282714787

`xor(1, A354788(2*n))`
-/

namespace A131128.P5769309650282714787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A354788 (2 * n))

end

end A131128.P5769309650282714787

namespace A131128

/-- `xor(1, A354788(2*n))` -/
def P5769309650282714787.Spec : Prop :=
  ∀ n, P5769309650282714787.a n = A131128 n

end A131128

/-! ## A131128.P1395695455826745861

`xor(1, A095151(n)+n)`
-/

namespace A131128.P1395695455826745861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A095151 n + (n : ℤ))

end

end A131128.P1395695455826745861

namespace A131128

/-- `xor(1, A095151(n)+n)` -/
def P1395695455826745861.Spec : Prop :=
  ∀ n, P1395695455826745861.a n = A131128 n

end A131128

/-! ## A131128.P15973021818549870204

`record[A296954(abs(1-n))]`
-/

namespace A131128.P15973021818549870204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296954 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131128.P15973021818549870204

namespace A131128

/-- `record[A296954(abs(1-n))]` -/
def P15973021818549870204.Spec : Prop :=
  ∀ n, P15973021818549870204.a n = A131128 n

end A131128

/-!
# A131129: 3*A007318 - 2*A097806, where A007318 = Pascal's triangle and A097806 = the pairwise operator.

The programs for A131129, the canonical program `A131129.P5347046498365630187` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131129 has offset 0).

The definition of A131129 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131129.P5347046498365630187

`floor(3*A131108(n)/2)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A131129

/-- `floor(3*A131108(n)/2)` -/
def P5347046498365630187.Spec : Prop :=
  ∀ n, P5347046498365630187.a n = A131129 n

theorem P5347046498365630187.correct : P5347046498365630187.Spec := by
  intro n
  simp only [A131129]

end A131129

/-! ## A131129.P406280653192226355

`2*A131108(n)-A007318(n)`
-/

namespace A131129.P406280653192226355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131108 n - A007318 n

end

end A131129.P406280653192226355

namespace A131129

/-- `2*A131108(n)-A007318(n)` -/
def P406280653192226355.Spec : Prop :=
  ∀ n, P406280653192226355.a n = A131129 n

end A131129

/-! ## A131129.P11441080589140013030

`(A131131(n)+A131108(n))/2`
-/

namespace A131129.P11441080589140013030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131131 n + A131108 n : ℚ) / 2

end

end A131129.P11441080589140013030

namespace A131129

/-- `(A131131(n)+A131108(n))/2` -/
def P11441080589140013030.Spec : Prop :=
  ∀ n, P11441080589140013030.a n = (A131129 n : ℚ)

end A131129

/-! ## A131129.P15983119515599957235

`A131060(n)+2%A130321(n)`
-/

namespace A131129.P15983119515599957235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131060 n + Int.tmod 2 (A130321 n)

end

end A131129.P15983119515599957235

namespace A131129

/-- `A131060(n)+2%A130321(n)` -/
def P15983119515599957235.Spec : Prop :=
  ∀ n, P15983119515599957235.a n = A131129 n

end A131129

/-! ## A131129.P8986707604187629433

`A131060(n)+A000038(A134082(n))`
-/

namespace A131129.P8986707604187629433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131060 n + A000038 (A134082 n).toNat

end

end A131129.P8986707604187629433

namespace A131129

/-- `A131060(n)+A000038(A134082(n))` -/
def P8986707604187629433.Spec : Prop :=
  ∀ n, P8986707604187629433.a n = A131129 n

end A131129

/-! ## A131129.P17509383385423083069

`A007318(n)+A131108(n)-A097806(n)`
-/

namespace A131129.P17509383385423083069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A131108 n - A097806 n)

end

end A131129.P17509383385423083069

namespace A131129

/-- `A007318(n)+A131108(n)-A097806(n)` -/
def P17509383385423083069.Spec : Prop :=
  ∀ n, P17509383385423083069.a n = A131129 n

end A131129

/-! ## A131129.P14630941550725247815

`A097806(n)+A131131(n)-A007318(n)`
-/

namespace A131129.P14630941550725247815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n + (A131131 n - A007318 n)

end

end A131129.P14630941550725247815

namespace A131129

/-- `A097806(n)+A131131(n)-A007318(n)` -/
def P14630941550725247815.Spec : Prop :=
  ∀ n, P14630941550725247815.a n = A131129 n

end A131129

/-! ## A131129.P4533477546769502647

`A007318(n)+A131131(n)-A131108(n)`
-/

namespace A131129.P4533477546769502647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A131131 n - A131108 n)

end

end A131129.P4533477546769502647

namespace A131129

/-- `A007318(n)+A131131(n)-A131108(n)` -/
def P4533477546769502647.Spec : Prop :=
  ∀ n, P4533477546769502647.a n = A131129 n

end A131129

/-! ## A131129.P14839035553377016707

`A134059(n)-A000038(A212551(n))`
-/

namespace A131129.P14839035553377016707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134059 n - A000038 (A212551 n).toNat

end

end A131129.P14839035553377016707

namespace A131129

/-- `A134059(n)-A000038(A212551(n))` -/
def P14839035553377016707.Spec : Prop :=
  ∀ n, P14839035553377016707.a n = A131129 n

end A131129

/-! ## A131129.P18304122019492124161

`A032766(A131108(n))`
-/

namespace A131129.P18304122019492124161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A131108 n).toNat

end

end A131129.P18304122019492124161

namespace A131129

/-- `A032766(A131108(n))` -/
def P18304122019492124161.Spec : Prop :=
  ∀ n, P18304122019492124161.a n = A131129 n

end A131129

/-! ## A131129.P16215063803496973474

`A001651(A131108(n)+1)-1`
-/

namespace A131129.P16215063803496973474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A131108 n + 1).toNat - 1

end

end A131129.P16215063803496973474

namespace A131129

/-- `A001651(A131108(n)+1)-1` -/
def P16215063803496973474.Spec : Prop :=
  ∀ n, P16215063803496973474.a n = A131129 n

end A131129

/-! ## A131129.P17611876850185865839

`A004277(A131108(n))-A007318(n)`
-/

namespace A131129.P17611876850185865839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A131108 n).toNat - A007318 n

end

end A131129.P17611876850185865839

namespace A131129

/-- `A004277(A131108(n))-A007318(n)` -/
def P17611876850185865839.Spec : Prop :=
  ∀ n, P17611876850185865839.a n = A131129 n

end A131129

/-! ## A131129.P5926441796830179496

`A080782(A131398(n))`
-/

namespace A131129.P5926441796830179496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080782 (A131398 n).toNat

end

end A131129.P5926441796830179496

namespace A131129

/-- `A080782(A131398(n))` -/
def P5926441796830179496.Spec : Prop :=
  ∀ n, P5926441796830179496.a n = A131129 n

end A131129

/-! ## A131129.P3258560079243422164

`A147534(A131398(n)+2)-1`
-/

namespace A131129.P3258560079243422164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147534 (A131398 n + 2).toNat - 1

end

end A131129.P3258560079243422164

namespace A131129

/-- `A147534(A131398(n)+2)-1` -/
def P3258560079243422164.Spec : Prop :=
  ∀ n, P3258560079243422164.a n = A131129 n

end A131129

/-!
# A131130: Binomial transform of [1,1,7,1,7,1,7,1,...].

The programs for A131130, the canonical program `A131130.P10997269673454646675` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131130 has offset 0).

The definition of A131130 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131130.P10997269673454646675

`2*a(n-1)+6` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A131130

/-- `2*a(n-1)+6` -/
def P10997269673454646675.Spec : Prop :=
  ∀ n, (P10997269673454646675.a n : ℤ) = A131130 n

theorem P10997269673454646675.correct : P10997269673454646675.Spec := by
  intro n
  simp only [A131130]

end A131130

/-! ## A131130.P1335619044965364287

`∑[ceil(acot(acot(n)))^(n+1)]`
-/

namespace A131130.P1335619044965364287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (SequenceMachineLib.acot (n : ℝ))⌉ ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131130.P1335619044965364287

namespace A131130

/-- `∑[ceil(acot(acot(n)))^(n+1)]` -/
def P1335619044965364287.Spec : Prop :=
  ∀ n, P1335619044965364287.a n = A131130 n

end A131130

/-! ## A131130.P12046990519030196149

`lcm(2, a(n-1)+3)` with `a(0)=1, a(1)=2`
-/

namespace A131130.P12046990519030196149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.lcm 2 (a (n - 1) + 3)

end

end A131130.P12046990519030196149

namespace A131130

/-- `lcm(2, a(n-1)+3)` -/
def P12046990519030196149.Spec : Prop :=
  ∀ n, (P12046990519030196149.a n : ℤ) = A131130 n

end A131130

/-! ## A131130.P4877040003767422431

`2*xor(7, a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A131130.P4877040003767422431
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * Nat.xor 7 (a (n - 1))

end

end A131130.P4877040003767422431

namespace A131130

/-- `2*xor(7, a(n-1))` -/
def P4877040003767422431.Spec : Prop :=
  ∀ n, (P4877040003767422431.a n : ℤ) = A131130 n

end A131130

/-! ## A131130.P2185993532738906402

`∑[2*a(n-1)]` with `a(0)=1, a(1)=1, a(2)=8`
-/

namespace A131130.P2185993532738906402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 8] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131130.P2185993532738906402

namespace A131130

/-- `∑[2*a(n-1)]` -/
def P2185993532738906402.Spec : Prop :=
  ∀ n, (P2185993532738906402.a n : ℤ) = A131130 n

end A131130

/-! ## A131130.P14321358710058029794

`∑[2^((n+1)%(2^n))]`
-/

namespace A131130.P14321358710058029794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ ((n + 1) % 2 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131130.P14321358710058029794

namespace A131130

/-- `∑[2^((n+1)%(2^n))]` -/
def P14321358710058029794.Spec : Prop :=
  ∀ n, (P14321358710058029794.a n : ℤ) = A131130 n

end A131130

/-! ## A131130.P7780779623350788284

`∑[(floor(atan(n))+1)^(n+1)]`
-/

namespace A131130.P7780779623350788284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊Real.arctan (n : ℝ)⌋ + 1) ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131130.P7780779623350788284

namespace A131130

/-- `∑[(floor(atan(n))+1)^(n+1)]` -/
def P7780779623350788284.Spec : Prop :=
  ∀ n, P7780779623350788284.a n = A131130 n

end A131130

/-! ## A131130.P12546545716746238477

`∑[ceil(atan(n))^(n+1)]+1`
-/

namespace A131130.P12546545716746238477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n : ℝ)⌉ ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A131130.P12546545716746238477

namespace A131130

/-- `∑[ceil(atan(n))^(n+1)]+1` -/
def P12546545716746238477.Spec : Prop :=
  ∀ n, P12546545716746238477.a n = A131130 n

end A131130

/-! ## A131130.P2375724657807486859

`∑[(2-C(n, n²))^(n+1)]`
-/

namespace A131130.P2375724657807486859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.choose n (n ^ 2) : ℤ)) ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131130.P2375724657807486859

namespace A131130

/-- `∑[(2-C(n, n²))^(n+1)]` -/
def P2375724657807486859.Spec : Prop :=
  ∀ n, P2375724657807486859.a n = A131130 n

end A131130

/-! ## A131130.P1225132654624503791

`∑[round(atan(n+1)²)^(n+1)]`
-/

namespace A131130.P1225132654624503791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (n + 1 : ℝ) ^ 2) ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131130.P1225132654624503791

namespace A131130

/-- `∑[round(atan(n+1)²)^(n+1)]` -/
def P1225132654624503791.Spec : Prop :=
  ∀ n, P1225132654624503791.a n = A131130 n

end A131130

/-! ## A131130.P18341871605100388057

`8-2*(1-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A131130.P18341871605100388057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  8 - 2 * (1 - a (n - 1))

end

end A131130.P18341871605100388057

namespace A131130

/-- `8-2*(1-a(n-1))` -/
def P18341871605100388057.Spec : Prop :=
  ∀ n, P18341871605100388057.a n = A131130 n

end A131130

/-! ## A131130.P13812128131222180525

`a(n-1)+2^(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A131130.P13812128131222180525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + 2 ^ (n + 1)

end

end A131130.P13812128131222180525

namespace A131130

/-- `a(n-1)+2^(n+1)` -/
def P13812128131222180525.Spec : Prop :=
  ∀ n, (P13812128131222180525.a n : ℤ) = A131130 n

end A131130

/-! ## A131130.P12194144336492700862

`∑[(3-round(ratio[n+1]))^(n+1)]`
-/

namespace A131130.P12194144336492700862
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - SequenceMachineLib.roundAway ((f2 (n + 1) : ℚ) / (f2 n : ℚ))) ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131130.P12194144336492700862

namespace A131130

/-- `∑[(3-round(ratio[n+1]))^(n+1)]` -/
def P12194144336492700862.Spec : Prop :=
  ∀ n, P12194144336492700862.a n = A131130 n

end A131130

/-! ## A131130.P12906384711595940753

`(a(n-1)+3)/(1-1/2)` with `a(0)=1, a(1)=2`
-/

namespace A131130.P12906384711595940753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 1) + 3) / (1 - (1 : ℚ) / 2)

end

end A131130.P12906384711595940753

namespace A131130

/-- `(a(n-1)+3)/(1-1/2)` -/
def P12906384711595940753.Spec : Prop :=
  ∀ n, P12906384711595940753.a n = (A131130 n : ℚ)

end A131130

/-! ## A131130.P17458671634470602253

`floor(a(n-1)+a(n-1)+6)` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A131130.P17458671634470602253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (a (n - 1) + 6)

end

end A131130.P17458671634470602253

namespace A131130

/-- `floor(a(n-1)+a(n-1)+6)` -/
def P17458671634470602253.Spec : Prop :=
  ∀ n, (P17458671634470602253.a n : ℤ) = A131130 n

theorem P17458671634470602253.correct : P17458671634470602253.Spec := by
  intro n
  simp only [A131130, Nat.add_sub_cancel, A131130.P17458671634470602253.a, A131130.P10997269673454646675.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A131130

/-! ## A131130.P5176413907273533797

`gcd(2, a(n-1))+a(n-1)+a(n-1)+4` with `a(0)=1, a(1)=2`
-/

namespace A131130.P5176413907273533797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.gcd 2 (a (n - 1)) + (a (n - 1) + (a (n - 1) + 4))

end

end A131130.P5176413907273533797

namespace A131130

/-- `gcd(2, a(n-1))+a(n-1)+a(n-1)+4` -/
def P5176413907273533797.Spec : Prop :=
  ∀ n, (P5176413907273533797.a n : ℤ) = A131130 n

end A131130

/-! ## A131130.P10542913403354123931

`a(n-1)+4+a(n-1)+a(n-1)%4` with `a(0)=1, a(1)=2`
-/

namespace A131130.P10542913403354123931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + 4 + (a (n - 1) + a (n - 1) % 4)

end

end A131130.P10542913403354123931

namespace A131130

/-- `a(n-1)+4+a(n-1)+a(n-1)%4` -/
def P10542913403354123931.Spec : Prop :=
  ∀ n, (P10542913403354123931.a n : ℤ) = A131130 n

end A131130

/-! ## A131130.P9999652108163559603

`xor(1, A173033(n)-1)`
-/

namespace A131130.P9999652108163559603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A173033 n - 1)

end

end A131130.P9999652108163559603

namespace A131130

/-- `xor(1, A173033(n)-1)` -/
def P9999652108163559603.Spec : Prop :=
  ∀ n, P9999652108163559603.a n = A131130 n

end A131130

/-!
# A131131: 4*A007318 - 3*A097806.

The programs for A131131, the canonical program `A131131.P12474892076116979280` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131131 has offset 0).

The definition of A131131 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131131.P12474892076116979280

`2*A131108(n)-A097806(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A131131

/-- `2*A131108(n)-A097806(n)` -/
def P12474892076116979280.Spec : Prop :=
  ∀ n, P12474892076116979280.a n = A131131 n

theorem P12474892076116979280.correct : P12474892076116979280.Spec := by
  intro n
  simp only [A131131]

end A131131

/-! ## A131131.P257497154210264508

`2*A131129(n)-A131108(n)`
-/

namespace A131131.P257497154210264508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131129 n - A131108 n

end

end A131131.P257497154210264508

namespace A131131

/-- `2*A131129(n)-A131108(n)` -/
def P257497154210264508.Spec : Prop :=
  ∀ n, P257497154210264508.a n = A131131 n

end A131131

/-! ## A131131.P10366501531218831458

`A131061(n)+3%A140303(n)`
-/

namespace A131131.P10366501531218831458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131061 n + Int.tmod 3 (A140303 n)

end

end A131131.P10366501531218831458

namespace A131131

/-- `A131061(n)+3%A140303(n)` -/
def P10366501531218831458.Spec : Prop :=
  ∀ n, P10366501531218831458.a n = A131131 n

end A131131

/-! ## A131131.P6090530135540190874

`3*A131108(n)-2*A007318(n)`
-/

namespace A131131.P6090530135540190874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A131108 n - 2 * A007318 n

end

end A131131.P6090530135540190874

namespace A131131

/-- `3*A131108(n)-2*A007318(n)` -/
def P6090530135540190874.Spec : Prop :=
  ∀ n, P6090530135540190874.a n = A131131 n

end A131131

/-! ## A131131.P5850779744914507598

`A007318(n)+A131129(n)-A097806(n)`
-/

namespace A131131.P5850779744914507598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A131129 n - A097806 n)

end

end A131131.P5850779744914507598

namespace A131131

/-- `A007318(n)+A131129(n)-A097806(n)` -/
def P5850779744914507598.Spec : Prop :=
  ∀ n, P5850779744914507598.a n = A131131 n

end A131131

/-! ## A131131.P16733774882845787023

`A131108(n)+A131129(n)-A007318(n)`
-/

namespace A131131.P16733774882845787023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131108 n + (A131129 n - A007318 n)

end

end A131131.P16733774882845787023

namespace A131131

/-- `A131108(n)+A131129(n)-A007318(n)` -/
def P16733774882845787023.Spec : Prop :=
  ∀ n, P16733774882845787023.a n = A131131 n

end A131131

/-! ## A131131.P11142625771449587708

`A131111(n)+A131129(n)-A131127(n)`
-/

namespace A131131.P11142625771449587708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131111 n + (A131129 n - A131127 n)

end

end A131131.P11142625771449587708

namespace A131131

/-- `A131111(n)+A131129(n)-A131127(n)` -/
def P11142625771449587708.Spec : Prop :=
  ∀ n, P11142625771449587708.a n = A131131 n

end A131131

/-! ## A131131.P9261800808644584140

`A042948(A131108(n))`
-/

namespace A131131.P9261800808644584140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A131108 n).toNat

end

end A131131.P9261800808644584140

namespace A131131

/-- `A042948(A131108(n))` -/
def P9261800808644584140.Spec : Prop :=
  ∀ n, P9261800808644584140.a n = A131131 n

end A131131

/-! ## A131131.P2894226376698836035

`A131129(n)+A004526(A131108(n))`
-/

namespace A131131.P2894226376698836035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131129 n + A004526 (A131108 n).toNat

end

end A131131.P2894226376698836035

namespace A131131

/-- `A131129(n)+A004526(A131108(n))` -/
def P2894226376698836035.Spec : Prop :=
  ∀ n, P2894226376698836035.a n = A131131 n

end A131131

/-! ## A131131.P6995168675420573882

`A042948(A028326(n)-A097806(n))`
-/

namespace A131131.P6995168675420573882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A028326 n - A097806 n).toNat

end

end A131131.P6995168675420573882

namespace A131131

/-- `A042948(A028326(n)-A097806(n))` -/
def P6995168675420573882.Spec : Prop :=
  ∀ n, P6995168675420573882.a n = A131131 n

end A131131

/-! ## A131131.P3841827237151476631

`A042948(A131398(n)-A014473(n))`
-/

namespace A131131.P3841827237151476631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A131398 n - A014473 n).toNat

end

end A131131.P3841827237151476631

namespace A131131

/-- `A042948(A131398(n)-A014473(n))` -/
def P3841827237151476631.Spec : Prop :=
  ∀ n, P3841827237151476631.a n = A131131 n

end A131131

/-! ## A131131.P16318016129864333870

`A004773(A131129(n))`
-/

namespace A131131.P16318016129864333870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A131129 n).toNat

end

end A131131.P16318016129864333870

namespace A131131

/-- `A004773(A131129(n))` -/
def P16318016129864333870.Spec : Prop :=
  ∀ n, P16318016129864333870.a n = A131131 n

end A131131

/-!
# A131132: a(n) = a(n-1) + a(n-2) + 1 if n is a multiple of 6, otherwise a(n) = a(n-1) + a(n-2).

The programs for A131132, the canonical program `A131132.P1020012601955757558` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131132 has offset 0).

The definition of A131132 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131132.P1020012601955757558

`A293553(n+4)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A131132

/-- `A293553(n+4)` -/
def P1020012601955757558.Spec : Prop :=
  ∀ n, P1020012601955757558.a n = A131132 n

theorem P1020012601955757558.correct : P1020012601955757558.Spec := by
  intro n
  simp only [A131132]

end A131132

/-! ## A131132.P17032048277635053781

`A079962(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A131132.P17032048277635053781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A079962 n + a (n - 2)

end

end A131132.P17032048277635053781

namespace A131132

/-- `A079962(n)+a(n-2)` -/
def P17032048277635053781.Spec : Prop :=
  ∀ n, P17032048277635053781.a n = A131132 n

end A131132

/-! ## A131132.P14114930264945631829

`A293633(n+1)+A004695(n)`
-/

namespace A131132.P14114930264945631829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293633 (n + 1) + A004695 n

end

end A131132.P14114930264945631829

namespace A131132

/-- `A293633(n+1)+A004695(n)` -/
def P14114930264945631829.Spec : Prop :=
  ∀ n, P14114930264945631829.a n = A131132 n

end A131132

/-! ## A131132.P11911234041087906902

`A079962(n+1)-A057078(n)*A134667(n)`
-/

namespace A131132.P11911234041087906902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079962 (n + 1) - A057078 n * A134667 n

end

end A131132.P11911234041087906902

namespace A131132

/-- `A079962(n+1)-A057078(n)*A134667(n)` -/
def P11911234041087906902.Spec : Prop :=
  ∀ n, P11911234041087906902.a n = A131132 n

end A131132

/-! ## A131132.P15323253779856076407

`A004695(n+1)+A293552(n+1)+A004695(n)`
-/

namespace A131132.P15323253779856076407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (n + 1) + (A293552 (n + 1) + A004695 n)

end

end A131132.P15323253779856076407

namespace A131132

/-- `A004695(n+1)+A293552(n+1)+A004695(n)` -/
def P15323253779856076407.Spec : Prop :=
  ∀ n, P15323253779856076407.a n = A131132 n

end A131132

/-! ## A131132.P830311187902753951

`ceil(∑[A000045(n+2)/4])`
-/

namespace A131132.P830311187902753951
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 2) : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A131132.P830311187902753951

namespace A131132

/-- `ceil(∑[A000045(n+2)/4])` -/
def P830311187902753951.Spec : Prop :=
  ∀ n, P830311187902753951.a n = A131132 n

end A131132

/-! ## A131132.P10144703996650964740

`ceil(∑[round(ϕ*a(n-1))]/4)` with `a(0)=1`
-/

namespace A131132.P10144703996650964740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4⌉

end

end A131132.P10144703996650964740

namespace A131132

/-- `ceil(∑[round(ϕ*a(n-1))]/4)` -/
def P10144703996650964740.Spec : Prop :=
  ∀ n, P10144703996650964740.a n = A131132 n

end A131132

/-! ## A131132.P15571063001946555413

`round(∑[round(ϕ*a(n-1))]/4)` with `a(0)=2, a(1)=2`
-/

namespace A131132.P15571063001946555413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4)

end

end A131132.P15571063001946555413

namespace A131132

/-- `round(∑[round(ϕ*a(n-1))]/4)` -/
def P15571063001946555413.Spec : Prop :=
  ∀ n, P15571063001946555413.a n = A131132 n

end A131132

/-! ## A131132.P10016067601680612098

`floor(∑[a(n-1)+a(n-2)]/4)` with `a(0)=4, a(1)=2, a(2)=3`
-/

namespace A131132.P10016067601680612098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 2, 3] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4⌋

end

end A131132.P10016067601680612098

namespace A131132

/-- `floor(∑[a(n-1)+a(n-2)]/4)` -/
def P10016067601680612098.Spec : Prop :=
  ∀ n, P10016067601680612098.a n = A131132 n

end A131132

/-! ## A131132.P1525581489571626448

`floor(A020706(n)/4)`
-/

namespace A131132.P1525581489571626448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A020706 n : ℚ) / 4⌋

end

end A131132.P1525581489571626448

namespace A131132

/-- `floor(A020706(n)/4)` -/
def P1525581489571626448.Spec : Prop :=
  ∀ n, P1525581489571626448.a n = A131132 n

end A131132

/-! ## A131132.P12358798010834777844

`floor(A001611(n+4)/4)`
-/

namespace A131132.P12358798010834777844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001611 (n + 4) : ℚ) / 4⌋

end

end A131132.P12358798010834777844

namespace A131132

/-- `floor(A001611(n+4)/4)` -/
def P12358798010834777844.Spec : Prop :=
  ∀ n, P12358798010834777844.a n = A131132 n

end A131132

/-! ## A131132.P7915569553314956983

`round(A000071(n+4)/4)`
-/

namespace A131132.P7915569553314956983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000071 (n + 4) : ℚ) / 4)

end

end A131132.P7915569553314956983

namespace A131132

/-- `round(A000071(n+4)/4)` -/
def P7915569553314956983.Spec : Prop :=
  ∀ n, P7915569553314956983.a n = A131132 n

end A131132

/-! ## A131132.P4707001521961003837

`floor((A000045(n+4)+1)/4)`
-/

namespace A131132.P4707001521961003837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 (n + 4) + 1 : ℚ) / 4⌋

end

end A131132.P4707001521961003837

namespace A131132

/-- `floor((A000045(n+4)+1)/4)` -/
def P4707001521961003837.Spec : Prop :=
  ∀ n, P4707001521961003837.a n = A131132 n

end A131132

/-! ## A131132.P15324425977800548076

`ceil((ceil(A020701(n)/2)-1)/2)`
-/

namespace A131132.P15324425977800548076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈(A020701 n : ℚ) / 2⌉ - 1 : ℚ) / 2⌉

end

end A131132.P15324425977800548076

namespace A131132

/-- `ceil((ceil(A020701(n)/2)-1)/2)` -/
def P15324425977800548076.Spec : Prop :=
  ∀ n, P15324425977800548076.a n = A131132 n

end A131132

/-! ## A131132.P6945410739681460624

`round((∑[A000032(n)]+A000045(n))/4)`
-/

namespace A131132.P6945410739681460624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j + A000045 n : ℤ) : ℚ) / 4)

end

end A131132.P6945410739681460624

namespace A131132

/-- `round((∑[A000032(n)]+A000045(n))/4)` -/
def P6945410739681460624.Spec : Prop :=
  ∀ n, P6945410739681460624.a n = A131132 n

end A131132

/-! ## A131132.P6486374536983475372

`round(sqrt(A109609(2*n+1)/2))`
-/

namespace A131132.P6486374536983475372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A109609 (2 * n + 1) : ℚ) / 2 : ℝ))

end

end A131132.P6486374536983475372

namespace A131132

/-- `round(sqrt(A109609(2*n+1)/2))` -/
def P6486374536983475372.Spec : Prop :=
  ∀ n, P6486374536983475372.a n = A131132 n

end A131132

/-!
# A131133: a(0)=1; for n > 0, a(n) = (1/n + 1/a(n-1))*lcm(n, a(n-1)).

The programs for A131133, the canonical program `A131133.P16864320305885586365` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131133 has offset 0).

The definition of A131133 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131133.P16864320305885586365

`(1/n+1/a(n-1))*lcm(n, a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A131133

/-- `(1/n+1/a(n-1))*lcm(n, a(n-1))` -/
def P16864320305885586365.Spec : Prop :=
  ∀ n, P16864320305885586365.a n = (A131133 n : ℚ)

end A131133

/-! ## A131133.P7000288589236150207

`lcm(n, a(n-1)+n)/n` with `a(0)=1`
-/

namespace A131133.P7000288589236150207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm (n : ℤ) (SequenceMachineLib.roundAway (a (n - 1) + (n : ℚ))) : ℚ) / (n : ℚ)

end

end A131133.P7000288589236150207

namespace A131133

/-- `lcm(n, a(n-1)+n)/n` -/
def P7000288589236150207.Spec : Prop :=
  ∀ n, P7000288589236150207.a n = (A131133 n : ℚ)

end A131133

/-! ## A131133.P2860002299900038560

`(a(n-1)+n)/gcd(n, a(n-1))` with `a(0)=1`
-/

namespace A131133.P2860002299900038560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + (n : ℚ)) / (Int.gcd (n : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ)

end

end A131133.P2860002299900038560

namespace A131133

/-- `(a(n-1)+n)/gcd(n, a(n-1))` -/
def P2860002299900038560.Spec : Prop :=
  ∀ n, P2860002299900038560.a n = (A131133 n : ℚ)

end A131133

/-!
# A131134: a(1)=1. a(n) = (1/n + 1/a(n-1)) * lcm(n,a(n-1)).

The programs for A131134, the canonical program `A131134.P672123538251224526` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131134 has offset 1).

The definition of A131134 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131134.P1543862051937271358

`lcm(n+1, a(n-1)+n+1)/(n+1)` with `a(0)=1`
-/

namespace A131134.P1543862051937271358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm (n + 1 : ℤ) (SequenceMachineLib.roundAway (a (n - 1) + (n + 1 : ℚ))) : ℚ) / (n + 1 : ℚ)

end

end A131134.P1543862051937271358

namespace A131134

/-- `lcm(n+1, a(n-1)+n+1)/(n+1)` -/
def P1543862051937271358.Spec : Prop :=
  ∀ n, P1543862051937271358.a n = (A131134 (n + 1) : ℚ)

end A131134

/-! ## A131134.P672123538251224526

`∑[floor(Δ[(a(n-1)+n)/gcd(n, a(n-1))])]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A131134

/-- `∑[floor(Δ[(a(n-1)+n)/gcd(n, a(n-1))])]` -/
def P672123538251224526.Spec : Prop :=
  ∀ n, P672123538251224526.a n = A131134 (n + 1)

theorem P672123538251224526.correct : P672123538251224526.Spec := by
  intro n
  simp only [A131134, Nat.add_sub_cancel]

end A131134

/-! ## A131134.P7732965393858263334

`A125605(∑[n+3])`
-/

namespace A131134.P7732965393858263334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125605 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A131134.P7732965393858263334

namespace A131134

/-- `A125605(∑[n+3])` -/
def P7732965393858263334.Spec : Prop :=
  ∀ n, P7732965393858263334.a n = A131134 (n + 1)

end A131134

/-! ## A131134.P4032021573524174748

`A125605(A133263(n+2))%A016935(n)`
-/

namespace A131134.P4032021573524174748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125605 (A133263 (n + 2)).toNat) (A016935 n)

end

end A131134.P4032021573524174748

namespace A131134

/-- `A125605(A133263(n+2))%A016935(n)` -/
def P4032021573524174748.Spec : Prop :=
  ∀ n, P4032021573524174748.a n = A131134 (n + 1)

end A131134

/-! ## A131134.P14893522418868099409

`A125605(A133263(n+2))+char[A146081(n)]`
-/

namespace A131134.P14893522418868099409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125605 (A133263 (n + 2)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A131134.P14893522418868099409

namespace A131134

/-- `A125605(A133263(n+2))+char[A146081(n)]` -/
def P14893522418868099409.Spec : Prop :=
  ∀ n, P14893522418868099409.a n = A131134 (n + 1)

end A131134

/-! ## A131134.P2019971004696590894

`char[A260316(n)]*A125605(A133263(n+2))`
-/

namespace A131134.P2019971004696590894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260316 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A125605 (A133263 (n + 2)).toNat

end

end A131134.P2019971004696590894

namespace A131134

/-- `char[A260316(n)]*A125605(A133263(n+2))` -/
def P2019971004696590894.Spec : Prop :=
  ∀ n, P2019971004696590894.a n = A131134 (n + 1)

end A131134

/-!
# A131135: Denominator of (ordinary) expansion of log((x/2-1)/(x-1)).

The programs for A131135, the canonical program `A131135.P10095143337116483754` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131135 has offset 0).

The definition of A131135 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131135.P10095143337116483754

`A000032(C(2, n+2))*A090634(A028310(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A131135

/-- `A000032(C(2, n+2))*A090634(A028310(n))` -/
def P10095143337116483754.Spec : Prop :=
  ∀ n, P10095143337116483754.a n = A131135 n

theorem P10095143337116483754.correct : P10095143337116483754.Spec := by
  intro n
  simp only [A131135]

end A131135

/-! ## A131135.P10114579400664015277

`A020639(A000010(n+2))*A090634(A028310(n))`
-/

namespace A131135.P10114579400664015277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 2)).toNat * A090634 (A028310 n).toNat

end

end A131135.P10114579400664015277

namespace A131135

/-- `A020639(A000010(n+2))*A090634(A028310(n))` -/
def P10114579400664015277.Spec : Prop :=
  ∀ n, P10114579400664015277.a n = A131135 n

end A131135

/-! ## A131135.P17656870207036127807

`A020639(A000040(n+1)-1)*A090634(A028310(n))`
-/

namespace A131135.P17656870207036127807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000040 (n + 1) - 1).toNat * A090634 (A028310 n).toNat

end

end A131135.P17656870207036127807

namespace A131135

/-- `A020639(A000040(n+1)-1)*A090634(A028310(n))` -/
def P17656870207036127807.Spec : Prop :=
  ∀ n, P17656870207036127807.a n = A131135 n

end A131135

/-! ## A131135.P2342393495251408866

`A134401(n)/gcd(n, A132074(n))`
-/

namespace A131135.P2342393495251408866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134401 n : ℚ) / (Int.gcd (n : ℤ) (A132074 n) : ℚ)

end

end A131135.P2342393495251408866

namespace A131135

/-- `A134401(n)/gcd(n, A132074(n))` -/
def P2342393495251408866.Spec : Prop :=
  ∀ n, P2342393495251408866.a n = (A131135 n : ℚ)

end A131135

/-!
# A131136: Denominator of (exponential) expansion of log((x/2-1)/(x-1)).

The programs for A131136, the canonical program `A131136.P4989883626134294287` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131136 has offset 0).

The definition of A131136 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131136.P4989883626134294287

`gcd(2, n)*a(∑[n%2])` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A131136

/-- `gcd(2, n)*a(∑[n%2])` -/
def P4989883626134294287.Spec : Prop :=
  ∀ n, (P4989883626134294287.a n : ℤ) = A131136 n

theorem P4989883626134294287.correct : P4989883626134294287.Spec := by
  intro n
  simp only [A131136]

end A131136

/-! ## A131136.P509586471377827855

`2*a(n-gcd(1-n, a(n-1)))` with `a(0)=1`
-/

namespace A131136.P509586471377827855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - Int.gcd (1 - (n : ℤ)) (a (n - 1) : ℤ))

end

end A131136.P509586471377827855

namespace A131136

/-- `2*a(n-gcd(1-n, a(n-1)))` -/
def P509586471377827855.Spec : Prop :=
  ∀ n, (P509586471377827855.a n : ℤ) = A131136 n

end A131136

/-! ## A131136.P5882120631639133407

`lcm(1-n, 2*a(n-1))/(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A131136.P5882120631639133407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (Int.lcm (1 - (n : ℤ)) (SequenceMachineLib.roundAway (2 * a (n - 1))) : ℚ) / ((n : ℤ) - 1 : ℚ)

end

end A131136.P5882120631639133407

namespace A131136

/-- `lcm(1-n, 2*a(n-1))/(n-1)` -/
def P5882120631639133407.Spec : Prop :=
  ∀ n, P5882120631639133407.a n = (A131136 n : ℚ)

end A131136

/-! ## A131136.P14714975771955575688

`(a(n-1)+floor(a(n-1)))/gcd(n-1, floor(a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A131136.P14714975771955575688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + (⌊a (n - 1)⌋ : ℚ)) / (Int.gcd ((n : ℤ) - 1) ⌊a (n - 1)⌋ : ℚ)

end

end A131136.P14714975771955575688

namespace A131136

/-- `(a(n-1)+floor(a(n-1)))/gcd(n-1, floor(a(n-1)))` -/
def P14714975771955575688.Spec : Prop :=
  ∀ n, P14714975771955575688.a n = (A131136 n : ℚ)

end A131136

/-! ## A131136.P15838816773123096623

`A001316(record[lcm(2, n)])`
-/

namespace A131136.P15838816773123096623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A131136.P15838816773123096623

namespace A131136

/-- `A001316(record[lcm(2, n)])` -/
def P15838816773123096623.Spec : Prop :=
  ∀ n, P15838816773123096623.a n = A131136 n

end A131136

/-! ## A131136.P10859770200234427718

`A001316(record[n*n%2])`
-/

namespace A131136.P10859770200234427718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A131136.P10859770200234427718

namespace A131136

/-- `A001316(record[n*n%2])` -/
def P10859770200234427718.Spec : Prop :=
  ∀ n, P10859770200234427718.a n = A131136 n

end A131136

/-! ## A131136.P7395688278507780083

`2*a(2^A000120(n-1)-1)` with `a(0)=1`
-/

namespace A131136.P7395688278507780083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A000120 (n - 1) : ℤ) - 1)).toNat

end

end A131136.P7395688278507780083

namespace A131136

/-- `2*a(2^A000120(n-1)-1)` -/
def P7395688278507780083.Spec : Prop :=
  ∀ n, (P7395688278507780083.a n : ℤ) = A131136 n

end A131136

/-! ## A131136.P13025178892628020302

`A001316(A004273(n))`
-/

namespace A131136.P13025178892628020302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A004273 n).toNat

end

end A131136.P13025178892628020302

namespace A131136

/-- `A001316(A004273(n))` -/
def P13025178892628020302.Spec : Prop :=
  ∀ n, P13025178892628020302.a n = A131136 n

end A131136

/-! ## A131136.P9263921384337240891

`A001316(A130824(n))`
-/

namespace A131136.P9263921384337240891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A130824 n).toNat

end

end A131136.P9263921384337240891

namespace A131136

/-- `A001316(A130824(n))` -/
def P9263921384337240891.Spec : Prop :=
  ∀ n, P9263921384337240891.a n = A131136 n

end A131136

/-! ## A131136.P12065054295175477498

`A060632(A113127(n))`
-/

namespace A131136.P12065054295175477498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (A113127 n).toNat

end

end A131136.P12065054295175477498

namespace A131136

/-- `A060632(A113127(n))` -/
def P12065054295175477498.Spec : Prop :=
  ∀ n, P12065054295175477498.a n = A131136 n

end A131136

/-! ## A131136.P5073063110299313518

`A001316(record[A006257(n)])`
-/

namespace A131136.P5073063110299313518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A131136.P5073063110299313518

namespace A131136

/-- `A001316(record[A006257(n)])` -/
def P5073063110299313518.Spec : Prop :=
  ∀ n, P5073063110299313518.a n = A131136 n

end A131136

/-! ## A131136.P7853554094981676954

`A001316(A004760(n+1))`
-/

namespace A131136.P7853554094981676954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A004760 (n + 1)).toNat

end

end A131136.P7853554094981676954

namespace A131136

/-- `A001316(A004760(n+1))` -/
def P7853554094981676954.Spec : Prop :=
  ∀ n, P7853554094981676954.a n = A131136 n

end A131136

/-! ## A131136.P5977955956076951859

`A001316(A123168(n+1))`
-/

namespace A131136.P5977955956076951859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A123168 (n + 1)).toNat

end

end A131136.P5977955956076951859

namespace A131136

/-- `A001316(A123168(n+1))` -/
def P5977955956076951859.Spec : Prop :=
  ∀ n, P5977955956076951859.a n = A131136 n

end A131136

/-! ## A131136.P12245508433584623551

`A060632(A131098(n+1))`
-/

namespace A131136.P12245508433584623551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (A131098 (n + 1)).toNat

end

end A131136.P12245508433584623551

namespace A131136

/-- `A060632(A131098(n+1))` -/
def P12245508433584623551.Spec : Prop :=
  ∀ n, P12245508433584623551.a n = A131136 n

end A131136

/-! ## A131136.P4707531188980054070

`A001316(A004277(n)-1)`
-/

namespace A131136.P4707531188980054070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A004277 n - 1).toNat

end

end A131136.P4707531188980054070

namespace A131136

/-- `A001316(A004277(n)-1)` -/
def P4707531188980054070.Spec : Prop :=
  ∀ n, P4707531188980054070.a n = A131136 n

end A131136

/-! ## A131136.P11111107325937208357

`A060632(A008574(n)-1)`
-/

namespace A131136.P11111107325937208357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (A008574 n - 1).toNat

end

end A131136.P11111107325937208357

namespace A131136

/-- `A060632(A008574(n)-1)` -/
def P11111107325937208357.Spec : Prop :=
  ∀ n, P11111107325937208357.a n = A131136 n

end A131136

/-! ## A131136.P7076017626348491859

`A001316(A003817(n)+n)`
-/

namespace A131136.P7076017626348491859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A003817 n + (n : ℤ)).toNat

end

end A131136.P7076017626348491859

namespace A131136

/-- `A001316(A003817(n)+n)` -/
def P7076017626348491859.Spec : Prop :=
  ∀ n, P7076017626348491859.a n = A131136 n

end A131136

/-! ## A131136.P17507960355135300746

`A001316(A123169(n+1)/2)`
-/

namespace A131136.P17507960355135300746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (SequenceMachineLib.roundAway ((A123169 (n + 1) : ℚ) / 2)).toNat

end

end A131136.P17507960355135300746

namespace A131136

/-- `A001316(A123169(n+1)/2)` -/
def P17507960355135300746.Spec : Prop :=
  ∀ n, P17507960355135300746.a n = A131136 n

end A131136

/-! ## A131136.P6177857348199379039

`A001316(2*n-A043545(n))`
-/

namespace A131136.P6177857348199379039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 ((2 * n : ℤ) - A043545 n).toNat

end

end A131136.P6177857348199379039

namespace A131136

/-- `A001316(2*n-A043545(n))` -/
def P6177857348199379039.Spec : Prop :=
  ∀ n, P6177857348199379039.a n = A131136 n

end A131136

/-! ## A131136.P1276841164642613817

`A001316(2*n-A057427(n))`
-/

namespace A131136.P1276841164642613817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 ((2 * n : ℤ) - A057427 n).toNat

end

end A131136.P1276841164642613817

namespace A131136

/-- `A001316(2*n-A057427(n))` -/
def P1276841164642613817.Spec : Prop :=
  ∀ n, P1276841164642613817.a n = A131136 n

end A131136

/-!
# A131137: Denominator of (exponential) expansion of log((2*x/3-1)/(x-1)).

The programs for A131137, the canonical program `A131137.P15076297547464346448` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131137 has offset 0).

The definition of A131137 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131137.P6554580061569185330

`3/gcd(1-n, a(n-1))*a(n-1)` with `a(0)=1`
-/

namespace A131137.P6554580061569185330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 / (Int.gcd (1 - (n : ℤ)) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) * a (n - 1)

end

end A131137.P6554580061569185330

namespace A131137

/-- `3/gcd(1-n, a(n-1))*a(n-1)` -/
def P6554580061569185330.Spec : Prop :=
  ∀ n, P6554580061569185330.a n = (A131137 n : ℚ)

end A131137

/-! ## A131137.P6811459290834057070

`A133579(A008574(n)-(n+1))`
-/

namespace A131137.P6811459290834057070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133579 (A008574 n - (n + 1 : ℤ)).toNat

end

end A131137.P6811459290834057070

namespace A131137

/-- `A133579(A008574(n)-(n+1))` -/
def P6811459290834057070.Spec : Prop :=
  ∀ n, P6811459290834057070.a n = A131137 n

end A131137

/-! ## A131137.P6462302349075662080

`A133579(A008574(n)-1-n)`
-/

namespace A131137.P6462302349075662080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133579 (A008574 n - 1 - (n : ℤ)).toNat

end

end A131137.P6462302349075662080

namespace A131137

/-- `A133579(A008574(n)-1-n)` -/
def P6462302349075662080.Spec : Prop :=
  ∀ n, P6462302349075662080.a n = A131137 n

end A131137

/-! ## A131137.P230252859933619843

`gcd(n*A006568(n), A000244(n))`
-/

namespace A131137.P230252859933619843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A006568 n) (A000244 n)

end

end A131137.P230252859933619843

namespace A131137

/-- `gcd(n*A006568(n), A000244(n))` -/
def P230252859933619843.Spec : Prop :=
  ∀ n, (P230252859933619843.a n : ℤ) = A131137 n

end A131137

/-! ## A131137.P15076297547464346448

`gcd(n, A125824(n))*A125824(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A131137

/-- `gcd(n, A125824(n))*A125824(n)` -/
def P15076297547464346448.Spec : Prop :=
  ∀ n, P15076297547464346448.a n = A131137 n

theorem P15076297547464346448.correct : P15076297547464346448.Spec := by
  intro n
  simp only [A131137]

end A131137

/-! ## A131137.P13724117860096443331

`A000244(A253092(record[A014682(n)]))`
-/

namespace A131137.P13724117860096443331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A253092 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A131137.P13724117860096443331

namespace A131137

/-- `A000244(A253092(record[A014682(n)]))` -/
def P13724117860096443331.Spec : Prop :=
  ∀ n, P13724117860096443331.a n = A131137 n

end A131137

/-! ## A131137.P13403492125183247592

`gcd(n*A004987(n), 3^n)`
-/

namespace A131137.P13403492125183247592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A004987 n) (3 ^ n : ℤ)

end

end A131137.P13403492125183247592

namespace A131137

/-- `gcd(n*A004987(n), 3^n)` -/
def P13403492125183247592.Spec : Prop :=
  ∀ n, (P13403492125183247592.a n : ℤ) = A131137 n

end A131137

/-! ## A131137.P6371890828119219372

`3^A131138(n)`
-/

namespace A131137.P6371890828119219372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A131138 n : ℤ)

end

end A131137.P6371890828119219372

namespace A131137

/-- `3^A131138(n)` -/
def P6371890828119219372.Spec : Prop :=
  ∀ n, P6371890828119219372.a n = (A131137 n : ℚ)

end A131137

/-! ## A131137.P8284032370498730687

`A000244(A131138(n))`
-/

namespace A131137.P8284032370498730687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A131138 n).toNat

end

end A131137.P8284032370498730687

namespace A131137

/-- `A000244(A131138(n))` -/
def P8284032370498730687.Spec : Prop :=
  ∀ n, P8284032370498730687.a n = A131137 n

end A131137

/-! ## A131137.P3890137781105670122

`A133494(A131138(n)+1)`
-/

namespace A131137.P3890137781105670122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 (A131138 n + 1).toNat

end

end A131137.P3890137781105670122

namespace A131137

/-- `A133494(A131138(n)+1)` -/
def P3890137781105670122.Spec : Prop :=
  ∀ n, P3890137781105670122.a n = A131137 n

end A131137

/-!
# A131138: a(n)=log_3(A131137(n)).

The programs for A131138, there is no canonical definition to state claims against.
-/

/-! ## A131138.P18355461793581462215

`∑[1-val(abs(2-n)+1, 3)]`
-/

namespace A131138.P18355461793581462215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.valuation (|2 - (n : ℤ)| + 1).toNat 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131138.P18355461793581462215

/-! ## A131138.P1440724659313589632

`a(n-1)+1-val(n-1, 3)` with `a(0)=0, a(1)=1`
-/

namespace A131138.P1440724659313589632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (1 - (SequenceMachineLib.valuation ((n : ℤ) - 1).toNat 3 : ℤ))

end

end A131138.P1440724659313589632

/-! ## A131138.P1703562232941693775

`1-(val(n-1, 3)-a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A131138.P1703562232941693775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 - ((SequenceMachineLib.valuation ((n : ℤ) - 1).toNat 3 : ℤ) - a (n - 1))

end

end A131138.P1703562232941693775

/-! ## A131138.P16970215834225386652

`val(A131137(n), 3)`
-/

namespace A131138.P16970215834225386652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A131137 n).toNat 3

end

end A131138.P16970215834225386652

/-! ## A131138.P78750949859438694

`n-A054861(abs(1-n))`
-/

namespace A131138.P78750949859438694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A054861 |1 - (n : ℤ)|.toNat

end

end A131138.P78750949859438694

/-! ## A131138.P17249809056835581810

`A253092(abs(1-n)+2*n)`
-/

namespace A131138.P17249809056835581810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253092 (|1 - (n : ℤ)| + (2 * n : ℤ)).toNat

end

end A131138.P17249809056835581810

/-! ## A131138.P7436362210180428793

`n-(A054861(n)-val(A028310(n), 3))`
-/

namespace A131138.P7436362210180428793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A054861 n - (SequenceMachineLib.valuation (A028310 n).toNat 3 : ℤ))

end

end A131138.P7436362210180428793

/-! ## A131138.P4360499717906192532

`n-val(abs(1-n)!, 3)`
-/

namespace A131138.P4360499717906192532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (Nat.factorial |1 - (n : ℤ)|.toNat) 3 : ℤ)

end

end A131138.P4360499717906192532

/-!
# A131140: Counts 3-wild partitions. In general p-wild partitions of n are defined so that they are in bijection with geometric equivalence classes of degree n algebra extensions of the p-adic field Q_p. Here two algebra extensions are equivalent if they become isomorphic after tensoring with the maximal unramified extension of Q_p.

The programs for A131140, there is no canonical definition to state claims against.
-/

/-! ## A131140.P9844619537349377168

`A037314(A000041(n*A238352(n)))`
-/

namespace A131140.P9844619537349377168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (A000041 ((n : ℤ) * A238352 n).toNat).toNat

end

end A131140.P9844619537349377168

/-! ## A131140.P1805097932517638580

`A037314(A000041(n)^A238352(n))`
-/

namespace A131140.P1805097932517638580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (SequenceMachineLib.roundAway ((A000041 n : ℚ) ^ (A238352 n : ℤ))).toNat

end

end A131140.P1805097932517638580

/-! ## A131140.P15226551234159260538

`A037314(A000041(n)%A020578(n+1))`
-/

namespace A131140.P15226551234159260538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (Int.tmod (A000041 n) (A020578 (n + 1))).toNat

end

end A131140.P15226551234159260538

/-! ## A131140.P10808354301764332293

`A037314(A000041(n))%A345397(n+1)`
-/

namespace A131140.P10808354301764332293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037314 (A000041 n).toNat) (A345397 (n + 1))

end

end A131140.P10808354301764332293

/-! ## A131140.P15252584045729434876

`A037314(A035363(2*n)%A209065(n+2))`
-/

namespace A131140.P15252584045729434876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (Int.tmod (A035363 (2 * n)) (A209065 (n + 2))).toNat

end

end A131140.P15252584045729434876

/-!
# A131141: Signature permutation of a Catalan automorphism: row 3 of A122285.

The programs for A131141, there is no canonical definition to state claims against.
-/

/-! ## A131141.P2739598754804813929

`A073291(A073288(n))`
-/

namespace A131141.P2739598754804813929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073291 (A073288 n).toNat

end

end A131141.P2739598754804813929

/-! ## A131141.P9378886935600186559

`A069768(A082348(n))`
-/

namespace A131141.P9378886935600186559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A082348 n).toNat

end

end A131141.P9378886935600186559

/-! ## A131141.P11891955788262351410

`A130342(A073288(A073287(n)))`
-/

namespace A131141.P11891955788262351410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130342 (A073288 (A073287 n).toNat).toNat

end

end A131141.P11891955788262351410

/-! ## A131141.P7487698731228559008

`A130981(A131142(A130981(n)))`
-/

namespace A131141.P7487698731228559008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130981 (A131142 (A130981 n).toNat).toNat

end

end A131141.P7487698731228559008

/-! ## A131141.P3695203775513276958

`A130342(A073288(n)+n-A073286(n))`
-/

namespace A131141.P3695203775513276958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130342 (A073288 n + ((n : ℤ) - A073286 n)).toNat

end

end A131141.P3695203775513276958

/-! ## A131141.P15150675988398772818

`A130342(n-(A073286(n)-A073288(n)))`
-/

namespace A131141.P15150675988398772818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130342 ((n : ℤ) - (A073286 n - A073288 n)).toNat

end

end A131141.P15150675988398772818

/-! ## A131141.P12939364887039969140

`A057163(A082346(A069767(A057163(n))))`
-/

namespace A131141.P12939364887039969140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A082346 (A069767 (A057163 n).toNat).toNat).toNat

end

end A131141.P12939364887039969140

/-! ## A131141.P13760340303015416832

`A057163(A082346(A057163(A069768(n))))`
-/

namespace A131141.P13760340303015416832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A082346 (A057163 (A069768 n).toNat).toNat).toNat

end

end A131141.P13760340303015416832

/-! ## A131141.P12151857069514787580

`A082346(A069768(A082345(A082345(n))))`
-/

namespace A131141.P12151857069514787580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082346 (A069768 (A082345 (A082345 n).toNat).toNat).toNat

end

end A131141.P12151857069514787580

/-! ## A131141.P16691892695675830572

`A069768(A069768(A130942(A130935(n))))`
-/

namespace A131141.P16691892695675830572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A069768 (A130942 (A130935 n).toNat).toNat).toNat

end

end A131141.P16691892695675830572

/-! ## A131141.P13183530634059337321

`A082348(A073289(A082348(A073288(A073289(n)))))`
-/

namespace A131141.P13183530634059337321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082348 (A073289 (A082348 (A073288 (A073289 n).toNat).toNat).toNat).toNat

end

end A131141.P13183530634059337321

/-! ## A131141.P15033787569108688237

`A082348(A073289(A082348(A082345(A082346(n)))))`
-/

namespace A131141.P15033787569108688237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082348 (A073289 (A082348 (A082345 (A082346 n).toNat).toNat).toNat).toNat

end

end A131141.P15033787569108688237

/-! ## A131141.P18303708378101438903

`A082348(A073289(A082348(A082348(A082347(n)))))`
-/

namespace A131141.P18303708378101438903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082348 (A073289 (A082348 (A082348 (A082347 n).toNat).toNat).toNat).toNat

end

end A131141.P18303708378101438903

/-!
# A131142: Signature permutation of a Catalan automorphism: row 3 of A122286.

The programs for A131142, there is no canonical definition to state claims against.
-/

/-! ## A131142.P6896921157111025101

`A073289(A073290(n))`
-/

namespace A131142.P6896921157111025101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073289 (A073290 n).toNat

end

end A131142.P6896921157111025101

/-! ## A131142.P4438295772172073767

`A082347(A069767(n))`
-/

namespace A131142.P4438295772172073767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082347 (A069767 n).toNat

end

end A131142.P4438295772172073767

/-! ## A131142.P990464126911749271

`A073289(A073292(A069768(n)))`
-/

namespace A131142.P990464126911749271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073289 (A073292 (A069768 n).toNat).toNat

end

end A131142.P990464126911749271

/-! ## A131142.P17461806204771287119

`A073286(A082347(A069770(n)))`
-/

namespace A131142.P17461806204771287119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073286 (A082347 (A069770 n).toNat).toNat

end

end A131142.P17461806204771287119

/-! ## A131142.P6419695077487543445

`A082347(A082346(A073288(n)))`
-/

namespace A131142.P6419695077487543445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082347 (A082346 (A073288 n).toNat).toNat

end

end A131142.P6419695077487543445

/-! ## A131142.P18151657610253579426

`A082347(A073288(A082347(n)))`
-/

namespace A131142.P18151657610253579426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082347 (A073288 (A082347 n).toNat).toNat

end

end A131142.P18151657610253579426

/-! ## A131142.P10250385622415226120

`A073289(A130341(A073286(n)))`
-/

namespace A131142.P10250385622415226120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073289 (A130341 (A073286 n).toNat).toNat

end

end A131142.P10250385622415226120

/-! ## A131142.P13512299117888192842

`A130981(A131141(A130981(n)))`
-/

namespace A131142.P13512299117888192842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130981 (A131141 (A130981 n).toNat).toNat

end

end A131142.P13512299117888192842

/-! ## A131142.P16799969506217833909

`A082346(A082346(A069767(A082345(n))))`
-/

namespace A131142.P16799969506217833909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082346 (A082346 (A069767 (A082345 n).toNat).toNat).toNat

end

end A131142.P16799969506217833909

/-! ## A131142.P5501782503093046933

`A073289(A069767(A069767(A073288(A073289(n)))))`
-/

namespace A131142.P5501782503093046933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073289 (A069767 (A069767 (A073288 (A073289 n).toNat).toNat).toNat).toNat

end

end A131142.P5501782503093046933

/-!
# A131143: Signature permutation of a Catalan automorphism: row 4 of A122285.

The programs for A131143, there is no canonical definition to state claims against.
-/

/-! ## A131143.P15805378595334548045

`A130366(A131165(A057510(n)))`
-/

namespace A131143.P15805378595334548045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130366 (A131165 (A057510 n).toNat).toNat

end

end A131143.P15805378595334548045

/-! ## A131143.P10200041034731607560

`A130983(A131148(A130984(n)))`
-/

namespace A131143.P10200041034731607560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130983 (A131148 (A130984 n).toNat).toNat

end

end A131143.P10200041034731607560

/-! ## A131143.P16865848683188671570

`A131148(n)+A131122(n+1)%2`
-/

namespace A131143.P16865848683188671570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131148 n + Int.tmod (A131122 (n + 1)) 2

end

end A131143.P16865848683188671570

/-! ## A131143.P13766010850917621362

`A131148(n)%A366187(3*n+5)`
-/

namespace A131143.P13766010850917621362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131148 n) (A366187 (3 * n + 5))

end

end A131143.P13766010850917621362

/-! ## A131143.P11482148497095135812

`A010156(A071568(n))*A131148(n)`
-/

namespace A131143.P11482148497095135812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010156 (A071568 n).toNat * A131148 n

end

end A131143.P11482148497095135812

/-!
# A131144: Signature permutation of a Catalan automorphism: row 6 of A122286.

The programs for A131144, there is no canonical definition to state claims against.
-/

/-! ## A131144.P7421275155161245748

`A057509(A131166(A130365(n)))`
-/

namespace A131144.P7421275155161245748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057509 (A131166 (A130365 n).toNat).toNat

end

end A131144.P7421275155161245748

/-! ## A131144.P8540146839158082352

`A130983(A131147(A130984(n)))`
-/

namespace A131144.P8540146839158082352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130983 (A131147 (A130984 n).toNat).toNat

end

end A131144.P8540146839158082352

/-! ## A131144.P976506501857058394

`A131147(n)%∑[A131139(n)]`
-/

namespace A131144.P976506501857058394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131139 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131147 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A131144.P976506501857058394

/-! ## A131144.P10275159348172111559

`A131147(and(n, A152388(n+1)))`
-/

namespace A131144.P10275159348172111559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131147 (Int.land (n : ℤ) (A152388 (n + 1))).toNat

end

end A131144.P10275159348172111559

/-! ## A131144.P517299586527232730

`and(A131147(n), A383046(n+3))`
-/

namespace A131144.P517299586527232730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131147 n) (A383046 (n + 3))

end

end A131144.P517299586527232730

/-!
# A131145: Signature permutation of a Catalan automorphism: row 5 of A122285.

The programs for A131145, there is no canonical definition to state claims against.
-/

/-! ## A131145.P2370529594115464751

`A130982(A131146(A130982(n)))`
-/

namespace A131145.P2370529594115464751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130982 (A131146 (A130982 n).toNat).toNat

end

end A131145.P2370529594115464751

/-! ## A131145.P2394025782398476561

`A131146(and(n, A356877(n)))`
-/

namespace A131145.P2394025782398476561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131146 (Int.land (n : ℤ) (A356877 n)).toNat

end

end A131145.P2394025782398476561

/-! ## A131145.P10229438615308612244

`and(A131146(n), A359085(n+1))`
-/

namespace A131145.P10229438615308612244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131146 n) (A359085 (n + 1))

end

end A131145.P10229438615308612244

/-! ## A131145.P7293107649193404239

`A131146(n)%record[A378077(n+6)]`
-/

namespace A131145.P7293107649193404239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378077 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131146 n) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A131145.P7293107649193404239

/-! ## A131145.P8256132333909276988

`A131146(n)+A000007(A276086(n))`
-/

namespace A131145.P8256132333909276988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131146 n + A000007 (A276086 n).toNat

end

end A131145.P8256132333909276988

/-!
# A131146: Signature permutation of a Catalan automorphism: row 5 of A122286.

The programs for A131146, there is no canonical definition to state claims against.
-/

/-! ## A131146.P2317214258385214541

`A130982(A131145(A130982(n)))`
-/

namespace A131146.P2317214258385214541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130982 (A131145 (A130982 n).toNat).toNat

end

end A131146.P2317214258385214541

/-! ## A131146.P744388030910846682

`A131145(A131145(A131145(n)%A176589(n+1)))`
-/

namespace A131146.P744388030910846682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131145 (A131145 (Int.tmod (A131145 n) (A176589 (n + 1))).toNat).toNat

end

end A131146.P744388030910846682

/-!
# A131147: Signature permutation of a Catalan automorphism: row 6 of A122285.

The programs for A131147, there is no canonical definition to state claims against.
-/

/-! ## A131147.P3891219700950382755

`A130984(A131144(A130983(n)))`
-/

namespace A131147.P3891219700950382755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130984 (A131144 (A130983 n).toNat).toNat

end

end A131147.P3891219700950382755

/-!
# A131148: Signature permutation of a Catalan automorphism: row 4 of A122286.

The programs for A131148, there is no canonical definition to state claims against.
-/

/-! ## A131148.P15210176113144632944

`A130984(A131143(A130983(n)))`
-/

namespace A131148.P15210176113144632944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130984 (A131143 (A130983 n).toNat).toNat

end

end A131148.P15210176113144632944

/-!
# A131149: Signature permutation of a Catalan automorphism: row 9 of A122285.

The programs for A131149, there is no canonical definition to state claims against.
-/

/-! ## A131149.P2182717597883135254

`A131154(n)+A070277(A077068(n+1))`
-/

namespace A131149.P2182717597883135254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131154 n + A070277 (A077068 (n + 1)).toNat

end

end A131149.P2182717597883135254

/-! ## A131149.P2287922048476207693

`A131154(n)*A339564(A077068(n+1)-1)`
-/

namespace A131149.P2287922048476207693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131154 n * A339564 (A077068 (n + 1) - 1).toNat

end

end A131149.P2287922048476207693

/-! ## A131149.P13742379970882957163

`A131154(n)%A152834(A131154(3*n+2))`
-/

namespace A131149.P13742379970882957163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131154 n) (A152834 (A131154 (3 * n + 2)).toNat)

end

end A131149.P13742379970882957163

/-! ## A131149.P5404386373136584760

`A131154(n)%A008864(A001400(n))`
-/

namespace A131149.P5404386373136584760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131154 n) (A008864 (A001400 n).toNat)

end

end A131149.P5404386373136584760

/-! ## A131149.P7802772088013505998

`A033676(A353136(n+1))*A131154(n)`
-/

namespace A131149.P7802772088013505998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A353136 (n + 1)).toNat * A131154 n

end

end A131149.P7802772088013505998

/-! ## A131149.P1301314895561376716

`and(A086827(n+1), A131154(n))`
-/

namespace A131149.P1301314895561376716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086827 (n + 1)) (A131154 n)

end

end A131149.P1301314895561376716

/-! ## A131149.P1227907830861522221

`A343221(A258774(n+1))+A131154(n)`
-/

namespace A131149.P1227907830861522221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343221 (A258774 (n + 1)).toNat + A131154 n

end

end A131149.P1227907830861522221

/-! ## A131149.P9510697061576700963

`A131154(n)+A000007(A046310(n+1))`
-/

namespace A131149.P9510697061576700963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131154 n + A000007 (A046310 (n + 1)).toNat

end

end A131149.P9510697061576700963

/-! ## A131149.P4358839467229858680

`A008480(A334026(n+1))*A131154(n)`
-/

namespace A131149.P4358839467229858680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A334026 (n + 1)).toNat * A131154 n

end

end A131149.P4358839467229858680

/-! ## A131149.P17027948638818190462

`A131154(n)+A000086(A131174(2*(n+2)))`
-/

namespace A131149.P17027948638818190462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131154 n + A000086 (A131174 (2 * (n + 2))).toNat

end

end A131149.P17027948638818190462

/-!
# A131150: Signature permutation of a Catalan automorphism: row 11 of A122286.

The programs for A131150, there is no canonical definition to state claims against.
-/

/-! ## A131150.P3298197863108294440

`A131153(n)%p?[n²+3]`
-/

namespace A131150.P3298197863108294440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131153 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A131150.P3298197863108294440

/-! ## A131150.P417266441887582595

`A131153(A119877(∑[n%2])%4+n)`
-/

namespace A131150.P417266441887582595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131153 (Int.tmod (A119877 (∑ j ∈ Finset.range (n + 1), f1 j)) 4 + (n : ℤ)).toNat

end

end A131150.P417266441887582595

/-! ## A131150.P4781307506530871042

`∑{d}[n+1, A131153(#-1)*A151878((n+1)/#-1)]`
-/

namespace A131150.P4781307506530871042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A131153 (d - 1) * A151878 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A131150.P4781307506530871042

/-! ## A131150.P5215171891362613601

`A131153(n)+A000007(A075117(n))`
-/

namespace A131150.P5215171891362613601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131153 n + A000007 (A075117 n).toNat

end

end A131150.P5215171891362613601

/-! ## A131150.P3668669235291569929

`A131153(n)+A000007(A125165(n))`
-/

namespace A131150.P3668669235291569929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131153 n + A000007 (A125165 n).toNat

end

end A131150.P3668669235291569929

/-! ## A131150.P10088140542541555345

`A091090(A143068(n))*A131153(n)`
-/

namespace A131150.P10088140542541555345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A143068 n).toNat * A131153 n

end

end A131150.P10088140542541555345

/-! ## A131150.P16236000336920309679

`gcd(A000217(A131153(n)²), A131153(n))`
-/

namespace A131150.P16236000336920309679
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (A131153 n ^ 2).toNat) (A131153 n)

end

end A131150.P16236000336920309679

/-! ## A131150.P12913126672805278225

`A131153(n)+A000007(A078311(n+1))`
-/

namespace A131150.P12913126672805278225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131153 n + A000007 (A078311 (n + 1)).toNat

end

end A131150.P12913126672805278225

/-! ## A131150.P6460612239233950340

`A131153(n)+A000007(A078312(n+1))`
-/

namespace A131150.P6460612239233950340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131153 n + A000007 (A078312 (n + 1)).toNat

end

end A131150.P6460612239233950340

/-! ## A131150.P5269139793506626146

`A000035(A014442(n+1))*A131153(n)`
-/

namespace A131150.P5269139793506626146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A014442 (n + 1)).toNat * A131153 n

end

end A131150.P5269139793506626146

/-! ## A131150.P7885270756885553276

`A131153(n)*A183534(A000124(A014200(n)))`
-/

namespace A131150.P7885270756885553276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131153 n * A183534 (A000124 (A014200 n).toNat).toNat

end

end A131150.P7885270756885553276

/-! ## A131150.P12995255845890407585

`A131153(n)%A002710(n)`
-/

namespace A131150.P12995255845890407585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131153 n) (A002710 n)

end

end A131150.P12995255845890407585

/-! ## A131150.P5844142614482799895

`A322175(A138091(n+1))+A131153(n)`
-/

namespace A131150.P5844142614482799895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322175 (A138091 (n + 1)).toNat + A131153 n

end

end A131150.P5844142614482799895

/-! ## A131150.P13397418459447432741

`lcm(A131153(n), A229217(A082725(n+1)))`
-/

namespace A131150.P13397418459447432741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A131153 n) (A229217 (A082725 (n + 1)).toNat)

end

end A131150.P13397418459447432741

/-! ## A131150.P12894149200851540720

`or(A010051(A324922(n+1)), A131153(n))`
-/

namespace A131150.P12894149200851540720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010051 (A324922 (n + 1)).toNat) (A131153 n)

end

end A131150.P12894149200851540720

/-! ## A131150.P18225460253522531198

`and(A086827(n+1), A131153(n))`
-/

namespace A131150.P18225460253522531198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086827 (n + 1)) (A131153 n)

end

end A131150.P18225460253522531198

/-! ## A131150.P20850708934463752

`A131153(lcm(n, A229217(n+2)))`
-/

namespace A131150.P20850708934463752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131153 (Int.lcm (n : ℤ) (A229217 (n + 2)))

end

end A131150.P20850708934463752

/-!
# A131151: Signature permutation of a Catalan automorphism: row 10 of A122285.

The programs for A131151, there is no canonical definition to state claims against.
-/

/-! ## A131151.P17615169489348464884

`A131152(A131152(A131152(n)))`
-/

namespace A131151.P17615169489348464884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131152 (A131152 (A131152 n).toNat).toNat

end

end A131151.P17615169489348464884

/-! ## A131151.P11554379162885199940

`or(A089856(n), A091453(A343088(n)))`
-/

namespace A131151.P11554379162885199940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A089856 n) (A091453 (A343088 n).toNat)

end

end A131151.P11554379162885199940

/-! ## A131151.P15174967832768252955

`A178798(A035363(n))+A130991(n)`
-/

namespace A131151.P15174967832768252955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A035363 n).toNat + A130991 n

end

end A131151.P15174967832768252955

/-!
# A131152: Signature permutation of a Catalan automorphism: row 10 of A122286.

The programs for A131152, there is no canonical definition to state claims against.
-/

/-! ## A131152.P12466910541083236504

`A131151(A131151(A131151(n)))`
-/

namespace A131152.P12466910541083236504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131151 (A131151 (A131151 n).toNat).toNat

end

end A131152.P12466910541083236504

/-!
# A131155: Signature permutation of a Catalan automorphism: row 13 of A122285.

The programs for A131155, there is no canonical definition to state claims against.
-/

/-! ## A131155.P2776132992486372058

`A122349(A131171(n)%A092004(n+1))`
-/

namespace A131155.P2776132992486372058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122349 (Int.tmod (A131171 n) (A092004 (n + 1))).toNat

end

end A131155.P2776132992486372058

/-! ## A131155.P8852751058201585961

`A010892(A262704(n))*A122349(A131171(n))`
-/

namespace A131155.P8852751058201585961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A262704 n).toNat * A122349 (A131171 n).toNat

end

end A131155.P8852751058201585961

/-! ## A131155.P10872691415073516665

`A122349(A131171(n))+A000007(A054500(n+1))`
-/

namespace A131155.P10872691415073516665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122349 (A131171 n).toNat + A000007 (A054500 (n + 1)).toNat

end

end A131155.P10872691415073516665

/-! ## A131155.P8249936182990590981

`A122349(lcm(A071625(2*n+3), A131171(n)))`
-/

namespace A131155.P8249936182990590981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122349 (Int.lcm (A071625 (2 * n + 3)) (A131171 n))

end

end A131155.P8249936182990590981

/-! ## A131155.P8669508518002014379

`A085174(n)-A212619(A032020(n))`
-/

namespace A131155.P8669508518002014379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085174 n - A212619 (A032020 n).toNat

end

end A131155.P8669508518002014379

/-!
# A131156: Signature permutation of a Catalan automorphism: row 18 of A122286.

The programs for A131156, there is no canonical definition to state claims against.
-/

/-! ## A131156.P3111299460181111521

`A131172(A073288(n)%A141214(n))`
-/

namespace A131156.P3111299460181111521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131172 (Int.tmod (A073288 n) (A141214 n)).toNat

end

end A131156.P3111299460181111521

/-! ## A131156.P16816237521635648314

`A131172(A073288(n))+A000007(A023545(n+1))`
-/

namespace A131156.P16816237521635648314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131172 (A073288 n).toNat + A000007 (A023545 (n + 1)).toNat

end

end A131156.P16816237521635648314

/-! ## A131156.P5902170211804489133

`A131172(A073288(n))^A034554(n+1)!`
-/

namespace A131156.P5902170211804489133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131172 (A073288 n).toNat ^ Nat.factorial (A034554 (n + 1)).toNat

end

end A131156.P5902170211804489133

/-! ## A131156.P15089956391240893533

`A131172(A073288(n))+A000038(A000931(n+5))`
-/

namespace A131156.P15089956391240893533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131172 (A073288 n).toNat + A000038 (A000931 (n + 5)).toNat

end

end A131156.P15089956391240893533

/-! ## A131156.P15294007612087660373

`A131172(A073288(n))/A020639(A034554(n+1)!)`
-/

namespace A131156.P15294007612087660373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131172 (A073288 n).toNat : ℚ) / (A020639 (Nat.factorial (A034554 (n + 1)).toNat) : ℚ)

end

end A131156.P15294007612087660373

/-!
# A131157: Signature permutation of a Catalan automorphism: row 14 of A122285.

The programs for A131157, there is no canonical definition to state claims against.
-/

/-! ## A131157.P5802814711729415087

`A130997(A122282(n)%p?[A122282(n)])`
-/

namespace A131157.P5802814711729415087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130997 (Int.tmod (A122282 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A131157.P5802814711729415087

/-! ## A131157.P7884886200066819391

`A186746(A162663(n))+A130957(A130947(n))`
-/

namespace A131157.P7884886200066819391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186746 (A162663 n).toNat + A130957 (A130947 n).toNat

end

end A131157.P7884886200066819391

/-! ## A131157.P9319312121184107160

`A073289(A122362(n*A278657(n)))`
-/

namespace A131157.P9319312121184107160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073289 (A122362 ((n : ℤ) * A278657 n).toNat).toNat

end

end A131157.P9319312121184107160

/-! ## A131157.P14973940094555757166

`A130957(A130947(n)%A299073(3*(n+1)))`
-/

namespace A131157.P14973940094555757166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130957 (Int.tmod (A130947 n) (A299073 (3 * (n + 1)))).toNat

end

end A131157.P14973940094555757166

/-! ## A131157.P9846641873040255068

`A130398(A130382(n))%A097598(3*n+1)`
-/

namespace A131157.P9846641873040255068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130398 (A130382 n).toNat) (A097598 (3 * n + 1))

end

end A131157.P9846641873040255068

/-!
# A131158: Signature permutation of a Catalan automorphism: row 19 of A122286.

The programs for A131158, there is no canonical definition to state claims against.
-/

/-! ## A131158.P12540108368900842690

`A130376(A130358(n))%A074698(n+1)`
-/

namespace A131158.P12540108368900842690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130376 (A130358 n).toNat) (A074698 (n + 1))

end

end A131158.P12540108368900842690

/-! ## A131158.P6782614265420720471

`A076526(A002496(n+1))*A130376(A122335(n))`
-/

namespace A131158.P6782614265420720471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076526 (A002496 (n + 1)).toNat * A130376 (A122335 n).toNat

end

end A131158.P6782614265420720471

/-! ## A131158.P8643737362310918776

`A130376(A130358(n)%A130336(n+1))`
-/

namespace A131158.P8643737362310918776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130376 (Int.tmod (A130358 n) (A130336 (n + 1))).toNat

end

end A131158.P8643737362310918776

/-! ## A131158.P4091947023212012651

`A127292(A209861(n)%A018889(n+1))`
-/

namespace A131158.P4091947023212012651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127292 (Int.tmod (A209861 n) (A018889 (n + 1))).toNat

end

end A131158.P4091947023212012651

/-! ## A131158.P2758412181510073055

`A120705(A249157(n+1))`
-/

namespace A131158.P2758412181510073055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120705 (A249157 (n + 1)).toNat

end

end A131158.P2758412181510073055

/-!
# A131159: Signature permutation of a Catalan automorphism: row 15 of A122285.

The programs for A131159, there is no canonical definition to state claims against.
-/

/-! ## A131159.P13030529965260053333

`A089863(A131160(A089863(n)))`
-/

namespace A131159.P13030529965260053333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089863 (A131160 (A089863 n).toNat).toNat

end

end A131159.P13030529965260053333

/-! ## A131159.P3426121698560567319

`A122302(A069767(A122354(n)))`
-/

namespace A131159.P3426121698560567319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122302 (A069767 (A122354 n).toNat).toNat

end

end A131159.P3426121698560567319

/-! ## A131159.P14473074945519350963

`A122350(A069768(A122350(n)))`
-/

namespace A131159.P14473074945519350963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122350 (A069768 (A122350 n).toNat).toNat

end

end A131159.P14473074945519350963

/-! ## A131159.P8976914132581861488

`A154453(A122327(A069767(A069767(n))))`
-/

namespace A131159.P8976914132581861488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154453 (A122327 (A069767 (A069767 n).toNat).toNat).toNat

end

end A131159.P8976914132581861488

/-! ## A131159.P6145656153442998428

`A074683(A122357(A069768(A074683(A122357(n)))))`
-/

namespace A131159.P6145656153442998428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074683 (A122357 (A069768 (A074683 (A122357 n).toNat).toNat).toNat).toNat

end

end A131159.P6145656153442998428

/-!
# A131160: Signature permutation of a Catalan automorphism: row 21 of A122286.

The programs for A131160, there is no canonical definition to state claims against.
-/

/-! ## A131160.P8565196926938493117

`A069768(A069768(A122328(A154454(n))))`
-/

namespace A131160.P8565196926938493117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A069768 (A122328 (A154454 n).toNat).toNat).toNat

end

end A131160.P8565196926938493117

/-! ## A131160.P4050927480139616685

`A089859(A131159(A089859(n)))`
-/

namespace A131160.P4050927480139616685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089859 (A131159 (A089859 n).toNat).toNat

end

end A131160.P4050927480139616685

/-! ## A131160.P5396862835276270848

`A122349(A069767(A122349(n)))`
-/

namespace A131160.P5396862835276270848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122349 (A069767 (A122349 n).toNat).toNat

end

end A131160.P5396862835276270848

/-! ## A131160.P12006167226946987475

`A122349(A122311(A154454(A069770(n))))`
-/

namespace A131160.P12006167226946987475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122349 (A122311 (A154454 (A069770 n).toNat).toNat).toNat

end

end A131160.P12006167226946987475

/-! ## A131160.P15201402478567157678

`A057163(A122341(A069768(A122341(A057163(n)))))`
-/

namespace A131160.P15201402478567157678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A122341 (A069768 (A122341 (A057163 n).toNat).toNat).toNat).toNat

end

end A131160.P15201402478567157678

/-! ## A131160.P2580826163129635779

`A122358(A074684(A069767(A122358(A074684(n)))))`
-/

namespace A131160.P2580826163129635779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122358 (A074684 (A069767 (A122358 (A074684 n).toNat).toNat).toNat).toNat

end

end A131160.P2580826163129635779

/-! ## A131160.P3210936436774154148

`A122349(A082346(n))*A326815(A019565(n))`
-/

namespace A131160.P3210936436774154148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122349 (A082346 n).toNat * A326815 (A019565 n).toNat

end

end A131160.P3210936436774154148

/-! ## A131160.P3965722288772298366

`A122349(A082346(n))*A318809(A327564(n+1))`
-/

namespace A131160.P3965722288772298366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122349 (A082346 n).toNat * A318809 (A327564 (n + 1)).toNat

end

end A131160.P3965722288772298366

/-!
# A131161: Signature permutation of a Catalan automorphism: row 16 of A122285.

The programs for A131161, there is no canonical definition to state claims against.
-/

/-! ## A131161.P10394615393571596308

`A131001(A073288(n))%A052007(n+1)`
-/

namespace A131161.P10394615393571596308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131001 (A073288 n).toNat) (A052007 (n + 1))

end

end A131161.P10394615393571596308

/-! ## A131161.P11982209080486333886

`A131001(A122282(n))%A052007(n+1)`
-/

namespace A131161.P11982209080486333886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131001 (A122282 n).toNat) (A052007 (n + 1))

end

end A131161.P11982209080486333886

/-! ## A131161.P12326974831158838129

`A131001(A122282(n))%A000203(A033960(n))`
-/

namespace A131161.P12326974831158838129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131001 (A122282 n).toNat) (A000203 (A033960 n).toNat)

end

end A131161.P12326974831158838129

/-! ## A131161.P2741557248132686575

`A131168(n)%A247153(n+1)`
-/

namespace A131161.P2741557248132686575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131168 n) (A247153 (n + 1))

end

end A131161.P2741557248132686575

/-! ## A131161.P230237072515327393

`A131168(n)+A000007(A131130(n))`
-/

namespace A131161.P230237072515327393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131168 n + A000007 (A131130 n).toNat

end

end A131161.P230237072515327393

/-!
# A131162: Signature permutation of a Catalan automorphism: row 20 of A122286.

The programs for A131162, there is no canonical definition to state claims against.
-/

/-! ## A131162.P11875238904293681785

`A089850(A008835(n+1)*A057505(n))`
-/

namespace A131162.P11875238904293681785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089850 (A008835 (n + 1) * A057505 n).toNat

end

end A131162.P11875238904293681785

/-! ## A131162.P2947493882946561170

`A089850(A008835(n+1)*A122337(n))`
-/

namespace A131162.P2947493882946561170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089850 (A008835 (n + 1) * A122337 n).toNat

end

end A131162.P2947493882946561170

/-! ## A131162.P2292375057512490212

`A089850(A008835(n+1)*A130362(n))`
-/

namespace A131162.P2292375057512490212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089850 (A008835 (n + 1) * A130362 n).toNat

end

end A131162.P2292375057512490212

/-! ## A131162.P15964386122154972878

`A089850(A131163(n)%A350441(n+1))`
-/

namespace A131162.P15964386122154972878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089850 (Int.tmod (A131163 n) (A350441 (n + 1))).toNat

end

end A131162.P15964386122154972878

/-! ## A131162.P17642953609923489355

`A131167(A057889(n))%A029988(3*n+4)`
-/

namespace A131162.P17642953609923489355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131167 (A057889 n).toNat) (A029988 (3 * n + 4))

end

end A131162.P17642953609923489355

/-!
# A131163: Signature permutation of a Catalan automorphism: row 18 of A122285.

The programs for A131163, there is no canonical definition to state claims against.
-/

/-! ## A131163.P7356622198861404966

`A057503(A073288(n))`
-/

namespace A131163.P7356622198861404966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057503 (A073288 n).toNat

end

end A131163.P7356622198861404966

/-! ## A131163.P9753728939821376455

`A295659(p?[round(8*n/7)]²)+A131003(A085170(n))`
-/

namespace A131163.P9753728939821376455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295659 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat + A131003 (A085170 n).toNat

end

end A131163.P9753728939821376455

/-! ## A131163.P14848118557128063678

`A295883(p?[round(8*n/7)]²)+A131003(A085170(n))`
-/

namespace A131163.P14848118557128063678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295883 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat + A131003 (A085170 n).toNat

end

end A131163.P14848118557128063678

/-! ## A131163.P13570847421855317141

`A131003(A085170(n))+A010816(A129865(n+1))`
-/

namespace A131163.P13570847421855317141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131003 (A085170 n).toNat + A010816 (A129865 (n + 1)).toNat

end

end A131163.P13570847421855317141

/-! ## A131163.P14775299394694499462

`A171157(A065119(n+1))+A131003(A085170(n))`
-/

namespace A131163.P14775299394694499462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171157 (A065119 (n + 1)).toNat + A131003 (A085170 n).toNat

end

end A131163.P14775299394694499462

/-!
# A131164: Signature permutation of a Catalan automorphism: row 13 of A122286.

The programs for A131164, there is no canonical definition to state claims against.
-/

/-! ## A131164.P12435979688249361909

`A073289(A057504(n))`
-/

namespace A131164.P12435979688249361909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073289 (A057504 n).toNat

end

end A131164.P12435979688249361909

/-! ## A131164.P15693513607358910250

`A122349(A057504(n))%A114872(n+1)`
-/

namespace A131164.P15693513607358910250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122349 (A057504 n).toNat) (A114872 (n + 1))

end

end A131164.P15693513607358910250

/-! ## A131164.P8889816131303943715

`A122349(A057504(n)%A214837(n+1))`
-/

namespace A131164.P8889816131303943715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122349 (Int.tmod (A057504 n) (A214837 (n + 1))).toNat

end

end A131164.P8889816131303943715

/-! ## A131164.P2137731999073651119

`A001221(A052353(n+2))*A122349(A057504(n))`
-/

namespace A131164.P2137731999073651119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A052353 (n + 2)).toNat * A122349 (A057504 n).toNat

end

end A131164.P2137731999073651119

/-! ## A131164.P2233312024650652943

`A122349(A057504(n))+A000007(A243980(n+1))`
-/

namespace A131164.P2233312024650652943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122349 (A057504 n).toNat + A000007 (A243980 (n + 1)).toNat

end

end A131164.P2233312024650652943

/-! ## A131164.P3842540402508177916

`A122349(A057504(n))*A294892(A109412(n+1))`
-/

namespace A131164.P3842540402508177916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122349 (A057504 n).toNat * A294892 (A109412 (n + 1)).toNat

end

end A131164.P3842540402508177916

/-! ## A131164.P7545422671350168986

`A122349(A057504(n))*A294892(A109416(n+1))`
-/

namespace A131164.P7545422671350168986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122349 (A057504 n).toNat * A294892 (A109416 (n + 1)).toNat

end

end A131164.P7545422671350168986

/-! ## A131164.P16131692301420478922

`A122349(A057504(n))*A294892(A109418(n+1))`
-/

namespace A131164.P16131692301420478922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122349 (A057504 n).toNat * A294892 (A109418 (n + 1)).toNat

end

end A131164.P16131692301420478922

/-!
# A131165: Signature permutation of a Catalan automorphism: row 19 of A122285.

The programs for A131165, there is no canonical definition to state claims against.
-/

/-! ## A131165.P16591030895430328040

`A130381(A069768(n)%A123694(n+2))`
-/

namespace A131165.P16591030895430328040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130381 (Int.tmod (A069768 n) (A123694 (n + 2))).toNat

end

end A131165.P16591030895430328040

/-! ## A131165.P16089319903323151382

`A130381(A069768(n))%A131194(n+1)`
-/

namespace A131165.P16089319903323151382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130381 (A069768 n).toNat) (A131194 (n + 1))

end

end A131165.P16089319903323151382

/-! ## A131165.P829243535296419495

`A122343(A069768(n))+A000038(A294585(n))`
-/

namespace A131165.P829243535296419495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122343 (A069768 n).toNat + A000038 (A294585 n).toNat

end

end A131165.P829243535296419495

/-! ## A131165.P3822824372081831770

`A001222(A325087(n+1))*A122343(A069768(n))`
-/

namespace A131165.P3822824372081831770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A325087 (n + 1)).toNat * A122343 (A069768 n).toNat

end

end A131165.P3822824372081831770

/-!
# A131166: Signature permutation of a Catalan automorphism: row 14 of A122286.

The programs for A131166, there is no canonical definition to state claims against.
-/

/-! ## A131166.P1190475819287830185

`A069767(A130382(n))%∑[A294696(n)]`
-/

namespace A131166.P1190475819287830185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294696 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069767 (A130382 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A131166.P1190475819287830185

/-! ## A131166.P13949324770561967900

`A069767(A130382(n)%A137723(n+1))`
-/

namespace A131166.P13949324770561967900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (Int.tmod (A130382 n) (A137723 (n + 1))).toNat

end

end A131166.P13949324770561967900

/-! ## A131166.P9159162381221486822

`A069767(A130947(n)%A233311(n+1))`
-/

namespace A131166.P9159162381221486822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (Int.tmod (A130947 n) (A233311 (n + 1))).toNat

end

end A131166.P9159162381221486822

/-! ## A131166.P1050368563518027028

`A173453(A007318(n))+A069767(A130382(n))`
-/

namespace A131166.P1050368563518027028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173453 (A007318 n).toNat + A069767 (A130382 n).toNat

end

end A131166.P1050368563518027028

/-! ## A131166.P17265867832938316699

`A069767(A130382(n))+A000038(A000041(n+2))`
-/

namespace A131166.P17265867832938316699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (A130382 n).toNat + A000038 (A000041 (n + 2)).toNat

end

end A131166.P17265867832938316699

/-!
# A131167: Signature permutation of a Catalan automorphism: row 20 of A122285.

The programs for A131167, there is no canonical definition to state claims against.
-/

/-! ## A131167.P1476725553994482125

`A003417(Δ[n^3])*A130383(A069768(n))`
-/

namespace A131167.P1476725553994482125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003417 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A130383 (A069768 n).toNat

end

end A131167.P1476725553994482125

/-! ## A131167.P17346570664777321077

`A130383(A069768(n))+C(n+1, A377178(n+5))`
-/

namespace A131167.P17346570664777321077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130383 (A069768 n).toNat + (Nat.choose (n + 1) (A377178 (n + 5)).toNat : ℤ)

end

end A131167.P17346570664777321077

/-! ## A131167.P16474455204264645710

`A130383(A069768(n))+A000007(A168249(n+1))`
-/

namespace A131167.P16474455204264645710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130383 (A069768 n).toNat + A000007 (A168249 (n + 1)).toNat

end

end A131167.P16474455204264645710

/-! ## A131167.P10183410727602475163

`A130383(A069768(n))+A010051(A168249(n+1)²)`
-/

namespace A131167.P10183410727602475163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130383 (A069768 n).toNat + A010051 (A168249 (n + 1) ^ 2).toNat

end

end A131167.P10183410727602475163

/-! ## A131167.P11387569502861767189

`A130383(A069768(n))+A005369(A121500(n+3)²)`
-/

namespace A131167.P11387569502861767189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130383 (A069768 n).toNat + A005369 (A121500 (n + 3) ^ 2).toNat

end

end A131167.P11387569502861767189

/-! ## A131167.P2738061025621967976

`A130383(A069768(n))+A095164(n+1)%(n+1)`
-/

namespace A131167.P2738061025621967976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130383 (A069768 n).toNat + Int.tmod (A095164 (n + 1)) (n + 1 : ℤ)

end

end A131167.P2738061025621967976

/-! ## A131167.P4286732342284157309

`A130383(A069768(n))+A055671(A067725(n))`
-/

namespace A131167.P4286732342284157309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130383 (A069768 n).toNat + A055671 (A067725 n).toNat

end

end A131167.P4286732342284157309

/-! ## A131167.P5453732581604446195

`A130383(A069768(n))*A294894(A083520(n+1))`
-/

namespace A131167.P5453732581604446195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130383 (A069768 n).toNat * A294894 (A083520 (n + 1)).toNat

end

end A131167.P5453732581604446195

/-!
# A131168: Signature permutation of a Catalan automorphism: row 16 of A122286.

The programs for A131168, there is no canonical definition to state claims against.
-/

/-! ## A131168.P13066906094837558668

`A069767(A130384(n)%A205596(n))`
-/

namespace A131168.P13066906094837558668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (Int.tmod (A130384 n) (A205596 n)).toNat

end

end A131168.P13066906094837558668

/-! ## A131168.P10988162235756394051

`A069767(A130384(n)^A239700(3*n+1))`
-/

namespace A131168.P10988162235756394051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (SequenceMachineLib.roundAway ((A130384 n : ℚ) ^ (A239700 (3 * n + 1) : ℤ))).toNat

end

end A131168.P10988162235756394051

/-! ## A131168.P10343953125318740984

`A069767(A130949(n))%A324705(2*(n+2))`
-/

namespace A131168.P10343953125318740984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069767 (A130949 n).toNat) (A324705 (2 * (n + 2)))

end

end A131168.P10343953125318740984

/-! ## A131168.P1893964746633493348

`A069767(A130384(n))%A106429(n+1)`
-/

namespace A131168.P1893964746633493348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069767 (A130384 n).toNat) (A106429 (n + 1))

end

end A131168.P1893964746633493348

/-! ## A131168.P18022299003182297722

`A131001(A130986(n)%A130972(3*n+2))`
-/

namespace A131168.P18022299003182297722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131001 (Int.tmod (A130986 n) (A130972 (3 * n + 2))).toNat

end

end A131168.P18022299003182297722

/-!
# A131169: Signature permutation of a Catalan automorphism: row 8 of A122285.

The programs for A131169, there is no canonical definition to state claims against.
-/

/-! ## A131169.P306028066995430112

`A131170(A131170(A131170(n)))`
-/

namespace A131169.P306028066995430112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131170 (A131170 (A131170 n).toNat).toNat

end

end A131169.P306028066995430112

/-! ## A131169.P5408912438708721848

`A268384(A191455(2*n+5))+A072797(n)`
-/

namespace A131169.P5408912438708721848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268384 (A191455 (2 * n + 5)).toNat + A072797 n

end

end A131169.P5408912438708721848

/-!
# A131171: Signature permutation of a Catalan automorphism: row 12 of A122285.

The programs for A131171, there is no canonical definition to state claims against.
-/

/-! ## A131171.P8630099889127403083

`A073288(A131155(n))+A073059(A302573(n+1))`
-/

namespace A131171.P8630099889127403083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073288 (A131155 n).toNat + A073059 (A302573 (n + 1)).toNat

end

end A131171.P8630099889127403083

/-! ## A131171.P11927316968160429889

`A073288(A131155(n)%A092004(n+1))`
-/

namespace A131171.P11927316968160429889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073288 (Int.tmod (A131155 n) (A092004 (n + 1))).toNat

end

end A131171.P11927316968160429889

/-! ## A131171.P9809064265104899795

`A073288(A131155(n))+A000035(A177723(n+1))`
-/

namespace A131171.P9809064265104899795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073288 (A131155 n).toNat + A000035 (A177723 (n + 1)).toNat

end

end A131171.P9809064265104899795

/-! ## A131171.P6225650436787101919

`A082355(A082347(n)%A271658(3*n+1))`
-/

namespace A131171.P6225650436787101919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082355 (Int.tmod (A082347 n) (A271658 (3 * n + 1))).toNat

end

end A131171.P6225650436787101919

/-! ## A131171.P8669663394710577532

`A074683(n)-A112765(A226234(n))`
-/

namespace A131171.P8669663394710577532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074683 n - A112765 (A226234 n).toNat

end

end A131171.P8669663394710577532

/-!
# A131172: Signature permutation of a Catalan automorphism: row 17 of A122286.

The programs for A131172, there is no canonical definition to state claims against.
-/

/-! ## A131172.P8691645203268387357

`A130372(A057501(n)%A141214(n))`
-/

namespace A131172.P8691645203268387357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130372 (Int.tmod (A057501 n) (A141214 n)).toNat

end

end A131172.P8691645203268387357

/-! ## A131172.P17988926614999461431

`A057501(A130376(n)%A141214(n))`
-/

namespace A131172.P17988926614999461431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (Int.tmod (A130376 n) (A141214 n)).toNat

end

end A131172.P17988926614999461431

/-! ## A131172.P5483057022184847342

`A057501(A130376(n))%A141064(n+5)`
-/

namespace A131172.P5483057022184847342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057501 (A130376 n).toNat) (A141064 (n + 5))

end

end A131172.P5483057022184847342

/-! ## A131172.P12002405376530215432

`A130372(A057501(n)+A000038(n)*A309751(n))`
-/

namespace A131172.P12002405376530215432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130372 (A057501 n + A000038 n * A309751 n).toNat

end

end A131172.P12002405376530215432

/-! ## A131172.P11299023988319880175

`A154121(A131007(n)%A340018(3*n+1))`
-/

namespace A131172.P11299023988319880175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154121 (Int.tmod (A131007 n) (A340018 (3 * n + 1))).toNat

end

end A131172.P11299023988319880175

/-!
# A131173: Signature permutation of a self-inverse Catalan automorphism: row 7 of A122285 and A122286.

The programs for A131173, there is no canonical definition to state claims against.
-/

/-! ## A131173.P8542006724954695635

`A089859(A154453(A089859(n)))`
-/

namespace A131173.P8542006724954695635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089859 (A154453 (A089859 n).toNat).toNat

end

end A131173.P8542006724954695635

/-! ## A131173.P14014243184601579581

`A089863(A154454(A089863(n)))`
-/

namespace A131173.P14014243184601579581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089863 (A154454 (A089863 n).toNat).toNat

end

end A131173.P14014243184601579581

/-! ## A131173.P6972932182490527031

`A089854(A069770(A089854(A154454(A069770(n)))))`
-/

namespace A131173.P6972932182490527031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089854 (A069770 (A089854 (A154454 (A069770 n).toNat).toNat).toNat).toNat

end

end A131173.P6972932182490527031

/-! ## A131173.P12679760694523917263

`A089863(A122354(A154450(A089863(A122353(n)))))`
-/

namespace A131173.P12679760694523917263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089863 (A122354 (A154450 (A089863 (A122353 n).toNat).toNat).toNat).toNat

end

end A131173.P12679760694523917263

/-! ## A131173.P2958553430569666243

`A089859(A122353(A154450(A089859(A122354(n)))))`
-/

namespace A131173.P2958553430569666243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089859 (A122353 (A154450 (A089859 (A122354 n).toNat).toNat).toNat).toNat

end

end A131173.P2958553430569666243

/-! ## A131173.P15407882081772868146

`A154451(A154453(A089854(A154452(A089854(n)))))`
-/

namespace A131173.P15407882081772868146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154451 (A154453 (A089854 (A154452 (A089854 n).toNat).toNat).toNat).toNat

end

end A131173.P15407882081772868146

/-!
# A131174: a(2n) = 2*A000217(n), a(2n+1) = A000217(n).

The programs for A131174, the canonical program `A131174.P14078045204958418676` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131174 has offset 0).

The definition of A131174 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131174.P14078045204958418676

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=1, a(4)=6, a(5)=3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A131174

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P14078045204958418676.Spec : Prop :=
  ∀ n, P14078045204958418676.a n = A131174 n

theorem P14078045204958418676.correct : P14078045204958418676.Spec := by
  intro n
  simp only [A131174]

end A131174

/-! ## A131174.P9624859504585243707

`∑[floor(Δ[lcm(n, n+2)/4])]`
-/

namespace A131174.P9624859504585243707
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n (n + 2) : ℚ) / 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f2 (n + 1) - f2 n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131174.P9624859504585243707

namespace A131174

/-- `∑[floor(Δ[lcm(n, n+2)/4])]` -/
def P9624859504585243707.Spec : Prop :=
  ∀ n, P9624859504585243707.a n = A131174 n

end A131174

/-! ## A131174.P2317945298426590156

`floor((lcm(n+1, n+3)-2*n)/4)`
-/

namespace A131174.P2317945298426590156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.lcm (n + 1) (n + 3) : ℤ) - (2 * n : ℤ) : ℚ) / 4⌋

end

end A131174.P2317945298426590156

namespace A131174

/-- `floor((lcm(n+1, n+3)-2*n)/4)` -/
def P2317945298426590156.Spec : Prop :=
  ∀ n, P2317945298426590156.a n = A131174 n

end A131174

/-! ## A131174.P8341002036328485366

`∑[n*(n+1)%2]/gcd(2, n+1)`
-/

namespace A131174.P8341002036328485366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((n + 1) % 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)

end

end A131174.P8341002036328485366

namespace A131174

/-- `∑[n*(n+1)%2]/gcd(2, n+1)` -/
def P8341002036328485366.Spec : Prop :=
  ∀ n, P8341002036328485366.a n = (A131174 n : ℚ)

end A131174

/-! ## A131174.P16259815513429019483

`a(n-2)+(∑[n]-1)%(n+1)` with `a(0)=0, a(1)=0`
-/

namespace A131174.P16259815513429019483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) + Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) (n + 1 : ℤ)

end

end A131174.P16259815513429019483

namespace A131174

/-- `a(n-2)+(∑[n]-1)%(n+1)` -/
def P16259815513429019483.Spec : Prop :=
  ∀ n, P16259815513429019483.a n = A131174 n

end A131174

/-! ## A131174.P15790591642961259709

`(char[2*n]+1)*∑[n/2*char[2*n]]`
-/

namespace A131174.P15790591642961259709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℚ)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A131174.P15790591642961259709

namespace A131174

/-- `(char[2*n]+1)*∑[n/2*char[2*n]]` -/
def P15790591642961259709.Spec : Prop :=
  ∀ n, P15790591642961259709.a n = (A131174 n : ℚ)

end A131174

/-! ## A131174.P12962185313519958794

`∑[∑[∑[n*(-1)^n]]+n]-a(n-1)` with `a(0)=0`
-/

namespace A131174.P12962185313519958794
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A131174.P12962185313519958794

namespace A131174

/-- `∑[∑[∑[n*(-1)^n]]+n]-a(n-1)` -/
def P12962185313519958794.Spec : Prop :=
  ∀ n, P12962185313519958794.a n = A131174 n

end A131174

/-! ## A131174.P2152852577345174002

`∑[A131119(n)]`
-/

namespace A131174.P2152852577345174002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131119 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131174.P2152852577345174002

namespace A131174

/-- `∑[A131119(n)]` -/
def P2152852577345174002.Spec : Prop :=
  ∀ n, P2152852577345174002.a n = A131174 n

end A131174

/-! ## A131174.P891089348030319729

`A144065(n)-(a(n-1)+n)` with `a(0)=0`
-/

namespace A131174.P891089348030319729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A144065 n - (a (n - 1) + (n : ℤ))

end

end A131174.P891089348030319729

namespace A131174

/-- `A144065(n)-(a(n-1)+n)` -/
def P891089348030319729.Spec : Prop :=
  ∀ n, P891089348030319729.a n = A131174 n

end A131174

/-! ## A131174.P9937171753854428789

`A142150(n)+A123596(n)`
-/

namespace A131174.P9937171753854428789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n + A123596 n

end

end A131174.P9937171753854428789

namespace A131174

/-- `A142150(n)+A123596(n)` -/
def P9937171753854428789.Spec : Prop :=
  ∀ n, P9937171753854428789.a n = A131174 n

end A131174

/-! ## A131174.P14903110071449868366

`A110660(n)/A000034(n)`
-/

namespace A131174.P14903110071449868366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110660 n : ℚ) / (A000034 n : ℚ)

end

end A131174.P14903110071449868366

namespace A131174

/-- `A110660(n)/A000034(n)` -/
def P14903110071449868366.Spec : Prop :=
  ∀ n, P14903110071449868366.a n = (A131174 n : ℚ)

end A131174

/-! ## A131174.P3494891782317910698

`A110660(n)/A084642(n)`
-/

namespace A131174.P3494891782317910698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110660 n : ℚ) / (A084642 n : ℚ)

end

end A131174.P3494891782317910698

namespace A131174

/-- `A110660(n)/A084642(n)` -/
def P3494891782317910698.Spec : Prop :=
  ∀ n, P3494891782317910698.a n = (A131174 n : ℚ)

end A131174

/-! ## A131174.P2907315652014437739

`A212714(n)%A271391(n)`
-/

namespace A131174.P2907315652014437739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212714 n) (A271391 n)

end

end A131174.P2907315652014437739

namespace A131174

/-- `A212714(n)%A271391(n)` -/
def P2907315652014437739.Spec : Prop :=
  ∀ n, P2907315652014437739.a n = A131174 n

end A131174

/-! ## A131174.P6508577757113536796

`gcd(A110660(n), A204185(n))`
-/

namespace A131174.P6508577757113536796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A110660 n) (A204185 n)

end

end A131174.P6508577757113536796

namespace A131174

/-- `gcd(A110660(n), A204185(n))` -/
def P6508577757113536796.Spec : Prop :=
  ∀ n, (P6508577757113536796.a n : ℤ) = A131174 n

end A131174

/-! ## A131174.P3848195491116236472

`A110660(n)/(A000035(n)+1)`
-/

namespace A131174.P3848195491116236472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110660 n : ℚ) / (A000035 n + 1 : ℚ)

end

end A131174.P3848195491116236472

namespace A131174

/-- `A110660(n)/(A000035(n)+1)` -/
def P3848195491116236472.Spec : Prop :=
  ∀ n, P3848195491116236472.a n = (A131174 n : ℚ)

end A131174

/-! ## A131174.P7715831921741162956

`A110660(n)/A040001(n+1)`
-/

namespace A131174.P7715831921741162956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110660 n : ℚ) / (A040001 (n + 1) : ℚ)

end

end A131174.P7715831921741162956

namespace A131174

/-- `A110660(n)/A040001(n+1)` -/
def P7715831921741162956.Spec : Prop :=
  ∀ n, P7715831921741162956.a n = (A131174 n : ℚ)

end A131174

/-! ## A131174.P12058647341343883210

`A110660(n)/(A010702(n)-2)`
-/

namespace A131174.P12058647341343883210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110660 n : ℚ) / (A010702 n - 2 : ℚ)

end

end A131174.P12058647341343883210

namespace A131174

/-- `A110660(n)/(A010702(n)-2)` -/
def P12058647341343883210.Spec : Prop :=
  ∀ n, P12058647341343883210.a n = (A131174 n : ℚ)

end A131174

/-! ## A131174.P721878766144613424

`A110660(n)/(2-A266591(n))`
-/

namespace A131174.P721878766144613424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110660 n : ℚ) / (2 - A266591 n : ℚ)

end

end A131174.P721878766144613424

namespace A131174

/-- `A110660(n)/(2-A266591(n))` -/
def P721878766144613424.Spec : Prop :=
  ∀ n, P721878766144613424.a n = (A131174 n : ℚ)

end A131174

/-! ## A131174.P5004763043295378169

`A212765(n)%A363267(n+1)`
-/

namespace A131174.P5004763043295378169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212765 n) (A363267 (n + 1))

end

end A131174.P5004763043295378169

namespace A131174

/-- `A212765(n)%A363267(n+1)` -/
def P5004763043295378169.Spec : Prop :=
  ∀ n, P5004763043295378169.a n = A131174 n

end A131174

/-! ## A131174.P11863810626384648978

`A123596(n)+n-A026741(n)`
-/

namespace A131174.P11863810626384648978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123596 n + ((n : ℤ) - A026741 n)

end

end A131174.P11863810626384648978

namespace A131174

/-- `A123596(n)+n-A026741(n)` -/
def P11863810626384648978.Spec : Prop :=
  ∀ n, P11863810626384648978.a n = A131174 n

end A131174

/-!
# A131176: a(n) = (n^5-n-10)/10.

The programs for A131176, the canonical program `A131176.P6909135640006059190` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131176 has offset 0).

The definition of A131176 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131176.P6909135640006059190

`(n^5-n)/10-1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A131176

/-- `(n^5-n)/10-1` -/
def P6909135640006059190.Spec : Prop :=
  ∀ n, P6909135640006059190.a n = (A131176 n : ℚ)

end A131176

/-! ## A131176.P2109409938438579206

`(A134327(n)-1)/2`
-/

namespace A131176.P2109409938438579206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134327 n - 1 : ℚ) / 2

end

end A131176.P2109409938438579206

namespace A131176

/-- `(A134327(n)-1)/2` -/
def P2109409938438579206.Spec : Prop :=
  ∀ n, P2109409938438579206.a n = (A131176 n : ℚ)

end A131176

/-! ## A131176.P6182133519755959743

`(A061167(n)-10)/10`
-/

namespace A131176.P6182133519755959743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061167 n - 10 : ℚ) / 10

end

end A131176.P6182133519755959743

namespace A131176

/-- `(A061167(n)-10)/10` -/
def P6182133519755959743.Spec : Prop :=
  ∀ n, P6182133519755959743.a n = (A131176 n : ℚ)

end A131176

/-! ## A131176.P8074919586070800472

`(A208536(n+1)-2)/2`
-/

namespace A131176.P8074919586070800472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208536 (n + 1) - 2 : ℚ) / 2

end

end A131176.P8074919586070800472

namespace A131176

/-- `(A208536(n+1)-2)/2` -/
def P8074919586070800472.Spec : Prop :=
  ∀ n, P8074919586070800472.a n = (A131176 n : ℚ)

end A131176

/-! ## A131176.P3350443725844822966

`(A054620(n)-(n+2))/2`
-/

namespace A131176.P3350443725844822966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054620 n - (n + 2 : ℤ) : ℚ) / 2

end

end A131176.P3350443725844822966

namespace A131176

/-- `(A054620(n)-(n+2))/2` -/
def P3350443725844822966.Spec : Prop :=
  ∀ n, P3350443725844822966.a n = (A131176 n : ℚ)

end A131176

/-! ## A131176.P4844715602659346526

`floor((∑[A046092(n²-n)]-1)/4)`
-/

namespace A131176.P4844715602659346526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 (n ^ 2 - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 4⌋

end

end A131176.P4844715602659346526

namespace A131176

/-- `floor((∑[A046092(n²-n)]-1)/4)` -/
def P4844715602659346526.Spec : Prop :=
  ∀ n, P4844715602659346526.a n = A131176 n

end A131176

/-!
# A131178: Non-plane increasing unary binary (0-1-2) trees where the nodes of outdegree 1 come in 2 colors.

The programs for A131178, there is no canonical definition to state claims against.
-/

/-! ## A131178.P17514618883030018063

`A080795(n+1)/2^n`
-/

namespace A131178.P17514618883030018063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080795 (n + 1) : ℚ) / (2 ^ n : ℚ)

end

end A131178.P17514618883030018063

/-! ## A131178.P3992385933089012978

`record[A185420(n+1)]/2^n`
-/

namespace A131178.P3992385933089012978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185420 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (2 ^ n : ℚ)

end

end A131178.P3992385933089012978

/-! ## A131178.P9428458363965341404

`A185420(A000124(n))/2^n`
-/

namespace A131178.P9428458363965341404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185420 (A000124 n).toNat : ℚ) / (2 ^ n : ℚ)

end

end A131178.P9428458363965341404

/-! ## A131178.P17218084497174520163

`record[A185420(n+1)/A036561(n)]`
-/

namespace A131178.P17218084497174520163
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185420 (n + 1) : ℚ) / (A036561 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131178.P17218084497174520163

/-! ## A131178.P1671292510027325099

`record[A185420(n+1)/A038207(n)]`
-/

namespace A131178.P1671292510027325099
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185420 (n + 1) : ℚ) / (A038207 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131178.P1671292510027325099

/-!
# A131179: a(n) = if n mod 2 == 0 then n*(n+1)/2, otherwise (n-1)*n/2 + 1.

The programs for A131179, the canonical program `A131179.P10692314329594943414` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131179 has offset 0).

The definition of A131179 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131179.P10692314329594943414

`(n²+1+(n-1)*(-1)^n)/2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A131179

/-- `(n²+1+(n-1)*(-1)^n)/2` -/
def P10692314329594943414.Spec : Prop :=
  ∀ n, P10692314329594943414.a n = (A131179 n : ℚ)

end A131179

/-! ## A131179.P10805270521097745908

`C(and(n, -2), 2)+n`
-/

namespace A131179.P10805270521097745908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.land (n : ℤ) (-2)).toNat 2 + n

end

end A131179.P10805270521097745908

namespace A131179

/-- `C(and(n, -2), 2)+n` -/
def P10805270521097745908.Spec : Prop :=
  ∀ n, (P10805270521097745908.a n : ℤ) = A131179 n

end A131179

/-! ## A131179.P331084575604792117

`C(or(1, n)-1, 2)+n`
-/

namespace A131179.P331084575604792117
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((Nat.lor 1 n : ℤ) - 1).toNat 2 + n

end

end A131179.P331084575604792117

namespace A131179

/-- `C(or(1, n)-1, 2)+n` -/
def P331084575604792117.Spec : Prop :=
  ∀ n, (P331084575604792117.a n : ℤ) = A131179 n

end A131179

/-! ## A131179.P12407241186218411667

`C(or(1, n), 2)+n%2`
-/

namespace A131179.P12407241186218411667
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 n) 2 + n % 2

end

end A131179.P12407241186218411667

namespace A131179

/-- `C(or(1, n), 2)+n%2` -/
def P12407241186218411667.Spec : Prop :=
  ∀ n, (P12407241186218411667.a n : ℤ) = A131179 n

end A131179

/-! ## A131179.P10931794696387404489

`∑[xor(1, n+1)]-lcm(2, n)`
-/

namespace A131179.P10931794696387404489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.lcm 2 n : ℤ)

end

end A131179.P10931794696387404489

namespace A131179

/-- `∑[xor(1, n+1)]-lcm(2, n)` -/
def P10931794696387404489.Spec : Prop :=
  ∀ n, P10931794696387404489.a n = A131179 n

end A131179

/-! ## A131179.P16112932149426367085

`∑[n]-(n-1)*and(1, n)`
-/

namespace A131179.P16112932149426367085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 1) * (Nat.land 1 n : ℤ)

end

end A131179.P16112932149426367085

namespace A131179

/-- `∑[n]-(n-1)*and(1, n)` -/
def P16112932149426367085.Spec : Prop :=
  ∀ n, P16112932149426367085.a n = A131179 n

end A131179

/-! ## A131179.P11035917136722172415

`∑[n]-xor(1, n)%(n+1)`
-/

namespace A131179.P11035917136722172415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((Nat.xor 1 n % (n + 1) : ℕ) : ℤ)

end

end A131179.P11035917136722172415

namespace A131179

/-- `∑[n]-xor(1, n)%(n+1)` -/
def P11035917136722172415.Spec : Prop :=
  ∀ n, P11035917136722172415.a n = A131179 n

end A131179

/-! ## A131179.P15527932312106128231

`∑[n]-lcm(n-1, and(1, n))`
-/

namespace A131179.P15527932312106128231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Int.lcm ((n : ℤ) - 1) (Nat.land 1 n : ℤ) : ℤ)

end

end A131179.P15527932312106128231

namespace A131179

/-- `∑[n]-lcm(n-1, and(1, n))` -/
def P15527932312106128231.Spec : Prop :=
  ∀ n, P15527932312106128231.a n = A131179 n

end A131179

/-! ## A131179.P12340180838061285209

`∑[xor(2, a(n-2)+2)]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A131179.P12340180838061285209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  Nat.xor 2 (f1 (n - 2) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131179.P12340180838061285209

namespace A131179

/-- `∑[xor(2, a(n-2)+2)]` -/
def P12340180838061285209.Spec : Prop :=
  ∀ n, (P12340180838061285209.a n : ℤ) = A131179 n

end A131179

/-! ## A131179.P8508242471995517208

`(n-1)*or(1, n)-∑[n-1]`
-/

namespace A131179.P8508242471995517208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.lor 1 n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131179.P8508242471995517208

namespace A131179

/-- `(n-1)*or(1, n)-∑[n-1]` -/
def P8508242471995517208.Spec : Prop :=
  ∀ n, P8508242471995517208.a n = A131179 n

end A131179

/-! ## A131179.P11406034213347031597

`C(n+1-gcd(2, n+1), 2)+n`
-/

namespace A131179.P11406034213347031597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1 : ℤ) - (Nat.gcd 2 (n + 1) : ℤ)).toNat 2 + n

end

end A131179.P11406034213347031597

namespace A131179

/-- `C(n+1-gcd(2, n+1), 2)+n` -/
def P11406034213347031597.Spec : Prop :=
  ∀ n, (P11406034213347031597.a n : ℤ) = A131179 n

end A131179

/-! ## A131179.P5607011915077068271

`∑[5/a(n-1)]+a(n-2)-(n+1)` with `a(0)=0, a(1)=1`
-/

namespace A131179.P5607011915077068271
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  5 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (a (n - 2) - (n + 1 : ℚ))

end

end A131179.P5607011915077068271

namespace A131179

/-- `∑[5/a(n-1)]+a(n-2)-(n+1)` -/
def P5607011915077068271.Spec : Prop :=
  ∀ n, P5607011915077068271.a n = (A131179 n : ℚ)

end A131179

/-! ## A131179.P6284206184522442869

`∑[A267354(n)]`
-/

namespace A131179.P6284206184522442869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267354 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131179.P6284206184522442869

namespace A131179

/-- `∑[A267354(n)]` -/
def P6284206184522442869.Spec : Prop :=
  ∀ n, P6284206184522442869.a n = A131179 n

end A131179

/-! ## A131179.P8108127676942768580

`A266259(n)-n`
-/

namespace A131179.P8108127676942768580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266259 n - (n : ℤ)

end

end A131179.P8108127676942768580

namespace A131179

/-- `A266259(n)-n` -/
def P8108127676942768580.Spec : Prop :=
  ∀ n, P8108127676942768580.a n = A131179 n

end A131179

/-! ## A131179.P13659518014868143892

`∑[A266258(n)]-n`
-/

namespace A131179.P13659518014868143892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266258 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A131179.P13659518014868143892

namespace A131179

/-- `∑[A266258(n)]-n` -/
def P13659518014868143892.Spec : Prop :=
  ∀ n, P13659518014868143892.a n = A131179 n

end A131179

/-! ## A131179.P9354057712999503669

`A265724(n)-2*n`
-/

namespace A131179.P9354057712999503669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265724 n - (2 * n : ℤ)

end

end A131179.P9354057712999503669

namespace A131179

/-- `A265724(n)-2*n` -/
def P9354057712999503669.Spec : Prop :=
  ∀ n, P9354057712999503669.a n = A131179 n

end A131179

/-! ## A131179.P12409189680264151272

`(n+1)²-A267353(n)`
-/

namespace A131179.P12409189680264151272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A267353 n

end

end A131179.P12409189680264151272

namespace A131179

/-- `(n+1)²-A267353(n)` -/
def P12409189680264151272.Spec : Prop :=
  ∀ n, P12409189680264151272.a n = A131179 n

end A131179

/-! ## A131179.P10381523544294766676

`floor(A247375(n)+n/2)`
-/

namespace A131179.P10381523544294766676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A247375 n : ℚ) + (n : ℚ) / 2⌋

end

end A131179.P10381523544294766676

namespace A131179

/-- `floor(A247375(n)+n/2)` -/
def P10381523544294766676.Spec : Prop :=
  ∀ n, P10381523544294766676.a n = A131179 n

end A131179

/-! ## A131179.P430729605629477838

`∑[Δ[n²]-A267352(n)]`
-/

namespace A131179.P430729605629477838
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A267352 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131179.P430729605629477838

namespace A131179

/-- `∑[Δ[n²]-A267352(n)]` -/
def P430729605629477838.Spec : Prop :=
  ∀ n, P430729605629477838.a n = A131179 n

end A131179

/-! ## A131179.P1238458551047884552

`∑[n+1]-A043547(n+1)`
-/

namespace A131179.P1238458551047884552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A043547 (n + 1)

end

end A131179.P1238458551047884552

namespace A131179

/-- `∑[n+1]-A043547(n+1)` -/
def P1238458551047884552.Spec : Prop :=
  ∀ n, P1238458551047884552.a n = A131179 n

end A131179

/-!
# A131180: Number of ways of placing non-attacking knights on an n X n chessboard symmetric under 180 degree rotation.

The programs for A131180, there is no canonical definition to state claims against.
-/

/-! ## A131180.P746163772733095997

`A008619(A129194(n)+Δ[A000142(n)])`
-/

namespace A131180.P746163772733095997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A129194 n + (f1 (n + 1) - f1 n)).toNat

end

end A131180.P746163772733095997

/-! ## A131180.P496193015712102020

`A008619(A129194(n)+n*A000142(n))`
-/

namespace A131180.P496193015712102020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A129194 n + (n : ℤ) * A000142 n).toNat

end

end A131180.P496193015712102020

/-!
# A131181: A 2-way classification of integers: complement of A026416.

The programs for A131181, there is no canonical definition to state claims against.
-/

/-! ## A131181.P11136655822537277120

`comp[A026416(n+1)-1]+1`
-/

namespace A131181.P11136655822537277120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026416 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A131181.P11136655822537277120

/-! ## A131181.P10215381531914954354

`comp[∪[A026416(n+1), A243206(n+2)]]`
-/

namespace A131181.P10215381531914954354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026416 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243206 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A131181.P10215381531914954354

/-!
# A131182: Table T(n,k) = n!*k^n, read by upwards antidiagonals.

The programs for A131182, there is no canonical definition to state claims against.
-/

/-! ## A131182.P6110140249147965871

`(n-C(∑[char[∑[n]]], 2))^(C(comp[∑[n]]-n, 2)-(n+1))*(C(comp[∑[n]]-n, 2)-(n+1))!`
-/

namespace A131182.P6110140249147965871
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ) * (Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f6 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℚ)

end

end A131182.P6110140249147965871

/-! ## A131182.P15697363124485558697

`(C(comp[∑[n]]-n, 2)-(n+1))!*A004248(n)`
-/

namespace A131182.P15697363124485558697
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℤ) * A004248 n

end

end A131182.P15697363124485558697

/-! ## A131182.P1818131010648110830

`(n-C(∑[char[∑[n]]], 2))^(C(comp[∑[n]]-n, 2)-(n+1))*A119502(n)`
-/

namespace A131182.P1818131010648110830
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ) * (A119502 n : ℚ)

end

end A131182.P1818131010648110830

/-! ## A131182.P18172556893282907587

`(n-C(∑[char[∑[n]]], 2))^(C(comp[∑[n]]-n, 2)-(n+1))*A000142(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A131182.P18172556893282907587
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ) * (A000142 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f6 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1)) : ℚ)

end

end A131182.P18172556893282907587

/-! ## A131182.P14896506937119291867

`A004248(n)*A119502(n)`
-/

namespace A131182.P14896506937119291867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 n * A119502 n

end

end A131182.P14896506937119291867

/-! ## A131182.P8350978853127180163

`A025581(n)!*A004248(n)`
-/

namespace A131182.P8350978853127180163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025581 n).toNat : ℤ) * A004248 n

end

end A131182.P8350978853127180163

/-! ## A131182.P12246418706019209866

`A025660(n+1)!*A004248(n)`
-/

namespace A131182.P12246418706019209866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025660 (n + 1)).toNat : ℤ) * A004248 n

end

end A131182.P12246418706019209866

/-! ## A131182.P2211362710488858198

`A025669(n+1)!*A004248(n)`
-/

namespace A131182.P2211362710488858198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025669 (n + 1)).toNat : ℤ) * A004248 n

end

end A131182.P2211362710488858198

/-! ## A131182.P34587893387497404

`A001222(A130321(n))!*A004248(n)`
-/

namespace A131182.P34587893387497404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A001222 (A130321 n).toNat).toNat : ℤ) * A004248 n

end

end A131182.P34587893387497404

/-!
# A131183: a(n) = a(n-1) + a(n-2) if n == 3 mod 4; a(n) = a(n-1) - a(n-2) if n == 0 mod 4; a(n) = a(n-1)*a(n-2) if n == 1 mod 4; and a(n) = a(n-1)/a(n-2) if n == 2 mod 4; with a(1)=a(2)=1.

The programs for A131183, there is no canonical definition to state claims against.
-/

/-! ## A131183.P8255754851401625645

`A039941(ceil(xor(1, n)/2)+2)`
-/

namespace A131183.P8255754851401625645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039941 (⌈(Nat.xor 1 n : ℚ) / 2⌉ + 2).toNat

end

end A131183.P8255754851401625645

/-! ## A131183.P16566765796132460950

`A039941(A052938(n+1))`
-/

namespace A131183.P16566765796132460950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039941 (A052938 (n + 1)).toNat

end

end A131183.P16566765796132460950

/-! ## A131183.P8330717735041071046

`A039941(A028242(n)+2)`
-/

namespace A131183.P8330717735041071046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039941 (A028242 n + 2).toNat

end

end A131183.P8330717735041071046

/-! ## A131183.P11106713870900728816

`A039941(A008619(n)-(n%2-2))`
-/

namespace A131183.P11106713870900728816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039941 (A008619 n - (((n % 2 : ℕ) : ℤ) - 2)).toNat

end

end A131183.P11106713870900728816

/-! ## A131183.P6869497908067221070

`A039941(A040001(n)+A008619(n))`
-/

namespace A131183.P6869497908067221070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039941 (A040001 n + A008619 n).toNat

end

end A131183.P6869497908067221070

/-!
# A131185: Period 6: repeat [0, 2, -1, 0, -1, 3].

The programs for A131185, the canonical program `A131185.P17318038659646676962` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131185 has offset 0).

The definition of A131185 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131185.P17318038659646676962

`a(n-6)` with `a(0)=0, a(1)=2, a(2)=-1, a(3)=0, a(4)=-1, a(5)=3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A131185

/-- `a(n-6)` -/
def P17318038659646676962.Spec : Prop :=
  ∀ n, P17318038659646676962.a n = A131185 n

theorem P17318038659646676962.correct : P17318038659646676962.Spec := by
  intro n
  simp only [A131185]

end A131185

/-!
# A131186: Period 12: repeat [0, 1, 2, 0, 2, 4, 0, 4, 3, 0, 3, 1].

The programs for A131186, the canonical program `A131186.P15269946928980497168` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131186 has offset 0).

The definition of A131186 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131186.P15269946928980497168

`a(n-2)+a(n-3)-a(n-4)-a(n-5)+a(n-7)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=0, a(4)=2, a(5)=4, a(6)=0`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A131186

/-- `a(n-2)+a(n-3)-a(n-4)-a(n-5)+a(n-7)` -/
def P15269946928980497168.Spec : Prop :=
  ∀ n, P15269946928980497168.a n = A131186 n

theorem P15269946928980497168.correct : P15269946928980497168.Spec := by
  intro n
  simp only [A131186]

end A131186

/-!
# A131187: a(n) = the number of positive integers < n that are neither a divisor of n nor a divisor of (n+1).

The programs for A131187, the canonical program `A131187.P4191835423792268718` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131187 has offset 1).

The definition of A131187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131187.P2178491895762536227

`n-A343005(n+2)`
-/

namespace A131187.P2178491895762536227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A343005 (n + 2)

end

end A131187.P2178491895762536227

namespace A131187

/-- `n-A343005(n+2)` -/
def P2178491895762536227.Spec : Prop :=
  ∀ n, P2178491895762536227.a n = A131187 (n + 1)

end A131187

/-! ## A131187.P4191835423792268718

`3-A092405(n+1)+n`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A131187

/-- `3-A092405(n+1)+n` -/
def P4191835423792268718.Spec : Prop :=
  ∀ n, P4191835423792268718.a n = A131187 (n + 1)

theorem P4191835423792268718.correct : P4191835423792268718.Spec := by
  intro n
  simp only [A131187, Nat.add_sub_cancel]

end A131187

/-! ## A131187.P13393448758195212106

`n+3-∏{e}[n+1, #+1]-A000005(n+2)`
-/

namespace A131187.P13393448758195212106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A000005 (n + 2)

end

end A131187.P13393448758195212106

namespace A131187

/-- `n+3-∏{e}[n+1, #+1]-A000005(n+2)` -/
def P13393448758195212106.Spec : Prop :=
  ∀ n, P13393448758195212106.a n = A131187 (n + 1)

end A131187

/-! ## A131187.P15299265458107793105

`n-A023445(A092405(n+1))`
-/

namespace A131187.P15299265458107793105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023445 (A092405 (n + 1)).toNat

end

end A131187.P15299265458107793105

namespace A131187

/-- `n-A023445(A092405(n+1))` -/
def P15299265458107793105.Spec : Prop :=
  ∀ n, P15299265458107793105.a n = A131187 (n + 1)

end A131187

/-! ## A131187.P5167606496421544677

`A059292(n+1)-A000005(n+2)`
-/

namespace A131187.P5167606496421544677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059292 (n + 1) - A000005 (n + 2)

end

end A131187.P5167606496421544677

namespace A131187

/-- `A059292(n+1)-A000005(n+2)` -/
def P5167606496421544677.Spec : Prop :=
  ∀ n, P5167606496421544677.a n = A131187 (n + 1)

end A131187

/-! ## A131187.P17482405487240898131

`A000010(n+1)+A046640(n+1)-A000005(n+2)`
-/

namespace A131187.P17482405487240898131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A046640 (n + 1) - A000005 (n + 2))

end

end A131187.P17482405487240898131

namespace A131187

/-- `A000010(n+1)+A046640(n+1)-A000005(n+2)` -/
def P17482405487240898131.Spec : Prop :=
  ∀ n, P17482405487240898131.a n = A131187 (n + 1)

end A131187

/-! ## A131187.P8765587689529835384

`1-A274010(n+2)+n`
-/

namespace A131187.P8765587689529835384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A274010 (n + 2) + (n : ℤ)

end

end A131187.P8765587689529835384

namespace A131187

/-- `1-A274010(n+2)+n` -/
def P8765587689529835384.Spec : Prop :=
  ∀ n, P8765587689529835384.a n = A131187 (n + 1)

end A131187

/-! ## A131187.P14915855647810334595

`2-A092338(n+2)+n`
-/

namespace A131187.P14915855647810334595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A092338 (n + 2) + (n : ℤ)

end

end A131187.P14915855647810334595

namespace A131187

/-- `2-A092338(n+2)+n` -/
def P14915855647810334595.Spec : Prop :=
  ∀ n, P14915855647810334595.a n = A131187 (n + 1)

end A131187

/-! ## A131187.P6496007564815891099

`A062968(n+2)-∏{e}[n+1, #+1]`
-/

namespace A131187.P6496007564815891099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062968 (n + 2) - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A131187.P6496007564815891099

namespace A131187

/-- `A062968(n+2)-∏{e}[n+1, #+1]` -/
def P6496007564815891099.Spec : Prop :=
  ∀ n, P6496007564815891099.a n = A131187 (n + 1)

end A131187

/-! ## A131187.P17999819582982766643

`n-A023444(A092338(n+2))`
-/

namespace A131187.P17999819582982766643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023444 (A092338 (n + 2)).toNat

end

end A131187.P17999819582982766643

namespace A131187

/-- `n-A023444(A092338(n+2))` -/
def P17999819582982766643.Spec : Prop :=
  ∀ n, P17999819582982766643.a n = A131187 (n + 1)

end A131187

/-! ## A131187.P3792251914377449091

`A003165(n+1)+A003165(n+2)`
-/

namespace A131187.P3792251914377449091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003165 (n + 1) + A003165 (n + 2)

end

end A131187.P3792251914377449091

namespace A131187

/-- `A003165(n+1)+A003165(n+2)` -/
def P3792251914377449091.Spec : Prop :=
  ∀ n, P3792251914377449091.a n = A131187 (n + 1)

end A131187

/-! ## A131187.P4883649822035606864

`A062968(n+2)-A000005(n+1)`
-/

namespace A131187.P4883649822035606864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062968 (n + 2) - A000005 (n + 1)

end

end A131187.P4883649822035606864

namespace A131187

/-- `A062968(n+2)-A000005(n+1)` -/
def P4883649822035606864.Spec : Prop :=
  ∀ n, P4883649822035606864.a n = A131187 (n + 1)

end A131187

/-! ## A131187.P9402145685500742492

`A049820(n+2)-A032741(n+1)`
-/

namespace A131187.P9402145685500742492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 2) - A032741 (n + 1)

end

end A131187.P9402145685500742492

namespace A131187

/-- `A049820(n+2)-A032741(n+1)` -/
def P9402145685500742492.Spec : Prop :=
  ∀ n, P9402145685500742492.a n = A131187 (n + 1)

end A131187

/-! ## A131187.P16560819325541461479

`A062968(n+1)-A032741(n+2)`
-/

namespace A131187.P16560819325541461479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062968 (n + 1) - A032741 (n + 2)

end

end A131187.P16560819325541461479

namespace A131187

/-- `A062968(n+1)-A032741(n+2)` -/
def P16560819325541461479.Spec : Prop :=
  ∀ n, P16560819325541461479.a n = A131187 (n + 1)

end A131187

/-! ## A131187.P11661054618087786753

`A049820(n+1)-A070824(n+2)`
-/

namespace A131187.P11661054618087786753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) - A070824 (n + 2)

end

end A131187.P11661054618087786753

namespace A131187

/-- `A049820(n+1)-A070824(n+2)` -/
def P11661054618087786753.Spec : Prop :=
  ∀ n, P11661054618087786753.a n = A131187 (n + 1)

end A131187

/-! ## A131187.P13060861000990680088

`A006590(n+1)+A049820(n+2)-A161886(n+1)`
-/

namespace A131187.P13060861000990680088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006590 (n + 1) + (A049820 (n + 2) - A161886 (n + 1))

end

end A131187.P13060861000990680088

namespace A131187

/-- `A006590(n+1)+A049820(n+2)-A161886(n+1)` -/
def P13060861000990680088.Spec : Prop :=
  ∀ n, P13060861000990680088.a n = A131187 (n + 1)

end A131187

/-! ## A131187.P5837501866542729664

`A049820(n+1)+A286002(n+2)-A005843(n+1)`
-/

namespace A131187.P5837501866542729664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) + (A286002 (n + 2) - A005843 (n + 1))

end

end A131187.P5837501866542729664

namespace A131187

/-- `A049820(n+1)+A286002(n+2)-A005843(n+1)` -/
def P5837501866542729664.Spec : Prop :=
  ∀ n, P5837501866542729664.a n = A131187 (n + 1)

end A131187

/-! ## A131187.P15461482896766345692

`A000010(n+2)+A045763(n+2)-A000005(n+1)`
-/

namespace A131187.P15461482896766345692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2) + (A045763 (n + 2) - A000005 (n + 1))

end

end A131187.P15461482896766345692

namespace A131187

/-- `A000010(n+2)+A045763(n+2)-A000005(n+1)` -/
def P15461482896766345692.Spec : Prop :=
  ∀ n, P15461482896766345692.a n = A131187 (n + 1)

end A131187

/-! ## A131187.P14728522867304074720

`A000720(n+2)+A152993(n+2)-A000005(n+1)`
-/

namespace A131187.P14728522867304074720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 2) + (A152993 (n + 2) - A000005 (n + 1))

end

end A131187.P14728522867304074720

namespace A131187

/-- `A000720(n+2)+A152993(n+2)-A000005(n+1)` -/
def P14728522867304074720.Spec : Prop :=
  ∀ n, P14728522867304074720.a n = A131187 (n + 1)

end A131187

/-! ## A131187.P4793584764811396591

`n-(A172520(∑[n]+2)-2)`
-/

namespace A131187.P4793584764811396591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A172520 (∑ j ∈ Finset.range (n + 1), f1 j + 2) - 2)

end

end A131187.P4793584764811396591

namespace A131187

/-- `n-(A172520(∑[n]+2)-2)` -/
def P4793584764811396591.Spec : Prop :=
  ∀ n, P4793584764811396591.a n = A131187 (n + 1)

end A131187

/-!
# A131188: Indices of products of twin primes in the semiprimes.

The programs for A131188, the canonical program `A131188.P11898817700448959080` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131188 has offset 1).

The definition of A131188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131188.P11898817700448959080

`A038108(A014574(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A131188

/-- `A038108(A014574(n+1))` -/
def P11898817700448959080.Spec : Prop :=
  ∀ n, P11898817700448959080.a n = A131188 (n + 1)

theorem P11898817700448959080.correct : P11898817700448959080.Spec := by
  intro n
  simp only [A131188, Nat.add_sub_cancel]

end A131188

/-! ## A131188.P4156100443476514327

`A172348(A029707(n+1))`
-/

namespace A131188.P4156100443476514327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172348 (A029707 (n + 1)).toNat

end

end A131188.P4156100443476514327

namespace A131188

/-- `A172348(A029707(n+1))` -/
def P4156100443476514327.Spec : Prop :=
  ∀ n, P4156100443476514327.a n = A131188 (n + 1)

end A131188

/-! ## A131188.P3006453785878515479

`A172348(A155752(n+1)+1)`
-/

namespace A131188.P3006453785878515479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172348 (A155752 (n + 1) + 1).toNat

end

end A131188.P3006453785878515479

namespace A131188

/-- `A172348(A155752(n+1)+1)` -/
def P3006453785878515479.Spec : Prop :=
  ∀ n, P3006453785878515479.a n = A131188 (n + 1)

end A131188

/-! ## A131188.P2553344542390370110

`A172348(A107770(n+1)-1)`
-/

namespace A131188.P2553344542390370110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172348 (A107770 (n + 1) - 1).toNat

end

end A131188.P2553344542390370110

namespace A131188

/-- `A172348(A107770(n+1)-1)` -/
def P2553344542390370110.Spec : Prop :=
  ∀ n, P2553344542390370110.a n = A131188 (n + 1)

end A131188

/-! ## A131188.P12177066640817267781

`A172348(eq[1, A237260(n+1)])`
-/

namespace A131188.P12177066640817267781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172348 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A131188.P12177066640817267781

namespace A131188

/-- `A172348(eq[1, A237260(n+1)])` -/
def P12177066640817267781.Spec : Prop :=
  ∀ n, P12177066640817267781.a n = A131188 (n + 1)

end A131188

/-! ## A131188.P6168986295943621789

`A172348(eq[3, A076368(n+1)])`
-/

namespace A131188.P6168986295943621789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172348 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A131188.P6168986295943621789

namespace A131188

/-- `A172348(eq[3, A076368(n+1)])` -/
def P6168986295943621789.Spec : Prop :=
  ∀ n, P6168986295943621789.a n = A131188 (n + 1)

end A131188

/-! ## A131188.P12873596340707067582

`A172348(eq[1, A074927(n+1)]+1)`
-/

namespace A131188.P12873596340707067582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172348 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A131188.P12873596340707067582

namespace A131188

/-- `A172348(eq[1, A074927(n+1)]+1)` -/
def P12873596340707067582.Spec : Prop :=
  ∀ n, P12873596340707067582.a n = A131188 (n + 1)

end A131188

/-! ## A131188.P12462934853035383199

`A172348(A049084(A001359(n+1)))`
-/

namespace A131188.P12462934853035383199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172348 (A049084 (A001359 (n + 1)).toNat).toNat

end

end A131188.P12462934853035383199

namespace A131188

/-- `A172348(A049084(A001359(n+1)))` -/
def P12462934853035383199.Spec : Prop :=
  ∀ n, P12462934853035383199.a n = A131188 (n + 1)

end A131188

/-! ## A131188.P17656125473993956604

`A172348(eq[A008578(n+1), A334971(n+1)])`
-/

namespace A131188.P17656125473993956604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172348 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A131188.P17656125473993956604

namespace A131188

/-- `A172348(eq[A008578(n+1), A334971(n+1)])` -/
def P17656125473993956604.Spec : Prop :=
  ∀ n, P17656125473993956604.a n = A131188 (n + 1)

end A131188

/-! ## A131188.P16876780533597775274

`A172348(eq[2, A000040(n+2)-A000040(n+1)]+1)`
-/

namespace A131188.P16876780533597775274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172348 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A131188.P16876780533597775274

namespace A131188

/-- `A172348(eq[2, A000040(n+2)-A000040(n+1)]+1)` -/
def P16876780533597775274.Spec : Prop :=
  ∀ n, P16876780533597775274.a n = A131188 (n + 1)

end A131188

/-!
# A131189: Numbers n >= 0 such that d(n) = (n^1 + 1)*(n^2 + 2) ... (n^14 + 14) / 14!, e(n) = (n^1 + 1)*(n^2 + 2) ... (n^15 + 15) / 15!, and f(n) = (n^1 + 1)*(n^2 + 2) ... (n^16 + 16) / 16! take nonintegral values.

The programs for A131189, the canonical program `A131189.P8504086745331812764` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131189 has offset 1).

The definition of A131189 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131189.P12841310343344211787

`7*comp[7*n]-5`
-/

namespace A131189.P12841310343344211787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - 5

end

end A131189.P12841310343344211787

namespace A131189

/-- `7*comp[7*n]-5` -/
def P12841310343344211787.Spec : Prop :=
  ∀ n, P12841310343344211787.a n = A131189 (n + 1)

end A131189

/-! ## A131189.P8504086745331812764

`record[lcm(7, n+1)-5]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A131189

/-- `record[lcm(7, n+1)-5]` -/
def P8504086745331812764.Spec : Prop :=
  ∀ n, P8504086745331812764.a n = A131189 (n + 1)

theorem P8504086745331812764.correct : P8504086745331812764.Spec := by
  intro n
  simp only [A131189, Nat.add_sub_cancel]

end A131189

/-! ## A131189.P224354762621079455

`record[7*(n-val(n+1, 7))+2]`
-/

namespace A131189.P224354762621079455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * ((n : ℤ) - (SequenceMachineLib.valuation (n + 1) 7 : ℤ)) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131189.P224354762621079455

namespace A131189

/-- `record[7*(n-val(n+1, 7))+2]` -/
def P224354762621079455.Spec : Prop :=
  ∀ n, P224354762621079455.a n = A131189 (n + 1)

end A131189

/-! ## A131189.P17684840208904368516

`A017005(comp[a(n-2)+7])` with `a(0)=6, a(1)=6`
-/

namespace A131189.P17684840208904368516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 6] fun n f1 =>
  f1 (n - 2) + 7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A131189.P17684840208904368516

namespace A131189

/-- `A017005(comp[a(n-2)+7])` -/
def P17684840208904368516.Spec : Prop :=
  ∀ n, P17684840208904368516.a n = A131189 (n + 1)

end A131189

/-! ## A131189.P14442525251293778833

`A017005(A047368(n+1))`
-/

namespace A131189.P14442525251293778833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 (A047368 (n + 1)).toNat

end

end A131189.P14442525251293778833

namespace A131189

/-- `A017005(A047368(n+1))` -/
def P14442525251293778833.Spec : Prop :=
  ∀ n, P14442525251293778833.a n = A131189 (n + 1)

end A131189

/-! ## A131189.P12247034148254519727

`A017005(A152467(n)+n)`
-/

namespace A131189.P12247034148254519727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 (A152467 n + (n : ℤ)).toNat

end

end A131189.P12247034148254519727

namespace A131189

/-- `A017005(A152467(n)+n)` -/
def P12247034148254519727.Spec : Prop :=
  ∀ n, P12247034148254519727.a n = A131189 (n + 1)

end A131189

/-! ## A131189.P4523973824051181938

`A017005(comp[A017005(n)-3])`
-/

namespace A131189.P4523973824051181938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 n - 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A131189.P4523973824051181938

namespace A131189

/-- `A017005(comp[A017005(n)-3])` -/
def P4523973824051181938.Spec : Prop :=
  ∀ n, P4523973824051181938.a n = A131189 (n + 1)

end A131189

/-! ## A131189.P16971747743214264820

`A017005(A047304(n+1)-1)`
-/

namespace A131189.P16971747743214264820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 (A047304 (n + 1) - 1).toNat

end

end A131189.P16971747743214264820

namespace A131189

/-- `A017005(A047304(n+1)-1)` -/
def P16971747743214264820.Spec : Prop :=
  ∀ n, P16971747743214264820.a n = A131189 (n + 1)

end A131189

/-! ## A131189.P5747278520294041875

`A017005(A047306(n+2)-2)`
-/

namespace A131189.P5747278520294041875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 (A047306 (n + 2) - 2).toNat

end

end A131189.P5747278520294041875

namespace A131189

/-- `A017005(A047306(n+2)-2)` -/
def P5747278520294041875.Spec : Prop :=
  ∀ n, P5747278520294041875.a n = A131189 (n + 1)

end A131189

/-! ## A131189.P14107312678960266250

`A017005(∪[A047344(n+1)+1, A047344(n+1)])`
-/

namespace A131189.P14107312678960266250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047344 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047344 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A131189.P14107312678960266250

namespace A131189

/-- `A017005(∪[A047344(n+1)+1, A047344(n+1)])` -/
def P14107312678960266250.Spec : Prop :=
  ∀ n, P14107312678960266250.a n = A131189 (n + 1)

end A131189

/-! ## A131189.P10355110839653822981

`A047352(2*comp[7*n])`
-/

namespace A131189.P10355110839653822981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047352 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A131189.P10355110839653822981

namespace A131189

/-- `A047352(2*comp[7*n])` -/
def P10355110839653822981.Spec : Prop :=
  ∀ n, P10355110839653822981.a n = A131189 (n + 1)

end A131189

/-! ## A131189.P10115169701181163537

`A047348(or(1, A047349(n+1)))`
-/

namespace A131189.P10115169701181163537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047348 (Int.lor 1 (A047349 (n + 1))).toNat

end

end A131189.P10115169701181163537

namespace A131189

/-- `A047348(or(1, A047349(n+1)))` -/
def P10115169701181163537.Spec : Prop :=
  ∀ n, P10115169701181163537.a n = A131189 (n + 1)

end A131189

/-! ## A131189.P5749767400013839548

`A047358(or(1, A047349(n+1)))`
-/

namespace A131189.P5749767400013839548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047358 (Int.lor 1 (A047349 (n + 1))).toNat

end

end A131189.P5749767400013839548

namespace A131189

/-- `A047358(or(1, A047349(n+1)))` -/
def P5749767400013839548.Spec : Prop :=
  ∀ n, P5749767400013839548.a n = A131189 (n + 1)

end A131189

/-! ## A131189.P2274638134450093311

`A047385(or(1, A047349(n+1)))`
-/

namespace A131189.P2274638134450093311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047385 (Int.lor 1 (A047349 (n + 1))).toNat

end

end A131189.P2274638134450093311

namespace A131189

/-- `A047385(or(1, A047349(n+1)))` -/
def P2274638134450093311.Spec : Prop :=
  ∀ n, P2274638134450093311.a n = A131189 (n + 1)

end A131189

/-! ## A131189.P18020989948791967889

`A168333(A315471(n)-3*n)`
-/

namespace A131189.P18020989948791967889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168333 (A315471 n - (3 * n : ℤ)).toNat

end

end A131189.P18020989948791967889

namespace A131189

/-- `A168333(A315471(n)-3*n)` -/
def P18020989948791967889.Spec : Prop :=
  ∀ n, P18020989948791967889.a n = A131189 (n + 1)

end A131189

/-! ## A131189.P9925208658331388873

`A047300(4*comp[A047275(3*(n+1))]+1)`
-/

namespace A131189.P9925208658331388873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047275 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047300 (4 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A131189.P9925208658331388873

namespace A131189

/-- `A047300(4*comp[A047275(3*(n+1))]+1)` -/
def P9925208658331388873.Spec : Prop :=
  ∀ n, P9925208658331388873.a n = A131189 (n + 1)

end A131189

/-! ## A131189.P11966229867008513900

`A017005(A152467(7*n))`
-/

namespace A131189.P11966229867008513900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 (A152467 (7 * n)).toNat

end

end A131189.P11966229867008513900

namespace A131189

/-- `A017005(A152467(7*n))` -/
def P11966229867008513900.Spec : Prop :=
  ∀ n, P11966229867008513900.a n = A131189 (n + 1)

end A131189

/-!
# A131190: Numbers n>=0 such that d(n) = (n^1 + 1) (n^2 + 2) ... (n^25 + 25) / 25! is nonintegral.

The programs for A131190, there is no canonical definition to state claims against.
-/

/-! ## A131190.P4740925003085880129

`A219640(3*n+2)+A073610(A247602(n+1))`
-/

namespace A131190.P4740925003085880129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219640 (3 * n + 2) + A073610 (A247602 (n + 1)).toNat

end

end A131190.P4740925003085880129

/-! ## A131190.P556028614270237197

`A016885(n)-A230425(A033650(n+1))`
-/

namespace A131190.P556028614270237197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n - A230425 (A033650 (n + 1)).toNat

end

end A131190.P556028614270237197

/-! ## A131190.P15294168773326182461

`A171397(A291154(2*n+1)+A000005(n+1))`
-/

namespace A131190.P15294168773326182461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (A291154 (2 * n + 1) + A000005 (n + 1)).toNat

end

end A131190.P15294168773326182461

/-!
# A131191: Numbers n>=0 such that d(n) = (n^1 + 1) (n^2 + 2) ... (n^22 + 22) / 22!, e(n) = (n^1 + 1) (n^2 + 2) ... (n^23 + 23) / 23!, and f(n) = (n^1 + 1) (n^2 + 2) ... (n^24 + 24) / 24! take nonintegral values.

The programs for A131191, there is no canonical definition to state claims against.
-/

/-! ## A131191.P13098057500948347580

`record[lcm(11, n+1)-4]`
-/

namespace A131191.P13098057500948347580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 11 (n + 1) : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131191.P13098057500948347580

/-! ## A131191.P6518929609917582570

`11*comp[11*n]-4`
-/

namespace A131191.P6518929609917582570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - 4

end

end A131191.P6518929609917582570

/-! ## A131191.P2269792707821575874

`abs(10*n+a(floor(n/10))+n)` with `a(0)=7`
-/

namespace A131191.P2269792707821575874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  10 * n + (a ⌊(n : ℚ) / 10⌋.toNat + n)

end

end A131191.P2269792707821575874

/-! ## A131191.P3332113874649323103

`floor(10*n+a(floor(n/10))+n)` with `a(0)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A131191.P3332113874649323103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  10 * n + (a ⌊(n : ℚ) / 10⌋.toNat + n)

end

end A131191.P3332113874649323103

/-! ## A131191.P12121148012597792812

`A171397(10*n+7)`
-/

namespace A131191.P12121148012597792812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (10 * n + 7)

end

end A131191.P12121148012597792812

/-! ## A131191.P5539421773558680601

`record[A109052(n+1)-4]`
-/

namespace A131191.P5539421773558680601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109052 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131191.P5539421773558680601

/-! ## A131191.P9156824221521559797

`A017473(floor(11*n/10))`
-/

namespace A131191.P9156824221521559797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017473 ⌊11 * ((n : ℚ) / 10)⌋.toNat

end

end A131191.P9156824221521559797

/-! ## A131191.P3947293310155830666

`abs(A016921(2*n+1)+11*floor(n/10)-n)`
-/

namespace A131191.P3947293310155830666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016921 (2 * n + 1) + (11 * ⌊(n : ℚ) / 10⌋ - (n : ℤ))|

end

end A131191.P3947293310155830666

/-! ## A131191.P544986780858203147

`A020719(11*A065039(n))`
-/

namespace A131191.P544986780858203147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020719 (11 * A065039 n).toNat

end

end A131191.P544986780858203147

/-! ## A131191.P15392976136081452231

`A020719(11*A171397(n))`
-/

namespace A131191.P15392976136081452231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020719 (11 * A171397 n).toNat

end

end A131191.P15392976136081452231

/-!
# A131193: Period 6: repeat [0, 1, -3, 3, -1, 0].

The programs for A131193, the canonical program `A131193.P4767151081242458878` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131193 has offset 0).

The definition of A131193 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131193.P4767151081242458878

`A132951(n)-A156283(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A131193

/-- `A132951(n)-A156283(n)` -/
def P4767151081242458878.Spec : Prop :=
  ∀ n, P4767151081242458878.a n = A131193 n

theorem P4767151081242458878.correct : P4767151081242458878.Spec := by
  intro n
  simp only [A131193]

end A131193

/-!
# A131194: Slowest increasing sequence of primes such that two neighbor terms share at least three digits (counted with multiplicity).

The programs for A131194, there is no canonical definition to state claims against.
-/

/-! ## A131194.P3130225287916677709

`record[A210759(A077739(n+1)+1)]`
-/

namespace A131194.P3130225287916677709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210759 (A077739 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131194.P3130225287916677709

/-! ## A131194.P2225716791106975833

`p?[record[A136400(n)*A210759(n+1)]]`
-/

namespace A131194.P2225716791106975833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 n * A210759 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A131194.P2225716791106975833

/-! ## A131194.P6332345155282027065

`record[A210759(n+2)/A136400(n+1)]`
-/

namespace A131194.P6332345155282027065
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210759 (n + 2) : ℚ) / (A136400 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131194.P6332345155282027065

/-! ## A131194.P4346298604079056273

`A210759(A316413(n+1)%A254625(n+1))`
-/

namespace A131194.P4346298604079056273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210759 (Int.tmod (A316413 (n + 1)) (A254625 (n + 1))).toNat

end

end A131194.P4346298604079056273

/-!
# A131195: Nonprime record values of Euler's totient function (A000010): 1 and composite n such that phi(n) is greater than all smaller composites.

The programs for A131195, there is no canonical definition to state claims against.
-/

/-! ## A131195.P6386858786691032499

`eq[A000120(A127787(n+1)), A078898(n)]`
-/

namespace A131195.P6386858786691032499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A127787 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131195.P6386858786691032499

/-!
# A131197: Numbers n such that 1 - S(n) = 0, where S(n) = (S(n-1) + A000040(n))*(-1)^n; S(0)=0, n=>1.

The programs for A131197, there is no canonical definition to state claims against.
-/

/-! ## A131197.P16065718783685701167

`eq[1, A001223(n+1)-a(n-2)]+2` with `a(0)=1, a(1)=-4`
-/

namespace A131197.P16065718783685701167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -4] fun n f2 =>
  A001223 (n + 1) - f2 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A131197.P16065718783685701167

/-! ## A131197.P15018039993682019916

`A000720(p?[A265843(n+2)+1])`
-/

namespace A131197.P15018039993682019916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265843 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A131197.P15018039993682019916

/-! ## A131197.P3035632602550065315

`A055396(p?[A265843(n+2)+1])`
-/

namespace A131197.P3035632602550065315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265843 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A131197.P3035632602550065315

/-! ## A131197.P6294853230936085179

`A061395(p?[A265843(n+2)+1])`
-/

namespace A131197.P6294853230936085179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265843 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A131197.P6294853230936085179

/-!
# A131198: Triangle T(n,k), 0 <= k <= n, read by rows, given by [1,0,1,0,1,0,1,0,...] DELTA [0,1,0,1,0,1,0,1,...] where DELTA is the operator defined in A084938.

The programs for A131198, the canonical program `A131198.P17134115705625064705` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131198 has offset 0).

The definition of A131198 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131198.P2289562219262189309

`A178655(n)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A131198.P2289562219262189309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A178655 n + a (n - 1)

end

end A131198.P2289562219262189309

namespace A131198

/-- `A178655(n)+a(n-1)` -/
def P2289562219262189309.Spec : Prop :=
  ∀ n, P2289562219262189309.a n = A131198 n

end A131198

/-! ## A131198.P17134115705625064705

`A367270(n)/A128227(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A131198

/-- `A367270(n)/A128227(n)` -/
def P17134115705625064705.Spec : Prop :=
  ∀ n, P17134115705625064705.a n = (A131198 n : ℚ)

end A131198

/-! ## A131198.P18438089277473897683

`A367270(n)/A193738(n)`
-/

namespace A131198.P18438089277473897683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367270 n : ℚ) / (A193738 n : ℚ)

end

end A131198.P18438089277473897683

namespace A131198

/-- `A367270(n)/A193738(n)` -/
def P18438089277473897683.Spec : Prop :=
  ∀ n, P18438089277473897683.a n = (A131198 n : ℚ)

end A131198

/-! ## A131198.P7939918160063540259

`A367270(n)/A002260(n+1)`
-/

namespace A131198.P7939918160063540259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367270 n : ℚ) / (A002260 (n + 1) : ℚ)

end

end A131198.P7939918160063540259

namespace A131198

/-- `A367270(n)/A002260(n+1)` -/
def P7939918160063540259.Spec : Prop :=
  ∀ n, P7939918160063540259.a n = (A131198 n : ℚ)

end A131198

/-! ## A131198.P15903330204827686919

`A367270(n)/A080511(n+1)`
-/

namespace A131198.P15903330204827686919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367270 n : ℚ) / (A080511 (n + 1) : ℚ)

end

end A131198.P15903330204827686919

namespace A131198

/-- `A367270(n)/A080511(n+1)` -/
def P15903330204827686919.Spec : Prop :=
  ∀ n, P15903330204827686919.a n = (A131198 n : ℚ)

end A131198

/-! ## A131198.P754013935311959764

`A367270(n)/A080818(n+1)`
-/

namespace A131198.P754013935311959764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367270 n : ℚ) / (A080818 (n + 1) : ℚ)

end

end A131198.P754013935311959764

namespace A131198

/-- `A367270(n)/A080818(n+1)` -/
def P754013935311959764.Spec : Prop :=
  ∀ n, P754013935311959764.a n = (A131198 n : ℚ)

end A131198

/-! ## A131198.P6503542216178850211

`A367270(n)/A128077(n+1)`
-/

namespace A131198.P6503542216178850211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367270 n : ℚ) / (A128077 (n + 1) : ℚ)

end

end A131198.P6503542216178850211

namespace A131198

/-- `A367270(n)/A128077(n+1)` -/
def P6503542216178850211.Spec : Prop :=
  ∀ n, P6503542216178850211.a n = (A131198 n : ℚ)

end A131198

/-! ## A131198.P9430267444002463798

`A090181((n+1)%(2*n+1))`
-/

namespace A131198.P9430267444002463798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090181 ((n + 1) % (2 * n + 1))

end

end A131198.P9430267444002463798

namespace A131198

/-- `A090181((n+1)%(2*n+1))` -/
def P9430267444002463798.Spec : Prop :=
  ∀ n, P9430267444002463798.a n = A131198 n

end A131198

/-! ## A131198.P4013677266708698473

`A090181(A028310(n)+1)`
-/

namespace A131198.P4013677266708698473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090181 (A028310 n + 1).toNat

end

end A131198.P4013677266708698473

namespace A131198

/-- `A090181(A028310(n)+1)` -/
def P4013677266708698473.Spec : Prop :=
  ∀ n, P4013677266708698473.a n = A131198 n

end A131198

/-! ## A131198.P541469302941147215

`A090181(A087156(n+1))`
-/

namespace A131198.P541469302941147215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090181 (A087156 (n + 1)).toNat

end

end A131198.P541469302941147215

namespace A131198

/-- `A090181(A087156(n+1))` -/
def P541469302941147215.Spec : Prop :=
  ∀ n, P541469302941147215.a n = A131198 n

end A131198

/-! ## A131198.P10847483173087754119

`A090181(A254667(n+1))`
-/

namespace A131198.P10847483173087754119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090181 (A254667 (n + 1)).toNat

end

end A131198.P10847483173087754119

namespace A131198

/-- `A090181(A254667(n+1))` -/
def P10847483173087754119.Spec : Prop :=
  ∀ n, P10847483173087754119.a n = A131198 n

end A131198

/-! ## A131198.P11499281871074647055

`A090181(A199969(n+2))`
-/

namespace A131198.P11499281871074647055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090181 (A199969 (n + 2)).toNat

end

end A131198.P11499281871074647055

namespace A131198

/-- `A090181(A199969(n+2))` -/
def P11499281871074647055.Spec : Prop :=
  ∀ n, P11499281871074647055.a n = A131198 n

end A131198

/-! ## A131198.P7088179361955518883

`A090181(A057427(n)+n)`
-/

namespace A131198.P7088179361955518883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090181 (A057427 n + (n : ℤ)).toNat

end

end A131198.P7088179361955518883

namespace A131198

/-- `A090181(A057427(n)+n)` -/
def P7088179361955518883.Spec : Prop :=
  ∀ n, P7088179361955518883.a n = A131198 n

end A131198

/-! ## A131198.P11823647649651812629

`A090181(A165471(n)²+n)`
-/

namespace A131198.P11823647649651812629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090181 (A165471 n ^ 2 + (n : ℤ)).toNat

end

end A131198.P11823647649651812629

namespace A131198

/-- `A090181(A165471(n)²+n)` -/
def P11823647649651812629.Spec : Prop :=
  ∀ n, P11823647649651812629.a n = A131198 n

end A131198

/-! ## A131198.P6535712753270737895

`A090181(n+1)+A000007(n)`
-/

namespace A131198.P6535712753270737895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090181 (n + 1) + A000007 n

end

end A131198.P6535712753270737895

namespace A131198

/-- `A090181(n+1)+A000007(n)` -/
def P6535712753270737895.Spec : Prop :=
  ∀ n, P6535712753270737895.a n = A131198 n

end A131198

/-! ## A131198.P4880254013899657958

`A090181(A004277(n)+1-n)`
-/

namespace A131198.P4880254013899657958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090181 (A004277 n + (1 - (n : ℤ))).toNat

end

end A131198.P4880254013899657958

namespace A131198

/-- `A090181(A004277(n)+1-n)` -/
def P4880254013899657958.Spec : Prop :=
  ∀ n, P4880254013899657958.a n = A131198 n

end A131198

/-! ## A131198.P11788335212132575268

`A090181(1-(A000007(n)-n))`
-/

namespace A131198.P11788335212132575268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090181 (1 - (A000007 n - (n : ℤ))).toNat

end

end A131198.P11788335212132575268

namespace A131198

/-- `A090181(1-(A000007(n)-n))` -/
def P11788335212132575268.Spec : Prop :=
  ∀ n, P11788335212132575268.a n = A131198 n

end A131198

/-! ## A131198.P607386463755398869

`A090181(1-(n-A004277(n)))`
-/

namespace A131198.P607386463755398869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090181 (1 - ((n : ℤ) - A004277 n)).toNat

end

end A131198.P607386463755398869

namespace A131198

/-- `A090181(1-(n-A004277(n)))` -/
def P607386463755398869.Spec : Prop :=
  ∀ n, P607386463755398869.a n = A131198 n

end A131198

/-! ## A131198.P5322680762211196366

`A090181(2-(A057427(n)-n))`
-/

namespace A131198.P5322680762211196366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090181 (2 - (A057427 n - (n : ℤ))).toNat

end

end A131198.P5322680762211196366

namespace A131198

/-- `A090181(2-(A057427(n)-n))` -/
def P5322680762211196366.Spec : Prop :=
  ∀ n, P5322680762211196366.a n = A131198 n

end A131198

/-! ## A131198.P2207774807973556802

`A090181(A154955(n+2)+n+1)`
-/

namespace A131198.P2207774807973556802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090181 (A154955 (n + 2) + (n + 1 : ℤ)).toNat

end

end A131198.P2207774807973556802

namespace A131198

/-- `A090181(A154955(n+2)+n+1)` -/
def P2207774807973556802.Spec : Prop :=
  ∀ n, P2207774807973556802.a n = A131198 n

end A131198

/-!
# A131199: a(0)=2. For n>=1, a(n) = a(n-1) + n if a(n-1) is composite; a(n) = a(n-1)*n if a(n-1) is prime.

The programs for A131199, there is no canonical definition to state claims against.
-/

/-! ## A131199.P18320800236362141365

`A324671(A000217(n))+A067095(n+1)`
-/

namespace A131199.P18320800236362141365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324671 (A000217 n).toNat + A067095 (n + 1)

end

end A131199.P18320800236362141365

