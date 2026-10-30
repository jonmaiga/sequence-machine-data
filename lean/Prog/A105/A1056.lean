import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A105602: Divide each Fibonacci number by its primitive part.

The programs for A105602, the canonical program `A105602.P5123984197085087200` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105602 has offset 1).

The definition of A105602 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 419 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105602.P15198749438780011814

`A000045(n+1)/A061446(n+1)`
-/

namespace A105602.P15198749438780011814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) / (A061446 (n + 1) : ℚ)

end

end A105602.P15198749438780011814

namespace A105602

/-- `A000045(n+1)/A061446(n+1)` -/
def P15198749438780011814.Spec : Prop :=
  ∀ n, P15198749438780011814.a n = (A105602 (n + 1) : ℚ)

end A105602

/-! ## A105602.P14191443504402700986

`∑[A212804(n)]/A061446(n+1)`
-/

namespace A105602.P14191443504402700986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A061446 (n + 1) : ℚ)

end

end A105602.P14191443504402700986

namespace A105602

/-- `∑[A212804(n)]/A061446(n+1)` -/
def P14191443504402700986.Spec : Prop :=
  ∀ n, P14191443504402700986.a n = (A105602 (n + 1) : ℚ)

end A105602

/-! ## A105602.P12751487744716511753

`A212804(n+2)/A061446(n+1)`
-/

namespace A105602.P12751487744716511753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212804 (n + 2) : ℚ) / (A061446 (n + 1) : ℚ)

end

end A105602.P12751487744716511753

namespace A105602

/-- `A212804(n+2)/A061446(n+1)` -/
def P12751487744716511753.Spec : Prop :=
  ∀ n, P12751487744716511753.a n = (A105602 (n + 1) : ℚ)

end A105602

/-! ## A105602.P3137325378317891965

`(A000071(n+1)+1)/A061446(n+1)`
-/

namespace A105602.P3137325378317891965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000071 (n + 1) + 1 : ℚ) / (A061446 (n + 1) : ℚ)

end

end A105602.P3137325378317891965

namespace A105602

/-- `(A000071(n+1)+1)/A061446(n+1)` -/
def P3137325378317891965.Spec : Prop :=
  ∀ n, P3137325378317891965.a n = (A105602 (n + 1) : ℚ)

end A105602

/-! ## A105602.P216495095481008487

`A163227(A005408(n))/A061446(n+1)`
-/

namespace A105602.P216495095481008487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163227 (A005408 n).toNat : ℚ) / (A061446 (n + 1) : ℚ)

end

end A105602.P216495095481008487

namespace A105602

/-- `A163227(A005408(n))/A061446(n+1)` -/
def P216495095481008487.Spec : Prop :=
  ∀ n, P216495095481008487.a n = (A105602 (n + 1) : ℚ)

end A105602

/-! ## A105602.P5123984197085087200

`gcd(A000045(n+1), ∏{p}[n+1, A000045((n+1)/#)])`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A105602

/-- `gcd(A000045(n+1), ∏{p}[n+1, A000045((n+1)/#)])` -/
def P5123984197085087200.Spec : Prop :=
  ∀ n, (P5123984197085087200.a n : ℤ) = A105602 (n + 1)

theorem P5123984197085087200.correct : P5123984197085087200.Spec := by
  intro n
  simp only [A105602, Nat.add_sub_cancel]

end A105602

/-!
# A105603: Sylvester-Jacobsthal cyclotomic numbers.

The programs for A105603, there is no canonical definition to state claims against.
-/

/-! ## A105603.P16681274163927594918

`abs(1-abs(A020501(n+1)+1))`
-/

namespace A105603.P16681274163927594918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - |A020501 (n + 1) + 1|)|

end

end A105603.P16681274163927594918

/-! ## A105603.P1604323409800411067

`A020501(a(n-2)%2+n)` with `a(0)=1, a(1)=1`
-/

namespace A105603.P1604323409800411067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A020501 (Int.tmod (a (n - 2)) 2 + (n : ℤ)).toNat

end

end A105603.P1604323409800411067

/-! ## A105603.P13904153473253619566

`gcd(1-A085021(A001222(n+1)+1), A020501(n+1))`
-/

namespace A105603.P13904153473253619566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A085021 (A001222 (n + 1) + 1).toNat) (A020501 (n + 1))

end

end A105603.P13904153473253619566

/-! ## A105603.P3929911476010313137

`A001045(n+1)/A105604(n+1)`
-/

namespace A105603.P3929911476010313137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001045 (n + 1) : ℚ) / (A105604 (n + 1) : ℚ)

end

end A105603.P3929911476010313137

/-! ## A105603.P17539592244748304469

`A167167(n+1)/A105604(n+1)`
-/

namespace A105603.P17539592244748304469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167167 (n + 1) : ℚ) / (A105604 (n + 1) : ℚ)

end

end A105603.P17539592244748304469

/-! ## A105603.P13237361442401592570

`A112387(2*n+1)/A105604(n+1)`
-/

namespace A105603.P13237361442401592570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112387 (2 * n + 1) : ℚ) / (A105604 (n + 1) : ℚ)

end

end A105603.P13237361442401592570

/-! ## A105603.P13306339561593655554

`A133684(2*(n+1))/A105604(n+1)`
-/

namespace A105603.P13306339561593655554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133684 (2 * (n + 1)) : ℚ) / (A105604 (n + 1) : ℚ)

end

end A105603.P13306339561593655554

/-! ## A105603.P8753991774794843293

`A001045(n+1)%(A020501(n+1)+A020501(n+1))`
-/

namespace A105603.P8753991774794843293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001045 (n + 1)) (A020501 (n + 1) + A020501 (n + 1))

end

end A105603.P8753991774794843293

/-! ## A105603.P16243041751961482782

`A112447(2*n+1)/A105604(n+1)`
-/

namespace A105603.P16243041751961482782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112447 (2 * n + 1) : ℚ) / (A105604 (n + 1) : ℚ)

end

end A105603.P16243041751961482782

/-! ## A105603.P14856748930380900383

`(A000975(n+1)-A000975(n))/A105604(n+1)`
-/

namespace A105603.P14856748930380900383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000975 (n + 1) - A000975 n : ℚ) / (A105604 (n + 1) : ℚ)

end

end A105603.P14856748930380900383

/-! ## A105603.P839123745407852957

`A112031(2*n+1)/A105604(n+1)`
-/

namespace A105603.P839123745407852957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112031 (2 * n + 1) : ℚ) / (A105604 (n + 1) : ℚ)

end

end A105603.P839123745407852957

/-!
# A105604: Sylvester dividends for Jacobsthal numbers.

The programs for A105604, there is no canonical definition to state claims against.
-/

/-! ## A105604.P3627059156389882436

`A001045(n+1)/A105603(n+1)`
-/

namespace A105604.P3627059156389882436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001045 (n + 1) : ℚ) / (A105603 (n + 1) : ℚ)

end

end A105604.P3627059156389882436

/-! ## A105604.P18076925635370743621

`abs(A077925(n)/A105603(n+1))`
-/

namespace A105604.P18076925635370743621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A077925 n : ℚ) / (A105603 (n + 1) : ℚ)|

end

end A105604.P18076925635370743621

/-! ## A105604.P15424275654128109904

`∑[A078008(n)]/A105603(n+1)`
-/

namespace A105604.P15424275654128109904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A105603 (n + 1) : ℚ)

end

end A105604.P15424275654128109904

/-! ## A105604.P11120604714691898645

`A152046(n+1)/A105603(n+1)`
-/

namespace A105604.P11120604714691898645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152046 (n + 1) : ℚ) / (A105603 (n + 1) : ℚ)

end

end A105604.P11120604714691898645

/-! ## A105604.P14568370438049321220

`A135318(2*n)/A105603(n+1)`
-/

namespace A105604.P14568370438049321220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135318 (2 * n) : ℚ) / (A105603 (n + 1) : ℚ)

end

end A105604.P14568370438049321220

/-! ## A105604.P10236132120875370001

`A112387(2*n+1)/A105603(n+1)`
-/

namespace A105604.P10236132120875370001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112387 (2 * n + 1) : ℚ) / (A105603 (n + 1) : ℚ)

end

end A105604.P10236132120875370001

/-! ## A105604.P11762554183647996074

`A133684(2*(n+1))/A105603(n+1)`
-/

namespace A105604.P11762554183647996074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133684 (2 * (n + 1)) : ℚ) / (A105603 (n + 1) : ℚ)

end

end A105604.P11762554183647996074

/-! ## A105604.P10925374019396004458

`Δ[A000975(n)]/A105603(n+1)`
-/

namespace A105604.P10925374019396004458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A105603 (n + 1) : ℚ)

end

end A105604.P10925374019396004458

/-! ## A105604.P17447777536839697664

`A112447(2*n+1)/A105603(n+1)`
-/

namespace A105604.P17447777536839697664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112447 (2 * n + 1) : ℚ) / (A105603 (n + 1) : ℚ)

end

end A105604.P17447777536839697664

/-! ## A105604.P8368069533029940249

`(A000975(n+1)-A000975(n))/A105603(n+1)`
-/

namespace A105604.P8368069533029940249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000975 (n + 1) - A000975 n : ℚ) / (A105603 (n + 1) : ℚ)

end

end A105604.P8368069533029940249

/-! ## A105604.P4918951766724529166

`A112031(2*n+1)/A105603(n+1)`
-/

namespace A105604.P4918951766724529166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112031 (2 * n + 1) : ℚ) / (A105603 (n + 1) : ℚ)

end

end A105604.P4918951766724529166

/-!
# A105606: Sylvester dividends for Pell numbers.

The programs for A105606, there is no canonical definition to state claims against.
-/

/-! ## A105606.P14998723693193834505

`A000129(n+1)/A008555(n+1)`
-/

namespace A105606.P14998723693193834505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000129 (n + 1) : ℚ) / (A008555 (n + 1) : ℚ)

end

end A105606.P14998723693193834505

/-! ## A105606.P11618137567340452782

`abs(A077985(n)/A008555(n+1))`
-/

namespace A105606.P11618137567340452782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A077985 n : ℚ) / (A008555 (n + 1) : ℚ)|

end

end A105606.P11618137567340452782

/-! ## A105606.P11559027149889873094

`∑[A001333(n)]/A008555(n+1)`
-/

namespace A105606.P11559027149889873094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A008555 (n + 1) : ℚ)

end

end A105606.P11559027149889873094

/-! ## A105606.P7856933144201638126

`Δ[A024537(n)]/A008555(n+1)`
-/

namespace A105606.P7856933144201638126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024537 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A008555 (n + 1) : ℚ)

end

end A105606.P7856933144201638126

/-! ## A105606.P17721573796965274311

`A103415(∑[n])/A008555(n+1)`
-/

namespace A105606.P17721573796965274311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103415 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A008555 (n + 1) : ℚ)

end

end A105606.P17721573796965274311

/-! ## A105606.P17122826083913795511

`record[A103415(n)]/A008555(n+1)`
-/

namespace A105606.P17122826083913795511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103415 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A008555 (n + 1) : ℚ)

end

end A105606.P17122826083913795511

/-!
# A105607: Sylvester cyclotomic numbers for A002605.

The programs for A105607, there is no canonical definition to state claims against.
-/

/-! ## A105607.P12207089967726779525

`A002605(n+1)/A105608(n+1)`
-/

namespace A105607.P12207089967726779525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002605 (n + 1) : ℚ) / (A105608 (n + 1) : ℚ)

end

end A105607.P12207089967726779525

/-! ## A105607.P13752601271846814112

`∑[A026150(n)]/A105608(n+1)`
-/

namespace A105607.P13752601271846814112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A105608 (n + 1) : ℚ)

end

end A105607.P13752601271846814112

/-! ## A105607.P11206555881750512823

`(A005665(n)+1)/A105608(n+1)`
-/

namespace A105607.P11206555881750512823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005665 n + 1 : ℚ) / (A105608 (n + 1) : ℚ)

end

end A105607.P11206555881750512823

/-! ## A105607.P2808491028176813632

`A208909(∑[n+1])/A105608(n+1)`
-/

namespace A105607.P2808491028176813632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208909 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A105608 (n + 1) : ℚ)

end

end A105607.P2808491028176813632

/-! ## A105607.P12695741294403167600

`(A083337(n)-A028860(n))/A105608(n+1)`
-/

namespace A105607.P12695741294403167600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083337 n - A028860 n : ℚ) / (A105608 (n + 1) : ℚ)

end

end A105607.P12695741294403167600

/-!
# A105608: Sylvester dividends for A002605.

The programs for A105608, there is no canonical definition to state claims against.
-/

/-! ## A105608.P13704372812911670499

`A002605(n+1)/A105607(n+1)`
-/

namespace A105608.P13704372812911670499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002605 (n + 1) : ℚ) / (A105607 (n + 1) : ℚ)

end

end A105608.P13704372812911670499

/-! ## A105608.P7607854753198862065

`∑[A026150(n)]/A105607(n+1)`
-/

namespace A105608.P7607854753198862065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A105607 (n + 1) : ℚ)

end

end A105608.P7607854753198862065

/-! ## A105608.P8681906079397566154

`(A005665(n)+1)/A105607(n+1)`
-/

namespace A105608.P8681906079397566154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005665 n + 1 : ℚ) / (A105607 (n + 1) : ℚ)

end

end A105608.P8681906079397566154

/-! ## A105608.P12427094076312449812

`A208909(∑[n+1])/A105607(n+1)`
-/

namespace A105608.P12427094076312449812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208909 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A105607 (n + 1) : ℚ)

end

end A105608.P12427094076312449812

/-! ## A105608.P14237332424484104607

`(A083337(n)-A028860(n))/A105607(n+1)`
-/

namespace A105608.P14237332424484104607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083337 n - A028860 n : ℚ) / (A105607 (n + 1) : ℚ)

end

end A105608.P14237332424484104607

/-!
# A105610: Numbers k such that both p1=2k+3 and p2=4k+5 are primes.

The programs for A105610, the canonical program `A105610.P17050278855233365045` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105610 has offset 1).

The definition of A105610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105610.P16498050226283980071

`A123998(n+1)-1`
-/

namespace A105610.P16498050226283980071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123998 (n + 1) - 1

end

end A105610.P16498050226283980071

namespace A105610

/-- `A123998(n+1)-1` -/
def P16498050226283980071.Spec : Prop :=
  ∀ n, P16498050226283980071.a n = A105610 (n + 1)

theorem P16498050226283980071.correct : P16498050226283980071.Spec := by
  intro n
  simp only [A105610, Nat.add_sub_cancel, A105610.P16498050226283980071.a, A105610.P17050278855233365045.f1, A105610.P17050278855233365045.a, A074258, A074258.P17491479545300873811.f1, A074258.P17491479545300873811.a, A123998, A123998.P17961108538032999968.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A027697, A027697.P8971640768606976312.f1, A027697.P8971640768606976312.f2, A027697.P8971640768606976312.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A105610

/-! ## A105610.P17050278855233365045

`∑[floor(A074258(n+1)/2)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A105610

/-- `∑[floor(A074258(n+1)/2)]` -/
def P17050278855233365045.Spec : Prop :=
  ∀ n, P17050278855233365045.a n = A105610 (n + 1)

theorem P17050278855233365045.correct : P17050278855233365045.Spec := by
  intro n
  simp only [A105610, Nat.add_sub_cancel]

end A105610

/-! ## A105610.P5820314300375735914

`A359763(A006881(n+1))+A123998(n+1)`
-/

namespace A105610.P5820314300375735914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359763 (A006881 (n + 1)).toNat + A123998 (n + 1)

end

end A105610.P5820314300375735914

namespace A105610

/-- `A359763(A006881(n+1))+A123998(n+1)` -/
def P5820314300375735914.Spec : Prop :=
  ∀ n, P5820314300375735914.a n = A105610 (n + 1)

end A105610

/-! ## A105610.P15643684036745683828

`A358777(A046315(n+1))+A123998(n+1)`
-/

namespace A105610.P15643684036745683828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358777 (A046315 (n + 1)).toNat + A123998 (n + 1)

end

end A105610.P15643684036745683828

namespace A105610

/-- `A358777(A046315(n+1))+A123998(n+1)` -/
def P15643684036745683828.Spec : Prop :=
  ∀ n, P15643684036745683828.a n = A105610 (n + 1)

end A105610

/-! ## A105610.P17456571729099833955

`A359763(A284018(n+1))+A123998(n+1)`
-/

namespace A105610.P17456571729099833955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359763 (A284018 (n + 1)).toNat + A123998 (n + 1)

end

end A105610.P17456571729099833955

namespace A105610

/-- `A359763(A284018(n+1))+A123998(n+1)` -/
def P17456571729099833955.Spec : Prop :=
  ∀ n, P17456571729099833955.a n = A105610 (n + 1)

end A105610

/-! ## A105610.P4910759142689965695

`(A005382(n+2)-3)/2`
-/

namespace A105610.P4910759142689965695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005382 (n + 2) - 3 : ℚ) / 2

end

end A105610.P4910759142689965695

namespace A105610

/-- `(A005382(n+2)-3)/2` -/
def P4910759142689965695.Spec : Prop :=
  ∀ n, P4910759142689965695.a n = (A105610 (n + 1) : ℚ)

end A105610

/-! ## A105610.P6571753801287614146

`A089965(n+2)/4-1`
-/

namespace A105610.P6571753801287614146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089965 (n + 2) : ℚ) / 4 - 1

end

end A105610.P6571753801287614146

namespace A105610

/-- `A089965(n+2)/4-1` -/
def P6571753801287614146.Spec : Prop :=
  ∀ n, P6571753801287614146.a n = (A105610 (n + 1) : ℚ)

end A105610

/-! ## A105610.P7592575221308194948

`floor((A005383(n+2)-4)/4)`
-/

namespace A105610.P7592575221308194948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005383 (n + 2) - 4 : ℚ) / 4⌋

end

end A105610.P7592575221308194948

namespace A105610

/-- `floor((A005383(n+2)-4)/4)` -/
def P7592575221308194948.Spec : Prop :=
  ∀ n, P7592575221308194948.a n = A105610 (n + 1)

end A105610

/-! ## A105610.P6410913220085500321

`∑[floor(Δ[A005382(n+1)/2])]`
-/

namespace A105610.P6410913220085500321
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005382 (n + 1) : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f2 (n + 1) - f2 n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105610.P6410913220085500321

namespace A105610

/-- `∑[floor(Δ[A005382(n+1)/2])]` -/
def P6410913220085500321.Spec : Prop :=
  ∀ n, P6410913220085500321.a n = A105610 (n + 1)

end A105610

/-! ## A105610.P37860972660026381

`∑[floor(Δ[A005383(n+1)/4])]`
-/

namespace A105610.P37860972660026381
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005383 (n + 1) : ℚ) / 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f2 (n + 1) - f2 n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105610.P37860972660026381

namespace A105610

/-- `∑[floor(Δ[A005383(n+1)/4])]` -/
def P37860972660026381.Spec : Prop :=
  ∀ n, P37860972660026381.a n = A105610 (n + 1)

end A105610

/-! ## A105610.P16674434134502321609

`∑[floor(Δ[A077068(n+1)/4])]`
-/

namespace A105610.P16674434134502321609
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077068 (n + 1) : ℚ) / 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f2 (n + 1) - f2 n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105610.P16674434134502321609

namespace A105610

/-- `∑[floor(Δ[A077068(n+1)/4])]` -/
def P16674434134502321609.Spec : Prop :=
  ∀ n, P16674434134502321609.a n = A105610 (n + 1)

theorem P16674434134502321609.correct : P16674434134502321609.Spec := by
  intro n
  simp only [A105610, Nat.add_sub_cancel, A105610.P16674434134502321609.f2, A105610.P16674434134502321609.f1, A105610.P16674434134502321609.a, A105610.P17050278855233365045.f1, A105610.P17050278855233365045.a, A074258, A074258.P17491479545300873811.f1, A074258.P17491479545300873811.a, A077068, A077068.P1223850379431236608.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A005383, A005383.P14491179252099632441.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A027697, A027697.P8971640768606976312.f1, A027697.P8971640768606976312.f2, A027697.P8971640768606976312.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A105610

/-! ## A105610.P2582671658018638545

`∑[A002265(Δ[A005383(n+1)])]`
-/

namespace A105610.P2582671658018638545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005383 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105610.P2582671658018638545

namespace A105610

/-- `∑[A002265(Δ[A005383(n+1)])]` -/
def P2582671658018638545.Spec : Prop :=
  ∀ n, P2582671658018638545.a n = A105610 (n + 1)

end A105610

/-! ## A105610.P15056995552132307449

`A260196(n+2)+A123998(n+1)`
-/

namespace A105610.P15056995552132307449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A123998 (n + 1)

end

end A105610.P15056995552132307449

namespace A105610

/-- `A260196(n+2)+A123998(n+1)` -/
def P15056995552132307449.Spec : Prop :=
  ∀ n, P15056995552132307449.a n = A105610 (n + 1)

end A105610

/-! ## A105610.P16932601231140846109

`A102781(A137288(n+2))-1`
-/

namespace A105610.P16932601231140846109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (A137288 (n + 2)).toNat - 1

end

end A105610.P16932601231140846109

namespace A105610

/-- `A102781(A137288(n+2))-1` -/
def P16932601231140846109.Spec : Prop :=
  ∀ n, P16932601231140846109.a n = A105610 (n + 1)

end A105610

/-! ## A105610.P5968816506273483066

`∩[A067076(n+1), A111215(n+1)]`
-/

namespace A105610.P5968816506273483066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105610.P5968816506273483066

namespace A105610

/-- `∩[A067076(n+1), A111215(n+1)]` -/
def P5968816506273483066.Spec : Prop :=
  ∀ n, (P5968816506273483066.a n : ℤ) = A105610 (n + 1)

end A105610

/-! ## A105610.P8587499964271081098

`∩[A005097(n+1), A005098(n+1)]-1`
-/

namespace A105610.P8587499964271081098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A105610.P8587499964271081098

namespace A105610

/-- `∩[A005097(n+1), A005098(n+1)]-1` -/
def P8587499964271081098.Spec : Prop :=
  ∀ n, P8587499964271081098.a n = A105610 (n + 1)

end A105610

/-! ## A105610.P4781615835831295743

`∩[A005098(n+1), A102781(n+1)]-1`
-/

namespace A105610.P4781615835831295743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A105610.P4781615835831295743

namespace A105610

/-- `∩[A005098(n+1), A102781(n+1)]-1` -/
def P4781615835831295743.Spec : Prop :=
  ∀ n, P4781615835831295743.a n = A105610 (n + 1)

end A105610

/-! ## A105610.P16815318679329911619

`eq[2, A305977(2*n+1)]-1`
-/

namespace A105610.P16815318679329911619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305977 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A105610.P16815318679329911619

namespace A105610

/-- `eq[2, A305977(2*n+1)]-1` -/
def P16815318679329911619.Spec : Prop :=
  ∀ n, P16815318679329911619.a n = A105610 (n + 1)

end A105610

/-! ## A105610.P2255072346415609569

`floor(record[A006530(A000040(n+1)+1)]/2)-1`
-/

namespace A105610.P2255072346415609569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000040 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2⌋ - 1

end

end A105610.P2255072346415609569

namespace A105610

/-- `floor(record[A006530(A000040(n+1)+1)]/2)-1` -/
def P2255072346415609569.Spec : Prop :=
  ∀ n, P2255072346415609569.a n = A105610 (n + 1)

end A105610

/-! ## A105610.P3675694095137751223

`A023443(A123998(n+1))`
-/

namespace A105610.P3675694095137751223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A123998 (n + 1)).toNat

end

end A105610.P3675694095137751223

namespace A105610

/-- `A023443(A123998(n+1))` -/
def P3675694095137751223.Spec : Prop :=
  ∀ n, P3675694095137751223.a n = A105610 (n + 1)

end A105610

/-!
# A105611: a(n) is the LCM of the Jacobsthal sequence {J(1),...,J(n)}.

The programs for A105611, there is no canonical definition to state claims against.
-/

/-! ## A105611.P5737447971280455261

`lcm(a(n-1), ∑[(-2)^n])` with `a(0)=1`
-/

namespace A105611.P5737447971280455261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105611.P5737447971280455261

/-! ## A105611.P17644999728948777121

`∏[A105603(n+1)]`
-/

namespace A105611.P17644999728948777121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105603 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A105611.P17644999728948777121

/-! ## A105611.P7642038769980259454

`lcm(A084175(n), a(n-1))` with `a(0)=1`
-/

namespace A105611.P7642038769980259454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (A084175 n) (a (n - 1) : ℤ)

end

end A105611.P7642038769980259454

/-! ## A105611.P1617199376821129211

`a(n-1)*A020501(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A105611.P1617199376821129211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A020501 (n + 1)

end

end A105611.P1617199376821129211

/-! ## A105611.P13365806325563442733

`lcm(-a(n-1), A001045(n+1))` with `a(0)=1`
-/

namespace A105611.P13365806325563442733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (-(a (n - 1) : ℤ)) (A001045 (n + 1))

end

end A105611.P13365806325563442733

/-!
# A105612: Number of nonzero quadratic residues (mod n) (cf. A000224).

The programs for A105612, there is no canonical definition to state claims against.
-/

/-! ## A105612.P7985876026770961057

`A000224(n+1)-1`
-/

namespace A105612.P7985876026770961057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000224 (n + 1) - 1

end

end A105612.P7985876026770961057

/-! ## A105612.P750175527635343801

`n-A095972(n+1)`
-/

namespace A105612.P750175527635343801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A095972 (n + 1)

end

end A105612.P750175527635343801

/-! ## A105612.P13201996970850382899

`sqrt(sqrt(A226757(n+1)))-1`
-/

namespace A105612.P13201996970850382899
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A226757 (n + 1) : ℝ)) - 1

end

end A105612.P13201996970850382899

/-! ## A105612.P9904666450611785192

`A023443(A000224(n+1))`
-/

namespace A105612.P9904666450611785192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A000224 (n + 1)).toNat

end

end A105612.P9904666450611785192

/-! ## A105612.P1829905183699209435

`A023448(A000224(n+1)+5)`
-/

namespace A105612.P1829905183699209435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 (A000224 (n + 1) + 5).toNat

end

end A105612.P1829905183699209435

/-! ## A105612.P10488309364641718000

`A024000(A095972(n+1)+1)+n`
-/

namespace A105612.P10488309364641718000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A095972 (n + 1) + 1).toNat + (n : ℤ)

end

end A105612.P10488309364641718000

/-! ## A105612.P11248621105325976246

`A001489(A095972(n+1)+1)+n+1`
-/

namespace A105612.P11248621105325976246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A095972 (n + 1) + 1).toNat + (n + 1 : ℤ)

end

end A105612.P11248621105325976246

/-! ## A105612.P10941259505087449959

`A033999(A099375(n))+A000224(n+1)`
-/

namespace A105612.P10941259505087449959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A099375 n).toNat + A000224 (n + 1)

end

end A105612.P10941259505087449959

/-! ## A105612.P12479289232653203992

