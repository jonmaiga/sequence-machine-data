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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
# A107800: a(n) = number of distinct primes dividing A006049(n) (and dividing A006049(n)+1).

The programs for A107800, the canonical program `A107800.P13306673971916203850` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107800 has offset 1).

The definition of A107800 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A006049, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A107800.P13306673971916203850

`A001221(A006049(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A107800

/-- `A001221(A006049(n+1))` -/
def P13306673971916203850.Spec : Prop :=
  ∀ n, P13306673971916203850.a n = A107800 (n + 1)

theorem P13306673971916203850.correct : P13306673971916203850.Spec := by
  intro n
  simp only [A107800, Nat.add_sub_cancel]

end A107800

/-! ## A107800.P9610892279773166807

`∑{p}[A006049(n+1), A001222(#)]`
-/

namespace A107800.P9610892279773166807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A107800.P9610892279773166807

namespace A107800

/-- `∑{p}[A006049(n+1), A001222(#)]` -/
def P9610892279773166807.Spec : Prop :=
  ∀ n, P9610892279773166807.a n = A107800 (n + 1)

end A107800

/-! ## A107800.P17323104641898809500

`∑{p}[A006049(n+1), A064547(#)]`
-/

namespace A107800.P17323104641898809500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A064547 p

end

end A107800.P17323104641898809500

namespace A107800

/-- `∑{p}[A006049(n+1), A064547(#)]` -/
def P17323104641898809500.Spec : Prop :=
  ∀ n, P17323104641898809500.a n = A107800 (n + 1)

end A107800

/-! ## A107800.P13671028079903988315

`A001222(∏{p}[A006049(n+1), #])`
-/

namespace A107800.P13671028079903988315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A107800.P13671028079903988315

namespace A107800

/-- `A001222(∏{p}[A006049(n+1), #])` -/
def P13671028079903988315.Spec : Prop :=
  ∀ n, P13671028079903988315.a n = A107800 (n + 1)

end A107800

/-! ## A107800.P13949174898460072092

`∑{e}[A006049(n+1), A049419(A020639(#))]`
-/

namespace A107800.P13949174898460072092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A049419 (A020639 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A107800.P13949174898460072092

namespace A107800

/-- `∑{e}[A006049(n+1), A049419(A020639(#))]` -/
def P13949174898460072092.Spec : Prop :=
  ∀ n, P13949174898460072092.a n = A107800 (n + 1)

end A107800

/-! ## A107800.P9316175864481859333

`A001221(eq[A001221(n+2), A001221(n+1)]+1)`
-/

namespace A107800.P9316175864481859333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A107800.P9316175864481859333

namespace A107800

/-- `A001221(eq[A001221(n+2), A001221(n+1)]+1)` -/
def P9316175864481859333.Spec : Prop :=
  ∀ n, P9316175864481859333.a n = A107800 (n + 1)

end A107800

/-! ## A107800.P11651220431195204536

`∑{p}[A006049(n+1), A049419(#)]`
-/

namespace A107800.P11651220431195204536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A049419 p

end

end A107800.P11651220431195204536

namespace A107800

/-- `∑{p}[A006049(n+1), A049419(#)]` -/
def P11651220431195204536.Spec : Prop :=
  ∀ n, P11651220431195204536.a n = A107800 (n + 1)

end A107800

/-!
# A107801: a(1) = prime(1), for n >= 2, a(n) is the smallest prime not previously used which contains a digit from a(n-1).

The programs for A107801, there is no canonical definition to state claims against.
-/

/-! ## A107801.P1981615424828962326

`A000040(A107821(n+1))`
-/

namespace A107801.P1981615424828962326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A107821 (n + 1)).toNat

end

end A107801.P1981615424828962326

/-! ## A107801.P4996964167483929835

`A008578(A107821(n+1)+1)`
-/

namespace A107801.P4996964167483929835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A107821 (n + 1) + 1).toNat

end

end A107801.P4996964167483929835

/-! ## A107801.P11602758038955837266

`A182986(A107821(n+1)+1)`
-/

namespace A107801.P11602758038955837266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A107821 (n + 1) + 1).toNat

end

end A107801.P11602758038955837266

/-! ## A107801.P3877755771644803591

`∑{d}[A107821(n+1), A007444(#)]`
-/

namespace A107801.P3877755771644803591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A107801.P3877755771644803591

/-! ## A107801.P1370077344828510328

`A006005(A107821(n+1))+A000007(n)`
-/

namespace A107801.P1370077344828510328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A107821 (n + 1)).toNat + A000007 n

end

end A107801.P1370077344828510328

/-! ## A107801.P17376905348869092066

`A296207(A230362(n+1))+A006093(A107821(n+1))`
-/

namespace A107801.P17376905348869092066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296207 (A230362 (n + 1)).toNat + A006093 (A107821 (n + 1)).toNat

end

end A107801.P17376905348869092066

/-! ## A107801.P8869559442467454663

`A296230(A266220(2*n))+A006093(A107821(n+1))`
-/

namespace A107801.P8869559442467454663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296230 (A266220 (2 * n)).toNat + A006093 (A107821 (n + 1)).toNat

end

end A107801.P8869559442467454663

/-! ## A107801.P8986834023150182281

`A296207(A107805(n+1))+A006093(A107821(n+1))`
-/

namespace A107801.P8986834023150182281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296207 (A107805 (n + 1)).toNat + A006093 (A107821 (n + 1)).toNat

end

end A107801.P8986834023150182281

/-! ## A107801.P16514993805812752432

`A296207(A107810(n+1))+A006093(A107821(n+1))`
-/

namespace A107801.P16514993805812752432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296207 (A107810 (n + 1)).toNat + A006093 (A107821 (n + 1)).toNat

end

end A107801.P16514993805812752432

/-!
# A107802: a(1) = prime(2), for n >= 2, a(n) is the smallest prime not previously used which contains a digit from a(n-1).

The programs for A107802, there is no canonical definition to state claims against.
-/

/-! ## A107802.P10460152779854716608

`A000040(A107822(n+1))`
-/

namespace A107802.P10460152779854716608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A107822 (n + 1)).toNat

end

end A107802.P10460152779854716608

/-! ## A107802.P10398012981067437946

`A008578(A107822(n+1)+1)`
-/

namespace A107802.P10398012981067437946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A107822 (n + 1) + 1).toNat

end

end A107802.P10398012981067437946

/-! ## A107802.P6252421554106973697

`A015919(A107822(n+1)+1)`
-/

namespace A107802.P6252421554106973697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (A107822 (n + 1) + 1).toNat

end

end A107802.P6252421554106973697

/-! ## A107802.P12398224927267748747

`A064555(A107822(n+1)+1)`
-/

namespace A107802.P12398224927267748747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064555 (A107822 (n + 1) + 1).toNat

end

end A107802.P12398224927267748747

/-! ## A107802.P2339573950150291450

`A182986(A107822(n+1)+1)`
-/

namespace A107802.P2339573950150291450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A107822 (n + 1) + 1).toNat

end

end A107802.P2339573950150291450

/-! ## A107802.P668610586273443886

`A324050(A107822(n+1)+1)`
-/

namespace A107802.P668610586273443886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324050 (A107822 (n + 1) + 1).toNat

end

end A107802.P668610586273443886

/-! ## A107802.P7256536832189759705

`A158611(A107822(n+1)+2)`
-/

namespace A107802.P7256536832189759705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A107822 (n + 1) + 2).toNat

end

end A107802.P7256536832189759705

/-! ## A107802.P10636881948861659031

`A082500(2*A107822(n+1))`
-/

namespace A107802.P10636881948861659031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A107822 (n + 1)).toNat

end

end A107802.P10636881948861659031

/-! ## A107802.P17623620252261805457

`∑{d}[A107822(n+1), A007444(#)]`
-/

namespace A107802.P17623620252261805457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A107802.P17623620252261805457

/-! ## A107802.P3707444770646371705

`A006093(A107822(n+1))+A007318(C(2, n))`
-/

namespace A107802.P3707444770646371705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A107822 (n + 1)).toNat + A007318 (Nat.choose 2 n)

end

end A107802.P3707444770646371705

/-!
# A107803: a(1) = prime(3), for n >= 2, a(n) is the smallest prime not previously used which contains a digit from a(n-1).

The programs for A107803, there is no canonical definition to state claims against.
-/

/-! ## A107803.P18422545944708074401

`A000040(A107823(n+1))`
-/

namespace A107803.P18422545944708074401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A107823 (n + 1)).toNat

end

end A107803.P18422545944708074401

/-! ## A107803.P15222083571365932764

`A008578(A107823(n+1)+1)`
-/

namespace A107803.P15222083571365932764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A107823 (n + 1) + 1).toNat

end

end A107803.P15222083571365932764

/-! ## A107803.P12276926657162678395

`A015919(A107823(n+1)+1)`
-/

namespace A107803.P12276926657162678395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (A107823 (n + 1) + 1).toNat

end

end A107803.P12276926657162678395

/-! ## A107803.P1356953312046269272

`A064555(A107823(n+1)+1)`
-/

namespace A107803.P1356953312046269272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064555 (A107823 (n + 1) + 1).toNat

end

end A107803.P1356953312046269272

/-! ## A107803.P18290161708034966068

`A182986(A107823(n+1)+1)`
-/

namespace A107803.P18290161708034966068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A107823 (n + 1) + 1).toNat

end

end A107803.P18290161708034966068

/-! ## A107803.P6787197687114609385

`A324050(A107823(n+1)+1)`
-/

namespace A107803.P6787197687114609385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324050 (A107823 (n + 1) + 1).toNat

end

end A107803.P6787197687114609385

/-! ## A107803.P7547401871389173594

`A158611(A107823(n+1)+2)`
-/

namespace A107803.P7547401871389173594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A107823 (n + 1) + 2).toNat

end

end A107803.P7547401871389173594

/-! ## A107803.P9272163215904877837

`A073846(2*A107823(n+1))`
-/

namespace A107803.P9272163215904877837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A107823 (n + 1)).toNat

end

end A107803.P9272163215904877837

/-! ## A107803.P16967315058376498752

`A082500(2*A107823(n+1))`
-/

namespace A107803.P16967315058376498752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A107823 (n + 1)).toNat

end

end A107803.P16967315058376498752

/-! ## A107803.P8141102400830052335

`∑{d}[A107823(n+1), A007444(#)]`
-/

namespace A107803.P8141102400830052335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107823 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A107803.P8141102400830052335

/-!
# A107804: a(1) = prime(4), for n >= 2, a(n) is the smallest prime not previously used which contains a digit from a(n-1).

The programs for A107804, there is no canonical definition to state claims against.
-/

/-! ## A107804.P14392839203672081424

`A000040(A107824(n+1))`
-/

namespace A107804.P14392839203672081424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A107824 (n + 1)).toNat

end

end A107804.P14392839203672081424

/-! ## A107804.P478980017780948789

`A008578(A107824(n+1)+1)`
-/

namespace A107804.P478980017780948789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A107824 (n + 1) + 1).toNat

end

end A107804.P478980017780948789

/-! ## A107804.P16133874459165688052

`A015919(A107824(n+1)+1)`
-/

namespace A107804.P16133874459165688052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (A107824 (n + 1) + 1).toNat

end

end A107804.P16133874459165688052

/-! ## A107804.P3065933898927617304

`A064555(A107824(n+1)+1)`
-/

namespace A107804.P3065933898927617304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064555 (A107824 (n + 1) + 1).toNat

end

end A107804.P3065933898927617304

/-! ## A107804.P15915807423424032376

`A182986(A107824(n+1)+1)`
-/

namespace A107804.P15915807423424032376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A107824 (n + 1) + 1).toNat

end

end A107804.P15915807423424032376

/-! ## A107804.P8730052903250097155

`A324050(A107824(n+1)+1)`
-/

namespace A107804.P8730052903250097155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324050 (A107824 (n + 1) + 1).toNat

end

end A107804.P8730052903250097155

/-! ## A107804.P98423875595825234

`A158611(A107824(n+1)+2)`
-/

namespace A107804.P98423875595825234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A107824 (n + 1) + 2).toNat

end

end A107804.P98423875595825234

/-! ## A107804.P12808417301647523396

`A073846(2*A107824(n+1))`
-/

namespace A107804.P12808417301647523396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A107824 (n + 1)).toNat

end

end A107804.P12808417301647523396

/-! ## A107804.P6015920527639935662

`A207790(2*A107824(n+1))`
-/

namespace A107804.P6015920527639935662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * A107824 (n + 1)).toNat

end

end A107804.P6015920527639935662

/-! ## A107804.P10986540509042093403

`∑{d}[A107824(n+1), A007444(#)]`
-/

namespace A107804.P10986540509042093403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A107804.P10986540509042093403

/-!
# A107805: a(1) = prime(5), for n >= 2, a(n) is the smallest prime not previously used which contains a digit from a(n-1).

The programs for A107805, there is no canonical definition to state claims against.
-/

/-! ## A107805.P4400160946863635919

`A000040(A107825(n+1))`
-/

namespace A107805.P4400160946863635919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A107825 (n + 1)).toNat

end

end A107805.P4400160946863635919

/-! ## A107805.P8313941227809173299

`A008578(A107825(n+1)+1)`
-/

namespace A107805.P8313941227809173299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A107825 (n + 1) + 1).toNat

end

end A107805.P8313941227809173299

/-! ## A107805.P2535331829469239152

`A015919(A107825(n+1)+1)`
-/

namespace A107805.P2535331829469239152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (A107825 (n + 1) + 1).toNat

end

end A107805.P2535331829469239152

/-! ## A107805.P468185008916978815

`A064555(A107825(n+1)+1)`
-/

namespace A107805.P468185008916978815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064555 (A107825 (n + 1) + 1).toNat

end

end A107805.P468185008916978815

/-! ## A107805.P2003611192039482695

`A182986(A107825(n+1)+1)`
-/

namespace A107805.P2003611192039482695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A107825 (n + 1) + 1).toNat

end

end A107805.P2003611192039482695

/-! ## A107805.P4285042434024399387

`A324050(A107825(n+1)+1)`
-/

namespace A107805.P4285042434024399387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324050 (A107825 (n + 1) + 1).toNat

end

end A107805.P4285042434024399387

/-! ## A107805.P3292592347247978388

`A158611(A107825(n+1)+2)`
-/

namespace A107805.P3292592347247978388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A107825 (n + 1) + 2).toNat

end

end A107805.P3292592347247978388

/-! ## A107805.P16032970690290344367

`A073846(2*A107825(n+1))`
-/

namespace A107805.P16032970690290344367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A107825 (n + 1)).toNat

end

end A107805.P16032970690290344367

/-! ## A107805.P6283877663368669649

`A082500(2*A107825(n+1))`
-/

namespace A107805.P6283877663368669649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A107825 (n + 1)).toNat

end

end A107805.P6283877663368669649

/-! ## A107805.P16260242132704969659

`∑{d}[A107825(n+1), A007444(#)]`
-/

namespace A107805.P16260242132704969659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A107805.P16260242132704969659

/-!
# A107806: a(1) = prime(6), for n >= 2, a(n) is the smallest prime not previously used which contains a digit from a(n-1).

The programs for A107806, there is no canonical definition to state claims against.
-/

/-! ## A107806.P17743944277284882720

`A000040(A107826(n+1))`
-/

namespace A107806.P17743944277284882720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A107826 (n + 1)).toNat

end

end A107806.P17743944277284882720

/-! ## A107806.P9431432982769811012

`A008578(A107826(n+1)+1)`
-/

namespace A107806.P9431432982769811012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A107826 (n + 1) + 1).toNat

end

end A107806.P9431432982769811012

/-! ## A107806.P12294103317715119342

`A015919(A107826(n+1)+1)`
-/

namespace A107806.P12294103317715119342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (A107826 (n + 1) + 1).toNat

end

end A107806.P12294103317715119342

/-! ## A107806.P15951376614886078519

`A064555(A107826(n+1)+1)`
-/

namespace A107806.P15951376614886078519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064555 (A107826 (n + 1) + 1).toNat

end

end A107806.P15951376614886078519

/-! ## A107806.P18377891652922319221

`A182986(A107826(n+1)+1)`
-/

namespace A107806.P18377891652922319221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A107826 (n + 1) + 1).toNat

end

end A107806.P18377891652922319221

/-! ## A107806.P3675002103208863935

`A324050(A107826(n+1)+1)`
-/

namespace A107806.P3675002103208863935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324050 (A107826 (n + 1) + 1).toNat

end

end A107806.P3675002103208863935

/-! ## A107806.P12574957456013852657

`A158611(A107826(n+1)+2)`
-/

namespace A107806.P12574957456013852657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A107826 (n + 1) + 2).toNat

end

end A107806.P12574957456013852657

/-! ## A107806.P16548208031315305621

`A073846(2*A107826(n+1))`
-/

namespace A107806.P16548208031315305621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A107826 (n + 1)).toNat

end

end A107806.P16548208031315305621

/-! ## A107806.P9767318680448718433

`A082500(2*A107826(n+1))`
-/

namespace A107806.P9767318680448718433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A107826 (n + 1)).toNat

end

end A107806.P9767318680448718433

/-! ## A107806.P15770794808042576305

`∑{d}[A107826(n+1), A007444(#)]`
-/

namespace A107806.P15770794808042576305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107826 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A107806.P15770794808042576305

/-!
# A107807: a(1) = prime(7), for n >= 2, a(n) is the smallest prime not previously used which contains a digit from a(n-1).

The programs for A107807, there is no canonical definition to state claims against.
-/

/-! ## A107807.P17113162949700267618

`A000040(A107827(n+1))`
-/

namespace A107807.P17113162949700267618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A107827 (n + 1)).toNat

end

end A107807.P17113162949700267618

/-! ## A107807.P15884649469341716482

`A008578(A107827(n+1)+1)`
-/

namespace A107807.P15884649469341716482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A107827 (n + 1) + 1).toNat

end

end A107807.P15884649469341716482

/-! ## A107807.P6292154627283908943

`A015919(A107827(n+1)+1)`
-/

namespace A107807.P6292154627283908943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (A107827 (n + 1) + 1).toNat

end

end A107807.P6292154627283908943

/-! ## A107807.P3673710429210404608

`A064555(A107827(n+1)+1)`
-/

namespace A107807.P3673710429210404608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064555 (A107827 (n + 1) + 1).toNat

end

end A107807.P3673710429210404608

/-! ## A107807.P14623441093484135539

`A182986(A107827(n+1)+1)`
-/

namespace A107807.P14623441093484135539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A107827 (n + 1) + 1).toNat

end

end A107807.P14623441093484135539

/-! ## A107807.P8071911234100690646

`A324050(A107827(n+1)+1)`
-/

namespace A107807.P8071911234100690646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324050 (A107827 (n + 1) + 1).toNat

end

end A107807.P8071911234100690646

/-! ## A107807.P9588044577809956861

`A158611(A107827(n+1)+2)`
-/

namespace A107807.P9588044577809956861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A107827 (n + 1) + 2).toNat

end

end A107807.P9588044577809956861

/-! ## A107807.P16788578858857657410

`A073846(2*A107827(n+1))`
-/

namespace A107807.P16788578858857657410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A107827 (n + 1)).toNat

end

end A107807.P16788578858857657410

/-! ## A107807.P9205544481780041090

`A082500(2*A107827(n+1))`
-/

namespace A107807.P9205544481780041090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A107827 (n + 1)).toNat

end

end A107807.P9205544481780041090

/-! ## A107807.P6614506893919493266

`∑{d}[A107827(n+1), A007444(#)]`
-/

namespace A107807.P6614506893919493266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A107807.P6614506893919493266

/-!
# A107808: a(1) = prime(8), for n >= 2, a(n) is the smallest prime not previously used which contains a digit from a(n-1).

The programs for A107808, there is no canonical definition to state claims against.
-/

/-! ## A107808.P4685569526765732468

`A000040(A107828(n+1))`
-/

namespace A107808.P4685569526765732468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A107828 (n + 1)).toNat

end

end A107808.P4685569526765732468

/-! ## A107808.P12555886478129250018

`A008578(A107828(n+1)+1)`
-/

namespace A107808.P12555886478129250018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A107828 (n + 1) + 1).toNat

end

end A107808.P12555886478129250018

/-! ## A107808.P15145784893509836486

`A015919(A107828(n+1)+1)`
-/

namespace A107808.P15145784893509836486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (A107828 (n + 1) + 1).toNat

end

end A107808.P15145784893509836486

/-! ## A107808.P717381537702944495

`A064555(A107828(n+1)+1)`
-/

namespace A107808.P717381537702944495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064555 (A107828 (n + 1) + 1).toNat

end

end A107808.P717381537702944495

/-! ## A107808.P10255940712693456951

`A182986(A107828(n+1)+1)`
-/

namespace A107808.P10255940712693456951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A107828 (n + 1) + 1).toNat

end

end A107808.P10255940712693456951

/-! ## A107808.P14587436317334429829

`A324050(A107828(n+1)+1)`
-/

namespace A107808.P14587436317334429829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324050 (A107828 (n + 1) + 1).toNat

end

end A107808.P14587436317334429829

/-! ## A107808.P15181802910710655745

`A158611(A107828(n+1)+2)`
-/

namespace A107808.P15181802910710655745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A107828 (n + 1) + 2).toNat

end

end A107808.P15181802910710655745

/-! ## A107808.P1794260015750127452

`A073846(2*A107828(n+1))`
-/

namespace A107808.P1794260015750127452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A107828 (n + 1)).toNat

end

end A107808.P1794260015750127452

/-! ## A107808.P3283329123017477871

`A082500(2*A107828(n+1))`
-/

namespace A107808.P3283329123017477871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A107828 (n + 1)).toNat

end

end A107808.P3283329123017477871

/-! ## A107808.P3832127775732165540

`∑{d}[A107828(n+1), A007444(#)]`
-/

namespace A107808.P3832127775732165540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A107808.P3832127775732165540

/-!
# A107809: a(1) = prime(9), for n >= 2, a(n) is the smallest prime not previously used which contains a digit from a(n-1).

The programs for A107809, there is no canonical definition to state claims against.
-/

/-! ## A107809.P9797963258994690967

`A000040(A107829(n+1))`
-/

namespace A107809.P9797963258994690967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A107829 (n + 1)).toNat

end

end A107809.P9797963258994690967

/-! ## A107809.P5849686728934741801

`A008578(A107829(n+1)+1)`
-/

namespace A107809.P5849686728934741801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A107829 (n + 1) + 1).toNat

end

end A107809.P5849686728934741801

/-! ## A107809.P4808592992839968405

`A015919(A107829(n+1)+1)`
-/

namespace A107809.P4808592992839968405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (A107829 (n + 1) + 1).toNat

end

end A107809.P4808592992839968405

/-! ## A107809.P15049455328532546495

`A064555(A107829(n+1)+1)`
-/

namespace A107809.P15049455328532546495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064555 (A107829 (n + 1) + 1).toNat

end

end A107809.P15049455328532546495

/-! ## A107809.P12828262890496328859

`A182986(A107829(n+1)+1)`
-/

namespace A107809.P12828262890496328859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A107829 (n + 1) + 1).toNat

end

end A107809.P12828262890496328859

/-! ## A107809.P3025476717876382365

`A324050(A107829(n+1)+1)`
-/

namespace A107809.P3025476717876382365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324050 (A107829 (n + 1) + 1).toNat

end

end A107809.P3025476717876382365

/-! ## A107809.P7879257366129800593

`A158611(A107829(n+1)+2)`
-/

namespace A107809.P7879257366129800593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A107829 (n + 1) + 2).toNat

end

end A107809.P7879257366129800593

/-! ## A107809.P13894749401427329242

`A082500(2*A107829(n+1))`
-/

namespace A107809.P13894749401427329242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A107829 (n + 1)).toNat

end

end A107809.P13894749401427329242

/-! ## A107809.P11353875517753689765

`A219606(2*A107829(n+1))`
-/

namespace A107809.P11353875517753689765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219606 (2 * A107829 (n + 1)).toNat

end

end A107809.P11353875517753689765

/-! ## A107809.P12081328153472588906

`∑{d}[A107829(n+1), A007444(#)]`
-/

namespace A107809.P12081328153472588906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A107809.P12081328153472588906

/-!
# A107810: a(1) = prime(10), for n >= 2, a(n) is the smallest prime not previously used which contains a digit from a(n-1).

The programs for A107810, there is no canonical definition to state claims against.
-/

/-! ## A107810.P17028635994461775627

`A000040(A107830(n+1))`
-/

namespace A107810.P17028635994461775627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A107830 (n + 1)).toNat

end

end A107810.P17028635994461775627

/-! ## A107810.P13879399129294711713

`A008578(A107830(n+1)+1)`
-/

namespace A107810.P13879399129294711713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A107830 (n + 1) + 1).toNat

end

end A107810.P13879399129294711713

/-! ## A107810.P15703533200800120626

`A015919(A107830(n+1)+1)`
-/

namespace A107810.P15703533200800120626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (A107830 (n + 1) + 1).toNat

end

end A107810.P15703533200800120626

/-! ## A107810.P10720530005437179159

`A064555(A107830(n+1)+1)`
-/

namespace A107810.P10720530005437179159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064555 (A107830 (n + 1) + 1).toNat

end

end A107810.P10720530005437179159

/-! ## A107810.P17020140396891666603

`A182986(A107830(n+1)+1)`
-/

namespace A107810.P17020140396891666603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A107830 (n + 1) + 1).toNat

end

end A107810.P17020140396891666603

/-! ## A107810.P10700233199551040474

`A324050(A107830(n+1)+1)`
-/

namespace A107810.P10700233199551040474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324050 (A107830 (n + 1) + 1).toNat

end

end A107810.P10700233199551040474

/-! ## A107810.P809680913991830387

`A158611(A107830(n+1)+2)`
-/

namespace A107810.P809680913991830387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A107830 (n + 1) + 2).toNat

end

end A107810.P809680913991830387

/-! ## A107810.P10350295031516722035

`∑{d}[A107830(n+1), A007444(#)]`
-/

namespace A107810.P10350295031516722035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A107810.P10350295031516722035

/-! ## A107810.P7963284451777050385

`A006093(A107830(n+1))+abs(A033999(n))`
-/

namespace A107810.P7963284451777050385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A107830 (n + 1)).toNat + |A033999 n|

end

end A107810.P7963284451777050385

/-! ## A107810.P4161052560083116406

