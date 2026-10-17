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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
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
# A034800: Triangle of number of node labeled trees by number of nodes and number of labels.

The programs for A034800, there is no canonical definition to state claims against.
-/

/-! ## A034800.P1482012712175281758

`A034799(∑[char[∑[n]]]+n)`
-/

namespace A034800.P1482012712175281758
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034799 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A034800.P1482012712175281758

/-! ## A034800.P9066237353804642051

`A034799(A007401(n+1))%(∑[n]²²²+5)`
-/

namespace A034800.P9066237353804642051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034799 (A007401 (n + 1)).toNat) (((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2) ^ 2 + 5 : ℕ) : ℤ)

end

end A034800.P9066237353804642051

/-! ## A034800.P11434249396119690467

`char[A061579(n)]*A034799(A007401(n+1))`
-/

namespace A034800.P11434249396119690467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A034799 (A007401 (n + 1)).toNat

end

end A034800.P11434249396119690467

/-! ## A034800.P6175249280666905011

`A034799(A007401(n+1))+char[A082919(n+1)]`
-/

namespace A034800.P6175249280666905011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082919 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034799 (A007401 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A034800.P6175249280666905011

/-! ## A034800.P9364478883243972538

`A088705(4*n+6)+A034799(A007401(n+1))`
-/

namespace A034800.P9364478883243972538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (4 * n + 6) + A034799 (A007401 (n + 1)).toNat

end

end A034800.P9364478883243972538

/-! ## A034800.P6288488267826986443

`A285530(A285531(n+1))+A034799(A007401(n+1))`
-/

namespace A034800.P6288488267826986443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285530 (A285531 (n + 1)).toNat + A034799 (A007401 (n + 1)).toNat

end

end A034800.P6288488267826986443

/-! ## A034800.P15865526767580383403

`A285533(A285534(n+1))+A034799(A007401(n+1))`
-/

namespace A034800.P15865526767580383403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285533 (A285534 (n + 1)).toNat + A034799 (A007401 (n + 1)).toNat

end

end A034800.P15865526767580383403

/-! ## A034800.P6475960719077106728

`A001221(A038604(n+1))*A034799(A007401(n+1))`
-/

namespace A034800.P6475960719077106728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A038604 (n + 1)).toNat * A034799 (A007401 (n + 1)).toNat

end

end A034800.P6475960719077106728

/-!
# A034801: Triangle of Fibonomial coefficients (k=2).

The programs for A034801, there is no canonical definition to state claims against.
-/

/-! ## A034801.P6926716781695314210

`A010048(n)*A385732(n)/A385733(n)`
-/

namespace A034801.P6926716781695314210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010048 n * A385732 n : ℚ) / (A385733 n : ℚ)

end

end A034801.P6926716781695314210

/-! ## A034801.P10487836184339252351

`∏{p}[A022168(n), A162351(#)]`
-/

namespace A034801.P10487836184339252351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A162351 p

end

end A034801.P10487836184339252351

/-! ## A034801.P12904537137225378257

`∏{p}[A022168(n), A357630(#)]`
-/

namespace A034801.P12904537137225378257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A357630 p

end

end A034801.P12904537137225378257

/-! ## A034801.P10185395011896757620

`∏{p}[A022168(n), A363624(#)]`
-/

namespace A034801.P10185395011896757620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A363624 p

end

end A034801.P10185395011896757620

/-! ## A034801.P370556526753226608

`A003963(A022168(n))`
-/

namespace A034801.P370556526753226608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A022168 n).toNat

end

end A034801.P370556526753226608

/-!
# A034802: Triangle of Fibonomial coefficients (k=3).

The programs for A034802, there is no canonical definition to state claims against.
-/

/-! ## A034802.P13152852344570299093

`A119353(A172342(n))`
-/

namespace A034802.P13152852344570299093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119353 (A172342 n).toNat

end

end A034802.P13152852344570299093

/-! ## A034802.P1230933025963537902

`A000196(A022181(n))`
-/

namespace A034802.P1230933025963537902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A022181 n).toNat

end

end A034802.P1230933025963537902

/-! ## A034802.P10467949488545878974

`A093873(A022180(n))`
-/

namespace A034802.P10467949488545878974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093873 (A022180 n).toNat

end

end A034802.P10467949488545878974

/-! ## A034802.P1964636741428637395

`A105790(A066094(n))`
-/

namespace A034802.P1964636741428637395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105790 (A066094 n).toNat

end

end A034802.P1964636741428637395

/-! ## A034802.P8989333101541333534

`A168255(A022179(n))`
-/

namespace A034802.P8989333101541333534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168255 (A022179 n).toNat

end

end A034802.P8989333101541333534

/-!
# A034803: Consider the sequence of 4-tuples {0,a,b,c} (c>=a+b; a,b,c>0) which have the smallest integer 'c' required to reach {k,k,k,k} in n steps under map {r,s,t,u}->{|r-s|,|s-t|,|t-u|,|u-r|}. This sequence gives the second term 'a' of these quadruples.

The programs for A034803, the canonical program `A034803.P16801151789893753185` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034803 has offset 1).

The definition of A034803 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034803.P16801151789893753185

`3*a(n-3)+a(n-6)+a(n-9)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=0, a(5)=1, a(6)=1, a(7)=2, a(8)=2`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A034803

/-- `3*a(n-3)+a(n-6)+a(n-9)` -/
def P16801151789893753185.Spec : Prop :=
  ∀ n, (P16801151789893753185.a n : ℤ) = A034803 (n + 1)

theorem P16801151789893753185.correct : P16801151789893753185.Spec := by
  intro n
  simp only [A034803, Nat.add_sub_cancel]

end A034803

/-!
# A034804: Consider the sequence of 4-tuples {0,a,b,c} (c>=a+b; a,b,c>0) which have the smallest integer 'c' required to reach {k,k,k,k} in n steps under map {r,s,t,u}->{|r-s|,|s-t|,|t-u|,|u-r|}. This sequence gives the third term 'b' of these quadruples.

The programs for A034804, the canonical program `A034804.P13461283824702270868` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034804 has offset 1).

The definition of A034804 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034804.P13461283824702270868

`3*a(n-3)+a(n-6)+a(n-9)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=2, a(4)=1, a(5)=2, a(6)=4, a(7)=5, a(8)=6`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A034804

/-- `3*a(n-3)+a(n-6)+a(n-9)` -/
def P13461283824702270868.Spec : Prop :=
  ∀ n, (P13461283824702270868.a n : ℤ) = A034804 (n + 1)

theorem P13461283824702270868.correct : P13461283824702270868.Spec := by
  intro n
  simp only [A034804, Nat.add_sub_cancel]

end A034804

/-! ## A034804.P2133243388385062492

`a(n-3)+gcd(2, a(n-1))*a(n-2)` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A034804.P2133243388385062492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n a =>
  a (n - 3) + Nat.gcd 2 (a (n - 1)) * a (n - 2)

end

end A034804.P2133243388385062492

namespace A034804

/-- `a(n-3)+gcd(2, a(n-1))*a(n-2)` -/
def P2133243388385062492.Spec : Prop :=
  ∀ n, (P2133243388385062492.a n : ℤ) = A034804 (n + 1)

end A034804

/-! ## A034804.P14802184893452676029

`A045794(n+1)-A034803(n+4)`
-/

namespace A034804.P14802184893452676029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045794 (n + 1) - A034803 (n + 4)

end

end A034804.P14802184893452676029

namespace A034804

/-- `A045794(n+1)-A034803(n+4)` -/
def P14802184893452676029.Spec : Prop :=
  ∀ n, P14802184893452676029.a n = A034804 (n + 1)

end A034804

/-! ## A034804.P4083886380377975357

`A065678(n+2)-A034803(n+4)`
-/

namespace A034804.P4083886380377975357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065678 (n + 2) - A034803 (n + 4)

end

end A034804.P4083886380377975357

namespace A034804

/-- `A065678(n+2)-A034803(n+4)` -/
def P4083886380377975357.Spec : Prop :=
  ∀ n, P4083886380377975357.a n = A034804 (n + 1)

end A034804

/-! ## A034804.P11856305931739665701

`(A034803(n+1)+A034803(n+7))/2-A034803(n+4)`
-/

namespace A034804.P11856305931739665701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034803 (n + 1) + A034803 (n + 7) : ℚ) / 2 - (A034803 (n + 4) : ℚ)

end

end A034804.P11856305931739665701

namespace A034804

/-- `(A034803(n+1)+A034803(n+7))/2-A034803(n+4)` -/
def P11856305931739665701.Spec : Prop :=
  ∀ n, P11856305931739665701.a n = (A034804 (n + 1) : ℚ)

end A034804

/-! ## A034804.P17503905831056534735

`A034803(n+10)%A034803(n+9)-A034803(n+4)`
-/

namespace A034804.P17503905831056534735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034803 (n + 10)) (A034803 (n + 9)) - A034803 (n + 4)

end

end A034804.P17503905831056534735

namespace A034804

/-- `A034803(n+10)%A034803(n+9)-A034803(n+4)` -/
def P17503905831056534735.Spec : Prop :=
  ∀ n, P17503905831056534735.a n = A034804 (n + 1)

end A034804

/-!
# A034806: Number of distinct sets of 2 numbers > 1 such that their product is between n^2 and (n+1)^2.

The programs for A034806, there is no canonical definition to state claims against.
-/

/-! ## A034806.P3127609650822744424

`A052938(A171762(n+2)-(4*n+10))`
-/

namespace A034806.P3127609650822744424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A171762 (n + 2) - (4 * n + 10 : ℤ)).toNat

end

end A034806.P3127609650822744424

/-! ## A034806.P7890142809925162455

`∑[∑{e}[A000596(A163362(n+1)+3), #]]`
-/

namespace A034806.P7890142809925162455
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000596 (A163362 (n + 1) + 3).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034806.P7890142809925162455

/-! ## A034806.P11180338460232271369

`A001227(n+1)+A253620(n+1)+1`
-/

namespace A034806.P11180338460232271369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) + (A253620 (n + 1) + 1)

end

end A034806.P11180338460232271369

/-! ## A034806.P4271509084271472238

`A302292(A122625(n+1)+1)+∑[∏{p}[n, #²%3]]`
-/

namespace A034806.P4271509084271472238
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p ^ 2 % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302292 (A122625 (n + 1) + 1).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A034806.P4271509084271472238

/-! ## A034806.P10809339210841813586

`A314995(n)+A030220(A102468(n))`
-/

namespace A034806.P10809339210841813586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314995 n + A030220 (A102468 n).toNat

end

end A034806.P10809339210841813586

/-!
# A034807: Triangle T(n,k) of coefficients of Lucas (or Cardan) polynomials.

The programs for A034807, the canonical program `A034807.P8516672241715785906` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034807 has offset 0).

The definition of A034807 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034807.P7002630834762685425

`abs(A213234(n))`
-/

namespace A034807.P7002630834762685425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A213234 n|

end

end A034807.P7002630834762685425

namespace A034807

/-- `abs(A213234(n))` -/
def P7002630834762685425.Spec : Prop :=
  ∀ n, P7002630834762685425.a n = A034807 n

end A034807

/-! ## A034807.P7326648426992320458

`gcd(A002483(n), A213234(n))`
-/

namespace A034807.P7326648426992320458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002483 n) (A213234 n)

end

end A034807.P7326648426992320458

namespace A034807

/-- `gcd(A002483(n), A213234(n))` -/
def P7326648426992320458.Spec : Prop :=
  ∀ n, (P7326648426992320458.a n : ℤ) = A034807 n

end A034807

/-! ## A034807.P5657702999036632081

`lcm(A054977(n), A132460(n))`
-/

namespace A034807.P5657702999036632081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A132460 n)

end

end A034807.P5657702999036632081

namespace A034807

/-- `lcm(A054977(n), A132460(n))` -/
def P5657702999036632081.Spec : Prop :=
  ∀ n, (P5657702999036632081.a n : ℤ) = A034807 n

end A034807

/-! ## A034807.P335620849898568562

`lcm(A033999(n), A213234(n))`
-/

namespace A034807.P335620849898568562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A213234 n)

end

end A034807.P335620849898568562

namespace A034807

/-- `lcm(A033999(n), A213234(n))` -/
def P335620849898568562.Spec : Prop :=
  ∀ n, (P335620849898568562.a n : ℤ) = A034807 n

end A034807

/-! ## A034807.P6448130434091494384

`gcd(A213234(n)+A089800(n), A089800(n))`
-/

namespace A034807.P6448130434091494384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A213234 n + A089800 n) (A089800 n)

end

end A034807.P6448130434091494384

namespace A034807

/-- `gcd(A213234(n)+A089800(n), A089800(n))` -/
def P6448130434091494384.Spec : Prop :=
  ∀ n, (P6448130434091494384.a n : ℤ) = A034807 n

end A034807

/-! ## A034807.P17073892100065478082

`lcm(A057077(n)*A213234(n), A057077(n))`
-/

namespace A034807.P17073892100065478082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n * A213234 n) (A057077 n)

end

end A034807.P17073892100065478082

namespace A034807

/-- `lcm(A057077(n)*A213234(n), A057077(n))` -/
def P17073892100065478082.Spec : Prop :=
  ∀ n, (P17073892100065478082.a n : ℤ) = A034807 n

end A034807

/-! ## A034807.P1739656642952427377

`lcm(A065357(n)*A213234(n), A065357(n))`
-/

namespace A034807.P1739656642952427377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065357 n * A213234 n) (A065357 n)

end

end A034807.P1739656642952427377

namespace A034807

/-- `lcm(A065357(n)*A213234(n), A065357(n))` -/
def P1739656642952427377.Spec : Prop :=
  ∀ n, (P1739656642952427377.a n : ℤ) = A034807 n

end A034807

/-! ## A034807.P13065823158199144561

`lcm(A114523(n)*A213234(n), A114523(n))`
-/

namespace A034807.P13065823158199144561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A114523 n * A213234 n) (A114523 n)

end

end A034807.P13065823158199144561

namespace A034807

/-- `lcm(A114523(n)*A213234(n), A114523(n))` -/
def P13065823158199144561.Spec : Prop :=
  ∀ n, (P13065823158199144561.a n : ℤ) = A034807 n

end A034807

/-! ## A034807.P8516672241715785906

`A029635(A091018(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A034807

/-- `A029635(A091018(n))` -/
def P8516672241715785906.Spec : Prop :=
  ∀ n, P8516672241715785906.a n = A034807 n

theorem P8516672241715785906.correct : P8516672241715785906.Spec := by
  intro n
  simp only [A034807]

end A034807

/-! ## A034807.P7736373139185583905

`A097805(A056536(n+1)-1)+A011973(n)`
-/

namespace A034807.P7736373139185583905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A056536 (n + 1) - 1).toNat + A011973 n

end

end A034807.P7736373139185583905

namespace A034807

/-- `A097805(A056536(n+1)-1)+A011973(n)` -/
def P7736373139185583905.Spec : Prop :=
  ∀ n, P7736373139185583905.a n = A034807 n

end A034807

/-! ## A034807.P3608194308684452228

`A162514(lt[0, A162514(n)])`
-/

namespace A034807.P3608194308684452228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162514 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162514 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A034807.P3608194308684452228

namespace A034807

/-- `A162514(lt[0, A162514(n)])` -/
def P3608194308684452228.Spec : Prop :=
  ∀ n, P3608194308684452228.a n = A034807 n

end A034807

/-! ## A034807.P5286615022907011865

`A162514(eq[1, A053119(n*a(n-1))])` with `a(0)=1`
-/

namespace A034807.P5286615022907011865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A053119 ((n : ℤ) * f2 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162514 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A034807.P5286615022907011865

namespace A034807

/-- `A162514(eq[1, A053119(n*a(n-1))])` -/
def P5286615022907011865.Spec : Prop :=
  ∀ n, P5286615022907011865.a n = A034807 n

end A034807

/-! ## A034807.P9407399207809543647

`A162514(eq[1, A135929(n*a(n-1))])` with `a(0)=1`
-/

namespace A034807.P9407399207809543647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A135929 ((n : ℤ) * f2 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162514 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A034807.P9407399207809543647

namespace A034807

/-- `A162514(eq[1, A135929(n*a(n-1))])` -/
def P9407399207809543647.Spec : Prop :=
  ∀ n, P9407399207809543647.a n = A034807 n

end A034807

/-!
# A034810: Concatenation of 'prevprime(k) and k and nextprime(k)' is a prime.

The programs for A034810, there is no canonical definition to state claims against.
-/

/-! ## A034810.P18324622884989447601

`A279773(n+3)-A112347(A027642(3*(n+1)))`
-/

namespace A034810.P18324622884989447601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279773 (n + 3) - A112347 (A027642 (3 * (n + 1))).toNat

end

end A034810.P18324622884989447601

/-!
# A034812: Concatenation of 'prevprime(k) and k and prevprime(k)' is a prime.

The programs for A034812, there is no canonical definition to state claims against.
-/

/-! ## A034812.P12892516948562136507

`A316846(A027691(n)*A049636(n))`
-/

namespace A034812.P12892516948562136507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316846 (A027691 n * A049636 n).toNat

end

end A034812.P12892516948562136507

/-! ## A034812.P12676715823494909733

`A094280(3*n+5)-A052409(A000108(n))`
-/

namespace A034812.P12676715823494909733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094280 (3 * n + 5) - A052409 (A000108 n).toNat

end

end A034812.P12676715823494909733

/-! ## A034812.P5464590522954409676

`A264048(A225620(3*n+2))+A005100(2*(n+2))`
-/

namespace A034812.P5464590522954409676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264048 (A225620 (3 * n + 2)).toNat + A005100 (2 * (n + 2))

end

end A034812.P5464590522954409676

/-! ## A034812.P9854384708228374395

`A132983(A369818(n+2))`
-/

namespace A034812.P9854384708228374395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132983 (A369818 (n + 2)).toNat

end

end A034812.P9854384708228374395

/-! ## A034812.P11550122271272701465

`A005100(2*(n+2))+A000035(A006882(n))`
-/

namespace A034812.P11550122271272701465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (2 * (n + 2)) + A000035 (A006882 n).toNat

end

end A034812.P11550122271272701465

/-!
# A034813: Concatenations C1 and C2 are both prime (see the comment lines).

The programs for A034813, there is no canonical definition to state claims against.
-/

/-! ## A034813.P9802393484261946212

`∩[A034810(n+1), A034811(n+1)]`
-/

namespace A034813.P9802393484261946212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034813.P9802393484261946212

/-!
# A034814: Concatenations C1 and C2 are both prime (see the comment lines).

The programs for A034814, there is no canonical definition to state claims against.
-/

/-! ## A034814.P9225962770001783465

`∩[A034808(n+1), A034809(n+1)]`
-/

namespace A034814.P9225962770001783465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034814.P9225962770001783465

/-! ## A034814.P7041113217128967623

`∩[A034808(n+1), A110262(n+1)]`
-/

namespace A034814.P7041113217128967623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034814.P7041113217128967623

/-!
# A034815: Concatenations C1 and C2 are both prime (see the comment lines).

The programs for A034815, there is no canonical definition to state claims against.
-/

/-! ## A034815.P10622429407025487698

`∩[A034594(n+1), A034809(n+1)]`
-/

namespace A034815.P10622429407025487698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034815.P10622429407025487698

/-!
# A034816: Concatenations C1 and C2 are both prime (see the comment lines).

The programs for A034816, there is no canonical definition to state claims against.
-/

/-! ## A034816.P7142356537390941887

`∩[A034591(n+1), A034808(n+1)]`
-/

namespace A034816.P7142356537390941887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034816.P7142356537390941887

/-!
# A034819: Concatenations C1 and C2 and C3 and C4 are all prime (see the comment lines).

The programs for A034819, there is no canonical definition to state claims against.
-/

/-! ## A034819.P14698224686026529123

`∩[A034815(n), A034816(n)]`
-/

namespace A034819.P14698224686026529123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034816 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034819.P14698224686026529123

/-! ## A034819.P14932706383590602136

`∩[A034595(n+1), A034814(n+1)]`
-/

namespace A034819.P14932706383590602136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034819.P14932706383590602136

/-!
# A034821: Concatenations C1 and C2 are both prime (see the comment lines).

The programs for A034821, there is no canonical definition to state claims against.
-/

/-! ## A034821.P14516803936886871195

`A324697(xor(3, A014486(2*n)))`
-/

namespace A034821.P14516803936886871195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324697 (Int.xor 3 (A014486 (2 * n))).toNat

end

end A034821.P14516803936886871195

/-!
# A034822: Numbers k such that there are no palindromic squares of length k.

The programs for A034822, there is no canonical definition to state claims against.
-/

/-! ## A034822.P7899668876458347002

`eq[0, A263618(n+1)]+1`
-/

namespace A034822.P7899668876458347002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263618 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A034822.P7899668876458347002

/-! ## A034822.P11657452967531680136

`A214628(A243115(n+1))`
-/

namespace A034822.P11657452967531680136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214628 (A243115 (n + 1)).toNat

end

end A034822.P11657452967531680136

/-!
# A034823: Number of n-node rooted trees of height at most 6.

The programs for A034823, there is no canonical definition to state claims against.
-/

/-! ## A034823.P1623561884606660998

`A001385(n)+A000393(A028310(n))`
-/

namespace A034823.P1623561884606660998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001385 n + A000393 (A028310 n).toNat

end

end A034823.P1623561884606660998

/-! ## A034823.P3802273021799726990

`A001385(n)+A000393(A233583(n+1))`
-/

namespace A034823.P3802273021799726990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001385 n + A000393 (A233583 (n + 1)).toNat

end

end A034823.P3802273021799726990

/-! ## A034823.P17478944984376814105

`A001385(n)+A000393(A000007(n)+n)`
-/

namespace A034823.P17478944984376814105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001385 n + A000393 (A000007 n + (n : ℤ)).toNat

end

end A034823.P17478944984376814105

/-! ## A034823.P2250538642501753318

`A034824(n)-A000418(A028310(n))`
-/

namespace A034823.P2250538642501753318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034824 n - A000418 (A028310 n).toNat

end

end A034823.P2250538642501753318

/-! ## A034823.P10398508214447388627

`A034824(n)-A000418(A233583(n+1))`
-/

namespace A034823.P10398508214447388627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034824 n - A000418 (A233583 (n + 1)).toNat

end

end A034823.P10398508214447388627

/-! ## A034823.P11048587566232370629

`A034824(n)-A000418(A000007(n)+n)`
-/

namespace A034823.P11048587566232370629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034824 n - A000418 (A000007 n + (n : ℤ)).toNat

end

end A034823.P11048587566232370629

/-!
# A034824: Number of n-node rooted trees of height at most 7.

The programs for A034824, there is no canonical definition to state claims against.
-/

/-! ## A034824.P15877270197079793260

`A034823(n)+A000418(A028310(n))`
-/

namespace A034824.P15877270197079793260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034823 n + A000418 (A028310 n).toNat

end

end A034824.P15877270197079793260

/-! ## A034824.P10562516054034970104

`A034823(n)+A000418(A233583(n+1))`
-/

namespace A034824.P10562516054034970104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034823 n + A000418 (A233583 (n + 1)).toNat

end

end A034824.P10562516054034970104

/-! ## A034824.P18416916211306944055

`A034825(n)-A000429(A028310(n))`
-/

namespace A034824.P18416916211306944055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034825 n - A000429 (A028310 n).toNat

end

end A034824.P18416916211306944055

/-! ## A034824.P7018146147710379224

`A034825(n)-A000429(A233583(n+1))`
-/

namespace A034824.P7018146147710379224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034825 n - A000429 (A233583 (n + 1)).toNat

end

end A034824.P7018146147710379224

/-! ## A034824.P11206292550250001524

`A034825(n)-A000429(A000007(n)+n)`
-/

namespace A034824.P11206292550250001524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034825 n - A000429 (A000007 n + (n : ℤ)).toNat

end

end A034824.P11206292550250001524

/-!
# A034825: Number of n-node rooted trees of height at most 8.

The programs for A034825, there is no canonical definition to state claims against.
-/

/-! ## A034825.P4668361347965719335

`A034824(n)+A000429(A028310(n))`
-/

namespace A034825.P4668361347965719335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034824 n + A000429 (A028310 n).toNat

end

end A034825.P4668361347965719335

/-! ## A034825.P8312216515406269166

`A034824(n)+A000429(A233583(n+1))`
-/

namespace A034825.P8312216515406269166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034824 n + A000429 (A233583 (n + 1)).toNat

end

end A034825.P8312216515406269166

/-! ## A034825.P5080040905018994083

`A034824(n)+A000429(A000007(n)+n)`
-/

namespace A034825.P5080040905018994083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034824 n + A000429 (A000007 n + (n : ℤ)).toNat

end

end A034825.P5080040905018994083

/-! ## A034825.P4219057653308433732

`A034826(n)-A126085(A028310(n))`
-/

namespace A034825.P4219057653308433732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034826 n - A126085 (A028310 n).toNat

end

end A034825.P4219057653308433732

/-! ## A034825.P2479412368467094588

`A034826(n)-A126085(A233583(n+1))`
-/

namespace A034825.P2479412368467094588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034826 n - A126085 (A233583 (n + 1)).toNat

end

end A034825.P2479412368467094588

/-! ## A034825.P17039984051746827953

`A034826(n)-A126085(A000007(n)+n)`
-/

namespace A034825.P17039984051746827953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034826 n - A126085 (A000007 n + (n : ℤ)).toNat

end

end A034825.P17039984051746827953

/-!
# A034826: Number of n-node rooted trees of height at most 9.

The programs for A034826, there is no canonical definition to state claims against.
-/

/-! ## A034826.P15894370299641919811

`A126085(A028310(n))+A034825(n)`
-/

namespace A034826.P15894370299641919811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126085 (A028310 n).toNat + A034825 n

end

end A034826.P15894370299641919811

/-! ## A034826.P10713404675181048487

`A126085(A233583(n+1))+A034825(n)`
-/

namespace A034826.P10713404675181048487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126085 (A233583 (n + 1)).toNat + A034825 n

end

end A034826.P10713404675181048487

/-! ## A034826.P4719629493739108816

`A126085(A000007(n)+n)+A034825(n)`
-/

namespace A034826.P4719629493739108816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126085 (A000007 n + (n : ℤ)).toNat + A034825 n

end

end A034826.P4719629493739108816

/-! ## A034826.P14975051211232674807

`A126085(A028310(n))+A034824(n)+A000429(A233583(n+1))`
-/

namespace A034826.P14975051211232674807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126085 (A028310 n).toNat + (A034824 n + A000429 (A233583 (n + 1)).toNat)

end

end A034826.P14975051211232674807

/-! ## A034826.P14005044324502084985

`A126085(A137735(n²))+A034825(n)`
-/

namespace A034826.P14005044324502084985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126085 (A137735 (n ^ 2)).toNat + A034825 n

end

end A034826.P14005044324502084985

/-!
# A034827: a(n) = 2*binomial(n,4).

The programs for A034827, the canonical program `A034827.P5779717595868083396` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034827 has offset 0).

The definition of A034827 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*C(n, 4)` (program `A034827.P5779717595868083396`, by `A034827.P5779717595868083396.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A034827.P5779717595868083396

`2*C(n, 4)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A034827

/-- `2*C(n, 4)` -/
def P5779717595868083396.Spec : Prop :=
  ∀ n, (P5779717595868083396.a n : ℤ) = A034827 n

theorem P5779717595868083396.correct : P5779717595868083396.Spec := by
  intro n
  simp only [A034827]

end A034827

/-! ## A034827.P16401587323946423556

`2*A000332(n)`
-/

namespace A034827.P16401587323946423556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000332 n

end

end A034827.P16401587323946423556

namespace A034827

/-- `2*A000332(n)` -/
def P16401587323946423556.Spec : Prop :=
  ∀ n, P16401587323946423556.a n = A034827 n

end A034827

/-! ## A034827.P2946708711810567169

`C(n, 4)/sqrt(1/4)`
-/

namespace A034827.P2946708711810567169
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 4 : ℝ) / Real.sqrt ((1 : ℚ) / 4 : ℝ)

end

end A034827.P2946708711810567169

namespace A034827

/-- `C(n, 4)/sqrt(1/4)` -/
def P2946708711810567169.Spec : Prop :=
  ∀ n, P2946708711810567169.a n = (A034827 n : ℝ)

theorem P2946708711810567169.correct : P2946708711810567169.Spec := by
  intro n
  simp only [A034827, Nat.add_sub_cancel, A034827.P2946708711810567169.a, A034827.P5779717595868083396.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A034827

/-! ## A034827.P18137184359478946443

`∑[∑[∑[2*n]]]-(n^3+n)`
-/

namespace A034827.P18137184359478946443
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n ^ 3 + n : ℤ)

end

end A034827.P18137184359478946443

namespace A034827

/-- `∑[∑[∑[2*n]]]-(n^3+n)` -/
def P18137184359478946443.Spec : Prop :=
  ∀ n, P18137184359478946443.a n = A034827 n

end A034827

/-! ## A034827.P8660858509445599801

`∑[∑[∑[a(n-1)+2]]]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A034827.P8660858509445599801
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0] fun n f3 =>
  f3 (n - 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034827.P8660858509445599801

namespace A034827

/-- `∑[∑[∑[a(n-1)+2]]]` -/
def P8660858509445599801.Spec : Prop :=
  ∀ n, (P8660858509445599801.a n : ℤ) = A034827 n

end A034827

/-! ## A034827.P15755460187772579008

`∑[(2-n)²-(n-2-a(n-1))]` with `a(0)=0, a(1)=0`
-/

namespace A034827.P15755460187772579008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  (2 - (n : ℤ)) ^ 2 - ((n : ℤ) - 2 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034827.P15755460187772579008

namespace A034827

/-- `∑[(2-n)²-(n-2-a(n-1))]` -/
def P15755460187772579008.Spec : Prop :=
  ∀ n, P15755460187772579008.a n = A034827 n

end A034827

/-! ## A034827.P15839137461950540869

`A052762(n)/12`
-/

namespace A034827.P15839137461950540869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052762 n : ℚ) / 12

end

end A034827.P15839137461950540869

namespace A034827

/-- `A052762(n)/12` -/
def P15839137461950540869.Spec : Prop :=
  ∀ n, P15839137461950540869.a n = (A034827 n : ℚ)

end A034827

/-! ## A034827.P12653614434720504142

`2*(A014626(n)-n)`
-/

namespace A034827.P12653614434720504142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A014626 n - (n : ℤ))

end

end A034827.P12653614434720504142

namespace A034827

/-- `2*(A014626(n)-n)` -/
def P12653614434720504142.Spec : Prop :=
  ∀ n, P12653614434720504142.a n = A034827 n

end A034827

/-! ## A034827.P10410937699274713398

`∑[A007290(abs(1-n))]`
-/

namespace A034827.P10410937699274713398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007290 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034827.P10410937699274713398

namespace A034827

/-- `∑[A007290(abs(1-n))]` -/
def P10410937699274713398.Spec : Prop :=
  ∀ n, P10410937699274713398.a n = A034827 n

end A034827

/-! ## A034827.P3430468431140830732

`2*∑{d}[n, A346761(#)]`
-/

namespace A034827.P3430468431140830732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), A346761 d)

end

end A034827.P3430468431140830732

namespace A034827

/-- `2*∑{d}[n, A346761(#)]` -/
def P3430468431140830732.Spec : Prop :=
  ∀ n, P3430468431140830732.a n = A034827 n

end A034827

/-! ## A034827.P4644082029285692252

`2*(∑[A050407(n)]-n)`
-/

namespace A034827.P4644082029285692252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A034827.P4644082029285692252

namespace A034827

/-- `2*(∑[A050407(n)]-n)` -/
def P4644082029285692252.Spec : Prop :=
  ∀ n, P4644082029285692252.a n = A034827 n

end A034827

/-! ## A034827.P5460921779386991430

`∑[∑[(n-3)*A289207(n)]]`
-/

namespace A034827.P5460921779386991430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) * A289207 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034827.P5460921779386991430

namespace A034827

/-- `∑[∑[(n-3)*A289207(n)]]` -/
def P5460921779386991430.Spec : Prop :=
  ∀ n, P5460921779386991430.a n = A034827 n

end A034827

/-! ## A034827.P17263764943615953697

`2*(A011930(n)-A011795(n))`
-/

namespace A034827.P17263764943615953697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A011930 n - A011795 n)

end

end A034827.P17263764943615953697

namespace A034827

/-- `2*(A011930(n)-A011795(n))` -/
def P17263764943615953697.Spec : Prop :=
  ∀ n, P17263764943615953697.a n = A034827 n

end A034827

/-! ## A034827.P8240071108228049956

`2*(A008911(n)-A086602(n))`
-/

namespace A034827.P8240071108228049956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A008911 n - A086602 n)

end

end A034827.P8240071108228049956

namespace A034827

/-- `2*(A008911(n)-A086602(n))` -/
def P8240071108228049956.Spec : Prop :=
  ∀ n, P8240071108228049956.a n = A034827 n

end A034827

/-! ## A034827.P13004994316723978488

`2*(A058923(n)-A080956(n))`
-/

namespace A034827.P13004994316723978488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A058923 n - A080956 n)

end

end A034827.P13004994316723978488

namespace A034827