`A106400(A004016(n)+1)+A000224(n+1)`
-/

namespace A105612.P12479289232653203992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A004016 n + 1).toNat + A000224 (n + 1)

end

end A105612.P12479289232653203992

/-! ## A105612.P7605167286032025977

`A165924(n+1)+A165915(n+1)`
-/

namespace A105612.P7605167286032025977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165924 (n + 1) + A165915 (n + 1)

end

end A105612.P7605167286032025977

/-! ## A105612.P2661374381153718330

`n-(A165927(n+1)+A165918(n+1))`
-/

namespace A105612.P2661374381153718330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A165927 (n + 1) + A165918 (n + 1))

end

end A105612.P2661374381153718330

/-! ## A105612.P8232692093242305276

`A083800(n+1)%A000224(n+1)`
-/

namespace A105612.P8232692093242305276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A000224 (n + 1))

end

end A105612.P8232692093242305276

/-! ## A105612.P13511744147616290687

`A070198(n)%A000224(n+1)`
-/

namespace A105612.P13511744147616290687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A000224 (n + 1))

end

end A105612.P13511744147616290687

/-! ## A105612.P11132519954656328831

`A079782(n+1)%A000224(n+1)`
-/

namespace A105612.P11132519954656328831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A000224 (n + 1))

end

end A105612.P11132519954656328831

/-! ## A105612.P3460564855756312706

`A083685(n+1)%A000224(n+1)`
-/

namespace A105612.P3460564855756312706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A000224 (n + 1))

end

end A105612.P3460564855756312706

/-! ## A105612.P11607885185148371084

`A121934(n+1)%A000224(n+1)`
-/

namespace A105612.P11607885185148371084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A000224 (n + 1))

end

end A105612.P11607885185148371084

/-! ## A105612.P9172376033974406380

`A030494(n+1)%A000224(n+1)`
-/

namespace A105612.P9172376033974406380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A000224 (n + 1))

end

end A105612.P9172376033974406380

/-! ## A105612.P13869266639583389328

`A072828(n+1)%A000224(n+1)`
-/

namespace A105612.P13869266639583389328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A000224 (n + 1))

end

end A105612.P13869266639583389328

/-! ## A105612.P9536574119084647259

`A096582(A095972(n+1)+A096582(n+1)+1)`
-/

namespace A105612.P9536574119084647259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096582 (A095972 (n + 1) + (A096582 (n + 1) + 1)).toNat

end

end A105612.P9536574119084647259

/-!
# A105613: Self-convolution omits 1's at positions of triangular numbers less one.

The programs for A105613, there is no canonical definition to state claims against.
-/

/-! ## A105613.P12208310344352111609

`A105614(A083920(n%A156919(n)))`
-/

namespace A105613.P12208310344352111609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105614 (A083920 (Int.tmod (n : ℤ) (A156919 n)).toNat).toNat

end

end A105613.P12208310344352111609

/-! ## A105613.P3367958357610032855

`A105614(A083920(n*Δ[A083920(n)]))`
-/

namespace A105613.P3367958357610032855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105614 (A083920 ((n : ℤ) * (f1 (n + 1) - f1 n)).toNat).toNat

end

end A105613.P3367958357610032855

/-! ## A105613.P17677221342016488624

`A105614(char[A007401(n+1)]*A083920(n))`
-/

namespace A105613.P17677221342016488624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007401 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105614 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A083920 n).toNat

end

end A105613.P17677221342016488624

/-!
# A105614: Self-convolution of A105613.

The programs for A105614, there is no canonical definition to state claims against.
-/

/-! ## A105614.P3608078464405779817

`∑{#}[n, A105613(#)*A105613(n-#)]`
-/

namespace A105614.P3608078464405779817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A105613 k * A105613 (n - k)

end

end A105614.P3608078464405779817

/-! ## A105614.P16081324419881919841

`record[A105613(n)]`
-/

namespace A105614.P16081324419881919841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105614.P16081324419881919841

/-! ## A105614.P3778173589585346041

`A105613(comp[∑[n-1]])`
-/

namespace A105614.P3778173589585346041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105613 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A105614.P3778173589585346041

/-! ## A105614.P7837428763750000248

`A105613(A007401(n+1))%A000081(n+3)`
-/

namespace A105614.P7837428763750000248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105613 (A007401 (n + 1)).toNat) (A000081 (n + 3))

end

end A105614.P7837428763750000248

/-! ## A105614.P17841900417015616441

`lcm(A070748(n+1), A105613(A007401(n+1)))`
-/

namespace A105614.P17841900417015616441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A070748 (n + 1)) (A105613 (A007401 (n + 1)).toNat)

end

end A105614.P17841900417015616441

/-!
# A105616: Column 1 of triangle A105615.

The programs for A105616, there is no canonical definition to state claims against.
-/

/-! ## A105616.P12758751333789639205

`A000698(n+2)-A105627(n)`
-/

namespace A105616.P12758751333789639205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000698 (n + 2) - A105627 n

end

end A105616.P12758751333789639205

/-! ## A105616.P8140090426312189512

`A286781(A025747(n))-A105627(n)`
-/

namespace A105616.P8140090426312189512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (A025747 n).toNat - A105627 n

end

end A105616.P8140090426312189512

/-! ## A105616.P16793168828328635165

`record[A105623(n)]`
-/

namespace A105616.P16793168828328635165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105616.P16793168828328635165

/-! ## A105616.P5903345718352369334

`A105623(∑[1+n])`
-/

namespace A105616.P5903345718352369334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105623 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105616.P5903345718352369334

/-! ## A105616.P13393731652351514615

`record[ratio[A105615(n)]]-A105627(n)`
-/

namespace A105616.P13393731652351514615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105615 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A105627 n : ℚ)

end

end A105616.P13393731652351514615

/-!
# A105617: Column 2 of triangle A105615.

The programs for A105617, there is no canonical definition to state claims against.
-/

/-! ## A105617.P17162755096032105746

`record[ceil(A105626(n)/3)]`
-/

namespace A105617.P17162755096032105746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A105626 n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105617.P17162755096032105746

/-! ## A105617.P11949488247485742884

`A105626(∑[n+1])/3`
-/

namespace A105617.P11949488247485742884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105626 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3

end

end A105617.P11949488247485742884

/-! ## A105617.P17710183389530347559

`record[A105626(n+1)/3]`
-/

namespace A105617.P17710183389530347559
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105626 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105617.P17710183389530347559

/-! ## A105617.P7013745073080955045

`floor(A105626(A025747(n))/3)`
-/

namespace A105617.P7013745073080955045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A105626 (A025747 n).toNat : ℚ) / 3⌋

end

end A105617.P7013745073080955045

/-!
# A105618: Row sums of triangle A105615.

The programs for A105618, there is no canonical definition to state claims against.
-/

/-! ## A105618.P9033967371872572158

`∏{p}[A120732(n+1)², #]`
-/

namespace A105618.P9033967371872572158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120732 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A105618.P9033967371872572158

/-!
# A105621: Column 2 of triangle A105620.

The programs for A105621, there is no canonical definition to state claims against.
-/

/-! ## A105621.P4930614528878539854

`A105620(∑[n+2]+3)`
-/

namespace A105621.P4930614528878539854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105620 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A105621.P4930614528878539854

/-!
# A105622: Row sums of triangle A105620.

The programs for A105622, there is no canonical definition to state claims against.
-/

/-! ## A105622.P15546858317577523046

`A062298(n+1)-A000720(A352944(3*n))`
-/

namespace A105622.P15546858317577523046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1) - A000720 (A352944 (3 * n)).toNat

end

end A105622.P15546858317577523046

/-! ## A105622.P14885178499393517421

`A113605(n+1)-A000720(A352944(3*n))`
-/

namespace A105622.P14885178499393517421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113605 (n + 1) - A000720 (A352944 (3 * n)).toNat

end

end A105622.P14885178499393517421

/-!
# A105623: Matrix square-root of triangle A105615.

The programs for A105623, there is no canonical definition to state claims against.
-/

/-! ## A105623.P2367804711432247455

`A152406(n)+A004788(A051390(n+4))`
-/

namespace A105623.P2367804711432247455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152406 n + A004788 (A051390 (n + 4)).toNat

end

end A105623.P2367804711432247455

/-! ## A105623.P8593552812852226298

`A152406(n)+A076142(A005773(n))`
-/

namespace A105623.P8593552812852226298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152406 n + A076142 (A005773 n).toNat

end

end A105623.P8593552812852226298

/-! ## A105623.P14916787110234680887

`A152406(n)+A025442(A087051(n))`
-/

namespace A105623.P14916787110234680887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152406 n + A025442 (A087051 n).toNat

end

end A105623.P14916787110234680887

/-! ## A105623.P16483615788207134526

`or(A035171(A300355(n)), A152406(n))`
-/

namespace A105623.P16483615788207134526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035171 (A300355 n).toNat) (A152406 n)

end

end A105623.P16483615788207134526

/-! ## A105623.P3591922843268614906

`A152406(n)+A035171(A223432(n+1))`
-/

namespace A105623.P3591922843268614906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152406 n + A035171 (A223432 (n + 1)).toNat

end

end A105623.P3591922843268614906

/-!
# A105624: Column 2 of triangle A105623.

The programs for A105624, there is no canonical definition to state claims against.
-/

/-! ## A105624.P18253259052221164956

`A105623(∑[n+2]+3)`
-/

namespace A105624.P18253259052221164956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105623 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A105624.P18253259052221164956

/-! ## A105624.P15356894980133843988

`record[A105623(lt[2, A002260(n+1)])]`
-/

namespace A105624.P15356894980133843988
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105623 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105624.P15356894980133843988

/-!
# A105625: Row sums of triangle A105623.

The programs for A105625, there is no canonical definition to state claims against.
-/

/-! ## A105625.P6776807420185488344

`A000165(n)-A123087(A213591(n+1))`
-/

namespace A105625.P6776807420185488344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 n - A123087 (A213591 (n + 1)).toNat

end

end A105625.P6776807420185488344

/-!
# A105626: Triangular matrix T, read by rows, that satisfies T^2 = A105615^3; also equals the matrix cube of triangle A105623.

The programs for A105626, there is no canonical definition to state claims against.
-/

/-! ## A105626.P8404061480714774761

`A096781(A222057(n+2))`
-/

namespace A105626.P8404061480714774761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096781 (A222057 (n + 2)).toNat

end

end A105626.P8404061480714774761

/-! ## A105626.P661561931735013548

`A289903(A048743(n+2))`
-/

namespace A105626.P661561931735013548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289903 (A048743 (n + 2)).toNat

end

end A105626.P661561931735013548

/-! ## A105626.P12341152453460966573

`A096781(A271034(n+2)+1)`
-/

namespace A105626.P12341152453460966573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096781 (A271034 (n + 2) + 1).toNat

end

end A105626.P12341152453460966573

/-!
# A105627: Column 1 of triangle A105626.

The programs for A105627, there is no canonical definition to state claims against.
-/

/-! ## A105627.P7932647637530325107

`A000698(n+2)-A105616(n)`
-/

namespace A105627.P7932647637530325107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000698 (n + 2) - A105616 n

end

end A105627.P7932647637530325107

/-! ## A105627.P13797644982189336414

`A286781(∑[n+1])-A105616(n)`
-/

namespace A105627.P13797644982189336414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (∑ j ∈ Finset.range (n + 1), f1 j) - A105616 n

end

end A105627.P13797644982189336414

/-! ## A105627.P6463825313828698307

`record[Δ[A105615(n)-A105623(n)]]`
-/

namespace A105627.P6463825313828698307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105615 n - A105623 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105627.P6463825313828698307

/-! ## A105627.P7791765788185687996

`record[ratio[A105615(n)]]-A105616(n)`
-/

namespace A105627.P7791765788185687996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105615 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A105616 n : ℚ)

end

end A105627.P7791765788185687996

/-! ## A105627.P10960797790163794541

`record[A105615(n+1)]-A105616(n)`
-/

namespace A105627.P10960797790163794541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A105616 n

end

end A105627.P10960797790163794541

/-!
# A105628: Row sums of triangle A105626.

The programs for A105628, there is no canonical definition to state claims against.
-/

/-! ## A105628.P7340462303656051117

`Δ[A069782(∑[A005411(n)])]`
-/

namespace A105628.P7340462303656051117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005411 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069782 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105628.P7340462303656051117

/-!
# A105630: Column 0 of triangle A105629, which is the matrix logarithm of triangle A105623.

The programs for A105630, there is no canonical definition to state claims against.
-/

/-! ## A105630.P15807319341757137578

`A105629(∑[n])`
-/

namespace A105630.P15807319341757137578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105629 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105630.P15807319341757137578

/-! ## A105630.P16789968744586789671

`record[A105629(n)]`
-/

namespace A105630.P16789968744586789671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105630.P16789968744586789671

/-! ## A105630.P15488949677185502167

`and(-1, A105629(A000217(n)))`
-/

namespace A105630.P15488949677185502167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A105629 (A000217 n).toNat)

end

end A105630.P15488949677185502167

/-! ## A105630.P11266956975287945399

`A105629(A179865(n+1))%(10^n)`
-/

namespace A105630.P11266956975287945399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105629 (A179865 (n + 1)).toNat) (10 ^ n : ℤ)

end

end A105630.P11266956975287945399

/-! ## A105630.P14389546077009849486

`A184955(n)+A105629(A000217(n))`
-/

namespace A105630.P14389546077009849486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 n + A105629 (A000217 n).toNat

end

end A105630.P14389546077009849486

/-!
# A105631: Row sums of triangle A105629, which is the matrix logarithm of triangle A105623.

The programs for A105631, there is no canonical definition to state claims against.
-/

/-! ## A105631.P16233403143417469956

`A030101(n)+A004524(A063075(n))`
-/

namespace A105631.P16233403143417469956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n + A004524 (A063075 n).toNat

end

end A105631.P16233403143417469956

/-! ## A105631.P15852894621544062242

`A087547(n)+A033270(A135753(n))`
-/

namespace A105631.P15852894621544062242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087547 n + A033270 (A135753 n).toNat

end

end A105631.P15852894621544062242

/-!
# A105632: Triangle, read by rows, where the g.f. A(x,y) satisfies the equation: A(x,y) = 1/(1-x*y) + x*A(x,y) + x^2*A(x,y)^2.

The programs for A105632, there is no canonical definition to state claims against.
-/

/-! ## A105632.P778272197664984894

`A204849(n*A072024(n))`
-/

namespace A105632.P778272197664984894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204849 ((n : ℤ) * A072024 n).toNat

end

end A105632.P778272197664984894

/-! ## A105632.P10136138309118589454

`A204849(lcm(n, A072024(n)))`
-/

namespace A105632.P10136138309118589454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204849 (Int.lcm (n : ℤ) (A072024 n))

end

end A105632.P10136138309118589454

/-! ## A105632.P8818299760254245487

`A204849(n)+A010051(A123288(n))`
-/

namespace A105632.P8818299760254245487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204849 n + A010051 (A123288 (n + 62)).toNat

end

end A105632.P8818299760254245487

/-! ## A105632.P50174559513385083

`A204849(n)+A125005(A060637(n))`
-/

namespace A105632.P50174559513385083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204849 n + A125005 (A060637 n).toNat

end

end A105632.P50174559513385083

/-! ## A105632.P1163858045397538766

`A204849(n)+A185053(A084938(n))`
-/

namespace A105632.P1163858045397538766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204849 n + A185053 (A084938 n).toNat

end

end A105632.P1163858045397538766

/-!
# A105633: Row sums of triangle A105632.

The programs for A105633, the canonical program `A105633.P12636671373568454996` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105633 has offset 0).

The definition of A105633 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105633.P17737958176988241911

`∑[A086581(n)]`
-/

namespace A105633.P17737958176988241911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105633.P17737958176988241911

namespace A105633

/-- `∑[A086581(n)]` -/
def P17737958176988241911.Spec : Prop :=
  ∀ n, P17737958176988241911.a n = A105633 n

end A105633

/-! ## A105633.P4253310417450651759

`∑[A082582(1+n)]`
-/

namespace A105633.P4253310417450651759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082582 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105633.P4253310417450651759

namespace A105633

/-- `∑[A082582(1+n)]` -/
def P4253310417450651759.Spec : Prop :=
  ∀ n, P4253310417450651759.a n = A105633 n

end A105633

/-! ## A105633.P6449904325505388897

`∑[A025242(2+n)]`
-/

namespace A105633.P6449904325505388897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025242 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105633.P6449904325505388897

namespace A105633

/-- `∑[A025242(2+n)]` -/
def P6449904325505388897.Spec : Prop :=
  ∀ n, P6449904325505388897.a n = A105633 n

end A105633

/-! ## A105633.P478411794513463638

`∑{#}[n, C(n, #)*A007477(#)]`
-/

namespace A105633.P478411794513463638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A007477 k

end

end A105633.P478411794513463638

namespace A105633

/-- `∑{#}[n, C(n, #)*A007477(#)]` -/
def P478411794513463638.Spec : Prop :=
  ∀ n, P478411794513463638.a n = A105633 n

end A105633

/-! ## A105633.P2218730309310571308

`A086581(n+2)-A273343(n+2)`
-/

namespace A105633.P2218730309310571308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086581 (n + 2) - A273343 (n + 2)

end

end A105633.P2218730309310571308

namespace A105633

/-- `A086581(n+2)-A273343(n+2)` -/
def P2218730309310571308.Spec : Prop :=
  ∀ n, P2218730309310571308.a n = A105633 n