`A006093(A107830(n+1))+A007318(C(2, n))`
-/

namespace A107810.P4161052560083116406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A107830 (n + 1)).toNat + A007318 (Nat.choose 2 n)

end

end A107810.P4161052560083116406

/-!
# A107811: a(1) = prime(11), for n >= 2, a(n) is the smallest prime not previously used which contains a digit from a(n-1).

The programs for A107811, there is no canonical definition to state claims against.
-/

/-! ## A107811.P9831888280180208985

`A000040(A107831(n+1))`
-/

namespace A107811.P9831888280180208985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A107831 (n + 1)).toNat

end

end A107811.P9831888280180208985

/-! ## A107811.P478101183953305334

`A008578(A107831(n+1)+1)`
-/

namespace A107811.P478101183953305334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A107831 (n + 1) + 1).toNat

end

end A107811.P478101183953305334

/-! ## A107811.P13588365656101549168

`A015919(A107831(n+1)+1)`
-/

namespace A107811.P13588365656101549168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (A107831 (n + 1) + 1).toNat

end

end A107811.P13588365656101549168

/-! ## A107811.P7839815576178716646

`A064555(A107831(n+1)+1)`
-/

namespace A107811.P7839815576178716646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064555 (A107831 (n + 1) + 1).toNat

end

end A107811.P7839815576178716646

/-! ## A107811.P18445217096562367598

`A182986(A107831(n+1)+1)`
-/

namespace A107811.P18445217096562367598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A107831 (n + 1) + 1).toNat

end

end A107811.P18445217096562367598

/-! ## A107811.P15891398355020136845

`A324050(A107831(n+1)+1)`
-/

namespace A107811.P15891398355020136845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324050 (A107831 (n + 1) + 1).toNat

end

end A107811.P15891398355020136845

/-! ## A107811.P2193211228059623907

`A158611(A107831(n+1)+2)`
-/

namespace A107811.P2193211228059623907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A107831 (n + 1) + 2).toNat

end

end A107811.P2193211228059623907

/-! ## A107811.P418249359651206394

`A073846(2*A107831(n+1))`
-/

namespace A107811.P418249359651206394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A107831 (n + 1)).toNat

end

end A107811.P418249359651206394

/-! ## A107811.P3910406712880961632

`A082500(2*A107831(n+1))`
-/

namespace A107811.P3910406712880961632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A107831 (n + 1)).toNat

end

end A107811.P3910406712880961632

/-! ## A107811.P11065816368112360444

`∑{d}[A107831(n+1), A007444(#)]`
-/

namespace A107811.P11065816368112360444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A107811.P11065816368112360444

/-!
# A107812: a(1) = prime(12), for n >= 2, a(n) is the smallest prime not previously used which contains a digit from a(n-1).

The programs for A107812, there is no canonical definition to state claims against.
-/

/-! ## A107812.P6597575402998693720

`A000040(A107832(n+1))`
-/

namespace A107812.P6597575402998693720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A107832 (n + 1)).toNat

end

end A107812.P6597575402998693720

/-! ## A107812.P14189737433636922141

`A008578(A107832(n+1)+1)`
-/

namespace A107812.P14189737433636922141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A107832 (n + 1) + 1).toNat

end

end A107812.P14189737433636922141

/-! ## A107812.P8163053918314038737

`A015919(A107832(n+1)+1)`
-/

namespace A107812.P8163053918314038737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (A107832 (n + 1) + 1).toNat

end

end A107812.P8163053918314038737

/-! ## A107812.P5933718131835471711

`A064555(A107832(n+1)+1)`
-/

namespace A107812.P5933718131835471711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064555 (A107832 (n + 1) + 1).toNat

end

end A107812.P5933718131835471711

/-! ## A107812.P14887744342618550112

`A182986(A107832(n+1)+1)`
-/

namespace A107812.P14887744342618550112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A107832 (n + 1) + 1).toNat

end

end A107812.P14887744342618550112

/-! ## A107812.P6186515058598473994

`A324050(A107832(n+1)+1)`
-/

namespace A107812.P6186515058598473994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324050 (A107832 (n + 1) + 1).toNat

end

end A107812.P6186515058598473994

/-! ## A107812.P8675168681862504288

`A158611(A107832(n+1)+2)`
-/

namespace A107812.P8675168681862504288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A107832 (n + 1) + 2).toNat

end

end A107812.P8675168681862504288

/-! ## A107812.P835417196152526434

`A073846(2*A107832(n+1))`
-/

namespace A107812.P835417196152526434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A107832 (n + 1)).toNat

end

end A107812.P835417196152526434

/-! ## A107812.P15228114509916349257

`∑{d}[A107832(n+1), A007444(#)]`
-/

namespace A107812.P15228114509916349257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A107812.P15228114509916349257

/-! ## A107812.P7792329078813468798

`A006093(A107832(n+1))+A007318(C(3, n))`
-/

namespace A107812.P7792329078813468798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A107832 (n + 1)).toNat + A007318 (Nat.choose 3 n)

end

end A107812.P7792329078813468798

/-!
# A107813: a(1) = prime(13), for n >= 2, a(n) is the smallest prime not previously used which contains a digit from a(n-1).

The programs for A107813, there is no canonical definition to state claims against.
-/

/-! ## A107813.P10913991069177202150

`A000040(A107833(n+1))`
-/

namespace A107813.P10913991069177202150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A107833 (n + 1)).toNat

end

end A107813.P10913991069177202150

/-! ## A107813.P3530233728895087291

`A008578(A107833(n+1)+1)`
-/

namespace A107813.P3530233728895087291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A107833 (n + 1) + 1).toNat

end

end A107813.P3530233728895087291

/-! ## A107813.P7685328420995194520

`A015919(A107833(n+1)+1)`
-/

namespace A107813.P7685328420995194520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (A107833 (n + 1) + 1).toNat

end

end A107813.P7685328420995194520

/-! ## A107813.P1350470226678957412

`A064555(A107833(n+1)+1)`
-/

namespace A107813.P1350470226678957412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064555 (A107833 (n + 1) + 1).toNat

end

end A107813.P1350470226678957412

/-! ## A107813.P5055542362419400341

`A182986(A107833(n+1)+1)`
-/

namespace A107813.P5055542362419400341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A107833 (n + 1) + 1).toNat

end

end A107813.P5055542362419400341

/-! ## A107813.P3309692392571159228

`A324050(A107833(n+1)+1)`
-/

namespace A107813.P3309692392571159228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324050 (A107833 (n + 1) + 1).toNat

end

end A107813.P3309692392571159228

/-! ## A107813.P18135919284384324467

`A158611(A107833(n+1)+2)`
-/

namespace A107813.P18135919284384324467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A107833 (n + 1) + 2).toNat

end

end A107813.P18135919284384324467

/-! ## A107813.P5438634464588782293

`A073846(2*A107833(n+1))`
-/

namespace A107813.P5438634464588782293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A107833 (n + 1)).toNat

end

end A107813.P5438634464588782293

/-! ## A107813.P7954161241869059413

`A082500(2*A107833(n+1))`
-/

namespace A107813.P7954161241869059413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A107833 (n + 1)).toNat

end

end A107813.P7954161241869059413

/-! ## A107813.P15888129697815533287

`∑{d}[A107833(n+1), A007444(#)]`
-/

namespace A107813.P15888129697815533287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107833 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A107813.P15888129697815533287

/-!
# A107814: a(1) = prime(14), for n >= 2, a(n) is the smallest prime not previously used which contains a digit from a(n-1).

The programs for A107814, there is no canonical definition to state claims against.
-/

/-! ## A107814.P7213835944781959966

`A000040(A107834(n+1))`
-/

namespace A107814.P7213835944781959966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A107834 (n + 1)).toNat

end

end A107814.P7213835944781959966

/-! ## A107814.P1686721307022623010

`A008578(A107834(n+1)+1)`
-/

namespace A107814.P1686721307022623010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A107834 (n + 1) + 1).toNat

end

end A107814.P1686721307022623010

/-! ## A107814.P14156761258949485952

`A015919(A107834(n+1)+1)`
-/

namespace A107814.P14156761258949485952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (A107834 (n + 1) + 1).toNat

end

end A107814.P14156761258949485952

/-! ## A107814.P850088773812892160

`A064555(A107834(n+1)+1)`
-/

namespace A107814.P850088773812892160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064555 (A107834 (n + 1) + 1).toNat

end

end A107814.P850088773812892160

/-! ## A107814.P4337475838561285564

`A182986(A107834(n+1)+1)`
-/

namespace A107814.P4337475838561285564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A107834 (n + 1) + 1).toNat

end

end A107814.P4337475838561285564

/-! ## A107814.P3308518329713754039

`A324050(A107834(n+1)+1)`
-/

namespace A107814.P3308518329713754039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324050 (A107834 (n + 1) + 1).toNat

end

end A107814.P3308518329713754039

/-! ## A107814.P241614465075464012

`A158611(A107834(n+1)+2)`
-/

namespace A107814.P241614465075464012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A107834 (n + 1) + 2).toNat

end

end A107814.P241614465075464012

/-! ## A107814.P14662360405040080421

`A082500(2*A107834(n+1))`
-/

namespace A107814.P14662360405040080421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A107834 (n + 1)).toNat

end

end A107814.P14662360405040080421

/-! ## A107814.P11083707817233320455

`∑{d}[A107834(n+1), A007444(#)]`
-/

namespace A107814.P11083707817233320455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A107814.P11083707817233320455

/-! ## A107814.P3439999746300951844

`A006093(A107834(n+1))+A007318(C(n, 2))`
-/

namespace A107814.P3439999746300951844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A107834 (n + 1)).toNat + A007318 (Nat.choose n 2)

end

end A107814.P3439999746300951844

/-!
# A107815: Primes p such that sigma(k) = phi(prime(k)-1), where p = prime(k).

The programs for A107815, there is no canonical definition to state claims against.
-/

/-! ## A107815.P14367025508752771408

`A000040(A067651(n+1))`
-/

namespace A107815.P14367025508752771408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A067651 (n + 1)).toNat

end

end A107815.P14367025508752771408

/-! ## A107815.P17248244857355255855

`A008578(A067651(n+1)+1)`
-/

namespace A107815.P17248244857355255855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A067651 (n + 1) + 1).toNat

end

end A107815.P17248244857355255855

/-! ## A107815.P17802253992962270960

`A158611(A067651(n+1)+2)`
-/

namespace A107815.P17802253992962270960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A067651 (n + 1) + 2).toNat

end

end A107815.P17802253992962270960

/-! ## A107815.P6575651879415397177

`∑{d}[A067651(n+1), A007444(#)]`
-/

namespace A107815.P6575651879415397177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A107815.P6575651879415397177

/-! ## A107815.P2770772682805178379

`A006093(A067651(n+1))+A007318(∑[n])`
-/

namespace A107815.P2770772682805178379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A067651 (n + 1)).toNat + A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A107815.P2770772682805178379

/-!
# A107816: a(n) = sigma(A067651(n)).

The programs for A107816, there is no canonical definition to state claims against.
-/

/-! ## A107816.P6751084428952122999

`∑{d}[A067651(n+1), #]`
-/

namespace A107816.P6751084428952122999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067651 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A107816.P6751084428952122999

/-! ## A107816.P3179731894767295588

`A000203(A067651(n+1))`
-/

namespace A107816.P3179731894767295588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A067651 (n + 1)).toNat

end

end A107816.P3179731894767295588

/-! ## A107816.P15013393039888421608

`A000010(A107815(n+1)-1)`
-/

namespace A107816.P15013393039888421608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A107815 (n + 1) - 1).toNat

end

end A107816.P15013393039888421608

/-! ## A107816.P15329810202070811151

`∑{d}[A000720(p?[A107815(n+1)]), #]`
-/

namespace A107816.P15329810202070811151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107815 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A107816.P15329810202070811151

/-! ## A107816.P6776330238714079403

`∑{d}[A061395(p?[A107815(n+1)]), #]`
-/

namespace A107816.P6776330238714079403
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107815 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A107816.P6776330238714079403

/-!
# A107817: Slowest increasing sequence where 2 consecutive integers sum up to a prime.

The programs for A107817, the canonical program `A107817.P13758543603320578681` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107817 has offset 0).

The definition of A107817 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107817.P13594869430657815465

`A062044(n)-a(n-1)` with `a(0)=0`
-/

namespace A107817.P13594869430657815465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A062044 n - a (n - 1)

end

end A107817.P13594869430657815465

namespace A107817

/-- `A062044(n)-a(n-1)` -/
def P13594869430657815465.Spec : Prop :=
  ∀ n, P13594869430657815465.a n = A107817 n

end A107817

/-! ## A107817.P13758543603320578681

`A062042(n-a(C(2, n)))` with `a(0)=0, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A107817

/-- `A062042(n-a(C(2, n)))` -/
def P13758543603320578681.Spec : Prop :=
  ∀ n, P13758543603320578681.a n = A107817 n

theorem P13758543603320578681.correct : P13758543603320578681.Spec := by
  intro n
  simp only [A107817]

end A107817

/-! ## A107817.P8026671032747710365

`A062044(n+1)-A062042(n+1)`
-/

namespace A107817.P8026671032747710365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062044 (n + 1) - A062042 (n + 1)

end

end A107817.P8026671032747710365

namespace A107817

/-- `A062044(n+1)-A062042(n+1)` -/
def P8026671032747710365.Spec : Prop :=
  ∀ n, P8026671032747710365.a n = A107817 n

end A107817

/-! ## A107817.P7108351802127757910

`A073627(n+2)-floor(acot(n))`
-/

namespace A107817.P7108351802127757910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073627 (n + 2) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A107817.P7108351802127757910

namespace A107817

/-- `A073627(n+2)-floor(acot(n))` -/
def P7108351802127757910.Spec : Prop :=
  ∀ n, P7108351802127757910.a n = A107817 n

end A107817

/-! ## A107817.P5491967701103340523

`a(n-1)*ratio[A073627(n+1)]` with `a(0)=0, a(1)=2`
-/

namespace A107817.P5491967701103340523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073627 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A107817.P5491967701103340523

namespace A107817

/-- `a(n-1)*ratio[A073627(n+1)]` -/
def P5491967701103340523.Spec : Prop :=
  ∀ n, P5491967701103340523.a n = (A107817 n : ℚ)

end A107817

/-! ## A107817.P13048381130783919930

`A073627(n+2)-A000007(n)`
-/

namespace A107817.P13048381130783919930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073627 (n + 2) - A000007 n

end

end A107817.P13048381130783919930

namespace A107817

/-- `A073627(n+2)-A000007(n)` -/
def P13048381130783919930.Spec : Prop :=
  ∀ n, P13048381130783919930.a n = A107817 n

end A107817

/-! ## A107817.P11462126234016717803

`A062044(n+1)-A073627(n+3)`
-/

namespace A107817.P11462126234016717803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062044 (n + 1) - A073627 (n + 3)

end

end A107817.P11462126234016717803

namespace A107817

/-- `A062044(n+1)-A073627(n+3)` -/
def P11462126234016717803.Spec : Prop :=
  ∀ n, P11462126234016717803.a n = A107817 n

end A107817

/-! ## A107817.P14607628310060117650

`A060266(a(n-1))+a(n-1)` with `a(0)=0, a(1)=2`
-/

namespace A107817.P14607628310060117650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  A060266 (a (n - 1)).toNat + a (n - 1)

end

end A107817.P14607628310060117650

namespace A107817

/-- `A060266(a(n-1))+a(n-1)` -/
def P14607628310060117650.Spec : Prop :=
  ∀ n, P14607628310060117650.a n = A107817 n

end A107817

/-! ## A107817.P8047125562636448448

`A060264(a(n-1))-a(n-1)` with `a(0)=0`
-/

namespace A107817.P8047125562636448448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A060264 (a (n - 1)).toNat - a (n - 1)

end

end A107817.P8047125562636448448

namespace A107817

/-- `A060264(a(n-1))-a(n-1)` -/
def P8047125562636448448.Spec : Prop :=
  ∀ n, P8047125562636448448.a n = A107817 n

end A107817

/-! ## A107817.P16698243544228663147

`A087156(A073627(n+2))`
-/

namespace A107817.P16698243544228663147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (A073627 (n + 2)).toNat

end

end A107817.P16698243544228663147

namespace A107817

/-- `A087156(A073627(n+2))` -/
def P16698243544228663147.Spec : Prop :=
  ∀ n, P16698243544228663147.a n = A107817 n

end A107817

/-! ## A107817.P219880782468654489

`A007920(2*a(n-1))+a(n-1)` with `a(0)=0`
-/

namespace A107817.P219880782468654489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A007920 (2 * a (n - 1)).toNat + a (n - 1)

end

end A107817.P219880782468654489

namespace A107817

/-- `A007920(2*a(n-1))+a(n-1)` -/
def P219880782468654489.Spec : Prop :=
  ∀ n, P219880782468654489.a n = A107817 n

end A107817

/-! ## A107817.P11124976188671072902

`A110654(∑[A214362(n+1)]-A214362(n+1))`
-/

namespace A107817.P11124976188671072902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214362 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (∑ j ∈ Finset.range (n + 1), f1 j - A214362 (n + 1)).toNat

end

end A107817.P11124976188671072902

namespace A107817

/-- `A110654(∑[A214362(n+1)]-A214362(n+1))` -/
def P11124976188671072902.Spec : Prop :=
  ∀ n, P11124976188671072902.a n = A107817 n

end A107817

/-! ## A107817.P7602525427543786310

`record[A125595(n+1)-floor(acot(n))]`
-/

namespace A107817.P7602525427543786310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125595 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107817.P7602525427543786310

namespace A107817

/-- `record[A125595(n+1)-floor(acot(n))]` -/
def P7602525427543786310.Spec : Prop :=
  ∀ n, P7602525427543786310.a n = A107817 n

end A107817

/-!
# A107818: Slowest increasing sequence where (product of 2 consecutive integers)-1 is prime.

The programs for A107818, there is no canonical definition to state claims against.
-/

/-! ## A107818.P5881159949573556820

`A070916(n+1)+A000007(n)`
-/

namespace A107818.P5881159949573556820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070916 (n + 1) + A000007 n

end

end A107818.P5881159949573556820

/-! ## A107818.P14743547307348037503

`A054977(n)*A070916(n+1)`
-/

namespace A107818.P14743547307348037503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A070916 (n + 1)

end

end A107818.P14743547307348037503

/-! ## A107818.P4925845683176465949

`A070916(n+1)+A057428(n)+1`
-/

namespace A107818.P4925845683176465949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070916 (n + 1) + (A057428 n + 1)

end

end A107818.P4925845683176465949

/-! ## A107818.P8476555642434271323

`A096268(A310517(n))+A070916(n+1)`
-/

namespace A107818.P8476555642434271323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (A310517 n).toNat + A070916 (n + 1)

end

end A107818.P8476555642434271323

/-! ## A107818.P1527374233315593854

`A181440(A070916(n+1))`
-/

namespace A107818.P1527374233315593854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A070916 (n + 1)).toNat

end

end A107818.P1527374233315593854

/-! ## A107818.P14075743688487052439

`A112765(A000040(n+3))+A070916(n+1)`
-/

namespace A107818.P14075743688487052439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (A000040 (n + 3)).toNat + A070916 (n + 1)

end

end A107818.P14075743688487052439

/-!
# A107819: Slowest increasing sequence where a(n)+n is prime.

The programs for A107819, there is no canonical definition to state claims against.
-/

/-! ## A107819.P164307215066080938

`p?[comp[∑[n]]]-(n+1)`
-/

namespace A107819.P164307215066080938
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - (n + 1 : ℤ)

end

end A107819.P164307215066080938

/-! ## A107819.P7199860773023301093

`p?[comp[∑[n]]]-1-n`
-/

namespace A107819.P7199860773023301093
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1 - (n : ℤ)

end

end A107819.P7199860773023301093

/-! ## A107819.P585695853086829306

`record[∑{p}[n+4, #]]-(n+1)`
-/

namespace A107819.P585695853086829306
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (n + 1 : ℤ)

end

end A107819.P585695853086829306

/-! ## A107819.P8436185764525885814

`floor(p?[2*n+1]-acot(n))-n`
-/

namespace A107819.P8436185764525885814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ) - SequenceMachineLib.acot (n : ℝ)⌋ - (n : ℤ)

end

end A107819.P8436185764525885814

/-! ## A107819.P10896725634448931878

`xor(1, p?[2*n+1])-round(1/acot(n))`
-/

namespace A107819.P10896725634448931878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℤ) - SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

end

end A107819.P10896725634448931878

/-! ## A107819.P12804915031850780817

`abs(round(1/acot(n))-(p?[2*n+1]-1))`
-/

namespace A107819.P12804915031850780817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) - ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1)|

end

end A107819.P12804915031850780817

/-! ## A107819.P5253866244480507747

`(p?[2*n+1]-(n+1))^ceil(abs(sin(n)))`
-/

namespace A107819.P5253866244480507747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - (n + 1 : ℤ) : ℚ) ^ (⌈|Real.sin (n : ℝ)|⌉ : ℤ)

end

end A107819.P5253866244480507747

/-! ## A107819.P10212916420259283903

`or(1, p?[2*n+1])-(round(1/acot(n))+1)`
-/

namespace A107819.P10212916420259283903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℤ) - (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + 1)

end

end A107819.P10212916420259283903

/-! ## A107819.P17898153374730639379

`∏{p}[p?[2*n+1], #]-(round(1/acot(n))+1)`
-/

namespace A107819.P17898153374730639379
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) - (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + 1)

end

end A107819.P17898153374730639379

/-!
# A107820: a(1)=3, a(2)=5; thereafter a(n) = n+5.

The programs for A107820, the canonical program `A107820.P6855079049686137308` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107820 has offset 1).

The definition of A107820 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107820.P6855079049686137308

`1+a(n-1)` with `a(0)=3, a(1)=5, a(2)=8`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A107820

/-- `1+a(n-1)` -/
def P6855079049686137308.Spec : Prop :=
  ∀ n, (P6855079049686137308.a n : ℤ) = A107820 (n + 1)

theorem P6855079049686137308.correct : P6855079049686137308.Spec := by
  intro n
  simp only [A107820, Nat.add_sub_cancel]

end A107820

/-!
# A107821: Indices of primes occurring in A107801.

The programs for A107821, there is no canonical definition to state claims against.
-/

/-! ## A107821.P1229691949738442564

`A000720(A107801(n+1))`
-/

namespace A107821.P1229691949738442564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A107801 (n + 1)).toNat

end

end A107821.P1229691949738442564

/-! ## A107821.P2597036957502669087

`A003963(p?[A107801(n+1)])`
-/

namespace A107821.P2597036957502669087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107821.P2597036957502669087

/-! ## A107821.P15144094411125961291

`A049084(and(-1, A107801(n+1)))`
-/

namespace A107821.P15144094411125961291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (Int.land (-1) (A107801 (n + 1))).toNat

end

end A107821.P15144094411125961291

/-! ## A107821.P1027211910249694183

`A056239(and(-1, A107801(n+1)))`
-/

namespace A107821.P1027211910249694183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.land (-1) (A107801 (n + 1))).toNat

end

end A107821.P1027211910249694183

/-! ## A107821.P14595913309787362204

`A049084(lcm((-1)^n, A107801(n+1)))`
-/

namespace A107821.P14595913309787362204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (Int.lcm ((-1) ^ n) (A107801 (n + 1)))

end

end A107821.P14595913309787362204

/-! ## A107821.P340334377691120761

`A056239(A107801(n+1)%((n+1)*(n+3)²))`
-/

namespace A107821.P340334377691120761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.tmod (A107801 (n + 1)) ((n + 1) * (n + 3) ^ 2 : ℤ)).toNat

end

end A107821.P340334377691120761

/-! ## A107821.P7107641788255345871

`A003963(A107801(n+1))%A075818(n+1)`
-/

namespace A107821.P7107641788255345871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003963 (A107801 (n + 1)).toNat) (A075818 (n + 1))

end

end A107821.P7107641788255345871

/-! ## A107821.P17274275475708341560

`A003963(A107801(n+1)%A158443(n+1))`
-/

namespace A107821.P17274275475708341560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.tmod (A107801 (n + 1)) (A158443 (n + 1))).toNat

end

end A107821.P17274275475708341560

/-! ## A107821.P14271715793222458000

`A003963(2*A107801(n+1))`
-/

namespace A107821.P14271715793222458000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A107801 (n + 1)).toNat

end

end A107821.P14271715793222458000

/-!
# A107822: Indices of primes occurring in A107802.

The programs for A107822, there is no canonical definition to state claims against.
-/

/-! ## A107822.P7026663403710566015

`A000720(A107802(n+1))`
-/

namespace A107822.P7026663403710566015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A107802 (n + 1)).toNat

end

end A107822.P7026663403710566015

/-! ## A107822.P4310085667193138187

`A061395(A107802(n+1)²)`
-/

namespace A107822.P4310085667193138187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A107802 (n + 1) ^ 2).toNat

end

end A107822.P4310085667193138187

/-! ## A107822.P6799022785614939533

`A003963(p?[A107802(n+1)])`
-/

namespace A107822.P6799022785614939533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107822.P6799022785614939533

/-! ## A107822.P1193768561768584699

`A026233(p?[A107802(n+1)])`
-/

namespace A107822.P1193768561768584699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107822.P1193768561768584699

/-! ## A107822.P1672468972609205392

`A026238(p?[A107802(n+1)])`
-/

namespace A107822.P1672468972609205392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107822.P1672468972609205392

/-! ## A107822.P3224719001580678243

`A049084(p?[A107802(n+1)])`
-/

namespace A107822.P3224719001580678243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107822.P3224719001580678243

/-! ## A107822.P14694833820967686561

`A055396(p?[A107802(n+1)])`
-/

namespace A107822.P14694833820967686561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107822.P14694833820967686561

/-! ## A107822.P18429017796425727676

`A065770(p?[A107802(n+1)])`
-/

namespace A107822.P18429017796425727676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107822.P18429017796425727676

/-! ## A107822.P14055524245104158313

`A230980(p?[A107802(n+1)])`
-/

namespace A107822.P14055524245104158313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107822.P14055524245104158313

/-! ## A107822.P16343564743630583925

`A003963(2*A107802(n+1))`
-/

namespace A107822.P16343564743630583925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A107802 (n + 1)).toNat

end

end A107822.P16343564743630583925

/-!
# A107823: Indices of primes occurring in A107803.