/-- `2*(A058923(n)-A080956(n))` -/
def P13004994316723978488.Spec : Prop :=
  ∀ n, P13004994316723978488.a n = A034827 n

end A034827

/-! ## A034827.P16704500167234478012

`2*(A008498(n)-A132366(n))`
-/

namespace A034827.P16704500167234478012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A008498 n - A132366 n)

end

end A034827.P16704500167234478012

namespace A034827

/-- `2*(A008498(n)-A132366(n))` -/
def P16704500167234478012.Spec : Prop :=
  ∀ n, P16704500167234478012.a n = A034827 n

end A034827

/-! ## A034827.P2924105136824907718

`2*(A050534(n)-A117662(n))`
-/

namespace A034827.P2924105136824907718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A050534 n - A117662 n)

end

end A034827.P2924105136824907718

namespace A034827

/-- `2*(A050534(n)-A117662(n))` -/
def P2924105136824907718.Spec : Prop :=
  ∀ n, P2924105136824907718.a n = A034827 n

end A034827

/-! ## A034827.P7890740382220445457

`2*(A179257(n)-A362193(n))`
-/

namespace A034827.P7890740382220445457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A179257 n - A362193 n)

end

end A034827.P7890740382220445457

namespace A034827

/-- `2*(A179257(n)-A362193(n))` -/
def P7890740382220445457.Spec : Prop :=
  ∀ n, P7890740382220445457.a n = A034827 n

end A034827

/-! ## A034827.P7597735160228974644

`2*(Δ[A006261(n)]-A000125(n))`
-/

namespace A034827.P7597735160228974644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006261 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n - A000125 n)

end

end A034827.P7597735160228974644

namespace A034827

/-- `2*(Δ[A006261(n)]-A000125(n))` -/
def P7597735160228974644.Spec : Prop :=
  ∀ n, P7597735160228974644.a n = A034827 n

end A034827

/-! ## A034827.P11431529342237226342

`2*(A000127(n+1)-A000125(n))`
-/

namespace A034827.P11431529342237226342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000127 (n + 1) - A000125 n)

end

end A034827.P11431529342237226342

namespace A034827

/-- `2*(A000127(n+1)-A000125(n))` -/
def P11431529342237226342.Spec : Prop :=
  ∀ n, P11431529342237226342.a n = A034827 n

end A034827

/-!
# A034828: a(n) = floor(n^2/4)*(n/2).

The programs for A034828, the canonical program `A034828.P560572460537490832` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034828 has offset 0).

The definition of A034828 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034828.P560572460537490832

`n*floor(n²/4)/2`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A034828

/-- `n*floor(n²/4)/2` -/
def P560572460537490832.Spec : Prop :=
  ∀ n, P560572460537490832.a n = (A034828 n : ℚ)

end A034828

/-! ## A034828.P15241277156868484023

`∑[∑[lcm(2, 1-n)/2]-1]`
-/

namespace A034828.P15241277156868484023
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (1 - (n : ℤ)) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034828.P15241277156868484023

namespace A034828

/-- `∑[∑[lcm(2, 1-n)/2]-1]` -/
def P15241277156868484023.Spec : Prop :=
  ∀ n, P15241277156868484023.a n = (A034828 n : ℚ)

end A034828

/-! ## A034828.P14088229815744333396

`∑[∑[round(n/gcd(2, n+1))]-n]`
-/

namespace A034828.P14088229815744333396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (Nat.gcd 2 (n + 1) : ℚ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034828.P14088229815744333396

namespace A034828

/-- `∑[∑[round(n/gcd(2, n+1))]-n]` -/
def P14088229815744333396.Spec : Prop :=
  ∀ n, P14088229815744333396.a n = A034828 n

end A034828

/-! ## A034828.P10795958666944340602

`n/2*A002620(n)`
-/

namespace A034828.P10795958666944340602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A002620 n : ℚ)

end

end A034828.P10795958666944340602

namespace A034828

/-- `n/2*A002620(n)` -/
def P10795958666944340602.Spec : Prop :=
  ∀ n, P10795958666944340602.a n = (A034828 n : ℚ)

end A034828

/-! ## A034828.P17288400904715229732

`n/4*A007590(n)`
-/

namespace A034828.P17288400904715229732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 * (A007590 n : ℚ)

end

end A034828.P17288400904715229732

namespace A034828

/-- `n/4*A007590(n)` -/
def P17288400904715229732.Spec : Prop :=
  ∀ n, P17288400904715229732.a n = (A034828 n : ℚ)

end A034828

/-! ## A034828.P3401357470403419455

`∑[n²-A210977(n)]`
-/

namespace A034828.P3401357470403419455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A210977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034828.P3401357470403419455

namespace A034828

/-- `∑[n²-A210977(n)]` -/
def P3401357470403419455.Spec : Prop :=
  ∀ n, P3401357470403419455.a n = A034828 n

end A034828

/-! ## A034828.P18191668349348507862

`A109900((n-1)%(n+1))`
-/

namespace A034828.P18191668349348507862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A034828.P18191668349348507862

namespace A034828

/-- `A109900((n-1)%(n+1))` -/
def P18191668349348507862.Spec : Prop :=
  ∀ n, P18191668349348507862.a n = A034828 n

end A034828

/-! ## A034828.P9328623818984593158

`∑[∑[A029578(n+1)]-n]`
-/

namespace A034828.P9328623818984593158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034828.P9328623818984593158

namespace A034828

/-- `∑[∑[A029578(n+1)]-n]` -/
def P9328623818984593158.Spec : Prop :=
  ∀ n, P9328623818984593158.a n = A034828 n

end A034828

/-! ## A034828.P1307447814004781196

`A001318(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A034828.P1307447814004781196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001318 (n - 1) + a (n - 1)

end

end A034828.P1307447814004781196

namespace A034828

/-- `A001318(n-1)+a(n-1)` -/
def P1307447814004781196.Spec : Prop :=
  ∀ n, P1307447814004781196.a n = A034828 n

end A034828

/-! ## A034828.P6643573828968089237

`A019298(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A034828.P6643573828968089237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A019298 (n - 1) - a (n - 1)

end

end A034828.P6643573828968089237

namespace A034828

/-- `A019298(n-1)-a(n-1)` -/
def P6643573828968089237.Spec : Prop :=
  ∀ n, P6643573828968089237.a n = A034828 n

end A034828

/-! ## A034828.P2727805386187527950

`A111384(n)+A002620(n)`
-/

namespace A034828.P2727805386187527950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111384 n + A002620 n

end

end A034828.P2727805386187527950

namespace A034828

/-- `A111384(n)+A002620(n)` -/
def P2727805386187527950.Spec : Prop :=
  ∀ n, P2727805386187527950.a n = A034828 n

end A034828

/-! ## A034828.P17611327904620471934

`A109900(n)-A001318(n)`
-/

namespace A034828.P17611327904620471934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 n - A001318 n

end

end A034828.P17611327904620471934

namespace A034828

/-- `A109900(n)-A001318(n)` -/
def P17611327904620471934.Spec : Prop :=
  ∀ n, P17611327904620471934.a n = A034828 n

end A034828

/-! ## A034828.P5124048833480478052

`A019298(n)-A109900(n)`
-/

namespace A034828.P5124048833480478052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019298 n - A109900 n

end

end A034828.P5124048833480478052

namespace A034828

/-- `A019298(n)-A109900(n)` -/
def P5124048833480478052.Spec : Prop :=
  ∀ n, P5124048833480478052.a n = A034828 n

end A034828

/-! ## A034828.P4776528344008426521

`A131941(n)-A006918(n)`
-/

namespace A034828.P4776528344008426521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131941 n - A006918 n

end

end A034828.P4776528344008426521

namespace A034828

/-- `A131941(n)-A006918(n)` -/
def P4776528344008426521.Spec : Prop :=
  ∀ n, P4776528344008426521.a n = A034828 n

end A034828

/-! ## A034828.P14752068527287439821

`A330520(n)-A011863(n)`
-/

namespace A034828.P14752068527287439821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330520 n - A011863 n

end

end A034828.P14752068527287439821

namespace A034828

/-- `A330520(n)-A011863(n)` -/
def P14752068527287439821.Spec : Prop :=
  ∀ n, P14752068527287439821.a n = A034828 n

end A034828

/-! ## A034828.P8989266187317696694

`A212981(n)-A342397(n)`
-/

namespace A034828.P8989266187317696694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212981 n - A342397 n

end

end A034828.P8989266187317696694

namespace A034828

/-- `A212981(n)-A342397(n)` -/
def P8989266187317696694.Spec : Prop :=
  ∀ n, P8989266187317696694.a n = A034828 n

end A034828

/-! ## A034828.P18432926885133449080

`A026741(n)*A123596(n)`
-/

namespace A034828.P18432926885133449080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n * A123596 n

end

end A034828.P18432926885133449080

namespace A034828

/-- `A026741(n)*A123596(n)` -/
def P18432926885133449080.Spec : Prop :=
  ∀ n, P18432926885133449080.a n = A034828 n

end A034828

/-! ## A034828.P17926960730441901015

`A078126(n)+A111384(n)+1`
-/

namespace A034828.P17926960730441901015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078126 n + (A111384 n + 1)

end

end A034828.P17926960730441901015

namespace A034828

/-- `A078126(n)+A111384(n)+1` -/
def P17926960730441901015.Spec : Prop :=
  ∀ n, P17926960730441901015.a n = A034828 n

end A034828

/-! ## A034828.P15691735543970577691

`A059329(n)-A054974(n+2)`
-/

namespace A034828.P15691735543970577691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059329 n - A054974 (n + 2)

end

end A034828.P15691735543970577691

namespace A034828

/-- `A059329(n)-A054974(n+2)` -/
def P15691735543970577691.Spec : Prop :=
  ∀ n, P15691735543970577691.a n = A034828 n

end A034828

/-! ## A034828.P12683518727763286703

`A180861(n+1)-A111710(n+1)`
-/

namespace A034828.P12683518727763286703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180861 (n + 1) - A111710 (n + 1)

end

end A034828.P12683518727763286703

namespace A034828

/-- `A180861(n+1)-A111710(n+1)` -/
def P12683518727763286703.Spec : Prop :=
  ∀ n, P12683518727763286703.a n = A034828 n

end A034828

/-!
# A034829: a(n) = n-th sept-factorial number divided by 2.

The programs for A034829, there is no canonical definition to state claims against.
-/

/-! ## A034829.P11029099141727085862

`∏[7*n+2]/2`
-/

namespace A034829.P11029099141727085862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A034829.P11029099141727085862

/-! ## A034829.P7617507786589758694

`∏[a(n-1)+7]` with `a(0)=1, a(1)=9`
-/

namespace A034829.P7617507786589758694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034829.P7617507786589758694

/-! ## A034829.P12619400196287360010

`∏[ceil(cosh(sin(n)))+7*n]`
-/

namespace A034829.P12619400196287360010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.sin (n : ℝ))⌉ + (7 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034829.P12619400196287360010

/-! ## A034829.P10460313429050146827

`∏[7*n+2-floor(acot(n))]`
-/

namespace A034829.P10460313429050146827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n + 2 : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034829.P10460313429050146827

/-! ## A034829.P13207835540882439550

`(7*n+2)*a(n-1)` with `a(0)=1`
-/

namespace A034829.P13207835540882439550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (7 * n + 2) * a (n - 1)

end

end A034829.P13207835540882439550

/-!
# A034830: a(n) = n-th sept-factorial number divided by 3.

The programs for A034830, there is no canonical definition to state claims against.
-/

/-! ## A034830.P3811296026558324020

`∏[a(n-1)+7]` with `a(0)=1, a(1)=10`
-/

namespace A034830.P3811296026558324020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034830.P3811296026558324020

/-! ## A034830.P6534315759094789021

`(7*n+3)*a(n-1)` with `a(0)=1`
-/

namespace A034830.P6534315759094789021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (7 * n + 3) * a (n - 1)

end

end A034830.P6534315759094789021

/-! ## A034830.P2270885764140745603

`a(n-1)*Δ[(2*n)²-∑[n]]` with `a(0)=1`
-/

namespace A034830.P2270885764140745603
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (f1 (n + 1) - f1 n)

end

end A034830.P2270885764140745603

/-! ## A034830.P8869700467970309387

`∏[A030123(2*n+1)]`
-/

namespace A034830.P8869700467970309387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030123 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034830.P8869700467970309387

/-! ## A034830.P10592359906155753236

`∏[Δ[abs(A185950(n))]-n]`
-/

namespace A034830.P10592359906155753236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A185950 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034830.P10592359906155753236

/-!
# A034831: a(n) = n-th sept-factorial number divided by 4.

The programs for A034831, there is no canonical definition to state claims against.
-/

/-! ## A034831.P15413658970312811502

`∏[7*n+4]/4`
-/

namespace A034831.P15413658970312811502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4

end

end A034831.P15413658970312811502

/-! ## A034831.P10440912293523118260

`∏[a(n-1)+7]` with `a(0)=1, a(1)=11`
-/

namespace A034831.P10440912293523118260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034831.P10440912293523118260

/-! ## A034831.P12897437839212461880

`(7*n+4)*a(n-1)` with `a(0)=1`
-/

namespace A034831.P12897437839212461880
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (7 * n + 4) * a (n - 1)

end

end A034831.P12897437839212461880

/-! ## A034831.P4789117506875587220

`ceil((Δ[(2*n)²]-n)*a(n-1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A034831.P4789117506875587220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)) * a (n - 1)

end

end A034831.P4789117506875587220

/-! ## A034831.P2574779074481026039

`1/4*∏[A017029(n)]`
-/

namespace A034831.P2574779074481026039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A034831.P2574779074481026039

/-!
# A034832: a(n) = n-th sept-factorial number divided by 5.

The programs for A034832, there is no canonical definition to state claims against.
-/

/-! ## A034832.P8619315066311098185

`A147585(n+2)/5`
-/

namespace A034832.P8619315066311098185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147585 (n + 2) : ℚ) / 5

end

end A034832.P8619315066311098185

/-! ## A034832.P338859608538822556

`∏[7*n+5]/5`
-/

namespace A034832.P338859608538822556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 5

end

end A034832.P338859608538822556

/-! ## A034832.P4026377008040872526

`∏[a(n-1)+7]` with `a(0)=1, a(1)=12`
-/

namespace A034832.P4026377008040872526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034832.P4026377008040872526

/-! ## A034832.P4587239953374471043

`(7*n+5)*a(n-1)` with `a(0)=1`
-/

namespace A034832.P4587239953374471043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (7 * n + 5) * a (n - 1)

end

end A034832.P4587239953374471043

/-! ## A034832.P13474422189794881964

`floor((Δ[(2*n)²]-(n-1))*a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A034832.P13474422189794881964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((n : ℤ) - 1)) * a (n - 1)

end

end A034832.P13474422189794881964

/-!
# A034833: a(n) = n-th sept-factorial number divided by 6.

The programs for A034833, there is no canonical definition to state claims against.
-/

/-! ## A034833.P1030219718915161992

`∏[7*n+6]/6`
-/

namespace A034833.P1030219718915161992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 6

end

end A034833.P1030219718915161992

/-! ## A034833.P13554782446698169453

`∏[a(n-1)+7]` with `a(0)=1, a(1)=13`
-/

namespace A034833.P13554782446698169453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 13] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034833.P13554782446698169453

/-! ## A034833.P8272672227816305229

`(7*n+6)*a(n-1)` with `a(0)=1`
-/

namespace A034833.P8272672227816305229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (7 * n + 6) * a (n - 1)

end

end A034833.P8272672227816305229

/-! ## A034833.P15766170387728405505

`∏[record[7*n-a(n-1)]]` with `a(0)=1, a(1)=1`
-/

namespace A034833.P15766170387728405505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  (7 * n : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034833.P15766170387728405505

/-! ## A034833.P8863402327693304054

`∏[record[A166522(n+1)]]`
-/

namespace A034833.P8863402327693304054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166522 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034833.P8863402327693304054

/-!
# A034834: One seventh of sept-factorial numbers.

The programs for A034834, there is no canonical definition to state claims against.
-/

/-! ## A034834.P13007445415292536898

`∏[7*(n+1)]/7`
-/

namespace A034834.P13007445415292536898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 7

end

end A034834.P13007445415292536898

/-! ## A034834.P4455808861700918704

`7^n*(n+1)!`
-/

namespace A034834.P4455808861700918704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n * Nat.factorial (n + 1)

end

end A034834.P4455808861700918704

/-! ## A034834.P12252784351288195815

`∏[a(n-1)+7]` with `a(0)=1, a(1)=14`
-/

namespace A034834.P12252784351288195815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 14] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034834.P12252784351288195815

/-! ## A034834.P9690020369488773191

`∏[(7*(n+1))^ceil(tanh(n))]`
-/

namespace A034834.P9690020369488773191
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * (n + 1) : ℚ) ^ (⌈Real.tanh (n : ℝ)⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034834.P9690020369488773191

/-! ## A034834.P9229850142660781296

`7*(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A034834.P9229850142660781296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  7 * ((n + 1) * a (n - 1))

end

end A034834.P9229850142660781296

/-!
# A034835: Expansion of 1/(1-49*x)^(1/7); related to sept-factorial numbers A045754.

The programs for A034835, there is no canonical definition to state claims against.
-/

/-! ## A034835.P1123053137369203638

`7^n*A045754(n)/n!`
-/

namespace A034835.P1123053137369203638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 ^ n : ℤ) * A045754 n : ℚ) / (Nat.factorial n : ℚ)

end

end A034835.P1123053137369203638

/-! ## A034835.P10569392781843259013

`7*(7-6/n)*a(n-1)` with `a(0)=1`
-/

namespace A034835.P10569392781843259013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  7 * (7 - 6 / (n : ℚ)) * a (n - 1)

end

end A034835.P10569392781843259013

/-! ## A034835.P8990770913969487466

`A248329(∑[n])`
-/

namespace A034835.P8990770913969487466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248329 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A034835.P8990770913969487466

/-! ## A034835.P5918703905977397016

`lcm((-1)^n, A248329(A000217(n)))`
-/

namespace A034835.P5918703905977397016
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A248329 (A000217 n).toNat)

end

end A034835.P5918703905977397016

/-! ## A034835.P13645979925653937624

`record[A248329(n)/A097190(n)]`
-/

namespace A034835.P13645979925653937624
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248329 n : ℚ) / (A097190 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034835.P13645979925653937624

/-!
# A034836: Number of ways to write n as n = x*y*z with 1 <= x <= y <= z.

The programs for A034836, the canonical program `A034836.P16402671284398310961` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034836 has offset 1).

The definition of A034836 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034836.P16402671284398310961

`A088434(n+1)+A046951(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A034836

/-- `A088434(n+1)+A046951(n+1)` -/
def P16402671284398310961.Spec : Prop :=
  ∀ n, P16402671284398310961.a n = A034836 (n + 1)

theorem P16402671284398310961.correct : P16402671284398310961.Spec := by
  intro n
  simp only [A034836, Nat.add_sub_cancel]

end A034836

/-! ## A034836.P8679999219067574739

`A122179(n+1)+A038548(n+1)`
-/

namespace A034836.P8679999219067574739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122179 (n + 1) + A038548 (n + 1)

end

end A034836.P8679999219067574739

namespace A034836

/-- `A122179(n+1)+A038548(n+1)` -/
def P8679999219067574739.Spec : Prop :=
  ∀ n, P8679999219067574739.a n = A034836 (n + 1)

end A034836

/-! ## A034836.P7499683220145043316

`A122179(n+1)+A072670(n)+1`
-/

namespace A034836.P7499683220145043316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122179 (n + 1) + (A072670 n + 1)

end

end A034836.P7499683220145043316

namespace A034836

/-- `A122179(n+1)+A072670(n)+1` -/
def P7499683220145043316.Spec : Prop :=
  ∀ n, P7499683220145043316.a n = A034836 (n + 1)

end A034836

/-! ## A034836.P9076639628801167908

`A218320(n+1)-A321379(n+1)`
-/

namespace A034836.P9076639628801167908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218320 (n + 1) - A321379 (n + 1)

end

end A034836.P9076639628801167908

namespace A034836

/-- `A218320(n+1)-A321379(n+1)` -/
def P9076639628801167908.Spec : Prop :=
  ∀ n, P9076639628801167908.a n = A034836 (n + 1)

end A034836

/-! ## A034836.P17996419719179290302

`A071325(n+1)+A088434(n+1)+1`
-/

namespace A034836.P17996419719179290302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071325 (n + 1) + (A088434 (n + 1) + 1)

end

end A034836.P17996419719179290302

namespace A034836

/-- `A071325(n+1)+A088434(n+1)+1` -/
def P17996419719179290302.Spec : Prop :=
  ∀ n, P17996419719179290302.a n = A034836 (n + 1)

end A034836

/-! ## A034836.P17713295234864977981

`A088434(n+1)+A000005(A000188(n+1))`
-/

namespace A034836.P17713295234864977981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088434 (n + 1) + A000005 (A000188 (n + 1)).toNat

end

end A034836.P17713295234864977981

namespace A034836

/-- `A088434(n+1)+A000005(A000188(n+1))` -/
def P17713295234864977981.Spec : Prop :=
  ∀ n, P17713295234864977981.a n = A034836 (n + 1)

end A034836

/-! ## A034836.P6042051826291041392

`A088434(n+1)+A000005(A057918(n+1)+1)`
-/

namespace A034836.P6042051826291041392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088434 (n + 1) + A000005 (A057918 (n + 1) + 1).toNat

end

end A034836.P6042051826291041392

namespace A034836

/-- `A088434(n+1)+A000005(A057918(n+1)+1)` -/
def P6042051826291041392.Spec : Prop :=
  ∀ n, P6042051826291041392.a n = A034836 (n + 1)

end A034836

/-! ## A034836.P10764277410085400200

`A088434(n+1)+A028310(n)-A338233(n+1)`
-/

namespace A034836.P10764277410085400200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088434 (n + 1) + (A028310 n - A338233 (n + 1))

end

end A034836.P10764277410085400200

namespace A034836

/-- `A088434(n+1)+A028310(n)-A338233(n+1)` -/
def P10764277410085400200.Spec : Prop :=
  ∀ n, P10764277410085400200.a n = A034836 (n + 1)

end A034836

/-! ## A034836.P18418396437814248993

`A056624(n+1)+A088434(n+1)+A056626(n+1)`
-/

namespace A034836.P18418396437814248993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056624 (n + 1) + (A088434 (n + 1) + A056626 (n + 1))

end

end A034836.P18418396437814248993

namespace A034836

/-- `A056624(n+1)+A088434(n+1)+A056626(n+1)` -/
def P18418396437814248993.Spec : Prop :=
  ∀ n, P18418396437814248993.a n = A034836 (n + 1)

end A034836

/-! ## A034836.P10570020760872968617

`A000005(n+1)+A088434(n+1)-A056595(n+1)`
-/

namespace A034836.P10570020760872968617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A088434 (n + 1) - A056595 (n + 1))

end

end A034836.P10570020760872968617

namespace A034836

/-- `A000005(n+1)+A088434(n+1)-A056595(n+1)` -/
def P10570020760872968617.Spec : Prop :=
  ∀ n, P10570020760872968617.a n = A034836 (n + 1)

end A034836

/-! ## A034836.P4502838544243170975

`A088434(n+1)+A000005((n+1)/A019554(n+1))`
-/

namespace A034836.P4502838544243170975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088434 (n + 1) + A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A019554 (n + 1) : ℚ))).toNat

end

end A034836.P4502838544243170975

namespace A034836

/-- `A088434(n+1)+A000005((n+1)/A019554(n+1))` -/
def P4502838544243170975.Spec : Prop :=
  ∀ n, P4502838544243170975.a n = A034836 (n + 1)

end A034836

/-! ## A034836.P2160811298528522364

`A102354(n+1)+A088433(n+1)`
-/

namespace A034836.P2160811298528522364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102354 (n + 1) + A088433 (n + 1)

end

end A034836.P2160811298528522364

namespace A034836

/-- `A102354(n+1)+A088433(n+1)` -/
def P2160811298528522364.Spec : Prop :=
  ∀ n, P2160811298528522364.a n = A034836 (n + 1)

end A034836

/-! ## A034836.P13016924083323440458

`A140773(n+1)-(A088433(n+1)+A088432(n+1))`
-/

namespace A034836.P13016924083323440458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140773 (n + 1) - (A088433 (n + 1) + A088432 (n + 1))

end

end A034836.P13016924083323440458

namespace A034836

/-- `A140773(n+1)-(A088433(n+1)+A088432(n+1))` -/
def P13016924083323440458.Spec : Prop :=
  ∀ n, P13016924083323440458.a n = A034836 (n + 1)

end A034836

/-!
# A034837: Numbers that are divisible by the first, i.e., the leftmost, digit.

The programs for A034837, the canonical program `A034837.P6817860446194292384` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034837 has offset 1).

The definition of A034837 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3159 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034837.P6817860446194292384