theorem P2218730309310571308.correct : P2218730309310571308.Spec := by
  intro n
  simp only [A105633, Nat.add_sub_cancel, A105633.P2218730309310571308.a, A105633.P12636671373568454996.a, A047086, A047086.P9931684659440086398.a, A086581, A086581.P8583732597742217760.a, A108626, A108626.P8036561101586251315.f1, A108626.P8036561101586251315.a, A273343, A273343.P3604068095228672388.a, A047082, A047082.P17779518460160753781.f1, A047082.P17779518460160753781.a, A047083, A047083.P1190660574311628716.f1, A047083.P1190660574311628716.a, A047085, A047085.P1439326172283854598.a, A188464, A188464.P9603837487652245997.f2, A188464.P9603837487652245997.f1, A188464.P9603837487652245997.a, A047080, A047080.P5006962811105015862.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A105633

/-! ## A105633.P12636671373568454996

`A108626(n+1)+A108626(n)-A047086(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A105633

/-- `A108626(n+1)+A108626(n)-A047086(n+1)` -/
def P12636671373568454996.Spec : Prop :=
  ∀ n, P12636671373568454996.a n = A105633 n

theorem P12636671373568454996.correct : P12636671373568454996.Spec := by
  intro n
  simp only [A105633]

end A105633

/-! ## A105633.P4503393515217297079

`A116424(A033638(n+1))`
-/

namespace A105633.P4503393515217297079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116424 (A033638 (n + 1)).toNat

end

end A105633.P4503393515217297079

namespace A105633

/-- `A116424(A033638(n+1))` -/
def P4503393515217297079.Spec : Prop :=
  ∀ n, P4503393515217297079.a n = A105633 n

end A105633

/-! ## A105633.P3041373654557072911

`∑[A098978(∑[A008619(n)])]`
-/

namespace A105633.P3041373654557072911
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098978 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105633.P3041373654557072911

namespace A105633

/-- `∑[A098978(∑[A008619(n)])]` -/
def P3041373654557072911.Spec : Prop :=
  ∀ n, P3041373654557072911.a n = A105633 n

end A105633

/-! ## A105633.P13015008909191059006

`∑[A098978(A087811(n+1))]`
-/

namespace A105633.P13015008909191059006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098978 (A087811 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105633.P13015008909191059006

namespace A105633

/-- `∑[A098978(A087811(n+1))]` -/
def P13015008909191059006.Spec : Prop :=
  ∀ n, P13015008909191059006.a n = A105633 n

end A105633

/-! ## A105633.P11414855317801007633

`∑[A098978(A076921(n+2))]`
-/

namespace A105633.P11414855317801007633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098978 (A076921 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105633.P11414855317801007633

namespace A105633

/-- `∑[A098978(A076921(n+2))]` -/
def P11414855317801007633.Spec : Prop :=
  ∀ n, P11414855317801007633.a n = A105633 n

end A105633

/-! ## A105633.P6320660096469974545

`∑[A273342(∑[n]+2)]`
-/

namespace A105633.P6320660096469974545
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273342 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105633.P6320660096469974545

namespace A105633

/-- `∑[A273342(∑[n]+2)]` -/
def P6320660096469974545.Spec : Prop :=
  ∀ n, P6320660096469974545.a n = A105633 n

end A105633

/-! ## A105633.P4228608578001598459

`A273897(∑[n+1]+2)`
-/

namespace A105633.P4228608578001598459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273897 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A105633.P4228608578001598459

namespace A105633

/-- `A273897(∑[n+1]+2)` -/
def P4228608578001598459.Spec : Prop :=
  ∀ n, P4228608578001598459.a n = A105633 n

end A105633

/-! ## A105633.P15657234268474350386

`∑{#}[n, (-1)^(n-#)*C(n, #)*A105849(#)]`
-/

namespace A105633.P15657234268474350386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A105849 k : ℚ)

end

end A105633.P15657234268474350386

namespace A105633

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A105849(#)]` -/
def P15657234268474350386.Spec : Prop :=
  ∀ n, P15657234268474350386.a n = (A105633 n : ℚ)

end A105633

/-! ## A105633.P14559343674097545770

`record[ratio[A273897(n+2)]]`
-/

namespace A105633.P14559343674097545770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273897 (n + 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105633.P14559343674097545770

namespace A105633

/-- `record[ratio[A273897(n+2)]]` -/
def P14559343674097545770.Spec : Prop :=
  ∀ n, P14559343674097545770.a n = (A105633 n : ℚ)

end A105633

/-!
# A105634: Expansion of Sum_{k>0} Kronecker(k,7)*x^k*(1 + x^k)/(1 - x^k)^3.

The programs for A105634, the canonical program `A105634.P14447733541575245411` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105634 has offset 1).

The definition of A105634 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105634.P14447733541575245411

`∑{d}[n+1, A007434(#)*A035182((n+1)/#)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A105634

/-- `∑{d}[n+1, A007434(#)*A035182((n+1)/#)]` -/
def P14447733541575245411.Spec : Prop :=
  ∀ n, P14447733541575245411.a n = A105634 (n + 1)

theorem P14447733541575245411.correct : P14447733541575245411.Spec := by
  intro n
  simp only [A105634, Nat.add_sub_cancel]

end A105634

/-!
# A105635: a(n) = (2*Pell(n+1) - (1+(-1)^n))/4.

The programs for A105635, the canonical program `A105635.P1354362728701359914` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105635 has offset 0).

The definition of A105635 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105635.P17941054072499386571

`ogf(x/(1-2x-2x^2+2x^3+x^4))`
-/

namespace A105635.P17941054072499386571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, -2, 2, 1] n

end

end A105635.P17941054072499386571

namespace A105635

/-- `ogf(x/(1-2x-2x^2+2x^3+x^4))` -/
def P17941054072499386571.Spec : Prop :=
  ∀ n, P17941054072499386571.a n = A105635 n

end A105635

/-! ## A105635.P1354362728701359914

`2*a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=6`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105635

/-- `2*a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)` -/
def P1354362728701359914.Spec : Prop :=
  ∀ n, P1354362728701359914.a n = A105635 n

theorem P1354362728701359914.correct : P1354362728701359914.Spec := by
  intro n
  simp only [A105635]

end A105635

/-! ## A105635.P12657670248663143922

`∑{#}[n, A000129(#)*(1-(-1)^(n+#-1))/2]`
-/

namespace A105635.P12657670248663143922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A000129 k : ℚ) * (1 - (-1 : ℚ) ^ ((n + k : ℤ) - 1 : ℤ)) / 2

end

end A105635.P12657670248663143922

namespace A105635

/-- `∑{#}[n, A000129(#)*(1-(-1)^(n+#-1))/2]` -/
def P12657670248663143922.Spec : Prop :=
  ∀ n, P12657670248663143922.a n = (A105635 n : ℚ)

end A105635

/-! ## A105635.P8491055082440327618

`(2*A000129(n+1)-(1+(-1)^n))/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A105635.P8491055082440327618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A000129 (n + 1) - (1 + (-1) ^ n) : ℚ) / 4

end

end A105635.P8491055082440327618

namespace A105635

/-- `(2*A000129(n+1)-(1+(-1)^n))/4` -/
def P8491055082440327618.Spec : Prop :=
  ∀ n, P8491055082440327618.a n = (A105635 n : ℚ)

end A105635

/-! ## A105635.P6286241012426364981

`(A033539(n+3)-A097076(n+3))/2`
-/

namespace A105635.P6286241012426364981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033539 (n + 3) - A097076 (n + 3) : ℚ) / 2

end

end A105635.P6286241012426364981

namespace A105635

/-- `(A033539(n+3)-A097076(n+3))/2` -/
def P6286241012426364981.Spec : Prop :=
  ∀ n, P6286241012426364981.a n = (A105635 n : ℚ)

end A105635

/-! ## A105635.P3428643657391354264

`2*a(n-1)+a(n-2)+n%2` with `a(0)=0, a(1)=1`
-/

namespace A105635.P3428643657391354264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * a (n - 1) + (a (n - 2) + n % 2)

end

end A105635.P3428643657391354264

namespace A105635

/-- `2*a(n-1)+a(n-2)+n%2` -/
def P3428643657391354264.Spec : Prop :=
  ∀ n, (P3428643657391354264.a n : ℤ) = A105635 n

end A105635

/-! ## A105635.P7812267447562261119

`∑[3*a(n-2)+a(n-3)+a(n-1)]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A105635.P7812267447562261119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  3 * f1 (n - 2) + (f1 (n - 3) + f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105635.P7812267447562261119

namespace A105635

/-- `∑[3*a(n-2)+a(n-3)+a(n-1)]` -/
def P7812267447562261119.Spec : Prop :=
  ∀ n, (P7812267447562261119.a n : ℤ) = A105635 n

end A105635

/-! ## A105635.P1639260444218280597

`∑[A097076(n)]`
-/

namespace A105635.P1639260444218280597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105635.P1639260444218280597

namespace A105635

/-- `∑[A097076(n)]` -/
def P1639260444218280597.Spec : Prop :=
  ∀ n, P1639260444218280597.a n = A105635 n

end A105635

/-! ## A105635.P4970701299013160972

`floor(∑[A001333(n)/2])`
-/

namespace A105635.P4970701299013160972
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001333 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A105635.P4970701299013160972

namespace A105635

/-- `floor(∑[A001333(n)/2])` -/
def P4970701299013160972.Spec : Prop :=
  ∀ n, P4970701299013160972.a n = A105635 n

end A105635

/-! ## A105635.P6460058602876942362

`round(∑[A000129(n)/sqrt(2)])`
-/

namespace A105635.P6460058602876942362
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000129 n : ℝ) / Real.sqrt (2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105635.P6460058602876942362

namespace A105635

/-- `round(∑[A000129(n)/sqrt(2)])` -/
def P6460058602876942362.Spec : Prop :=
  ∀ n, P6460058602876942362.a n = A105635 n

end A105635

/-! ## A105635.P3647805583787816352

`∑[abs(∑[A215936(n+2)])]`
-/

namespace A105635.P3647805583787816352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215936 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105635.P3647805583787816352

namespace A105635

/-- `∑[abs(∑[A215936(n+2)])]` -/
def P3647805583787816352.Spec : Prop :=
  ∀ n, P3647805583787816352.a n = A105635 n

end A105635

/-! ## A105635.P15201049245835734110

`floor(∑[A119016(2*n)/2])`
-/

namespace A105635.P15201049245835734110
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119016 (2 * n) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A105635.P15201049245835734110

namespace A105635

/-- `floor(∑[A119016(2*n)/2])` -/
def P15201049245835734110.Spec : Prop :=
  ∀ n, P15201049245835734110.a n = A105635 n

end A105635

/-! ## A105635.P17929831876377215722

`∑[A171842(n)+n%2-1]`
-/

namespace A105635.P17929831876377215722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 n + ((n % 2 : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105635.P17929831876377215722

namespace A105635

/-- `∑[A171842(n)+n%2-1]` -/
def P17929831876377215722.Spec : Prop :=
  ∀ n, P17929831876377215722.a n = A105635 n

end A105635

/-! ## A105635.P2033309155745065323

`A100131(n)-A008619(n)`
-/

namespace A105635.P2033309155745065323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100131 n - A008619 n

end

end A105635.P2033309155745065323

namespace A105635

/-- `A100131(n)-A008619(n)` -/
def P2033309155745065323.Spec : Prop :=
  ∀ n, P2033309155745065323.a n = A105635 n

end A105635

/-! ## A105635.P2270557104593923708

`A113225(n)-A059841(n)`
-/

namespace A105635.P2270557104593923708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113225 n - A059841 n

end

end A105635.P2270557104593923708

namespace A105635

/-- `A113225(n)-A059841(n)` -/
def P2270557104593923708.Spec : Prop :=
  ∀ n, P2270557104593923708.a n = A105635 n

end A105635

/-! ## A105635.P5770760588330590062

`A116404(n)-A121262(n)`
-/

namespace A105635.P5770760588330590062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116404 n - A121262 n

end

end A105635.P5770760588330590062

namespace A105635

/-- `A116404(n)-A121262(n)` -/
def P5770760588330590062.Spec : Prop :=
  ∀ n, P5770760588330590062.a n = A105635 n

end A105635

/-! ## A105635.P18083788954832173145

`∑[A247311(A047243(n+1))]`
-/

namespace A105635.P18083788954832173145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247311 (A047243 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105635.P18083788954832173145

namespace A105635

/-- `∑[A247311(A047243(n+1))]` -/
def P18083788954832173145.Spec : Prop :=
  ∀ n, P18083788954832173145.a n = A105635 n

end A105635

/-! ## A105635.P14493436164613171315

`∑[A171842(n)-A059841(n)]`
-/

namespace A105635.P14493436164613171315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 n - A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105635.P14493436164613171315

namespace A105635

/-- `∑[A171842(n)-A059841(n)]` -/
def P14493436164613171315.Spec : Prop :=
  ∀ n, P14493436164613171315.a n = A105635 n

end A105635

/-! ## A105635.P16351292531939403974

`A130472(n+1)+A113727(n)`
-/

namespace A105635.P16351292531939403974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 (n + 1) + A113727 n

end

end A105635.P16351292531939403974

namespace A105635

/-- `A130472(n+1)+A113727(n)` -/
def P16351292531939403974.Spec : Prop :=
  ∀ n, P16351292531939403974.a n = A105635 n

end A105635

/-! ## A105635.P8094856709729165633

`A000035(n)+A113225(n)-1`
-/

namespace A105635.P8094856709729165633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (A113225 n - 1)

end

end A105635.P8094856709729165633

namespace A105635

/-- `A000035(n)+A113225(n)-1` -/
def P8094856709729165633.Spec : Prop :=
  ∀ n, P8094856709729165633.a n = A105635 n

end A105635

/-!
# A105636: Transform of n^3 by the Riordan array (1/(1-x^2), x).

The programs for A105636, the canonical program `A105636.P10211666459065841675` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105636 has offset 0).

The definition of A105636 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105636.P403607568842235948

`ogf((x+4x^2+x^3)/(1-4x+5x^2-5x^4+4x^5-x^6))`
-/

namespace A105636.P403607568842235948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4, 1] [1, -4, 5, 0, -5, 4, -1] n

end

end A105636.P403607568842235948

namespace A105636

/-- `ogf((x+4x^2+x^3)/(1-4x+5x^2-5x^4+4x^5-x^6))` -/
def P403607568842235948.Spec : Prop :=
  ∀ n, P403607568842235948.a n = A105636 n

end A105636

/-! ## A105636.P8798578332464437484

`((-1)^n+2*n²*(n+2)²-1)/16`
-/

namespace A105636.P8798578332464437484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n + (2 * n ^ 2 * (n + 2) ^ 2 : ℤ) - 1 : ℚ) / 16

end

end A105636.P8798578332464437484

namespace A105636

/-- `((-1)^n+2*n²*(n+2)²-1)/16` -/
def P8798578332464437484.Spec : Prop :=
  ∀ n, P8798578332464437484.a n = (A105636 n : ℚ)

theorem P8798578332464437484.correct : P8798578332464437484.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 | 5 =>
      simp [A105636, Nat.add_sub_cancel, A105636.P8798578332464437484.a, A105636.P10211666459065841675.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 6 =>
      have h1 := ih (m + 5) (by omega)
      have h2 := ih (m + 4) (by omega)
      have h4 := ih (m + 2) (by omega)
      have h5 := ih (m + 1) (by omega)
      have h6 := ih m (by omega)
      simp only [A105636, Nat.add_sub_cancel, A105636.P8798578332464437484.a, A105636.P10211666459065841675.a, SequenceMachineLib.memo_apply] at h1 h2 h4 h5 h6 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 6 - 1 = m + 5 by omega, show m + 6 - 2 = m + 4 by omega, show m + 6 - 4 = m + 2 by omega, show m + 6 - 5 = m + 1 by omega, show m + 6 - 6 = m by omega, show m + 5 < m + 6 by omega, show m + 4 < m + 6 by omega, show m + 2 < m + 6 by omega, show m + 1 < m + 6 by omega, show m < m + 6 by omega, ↓reduceIte]
      push_cast at h1 h2 h4 h5 h6 ⊢
      rw [← h1, ← h2, ← h4, ← h5, ← h6]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A105636

/-! ## A105636.P10211666459065841675

`4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=8, a(3)=28, a(4)=72, a(5)=153`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105636

/-- `4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` -/
def P10211666459065841675.Spec : Prop :=
  ∀ n, P10211666459065841675.a n = A105636 n

theorem P10211666459065841675.correct : P10211666459065841675.Spec := by
  intro n
  simp only [A105636]

end A105636

/-! ## A105636.P15756199369609708629

`∑{#}[floor((n-1)/2), (n-2*#)^3]`
-/

namespace A105636.P15756199369609708629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ((n : ℤ) - (2 * k : ℤ)) ^ 3

end

end A105636.P15756199369609708629

namespace A105636

/-- `∑{#}[floor((n-1)/2), (n-2*#)^3]` -/
def P15756199369609708629.Spec : Prop :=
  ∀ n, P15756199369609708629.a n = A105636 n

end A105636

/-! ## A105636.P17512331282790795120

`∑[n]²-a(n-1)` with `a(0)=0`
-/

namespace A105636.P17512331282790795120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - a (n - 1)

end

end A105636.P17512331282790795120

namespace A105636

/-- `∑[n]²-a(n-1)` -/
def P17512331282790795120.Spec : Prop :=
  ∀ n, P17512331282790795120.a n = A105636 n

end A105636

/-! ## A105636.P11421416583648933472

`a(n-2)+n^3` with `a(0)=0, a(1)=1`
-/

namespace A105636.P11421416583648933472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + n ^ 3

end

end A105636.P11421416583648933472

namespace A105636

/-- `a(n-2)+n^3` -/
def P11421416583648933472.Spec : Prop :=
  ∀ n, (P11421416583648933472.a n : ℤ) = A105636 n

end A105636

/-! ## A105636.P34815854552999620

`∑[n^3-a(n-1)]` with `a(0)=0`
-/

namespace A105636.P34815854552999620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n ^ 3 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105636.P34815854552999620

namespace A105636

/-- `∑[n^3-a(n-1)]` -/
def P34815854552999620.Spec : Prop :=
  ∀ n, P34815854552999620.a n = A105636 n

end A105636

/-! ## A105636.P13005078127867383855

`∑[∑[n²-∑[and(1, n)-n]]]`
-/

namespace A105636.P13005078127867383855
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105636.P13005078127867383855

namespace A105636

/-- `∑[∑[n²-∑[and(1, n)-n]]]` -/
def P13005078127867383855.Spec : Prop :=
  ∀ n, P13005078127867383855.a n = A105636 n

end A105636

/-! ## A105636.P2452439717917788262

`∑[∑[∑[a(n-2)+6]]]` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A105636.P2452439717917788262
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 5] fun n f3 =>
  f3 (n - 2) + 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105636.P2452439717917788262

namespace A105636

/-- `∑[∑[∑[a(n-2)+6]]]` -/
def P2452439717917788262.Spec : Prop :=
  ∀ n, (P2452439717917788262.a n : ℤ) = A105636 n

end A105636

/-! ## A105636.P6547595855991144514

`Δ[a(n-2)+C(n, 2)²]` with `a(0)=0, a(1)=0`
-/

namespace A105636.P6547595855991144514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 2) + Nat.choose n 2 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A105636.P6547595855991144514

namespace A105636

/-- `Δ[a(n-2)+C(n, 2)²]` -/
def P6547595855991144514.Spec : Prop :=
  ∀ n, P6547595855991144514.a n = A105636 n

end A105636

/-! ## A105636.P16396175655139853156

`floor(a(n-2))+n*n²` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A105636.P16396175655139853156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + n * n ^ 2

end

end A105636.P16396175655139853156

namespace A105636

/-- `floor(a(n-2))+n*n²` -/
def P16396175655139853156.Spec : Prop :=
  ∀ n, (P16396175655139853156.a n : ℤ) = A105636 n

end A105636

/-! ## A105636.P7790229964493428081

`C(n+1, 2)²-floor(a(n-1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A105636.P7790229964493428081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.choose (n + 1) 2 ^ 2 : ℤ) - a (n - 1)

end

end A105636.P7790229964493428081

namespace A105636

/-- `C(n+1, 2)²-floor(a(n-1))` -/
def P7790229964493428081.Spec : Prop :=
  ∀ n, P7790229964493428081.a n = A105636 n

end A105636

/-! ## A105636.P8085753012043995046

`∑[∑[∑[∑[floor(a(n-2))]]]]` with `a(0)=0, a(1)=1, a(2)=4, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A105636.P8085753012043995046
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4, 2] fun n f4 =>
  f4 (n - 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105636.P8085753012043995046

namespace A105636

/-- `∑[∑[∑[∑[floor(a(n-2))]]]]` -/
def P8085753012043995046.Spec : Prop :=
  ∀ n, (P8085753012043995046.a n : ℤ) = A105636 n

end A105636

/-! ## A105636.P17610344903531969065

`n*(a(n-2)/n+n²)` with `a(0)=0, a(1)=1`
-/

namespace A105636.P17610344903531969065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℚ) * (a (n - 2) / (n : ℚ) + (n ^ 2 : ℚ))

end

end A105636.P17610344903531969065

namespace A105636

/-- `n*(a(n-2)/n+n²)` -/
def P17610344903531969065.Spec : Prop :=
  ∀ n, P17610344903531969065.a n = (A105636 n : ℚ)

end A105636

/-! ## A105636.P8837349445934887396

`∑[∑[ogf((x+4x^2+x^3)/(1-2x+2x^3-x^4))]]`
-/

namespace A105636.P8837349445934887396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4, 1] [1, -2, 0, 2, -1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105636.P8837349445934887396

namespace A105636

/-- `∑[∑[ogf((x+4x^2+x^3)/(1-2x+2x^3-x^4))]]` -/
def P8837349445934887396.Spec : Prop :=
  ∀ n, P8837349445934887396.a n = A105636 n

end A105636

/-! ## A105636.P2893971260255055860

`a(n-2)%a(n-1)+n*n²` with `a(0)=0, a(1)=1`
-/

namespace A105636.P2893971260255055860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) % a (n - 1) + n * n ^ 2

end

end A105636.P2893971260255055860

namespace A105636

/-- `a(n-2)%a(n-1)+n*n²` -/
def P2893971260255055860.Spec : Prop :=
  ∀ n, (P2893971260255055860.a n : ℤ) = A105636 n

end A105636

/-! ## A105636.P2594738739251403526

`∑[A011934(n)]`
-/

namespace A105636.P2594738739251403526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105636.P2594738739251403526

namespace A105636

/-- `∑[A011934(n)]` -/
def P2594738739251403526.Spec : Prop :=
  ∀ n, P2594738739251403526.a n = A105636 n

end A105636

/-! ## A105636.P188515172185197964

`∑[abs(A232599(n))]`
-/

namespace A105636.P188515172185197964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A232599 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105636.P188515172185197964

namespace A105636

/-- `∑[abs(A232599(n))]` -/
def P188515172185197964.Spec : Prop :=
  ∀ n, P188515172185197964.a n = A105636 n

end A105636

/-! ## A105636.P9096285160549697706

`∑[∑[A032528(n)]]`
-/

namespace A105636.P9096285160549697706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105636.P9096285160549697706

namespace A105636

/-- `∑[∑[A032528(n)]]` -/
def P9096285160549697706.Spec : Prop :=
  ∀ n, P9096285160549697706.a n = A105636 n

end A105636

/-!
# A105637: a(n) = a(n-2) + a(n-3) - a(n-5), with a(0) = 0, a(1) = 1, a(2) = 2, a(3) = 1, a(4) = 3, a(5) = 3.

The programs for A105637, the canonical program `A105637.P12095936815685243551` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105637 has offset 0).

The definition of A105637 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-3)-a(n-5)` (program `A105637.P12095936815685243551`, by `A105637.P12095936815685243551.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105637.P2388438510509450991

`ogf((x+2x^2)/(1-x^2-x^3+x^5))`
-/

namespace A105637.P2388438510509450991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2] [1, 0, -1, -1, 0, 1] n

end

end A105637.P2388438510509450991

namespace A105637

/-- `ogf((x+2x^2)/(1-x^2-x^3+x^5))` -/
def P2388438510509450991.Spec : Prop :=
  ∀ n, P2388438510509450991.a n = A105637 n

end A105637

/-! ## A105637.P10868969225484341761

`a(n-6)+3` with `a(0)=0, a(1)=1, a(2)=2, a(3)=1, a(4)=3, a(5)=3`
-/

namespace A105637.P10868969225484341761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 1, 3, 3] fun n a =>
  a (n - 6) + 3

end

end A105637.P10868969225484341761

namespace A105637

/-- `a(n-6)+3` -/
def P10868969225484341761.Spec : Prop :=
  ∀ n, (P10868969225484341761.a n : ℤ) = A105637 n

end A105637

/-! ## A105637.P14221172506846902391

`floor(n/2)+floor((n+2)/3)-floor(n/3)`
-/

namespace A105637.P14221172506846902391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ + ⌊(n + 2 : ℚ) / 3⌋ - ⌊(n : ℚ) / 3⌋

end

end A105637.P14221172506846902391

namespace A105637

/-- `floor(n/2)+floor((n+2)/3)-floor(n/3)` -/
def P14221172506846902391.Spec : Prop :=
  ∀ n, P14221172506846902391.a n = A105637 n

end A105637

/-! ## A105637.P12095936815685243551

`a(n-2)+a(n-3)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=1, a(4)=3`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105637

/-- `a(n-2)+a(n-3)-a(n-5)` -/
def P12095936815685243551.Spec : Prop :=
  ∀ n, P12095936815685243551.a n = A105637 n

theorem P12095936815685243551.correct : P12095936815685243551.Spec := by
  intro n
  simp only [A105637]

end A105637

/-! ## A105637.P13264228961766682154

`floor(n/2)+n²%3`
-/

namespace A105637.P13264228961766682154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ + ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A105637.P13264228961766682154

namespace A105637

/-- `floor(n/2)+n²%3` -/
def P13264228961766682154.Spec : Prop :=
  ∀ n, P13264228961766682154.a n = A105637 n

end A105637

/-! ## A105637.P396782086748584579

`1-floor((gcd(3, n)-n)/2)`
-/

namespace A105637.P396782086748584579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌊((Nat.gcd 3 n : ℤ) - (n : ℤ) : ℚ) / 2⌋

end

end A105637.P396782086748584579

namespace A105637

/-- `1-floor((gcd(3, n)-n)/2)` -/
def P396782086748584579.Spec : Prop :=
  ∀ n, P396782086748584579.a n = A105637 n

end A105637

/-! ## A105637.P16654779960158480095

`floor(∑[floor(a(n-3))]/2)` with `a(0)=0, a(1)=3, a(2)=1, a(3)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A105637.P16654779960158480095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 1, -1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋

end

end A105637.P16654779960158480095

namespace A105637

/-- `floor(∑[floor(a(n-3))]/2)` -/
def P16654779960158480095.Spec : Prop :=
  ∀ n, P16654779960158480095.a n = A105637 n

end A105637

/-! ## A105637.P1144093198539466310

`floor(a(n-2)-(3-n)%3)` with `a(0)=0, a(1)=1, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A105637.P1144093198539466310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 2) - Int.tmod (3 - (n : ℤ)) 3

end

end A105637.P1144093198539466310

namespace A105637

/-- `floor(a(n-2)-(3-n)%3)` -/
def P1144093198539466310.Spec : Prop :=
  ∀ n, P1144093198539466310.a n = A105637 n

end A105637

/-! ## A105637.P8019351986169564598

`∑[floor(a(n-3))]-a(n-1)` with `a(0)=0, a(1)=1, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A105637.P8019351986169564598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A105637.P8019351986169564598

namespace A105637

/-- `∑[floor(a(n-3))]-a(n-1)` -/
def P8019351986169564598.Spec : Prop :=
  ∀ n, P8019351986169564598.a n = A105637 n

end A105637

/-! ## A105637.P9779723812285411877

`floor(∑[n+3]/(gcd(n+3, 2*n)+n+2))`
-/

namespace A105637.P9779723812285411877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.gcd (n + 3) (2 * n) + (n + 2) : ℚ)⌋

end

end A105637.P9779723812285411877

namespace A105637

/-- `floor(∑[n+3]/(gcd(n+3, 2*n)+n+2))` -/
def P9779723812285411877.Spec : Prop :=
  ∀ n, P9779723812285411877.a n = A105637 n

end A105637

/-! ## A105637.P4211386283291145675

`floor(A235451(n)/2)`
-/

namespace A105637.P4211386283291145675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A235451 n : ℚ) / 2⌋

end

end A105637.P4211386283291145675

namespace A105637

/-- `floor(A235451(n)/2)` -/
def P4211386283291145675.Spec : Prop :=
  ∀ n, P4211386283291145675.a n = A105637 n

end A105637

/-! ## A105637.P8555255070160501613

`floor(A321773(n+3)/3)`
-/

namespace A105637.P8555255070160501613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A321773 (n + 3) : ℚ) / 3⌋

end

end A105637.P8555255070160501613

namespace A105637

/-- `floor(A321773(n+3)/3)` -/
def P8555255070160501613.Spec : Prop :=
  ∀ n, P8555255070160501613.a n = A105637 n

end A105637

/-! ## A105637.P9314648177413012361

`floor(A011655(n)+n/2)`
-/

namespace A105637.P9314648177413012361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011655 n : ℚ) + (n : ℚ) / 2⌋

end

end A105637.P9314648177413012361

namespace A105637

/-- `floor(A011655(n)+n/2)` -/
def P9314648177413012361.Spec : Prop :=
  ∀ n, P9314648177413012361.a n = A105637 n

end A105637

/-! ## A105637.P2803607498056681247

`A064429(A137719(n))`
-/

namespace A105637.P2803607498056681247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A137719 n).toNat

end

end A105637.P2803607498056681247

namespace A105637

/-- `A064429(A137719(n))` -/
def P2803607498056681247.Spec : Prop :=
  ∀ n, P2803607498056681247.a n = A105637 n

end A105637

/-! ## A105637.P13483420074782624671

`A110654(A235451(n)-1)`
-/

namespace A105637.P13483420074782624671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A235451 n - 1).toNat

end

end A105637.P13483420074782624671

namespace A105637

/-- `A110654(A235451(n)-1)` -/
def P13483420074782624671.Spec : Prop :=
  ∀ n, P13483420074782624671.a n = A105637 n

end A105637

/-! ## A105637.P17639548696827376702

`A321773(n+3)%A235451(n)`
-/

namespace A105637.P17639548696827376702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321773 (n + 3)) (A235451 n)

end

end A105637.P17639548696827376702

namespace A105637

/-- `A321773(n+3)%A235451(n)` -/
def P17639548696827376702.Spec : Prop :=
  ∀ n, P17639548696827376702.a n = A105637 n

end A105637

/-! ## A105637.P3470166580789121591

`A047219(n+1)%A047236(n+1)`
-/

namespace A105637.P3470166580789121591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047219 (n + 1)) (A047236 (n + 1))

end

end A105637.P3470166580789121591

namespace A105637

/-- `A047219(n+1)%A047236(n+1)` -/
def P3470166580789121591.Spec : Prop :=
  ∀ n, P3470166580789121591.a n = A105637 n

end A105637

/-! ## A105637.P13075952617849302532

`A047211(n+1)%A047254(n+1)`
-/

namespace A105637.P13075952617849302532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047211 (n + 1)) (A047254 (n + 1))

end

end A105637.P13075952617849302532

namespace A105637

/-- `A047211(n+1)%A047254(n+1)` -/
def P13075952617849302532.Spec : Prop :=
  ∀ n, P13075952617849302532.a n = A105637 n

end A105637

/-! ## A105637.P936972603007521625

`A186355(n+1)%A069813(n+3)`
-/

namespace A105637.P936972603007521625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186355 (n + 1)) (A069813 (n + 3))

end

end A105637.P936972603007521625

namespace A105637

/-- `A186355(n+1)%A069813(n+3)` -/
def P936972603007521625.Spec : Prop :=
  ∀ n, P936972603007521625.a n = A105637 n

end A105637

/-! ## A105637.P3352398576555483842

`A174257(n+3)`
-/

namespace A105637.P3352398576555483842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174257 (n + 3)

end

end A105637.P3352398576555483842

namespace A105637

/-- `A174257(n+3)` -/
def P3352398576555483842.Spec : Prop :=
  ∀ n, P3352398576555483842.a n = A105637 n

end A105637

/-!
# A105638: Maximum number of intersections in self-intersecting n-gon.

The programs for A105638, the canonical program `A105638.P11959809714236494896` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105638 has offset 3).

The definition of A105638 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105638.P15559684257634611891

`ogf((x+4x^2-x^4)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A105638.P15559684257634611891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4, 0, -1] [1, -1, -2, 2, 1, -1] n

end

end A105638.P15559684257634611891

namespace A105638

/-- `ogf((x+4x^2-x^4)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P15559684257634611891.Spec : Prop :=
  ∀ n, P15559684257634611891.a n = A105638 (n + 3)

end A105638

/-! ## A105638.P11959809714236494896

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=7, a(4)=14`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105638

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P11959809714236494896.Spec : Prop :=
  ∀ n, P11959809714236494896.a n = A105638 (n + 3)

theorem P11959809714236494896.correct : P11959809714236494896.Spec := by
  intro n
  simp only [A105638, Nat.add_sub_cancel]

end A105638

/-! ## A105638.P5504953315962567874

`∑[n²%Δ[n²]]`
-/

namespace A105638.P5504953315962567874
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105638.P5504953315962567874

namespace A105638

/-- `∑[n²%Δ[n²]]` -/
def P5504953315962567874.Spec : Prop :=
  ∀ n, P5504953315962567874.a n = A105638 (n + 3)

end A105638

/-! ## A105638.P16975557604641552443

`floor(n*or(1, n+2)/2)`
-/

namespace A105638.P16975557604641552443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * ((Nat.lor 1 (n + 2) : ℚ) / 2)⌋

end

end A105638.P16975557604641552443

namespace A105638

/-- `floor(n*or(1, n+2)/2)` -/
def P16975557604641552443.Spec : Prop :=
  ∀ n, P16975557604641552443.a n = A105638 (n + 3)

end A105638

/-! ## A105638.P17216850971385770031

`(1+n)*floor(n/2)+n`
-/

namespace A105638.P17216850971385770031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * ⌊(n : ℚ) / 2⌋ + (n : ℤ)

end

end A105638.P17216850971385770031

namespace A105638

/-- `(1+n)*floor(n/2)+n` -/
def P17216850971385770031.Spec : Prop :=
  ∀ n, P17216850971385770031.a n = A105638 (n + 3)

end A105638

/-! ## A105638.P13242928739237276386

`floor(∑[n]+n/gcd(2, n+1))`
-/

namespace A105638.P13242928739237276386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (n : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)⌋

end

end A105638.P13242928739237276386

namespace A105638

/-- `floor(∑[n]+n/gcd(2, n+1))` -/
def P13242928739237276386.Spec : Prop :=
  ∀ n, P13242928739237276386.a n = A105638 (n + 3)

end A105638

/-! ## A105638.P16160713826812794756

`record[(n-1)*round((n-1)/2)-1]`
-/

namespace A105638.P16160713826812794756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105638.P16160713826812794756

namespace A105638

/-- `record[(n-1)*round((n-1)/2)-1]` -/
def P16160713826812794756.Spec : Prop :=
  ∀ n, P16160713826812794756.a n = A105638 (n + 3)

end A105638

/-! ## A105638.P782606628332494251

`∑[or(1, n)-a(n-1)+n]` with `a(0)=0, a(1)=1`
-/

namespace A105638.P782606628332494251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (Nat.lor 1 n : ℤ) - f1 (n - 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105638.P782606628332494251

namespace A105638

/-- `∑[or(1, n)-a(n-1)+n]` -/
def P782606628332494251.Spec : Prop :=
  ∀ n, P782606628332494251.a n = A105638 (n + 3)

end A105638

/-! ## A105638.P784632405670138837

`(lcm(2, n+1)+(n+2)*(n-1))/2`
-/

namespace A105638.P784632405670138837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 2 (n + 1) : ℤ) + (n + 2 : ℤ) * ((n : ℤ) - 1) : ℚ) / 2

end

end A105638.P784632405670138837

namespace A105638

/-- `(lcm(2, n+1)+(n+2)*(n-1))/2` -/
def P784632405670138837.Spec : Prop :=
  ∀ n, P784632405670138837.a n = (A105638 (n + 3) : ℚ)

end A105638