The programs for A107823, there is no canonical definition to state claims against.
-/

/-! ## A107823.P6281562045505927947

`A000720(A107803(n+1))`
-/

namespace A107823.P6281562045505927947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A107803 (n + 1)).toNat

end

end A107823.P6281562045505927947

/-! ## A107823.P10115725946071501165

`A061395(A107803(n+1)²)`
-/

namespace A107823.P10115725946071501165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A107803 (n + 1) ^ 2).toNat

end

end A107823.P10115725946071501165

/-! ## A107823.P12936804385090633432

`A003963(p?[A107803(n+1)])`
-/

namespace A107823.P12936804385090633432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107823.P12936804385090633432

/-! ## A107823.P3628278241585643920

`A026233(p?[A107803(n+1)])`
-/

namespace A107823.P3628278241585643920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107823.P3628278241585643920

/-! ## A107823.P11509999282103748380

`A026238(p?[A107803(n+1)])`
-/

namespace A107823.P11509999282103748380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107823.P11509999282103748380

/-! ## A107823.P9677344400948633406

`A049084(p?[A107803(n+1)])`
-/

namespace A107823.P9677344400948633406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107823.P9677344400948633406

/-! ## A107823.P10066881353834210327

`A003963(2*A107803(n+1))`
-/

namespace A107823.P10066881353834210327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A107803 (n + 1)).toNat

end

end A107823.P10066881353834210327

/-! ## A107823.P6533733755302698414

`A061395(2*A107803(n+1))`
-/

namespace A107823.P6533733755302698414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A107803 (n + 1)).toNat

end

end A107823.P6533733755302698414

/-! ## A107823.P14976902508296586569

`A003963(lcm(2, A107803(n+1)))`
-/

namespace A107823.P14976902508296586569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lcm 2 (A107803 (n + 1)))

end

end A107823.P14976902508296586569

/-! ## A107823.P1779979157741512493

`∑{d}[A107803(n+1), A049084(#)]`
-/

namespace A107823.P1779979157741512493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A049084 d

end

end A107823.P1779979157741512493

/-!
# A107824: Indices of primes occurring in A107804.

The programs for A107824, there is no canonical definition to state claims against.
-/

/-! ## A107824.P14964488554964767239

`A000720(A107804(n+1))`
-/

namespace A107824.P14964488554964767239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A107804 (n + 1)).toNat

end

end A107824.P14964488554964767239

/-! ## A107824.P8550167719633165395

`A061395(A107804(n+1)²)`
-/

namespace A107824.P8550167719633165395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A107804 (n + 1) ^ 2).toNat

end

end A107824.P8550167719633165395

/-! ## A107824.P4576904683461784868

`A003963(p?[A107804(n+1)])`
-/

namespace A107824.P4576904683461784868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107824.P4576904683461784868

/-! ## A107824.P17426234090224245337

`A026233(p?[A107804(n+1)])`
-/

namespace A107824.P17426234090224245337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107824.P17426234090224245337

/-! ## A107824.P13038232256608923486

`A026238(p?[A107804(n+1)])`
-/

namespace A107824.P13038232256608923486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107824.P13038232256608923486

/-! ## A107824.P10162523781151044757

`A049084(p?[A107804(n+1)])`
-/

namespace A107824.P10162523781151044757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107824.P10162523781151044757

/-! ## A107824.P14721867127311179807

`A055396(p?[A107804(n+1)])`
-/

namespace A107824.P14721867127311179807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107824.P14721867127311179807

/-! ## A107824.P17284345826257563733

`A003963(2*A107804(n+1))`
-/

namespace A107824.P17284345826257563733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A107804 (n + 1)).toNat

end

end A107824.P17284345826257563733

/-! ## A107824.P12158571674493030739

`A061395(2*A107804(n+1))`
-/

namespace A107824.P12158571674493030739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A107804 (n + 1)).toNat

end

end A107824.P12158571674493030739

/-! ## A107824.P5382846392330339516

`A003963(lcm(2, A107804(n+1)))`
-/

namespace A107824.P5382846392330339516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lcm 2 (A107804 (n + 1)))

end

end A107824.P5382846392330339516

/-!
# A107825: Indices of primes occurring in A107805.

The programs for A107825, there is no canonical definition to state claims against.
-/

/-! ## A107825.P2960458210020400682

`A000720(A107805(n+1))`
-/

namespace A107825.P2960458210020400682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A107805 (n + 1)).toNat

end

end A107825.P2960458210020400682

/-! ## A107825.P12622077053315084637

`A061395(A107805(n+1)²)`
-/

namespace A107825.P12622077053315084637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A107805 (n + 1) ^ 2).toNat

end

end A107825.P12622077053315084637

/-! ## A107825.P18170707310352784584

`A003963(p?[A107805(n+1)])`
-/

namespace A107825.P18170707310352784584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107825.P18170707310352784584

/-! ## A107825.P3915578527950850

`A026233(p?[A107805(n+1)])`
-/

namespace A107825.P3915578527950850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107825.P3915578527950850

/-! ## A107825.P16892648166223034162

`A026238(p?[A107805(n+1)])`
-/

namespace A107825.P16892648166223034162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107825.P16892648166223034162

/-! ## A107825.P139401551194587569

`A049084(p?[A107805(n+1)])`
-/

namespace A107825.P139401551194587569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107825.P139401551194587569

/-! ## A107825.P16896365153083189241

`A055396(p?[A107805(n+1)])`
-/

namespace A107825.P16896365153083189241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107825.P16896365153083189241

/-! ## A107825.P11459688658362432920

`A003963(2*A107805(n+1))`
-/

namespace A107825.P11459688658362432920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A107805 (n + 1)).toNat

end

end A107825.P11459688658362432920

/-! ## A107825.P214294570244348794

`A061395(2*A107805(n+1))`
-/

namespace A107825.P214294570244348794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A107805 (n + 1)).toNat

end

end A107825.P214294570244348794

/-! ## A107825.P11757463946113136850

`A003963(lcm(2, A107805(n+1)))`
-/

namespace A107825.P11757463946113136850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lcm 2 (A107805 (n + 1)))

end

end A107825.P11757463946113136850

/-!
# A107826: Indices of primes occurring in A107806.

The programs for A107826, there is no canonical definition to state claims against.
-/

/-! ## A107826.P13994464923756194926

`A000720(A107806(n+1))`
-/

namespace A107826.P13994464923756194926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A107806 (n + 1)).toNat

end

end A107826.P13994464923756194926

/-! ## A107826.P13310078687455256557

`A061395(A107806(n+1)²)`
-/

namespace A107826.P13310078687455256557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A107806 (n + 1) ^ 2).toNat

end

end A107826.P13310078687455256557

/-! ## A107826.P8027048915183013954

`A003963(p?[A107806(n+1)])`
-/

namespace A107826.P8027048915183013954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107826.P8027048915183013954

/-! ## A107826.P5467770067739990454

`A026233(p?[A107806(n+1)])`
-/

namespace A107826.P5467770067739990454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107826.P5467770067739990454

/-! ## A107826.P6735131449151236998

`A026238(p?[A107806(n+1)])`
-/

namespace A107826.P6735131449151236998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107826.P6735131449151236998

/-! ## A107826.P15204819992030646501

`A049084(p?[A107806(n+1)])`
-/

namespace A107826.P15204819992030646501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107826.P15204819992030646501

/-! ## A107826.P5968768458668199506

`A055396(p?[A107806(n+1)])`
-/

namespace A107826.P5968768458668199506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107826.P5968768458668199506

/-! ## A107826.P2477538269222852587

`A003963(2*A107806(n+1))`
-/

namespace A107826.P2477538269222852587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A107806 (n + 1)).toNat

end

end A107826.P2477538269222852587

/-! ## A107826.P6890214862997989032

`A061395(2*A107806(n+1))`
-/

namespace A107826.P6890214862997989032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A107806 (n + 1)).toNat

end

end A107826.P6890214862997989032

/-! ## A107826.P3498737751990721614

`A003963(lcm(2, A107806(n+1)))`
-/

namespace A107826.P3498737751990721614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lcm 2 (A107806 (n + 1)))

end

end A107826.P3498737751990721614

/-!
# A107827: Indices of primes occurring in A107807.

The programs for A107827, there is no canonical definition to state claims against.
-/

/-! ## A107827.P10211696305265781064

`A000720(A107807(n+1))`
-/

namespace A107827.P10211696305265781064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A107807 (n + 1)).toNat

end

end A107827.P10211696305265781064

/-! ## A107827.P16543113241361743450

`A061395(A107807(n+1)²)`
-/

namespace A107827.P16543113241361743450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A107807 (n + 1) ^ 2).toNat

end

end A107827.P16543113241361743450

/-! ## A107827.P6049647590643484269

`A003963(p?[A107807(n+1)])`
-/

namespace A107827.P6049647590643484269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107827.P6049647590643484269

/-! ## A107827.P13825447312073481531

`A026233(p?[A107807(n+1)])`
-/

namespace A107827.P13825447312073481531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107827.P13825447312073481531

/-! ## A107827.P12398934656838951784

`A026238(p?[A107807(n+1)])`
-/

namespace A107827.P12398934656838951784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107827.P12398934656838951784

/-! ## A107827.P12637901725612162967

`A049084(p?[A107807(n+1)])`
-/

namespace A107827.P12637901725612162967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107827.P12637901725612162967

/-! ## A107827.P9872803059491954782

`A324733(p?[A107807(n+1)])`
-/

namespace A107827.P9872803059491954782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324733 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107827.P9872803059491954782

/-! ## A107827.P5655704167690998787

`A003963(2*A107807(n+1))`
-/

namespace A107827.P5655704167690998787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A107807 (n + 1)).toNat

end

end A107827.P5655704167690998787

/-! ## A107827.P271344953947227673

`A061395(2*A107807(n+1))`
-/

namespace A107827.P271344953947227673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A107807 (n + 1)).toNat

end

end A107827.P271344953947227673

/-! ## A107827.P4954358816399066189

`A003963(∏{d}[A107807(n+1), #])`
-/

namespace A107827.P4954358816399066189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A107827.P4954358816399066189

/-!
# A107828: Indices of primes occurring in A107808.

The programs for A107828, there is no canonical definition to state claims against.
-/

/-! ## A107828.P18359047404774596841

`A000720(A107808(n+1))`
-/

namespace A107828.P18359047404774596841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A107808 (n + 1)).toNat

end

end A107828.P18359047404774596841

/-! ## A107828.P14877125022458112812

`A061395(A107808(n+1)²)`
-/

namespace A107828.P14877125022458112812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A107808 (n + 1) ^ 2).toNat

end

end A107828.P14877125022458112812

/-! ## A107828.P15545524837445856456

`A003963(p?[A107808(n+1)])`
-/

namespace A107828.P15545524837445856456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107828.P15545524837445856456

/-! ## A107828.P6590955213022169862

`A026233(p?[A107808(n+1)])`
-/

namespace A107828.P6590955213022169862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107828.P6590955213022169862

/-! ## A107828.P15853986926056153375

`A026238(p?[A107808(n+1)])`
-/

namespace A107828.P15853986926056153375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107828.P15853986926056153375

/-! ## A107828.P9443508371890134337

`A003963(2*A107808(n+1))`
-/

namespace A107828.P9443508371890134337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A107808 (n + 1)).toNat

end

end A107828.P9443508371890134337

/-! ## A107828.P4406250442177263941

`A061395(2*A107808(n+1))`
-/

namespace A107828.P4406250442177263941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A107808 (n + 1)).toNat

end

end A107828.P4406250442177263941

/-! ## A107828.P16226484809852195117

`A003963(lcm(2, A107808(n+1)))`
-/

namespace A107828.P16226484809852195117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lcm 2 (A107808 (n + 1)))

end

end A107828.P16226484809852195117

/-! ## A107828.P14836709933729348042

`A003963(∏{d}[A107808(n+1), #])`
-/

namespace A107828.P14836709933729348042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A107828.P14836709933729348042

/-! ## A107828.P8808456139993156361

`A026233(∏{d}[A107808(n+1), #])`
-/

namespace A107828.P8808456139993156361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A107828.P8808456139993156361

/-!
# A107829: Indices of primes occurring in A107809.

The programs for A107829, there is no canonical definition to state claims against.
-/

/-! ## A107829.P8668167586253446126

`A000720(A107809(n+1))`
-/

namespace A107829.P8668167586253446126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A107809 (n + 1)).toNat

end

end A107829.P8668167586253446126

/-! ## A107829.P18042894598291144682

`A061395(A107809(n+1)²)`
-/

namespace A107829.P18042894598291144682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A107809 (n + 1) ^ 2).toNat

end

end A107829.P18042894598291144682

/-! ## A107829.P15657496180783179660

`A003963(p?[A107809(n+1)])`
-/

namespace A107829.P15657496180783179660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107829.P15657496180783179660

/-! ## A107829.P8663542067438753262

`A026233(p?[A107809(n+1)])`
-/

namespace A107829.P8663542067438753262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107829.P8663542067438753262

/-! ## A107829.P14538100577947528251

`A026238(p?[A107809(n+1)])`
-/

namespace A107829.P14538100577947528251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107829.P14538100577947528251

/-! ## A107829.P4355378267179562361

`A049084(p?[A107809(n+1)])`
-/

namespace A107829.P4355378267179562361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107829.P4355378267179562361

/-! ## A107829.P9578144622992769371

`A055396(p?[A107809(n+1)])`
-/

namespace A107829.P9578144622992769371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107829.P9578144622992769371

/-! ## A107829.P4993015512206731790

`A003963(2*A107809(n+1))`
-/

namespace A107829.P4993015512206731790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A107809 (n + 1)).toNat

end

end A107829.P4993015512206731790

/-! ## A107829.P6142947673956426611

`A061395(2*A107809(n+1))`
-/

namespace A107829.P6142947673956426611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A107809 (n + 1)).toNat

end

end A107829.P6142947673956426611

/-! ## A107829.P2621921493263656122

`A003963(lcm(2, A107809(n+1)))`
-/

namespace A107829.P2621921493263656122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lcm 2 (A107809 (n + 1)))

end

end A107829.P2621921493263656122

/-!
# A107830: Indices of primes occurring in A107810.

The programs for A107830, there is no canonical definition to state claims against.
-/

/-! ## A107830.P5037280245865371250

`A000720(A107810(n+1))`
-/

namespace A107830.P5037280245865371250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A107810 (n + 1)).toNat

end

end A107830.P5037280245865371250

/-! ## A107830.P7039581957229496918

`A061395(A107810(n+1)²)`
-/

namespace A107830.P7039581957229496918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A107810 (n + 1) ^ 2).toNat

end

end A107830.P7039581957229496918

/-! ## A107830.P8877540351046019618

`A003963(p?[A107810(n+1)])`
-/

namespace A107830.P8877540351046019618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107830.P8877540351046019618

/-! ## A107830.P11194314119437251172

`A026233(p?[A107810(n+1)])`
-/

namespace A107830.P11194314119437251172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107830.P11194314119437251172

/-! ## A107830.P17934284641149705383

`A026238(p?[A107810(n+1)])`
-/

namespace A107830.P17934284641149705383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107830.P17934284641149705383

/-! ## A107830.P8887124263180125416

`A049084(p?[A107810(n+1)])`
-/

namespace A107830.P8887124263180125416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107830.P8887124263180125416

/-! ## A107830.P10994764013775322855

`A055396(p?[A107810(n+1)])`
-/

namespace A107830.P10994764013775322855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107830.P10994764013775322855

/-! ## A107830.P3069858567390396806

`A056239(p?[A107810(n+1)])`
-/

namespace A107830.P3069858567390396806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107830.P3069858567390396806

/-! ## A107830.P10973907102110757357

`A061395(p?[A107810(n+1)])`
-/

namespace A107830.P10973907102110757357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107830.P10973907102110757357

/-! ## A107830.P15554998287160930171

`A036234(A107810(n+1)-1)`
-/

namespace A107830.P15554998287160930171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A107810 (n + 1) - 1).toNat

end

end A107830.P15554998287160930171

/-!
# A107831: Indices of primes occurring in A107811.

The programs for A107831, there is no canonical definition to state claims against.
-/

/-! ## A107831.P14900411540112845034

`A000720(A107811(n+1))`
-/

namespace A107831.P14900411540112845034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A107811 (n + 1)).toNat

end

end A107831.P14900411540112845034

/-! ## A107831.P3702499687895368365

`A061395(A107811(n+1)²)`
-/

namespace A107831.P3702499687895368365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A107811 (n + 1) ^ 2).toNat

end

end A107831.P3702499687895368365

/-! ## A107831.P3870290328640362536

`A003963(p?[A107811(n+1)])`
-/

namespace A107831.P3870290328640362536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107831.P3870290328640362536

/-! ## A107831.P18278502450725630365

`A026233(p?[A107811(n+1)])`
-/

namespace A107831.P18278502450725630365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107831.P18278502450725630365

/-! ## A107831.P4631668422038983834

`A026238(p?[A107811(n+1)])`
-/

namespace A107831.P4631668422038983834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107831.P4631668422038983834

/-! ## A107831.P9013507991711669591

`A049084(p?[A107811(n+1)])`
-/

namespace A107831.P9013507991711669591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107831.P9013507991711669591

/-! ## A107831.P103333533709092770

`A065770(p?[A107811(n+1)])`
-/

namespace A107831.P103333533709092770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107831.P103333533709092770

/-! ## A107831.P4761756977100118741

`A036234(A107811(n+1)-1)`
-/

namespace A107831.P4761756977100118741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A107811 (n + 1) - 1).toNat

end

end A107831.P4761756977100118741

/-! ## A107831.P14671192305432329224

`A003963(2*A107811(n+1))`
-/

namespace A107831.P14671192305432329224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A107811 (n + 1)).toNat

end

end A107831.P14671192305432329224

/-! ## A107831.P13048071292115462410

`A061395(2*A107811(n+1))`
-/

namespace A107831.P13048071292115462410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A107811 (n + 1)).toNat

end

end A107831.P13048071292115462410

/-!
# A107832: Indices of primes occurring in A107812.

The programs for A107832, there is no canonical definition to state claims against.
-/

/-! ## A107832.P366227289092372046

`A000720(A107812(n+1))`
-/

namespace A107832.P366227289092372046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A107812 (n + 1)).toNat

end

end A107832.P366227289092372046

/-! ## A107832.P12050006286985423048

`A061395(A107812(n+1)²)`
-/

namespace A107832.P12050006286985423048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A107812 (n + 1) ^ 2).toNat

end

end A107832.P12050006286985423048

/-! ## A107832.P14087291993235762230

`A003963(p?[A107812(n+1)])`
-/

namespace A107832.P14087291993235762230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107832.P14087291993235762230

/-! ## A107832.P13749978745296282178

`A026233(p?[A107812(n+1)])`
-/

namespace A107832.P13749978745296282178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107832.P13749978745296282178

/-! ## A107832.P16293666720119685798

`A026238(p?[A107812(n+1)])`
-/

namespace A107832.P16293666720119685798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107832.P16293666720119685798

/-! ## A107832.P11848117580044902316

`A049084(p?[A107812(n+1)])`
-/

namespace A107832.P11848117580044902316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107832.P11848117580044902316

/-! ## A107832.P1634782867185861472

`A055396(p?[A107812(n+1)])`
-/

namespace A107832.P1634782867185861472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107832.P1634782867185861472

/-! ## A107832.P13193590567460749015

`A056239(p?[A107812(n+1)])`
-/

namespace A107832.P13193590567460749015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107832.P13193590567460749015

/-! ## A107832.P7276476923745623957

`A061395(p?[A107812(n+1)])`
-/

namespace A107832.P7276476923745623957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107832.P7276476923745623957

/-! ## A107832.P7102637808502096424

`A230980(p?[A107812(n+1)])`
-/

namespace A107832.P7102637808502096424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107832.P7102637808502096424

/-!
# A107833: Indices of primes occurring in A107813.

The programs for A107833, there is no canonical definition to state claims against.
-/

/-! ## A107833.P14103952127419337589

`A000720(A107813(n+1))`
-/

namespace A107833.P14103952127419337589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A107813 (n + 1)).toNat

end

end A107833.P14103952127419337589

/-! ## A107833.P7846985467904685331

`A061395(A107813(n+1)²)`
-/

namespace A107833.P7846985467904685331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A107813 (n + 1) ^ 2).toNat

end

end A107833.P7846985467904685331

/-! ## A107833.P755167769369538342

`A003963(p?[A107813(n+1)])`
-/

namespace A107833.P755167769369538342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107833.P755167769369538342

/-! ## A107833.P13054608035480379520

`A026233(p?[A107813(n+1)])`
-/

namespace A107833.P13054608035480379520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107833.P13054608035480379520

/-! ## A107833.P580615908383237703

`A026238(p?[A107813(n+1)])`
-/

namespace A107833.P580615908383237703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107833.P580615908383237703

/-! ## A107833.P12675845094576239169

`A049084(p?[A107813(n+1)])`
-/

namespace A107833.P12675845094576239169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107833.P12675845094576239169

/-! ## A107833.P17720376207333174396

`A003963(2*A107813(n+1))`
-/

namespace A107833.P17720376207333174396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A107813 (n + 1)).toNat

end

end A107833.P17720376207333174396

/-! ## A107833.P17799525208574048979

`A061395(2*A107813(n+1))`
-/

namespace A107833.P17799525208574048979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A107813 (n + 1)).toNat

end

end A107833.P17799525208574048979

/-! ## A107833.P8329478680815985402

`A003963(lcm(2, A107813(n+1)))`
-/

namespace A107833.P8329478680815985402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lcm 2 (A107813 (n + 1)))

end

end A107833.P8329478680815985402

/-! ## A107833.P17968232762218475275

`∑{d}[A107813(n+1), A049084(#)]`
-/

namespace A107833.P17968232762218475275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A049084 d

end

end A107833.P17968232762218475275

/-!
# A107834: Indices of primes occurring in A107814.

The programs for A107834, there is no canonical definition to state claims against.
-/

/-! ## A107834.P2955805895858435380

`A000720(A107814(n+1))`
-/

namespace A107834.P2955805895858435380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A107814 (n + 1)).toNat

end

end A107834.P2955805895858435380

/-! ## A107834.P10728297722458482249

`A061395(A107814(n+1)²)`
-/

namespace A107834.P10728297722458482249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A107814 (n + 1) ^ 2).toNat

end

end A107834.P10728297722458482249

/-! ## A107834.P14737964993146553726

`A374200(A107814(n+1)²)`
-/

namespace A107834.P14737964993146553726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374200 (A107814 (n + 1) ^ 2).toNat

end

end A107834.P14737964993146553726

/-! ## A107834.P1618559982901294537

`A003963(p?[A107814(n+1)])`
-/

namespace A107834.P1618559982901294537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107834.P1618559982901294537

/-! ## A107834.P7465900259706944068

`A026233(p?[A107814(n+1)])`
-/

namespace A107834.P7465900259706944068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107834.P7465900259706944068

/-! ## A107834.P12670304200444787738

`A026238(p?[A107814(n+1)])`
-/

namespace A107834.P12670304200444787738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107834.P12670304200444787738

/-! ## A107834.P12563118129878750651

`A049084(p?[A107814(n+1)])`
-/

namespace A107834.P12563118129878750651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107834.P12563118129878750651

/-! ## A107834.P10856720412369273116

`A055396(p?[A107814(n+1)])`
-/

namespace A107834.P10856720412369273116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107834.P10856720412369273116

/-! ## A107834.P10187072107804666957

`A003963(2*A107814(n+1))`
-/

namespace A107834.P10187072107804666957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A107814 (n + 1)).toNat

end

end A107834.P10187072107804666957

/-! ## A107834.P3454672136268912522

`A061395(2*A107814(n+1))`
-/

namespace A107834.P3454672136268912522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A107814 (n + 1)).toNat

end

end A107834.P3454672136268912522

/-!
# A107835: Slowest increasing sequence where a(n)-(first digit of a(n)) is prime.

The programs for A107835, there is no canonical definition to state claims against.
-/

/-! ## A107835.P10391497145169097332

`eq[1, A003415(n-A000030(n))]`
-/

