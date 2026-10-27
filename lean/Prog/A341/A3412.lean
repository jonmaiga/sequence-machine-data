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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C038
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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
# A341203: Number of ways to write n as an ordered sum of 6 nonzero decimal palindromes.

The programs for A341203, there is no canonical definition to state claims against.
-/

/-! ## A341203.P13888347743244539099

`record[A143130(∑[A047996(n)])]`
-/

namespace A341203.P13888347743244539099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143130 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341203.P13888347743244539099

/-! ## A341203.P10868094181547454070

`record[A143130(∑[A117274(n)])]`
-/

namespace A341203.P10868094181547454070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117274 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143130 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341203.P10868094181547454070

/-! ## A341203.P200861623854552005

`record[A143130(∑[A239140(n+1)])]`
-/

namespace A341203.P200861623854552005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239140 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143130 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341203.P200861623854552005

/-! ## A341203.P8293544581768036377

`record[A143130(n+1)%A051435(n)]`
-/

namespace A341203.P8293544581768036377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143130 (n + 1)) (A051435 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341203.P8293544581768036377

/-! ## A341203.P5894791610360489706

`record[A143130(∑[A004438(n+1)-n])]`
-/

namespace A341203.P5894791610360489706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004438 (n + 1) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143130 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341203.P5894791610360489706

/-!
# A341204: Number of ways to write n as an ordered sum of 7 nonzero decimal palindromes.

The programs for A341204, there is no canonical definition to state claims against.
-/

/-! ## A341204.P12166203699723375383

`A023032(n+7)+A007949(A035244(n))`
-/

namespace A341204.P12166203699723375383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023032 (n + 7) + A007949 (A035244 n).toNat

end

end A341204.P12166203699723375383

/-! ## A341204.P16330828496976257421

`A144597(A000108(n))+A023032(n+7)`
-/

namespace A341204.P16330828496976257421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144597 (A000108 n).toNat + A023032 (n + 7)

end

end A341204.P16330828496976257421

/-! ## A341204.P12593831737966804377

`A088950(A088956(n))+A023032(n+7)`
-/

namespace A341204.P12593831737966804377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088950 (A088956 n).toNat + A023032 (n + 7)

end

end A341204.P12593831737966804377

/-! ## A341204.P8213161240578138587

`A335510(A001588(n)²)+A023032(n+7)`
-/

namespace A341204.P8213161240578138587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335510 (A001588 n ^ 2).toNat + A023032 (n + 7)

end

end A341204.P8213161240578138587

/-! ## A341204.P153376817761850224

`A023032(n+7)+A010051(A347581(n+1))`
-/

namespace A341204.P153376817761850224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023032 (n + 7) + A010051 (A347581 (n + 1)).toNat

end

end A341204.P153376817761850224

/-!
# A341205: Number of ways to write n as an ordered sum of 8 nonzero decimal palindromes.

The programs for A341205, there is no canonical definition to state claims against.
-/

/-! ## A341205.P2373274443694736710

`A253786(A007716(n))+A008490(n)`
-/

namespace A341205.P2373274443694736710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253786 (A007716 n).toNat + A008490 n

end

end A341205.P2373274443694736710

/-! ## A341205.P11216144698027115392

`A036872(A085908(n+1))+A008490(n)`
-/

namespace A341205.P11216144698027115392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036872 (A085908 (n + 1)).toNat + A008490 n

end

end A341205.P11216144698027115392

/-! ## A341205.P8475831657290262262

`A000580(n+7)-A127886(A008861(n))`
-/

namespace A341205.P8475831657290262262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) - A127886 (A008861 n).toNat

end

end A341205.P8475831657290262262

/-! ## A341205.P1772652679125831623

`A000580(n+7)-A137579(A000579(n))`
-/

namespace A341205.P1772652679125831623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) - A137579 (A000579 n).toNat

end

end A341205.P1772652679125831623

/-! ## A341205.P5255994033254856865

`A185238(A128099(2*n+3))+A008490(n)`
-/

namespace A341205.P5255994033254856865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (A128099 (2 * n + 3)).toNat + A008490 n

end

end A341205.P5255994033254856865

/-!
# A341206: Number of ways to write n as an ordered sum of 9 nonzero decimal palindromes.

The programs for A341206, there is no canonical definition to state claims against.
-/

/-! ## A341206.P3385273081620791441

`A024360(A038319(n))+C(n+8, 8)-C(n, 8)`
-/

namespace A341206.P3385273081620791441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024360 (A038319 n).toNat + ((Nat.choose (n + 8) 8 : ℤ) - (Nat.choose n 8 : ℤ))

end

end A341206.P3385273081620791441

/-! ## A341206.P4977586098850038499

`A333382(A052303(n))+C(n+8, 8)-C(n, 8)`
-/

namespace A341206.P4977586098850038499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (A052303 n).toNat + ((Nat.choose (n + 8) 8 : ℤ) - (Nat.choose n 8 : ℤ))

end

end A341206.P4977586098850038499

/-! ## A341206.P1455880394564074744

`A055641(A000108(n))+A008501(n)`
-/

namespace A341206.P1455880394564074744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A000108 n).toNat + A008501 n

end

end A341206.P1455880394564074744

/-! ## A341206.P1383906091187774834

`A024360(A038319(n))+A008501(n)`
-/

namespace A341206.P1383906091187774834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024360 (A038319 n).toNat + A008501 n

end

end A341206.P1383906091187774834

/-! ## A341206.P13642551859908544034

`A036872(A085908(n+1))+A008501(n)`
-/

namespace A341206.P13642551859908544034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036872 (A085908 (n + 1)).toNat + A008501 n

end

end A341206.P13642551859908544034

/-!
# A341207: Number of ways to write n as an ordered sum of 10 nonzero decimal palindromes.

The programs for A341207, there is no canonical definition to state claims against.
-/

/-! ## A341207.P15408714481517506094

`A008492(n)-A029834(A008502(n))`
-/

namespace A341207.P15408714481517506094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008492 n - A029834 (A008502 n).toNat

end

end A341207.P15408714481517506094

/-! ## A341207.P12673281831793487881

`A023035(n)-A029834(A008502(n))`
-/

namespace A341207.P12673281831793487881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023035 (n + 10) - A029834 (A008502 n).toNat

end

end A341207.P12673281831793487881

/-! ## A341207.P16854544874366695490

`A008492(n)-A010894(A313681(n))`
-/

namespace A341207.P16854544874366695490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008492 n - A010894 ((A313681 n).toNat + 21)

end

end A341207.P16854544874366695490

/-! ## A341207.P2763449722306718486

`A023035(n)-A010894(A313681(n))`
-/

namespace A341207.P2763449722306718486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023035 (n + 10) - A010894 ((A313681 n).toNat + 21)

end

end A341207.P2763449722306718486

/-! ## A341207.P16284244797596297163

`xor(A008492(n), A185284(A161680(n)))`
-/

namespace A341207.P16284244797596297163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008492 n) (A185284 (A161680 n).toNat)

end

end A341207.P16284244797596297163

/-!
# A341208: a(n) = F(n+4) * F(n+1) - 4 * (-1)^n where F(n) = A000045(n) are the Fibonacci numbers.

The programs for A341208, the canonical program `A341208.P9618019616997038028` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341208 has offset 1).

The definition of A341208 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+5)*A000045(n+2)-4*(-1)^(n+1)` (program `A341208.P9618019616997038028`, by `A341208.P9618019616997038028.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A341208.P9618019616997038028

`A000045(n+5)*A000045(n+2)-4*(-1)^(n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A341208

/-- `A000045(n+5)*A000045(n+2)-4*(-1)^(n+1)` -/
def P9618019616997038028.Spec : Prop :=
  ∀ n, P9618019616997038028.a n = A341208 (n + 1)

theorem P9618019616997038028.correct : P9618019616997038028.Spec := by
  intro n
  simp only [A341208, Nat.add_sub_cancel]

end A341208

/-! ## A341208.P15571245134783756415

`ogf((9-6x+x^2)/(1-2x-2x^2+x^3))`
-/

namespace A341208.P15571245134783756415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, -6, 1] [1, -2, -2, 1] n

end

end A341208.P15571245134783756415

namespace A341208

/-- `ogf((9-6x+x^2)/(1-2x-2x^2+x^3))` -/
def P15571245134783756415.Spec : Prop :=
  ∀ n, P15571245134783756415.a n = A341208 (n + 1)

end A341208

/-! ## A341208.P4083067955649427684

`A001906(n+3)-a(n-1)` with `a(0)=9`
-/

namespace A341208.P4083067955649427684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  A001906 (n + 3) - a (n - 1)

end

end A341208.P4083067955649427684

namespace A341208

/-- `A001906(n+3)-a(n-1)` -/
def P4083067955649427684.Spec : Prop :=
  ∀ n, P4083067955649427684.a n = A341208 (n + 1)

end A341208

/-! ## A341208.P5394091244435658508

`A000045(2*(n+3))-a(n-1)` with `a(0)=9`
-/

namespace A341208.P5394091244435658508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  A000045 (2 * (n + 3)) - a (n - 1)

end

end A341208.P5394091244435658508

namespace A341208

/-- `A000045(2*(n+3))-a(n-1)` -/
def P5394091244435658508.Spec : Prop :=
  ∀ n, P5394091244435658508.a n = A341208 (n + 1)

end A341208

/-! ## A341208.P4393860176888039015

`A069960(n+1)-A001519(n)`
-/

namespace A341208.P4393860176888039015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069960 (n + 1) - A001519 n

end

end A341208.P4393860176888039015

namespace A341208

/-- `A069960(n+1)-A001519(n)` -/
def P4393860176888039015.Spec : Prop :=
  ∀ n, P4393860176888039015.a n = A341208 (n + 1)

end A341208

/-! ## A341208.P6598915896011640224

`A192919(n+2)+A033999(n)`
-/

namespace A341208.P6598915896011640224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192919 (n + 2) + A033999 n

end

end A341208.P6598915896011640224

namespace A341208

/-- `A192919(n+2)+A033999(n)` -/
def P6598915896011640224.Spec : Prop :=
  ∀ n, P6598915896011640224.a n = A341208 (n + 1)

end A341208

/-! ## A341208.P18413185774922314528

`A192917(n+1)+A192878(n)+A054492(n)`
-/

namespace A341208.P18413185774922314528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192917 (n + 1) + (A192878 n + A054492 n)

end

end A341208.P18413185774922314528

namespace A341208

/-- `A192917(n+1)+A192878(n)+A054492(n)` -/
def P18413185774922314528.Spec : Prop :=
  ∀ n, P18413185774922314528.a n = A341208 (n + 1)

end A341208

/-! ## A341208.P14755760719007475849

`A059929(n+1)+A121801(n+2)+A033999(n)`
-/

namespace A341208.P14755760719007475849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059929 (n + 1) + (A121801 (n + 2) + A033999 n)

end

end A341208.P14755760719007475849

namespace A341208

/-- `A059929(n+1)+A121801(n+2)+A033999(n)` -/
def P14755760719007475849.Spec : Prop :=
  ∀ n, P14755760719007475849.a n = A341208 (n + 1)

end A341208

/-! ## A341208.P17543750424899766265

`A000045(2*n)+A000045(n+1)*A022114(n+1)`
-/

namespace A341208.P17543750424899766265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) + A000045 (n + 1) * A022114 (n + 1)

end

end A341208.P17543750424899766265

namespace A341208

/-- `A000045(2*n)+A000045(n+1)*A022114(n+1)` -/
def P17543750424899766265.Spec : Prop :=
  ∀ n, P17543750424899766265.a n = A341208 (n + 1)

end A341208

/-! ## A341208.P12675457301957751664

`A000045(n+1)*A022382(n+1)-A000045(2*n+1)`
-/

namespace A341208.P12675457301957751664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A022382 (n + 1) - A000045 (2 * n + 1)

end

end A341208.P12675457301957751664

namespace A341208

/-- `A000045(n+1)*A022382(n+1)-A000045(2*n+1)` -/
def P12675457301957751664.Spec : Prop :=
  ∀ n, P12675457301957751664.a n = A341208 (n + 1)

end A341208

/-! ## A341208.P50075686565217858

`Δ[A338225(n+1)]`
-/

namespace A341208.P50075686565217858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341208.P50075686565217858

namespace A341208

/-- `Δ[A338225(n+1)]` -/
def P50075686565217858.Spec : Prop :=
  ∀ n, P50075686565217858.a n = A341208 (n + 1)

end A341208

/-! ## A341208.P10082998086231158166

`Δ[Δ[A226205(n+3)]]`
-/

namespace A341208.P10082998086231158166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226205 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341208.P10082998086231158166

namespace A341208

/-- `Δ[Δ[A226205(n+3)]]` -/
def P10082998086231158166.Spec : Prop :=
  ∀ n, P10082998086231158166.a n = A341208 (n + 1)

end A341208

/-! ## A341208.P3257788009709395191

`Δ[A080144(n)+A000034(n)]`
-/

namespace A341208.P3257788009709395191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080144 n + A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341208.P3257788009709395191

namespace A341208

/-- `Δ[A080144(n)+A000034(n)]` -/
def P3257788009709395191.Spec : Prop :=
  ∀ n, P3257788009709395191.a n = A341208 (n + 1)

end A341208

/-! ## A341208.P1370428965997396003

`A338225(n+2)-A338225(n+1)`
-/

namespace A341208.P1370428965997396003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338225 (n + 2) - A338225 (n + 1)

end

end A341208.P1370428965997396003

namespace A341208

/-- `A338225(n+2)-A338225(n+1)` -/
def P1370428965997396003.Spec : Prop :=
  ∀ n, P1370428965997396003.a n = A341208 (n + 1)

end A341208

/-! ## A341208.P9587962320698065063

`Δ[Δ[A000045(n+1)*A000045(n+4)]]`
-/

namespace A341208.P9587962320698065063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A000045 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341208.P9587962320698065063

namespace A341208

/-- `Δ[Δ[A000045(n+1)*A000045(n+4)]]` -/
def P9587962320698065063.Spec : Prop :=
  ∀ n, P9587962320698065063.a n = A341208 (n + 1)

end A341208

/-! ## A341208.P2311318656579641902

`Δ[Δ[A070550(2*n+1)+A070550(2*n)]]`
-/

namespace A341208.P2311318656579641902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070550 (2 * n + 1) + A070550 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341208.P2311318656579641902

namespace A341208

/-- `Δ[Δ[A070550(2*n+1)+A070550(2*n)]]` -/
def P2311318656579641902.Spec : Prop :=
  ∀ n, P2311318656579641902.a n = A341208 (n + 1)

end A341208

/-! ## A341208.P1056433641291113962

`A020695(n+1)*A022087(n+1)-A020695(2*n+1)`
-/

namespace A341208.P1056433641291113962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (n + 1) * A022087 (n + 1) - A020695 (2 * n + 1)

end

end A341208.P1056433641291113962

namespace A341208

/-- `A020695(n+1)*A022087(n+1)-A020695(2*n+1)` -/
def P1056433641291113962.Spec : Prop :=
  ∀ n, P1056433641291113962.a n = A341208 (n + 1)

end A341208

/-! ## A341208.P13598044947931245878

`Δ[Δ[Δ[A007598(n+2)]]]`
-/

namespace A341208.P13598044947931245878
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341208.P13598044947931245878

namespace A341208

/-- `Δ[Δ[Δ[A007598(n+2)]]]` -/
def P13598044947931245878.Spec : Prop :=
  ∀ n, P13598044947931245878.a n = A341208 (n + 1)

end A341208

/-! ## A341208.P12266815469328759242

`Δ[Δ[Δ[A245306(n+2)]]]`
-/

namespace A341208.P12266815469328759242
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245306 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341208.P12266815469328759242

namespace A341208

/-- `Δ[Δ[Δ[A245306(n+2)]]]` -/
def P12266815469328759242.Spec : Prop :=
  ∀ n, P12266815469328759242.a n = A341208 (n + 1)

end A341208

/-! ## A341208.P63698968747172739

`Δ[Δ[Δ[A000045(n+2)²]]]`
-/

namespace A341208.P63698968747172739
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341208.P63698968747172739

namespace A341208

/-- `Δ[Δ[Δ[A000045(n+2)²]]]` -/
def P63698968747172739.Spec : Prop :=
  ∀ n, P63698968747172739.a n = A341208 (n + 1)

end A341208

/-!
# A341209: a(n) = (n^3 + 6*n^2 + 17*n + 6)/6.

The programs for A341209, the canonical program `A341209.P10503070710234483258` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341209 has offset 0).

The definition of A341209 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^3+6*n²+17*n+6)/6` (program `A341209.P13997526079991487498`, by `A341209.P13997526079991487498.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A341209.P3632869735625378205

`n*(n*(n+6)+17)/6+1`
-/

namespace A341209.P3632869735625378205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n * (n + 6) + 17) : ℚ) / 6 + 1

end

end A341209.P3632869735625378205

namespace A341209

/-- `n*(n*(n+6)+17)/6+1` -/
def P3632869735625378205.Spec : Prop :=
  ∀ n, P3632869735625378205.a n = (A341209 n : ℚ)

theorem P3632869735625378205.correct : P3632869735625378205.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A341209, Nat.add_sub_cancel, A341209.P3632869735625378205.a, A341209.P10503070710234483258.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A341209, Nat.add_sub_cancel, A341209.P3632869735625378205.a, A341209.P10503070710234483258.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A341209

/-! ## A341209.P13997526079991487498

`(n^3+6*n²+17*n+6)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341209.P13997526079991487498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 3 + 6 * n ^ 2 + 17 * n + 6 : ℚ) / 6

end

end A341209.P13997526079991487498

namespace A341209

/-- `(n^3+6*n²+17*n+6)/6` -/
def P13997526079991487498.Spec : Prop :=
  ∀ n, P13997526079991487498.a n = (A341209 n : ℚ)

theorem P13997526079991487498.correct : P13997526079991487498.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A341209, Nat.add_sub_cancel, A341209.P13997526079991487498.a, A341209.P10503070710234483258.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A341209, Nat.add_sub_cancel, A341209.P13997526079991487498.a, A341209.P10503070710234483258.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A341209

/-! ## A341209.P3691284425231057846

`abs(∑[∑[xor(n, -1)]]-n)`
-/

namespace A341209.P3691284425231057846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A341209.P3691284425231057846

namespace A341209

/-- `abs(∑[∑[xor(n, -1)]]-n)` -/
def P3691284425231057846.Spec : Prop :=
  ∀ n, P3691284425231057846.a n = A341209 n