/-! ## A105638.P1793004580321235700

`∑[∑[a(n-2)+3]/a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A105638.P1793004580321235700
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 2) + 3

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105638.P1793004580321235700

namespace A105638

/-- `∑[∑[a(n-2)+3]/a(n-1)]` -/
def P1793004580321235700.Spec : Prop :=
  ∀ n, P1793004580321235700.a n = (A105638 (n + 3) : ℚ)

end A105638

/-! ## A105638.P2607483757158457827

`abs((n+1)*(∑[n-or(1, n)]+1)-n)`
-/

namespace A105638.P2607483757158457827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.lor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j + 1) - (n : ℤ)|

end

end A105638.P2607483757158457827

namespace A105638

/-- `abs((n+1)*(∑[n-or(1, n)]+1)-n)` -/
def P2607483757158457827.Spec : Prop :=
  ∀ n, P2607483757158457827.a n = A105638 (n + 3)

end A105638

/-! ## A105638.P17581819166753674183

`∑[∑[∑[3-a(n-1)]]/a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A105638.P17581819166753674183
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f3 =>
  3 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105638.P17581819166753674183

namespace A105638

/-- `∑[∑[∑[3-a(n-1)]]/a(n-1)]` -/
def P17581819166753674183.Spec : Prop :=
  ∀ n, P17581819166753674183.a n = (A105638 (n + 3) : ℚ)

end A105638

/-! ## A105638.P11189684927917609630

`∑[(n+1)²%(2*n+1)]%(n+1)²`
-/

namespace A105638.P11189684927917609630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 % (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) ^ 2

end

end A105638.P11189684927917609630

namespace A105638

/-- `∑[(n+1)²%(2*n+1)]%(n+1)²` -/
def P11189684927917609630.Spec : Prop :=
  ∀ n, (P11189684927917609630.a n : ℤ) = A105638 (n + 3)

end A105638

/-! ## A105638.P1042594977739741286

`∑[A225126(n+1)]`
-/

namespace A105638.P1042594977739741286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105638.P1042594977739741286

namespace A105638

/-- `∑[A225126(n+1)]` -/
def P1042594977739741286.Spec : Prop :=
  ∀ n, P1042594977739741286.a n = A105638 (n + 3)

end A105638

/-! ## A105638.P10125736469309945509

`abs((A004526(n)+1)*(n+1)-1)`
-/

namespace A105638.P10125736469309945509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A004526 n + 1) * (n + 1 : ℤ) - 1|

end

end A105638.P10125736469309945509

namespace A105638

/-- `abs((A004526(n)+1)*(n+1)-1)` -/
def P10125736469309945509.Spec : Prop :=
  ∀ n, P10125736469309945509.a n = A105638 (n + 3)

end A105638

/-! ## A105638.P5516096941607982291

`A028387(n)%A265225(n)`
-/

namespace A105638.P5516096941607982291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028387 n) (A265225 n)

end

end A105638.P5516096941607982291

namespace A105638

/-- `A028387(n)%A265225(n)` -/
def P5516096941607982291.Spec : Prop :=
  ∀ n, P5516096941607982291.a n = A105638 (n + 3)

end A105638

/-! ## A105638.P15043203387422034773

`A261893(n)%A263511(n)`
-/

namespace A105638.P15043203387422034773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261893 n) (A263511 n)

end

end A105638.P15043203387422034773

namespace A105638

/-- `A261893(n)%A263511(n)` -/
def P15043203387422034773.Spec : Prop :=
  ∀ n, P15043203387422034773.a n = A105638 (n + 3)

end A105638

/-! ## A105638.P2913161616182134429

`A154560(n)%A074148(n+1)`
-/

namespace A105638.P2913161616182134429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154560 n) (A074148 (n + 1))

end

end A105638.P2913161616182134429

namespace A105638

/-- `A154560(n)%A074148(n+1)` -/
def P2913161616182134429.Spec : Prop :=
  ∀ n, P2913161616182134429.a n = A105638 (n + 3)

end A105638

/-! ## A105638.P14898504769377432301

`A178946(n+1)%A056520(n)`
-/

namespace A105638.P14898504769377432301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178946 (n + 1)) (A056520 n)

end

end A105638.P14898504769377432301

namespace A105638

/-- `A178946(n+1)%A056520(n)` -/
def P14898504769377432301.Spec : Prop :=
  ∀ n, P14898504769377432301.a n = A105638 (n + 3)

end A105638

/-! ## A105638.P7702845056428235672

`A213479(n)%A087099(n+1)`
-/

namespace A105638.P7702845056428235672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213479 n) (A087099 (n + 1))

end

end A105638.P7702845056428235672

namespace A105638

/-- `A213479(n)%A087099(n+1)` -/
def P7702845056428235672.Spec : Prop :=
  ∀ n, P7702845056428235672.a n = A105638 (n + 3)

end A105638

/-!
# A105639: Multiples of coefficients in an asymptotic series of Ramanujan.

The programs for A105639, there is no canonical definition to state claims against.
-/

/-! ## A105639.P1799925020652311669

`lcm(A001469(n+1), A226158(2*n))`
-/

namespace A105639.P1799925020652311669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001469 (n + 1)) (A226158 (2 * n))

end

end A105639.P1799925020652311669

/-! ## A105639.P7206042868751836928

`A226158(2*n)*A240485(2*n+1)`
-/

namespace A105639.P7206042868751836928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226158 (2 * n) * A240485 (2 * n + 1)

end

end A105639.P7206042868751836928

/-! ## A105639.P6160200383587378012

`A226158(2*n)*A240677(2*n+1)`
-/

namespace A105639.P6160200383587378012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226158 (2 * n) * A240677 (2 * n + 1)

end

end A105639.P6160200383587378012

/-! ## A105639.P6626664161602728619

`A226158(2*n)*A279172(2*n+1)`
-/

namespace A105639.P6626664161602728619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226158 (2 * n) * A279172 (2 * n + 1)

end

end A105639.P6626664161602728619

/-! ## A105639.P4346421291657692120

`A230324(2*n+1)/2*A226158(2*n)`
-/

namespace A105639.P4346421291657692120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230324 (2 * n + 1) : ℚ) / 2 * (A226158 (2 * n) : ℚ)

end

end A105639.P4346421291657692120

/-!
# A105641: Number of hill-free Dyck paths of semilength n, having no UUDD's, where U=(1,1) and D=(1,-1) (a hill in a Dyck path is a peak at level 1).

The programs for A105641, there is no canonical definition to state claims against.
-/

/-! ## A105641.P3074471393304283978

`A105640(A025699(n+1))`
-/

namespace A105641.P3074471393304283978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105640 (A025699 (n + 1)).toNat

end

end A105641.P3074471393304283978

/-! ## A105641.P1653175536231702331

`A105640(A087811(n+2))`
-/

namespace A105641.P1653175536231702331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105640 (A087811 (n + 2)).toNat

end

end A105641.P1653175536231702331

/-! ## A105641.P3412905676227762527

`A105640(A371972(n+2))`
-/

namespace A105641.P3412905676227762527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105640 (A371972 (n + 2)).toNat

end

end A105641.P3412905676227762527

/-! ## A105641.P12980881479242525200

`A105640(A006918(n+2)-A006918(n))`
-/

namespace A105641.P12980881479242525200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105640 (A006918 (n + 2) - A006918 n).toNat

end

end A105641.P12980881479242525200

/-! ## A105641.P13239311227626485425

`∑[A008615(A173993(n))]`
-/

namespace A105641.P13239311227626485425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A173993 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105641.P13239311227626485425

/-!
# A105642: Composite nonsquares and noncubes.

The programs for A105642, there is no canonical definition to state claims against.
-/

/-! ## A105642.P16295321624593454754

`lt[2, ∑{e}[n, A054541(#)]]`
-/

namespace A105642.P16295321624593454754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), A054541 (Nat.factorization (f3 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A105642.P16295321624593454754

/-! ## A105642.P8225423125030378718

`lt[4, ∏{e}[n, A276439(#+2)]]`
-/

namespace A105642.P8225423125030378718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), A276439 (Nat.factorization (f3 n) p + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A105642.P8225423125030378718

/-! ## A105642.P16488740931833334506

`lt[5, A000005(∏{e}[n, #+7])]`
-/

namespace A105642.P16488740931833334506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 7))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A105642.P16488740931833334506

/-! ## A105642.P12489061252472999098

`comp[∪[A174895(n+1), n²]]`
-/

namespace A105642.P12489061252472999098
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174895 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A105642.P12489061252472999098

/-! ## A105642.P4196478084869011181

`comp[∪[A000040(n+1), ∪[n^3, n²]]]`
-/

namespace A105642.P4196478084869011181
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f4 j = x) ∨ ∃ j, f5 j = x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A105642.P4196478084869011181

/-! ## A105642.P2353145936386972356

`lt[0, A160086(A048785(n))]`
-/

namespace A105642.P2353145936386972356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160086 (A048785 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A105642.P2353145936386972356

/-! ## A105642.P2622475154162337888

`filter[A094784(n+1), A005171(#)]`
-/

namespace A105642.P2622475154162337888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A105642.P2622475154162337888

/-! ## A105642.P17538140066873693701

`filter[A094784(n+1), A066247(#)]`
-/

namespace A105642.P17538140066873693701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A105642.P17538140066873693701

/-! ## A105642.P49650688664754119

`filter[A000037(n+1), A174898(#)]`
-/

namespace A105642.P49650688664754119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A105642.P49650688664754119

/-! ## A105642.P46874996831854666

`filter[A089229(n+1), A174898(#)]`
-/

namespace A105642.P46874996831854666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A105642.P46874996831854666

/-!
# A105644: a(n) = floor((Pi+e)*n).

The programs for A105644, the canonical program `A105644.P7957663544564398084` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105644 has offset 0).

The definition of A105644 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((π+e)*n)` (program `A105644.P7957663544564398084`, by `A105644.P7957663544564398084.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105644.P7957663544564398084

`floor((π+e)*n)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105644

/-- `floor((π+e)*n)` -/
def P7957663544564398084.Spec : Prop :=
  ∀ n, P7957663544564398084.a n = A105644 n

theorem P7957663544564398084.correct : P7957663544564398084.Spec := by
  intro n
  simp only [A105644]

end A105644

/-! ## A105644.P581608723875092310

`ceil(n*(e+π)-ceil(sin(n)²))`
-/

namespace A105644.P581608723875092310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * (Real.exp 1 + Real.pi) - (⌈Real.sin (n : ℝ) ^ 2⌉ : ℝ)⌉

end

end A105644.P581608723875092310

namespace A105644

/-- `ceil(n*(e+π)-ceil(sin(n)²))` -/
def P581608723875092310.Spec : Prop :=
  ∀ n, P581608723875092310.a n = A105644 n

end A105644

/-! ## A105644.P4858677978753854416

`ceil(n*(e+π)-A057427(n))`
-/

namespace A105644.P4858677978753854416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * (Real.exp 1 + Real.pi) - (A057427 n : ℝ)⌉

end

end A105644.P4858677978753854416

namespace A105644

/-- `ceil(n*(e+π)-A057427(n))` -/
def P4858677978753854416.Spec : Prop :=
  ∀ n, P4858677978753854416.a n = A105644 n

end A105644

/-! ## A105644.P7078606298674615048

`A121901(n²-A055641(n+1))`
-/

namespace A105644.P7078606298674615048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121901 ((n ^ 2 : ℤ) - A055641 (n + 1)).toNat

end

end A105644.P7078606298674615048

namespace A105644

/-- `A121901(n²-A055641(n+1))` -/
def P7078606298674615048.Spec : Prop :=
  ∀ n, P7078606298674615048.a n = A105644 n

end A105644

/-! ## A105644.P6121494360292806985

`A121901(n²)`
-/

namespace A105644.P6121494360292806985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121901 (n ^ 2)

end

end A105644.P6121494360292806985

namespace A105644

/-- `A121901(n²)` -/
def P6121494360292806985.Spec : Prop :=
  ∀ n, P6121494360292806985.a n = A105644 n

end A105644

/-! ## A105644.P3642350677916312177

`A121899(n²)+A057428(n)`
-/

namespace A105644.P3642350677916312177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121899 (n ^ 2) + A057428 n

end

end A105644.P3642350677916312177

namespace A105644

/-- `A121899(n²)+A057428(n)` -/
def P3642350677916312177.Spec : Prop :=
  ∀ n, P3642350677916312177.a n = A105644 n

end A105644

/-! ## A105644.P3799416714779956815

`A121899(n²)-A057427(n)`
-/

namespace A105644.P3799416714779956815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121899 (n ^ 2) - A057427 n

end

end A105644.P3799416714779956815

namespace A105644

/-- `A121899(n²)-A057427(n)` -/
def P3799416714779956815.Spec : Prop :=
  ∀ n, P3799416714779956815.a n = A105644 n

end A105644

/-! ## A105644.P13998760853007914098

`A121899(n²)-A178334(n)`
-/

namespace A105644.P13998760853007914098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121899 (n ^ 2) - A178334 n

end

end A105644.P13998760853007914098

namespace A105644

/-- `A121899(n²)-A178334(n)` -/
def P13998760853007914098.Spec : Prop :=
  ∀ n, P13998760853007914098.a n = A105644 n

end A105644

/-! ## A105644.P18363247479418259213

`A121899(n²)-A121900(A121900(n))`
-/

namespace A105644.P18363247479418259213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121899 (n ^ 2) - A121900 (A121900 n).toNat

end

end A105644.P18363247479418259213

namespace A105644

/-- `A121899(n²)-A121900(A121900(n))` -/
def P18363247479418259213.Spec : Prop :=
  ∀ n, P18363247479418259213.a n = A105644 n

end A105644

/-! ## A105644.P8403028992991755046

`lcm(A087960(n), A121901(A002522(n)-1))`
-/

namespace A105644.P8403028992991755046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A121901 (A002522 n - 1).toNat)

end

end A105644.P8403028992991755046

namespace A105644

/-- `lcm(A087960(n), A121901(A002522(n)-1))` -/
def P8403028992991755046.Spec : Prop :=
  ∀ n, (P8403028992991755046.a n : ℤ) = A105644 n

end A105644

/-!
# A105645: Numbers n such that the n-th prime - n is a cube.

The programs for A105645, there is no canonical definition to state claims against.
-/

/-! ## A105645.P2721015921965321961

`eq[A028310(n), A055400(A008578(n+1))]`
-/

namespace A105645.P2721015921965321961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 (A008578 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A105645.P2721015921965321961

/-!
# A105646: Fixed point of the morphism 1 -> 121, 2 -> 343, 3 -> 434, 4 -> 212, starting from a(0) = 1.

The programs for A105646, there is no canonical definition to state claims against.
-/

/-! ## A105646.P4114634808714450159

`A105239(a(A105239(n)))` with `a(0)=1, a(1)=2, a(2)=1, a(3)=3`
-/

namespace A105646.P4114634808714450159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1, 3] fun n a =>
  A105239 (a (A105239 n).toNat).toNat

end

end A105646.P4114634808714450159

/-! ## A105646.P10917662621453747137

`A105239(∑{d}[gcd(n, n+1)-A105239(n), #])`
-/

namespace A105646.P10917662621453747137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) - A105239 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105239 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A105646.P10917662621453747137

/-! ## A105646.P11314392914988825886

`A105239(A037314(n))`
-/

namespace A105646.P11314392914988825886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105239 (A037314 n).toNat

end

end A105646.P11314392914988825886

/-! ## A105646.P5012572452171650267

`A105239(A163344(n))`
-/

namespace A105646.P5012572452171650267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105239 (A163344 n).toNat

end

end A105646.P5012572452171650267

/-! ## A105646.P16667522104403396245

`A105239(A163480(n))`
-/

namespace A105646.P16667522104403396245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105239 (A163480 n).toNat

end

end A105646.P16667522104403396245

/-!
# A105647: Lexicographically earliest sequence of increasing numbers whose digits satisfy the "Fractal Jump" rule using only the digits 2 and 5: keep the first digit "d" of the sequence, then jump over the next "d" digits and keep the digit "e" on which you have landed. Jump now over the next "e" digits and keep the digit "f" on which you have landed, etc. The succession "def..." of kept digits is the sequence itself.

The programs for A105647, there is no canonical definition to state claims against.
-/

/-! ## A105647.P1290942376873043983

`A072961(eq[A000122(n+1), A251759(n)])`
-/

namespace A105647.P1290942376873043983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072961 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A105647.P1290942376873043983

/-! ## A105647.P17119438972516621974

`A072961(lt[A006141(n+1), A000196(n)])`
-/

namespace A105647.P17119438972516621974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072961 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A105647.P17119438972516621974

/-! ## A105647.P2611062417197575579

`A072961(A026480(n+1)%A128343(n+1))`
-/

namespace A105647.P2611062417197575579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072961 (Int.tmod (A026480 (n + 1)) (A128343 (n + 1))).toNat

end

end A105647.P2611062417197575579

/-!
# A105648: Smallest member of a set of Smith triples.

The programs for A105648, there is no canonical definition to state claims against.
-/

/-! ## A105648.P8459745446331304760

`∩[A050219(n+1)-1, A050219(n+1)]`
-/

namespace A105648.P8459745446331304760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050219 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105648.P8459745446331304760

/-! ## A105648.P45130005386253928

`1-4/2+∩[A050220(n+1)-1, A050220(n+1)]`
-/

namespace A105648.P45130005386253928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050220 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050220 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (4 : ℚ) / 2 + (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ)

end

end A105648.P45130005386253928

/-!
# A105649: Smallest member of set of 4 consecutive numbers which are Smith numbers.

The programs for A105649, there is no canonical definition to state claims against.
-/

/-! ## A105649.P6330999112493143291

`∩[A105648(n+1)-1, A105648(n+1)]`
-/

namespace A105649.P6330999112493143291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105648 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105648 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105649.P6330999112493143291

/-!
# A105650: Smallest member of set of 5 consecutive numbers which are Smith numbers.

The programs for A105650, there is no canonical definition to state claims against.
-/

/-! ## A105650.P14655571846557699726

`∩[A105649(n+1)-1, A105649(n+1)]`
-/

namespace A105650.P14655571846557699726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105649 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105650.P14655571846557699726

/-!
# A105651: Numbers n such that n + smallest prime factor of n + largest prime factor of n = next prime after n.

The programs for A105651, there is no canonical definition to state claims against.
-/

/-! ## A105651.P9304736512009070856

`eq[A007920(n+1), A074320(2*(n+1))]+1`
-/

namespace A105651.P9304736512009070856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074320 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A105651.P9304736512009070856

/-! ## A105651.P12187752088089505270

`eq[A013632(n+1), A074320(2*(n+1))]+1`
-/

namespace A105651.P12187752088089505270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074320 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A105651.P12187752088089505270

/-! ## A105651.P14445651042087625297

`eq[A007920(n), A074320(A233583(n+1))]`
-/

namespace A105651.P14445651042087625297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074320 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A105651.P14445651042087625297

/-! ## A105651.P8998332058180343548

`eq[A013632(n), A074320(A233583(n+1))]`
-/

namespace A105651.P8998332058180343548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074320 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A105651.P8998332058180343548

/-!
# A105652: Numbers k such that p1=2k+3, p2=4k+5 and p3=6k+7 are all prime.

The programs for A105652, there is no canonical definition to state claims against.
-/

/-! ## A105652.P15690423980292183560

`(A174734(n+1)-3)/2`
-/

namespace A105652.P15690423980292183560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174734 (n + 1) - 3 : ℚ) / 2

end

end A105652.P15690423980292183560

/-! ## A105652.P1905224418956162070

`A124408(n+1)-1`
-/

namespace A105652.P1905224418956162070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124408 (n + 1) - 1

end

end A105652.P1905224418956162070

/-! ## A105652.P14049119056403770691

`(A137702(n+1)-5)/4`
-/

namespace A105652.P14049119056403770691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137702 (n + 1) - 5 : ℚ) / 4

end

end A105652.P14049119056403770691

/-! ## A105652.P1893487382014994431

`A174734(n+1)%(A124408(n+1)+2)`
-/

namespace A105652.P1893487382014994431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174734 (n + 1)) (A124408 (n + 1) + 2)

end

end A105652.P1893487382014994431

/-! ## A105652.P5284605986077952916

`A321800(A320486(n))+A124408(n+1)`
-/

namespace A105652.P5284605986077952916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A320486 n).toNat + A124408 (n + 1)

end

end A105652.P5284605986077952916

/-! ## A105652.P3137293471024041618

`A359763(A006881(n+1))+A124408(n+1)`
-/

namespace A105652.P3137293471024041618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359763 (A006881 (n + 1)).toNat + A124408 (n + 1)

end

end A105652.P3137293471024041618

/-! ## A105652.P7548582810486496419

`A359763(A284018(n+1))+A124408(n+1)`
-/

namespace A105652.P7548582810486496419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359763 (A284018 (n + 1)).toNat + A124408 (n + 1)

end

end A105652.P7548582810486496419

/-! ## A105652.P6641013663250949244

`A321800(A010784(n+1))+A124408(n+1)`
-/

namespace A105652.P6641013663250949244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A010784 (n + 1)).toNat + A124408 (n + 1)

end

end A105652.P6641013663250949244

/-! ## A105652.P2672003873070683511

`floor(p?[A130800(n+1)+1]/2)-1`
-/

namespace A105652.P2672003873070683511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130800 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌋ - 1

end

end A105652.P2672003873070683511

/-! ## A105652.P11184918861119061954

`∩[A123998(n+1), A255607(n+1)]-1`
-/

namespace A105652.P11184918861119061954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255607 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A105652.P11184918861119061954

/-! ## A105652.P80854164160585204

`∩[A123998(n+1), A174100(n+1)]-1`
-/

namespace A105652.P80854164160585204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174100 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A105652.P80854164160585204

/-! ## A105652.P4802364613072638738

`∩[A174100(n+1), A255607(n+1)]-1`
-/

namespace A105652.P4802364613072638738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255607 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A105652.P4802364613072638738

/-! ## A105652.P9547347687746947901

`∩[A005098(n+1), A174100(n+1)]-1`
-/

namespace A105652.P9547347687746947901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174100 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A105652.P9547347687746947901

/-! ## A105652.P13664877067897278083

`A273943(A174734(n+1)-3)`
-/

namespace A105652.P13664877067897278083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A174734 (n + 1) - 3).toNat

end

end A105652.P13664877067897278083

/-! ## A105652.P4101375788551748305

`∩[A005097(n+1), A255607(n+1)]-1`
-/

namespace A105652.P4101375788551748305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255607 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A105652.P4101375788551748305

/-! ## A105652.P9414954152318286132

`∩[A102781(n+1), A255607(n+1)]-1`
-/

namespace A105652.P9414954152318286132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255607 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A105652.P9414954152318286132

/-! ## A105652.P10252024244234894762

`A014682(A174734(n+1)-3)`
-/

namespace A105652.P10252024244234894762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A174734 (n + 1) - 3).toNat

end

end A105652.P10252024244234894762

/-! ## A105652.P4563642215487087923

`∩[A105610(n+1), A153218(n+1)]`
-/

namespace A105652.P4563642215487087923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105652.P4563642215487087923

/-! ## A105652.P17304734249732957321

`∩[A024899(n+1), A123998(n+1)]-1`
-/

namespace A105652.P17304734249732957321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123998 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A105652.P17304734249732957321

/-! ## A105652.P16844094113077656458

`A321804(xor(n, n+1))+A124408(n+1)`
-/

namespace A105652.P16844094113077656458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (Nat.xor n (n + 1)) + A124408 (n + 1)

end

end A105652.P16844094113077656458

/-!
# A105653: Numbers n such that p1=2n+3, p2=4n+5, p3=6n+7 and p4=8n+9 are all prime.

The programs for A105653, there is no canonical definition to state claims against.
-/

/-! ## A105653.P6662723997774119348

`A124409(1+n)-1`
-/

namespace A105653.P6662723997774119348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124409 (1 + n) - 1

end

end A105653.P6662723997774119348

/-! ## A105653.P3934493071186038237

`floor(sinh(log(A237189(n+1))))`
-/

namespace A105653.P3934493071186038237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (A237189 (n + 1) : ℝ))⌋

end

end A105653.P3934493071186038237

/-! ## A105653.P4983458955252829368

`(A336059(n+1)-3)/2`
-/

namespace A105653.P4983458955252829368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336059 (n + 1) - 3 : ℚ) / 2

end

end A105653.P4983458955252829368

/-! ## A105653.P1112691461722125977

`record[A124409(A133310(n))-1]`
-/

namespace A105653.P1112691461722125977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124409 (A133310 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105653.P1112691461722125977

/-! ## A105653.P8545201470789648942

`A000027(A237189(n+1)/2-1)`
-/

namespace A105653.P8545201470789648942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A237189 (n + 1) : ℚ) / 2 - 1)).toNat

end

end A105653.P8545201470789648942

/-!
# A105654: Numbers k such that p1=2k+3, p2=4k+5, p3=6k+7, p4=8k+9 and p5=10k+11 are all prime.

The programs for A105654, there is no canonical definition to state claims against.
-/

/-! ## A105654.P159322461892728056

`A124410(n+1)-1`
-/

namespace A105654.P159322461892728056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124410 (n + 1) - 1

end

end A105654.P159322461892728056

/-! ## A105654.P2523054242981592354

`floor(sinh(log(A237190(n+1))))`
-/

namespace A105654.P2523054242981592354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (A237190 (n + 1) : ℝ))⌋

end

end A105654.P2523054242981592354

/-! ## A105654.P4622964703529493663

`A134824(n+2)+A124410(n+1)`
-/

namespace A105654.P4622964703529493663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A124410 (n + 1)

end

end A105654.P4622964703529493663

/-! ## A105654.P10622214952698436293

`A153881(n+2)+A124410(n+1)`
-/

namespace A105654.P10622214952698436293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A124410 (n + 1)

end

end A105654.P10622214952698436293

/-!
# A105655: Numbers k such that p1=2k+3, p2=4k+5, p3=6k+7, p4=8k+9, p5=10k+11 and p6=12k+13 are all prime.

The programs for A105655, there is no canonical definition to state claims against.
-/

/-! ## A105655.P11379701945995812501

`A124411(n+1)-1`
-/

namespace A105655.P11379701945995812501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124411 (n + 1) - 1

end

end A105655.P11379701945995812501

/-! ## A105655.P1795996404904657410

`A153881(n+2)+A124411(n+1)`
-/

namespace A105655.P1795996404904657410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A124411 (n + 1)

end

end A105655.P1795996404904657410

/-! ## A105655.P11500749813046681786

`A260196(n+2)+A124411(n+1)`
-/

namespace A105655.P11500749813046681786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A124411 (n + 1)

end

end A105655.P11500749813046681786

/-! ## A105655.P5675591048816766817

`A124452(A064135(n))+A124411(n+1)`
-/

namespace A105655.P5675591048816766817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124452 (A064135 n).toNat + A124411 (n + 1)

end

end A105655.P5675591048816766817