namespace A107835.P10391497145169097332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 ((n : ℤ) - A000030 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107835.P10391497145169097332

/-! ## A107835.P9508893448942742416

`eq[1, A032741(n-A000030(n))]`
-/

namespace A107835.P9508893448942742416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 ((n : ℤ) - A000030 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107835.P9508893448942742416

/-! ## A107835.P2039938502799800899

`eq[1, A107286(n-A000030(n))]`
-/

namespace A107835.P2039938502799800899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 ((n : ℤ) - A000030 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107835.P2039938502799800899

/-! ## A107835.P232553607921059406

`eq[2, A322366(n-A000030(n))]`
-/

namespace A107835.P232553607921059406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322366 ((n : ℤ) - A000030 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107835.P232553607921059406

/-! ## A107835.P9242538107244111797

`eq[2, A327987(n-A000030(n))]`
-/

namespace A107835.P9242538107244111797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327987 ((n : ℤ) - A000030 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107835.P9242538107244111797

/-!
# A107836: Slowest increasing sequence where a(n)+(first digit of a(n)) is prime.

The programs for A107836, the canonical program `A107836.P6158526147254269933` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107836 has offset 1).

The definition of A107836 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1227 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107836.P11233329139323886577

`eq[2, A077462(A182324(n))]`
-/

namespace A107836.P11233329139323886577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A182324 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107836.P11233329139323886577

namespace A107836

/-- `eq[2, A077462(A182324(n))]` -/
def P11233329139323886577.Spec : Prop :=
  ∀ n, (P11233329139323886577.a n : ℤ) = A107836 (n + 1)

end A107836

/-! ## A107836.P14855565041412032326

`eq[1, A107286(A000030(n)+n)]`
-/

namespace A107836.P14855565041412032326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A000030 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107836.P14855565041412032326

namespace A107836

/-- `eq[1, A107286(A000030(n)+n)]` -/
def P14855565041412032326.Spec : Prop :=
  ∀ n, (P14855565041412032326.a n : ℤ) = A107836 (n + 1)

end A107836

/-! ## A107836.P9218850537856453259

`eq[1, A001222(A000030(n+1)+n+1)]+1`
-/

namespace A107836.P9218850537856453259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000030 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A107836.P9218850537856453259

namespace A107836

/-- `eq[1, A001222(A000030(n+1)+n+1)]+1` -/
def P9218850537856453259.Spec : Prop :=
  ∀ n, (P9218850537856453259.a n : ℤ) = A107836 (n + 1)

end A107836

/-! ## A107836.P87358340699750724

`eq[2, A000005(A000030(n+1)+n+1)]+1`
-/

namespace A107836.P87358340699750724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000030 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A107836.P87358340699750724

namespace A107836

/-- `eq[2, A000005(A000030(n+1)+n+1)]+1` -/
def P87358340699750724.Spec : Prop :=
  ∀ n, (P87358340699750724.a n : ℤ) = A107836 (n + 1)

end A107836

/-! ## A107836.P10077959584901863425

`eq[2, A000005(A028310(n)+A000030(n))]`
-/

namespace A107836.P10077959584901863425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n + A000030 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107836.P10077959584901863425

namespace A107836

/-- `eq[2, A000005(A028310(n)+A000030(n))]` -/
def P10077959584901863425.Spec : Prop :=
  ∀ n, (P10077959584901863425.a n : ℤ) = A107836 (n + 1)

end A107836

/-! ## A107836.P13721805961467297186

`eq[1, A003415(A000030(n)+n)]`
-/

namespace A107836.P13721805961467297186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000030 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107836.P13721805961467297186

namespace A107836

/-- `eq[1, A003415(A000030(n)+n)]` -/
def P13721805961467297186.Spec : Prop :=
  ∀ n, (P13721805961467297186.a n : ℤ) = A107836 (n + 1)

end A107836

/-! ## A107836.P6158526147254269933

`eq[1, A032741(A000030(n)+n)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A107836

/-- `eq[1, A032741(A000030(n)+n)]` -/
def P6158526147254269933.Spec : Prop :=
  ∀ n, (P6158526147254269933.a n : ℤ) = A107836 (n + 1)

theorem P6158526147254269933.correct : P6158526147254269933.Spec := by
  intro n
  simp only [A107836, Nat.add_sub_cancel]

end A107836

/-! ## A107836.P8600692161290190502

`eq[2, A322366(A000030(n)+n)]`
-/

namespace A107836.P8600692161290190502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322366 (A000030 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107836.P8600692161290190502

namespace A107836

/-- `eq[2, A322366(A000030(n)+n)]` -/
def P8600692161290190502.Spec : Prop :=
  ∀ n, (P8600692161290190502.a n : ℤ) = A107836 (n + 1)

end A107836

/-! ## A107836.P292462899181445145

`eq[2, A105560(A000030(n+1)+n+1)]+1`
-/

namespace A107836.P292462899181445145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105560 (A000030 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A107836.P292462899181445145

namespace A107836

/-- `eq[2, A105560(A000030(n+1)+n+1)]+1` -/
def P292462899181445145.Spec : Prop :=
  ∀ n, (P292462899181445145.a n : ℤ) = A107836 (n + 1)

end A107836

/-!
# A107838: Leftmost digit of a(n) represents the number of odd digits in a(n); rightmost digit of a(n) represents the number of even digits in a(n).

The programs for A107838, there is no canonical definition to state claims against.
-/

/-! ## A107838.P7314230901595522083

`eq[A020639(A052905(n)), A169669(n)]`
-/

namespace A107838.P7314230901595522083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A052905 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169669 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107838.P7314230901595522083

/-! ## A107838.P11539805677657310930

`eq[A020639(A155212(n+1)), A169669(n)]`
-/

namespace A107838.P11539805677657310930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A155212 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169669 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107838.P11539805677657310930

/-!
# A107839: a(n) = 5*a(n-1) - 2*a(n-2); a(0)=1, a(1)=5.

The programs for A107839, the canonical program `A107839.P12919634097150429934` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107839 has offset 0).

The definition of A107839 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)-2*a(n-2)` (program `A107839.P12919634097150429934`, by `A107839.P12919634097150429934.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107839.P12919634097150429934

`5*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A107839

/-- `5*a(n-1)-2*a(n-2)` -/
def P12919634097150429934.Spec : Prop :=
  ∀ n, P12919634097150429934.a n = A107839 n

theorem P12919634097150429934.correct : P12919634097150429934.Spec := by
  intro n
  simp only [A107839]

end A107839

/-! ## A107839.P7801624293548673574

`ogf(1/(1-5x+2x^2))`
-/

namespace A107839.P7801624293548673574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -5, 2] n

end

end A107839.P7801624293548673574

namespace A107839

/-- `ogf(1/(1-5x+2x^2))` -/
def P7801624293548673574.Spec : Prop :=
  ∀ n, P7801624293548673574.a n = A107839 n

end A107839

/-! ## A107839.P2882502618466490801

`∑[A052913(n)]`
-/

namespace A107839.P2882502618466490801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107839.P2882502618466490801

namespace A107839

/-- `∑[A052913(n)]` -/
def P2882502618466490801.Spec : Prop :=
  ∀ n, P2882502618466490801.a n = A107839 n

end A107839

/-! ## A107839.P2209385476466004617

`A109165(2*n)`
-/

namespace A107839.P2209385476466004617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109165 (2 * n)

end

end A107839.P2209385476466004617

namespace A107839

/-- `A109165(2*n)` -/
def P2209385476466004617.Spec : Prop :=
  ∀ n, P2209385476466004617.a n = A107839 n

end A107839

/-! ## A107839.P5892005327664539667

`A384611(2*n)`
-/

namespace A107839.P5892005327664539667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384611 (2 * n)

end

end A107839.P5892005327664539667

namespace A107839

/-- `A384611(2*n)` -/
def P5892005327664539667.Spec : Prop :=
  ∀ n, P5892005327664539667.a n = A107839 n

end A107839

/-! ## A107839.P7171433885001262497

`∑[∑[A060801(n)]]`
-/

namespace A107839.P7171433885001262497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060801 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107839.P7171433885001262497

namespace A107839

/-- `∑[∑[A060801(n)]]` -/
def P7171433885001262497.Spec : Prop :=
  ∀ n, P7171433885001262497.a n = A107839 n

end A107839

/-! ## A107839.P3948822229755041265

`Δ[A052984(n)/2]`
-/

namespace A107839.P3948822229755041265
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052984 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107839.P3948822229755041265

namespace A107839

/-- `Δ[A052984(n)/2]` -/
def P3948822229755041265.Spec : Prop :=
  ∀ n, P3948822229755041265.a n = (A107839 n : ℚ)

end A107839

/-! ## A107839.P17008972993075551460

`A005824(2*(n+1))`
-/

namespace A107839.P17008972993075551460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005824 (2 * (n + 1))

end

end A107839.P17008972993075551460

namespace A107839

/-- `A005824(2*(n+1))` -/
def P17008972993075551460.Spec : Prop :=
  ∀ n, P17008972993075551460.a n = A107839 n

end A107839

/-! ## A107839.P18258694260796430569

`A204091(n+1)/2`
-/

namespace A107839.P18258694260796430569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204091 (n + 1) : ℚ) / 2

end

end A107839.P18258694260796430569

namespace A107839

/-- `A204091(n+1)/2` -/
def P18258694260796430569.Spec : Prop :=
  ∀ n, P18258694260796430569.a n = (A107839 n : ℚ)

end A107839

/-! ## A107839.P14896826461134916114

`A249581(4*(n+1))`
-/

namespace A107839.P14896826461134916114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249581 (4 * (n + 1))

end

end A107839.P14896826461134916114

namespace A107839

/-- `A249581(4*(n+1))` -/
def P14896826461134916114.Spec : Prop :=
  ∀ n, P14896826461134916114.a n = A107839 n

end A107839

/-! ## A107839.P13637796620699563102

`A109165(Δ[n²])/2`
-/

namespace A107839.P13637796620699563102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109165 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A107839.P13637796620699563102

namespace A107839

/-- `A109165(Δ[n²])/2` -/
def P13637796620699563102.Spec : Prop :=
  ∀ n, P13637796620699563102.a n = (A107839 n : ℚ)

end A107839

/-! ## A107839.P3185522085669954771

`∑[A079162(2*n+1)]`
-/

namespace A107839.P3185522085669954771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079162 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107839.P3185522085669954771

namespace A107839

/-- `∑[A079162(2*n+1)]` -/
def P3185522085669954771.Spec : Prop :=
  ∀ n, P3185522085669954771.a n = A107839 n

end A107839

/-! ## A107839.P9964600371601931216

`∑[A147722(n+1)/2]`
-/

namespace A107839.P9964600371601931216
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147722 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107839.P9964600371601931216

namespace A107839

/-- `∑[A147722(n+1)/2]` -/
def P9964600371601931216.Spec : Prop :=
  ∀ n, P9964600371601931216.a n = (A107839 n : ℚ)

end A107839

/-! ## A107839.P2317714980932806108

`A079162(2*(n+1))/2`
-/

namespace A107839.P2317714980932806108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079162 (2 * (n + 1)) : ℚ) / 2

end

end A107839.P2317714980932806108

namespace A107839

/-- `A079162(2*(n+1))/2` -/
def P2317714980932806108.Spec : Prop :=
  ∀ n, P2317714980932806108.a n = (A107839 n : ℚ)

end A107839

/-! ## A107839.P7339281703080610015

`Δ[abs(A152594(n+1)/2)]`
-/

namespace A107839.P7339281703080610015
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A152594 (n + 1) : ℚ) / 2|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107839.P7339281703080610015

namespace A107839

/-- `Δ[abs(A152594(n+1)/2)]` -/
def P7339281703080610015.Spec : Prop :=
  ∀ n, P7339281703080610015.a n = (A107839 n : ℚ)

end A107839

/-! ## A107839.P13227389315364939815

`A020698(n)-A052913(n)`
-/

namespace A107839.P13227389315364939815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020698 n - A052913 n

end

end A107839.P13227389315364939815

namespace A107839

/-- `A020698(n)-A052913(n)` -/
def P13227389315364939815.Spec : Prop :=
  ∀ n, P13227389315364939815.a n = A107839 n

end A107839

/-! ## A107839.P13890030810326297907

`A052984(n)-A106709(n)`
-/

namespace A107839.P13890030810326297907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052984 n - A106709 n

end

end A107839.P13890030810326297907

namespace A107839

/-- `A052984(n)-A106709(n)` -/
def P13890030810326297907.Spec : Prop :=
  ∀ n, P13890030810326297907.a n = A107839 n

end A107839

/-! ## A107839.P4398356943093582387

`A147722(n+1)-A052984(n)`
-/

namespace A107839.P4398356943093582387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147722 (n + 1) - A052984 n

end

end A107839.P4398356943093582387

namespace A107839

/-- `A147722(n+1)-A052984(n)` -/
def P4398356943093582387.Spec : Prop :=
  ∀ n, P4398356943093582387.a n = A107839 n

end A107839

/-! ## A107839.P15198996719410664224

`A079162(2*n)+A052984(n)`
-/

namespace A107839.P15198996719410664224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079162 (2 * n) + A052984 n

end

end A107839.P15198996719410664224

namespace A107839

/-- `A079162(2*n)+A052984(n)` -/
def P15198996719410664224.Spec : Prop :=
  ∀ n, P15198996719410664224.a n = A107839 n

end A107839

/-! ## A107839.P10127247152336130804

`2*A052913(n)-A052984(n)`
-/

namespace A107839.P10127247152336130804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052913 n - A052984 n

end

end A107839.P10127247152336130804

namespace A107839

/-- `2*A052913(n)-A052984(n)` -/
def P10127247152336130804.Spec : Prop :=
  ∀ n, P10127247152336130804.a n = A107839 n

end A107839

/-!
# A107840: a(n) = 3*a(n-1) - 3*a(n-3) + a(n-4), n>6.

The programs for A107840, the canonical program `A107840.P2678837348770826140` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107840 has offset 1).

The definition of A107840 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-3*a(n-3)+a(n-4)` (program `A107840.P2678837348770826140`, by `A107840.P2678837348770826140.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107840.P2678837348770826140

`3*a(n-1)-3*a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=0, a(4)=4, a(5)=8`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A107840

/-- `3*a(n-1)-3*a(n-3)+a(n-4)` -/
def P2678837348770826140.Spec : Prop :=
  ∀ n, P2678837348770826140.a n = A107840 (n + 1)

theorem P2678837348770826140.correct : P2678837348770826140.Spec := by
  intro n
  simp only [A107840, Nat.add_sub_cancel]

end A107840

/-! ## A107840.P15608283301309977735

`abs(∑[A295672(2*n+1)])`
-/

namespace A107840.P15608283301309977735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295672 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A107840.P15608283301309977735

namespace A107840

/-- `abs(∑[A295672(2*n+1)])` -/
def P15608283301309977735.Spec : Prop :=
  ∀ n, P15608283301309977735.a n = A107840 (n + 1)

end A107840

/-! ## A107840.P11234176750517345011

`(2-n)%2+A212804(n)²`
-/

namespace A107840.P11234176750517345011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 - (n : ℤ)) 2 + A212804 n ^ 2

end

end A107840.P11234176750517345011

namespace A107840

/-- `(2-n)%2+A212804(n)²` -/
def P11234176750517345011.Spec : Prop :=
  ∀ n, P11234176750517345011.a n = A107840 (n + 1)

end A107840

/-! ## A107840.P105707370812713407

`abs(a(n-1)-A293064(n))` with `a(0)=1`
-/

namespace A107840.P105707370812713407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1) - A293064 n|

end

end A107840.P105707370812713407

namespace A107840

/-- `abs(a(n-1)-A293064(n))` -/
def P105707370812713407.Spec : Prop :=
  ∀ n, P105707370812713407.a n = A107840 (n + 1)

end A107840

/-! ## A107840.P2974667404897210803

`abs(and(1, n)-Δ[A000045(n)]²)`
-/

namespace A107840.P2974667404897210803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.land 1 n : ℤ) - (f1 (n + 1) - f1 n) ^ 2|

end

end A107840.P2974667404897210803

namespace A107840

/-- `abs(and(1, n)-Δ[A000045(n)]²)` -/
def P2974667404897210803.Spec : Prop :=
  ∀ n, P2974667404897210803.a n = A107840 (n + 1)

end A107840

/-! ## A107840.P2979597055814601552

`abs(A000035(n)-Δ[A107387(n)])`
-/

namespace A107840.P2979597055814601552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107387 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000035 n - (f1 (n + 1) - f1 n)|

end

end A107840.P2979597055814601552

namespace A107840

/-- `abs(A000035(n)-Δ[A107387(n)])` -/
def P2979597055814601552.Spec : Prop :=
  ∀ n, P2979597055814601552.a n = A107840 (n + 1)

end A107840

/-! ## A107840.P5595928620363672078

`abs(Δ[A000045(n)]²-A000035(n))`
-/

namespace A107840.P5595928620363672078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) ^ 2 - A000035 n|

end

end A107840.P5595928620363672078

namespace A107840

/-- `abs(Δ[A000045(n)]²-A000035(n))` -/
def P5595928620363672078.Spec : Prop :=
  ∀ n, P5595928620363672078.a n = A107840 (n + 1)

end A107840

/-! ## A107840.P9738700658507992933

`abs(and(1, n)-(A000045(n)-A000045(n+1))²)`
-/

namespace A107840.P9738700658507992933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.land 1 n : ℤ) - (A000045 n - A000045 (n + 1)) ^ 2|

end

end A107840.P9738700658507992933

namespace A107840

/-- `abs(and(1, n)-(A000045(n)-A000045(n+1))²)` -/
def P9738700658507992933.Spec : Prop :=
  ∀ n, P9738700658507992933.a n = A107840 (n + 1)

end A107840

/-! ## A107840.P13035138265429727462

`abs(A038990(n)-A081714(n))`
-/

namespace A107840.P13035138265429727462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A038990 n - A081714 n|

end

end A107840.P13035138265429727462

namespace A107840

/-- `abs(A038990(n)-A081714(n))` -/
def P13035138265429727462.Spec : Prop :=
  ∀ n, P13035138265429727462.a n = A107840 (n + 1)

end A107840

/-!
# A107841: Series reversion of x*(1-3*x)/(1-x).

The programs for A107841, there is no canonical definition to state claims against.
-/

/-! ## A107841.P745110736130295329

`A036453(n+1)*A269730(A028310(n))`
-/

namespace A107841.P745110736130295329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A269730 (A028310 n).toNat

end

end A107841.P745110736130295329

/-! ## A107841.P12384647514091984286

`A125693(∑[4*n])/(n+1)`
-/

namespace A107841.P12384647514091984286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125693 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A107841.P12384647514091984286

/-! ## A107841.P6702624902298069694

`ceil(A125693(A046092(n))/(n+1))`
-/

namespace A107841.P6702624902298069694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A125693 (A046092 n).toNat : ℚ) / (n + 1 : ℚ)⌉

end

end A107841.P6702624902298069694

/-! ## A107841.P7565585113560374119

`A125693(A046092(n))/(n+1)*A033999(n)²`
-/

namespace A107841.P7565585113560374119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125693 (A046092 n).toNat : ℚ) / (n + 1 : ℚ) * (A033999 n ^ 2 : ℚ)

end

end A107841.P7565585113560374119

/-! ## A107841.P14548869288309653147

`A125693(A046092(n))/(n+1)*char[A002262(n)]`
-/

namespace A107841.P14548869288309653147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125693 (A046092 n).toNat : ℚ) / (n + 1 : ℚ) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ)

end

end A107841.P14548869288309653147

/-! ## A107841.P672162757480556911

`A125693(A046092(n))/(n+1)*A000041(C(2, n+2))`
-/

namespace A107841.P672162757480556911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125693 (A046092 n).toNat : ℚ) / (n + 1 : ℚ) * (A000041 (Nat.choose 2 (n + 2)) : ℚ)

end

end A107841.P672162757480556911

/-! ## A107841.P15555159233484220709

`A001057(2*n)+A125693(A046092(n))/(n+1)+n`
-/

namespace A107841.P15555159233484220709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001057 (2 * n) : ℚ) + ((A125693 (A046092 n).toNat : ℚ) / (n + 1 : ℚ) + (n : ℚ))

end

end A107841.P15555159233484220709

/-! ## A107841.P12548805787315401163

`A125693(A046092(n))/(n+1)*∏{e}[A014963(n+2), #]`
-/

namespace A107841.P12548805787315401163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125693 (A046092 n).toNat : ℚ) / (n + 1 : ℚ) * ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℚ)

end

end A107841.P12548805787315401163

/-! ## A107841.P16499027473888144574

`A125693(A046092(n))/(n+1)*A000108(A131364(n))`
-/

namespace A107841.P16499027473888144574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125693 (A046092 n).toNat : ℚ) / (n + 1 : ℚ) * (A000108 (A131364 n).toNat : ℚ)

end

end A107841.P16499027473888144574

/-!
# A107842: A number triangle of lattice walks.

The programs for A107842, there is no canonical definition to state claims against.
-/

/-! ## A107842.P3247108003362738836

`A109450(A099375(n)+1+n)`
-/

namespace A107842.P3247108003362738836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109450 (A099375 n + 1 + (n : ℤ)).toNat

end

end A107842.P3247108003362738836

/-! ## A107842.P5189878435121438821

`A109450(A212012(n+1)+n)`
-/

namespace A107842.P5189878435121438821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109450 (A212012 (n + 1) + (n : ℤ)).toNat

end

end A107842.P5189878435121438821

/-! ## A107842.P15042325842350908157

`A109450(A014132(A038722(n+1)))`
-/

namespace A107842.P15042325842350908157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109450 (A014132 (A038722 (n + 1)).toNat).toNat

end

end A107842.P15042325842350908157

/-! ## A107842.P2063355756563352283

`A109450(A114327(n)+A014132(n+1))`
-/

namespace A107842.P2063355756563352283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109450 (A114327 n + A014132 (n + 1)).toNat

end

end A107842.P2063355756563352283

/-! ## A107842.P7548992171022550709

`A109450(A061579(n)+A003057(n+2))`
-/

namespace A107842.P7548992171022550709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109450 (A061579 n + A003057 (n + 2)).toNat

end

end A107842.P7548992171022550709

/-!
# A107843: Number of iterations of McCarthy 91 Function until it terminates.

The programs for A107843, the canonical program `A107843.P5586849217326549260` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107843 has offset 1).

The definition of A107843 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107843.P5586849217326549260

`abs(2-a(n-1))` with `a(0)=201`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A107843

/-- `abs(2-a(n-1))` -/
def P5586849217326549260.Spec : Prop :=
  ∀ n, P5586849217326549260.a n = A107843 (n + 1)

theorem P5586849217326549260.correct : P5586849217326549260.Spec := by
  intro n
  simp only [A107843, Nat.add_sub_cancel]

end A107843

/-!
# A107846: Number of duplicate digits of n.

The programs for A107846, there is no canonical definition to state claims against.
-/

/-! ## A107846.P17090779456461310504

`A055642(n)-A043562(A057846(n))`
-/

namespace A107846.P17090779456461310504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n - A043562 (A057846 n).toNat

end

end A107846.P17090779456461310504

/-! ## A107846.P411138603975938183

`A055642(n)-A055642(A137564(n))`
-/

namespace A107846.P411138603975938183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n - A055642 (A137564 n).toNat

end

end A107846.P411138603975938183

/-! ## A107846.P5216511239325865329

`A055642(n)-A055642(A227362(n))`
-/

namespace A107846.P5216511239325865329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n - A055642 (A227362 n).toNat

end

end A107846.P5216511239325865329

/-! ## A107846.P2164990994621904427

`A228822(A227362(n))-A228822(n)`
-/

namespace A107846.P2164990994621904427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228822 (A227362 n).toNat - A228822 n

end

end A107846.P2164990994621904427

/-! ## A107846.P8389231539903786744

`∑{e}[∏{digits}[n, A000043(#+1)], #-1]`
-/

namespace A107846.P8389231539903786744
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A000043 (x + 1)).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - 1)

end

end A107846.P8389231539903786744

/-! ## A107846.P9520003083799555087

`∑{e}[∏{digits}[n, A086086(#+1)], #-1]`
-/

namespace A107846.P9520003083799555087
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A086086 (x + 1)).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - 1)

end

end A107846.P9520003083799555087

/-! ## A107846.P11237841983368769189

`A054899(A332550(n))%A247802(n+4)`
-/

namespace A107846.P11237841983368769189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054899 (A332550 n).toNat) (A247802 (n + 4))

end

end A107846.P11237841983368769189

/-! ## A107846.P4181587141174105041

`∑{e}[∏{digits}[n, A129809(#+1)], #-1]`
-/

namespace A107846.P4181587141174105041
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A129809 (x + 1)).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - 1)

end

end A107846.P4181587141174105041

/-! ## A107846.P7624464191603838125

`A054899(A332550(n)%A247800(2*(n+1)))`
-/

namespace A107846.P7624464191603838125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (Int.tmod (A332550 n) (A247800 (2 * (n + 1)))).toNat

end

end A107846.P7624464191603838125

/-! ## A107846.P6670658995171438992

`∏{e}[∏{digits}[n, A264783(#+1)], #]-1`
-/

namespace A107846.P6670658995171438992
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A264783 (x + 1)).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - 1

end

end A107846.P6670658995171438992

/-! ## A107846.P10630752551259155548

`∑{e}[∏{digits}[n, A086085(#+1)], #-1]`
-/

namespace A107846.P10630752551259155548
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A086085 (x + 1)).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - 1)

end

end A107846.P10630752551259155548

/-! ## A107846.P16332473333523174540

`and(1, A196368(n)+A088357(n))`
-/

namespace A107846.P16332473333523174540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A196368 n + A088357 n)

end

end A107846.P16332473333523174540

/-! ## A107846.P9864509779494013001

`A213241(A213217(n))%2`
-/

namespace A107846.P9864509779494013001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213241 (A213217 n).toNat) 2

end

end A107846.P9864509779494013001

/-! ## A107846.P6431787878545109301

`val(A020639(p?[9*n-2]*A139337(n)+2), 2)`
-/

namespace A107846.P6431787878545109301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n : ℤ) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A020639 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A139337 n + 2).toNat).toNat 2

end

end A107846.P6431787878545109301

/-!
# A107847: Related to sums of the n-th roots of unity: sums in a circular wedge (excluding the origin).

The programs for A107847, there is no canonical definition to state claims against.
-/

/-! ## A107847.P9036568486400379333

`(2^(n+1)-A103314(n+1))/(n+1)`
-/

namespace A107847.P9036568486400379333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 1) : ℤ) - A103314 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A107847.P9036568486400379333

/-! ## A107847.P7718450170656971624

`A001037(n+1)-A110981(n+1)`
-/

namespace A107847.P7718450170656971624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (n + 1) - A110981 (n + 1)

end

end A107847.P7718450170656971624

/-! ## A107847.P811572272936728432

`Δ[A173270(n)]-A110981(n+1)`
-/

namespace A107847.P811572272936728432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A110981 (n + 1)

end

end A107847.P811572272936728432

/-! ## A107847.P4648177523916534077

`A000031(n+1)-A164896(n+1)`
-/

namespace A107847.P4648177523916534077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (n + 1) - A164896 (n + 1)

end

end A107847.P4648177523916534077

/-! ## A107847.P717352507274647222

`A008965(n+1)+1-A164896(n+1)`
-/

namespace A107847.P717352507274647222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008965 (n + 1) + (1 - A164896 (n + 1))

end

end A107847.P717352507274647222

/-! ## A107847.P7076850226107312058

`A059966(n+1)-A110981(A233583(n+2))`
-/

namespace A107847.P7076850226107312058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (n + 1) - A110981 (A233583 (n + 2)).toNat

end

end A107847.P7076850226107312058

/-! ## A107847.P6753571073024611461

`A000013(n+1)+A000016(n+1)-A164896(n+1)`
-/

namespace A107847.P6753571073024611461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 (n + 1) + (A000016 (n + 1) - A164896 (n + 1))

end

end A107847.P6753571073024611461

/-! ## A107847.P6144310161238172028

`A001037(n+1)+A066656(n+1)-A164896(n+1)`
-/

namespace A107847.P6144310161238172028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (n + 1) + (A066656 (n + 1) - A164896 (n + 1))

end

end A107847.P6144310161238172028

/-! ## A107847.P12182650420416925544

`A123223(A000217(n+1))-A110981(n+1)`
-/

namespace A107847.P12182650420416925544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123223 (A000217 (n + 1)).toNat - A110981 (n + 1)

end

end A107847.P12182650420416925544

/-!
# A107848: Number of subsets of the n-th roots of unity summing to a real number.