end A341209

/-! ## A341209.P8022188562609927709

`floor((n+1)²+a(n-2)+2)` with `a(0)=1, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A341209.P8022188562609927709
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  (n + 1) ^ 2 + (a (n - 2) + 2)

end

end A341209.P8022188562609927709

namespace A341209

/-- `floor((n+1)²+a(n-2)+2)` -/
def P8022188562609927709.Spec : Prop :=
  ∀ n, (P8022188562609927709.a n : ℤ) = A341209 n

end A341209

/-! ## A341209.P11122358571935022413

`∑[2*n-(n-1-a(n-1))]` with `a(0)=1, a(1)=4`
-/

namespace A341209.P11122358571935022413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  (2 * n : ℤ) - ((n : ℤ) - 1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341209.P11122358571935022413

namespace A341209

/-- `∑[2*n-(n-1-a(n-1))]` -/
def P11122358571935022413.Spec : Prop :=
  ∀ n, P11122358571935022413.a n = A341209 n

end A341209

/-! ## A341209.P10503070710234483258

`floor(2*a(n-1)+n+1-a(n-2))` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A341209

/-- `floor(2*a(n-1)+n+1-a(n-2))` -/
def P10503070710234483258.Spec : Prop :=
  ∀ n, P10503070710234483258.a n = A341209 n

theorem P10503070710234483258.correct : P10503070710234483258.Spec := by
  intro n
  simp only [A341209]

end A341209

/-! ## A341209.P5969010916613694285

`floor(a(n-1)+a(n-1)+n+1-a(n-2))` with `a(0)=1, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A341209.P5969010916613694285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) + (a (n - 1) + (n + 1 : ℤ) - a (n - 2))

end

end A341209.P5969010916613694285

namespace A341209

/-- `floor(a(n-1)+a(n-1)+n+1-a(n-2))` -/
def P5969010916613694285.Spec : Prop :=
  ∀ n, P5969010916613694285.a n = A341209 n

theorem P5969010916613694285.correct : P5969010916613694285.Spec := by
  intro n
  simp only [A341209, Nat.add_sub_cancel, A341209.P5969010916613694285.a, A341209.P10503070710234483258.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A341209

/-! ## A341209.P17865061749839602472

`∑[A134869(n+1)]`
-/

namespace A341209.P17865061749839602472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341209.P17865061749839602472

namespace A341209

/-- `∑[A134869(n+1)]` -/
def P17865061749839602472.Spec : Prop :=
  ∀ n, P17865061749839602472.a n = A341209 n

end A341209

/-! ## A341209.P17538940496732443496

`∑[A253145(n)+1]`
-/

namespace A341209.P17538940496732443496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341209.P17538940496732443496

namespace A341209

/-- `∑[A253145(n)+1]` -/
def P17538940496732443496.Spec : Prop :=
  ∀ n, P17538940496732443496.a n = A341209 n

end A341209

/-! ## A341209.P16036055173780013936

`∑[A133263(n)+n]`
-/

namespace A341209.P16036055173780013936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341209.P16036055173780013936

namespace A341209

/-- `∑[A133263(n)+n]` -/
def P16036055173780013936.Spec : Prop :=
  ∀ n, P16036055173780013936.a n = A341209 n

end A341209

/-! ## A341209.P11128704747752579355

`Δ[A223718(n)-n]`
-/

namespace A341209.P11128704747752579355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223718 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341209.P11128704747752579355

namespace A341209

/-- `Δ[A223718(n)-n]` -/
def P11128704747752579355.Spec : Prop :=
  ∀ n, P11128704747752579355.a n = A341209 n

end A341209

/-! ## A341209.P15177618491599675545

`∑[∑[A254667(n)+1]]`
-/

namespace A341209.P15177618491599675545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341209.P15177618491599675545

namespace A341209

/-- `∑[∑[A254667(n)+1]]` -/
def P15177618491599675545.Spec : Prop :=
  ∀ n, P15177618491599675545.a n = A341209 n

end A341209

/-! ## A341209.P14142410409331330931

`∑[∑[A223134(n)-n]]`
-/

namespace A341209.P14142410409331330931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341209.P14142410409331330931

namespace A341209

/-- `∑[∑[A223134(n)-n]]` -/
def P14142410409331330931.Spec : Prop :=
  ∀ n, P14142410409331330931.a n = A341209 n

end A341209

/-! ## A341209.P4315852642621380924

`A166781(n+1)%A037236(n)`
-/

namespace A341209.P4315852642621380924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166781 (n + 1)) (A037236 n)

end

end A341209.P4315852642621380924

namespace A341209

/-- `A166781(n+1)%A037236(n)` -/
def P4315852642621380924.Spec : Prop :=
  ∀ n, P4315852642621380924.a n = A341209 n

end A341209

/-! ## A341209.P3147109767088953950

`A166805(n+1)%A051744(n+1)`
-/

namespace A341209.P3147109767088953950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166805 (n + 1)) (A051744 (n + 1))

end

end A341209.P3147109767088953950

namespace A341209

/-- `A166805(n+1)%A051744(n+1)` -/
def P3147109767088953950.Spec : Prop :=
  ∀ n, P3147109767088953950.a n = A341209 n

end A341209

/-! ## A341209.P3712348028595971741

`A223764(n+1)%A219846(n+1)`
-/

namespace A341209.P3712348028595971741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223764 (n + 1)) (A219846 (n + 1))

end

end A341209.P3712348028595971741

namespace A341209

/-- `A223764(n+1)%A219846(n+1)` -/
def P3712348028595971741.Spec : Prop :=
  ∀ n, P3712348028595971741.a n = A341209 n

end A341209

/-! ## A341209.P13774410534260979264

`∑[∑[A270059(2*n)]]`
-/

namespace A341209.P13774410534260979264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270059 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341209.P13774410534260979264

namespace A341209

/-- `∑[∑[A270059(2*n)]]` -/
def P13774410534260979264.Spec : Prop :=
  ∀ n, P13774410534260979264.a n = A341209 n

end A341209

/-! ## A341209.P4117402275331901022

`∑[∑[A354779(2*n+1)]]`
-/

namespace A341209.P4117402275331901022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354779 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341209.P4117402275331901022

namespace A341209

/-- `∑[∑[A354779(2*n+1)]]` -/
def P4117402275331901022.Spec : Prop :=
  ∀ n, P4117402275331901022.a n = A341209 n

end A341209

/-! ## A341209.P12960825163871951796

`∑[record[A347629(n+2)]]`
-/

namespace A341209.P12960825163871951796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347629 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341209.P12960825163871951796

namespace A341209

/-- `∑[record[A347629(n+2)]]` -/
def P12960825163871951796.Spec : Prop :=
  ∀ n, P12960825163871951796.a n = A341209 n

end A341209

/-! ## A341209.P12882028816527304356

`∑[record[A286235(n+3)]]`
-/

namespace A341209.P12882028816527304356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286235 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341209.P12882028816527304356

namespace A341209

/-- `∑[record[A286235(n+3)]]` -/
def P12882028816527304356.Spec : Prop :=
  ∀ n, P12882028816527304356.a n = A341209 n

end A341209

/-!
# A341210: Primes p such that (p^16 + 1)/2 is prime.

The programs for A341210, there is no canonical definition to state claims against.
-/

/-! ## A341210.P4402348864764189865

`p?[A104479(n+1)]`
-/

namespace A341210.P4402348864764189865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A341210.P4402348864764189865

/-! ## A341210.P9098164784158887406

`p?[record[A104479(A126759(n))]]`
-/

namespace A341210.P9098164784158887406
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104479 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A341210.P9098164784158887406

/-! ## A341210.P2058114732452464086

`p?[record[A104479(A286551(n))]]`
-/

namespace A341210.P2058114732452464086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104479 (A286551 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A341210.P2058114732452464086

/-! ## A341210.P4083607529810427220

`record[A020639(A104479(n+3))]`
-/

namespace A341210.P4083607529810427220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A104479 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341210.P4083607529810427220

/-! ## A341210.P14317973239544503672

`filter[A104479(n+1), A010051(#)]`
-/

namespace A341210.P14317973239544503672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A341210.P14317973239544503672

/-!
# A341211: Smallest prime p such that (p^(2^n) + 1)/2 is prime.

The programs for A341211, there is no canonical definition to state claims against.
-/

/-! ## A341211.P16974599678183509567

`or(A275530(n), A304038(A084422(n)))`
-/

namespace A341211.P16974599678183509567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A275530 n) (A304038 (A084422 n).toNat)

end

end A341211.P16974599678183509567

/-! ## A341211.P11586219089139540987

`or(A275530(n), A293668(A275527(n+1)))`
-/

namespace A341211.P11586219089139540987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A275530 n) (A293668 (A275527 (n + 1)).toNat)

end

end A341211.P11586219089139540987

/-! ## A341211.P6765700142368475161

`or(A275491(A275514(3*n+4)), A275530(n))`
-/

namespace A341211.P6765700142368475161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A275491 (A275514 (3 * n + 4)).toNat) (A275530 n)

end

end A341211.P6765700142368475161

/-! ## A341211.P7618153538038504588

`A120133(((n+1)/∏{p}[n+1, #])^∏{p}[n+1, #²+1])`
-/

namespace A341211.P7618153538038504588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120133 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)) ^ (∏ p ∈ Nat.primeFactors (f2 n), (p ^ 2 + 1)))).toNat

end

end A341211.P7618153538038504588

/-!
# A341215: Primes p such that 2*p+3*q and 3*p+2*q are prime, where q is the next prime after p.

The programs for A341215, there is no canonical definition to state claims against.
-/

/-! ## A341215.P11705813247506573891

`p?[A089401(3*n+2)-7]`
-/

namespace A341215.P11705813247506573891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089401 (3 * n + 2) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A341215.P11705813247506573891

/-! ## A341215.P8651987548545612585

`record[A364564(A273367(n+1))]`
-/

namespace A341215.P8651987548545612585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364564 (A273367 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341215.P8651987548545612585

/-! ## A341215.P10830815754548837396

`p?[A309590(A143584(n+1))]`
-/

namespace A341215.P10830815754548837396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309590 (A143584 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A341215.P10830815754548837396

/-! ## A341215.P13522579953025672913

`p?[n*A072802(A072794(n))]`
-/

namespace A341215.P13522579953025672913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A072802 (A072794 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A341215.P13522579953025672913

/-! ## A341215.P2170030341032945310

`record[abs(A080332(A104214(n+1)))]`
-/

namespace A341215.P2170030341032945310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080332 (A104214 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341215.P2170030341032945310

/-!
# A341216: Triangle read by columns T(n,k) k > n >= 1: Last survivor positions in a modified Josephus problem for n numbers, where after each deletion the counting starts over at the lowest existing number n, rather than continuing from the current position.

The programs for A341216, there is no canonical definition to state claims against.
-/

/-! ## A341216.P1461888037205043957

`A078401(A014132(n+1))%A006218(A079705(n+1))`
-/

namespace A341216.P1461888037205043957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078401 (A014132 (n + 1)).toNat) (A006218 (A079705 (n + 1)).toNat)

end

end A341216.P1461888037205043957

/-! ## A341216.P16336197347273597279

`A078401(A014132(n+1))%A016114(n+1)`
-/

namespace A341216.P16336197347273597279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078401 (A014132 (n + 1)).toNat) (A016114 (n + 1))

end

end A341216.P16336197347273597279

/-! ## A341216.P10784961827166260248

`A261363(n)+A000989(A058276(n))`
-/

namespace A341216.P10784961827166260248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261363 n + A000989 (A058276 n).toNat

end

end A341216.P10784961827166260248

/-! ## A341216.P14730335006167334589

`A078401(lt[A323169(n+1), A194672(n)])`
-/

namespace A341216.P14730335006167334589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078401 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A341216.P14730335006167334589

/-! ## A341216.P1967060877511544148

`A095684(A282537(n)+A016885(n))+A000989(A058276(n))`
-/

namespace A341216.P1967060877511544148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095684 (A282537 n + A016885 n).toNat + A000989 (A058276 n).toNat

end

end A341216.P1967060877511544148

/-!
# A341218: a(n) is the number of numbers k such that A340873(k) = n.

The programs for A341218, there is no canonical definition to state claims against.
-/

/-! ## A341218.P4444576617452164868

`A002024(A392349(n))`
-/

namespace A341218.P4444576617452164868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A392349 n).toNat

end

end A341218.P4444576617452164868

/-! ## A341218.P3243088262663201132

`A103128(A270879(n)+1)`
-/

namespace A341218.P3243088262663201132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A270879 n + 1).toNat

end

end A341218.P3243088262663201132

/-! ## A341218.P10983786265667317084

`A002024(A005710(3*n))`
-/

namespace A341218.P10983786265667317084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A005710 (3 * n)).toNat

end

end A341218.P10983786265667317084

/-! ## A341218.P6585427322836980945

`A103128(or(1, A270879(n)))`
-/

namespace A341218.P6585427322836980945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (Int.lor 1 (A270879 n)).toNat

end

end A341218.P6585427322836980945

/-! ## A341218.P14127737364921851445

`A003056(round(sqrt(A308274(n))))`
-/

namespace A341218.P14127737364921851445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.roundAway (Real.sqrt (A308274 n : ℝ))).toNat

end

end A341218.P14127737364921851445

/-!
# A341219: Number of well-connected free polyominoes with n cells, where a polyomino is defined as well-connected if, for all the squares it contains, the removal of that single square would result in an intact polyomino.

The programs for A341219, there is no canonical definition to state claims against.
-/

/-! ## A341219.P6994515070269412874

`A170973(A009910(n)%A182522(n))`
-/

namespace A341219.P6994515070269412874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170973 (Int.tmod (A009910 n) (A182522 n)).toNat

end

end A341219.P6994515070269412874

/-! ## A341219.P16608604719644185909

`A170980(A130781(n)%A129017(n))`
-/

namespace A341219.P16608604719644185909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170980 (Int.tmod (A130781 n) (A129017 n)).toNat

end

end A341219.P16608604719644185909

/-! ## A341219.P16101320254111374396

`A230425(A169970(n)+A070868(n+3))`
-/

namespace A341219.P16101320254111374396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230425 (A169970 n + A070868 (n + 3)).toNat

end

end A341219.P16101320254111374396

/-! ## A341219.P13048901399991489348

`A341024(A185217(n)*A228354(n+3))`
-/

namespace A341219.P13048901399991489348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341024 ((A185217 n * A228354 (n + 3)).toNat + 84)

end

end A341219.P13048901399991489348

/-! ## A341219.P18146242245403558218

`xor(A053575(n+1), A336469(A081908(n)))`
-/

namespace A341219.P18146242245403558218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A053575 (n + 1)) (A336469 (A081908 n).toNat)

end

end A341219.P18146242245403558218

/-!
# A341221: Expansion of (-1 + Product_{k>=1} 1 / (1 - x^k))^3.

The programs for A341221, there is no canonical definition to state claims against.
-/

/-! ## A341221.P528525617543240445

`A060642(∑[n+2]+4)`
-/

namespace A341221.P528525617543240445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A341221.P528525617543240445

/-! ## A341221.P3939892466052295050

`lcm(gcd(3, n+1), A060642(A016028(n+5)))`
-/

namespace A341221.P3939892466052295050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.gcd 3 (n + 1) : ℤ) (A060642 (A016028 (n + 5)).toNat)

end

end A341221.P3939892466052295050

/-! ## A341221.P10502101621717034945

`A060642(A016028(n+5))%A130620(n)`
-/

namespace A341221.P10502101621717034945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060642 (A016028 (n + 5)).toNat) (A130620 n)

end

end A341221.P10502101621717034945

/-! ## A341221.P17069344494249944848

`or(A000007(n), A060642(A055998(n)+6))`
-/

namespace A341221.P17069344494249944848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A060642 (A055998 n + 6).toNat)

end

end A341221.P17069344494249944848

/-! ## A341221.P4685521776213883775

`A060642(A055998(n)+6)+A000007(n+1)`
-/

namespace A341221.P4685521776213883775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A055998 n + 6).toNat + A000007 (n + 1)

end

end A341221.P4685521776213883775

/-! ## A341221.P9002757054208626011

`A060642(A055998(n)+6)+A000035(2*n)`
-/

namespace A341221.P9002757054208626011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A055998 n + 6).toNat + A000035 (2 * n)

end

end A341221.P9002757054208626011

/-! ## A341221.P6073498412958388597

`A060642(A055998(n)+6)^A014963(A001749(n+1))`
-/

namespace A341221.P6073498412958388597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060642 (A055998 n + 6).toNat : ℚ) ^ (A014963 (A001749 (n + 1)).toNat : ℤ)

end

end A341221.P6073498412958388597

/-!
# A341222: Expansion of (-1 + Product_{k>=1} 1 / (1 - x^k))^4.

The programs for A341222, there is no canonical definition to state claims against.
-/

/-! ## A341222.P17218717306396378565

`A060642(A052905(n)+9)`
-/

namespace A341222.P17218717306396378565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A052905 n + 9).toNat

end

end A341222.P17218717306396378565

/-! ## A341222.P3569986979035314011

`A060642(A055999(n)+10)`
-/

namespace A341222.P3569986979035314011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A055999 n + 10).toNat

end

end A341222.P3569986979035314011

/-! ## A341222.P18048120809938694587

`A060642(A167614(n+2)+1)`
-/

namespace A341222.P18048120809938694587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A167614 (n + 2) + 1).toNat

end

end A341222.P18048120809938694587

/-! ## A341222.P7563446480843061881

`A060642(A167499(n+2)-1)`
-/

namespace A341222.P7563446480843061881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A167499 (n + 2) - 1).toNat

end

end A341222.P7563446480843061881

/-! ## A341222.P1034840385909472099

`A060642(A166136(n+2)-2)`
-/

namespace A341222.P1034840385909472099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A166136 (n + 2) - 2).toNat

end

end A341222.P1034840385909472099

/-! ## A341222.P11642855028869776587

`A060642(A000124(n+3)+3)`
-/

namespace A341222.P11642855028869776587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A000124 (n + 3) + 3).toNat

end

end A341222.P11642855028869776587

/-! ## A341222.P14209102153122614117

`A060642(A000096(n+2)+5)`
-/

namespace A341222.P14209102153122614117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A000096 (n + 2) + 5).toNat

end

end A341222.P14209102153122614117

/-! ## A341222.P4680553753302742070