/-!
# A105657: Numbers n such that p1=2n+3, p2=4n+5, p3=6n+7, p4=8n+9, p5=10n+11, p6=12n+13, p7=14n+15 and p8=16n+17 are all prime.

The programs for A105657, there is no canonical definition to state claims against.
-/

/-! ## A105657.P8230782875130664515

`(A336060(n+1)-3)/2`
-/

namespace A105657.P8230782875130664515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336060 (n + 1) - 3 : ℚ) / 2

end

end A105657.P8230782875130664515

/-!
# A105658: a(n) = (Product_{i=1..n} i^i) / denominator( Sum_{j=1..n} j*(j+1)/2 / (Product_{k=0..j-1} j!/k!) ).

The programs for A105658, there is no canonical definition to state claims against.
-/

/-! ## A105658.P4133563574255369986

`gcd(A004188(n), A036493(2*n))`
-/

namespace A105658.P4133563574255369986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004188 n) (A036493 (2 * n))

end

end A105658.P4133563574255369986

/-! ## A105658.P16194850735338237602

`gcd(A004188(n), A298036(A037952(n)))`
-/

namespace A105658.P16194850735338237602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004188 n) (A298036 (A037952 n).toNat)

end

end A105658.P16194850735338237602

/-! ## A105658.P18007756590812183670

`gcd(A004277(A037952(n)), A226451(n))`
-/

namespace A105658.P18007756590812183670
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004277 (A037952 n).toNat) (A226451 n)

end

end A105658.P18007756590812183670

/-! ## A105658.P7107229503729853204

`gcd((3*n^3-n)/2, A008574(A134171(n+1)))`
-/

namespace A105658.P7107229503729853204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (((3 * n ^ 3 : ℤ) - (n : ℤ) : ℚ) / 2)) (A008574 (A134171 (n + 1)).toNat)

end

end A105658.P7107229503729853204

/-! ## A105658.P5055768415054785263

`gcd(A008486(A226451(n)), A326302(n))`
-/

namespace A105658.P5055768415054785263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008486 (A226451 n).toNat) (A326302 n)

end

end A105658.P5055768415054785263

/-!
# A105660: Expansion of g.f. (1-x)(x^2-5x+3)/(x^4-6x^3+13x^2-6x+1).

The programs for A105660, the canonical program `A105660.P12762063270510267695` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105660 has offset 0).

The definition of A105660 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3-8x+6x^2-x^3)/(1-6x+13x^2-6x^3+x^4))` (program `A105660.P12762063270510267695`, by `A105660.P12762063270510267695.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105660.P12762063270510267695

`ogf((3-8x+6x^2-x^3)/(1-6x+13x^2-6x^3+x^4))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105660

/-- `ogf((3-8x+6x^2-x^3)/(1-6x+13x^2-6x^3+x^4))` -/
def P12762063270510267695.Spec : Prop :=
  ∀ n, P12762063270510267695.a n = A105660 n

theorem P12762063270510267695.correct : P12762063270510267695.Spec := by
  intro n
  simp only [A105660]

end A105660

/-!
# A105661: a(n)=1 if n is a prime, 2 if n is an even semiprime, otherwise 0.

The programs for A105661, the canonical program `A105661.P17731202233588495328` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105661 has offset 1).

The definition of A105661 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105661.P16021278056249620734

`C(2, A274472(n+1)²)`
-/

namespace A105661.P16021278056249620734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A274472 (n + 1) ^ 2).toNat

end

end A105661.P16021278056249620734

namespace A105661

/-- `C(2, A274472(n+1)²)` -/
def P16021278056249620734.Spec : Prop :=
  ∀ n, (P16021278056249620734.a n : ℤ) = A105661 (n + 1)

end A105661

/-! ## A105661.P5127055796057727984

`and((-1)^n, A105700(n+1))`
-/

namespace A105661.P5127055796057727984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((-1) ^ n) (A105700 (n + 1))

end

end A105661.P5127055796057727984

namespace A105661

/-- `and((-1)^n, A105700(n+1))` -/
def P5127055796057727984.Spec : Prop :=
  ∀ n, P5127055796057727984.a n = A105661 (n + 1)

end A105661

/-! ## A105661.P4132961264244752125

`C(∑{e}[n+1, #], A319694(n+1)²)`
-/

namespace A105661.P4132961264244752125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) (A319694 (n + 1) ^ 2).toNat

end

end A105661.P4132961264244752125

namespace A105661

/-- `C(∑{e}[n+1, #], A319694(n+1)²)` -/
def P4132961264244752125.Spec : Prop :=
  ∀ n, (P4132961264244752125.a n : ℤ) = A105661 (n + 1)

end A105661

/-! ## A105661.P17731202233588495328

`A052591(∑{e}[n+1, #])%(2+n%2)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A105661

/-- `A052591(∑{e}[n+1, #])%(2+n%2)` -/
def P17731202233588495328.Spec : Prop :=
  ∀ n, P17731202233588495328.a n = A105661 (n + 1)

theorem P17731202233588495328.correct : P17731202233588495328.Spec := by
  intro n
  simp only [A105661, Nat.add_sub_cancel]

end A105661

/-! ## A105661.P11609611906030129121

`C(2*and(1, n), (1-A001222(n+1))²)`
-/

namespace A105661.P11609611906030129121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * Nat.land 1 n) ((1 - A001222 (n + 1)) ^ 2).toNat

end

end A105661.P11609611906030129121

namespace A105661

/-- `C(2*and(1, n), (1-A001222(n+1))²)` -/
def P11609611906030129121.Spec : Prop :=
  ∀ n, (P11609611906030129121.a n : ℤ) = A105661 (n + 1)

end A105661

/-! ## A105661.P3990591416053579029

`A061007(A068794(n+1))`
-/

namespace A105661.P3990591416053579029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061007 (A068794 (n + 1)).toNat

end

end A105661.P3990591416053579029

namespace A105661

/-- `A061007(A068794(n+1))` -/
def P3990591416053579029.Spec : Prop :=
  ∀ n, P3990591416053579029.a n = A105661 (n + 1)

end A105661

/-! ## A105661.P18292602821279866809

`A061007(A130065(n+1))`
-/

namespace A105661.P18292602821279866809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061007 (A130065 (n + 1)).toNat

end

end A105661.P18292602821279866809

namespace A105661

/-- `A061007(A130065(n+1))` -/
def P18292602821279866809.Spec : Prop :=
  ∀ n, P18292602821279866809.a n = A105661 (n + 1)

end A105661

/-! ## A105661.P3638561702725229548

`A061006(A278525(n+1))`
-/

namespace A105661.P3638561702725229548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061006 (A278525 (n + 1)).toNat

end

end A105661.P3638561702725229548

namespace A105661

/-- `A061006(A278525(n+1))` -/
def P3638561702725229548.Spec : Prop :=
  ∀ n, P3638561702725229548.a n = A105661 (n + 1)

end A105661

/-! ## A105661.P678121699575510927

`A130706(A274472(n+1))`
-/

namespace A105661.P678121699575510927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (A274472 (n + 1)).toNat

end

end A105661.P678121699575510927

namespace A105661

/-- `A130706(A274472(n+1))` -/
def P678121699575510927.Spec : Prop :=
  ∀ n, P678121699575510927.a n = A105661 (n + 1)

end A105661

/-! ## A105661.P17891552641588390242

`A217983(A369032(n+1))-1`
-/

namespace A105661.P17891552641588390242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217983 (A369032 (n + 1)).toNat - 1

end

end A105661.P17891552641588390242

namespace A105661

/-- `A217983(A369032(n+1))-1` -/
def P17891552641588390242.Spec : Prop :=
  ∀ n, P17891552641588390242.a n = A105661 (n + 1)

end A105661

/-! ## A105661.P2233068459578337082

`A292599(n+1)%A010694(n)`
-/

namespace A105661.P2233068459578337082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292599 (n + 1)) (A010694 n)

end

end A105661.P2233068459578337082

namespace A105661

/-- `A292599(n+1)%A010694(n)` -/
def P2233068459578337082.Spec : Prop :=
  ∀ n, P2233068459578337082.a n = A105661 (n + 1)

end A105661

/-! ## A105661.P5561225296223155833

`A130675(n+1)%A174296(n)`
-/

namespace A105661.P5561225296223155833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130675 (n + 1)) (A174296 n)

end

end A105661.P5561225296223155833

namespace A105661

/-- `A130675(n+1)%A174296(n)` -/
def P5561225296223155833.Spec : Prop :=
  ∀ n, P5561225296223155833.a n = A105661 (n + 1)

end A105661

/-! ## A105661.P513936037598230718

`A331188(n+1)%A103947(n)`
-/

namespace A105661.P513936037598230718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331188 (n + 1)) (A103947 n)

end

end A105661.P513936037598230718

namespace A105661

/-- `A331188(n+1)%A103947(n)` -/
def P513936037598230718.Spec : Prop :=
  ∀ n, P513936037598230718.a n = A105661 (n + 1)

end A105661

/-! ## A105661.P3822743429659519643

`and(A010684(n), A292599(n+1))`
-/

namespace A105661.P3822743429659519643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010684 n) (A292599 (n + 1))

end

end A105661.P3822743429659519643

namespace A105661

/-- `and(A010684(n), A292599(n+1))` -/
def P3822743429659519643.Spec : Prop :=
  ∀ n, P3822743429659519643.a n = A105661 (n + 1)

end A105661

/-! ## A105661.P9443369013125374743

`and(A084642(n), A292599(n+1))`
-/

namespace A105661.P9443369013125374743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084642 n) (A292599 (n + 1))

end

end A105661.P9443369013125374743

namespace A105661

/-- `and(A084642(n), A292599(n+1))` -/
def P9443369013125374743.Spec : Prop :=
  ∀ n, P9443369013125374743.a n = A105661 (n + 1)

end A105661

/-! ## A105661.P16216254841035696880

`and(A091090(n), A292599(n+1))`
-/

namespace A105661.P16216254841035696880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091090 n) (A292599 (n + 1))

end

end A105661.P16216254841035696880

namespace A105661

/-- `and(A091090(n), A292599(n+1))` -/
def P16216254841035696880.Spec : Prop :=
  ∀ n, P16216254841035696880.a n = A105661 (n + 1)

end A105661

/-! ## A105661.P15321383110557581452

`∏{d}[A274472(n+1), A274472(#)]`
-/

namespace A105661.P15321383110557581452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A274472 d

end

end A105661.P15321383110557581452

namespace A105661

/-- `∏{d}[A274472(n+1), A274472(#)]` -/
def P15321383110557581452.Spec : Prop :=
  ∀ n, P15321383110557581452.a n = A105661 (n + 1)

end A105661

/-! ## A105661.P16392176650501181233

`and(A051881(n+1), A292599(n+1))`
-/

namespace A105661.P16392176650501181233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051881 (n + 1)) (A292599 (n + 1))

end

end A105661.P16392176650501181233

namespace A105661

/-- `and(A051881(n+1), A292599(n+1))` -/
def P16392176650501181233.Spec : Prop :=
  ∀ n, P16392176650501181233.a n = A105661 (n + 1)

end A105661

/-! ## A105661.P775987615367534201

`and(A227339(n+1), A292599(n+1))`
-/

namespace A105661.P775987615367534201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A227339 (n + 1)) (A292599 (n + 1))

end

end A105661.P775987615367534201

namespace A105661

/-- `and(A227339(n+1), A292599(n+1))` -/
def P775987615367534201.Spec : Prop :=
  ∀ n, P775987615367534201.a n = A105661 (n + 1)

end A105661

/-! ## A105661.P5346193028489746253

`round(A001222(n+1)/A083716(n+1)²²)`
-/

namespace A105661.P5346193028489746253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001222 (n + 1) : ℚ) / ((A083716 (n + 1) ^ 2) ^ 2 : ℚ))

end

end A105661.P5346193028489746253

namespace A105661

/-- `round(A001222(n+1)/A083716(n+1)²²)` -/
def P5346193028489746253.Spec : Prop :=
  ∀ n, P5346193028489746253.a n = A105661 (n + 1)

end A105661

/-!
# A105662: a(n) = abs(floor(n*sin(n))).

The programs for A105662, the canonical program `A105662.P8104653336747055446` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105662 has offset 0).

The definition of A105662 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `abs(floor(n*sin(n)))` (program `A105662.P8104653336747055446`, by `A105662.P8104653336747055446.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105662.P8104653336747055446

`abs(floor(n*sin(n)))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105662

/-- `abs(floor(n*sin(n)))` -/
def P8104653336747055446.Spec : Prop :=
  ∀ n, P8104653336747055446.a n = A105662 n

theorem P8104653336747055446.correct : P8104653336747055446.Spec := by
  intro n
  simp only [A105662]

end A105662

/-! ## A105662.P15785661798282225228

`abs(ceil(n*sin(-n)))`
-/

namespace A105662.P15785661798282225228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈(n : ℝ) * Real.sin (-(n : ℤ) : ℝ)⌉|

end

end A105662.P15785661798282225228

namespace A105662

/-- `abs(ceil(n*sin(-n)))` -/
def P15785661798282225228.Spec : Prop :=
  ∀ n, P15785661798282225228.a n = A105662 n

end A105662

/-! ## A105662.P8065998361099255195

`∑{d}[floor(n*sin(n)), A000010(#)]`
-/

namespace A105662.P8065998361099255195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sin (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A105662.P8065998361099255195

namespace A105662

/-- `∑{d}[floor(n*sin(n)), A000010(#)]` -/
def P8065998361099255195.Spec : Prop :=
  ∀ n, P8065998361099255195.a n = A105662 n

end A105662

/-! ## A105662.P12525252576157152947

`sqrt(floor(n*sin(n))²*A057427(n))`
-/

namespace A105662.P12525252576157152947
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (⌊(n : ℝ) * Real.sin (n : ℝ)⌋ ^ 2 * A057427 n : ℝ)

end

end A105662.P12525252576157152947

namespace A105662

/-- `sqrt(floor(n*sin(n))²*A057427(n))` -/
def P12525252576157152947.Spec : Prop :=
  ∀ n, P12525252576157152947.a n = (A105662 n : ℝ)

end A105662

/-! ## A105662.P4461006411967770812

`sqrt(floor(n*sin(n))²%A017439(n))`
-/

namespace A105662.P4461006411967770812
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.tmod (⌊(n : ℝ) * Real.sin (n : ℝ)⌋ ^ 2) (A017439 n) : ℝ)

end

end A105662.P4461006411967770812

namespace A105662

/-- `sqrt(floor(n*sin(n))²%A017439(n))` -/
def P4461006411967770812.Spec : Prop :=
  ∀ n, P4461006411967770812.a n = (A105662 n : ℝ)

end A105662

/-! ## A105662.P15263087389293430534

`gcd(2*n-A005843(n), floor(n*sin(n)))`
-/

namespace A105662.P15263087389293430534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * n : ℤ) - A005843 n) ⌊(n : ℝ) * Real.sin (n : ℝ)⌋

end

end A105662.P15263087389293430534

namespace A105662

/-- `gcd(2*n-A005843(n), floor(n*sin(n)))` -/
def P15263087389293430534.Spec : Prop :=
  ∀ n, (P15263087389293430534.a n : ℤ) = A105662 n

end A105662

/-! ## A105662.P1934512615102655722

`A091542(n)-A000493(n)`
-/

namespace A105662.P1934512615102655722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091542 n - A000493 n

end

end A105662.P1934512615102655722

namespace A105662

/-- `A091542(n)-A000493(n)` -/
def P1934512615102655722.Spec : Prop :=
  ∀ n, P1934512615102655722.a n = A105662 n

theorem P1934512615102655722.correct : P1934512615102655722.Spec := by
  intro n
  simp only [A105662, Nat.add_sub_cancel, A105662.P1934512615102655722.a, A105662.P8104653336747055446.a, A000493, A000493.P9852377980788553267.a, A091542, A091542.P13889737088320293917.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A105662

/-! ## A105662.P5187353278898831514

`A000196(floor(n*sin(n))²)`
-/

namespace A105662.P5187353278898831514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (⌊(n : ℝ) * Real.sin (n : ℝ)⌋ ^ 2).toNat

end

end A105662.P5187353278898831514

namespace A105662

/-- `A000196(floor(n*sin(n))²)` -/
def P5187353278898831514.Spec : Prop :=
  ∀ n, P5187353278898831514.a n = A105662 n

end A105662

/-!
# A105663: a(n) = abs(floor(n*cos(n))).

The programs for A105663, the canonical program `A105663.P15194811522587692747` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105663 has offset 0).

The definition of A105663 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `abs(floor(n*cos(n)))` (program `A105663.P15194811522587692747`, by `A105663.P15194811522587692747.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105663.P15194811522587692747

`abs(floor(n*cos(n)))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105663

/-- `abs(floor(n*cos(n)))` -/
def P15194811522587692747.Spec : Prop :=
  ∀ n, P15194811522587692747.a n = A105663 n

theorem P15194811522587692747.correct : P15194811522587692747.Spec := by
  intro n
  simp only [A105663]

end A105663

/-! ## A105663.P7019548877221393753

`abs(ceil(-(n*cos(n))))`
-/

namespace A105663.P7019548877221393753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈-((n : ℝ) * Real.cos (n : ℝ))⌉|

end

end A105663.P7019548877221393753

namespace A105663

/-- `abs(ceil(-(n*cos(n))))` -/
def P7019548877221393753.Spec : Prop :=
  ∀ n, P7019548877221393753.a n = A105663 n

end A105663

/-! ## A105663.P3172847672850913585

`abs(ceil(n*cos(n+π)))`
-/

namespace A105663.P3172847672850913585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈(n : ℝ) * Real.cos ((n : ℝ) + Real.pi)⌉|

end

end A105663.P3172847672850913585

namespace A105663

/-- `abs(ceil(n*cos(n+π)))` -/
def P3172847672850913585.Spec : Prop :=
  ∀ n, P3172847672850913585.a n = A105663 n

end A105663

/-! ## A105663.P3466474513335271345

`lcm(floor(n*cos(n)), A033999(n))`
-/

namespace A105663.P3466474513335271345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌊(n : ℝ) * Real.cos (n : ℝ)⌋ (A033999 n)

end

end A105663.P3466474513335271345

namespace A105663

/-- `lcm(floor(n*cos(n)), A033999(n))` -/
def P3466474513335271345.Spec : Prop :=
  ∀ n, (P3466474513335271345.a n : ℤ) = A105663 n

end A105663

/-! ## A105663.P244084108685362765

`∑{d}[floor(n*cos(n)), A000010(#)]`
-/

namespace A105663.P244084108685362765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.cos (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A105663.P244084108685362765

namespace A105663

/-- `∑{d}[floor(n*cos(n)), A000010(#)]` -/
def P244084108685362765.Spec : Prop :=
  ∀ n, P244084108685362765.a n = A105663 n

end A105663

/-!
# A105664: a(n) = abs(floor(n*tan(n))).

The programs for A105664, the canonical program `A105664.P12838014090401598163` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105664 has offset 0).

The definition of A105664 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `abs(floor(n*tan(n)))` (program `A105664.P12838014090401598163`, by `A105664.P12838014090401598163.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105664.P12838014090401598163

`abs(floor(n*tan(n)))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105664

/-- `abs(floor(n*tan(n)))` -/
def P12838014090401598163.Spec : Prop :=
  ∀ n, P12838014090401598163.a n = A105664 n

theorem P12838014090401598163.correct : P12838014090401598163.Spec := by
  intro n
  simp only [A105664]

end A105664

/-! ## A105664.P16363306384217307421

`abs(ceil(n*tan(-n)))`
-/

namespace A105664.P16363306384217307421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈(n : ℝ) * Real.tan (-(n : ℤ) : ℝ)⌉|

end

end A105664.P16363306384217307421

namespace A105664

/-- `abs(ceil(n*tan(-n)))` -/
def P16363306384217307421.Spec : Prop :=
  ∀ n, P16363306384217307421.a n = A105664 n

end A105664

/-! ## A105664.P16314899898813491967

`lcm(ceil(n*tan(-n)), A057979(2*n))`
-/

namespace A105664.P16314899898813491967
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌈(n : ℝ) * Real.tan (-(n : ℤ) : ℝ)⌉ (A057979 (2 * n))

end

end A105664.P16314899898813491967

namespace A105664

/-- `lcm(ceil(n*tan(-n)), A057979(2*n))` -/
def P16314899898813491967.Spec : Prop :=
  ∀ n, (P16314899898813491967.a n : ℤ) = A105664 n

end A105664

/-! ## A105664.P3274941772299513802

`gcd(ceil(n*tan(-n)), A276084(2*n+5))`
-/

namespace A105664.P3274941772299513802
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌈(n : ℝ) * Real.tan (-(n : ℤ) : ℝ)⌉ (A276084 (2 * n + 5))

end

end A105664.P3274941772299513802

namespace A105664

/-- `gcd(ceil(n*tan(-n)), A276084(2*n+5))` -/
def P3274941772299513802.Spec : Prop :=
  ∀ n, (P3274941772299513802.a n : ℤ) = A105664 n

end A105664

/-!
# A105665: a(n) = abs(floor(n/cos(n))).

The programs for A105665, the canonical program `A105665.P12600108322873357674` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105665 has offset 1).

The definition of A105665 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `abs(floor((n+1)/cos(n+1)))` (program `A105665.P12600108322873357674`, by `A105665.P12600108322873357674.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105665.P12600108322873357674

`abs(floor((n+1)/cos(n+1)))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105665

/-- `abs(floor((n+1)/cos(n+1)))` -/
def P12600108322873357674.Spec : Prop :=
  ∀ n, P12600108322873357674.a n = A105665 (n + 1)

theorem P12600108322873357674.correct : P12600108322873357674.Spec := by
  intro n
  simp only [A105665, Nat.add_sub_cancel]

end A105665

/-! ## A105665.P15747878020872240530

`abs(ceil(-((n+1)/cos(n+1))))`
-/

namespace A105665.P15747878020872240530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈-((n + 1 : ℝ) / Real.cos (n + 1 : ℝ))⌉|

end

end A105665.P15747878020872240530

namespace A105665

/-- `abs(ceil(-((n+1)/cos(n+1))))` -/
def P15747878020872240530.Spec : Prop :=
  ∀ n, P15747878020872240530.a n = A105665 (n + 1)

end A105665

/-! ## A105665.P17555197009689479897

`abs(1-ceil((n+1)/cos(n+1)))`
-/

namespace A105665.P17555197009689479897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ⌈(n + 1 : ℝ) / Real.cos (n + 1 : ℝ)⌉|

end

end A105665.P17555197009689479897

namespace A105665

/-- `abs(1-ceil((n+1)/cos(n+1)))` -/
def P17555197009689479897.Spec : Prop :=
  ∀ n, P17555197009689479897.a n = A105665 (n + 1)

end A105665

/-! ## A105665.P3202869980747919451

`root(floor((n+1)/cos(n+1))², 2)`
-/

namespace A105665.P3202869980747919451
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (⌊(n + 1 : ℝ) / Real.cos (n + 1 : ℝ)⌋ ^ 2 : ℝ) ^ (1 / (2 : ℝ))

end

end A105665.P3202869980747919451

namespace A105665

/-- `root(floor((n+1)/cos(n+1))², 2)` -/
def P3202869980747919451.Spec : Prop :=
  ∀ n, P3202869980747919451.a n = (A105665 (n + 1) : ℝ)

end A105665

/-! ## A105665.P10794746763912398725

`abs(ceil((n+1)/cos(n+1+π)))`
-/

namespace A105665.P10794746763912398725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈(n + 1 : ℝ) / Real.cos ((n + 1 : ℝ) + Real.pi)⌉|

end

end A105665.P10794746763912398725

namespace A105665

/-- `abs(ceil((n+1)/cos(n+1+π)))` -/
def P10794746763912398725.Spec : Prop :=
  ∀ n, P10794746763912398725.a n = A105665 (n + 1)

end A105665

/-! ## A105665.P9286708125122366431

`∑{d}[floor((n+1)/cos(n+1)), A000010(#)]`
-/

namespace A105665.P9286708125122366431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.cos (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A105665.P9286708125122366431

namespace A105665

/-- `∑{d}[floor((n+1)/cos(n+1)), A000010(#)]` -/
def P9286708125122366431.Spec : Prop :=
  ∀ n, P9286708125122366431.a n = A105665 (n + 1)

end A105665

/-!
# A105666: a(n) = abs(floor(n/sin(n))).

The programs for A105666, the canonical program `A105666.P12224363608512772880` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105666 has offset 1).

The definition of A105666 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `abs(floor((n+1)/sin(n+1)))` (program `A105666.P12224363608512772880`, by `A105666.P12224363608512772880.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105666.P12224363608512772880

`abs(floor((n+1)/sin(n+1)))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105666

/-- `abs(floor((n+1)/sin(n+1)))` -/
def P12224363608512772880.Spec : Prop :=
  ∀ n, P12224363608512772880.a n = A105666 (n + 1)

theorem P12224363608512772880.correct : P12224363608512772880.Spec := by
  intro n
  simp only [A105666, Nat.add_sub_cancel]

end A105666

/-! ## A105666.P8307724924291458131

`abs(ceil((n+1)/sin(-(n+1))))`
-/

namespace A105666.P8307724924291458131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈(n + 1 : ℝ) / Real.sin (-(n + 1 : ℤ) : ℝ)⌉|

end

end A105666.P8307724924291458131

namespace A105666

/-- `abs(ceil((n+1)/sin(-(n+1))))` -/
def P8307724924291458131.Spec : Prop :=
  ∀ n, P8307724924291458131.a n = A105666 (n + 1)

end A105666

/-! ## A105666.P149867099463162721

`abs(1-ceil((n+1)/sin(n+1)))`
-/

namespace A105666.P149867099463162721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ⌈(n + 1 : ℝ) / Real.sin (n + 1 : ℝ)⌉|

end

end A105666.P149867099463162721

namespace A105666

/-- `abs(1-ceil((n+1)/sin(n+1)))` -/
def P149867099463162721.Spec : Prop :=
  ∀ n, P149867099463162721.a n = A105666 (n + 1)

end A105666

/-! ## A105666.P10766817232605842991

`root(floor((n+1)/sin(n+1))², 2)`
-/

namespace A105666.P10766817232605842991
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (⌊(n + 1 : ℝ) / Real.sin (n + 1 : ℝ)⌋ ^ 2 : ℝ) ^ (1 / (2 : ℝ))

end

end A105666.P10766817232605842991

namespace A105666

/-- `root(floor((n+1)/sin(n+1))², 2)` -/
def P10766817232605842991.Spec : Prop :=
  ∀ n, P10766817232605842991.a n = (A105666 (n + 1) : ℝ)

end A105666

/-! ## A105666.P7003697564475350573

`∑{d}[floor((n+1)/sin(n+1)), A000010(#)]`
-/

namespace A105666.P7003697564475350573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.sin (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A105666.P7003697564475350573

namespace A105666

/-- `∑{d}[floor((n+1)/sin(n+1)), A000010(#)]` -/
def P7003697564475350573.Spec : Prop :=
  ∀ n, P7003697564475350573.a n = A105666 (n + 1)

end A105666

/-!
# A105668: Number of non-separable rooted triangulations (with n vertices) in which any vertex has degree at least 4.

The programs for A105668, there is no canonical definition to state claims against.
-/

/-! ## A105668.P4265063830735895992

`A196126(ceil((n+3)*2^(n-2)))+n`
-/

namespace A105668.P4265063830735895992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196126 ⌈(n + 3 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉.toNat + (n : ℤ)

end

end A105668.P4265063830735895992

/-!
# A105669: A "fractal" transform of the Fibonacci numbers F(n)=A000045(n): a(1)=1, then for n>1 if F(n) < k < F(n+1) we have a(k) = F(n+1)-a(k-F(n)) and when k = F(n+1) we force a(F(n+1)) = F(n+1) + (1+(-1)^n)*F(n).

The programs for A105669, the canonical program `A105669.P9380696929717866588` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105669 has offset 1).

The definition of A105669 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105669.P9380696929717866588

`A105774(Δ[floor(ϕ*n)]+n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A105669

/-- `A105774(Δ[floor(ϕ*n)]+n)` -/
def P9380696929717866588.Spec : Prop :=
  ∀ n, P9380696929717866588.a n = A105669 (n + 1)

theorem P9380696929717866588.correct : P9380696929717866588.Spec := by
  intro n
  simp only [A105669, Nat.add_sub_cancel]

end A105669

/-! ## A105669.P5592299562270519978

`and(1-2%(n+2), A105774(n+2-comp[floor(2*n/ϕ)]%2))`
-/

namespace A105669.P5592299562270519978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((n : ℝ) / Real.goldenRatio)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - ((2 % (n + 2) : ℕ) : ℤ)) (A105774 (n + 2 - SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 2))

end

end A105669.P5592299562270519978

namespace A105669

/-- `and(1-2%(n+2), A105774(n+2-comp[floor(2*n/ϕ)]%2))` -/
def P5592299562270519978.Spec : Prop :=
  ∀ n, P5592299562270519978.a n = A105669 (n + 1)

end A105669

/-! ## A105669.P14649624131396336776

`A382112(A005206(n)+1)`
-/

namespace A105669.P14649624131396336776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382112 (A005206 n + 1).toNat

end

end A105669.P14649624131396336776

namespace A105669

/-- `A382112(A005206(n)+1)` -/
def P14649624131396336776.Spec : Prop :=
  ∀ n, P14649624131396336776.a n = A105669 (n + 1)

end A105669

/-! ## A105669.P11517256810051952598

`A382112(A019446(n+1))`
-/

namespace A105669.P11517256810051952598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382112 (A019446 (n + 1)).toNat

end

end A105669.P11517256810051952598

namespace A105669

/-- `A382112(A019446(n+1))` -/
def P11517256810051952598.Spec : Prop :=
  ∀ n, P11517256810051952598.a n = A105669 (n + 1)

end A105669

/-! ## A105669.P18410046278048635486

`A382112(A000201(n+1)-n)`
-/

namespace A105669.P18410046278048635486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382112 (A000201 (n + 1) - (n : ℤ)).toNat

end

end A105669.P18410046278048635486

namespace A105669

/-- `A382112(A000201(n+1)-n)` -/
def P18410046278048635486.Spec : Prop :=
  ∀ n, P18410046278048635486.a n = A105669 (n + 1)

end A105669

/-!
# A105670: a(1)=1 then bracketing n by powers of 2 as f(t)=2^t for f(t) < n <= f(t+1), a(n) = f(t+1) - a(n-f(t)).

The programs for A105670, the canonical program `A105670.P15852103890510158277` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105670 has offset 1).

The definition of A105670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105670.P15852103890510158277

`or(1, xor(n, a(floor(n/2))))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105670

/-- `or(1, xor(n, a(floor(n/2))))` -/
def P15852103890510158277.Spec : Prop :=
  ∀ n, (P15852103890510158277.a n : ℤ) = A105670 (n + 1)

theorem P15852103890510158277.correct : P15852103890510158277.Spec := by
  intro n
  simp only [A105670, Nat.add_sub_cancel]

end A105670

/-! ## A105670.P7491303255171276151

`xor(n, a(floor(n/2)))+n%2` with `a(0)=1`
-/

namespace A105670.P7491303255171276151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor n (a ⌊(n : ℚ) / 2⌋.toNat) + n % 2

end

end A105670.P7491303255171276151

namespace A105670

/-- `xor(n, a(floor(n/2)))+n%2` -/
def P7491303255171276151.Spec : Prop :=
  ∀ n, (P7491303255171276151.a n : ℤ) = A105670 (n + 1)

end A105670

/-! ## A105670.P3037934350157443773

`or(1, A006068(n))`
-/

namespace A105670.P3037934350157443773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006068 n)

end

end A105670.P3037934350157443773

namespace A105670

/-- `or(1, A006068(n))` -/
def P3037934350157443773.Spec : Prop :=
  ∀ n, P3037934350157443773.a n = A105670 (n + 1)

end A105670

/-! ## A105670.P14566861378330863594

`A122198(or(1, n))`
-/

namespace A105670.P14566861378330863594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122198 (Nat.lor 1 n)

end

end A105670.P14566861378330863594

namespace A105670

/-- `A122198(or(1, n))` -/
def P14566861378330863594.Spec : Prop :=
  ∀ n, P14566861378330863594.a n = A105670 (n + 1)

end A105670

/-! ## A105670.P14958775511464084742

`2*A292600(n)+1`
-/

namespace A105670.P14958775511464084742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A292600 n + 1

end

end A105670.P14958775511464084742

namespace A105670

/-- `2*A292600(n)+1` -/
def P14958775511464084742.Spec : Prop :=
  ∀ n, P14958775511464084742.a n = A105670 (n + 1)

end A105670

/-! ## A105670.P72305840056798039

`or(1, A292600(2*n))`
-/

namespace A105670.P72305840056798039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A292600 (2 * n))

end

end A105670.P72305840056798039

namespace A105670

/-- `or(1, A292600(2*n))` -/
def P72305840056798039.Spec : Prop :=
  ∀ n, P72305840056798039.a n = A105670 (n + 1)

end A105670

/-! ## A105670.P16314723280722764102

`or(1, A268716(n)/2)`
-/

namespace A105670.P16314723280722764102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway ((A268716 n : ℚ) / 2))

end

end A105670.P16314723280722764102

namespace A105670

/-- `or(1, A268716(n)/2)` -/
def P16314723280722764102.Spec : Prop :=
  ∀ n, P16314723280722764102.a n = A105670 (n + 1)

end A105670

/-! ## A105670.P7065330817128444544

`abs(A065620(record[xor(1, n)]))`
-/

namespace A105670.P7065330817128444544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A065620 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))|