The programs for A107848, there is no canonical definition to state claims against.
-/

/-! ## A107848.P17371557862379607006

`A000005(A000716(n)*A051920(n))`
-/

namespace A107848.P17371557862379607006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000716 n * A051920 n).toNat

end

end A107848.P17371557862379607006

/-! ## A107848.P12837593535856650295

`A028913(n)*A066012(A005728(n))`
-/

namespace A107848.P12837593535856650295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028913 n * A066012 (A005728 n).toNat

end

end A107848.P12837593535856650295

/-! ## A107848.P4735988088867499974

`A231208(n)*A309120(A081125(n))`
-/

namespace A107848.P4735988088867499974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231208 n * A309120 (A081125 n).toNat

end

end A107848.P4735988088867499974

/-! ## A107848.P4688989863514794064

`A265552(A328023(n+1)+A161974(n))`
-/

namespace A107848.P4688989863514794064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265552 (A328023 (n + 1) + A161974 n).toNat

end

end A107848.P4688989863514794064

/-! ## A107848.P29339500695900125

`A001223(A066535(n+1))*A064657(n)`
-/

namespace A107848.P29339500695900125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A066535 (n + 1)).toNat * A064657 n

end

end A107848.P29339500695900125

/-!
# A107849: Expansion of (1 + x)^2 / ((1 - x^2 - 2*x^3)*(1 + x^4)).

The programs for A107849, the canonical program `A107849.P13873441260614929916` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107849 has offset 0).

The definition of A107849 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+x^2)/(1-x^2-2x^3+x^4-x^6-2x^7))` (program `A107849.P13873441260614929916`, by `A107849.P13873441260614929916.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107849.P13873441260614929916

`ogf((1+2x+x^2)/(1-x^2-2x^3+x^4-x^6-2x^7))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A107849

/-- `ogf((1+2x+x^2)/(1-x^2-2x^3+x^4-x^6-2x^7))` -/
def P13873441260614929916.Spec : Prop :=
  ∀ n, P13873441260614929916.a n = A107849 n

theorem P13873441260614929916.correct : P13873441260614929916.Spec := by
  intro n
  simp only [A107849]

end A107849

/-! ## A107849.P7858198080586440278

`a(n-2)+2*a(n-3)-a(n-4)+a(n-6)+2*a(n-7)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=4, a(4)=5, a(5)=6, a(6)=12`
-/

namespace A107849.P7858198080586440278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 4, 5, 6, 12] fun n a =>
  a (n - 2) + 2 * a (n - 3) - a (n - 4) + a (n - 6) + 2 * a (n - 7)

end

end A107849.P7858198080586440278

namespace A107849

/-- `a(n-2)+2*a(n-3)-a(n-4)+a(n-6)+2*a(n-7)` -/
def P7858198080586440278.Spec : Prop :=
  ∀ n, P7858198080586440278.a n = A107849 n

end A107849

/-! ## A107849.P13514022509553464717

`A052947(n+2)+A014017(n+6)`
-/

namespace A107849.P13514022509553464717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052947 (n + 2) + A014017 (n + 6)

end

end A107849.P13514022509553464717

namespace A107849

/-- `A052947(n+2)+A014017(n+6)` -/
def P13514022509553464717.Spec : Prop :=
  ∀ n, P13514022509553464717.a n = A107849 n

end A107849

/-! ## A107849.P9420166136677344092

`A107851(n)+A107850(n)`
-/

namespace A107849.P9420166136677344092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107851 n + A107850 n

end

end A107849.P9420166136677344092

namespace A107849

/-- `A107851(n)+A107850(n)` -/
def P9420166136677344092.Spec : Prop :=
  ∀ n, P9420166136677344092.a n = A107849 n

end A107849

/-! ## A107849.P1458053625536087479

`A159287(n+1)+A107854(n+1)`
-/

namespace A107849.P1458053625536087479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159287 (n + 1) + A107854 (n + 1)

end

end A107849.P1458053625536087479

namespace A107849

/-- `A159287(n+1)+A107854(n+1)` -/
def P1458053625536087479.Spec : Prop :=
  ∀ n, P1458053625536087479.a n = A107849 n

end A107849

/-! ## A107849.P13304793757381951826

`A052947(n+2)-A128130(A133265(n+1))`
-/

namespace A107849.P13304793757381951826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052947 (n + 2) - A128130 (A133265 (n + 1)).toNat

end

end A107849.P13304793757381951826

namespace A107849

/-- `A052947(n+2)-A128130(A133265(n+1))` -/
def P13304793757381951826.Spec : Prop :=
  ∀ n, P13304793757381951826.a n = A107849 n

end A107849

/-! ## A107849.P4903464997194297537

`A052947(n+2)-A014025(A005843(n+2))`
-/

namespace A107849.P4903464997194297537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052947 (n + 2) - A014025 (A005843 (n + 2)).toNat

end

end A107849.P4903464997194297537

namespace A107849

/-- `A052947(n+2)-A014025(A005843(n+2))` -/
def P4903464997194297537.Spec : Prop :=
  ∀ n, P4903464997194297537.a n = A107849 n

end A107849

/-! ## A107849.P9034621580223660193

`A128130(A133265(n+5))+A052947(n+2)`
-/

namespace A107849.P9034621580223660193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128130 (A133265 (n + 5)).toNat + A052947 (n + 2)

end

end A107849.P9034621580223660193

namespace A107849

/-- `A128130(A133265(n+5))+A052947(n+2)` -/
def P9034621580223660193.Spec : Prop :=
  ∀ n, P9034621580223660193.a n = A107849 n

end A107849

/-! ## A107849.P16733652886252174201

`A107854(n+1)+A118831(n+2)+A107850(n)`
-/

namespace A107849.P16733652886252174201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107854 (n + 1) + (A118831 (n + 2) + A107850 n)

end

end A107849.P16733652886252174201

namespace A107849

/-- `A107854(n+1)+A118831(n+2)+A107850(n)` -/
def P16733652886252174201.Spec : Prop :=
  ∀ n, P16733652886252174201.a n = A107849 n

end A107849

/-! ## A107849.P6430640626603282925

`(A107853(n+1)+A107852(n+1))/2`
-/

namespace A107849.P6430640626603282925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107853 (n + 1) + A107852 (n + 1) : ℚ) / 2

end

end A107849.P6430640626603282925

namespace A107849

/-- `(A107853(n+1)+A107852(n+1))/2` -/
def P6430640626603282925.Spec : Prop :=
  ∀ n, P6430640626603282925.a n = (A107849 n : ℚ)

end A107849

/-!
# A107850: Expansion of g.f. (x^2+x+1)*(2*x^2+2*x+1)*(x-1)^2/((1-x^2-2*x^3)*(x^4+1)).

The programs for A107850, the canonical program `A107850.P16564787358541434268` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107850 has offset 0).

The definition of A107850 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-3x^3-x^4+2x^6)/(1-x^2-2x^3+x^4-x^6-2x^7))` (program `A107850.P16564787358541434268`, by `A107850.P16564787358541434268.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107850.P16564787358541434268

`ogf((1+x-3x^3-x^4+2x^6)/(1-x^2-2x^3+x^4-x^6-2x^7))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A107850

/-- `ogf((1+x-3x^3-x^4+2x^6)/(1-x^2-2x^3+x^4-x^6-2x^7))` -/
def P16564787358541434268.Spec : Prop :=
  ∀ n, P16564787358541434268.a n = A107850 n

theorem P16564787358541434268.correct : P16564787358541434268.Spec := by
  intro n
  simp only [A107850]

end A107850

/-! ## A107850.P2994595999491205345

`a(n-2)+2*a(n-3)-a(n-4)+a(n-6)+2*a(n-7)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=0, a(4)=1, a(5)=1, a(6)=3`
-/

namespace A107850.P2994595999491205345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 0, 1, 1, 3] fun n a =>
  a (n - 2) + 2 * a (n - 3) - a (n - 4) + a (n - 6) + 2 * a (n - 7)

end

end A107850.P2994595999491205345

namespace A107850

/-- `a(n-2)+2*a(n-3)-a(n-4)+a(n-6)+2*a(n-7)` -/
def P2994595999491205345.Spec : Prop :=
  ∀ n, P2994595999491205345.a n = A107850 n

end A107850

/-! ## A107850.P5076085854406009057

`A159287(n+1)-A118831(n+2)`
-/

namespace A107850.P5076085854406009057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159287 (n + 1) - A118831 (n + 2)

end

end A107850.P5076085854406009057

namespace A107850

/-- `A159287(n+1)-A118831(n+2)` -/
def P5076085854406009057.Spec : Prop :=
  ∀ n, P5076085854406009057.a n = A107850 n

end A107850

/-! ## A107850.P5634750898680577531

`A107853(n+1)+A159287(n)-A107854(n)`
-/

namespace A107850.P5634750898680577531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107853 (n + 1) + (A159287 n - A107854 n)

end

end A107850.P5634750898680577531

namespace A107850

/-- `A107853(n+1)+A159287(n)-A107854(n)` -/
def P5634750898680577531.Spec : Prop :=
  ∀ n, P5634750898680577531.a n = A107850 n

end A107850

/-! ## A107850.P6127382979557010126

`A107854(n+1)+A159287(n+1)-A107851(n)`
-/

namespace A107850.P6127382979557010126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107854 (n + 1) + (A159287 (n + 1) - A107851 n)

end

end A107850.P6127382979557010126

namespace A107850

/-- `A107854(n+1)+A159287(n+1)-A107851(n)` -/
def P6127382979557010126.Spec : Prop :=
  ∀ n, P6127382979557010126.a n = A107850 n

end A107850

/-! ## A107850.P12766561067806300621

`A107849(n)-A107851(n)`
-/

namespace A107850.P12766561067806300621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107849 n - A107851 n

end

end A107850.P12766561067806300621

namespace A107850

/-- `A107849(n)-A107851(n)` -/
def P12766561067806300621.Spec : Prop :=
  ∀ n, P12766561067806300621.a n = A107850 n

end A107850

/-! ## A107850.P8488028772736850243

`A107849(n)-(A118831(n+2)+A107854(n+1))`
-/

namespace A107850.P8488028772736850243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107849 n - (A118831 (n + 2) + A107854 (n + 1))

end

end A107850.P8488028772736850243

namespace A107850

/-- `A107849(n)-(A118831(n+2)+A107854(n+1))` -/
def P8488028772736850243.Spec : Prop :=
  ∀ n, P8488028772736850243.a n = A107850 n

end A107850

/-! ## A107850.P15582630961863612843

`A107849(n)+A107851(n)/A118830(2*n+1)`
-/

namespace A107850.P15582630961863612843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107849 n : ℚ) + (A107851 n : ℚ) / (A118830 (2 * n + 1) : ℚ)

end

end A107850.P15582630961863612843

namespace A107850

/-- `A107849(n)+A107851(n)/A118830(2*n+1)` -/
def P15582630961863612843.Spec : Prop :=
  ∀ n, P15582630961863612843.a n = (A107850 n : ℚ)

end A107850

/-!
# A107851: Expansion of g.f. x*(-1-x-3*x^2-x^3+2*x^5)/((2*x^3+x^2-1)*(x^4+1)).

The programs for A107851, the canonical program `A107851.P11284198261026954988` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107851 has offset 0).

The definition of A107851 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+x^2+3x^3+x^4-2x^6)/(1-x^2-2x^3+x^4-x^6-2x^7))` (program `A107851.P11284198261026954988`, by `A107851.P11284198261026954988.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107851.P11284198261026954988

`ogf((x+x^2+3x^3+x^4-2x^6)/(1-x^2-2x^3+x^4-x^6-2x^7))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A107851

/-- `ogf((x+x^2+3x^3+x^4-2x^6)/(1-x^2-2x^3+x^4-x^6-2x^7))` -/
def P11284198261026954988.Spec : Prop :=
  ∀ n, P11284198261026954988.a n = A107851 n

theorem P11284198261026954988.correct : P11284198261026954988.Spec := by
  intro n
  simp only [A107851]

end A107851

/-! ## A107851.P10630871314247235073

`a(n-2)+2*a(n-3)-a(n-4)+a(n-6)+2*a(n-7)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=4, a(4)=4, a(5)=5, a(6)=9`
-/

namespace A107851.P10630871314247235073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 4, 4, 5, 9] fun n a =>
  a (n - 2) + 2 * a (n - 3) - a (n - 4) + a (n - 6) + 2 * a (n - 7)

end

end A107851.P10630871314247235073

namespace A107851

/-- `a(n-2)+2*a(n-3)-a(n-4)+a(n-6)+2*a(n-7)` -/
def P10630871314247235073.Spec : Prop :=
  ∀ n, P10630871314247235073.a n = A107851 n

end A107851

/-! ## A107851.P4395552956267309139

`A159284(n+1)+A132380(n+7)`
-/

namespace A107851.P4395552956267309139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159284 (n + 1) + A132380 (n + 7)

end

end A107851.P4395552956267309139

namespace A107851

/-- `A159284(n+1)+A132380(n+7)` -/
def P4395552956267309139.Spec : Prop :=
  ∀ n, P4395552956267309139.a n = A107851 n

end A107851

/-! ## A107851.P6936243710385417487

`abs(A128130(n+1)+A078028(n))`
-/

namespace A107851.P6936243710385417487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A128130 (n + 1) + A078028 n|

end

end A107851.P6936243710385417487

namespace A107851

/-- `abs(A128130(n+1)+A078028(n))` -/
def P6936243710385417487.Spec : Prop :=
  ∀ n, P6936243710385417487.a n = A107851 n

end A107851

/-! ## A107851.P3027378776746584982

`A118831(n+2)+A107854(n+1)`
-/

namespace A107851.P3027378776746584982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118831 (n + 2) + A107854 (n + 1)

end

end A107851.P3027378776746584982

namespace A107851

/-- `A118831(n+2)+A107854(n+1)` -/
def P3027378776746584982.Spec : Prop :=
  ∀ n, P3027378776746584982.a n = A107851 n

end A107851

/-! ## A107851.P2657856223619580152

`A159284(n)-Δ[A046978(n)-A159284(n)]`
-/

namespace A107851.P2657856223619580152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 n - A159284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159284 n - (f1 (n + 1) - f1 n)

end

end A107851.P2657856223619580152

namespace A107851

/-- `A159284(n)-Δ[A046978(n)-A159284(n)]` -/
def P2657856223619580152.Spec : Prop :=
  ∀ n, P2657856223619580152.a n = A107851 n

end A107851

/-! ## A107851.P3380776678734470384

`A159284(n+1)-(A014017(n+1)+A014017(n))`
-/

namespace A107851.P3380776678734470384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159284 (n + 1) - (A014017 (n + 1) + A014017 n)

end

end A107851.P3380776678734470384

namespace A107851

/-- `A159284(n+1)-(A014017(n+1)+A014017(n))` -/
def P3380776678734470384.Spec : Prop :=
  ∀ n, P3380776678734470384.a n = A107851 n

end A107851

/-! ## A107851.P12055065821642732912

`A107854(n+1)+A159287(n+1)-A107850(n)`
-/

namespace A107851.P12055065821642732912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107854 (n + 1) + (A159287 (n + 1) - A107850 n)

end

end A107851.P12055065821642732912

namespace A107851

/-- `A107854(n+1)+A159287(n+1)-A107850(n)` -/
def P12055065821642732912.Spec : Prop :=
  ∀ n, P12055065821642732912.a n = A107851 n

end A107851

/-! ## A107851.P17299530909302214553

`A107854(n+1)-(A188510(n+1)+A014017(n+1))`
-/

namespace A107851.P17299530909302214553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107854 (n + 1) - (A188510 (n + 1) + A014017 (n + 1))

end

end A107851.P17299530909302214553

namespace A107851

/-- `A107854(n+1)-(A188510(n+1)+A014017(n+1))` -/
def P17299530909302214553.Spec : Prop :=
  ∀ n, P17299530909302214553.a n = A107851 n

end A107851

/-! ## A107851.P736772857273466263

`A107849(n)-A107850(n)`
-/

namespace A107851.P736772857273466263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107849 n - A107850 n

end

end A107851.P736772857273466263

namespace A107851

/-- `A107849(n)-A107850(n)` -/
def P736772857273466263.Spec : Prop :=
  ∀ n, P736772857273466263.a n = A107851 n

end A107851

/-! ## A107851.P4198325612635551711

`∑[A107853(n)]+A188510(n)-A107853(n)`
-/

namespace A107851.P4198325612635551711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107853 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A188510 n - A107853 n)

end

end A107851.P4198325612635551711

namespace A107851

/-- `∑[A107853(n)]+A188510(n)-A107853(n)` -/
def P4198325612635551711.Spec : Prop :=
  ∀ n, P4198325612635551711.a n = A107851 n

end A107851

/-! ## A107851.P885687465858530504

`A107852(n+1)-(A107854(n+1)+A014017(n+1))`
-/

namespace A107851.P885687465858530504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107852 (n + 1) - (A107854 (n + 1) + A014017 (n + 1))

end

end A107851.P885687465858530504

namespace A107851

/-- `A107852(n+1)-(A107854(n+1)+A014017(n+1))` -/
def P885687465858530504.Spec : Prop :=
  ∀ n, P885687465858530504.a n = A107851 n

end A107851

/-! ## A107851.P16264540082019791868

`Δ[∑[A159284(n)]-A046978(n)]`
-/

namespace A107851.P16264540082019791868
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159284 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A046978 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107851.P16264540082019791868

namespace A107851

/-- `Δ[∑[A159284(n)]-A046978(n)]` -/
def P16264540082019791868.Spec : Prop :=
  ∀ n, P16264540082019791868.a n = A107851 n

end A107851

/-! ## A107851.P10829605635468498267

`abs(A078028(n))-A056594(A000217(n))`
-/

namespace A107851.P10829605635468498267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A078028 n| - A056594 (A000217 n).toNat

end

end A107851.P10829605635468498267

namespace A107851

/-- `abs(A078028(n))-A056594(A000217(n))` -/
def P10829605635468498267.Spec : Prop :=
  ∀ n, P10829605635468498267.a n = A107851 n

end A107851

/-!
# A107852: Expansion of -x*(x^2+1)*(x+1)^2/((2*x^3+x^2-1)*(x^4+1)).

The programs for A107852, the canonical program `A107852.P13280134071965113778` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107852 has offset 0).

The definition of A107852 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+2x^2+2x^3+2x^4+x^5)/(1-x^2-2x^3+x^4-x^6-2x^7))` (program `A107852.P13280134071965113778`, by `A107852.P13280134071965113778.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107852.P13280134071965113778

`ogf((x+2x^2+2x^3+2x^4+x^5)/(1-x^2-2x^3+x^4-x^6-2x^7))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A107852

/-- `ogf((x+2x^2+2x^3+2x^4+x^5)/(1-x^2-2x^3+x^4-x^6-2x^7))` -/
def P13280134071965113778.Spec : Prop :=
  ∀ n, P13280134071965113778.a n = A107852 n

theorem P13280134071965113778.correct : P13280134071965113778.Spec := by
  intro n
  simp only [A107852]

end A107852

/-! ## A107852.P16483585833465420117

`a(n-2)+2*a(n-3)-a(n-4)+a(n-6)+2*a(n-7)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=6, a(5)=7, a(6)=10`
-/

namespace A107852.P16483585833465420117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 6, 7, 10] fun n a =>
  a (n - 2) + 2 * a (n - 3) - a (n - 4) + a (n - 6) + 2 * a (n - 7)

end

end A107852.P16483585833465420117

namespace A107852

/-- `a(n-2)+2*a(n-3)-a(n-4)+a(n-6)+2*a(n-7)` -/
def P16483585833465420117.Spec : Prop :=
  ∀ n, P16483585833465420117.a n = A107852 n

end A107852

/-! ## A107852.P3369511958459399759

`2*A159284(n)-A091337(n)`
-/

namespace A107852.P3369511958459399759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A159284 n - A091337 n

end

end A107852.P3369511958459399759

namespace A107852

/-- `2*A159284(n)-A091337(n)` -/
def P3369511958459399759.Spec : Prop :=
  ∀ n, P3369511958459399759.a n = A107852 n

end A107852

/-! ## A107852.P13874447558810501182

`2*A107854(n)-A188510(n)`
-/

namespace A107852.P13874447558810501182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107854 n - A188510 n

end

end A107852.P13874447558810501182

namespace A107852

/-- `2*A107854(n)-A188510(n)` -/
def P13874447558810501182.Spec : Prop :=
  ∀ n, P13874447558810501182.a n = A107852 n

end A107852

/-! ## A107852.P2845025392137781031

`A091337(n+2)+2*A107854(n)`
-/

namespace A107852.P2845025392137781031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091337 (n + 2) + 2 * A107854 n

end

end A107852.P2845025392137781031

namespace A107852

/-- `A091337(n+2)+2*A107854(n)` -/
def P2845025392137781031.Spec : Prop :=
  ∀ n, P2845025392137781031.a n = A107852 n

end A107852

/-! ## A107852.P12911597369799559230

`Δ[A239851(n+1)-A132380(n)]`
-/

namespace A107852.P12911597369799559230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239851 (n + 1) - A132380 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107852.P12911597369799559230

namespace A107852

/-- `Δ[A239851(n+1)-A132380(n)]` -/
def P12911597369799559230.Spec : Prop :=
  ∀ n, P12911597369799559230.a n = A107852 n

end A107852

/-! ## A107852.P2229236317012856602

`Δ[A239851(n+1)]-A188510(n+2)`
-/

namespace A107852.P2229236317012856602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A188510 (n + 2)

end

end A107852.P2229236317012856602

namespace A107852

/-- `Δ[A239851(n+1)]-A188510(n+2)` -/
def P2229236317012856602.Spec : Prop :=
  ∀ n, P2229236317012856602.a n = A107852 n

end A107852

/-! ## A107852.P9314576712629094523

`A188510(n+6)+Δ[A239851(n+1)]`
-/

namespace A107852.P9314576712629094523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 (n + 6) + (f1 (n + 1) - f1 n)

end

end A107852.P9314576712629094523

namespace A107852

/-- `A188510(n+6)+Δ[A239851(n+1)]` -/
def P9314576712629094523.Spec : Prop :=
  ∀ n, P9314576712629094523.a n = A107852 n

end A107852

/-! ## A107852.P2802454622276123776

`Δ[A239851(n+1)+A056594(A008619(n))]`
-/

namespace A107852.P2802454622276123776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239851 (n + 1) + A056594 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107852.P2802454622276123776

namespace A107852

/-- `Δ[A239851(n+1)+A056594(A008619(n))]` -/
def P2802454622276123776.Spec : Prop :=
  ∀ n, P2802454622276123776.a n = A107852 n

end A107852

/-!
# A107853: Expansion of g.f. x*(x-1)*(x+1)^3/((2*x^3+x^2-1)*(x^4+1)).

The programs for A107853, the canonical program `A107853.P9293777139859504616` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107853 has offset 0).

The definition of A107853 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+2x^2-2x^4-x^5)/(1-x^2-2x^3+x^4-x^6-2x^7))` (program `A107853.P9293777139859504616`, by `A107853.P9293777139859504616.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107853.P9293777139859504616

`ogf((x+2x^2-2x^4-x^5)/(1-x^2-2x^3+x^4-x^6-2x^7))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A107853

/-- `ogf((x+2x^2-2x^4-x^5)/(1-x^2-2x^3+x^4-x^6-2x^7))` -/
def P9293777139859504616.Spec : Prop :=
  ∀ n, P9293777139859504616.a n = A107853 n

theorem P9293777139859504616.correct : P9293777139859504616.Spec := by
  intro n
  simp only [A107853]

end A107853

/-! ## A107853.P4656891665239526244

`2*A159287(n)+A091337(n+6)`
-/

namespace A107853.P4656891665239526244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A159287 n + A091337 (n + 6)

end

end A107853.P4656891665239526244

namespace A107853

/-- `2*A159287(n)+A091337(n+6)` -/
def P4656891665239526244.Spec : Prop :=
  ∀ n, P4656891665239526244.a n = A107853 n

end A107853

/-! ## A107853.P16076939093193481721

`A188510(n)+2*A159287(n)`
-/

namespace A107853.P16076939093193481721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 n + 2 * A159287 n

end

end A107853.P16076939093193481721

namespace A107853

/-- `A188510(n)+2*A159287(n)` -/
def P16076939093193481721.Spec : Prop :=
  ∀ n, P16076939093193481721.a n = A107853 n

end A107853

/-! ## A107853.P8264599568659153918

`A159287(n)+A159287(n)-A091337(n+2)`
-/

namespace A107853.P8264599568659153918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159287 n + (A159287 n - A091337 (n + 2))

end

end A107853.P8264599568659153918

namespace A107853

/-- `A159287(n)+A159287(n)-A091337(n+2)` -/
def P8264599568659153918.Spec : Prop :=
  ∀ n, P8264599568659153918.a n = A107853 n

end A107853

/-! ## A107853.P14351068219720750876

`A188510(n)+Δ[abs(A078028(n))]`
-/

namespace A107853.P14351068219720750876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A078028 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 n + (f1 (n + 1) - f1 n)

end

end A107853.P14351068219720750876

namespace A107853

/-- `A188510(n)+Δ[abs(A078028(n))]` -/
def P14351068219720750876.Spec : Prop :=
  ∀ n, P14351068219720750876.a n = A107853 n

end A107853

/-! ## A107853.P15316702921158502148

`Δ[abs(A078028(n)-A128130(n))]`
-/

namespace A107853.P15316702921158502148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A078028 n - A128130 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107853.P15316702921158502148

namespace A107853

/-- `Δ[abs(A078028(n)-A128130(n))]` -/
def P15316702921158502148.Spec : Prop :=
  ∀ n, P15316702921158502148.a n = A107853 n

end A107853

/-! ## A107853.P17768797023697601312

`A188510(n)+Δ[A159284(n+1)]`
-/

namespace A107853.P17768797023697601312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 n + (f1 (n + 1) - f1 n)

end

end A107853.P17768797023697601312

namespace A107853

/-- `A188510(n)+Δ[A159284(n+1)]` -/
def P17768797023697601312.Spec : Prop :=
  ∀ n, P17768797023697601312.a n = A107853 n

end A107853

/-! ## A107853.P4026320194749455077

`A107852(n+2)%Δ[A078028(n)]`
-/

namespace A107853.P4026320194749455077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107852 (n + 2)) (f1 (n + 1) - f1 n)

end

end A107853.P4026320194749455077

namespace A107853

/-- `A107852(n+2)%Δ[A078028(n)]` -/
def P4026320194749455077.Spec : Prop :=
  ∀ n, P4026320194749455077.a n = A107853 n

end A107853

/-! ## A107853.P4241700753302016616

`A107852(n+2)-A239851(n+1)`
-/

namespace A107853.P4241700753302016616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107852 (n + 2) - A239851 (n + 1)

end

end A107853.P4241700753302016616

namespace A107853

/-- `A107852(n+2)-A239851(n+1)` -/
def P4241700753302016616.Spec : Prop :=
  ∀ n, P4241700753302016616.a n = A107853 n

end A107853

/-!
# A107854: G.f. x*(x^2+1)*(x^3-x-1)/((2*x^3+x^2-1)*(x^4+1)).

The programs for A107854, the canonical program `A107854.P417753760362536162` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107854 has offset 0).

The definition of A107854 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014017, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A107854.P417753760362536162

`A159284(n)+A014017(n+5)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A107854