`eq[0, (n+1)%A000030(n+1)]+1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A034837

/-- `eq[0, (n+1)%A000030(n+1)]+1` -/
def P6817860446194292384.Spec : Prop :=
  ∀ n, (P6817860446194292384.a n : ℤ) = A034837 (n + 1)

theorem P6817860446194292384.correct : P6817860446194292384.Spec := by
  intro n
  simp only [A034837, Nat.add_sub_cancel]

end A034837

/-! ## A034837.P434624464634786679

`eq[lcm(n, A000030(n)), A028310(n)]`
-/

namespace A034837.P434624464634786679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A000030 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034837.P434624464634786679

namespace A034837

/-- `eq[lcm(n, A000030(n)), A028310(n)]` -/
def P434624464634786679.Spec : Prop :=
  ∀ n, (P434624464634786679.a n : ℤ) = A034837 (n + 1)

end A034837

/-! ## A034837.P5578398834897109471

`eq[A027828(A347323(n)), A178334(n)]`
-/

namespace A034837.P5578398834897109471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027828 (A347323 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034837.P5578398834897109471

namespace A034837

/-- `eq[A027828(A347323(n)), A178334(n)]` -/
def P5578398834897109471.Spec : Prop :=
  ∀ n, (P5578398834897109471.a n : ℤ) = A034837 (n + 1)

end A034837

/-! ## A034837.P12851115318205764778

`A033676(A096105(n+1)²)`
-/

namespace A034837.P12851115318205764778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A096105 (n + 1) ^ 2).toNat

end

end A034837.P12851115318205764778

namespace A034837

/-- `A033676(A096105(n+1)²)` -/
def P12851115318205764778.Spec : Prop :=
  ∀ n, P12851115318205764778.a n = A034837 (n + 1)

end A034837

/-! ## A034837.P10439205687720488023

`A033676(A178157(n+1)²)`
-/

namespace A034837.P10439205687720488023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A178157 (n + 1) ^ 2).toNat

end

end A034837.P10439205687720488023

namespace A034837

/-- `A033676(A178157(n+1)²)` -/
def P10439205687720488023.Spec : Prop :=
  ∀ n, P10439205687720488023.a n = A034837 (n + 1)

end A034837

/-!
# A034838: Numbers k that are divisible by every digit of k.

The programs for A034838, there is no canonical definition to state claims against.
-/

/-! ## A034838.P4070008847161580756

`∪[A051004(n+1), A087142(n+1)]`
-/

namespace A034838.P4070008847161580756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A034838.P4070008847161580756

/-! ## A034838.P9066881402865540851

`∪[A007602(n+1), A337163(n+1)]`
-/

namespace A034838.P9066881402865540851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A034838.P9066881402865540851

/-! ## A034838.P11306131673376283615

`∩[A002796(n+1), A330982(n+1)]`
-/

namespace A034838.P11306131673376283615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034838.P11306131673376283615

/-! ## A034838.P16637247930375752994

`∩[A002796(n+1), A052382(n+1)]`
-/

namespace A034838.P16637247930375752994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034838.P16637247930375752994

/-! ## A034838.P6879127348156441713

`record[gcd(A052382(n+1), A346576(n+1))]`
-/

namespace A034838.P6879127348156441713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052382 (n + 1)) (A346576 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034838.P6879127348156441713

/-! ## A034838.P17204537938200066998

`record[A004719(A002796(n+1))]`
-/

namespace A034838.P17204537938200066998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A002796 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034838.P17204537938200066998

/-! ## A034838.P11085922815467881983

`eq[A347323(n)², A067898(n)]`
-/

namespace A034838.P11085922815467881983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347323 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034838.P11085922815467881983

/-! ## A034838.P7017380866861013784

`filter[A002796(n+1), A168046(#)]`
-/

namespace A034838.P7017380866861013784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A034838.P7017380866861013784

/-! ## A034838.P14697884474400847646

`eq[A347323(n)+1, A168046(n)]`
-/

namespace A034838.P14697884474400847646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347323 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034838.P14697884474400847646

/-! ## A034838.P1213044072433844457

`eq[3*A347323(n), A055641(n)]`
-/

namespace A034838.P1213044072433844457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A347323 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034838.P1213044072433844457

/-! ## A034838.P12724874819278579150

`eq[A008585(A347323(n)), A055641(n)]`
-/

namespace A034838.P12724874819278579150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A347323 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034838.P12724874819278579150

/-! ## A034838.P4934784538779619600

`eq[A347323(n)², A000038(A007954(n))]`
-/

namespace A034838.P4934784538779619600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347323 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034838.P4934784538779619600

/-! ## A034838.P2535012040413342093

`eq[A347323(n)+A045503(n), A045512(n)]`
-/

namespace A034838.P2535012040413342093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347323 n + A045503 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045512 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034838.P2535012040413342093

/-! ## A034838.P7407829669453064261

`eq[A045503(n-A347323(n)), A045512(n)]`
-/

namespace A034838.P7407829669453064261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045503 ((n : ℤ) - A347323 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045512 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034838.P7407829669453064261

/-!
# A034839: Triangular array formed by taking every other term of each row of Pascal's triangle.

The programs for A034839, the canonical program `A034839.P358419895487710885` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034839 has offset 0).

The definition of A034839 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034839.P14620845111209083000

`ceil(A119462(n)/2)`
-/

namespace A034839.P14620845111209083000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A119462 n : ℚ) / 2⌉

end

end A034839.P14620845111209083000

namespace A034839

/-- `ceil(A119462(n)/2)` -/
def P14620845111209083000.Spec : Prop :=
  ∀ n, P14620845111209083000.a n = A034839 n

end A034839

/-! ## A034839.P358419895487710885

`C(A055086(n), 2*A055087(n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A034839

/-- `C(A055086(n), 2*A055087(n))` -/
def P358419895487710885.Spec : Prop :=
  ∀ n, (P358419895487710885.a n : ℤ) = A034839 n

theorem P358419895487710885.correct : P358419895487710885.Spec := by
  intro n
  simp only [A034839]

end A034839

/-! ## A034839.P6394451988540910618

`A119462(n)/A119462(A001222(n+1)²)`
-/

namespace A034839.P6394451988540910618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119462 n : ℚ) / (A119462 (A001222 (n + 1) ^ 2).toNat : ℚ)

end

end A034839.P6394451988540910618

namespace A034839

/-- `A119462(n)/A119462(A001222(n+1)²)` -/
def P6394451988540910618.Spec : Prop :=
  ∀ n, P6394451988540910618.a n = (A034839 n : ℚ)

end A034839

/-! ## A034839.P5319768437533106685

`A007318(comp[comp[n²]+n])`
-/

namespace A034839.P5319768437533106685
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A034839.P5319768437533106685

namespace A034839

/-- `A007318(comp[comp[n²]+n])` -/
def P5319768437533106685.Spec : Prop :=
  ∀ n, P5319768437533106685.a n = A034839 n

end A034839

/-! ## A034839.P14295712388812964075

`A085478(A091018(n))`
-/

namespace A034839.P14295712388812964075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 (A091018 n).toNat

end

end A034839.P14295712388812964075

namespace A034839

/-- `A085478(A091018(n))` -/
def P14295712388812964075.Spec : Prop :=
  ∀ n, P14295712388812964075.a n = A034839 n

end A034839

/-! ## A034839.P6830744308043061093

`A202023(lt[0, A202023(n)])`
-/

namespace A034839.P6830744308043061093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202023 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A034839.P6830744308043061093

namespace A034839

/-- `A202023(lt[0, A202023(n)])` -/
def P6830744308043061093.Spec : Prop :=
  ∀ n, P6830744308043061093.a n = A034839 n

end A034839

/-! ## A034839.P16873432706181722987

`A119462(n)/A036453(2*n+1)`
-/

namespace A034839.P16873432706181722987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119462 n : ℚ) / (A036453 (2 * n + 1) : ℚ)

end

end A034839.P16873432706181722987

namespace A034839

/-- `A119462(n)/A036453(2*n+1)` -/
def P16873432706181722987.Spec : Prop :=
  ∀ n, P16873432706181722987.a n = (A034839 n : ℚ)

end A034839

/-! ## A034839.P16474121321105516011

`A097805(comp[n²]+n)`
-/

namespace A034839.P16474121321105516011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A034839.P16474121321105516011

namespace A034839

/-- `A097805(comp[n²]+n)` -/
def P16474121321105516011.Spec : Prop :=
  ∀ n, P16474121321105516011.a n = A034839 n

end A034839

/-! ## A034839.P16792520313950928161

`A135225(comp[n²]+n)`
-/

namespace A034839.P16792520313950928161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135225 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A034839.P16792520313950928161

namespace A034839

/-- `A135225(comp[n²]+n)` -/
def P16792520313950928161.Spec : Prop :=
  ∀ n, P16792520313950928161.a n = A034839 n

end A034839

/-! ## A034839.P276501963494537559

`A193554(comp[n²]+n)`
-/

namespace A034839.P276501963494537559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193554 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A034839.P276501963494537559

namespace A034839

/-- `A193554(comp[n²]+n)` -/
def P276501963494537559.Spec : Prop :=
  ∀ n, P276501963494537559.a n = A034839 n

end A034839

/-! ## A034839.P12579271450300878428

`A110555(lt[1, A238801(n)])`
-/

namespace A034839.P12579271450300878428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238801 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110555 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A034839.P12579271450300878428

namespace A034839

/-- `A110555(lt[1, A238801(n)])` -/
def P12579271450300878428.Spec : Prop :=
  ∀ n, P12579271450300878428.a n = A034839 n

end A034839

/-! ## A034839.P16482253447303970967

`gcd(A100861(n), A119462(n))`
-/

namespace A034839.P16482253447303970967
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A100861 n) (A119462 n)

end

end A034839.P16482253447303970967

namespace A034839

/-- `gcd(A100861(n), A119462(n))` -/
def P16482253447303970967.Spec : Prop :=
  ∀ n, (P16482253447303970967.a n : ℤ) = A034839 n

end A034839

/-! ## A034839.P11880481595256731910

`A119462(n)/A119462(A004525(n)²)`
-/

namespace A034839.P11880481595256731910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119462 n : ℚ) / (A119462 (A004525 n ^ 2).toNat : ℚ)

end

end A034839.P11880481595256731910

namespace A034839

/-- `A119462(n)/A119462(A004525(n)²)` -/
def P11880481595256731910.Spec : Prop :=
  ∀ n, P11880481595256731910.a n = (A034839 n : ℚ)

end A034839

/-! ## A034839.P10188892203022583983

`A119462(n)/A119462(A002620(n+1))`
-/

namespace A034839.P10188892203022583983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119462 n : ℚ) / (A119462 (A002620 (n + 1)).toNat : ℚ)

end

end A034839.P10188892203022583983

namespace A034839

/-- `A119462(n)/A119462(A002620(n+1))` -/
def P10188892203022583983.Spec : Prop :=
  ∀ n, P10188892203022583983.a n = (A034839 n : ℚ)

end A034839

/-! ## A034839.P12936612495339995997

`A119462(n)/A119462(A110660(n+1))`
-/

namespace A034839.P12936612495339995997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119462 n : ℚ) / (A119462 (A110660 (n + 1)).toNat : ℚ)

end

end A034839.P12936612495339995997

namespace A034839

/-- `A119462(n)/A119462(A110660(n+1))` -/
def P12936612495339995997.Spec : Prop :=
  ∀ n, P12936612495339995997.a n = (A034839 n : ℚ)

end A034839

/-! ## A034839.P10660738828716108325

`A119462(n)/A119462(n²)`
-/

namespace A034839.P10660738828716108325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119462 n : ℚ) / (A119462 (n ^ 2) : ℚ)

end

end A034839.P10660738828716108325

namespace A034839

/-- `A119462(n)/A119462(n²)` -/
def P10660738828716108325.Spec : Prop :=
  ∀ n, P10660738828716108325.a n = (A034839 n : ℚ)

end A034839

/-!
# A034841: a(n) = (n^2)! / (n!)^n.

The programs for A034841, the canonical program `A034841.P14830808767501384027` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034841 has offset 0).

The definition of A034841 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034841.P14830808767501384027

`n²!/n!^n`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A034841

/-- `n²!/n!^n` -/
def P14830808767501384027.Spec : Prop :=
  ∀ n, P14830808767501384027.a n = (A034841 n : ℚ)

end A034841

/-! ## A034841.P12498747644760367661

`A089759(∑[4*n])`
-/

namespace A034841.P12498747644760367661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089759 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A034841.P12498747644760367661

namespace A034841

/-- `A089759(∑[4*n])` -/
def P12498747644760367661.Spec : Prop :=
  ∀ n, P12498747644760367661.a n = A034841 n

end A034841

/-! ## A034841.P1715679956611616998

`A187783(∑[4*n])`
-/

namespace A034841.P1715679956611616998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187783 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A034841.P1715679956611616998

namespace A034841

/-- `A187783(∑[4*n])` -/
def P1715679956611616998.Spec : Prop :=
  ∀ n, P1715679956611616998.a n = A034841 n

end A034841

/-! ## A034841.P12889187639675874076

`n!*A057599(n)`
-/

namespace A034841.P12889187639675874076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A057599 n

end

end A034841.P12889187639675874076

namespace A034841

/-- `n!*A057599(n)` -/
def P12889187639675874076.Spec : Prop :=
  ∀ n, P12889187639675874076.a n = A034841 n

end A034841

/-! ## A034841.P5950035256061540705

`A141906(∑[n]+n)`
-/

namespace A034841.P5950035256061540705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141906 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A034841.P5950035256061540705

namespace A034841

/-- `A141906(∑[n]+n)` -/
def P5950035256061540705.Spec : Prop :=
  ∀ n, P5950035256061540705.a n = A034841 n

end A034841

/-!
# A034842: Number of divisors = last digit.

The programs for A034842, the canonical program `A034842.P3328031310771291093` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034842 has offset 1).

The definition of A034842 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 520 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034842.P3328031310771291093

`eq[A032741(n)+1, A010879(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A034842

/-- `eq[A032741(n)+1, A010879(n)]` -/
def P3328031310771291093.Spec : Prop :=
  ∀ n, (P3328031310771291093.a n : ℤ) = A034842 (n + 1)

theorem P3328031310771291093.correct : P3328031310771291093.Spec := by
  intro n
  simp only [A034842, Nat.add_sub_cancel]

end A034842

/-! ## A034842.P13777117891688746448

`eq[n%10, A000005(A028310(n))]`
-/

namespace A034842.P13777117891688746448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034842.P13777117891688746448

namespace A034842

/-- `eq[n%10, A000005(A028310(n))]` -/
def P13777117891688746448.Spec : Prop :=
  ∀ n, (P13777117891688746448.a n : ℤ) = A034842 (n + 1)

end A034842

/-! ## A034842.P14812682984597358730

`eq[A000005(abs(1-n)+1), A010879(n)]`
-/

namespace A034842.P14812682984597358730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034842.P14812682984597358730

namespace A034842

/-- `eq[A000005(abs(1-n)+1), A010879(n)]` -/
def P14812682984597358730.Spec : Prop :=
  ∀ n, (P14812682984597358730.a n : ℤ) = A034842 (n + 1)

end A034842

/-! ## A034842.P16374665292456804371

`eq[A000005(n+1), A065881(n+1)]+1`
-/

namespace A034842.P16374665292456804371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065881 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A034842.P16374665292456804371

namespace A034842

/-- `eq[A000005(n+1), A065881(n+1)]+1` -/
def P16374665292456804371.Spec : Prop :=
  ∀ n, (P16374665292456804371.a n : ℤ) = A034842 (n + 1)

end A034842

/-! ## A034842.P10806716974769696702

`eq[A008624(A145154(n)), A010889(n)]`
-/

namespace A034842.P10806716974769696702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A145154 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010889 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034842.P10806716974769696702

namespace A034842

/-- `eq[A008624(A145154(n)), A010889(n)]` -/
def P10806716974769696702.Spec : Prop :=
  ∀ n, (P10806716974769696702.a n : ℤ) = A034842 (n + 1)

end A034842

/-! ## A034842.P11524710594937166933

`eq[A010879(n), A216556(A032741(n))]`
-/

namespace A034842.P11524710594937166933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216556 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034842.P11524710594937166933

namespace A034842

/-- `eq[A010879(n), A216556(A032741(n))]` -/
def P11524710594937166933.Spec : Prop :=
  ∀ n, (P11524710594937166933.a n : ℤ) = A034842 (n + 1)

end A034842

/-!
# A034843: Number of divisors = first digit.

The programs for A034843, the canonical program `A034843.P18163365726242759296` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034843 has offset 1).

The definition of A034843 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 760 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034843.P18163365726242759296

`eq[A032741(n)+1, A000030(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A034843

/-- `eq[A032741(n)+1, A000030(n)]` -/
def P18163365726242759296.Spec : Prop :=
  ∀ n, (P18163365726242759296.a n : ℤ) = A034843 (n + 1)

theorem P18163365726242759296.correct : P18163365726242759296.Spec := by
  intro n
  simp only [A034843, Nat.add_sub_cancel]

end A034843

/-! ## A034843.P8846222259996795680

`eq[A000005(C(2, n+2)+n), A000030(n)]`
-/

namespace A034843.P8846222259996795680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose 2 (n + 2) + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034843.P8846222259996795680

namespace A034843

/-- `eq[A000005(C(2, n+2)+n), A000030(n)]` -/
def P8846222259996795680.Spec : Prop :=
  ∀ n, (P8846222259996795680.a n : ℤ) = A034843 (n + 1)

end A034843

/-! ## A034843.P2486317448174995396

`eq[A000005(A028310(n)), A000030(n)]`
-/

namespace A034843.P2486317448174995396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034843.P2486317448174995396

namespace A034843

/-- `eq[A000005(A028310(n)), A000030(n)]` -/
def P2486317448174995396.Spec : Prop :=
  ∀ n, (P2486317448174995396.a n : ℤ) = A034843 (n + 1)

end A034843

/-! ## A034843.P13979199802364637376

`eq[A000030(n), A077168(A032741(n))]`
-/

namespace A034843.P13979199802364637376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034843.P13979199802364637376

namespace A034843

/-- `eq[A000030(n), A077168(A032741(n))]` -/
def P13979199802364637376.Spec : Prop :=
  ∀ n, (P13979199802364637376.a n : ℤ) = A034843 (n + 1)

end A034843

/-! ## A034843.P17614413476526355116

`eq[A000005(A065033(2*n)), A000030(n)]`
-/

namespace A034843.P17614413476526355116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A065033 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034843.P17614413476526355116

namespace A034843

/-- `eq[A000005(A065033(2*n)), A000030(n)]` -/
def P17614413476526355116.Spec : Prop :=
  ∀ n, (P17614413476526355116.a n : ℤ) = A034843 (n + 1)

end A034843

/-! ## A034843.P8446537389462738993

`eq[A000005(A123108(2*n)), A000030(n)]`
-/

namespace A034843.P8446537389462738993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A123108 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034843.P8446537389462738993

namespace A034843

/-- `eq[A000005(A123108(2*n)), A000030(n)]` -/
def P8446537389462738993.Spec : Prop :=
  ∀ n, (P8446537389462738993.a n : ℤ) = A034843 (n + 1)

end A034843

/-! ## A034843.P10549553797390599130

`eq[A000030(n), A299480(A008574(n))]`
-/

namespace A034843.P10549553797390599130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299480 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034843.P10549553797390599130

namespace A034843

/-- `eq[A000030(n), A299480(A008574(n))]` -/
def P10549553797390599130.Spec : Prop :=
  ∀ n, (P10549553797390599130.a n : ℤ) = A034843 (n + 1)

end A034843

/-!
# A034844: Primes with only nonprime decimal digits.

The programs for A034844, the canonical program `A034844.P6228809805962937027` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034844 has offset 1).

The definition of A034844 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1568 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034844.P12432951441869982288

`∩[A152312(n+1), A386335(n+1)]`
-/

namespace A034844.P12432951441869982288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034844.P12432951441869982288

namespace A034844

/-- `∩[A152312(n+1), A386335(n+1)]` -/
def P12432951441869982288.Spec : Prop :=
  ∀ n, (P12432951441869982288.a n : ℤ) = A034844 (n + 1)

end A034844

/-! ## A034844.P17409557460651916258

`∩[A152312(n+1), A329760(n+1)]`
-/

namespace A034844.P17409557460651916258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034844.P17409557460651916258

namespace A034844

/-- `∩[A152312(n+1), A329760(n+1)]` -/
def P17409557460651916258.Spec : Prop :=
  ∀ n, (P17409557460651916258.a n : ℤ) = A034844 (n + 1)

end A034844

/-! ## A034844.P6228809805962937027

`∩[A329760(n+1), A380906(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A034844

/-- `∩[A329760(n+1), A380906(n+1)]` -/
def P6228809805962937027.Spec : Prop :=
  ∀ n, (P6228809805962937027.a n : ℤ) = A034844 (n + 1)

theorem P6228809805962937027.correct : P6228809805962937027.Spec := by
  intro n
  simp only [A034844, Nat.add_sub_cancel]

end A034844

/-! ## A034844.P5741382176236034403

`∩[A152312(n+1), A361822(n+1)]`
-/

namespace A034844.P5741382176236034403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034844.P5741382176236034403

namespace A034844

/-- `∩[A152312(n+1), A361822(n+1)]` -/
def P5741382176236034403.Spec : Prop :=
  ∀ n, (P5741382176236034403.a n : ℤ) = A034844 (n + 1)

end A034844

/-! ## A034844.P10994856666031183981

`∩[A361822(n+1), A386342(n+1)]`
-/

namespace A034844.P10994856666031183981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034844.P10994856666031183981

namespace A034844

/-- `∩[A361822(n+1), A386342(n+1)]` -/
def P10994856666031183981.Spec : Prop :=
  ∀ n, (P10994856666031183981.a n : ℤ) = A034844 (n + 1)

end A034844

/-! ## A034844.P16835476211132286291

`∩[A386335(n+1), A386351(n+1)]`
-/

namespace A034844.P16835476211132286291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034844.P16835476211132286291

namespace A034844

/-- `∩[A386335(n+1), A386351(n+1)]` -/
def P16835476211132286291.Spec : Prop :=
  ∀ n, (P16835476211132286291.a n : ℤ) = A034844 (n + 1)

end A034844

/-! ## A034844.P2264060061119243722

`∩[A038604(n+1), A152312(n+1)]`
-/

namespace A034844.P2264060061119243722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034844.P2264060061119243722

namespace A034844

/-- `∩[A038604(n+1), A152312(n+1)]` -/
def P2264060061119243722.Spec : Prop :=
  ∀ n, (P2264060061119243722.a n : ℤ) = A034844 (n + 1)

end A034844

/-! ## A034844.P14821282723117185513

`p?[A084984(n+1)]`
-/

namespace A034844.P14821282723117185513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034844.P14821282723117185513

namespace A034844

/-- `p?[A084984(n+1)]` -/
def P14821282723117185513.Spec : Prop :=
  ∀ n, P14821282723117185513.a n = A034844 (n + 1)

end A034844

/-! ## A034844.P2672776766672214230

`∏{d}[p?[A084984(A103517(n))], #]`
-/

namespace A034844.P2672776766672214230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (A103517 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A034844.P2672776766672214230

namespace A034844

/-- `∏{d}[p?[A084984(A103517(n))], #]` -/
def P2672776766672214230.Spec : Prop :=
  ∀ n, (P2672776766672214230.a n : ℤ) = A034844 (n + 1)

end A034844

/-! ## A034844.P14029801382249461321

`∩[A038604(n+1), A084984(n+1)]`
-/

namespace A034844.P14029801382249461321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034844.P14029801382249461321

namespace A034844

/-- `∩[A038604(n+1), A084984(n+1)]` -/
def P14029801382249461321.Spec : Prop :=
  ∀ n, (P14029801382249461321.a n : ℤ) = A034844 (n + 1)

end A034844

/-! ## A034844.P16664040993318424518

`∩[A038611(n+1), A084984(n+1)]`
-/

namespace A034844.P16664040993318424518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034844.P16664040993318424518

namespace A034844

/-- `∩[A038611(n+1), A084984(n+1)]` -/
def P16664040993318424518.Spec : Prop :=
  ∀ n, (P16664040993318424518.a n : ℤ) = A034844 (n + 1)

end A034844

/-! ## A034844.P18121929804987507347

`∩[A038613(n+1), A084984(n+1)]`
-/

namespace A034844.P18121929804987507347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034844.P18121929804987507347

namespace A034844

/-- `∩[A038613(n+1), A084984(n+1)]` -/
def P18121929804987507347.Spec : Prop :=
  ∀ n, (P18121929804987507347.a n : ℤ) = A034844 (n + 1)

end A034844

/-! ## A034844.P5396129778754951782

`∩[A038615(n+1), A084984(n+1)]`
-/

namespace A034844.P5396129778754951782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034844.P5396129778754951782

namespace A034844

/-- `∩[A038615(n+1), A084984(n+1)]` -/
def P5396129778754951782.Spec : Prop :=
  ∀ n, (P5396129778754951782.a n : ℤ) = A034844 (n + 1)

end A034844

/-! ## A034844.P14224641221481540171

`∩[A038872(n+1), A084984(n+1)]`
-/

namespace A034844.P14224641221481540171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034844.P14224641221481540171

namespace A034844

/-- `∩[A038872(n+1), A084984(n+1)]` -/
def P14224641221481540171.Spec : Prop :=
  ∀ n, (P14224641221481540171.a n : ℤ) = A034844 (n + 1)

end A034844

/-! ## A034844.P2943815182283824198

`∩[A045348(n+1), A084984(n+1)]`
-/

namespace A034844.P2943815182283824198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034844.P2943815182283824198

namespace A034844

/-- `∩[A045348(n+1), A084984(n+1)]` -/
def P2943815182283824198.Spec : Prop :=
  ∀ n, (P2943815182283824198.a n : ℤ) = A034844 (n + 1)

end A034844

/-! ## A034844.P3156069781944796246

`∩[A045371(n+1), A084984(n+1)]`
-/

namespace A034844.P3156069781944796246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034844.P3156069781944796246

namespace A034844

/-- `∩[A045371(n+1), A084984(n+1)]` -/
def P3156069781944796246.Spec : Prop :=
  ∀ n, (P3156069781944796246.a n : ℤ) = A034844 (n + 1)

end A034844

/-! ## A034844.P7671912186691625416

`∩[A045405(n+1), A084984(n+1)]`
-/

namespace A034844.P7671912186691625416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034844.P7671912186691625416

namespace A034844

/-- `∩[A045405(n+1), A084984(n+1)]` -/
def P7671912186691625416.Spec : Prop :=
  ∀ n, (P7671912186691625416.a n : ℤ) = A034844 (n + 1)

end A034844

/-! ## A034844.P6270902567733508784

`∩[A045428(n+1), A084984(n+1)]`
-/

namespace A034844.P6270902567733508784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034844.P6270902567733508784

namespace A034844

/-- `∩[A045428(n+1), A084984(n+1)]` -/
def P6270902567733508784.Spec : Prop :=
  ∀ n, (P6270902567733508784.a n : ℤ) = A034844 (n + 1)

end A034844

/-! ## A034844.P16338236481825668421

`∩[A045468(n+1), A084984(n+1)]`
-/

namespace A034844.P16338236481825668421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034844.P16338236481825668421

namespace A034844

/-- `∩[A045468(n+1), A084984(n+1)]` -/
def P16338236481825668421.Spec : Prop :=
  ∀ n, (P16338236481825668421.a n : ℤ) = A034844 (n + 1)

end A034844

/-! ## A034844.P6609883489407820275

`∩[A064739(n+1), A084984(n+1)]`
-/

namespace A034844.P6609883489407820275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034844.P6609883489407820275

namespace A034844

/-- `∩[A064739(n+1), A084984(n+1)]` -/
def P6609883489407820275.Spec : Prop :=
  ∀ n, (P6609883489407820275.a n : ℤ) = A034844 (n + 1)

end A034844

/-!
# A034845: Primes of the form iii...ijjj...j, i != j.

The programs for A034845, there is no canonical definition to state claims against.
-/

/-! ## A034845.P7534386193970479353

`∩[A030291(n+1), A043638(n+1)]`
-/

namespace A034845.P7534386193970479353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034845.P7534386193970479353

/-! ## A034845.P6442743850672164907

`∩[A043638(n+1), A235154(n+1)]`
-/

namespace A034845.P6442743850672164907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034845.P6442743850672164907

/-! ## A034845.P10660035518987449709

`p?[A043638(n+1)]`
-/

namespace A034845.P10660035518987449709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034845.P10660035518987449709

/-! ## A034845.P1025060488907911156

`or(1, p?[A043638(A028310(n))])`
-/

namespace A034845.P1025060488907911156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043638 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A034845.P1025060488907911156

/-! ## A034845.P15869530099697948013

`p?[A043638(A028310(n))-A000007(n)]`
-/

namespace A034845.P15869530099697948013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043638 (A028310 n).toNat - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034845.P15869530099697948013

/-! ## A034845.P5898395944525953154

`p?[A043638(A028310(n))*A054977(n)]`
-/

namespace A034845.P5898395944525953154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043638 (A028310 n).toNat * A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034845.P5898395944525953154

/-! ## A034845.P14142815618829403324

`p?[A033999(n)²*A043638(A028310(n))]`
-/

namespace A034845.P14142815618829403324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A043638 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034845.P14142815618829403324

/-! ## A034845.P15273001315656427204

`p?[A043638(A028310(n))]%A016970(n)²`
-/

namespace A034845.P15273001315656427204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043638 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A016970 n ^ 2)

end

end A034845.P15273001315656427204

/-! ## A034845.P9857130093051187024

`∩[A030475(n+1), A043638(n+1)]`
-/

namespace A034845.P9857130093051187024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034845.P9857130093051187024

/-! ## A034845.P9336908091289213896

`∩[A031955(n+1), A052085(n+1)]`
-/

namespace A034845.P9336908091289213896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034845.P9336908091289213896

/-! ## A034845.P5302500474357515681

`∩[A043638(n+1), A052085(n+1)]`
-/

namespace A034845.P5302500474357515681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034845.P5302500474357515681

/-! ## A034845.P5602666915752410542

`∩[A052085(n+1), A101594(n+1)]`
-/

namespace A034845.P5602666915752410542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034845.P5602666915752410542

/-! ## A034845.P7790532340522124838

`p?[A379930(n+1)]`
-/

namespace A034845.P7790532340522124838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034845.P7790532340522124838

/-! ## A034845.P7770431776496746314

`∩[A038618(n+1), A043638(n+1)]`
-/

namespace A034845.P7770431776496746314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034845.P7770431776496746314

/-! ## A034845.P8177548055276848255

`record[A006530(A043638(n+3))]`
-/

namespace A034845.P8177548055276848255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A043638 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034845.P8177548055276848255

/-! ## A034845.P10800246463982849384

`filter[A043638(n+1), A010051(#)]`
-/

namespace A034845.P10800246463982849384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A034845.P10800246463982849384

/-! ## A034845.P1370046098107277517

`filter[A379930(n+1), A010051(#)]`
-/

namespace A034845.P1370046098107277517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A034845.P1370046098107277517

/-! ## A034845.P6954893265154520012

`∩[A000040(n+1), A043638(n+1)]`
-/

namespace A034845.P6954893265154520012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034845.P6954893265154520012

/-! ## A034845.P8074925694113426478

`∩[A004139(n+1), A043638(n+1)]`
-/

namespace A034845.P8074925694113426478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034845.P8074925694113426478

/-! ## A034845.P14508379694886257092

`∩[A006005(n+1), A043638(n+1)]`
-/

namespace A034845.P14508379694886257092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034845.P14508379694886257092

/-!
# A034846: a(n) = P(n,6) = 1+6*K(n,6)=1+6*A034783(n). P(n,6) are special primes of 6k+1. The relevant values of k are given by A034783.

The programs for A034846, there is no canonical definition to state claims against.
-/

/-! ## A034846.P7374780545156946936

`1+6*A034783(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A034846.P7374780545156946936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 6 * A034783 (n + 1)

end

end A034846.P7374780545156946936

/-! ## A034846.P8159740682794912927

`A070846(A034783(n+1))`
-/

namespace A034846.P8159740682794912927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (A034783 (n + 1)).toNat

end

end A034846.P8159740682794912927

/-! ## A034846.P13266659680683662903

`A034694(A034783(root(n+1, 2)²))`
-/

namespace A034846.P13266659680683662903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A034783 (SequenceMachineLib.roundAway (((n + 1 : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat).toNat

end

end A034846.P13266659680683662903

/-! ## A034846.P18200676076075929535

`A034694(or(char[1], A034783(n+1)))`
-/

namespace A034846.P18200676076075929535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A034783 (n + 1))).toNat

end

end A034846.P18200676076075929535

/-! ## A034846.P8703301359703759146

`A016777(2*A034783(n+1))`
-/

namespace A034846.P8703301359703759146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (2 * A034783 (n + 1)).toNat

end

end A034846.P8703301359703759146

/-! ## A034846.P4453352984700061855

`A034694(2*A034783(n+1))`
-/

namespace A034846.P4453352984700061855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (2 * A034783 (n + 1)).toNat

end

end A034846.P4453352984700061855

/-! ## A034846.P2562741886105617040

`A070847(2*A034783(n+1))`
-/

namespace A034846.P2562741886105617040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070847 (2 * A034783 (n + 1)).toNat

end

end A034846.P2562741886105617040

/-! ## A034846.P2507721053260318036

`A086507(2*A034783(n+1))`
-/

namespace A034846.P2507721053260318036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086507 (2 * A034783 (n + 1)).toNat

end

end A034846.P2507721053260318036

/-! ## A034846.P8892595244465166132

`A034694(lcm(2, A034783(n+1)))`
-/

namespace A034846.P8892595244465166132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (Int.lcm 2 (A034783 (n + 1)))

end

end A034846.P8892595244465166132

/-! ## A034846.P7008049922486485959

`A070847(A034783(n+1)+A034783(n+1))`
-/

namespace A034846.P7008049922486485959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070847 (A034783 (n + 1) + A034783 (n + 1)).toNat

end

end A034846.P7008049922486485959

/-! ## A034846.P14785084358310432825

`A005408(3*A034783(n+1))`
-/

namespace A034846.P14785084358310432825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (3 * A034783 (n + 1)).toNat

end

end A034846.P14785084358310432825

/-!
# A034847: a(n) = 1 + 4*A034780(n).

The programs for A034847, there is no canonical definition to state claims against.
-/

/-! ## A034847.P8184844798126138062

`1+4*A034780(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A034847.P8184844798126138062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 4 * A034780 (n + 1)

end

end A034847.P8184844798126138062

/-! ## A034847.P87771915240987780

`A070846(2*A034780(n+1))`
-/

namespace A034847.P87771915240987780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (2 * A034780 (n + 1)).toNat

end

end A034847.P87771915240987780

/-! ## A034847.P5210031938668320803

`A070846(A034780(n+1)+A034780(n+1))`
-/

namespace A034847.P5210031938668320803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (A034780 (n + 1) + A034780 (n + 1)).toNat

end

end A034847.P5210031938668320803

/-! ## A034847.P5265774825191099716

`A004766(A034780(n+1))`
-/

namespace A034847.P5265774825191099716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (A034780 (n + 1)).toNat

end

end A034847.P5265774825191099716

/-! ## A034847.P9293894171560641574

`A005408(2*A034780(n+1))`
-/

namespace A034847.P9293894171560641574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (2 * A034780 (n + 1)).toNat

end

end A034847.P9293894171560641574

/-! ## A034847.P1028427323510310986

`A064632(2*A034780(n+1))`
-/

namespace A034847.P1028427323510310986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064632 (2 * A034780 (n + 1)).toNat

end

end A034847.P1028427323510310986

/-! ## A034847.P17966406688440299531

`A086507(2*A034780(n+1))`
-/

namespace A034847.P17966406688440299531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086507 (2 * A034780 (n + 1)).toNat

end

end A034847.P17966406688440299531

/-! ## A034847.P6079315568206017557

`A064632(A034780(n+1)+A034780(n+1))`
-/

namespace A034847.P6079315568206017557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064632 (A034780 (n + 1) + A034780 (n + 1)).toNat

end

end A034847.P6079315568206017557

/-! ## A034847.P16522210542808173663

`A086507(A034780(n+1)+A034780(n+1))`
-/

namespace A034847.P16522210542808173663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086507 (A034780 (n + 1) + A034780 (n + 1)).toNat

end

end A034847.P16522210542808173663

/-! ## A034847.P3560549633169811076

`A004442(4*A034780(n+1))`
-/

namespace A034847.P3560549633169811076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (4 * A034780 (n + 1)).toNat

end

end A034847.P3560549633169811076

/-! ## A034847.P15557492003712404113

`A007918(4*A034780(n+1))`
-/

namespace A034847.P15557492003712404113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (4 * A034780 (n + 1)).toNat

end

end A034847.P15557492003712404113

/-! ## A034847.P11407046036294659277

`A008619(8*A034780(n+1))`
-/

namespace A034847.P11407046036294659277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (8 * A034780 (n + 1)).toNat

end

end A034847.P11407046036294659277

/-!
# A034848: a(n) = 1 + 3*A034782(n).

The programs for A034848, there is no canonical definition to state claims against.
-/

/-! ## A034848.P9536010271509517315

`1+3*A034782(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A034848.P9536010271509517315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 3 * A034782 (n + 1)

end

end A034848.P9536010271509517315

/-! ## A034848.P985226949418588549

`A070846(A034782(n+1)/2)`
-/

namespace A034848.P985226949418588549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (SequenceMachineLib.roundAway ((A034782 (n + 1) : ℚ) / 2)).toNat

end

end A034848.P985226949418588549

/-! ## A034848.P7887311123504711382

`A016777(A034782(n+1))`
-/

namespace A034848.P7887311123504711382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A034782 (n + 1)).toNat

end

end A034848.P7887311123504711382

/-! ## A034848.P3889019705176860506

`p?[A016777(A123608(n+1))]`
-/

namespace A034848.P3889019705176860506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A123608 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034848.P3889019705176860506

/-! ## A034848.P844404943179496802

`p?[A016777(A166602(n+1))]`
-/

namespace A034848.P844404943179496802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A166602 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034848.P844404943179496802

/-! ## A034848.P10846655861608328644

`A007310(A034782(n+1)+1)`
-/

namespace A034848.P10846655861608328644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A034782 (n + 1) + 1).toNat

end

end A034848.P10846655861608328644

/-! ## A034848.P3997338124210607248

`A033627(A034782(n+1)+2)`
-/

namespace A034848.P3997338124210607248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (A034782 (n + 1) + 2).toNat

end

end A034848.P3997338124210607248

/-! ## A034848.P8605640649131144795

`A034694(lcm(2, A034782(n+1)))`
-/

namespace A034848.P8605640649131144795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (Int.lcm 2 (A034782 (n + 1)))

end

end A034848.P8605640649131144795

/-! ## A034848.P11301118677048656367

`A034694(A034782(root(n+1, 2)²))`
-/

namespace A034848.P11301118677048656367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A034782 (SequenceMachineLib.roundAway (((n + 1 : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat).toNat

end

end A034848.P11301118677048656367

/-! ## A034848.P16575265111627416318

`p?[3*lt[A093074(A005408(n)), n+1]+1]`
-/

namespace A034848.P16575265111627416318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (A005408 n).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A034848.P16575265111627416318

/-! ## A034848.P10424090609400771375

`A004442(3*A034782(n+1))`
-/

namespace A034848.P10424090609400771375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (3 * A034782 (n + 1)).toNat

end

end A034848.P10424090609400771375

/-! ## A034848.P23178322590486340

`A007918(3*A034782(n+1))`
-/

namespace A034848.P23178322590486340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (3 * A034782 (n + 1)).toNat

end

end A034848.P23178322590486340

/-! ## A034848.P8945671000097326727

`A034694(3*A034782(n+1))`
-/

namespace A034848.P8945671000097326727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (3 * A034782 (n + 1)).toNat

end

end A034848.P8945671000097326727

/-! ## A034848.P2917594860489926943

`A008619(6*A034782(n+1))`
-/

namespace A034848.P2917594860489926943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (6 * A034782 (n + 1)).toNat

end

end A034848.P2917594860489926943

/-!
# A034849: a(n) = 1 + 2*A034784(n).

The programs for A034849, the canonical program `A034849.P15691742915255427826` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034849 has offset 1).

The definition of A034849 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034784, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A034849.P15691742915255427826

`1+2*A034784(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A034849

/-- `1+2*A034784(n+1)` -/
def P15691742915255427826.Spec : Prop :=
  ∀ n, P15691742915255427826.a n = A034849 (n + 1)

theorem P15691742915255427826.correct : P15691742915255427826.Spec := by
  intro n
  simp only [A034849, Nat.add_sub_cancel]

end A034849

/-! ## A034849.P14173282563400605127

`2*A174166(n+1)-1`
-/

namespace A034849.P14173282563400605127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174166 (n + 1) - 1

end

end A034849.P14173282563400605127

namespace A034849

/-- `2*A174166(n+1)-1` -/
def P14173282563400605127.Spec : Prop :=
  ∀ n, P14173282563400605127.a n = A034849 (n + 1)

end A034849

/-! ## A034849.P16680906935059707531

`A174166(n+1)+A034784(n+1)`
-/

namespace A034849.P16680906935059707531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174166 (n + 1) + A034784 (n + 1)

end

end A034849.P16680906935059707531

namespace A034849

/-- `A174166(n+1)+A034784(n+1)` -/
def P16680906935059707531.Spec : Prop :=
  ∀ n, P16680906935059707531.a n = A034849 (n + 1)

end A034849

/-! ## A034849.P17394262752374669640

`A176897(n+2)`
-/

namespace A034849.P17394262752374669640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176897 (n + 2)

end

end A034849.P17394262752374669640

namespace A034849

/-- `A176897(n+2)` -/
def P17394262752374669640.Spec : Prop :=
  ∀ n, P17394262752374669640.a n = A034849 (n + 1)

end A034849

/-! ## A034849.P1918736212747534983

`A151800(2*A034784(n+1))`
-/

namespace A034849.P1918736212747534983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (2 * A034784 (n + 1)).toNat

end

end A034849.P1918736212747534983

namespace A034849

/-- `A151800(2*A034784(n+1))` -/
def P1918736212747534983.Spec : Prop :=
  ∀ n, P1918736212747534983.a n = A034849 (n + 1)

end A034849

/-! ## A034849.P4030301819419673144

`eq[2, A175851(n+1)+A064911(n+1)]`
-/

namespace A034849.P4030301819419673144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (n + 1) + A064911 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034849.P4030301819419673144

namespace A034849

/-- `eq[2, A175851(n+1)+A064911(n+1)]` -/
def P4030301819419673144.Spec : Prop :=
  ∀ n, (P4030301819419673144.a n : ℤ) = A034849 (n + 1)

end A034849

/-! ## A034849.P2811943734245167993

`p?[2*A002808(n+1)-1]`
-/

namespace A034849.P2811943734245167993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002808 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034849.P2811943734245167993

namespace A034849

/-- `p?[2*A002808(n+1)-1]` -/
def P2811943734245167993.Spec : Prop :=
  ∀ n, P2811943734245167993.a n = A034849 (n + 1)

end A034849

/-! ## A034849.P687441607556274106

`p?[2*A018252(n+1)-1]`
-/

namespace A034849.P687441607556274106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018252 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034849.P687441607556274106

namespace A034849

/-- `p?[2*A018252(n+1)-1]` -/
def P687441607556274106.Spec : Prop :=
  ∀ n, P687441607556274106.a n = A034849 (n + 1)

end A034849

/-! ## A034849.P12486599857664558331

`p?[2*A141468(n+1)-1]`
-/

namespace A034849.P12486599857664558331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141468 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034849.P12486599857664558331

namespace A034849

/-- `p?[2*A141468(n+1)-1]` -/
def P12486599857664558331.Spec : Prop :=
  ∀ n, P12486599857664558331.a n = A034849 (n + 1)

end A034849

/-! ## A034849.P18058760349169080790

`p?[A176100(n+1)-1]`
-/

namespace A034849.P18058760349169080790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176100 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034849.P18058760349169080790

namespace A034849

/-- `p?[A176100(n+1)-1]` -/
def P18058760349169080790.Spec : Prop :=
  ∀ n, P18058760349169080790.a n = A034849 (n + 1)

end A034849

/-! ## A034849.P1058757680369228040

`p?[A176393(n+1)-2]`
-/

namespace A034849.P1058757680369228040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176393 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034849.P1058757680369228040

namespace A034849

/-- `p?[A176393(n+1)-2]` -/
def P1058757680369228040.Spec : Prop :=
  ∀ n, P1058757680369228040.a n = A034849 (n + 1)

end A034849

/-! ## A034849.P4694732966635226296

`p?[2*A072668(n+1)+1]`
-/

namespace A034849.P4694732966635226296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072668 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034849.P4694732966635226296

namespace A034849

/-- `p?[2*A072668(n+1)+1]` -/
def P4694732966635226296.Spec : Prop :=
  ∀ n, P4694732966635226296.a n = A034849 (n + 1)

end A034849

/-! ## A034849.P12394986893135447559

`p?[lt[A008472(n+1)+A000265(n+1), n]]`
-/

namespace A034849.P12394986893135447559
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) + A000265 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A034849.P12394986893135447559

namespace A034849

/-- `p?[lt[A008472(n+1)+A000265(n+1), n]]` -/
def P12394986893135447559.Spec : Prop :=
  ∀ n, (P12394986893135447559.a n : ℤ) = A034849 (n + 1)

end A034849

/-! ## A034849.P17821508008262239921

`p?[lt[A020639(n+3), A001222(n+1)]]`
-/

namespace A034849.P17821508008262239921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A034849.P17821508008262239921

namespace A034849

/-- `p?[lt[A020639(n+3), A001222(n+1)]]` -/
def P17821508008262239921.Spec : Prop :=
  ∀ n, (P17821508008262239921.a n : ℤ) = A034849 (n + 1)

end A034849

/-! ## A034849.P16003463629619684165

`p?[Δ[A051352(n)]+n]`
-/

namespace A034849.P16003463629619684165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051352 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034849.P16003463629619684165

namespace A034849

/-- `p?[Δ[A051352(n)]+n]` -/
def P16003463629619684165.Spec : Prop :=
  ∀ n, P16003463629619684165.a n = A034849 (n + 1)

end A034849

/-! ## A034849.P9632949396881408202

`p?[A014683(n+1)+n]`
-/

namespace A034849.P9632949396881408202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014683 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034849.P9632949396881408202

namespace A034849

/-- `p?[A014683(n+1)+n]` -/
def P9632949396881408202.Spec : Prop :=
  ∀ n, P9632949396881408202.a n = A034849 (n + 1)

end A034849

/-! ## A034849.P651193653158657878

`p?[A014685(n+1)+n]`
-/

namespace A034849.P651193653158657878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014685 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034849.P651193653158657878

namespace A034849

/-- `p?[A014685(n+1)+n]` -/
def P651193653158657878.Spec : Prop :=
  ∀ n, P651193653158657878.a n = A034849 (n + 1)

end A034849

/-! ## A034849.P1803684963234983075

`p?[Δ[A230980(n)+n²]]`
-/

namespace A034849.P1803684963234983075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n + (n ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034849.P1803684963234983075

namespace A034849

/-- `p?[Δ[A230980(n)+n²]]` -/
def P1803684963234983075.Spec : Prop :=
  ∀ n, P1803684963234983075.a n = A034849 (n + 1)

end A034849

/-! ## A034849.P5338443096135370778

`A033465(A034784(n+1))`
-/

namespace A034849.P5338443096135370778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033465 (A034784 (n + 1)).toNat

end

end A034849.P5338443096135370778

namespace A034849

/-- `A033465(A034784(n+1))` -/
def P5338443096135370778.Spec : Prop :=
  ∀ n, P5338443096135370778.a n = A034849 (n + 1)

end A034849

/-! ## A034849.P8276753979169485848

`A004273(A174166(n+1))`
-/

namespace A034849.P8276753979169485848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A174166 (n + 1)).toNat

end

end A034849.P8276753979169485848

namespace A034849

/-- `A004273(A174166(n+1))` -/
def P8276753979169485848.Spec : Prop :=
  ∀ n, P8276753979169485848.a n = A034849 (n + 1)

end A034849

/-!
# A034850: Triangular array formed by taking every other term of Pascal's triangle.

The programs for A034850, the canonical program `A034850.P10226397851639003888` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034850 has offset 0).

The definition of A034850 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A034850.P10226397851639003888

`A007318(2*n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A034850

/-- `A007318(2*n)` -/
def P10226397851639003888.Spec : Prop :=
  ∀ n, P10226397851639003888.a n = A034850 n

theorem P10226397851639003888.correct : P10226397851639003888.Spec := by
  intro n
  simp only [A034850]

end A034850

/-! ## A034850.P7229540123234172707

`A028326(2*n)/2`
-/

namespace A034850.P7229540123234172707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 (2 * n) : ℚ) / 2

end

end A034850.P7229540123234172707

namespace A034850

/-- `A028326(2*n)/2` -/
def P7229540123234172707.Spec : Prop :=
  ∀ n, P7229540123234172707.a n = (A034850 n : ℚ)

end A034850

/-! ## A034850.P4174165216989722172

`ceil(A109128(2*n)/2)`
-/

namespace A034850.P4174165216989722172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A109128 (2 * n) : ℚ) / 2⌉

end

end A034850.P4174165216989722172

namespace A034850

/-- `ceil(A109128(2*n)/2)` -/
def P4174165216989722172.Spec : Prop :=
  ∀ n, P4174165216989722172.a n = A034850 n

end A034850

/-! ## A034850.P16616986342156136389

`ceil(A124927(2*n)/2)`
-/

namespace A034850.P16616986342156136389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A124927 (2 * n) : ℚ) / 2⌉

end

end A034850.P16616986342156136389

namespace A034850

/-- `ceil(A124927(2*n)/2)` -/
def P16616986342156136389.Spec : Prop :=
  ∀ n, P16616986342156136389.a n = A034850 n

end A034850

/-! ## A034850.P2665092927172498651

`A028263(2*n)-A014410(2*(n+1))`
-/

namespace A034850.P2665092927172498651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028263 (2 * n) - A014410 (2 * (n + 1))

end

end A034850.P2665092927172498651

namespace A034850

/-- `A028263(2*n)-A014410(2*(n+1))` -/
def P2665092927172498651.Spec : Prop :=
  ∀ n, P2665092927172498651.a n = A034850 n

end A034850

/-! ## A034850.P5894127065170040466

`A285118(2*n)+A285116(2*n)`
-/

namespace A034850.P5894127065170040466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285118 (2 * n) + A285116 (2 * n)

end

end A034850.P5894127065170040466

namespace A034850

/-- `A285118(2*n)+A285116(2*n)` -/
def P5894127065170040466.Spec : Prop :=
  ∀ n, P5894127065170040466.a n = A034850 n

end A034850

/-! ## A034850.P4155970090885853094

`Δ[a(n-1)+A007318(n-2+n)]` with `a(0)=1`
-/

namespace A034850.P4155970090885853094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + A007318 ((n : ℤ) - 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034850.P4155970090885853094

namespace A034850

/-- `Δ[a(n-1)+A007318(n-2+n)]` -/
def P4155970090885853094.Spec : Prop :=
  ∀ n, P4155970090885853094.a n = A034850 n

end A034850

/-! ## A034850.P15411637990428162353

`gcd(A007318(A005843(n)), A130706(n))`
-/

namespace A034850.P15411637990428162353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007318 (A005843 n).toNat) (A130706 n)

end

end A034850.P15411637990428162353

namespace A034850

/-- `gcd(A007318(A005843(n)), A130706(n))` -/
def P15411637990428162353.Spec : Prop :=
  ∀ n, (P15411637990428162353.a n : ℤ) = A034850 n

end A034850

/-! ## A034850.P10757018255770487252

`lcm(A007318(A005843(n)), A057077(n))`
-/

namespace A034850.P10757018255770487252
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 (A005843 n).toNat) (A057077 n)

end

end A034850.P10757018255770487252

namespace A034850

/-- `lcm(A007318(A005843(n)), A057077(n))` -/
def P10757018255770487252.Spec : Prop :=
  ∀ n, (P10757018255770487252.a n : ℤ) = A034850 n

end A034850

/-! ## A034850.P11972029918634933975

`or(A007318(A004277(n)), A000007(n))`
-/

namespace A034850.P11972029918634933975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007318 (A004277 n).toNat) (A000007 n)

end

end A034850.P11972029918634933975

namespace A034850

/-- `or(A007318(A004277(n)), A000007(n))` -/
def P11972029918634933975.Spec : Prop :=
  ∀ n, P11972029918634933975.a n = A034850 n

end A034850

/-! ## A034850.P10339244325786435056

`A000007(n+2)+A007318(A004277(n))`
-/

namespace A034850.P10339244325786435056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 2) + A007318 (A004277 n).toNat

end

end A034850.P10339244325786435056

namespace A034850

/-- `A000007(n+2)+A007318(A004277(n))` -/
def P10339244325786435056.Spec : Prop :=
  ∀ n, P10339244325786435056.a n = A034850 n

end A034850

/-! ## A034850.P4839969327865971361

`A097805(2*n+1)+A097805(2*n)`
-/

namespace A034850.P4839969327865971361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (2 * n + 1) + A097805 (2 * n)

end

end A034850.P4839969327865971361

namespace A034850

/-- `A097805(2*n+1)+A097805(2*n)` -/
def P4839969327865971361.Spec : Prop :=
  ∀ n, P4839969327865971361.a n = A034850 n

end A034850

/-! ## A034850.P11693202761690155354

`A102363(2*n+1)-A102363(2*n)`
-/

namespace A034850.P11693202761690155354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (2 * n + 1) - A102363 (2 * n)

end

end A034850.P11693202761690155354

namespace A034850

/-- `A102363(2*n+1)-A102363(2*n)` -/
def P11693202761690155354.Spec : Prop :=
  ∀ n, P11693202761690155354.a n = A034850 n

end A034850

/-! ## A034850.P2594435175605910868

`ceil(sqrt(A141596(2*n))/2)`
-/

namespace A034850.P2594435175605910868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A141596 (2 * n) : ℝ) / 2⌉

end

end A034850.P2594435175605910868

namespace A034850

/-- `ceil(sqrt(A141596(2*n))/2)` -/
def P2594435175605910868.Spec : Prop :=
  ∀ n, P2594435175605910868.a n = A034850 n

end A034850

/-! ## A034850.P4924790118726710699

`A074909(2*n-A003056(2*n))`
-/

namespace A034850.P4924790118726710699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 ((2 * n : ℤ) - A003056 (2 * n)).toNat

end

end A034850.P4924790118726710699

namespace A034850

/-- `A074909(2*n-A003056(2*n))` -/
def P4924790118726710699.Spec : Prop :=
  ∀ n, P4924790118726710699.a n = A034850 n

end A034850

/-! ## A034850.P13092011434010269205

`abs(A108086(2*n))`
-/

namespace A034850.P13092011434010269205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 (2 * n)|

end

end A034850.P13092011434010269205

namespace A034850

/-- `abs(A108086(2*n))` -/
def P13092011434010269205.Spec : Prop :=
  ∀ n, P13092011434010269205.a n = A034850 n

end A034850

/-! ## A034850.P3729648878177800726

`abs(A117440(2*n))`
-/

namespace A034850.P3729648878177800726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117440 (2 * n)|

end

end A034850.P3729648878177800726

namespace A034850

/-- `abs(A117440(2*n))` -/
def P3729648878177800726.Spec : Prop :=
  ∀ n, P3729648878177800726.a n = A034850 n

end A034850

/-! ## A034850.P200039374815856132

`abs(A130595(2*n))`
-/

namespace A034850.P200039374815856132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 (2 * n)|

end

end A034850.P200039374815856132

namespace A034850

/-- `abs(A130595(2*n))` -/
def P200039374815856132.Spec : Prop :=
  ∀ n, P200039374815856132.a n = A034850 n

end A034850

/-! ## A034850.P10458244655271547586

`sqrt(A008459(2*n))`
-/

namespace A034850.P10458244655271547586
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 (2 * n) : ℝ)

end

end A034850.P10458244655271547586

namespace A034850

/-- `sqrt(A008459(2*n))` -/
def P10458244655271547586.Spec : Prop :=
  ∀ n, P10458244655271547586.a n = (A034850 n : ℝ)

end A034850

/-! ## A034850.P3666837111954965617

`A014473(2*n)+1`
-/

namespace A034850.P3666837111954965617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (2 * n) + 1

end

end A034850.P3666837111954965617

namespace A034850

/-- `A014473(2*n)+1` -/
def P3666837111954965617.Spec : Prop :=
  ∀ n, P3666837111954965617.a n = A034850 n

end A034850

/-!
# A034851: Rows of Losanitsch's triangle T(n, k), n >= 0, 0 <= k <= n.

The programs for A034851, the canonical program `A034851.P18187616370549822586` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034851 has offset 0).

The definition of A034851 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034851.P12199819943458943571

`A051159(n)+A034852(n)`
-/

namespace A034851.P12199819943458943571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 n + A034852 n

end

end A034851.P12199819943458943571

namespace A034851

/-- `A051159(n)+A034852(n)` -/
def P12199819943458943571.Spec : Prop :=
  ∀ n, P12199819943458943571.a n = A034851 n

end A034851

/-! ## A034851.P9439379803175646944

`A007318(n)-A034852(n)`
-/

namespace A034851.P9439379803175646944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A034852 n

end

end A034851.P9439379803175646944

namespace A034851

/-- `A007318(n)-A034852(n)` -/
def P9439379803175646944.Spec : Prop :=
  ∀ n, P9439379803175646944.a n = A034851 n

end A034851

/-! ## A034851.P13837694192961616432

`A028326(n)-A136482(n)`
-/

namespace A034851.P13837694192961616432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A136482 n

end

end A034851.P13837694192961616432

namespace A034851

/-- `A028326(n)-A136482(n)` -/
def P13837694192961616432.Spec : Prop :=
  ∀ n, P13837694192961616432.a n = A034851 n

end A034851

/-! ## A034851.P10955572842175024678

`abs(A108086(n))-A034852(n)`
-/

namespace A034851.P10955572842175024678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n| - A034852 n

end

end A034851.P10955572842175024678

namespace A034851

/-- `abs(A108086(n))-A034852(n)` -/
def P10955572842175024678.Spec : Prop :=
  ∀ n, P10955572842175024678.a n = A034851 n

end A034851

/-! ## A034851.P520367374500738181

`abs(A130595(n))-A034852(n)`
-/

namespace A034851.P520367374500738181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n| - A034852 n

end

end A034851.P520367374500738181

namespace A034851

/-- `abs(A130595(n))-A034852(n)` -/
def P520367374500738181.Spec : Prop :=
  ∀ n, P520367374500738181.a n = A034851 n

end A034851

/-! ## A034851.P14120411969012765086

`sqrt(A008459(n))-A034852(n)`
-/

namespace A034851.P14120411969012765086
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) - (A034852 n : ℝ)

end

end A034851.P14120411969012765086

namespace A034851

/-- `sqrt(A008459(n))-A034852(n)` -/
def P14120411969012765086.Spec : Prop :=
  ∀ n, P14120411969012765086.a n = (A034851 n : ℝ)

end A034851

/-! ## A034851.P8575516528874773868

`Δ[A102363(n)]-A034852(n)`
-/

namespace A034851.P8575516528874773868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A034852 n

end

end A034851.P8575516528874773868

namespace A034851

/-- `Δ[A102363(n)]-A034852(n)` -/
def P8575516528874773868.Spec : Prop :=
  ∀ n, P8575516528874773868.a n = A034851 n

end A034851

/-! ## A034851.P15278863537686089309

`A014473(n)+1-A034852(n)`
-/

namespace A034851.P15278863537686089309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + (1 - A034852 n)

end

end A034851.P15278863537686089309

namespace A034851

/-- `A014473(n)+1-A034852(n)` -/
def P15278863537686089309.Spec : Prop :=
  ∀ n, P15278863537686089309.a n = A034851 n

end A034851

/-! ## A034851.P18187616370549822586

`(A051159(n)+A007318(n))/2`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A034851

/-- `(A051159(n)+A007318(n))/2` -/
def P18187616370549822586.Spec : Prop :=
  ∀ n, P18187616370549822586.a n = (A034851 n : ℚ)

end A034851

/-! ## A034851.P16259917846895693036

`2*A007318(n)-A136482(n)`
-/

namespace A034851.P16259917846895693036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A136482 n

end

end A034851.P16259917846895693036

namespace A034851

/-- `2*A007318(n)-A136482(n)` -/
def P16259917846895693036.Spec : Prop :=
  ∀ n, P16259917846895693036.a n = A034851 n

end A034851

/-! ## A034851.P2496141684268737615

`A136482(n)-2*A034852(n)`
-/

namespace A034851.P2496141684268737615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136482 n - 2 * A034852 n

end

end A034851.P2496141684268737615

namespace A034851

/-- `A136482(n)-2*A034852(n)` -/
def P2496141684268737615.Spec : Prop :=
  ∀ n, P2496141684268737615.a n = A034851 n

end A034851

/-! ## A034851.P2916662615087099658

`A028326(n)/2-A034852(n)`
-/

namespace A034851.P2916662615087099658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 - (A034852 n : ℚ)

end

end A034851.P2916662615087099658

namespace A034851

/-- `A028326(n)/2-A034852(n)` -/
def P2916662615087099658.Spec : Prop :=
  ∀ n, P2916662615087099658.a n = (A034851 n : ℚ)

end A034851

/-! ## A034851.P15458200899473663191

`A134059(A028310(n))/3-A034852(n)`
-/

namespace A034851.P15458200899473663191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134059 (A028310 n).toNat : ℚ) / 3 - (A034852 n : ℚ)

end

end A034851.P15458200899473663191

namespace A034851

/-- `A134059(A028310(n))/3-A034852(n)` -/
def P15458200899473663191.Spec : Prop :=
  ∀ n, P15458200899473663191.a n = (A034851 n : ℚ)

end A034851

/-! ## A034851.P7832874775943279162

`A051159(n)+A136482(n)-A007318(n)`
-/

namespace A034851.P7832874775943279162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 n + (A136482 n - A007318 n)

end

end A034851.P7832874775943279162

namespace A034851

/-- `A051159(n)+A136482(n)-A007318(n)` -/
def P7832874775943279162.Spec : Prop :=
  ∀ n, P7832874775943279162.a n = A034851 n

end A034851

/-! ## A034851.P5520062616626831654

`A051159(n)+A136489(n)-A136482(n)`
-/

namespace A034851.P5520062616626831654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 n + (A136489 n - A136482 n)

end

end A034851.P5520062616626831654

namespace A034851

/-- `A051159(n)+A136489(n)-A136482(n)` -/
def P5520062616626831654.Spec : Prop :=
  ∀ n, P5520062616626831654.a n = A034851 n

end A034851

/-! ## A034851.P9142078543030953725

`A007318(n)-(A136489(n)-A136482(n))`
-/

namespace A034851.P9142078543030953725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - (A136489 n - A136482 n)

end

end A034851.P9142078543030953725

namespace A034851

/-- `A007318(n)-(A136489(n)-A136482(n))` -/
def P9142078543030953725.Spec : Prop :=
  ∀ n, P9142078543030953725.a n = A034851 n

end A034851

/-! ## A034851.P14734270063191621155

`gcd(A124927(n), A124928(n))-A034852(n)`
-/

namespace A034851.P14734270063191621155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A124927 n) (A124928 n) : ℤ) - A034852 n

end

end A034851.P14734270063191621155

namespace A034851

/-- `gcd(A124927(n), A124928(n))-A034852(n)` -/
def P14734270063191621155.Spec : Prop :=
  ∀ n, P14734270063191621155.a n = A034851 n

end A034851

/-! ## A034851.P13064628117226265678

`C(A003056(n), A103823(n))-A034852(n)`
-/

namespace A034851.P13064628117226265678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A003056 n).toNat (A103823 n).toNat : ℤ) - A034852 n

end

end A034851.P13064628117226265678

namespace A034851

/-- `C(A003056(n), A103823(n))-A034852(n)` -/
def P13064628117226265678.Spec : Prop :=
  ∀ n, P13064628117226265678.a n = A034851 n

end A034851

/-! ## A034851.P10683267226561424286

`A097805(n+1)+A097805(n)-A034852(n)`
-/

namespace A034851.P10683267226561424286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (n + 1) + A097805 n - A034852 n

end

end A034851.P10683267226561424286

namespace A034851

/-- `A097805(n+1)+A097805(n)-A034852(n)` -/
def P10683267226561424286.Spec : Prop :=
  ∀ n, P10683267226561424286.a n = A034851 n

end A034851

/-! ## A034851.P14150025680853819919

`gcd(A091917(n), A176348(n))-A034852(n)`
-/

namespace A034851.P14150025680853819919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A091917 n) (A176348 n) : ℤ) - A034852 n

end

end A034851.P14150025680853819919

namespace A034851

/-- `gcd(A091917(n), A176348(n))-A034852(n)` -/
def P14150025680853819919.Spec : Prop :=
  ∀ n, P14150025680853819919.a n = A034851 n

end A034851

/-!
# A034852: Rows of (Pascal's triangle - Losanitsch's triangle) (n >= 0, k >= 0).

The programs for A034852, the canonical program `A034852.P3004687004049579186` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034852 has offset 0).

The definition of A034852 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034852.P3004687004049579186

`A007318(n)-A034851(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A034852

/-- `A007318(n)-A034851(n)` -/
def P3004687004049579186.Spec : Prop :=
  ∀ n, P3004687004049579186.a n = A034852 n

theorem P3004687004049579186.correct : P3004687004049579186.Spec := by
  intro n
  simp only [A034852]

end A034852

/-! ## A034852.P5865867444682449939

`A034851(n)-A051159(n)`
-/

namespace A034852.P5865867444682449939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 n - A051159 n

end

end A034852.P5865867444682449939

namespace A034852

/-- `A034851(n)-A051159(n)` -/
def P5865867444682449939.Spec : Prop :=
  ∀ n, P5865867444682449939.a n = A034852 n

end A034852

/-! ## A034852.P6574728589256912658

`A136482(n)-A007318(n)`
-/

namespace A034852.P6574728589256912658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136482 n - A007318 n

end

end A034852.P6574728589256912658

namespace A034852

/-- `A136482(n)-A007318(n)` -/
def P6574728589256912658.Spec : Prop :=
  ∀ n, P6574728589256912658.a n = A034852 n

end A034852

/-! ## A034852.P4173373055362478286

`A136489(n)-A136482(n)`
-/

namespace A034852.P4173373055362478286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136489 n - A136482 n

end

end A034852.P4173373055362478286

namespace A034852

/-- `A136489(n)-A136482(n)` -/
def P4173373055362478286.Spec : Prop :=
  ∀ n, P4173373055362478286.a n = A034852 n

end A034852

/-! ## A034852.P13127578089575755330

`abs(A108086(n))-A034851(n)`
-/

namespace A034852.P13127578089575755330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n| - A034851 n

end

end A034852.P13127578089575755330

namespace A034852

/-- `abs(A108086(n))-A034851(n)` -/
def P13127578089575755330.Spec : Prop :=
  ∀ n, P13127578089575755330.a n = A034852 n

end A034852

/-! ## A034852.P8308606210784165336

`abs(A130595(n))-A034851(n)`
-/

namespace A034852.P8308606210784165336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n| - A034851 n

end

end A034852.P8308606210784165336

namespace A034852

/-- `abs(A130595(n))-A034851(n)` -/
def P8308606210784165336.Spec : Prop :=
  ∀ n, P8308606210784165336.a n = A034852 n

end A034852

/-! ## A034852.P15706448732276253939

`Δ[A102363(n)]-A034851(n)`
-/

namespace A034852.P15706448732276253939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A034851 n

end

end A034852.P15706448732276253939

namespace A034852

/-- `Δ[A102363(n)]-A034851(n)` -/
def P15706448732276253939.Spec : Prop :=
  ∀ n, P15706448732276253939.a n = A034852 n

end A034852

/-! ## A034852.P16572411545601073929

`A014473(n)+1-A034851(n)`
-/

namespace A034852.P16572411545601073929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + (1 - A034851 n)

end

end A034852.P16572411545601073929

namespace A034852

/-- `A014473(n)+1-A034851(n)` -/
def P16572411545601073929.Spec : Prop :=
  ∀ n, P16572411545601073929.a n = A034852 n

end A034852

/-! ## A034852.P481861174652717680

`(A007318(n)-A051159(n))/2`
-/

namespace A034852.P481861174652717680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n - A051159 n : ℚ) / 2

end

end A034852.P481861174652717680

namespace A034852

/-- `(A007318(n)-A051159(n))/2` -/
def P481861174652717680.Spec : Prop :=
  ∀ n, P481861174652717680.a n = (A034852 n : ℚ)

end A034852

/-! ## A034852.P1535886452524769453

`A028326(n)/2-A034851(n)`
-/

namespace A034852.P1535886452524769453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 - (A034851 n : ℚ)

end

end A034852.P1535886452524769453

namespace A034852

/-- `A028326(n)/2-A034851(n)` -/
def P1535886452524769453.Spec : Prop :=
  ∀ n, P1535886452524769453.a n = (A034852 n : ℚ)

end A034852

/-! ## A034852.P12238860620927020943

`(A136489(n)-A007318(n))/2`
-/

namespace A034852.P12238860620927020943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136489 n - A007318 n : ℚ) / 2

end

end A034852.P12238860620927020943

namespace A034852

/-- `(A136489(n)-A007318(n))/2` -/
def P12238860620927020943.Spec : Prop :=
  ∀ n, P12238860620927020943.a n = (A034852 n : ℚ)

end A034852

/-! ## A034852.P8111880945549899240

`A136482(n)-A028326(n)/2`
-/

namespace A034852.P8111880945549899240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136482 n : ℚ) - (A028326 n : ℚ) / 2

end

end A034852.P8111880945549899240

namespace A034852

/-- `A136482(n)-A028326(n)/2` -/
def P8111880945549899240.Spec : Prop :=
  ∀ n, P8111880945549899240.a n = (A034852 n : ℚ)

end A034852

/-! ## A034852.P282481732905394055

`(A136482(n)-A034851(n))/2`
-/

namespace A034852.P282481732905394055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136482 n - A034851 n : ℚ) / 2

end

end A034852.P282481732905394055

namespace A034852

/-- `(A136482(n)-A034851(n))/2` -/
def P282481732905394055.Spec : Prop :=
  ∀ n, P282481732905394055.a n = (A034852 n : ℚ)

end A034852

/-! ## A034852.P14596883235520969390

`A134059(A028310(n))/3-A034851(n)`
-/

namespace A034852.P14596883235520969390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134059 (A028310 n).toNat : ℚ) / 3 - (A034851 n : ℚ)