`A060642(A000217(n+3)+4)`
-/

namespace A341222.P4680553753302742070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A000217 (n + 3) + 4).toNat

end

end A341222.P4680553753302742070

/-! ## A341222.P8035608597585666922

`A060642(A034856(n+2)+6)`
-/

namespace A341222.P8035608597585666922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A034856 (n + 2) + 6).toNat

end

end A341222.P8035608597585666922

/-! ## A341222.P6095937386666327860

`A060642(A166136(n+1)+1+n)`
-/

namespace A341222.P6095937386666327860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A341222.P6095937386666327860

/-!
# A341223: Expansion of (-1 + Product_{k>=1} 1 / (1 - x^k))^5.

The programs for A341223, there is no canonical definition to state claims against.
-/

/-! ## A341223.P10863773425682305247

`record[A060642(∑[n+1]+5)]`
-/

namespace A341223.P10863773425682305247
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (∑ j ∈ Finset.range (n + 1), f2 j + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341223.P10863773425682305247

/-! ## A341223.P16938231701846712189

`A060642(A167499(n+3))`
-/

namespace A341223.P16938231701846712189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A167499 (n + 3)).toNat

end

end A341223.P16938231701846712189

/-! ## A341223.P16881413818424108726

`A060642(A000217(n+4)+5)`
-/

namespace A341223.P16881413818424108726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A000217 (n + 4) + 5).toNat

end

end A341223.P16881413818424108726

/-! ## A341223.P16525721585134838147

`A060642(A027379(n+2)+8)`
-/

namespace A341223.P16525721585134838147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A027379 (n + 2) + 8).toNat

end

end A341223.P16525721585134838147

/-! ## A341223.P35076379412191388

`A060642(A046691(n+2)+9)`
-/

namespace A341223.P35076379412191388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A046691 (n + 2) + 9).toNat

end

end A341223.P35076379412191388

/-!
# A341224: Primes p such that (p^32 + 1)/2 is prime.

The programs for A341224, there is no canonical definition to state claims against.
-/

/-! ## A341224.P7774274307295619792

`A038615(∑[and(23, A057692(n))])`
-/

namespace A341224.P7774274307295619792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 23 (A057692 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A341224.P7774274307295619792

/-!
# A341225: Expansion of (-1 + Product_{k>=1} 1 / (1 - x^k))^6.

The programs for A341225, there is no canonical definition to state claims against.
-/

/-! ## A341225.P12794932080595442310

`A060642(A166136(n+4))`
-/

namespace A341225.P12794932080595442310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A166136 (n + 4)).toNat

end

end A341225.P12794932080595442310

/-! ## A341225.P14511859851820176306

`A060642(A167499(n+4)+1)`
-/

namespace A341225.P14511859851820176306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A167499 (n + 4) + 1).toNat

end

end A341225.P14511859851820176306

/-! ## A341225.P12882033530695191270

`A060642(A167614(n+4)+3)`
-/

namespace A341225.P12882033530695191270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A167614 (n + 4) + 3).toNat

end

end A341225.P12882033530695191270

/-! ## A341225.P6111515472430594291

`A060642(A000124(n+5)+5)`
-/

namespace A341225.P6111515472430594291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A000124 (n + 5) + 5).toNat

end

end A341225.P6111515472430594291

/-! ## A341225.P15915222580921561558

`A060642(A000096(n+4)+7)`
-/

namespace A341225.P15915222580921561558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A000096 (n + 4) + 7).toNat

end

end A341225.P15915222580921561558

/-! ## A341225.P6493290313764817709

`A060642(A000217(n+5)+6)`
-/

namespace A341225.P6493290313764817709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A000217 (n + 5) + 6).toNat

end

end A341225.P6493290313764817709

/-! ## A341225.P9626292565792539205

`A060642(A034856(n+6)-A004273(n+3))`
-/

namespace A341225.P9626292565792539205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A034856 (n + 6) - A004273 (n + 3)).toNat

end

end A341225.P9626292565792539205

/-!
# A341226: Expansion of (-1 + Product_{k>=1} 1 / (1 - x^k))^7.

The programs for A341226, there is no canonical definition to state claims against.
-/

/-! ## A341226.P16652631757977079380

`A060642(A167499(n+5)+2)`
-/

namespace A341226.P16652631757977079380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A167499 (n + 5) + 2).toNat

end

end A341226.P16652631757977079380

/-! ## A341226.P13063354667599261297

`A060642(A167614(n+5)+4)`
-/

namespace A341226.P13063354667599261297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A167614 (n + 5) + 4).toNat

end

end A341226.P13063354667599261297

/-! ## A341226.P1347920185417462530

`A060642(A000124(n+6)+6)`
-/

namespace A341226.P1347920185417462530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A000124 (n + 6) + 6).toNat

end

end A341226.P1347920185417462530

/-! ## A341226.P3408578328472708862

`A060642(A000096(n+5)+8)`
-/

namespace A341226.P3408578328472708862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A000096 (n + 5) + 8).toNat

end

end A341226.P3408578328472708862

/-! ## A341226.P16600481600369507899

`A060642(A000217(n+6)+7)`
-/

namespace A341226.P16600481600369507899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A000217 (n + 6) + 7).toNat

end

end A341226.P16600481600369507899

/-!
# A341227: Expansion of (-1 + Product_{k>=1} 1 / (1 - x^k))^8.

The programs for A341227, there is no canonical definition to state claims against.
-/

/-! ## A341227.P7279600302439879208

`A060642(A167614(n+6)+5)`
-/

namespace A341227.P7279600302439879208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A167614 (n + 6) + 5).toNat

end

end A341227.P7279600302439879208

/-! ## A341227.P7283564158463703554

`A060642(A000096(n+6)+9)`
-/

namespace A341227.P7283564158463703554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A000096 (n + 6) + 9).toNat

end

end A341227.P7283564158463703554

/-! ## A341227.P17437515353460999429

`A060642(A000217(n+7)+8)`
-/

namespace A341227.P17437515353460999429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A000217 (n + 7) + 8).toNat

end

end A341227.P17437515353460999429

/-! ## A341227.P13423752728323195981

`A060642(A000124(n+8)-(n+1))`
-/

namespace A341227.P13423752728323195981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A000124 (n + 8) - (n + 1 : ℤ)).toNat

end

end A341227.P13423752728323195981

/-! ## A341227.P14325272409682171022

`A060642(A167499(n+4)+A005843(n+8))`
-/

namespace A341227.P14325272409682171022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A167499 (n + 4) + A005843 (n + 8)).toNat

end

end A341227.P14325272409682171022

/-! ## A341227.P17378019395164938530

`A060642(A034856(n+8)-A004273(n+4))`
-/

namespace A341227.P17378019395164938530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A034856 (n + 8) - A004273 (n + 4)).toNat

end

end A341227.P17378019395164938530

/-!
# A341228: Expansion of (-1 + Product_{k>=1} 1 / (1 - x^k))^9.

The programs for A341228, there is no canonical definition to state claims against.
-/

/-! ## A341228.P5586186337545826174

`A060642(A000124(n+8)+8)`
-/

namespace A341228.P5586186337545826174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A000124 (n + 8) + 8).toNat

end

end A341228.P5586186337545826174

/-! ## A341228.P11848332817168144698

`A060642(A000096(n+7)+10)`
-/

namespace A341228.P11848332817168144698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A000096 (n + 7) + 10).toNat

end

end A341228.P11848332817168144698

/-! ## A341228.P13824817346742570269

`A060642(A000217(n+8)+9)`
-/

namespace A341228.P13824817346742570269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A000217 (n + 8) + 9).toNat

end

end A341228.P13824817346742570269

/-! ## A341228.P10753933954877054278

`A060642(A034856(n+7)+11)`
-/

namespace A341228.P10753933954877054278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A034856 (n + 7) + 11).toNat

end

end A341228.P10753933954877054278

/-! ## A341228.P14232583646889538722

`A060642(A179865(n+11)-10-2*n)`
-/

namespace A341228.P14232583646889538722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A179865 (n + 11) - 10 - (2 * n : ℤ)).toNat

end

end A341228.P14232583646889538722

/-!
# A341231: Irregular triangle read by rows giving trajectory from n to reach 1 under the map A245471.

The programs for A341231, there is no canonical definition to state claims against.
-/

/-! ## A341231.P3872632880123575712

`A347296(A077741(n+1))%16`
-/

namespace A341231.P3872632880123575712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347296 (A077741 (n + 1)).toNat) 16

end

end A341231.P3872632880123575712

/-! ## A341231.P1296001770588821377

`A063435(A076868(n))*A347296(n+1)`
-/

namespace A341231.P1296001770588821377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063435 (A076868 n).toNat * A347296 (n + 1)

end

end A341231.P1296001770588821377

/-! ## A341231.P2029340158628948824

`A063435(A058633(n+1))*A347296(n+1)`
-/

namespace A341231.P2029340158628948824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063435 (A058633 (n + 1)).toNat * A347296 (n + 1)

end

end A341231.P2029340158628948824

/-! ## A341231.P7950748687643530143

`A063435(A270831(n+1))*A347296(n+1)`
-/

namespace A341231.P7950748687643530143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063435 (A270831 (n + 1)).toNat * A347296 (n + 1)

end

end A341231.P7950748687643530143

/-! ## A341231.P9533910637940740607

`A133162(A166341(n+1)²)*A347296(n+1)`
-/

namespace A341231.P9533910637940740607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133162 (A166341 (n + 1) ^ 2).toNat * A347296 (n + 1)

end

end A341231.P9533910637940740607

/-!
# A341232: Numerator of the expected fraction of guests without a napkin in Conway's napkin problem with n guests.

The programs for A341232, there is no canonical definition to state claims against.
-/

/-! ## A341232.P8301135068732872174

`A173379((n+1)/2^val(n+1, 2))%(n^n)`
-/

namespace A341232.P8301135068732872174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173379 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat) (n ^ n : ℤ)

end

end A341232.P8301135068732872174

/-! ## A341232.P16856078867056054702

`A333217(A330470(n))/A245933(n+1)`
-/

namespace A341232.P16856078867056054702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333217 (A330470 n).toNat : ℚ) / (A245933 (n + 1) : ℚ)

end

end A341232.P16856078867056054702

/-!
# A341233: Denominator of the expected fraction of guests without a napkin in Conway's napkin problem with n guests.

The programs for A341233, there is no canonical definition to state claims against.
-/

/-! ## A341233.P7781203212970528871

`A000203(lcm(A136766(n), A358990(n)))`
-/

namespace A341233.P7781203212970528871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.lcm (A136766 n) (A358990 n))

end

end A341233.P7781203212970528871

/-! ## A341233.P8557309792423851651

`lcm(or(1, n), A000010(∏[abs(1-3*n)]))`
-/

namespace A341233.P8557309792423851651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (3 * n : ℤ)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.lor 1 n : ℤ) (A000010 (∏ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A341233.P8557309792423851651

/-!
# A341236: Expansion of (-1 + Product_{k>=1} 1 / (1 - x^k))^10.

The programs for A341236, there is no canonical definition to state claims against.
-/

/-! ## A341236.P8882129193188091859

`A060642(A000096(n+8)+11)`
-/

namespace A341236.P8882129193188091859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A000096 (n + 8) + 11).toNat

end

end A341236.P8882129193188091859

/-! ## A341236.P5887825556436697597

`A060642(A000217(n+9)+10)`
-/

namespace A341236.P5887825556436697597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A000217 (n + 9) + 10).toNat

end

end A341236.P5887825556436697597

/-! ## A341236.P6169015375198809194

`A060642(A034856(n+10)-A004273(n+5))`
-/

namespace A341236.P6169015375198809194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A034856 (n + 10) - A004273 (n + 5)).toNat

end

end A341236.P6169015375198809194

/-! ## A341236.P4014391150133003723

`A060642(A167499(n+6)+A005843(n+11))`
-/

namespace A341236.P4014391150133003723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A167499 (n + 6) + A005843 (n + 11)).toNat

end

end A341236.P4014391150133003723

/-!
# A341237: a(k) is the number of pairs of consecutive primes (p,q) such that (2*k-q,2*k-p) is also a pair of consecutive primes.

The programs for A341237, there is no canonical definition to state claims against.
-/

/-! ## A341237.P7850349943415958135

`A245716(A075208(n+1)+1+n)`
-/

namespace A341237.P7850349943415958135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245716 (A075208 (n + 1) + 1 + (n : ℤ)).toNat

end

end A341237.P7850349943415958135

/-! ## A341237.P15909109003013167673

`and(A048647(A324170(3*n+1)), A214154(n+1))`
-/

namespace A341237.P15909109003013167673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048647 (A324170 (3 * n + 1)).toNat) (A214154 (n + 1))

end

end A341237.P15909109003013167673

/-! ## A341237.P7464973865154212546

`A237451(A003114(2*n+3)+A243411(2*(n+2))%(A292143(n)+1))`
-/

namespace A341237.P7464973865154212546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237451 (A003114 (2 * n + 3) + Int.tmod (A243411 (2 * (n + 2))) (A292143 n + 1)).toNat

end

end A341237.P7464973865154212546

/-!
# A341238: Numbers k such that there do not exist consecutive primes (p,q) such that (2*k-q,2*k-p) are consecutive primes.

The programs for A341238, there is no canonical definition to state claims against.
-/

/-! ## A341238.P4531943008243206371

`lt[A341237(n+1), A325794(A341237(n+1)+1)]+1`
-/

namespace A341238.P4531943008243206371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325794 (A341237 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A341238.P4531943008243206371

/-!
# A341239: a(n) = floor(r*floor(s*n)), where r = 1 + sqrt(2) and s = sqrt(2).

The programs for A341239, the canonical program `A341239.P9386503938490555449` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341239 has offset 1).

The definition of A341239 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341239.P14547693491546498251

`floor((sqrt(2)+1)*floor((n+1)*sqrt(2)))`
-/

namespace A341239.P14547693491546498251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (2 : ℝ) + 1) * (⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋ : ℝ)⌋

end

end A341239.P14547693491546498251

namespace A341239

/-- `floor((sqrt(2)+1)*floor((n+1)*sqrt(2)))` -/
def P14547693491546498251.Spec : Prop :=
  ∀ n, P14547693491546498251.a n = A341239 (n + 1)

end A341239

/-! ## A341239.P9386503938490555449