/-- `A159284(n)+A014017(n+5)` -/
def P417753760362536162.Spec : Prop :=
  ∀ n, P417753760362536162.a n = A107854 n

theorem P417753760362536162.correct : P417753760362536162.Spec := by
  intro n
  simp only [A107854]

end A107854

/-! ## A107854.P17130719622104636265

`A159284(n)+A132380(A093178(n))`
-/

namespace A107854.P17130719622104636265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159284 n + A132380 (A093178 n).toNat

end

end A107854.P17130719622104636265

namespace A107854

/-- `A159284(n)+A132380(A093178(n))` -/
def P17130719622104636265.Spec : Prop :=
  ∀ n, P17130719622104636265.a n = A107854 n

end A107854

/-! ## A107854.P15717643655286664454

`A159284(n)+A132380(A135481(n))`
-/

namespace A107854.P15717643655286664454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159284 n + A132380 (A135481 n).toNat

end

end A107854.P15717643655286664454

namespace A107854

/-- `A159284(n)+A132380(A135481(n))` -/
def P15717643655286664454.Spec : Prop :=
  ∀ n, P15717643655286664454.a n = A107854 n

end A107854

/-! ## A107854.P6248025622047303218

`A159284(n)-A056594(A152271(n))`
-/

namespace A107854.P6248025622047303218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159284 n - A056594 (A152271 n).toNat

end

end A107854.P6248025622047303218

namespace A107854

/-- `A159284(n)-A056594(A152271(n))` -/
def P6248025622047303218.Spec : Prop :=
  ∀ n, P6248025622047303218.a n = A107854 n

end A107854

/-! ## A107854.P17981160298985410647

`A159284(n)+A056594(A152271(n)+2)`
-/

namespace A107854.P17981160298985410647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159284 n + A056594 (A152271 n + 2).toNat

end

end A107854.P17981160298985410647

namespace A107854

/-- `A159284(n)+A056594(A152271(n)+2)` -/
def P17981160298985410647.Spec : Prop :=
  ∀ n, P17981160298985410647.a n = A107854 n

end A107854

/-! ## A107854.P16360606696043078296

`A107853(n+1)+A159287(n)-A107850(n)`
-/

namespace A107854.P16360606696043078296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107853 (n + 1) + (A159287 n - A107850 n)

end

end A107854.P16360606696043078296

namespace A107854

/-- `A107853(n+1)+A159287(n)-A107850(n)` -/
def P16360606696043078296.Spec : Prop :=
  ∀ n, P16360606696043078296.a n = A107854 n

end A107854

/-! ## A107854.P9709501958408549555

`A159284(n)+A132380(A065530(n))`
-/

namespace A107854.P9709501958408549555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159284 n + A132380 (A065530 n).toNat

end

end A107854.P9709501958408549555

namespace A107854

/-- `A159284(n)+A132380(A065530(n))` -/
def P9709501958408549555.Spec : Prop :=
  ∀ n, P9709501958408549555.a n = A107854 n

end A107854

/-!
# A107856: a(n) = 2*a(n-2)+4*a(n-4)+a(n-6), n>9.

The programs for A107856, the canonical program `A107856.P4372643739233997651` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107856 has offset 1).

The definition of A107856 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-2)+4*a(n-4)+a(n-6)` (program `A107856.P4372643739233997651`, by `A107856.P4372643739233997651.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107856.P4372643739233997651

`2*a(n-2)+4*a(n-4)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=0, a(4)=4, a(5)=4, a(6)=11, a(7)=7, a(8)=37`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A107856

/-- `2*a(n-2)+4*a(n-4)+a(n-6)` -/
def P4372643739233997651.Spec : Prop :=
  ∀ n, (P4372643739233997651.a n : ℤ) = A107856 (n + 1)

theorem P4372643739233997651.correct : P4372643739233997651.Spec := by
  intro n
  simp only [A107856, Nat.add_sub_cancel]

end A107856

/-! ## A107856.P16167006594227198214

`A045674(n)-A174344(A332872(n))`
-/

namespace A107856.P16167006594227198214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045674 n - A174344 (A332872 n).toNat

end

end A107856.P16167006594227198214

namespace A107856

/-- `A045674(n)-A174344(A332872(n))` -/
def P16167006594227198214.Spec : Prop :=
  ∀ n, P16167006594227198214.a n = A107856 (n + 1)

end A107856

/-!
# A107857: a(n) = floor[(phi + n mod 2)*a(n-1)], a(1)=1.

The programs for A107857, the canonical program `A107857.P12930043991060423753` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107857 has offset 1).

The definition of A107857 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107857.P12930043991060423753

`a(n-1)+4*a(n-2)-4*a(n-3)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=7`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A107857

/-- `a(n-1)+4*a(n-2)-4*a(n-3)+a(n-4)-a(n-5)` -/
def P12930043991060423753.Spec : Prop :=
  ∀ n, P12930043991060423753.a n = A107857 (n + 1)

theorem P12930043991060423753.correct : P12930043991060423753.Spec := by
  intro n
  simp only [A107857, Nat.add_sub_cancel]

end A107857

/-! ## A107857.P17199202686031957782

`floor(((n+1)%2+ϕ)*a(n-1))` with `a(0)=1`
-/

namespace A107857.P17199202686031957782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((((n + 1) % 2 : ℕ) : ℝ) + Real.goldenRatio) * (a (n - 1) : ℝ)⌋

end

end A107857.P17199202686031957782

namespace A107857

/-- `floor(((n+1)%2+ϕ)*a(n-1))` -/
def P17199202686031957782.Spec : Prop :=
  ∀ n, P17199202686031957782.a n = A107857 (n + 1)

end A107857

/-! ## A107857.P16087902182860860549

`floor((and(1, n+1)+ϕ)*a(n-1))` with `a(0)=1`
-/

namespace A107857.P16087902182860860549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((Nat.land 1 (n + 1) : ℝ) + Real.goldenRatio) * (a (n - 1) : ℝ)⌋

end

end A107857.P16087902182860860549

namespace A107857

/-- `floor((and(1, n+1)+ϕ)*a(n-1))` -/
def P16087902182860860549.Spec : Prop :=
  ∀ n, P16087902182860860549.a n = A107857 (n + 1)

end A107857

/-! ## A107857.P16818422887787477158

`A147997(A001651(n+1))`
-/

namespace A107857.P16818422887787477158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147997 (A001651 (n + 1)).toNat

end

end A107857.P16818422887787477158

namespace A107857

/-- `A147997(A001651(n+1))` -/
def P16818422887787477158.Spec : Prop :=
  ∀ n, P16818422887787477158.a n = A107857 (n + 1)

end A107857

/-! ## A107857.P13700000651875048858

`A173673(A047270(n+1))`
-/

namespace A107857.P13700000651875048858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173673 (A047270 (n + 1)).toNat

end

end A107857.P13700000651875048858

namespace A107857

/-- `A173673(A047270(n+1))` -/
def P13700000651875048858.Spec : Prop :=
  ∀ n, P13700000651875048858.a n = A107857 (n + 1)

end A107857

/-! ## A107857.P123836504060570921

`A147997(A097482(n+1))`
-/

namespace A107857.P123836504060570921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147997 (A097482 (n + 1)).toNat

end

end A107857.P123836504060570921

namespace A107857

/-- `A147997(A097482(n+1))` -/
def P123836504060570921.Spec : Prop :=
  ∀ n, P123836504060570921.a n = A107857 (n + 1)

end A107857

/-! ## A107857.P3186936020170478703

`A173173(A133223(n+1))`
-/

namespace A107857.P3186936020170478703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173173 (A133223 (n + 1)).toNat

end

end A107857.P3186936020170478703

namespace A107857

/-- `A173173(A133223(n+1))` -/
def P3186936020170478703.Spec : Prop :=
  ∀ n, P3186936020170478703.a n = A107857 (n + 1)

end A107857

/-! ## A107857.P8429627586532319767

`A004695(A008619(3*n))+1`
-/

namespace A107857.P8429627586532319767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (A008619 (3 * n)).toNat + 1

end

end A107857.P8429627586532319767

namespace A107857

/-- `A004695(A008619(3*n))+1` -/
def P8429627586532319767.Spec : Prop :=
  ∀ n, P8429627586532319767.a n = A107857 (n + 1)

end A107857

/-! ## A107857.P12322321593768236731

`A173173(A004526(3*n)+1)`
-/

namespace A107857.P12322321593768236731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173173 (A004526 (3 * n) + 1).toNat

end

end A107857.P12322321593768236731

namespace A107857

/-- `A173173(A004526(3*n)+1)` -/
def P12322321593768236731.Spec : Prop :=
  ∀ n, P12322321593768236731.a n = A107857 (n + 1)

end A107857

/-! ## A107857.P11558554832718616089

`A173433(A004526(3*n)+1)`
-/

namespace A107857.P11558554832718616089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173433 (A004526 (3 * n) + 1).toNat

end

end A107857.P11558554832718616089

namespace A107857

/-- `A173433(A004526(3*n)+1)` -/
def P11558554832718616089.Spec : Prop :=
  ∀ n, P11558554832718616089.a n = A107857 (n + 1)

end A107857

/-! ## A107857.P10749995292053826305

`A147997(A047235(n+1)/2)`
-/

namespace A107857.P10749995292053826305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147997 (SequenceMachineLib.roundAway ((A047235 (n + 1) : ℚ) / 2)).toNat

end

end A107857.P10749995292053826305

namespace A107857

/-- `A147997(A047235(n+1)/2)` -/
def P10749995292053826305.Spec : Prop :=
  ∀ n, P10749995292053826305.a n = A107857 (n + 1)

end A107857

/-! ## A107857.P15385215410100606653

`A173173(A110654(3*n+1))`
-/

namespace A107857.P15385215410100606653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173173 (A110654 (3 * n + 1)).toNat

end

end A107857.P15385215410100606653

namespace A107857

/-- `A173173(A110654(3*n+1))` -/
def P15385215410100606653.Spec : Prop :=
  ∀ n, P15385215410100606653.a n = A107857 (n + 1)

end A107857

/-! ## A107857.P13987666244793645776

`A004695(A008619(n)+n)+1`
-/

namespace A107857.P13987666244793645776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (A008619 n + (n : ℤ)).toNat + 1

end

end A107857.P13987666244793645776

namespace A107857

/-- `A004695(A008619(n)+n)+1` -/
def P13987666244793645776.Spec : Prop :=
  ∀ n, P13987666244793645776.a n = A107857 (n + 1)

end A107857

/-! ## A107857.P17465858716219057743

`A173173(A004526(n)+1+n)`
-/

namespace A107857.P17465858716219057743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173173 (A004526 n + 1 + (n : ℤ)).toNat

end

end A107857.P17465858716219057743

namespace A107857

/-- `A173173(A004526(n)+1+n)` -/
def P17465858716219057743.Spec : Prop :=
  ∀ n, P17465858716219057743.a n = A107857 (n + 1)

end A107857

/-! ## A107857.P15899040993271652187

`A173173(A110654(n+1)+n)`
-/

namespace A107857.P15899040993271652187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173173 (A110654 (n + 1) + (n : ℤ)).toNat

end

end A107857.P15899040993271652187

namespace A107857

/-- `A173173(A110654(n+1)+n)` -/
def P15899040993271652187.Spec : Prop :=
  ∀ n, P15899040993271652187.a n = A107857 (n + 1)

end A107857

/-! ## A107857.P6051315247849350108

`A173673(2*A001651(n+1)+1)`
-/

namespace A107857.P6051315247849350108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173673 (2 * A001651 (n + 1) + 1).toNat

end

end A107857.P6051315247849350108

namespace A107857

/-- `A173673(2*A001651(n+1)+1)` -/
def P6051315247849350108.Spec : Prop :=
  ∀ n, P6051315247849350108.a n = A107857 (n + 1)

end A107857

/-! ## A107857.P16939478168871511775

`A004695(A004526(3*n)+1)+1`
-/

namespace A107857.P16939478168871511775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (A004526 (3 * n) + 1).toNat + 1

end

end A107857.P16939478168871511775

namespace A107857

/-- `A004695(A004526(3*n)+1)+1` -/
def P16939478168871511775.Spec : Prop :=
  ∀ n, P16939478168871511775.a n = A107857 (n + 1)

end A107857

/-! ## A107857.P6617184506003854564

`A173433((A047241(n+1)+1)/2)`
-/

namespace A107857.P6617184506003854564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173433 (SequenceMachineLib.roundAway ((A047241 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A107857.P6617184506003854564

namespace A107857

/-- `A173433((A047241(n+1)+1)/2)` -/
def P6617184506003854564.Spec : Prop :=
  ∀ n, P6617184506003854564.a n = A107857 (n + 1)

end A107857

/-! ## A107857.P1023272478727851365

`A004695(A004526(n)+1+n)+1`
-/

namespace A107857.P1023272478727851365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (A004526 n + 1 + (n : ℤ)).toNat + 1

end

end A107857.P1023272478727851365

namespace A107857

/-- `A004695(A004526(n)+1+n)+1` -/
def P1023272478727851365.Spec : Prop :=
  ∀ n, P1023272478727851365.a n = A107857 (n + 1)

end A107857

/-! ## A107857.P11629862765661810763

`A147997(A110655(2*(n+1))+n)`
-/

namespace A107857.P11629862765661810763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147997 (A110655 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A107857.P11629862765661810763

namespace A107857

/-- `A147997(A110655(2*(n+1))+n)` -/
def P11629862765661810763.Spec : Prop :=
  ∀ n, P11629862765661810763.a n = A107857 (n + 1)

end A107857

/-!
# A107858: a(n) = b(k), where b(k) = Fibonacci(n-1) and k = floor( n*(1+sqrt(5))/2 ).

The programs for A107858, there is no canonical definition to state claims against.
-/

/-! ## A107858.P1897445656805811116

`floor(((n+1)%2+ϕ)*a(n-1))%(2^n)` with `a(0)=1`
-/

namespace A107858.P1897445656805811116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod ⌊((((n + 1) % 2 : ℕ) : ℝ) + Real.goldenRatio) * (a (n - 1) : ℝ)⌋ (2 ^ n : ℤ)

end

end A107858.P1897445656805811116

/-! ## A107858.P693316669894111933

`A107857(comp[(6*n)²])`
-/

namespace A107858.P693316669894111933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (6 * n) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107857 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A107858.P693316669894111933

/-! ## A107858.P8964816093069760659

`A107857(n+1)+char[33]`
-/

namespace A107858.P8964816093069760659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  33

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107857 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A107858.P8964816093069760659

/-! ## A107858.P17167832743909687345

`A173173(comp[a(n-1)-3])` with `a(0)=48`
-/

namespace A107858.P17167832743909687345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [48] fun n f1 =>
  f1 (n - 1) - 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173173 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A107858.P17167832743909687345

/-! ## A107858.P16721240491403105582

`char[37]+ceil(A000045(comp[3*n])/2)`
-/

namespace A107858.P16721240491403105582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ⌈(A000045 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) : ℚ) / 2⌉

end

end A107858.P16721240491403105582

/-!
# A107861: Number of distinct values taken by the sums of all subsets of the n-th roots of unity.

The programs for A107861, there is no canonical definition to state claims against.
-/

/-! ## A107861.P1405532096996385347

`A334499(n+1)+A005131(A000629(n))`
-/

namespace A107861.P1405532096996385347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334499 (n + 1) + A005131 (A000629 n).toNat

end

end A107861.P1405532096996385347

/-! ## A107861.P3947327593351543629

`A334499(n+1)+A031214(A022099(n))`
-/

namespace A107861.P3947327593351543629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334499 (n + 1) + A031214 (A022099 n).toNat

end

end A107861.P3947327593351543629

/-! ## A107861.P4974092861300003862

`A357950(n+1)+A049240(A000165(n))`
-/

namespace A107861.P4974092861300003862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357950 (n + 1) + A049240 (A000165 n).toNat

end

end A107861.P4974092861300003862

/-!
# A107862: Triangle, read by rows, where T(n,k) = C(n*(n-1)/2 - k*(k-1)/2 + n-k, n-k).

The programs for A107862, the canonical program `A107862.P1500677961855177080` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107862 has offset 0).

The definition of A107862 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1485 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107862.P1500677961855177080

`C(A049780(n), A025581(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A107862

/-- `C(A049780(n), A025581(n))` -/
def P1500677961855177080.Spec : Prop :=
  ∀ n, (P1500677961855177080.a n : ℤ) = A107862 n

theorem P1500677961855177080.correct : P1500677961855177080.Spec := by
  intro n
  simp only [A107862]

end A107862

/-! ## A107862.P10092036453000643777

`C(A049780(n), log2(A130321(n)))`
-/

namespace A107862.P10092036453000643777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A049780 n).toNat (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))).toNat

end

end A107862.P10092036453000643777

namespace A107862

/-- `C(A049780(n), log2(A130321(n)))` -/
def P10092036453000643777.Spec : Prop :=
  ∀ n, (P10092036453000643777.a n : ℤ) = A107862 n

end A107862

/-! ## A107862.P374247942391511204

`C(A158822(n+1), A025581(n))`
-/

namespace A107862.P374247942391511204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A158822 (n + 1)).toNat (A025581 n).toNat

end

end A107862.P374247942391511204

namespace A107862

/-- `C(A158822(n+1), A025581(n))` -/
def P374247942391511204.Spec : Prop :=
  ∀ n, (P374247942391511204.a n : ℤ) = A107862 n

end A107862

/-! ## A107862.P13562370097523131370

`C(A158822(n+1), A004736(n+1)-1)`
-/

namespace A107862.P13562370097523131370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A158822 (n + 1)).toNat (A004736 (n + 1) - 1).toNat

end

end A107862.P13562370097523131370

namespace A107862

/-- `C(A158822(n+1), A004736(n+1)-1)` -/
def P13562370097523131370.Spec : Prop :=
  ∀ n, (P13562370097523131370.a n : ℤ) = A107862 n

end A107862

/-! ## A107862.P7484163204057577642

`C(A049780(n), A002262(A061579(n)))`
-/

namespace A107862.P7484163204057577642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A049780 n).toNat (A002262 (A061579 n).toNat).toNat

end

end A107862.P7484163204057577642

namespace A107862

/-- `C(A049780(n), A002262(A061579(n)))` -/
def P7484163204057577642.Spec : Prop :=
  ∀ n, (P7484163204057577642.a n : ℤ) = A107862 n

end A107862

/-! ## A107862.P8642107384374566207

`C(A220466(A185877(n+1))-1, A025581(n))`
-/

namespace A107862.P8642107384374566207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A220466 (A185877 (n + 1)).toNat - 1).toNat (A025581 n).toNat

end

end A107862.P8642107384374566207

namespace A107862

/-- `C(A220466(A185877(n+1))-1, A025581(n))` -/
def P8642107384374566207.Spec : Prop :=
  ∀ n, (P8642107384374566207.a n : ℤ) = A107862 n

end A107862

/-! ## A107862.P16678616099802075691

`C(n+1-A000217(A002262(n)+1), A025581(n))`
-/

namespace A107862.P16678616099802075691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1 : ℤ) - A000217 (A002262 n + 1).toNat).toNat (A025581 n).toNat

end

end A107862.P16678616099802075691

namespace A107862

/-- `C(n+1-A000217(A002262(n)+1), A025581(n))` -/
def P16678616099802075691.Spec : Prop :=
  ∀ n, (P16678616099802075691.a n : ℤ) = A107862 n

end A107862

/-!
# A107863: Column 1 of triangle A107862; a(n) = binomial(n*(n+1)/2 + n, n).

The programs for A107863, there is no canonical definition to state claims against.
-/

/-! ## A107863.P7776274034973180280

`C(∑[n]+n, n)`
-/

namespace A107863.P7776274034973180280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + n) n

end

end A107863.P7776274034973180280

/-! ## A107863.P8652910364712697039

`A180272(∑[n]+n)`
-/

namespace A107863.P8652910364712697039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180272 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A107863.P8652910364712697039

/-! ## A107863.P14058081626815501428

`record[C(n, A061579(n))]`
-/

namespace A107863.P14058081626815501428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A061579 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107863.P14058081626815501428

/-! ## A107863.P8145295809284296303

`record[C(A286099(n), n)]`
-/

namespace A107863.P8145295809284296303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A286099 n).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107863.P8145295809284296303

/-! ## A107863.P439670606183397282

`record[C(A286109(n), n)]`
-/

namespace A107863.P439670606183397282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A286109 n).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107863.P439670606183397282

/-! ## A107863.P8036220190606505099

`A107862(∑[n+1]+1)`
-/

namespace A107863.P8036220190606505099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107862 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A107863.P8036220190606505099

/-! ## A107863.P4244336398653845024

`record[C(n, A208656(n+1))]`
-/

namespace A107863.P4244336398653845024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A208656 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107863.P4244336398653845024

/-! ## A107863.P17433733002951088308

`record[C(A286150(n), A286151(n))]`
-/

namespace A107863.P17433733002951088308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A286150 n).toNat (A286151 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107863.P17433733002951088308

/-! ## A107863.P6714995994233958203

`gcd(C(A000096(n), n), A000038(n))`
-/

namespace A107863.P6714995994233958203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose (A000096 n).toNat n : ℤ) (A000038 n)

end

end A107863.P6714995994233958203

/-! ## A107863.P3778774179435877961

`2*C(C(n+2, 2), n+1)/(n+2)`
-/

namespace A107863.P3778774179435877961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.choose (Nat.choose (n + 2) 2) (n + 1) : ℚ) / (n + 2 : ℚ))

end

end A107863.P3778774179435877961

/-!
# A107866: Column 0 of triangle A107865.

The programs for A107866, there is no canonical definition to state claims against.
-/

/-! ## A107866.P16908503342731151247

`A107865(∑[n])`
-/

namespace A107866.P16908503342731151247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107865 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A107866.P16908503342731151247

/-! ## A107866.P3935917704632710391

`or(A000007(n), A107865(A000217(n)))`
-/

namespace A107866.P3935917704632710391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A107865 (A000217 n).toNat)

end

end A107866.P3935917704632710391

/-! ## A107866.P5243662617045308665

`A020985(n)^4*A107865(A000217(n))`
-/

namespace A107866.P5243662617045308665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 4 * A107865 (A000217 n).toNat

end

end A107866.P5243662617045308665

/-! ## A107866.P7699984544254457451

`and(A107865(A000217(n)), A153881(n+1))`
-/

namespace A107866.P7699984544254457451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107865 (A000217 n).toNat) (A153881 (n + 1))

end

end A107866.P7699984544254457451

/-! ## A107866.P4987707696025977918

`A005117(gcd(n, n+1))*A107865(A000217(n))`
-/

namespace A107866.P4987707696025977918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (Nat.gcd n (n + 1)) * A107865 (A000217 n).toNat

end

end A107866.P4987707696025977918

/-! ## A107866.P13825986639383750558

`A001222(A075019(n+2))*A107865(A000217(n))`
-/

namespace A107866.P13825986639383750558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A075019 (n + 2)).toNat * A107865 (A000217 n).toNat

end

end A107866.P13825986639383750558

/-!
# A107867: Triangle, read by rows, where T(n,k) = C(n*(n-1)/2-k*(k-1)/2+n-k+1,n-k).

The programs for A107867, the canonical program `A107867.P17704679884314866193` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107867 has offset 0).

The definition of A107867 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1485 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107867.P17704679884314866193

`C(A049780(n)+1, A025581(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A107867

/-- `C(A049780(n)+1, A025581(n))` -/
def P17704679884314866193.Spec : Prop :=
  ∀ n, (P17704679884314866193.a n : ℤ) = A107867 n

theorem P17704679884314866193.correct : P17704679884314866193.Spec := by
  intro n
  simp only [A107867]

end A107867

/-! ## A107867.P8463929483091215004

`C(A049780(n)+1, log2(A130321(n)))`
-/

namespace A107867.P8463929483091215004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A049780 n + 1).toNat (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))).toNat

end

end A107867.P8463929483091215004

namespace A107867

/-- `C(A049780(n)+1, log2(A130321(n)))` -/
def P8463929483091215004.Spec : Prop :=
  ∀ n, (P8463929483091215004.a n : ℤ) = A107867 n

end A107867

/-! ## A107867.P12078842008958012487

`C(A329854(A080036(n)), A329854(n))`
-/

namespace A107867.P12078842008958012487
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A329854 (A080036 n).toNat).toNat (A329854 n).toNat

end

end A107867.P12078842008958012487

namespace A107867

/-- `C(A329854(A080036(n)), A329854(n))` -/
def P12078842008958012487.Spec : Prop :=
  ∀ n, (P12078842008958012487.a n : ℤ) = A107867 n

end A107867

/-! ## A107867.P1197737470296904356

`C(A049780(n)+1, A002262(A061579(n)))`
-/

namespace A107867.P1197737470296904356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A049780 n + 1).toNat (A002262 (A061579 n).toNat).toNat

end

end A107867.P1197737470296904356

namespace A107867

/-- `C(A049780(n)+1, A002262(A061579(n)))` -/
def P1197737470296904356.Spec : Prop :=
  ∀ n, (P1197737470296904356.a n : ℤ) = A107867 n

end A107867

/-! ## A107867.P10833175212290545465

`C(A220466(A185877(n+1)), A025581(n))`
-/

namespace A107867.P10833175212290545465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A220466 (A185877 (n + 1)).toNat).toNat (A025581 n).toNat