end

end A034852.P14596883235520969390

namespace A034852

/-- `A134059(A028310(n))/3-A034851(n)` -/
def P14596883235520969390.Spec : Prop :=
  ∀ n, P14596883235520969390.a n = (A034852 n : ℚ)

end A034852

/-! ## A034852.P9159503651304818446

`gcd(A124927(n), A124928(n))-A034851(n)`
-/

namespace A034852.P9159503651304818446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A124927 n) (A124928 n) : ℤ) - A034851 n

end

end A034852.P9159503651304818446

namespace A034852

/-- `gcd(A124927(n), A124928(n))-A034851(n)` -/
def P9159503651304818446.Spec : Prop :=
  ∀ n, P9159503651304818446.a n = A034852 n

end A034852

/-! ## A034852.P7161180610133946997

`A176348(n)/A176346(n)-A034851(n)`
-/

namespace A034852.P7161180610133946997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176348 n : ℚ) / (A176346 n : ℚ) - (A034851 n : ℚ)

end

end A034852.P7161180610133946997

namespace A034852

/-- `A176348(n)/A176346(n)-A034851(n)` -/
def P7161180610133946997.Spec : Prop :=
  ∀ n, P7161180610133946997.a n = (A034852 n : ℚ)

end A034852

/-! ## A034852.P13769967536184685591

`gcd(A091917(n), A176348(n))-A034851(n)`
-/

namespace A034852.P13769967536184685591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A091917 n) (A176348 n) : ℤ) - A034851 n

end

end A034852.P13769967536184685591

namespace A034852

/-- `gcd(A091917(n), A176348(n))-A034851(n)` -/
def P13769967536184685591.Spec : Prop :=
  ∀ n, P13769967536184685591.a n = A034852 n

end A034852

/-!
# A034853: Triangle giving number of trees with n >= 3 nodes and diameter d >= 2.

The programs for A034853, there is no canonical definition to state claims against.
-/

/-! ## A034853.P17338197484452770764

`A276167(A331278(n))+A034851(n)-char[18]`
-/

namespace A034853.P17338197484452770764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276167 (A331278 n).toNat + A034851 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A034853.P17338197484452770764

/-! ## A034853.P11996620070715813797

`A242093(n)+A240467(A027365(3*(n+1)))`
-/

namespace A034853.P11996620070715813797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242093 n + A240467 (A027365 (3 * (n + 1))).toNat

end

end A034853.P11996620070715813797

/-! ## A034853.P10909029075265315601

`A005097(A034851(n)%A097460(n+1))-char[18]`
-/

namespace A034853.P10909029075265315601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (Int.tmod (A034851 n) (A097460 (n + 1))).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A034853.P10909029075265315601

/-! ## A034853.P1144005609611297034

`A242093(n)-A240467(A241956(2*n+5))`
-/

namespace A034853.P1144005609611297034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242093 n - A240467 (A241956 (2 * n + 5)).toNat

end

end A034853.P1144005609611297034

/-! ## A034853.P2335559846152382008

`A242093(n)+A010815(A001567(n+1))`
-/

namespace A034853.P2335559846152382008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242093 n + A010815 (A001567 (n + 1)).toNat

end

end A034853.P2335559846152382008

/-!
# A034855: Triangle read by rows giving number of rooted labeled trees with n >= 2 nodes and height d >= 1.

The programs for A034855, there is no canonical definition to state claims against.
-/

/-! ## A034855.P12596456359624113675

`A003057(n+2)*A235595(n+2)`
-/

namespace A034855.P12596456359624113675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) * A235595 (n + 2)

end

end A034855.P12596456359624113675

/-! ## A034855.P8647072703766848309