`A007069(n+1)+A001951(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A341239

/-- `A007069(n+1)+A001951(n+1)` -/
def P9386503938490555449.Spec : Prop :=
  ∀ n, P9386503938490555449.a n = A341239 (n + 1)

theorem P9386503938490555449.correct : P9386503938490555449.Spec := by
  intro n
  simp only [A341239, Nat.add_sub_cancel]

end A341239

/-! ## A341239.P15435961202329526923

`A001952(n+1)-A138330(n+1)`
-/

namespace A341239.P15435961202329526923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1) - A138330 (n + 1)

end

end A341239.P15435961202329526923

namespace A341239

/-- `A001952(n+1)-A138330(n+1)` -/
def P15435961202329526923.Spec : Prop :=
  ∀ n, P15435961202329526923.a n = A341239 (n + 1)

end A341239

/-! ## A341239.P4149342745121787498

`A140868(n+1)-A080652(n+1)`
-/

namespace A341239.P4149342745121787498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140868 (n + 1) - A080652 (n + 1)

end

end A341239.P4149342745121787498

namespace A341239

/-- `A140868(n+1)-A080652(n+1)` -/
def P4149342745121787498.Spec : Prop :=
  ∀ n, P4149342745121787498.a n = A341239 (n + 1)

end A341239

/-! ## A341239.P1886967954094683687

`A341249(n+1)-A001951(n+1)`
-/

namespace A341239.P1886967954094683687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341249 (n + 1) - A001951 (n + 1)

end

end A341239.P1886967954094683687

namespace A341239

/-- `A341249(n+1)-A001951(n+1)` -/
def P1886967954094683687.Spec : Prop :=
  ∀ n, P1886967954094683687.a n = A341239 (n + 1)

end A341239

/-! ## A341239.P17734158240709298123

`2*A286666(n+1)-A001953(n)`
-/

namespace A341239.P17734158240709298123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A286666 (n + 1) - A001953 n

end

end A341239.P17734158240709298123

namespace A341239

/-- `2*A286666(n+1)-A001953(n)` -/
def P17734158240709298123.Spec : Prop :=
  ∀ n, P17734158240709298123.a n = A341239 (n + 1)

end A341239

/-! ## A341239.P605526083476278512

`A007069(n+1)+A286909(n+1)/2`
-/

namespace A341239.P605526083476278512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007069 (n + 1) : ℚ) + (A286909 (n + 1) : ℚ) / 2

end

end A341239.P605526083476278512

namespace A341239

/-- `A007069(n+1)+A286909(n+1)/2` -/
def P605526083476278512.Spec : Prop :=
  ∀ n, P605526083476278512.a n = (A341239 (n + 1) : ℚ)

end A341239

/-! ## A341239.P8453101309941220327

`(A341249(n+1)+A007069(n+1))/2`
-/

namespace A341239.P8453101309941220327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341249 (n + 1) + A007069 (n + 1) : ℚ) / 2

end

end A341239.P8453101309941220327

namespace A341239

/-- `(A341249(n+1)+A007069(n+1))/2` -/
def P8453101309941220327.Spec : Prop :=
  ∀ n, P8453101309941220327.a n = (A341239 (n + 1) : ℚ)

end A341239

/-! ## A341239.P5572968529635043218

`A341249(n+1)-A286909(n+1)/2`
-/

namespace A341239.P5572968529635043218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341249 (n + 1) : ℚ) - (A286909 (n + 1) : ℚ) / 2

end

end A341239.P5572968529635043218

namespace A341239

/-- `A341249(n+1)-A286909(n+1)/2` -/
def P5572968529635043218.Spec : Prop :=
  ∀ n, P5572968529635043218.a n = (A341239 (n + 1) : ℚ)

end A341239

/-! ## A341239.P1813614075824960813

`A003151(A001951(n+1))`
-/

namespace A341239.P1813614075824960813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (A001951 (n + 1)).toNat

end

end A341239.P1813614075824960813

namespace A341239

/-- `A003151(A001951(n+1))` -/
def P1813614075824960813.Spec : Prop :=
  ∀ n, P1813614075824960813.a n = A341239 (n + 1)

end A341239

/-! ## A341239.P15949803842997335485

`A003151(A286666(n+1)-n)`
-/

namespace A341239.P15949803842997335485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (A286666 (n + 1) - (n : ℤ)).toNat

end

end A341239.P15949803842997335485

namespace A341239

/-- `A003151(A286666(n+1)-n)` -/
def P15949803842997335485.Spec : Prop :=
  ∀ n, P15949803842997335485.a n = A341239 (n + 1)

end A341239

/-! ## A341239.P13215725247009428949

`A003151(∑[A188037(n+1)+1])`
-/

namespace A341239.P13215725247009428949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188037 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A341239.P13215725247009428949

namespace A341239

/-- `A003151(∑[A188037(n+1)+1])` -/
def P13215725247009428949.Spec : Prop :=
  ∀ n, P13215725247009428949.a n = A341239 (n + 1)

end A341239

/-! ## A341239.P17168323358834744690

`A286666(A087057(n+1)-1)+1`
-/

namespace A341239.P17168323358834744690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286666 (A087057 (n + 1) - 1).toNat + 1

end

end A341239.P17168323358834744690

namespace A341239

/-- `A286666(A087057(n+1)-1)+1` -/
def P17168323358834744690.Spec : Prop :=
  ∀ n, P17168323358834744690.a n = A341239 (n + 1)

end A341239

/-! ## A341239.P1799615709170710739

`A080754(A087057(n+1)-1)-1`
-/

namespace A341239.P1799615709170710739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (A087057 (n + 1) - 1).toNat - 1

end

end A341239.P1799615709170710739

namespace A341239

/-- `A080754(A087057(n+1)-1)-1` -/
def P1799615709170710739.Spec : Prop :=
  ∀ n, P1799615709170710739.a n = A341239 (n + 1)

end A341239

/-! ## A341239.P1737317869914913384

`A003151(A097508(n+1)+n+1)`
-/

namespace A341239.P1737317869914913384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (A097508 (n + 1) + (n + 1 : ℤ)).toNat

end

end A341239.P1737317869914913384

namespace A341239

/-- `A003151(A097508(n+1)+n+1)` -/
def P1737317869914913384.Spec : Prop :=
  ∀ n, P1737317869914913384.a n = A341239 (n + 1)

end A341239

/-! ## A341239.P15673783390393148864

`A003151(A003151(n+1)-(n+1))`
-/

namespace A341239.P15673783390393148864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (A003151 (n + 1) - (n + 1 : ℤ)).toNat

end

end A341239.P15673783390393148864

namespace A341239

/-- `A003151(A003151(n+1)-(n+1))` -/
def P15673783390393148864.Spec : Prop :=
  ∀ n, P15673783390393148864.a n = A341239 (n + 1)

end A341239

/-! ## A341239.P4292036717318852713

`A286666(A286666(n+1)-n)+1`
-/

namespace A341239.P4292036717318852713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286666 (A286666 (n + 1) - (n : ℤ)).toNat + 1

end

end A341239.P4292036717318852713

namespace A341239

/-- `A286666(A286666(n+1)-n)+1` -/
def P4292036717318852713.Spec : Prop :=
  ∀ n, P4292036717318852713.a n = A341239 (n + 1)

end A341239

/-! ## A341239.P10538648184907445217

`A003151(∑[char[A003151(n+1)]+1])`
-/

namespace A341239.P10538648184907445217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A341239.P10538648184907445217

namespace A341239

/-- `A003151(∑[char[A003151(n+1)]+1])` -/
def P10538648184907445217.Spec : Prop :=
  ∀ n, P10538648184907445217.a n = A341239 (n + 1)

end A341239

/-! ## A341239.P17786325487423914155

`A080755(A007069(n+1))`
-/

namespace A341239.P17786325487423914155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (A007069 (n + 1)).toNat

end

end A341239.P17786325487423914155

namespace A341239

/-- `A080755(A007069(n+1))` -/
def P17786325487423914155.Spec : Prop :=
  ∀ n, P17786325487423914155.a n = A341239 (n + 1)

end A341239

/-! ## A341239.P18032510123539444123

`A003151(A049472(2*(n+1)))`
-/

namespace A341239.P18032510123539444123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (A049472 (2 * (n + 1))).toNat

end

end A341239.P18032510123539444123

namespace A341239

/-- `A003151(A049472(2*(n+1)))` -/
def P18032510123539444123.Spec : Prop :=
  ∀ n, P18032510123539444123.a n = A341239 (n + 1)

end A341239

/-!
# A341240: a(n) = 4*a(n-1) - 2*a(n-2) + a(n-3) - 4*a(n-4) + 2*a(n-5) for n >= 7, where a(1) = 1, a(2) = 2, a(3) = 4, a(4) = 12, a(5) = 38, a(6) = 127.

The programs for A341240, the canonical program `A341240.P12380797080244869133` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341240 has offset 1).

The definition of A341240 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-2*a(n-2)+a(n-3)-4*a(n-4)+2*a(n-5)` (program `A341240.P12380797080244869133`, by `A341240.P12380797080244869133.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A341240.P12380797080244869133

`4*a(n-1)-2*a(n-2)+a(n-3)-4*a(n-4)+2*a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=12, a(4)=38, a(5)=127`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A341240

/-- `4*a(n-1)-2*a(n-2)+a(n-3)-4*a(n-4)+2*a(n-5)` -/
def P12380797080244869133.Spec : Prop :=
  ∀ n, P12380797080244869133.a n = A341240 (n + 1)

theorem P12380797080244869133.correct : P12380797080244869133.Spec := by
  intro n
  simp only [A341240, Nat.add_sub_cancel]

end A341240

/-! ## A341240.P6200542046745294596

`ceil(A339828(n+1)/sqrt(2))`
-/

namespace A341240.P6200542046745294596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A339828 (n + 1) : ℝ) / Real.sqrt (2 : ℝ)⌉

end

end A341240.P6200542046745294596

namespace A341240

/-- `ceil(A339828(n+1)/sqrt(2))` -/
def P6200542046745294596.Spec : Prop :=
  ∀ n, P6200542046745294596.a n = A341240 (n + 1)

end A341240

/-! ## A341240.P15191632691488143721

`Δ[A339828(round(sqrt(n²+1)))]+1`
-/

namespace A341240.P15191632691488143721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339828 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A341240.P15191632691488143721

namespace A341240

/-- `Δ[A339828(round(sqrt(n²+1)))]+1` -/
def P15191632691488143721.Spec : Prop :=
  ∀ n, P15191632691488143721.a n = A341240 (n + 1)

end A341240

/-! ## A341240.P16652417803334274303

`Δ[A339828(A028310(n))+n]`
-/

namespace A341240.P16652417803334274303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339828 (A028310 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341240.P16652417803334274303

namespace A341240

/-- `Δ[A339828(A028310(n))+n]` -/
def P16652417803334274303.Spec : Prop :=
  ∀ n, P16652417803334274303.a n = A341240 (n + 1)

end A341240

/-! ## A341240.P14248296082015569715

`A339828(n+1)+1-A339828(A028310(n))`
-/

namespace A341240.P14248296082015569715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339828 (n + 1) + (1 - A339828 (A028310 n).toNat)

end

end A341240.P14248296082015569715

namespace A341240

/-- `A339828(n+1)+1-A339828(A028310(n))` -/
def P14248296082015569715.Spec : Prop :=
  ∀ n, P14248296082015569715.a n = A341240 (n + 1)

end A341240

/-!
# A341241: Expansion of (-1 + Product_{k>=1} 1 / (1 + (-x)^k))^3.

The programs for A341241, there is no canonical definition to state claims against.
-/

/-! ## A341241.P13974248081426801562

`A341279(∑[n+3]+6)`
-/

namespace A341241.P13974248081426801562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A341241.P13974248081426801562

/-! ## A341241.P6672170612444008319

`or(char[2], A341279(A167614(n+2)))`
-/

namespace A341241.P6672170612444008319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A341279 (A167614 (n + 2)).toNat)

end

end A341241.P6672170612444008319

/-! ## A341241.P6815959412497080442

`A341279(A167614(n+2))%Δ[A055406(n)]`
-/

namespace A341241.P6815959412497080442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341279 (A167614 (n + 2)).toNat) (f1 (n + 1) - f1 n)

end

end A341241.P6815959412497080442

/-! ## A341241.P10526587210907971528

`A341279(A167614(n+2))+A000007(n+1)`
-/

namespace A341241.P10526587210907971528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (A167614 (n + 2)).toNat + A000007 (n + 1)

end

end A341241.P10526587210907971528

/-! ## A341241.P2032174402024042345

`A341279(A167614(n+2))+A063524(n+4)`
-/

namespace A341241.P2032174402024042345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (A167614 (n + 2)).toNat + A063524 (n + 4)

end

end A341241.P2032174402024042345

/-! ## A341241.P11616191787325576739

`A007318(C(2, n))*A341279(A167614(n+2))`
-/

namespace A341241.P11616191787325576739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A341279 (A167614 (n + 2)).toNat

end

end A341241.P11616191787325576739

/-! ## A341241.P9869266625588772828

`A000041(C(n, n²))*A341279(A167614(n+2))`
-/

namespace A341241.P9869266625588772828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A341279 (A167614 (n + 2)).toNat

end

end A341241.P9869266625588772828

/-! ## A341241.P10926733479697099487

`A341279(A133263(n+3)+1)%A000041(n+2)`
-/

namespace A341241.P10926733479697099487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341279 (A133263 (n + 3) + 1).toNat) (A000041 (n + 2))

end

end A341241.P10926733479697099487

/-!
# A341242: Numbers whose binary representation encodes a subset S of the natural numbers such that the XOR of the binary representations of all s in S gives 0.

The programs for A341242, there is no canonical definition to state claims against.
-/

/-! ## A341242.P291739228184816471

`eq[0, A253315(n)]`
-/

namespace A341242.P291739228184816471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341242.P291739228184816471

/-! ## A341242.P16937999732561426244

`eq[0, A261283(floor(n/2))]`
-/

namespace A341242.P16937999732561426244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261283 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341242.P16937999732561426244

/-! ## A341242.P12675565788422887175

`eq[A261283(n), A355340(n)]`
-/

namespace A341242.P12675565788422887175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261283 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355340 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A341242.P12675565788422887175

/-! ## A341242.P3616182995979241619

`lt[A253315(n), cos(A000035(n))]`
-/

namespace A341242.P3616182995979241619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253315 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A000035 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A341242.P3616182995979241619

/-! ## A341242.P12649277591255843387

`lt[A253315(n), cos(A010060(n))]`
-/

namespace A341242.P12649277591255843387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253315 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A010060 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A341242.P12649277591255843387

/-! ## A341242.P17068674944981207188

`lt[A253315(n), cos(A165326(n))]`
-/

namespace A341242.P17068674944981207188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253315 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A165326 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A341242.P17068674944981207188

/-! ## A341242.P2260642143421575736

`lt[A253315(n), sin(A001285(n))]`
-/

namespace A341242.P2260642143421575736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253315 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (A001285 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A341242.P2260642143421575736

/-! ## A341242.P2788728148625421943

`lt[A253315(n), sin(A154629(n))]`
-/

namespace A341242.P2788728148625421943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253315 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (A154629 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A341242.P2788728148625421943

/-! ## A341242.P14709960265506123466

`lt[A253315(n), A001222(A154620(n+1))]`
-/

namespace A341242.P14709960265506123466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253315 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A154620 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A341242.P14709960265506123466

/-! ## A341242.P3804747769528489668

`lt[A253315(n), A001222(A154625(n+1))]`
-/

namespace A341242.P3804747769528489668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253315 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A154625 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A341242.P3804747769528489668

/-!
# A341243: Expansion of (-1 + Product_{k>=1} 1 / (1 + (-x)^k))^4.

The programs for A341243, there is no canonical definition to state claims against.
-/

/-! ## A341243.P17729640282232991906

`A341279(C(n+6, 2)-(n+1))`
-/

namespace A341243.P17729640282232991906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (Nat.choose (n + 6) 2 - (n + 1))

end

end A341243.P17729640282232991906

/-! ## A341243.P15544886969160156968

`A341279(A167614(n+3)+1)`
-/

namespace A341243.P15544886969160156968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (A167614 (n + 3) + 1).toNat

end

end A341243.P15544886969160156968

/-! ## A341243.P8441460297180686033

`A341279(A167499(n+3)-1)`
-/

namespace A341243.P8441460297180686033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (A167499 (n + 3) - 1).toNat

end

end A341243.P8441460297180686033

/-! ## A341243.P2656344512992196642

`A341279(A000124(n+4)+3)`
-/

namespace A341243.P2656344512992196642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (A000124 (n + 4) + 3).toNat

end

end A341243.P2656344512992196642

/-! ## A341243.P2935128933234295923

`A341279(A000217(n+4)+4)`
-/

namespace A341243.P2935128933234295923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (A000217 (n + 4) + 4).toNat

end

end A341243.P2935128933234295923

/-! ## A341243.P5525153799002278064

`A341279(A027379(n+2)+7)`
-/

namespace A341243.P5525153799002278064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (A027379 (n + 2) + 7).toNat

end

end A341243.P5525153799002278064

/-! ## A341243.P16048117946262565306

`A341279(Δ[A023551(n+1)-n²])`
-/

namespace A341243.P16048117946262565306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (f1 (n + 1) - f1 n).toNat

end

end A341243.P16048117946262565306

/-! ## A341243.P14441172150085126232

`A341279(eq[3, A141169(n)])`
-/

namespace A341243.P14441172150085126232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341243.P14441172150085126232

/-! ## A341243.P17426718795916128299

`A341279(eq[4, A002262(n)])`
-/

namespace A341243.P17426718795916128299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341243.P17426718795916128299

/-!
# A341244: Expansion of (-1 + Product_{k>=1} 1 / (1 + (-x)^k))^5.

The programs for A341244, there is no canonical definition to state claims against.
-/

/-! ## A341244.P6890829650960901745

`A341279(A167499(n+4))`
-/

namespace A341244.P6890829650960901745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (A167499 (n + 4)).toNat

end

end A341244.P6890829650960901745

/-! ## A341244.P11091026067788573097

`A341279(A056115(n)+20)`
-/

namespace A341244.P11091026067788573097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (A056115 n + 20).toNat

end

end A341244.P11091026067788573097

/-! ## A341244.P7307046528922028105

`A341279(A166136(n+4)-1)`
-/

namespace A341244.P7307046528922028105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (A166136 (n + 4) - 1).toNat

end

end A341244.P7307046528922028105

/-! ## A341244.P5918062189591571850

`A341279(eq[5, A002262(n)])`
-/

namespace A341244.P5918062189591571850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341244.P5918062189591571850

/-! ## A341244.P16911638509188481228

`A341279(eq[5, A141169(n)])`
-/

namespace A341244.P16911638509188481228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341244.P16911638509188481228

/-!
# A341245: Expansion of (-1 + Product_{k>=1} 1 / (1 + (-x)^k))^6.

The programs for A341245, there is no canonical definition to state claims against.
-/

/-! ## A341245.P10298554821237194311

`A341279(A166136(n+5))`
-/

namespace A341245.P10298554821237194311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (A166136 (n + 5)).toNat

end

end A341245.P10298554821237194311

/-! ## A341245.P15676618000125461415

`A341279(A056119(n)+27)`
-/

namespace A341245.P15676618000125461415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (A056119 n + 27).toNat

end

end A341245.P15676618000125461415

/-! ## A341245.P6609820256244125613

`A341279(eq[64, A059268(n)])`
-/

namespace A341245.P6609820256244125613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341245.P6609820256244125613

/-! ## A341245.P8186023973587075157

`A341279(eq[6, A002262(n)])`
-/

namespace A341245.P8186023973587075157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341245.P8186023973587075157

/-! ## A341245.P4016307795604395133

`A341279(eq[8, A141169(n)])`
-/

namespace A341245.P4016307795604395133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341245.P4016307795604395133

/-!
# A341246: Expansion of (-1 + Product_{k>=1} 1 / (1 + (-x)^k))^7.

The programs for A341246, there is no canonical definition to state claims against.
-/

/-! ## A341246.P11494055535704689408

`A341279(A000124(n+7)+6)`
-/

namespace A341246.P11494055535704689408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (A000124 (n + 7) + 6).toNat

end

end A341246.P11494055535704689408

/-! ## A341246.P14539273589385657263

`A341279(A000096(n+6)+8)`
-/

namespace A341246.P14539273589385657263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (A000096 (n + 6) + 8).toNat

end

end A341246.P14539273589385657263

/-! ## A341246.P3681495663697445499

`A341279(A000217(n+7)+7)`
-/

namespace A341246.P3681495663697445499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (A000217 (n + 7) + 7).toNat

end

end A341246.P3681495663697445499

/-! ## A341246.P18327449450331610655

`A341279(eq[7, A002262(n)])`
-/

namespace A341246.P18327449450331610655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341246.P18327449450331610655

/-! ## A341246.P16405444373963763747

`A341279(eq[7, A130270(n+1)])`
-/

namespace A341246.P16405444373963763747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341246.P16405444373963763747

/-!
# A341247: Expansion of (-1 + Product_{k>=1} 1 / (1 + (-x)^k))^8.

The programs for A341247, there is no canonical definition to state claims against.
-/

/-! ## A341247.P1600947821419689420

`A341279(A056126(n)+44)`
-/

namespace A341247.P1600947821419689420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (A056126 n + 44).toNat

end

end A341247.P1600947821419689420

/-! ## A341247.P2087573657130749804

`A341279(A166136(n+7)+2)`
-/

namespace A341247.P2087573657130749804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (A166136 (n + 7) + 2).toNat

end

end A341247.P2087573657130749804

/-! ## A341247.P13035093469554250892

`A341279(A000124(n+8)+7)`
-/

namespace A341247.P13035093469554250892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (A000124 (n + 8) + 7).toNat

end

end A341247.P13035093469554250892

/-! ## A341247.P6898842637687559155

`A341279(A000096(n+7)+9)`
-/

namespace A341247.P6898842637687559155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (A000096 (n + 7) + 9).toNat

end

end A341247.P6898842637687559155

/-! ## A341247.P14803925984710182693

`A341279(eq[8, A002262(n)])`
-/

namespace A341247.P14803925984710182693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341247.P14803925984710182693

/-!
# A341248: a(n) = 5*a(n-1) - 4*a(n-3) for n >= 4, where a(1) = 1, a(2) = 4, a(3) = 18.

The programs for A341248, the canonical program `A341248.P18081291173644794714` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341248 has offset 1).

The definition of A341248 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)-4*a(n-3)` (program `A341248.P18081291173644794714`, by `A341248.P18081291173644794714.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A341248.P18081291173644794714

`5*a(n-1)-4*a(n-3)` with `a(0)=1, a(1)=4, a(2)=18`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A341248

/-- `5*a(n-1)-4*a(n-3)` -/
def P18081291173644794714.Spec : Prop :=
  ∀ n, P18081291173644794714.a n = A341248 (n + 1)

theorem P18081291173644794714.correct : P18081291173644794714.Spec := by
  intro n
  simp only [A341248, Nat.add_sub_cancel]

end A341248

/-! ## A341248.P18361637041985363700

`∑[ogf((-1+x+2x^2)/(-1+4x+4x^2))]`
-/

namespace A341248.P18361637041985363700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -2] [1, -4, -4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341248.P18361637041985363700

namespace A341248

/-- `∑[ogf((-1+x+2x^2)/(-1+4x+4x^2))]` -/
def P18361637041985363700.Spec : Prop :=
  ∀ n, P18361637041985363700.a n = A341248 (n + 1)

end A341248

/-! ## A341248.P16526330009398990167

`ogf((1-x-2x^2)/(1-5x+4x^3))`
-/

namespace A341248.P16526330009398990167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -2] [1, -5, 0, 4] n

end

end A341248.P16526330009398990167

namespace A341248

/-- `ogf((1-x-2x^2)/(1-5x+4x^3))` -/
def P16526330009398990167.Spec : Prop :=
  ∀ n, P16526330009398990167.a n = A341248 (n + 1)

end A341248

/-! ## A341248.P617055265543848259

`2*floor((sqrt(2)+1)*a(n-1))` with `a(0)=1`
-/

namespace A341248.P617055265543848259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ⌊(Real.sqrt (2 : ℝ) + 1) * (a (n - 1) : ℝ)⌋

end

end A341248.P617055265543848259

namespace A341248

/-- `2*floor((sqrt(2)+1)*a(n-1))` -/
def P617055265543848259.Spec : Prop :=
  ∀ n, P617055265543848259.a n = A341248 (n + 1)

end A341248

/-! ## A341248.P624681382584702069

`round((sqrt(8)+2)*a(n-1))-1` with `a(0)=1`
-/

namespace A341248.P624681382584702069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (8 : ℝ) + 2) * (a (n - 1) : ℝ)) - 1

end

end A341248.P624681382584702069

namespace A341248

/-- `round((sqrt(8)+2)*a(n-1))-1` -/
def P624681382584702069.Spec : Prop :=
  ∀ n, P624681382584702069.a n = A341248 (n + 1)

end A341248

/-! ## A341248.P296078516898952933

`4*(a(n-1)+a(n-2))-2` with `a(0)=1, a(1)=4`
-/

namespace A341248.P296078516898952933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 * (a (n - 1) + a (n - 2)) - 2

end

end A341248.P296078516898952933

namespace A341248

/-- `4*(a(n-1)+a(n-2))-2` -/
def P296078516898952933.Spec : Prop :=
  ∀ n, P296078516898952933.a n = A341248 (n + 1)

end A341248

/-! ## A341248.P15635713804726510862

`(a(n-1)+a(n-2))/(1/2)²-2` with `a(0)=1, a(1)=4`
-/

namespace A341248.P15635713804726510862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  (a (n - 1) + a (n - 2)) / ((1 : ℚ) / 2) ^ 2 - 2

end

end A341248.P15635713804726510862

namespace A341248

/-- `(a(n-1)+a(n-2))/(1/2)²-2` -/
def P15635713804726510862.Spec : Prop :=
  ∀ n, P15635713804726510862.a n = (A341248 (n + 1) : ℚ)

end A341248

/-! ## A341248.P5943048191384519482

`∑[ceil(2^(n-1))*A078057(n)]`
-/

namespace A341248.P5943048191384519482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A078057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341248.P5943048191384519482

namespace A341248

/-- `∑[ceil(2^(n-1))*A078057(n)]` -/
def P5943048191384519482.Spec : Prop :=
  ∀ n, P5943048191384519482.a n = A341248 (n + 1)

end A341248

/-! ## A341248.P5472186644602655524

`∑[ceil(2^(n-1))*A001333(n+1)]`
-/

namespace A341248.P5472186644602655524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A001333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341248.P5472186644602655524

namespace A341248

/-- `∑[ceil(2^(n-1))*A001333(n+1)]` -/
def P5472186644602655524.Spec : Prop :=
  ∀ n, P5472186644602655524.a n = A341248 (n + 1)

end A341248

/-! ## A341248.P16727791039678818615

`∑[ceil(2^(n-1))*A249576(3*n+4)]`
-/

namespace A341248.P16727791039678818615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A249576 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341248.P16727791039678818615

namespace A341248

/-- `∑[ceil(2^(n-1))*A249576(3*n+4)]` -/
def P16727791039678818615.Spec : Prop :=
  ∀ n, P16727791039678818615.a n = A341248 (n + 1)

end A341248

/-! ## A341248.P2598501764478055623

`∑[A057087(n)-A108051(n)]`
-/

namespace A341248.P2598501764478055623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057087 n - A108051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341248.P2598501764478055623

namespace A341248

/-- `∑[A057087(n)-A108051(n)]` -/
def P2598501764478055623.Spec : Prop :=
  ∀ n, P2598501764478055623.a n = A341248 (n + 1)

end A341248

/-! ## A341248.P10459919428113491240

`∑[lcm(A078057(n), A123344(n))]`
-/

namespace A341248.P10459919428113491240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A078057 n) (A123344 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341248.P10459919428113491240

namespace A341248

/-- `∑[lcm(A078057(n), A123344(n))]` -/
def P10459919428113491240.Spec : Prop :=
  ∀ n, (P10459919428113491240.a n : ℤ) = A341248 (n + 1)

end A341248

/-! ## A341248.P14445103849421988722

`∑[Δ[A052937(n)]*A011782(n)]`
-/

namespace A341248.P14445103849421988722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052937 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341248.P14445103849421988722

namespace A341248

/-- `∑[Δ[A052937(n)]*A011782(n)]` -/
def P14445103849421988722.Spec : Prop :=
  ∀ n, P14445103849421988722.a n = A341248 (n + 1)

end A341248

/-! ## A341248.P10273337560159888830

`∑[A001333(n+1)*A011782(n)]`
-/

namespace A341248.P10273337560159888830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341248.P10273337560159888830

namespace A341248

/-- `∑[A001333(n+1)*A011782(n)]` -/
def P10273337560159888830.Spec : Prop :=
  ∀ n, P10273337560159888830.a n = A341248 (n + 1)

end A341248

/-! ## A341248.P17740783431097567315

`∑[2*A084128(n)]-A084128(n)`
-/

namespace A341248.P17740783431097567315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A084128 n

end

end A341248.P17740783431097567315

namespace A341248

/-- `∑[2*A084128(n)]-A084128(n)` -/
def P17740783431097567315.Spec : Prop :=
  ∀ n, P17740783431097567315.a n = A341248 (n + 1)

end A341248

/-! ## A341248.P13047236754966099285

`∑[A170931(n)]-A170931(n)/2`
-/

namespace A341248.P13047236754966099285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170931 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - (A170931 n : ℚ) / 2

end

end A341248.P13047236754966099285

namespace A341248

/-- `∑[A170931(n)]-A170931(n)/2` -/
def P13047236754966099285.Spec : Prop :=
  ∀ n, P13047236754966099285.a n = (A341248 (n + 1) : ℚ)

end A341248

/-! ## A341248.P17313907673821137946

`∑[lcm(A011782(n), A123335(n+1))]`
-/

namespace A341248.P17313907673821137946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011782 n) (A123335 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341248.P17313907673821137946

namespace A341248

/-- `∑[lcm(A011782(n), A123335(n+1))]` -/
def P17313907673821137946.Spec : Prop :=
  ∀ n, (P17313907673821137946.a n : ℤ) = A341248 (n + 1)

end A341248

/-! ## A341248.P6164531670430093222

`∑[A001333(n+1)*A166444(n+1)]`
-/

namespace A341248.P6164531670430093222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) * A166444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341248.P6164531670430093222

namespace A341248

/-- `∑[A001333(n+1)*A166444(n+1)]` -/
def P6164531670430093222.Spec : Prop :=
  ∀ n, P6164531670430093222.a n = A341248 (n + 1)

end A341248

/-! ## A341248.P4294867604609562242

`∑[A011782(n)*A082766(2*(n+1))]`
-/

namespace A341248.P4294867604609562242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A082766 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341248.P4294867604609562242

namespace A341248

/-- `∑[A011782(n)*A082766(2*(n+1))]` -/
def P4294867604609562242.Spec : Prop :=
  ∀ n, P4294867604609562242.a n = A341248 (n + 1)

end A341248

/-! ## A341248.P18392639764422298255

`∑[A002965(2*(n+1)+1)*A011782(n)]`
-/

namespace A341248.P18392639764422298255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (2 * (n + 1) + 1) * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341248.P18392639764422298255

namespace A341248

/-- `∑[A002965(2*(n+1)+1)*A011782(n)]` -/
def P18392639764422298255.Spec : Prop :=
  ∀ n, P18392639764422298255.a n = A341248 (n + 1)

end A341248

/-!
# A341249: a(n) = floor(r*floor(s*n)), where r = 2 + sqrt(2) and s = sqrt(2).

The programs for A341249, the canonical program `A341249.P10730097604345596581` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341249 has offset 1).

The definition of A341249 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341249.P17605656339547172971

`floor((sqrt(2)+2)*floor((n+1)*sqrt(2)))`
-/

namespace A341249.P17605656339547172971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (2 : ℝ) + 2) * (⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋ : ℝ)⌋

end

end A341249.P17605656339547172971

namespace A341249

/-- `floor((sqrt(2)+2)*floor((n+1)*sqrt(2)))` -/
def P17605656339547172971.Spec : Prop :=
  ∀ n, P17605656339547172971.a n = A341249 (n + 1)

end A341249

/-! ## A341249.P10730097604345596581

`A286909(n+1)+A007069(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A341249

/-- `A286909(n+1)+A007069(n+1)` -/
def P10730097604345596581.Spec : Prop :=
  ∀ n, P10730097604345596581.a n = A341249 (n + 1)

theorem P10730097604345596581.correct : P10730097604345596581.Spec := by
  intro n
  simp only [A341249, Nat.add_sub_cancel]

end A341249

/-! ## A341249.P14845485869006919166

`A022804(n+1)-A138330(n+1)`
-/

namespace A341249.P14845485869006919166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022804 (n + 1) - A138330 (n + 1)

end

end A341249.P14845485869006919166

namespace A341249

/-- `A022804(n+1)-A138330(n+1)` -/
def P14845485869006919166.Spec : Prop :=
  ∀ n, P14845485869006919166.a n = A341249 (n + 1)

end A341249

/-! ## A341249.P6750758979776752953

`2*A003151(n+1)-A138330(n+1)`
-/

namespace A341249.P6750758979776752953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003151 (n + 1) - A138330 (n + 1)

end

end A341249.P6750758979776752953

namespace A341249

/-- `2*A003151(n+1)-A138330(n+1)` -/
def P6750758979776752953.Spec : Prop :=
  ∀ n, P6750758979776752953.a n = A341249 (n + 1)

end A341249

/-! ## A341249.P3136579780432884000

`A001951(n+1)+A007069(n+1)+A001951(n+1)`
-/

namespace A341249.P3136579780432884000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (n + 1) + (A007069 (n + 1) + A001951 (n + 1))

end

end A341249.P3136579780432884000

namespace A341249

/-- `A001951(n+1)+A007069(n+1)+A001951(n+1)` -/
def P3136579780432884000.Spec : Prop :=
  ∀ n, P3136579780432884000.a n = A341249 (n + 1)

end A341249

/-! ## A341249.P582009143733115983

`A001952(ceil((n+1)*sqrt(2))-1)`
-/

namespace A341249.P582009143733115983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (⌈(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌉ - 1).toNat

end

end A341249.P582009143733115983

namespace A341249

/-- `A001952(ceil((n+1)*sqrt(2))-1)` -/
def P582009143733115983.Spec : Prop :=
  ∀ n, P582009143733115983.a n = A341249 (n + 1)

end A341249

/-! ## A341249.P8235469617547904643

`A189458(A001951(n+1))-n`
-/

namespace A341249.P8235469617547904643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189458 (A001951 (n + 1)).toNat - (n : ℤ)

end

end A341249.P8235469617547904643

namespace A341249

/-- `A189458(A001951(n+1))-n` -/
def P8235469617547904643.Spec : Prop :=
  ∀ n, P8235469617547904643.a n = A341249 (n + 1)

end A341249

/-! ## A341249.P12675555217643187079

`record[A001952(n+1)*A080764(n)]`
-/

namespace A341249.P12675555217643187079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1) * A080764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341249.P12675555217643187079

namespace A341249

/-- `record[A001952(n+1)*A080764(n)]` -/
def P12675555217643187079.Spec : Prop :=
  ∀ n, P12675555217643187079.a n = A341249 (n + 1)

end A341249

/-! ## A341249.P9702313389547336456

`A184922(A087057(n+1)-1)+1`
-/

namespace A341249.P9702313389547336456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184922 (A087057 (n + 1) - 1).toNat + 1

end

end A341249.P9702313389547336456

namespace A341249

/-- `A184922(A087057(n+1)-1)+1` -/
def P9702313389547336456.Spec : Prop :=
  ∀ n, P9702313389547336456.a n = A341249 (n + 1)

end A341249

/-! ## A341249.P15581222941803832802

`A184922(A054071(n+1)+n)+1`
-/

namespace A341249.P15581222941803832802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184922 (A054071 (n + 1) + (n : ℤ)).toNat + 1

end

end A341249.P15581222941803832802

namespace A341249

/-- `A184922(A054071(n+1)+n)+1` -/
def P15581222941803832802.Spec : Prop :=
  ∀ n, P15581222941803832802.a n = A341249 (n + 1)

end A341249

/-! ## A341249.P13925022885856903434

`A184922(A286666(n+1)-n)+1`
-/

namespace A341249.P13925022885856903434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184922 (A286666 (n + 1) - (n : ℤ)).toNat + 1

end

end A341249.P13925022885856903434

namespace A341249

/-- `A184922(A286666(n+1)-n)+1` -/
def P13925022885856903434.Spec : Prop :=
  ∀ n, P13925022885856903434.a n = A341249 (n + 1)

end A341249

/-! ## A341249.P8649967849416726727

`A189458(A054071(n+1)+n)-n`
-/

namespace A341249.P8649967849416726727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189458 (A054071 (n + 1) + (n : ℤ)).toNat - (n : ℤ)

end

end A341249.P8649967849416726727

namespace A341249

/-- `A189458(A054071(n+1)+n)-n` -/
def P8649967849416726727.Spec : Prop :=
  ∀ n, P8649967849416726727.a n = A341249 (n + 1)

end A341249

/-! ## A341249.P14428982185285182919

`A286909(n+1)+A001951(A001951(n+1))`
-/

namespace A341249.P14428982185285182919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286909 (n + 1) + A001951 (A001951 (n + 1)).toNat

end

end A341249.P14428982185285182919

namespace A341249

/-- `A286909(n+1)+A001951(A001951(n+1))` -/
def P14428982185285182919.Spec : Prop :=
  ∀ n, P14428982185285182919.a n = A341249 (n + 1)

end A341249

/-! ## A341249.P1598699387657866983

`A286666(A087057(n+1)-1)+A087057(n+1)`
-/

namespace A341249.P1598699387657866983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286666 (A087057 (n + 1) - 1).toNat + A087057 (n + 1)

end

end A341249.P1598699387657866983

namespace A341249

/-- `A286666(A087057(n+1)-1)+A087057(n+1)` -/
def P1598699387657866983.Spec : Prop :=
  ∀ n, P1598699387657866983.a n = A341249 (n + 1)

end A341249

/-! ## A341249.P1972891162511302407

`A026250(A007069(n+1))`
-/

namespace A341249.P1972891162511302407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026250 (A007069 (n + 1)).toNat

end

end A341249.P1972891162511302407

namespace A341249

/-- `A026250(A007069(n+1))` -/
def P1972891162511302407.Spec : Prop :=
  ∀ n, P1972891162511302407.a n = A341249 (n + 1)

end A341249

/-! ## A341249.P8866898980125232529

`A026250(A080764(2*n)+2*n)`
-/

namespace A341249.P8866898980125232529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026250 (A080764 (2 * n) + (2 * n : ℤ)).toNat

end

end A341249.P8866898980125232529

namespace A341249

/-- `A026250(A080764(2*n)+2*n)` -/
def P8866898980125232529.Spec : Prop :=
  ∀ n, P8866898980125232529.a n = A341249 (n + 1)

end A341249

/-! ## A341249.P16125491757867154642

`A188376(2*(n+1))-(A171588(2*n+1)+1)`
-/

namespace A341249.P16125491757867154642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188376 (2 * (n + 1)) - (A171588 (2 * n + 1) + 1)

end

end A341249.P16125491757867154642

namespace A341249

/-- `A188376(2*(n+1))-(A171588(2*n+1)+1)` -/
def P16125491757867154642.Spec : Prop :=
  ∀ n, P16125491757867154642.a n = A341249 (n + 1)

end A341249

/-! ## A341249.P4665735879899144386

`A188295(2*(n+1))+A188376(2*(n+1))-2`
-/

namespace A341249.P4665735879899144386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188295 (2 * (n + 1)) + (A188376 (2 * (n + 1)) - 2)

end

end A341249.P4665735879899144386

namespace A341249

/-- `A188295(2*(n+1))+A188376(2*(n+1))-2` -/
def P4665735879899144386.Spec : Prop :=
  ∀ n, P4665735879899144386.a n = A341249 (n + 1)

end A341249

/-! ## A341249.P15977476056364099800

`xor(1, A007069(A003151(n+1)))`
-/

namespace A341249.P15977476056364099800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A007069 (A003151 (n + 1)).toNat)

end

end A341249.P15977476056364099800

namespace A341249

/-- `xor(1, A007069(A003151(n+1)))` -/
def P15977476056364099800.Spec : Prop :=
  ∀ n, P15977476056364099800.a n = A341249 (n + 1)

end A341249

/-! ## A341249.P15810278538879039155

`A001953(A341239(n+1)-n)+A001953(n)`
-/

namespace A341249.P15810278538879039155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001953 (A341239 (n + 1) - (n : ℤ)).toNat + A001953 n

end

end A341249.P15810278538879039155

namespace A341249

/-- `A001953(A341239(n+1)-n)+A001953(n)` -/
def P15810278538879039155.Spec : Prop :=
  ∀ n, P15810278538879039155.a n = A341249 (n + 1)

end A341249

/-!
# A341250: a(n) = 5*a(n-1) - 4*a(n-3) for n >= 4, where a(1) = 1, a(2) = 3, a(3) = 13.

The programs for A341250, the canonical program `A341250.P17663815255061221366` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341250 has offset 1).

The definition of A341250 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)-4*a(n-3)` (program `A341250.P17663815255061221366`, by `A341250.P17663815255061221366.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A341250.P17663815255061221366