end

end A107867.P10833175212290545465

namespace A107867

/-- `C(A220466(A185877(n+1)), A025581(n))` -/
def P10833175212290545465.Spec : Prop :=
  ∀ n, (P10833175212290545465.a n : ℤ) = A107867 n

end A107867

/-! ## A107867.P12446991751102505325

`C(A152271(A185877(n+1)), A329854(n))`
-/

namespace A107867.P12446991751102505325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A152271 (A185877 (n + 1)).toNat).toNat (A329854 n).toNat

end

end A107867.P12446991751102505325

namespace A107867

/-- `C(A152271(A185877(n+1)), A329854(n))` -/
def P12446991751102505325.Spec : Prop :=
  ∀ n, (P12446991751102505325.a n : ℤ) = A107867 n

end A107867

/-! ## A107867.P15443912261807231803

`C(A329854(A014132(n+1)), A329854(n))`
-/

namespace A107867.P15443912261807231803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A329854 (A014132 (n + 1)).toNat).toNat (A329854 n).toNat

end

end A107867.P15443912261807231803

namespace A107867

/-- `C(A329854(A014132(n+1)), A329854(n))` -/
def P15443912261807231803.Spec : Prop :=
  ∀ n, (P15443912261807231803.a n : ℤ) = A107867 n

end A107867

/-!
# A107868: Column 0 of triangle A107867; a(n) = C( n*(n-1)/2 + n + 1, n).

The programs for A107868, there is no canonical definition to state claims against.
-/

/-! ## A107868.P16252148114462449890

`A107867(∑[n])`
-/

namespace A107868.P16252148114462449890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107867 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A107868.P16252148114462449890

/-! ## A107868.P10470362265583551429

`record[A107867(n)]`
-/

namespace A107868.P10470362265583551429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107867 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107868.P10470362265583551429

/-! ## A107868.P17246162024719186710

`A180272(∑[n]+1)`
-/

namespace A107868.P17246162024719186710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180272 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A107868.P17246162024719186710

/-! ## A107868.P5761231286704944588

`C(∑[n]+1, n)`
-/

namespace A107868.P5761231286704944588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1) n

end

end A107868.P5761231286704944588

/-! ## A107868.P8561858013415973445

`and(C(-xor(-1, ∑[n]), n), -1)`
-/

namespace A107868.P8561858013415973445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.choose (-Int.xor (-1) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat n : ℤ) (-1)

end

end A107868.P8561858013415973445

/-! ## A107868.P14081682040510546032

`record[C(n+1, A025581(n))]`
-/

namespace A107868.P14081682040510546032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A025581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107868.P14081682040510546032

/-! ## A107868.P8548201778602354963

`record[C(n+1, A004736(n+1)-1)]`
-/

namespace A107868.P8548201778602354963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A004736 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107868.P8548201778602354963

/-! ## A107868.P13557754704195215008

`record[C(n+1, A057554(2*(n+1)))]`
-/

namespace A107868.P13557754704195215008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A057554 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107868.P13557754704195215008

/-! ## A107868.P8557724021569011717

`record[C(n+1, A057555(2*(n+1))-1)]`
-/

namespace A107868.P8557724021569011717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A057555 (2 * (n + 1)) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107868.P8557724021569011717

/-! ## A107868.P3554654591790686888

`record[C(A106247(n), A014682(n))]`
-/

namespace A107868.P3554654591790686888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A106247 n).toNat (A014682 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107868.P3554654591790686888

/-!
# A107869: Column 1 of triangle A107867; a(n) = binomial( n*(n+1)/2 + n+1, n).

The programs for A107869, there is no canonical definition to state claims against.
-/

/-! ## A107869.P11865977256682898085

`C(∑[n+1], n)`
-/

namespace A107869.P11865977256682898085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n

end

end A107869.P11865977256682898085

/-! ## A107869.P10809240512801452871

`C(2, n+3)+C(C(n+2, 2), n)`
-/

namespace A107869.P10809240512801452871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 3) + Nat.choose (Nat.choose (n + 2) 2) n

end

end A107869.P10809240512801452871

/-! ## A107869.P9464186341776994193

`A107867(∑[n+1]+1)`
-/

namespace A107869.P9464186341776994193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107867 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A107869.P9464186341776994193

/-! ## A107869.P11357206062665093397

`record[C(A286157(n+1), n+1)]`
-/

namespace A107869.P11357206062665093397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A286157 (n + 1)).toNat (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107869.P11357206062665093397

/-! ## A107869.P3548198456513959270

`record[C(A286158(n+1), n+1)]`
-/

namespace A107869.P3548198456513959270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A286158 (n + 1)).toNat (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107869.P3548198456513959270

/-! ## A107869.P1766190437826837886

`lcm(log2(1/2), C(A000217(n+1), n))`
-/

namespace A107869.P1766190437826837886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ))) (Nat.choose (A000217 (n + 1)).toNat n : ℤ)

end

end A107869.P1766190437826837886

/-! ## A107869.P2785051522225873055

`∑{d}[n+1, C(A000217(#), A000124(n))]`
-/

namespace A107869.P2785051522225873055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose (A000217 d).toNat (A000124 n).toNat

end

end A107869.P2785051522225873055

/-! ## A107869.P17494059965794543961

`record[C(A086270(n+1), A144112(n+1))]`
-/

namespace A107869.P17494059965794543961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A086270 (n + 1)).toNat (A144112 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107869.P17494059965794543961

/-! ## A107869.P18355452681792117925

`record[C(A246274(n+1), A246276(n+1))]`
-/

namespace A107869.P18355452681792117925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A246274 (n + 1)).toNat (A246276 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107869.P18355452681792117925

/-! ## A107869.P10854586222056198244

`record[C(A286156(n+1), A286101(n+1))]`
-/

namespace A107869.P10854586222056198244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A286156 (n + 1)).toNat (A286101 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107869.P10854586222056198244

/-!
# A107870: Triangle, read by rows, where T(n,k) = C(n*(n-1)/2-k*(k-1)/2+n-k+2, n-k).

The programs for A107870, the canonical program `A107870.P13194851954959866292` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107870 has offset 0).

The definition of A107870 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1485 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107870.P13194851954959866292

`C(A049780(n)+2, A025581(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A107870

/-- `C(A049780(n)+2, A025581(n))` -/
def P13194851954959866292.Spec : Prop :=
  ∀ n, (P13194851954959866292.a n : ℤ) = A107870 n

theorem P13194851954959866292.correct : P13194851954959866292.Spec := by
  intro n
  simp only [A107870]

end A107870

/-! ## A107870.P9527375788884308019

`C(A049780(n)+2, log2(A130321(n)))`
-/

namespace A107870.P9527375788884308019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A049780 n + 2).toNat (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))).toNat

end

end A107870.P9527375788884308019

namespace A107870

/-- `C(A049780(n)+2, log2(A130321(n)))` -/
def P9527375788884308019.Spec : Prop :=
  ∀ n, (P9527375788884308019.a n : ℤ) = A107870 n

end A107870

/-! ## A107870.P13247718591963600418

`C(A049780(n)+2, A002262(A061579(n)))`
-/

namespace A107870.P13247718591963600418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A049780 n + 2).toNat (A002262 (A061579 n).toNat).toNat

end

end A107870.P13247718591963600418

namespace A107870

/-- `C(A049780(n)+2, A002262(A061579(n)))` -/
def P13247718591963600418.Spec : Prop :=
  ∀ n, (P13247718591963600418.a n : ℤ) = A107870 n

end A107870

/-! ## A107870.P14035990587829469187

`C(A220466(A185877(n+1))+1, A025581(n))`
-/

namespace A107870.P14035990587829469187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A220466 (A185877 (n + 1)).toNat + 1).toNat (A025581 n).toNat

end

end A107870.P14035990587829469187

namespace A107870

/-- `C(A220466(A185877(n+1))+1, A025581(n))` -/
def P14035990587829469187.Spec : Prop :=
  ∀ n, (P14035990587829469187.a n : ℤ) = A107870 n

end A107870

/-!
# A107871: Column 0 of triangle A107870; a(n) = C( n*(n-1)/2 + n+2, n).

The programs for A107871, there is no canonical definition to state claims against.
-/

/-! ## A107871.P6545031080724936179

`A107870(∑[n])`
-/

namespace A107871.P6545031080724936179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107870 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A107871.P6545031080724936179

/-! ## A107871.P14068774320990051467

`record[A107870(n)]`
-/

namespace A107871.P14068774320990051467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107871.P14068774320990051467

/-! ## A107871.P2908600356072622736

`A180272(A133263(n))`
-/

namespace A107871.P2908600356072622736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180272 (A133263 n).toNat

end

end A107871.P2908600356072622736

/-! ## A107871.P12201709848485317159

`A180272(A238531(n+1))`
-/

namespace A107871.P12201709848485317159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180272 (A238531 (n + 1)).toNat

end

end A107871.P12201709848485317159

/-! ## A107871.P1139609518413913587

`C(∑[n]+2, n)`
-/

namespace A107871.P1139609518413913587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 2) n

end

end A107871.P1139609518413913587

/-! ## A107871.P2719604830485487630

`record[C(n+2, A025581(n))]`
-/

namespace A107871.P2719604830485487630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) (A025581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107871.P2719604830485487630

/-! ## A107871.P6999472322545828958

`record[C(n+2, A004736(n+1)-1)]`
-/

namespace A107871.P6999472322545828958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) (A004736 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107871.P6999472322545828958

/-! ## A107871.P12118476962224748639

`record[C(n+2, A057554(2*(n+1)))]`
-/

namespace A107871.P12118476962224748639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) (A057554 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107871.P12118476962224748639

/-! ## A107871.P2622443300174840714

`record[C(n+1, A161552(n))]`
-/

namespace A107871.P2622443300174840714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A161552 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107871.P2622443300174840714

/-!
# A107872: Column 1 of triangle A107870; a(n) = C(n*(n+1)/2 + n+2, n).

The programs for A107872, there is no canonical definition to state claims against.
-/

/-! ## A107872.P16674935217148085804

`C(∑[n+1]+1, n)`
-/

namespace A107872.P16674935217148085804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1) n

end

end A107872.P16674935217148085804

/-! ## A107872.P15535754037154029865

`A107870(∑[n+1]+1)`
-/

namespace A107872.P15535754037154029865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107870 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A107872.P15535754037154029865

/-! ## A107872.P2230480173094347618

`record[C(n+2, A208656(n+1))]`
-/

namespace A107872.P2230480173094347618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) (A208656 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107872.P2230480173094347618

/-! ## A107872.P13696886365073600661

`record[C(A014132(n+1), A025581(n))]`
-/

namespace A107872.P13696886365073600661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014132 (n + 1)).toNat (A025581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107872.P13696886365073600661

/-! ## A107872.P17137707299427762957

`record[C(A061579(n)+2, A003056(n))]`
-/

namespace A107872.P17137707299427762957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A061579 n + 2).toNat (A003056 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107872.P17137707299427762957

/-! ## A107872.P10433860835972043510

`record[C(A256996(n+1), A256998(n+1))]`
-/

namespace A107872.P10433860835972043510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A256996 (n + 1)).toNat (A256998 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107872.P10433860835972043510

/-! ## A107872.P16414994220679271155

`A122177(∑[4*n])`
-/

namespace A107872.P16414994220679271155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122177 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A107872.P16414994220679271155

/-!
# A107873: Triangle, read by rows, where T(n,k) = binomial(n*(n-1)/2 - k*(k-1)/2 + n-k+3, n-k).

The programs for A107873, the canonical program `A107873.P3174346258241373001` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107873 has offset 0).

The definition of A107873 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1485 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107873.P3174346258241373001

`C(A049780(n)+3, A025581(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A107873

/-- `C(A049780(n)+3, A025581(n))` -/
def P3174346258241373001.Spec : Prop :=
  ∀ n, (P3174346258241373001.a n : ℤ) = A107873 n

theorem P3174346258241373001.correct : P3174346258241373001.Spec := by
  intro n
  simp only [A107873]

end A107873

/-! ## A107873.P3370762886499892871

`C(A220466(A185877(n+1))+2, A025581(n))`
-/

namespace A107873.P3370762886499892871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A220466 (A185877 (n + 1)).toNat + 2).toNat (A025581 n).toNat

end

end A107873.P3370762886499892871

namespace A107873

/-- `C(A220466(A185877(n+1))+2, A025581(n))` -/
def P3370762886499892871.Spec : Prop :=
  ∀ n, (P3370762886499892871.a n : ℤ) = A107873 n

end A107873

/-!
# A107874: Column 0 of triangle A107873; a(n) = C( n*(n-1)/2 + n+3, n).

The programs for A107874, there is no canonical definition to state claims against.
-/

/-! ## A107874.P16764962924479634338

`A107873(∑[n])`
-/

namespace A107874.P16764962924479634338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107873 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A107874.P16764962924479634338

/-! ## A107874.P5214190009224982766

`record[A107873(n)]`
-/

namespace A107874.P5214190009224982766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107874.P5214190009224982766

/-! ## A107874.P10143731073835267960

`or(char[2], A107873(A000217(n)))`
-/

namespace A107874.P10143731073835267960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A107873 (A000217 n).toNat)

end

end A107874.P10143731073835267960

/-! ## A107874.P11840027317616151779

`C(∑[n]+3, n)`
-/

namespace A107874.P11840027317616151779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 3) n

end

end A107874.P11840027317616151779

/-! ## A107874.P3047133675451655842

`record[C(n+3, A025581(n))]`
-/

namespace A107874.P3047133675451655842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) (A025581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107874.P3047133675451655842

/-! ## A107874.P11407359361149333600

`abs(1-C(abs(A000217(n+2)-2*n), n))+1`
-/

namespace A107874.P11407359361149333600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - (Nat.choose |A000217 (n + 2) - (2 * n : ℤ)|.toNat n : ℤ))| + 1

end

end A107874.P11407359361149333600

/-! ## A107874.P2046739072331802689

`A107873(A000217(n))%Δ[A099121(n)]`
-/

namespace A107874.P2046739072331802689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107873 (A000217 n).toNat) (f1 (n + 1) - f1 n)

end

end A107874.P2046739072331802689

/-!
# A107875: Column 1 of triangle A107873; a(n) = C( n*(n+1)/2 + n+3, n).

The programs for A107875, there is no canonical definition to state claims against.
-/

/-! ## A107875.P4962570396411708710

`C(∑[n+1]+2, n)`
-/

namespace A107875.P4962570396411708710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 2) n

end

end A107875.P4962570396411708710

/-! ## A107875.P14595972413825098990

`A107873(∑[n+1]+1)`
-/

namespace A107875.P14595972413825098990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107873 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A107875.P14595972413825098990

/-! ## A107875.P3289694618057880273

`record[gcd(A107873(n), A145677(n))]`
-/

namespace A107875.P3289694618057880273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A107873 n) (A145677 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107875.P3289694618057880273

/-! ## A107875.P12068564234595225641

`A007318(eq[n+4, A049777(n+1)])`
-/

namespace A107875.P12068564234595225641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107875.P12068564234595225641

/-! ## A107875.P7524242275938961685

`A007318(A000217(A133263(n+1))+n)`
-/

namespace A107875.P7524242275938961685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (A133263 (n + 1)).toNat + (n : ℤ)).toNat

end

end A107875.P7524242275938961685

/-!
# A107876: Triangular matrix T, read by rows, that satisfies: [T^k](n,k) = T(n,k-1) for n>=k>0, or, equivalently, (column k of T^k) = SHIFT_LEFT(column k-1 of T) when zeros above the diagonal are ignored.

The programs for A107876, there is no canonical definition to state claims against.
-/

/-! ## A107876.P1559402506992565176

`A228708(n)+A152798(A229158(n))`
-/

namespace A107876.P1559402506992565176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228708 n + A152798 (A229158 n).toNat

end

end A107876.P1559402506992565176

/-! ## A107876.P7102433048671602462

`A071980(A228708(n))+A000265(A000079(n))`
-/

namespace A107876.P7102433048671602462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071980 (A228708 n).toNat + A000265 (A000079 n).toNat

end

end A107876.P7102433048671602462

/-! ## A107876.P7089015187272438720

`A180101(A184962(n+1)+1)`
-/

namespace A107876.P7089015187272438720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (A184962 (n + 1) + 1).toNat

end

end A107876.P7089015187272438720

/-! ## A107876.P309864984210767202

`A180101(A265608(n+1)+1)`
-/

namespace A107876.P309864984210767202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (A265608 (n + 1) + 1).toNat

end

end A107876.P309864984210767202

/-!
# A107877: Column 1 of triangle A107876.

The programs for A107877, there is no canonical definition to state claims against.
-/

/-! ## A107877.P13339519647548454592

`A107876(∑[n+1])`
-/

namespace A107877.P13339519647548454592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107876 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A107877.P13339519647548454592

/-! ## A107877.P16683222055162810942

`abs(A121435(∑[n+1]))`
-/

namespace A107877.P16683222055162810942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A121435 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A107877.P16683222055162810942

/-! ## A107877.P7749128278771283031

`A107881(n+1)-A107882(n)`
-/

namespace A107877.P7749128278771283031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107881 (n + 1) - A107882 n

end

end A107877.P7749128278771283031

/-! ## A107877.P4138156981679201241

`A107876(A253145(n))*A263919(n²)`
-/

namespace A107877.P4138156981679201241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107876 (A253145 n).toNat * A263919 (n ^ 2)

end

end A107877.P4138156981679201241

/-! ## A107877.P16096766704892413439

`A107876(A253145(n))+char[A017451(n)]`
-/

namespace A107877.P16096766704892413439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017451 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107876 (A253145 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A107877.P16096766704892413439

/-! ## A107877.P15968342138326328011

`char[A137719(n)]*A107876(A253145(n))`
-/

namespace A107877.P15968342138326328011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137719 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A107876 (A253145 n).toNat

end

end A107877.P15968342138326328011

/-! ## A107877.P17721860048390675487

`char[A052331(n+1)]*A107876(A253145(n))`
-/

namespace A107877.P17721860048390675487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052331 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A107876 (A253145 n).toNat

end

end A107877.P17721860048390675487

/-! ## A107877.P15224225238494796139

`abs(A305605(∑[char[1]+n]))`
-/

namespace A107877.P15224225238494796139
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A305605 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A107877.P15224225238494796139

/-! ## A107877.P7803270656270460889

`lcm(A020985(n), A305605(A000096(n)))`
-/

namespace A107877.P7803270656270460889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A305605 (A000096 n).toNat)

end

end A107877.P7803270656270460889

/-! ## A107877.P2885684160517531591

`A305605(A253145(n))-A305605(A000124(n))`
-/

namespace A107877.P2885684160517531591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305605 (A253145 n).toNat - A305605 (A000124 n).toNat

end

end A107877.P2885684160517531591

/-!
# A107878: Column 2 of triangle A107876.

The programs for A107878, there is no canonical definition to state claims against.
-/

/-! ## A107878.P6172212788275067669

`A107876(∑[n+2]+3)`
-/

namespace A107878.P6172212788275067669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107876 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A107878.P6172212788275067669

/-! ## A107878.P10901945829196849033

`A107884(A340266(n+1)+1)`
-/

namespace A107878.P10901945829196849033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107884 (A340266 (n + 1) + 1).toNat

end

end A107878.P10901945829196849033

/-! ## A107878.P10381888077646796790

`A107884(A167614(n+1)-A000007(n))`
-/

namespace A107878.P10381888077646796790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107884 (A167614 (n + 1) - A000007 n).toNat

end

end A107878.P10381888077646796790

/-! ## A107878.P13595959727775114628

`A107884(A167614(n+1)%A001287(n))`
-/

namespace A107878.P13595959727775114628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107884 (Int.tmod (A167614 (n + 1)) (A001287 (n + 10))).toNat

end

end A107878.P13595959727775114628

/-! ## A107878.P9979542854771293436

`A107884(and(A057428(n), A167614(n+1)))`
-/

namespace A107878.P9979542854771293436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107884 (Int.land (A057428 n) (A167614 (n + 1))).toNat

end

end A107878.P9979542854771293436

/-! ## A107878.P7494025788321931159

`A107884(A057428(n)²*A167614(n+1))`
-/

namespace A107878.P7494025788321931159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107884 (A057428 n ^ 2 * A167614 (n + 1)).toNat

end

end A107878.P7494025788321931159

/-! ## A107878.P10137162547478183825

`A107884(A167614(n+1)-(A057428(n)+1))`
-/

namespace A107878.P10137162547478183825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107884 (A167614 (n + 1) - (A057428 n + 1)).toNat

end

end A107878.P10137162547478183825

/-! ## A107878.P2928371099406283547

`A107884(A057428(n)*A167614(n+1)*A057428(n))`
-/

namespace A107878.P2928371099406283547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107884 (A057428 n * A167614 (n + 1) * A057428 n).toNat

end

end A107878.P2928371099406283547

/-!
# A107879: Column 3 of triangle A107876.

The programs for A107879, there is no canonical definition to state claims against.
-/

/-! ## A107879.P14652465452556846693

`A107876(A167614(n+2))`
-/

namespace A107879.P14652465452556846693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107876 (A167614 (n + 2)).toNat

end

end A107879.P14652465452556846693

/-! ## A107879.P3685767822064425068

`A107876(A052905(n)+8)`
-/

namespace A107879.P3685767822064425068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107876 (A052905 n + 8).toNat

end

end A107879.P3685767822064425068

/-! ## A107879.P7117191236403115753

`A107876(A055999(n)+9)`
-/

namespace A107879.P7117191236403115753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107876 (A055999 n + 9).toNat

end

end A107879.P7117191236403115753

/-! ## A107879.P13352765315752630829

`A107876(eq[3, A002262(n)])`
-/

namespace A107879.P13352765315752630829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107879.P13352765315752630829

/-! ## A107879.P2575608747019794426

`A107876(A340266(n+2)+1)`
-/

namespace A107879.P2575608747019794426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107876 (A340266 (n + 2) + 1).toNat

end

end A107879.P2575608747019794426

/-! ## A107879.P17789177574764946987

`A107876(eq[4, A002260(n+1)])`
-/

namespace A107879.P17789177574764946987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107879.P17789177574764946987

/-! ## A107879.P13117225637842825638

`A107876(eq[4, A134868(n+1)])`
-/

namespace A107879.P13117225637842825638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107879.P13117225637842825638

/-!
# A107880: Matrix square of triangle A107876; equals matrix product of triangles: A107876^2 = A107862^-1*A107870 = A107867^-1*A107873.

The programs for A107880, there is no canonical definition to state claims against.
-/

/-! ## A107880.P1882753219984606902

`A078129(A122538(n+1)+1)`
-/

namespace A107880.P1882753219984606902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078129 (A122538 (n + 1) + 1).toNat

end

end A107880.P1882753219984606902

/-! ## A107880.P16348948146658399972

`A125007(A127631(n+1)+2)`
-/

namespace A107880.P16348948146658399972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125007 (A127631 (n + 1) + 2).toNat

end

end A107880.P16348948146658399972

/-! ## A107880.P10635333015224124766

`A317145(A001006(n))+A090238(n+1)`
-/

namespace A107880.P10635333015224124766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317145 (A001006 n).toNat + A090238 (n + 1)

end

end A107880.P10635333015224124766

/-!
# A107881: Column 0 of triangle A107880.

The programs for A107881, there is no canonical definition to state claims against.
-/

/-! ## A107881.P3673721808935842425

`A107880(∑[n])`
-/

namespace A107881.P3673721808935842425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107880 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A107881.P3673721808935842425

/-! ## A107881.P17947817692730974251

`record[A107880(n)]`
-/

namespace A107881.P17947817692730974251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107881.P17947817692730974251

/-! ## A107881.P15097231474594908091

`abs(A121436(∑[n]))`
-/

namespace A107881.P15097231474594908091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A121436 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A107881.P15097231474594908091

/-! ## A107881.P16796401165698530935

`record[gcd(A004247(n), A121436(n))]`
-/

namespace A107881.P16796401165698530935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004247 n) (A121436 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107881.P16796401165698530935

/-! ## A107881.P961138782971830342

`record[lcm(A121436(n), A145677(n))]`
-/

namespace A107881.P961138782971830342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A121436 n) (A145677 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107881.P961138782971830342

/-!
# A107882: Column 1 of triangle A107880.

The programs for A107882, there is no canonical definition to state claims against.
-/

/-! ## A107882.P11478709522841239126

`A107880(∑[n+1]+1)`
-/

namespace A107882.P11478709522841239126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107880 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A107882.P11478709522841239126

/-! ## A107882.P15260247370549880984

`record[A107880(A014132(n+1))]`
-/

namespace A107882.P15260247370549880984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107880 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107882.P15260247370549880984

/-! ## A107882.P3778922475677606836

`record[gcd(A107880(n), A145677(n))]`
-/

namespace A107882.P3778922475677606836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A107880 n) (A145677 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107882.P3778922475677606836

/-! ## A107882.P14618107976395773968

`A107881(n+1)-A107877(n)`
-/

namespace A107882.P14618107976395773968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107881 (n + 1) - A107877 n

end

end A107882.P14618107976395773968

/-! ## A107882.P12038595149206962902

`record[A107880(A003057(n+2)+n)]`
-/

namespace A107882.P12038595149206962902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107880 (A003057 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107882.P12038595149206962902

/-! ## A107882.P6506890096501268020

`A107881(n+1)-A107876(∑[n+1])`
-/

namespace A107882.P6506890096501268020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107881 (n + 1) - A107876 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A107882.P6506890096501268020

/-!
# A107883: Column 3 of triangle A107880.

The programs for A107883, there is no canonical definition to state claims against.
-/

/-! ## A107883.P14876180055595222325

`A107880(A167614(n+2))`
-/

namespace A107883.P14876180055595222325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107880 (A167614 (n + 2)).toNat

end

end A107883.P14876180055595222325

/-! ## A107883.P7527331333607014366

`A107880(A055999(n)+9)`
-/

namespace A107883.P7527331333607014366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107880 (A055999 n + 9).toNat

end

end A107883.P7527331333607014366

/-! ## A107883.P4690065325698594936

`A107880(eq[3, A002262(n)])`
-/

namespace A107883.P4690065325698594936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107880 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107883.P4690065325698594936

/-! ## A107883.P7027940560658658812

`A107880(eq[8, A059268(n)])`
-/

namespace A107883.P7027940560658658812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107880 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107883.P7027940560658658812

/-! ## A107883.P13454007054243356776

`A107880(eq[4, A002260(n+1)])`
-/

namespace A107883.P13454007054243356776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107880 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107883.P13454007054243356776

/-!
# A107885: Column 0 of triangle A107884.

The programs for A107885, there is no canonical definition to state claims against.
-/

/-! ## A107885.P16894593223385349178

`A107884(∑[n])`
-/

namespace A107885.P16894593223385349178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107884 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A107885.P16894593223385349178

/-! ## A107885.P2432779976545594701

`record[A107884(n)]`
-/

namespace A107885.P2432779976545594701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107885.P2432779976545594701

/-! ## A107885.P10081048582811491026

`abs(A121437(∑[n]))`
-/

namespace A107885.P10081048582811491026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A121437 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A107885.P10081048582811491026

/-! ## A107885.P11105866173037144314

`or(C(n, n²), A107884(A000217(n)))`
-/

namespace A107885.P11105866173037144314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose n (n ^ 2) : ℤ) (A107884 (A000217 n).toNat)

end

end A107885.P11105866173037144314

/-! ## A107885.P16994763356696684051

`gcd(A000038(n), A107884(A000217(n)))`
-/

namespace A107885.P16994763356696684051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A107884 (A000217 n).toNat)