`(A003056(n)+2)*A235595(n+2)`
-/

namespace A034855.P8647072703766848309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003056 n + 2) * A235595 (n + 2)

end

end A034855.P8647072703766848309

/-! ## A034855.P16504795874068959625

`(A002024(n+1)+1)*A235595(n+2)`
-/

namespace A034855.P16504795874068959625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) + 1) * A235595 (n + 2)

end

end A034855.P16504795874068959625

/-! ## A034855.P17852930693664946427

`(A014132(n+1)-n)*A235595(n+2)`
-/

namespace A034855.P17852930693664946427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014132 (n + 1) - (n : ℤ)) * A235595 (n + 2)

end

end A034855.P17852930693664946427

/-! ## A034855.P17494302246429400772

`A002024(A014132(n+1))*A235595(n+2)`
-/

namespace A034855.P17494302246429400772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A014132 (n + 1)).toNat * A235595 (n + 2)

end

end A034855.P17494302246429400772

/-! ## A034855.P14039628677124096834

`(A004736(n+1)+A002260(n+1))*A235595(n+2)`
-/

namespace A034855.P14039628677124096834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) + A002260 (n + 1)) * A235595 (n + 2)

end

end A034855.P14039628677124096834

/-!
# A034856: a(n) = binomial(n+1, 2) + n - 1 = n*(n+3)/2 - 1.

The programs for A034856, the canonical program `A034856.P2565088395744470160` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034856 has offset 1).

The definition of A034856 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034856.P2565088395744470160

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=8`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A034856

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P2565088395744470160.Spec : Prop :=
  ∀ n, P2565088395744470160.a n = A034856 (n + 1)

theorem P2565088395744470160.correct : P2565088395744470160.Spec := by
  intro n
  simp only [A034856, Nat.add_sub_cancel]

end A034856

/-! ## A034856.P15836569035844471026

`A024916(n+1)-A244049(n+1)`
-/

namespace A034856.P15836569035844471026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) - A244049 (n + 1)

end

end A034856.P15836569035844471026

namespace A034856

/-- `A024916(n+1)-A244049(n+1)` -/
def P15836569035844471026.Spec : Prop :=
  ∀ n, P15836569035844471026.a n = A034856 (n + 1)

end A034856

/-! ## A034856.P2439137381287235363

`A024206(n+1)+A024206(n+2)`
-/

namespace A034856.P2439137381287235363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024206 (n + 1) + A024206 (n + 2)

end

end A034856.P2439137381287235363

namespace A034856

/-- `A024206(n+1)+A024206(n+2)` -/
def P2439137381287235363.Spec : Prop :=
  ∀ n, P2439137381287235363.a n = A034856 (n + 1)

end A034856

/-! ## A034856.P3949731570341301431

`A101881(2*n)`
-/

namespace A034856.P3949731570341301431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101881 (2 * n)

end

end A034856.P3949731570341301431

namespace A034856

/-- `A101881(2*n)` -/
def P3949731570341301431.Spec : Prop :=
  ∀ n, P3949731570341301431.a n = A034856 (n + 1)

end A034856

/-! ## A034856.P15497600547640760204

`∑[n+2]-1`
-/

namespace A034856.P15497600547640760204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A034856.P15497600547640760204

namespace A034856

/-- `∑[n+2]-1` -/
def P15497600547640760204.Spec : Prop :=
  ∀ n, P15497600547640760204.a n = A034856 (n + 1)

end A034856

/-! ## A034856.P14444769102598101631

`abs(2-C(n+3, 2))`
-/

namespace A034856.P14444769102598101631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (Nat.choose (n + 3) 2 : ℤ)|

end

end A034856.P14444769102598101631

namespace A034856

/-- `abs(2-C(n+3, 2))` -/
def P14444769102598101631.Spec : Prop :=
  ∀ n, P14444769102598101631.a n = A034856 (n + 1)

end A034856

/-! ## A034856.P16743968268488561604

`xor(-1, ∑[-(n+2)])`
-/

namespace A034856.P16743968268488561604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A034856.P16743968268488561604

namespace A034856

/-- `xor(-1, ∑[-(n+2)])` -/
def P16743968268488561604.Spec : Prop :=
  ∀ n, P16743968268488561604.a n = A034856 (n + 1)

end A034856

/-! ## A034856.P3878717514540960117

`floor(cot(1/∑[n+2]))`
-/

namespace A034856.P3878717514540960117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (1 / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) : ℝ)⌋

end

end A034856.P3878717514540960117

namespace A034856

/-- `floor(cot(1/∑[n+2]))` -/
def P3878717514540960117.Spec : Prop :=
  ∀ n, P3878717514540960117.a n = A034856 (n + 1)

end A034856

/-! ## A034856.P16558659037097153459

`floor(∑[tanh(6)+n+1])`
-/

namespace A034856.P16558659037097153459
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tanh (6 : ℝ) + (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A034856.P16558659037097153459

namespace A034856

/-- `floor(∑[tanh(6)+n+1])` -/
def P16558659037097153459.Spec : Prop :=
  ∀ n, P16558659037097153459.a n = A034856 (n + 1)

end A034856

/-! ## A034856.P17617976622236871109

`∑[ceil(root(n+1, tanh(7)))]`
-/

namespace A034856.P17617976622236871109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) ^ (1 / Real.tanh (7 : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034856.P17617976622236871109

namespace A034856

/-- `∑[ceil(root(n+1, tanh(7)))]` -/
def P17617976622236871109.Spec : Prop :=
  ∀ n, P17617976622236871109.a n = A034856 (n + 1)

end A034856

/-! ## A034856.P15133894310782756800

`∑[ceil(atan(n+1)+n)]`
-/

namespace A034856.P15133894310782756800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n + 1 : ℝ) + (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034856.P15133894310782756800

namespace A034856

/-- `∑[ceil(atan(n+1)+n)]` -/
def P15133894310782756800.Spec : Prop :=
  ∀ n, P15133894310782756800.a n = A034856 (n + 1)

end A034856

/-! ## A034856.P9410843799047802415

`∑[2-floor(acot(n)-n)]`
-/

namespace A034856.P9410843799047802415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ⌊SequenceMachineLib.acot (n : ℝ) - (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034856.P9410843799047802415

namespace A034856

/-- `∑[2-floor(acot(n)-n)]` -/
def P9410843799047802415.Spec : Prop :=
  ∀ n, P9410843799047802415.a n = A034856 (n + 1)

end A034856

/-! ## A034856.P11109915719270541195

`∑[ceil(n-(acot(n)-2))]`
-/

namespace A034856.P11109915719270541195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) - (SequenceMachineLib.acot (n : ℝ) - 2)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034856.P11109915719270541195

namespace A034856

/-- `∑[ceil(n-(acot(n)-2))]` -/
def P11109915719270541195.Spec : Prop :=
  ∀ n, P11109915719270541195.a n = A034856 (n + 1)

end A034856

/-! ## A034856.P7499052425610976702

`∑[2/ceil(acot(n))+n]`
-/

namespace A034856.P7499052425610976702
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℚ) + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034856.P7499052425610976702

namespace A034856

/-- `∑[2/ceil(acot(n))+n]` -/
def P7499052425610976702.Spec : Prop :=
  ∀ n, P7499052425610976702.a n = (A034856 (n + 1) : ℚ)

end A034856

/-! ## A034856.P10269908585775100632

`∑[gcd(2, floor(acot(n)))+n]`
-/

namespace A034856.P10269908585775100632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 ⌊SequenceMachineLib.acot (n : ℝ)⌋ + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034856.P10269908585775100632

namespace A034856

/-- `∑[gcd(2, floor(acot(n)))+n]` -/
def P10269908585775100632.Spec : Prop :=
  ∀ n, (P10269908585775100632.a n : ℤ) = A034856 (n + 1)

end A034856

/-! ## A034856.P4254398710873090514

`∑[C(n+2, ceil(acot(n)))]`
-/

namespace A034856.P4254398710873090514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) ⌈SequenceMachineLib.acot (n : ℝ)⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034856.P4254398710873090514

namespace A034856

/-- `∑[C(n+2, ceil(acot(n)))]` -/
def P4254398710873090514.Spec : Prop :=
  ∀ n, (P4254398710873090514.a n : ℤ) = A034856 (n + 1)

end A034856

/-! ## A034856.P3183508360420004752

`∑[round(∑[ratio[atan(n+1)]])]`
-/

namespace A034856.P3183508360420004752
noncomputable section

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n + 1 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) / f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034856.P3183508360420004752

namespace A034856

/-- `∑[round(∑[ratio[atan(n+1)]])]` -/
def P3183508360420004752.Spec : Prop :=
  ∀ n, P3183508360420004752.a n = A034856 (n + 1)

end A034856

/-! ## A034856.P8547812221817051214

`floor(tan(acos(acot(∑[n+2]))))`
-/

namespace A034856.P8547812221817051214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (Real.arccos (SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)))⌋

end

end A034856.P8547812221817051214

namespace A034856

/-- `floor(tan(acos(acot(∑[n+2]))))` -/
def P8547812221817051214.Spec : Prop :=
  ∀ n, P8547812221817051214.a n = A034856 (n + 1)

end A034856

/-! ## A034856.P16669969406908149958

`∑[floor(∑[acot(n²)]+n)]`
-/

namespace A034856.P16669969406908149958
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n ^ 2 : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j + (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034856.P16669969406908149958

namespace A034856

/-- `∑[floor(∑[acot(n²)]+n)]` -/
def P16669969406908149958.Spec : Prop :=
  ∀ n, P16669969406908149958.a n = A034856 (n + 1)

end A034856

/-! ## A034856.P9700553554622836245

`∑[ceil(acot(acot(n)²)+n)]`
-/

namespace A034856.P9700553554622836245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (SequenceMachineLib.acot (n : ℝ) ^ 2) + (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034856.P9700553554622836245

namespace A034856

/-- `∑[ceil(acot(acot(n)²)+n)]` -/
def P9700553554622836245.Spec : Prop :=
  ∀ n, P9700553554622836245.a n = A034856 (n + 1)

end A034856

/-!
# A034857: a(n) = C(n+2,3) + 2*C(n,2) + 2*(n-2).

The programs for A034857, the canonical program `A034857.P5782153790294962238` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034857 has offset 1).

The definition of A034857 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034857.P5782153790294962238

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=-1, a(1)=6, a(2)=18, a(3)=36`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A034857

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P5782153790294962238.Spec : Prop :=
  ∀ n, P5782153790294962238.a n = A034857 (n + 1)

theorem P5782153790294962238.correct : P5782153790294962238.Spec := by
  intro n
  simp only [A034857, Nat.add_sub_cancel]

end A034857

/-! ## A034857.P2708594652493086939

`∑[∑[n+3]]-4`
-/

namespace A034857.P2708594652493086939
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 4

end

end A034857.P2708594652493086939

namespace A034857

/-- `∑[∑[n+3]]-4` -/
def P2708594652493086939.Spec : Prop :=
  ∀ n, P2708594652493086939.a n = A034857 (n + 1)

end A034857

/-! ## A034857.P2093415039233252370

`∑[or(∑[n+3], A073097(2*n))]`
-/

namespace A034857.P2093415039233252370
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) (A073097 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034857.P2093415039233252370

namespace A034857

/-- `∑[or(∑[n+3], A073097(2*n))]` -/
def P2093415039233252370.Spec : Prop :=
  ∀ n, P2093415039233252370.a n = A034857 (n + 1)

end A034857

/-! ## A034857.P7090309808460259990

`ceil(A051943(n+9)-3*(n²-cos(2)))`
-/

namespace A034857.P7090309808460259990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A051943 (n + 9) : ℝ) - 3 * ((n ^ 2 : ℝ) - Real.cos (2 : ℝ))⌉

end

end A034857.P7090309808460259990

namespace A034857

/-- `ceil(A051943(n+9)-3*(n²-cos(2)))` -/
def P7090309808460259990.Spec : Prop :=
  ∀ n, P7090309808460259990.a n = A034857 (n + 1)

end A034857

/-! ## A034857.P306503193392189738

`Δ[A252814(n+1)-5*n]`
-/

namespace A034857.P306503193392189738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252814 (n + 1) - (5 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034857.P306503193392189738

namespace A034857

/-- `Δ[A252814(n+1)-5*n]` -/
def P306503193392189738.Spec : Prop :=
  ∀ n, P306503193392189738.a n = A034857 (n + 1)

end A034857

/-! ## A034857.P18020843509700925040

`Δ[A024191(n+1)-A023551(n+1)]`
-/

namespace A034857.P18020843509700925040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024191 (n + 1) - A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034857.P18020843509700925040

namespace A034857

/-- `Δ[A024191(n+1)-A023551(n+1)]` -/
def P18020843509700925040.Spec : Prop :=
  ∀ n, P18020843509700925040.a n = A034857 (n + 1)

end A034857

/-! ## A034857.P7428398162626881687

`Δ[A005712(n+2)-A000217(n+5)]`
-/

namespace A034857.P7428398162626881687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005712 (n + 2) - A000217 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034857.P7428398162626881687

namespace A034857

/-- `Δ[A005712(n+2)-A000217(n+5)]` -/
def P7428398162626881687.Spec : Prop :=
  ∀ n, P7428398162626881687.a n = A034857 (n + 1)

end A034857

/-! ## A034857.P10068579139555515333

`Δ[A005712(n+2)-Δ[A264443(n)]]`
-/

namespace A034857.P10068579139555515333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005712 (n + 2) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034857.P10068579139555515333

namespace A034857

/-- `Δ[A005712(n+2)-Δ[A264443(n)]]` -/
def P10068579139555515333.Spec : Prop :=
  ∀ n, P10068579139555515333.a n = A034857 (n + 1)

end A034857

/-! ## A034857.P12601880683770393589

`Δ[A005712(n+2)-Δ[A023545(n+1)]]`
-/

namespace A034857.P12601880683770393589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005712 (n + 2) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034857.P12601880683770393589

namespace A034857

/-- `Δ[A005712(n+2)-Δ[A023545(n+1)]]` -/
def P12601880683770393589.Spec : Prop :=
  ∀ n, P12601880683770393589.a n = A034857 (n + 1)

end A034857

/-! ## A034857.P511625802702064607

`Δ[A005712(n+2)-Δ[A051937(n+4)]]`
-/

namespace A034857.P511625802702064607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051937 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005712 (n + 2) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034857.P511625802702064607

namespace A034857

/-- `Δ[A005712(n+2)-Δ[A051937(n+4)]]` -/
def P511625802702064607.Spec : Prop :=
  ∀ n, P511625802702064607.a n = A034857 (n + 1)

end A034857

/-! ## A034857.P4321409482320922776

`record[A003600(n)-A016825(n)]`
-/

namespace A034857.P4321409482320922776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003600 n - A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034857.P4321409482320922776

namespace A034857

/-- `record[A003600(n)-A016825(n)]` -/
def P4321409482320922776.Spec : Prop :=
  ∀ n, P4321409482320922776.a n = A034857 (n + 1)

end A034857

/-! ## A034857.P3290277234993056480

`record[A005581(n)-A103517(n)]`
-/

namespace A034857.P3290277234993056480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 n - A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034857.P3290277234993056480

namespace A034857

/-- `record[A005581(n)-A103517(n)]` -/
def P3290277234993056480.Spec : Prop :=
  ∀ n, P3290277234993056480.a n = A034857 (n + 1)

end A034857

/-! ## A034857.P13744503086090410429

`Δ[A014309(n+2)-Δ[A014309(n+2)]]`
-/

namespace A034857.P13744503086090410429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014309 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014309 (n + 2) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034857.P13744503086090410429

namespace A034857

/-- `Δ[A014309(n+2)-Δ[A014309(n+2)]]` -/
def P13744503086090410429.Spec : Prop :=
  ∀ n, P13744503086090410429.a n = A034857 (n + 1)

end A034857

/-! ## A034857.P4725511906459359047

`Δ[A005712(n+2)-A046691(n+3)]`
-/

namespace A034857.P4725511906459359047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005712 (n + 2) - A046691 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034857.P4725511906459359047

namespace A034857

/-- `Δ[A005712(n+2)-A046691(n+3)]` -/
def P4725511906459359047.Spec : Prop :=
  ∀ n, P4725511906459359047.a n = A034857 (n + 1)

end A034857

/-! ## A034857.P9070019247733787151

`Δ[A005712(n+2)-A166136(n+4)]`
-/

namespace A034857.P9070019247733787151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005712 (n + 2) - A166136 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034857.P9070019247733787151

namespace A034857

/-- `Δ[A005712(n+2)-A166136(n+4)]` -/
def P9070019247733787151.Spec : Prop :=
  ∀ n, P9070019247733787151.a n = A034857 (n + 1)

end A034857

/-! ## A034857.P5958971510035609248

`Δ[A005712(n+2)-A000124(n+5)]`
-/

namespace A034857.P5958971510035609248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005712 (n + 2) - A000124 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034857.P5958971510035609248

namespace A034857

/-- `Δ[A005712(n+2)-A000124(n+5)]` -/
def P5958971510035609248.Spec : Prop :=
  ∀ n, P5958971510035609248.a n = A034857 (n + 1)

end A034857

/-! ## A034857.P8540409730321606621

`Δ[A014309(n+1)-eq[7, A099375(n)]]`
-/

namespace A034857.P8540409730321606621
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014309 (n + 1) - (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034857.P8540409730321606621

namespace A034857

/-- `Δ[A014309(n+1)-eq[7, A099375(n)]]` -/
def P8540409730321606621.Spec : Prop :=
  ∀ n, P8540409730321606621.a n = A034857 (n + 1)

end A034857

/-! ## A034857.P6647202781167461226

`(A006416(n+2)-2)*A101040(A075585(n+1))`
-/

namespace A034857.P6647202781167461226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006416 (n + 2) - 2) * A101040 (A075585 (n + 1)).toNat

end

end A034857.P6647202781167461226

namespace A034857

/-- `(A006416(n+2)-2)*A101040(A075585(n+1))` -/
def P6647202781167461226.Spec : Prop :=
  ∀ n, P6647202781167461226.a n = A034857 (n + 1)

end A034857

/-!
# A034858: a(n) = C(n+3,4) + 3*C(n+1,3) + 5*C(n-1,2) + 7*n - 15.

The programs for A034858, the canonical program `A034858.P3352529374065284499` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034858 has offset 2).

The definition of A034858 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034858.P3352529374065284499

`A111396(n)+∑[A111396(n)+7]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A034858

/-- `A111396(n)+∑[A111396(n)+7]` -/
def P3352529374065284499.Spec : Prop :=
  ∀ n, P3352529374065284499.a n = A034858 (n + 2)

theorem P3352529374065284499.correct : P3352529374065284499.Spec := by
  intro n
  simp only [A034858, Nat.add_sub_cancel]

end A034858

/-! ## A034858.P12072828802336616263

`∑[A055809(n+5)-1]-7`
-/

namespace A034858.P12072828802336616263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055809 (n + 5) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 7

end

end A034858.P12072828802336616263

namespace A034858

/-- `∑[A055809(n+5)-1]-7` -/
def P12072828802336616263.Spec : Prop :=
  ∀ n, P12072828802336616263.a n = A034858 (n + 2)

end A034858

/-! ## A034858.P11008099217658060906

`∑[A023545(n+2)]-A016777(n+3)`
-/

namespace A034858.P11008099217658060906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A016777 (n + 3)

end

end A034858.P11008099217658060906

namespace A034858

/-- `∑[A023545(n+2)]-A016777(n+3)` -/
def P11008099217658060906.Spec : Prop :=
  ∀ n, P11008099217658060906.a n = A034858 (n + 2)

end A034858

/-! ## A034858.P6644643618379040263

`∑[A034857(n+3)]-A000124(n+4)`
-/

namespace A034858.P6644643618379040263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000124 (n + 4)

end

end A034858.P6644643618379040263

namespace A034858

/-- `∑[A034857(n+3)]-A000124(n+4)` -/
def P6644643618379040263.Spec : Prop :=
  ∀ n, P6644643618379040263.a n = A034858 (n + 2)

end A034858

/-! ## A034858.P11610162945334971897

`A000332(n+8)+3-A000384(n+6)`
-/

namespace A034858.P11610162945334971897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 8) + (3 - A000384 (n + 6))

end

end A034858.P11610162945334971897

namespace A034858

/-- `A000332(n+8)+3-A000384(n+6)` -/
def P11610162945334971897.Spec : Prop :=
  ∀ n, P11610162945334971897.a n = A034858 (n + 2)

end A034858

/-!
# A034859: a(n) = C(n+3,4) + 3*C(n+1,3) + 5*C(n-1,2) + 7*n - 15 for n >= 3; a(1)=1, a(2)=10.

The programs for A034859, there is no canonical definition to state claims against.
-/

/-! ## A034859.P16662751217503560523

`A034781(∑[n+5]+7)`
-/

namespace A034859.P16662751217503560523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034781 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A034859.P16662751217503560523

/-! ## A034859.P2654777126016354040

`record[A034781(A055998(A344180(n)))]`
-/

namespace A034859.P2654777126016354040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034781 (A055998 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034859.P2654777126016354040

/-! ## A034859.P477408928753528709

`A034781(A027379(n+3))%A163421(n+2)`
-/

namespace A034859.P477408928753528709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034781 (A027379 (n + 3)).toNat) (A163421 (n + 2))

end

end A034859.P477408928753528709

/-! ## A034859.P15770729700985452520

`A001222(A007918(n))*A034781(A027379(n+3))`
-/

namespace A034859.P15770729700985452520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007918 n).toNat * A034781 (A027379 (n + 3)).toNat

end

end A034859.P15770729700985452520

/-! ## A034859.P2345521396681151965

`record[A291336(∑[A000217(n+5)])]`
-/

namespace A034859.P2345521396681151965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291336 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034859.P2345521396681151965

/-!
# A034860: a(n) = n!*(2*n-5)/2.

The programs for A034860, there is no canonical definition to state claims against.
-/

/-! ## A034860.P916927796908206976

`Δ[n²]*∏[n+3]`
-/

namespace A034860.P916927796908206976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A034860.P916927796908206976

/-! ## A034860.P5942637600660209935

`(n+3)!*Δ[n²]/2`
-/

namespace A034860.P5942637600660209935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 3) : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / 2

end

end A034860.P5942637600660209935

/-! ## A034860.P18310520839637472201

`∏[n+3]+n*(n+3)!`
-/

namespace A034860.P18310520839637472201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + n * Nat.factorial (n + 3)

end

end A034860.P18310520839637472201

/-! ## A034860.P4156058595685068368

`(2*n+1)*(n+3)!/2`
-/

namespace A034860.P4156058595685068368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * Nat.factorial (n + 3) : ℚ) / 2

end

end A034860.P4156058595685068368

/-! ## A034860.P13113451658217314178

`lcm(3, (2*n+1)*∏[n+3])`
-/

namespace A034860.P13113451658217314178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 ((2 * n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j))

end

end A034860.P13113451658217314178

/-! ## A034860.P354613066403946754

`-xor(2*n, -1)*∏[n+3]`
-/

namespace A034860.P354613066403946754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.xor (2 * n : ℤ) (-1) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A034860.P354613066403946754

/-! ## A034860.P1029855249833121619

`∏[n+3]/tan(acot(2*n+1))`
-/

namespace A034860.P1029855249833121619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.tan (SequenceMachineLib.acot (2 * n + 1 : ℝ))

end

end A034860.P1029855249833121619

/-! ## A034860.P8730236337205158273

`∏[n+3]/cot(atan(2*n+1))`
-/

namespace A034860.P8730236337205158273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.cot (Real.arctan (2 * n + 1 : ℝ))

end

end A034860.P8730236337205158273

/-! ## A034860.P1916307802434852093

`(n+3)!+(n+3)*a(n-1)` with `a(0)=3`
-/

namespace A034860.P1916307802434852093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.factorial (n + 3) + (n + 3) * a (n - 1)

end

end A034860.P1916307802434852093

/-! ## A034860.P13247232671536334616

`-or(1, -(2*n+1))*∏[n+3]`
-/

namespace A034860.P13247232671536334616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.lor 1 (-(2 * n + 1 : ℤ)) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A034860.P13247232671536334616

/-!
# A034862: a(n) = n!*(3*n^2 - 15*n + 10)/6, n > 4.

The programs for A034862, there is no canonical definition to state claims against.
-/

/-! ## A034862.P7086562622270241400

`A034861(n%a(n-1)+4)` with `a(0)=4`
-/

namespace A034862.P7086562622270241400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A034861 (Int.tmod (n : ℤ) (a (n - 1)) + 4).toNat

end

end A034862.P7086562622270241400

/-! ## A034862.P15305669541155403297

`A034861(n+4)+floor((3*n-2)/a(n-1))` with `a(0)=4`
-/

namespace A034862.P15305669541155403297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A034861 (n + 4) + ⌊((3 * n : ℤ) - 2 : ℚ) / (a (n - 1) : ℚ)⌋

end

end A034862.P15305669541155403297

/-! ## A034862.P9328344937084176532

`A034861(n+4)+6*A000038(n)`
-/

namespace A034862.P9328344937084176532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034861 (n + 4) + 6 * A000038 n

end

end A034862.P9328344937084176532

/-! ## A034862.P8635284067666918698

`gcd(A034861(n+4), A135863(A008574(n)))`
-/

namespace A034862.P8635284067666918698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034861 (n + 4)) (A135863 (A008574 n).toNat)

end

end A034862.P8635284067666918698

/-! ## A034862.P4097602433116261306

`A034855(∑[n+3]+2)`
-/

namespace A034862.P4097602433116261306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034855 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A034862.P4097602433116261306

/-!
# A034864: a(5) = 5, a(6) = 1170, for n >= 7, a(n) = n!*(4*n^3 - 30*n^2 + 40*n + 3)/24.

The programs for A034864, there is no canonical definition to state claims against.
-/

/-! ## A034864.P7839601296960395504

`A034855((n+3)²-∑[n+1])`
-/

namespace A034864.P7839601296960395504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034855 ((n + 3) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A034864.P7839601296960395504

/-! ## A034864.P6180916810065791887

`((2*n)²+1)%2*A034855(A034856(n+3))`
-/

namespace A034864.P6180916810065791887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((2 * n) ^ 2 + 1) % 2 : ℕ) : ℤ) * A034855 (A034856 (n + 3)).toNat

end

end A034864.P6180916810065791887

/-! ## A034864.P10423006402963448159

`and(A034855(A034856(n+3)), A255332(n))`
-/

namespace A034864.P10423006402963448159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034855 (A034856 (n + 3)).toNat) (A255332 n)

end

end A034864.P10423006402963448159

/-! ## A034864.P4452711422904516288

`A034855(A034856(n+3))%A034866(n+8)`
-/

namespace A034864.P4452711422904516288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034855 (A034856 (n + 3)).toNat) (A034866 (n + 8))

end

end A034864.P4452711422904516288

/-! ## A034864.P13991633311129445292

`A034855(A034856(n+3))+n*A000007(n)`
-/

namespace A034864.P13991633311129445292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034855 (A034856 (n + 3)).toNat + (n : ℤ) * A000007 n

end

end A034864.P13991633311129445292

/-! ## A034864.P8112503521535988265

`A034855(A034856(n+3))+(A289930(n)+1)%2`
-/

namespace A034864.P8112503521535988265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034855 (A034856 (n + 3)).toNat + Int.tmod (A289930 n + 1) 2

end

end A034864.P8112503521535988265

/-! ## A034864.P14277069063897783819

`A034855(A034856(n+3))+(A054802(n+1)+1)%2`
-/

namespace A034864.P14277069063897783819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034855 (A034856 (n + 3)).toNat + Int.tmod (A054802 (n + 1) + 1) 2

end

end A034864.P14277069063897783819

/-! ## A034864.P14614341787110999077

`A034855(A034856(n+3))*A061020(floor(n/(n+1))+1)`
-/

namespace A034864.P14614341787110999077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034855 (A034856 (n + 3)).toNat * A061020 (⌊(n : ℚ) / (n + 1 : ℚ)⌋ + 1).toNat

end

end A034864.P14614341787110999077

/-!
# A034865: a(n) = n!*(n-4)/2.

The programs for A034865, there is no canonical definition to state claims against.
-/

/-! ## A034865.P11414790158673230467

`n/2*(n+4)!`
-/

namespace A034865.P11414790158673230467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (Nat.factorial (n + 4) : ℚ)

end

end A034865.P11414790158673230467

/-! ## A034865.P12323906292777527556

`3*n*∏[n+4]`
-/

namespace A034865.P12323906292777527556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n * (∏ j ∈ Finset.range (n + 1), f1 j))

end

end A034865.P12323906292777527556

/-! ## A034865.P2628127119148065334

`lcm(n, A034866(n+4))`
-/

namespace A034865.P2628127119148065334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A034866 (n + 4))

end

end A034865.P2628127119148065334

/-! ## A034865.P9431531635677409930

`2*n+2*n*A139174(n+4)`
-/

namespace A034865.P9431531635677409930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (2 * n : ℤ) * A139174 (n + 4)

end

end A034865.P9431531635677409930

/-! ## A034865.P16289870366150270012

`2*n*A139151(n+4)-2*n`
-/

namespace A034865.P16289870366150270012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A139151 (n + 4) - (2 * n : ℤ)

end

end A034865.P16289870366150270012

/-! ## A034865.P15468052909788584591

`n*A000142(n+4)/2`
-/

namespace A034865.P15468052909788584591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A000142 (n + 4) : ℚ) / 2

end

end A034865.P15468052909788584591

/-! ## A034865.P647676876387130574

`A034866(n+4)%A274817(A315223(n))`
-/

namespace A034865.P647676876387130574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034866 (n + 4)) (A274817 (A315223 n).toNat)

end

end A034865.P647676876387130574

/-!
# A034866: a(n) = n!*(n-4)/2, n > 4, and a(4) = 4.

The programs for A034866, there is no canonical definition to state claims against.
-/

/-! ## A034866.P1058504054520814986

`∏[n+4]*A008486(n)`
-/

namespace A034866.P1058504054520814986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A008486 n

end

end A034866.P1058504054520814986

/-! ## A034866.P9522848946229124308

`(A004277(n)+n)*∏[n+4]`
-/

namespace A034866.P9522848946229124308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004277 n + (n : ℤ)) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A034866.P9522848946229124308

/-! ## A034866.P10216345368342038205

`(A008574(n)-n)*∏[n+4]`
-/

namespace A034866.P10216345368342038205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008574 n - (n : ℤ)) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A034866.P10216345368342038205

/-! ## A034866.P14837109557353369234

`A034865(n+4)+4*floor(acot(n))`
-/

namespace A034866.P14837109557353369234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034865 (n + 4) + 4 * ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A034866.P14837109557353369234

/-! ## A034866.P11791109733019182409

`∏[n+4]*A004525(A008458(n))`
-/

namespace A034866.P11791109733019182409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A004525 (A008458 n).toNat

end

end A034866.P11791109733019182409

/-! ## A034866.P4606033243744479606

`A001715(n+4)*A267528(2*n+1)`
-/

namespace A034866.P4606033243744479606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001715 (n + 4) * A267528 (2 * n + 1)

end

end A034866.P4606033243744479606

/-! ## A034866.P16913227038268571480

`A001720(n+4)*A008574(A008486(n))`
-/

namespace A034866.P16913227038268571480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001720 (n + 4) * A008574 (A008486 n).toNat

end

end A034866.P16913227038268571480

/-! ## A034866.P16958954275386387279

`A001720(n+4)*A008574(A008574(n)-n)`
-/

namespace A034866.P16958954275386387279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001720 (n + 4) * A008574 (A008574 n - (n : ℤ)).toNat

end

end A034866.P16958954275386387279

/-!
# A034867: Triangle of odd-numbered terms in rows of Pascal's triangle.

The programs for A034867, the canonical program `A034867.P8941285567894178108` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034867 has offset 0).

The definition of A034867 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5775 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034867.P1058533388538657563

`A074909(∑[A169695(n)])`
-/

namespace A034867.P1058533388538657563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A034867.P1058533388538657563

namespace A034867

/-- `A074909(∑[A169695(n)])` -/
def P1058533388538657563.Spec : Prop :=
  ∀ n, P1058533388538657563.a n = A034867 n

end A034867

/-! ## A034867.P10629462626688475787

`A074909(∑[A267635(n)]+n)`
-/

namespace A034867.P10629462626688475787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267635 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A034867.P10629462626688475787

namespace A034867

/-- `A074909(∑[A267635(n)]+n)` -/
def P10629462626688475787.Spec : Prop :=
  ∀ n, P10629462626688475787.a n = A034867 n

end A034867

/-! ## A034867.P8941285567894178108

`A074909(2*n+1-A000196(n))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A034867

/-- `A074909(2*n+1-A000196(n))` -/
def P8941285567894178108.Spec : Prop :=
  ∀ n, P8941285567894178108.a n = A034867 n

theorem P8941285567894178108.correct : P8941285567894178108.Spec := by
  intro n
  simp only [A034867]

end A034867

/-! ## A034867.P2921767090160861766

`A074909(2*(n+1)-A003059(n+1))`
-/

namespace A034867.P2921767090160861766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 ((2 * (n + 1) : ℤ) - A003059 (n + 1)).toNat

end

end A034867.P2921767090160861766