end

end A105670.P7065330817128444544

namespace A105670

/-- `abs(A065620(record[xor(1, n)]))` -/
def P7065330817128444544.Spec : Prop :=
  ∀ n, P7065330817128444544.a n = A105670 (n + 1)

end A105670

/-! ## A105670.P9405489055526982953

`abs(A065620(2*n+1))`
-/

namespace A105670.P9405489055526982953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A065620 (2 * n + 1)|

end

end A105670.P9405489055526982953

namespace A105670

/-- `abs(A065620(2*n+1))` -/
def P9405489055526982953.Spec : Prop :=
  ∀ n, P9405489055526982953.a n = A105670 (n + 1)

end A105670

/-! ## A105670.P17315839894777670739

`abs(A104895(2*n+1))`
-/

namespace A105670.P17315839894777670739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104895 (2 * n + 1)|

end

end A105670.P17315839894777670739

namespace A105670

/-- `abs(A104895(2*n+1))` -/
def P17315839894777670739.Spec : Prop :=
  ∀ n, P17315839894777670739.a n = A105670 (n + 1)

end A105670

/-! ## A105670.P5606777502146651754

`abs(1-A065620(2*n))`
-/

namespace A105670.P5606777502146651754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A065620 (2 * n)|

end

end A105670.P5606777502146651754

namespace A105670

/-- `abs(1-A065620(2*n))` -/
def P5606777502146651754.Spec : Prop :=
  ∀ n, P5606777502146651754.a n = A105670 (n + 1)

end A105670

/-! ## A105670.P5046955533446876305

`or(1, A066194(n+1)-1)`
-/

namespace A105670.P5046955533446876305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A066194 (n + 1) - 1)

end

end A105670.P5046955533446876305

namespace A105670

/-- `or(1, A066194(n+1)-1)` -/
def P5046955533446876305.Spec : Prop :=
  ∀ n, P5046955533446876305.a n = A105670 (n + 1)

end A105670

/-! ## A105670.P14478147319900585659

`ceil(A006068(2*n+1)/2)`
-/

namespace A105670.P14478147319900585659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006068 (2 * n + 1) : ℚ) / 2⌉

end

end A105670.P14478147319900585659

namespace A105670

/-- `ceil(A006068(2*n+1)/2)` -/
def P14478147319900585659.Spec : Prop :=
  ∀ n, P14478147319900585659.a n = A105670 (n + 1)

end A105670

/-! ## A105670.P16771961252106189771

`xor(2*n, A122198(2*n+1))`
-/

namespace A105670.P16771961252106189771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * n : ℤ) (A122198 (2 * n + 1))

end

end A105670.P16771961252106189771

namespace A105670

/-- `xor(2*n, A122198(2*n+1))` -/
def P16771961252106189771.Spec : Prop :=
  ∀ n, P16771961252106189771.a n = A105670 (n + 1)

end A105670

/-! ## A105670.P3557411667286669473

`floor((A268716(2*n+1)+2)/4)`
-/

namespace A105670.P3557411667286669473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A268716 (2 * n + 1) + 2 : ℚ) / 4⌋

end

end A105670.P3557411667286669473

namespace A105670

/-- `floor((A268716(2*n+1)+2)/4)` -/
def P3557411667286669473.Spec : Prop :=
  ∀ n, P3557411667286669473.a n = A105670 (n + 1)

end A105670

/-! ## A105670.P8712864593067011648

`xor(2*n, A006068(comp[xor(n, 2*n)]))`
-/

namespace A105670.P8712864593067011648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * n : ℤ) (A006068 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A105670.P8712864593067011648

namespace A105670

/-- `xor(2*n, A006068(comp[xor(n, 2*n)]))` -/
def P8712864593067011648.Spec : Prop :=
  ∀ n, P8712864593067011648.a n = A105670 (n + 1)

end A105670

/-! ## A105670.P6234261116964501524

`A109613(A006068(n))`
-/

namespace A105670.P6234261116964501524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A006068 n).toNat

end

end A105670.P6234261116964501524

namespace A105670

/-- `A109613(A006068(n))` -/
def P6234261116964501524.Spec : Prop :=
  ∀ n, P6234261116964501524.a n = A105670 (n + 1)

end A105670

/-! ## A105670.P12879774527706771201

`A122198(A109613(n))`
-/

namespace A105670.P12879774527706771201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122198 (A109613 n).toNat

end

end A105670.P12879774527706771201

namespace A105670

/-- `A122198(A109613(n))` -/
def P12879774527706771201.Spec : Prop :=
  ∀ n, P12879774527706771201.a n = A105670 (n + 1)

end A105670

/-! ## A105670.P9002191661815992953

`A106249(A268716(n))`
-/

namespace A105670.P9002191661815992953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (A268716 n).toNat

end

end A105670.P9002191661815992953

namespace A105670

/-- `A106249(A268716(n))` -/
def P9002191661815992953.Spec : Prop :=
  ∀ n, P9002191661815992953.a n = A105670 (n + 1)

end A105670

/-! ## A105670.P3061959178175066325

`A268716(A004526(n))+1`
-/

namespace A105670.P3061959178175066325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268716 (A004526 n).toNat + 1

end

end A105670.P3061959178175066325

namespace A105670

/-- `A268716(A004526(n))+1` -/
def P3061959178175066325.Spec : Prop :=
  ∀ n, P3061959178175066325.a n = A105670 (n + 1)

end A105670

/-!
# A105671: a(2n) = Lucas(2n+3)^2, a(2n+1) = Lucas(2n+1)^2.

The programs for A105671, the canonical program `A105671.P12298975173541492578` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105671 has offset 0).

The definition of A105671 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105671.P14275647891352586579

`ogf((16-15x+8x^2+x^4)/(1-x-7x^2+7x^3+x^4-x^5))`
-/

namespace A105671.P14275647891352586579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [16, -15, 8, 0, 1] [1, -1, -7, 7, 1, -1] n

end

end A105671.P14275647891352586579

namespace A105671

/-- `ogf((16-15x+8x^2+x^4)/(1-x-7x^2+7x^3+x^4-x^5))` -/
def P14275647891352586579.Spec : Prop :=
  ∀ n, P14275647891352586579.a n = A105671 n

end A105671

/-! ## A105671.P12298975173541492578

`a(n-1)+7*a(n-2)-7*a(n-3)-a(n-4)+a(n-5)` with `a(0)=16, a(1)=1, a(2)=121, a(3)=16, a(4)=841`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105671

/-- `a(n-1)+7*a(n-2)-7*a(n-3)-a(n-4)+a(n-5)` -/
def P12298975173541492578.Spec : Prop :=
  ∀ n, P12298975173541492578.a n = A105671 n

theorem P12298975173541492578.correct : P12298975173541492578.Spec := by
  intro n
  simp only [A105671]

end A105671

/-! ## A105671.P5863938101047712567

`2*A098149(n+2)+5*A001519(n+2)-2`
-/

namespace A105671.P5863938101047712567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098149 (n + 2) + 5 * A001519 (n + 2) - 2

end

end A105671.P5863938101047712567

namespace A105671

/-- `2*A098149(n+2)+5*A001519(n+2)-2` -/
def P5863938101047712567.Spec : Prop :=
  ∀ n, P5863938101047712567.a n = A105671 n

end A105671

/-! ## A105671.P12076467635002439374

`Δ[A203976(n+1)]²`
-/

namespace A105671.P12076467635002439374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A105671.P12076467635002439374

namespace A105671

/-- `Δ[A203976(n+1)]²` -/
def P12076467635002439374.Spec : Prop :=
  ∀ n, P12076467635002439374.a n = A105671 n

end A105671

/-! ## A105671.P9593052665110220240

`Δ[Δ[A228210(n+1)]]²`
-/

namespace A105671.P9593052665110220240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228210 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A105671.P9593052665110220240

namespace A105671

/-- `Δ[Δ[A228210(n+1)]]²` -/
def P9593052665110220240.Spec : Prop :=
  ∀ n, P9593052665110220240.a n = A105671 n

end A105671

/-! ## A105671.P18058227992900556264

`Δ[A229339(2*(n+1))]²`
-/

namespace A105671.P18058227992900556264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229339 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A105671.P18058227992900556264

namespace A105671

/-- `Δ[A229339(2*(n+1))]²` -/
def P18058227992900556264.Spec : Prop :=
  ∀ n, P18058227992900556264.a n = A105671 n

end A105671

/-! ## A105671.P5382634291983124292

`Δ[Δ[A228207(n+1)/2]]²`
-/

namespace A105671.P5382634291983124292
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228207 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A105671.P5382634291983124292

namespace A105671

/-- `Δ[Δ[A228207(n+1)/2]]²` -/
def P5382634291983124292.Spec : Prop :=
  ∀ n, P5382634291983124292.a n = (A105671 n : ℚ)

end A105671

/-! ## A105671.P16793832302076687208

`A000032(gcd(2, n)²+n-1)²`
-/

namespace A105671.P16793832302076687208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ((Nat.gcd 2 n ^ 2 : ℤ) + ((n : ℤ) - 1)).toNat ^ 2

end

end A105671.P16793832302076687208

namespace A105671

/-- `A000032(gcd(2, n)²+n-1)²` -/
def P16793832302076687208.Spec : Prop :=
  ∀ n, P16793832302076687208.a n = A105671 n

end A105671

/-! ## A105671.P740577007724323729

`A000032(3*char[2*n]+n)²`
-/

namespace A105671.P740577007724323729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (3 * (if ∃ j, f1 j = n then 1 else 0) + n) ^ 2

end

end A105671.P740577007724323729

namespace A105671

/-- `A000032(3*char[2*n]+n)²` -/
def P740577007724323729.Spec : Prop :=
  ∀ n, P740577007724323729.a n = A105671 n

end A105671

/-! ## A105671.P13172106687017256101

`A002878(A028242(n))²`
-/

namespace A105671.P13172106687017256101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 (A028242 n).toNat ^ 2

end

end A105671.P13172106687017256101

namespace A105671

/-- `A002878(A028242(n))²` -/
def P13172106687017256101.Spec : Prop :=
  ∀ n, P13172106687017256101.a n = A105671 n

end A105671

/-! ## A105671.P2516605911990674492

`A200408(A168232(n+1))`
-/

namespace A105671.P2516605911990674492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200408 (A168232 (n + 1)).toNat

end

end A105671.P2516605911990674492

namespace A105671

/-- `A200408(A168232(n+1))` -/
def P2516605911990674492.Spec : Prop :=
  ∀ n, P2516605911990674492.a n = A105671 n

end A105671

/-! ## A105671.P3196120258680772734

`A014739(4*A028242(n))`
-/

namespace A105671.P3196120258680772734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014739 (4 * A028242 n).toNat

end

end A105671.P3196120258680772734

namespace A105671

/-- `A014739(4*A028242(n))` -/
def P3196120258680772734.Spec : Prop :=
  ∀ n, P3196120258680772734.a n = A105671 n

end A105671

/-! ## A105671.P12300925536372998138

`A005592(A097062(n+2))-1`
-/

namespace A105671.P12300925536372998138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005592 (A097062 (n + 2)).toNat - 1

end

end A105671.P12300925536372998138

namespace A105671

/-- `A005592(A097062(n+2))-1` -/
def P12300925536372998138.Spec : Prop :=
  ∀ n, P12300925536372998138.a n = A105671 n

end A105671

/-! ## A105671.P5754515612963918645

`A002878(A168232(n+1)/2)²`
-/

namespace A105671.P5754515612963918645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 (SequenceMachineLib.roundAway ((A168232 (n + 1) : ℚ) / 2)).toNat ^ 2

end

end A105671.P5754515612963918645

namespace A105671

/-- `A002878(A168232(n+1)/2)²` -/
def P5754515612963918645.Spec : Prop :=
  ∀ n, P5754515612963918645.a n = A105671 n

end A105671

/-! ## A105671.P664494301325138147

`(A075270(n)+A000204(n+1))²`
-/

namespace A105671.P664494301325138147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A075270 n + A000204 (n + 1)) ^ 2

end

end A105671.P664494301325138147

namespace A105671

/-- `(A075270(n)+A000204(n+1))²` -/
def P664494301325138147.Spec : Prop :=
  ∀ n, P664494301325138147.a n = A105671 n

end A105671

/-! ## A105671.P6116012907863710711

`(A075193(n)+A000204(n+2))²`
-/

namespace A105671.P6116012907863710711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A075193 n + A000204 (n + 2)) ^ 2

end

end A105671.P6116012907863710711

namespace A105671

/-- `(A075193(n)+A000204(n+2))²` -/
def P6116012907863710711.Spec : Prop :=
  ∀ n, P6116012907863710711.a n = A105671 n

end A105671

/-! ## A105671.P16347996925987899820

`(A075270(n+2)-A075270(n))²`
-/

namespace A105671.P16347996925987899820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A075270 (n + 2) - A075270 n) ^ 2

end

end A105671.P16347996925987899820

namespace A105671

/-- `(A075270(n+2)-A075270(n))²` -/
def P16347996925987899820.Spec : Prop :=
  ∀ n, P16347996925987899820.a n = A105671 n

end A105671

/-! ## A105671.P6290004056396801919

`A005248(A168232(n+1)+1)-2`
-/

namespace A105671.P6290004056396801919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (A168232 (n + 1) + 1).toNat - 2

end

end A105671.P6290004056396801919

namespace A105671

/-- `A005248(A168232(n+1)+1)-2` -/
def P6290004056396801919.Spec : Prop :=
  ∀ n, P6290004056396801919.a n = A105671 n

end A105671

/-! ## A105671.P16609287438176597437

`A173661(A327767(n+1)+2+n)`
-/

namespace A105671.P16609287438176597437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173661 (A327767 (n + 1) + 2 + (n : ℤ)).toNat

end

end A105671.P16609287438176597437

namespace A105671

/-- `A173661(A327767(n+1)+2+n)` -/
def P16609287438176597437.Spec : Prop :=
  ∀ n, P16609287438176597437.a n = A105671 n

end A105671

/-! ## A105671.P17570858528601846412

`(A000032(n+1)-A075193(n+1))²`
-/

namespace A105671.P17570858528601846412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000032 (n + 1) - A075193 (n + 1)) ^ 2

end

end A105671.P17570858528601846412

namespace A105671

/-- `(A000032(n+1)-A075193(n+1))²` -/
def P17570858528601846412.Spec : Prop :=
  ∀ n, P17570858528601846412.a n = A105671 n

end A105671

/-!
# A105672: a(1)=1, then bracketing n with powers of 3 as f(t)=3^t for f(t) < n <= f(t+1), a(n) = f(t+1) - a(n-f(t)).

The programs for A105672, the canonical program `A105672.P2069037563154767662` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105672 has offset 1).

The definition of A105672 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105672.P2069037563154767662

`A064235(n+1)-a(n-A064235(n+1)/3)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A105672

/-- `A064235(n+1)-a(n-A064235(n+1)/3)` -/
def P2069037563154767662.Spec : Prop :=
  ∀ n, P2069037563154767662.a n = A105672 (n + 1)

theorem P2069037563154767662.correct : P2069037563154767662.Spec := by
  intro n
  simp only [A105672, Nat.add_sub_cancel]

end A105672

/-! ## A105672.P17536862136234321151

`A093347(3*n+2)`
-/

namespace A105672.P17536862136234321151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093347 (3 * n + 2)

end

end A105672.P17536862136234321151

namespace A105672

/-- `A093347(3*n+2)` -/
def P17536862136234321151.Spec : Prop :=
  ∀ n, P17536862136234321151.a n = A105672 (n + 1)

end A105672

/-! ## A105672.P6055027334524801853

`A055247(A332497(n)+1)`
-/

namespace A105672.P6055027334524801853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055247 (A332497 n + 1).toNat

end

end A105672.P6055027334524801853

namespace A105672

/-- `A055247(A332497(n)+1)` -/
def P6055027334524801853.Spec : Prop :=
  ∀ n, P6055027334524801853.a n = A105672 (n + 1)

end A105672

/-! ## A105672.P3295185974260975584

`A047239(A093347(n+1)+1)`
-/

namespace A105672.P3295185974260975584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047239 (A093347 (n + 1) + 1).toNat

end

end A105672.P3295185974260975584

namespace A105672

/-- `A047239(A093347(n+1)+1)` -/
def P3295185974260975584.Spec : Prop :=
  ∀ n, P3295185974260975584.a n = A105672 (n + 1)

end A105672

/-! ## A105672.P16509457055558215545

`A333773(A244042(3*n+1))`
-/

namespace A105672.P16509457055558215545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333773 (A244042 (3 * n + 1)).toNat

end

end A105672.P16509457055558215545

namespace A105672

/-- `A333773(A244042(3*n+1))` -/
def P16509457055558215545.Spec : Prop :=
  ∀ n, P16509457055558215545.a n = A105672 (n + 1)

end A105672

/-! ## A105672.P7796321010637935370

`A333780(A244042(3*n)+1)`
-/

namespace A105672.P7796321010637935370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333780 (A244042 (3 * n) + 1).toNat

end

end A105672.P7796321010637935370

namespace A105672

/-- `A333780(A244042(3*n)+1)` -/
def P7796321010637935370.Spec : Prop :=
  ∀ n, P7796321010637935370.a n = A105672 (n + 1)

end A105672

/-! ## A105672.P870354104332639917

`filter[A093347(n+1), A011655(#)]`
-/

namespace A105672.P870354104332639917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A105672.P870354104332639917

namespace A105672

/-- `filter[A093347(n+1), A011655(#)]` -/
def P870354104332639917.Spec : Prop :=
  ∀ n, P870354104332639917.a n = A105672 (n + 1)

end A105672

/-! ## A105672.P11647499567157161449

`filter[A093347(n+1), A095130(#)]`
-/

namespace A105672.P11647499567157161449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A095130 (f1 j).toNat = 1) n)

end

end A105672.P11647499567157161449

namespace A105672

/-- `filter[A093347(n+1), A095130(#)]` -/
def P11647499567157161449.Spec : Prop :=
  ∀ n, P11647499567157161449.a n = A105672 (n + 1)

end A105672

/-! ## A105672.P15785566720623274244

`A333773(A004488(n)+A117966(n)+1)`
-/

namespace A105672.P15785566720623274244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333773 (A004488 n + (A117966 n + 1)).toNat

end

end A105672.P15785566720623274244

namespace A105672

/-- `A333773(A004488(n)+A117966(n)+1)` -/
def P15785566720623274244.Spec : Prop :=
  ∀ n, P15785566720623274244.a n = A105672 (n + 1)

end A105672

/-!
# A105673: One-half of theta series of square lattice (or half the number of ways of writing n > 0 as a sum of 2 squares), without the constant term, which is 1/2.

The programs for A105673, the canonical program `A105673.P14538287794614071707` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105673 has offset 1).

The definition of A105673 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105673.P14538287794614071707