`5*a(n-1)-4*a(n-3)` with `a(0)=1, a(1)=3, a(2)=13`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A341250

/-- `5*a(n-1)-4*a(n-3)` -/
def P17663815255061221366.Spec : Prop :=
  ∀ n, P17663815255061221366.a n = A341250 (n + 1)

theorem P17663815255061221366.correct : P17663815255061221366.Spec := by
  intro n
  simp only [A341250, Nat.add_sub_cancel]

end A341250

/-! ## A341250.P17896661011909683097

`∑[ogf((-1+2x+2x^2)/(-1+4x+4x^2))]`
-/

namespace A341250.P17896661011909683097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -2] [1, -4, -4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341250.P17896661011909683097

namespace A341250

/-- `∑[ogf((-1+2x+2x^2)/(-1+4x+4x^2))]` -/
def P17896661011909683097.Spec : Prop :=
  ∀ n, P17896661011909683097.a n = A341250 (n + 1)

end A341250

/-! ## A341250.P8824436566904909801

`ogf((1-2x-2x^2)/(1-5x+4x^3))`
-/

namespace A341250.P8824436566904909801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -2] [1, -5, 0, 4] n

end

end A341250.P8824436566904909801

namespace A341250

/-- `ogf((1-2x-2x^2)/(1-5x+4x^3))` -/
def P8824436566904909801.Spec : Prop :=
  ∀ n, P8824436566904909801.a n = A341250 (n + 1)