namespace A034867

/-- `A074909(2*(n+1)-A003059(n+1))` -/
def P2921767090160861766.Spec : Prop :=
  ∀ n, P2921767090160861766.a n = A034867 n

end A034867

/-! ## A034867.P4456969449688986730

`A007318(comp[n²]+n)`
-/

namespace A034867.P4456969449688986730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A034867.P4456969449688986730

namespace A034867

/-- `A007318(comp[n²]+n)` -/
def P4456969449688986730.Spec : Prop :=
  ∀ n, P4456969449688986730.a n = A034867 n

end A034867

/-! ## A034867.P17745662193931706645

`A078812(A091018(n))`
-/

namespace A034867.P17745662193931706645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 (A091018 n).toNat

end

end A034867.P17745662193931706645

namespace A034867

/-- `A078812(A091018(n))` -/
def P17745662193931706645.Spec : Prop :=
  ∀ n, P17745662193931706645.a n = A034867 n

end A034867

/-! ## A034867.P12628333021825840158

`A202064(lt[0, A202023(n)])`
-/

namespace A034867.P12628333021825840158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A034867.P12628333021825840158

namespace A034867

/-- `A202064(lt[0, A202023(n)])` -/
def P12628333021825840158.Spec : Prop :=
  ∀ n, P12628333021825840158.a n = A034867 n

end A034867

/-! ## A034867.P7376956556303261872

`A202064(lt[0, A202064(n)])`
-/

namespace A034867.P7376956556303261872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202064 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A034867.P7376956556303261872

namespace A034867

/-- `A202064(lt[0, A202064(n)])` -/
def P7376956556303261872.Spec : Prop :=
  ∀ n, P7376956556303261872.a n = A034867 n

end A034867

/-! ## A034867.P7450390064057185419

`A238801(lt[0, A162514(n)])`
-/

namespace A034867.P7450390064057185419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162514 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238801 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A034867.P7450390064057185419

namespace A034867

/-- `A238801(lt[0, A162514(n)])` -/
def P7450390064057185419.Spec : Prop :=
  ∀ n, P7450390064057185419.a n = A034867 n

end A034867

/-! ## A034867.P7407822216671249049

`A238801(lt[0, A238801(n)])`
-/

namespace A034867.P7407822216671249049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238801 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238801 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A034867.P7407822216671249049

namespace A034867

/-- `A238801(lt[0, A238801(n)])` -/
def P7407822216671249049.Spec : Prop :=
  ∀ n, P7407822216671249049.a n = A034867 n

end A034867

/-! ## A034867.P11306586882879041583

`A135278(2*n-A000196(n))`
-/

namespace A034867.P11306586882879041583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 ((2 * n : ℤ) - A000196 n).toNat

end

end A034867.P11306586882879041583

namespace A034867

/-- `A135278(2*n-A000196(n))` -/
def P11306586882879041583.Spec : Prop :=
  ∀ n, P11306586882879041583.a n = A034867 n

end A034867

/-! ## A034867.P13724812287429803169

`A135278(2*n+1-A003059(n+1))`
-/

namespace A034867.P13724812287429803169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 ((2 * n + 1 : ℤ) - A003059 (n + 1)).toNat

end

end A034867.P13724812287429803169

namespace A034867

/-- `A135278(2*n+1-A003059(n+1))` -/
def P13724812287429803169.Spec : Prop :=
  ∀ n, P13724812287429803169.a n = A034867 n

end A034867

/-! ## A034867.P7128171351441018331

`A132749(comp[n²]+n)`
-/

namespace A034867.P7128171351441018331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A034867.P7128171351441018331

namespace A034867

/-- `A132749(comp[n²]+n)` -/
def P7128171351441018331.Spec : Prop :=
  ∀ n, P7128171351441018331.a n = A034867 n

end A034867

/-! ## A034867.P11634362062432290105

`A206735(comp[n²]+n)`
-/

namespace A034867.P11634362062432290105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A034867.P11634362062432290105

namespace A034867

/-- `A206735(comp[n²]+n)` -/
def P11634362062432290105.Spec : Prop :=
  ∀ n, P11634362062432290105.a n = A034867 n

end A034867

/-! ## A034867.P10620274299884767152

`A134059(comp[n²]+n)/3`
-/

namespace A034867.P10620274299884767152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134059 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℚ) / 3

end

end A034867.P10620274299884767152

namespace A034867

/-- `A134059(comp[n²]+n)/3` -/
def P10620274299884767152.Spec : Prop :=
  ∀ n, P10620274299884767152.a n = (A034867 n : ℚ)

end A034867

/-! ## A034867.P12228615128334501067

`A193554(lt[1, A163626(n)])`
-/

namespace A034867.P12228615128334501067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163626 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A034867.P12228615128334501067

namespace A034867

/-- `A193554(lt[1, A163626(n)])` -/
def P12228615128334501067.Spec : Prop :=
  ∀ n, P12228615128334501067.a n = A034867 n

end A034867

/-! ## A034867.P2857867024121528964

`A249095(A227453(n+1)-1)`
-/

namespace A034867.P2857867024121528964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249095 (A227453 (n + 1) - 1).toNat

end

end A034867.P2857867024121528964

namespace A034867

/-- `A249095(A227453(n+1)-1)` -/
def P2857867024121528964.Spec : Prop :=
  ∀ n, P2857867024121528964.a n = A034867 n

end A034867

/-! ## A034867.P7451009777983835788

`A140751(3*(n+1)+n)`
-/

namespace A034867.P7451009777983835788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140751 (3 * (n + 1) + n)

end

end A034867.P7451009777983835788

namespace A034867

/-- `A140751(3*(n+1)+n)` -/
def P7451009777983835788.Spec : Prop :=
  ∀ n, P7451009777983835788.a n = A034867 n

end A034867

/-!
# A034868: Left half of Pascal's triangle.

The programs for A034868, the canonical program `A034868.P12965043593595847904` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034868 has offset 0).

The definition of A034868 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034868.P4067128141596107892

`A391403(n)/A011973(n)`
-/

namespace A034868.P4067128141596107892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A391403 n : ℚ) / (A011973 n : ℚ)

end

end A034868.P4067128141596107892

namespace A034868

/-- `A391403(n)/A011973(n)` -/
def P4067128141596107892.Spec : Prop :=
  ∀ n, P4067128141596107892.a n = (A034868 n : ℚ)

end A034868

/-! ## A034868.P12965043593595847904

`C(A055086(n), A055087(n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A034868

/-- `C(A055086(n), A055087(n))` -/
def P12965043593595847904.Spec : Prop :=
  ∀ n, (P12965043593595847904.a n : ℤ) = A034868 n

theorem P12965043593595847904.correct : P12965043593595847904.Spec := by
  intro n
  simp only [A034868]

end A034868

/-! ## A034868.P16286596610811431763

`A029662(n)-A014462(n+1)`
-/

namespace A034868.P16286596610811431763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029662 n - A014462 (n + 1)

end

end A034868.P16286596610811431763

namespace A034868

/-- `A029662(n)-A014462(n+1)` -/
def P16286596610811431763.Spec : Prop :=
  ∀ n, P16286596610811431763.a n = A034868 n

end A034868

/-! ## A034868.P2667885938078431149

`2*A029662(n)-A029628(n)`
-/

namespace A034868.P2667885938078431149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029662 n - A029628 n

end

end A034868.P2667885938078431149

namespace A034868

/-- `2*A029662(n)-A029628(n)` -/
def P2667885938078431149.Spec : Prop :=
  ∀ n, P2667885938078431149.a n = A034868 n

end A034868

/-! ## A034868.P6001446586582438483

`(A029628(n)-A029644(n))/2`
-/

namespace A034868.P6001446586582438483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029628 n - A029644 n : ℚ) / 2

end

end A034868.P6001446586582438483

namespace A034868

/-- `(A029628(n)-A029644(n))/2` -/
def P6001446586582438483.Spec : Prop :=
  ∀ n, P6001446586582438483.a n = (A034868 n : ℚ)

end A034868

/-! ## A034868.P6451410528452652580

`C(A000267(n)-1, A055087(n))`
-/

namespace A034868.P6451410528452652580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000267 n - 1).toNat (A055087 n).toNat

end

end A034868.P6451410528452652580

namespace A034868

/-- `C(A000267(n)-1, A055087(n))` -/
def P6451410528452652580.Spec : Prop :=
  ∀ n, (P6451410528452652580.a n : ℤ) = A034868 n

end A034868

/-! ## A034868.P13583912073975147825

`A029628(n)-2*A014462(n+1)`
-/

namespace A034868.P13583912073975147825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029628 n - 2 * A014462 (n + 1)

end

end A034868.P13583912073975147825

namespace A034868

/-- `A029628(n)-2*A014462(n+1)` -/
def P13583912073975147825.Spec : Prop :=
  ∀ n, P13583912073975147825.a n = A034868 n

end A034868

/-! ## A034868.P4846246249162140729

`2*A014462(n+1)-A029644(n)`
-/

namespace A034868.P4846246249162140729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014462 (n + 1) - A029644 n

end

end A034868.P4846246249162140729

namespace A034868

/-- `2*A014462(n+1)-A029644(n)` -/
def P4846246249162140729.Spec : Prop :=
  ∀ n, P4846246249162140729.a n = A034868 n

end A034868

/-! ## A034868.P7635533645030607745

`A051288(n)/A207538(n+1)`
-/

namespace A034868.P7635533645030607745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051288 n : ℚ) / (A207538 (n + 1) : ℚ)

end

end A034868.P7635533645030607745

namespace A034868

/-- `A051288(n)/A207538(n+1)` -/
def P7635533645030607745.Spec : Prop :=
  ∀ n, P7635533645030607745.a n = (A034868 n : ℚ)

end A034868

/-! ## A034868.P12284010529827244174

`A046899(A091018(n))`
-/

namespace A034868.P12284010529827244174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A091018 n).toNat

end

end A034868.P12284010529827244174

namespace A034868

/-- `A046899(A091018(n))` -/
def P12284010529827244174.Spec : Prop :=
  ∀ n, P12284010529827244174.a n = A034868 n

end A034868

/-! ## A034868.P13470469095087833547

`A007318(eq[0, A340507(n)])`
-/

namespace A034868.P13470469095087833547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A034868.P13470469095087833547

namespace A034868

/-- `A007318(eq[0, A340507(n)])` -/
def P13470469095087833547.Spec : Prop :=
  ∀ n, P13470469095087833547.a n = A034868 n

end A034868

/-! ## A034868.P18329701340422348199

`A007318(2*n-A322832(n))`
-/

namespace A034868.P18329701340422348199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ((2 * n : ℤ) - A322832 n).toNat

end

end A034868.P18329701340422348199

namespace A034868

/-- `A007318(2*n-A322832(n))` -/
def P18329701340422348199.Spec : Prop :=
  ∀ n, P18329701340422348199.a n = A034868 n

end A034868

/-! ## A034868.P6255122382883249814

`A007318(lt[n, A038722(n+1)])`
-/

namespace A034868.P6255122382883249814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A034868.P6255122382883249814

namespace A034868

/-- `A007318(lt[n, A038722(n+1)])` -/
def P6255122382883249814.Spec : Prop :=
  ∀ n, P6255122382883249814.a n = A034868 n

end A034868

/-! ## A034868.P4397215890540728963

`A007318(n-A322832(n)+n)`
-/

namespace A034868.P4397215890540728963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ((n : ℤ) - A322832 n + (n : ℤ)).toNat

end

end A034868.P4397215890540728963

namespace A034868

/-- `A007318(n-A322832(n)+n)` -/
def P4397215890540728963.Spec : Prop :=
  ∀ n, P4397215890540728963.a n = A034868 n

end A034868

/-! ## A034868.P17344589842118864556

`A007318(n-(A322832(n)-n))`
-/

namespace A034868.P17344589842118864556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ((n : ℤ) - (A322832 n - (n : ℤ))).toNat

end

end A034868.P17344589842118864556

namespace A034868

/-- `A007318(n-(A322832(n)-n))` -/
def P17344589842118864556.Spec : Prop :=
  ∀ n, P17344589842118864556.a n = A034868 n

end A034868

/-! ## A034868.P924514663078217702

`A007318(eq[n, n%A038722(n+1)])`
-/

namespace A034868.P924514663078217702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A038722 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A034868.P924514663078217702

namespace A034868

/-- `A007318(eq[n, n%A038722(n+1)])` -/
def P924514663078217702.Spec : Prop :=
  ∀ n, P924514663078217702.a n = A034868 n

end A034868

/-! ## A034868.P16755103896769584561

`A007318(A002620(A055086(n))+n)`
-/

namespace A034868.P16755103896769584561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A002620 (A055086 n).toNat + (n : ℤ)).toNat

end

end A034868.P16755103896769584561

namespace A034868

/-- `A007318(A002620(A055086(n))+n)` -/
def P16755103896769584561.Spec : Prop :=
  ∀ n, P16755103896769584561.a n = A034868 n

end A034868

/-! ## A034868.P457099104411366321

`A007318(A002620(A000267(n)-1)+n)`
-/

namespace A034868.P457099104411366321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A002620 (A000267 n - 1).toNat + (n : ℤ)).toNat

end

end A034868.P457099104411366321

namespace A034868

/-- `A007318(A002620(A000267(n)-1)+n)` -/
def P457099104411366321.Spec : Prop :=
  ∀ n, P457099104411366321.a n = A034868 n

end A034868

/-! ## A034868.P4409718117159337629

`A007318(lt[A074909(n), 2*A007318(n)])`
-/

namespace A034868.P4409718117159337629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A034868.P4409718117159337629

namespace A034868

/-- `A007318(lt[A074909(n), 2*A007318(n)])` -/
def P4409718117159337629.Spec : Prop :=
  ∀ n, P4409718117159337629.a n = A034868 n

end A034868

/-! ## A034868.P12439059157400861909

`A007318(lt[A074909(n)/2, A007318(n)])`
-/

namespace A034868.P12439059157400861909
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074909 n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A034868.P12439059157400861909

namespace A034868

/-- `A007318(lt[A074909(n)/2, A007318(n)])` -/
def P12439059157400861909.Spec : Prop :=
  ∀ n, P12439059157400861909.a n = A034868 n

end A034868

/-!
# A034869: Right half of Pascal's triangle.

The programs for A034869, the canonical program `A034869.P2608600676671799699` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034869 has offset 0).

The definition of A034869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034869.P15410175802999543211

`A111417(n)+A008311(n)`
-/

namespace A034869.P15410175802999543211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111417 n + A008311 n

end

end A034869.P15410175802999543211

namespace A034869

/-- `A111417(n)+A008311(n)` -/
def P15410175802999543211.Spec : Prop :=
  ∀ n, P15410175802999543211.a n = A034869 n

end A034869

/-! ## A034869.P3073626345028479139

`A029614(n)-A028330(n)`
-/

namespace A034869.P3073626345028479139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029614 n - A028330 n

end

end A034869.P3073626345028479139

namespace A034869

/-- `A029614(n)-A028330(n)` -/
def P3073626345028479139.Spec : Prop :=
  ∀ n, P3073626345028479139.a n = A034869 n

end A034869

/-! ## A034869.P2608600676671799699

`A028330(n)-A029666(n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A034869

/-- `A028330(n)-A029666(n)` -/
def P2608600676671799699.Spec : Prop :=
  ∀ n, P2608600676671799699.a n = A034869 n

theorem P2608600676671799699.correct : P2608600676671799699.Spec := by
  intro n
  simp only [A034869]

end A034869

/-! ## A034869.P459460340540824013

`A029648(n)-A014413(n+1)`
-/

namespace A034869.P459460340540824013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029648 n - A014413 (n + 1)

end

end A034869.P459460340540824013

namespace A034869

/-- `A029648(n)-A014413(n+1)` -/
def P459460340540824013.Spec : Prop :=
  ∀ n, P459460340540824013.a n = A034869 n

end A034869

/-! ## A034869.P18420812074578121735

`2*A029648(n)-A029614(n)`
-/

namespace A034869.P18420812074578121735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029648 n - A029614 n

end

end A034869.P18420812074578121735

namespace A034869

/-- `2*A029648(n)-A029614(n)` -/
def P18420812074578121735.Spec : Prop :=
  ∀ n, P18420812074578121735.a n = A034869 n

end A034869

/-! ## A034869.P5818444901482618015

`A029614(n)-2*A014413(n+1)`
-/

namespace A034869.P5818444901482618015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029614 n - 2 * A014413 (n + 1)

end

end A034869.P5818444901482618015

namespace A034869

/-- `A029614(n)-2*A014413(n+1)` -/
def P5818444901482618015.Spec : Prop :=
  ∀ n, P5818444901482618015.a n = A034869 n

end A034869

/-! ## A034869.P8482123272564697878

`2*A014413(n+1)-A029666(n)`
-/

namespace A034869.P8482123272564697878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014413 (n + 1) - A029666 n

end

end A034869.P8482123272564697878

namespace A034869

/-- `2*A014413(n+1)-A029666(n)` -/
def P8482123272564697878.Spec : Prop :=
  ∀ n, P8482123272564697878.a n = A034869 n

end A034869

/-! ## A034869.P1435453272801783506

`A007318(lt[A038722(n+1), n+2])`
-/

namespace A034869.P1435453272801783506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A034869.P1435453272801783506

namespace A034869

/-- `A007318(lt[A038722(n+1), n+2])` -/
def P1435453272801783506.Spec : Prop :=
  ∀ n, P1435453272801783506.a n = A034869 n

end A034869

/-! ## A034869.P13644155352266955712

`A007318(2*n+1-A122197(n+1))`
-/

namespace A034869.P13644155352266955712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ((2 * n + 1 : ℤ) - A122197 (n + 1)).toNat

end

end A034869.P13644155352266955712

namespace A034869

/-- `A007318(2*n+1-A122197(n+1))` -/
def P13644155352266955712.Spec : Prop :=
  ∀ n, P13644155352266955712.a n = A034869 n

end A034869

/-! ## A034869.P3840092455736957812

`A007318(A002620(A000267(n))+n)`
-/

namespace A034869.P3840092455736957812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A002620 (A000267 n).toNat + (n : ℤ)).toNat

end

end A034869.P3840092455736957812

namespace A034869

/-- `A007318(A002620(A000267(n))+n)` -/
def P3840092455736957812.Spec : Prop :=
  ∀ n, P3840092455736957812.a n = A034869 n

end A034869

/-! ## A034869.P1990427467439433877

`A074909(eq[A169803(n)², A169803(n)])`
-/

namespace A034869.P1990427467439433877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169803 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A034869.P1990427467439433877

namespace A034869

/-- `A074909(eq[A169803(n)², A169803(n)])` -/
def P1990427467439433877.Spec : Prop :=
  ∀ n, P1990427467439433877.a n = A034869 n

end A034869

/-! ## A034869.P14244333169213425658

`A108044(lt[0, A108044(n)])`
-/

namespace A034869.P14244333169213425658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108044 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A034869.P14244333169213425658

namespace A034869

/-- `A108044(lt[0, A108044(n)])` -/
def P14244333169213425658.Spec : Prop :=
  ∀ n, P14244333169213425658.a n = A034869 n

end A034869

/-! ## A034869.P12247847518518075908

`A007318(lt[0, A026729(n)])`
-/

namespace A034869.P12247847518518075908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A034869.P12247847518518075908

namespace A034869

/-- `A007318(lt[0, A026729(n)])` -/
def P12247847518518075908.Spec : Prop :=
  ∀ n, P12247847518518075908.a n = A034869 n

end A034869

/-! ## A034869.P14623432848776342158

`A007318(lt[0, A098158(n)])`
-/

namespace A034869.P14623432848776342158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A034869.P14623432848776342158

namespace A034869

/-- `A007318(lt[0, A098158(n)])` -/
def P14623432848776342158.Spec : Prop :=
  ∀ n, P14623432848776342158.a n = A034869 n

end A034869

/-! ## A034869.P335002603599253895

`A007318(lt[0, A207543(n)])`
-/

namespace A034869.P335002603599253895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A034869.P335002603599253895

namespace A034869

/-- `A007318(lt[0, A207543(n)])` -/
def P335002603599253895.Spec : Prop :=
  ∀ n, P335002603599253895.a n = A034869 n

end A034869

/-! ## A034869.P8731956922801348811

`A007318(lt[A202209(n), 2])`
-/

namespace A034869.P8731956922801348811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202209 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A034869.P8731956922801348811

namespace A034869

/-- `A007318(lt[A202209(n), 2])` -/
def P8731956922801348811.Spec : Prop :=
  ∀ n, P8731956922801348811.a n = A034869 n

end A034869

/-! ## A034869.P15839178868071946491

`A007318(eq[1, A010766(n+1)])`
-/

namespace A034869.P15839178868071946491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A034869.P15839178868071946491

namespace A034869

/-- `A007318(eq[1, A010766(n+1)])` -/
def P15839178868071946491.Spec : Prop :=
  ∀ n, P15839178868071946491.a n = A034869 n

end A034869

/-! ## A034869.P766030914715948126

`A007318(lt[A061579(n), n+1])`
-/

namespace A034869.P766030914715948126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A034869.P766030914715948126

namespace A034869

/-- `A007318(lt[A061579(n), n+1])` -/
def P766030914715948126.Spec : Prop :=
  ∀ n, P766030914715948126.a n = A034869 n

end A034869

/-! ## A034869.P4829319030852191527

`A007318(lt[A029621(n+1), A029620(n+1)])`
-/

namespace A034869.P4829319030852191527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A034869.P4829319030852191527

namespace A034869

/-- `A007318(lt[A029621(n+1), A029620(n+1)])` -/
def P4829319030852191527.Spec : Prop :=
  ∀ n, P4829319030852191527.a n = A034869 n

end A034869

/-! ## A034869.P5874930992402205775

`A007318(lt[A207628(n+2), A207627(n+2)])`
-/

namespace A034869.P5874930992402205775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207628 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207627 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A034869.P5874930992402205775

namespace A034869

/-- `A007318(lt[A207628(n+2), A207627(n+2)])` -/
def P5874930992402205775.Spec : Prop :=
  ∀ n, P5874930992402205775.a n = A034869 n

end A034869

/-!
# A034870: Even-numbered rows of Pascal's triangle.

The programs for A034870, the canonical program `A034870.P1046418802650642871` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034870 has offset 0).

The definition of A034870 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034870.P1046418802650642871

`C(2*A000196(n), A053186(n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A034870

/-- `C(2*A000196(n), A053186(n))` -/
def P1046418802650642871.Spec : Prop :=
  ∀ n, (P1046418802650642871.a n : ℤ) = A034870 n

theorem P1046418802650642871.correct : P1046418802650642871.Spec := by
  intro n
  simp only [A034870]

end A034870

/-! ## A034870.P14356049017517006347

`A028326(2*n-A196199(n))/2`
-/

namespace A034870.P14356049017517006347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 ((2 * n : ℤ) - A196199 n).toNat : ℚ) / 2

end

end A034870.P14356049017517006347

namespace A034870

/-- `A028326(2*n-A196199(n))/2` -/
def P14356049017517006347.Spec : Prop :=
  ∀ n, P14356049017517006347.a n = (A034870 n : ℚ)

end A034870

/-! ## A034870.P17862337270938481632

`A028326(n-A196199(n)+n)/2`
-/

namespace A034870.P17862337270938481632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 ((n : ℤ) - A196199 n + (n : ℤ)).toNat : ℚ) / 2

end

end A034870.P17862337270938481632

namespace A034870

/-- `A028326(n-A196199(n)+n)/2` -/
def P17862337270938481632.Spec : Prop :=
  ∀ n, P17862337270938481632.a n = (A034870 n : ℚ)

end A034870

/-! ## A034870.P2913044670941884

`A028326(A316670(n+1))/2`
-/

namespace A034870.P2913044670941884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 (A316670 (n + 1)).toNat : ℚ) / 2

end

end A034870.P2913044670941884

namespace A034870

/-- `A028326(A316670(n+1))/2` -/
def P2913044670941884.Spec : Prop :=
  ∀ n, P2913044670941884.a n = (A034870 n : ℚ)

end A034870

/-! ## A034870.P2039495735167055276

`A007318(lt[A274093(n), 1])`
-/

namespace A034870.P2039495735167055276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274093 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A034870.P2039495735167055276

namespace A034870

/-- `A007318(lt[A274093(n), 1])` -/
def P2039495735167055276.Spec : Prop :=
  ∀ n, P2039495735167055276.a n = A034870 n

end A034870

/-! ## A034870.P17785598273342371166

`A007318(comp[round(sqrt(n+1))²+n])`
-/

namespace A034870.P17785598273342371166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A034870.P17785598273342371166

namespace A034870

/-- `A007318(comp[round(sqrt(n+1))²+n])` -/
def P17785598273342371166.Spec : Prop :=
  ∀ n, P17785598273342371166.a n = A034870 n

end A034870

/-! ## A034870.P14672957755034820601

`or(A007318(2*n-A196199(n)), A000007(n))`
-/

namespace A034870.P14672957755034820601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007318 ((2 * n : ℤ) - A196199 n).toNat) (A000007 n)

end

end A034870.P14672957755034820601

namespace A034870

/-- `or(A007318(2*n-A196199(n)), A000007(n))` -/
def P14672957755034820601.Spec : Prop :=
  ∀ n, P14672957755034820601.a n = A034870 n

end A034870

/-! ## A034870.P17019039339852698588

`or(A007318(n-A196199(n)+n), A000007(n))`
-/

namespace A034870.P17019039339852698588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007318 ((n : ℤ) - A196199 n + (n : ℤ)).toNat) (A000007 n)

end

end A034870.P17019039339852698588

namespace A034870

/-- `or(A007318(n-A196199(n)+n), A000007(n))` -/
def P17019039339852698588.Spec : Prop :=
  ∀ n, P17019039339852698588.a n = A034870 n

end A034870

/-! ## A034870.P10852863146863628901

`A007318(2*n-A196199(n))^(A065803(n+1)+1)`
-/

namespace A034870.P10852863146863628901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 ((2 * n : ℤ) - A196199 n).toNat : ℚ) ^ (A065803 (n + 1) + 1 : ℤ)

end

end A034870.P10852863146863628901

namespace A034870

/-- `A007318(2*n-A196199(n))^(A065803(n+1)+1)` -/
def P10852863146863628901.Spec : Prop :=
  ∀ n, P10852863146863628901.a n = (A034870 n : ℚ)

end A034870

/-! ## A034870.P18038162164311207771

`A007318(n-(A196199(n)-n))^(A065803(n+1)+1)`
-/

namespace A034870.P18038162164311207771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 ((n : ℤ) - (A196199 n - (n : ℤ))).toNat : ℚ) ^ (A065803 (n + 1) + 1 : ℤ)

end

end A034870.P18038162164311207771

namespace A034870

/-- `A007318(n-(A196199(n)-n))^(A065803(n+1)+1)` -/
def P18038162164311207771.Spec : Prop :=
  ∀ n, P18038162164311207771.a n = (A034870 n : ℚ)

end A034870

/-! ## A034870.P1487979928612097255

`A133087(eq[A002260(n+1), A210530(n+1)])`
-/

namespace A034870.P1487979928612097255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133087 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A034870.P1487979928612097255

namespace A034870

/-- `A133087(eq[A002260(n+1), A210530(n+1)])` -/
def P1487979928612097255.Spec : Prop :=
  ∀ n, P1487979928612097255.a n = A034870 n

end A034870

/-! ## A034870.P10416004983184320382

`A322621(n)/A322193(n)`
-/

namespace A034870.P10416004983184320382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322621 n : ℚ) / (A322193 n : ℚ)

end

end A034870.P10416004983184320382

namespace A034870

/-- `A322621(n)/A322193(n)` -/
def P10416004983184320382.Spec : Prop :=
  ∀ n, P10416004983184320382.a n = (A034870 n : ℚ)

end A034870

/-! ## A034870.P6268883867423806557

`A322621(n)/A322190(A316670(n+1))`
-/

namespace A034870.P6268883867423806557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322621 n : ℚ) / (A322190 (A316670 (n + 1)).toNat : ℚ)

end

end A034870.P6268883867423806557

namespace A034870

/-- `A322621(n)/A322190(A316670(n+1))` -/
def P6268883867423806557.Spec : Prop :=
  ∀ n, P6268883867423806557.a n = (A034870 n : ℚ)

end A034870

/-! ## A034870.P12778870702629796602

`A007318(A316965(n)+1)%A000051(n)`
-/

namespace A034870.P12778870702629796602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 (A316965 n + 1).toNat) (A000051 n)

end

end A034870.P12778870702629796602

namespace A034870

/-- `A007318(A316965(n)+1)%A000051(n)` -/
def P12778870702629796602.Spec : Prop :=
  ∀ n, P12778870702629796602.a n = A034870 n

end A034870

/-! ## A034870.P6882753728368830866

`∑{d}[A007318(A316670(n+1)), A000010(#)]`
-/

namespace A034870.P6882753728368830866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A316670 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A034870.P6882753728368830866

namespace A034870

/-- `∑{d}[A007318(A316670(n+1)), A000010(#)]` -/
def P6882753728368830866.Spec : Prop :=
  ∀ n, P6882753728368830866.a n = A034870 n

end A034870

/-!
# A034871: Odd-numbered rows of Pascal's triangle.

The programs for A034871, the canonical program `A034871.P10370109262443921469` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034871 has offset 0).

The definition of A034871 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5851 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034871.P10370109262443921469

`A074909(A259361(n)²+n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A034871

/-- `A074909(A259361(n)²+n)` -/
def P10370109262443921469.Spec : Prop :=
  ∀ n, P10370109262443921469.a n = A034871 n

theorem P10370109262443921469.correct : P10370109262443921469.Spec := by
  intro n
  simp only [A034871]

end A034871

/-! ## A034871.P15940008356915287908

`A028326(round(sqrt(n))²+n)/2`
-/

namespace A034871.P15940008356915287908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2 + (n : ℤ)).toNat : ℚ) / 2

end

end A034871.P15940008356915287908

namespace A034871

/-- `A028326(round(sqrt(n))²+n)/2` -/
def P15940008356915287908.Spec : Prop :=
  ∀ n, P15940008356915287908.a n = (A034871 n : ℚ)

end A034871

/-! ## A034871.P5680798246786912445

`A007318(round(sqrt(n))²+n)`
-/

namespace A034871.P5680798246786912445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2 + (n : ℤ)).toNat

end

end A034871.P5680798246786912445

namespace A034871

/-- `A007318(round(sqrt(n))²+n)` -/
def P5680798246786912445.Spec : Prop :=
  ∀ n, P5680798246786912445.a n = A034871 n

end A034871

/-! ## A034871.P18307355273884924374

`abs(A130595(A000194(n)²+n))`
-/

namespace A034871.P18307355273884924374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 (A000194 n ^ 2 + (n : ℤ)).toNat|

end

end A034871.P18307355273884924374

namespace A034871

/-- `abs(A130595(A000194(n)²+n))` -/
def P18307355273884924374.Spec : Prop :=
  ∀ n, P18307355273884924374.a n = A034871 n

end A034871

/-! ## A034871.P6994446341331809600

`A134059(∑[char[∑[2*n]]]²+n)/3`
-/

namespace A034871.P6994446341331809600
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134059 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + n) : ℚ) / 3

end

end A034871.P6994446341331809600

namespace A034871

/-- `A134059(∑[char[∑[2*n]]]²+n)/3` -/
def P6994446341331809600.Spec : Prop :=
  ∀ n, P6994446341331809600.a n = (A034871 n : ℚ)

end A034871

/-! ## A034871.P9025706377574492417

`A133569(A007607(n+1))`
-/

namespace A034871.P9025706377574492417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133569 (A007607 (n + 1)).toNat

end

end A034871.P9025706377574492417

namespace A034871

/-- `A133569(A007607(n+1))` -/
def P9025706377574492417.Spec : Prop :=
  ∀ n, P9025706377574492417.a n = A034871 n

end A034871

/-! ## A034871.P8382562699748654109

`A133569(A162917(n+2))`
-/

namespace A034871.P8382562699748654109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133569 (A162917 (n + 2)).toNat

end

end A034871.P8382562699748654109

namespace A034871

/-- `A133569(A162917(n+2))` -/
def P8382562699748654109.Spec : Prop :=
  ∀ n, P8382562699748654109.a n = A034871 n

end A034871

/-! ## A034871.P18422218182975155288

`A155997(A007607(n+1)-1)`
-/

namespace A034871.P18422218182975155288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155997 (A007607 (n + 1) - 1).toNat

end

end A034871.P18422218182975155288

namespace A034871

/-- `A155997(A007607(n+1)-1)` -/
def P18422218182975155288.Spec : Prop :=
  ∀ n, P18422218182975155288.a n = A034871 n

end A034871

/-! ## A034871.P10949453972946745516

`A155998(A007607(n+1)-1)`
-/

namespace A034871.P10949453972946745516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 (A007607 (n + 1) - 1).toNat

end

end A034871.P10949453972946745516

namespace A034871

/-- `A155998(A007607(n+1)-1)` -/
def P10949453972946745516.Spec : Prop :=
  ∀ n, P10949453972946745516.a n = A034871 n

end A034871

/-! ## A034871.P10326828790230494723

`A155997(eq[A007318(n), A155997(n)])`
-/

namespace A034871.P10326828790230494723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155997 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A034871.P10326828790230494723

namespace A034871

/-- `A155997(eq[A007318(n), A155997(n)])` -/
def P10326828790230494723.Spec : Prop :=
  ∀ n, P10326828790230494723.a n = A034871 n

end A034871

/-! ## A034871.P15413272982660595848

`A155997(eq[A155997(n), A155998(n)])`
-/

namespace A034871.P15413272982660595848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155997 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155997 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A034871.P15413272982660595848

namespace A034871

/-- `A155997(eq[A155997(n), A155998(n)])` -/
def P15413272982660595848.Spec : Prop :=
  ∀ n, P15413272982660595848.a n = A034871 n

end A034871

/-! ## A034871.P14150624817338938125

`A155997(eq[A132749(n), A155997(n)]-1)`
-/

namespace A034871.P14150624817338938125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155997 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n - 1)

end

end A034871.P14150624817338938125

namespace A034871

/-- `A155997(eq[A132749(n), A155997(n)]-1)` -/
def P14150624817338938125.Spec : Prop :=
  ∀ n, P14150624817338938125.a n = A034871 n

end A034871

/-! ## A034871.P2054760384687976429

`A155998(eq[A155998(n), A206735(n)]-1)`
-/

namespace A034871.P2054760384687976429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n - 1)

end

end A034871.P2054760384687976429

namespace A034871

/-- `A155998(eq[A155998(n), A206735(n)]-1)` -/
def P2054760384687976429.Spec : Prop :=
  ∀ n, P2054760384687976429.a n = A034871 n

end A034871

/-! ## A034871.P15454031700500345193

`A155997(eq[2*A155997(n), A028326(n)])`
-/

namespace A034871.P15454031700500345193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A155997 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155997 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A034871.P15454031700500345193

namespace A034871

/-- `A155997(eq[2*A155997(n), A028326(n)])` -/
def P15454031700500345193.Spec : Prop :=
  ∀ n, P15454031700500345193.a n = A034871 n

end A034871

/-! ## A034871.P9243439277433985330

`A155998(eq[2*A155998(n), A028326(n)])`
-/

namespace A034871.P9243439277433985330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A155998 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A034871.P9243439277433985330

namespace A034871

/-- `A155998(eq[2*A155998(n), A028326(n)])` -/
def P9243439277433985330.Spec : Prop :=
  ∀ n, P9243439277433985330.a n = A034871 n

end A034871

/-! ## A034871.P2593936742470536063

`A155997(eq[A028326(n)/2, A155997(n)])`
-/

namespace A034871.P2593936742470536063
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155997 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A034871.P2593936742470536063

namespace A034871

/-- `A155997(eq[A028326(n)/2, A155997(n)])` -/
def P2593936742470536063.Spec : Prop :=
  ∀ n, P2593936742470536063.a n = A034871 n

end A034871

/-! ## A034871.P8034675803854907414

`A155998(eq[A028326(n)/2, A155998(n)])`
-/

namespace A034871.P8034675803854907414
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A034871.P8034675803854907414

namespace A034871

/-- `A155998(eq[A028326(n)/2, A155998(n)])` -/
def P8034675803854907414.Spec : Prop :=
  ∀ n, P8034675803854907414.a n = A034871 n

end A034871

/-! ## A034871.P9848872223834879235

`A155997(eq[A130595(n)², A155997(n)²])`
-/

namespace A034871.P9848872223834879235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155997 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155997 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A034871.P9848872223834879235

namespace A034871

/-- `A155997(eq[A130595(n)², A155997(n)²])` -/
def P9848872223834879235.Spec : Prop :=
  ∀ n, P9848872223834879235.a n = A034871 n

end A034871

/-! ## A034871.P11446417130539865779

`A155998(eq[A130595(n)², A155998(n)²])`
-/

namespace A034871.P11446417130539865779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A034871.P11446417130539865779

namespace A034871

/-- `A155998(eq[A130595(n)², A155998(n)²])` -/
def P11446417130539865779.Spec : Prop :=
  ∀ n, P11446417130539865779.a n = A034871 n

end A034871

/-! ## A034871.P2589911854831209490

`A155997(eq[A132749(n+1), A155997(n+1)])`
-/

namespace A034871.P2589911854831209490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155997 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A034871.P2589911854831209490

namespace A034871

/-- `A155997(eq[A132749(n+1), A155997(n+1)])` -/
def P2589911854831209490.Spec : Prop :=
  ∀ n, P2589911854831209490.a n = A034871 n

end A034871

/-!
# A034872: Central column of Losanitsch's triangle A034851.

The programs for A034872, the canonical program `A034872.P500524105011552358` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034872 has offset 0).

The definition of A034872 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034872.P500524105011552358

`A034851(ceil(n²/2)+n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A034872

/-- `A034851(ceil(n²/2)+n)` -/
def P500524105011552358.Spec : Prop :=
  ∀ n, P500524105011552358.a n = A034872 n

theorem P500524105011552358.correct : P500524105011552358.Spec := by
  intro n
  simp only [A034872]

end A034872

/-! ## A034872.P5263782930085251785

`A034851(floor(cosh(log((n+1)²))))%(2^n+3)`
-/

namespace A034872.P5263782930085251785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034851 ⌊Real.cosh (Real.log ((n + 1) ^ 2 : ℝ))⌋.toNat) (2 ^ n + 3 : ℤ)

end

end A034872.P5263782930085251785

namespace A034872

/-- `A034851(floor(cosh(log((n+1)²))))%(2^n+3)` -/
def P5263782930085251785.Spec : Prop :=
  ∀ n, P5263782930085251785.a n = A034872 n

end A034872

/-! ## A034872.P9904154817201395763

`and(A034851(A007590(n+1)), A255047(n))`
-/

namespace A034872.P9904154817201395763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034851 (A007590 (n + 1)).toNat) (A255047 n)