end

end A107885.P16994763356696684051

/-! ## A107885.P14175895135756694813

`or(A000007(n), A107884(A000217(n)))`
-/

namespace A107885.P14175895135756694813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A107884 (A000217 n).toNat)

end

end A107885.P14175895135756694813

/-! ## A107885.P8150254950493352660

`A057979(2*n)*A107884(A000217(n))`
-/

namespace A107885.P8150254950493352660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (2 * n) * A107884 (A000217 n).toNat

end

end A107885.P8150254950493352660

/-! ## A107885.P16563613540765083708

`A014963(6*(n+1))*A107884(A000217(n))`
-/

namespace A107885.P16563613540765083708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A107884 (A000217 n).toNat

end

end A107885.P16563613540765083708

/-! ## A107885.P5378858162027802039

`A008683(A020484(n))²*A107884(A000217(n))`
-/

namespace A107885.P5378858162027802039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A020484 n).toNat ^ 2 * A107884 (A000217 n).toNat

end

end A107885.P5378858162027802039

/-! ## A107885.P3164355975419547491

`A288520(A288522(n+2)+1)+A107884(A000217(n))`
-/

namespace A107885.P3164355975419547491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288520 (A288522 (n + 2) + 1).toNat + A107884 (A000217 n).toNat

end

end A107885.P3164355975419547491

/-!
# A107886: Column 1 of triangle A107884.

The programs for A107886, there is no canonical definition to state claims against.
-/

/-! ## A107886.P32787391430959120

`A107884(∑[n+1]+1)`
-/

namespace A107886.P32787391430959120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107884 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A107886.P32787391430959120

/-! ## A107886.P11017975251671477925

`abs(A121436(A000124(n+1)))`
-/

namespace A107886.P11017975251671477925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A121436 (A000124 (n + 1)).toNat|

end

end A107886.P11017975251671477925

/-! ## A107886.P9031662665486807298

`record[gcd(A121436(n), A145677(n))]`
-/

namespace A107886.P9031662665486807298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A121436 n) (A145677 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107886.P9031662665486807298

/-! ## A107886.P11125353362722206465

`A107885(n+1)-A107881(n+1)`
-/

namespace A107886.P11125353362722206465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107885 (n + 1) - A107881 (n + 1)

end

end A107886.P11125353362722206465

/-! ## A107886.P4642491447516376698

`record[A107884(comp[A055802(2*(n+1))])]`
-/

namespace A107886.P4642491447516376698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055802 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107884 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107886.P4642491447516376698

/-!
# A107887: Column 2 of triangle A107884.

The programs for A107887, there is no canonical definition to state claims against.
-/

/-! ## A107887.P14177910326404198407

`A107884(∑[n+2]+3)`
-/

namespace A107887.P14177910326404198407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107884 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A107887.P14177910326404198407

/-! ## A107887.P2475041078813272888

`record[A107884(comp[A055802(n+2)])]`
-/

namespace A107887.P2475041078813272888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055802 (n + 2)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107884 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107887.P2475041078813272888

/-! ## A107887.P17666128249977775560

`A107882(n+1)-record[A107876(n)]`
-/

namespace A107887.P17666128249977775560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107882 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107887.P17666128249977775560

/-! ## A107887.P247804788627985537

`A107882(n+1)-A107877(n+1)`
-/

namespace A107887.P247804788627985537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107882 (n + 1) - A107877 (n + 1)

end

end A107887.P247804788627985537

/-! ## A107887.P14413697662892646646

`record[A107884(lt[n, A176566(n)])]`
-/

namespace A107887.P14413697662892646646
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176566 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107884 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107887.P14413697662892646646

/-!
# A107888: Column 4 of triangle A107884.

The programs for A107888, there is no canonical definition to state claims against.
-/

/-! ## A107888.P7593181208441887039

`A107884(A155212(n)+12)`
-/

namespace A107888.P7593181208441887039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107884 (A155212 n + 12).toNat

end

end A107888.P7593181208441887039

/-! ## A107888.P13097140694957617144

`A107884(eq[4, A002262(n)])`
-/

namespace A107888.P13097140694957617144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107884 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107888.P13097140694957617144

/-! ## A107888.P17119436751018025325

`A107884(eq[16, A059268(n)])`
-/

namespace A107888.P17119436751018025325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107884 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107888.P17119436751018025325

/-! ## A107888.P4033275051019478452

`A107884(eq[16, A143844(n)])`
-/

namespace A107888.P4033275051019478452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107884 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107888.P4033275051019478452

/-! ## A107888.P7948870934603851257

`A107884(A000217(n+4)+4)`
-/

namespace A107888.P7948870934603851257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107884 (A000217 (n + 4) + 4).toNat

end

end A107888.P7948870934603851257

/-! ## A107888.P15242507019348298020

`A107884(eq[5, A002260(n+1)])`
-/

namespace A107888.P15242507019348298020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107884 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107888.P15242507019348298020

/-!
# A107889: Triangular matrix T, read by rows, that satisfies: [T^-k](n,k) = -T(n,k-1) for n >= k > 0, or, equivalently, (column k of T^-k) = -SHIFT_LEFT(column k-1 of T) when zeros above the diagonal are ignored. Also, matrix inverse of triangle A107876.

The programs for A107889, there is no canonical definition to state claims against.
-/

/-! ## A107889.P5097843364512713192

`A327103(A281891(n+2))-A004248(n+1)`
-/

namespace A107889.P5097843364512713192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327103 (A281891 (n + 2)).toNat - A004248 (n + 1)

end

end A107889.P5097843364512713192

/-! ## A107889.P2397455347806170817

`A247309(A025677(n+1))-A264620(A189449(n+1))`
-/

namespace A107889.P2397455347806170817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247309 (A025677 (n + 1)).toNat - A264620 (A189449 (n + 1)).toNat

end

end A107889.P2397455347806170817

/-! ## A107889.P679533288811487539

`A090193(A047101(n))-A047089(n)`
-/

namespace A107889.P679533288811487539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090193 (A047101 n).toNat - A047089 n

end

end A107889.P679533288811487539

/-! ## A107889.P13822532444185773136

`A008683(A113394(n))-A341907(n)`
-/

namespace A107889.P13822532444185773136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A113394 n).toNat - A341907 n

end

end A107889.P13822532444185773136

/-!
# A107890: Semiprimes that are the product of two members of A007645.

The programs for A107890, the canonical program `A107890.P9207094795219345944` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107890 has offset 1).

The definition of A107890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107890.P9207094795219345944

`∪[3*A007645(n+1), A108164(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A107890

/-- `∪[3*A007645(n+1), A108164(n+1)]` -/
def P9207094795219345944.Spec : Prop :=
  ∀ n, (P9207094795219345944.a n : ℤ) = A107890 (n + 1)

theorem P9207094795219345944.correct : P9207094795219345944.Spec := by
  intro n
  simp only [A107890, Nat.add_sub_cancel]

end A107890

/-! ## A107890.P3282123737190614738

`filter[A364614(n+2), A359828(#)]`
-/

namespace A107890.P3282123737190614738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364614 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A107890.P3282123737190614738

namespace A107890

/-- `filter[A364614(n+2), A359828(#)]` -/
def P3282123737190614738.Spec : Prop :=
  ∀ n, P3282123737190614738.a n = A107890 (n + 1)

end A107890

/-! ## A107890.P14491439231332295450

`∩[A230834(n+1), A364614(n+1)]`
-/

namespace A107890.P14491439231332295450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107890.P14491439231332295450

namespace A107890

/-- `∩[A230834(n+1), A364614(n+1)]` -/
def P14491439231332295450.Spec : Prop :=
  ∀ n, (P14491439231332295450.a n : ℤ) = A107890 (n + 1)

end A107890

/-! ## A107890.P13685707642011582422

`filter[A364614(n+1), A064911(#)]`
-/

namespace A107890.P13685707642011582422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A107890.P13685707642011582422

namespace A107890

/-- `filter[A364614(n+1), A064911(#)]` -/
def P13685707642011582422.Spec : Prop :=
  ∀ n, P13685707642011582422.a n = A107890 (n + 1)

end A107890

/-! ## A107890.P7435308468852975556

`filter[A364614(n+1), A353480(#)]`
-/

namespace A107890.P7435308468852975556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A107890.P7435308468852975556

namespace A107890

/-- `filter[A364614(n+1), A353480(#)]` -/
def P7435308468852975556.Spec : Prop :=
  ∀ n, P7435308468852975556.a n = A107890 (n + 1)

end A107890

/-! ## A107890.P8511698525381456727

`∩[A046315(n+1), A364614(n+1)]`
-/

namespace A107890.P8511698525381456727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107890.P8511698525381456727

namespace A107890

/-- `∩[A046315(n+1), A364614(n+1)]` -/
def P8511698525381456727.Spec : Prop :=
  ∀ n, (P8511698525381456727.a n : ℤ) = A107890 (n + 1)

end A107890

/-! ## A107890.P13107160389959576940

`∩[A001358(n+1), A364614(n+1)]`
-/

namespace A107890.P13107160389959576940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107890.P13107160389959576940

namespace A107890

/-- `∩[A001358(n+1), A364614(n+1)]` -/
def P13107160389959576940.Spec : Prop :=
  ∀ n, (P13107160389959576940.a n : ℤ) = A107890 (n + 1)

end A107890

/-! ## A107890.P9417509534925861312

`∩[A077135(n+1), A364614(n+1)]`
-/

namespace A107890.P9417509534925861312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107890.P9417509534925861312

namespace A107890

/-- `∩[A077135(n+1), A364614(n+1)]` -/
def P9417509534925861312.Spec : Prop :=
  ∀ n, (P9417509534925861312.a n : ℤ) = A107890 (n + 1)

end A107890

/-! ## A107890.P7826283378891214866

`∩[A077136(n+1), A364614(n+1)]`
-/

namespace A107890.P7826283378891214866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107890.P7826283378891214866

namespace A107890

/-- `∩[A077136(n+1), A364614(n+1)]` -/
def P7826283378891214866.Spec : Prop :=
  ∀ n, (P7826283378891214866.a n : ℤ) = A107890 (n + 1)

end A107890

/-! ## A107890.P16280249620552210652

`∩[A066498(n+1), A230834(n+1)]`
-/

namespace A107890.P16280249620552210652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107890.P16280249620552210652

namespace A107890

/-- `∩[A066498(n+1), A230834(n+1)]` -/
def P16280249620552210652.Spec : Prop :=
  ∀ n, (P16280249620552210652.a n : ℤ) = A107890 (n + 1)

end A107890

/-! ## A107890.P4637990154846462331

`∩[A069237(n+1), A230834(n+1)]`
-/

namespace A107890.P4637990154846462331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107890.P4637990154846462331

namespace A107890

/-- `∩[A069237(n+1), A230834(n+1)]` -/
def P4637990154846462331.Spec : Prop :=
  ∀ n, (P4637990154846462331.a n : ℤ) = A107890 (n + 1)

end A107890

/-! ## A107890.P17285531237862873171

`∩[A020491(n+1), A230834(n+1)]`
-/

namespace A107890.P17285531237862873171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107890.P17285531237862873171

namespace A107890

/-- `∩[A020491(n+1), A230834(n+1)]` -/
def P17285531237862873171.Spec : Prop :=
  ∀ n, (P17285531237862873171.a n : ℤ) = A107890 (n + 1)

end A107890

/-!
# A107891: a(n) = (n+1)*(n+2)^2*(n+3)^2*(n+4)*(3n^2 + 15n + 20)/2880.

The programs for A107891, the canonical program `A107891.P7884879305984148283` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107891 has offset 0).

The definition of A107891 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107891.P7884879305984148283

`(A000330(n+2)*A000538(n+2)-A000537(n+2)²)/4`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A107891

/-- `(A000330(n+2)*A000538(n+2)-A000537(n+2)²)/4` -/
def P7884879305984148283.Spec : Prop :=
  ∀ n, P7884879305984148283.a n = (A107891 n : ℚ)

end A107891

/-! ## A107891.P10808906617114565158

`∑[A114239(n)]`
-/

namespace A107891.P10808906617114565158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114239 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107891.P10808906617114565158

namespace A107891

/-- `∑[A114239(n)]` -/
def P10808906617114565158.Spec : Prop :=
  ∀ n, P10808906617114565158.a n = A107891 n

end A107891

/-! ## A107891.P13936213665979638611

`∑[∑[∑[A160747(n)+a(n-1)]]]` with `a(0)=1`
-/

namespace A107891.P13936213665979638611
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f3 =>
  A160747 n + f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107891.P13936213665979638611

namespace A107891

/-- `∑[∑[∑[A160747(n)+a(n-1)]]]` -/
def P13936213665979638611.Spec : Prop :=
  ∀ n, P13936213665979638611.a n = A107891 n

end A107891

/-! ## A107891.P12982949362572325953

`∑[∑[n+1]/(n+1)*A213547(n+1)]`
-/

namespace A107891.P12982949362572325953
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / (n + 1 : ℚ) * (A213547 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107891.P12982949362572325953

namespace A107891

/-- `∑[∑[n+1]/(n+1)*A213547(n+1)]` -/
def P12982949362572325953.Spec : Prop :=
  ∀ n, P12982949362572325953.a n = (A107891 n : ℚ)

end A107891

/-! ## A107891.P14783964336200788898

`A047819(n+1)-(A114239(n+1)+A047819(n))`
-/

namespace A107891.P14783964336200788898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047819 (n + 1) - (A114239 (n + 1) + A047819 n)

end

end A107891.P14783964336200788898

namespace A107891

/-- `A047819(n+1)-(A114239(n+1)+A047819(n))` -/
def P14783964336200788898.Spec : Prop :=
  ∀ n, P14783964336200788898.a n = A107891 n

end A107891

/-! ## A107891.P537370843178049593

`∑[∑[A083200(n+2)]]`
-/

namespace A107891.P537370843178049593
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083200 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107891.P537370843178049593

namespace A107891

/-- `∑[∑[A083200(n+2)]]` -/
def P537370843178049593.Spec : Prop :=
  ∀ n, P537370843178049593.a n = A107891 n

end A107891

/-! ## A107891.P11516192672374428029

`(A107968(n+1)-A107969(n+1))/2`
-/

namespace A107891.P11516192672374428029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107968 (n + 1) - A107969 (n + 1) : ℚ) / 2

end

end A107891.P11516192672374428029

namespace A107891

/-- `(A107968(n+1)-A107969(n+1))/2` -/
def P11516192672374428029.Spec : Prop :=
  ∀ n, P11516192672374428029.a n = (A107891 n : ℚ)

end A107891

/-!
# A107892: Index of first occurrence of n-th prime in A001203, the continued fraction for Pi.

The programs for A107892, there is no canonical definition to state claims against.
-/

/-! ## A107892.P17653548183825227456

`A032523(A000040(n+1))`
-/

namespace A107892.P17653548183825227456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032523 (A000040 (n + 1)).toNat

end

end A107892.P17653548183825227456

/-! ## A107892.P6533860866604717294

`A032523(A008578(n+2))`
-/

namespace A107892.P6533860866604717294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032523 (A008578 (n + 2)).toNat

end

end A107892.P6533860866604717294

/-! ## A107892.P3472726348545247740

`A032523(A182986(n+2))`
-/

namespace A107892.P3472726348545247740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032523 (A182986 (n + 2)).toNat

end

end A107892.P3472726348545247740

/-! ## A107892.P4919441709698201270

`A032523(eq[2, A077462(n)])`
-/

namespace A107892.P4919441709698201270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107892.P4919441709698201270

/-! ## A107892.P156464075591861990

`A032523(record[A006530(n+2)])`
-/

namespace A107892.P156464075591861990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032523 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A107892.P156464075591861990

/-! ## A107892.P12625306104534620136

`A032523(record[A014963(n+2)])`
-/

namespace A107892.P12625306104534620136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032523 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A107892.P12625306104534620136

/-! ## A107892.P9422055963187516272

`A032523(record[A020639(n+2)])`
-/

namespace A107892.P9422055963187516272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032523 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A107892.P9422055963187516272

/-! ## A107892.P722192598914275838

`A032523(A001747(n+2)/2)`
-/

namespace A107892.P722192598914275838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032523 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

end

end A107892.P722192598914275838

/-!
# A107893: Triangle read by rows, related to A055129 (repunits in base k).

The programs for A107893, there is no canonical definition to state claims against.
-/

/-! ## A107893.P841082993567746881

`A137649(n+1)*A233543(n)`
-/

namespace A107893.P841082993567746881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137649 (n + 1) * A233543 n

end

end A107893.P841082993567746881

/-! ## A107893.P13394297448709737714

`A002262(n)!*A137649(n+1)`
-/

namespace A107893.P13394297448709737714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A137649 (n + 1)

end

end A107893.P13394297448709737714

/-! ## A107893.P15065234148596871981

`sqrt(A143844(n))!*A137649(n+1)`
-/

namespace A107893.P15065234148596871981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (A143844 n : ℝ))).toNat : ℤ) * A137649 (n + 1)

end

end A107893.P15065234148596871981

/-! ## A107893.P5842226321609765126

`(A036560(n)+char[∑[n]])*A233543(n)`
-/

namespace A107893.P5842226321609765126
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036560 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A233543 n

end

end A107893.P5842226321609765126

/-! ## A107893.P3915442107585056624

`(A036560(n)+char[∑[n]])*A002262(n)!`
-/

namespace A107893.P3915442107585056624
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036560 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * (Nat.factorial (A002262 n).toNat : ℤ)

end

end A107893.P3915442107585056624

/-! ## A107893.P11885083124480687063

`A036560(A066182(n+1))*A233543(n)`
-/

namespace A107893.P11885083124480687063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036560 (A066182 (n + 1)).toNat * A233543 n

end

end A107893.P11885083124480687063

/-! ## A107893.P6712900799638712633

`A010054(n)+A036560(n)*A233543(n)`
-/

namespace A107893.P6712900799638712633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + A036560 n * A233543 n

end

end A107893.P6712900799638712633

/-! ## A107893.P9824868717452009318

`A002262(n)!*A036560(A066182(n+1))`
-/

namespace A107893.P9824868717452009318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A036560 (A066182 (n + 1)).toNat

end

end A107893.P9824868717452009318

/-! ## A107893.P1877056953810182362

`abs(A197870(n))+A036560(n)*A233543(n)`
-/

namespace A107893.P1877056953810182362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A197870 n| + A036560 n * A233543 n

end

end A107893.P1877056953810182362

/-!
# A107894: Sum over the products of factorials of parts in all partitions of n where the sum runs over the number of different parts only.

The programs for A107894, there is no canonical definition to state claims against.
-/

/-! ## A107894.P3404540858299689837

`or(1, A214701(A107895(n)))`
-/

namespace A107894.P3404540858299689837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A214701 (A107895 n).toNat)

end

end A107894.P3404540858299689837

/-! ## A107894.P11767627003714058628

`A004525(A111063(n)+A038156(n))`
-/

namespace A107894.P11767627003714058628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A111063 n + A038156 n).toNat

end

end A107894.P11767627003714058628

/-! ## A107894.P1330969551276068311

`A004525(A135312(n)+A135307(n))`
-/

namespace A107894.P1330969551276068311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A135312 n + A135307 n).toNat

end

end A107894.P1330969551276068311

/-!
# A107895: Euler transform of n!.

The programs for A107895, there is no canonical definition to state claims against.
-/

/-! ## A107895.P17760929726145646307

`A316662(xor(A000522(n), A193267(n+1)))`
-/

namespace A107895.P17760929726145646307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316662 (Int.xor (A000522 n) (A193267 (n + 1))).toNat

end

end A107895.P17760929726145646307

/-! ## A107895.P4389363842530517771

`3*A076437(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A107895.P4389363842530517771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 * A076437 (a (n - 1)).toNat

end

end A107895.P4389363842530517771

/-!
# A107896: Position of n-th odd prime in A073653.

The programs for A107896, there is no canonical definition to state claims against.
-/

/-! ## A107896.P17720115392030369111

`A107897(∑[4^A185213(n)])`
-/

namespace A107896.P17720115392030369111
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A185213 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107897 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A107896.P17720115392030369111

/-! ## A107896.P5163014729804560966

`A107897(∑[(A185213(n)+1)²])`
-/

namespace A107896.P5163014729804560966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A185213 n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107897 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A107896.P5163014729804560966

/-! ## A107896.P13180847535493880351

`n+1+Δ[A288622(A000079(n))]`
-/

namespace A107896.P13180847535493880351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288622 (A000079 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (f1 (n + 1) - f1 n)

end

end A107896.P13180847535493880351

/-! ## A107896.P13100920139772023832

`A107897(n+1)-A185284(record[∑{p}[n, #]])`
-/

namespace A107896.P13100920139772023832
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107897 (n + 1) - A185284 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A107896.P13100920139772023832

/-!
# A107897: Position of n in A107896.

The programs for A107897, there is no canonical definition to state claims against.
-/

/-! ## A107897.P15325787101633128214

`A033270(A073653(n+1))`
-/

namespace A107897.P15325787101633128214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A073653 (n + 1)).toNat

end

end A107897.P15325787101633128214

/-! ## A107897.P10568974093592815655

`A079067(p?[A073653(n+1)])`
-/

namespace A107897.P10568974093592815655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107897.P10568974093592815655

/-! ## A107897.P7178064226501334596

`A082460(p?[A073653(n+1)])`
-/

namespace A107897.P7178064226501334596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082460 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107897.P7178064226501334596

/-! ## A107897.P1335464336010283672

`A252735(p?[A073653(n+1)])`
-/

namespace A107897.P1335464336010283672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107897.P1335464336010283672

/-! ## A107897.P3040851929200818332

`A277892(p?[A073653(n+1)])`
-/

namespace A107897.P3040851929200818332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277892 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107897.P3040851929200818332

/-! ## A107897.P528681389095641740

`A318995(p?[A073653(n+1)])`
-/

namespace A107897.P528681389095641740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107897.P528681389095641740

/-! ## A107897.P10499094488080936342

`A329622(p?[A073653(n+1)])`
-/

namespace A107897.P10499094488080936342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329622 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107897.P10499094488080936342

/-! ## A107897.P926529051634161117

`A000720(A073653(n+1)-1)`
-/

namespace A107897.P926529051634161117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A073653 (n + 1) - 1).toNat

end

end A107897.P926529051634161117

/-! ## A107897.P15947608635968291706

`A004788(A073653(n+1)-1)`
-/

namespace A107897.P15947608635968291706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004788 (A073653 (n + 1) - 1).toNat

end

end A107897.P15947608635968291706

/-! ## A107897.P5299691268373841581

`A252735(2*A073653(n+1))`
-/

namespace A107897.P5299691268373841581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (2 * A073653 (n + 1)).toNat

end

end A107897.P5299691268373841581

/-!
# A107898: Length of continued fraction for n/prime(n).

The programs for A107898, there is no canonical definition to state claims against.
-/

/-! ## A107898.P1147705395395270019

`A107901(n+1)+1`
-/

namespace A107898.P1147705395395270019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107901 (n + 1) + 1

end

end A107898.P1147705395395270019

/-! ## A107898.P7465539226198614209

`A020725(A107901(n+1))`
-/

namespace A107898.P7465539226198614209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A107901 (n + 1)).toNat

end

end A107898.P7465539226198614209

/-! ## A107898.P10869925780273586114

`A335620(A000040(n+1))+1`
-/

namespace A107898.P10869925780273586114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335620 (A000040 (n + 1)).toNat + 1

end

end A107898.P10869925780273586114

/-! ## A107898.P4160588903269456504

`A335620(A058853(n+1))+1`
-/

namespace A107898.P4160588903269456504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335620 (A058853 (n + 1)).toNat + 1

end

end A107898.P4160588903269456504

/-! ## A107898.P13825518467308390915

`A335620(A069675(n+1))+1`
-/

namespace A107898.P13825518467308390915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335620 (A069675 (n + 1)).toNat + 1

end

end A107898.P13825518467308390915

/-!
# A107899: Numbers k such that the sum of the terms of the continued fraction for prime(k)/k is prime.

The programs for A107899, there is no canonical definition to state claims against.
-/

/-! ## A107899.P13856313886870547071

`eq[1, A003415(A107900(n+1))]+1`
-/

namespace A107899.P13856313886870547071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A107900 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A107899.P13856313886870547071

/-! ## A107899.P4285717638385861974

`record[A000027(n+1)/A322867(A107900(n+1))]`
-/

namespace A107899.P4285717638385861974
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A322867 (A107900 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107899.P4285717638385861974

/-! ## A107899.P2779928932579399487

`record[A008619(2*n)/A322867(A107900(n+1))]`
-/

namespace A107899.P2779928932579399487
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A322867 (A107900 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107899.P2779928932579399487

/-! ## A107899.P15289906281515354757

`record[A029579(2*n)/A322867(A107900(n+1))]`
-/

namespace A107899.P15289906281515354757
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029579 (2 * n) : ℚ) / (A322867 (A107900 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107899.P15289906281515354757

/-! ## A107899.P13834539865014655166

`eq[A026831(A143644(n)), A077267(n)]`
-/

namespace A107899.P13834539865014655166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026831 (A143644 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107899.P13834539865014655166