end A341250

/-! ## A341250.P14903167580809452051

`∑[round((sqrt(8)+2)*a(n-1))]` with `a(0)=1, a(1)=2`
-/

namespace A341250.P14903167580809452051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  SequenceMachineLib.roundAway ((Real.sqrt (8 : ℝ) + 2) * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341250.P14903167580809452051

namespace A341250

/-- `∑[round((sqrt(8)+2)*a(n-1))]` -/
def P14903167580809452051.Spec : Prop :=
  ∀ n, P14903167580809452051.a n = A341250 (n + 1)

end A341250

/-! ## A341250.P14535109950254346763

`4*(a(n-1)+a(n-2))-3` with `a(0)=1, a(1)=3`
-/

namespace A341250.P14535109950254346763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 * (a (n - 1) + a (n - 2)) - 3

end

end A341250.P14535109950254346763

namespace A341250

/-- `4*(a(n-1)+a(n-2))-3` -/
def P14535109950254346763.Spec : Prop :=
  ∀ n, P14535109950254346763.a n = A341250 (n + 1)

end A341250

/-! ## A341250.P1564338794396202164

`∑[ceil(A057087(n)/2)]`
-/

namespace A341250.P1564338794396202164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057087 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341250.P1564338794396202164

namespace A341250

/-- `∑[ceil(A057087(n)/2)]` -/
def P1564338794396202164.Spec : Prop :=
  ∀ n, P1564338794396202164.a n = A341250 (n + 1)

end A341250

/-! ## A341250.P1941099536309042133

`A057087(n)-∑[A108051(n)]`
-/

namespace A341250.P1941099536309042133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057087 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341250.P1941099536309042133

namespace A341250

/-- `A057087(n)-∑[A108051(n)]` -/
def P1941099536309042133.Spec : Prop :=
  ∀ n, P1941099536309042133.a n = A341250 (n + 1)

end A341250

/-! ## A341250.P9533477807545006077

`∑[∑[A001333(n)]*A011782(n)]`
-/

namespace A341250.P9533477807545006077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341250.P9533477807545006077

namespace A341250

/-- `∑[∑[A001333(n)]*A011782(n)]` -/
def P9533477807545006077.Spec : Prop :=
  ∀ n, P9533477807545006077.a n = A341250 (n + 1)

end A341250

/-! ## A341250.P4961810377598047587

`∑[A000129(n+1)*A011782(n)]`
-/

namespace A341250.P4961810377598047587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341250.P4961810377598047587

namespace A341250

/-- `∑[A000129(n+1)*A011782(n)]` -/
def P4961810377598047587.Spec : Prop :=
  ∀ n, P4961810377598047587.a n = A341250 (n + 1)

end A341250

/-! ## A341250.P8178660465063427291

`∑[(A052937(n)-1)*A011782(n)]`
-/

namespace A341250.P8178660465063427291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052937 n - 1) * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341250.P8178660465063427291

namespace A341250

/-- `∑[(A052937(n)-1)*A011782(n)]` -/
def P8178660465063427291.Spec : Prop :=
  ∀ n, P8178660465063427291.a n = A341250 (n + 1)

end A341250

/-! ## A341250.P9880772671369726474

`A084128(n)+∑[A094013(n)]-A094013(n)`
-/

namespace A341250.P9880772671369726474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094013 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084128 n + (∑ j ∈ Finset.range (n + 1), f1 j - A094013 n)

end

end A341250.P9880772671369726474

namespace A341250

/-- `A084128(n)+∑[A094013(n)]-A094013(n)` -/
def P9880772671369726474.Spec : Prop :=
  ∀ n, P9880772671369726474.a n = A341250 (n + 1)

end A341250

/-!
# A341251: Expansion of (-1 + Product_{k>=1} 1 / (1 + (-x)^k))^9.

The programs for A341251, there is no canonical definition to state claims against.
-/

/-! ## A341251.P817012254568129247

`A341279(A166136(n+8)+3)`
-/

namespace A341251.P817012254568129247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (A166136 (n + 8) + 3).toNat

end

end A341251.P817012254568129247

/-! ## A341251.P13769335465556562236

`A341279(A167499(n+8)+4)`
-/

namespace A341251.P13769335465556562236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (A167499 (n + 8) + 4).toNat

end

end A341251.P13769335465556562236

/-! ## A341251.P10434901518390779789

`A341279(A000217(n+9)+9)`
-/

namespace A341251.P10434901518390779789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (A000217 (n + 9) + 9).toNat

end

end A341251.P10434901518390779789

/-! ## A341251.P8995879575390218274

`A341279(A000124(n+10)-(n+2))`
-/

namespace A341251.P8995879575390218274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (A000124 (n + 10) - (n + 2 : ℤ)).toNat

end

end A341251.P8995879575390218274

/-! ## A341251.P6044881275934892964

`A341279(Δ[A000292(n+9)]-(n+1))`
-/

namespace A341251.P6044881275934892964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (f1 (n + 1) - f1 n - (n + 1 : ℤ)).toNat

end

end A341251.P6044881275934892964

/-!
# A341253: Expansion of (-1 + Product_{k>=1} 1 / (1 + (-x)^k))^10.

The programs for A341253, there is no canonical definition to state claims against.
-/

/-! ## A341253.P13751635718718390481

`A341279(A166136(n+9)+4)`
-/

namespace A341253.P13751635718718390481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (A166136 (n + 9) + 4).toNat

end

end A341253.P13751635718718390481

/-! ## A341253.P11661140250888951544

`A341279(A167499(n+9)+5)`
-/

namespace A341253.P11661140250888951544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (A167499 (n + 9) + 5).toNat

end

end A341253.P11661140250888951544

/-! ## A341253.P3392531852805003794

`A341279(A000124(n+10)+9)`
-/

namespace A341253.P3392531852805003794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (A000124 (n + 10) + 9).toNat

end

end A341253.P3392531852805003794

/-! ## A341253.P2606030053564429660

`A341279(A000217(n+10)+10)`
-/

namespace A341253.P2606030053564429660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (A000217 (n + 10) + 10).toNat

end

end A341253.P2606030053564429660

/-! ## A341253.P12410537051730200831

`A341279(eq[10, A002262(n)])`
-/

namespace A341253.P12410537051730200831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341253.P12410537051730200831

/-!
# A341254: a(n) = floor(r*floor(r*n)), where r = (2 + sqrt(5))/2.

The programs for A341254, the canonical program `A341254.P15874538325871161202` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341254 has offset 1).

The definition of A341254 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341254.P15874538325871161202