end

end A034872.P9904154817201395763

namespace A034872

/-- `and(A034851(A007590(n+1)), A255047(n))` -/
def P9904154817201395763.Spec : Prop :=
  ∀ n, P9904154817201395763.a n = A034872 n

end A034872

/-! ## A034872.P75661885500656210

`A034851(A007590(n+1))%A063886(n+1)`
-/

namespace A034872.P75661885500656210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034851 (A007590 (n + 1)).toNat) (A063886 (n + 1))

end

end A034872.P75661885500656210

namespace A034872

/-- `A034851(A007590(n+1))%A063886(n+1)` -/
def P75661885500656210.Spec : Prop :=
  ∀ n, P75661885500656210.a n = A034872 n

end A034872

/-! ## A034872.P13796650777749392213

`A034851(A007590(n+1))+n%A028310(n)`
-/

namespace A034872.P13796650777749392213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (A007590 (n + 1)).toNat + Int.tmod (n : ℤ) (A028310 n)

end

end A034872.P13796650777749392213

namespace A034872

/-- `A034851(A007590(n+1))+n%A028310(n)` -/
def P13796650777749392213.Spec : Prop :=
  ∀ n, P13796650777749392213.a n = A034872 n

end A034872

/-! ## A034872.P17868057288986630690

`A034851(A007590(n+1))+A023196(n+1)%2`
-/

namespace A034872.P17868057288986630690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (A007590 (n + 1)).toNat + Int.tmod (A023196 (n + 1)) 2

end

end A034872.P17868057288986630690

namespace A034872

/-- `A034851(A007590(n+1))+A023196(n+1)%2` -/
def P17868057288986630690.Spec : Prop :=
  ∀ n, P17868057288986630690.a n = A034872 n

end A034872

/-! ## A034872.P6488786731319563408

`A034851(A007590(n+1))+(A000040(n+2)-3)%2`
-/

namespace A034872.P6488786731319563408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (A007590 (n + 1)).toNat + Int.tmod (A000040 (n + 2) - 3) 2

end

end A034872.P6488786731319563408

namespace A034872

/-- `A034851(A007590(n+1))+(A000040(n+2)-3)%2` -/
def P6488786731319563408.Spec : Prop :=
  ∀ n, P6488786731319563408.a n = A034872 n

end A034872

/-!
# A034873: Primes in which each digit occurs in runs of at least 2.

The programs for A034873, there is no canonical definition to state claims against.
-/

/-! ## A034873.P9607432809412944651

`∩[A033023(n+1), A383978(n+1)]`
-/

namespace A034873.P9607432809412944651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034873.P9607432809412944651

/-! ## A034873.P11682512544301510826

`p?[A321536(n)]`
-/

namespace A034873.P11682512544301510826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321536 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034873.P11682512544301510826

/-! ## A034873.P5040986869961433897

`p?[A033023(n+1)]`
-/

namespace A034873.P5040986869961433897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034873.P5040986869961433897

/-! ## A034873.P12463524518472139743

`record[p?[A033023(A246694(n))]]`
-/

namespace A034873.P12463524518472139743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033023 (A246694 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034873.P12463524518472139743

/-! ## A034873.P18274268464452578766

`record[p?[A033023(A291766(n))]]`
-/

namespace A034873.P18274268464452578766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033023 (A291766 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034873.P18274268464452578766

/-!
# A034874: a(1) = 1; for n >= 2, a(n) = n times the reverse of a(n-1).

The programs for A034874, there is no canonical definition to state claims against.
-/

/-! ## A034874.P17510792395636499506

`(n+1)*A096138(A028310(n))`
-/

namespace A034874.P17510792395636499506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A096138 (A028310 n).toNat

end

end A034874.P17510792395636499506

/-! ## A034874.P11602270674500314072

`(n+1)*A096138(gcd(n, A008486(n)))`
-/

namespace A034874.P11602270674500314072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A096138 (Int.gcd (n : ℤ) (A008486 n))

end

end A034874.P11602270674500314072

/-! ## A034874.P1460556534550074220

`A096138(n-A165471(n²)+1)*(n+1)`
-/

namespace A034874.P1460556534550074220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096138 ((n : ℤ) - A165471 (n ^ 2) + 1).toNat * (n + 1 : ℤ)

end

end A034874.P1460556534550074220

/-! ## A034874.P2311888328634254325

`A096138(A028310(n))*A280172(A000124(n))`
-/

namespace A034874.P2311888328634254325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096138 (A028310 n).toNat * A280172 (A000124 n).toNat

end

end A034874.P2311888328634254325

/-! ## A034874.P2549845986440290809

`(n+1)*A004086(a(n-1))` with `a(0)=1`
-/

namespace A034874.P2549845986440290809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * A004086 (a (n - 1)).toNat

end

end A034874.P2549845986440290809

/-!
# A034876: Number of ways to write n! as a product of smaller factorials each greater than 1.

The programs for A034876, there is no canonical definition to state claims against.
-/

/-! ## A034876.P13251993484248674772

`A325509(n+1)-1`
-/

namespace A034876.P13251993484248674772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325509 (n + 1) - 1

end

end A034876.P13251993484248674772

/-! ## A034876.P11459146764551401835

`∑[Δ[A325509(n)]%3]`
-/

namespace A034876.P11459146764551401835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325509 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034876.P11459146764551401835

/-! ## A034876.P11833496496195974621

`5%A325509(Δ[n²]-n)`
-/

namespace A034876.P11833496496195974621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (A325509 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A034876.P11833496496195974621

/-! ## A034876.P797392143642942781

`round(log2(A325509(n-log2(1/2))))`
-/

namespace A034876.P797392143642942781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A325509 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat : ℝ))

end

end A034876.P797392143642942781

/-! ## A034876.P14611677836751735072

`A003056(∑[2*Δ[A325509(n)]])`
-/

namespace A034876.P14611677836751735072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325509 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A034876.P14611677836751735072

/-! ## A034876.P3114722044624256512

`A008507(Δ[2*∑[A325509(n)]])`
-/

namespace A034876.P3114722044624256512
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325509 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008507 (f1 (n + 1) - f1 n).toNat

end

end A034876.P3114722044624256512

/-! ## A034876.P9638599697427163713

`A056926(∑[2*Δ[A325509(n)]])`
-/

namespace A034876.P9638599697427163713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325509 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A034876.P9638599697427163713

/-! ## A034876.P3611869053825629552

`A074206(∑[2*Δ[A325509(n)]])`
-/

namespace A034876.P3611869053825629552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325509 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A034876.P3611869053825629552

/-! ## A034876.P6761741649979349913

`Δ[A002262(∑[A325509(n)+n])]`
-/

namespace A034876.P6761741649979349913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325509 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034876.P6761741649979349913

/-! ## A034876.P3090421602609108832

`∑[Δ[A325509(n)]*A178334(n)]`
-/

namespace A034876.P3090421602609108832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325509 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A178334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034876.P3090421602609108832

/-! ## A034876.P15613893562455391887

`A001221(∑[2*Δ[A325509(n)]]!)`
-/

namespace A034876.P15613893562455391887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325509 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A034876.P15613893562455391887

/-! ## A034876.P2457917551564199699

`∑[A106400(n)²*Δ[A325509(n)]]`
-/

namespace A034876.P2457917551564199699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325509 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n ^ 2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034876.P2457917551564199699

/-! ## A034876.P2034654147011492077

`A008619(∑[2*Δ[A325509(n)]])-1`
-/

namespace A034876.P2034654147011492077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325509 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A034876.P2034654147011492077

/-! ## A034876.P4928995896115518050

`A002262(2*∑[2*Δ[A325509(n)]])`
-/

namespace A034876.P4928995896115518050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325509 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (2 * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A034876.P4928995896115518050

/-! ## A034876.P11063029740917764191

`∑[A000035(2*n)+Δ[A325509(n)]]`
-/

namespace A034876.P11063029740917764191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325509 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034876.P11063029740917764191

/-! ## A034876.P15445807429074933023

`∑[A325509(n+1)]%∑[A325509(n)]`
-/

namespace A034876.P15445807429074933023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A034876.P15445807429074933023

/-! ## A034876.P15188853426215978905

`∑[Δ[A325509(n)]+A008683(4*(n+1))]`
-/

namespace A034876.P15188853426215978905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325509 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + A008683 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034876.P15188853426215978905

/-! ## A034876.P4152982227571325943

`∑[A014963(8*n+6)*Δ[A325509(n)]]`
-/

namespace A034876.P4152982227571325943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325509 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (8 * n + 6) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034876.P4152982227571325943

/-! ## A034876.P9767194769359316650

`∑[2*Δ[A325509(n)]]/A001511(2*(2*n+1))`
-/

namespace A034876.P9767194769359316650
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325509 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A001511 (2 * (2 * n + 1)) : ℚ)

end

end A034876.P9767194769359316650

/-! ## A034876.P15867865891700194950

`A039255(A325509(n)+Δ[A325509(n)])`
-/

namespace A034876.P15867865891700194950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039255 (A325509 n + (f1 (n + 1) - f1 n)).toNat

end

end A034876.P15867865891700194950

/-!
# A034877: Rows of (Pascal's triangle - Losanitsch's triangle) (n >= 0, k >= 0).

The programs for A034877, the canonical program `A034877.P11761815301413299691` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034877 has offset 0).

The definition of A034877 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034877.P11761815301413299691

`A034852(lt[0, A034852(n)])`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A034877

/-- `A034852(lt[0, A034852(n)])` -/
def P11761815301413299691.Spec : Prop :=
  ∀ n, P11761815301413299691.a n = A034877 n

theorem P11761815301413299691.correct : P11761815301413299691.Spec := by
  intro n
  simp only [A034877]

end A034877

/-! ## A034877.P2050881074860961842

`A034852(A140978(n+1)-n)`
-/

namespace A034877.P2050881074860961842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034852 (A140978 (n + 1) - (n : ℤ)).toNat

end

end A034877.P2050881074860961842

namespace A034877

/-- `A034852(A140978(n+1)-n)` -/
def P2050881074860961842.Spec : Prop :=
  ∀ n, P2050881074860961842.a n = A034877 n

end A034877

/-! ## A034877.P18371929345021121919

`A034852(A003057(n+2)²-n)`
-/

namespace A034877.P18371929345021121919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034852 (A003057 (n + 2) ^ 2 - (n : ℤ)).toNat

end

end A034877.P18371929345021121919

namespace A034877

/-- `A034852(A003057(n+2)²-n)` -/
def P18371929345021121919.Spec : Prop :=
  ∀ n, P18371929345021121919.a n = A034877 n

end A034877

/-! ## A034877.P8921709126683818916

`A034852(comp[n*(1-A034852(n))])`
-/

namespace A034877.P8921709126683818916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A034852 n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034852 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A034877.P8921709126683818916

namespace A034877

/-- `A034852(comp[n*(1-A034852(n))])` -/
def P8921709126683818916.Spec : Prop :=
  ∀ n, P8921709126683818916.a n = A034877 n

end A034877

/-! ## A034877.P15516407146599545472

`A034852(2*A003057(n+2)+n)`
-/

namespace A034877.P15516407146599545472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034852 (2 * A003057 (n + 2) + (n : ℤ)).toNat

end

end A034877.P15516407146599545472

namespace A034877

/-- `A034852(2*A003057(n+2)+n)` -/
def P15516407146599545472.Spec : Prop :=
  ∀ n, P15516407146599545472.a n = A034877 n

end A034877

/-! ## A034877.P8179202356994588435

`A034852(A003057(n+2)+A003057(n+2)+n)`
-/

namespace A034877.P8179202356994588435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034852 (A003057 (n + 2) + (A003057 (n + 2) + (n : ℤ))).toNat

end

end A034877.P8179202356994588435

namespace A034877

/-- `A034852(A003057(n+2)+A003057(n+2)+n)` -/
def P8179202356994588435.Spec : Prop :=
  ∀ n, P8179202356994588435.a n = A034877 n

end A034877

/-! ## A034877.P18326341141041239741

`A034852(eq[0, A103451(n)])`
-/

namespace A034877.P18326341141041239741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034852 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A034877.P18326341141041239741

namespace A034877

/-- `A034852(eq[0, A103451(n)])` -/
def P18326341141041239741.Spec : Prop :=
  ∀ n, P18326341141041239741.a n = A034877 n

end A034877

/-! ## A034877.P13095028923607897824

`A034852(eq[0, A103452(n)])`
-/

namespace A034877.P13095028923607897824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034852 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A034877.P13095028923607897824

namespace A034877

/-- `A034852(eq[0, A103452(n)])` -/
def P13095028923607897824.Spec : Prop :=
  ∀ n, P13095028923607897824.a n = A034877 n

end A034877

/-! ## A034877.P16905693298973825158

`A034852(eq[0, A145677(n)])`
-/

namespace A034877.P16905693298973825158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034852 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A034877.P16905693298973825158

namespace A034877

/-- `A034852(eq[0, A145677(n)])` -/
def P16905693298973825158.Spec : Prop :=
  ∀ n, P16905693298973825158.a n = A034877 n

end A034877

/-! ## A034877.P15623838389292627737

`A034852(eq[3, A275015(n+1)])`
-/

namespace A034877.P15623838389292627737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034852 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A034877.P15623838389292627737

namespace A034877

/-- `A034852(eq[3, A275015(n+1)])` -/
def P15623838389292627737.Spec : Prop :=
  ∀ n, P15623838389292627737.a n = A034877 n

end A034877

/-!
# A034878: Numbers k such that k! can be written as the product of smaller factorials.

The programs for A034878, there is no canonical definition to state claims against.
-/

/-! ## A034878.P18260625868416508925

`eq[1, A035342(a(A034876(n)))]` with `a(0)=2, a(1)=1`
-/

namespace A034878.P18260625868416508925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A035342 (f2 (A034876 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034878.P18260625868416508925

/-! ## A034878.P4720556233684166983

`eq[1, A062190(a(A034876(n)))]` with `a(0)=2, a(1)=1`
-/

namespace A034878.P4720556233684166983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A062190 (f2 (A034876 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034878.P4720556233684166983

/-! ## A034878.P3829483865286677594

`eq[1, A097230(a(A034876(n)))]` with `a(0)=2, a(1)=1`
-/

namespace A034878.P3829483865286677594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A097230 (f2 (A034876 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034878.P3829483865286677594

/-! ## A034878.P10808183918274755080

`eq[1, A000010(a(A034876(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A034878.P10808183918274755080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A000010 (f2 (A034876 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034878.P10808183918274755080

/-! ## A034878.P148682991586349975

`eq[1, A000016(a(A034876(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A034878.P148682991586349975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A000016 (f2 (A034876 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034878.P148682991586349975

/-! ## A034878.P2622315264141480520

`eq[1, A000045(a(A034876(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A034878.P2622315264141480520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A000045 (f2 (A034876 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034878.P2622315264141480520

/-! ## A034878.P7943333115464843127

`eq[1, A008620(a(A034876(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A034878.P7943333115464843127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A008620 (f2 (A034876 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034878.P7943333115464843127

/-! ## A034878.P3795836440006094359

`eq[1, A000001(a(A034876(n)))]` with `a(0)=6, a(1)=1`
-/

namespace A034878.P3795836440006094359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6, 1] fun n f2 =>
  A000001 (f2 (A034876 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034878.P3795836440006094359

/-! ## A034878.P17147190587140761473

`eq[1, A033932(a(A034876(n)))]` with `a(0)=7, a(1)=1`
-/

namespace A034878.P17147190587140761473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [7, 1] fun n f2 =>
  A033932 (f2 (A034876 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034878.P17147190587140761473

/-!
# A034880: Minimal number of rectangles with integer sides that will form any rectangle with area n.

The programs for A034880, there is no canonical definition to state claims against.
-/

/-! ## A034880.P1536108491952435282

`A058318(∑{d}[A095118(n+1), #])-char[23]`
-/

namespace A034880.P1536108491952435282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095118 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058318 (∑ d ∈ Nat.divisors (f1 n).natAbs, d) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A034880.P1536108491952435282

/-! ## A034880.P16674885702215673562

`A210568(∑{d}[A095118(n+1), #])-1-char[23]`
-/

namespace A034880.P16674885702215673562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095118 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210568 (∑ d ∈ Nat.divisors (f1 n).natAbs, d) - 1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A034880.P16674885702215673562

/-! ## A034880.P15348482921078342024

`A084558(A326302(A072499(n+1)²))`
-/

namespace A034880.P15348482921078342024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A326302 (A072499 (n + 1) ^ 2).toNat).toNat

end

end A034880.P15348482921078342024

/-! ## A034880.P1917389939255362584

`A210568(∑{d}[A095118(n+1), #])-A062977(n+1)!`
-/

namespace A034880.P1917389939255362584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210568 (∑ d ∈ Nat.divisors (f1 n).natAbs, d) - (Nat.factorial (A062977 (n + 1)).toNat : ℤ)

end

end A034880.P1917389939255362584

/-! ## A034880.P11372768817302451073

`A379631(A332031(n+1))`
-/

namespace A034880.P11372768817302451073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379631 (A332031 (n + 1)).toNat

end

end A034880.P11372768817302451073

/-!
# A034881: a(1) = 1; for n>1, a(n) = smallest integer > a(n-1) such that a(n)*a(i)+1 is prime for all 1 <= i <= n-1.

The programs for A034881, there is no canonical definition to state claims against.
-/

/-! ## A034881.P2320945123067179469

`∑[A210966(lcm(n, a(n-1)))]` with `a(0)=1`
-/

namespace A034881.P2320945123067179469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A210966 (Int.lcm (n : ℤ) (f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034881.P2320945123067179469

/-! ## A034881.P4584596289472813097

`p?[∏{d}[A260443(n)+1, #]]-1`
-/

namespace A034881.P4584596289472813097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1

end

end A034881.P4584596289472813097

/-!
# A034882: Product of consecutive factorials.

The programs for A034882, there is no canonical definition to state claims against.
-/

/-! ## A034882.P13231966428433113333

`A058295(lt[A208132(2*n+3), A208155(n+1)])`
-/

namespace A034882.P13231966428433113333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208132 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058295 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A034882.P13231966428433113333

/-! ## A034882.P6667388617047318992

`A058295(lt[A076822(n), A008517(2*(n+2))])`
-/

namespace A034882.P6667388617047318992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076822 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008517 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058295 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A034882.P6667388617047318992

/-! ## A034882.P1359176117698174219

`A058295(lt[A115625(n), A222029(2*n+3)])`
-/

namespace A034882.P1359176117698174219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115625 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222029 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058295 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A034882.P1359176117698174219

/-! ## A034882.P16465290761938271552

`A058295(lt[A248505(n+1), A094816(2*(n+1))])`
-/

namespace A034882.P16465290761938271552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094816 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058295 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A034882.P16465290761938271552

/-! ## A034882.P7131445327888271599

`A058295(lt[A079171(n+3), A263303(2*n+3)])`
-/

namespace A034882.P7131445327888271599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079171 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263303 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058295 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A034882.P7131445327888271599

/-!
# A034883: Maximum length of Euclidean algorithm starting with n and any nonnegative i

The programs for A034883, there is no canonical definition to state claims against.
-/

/-! ## A034883.P12258927951720372733

`A071647(n+1)%(n+1)`
-/

namespace A034883.P12258927951720372733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071647 (n + 1)) (n + 1 : ℤ)

end

end A034883.P12258927951720372733

/-! ## A034883.P6361303570860582167

`A057427(n)+A049819(n+1)`
-/

namespace A034883.P6361303570860582167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A049819 (n + 1)

end

end A034883.P6361303570860582167

/-! ## A034883.P14433793741419168850

`A071647(n+1)-A000007(n)`
-/

namespace A034883.P14433793741419168850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071647 (n + 1) - A000007 n

end

end A034883.P14433793741419168850

/-! ## A034883.P12222743255419903240

`A049819(n+1)-A057428(n)`
-/

namespace A034883.P12222743255419903240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049819 (n + 1) - A057428 n

end

end A034883.P12222743255419903240

/-! ## A034883.P2775850652357873329

`A057427(n)*A071647(n+1)`
-/

namespace A034883.P2775850652357873329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A071647 (n + 1)

end

end A034883.P2775850652357873329

/-! ## A034883.P12518046056053889363

`and(A003817(n), A071647(n+1))`
-/

namespace A034883.P12518046056053889363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 n) (A071647 (n + 1))

end

end A034883.P12518046056053889363

/-! ## A034883.P2064208741028135170

`and(A057428(n), A071647(n+1))`
-/

namespace A034883.P2064208741028135170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A071647 (n + 1))

end

end A034883.P2064208741028135170

/-! ## A034883.P17335884143579180218

`and(A071647(n+1), A134824(n))`
-/

namespace A034883.P17335884143579180218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071647 (n + 1)) (A134824 n)

end

end A034883.P17335884143579180218

/-! ## A034883.P15451212765589399093

`A071647(n+1)-A036987(2*n)`
-/

namespace A034883.P15451212765589399093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071647 (n + 1) - A036987 (2 * n)

end

end A034883.P15451212765589399093

/-! ## A034883.P16279372680681220174

`and(1, A028871(n+1))*A071647(n+1)`
-/

namespace A034883.P16279372680681220174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A028871 (n + 1)) * A071647 (n + 1)

end

end A034883.P16279372680681220174

/-! ## A034883.P16920665589679792494

`and(1, A045382(n+1))*A071647(n+1)`
-/

namespace A034883.P16920665589679792494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A045382 (n + 1)) * A071647 (n + 1)

end

end A034883.P16920665589679792494

/-! ## A034883.P2940654561383785492

`and(1, A049001(n+1))*A071647(n+1)`
-/

namespace A034883.P2940654561383785492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A049001 (n + 1)) * A071647 (n + 1)

end

end A034883.P2940654561383785492

/-! ## A034883.P2749538794325519420

`and(1, A049002(n+1))*A071647(n+1)`
-/

namespace A034883.P2749538794325519420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A049002 (n + 1)) * A071647 (n + 1)

end

end A034883.P2749538794325519420

/-! ## A034883.P18030901689693352970

`and(1, A116892(n+1))*A071647(n+1)`
-/

namespace A034883.P18030901689693352970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A116892 (n + 1)) * A071647 (n + 1)

end

end A034883.P18030901689693352970

/-! ## A034883.P4174539587589608645

`and(1, A133562(n+1))*A071647(n+1)`
-/

namespace A034883.P4174539587589608645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A133562 (n + 1)) * A071647 (n + 1)

end

end A034883.P4174539587589608645

/-! ## A034883.P9433789918371371768

`A001222(A105560(n+1))*A071647(n+1)`
-/

namespace A034883.P9433789918371371768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A105560 (n + 1)).toNat * A071647 (n + 1)

end

end A034883.P9433789918371371768

/-! ## A034883.P699734515119535857

`A000007(A000007(n)*A071647(n+1))*A071647(n+1)`
-/

namespace A034883.P699734515119535857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A000007 n * A071647 (n + 1)).toNat * A071647 (n + 1)

end

end A034883.P699734515119535857

/-! ## A034883.P9906788302677869368

`and(1, A115374(n+1))*A071647(n+1)`
-/

namespace A034883.P9906788302677869368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A115374 (n + 1)) * A071647 (n + 1)

end

end A034883.P9906788302677869368

/-! ## A034883.P6717984680036459515

`and(1, A161340(n))*A071647(n+1)`
-/

namespace A034883.P6717984680036459515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A161340 n) * A071647 (n + 1)

end

end A034883.P6717984680036459515

/-! ## A034883.P8142719400368681462

`and(1, A171503(n))*A071647(n+1)`
-/

namespace A034883.P8142719400368681462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A171503 n) * A071647 (n + 1)

end

end A034883.P8142719400368681462

/-!
# A034884: Numbers k such that k < d(k)^2, where d(k) = A000005(k).

The programs for A034884, there is no canonical definition to state claims against.
-/

/-! ## A034884.P13322586786260959095

`lt[(n/∏{e}[n, #+1])², n]`
-/

namespace A034884.P13322586786260959095
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℚ)) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n

end

end A034884.P13322586786260959095

/-! ## A034884.P10176913503712682923

`lt[n+1, ∏{e}[n+1, #+1]²]+1`
-/

namespace A034884.P10176913503712682923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A034884.P10176913503712682923

/-! ## A034884.P1133855928139168308

`lt[n, A277692(2*n+1)²]`
-/

namespace A034884.P1133855928139168308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A034884.P1133855928139168308

/-! ## A034884.P5133060832366246477

`record[(n+2)%A035116(n+2)]`
-/

namespace A034884.P5133060832366246477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A035116 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034884.P5133060832366246477

/-! ## A034884.P11166257358258630125

`lt[n+1, A035116(n+1)]+1`
-/

namespace A034884.P11166257358258630125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035116 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A034884.P11166257358258630125

/-! ## A034884.P5596897288558383128

`lt[n+1, Δ[A006218(n)]²]+1`
-/

namespace A034884.P5596897288558383128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) - f3 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A034884.P5596897288558383128

/-! ## A034884.P147190081705687497

`lt[n+1, A000005(n+1)²]+1`
-/

namespace A034884.P147190081705687497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A034884.P147190081705687497

/-! ## A034884.P14457707816930029673

`lt[n, A183063(A004277(n))²]`
-/

namespace A034884.P14457707816930029673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A004277 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A034884.P14457707816930029673

/-! ## A034884.P8288904825197179763

`filter[A035033(n+1), A324732(#)]`
-/

namespace A034884.P8288904825197179763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324732 (f1 j).toNat = 1) n)

end

end A034884.P8288904825197179763

/-! ## A034884.P2206566576566446746

`lt[A000196(n+1), A000005(n+1)]+1`
-/

namespace A034884.P2206566576566446746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A034884.P2206566576566446746

/-!
# A034885: Record values of sigma(n).

The programs for A034885, there is no canonical definition to state claims against.
-/

/-! ## A034885.P1819106381321736993

`A085443(n+2)-1`
-/

namespace A034885.P1819106381321736993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085443 (n + 2) - 1

end

end A034885.P1819106381321736993

/-! ## A034885.P5024916764783039995

`∑[abs(Δ[A085443(n+1)])]`
-/

namespace A034885.P5024916764783039995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085443 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034885.P5024916764783039995

/-! ## A034885.P1567817680844279253

`∑{d}[A002093(n+1), #]`
-/

namespace A034885.P1567817680844279253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002093 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A034885.P1567817680844279253

/-! ## A034885.P17961715836601256086

`∑{d}[∪[A181311(n+1), A181312(n+1)], #]`
-/

namespace A034885.P17961715836601256086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181311 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181312 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A034885.P17961715836601256086

/-! ## A034885.P16106499515978983465

`record[A000203(n+1)]`
-/

namespace A034885.P16106499515978983465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034885.P16106499515978983465

/-! ## A034885.P4777633262171078775

`A000203(A002093(n+1))`
-/

namespace A034885.P4777633262171078775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002093 (n + 1)).toNat

end

end A034885.P4777633262171078775

/-! ## A034885.P12656643865117368879

`record[A090128(n+1)]`
-/

namespace A034885.P12656643865117368879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034885.P12656643865117368879

/-! ## A034885.P4453870170140897116

`record[A074400(n+1)/2]`
-/

namespace A034885.P4453870170140897116
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034885.P4453870170140897116

/-! ## A034885.P332536090931898180

`record[ceil(A002659(n+1)/2)]`
-/

namespace A034885.P332536090931898180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002659 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034885.P332536090931898180

/-! ## A034885.P7775258316633277527

`record[A324122(n+1)+A324121(n+1)]`
-/

namespace A034885.P7775258316633277527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324122 (n + 1) + A324121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034885.P7775258316633277527

/-!
# A034886: Number of digits in n!.

The programs for A034886, there is no canonical definition to state claims against.
-/

/-! ## A034886.P10016928315895733706

`A027869(n)+A079680(n)+A079714(n)+A079684(n)+A079688(n)+A079690(n)+A079691(n)+A079692(n)+A079693(n)+A079694(n)`
-/

namespace A034886.P10016928315895733706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027869 n + A079680 n + A079714 n + A079684 n + A079688 n + A079690 n + A079691 n + A079692 n + A079693 n + A079694 n

end

end A034886.P10016928315895733706

/-! ## A034886.P5754077531482532281

`A241730(n)+A055642(n)`
-/

namespace A034886.P5754077531482532281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241730 n + A055642 n

end

end A034886.P5754077531482532281

/-! ## A034886.P7759748776417080015

`A356758(n)+A027869(n)`
-/

namespace A034886.P7759748776417080015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356758 n + A027869 n

end

end A034886.P7759748776417080015

/-! ## A034886.P11327363796955724872

`A241730(n)+dr(A348783(n))`
-/

namespace A034886.P11327363796955724872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241730 n + (SequenceMachineLib.digitalRoot (A348783 n) : ℤ)

end

end A034886.P11327363796955724872

/-! ## A034886.P1728135161428834921

`A241730(n)+A004218(A267417(n)+1+n)`
-/

namespace A034886.P1728135161428834921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241730 n + A004218 (A267417 n + 1 + (n : ℤ)).toNat

end

end A034886.P1728135161428834921

/-! ## A034886.P6190079234118911668

`A027868(n)+A008906(n)`
-/

namespace A034886.P6190079234118911668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 n + A008906 n

end

end A034886.P6190079234118911668

/-! ## A034886.P17030238837450541121

`A191610(n+1)+A008906(n)-n`
-/

namespace A034886.P17030238837450541121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191610 (n + 1) + (A008906 n - (n : ℤ))

end

end A034886.P17030238837450541121

/-! ## A034886.P9092263508376511617

`A008906(n)+A027869(n)-A137581(n)`
-/

namespace A034886.P9092263508376511617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008906 n + (A027869 n - A137581 n)

end

end A034886.P9092263508376511617

/-! ## A034886.P6002352539983767530

`∑[A112765(n+1)]+A008906(n)-A112765(n+1)`
-/

namespace A034886.P6002352539983767530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A008906 n - A112765 (n + 1))