`2*A002654(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A105673

/-- `2*A002654(n+1)` -/
def P14538287794614071707.Spec : Prop :=
  ∀ n, P14538287794614071707.a n = A105673 (n + 1)

theorem P14538287794614071707.correct : P14538287794614071707.Spec := by
  intro n
  simp only [A105673, Nat.add_sub_cancel]

end A105673

/-! ## A105673.P16992597681758563413

`Δ[2*A014200(n)]`
-/

namespace A105673.P16992597681758563413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105673.P16992597681758563413

namespace A105673

/-- `Δ[2*A014200(n)]` -/
def P16992597681758563413.Spec : Prop :=
  ∀ n, P16992597681758563413.a n = A105673 (n + 1)

end A105673

/-! ## A105673.P18327970681778000747

`Δ[A014198(n)/2]`
-/

namespace A105673.P18327970681778000747
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014198 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105673.P18327970681778000747

namespace A105673

/-- `Δ[A014198(n)/2]` -/
def P18327970681778000747.Spec : Prop :=
  ∀ n, P18327970681778000747.a n = (A105673 (n + 1) : ℚ)

end A105673

/-! ## A105673.P7747560585294359244

`A004018(n+1)/2`
-/

namespace A105673.P7747560585294359244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004018 (n + 1) : ℚ) / 2

end

end A105673.P7747560585294359244

namespace A105673

/-- `A004018(n+1)/2` -/
def P7747560585294359244.Spec : Prop :=
  ∀ n, P7747560585294359244.a n = (A105673 (n + 1) : ℚ)

end A105673

/-! ## A105673.P1435750696708895168

`abs(2*A113652(n+1))`
-/

namespace A105673.P1435750696708895168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A113652 (n + 1)|

end

end A105673.P1435750696708895168

namespace A105673

/-- `abs(2*A113652(n+1))` -/
def P1435750696708895168.Spec : Prop :=
  ∀ n, P1435750696708895168.a n = A105673 (n + 1)

end A105673

/-! ## A105673.P7474760886301499749

`abs(A104794(n+1)/2)`
-/

namespace A105673.P7474760886301499749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A104794 (n + 1) : ℚ) / 2|

end

end A105673.P7474760886301499749

namespace A105673

/-- `abs(A104794(n+1)/2)` -/
def P7474760886301499749.Spec : Prop :=
  ∀ n, P7474760886301499749.a n = (A105673 (n + 1) : ℚ)

end A105673

/-! ## A105673.P7885422566569960867

`A004526(Δ[A014198(n)])`
-/

namespace A105673.P7885422566569960867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A105673.P7885422566569960867

namespace A105673

/-- `A004526(Δ[A014198(n)])` -/
def P7885422566569960867.Spec : Prop :=
  ∀ n, P7885422566569960867.a n = A105673 (n + 1)

end A105673

/-! ## A105673.P8539897303692992496

`Δ[A005408(A014200(n))]`
-/

namespace A105673.P8539897303692992496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A014200 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105673.P8539897303692992496

namespace A105673

/-- `Δ[A005408(A014200(n))]` -/
def P8539897303692992496.Spec : Prop :=
  ∀ n, P8539897303692992496.a n = A105673 (n + 1)

end A105673

/-! ## A105673.P1035001603921799090

`A004531(A000265(n+1))`
-/

namespace A105673.P1035001603921799090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004531 (A000265 (n + 1)).toNat

end

end A105673.P1035001603921799090

namespace A105673

/-- `A004531(A000265(n+1))` -/
def P1035001603921799090.Spec : Prop :=
  ∀ n, P1035001603921799090.a n = A105673 (n + 1)

end A105673

/-! ## A105673.P13255533340356467411

`A001281(A004018(n+1))`
-/

namespace A105673.P13255533340356467411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A004018 (n + 1)).toNat

end

end A105673.P13255533340356467411

namespace A105673

/-- `A001281(A004018(n+1))` -/
def P13255533340356467411.Spec : Prop :=
  ∀ n, P13255533340356467411.a n = A105673 (n + 1)

end A105673

/-! ## A105673.P5093144268093216678

`A005843(A002654(n+1))`
-/

namespace A105673.P5093144268093216678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A002654 (n + 1)).toNat

end

end A105673.P5093144268093216678

namespace A105673

/-- `A005843(A002654(n+1))` -/
def P5093144268093216678.Spec : Prop :=
  ∀ n, P5093144268093216678.a n = A105673 (n + 1)

end A105673

/-! ## A105673.P16873535462574202329

`A008619(Δ[A014198(n)])-1`
-/

namespace A105673.P16873535462574202329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (n + 1) - f1 n).toNat - 1

end

end A105673.P16873535462574202329

namespace A105673

/-- `A008619(Δ[A014198(n)])-1` -/
def P16873535462574202329.Spec : Prop :=
  ∀ n, P16873535462574202329.a n = A105673 (n + 1)

end A105673

/-! ## A105673.P13144999325469903599

`A002265(Δ[2*A014198(n)])`
-/

namespace A105673.P13144999325469903599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (f1 (n + 1) - f1 n).toNat

end

end A105673.P13144999325469903599

namespace A105673

/-- `A002265(Δ[2*A014198(n)])` -/
def P13144999325469903599.Spec : Prop :=
  ∀ n, P13144999325469903599.a n = A105673 (n + 1)

end A105673

/-! ## A105673.P7648006990598990847

`A004526(A004018(n+1)+1)`
-/

namespace A105673.P7648006990598990847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004018 (n + 1) + 1).toNat

end

end A105673.P7648006990598990847

namespace A105673

/-- `A004526(A004018(n+1)+1)` -/
def P7648006990598990847.Spec : Prop :=
  ∀ n, P7648006990598990847.a n = A105673 (n + 1)

end A105673

/-! ## A105673.P11882103090711572393

`A002265(2*A004018(n+1))`
-/

namespace A105673.P11882103090711572393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A004018 (n + 1)).toNat

end

end A105673.P11882103090711572393

namespace A105673

/-- `A002265(2*A004018(n+1))` -/
def P11882103090711572393.Spec : Prop :=
  ∀ n, P11882103090711572393.a n = A105673 (n + 1)

end A105673

/-! ## A105673.P16842766233072587564

`A110655(2*A004018(n+1))`
-/

namespace A105673.P16842766233072587564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (2 * A004018 (n + 1)).toNat

end

end A105673.P16842766233072587564

namespace A105673

/-- `A110655(2*A004018(n+1))` -/
def P16842766233072587564.Spec : Prop :=
  ∀ n, P16842766233072587564.a n = A105673 (n + 1)

end A105673

/-! ## A105673.P5320463076931500109

`A256465(n+1)-A057655(n)`
-/

namespace A105673.P5320463076931500109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256465 (n + 1) - A057655 n

end

end A105673.P5320463076931500109

namespace A105673

/-- `A256465(n+1)-A057655(n)` -/
def P5320463076931500109.Spec : Prop :=
  ∀ n, P5320463076931500109.a n = A105673 (n + 1)

theorem P5320463076931500109.correct : P5320463076931500109.Spec := by
  intro n
  simp only [A105673, Nat.add_sub_cancel, A105673.P5320463076931500109.a, A105673.P14538287794614071707.a, A002654, A002654.P11574922253888480122.a, A057655, A057655.P8142405424443184292.a, A256465, A256465.P12543537309397973393.a, A001826, A001826.P1518250824516108745.a, A001842, A001842.P7159875081872045936.f1, A001842.P7159875081872045936.a, A014198, A014198.P2354480518814049901.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A121262, A121262.P5808261376347758400.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A105673

/-! ## A105673.P5689742224873267728

`A063725(n+1)+A000925(n+1)`
-/

namespace A105673.P5689742224873267728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (n + 1) + A000925 (n + 1)

end

end A105673.P5689742224873267728

namespace A105673

/-- `A063725(n+1)+A000925(n+1)` -/
def P5689742224873267728.Spec : Prop :=
  ∀ n, P5689742224873267728.a n = A105673 (n + 1)

end A105673

/-! ## A105673.P8085705918244231618

`A113446(n+1)+A035154(n+1)`
-/

namespace A105673.P8085705918244231618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113446 (n + 1) + A035154 (n + 1)

end

end A105673.P8085705918244231618

namespace A105673

/-- `A113446(n+1)+A035154(n+1)` -/
def P8085705918244231618.Spec : Prop :=
  ∀ n, P8085705918244231618.a n = A105673 (n + 1)

end A105673

/-! ## A105673.P6642024806409099974

`A244554(n+1)+A002325(n+1)`
-/

namespace A105673.P6642024806409099974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244554 (n + 1) + A002325 (n + 1)

end

end A105673.P6642024806409099974

namespace A105673

/-- `A244554(n+1)+A002325(n+1)` -/
def P6642024806409099974.Spec : Prop :=
  ∀ n, P6642024806409099974.a n = A105673 (n + 1)

end A105673

/-!
# A105680: Numbers k such that 1009*k + 9973 is prime.

The programs for A105680, there is no canonical definition to state claims against.
-/

/-! ## A105680.P13453289001421550900

`A108900(lt[A068763(n), A006530(n+1)])`
-/

namespace A105680.P13453289001421550900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068763 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108900 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A105680.P13453289001421550900

/-!
# A105681: Highest minimal Lee distance of any Type 4^Z self-dual code of length n over Z/4Z.

The programs for A105681, there is no canonical definition to state claims against.
-/

/-! ## A105681.P16186940337887093411

`A066012(n+1)-A226860(xor(n, n+1)+1)`
-/

namespace A105681.P16186940337887093411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066012 (n + 1) - A226860 (Nat.xor n (n + 1) + 1)

end

end A105681.P16186940337887093411

/-! ## A105681.P15705497504812190399

`A052928(A066012(n+1)+A055229(n+1))`
-/

namespace A105681.P15705497504812190399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A066012 (n + 1) + A055229 (n + 1)).toNat

end

end A105681.P15705497504812190399

/-! ## A105681.P11793858818035780890

`A123391(A001511(n+1))+A066012(n+1)`
-/

namespace A105681.P11793858818035780890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123391 (A001511 (n + 1)).toNat + A066012 (n + 1)

end

end A105681.P11793858818035780890

/-! ## A105681.P16340338473361700337

`A066012(n+1)+A010673(A123391(n+1))`
-/

namespace A105681.P16340338473361700337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066012 (n + 1) + A010673 (A123391 (n + 1)).toNat

end

end A105681.P16340338473361700337

/-! ## A105681.P7526213550246846155

`A173677(A179857(n+1))+A066012(n+1)`
-/

namespace A105681.P7526213550246846155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173677 (A179857 (n + 1)).toNat + A066012 (n + 1)

end

end A105681.P7526213550246846155

/-!
# A105688: Number of codes having highest minimal Lee distance of any Type 4^Z self-dual code of length n over Z/4Z.

The programs for A105688, there is no canonical definition to state claims against.
-/

/-! ## A105688.P6210365211246599303

`A066013(1-char[7]+n)`
-/

namespace A105688.P6210365211246599303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066013 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat

end

end A105688.P6210365211246599303

/-! ## A105688.P8831341489843081282

`A066013(∏{p}[n+1, gcd((n+1)*(n+2), #²)])%40`
-/

namespace A105688.P8831341489843081282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066013 (∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd ((n + 1) * (n + 2)) (p ^ 2))) 40

end

end A105688.P8831341489843081282

/-! ## A105688.P5366740213388502702

`A066013(A066990(n+1))%40`
-/

namespace A105688.P5366740213388502702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066013 (A066990 (n + 1)).toNat) 40

end

end A105688.P5366740213388502702

/-! ## A105688.P2507970177196095122

`A066013(A110500(n+1))%40`
-/

namespace A105688.P2507970177196095122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066013 (A110500 (n + 1)).toNat) 40

end

end A105688.P2507970177196095122

/-! ## A105688.P14970610361974613205

`A066013(n+1)^A029374(n)`
-/

namespace A105688.P14970610361974613205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066013 (n + 1) : ℚ) ^ (A029374 n : ℤ)

end

end A105688.P14970610361974613205

/-!
# A105689: Number of codes having highest minimal Euclidean norm of any Type 4^Z self-dual code of length n over Z/4Z.

The programs for A105689, there is no canonical definition to state claims against.
-/

/-! ## A105689.P4328759161957998279

`gcd(val(n+1, 8), A066015(n+1))`
-/

namespace A105689.P4328759161957998279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.valuation (n + 1) 8 : ℤ) (A066015 (n + 1))

end

end A105689.P4328759161957998279

/-! ## A105689.P3592883262150935173

`A066015(A004182(n)+1)`
-/

namespace A105689.P3592883262150935173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066015 (A004182 n + 1).toNat

end

end A105689.P3592883262150935173

/-! ## A105689.P12664513314532378661

`A111263(A004182(n)+1)`
-/

namespace A105689.P12664513314532378661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111263 (A004182 n + 1).toNat

end

end A105689.P12664513314532378661

/-! ## A105689.P13015887716844346432

`A066015(A066990(n+1))`
-/

namespace A105689.P13015887716844346432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066015 (A066990 (n + 1)).toNat

end

end A105689.P13015887716844346432

/-! ## A105689.P16580712792528710548

`A066015(n*A071374(n)+1)`
-/

namespace A105689.P16580712792528710548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066015 ((n : ℤ) * A071374 n + 1).toNat

end

end A105689.P16580712792528710548

/-!
# A105690: A simple "Fractal Jump Sequence" (FJS).

The programs for A105690, there is no canonical definition to state claims against.
-/

/-! ## A105690.P16296869381214984201

`A079882(∑[A091251(n+1)])`
-/

namespace A105690.P16296869381214984201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079882 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A105690.P16296869381214984201

/-! ## A105690.P9884799314002200357

`A079944(∑[A091251(n+1)])+1`
-/

namespace A105690.P9884799314002200357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079944 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A105690.P9884799314002200357

/-! ## A105690.P53484172259624997

`A003842(A180098(∑[A000201(n+1)]))`
-/

namespace A105690.P53484172259624997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 (A180098 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A105690.P53484172259624997

/-! ## A105690.P10712077985556474400

`A122586(A111071(n+3)-A357690(2*(n+3)))`
-/

namespace A105690.P10712077985556474400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122586 (A111071 (n + 3) - A357690 (2 * (n + 3))).toNat

end

end A105690.P10712077985556474400

/-! ## A105690.P2959081140341754779

`A136690(A206926(3*n+1)-A190611(3*(n+1)))`
-/

namespace A105690.P2959081140341754779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136690 (A206926 (3 * n + 1) - A190611 (3 * (n + 1))).toNat

end

end A105690.P2959081140341754779

/-!
# A105691: Primes p such that both 2p + 3 and 4p + 5 are primes.

The programs for A105691, the canonical program `A105691.P8812188104689116441` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105691 has offset 1).

The definition of A105691 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1374 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105691.P8812188104689116441

`p?[A105610(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A105691

/-- `p?[A105610(n+1)]` -/
def P8812188104689116441.Spec : Prop :=
  ∀ n, P8812188104689116441.a n = A105691 (n + 1)

theorem P8812188104689116441.correct : P8812188104689116441.Spec := by
  intro n
  simp only [A105691, Nat.add_sub_cancel]

end A105691

/-! ## A105691.P16305234686935836191

`p?[A123998(n+1)-1]`
-/

namespace A105691.P16305234686935836191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123998 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105691.P16305234686935836191

namespace A105691

/-- `p?[A123998(n+1)-1]` -/
def P16305234686935836191.Spec : Prop :=
  ∀ n, P16305234686935836191.a n = A105691 (n + 1)

theorem P16305234686935836191.correct : P16305234686935836191.Spec := by
  intro n
  simp only [A105691, Nat.add_sub_cancel, A105691.P16305234686935836191.f1, A105691.P16305234686935836191.a, A105691.P8812188104689116441.f1, A105691.P8812188104689116441.a, A105610, A105610.P17050278855233365045.f1, A105610.P17050278855233365045.a, A123998, A123998.P17961108538032999968.a, A074258, A074258.P17491479545300873811.f1, A074258.P17491479545300873811.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A105691

/-! ## A105691.P13027848892366422425

`p?[ceil(A005383(n+1)/4)-2]`
-/

namespace A105691.P13027848892366422425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005383 (n + 1) : ℚ) / 4⌉ - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105691.P13027848892366422425

namespace A105691

/-- `p?[ceil(A005383(n+1)/4)-2]` -/
def P13027848892366422425.Spec : Prop :=
  ∀ n, P13027848892366422425.a n = A105691 (n + 1)

end A105691

/-! ## A105691.P6683335482490927099

`p?[ceil(A077068(n+1)/4)-2]`
-/

namespace A105691.P6683335482490927099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A077068 (n + 1) : ℚ) / 4⌉ - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105691.P6683335482490927099

namespace A105691

/-- `p?[ceil(A077068(n+1)/4)-2]` -/
def P6683335482490927099.Spec : Prop :=
  ∀ n, P6683335482490927099.a n = A105691 (n + 1)

end A105691

/-! ## A105691.P4847397389662187892

`p?[A260196(n)+A123998(n+1)]`
-/

namespace A105691.P4847397389662187892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n + A123998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105691.P4847397389662187892

namespace A105691

/-- `p?[A260196(n)+A123998(n+1)]` -/
def P4847397389662187892.Spec : Prop :=
  ∀ n, P4847397389662187892.a n = A105691 (n + 1)

end A105691

/-! ## A105691.P2118934857656369890

`∩[A023214(n+1), A105610(n+1)]`
-/

namespace A105691.P2118934857656369890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105691.P2118934857656369890

namespace A105691

/-- `∩[A023214(n+1), A105610(n+1)]` -/
def P2118934857656369890.Spec : Prop :=
  ∀ n, (P2118934857656369890.a n : ℤ) = A105691 (n + 1)

end A105691

/-! ## A105691.P12602572649378193037

`∩[A023204(n+1), A023214(n+1)]`
-/

namespace A105691.P12602572649378193037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105691.P12602572649378193037

namespace A105691

/-- `∩[A023204(n+1), A023214(n+1)]` -/
def P12602572649378193037.Spec : Prop :=
  ∀ n, (P12602572649378193037.a n : ℤ) = A105691 (n + 1)

end A105691

/-! ## A105691.P11706228845943315178

`∩[A023204(n+1), A105610(n+1)]`
-/

namespace A105691.P11706228845943315178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105691.P11706228845943315178

namespace A105691

/-- `∩[A023204(n+1), A105610(n+1)]` -/
def P11706228845943315178.Spec : Prop :=
  ∀ n, (P11706228845943315178.a n : ℤ) = A105691 (n + 1)

end A105691

/-! ## A105691.P7294102359736709437

`∩[A003627(n+1), A105610(n+1)]`
-/

namespace A105691.P7294102359736709437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105691.P7294102359736709437

namespace A105691

/-- `∩[A003627(n+1), A105610(n+1)]` -/
def P7294102359736709437.Spec : Prop :=
  ∀ n, (P7294102359736709437.a n : ℤ) = A105691 (n + 1)

end A105691

/-! ## A105691.P7032442386838960815

`∩[A045309(n+1), A105610(n+1)]`
-/

namespace A105691.P7032442386838960815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105691.P7032442386838960815

namespace A105691

/-- `∩[A045309(n+1), A105610(n+1)]` -/
def P7032442386838960815.Spec : Prop :=
  ∀ n, (P7032442386838960815.a n : ℤ) = A105691 (n + 1)

end A105691

/-! ## A105691.P14343785236766237572

`∩[A049596(n+1), A105610(n+1)]`
-/

namespace A105691.P14343785236766237572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105691.P14343785236766237572

namespace A105691

/-- `∩[A049596(n+1), A105610(n+1)]` -/
def P14343785236766237572.Spec : Prop :=
  ∀ n, (P14343785236766237572.a n : ℤ) = A105691 (n + 1)

end A105691

/-! ## A105691.P14063024243536079092

`∩[A040028(n+1), A105610(n+1)]`
-/

namespace A105691.P14063024243536079092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105691.P14063024243536079092

namespace A105691

/-- `∩[A040028(n+1), A105610(n+1)]` -/
def P14063024243536079092.Spec : Prop :=
  ∀ n, (P14063024243536079092.a n : ℤ) = A105691 (n + 1)

end A105691

/-! ## A105691.P13924581479242680640

`∩[A040036(n+1), A105610(n+1)]`
-/

namespace A105691.P13924581479242680640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105691.P13924581479242680640

namespace A105691

/-- `∩[A040036(n+1), A105610(n+1)]` -/
def P13924581479242680640.Spec : Prop :=
  ∀ n, (P13924581479242680640.a n : ℤ) = A105691 (n + 1)

end A105691

/-! ## A105691.P18260960310962615611

`∩[A040044(n+1), A105610(n+1)]`
-/

namespace A105691.P18260960310962615611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105691.P18260960310962615611

namespace A105691

/-- `∩[A040044(n+1), A105610(n+1)]` -/
def P18260960310962615611.Spec : Prop :=
  ∀ n, (P18260960310962615611.a n : ℤ) = A105691 (n + 1)

end A105691

/-! ## A105691.P297203290706212900

`∩[A040046(n+1), A105610(n+1)]`
-/

namespace A105691.P297203290706212900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105691.P297203290706212900

namespace A105691

/-- `∩[A040046(n+1), A105610(n+1)]` -/
def P297203290706212900.Spec : Prop :=
  ∀ n, (P297203290706212900.a n : ℤ) = A105691 (n + 1)

end A105691

/-! ## A105691.P10154271531379389995

`∩[A040049(n+1), A105610(n+1)]`
-/

namespace A105691.P10154271531379389995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105691.P10154271531379389995

namespace A105691

/-- `∩[A040049(n+1), A105610(n+1)]` -/
def P10154271531379389995.Spec : Prop :=
  ∀ n, (P10154271531379389995.a n : ℤ) = A105691 (n + 1)

end A105691

/-! ## A105691.P15580376203017448864

`∩[A040060(n+1), A105610(n+1)]`
-/

namespace A105691.P15580376203017448864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105691.P15580376203017448864

namespace A105691

/-- `∩[A040060(n+1), A105610(n+1)]` -/
def P15580376203017448864.Spec : Prop :=
  ∀ n, (P15580376203017448864.a n : ℤ) = A105691 (n + 1)

end A105691

/-! ## A105691.P12062510599732925329

`∩[A040078(n+1), A105610(n+1)]`
-/

namespace A105691.P12062510599732925329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105691.P12062510599732925329

namespace A105691

/-- `∩[A040078(n+1), A105610(n+1)]` -/
def P12062510599732925329.Spec : Prop :=
  ∀ n, (P12062510599732925329.a n : ℤ) = A105691 (n + 1)

end A105691

/-!
# A105693: a(n) = Fibonacci(2n+2)-2^n.

The programs for A105693, the canonical program `A105693.P15022033262549537270` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105693 has offset 0).

The definition of A105693 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(2*n+2)-2^n` (program `A105693.P15022033262549537270`, by `A105693.P15022033262549537270.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105693.P14270826235164474894

`ogf((x-x^2)/(1-5x+7x^2-2x^3))`
-/

namespace A105693.P14270826235164474894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1] [1, -5, 7, -2] n

end

end A105693.P14270826235164474894

namespace A105693

/-- `ogf((x-x^2)/(1-5x+7x^2-2x^3))` -/
def P14270826235164474894.Spec : Prop :=
  ∀ n, P14270826235164474894.a n = A105693 n

end A105693

/-! ## A105693.P15022033262549537270

`A000045(2*n+2)-2^n`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A105693

/-- `A000045(2*n+2)-2^n` -/
def P15022033262549537270.Spec : Prop :=
  ∀ n, P15022033262549537270.a n = A105693 n

theorem P15022033262549537270.correct : P15022033262549537270.Spec := by
  intro n
  simp only [A105693]

end A105693

/-! ## A105693.P6233569014914534023

`5*a(n-1)-7*a(n-2)+2*a(n-3)` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A105693.P6233569014914534023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  5 * a (n - 1) - 7 * a (n - 2) + 2 * a (n - 3)

end

end A105693.P6233569014914534023

namespace A105693

/-- `5*a(n-1)-7*a(n-2)+2*a(n-3)` -/
def P6233569014914534023.Spec : Prop :=
  ∀ n, P6233569014914534023.a n = A105693 n

end A105693

/-! ## A105693.P3404910037905138383

`A079285(2*n)`
-/

namespace A105693.P3404910037905138383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079285 (2 * n)

end

end A105693.P3404910037905138383

namespace A105693

/-- `A079285(2*n)` -/
def P3404910037905138383.Spec : Prop :=
  ∀ n, P3404910037905138383.a n = A105693 n

end A105693

/-! ## A105693.P1211005655867431439

`A005672(Δ[n²])`
-/

namespace A105693.P1211005655867431439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A105693.P1211005655867431439

namespace A105693

/-- `A005672(Δ[n²])` -/
def P1211005655867431439.Spec : Prop :=
  ∀ n, P1211005655867431439.a n = A105693 n

end A105693

/-! ## A105693.P13200809995257245053

`A139209(n+1)+2^n`
-/

namespace A105693.P13200809995257245053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139209 (n + 1) + (2 ^ n : ℤ)

end

end A105693.P13200809995257245053

namespace A105693

/-- `A139209(n+1)+2^n` -/
def P13200809995257245053.Spec : Prop :=
  ∀ n, P13200809995257245053.a n = A105693 n

end A105693

/-! ## A105693.P6191710254884503079

`A001906(n+1)-2^n`
-/

namespace A105693.P6191710254884503079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1) - (2 ^ n : ℤ)

end

end A105693.P6191710254884503079

namespace A105693

/-- `A001906(n+1)-2^n` -/
def P6191710254884503079.Spec : Prop :=
  ∀ n, P6191710254884503079.a n = A105693 n

end A105693

/-! ## A105693.P6357273902589523810

`A088305(n+1)-2^n`
-/

namespace A105693.P6357273902589523810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 (n + 1) - (2 ^ n : ℤ)

end

end A105693.P6357273902589523810

namespace A105693

/-- `A088305(n+1)-2^n` -/
def P6357273902589523810.Spec : Prop :=
  ∀ n, P6357273902589523810.a n = A105693 n

end A105693

/-! ## A105693.P6000975795610171752

`∑[A000045(Δ[n²])]-2^n`
-/

namespace A105693.P6000975795610171752
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 ^ n : ℤ)

end

end A105693.P6000975795610171752

namespace A105693

/-- `∑[A000045(Δ[n²])]-2^n` -/
def P6000975795610171752.Spec : Prop :=
  ∀ n, P6000975795610171752.a n = A105693 n

end A105693

/-! ## A105693.P7276659911380525059

`record[A000045(xor(1, n)+1)]-2^n`
-/

namespace A105693.P7276659911380525059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (2 ^ n : ℤ)

end

end A105693.P7276659911380525059

namespace A105693

/-- `record[A000045(xor(1, n)+1)]-2^n` -/
def P7276659911380525059.Spec : Prop :=
  ∀ n, P7276659911380525059.a n = A105693 n

end A105693

/-! ## A105693.P2576175839257004388

`∑[record[A000045(n^(n%2))]]-2^n`
-/

namespace A105693.P2576175839257004388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n ^ (n % 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 ^ n : ℤ)

end

end A105693.P2576175839257004388

namespace A105693

/-- `∑[record[A000045(n^(n%2))]]-2^n` -/
def P2576175839257004388.Spec : Prop :=
  ∀ n, P2576175839257004388.a n = A105693 n

end A105693

/-! ## A105693.P3621891053776023638

`a(n-1)+A000045(2*n-1)+a(n-1)` with `a(0)=0`
-/

namespace A105693.P3621891053776023638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A000045 (2 * n - 1) + a (n - 1))

end

end A105693.P3621891053776023638

namespace A105693

/-- `a(n-1)+A000045(2*n-1)+a(n-1)` -/
def P3621891053776023638.Spec : Prop :=
  ∀ n, P3621891053776023638.a n = A105693 n

end A105693

/-! ## A105693.P17976153718525734651

`Δ[A000045(2*n)]-(2^(n-1)-a(n-1))` with `a(0)=0`
-/

namespace A105693.P17976153718525734651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (f1 (n + 1) - f1 n : ℚ) - ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1))

end

end A105693.P17976153718525734651

namespace A105693

/-- `Δ[A000045(2*n)]-(2^(n-1)-a(n-1))` -/
def P17976153718525734651.Spec : Prop :=
  ∀ n, P17976153718525734651.a n = (A105693 n : ℚ)

end A105693

/-! ## A105693.P312630671006174747

`A047790(n)+A027941(n)`
-/

namespace A105693.P312630671006174747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047790 n + A027941 n

end

end A105693.P312630671006174747

namespace A105693

/-- `A047790(n)+A027941(n)` -/
def P312630671006174747.Spec : Prop :=
  ∀ n, P312630671006174747.a n = A105693 n

end A105693

/-! ## A105693.P12288383928572628243

`A035508(n)-A000225(n)`
-/

namespace A105693.P12288383928572628243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035508 n - A000225 n

end

end A105693.P12288383928572628243

namespace A105693

/-- `A035508(n)-A000225(n)` -/
def P12288383928572628243.Spec : Prop :=
  ∀ n, P12288383928572628243.a n = A105693 n

theorem P12288383928572628243.correct : P12288383928572628243.Spec := by
  intro n
  simp only [A105693, Nat.add_sub_cancel, A105693.P12288383928572628243.a, A105693.P15022033262549537270.a, A000045, A000045.P11838749114346432762.a, A000225, A000225.P6535533121115206393.a, A035508, A035508.P9420847389558792345.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A105693

/-! ## A105693.P2537711805791974829

`A128533(n)-A062510(n)`
-/

namespace A105693.P2537711805791974829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128533 n - A062510 n

end

end A105693.P2537711805791974829

namespace A105693

/-- `A128533(n)-A062510(n)` -/
def P2537711805791974829.Spec : Prop :=
  ∀ n, P2537711805791974829.a n = A105693 n

end A105693

/-! ## A105693.P10567029894212171202

`A362067(n)-A027934(n)`
-/

namespace A105693.P10567029894212171202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362067 n - A027934 n

end

end A105693.P10567029894212171202

namespace A105693

/-- `A362067(n)-A027934(n)` -/
def P10567029894212171202.Spec : Prop :=
  ∀ n, P10567029894212171202.a n = A105693 n

end A105693

/-! ## A105693.P17767963948662303547

`A054452(n+1)-A000295(n)`
-/

namespace A105693.P17767963948662303547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054452 (n + 1) - A000295 n

end

end A105693.P17767963948662303547

namespace A105693

/-- `A054452(n+1)-A000295(n)` -/
def P17767963948662303547.Spec : Prop :=
  ∀ n, P17767963948662303547.a n = A105693 n

theorem P17767963948662303547.correct : P17767963948662303547.Spec := by
  intro n
  simp only [A105693, Nat.add_sub_cancel, A105693.P17767963948662303547.a, A105693.P15022033262549537270.a, A000045, A000045.P11838749114346432762.a, A000295, A000295.P9955939544913215267.a, A054452, A054452.P9025492193241379960.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A105693

/-! ## A105693.P4252388397713317524

`A055588(n+1)-A000051(n)`
-/

namespace A105693.P4252388397713317524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055588 (n + 1) - A000051 n

end

end A105693.P4252388397713317524

namespace A105693

/-- `A055588(n+1)-A000051(n)` -/
def P4252388397713317524.Spec : Prop :=
  ∀ n, P4252388397713317524.a n = A105693 n

end A105693

/-! ## A105693.P668124813528209959

`A249450(n+1)-A000918(n)`
-/

namespace A105693.P668124813528209959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249450 (n + 1) - A000918 n

end

end A105693.P668124813528209959

namespace A105693

/-- `A249450(n+1)-A000918(n)` -/
def P668124813528209959.Spec : Prop :=
  ∀ n, P668124813528209959.a n = A105693 n

theorem P668124813528209959.correct : P668124813528209959.Spec := by
  intro n
  simp only [A105693, Nat.add_sub_cancel, A105693.P668124813528209959.a, A105693.P15022033262549537270.a, A000045, A000045.P11838749114346432762.a, A000918, A000918.P14329454465793069288.a, A249450, A249450.P8410916202522237215.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A105693

/-!
# A105694: a(n) = ceiling(10^n - 10^(n-2)).

The programs for A105694, the canonical program `A105694.P7282354464462887130` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105694 has offset 0).

The definition of A105694 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(10^n-10^(n-2))` (program `A105694.P7282354464462887130`, by `A105694.P7282354464462887130.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105694.P15363250484078894173

`ogf((1-x^2)/(1-10x))`
-/

namespace A105694.P15363250484078894173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1] [1, -10] n

end

end A105694.P15363250484078894173

namespace A105694

/-- `ogf((1-x^2)/(1-10x))` -/
def P15363250484078894173.Spec : Prop :=
  ∀ n, P15363250484078894173.a n = A105694 n

end A105694

/-! ## A105694.P5496672096344640924

`10*a(n-1)` with `a(0)=1, a(1)=10, a(2)=99`
-/

namespace A105694.P5496672096344640924
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 10, 99] fun n a =>
  10 * a (n - 1)

end

end A105694.P5496672096344640924

namespace A105694

/-- `10*a(n-1)` -/
def P5496672096344640924.Spec : Prop :=
  ∀ n, (P5496672096344640924.a n : ℤ) = A105694 n

end A105694

/-! ## A105694.P7282354464462887130

`ceil(10^n-10^(n-2))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105694

/-- `ceil(10^n-10^(n-2))` -/
def P7282354464462887130.Spec : Prop :=
  ∀ n, P7282354464462887130.a n = A105694 n

theorem P7282354464462887130.correct : P7282354464462887130.Spec := by
  intro n
  simp only [A105694]

end A105694

/-! ## A105694.P17263660482271757900

`A337855(n+1)+A055996(n)`
-/

namespace A105694.P17263660482271757900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337855 (n + 1) + A055996 n

end

end A105694.P17263660482271757900

namespace A105694

/-- `A337855(n+1)+A055996(n)` -/
def P17263660482271757900.Spec : Prop :=
  ∀ n, P17263660482271757900.a n = A105694 n

end A105694

/-! ## A105694.P11271660580660711175

`A011557(n)-A178501(A004273(n)-n)`
-/

namespace A105694.P11271660580660711175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n - A178501 (A004273 n - (n : ℤ)).toNat

end

end A105694.P11271660580660711175

namespace A105694

/-- `A011557(n)-A178501(A004273(n)-n)` -/
def P11271660580660711175.Spec : Prop :=
  ∀ n, P11271660580660711175.a n = A105694 n

end A105694

/-! ## A105694.P3668425559320724030

`A178501(n+1)-A178501(A140106(2*n+1))`
-/

namespace A105694.P3668425559320724030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178501 (n + 1) - A178501 (A140106 (2 * n + 1)).toNat

end

end A105694.P3668425559320724030

namespace A105694

/-- `A178501(n+1)-A178501(A140106(2*n+1))` -/
def P3668425559320724030.Spec : Prop :=
  ∀ n, P3668425559320724030.a n = A105694 n

end A105694

/-! ## A105694.P6752491699248736086

`Δ[A055996(n)-A196662(n)]`
-/

namespace A105694.P6752491699248736086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055996 n - A196662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105694.P6752491699248736086

namespace A105694

/-- `Δ[A055996(n)-A196662(n)]` -/
def P6752491699248736086.Spec : Prop :=
  ∀ n, P6752491699248736086.a n = A105694 n

end A105694

/-! ## A105694.P17113271855880230794

`Δ[∏{digits}[A067275(n), A005187(#)]]`
-/

namespace A105694.P17113271855880230794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067275 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => A005187 x).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105694.P17113271855880230794

namespace A105694

/-- `Δ[∏{digits}[A067275(n), A005187(#)]]` -/
def P17113271855880230794.Spec : Prop :=
  ∀ n, P17113271855880230794.a n = A105694 n

end A105694

/-! ## A105694.P16246502127675575594

`Δ[A002275(n)-A002275(A289207(n))]`
-/

namespace A105694.P16246502127675575594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n - A002275 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105694.P16246502127675575594

namespace A105694

/-- `Δ[A002275(n)-A002275(A289207(n))]` -/
def P16246502127675575594.Spec : Prop :=
  ∀ n, P16246502127675575594.a n = A105694 n

end A105694

/-! ## A105694.P2059814739941846760

`Δ[A047855(n)-A047855(A289207(n))]`
-/

namespace A105694.P2059814739941846760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047855 n - A047855 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105694.P2059814739941846760

namespace A105694

/-- `Δ[A047855(n)-A047855(A289207(n))]` -/
def P2059814739941846760.Spec : Prop :=
  ∀ n, P2059814739941846760.a n = A105694 n

end A105694

/-! ## A105694.P13289588928504304704

`Δ[A178501(A140106(2*n+1))+A178501(n)]`
-/

namespace A105694.P13289588928504304704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178501 (A140106 (2 * n + 1)).toNat + A178501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105694.P13289588928504304704

namespace A105694

/-- `Δ[A178501(A140106(2*n+1))+A178501(n)]` -/
def P13289588928504304704.Spec : Prop :=
  ∀ n, P13289588928504304704.a n = A105694 n

end A105694

/-! ## A105694.P16639249987751673654

`A003953(n)+A002275(A289207(n))-A002275(n)`
-/

namespace A105694.P16639249987751673654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003953 n + (A002275 (A289207 n).toNat - A002275 n)

end

end A105694.P16639249987751673654

namespace A105694

/-- `A003953(n)+A002275(A289207(n))-A002275(n)` -/
def P16639249987751673654.Spec : Prop :=
  ∀ n, P16639249987751673654.a n = A105694 n

end A105694

/-!
# A105695: Expansion of (1-x)*c(x/(1+x)), where c(x) is the g.f. of the Catalan numbers (A000108).

The programs for A105695, the canonical program `A105695.P7871953186196150134` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105695 has offset 0).

