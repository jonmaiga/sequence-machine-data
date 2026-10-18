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
import Seq.B000.C034
import Seq.B000.C036
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
# A026000: a(n) = T(2n, n), where T is the Delannoy triangle (A008288).

The programs for A026000, there is no canonical definition to state claims against.
-/

/-! ## A026000.P4079650183600097896

`A099605(∑[4*n])`
-/

namespace A026000.P4079650183600097896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099605 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026000.P4079650183600097896

/-! ## A026000.P3752681657424003971

`A114123(∑[4*n])`
-/

namespace A026000.P3752681657424003971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114123 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026000.P3752681657424003971

/-! ## A026000.P11754157448195483358

`A114164(∑[4*n])`
-/

namespace A026000.P11754157448195483358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114164 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026000.P11754157448195483358

/-! ## A026000.P16266853313099845044

`A117317(∑[4*n])`
-/

namespace A026000.P16266853313099845044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117317 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026000.P16266853313099845044

/-! ## A026000.P16488916138465701576

`A184883(∑[4*n])`
-/

namespace A026000.P16488916138465701576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184883 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026000.P16488916138465701576

/-! ## A026000.P18150581381600900729

`A056242(∑[4*n]+1)`
-/

namespace A026000.P18150581381600900729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056242 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A026000.P18150581381600900729

/-! ## A026000.P11544642138631956965

`record[gcd(A114123(n), A184883(n))]`
-/

namespace A026000.P11544642138631956965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114123 n) (A184883 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026000.P11544642138631956965

/-! ## A026000.P14165031893441816413

`record[gcd(A056242(n+1), A117317(n))]`
-/

namespace A026000.P14165031893441816413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056242 (n + 1)) (A117317 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026000.P14165031893441816413

/-! ## A026000.P2195319931706253447

`A341470(∑[n+3])`
-/

namespace A026000.P2195319931706253447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341470 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026000.P2195319931706253447

/-! ## A026000.P6049105247907395668

`A268545(n)/A000984(n)`
-/

namespace A026000.P6049105247907395668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268545 n : ℚ) / (A000984 n : ℚ)

end

end A026000.P6049105247907395668

/-!
# A026001: a(n) = T(3n,n), where T = Delannoy triangle (A008288).

The programs for A026001, there is no canonical definition to state claims against.
-/

/-! ## A026001.P17039828762821999572

`A297192(∑[4*n])`
-/

namespace A026001.P17039828762821999572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297192 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026001.P17039828762821999572

/-! ## A026001.P12043294929901391092

`A297191((2*n)²+n)`
-/

namespace A026001.P12043294929901391092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297191 ((2 * n) ^ 2 + n)

end

end A026001.P12043294929901391092

/-! ## A026001.P4754422950802947327

`A008288(n*(8*n+5))`
-/

namespace A026001.P4754422950802947327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (n * (8 * n + 5))

end

end A026001.P4754422950802947327

/-! ## A026001.P16624408880843803877

`A112475(A125201(n+1))`
-/

namespace A026001.P16624408880843803877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112475 (A125201 (n + 1)).toNat

end

end A026001.P16624408880843803877

/-! ## A026001.P12651908281450197438

`A112475(A360416(n+1))`
-/

namespace A026001.P12651908281450197438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112475 (A360416 (n + 1)).toNat

end

end A026001.P12651908281450197438

/-!
# A026002: a(n) = T(n,n+2), where T = Delannoy triangle (A008288).

The programs for A026002, the canonical program `A026002.P16997631756133823034` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026002 has offset 1).

The definition of A026002 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006318, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A026002.P16997631756133823034

`A001850(n+1)-A006318(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A026002

/-- `A001850(n+1)-A006318(n+1)` -/
def P16997631756133823034.Spec : Prop :=
  ∀ n, P16997631756133823034.a n = A026002 (n + 1)

theorem P16997631756133823034.correct : P16997631756133823034.Spec := by
  intro n
  simp only [A026002, Nat.add_sub_cancel]

end A026002

/-! ## A026002.P14923737577811819789

`Δ[Δ[A226996(n)]]`
-/

namespace A026002.P14923737577811819789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226996 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026002.P14923737577811819789

namespace A026002

/-- `Δ[Δ[A226996(n)]]` -/
def P14923737577811819789.Spec : Prop :=
  ∀ n, P14923737577811819789.a n = A026002 (n + 1)

end A026002

/-! ## A026002.P17218684274071928856

`(n+1)*Δ[A035011(n)]-a(n-1)` with `a(0)=1`
-/

namespace A026002.P17218684274071928856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035011 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n) - a (n - 1)

end

end A026002.P17218684274071928856

namespace A026002

/-- `(n+1)*Δ[A035011(n)]-a(n-1)` -/
def P17218684274071928856.Spec : Prop :=
  ∀ n, P17218684274071928856.a n = A026002 (n + 1)

end A026002

/-! ## A026002.P12240438296802792320

`Δ[n*A006318(n)]-A001850(n)`
-/

namespace A026002.P12240438296802792320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A006318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001850 n

end

end A026002.P12240438296802792320

namespace A026002

/-- `Δ[n*A006318(n)]-A001850(n)` -/
def P12240438296802792320.Spec : Prop :=
  ∀ n, P12240438296802792320.a n = A026002 (n + 1)

end A026002

/-! ## A026002.P6716857400955275580

`A085403(n+2)+A001850(n+1)`
-/

namespace A026002.P6716857400955275580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085403 (n + 2) + A001850 (n + 1)

end

end A026002.P6716857400955275580

namespace A026002

/-- `A085403(n+2)+A001850(n+1)` -/
def P6716857400955275580.Spec : Prop :=
  ∀ n, P6716857400955275580.a n = A026002 (n + 1)

end A026002

/-! ## A026002.P10744843266800953764

`A086456(n+2)+A001850(n+1)`
-/

namespace A026002.P10744843266800953764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086456 (n + 2) + A001850 (n + 1)

end

end A026002.P10744843266800953764

namespace A026002

/-- `A086456(n+2)+A001850(n+1)` -/
def P10744843266800953764.Spec : Prop :=
  ∀ n, P10744843266800953764.a n = A026002 (n + 1)

end A026002

/-! ## A026002.P18142069571154066430

`A001850(n+1)-A025240(n+2)`
-/

namespace A026002.P18142069571154066430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 (n + 1) - A025240 (n + 2)

end

end A026002.P18142069571154066430

namespace A026002

/-- `A001850(n+1)-A025240(n+2)` -/
def P18142069571154066430.Spec : Prop :=
  ∀ n, P18142069571154066430.a n = A026002 (n + 1)

end A026002

/-! ## A026002.P12161602565624095437

`A001850(n+1)-A155069(n+2)`
-/

namespace A026002.P12161602565624095437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 (n + 1) - A155069 (n + 2)

end

end A026002.P12161602565624095437

namespace A026002

/-- `A001850(n+1)-A155069(n+2)` -/
def P12161602565624095437.Spec : Prop :=
  ∀ n, P12161602565624095437.a n = A026002 (n + 1)

end A026002

/-! ## A026002.P11765583797474633223

`A001850(n+1)-2*A001003(n+1)`
-/

namespace A026002.P11765583797474633223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 (n + 1) - 2 * A001003 (n + 1)

end

end A026002.P11765583797474633223

namespace A026002

/-- `A001850(n+1)-2*A001003(n+1)` -/
def P11765583797474633223.Spec : Prop :=
  ∀ n, P11765583797474633223.a n = A026002 (n + 1)

end A026002

/-! ## A026002.P13511929138817196329

`A026003(2*(n+1))-A006318(n+1)`
-/

namespace A026002.P13511929138817196329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026003 (2 * (n + 1)) - A006318 (n + 1)

end

end A026002.P13511929138817196329

namespace A026002

/-- `A026003(2*(n+1))-A006318(n+1)` -/
def P13511929138817196329.Spec : Prop :=
  ∀ n, P13511929138817196329.a n = A026002 (n + 1)

end A026002

/-! ## A026002.P10818799659278437771

`2*A050151(n+1)-A002002(n+1)`
-/

namespace A026002.P10818799659278437771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050151 (n + 1) - A002002 (n + 1)

end

end A026002.P10818799659278437771

namespace A026002

/-- `2*A050151(n+1)-A002002(n+1)` -/
def P10818799659278437771.Spec : Prop :=
  ∀ n, P10818799659278437771.a n = A026002 (n + 1)

end A026002

/-! ## A026002.P3149346173974419880

`2*A047665(n+1)-A035011(n+1)`
-/

namespace A026002.P3149346173974419880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047665 (n + 1) - A035011 (n + 1)

end

end A026002.P3149346173974419880

namespace A026002

/-- `2*A047665(n+1)-A035011(n+1)` -/
def P3149346173974419880.Spec : Prop :=
  ∀ n, P3149346173974419880.a n = A026002 (n + 1)

end A026002

/-! ## A026002.P16326783501484496678

`A047781(n+1)+n*A001003(n+1)`
-/

namespace A026002.P16326783501484496678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047781 (n + 1) + (n : ℤ) * A001003 (n + 1)

end

end A026002.P16326783501484496678

namespace A026002

/-- `A047781(n+1)+n*A001003(n+1)` -/
def P16326783501484496678.Spec : Prop :=
  ∀ n, P16326783501484496678.a n = A026002 (n + 1)

end A026002

/-! ## A026002.P4486150643285892986

`A247623(2*n+1)+n*A001003(n+1)`
-/

namespace A026002.P4486150643285892986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247623 (2 * n + 1) + (n : ℤ) * A001003 (n + 1)

end

end A026002.P4486150643285892986

namespace A026002

/-- `A247623(2*n+1)+n*A001003(n+1)` -/
def P4486150643285892986.Spec : Prop :=
  ∀ n, P4486150643285892986.a n = A026002 (n + 1)

end A026002

/-! ## A026002.P3363356020458110361

`A035029(n)+A035029(n)-A001003(n+1)`
-/

namespace A026002.P3363356020458110361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035029 n + (A035029 n - A001003 (n + 1))

end

end A026002.P3363356020458110361

namespace A026002

/-- `A035029(n)+A035029(n)-A001003(n+1)` -/
def P3363356020458110361.Spec : Prop :=
  ∀ n, P3363356020458110361.a n = A026002 (n + 1)

end A026002

/-! ## A026002.P5118109306162271547

`A001850(n+1)+A086616(n)-A086616(n+1)`
-/

namespace A026002.P5118109306162271547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 (n + 1) + (A086616 n - A086616 (n + 1))

end

end A026002.P5118109306162271547

namespace A026002

/-- `A001850(n+1)+A086616(n)-A086616(n+1)` -/
def P5118109306162271547.Spec : Prop :=
  ∀ n, P5118109306162271547.a n = A026002 (n + 1)

end A026002

/-! ## A026002.P14104764464225059171

`A089165(n+1)-(A089165(n)+A006318(n+1))`
-/

namespace A026002.P14104764464225059171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089165 (n + 1) - (A089165 n + A006318 (n + 1))

end

end A026002.P14104764464225059171

namespace A026002

/-- `A089165(n+1)-(A089165(n)+A006318(n+1))` -/
def P14104764464225059171.Spec : Prop :=
  ∀ n, P14104764464225059171.a n = A026002 (n + 1)

end A026002

/-! ## A026002.P3634321172236372449

`A002002(n+1)+A002003(n+1)-A006318(n+1)`
-/

namespace A026002.P3634321172236372449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 (n + 1) + (A002003 (n + 1) - A006318 (n + 1))

end

end A026002.P3634321172236372449

namespace A026002

/-- `A002002(n+1)+A002003(n+1)-A006318(n+1)` -/
def P3634321172236372449.Spec : Prop :=
  ∀ n, P3634321172236372449.a n = A026002 (n + 1)

end A026002

/-! ## A026002.P4070917570059734618

`A047781(n+1)+A050151(n+1)-A001003(n+1)`
-/

namespace A026002.P4070917570059734618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047781 (n + 1) + (A050151 (n + 1) - A001003 (n + 1))

end

end A026002.P4070917570059734618

namespace A026002

/-- `A047781(n+1)+A050151(n+1)-A001003(n+1)` -/
def P4070917570059734618.Spec : Prop :=
  ∀ n, P4070917570059734618.a n = A026002 (n + 1)

end A026002

/-! ## A026002.P5118452694471667754

`A002002(n+1)+A123164(n+1)-A006318(n+1)`
-/

namespace A026002.P5118452694471667754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 (n + 1) + (A123164 (n + 1) - A006318 (n + 1))

end

end A026002.P5118452694471667754

namespace A026002

/-- `A002002(n+1)+A123164(n+1)-A006318(n+1)` -/
def P5118452694471667754.Spec : Prop :=
  ∀ n, P5118452694471667754.a n = A026002 (n + 1)

end A026002

/-!
# A026003: a(n) = T([n/2],[(n+1)/2]), where T = Delannoy triangle (A008288).

The programs for A026003, there is no canonical definition to state claims against.
-/

/-! ## A026003.P16722746874050283468

`A110110(n)-a(n-1)` with `a(0)=1`
-/

namespace A026003.P16722746874050283468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A110110 n - a (n - 1)

end

end A026003.P16722746874050283468

/-! ## A026003.P8914940708846238751

`A247630(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A026003.P8914940708846238751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A247630 n + a (n - 2)

end

end A026003.P8914940708846238751

/-! ## A026003.P15579377412102916224

`2*A247623(n)-a(n-1)` with `a(0)=1`
-/

namespace A026003.P15579377412102916224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A247623 n - a (n - 1)

end

end A026003.P15579377412102916224

/-! ## A026003.P3506373430165558019

`A008288(ceil(n²/2)+n)`
-/

namespace A026003.P3506373430165558019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (⌈(n ^ 2 : ℚ) / 2⌉ + (n : ℤ)).toNat

end

end A026003.P3506373430165558019

/-! ## A026003.P5490806965939016877

`A112475(A080476(n+2))`
-/

namespace A026003.P5490806965939016877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112475 (A080476 (n + 2)).toNat

end

end A026003.P5490806965939016877

/-! ## A026003.P17037508828271266418

`A346540(A194274(n))`
-/

namespace A026003.P17037508828271266418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346540 (A194274 n).toNat

end

end A026003.P17037508828271266418

/-! ## A026003.P17317387963271797015

`A346540(record[A245300(n)])`
-/

namespace A026003.P17317387963271797015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346540 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A026003.P17317387963271797015

/-! ## A026003.P11397477050669251911

`A346540(A007590(n+1))`
-/

namespace A026003.P11397477050669251911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346540 (A007590 (n + 1)).toNat

end

end A026003.P11397477050669251911

/-! ## A026003.P17658967580983719369

`A346540(A080476(n+1))`
-/

namespace A026003.P17658967580983719369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346540 (A080476 (n + 1)).toNat

end

end A026003.P17658967580983719369

/-! ## A026003.P13989121098950213082

`A140750(A213041(n))`
-/

namespace A026003.P13989121098950213082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140750 (A213041 n).toNat

end

end A026003.P13989121098950213082

/-! ## A026003.P10882178744667404789

`A064861(A004526(n²)+n)`
-/

namespace A026003.P10882178744667404789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064861 (A004526 (n ^ 2) + (n : ℤ)).toNat

end

end A026003.P10882178744667404789

/-! ## A026003.P10089630727760353756

`A064861(A004526(n*(n+2)))`
-/

namespace A026003.P10089630727760353756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064861 (A004526 (n * (n + 2))).toNat

end

end A026003.P10089630727760353756

/-!
# A026004: a(n) = T(3n+1,n), where T = Catalan triangle (A008315).

The programs for A026004, the canonical program `A026004.P4906418296421014582` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026004 has offset 0).

The definition of A026004 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026004.P15450335811654204604

`A368567(Δ[n²])`
-/

namespace A026004.P15450335811654204604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368567 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026004.P15450335811654204604

namespace A026004

/-- `A368567(Δ[n²])` -/
def P15450335811654204604.Spec : Prop :=
  ∀ n, P15450335811654204604.a n = A026004 n

end A026004

/-! ## A026004.P4906418296421014582

`ceil(A045722(n+1)/2)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A026004

/-- `ceil(A045722(n+1)/2)` -/
def P4906418296421014582.Spec : Prop :=
  ∀ n, P4906418296421014582.a n = A026004 n

theorem P4906418296421014582.correct : P4906418296421014582.Spec := by
  intro n
  simp only [A026004]

end A026004

/-! ## A026004.P5472639318923744494

`(n/2+1)*A006013(n)`
-/

namespace A026004.P5472639318923744494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 1) * (A006013 n : ℚ)

end

end A026004.P5472639318923744494

namespace A026004

/-- `(n/2+1)*A006013(n)` -/
def P5472639318923744494.Spec : Prop :=
  ∀ n, P5472639318923744494.a n = (A026004 n : ℚ)

end A026004

/-! ## A026004.P13357722648903447215

`A047749(2*n+1)/2*(n+2)`
-/

namespace A026004.P13357722648903447215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047749 (2 * n + 1) : ℚ) / 2 * (n + 2 : ℚ)

end

end A026004.P13357722648903447215

namespace A026004

/-- `A047749(2*n+1)/2*(n+2)` -/
def P13357722648903447215.Spec : Prop :=
  ∀ n, P13357722648903447215.a n = (A026004 n : ℚ)

end A026004

/-! ## A026004.P17662976065959714121

`(A045721(n)+A006013(n))/2`
-/

namespace A026004.P17662976065959714121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045721 n + A006013 n : ℚ) / 2

end

end A026004.P17662976065959714121

namespace A026004

/-- `(A045721(n)+A006013(n))/2` -/
def P17662976065959714121.Spec : Prop :=
  ∀ n, P17662976065959714121.a n = (A026004 n : ℚ)

end A026004

/-! ## A026004.P12184604467004939799

`A262394(n+1)-A262717(n+1)`
-/

namespace A026004.P12184604467004939799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262394 (n + 1) - A262717 (n + 1)

end

end A026004.P12184604467004939799

namespace A026004

/-- `A262394(n+1)-A262717(n+1)` -/
def P12184604467004939799.Spec : Prop :=
  ∀ n, P12184604467004939799.a n = A026004 n

end A026004

/-! ## A026004.P10670772786617840945

`(A134565(2*n+1)+A099578(2*n))/2`
-/

namespace A026004.P10670772786617840945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134565 (2 * n + 1) + A099578 (2 * n) : ℚ) / 2

end

end A026004.P10670772786617840945

namespace A026004

/-- `(A134565(2*n+1)+A099578(2*n))/2` -/
def P10670772786617840945.Spec : Prop :=
  ∀ n, P10670772786617840945.a n = (A026004 n : ℚ)

end A026004

/-! ## A026004.P3266091871993722916

`A005809(n+1)-2*A117671(n)`
-/

namespace A026004.P3266091871993722916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 (n + 1) - 2 * A117671 n

end

end A026004.P3266091871993722916

namespace A026004

/-- `A005809(n+1)-2*A117671(n)` -/
def P3266091871993722916.Spec : Prop :=
  ∀ n, P3266091871993722916.a n = A026004 n

end A026004

/-! ## A026004.P7361682219808388995

`2*A099578(2*n)-A025174(n+1)`
-/

namespace A026004.P7361682219808388995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099578 (2 * n) - A025174 (n + 1)

end

end A026004.P7361682219808388995

namespace A026004

/-- `2*A099578(2*n)-A025174(n+1)` -/
def P7361682219808388995.Spec : Prop :=
  ∀ n, P7361682219808388995.a n = A026004 n

end A026004

/-! ## A026004.P528457339331200360

`2*A099578(2*n)-A127040(2*n)`
-/

namespace A026004.P528457339331200360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099578 (2 * n) - A127040 (2 * n)

end

end A026004.P528457339331200360

namespace A026004

/-- `2*A099578(2*n)-A127040(2*n)` -/
def P528457339331200360.Spec : Prop :=
  ∀ n, P528457339331200360.a n = A026004 n

end A026004

/-! ## A026004.P2891769118263930692

`2*A065942(2*n+1)-A025174(n+1)`
-/

namespace A026004.P2891769118263930692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065942 (2 * n + 1) - A025174 (n + 1)

end

end A026004.P2891769118263930692

namespace A026004

/-- `2*A065942(2*n+1)-A025174(n+1)` -/
def P2891769118263930692.Spec : Prop :=
  ∀ n, P2891769118263930692.a n = A026004 n

end A026004

/-! ## A026004.P6118282781598441278

`2*A099578(2*n)-A099578(2*n+1)`
-/

namespace A026004.P6118282781598441278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099578 (2 * n) - A099578 (2 * n + 1)

end

end A026004.P6118282781598441278

namespace A026004

/-- `2*A099578(2*n)-A099578(2*n+1)` -/
def P6118282781598441278.Spec : Prop :=
  ∀ n, P6118282781598441278.a n = A026004 n

end A026004

/-! ## A026004.P684063653734676606

`A127040(2*n)-2*A175167(2*n+1)`
-/

namespace A026004.P684063653734676606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127040 (2 * n) - 2 * A175167 (2 * n + 1)

end

end A026004.P684063653734676606

namespace A026004

/-- `A127040(2*n)-2*A175167(2*n+1)` -/
def P684063653734676606.Spec : Prop :=
  ∀ n, P684063653734676606.a n = A026004 n

end A026004

/-! ## A026004.P11996054187209988320

`A025174(n+1)+A006013(n)-A045721(n)`
-/

namespace A026004.P11996054187209988320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025174 (n + 1) + (A006013 n - A045721 n)

end

end A026004.P11996054187209988320

namespace A026004

/-- `A025174(n+1)+A006013(n)-A045721(n)` -/
def P11996054187209988320.Spec : Prop :=
  ∀ n, P11996054187209988320.a n = A026004 n

end A026004

/-! ## A026004.P6221825910224715678

`A006013(n)+A117671(n)-A025174(n+1)`
-/

namespace A026004.P6221825910224715678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 n + (A117671 n - A025174 (n + 1))

end

end A026004.P6221825910224715678

namespace A026004

/-- `A006013(n)+A117671(n)-A025174(n+1)` -/
def P6221825910224715678.Spec : Prop :=
  ∀ n, P6221825910224715678.a n = A026004 n

end A026004

/-! ## A026004.P11252822262491907427

`A094021(∑[n+1]+2)`
-/

namespace A026004.P11252822262491907427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094021 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A026004.P11252822262491907427

namespace A026004

/-- `A094021(∑[n+1]+2)` -/
def P11252822262491907427.Spec : Prop :=
  ∀ n, P11252822262491907427.a n = A026004 n

end A026004

/-! ## A026004.P1920149090127105644

`A094040(∑[n+2])`
-/

namespace A026004.P1920149090127105644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026004.P1920149090127105644

namespace A026004

/-- `A094040(∑[n+2])` -/
def P1920149090127105644.Spec : Prop :=
  ∀ n, P1920149090127105644.a n = A026004 n

end A026004

/-!
# A026005: a(n) = T(4*n,n), where T = Catalan triangle (A008315).

The programs for A026005, the canonical program `A026005.P1831924511019717742` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026005 has offset 0).

The definition of A026005 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026005.P1831924511019717742

`(n+1)*A069271(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A026005

/-- `(n+1)*A069271(n)` -/
def P1831924511019717742.Spec : Prop :=
  ∀ n, P1831924511019717742.a n = A026005 n

theorem P1831924511019717742.correct : P1831924511019717742.Spec := by
  intro n
  simp only [A026005]

end A026005

/-! ## A026005.P14562893101085771694

`(n+1)²*A000260(n)`
-/

namespace A026005.P14562893101085771694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A000260 n

end

end A026005.P14562893101085771694

namespace A026005

/-- `(n+1)²*A000260(n)` -/
def P14562893101085771694.Spec : Prop :=
  ∀ n, P14562893101085771694.a n = A026005 n

end A026005

/-! ## A026005.P12614497846870342762

`(n+1)²*A146305(∑[n])`
-/

namespace A026005.P12614497846870342762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A146305 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026005.P12614497846870342762

namespace A026005

/-- `(n+1)²*A146305(∑[n])` -/
def P12614497846870342762.Spec : Prop :=
  ∀ n, P12614497846870342762.a n = A026005 n

end A026005

/-! ## A026005.P10567161044329510029

`(n+1)*A369472(Δ[n²])`
-/

namespace A026005.P10567161044329510029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A369472 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026005.P10567161044329510029

namespace A026005

/-- `(n+1)*A369472(Δ[n²])` -/
def P10567161044329510029.Spec : Prop :=
  ∀ n, P10567161044329510029.a n = A026005 n

end A026005

/-! ## A026005.P17334032842494165837

`(n+1)*record[A188108(n+1)]`
-/

namespace A026005.P17334032842494165837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026005.P17334032842494165837

namespace A026005

/-- `(n+1)*record[A188108(n+1)]` -/
def P17334032842494165837.Spec : Prop :=
  ∀ n, P17334032842494165837.a n = A026005 n

end A026005

/-! ## A026005.P14382703468721639984

`(n+1)*A257633(n)/(2*n+1)`
-/

namespace A026005.P14382703468721639984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A257633 n : ℚ) / (2 * n + 1 : ℚ))

end

end A026005.P14382703468721639984

namespace A026005

/-- `(n+1)*A257633(n)/(2*n+1)` -/
def P14382703468721639984.Spec : Prop :=
  ∀ n, P14382703468721639984.a n = (A026005 n : ℚ)

end A026005

/-! ## A026005.P2310416220687367723

`A000260(n)*A000290(n+1)`
-/

namespace A026005.P2310416220687367723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000260 n * A000290 (n + 1)

end

end A026005.P2310416220687367723

namespace A026005

/-- `A000260(n)*A000290(n+1)` -/
def P2310416220687367723.Spec : Prop :=
  ∀ n, P2310416220687367723.a n = A026005 n

end A026005

/-! ## A026005.P1782651445588445143

`2*A052203(n)-A257633(n)`
-/

namespace A026005.P1782651445588445143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052203 n - A257633 n

end

end A026005.P1782651445588445143

namespace A026005

/-- `2*A052203(n)-A257633(n)` -/
def P1782651445588445143.Spec : Prop :=
  ∀ n, P1782651445588445143.a n = A026005 n

end A026005

/-! ## A026005.P5475061273843725516

`(n+1)*A069270(A034856(n+1))`
-/

namespace A026005.P5475061273843725516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A069270 (A034856 (n + 1)).toNat

end

end A026005.P5475061273843725516

namespace A026005

/-- `(n+1)*A069270(A034856(n+1))` -/
def P5475061273843725516.Spec : Prop :=
  ∀ n, P5475061273843725516.a n = A026005 n

end A026005

/-! ## A026005.P13551186397821535161

`A001791(n+1)/A001700(n)*A185113(n)`
-/

namespace A026005.P13551186397821535161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001791 (n + 1) : ℚ) / (A001700 n : ℚ) * (A185113 n : ℚ)

end

end A026005.P13551186397821535161

namespace A026005

/-- `A001791(n+1)/A001700(n)*A185113(n)` -/
def P13551186397821535161.Spec : Prop :=
  ∀ n, P13551186397821535161.a n = (A026005 n : ℚ)

end A026005

/-!
# A026006: Expansion of 1/((1-2x)*(1-5x)*(1-8x)*(1-12x)).

The programs for A026006, there is no canonical definition to state claims against.
-/

/-! ## A026006.P802690416607514879

`a(n-1)+A020448(n)+a(n-1)` with `a(0)=1`
-/

namespace A026006.P802690416607514879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A020448 n + a (n - 1))

end

end A026006.P802690416607514879

/-! ## A026006.P11108425331167739432

`2*A025964(n)-A025960(n)`
-/

namespace A026006.P11108425331167739432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025964 n - A025960 n

end

end A026006.P11108425331167739432

/-! ## A026006.P6017864049703440888

`5*a(n-1)+∑[A016149(n)]*A000079(n)` with `a(0)=1`
-/

namespace A026006.P6017864049703440888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016149 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A026006.P6017864049703440888

/-! ## A026006.P15981945005606924793

`5*a(n-1)+A011782(n+1)*A016222(n)` with `a(0)=1`
-/

namespace A026006.P15981945005606924793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + A011782 (n + 1) * A016222 n

end

end A026006.P15981945005606924793

/-! ## A026006.P15835712248816290710

`5*a(n-1)+A016222(n)*A017912(2*n)` with `a(0)=1`
-/

namespace A026006.P15835712248816290710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + A016222 n * A017912 (2 * n)

end

end A026006.P15835712248816290710

/-! ## A026006.P16025278725226996044

`A021164(n)+A021279(n)-A021129(n)`
-/

namespace A026006.P16025278725226996044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021164 n + (A021279 n - A021129 n)

end

end A026006.P16025278725226996044

/-!
# A026007: Expansion of Product_{m>=1} (1 + q^m)^m; number of partitions of n into distinct parts, where n different parts of size n are available.

The programs for A026007, there is no canonical definition to state claims against.
-/

/-! ## A026007.P8655277444804167358

`∑[A303902(n)]`
-/

namespace A026007.P8655277444804167358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026007.P8655277444804167358

/-! ## A026007.P18395224331281408977

`A298598(n+1)+A298598(n)-A303902(n+1)`
-/

namespace A026007.P18395224331281408977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298598 (n + 1) + (A298598 n - A303902 (n + 1))

end

end A026007.P18395224331281408977

/-! ## A026007.P675495010234306949

`A302832(n+1)-(A303902(n+1)+A302832(n))`
-/

namespace A026007.P675495010234306949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302832 (n + 1) - (A303902 (n + 1) + A302832 n)

end

end A026007.P675495010234306949

/-! ## A026007.P10284868803588693788

`A277938(∑[n+2]-1)`
-/

namespace A026007.P10284868803588693788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277938 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A026007.P10284868803588693788

/-! ## A026007.P7523594920400098417

`or(char[1], A277938(A034856(n+1)))`
-/

namespace A026007.P7523594920400098417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A277938 (A034856 (n + 1)).toNat)

end

end A026007.P7523594920400098417

/-! ## A026007.P1745707332657538241

`A277938(∑[n+1]+n)^A059268(∑[n])`
-/

namespace A026007.P1745707332657538241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277938 (∑ j ∈ Finset.range (n + 1), f1 j + n) : ℚ) ^ (A059268 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

end

end A026007.P1745707332657538241

/-! ## A026007.P7566700472758990982

`A277938(A034856(n+1))%A001255(n+2)`
-/

namespace A026007.P7566700472758990982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277938 (A034856 (n + 1)).toNat) (A001255 (n + 2))

end

end A026007.P7566700472758990982

/-! ## A026007.P17468638773027647001

`A007318(∑[n+2])*A277938(A034856(n+1))`
-/

namespace A026007.P17468638773027647001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A277938 (A034856 (n + 1)).toNat

end

end A026007.P17468638773027647001

/-! ## A026007.P10476279035319628180

`A089052(∑[n+2])*A277938(A034856(n+1))`
-/

namespace A026007.P10476279035319628180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (∑ j ∈ Finset.range (n + 1), f1 j) * A277938 (A034856 (n + 1)).toNat

end

end A026007.P10476279035319628180

/-! ## A026007.P17483175563741184518

`A094024(2*(n+1))*A277938(A034856(n+1))`
-/

namespace A026007.P17483175563741184518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094024 (2 * (n + 1)) * A277938 (A034856 (n + 1)).toNat

end

end A026007.P17483175563741184518

/-! ## A026007.P10213725262683541854

`A277938(A034856(n+1))+A004198(A000217(n))`
-/

namespace A026007.P10213725262683541854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277938 (A034856 (n + 1)).toNat + A004198 (A000217 n).toNat

end

end A026007.P10213725262683541854

/-! ## A026007.P4208288802184263476

`A277938(A034856(n+1))+A011730(A004198(n))`
-/

namespace A026007.P4208288802184263476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277938 (A034856 (n + 1)).toNat + A011730 (A004198 n).toNat

end

end A026007.P4208288802184263476

/-! ## A026007.P5032818682368714643

`A277938(∑[n+1]+n)+A014027(A059268(n))`
-/

namespace A026007.P5032818682368714643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277938 (∑ j ∈ Finset.range (n + 1), f1 j + n) + A014027 (A059268 n).toNat

end

end A026007.P5032818682368714643

/-! ## A026007.P5162340053524656017

`A277938(∑[n+1]+n)+A014045(A059268(n+1))`
-/

namespace A026007.P5162340053524656017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277938 (∑ j ∈ Finset.range (n + 1), f1 j + n) + A014045 (A059268 (n + 1)).toNat

end

end A026007.P5162340053524656017

/-!
# A026008: a(n) = T(n, floor(n/2)), where T = Catalan triangle (A008315).

The programs for A026008, the canonical program `A026008.P1049361676505189419` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026008 has offset 0).

The definition of A026008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026008.P1049361676505189419

`A208355(n+2)-A097331(n+2)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A026008

/-- `A208355(n+2)-A097331(n+2)` -/
def P1049361676505189419.Spec : Prop :=
  ∀ n, P1049361676505189419.a n = A026008 n

theorem P1049361676505189419.correct : P1049361676505189419.Spec := by
  intro n
  simp only [A026008]

end A026008

/-! ## A026008.P6526585439263912721

`A001405(n)-A037956(n)`
-/

namespace A026008.P6526585439263912721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - A037956 n

end

end A026008.P6526585439263912721

namespace A026008

/-- `A001405(n)-A037956(n)` -/
def P6526585439263912721.Spec : Prop :=
  ∀ n, P6526585439263912721.a n = A026008 n

end A026008

/-! ## A026008.P13706415494628474871

`A037952(n+1)-A037951(n+1)`
-/

namespace A026008.P13706415494628474871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (n + 1) - A037951 (n + 1)

end

end A026008.P13706415494628474871

namespace A026008

/-- `A037952(n+1)-A037951(n+1)` -/
def P13706415494628474871.Spec : Prop :=
  ∀ n, P13706415494628474871.a n = A026008 n

end A026008

/-! ## A026008.P9637535841151981842

`A047171(n+1)+1-A037951(n+1)`
-/

namespace A026008.P9637535841151981842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047171 (n + 1) + (1 - A037951 (n + 1))

end

end A026008.P9637535841151981842

namespace A026008

/-- `A047171(n+1)+1-A037951(n+1)` -/
def P9637535841151981842.Spec : Prop :=
  ∀ n, P9637535841151981842.a n = A026008 n

end A026008

/-! ## A026008.P1209872330665172704

`A037952(n+1)-(A037956(n)+A037955(n))`
-/

namespace A026008.P1209872330665172704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (n + 1) - (A037956 n + A037955 n)

end

end A026008.P1209872330665172704

namespace A026008

/-- `A037952(n+1)-(A037956(n)+A037955(n))` -/
def P1209872330665172704.Spec : Prop :=
  ∀ n, P1209872330665172704.a n = A026008 n

end A026008

/-! ## A026008.P9236575504703745499

`A001405(n)+Δ[A059348(n+2)-A001405(n)]`
-/

namespace A026008.P9236575504703745499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059348 (n + 2) - A001405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n + (f1 (n + 1) - f1 n)

end

end A026008.P9236575504703745499

namespace A026008

/-- `A001405(n)+Δ[A059348(n+2)-A001405(n)]` -/
def P9236575504703745499.Spec : Prop :=
  ∀ n, P9236575504703745499.a n = A026008 n

end A026008

/-! ## A026008.P17785258868150670804

`A001405(n+1)-Δ[A116385(n)]`
-/

namespace A026008.P17785258868150670804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116385 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 1) - (f1 (n + 1) - f1 n)

end

end A026008.P17785258868150670804

namespace A026008

/-- `A001405(n+1)-Δ[A116385(n)]` -/
def P17785258868150670804.Spec : Prop :=
  ∀ n, P17785258868150670804.a n = A026008 n

end A026008

/-! ## A026008.P6012893366068449598

`Δ[A001405(n+1)]-A037951(n+1)`
-/

namespace A026008.P6012893366068449598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A037951 (n + 1)

end

end A026008.P6012893366068449598

namespace A026008

/-- `Δ[A001405(n+1)]-A037951(n+1)` -/
def P6012893366068449598.Spec : Prop :=
  ∀ n, P6012893366068449598.a n = A026008 n

end A026008

/-! ## A026008.P15215083377492433724

`A001405(n)-Δ[A116385(n)-A001405(n)]`
-/

namespace A026008.P15215083377492433724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116385 n - A001405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - (f1 (n + 1) - f1 n)

end

end A026008.P15215083377492433724

namespace A026008

/-- `A001405(n)-Δ[A116385(n)-A001405(n)]` -/
def P15215083377492433724.Spec : Prop :=
  ∀ n, P15215083377492433724.a n = A026008 n

end A026008

/-! ## A026008.P6628116250878636653

`A001405(n+1)+A116385(n)-A116385(n+1)`
-/

namespace A026008.P6628116250878636653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 1) + (A116385 n - A116385 (n + 1))

end

end A026008.P6628116250878636653

namespace A026008

/-- `A001405(n+1)+A116385(n)-A116385(n+1)` -/
def P6628116250878636653.Spec : Prop :=
  ∀ n, P6628116250878636653.a n = A026008 n

end A026008

/-! ## A026008.P6631171508583202670

`A030237(A117142(n+1))`
-/

namespace A026008.P6631171508583202670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030237 (A117142 (n + 1)).toNat

end

end A026008.P6631171508583202670

namespace A026008

/-- `A030237(A117142(n+1))` -/
def P6631171508583202670.Spec : Prop :=
  ∀ n, P6631171508583202670.a n = A026008 n

end A026008

/-! ## A026008.P14335634914758024386

`A028378(A055802(n+3))`
-/

namespace A026008.P14335634914758024386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028378 (A055802 (n + 3)).toNat

end

end A026008.P14335634914758024386

namespace A026008

/-- `A028378(A055802(n+3))` -/
def P14335634914758024386.Spec : Prop :=
  ∀ n, P14335634914758024386.a n = A026008 n

end A026008

/-! ## A026008.P14218389547838920717

`A039599(A134519(n+1))`
-/

namespace A026008.P14218389547838920717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 (A134519 (n + 1)).toNat

end

end A026008.P14218389547838920717

namespace A026008

/-- `A039599(A134519(n+1))` -/
def P14218389547838920717.Spec : Prop :=
  ∀ n, P14218389547838920717.a n = A026008 n

end A026008

/-! ## A026008.P9549358213101600964

`A039599(lt[A191532(n), 2])`
-/

namespace A026008.P9549358213101600964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191532 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A026008.P9549358213101600964

namespace A026008

/-- `A039599(lt[A191532(n), 2])` -/
def P9549358213101600964.Spec : Prop :=
  ∀ n, P9549358213101600964.a n = A026008 n

end A026008

/-! ## A026008.P15517522262436168102

`A039599(A008805(n)+and(1, n))`
-/

namespace A026008.P15517522262436168102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 (A008805 n + (Nat.land 1 n : ℤ)).toNat

end

end A026008.P15517522262436168102

namespace A026008

/-- `A039599(A008805(n)+and(1, n))` -/
def P15517522262436168102.Spec : Prop :=
  ∀ n, P15517522262436168102.a n = A026008 n

end A026008

/-! ## A026008.P16439134861782176207

`A028364(lt[A039598(n), n+2])`
-/

namespace A026008.P16439134861782176207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028364 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A026008.P16439134861782176207

namespace A026008

/-- `A028364(lt[A039598(n), n+2])` -/
def P16439134861782176207.Spec : Prop :=
  ∀ n, P16439134861782176207.a n = A026008 n

end A026008

/-! ## A026008.P2386975304438073247

`A028364(lt[A039598(n)-2, n])`
-/

namespace A026008.P2386975304438073247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 n - 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028364 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A026008.P2386975304438073247

namespace A026008

/-- `A028364(lt[A039598(n)-2, n])` -/
def P2386975304438073247.Spec : Prop :=
  ∀ n, P2386975304438073247.a n = A026008 n

end A026008

/-! ## A026008.P11234834133242130013

`A028364(eq[A025581(n)², A025581(n)])`
-/

namespace A026008.P11234834133242130013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028364 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A026008.P11234834133242130013

namespace A026008

/-- `A028364(eq[A025581(n)², A025581(n)])` -/
def P11234834133242130013.Spec : Prop :=
  ∀ n, P11234834133242130013.a n = A026008 n

end A026008

/-! ## A026008.P3465967900606638951

`A028376(A101881(n+1))`
-/

namespace A026008.P3465967900606638951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028376 (A101881 (n + 1)).toNat

end

end A026008.P3465967900606638951

namespace A026008

/-- `A028376(A101881(n+1))` -/
def P3465967900606638951.Spec : Prop :=
  ∀ n, P3465967900606638951.a n = A026008 n

end A026008

/-! ## A026008.P8707028584467494015

`A009766(A165157(n+1))`
-/

namespace A026008.P8707028584467494015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (A165157 (n + 1)).toNat

end

end A026008.P8707028584467494015

namespace A026008

/-- `A009766(A165157(n+1))` -/
def P8707028584467494015.Spec : Prop :=
  ∀ n, P8707028584467494015.a n = A026008 n

end A026008

/-!
# A026009: Triangular array T read by rows: T(n,0) = 1 for n >= 0; T(1,1) = 1; and for n >= 2, T(n,k) = T(n-1,k-1) + T(n-1,k) for k = 1,2,...,[(n+1)/2]; T(n,n/2 + 1) = T(n-1,n/2) if n is even.

The programs for A026009, there is no canonical definition to state claims against.
-/

/-! ## A026009.P3045341644372312291

`A217765(lt[A104220(n), A250387(n+1)])`
-/

namespace A026009.P3045341644372312291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104220 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217765 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A026009.P3045341644372312291

/-! ## A026009.P15284550829692553624

`A217765(lt[A181735(n+1), A217765(n)])`
-/

namespace A026009.P15284550829692553624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217765 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A026009.P15284550829692553624

/-! ## A026009.P4653605455840311895

`A217765(lt[A060166(n+1), A250387(n+1)])`
-/

namespace A026009.P4653605455840311895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217765 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A026009.P4653605455840311895

/-! ## A026009.P17009773536280769203

`A217765(lt[A320268(n+1), A250387(n+1)])`
-/

namespace A026009.P17009773536280769203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217765 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A026009.P17009773536280769203

/-! ## A026009.P7593352603982477645

`A055216(comp[15-A026940(n+1)])`
-/

namespace A026009.P7593352603982477645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 - A026940 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055216 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A026009.P7593352603982477645

/-!
# A026010: a(n) = number of (s(0), s(1), ..., s(n)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| = 1 for i = 1,2,...,n and s(0) = 2. Also a(n) = sum of numbers in row n+1 of array T defined in A026009.

The programs for A026010, the canonical program `A026010.P1065645250072885556` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026010 has offset 0).

The definition of A026010 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026010.P8069208479142601762

`A037955(n)+A001405(n+1)`
-/

namespace A026010.P8069208479142601762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 n + A001405 (n + 1)

end

end A026010.P8069208479142601762

namespace A026010

/-- `A037955(n)+A001405(n+1)` -/
def P8069208479142601762.Spec : Prop :=
  ∀ n, P8069208479142601762.a n = A026010 n

end A026010

/-! ## A026010.P8801522276701909672

`A037952(n+1)+A037952(n)`
-/

namespace A026010.P8801522276701909672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (n + 1) + A037952 n

end

end A026010.P8801522276701909672

namespace A026010

/-- `A037952(n+1)+A037952(n)` -/
def P8801522276701909672.Spec : Prop :=
  ∀ n, P8801522276701909672.a n = A026010 n

end A026010

/-! ## A026010.P4306914930282012017

`A191307(n)+A072100(n+1)`
-/

namespace A026010.P4306914930282012017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191307 n + A072100 (n + 1)

end

end A026010.P4306914930282012017

namespace A026010

/-- `A191307(n)+A072100(n+1)` -/
def P4306914930282012017.Spec : Prop :=
  ∀ n, P4306914930282012017.a n = A026010 n

end A026010

/-! ## A026010.P17373355272836800804

`A210736(n+2)+A037955(n)`
-/

namespace A026010.P17373355272836800804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (n + 2) + A037955 n

end

end A026010.P17373355272836800804

namespace A026010

/-- `A210736(n+2)+A037955(n)` -/
def P17373355272836800804.Spec : Prop :=
  ∀ n, P17373355272836800804.a n = A026010 n

end A026010

/-! ## A026010.P10991570669446168107

`A050168(n+1)-A208355(n)`
-/

namespace A026010.P10991570669446168107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050168 (n + 1) - A208355 n

end

end A026010.P10991570669446168107

namespace A026010

/-- `A050168(n+1)-A208355(n)` -/
def P10991570669446168107.Spec : Prop :=
  ∀ n, P10991570669446168107.a n = A026010 n

end A026010

/-! ## A026010.P1065645250072885556

`A208976(n)+1-A208355(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A026010

/-- `A208976(n)+1-A208355(n)` -/
def P1065645250072885556.Spec : Prop :=
  ∀ n, P1065645250072885556.a n = A026010 n

theorem P1065645250072885556.correct : P1065645250072885556.Spec := by
  intro n
  simp only [A026010]

end A026010

/-! ## A026010.P13385702457174416159

`A007007(n+1)+A047171(n)+1`
-/

namespace A026010.P13385702457174416159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007007 (n + 1) + (A047171 n + 1)

end

end A026010.P13385702457174416159

namespace A026010

/-- `A007007(n+1)+A047171(n)+1` -/
def P13385702457174416159.Spec : Prop :=
  ∀ n, P13385702457174416159.a n = A026010 n

end A026010

/-! ## A026010.P5116193868142870122

`∪[A051924(n+1), A024482(n+2)]`
-/

namespace A026010.P5116193868142870122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024482 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026010.P5116193868142870122

namespace A026010

/-- `∪[A051924(n+1), A024482(n+2)]` -/
def P5116193868142870122.Spec : Prop :=
  ∀ n, (P5116193868142870122.a n : ℤ) = A026010 n

end A026010

/-! ## A026010.P4776999984624273807

`A086905(n+1)+A086905(n)+A037955(n)`
-/

namespace A026010.P4776999984624273807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086905 (n + 1) + (A086905 n + A037955 n)

end

end A026010.P4776999984624273807

namespace A026010

/-- `A086905(n+1)+A086905(n)+A037955(n)` -/
def P4776999984624273807.Spec : Prop :=
  ∀ n, P4776999984624273807.a n = A026010 n

end A026010

/-! ## A026010.P631187714107873520

`A001405(n+1)+A001405(n)-A208355(n)`
-/

namespace A026010.P631187714107873520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 1) + (A001405 n - A208355 n)

end

end A026010.P631187714107873520

namespace A026010

/-- `A001405(n+1)+A001405(n)-A208355(n)` -/
def P631187714107873520.Spec : Prop :=
  ∀ n, P631187714107873520.a n = A026010 n

end A026010

/-! ## A026010.P2546847966108516365

`A214282(n+2)-(A214283(n+2)+A001405(n))`
-/

namespace A026010.P2546847966108516365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214282 (n + 2) - (A214283 (n + 2) + A001405 n)

end

end A026010.P2546847966108516365

namespace A026010

/-- `A214282(n+2)-(A214283(n+2)+A001405(n))` -/
def P2546847966108516365.Spec : Prop :=
  ∀ n, P2546847966108516365.a n = A026010 n

end A026010

/-! ## A026010.P7175625323257181166

`Δ[A208976(n)]`
-/

namespace A026010.P7175625323257181166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208976 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026010.P7175625323257181166

namespace A026010

/-- `Δ[A208976(n)]` -/
def P7175625323257181166.Spec : Prop :=
  ∀ n, P7175625323257181166.a n = A026010 n

end A026010

/-! ## A026010.P732197041900177020

`Δ[A050168(n+1)]`
-/

namespace A026010.P732197041900177020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026010.P732197041900177020

namespace A026010

/-- `Δ[A050168(n+1)]` -/
def P732197041900177020.Spec : Prop :=
  ∀ n, P732197041900177020.a n = A026010 n

end A026010

/-! ## A026010.P9626115254928781990

`Δ[abs(Δ[A126930(n)])]`
-/

namespace A026010.P9626115254928781990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026010.P9626115254928781990

namespace A026010

/-- `Δ[abs(Δ[A126930(n)])]` -/
def P9626115254928781990.Spec : Prop :=
  ∀ n, P9626115254928781990.a n = A026010 n

end A026010

/-! ## A026010.P14302844816800569819

`A026023(n)-A037951(n)`
-/

namespace A026010.P14302844816800569819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026023 n - A037951 n

end

end A026010.P14302844816800569819

namespace A026010

/-- `A026023(n)-A037951(n)` -/
def P14302844816800569819.Spec : Prop :=
  ∀ n, P14302844816800569819.a n = A026010 n

end A026010

/-! ## A026010.P10908878791089006628

`A107232(n)-A037952(n)`
-/

namespace A026010.P10908878791089006628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107232 n - A037952 n

end

end A026010.P10908878791089006628

namespace A026010

/-- `A107232(n)-A037952(n)` -/
def P10908878791089006628.Spec : Prop :=
  ∀ n, P10908878791089006628.a n = A026010 n

end A026010

/-! ## A026010.P7599985259875621436

`A208976(n+1)-A208976(n)`
-/

namespace A026010.P7599985259875621436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208976 (n + 1) - A208976 n

end

end A026010.P7599985259875621436

namespace A026010

/-- `A208976(n+1)-A208976(n)` -/
def P7599985259875621436.Spec : Prop :=
  ∀ n, P7599985259875621436.a n = A026010 n

end A026010

/-! ## A026010.P3037448003620855186

`A001405(n+2)-A001405(n)`
-/

namespace A026010.P3037448003620855186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 2) - A001405 n

end

end A026010.P3037448003620855186

namespace A026010

/-- `A001405(n+2)-A001405(n)` -/
def P3037448003620855186.Spec : Prop :=
  ∀ n, P3037448003620855186.a n = A026010 n

end A026010

/-! ## A026010.P17864698590862150392

`A014495(n+2)-A014495(n)`
-/

namespace A026010.P17864698590862150392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 (n + 2) - A014495 n

end

end A026010.P17864698590862150392

namespace A026010

/-- `A014495(n+2)-A014495(n)` -/
def P17864698590862150392.Spec : Prop :=
  ∀ n, P17864698590862150392.a n = A026010 n

end A026010

/-! ## A026010.P5728029919217310143

`A051920(n+2)-A051920(n)`
-/

namespace A026010.P5728029919217310143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051920 (n + 2) - A051920 n

end

end A026010.P5728029919217310143

namespace A026010

/-- `A051920(n+2)-A051920(n)` -/
def P5728029919217310143.Spec : Prop :=
  ∀ n, P5728029919217310143.a n = A026010 n

end A026010

/-!
# A026011: Expansion of Product_{m>=1} (1 + q^m)^(2*m).

The programs for A026011, there is no canonical definition to state claims against.
-/

/-! ## A026011.P8080284749533208560

`A277938(∑[n+3])`
-/

namespace A026011.P8080284749533208560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277938 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026011.P8080284749533208560

/-! ## A026011.P1795755943225563504

`record[A277938(A165157(n))]`
-/

namespace A026011.P1795755943225563504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277938 (A165157 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026011.P1795755943225563504

/-! ## A026011.P4431469870375389863

`record[A277938(A027379(A008612(n)))]`
-/

namespace A026011.P4431469870375389863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277938 (A027379 (A008612 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026011.P4431469870375389863

/-! ## A026011.P8357338851254172226

`record[A277938(A055998(A008616(n)))]`
-/

namespace A026011.P8357338851254172226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277938 (A055998 (A008616 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026011.P8357338851254172226

/-! ## A026011.P8077271011379753415

`record[A277938(A055998(A025480(n)))]`
-/

namespace A026011.P8077271011379753415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277938 (A055998 (A025480 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026011.P8077271011379753415

/-! ## A026011.P5601348254791172327

`record[A277938(A055998(A025581(n)))]`
-/

namespace A026011.P5601348254791172327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277938 (A055998 (A025581 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026011.P5601348254791172327

/-! ## A026011.P9653202445542127151

`record[A277938(A027379(A291769(n)))]`
-/

namespace A026011.P9653202445542127151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277938 (A027379 (A291769 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026011.P9653202445542127151

/-!
# A026012: Second differences of Catalan numbers A000108.

The programs for A026012, the canonical program `A026012.P8146518293460492297` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026012 has offset 0).

The definition of A026012 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026012.P8146518293460492297

`A000245(n+1)-A000245(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A026012

/-- `A000245(n+1)-A000245(n)` -/
def P8146518293460492297.Spec : Prop :=
  ∀ n, P8146518293460492297.a n = A026012 n

theorem P8146518293460492297.correct : P8146518293460492297.Spec := by
  intro n
  simp only [A026012]

end A026012

/-! ## A026012.P2612538508459635272

`Δ[A000245(n)]`
-/

namespace A026012.P2612538508459635272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026012.P2612538508459635272

namespace A026012

/-- `Δ[A000245(n)]` -/
def P2612538508459635272.Spec : Prop :=
  ∀ n, P2612538508459635272.a n = A026012 n

theorem P2612538508459635272.correct : P2612538508459635272.Spec := by
  intro n
  simp only [A026012, Nat.add_sub_cancel, A026012.P2612538508459635272.f1, A026012.P2612538508459635272.a, A026012.P8146518293460492297.a, SequenceMachineLib.memo_apply]

end A026012

/-! ## A026012.P10712889107239605842

`A071738(n+1)`
-/

namespace A026012.P10712889107239605842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071738 (n + 1)

end

end A026012.P10712889107239605842

namespace A026012

/-- `A071738(n+1)` -/
def P10712889107239605842.Spec : Prop :=
  ∀ n, P10712889107239605842.a n = A026012 n

end A026012

/-! ## A026012.P7834355124822020475

`A026021(2*n)`
-/

namespace A026012.P7834355124822020475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026021 (2 * n)

end

end A026012.P7834355124822020475

namespace A026012

/-- `A026021(2*n)` -/
def P7834355124822020475.Spec : Prop :=
  ∀ n, P7834355124822020475.a n = A026012 n

end A026012

/-! ## A026012.P12079076446000993417

`Δ[Δ[A000108(n)]]`
-/

namespace A026012.P12079076446000993417
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026012.P12079076446000993417

namespace A026012

/-- `Δ[Δ[A000108(n)]]` -/
def P12079076446000993417.Spec : Prop :=
  ∀ n, P12079076446000993417.a n = A026012 n

end A026012

/-! ## A026012.P5912082585411892553

`Δ[Δ[A120304(n)]]`
-/

namespace A026012.P5912082585411892553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026012.P5912082585411892553

namespace A026012

/-- `Δ[Δ[A120304(n)]]` -/
def P5912082585411892553.Spec : Prop :=
  ∀ n, P5912082585411892553.a n = A026012 n

end A026012

/-! ## A026012.P6385566440124873671

`Δ[Δ[A246604(n)]]`
-/

namespace A026012.P6385566440124873671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246604 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026012.P6385566440124873671

namespace A026012

/-- `Δ[Δ[A246604(n)]]` -/
def P6385566440124873671.Spec : Prop :=
  ∀ n, P6385566440124873671.a n = A026012 n

end A026012

/-! ## A026012.P17151462924895242223

`Δ[Δ[abs(A168491(n))]]`
-/

namespace A026012.P17151462924895242223
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026012.P17151462924895242223

namespace A026012

/-- `Δ[Δ[abs(A168491(n))]]` -/
def P17151462924895242223.Spec : Prop :=
  ∀ n, P17151462924895242223.a n = A026012 n

end A026012

/-! ## A026012.P13865660607096829481

`Δ[abs(A115142(n+2))]`
-/

namespace A026012.P13865660607096829481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115142 (n + 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026012.P13865660607096829481

namespace A026012

/-- `Δ[abs(A115142(n+2))]` -/
def P13865660607096829481.Spec : Prop :=
  ∀ n, P13865660607096829481.a n = A026012 n

end A026012

/-! ## A026012.P15456613393270398919

`Δ[Δ[A120588(n+1)]]`
-/

namespace A026012.P15456613393270398919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026012.P15456613393270398919

namespace A026012

/-- `Δ[Δ[A120588(n+1)]]` -/
def P15456613393270398919.Spec : Prop :=
  ∀ n, P15456613393270398919.a n = A026012 n

end A026012

/-! ## A026012.P11532034491516420694

`Δ[Δ[A028303(2*n)]]`
-/

namespace A026012.P11532034491516420694
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026012.P11532034491516420694

namespace A026012

/-- `Δ[Δ[A028303(2*n)]]` -/
def P11532034491516420694.Spec : Prop :=
  ∀ n, P11532034491516420694.a n = A026012 n

end A026012

/-! ## A026012.P3252451010493419628

`Δ[Δ[A028304(2*n)]]`
-/

namespace A026012.P3252451010493419628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026012.P3252451010493419628

namespace A026012

/-- `Δ[Δ[A028304(2*n)]]` -/
def P3252451010493419628.Spec : Prop :=
  ∀ n, P3252451010493419628.a n = A026012 n

end A026012

/-! ## A026012.P8801898628775710552

`Δ[Δ[A126120(2*n)]]`
-/

namespace A026012.P8801898628775710552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026012.P8801898628775710552

namespace A026012

/-- `Δ[Δ[A126120(2*n)]]` -/
def P8801898628775710552.Spec : Prop :=
  ∀ n, P8801898628775710552.a n = A026012 n

end A026012

/-! ## A026012.P11333904804213707855

`Δ[Δ[A126324(2*n)]]`
-/

namespace A026012.P11333904804213707855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126324 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026012.P11333904804213707855

namespace A026012

/-- `Δ[Δ[A126324(2*n)]]` -/
def P11333904804213707855.Spec : Prop :=
  ∀ n, P11333904804213707855.a n = A026012 n

end A026012

/-! ## A026012.P6264302075045436284

`Δ[Δ[A208355(2*n)]]`
-/

namespace A026012.P6264302075045436284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026012.P6264302075045436284

namespace A026012

/-- `Δ[Δ[A208355(2*n)]]` -/
def P6264302075045436284.Spec : Prop :=
  ∀ n, P6264302075045436284.a n = A026012 n

end A026012

/-! ## A026012.P18424872788100583968

`Δ[A289598(n+1)]+1`
-/

namespace A026012.P18424872788100583968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A026012.P18424872788100583968

namespace A026012

/-- `Δ[A289598(n+1)]+1` -/
def P18424872788100583968.Spec : Prop :=
  ∀ n, P18424872788100583968.a n = A026012 n

end A026012

/-! ## A026012.P1043367469770192356

`Δ[n/2*A007054(n)]`
-/

namespace A026012.P1043367469770192356
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A007054 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026012.P1043367469770192356

namespace A026012

/-- `Δ[n/2*A007054(n)]` -/
def P1043367469770192356.Spec : Prop :=
  ∀ n, P1043367469770192356.a n = (A026012 n : ℚ)

end A026012

/-! ## A026012.P7972227089326929701

`Δ[Δ[abs(A115140(n+1))]]`
-/

namespace A026012.P7972227089326929701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115140 (n + 1)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026012.P7972227089326929701

namespace A026012

/-- `Δ[Δ[abs(A115140(n+1))]]` -/
def P7972227089326929701.Spec : Prop :=
  ∀ n, P7972227089326929701.a n = A026012 n

end A026012

/-! ## A026012.P1100261025470385089

`Δ[Δ[A089408(2*n+1)]]`
-/

namespace A026012.P1100261025470385089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026012.P1100261025470385089

namespace A026012

/-- `Δ[Δ[A089408(2*n+1)]]` -/
def P1100261025470385089.Spec : Prop :=
  ∀ n, P1100261025470385089.a n = A026012 n

end A026012

/-! ## A026012.P11308594164935024956

`Δ[Δ[A097331(2*n+1)]]`
-/

namespace A026012.P11308594164935024956
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026012.P11308594164935024956

namespace A026012

/-- `Δ[Δ[A097331(2*n+1)]]` -/
def P11308594164935024956.Spec : Prop :=
  ∀ n, P11308594164935024956.a n = A026012 n

end A026012

/-!
# A026013: a(n) = number of (s(0), s(1), ..., s(2n)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| = 1 for i = 1,2,...,n, s(0) = 2, s(2n) = 4. Also a(n) = T(2n,n-1), where T is the array defined in A026009.

The programs for A026013, the canonical program `A026013.P4755213788874432283` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026013 has offset 1).

The definition of A026013 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026013.P10706194579652192035

`A099376(n)+A032952(n)`
-/

namespace A026013.P10706194579652192035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + A032952 n

end

end A026013.P10706194579652192035

namespace A026013

/-- `A099376(n)+A032952(n)` -/
def P10706194579652192035.Spec : Prop :=
  ∀ n, P10706194579652192035.a n = A026013 (n + 1)

end A026013

/-! ## A026013.P4755213788874432283

`A002057(n)+A000588(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A026013

/-- `A002057(n)+A000588(n+1)` -/
def P4755213788874432283.Spec : Prop :=
  ∀ n, P4755213788874432283.a n = A026013 (n + 1)

theorem P4755213788874432283.correct : P4755213788874432283.Spec := by
  intro n
  simp only [A026013, Nat.add_sub_cancel]

end A026013

/-! ## A026013.P7104240312240443703

`A099376(n+1)+A000588(n+1)`
-/

namespace A026013.P7104240312240443703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 (n + 1) + A000588 (n + 1)

end

end A026013.P7104240312240443703

namespace A026013

/-- `A099376(n+1)+A000588(n+1)` -/
def P7104240312240443703.Spec : Prop :=
  ∀ n, P7104240312240443703.a n = A026013 (n + 1)

end A026013

/-! ## A026013.P9795744672807866791

`A026029(n+1)-A000108(n+1)`
-/

namespace A026013.P9795744672807866791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026029 (n + 1) - A000108 (n + 1)

end

end A026013.P9795744672807866791

namespace A026013

/-- `A026029(n+1)-A000108(n+1)` -/
def P9795744672807866791.Spec : Prop :=
  ∀ n, P9795744672807866791.a n = A026013 (n + 1)

end A026013

/-! ## A026013.P2080661231437676181

`A370477(n+1)-A071724(n+1)`
-/

namespace A026013.P2080661231437676181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370477 (n + 1) - A071724 (n + 1)

end

end A026013.P2080661231437676181

namespace A026013

/-- `A370477(n+1)-A071724(n+1)` -/
def P2080661231437676181.Spec : Prop :=
  ∀ n, P2080661231437676181.a n = A026013 (n + 1)

end A026013

/-! ## A026013.P11672642617565755582

`A026029(n+1)-A026008(2*n)`
-/

namespace A026013.P11672642617565755582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026029 (n + 1) - A026008 (2 * n)

end

end A026013.P11672642617565755582

namespace A026013

/-- `A026029(n+1)-A026008(2*n)` -/
def P11672642617565755582.Spec : Prop :=
  ∀ n, P11672642617565755582.a n = A026013 (n + 1)

end A026013

/-! ## A026013.P11219657227187423450

`A000588(n+1)+∑[A026016(n+1)]`
-/

namespace A026013.P11219657227187423450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000588 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026013.P11219657227187423450

namespace A026013

/-- `A000588(n+1)+∑[A026016(n+1)]` -/
def P11219657227187423450.Spec : Prop :=
  ∀ n, P11219657227187423450.a n = A026013 (n + 1)

end A026013

/-! ## A026013.P6868344731187741571

`A099363(2*n+1)+A026029(n+1)`
-/

namespace A026013.P6868344731187741571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099363 (2 * n + 1) + A026029 (n + 1)

end

end A026013.P6868344731187741571

namespace A026013

/-- `A099363(2*n+1)+A026029(n+1)` -/
def P6868344731187741571.Spec : Prop :=
  ∀ n, P6868344731187741571.a n = A026013 (n + 1)

end A026013

/-! ## A026013.P10886136219278970354

`A026029(n+1)-A208355(2*n+1)`
-/

namespace A026013.P10886136219278970354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026029 (n + 1) - A208355 (2 * n + 1)

end

end A026013.P10886136219278970354

namespace A026013

/-- `A026029(n+1)-A208355(2*n+1)` -/
def P10886136219278970354.Spec : Prop :=
  ∀ n, P10886136219278970354.a n = A026013 (n + 1)

end A026013

/-! ## A026013.P1788235146238763399

`A071724(n+1)+A032952(n)-A000108(n+1)`
-/

namespace A026013.P1788235146238763399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 (n + 1) + (A032952 n - A000108 (n + 1))

end

end A026013.P1788235146238763399

namespace A026013

/-- `A071724(n+1)+A032952(n)-A000108(n+1)` -/
def P1788235146238763399.Spec : Prop :=
  ∀ n, P1788235146238763399.a n = A026013 (n + 1)

end A026013

/-! ## A026013.P4212034693862435232

`A000588(n+1)+A026012(n+1)-A000108(n+1)`
-/

namespace A026013.P4212034693862435232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000588 (n + 1) + (A026012 (n + 1) - A000108 (n + 1))

end

end A026013.P4212034693862435232

namespace A026013

/-- `A000588(n+1)+A026012(n+1)-A000108(n+1)` -/
def P4212034693862435232.Spec : Prop :=
  ∀ n, P4212034693862435232.a n = A026013 (n + 1)

end A026013

/-! ## A026013.P5483932208842624612

`Δ[Δ[A143955(n+1)]]`
-/

namespace A026013.P5483932208842624612
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143955 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026013.P5483932208842624612

namespace A026013

/-- `Δ[Δ[A143955(n+1)]]` -/
def P5483932208842624612.Spec : Prop :=
  ∀ n, P5483932208842624612.a n = A026013 (n + 1)

end A026013

/-! ## A026013.P6998470037429171974

`A120989(n+1)-A070857(n)`
-/

namespace A026013.P6998470037429171974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120989 (n + 1) - A070857 n

end

end A026013.P6998470037429171974

namespace A026013

/-- `A120989(n+1)-A070857(n)` -/
def P6998470037429171974.Spec : Prop :=
  ∀ n, P6998470037429171974.a n = A026013 (n + 1)

end A026013

/-! ## A026013.P2674998035383244944

`Δ[Δ[A099376(n)-A014137(n)]]`
-/

namespace A026013.P2674998035383244944
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n - A014137 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026013.P2674998035383244944

namespace A026013

/-- `Δ[Δ[A099376(n)-A014137(n)]]` -/
def P2674998035383244944.Spec : Prop :=
  ∀ n, P2674998035383244944.a n = A026013 (n + 1)

end A026013

/-! ## A026013.P5530736498997466173

`Δ[Δ[A099376(n)-A014138(n)]]`
-/

namespace A026013.P5530736498997466173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n - A014138 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026013.P5530736498997466173

namespace A026013

/-- `Δ[Δ[A099376(n)-A014138(n)]]` -/
def P5530736498997466173.Spec : Prop :=
  ∀ n, P5530736498997466173.a n = A026013 (n + 1)

end A026013

/-! ## A026013.P13976980504578712878

`A002057(n+1)-A071722(n+1)`
-/

namespace A026013.P13976980504578712878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 (n + 1) - A071722 (n + 1)

end

end A026013.P13976980504578712878

namespace A026013

/-- `A002057(n+1)-A071722(n+1)` -/
def P13976980504578712878.Spec : Prop :=
  ∀ n, P13976980504578712878.a n = A026013 (n + 1)

end A026013

/-! ## A026013.P11173928043648852405

`A033434(n+1)-A000245(n+2)`
-/

namespace A026013.P11173928043648852405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033434 (n + 1) - A000245 (n + 2)

end

end A026013.P11173928043648852405

namespace A026013

/-- `A033434(n+1)-A000245(n+2)` -/
def P11173928043648852405.Spec : Prop :=
  ∀ n, P11173928043648852405.a n = A026013 (n + 1)

end A026013

/-! ## A026013.P6091366183452659318

`A026016(n+2)-A026012(n+1)`
-/

namespace A026013.P6091366183452659318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026016 (n + 2) - A026012 (n + 1)

end

end A026013.P6091366183452659318

namespace A026013

/-- `A026016(n+2)-A026012(n+1)` -/
def P6091366183452659318.Spec : Prop :=
  ∀ n, P6091366183452659318.a n = A026013 (n + 1)

end A026013

/-! ## A026013.P17802019106484290646

`A071740(n+1)-A000108(n+2)`
-/

namespace A026013.P17802019106484290646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071740 (n + 1) - A000108 (n + 2)

end

end A026013.P17802019106484290646

namespace A026013

/-- `A071740(n+1)-A000108(n+2)` -/
def P17802019106484290646.Spec : Prop :=
  ∀ n, P17802019106484290646.a n = A026013 (n + 1)

end A026013

/-! ## A026013.P15810868196660187400

`A071725(n+2)-A026012(n+1)`
-/

namespace A026013.P15810868196660187400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071725 (n + 2) - A026012 (n + 1)

end

end A026013.P15810868196660187400

namespace A026013

/-- `A071725(n+2)-A026012(n+1)` -/
def P15810868196660187400.Spec : Prop :=
  ∀ n, P15810868196660187400.a n = A026013 (n + 1)

end A026013

/-!
# A026014: a(n) = number of (s(0), s(1), ..., s(2n)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| = 1 for i = 1,2,...,n, s(0) = 2, s(2n) = 6. Also a(n) = T(2n,n-2), where T is the array defined in A026009.

The programs for A026014, the canonical program `A026014.P18116275856203812632` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026014 has offset 2).

The definition of A026014 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026014.P18116275856203812632

`Δ[A000588(n+2)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A026014

/-- `Δ[A000588(n+2)]` -/
def P18116275856203812632.Spec : Prop :=
  ∀ n, P18116275856203812632.a n = A026014 (n + 2)

theorem P18116275856203812632.correct : P18116275856203812632.Spec := by
  intro n
  simp only [A026014, Nat.add_sub_cancel]

end A026014

/-! ## A026014.P12801993675749345468

`Δ[record[A000588(A008624(n))]]`
-/

namespace A026014.P12801993675749345468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000588 (A008624 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026014.P12801993675749345468

namespace A026014

/-- `Δ[record[A000588(A008624(n))]]` -/
def P12801993675749345468.Spec : Prop :=
  ∀ n, P12801993675749345468.a n = A026014 (n + 2)

end A026014

/-! ## A026014.P3036615410437408339

`A000588(n+3)-A000588(n+2)`
-/

namespace A026014.P3036615410437408339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000588 (n + 3) - A000588 (n + 2)

end

end A026014.P3036615410437408339

namespace A026014

/-- `A000588(n+3)-A000588(n+2)` -/
def P3036615410437408339.Spec : Prop :=
  ∀ n, P3036615410437408339.a n = A026014 (n + 2)

theorem P3036615410437408339.correct : P3036615410437408339.Spec := by
  intro n
  simp only [A026014, Nat.add_sub_cancel, A026014.P3036615410437408339.a, A026014.P18116275856203812632.f1, A026014.P18116275856203812632.a, SequenceMachineLib.memo_apply]

end A026014

/-! ## A026014.P6288214335754355422

`A026017(n+3)-A026013(n+2)`
-/

namespace A026014.P6288214335754355422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026017 (n + 3) - A026013 (n + 2)

end

end A026014.P6288214335754355422

namespace A026014

/-- `A026017(n+3)-A026013(n+2)` -/
def P6288214335754355422.Spec : Prop :=
  ∀ n, P6288214335754355422.a n = A026014 (n + 2)

end A026014

/-! ## A026014.P12833252713526438047

`Δ[A003517(n+2)-A000344(n+2)]`
-/

namespace A026014.P12833252713526438047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003517 (n + 2) - A000344 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026014.P12833252713526438047

namespace A026014

/-- `Δ[A003517(n+2)-A000344(n+2)]` -/
def P12833252713526438047.Spec : Prop :=
  ∀ n, P12833252713526438047.a n = A026014 (n + 2)

end A026014

/-! ## A026014.P10982667100011101211

`Δ[A032952(n+1)-Δ[A099376(n+1)]]`
-/

namespace A026014.P10982667100011101211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032952 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026014.P10982667100011101211

namespace A026014

/-- `Δ[A032952(n+1)-Δ[A099376(n+1)]]` -/
def P10982667100011101211.Spec : Prop :=
  ∀ n, P10982667100011101211.a n = A026014 (n + 2)

end A026014

/-! ## A026014.P2477925487624944874

`A026017(n+3)-(A026017(n+2)+A026016(n+2))`
-/

namespace A026014.P2477925487624944874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026017 (n + 3) - (A026017 (n + 2) + A026016 (n + 2))

end

end A026014.P2477925487624944874

namespace A026014

/-- `A026017(n+3)-(A026017(n+2)+A026016(n+2))` -/
def P2477925487624944874.Spec : Prop :=
  ∀ n, P2477925487624944874.a n = A026014 (n + 2)

end A026014

/-! ## A026014.P4095969917106964518

`A026009((n+4)²-7)`
-/

namespace A026014.P4095969917106964518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026009 ((n + 4) ^ 2 - 7)

end

end A026014.P4095969917106964518

namespace A026014

/-- `A026009((n+4)²-7)` -/
def P4095969917106964518.Spec : Prop :=
  ∀ n, P4095969917106964518.a n = A026014 (n + 2)

end A026014

/-!
# A026015: a(n) = number of (s(0), s(1), ..., s(2n)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| = 1 for i = 1,2,...,n, s(0) = 2, s(2n) = 8. Also a(n) = T(2n,n-3), where T is the array defined in A026009.

The programs for A026015, the canonical program `A026015.P6215984727450645741` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026015 has offset 3).

The definition of A026015 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026015.P12896352344879285844

`Δ[abs(A115148(n+8))]`
-/

namespace A026015.P12896352344879285844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115148 (n + 8)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026015.P12896352344879285844

namespace A026015

/-- `Δ[abs(A115148(n+8))]` -/
def P12896352344879285844.Spec : Prop :=
  ∀ n, P12896352344879285844.a n = A026015 (n + 3)

end A026015

/-! ## A026015.P1324628963233162772

`A115148(n+8)-A115148(n+9)`
-/

namespace A026015.P1324628963233162772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115148 (n + 8) - A115148 (n + 9)

end

end A026015.P1324628963233162772

namespace A026015

/-- `A115148(n+8)-A115148(n+9)` -/
def P1324628963233162772.Spec : Prop :=
  ∀ n, P1324628963233162772.a n = A026015 (n + 3)

end A026015

/-! ## A026015.P6215984727450645741

`Δ[A003518(n+3)-A000588(n+3)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A026015

/-- `Δ[A003518(n+3)-A000588(n+3)]` -/
def P6215984727450645741.Spec : Prop :=
  ∀ n, P6215984727450645741.a n = A026015 (n + 3)

theorem P6215984727450645741.correct : P6215984727450645741.Spec := by
  intro n
  simp only [A026015, Nat.add_sub_cancel]

end A026015

/-! ## A026015.P17054751226512798003

`Δ[-A115148(n+8)]%∑[A000302(n+1)]`
-/

namespace A026015.P17054751226512798003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A115148 (n + 8)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A026015.P17054751226512798003

namespace A026015

/-- `Δ[-A115148(n+8)]%∑[A000302(n+1)]` -/
def P17054751226512798003.Spec : Prop :=
  ∀ n, P17054751226512798003.a n = A026015 (n + 3)

end A026015

/-! ## A026015.P9835454863756786062

`Δ[-A115148(n+8)]%A000108(n+9)`
-/

namespace A026015.P9835454863756786062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A115148 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000108 (n + 9))

end

end A026015.P9835454863756786062

namespace A026015

/-- `Δ[-A115148(n+8)]%A000108(n+9)` -/
def P9835454863756786062.Spec : Prop :=
  ∀ n, P9835454863756786062.a n = A026015 (n + 3)

end A026015

/-! ## A026015.P9887915237551081187

`Δ[A026857(n+3)-A026843(n+3)]`
-/

namespace A026015.P9887915237551081187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026857 (n + 3) - A026843 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026015.P9887915237551081187

namespace A026015

/-- `Δ[A026857(n+3)-A026843(n+3)]` -/
def P9887915237551081187.Spec : Prop :=
  ∀ n, P9887915237551081187.a n = A026015 (n + 3)

end A026015

/-! ## A026015.P798456481757910160

`A026009(A098603(n)+17)`
-/

namespace A026015.P798456481757910160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026009 (A098603 n + 17).toNat

end

end A026015.P798456481757910160

namespace A026015

/-- `A026009(A098603(n)+17)` -/
def P798456481757910160.Spec : Prop :=
  ∀ n, P798456481757910160.a n = A026015 (n + 3)

end A026015

/-! ## A026015.P14465856158290360575

`A026009(A189834(n)+A017365(n))`
-/

namespace A026015.P14465856158290360575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026009 (A189834 n + A017365 n).toNat

end

end A026015.P14465856158290360575

namespace A026015

/-- `A026009(A189834(n)+A017365(n))` -/
def P14465856158290360575.Spec : Prop :=
  ∀ n, P14465856158290360575.a n = A026015 (n + 3)

end A026015

/-!
# A026016: a(n) = binomial(2*n-1, n) - binomial(2*n-1, n+3).

The programs for A026016, the canonical program `A026016.P15392460891905371103` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026016 has offset 1).

The definition of A026016 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026016.P7971388816481492440

`∑[A370477(n)]`
-/

namespace A026016.P7971388816481492440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370477 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026016.P7971388816481492440

namespace A026016

/-- `∑[A370477(n)]` -/
def P7971388816481492440.Spec : Prop :=
  ∀ n, P7971388816481492440.a n = A026016 (n + 1)

end A026016

/-! ## A026016.P15392460891905371103

`Δ[A099376(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A026016

/-- `Δ[A099376(n)]` -/
def P15392460891905371103.Spec : Prop :=
  ∀ n, P15392460891905371103.a n = A026016 (n + 1)

theorem P15392460891905371103.correct : P15392460891905371103.Spec := by
  intro n
  simp only [A026016, Nat.add_sub_cancel]

end A026016

/-! ## A026016.P12170731942771391339

`A071725(n+1)`
-/

namespace A026016.P12170731942771391339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071725 (n + 1)

end

end A026016.P12170731942771391339

namespace A026016

/-- `A071725(n+1)` -/
def P12170731942771391339.Spec : Prop :=
  ∀ n, P12170731942771391339.a n = A026016 (n + 1)

end A026016

/-! ## A026016.P17061674109042482507

`A026021(Δ[n²])`
-/

namespace A026016.P17061674109042482507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026021 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026016.P17061674109042482507

namespace A026016

/-- `A026021(Δ[n²])` -/
def P17061674109042482507.Spec : Prop :=
  ∀ n, P17061674109042482507.a n = A026016 (n + 1)

end A026016

/-! ## A026016.P2544765254380535514

`Δ[Δ[A279557(n)]]`
-/

namespace A026016.P2544765254380535514
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279557 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026016.P2544765254380535514

namespace A026016

/-- `Δ[Δ[A279557(n)]]` -/
def P2544765254380535514.Spec : Prop :=
  ∀ n, P2544765254380535514.a n = A026016 (n + 1)

end A026016

/-! ## A026016.P3127165146542768133

`Δ[abs(A115143(n+3))]`
-/

namespace A026016.P3127165146542768133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115143 (n + 3)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026016.P3127165146542768133

namespace A026016

/-- `Δ[abs(A115143(n+3))]` -/
def P3127165146542768133.Spec : Prop :=
  ∀ n, P3127165146542768133.a n = A026016 (n + 1)

end A026016

/-! ## A026016.P11003254447546222152

`(∑[A071757(n)]+1)/2`
-/

namespace A026016.P11003254447546222152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071757 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A026016.P11003254447546222152

namespace A026016

/-- `(∑[A071757(n)]+1)/2` -/
def P11003254447546222152.Spec : Prop :=
  ∀ n, P11003254447546222152.a n = (A026016 (n + 1) : ℚ)

end A026016

/-! ## A026016.P15398625361994289976

`Δ[Δ[abs(A104496(n+1))]]`
-/

namespace A026016.P15398625361994289976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104496 (n + 1)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026016.P15398625361994289976

namespace A026016

/-- `Δ[Δ[abs(A104496(n+1))]]` -/
def P15398625361994289976.Spec : Prop :=
  ∀ n, P15398625361994289976.a n = A026016 (n + 1)

end A026016

/-! ## A026016.P13223575756111964382

`Δ[2*n*A000108(n+1)/(n+3)]`
-/

namespace A026016.P13223575756111964382
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) * ((A000108 (n + 1) : ℚ) / (n + 3 : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026016.P13223575756111964382

namespace A026016

/-- `Δ[2*n*A000108(n+1)/(n+3)]` -/
def P13223575756111964382.Spec : Prop :=
  ∀ n, P13223575756111964382.a n = (A026016 (n + 1) : ℚ)

end A026016

/-! ## A026016.P4900307561410918638

`record[A071725(A008611(n))]`
-/

namespace A026016.P4900307561410918638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071725 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026016.P4900307561410918638

namespace A026016

/-- `record[A071725(A008611(n))]` -/
def P4900307561410918638.Spec : Prop :=
  ∀ n, P4900307561410918638.a n = A026016 (n + 1)

end A026016

/-! ## A026016.P15911501558666338553

`A070859(n)+A000245(n)`
-/

namespace A026016.P15911501558666338553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070859 n + A000245 n

end

end A026016.P15911501558666338553

namespace A026016

/-- `A070859(n)+A000245(n)` -/
def P15911501558666338553.Spec : Prop :=
  ∀ n, P15911501558666338553.a n = A026016 (n + 1)

end A026016

/-! ## A026016.P17675092440638847965

`A071722(n)+A000588(n)`
-/

namespace A026016.P17675092440638847965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071722 n + A000588 n

end

end A026016.P17675092440638847965

namespace A026016

/-- `A071722(n)+A000588(n)` -/
def P17675092440638847965.Spec : Prop :=
  ∀ n, P17675092440638847965.a n = A026016 (n + 1)

end A026016

/-! ## A026016.P15131473711423295831

`A099376(n)+A026029(n)`
-/

namespace A026016.P15131473711423295831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + A026029 n

end

end A026016.P15131473711423295831

namespace A026016

/-- `A099376(n)+A026029(n)` -/
def P15131473711423295831.Spec : Prop :=
  ∀ n, P15131473711423295831.a n = A026016 (n + 1)

end A026016

/-! ## A026016.P12486485595703723970

`A033434(n)-A000245(n)`
-/

namespace A026016.P12486485595703723970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033434 n - A000245 n

end

end A026016.P12486485595703723970

namespace A026016

/-- `A033434(n)-A000245(n)` -/
def P12486485595703723970.Spec : Prop :=
  ∀ n, P12486485595703723970.a n = A026016 (n + 1)

end A026016

/-! ## A026016.P6953014382723714604

`A002057(n)-A099376(n)`
-/

namespace A026016.P6953014382723714604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n - A099376 n

end

end A026016.P6953014382723714604

namespace A026016

/-- `A002057(n)-A099376(n)` -/
def P6953014382723714604.Spec : Prop :=
  ∀ n, P6953014382723714604.a n = A026016 (n + 1)

end A026016

/-! ## A026016.P17619917820245879487

`A067324(n)-A070031(n)`
-/

namespace A026016.P17619917820245879487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067324 n - A070031 n

end

end A026016.P17619917820245879487

namespace A026016

/-- `A067324(n)-A070031(n)` -/
def P17619917820245879487.Spec : Prop :=
  ∀ n, P17619917820245879487.a n = A026016 (n + 1)

end A026016

/-! ## A026016.P17355124679045702678

`Δ[A026012(n)-A000108(n)]`
-/

namespace A026016.P17355124679045702678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n - A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026016.P17355124679045702678

namespace A026016

/-- `Δ[A026012(n)-A000108(n)]` -/
def P17355124679045702678.Spec : Prop :=
  ∀ n, P17355124679045702678.a n = A026016 (n + 1)

end A026016

/-! ## A026016.P12732766466681482177

`A071722(n+1)-A067324(n)`
-/

namespace A026016.P12732766466681482177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071722 (n + 1) - A067324 n

end

end A026016.P12732766466681482177

namespace A026016

/-- `A071722(n+1)-A067324(n)` -/
def P12732766466681482177.Spec : Prop :=
  ∀ n, P12732766466681482177.a n = A026016 (n + 1)

end A026016

/-! ## A026016.P13175489596535367783

`A099376(n+1)-A099376(n)`
-/

namespace A026016.P13175489596535367783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 (n + 1) - A099376 n

end

end A026016.P13175489596535367783

namespace A026016

/-- `A099376(n+1)-A099376(n)` -/
def P13175489596535367783.Spec : Prop :=
  ∀ n, P13175489596535367783.a n = A026016 (n + 1)

theorem P13175489596535367783.correct : P13175489596535367783.Spec := by
  intro n
  simp only [A026016, Nat.add_sub_cancel, A026016.P13175489596535367783.a, A026016.P15392460891905371103.f1, A026016.P15392460891905371103.a, SequenceMachineLib.memo_apply]

end A026016

/-! ## A026016.P13510926833693194981

`A115143(n+3)+A002057(n)`
-/

namespace A026016.P13510926833693194981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115143 (n + 3) + A002057 n

end

end A026016.P13510926833693194981

namespace A026016

/-- `A115143(n+3)+A002057(n)` -/
def P13510926833693194981.Spec : Prop :=
  ∀ n, P13510926833693194981.a n = A026016 (n + 1)

end A026016

/-!
# A026017: a(n) = number of (s(0), s(1), ..., s(2*n-1)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| = 1 for i = 1,2,...,n, s(0) = 2, s(2*n-1) = 5. Also a(n) = T(2*n-1,n-2), where T is the array defined in A026009.

The programs for A026017, the canonical program `A026017.P5054017065354438030` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026017 has offset 2).

The definition of A026017 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026017.P12304768257626794542

`∑[∑[A370478(n)]]`
-/

namespace A026017.P12304768257626794542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370478 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026017.P12304768257626794542

namespace A026017

/-- `∑[∑[A370478(n)]]` -/
def P12304768257626794542.Spec : Prop :=
  ∀ n, P12304768257626794542.a n = A026017 (n + 2)

end A026017

/-! ## A026017.P5054017065354438030

`A002057(n)+A000588(n+2)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A026017

/-- `A002057(n)+A000588(n+2)` -/
def P5054017065354438030.Spec : Prop :=
  ∀ n, P5054017065354438030.a n = A026017 (n + 2)

theorem P5054017065354438030.correct : P5054017065354438030.Spec := by
  intro n
  simp only [A026017, Nat.add_sub_cancel]

end A026017

/-! ## A026017.P7006689262337450191

`Δ[A032952(n)-A000108(n+1)]`
-/

namespace A026017.P7006689262337450191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032952 n - A000108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026017.P7006689262337450191

namespace A026017

/-- `Δ[A032952(n)-A000108(n+1)]` -/
def P7006689262337450191.Spec : Prop :=
  ∀ n, P7006689262337450191.a n = A026017 (n + 2)

end A026017

/-! ## A026017.P2474041422274622255

`A099376(n+1)+A000588(n+2)`
-/

namespace A026017.P2474041422274622255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 (n + 1) + A000588 (n + 2)

end

end A026017.P2474041422274622255

namespace A026017

/-- `A099376(n+1)+A000588(n+2)` -/
def P2474041422274622255.Spec : Prop :=
  ∀ n, P2474041422274622255.a n = A026017 (n + 2)

end A026017

/-! ## A026017.P18182214963501868564

`A071741(n+1)-A071724(n+2)`
-/

namespace A026017.P18182214963501868564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071741 (n + 1) - A071724 (n + 2)

end

end A026017.P18182214963501868564

namespace A026017

/-- `A071741(n+1)-A071724(n+2)` -/
def P18182214963501868564.Spec : Prop :=
  ∀ n, P18182214963501868564.a n = A026017 (n + 2)

end A026017

/-! ## A026017.P12957071844001303861

`A026013(n+2)-A026016(n+2)`
-/

namespace A026017.P12957071844001303861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026013 (n + 2) - A026016 (n + 2)

end

end A026017.P12957071844001303861

namespace A026017

/-- `A026013(n+2)-A026016(n+2)` -/
def P12957071844001303861.Spec : Prop :=
  ∀ n, P12957071844001303861.a n = A026017 (n + 2)

end A026017

/-! ## A026017.P13787791442408229570

`A026013(n+2)-A071725(n+2)`
-/

namespace A026017.P13787791442408229570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026013 (n + 2) - A071725 (n + 2)

end

end A026017.P13787791442408229570

namespace A026017

/-- `A026013(n+2)-A071725(n+2)` -/
def P13787791442408229570.Spec : Prop :=
  ∀ n, P13787791442408229570.a n = A026017 (n + 2)

end A026017

/-! ## A026017.P13968852314171770255

`A026026(n+3)-A000108(n+2)`
-/

namespace A026017.P13968852314171770255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026026 (n + 3) - A000108 (n + 2)

end

end A026017.P13968852314171770255

namespace A026017

/-- `A026026(n+3)-A000108(n+2)` -/
def P13968852314171770255.Spec : Prop :=
  ∀ n, P13968852314171770255.a n = A026017 (n + 2)

end A026017

/-! ## A026017.P16647717377472357147

`Δ[A026013(n+1)-∑[A026012(n)]]`
-/

namespace A026017.P16647717377472357147
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026013 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026017.P16647717377472357147

namespace A026017

/-- `Δ[A026013(n+1)-∑[A026012(n)]]` -/
def P16647717377472357147.Spec : Prop :=
  ∀ n, P16647717377472357147.a n = A026017 (n + 2)

end A026017

/-! ## A026017.P16063784712761227076

`Δ[A026013(n+1)-A000245(n+1)]`
-/

namespace A026017.P16063784712761227076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026013 (n + 1) - A000245 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026017.P16063784712761227076

namespace A026017

/-- `Δ[A026013(n+1)-A000245(n+1)]` -/
def P16063784712761227076.Spec : Prop :=
  ∀ n, P16063784712761227076.a n = A026017 (n + 2)

end A026017

/-! ## A026017.P3091531913022049268

`Δ[A026013(n+1)]-A026012(n+1)`
-/

namespace A026017.P3091531913022049268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026012 (n + 1)

end

end A026017.P3091531913022049268

namespace A026017

/-- `Δ[A026013(n+1)]-A026012(n+1)` -/
def P3091531913022049268.Spec : Prop :=
  ∀ n, P3091531913022049268.a n = A026017 (n + 2)

end A026017

/-! ## A026017.P4762408039908914263

`A032952(n+1)-(A071724(n+1)+A032952(n))`
-/

namespace A026017.P4762408039908914263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032952 (n + 1) - (A071724 (n + 1) + A032952 n)

end

end A026017.P4762408039908914263

namespace A026017

/-- `A032952(n+1)-(A071724(n+1)+A032952(n))` -/
def P4762408039908914263.Spec : Prop :=
  ∀ n, P4762408039908914263.a n = A026017 (n + 2)

end A026017

/-! ## A026017.P17634001401214754665

`A026013(n+2)+A002057(n)-A002057(n+1)`
-/

namespace A026017.P17634001401214754665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026013 (n + 2) + (A002057 n - A002057 (n + 1))

end

end A026017.P17634001401214754665

namespace A026017

/-- `A026013(n+2)+A002057(n)-A002057(n+1)` -/
def P17634001401214754665.Spec : Prop :=
  ∀ n, P17634001401214754665.a n = A026017 (n + 2)

end A026017

/-! ## A026017.P14294294570611448350

`A003517(n+2)+A002057(n)-A000344(n+2)`
-/

namespace A026017.P14294294570611448350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003517 (n + 2) + (A002057 n - A000344 (n + 2))

end

end A026017.P14294294570611448350

namespace A026017

/-- `A003517(n+2)+A002057(n)-A000344(n+2)` -/
def P14294294570611448350.Spec : Prop :=
  ∀ n, P14294294570611448350.a n = A026017 (n + 2)

end A026017

/-! ## A026017.P5299034887945857123

`A026013(n+2)-(A026013(n+1)+A026012(n+1))`
-/

namespace A026017.P5299034887945857123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026013 (n + 2) - (A026013 (n + 1) + A026012 (n + 1))

end

end A026017.P5299034887945857123

namespace A026017

/-- `A026013(n+2)-(A026013(n+1)+A026012(n+1))` -/
def P5299034887945857123.Spec : Prop :=
  ∀ n, P5299034887945857123.a n = A026017 (n + 2)

end A026017

/-! ## A026017.P16857986856978088546

`A000344(n+2)+A026026(n+3)-A026016(n+2)`
-/

namespace A026017.P16857986856978088546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000344 (n + 2) + (A026026 (n + 3) - A026016 (n + 2))

end

end A026017.P16857986856978088546

namespace A026017

/-- `A000344(n+2)+A026026(n+3)-A026016(n+2)` -/
def P16857986856978088546.Spec : Prop :=
  ∀ n, P16857986856978088546.a n = A026017 (n + 2)

end A026017

/-! ## A026017.P3807655683155283009

`Δ[abs(Δ[A120009(n+2)])]`
-/

namespace A026017.P3807655683155283009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120009 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026017.P3807655683155283009

namespace A026017

/-- `Δ[abs(Δ[A120009(n+2)])]` -/
def P3807655683155283009.Spec : Prop :=
  ∀ n, P3807655683155283009.a n = A026017 (n + 2)

end A026017

/-! ## A026017.P9344198848386383004

`Δ[A000344(n+2)-A002057(n)]`
-/

namespace A026017.P9344198848386383004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000344 (n + 2) - A002057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026017.P9344198848386383004

namespace A026017

/-- `Δ[A000344(n+2)-A002057(n)]` -/
def P9344198848386383004.Spec : Prop :=
  ∀ n, P9344198848386383004.a n = A026017 (n + 2)

end A026017

/-! ## A026017.P14382138908353881916

`A000344(n+3)-(A026016(n+2)+A000344(n+2))`
-/

namespace A026017.P14382138908353881916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000344 (n + 3) - (A026016 (n + 2) + A000344 (n + 2))

end

end A026017.P14382138908353881916

namespace A026017

/-- `A000344(n+3)-(A026016(n+2)+A000344(n+2))` -/
def P14382138908353881916.Spec : Prop :=
  ∀ n, P14382138908353881916.a n = A026017 (n + 2)

end A026017

/-!
# A026018: a(n) = number of (s(0), s(1), ..., s(2*n-1)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| = 1 for i = 1,2,...,n, s(0) = 2, s(2*n-1) = 7. Also a(n) = T(2*n-1,n-3), where T is the array defined in A026009.

The programs for A026018, the canonical program `A026018.P10843162579093165201` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026018 has offset 3).

The definition of A026018 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026018.P10929584831761190206

`Δ[abs(A115147(n+7))]`
-/

namespace A026018.P10929584831761190206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115147 (n + 7)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026018.P10929584831761190206

namespace A026018

/-- `Δ[abs(A115147(n+7))]` -/
def P10929584831761190206.Spec : Prop :=
  ∀ n, P10929584831761190206.a n = A026018 (n + 3)

end A026018

/-! ## A026018.P10843162579093165201

`A026014(n+3)-A026017(n+3)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A026018

/-- `A026014(n+3)-A026017(n+3)` -/
def P10843162579093165201.Spec : Prop :=
  ∀ n, P10843162579093165201.a n = A026018 (n + 3)

theorem P10843162579093165201.correct : P10843162579093165201.Spec := by
  intro n
  simp only [A026018, Nat.add_sub_cancel]

end A026018

/-! ## A026018.P8105373156919968253

`Δ[A026030(n+2)-A002057(n+1)]`
-/

namespace A026018.P8105373156919968253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026030 (n + 2) - A002057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026018.P8105373156919968253

namespace A026018

/-- `Δ[A026030(n+2)-A002057(n+1)]` -/
def P8105373156919968253.Spec : Prop :=
  ∀ n, P8105373156919968253.a n = A026018 (n + 3)

end A026018

/-! ## A026018.P17269068356253825699

`A026014(n+3)-(A026014(n+2)+A026013(n+2))`
-/

namespace A026018.P17269068356253825699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026014 (n + 3) - (A026014 (n + 2) + A026013 (n + 2))

end

end A026018.P17269068356253825699

namespace A026018

/-- `A026014(n+3)-(A026014(n+2)+A026013(n+2))` -/
def P17269068356253825699.Spec : Prop :=
  ∀ n, P17269068356253825699.a n = A026018 (n + 3)

end A026018

/-! ## A026018.P6008264730917879468

`A003517(n+2)+A026014(n+3)-A003517(n+3)`
-/

namespace A026018.P6008264730917879468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003517 (n + 2) + (A026014 (n + 3) - A003517 (n + 3))

end

end A026018.P6008264730917879468

namespace A026018

/-- `A003517(n+2)+A026014(n+3)-A003517(n+3)` -/
def P6008264730917879468.Spec : Prop :=
  ∀ n, P6008264730917879468.a n = A026018 (n + 3)

end A026018

/-! ## A026018.P4652197817518549090

`Δ[A128899(A055999(n)+10)]`
-/

namespace A026018.P4652197817518549090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128899 (A055999 n + 10).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026018.P4652197817518549090

namespace A026018

/-- `Δ[A128899(A055999(n)+10)]` -/
def P4652197817518549090.Spec : Prop :=
  ∀ n, P4652197817518549090.a n = A026018 (n + 3)

end A026018

/-! ## A026018.P14953192852265243671

`A122919(A167614(n+2))`
-/

namespace A026018.P14953192852265243671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122919 (A167614 (n + 2)).toNat

end

end A026018.P14953192852265243671

namespace A026018

/-- `A122919(A167614(n+2))` -/
def P14953192852265243671.Spec : Prop :=
  ∀ n, P14953192852265243671.a n = A026018 (n + 3)

end A026018

/-! ## A026018.P9054488684538719929

`Δ[A109450(∑[n+3])]`
-/

namespace A026018.P9054488684538719929
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109450 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026018.P9054488684538719929

namespace A026018

/-- `Δ[A109450(∑[n+3])]` -/
def P9054488684538719929.Spec : Prop :=
  ∀ n, P9054488684538719929.a n = A026018 (n + 3)

end A026018

/-! ## A026018.P2565496332366231439

`A026009(A108195(n+2))`
-/

namespace A026018.P2565496332366231439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026009 (A108195 (n + 2)).toNat

end

end A026018.P2565496332366231439

namespace A026018

/-- `A026009(A108195(n+2))` -/
def P2565496332366231439.Spec : Prop :=
  ∀ n, P2565496332366231439.a n = A026018 (n + 3)

end A026018

/-! ## A026018.P5219823065382653137

`A026009(A104675(n+1)-1)`
-/

namespace A026018.P5219823065382653137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026009 (A104675 (n + 1) - 1).toNat

end

end A026018.P5219823065382653137

namespace A026018

/-- `A026009(A104675(n+1)-1)` -/
def P5219823065382653137.Spec : Prop :=
  ∀ n, P5219823065382653137.a n = A026018 (n + 3)

end A026018

/-!
# A026019: a(n) = binomial(3*n,n) - binomial(3*n,n-3).

The programs for A026019, the canonical program `A026019.P15282999811891671450` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026019 has offset 0).

The definition of A026019 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026019.P15282999811891671450

`A262717(n+1)+A174687(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A026019

/-- `A262717(n+1)+A174687(n)` -/
def P15282999811891671450.Spec : Prop :=
  ∀ n, P15282999811891671450.a n = A026019 n

theorem P15282999811891671450.correct : P15282999811891671450.Spec := by
  intro n
  simp only [A026019]

end A026019

/-! ## A026019.P15615149519022136922

`A045737(n+2)+A001764(n+1)`
-/

namespace A026019.P15615149519022136922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045737 (n + 2) + A001764 (n + 1)

end

end A026019.P15615149519022136922

namespace A026019

/-- `A045737(n+2)+A001764(n+1)` -/
def P15615149519022136922.Spec : Prop :=
  ∀ n, P15615149519022136922.a n = A026019 n

end A026019

/-! ## A026019.P2069365800518924420

`A047749(2*(n+1))+A045737(n+2)`
-/

namespace A026019.P2069365800518924420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047749 (2 * (n + 1)) + A045737 (n + 2)

end

end A026019.P2069365800518924420

namespace A026019

/-- `A047749(2*(n+1))+A045737(n+2)` -/
def P2069365800518924420.Spec : Prop :=
  ∀ n, P2069365800518924420.a n = A026019 n

end A026019

/-! ## A026019.P1096714455753224573

`A047761(2*n+1)+A045737(n+2)`
-/

namespace A026019.P1096714455753224573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047761 (2 * n + 1) + A045737 (n + 2)

end

end A026019.P1096714455753224573

namespace A026019

/-- `A047761(2*n+1)+A045737(n+2)` -/
def P1096714455753224573.Spec : Prop :=
  ∀ n, P1096714455753224573.a n = A026019 n

end A026019

/-! ## A026019.P17320040459998324297

`A188678(n+1)+A188678(n)+A045737(n+2)`
-/

namespace A026019.P17320040459998324297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188678 (n + 1) + (A188678 n + A045737 (n + 2))

end

end A026019.P17320040459998324297

namespace A026019

/-- `A188678(n+1)+A188678(n)+A045737(n+2)` -/
def P17320040459998324297.Spec : Prop :=
  ∀ n, P17320040459998324297.a n = A026019 n

end A026019

/-! ## A026019.P3105021552638518754

`A045737(n+2)+A121446(n+2)-A006013(n+1)`
-/

namespace A026019.P3105021552638518754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045737 (n + 2) + (A121446 (n + 2) - A006013 (n + 1))

end

end A026019.P3105021552638518754

namespace A026019

/-- `A045737(n+2)+A121446(n+2)-A006013(n+1)` -/
def P3105021552638518754.Spec : Prop :=
  ∀ n, P3105021552638518754.a n = A026019 n

end A026019

/-! ## A026019.P8561877709563536308

`A174687(n)+A174687(n+1)%A045721(n)`
-/

namespace A026019.P8561877709563536308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174687 n + Int.tmod (A174687 (n + 1)) (A045721 n)

end

end A026019.P8561877709563536308

namespace A026019

/-- `A174687(n)+A174687(n+1)%A045721(n)` -/
def P8561877709563536308.Spec : Prop :=
  ∀ n, P8561877709563536308.a n = A026019 n

end A026019

/-!
# A026020: a(n) = binomial(4n, n) - binomial(4n, n - 3).

The programs for A026020, there is no canonical definition to state claims against.
-/

/-! ## A026020.P18418273416928094156

`record[Δ[A050145(ceil(n²/2))]]`
-/

namespace A026020.P18418273416928094156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050145 ⌈(n ^ 2 : ℚ) / 2⌉.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026020.P18418273416928094156

/-! ## A026020.P1616168944217468325

`A026009(A265056(n)+A016789(n))`
-/

namespace A026020.P1616168944217468325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026009 (A265056 n + A016789 n).toNat

end

end A026020.P1616168944217468325

/-!
# A026021: a(n) = T(n, [n/2]), where T is the array defined in A026009.

The programs for A026021, the canonical program `A026021.P624873047912347274` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026021 has offset 0).

The definition of A026021 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026021.P394793921496106690

`A026008(n+2)-A005508(n)`
-/

namespace A026021.P394793921496106690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026008 (n + 2) - A005508 n

end

end A026021.P394793921496106690

namespace A026021

/-- `A026008(n+2)-A005508(n)` -/
def P394793921496106690.Spec : Prop :=
  ∀ n, P394793921496106690.a n = A026021 n

end A026021

/-! ## A026021.P624873047912347274

`A026016(A065033(n))+Δ[A208355(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A026021

/-- `A026016(A065033(n))+Δ[A208355(n)]` -/
def P624873047912347274.Spec : Prop :=
  ∀ n, P624873047912347274.a n = A026021 n

theorem P624873047912347274.correct : P624873047912347274.Spec := by
  intro n
  simp only [A026021]

end A026021

/-! ## A026021.P1526619369519294156

`A001405(n)-A037957(n)`
-/

namespace A026021.P1526619369519294156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - A037957 n

end

end A026021.P1526619369519294156

namespace A026021

/-- `A001405(n)-A037957(n)` -/
def P1526619369519294156.Spec : Prop :=
  ∀ n, P1526619369519294156.a n = A026021 n

end A026021

/-! ## A026021.P14511023442661331608

`abs(A126930(n))-A037957(n)`
-/

namespace A026021.P14511023442661331608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A126930 n| - A037957 n

end

end A026021.P14511023442661331608

namespace A026021

/-- `abs(A126930(n))-A037957(n)` -/
def P14511023442661331608.Spec : Prop :=
  ∀ n, P14511023442661331608.a n = A026021 n

end A026021

/-! ## A026021.P5833905880229161920

`A051920(n)-(A037957(n)+1)`
-/

namespace A026021.P5833905880229161920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051920 n - (A037957 n + 1)

end

end A026021.P5833905880229161920

namespace A026021

/-- `A051920(n)-(A037957(n)+1)` -/
def P5833905880229161920.Spec : Prop :=
  ∀ n, P5833905880229161920.a n = A026021 n

end A026021

/-! ## A026021.P15799877894965137281

`A210736(n+1)-A037957(n)`
-/

namespace A026021.P15799877894965137281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (n + 1) - A037957 n

end

end A026021.P15799877894965137281

namespace A026021

/-- `A210736(n+1)-A037957(n)` -/
def P15799877894965137281.Spec : Prop :=
  ∀ n, P15799877894965137281.a n = A026021 n

end A026021

/-! ## A026021.P6483365031285045730

`A026009(A004273(n)+A002620(n))`
-/

namespace A026021.P6483365031285045730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026009 (A004273 n + A002620 n).toNat

end

end A026021.P6483365031285045730

namespace A026021

/-- `A026009(A004273(n)+A002620(n))` -/
def P6483365031285045730.Spec : Prop :=
  ∀ n, P6483365031285045730.a n = A026021 n

end A026021

/-! ## A026021.P3254426694570503109

`A097805(A001972(2*n+1))-A037957(n)`
-/

namespace A026021.P3254426694570503109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A001972 (2 * n + 1)).toNat - A037957 n

end

end A026021.P3254426694570503109

namespace A026021

/-- `A097805(A001972(2*n+1))-A037957(n)` -/
def P3254426694570503109.Spec : Prop :=
  ∀ n, P3254426694570503109.a n = A026021 n

end A026021

/-!
# A026022: Triangular array T read by rows: T(n,0) = 1 for n >= 0; T(n,k) = C(n,k) for k = 1,2,...,n, for n = 1,2,3; and for n >= 4, T(n,k) = T(n-1,k-1) + T(n-1,k) for k = 1,2,...,[ (n+2)/2 ] and T(n,(n+3)/2) = T(n-1,(n+1)/2) if n is odd.

The programs for A026022, there is no canonical definition to state claims against.
-/

/-! ## A026022.P587805142094921631

`A047030(lt[A000079(n), A090217(n+1)])`
-/

namespace A026022.P587805142094921631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047030 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A026022.P587805142094921631

/-! ## A026022.P14813341336550833520

`A047030(lt[A000288(n), A090217(n+1)])`
-/

namespace A026022.P14813341336550833520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047030 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A026022.P14813341336550833520

/-! ## A026022.P16728329621670855815

`A047030(lt[A011782(n), A090217(n+1)])`
-/

namespace A026022.P16728329621670855815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047030 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A026022.P16728329621670855815

/-! ## A026022.P14212316833617626774

`A095144(lt[A060455(n), A209553(n+1)])`
-/

namespace A026022.P14212316833617626774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060455 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095144 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A026022.P14212316833617626774

/-! ## A026022.P12226294767358457097

`A007318(A335522(n+1)%A342514(3*n))`
-/

namespace A026022.P12226294767358457097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.tmod (A335522 (n + 1)) (A342514 (3 * n))).toNat

end

end A026022.P12226294767358457097

/-!
# A026023: a(n) = number of (s(0), s(1), ..., s(n)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| = 1 for i = 1,2,...,n and s(0) = 3. Also a(n) = Sum{T(n,k), k = 0,1,...,[ (n+3)/2 ]}, where T is defined in A026022.

The programs for A026023, the canonical program `A026023.P18349130492113411666` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026023 has offset 0).

The definition of A026023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026023.P4199523688909189879

`abs(∑[char[2*n]]*A099364(n))`
-/

namespace A026023.P4199523688909189879
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A099364 n|

end

end A026023.P4199523688909189879

namespace A026023

/-- `abs(∑[char[2*n]]*A099364(n))` -/
def P4199523688909189879.Spec : Prop :=
  ∀ n, P4199523688909189879.a n = A026023 n

end A026023

/-! ## A026023.P4701685270263968655

`∑[char[2*n]]*A089408(n+3)`
-/

namespace A026023.P4701685270263968655
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A089408 (n + 3)

end

end A026023.P4701685270263968655

namespace A026023

/-- `∑[char[2*n]]*A089408(n+3)` -/
def P4701685270263968655.Spec : Prop :=
  ∀ n, P4701685270263968655.a n = A026023 n

end A026023

/-! ## A026023.P2748805534090080360

`A037951(n)+A026010(n)`
-/

namespace A026023.P2748805534090080360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037951 n + A026010 n

end

end A026023.P2748805534090080360

namespace A026023

/-- `A037951(n)+A026010(n)` -/
def P2748805534090080360.Spec : Prop :=
  ∀ n, P2748805534090080360.a n = A026023 n

end A026023

/-! ## A026023.P12192660471507931549

`A000034(n)*A117187(n)`
-/

namespace A026023.P12192660471507931549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A117187 n

end

end A026023.P12192660471507931549

namespace A026023

/-- `A000034(n)*A117187(n)` -/
def P12192660471507931549.Spec : Prop :=
  ∀ n, P12192660471507931549.a n = A026023 n

end A026023

/-! ## A026023.P16744848156421195439

`∑[A037951(n)+A001405(n)]`
-/

namespace A026023.P16744848156421195439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037951 n + A001405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026023.P16744848156421195439

namespace A026023

/-- `∑[A037951(n)+A001405(n)]` -/
def P16744848156421195439.Spec : Prop :=
  ∀ n, P16744848156421195439.a n = A026023 n

end A026023

/-! ## A026023.P18349130492113411666

`A116385(n)+A001405(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A026023

/-- `A116385(n)+A001405(n+1)` -/
def P18349130492113411666.Spec : Prop :=
  ∀ n, P18349130492113411666.a n = A026023 n

theorem P18349130492113411666.correct : P18349130492113411666.Spec := by
  intro n
  simp only [A026023]

end A026023

/-! ## A026023.P6162693360834101268

`A037955(n+1)+A037952(n+1)`
-/

namespace A026023.P6162693360834101268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (n + 1) + A037952 (n + 1)

end

end A026023.P6162693360834101268

namespace A026023

/-- `A037955(n+1)+A037952(n+1)` -/
def P6162693360834101268.Spec : Prop :=
  ∀ n, P6162693360834101268.a n = A026023 n

end A026023

/-! ## A026023.P922857951478233292

`A026010(n+1)-A001405(n+1)`
-/

namespace A026023.P922857951478233292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026010 (n + 1) - A001405 (n + 1)

end

end A026023.P922857951478233292

namespace A026023

/-- `A026010(n+1)-A001405(n+1)` -/
def P922857951478233292.Spec : Prop :=
  ∀ n, P922857951478233292.a n = A026023 n

end A026023

/-! ## A026023.P14634007071288915859

`A191782(n+1)-A014495(n+1)`
-/

namespace A026023.P14634007071288915859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191782 (n + 1) - A014495 (n + 1)

end

end A026023.P14634007071288915859

namespace A026023

/-- `A191782(n+1)-A014495(n+1)` -/
def P14634007071288915859.Spec : Prop :=
  ∀ n, P14634007071288915859.a n = A026023 n

end A026023

/-! ## A026023.P3793853080308017810

`A037952(n+2)-A126120(n+1)`
-/

namespace A026023.P3793853080308017810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (n + 2) - A126120 (n + 1)

end

end A026023.P3793853080308017810

namespace A026023

/-- `A037952(n+2)-A126120(n+1)` -/
def P3793853080308017810.Spec : Prop :=
  ∀ n, P3793853080308017810.a n = A026023 n

end A026023

/-! ## A026023.P11577502851329368889

`A001405(n+2)-A208355(n+1)`
-/

namespace A026023.P11577502851329368889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 2) - A208355 (n + 1)

end

end A026023.P11577502851329368889

namespace A026023

/-- `A001405(n+2)-A208355(n+1)` -/
def P11577502851329368889.Spec : Prop :=
  ∀ n, P11577502851329368889.a n = A026023 n

end A026023

/-! ## A026023.P7254013658310480405

`A026010(n+1)-A210736(n+2)`
-/

namespace A026023.P7254013658310480405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026010 (n + 1) - A210736 (n + 2)

end

end A026023.P7254013658310480405

namespace A026023

/-- `A026010(n+1)-A210736(n+2)` -/
def P7254013658310480405.Spec : Prop :=
  ∀ n, P7254013658310480405.a n = A026023 n

end A026023

/-! ## A026023.P10176223803314602581

`A210628(n+2)+A037952(n+2)`
-/

namespace A026023.P10176223803314602581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210628 (n + 2) + A037952 (n + 2)

end

end A026023.P10176223803314602581

namespace A026023

/-- `A210628(n+2)+A037952(n+2)` -/
def P10176223803314602581.Spec : Prop :=
  ∀ n, P10176223803314602581.a n = A026023 n

end A026023

/-! ## A026023.P17620555373641392215

`A366108(n+4)-A028303(n+1)`
-/

namespace A026023.P17620555373641392215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366108 (n + 4) - A028303 (n + 1)

end

end A026023.P17620555373641392215

namespace A026023

/-- `A366108(n+4)-A028303(n+1)` -/
def P17620555373641392215.Spec : Prop :=
  ∀ n, P17620555373641392215.a n = A026023 n

end A026023

/-! ## A026023.P7129957201584615776

`A037955(n+1)+Δ[A001405(n+1)]`
-/

namespace A026023.P7129957201584615776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (n + 1) + (f1 (n + 1) - f1 n)

end

end A026023.P7129957201584615776

namespace A026023

/-- `A037955(n+1)+Δ[A001405(n+1)]` -/
def P7129957201584615776.Spec : Prop :=
  ∀ n, P7129957201584615776.a n = A026023 n

end A026023

/-! ## A026023.P12358191001624024533

`A037955(n+1)+Δ[A051920(n+1)]`
-/

namespace A026023.P12358191001624024533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (n + 1) + (f1 (n + 1) - f1 n)

end

end A026023.P12358191001624024533

namespace A026023

/-- `A037955(n+1)+Δ[A051920(n+1)]` -/
def P12358191001624024533.Spec : Prop :=
  ∀ n, P12358191001624024533.a n = A026023 n

end A026023

/-! ## A026023.P10288569990715698871

`A037955(n+1)+A047171(n+1)+1`
-/

namespace A026023.P10288569990715698871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (n + 1) + (A047171 (n + 1) + 1)

end

end A026023.P10288569990715698871

namespace A026023

/-- `A037955(n+1)+A047171(n+1)+1` -/
def P10288569990715698871.Spec : Prop :=
  ∀ n, P10288569990715698871.a n = A026023 n

end A026023

/-! ## A026023.P14024403815109918745

`A026010(n+1)+1-A051920(n+1)`
-/

namespace A026023.P14024403815109918745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026010 (n + 1) + (1 - A051920 (n + 1))

end

end A026023.P14024403815109918745

namespace A026023

/-- `A026010(n+1)+1-A051920(n+1)` -/
def P14024403815109918745.Spec : Prop :=
  ∀ n, P14024403815109918745.a n = A026023 n

end A026023

/-! ## A026023.P16987794733476088262

`(A026741(n)+1)*A000108(A008619(n))`
-/

namespace A026023.P16987794733476088262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A026741 n + 1) * A000108 (A008619 n).toNat

end

end A026023.P16987794733476088262

namespace A026023

/-- `(A026741(n)+1)*A000108(A008619(n))` -/
def P16987794733476088262.Spec : Prop :=
  ∀ n, P16987794733476088262.a n = A026023 n

end A026023

/-! ## A026023.P17816782705894851338

`A000034(n)*A037955(A109613(n)+1)`
-/

namespace A026023.P17816782705894851338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A037955 (A109613 n + 1).toNat

end

end A026023.P17816782705894851338

namespace A026023

/-- `A000034(n)*A037955(A109613(n)+1)` -/
def P17816782705894851338.Spec : Prop :=
  ∀ n, P17816782705894851338.a n = A026023 n

end A026023

/-!
# A026024: Expansion of 1/((1-2*x)*(1-5*x)*(1-9*x)*(1-10*x)).

The programs for A026024, there is no canonical definition to state claims against.
-/

/-! ## A026024.P5131943504526840068

`a(n-1)+A020494(n)+a(n-1)` with `a(0)=1`
-/

namespace A026024.P5131943504526840068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A020494 n + a (n - 1))

end

end A026024.P5131943504526840068

/-! ## A026024.P18152901121081276477

`Δ[A021144(n)-A021134(n)]`
-/

namespace A026024.P18152901121081276477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021144 n - A021134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026024.P18152901121081276477

/-! ## A026024.P3282500312673992840

`2*A021284(n)-A021144(n)`
-/

namespace A026024.P3282500312673992840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021284 n - A021144 n

end

end A026024.P3282500312673992840

/-! ## A026024.P3554828777784566647

`2*A025998(n)-A025997(n)`
-/

namespace A026024.P3554828777784566647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025998 n - A025997 n

end

end A026024.P3554828777784566647

/-! ## A026024.P7214633697753218175

`A016299(n+1)-A016298(n+1)`
-/

namespace A026024.P7214633697753218175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016299 (n + 1) - A016298 (n + 1)

end

end A026024.P7214633697753218175

/-! ## A026024.P14763048941048668642

`2*A026028(n)-A026149(n)`
-/

namespace A026024.P14763048941048668642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026028 n - A026149 n

end

end A026024.P14763048941048668642

/-!
# A026025: a(n) = (n!)^2 * (1 + Sum_{k=0..n-1} 1/((k+1)(k!)^2)).

The programs for A026025, the canonical program `A026025.P9993153157877877321` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026025 has offset 0).

The definition of A026025 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026025.P9993153157877877321

`n²*a(n-1)+n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026025

/-- `n²*a(n-1)+n` -/
def P9993153157877877321.Spec : Prop :=
  ∀ n, (P9993153157877877321.a n : ℤ) = A026025 n

theorem P9993153157877877321.correct : P9993153157877877321.Spec := by
  intro n
  simp only [A026025]

end A026025

/-! ## A026025.P2546261028353315690

`n*(n*a(n-1)+1)` with `a(0)=1`
-/

namespace A026025.P2546261028353315690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * (n * a (n - 1) + 1)

end

end A026025.P2546261028353315690

namespace A026025

/-- `n*(n*a(n-1)+1)` -/
def P2546261028353315690.Spec : Prop :=
  ∀ n, (P2546261028353315690.a n : ℤ) = A026025 n

theorem P2546261028353315690.correct : P2546261028353315690.Spec := by
  intro n
  simp only [A026025, Nat.add_sub_cancel, A026025.P2546261028353315690.a, A026025.P9993153157877877321.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A026025

/-! ## A026025.P3637665667724473990

`a(n-1)/n^(-2)+n` with `a(0)=1`
-/

namespace A026025.P3637665667724473990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-2 : ℤ) + (n : ℚ)

end

end A026025.P3637665667724473990

namespace A026025

/-- `a(n-1)/n^(-2)+n` -/
def P3637665667724473990.Spec : Prop :=
  ∀ n, P3637665667724473990.a n = (A026025 n : ℚ)

end A026025

/-! ## A026025.P2525823341120968504

`n*or(1, n*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A026025.P2525823341120968504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  n * Nat.lor 1 (n * a (n - 1))

end

end A026025.P2525823341120968504

namespace A026025

/-- `n*or(1, n*a(n-1))` -/
def P2525823341120968504.Spec : Prop :=
  ∀ n, (P2525823341120968504.a n : ℤ) = A026025 n

end A026025

/-! ## A026025.P10742807425432253498

`n*xor(1, n*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A026025.P10742807425432253498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  n * Nat.xor 1 (n * a (n - 1))

end

end A026025.P10742807425432253498

namespace A026025

/-- `n*xor(1, n*a(n-1))` -/
def P10742807425432253498.Spec : Prop :=
  ∀ n, (P10742807425432253498.a n : ℤ) = A026025 n

end A026025

/-!
# A026026: a(n) = number of (s(0), s(1), ..., s(2*n-1)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| = 1 for i = 1,2,...,n, s(0) = 3, s(2*n-1) = 4. Also a(n) = T(2*n-1,n-1), where T is defined in A026022.

The programs for A026026, the canonical program `A026026.P10474121505985252545` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026026 has offset 2).

The definition of A026026 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026026.P12415654611941627340

`A026034(Δ[n²])`
-/

namespace A026026.P12415654611941627340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026034 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026026.P12415654611941627340

namespace A026026

/-- `A026034(Δ[n²])` -/
def P12415654611941627340.Spec : Prop :=
  ∀ n, P12415654611941627340.a n = A026026 (n + 2)

end A026026

/-! ## A026026.P10262055269729241533

`abs(1-A026034(2*n+1))+1`
-/

namespace A026026.P10262055269729241533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A026034 (2 * n + 1)| + 1

end

end A026026.P10262055269729241533

namespace A026026

/-- `abs(1-A026034(2*n+1))+1` -/
def P10262055269729241533.Spec : Prop :=
  ∀ n, P10262055269729241533.a n = A026026 (n + 2)

end A026026

/-! ## A026026.P6492688034875303643

`A071741(n)-A099376(n)`
-/

namespace A026026.P6492688034875303643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071741 n - A099376 n

end

end A026026.P6492688034875303643

namespace A026026

/-- `A071741(n)-A099376(n)` -/
def P6492688034875303643.Spec : Prop :=
  ∀ n, P6492688034875303643.a n = A026026 (n + 2)

end A026026

/-! ## A026026.P10474121505985252545

`Δ[A026029(n)]-A099376(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A026026

/-- `Δ[A026029(n)]-A099376(n)` -/
def P10474121505985252545.Spec : Prop :=
  ∀ n, P10474121505985252545.a n = A026026 (n + 2)

theorem P10474121505985252545.correct : P10474121505985252545.Spec := by
  intro n
  simp only [A026026, Nat.add_sub_cancel]

end A026026

/-! ## A026026.P1728884969875110853

`record[gcd(A026034(n), A126120(n))]`
-/

namespace A026026.P1728884969875110853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026034 n) (A126120 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026026.P1728884969875110853

namespace A026026

/-- `record[gcd(A026034(n), A126120(n))]` -/
def P1728884969875110853.Spec : Prop :=
  ∀ n, (P1728884969875110853.a n : ℤ) = A026026 (n + 2)

end A026026

/-! ## A026026.P2282481939618086233

`A000588(n+1)+∑[A026012(n)]`
-/

namespace A026026.P2282481939618086233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000588 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026026.P2282481939618086233

namespace A026026

/-- `A000588(n+1)+∑[A026012(n)]` -/
def P2282481939618086233.Spec : Prop :=
  ∀ n, P2282481939618086233.a n = A026026 (n + 2)

end A026026

/-! ## A026026.P17676479437463537661

`record[gcd(A026034(n+1), A090192(n))]`
-/

namespace A026026.P17676479437463537661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026034 (n + 1)) (A090192 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026026.P17676479437463537661

namespace A026026

/-- `record[gcd(A026034(n+1), A090192(n))]` -/
def P17676479437463537661.Spec : Prop :=
  ∀ n, (P17676479437463537661.a n : ℤ) = A026026 (n + 2)

end A026026

/-! ## A026026.P10043106407932622438

`A000588(n+1)+A000245(n+1)`
-/

namespace A026026.P10043106407932622438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000588 (n + 1) + A000245 (n + 1)

end

end A026026.P10043106407932622438

namespace A026026

/-- `A000588(n+1)+A000245(n+1)` -/
def P10043106407932622438.Spec : Prop :=
  ∀ n, P10043106407932622438.a n = A026026 (n + 2)

end A026026

/-! ## A026026.P17403378599483504704

`A071724(n+1)+A000588(n+1)`
-/

namespace A026026.P17403378599483504704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 (n + 1) + A000588 (n + 1)

end

end A026026.P17403378599483504704

namespace A026026

/-- `A071724(n+1)+A000588(n+1)` -/
def P17403378599483504704.Spec : Prop :=
  ∀ n, P17403378599483504704.a n = A026026 (n + 2)

end A026026

/-! ## A026026.P9177244701624361231

`A026029(n+1)-A026016(n+1)`
-/

namespace A026026.P9177244701624361231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026029 (n + 1) - A026016 (n + 1)

end

end A026026.P9177244701624361231

namespace A026026

/-- `A026029(n+1)-A026016(n+1)` -/
def P9177244701624361231.Spec : Prop :=
  ∀ n, P9177244701624361231.a n = A026026 (n + 2)

end A026026

/-! ## A026026.P1810177937687350292

`A000588(n+1)+Δ[A000108(n+1)]`
-/

namespace A026026.P1810177937687350292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000588 (n + 1) + (f1 (n + 1) - f1 n)

end

end A026026.P1810177937687350292

namespace A026026

/-- `A000588(n+1)+Δ[A000108(n+1)]` -/
def P1810177937687350292.Spec : Prop :=
  ∀ n, P1810177937687350292.a n = A026026 (n + 2)

end A026026

/-! ## A026026.P12870577452695973134

`A026008(2*n+1)+A000588(n+1)`
-/

namespace A026026.P12870577452695973134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026008 (2 * n + 1) + A000588 (n + 1)

end

end A026026.P12870577452695973134

namespace A026026

/-- `A026008(2*n+1)+A000588(n+1)` -/
def P12870577452695973134.Spec : Prop :=
  ∀ n, P12870577452695973134.a n = A026026 (n + 2)

end A026026

/-! ## A026026.P1813427366685522921

`A001511(2*n+3)*A026034(2*n+1)`
-/

namespace A026026.P1813427366685522921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 3) * A026034 (2 * n + 1)

end

end A026026.P1813427366685522921

namespace A026026

/-- `A001511(2*n+3)*A026034(2*n+1)` -/
def P1813427366685522921.Spec : Prop :=
  ∀ n, P1813427366685522921.a n = A026026 (n + 2)

end A026026

/-! ## A026026.P954089781041283580

`A026034(2*n+1)+char[∑[A156572(3*(n+1))]]`
-/

namespace A026026.P954089781041283580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156572 (3 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026034 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A026026.P954089781041283580

namespace A026026

/-- `A026034(2*n+1)+char[∑[A156572(3*(n+1))]]` -/
def P954089781041283580.Spec : Prop :=
  ∀ n, P954089781041283580.a n = A026026 (n + 2)

end A026026

/-! ## A026026.P13710619918052689968

`A026029(n+1)+A070031(n)-A067324(n)`
-/

namespace A026026.P13710619918052689968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026029 (n + 1) + (A070031 n - A067324 n)

end

end A026026.P13710619918052689968

namespace A026026

/-- `A026029(n+1)+A070031(n)-A067324(n)` -/
def P13710619918052689968.Spec : Prop :=
  ∀ n, P13710619918052689968.a n = A026026 (n + 2)

end A026026

/-! ## A026026.P12361421036502853892

`A026034(2*n+1)+A008683(A000290(n+2))`
-/

namespace A026026.P12361421036502853892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026034 (2 * n + 1) + A008683 (A000290 (n + 2)).toNat

end

end A026026.P12361421036502853892

namespace A026026

/-- `A026034(2*n+1)+A008683(A000290(n+2))` -/
def P12361421036502853892.Spec : Prop :=
  ∀ n, P12361421036502853892.a n = A026026 (n + 2)

end A026026

/-! ## A026026.P186491684354470584

`A000108(A000045(C(2, n)))*A026034(2*n+1)`
-/

namespace A026026.P186491684354470584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A000045 (Nat.choose 2 n)).toNat * A026034 (2 * n + 1)

end

end A026026.P186491684354470584

namespace A026026

/-- `A000108(A000045(C(2, n)))*A026034(2*n+1)` -/
def P186491684354470584.Spec : Prop :=
  ∀ n, P186491684354470584.a n = A026026 (n + 2)

end A026026

/-! ## A026026.P4250172750692602782

`A000245(n+1)+A026013(n+1)-A002057(n)`
-/

namespace A026026.P4250172750692602782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 1) + (A026013 (n + 1) - A002057 n)

end

end A026026.P4250172750692602782

namespace A026026

/-- `A000245(n+1)+A026013(n+1)-A002057(n)` -/
def P4250172750692602782.Spec : Prop :=
  ∀ n, P4250172750692602782.a n = A026026 (n + 2)

end A026026

/-! ## A026026.P4566921112672028359

`A026013(n+1)+A071724(n+1)-A002057(n)`
-/

namespace A026026.P4566921112672028359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026013 (n + 1) + (A071724 (n + 1) - A002057 n)

end

end A026026.P4566921112672028359

namespace A026026

/-- `A026013(n+1)+A071724(n+1)-A002057(n)` -/
def P4566921112672028359.Spec : Prop :=
  ∀ n, P4566921112672028359.a n = A026026 (n + 2)

end A026026

/-! ## A026026.P5864905947398312609

`A000108(n+1)+A071741(n)-A071724(n+1)`
-/

namespace A026026.P5864905947398312609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A071741 n - A071724 (n + 1))

end

end A026026.P5864905947398312609

namespace A026026

/-- `A000108(n+1)+A071741(n)-A071724(n+1)` -/
def P5864905947398312609.Spec : Prop :=
  ∀ n, P5864905947398312609.a n = A026026 (n + 2)

end A026026

/-!
# A026027: a(n) = number of (s(0), s(1), ..., s(2*n-1)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| = 1 for i = 1,2,...,n, s(0) = 3, s(2*n-1) = 6. Also a(n) = T(2*n-1,n-2), where T is defined in A026022.

The programs for A026027, the canonical program `A026027.P8038761387081336440` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026027 has offset 2).

The definition of A026027 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026027.P7384972180202775471

`A000344(n+2)-A115148(n+7)`
-/

namespace A026027.P7384972180202775471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000344 (n + 2) - A115148 (n + 7)

end

end A026027.P7384972180202775471

namespace A026027

/-- `A000344(n+2)-A115148(n+7)` -/
def P7384972180202775471.Spec : Prop :=
  ∀ n, P7384972180202775471.a n = A026027 (n + 2)

end A026027

/-! ## A026027.P3792072630749742199

`A000344(n+2)+A115148(n+7)*A260196(n)`
-/

namespace A026027.P3792072630749742199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000344 (n + 2) + A115148 (n + 7) * A260196 n

end

end A026027.P3792072630749742199

namespace A026027

/-- `A000344(n+2)+A115148(n+7)*A260196(n)` -/
def P3792072630749742199.Spec : Prop :=
  ∀ n, P3792072630749742199.a n = A026027 (n + 2)

end A026027

/-! ## A026027.P8038761387081336440

`A026014(n+2)-A000588(n+2)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A026027

/-- `A026014(n+2)-A000588(n+2)` -/
def P8038761387081336440.Spec : Prop :=
  ∀ n, P8038761387081336440.a n = A026027 (n + 2)

theorem P8038761387081336440.correct : P8038761387081336440.Spec := by
  intro n
  simp only [A026027, Nat.add_sub_cancel]

end A026027

/-! ## A026027.P11251399786494917875

`A026030(n+2)-A026026(n+3)`
-/

namespace A026027.P11251399786494917875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026030 (n + 2) - A026026 (n + 3)

end

end A026027.P11251399786494917875

namespace A026027

/-- `A026030(n+2)-A026026(n+3)` -/
def P11251399786494917875.Spec : Prop :=
  ∀ n, P11251399786494917875.a n = A026027 (n + 2)

end A026027

/-! ## A026027.P14877777741854184998

`Δ[A026030(n+1)-∑[A026029(n)]]`
-/

namespace A026027.P14877777741854184998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026029 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026030 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026027.P14877777741854184998

namespace A026027

/-- `Δ[A026030(n+1)-∑[A026029(n)]]` -/
def P14877777741854184998.Spec : Prop :=
  ∀ n, P14877777741854184998.a n = A026027 (n + 2)

end A026027

/-! ## A026027.P15710899206540777069

`Δ[A026017(n+2)-∑[A032952(n)]]`
-/

namespace A026027.P15710899206540777069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032952 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026017 (n + 2) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026027.P15710899206540777069

namespace A026027

/-- `Δ[A026017(n+2)-∑[A032952(n)]]` -/
def P15710899206540777069.Spec : Prop :=
  ∀ n, P15710899206540777069.a n = A026027 (n + 2)

end A026027

/-! ## A026027.P9280546440820036290

`A026030(n+2)-A026034(2*n+3)`
-/

namespace A026027.P9280546440820036290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026030 (n + 2) - A026034 (2 * n + 3)

end

end A026027.P9280546440820036290

namespace A026027

/-- `A026030(n+2)-A026034(2*n+3)` -/
def P9280546440820036290.Spec : Prop :=
  ∀ n, P9280546440820036290.a n = A026027 (n + 2)

end A026027

/-! ## A026027.P9556862015723181128

`Δ[Δ[A000588(n+1)]]-A000588(n+1)`
-/

namespace A026027.P9556862015723181128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000588 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000588 (n + 1)

end

end A026027.P9556862015723181128

namespace A026027

/-- `Δ[Δ[A000588(n+1)]]-A000588(n+1)` -/
def P9556862015723181128.Spec : Prop :=
  ∀ n, P9556862015723181128.a n = A026027 (n + 2)

end A026027

/-! ## A026027.P6372620961083386494

`A002057(n)+Δ[A026030(n+1)-A002057(n)]`
-/

namespace A026027.P6372620961083386494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026030 (n + 1) - A002057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n + (f1 (n + 1) - f1 n)

end

end A026027.P6372620961083386494

namespace A026027

/-- `A002057(n)+Δ[A026030(n+1)-A002057(n)]` -/
def P6372620961083386494.Spec : Prop :=
  ∀ n, P6372620961083386494.a n = A026027 (n + 2)

end A026027

/-! ## A026027.P1922155615313476472

`A026030(n+2)-(A026030(n+1)+A026029(n+1))`
-/

namespace A026027.P1922155615313476472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026030 (n + 2) - (A026030 (n + 1) + A026029 (n + 1))

end

end A026027.P1922155615313476472

namespace A026027

/-- `A026030(n+2)-(A026030(n+1)+A026029(n+1))` -/
def P1922155615313476472.Spec : Prop :=
  ∀ n, P1922155615313476472.a n = A026027 (n + 2)

end A026027

/-!
# A026028: Expansion of 1/((1-2x)(1-5x)(1-9x)(1-11x)).

The programs for A026028, there is no canonical definition to state claims against.
-/

/-! ## A026028.P7021562014657325388

`a(n-1)+A020499(n)+a(n-1)` with `a(0)=1`
-/

namespace A026028.P7021562014657325388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A020499 n + a (n - 1))

end

end A026028.P7021562014657325388

/-! ## A026028.P12790305926869533673

`2*A021294(n)-A021154(n)`
-/

namespace A026028.P12790305926869533673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021294 n - A021154 n

end

end A026028.P12790305926869533673

/-! ## A026028.P4018510336372917049

`2*A025995(n)-A025993(n)`
-/

namespace A026028.P4018510336372917049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025995 n - A025993 n

end

end A026028.P4018510336372917049

/-! ## A026028.P6727717117345885523

`(A028010(n)+A025995(n))/2`
-/

namespace A026028.P6727717117345885523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028010 n + A025995 n : ℚ) / 2

end

end A026028.P6727717117345885523

/-! ## A026028.P4053042303774617603

`A021284(n)+A021314(n)-A021154(n)`
-/

namespace A026028.P4053042303774617603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021284 n + (A021314 n - A021154 n)

end

end A026028.P4053042303774617603

/-! ## A026028.P14377596983795522038

`A025935(n)+A025953(n)-A025933(n)`
-/

namespace A026028.P14377596983795522038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025935 n + (A025953 n - A025933 n)

end

end A026028.P14377596983795522038

/-! ## A026028.P18289629744143654094

`∑[A016325(n)+A016321(n)]-A021154(n)`
-/

namespace A026028.P18289629744143654094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016325 n + A016321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A021154 n

end

end A026028.P18289629744143654094

/-!
# A026029: Number of (s(0), s(1), ..., s(2n)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| = 1 for i = 1,2,...,n, s(0) = 3, s(2n) = 3. Also T(2n,n), where T is defined in A026022.

The programs for A026029, the canonical program `A026029.P1005494940722334040` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026029 has offset 0).

The definition of A026029 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026029.P1005494940722334040

`A026012(n)+A000588(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A026029

/-- `A026012(n)+A000588(n)` -/
def P1005494940722334040.Spec : Prop :=
  ∀ n, P1005494940722334040.a n = A026029 n

theorem P1005494940722334040.correct : P1005494940722334040.Spec := by
  intro n
  simp only [A026029]

end A026029

/-! ## A026029.P7392173805602880551

`A026034(2*n)`
-/

namespace A026029.P7392173805602880551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026034 (2 * n)

end

end A026029.P7392173805602880551

namespace A026029

/-- `A026034(2*n)` -/
def P7392173805602880551.Spec : Prop :=
  ∀ n, P7392173805602880551.a n = A026029 n

end A026029

/-! ## A026029.P7335264231259220261

`A071741(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A026029.P7335264231259220261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A071741 (n - 1) + a (n - 1)

end

end A026029.P7335264231259220261

namespace A026029

/-- `A071741(n-1)+a(n-1)` -/
def P7335264231259220261.Spec : Prop :=
  ∀ n, P7335264231259220261.a n = A026029 n

end A026029

/-! ## A026029.P6587266760619224788

`A000588(n)+Δ[A000245(n)]`
-/

namespace A026029.P6587266760619224788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000588 n + (f1 (n + 1) - f1 n)

end

end A026029.P6587266760619224788

namespace A026029

/-- `A000588(n)+Δ[A000245(n)]` -/
def P6587266760619224788.Spec : Prop :=
  ∀ n, P6587266760619224788.a n = A026029 n

end A026029

/-! ## A026029.P11428772227638760911

`record[gcd(A026034(n), A090192(n))]`
-/

namespace A026029.P11428772227638760911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026034 n) (A090192 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026029.P11428772227638760911

namespace A026029

/-- `record[gcd(A026034(n), A090192(n))]` -/
def P11428772227638760911.Spec : Prop :=
  ∀ n, (P11428772227638760911.a n : ℤ) = A026029 n

end A026029

/-! ## A026029.P4559856159410021493

`A000588(n)+Δ[Δ[A000108(n)]]`
-/

namespace A026029.P4559856159410021493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000588 n + (f1 (n + 1) - f1 n)

end

end A026029.P4559856159410021493

namespace A026029

/-- `A000588(n)+Δ[Δ[A000108(n)]]` -/
def P4559856159410021493.Spec : Prop :=
  ∀ n, P4559856159410021493.a n = A026029 n

end A026029

/-! ## A026029.P9023609658660003504

`record[gcd(A026034(n+1), A126120(n))]`
-/

namespace A026029.P9023609658660003504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026034 (n + 1)) (A126120 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026029.P9023609658660003504

namespace A026029

/-- `record[gcd(A026034(n+1), A126120(n))]` -/
def P9023609658660003504.Spec : Prop :=
  ∀ n, (P9023609658660003504.a n : ℤ) = A026029 n

end A026029

/-! ## A026029.P6289140773109536094

`A000245(n+1)+A000588(n)-A000245(n)`
-/

namespace A026029.P6289140773109536094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 1) + (A000588 n - A000245 n)

end

end A026029.P6289140773109536094

namespace A026029

/-- `A000245(n+1)+A000588(n)-A000245(n)` -/
def P6289140773109536094.Spec : Prop :=
  ∀ n, P6289140773109536094.a n = A026029 n

end A026029

/-! ## A026029.P4165757985301422624

`A071740(n)-A000245(n)`
-/

namespace A026029.P4165757985301422624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071740 n - A000245 n

end

end A026029.P4165757985301422624

namespace A026029

/-- `A071740(n)-A000245(n)` -/
def P4165757985301422624.Spec : Prop :=
  ∀ n, P4165757985301422624.a n = A026029 n

end A026029

/-! ## A026029.P10515478470200155371

`Δ[A099376(n)]-A099376(n)`
-/

namespace A026029.P10515478470200155371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A099376 n

end

end A026029.P10515478470200155371

namespace A026029

/-- `Δ[A099376(n)]-A099376(n)` -/
def P10515478470200155371.Spec : Prop :=
  ∀ n, P10515478470200155371.a n = A026029 n

end A026029

/-! ## A026029.P17759565717653514938

`A026016(n+1)-A099376(n)`
-/

namespace A026029.P17759565717653514938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026016 (n + 1) - A099376 n

end

end A026029.P17759565717653514938

namespace A026029

/-- `A026016(n+1)-A099376(n)` -/
def P17759565717653514938.Spec : Prop :=
  ∀ n, P17759565717653514938.a n = A026029 n

end A026029

/-! ## A026029.P12869250808932526219

`A071736(n+1)-A067324(n)`
-/

namespace A026029.P12869250808932526219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071736 (n + 1) - A067324 n

end

end A026029.P12869250808932526219

namespace A026029

/-- `A071736(n+1)-A067324(n)` -/
def P12869250808932526219.Spec : Prop :=
  ∀ n, P12869250808932526219.a n = A026029 n

end A026029

/-! ## A026029.P15416474674218485242

`A071725(n+1)-A099376(n)`
-/

namespace A026029.P15416474674218485242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071725 (n + 1) - A099376 n

end

end A026029.P15416474674218485242

namespace A026029

/-- `A071725(n+1)-A099376(n)` -/
def P15416474674218485242.Spec : Prop :=
  ∀ n, P15416474674218485242.a n = A026029 n

end A026029

/-! ## A026029.P15909669130934614892

`A071738(n+2)-A070031(n)`
-/

namespace A026029.P15909669130934614892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071738 (n + 2) - A070031 n

end

end A026029.P15909669130934614892

namespace A026029

/-- `A071738(n+2)-A070031(n)` -/
def P15909669130934614892.Spec : Prop :=
  ∀ n, P15909669130934614892.a n = A026029 n

end A026029

/-! ## A026029.P8204925789772411827

`A002057(n)-2*A099376(n)`
-/

namespace A026029.P8204925789772411827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n - 2 * A099376 n

end

end A026029.P8204925789772411827

namespace A026029

/-- `A002057(n)-2*A099376(n)` -/
def P8204925789772411827.Spec : Prop :=
  ∀ n, P8204925789772411827.a n = A026029 n

end A026029

/-! ## A026029.P2651761879393929032

`A000108(n)+Δ[Δ[A143955(n)]]`
-/

namespace A026029.P2651761879393929032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143955 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (f1 (n + 1) - f1 n)

end

end A026029.P2651761879393929032

namespace A026029

/-- `A000108(n)+Δ[Δ[A143955(n)]]` -/
def P2651761879393929032.Spec : Prop :=
  ∀ n, P2651761879393929032.a n = A026029 n

end A026029

/-! ## A026029.P15596781949739005320

`Δ[Δ[A279557(n)]-A279557(n)]`
-/

namespace A026029.P15596781949739005320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279557 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A279557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026029.P15596781949739005320

namespace A026029

/-- `Δ[Δ[A279557(n)]-A279557(n)]` -/
def P15596781949739005320.Spec : Prop :=
  ∀ n, P15596781949739005320.a n = A026029 n

end A026029

/-! ## A026029.P335847534950383268

`∑[A071741(n)]+1-A071741(n)`
-/

namespace A026029.P335847534950383268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A071741 n)

end

end A026029.P335847534950383268

namespace A026029

/-- `∑[A071741(n)]+1-A071741(n)` -/
def P335847534950383268.Spec : Prop :=
  ∀ n, P335847534950383268.a n = A026029 n

end A026029

/-! ## A026029.P4995114733440642732

`A071739(n+1)-A071724(n+1)`
-/

namespace A026029.P4995114733440642732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071739 (n + 1) - A071724 (n + 1)

end

end A026029.P4995114733440642732

namespace A026029

/-- `A071739(n+1)-A071724(n+1)` -/
def P4995114733440642732.Spec : Prop :=
  ∀ n, P4995114733440642732.a n = A026029 n

end A026029

/-! ## A026029.P5749407888804464363

`2*A026016(n+1)-A002057(n)`
-/

namespace A026029.P5749407888804464363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026016 (n + 1) - A002057 n

end

end A026029.P5749407888804464363

namespace A026029

/-- `2*A026016(n+1)-A002057(n)` -/
def P5749407888804464363.Spec : Prop :=
  ∀ n, P5749407888804464363.a n = A026029 n

end A026029

/-!
# A026030: a(n) = T(2n,n-1), where T is defined in A026022.

The programs for A026030, the canonical program `A026030.P8132233946044282258` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026030 has offset 1).

The definition of A026030 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026030.P8132233946044282258

`Δ[A026029(n+1)-A002057(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A026030

/-- `Δ[A026029(n+1)-A002057(n)]` -/
def P8132233946044282258.Spec : Prop :=
  ∀ n, P8132233946044282258.a n = A026030 (n + 1)

theorem P8132233946044282258.correct : P8132233946044282258.Spec := by
  intro n
  simp only [A026030, Nat.add_sub_cancel]

end A026030

/-! ## A026030.P1577450700186019162

`Δ[A032952(n)]-A026013(n+1)`
-/

namespace A026030.P1577450700186019162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026013 (n + 1)

end

end A026030.P1577450700186019162

namespace A026030

/-- `Δ[A032952(n)]-A026013(n+1)` -/
def P1577450700186019162.Spec : Prop :=
  ∀ n, P1577450700186019162.a n = A026030 (n + 1)

end A026030

/-! ## A026030.P1787825069691206796

`A026026(n+3)-A026029(n+1)`
-/

namespace A026030.P1787825069691206796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026026 (n + 3) - A026029 (n + 1)

end

end A026030.P1787825069691206796

namespace A026030

/-- `A026026(n+3)-A026029(n+1)` -/
def P1787825069691206796.Spec : Prop :=
  ∀ n, P1787825069691206796.a n = A026030 (n + 1)

end A026030

/-! ## A026030.P8734629572820639415

`Δ[A000588(n+1)+A000108(n+1)]`
-/

namespace A026030.P8734629572820639415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000588 (n + 1) + A000108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026030.P8734629572820639415

namespace A026030

/-- `Δ[A000588(n+1)+A000108(n+1)]` -/
def P8734629572820639415.Spec : Prop :=
  ∀ n, P8734629572820639415.a n = A026030 (n + 1)

end A026030

/-! ## A026030.P4711478417140349261

`A000245(n+1)+Δ[A000588(n+1)]`
-/

namespace A026030.P4711478417140349261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 1) + (f1 (n + 1) - f1 n)

end

end A026030.P4711478417140349261

namespace A026030

/-- `A000245(n+1)+Δ[A000588(n+1)]` -/
def P4711478417140349261.Spec : Prop :=
  ∀ n, P4711478417140349261.a n = A026030 (n + 1)

end A026030

/-! ## A026030.P11760412736312510776

`Δ[A026029(n+1)-A099376(n+1)]`
-/

namespace A026030.P11760412736312510776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026029 (n + 1) - A099376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026030.P11760412736312510776

namespace A026030

/-- `Δ[A026029(n+1)-A099376(n+1)]` -/
def P11760412736312510776.Spec : Prop :=
  ∀ n, P11760412736312510776.a n = A026030 (n + 1)

end A026030

/-! ## A026030.P9200252899812286676

`Δ[A026026(n+2)]-A026016(n+1)`
-/

namespace A026030.P9200252899812286676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026026 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026016 (n + 1)

end

end A026030.P9200252899812286676

namespace A026030

/-- `Δ[A026026(n+2)]-A026016(n+1)` -/
def P9200252899812286676.Spec : Prop :=
  ∀ n, P9200252899812286676.a n = A026030 (n + 1)

end A026030

/-! ## A026030.P13308609737314907859

`2*A026017(n+2)-A003517(n+2)`
-/

namespace A026030.P13308609737314907859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026017 (n + 2) - A003517 (n + 2)

end

end A026030.P13308609737314907859

namespace A026030

/-- `2*A026017(n+2)-A003517(n+2)` -/
def P13308609737314907859.Spec : Prop :=
  ∀ n, P13308609737314907859.a n = A026030 (n + 1)

end A026030

/-! ## A026030.P6299767961600832760

`A026034(2*n+3)-A026029(n+1)`
-/

namespace A026030.P6299767961600832760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026034 (2 * n + 3) - A026029 (n + 1)

end

end A026030.P6299767961600832760

namespace A026030

/-- `A026034(2*n+3)-A026029(n+1)` -/
def P6299767961600832760.Spec : Prop :=
  ∀ n, P6299767961600832760.a n = A026030 (n + 1)

end A026030

/-! ## A026030.P8399337084981777070

`A026026(n+3)-A026034(2*(n+1))`
-/

namespace A026030.P8399337084981777070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026026 (n + 3) - A026034 (2 * (n + 1))

end

end A026030.P8399337084981777070

namespace A026030

/-- `A026026(n+3)-A026034(2*(n+1))` -/
def P8399337084981777070.Spec : Prop :=
  ∀ n, P8399337084981777070.a n = A026030 (n + 1)

end A026030

/-! ## A026030.P16341096431875303273

`A026034(2*n+3)-A026034(2*(n+1))`
-/

namespace A026030.P16341096431875303273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026034 (2 * n + 3) - A026034 (2 * (n + 1))

end

end A026030.P16341096431875303273

namespace A026030

/-- `A026034(2*n+3)-A026034(2*(n+1))` -/
def P16341096431875303273.Spec : Prop :=
  ∀ n, P16341096431875303273.a n = A026030 (n + 1)

end A026030

/-! ## A026030.P13422709694614518967

`Δ[A032952(n)]-(A099376(n)+A032952(n))`
-/

namespace A026030.P13422709694614518967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A099376 n + A032952 n)

end

end A026030.P13422709694614518967

namespace A026030

/-- `Δ[A032952(n)]-(A099376(n)+A032952(n))` -/
def P13422709694614518967.Spec : Prop :=
  ∀ n, P13422709694614518967.a n = A026030 (n + 1)

end A026030

/-! ## A026030.P4596321329975536127

`A000245(n+1)+A026017(n+2)-A026013(n+1)`
-/

namespace A026030.P4596321329975536127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 1) + (A026017 (n + 2) - A026013 (n + 1))

end

end A026030.P4596321329975536127

namespace A026030

/-- `A000245(n+1)+A026017(n+2)-A026013(n+1)` -/
def P4596321329975536127.Spec : Prop :=
  ∀ n, P4596321329975536127.a n = A026030 (n + 1)

end A026030

/-! ## A026030.P1944775012003732678

`A026026(n+3)-(A026026(n+2)+A026016(n+1))`
-/

namespace A026030.P1944775012003732678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026026 (n + 3) - (A026026 (n + 2) + A026016 (n + 1))

end

end A026030.P1944775012003732678

namespace A026030

/-- `A026026(n+3)-(A026026(n+2)+A026016(n+1))` -/
def P1944775012003732678.Spec : Prop :=
  ∀ n, P1944775012003732678.a n = A026030 (n + 1)

end A026030

/-! ## A026030.P5075502902441627208

`A071725(n+3)%Δ[A002057(n)]`
-/

namespace A026030.P5075502902441627208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071725 (n + 3)) (f1 (n + 1) - f1 n)

end

end A026030.P5075502902441627208

namespace A026030

/-- `A071725(n+3)%Δ[A002057(n)]` -/
def P5075502902441627208.Spec : Prop :=
  ∀ n, P5075502902441627208.a n = A026030 (n + 1)

end A026030

/-! ## A026030.P12020168435189468584

`A268370(n+4)%A268329(n+5)`
-/

namespace A026030.P12020168435189468584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268370 (n + 4)) (A268329 (n + 5))

end

end A026030.P12020168435189468584

namespace A026030

/-- `A268370(n+4)%A268329(n+5)` -/
def P12020168435189468584.Spec : Prop :=
  ∀ n, P12020168435189468584.a n = A026030 (n + 1)

end A026030

/-! ## A026030.P10922492781367705651

`Δ[A026016(n+2)]%A026016(n+2)`
-/

namespace A026030.P10922492781367705651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026016 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A026016 (n + 2))

end

end A026030.P10922492781367705651

namespace A026030

/-- `Δ[A026016(n+2)]%A026016(n+2)` -/
def P10922492781367705651.Spec : Prop :=
  ∀ n, P10922492781367705651.a n = A026030 (n + 1)

end A026030

/-! ## A026030.P1881110189753691522

`Δ[A120009(n+2)-Δ[A120009(n+2)]]`
-/

namespace A026030.P1881110189753691522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120009 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120009 (n + 2) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026030.P1881110189753691522

namespace A026030

/-- `Δ[A120009(n+2)-Δ[A120009(n+2)]]` -/
def P1881110189753691522.Spec : Prop :=
  ∀ n, P1881110189753691522.a n = A026030 (n + 1)

end A026030

/-!
# A026031: a(n) = number of (s(0), s(1), ..., s(2n)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| = 1 for i = 1,2,...,n, s(0) = 3, s(2n) = 7. Also a(n) = T(2n,n-2), where T is defined in A026022.

The programs for A026031, the canonical program `A026031.P15128004399576730173` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026031 has offset 2).

The definition of A026031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026031.P15128004399576730173

`A026027(n+3)-A026030(n+2)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A026031

/-- `A026027(n+3)-A026030(n+2)` -/
def P15128004399576730173.Spec : Prop :=
  ∀ n, P15128004399576730173.a n = A026031 (n + 2)

theorem P15128004399576730173.correct : P15128004399576730173.Spec := by
  intro n
  simp only [A026031, Nat.add_sub_cancel]

end A026031

/-! ## A026031.P15989772830875448107

`A000344(n+2)-Δ[A115148(n+7)]`
-/

namespace A026031.P15989772830875448107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115148 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000344 (n + 2) - (f1 (n + 1) - f1 n)

end

end A026031.P15989772830875448107

namespace A026031

/-- `A000344(n+2)-Δ[A115148(n+7)]` -/
def P15989772830875448107.Spec : Prop :=
  ∀ n, P15989772830875448107.a n = A026031 (n + 2)

end A026031

/-! ## A026031.P3530513540913950646

`A115147(n+7)-Δ[A115147(n+7)]`
-/

namespace A026031.P3530513540913950646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115147 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115147 (n + 7) - (f1 (n + 1) - f1 n)

end

end A026031.P3530513540913950646

namespace A026031

/-- `A115147(n+7)-Δ[A115147(n+7)]` -/
def P3530513540913950646.Spec : Prop :=
  ∀ n, P3530513540913950646.a n = A026031 (n + 2)

end A026031

/-! ## A026031.P14699668008397093694

`A026027(n+3)-(A026027(n+2)+A026026(n+3))`
-/

namespace A026031.P14699668008397093694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026027 (n + 3) - (A026027 (n + 2) + A026026 (n + 3))

end

end A026031.P14699668008397093694

namespace A026031

/-- `A026027(n+3)-(A026027(n+2)+A026026(n+3))` -/
def P14699668008397093694.Spec : Prop :=
  ∀ n, P14699668008397093694.a n = A026031 (n + 2)

end A026031

/-! ## A026031.P16580114345945416351

`A026018(n+3)+A026018(n+3)-A003518(n+3)`
-/

namespace A026031.P16580114345945416351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026018 (n + 3) + (A026018 (n + 3) - A003518 (n + 3))

end

end A026031.P16580114345945416351

namespace A026031

/-- `A026018(n+3)+A026018(n+3)-A003518(n+3)` -/
def P16580114345945416351.Spec : Prop :=
  ∀ n, P16580114345945416351.a n = A026031 (n + 2)

end A026031

/-! ## A026031.P2178330730655579491

`2*A026018(n+3)-A003518(n+3)`
-/

namespace A026031.P2178330730655579491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026018 (n + 3) - A003518 (n + 3)

end

end A026031.P2178330730655579491

namespace A026031

/-- `2*A026018(n+3)-A003518(n+3)` -/
def P2178330730655579491.Spec : Prop :=
  ∀ n, P2178330730655579491.a n = A026031 (n + 2)

end A026031

/-!
# A026032: a(n) = C(3n,n) - C(3n,n-4).

The programs for A026032, there is no canonical definition to state claims against.
-/

/-! ## A026032.P3344891345788654303

`A005809(n)-A084928(A193110(n+1))`
-/

namespace A026032.P3344891345788654303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n - A084928 (A193110 (n + 1)).toNat

end

end A026032.P3344891345788654303

/-!
# A026033: a(n) = C(4*n,n) - C(4*n,n-4).

The programs for A026033, there is no canonical definition to state claims against.
-/

/-! ## A026033.P15439312082452258806

`A335280(C(4*n, n))`
-/

namespace A026033.P15439312082452258806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335280 (Nat.choose (4 * n) n)

end

end A026033.P15439312082452258806

/-!
# A026034: a(n) = A026022(n,floor(n/2)).

The programs for A026034, the canonical program `A026034.P10503130599749257734` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026034 has offset 0).

The definition of A026034 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026034.P10503130599749257734

`A001405(n)-A037958(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A026034

/-- `A001405(n)-A037958(n)` -/
def P10503130599749257734.Spec : Prop :=
  ∀ n, P10503130599749257734.a n = A026034 n

theorem P10503130599749257734.correct : P10503130599749257734.Spec := by
  intro n
  simp only [A026034]

end A026034

/-! ## A026034.P5782039300885895077

`abs(A126930(n))-A037958(n)`
-/

namespace A026034.P5782039300885895077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A126930 n| - A037958 n

end

end A026034.P5782039300885895077

namespace A026034

/-- `abs(A126930(n))-A037958(n)` -/
def P5782039300885895077.Spec : Prop :=
  ∀ n, P5782039300885895077.a n = A026034 n

end A026034

/-! ## A026034.P7956608710603241667

`A014495(n)+1-A037958(n)`
-/

namespace A026034.P7956608710603241667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 n + (1 - A037958 n)

end

end A026034.P7956608710603241667

namespace A026034

/-- `A014495(n)+1-A037958(n)` -/
def P7956608710603241667.Spec : Prop :=
  ∀ n, P7956608710603241667.a n = A026034 n

end A026034

/-! ## A026034.P15040684645764375156

`A051920(n)-(A037958(n)+1)`
-/

namespace A026034.P15040684645764375156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051920 n - (A037958 n + 1)

end

end A026034.P15040684645764375156

namespace A026034

/-- `A051920(n)-(A037958(n)+1)` -/
def P15040684645764375156.Spec : Prop :=
  ∀ n, P15040684645764375156.a n = A026034 n

end A026034

/-! ## A026034.P17146924968659195269

`A210736(n+1)-A037958(n)`
-/

namespace A026034.P17146924968659195269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (n + 1) - A037958 n

end

end A026034.P17146924968659195269

namespace A026034

/-- `A210736(n+1)-A037958(n)` -/
def P17146924968659195269.Spec : Prop :=
  ∀ n, P17146924968659195269.a n = A026034 n

end A026034

/-! ## A026034.P14411961832019923

`∏[A063210(n+1)/(n+1)]-A037958(n)`
-/

namespace A026034.P14411961832019923
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063210 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (A037958 n : ℚ)

end

end A026034.P14411961832019923

namespace A026034

/-- `∏[A063210(n+1)/(n+1)]-A037958(n)` -/
def P14411961832019923.Spec : Prop :=
  ∀ n, P14411961832019923.a n = (A026034 n : ℚ)

end A026034

/-! ## A026034.P606278771515969989

`A037952(n)+A126120(n)-A037958(n)`
-/

namespace A026034.P606278771515969989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 n + (A126120 n - A037958 n)

end

end A026034.P606278771515969989

namespace A026034

/-- `A037952(n)+A126120(n)-A037958(n)` -/
def P606278771515969989.Spec : Prop :=
  ∀ n, P606278771515969989.a n = A026034 n

end A026034

/-! ## A026034.P14215212251120162101

`A037955(n)+A208355(n)-A037958(n)`
-/

namespace A026034.P14215212251120162101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 n + (A208355 n - A037958 n)

end

end A026034.P14215212251120162101

namespace A026034

/-- `A037955(n)+A208355(n)-A037958(n)` -/
def P14215212251120162101.Spec : Prop :=
  ∀ n, P14215212251120162101.a n = A026034 n

end A026034

/-! ## A026034.P13601250278723925209

`A126869(n)+A138364(n)-A037958(n)`
-/

namespace A026034.P13601250278723925209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n + (A138364 n - A037958 n)

end

end A026034.P13601250278723925209

namespace A026034

/-- `A126869(n)+A138364(n)-A037958(n)` -/
def P13601250278723925209.Spec : Prop :=
  ∀ n, P13601250278723925209.a n = A026034 n

end A026034

/-! ## A026034.P635460742444173919

`A074909(A000982(n))-A037958(n)`
-/

namespace A026034.P635460742444173919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A000982 n).toNat - A037958 n

end

end A026034.P635460742444173919

namespace A026034

/-- `A074909(A000982(n))-A037958(n)` -/
def P635460742444173919.Spec : Prop :=
  ∀ n, P635460742444173919.a n = A026034 n

end A026034

/-! ## A026034.P1243040553108124391

`A007318(A194274(n))-A037958(n)`
-/

namespace A026034.P1243040553108124391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A194274 n).toNat - A037958 n

end

end A026034.P1243040553108124391

namespace A026034

/-- `A007318(A194274(n))-A037958(n)` -/
def P1243040553108124391.Spec : Prop :=
  ∀ n, P1243040553108124391.a n = A026034 n

end A026034

/-! ## A026034.P12206121044728829343

`A061554(A000217(n))-A037958(n)`
-/

namespace A026034.P12206121044728829343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061554 (A000217 n).toNat - A037958 n

end

end A026034.P12206121044728829343

namespace A026034

/-- `A061554(A000217(n))-A037958(n)` -/
def P12206121044728829343.Spec : Prop :=
  ∀ n, P12206121044728829343.a n = A026034 n

end A026034

/-! ## A026034.P4190099610889052296

`A097805(A001972(2*n+1))-A037958(n)`
-/

namespace A026034.P4190099610889052296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A001972 (2 * n + 1)).toNat - A037958 n

end

end A026034.P4190099610889052296

namespace A026034

/-- `A097805(A001972(2*n+1))-A037958(n)` -/
def P4190099610889052296.Spec : Prop :=
  ∀ n, P4190099610889052296.a n = A026034 n

end A026034

/-!
# A026035: Expansion of x^2*(2 - x + x^2) / ((1 + x)*(1 - x)^4).

The programs for A026035, the canonical program `A026035.P1608144524890932002` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026035 has offset 2).

The definition of A026035 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026035.P9090941191355311971

`C(n+2, 3)+floor((n+2)²/2)`
-/

namespace A026035.P9090941191355311971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 3 : ℤ) + ⌊((n + 2) ^ 2 : ℚ) / 2⌋

end

end A026035.P9090941191355311971

namespace A026035

/-- `C(n+2, 3)+floor((n+2)²/2)` -/
def P9090941191355311971.Spec : Prop :=
  ∀ n, P9090941191355311971.a n = A026035 (n + 2)

end A026035

/-! ## A026035.P1608144524890932002

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=2, a(1)=5, a(2)=12, a(3)=22, a(4)=38`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026035

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P1608144524890932002.Spec : Prop :=
  ∀ n, P1608144524890932002.a n = A026035 (n + 2)

theorem P1608144524890932002.correct : P1608144524890932002.Spec := by
  intro n
  simp only [A026035, Nat.add_sub_cancel]

end A026035

/-! ## A026035.P630852120084884337

`∑[∑[abs(xor(n, -2))]]`
-/

namespace A026035.P630852120084884337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026035.P630852120084884337

namespace A026035

/-- `∑[∑[abs(xor(n, -2))]]` -/
def P630852120084884337.Spec : Prop :=
  ∀ n, P630852120084884337.a n = A026035 (n + 2)

end A026035

/-! ## A026035.P9614136196179000999

`∑[∑[xor(1, n)+1]]`
-/

namespace A026035.P9614136196179000999
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026035.P9614136196179000999

namespace A026035

/-- `∑[∑[xor(1, n)+1]]` -/
def P9614136196179000999.Spec : Prop :=
  ∀ n, (P9614136196179000999.a n : ℤ) = A026035 (n + 2)

end A026035

/-! ## A026035.P12131820187180046901

`∑[∑[-xor(n, -2)]]`
-/

namespace A026035.P12131820187180046901
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (-2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026035.P12131820187180046901

namespace A026035

/-- `∑[∑[-xor(n, -2)]]` -/
def P12131820187180046901.Spec : Prop :=
  ∀ n, P12131820187180046901.a n = A026035 (n + 2)

end A026035

/-! ## A026035.P11243281504059474108

`∑[∑[2-xor(1, 1-n)]]`
-/

namespace A026035.P11243281504059474108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (1 - (n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026035.P11243281504059474108

namespace A026035

/-- `∑[∑[2-xor(1, 1-n)]]` -/
def P11243281504059474108.Spec : Prop :=
  ∀ n, P11243281504059474108.a n = A026035 (n + 2)

end A026035

/-! ## A026035.P16164320362897396324

`∑[∑[n]+or(1, n)+1]`
-/

namespace A026035.P16164320362897396324
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + Nat.lor 1 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026035.P16164320362897396324

namespace A026035

/-- `∑[∑[n]+or(1, n)+1]` -/
def P16164320362897396324.Spec : Prop :=
  ∀ n, (P16164320362897396324.a n : ℤ) = A026035 (n + 2)

end A026035

/-! ## A026035.P17393621380395295831

`∑[∑[2*or(1, n)-n]]`
-/

namespace A026035.P17393621380395295831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lor 1 n : ℤ) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026035.P17393621380395295831

namespace A026035

/-- `∑[∑[2*or(1, n)-n]]` -/
def P17393621380395295831.Spec : Prop :=
  ∀ n, P17393621380395295831.a n = A026035 (n + 2)

end A026035

/-! ## A026035.P9634032018503707885

`∑[gcd(2, n)+∑[n]+n]`
-/

namespace A026035.P9634032018503707885
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n + (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026035.P9634032018503707885

namespace A026035

/-- `∑[gcd(2, n)+∑[n]+n]` -/
def P9634032018503707885.Spec : Prop :=
  ∀ n, (P9634032018503707885.a n : ℤ) = A026035 (n + 2)

end A026035

/-! ## A026035.P17742756327429461529

`∑[∑[(-1)^n+1+n]]`
-/

namespace A026035.P17742756327429461529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + 1 + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026035.P17742756327429461529

namespace A026035

/-- `∑[∑[(-1)^n+1+n]]` -/
def P17742756327429461529.Spec : Prop :=
  ∀ n, P17742756327429461529.a n = A026035 (n + 2)

end A026035

/-! ## A026035.P12068527304217662015

`floor(∑[∑[a(n-2)+2]])` with `a(0)=2, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A026035.P12068527304217662015
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  f2 (n - 2) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026035.P12068527304217662015

namespace A026035

/-- `floor(∑[∑[a(n-2)+2]])` -/
def P12068527304217662015.Spec : Prop :=
  ∀ n, (P12068527304217662015.a n : ℤ) = A026035 (n + 2)

end A026035

/-! ## A026035.P13024675373415454285

`∑[∑[a(n-2)+4]]/2` with `a(0)=4, a(1)=2`
-/

namespace A026035.P13024675373415454285
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4, 2] fun n f2 =>
  f2 (n - 2) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A026035.P13024675373415454285

namespace A026035

/-- `∑[∑[a(n-2)+4]]/2` -/
def P13024675373415454285.Spec : Prop :=
  ∀ n, P13024675373415454285.a n = (A026035 (n + 2) : ℚ)

end A026035

/-! ## A026035.P17321400047148895410

`ceil((n+1)/2)+C(n+3, 3)`
-/

namespace A026035.P17321400047148895410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 2⌉ + (Nat.choose (n + 3) 3 : ℤ)

end

end A026035.P17321400047148895410

namespace A026035

/-- `ceil((n+1)/2)+C(n+3, 3)` -/
def P17321400047148895410.Spec : Prop :=
  ∀ n, P17321400047148895410.a n = A026035 (n + 2)

end A026035

/-! ## A026035.P7790154294146382083

`floor(C(n+3, 3)+(n+2)/2)`
-/

namespace A026035.P7790154294146382083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 3) 3 : ℚ) + (n + 2 : ℚ) / 2⌋

end

end A026035.P7790154294146382083

namespace A026035

/-- `floor(C(n+3, 3)+(n+2)/2)` -/
def P7790154294146382083.Spec : Prop :=
  ∀ n, P7790154294146382083.a n = A026035 (n + 2)

end A026035

/-! ## A026035.P17001000829714099070

`round(C(n+3, 3)+(n+1)/2)`
-/

namespace A026035.P17001000829714099070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 3) 3 : ℚ) + (n + 1 : ℚ) / 2)

end

end A026035.P17001000829714099070

namespace A026035

/-- `round(C(n+3, 3)+(n+1)/2)` -/
def P17001000829714099070.Spec : Prop :=
  ∀ n, P17001000829714099070.a n = A026035 (n + 2)

end A026035

/-! ## A026035.P6188695370883671893

`∑[∑[n+1]]+∑[(n+1)%2]`
-/

namespace A026035.P6188695370883671893
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f3 j

end

end A026035.P6188695370883671893

namespace A026035

/-- `∑[∑[n+1]]+∑[(n+1)%2]` -/
def P6188695370883671893.Spec : Prop :=
  ∀ n, (P6188695370883671893.a n : ℤ) = A026035 (n + 2)

end A026035

/-! ## A026035.P14215540858328182555

`floor(∑[∑[∑[2-a(n-1)]]])` with `a(0)=2, a(1)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A026035.P14215540858328182555
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [2, -1] fun n f3 =>
  2 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026035.P14215540858328182555

namespace A026035

/-- `floor(∑[∑[∑[2-a(n-1)]]])` -/
def P14215540858328182555.Spec : Prop :=
  ∀ n, P14215540858328182555.a n = A026035 (n + 2)

end A026035

/-! ## A026035.P11253385174890704524

`(n+1)²+a(n-2)+1` with `a(0)=2, a(1)=5`
-/

namespace A026035.P11253385174890704524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5] fun n a =>
  (n + 1) ^ 2 + (a (n - 2) + 1)

end

end A026035.P11253385174890704524

namespace A026035

/-- `(n+1)²+a(n-2)+1` -/
def P11253385174890704524.Spec : Prop :=
  ∀ n, (P11253385174890704524.a n : ℤ) = A026035 (n + 2)

end A026035

/-! ## A026035.P1787708452959959741

`∑[a(n-2)+2]+∑[∑[n]]` with `a(0)=2, a(1)=2`
-/

namespace A026035.P1787708452959959741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  f1 (n - 2) + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A026035.P1787708452959959741

namespace A026035

/-- `∑[a(n-2)+2]+∑[∑[n]]` -/
def P1787708452959959741.Spec : Prop :=
  ∀ n, (P1787708452959959741.a n : ℤ) = A026035 (n + 2)

end A026035

/-! ## A026035.P7038825198607592437

`∑[∑[n+1]-and(1, n)]+n+1`
-/

namespace A026035.P7038825198607592437
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A026035.P7038825198607592437

namespace A026035

/-- `∑[∑[n+1]-and(1, n)]+n+1` -/
def P7038825198607592437.Spec : Prop :=
  ∀ n, P7038825198607592437.a n = A026035 (n + 2)

end A026035

/-!
# A026036: (d(n)-r(n))/5, where d = A006527 and r is the periodic sequence with fundamental period (4,1,4,0,1).

The programs for A026036, the canonical program `A026036.P9283060597947105394` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026036 has offset 2).

The definition of A026036 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026036.P9283060597947105394

`round((∑[∑[2*(n+1)]]+n)/5)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026036

/-- `round((∑[∑[2*(n+1)]]+n)/5)` -/
def P9283060597947105394.Spec : Prop :=
  ∀ n, P9283060597947105394.a n = A026036 (n + 2)

theorem P9283060597947105394.correct : P9283060597947105394.Spec := by
  intro n
  simp only [A026036, Nat.add_sub_cancel]

end A026036

/-! ## A026036.P15247166336937293550

`∑[∑[a(n-5)+2]]` with `a(0)=0, a(1)=2, a(2)=0, a(3)=3, a(4)=1`
-/

namespace A026036.P15247166336937293550
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 0, 3, 1] fun n f2 =>
  f2 (n - 5) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026036.P15247166336937293550

namespace A026036

/-- `∑[∑[a(n-5)+2]]` -/
def P15247166336937293550.Spec : Prop :=
  ∀ n, (P15247166336937293550.a n : ℤ) = A026036 (n + 2)

end A026036

/-! ## A026036.P4197535289968477469

`∑[(n%5)%2]+∑[∑[∑[(n%5)%2]]]`
-/

namespace A026036.P4197535289968477469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 5 % 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 5 % 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A026036.P4197535289968477469

namespace A026036

/-- `∑[(n%5)%2]+∑[∑[∑[(n%5)%2]]]` -/
def P4197535289968477469.Spec : Prop :=
  ∀ n, (P4197535289968477469.a n : ℤ) = A026036 (n + 2)

end A026036

/-! ## A026036.P1047614715938916909

`ceil((A180118(n)+n)/5)`
-/

namespace A026036.P1047614715938916909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A180118 n + (n : ℤ) : ℚ) / 5⌉

end

end A026036.P1047614715938916909

namespace A026036

/-- `ceil((A180118(n)+n)/5)` -/
def P1047614715938916909.Spec : Prop :=
  ∀ n, P1047614715938916909.a n = A026036 (n + 2)

end A026036

/-! ## A026036.P15304663216183814786

`floor(A167875(n+1)/5)`
-/

namespace A026036.P15304663216183814786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A167875 (n + 1) : ℚ) / 5⌋

end

end A026036.P15304663216183814786

namespace A026036

/-- `floor(A167875(n+1)/5)` -/
def P15304663216183814786.Spec : Prop :=
  ∀ n, P15304663216183814786.a n = A026036 (n + 2)

end A026036

/-! ## A026036.P12640698402303188393

`floor(A054602(n+2)/15)`
-/

namespace A026036.P12640698402303188393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A054602 (n + 2) : ℚ) / 15⌋

end

end A026036.P12640698402303188393

namespace A026036

/-- `floor(A054602(n+2)/15)` -/
def P12640698402303188393.Spec : Prop :=
  ∀ n, P12640698402303188393.a n = A026036 (n + 2)

end A026036

/-! ## A026036.P3999570621752108285

`floor(A008412(n+2)/40)`
-/

namespace A026036.P3999570621752108285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008412 (n + 2) : ℚ) / 40⌋

end

end A026036.P3999570621752108285

namespace A026036

/-- `floor(A008412(n+2)/40)` -/
def P3999570621752108285.Spec : Prop :=
  ∀ n, P3999570621752108285.a n = A026036 (n + 2)

end A026036

/-! ## A026036.P13924142084145098829

`floor(A006527(n+2)/5)`
-/

namespace A026036.P13924142084145098829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006527 (n + 2) : ℚ) / 5⌋

end

end A026036.P13924142084145098829

namespace A026036

/-- `floor(A006527(n+2)/5)` -/
def P13924142084145098829.Spec : Prop :=
  ∀ n, P13924142084145098829.a n = A026036 (n + 2)

end A026036

/-! ## A026036.P9472024058511048287

`floor(A135859(n+3)/15)`
-/

namespace A026036.P9472024058511048287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A135859 (n + 3) : ℚ) / 15⌋

end

end A026036.P9472024058511048287

namespace A026036

/-- `floor(A135859(n+3)/15)` -/
def P9472024058511048287.Spec : Prop :=
  ∀ n, P9472024058511048287.a n = A026036 (n + 2)

end A026036

/-! ## A026036.P3641179512402881920

`floor(A217873(n+2)/20)`
-/

namespace A026036.P3641179512402881920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A217873 (n + 2) : ℚ) / 20⌋

end

end A026036.P3641179512402881920

namespace A026036

/-- `floor(A217873(n+2)/20)` -/
def P3641179512402881920.Spec : Prop :=
  ∀ n, P3641179512402881920.a n = A026036 (n + 2)

end A026036

/-!
# A026037: a(n) = dot_product(1,2,...,n)*(3,4,...,n,1,2).

The programs for A026037, the canonical program `A026037.P2251913350519771995` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026037 has offset 3).

The definition of A026037 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026037.P16194781634537990936

`(n+3)*(2*(n+3)²-3*(n+3)+13)/6`
-/

namespace A026037.P16194781634537990936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) * (((2 * (n + 3) ^ 2 : ℤ) - (3 * (n + 3) : ℤ) + 13 : ℚ) / 6)

end

end A026037.P16194781634537990936

namespace A026037

/-- `(n+3)*(2*(n+3)²-3*(n+3)+13)/6` -/
def P16194781634537990936.Spec : Prop :=
  ∀ n, P16194781634537990936.a n = (A026037 (n + 3) : ℚ)

theorem P16194781634537990936.correct : P16194781634537990936.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A026037, Nat.add_sub_cancel, A026037.P16194781634537990936.a, A026037.P2251913350519771995.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A026037, Nat.add_sub_cancel, A026037.P16194781634537990936.a, A026037.P2251913350519771995.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A026037

/-! ## A026037.P2251913350519771995

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=11, a(1)=22, a(2)=40, a(3)=67`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026037

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P2251913350519771995.Spec : Prop :=
  ∀ n, P2251913350519771995.a n = A026037 (n + 3)

theorem P2251913350519771995.correct : P2251913350519771995.Spec := by
  intro n
  simp only [A026037, Nat.add_sub_cancel]

end A026037

/-! ## A026037.P16925421327136406940

`∑[(A028310(n)+2)²+2]`
-/

namespace A026037.P16925421327136406940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028310 n + 2) ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026037.P16925421327136406940

namespace A026037

/-- `∑[(A028310(n)+2)²+2]` -/
def P16925421327136406940.Spec : Prop :=
  ∀ n, P16925421327136406940.a n = A026037 (n + 3)

end A026037

/-! ## A026037.P12943057901061241549

`∑[A348776(n+2)²+2]`
-/

namespace A026037.P12943057901061241549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348776 (n + 2) ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026037.P12943057901061241549

namespace A026037

/-- `∑[A348776(n+2)²+2]` -/
def P12943057901061241549.Spec : Prop :=
  ∀ n, P12943057901061241549.a n = A026037 (n + 3)

end A026037

/-! ## A026037.P354983174067377150

`Δ[A101338(n)+A063258(n)]`
-/

namespace A026037.P354983174067377150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101338 n + A063258 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026037.P354983174067377150

namespace A026037

/-- `Δ[A101338(n)+A063258(n)]` -/
def P354983174067377150.Spec : Prop :=
  ∀ n, P354983174067377150.a n = A026037 (n + 3)

end A026037

/-! ## A026037.P12860460265512633255

`∑[A010000(A051755(n+2)-n)]`
-/

namespace A026037.P12860460265512633255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010000 (A051755 (n + 2) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026037.P12860460265512633255

namespace A026037

/-- `∑[A010000(A051755(n+2)-n)]` -/
def P12860460265512633255.Spec : Prop :=
  ∀ n, P12860460265512633255.a n = A026037 (n + 3)

end A026037

/-! ## A026037.P1669892950132647127

`ceil(A049480(n+3)+cos(A319099(n+1)))`
-/

namespace A026037.P1669892950132647127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A049480 (n + 3) : ℝ) + Real.cos (A319099 (n + 1) : ℝ)⌉

end

end A026037.P1669892950132647127

namespace A026037

/-- `ceil(A049480(n+3)+cos(A319099(n+1)))` -/
def P1669892950132647127.Spec : Prop :=
  ∀ n, P1669892950132647127.a n = A026037 (n + 3)

end A026037

/-! ## A026037.P6020882733576835070

`Δ[A136396(n+2)]`
-/

namespace A026037.P6020882733576835070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136396 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026037.P6020882733576835070

namespace A026037

/-- `Δ[A136396(n+2)]` -/
def P6020882733576835070.Spec : Prop :=
  ∀ n, P6020882733576835070.a n = A026037 (n + 3)

end A026037

/-! ## A026037.P8292922539632132056

`Δ[abs(A080275(n+2))]`
-/

namespace A026037.P8292922539632132056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080275 (n + 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026037.P8292922539632132056

namespace A026037

/-- `Δ[abs(A080275(n+2))]` -/
def P8292922539632132056.Spec : Prop :=
  ∀ n, P8292922539632132056.a n = A026037 (n + 3)

end A026037

/-! ## A026037.P11370528563665583531

`∑[A052938(A103517(n))²+2]`
-/

namespace A026037.P11370528563665583531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A103517 n).toNat ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026037.P11370528563665583531

namespace A026037

/-- `∑[A052938(A103517(n))²+2]` -/
def P11370528563665583531.Spec : Prop :=
  ∀ n, P11370528563665583531.a n = A026037 (n + 3)

end A026037

/-! ## A026037.P14877889325814922984

`A330640(2*(n+3))`
-/

namespace A026037.P14877889325814922984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330640 (2 * (n + 3))

end

end A026037.P14877889325814922984

namespace A026037

/-- `A330640(2*(n+3))` -/
def P14877889325814922984.Spec : Prop :=
  ∀ n, P14877889325814922984.a n = A026037 (n + 3)

end A026037

/-! ## A026037.P16489877648312335839

`record[A330640(lcm(2, A051755(n+2)))]`
-/

namespace A026037.P16489877648312335839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330640 (Int.lcm 2 (A051755 (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026037.P16489877648312335839

namespace A026037

/-- `record[A330640(lcm(2, A051755(n+2)))]` -/
def P16489877648312335839.Spec : Prop :=
  ∀ n, P16489877648312335839.a n = A026037 (n + 3)

end A026037

/-! ## A026037.P9996522748131275186

`∑[A059100(A003056(∑[n]+1)+2)]`
-/

namespace A026037.P9996522748131275186
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059100 (A003056 (∑ j ∈ Finset.range (n + 1), f2 j + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026037.P9996522748131275186

namespace A026037

/-- `∑[A059100(A003056(∑[n]+1)+2)]` -/
def P9996522748131275186.Spec : Prop :=
  ∀ n, P9996522748131275186.a n = A026037 (n + 3)

end A026037

/-! ## A026037.P9589249649936428385

`A060432(∑[n+2]+3)`
-/

namespace A026037.P9589249649936428385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060432 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A026037.P9589249649936428385

namespace A026037

/-- `A060432(∑[n+2]+3)` -/
def P9589249649936428385.Spec : Prop :=
  ∀ n, P9589249649936428385.a n = A026037 (n + 3)

end A026037

/-! ## A026037.P14575031215721818232

`A332028(A000124(n+2))`
-/

namespace A026037.P14575031215721818232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332028 (A000124 (n + 2)).toNat

end

end A026037.P14575031215721818232

namespace A026037

/-- `A332028(A000124(n+2))` -/
def P14575031215721818232.Spec : Prop :=
  ∀ n, P14575031215721818232.a n = A026037 (n + 3)

end A026037

/-! ## A026037.P5842993137406579535

`A332028(A134869(n+2))`
-/

namespace A026037.P5842993137406579535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332028 (A134869 (n + 2)).toNat

end

end A026037.P5842993137406579535

namespace A026037

/-- `A332028(A134869(n+2))` -/
def P5842993137406579535.Spec : Prop :=
  ∀ n, P5842993137406579535.a n = A026037 (n + 3)

end A026037

/-! ## A026037.P8646488538814770934

`A332028(A000217(n+2)+1)`
-/

namespace A026037.P8646488538814770934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332028 (A000217 (n + 2) + 1).toNat

end

end A026037.P8646488538814770934

namespace A026037

/-- `A332028(A000217(n+2)+1)` -/
def P8646488538814770934.Spec : Prop :=
  ∀ n, P8646488538814770934.a n = A026037 (n + 3)

end A026037

/-! ## A026037.P2311797282837238152

`A134636(∑[n+3]+5)`
-/

namespace A026037.P2311797282837238152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134636 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A026037.P2311797282837238152

namespace A026037

/-- `A134636(∑[n+3]+5)` -/
def P2311797282837238152.Spec : Prop :=
  ∀ n, P2311797282837238152.a n = A026037 (n + 3)

end A026037

/-!
# A026038: a(n) = (d(n)-r(n))/2, where d = A026037 and r is the periodic sequence with fundamental period (1,0,0,1).

The programs for A026038, the canonical program `A026038.P16546118298662362215` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026038 has offset 3).

The definition of A026038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026038.P16546118298662362215

`∑[∑[gcd(2, a(n-1))+n]]` with `a(0)=5, a(1)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026038

/-- `∑[∑[gcd(2, a(n-1))+n]]` -/
def P16546118298662362215.Spec : Prop :=
  ∀ n, (P16546118298662362215.a n : ℤ) = A026038 (n + 3)

theorem P16546118298662362215.correct : P16546118298662362215.Spec := by
  intro n
  simp only [A026038, Nat.add_sub_cancel]

end A026038

/-! ## A026038.P6772853144263484266

`ceil(∑[(n+2)²/2]+n+3)`
-/

namespace A026038.P6772853144263484266
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j + (n + 3 : ℚ)⌉

end

end A026038.P6772853144263484266

namespace A026038

/-- `ceil(∑[(n+2)²/2]+n+3)` -/
def P6772853144263484266.Spec : Prop :=
  ∀ n, P6772853144263484266.a n = A026038 (n + 3)

end A026038

/-! ## A026038.P14397987313620786176

`∑[∑[∑[abs(2-n%4)]]]+n+3`
-/

namespace A026038.P14397987313620786176
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ((n % 4 : ℕ) : ℤ)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 3 : ℤ)

end

end A026038.P14397987313620786176

namespace A026038

/-- `∑[∑[∑[abs(2-n%4)]]]+n+3` -/
def P14397987313620786176.Spec : Prop :=
  ∀ n, P14397987313620786176.a n = A026038 (n + 3)

end A026038

/-! ## A026038.P10886513761347555762

`floor(cosh(log(∑[(n+2)²]+5)))+n+1`
-/

namespace A026038.P10886513761347555762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log ((∑ j ∈ Finset.range (n + 1), f1 j + 5 : ℕ) : ℝ))⌋ + (n + 1 : ℤ)

end

end A026038.P10886513761347555762

namespace A026038

/-- `floor(cosh(log(∑[(n+2)²]+5)))+n+1` -/
def P10886513761347555762.Spec : Prop :=
  ∀ n, P10886513761347555762.a n = A026038 (n + 3)

end A026038

/-! ## A026038.P2016873785871559474

`floor(A026037(n+3)/2)`
-/

namespace A026038.P2016873785871559474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026037 (n + 3) : ℚ) / 2⌋

end

end A026038.P2016873785871559474

namespace A026038

/-- `floor(A026037(n+3)/2)` -/
def P2016873785871559474.Spec : Prop :=
  ∀ n, P2016873785871559474.a n = A026038 (n + 3)

end A026038

/-! ## A026038.P2752396839018485896

`∑[∑[comp[A047401(n+1)]-n]+1]+2`
-/

namespace A026038.P2752396839018485896
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047401 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A026038.P2752396839018485896

namespace A026038

/-- `∑[∑[comp[A047401(n+1)]-n]+1]+2` -/
def P2752396839018485896.Spec : Prop :=
  ∀ n, P2752396839018485896.a n = A026038 (n + 3)

end A026038

/-! ## A026038.P2368931285739451250

`∑[∑[A000045(and(2, n-2))+1+n]]+n+3`
-/

namespace A026038.P2368931285739451250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land 2 ((n : ℤ) - 2)).toNat + 1 + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 3 : ℤ)

end

end A026038.P2368931285739451250

namespace A026038

/-- `∑[∑[A000045(and(2, n-2))+1+n]]+n+3` -/
def P2368931285739451250.Spec : Prop :=
  ∀ n, P2368931285739451250.a n = A026038 (n + 3)

end A026038

/-! ## A026038.P12965367204646626017

`A177787(n+2)+∑[A004525(n)]`
-/

namespace A026038.P12965367204646626017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177787 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026038.P12965367204646626017

namespace A026038

/-- `A177787(n+2)+∑[A004525(n)]` -/
def P12965367204646626017.Spec : Prop :=
  ∀ n, P12965367204646626017.a n = A026038 (n + 3)

end A026038

/-! ## A026038.P3408705771631709971

`A215098(n+3)+∑[A194274(n)]`
-/

namespace A026038.P3408705771631709971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215098 (n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026038.P3408705771631709971

namespace A026038

/-- `A215098(n+3)+∑[A194274(n)]` -/
def P3408705771631709971.Spec : Prop :=
  ∀ n, P3408705771631709971.a n = A026038 (n + 3)

end A026038

/-! ## A026038.P8734847348223759263

`A011848(n+3)+A000125(n+2)`
-/

namespace A026038.P8734847348223759263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 (n + 3) + A000125 (n + 2)

end

end A026038.P8734847348223759263

namespace A026038

/-- `A011848(n+3)+A000125(n+2)` -/
def P8734847348223759263.Spec : Prop :=
  ∀ n, P8734847348223759263.a n = A026038 (n + 3)

end A026038

/-! ## A026038.P6488136818437215047

`A222001(n+1)-A008619(∑[n])`
-/

namespace A026038.P6488136818437215047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222001 (n + 1) - A008619 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026038.P6488136818437215047

namespace A026038

/-- `A222001(n+1)-A008619(∑[n])` -/
def P6488136818437215047.Spec : Prop :=
  ∀ n, P6488136818437215047.a n = A026038 (n + 3)

end A026038

/-! ## A026038.P2296080089743386857

`A222001(n+1)-A110654(A000124(n))`
-/

namespace A026038.P2296080089743386857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222001 (n + 1) - A110654 (A000124 n).toNat

end

end A026038.P2296080089743386857

namespace A026038

/-- `A222001(n+1)-A110654(A000124(n))` -/
def P2296080089743386857.Spec : Prop :=
  ∀ n, P2296080089743386857.a n = A026038 (n + 3)

end A026038

/-! ## A026038.P3955025929357942587

`A001651(A000124(n+2))+A000292(n)`
-/

namespace A026038.P3955025929357942587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A000124 (n + 2)).toNat + A000292 n

end

end A026038.P3955025929357942587

namespace A026038

/-- `A001651(A000124(n+2))+A000292(n)` -/
def P3955025929357942587.Spec : Prop :=
  ∀ n, P3955025929357942587.a n = A026038 (n + 3)

end A026038

/-! ## A026038.P6344662565866838498

`A008619(A027379(n+2))+C(n+3, 3)`
-/

namespace A026038.P6344662565866838498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A027379 (n + 2)).toNat + (Nat.choose (n + 3) 3 : ℤ)

end

end A026038.P6344662565866838498

namespace A026038

/-- `A008619(A027379(n+2))+C(n+3, 3)` -/
def P6344662565866838498.Spec : Prop :=
  ∀ n, P6344662565866838498.a n = A026038 (n + 3)

end A026038

/-!
# A026039: a(n) = (d(n) - r(n))/5, where d = A026037 and r is the periodic sequence with fundamental period (1,2,0,2,0).

The programs for A026039, the canonical program `A026039.P15464940624721497989` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026039 has offset 3).

The definition of A026039 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026039.P15464940624721497989

`a(n-5)+(n+3)²-6*(n+3)+13` with `a(0)=2, a(1)=4, a(2)=8, a(3)=13, a(4)=21`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026039

/-- `a(n-5)+(n+3)²-6*(n+3)+13` -/
def P15464940624721497989.Spec : Prop :=
  ∀ n, P15464940624721497989.a n = A026039 (n + 3)

theorem P15464940624721497989.correct : P15464940624721497989.Spec := by
  intro n
  simp only [A026039, Nat.add_sub_cancel]

end A026039

/-! ## A026039.P16978315197737549143

`floor((2*(n+3)^3-3*(n+3)²+13*(n+3))/30)`
-/

namespace A026039.P16978315197737549143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * (n + 3) ^ 3 : ℤ) - (3 * (n + 3) ^ 2 : ℤ) + (13 * (n + 3) : ℤ) : ℚ) / 30⌋

end

end A026039.P16978315197737549143

namespace A026039

/-- `floor((2*(n+3)^3-3*(n+3)²+13*(n+3))/30)` -/
def P16978315197737549143.Spec : Prop :=
  ∀ n, P16978315197737549143.a n = A026039 (n + 3)

end A026039

/-! ## A026039.P7684222225467684876

`ceil(a(n-1)+(n+2)²/5)` with `a(0)=2`
-/

namespace A026039.P7684222225467684876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌈(a (n - 1) : ℚ) + ((n + 2) ^ 2 : ℚ) / 5⌉

end

end A026039.P7684222225467684876

namespace A026039

/-- `ceil(a(n-1)+(n+2)²/5)` -/
def P7684222225467684876.Spec : Prop :=
  ∀ n, P7684222225467684876.a n = A026039 (n + 3)

end A026039

/-! ## A026039.P632938092677434663

`round(A049480(n+3)/5)`
-/

namespace A026039.P632938092677434663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A049480 (n + 3) : ℚ) / 5)

end

end A026039.P632938092677434663

namespace A026039

/-- `round(A049480(n+3)/5)` -/
def P632938092677434663.Spec : Prop :=
  ∀ n, P632938092677434663.a n = A026039 (n + 3)

end A026039

/-! ## A026039.P13241451027086826171

`∑[A036404(n+2)+A000007(n)]`
-/

namespace A026039.P13241451027086826171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036404 (n + 2) + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026039.P13241451027086826171

namespace A026039

/-- `∑[A036404(n+2)+A000007(n)]` -/
def P13241451027086826171.Spec : Prop :=
  ∀ n, P13241451027086826171.a n = A026039 (n + 3)

end A026039

/-! ## A026039.P10779153257004674912

`A020725(∑[A036404(n+2)])`
-/

namespace A026039.P10779153257004674912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036404 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A026039.P10779153257004674912

namespace A026039

/-- `A020725(∑[A036404(n+2)])` -/
def P10779153257004674912.Spec : Prop :=
  ∀ n, P10779153257004674912.a n = A026039 (n + 3)

end A026039

/-!
# A026040: a(n) = dot_product(1,2,...,n)*(4,5,...,n,1,2,3).

The programs for A026040, the canonical program `A026040.P13760729346587042189` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026040 has offset 4).

The definition of A026040 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026040.P13760729346587042189

`(n+4)*((n+4)²-3*(n+4)+14)/3`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026040

/-- `(n+4)*((n+4)²-3*(n+4)+14)/3` -/
def P13760729346587042189.Spec : Prop :=
  ∀ n, P13760729346587042189.a n = (A026040 (n + 4) : ℚ)

end A026040

/-! ## A026040.P9482345933618169153

`A026041(n+4)+A026041(n+4)`
-/

namespace A026040.P9482345933618169153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026041 (n + 4) + A026041 (n + 4)

end

end A026040.P9482345933618169153

namespace A026040

/-- `A026041(n+4)+A026041(n+4)` -/
def P9482345933618169153.Spec : Prop :=
  ∀ n, P9482345933618169153.a n = A026040 (n + 4)

end A026040

/-! ## A026040.P197944337019392631

`A026043(n+5)-(A000217(n+5)+6)`
-/

namespace A026040.P197944337019392631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026043 (n + 5) - (A000217 (n + 5) + 6)

end

end A026040.P197944337019392631

namespace A026040

/-- `A026043(n+5)-(A000217(n+5)+6)` -/
def P197944337019392631.Spec : Prop :=
  ∀ n, P197944337019392631.a n = A026040 (n + 4)

end A026040

/-! ## A026040.P10267587425406449877

`A026037(n+4)+3-∑[n+1]`
-/

namespace A026040.P10267587425406449877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026037 (n + 4) + (3 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A026040.P10267587425406449877

namespace A026040

/-- `A026037(n+4)+3-∑[n+1]` -/
def P10267587425406449877.Spec : Prop :=
  ∀ n, P10267587425406449877.a n = A026040 (n + 4)

end A026040

/-! ## A026040.P3857728337679293315

`∑[A005563(n+1)]+A000217(n+7)-7`
-/

namespace A026040.P3857728337679293315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A000217 (n + 7) - 7)

end

end A026040.P3857728337679293315

namespace A026040

/-- `∑[A005563(n+1)]+A000217(n+7)-7` -/
def P3857728337679293315.Spec : Prop :=
  ∀ n, P3857728337679293315.a n = A026040 (n + 4)

end A026040

/-! ## A026040.P12964595356201368629

`A034856(n+1)+A026043(n+5)-Δ[A026043(n+5)]`
-/

namespace A026040.P12964595356201368629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026043 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1) + (A026043 (n + 5) - (f1 (n + 1) - f1 n))

end

end A026040.P12964595356201368629

namespace A026040

/-- `A034856(n+1)+A026043(n+5)-Δ[A026043(n+5)]` -/
def P12964595356201368629.Spec : Prop :=
  ∀ n, P12964595356201368629.a n = A026040 (n + 4)

end A026040

/-! ## A026040.P17036413672600263950

`A229446(n+3)+2+n`
-/

namespace A026040.P17036413672600263950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229446 (n + 3) + 2 + (n : ℤ)

end

end A026040.P17036413672600263950

namespace A026040

/-- `A229446(n+3)+2+n` -/
def P17036413672600263950.Spec : Prop :=
  ∀ n, P17036413672600263950.a n = A026040 (n + 4)

end A026040

/-! ## A026040.P5611877554717783206

`A188554(n+3)+A188554(n+3)`
-/

namespace A026040.P5611877554717783206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188554 (n + 3) + A188554 (n + 3)

end

end A026040.P5611877554717783206

namespace A026040

/-- `A188554(n+3)+A188554(n+3)` -/
def P5611877554717783206.Spec : Prop :=
  ∀ n, P5611877554717783206.a n = A026040 (n + 4)

end A026040

/-! ## A026040.P17365721527408767695

`A140226(n+3)+4`
-/

namespace A026040.P17365721527408767695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140226 (n + 3) + 4

end

end A026040.P17365721527408767695

namespace A026040

/-- `A140226(n+3)+4` -/
def P17365721527408767695.Spec : Prop :=
  ∀ n, P17365721527408767695.a n = A026040 (n + 4)

end A026040

/-! ## A026040.P10898555947605104574

`Δ[2*A188555(n+3)]`
-/

namespace A026040.P10898555947605104574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188555 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026040.P10898555947605104574

namespace A026040

/-- `Δ[2*A188555(n+3)]` -/
def P10898555947605104574.Spec : Prop :=
  ∀ n, P10898555947605104574.a n = A026040 (n + 4)

end A026040

/-! ## A026040.P274725861255061732

`Δ[A220147(n+3)]-(n+2)`
-/

namespace A026040.P274725861255061732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220147 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 2 : ℤ)

end

end A026040.P274725861255061732

namespace A026040

/-- `Δ[A220147(n+3)]-(n+2)` -/
def P274725861255061732.Spec : Prop :=
  ∀ n, P274725861255061732.a n = A026040 (n + 4)

end A026040

/-! ## A026040.P1728799182808503444

`A028557(n+3)+∑[A028552(n)]`
-/

namespace A026040.P1728799182808503444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028557 (n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026040.P1728799182808503444

namespace A026040

/-- `A028557(n+3)+∑[A028552(n)]` -/
def P1728799182808503444.Spec : Prop :=
  ∀ n, P1728799182808503444.a n = A026040 (n + 4)

end A026040

/-! ## A026040.P3447477803973883071

`A000292(n+4)+A000292(n)+4`
-/

namespace A026040.P3447477803973883071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 4) + (A000292 n + 4)

end

end A026040.P3447477803973883071

namespace A026040

/-- `A000292(n+4)+A000292(n)+4` -/
def P3447477803973883071.Spec : Prop :=
  ∀ n, P3447477803973883071.a n = A026040 (n + 4)

end A026040

/-! ## A026040.P18245786073499314515

`A000096(n+5)+∑[(n+2)²]`
-/

namespace A026040.P18245786073499314515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 5) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A026040.P18245786073499314515

namespace A026040

/-- `A000096(n+5)+∑[(n+2)²]` -/
def P18245786073499314515.Spec : Prop :=
  ∀ n, P18245786073499314515.a n = A026040 (n + 4)

end A026040

/-!
# A026041: a(n) = d(n)/2, where d = A026040.

The programs for A026041, the canonical program `A026041.P1820701064590440920` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026041 has offset 4).

The definition of A026041 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026041.P4109368462127441178

`(n+4)*((n+4)²-3*(n+4)+14)/6`
-/

namespace A026041.P4109368462127441178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℚ) * ((((n + 4) ^ 2 : ℤ) - (3 * (n + 4) : ℤ) + 14 : ℚ) / 6)

end

end A026041.P4109368462127441178

namespace A026041

/-- `(n+4)*((n+4)²-3*(n+4)+14)/6` -/
def P4109368462127441178.Spec : Prop :=
  ∀ n, P4109368462127441178.a n = (A026041 (n + 4) : ℚ)

end A026041

/-! ## A026041.P1820701064590440920

`a(n-1)+A022856(n+6)` with `a(0)=12`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026041

/-- `a(n-1)+A022856(n+6)` -/
def P1820701064590440920.Spec : Prop :=
  ∀ n, P1820701064590440920.a n = A026041 (n + 4)

theorem P1820701064590440920.correct : P1820701064590440920.Spec := by
  intro n
  simp only [A026041, Nat.add_sub_cancel]

end A026041

/-! ## A026041.P17419673005817186820

`A026040(n+4)/2`
-/

namespace A026041.P17419673005817186820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026040 (n + 4) : ℚ) / 2

end

end A026041.P17419673005817186820

namespace A026041

/-- `A026040(n+4)/2` -/
def P17419673005817186820.Spec : Prop :=
  ∀ n, P17419673005817186820.a n = (A026041 (n + 4) : ℚ)

end A026041

/-! ## A026041.P17363771369376201321

`abs(a(n-1)+A000217(n+2)+2)` with `a(0)=12`
-/

namespace A026041.P17363771369376201321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12] fun n a =>
  |a (n - 1) + (A000217 (n + 2) + 2)|

end

end A026041.P17363771369376201321

namespace A026041

/-- `abs(a(n-1)+A000217(n+2)+2)` -/
def P17363771369376201321.Spec : Prop :=
  ∀ n, P17363771369376201321.a n = A026041 (n + 4)

end A026041

/-! ## A026041.P3160686866728123550

`A188554(n+3)`
-/

namespace A026041.P3160686866728123550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188554 (n + 3)

end

end A026041.P3160686866728123550

namespace A026041

/-- `A188554(n+3)` -/
def P3160686866728123550.Spec : Prop :=
  ∀ n, P3160686866728123550.a n = A026041 (n + 4)

end A026041

/-! ## A026041.P2536450411686042008

`(A229446(n+3)+n+2)/2`
-/

namespace A026041.P2536450411686042008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229446 (n + 3) + (n + 2 : ℤ) : ℚ) / 2

end

end A026041.P2536450411686042008

namespace A026041

/-- `(A229446(n+3)+n+2)/2` -/
def P2536450411686042008.Spec : Prop :=
  ∀ n, P2536450411686042008.a n = (A026041 (n + 4) : ℚ)

end A026041

/-! ## A026041.P6736026899856180932

`Δ[A188555(n+3)]`
-/

namespace A026041.P6736026899856180932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188555 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026041.P6736026899856180932

namespace A026041

/-- `Δ[A188555(n+3)]` -/
def P6736026899856180932.Spec : Prop :=
  ∀ n, P6736026899856180932.a n = A026041 (n + 4)

end A026041

/-! ## A026041.P11178146749164768727

`(A140226(n+3)+4)/2`
-/

namespace A026041.P11178146749164768727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140226 (n + 3) + 4 : ℚ) / 2

end

end A026041.P11178146749164768727

namespace A026041

/-- `(A140226(n+3)+4)/2` -/
def P11178146749164768727.Spec : Prop :=
  ∀ n, P11178146749164768727.a n = (A026041 (n + 4) : ℚ)

end A026041

/-! ## A026041.P15202512136104308438

`Δ[Δ[A188556(n+3)]]`
-/

namespace A026041.P15202512136104308438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188556 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026041.P15202512136104308438

namespace A026041

/-- `Δ[Δ[A188556(n+3)]]` -/
def P15202512136104308438.Spec : Prop :=
  ∀ n, P15202512136104308438.a n = A026041 (n + 4)

end A026041

/-! ## A026041.P12076679598703287899

`Δ[A051744(n+1)+A000096(n+4)+7]`
-/

namespace A026041.P12076679598703287899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051744 (n + 1) + (A000096 (n + 4) + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026041.P12076679598703287899

namespace A026041

/-- `Δ[A051744(n+1)+A000096(n+4)+7]` -/
def P12076679598703287899.Spec : Prop :=
  ∀ n, P12076679598703287899.a n = A026041 (n + 4)

end A026041

/-! ## A026041.P3450899883343455265

`A106513(A046691(n+2))`
-/

namespace A026041.P3450899883343455265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106513 (A046691 (n + 2)).toNat

end

end A026041.P3450899883343455265

namespace A026041

/-- `A106513(A046691(n+2))` -/
def P3450899883343455265.Spec : Prop :=
  ∀ n, P3450899883343455265.a n = A026041 (n + 4)

end A026041

/-! ## A026041.P16448811359388444928

`A106513(A027379(n+2)-1)`
-/

namespace A026041.P16448811359388444928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106513 (A027379 (n + 2) - 1).toNat

end

end A026041.P16448811359388444928

namespace A026041

/-- `A106513(A027379(n+2)-1)` -/
def P16448811359388444928.Spec : Prop :=
  ∀ n, P16448811359388444928.a n = A026041 (n + 4)

end A026041

/-! ## A026041.P4126508270745835573

`A106513(A000096(n+2)+n+1)`
-/

namespace A026041.P4126508270745835573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106513 (A000096 (n + 2) + (n + 1 : ℤ)).toNat

end

end A026041.P4126508270745835573

namespace A026041

/-- `A106513(A000096(n+2)+n+1)` -/
def P4126508270745835573.Spec : Prop :=
  ∀ n, P4126508270745835573.a n = A026041 (n + 4)

end A026041

/-! ## A026041.P10820658812366662445

`A106513(A034856(n+2)+n+2)`
-/

namespace A026041.P10820658812366662445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106513 (A034856 (n + 2) + (n + 2 : ℤ)).toNat

end

end A026041.P10820658812366662445

namespace A026041

/-- `A106513(A034856(n+2)+n+2)` -/
def P10820658812366662445.Spec : Prop :=
  ∀ n, P10820658812366662445.a n = A026041 (n + 4)

end A026041

/-!
# A026042: a(n) = (d(n)-r(n))/5, where d = A026040 and r is the periodic sequence with fundamental period (4,0,4,3,4).

The programs for A026042, the canonical program `A026042.P2025845977118465759` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026042 has offset 1).

The definition of A026042 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026042.P2025845977118465759

`floor(2*(∑[∑[n+2]+3]+7)/5)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026042

/-- `floor(2*(∑[∑[n+2]+3]+7)/5)` -/
def P2025845977118465759.Spec : Prop :=
  ∀ n, P2025845977118465759.a n = A026042 (n + 1)

theorem P2025845977118465759.correct : P2025845977118465759.Spec := by
  intro n
  simp only [A026042, Nat.add_sub_cancel]

end A026042

/-! ## A026042.P1318092379411781981

`(A026040(n+4)-A152856(n))/5`
-/

namespace A026042.P1318092379411781981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026040 (n + 4) - A152856 n : ℚ) / 5

end

end A026042.P1318092379411781981

namespace A026042

/-- `(A026040(n+4)-A152856(n))/5` -/
def P1318092379411781981.Spec : Prop :=
  ∀ n, P1318092379411781981.a n = (A026042 (n + 1) : ℚ)

end A026042

/-! ## A026042.P10594352351568799030

`round(A047663(n+2)/A047667(n+2))`
-/

namespace A026042.P10594352351568799030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A047663 (n + 2) : ℚ) / (A047667 (n + 2) : ℚ))

end

end A026042.P10594352351568799030

namespace A026042

/-- `round(A047663(n+2)/A047667(n+2))` -/
def P10594352351568799030.Spec : Prop :=
  ∀ n, P10594352351568799030.a n = A026042 (n + 1)

end A026042

/-! ## A026042.P17533670792595969209

`ceil(A140226(n+3)/5)`
-/

namespace A026042.P17533670792595969209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A140226 (n + 3) : ℚ) / 5⌉

end

end A026042.P17533670792595969209

namespace A026042

/-- `ceil(A140226(n+3)/5)` -/
def P17533670792595969209.Spec : Prop :=
  ∀ n, P17533670792595969209.a n = A026042 (n + 1)

end A026042

/-! ## A026042.P11006994265240311998

`A249013(n+5)+∑[A008738(n+2)]`
-/

namespace A026042.P11006994265240311998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008738 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249013 (n + 5) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026042.P11006994265240311998

namespace A026042

/-- `A249013(n+5)+∑[A008738(n+2)]` -/
def P11006994265240311998.Spec : Prop :=
  ∀ n, P11006994265240311998.a n = A026042 (n + 1)

end A026042

/-! ## A026042.P371704670246869376

`A057354(n+7)+∑[A057354(A133263(n+2))]`
-/

namespace A026042.P371704670246869376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A133263 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (n + 7) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026042.P371704670246869376

namespace A026042

/-- `A057354(n+7)+∑[A057354(A133263(n+2))]` -/
def P371704670246869376.Spec : Prop :=
  ∀ n, P371704670246869376.a n = A026042 (n + 1)

end A026042

/-!
# A026043: a(n) = dot_product(1,2,...,n)*(5,6,...,n,1,2,3,4).

The programs for A026043, the canonical program `A026043.P850848667195560037` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026043 has offset 5).

The definition of A026043 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026043.P850848667195560037

`(n+5)*(2*(n+5)²-9*(n+5)+49)/6`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026043

/-- `(n+5)*(2*(n+5)²-9*(n+5)+49)/6` -/
def P850848667195560037.Spec : Prop :=
  ∀ n, P850848667195560037.a n = (A026043 (n + 5) : ℚ)

end A026043

/-! ## A026043.P10381744182735608898

`abs(A026040(n+4)+A046691(n+3)+10)`
-/

namespace A026043.P10381744182735608898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A026040 (n + 4) + (A046691 (n + 3) + 10)|

end

end A026043.P10381744182735608898

namespace A026043

/-- `abs(A026040(n+4)+A046691(n+3)+10)` -/
def P10381744182735608898.Spec : Prop :=
  ∀ n, P10381744182735608898.a n = A026043 (n + 5)

end A026043

/-! ## A026043.P2473917724038578311

`Δ[A059993(n+4)+A006008(n+3)]`
-/

namespace A026043.P2473917724038578311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059993 (n + 4) + A006008 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026043.P2473917724038578311

namespace A026043

/-- `Δ[A059993(n+4)+A006008(n+3)]` -/
def P2473917724038578311.Spec : Prop :=
  ∀ n, P2473917724038578311.a n = A026043 (n + 5)

end A026043

/-! ## A026043.P3597303269503914681

`Δ[A167499(A167499(n+3))-A095667(n+2)]`
-/

namespace A026043.P3597303269503914681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167499 (A167499 (n + 3)).toNat - A095667 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026043.P3597303269503914681

namespace A026043

/-- `Δ[A167499(A167499(n+3))-A095667(n+2)]` -/
def P3597303269503914681.Spec : Prop :=
  ∀ n, P3597303269503914681.a n = A026043 (n + 5)

end A026043

/-! ## A026043.P13966305767787836313

`A094414(∑[n+5]+6)`
-/

namespace A026043.P13966305767787836313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094414 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A026043.P13966305767787836313

namespace A026043

/-- `A094414(∑[n+5]+6)` -/
def P13966305767787836313.Spec : Prop :=
  ∀ n, P13966305767787836313.a n = A026043 (n + 5)

end A026043

/-! ## A026043.P12862754785996747111

`gcd((2*n)%2, A094414(A056115(n)+11))`
-/

namespace A026043.P12862754785996747111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * n % 2 : ℕ) : ℤ) (A094414 (A056115 n + 11).toNat)

end

end A026043.P12862754785996747111

namespace A026043

/-- `gcd((2*n)%2, A094414(A056115(n)+11))` -/
def P12862754785996747111.Spec : Prop :=
  ∀ n, (P12862754785996747111.a n : ℤ) = A026043 (n + 5)

end A026043

/-! ## A026043.P561332357566729404

`A094414(A145018(n+5))%(11*(n+1))²`
-/

namespace A026043.P561332357566729404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094414 (A145018 (n + 5)).toNat) ((11 * (n + 1)) ^ 2 : ℤ)

end

end A026043.P561332357566729404

namespace A026043

/-- `A094414(A145018(n+5))%(11*(n+1))²` -/
def P561332357566729404.Spec : Prop :=
  ∀ n, P561332357566729404.a n = A026043 (n + 5)

end A026043

/-! ## A026043.P18298131213172636886

`A094414(A056115(n)+11)%A063990(n+1)`
-/

namespace A026043.P18298131213172636886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094414 (A056115 n + 11).toNat) (A063990 (n + 1))

end

end A026043.P18298131213172636886

namespace A026043

/-- `A094414(A056115(n)+11)%A063990(n+1)` -/
def P18298131213172636886.Spec : Prop :=
  ∀ n, P18298131213172636886.a n = A026043 (n + 5)

end A026043

/-! ## A026043.P8252803861754164559

`A094414(A000124(n+5)-5)%A026046(n+6)`
-/

namespace A026043.P8252803861754164559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094414 (A000124 (n + 5) - 5).toNat) (A026046 (n + 6))

end

end A026043.P8252803861754164559

namespace A026043

/-- `A094414(A000124(n+5)-5)%A026046(n+6)` -/
def P8252803861754164559.Spec : Prop :=
  ∀ n, P8252803861754164559.a n = A026043 (n + 5)

end A026043

/-!
# A026044: a(n) = (d(n)-r(n))/2, where d = A026043 and r is the periodic sequence with fundamental period (1,1,0,0).

The programs for A026044, the canonical program `A026044.P13572406684930844183` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026044 has offset 5).

The definition of A026044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026044.P13572406684930844183

`floor(A026043(n+5)/2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026044

/-- `floor(A026043(n+5)/2)` -/
def P13572406684930844183.Spec : Prop :=
  ∀ n, P13572406684930844183.a n = A026044 (n + 5)

theorem P13572406684930844183.correct : P13572406684930844183.Spec := by
  intro n
  simp only [A026044, Nat.add_sub_cancel]

end A026044

/-! ## A026044.P14843251988336018267

`A000217(n+6)+∑[∑[A098181(n)]]`
-/

namespace A026044.P14843251988336018267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098181 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 6) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026044.P14843251988336018267

namespace A026044

/-- `A000217(n+6)+∑[∑[A098181(n)]]` -/
def P14843251988336018267.Spec : Prop :=
  ∀ n, P14843251988336018267.a n = A026044 (n + 5)

end A026044

/-! ## A026044.P8559811115378931969

`A000217(n+6)+∑[A194274(n+1)]`
-/

namespace A026044.P8559811115378931969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 6) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026044.P8559811115378931969

namespace A026044

/-- `A000217(n+6)+∑[A194274(n+1)]` -/
def P8559811115378931969.Spec : Prop :=
  ∀ n, P8559811115378931969.a n = A026044 (n + 5)

end A026044

/-! ## A026044.P14904176968393293830

`A253145(n+5)+∑[A194274(n+1)]`
-/

namespace A026044.P14904176968393293830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (n + 5) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026044.P14904176968393293830

namespace A026044

/-- `A253145(n+5)+∑[A194274(n+1)]` -/
def P14904176968393293830.Spec : Prop :=
  ∀ n, P14904176968393293830.a n = A026044 (n + 5)

end A026044

/-! ## A026044.P1579612485222020221

`A161680(n+7)+∑[∑[A098181(n)]]`
-/

namespace A026044.P1579612485222020221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098181 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (n + 7) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026044.P1579612485222020221

namespace A026044

/-- `A161680(n+7)+∑[∑[A098181(n)]]` -/
def P1579612485222020221.Spec : Prop :=
  ∀ n, P1579612485222020221.a n = A026044 (n + 5)

end A026044

/-! ## A026044.P11786967464380833951

`A008619(A000096(n+6))+A000125(n+3)`
-/

namespace A026044.P11786967464380833951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A000096 (n + 6)).toNat + A000125 (n + 3)

end

end A026044.P11786967464380833951

namespace A026044

/-- `A008619(A000096(n+6))+A000125(n+3)` -/
def P11786967464380833951.Spec : Prop :=
  ∀ n, P11786967464380833951.a n = A026044 (n + 5)

end A026044

/-! ## A026044.P5846011514289520824

`A008619(A000124(n+7))+A004006(n+3)`
-/

namespace A026044.P5846011514289520824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A000124 (n + 7)).toNat + A004006 (n + 3)

end

end A026044.P5846011514289520824

namespace A026044

/-- `A008619(A000124(n+7))+A004006(n+3)` -/
def P5846011514289520824.Spec : Prop :=
  ∀ n, P5846011514289520824.a n = A026044 (n + 5)

end A026044

/-!
# A026045: a(n) = (d(n)-r(n))/5, where d = A026043 and r is the periodic sequence with fundamental period (0,2,3,0,0).

The programs for A026045, the canonical program `A026045.P9051466400289274682` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026045 has offset 1).

The definition of A026045 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026045.P9051466400289274682

`floor(A026043(n+5)/5)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026045

/-- `floor(A026043(n+5)/5)` -/
def P9051466400289274682.Spec : Prop :=
  ∀ n, P9051466400289274682.a n = A026045 (n + 1)

theorem P9051466400289274682.correct : P9051466400289274682.Spec := by
  intro n
  simp only [A026045, Nat.add_sub_cancel]

end A026045

/-! ## A026045.P12352597764735104459

`(A026043(n+5)-A152857(n))/5`
-/

namespace A026045.P12352597764735104459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026043 (n + 5) - A152857 n : ℚ) / 5

end

end A026045.P12352597764735104459

namespace A026045

/-- `(A026043(n+5)-A152857(n))/5` -/
def P12352597764735104459.Spec : Prop :=
  ∀ n, P12352597764735104459.a n = (A026045 (n + 1) : ℚ)

end A026045

/-! ## A026045.P18379788973678299831

`A011897(n+2)+∑[n+3]+6`
-/

namespace A026045.P18379788973678299831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011897 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j + 6 : ℕ) : ℤ)

end

end A026045.P18379788973678299831

namespace A026045

/-- `A011897(n+2)+∑[n+3]+6` -/
def P18379788973678299831.Spec : Prop :=
  ∀ n, P18379788973678299831.a n = A026045 (n + 1)

end A026045

/-! ## A026045.P2088389543354570477

`A167614(n+2)+A011897(n+2)`
-/

namespace A026045.P2088389543354570477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167614 (n + 2) + A011897 (n + 2)

end

end A026045.P2088389543354570477

namespace A026045

/-- `A167614(n+2)+A011897(n+2)` -/
def P2088389543354570477.Spec : Prop :=
  ∀ n, P2088389543354570477.a n = A026045 (n + 1)

end A026045

/-! ## A026045.P18233537967263863716

`A026053(n+2)+A026053(n+6)-A000217(n+3)`
-/

namespace A026045.P18233537967263863716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026053 (n + 2) + (A026053 (n + 6) - A000217 (n + 3))

end

end A026045.P18233537967263863716

namespace A026045

/-- `A026053(n+2)+A026053(n+6)-A000217(n+3)` -/
def P18233537967263863716.Spec : Prop :=
  ∀ n, P18233537967263863716.a n = A026045 (n + 1)

end A026045

/-!
# A026046: a(n) = dot_product(1,2,...,n)*(6,7,...,n,1,2,3,4,5).

The programs for A026046, the canonical program `A026046.P417083950888765745` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026046 has offset 6).

The definition of A026046 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026046.P417083950888765745

`(n+6)*((n+6)²-6*(n+6)+38)/3`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026046

/-- `(n+6)*((n+6)²-6*(n+6)+38)/3` -/
def P417083950888765745.Spec : Prop :=
  ∀ n, P417083950888765745.a n = (A026046 (n + 6) : ℚ)

end A026046

/-! ## A026046.P4497783029738745684

`A026043(n+6)+10-∑[n+1]`
-/

namespace A026046.P4497783029738745684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026043 (n + 6) + (10 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A026046.P4497783029738745684

namespace A026046

/-- `A026043(n+6)+10-∑[n+1]` -/
def P4497783029738745684.Spec : Prop :=
  ∀ n, P4497783029738745684.a n = A026046 (n + 6)

end A026046

/-! ## A026046.P15194400904467512937

`A000217(n+11)+∑[A002522(n+3)]`
-/

namespace A026046.P15194400904467512937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 11) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026046.P15194400904467512937

namespace A026046

/-- `A000217(n+11)+∑[A002522(n+3)]` -/
def P15194400904467512937.Spec : Prop :=
  ∀ n, P15194400904467512937.a n = A026046 (n + 6)

end A026046

/-! ## A026046.P17078765344215516575

`A000330(n+4)-((n+3)²-A000217(n+10))`
-/

namespace A026046.P17078765344215516575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 4) - (((n + 3) ^ 2 : ℤ) - A000217 (n + 10))

end

end A026046.P17078765344215516575

namespace A026046

/-- `A000330(n+4)-((n+3)²-A000217(n+10))` -/
def P17078765344215516575.Spec : Prop :=
  ∀ n, P17078765344215516575.a n = A026046 (n + 6)

end A026046

/-! ## A026046.P9096614043164494652

`A000292(n+1)+A000292(n+4)+A000217(n+10)`
-/

namespace A026046.P9096614043164494652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (A000292 (n + 4) + A000217 (n + 10))

end

end A026046.P9096614043164494652

namespace A026046

/-- `A000292(n+1)+A000292(n+4)+A000217(n+10)` -/
def P9096614043164494652.Spec : Prop :=
  ∀ n, P9096614043164494652.a n = A026046 (n + 6)

end A026046

/-! ## A026046.P15165296513373012748

`A084990(n+2)+A028552(n+7)`
-/

namespace A026046.P15165296513373012748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084990 (n + 2) + A028552 (n + 7)

end

end A026046.P15165296513373012748

namespace A026046

/-- `A084990(n+2)+A028552(n+7)` -/
def P15165296513373012748.Spec : Prop :=
  ∀ n, P15165296513373012748.a n = A026046 (n + 6)

end A026046

/-! ## A026046.P10462331045762713582

`A017185(n+6)+A007290(n+5)`
-/

namespace A026046.P10462331045762713582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 (n + 6) + A007290 (n + 5)

end

end A026046.P10462331045762713582

namespace A026046

/-- `A017185(n+6)+A007290(n+5)` -/
def P10462331045762713582.Spec : Prop :=
  ∀ n, P10462331045762713582.a n = A026046 (n + 6)

end A026046

/-! ## A026046.P1243314930730925582

`A077415(n+3)+A028387(n+7)`
-/

namespace A026046.P1243314930730925582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077415 (n + 3) + A028387 (n + 7)

end

end A026046.P1243314930730925582

namespace A026046

/-- `A077415(n+3)+A028387(n+7)` -/
def P1243314930730925582.Spec : Prop :=
  ∀ n, P1243314930730925582.a n = A026046 (n + 6)

end A026046

/-! ## A026046.P11159604139912968957

`A028387(n+7)+∑[A028387(n+1)]`
-/

namespace A026046.P11159604139912968957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 (n + 7) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026046.P11159604139912968957

namespace A026046

/-- `A028387(n+7)+∑[A028387(n+1)]` -/
def P11159604139912968957.Spec : Prop :=
  ∀ n, P11159604139912968957.a n = A026046 (n + 6)

end A026046

/-! ## A026046.P12218151546664547052

`A077415(n+3)+Δ[A077415(n+8)]`
-/

namespace A026046.P12218151546664547052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077415 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077415 (n + 3) + (f1 (n + 1) - f1 n)

end

end A026046.P12218151546664547052

namespace A026046

/-- `A077415(n+3)+Δ[A077415(n+8)]` -/
def P12218151546664547052.Spec : Prop :=
  ∀ n, P12218151546664547052.a n = A026046 (n + 6)

end A026046

/-! ## A026046.P8082594641075533031

`A006527(n+8)-A103517(n+4)²`
-/

namespace A026046.P8082594641075533031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006527 (n + 8) - A103517 (n + 4) ^ 2

end

end A026046.P8082594641075533031

namespace A026046

/-- `A006527(n+8)-A103517(n+4)²` -/
def P8082594641075533031.Spec : Prop :=
  ∀ n, P8082594641075533031.a n = A026046 (n + 6)

end A026046

/-! ## A026046.P15650753578073875642

`A006527(n+8)-A005843(n+5)²`
-/

namespace A026046.P15650753578073875642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006527 (n + 8) - A005843 (n + 5) ^ 2

end

end A026046.P15650753578073875642

namespace A026046

/-- `A006527(n+8)-A005843(n+5)²` -/
def P15650753578073875642.Spec : Prop :=
  ∀ n, P15650753578073875642.a n = A026046 (n + 6)

end A026046

/-! ## A026046.P11833716740205476985

`A006527(n+8)-A051755(n+6)²`
-/

namespace A026046.P11833716740205476985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006527 (n + 8) - A051755 (n + 6) ^ 2

end

end A026046.P11833716740205476985

namespace A026046

/-- `A006527(n+8)-A051755(n+6)²` -/
def P11833716740205476985.Spec : Prop :=
  ∀ n, P11833716740205476985.a n = A026046 (n + 6)

end A026046

/-! ## A026046.P8606954621340982904

`A165900(n+9)+∑[A165900(n+3)]`
-/

namespace A026046.P8606954621340982904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 (n + 9) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026046.P8606954621340982904

namespace A026046

/-- `A165900(n+9)+∑[A165900(n+3)]` -/
def P8606954621340982904.Spec : Prop :=
  ∀ n, P8606954621340982904.a n = A026046 (n + 6)

end A026046

/-! ## A026046.P12057565811001713700

`A077415(n+3)+A002061(n+9)-2`
-/

namespace A026046.P12057565811001713700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077415 (n + 3) + (A002061 (n + 9) - 2)

end

end A026046.P12057565811001713700

namespace A026046

/-- `A077415(n+3)+A002061(n+9)-2` -/
def P12057565811001713700.Spec : Prop :=
  ∀ n, P12057565811001713700.a n = A026046 (n + 6)

end A026046

/-! ## A026046.P12201314426397295913

`A002620(n+2)+A026043(n+5)+A002620(n+11)`
-/

namespace A026046.P12201314426397295913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 2) + (A026043 (n + 5) + A002620 (n + 11))

end

end A026046.P12201314426397295913

namespace A026046

/-- `A002620(n+2)+A026043(n+5)+A002620(n+11)` -/
def P12201314426397295913.Spec : Prop :=
  ∀ n, P12201314426397295913.a n = A026046 (n + 6)

end A026046

/-! ## A026046.P705200309930233736

`A180118(n+2)+A016777(A016777(n+6))`
-/

namespace A026046.P705200309930233736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180118 (n + 2) + A016777 (A016777 (n + 6)).toNat

end

end A026046.P705200309930233736

namespace A026046

/-- `A180118(n+2)+A016777(A016777(n+6))` -/
def P705200309930233736.Spec : Prop :=
  ∀ n, P705200309930233736.a n = A026046 (n + 6)

end A026046

/-!
# A026047: a(n) = (d(n)-r(n))/2, where d = A026046 and r is the periodic sequence with fundamental period (0,1,0,1).

The programs for A026047, the canonical program `A026047.P7137899572100017378` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026047 has offset 6).

The definition of A026047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026047.P7137899572100017378

`floor(A026046(n+6)/2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026047

/-- `floor(A026046(n+6)/2)` -/
def P7137899572100017378.Spec : Prop :=
  ∀ n, P7137899572100017378.a n = A026047 (n + 6)

theorem P7137899572100017378.correct : P7137899572100017378.Spec := by
  intro n
  simp only [A026047, Nat.add_sub_cancel]

end A026047

/-! ## A026047.P8637916202447942536

`(A026046(n+6)-A000035(n))/2`
-/

namespace A026047.P8637916202447942536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026046 (n + 6) - A000035 n : ℚ) / 2

end

end A026047.P8637916202447942536

namespace A026047

/-- `(A026046(n+6)-A000035(n))/2` -/
def P8637916202447942536.Spec : Prop :=
  ∀ n, P8637916202447942536.a n = (A026047 (n + 6) : ℚ)

end A026047

/-! ## A026047.P10337209534301824105

`(A026046(n+6)-Δ[A008619(n)])/2`
-/

namespace A026047.P10337209534301824105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026046 (n + 6) - (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A026047.P10337209534301824105

namespace A026047

/-- `(A026046(n+6)-Δ[A008619(n)])/2` -/
def P10337209534301824105.Spec : Prop :=
  ∀ n, P10337209534301824105.a n = (A026047 (n + 6) : ℚ)

end A026047

/-! ## A026047.P17006492335985566661

`xor(A000035(n), A026046(n+6))/A020639(2*(n+1))`
-/

namespace A026047.P17006492335985566661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (A000035 n) (A026046 (n + 6)) : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A026047.P17006492335985566661

namespace A026047

/-- `xor(A000035(n), A026046(n+6))/A020639(2*(n+1))` -/
def P17006492335985566661.Spec : Prop :=
  ∀ n, P17006492335985566661.a n = (A026047 (n + 6) : ℚ)

end A026047

/-! ## A026047.P3200856912231686243

`floor((A026043(n+6)+10-∑[n+1])/2)`
-/

namespace A026047.P3200856912231686243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026043 (n + 6) + (10 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) : ℚ) / 2⌋

end

end A026047.P3200856912231686243

namespace A026047

/-- `floor((A026043(n+6)+10-∑[n+1])/2)` -/
def P3200856912231686243.Spec : Prop :=
  ∀ n, P3200856912231686243.a n = A026047 (n + 6)

end A026047

/-! ## A026047.P2011005405926460793

`(A026046(n+6)-Δ[A004526(n)])/2`
-/

namespace A026047.P2011005405926460793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026046 (n + 6) - (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A026047.P2011005405926460793

namespace A026047

/-- `(A026046(n+6)-Δ[A004526(n)])/2` -/
def P2011005405926460793.Spec : Prop :=
  ∀ n, P2011005405926460793.a n = (A026047 (n + 6) : ℚ)

end A026047

/-! ## A026047.P3144381729092912296

`floor((A000292(n+1)+A000292(n+4)+A000217(n+10))/2)`
-/

namespace A026047.P3144381729092912296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000292 (n + 1) + (A000292 (n + 4) + A000217 (n + 10)) : ℚ) / 2⌋

end

end A026047.P3144381729092912296

namespace A026047

/-- `floor((A000292(n+1)+A000292(n+4)+A000217(n+10))/2)` -/
def P3144381729092912296.Spec : Prop :=
  ∀ n, P3144381729092912296.a n = A026047 (n + 6)

end A026047

/-! ## A026047.P12049557248563381010

`floor((A084990(n+2)+A028552(n+7))/2)`
-/

namespace A026047.P12049557248563381010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A084990 (n + 2) + A028552 (n + 7) : ℚ) / 2⌋

end

end A026047.P12049557248563381010

namespace A026047

/-- `floor((A084990(n+2)+A028552(n+7))/2)` -/
def P12049557248563381010.Spec : Prop :=
  ∀ n, P12049557248563381010.a n = A026047 (n + 6)

end A026047

/-! ## A026047.P3085918962806311336

`2*A002620(n)+n+A000292(n+1)+A055998(n+7)-5`
-/

namespace A026047.P3085918962806311336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002620 n + (n : ℤ) + (A000292 (n + 1) + (A055998 (n + 7) - 5))

end

end A026047.P3085918962806311336

namespace A026047

/-- `2*A002620(n)+n+A000292(n+1)+A055998(n+7)-5` -/
def P3085918962806311336.Spec : Prop :=
  ∀ n, P3085918962806311336.a n = A026047 (n + 6)

end A026047

/-! ## A026047.P1434756819211460489

`A000027(xor(A000035(n), A026046(n+6))/2)`
-/

namespace A026047.P1434756819211460489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((Int.xor (A000035 n) (A026046 (n + 6)) : ℚ) / 2)).toNat

end

end A026047.P1434756819211460489

namespace A026047

/-- `A000027(xor(A000035(n), A026046(n+6))/2)` -/
def P1434756819211460489.Spec : Prop :=
  ∀ n, P1434756819211460489.a n = A026047 (n + 6)

end A026047

/-!
# A026048: (d(n)-r(n))/5, where d = A026046 and r is the periodic sequence with fundamental period (1,0,4,0,0).

The programs for A026048, the canonical program `A026048.P3545224709336362024` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026048 has offset 6).

The definition of A026048 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026048.P3545224709336362024

`floor(A026046(n+6)/5)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026048

/-- `floor(A026046(n+6)/5)` -/
def P3545224709336362024.Spec : Prop :=
  ∀ n, P3545224709336362024.a n = A026048 (n + 6)

theorem P3545224709336362024.correct : P3545224709336362024.Spec := by
  intro n
  simp only [A026048, Nat.add_sub_cancel]

end A026048

/-! ## A026048.P5860242601275161583

`(A026046(n+6)-A152889(n))/5`
-/

namespace A026048.P5860242601275161583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026046 (n + 6) - A152889 n : ℚ) / 5

end

end A026048.P5860242601275161583

namespace A026048

/-- `(A026046(n+6)-A152889(n))/5` -/
def P5860242601275161583.Spec : Prop :=
  ∀ n, P5860242601275161583.a n = (A026048 (n + 6) : ℚ)

end A026048

/-! ## A026048.P9102777978204624527

`floor((A026043(n+6)+10-∑[n+1])/5)`
-/

namespace A026048.P9102777978204624527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026043 (n + 6) + (10 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) : ℚ) / 5⌋

end

end A026048.P9102777978204624527

namespace A026048

/-- `floor((A026043(n+6)+10-∑[n+1])/5)` -/
def P9102777978204624527.Spec : Prop :=
  ∀ n, P9102777978204624527.a n = A026048 (n + 6)

end A026048

/-! ## A026048.P16552623968937729641

`floor(A167499(n+3)+∑[(n+1)²/5])`
-/

namespace A026048.P16552623968937729641
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A167499 (n + 3) : ℚ) + ∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A026048.P16552623968937729641

namespace A026048

/-- `floor(A167499(n+3)+∑[(n+1)²/5])` -/
def P16552623968937729641.Spec : Prop :=
  ∀ n, P16552623968937729641.a n = A026048 (n + 6)

end A026048

/-! ## A026048.P17343557258080491795

`floor((A000292(n+1)+A000292(n+4)+A000217(n+10))/5)`
-/

namespace A026048.P17343557258080491795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000292 (n + 1) + (A000292 (n + 4) + A000217 (n + 10)) : ℚ) / 5⌋

end

end A026048.P17343557258080491795

namespace A026048

/-- `floor((A000292(n+1)+A000292(n+4)+A000217(n+10))/5)` -/
def P17343557258080491795.Spec : Prop :=
  ∀ n, P17343557258080491795.a n = A026048 (n + 6)

end A026048

/-! ## A026048.P11799907167132253639

`floor((A084990(n+2)+A028552(n+7))/5)`
-/

namespace A026048.P11799907167132253639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A084990 (n + 2) + A028552 (n + 7) : ℚ) / 5⌋

end

end A026048.P11799907167132253639

namespace A026048

/-- `floor((A084990(n+2)+A028552(n+7))/5)` -/
def P11799907167132253639.Spec : Prop :=
  ∀ n, P11799907167132253639.a n = A026048 (n + 6)

end A026048

/-! ## A026048.P10942736002111712099

`floor((A017185(n+6)+A007290(n+5))/5)`
-/

namespace A026048.P10942736002111712099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017185 (n + 6) + A007290 (n + 5) : ℚ) / 5⌋

end

end A026048.P10942736002111712099

namespace A026048

/-- `floor((A017185(n+6)+A007290(n+5))/5)` -/
def P10942736002111712099.Spec : Prop :=
  ∀ n, P10942736002111712099.a n = A026048 (n + 6)

end A026048

/-!
# A026049: a(n) = dot_product(1,2,...,n)*(7,8,...,n,1,2,3,4,5,6).

The programs for A026049, the canonical program `A026049.P1162981369057153468` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026049 has offset 7).

The definition of A026049 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026049.P1162981369057153468

`(n+7)*(2*(n+7)²-15*(n+7)+109)/6`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026049

/-- `(n+7)*(2*(n+7)²-15*(n+7)+109)/6` -/
def P1162981369057153468.Spec : Prop :=
  ∀ n, P1162981369057153468.a n = (A026049 (n + 7) : ℚ)

end A026049

/-! ## A026049.P15935977015294763710

`A153057(n+3)+(n+10)²+2`
-/

namespace A026049.P15935977015294763710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153057 (n + 3) + ((n + 10) ^ 2 + 2 : ℤ)

end

end A026049.P15935977015294763710

namespace A026049

/-- `A153057(n+3)+(n+10)²+2` -/
def P15935977015294763710.Spec : Prop :=
  ∀ n, P15935977015294763710.a n = A026049 (n + 7)

end A026049

/-! ## A026049.P10354193797843547458

`A000217(n+14)+∑[A014206(n+3)]`
-/

namespace A026049.P10354193797843547458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 14) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026049.P10354193797843547458

namespace A026049

/-- `A000217(n+14)+∑[A014206(n+3)]` -/
def P10354193797843547458.Spec : Prop :=
  ∀ n, P10354193797843547458.a n = A026049 (n + 7)

end A026049

/-! ## A026049.P16656529905032116812

`A000217(n+14)+∑[A003682(n+4)]`
-/

namespace A026049.P16656529905032116812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003682 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 14) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026049.P16656529905032116812

namespace A026049

/-- `A000217(n+14)+∑[A003682(n+4)]` -/
def P16656529905032116812.Spec : Prop :=
  ∀ n, P16656529905032116812.a n = A026049 (n + 7)

end A026049

/-! ## A026049.P7742224906880714047

`A033547(n+4)+A000217(n+13)+n`
-/

namespace A026049.P7742224906880714047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033547 (n + 4) + (A000217 (n + 13) + (n : ℤ))

end

end A026049.P7742224906880714047

namespace A026049

/-- `A033547(n+4)+A000217(n+13)+n` -/
def P7742224906880714047.Spec : Prop :=
  ∀ n, P7742224906880714047.a n = A026049 (n + 7)

end A026049

/-! ## A026049.P16465266300160032528

`A000292(n+7)+A000292(n)+35`
-/

namespace A026049.P16465266300160032528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 7) + (A000292 n + 35)

end

end A026049.P16465266300160032528

namespace A026049

/-- `A000292(n+7)+A000292(n)+35` -/
def P16465266300160032528.Spec : Prop :=
  ∀ n, P16465266300160032528.a n = A026049 (n + 7)

end A026049

/-! ## A026049.P6858443149302684967

`A046092(n+1)+A000330(n+8)-A201279(n+3)`
-/

namespace A026049.P6858443149302684967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 (n + 1) + (A000330 (n + 8) - A201279 (n + 3))

end

end A026049.P6858443149302684967

namespace A026049

/-- `A046092(n+1)+A000330(n+8)-A201279(n+3)` -/
def P6858443149302684967.Spec : Prop :=
  ∀ n, P6858443149302684967.a n = A026049 (n + 7)

end A026049

/-! ## A026049.P15955287185414938676

`A017089(n+7)+A000330(n+8)-A000466(n+6)`
-/

namespace A026049.P15955287185414938676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 (n + 7) + (A000330 (n + 8) - A000466 (n + 6))

end

end A026049.P15955287185414938676

namespace A026049

/-- `A017089(n+7)+A000330(n+8)-A000466(n+6)` -/
def P15955287185414938676.Spec : Prop :=
  ∀ n, P15955287185414938676.a n = A026049 (n + 7)

end A026049

/-! ## A026049.P7624020694030268642

`A028560(n+8)+∑[A008865(n+3)]`
-/

namespace A026049.P7624020694030268642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008865 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028560 (n + 8) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026049.P7624020694030268642

namespace A026049

/-- `A028560(n+8)+∑[A008865(n+3)]` -/
def P7624020694030268642.Spec : Prop :=
  ∀ n, P7624020694030268642.a n = A026049 (n + 7)

end A026049

/-! ## A026049.P12246968429256054960

`A000330(n+4)+Δ[A049452(n+7)]`
-/

namespace A026049.P12246968429256054960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049452 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 4) + (f1 (n + 1) - f1 n)

end

end A026049.P12246968429256054960

namespace A026049

/-- `A000330(n+4)+Δ[A049452(n+7)]` -/
def P12246968429256054960.Spec : Prop :=
  ∀ n, P12246968429256054960.a n = A026049 (n + 7)

end A026049

/-! ## A026049.P8565344615614616285

`n+4+A081489(n+5)+A008592(n+8)`
-/

namespace A026049.P8565344615614616285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) + (A081489 (n + 5) + A008592 (n + 8))

end

end A026049.P8565344615614616285

namespace A026049

/-- `n+4+A081489(n+5)+A008592(n+8)` -/
def P8565344615614616285.Spec : Prop :=
  ∀ n, P8565344615614616285.a n = A026049 (n + 7)

end A026049

/-! ## A026049.P13223126708584933419

`A000330(n+4)+A016813(n+8)+A008590(n+7)`
-/

namespace A026049.P13223126708584933419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 4) + (A016813 (n + 8) + A008590 (n + 7))

end

end A026049.P13223126708584933419

namespace A026049

/-- `A000330(n+4)+A016813(n+8)+A008590(n+7)` -/
def P13223126708584933419.Spec : Prop :=
  ∀ n, P13223126708584933419.a n = A026049 (n + 7)

end A026049

/-! ## A026049.P16573373638280865923

`A002061(n+11)+∑[A005563(n+2)]`
-/

namespace A026049.P16573373638280865923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (n + 11) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026049.P16573373638280865923

namespace A026049

/-- `A002061(n+11)+∑[A005563(n+2)]` -/
def P16573373638280865923.Spec : Prop :=
  ∀ n, P16573373638280865923.a n = A026049 (n + 7)

end A026049

/-! ## A026049.P1492322460171100527

`A000125(n+3)+A055999(n+10)+A000125(n+5)`
-/

namespace A026049.P1492322460171100527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 (n + 3) + (A055999 (n + 10) + A000125 (n + 5))

end

end A026049.P1492322460171100527

namespace A026049

/-- `A000125(n+3)+A055999(n+10)+A000125(n+5)` -/
def P1492322460171100527.Spec : Prop :=
  ∀ n, P1492322460171100527.a n = A026049 (n + 7)

end A026049

/-! ## A026049.P8915968915860505546

`A007290(n+5)+A133263(n+10)+A008458(n+7)`
-/

namespace A026049.P8915968915860505546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007290 (n + 5) + (A133263 (n + 10) + A008458 (n + 7))

end

end A026049.P8915968915860505546

namespace A026049

/-- `A007290(n+5)+A133263(n+10)+A008458(n+7)` -/
def P8915968915860505546.Spec : Prop :=
  ∀ n, P8915968915860505546.a n = A026049 (n + 7)

end A026049

/-! ## A026049.P14964059943701759289

`A056520(n+3)+A000124(n+8)+A000124(n+11)`
-/

namespace A026049.P14964059943701759289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056520 (n + 3) + (A000124 (n + 8) + A000124 (n + 11))

end

end A026049.P14964059943701759289

namespace A026049

/-- `A056520(n+3)+A000124(n+8)+A000124(n+11)` -/
def P14964059943701759289.Spec : Prop :=
  ∀ n, P14964059943701759289.a n = A026049 (n + 7)

end A026049

/-! ## A026049.P8362112556308932917

`A004006(n+2)+A016813(n+13)+A004006(n+7)`
-/

namespace A026049.P8362112556308932917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 (n + 2) + (A016813 (n + 13) + A004006 (n + 7))

end

end A026049.P8362112556308932917

namespace A026049

/-- `A004006(n+2)+A016813(n+13)+A004006(n+7)` -/
def P8362112556308932917.Spec : Prop :=
  ∀ n, P8362112556308932917.a n = A026049 (n + 7)

end A026049

/-!
# A026050: a(n) = (d(n)-r(n))/2, where d = A026049 and r is the periodic sequence with fundamental period (1,0,0,1).

The programs for A026050, the canonical program `A026050.P18144630859748295450` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026050 has offset 7).

The definition of A026050 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026050.P18144630859748295450

`floor(A026049(n+7)/2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026050

/-- `floor(A026049(n+7)/2)` -/
def P18144630859748295450.Spec : Prop :=
  ∀ n, P18144630859748295450.a n = A026050 (n + 7)

theorem P18144630859748295450.correct : P18144630859748295450.Spec := by
  intro n
  simp only [A026050, Nat.add_sub_cancel]

end A026050

/-! ## A026050.P2103845583966817951

`A000217(n+10)+∑[A194274(n+2)]`
-/

namespace A026050.P2103845583966817951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194274 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 10) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026050.P2103845583966817951

namespace A026050

/-- `A000217(n+10)+∑[A194274(n+2)]` -/
def P2103845583966817951.Spec : Prop :=
  ∀ n, P2103845583966817951.a n = A026050 (n + 7)

end A026050

/-! ## A026050.P16522805728410408152

`floor((A153057(n+3)+(n+10)²+2)/2)`
-/

namespace A026050.P16522805728410408152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A153057 (n + 3) + ((n + 10) ^ 2 + 2 : ℤ) : ℚ) / 2⌋

end

end A026050.P16522805728410408152

namespace A026050

/-- `floor((A153057(n+3)+(n+10)²+2)/2)` -/
def P16522805728410408152.Spec : Prop :=
  ∀ n, P16522805728410408152.a n = A026050 (n + 7)

end A026050

/-! ## A026050.P16004990188533525953

`floor((A033547(n+4)+A000217(n+13)+n)/2)`
-/

namespace A026050.P16004990188533525953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033547 (n + 4) + (A000217 (n + 13) + (n : ℤ)) : ℚ) / 2⌋

end

end A026050.P16004990188533525953

namespace A026050

/-- `floor((A033547(n+4)+A000217(n+13)+n)/2)` -/
def P16004990188533525953.Spec : Prop :=
  ∀ n, P16004990188533525953.a n = A026050 (n + 7)

end A026050

/-! ## A026050.P18026367933769803728

`floor((A000330(n+4)+Δ[A049452(n+7)])/2)`
-/

namespace A026050.P18026367933769803728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049452 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000330 (n + 4) + (f1 (n + 1) - f1 n) : ℚ) / 2⌋

end

end A026050.P18026367933769803728

namespace A026050

/-- `floor((A000330(n+4)+Δ[A049452(n+7)])/2)` -/
def P18026367933769803728.Spec : Prop :=
  ∀ n, P18026367933769803728.a n = A026050 (n + 7)

end A026050

/-! ## A026050.P15900712050409488989

`A253145(n+9)+∑[A194274(n+2)]`
-/

namespace A026050.P15900712050409488989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194274 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (n + 9) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026050.P15900712050409488989

namespace A026050

/-- `A253145(n+9)+∑[A194274(n+2)]` -/
def P15900712050409488989.Spec : Prop :=
  ∀ n, P15900712050409488989.a n = A026050 (n + 7)

end A026050

/-! ## A026050.P9067446441419686826

`A011848(n+15)+∑[A000124(n+3)]`
-/

namespace A026050.P9067446441419686826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 (n + 15) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026050.P9067446441419686826

namespace A026050

/-- `A011848(n+15)+∑[A000124(n+3)]` -/
def P9067446441419686826.Spec : Prop :=
  ∀ n, P9067446441419686826.a n = A026050 (n + 7)

end A026050

/-!
# A026051: a(n) = (d(n)-r(n))/5, where d = A026049 and r is the periodic sequence with fundamental period (4,1,4,0,1).

The programs for A026051, the canonical program `A026051.P10933517219718363926` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026051 has offset 7).

The definition of A026051 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026051.P10933517219718363926

`floor(A026049(n+7)/5)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026051

/-- `floor(A026049(n+7)/5)` -/
def P10933517219718363926.Spec : Prop :=
  ∀ n, P10933517219718363926.a n = A026051 (n + 7)

theorem P10933517219718363926.correct : P10933517219718363926.Spec := by
  intro n
  simp only [A026051, Nat.add_sub_cancel]

end A026051

/-! ## A026051.P13734380888743703818

`(A026049(n+7)-A152890(n))/5`
-/

namespace A026051.P13734380888743703818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026049 (n + 7) - A152890 n : ℚ) / 5

end

end A026051.P13734380888743703818

namespace A026051

/-- `(A026049(n+7)-A152890(n))/5` -/
def P13734380888743703818.Spec : Prop :=
  ∀ n, P13734380888743703818.a n = (A026051 (n + 7) : ℚ)

end A026051

/-! ## A026051.P1017645592960147603

`floor((A153057(n+3)+(n+10)²+2)/5)`
-/

namespace A026051.P1017645592960147603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A153057 (n + 3) + ((n + 10) ^ 2 + 2 : ℤ) : ℚ) / 5⌋

end

end A026051.P1017645592960147603

namespace A026051

/-- `floor((A153057(n+3)+(n+10)²+2)/5)` -/
def P1017645592960147603.Spec : Prop :=
  ∀ n, P1017645592960147603.a n = A026051 (n + 7)

end A026051

/-! ## A026051.P3810689320896062732

`floor((A033547(n+4)+A000217(n+13)+n)/5)`
-/

namespace A026051.P3810689320896062732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033547 (n + 4) + (A000217 (n + 13) + (n : ℤ)) : ℚ) / 5⌋

end

end A026051.P3810689320896062732

namespace A026051

/-- `floor((A033547(n+4)+A000217(n+13)+n)/5)` -/
def P3810689320896062732.Spec : Prop :=
  ∀ n, P3810689320896062732.a n = A026051 (n + 7)

end A026051

/-! ## A026051.P15267934368595778069

`floor((A000292(n+7)+A000292(n)+35)/5)`
-/

namespace A026051.P15267934368595778069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000292 (n + 7) + (A000292 n + 35) : ℚ) / 5⌋

end

end A026051.P15267934368595778069

namespace A026051

/-- `floor((A000292(n+7)+A000292(n)+35)/5)` -/
def P15267934368595778069.Spec : Prop :=
  ∀ n, P15267934368595778069.a n = A026051 (n + 7)

end A026051

/-! ## A026051.P5951327849386941198

`floor((A028560(n+8)+∑[A008865(n+3)])/5)`
-/

namespace A026051.P5951327849386941198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008865 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A028560 (n + 8) + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 5⌋

end

end A026051.P5951327849386941198

namespace A026051

/-- `floor((A028560(n+8)+∑[A008865(n+3)])/5)` -/
def P5951327849386941198.Spec : Prop :=
  ∀ n, P5951327849386941198.a n = A026051 (n + 7)

end A026051

/-! ## A026051.P2275909496742144665

`floor((A000330(n+4)+Δ[A049452(n+7)])/5)`
-/

namespace A026051.P2275909496742144665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049452 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000330 (n + 4) + (f1 (n + 1) - f1 n) : ℚ) / 5⌋

end

end A026051.P2275909496742144665

namespace A026051

/-- `floor((A000330(n+4)+Δ[A049452(n+7)])/5)` -/
def P2275909496742144665.Spec : Prop :=
  ∀ n, P2275909496742144665.a n = A026051 (n + 7)

end A026051

/-! ## A026051.P4971657477771427750

`floor((A000125(n+3)+A055999(n+10)+A000125(n+5))/5)`
-/

namespace A026051.P4971657477771427750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000125 (n + 3) + (A055999 (n + 10) + A000125 (n + 5)) : ℚ) / 5⌋

end

end A026051.P4971657477771427750

namespace A026051

/-- `floor((A000125(n+3)+A055999(n+10)+A000125(n+5))/5)` -/
def P4971657477771427750.Spec : Prop :=
  ∀ n, P4971657477771427750.a n = A026051 (n + 7)

end A026051

/-!
# A026052: (d(n)-r(n))/2, where d = A008778 and r is the periodic sequence with fundamental period (1,1,0,1).

The programs for A026052, the canonical program `A026052.P3879611383474412724` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026052 has offset 2).

The definition of A026052 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026052.P3879611383474412724

`ceil(∑[(∑[n+3]+1)/2])`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026052

/-- `ceil(∑[(∑[n+3]+1)/2])` -/
def P3879611383474412724.Spec : Prop :=
  ∀ n, P3879611383474412724.a n = A026052 (n + 2)

theorem P3879611383474412724.correct : P3879611383474412724.Spec := by
  intro n
  simp only [A026052, Nat.add_sub_cancel]

end A026052

/-! ## A026052.P2688156857613459874

`floor(∑[∑[or(2, n)/2+1]])`
-/

namespace A026052.P2688156857613459874
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℚ) / 2 + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A026052.P2688156857613459874

namespace A026052

/-- `floor(∑[∑[or(2, n)/2+1]])` -/
def P2688156857613459874.Spec : Prop :=
  ∀ n, P2688156857613459874.a n = A026052 (n + 2)

end A026052

/-! ## A026052.P6473558934668257997

`∑[∑[a(n-4)+2]]` with `a(0)=2, a(1)=2, a(2)=3, a(3)=2`
-/

namespace A026052.P6473558934668257997
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 3, 2] fun n f2 =>
  f2 (n - 4) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026052.P6473558934668257997

namespace A026052

/-- `∑[∑[a(n-4)+2]]` -/
def P6473558934668257997.Spec : Prop :=
  ∀ n, (P6473558934668257997.a n : ℤ) = A026052 (n + 2)

end A026052

/-! ## A026052.P12598299764189184949

`∑[∑[∑[floor(a(n-4))]]]` with `a(0)=2, a(1)=0, a(2)=1, a(3)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A026052.P12598299764189184949
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 1, -1] fun n f3 =>
  f3 (n - 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026052.P12598299764189184949

namespace A026052

/-- `∑[∑[∑[floor(a(n-4))]]]` -/
def P12598299764189184949.Spec : Prop :=
  ∀ n, P12598299764189184949.a n = A026052 (n + 2)

end A026052

/-! ## A026052.P6921086914226872546

`floor((C(n+3, 3)+(n+2)²)/2)`
-/

namespace A026052.P6921086914226872546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 3) 3 + (n + 2) ^ 2 : ℚ) / 2⌋

end

end A026052.P6921086914226872546

namespace A026052

/-- `floor((C(n+3, 3)+(n+2)²)/2)` -/
def P6921086914226872546.Spec : Prop :=
  ∀ n, P6921086914226872546.a n = A026052 (n + 2)

end A026052

/-! ## A026052.P16249949856683171267

`∑[∑[∑[a(n-2)-(-1)^a(n-2)]]]` with `a(0)=2, a(1)=0`
-/

namespace A026052.P16249949856683171267
noncomputable section

def f3 : ℕ → ℝ := SequenceMachineLib.rec [2, 0] fun n f3 =>
  f3 (n - 2) - (-1 : ℝ) ^ (f3 (n - 2))

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026052.P16249949856683171267

namespace A026052

/-- `∑[∑[∑[a(n-2)-(-1)^a(n-2)]]]` -/
def P16249949856683171267.Spec : Prop :=
  ∀ n, P16249949856683171267.a n = (A026052 (n + 2) : ℝ)

end A026052

/-! ## A026052.P1466090809811201764

`∑[A398152(n)+1]`
-/

namespace A026052.P1466090809811201764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398152 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026052.P1466090809811201764

namespace A026052

/-- `∑[A398152(n)+1]` -/
def P1466090809811201764.Spec : Prop :=
  ∀ n, P1466090809811201764.a n = A026052 (n + 2)

end A026052

/-! ## A026052.P3199780474198853834

`floor(A008778(n+1)/2)`
-/

namespace A026052.P3199780474198853834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008778 (n + 1) : ℚ) / 2⌋

end

end A026052.P3199780474198853834

namespace A026052

/-- `floor(A008778(n+1)/2)` -/
def P3199780474198853834.Spec : Prop :=
  ∀ n, P3199780474198853834.a n = A026052 (n + 2)

end A026052

/-! ## A026052.P11484460934297053434

`∑[∑[A102302(n+7)-1]]`
-/

namespace A026052.P11484460934297053434
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102302 (n + 7) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026052.P11484460934297053434

namespace A026052

/-- `∑[∑[A102302(n+7)-1]]` -/
def P11484460934297053434.Spec : Prop :=
  ∀ n, P11484460934297053434.a n = A026052 (n + 2)

end A026052

/-! ## A026052.P13408858160264742369

`A000217(n+1)+A390342(n)+A000217(n+1)`
-/

namespace A026052.P13408858160264742369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A390342 n + A000217 (n + 1))

end

end A026052.P13408858160264742369

namespace A026052

/-- `A000217(n+1)+A390342(n)+A000217(n+1)` -/
def P13408858160264742369.Spec : Prop :=
  ∀ n, P13408858160264742369.a n = A026052 (n + 2)

end A026052

/-! ## A026052.P6526953747885412834

`round(Δ[A014309(n+1)/2])`
-/

namespace A026052.P6526953747885412834
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014309 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A026052.P6526953747885412834

namespace A026052

/-- `round(Δ[A014309(n+1)/2])` -/
def P6526953747885412834.Spec : Prop :=
  ∀ n, P6526953747885412834.a n = A026052 (n + 2)

end A026052

/-! ## A026052.P16440385159757916173

`round(∑[A000096(n+2)-1]/2)`
-/

namespace A026052.P16440385159757916173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2)

end

end A026052.P16440385159757916173

namespace A026052

/-- `round(∑[A000096(n+2)-1]/2)` -/
def P16440385159757916173.Spec : Prop :=
  ∀ n, P16440385159757916173.a n = A026052 (n + 2)

end A026052

/-! ## A026052.P216577494363788157

`A001971(n)+∑[∑[A004526(n+1)+1]+1]`
-/

namespace A026052.P216577494363788157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026052.P216577494363788157

namespace A026052

/-- `A001971(n)+∑[∑[A004526(n+1)+1]+1]` -/
def P216577494363788157.Spec : Prop :=
  ∀ n, P216577494363788157.a n = A026052 (n + 2)

end A026052

/-! ## A026052.P4040223357528405299

`∑[∑[A116921(n+3)+1]]`
-/

namespace A026052.P4040223357528405299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116921 (n + 3) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026052.P4040223357528405299

namespace A026052

/-- `∑[∑[A116921(n+3)+1]]` -/
def P4040223357528405299.Spec : Prop :=
  ∀ n, P4040223357528405299.a n = A026052 (n + 2)

end A026052

/-! ## A026052.P16922664261979481136

`∑[∑[A291271(n+5)]]`
-/

namespace A026052.P16922664261979481136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291271 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026052.P16922664261979481136

namespace A026052

/-- `∑[∑[A291271(n+5)]]` -/
def P16922664261979481136.Spec : Prop :=
  ∀ n, P16922664261979481136.a n = A026052 (n + 2)

end A026052

/-! ## A026052.P4217491174863680992

`A001971(n)+∑[∑[A004526(n+3)]+1]`
-/

namespace A026052.P4217491174863680992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026052.P4217491174863680992

namespace A026052

/-- `A001971(n)+∑[∑[A004526(n+3)]+1]` -/
def P4217491174863680992.Spec : Prop :=
  ∀ n, P4217491174863680992.a n = A026052 (n + 2)

end A026052

/-! ## A026052.P15943706407901690218

`∑[∑[A004524(A116966(n+3))]]`
-/

namespace A026052.P15943706407901690218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A116966 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026052.P15943706407901690218

namespace A026052

/-- `∑[∑[A004524(A116966(n+3))]]` -/
def P15943706407901690218.Spec : Prop :=
  ∀ n, P15943706407901690218.a n = A026052 (n + 2)

end A026052

/-! ## A026052.P15174041969071247171

`∑[A236294(2*n+1)+A110655(2*n+1)]`
-/

namespace A026052.P15174041969071247171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236294 (2 * n + 1) + A110655 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026052.P15174041969071247171

namespace A026052

/-- `∑[A236294(2*n+1)+A110655(2*n+1)]` -/
def P15174041969071247171.Spec : Prop :=
  ∀ n, P15174041969071247171.a n = A026052 (n + 2)

end A026052

/-! ## A026052.P15252540072874273653

`∑[A028392(A011848(n+3))]`
-/

namespace A026052.P15252540072874273653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028392 (A011848 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026052.P15252540072874273653

namespace A026052

/-- `∑[A028392(A011848(n+3))]` -/
def P15252540072874273653.Spec : Prop :=
  ∀ n, P15252540072874273653.a n = A026052 (n + 2)

end A026052

/-!
# A026053: (d(n)-r(n))/5, where d = A008778 and r is the periodic sequence with fundamental period (0,3,1,0,1).

The programs for A026053, the canonical program `A026053.P5535403793267503240` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026053 has offset 2).

The definition of A026053 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026053.P5535403793267503240

`round(∑[(∑[n+3]+1)/5])`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026053

/-- `round(∑[(∑[n+3]+1)/5])` -/
def P5535403793267503240.Spec : Prop :=
  ∀ n, P5535403793267503240.a n = A026053 (n + 2)

theorem P5535403793267503240.correct : P5535403793267503240.Spec := by
  intro n
  simp only [A026053, Nat.add_sub_cancel]

end A026053

/-! ## A026053.P9832870709049256896

`∑[∑[a(n-5)+1]]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=1, a(4)=1`
-/

namespace A026053.P9832870709049256896
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2, 1, 1] fun n f2 =>
  f2 (n - 5) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026053.P9832870709049256896

namespace A026053

/-- `∑[∑[a(n-5)+1]]` -/
def P9832870709049256896.Spec : Prop :=
  ∀ n, (P9832870709049256896.a n : ℤ) = A026053 (n + 2)

end A026053

/-! ## A026053.P5293599279338047523

`∑[∑[∑[floor(a(n-5))]]]` with `a(0)=1, a(1)=-1, a(2)=2, a(3)=-1, a(4)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A026053.P5293599279338047523
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 2, -1, 0] fun n f3 =>
  f3 (n - 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026053.P5293599279338047523

namespace A026053

/-- `∑[∑[∑[floor(a(n-5))]]]` -/
def P5293599279338047523.Spec : Prop :=
  ∀ n, P5293599279338047523.a n = A026053 (n + 2)

end A026053

/-! ## A026053.P1974426649820229641

`floor(A008778(n+1)/5)`
-/

namespace A026053.P1974426649820229641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008778 (n + 1) : ℚ) / 5⌋

end

end A026053.P1974426649820229641

namespace A026053

/-- `floor(A008778(n+1)/5)` -/
def P1974426649820229641.Spec : Prop :=
  ∀ n, P1974426649820229641.a n = A026053 (n + 2)

end A026053

/-! ## A026053.P6202172707589991704

`floor(∑[A183871(n+1)/2])`
-/

namespace A026053.P6202172707589991704
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183871 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A026053.P6202172707589991704

namespace A026053

/-- `floor(∑[A183871(n+1)/2])` -/
def P6202172707589991704.Spec : Prop :=
  ∀ n, P6202172707589991704.a n = A026053 (n + 2)

end A026053

/-! ## A026053.P17955729094727782613

`floor(∑[(A183873(n+1)+1)/2])`
-/

namespace A026053.P17955729094727782613
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183873 (n + 1) + 1 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A026053.P17955729094727782613

namespace A026053

/-- `floor(∑[(A183873(n+1)+1)/2])` -/
def P17955729094727782613.Spec : Prop :=
  ∀ n, P17955729094727782613.a n = A026053 (n + 2)

end A026053

/-! ## A026053.P17802044332200264683

`Δ[round(A014309(n+1)/5)]`
-/

namespace A026053.P17802044332200264683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A014309 (n + 1) : ℚ) / 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026053.P17802044332200264683

namespace A026053

/-- `Δ[round(A014309(n+1)/5)]` -/
def P17802044332200264683.Spec : Prop :=
  ∀ n, P17802044332200264683.a n = A026053 (n + 2)

end A026053

/-! ## A026053.P8413975558369517849

`A000115(2*n+1)+∑[A008720(2*n+1)]`
-/

namespace A026053.P8413975558369517849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008720 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000115 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026053.P8413975558369517849

namespace A026053

/-- `A000115(2*n+1)+∑[A008720(2*n+1)]` -/
def P8413975558369517849.Spec : Prop :=
  ∀ n, P8413975558369517849.a n = A026053 (n + 2)

end A026053

/-! ## A026053.P8171876830876704480

`A000115(2*n+1)+∑[∑[A008616(2*n+1)]]`
-/

namespace A026053.P8171876830876704480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000115 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026053.P8171876830876704480

namespace A026053

/-- `A000115(2*n+1)+∑[∑[A008616(2*n+1)]]` -/
def P8171876830876704480.Spec : Prop :=
  ∀ n, P8171876830876704480.a n = A026053 (n + 2)

end A026053

/-! ## A026053.P10651523918877637551

`floor(A094415(A000096(n+1))/5)`
-/

namespace A026053.P10651523918877637551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A094415 (A000096 (n + 1)).toNat : ℚ) / 5⌋

end

end A026053.P10651523918877637551

namespace A026053

/-- `floor(A094415(A000096(n+1))/5)` -/
def P10651523918877637551.Spec : Prop :=
  ∀ n, P10651523918877637551.a n = A026053 (n + 2)

end A026053

/-!
# A026054: dot product (n,n-1,...2,1).(3,4,...,n,1,2).

The programs for A026054, the canonical program `A026054.P10564683423339651880` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026054 has offset 3).

The definition of A026054 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026054.P1770894445839571734

`(n+3)*((n+3)²+9*(n+3)-10)/6`
-/

namespace A026054.P1770894445839571734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) * ((((n + 3) ^ 2 + 9 * (n + 3) : ℤ) - 10 : ℚ) / 6)

end

end A026054.P1770894445839571734

namespace A026054

/-- `(n+3)*((n+3)²+9*(n+3)-10)/6` -/
def P1770894445839571734.Spec : Prop :=
  ∀ n, P1770894445839571734.a n = (A026054 (n + 3) : ℚ)

end A026054

/-! ## A026054.P10564683423339651880

`A023551(n+1)+4`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026054

/-- `A023551(n+1)+4` -/
def P10564683423339651880.Spec : Prop :=
  ∀ n, P10564683423339651880.a n = A026054 (n + 3)

theorem P10564683423339651880.correct : P10564683423339651880.Spec := by
  intro n
  simp only [A026054, Nat.add_sub_cancel]

end A026054

/-! ## A026054.P9974760276874471864

`abs(A008778(n)+(Δ[lcm(n+3, (n+2)²)]+2*n)/2)`
-/

namespace A026054.P9974760276874471864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 3) ((n + 2) ^ 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A008778 n : ℚ) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (2 * n : ℤ) : ℚ) / 2|

end

end A026054.P9974760276874471864

namespace A026054

/-- `abs(A008778(n)+(Δ[lcm(n+3, (n+2)²)]+2*n)/2)` -/
def P9974760276874471864.Spec : Prop :=
  ∀ n, P9974760276874471864.a n = (A026054 (n + 3) : ℚ)

end A026054

/-! ## A026054.P12177019139750510397

`abs(A008778(n)+Δ[(n+5)*A000096(n)])`
-/

namespace A026054.P12177019139750510397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℤ) * A000096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008778 n + (f1 (n + 1) - f1 n)|

end

end A026054.P12177019139750510397

namespace A026054

/-- `abs(A008778(n)+Δ[(n+5)*A000096(n)])` -/
def P12177019139750510397.Spec : Prop :=
  ∀ n, P12177019139750510397.a n = A026054 (n + 3)

end A026054

/-! ## A026054.P11921889321163241767

`Δ[A095667(n)]`
-/

namespace A026054.P11921889321163241767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026054.P11921889321163241767

namespace A026054

/-- `Δ[A095667(n)]` -/
def P11921889321163241767.Spec : Prop :=
  ∀ n, P11921889321163241767.a n = A026054 (n + 3)

end A026054

/-! ## A026054.P16767928493513623507

`A060488(n+4)`
-/

namespace A026054.P16767928493513623507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060488 (n + 4)

end

end A026054.P16767928493513623507

namespace A026054

/-- `A060488(n+4)` -/
def P16767928493513623507.Spec : Prop :=
  ∀ n, P16767928493513623507.a n = A026054 (n + 3)

end A026054

/-! ## A026054.P1104112946846653736

`floor(Δ[A200872(n+1)/2])`
-/

namespace A026054.P1104112946846653736
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200872 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A026054.P1104112946846653736

namespace A026054

/-- `floor(Δ[A200872(n+1)/2])` -/
def P1104112946846653736.Spec : Prop :=
  ∀ n, P1104112946846653736.a n = A026054 (n + 3)

end A026054

/-! ## A026054.P8035067710470319073

`abs(Δ[A006504(n+1)]-(n+2))`
-/

namespace A026054.P8035067710470319073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n - (n + 2 : ℤ)|

end

end A026054.P8035067710470319073

namespace A026054

/-- `abs(Δ[A006504(n+1)]-(n+2))` -/
def P8035067710470319073.Spec : Prop :=
  ∀ n, P8035067710470319073.a n = A026054 (n + 3)

end A026054

/-! ## A026054.P1193058012013158844

`Δ[A006504(n+1)-A000096(n)]`
-/

namespace A026054.P1193058012013158844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1) - A000096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026054.P1193058012013158844

namespace A026054

/-- `Δ[A006504(n+1)-A000096(n)]` -/
def P1193058012013158844.Spec : Prop :=
  ∀ n, P1193058012013158844.a n = A026054 (n + 3)

end A026054

/-! ## A026054.P15809820278925751874

`Δ[A154286(n)-A002417(n+1)]`
-/

namespace A026054.P15809820278925751874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154286 n - A002417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026054.P15809820278925751874

namespace A026054

/-- `Δ[A154286(n)-A002417(n+1)]` -/
def P15809820278925751874.Spec : Prop :=
  ∀ n, P15809820278925751874.a n = A026054 (n + 3)

end A026054

/-! ## A026054.P16863222062620500796

`Δ[A006504(n+1)-A167499(n)]`
-/

namespace A026054.P16863222062620500796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1) - A167499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026054.P16863222062620500796

namespace A026054

/-- `Δ[A006504(n+1)-A167499(n)]` -/
def P16863222062620500796.Spec : Prop :=
  ∀ n, P16863222062620500796.a n = A026054 (n + 3)

end A026054

/-! ## A026054.P862979992483810806

`Δ[A006504(n+1)-A000124(n+1)]`
-/

namespace A026054.P862979992483810806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1) - A000124 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026054.P862979992483810806

namespace A026054

/-- `Δ[A006504(n+1)-A000124(n+1)]` -/
def P862979992483810806.Spec : Prop :=
  ∀ n, P862979992483810806.a n = A026054 (n + 3)

end A026054

/-! ## A026054.P12356396844482273006

`(A038846(n)+A038845(n+1))/A000302(n)`
-/

namespace A026054.P12356396844482273006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038846 n + A038845 (n + 1) : ℚ) / (A000302 n : ℚ)

end

end A026054.P12356396844482273006

namespace A026054

/-- `(A038846(n)+A038845(n+1))/A000302(n)` -/
def P12356396844482273006.Spec : Prop :=
  ∀ n, P12356396844482273006.a n = (A026054 (n + 3) : ℚ)

end A026054

/-! ## A026054.P12367187074025112661

`A336996((n+4)²-4)`
-/

namespace A026054.P12367187074025112661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336996 ((n + 4) ^ 2 - 4)

end

end A026054.P12367187074025112661

namespace A026054

/-- `A336996((n+4)²-4)` -/
def P12367187074025112661.Spec : Prop :=
  ∀ n, P12367187074025112661.a n = A026054 (n + 3)

end A026054

/-! ## A026054.P14554752333242168012

`A185730(∑[n+3]+2)`
-/

namespace A026054.P14554752333242168012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185730 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A026054.P14554752333242168012

namespace A026054

/-- `A185730(∑[n+3]+2)` -/
def P14554752333242168012.Spec : Prop :=
  ∀ n, P14554752333242168012.a n = A026054 (n + 3)

end A026054

/-! ## A026054.P8913978454666586787

`A093561(A167487(n+4)-11)`
-/

namespace A026054.P8913978454666586787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093561 (A167487 (n + 4) - 11).toNat

end

end A026054.P8913978454666586787

namespace A026054

/-- `A093561(A167487(n+4)-11)` -/
def P8913978454666586787.Spec : Prop :=
  ∀ n, P8913978454666586787.a n = A026054 (n + 3)

end A026054

/-!
# A026055: a(n) = (d(n)-r(n))/2, where d = A026054 and r is the periodic sequence with fundamental period (1,0,0,0).

The programs for A026055, the canonical program `A026055.P13580251553414776894` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026055 has offset 3).

The definition of A026055 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026055.P13580251553414776894

`ceil((∑[∑[n+5]+4]+3)/2)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026055

/-- `ceil((∑[∑[n+5]+4]+3)/2)` -/
def P13580251553414776894.Spec : Prop :=
  ∀ n, P13580251553414776894.a n = A026055 (n + 3)

theorem P13580251553414776894.correct : P13580251553414776894.Spec := by
  intro n
  simp only [A026055, Nat.add_sub_cancel]

end A026055

/-! ## A026055.P2060571682153692055

`floor(A026054(n+3)/2)`
-/

namespace A026055.P2060571682153692055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026054 (n + 3) : ℚ) / 2⌋

end

end A026055.P2060571682153692055

namespace A026055

/-- `floor(A026054(n+3)/2)` -/
def P2060571682153692055.Spec : Prop :=
  ∀ n, P2060571682153692055.a n = A026055 (n + 3)

end A026055

/-! ## A026055.P2153580532446024145

`floor(A023551(n+1)/2)+2`
-/

namespace A026055.P2153580532446024145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A023551 (n + 1) : ℚ) / 2⌋ + 2

end

end A026055.P2153580532446024145

namespace A026055

/-- `floor(A023551(n+1)/2)+2` -/
def P2153580532446024145.Spec : Prop :=
  ∀ n, P2153580532446024145.a n = A026055 (n + 3)

end A026055

/-! ## A026055.P16226190478400751644

`∑[∑[A116922(n+1)+1]+4]`
-/

namespace A026055.P16226190478400751644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116922 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026055.P16226190478400751644

namespace A026055

/-- `∑[∑[A116922(n+1)+1]+4]` -/
def P16226190478400751644.Spec : Prop :=
  ∀ n, P16226190478400751644.a n = A026055 (n + 3)

end A026055

/-! ## A026055.P4980793516557213491

`floor(Δ[A095667(n)/2])`
-/

namespace A026055.P4980793516557213491
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095667 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A026055.P4980793516557213491

namespace A026055

/-- `floor(Δ[A095667(n)/2])` -/
def P4980793516557213491.Spec : Prop :=
  ∀ n, P4980793516557213491.a n = A026055 (n + 3)

end A026055

/-! ## A026055.P16161022658258881162

`floor(A060488(n+4)/2)`
-/

namespace A026055.P16161022658258881162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060488 (n + 4) : ℚ) / 2⌋

end

end A026055.P16161022658258881162

namespace A026055

/-- `floor(A060488(n+4)/2)` -/
def P16161022658258881162.Spec : Prop :=
  ∀ n, P16161022658258881162.a n = A026055 (n + 3)

end A026055

/-! ## A026055.P14178387908262652668

`floor(Δ[A200872(n+1)/4])`
-/

namespace A026055.P14178387908262652668
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200872 (n + 1) : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A026055.P14178387908262652668

namespace A026055

/-- `floor(Δ[A200872(n+1)/4])` -/
def P14178387908262652668.Spec : Prop :=
  ∀ n, P14178387908262652668.a n = A026055 (n + 3)

end A026055

/-! ## A026055.P1902286111363269576

`∑[A110655(n)+A014616(n+2)]+2`
-/

namespace A026055.P1902286111363269576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 n + A014616 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A026055.P1902286111363269576

namespace A026055

/-- `∑[A110655(n)+A014616(n+2)]+2` -/
def P1902286111363269576.Spec : Prop :=
  ∀ n, P1902286111363269576.a n = A026055 (n + 3)

end A026055

/-! ## A026055.P1132862906241191325

`A011894(n+3)+(n+2)*(n+3)`
-/

namespace A026055.P1132862906241191325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011894 (n + 3) + ((n + 2) * (n + 3) : ℤ)

end

end A026055.P1132862906241191325

namespace A026055

/-- `A011894(n+3)+(n+2)*(n+3)` -/
def P1132862906241191325.Spec : Prop :=
  ∀ n, P1132862906241191325.a n = A026055 (n + 3)

end A026055

/-! ## A026055.P6636881375198745344

`floor(A094415(Δ[A008778(n)])/2)`
-/

namespace A026055.P6636881375198745344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A094415 (f1 (n + 1) - f1 n).toNat : ℚ) / 2⌋

end

end A026055.P6636881375198745344

namespace A026055

/-- `floor(A094415(Δ[A008778(n)])/2)` -/
def P6636881375198745344.Spec : Prop :=
  ∀ n, P6636881375198745344.a n = A026055 (n + 3)

end A026055

/-!
# A026056: a(n) = (d(n)-r(n))/5, where d = A026054 and r is the periodic sequence with fundamental period (3,3,0,0,4).

The programs for A026056, the canonical program `A026056.P12220642571769673940` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026056 has offset 3).

The definition of A026056 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026056.P12220642571769673940

`ceil(∑[∑[n+5]+4]/5)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026056

/-- `ceil(∑[∑[n+5]+4]/5)` -/
def P12220642571769673940.Spec : Prop :=
  ∀ n, P12220642571769673940.a n = A026056 (n + 3)

theorem P12220642571769673940.correct : P12220642571769673940.Spec := by
  intro n
  simp only [A026056, Nat.add_sub_cancel]

end A026056

/-! ## A026056.P13785125992639896642

`∑[∑[a(n-5)+1]]` with `a(0)=2, a(1)=1, a(2)=2, a(3)=1, a(4)=1`
-/

namespace A026056.P13785125992639896642
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2, 1, 1] fun n f2 =>
  f2 (n - 5) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026056.P13785125992639896642

namespace A026056

/-- `∑[∑[a(n-5)+1]]` -/
def P13785125992639896642.Spec : Prop :=
  ∀ n, (P13785125992639896642.a n : ℤ) = A026056 (n + 3)

end A026056

/-! ## A026056.P4758725762675291825

`∑[∑[∑[floor(a(n-5))]]]` with `a(0)=2, a(1)=-1, a(2)=1, a(3)=-1, a(4)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A026056.P4758725762675291825
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [2, -1, 1, -1, 0] fun n f3 =>
  f3 (n - 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026056.P4758725762675291825

namespace A026056

/-- `∑[∑[∑[floor(a(n-5))]]]` -/
def P4758725762675291825.Spec : Prop :=
  ∀ n, P4758725762675291825.a n = A026056 (n + 3)

end A026056

/-! ## A026056.P6305152993836080639

`floor(A026054(n+3)/5)`
-/

namespace A026056.P6305152993836080639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026054 (n + 3) : ℚ) / 5⌋

end

end A026056.P6305152993836080639

namespace A026056

/-- `floor(A026054(n+3)/5)` -/
def P6305152993836080639.Spec : Prop :=
  ∀ n, P6305152993836080639.a n = A026056 (n + 3)

end A026056

/-! ## A026056.P6045589595229845909

`floor(A060488(n+4)/5)`
-/

namespace A026056.P6045589595229845909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060488 (n + 4) : ℚ) / 5⌋

end

end A026056.P6045589595229845909

namespace A026056

/-- `floor(A060488(n+4)/5)` -/
def P6045589595229845909.Spec : Prop :=
  ∀ n, P6045589595229845909.a n = A026056 (n + 3)

end A026056

/-! ## A026056.P5621079971935986531

`floor(Δ[A200872(n+1)/10])`
-/

namespace A026056.P5621079971935986531
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200872 (n + 1) : ℚ) / 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A026056.P5621079971935986531

namespace A026056

/-- `floor(Δ[A200872(n+1)/10])` -/
def P5621079971935986531.Spec : Prop :=
  ∀ n, P5621079971935986531.a n = A026056 (n + 3)

end A026056

/-! ## A026056.P4954071565030275709

`A000115(2*n+1)+∑[A008720(2*n)]`
-/

namespace A026056.P4954071565030275709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008720 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000115 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026056.P4954071565030275709

namespace A026056

/-- `A000115(2*n+1)+∑[A008720(2*n)]` -/
def P4954071565030275709.Spec : Prop :=
  ∀ n, P4954071565030275709.a n = A026056 (n + 3)

end A026056

/-! ## A026056.P10782134183724382307

`A000115(2*n+1)+∑[∑[A008616(2*n)]]`
-/

namespace A026056.P10782134183724382307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000115 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026056.P10782134183724382307

namespace A026056

/-- `A000115(2*n+1)+∑[∑[A008616(2*n)]]` -/
def P10782134183724382307.Spec : Prop :=
  ∀ n, P10782134183724382307.a n = A026056 (n + 3)

end A026056

/-!
# A026057: a(n) = n*(n^2 + 12*n - 25)/6.

The programs for A026057, the canonical program `A026057.P13625167774670523479` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026057 has offset 0).

The definition of A026057 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026057.P13625167774670523479

`n*(n²+12*n-25)/6`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026057

/-- `n*(n²+12*n-25)/6` -/
def P13625167774670523479.Spec : Prop :=
  ∀ n, P13625167774670523479.a n = (A026057 n : ℚ)

end A026057

/-! ## A026057.P5787264707402738326

`∑[∑[a(n-1)+1]]` with `a(0)=0, a(1)=-2, a(2)=5`
-/

namespace A026057.P5787264707402738326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, -2, 5] fun n f2 =>
  f2 (n - 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026057.P5787264707402738326

namespace A026057

/-- `∑[∑[a(n-1)+1]]` -/
def P5787264707402738326.Spec : Prop :=
  ∀ n, P5787264707402738326.a n = A026057 n

end A026057

/-! ## A026057.P14031035335555492644

`6-∑[a(n-1)-3-n]` with `a(0)=6`
-/

namespace A026057.P14031035335555492644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) - 3 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026057.P14031035335555492644

namespace A026057

/-- `6-∑[a(n-1)-3-n]` -/
def P14031035335555492644.Spec : Prop :=
  ∀ n, P14031035335555492644.a n = A026057 n

end A026057

/-! ## A026057.P15655499513134261806

`∑[abs(4-A052905(n))-3]`
-/

namespace A026057.P15655499513134261806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - A052905 n| - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026057.P15655499513134261806

namespace A026057

/-- `∑[abs(4-A052905(n))-3]` -/
def P15655499513134261806.Spec : Prop :=
  ∀ n, P15655499513134261806.a n = A026057 n

end A026057

/-! ## A026057.P11254708309168304153

`A111396(n)-A132756(n)`
-/

namespace A026057.P11254708309168304153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n - A132756 n

end

end A026057.P11254708309168304153

namespace A026057

/-- `A111396(n)-A132756(n)` -/
def P11254708309168304153.Spec : Prop :=
  ∀ n, P11254708309168304153.a n = A026057 n

end A026057

/-! ## A026057.P10728325238122198236

`A323221(n)-A017281(n)`
-/

namespace A026057.P10728325238122198236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323221 n - A017281 n

end

end A026057.P10728325238122198236

namespace A026057

/-- `A323221(n)-A017281(n)` -/
def P10728325238122198236.Spec : Prop :=
  ∀ n, P10728325238122198236.a n = A026057 n

end A026057

/-! ## A026057.P18292008797531387425

`A264443(n)-A132755(n)`
-/

namespace A026057.P18292008797531387425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - A132755 n

end

end A026057.P18292008797531387425

namespace A026057

/-- `A264443(n)-A132755(n)` -/
def P18292008797531387425.Spec : Prop :=
  ∀ n, P18292008797531387425.a n = A026057 n

end A026057

/-! ## A026057.P8624604634025626897

`A134465(n+1)-A016993(n)`
-/

namespace A026057.P8624604634025626897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134465 (n + 1) - A016993 n

end

end A026057.P8624604634025626897

namespace A026057

/-- `A134465(n+1)-A016993(n)` -/
def P8624604634025626897.Spec : Prop :=
  ∀ n, P8624604634025626897.a n = A026057 n

end A026057

/-! ## A026057.P3843048749970120691

`A143058(n)-A190576(n+1)`
-/

namespace A026057.P3843048749970120691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143058 n - A190576 (n + 1)

end

end A026057.P3843048749970120691

namespace A026057

/-- `A143058(n)-A190576(n+1)` -/
def P3843048749970120691.Spec : Prop :=
  ∀ n, P3843048749970120691.a n = A026057 n

end A026057

/-! ## A026057.P13939487314320209711

`A266398(n+1)-A218471(n)`
-/

namespace A026057.P13939487314320209711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266398 (n + 1) - A218471 n

end

end A026057.P13939487314320209711

namespace A026057

/-- `A266398(n+1)-A218471(n)` -/
def P13939487314320209711.Spec : Prop :=
  ∀ n, P13939487314320209711.a n = A026057 n

end A026057

/-! ## A026057.P13613470589452099634

`A255994(n+1)-A350522(n)`
-/

namespace A026057.P13613470589452099634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255994 (n + 1) - A350522 n

end

end A026057.P13613470589452099634

namespace A026057

/-- `A255994(n+1)-A350522(n)` -/
def P13613470589452099634.Spec : Prop :=
  ∀ n, P13613470589452099634.a n = A026057 n

end A026057

/-! ## A026057.P17885268930600330562

`A006416(n+2)-A017173(n)`
-/

namespace A026057.P17885268930600330562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2) - A017173 n

end

end A026057.P17885268930600330562

namespace A026057

/-- `A006416(n+2)-A017173(n)` -/
def P17885268930600330562.Spec : Prop :=
  ∀ n, P17885268930600330562.a n = A026057 n

end A026057

/-! ## A026057.P15732080825527148475

`A212343(n+2)-A046127(n)`
-/

namespace A026057.P15732080825527148475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212343 (n + 2) - A046127 n

end

end A026057.P15732080825527148475

namespace A026057

/-- `A212343(n+2)-A046127(n)` -/
def P15732080825527148475.Spec : Prop :=
  ∀ n, P15732080825527148475.a n = A026057 n

end A026057

/-! ## A026057.P14373548566338901587

`A275874(n+4)-A008592(n)`
-/

namespace A026057.P14373548566338901587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275874 (n + 4) - A008592 n

end

end A026057.P14373548566338901587

namespace A026057

/-- `A275874(n+4)-A008592(n)` -/
def P14373548566338901587.Spec : Prop :=
  ∀ n, P14373548566338901587.a n = A026057 n

end A026057

/-! ## A026057.P7726715148720222900

`A051943(n+9)-A277978(n)`
-/

namespace A026057.P7726715148720222900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051943 (n + 9) - A277978 n

end

end A026057.P7726715148720222900

namespace A026057

/-- `A051943(n+9)-A277978(n)` -/
def P7726715148720222900.Spec : Prop :=
  ∀ n, P7726715148720222900.a n = A026057 n

end A026057

/-! ## A026057.P1087028746250819269

`round(abs(2/(n+1)*A350116(n)-n)-A132755(n))`
-/

namespace A026057.P1087028746250819269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (|2 / (n + 1 : ℚ) * (A350116 n : ℚ) - (n : ℚ)| - (A132755 n : ℚ))

end

end A026057.P1087028746250819269

namespace A026057

/-- `round(abs(2/(n+1)*A350116(n)-n)-A132755(n))` -/
def P1087028746250819269.Spec : Prop :=
  ∀ n, P1087028746250819269.a n = A026057 n

end A026057

/-! ## A026057.P2404609358076601039

`A222001(n+2)-A008594(n+1)`
-/

namespace A026057.P2404609358076601039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222001 (n + 2) - A008594 (n + 1)

end

end A026057.P2404609358076601039

namespace A026057

/-- `A222001(n+2)-A008594(n+1)` -/
def P2404609358076601039.Spec : Prop :=
  ∀ n, P2404609358076601039.a n = A026057 n

end A026057

/-! ## A026057.P7745267662582875375

`A166830(n+2)-(A016921(n+1)+A016921(n))`
-/

namespace A026057.P7745267662582875375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166830 (n + 2) - (A016921 (n + 1) + A016921 n)

end

end A026057.P7745267662582875375

namespace A026057

/-- `A166830(n+2)-(A016921(n+1)+A016921(n))` -/
def P7745267662582875375.Spec : Prop :=
  ∀ n, P7745267662582875375.a n = A026057 n

end A026057

/-! ## A026057.P343374342936664872

`A349417(n+3)-A017497(n)`
-/

namespace A026057.P343374342936664872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349417 (n + 3) - A017497 n

end

end A026057.P343374342936664872

namespace A026057

/-- `A349417(n+3)-A017497(n)` -/
def P343374342936664872.Spec : Prop :=
  ∀ n, P343374342936664872.a n = A026057 n

end A026057

/-!
# A026058: a(n) = (d(n)-r(n))/2, where d = A026057 and r is the periodic sequence with fundamental period (0,0,1,0).

The programs for A026058, the canonical program `A026058.P17231121501906867292` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026058 has offset 4).

The definition of A026058 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026058.P17231121501906867292

`A026054(n+3)+n+2-A026052(n+2)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A026058

/-- `A026054(n+3)+n+2-A026052(n+2)` -/
def P17231121501906867292.Spec : Prop :=
  ∀ n, P17231121501906867292.a n = A026058 (n + 4)

theorem P17231121501906867292.correct : P17231121501906867292.Spec := by
  intro n
  simp only [A026058, Nat.add_sub_cancel]

end A026058

/-! ## A026058.P10679722560449007528

`A026060(n+5)+n+3-A026064(n+6)`
-/

namespace A026058.P10679722560449007528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026060 (n + 5) + ((n + 3 : ℤ) - A026064 (n + 6))

end

end A026058.P10679722560449007528

namespace A026058

/-- `A026060(n+5)+n+3-A026064(n+6)` -/
def P10679722560449007528.Spec : Prop :=
  ∀ n, P10679722560449007528.a n = A026058 (n + 4)

end A026058

/-! ## A026058.P7824448820536855228

`A011894(n+1)+A001844(n+2)`
-/

namespace A026058.P7824448820536855228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011894 (n + 1) + A001844 (n + 2)

end

end A026058.P7824448820536855228

namespace A026058

/-- `A011894(n+1)+A001844(n+2)` -/
def P7824448820536855228.Spec : Prop :=
  ∀ n, P7824448820536855228.a n = A026058 (n + 4)

end A026058

/-! ## A026058.P9616081550096161528

`floor(∑[A052905(n+3)+n]/2)+5`
-/

namespace A026058.P9616081550096161528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 (n + 3) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋ + 5

end

end A026058.P9616081550096161528

namespace A026058

/-- `floor(∑[A052905(n+3)+n]/2)+5` -/
def P9616081550096161528.Spec : Prop :=
  ∀ n, P9616081550096161528.a n = A026058 (n + 4)

end A026058

/-! ## A026058.P5528879737950218547

`floor(A026057(n+4)/2)`
-/

namespace A026058.P5528879737950218547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026057 (n + 4) : ℚ) / 2⌋

end

end A026058.P5528879737950218547

namespace A026058

/-- `floor(A026057(n+4)/2)` -/
def P5528879737950218547.Spec : Prop :=
  ∀ n, P5528879737950218547.a n = A026058 (n + 4)

end A026058

/-!
# A026059: a(n) = (d(n)-r(n))/5, where d = A026057 and r is the periodic sequence with fundamental period (1,0,3,1,0).

The programs for A026059, the canonical program `A026059.P6681535723987925758` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026059 has offset 4).

The definition of A026059 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026059.P6681535723987925758

`floor(∑[A000217(n+5)+2*n+1]/5)+2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026059

/-- `floor(∑[A000217(n+5)+2*n+1]/5)+2` -/
def P6681535723987925758.Spec : Prop :=
  ∀ n, P6681535723987925758.a n = A026059 (n + 4)

theorem P6681535723987925758.correct : P6681535723987925758.Spec := by
  intro n
  simp only [A026059, Nat.add_sub_cancel]

end A026059

/-! ## A026059.P16147508086774718064

`floor(A026057(n+4)/5)`
-/

namespace A026059.P16147508086774718064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026057 (n + 4) : ℚ) / 5⌋

end

end A026059.P16147508086774718064

namespace A026059

/-- `floor(A026057(n+4)/5)` -/
def P16147508086774718064.Spec : Prop :=
  ∀ n, P16147508086774718064.a n = A026059 (n + 4)

end A026059

/-! ## A026059.P7555075384074024

`A026053(n+6)-(2*n+9)`
-/

namespace A026059.P7555075384074024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026053 (n + 6) - (2 * n + 9 : ℤ)

end

end A026059.P7555075384074024

namespace A026059

/-- `A026053(n+6)-(2*n+9)` -/
def P7555075384074024.Spec : Prop :=
  ∀ n, P7555075384074024.a n = A026059 (n + 4)

end A026059

/-! ## A026059.P148187245799623576

`round((∑[A046691(n+5)-3]+3)/5)-n`
-/

namespace A026059.P148187245799623576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046691 (n + 5) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j + 3 : ℤ) : ℚ) / 5) - (n : ℤ)

end

end A026059.P148187245799623576

namespace A026059

/-- `round((∑[A046691(n+5)-3]+3)/5)-n` -/
def P148187245799623576.Spec : Prop :=
  ∀ n, P148187245799623576.a n = A026059 (n + 4)

end A026059

/-! ## A026059.P11833297319941711352

`ceil(abs((∑[A000096(n+6)-6]+2)/5-n))`
-/

namespace A026059.P11833297319941711352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 6) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℤ) : ℚ) / 5 - (n : ℚ)|⌉

end

end A026059.P11833297319941711352

namespace A026059

/-- `ceil(abs((∑[A000096(n+6)-6]+2)/5-n))` -/
def P11833297319941711352.Spec : Prop :=
  ∀ n, P11833297319941711352.a n = A026059 (n + 4)

end A026059

/-!
# A026060: a(n) = dot_product(n,n-1,...2,1)*(5,6,...,n,1,2,3,4).

The programs for A026060, the canonical program `A026060.P5480245413158374625` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026060 has offset 5).

The definition of A026060 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026060.P15997784879775005974

`(n+5)*((n+5)²+15*(n+5)-46)/6`
-/

namespace A026060.P15997784879775005974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℚ) * ((((n + 5) ^ 2 + 15 * (n + 5) : ℤ) - 46 : ℚ) / 6)

end

end A026060.P15997784879775005974

namespace A026060

/-- `(n+5)*((n+5)²+15*(n+5)-46)/6` -/
def P15997784879775005974.Spec : Prop :=
  ∀ n, P15997784879775005974.a n = (A026060 (n + 5) : ℚ)

theorem P15997784879775005974.correct : P15997784879775005974.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A026060, Nat.add_sub_cancel, A026060.P15997784879775005974.a, A026060.P5480245413158374625.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A026060, Nat.add_sub_cancel, A026060.P15997784879775005974.a, A026060.P5480245413158374625.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A026060

/-! ## A026060.P5480245413158374625

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=45, a(1)=80, a(2)=126, a(3)=184`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026060

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P5480245413158374625.Spec : Prop :=
  ∀ n, P5480245413158374625.a n = A026060 (n + 5)

theorem P5480245413158374625.correct : P5480245413158374625.Spec := by
  intro n
  simp only [A026060, Nat.add_sub_cancel]

end A026060

/-! ## A026060.P7664533662006591497

`C(n+1, 3)+5*(n+3)²`
-/

namespace A026060.P7664533662006591497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 3 + 5 * (n + 3) ^ 2

end

end A026060.P7664533662006591497

namespace A026060

/-- `C(n+1, 3)+5*(n+3)²` -/
def P7664533662006591497.Spec : Prop :=
  ∀ n, (P7664533662006591497.a n : ℤ) = A026060 (n + 5)

end A026060

/-! ## A026060.P13258781230855489133

`A184540(n+1)-A140673(n)`
-/

namespace A026060.P13258781230855489133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184540 (n + 1) - A140673 n

end

end A026060.P13258781230855489133

namespace A026060

/-- `A184540(n+1)-A140673(n)` -/
def P13258781230855489133.Spec : Prop :=
  ∀ n, P13258781230855489133.a n = A026060 (n + 5)

end A026060

/-! ## A026060.P10393908259227905293

`∑[A000217(n+9)]-A008602(n)`
-/

namespace A026060.P10393908259227905293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008602 n

end

end A026060.P10393908259227905293

namespace A026060

/-- `∑[A000217(n+9)]-A008602(n)` -/
def P10393908259227905293.Spec : Prop :=
  ∀ n, P10393908259227905293.a n = A026060 (n + 5)

end A026060

/-! ## A026060.P10455872116549728102

`A087863(n+2)+n`
-/

namespace A026060.P10455872116549728102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087863 (n + 2) + (n : ℤ)

end

end A026060.P10455872116549728102

namespace A026060

/-- `A087863(n+2)+n` -/
def P10455872116549728102.Spec : Prop :=
  ∀ n, P10455872116549728102.a n = A026060 (n + 5)

end A026060

/-! ## A026060.P13489037061639258791

`∑[∑[n+1]]+A153169(n+2)+1`
-/

namespace A026060.P13489037061639258791
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A153169 (n + 2) + 1)

end

end A026060.P13489037061639258791

namespace A026060

/-- `∑[∑[n+1]]+A153169(n+2)+1` -/
def P13489037061639258791.Spec : Prop :=
  ∀ n, P13489037061639258791.a n = A026060 (n + 5)

end A026060

/-! ## A026060.P12603391108120617553

`A103145(n+2)+A000124(n+1)`
-/

namespace A026060.P12603391108120617553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103145 (n + 2) + A000124 (n + 1)

end

end A026060.P12603391108120617553

namespace A026060

/-- `A103145(n+2)+A000124(n+1)` -/
def P12603391108120617553.Spec : Prop :=
  ∀ n, P12603391108120617553.a n = A026060 (n + 5)

end A026060

/-! ## A026060.P1642518981924030042

`A210375(n+3)+(1-n)²`
-/

namespace A026060.P1642518981924030042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210375 (n + 3) + (1 - (n : ℤ)) ^ 2

end

end A026060.P1642518981924030042

namespace A026060

/-- `A210375(n+3)+(1-n)²` -/
def P1642518981924030042.Spec : Prop :=
  ∀ n, P1642518981924030042.a n = A026060 (n + 5)

end A026060

/-! ## A026060.P13663065054999606512

`A033429(n+3)+∑[∑[n]-n]`
-/

namespace A026060.P13663065054999606512
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033429 (n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026060.P13663065054999606512

namespace A026060

/-- `A033429(n+3)+∑[∑[n]-n]` -/
def P13663065054999606512.Spec : Prop :=
  ∀ n, P13663065054999606512.a n = A026060 (n + 5)

end A026060

/-! ## A026060.P1919952959603925120

`A008865(n+1)+A000292(n+9)-A008865(n+11)`
-/

namespace A026060.P1919952959603925120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008865 (n + 1) + (A000292 (n + 9) - A008865 (n + 11))

end

end A026060.P1919952959603925120

namespace A026060

/-- `A008865(n+1)+A000292(n+9)-A008865(n+11)` -/
def P1919952959603925120.Spec : Prop :=
  ∀ n, P1919952959603925120.a n = A026060 (n + 5)

end A026060

/-! ## A026060.P6708924589418733653

`Δ[A000332(n+11)]-A008602(n+6)`
-/

namespace A026060.P6708924589418733653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A008602 (n + 6)

end

end A026060.P6708924589418733653

namespace A026060

/-- `Δ[A000332(n+11)]-A008602(n+6)` -/
def P6708924589418733653.Spec : Prop :=
  ∀ n, P6708924589418733653.a n = A026060 (n + 5)

end A026060

/-! ## A026060.P15163025295287490659

`A184540(n+1)-A008585(A055998(n))`
-/

namespace A026060.P15163025295287490659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184540 (n + 1) - A008585 (A055998 n).toNat

end

end A026060.P15163025295287490659

namespace A026060

/-- `A184540(n+1)-A008585(A055998(n))` -/
def P15163025295287490659.Spec : Prop :=
  ∀ n, P15163025295287490659.a n = A026060 (n + 5)

end A026060

/-!
# A026061: a(n) = (d(n)-r(n))/2, where d = A026060 and r is the periodic sequence with fundamental period (1,0,0,0).

The programs for A026061, the canonical program `A026061.P785445537363448969` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026061 has offset 5).

The definition of A026061 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026061.P785445537363448969

`floor(A026060(n+5)/2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026061

/-- `floor(A026060(n+5)/2)` -/
def P785445537363448969.Spec : Prop :=
  ∀ n, P785445537363448969.a n = A026061 (n + 5)

theorem P785445537363448969.correct : P785445537363448969.Spec := by
  intro n
  simp only [A026061, Nat.add_sub_cancel]

end A026061

/-! ## A026061.P2791971426437421529

`floor((A184540(n+1)-A140673(n))/2)`
-/

namespace A026061.P2791971426437421529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A184540 (n + 1) - A140673 n : ℚ) / 2⌋

end

end A026061.P2791971426437421529

namespace A026061

/-- `floor((A184540(n+1)-A140673(n))/2)` -/
def P2791971426437421529.Spec : Prop :=
  ∀ n, P2791971426437421529.a n = A026061 (n + 5)

end A026061

/-! ## A026061.P11619547707538510739

`floor((∑[A000217(n+9)]-A008602(n))/2)`
-/

namespace A026061.P11619547707538510739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j - A008602 n : ℤ) : ℚ) / 2⌋

end

end A026061.P11619547707538510739

namespace A026061

/-- `floor((∑[A000217(n+9)]-A008602(n))/2)` -/
def P11619547707538510739.Spec : Prop :=
  ∀ n, P11619547707538510739.a n = A026061 (n + 5)

end A026061

/-! ## A026061.P7291834091322121900

`and(-2, A026060(n+5))/A001223(A029707(n+1))`
-/

namespace A026061.P7291834091322121900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (A026060 (n + 5)) : ℚ) / (A001223 (A029707 (n + 1)).toNat : ℚ)

end

end A026061.P7291834091322121900

namespace A026061

/-- `and(-2, A026060(n+5))/A001223(A029707(n+1))` -/
def P7291834091322121900.Spec : Prop :=
  ∀ n, P7291834091322121900.a n = (A026061 (n + 5) : ℚ)

end A026061

/-! ## A026061.P7337602020015850255

`floor((A087863(n+2)+n)/2)`
-/

namespace A026061.P7337602020015850255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A087863 (n + 2) + (n : ℤ) : ℚ) / 2⌋

end

end A026061.P7337602020015850255

namespace A026061

/-- `floor((A087863(n+2)+n)/2)` -/
def P7337602020015850255.Spec : Prop :=
  ∀ n, P7337602020015850255.a n = A026061 (n + 5)

end A026061

/-! ## A026061.P16354788013654688508

`floor((∑[∑[n+1]]+A153169(n+2)+1)/2)`
-/

namespace A026061.P16354788013654688508
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A153169 (n + 2) + 1) : ℚ) / 2⌋

end

end A026061.P16354788013654688508

namespace A026061

/-- `floor((∑[∑[n+1]]+A153169(n+2)+1)/2)` -/
def P16354788013654688508.Spec : Prop :=
  ∀ n, P16354788013654688508.a n = A026061 (n + 5)

end A026061

/-! ## A026061.P6739210570687177219

`floor((A033429(n+3)+∑[∑[n]-n])/2)`
-/

namespace A026061.P6739210570687177219
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A033429 (n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋

end

end A026061.P6739210570687177219

namespace A026061

/-- `floor((A033429(n+3)+∑[∑[n]-n])/2)` -/
def P6739210570687177219.Spec : Prop :=
  ∀ n, P6739210570687177219.a n = A026061 (n + 5)

end A026061

/-! ## A026061.P17542524900089675094

`A011894(n+7)+∑[A144396(n+2)]`
-/

namespace A026061.P17542524900089675094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011894 (n + 7) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026061.P17542524900089675094

namespace A026061

/-- `A011894(n+7)+∑[A144396(n+2)]` -/
def P17542524900089675094.Spec : Prop :=
  ∀ n, P17542524900089675094.a n = A026061 (n + 5)

end A026061

/-! ## A026061.P3351495201632121843

`floor(A094415(A046691(n+3))/2)`
-/

namespace A026061.P3351495201632121843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A094415 (A046691 (n + 3)).toNat : ℚ) / 2⌋

end

end A026061.P3351495201632121843

namespace A026061

/-- `floor(A094415(A046691(n+3))/2)` -/
def P3351495201632121843.Spec : Prop :=
  ∀ n, P3351495201632121843.a n = A026061 (n + 5)

end A026061

/-! ## A026061.P17402743882977501166

`A014682(and(-2, A026060(n+5)))`
-/

namespace A026061.P17402743882977501166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.land (-2) (A026060 (n + 5))).toNat

end

end A026061.P17402743882977501166

namespace A026061

/-- `A014682(and(-2, A026060(n+5)))` -/
def P17402743882977501166.Spec : Prop :=
  ∀ n, P17402743882977501166.a n = A026061 (n + 5)

end A026061

/-!
# A026062: a(n) = (d(n)-r(n))/5, where d = A026060 and r is the periodic sequence with fundamental period (0,0,1,4,0).

The programs for A026062, the canonical program `A026062.P17057419185729612188` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026062 has offset 5).

The definition of A026062 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026062.P17057419185729612188

`floor(A026060(n+5)/5)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026062

/-- `floor(A026060(n+5)/5)` -/
def P17057419185729612188.Spec : Prop :=
  ∀ n, P17057419185729612188.a n = A026062 (n + 5)

theorem P17057419185729612188.correct : P17057419185729612188.Spec := by
  intro n
  simp only [A026062, Nat.add_sub_cancel]

end A026062

/-! ## A026062.P9558140168766003557

`(A026060(n+5)-A152894(n))/5`
-/

namespace A026062.P9558140168766003557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026060 (n + 5) - A152894 n : ℚ) / 5

end

end A026062.P9558140168766003557

namespace A026062

/-- `(A026060(n+5)-A152894(n))/5` -/
def P9558140168766003557.Spec : Prop :=
  ∀ n, P9558140168766003557.a n = (A026062 (n + 5) : ℚ)

end A026062

/-! ## A026062.P5645049666208841387

`floor((A184540(n+1)-A140673(n))/5)`
-/

namespace A026062.P5645049666208841387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A184540 (n + 1) - A140673 n : ℚ) / 5⌋

end

end A026062.P5645049666208841387

namespace A026062

/-- `floor((A184540(n+1)-A140673(n))/5)` -/
def P5645049666208841387.Spec : Prop :=
  ∀ n, P5645049666208841387.a n = A026062 (n + 5)

end A026062

/-! ## A026062.P294981429801542119

`floor((∑[A000217(n+9)]-A008602(n))/5)`
-/

namespace A026062.P294981429801542119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j - A008602 n : ℤ) : ℚ) / 5⌋

end

end A026062.P294981429801542119

namespace A026062

/-- `floor((∑[A000217(n+9)]-A008602(n))/5)` -/
def P294981429801542119.Spec : Prop :=
  ∀ n, P294981429801542119.a n = A026062 (n + 5)

end A026062

/-! ## A026062.P17622757877709728835

`A011912(n+1)+(n+3)²`
-/

namespace A026062.P17622757877709728835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011912 (n + 1) + ((n + 3) ^ 2 : ℤ)

end

end A026062.P17622757877709728835

namespace A026062

/-- `A011912(n+1)+(n+3)²` -/
def P17622757877709728835.Spec : Prop :=
  ∀ n, P17622757877709728835.a n = A026062 (n + 5)

end A026062

/-! ## A026062.P8273977322957043383

`floor((A087863(n+2)+n)/5)`
-/

namespace A026062.P8273977322957043383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A087863 (n + 2) + (n : ℤ) : ℚ) / 5⌋

end

end A026062.P8273977322957043383

namespace A026062

/-- `floor((A087863(n+2)+n)/5)` -/
def P8273977322957043383.Spec : Prop :=
  ∀ n, P8273977322957043383.a n = A026062 (n + 5)

end A026062

/-! ## A026062.P9859514856374894999

`floor((∑[∑[n+1]]+A153169(n+2)+1)/5)`
-/

namespace A026062.P9859514856374894999
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A153169 (n + 2) + 1) : ℚ) / 5⌋

end

end A026062.P9859514856374894999

namespace A026062

/-- `floor((∑[∑[n+1]]+A153169(n+2)+1)/5)` -/
def P9859514856374894999.Spec : Prop :=
  ∀ n, P9859514856374894999.a n = A026062 (n + 5)

end A026062

/-! ## A026062.P9822159910722775382

`floor((A033429(n+3)+∑[∑[n]-n])/5)`
-/

namespace A026062.P9822159910722775382
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A033429 (n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 5⌋

end

end A026062.P9822159910722775382

namespace A026062

/-- `floor((A033429(n+3)+∑[∑[n]-n])/5)` -/
def P9822159910722775382.Spec : Prop :=
  ∀ n, P9822159910722775382.a n = A026062 (n + 5)

end A026062

/-! ## A026062.P2677611163809454180

`floor(A094415(A046691(n+3))/5)`
-/

namespace A026062.P2677611163809454180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A094415 (A046691 (n + 3)).toNat : ℚ) / 5⌋

end

end A026062.P2677611163809454180

namespace A026062

/-- `floor(A094415(A046691(n+3))/5)` -/
def P2677611163809454180.Spec : Prop :=
  ∀ n, P2677611163809454180.a n = A026062 (n + 5)

end A026062

/-!
# A026063: dot_product(n,n-1,...2,1)*(6,7,...,n,1,2,3,4,5).

The programs for A026063, the canonical program `A026063.P16738587324051599997` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026063 has offset 6).

The definition of A026063 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026063.P16738587324051599997

`(n+6)*((n+6)²+18*(n+6)-73)/6`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026063

/-- `(n+6)*((n+6)²+18*(n+6)-73)/6` -/
def P16738587324051599997.Spec : Prop :=
  ∀ n, P16738587324051599997.a n = (A026063 (n + 6) : ℚ)

end A026063

/-! ## A026063.P6457823868901264744

`A152822(n)+2*A026064(n+6)`
-/

namespace A026063.P6457823868901264744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152822 n + 2 * A026064 (n + 6)

end

end A026063.P6457823868901264744

namespace A026063

/-- `A152822(n)+2*A026064(n+6)` -/
def P6457823868901264744.Spec : Prop :=
  ∀ n, P6457823868901264744.a n = A026063 (n + 6)

end A026063

/-! ## A026063.P9693149779972203707

`A005337(n+10)-5`
-/

namespace A026063.P9693149779972203707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005337 (n + 10) - 5

end

end A026063.P9693149779972203707

namespace A026063

/-- `A005337(n+10)-5` -/
def P9693149779972203707.Spec : Prop :=
  ∀ n, P9693149779972203707.a n = A026063 (n + 6)

end A026063

/-! ## A026063.P6204688766477542290

`A067707(n+2)+A000292(n+5)`
-/

namespace A026063.P6204688766477542290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067707 (n + 2) + A000292 (n + 5)

end

end A026063.P6204688766477542290

namespace A026063

/-- `A067707(n+2)+A000292(n+5)` -/
def P6204688766477542290.Spec : Prop :=
  ∀ n, P6204688766477542290.a n = A026063 (n + 6)

end A026063

/-! ## A026063.P9126355895736211942

`A000292(n+6)+∑[A008587(n+3)]`
-/

namespace A026063.P9126355895736211942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 6) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026063.P9126355895736211942

namespace A026063

/-- `A000292(n+6)+∑[A008587(n+3)]` -/
def P9126355895736211942.Spec : Prop :=
  ∀ n, P9126355895736211942.a n = A026063 (n + 6)

end A026063

/-! ## A026063.P4660785115695623788

`A000292(n+6)+∑[A008706(n+3)]`
-/

namespace A026063.P4660785115695623788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 6) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026063.P4660785115695623788

namespace A026063

/-- `A000292(n+6)+∑[A008706(n+3)]` -/
def P4660785115695623788.Spec : Prop :=
  ∀ n, P4660785115695623788.a n = A026063 (n + 6)

end A026063

/-! ## A026063.P11054999866990778060

`A008778(n+5)+n*A103517(n+5)`
-/

namespace A026063.P11054999866990778060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 5) + (n : ℤ) * A103517 (n + 5)

end

end A026063.P11054999866990778060

namespace A026063

/-- `A008778(n+5)+n*A103517(n+5)` -/
def P11054999866990778060.Spec : Prop :=
  ∀ n, P11054999866990778060.a n = A026063 (n + 6)

end A026063

/-! ## A026063.P7813334012215722370

`A000096(n+8)+∑[A056121(n+3)]`
-/

namespace A026063.P7813334012215722370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056121 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 8) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026063.P7813334012215722370

namespace A026063

/-- `A000096(n+8)+∑[A056121(n+3)]` -/
def P7813334012215722370.Spec : Prop :=
  ∀ n, P7813334012215722370.a n = A026063 (n + 6)

end A026063

/-! ## A026063.P2057571151511378574

`A000567(n+5)+A000292(n+11)-A000567(n+10)`
-/

namespace A026063.P2057571151511378574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (n + 5) + (A000292 (n + 11) - A000567 (n + 10))

end

end A026063.P2057571151511378574

namespace A026063

/-- `A000567(n+5)+A000292(n+11)-A000567(n+10)` -/
def P2057571151511378574.Spec : Prop :=
  ∀ n, P2057571151511378574.a n = A026063 (n + 6)

end A026063

/-! ## A026063.P7413182788094488613

`A000125(n)+Δ[A002717(2*n+5)]`
-/

namespace A026063.P7413182788094488613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002717 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n + (f1 (n + 1) - f1 n)

end

end A026063.P7413182788094488613

namespace A026063

/-- `A000125(n)+Δ[A002717(2*n+5)]` -/
def P7413182788094488613.Spec : Prop :=
  ∀ n, P7413182788094488613.a n = A026063 (n + 6)

end A026063

/-! ## A026063.P8422137713488960981

`Δ[A002717(2*n+5)+A000127(n+1)]`
-/

namespace A026063.P8422137713488960981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002717 (2 * n + 5) + A000127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026063.P8422137713488960981

namespace A026063

/-- `Δ[A002717(2*n+5)+A000127(n+1)]` -/
def P8422137713488960981.Spec : Prop :=
  ∀ n, P8422137713488960981.a n = A026063 (n + 6)

end A026063

/-! ## A026063.P16253241975762882089

`A000326(A020742(n))+A000125(n)`
-/

namespace A026063.P16253241975762882089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A020742 n).toNat + A000125 n

end

end A026063.P16253241975762882089

namespace A026063

/-- `A000326(A020742(n))+A000125(n)` -/
def P16253241975762882089.Spec : Prop :=
  ∀ n, P16253241975762882089.a n = A026063 (n + 6)

end A026063

/-!
# A026064: a(n) = (d(n)-r(n))/2, where d = A026063 and r is the periodic sequence with fundamental period (1,1,0,1).

The programs for A026064, the canonical program `A026064.P1202076233797928254` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026064 has offset 6).

The definition of A026064 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026064.P1202076233797928254

`floor(A026063(n+6)/2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026064

/-- `floor(A026063(n+6)/2)` -/
def P1202076233797928254.Spec : Prop :=
  ∀ n, P1202076233797928254.a n = A026064 (n + 6)

theorem P1202076233797928254.correct : P1202076233797928254.Spec := by
  intro n
  simp only [A026064, Nat.add_sub_cancel]

end A026064

/-! ## A026064.P1162472982714771356

`(A026063(n+6)-A152822(n))/2`
-/

namespace A026064.P1162472982714771356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026063 (n + 6) - A152822 n : ℚ) / 2

end

end A026064.P1162472982714771356

namespace A026064

/-- `(A026063(n+6)-A152822(n))/2` -/
def P1162472982714771356.Spec : Prop :=
  ∀ n, P1162472982714771356.a n = (A026064 (n + 6) : ℚ)

end A026064

/-! ## A026064.P1863643526213394881

`floor((A005337(n+10)-5)/2)`
-/

namespace A026064.P1863643526213394881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005337 (n + 10) - 5 : ℚ) / 2⌋

end

end A026064.P1863643526213394881

namespace A026064

/-- `floor((A005337(n+10)-5)/2)` -/
def P1863643526213394881.Spec : Prop :=
  ∀ n, P1863643526213394881.a n = A026064 (n + 6)

end A026064

/-! ## A026064.P17935064933007369793

`floor((A067707(n+2)+A000292(n+5))/2)`
-/

namespace A026064.P17935064933007369793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A067707 (n + 2) + A000292 (n + 5) : ℚ) / 2⌋

end

end A026064.P17935064933007369793

namespace A026064

/-- `floor((A067707(n+2)+A000292(n+5))/2)` -/
def P17935064933007369793.Spec : Prop :=
  ∀ n, P17935064933007369793.a n = A026064 (n + 6)

end A026064

/-! ## A026064.P7029756219586278613

`floor((A000292(n+6)+∑[A008587(n+3)])/2)`
-/

namespace A026064.P7029756219586278613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A000292 (n + 6) + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋

end

end A026064.P7029756219586278613

namespace A026064

/-- `floor((A000292(n+6)+∑[A008587(n+3)])/2)` -/
def P7029756219586278613.Spec : Prop :=
  ∀ n, P7029756219586278613.a n = A026064 (n + 6)

end A026064

/-! ## A026064.P10060441556128832722

`floor((A000292(n+6)+∑[A008706(n+3)])/2)`
-/

namespace A026064.P10060441556128832722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A000292 (n + 6) + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋

end

end A026064.P10060441556128832722

namespace A026064

/-- `floor((A000292(n+6)+∑[A008706(n+3)])/2)` -/
def P10060441556128832722.Spec : Prop :=
  ∀ n, P10060441556128832722.a n = A026064 (n + 6)

end A026064

/-! ## A026064.P8627839700484403031

`floor((A008778(n+5)+n*A103517(n+5))/2)`
-/

namespace A026064.P8627839700484403031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008778 (n + 5) + (n : ℤ) * A103517 (n + 5) : ℚ) / 2⌋

end

end A026064.P8627839700484403031

namespace A026064

/-- `floor((A008778(n+5)+n*A103517(n+5))/2)` -/
def P8627839700484403031.Spec : Prop :=
  ∀ n, P8627839700484403031.a n = A026064 (n + 6)

end A026064

/-! ## A026064.P2428990547185314913

`floor((A000567(n+5)+A000292(n+11)-A000567(n+10))/2)`
-/

namespace A026064.P2428990547185314913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000567 (n + 5) + (A000292 (n + 11) - A000567 (n + 10)) : ℚ) / 2⌋

end

end A026064.P2428990547185314913

namespace A026064

/-- `floor((A000567(n+5)+A000292(n+11)-A000567(n+10))/2)` -/
def P2428990547185314913.Spec : Prop :=
  ∀ n, P2428990547185314913.a n = A026064 (n + 6)

end A026064

/-! ## A026064.P5571475718738083532

`floor((A000125(n)+Δ[A002717(2*n+5)])/2)`
-/

namespace A026064.P5571475718738083532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002717 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000125 n + (f1 (n + 1) - f1 n) : ℚ) / 2⌋

end

end A026064.P5571475718738083532

namespace A026064

/-- `floor((A000125(n)+Δ[A002717(2*n+5)])/2)` -/
def P5571475718738083532.Spec : Prop :=
  ∀ n, P5571475718738083532.a n = A026064 (n + 6)

end A026064

/-! ## A026064.P8754069826805351812

`floor((A000326(A020742(n))+A000125(n))/2)`
-/

namespace A026064.P8754069826805351812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000326 (A020742 n).toNat + A000125 n : ℚ) / 2⌋

end

end A026064.P8754069826805351812

namespace A026064

/-- `floor((A000326(A020742(n))+A000125(n))/2)` -/
def P8754069826805351812.Spec : Prop :=
  ∀ n, P8754069826805351812.a n = A026064 (n + 6)

end A026064

/-!
# A026065: a(n) = (d(n)-r(n))/5, where d = A026063 and r is the periodic sequence with fundamental period (1,4,0,0,0).

The programs for A026065, the canonical program `A026065.P146736684899570816` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026065 has offset 6).

The definition of A026065 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026065.P146736684899570816

`floor(A026063(n+6)/5)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026065

/-- `floor(A026063(n+6)/5)` -/
def P146736684899570816.Spec : Prop :=
  ∀ n, P146736684899570816.a n = A026065 (n + 6)

theorem P146736684899570816.correct : P146736684899570816.Spec := by
  intro n
  simp only [A026065, Nat.add_sub_cancel]

end A026065

/-! ## A026065.P7781485335051896210

`(A026063(n+6)-A152898(n))/5`
-/

namespace A026065.P7781485335051896210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026063 (n + 6) - A152898 n : ℚ) / 5

end

end A026065.P7781485335051896210

namespace A026065

/-- `(A026063(n+6)-A152898(n))/5` -/
def P7781485335051896210.Spec : Prop :=
  ∀ n, P7781485335051896210.a n = (A026065 (n + 6) : ℚ)

end A026065

/-! ## A026065.P4867058872055303694

`floor((A152822(n)+2*A026064(n+6))/5)`
-/

namespace A026065.P4867058872055303694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A152822 n + 2 * A026064 (n + 6) : ℚ) / 5⌋

end

end A026065.P4867058872055303694

namespace A026065

/-- `floor((A152822(n)+2*A026064(n+6))/5)` -/
def P4867058872055303694.Spec : Prop :=
  ∀ n, P4867058872055303694.a n = A026065 (n + 6)

end A026065

/-! ## A026065.P768765900809428482

`floor((A005337(n+10)-5)/5)`
-/

namespace A026065.P768765900809428482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005337 (n + 10) - 5 : ℚ) / 5⌋

end

end A026065.P768765900809428482

namespace A026065

/-- `floor((A005337(n+10)-5)/5)` -/
def P768765900809428482.Spec : Prop :=
  ∀ n, P768765900809428482.a n = A026065 (n + 6)

end A026065

/-! ## A026065.P4428861974935240092

`floor((A067707(n+2)+A000292(n+5))/5)`
-/

namespace A026065.P4428861974935240092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A067707 (n + 2) + A000292 (n + 5) : ℚ) / 5⌋

end

end A026065.P4428861974935240092

namespace A026065

/-- `floor((A067707(n+2)+A000292(n+5))/5)` -/
def P4428861974935240092.Spec : Prop :=
  ∀ n, P4428861974935240092.a n = A026065 (n + 6)

end A026065

/-! ## A026065.P12010326792955633778

`floor((A000292(n+6)+∑[A008587(n+3)])/5)`
-/

namespace A026065.P12010326792955633778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A000292 (n + 6) + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 5⌋

end

end A026065.P12010326792955633778

namespace A026065

/-- `floor((A000292(n+6)+∑[A008587(n+3)])/5)` -/
def P12010326792955633778.Spec : Prop :=
  ∀ n, P12010326792955633778.a n = A026065 (n + 6)

end A026065

/-! ## A026065.P11247937606663313111

`floor((A000292(n+6)+∑[A008706(n+3)])/5)`
-/

namespace A026065.P11247937606663313111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A000292 (n + 6) + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 5⌋

end

end A026065.P11247937606663313111

namespace A026065

/-- `floor((A000292(n+6)+∑[A008706(n+3)])/5)` -/
def P11247937606663313111.Spec : Prop :=
  ∀ n, P11247937606663313111.a n = A026065 (n + 6)

end A026065

/-! ## A026065.P3835338556170910065

`floor((A008778(n+5)+n*A103517(n+5))/5)`
-/

namespace A026065.P3835338556170910065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008778 (n + 5) + (n : ℤ) * A103517 (n + 5) : ℚ) / 5⌋

end

end A026065.P3835338556170910065

namespace A026065

/-- `floor((A008778(n+5)+n*A103517(n+5))/5)` -/
def P3835338556170910065.Spec : Prop :=
  ∀ n, P3835338556170910065.a n = A026065 (n + 6)

end A026065

/-! ## A026065.P8270099495240481736

`floor((A000567(n+5)+A000292(n+11)-A000567(n+10))/5)`
-/

namespace A026065.P8270099495240481736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000567 (n + 5) + (A000292 (n + 11) - A000567 (n + 10)) : ℚ) / 5⌋

end

end A026065.P8270099495240481736

namespace A026065

/-- `floor((A000567(n+5)+A000292(n+11)-A000567(n+10))/5)` -/
def P8270099495240481736.Spec : Prop :=
  ∀ n, P8270099495240481736.a n = A026065 (n + 6)

end A026065

/-! ## A026065.P17990295330900122132

`floor((A000125(n)+Δ[A002717(2*n+5)])/5)`
-/

namespace A026065.P17990295330900122132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002717 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000125 n + (f1 (n + 1) - f1 n) : ℚ) / 5⌋

end

end A026065.P17990295330900122132

namespace A026065

/-- `floor((A000125(n)+Δ[A002717(2*n+5)])/5)` -/
def P17990295330900122132.Spec : Prop :=
  ∀ n, P17990295330900122132.a n = A026065 (n + 6)

end A026065

/-! ## A026065.P5416487982093734589

`floor((A000326(A020742(n))+A000125(n))/5)`
-/

namespace A026065.P5416487982093734589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000326 (A020742 n).toNat + A000125 n : ℚ) / 5⌋

end

end A026065.P5416487982093734589

namespace A026065

/-- `floor((A000326(A020742(n))+A000125(n))/5)` -/
def P5416487982093734589.Spec : Prop :=
  ∀ n, P5416487982093734589.a n = A026065 (n + 6)

end A026065

/-!
# A026066: dot_product(n,n-1,...2,1)*(7,8,...,n,1,2,3,4,5,6).

The programs for A026066, the canonical program `A026066.P7842493468543289968` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026066 has offset 7).

The definition of A026066 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026066.P7842493468543289968

`(n+7)*((n+7)²+21*(n+7)-106)/6`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026066

/-- `(n+7)*((n+7)²+21*(n+7)-106)/6` -/
def P7842493468543289968.Spec : Prop :=
  ∀ n, P7842493468543289968.a n = (A026066 (n + 7) : ℚ)

end A026066

/-! ## A026066.P7514555993014890179

`Δ[A005338(n+11)-A002061(n)]`
-/

namespace A026066.P7514555993014890179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005338 (n + 11) - A002061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026066.P7514555993014890179

namespace A026066

/-- `Δ[A005338(n+11)-A002061(n)]` -/
def P7514555993014890179.Spec : Prop :=
  ∀ n, P7514555993014890179.a n = A026066 (n + 7)

end A026066

/-! ## A026066.P12888286900863484127

`A280344(n+4)+∑[A000217(n+5)]`
-/

namespace A026066.P12888286900863484127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280344 (n + 4) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026066.P12888286900863484127

namespace A026066

/-- `A280344(n+4)+∑[A000217(n+5)]` -/
def P12888286900863484127.Spec : Prop :=
  ∀ n, P12888286900863484127.a n = A026066 (n + 7)

end A026066

/-! ## A026066.P11256156930569917787

`A002939(n+5)+∑[A000217(n+5)]`
-/

namespace A026066.P11256156930569917787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002939 (n + 5) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026066.P11256156930569917787

namespace A026066

/-- `A002939(n+5)+∑[A000217(n+5)]` -/
def P11256156930569917787.Spec : Prop :=
  ∀ n, P11256156930569917787.a n = A026066 (n + 7)

end A026066

/-! ## A026066.P13072159845365533298

`A045944(n+5)+∑[A155212(n+3)]`
-/

namespace A026066.P13072159845365533298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155212 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045944 (n + 5) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026066.P13072159845365533298

namespace A026066

/-- `A045944(n+5)+∑[A155212(n+3)]` -/
def P13072159845365533298.Spec : Prop :=
  ∀ n, P13072159845365533298.a n = A026066 (n + 7)

end A026066

/-! ## A026066.P16271840096817632473

`A002939(n+5)+∑[A161680(n+6)]`
-/

namespace A026066.P16271840096817632473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002939 (n + 5) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026066.P16271840096817632473

namespace A026066

/-- `A002939(n+5)+∑[A161680(n+6)]` -/
def P16271840096817632473.Spec : Prop :=
  ∀ n, P16271840096817632473.a n = A026066 (n + 7)

end A026066

/-! ## A026066.P15442419379938888612

`A140681(n+1)+A000292(n+7)`
-/

namespace A026066.P15442419379938888612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140681 (n + 1) + A000292 (n + 7)

end

end A026066.P15442419379938888612

namespace A026066

/-- `A140681(n+1)+A000292(n+7)` -/
def P15442419379938888612.Spec : Prop :=
  ∀ n, P15442419379938888612.a n = A026066 (n + 7)

end A026066

/-! ## A026066.P8090978197360694866

`A000292(n+5)+A103517(n+6)*A144396(n+2)`
-/

namespace A026066.P8090978197360694866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 5) + A103517 (n + 6) * A144396 (n + 2)

end

end A026066.P8090978197360694866

namespace A026066

/-- `A000292(n+5)+A103517(n+6)*A144396(n+2)` -/
def P8090978197360694866.Spec : Prop :=
  ∀ n, P8090978197360694866.a n = A026066 (n + 7)

end A026066

/-! ## A026066.P3589529082454211399

`A101860(n+4)-(A055998(n+4)+A055998(n+8))`
-/

namespace A026066.P3589529082454211399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101860 (n + 4) - (A055998 (n + 4) + A055998 (n + 8))

end

end A026066.P3589529082454211399

namespace A026066

/-- `A101860(n+4)-(A055998(n+4)+A055998(n+8))` -/
def P3589529082454211399.Spec : Prop :=
  ∀ n, P3589529082454211399.a n = A026066 (n + 7)

end A026066

/-! ## A026066.P9785166050767710260

`A002411(n+9)-A000292(n+1)-A000125(n+12)`
-/

namespace A026066.P9785166050767710260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (n + 9) - A000292 (n + 1) - A000125 (n + 12)

end

end A026066.P9785166050767710260

namespace A026066

/-- `A002411(n+9)-A000292(n+1)-A000125(n+12)` -/
def P9785166050767710260.Spec : Prop :=
  ∀ n, P9785166050767710260.a n = A026066 (n + 7)

end A026066

/-!
# A026067: a(n) = (d(n)-r(n))/2, where d = A026066 and r is the periodic sequence with fundamental period (1,0,0,0).

The programs for A026067, the canonical program `A026067.P2521458623972543366` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026067 has offset 7).

The definition of A026067 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026067.P2521458623972543366

`floor(A026066(n+7)/2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026067

/-- `floor(A026066(n+7)/2)` -/
def P2521458623972543366.Spec : Prop :=
  ∀ n, P2521458623972543366.a n = A026067 (n + 7)

theorem P2521458623972543366.correct : P2521458623972543366.Spec := by
  intro n
  simp only [A026067, Nat.add_sub_cancel]

end A026067

/-! ## A026067.P3258007207800707312

`(A026066(n+7)-A121262(n))/2`
-/

namespace A026067.P3258007207800707312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026066 (n + 7) - A121262 n : ℚ) / 2

end

end A026067.P3258007207800707312

namespace A026067

/-- `(A026066(n+7)-A121262(n))/2` -/
def P3258007207800707312.Spec : Prop :=
  ∀ n, P3258007207800707312.a n = (A026067 (n + 7) : ℚ)

end A026067

/-! ## A026067.P1029044945216308805

`(A026066(n+7)-A059841(A088440(n)))/2`
-/

namespace A026067.P1029044945216308805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026066 (n + 7) - A059841 (A088440 n).toNat : ℚ) / 2

end

end A026067.P1029044945216308805

namespace A026067

/-- `(A026066(n+7)-A059841(A088440(n)))/2` -/
def P1029044945216308805.Spec : Prop :=
  ∀ n, P1029044945216308805.a n = (A026067 (n + 7) : ℚ)

end A026067

/-! ## A026067.P17710395922311607253

`xor(A026066(n+7), A121262(n))/2%A017114(n)`
-/

namespace A026067.P17710395922311607253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (A026066 (n + 7)) (A121262 n) : ℚ) / (Int.tmod 2 (A017114 n) : ℚ)

end

end A026067.P17710395922311607253

namespace A026067

/-- `xor(A026066(n+7), A121262(n))/2%A017114(n)` -/
def P17710395922311607253.Spec : Prop :=
  ∀ n, P17710395922311607253.a n = (A026067 (n + 7) : ℚ)

end A026067

/-! ## A026067.P1455859106113636534

`xor(A026066(n+7), A121262(n))/(A153881(n+2)+3)`
-/

namespace A026067.P1455859106113636534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (A026066 (n + 7)) (A121262 n) : ℚ) / (A153881 (n + 2) + 3 : ℚ)

end

end A026067.P1455859106113636534

namespace A026067

/-- `xor(A026066(n+7), A121262(n))/(A153881(n+2)+3)` -/
def P1455859106113636534.Spec : Prop :=
  ∀ n, P1455859106113636534.a n = (A026067 (n + 7) : ℚ)

end A026067

/-! ## A026067.P13429134672523003709

`(n+2)/A163300(n+2)*xor(A026066(n+7), A121262(n))`
-/

namespace A026067.P13429134672523003709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A163300 (n + 2) : ℚ) * (Int.xor (A026066 (n + 7)) (A121262 n) : ℚ)

end

end A026067.P13429134672523003709

namespace A026067

/-- `(n+2)/A163300(n+2)*xor(A026066(n+7), A121262(n))` -/
def P13429134672523003709.Spec : Prop :=
  ∀ n, P13429134672523003709.a n = (A026067 (n + 7) : ℚ)

end A026067

/-! ## A026067.P5180254841098292200

`A000027(xor(A026066(n+7), A121262(n))/2)`
-/

namespace A026067.P5180254841098292200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((Int.xor (A026066 (n + 7)) (A121262 n) : ℚ) / 2)).toNat

end

end A026067.P5180254841098292200

namespace A026067

/-- `A000027(xor(A026066(n+7), A121262(n))/2)` -/
def P5180254841098292200.Spec : Prop :=
  ∀ n, P5180254841098292200.a n = A026067 (n + 7)

end A026067

/-! ## A026067.P15412322944056756632

`xor(A026066(n+7), A121262(n))/A000122((n+1)²)`
-/

namespace A026067.P15412322944056756632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (A026066 (n + 7)) (A121262 n) : ℚ) / (A000122 ((n + 1) ^ 2) : ℚ)

end

end A026067.P15412322944056756632

namespace A026067

/-- `xor(A026066(n+7), A121262(n))/A000122((n+1)²)` -/
def P15412322944056756632.Spec : Prop :=
  ∀ n, P15412322944056756632.a n = (A026067 (n + 7) : ℚ)

end A026067

/-! ## A026067.P14519743366328009635

`A014682(A026066(n+7)-A121262(n))`
-/

namespace A026067.P14519743366328009635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A026066 (n + 7) - A121262 n).toNat

end

end A026067.P14519743366328009635

namespace A026067

/-- `A014682(A026066(n+7)-A121262(n))` -/
def P14519743366328009635.Spec : Prop :=
  ∀ n, P14519743366328009635.a n = A026067 (n + 7)

end A026067

/-! ## A026067.P2973622299703826246

`A014682(xor(A026066(n+7), A121262(n)))`
-/

namespace A026067.P2973622299703826246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.xor (A026066 (n + 7)) (A121262 n)).toNat

end

end A026067.P2973622299703826246

namespace A026067

/-- `A014682(xor(A026066(n+7), A121262(n)))` -/
def P2973622299703826246.Spec : Prop :=
  ∀ n, P2973622299703826246.a n = A026067 (n + 7)

end A026067

/-!
# A026068: (d(n)-r(n))/5, where d = A026066 and r is the periodic sequence with fundamental period (0,3,1,0,1).

The programs for A026068, the canonical program `A026068.P16330150294977039298` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026068 has offset 7).

The definition of A026068 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026068.P16330150294977039298

`floor(A026066(n+7)/5)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026068

/-- `floor(A026066(n+7)/5)` -/
def P16330150294977039298.Spec : Prop :=
  ∀ n, P16330150294977039298.a n = A026068 (n + 7)

theorem P16330150294977039298.correct : P16330150294977039298.Spec := by
  intro n
  simp only [A026068, Nat.add_sub_cancel]

end A026068

/-! ## A026068.P17550283694230303177

`(A026066(n+7)-A152892(n))/5`
-/

namespace A026068.P17550283694230303177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026066 (n + 7) - A152892 n : ℚ) / 5

end

end A026068.P17550283694230303177

namespace A026068

/-- `(A026066(n+7)-A152892(n))/5` -/
def P17550283694230303177.Spec : Prop :=
  ∀ n, P17550283694230303177.a n = (A026068 (n + 7) : ℚ)

end A026068

/-! ## A026068.P4991275166830905950

`floor((A280344(n+4)+∑[A000217(n+5)])/5)`
-/

namespace A026068.P4991275166830905950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A280344 (n + 4) + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 5⌋

end

end A026068.P4991275166830905950

namespace A026068

/-- `floor((A280344(n+4)+∑[A000217(n+5)])/5)` -/
def P4991275166830905950.Spec : Prop :=
  ∀ n, P4991275166830905950.a n = A026068 (n + 7)

end A026068

/-! ## A026068.P8045530106140254680

`floor((A002939(n+5)+∑[A000217(n+5)])/5)`
-/

namespace A026068.P8045530106140254680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A002939 (n + 5) + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 5⌋

end

end A026068.P8045530106140254680

namespace A026068

/-- `floor((A002939(n+5)+∑[A000217(n+5)])/5)` -/
def P8045530106140254680.Spec : Prop :=
  ∀ n, P8045530106140254680.a n = A026068 (n + 7)

end A026068

/-! ## A026068.P916799210979353242

`floor((A045944(n+5)+∑[A155212(n+3)])/5)`
-/

namespace A026068.P916799210979353242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155212 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A045944 (n + 5) + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 5⌋

end

end A026068.P916799210979353242

namespace A026068

/-- `floor((A045944(n+5)+∑[A155212(n+3)])/5)` -/
def P916799210979353242.Spec : Prop :=
  ∀ n, P916799210979353242.a n = A026068 (n + 7)

end A026068

/-! ## A026068.P3363344304879542808

`floor((A002939(n+5)+∑[A161680(n+6)])/5)`
-/

namespace A026068.P3363344304879542808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A002939 (n + 5) + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 5⌋

end

end A026068.P3363344304879542808

namespace A026068

/-- `floor((A002939(n+5)+∑[A161680(n+6)])/5)` -/
def P3363344304879542808.Spec : Prop :=
  ∀ n, P3363344304879542808.a n = A026068 (n + 7)

end A026068

/-! ## A026068.P15804476595206540904

`floor((A140681(n+1)+A000292(n+7))/5)`
-/

namespace A026068.P15804476595206540904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A140681 (n + 1) + A000292 (n + 7) : ℚ) / 5⌋

end

end A026068.P15804476595206540904

namespace A026068

/-- `floor((A140681(n+1)+A000292(n+7))/5)` -/
def P15804476595206540904.Spec : Prop :=
  ∀ n, P15804476595206540904.a n = A026068 (n + 7)

end A026068

/-! ## A026068.P17373281802310869059

`floor((A000292(n+5)+A103517(n+6)*A144396(n+2))/5)`
-/

namespace A026068.P17373281802310869059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000292 (n + 5) + A103517 (n + 6) * A144396 (n + 2) : ℚ) / 5⌋

end

end A026068.P17373281802310869059

namespace A026068

/-- `floor((A000292(n+5)+A103517(n+6)*A144396(n+2))/5)` -/
def P17373281802310869059.Spec : Prop :=
  ∀ n, P17373281802310869059.a n = A026068 (n + 7)

end A026068

/-! ## A026068.P9560646479794858776

`floor(A094415(A055999(n+4))/5)`
-/

namespace A026068.P9560646479794858776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A094415 (A055999 (n + 4)).toNat : ℚ) / 5⌋

end

end A026068.P9560646479794858776

namespace A026068

/-- `floor(A094415(A055999(n+4))/5)` -/
def P9560646479794858776.Spec : Prop :=
  ∀ n, P9560646479794858776.a n = A026068 (n + 7)

end A026068

/-!
# A026069: a(n) = number of (s(0), s(1), ..., s(n)) such that every s(i) is an integer, s(0) = 0, |s(i) - s(i-1)| = 1 for i = 1,2; |s(i) - s(i-1)| <= 1 for i >= 3, s(n) = 2. Also a(n) = T(n,n-2), where T is the array defined in A024996.

The programs for A026069, the canonical program `A026069.P1783520596391731527` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026069 has offset 3).

The definition of A026069 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026069.P1783520596391731527

`Δ[A025180(n+2)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A026069

/-- `Δ[A025180(n+2)]` -/
def P1783520596391731527.Spec : Prop :=
  ∀ n, P1783520596391731527.a n = A026069 (n + 3)

theorem P1783520596391731527.correct : P1783520596391731527.Spec := by
  intro n
  simp only [A026069, Nat.add_sub_cancel]

end A026069

/-! ## A026069.P3457907394078655402

`A026085(n+3)+a(n-1)` with `a(0)=1`
-/

namespace A026069.P3457907394078655402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026085 (n + 3) + a (n - 1)

end

end A026069.P3457907394078655402

namespace A026069

/-- `A026085(n+3)+a(n-1)` -/
def P3457907394078655402.Spec : Prop :=
  ∀ n, P3457907394078655402.a n = A026069 (n + 3)

end A026069

/-! ## A026069.P9029083420159949477

`A025180(n+3)-A025180(n+2)`
-/

namespace A026069.P9029083420159949477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025180 (n + 3) - A025180 (n + 2)

end

end A026069.P9029083420159949477

namespace A026069

/-- `A025180(n+3)-A025180(n+2)` -/
def P9029083420159949477.Spec : Prop :=
  ∀ n, P9029083420159949477.a n = A026069 (n + 3)

theorem P9029083420159949477.correct : P9029083420159949477.Spec := by
  intro n
  simp only [A026069, Nat.add_sub_cancel, A026069.P9029083420159949477.a, A026069.P1783520596391731527.f1, A026069.P1783520596391731527.a, SequenceMachineLib.memo_apply]

end A026069

/-! ## A026069.P14425088917216059695

`A024997(n+3)-A026107(n+2)`
-/

namespace A026069.P14425088917216059695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024997 (n + 3) - A026107 (n + 2)

end

end A026069.P14425088917216059695

namespace A026069

/-- `A024997(n+3)-A026107(n+2)` -/
def P14425088917216059695.Spec : Prop :=
  ∀ n, P14425088917216059695.a n = A026069 (n + 3)

end A026069

/-! ## A026069.P16841295494125476464

`Δ[Δ[A026165(n)-A002426(n)]]`
-/

namespace A026069.P16841295494125476464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026165 n - A002426 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026069.P16841295494125476464

namespace A026069

/-- `Δ[Δ[A026165(n)-A002426(n)]]` -/
def P16841295494125476464.Spec : Prop :=
  ∀ n, P16841295494125476464.a n = A026069 (n + 3)

end A026069

/-! ## A026069.P5383265976359777720

`A026084(n+4)-A024997(n+3)`
-/

namespace A026069.P5383265976359777720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026084 (n + 4) - A024997 (n + 3)

end

end A026069.P5383265976359777720

namespace A026069

/-- `A026084(n+4)-A024997(n+3)` -/
def P5383265976359777720.Spec : Prop :=
  ∀ n, P5383265976359777720.a n = A026069 (n + 3)

end A026069

/-! ## A026069.P2918072646168802162

`Δ[A024998(n+3)]-A024997(n+3)`
-/

namespace A026069.P2918072646168802162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024998 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A024997 (n + 3)

end

end A026069.P2918072646168802162

namespace A026069

/-- `Δ[A024998(n+3)]-A024997(n+3)` -/
def P2918072646168802162.Spec : Prop :=
  ∀ n, P2918072646168802162.a n = A026069 (n + 3)

end A026069

/-! ## A026069.P375584519486805544

`Δ[Δ[A025179(n+2)]]-A024997(n+3)`
-/

namespace A026069.P375584519486805544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025179 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A024997 (n + 3)

end

end A026069.P375584519486805544

namespace A026069

/-- `Δ[Δ[A025179(n+2)]]-A024997(n+3)` -/
def P375584519486805544.Spec : Prop :=
  ∀ n, P375584519486805544.a n = A026069 (n + 3)

end A026069

/-! ## A026069.P2078311907589992232

`Δ[2*A014531(n+1)-A025567(n+1)]`
-/

namespace A026069.P2078311907589992232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014531 (n + 1) - A025567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026069.P2078311907589992232

namespace A026069

/-- `Δ[2*A014531(n+1)-A025567(n+1)]` -/
def P2078311907589992232.Spec : Prop :=
  ∀ n, P2078311907589992232.a n = A026069 (n + 3)

end A026069

/-! ## A026069.P707979659922665522

`Δ[record[A026135(n)-A025178(n+1)]]`
-/

namespace A026069.P707979659922665522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026135 n - A025178 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026069.P707979659922665522

namespace A026069

/-- `Δ[record[A026135(n)-A025178(n+1)]]` -/
def P707979659922665522.Spec : Prop :=
  ∀ n, P707979659922665522.a n = A026069 (n + 3)

end A026069

/-! ## A026069.P9112259552589785197

`Δ[Δ[A025567(n+1)-A014531(n+1)]]`
-/

namespace A026069.P9112259552589785197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025567 (n + 1) - A014531 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026069.P9112259552589785197

namespace A026069

/-- `Δ[Δ[A025567(n+1)-A014531(n+1)]]` -/
def P9112259552589785197.Spec : Prop :=
  ∀ n, P9112259552589785197.a n = A026069 (n + 3)

end A026069

/-!
# A026070: a(n) = number of (s(0), s(1), ..., s(n)) such that every s(i) is an integer, s(0) = 0, |s(i) - s(i-1)| = 1 for i = 1,2; |s(i) - s(i-1)| <= 1 for i >= 3, s(n) = 3. Also a(n) = T(n,n-3), where T is the array defined in A024996.

The programs for A026070, the canonical program `A026070.P16071561854489553922` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026070 has offset 3).

The definition of A026070 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026070.P13436640464727780784

`A026086(n+3)+a(n-1)` with `a(0)=1`
-/

namespace A026070.P13436640464727780784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026086 (n + 3) + a (n - 1)

end

end A026070.P13436640464727780784

namespace A026070

/-- `A026086(n+3)+a(n-1)` -/
def P13436640464727780784.Spec : Prop :=
  ∀ n, P13436640464727780784.a n = A026070 (n + 3)

end A026070

/-! ## A026070.P12517919233152690817

`∑[A026086(A028310(n)+3)]`
-/

namespace A026070.P12517919233152690817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026086 (A028310 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026070.P12517919233152690817

namespace A026070

/-- `∑[A026086(A028310(n)+3)]` -/
def P12517919233152690817.Spec : Prop :=
  ∀ n, P12517919233152690817.a n = A026070 (n + 3)

end A026070

/-! ## A026070.P7887838296325754628

`∑[A026086(A123108(2*n)+3)]`
-/

namespace A026070.P7887838296325754628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026086 (A123108 (2 * n) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026070.P7887838296325754628

namespace A026070

/-- `∑[A026086(A123108(2*n)+3)]` -/
def P7887838296325754628.Spec : Prop :=
  ∀ n, P7887838296325754628.a n = A026070 (n + 3)

end A026070

/-! ## A026070.P16071561854489553922

`2*A025180(n+2)-A026134(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A026070

/-- `2*A025180(n+2)-A026134(n+1)` -/
def P16071561854489553922.Spec : Prop :=
  ∀ n, P16071561854489553922.a n = A026070 (n + 3)

theorem P16071561854489553922.correct : P16071561854489553922.Spec := by
  intro n
  simp only [A026070, Nat.add_sub_cancel]

end A026070

/-! ## A026070.P11002808885280044296

`Δ[Δ[Δ[A304011(n+1)]]]`
-/

namespace A026070.P11002808885280044296
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026070.P11002808885280044296

namespace A026070

/-- `Δ[Δ[Δ[A304011(n+1)]]]` -/
def P11002808885280044296.Spec : Prop :=
  ∀ n, P11002808885280044296.a n = A026070 (n + 3)

end A026070

/-! ## A026070.P931411640239908777

`Δ[A026069(n+3)]-A024998(n+3)`
-/

namespace A026070.P931411640239908777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026069 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A024998 (n + 3)

end

end A026070.P931411640239908777

namespace A026070

/-- `Δ[A026069(n+3)]-A024998(n+3)` -/
def P931411640239908777.Spec : Prop :=
  ∀ n, P931411640239908777.a n = A026070 (n + 3)

end A026070

/-! ## A026070.P4145123210530022594

`A026083(n+4)/2-A026122(n+2)`
-/

namespace A026070.P4145123210530022594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026083 (n + 4) : ℚ) / 2 - (A026122 (n + 2) : ℚ)

end

end A026070.P4145123210530022594

namespace A026070

/-- `A026083(n+4)/2-A026122(n+2)` -/
def P4145123210530022594.Spec : Prop :=
  ∀ n, P4145123210530022594.a n = (A026070 (n + 3) : ℚ)

end A026070

/-! ## A026070.P16074205331102061690

`(A026085(n+4)-A026122(n+2))/2`
-/

namespace A026070.P16074205331102061690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026085 (n + 4) - A026122 (n + 2) : ℚ) / 2

end

end A026070.P16074205331102061690

namespace A026070

/-- `(A026085(n+4)-A026122(n+2))/2` -/
def P16074205331102061690.Spec : Prop :=
  ∀ n, P16074205331102061690.a n = (A026070 (n + 3) : ℚ)

end A026070

/-! ## A026070.P1094891068445393325

`A026085(n+4)-A026083(n+4)/2`
-/

namespace A026070.P1094891068445393325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026085 (n + 4) : ℚ) - (A026083 (n + 4) : ℚ) / 2

end

end A026070.P1094891068445393325

namespace A026070

/-- `A026085(n+4)-A026083(n+4)/2` -/
def P1094891068445393325.Spec : Prop :=
  ∀ n, P1094891068445393325.a n = (A026070 (n + 3) : ℚ)

end A026070

/-! ## A026070.P8325393427147242669

`∑[A026086(n+4)]+1-A026086(n+4)`
-/

namespace A026070.P8325393427147242669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026086 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A026086 (n + 4))

end

end A026070.P8325393427147242669

namespace A026070

/-- `∑[A026086(n+4)]+1-A026086(n+4)` -/
def P8325393427147242669.Spec : Prop :=
  ∀ n, P8325393427147242669.a n = A026070 (n + 3)

end A026070

/-! ## A026070.P9555890634335742818

`Δ[A026069(n+3)-A024997(n+3)/2]`
-/

namespace A026070.P9555890634335742818
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026069 (n + 3) : ℚ) - (A024997 (n + 3) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026070.P9555890634335742818

namespace A026070

/-- `Δ[A026069(n+3)-A024997(n+3)/2]` -/
def P9555890634335742818.Spec : Prop :=
  ∀ n, P9555890634335742818.a n = (A026070 (n + 3) : ℚ)

end A026070

/-! ## A026070.P11644062976651075784

`A026083(n+4)/2-Δ[A026107(n+2)]`
-/

namespace A026070.P11644062976651075784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026107 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026083 (n + 4) : ℚ) / 2 - (f1 (n + 1) - f1 n : ℚ)

end

end A026070.P11644062976651075784

namespace A026070

/-- `A026083(n+4)/2-Δ[A026107(n+2)]` -/
def P11644062976651075784.Spec : Prop :=
  ∀ n, P11644062976651075784.a n = (A026070 (n + 3) : ℚ)

end A026070

/-! ## A026070.P3431431217631568310

`A026085(n+4)-Δ[A024997(n+3)/2]`
-/

namespace A026070.P3431431217631568310
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024997 (n + 3) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026085 (n + 4) : ℚ) - (f1 (n + 1) - f1 n)

end

end A026070.P3431431217631568310

namespace A026070

/-- `A026085(n+4)-Δ[A024997(n+3)/2]` -/
def P3431431217631568310.Spec : Prop :=
  ∀ n, P3431431217631568310.a n = (A026070 (n + 3) : ℚ)

end A026070

/-! ## A026070.P6358227843351753031

`A025181(n+4)-(A026086(n+4)+A025181(n+3))`
-/

namespace A026070.P6358227843351753031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025181 (n + 4) - (A026086 (n + 4) + A025181 (n + 3))

end

end A026070.P6358227843351753031

namespace A026070

/-- `A025181(n+4)-(A026086(n+4)+A025181(n+3))` -/
def P6358227843351753031.Spec : Prop :=
  ∀ n, P6358227843351753031.a n = A026070 (n + 3)

end A026070

/-!
# A026071: a(n) = number of (s(0), s(1), ..., s(n)) such that every s(i) is an integer, s(0) = 0, |s(i) - s(i-1)| = 1 for i = 1,2; |s(i) - s(i-1)| <= 1 for i >= 3, s(n) = 4. Also a(n) = T(n,n-4), where T is the array defined in A024996.

The programs for A026071, the canonical program `A026071.P240239828600445417` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026071 has offset 4).

The definition of A026071 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026071.P240239828600445417

`∑[A026087(n+4)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A026071

/-- `∑[A026087(n+4)]` -/
def P240239828600445417.Spec : Prop :=
  ∀ n, P240239828600445417.a n = A026071 (n + 4)

theorem P240239828600445417.correct : P240239828600445417.Spec := by
  intro n
  simp only [A026071, Nat.add_sub_cancel]

end A026071

/-! ## A026071.P14147605267849787928

`2*A025181(n+3)-A026109(n+3)`
-/

namespace A026071.P14147605267849787928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025181 (n + 3) - A026109 (n + 3)

end

end A026071.P14147605267849787928

namespace A026071

/-- `2*A025181(n+3)-A026109(n+3)` -/
def P14147605267849787928.Spec : Prop :=
  ∀ n, P14147605267849787928.a n = A026071 (n + 4)

end A026071

/-! ## A026071.P9614944141797553628

`A025182(n+5)-(A026087(n+5)+A025182(n+4))`
-/

namespace A026071.P9614944141797553628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025182 (n + 5) - (A026087 (n + 5) + A025182 (n + 4))

end

end A026071.P9614944141797553628

namespace A026071

/-- `A025182(n+5)-(A026087(n+5)+A025182(n+4))` -/
def P9614944141797553628.Spec : Prop :=
  ∀ n, P9614944141797553628.a n = A026071 (n + 4)

end A026071

/-! ## A026071.P13633285683994982509

`∑[record[A026082(A028387(n))]]`
-/

namespace A026071.P13633285683994982509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026082 (A028387 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026071.P13633285683994982509

namespace A026071

/-- `∑[record[A026082(A028387(n))]]` -/
def P13633285683994982509.Spec : Prop :=
  ∀ n, P13633285683994982509.a n = A026071 (n + 4)

end A026071

/-! ## A026071.P18139090526721662175

`A024996(A027689(n+4))`
-/

namespace A026071.P18139090526721662175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 (A027689 (n + 4)).toNat

end

end A026071.P18139090526721662175

namespace A026071

/-- `A024996(A027689(n+4))` -/
def P18139090526721662175.Spec : Prop :=
  ∀ n, P18139090526721662175.a n = A026071 (n + 4)

end A026071

/-! ## A026071.P11413152659355563853

`A024996(A028569(n)+16)`
-/

namespace A026071.P11413152659355563853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 (A028569 n + 16).toNat

end

end A026071.P11413152659355563853

namespace A026071

/-- `A024996(A028569(n)+16)` -/
def P11413152659355563853.Spec : Prop :=
  ∀ n, P11413152659355563853.a n = A026071 (n + 4)

end A026071

/-! ## A026071.P17469729272152966971

`record[Δ[A025177(A027689(n))]]`
-/

namespace A026071.P17469729272152966971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025177 (A027689 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026071.P17469729272152966971

namespace A026071

/-- `record[Δ[A025177(A027689(n))]]` -/
def P17469729272152966971.Spec : Prop :=
  ∀ n, P17469729272152966971.a n = A026071 (n + 4)

end A026071

/-!
# A026072: a(n) = T(2n-1,n), where T is the array defined in A024996.

The programs for A026072, there is no canonical definition to state claims against.
-/

/-! ## A026072.P2977815212347998825

`abs(A025183(n+1)-A025184(n))`
-/

namespace A026072.P2977815212347998825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A025183 (n + 1) - A025184 n|

end

end A026072.P2977815212347998825

/-! ## A026072.P16276450905478514979

`record[A024996(A054552(n))]`
-/

namespace A026072.P16276450905478514979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 (A054552 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026072.P16276450905478514979

/-! ## A026072.P6409102314649962149

`record[A024996(abs(A185950(n)))]`
-/

namespace A026072.P6409102314649962149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 |A185950 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026072.P6409102314649962149

/-! ## A026072.P14386216698253472178

`record[A024996(A174114(n+1))]`
-/

namespace A026072.P14386216698253472178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 (A174114 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026072.P14386216698253472178

/-! ## A026072.P8034061444450673748

`A024996(A054552((2^n+1)%2+n))`
-/

namespace A026072.P8034061444450673748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 (A054552 ((2 ^ n + 1) % 2 + n)).toNat

end

end A026072.P8034061444450673748

/-!
# A026073: T(2n,n), where T is the array defined in A024996.

The programs for A026073, there is no canonical definition to state claims against.
-/

/-! ## A026073.P12251583112673035049

`A026078(2*n)`
-/

namespace A026073.P12251583112673035049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026078 (2 * n)

end

end A026073.P12251583112673035049

/-! ## A026073.P15096326864894452108

`record[A026078(and(n, n+1))]`
-/

namespace A026073.P15096326864894452108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026078 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026073.P15096326864894452108

/-! ## A026073.P10727853025192194247

`record[A026078(C(n, xor(1, n))+1)]`
-/

namespace A026073.P10727853025192194247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026078 (Nat.choose n (Nat.xor 1 n) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026073.P10727853025192194247

/-! ## A026073.P7832892884495984832

`record[A026078(A014681(n))]`
-/

namespace A026073.P7832892884495984832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026078 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026073.P7832892884495984832

/-! ## A026073.P18031983194863092128

`record[A026078(A029578(n))]`
-/

namespace A026073.P18031983194863092128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026078 (A029578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026073.P18031983194863092128

/-! ## A026073.P3995059163537509841

`record[A026078(n)/A010684(n)]`
-/

namespace A026073.P3995059163537509841
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026078 n : ℚ) / (A010684 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026073.P3995059163537509841

/-! ## A026073.P7419578536293814307

`record[gcd(A026078(n), A097331(n))]`
-/

namespace A026073.P7419578536293814307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026078 n) (A097331 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026073.P7419578536293814307

/-! ## A026073.P15389468953728232496

`record[A026078(n-A007814(n+1))]`
-/

namespace A026073.P15389468953728232496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026078 ((n : ℤ) - A007814 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026073.P15389468953728232496

/-! ## A026073.P1761444174077095378

`record[A026078(n)/A001511(n+1)]`
-/

namespace A026073.P1761444174077095378
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026078 n : ℚ) / (A001511 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026073.P1761444174077095378

/-! ## A026073.P7810919579283468170

`record[A026078(n)/(A007814(n+1)+1)]`
-/

namespace A026073.P7810919579283468170
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026078 n : ℚ) / (A007814 (n + 1) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026073.P7810919579283468170

/-!
# A026074: a(n) = T(3n,n), where T is the array defined in A024996.

The programs for A026074, there is no canonical definition to state claims against.
-/

/-! ## A026074.P14972700439918499290

`A024996(2*A062725(n))`
-/

namespace A026074.P14972700439918499290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 (2 * A062725 n).toNat

end

end A026074.P14972700439918499290

/-! ## A026074.P8750611797372648926

`A024996(A016766(n)+n)`
-/

namespace A026074.P8750611797372648926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 (A016766 n + (n : ℤ)).toNat

end

end A026074.P8750611797372648926

/-! ## A026074.P13743890481699601850

`A024996(n*A017221(n))`
-/

namespace A026074.P13743890481699601850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 ((n : ℤ) * A017221 n).toNat

end

end A026074.P13743890481699601850

/-! ## A026074.P15539456334299851172

`A024996(A008585(n)²+n)`
-/

namespace A026074.P15539456334299851172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 (A008585 n ^ 2 + (n : ℤ)).toNat

end

end A026074.P15539456334299851172

/-! ## A026074.P4974407302577343713

`A024996(A045945(n)+2*n)`
-/

namespace A026074.P4974407302577343713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 (A045945 n + (2 * n : ℤ)).toNat

end

end A026074.P4974407302577343713

/-!
# A026075: a(n) = T(4n,n), where T is the array defined in A024996.

The programs for A026075, there is no canonical definition to state claims against.
-/

/-! ## A026075.P14074621423413854644

`A024996((4*n)²+n)`
-/

namespace A026075.P14074621423413854644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 ((4 * n) ^ 2 + n)

end

end A026075.P14074621423413854644

/-!
# A026076: a(n) = T(2n,n-1), where T is the array defined in A024996.

The programs for A026076, there is no canonical definition to state claims against.
-/

/-! ## A026076.P13500007853707533868

`A024996(Δ[A051662(n)])`
-/

namespace A026076.P13500007853707533868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 (f1 (n + 1) - f1 n).toNat

end

end A026076.P13500007853707533868

/-! ## A026076.P886425225239379531

`record[A024996(A308217(n))]`
-/

namespace A026076.P886425225239379531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 (A308217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026076.P886425225239379531

/-! ## A026076.P14681117879185078276

`A024996(A033951(n+1))`
-/

namespace A026076.P14681117879185078276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 (A033951 (n + 1)).toNat

end

end A026076.P14681117879185078276

/-! ## A026076.P12311479234459835836

`A024996(A182868(n+1))`
-/

namespace A026076.P12311479234459835836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 (A182868 (n + 1)).toNat

end

end A026076.P12311479234459835836

/-! ## A026076.P252908550046520854

`A024996(A103517(n)²+n)`
-/

namespace A026076.P252908550046520854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 (A103517 n ^ 2 + (n : ℤ)).toNat

end

end A026076.P252908550046520854

/-!
# A026077: a(n) = T(2n,n+1), where T is the array defined in A024996.

The programs for A026077, there is no canonical definition to state claims against.
-/

/-! ## A026077.P5553475311866613277

`A024996(A103517(n)²+n+2)`
-/

namespace A026077.P5553475311866613277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 (A103517 n ^ 2 + (n + 2 : ℤ)).toNat

end

end A026077.P5553475311866613277

/-! ## A026077.P12393494495891816944

`record[A024996(A266883(n)+A257000(n))]`
-/

namespace A026077.P12393494495891816944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 (A266883 n + A257000 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026077.P12393494495891816944

/-! ## A026077.P14164378748372768984

`record[A024996(A266883(n)%A318415(n))]`
-/

namespace A026077.P14164378748372768984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 (Int.tmod (A266883 n) (A318415 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026077.P14164378748372768984

/-!
# A026078: a(n) = T(n,[ n/2 ]), where T is the array defined in A024996.

The programs for A026078, there is no canonical definition to state claims against.
-/

/-! ## A026078.P3701677173203578

`A024996(A035608(n)+char[2])`
-/

namespace A026078.P3701677173203578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 (A035608 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A026078.P3701677173203578

/-! ## A026078.P11648899441802748396

`A024996(A074378(n)+char[2])`
-/

namespace A026078.P11648899441802748396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 (A074378 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A026078.P11648899441802748396

/-! ## A026078.P1686200003492952392

`A024996(A074377(n)-char[2])`
-/

namespace A026078.P1686200003492952392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 (A074377 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A026078.P1686200003492952392

/-! ## A026078.P13638315746137370917

`A024996(A156859(n)-char[2])`
-/

namespace A026078.P13638315746137370917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 (A156859 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A026078.P13638315746137370917

/-! ## A026078.P17775909944321322806

`A024996(A185012(n)+A074378(n))`
-/

namespace A026078.P17775909944321322806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 (A185012 n + A074378 n).toNat

end

end A026078.P17775909944321322806

/-!
# A026079: a(n) = Sum_{k = 1..n} T(k,k-1), where T is the array defined in A024996.

The programs for A026079, the canonical program `A026079.P17764146189388257009` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026079 has offset 1).

The definition of A026079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026079.P17764146189388257009

`A024998(n+1)+a(n-1)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A026079

/-- `A024998(n+1)+a(n-1)` -/
def P17764146189388257009.Spec : Prop :=
  ∀ n, P17764146189388257009.a n = A026079 (n + 1)

theorem P17764146189388257009.correct : P17764146189388257009.Spec := by
  intro n
  simp only [A026079, Nat.add_sub_cancel]

end A026079

/-! ## A026079.P5252032802898744541

`∑[gcd(A024998(n+1), A130706(n))]`
-/

namespace A026079.P5252032802898744541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A024998 (n + 1)) (A130706 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026079.P5252032802898744541

namespace A026079

/-- `∑[gcd(A024998(n+1), A130706(n))]` -/
def P5252032802898744541.Spec : Prop :=
  ∀ n, (P5252032802898744541.a n : ℤ) = A026079 (n + 1)

end A026079

/-! ## A026079.P3802372939157953510

`A107279(2*n)+∑[A024998(n+1)]`
-/

namespace A026079.P3802372939157953510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026079.P3802372939157953510

namespace A026079

/-- `A107279(2*n)+∑[A024998(n+1)]` -/
def P3802372939157953510.Spec : Prop :=
  ∀ n, P3802372939157953510.a n = A026079 (n + 1)

end A026079

/-! ## A026079.P1663434646364553983

`∑[A024998(n+1)]+2%A007310(n+1)`
-/

namespace A026079.P1663434646364553983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Int.tmod 2 (A007310 (n + 1))

end

end A026079.P1663434646364553983

namespace A026079

/-- `∑[A024998(n+1)]+2%A007310(n+1)` -/
def P1663434646364553983.Spec : Prop :=
  ∀ n, P1663434646364553983.a n = A026079 (n + 1)

end A026079

/-! ## A026079.P4031499212779063156

`Δ[A300576(n+2)+A005213(2*n+1)]`
-/

namespace A026079.P4031499212779063156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300576 (n + 2) + A005213 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026079.P4031499212779063156

namespace A026079

/-- `Δ[A300576(n+2)+A005213(2*n+1)]` -/
def P4031499212779063156.Spec : Prop :=
  ∀ n, P4031499212779063156.a n = A026079 (n + 1)

end A026079

/-! ## A026079.P15539414936055614147

`A134451(2*n)+Δ[A005213(2*n+1)]`
-/

namespace A026079.P15539414936055614147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (2 * n) + (f1 (n + 1) - f1 n)

end

end A026079.P15539414936055614147

namespace A026079

/-- `A134451(2*n)+Δ[A005213(2*n+1)]` -/
def P15539414936055614147.Spec : Prop :=
  ∀ n, P15539414936055614147.a n = A026079 (n + 1)

end A026079

/-!
# A026080: Sum{T(n,k)}, k = 0,1,...,n, where T is the array defined in A024996.

The programs for A026080, there is no canonical definition to state claims against.
-/

/-! ## A026080.P5970382761665837721

`A308627(A351013(n+1))`
-/

namespace A026080.P5970382761665837721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308627 (A351013 (n + 1)).toNat

end

end A026080.P5970382761665837721

/-! ## A026080.P12629666195667000646

`A308627(A097596(n+2))`
-/

namespace A026080.P12629666195667000646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308627 (A097596 (n + 2)).toNat

end

end A026080.P12629666195667000646

/-! ## A026080.P13833196307409636863

`A157271(or(∑[n], A007051(n)))`
-/

namespace A026080.P13833196307409636863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (Int.lor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A007051 n)).toNat

end

end A026080.P13833196307409636863

/-!
# A026082: Irregular triangular array T read by rows: T(n,k) = C(n,k) for k=0..n for n = 0,1,2,3. For n >= 4, T(n,0) = T(n,2n)=1, T(n,1) = T(n,2n-1) = n - 3, T(4,2) = 4, T(4,3) = 3, T(4,4) = 6; T(4,5) = 3, T(4,6)=4; for n >= 5, T(n,k) = T(n-1,k-2) + T(n-1,k-1) + T(n-1,k) for k=2..2n-2.

The programs for A026082, there is no canonical definition to state claims against.
-/

/-! ## A026082.P10412308715266344239

`A249095(∑[A277822(A198436(n+1))])`
-/

namespace A026082.P10412308715266344239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 (A198436 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249095 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A026082.P10412308715266344239

/-!
# A026083: a(n) = number of (s(0), s(1), ..., s(n)) such that every s(i) is an integer, s(0) = 0 = s(n), |s(i) - s(i-1)| = 1 for i = 1,2,3; |s(i) - s(i-1)| <= 1 for i >= 4. Also a(n) = T(n,n), where T is the array defined in A026082.

The programs for A026083, the canonical program `A026083.P13921223689653325237` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026083 has offset 4).

The definition of A026083 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026083.P18141966205715031353

`Δ[A024997(n+3)]`
-/

namespace A026083.P18141966205715031353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024997 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026083.P18141966205715031353

namespace A026083

/-- `Δ[A024997(n+3)]` -/
def P18141966205715031353.Spec : Prop :=
  ∀ n, P18141966205715031353.a n = A026083 (n + 4)

end A026083

/-! ## A026083.P13921223689653325237

`2*A024998(n+3)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A026083

/-- `2*A024998(n+3)` -/
def P13921223689653325237.Spec : Prop :=
  ∀ n, P13921223689653325237.a n = A026083 (n + 4)

theorem P13921223689653325237.correct : P13921223689653325237.Spec := by
  intro n
  simp only [A026083, Nat.add_sub_cancel]

end A026083

/-! ## A026083.P8674701986036513606

`Δ[Δ[A025178(n+2)]]`
-/

namespace A026083.P8674701986036513606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025178 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026083.P8674701986036513606

namespace A026083

/-- `Δ[Δ[A025178(n+2)]]` -/
def P8674701986036513606.Spec : Prop :=
  ∀ n, P8674701986036513606.a n = A026083 (n + 4)

end A026083

/-! ## A026083.P16949955614162237887

`Δ[2*A025179(n+2)]`
-/

namespace A026083.P16949955614162237887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025179 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026083.P16949955614162237887

namespace A026083

/-- `Δ[2*A025179(n+2)]` -/
def P16949955614162237887.Spec : Prop :=
  ∀ n, P16949955614162237887.a n = A026083 (n + 4)

end A026083

/-! ## A026083.P4112594889038319990

`Δ[2*A026079(n+2)]`
-/

namespace A026083.P4112594889038319990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026079 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026083.P4112594889038319990

namespace A026083

/-- `Δ[2*A026079(n+2)]` -/
def P4112594889038319990.Spec : Prop :=
  ∀ n, P4112594889038319990.a n = A026083 (n + 4)

end A026083

/-! ## A026083.P1255790705389956680

`2*(A026095(n+3)-3)`
-/

namespace A026083.P1255790705389956680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A026095 (n + 3) - 3)

end

end A026083.P1255790705389956680

namespace A026083

/-- `2*(A026095(n+3)-3)` -/
def P1255790705389956680.Spec : Prop :=
  ∀ n, P1255790705389956680.a n = A026083 (n + 4)

end A026083

/-! ## A026083.P3707964972852174716

`Δ[Δ[2*A005717(n+1)]]`
-/

namespace A026083.P3707964972852174716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005717 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026083.P3707964972852174716

namespace A026083

/-- `Δ[Δ[2*A005717(n+1)]]` -/
def P3707964972852174716.Spec : Prop :=
  ∀ n, P3707964972852174716.a n = A026083 (n + 4)

end A026083

/-! ## A026083.P5666895220204685724

`Δ[Δ[2*(n+1)*A001006(n)]]`
-/

namespace A026083.P5666895220204685724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A001006 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026083.P5666895220204685724

namespace A026083

/-- `Δ[Δ[2*(n+1)*A001006(n)]]` -/
def P5666895220204685724.Spec : Prop :=
  ∀ n, P5666895220204685724.a n = A026083 (n + 4)

end A026083

/-! ## A026083.P3503932376171901089

`A026122(n+2)+A026085(n+4)`
-/

namespace A026083.P3503932376171901089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026122 (n + 2) + A026085 (n + 4)

end

end A026083.P3503932376171901089

namespace A026083

/-- `A026122(n+2)+A026085(n+4)` -/
def P3503932376171901089.Spec : Prop :=
  ∀ n, P3503932376171901089.a n = A026083 (n + 4)

end A026083

/-! ## A026083.P2685657583505607234

`A024997(n+4)-A024997(n+3)`
-/

namespace A026083.P2685657583505607234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024997 (n + 4) - A024997 (n + 3)

end

end A026083.P2685657583505607234

namespace A026083

/-- `A024997(n+4)-A024997(n+3)` -/
def P2685657583505607234.Spec : Prop :=
  ∀ n, P2685657583505607234.a n = A026083 (n + 4)

end A026083

/-! ## A026083.P11417679354859801973

`Δ[Δ[Δ[A002426(n+1)]]]`
-/

namespace A026083.P11417679354859801973
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026083.P11417679354859801973

namespace A026083

/-- `Δ[Δ[Δ[A002426(n+1)]]]` -/
def P11417679354859801973.Spec : Prop :=
  ∀ n, P11417679354859801973.a n = A026083 (n + 4)

end A026083

/-! ## A026083.P17319509392225824311

`Δ[Δ[Δ[A005213(2*(n+1))]]]`
-/

namespace A026083.P17319509392225824311
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026083.P17319509392225824311

namespace A026083

/-- `Δ[Δ[Δ[A005213(2*(n+1))]]]` -/
def P17319509392225824311.Spec : Prop :=
  ∀ n, P17319509392225824311.a n = A026083 (n + 4)

end A026083

/-! ## A026083.P12069430833965495730

`Δ[A026084(n+4)]-A026085(n+4)`
-/

namespace A026083.P12069430833965495730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026084 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026085 (n + 4)

end

end A026083.P12069430833965495730

namespace A026083

/-- `Δ[A026084(n+4)]-A026085(n+4)` -/
def P12069430833965495730.Spec : Prop :=
  ∀ n, P12069430833965495730.a n = A026083 (n + 4)

end A026083

/-! ## A026083.P10551005254080213693

`A026084(n+5)-(A026085(n+4)+A026084(n+4))`
-/

namespace A026083.P10551005254080213693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026084 (n + 5) - (A026085 (n + 4) + A026084 (n + 4))

end

end A026083.P10551005254080213693

namespace A026083

/-- `A026084(n+5)-(A026085(n+4)+A026084(n+4))` -/
def P10551005254080213693.Spec : Prop :=
  ∀ n, P10551005254080213693.a n = A026083 (n + 4)

end A026083

/-!
# A026084: a(n) = number of (s(0), s(1), ..., s(n)) such that every s(i) is an integer, s(0) = 0, |s(i) - s(i-1)| = 1 for i = 1,2,3; |s(i) - s(i-1)| <= 1 for i >= 4, s(n) = 1. Also a(n) = T(n,n-1), where T is the array defined in A026082.

The programs for A026084, the canonical program `A026084.P6011791853143651677` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026084 has offset 4).

The definition of A026084 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026084.P6011791853143651677

`Δ[A024998(n+3)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A026084

/-- `Δ[A024998(n+3)]` -/
def P6011791853143651677.Spec : Prop :=
  ∀ n, P6011791853143651677.a n = A026084 (n + 4)

theorem P6011791853143651677.correct : P6011791853143651677.Spec := by
  intro n
  simp only [A026084, Nat.add_sub_cancel]

end A026084

/-! ## A026084.P9004516661248118638

`Δ[A026095(n+3)]`
-/

namespace A026084.P9004516661248118638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026095 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026084.P9004516661248118638

namespace A026084

/-- `Δ[A026095(n+3)]` -/
def P9004516661248118638.Spec : Prop :=
  ∀ n, P9004516661248118638.a n = A026084 (n + 4)

end A026084

/-! ## A026084.P6646355670002689776

`Δ[Δ[A025179(n+2)]]`
-/

namespace A026084.P6646355670002689776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025179 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026084.P6646355670002689776

namespace A026084

/-- `Δ[Δ[A025179(n+2)]]` -/
def P6646355670002689776.Spec : Prop :=
  ∀ n, P6646355670002689776.a n = A026084 (n + 4)

end A026084

/-! ## A026084.P12385268106887949736

`Δ[Δ[A026079(n+2)]]`
-/

namespace A026084.P12385268106887949736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026079 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026084.P12385268106887949736

namespace A026084

/-- `Δ[Δ[A026079(n+2)]]` -/
def P12385268106887949736.Spec : Prop :=
  ∀ n, P12385268106887949736.a n = A026084 (n + 4)

end A026084

/-! ## A026084.P8167921692385905620

`A026069(n+3)+A024997(n+3)`
-/

namespace A026084.P8167921692385905620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026069 (n + 3) + A024997 (n + 3)

end

end A026084.P8167921692385905620

namespace A026084

/-- `A026069(n+3)+A024997(n+3)` -/
def P8167921692385905620.Spec : Prop :=
  ∀ n, P8167921692385905620.a n = A026084 (n + 4)

end A026084

/-! ## A026084.P17342939790869267516

`A024998(n+4)-A024998(n+3)`
-/

namespace A026084.P17342939790869267516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024998 (n + 4) - A024998 (n + 3)

end

end A026084.P17342939790869267516

namespace A026084

/-- `A024998(n+4)-A024998(n+3)` -/
def P17342939790869267516.Spec : Prop :=
  ∀ n, P17342939790869267516.a n = A026084 (n + 4)

theorem P17342939790869267516.correct : P17342939790869267516.Spec := by
  intro n
  simp only [A026084, Nat.add_sub_cancel, A026084.P17342939790869267516.a, A026084.P6011791853143651677.f1, A026084.P6011791853143651677.a, SequenceMachineLib.memo_apply]

end A026084

/-! ## A026084.P1032089888750530459

`A026095(n+4)-A026095(n+3)`
-/

namespace A026084.P1032089888750530459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026095 (n + 4) - A026095 (n + 3)

end

end A026084.P1032089888750530459

namespace A026084

/-- `A026095(n+4)-A026095(n+3)` -/
def P1032089888750530459.Spec : Prop :=
  ∀ n, P1032089888750530459.a n = A026084 (n + 4)

end A026084

/-! ## A026084.P6844881989429025509

`A026107(n+2)+2*A026069(n+3)`
-/

namespace A026084.P6844881989429025509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026107 (n + 2) + 2 * A026069 (n + 3)

end

end A026084.P6844881989429025509

namespace A026084

/-- `A026107(n+2)+2*A026069(n+3)` -/
def P6844881989429025509.Spec : Prop :=
  ∀ n, P6844881989429025509.a n = A026084 (n + 4)

end A026084

/-! ## A026084.P12396116392708922384

`2*A024997(n+3)-A026107(n+2)`
-/

namespace A026084.P12396116392708922384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024997 (n + 3) - A026107 (n + 2)

end

end A026084.P12396116392708922384

namespace A026084

/-- `2*A024997(n+3)-A026107(n+2)` -/
def P12396116392708922384.Spec : Prop :=
  ∀ n, P12396116392708922384.a n = A026084 (n + 4)

end A026084

/-! ## A026084.P6471785007973708340

`Δ[A026083(n+4)/2]`
-/

namespace A026084.P6471785007973708340
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026083 (n + 4) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026084.P6471785007973708340

namespace A026084

/-- `Δ[A026083(n+4)/2]` -/
def P6471785007973708340.Spec : Prop :=
  ∀ n, P6471785007973708340.a n = (A026084 (n + 4) : ℚ)

end A026084

/-! ## A026084.P5291058619771894263

`Δ[Δ[Δ[A005717(n+1)]]]`
-/

namespace A026084.P5291058619771894263
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005717 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026084.P5291058619771894263

namespace A026084

/-- `Δ[Δ[Δ[A005717(n+1)]]]` -/
def P5291058619771894263.Spec : Prop :=
  ∀ n, P5291058619771894263.a n = A026084 (n + 4)

end A026084

/-! ## A026084.P14048287783219664492

`Δ[Δ[A024997(n+3)/2]]`
-/

namespace A026084.P14048287783219664492
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024997 (n + 3) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026084.P14048287783219664492

namespace A026084

/-- `Δ[Δ[A024997(n+3)/2]]` -/
def P14048287783219664492.Spec : Prop :=
  ∀ n, P14048287783219664492.a n = (A026084 (n + 4) : ℚ)

end A026084

/-! ## A026084.P12443677180315995235

`Δ[Δ[Δ[A025178(n+2)/2]]]`
-/

namespace A026084.P12443677180315995235
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025178 (n + 2) : ℚ) / 2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026084.P12443677180315995235

namespace A026084

/-- `Δ[Δ[Δ[A025178(n+2)/2]]]` -/
def P12443677180315995235.Spec : Prop :=
  ∀ n, P12443677180315995235.a n = (A026084 (n + 4) : ℚ)

end A026084

/-! ## A026084.P905753168128783454

`Δ[Δ[Δ[(n+1)*A001006(n)]]]`
-/

namespace A026084.P905753168128783454
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001006 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026084.P905753168128783454

namespace A026084

/-- `Δ[Δ[Δ[(n+1)*A001006(n)]]]` -/
def P905753168128783454.Spec : Prop :=
  ∀ n, P905753168128783454.a n = A026084 (n + 4)

end A026084

/-! ## A026084.P6907848637465851064

`Δ[A026085(n+4)]-A026086(n+4)`
-/

namespace A026084.P6907848637465851064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026085 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026086 (n + 4)

end

end A026084.P6907848637465851064

namespace A026084

/-- `Δ[A026085(n+4)]-A026086(n+4)` -/
def P6907848637465851064.Spec : Prop :=
  ∀ n, P6907848637465851064.a n = A026084 (n + 4)

end A026084

/-! ## A026084.P5720903052416878045

`A026085(n+5)-(A026086(n+4)+A026085(n+4))`
-/

namespace A026084.P5720903052416878045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026085 (n + 5) - (A026086 (n + 4) + A026085 (n + 4))

end

end A026084.P5720903052416878045

namespace A026084

/-- `A026085(n+5)-(A026086(n+4)+A026085(n+4))` -/
def P5720903052416878045.Spec : Prop :=
  ∀ n, P5720903052416878045.a n = A026084 (n + 4)

end A026084

/-!
# A026085: a(n) = number of (s(0), s(1), ..., s(n)) such that every s(i) is an integer, s(0) = 0, |s(i) - s(i-1)| = 1 for i = 1,2,3; |s(i) - s(i-1)| <= 1 for i >= 4, s(n) = 2. Also a(n) = T(n,n-2), where T is the array defined in A026082.

The programs for A026085, the canonical program `A026085.P12262307412384960621` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026085 has offset 4).

The definition of A026085 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026085.P12262307412384960621

`Δ[A026069(n+3)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A026085

/-- `Δ[A026069(n+3)]` -/
def P12262307412384960621.Spec : Prop :=
  ∀ n, P12262307412384960621.a n = A026085 (n + 4)

theorem P12262307412384960621.correct : P12262307412384960621.Spec := by
  intro n
  simp only [A026085, Nat.add_sub_cancel]

end A026085

/-! ## A026085.P3452777219773775853

`Δ[Δ[A025180(n+2)]]`
-/

namespace A026085.P3452777219773775853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025180 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026085.P3452777219773775853

namespace A026085

/-- `Δ[Δ[A025180(n+2)]]` -/
def P3452777219773775853.Spec : Prop :=
  ∀ n, P3452777219773775853.a n = A026085 (n + 4)

end A026085

/-! ## A026085.P7215551662711278500

`A026070(n+3)+A024998(n+3)`
-/

namespace A026085.P7215551662711278500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026070 (n + 3) + A024998 (n + 3)

end

end A026085.P7215551662711278500

namespace A026085

/-- `A026070(n+3)+A024998(n+3)` -/
def P7215551662711278500.Spec : Prop :=
  ∀ n, P7215551662711278500.a n = A026085 (n + 4)

end A026085

/-! ## A026085.P17446271117940227765

`A026083(n+4)-A026122(n+2)`
-/

namespace A026085.P17446271117940227765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026083 (n + 4) - A026122 (n + 2)

end

end A026085.P17446271117940227765

namespace A026085

/-- `A026083(n+4)-A026122(n+2)` -/
def P17446271117940227765.Spec : Prop :=
  ∀ n, P17446271117940227765.a n = A026085 (n + 4)

end A026085

/-! ## A026085.P13981013078580474736

`A026069(n+4)-A026069(n+3)`
-/

namespace A026085.P13981013078580474736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026069 (n + 4) - A026069 (n + 3)

end

end A026085.P13981013078580474736

namespace A026085

/-- `A026069(n+4)-A026069(n+3)` -/
def P13981013078580474736.Spec : Prop :=
  ∀ n, P13981013078580474736.a n = A026085 (n + 4)

theorem P13981013078580474736.correct : P13981013078580474736.Spec := by
  intro n
  simp only [A026085, Nat.add_sub_cancel, A026085.P13981013078580474736.a, A026085.P12262307412384960621.f1, A026085.P12262307412384960621.a, SequenceMachineLib.memo_apply]

end A026085

/-! ## A026085.P701356229073133558

`A026083(n+4)-Δ[A026107(n+2)]`
-/

namespace A026085.P701356229073133558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026107 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026083 (n + 4) - (f1 (n + 1) - f1 n)

end

end A026085.P701356229073133558

namespace A026085

/-- `A026083(n+4)-Δ[A026107(n+2)]` -/
def P701356229073133558.Spec : Prop :=
  ∀ n, P701356229073133558.a n = A026085 (n + 4)

end A026085

/-! ## A026085.P708831815244584571

`A026084(n+5)-(A026084(n+4)+A026083(n+4))`
-/

namespace A026085.P708831815244584571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026084 (n + 5) - (A026084 (n + 4) + A026083 (n + 4))

end

end A026085.P708831815244584571

namespace A026085

/-- `A026084(n+5)-(A026084(n+4)+A026083(n+4))` -/
def P708831815244584571.Spec : Prop :=
  ∀ n, P708831815244584571.a n = A026085 (n + 4)

end A026085

/-! ## A026085.P16886523886048313232

`A026086(n+5)-(A026087(n+4)+A026086(n+4))`
-/

namespace A026085.P16886523886048313232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026086 (n + 5) - (A026087 (n + 4) + A026086 (n + 4))

end

end A026085.P16886523886048313232

namespace A026085

/-- `A026086(n+5)-(A026087(n+4)+A026086(n+4))` -/
def P16886523886048313232.Spec : Prop :=
  ∀ n, P16886523886048313232.a n = A026085 (n + 4)

end A026085

/-! ## A026085.P12690301196558365761

`A026082((n+4)²+n+1)`
-/

namespace A026085.P12690301196558365761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026082 ((n + 4) ^ 2 + (n + 1))

end

end A026085.P12690301196558365761

namespace A026085

/-- `A026082((n+4)²+n+1)` -/
def P12690301196558365761.Spec : Prop :=
  ∀ n, P12690301196558365761.a n = A026085 (n + 4)

end A026085

/-! ## A026085.P13856860568372462024

`Δ[A024996((n+3)²+n+1)]`
-/

namespace A026085.P13856860568372462024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 ((n + 3) ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026085.P13856860568372462024

namespace A026085

/-- `Δ[A024996((n+3)²+n+1)]` -/
def P13856860568372462024.Spec : Prop :=
  ∀ n, P13856860568372462024.a n = A026085 (n + 4)

end A026085

/-!
# A026086: Number of (s(0), s(1), ..., s(n)) such that s(0) = 0, |s(i) - s(i-1)| = 1 for i = 1,2,3; |s(i) - s(i-1)| <= 1 for i >= 4, s(n) = 3; also a(n) = T(n,n-3), where T is the array defined in A026082.

The programs for A026086, the canonical program `A026086.P5314015387268716224` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026086 has offset 4).

The definition of A026086 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026086.P5314015387268716224

`Δ[A026070(n+3)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A026086

/-- `Δ[A026070(n+3)]` -/
def P5314015387268716224.Spec : Prop :=
  ∀ n, P5314015387268716224.a n = A026086 (n + 4)

theorem P5314015387268716224.correct : P5314015387268716224.Spec := by
  intro n
  simp only [A026086, Nat.add_sub_cancel]

end A026086

/-! ## A026086.P8589249393831796353

`A026070(n+4)-A026070(n+3)`
-/

namespace A026086.P8589249393831796353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026070 (n + 4) - A026070 (n + 3)

end

end A026086.P8589249393831796353

namespace A026086

/-- `A026070(n+4)-A026070(n+3)` -/
def P8589249393831796353.Spec : Prop :=
  ∀ n, P8589249393831796353.a n = A026086 (n + 4)

theorem P8589249393831796353.correct : P8589249393831796353.Spec := by
  intro n
  simp only [A026086, Nat.add_sub_cancel, A026086.P8589249393831796353.a, A026086.P5314015387268716224.f1, A026086.P5314015387268716224.a, SequenceMachineLib.memo_apply]

end A026086

/-! ## A026086.P17267179785348989510

`A026069(n+3)+A026071(n+4)-A026087(n+4)`
-/

namespace A026086.P17267179785348989510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026069 (n + 3) + (A026071 (n + 4) - A026087 (n + 4))

end

end A026086.P17267179785348989510

namespace A026086

/-- `A026069(n+3)+A026071(n+4)-A026087(n+4)` -/
def P17267179785348989510.Spec : Prop :=
  ∀ n, P17267179785348989510.a n = A026086 (n + 4)

end A026086

/-! ## A026086.P6359334442415443217

`Δ[A026085(n+4)]-A026084(n+4)`
-/

namespace A026086.P6359334442415443217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026085 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026084 (n + 4)

end

end A026086.P6359334442415443217

namespace A026086

/-- `Δ[A026085(n+4)]-A026084(n+4)` -/
def P6359334442415443217.Spec : Prop :=
  ∀ n, P6359334442415443217.a n = A026086 (n + 4)

end A026086

/-! ## A026086.P1647978888615445063

`Δ[A026085(n+4)]-Δ[A024998(n+3)]`
-/

namespace A026086.P1647978888615445063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026085 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024998 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (f2 (n + 1) - f2 n)

end

end A026086.P1647978888615445063

namespace A026086

/-- `Δ[A026085(n+4)]-Δ[A024998(n+3)]` -/
def P1647978888615445063.Spec : Prop :=
  ∀ n, P1647978888615445063.a n = A026086 (n + 4)

end A026086

/-! ## A026086.P15422367655590341642

`A026085(n+5)-(A026085(n+4)+A026084(n+4))`
-/

namespace A026086.P15422367655590341642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026085 (n + 5) - (A026085 (n + 4) + A026084 (n + 4))

end

end A026086.P15422367655590341642

namespace A026086

/-- `A026085(n+5)-(A026085(n+4)+A026084(n+4))` -/
def P15422367655590341642.Spec : Prop :=
  ∀ n, P15422367655590341642.a n = A026086 (n + 4)

end A026086

/-! ## A026086.P16016006144440490892

`Δ[A026085(n+4)]-(A026069(n+3)+A024997(n+3))`
-/

namespace A026086.P16016006144440490892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026085 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A026069 (n + 3) + A024997 (n + 3))

end

end A026086.P16016006144440490892

namespace A026086

/-- `Δ[A026085(n+4)]-(A026069(n+3)+A024997(n+3))` -/
def P16016006144440490892.Spec : Prop :=
  ∀ n, P16016006144440490892.a n = A026086 (n + 4)

end A026086

/-! ## A026086.P3086625905919896163

`A026082((n+4)²+n+2)`
-/

namespace A026086.P3086625905919896163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026082 ((n + 4) ^ 2 + (n + 2))

end

end A026086.P3086625905919896163

namespace A026086

/-- `A026082((n+4)²+n+2)` -/
def P3086625905919896163.Spec : Prop :=
  ∀ n, P3086625905919896163.a n = A026086 (n + 4)

end A026086

/-! ## A026086.P16411703284853298255

`Δ[A024996((n+3)²+n)]`
-/

namespace A026086.P16411703284853298255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 ((n + 3) ^ 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026086.P16411703284853298255

namespace A026086

/-- `Δ[A024996((n+3)²+n)]` -/
def P16411703284853298255.Spec : Prop :=
  ∀ n, P16411703284853298255.a n = A026086 (n + 4)

end A026086

/-! ## A026086.P12539428550088360596

`Δ[record[A024996(A027688(n))]]`
-/

namespace A026086.P12539428550088360596
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 (A027688 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026086.P12539428550088360596

namespace A026086

/-- `Δ[record[A024996(A027688(n))]]` -/
def P12539428550088360596.Spec : Prop :=
  ∀ n, P12539428550088360596.a n = A026086 (n + 4)

end A026086

/-!
# A026087: a(n) = number of (s(0), s(1), ..., s(n)) such that every s(i) is an integer, s(0) = 0, |s(i) - s(i-1)| = 1 for i = 1,2,3; |s(i) - s(i-1)| <= 1 for i >= 4, s(n) = 4. Also a(n) = T(n,n-4), where T is the array defined in A026082.

The programs for A026087, the canonical program `A026087.P2933839439661880285` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026087 has offset 4).

The definition of A026087 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026087.P2933839439661880285

`Δ[A026086(n+4)]-A026085(n+4)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A026087

/-- `Δ[A026086(n+4)]-A026085(n+4)` -/
def P2933839439661880285.Spec : Prop :=
  ∀ n, P2933839439661880285.a n = A026087 (n + 4)

theorem P2933839439661880285.correct : P2933839439661880285.Spec := by
  intro n
  simp only [A026087, Nat.add_sub_cancel]

end A026087

/-! ## A026087.P17427989206962549314

`A026086(n+5)-(A026086(n+4)+A026085(n+4))`
-/

namespace A026087.P17427989206962549314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026086 (n + 5) - (A026086 (n + 4) + A026085 (n + 4))

end

end A026087.P17427989206962549314

namespace A026087

/-- `A026086(n+5)-(A026086(n+4)+A026085(n+4))` -/
def P17427989206962549314.Spec : Prop :=
  ∀ n, P17427989206962549314.a n = A026087 (n + 4)

theorem P17427989206962549314.correct : P17427989206962549314.Spec := by
  intro n
  simp only [A026087, Nat.add_sub_cancel, A026087.P17427989206962549314.a, A026087.P2933839439661880285.f1, A026087.P2933839439661880285.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A026087

/-! ## A026087.P8979853860998185521

`record[A026082(A028387(n))]`
-/

namespace A026087.P8979853860998185521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026082 (A028387 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026087.P8979853860998185521

namespace A026087

/-- `record[A026082(A028387(n))]` -/
def P8979853860998185521.Spec : Prop :=
  ∀ n, P8979853860998185521.a n = A026087 (n + 4)

end A026087

/-! ## A026087.P14256427917163602324

`A026082(A028387(n+3))`
-/

namespace A026087.P14256427917163602324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026082 (A028387 (n + 3)).toNat

end

end A026087.P14256427917163602324

namespace A026087

/-- `A026082(A028387(n+3))` -/
def P14256427917163602324.Spec : Prop :=
  ∀ n, P14256427917163602324.a n = A026087 (n + 4)

end A026087

/-! ## A026087.P2897655353118603061

`A026082(A028569(n)+11)`
-/

namespace A026087.P2897655353118603061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026082 (A028569 n + 11).toNat

end

end A026087.P2897655353118603061

namespace A026087

/-- `A026082(A028569(n)+11)` -/
def P2897655353118603061.Spec : Prop :=
  ∀ n, P2897655353118603061.a n = A026087 (n + 4)

end A026087

/-! ## A026087.P7041788663989164888

`record[A026082(sqrt(A062938(n)))]`
-/

namespace A026087.P7041788663989164888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026082 (SequenceMachineLib.roundAway (Real.sqrt (A062938 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026087.P7041788663989164888

namespace A026087

/-- `record[A026082(sqrt(A062938(n)))]` -/
def P7041788663989164888.Spec : Prop :=
  ∀ n, P7041788663989164888.a n = A026087 (n + 4)

end A026087

/-! ## A026087.P2615171919781160578

`A026082(A108195(n+2)-2)`
-/

namespace A026087.P2615171919781160578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026082 (A108195 (n + 2) - 2).toNat

end

end A026087.P2615171919781160578

namespace A026087

/-- `A026082(A108195(n+2)-2)` -/
def P2615171919781160578.Spec : Prop :=
  ∀ n, P2615171919781160578.a n = A026087 (n + 4)

end A026087

/-! ## A026087.P11799142531779213091

`record[A026082(A000096(n)+∑[n+1])]`
-/

namespace A026087.P11799142531779213091
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026082 (A000096 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026087.P11799142531779213091

namespace A026087

/-- `record[A026082(A000096(n)+∑[n+1])]` -/
def P11799142531779213091.Spec : Prop :=
  ∀ n, P11799142531779213091.a n = A026087 (n + 4)

end A026087

/-! ## A026087.P17360500470896726550

`record[Δ[A024996(A027689(n))]]`
-/

namespace A026087.P17360500470896726550
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 (A027689 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026087.P17360500470896726550

namespace A026087

/-- `record[Δ[A024996(A027689(n))]]` -/
def P17360500470896726550.Spec : Prop :=
  ∀ n, P17360500470896726550.a n = A026087 (n + 4)

end A026087

/-! ## A026087.P4130070166320756165

`record[Δ[A024996(A027688(n)+1)]]`
-/

namespace A026087.P4130070166320756165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 (A027688 n + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026087.P4130070166320756165

namespace A026087

/-- `record[Δ[A024996(A027688(n)+1)]]` -/
def P4130070166320756165.Spec : Prop :=
  ∀ n, P4130070166320756165.a n = A026087 (n + 4)

end A026087

/-!
# A026088: a(n) = T(2n-1,n), where T is the array defined in A026082.

The programs for A026088, there is no canonical definition to state claims against.
-/

/-! ## A026088.P15675135343153802985

`A026072(n+1)-A026073(n)%A026076(n+1)`
-/

namespace A026088.P15675135343153802985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026072 (n + 1) - Int.tmod (A026073 n) (A026076 (n + 1))

end

end A026088.P15675135343153802985

/-! ## A026088.P17243800388181783922

`A026072(n+1)-A026073(n)%A026074(n)`
-/

namespace A026088.P17243800388181783922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026072 (n + 1) - Int.tmod (A026073 n) (A026074 n)

end

end A026088.P17243800388181783922

/-!
# A026089: a(n) = T(2n,n), where T is the array defined in A026082.

The programs for A026089, there is no canonical definition to state claims against.
-/

/-! ## A026089.P12653815698571343223

`A026094(2*n)`
-/

namespace A026089.P12653815698571343223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026094 (2 * n)

end

end A026089.P12653815698571343223

/-! ## A026089.P7262201798637666361

`record[A026094(and(n, n+1))]`
-/

namespace A026089.P7262201798637666361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026094 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026089.P7262201798637666361

/-! ## A026089.P17303963227709264969

`record[A026094(A014681(n))]`
-/

namespace A026089.P17303963227709264969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026094 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026089.P17303963227709264969

/-! ## A026089.P9964091785400602504

`record[A026094(A029578(n))]`
-/

namespace A026089.P9964091785400602504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026094 (A029578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026089.P9964091785400602504

/-! ## A026089.P15901758435032334409

`record[A026094(A093178(n)-1)]`
-/

namespace A026089.P15901758435032334409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026094 (A093178 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026089.P15901758435032334409

/-! ## A026089.P17832418904803717374

`record[A026094(n)/A000034(n)]`
-/

namespace A026089.P17832418904803717374
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026094 n : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026089.P17832418904803717374

/-! ## A026089.P4288730133682692656

`record[A026094(n)/A010684(n)]`
-/

namespace A026089.P4288730133682692656
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026094 n : ℚ) / (A010684 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026089.P4288730133682692656

/-! ## A026089.P12896034688062054915

`record[A026094(n)/A033999(n)]`
-/

namespace A026089.P12896034688062054915
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026094 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026089.P12896034688062054915

/-! ## A026089.P9392070800255248375

`record[A026094(n/A093178(n))]`
-/

namespace A026089.P9392070800255248375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026094 (SequenceMachineLib.roundAway ((n : ℚ) / (A093178 n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026089.P9392070800255248375

/-! ## A026089.P7344298762255580455

`record[A026094(n)/A001511(n+1)]`
-/

namespace A026089.P7344298762255580455
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026094 n : ℚ) / (A001511 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026089.P7344298762255580455

/-! ## A026089.P1933661143539354535

`record[A026094(n)/A115364(n+1)]`
-/

namespace A026089.P1933661143539354535
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026094 n : ℚ) / (A115364 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026089.P1933661143539354535

/-! ## A026089.P15901599759832816074

`record[gcd(A007814(n+1), A026094(n))]`
-/

namespace A026089.P15901599759832816074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (n + 1)) (A026094 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026089.P15901599759832816074

/-! ## A026089.P12928166847316632795

`record[A026094(A002262(n)+A002262(n))]`
-/

namespace A026089.P12928166847316632795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026094 (A002262 n + A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026089.P12928166847316632795

/-!
# A026090: a(n) = T(3n,n), where T is the array defined in A026082.

The programs for A026090, there is no canonical definition to state claims against.
-/

/-! ## A026090.P11001955060233318721

`A104219(n+2)+A047217(A364437(n))`
-/

namespace A026090.P11001955060233318721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (n + 2) + A047217 (A364437 n).toNat

end

end A026090.P11001955060233318721

/-!
# A026091: a(n) = T(4n,n), where T is the array defined in A026082.

The programs for A026091, there is no canonical definition to state claims against.
-/

/-! ## A026091.P11993063649682178570

`A049820(A212072(n))+A000607(n)`
-/

namespace A026091.P11993063649682178570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (A212072 n).toNat + A000607 n

end

end A026091.P11993063649682178570

/-!
# A026092: a(n) = T(2n,n-1), where T is the array defined in A026082.

The programs for A026092, there is no canonical definition to state claims against.
-/

/-! ## A026092.P12877821285856674701

`A026082(Δ[A322594(n)]-(n+1))`
-/

namespace A026092.P12877821285856674701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026082 (f1 (n + 1) - f1 n - (n + 1 : ℤ)).toNat

end

end A026092.P12877821285856674701

/-! ## A026092.P4111299452125144748

`A026082(A014209(2*n+1)+n)`
-/

namespace A026092.P4111299452125144748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026082 (A014209 (2 * n + 1) + (n : ℤ)).toNat

end

end A026092.P4111299452125144748

/-! ## A026092.P3609493951899152969

`A026082(A082111(2*n)+n+2)`
-/

namespace A026092.P3609493951899152969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026082 (A082111 (2 * n) + (n + 2 : ℤ)).toNat

end

end A026092.P3609493951899152969

/-! ## A026092.P18410855711576673122

`A026082(A028347(2*(n+1))+3*(n+1))`
-/

namespace A026092.P18410855711576673122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026082 (A028347 (2 * (n + 1)) + (3 * (n + 1) : ℤ)).toNat

end

end A026092.P18410855711576673122

/-! ## A026092.P14555553932896326286

`A026082(Δ[A322594(n)-A000217(n)])`
-/

namespace A026092.P14555553932896326286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322594 n - A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026082 (f1 (n + 1) - f1 n).toNat

end

end A026092.P14555553932896326286

/-!
# A026093: T(2n,n+1), where T is the array defined in A026082.

The programs for A026093, there is no canonical definition to state claims against.
-/

/-! ## A026093.P982053660811327085

`A026077(n+1)+A000007(n)-A026072(n+1)`
-/

namespace A026093.P982053660811327085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026077 (n + 1) + (A000007 n - A026072 (n + 1))

end

end A026093.P982053660811327085

/-! ## A026093.P10725581520110353227

`A026082((2*n+1)²+5*n)`
-/

namespace A026093.P10725581520110353227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026082 ((2 * n + 1) ^ 2 + 5 * n)

end

end A026093.P10725581520110353227

/-!
# A026095: a(n) = Sum{T(k,k-1)}, k = 1,2,...,n, where T is the array defined in A026082.

The programs for A026095, the canonical program `A026095.P2665066973868391948` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026095 has offset 1).

The definition of A026095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026095.P2665066973868391948

`A024998(n+1)-A115634(A001223(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A026095

/-- `A024998(n+1)-A115634(A001223(n+1))` -/
def P2665066973868391948.Spec : Prop :=
  ∀ n, P2665066973868391948.a n = A026095 (n + 1)

theorem P2665066973868391948.correct : P2665066973868391948.Spec := by
  intro n
  simp only [A026095, Nat.add_sub_cancel]

end A026095

/-! ## A026095.P14376459201743200633

`A024998(n+1)-A115634(A014320(n+1))`
-/

namespace A026095.P14376459201743200633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024998 (n + 1) - A115634 (A014320 (n + 1)).toNat

end

end A026095.P14376459201743200633

namespace A026095

/-- `A024998(n+1)-A115634(A014320(n+1))` -/
def P14376459201743200633.Spec : Prop :=
  ∀ n, P14376459201743200633.a n = A026095 (n + 1)

end A026095

/-! ## A026095.P6100095641311509522

`A024996(A081352(n))+3%A001844(n)`
-/

namespace A026095.P6100095641311509522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 (A081352 n).toNat + Int.tmod 3 (A001844 n)

end

end A026095.P6100095641311509522

namespace A026095

/-- `A024996(A081352(n))+3%A001844(n)` -/
def P6100095641311509522.Spec : Prop :=
  ∀ n, P6100095641311509522.a n = A026095 (n + 1)

end A026095

/-! ## A026095.P5157581737845526931

`A024996(A028387(n))+A008585(A178334(n))`
-/

namespace A026095.P5157581737845526931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 (A028387 n).toNat + A008585 (A178334 n).toNat

end

end A026095.P5157581737845526931

namespace A026095

/-- `A024996(A028387(n))+A008585(A178334(n))` -/
def P5157581737845526931.Spec : Prop :=
  ∀ n, P5157581737845526931.a n = A026095 (n + 1)

end A026095

/-! ## A026095.P8055719515134614863

`A024996(A081352(n))+A008585(A178334(n))`
-/

namespace A026095.P8055719515134614863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 (A081352 n).toNat + A008585 (A178334 n).toNat

end

end A026095.P8055719515134614863

namespace A026095

/-- `A024996(A081352(n))+A008585(A178334(n))` -/
def P8055719515134614863.Spec : Prop :=
  ∀ n, P8055719515134614863.a n = A026095 (n + 1)

end A026095

/-! ## A026095.P9079090349191259117

`A024998(n+1)-A115634(A005250(n+1))`
-/

namespace A026095.P9079090349191259117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024998 (n + 1) - A115634 (A005250 (n + 1)).toNat

end

end A026095.P9079090349191259117

namespace A026095

/-- `A024998(n+1)-A115634(A005250(n+1))` -/
def P9079090349191259117.Spec : Prop :=
  ∀ n, P9079090349191259117.a n = A026095 (n + 1)

end A026095

/-!
# A026096: Sum{T(n,k)}, k = 0,1,...,n, where T is the array defined in A026082.

The programs for A026096, there is no canonical definition to state claims against.
-/

/-! ## A026096.P1812161600467539157

`∑[A087158(A309895(n))]`
-/

namespace A026096.P1812161600467539157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087158 (A309895 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026096.P1812161600467539157

/-! ## A026096.P2410288759542857251

`A372306(A303794(n+1))`
-/

namespace A026096.P2410288759542857251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372306 (A303794 (n + 1)).toNat

end

end A026096.P2410288759542857251

/-!
# A026097: a(n) = number of (s(0), s(1), ..., s(n)) such that every s(i) is an integer, s(0) = 0, |s(i) - s(i-1)| = 1 for i = 1,2,3; |s(i) - s(i-1)| <= 1 for i >= 4. Also a(n) = sum of numbers in row n+1 of the array T defined in A026082 and a(n) = 24*3^(n-4) for n >= 4.

The programs for A026097, the canonical program `A026097.P1841263927432493306` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026097 has offset 0).

The definition of A026097 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026097.P1841263927432493306

`3*a(n-1)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026097

/-- `3*a(n-1)` -/
def P1841263927432493306.Spec : Prop :=
  ∀ n, (P1841263927432493306.a n : ℤ) = A026097 n

theorem P1841263927432493306.correct : P1841263927432493306.Spec := by
  intro n
  simp only [A026097]

end A026097

/-! ## A026097.P3467696792137260882

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2, a(4)=3`
-/

namespace A026097.P3467696792137260882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 2, 3] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A026097.P3467696792137260882

namespace A026097

/-- `abs(∏[-a(n-1)])` -/
def P3467696792137260882.Spec : Prop :=
  ∀ n, P3467696792137260882.a n = A026097 n

end A026097

/-! ## A026097.P7764600633192947321

`a(n-1)+a(n-1)+lcm(4%a(n-1), a(n-1))` with `a(0)=1`
-/

namespace A026097.P7764600633192947321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + Nat.lcm (4 % a (n - 1)) (a (n - 1)))

end

end A026097.P7764600633192947321

namespace A026097

/-- `a(n-1)+a(n-1)+lcm(4%a(n-1), a(n-1))` -/
def P7764600633192947321.Spec : Prop :=
  ∀ n, (P7764600633192947321.a n : ℤ) = A026097 n

end A026097

/-! ## A026097.P815562384288520639

`a(n-1)*A156752(n)` with `a(0)=1`
-/

namespace A026097.P815562384288520639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A156752 n

end

end A026097.P815562384288520639

namespace A026097

/-- `a(n-1)*A156752(n)` -/
def P815562384288520639.Spec : Prop :=
  ∀ n, P815562384288520639.a n = A026097 n

end A026097

/-! ## A026097.P10155170800288582677

`A246084(A026474(n+1))`
-/

namespace A026097.P10155170800288582677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246084 (A026474 (n + 1)).toNat

end

end A026097.P10155170800288582677

namespace A026097

/-- `A246084(A026474(n+1))` -/
def P10155170800288582677.Spec : Prop :=
  ∀ n, P10155170800288582677.a n = A026097 n

end A026097

/-! ## A026097.P5753254921094879501

`A246080(A140164(n+1))`
-/

namespace A026097.P5753254921094879501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246080 (A140164 (n + 1)).toNat

end

end A026097.P5753254921094879501

namespace A026097

/-- `A246080(A140164(n+1))` -/
def P5753254921094879501.Spec : Prop :=
  ∀ n, P5753254921094879501.a n = A026097 n

end A026097

/-! ## A026097.P13637733032914777747

`A083583(n)/dr(A006234(n+3))`
-/

namespace A026097.P13637733032914777747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083583 n : ℚ) / (SequenceMachineLib.digitalRoot (A006234 (n + 3)) : ℚ)

end

end A026097.P13637733032914777747

namespace A026097

/-- `A083583(n)/dr(A006234(n+3))` -/
def P13637733032914777747.Spec : Prop :=
  ∀ n, P13637733032914777747.a n = (A026097 n : ℚ)

end A026097

/-! ## A026097.P770633869588699912

`record[A175840(n+1-A002260(n+2)%4)]`
-/

namespace A026097.P770633869588699912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 ((n + 1 : ℤ) - Int.tmod (A002260 (n + 2)) 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026097.P770633869588699912

namespace A026097

/-- `record[A175840(n+1-A002260(n+2)%4)]` -/
def P770633869588699912.Spec : Prop :=
  ∀ n, P770633869588699912.a n = A026097 n

end A026097

/-! ## A026097.P5822060394294084268

`a(n-1)+a(n-1)+a(n-1)%a(n-2)²` with `a(0)=1, a(1)=2`
-/

namespace A026097.P5822060394294084268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 1) % a (n - 2) ^ 2)

end

end A026097.P5822060394294084268

namespace A026097

/-- `a(n-1)+a(n-1)+a(n-1)%a(n-2)²` -/
def P5822060394294084268.Spec : Prop :=
  ∀ n, (P5822060394294084268.a n : ℤ) = A026097 n

end A026097

/-!
# A026098: Triangular array T read by rows: T(1,1)=1, T(2,1)=3, T(2,2)=2; for n >= 3, T(n,1)=prime(n) and for k=2,3,...,n, T(n,k) = m*prime(n+1-k), where m is the least positive integer such that m*p(n+1-k) is not any T(i,j) for 1<=i<=n-1 nor any T(n,j) for j<=k-1.

The programs for A026098, there is no canonical definition to state claims against.
-/

/-! ## A026098.P5969247773855667349

`A084287(A038722(n+1)%p?[A169739(n)])`
-/

namespace A026098.P5969247773855667349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084287 (Int.tmod (A038722 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A026098.P5969247773855667349

/-! ## A026098.P6995588172407310179

`A084287(A038722(n+1))%A319902(n+1)`
-/

namespace A026098.P6995588172407310179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084287 (A038722 (n + 1)).toNat) (A319902 (n + 1))

end

end A026098.P6995588172407310179

/-! ## A026098.P3431881063798030216

`A084287(A038722(n+1))%A119911(A000032(n))`
-/

namespace A026098.P3431881063798030216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084287 (A038722 (n + 1)).toNat) (A119911 (A000032 n).toNat)

end

end A026098.P3431881063798030216

/-! ## A026098.P9345290436600057307

`A084287(A038722(n+1))+A000007(A143794(n+1))`
-/

namespace A026098.P9345290436600057307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084287 (A038722 (n + 1)).toNat + A000007 (A143794 (n + 1)).toNat

end

end A026098.P9345290436600057307

/-! ## A026098.P6790808911295906391

`A209615(n²+1)^A319902(n+1)*A084287(A038722(n+1))`
-/

namespace A026098.P6790808911295906391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209615 (n ^ 2 + 1) : ℚ) ^ (A319902 (n + 1) : ℤ) * (A084287 (A038722 (n + 1)).toNat : ℚ)

end

end A026098.P6790808911295906391

/-!
# A026099: Row of A026098 that contains n.

The programs for A026099, there is no canonical definition to state claims against.
-/

/-! ## A026099.P3674870823375955824

`round(sqrt(2*A070264(n+1)))`
-/

namespace A026099.P3674870823375955824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A070264 (n + 1) : ℝ))

end

end A026099.P3674870823375955824

/-! ## A026099.P13426962546425010623

`A002024(A070264(n+1))`
-/

namespace A026099.P13426962546425010623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A070264 (n + 1)).toNat

end

end A026099.P13426962546425010623

/-! ## A026099.P17253220745722703779

`A123578(A070264(n+1)%(n+3)²)`
-/

namespace A026099.P17253220745722703779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (Int.tmod (A070264 (n + 1)) ((n + 3) ^ 2 : ℤ)).toNat

end

end A026099.P17253220745722703779

/-! ## A026099.P333210255775723227

`A123578(A070264(A000027(n+1)))`
-/

namespace A026099.P333210255775723227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A070264 (A000027 (n + 1)).toNat).toNat

end

end A026099.P333210255775723227

/-! ## A026099.P15254204593183833153

`A123578(∑{d}[A070264(n+1), A000010(#)])`
-/

namespace A026099.P15254204593183833153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d).toNat

end

end A026099.P15254204593183833153

/-! ## A026099.P13168777714846704877

`A123578(A070264(n+1))%A000040(n+1)`
-/

namespace A026099.P13168777714846704877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123578 (A070264 (n + 1)).toNat) (A000040 (n + 1))

end

end A026099.P13168777714846704877

/-! ## A026099.P7925716642472140238

`A007318(C(2, n))*A123578(A070264(n+1))`
-/

namespace A026099.P7925716642472140238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A123578 (A070264 (n + 1)).toNat

end

end A026099.P7925716642472140238

/-! ## A026099.P16096373155103186344

`A000194(2*A070264(n+1))`
-/

namespace A026099.P16096373155103186344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (2 * A070264 (n + 1)).toNat

end

end A026099.P16096373155103186344

/-! ## A026099.P15382587274050963507

`A349520(2*A070264(n+1))`
-/

namespace A026099.P15382587274050963507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (2 * A070264 (n + 1)).toNat

end

end A026099.P15382587274050963507