end

end A034886.P6002352539983767530

/-! ## A034886.P14435147561683796764

`A008906(n)+∑[A112765(A257088(n))]`
-/

namespace A034886.P14435147561683796764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (A257088 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008906 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034886.P14435147561683796764

/-!
# A034887: Number of digits in 2^n.

The programs for A034887, the canonical program `A034887.P3014094780525461233` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034887 has offset 0).

The definition of A034887 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034887.P3014094780525461233

`floor(n*log(2)/log(10))+1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A034887

/-- `floor(n*log(2)/log(10))+1` -/
def P3014094780525461233.Spec : Prop :=
  ∀ n, P3014094780525461233.a n = A034887 n

theorem P3014094780525461233.correct : P3014094780525461233.Spec := by
  intro n
  simp only [A034887]

end A034887

/-! ## A034887.P7905380341221436660

`∑[char[A067497(n)]]`
-/

namespace A034887.P7905380341221436660
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067497 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034887.P7905380341221436660

namespace A034887

/-- `∑[char[A067497(n)]]` -/
def P7905380341221436660.Spec : Prop :=
  ∀ n, (P7905380341221436660.a n : ℤ) = A034887 n

end A034887

/-! ## A034887.P10988941926380428017

`ceil(A210434(n)/2)`
-/

namespace A034887.P10988941926380428017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A210434 n : ℚ) / 2⌉

end

end A034887.P10988941926380428017

namespace A034887

/-- `ceil(A210434(n)/2)` -/
def P10988941926380428017.Spec : Prop :=
  ∀ n, P10988941926380428017.a n = A034887 n

end A034887

/-! ## A034887.P12468991265557003039

`xor(ceil(n/log2(10)), A000007(n))`
-/

namespace A034887.P12468991265557003039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌈(n : ℝ) / Real.logb 2 (10 : ℝ)⌉ (A000007 n)

end

end A034887.P12468991265557003039

namespace A034887

/-- `xor(ceil(n/log2(10)), A000007(n))` -/
def P12468991265557003039.Spec : Prop :=
  ∀ n, P12468991265557003039.a n = A034887 n

end A034887

/-! ## A034887.P7319721140210078131

`A008619(2*floor(n*1/log2(10)))`
-/

namespace A034887.P7319721140210078131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * ⌊(n : ℝ) * (1 / Real.logb 2 (10 : ℝ))⌋).toNat

end

end A034887.P7319721140210078131

namespace A034887

/-- `A008619(2*floor(n*1/log2(10)))` -/
def P7319721140210078131.Spec : Prop :=
  ∀ n, P7319721140210078131.a n = A034887 n

end A034887

/-! ## A034887.P2104475001900061837

`A065033(A210434(n))`
-/

namespace A034887.P2104475001900061837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A210434 n).toNat

end

end A034887.P2104475001900061837

namespace A034887

/-- `A065033(A210434(n))` -/
def P2104475001900061837.Spec : Prop :=
  ∀ n, P2104475001900061837.a n = A034887 n

end A034887

/-! ## A034887.P1469689366272793959

`A028310(A192543(n+1))`
-/

namespace A034887.P1469689366272793959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A192543 (n + 1)).toNat

end

end A034887.P1469689366272793959

namespace A034887

/-- `A028310(A192543(n+1))` -/
def P1469689366272793959.Spec : Prop :=
  ∀ n, P1469689366272793959.a n = A034887 n

end A034887

/-! ## A034887.P5500657678397912571

`A192543(A000007(n)+1+n)`
-/

namespace A034887.P5500657678397912571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192543 (A000007 n + 1 + (n : ℤ)).toNat

end

end A034887.P5500657678397912571

namespace A034887

/-- `A192543(A000007(n)+1+n)` -/
def P5500657678397912571.Spec : Prop :=
  ∀ n, P5500657678397912571.a n = A034887 n

end A034887

/-! ## A034887.P6611660594964341804

`A192543(2-A125117(n)+n)`
-/

namespace A034887.P6611660594964341804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192543 (2 - A125117 n + (n : ℤ)).toNat

end

end A034887.P6611660594964341804

namespace A034887

/-- `A192543(2-A125117(n)+n)` -/
def P6611660594964341804.Spec : Prop :=
  ∀ n, P6611660594964341804.a n = A034887 n

end A034887

/-! ## A034887.P13372761288434258516

`A192543(2-(A125117(n)-n))`
-/

namespace A034887.P13372761288434258516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192543 (2 - (A125117 n - (n : ℤ))).toNat

end

end A034887.P13372761288434258516

namespace A034887

/-- `A192543(2-(A125117(n)-n))` -/
def P13372761288434258516.Spec : Prop :=
  ∀ n, P13372761288434258516.a n = A034887 n

end A034887

/-! ## A034887.P17840794010443909569

`A110655(2*A210434(n))`
-/

namespace A034887.P17840794010443909569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (2 * A210434 n).toNat

end

end A034887.P17840794010443909569

namespace A034887

/-- `A110655(2*A210434(n))` -/
def P17840794010443909569.Spec : Prop :=
  ∀ n, P17840794010443909569.a n = A034887 n

end A034887

/-! ## A034887.P5405001957050047787

`A192543(A233583(n+2))`
-/

namespace A034887.P5405001957050047787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192543 (A233583 (n + 2)).toNat

end

end A034887.P5405001957050047787

namespace A034887

/-- `A192543(A233583(n+2))` -/
def P5405001957050047787.Spec : Prop :=
  ∀ n, P5405001957050047787.a n = A034887 n

end A034887

/-! ## A034887.P16194454027793985226

`gcd(A025543(n), A192543(n+1))`
-/

namespace A034887.P16194454027793985226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025543 n) (A192543 (n + 1))

end

end A034887.P16194454027793985226

namespace A034887

/-- `gcd(A025543(n), A192543(n+1))` -/
def P16194454027793985226.Spec : Prop :=
  ∀ n, (P16194454027793985226.a n : ℤ) = A034887 n

end A034887

/-! ## A034887.P11917895940949373105

`∑{digits}[2^n, and(1, #)!]`
-/

namespace A034887.P11917895940949373105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial (Nat.land 1 x)).sum

end

end A034887.P11917895940949373105

namespace A034887

/-- `∑{digits}[2^n, and(1, #)!]` -/
def P11917895940949373105.Spec : Prop :=
  ∀ n, (P11917895940949373105.a n : ℤ) = A034887 n

end A034887

/-! ## A034887.P6570286401098511312

`∑{digits}[A000079(n), A015280(#)]`
-/

namespace A034887.P6570286401098511312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A015280 x).sum

end

end A034887.P6570286401098511312

namespace A034887

/-- `∑{digits}[A000079(n), A015280(#)]` -/
def P6570286401098511312.Spec : Prop :=
  ∀ n, P6570286401098511312.a n = A034887 n

end A034887

/-! ## A034887.P3489225051584577455

`∑{digits}[A000079(n), A015282(#)]`
-/

namespace A034887.P3489225051584577455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A015282 x).sum

end

end A034887.P3489225051584577455

namespace A034887

/-- `∑{digits}[A000079(n), A015282(#)]` -/
def P3489225051584577455.Spec : Prop :=
  ∀ n, P3489225051584577455.a n = A034887 n

end A034887

/-! ## A034887.P6960211830748467363

`∑{digits}[A000079(n), A015322(#)]`
-/

namespace A034887.P6960211830748467363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A015322 x).sum

end

end A034887.P6960211830748467363

namespace A034887

/-- `∑{digits}[A000079(n), A015322(#)]` -/
def P6960211830748467363.Spec : Prop :=
  ∀ n, P6960211830748467363.a n = A034887 n

end A034887

/-! ## A034887.P15452283736101532564

`∑{digits}[A000225(n), A015280(#)]`
-/

namespace A034887.P15452283736101532564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A015280 x).sum

end

end A034887.P15452283736101532564

namespace A034887

/-- `∑{digits}[A000225(n), A015280(#)]` -/
def P15452283736101532564.Spec : Prop :=
  ∀ n, P15452283736101532564.a n = A034887 n

end A034887

/-! ## A034887.P9859612848303796513

`∑{digits}[A000225(n), A015282(#)]`
-/

namespace A034887.P9859612848303796513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A015282 x).sum

end

end A034887.P9859612848303796513

namespace A034887

/-- `∑{digits}[A000225(n), A015282(#)]` -/
def P9859612848303796513.Spec : Prop :=
  ∀ n, P9859612848303796513.a n = A034887 n

end A034887

/-! ## A034887.P17731052493237992616

`∑{digits}[A000225(n), A015322(#)]`
-/

namespace A034887.P17731052493237992616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A015322 x).sum

end

end A034887.P17731052493237992616

namespace A034887

/-- `∑{digits}[A000225(n), A015322(#)]` -/
def P17731052493237992616.Spec : Prop :=
  ∀ n, P17731052493237992616.a n = A034887 n

end A034887

/-!
# A034888: Number of digits in 3^n.

The programs for A034888, the canonical program `A034888.P15382381024105369470` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034888 has offset 0).

The definition of A034888 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034888.P15382381024105369470

`floor(n*log(3)/log(10))+1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A034888

/-- `floor(n*log(3)/log(10))+1` -/
def P15382381024105369470.Spec : Prop :=
  ∀ n, P15382381024105369470.a n = A034888 n

theorem P15382381024105369470.correct : P15382381024105369470.Spec := by
  intro n
  simp only [A034888]

end A034888

/-! ## A034888.P8529860849050016064

`∑[round(1/A060956(n))]`
-/

namespace A034888.P8529860849050016064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A060956 n : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034888.P8529860849050016064

namespace A034888

/-- `∑[round(1/A060956(n))]` -/
def P8529860849050016064.Spec : Prop :=
  ∀ n, P8529860849050016064.a n = A034888 n

end A034888

/-! ## A034888.P14417136710493220986

`A028310(A055256(n)+A055255(n))`
-/

namespace A034888.P14417136710493220986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A055256 n + A055255 n).toNat

end

end A034888.P14417136710493220986

namespace A034888

/-- `A028310(A055256(n)+A055255(n))` -/
def P14417136710493220986.Spec : Prop :=
  ∀ n, P14417136710493220986.a n = A034888 n

end A034888

/-! ## A034888.P14207600774859898676

`∑{digits}[3^n, and(1, #)!]`
-/

namespace A034888.P14207600774859898676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial (Nat.land 1 x)).sum

end

end A034888.P14207600774859898676

namespace A034888

/-- `∑{digits}[3^n, and(1, #)!]` -/
def P14207600774859898676.Spec : Prop :=
  ∀ n, (P14207600774859898676.a n : ℤ) = A034888 n

end A034888

/-! ## A034888.P14725946223583846723

`∑{digits}[3^n, A036370(#)]`
-/

namespace A034888.P14725946223583846723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A036370 x).sum

end

end A034888.P14725946223583846723

namespace A034888

/-- `∑{digits}[3^n, A036370(#)]` -/
def P14725946223583846723.Spec : Prop :=
  ∀ n, P14725946223583846723.a n = A034888 n

end A034888

/-! ## A034888.P7233456613085139346

`∑{digits}[3^n, A247889(#)]`
-/

namespace A034888.P7233456613085139346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A247889 x).sum

end

end A034888.P7233456613085139346

namespace A034888

/-- `∑{digits}[3^n, A247889(#)]` -/
def P7233456613085139346.Spec : Prop :=
  ∀ n, P7233456613085139346.a n = A034888 n

end A034888

/-! ## A034888.P600933523544026281

`∑{digits}[3^n, A260340(#)]`
-/

namespace A034888.P600933523544026281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A260340 x).sum

end

end A034888.P600933523544026281

namespace A034888

/-- `∑{digits}[3^n, A260340(#)]` -/
def P600933523544026281.Spec : Prop :=
  ∀ n, P600933523544026281.a n = A034888 n

end A034888

/-! ## A034888.P2535441982790470936

`∑{digits}[3^n, A015716(or(1, #))]`
-/

namespace A034888.P2535441982790470936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A015716 (Nat.lor 1 x)).sum

end

end A034888.P2535441982790470936

namespace A034888

/-- `∑{digits}[3^n, A015716(or(1, #))]` -/
def P2535441982790470936.Spec : Prop :=
  ∀ n, P2535441982790470936.a n = A034888 n

end A034888

/-! ## A034888.P1096872070595410733

`∑{digits}[3^n, floor(atan(A027799(#)))]`
-/

namespace A034888.P1096872070595410733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊Real.arctan (A027799 (x + 11) : ℝ)⌋).sum

end

end A034888.P1096872070595410733

namespace A034888

/-- `∑{digits}[3^n, floor(atan(A027799(#)))]` -/
def P1096872070595410733.Spec : Prop :=
  ∀ n, P1096872070595410733.a n = A034888 n

end A034888

/-! ## A034888.P5343201910286010676

`∑{digits}[A004167(n), A055642(#)]`
-/

namespace A034888.P5343201910286010676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004167 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A055642 x).sum

end

end A034888.P5343201910286010676

namespace A034888

/-- `∑{digits}[A004167(n), A055642(#)]` -/
def P5343201910286010676.Spec : Prop :=
  ∀ n, P5343201910286010676.a n = A034888 n

end A034888

/-! ## A034888.P4364382329143691413

`∑{digits}[A024024(n), A206244(#)]`
-/

namespace A034888.P4364382329143691413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A206244 x).sum

end

end A034888.P4364382329143691413

namespace A034888

/-- `∑{digits}[A024024(n), A206244(#)]` -/
def P4364382329143691413.Spec : Prop :=
  ∀ n, P4364382329143691413.a n = A034888 n

end A034888

/-! ## A034888.P17020295227818928387

`∑{digits}[A000244(n), A059841(2*#)]`
-/

namespace A034888.P17020295227818928387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A059841 (2 * x)).sum

end

end A034888.P17020295227818928387

namespace A034888

/-- `∑{digits}[A000244(n), A059841(2*#)]` -/
def P17020295227818928387.Spec : Prop :=
  ∀ n, P17020295227818928387.a n = A034888 n

end A034888

/-! ## A034888.P7702839896106397702

`∑{digits}[A004167(n), A059841(2*#)]`
-/

namespace A034888.P7702839896106397702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004167 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A059841 (2 * x)).sum

end

end A034888.P7702839896106397702

namespace A034888

/-- `∑{digits}[A004167(n), A059841(2*#)]` -/
def P7702839896106397702.Spec : Prop :=
  ∀ n, P7702839896106397702.a n = A034888 n

end A034888

/-! ## A034888.P13459721901364469895

`∑{digits}[3^n, A007318(A007318(#))]`
-/

namespace A034888.P13459721901364469895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A007318 (A007318 x).toNat).sum

end

end A034888.P13459721901364469895

namespace A034888

/-- `∑{digits}[3^n, A007318(A007318(#))]` -/
def P13459721901364469895.Spec : Prop :=
  ∀ n, P13459721901364469895.a n = A034888 n

end A034888

/-!
# A034889: Number of embeddings on the sphere of 2-connected planar graphs with n nodes.

The programs for A034889, there is no canonical definition to state claims against.
-/

/-! ## A034889.P1119593051115843581

`A089792(floor(10^n/9))+n+1`
-/

namespace A034889.P1119593051115843581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089792 ⌊(10 ^ n : ℚ) / 9⌋.toNat + (n + 1 : ℤ)

end

end A034889.P1119593051115843581

/-!
# A034891: Number of different products of partitions of n; number of partitions of n into prime parts (1 included); number of distinct orders of Abelian subgroups of symmetric group S_n.

The programs for A034891, there is no canonical definition to state claims against.
-/

/-! ## A034891.P8426837131920373103

`A000041(n)-A353188(n)`
-/

namespace A034891.P8426837131920373103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A353188 n

end

end A034891.P8426837131920373103

/-! ## A034891.P10182933520112667546

`∑[A000607(n)]`
-/

namespace A034891.P10182933520112667546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034891.P10182933520112667546

/-! ## A034891.P9966436538694907280

`A298603(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A034891.P9966436538694907280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A298603 n + a (n - 2)

end

end A034891.P9966436538694907280

/-! ## A034891.P3712034724880846153

`∑[A184199(n)+A184198(n)]`
-/

namespace A034891.P3712034724880846153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184199 n + A184198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034891.P3712034724880846153

/-! ## A034891.P13272450749753786750

`A000607(n%A338890(n))+a(n-1)` with `a(0)=1`
-/

namespace A034891.P13272450749753786750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000607 (Int.tmod (n : ℤ) (A338890 n)).toNat + a (n - 1)

end

end A034891.P13272450749753786750

/-! ## A034891.P8879342379482194229

`A000607(A001281(2*n))+a(n-1)` with `a(0)=1`
-/

namespace A034891.P8879342379482194229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000607 (A001281 (2 * n)).toNat + a (n - 1)

end

end A034891.P8879342379482194229

/-! ## A034891.P16921038190961197106

`A000607(A004526(n+n))+a(n-1)` with `a(0)=1`
-/

namespace A034891.P16921038190961197106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000607 (A004526 (n + n)).toNat + a (n - 1)

end

end A034891.P16921038190961197106

/-! ## A034891.P895967107993492092

`2*A339380(n)-A338826(n)`
-/

namespace A034891.P895967107993492092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339380 n - A338826 n

end

end A034891.P895967107993492092

/-! ## A034891.P8378566491304997679

`A339380(n+1)+A339380(n)-A184198(n+1)`
-/

namespace A034891.P8378566491304997679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339380 (n + 1) + (A339380 n - A184198 (n + 1))

end

end A034891.P8378566491304997679

/-! ## A034891.P4775676441789591573

`A339381(n)+A339380(n)`
-/

namespace A034891.P4775676441789591573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339381 n + A339380 n

end

end A034891.P4775676441789591573

/-! ## A034891.P8665579443488732221

`A338826(n)+2*A339381(n)`
-/

namespace A034891.P8665579443488732221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338826 n + 2 * A339381 n

end

end A034891.P8665579443488732221

/-! ## A034891.P2143854291381823968

`A339381(n+1)+A339381(n)-A184199(n+1)`
-/

namespace A034891.P2143854291381823968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339381 (n + 1) + (A339381 n - A184199 (n + 1))

end

end A034891.P2143854291381823968

/-! ## A034891.P3780824172728853469

`∑[A046676(n)-A192541(n)]`
-/

namespace A034891.P3780824172728853469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046676 n - A192541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034891.P3780824172728853469

/-! ## A034891.P14835664492588307197

`A002095(n+1)+A002096(n+1)-A353188(n+1)`
-/

namespace A034891.P14835664492588307197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002095 (n + 1) + (A002096 (n + 1) - A353188 (n + 1))

end

end A034891.P14835664492588307197

/-! ## A034891.P4446499033459448053

`∑[A382956(∑[n])]`
-/

namespace A034891.P4446499033459448053
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382956 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034891.P4446499033459448053

/-!
# A034892: Number of balanced signed graphs on n unlabeled nodes.

The programs for A034892, there is no canonical definition to state claims against.
-/

/-! ## A034892.P5466045558649019389

`A343228(n^n)`
-/

namespace A034892.P5466045558649019389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343228 (n ^ n)

end

end A034892.P5466045558649019389

/-! ## A034892.P14456780775805733774

`A195174(xor(1, ∏[(n-1)/a(n-1)+n]))` with `a(0)=5`
-/

namespace A034892.P14456780775805733774
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [5] fun n f1 =>
  ((n : ℤ) - 1 : ℚ) / f1 (n - 1) + (n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (Int.xor 1 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j))).toNat

end

end A034892.P14456780775805733774

/-!
# A034893: Maximum of different products of partitions of n into distinct parts.

The programs for A034893, there is no canonical definition to state claims against.
-/

/-! ## A034893.P4902016025593836597

`A327036(A342513(n+1)+A238594(n+1))`
-/

namespace A034893.P4902016025593836597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327036 (A342513 (n + 1) + A238594 (n + 1)).toNat

end

end A034893.P4902016025593836597

/-! ## A034893.P2159185526022243158

`A350842(n)-A025469(A001333(n))`
-/

namespace A034893.P2159185526022243158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350842 n - A025469 (A001333 n).toNat

end

end A034893.P2159185526022243158

/-!
# A034894: Dropping any digit gives 0, 1 or a composite number.

The programs for A034894, there is no canonical definition to state claims against.
-/

/-! ## A034894.P14011067161560260139

`comp[A076979(n+1)-1]+1`
-/

namespace A034894.P14011067161560260139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076979 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A034894.P14011067161560260139

/-! ## A034894.P4377962117687386668

`record[A137735(gcd(n, A211396(n))²)]`
-/

namespace A034894.P4377962117687386668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (Int.gcd (n : ℤ) (A211396 n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034894.P4377962117687386668

/-! ## A034894.P17642800638891921510

`eq[A039997(n+1)+A021913(n²), A010051(n+1)]+1`
-/

namespace A034894.P17642800638891921510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (n + 1) + A021913 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A034894.P17642800638891921510

/-! ## A034894.P4459747950935534445

`eq[A276729(n)!, A004218(n+1)]`
-/

namespace A034894.P4459747950935534445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A276729 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034894.P4459747950935534445

/-! ## A034894.P15264392590892730425

`∩[A092629(n+1), A365472(n+1)]`
-/

namespace A034894.P15264392590892730425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365472 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034894.P15264392590892730425

/-!
# A034895: Dropping any digit gives a prime number.

The programs for A034895, there is no canonical definition to state claims against.
-/

/-! ## A034895.P6350085512123741380

`A106582(n+1)-A025466(A218543(n))`
-/

namespace A034895.P6350085512123741380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106582 (n + 1) - A025466 (A218543 n).toNat

end

end A034895.P6350085512123741380

/-! ## A034895.P7959883560995107641

`A106582(n+1)-A210714(A184964(n))`
-/

namespace A034895.P7959883560995107641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106582 (n + 1) - A210714 (A184964 n).toNat

end

end A034895.P7959883560995107641

/-! ## A034895.P15838388393382054733

`A106582(n+1)-A185036(A210714(n))`
-/

namespace A034895.P15838388393382054733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106582 (n + 1) - A185036 (A210714 n).toNat

end

end A034895.P15838388393382054733

/-! ## A034895.P5565389024512306442

`A106582(n+1)-A010051(A022177(n))`
-/

namespace A034895.P5565389024512306442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106582 (n + 1) - A010051 (A022177 n).toNat

end

end A034895.P5565389024512306442

/-! ## A034895.P87168550486863129

`A118759(A092619(n+1))`
-/

namespace A034895.P87168550486863129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A092619 (n + 1)).toNat

end

end A034895.P87168550486863129

/-!
# A034896: Number of solutions to a^2 + b^2 + 3*c^2 + 3*d^2 = n.

The programs for A034896, there is no canonical definition to state claims against.
-/

/-! ## A034896.P7819421892402129270

`abs(A131946(n))`
-/

namespace A034896.P7819421892402129270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A131946 n|

end

end A034896.P7819421892402129270

/-! ## A034896.P7855889228806196395

`A033999(n)*A131946(n)`
-/

namespace A034896.P7855889228806196395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A131946 n

end

end A034896.P7855889228806196395

/-! ## A034896.P5381598760895921694

`gcd(A000038(n), A131946(n))`
-/

namespace A034896.P5381598760895921694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A131946 n)

end

end A034896.P5381598760895921694

/-! ## A034896.P12149580689512579250

`lcm(A000034(n), A131946(n))`
-/

namespace A034896.P12149580689512579250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A131946 n)

end

end A034896.P12149580689512579250

/-! ## A034896.P14711812087881420641

`A111932(n+1)/A121456(n+1)*A131946(n)`
-/

namespace A034896.P14711812087881420641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111932 (n + 1) : ℚ) / (A121456 (n + 1) : ℚ) * (A131946 n : ℚ)

end

end A034896.P14711812087881420641

/-! ## A034896.P10553172396284601780

`A113262(n+1)/A131947(n+1)*A131946(n)`
-/

namespace A034896.P10553172396284601780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113262 (n + 1) : ℚ) / (A131947 (n + 1) : ℚ) * (A131946 n : ℚ)

end

end A034896.P10553172396284601780

/-! ## A034896.P12412753041787901079

`A125514(n/gcd(2, n))`
-/

namespace A034896.P12412753041787901079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125514 (SequenceMachineLib.roundAway ((n : ℚ) / (Nat.gcd 2 n : ℚ))).toNat

end

end A034896.P12412753041787901079

/-! ## A034896.P15968164703560616623

`A125514(A026741(n))`
-/

namespace A034896.P15968164703560616623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125514 (A026741 n).toNat

end

end A034896.P15968164703560616623

/-! ## A034896.P10325262491875355482

`A125514(A106619(n))`
-/

namespace A034896.P10325262491875355482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125514 (A106619 n).toNat

end

end A034896.P10325262491875355482

/-! ## A034896.P10440345714102896104

`A125514(2*n-A186813(n))`
-/

namespace A034896.P10440345714102896104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125514 ((2 * n : ℤ) - A186813 n).toNat

end

end A034896.P10440345714102896104

/-! ## A034896.P9051773684801282744

`A125514(n-A186813(n)+n)`
-/

namespace A034896.P9051773684801282744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125514 ((n : ℤ) - A186813 n + (n : ℤ)).toNat

end

end A034896.P9051773684801282744

/-! ## A034896.P18297511523139822360

`A125514(n-(A186813(n)-n))`
-/

namespace A034896.P18297511523139822360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125514 ((n : ℤ) - (A186813 n - (n : ℤ))).toNat

end

end A034896.P18297511523139822360

/-! ## A034896.P14018092360424379965

`A125514(A186813(n))`
-/

namespace A034896.P14018092360424379965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125514 (A186813 n).toNat

end

end A034896.P14018092360424379965

/-! ## A034896.P6647381224721824410

`A131946(lcm(2, n))`
-/

namespace A034896.P6647381224721824410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131946 (Nat.lcm 2 n)

end

end A034896.P6647381224721824410

/-! ## A034896.P11857269351575783015

`A131946(A109043(n))`
-/

namespace A034896.P11857269351575783015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131946 (A109043 n).toNat

end

end A034896.P11857269351575783015

/-! ## A034896.P1989909616323137942

`A131946(n*A000034(n))`
-/

namespace A034896.P1989909616323137942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131946 ((n : ℤ) * A000034 n).toNat

end

end A034896.P1989909616323137942

/-! ## A034896.P6372116464498896305

`A058490(n)/A156215(n)*A131946(n)`
-/

namespace A034896.P6372116464498896305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058490 n : ℚ) / (A156215 n : ℚ) * (A131946 n : ℚ)

end

end A034896.P6372116464498896305

/-! ## A034896.P16182431847191229594

`A125514(A165351(n))`
-/

namespace A034896.P16182431847191229594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125514 (A165351 n).toNat

end

end A034896.P16182431847191229594

/-! ## A034896.P180424032083306169

`A125514(A064680(n)+n)`
-/

namespace A034896.P180424032083306169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125514 (A064680 n + (n : ℤ)).toNat

end

end A034896.P180424032083306169

/-! ## A034896.P9762406623429883073

`A125514(A195312(n))`
-/

namespace A034896.P9762406623429883073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125514 (A195312 n).toNat

end

end A034896.P9762406623429883073

/-!
# A034897: Hyperperfect numbers: x such that x = 1 + k*(sigma(x)-x-1) for some k > 0.

The programs for A034897, there is no canonical definition to state claims against.
-/

/-! ## A034897.P8658035150654973247

`Δ[A174226(abs(1-n)+1)*A178334(n)]`
-/

namespace A034897.P8658035150654973247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174226 (|1 - (n : ℤ)| + 1).toNat * A178334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034897.P8658035150654973247

/-! ## A034897.P12736566348912897517

`Δ[A174226(abs(1-n)+1)%A013973(n)]`
-/

namespace A034897.P12736566348912897517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174226 (|1 - (n : ℤ)| + 1).toNat) (A013973 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034897.P12736566348912897517

/-! ## A034897.P4369965317826315435

`Δ[ceil(n/(n+1))*A174226(A028310(n))]`
-/

namespace A034897.P4369965317826315435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (n + 1 : ℚ)⌉ * A174226 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034897.P4369965317826315435

/-! ## A034897.P13201074611861620480

`Δ[A174226(A028310(n))*A178226(2*n)]`
-/

namespace A034897.P13201074611861620480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174226 (A028310 n).toNat * A178226 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034897.P13201074611861620480

/-!
# A034898: n-th term of A034897 is an a(n)-hyperperfect number.

The programs for A034898, there is no canonical definition to state claims against.
-/

/-! ## A034898.P6438665642136062046

`A339790(A034897(n+1))`
-/

namespace A034898.P6438665642136062046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339790 (A034897 (n + 1)).toNat

end

end A034898.P6438665642136062046

/-!
# A034899: Euler transform of powers of 2 [ 2,4,8,16,... ].

The programs for A034899, there is no canonical definition to state claims against.
-/

/-! ## A034899.P9673156931374266487

`A144074(∑[n+3])`
-/

namespace A034899.P9673156931374266487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A034899.P9673156931374266487

/-! ## A034899.P17664957164427552639

`record[A144074(n)/A144042(n+4)]`
-/

namespace A034899.P17664957164427552639
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144074 n : ℚ) / (A144042 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034899.P17664957164427552639

/-! ## A034899.P5369727077127932284

`A144074(A055998(n+1))^ceil(acot(n))`
-/

namespace A034899.P5369727077127932284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144074 (A055998 (n + 1)).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A034899.P5369727077127932284

/-! ## A034899.P10292095504438074722

`A144074(A055998(n+1))+char[A008892(n)]`
-/

namespace A034899.P10292095504438074722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008892 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (A055998 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A034899.P10292095504438074722

/-! ## A034899.P4050367286767425109

`A144074(A055998(n+1))^(A000007(n)+1)`
-/

namespace A034899.P4050367286767425109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144074 (A055998 (n + 1)).toNat : ℚ) ^ (A000007 n + 1 : ℤ)

end

end A034899.P4050367286767425109

/-! ## A034899.P9476667788555019250

`A144074(A055998(n+1))%A144068(n+1)`
-/

namespace A034899.P9476667788555019250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144074 (A055998 (n + 1)).toNat) (A144068 (n + 1))

end

end A034899.P9476667788555019250

/-! ## A034899.P3485121727313393692

`A144074(A055998(n+1))+(C(2, n+2)/5)^n*A000045(n)`
-/

namespace A034899.P3485121727313393692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144074 (A055998 (n + 1)).toNat : ℚ) + ((Nat.choose 2 (n + 2) : ℚ) / 5) ^ n * (A000045 n : ℚ)

end

end A034899.P3485121727313393692

/-! ## A034899.P6479456155060491372

`A290222(∑[4*n])`
-/

namespace A034899.P6479456155060491372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290222 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A034899.P6479456155060491372