The definition of A105695 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105695.P7871953186196150134

`Δ[A086246(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A105695

/-- `Δ[A086246(n)]` -/
def P7871953186196150134.Spec : Prop :=
  ∀ n, P7871953186196150134.a n = A105695 n

theorem P7871953186196150134.correct : P7871953186196150134.Spec := by
  intro n
  simp only [A105695]

end A105695

/-! ## A105695.P7603519787015738191

`Δ[A168049(C(2, n)+n)]`
-/

namespace A105695.P7603519787015738191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 (Nat.choose 2 n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105695.P7603519787015738191

namespace A105695

/-- `Δ[A168049(C(2, n)+n)]` -/
def P7603519787015738191.Spec : Prop :=
  ∀ n, P7603519787015738191.a n = A105695 n

end A105695

/-! ## A105695.P17835387237813326259

`Δ[A168049(round(1/(n+1)+n))]`
-/

namespace A105695.P17835387237813326259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 (SequenceMachineLib.roundAway (1 / (n + 1 : ℚ) + (n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105695.P17835387237813326259

namespace A105695

/-- `Δ[A168049(round(1/(n+1)+n))]` -/
def P17835387237813326259.Spec : Prop :=
  ∀ n, P17835387237813326259.a n = A105695 n

end A105695

/-! ## A105695.P11004368902813153214

`abs(A166587(n))-A086246(n)`
-/

namespace A105695.P11004368902813153214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A166587 n| - A086246 n

end

end A105695.P11004368902813153214

namespace A105695

/-- `abs(A166587(n))-A086246(n)` -/
def P11004368902813153214.Spec : Prop :=
  ∀ n, P11004368902813153214.a n = A105695 n

end A105695

/-! ## A105695.P6436470623173570930

`Δ[A000007(n)-A292440(n)]`
-/

namespace A105695.P6436470623173570930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A292440 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105695.P6436470623173570930

namespace A105695

/-- `Δ[A000007(n)-A292440(n)]` -/
def P6436470623173570930.Spec : Prop :=
  ∀ n, P6436470623173570930.a n = A105695 n

end A105695

/-! ## A105695.P325799503216246888

`lcm(Δ[A168051(n)], A081729(n))`
-/

namespace A105695.P325799503216246888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168051 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A081729 n)

end

end A105695.P325799503216246888

namespace A105695

/-- `lcm(Δ[A168051(n)], A081729(n))` -/
def P325799503216246888.Spec : Prop :=
  ∀ n, (P325799503216246888.a n : ℤ) = A105695 n

end A105695

/-! ## A105695.P12731619092966876860

`A292440(n)+A168049(n+1)`
-/

namespace A105695.P12731619092966876860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292440 n + A168049 (n + 1)

end

end A105695.P12731619092966876860

namespace A105695

/-- `A292440(n)+A168049(n+1)` -/
def P12731619092966876860.Spec : Prop :=
  ∀ n, P12731619092966876860.a n = A105695 n

end A105695

/-! ## A105695.P10962456827770846094

`A086246(n+1)-A086246(n)`
-/

namespace A105695.P10962456827770846094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 (n + 1) - A086246 n

end

end A105695.P10962456827770846094

namespace A105695

/-- `A086246(n+1)-A086246(n)` -/
def P10962456827770846094.Spec : Prop :=
  ∀ n, P10962456827770846094.a n = A105695 n

theorem P10962456827770846094.correct : P10962456827770846094.Spec := by
  intro n
  simp only [A105695, Nat.add_sub_cancel, A105695.P10962456827770846094.a, A105695.P7871953186196150134.f1, A105695.P7871953186196150134.a, SequenceMachineLib.memo_apply]

end A105695

/-! ## A105695.P9648141082220210277

`A292440(n)-A168051(n+1)`
-/

namespace A105695.P9648141082220210277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292440 n - A168051 (n + 1)

end

end A105695.P9648141082220210277

namespace A105695

/-- `A292440(n)-A168051(n+1)` -/
def P9648141082220210277.Spec : Prop :=
  ∀ n, P9648141082220210277.a n = A105695 n

end A105695

/-! ## A105695.P17789906865924895521

`A292440(n)+abs(Δ[A099323(n)])`
-/

namespace A105695.P17789906865924895521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292440 n + |f1 (n + 1) - f1 n|

end

end A105695.P17789906865924895521

namespace A105695

/-- `A292440(n)+abs(Δ[A099323(n)])` -/
def P17789906865924895521.Spec : Prop :=
  ∀ n, P17789906865924895521.a n = A105695 n

end A105695

/-! ## A105695.P12023155487326916658

`A168051(A254667(n))-A168051(n+1)`
-/

namespace A105695.P12023155487326916658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168051 (A254667 n).toNat - A168051 (n + 1)

end

end A105695.P12023155487326916658

namespace A105695

/-- `A168051(A254667(n))-A168051(n+1)` -/
def P12023155487326916658.Spec : Prop :=
  ∀ n, P12023155487326916658.a n = A105695 n

end A105695

/-! ## A105695.P8158039611386451477

`A168049(n+1)+A168049(n)-A007971(n)`
-/

namespace A105695.P8158039611386451477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 (n + 1) + (A168049 n - A007971 n)

end

end A105695.P8158039611386451477

namespace A105695

/-- `A168049(n+1)+A168049(n)-A007971(n)` -/
def P8158039611386451477.Spec : Prop :=
  ∀ n, P8158039611386451477.a n = A105695 n

end A105695

/-! ## A105695.P8649510928536753624

`Δ[ceil(A007971(n)/2)]`
-/

namespace A105695.P8649510928536753624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007971 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105695.P8649510928536753624

namespace A105695

/-- `Δ[ceil(A007971(n)/2)]` -/
def P8649510928536753624.Spec : Prop :=
  ∀ n, P8649510928536753624.a n = A105695 n

end A105695

/-! ## A105695.P7931425182941118740

`Δ[A168051(n)-A167022(n)]`
-/

namespace A105695.P7931425182941118740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168051 n - A167022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105695.P7931425182941118740

namespace A105695

/-- `Δ[A168051(n)-A167022(n)]` -/
def P7931425182941118740.Spec : Prop :=
  ∀ n, P7931425182941118740.a n = A105695 n

end A105695

/-! ## A105695.P3039173137605516844

`Δ[abs(A168058(n)-A292440(n))]`
-/

namespace A105695.P3039173137605516844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168058 n - A292440 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105695.P3039173137605516844

namespace A105695

/-- `Δ[abs(A168058(n)-A292440(n))]` -/
def P3039173137605516844.Spec : Prop :=
  ∀ n, P3039173137605516844.a n = A105695 n

end A105695

/-! ## A105695.P12261232809941659968

`A005554(n+1)+A292440(n)-A001006(n)`
-/

namespace A105695.P12261232809941659968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005554 (n + 1) + (A292440 n - A001006 n)

end

end A105695.P12261232809941659968

namespace A105695

/-- `A005554(n+1)+A292440(n)-A001006(n)` -/
def P12261232809941659968.Spec : Prop :=
  ∀ n, P12261232809941659968.a n = A105695 n

end A105695

/-! ## A105695.P15351180419171993925

`A007971(n+1)+A292440(n+1)+A292440(n)`
-/

namespace A105695.P15351180419171993925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007971 (n + 1) + (A292440 (n + 1) + A292440 n)

end

end A105695.P15351180419171993925

namespace A105695

/-- `A007971(n+1)+A292440(n+1)+A292440(n)` -/
def P15351180419171993925.Spec : Prop :=
  ∀ n, P15351180419171993925.a n = A105695 n

end A105695

/-! ## A105695.P2921817759035549011

`A292440(n+1)+A292440(n)-A167022(n+1)`
-/

namespace A105695.P2921817759035549011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292440 (n + 1) + (A292440 n - A167022 (n + 1))

end

end A105695.P2921817759035549011

namespace A105695

/-- `A292440(n+1)+A292440(n)-A167022(n+1)` -/
def P2921817759035549011.Spec : Prop :=
  ∀ n, P2921817759035549011.a n = A105695 n

end A105695

/-! ## A105695.P17487143413921374775

`∑{#}[n, (-1)^(n-#)*C(n, #)*A289449(#)]`
-/

namespace A105695.P17487143413921374775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A289449 k : ℚ)

end

end A105695.P17487143413921374775

namespace A105695

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A289449(#)]` -/
def P17487143413921374775.Spec : Prop :=
  ∀ n, P17487143413921374775.a n = (A105695 n : ℚ)

end A105695

/-!
# A105696: Expansion of (1-x)/sqrt((1-3*x)/(1+x)).

The programs for A105696, the canonical program `A105696.P5414802746298820381` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105696 has offset 0).

The definition of A105696 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105696.P2045267019294164813

`(floor(atan(n))+1)*A025566(n)`
-/

namespace A105696.P2045267019294164813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊Real.arctan (n : ℝ)⌋ + 1) * A025566 n

end

end A105696.P2045267019294164813

namespace A105696

/-- `(floor(atan(n))+1)*A025566(n)` -/
def P2045267019294164813.Spec : Prop :=
  ∀ n, P2045267019294164813.a n = A105696 n

end A105696

/-! ## A105696.P2787979146876377620

`Δ[A025566(n)-A168051(n)]`
-/

namespace A105696.P2787979146876377620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025566 n - A168051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105696.P2787979146876377620

namespace A105696

/-- `Δ[A025566(n)-A168051(n)]` -/
def P2787979146876377620.Spec : Prop :=
  ∀ n, P2787979146876377620.a n = A105696 n

end A105696

/-! ## A105696.P10829689432234281297

`ceil(atan(A001006(n)))*A025566(n)`
-/

namespace A105696.P10829689432234281297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (A001006 n : ℝ)⌉ * A025566 n

end

end A105696.P10829689432234281297

namespace A105696

/-- `ceil(atan(A001006(n)))*A025566(n)` -/
def P10829689432234281297.Spec : Prop :=
  ∀ n, P10829689432234281297.a n = A105696 n

end A105696

/-! ## A105696.P5414802746298820381

`A005774(A289207(n))+A005773(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A105696

/-- `A005774(A289207(n))+A005773(n)` -/
def P5414802746298820381.Spec : Prop :=
  ∀ n, P5414802746298820381.a n = A105696 n

theorem P5414802746298820381.correct : P5414802746298820381.Spec := by
  intro n
  simp only [A105696]

end A105696

/-! ## A105696.P11016231718889743000

`A025566(n)*A036453(A008619(n))`
-/

namespace A105696.P11016231718889743000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025566 n * A036453 (A008619 n).toNat

end

end A105696.P11016231718889743000

namespace A105696

/-- `A025566(n)*A036453(A008619(n))` -/
def P11016231718889743000.Spec : Prop :=
  ∀ n, P11016231718889743000.a n = A105696 n

end A105696

/-! ## A105696.P5282087353098209679

`A025566(n)*A036453(A008748(n))`
-/

namespace A105696.P5282087353098209679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025566 n * A036453 (A008748 n).toNat

end

end A105696.P5282087353098209679

namespace A105696

/-- `A025566(n)*A036453(A008748(n))` -/
def P5282087353098209679.Spec : Prop :=
  ∀ n, P5282087353098209679.a n = A105696 n

end A105696

/-! ## A105696.P16773630469165956815

`A025566(n)*A040000(A028391(n))`
-/

namespace A105696.P16773630469165956815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025566 n * A040000 (A028391 n).toNat

end

end A105696.P16773630469165956815

namespace A105696

/-- `A025566(n)*A040000(A028391(n))` -/
def P16773630469165956815.Spec : Prop :=
  ∀ n, P16773630469165956815.a n = A105696 n

end A105696

/-! ## A105696.P12261527080547975472

`A025566(n)*A036453(A059015(n))`
-/

namespace A105696.P12261527080547975472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025566 n * A036453 (A059015 n).toNat

end

end A105696.P12261527080547975472

namespace A105696

/-- `A025566(n)*A036453(A059015(n))` -/
def P12261527080547975472.Spec : Prop :=
  ∀ n, P12261527080547975472.a n = A105696 n

end A105696

/-! ## A105696.P3635542898269848318

`A025566(n)*A036453(A109613(n))`
-/

namespace A105696.P3635542898269848318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025566 n * A036453 (A109613 n).toNat

end

end A105696.P3635542898269848318

namespace A105696

/-- `A025566(n)*A036453(A109613(n))` -/
def P3635542898269848318.Spec : Prop :=
  ∀ n, P3635542898269848318.a n = A105696 n

end A105696

/-! ## A105696.P5524885968084391971

`A025566(n)*A040000(A110660(n))`
-/

namespace A105696.P5524885968084391971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025566 n * A040000 (A110660 n).toNat

end

end A105696.P5524885968084391971

namespace A105696

/-- `A025566(n)*A040000(A110660(n))` -/
def P5524885968084391971.Spec : Prop :=
  ∀ n, P5524885968084391971.a n = A105696 n

end A105696

/-! ## A105696.P7853877288189225333

`A025566(n)*A040001(A254337(n))`
-/

namespace A105696.P7853877288189225333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025566 n * A040001 (A254337 n).toNat

end

end A105696.P7853877288189225333

namespace A105696

/-- `A025566(n)*A040001(A254337(n))` -/
def P7853877288189225333.Spec : Prop :=
  ∀ n, P7853877288189225333.a n = A105696 n

end A105696

/-! ## A105696.P676687787271711412

`A020639(A000010(n+1))*A025566(n)`
-/

namespace A105696.P676687787271711412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 1)).toNat * A025566 n

end

end A105696.P676687787271711412

namespace A105696

/-- `A020639(A000010(n+1))*A025566(n)` -/
def P676687787271711412.Spec : Prop :=
  ∀ n, P676687787271711412.a n = A105696 n

end A105696

/-! ## A105696.P11780599415304379259

`A005773(n)+A025566(n)-A307789(n)`
-/

namespace A105696.P11780599415304379259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n + (A025566 n - A307789 n)

end

end A105696.P11780599415304379259

namespace A105696

/-- `A005773(n)+A025566(n)-A307789(n)` -/
def P11780599415304379259.Spec : Prop :=
  ∀ n, P11780599415304379259.a n = A105696 n

end A105696

/-! ## A105696.P1574946085736428105

`(3-A014963(A001747(n+1)))*A025566(n)`
-/

namespace A105696.P1574946085736428105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A014963 (A001747 (n + 1)).toNat) * A025566 n

end

end A105696.P1574946085736428105

namespace A105696

/-- `(3-A014963(A001747(n+1)))*A025566(n)` -/
def P1574946085736428105.Spec : Prop :=
  ∀ n, P1574946085736428105.a n = A105696 n

end A105696

/-! ## A105696.P15374548185002874669

`A307789(n+1)+A025566(n)-A307789(n)`
-/

namespace A105696.P15374548185002874669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307789 (n + 1) + (A025566 n - A307789 n)

end

end A105696.P15374548185002874669

namespace A105696

/-- `A307789(n+1)+A025566(n)-A307789(n)` -/
def P15374548185002874669.Spec : Prop :=
  ∀ n, P15374548185002874669.a n = A105696 n

end A105696

/-! ## A105696.P17268858557546324598

`floor(atan(A067771(n))²)*A025566(n)`
-/

namespace A105696.P17268858557546324598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A067771 n : ℝ) ^ 2⌋ * A025566 n

end

end A105696.P17268858557546324598

namespace A105696

/-- `floor(atan(A067771(n))²)*A025566(n)` -/
def P17268858557546324598.Spec : Prop :=
  ∀ n, P17268858557546324598.a n = A105696 n

end A105696

/-! ## A105696.P8137729080495246122

`A000005(A212848(n))*A025566(n)`
-/

namespace A105696.P8137729080495246122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A212848 n).toNat * A025566 n

end

end A105696.P8137729080495246122

namespace A105696

/-- `A000005(A212848(n))*A025566(n)` -/
def P8137729080495246122.Spec : Prop :=
  ∀ n, P8137729080495246122.a n = A105696 n

end A105696

/-!
# A105697: A simple "Fractal Jump Sequence" (FJS).

The programs for A105697, there is no canonical definition to state claims against.
-/

/-! ## A105697.P13759310489333425606

`A246127(or(A136579(n), A141135(n+4)))`
-/

namespace A105697.P13759310489333425606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246127 (Int.lor (A136579 n) (A141135 (n + 4))).toNat

end

end A105697.P13759310489333425606

/-!
# A105698: Fixed point of morphism 1->{1, 4, 2, 1}, 2->{2, 1, 3, 2}, 3->{3, 2, 4, 3}, 4->{4, 1, 3, 4}.

The programs for A105698, there is no canonical definition to state claims against.
-/

/-! ## A105698.P8205454365264293230

`A080426(A286165(n))+char[xor(n, 2*n+1)]`
-/

namespace A105698.P8205454365264293230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080426 (A286165 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A105698.P8205454365264293230

/-! ## A105698.P8337718976189565056

`A080426(A286165(n))+A010060(n)`
-/

namespace A105698.P8337718976189565056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080426 (A286165 n).toNat + A010060 n

end

end A105698.P8337718976189565056

/-! ## A105698.P5102984124383400822

`A190698(∑[A130752(n)]+23)`
-/

namespace A105698.P5102984124383400822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130752 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190698 (∑ j ∈ Finset.range (n + 1), f1 j + 23).toNat

end

end A105698.P5102984124383400822

/-! ## A105698.P12739432388047993107

`A070352(A018460(n+1)%A001844(n))`
-/

namespace A105698.P12739432388047993107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070352 (Int.tmod (A018460 (n + 1)) (A001844 n)).toNat

end

end A105698.P12739432388047993107

/-! ## A105698.P14066213412455565434

`A287566(A325832(3*n))+A112798(n+2)`
-/

namespace A105698.P14066213412455565434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287566 (A325832 (3 * n)).toNat + A112798 (n + 2)

end

end A105698.P14066213412455565434