`A193766(n+1)+2*A194151(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A341254

/-- `A193766(n+1)+2*A194151(n+1)` -/
def P15874538325871161202.Spec : Prop :=
  ∀ n, P15874538325871161202.a n = A341254 (n + 1)

theorem P15874538325871161202.correct : P15874538325871161202.Spec := by
  intro n
  simp only [A341254, Nat.add_sub_cancel]

end A341254

/-! ## A341254.P5401949749949639366

`A193766(n+1)+A005843(A194151(n+1))`
-/

namespace A341254.P5401949749949639366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193766 (n + 1) + A005843 (A194151 (n + 1)).toNat

end

end A341254.P5401949749949639366

namespace A341254

/-- `A193766(n+1)+A005843(A194151(n+1))` -/
def P5401949749949639366.Spec : Prop :=
  ∀ n, P5401949749949639366.a n = A341254 (n + 1)

end A341254

/-! ## A341254.P4687774044088612724

`A058066(A058066(n+1))`
-/

namespace A341254.P4687774044088612724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058066 (A058066 (n + 1)).toNat

end

end A341254.P4687774044088612724

namespace A341254

/-- `A058066(A058066(n+1))` -/
def P4687774044088612724.Spec : Prop :=
  ∀ n, P4687774044088612724.a n = A341254 (n + 1)

end A341254

/-! ## A341254.P11158662486289862416

`A058066(record[A058066(abs(1-n))])`
-/

namespace A341254.P11158662486289862416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058066 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058066 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A341254.P11158662486289862416

namespace A341254

/-- `A058066(record[A058066(abs(1-n))])` -/
def P11158662486289862416.Spec : Prop :=
  ∀ n, P11158662486289862416.a n = A341254 (n + 1)

end A341254

/-! ## A341254.P756883081909483484

`record[A058066(A058066(ceil(xor(1, n)/2)))]`
-/

namespace A341254.P756883081909483484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058066 (A058066 ⌈(Nat.xor 1 n : ℚ) / 2⌉.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341254.P756883081909483484

namespace A341254

/-- `record[A058066(A058066(ceil(xor(1, n)/2)))]` -/
def P756883081909483484.Spec : Prop :=
  ∀ n, P756883081909483484.a n = A341254 (n + 1)

end A341254

/-!
# A341255: Let f(n) = floor(r*floor(r*n)) = A341254(n), where r = (2 + sqrt(5))/2. Let a(1) = 1. Then a(n) = f(a(n-1)) for n >= 2.

The programs for A341255, there is no canonical definition to state claims against.
-/

/-! ## A341255.P16573552269324934864

`A341254(a(n-1))` with `a(0)=1`
-/

namespace A341255.P16573552269324934864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A341254 (a (n - 1)).toNat

end

end A341255.P16573552269324934864

/-! ## A341255.P6988421340987617687

`A058066(A058066(a(n-1)))` with `a(0)=1`
-/

namespace A341255.P6988421340987617687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A058066 (A058066 (a (n - 1)).toNat).toNat

end

end A341255.P6988421340987617687

/-!
# A341256: Concatenation of all 01-words in the order induced by A004526; see Comments.

The programs for A341256, there is no canonical definition to state claims against.
-/

/-! ## A341256.P6479973368315534702

`A030308(lt[A319954(n), 2])`
-/

namespace A341256.P6479973368315534702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319954 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A341256.P6479973368315534702

/-! ## A341256.P12673690456226678264

`A030308(comp[A001855(n+1)])`
-/

namespace A341256.P12673690456226678264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001855 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A341256.P12673690456226678264

/-! ## A341256.P5662329088111798043

`A030308(comp[A296349(n)-1])`
-/

namespace A341256.P5662329088111798043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296349 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A341256.P5662329088111798043

/-! ## A341256.P12772683528828555170

`A030308(eq[1, A319954(n)!])`
-/

namespace A341256.P12772683528828555170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A319954 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A341256.P12772683528828555170

/-! ## A341256.P8081991764110059039

`A030308(eq[0, Δ[A030530(n)]])`
-/

namespace A341256.P8081991764110059039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030530 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341256.P8081991764110059039

/-! ## A341256.P1213511956478762607

`A030308(comp[∑[A029837(n+1)]])`
-/

namespace A341256.P1213511956478762607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A341256.P1213511956478762607

/-! ## A341256.P555604892442787255

`A030308(eq[0, char[A001855(n+1)]])`
-/

namespace A341256.P555604892442787255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001855 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A341256.P555604892442787255

/-! ## A341256.P10665216151693186421

`A257992(p?[A015919(A120385(n+1))])`
-/

namespace A341256.P10665216151693186421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (A120385 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A341256.P10665216151693186421

/-! ## A341256.P14246332616225409355

`A030308(eq[A319954(n)², A319954(n)])`
-/

namespace A341256.P14246332616225409355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319954 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A341256.P14246332616225409355

/-! ## A341256.P2581969357234979735

`A030308(eq[A030302(n+1), A319954(n)])`
-/

namespace A341256.P2581969357234979735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A341256.P2581969357234979735

/-!
# A341257: Positions of palindromes in the ordering of all 01-words defined at A341256.

The programs for A341257, there is no canonical definition to state claims against.
-/

/-! ## A341257.P12472743302488494681

`A044051(n+3)-2`
-/

namespace A341257.P12472743302488494681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044051 (n + 3) - 2

end

end A341257.P12472743302488494681

/-! ## A341257.P16006271673571062692

`∑[A164126(n+3)/2]`
-/

namespace A341257.P16006271673571062692
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164126 (n + 3) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341257.P16006271673571062692

/-! ## A341257.P17037762197349956497

`record[A265509(n)%(n+2)]`
-/

namespace A341257.P17037762197349956497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265509 n) (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341257.P17037762197349956497

/-! ## A341257.P12022088422277949573

`∑[abs(Δ[A044051(n+2)])]`
-/

namespace A341257.P12022088422277949573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044051 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341257.P12022088422277949573

/-! ## A341257.P16623879901683548799

`(A006995(n+4)-3)/2`
-/

namespace A341257.P16623879901683548799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006995 (n + 4) - 3 : ℚ) / 2

end

end A341257.P16623879901683548799

/-! ## A341257.P11648519427065894598

`eq[1, A140807(2*n+3)]`
-/

namespace A341257.P11648519427065894598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140807 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341257.P11648519427065894598

/-! ## A341257.P414610895948194428

`eq[1, A140807(n+3)]/2`
-/

namespace A341257.P414610895948194428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140807 (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A341257.P414610895948194428

/-! ## A341257.P8129981669837067713

`floor((A164302(n+3)-4)/4)`
-/

namespace A341257.P8129981669837067713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A164302 (n + 3) - 4 : ℚ) / 4⌋

end

end A341257.P8129981669837067713

/-! ## A341257.P3936007537563388331

`record[gcd(n+1, A081241(n+1))]`
-/

namespace A341257.P3936007537563388331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A081241 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341257.P3936007537563388331

/-! ## A341257.P14715624215031491786

`lt[A303534(2*n+5), 1]+1`
-/

namespace A341257.P14715624215031491786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303534 (2 * n + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A341257.P14715624215031491786

/-!
# A341258: Concatenation of all 01-words, in the order induced by A000201; see Comments.

The programs for A341258, there is no canonical definition to state claims against.
-/

/-! ## A341258.P6647781670086622842

`A003849(and(A004086(n), A291211(n+1)))`
-/

namespace A341258.P6647781670086622842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (Int.land (A004086 n) (A291211 (n + 1))).toNat

end

end A341258.P6647781670086622842

/-! ## A341258.P3733237023549769322

`A010054(A237420(n+8)+A135899(n+8))`
-/

namespace A341258.P3733237023549769322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A237420 (n + 8) + A135899 (n + 8)).toNat

end

end A341258.P3733237023549769322

/-! ## A341258.P12823798618008572759

`A190239(A065033(n+9)*A100724(n+14))`
-/

namespace A341258.P12823798618008572759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190239 (A065033 (n + 9) * A100724 (n + 14)).toNat

end

end A341258.P12823798618008572759

/-! ## A341258.P10609598776295214365

`A321016(A115684(n+1))`
-/

namespace A341258.P10609598776295214365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321016 (A115684 (n + 1)).toNat

end

end A341258.P10609598776295214365

/-! ## A341258.P5092390225911650239

`A157687(A161514(n+1))`
-/

namespace A341258.P5092390225911650239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157687 (A161514 (n + 1)).toNat

end

end A341258.P5092390225911650239

/-!
# A341259: Number of 0's in n-th word defined at A341258.

The programs for A341259, there is no canonical definition to state claims against.
-/

/-! ## A341259.P15156257508020344359

`A200649(n+3)-1`
-/

namespace A341259.P15156257508020344359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200649 (n + 3) - 1

end

end A341259.P15156257508020344359

/-! ## A341259.P8013411944658564267

`A387789(A052499(n+1))`
-/

namespace A341259.P8013411944658564267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387789 (A052499 (n + 1)).toNat

end

end A341259.P8013411944658564267

/-! ## A341259.P2929185785584769663

`A145037(A003754(n+2))`
-/

namespace A341259.P2929185785584769663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (A003754 (n + 2)).toNat

end

end A341259.P2929185785584769663

/-! ## A341259.P11605099585191118970

`A023416(A232559(n+2))`
-/

namespace A341259.P11605099585191118970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A232559 (n + 2)).toNat

end

end A341259.P11605099585191118970

/-! ## A341259.P15708590668053483955

`A014081(A247648(n+2))`
-/

namespace A341259.P15708590668053483955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (A247648 (n + 2)).toNat

end

end A341259.P15708590668053483955

/-! ## A341259.P2154437013356605270

`A004718(A365809(n+2))`
-/

namespace A341259.P2154437013356605270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A365809 (n + 2)).toNat

end

end A341259.P2154437013356605270

/-! ## A341259.P2476507075241562003

`A387789(A380358(n+2))`
-/

namespace A341259.P2476507075241562003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387789 (A380358 (n + 2)).toNat

end

end A341259.P2476507075241562003

/-! ## A341259.P9468135405007346791

`A023443(A200649(n+3))`
-/

namespace A341259.P9468135405007346791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A200649 (n + 3)).toNat

end

end A341259.P9468135405007346791

/-! ## A341259.P18095688415854962200

`A023416(A232640(n+1)+1)`
-/

namespace A341259.P18095688415854962200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A232640 (n + 1) + 1).toNat

end

end A341259.P18095688415854962200

/-! ## A341259.P14393898143806771059

`A080791(A232640(n+1)+1)`
-/

namespace A341259.P14393898143806771059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A232640 (n + 1) + 1).toNat

end

end A341259.P14393898143806771059

/-!
# A341260: Wythoff ceiling array; see Comments.

The programs for A341260, there is no canonical definition to state claims against.
-/

/-! ## A341260.P4076614105996246448

`A035513(n+1)+A022290(A130321(n))`
-/

namespace A341260.P4076614105996246448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035513 (n + 1) + A022290 (A130321 n).toNat

end

end A341260.P4076614105996246448

/-! ## A341260.P8729406117053116803

`A053602(A099375(n))+A035513(n+1)`
-/

namespace A341260.P8729406117053116803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A099375 n).toNat + A035513 (n + 1)

end

end A341260.P8729406117053116803

/-! ## A341260.P10251395637368857543

`A193588(A061579(n))+A035513(n+1)`
-/

namespace A341260.P10251395637368857543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193588 (A061579 n).toNat + A035513 (n + 1)

end

end A341260.P10251395637368857543

/-! ## A341260.P3161948733658062205

`A268361(A054582(n))+A035513(n+1)`
-/

namespace A341260.P3161948733658062205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268361 (A054582 n).toNat + A035513 (n + 1)

end

end A341260.P3161948733658062205

/-! ## A341260.P12751362996205977094

`A104762(A014132(n+1))+A035513(n+1)`
-/

namespace A341260.P12751362996205977094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104762 (A014132 (n + 1)).toNat + A035513 (n + 1)

end

end A341260.P12751362996205977094

/-! ## A341260.P5177914616132158965

`A035513(n+1)+A000045(A004736(n+1)+1)`
-/

namespace A341260.P5177914616132158965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035513 (n + 1) + A000045 (A004736 (n + 1) + 1).toNat

end

end A341260.P5177914616132158965

/-! ## A341260.P12286925308721155861

`A083412(A061579(n))+A022290(A130321(n))`
-/

namespace A341260.P12286925308721155861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083412 (A061579 n).toNat + A022290 (A130321 n).toNat

end

end A341260.P12286925308721155861

/-! ## A341260.P14876006416809140913

`A083412(A061579(n))+A053602(A099375(n))`
-/

namespace A341260.P14876006416809140913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083412 (A061579 n).toNat + A053602 (A099375 n).toNat

end

end A341260.P14876006416809140913

/-! ## A341260.P13198337568382627243

`A268361(A054582(n))+A083412(A061579(n))`
-/

namespace A341260.P13198337568382627243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268361 (A054582 n).toNat + A083412 (A061579 n).toNat

end

end A341260.P13198337568382627243

/-! ## A341260.P6053054968830149421

`A035513(n+1)+A035513(A000124(A025581(n)))`
-/

namespace A341260.P6053054968830149421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035513 (n + 1) + A035513 (A000124 (A025581 n).toNat).toNat

end

end A341260.P6053054968830149421

/-!
# A341262: Numbers not in the Wythoff ceiling array (A341260).

The programs for A341262, there is no canonical definition to state claims against.
-/

/-! ## A341262.P8389073194081956500

`comp[A139764(n+1)+n]+1`
-/

namespace A341262.P8389073194081956500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139764 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A341262.P8389073194081956500

/-! ## A341262.P2477223213929912767

`comp[A000071(A035614(n)+2)+1+n]+1`
-/

namespace A341262.P2477223213929912767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (A035614 n + 2).toNat + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A341262.P2477223213929912767

/-! ## A341262.P4212146488251908342

`record[A120239(A026351(n))]`
-/

namespace A341262.P4212146488251908342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120239 (A026351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341262.P4212146488251908342

/-! ## A341262.P9414957626699706453

`record[A120239(A066096(n)+1)]`
-/

namespace A341262.P9414957626699706453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120239 (A066096 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341262.P9414957626699706453

/-! ## A341262.P16141871060507099829

`record[and(A014677(n), A120239(n+1))]`
-/

namespace A341262.P16141871060507099829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014677 n) (A120239 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341262.P16141871060507099829

/-!
# A341263: Coefficient of x^(2*n) in (-1 + Product_{k>=1} (1 - x^k))^n.

The programs for A341263, there is no canonical definition to state claims against.
-/

/-! ## A341263.P7409071117260180074

`A047265(floor(acot(n))+2*n²)`
-/

namespace A341263.P7409071117260180074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (⌊SequenceMachineLib.acot (n : ℝ)⌋ + (2 * n ^ 2 : ℤ)).toNat

end

end A341263.P7409071117260180074

/-! ## A341263.P1299590974586499704

`A047265(or(2*n², floor(acot(n))))`
-/

namespace A341263.P1299590974586499704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (Int.lor (2 * n ^ 2 : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A341263.P1299590974586499704

/-! ## A341263.P13353004928790479889

`A047265(xor(2*n², floor(acot(n))))`
-/

namespace A341263.P13353004928790479889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (Int.xor (2 * n ^ 2 : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A341263.P13353004928790479889

/-! ## A341263.P13005395116405037171

`A047265(n^ceil(atan(n))+n²)`
-/

namespace A341263.P13005395116405037171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ) + (n ^ 2 : ℚ))).toNat

end

end A341263.P13005395116405037171

/-! ## A341263.P11281370356264610459

`A047265(A004277(n²))`
-/

namespace A341263.P11281370356264610459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A004277 (n ^ 2)).toNat

end

end A341263.P11281370356264610459

/-!
# A341265: Coefficient of x^(2*n) in (-1 + Product_{k>=1} 1 / (1 + x^k))^n.

The programs for A341265, there is no canonical definition to state claims against.
-/

/-! ## A341265.P104349395971714049

`A341279(∑[4*n])`
-/

namespace A341265.P104349395971714049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A341265.P104349395971714049

/-! ## A341265.P17536346513835083186

`A341279(A046092(n))+C(n, n+1)`
-/

namespace A341265.P17536346513835083186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (A046092 n).toNat + (Nat.choose n (n + 1) : ℤ)

end

end A341265.P17536346513835083186

/-! ## A341265.P8562102767447607202

`A341279(A046092(n))%A062395(n)`
-/

namespace A341265.P8562102767447607202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341279 (A046092 n).toNat) (A062395 n)

end

end A341265.P8562102767447607202

/-! ## A341265.P12463368235452647130

`gcd(A000038(n), A341279(A046092(n)))`
-/

namespace A341265.P12463368235452647130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A341279 (A046092 n).toNat)

end

end A341265.P12463368235452647130

/-! ## A341265.P13327040523300321609

`lcm(A020985(n), A341279(A046092(n)))`
-/

namespace A341265.P13327040523300321609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A341279 (A046092 n).toNat)

end

end A341265.P13327040523300321609

/-! ## A341265.P14460193374554063437

`A341279(A046092(n))+A000007(n+1)`
-/

namespace A341265.P14460193374554063437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (A046092 n).toNat + A000007 (n + 1)

end

end A341265.P14460193374554063437

/-! ## A341265.P12568152251919466685

`A033999(2*n)*A341279(A046092(n))`
-/

namespace A341265.P12568152251919466685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A341279 (A046092 n).toNat

end

end A341265.P12568152251919466685

/-! ## A341265.P23700425681299316

`A001489(n)+A341279(A046092(n))+n`
-/

namespace A341265.P23700425681299316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (A341279 (A046092 n).toNat + (n : ℤ))

end

end A341265.P23700425681299316

/-! ## A341265.P3984581472504861938

`A341279(A046092(n))/A014963(∑[n+1])`
-/

namespace A341265.P3984581472504861938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341279 (A046092 n).toNat : ℚ) / (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A341265.P3984581472504861938

/-! ## A341265.P5559186561577840170

`A328479(2*n+1)*A341279(A046092(n))`
-/

namespace A341265.P5559186561577840170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328479 (2 * n + 1) * A341279 (A046092 n).toNat

end

end A341265.P5559186561577840170

/-! ## A341265.P6806958155292606272

`A001222(A167488(n+1))*A341279(A046092(n))`
-/

namespace A341265.P6806958155292606272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A167488 (n + 1)).toNat * A341279 (A046092 n).toNat

end

end A341265.P6806958155292606272

/-! ## A341265.P8727057750792942473

`A341279(A046092(n))^A001222(A323075(n+1))`
-/

namespace A341265.P8727057750792942473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341279 (A046092 n).toNat : ℚ) ^ (A001222 (A323075 (n + 1)).toNat : ℤ)

end

end A341265.P8727057750792942473

/-!
# A341266: a(n) is the n-th term of the n-fold self-convolution of the twice left-shifted tribonacci sequence (A000073).

The programs for A341266, there is no canonical definition to state claims against.
-/

/-! ## A341266.P2413390467023100840

`A104580(A004273(n²))`
-/

namespace A341266.P2413390467023100840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104580 (A004273 (n ^ 2)).toNat

end

end A341266.P2413390467023100840

/-! ## A341266.P4632845708016350906

`A104580(A163985(n²))`
-/

namespace A341266.P4632845708016350906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104580 (A163985 (n ^ 2)).toNat

end

end A341266.P4632845708016350906

/-! ## A341266.P8770040802387530560

`A104580(A001844(n)-A103517(n))`
-/

namespace A341266.P8770040802387530560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104580 (A001844 n - A103517 n).toNat

end

end A341266.P8770040802387530560

/-! ## A341266.P11150553573583577374

`A104580(A080859(n)%A001844(n))`
-/

namespace A341266.P11150553573583577374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104580 (Int.tmod (A080859 n) (A001844 n)).toNat

end

end A341266.P11150553573583577374

/-! ## A341266.P7286992113401482

`A104580(eq[A038722(n+1), A065475(n+1)])`
-/

namespace A341266.P7286992113401482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104580 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A341266.P7286992113401482

/-!
# A341267: Gaps between first elements of quadruple primes of the form {p, p+2, p+6, p+12}.

The programs for A341267, there is no canonical definition to state claims against.
-/

/-! ## A341267.P9335954670212754026

`A172454(n+2)-A172454(n+1)`
-/

namespace A341267.P9335954670212754026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172454 (n + 2) - A172454 (n + 1)

end

end A341267.P9335954670212754026

/-! ## A341267.P17875118581257471971

`Δ[A172454(n+1)]`
-/

namespace A341267.P17875118581257471971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341267.P17875118581257471971

/-! ## A341267.P18068595099977414311

`Δ[p?[A023241(n+1)+2]]`
-/

namespace A341267.P18068595099977414311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023241 (n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341267.P18068595099977414311

/-! ## A341267.P15172499874584106199

`Δ[p?[A098414(n+1)+10]]`
-/

namespace A341267.P15172499874584106199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098414 (n + 1) + 10

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341267.P15172499874584106199

/-! ## A341267.P4299373523113255381

`Δ[p?[A022004(n+1)+12]]`
-/

namespace A341267.P4299373523113255381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 1) + 12

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341267.P4299373523113255381

/-!
# A341268: Square array read by descending antidiagonals. T(n,k) is the number of ways to factor a permutation of [2*n] into exactly k good factors, n>=0, k>=0.

The programs for A341268, there is no canonical definition to state claims against.
-/

/-! ## A341268.P14041046540761400747

`abs(A326327(A061579(n)))`
-/

namespace A341268.P14041046540761400747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A326327 (A061579 n).toNat|

end

end A341268.P14041046540761400747

/-! ## A341268.P3029175813022494310

`gcd(A000038(n), A326327(A061579(n)))`
-/

namespace A341268.P3029175813022494310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A326327 (A061579 n).toNat)

end

end A341268.P3029175813022494310

/-! ## A341268.P18428035213488972550

`lcm(A020985(n), A326327(A061579(n)))`
-/

namespace A341268.P18428035213488972550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A326327 (A061579 n).toNat)

end

end A341268.P18428035213488972550

/-! ## A341268.P9002712467918989231

`gcd(-A326327(A061579(n)), A010816(n))`
-/

namespace A341268.P9002712467918989231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A326327 (A061579 n).toNat) (A010816 n)

end

end A341268.P9002712467918989231

/-! ## A341268.P5235103474588068454

`lcm(-A326327(A061579(n)), A014963(12*(n+1)))`
-/

namespace A341268.P5235103474588068454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A326327 (A061579 n).toNat) (A014963 (12 * (n + 1)))

end

end A341268.P5235103474588068454

/-!
# A341273: If A261283(n) = 0, then a(n) = n, otherwise a(n) is obtained by flipping the A261283(n)-th rightmost bit in the binary expansion of n.

The programs for A341273, the canonical program `A341273.P10577388597316029777` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341273 has offset 0).

The definition of A341273 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341273.P10577388597316029777

`xor(n, A131577(A261283(n)))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A341273

/-- `xor(n, A131577(A261283(n)))` -/
def P10577388597316029777.Spec : Prop :=
  ∀ n, P10577388597316029777.a n = A341273 n

theorem P10577388597316029777.correct : P10577388597316029777.Spec := by
  intro n
  simp only [A341273]

end A341273

/-! ## A341273.P11128738355526038097

`xor(n, A131577(A253315(2*n)))`
-/

namespace A341273.P11128738355526038097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A131577 (A253315 (2 * n)).toNat)

end

end A341273.P11128738355526038097

namespace A341273

/-- `xor(n, A131577(A253315(2*n)))` -/
def P11128738355526038097.Spec : Prop :=
  ∀ n, P11128738355526038097.a n = A341273 n

end A341273

/-!
# A341274: Composite numbers k that are divisible by (k mod sopfr(k))+floor(k/sopfr(k)), where sopfr = A001414.

The programs for A341274, there is no canonical definition to state claims against.
-/

/-! ## A341274.P3231764418210204223

`A107320(A107366(n+2)+6)`
-/

namespace A341274.P3231764418210204223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107320 (A107366 (n + 2) + 6).toNat

end

end A341274.P3231764418210204223

/-!
# A341276: a(n) = 1 + 3*n*(n+1) - Sum_{k=1..n} d(k), where d(k) is the number of divisors of k.

The programs for A341276, the canonical program `A341276.P16530414387472096334` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341276 has offset 0).

The definition of A341276 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A341276.P16530414387472096334

`1+A028896(n)-A006218(n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A341276

/-- `1+A028896(n)-A006218(n)` -/
def P16530414387472096334.Spec : Prop :=
  ∀ n, P16530414387472096334.a n = A341276 n

theorem P16530414387472096334.correct : P16530414387472096334.Spec := by
  intro n
  simp only [A341276]

end A341276

/-! ## A341276.P12692848723511134639

`Δ[n^3]-∑[∑{d}[n, ceil(1/#)]]`
-/

namespace A341276.P12692848723511134639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), ⌈1 / (d : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A341276.P12692848723511134639

namespace A341276

/-- `Δ[n^3]-∑[∑{d}[n, ceil(1/#)]]` -/
def P12692848723511134639.Spec : Prop :=
  ∀ n, P12692848723511134639.a n = A341276 n

end A341276

/-! ## A341276.P16972630872134725198

`Δ[n^3]+1-∑[∏{e}[n, #+1]]`
-/

namespace A341276.P16972630872134725198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A341276.P16972630872134725198

namespace A341276

/-- `Δ[n^3]+1-∑[∏{e}[n, #+1]]` -/
def P16972630872134725198.Spec : Prop :=
  ∀ n, P16972630872134725198.a n = A341276 n

end A341276

/-! ## A341276.P8040571031670465998

`A003215(n)-A006218(n)`
-/

namespace A341276.P8040571031670465998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n - A006218 n

end

end A341276.P8040571031670465998

namespace A341276

/-- `A003215(n)-A006218(n)` -/
def P8040571031670465998.Spec : Prop :=
  ∀ n, P8040571031670465998.a n = A341276 n

theorem P8040571031670465998.correct : P8040571031670465998.Spec := by
  intro n
  simp only [A341276, Nat.add_sub_cancel, A341276.P8040571031670465998.a, A341276.P16530414387472096334.a, A003215, A003215.P5851317289441473820.a, A006218, A006218.P9218434490128439557.a, A028896, A028896.P3776891904721443318.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A341276

/-! ## A341276.P9209220793610531918

`A056109(n)-∑[A032741(n)]`
-/

namespace A341276.P9209220793610531918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056109 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341276.P9209220793610531918

namespace A341276

/-- `A056109(n)-∑[A032741(n)]` -/
def P9209220793610531918.Spec : Prop :=
  ∀ n, P9209220793610531918.a n = A341276 n

end A341276

/-! ## A341276.P15332493285438925366

`abs(A006218(n)-∑[A008458(n)])`
-/

namespace A341276.P15332493285438925366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006218 n - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A341276.P15332493285438925366

namespace A341276

/-- `abs(A006218(n)-∑[A008458(n)])` -/
def P15332493285438925366.Spec : Prop :=
  ∀ n, P15332493285438925366.a n = A341276 n

end A341276

/-! ## A341276.P17615669240466867288

`2*A005448(n+1)-A054519(n)`
-/

namespace A341276.P17615669240466867288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005448 (n + 1) - A054519 n

end

end A341276.P17615669240466867288

namespace A341276

/-- `2*A005448(n+1)-A054519(n)` -/
def P17615669240466867288.Spec : Prop :=
  ∀ n, P17615669240466867288.a n = A341276 n

end A341276

/-! ## A341276.P2308086726923620457

`A028896(n)-A006590(n+1)+n+2`
-/

namespace A341276.P2308086726923620457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028896 n - A006590 (n + 1) + (n + 2 : ℤ)

end

end A341276.P2308086726923620457

namespace A341276

/-- `A028896(n)-A006590(n+1)+n+2` -/
def P2308086726923620457.Spec : Prop :=
  ∀ n, P2308086726923620457.a n = A341276 n

theorem P2308086726923620457.correct : P2308086726923620457.Spec := by
  intro n
  simp only [A341276, Nat.add_sub_cancel, A341276.P2308086726923620457.a, A341276.P16530414387472096334.a, A006218, A006218.P9218434490128439557.a, A006590, A006590.P12269573465856499266.a, A028896, A028896.P3776891904721443318.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A341276

/-! ## A341276.P10095982885049903296

`A000005(n+1)+A003215(n)-∑[A000005(n+1)]`
-/

namespace A341276.P10095982885049903296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A003215 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A341276.P10095982885049903296

namespace A341276

/-- `A000005(n+1)+A003215(n)-∑[A000005(n+1)]` -/
def P10095982885049903296.Spec : Prop :=
  ∀ n, P10095982885049903296.a n = A341276 n

end A341276

/-! ## A341276.P16857568156194647213

`∑[A008458(n)-A000005(n+1)]+A000005(n+1)`
-/

namespace A341276.P16857568156194647213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A000005 (n + 1)

end

end A341276.P16857568156194647213

namespace A341276

/-- `∑[A008458(n)-A000005(n+1)]+A000005(n+1)` -/
def P16857568156194647213.Spec : Prop :=
  ∀ n, P16857568156194647213.a n = A341276 n

end A341276

/-! ## A341276.P4209589997608918243

`A000567(n+1)-A006218(n)-n`
-/

namespace A341276.P4209589997608918243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (n + 1) - A006218 n - (n : ℤ)

end

end A341276.P4209589997608918243

namespace A341276

/-- `A000567(n+1)-A006218(n)-n` -/
def P4209589997608918243.Spec : Prop :=
  ∀ n, P4209589997608918243.a n = A341276 n

theorem P4209589997608918243.correct : P4209589997608918243.Spec := by
  intro n
  simp only [A341276, Nat.add_sub_cancel, A341276.P4209589997608918243.a, A341276.P16530414387472096334.a, A000567, A000567.P17850767079432249295.a, A006218, A006218.P9218434490128439557.a, A028896, A028896.P3776891904721443318.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A341276

/-! ## A341276.P13630356003967643769

`∑[A008458(n)-A277692(2*n+1)]`
-/

namespace A341276.P13630356003967643769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A277692 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341276.P13630356003967643769

namespace A341276

/-- `∑[A008458(n)-A277692(2*n+1)]` -/
def P13630356003967643769.Spec : Prop :=
  ∀ n, P13630356003967643769.a n = A341276 n

end A341276

/-!
# A341277: Number of length-n binary mesosome-avoiding strings.

The programs for A341277, there is no canonical definition to state claims against.
-/

/-! ## A341277.P3608497436553884430

`∑[A001223(∏[A325325(n)])]`
-/

namespace A341277.P3608497436553884430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325325 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341277.P3608497436553884430

/-! ## A341277.P17820916902755063335

`A157416(n+2)+A000122(n)`
-/

namespace A341277.P17820916902755063335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157416 (n + 2) + A000122 n

end

end A341277.P17820916902755063335

/-! ## A341277.P2559329114143475089

`record[and(A001615(n+1), A154562(n+1))]`
-/

namespace A341277.P2559329114143475089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001615 (n + 1)) (A154562 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341277.P2559329114143475089

/-! ## A341277.P14341349265338147567

`record[and(A054760(n+3), A364218(n+1))]`
-/

namespace A341277.P14341349265338147567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054760 (n + 3)) (A364218 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341277.P14341349265338147567

/-!
# A341279: Triangle read by rows: T(n,k) = coefficient of x^n in expansion of (-1 + Product_{j>=1} 1 / (1 + (-x)^j))^k, n >= 0, 0 <= k <= n.

The programs for A341279, there is no canonical definition to state claims against.
-/

/-! ## A341279.P16546678903391079552

`A357368(n)%A066012(A139457(n+2))`
-/

namespace A341279.P16546678903391079552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357368 n) (A066012 (A139457 (n + 2)).toNat)

end

end A341279.P16546678903391079552

/-! ## A341279.P16614350925695664215

`A157872(A157870(n))%A002260(n+3)`
-/

namespace A341279.P16614350925695664215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157872 (A157870 n).toNat) (A002260 (n + 3))

end

end A341279.P16614350925695664215

/-! ## A341279.P5220938028567593933

`A055640(lcm(A025581(n+1), A281891(n)))`
-/

namespace A341279.P5220938028567593933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (Int.lcm (A025581 (n + 1)) (A281891 n))

end

end A341279.P5220938028567593933

/-! ## A341279.P692328925714895719

`A000120(A008611(A210472(n))²)`
-/

namespace A341279.P692328925714895719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A008611 (A210472 n).toNat ^ 2).toNat

end

end A341279.P692328925714895719

/-! ## A341279.P11283236045800352062

`A367817(A004248(n)*A243081(n+1))`
-/

namespace A341279.P11283236045800352062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367817 (A004248 n * A243081 (n + 1)).toNat

end

end A341279.P11283236045800352062

/-!
# A341280: Numbers k such that A073837(k) is a multiple of k.

The programs for A341280, there is no canonical definition to state claims against.
-/

/-! ## A341280.P3994439851472052747

`record[gcd(A063955(n+1), A157271(n+1))]`
-/

namespace A341280.P3994439851472052747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A063955 (n + 1)) (A157271 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341280.P3994439851472052747

/-! ## A341280.P15536762369771341121

`record[gcd(A157271(2*n+1), A294113(n+1))]`
-/

namespace A341280.P15536762369771341121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A157271 (2 * n + 1)) (A294113 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341280.P15536762369771341121

/-! ## A341280.P6333633997272391273

`record[gcd(n+1, A341700(n+1))]`
-/

namespace A341280.P6333633997272391273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A341700 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341280.P6333633997272391273

/-! ## A341280.P11190981868422429087

`record[gcd(A073837(n+1), A161980(n+1))]`
-/

namespace A341280.P11190981868422429087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073837 (n + 1)) (A161980 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341280.P11190981868422429087

/-! ## A341280.P15624678390193364625

`∑[A020639(∑[A029991(n+1)+1])]`
-/

namespace A341280.P15624678390193364625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029991 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341280.P15624678390193364625

/-!
# A341281: Number of n-digit nonnegative integers m whose first n digits of their binary expansion are equal to m.

The programs for A341281, there is no canonical definition to state claims against.
-/

/-! ## A341281.P14123891716726845383

`A010872(gcd(∑[4*n], A109800(n+1)))`
-/

namespace A341281.P14123891716726845383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A109800 (n + 1)))

end

end A341281.P14123891716726845383

/-! ## A341281.P263912778577457101

`(A050964(n+1)+A015053(n+1))%3`
-/

namespace A341281.P263912778577457101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050964 (n + 1) + A015053 (n + 1)) 3

end

end A341281.P263912778577457101

/-! ## A341281.P6406949024508812049

`A339579(A352233(n+1))+Δ[A004396(n+1)]`
-/

namespace A341281.P6406949024508812049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (A352233 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A341281.P6406949024508812049

/-! ## A341281.P16009891190782545530

`A003137(A358166(n+1)+A109814(3*n+2))`
-/

namespace A341281.P16009891190782545530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003137 (A358166 (n + 1) + A109814 (3 * n + 2)).toNat

end

end A341281.P16009891190782545530

/-! ## A341281.P7310225963110663468

`and(A001285(A070161(n+2)), A299791(2*(n+1)))`
-/

namespace A341281.P7310225963110663468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001285 (A070161 (n + 2)).toNat) (A299791 (2 * (n + 1)))

end

end A341281.P7310225963110663468

/-!
# A341282: Numbers k such that there is no k-digit number m with the property that the binary expansion of m begins with the base-10 digits of m.

The programs for A341282, there is no canonical definition to state claims against.
-/

/-! ## A341282.P5113419723562820623

`eq[0, A341281(n+1)]+1`
-/

namespace A341282.P5113419723562820623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341281 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341282.P5113419723562820623

/-! ## A341282.P6565466257907739508

`A342363(n)+a(n-1)` with `a(0)=4`
-/

namespace A341282.P6565466257907739508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A342363 n + a (n - 1)

end

end A341282.P6565466257907739508

/-! ## A341282.P10305797442463332521

`∑[A342363(C(2, n)+n)]+1`
-/

namespace A341282.P10305797442463332521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342363 (Nat.choose 2 n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A341282.P10305797442463332521

/-! ## A341282.P13769020833112393490

`∑[A342363(abs(1-n)+1)]+1`
-/

namespace A341282.P13769020833112393490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342363 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A341282.P13769020833112393490

/-! ## A341282.P3761151579271847048

`eq[0, A341281(A028310(n))]`
-/

namespace A341282.P3761151579271847048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341281 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341282.P3761151579271847048

/-! ## A341282.P1152092595675561748

`A020725(eq[0, A341281(n+1)])`
-/

namespace A341282.P1152092595675561748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341281 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341282.P1152092595675561748

/-! ## A341282.P3846845364117191334

`eq[0, A341281(A233583(n+1))]`
-/

namespace A341282.P3846845364117191334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341281 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341282.P3846845364117191334

/-! ## A341282.P3698024716650524626

`eq[0, A341281(A060000(n+1))]`
-/

namespace A341282.P3698024716650524626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341281 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341282.P3698024716650524626

/-!
# A341283: Number of ways to partition n labeled elements into sets of different sizes of at least 3.

The programs for A341283, there is no canonical definition to state claims against.
-/

/-! ## A341283.P17405805679855101585

`A074682(A087180(n)^A074682(n))`
-/

namespace A341283.P17405805679855101585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074682 (SequenceMachineLib.roundAway ((A087180 n : ℚ) ^ (A074682 n : ℤ))).toNat

end

end A341283.P17405805679855101585

/-! ## A341283.P4827057905583005646

`A074682(Δ[A096748(n)]^A074682(n))`
-/

namespace A341283.P4827057905583005646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074682 (SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) ^ (A074682 n : ℤ))).toNat

end

end A341283.P4827057905583005646

/-! ## A341283.P15602036612747270927

`A074682(A027194(n+1)^A074682(n))`
-/

namespace A341283.P15602036612747270927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074682 (SequenceMachineLib.roundAway ((A027194 (n + 1) : ℚ) ^ (A074682 n : ℤ))).toNat

end

end A341283.P15602036612747270927

/-! ## A341283.P13614213329035066068

`A074682(A061357(n+1)^A074682(n))`
-/

namespace A341283.P13614213329035066068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074682 (SequenceMachineLib.roundAway ((A061357 (n + 1) : ℚ) ^ (A074682 n : ℤ))).toNat

end

end A341283.P13614213329035066068

/-! ## A341283.P13055000352667660378

`A131005(A027194(n+1)^A131005(n))`
-/

namespace A341283.P13055000352667660378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131005 (SequenceMachineLib.roundAway ((A027194 (n + 1) : ℚ) ^ (A131005 n : ℤ))).toNat

end

end A341283.P13055000352667660378

/-!
# A341285: Let B be the set of sequences of positive integers {b(k), k >= 0} such that for some k > 0 (necessarily unique) and any m >= 0, b(m+k) = b(m) + b(m+1) + ... + b(m+k-1); let g(b) = b(0); a(n) is the least value of g(b) for an element b of B containing n.

The programs for A341285, there is no canonical definition to state claims against.
-/

/-! ## A341285.P2369932170945704725

`A070939(A341699(n+1))`
-/

namespace A341285.P2369932170945704725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A341699 (n + 1)).toNat

end

end A341285.P2369932170945704725

/-! ## A341285.P10572875467412339413

`A029837(A341699(n+1)+1)`
-/

namespace A341285.P10572875467412339413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A341699 (n + 1) + 1).toNat

end

end A341285.P10572875467412339413

/-! ## A341285.P7764724191415689416

`A000523(2*A341699(n+1))`
-/

namespace A341285.P7764724191415689416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * A341699 (n + 1)).toNat

end

end A341285.P7764724191415689416

/-! ## A341285.P13371374423079021042

`A238845(2*A341699(n+1))`
-/

namespace A341285.P13371374423079021042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238845 (2 * A341699 (n + 1)).toNat

end

end A341285.P13371374423079021042

/-! ## A341285.P4476925390182637209

`A334097(A341699(n+1)+A305936(3*n+1))`
-/

namespace A341285.P4476925390182637209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334097 (A341699 (n + 1) + A305936 (3 * n + 1)).toNat

end

end A341285.P4476925390182637209

/-!
# A341288: Square array T(n, k), read by antidiagonals, n, k >= 0; T(n, k) = XOR_{u in B(n), v in B(k)} 2^(u XOR v) where XOR denotes the bitwise XOR operator and B(n) gives the exponents in expression for n as a sum of powers of 2.

The programs for A341288, there is no canonical definition to state claims against.
-/

/-! ## A341288.P2045814203357662905

`gcd(A007814(A168551(n)), A048720(n))`
-/

namespace A341288.P2045814203357662905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (A168551 n).toNat) (A048720 n)

end

end A341288.P2045814203357662905

/-! ## A341288.P10363831741754216567

`A007318(n)-A023416(A282338(n+1))`
-/

namespace A341288.P10363831741754216567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A023416 (A282338 (n + 1)).toNat

end

end A341288.P10363831741754216567

/-! ## A341288.P8230589096265057918

`A124762(A063394(n))`
-/

namespace A341288.P8230589096265057918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A063394 n).toNat

end

end A341288.P8230589096265057918

/-! ## A341288.P8537255776419929766

`A275851(A008300(n))`
-/

namespace A341288.P8537255776419929766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275851 (A008300 n).toNat

end

end A341288.P8537255776419929766

/-! ## A341288.P13880883024629700218

`A037888(A296548(n))`
-/

namespace A341288.P13880883024629700218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (A296548 n).toNat

end

end A341288.P13880883024629700218

/-!
# A341289: Weight multiplicities for 3875-dimensional irreducible representation of the Lie algebra E_8.

The programs for A341289, there is no canonical definition to state claims against.
-/

/-! ## A341289.P7064601823091958410

`A111617(a(n-1))-1` with `a(0)=1, a(1)=7, a(2)=6`
-/

namespace A341289.P7064601823091958410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 6] fun n a =>
  A111617 (a (n - 1)).toNat - 1

end

end A341289.P7064601823091958410

/-!
# A341290: Weight multiplicities for 30380-dimensional irreducible representation of the Lie algebra E_8.

The programs for A341290, there is no canonical definition to state claims against.
-/

/-! ## A341290.P13659001943784101827

`lcm(A002260(A062606(n+1)), A008619(n))`
-/

namespace A341290.P13659001943784101827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002260 (A062606 (n + 1)).toNat) (A008619 n)

end

end A341290.P13659001943784101827

/-!
# A341291: a(n) = number of nodes of degree 3 or 4 that are at distance n from the origin in the graph of the Rick Kenyon tiling of the first quadrant by L and backwards-L tiles.

The programs for A341291, there is no canonical definition to state claims against.
-/

/-! ## A341291.P17516362741928221641

`record[A051162(n)+A178948(n+1)²]`
-/

namespace A341291.P17516362741928221641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n + A178948 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341291.P17516362741928221641

/-! ## A341291.P8182758531507262651

`∑[gcd(A062929(2*(n+2)), A320111(n+1))]`
-/

namespace A341291.P8182758531507262651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062929 (2 * (n + 2))) (A320111 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341291.P8182758531507262651

/-! ## A341291.P4385748881149436632

`∑[A001222(A000124(A119980(n)))]`
-/

namespace A341291.P4385748881149436632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000124 (A119980 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341291.P4385748881149436632

/-!
# A341292: Number of tiles which are n tiles away from the tile at the origin in the tiling discussed in A341291.

The programs for A341292, there is no canonical definition to state claims against.
-/

/-! ## A341292.P7417854375254847885

`∑[and(A342083(3*n+5), A369176(3*n+1))]`
-/

namespace A341292.P7417854375254847885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A342083 (3 * n + 5)) (A369176 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341292.P7417854375254847885

/-! ## A341292.P15071709521032277683

`A378285(A340702(n+1))+A007067(n)`
-/

namespace A341292.P15071709521032277683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378285 (A340702 (n + 1)).toNat + A007067 n

end

end A341292.P15071709521032277683

/-! ## A341292.P5113480205750365715

`A372759(A372779(3*n+2)+A228100(n+1))`
-/

namespace A341292.P5113480205750365715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372759 (A372779 (3 * n + 2) + A228100 (n + 1)).toNat

end

end A341292.P5113480205750365715

/-! ## A341292.P307482116012819273

`A136690(A050410(n+4))+A007067(n)`
-/

namespace A341292.P307482116012819273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136690 (A050410 (n + 4)).toNat + A007067 n

end

end A341292.P307482116012819273

/-! ## A341292.P3602128766096666750

`(n+1)²-n²-A293451(A000682(n+1))`
-/

namespace A341292.P3602128766096666750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (n ^ 2 : ℤ) - A293451 (A000682 (n + 1)).toNat

end

end A341292.P3602128766096666750

/-!
# A341296: Let T(G) be the sum of the degrees of the irreducible complex matrix representations of a finite group G, and let N(G) = |G|*T(G). Sequence gives allowable values of N(G).

The programs for A341296, there is no canonical definition to state claims against.
-/

/-! ## A341296.P10002248552553216785

`A334759(A163866(n+1)%A216424(n+1))`
-/

namespace A341296.P10002248552553216785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334759 (Int.tmod (A163866 (n + 1)) (A216424 (n + 1))).toNat

end

end A341296.P10002248552553216785

/-! ## A341296.P11175028518126723428

`∑[A000005(A290141(n+1)+A216072(3*n+4))]`
-/

namespace A341296.P11175028518126723428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A290141 (n + 1) + A216072 (3 * n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341296.P11175028518126723428

/-! ## A341296.P12595092495687851212

`A123089(A334799(n+1))`
-/

namespace A341296.P12595092495687851212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123089 (A334799 (n + 1)).toNat

end

end A341296.P12595092495687851212

/-!
# A341298: Orders of complete groups.

The programs for A341298, there is no canonical definition to state claims against.
-/

/-! ## A341298.P5042699433560614389

`A000010(eq[A007968(n), A093709(n)])`
-/

namespace A341298.P5042699433560614389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A341298.P5042699433560614389

/-! ## A341298.P3993996764984037416

`A000010(∩[A007969(n+1), A001105(n)])`
-/

namespace A341298.P3993996764984037416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A341298.P3993996764984037416

/-! ## A341298.P597624347843415895

`A047273(n+2)*A075526(A083774(n+1))`
-/

namespace A341298.P597624347843415895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047273 (n + 2) * A075526 (A083774 (n + 1)).toNat

end

end A341298.P597624347843415895

