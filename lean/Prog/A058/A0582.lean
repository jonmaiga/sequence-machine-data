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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A058200: Coefficients of the highest power of r in a sequence of parametric solutions for the Diophantine equation x^3+y^3+z^3=1.

The programs for A058200, there is no canonical definition to state claims against.
-/

/-! ## A058200.P8772437863381989482

`18*24*a(n-1)` with `a(0)=9, a(1)=9`
-/

namespace A058200.P8772437863381989482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9, 9] fun n a =>
  18 * (24 * a (n - 1))

end

end A058200.P8772437863381989482

/-!
# A058202: Triangle in which n-th row gives the numbers which when subtracted from 2^n produce primes.

The programs for A058202, there is no canonical definition to state claims against.
-/

/-! ## A058202.P5309294855667776264

`A062050(A347476(n+1))`
-/

namespace A058202.P5309294855667776264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (A347476 (n + 1)).toNat

end

end A058202.P5309294855667776264

/-! ## A058202.P3884505404311221995

`A053645(A347476(n+1)+1)`
-/

namespace A058202.P3884505404311221995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A347476 (n + 1) + 1).toNat

end

end A058202.P3884505404311221995

/-! ## A058202.P9302363764830544812

`ceil((A347476(n+1)-p?[A035327(n)])/2)`
-/

namespace A058202.P9302363764830544812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A347476 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌉

end

end A058202.P9302363764830544812

/-! ## A058202.P10129086885440971036

`A008619(A347476(n+1)-p?[A035327(n)])`
-/

namespace A058202.P10129086885440971036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A347476 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A058202.P10129086885440971036

/-! ## A058202.P9304041987195191060

`A115384(A347476(n+1)-p?[A035327(n)])`
-/

namespace A058202.P9304041987195191060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (A347476 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A058202.P9304041987195191060

/-! ## A058202.P17182289977082964672

`A004526(A347476(n+1)-p?[A035327(n)]+1)`
-/

namespace A058202.P17182289977082964672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A347476 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A058202.P17182289977082964672

/-!
# A058203: Numbers n such that x^n + x^10 + 2 is irreducible over GF(3).

The programs for A058203, there is no canonical definition to state claims against.
-/

/-! ## A058203.P1302629921986465816

`2*A058238(n+2)`
-/

namespace A058203.P1302629921986465816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058238 (n + 2)

end

end A058203.P1302629921986465816

/-! ## A058203.P17449594455311292777

`A004277(A058238(n+2))`
-/

namespace A058203.P17449594455311292777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A058238 (n + 2)).toNat

end

end A058203.P17449594455311292777

/-! ## A058203.P16623044972503612515

`A004275(A058238(n+2)+1)`
-/

namespace A058203.P16623044972503612515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A058238 (n + 2) + 1).toNat

end

end A058203.P16623044972503612515

/-! ## A058203.P15460760968409837100

`Δ[A004273(∑[A058238(n+1)])]`
-/

namespace A058203.P15460760968409837100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058238 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A058203.P15460760968409837100

/-! ## A058203.P12743353375000042881

`Δ[A005843(∑[A058238(n+1)])]`
-/

namespace A058203.P12743353375000042881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058238 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A058203.P12743353375000042881

/-!
# A058206: McKay-Thompson series of class 12C for the Monster group.

The programs for A058206, there is no canonical definition to state claims against.
-/

/-! ## A058206.P1503380674463272363

`A058484(n)+A058484(n)-A058490(n)`
-/

namespace A058206.P1503380674463272363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058484 n + (A058484 n - A058490 n)

end

end A058206.P1503380674463272363

/-! ## A058206.P16974253938035984763

`A058484(n)+A058485(n)-A058492(n)`
-/

namespace A058206.P16974253938035984763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058484 n + (A058485 n - A058492 n)

end

end A058206.P16974253938035984763

/-! ## A058206.P365292389128446495

`A058485(1-A024000(n))-(A058492(n)-A058484(n))`
-/

namespace A058206.P365292389128446495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058485 (1 - A024000 n).toNat - (A058492 n - A058484 n)

end

end A058206.P365292389128446495

/-! ## A058206.P40680205608515130

`2*A058484(n)-A058490(n)`
-/

namespace A058206.P40680205608515130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058484 n - A058490 n

end

end A058206.P40680205608515130

/-! ## A058206.P11596355772195319581

`2*A058485(n)-A058489(n)`
-/

namespace A058206.P11596355772195319581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058485 n - A058489 n

end

end A058206.P11596355772195319581

/-!
# A058207: Three steps forward, two steps back.

The programs for A058207, the canonical program `A058207.P13936798782463876384` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058207 has offset 0).

The definition of A058207 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058207.P13936798782463876384

`a(n-5)+1` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A058207

/-- `a(n-5)+1` -/
def P13936798782463876384.Spec : Prop :=
  ∀ n, (P13936798782463876384.a n : ℤ) = A058207 n

theorem P13936798782463876384.correct : P13936798782463876384.Spec := by
  intro n
  simp only [A058207]

end A058207

/-! ## A058207.P7986207507465982085

`∑[2%((n+1)%5+1)]-n`
-/

namespace A058207.P7986207507465982085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 % ((n + 1) % 5 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A058207.P7986207507465982085

namespace A058207

/-- `∑[2%((n+1)%5+1)]-n` -/
def P7986207507465982085.Spec : Prop :=
  ∀ n, P7986207507465982085.a n = A058207 n

end A058207

/-! ## A058207.P13000175146840420121

`∑[floor(a(n-5))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=-1, a(5)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A058207.P13000175146840420121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1, -1, -1] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058207.P13000175146840420121

namespace A058207

/-- `∑[floor(a(n-5))]` -/
def P13000175146840420121.Spec : Prop :=
  ∀ n, P13000175146840420121.a n = A058207 n

end A058207

/-! ## A058207.P15977786976074681258

`∑[1/a(n-5)]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=-1, a(5)=-1`
-/

namespace A058207.P15977786976074681258
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 1, 1, -1, -1] fun n f1 =>
  1 / f1 (n - 5)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058207.P15977786976074681258

namespace A058207

/-- `∑[1/a(n-5)]` -/
def P15977786976074681258.Spec : Prop :=
  ∀ n, P15977786976074681258.a n = (A058207 n : ℚ)

end A058207

/-! ## A058207.P5076341095161124084

`∑[a(n-5)^3]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=-1, a(5)=-1`
-/

namespace A058207.P5076341095161124084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1, -1, -1] fun n f1 =>
  f1 (n - 5) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058207.P5076341095161124084

namespace A058207

/-- `∑[a(n-5)^3]` -/
def P5076341095161124084.Spec : Prop :=
  ∀ n, P5076341095161124084.a n = A058207 n

end A058207

/-! ## A058207.P6383191997373102344

`A286717(n)-A130496(n)`
-/

namespace A058207.P6383191997373102344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286717 n - A130496 n

end

end A058207.P6383191997373102344

namespace A058207

/-- `A286717(n)-A130496(n)` -/
def P6383191997373102344.Spec : Prop :=
  ∀ n, P6383191997373102344.a n = A058207 n

end A058207

/-! ## A058207.P11518072680057975691

`n-2*A004523(A057355(n))`
-/

namespace A058207.P11518072680057975691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A004523 (A057355 n).toNat

end

end A058207.P11518072680057975691

namespace A058207

/-- `n-2*A004523(A057355(n))` -/
def P11518072680057975691.Spec : Prop :=
  ∀ n, P11518072680057975691.a n = A058207 n

end A058207

/-! ## A058207.P10796487177847693580

`A286717(n)-2*A002266(n)`
-/

namespace A058207.P10796487177847693580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286717 n - 2 * A002266 n

end

end A058207.P10796487177847693580

namespace A058207

/-- `A286717(n)-2*A002266(n)` -/
def P10796487177847693580.Spec : Prop :=
  ∀ n, P10796487177847693580.a n = A058207 n

end A058207

/-! ## A058207.P8281157755346516921

`A016789(n)%A047302(n+1)`
-/

namespace A058207.P8281157755346516921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016789 n) (A047302 (n + 1))

end

end A058207.P8281157755346516921

namespace A058207

/-- `A016789(n)%A047302(n+1)` -/
def P8281157755346516921.Spec : Prop :=
  ∀ n, P8281157755346516921.a n = A058207 n

end A058207

/-! ## A058207.P9132196307582726227

`A047511(n+1)-A047373(n+1)`
-/

namespace A058207.P9132196307582726227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047511 (n + 1) - A047373 (n + 1)

end

end A058207.P9132196307582726227

namespace A058207

/-- `A047511(n+1)-A047373(n+1)` -/
def P9132196307582726227.Spec : Prop :=
  ∀ n, P9132196307582726227.a n = A058207 n

end A058207

/-! ## A058207.P1826150227946842443

`A061570(n+1)%A047302(n+1)`
-/

namespace A058207.P1826150227946842443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061570 (n + 1)) (A047302 (n + 1))

end

end A058207.P1826150227946842443

namespace A058207

/-- `A061570(n+1)%A047302(n+1)` -/
def P1826150227946842443.Spec : Prop :=
  ∀ n, P1826150227946842443.a n = A058207 n

end A058207

/-! ## A058207.P8858283096704483707

`∑[A047567(n+1)-A047547(n+1)]-n`
-/

namespace A058207.P8858283096704483707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047567 (n + 1) - A047547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A058207.P8858283096704483707

namespace A058207

/-- `∑[A047567(n+1)-A047547(n+1)]-n` -/
def P8858283096704483707.Spec : Prop :=
  ∀ n, P8858283096704483707.a n = A058207 n

end A058207

/-! ## A058207.P14950548819456330520

`∑[A164116(n+1)*A164116(n)]+n+1`
-/

namespace A058207.P14950548819456330520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164116 (n + 1) * A164116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A058207.P14950548819456330520

namespace A058207

/-- `∑[A164116(n+1)*A164116(n)]+n+1` -/
def P14950548819456330520.Spec : Prop :=
  ∀ n, P14950548819456330520.a n = A058207 n

end A058207

/-! ## A058207.P11872473418521859759

`A310518(n+1)-(5*n+4)`
-/

namespace A058207.P11872473418521859759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310518 (n + 1) - (5 * n + 4 : ℤ)

end

end A058207.P11872473418521859759

namespace A058207

/-- `A310518(n+1)-(5*n+4)` -/
def P11872473418521859759.Spec : Prop :=
  ∀ n, P11872473418521859759.a n = A058207 n

end A058207

/-! ## A058207.P1515366977860749567

`A047486(n+2)+1-A047363(n+2)`
-/

namespace A058207.P1515366977860749567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (n + 2) + (1 - A047363 (n + 2))

end

end A058207.P1515366977860749567

namespace A058207

/-- `A047486(n+2)+1-A047363(n+2)` -/
def P1515366977860749567.Spec : Prop :=
  ∀ n, P1515366977860749567.a n = A058207 n

end A058207

/-! ## A058207.P12199366899876549348

`A260644(A047287(n+1))`
-/

namespace A058207.P12199366899876549348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260644 (A047287 (n + 1)).toNat

end

end A058207.P12199366899876549348

namespace A058207

/-- `A260644(A047287(n+1))` -/
def P12199366899876549348.Spec : Prop :=
  ∀ n, P12199366899876549348.a n = A058207 n

end A058207

/-! ## A058207.P8166511250130451547

`A260644(A047337(n+2)-1)`
-/

namespace A058207.P8166511250130451547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260644 (A047337 (n + 2) - 1).toNat

end

end A058207.P8166511250130451547

namespace A058207

/-- `A260644(A047337(n+2)-1)` -/
def P8166511250130451547.Spec : Prop :=
  ∀ n, P8166511250130451547.a n = A058207 n

end A058207

/-! ## A058207.P2649949436292447052

`A260644(2*n-A286717(n))`
-/

namespace A058207.P2649949436292447052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260644 ((2 * n : ℤ) - A286717 n).toNat

end

end A058207.P2649949436292447052

namespace A058207

/-- `A260644(2*n-A286717(n))` -/
def P2649949436292447052.Spec : Prop :=
  ∀ n, P2649949436292447052.a n = A058207 n

end A058207

/-! ## A058207.P10021090813225484045

`A260644(A047326(n+1))`
-/

namespace A058207.P10021090813225484045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260644 (A047326 (n + 1)).toNat

end

end A058207.P10021090813225484045

namespace A058207

/-- `A260644(A047326(n+1))` -/
def P10021090813225484045.Spec : Prop :=
  ∀ n, P10021090813225484045.a n = A058207 n

end A058207

/-! ## A058207.P7769230855595824428

`A004277(A047511(n+1))-(A004277(n)+n)`
-/

namespace A058207.P7769230855595824428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A047511 (n + 1)).toNat - (A004277 n + (n : ℤ))

end

end A058207.P7769230855595824428

namespace A058207

/-- `A004277(A047511(n+1))-(A004277(n)+n)` -/
def P7769230855595824428.Spec : Prop :=
  ∀ n, P7769230855595824428.a n = A058207 n

end A058207

/-!
# A058208: a(n) = floor(6*n*sqrt(n)/Pi^2) - sigma(n), where sigma(n) is the sum of the divisors of n (A000203).

The programs for A058208, the canonical program `A058208.P11143344036866898331` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058208 has offset 1).

The definition of A058208 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058208.P11143344036866898331

`A060903(n+1)-∑{d}[n+1, #]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A058208

/-- `A060903(n+1)-∑{d}[n+1, #]` -/
def P11143344036866898331.Spec : Prop :=
  ∀ n, P11143344036866898331.a n = A058208 (n + 1)

theorem P11143344036866898331.correct : P11143344036866898331.Spec := by
  intro n
  simp only [A058208, Nat.add_sub_cancel]

end A058208

/-! ## A058208.P9801125392353548719

`Δ[∑[A060903(n)]-A160664(n)]`
-/

namespace A058208.P9801125392353548719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060903 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A058208.P9801125392353548719

namespace A058208

/-- `Δ[∑[A060903(n)]-A160664(n)]` -/
def P9801125392353548719.Spec : Prop :=
  ∀ n, P9801125392353548719.a n = A058208 (n + 1)

end A058208

/-! ## A058208.P6857281353297265650

`A060903(n+1)-Δ[A160664(n)]`
-/

namespace A058208.P6857281353297265650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060903 (n + 1) - (f1 (n + 1) - f1 n)

end

end A058208.P6857281353297265650

namespace A058208

/-- `A060903(n+1)-Δ[A160664(n)]` -/
def P6857281353297265650.Spec : Prop :=
  ∀ n, P6857281353297265650.a n = A058208 (n + 1)

end A058208

/-! ## A058208.P3522351965633996524

`A060903(n+1)-A000203(n+1)`
-/

namespace A058208.P3522351965633996524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060903 (n + 1) - A000203 (n + 1)

end

end A058208.P3522351965633996524

namespace A058208

/-- `A060903(n+1)-A000203(n+1)` -/
def P3522351965633996524.Spec : Prop :=
  ∀ n, P3522351965633996524.a n = A058208 (n + 1)

end A058208

/-! ## A058208.P15615685701645195336

`∑[Δ[A060903(n)]-A340793(n+1)]`
-/

namespace A058208.P15615685701645195336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060903 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058208.P15615685701645195336

namespace A058208

/-- `∑[Δ[A060903(n)]-A340793(n+1)]` -/
def P15615685701645195336.Spec : Prop :=
  ∀ n, P15615685701645195336.a n = A058208 (n + 1)

end A058208

/-! ## A058208.P14664945539795009327

`A060903(n+1)-abs(A143348(n+1))`
-/

namespace A058208.P14664945539795009327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060903 (n + 1) - |A143348 (n + 1)|

end

end A058208.P14664945539795009327

namespace A058208

/-- `A060903(n+1)-abs(A143348(n+1))` -/
def P14664945539795009327.Spec : Prop :=
  ∀ n, P14664945539795009327.a n = A058208 (n + 1)

end A058208

/-! ## A058208.P9274772419414667171

`A060903(n+1)-∑[A340793(n+1)]`
-/

namespace A058208.P9274772419414667171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060903 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058208.P9274772419414667171

namespace A058208

/-- `A060903(n+1)-∑[A340793(n+1)]` -/
def P9274772419414667171.Spec : Prop :=
  ∀ n, P9274772419414667171.a n = A058208 (n + 1)

end A058208

/-! ## A058208.P8947525041855648495

`A060903(n+1)-A245092(2*n+1)`
-/

namespace A058208.P8947525041855648495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060903 (n + 1) - A245092 (2 * n + 1)

end

end A058208.P8947525041855648495

namespace A058208

/-- `A060903(n+1)-A245092(2*n+1)` -/
def P8947525041855648495.Spec : Prop :=
  ∀ n, P8947525041855648495.a n = A058208 (n + 1)

end A058208

/-! ## A058208.P1874893227377127518

`A055682(n+1)+A060903(n+1)-A000093(n+1)`
-/

namespace A058208.P1874893227377127518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055682 (n + 1) + (A060903 (n + 1) - A000093 (n + 1))

end

end A058208.P1874893227377127518

namespace A058208

/-- `A055682(n+1)+A060903(n+1)-A000093(n+1)` -/
def P1874893227377127518.Spec : Prop :=
  ∀ n, P1874893227377127518.a n = A058208 (n + 1)

end A058208

/-! ## A058208.P12826916221948331794

`A060903(n+1)-A026741(A074400(n+1))`
-/

namespace A058208.P12826916221948331794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060903 (n + 1) - A026741 (A074400 (n + 1)).toNat

end

end A058208.P12826916221948331794

namespace A058208

/-- `A060903(n+1)-A026741(A074400(n+1))` -/
def P12826916221948331794.Spec : Prop :=
  ∀ n, P12826916221948331794.a n = A058208 (n + 1)

end A058208

/-!
# A058209: a(n) = floor( exp(gamma) n log log n ) - sigma(n), where gamma is Euler's constant (A001620) and sigma(n) is sum of divisors of n (A000203).

The programs for A058209, the canonical program `A058209.P4584967785332005220` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058209 has offset 2).

The definition of A058209 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058209.P4584967785332005220

`A058210(n+2)-A000203(n+2)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A058209

/-- `A058210(n+2)-A000203(n+2)` -/
def P4584967785332005220.Spec : Prop :=
  ∀ n, P4584967785332005220.a n = A058209 (n + 2)

theorem P4584967785332005220.correct : P4584967785332005220.Spec := by
  intro n
  simp only [A058209, Nat.add_sub_cancel]

end A058209

/-! ## A058209.P13381324999734666104

`A062787(n+2)-A051612(n+2)`
-/

namespace A058209.P13381324999734666104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062787 (n + 2) - A051612 (n + 2)

end

end A058209.P13381324999734666104

namespace A058209

/-- `A062787(n+2)-A051612(n+2)` -/
def P13381324999734666104.Spec : Prop :=
  ∀ n, P13381324999734666104.a n = A058209 (n + 2)

end A058209

/-! ## A058209.P15912284423379156595

`A058210(n+2)-A245092(2*n+3)`
-/

namespace A058209.P15912284423379156595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058210 (n + 2) - A245092 (2 * n + 3)

end

end A058209.P15912284423379156595

namespace A058209

/-- `A058210(n+2)-A245092(2*n+3)` -/
def P15912284423379156595.Spec : Prop :=
  ∀ n, P15912284423379156595.a n = A058209 (n + 2)

end A058209

/-! ## A058209.P16941653637796263576

`A057641(n+2)+A058210(n+2)-A057640(n+2)`
-/

namespace A058209.P16941653637796263576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057641 (n + 2) + (A058210 (n + 2) - A057640 (n + 2))

end

end A058209.P16941653637796263576

namespace A058209

/-- `A057641(n+2)+A058210(n+2)-A057640(n+2)` -/
def P16941653637796263576.Spec : Prop :=
  ∀ n, P16941653637796263576.a n = A058209 (n + 2)

end A058209

/-! ## A058209.P4002007062726912123

`A062787(n+2)+Δ[A015614(n+1)]-A000203(n+2)`
-/

namespace A058209.P4002007062726912123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062787 (n + 2) + (f1 (n + 1) - f1 n) - A000203 (n + 2)

end

end A058209.P4002007062726912123

namespace A058209

/-- `A062787(n+2)+Δ[A015614(n+1)]-A000203(n+2)` -/
def P4002007062726912123.Spec : Prop :=
  ∀ n, P4002007062726912123.a n = A058209 (n + 2)

theorem P4002007062726912123.correct : P4002007062726912123.Spec := by
  intro n
  simp only [A058209, Nat.add_sub_cancel, A058209.P4002007062726912123.f1, A058209.P4002007062726912123.a, A058209.P4584967785332005220.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A015614, A015614.P13535555482679389419.a, A058210, A058210.P13532441663654932347.a, A062787, A062787.P5490258356335580690.f1, A062787.P5490258356335580690.a, A000217, A000217.P10269402890581615239.a, A005728, A005728.P12032251568510858139.a, A185670, A185670.P7671735460308608982.a, A002088, A002088.P8962335469571691680.f2, A002088.P8962335469571691680.f1, A002088.P8962335469571691680.a, A063985, A063985.P3942861327483730228.a, A100613, A100613.P7468063633472476903.a, A007431, A007431.P16849793818733668455.f1, A007431.P16849793818733668455.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A058209

/-!
# A058210: a(n) = floor( exp(gamma) n log log n ), where gamma is Euler's constant (A001620).

The programs for A058210, the canonical program `A058210.P13532441663654932347` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058210 has offset 2).

The definition of A058210 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058210.P13532441663654932347

`floor(exp(γ)*(n+2)*log(log(n+2)))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A058210

/-- `floor(exp(γ)*(n+2)*log(log(n+2)))` -/
def P13532441663654932347.Spec : Prop :=
  ∀ n, P13532441663654932347.a n = A058210 (n + 2)

theorem P13532441663654932347.correct : P13532441663654932347.Spec := by
  intro n
  simp only [A058210, Nat.add_sub_cancel]

end A058210

/-! ## A058210.P14569726957647608040

`A058209(n+2)+A000203(n+2)`
-/

namespace A058210.P14569726957647608040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058209 (n + 2) + A000203 (n + 2)

end

end A058210.P14569726957647608040

namespace A058210

/-- `A058209(n+2)+A000203(n+2)` -/
def P14569726957647608040.Spec : Prop :=
  ∀ n, P14569726957647608040.a n = A058210 (n + 2)

theorem P14569726957647608040.correct : P14569726957647608040.Spec := by
  intro n
  simp only [A058210, Nat.add_sub_cancel, A058210.P14569726957647608040.a, A058210.P13532441663654932347.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A058209, A058209.P4584967785332005220.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A058210

/-! ## A058210.P9921184712959460558

`A062787(n+2)+A000010(n+2)`
-/

namespace A058210.P9921184712959460558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062787 (n + 2) + A000010 (n + 2)

end

end A058210.P9921184712959460558

namespace A058210

/-- `A062787(n+2)+A000010(n+2)` -/
def P9921184712959460558.Spec : Prop :=
  ∀ n, P9921184712959460558.a n = A058210 (n + 2)

end A058210

/-! ## A058210.P15818541008724262352

`A062787(n+2)+Δ[A015614(n+1)]`
-/

namespace A058210.P15818541008724262352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062787 (n + 2) + (f1 (n + 1) - f1 n)

end

end A058210.P15818541008724262352

namespace A058210

/-- `A062787(n+2)+Δ[A015614(n+1)]` -/
def P15818541008724262352.Spec : Prop :=
  ∀ n, P15818541008724262352.a n = A058210 (n + 2)

theorem P15818541008724262352.correct : P15818541008724262352.Spec := by
  intro n
  simp only [A058210, Nat.add_sub_cancel, A058210.P15818541008724262352.f1, A058210.P15818541008724262352.a, A058210.P13532441663654932347.a, A015614, A015614.P13535555482679389419.a, A062787, A062787.P5490258356335580690.f1, A062787.P5490258356335580690.a, A000217, A000217.P10269402890581615239.a, A005728, A005728.P12032251568510858139.a, A185670, A185670.P7671735460308608982.a, A002088, A002088.P8962335469571691680.f2, A002088.P8962335469571691680.f1, A002088.P8962335469571691680.a, A063985, A063985.P3942861327483730228.a, A100613, A100613.P7468063633472476903.a, A007431, A007431.P16849793818733668455.f1, A007431.P16849793818733668455.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A058210

/-! ## A058210.P12352466343152392860

`A057640(n+2)+A058209(n+2)-A057641(n+2)`
-/

namespace A058210.P12352466343152392860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057640 (n + 2) + (A058209 (n + 2) - A057641 (n + 2))

end

end A058210.P12352466343152392860

namespace A058210

/-- `A057640(n+2)+A058209(n+2)-A057641(n+2)` -/
def P12352466343152392860.Spec : Prop :=
  ∀ n, P12352466343152392860.a n = A058210 (n + 2)

end A058210

/-! ## A058210.P280727768674281854

`A058209(n+2)+A079527(n+2)-A079526(n+2)`
-/

namespace A058210.P280727768674281854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058209 (n + 2) + (A079527 (n + 2) - A079526 (n + 2))

end

end A058210.P280727768674281854

namespace A058210

/-- `A058209(n+2)+A079527(n+2)-A079526(n+2)` -/
def P280727768674281854.Spec : Prop :=
  ∀ n, P280727768674281854.a n = A058210 (n + 2)

end A058210

/-!
# A058212: a(n) = 1 + floor(n*(n-3)/6).

The programs for A058212, the canonical program `A058212.P4769622711738520392` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058212 has offset 0).

The definition of A058212 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+floor(n*(n-3)/6)` (program `A058212.P4769622711738520392`, by `A058212.P4769622711738520392.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A058212.P4769622711738520392

`1+floor(n*(n-3)/6)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A058212

/-- `1+floor(n*(n-3)/6)` -/
def P4769622711738520392.Spec : Prop :=
  ∀ n, P4769622711738520392.a n = A058212 n

theorem P4769622711738520392.correct : P4769622711738520392.Spec := by
  intro n
  simp only [A058212]

end A058212

/-! ## A058212.P16663034444081771330

`ceil(lcm(n-1, n-2)/6)`
-/

namespace A058212.P16663034444081771330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lcm ((n : ℤ) - 1) ((n : ℤ) - 2) : ℚ) / 6⌉

end

end A058212.P16663034444081771330

namespace A058212

/-- `ceil(lcm(n-1, n-2)/6)` -/
def P16663034444081771330.Spec : Prop :=
  ∀ n, P16663034444081771330.a n = A058212 n

end A058212

/-! ## A058212.P5245535934696899494

`ceil(C(n+2, 2)/3-n)`
-/

namespace A058212.P5245535934696899494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (n + 2) 2 : ℚ) / 3 - (n : ℚ)⌉

end

end A058212.P5245535934696899494

namespace A058212

/-- `ceil(C(n+2, 2)/3-n)` -/
def P5245535934696899494.Spec : Prop :=
  ∀ n, P5245535934696899494.a n = A058212 n

end A058212

/-! ## A058212.P10940955535987633310

`ceil((C(n, 2)-(n-1))/3)`
-/

namespace A058212.P10940955535987633310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.choose n 2 : ℤ) - ((n : ℤ) - 1) : ℚ) / 3⌉

end

end A058212.P10940955535987633310

namespace A058212

/-- `ceil((C(n, 2)-(n-1))/3)` -/
def P10940955535987633310.Spec : Prop :=
  ∀ n, P10940955535987633310.a n = A058212 n

end A058212

/-! ## A058212.P1451285085160106268

`floor((C(n, 2)-(n-3))/3)`
-/

namespace A058212.P1451285085160106268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.choose n 2 : ℤ) - ((n : ℤ) - 3) : ℚ) / 3⌋

end

end A058212.P1451285085160106268

namespace A058212

/-- `floor((C(n, 2)-(n-3))/3)` -/
def P1451285085160106268.Spec : Prop :=
  ∀ n, P1451285085160106268.a n = A058212 n

end A058212

/-! ## A058212.P9271697812783055776

`round((C(n, 2)-(n-2))/3)`
-/

namespace A058212.P9271697812783055776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.choose n 2 : ℤ) - ((n : ℤ) - 2) : ℚ) / 3)

end

end A058212.P9271697812783055776

namespace A058212

/-- `round((C(n, 2)-(n-2))/3)` -/
def P9271697812783055776.Spec : Prop :=
  ∀ n, P9271697812783055776.a n = A058212 n

end A058212

/-! ## A058212.P2442271538001228184

`∑[a(n-3)+1]` with `a(0)=1, a(1)=-1, a(2)=0, a(3)=1`
-/

namespace A058212.P2442271538001228184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 0, 1] fun n f1 =>
  f1 (n - 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058212.P2442271538001228184

namespace A058212

/-- `∑[a(n-3)+1]` -/
def P2442271538001228184.Spec : Prop :=
  ∀ n, P2442271538001228184.a n = A058212 n

end A058212

/-! ## A058212.P14490150043271277576

`floor(a(n-3)-3+n)` with `a(0)=1, a(1)=0, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A058212.P14490150043271277576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (n - 3) - 3 + (n : ℤ)

end

end A058212.P14490150043271277576

namespace A058212

/-- `floor(a(n-3)-3+n)` -/
def P14490150043271277576.Spec : Prop :=
  ∀ n, P14490150043271277576.a n = A058212 n

end A058212

/-! ## A058212.P12771169687341587549

`floor(n-(3-a(n-3)))` with `a(0)=1, a(1)=0, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A058212.P12771169687341587549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  (n : ℤ) - (3 - a (n - 3))

end

end A058212.P12771169687341587549

namespace A058212

/-- `floor(n-(3-a(n-3)))` -/
def P12771169687341587549.Spec : Prop :=
  ∀ n, P12771169687341587549.a n = A058212 n

end A058212

/-! ## A058212.P3462568687826188869

`ceil((2-n)²/3-a(n-1))` with `a(0)=1`
-/

namespace A058212.P3462568687826188869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈((2 - (n : ℤ)) ^ 2 : ℚ) / 3 - (a (n - 1) : ℚ)⌉

end

end A058212.P3462568687826188869

namespace A058212

/-- `ceil((2-n)²/3-a(n-1))` -/
def P3462568687826188869.Spec : Prop :=
  ∀ n, P3462568687826188869.a n = A058212 n

end A058212

/-! ## A058212.P13932700681594127630

`∑[∑[1/a(n-3)]]` with `a(0)=1, a(1)=-2, a(2)=1, a(3)=1, a(4)=-1`
-/

namespace A058212.P13932700681594127630
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, -2, 1, 1, -1] fun n f2 =>
  1 / f2 (n - 3)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058212.P13932700681594127630

namespace A058212

/-- `∑[∑[1/a(n-3)]]` -/
def P13932700681594127630.Spec : Prop :=
  ∀ n, P13932700681594127630.a n = (A058212 n : ℚ)

end A058212

/-! ## A058212.P1101563356749854963

`∑[∑[a(n-3)^3]]` with `a(0)=1, a(1)=-2, a(2)=1, a(3)=1, a(4)=-1`
-/

namespace A058212.P1101563356749854963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 1, 1, -1] fun n f2 =>
  f2 (n - 3) ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058212.P1101563356749854963

namespace A058212

/-- `∑[∑[a(n-3)^3]]` -/
def P1101563356749854963.Spec : Prop :=
  ∀ n, P1101563356749854963.a n = A058212 n

end A058212

/-! ## A058212.P230245138144177719

`ceil(cot(3/∑[n+4])-(2*n+1))`
-/

namespace A058212.P230245138144177719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (3 / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) : ℝ) - (2 * n + 1 : ℝ)⌉

end

end A058212.P230245138144177719

namespace A058212

/-- `ceil(cot(3/∑[n+4])-(2*n+1))` -/
def P230245138144177719.Spec : Prop :=
  ∀ n, P230245138144177719.a n = A058212 n

end A058212

/-! ## A058212.P15791705450069757200

`abs(n-∑[A008611(n)])`
-/

namespace A058212.P15791705450069757200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A058212.P15791705450069757200

namespace A058212

/-- `abs(n-∑[A008611(n)])` -/
def P15791705450069757200.Spec : Prop :=
  ∀ n, P15791705450069757200.a n = A058212 n

end A058212

/-! ## A058212.P704521108078937930

`round(A007980(n)/2-n)`
-/

namespace A058212.P704521108078937930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007980 n : ℚ) / 2 - (n : ℚ))

end

end A058212.P704521108078937930

namespace A058212

/-- `round(A007980(n)/2-n)` -/
def P704521108078937930.Spec : Prop :=
  ∀ n, P704521108078937930.a n = A058212 n

end A058212

/-! ## A058212.P5720751202203087898

`abs(2*n-A186357(n+1))`
-/

namespace A058212.P5720751202203087898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A186357 (n + 1)|

end

end A058212.P5720751202203087898

namespace A058212

/-- `abs(2*n-A186357(n+1))` -/
def P5720751202203087898.Spec : Prop :=
  ∀ n, P5720751202203087898.a n = A058212 n

end A058212

/-! ## A058212.P9122848014461924785

`floor(A000096(n)/3-(n-1))`
-/

namespace A058212.P9122848014461924785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000096 n : ℚ) / 3 - ((n : ℤ) - 1 : ℚ)⌋

end

end A058212.P9122848014461924785

namespace A058212

/-- `floor(A000096(n)/3-(n-1))` -/
def P9122848014461924785.Spec : Prop :=
  ∀ n, P9122848014461924785.a n = A058212 n

end A058212

/-! ## A058212.P8436785988286166199

`ceil(A000217(n+1)/3-n)`
-/

namespace A058212.P8436785988286166199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000217 (n + 1) : ℚ) / 3 - (n : ℚ)⌉

end

end A058212.P8436785988286166199

namespace A058212

/-- `ceil(A000217(n+1)/3-n)` -/
def P8436785988286166199.Spec : Prop :=
  ∀ n, P8436785988286166199.a n = A058212 n

end A058212

/-! ## A058212.P3804812975736437208

`ceil((A161680(n)+1-n)/3)`
-/

namespace A058212.P3804812975736437208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A161680 n + (1 - (n : ℤ)) : ℚ) / 3⌉

end

end A058212.P3804812975736437208

namespace A058212

/-- `ceil((A161680(n)+1-n)/3)` -/
def P3804812975736437208.Spec : Prop :=
  ∀ n, P3804812975736437208.a n = A058212 n

end A058212

/-! ## A058212.P3803314819837655073

`A004526(A097922(n+2)-(2*n+1))`
-/

namespace A058212.P3803314819837655073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A097922 (n + 2) - (2 * n + 1 : ℤ)).toNat

end

end A058212.P3803314819837655073

namespace A058212

/-- `A004526(A097922(n+2)-(2*n+1))` -/
def P3803314819837655073.Spec : Prop :=
  ∀ n, P3803314819837655073.a n = A058212 n

end A058212

/-!
# A058213: Triangular arrangement of solutions of phi(x) = 2^n (n >= 0), where phi=A000010 is Euler's totient function. Each row corresponds to a particular n and its length is n+2 for 0 <= n <= 31, 32 for n >= 32. (This assumes that there are only 5 Fermat primes.)

The programs for A058213, there is no canonical definition to state claims against.
-/

/-! ## A058213.P9460499736224963223

`filter[A032447(n+1), A336477(#)]`
-/

namespace A058213.P9460499736224963223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336477 (f1 j).toNat = 1) n)

end

end A058213.P9460499736224963223

/-! ## A058213.P9621924794835565188

`filter[A194507(n+1), A336477(#)]`
-/

namespace A058213.P9621924794835565188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194507 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336477 (f1 j).toNat = 1) n)

end

end A058213.P9621924794835565188

/-! ## A058213.P11599438443209449384

`filter[A080541(n+1), A336477(#)]`
-/

namespace A058213.P11599438443209449384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336477 (f1 j).toNat = 1) n)

end

end A058213.P11599438443209449384

/-! ## A058213.P17656490181443490355

`filter[A058812(n), A336477(#)]`
-/

namespace A058213.P17656490181443490355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058812 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336477 (f1 j).toNat = 1) n)

end

end A058213.P17656490181443490355

/-!
# A058214: Sum of solutions of phi(x) = 2^n.

The programs for A058214, there is no canonical definition to state claims against.
-/

/-! ## A058214.P12571564226430980469

`A001317(n)+2*A158875(n)`
-/

namespace A058214.P12571564226430980469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 n + 2 * A158875 n

end

end A058214.P12571564226430980469

/-! ## A058214.P1636419720114175988

`A004729(n)+2*A158875(n)`
-/

namespace A058214.P1636419720114175988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004729 n + 2 * A158875 n

end

end A058214.P1636419720114175988

/-! ## A058214.P16800956910491096635

`A053576(n)+2*A158875(n)`
-/

namespace A058214.P16800956910491096635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053576 n + 2 * A158875 n

end

end A058214.P16800956910491096635

/-! ## A058214.P6653055523372836457

`A158875(n+1)-Δ[A001317(n)]`
-/

namespace A058214.P6653055523372836457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158875 (n + 1) - (f1 (n + 1) - f1 n)

end

end A058214.P6653055523372836457

/-! ## A058214.P2583233744874294181

`A158875(n+1)-Δ[A053576(n)]`
-/

namespace A058214.P2583233744874294181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158875 (n + 1) - (f1 (n + 1) - f1 n)

end

end A058214.P2583233744874294181

/-!
# A058215: Largest solution of phi(x) = 2^n.

The programs for A058215, there is no canonical definition to state claims against.
-/

/-! ## A058215.P16956451376487742678

`record[xor(A201992(n+2), A201992(n))]`
-/

namespace A058215.P16956451376487742678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A201992 (n + 2)) (A201992 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058215.P16956451376487742678

/-! ## A058215.P6774472627135503769

`A000079(n+2)-A000079(A167204(2*(n+1)))`
-/

namespace A058215.P6774472627135503769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 2) - A000079 (A167204 (2 * (n + 1))).toNat

end

end A058215.P6774472627135503769

/-! ## A058215.P4641105039616143690

`A099884(A092754(n+1)+∑[n])`
-/

namespace A058215.P4641105039616143690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099884 (A092754 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A058215.P4641105039616143690

/-! ## A058215.P2260819183185677647

`A099884(∑[or(n+1, A053644(n))])`
-/

namespace A058215.P2260819183185677647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A053644 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099884 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A058215.P2260819183185677647

/-! ## A058215.P18222478030651442661

`A173453(A007318(n))+A058213(A034856(n+1))`
-/

namespace A058215.P18222478030651442661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173453 (A007318 n).toNat + A058213 (A034856 (n + 1)).toNat

end

end A058215.P18222478030651442661

/-!
# A058217: Numbers n such that x^n + x^11 + 2 is irreducible over GF(3).

The programs for A058217, there is no canonical definition to state claims against.
-/

/-! ## A058217.P3064881078086062962

`2*A324338(A000244(n)²)`
-/

namespace A058217.P3064881078086062962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A324338 (A000244 n ^ 2).toNat

end

end A058217.P3064881078086062962

/-!
# A058218: Positive integers that cannot be represented in the form n=5|ab|+a+b for any choice of nonzero integers a and b (positive or negative).

The programs for A058218, there is no canonical definition to state claims against.
-/

/-! ## A058218.P5568447914644492116

`∑[A000120(A007425(A027976(n)))]`
-/

namespace A058218.P5568447914644492116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A007425 (A027976 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058218.P5568447914644492116

/-! ## A058218.P2898767373968381757

`∑[A305973(∏[A323014(3*n+2)])]`
-/

namespace A058218.P2898767373968381757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305973 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058218.P2898767373968381757

/-! ## A058218.P13443149484558673955

`∑[A006519(A056040(round((12*n+3)/17)))]`
-/

namespace A058218.P13443149484558673955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A056040 (SequenceMachineLib.roundAway ((12 * n + 3 : ℚ) / 17)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058218.P13443149484558673955

/-! ## A058218.P12509352791127317913

`∑[A060632(A000523(A020695(n)))]`
-/

namespace A058218.P12509352791127317913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (A000523 (A020695 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058218.P12509352791127317913

/-!
# A058220: Ultra-useful primes: smallest k such that 2^(2^n) - k is prime.

The programs for A058220, there is no canonical definition to state claims against.
-/

/-! ## A058220.P17014344912578400484

`A013603(2^(n+1))`
-/

namespace A058220.P17014344912578400484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013603 (2 ^ (n + 1))

end

end A058220.P17014344912578400484

/-! ## A058220.P2095750246867206999

`or(1, A013603(record[and(-3, 2^n)]))`
-/

namespace A058220.P2095750246867206999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A013603 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A058220.P2095750246867206999

/-! ## A058220.P3030050245460129296

`or(1, A013603(A198633(n)))`
-/

namespace A058220.P3030050245460129296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A013603 (A198633 n).toNat)

end

end A058220.P3030050245460129296

/-! ## A058220.P13339212692462305779

`or(1, A013603(Δ[A126646(n)]))`
-/

namespace A058220.P13339212692462305779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A013603 (f1 (n + 1) - f1 n).toNat)

end

end A058220.P13339212692462305779

/-! ## A058220.P10202720588835991551

`or(1, A013603(record[A171559(n)]))`
-/

namespace A058220.P10202720588835991551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A013603 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A058220.P10202720588835991551

/-!
# A058221: Next-to-smallest k such that 2^(2^n) - k is prime.

The programs for A058221, there is no canonical definition to state claims against.
-/

/-! ## A058221.P9293201904805612763

`A185191(2^(n+1))`
-/

namespace A058221.P9293201904805612763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185191 (2 ^ (n + 1))

end

end A058221.P9293201904805612763

/-! ## A058221.P6195995844677300071

`A185191(Δ[A126646(n)])%A020707(n)`
-/

namespace A058221.P6195995844677300071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185191 (f1 (n + 1) - f1 n).toNat) (A020707 n)

end

end A058221.P6195995844677300071

/-! ## A058221.P52657712171785207

`A185203(n)+A185191(A000079(n+1))`
-/

namespace A058221.P52657712171785207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185203 n + A185191 (A000079 (n + 1)).toNat

end

end A058221.P52657712171785207

/-! ## A058221.P10826090338977387417

`A185213(n)+A185191(A000079(n+1))`
-/

namespace A058221.P10826090338977387417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185213 n + A185191 (A000079 (n + 1)).toNat

end

end A058221.P10826090338977387417

/-! ## A058221.P7060308057844867721

`A185191(A000079(n+1))%A002023(n)`
-/

namespace A058221.P7060308057844867721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185191 (A000079 (n + 1)).toNat) (A002023 n)

end

end A058221.P7060308057844867721

/-!
# A058222: Tree of tournament sequences read across rows.

The programs for A058222, there is no canonical definition to state claims against.
-/

/-! ## A058222.P17331856512191405293

`A064064(lt[A001045(n), A212610(n+3)])`
-/

namespace A058222.P17331856512191405293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212610 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064064 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A058222.P17331856512191405293

/-!
# A058224: Largest d such that the linear programming bound for quantum codes of length n is feasible for some real K>1.

The programs for A058224, there is no canonical definition to state claims against.
-/

/-! ## A058224.P1775724467641509843

`comp[n*and(2, n)]-n`
-/

namespace A058224.P1775724467641509843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A058224.P1775724467641509843

/-! ## A058224.P1894548598129051837

`∑[(xor(1, n)%3)!]-n`
-/

namespace A058224.P1894548598129051837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.xor 1 n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A058224.P1894548598129051837

/-! ## A058224.P14118907361378994890

`∑[C(xor(1, n), 2)%3]+1`
-/

namespace A058224.P14118907361378994890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.xor 1 n) 2 % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A058224.P14118907361378994890

/-! ## A058224.P6308403619575325813

`comp[or(5, n)-2]+1-n`
-/

namespace A058224.P6308403619575325813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 5 n : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + (1 - (n : ℤ))

end

end A058224.P6308403619575325813

/-! ## A058224.P16163024328391704857

`1-(n-comp[or(5, n)-2])`
-/

namespace A058224.P16163024328391704857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 5 n : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ))

end

end A058224.P16163024328391704857

/-! ## A058224.P15739051566441213840

`ceil(∑[((n+1)%6)²/27])`
-/

namespace A058224.P15739051566441213840
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((n + 1) % 6) ^ 2 : ℕ) : ℚ) / 27

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A058224.P15739051566441213840

/-! ## A058224.P15368363271794477552

`or(n²%3, ∑[char[3*n]])`
-/

namespace A058224.P15368363271794477552
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (n ^ 2 % 3) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A058224.P15368363271794477552

/-! ## A058224.P15264470594436192527

`∑[char[xor(1, 3*n+2)]]+1`
-/

namespace A058224.P15264470594436192527
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A058224.P15264470594436192527

/-!
# A058225: Numbers that are inconsummate to some base.

The programs for A058225, there is no canonical definition to state claims against.
-/

/-! ## A058225.P13636961597900321578

`eq[char[A058226(n+1)], A000007(n)]`
-/

namespace A058225.P13636961597900321578
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058226 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A058225.P13636961597900321578

/-! ## A058225.P4831827523490088044

`eq[char[A058226(n+1)], A000038(n)]`
-/

namespace A058225.P4831827523490088044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058226 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A058225.P4831827523490088044

/-! ## A058225.P4703074851518395533

`eq[char[A058226(n+1)], A063524(n+1)]`
-/

namespace A058225.P4703074851518395533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058226 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A058225.P4703074851518395533

/-! ## A058225.P1745523341798528781

`eq[char[A058226(n+1)], A010051(2*(n+1))]`
-/

namespace A058225.P1745523341798528781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058226 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A058225.P1745523341798528781

/-! ## A058225.P1980941754897077907

`eq[char[A058226(n+1)], A151933(n)]`
-/

namespace A058225.P1980941754897077907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058226 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A058225.P1980941754897077907

/-!
# A058226: Panconsummate numbers (consummate in all bases >=2).

The programs for A058226, there is no canonical definition to state claims against.
-/

/-! ## A058226.P11170306059444375203

`eq[char[A058225(n+1)], A000007(n)]`
-/

namespace A058226.P11170306059444375203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058225 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A058226.P11170306059444375203

/-! ## A058226.P7731343242418666961

`eq[char[A058225(n+1)], A000038(n)]`
-/

namespace A058226.P7731343242418666961
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058225 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A058226.P7731343242418666961

/-! ## A058226.P12933834842843153579

`eq[char[A058225(n+1)], A063524(n+1)]`
-/

namespace A058226.P12933834842843153579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058225 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A058226.P12933834842843153579

/-! ## A058226.P12881784134449903076

`eq[char[A058225(n+1)], 2-A000122(n²)]`
-/

namespace A058226.P12881784134449903076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058225 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000122 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A058226.P12881784134449903076

/-! ## A058226.P14849742481753277637

`eq[char[A058225(n+1)], A000122(n²+n)]`
-/

namespace A058226.P14849742481753277637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058225 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A058226.P14849742481753277637

/-!
# A058227: Number of edges in all simple (loopless) paths, connecting any node with all the remaining ones in optimal graphs of degree 4.

The programs for A058227, the canonical program `A058227.P11299073305986486307` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058227 has offset 1).

The definition of A058227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 320 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058227.P10901337134712234447

`∑[(n+1)*∑[2^(n+2)]]`
-/

namespace A058227.P10901337134712234447
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058227.P10901337134712234447

namespace A058227

/-- `∑[(n+1)*∑[2^(n+2)]]` -/
def P10901337134712234447.Spec : Prop :=
  ∀ n, (P10901337134712234447.a n : ℤ) = A058227 (n + 1)

end A058227

/-! ## A058227.P12608627332927567765

`floor(∑[(n+1)*∑[2*a(n-1)]])` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A058227.P12608627332927567765
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058227.P12608627332927567765

namespace A058227

/-- `floor(∑[(n+1)*∑[2*a(n-1)]])` -/
def P12608627332927567765.Spec : Prop :=
  ∀ n, (P12608627332927567765.a n : ℤ) = A058227 (n + 1)

end A058227

/-! ## A058227.P13185016757562300946

`2*∑[(n+1)*∑[2*a(n-1)]]` with `a(0)=2`
-/

namespace A058227.P13185016757562300946
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A058227.P13185016757562300946

namespace A058227

/-- `2*∑[(n+1)*∑[2*a(n-1)]]` -/
def P13185016757562300946.Spec : Prop :=
  ∀ n, (P13185016757562300946.a n : ℤ) = A058227 (n + 1)

end A058227

/-! ## A058227.P11299073305986486307

`a(n-1)+4*(n+1)*(2^(n+1)-1)` with `a(0)=4`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A058227

/-- `a(n-1)+4*(n+1)*(2^(n+1)-1)` -/
def P11299073305986486307.Spec : Prop :=
  ∀ n, P11299073305986486307.a n = A058227 (n + 1)

theorem P11299073305986486307.correct : P11299073305986486307.Spec := by
  intro n
  simp only [A058227, Nat.add_sub_cancel]

end A058227

/-! ## A058227.P9241976432730366050

`4*∑[A066524(n+1)]`
-/

namespace A058227.P9241976432730366050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066524 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A058227.P9241976432730366050

namespace A058227

/-- `4*∑[A066524(n+1)]` -/
def P9241976432730366050.Spec : Prop :=
  ∀ n, P9241976432730366050.a n = A058227 (n + 1)

end A058227

/-! ## A058227.P767681354648576047

`4*∑[(n+1)*∑[A000079(n)]]`
-/

namespace A058227.P767681354648576047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A058227.P767681354648576047

namespace A058227

/-- `4*∑[(n+1)*∑[A000079(n)]]` -/
def P767681354648576047.Spec : Prop :=
  ∀ n, P767681354648576047.a n = A058227 (n + 1)

end A058227

/-! ## A058227.P11839663345088947237

`4*(∑[(n+1)*record[A324715(n+1)]]+1)`
-/

namespace A058227.P11839663345088947237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324715 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A058227.P11839663345088947237

namespace A058227

/-- `4*(∑[(n+1)*record[A324715(n+1)]]+1)` -/
def P11839663345088947237.Spec : Prop :=
  ∀ n, P11839663345088947237.a n = A058227 (n + 1)

end A058227

/-!
# A058234: Numbers n such that x^n + x^9 + 2 is irreducible over GF(3).

The programs for A058234, there is no canonical definition to state claims against.
-/

/-! ## A058234.P13614414263894120420

`A381076(A032309(n+1))`
-/

namespace A058234.P13614414263894120420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381076 (A032309 (n + 1)).toNat

end

end A058234.P13614414263894120420

/-!
# A058239: (7^n)-th prime.

The programs for A058239, there is no canonical definition to state claims against.
-/

/-! ## A058239.P13921641371707925103

`A347000(eq[5, A025581(n)])`
-/

namespace A058239.P13921641371707925103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058239.P13921641371707925103

/-! ## A058239.P8548103871412568428

`A347000(eq[5, A129713(n)])`
-/

namespace A058239.P8548103871412568428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058239.P8548103871412568428

/-! ## A058239.P13846035681638333954

`A347000(eq[6, A193739(n)])`
-/

namespace A058239.P13846035681638333954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058239.P13846035681638333954

/-! ## A058239.P13241924843848533282

`A347000(A000217(n+6)-6)`
-/

namespace A058239.P13241924843848533282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (A000217 (n + 6) - 6).toNat

end

end A058239.P13241924843848533282

/-! ## A058239.P10314649437171831498

`A347000(Δ[A055831(n+5)]-1)`
-/

namespace A058239.P10314649437171831498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (f1 (n + 1) - f1 n - 1).toNat

end

end A058239.P10314649437171831498

/-!
# A058241: Number of sets of n positive integers that can be placed along a circle such that the set of sums of adjacent integers forms { 1, 2, ..., n^2-n+1 }.

The programs for A058241, there is no canonical definition to state claims against.
-/

/-! ## A058241.P18426963555701170928

`ceil(A353108(n+1)/2)`
-/

namespace A058241.P18426963555701170928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A353108 (n + 1) : ℚ) / 2⌉

end

end A058241.P18426963555701170928

/-! ## A058241.P742317818539052007

`round(A351690(n+1)/A001844(n))`
-/

namespace A058241.P742317818539052007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A351690 (n + 1) : ℚ) / (A001844 n : ℚ))

end

end A058241.P742317818539052007

/-! ## A058241.P16599507614160328222

`ceil(A325787(A004136(n+1))/2)`
-/

namespace A058241.P16599507614160328222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A325787 (A004136 (n + 1)).toNat : ℚ) / 2⌉

end

end A058241.P16599507614160328222

/-! ## A058241.P13228926789019569022

`A325787(A002061(n+1))/A053230(n+1)`
-/

namespace A058241.P13228926789019569022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325787 (A002061 (n + 1)).toNat : ℚ) / (A053230 (n + 1) : ℚ)

end

end A058241.P13228926789019569022

/-! ## A058241.P17513306920094364367

`A325787(A004136(n+1))/A053230(n+1)`
-/

namespace A058241.P17513306920094364367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325787 (A004136 (n + 1)).toNat : ℚ) / (A053230 (n + 1) : ℚ)

end

end A058241.P17513306920094364367

/-!
# A058244: 11^n-th prime.

The programs for A058244, there is no canonical definition to state claims against.
-/

/-! ## A058244.P16793322471724716080

`A347000(eq[9, A025581(n)])`
-/

namespace A058244.P16793322471724716080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058244.P16793322471724716080

/-! ## A058244.P3182553428418075095

`A347000(eq[10, A193739(n)])`
-/

namespace A058244.P3182553428418075095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058244.P3182553428418075095

/-! ## A058244.P1168077606401673465

`A347000(eq[10, A195663(n)])`
-/

namespace A058244.P1168077606401673465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058244.P1168077606401673465

/-! ## A058244.P3586241571170993960

`A347000(eq[10, A004736(n+1)])`
-/

namespace A058244.P3586241571170993960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058244.P3586241571170993960

/-! ## A058244.P3521860120695141626

`A347000(eq[9, A002260(n+1)]+2*n+1)`
-/

namespace A058244.P3521860120695141626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (2 * n + 1))

end

end A058244.P3521860120695141626

/-!
# A058245: (12^n)-th prime.

The programs for A058245, there is no canonical definition to state claims against.
-/

/-! ## A058245.P17010742500358749657

`A347000(eq[10, A025581(n)])`
-/

namespace A058245.P17010742500358749657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058245.P17010742500358749657

/-! ## A058245.P3655013307494055035

`A347000(eq[11, A193739(n)])`
-/

namespace A058245.P3655013307494055035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058245.P3655013307494055035

/-! ## A058245.P15351747480084426423

`A347000(eq[11, A195663(n)])`
-/

namespace A058245.P15351747480084426423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058245.P15351747480084426423

/-! ## A058245.P9585179582242853762

`A347000(eq[11, A004736(n+1)])`
-/

namespace A058245.P9585179582242853762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058245.P9585179582242853762

/-!
# A058246: (13^n)-th prime.

The programs for A058246, there is no canonical definition to state claims against.
-/

/-! ## A058246.P12148726288952341590

`A347000(eq[11, A025581(n)])`
-/

namespace A058246.P12148726288952341590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058246.P12148726288952341590

/-! ## A058246.P15144773406603781495

`A347000(eq[12, A193739(n)])`
-/

namespace A058246.P15144773406603781495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058246.P15144773406603781495

/-! ## A058246.P12833238557942883529

`A347000(eq[12, A195663(n)])`
-/

namespace A058246.P12833238557942883529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058246.P12833238557942883529

/-! ## A058246.P4173247539194873373

`A347000(eq[23, A099375(n)])`
-/

namespace A058246.P4173247539194873373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058246.P4173247539194873373

/-!
# A058247: Number of primes <= 11^n.

The programs for A058247, there is no canonical definition to state claims against.
-/

/-! ## A058247.P12835426077874650780

`A000720(11^n)`
-/

namespace A058247.P12835426077874650780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (11 ^ n)

end

end A058247.P12835426077874650780

/-!
# A058248: Number of primes <= 12^n.

The programs for A058248, there is no canonical definition to state claims against.
-/

/-! ## A058248.P18013404388942267803

`A000720(12^n)`
-/

namespace A058248.P18013404388942267803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (12 ^ n)

end

end A058248.P18013404388942267803

/-!
# A058249: (Smallest prime >= 2^n) - (largest prime <= 2^n).

The programs for A058249, there is no canonical definition to state claims against.
-/

/-! ## A058249.P13656201722121013867

`A092131(n+1)+A013603(n+1)`
-/

namespace A058249.P13656201722121013867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092131 (n + 1) + A013603 (n + 1)

end

end A058249.P13656201722121013867

/-! ## A058249.P592512386856337970

`A104080(n+1)-A014234(n+1)`
-/

namespace A058249.P592512386856337970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104080 (n + 1) - A014234 (n + 1)

end

end A058249.P592512386856337970

/-! ## A058249.P17430690794062445399

`A013603(n+1)+A104080(n+1)-A000079(n+1)`
-/

namespace A058249.P17430690794062445399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013603 (n + 1) + (A104080 (n + 1) - A000079 (n + 1))

end

end A058249.P17430690794062445399

/-! ## A058249.P14993259537138647392

`A092507(n+1)%A014234(n+1)`
-/

namespace A058249.P14993259537138647392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092507 (n + 1)) (A014234 (n + 1))

end

end A058249.P14993259537138647392

/-! ## A058249.P10997077249950340840

`2*A104080(n+1)-A092507(n+1)`
-/

namespace A058249.P10997077249950340840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104080 (n + 1) - A092507 (n + 1)

end

end A058249.P10997077249950340840

/-!
# A058250: GCD of n-th primorial number and its totient.

The programs for A058250, the canonical program `A058250.P143675427339852433` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058250 has offset 0).

The definition of A058250 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058250.P1245959182994226223

`A005867(n)/A038110(n+1)`
-/

namespace A058250.P1245959182994226223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005867 n : ℚ) / (A038110 (n + 1) : ℚ)

end

end A058250.P1245959182994226223

namespace A058250

/-- `A005867(n)/A038110(n+1)` -/
def P1245959182994226223.Spec : Prop :=
  ∀ n, P1245959182994226223.a n = (A058250 n : ℚ)

end A058250

/-! ## A058250.P7078996756873702717

`gcd(A002110(n), A005867(n))`
-/

namespace A058250.P7078996756873702717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002110 n) (A005867 n)

end

end A058250.P7078996756873702717

namespace A058250

/-- `gcd(A002110(n), A005867(n))` -/
def P7078996756873702717.Spec : Prop :=
  ∀ n, (P7078996756873702717.a n : ℤ) = A058250 n

end A058250

/-! ## A058250.P143675427339852433

`lcm(a(n-1), A006530(A000040(n)-1))` with `a(0)=1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A058250

/-- `lcm(a(n-1), A006530(A000040(n)-1))` -/
def P143675427339852433.Spec : Prop :=
  ∀ n, (P143675427339852433.a n : ℤ) = A058250 n

theorem P143675427339852433.correct : P143675427339852433.Spec := by
  intro n
  simp only [A058250]

end A058250

/-! ## A058250.P11064383464598085464

`A002110(n)/A060753(n+1)`
-/

namespace A058250.P11064383464598085464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 n : ℚ) / (A060753 (n + 1) : ℚ)

end

end A058250.P11064383464598085464

namespace A058250

/-- `A002110(n)/A060753(n+1)` -/
def P11064383464598085464.Spec : Prop :=
  ∀ n, P11064383464598085464.a n = (A058250 n : ℚ)

end A058250

/-! ## A058250.P10155635227499110970

`A000040(n+1)/A038111(n+1)*A002110(n)`
-/

namespace A058250.P10155635227499110970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / (A038111 (n + 1) : ℚ) * (A002110 n : ℚ)

end

end A058250.P10155635227499110970

namespace A058250

/-- `A000040(n+1)/A038111(n+1)*A002110(n)` -/
def P10155635227499110970.Spec : Prop :=
  ∀ n, P10155635227499110970.a n = (A058250 n : ℚ)

end A058250

/-! ## A058250.P9187672094860289050

`A002110(n+1)/A038111(n+1)`
-/

namespace A058250.P9187672094860289050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (n + 1) : ℚ) / (A038111 (n + 1) : ℚ)

end

end A058250.P9187672094860289050

namespace A058250

/-- `A002110(n+1)/A038111(n+1)` -/
def P9187672094860289050.Spec : Prop :=
  ∀ n, P9187672094860289050.a n = (A058250 n : ℚ)

end A058250

/-! ## A058250.P2721018489860641542

`gcd(∏[A006093(n+1)+1], A058254(n))`
-/

namespace A058250.P2721018489860641542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ j ∈ Finset.range (n + 1), f1 j) (A058254 n)

end

end A058250.P2721018489860641542

namespace A058250

/-- `gcd(∏[A006093(n+1)+1], A058254(n))` -/
def P2721018489860641542.Spec : Prop :=
  ∀ n, (P2721018489860641542.a n : ℤ) = A058250 n

end A058250

/-! ## A058250.P978826004144716459

`(A053144(n+1)+A005867(n+1))/A038111(n+1)`
-/

namespace A058250.P978826004144716459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053144 (n + 1) + A005867 (n + 1) : ℚ) / (A038111 (n + 1) : ℚ)

end

end A058250.P978826004144716459

namespace A058250

/-- `(A053144(n+1)+A005867(n+1))/A038111(n+1)` -/
def P978826004144716459.Spec : Prop :=
  ∀ n, P978826004144716459.a n = (A058250 n : ℚ)

end A058250

/-!
# A058251: LCM of n-th primorial number and its Euler totient.

The programs for A058251, there is no canonical definition to state claims against.
-/

/-! ## A058251.P2816861864388605484

`lcm(A002110(n), A005867(n))`
-/

namespace A058251.P2816861864388605484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002110 n) (A005867 n)

end

end A058251.P2816861864388605484

/-! ## A058251.P17701468243632938654

`A009262(A002110(n))`
-/

namespace A058251.P17701468243632938654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009262 (A002110 n).toNat

end

end A058251.P17701468243632938654

/-! ## A058251.P3908613888348671881

`A002110(n)*A038110(n+1)`
-/

namespace A058251.P3908613888348671881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n * A038110 (n + 1)

end

end A058251.P3908613888348671881

/-! ## A058251.P18204303994885537222

`A005867(n)*A060753(n+1)`
-/

namespace A058251.P18204303994885537222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005867 n * A060753 (n + 1)

end

end A058251.P18204303994885537222

/-! ## A058251.P10229956331273999727

`A002110(n)/A058250(n)*A005867(n)`
-/

namespace A058251.P10229956331273999727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 n : ℚ) / (A058250 n : ℚ) * (A005867 n : ℚ)

end

end A058251.P10229956331273999727

/-!
# A058253: Primes p such that 4^p - 3 is prime.

The programs for A058253, there is no canonical definition to state claims against.
-/

/-! ## A058253.P13628201487634815858

`p?[A059266(n+1)]`
-/

namespace A058253.P13628201487634815858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A058253.P13628201487634815858

/-! ## A058253.P17631507214406791814

`record[p?[A059266(A007306(n))]]`
-/

namespace A058253.P17631507214406791814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059266 (A007306 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058253.P17631507214406791814

/-! ## A058253.P6162158113310594782

`p?[record[A059266(A022446(n))]]`
-/

namespace A058253.P6162158113310594782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059266 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A058253.P6162158113310594782

/-! ## A058253.P7314803533433429918

`p?[record[A059266(A134478(n))]]`
-/

namespace A058253.P7314803533433429918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059266 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A058253.P7314803533433429918

/-! ## A058253.P18084019997154575647

`filter[A059266(n+1), A010051(#)]`
-/

namespace A058253.P18084019997154575647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A058253.P18084019997154575647

/-!
# A058254: a(n) = lcm{prime(i)-1, i=1..n}.

The programs for A058254, the canonical program `A058254.P3014103695995548683` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058254 has offset 0).

The definition of A058254 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058254.P3014103695995548683

`lcm(a(n-1), A006093(n))` with `a(0)=1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A058254

/-- `lcm(a(n-1), A006093(n))` -/
def P3014103695995548683.Spec : Prop :=
  ∀ n, (P3014103695995548683.a n : ℤ) = A058254 n

theorem P3014103695995548683.correct : P3014103695995548683.Spec := by
  intro n
  simp only [A058254]

end A058254

/-! ## A058254.P13460985307000151717

`a(n-1)*A058256(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A058254.P13460985307000151717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A058256 (n - 1)

end

end A058254.P13460985307000151717

namespace A058254

/-- `a(n-1)*A058256(n-1)` -/
def P13460985307000151717.Spec : Prop :=
  ∀ n, P13460985307000151717.a n = A058254 n

end A058254

/-! ## A058254.P5658701943562334957

`lcm(1-A008578(n+1), floor(a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A058254.P5658701943562334957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (1 - A008578 (n + 1)) (a (n - 1) : ℤ)

end

end A058254.P5658701943562334957

namespace A058254

/-- `lcm(1-A008578(n+1), floor(a(n-1)))` -/
def P5658701943562334957.Spec : Prop :=
  ∀ n, (P5658701943562334957.a n : ℤ) = A058254 n

end A058254

/-! ## A058254.P1479951259408946022

`lcm(-a(n-1), eq[n+1, A006530(n+1)])` with `a(0)=1`
-/

namespace A058254.P1479951259408946022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (-(a (n - 1) : ℤ)) (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A058254.P1479951259408946022

namespace A058254

/-- `lcm(-a(n-1), eq[n+1, A006530(n+1)])` -/
def P1479951259408946022.Spec : Prop :=
  ∀ n, (P1479951259408946022.a n : ℤ) = A058254 n

end A058254

/-! ## A058254.P34598128922085553

`lcm(ceil(a(n-1)), eq[n+1, A020639(n+1)])` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A058254.P34598128922085553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (a (n - 1)) (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058254.P34598128922085553

namespace A058254

/-- `lcm(ceil(a(n-1)), eq[n+1, A020639(n+1)])` -/
def P34598128922085553.Spec : Prop :=
  ∀ n, (P34598128922085553.a n : ℤ) = A058254 n

end A058254

/-! ## A058254.P11037273929842041070

`lcm(round(a(n-1)), eq[n+1, A014963(n+1)])` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A058254.P11037273929842041070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (a (n - 1)) (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058254.P11037273929842041070

namespace A058254

/-- `lcm(round(a(n-1)), eq[n+1, A014963(n+1)])` -/
def P11037273929842041070.Spec : Prop :=
  ∀ n, (P11037273929842041070.a n : ℤ) = A058254 n

end A058254

/-! ## A058254.P14512192531192584183

`A362266(∑[abs(1-n)])`
-/

namespace A058254.P14512192531192584183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362266 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A058254.P14512192531192584183

namespace A058254

/-- `A362266(∑[abs(1-n)])` -/
def P14512192531192584183.Spec : Prop :=
  ∀ n, P14512192531192584183.a n = A058254 n

end A058254

/-!
# A058255: Distinct values of lcm_{i=1..n} (p(i)-1), where p() are the primes.

The programs for A058255, there is no canonical definition to state claims against.
-/

/-! ## A058255.P5857621700770587118

`record[A058254(A008611(n))]`
-/

namespace A058255.P5857621700770587118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058254 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058255.P5857621700770587118

/-! ## A058255.P2758184466084999772

`record[A058254(A028242(n))]`
-/

namespace A058255.P2758184466084999772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058254 (A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058255.P2758184466084999772

/-! ## A058255.P16219384962905350451

`record[A058254(A057979(n))]`
-/

namespace A058255.P16219384962905350451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058254 (A057979 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058255.P16219384962905350451

/-! ## A058255.P2116578192793962539

`record[A058254(A066628(n))]`
-/

namespace A058255.P2116578192793962539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058254 (A066628 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058255.P2116578192793962539

/-! ## A058255.P16207036395784776639

`record[A058254(A078898(n))]`
-/

namespace A058255.P16207036395784776639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058254 (A078898 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058255.P16207036395784776639

/-! ## A058255.P9481464910024251990

`record[A058254(A082853(n))]`
-/

namespace A058255.P9481464910024251990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058254 (A082853 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058255.P9481464910024251990

/-! ## A058255.P2239200149290687466

`record[A058254(A110659(n))]`
-/

namespace A058255.P2239200149290687466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058254 (A110659 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058255.P2239200149290687466

/-! ## A058255.P9758048072037422295

`record[A058254(A141256(n))]`
-/

namespace A058255.P9758048072037422295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058254 (A141256 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058255.P9758048072037422295

/-! ## A058255.P6688169868844335108

`record[A058254(A173517(n))]`
-/

namespace A058255.P6688169868844335108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058254 (A173517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058255.P6688169868844335108

/-! ## A058255.P5366866450116819419

`record[A058254(A027750(n+1))]`
-/

namespace A058255.P5366866450116819419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058254 (A027750 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058255.P5366866450116819419

/-!
# A058256: a(n) = A058254(n+1)/A058254(n).

The programs for A058256, the canonical program `A058256.P14492067050455526603` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058256 has offset 1).

The definition of A058256 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058254, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A058256.P14492067050455526603

`A058254(n+2)/A058254(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A058256

/-- `A058254(n+2)/A058254(n+1)` -/
def P14492067050455526603.Spec : Prop :=
  ∀ n, P14492067050455526603.a n = (A058256 (n + 1) : ℚ)

end A058256

/-! ## A058256.P9655494516784168114

`ratio[A058254(n+1)]`
-/

namespace A058256.P9655494516784168114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058254 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A058256.P9655494516784168114

namespace A058256

/-- `ratio[A058254(n+1)]` -/
def P9655494516784168114.Spec : Prop :=
  ∀ n, P9655494516784168114.a n = (A058256 (n + 1) : ℚ)

end A058256

/-! ## A058256.P15929067023400045354

`ratio[lcm(a(n-1), A006093(n+1))]` with `a(0)=1`
-/

namespace A058256.P15929067023400045354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.lcm (f1 (n - 1) : ℤ) (A006093 (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A058256.P15929067023400045354

namespace A058256

/-- `ratio[lcm(a(n-1), A006093(n+1))]` -/
def P15929067023400045354.Spec : Prop :=
  ∀ n, P15929067023400045354.a n = (A058256 (n + 1) : ℚ)

end A058256

/-! ## A058256.P10787060201480531189

`ratio[ratio[A058254(n)]*A058254(n)]`
-/

namespace A058256.P10787060201480531189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058254 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ) * (A058254 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) / f1 n

end

end A058256.P10787060201480531189

namespace A058256

/-- `ratio[ratio[A058254(n)]*A058254(n)]` -/
def P10787060201480531189.Spec : Prop :=
  ∀ n, P10787060201480531189.a n = (A058256 (n + 1) : ℚ)

end A058256

/-!
# A058257: Triangle read by rows: this is a variant of A008280 in which 2 rows go from left to right, 2 from right to left, 2 from left to right, etc.

The programs for A058257, there is no canonical definition to state claims against.
-/

/-! ## A058257.P13670274853204731604

`A269241(A229180(n))`
-/

namespace A058257.P13670274853204731604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269241 (A229180 n).toNat

end

end A058257.P13670274853204731604

/-! ## A058257.P15640955690944254340

`A275851(xor(A008459(n), A285113(n)))`
-/

namespace A058257.P15640955690944254340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275851 (Int.xor (A008459 n) (A285113 n)).toNat

end

end A058257.P15640955690944254340

/-! ## A058257.P14961865628006223285

`and(A089652(n+1), A089688(A005701(n)))`
-/

namespace A058257.P14961865628006223285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A089652 (n + 1)) (A089688 (A005701 n).toNat)

end

end A058257.P14961865628006223285

/-! ## A058257.P1046876764050467227

`and(A185304(A016116(n)), A201361(n+1))`
-/

namespace A058257.P1046876764050467227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185304 (A016116 n).toNat) (A201361 (n + 1))

end

end A058257.P1046876764050467227

/-!
# A058258: The 2-Up sequence: formed from final entries in rows of A058257.

The programs for A058258, there is no canonical definition to state claims against.
-/

/-! ## A058258.P10299138635920468893

`A229892(∑[C(n, a(n-1))])` with `a(0)=4`
-/

namespace A058258.P10299138635920468893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  Nat.choose n (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229892 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A058258.P10299138635920468893

/-! ## A058258.P6302846696055595127

`A229892(A238531(n)+n)`
-/

namespace A058258.P6302846696055595127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229892 (A238531 n + (n : ℤ)).toNat

end

end A058258.P6302846696055595127

/-! ## A058258.P12347879846380932893

`A229892(A133263(A233583(n+1)))`
-/

namespace A058258.P12347879846380932893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229892 (A133263 (A233583 (n + 1)).toNat).toNat

end

end A058258.P12347879846380932893

/-! ## A058258.P13827736294108228881

`A229892(A130130(n)+A000217(n))`
-/

namespace A058258.P13827736294108228881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229892 (A130130 n + A000217 n).toNat

end

end A058258.P13827736294108228881

/-! ## A058258.P18184879669697533859

`A229892(A000124(n)-A134824(n))`
-/

namespace A058258.P18184879669697533859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229892 (A000124 n - A134824 n).toNat

end

end A058258.P18184879669697533859

/-! ## A058258.P10068293295773213964

`A229892(A133263(n)%A000079(n))`
-/

namespace A058258.P10068293295773213964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229892 (Int.tmod (A133263 n) (A000079 n)).toNat

end

end A058258.P10068293295773213964

/-! ## A058258.P1109939017971644512

`A229892(and(A133263(n), A255047(n)))`
-/

namespace A058258.P1109939017971644512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229892 (Int.land (A133263 n) (A255047 n)).toNat

end

end A058258.P1109939017971644512

/-! ## A058258.P9712101400208233423

`A229892(and(A152950(n+1)-1, A103456(n)))`
-/

namespace A058258.P9712101400208233423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229892 (Int.land (A152950 (n + 1) - 1) (A103456 n)).toNat

end

end A058258.P9712101400208233423

/-!
# A058259: Number of split semiorders on n points.

The programs for A058259, there is no canonical definition to state claims against.
-/

/-! ## A058259.P4447764753261928464

`A330226(a(n-1))+2*a(n-1)` with `a(0)=1`
-/

namespace A058259.P4447764753261928464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A330226 (a (n - 1)).toNat + 2 * a (n - 1)

end

end A058259.P4447764753261928464

/-! ## A058259.P7988417015160573591

`A325354(2^n-1)+comp[n*n%2+3]`
-/

namespace A058259.P7988417015160573591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 2) + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325354 (2 ^ n - 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A058259.P7988417015160573591

/-!
# A058260: Number of minimal forbidden posets for split semiorders on n points.

The programs for A058260, there is no canonical definition to state claims against.
-/

/-! ## A058260.P5086372007196636918

`ceil(2^(n-1))%A000177(2^n-n)`
-/

namespace A058260.P5086372007196636918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ (A000177 (2 ^ n - n))

end

end A058260.P5086372007196636918

/-! ## A058260.P4351103120297561897

`A025437(A183118(n))`
-/

namespace A058260.P4351103120297561897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 (A183118 n).toNat

end

end A058260.P4351103120297561897

/-! ## A058260.P7063257775119418202

`A025437(A183125(n))`
-/

namespace A058260.P7063257775119418202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 (A183125 n).toNat

end

end A058260.P7063257775119418202

/-! ## A058260.P3403986853831514079

`A289814(A053445(∑[n]))`
-/

namespace A058260.P3403986853831514079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A053445 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A058260.P3403986853831514079

/-! ## A058260.P16637423695427512868

`A308069(A153114(n+2))`
-/

namespace A058260.P16637423695427512868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308069 (A153114 (n + 2)).toNat

end

end A058260.P16637423695427512868

/-!
# A058261: a(n) = n times the Collatz number of n (as given in A006577).

The programs for A058261, there is no canonical definition to state claims against.
-/

/-! ## A058261.P16119487837770511674

`(n+1)*A006577(n+1)`
-/

namespace A058261.P16119487837770511674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A006577 (n + 1)

end

end A058261.P16119487837770511674

/-! ## A058261.P12986716301872579352

`(n+1)*(A008908(n+1)-1)`
-/

namespace A058261.P12986716301872579352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A008908 (n + 1) - 1)

end

end A058261.P12986716301872579352

/-! ## A058261.P18228155342883615885

`(n+1)*A023443(A008908(n+1))`
-/

namespace A058261.P18228155342883615885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A023443 (A008908 (n + 1)).toNat

end

end A058261.P18228155342883615885

/-! ## A058261.P6674108241438491392

`(n+1)*A289207(A008908(n+1)+1)`
-/

namespace A058261.P6674108241438491392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A289207 (A008908 (n + 1) + 1).toNat

end

end A058261.P6674108241438491392

/-! ## A058261.P7753728466629237013

`(n+1)*(A139399(n+1)+A130130(n))`
-/

namespace A058261.P7753728466629237013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A139399 (n + 1) + A130130 n)

end

end A058261.P7753728466629237013

/-! ## A058261.P7922952735705244969

`(n+1)*(A222597(n+1)+A076228(n+1))`
-/

namespace A058261.P7922952735705244969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A222597 (n + 1) + A076228 (n + 1))

end

end A058261.P7922952735705244969

/-! ## A058261.P8802900123383755474

`(n+1)*(A006666(n+1)+A078719(n+1)-1)`
-/

namespace A058261.P8802900123383755474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A006666 (n + 1) + (A078719 (n + 1) - 1))

end

end A058261.P8802900123383755474

/-! ## A058261.P11912979471774840218

`(n+1)*(2*A006666(n+1)-A220071(n+1))`
-/

namespace A058261.P11912979471774840218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 * A006666 (n + 1) - A220071 (n + 1))

end

end A058261.P11912979471774840218

/-! ## A058261.P3701851494173147529

`A006577(A008619(2*n))*A008619(2*n)`
-/

namespace A058261.P3701851494173147529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A008619 (2 * n)).toNat * A008619 (2 * n)

end

end A058261.P3701851494173147529

/-! ## A058261.P5103517688035714656

`A006577(A027656(2*n))*A027656(2*n)`
-/

namespace A058261.P5103517688035714656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A027656 (2 * n)).toNat * A027656 (2 * n)

end

end A058261.P5103517688035714656

/-! ## A058261.P5719109044015322846

`A006577(A028242(2*n))*A028242(2*n)`
-/

namespace A058261.P5719109044015322846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A028242 (2 * n)).toNat * A028242 (2 * n)

end

end A058261.P5719109044015322846

/-! ## A058261.P6561154465074645324

`(n+1)*A344276(3*(n+1))`
-/

namespace A058261.P6561154465074645324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A344276 (3 * (n + 1))

end

end A058261.P6561154465074645324

/-! ## A058261.P2620124346879805768

`A139399(4*(n+1))*(n+1)`
-/

namespace A058261.P2620124346879805768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (4 * (n + 1)) * (n + 1 : ℤ)

end

end A058261.P2620124346879805768

/-! ## A058261.P16585324945987095473

`(n+1)*A352890(A005940(n+2))`
-/

namespace A058261.P16585324945987095473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A352890 (A005940 (n + 2)).toNat

end

end A058261.P16585324945987095473

/-! ## A058261.P5314440345548288369

`(n+1)*A210516(∑[n]+1)`
-/

namespace A058261.P5314440345548288369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A210516 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A058261.P5314440345548288369

/-!
# A058262: a(n) is the quotient obtained when the totient of primorial (that is, the product of p-1 values) is divided by the LCM of the same p-1 values.

The programs for A058262, there is no canonical definition to state claims against.
-/

/-! ## A058262.P3109699264785857110

`∏[gcd(A006093(n+1), A058254(n))]`
-/

namespace A058262.P3109699264785857110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006093 (n + 1)) (A058254 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A058262.P3109699264785857110

/-! ## A058262.P7090152895817367339

`A006093(n+1)/A058254(n+1)*A005867(n)`
-/

namespace A058262.P7090152895817367339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) : ℚ) / (A058254 (n + 1) : ℚ) * (A005867 n : ℚ)

end

end A058262.P7090152895817367339

/-! ## A058262.P6532598684856063310

`A005867(n+1)/A058254(n+1)`
-/

namespace A058262.P6532598684856063310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005867 (n + 1) : ℚ) / (A058254 (n + 1) : ℚ)

end

end A058262.P6532598684856063310

/-! ## A058262.P6745968815682708063

`∏[A006093(n+1)]/A058254(n+1)`
-/

namespace A058262.P6745968815682708063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A058254 (n + 1) : ℚ)

end

end A058262.P6745968815682708063

/-! ## A058262.P8210414786592623839

`∏[A028310(A000040(n+1)-1)]/A058254(n+1)`
-/

namespace A058262.P8210414786592623839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A000040 (n + 1) - 1).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A058254 (n + 1) : ℚ)

end

end A058262.P8210414786592623839

/-!
# A058263: a(n) = gcd(prime(n) - 1, prime(n+1) - 1).

The programs for A058263, the canonical program `A058263.P9367410091000207511` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058263 has offset 1).

The definition of A058263 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058263.P9367410091000207511

`gcd(A006093(n+1), A006093(n+2))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A058263

/-- `gcd(A006093(n+1), A006093(n+2))` -/
def P9367410091000207511.Spec : Prop :=
  ∀ n, (P9367410091000207511.a n : ℤ) = A058263 (n + 1)

theorem P9367410091000207511.correct : P9367410091000207511.Spec := by
  intro n
  simp only [A058263, Nat.add_sub_cancel]

end A058263

/-! ## A058263.P3019807974416840625

`A083553(n+1)/A083554(n+1)`
-/

namespace A058263.P3019807974416840625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083553 (n + 1) : ℚ) / (A083554 (n + 1) : ℚ)

end

end A058263.P3019807974416840625

namespace A058263

/-- `A083553(n+1)/A083554(n+1)` -/
def P3019807974416840625.Spec : Prop :=
  ∀ n, P3019807974416840625.a n = (A058263 (n + 1) : ℚ)

end A058263

/-! ## A058263.P8652507365852062182

`A083554(n+1)/A083555(n+1)`
-/

namespace A058263.P8652507365852062182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083554 (n + 1) : ℚ) / (A083555 (n + 1) : ℚ)

end

end A058263.P8652507365852062182

namespace A058263

/-- `A083554(n+1)/A083555(n+1)` -/
def P8652507365852062182.Spec : Prop :=
  ∀ n, P8652507365852062182.a n = (A058263 (n + 1) : ℚ)

end A058263

/-! ## A058263.P10245347506721063533

`gcd(A037166(n+1), A037167(n+1))`
-/

namespace A058263.P10245347506721063533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037166 (n + 1)) (A037167 (n + 1))

end

end A058263.P10245347506721063533

namespace A058263

/-- `gcd(A037166(n+1), A037167(n+1))` -/
def P10245347506721063533.Spec : Prop :=
  ∀ n, (P10245347506721063533.a n : ℤ) = A058263 (n + 1)

end A058263

/-! ## A058263.P1868808150567019055

`gcd(A036689(n+1), A062235(n+1))`
-/

namespace A058263.P1868808150567019055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036689 (n + 1)) (A062235 (n + 1))

end

end A058263.P1868808150567019055

namespace A058263

/-- `gcd(A036689(n+1), A062235(n+1))` -/
def P1868808150567019055.Spec : Prop :=
  ∀ n, (P1868808150567019055.a n : ℤ) = A058263 (n + 1)

end A058263

/-! ## A058263.P3775852008548052371

`gcd(A138403(n+1), A165972(n+1))`
-/

namespace A058263.P3775852008548052371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138403 (n + 1)) (A165972 (n + 1))

end

end A058263.P3775852008548052371

namespace A058263

/-- `gcd(A138403(n+1), A165972(n+1))` -/
def P3775852008548052371.Spec : Prop :=
  ∀ n, (P3775852008548052371.a n : ℤ) = A058263 (n + 1)

end A058263

/-! ## A058263.P13510410429368383272

`gcd(A039915(n+1), A291463(n+1))`
-/

namespace A058263.P13510410429368383272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A039915 (n + 1)) (A291463 (n + 1))

end

end A058263.P13510410429368383272

namespace A058263

/-- `gcd(A039915(n+1), A291463(n+1))` -/
def P13510410429368383272.Spec : Prop :=
  ∀ n, (P13510410429368383272.a n : ℤ) = A058263 (n + 1)

end A058263

/-! ## A058263.P1372576375395613125

`gcd(A040976(n+1)+1, Δ[A040976(n+1)])`
-/

namespace A058263.P1372576375395613125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A040976 (n + 1) + 1) (f1 (n + 1) - f1 n)

end

end A058263.P1372576375395613125

namespace A058263

/-- `gcd(A040976(n+1)+1, Δ[A040976(n+1)])` -/
def P1372576375395613125.Spec : Prop :=
  ∀ n, (P1372576375395613125.a n : ℤ) = A058263 (n + 1)

end A058263

/-! ## A058263.P14135500551097130217

`gcd(1-A000040(n+1), Δ[A000040(n+1)])`
-/

namespace A058263.P14135500551097130217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A000040 (n + 1)) (f1 (n + 1) - f1 n)

end

end A058263.P14135500551097130217

namespace A058263

/-- `gcd(1-A000040(n+1), Δ[A000040(n+1)])` -/
def P14135500551097130217.Spec : Prop :=
  ∀ n, (P14135500551097130217.a n : ℤ) = A058263 (n + 1)

end A058263

/-! ## A058263.P5114119012372859670

`gcd(2-A008864(n+1), Δ[A008864(n+1)])`
-/

namespace A058263.P5114119012372859670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - A008864 (n + 1)) (f1 (n + 1) - f1 n)

end

end A058263.P5114119012372859670

namespace A058263

/-- `gcd(2-A008864(n+1), Δ[A008864(n+1)])` -/
def P5114119012372859670.Spec : Prop :=
  ∀ n, (P5114119012372859670.a n : ℤ) = A058263 (n + 1)

end A058263

/-! ## A058263.P12456260263838892503

`A006093(n+1)/A083554(n+1)*A006093(n+2)`
-/

namespace A058263.P12456260263838892503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) : ℚ) / (A083554 (n + 1) : ℚ) * (A006093 (n + 2) : ℚ)

end

end A058263.P12456260263838892503

namespace A058263

/-- `A006093(n+1)/A083554(n+1)*A006093(n+2)` -/
def P12456260263838892503.Spec : Prop :=
  ∀ n, P12456260263838892503.a n = (A058263 (n + 1) : ℚ)

end A058263

/-! ## A058263.P17794837835725866615

`gcd(A076368(n+2)-1, A000010(A065091(n+1)))`
-/

namespace A058263.P17794837835725866615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A076368 (n + 2) - 1) (A000010 (A065091 (n + 1)).toNat)

end

end A058263.P17794837835725866615

namespace A058263

/-- `gcd(A076368(n+2)-1, A000010(A065091(n+1)))` -/
def P17794837835725866615.Spec : Prop :=
  ∀ n, (P17794837835725866615.a n : ℤ) = A058263 (n + 1)

end A058263

/-! ## A058263.P2175013259448698890

`gcd(A000040(n+2)-1, eq[1, A001222(n+1)])`
-/

namespace A058263.P2175013259448698890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 2) - 1) (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A058263.P2175013259448698890

namespace A058263

/-- `gcd(A000040(n+2)-1, eq[1, A001222(n+1)])` -/
def P2175013259448698890.Spec : Prop :=
  ∀ n, (P2175013259448698890.a n : ℤ) = A058263 (n + 1)

end A058263

/-! ## A058263.P16127750831515895578

`gcd(1-A134735(2*n+1), A134735(2*(n+1)))`
-/

namespace A058263.P16127750831515895578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A134735 (2 * n + 1)) (A134735 (2 * (n + 1)))

end

end A058263.P16127750831515895578

namespace A058263

/-- `gcd(1-A134735(2*n+1), A134735(2*(n+1)))` -/
def P16127750831515895578.Spec : Prop :=
  ∀ n, (P16127750831515895578.a n : ℤ) = A058263 (n + 1)

end A058263

/-! ## A058263.P16168010740338359519

`gcd(1-A219606(2*(n+1)), A219606(2*n+1))`
-/

namespace A058263.P16168010740338359519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A219606 (2 * (n + 1))) (A219606 (2 * n + 1))

end

end A058263.P16168010740338359519

namespace A058263

/-- `gcd(1-A219606(2*(n+1)), A219606(2*n+1))` -/
def P16168010740338359519.Spec : Prop :=
  ∀ n, (P16168010740338359519.a n : ℤ) = A058263 (n + 1)

end A058263

/-! ## A058263.P9498712063495051622

`A173751(A048852(n+1))`
-/

namespace A058263.P9498712063495051622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173751 (A048852 (n + 1)).toNat

end

end A058263.P9498712063495051622

namespace A058263

/-- `A173751(A048852(n+1))` -/
def P9498712063495051622.Spec : Prop :=
  ∀ n, P9498712063495051622.a n = A058263 (n + 1)

end A058263

/-! ## A058263.P12829521688025259139

`A173751(A291463(n+1))`
-/

namespace A058263.P12829521688025259139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173751 (A291463 (n + 1)).toNat

end

end A058263.P12829521688025259139

namespace A058263

/-- `A173751(A291463(n+1))` -/
def P12829521688025259139.Spec : Prop :=
  ∀ n, P12829521688025259139.a n = A058263 (n + 1)

end A058263

/-!
# A058264: Smallest prime p of two consecutive primes, p < q, such that gcd( p-1, q-1 ) = 2n.

The programs for A058264, there is no canonical definition to state claims against.
-/

/-! ## A058264.P14715070932078839029

`A000040(A067605(n+1))`
-/

namespace A058264.P14715070932078839029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A067605 (n + 1)).toNat

end

end A058264.P14715070932078839029

/-! ## A058264.P13717814408193216377

`A008578(A067605(n+1)+1)`
-/

namespace A058264.P13717814408193216377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A067605 (n + 1) + 1).toNat

end

end A058264.P13717814408193216377

/-! ## A058264.P1912341746978836753

`A182986(A067605(n+1)+1)`
-/

namespace A058264.P1912341746978836753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A067605 (n + 1) + 1).toNat

end

end A058264.P1912341746978836753

/-! ## A058264.P553801915189169042

`A065091(A067605(n+1)-1)`
-/

namespace A058264.P553801915189169042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A067605 (n + 1) - 1).toNat

end

end A058264.P553801915189169042

/-! ## A058264.P14949330313955487978

`A158611(A067605(n+1)+2)`
-/

namespace A058264.P14949330313955487978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A067605 (n + 1) + 2).toNat

end

end A058264.P14949330313955487978

/-!
# A058266: An approximation to sigma_{1/2}(n): floor( sum_{ d divides n } sqrt(d) ).

The programs for A058266, the canonical program `A058266.P14231345452806757661` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058266 has offset 1).

The definition of A058266 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058266.P14231345452806757661

`floor(∑{d}[n+1, sqrt(#)])`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A058266

/-- `floor(∑{d}[n+1, sqrt(#)])` -/
def P14231345452806757661.Spec : Prop :=
  ∀ n, P14231345452806757661.a n = A058266 (n + 1)

theorem P14231345452806757661.correct : P14231345452806757661.Spec := by
  intro n
  simp only [A058266, Nat.add_sub_cancel]

end A058266

/-! ## A058266.P7124986767223501395

`ceil(∑{d}[n+1, sqrt(#)]-ceil(sin(n)²))`
-/

namespace A058266.P7124986767223501395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ d ∈ Nat.divisors (f1 n), Real.sqrt (d : ℝ) - (⌈Real.sin (n : ℝ) ^ 2⌉ : ℝ)⌉

end

end A058266.P7124986767223501395

namespace A058266

/-- `ceil(∑{d}[n+1, sqrt(#)]-ceil(sin(n)²))` -/
def P7124986767223501395.Spec : Prop :=
  ∀ n, P7124986767223501395.a n = A058266 (n + 1)

end A058266

/-! ## A058266.P8646448841095378096

`ceil(∑{d}[n+1, sqrt(#)]-n²%(n+1))`
-/

namespace A058266.P8646448841095378096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ d ∈ Nat.divisors (f1 n), Real.sqrt (d : ℝ) - ((n ^ 2 % (n + 1) : ℕ) : ℝ)⌉

end

end A058266.P8646448841095378096

namespace A058266

/-- `ceil(∑{d}[n+1, sqrt(#)]-n²%(n+1))` -/
def P8646448841095378096.Spec : Prop :=
  ∀ n, P8646448841095378096.a n = A058266 (n + 1)

end A058266

/-! ## A058266.P8730246051178365984

`ceil(∑{d}[n+1, sqrt(#)])+C(2, n+2)-1`
-/

namespace A058266.P8730246051178365984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ d ∈ Nat.divisors (f1 n), Real.sqrt (d : ℝ)⌉ + ((Nat.choose 2 (n + 2) : ℤ) - 1)

end

end A058266.P8730246051178365984

namespace A058266

/-- `ceil(∑{d}[n+1, sqrt(#)])+C(2, n+2)-1` -/
def P8730246051178365984.Spec : Prop :=
  ∀ n, P8730246051178365984.a n = A058266 (n + 1)

end A058266

/-! ## A058266.P5556392655360552693

`ceil(A057428(n)+∑{d}[n+1, sqrt(#)])`
-/

namespace A058266.P5556392655360552693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057428 n : ℝ) + ∑ d ∈ Nat.divisors (f1 n), Real.sqrt (d : ℝ)⌉

end

end A058266.P5556392655360552693

namespace A058266

/-- `ceil(A057428(n)+∑{d}[n+1, sqrt(#)])` -/
def P5556392655360552693.Spec : Prop :=
  ∀ n, P5556392655360552693.a n = A058266 (n + 1)

end A058266

/-! ## A058266.P14269787077427707139

`A028310(A058268(n+1)-1)`
-/

namespace A058266.P14269787077427707139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A058268 (n + 1) - 1).toNat

end

end A058266.P14269787077427707139

namespace A058266

/-- `A028310(A058268(n+1)-1)` -/
def P14269787077427707139.Spec : Prop :=
  ∀ n, P14269787077427707139.a n = A058266 (n + 1)

end A058266

/-! ## A058266.P4527906751539186709

`A058268(n+1)+A057428(n)`
-/

namespace A058266.P4527906751539186709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058268 (n + 1) + A057428 n

end

end A058266.P4527906751539186709

namespace A058266

/-- `A058268(n+1)+A057428(n)` -/
def P4527906751539186709.Spec : Prop :=
  ∀ n, P4527906751539186709.a n = A058266 (n + 1)

end A058266

/-! ## A058266.P5002806625364102207

`A058268(n+1)-A057427(n)`
-/

namespace A058266.P5002806625364102207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058268 (n + 1) - A057427 n

end

end A058266.P5002806625364102207

namespace A058266

/-- `A058268(n+1)-A057427(n)` -/
def P5002806625364102207.Spec : Prop :=
  ∀ n, P5002806625364102207.a n = A058266 (n + 1)

end A058266

/-! ## A058266.P10640920359026914195

`A058268(n+1)-A000040(n+1)%2`
-/

namespace A058266.P10640920359026914195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058268 (n + 1) - Int.tmod (A000040 (n + 1)) 2

end

end A058266.P10640920359026914195

namespace A058266

/-- `A058268(n+1)-A000040(n+1)%2` -/
def P10640920359026914195.Spec : Prop :=
  ∀ n, P10640920359026914195.a n = A058266 (n + 1)

end A058266

/-!
# A058267: An approximation to sigma_{1/2}(n): round( Sum_{ d divides n } sqrt(d) ).

The programs for A058267, the canonical program `A058267.P10501544015670160436` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058267 has offset 1).

The definition of A058267 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058267.P10501544015670160436

`round(∑{d}[n+1, sqrt(#)])`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A058267

/-- `round(∑{d}[n+1, sqrt(#)])` -/
def P10501544015670160436.Spec : Prop :=
  ∀ n, P10501544015670160436.a n = A058267 (n + 1)

theorem P10501544015670160436.correct : P10501544015670160436.Spec := by
  intro n
  simp only [A058267, Nat.add_sub_cancel]

end A058267

/-! ## A058267.P1754014272133366144

`round(log2(A065387(∏{d}[n+1, #])))`
-/

namespace A058267.P1754014272133366144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A065387 (∏ d ∈ Nat.divisors (f1 n), d) : ℝ))

end

end A058267.P1754014272133366144

namespace A058267

/-- `round(log2(A065387(∏{d}[n+1, #])))` -/
def P1754014272133366144.Spec : Prop :=
  ∀ n, P1754014272133366144.a n = A058267 (n + 1)

end A058267

/-! ## A058267.P9403408967728603327

`A000523(A251538(∏{d}[n+1, #])-n)`
-/

namespace A058267.P9403408967728603327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A251538 (∏ d ∈ Nat.divisors (f1 n), d) - (n : ℤ)).toNat

end

end A058267.P9403408967728603327

namespace A058267

/-- `A000523(A251538(∏{d}[n+1, #])-n)` -/
def P9403408967728603327.Spec : Prop :=
  ∀ n, P9403408967728603327.a n = A058267 (n + 1)

end A058267

/-! ## A058267.P2398092491941444467

`A070939(A220846(n+1)+A002264(n))`
-/

namespace A058267.P2398092491941444467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A220846 (n + 1) + A002264 n).toNat

end

end A058267.P2398092491941444467

namespace A058267

/-- `A070939(A220846(n+1)+A002264(n))` -/
def P2398092491941444467.Spec : Prop :=
  ∀ n, P2398092491941444467.a n = A058267 (n + 1)

end A058267

/-! ## A058267.P1192278023455880215

`A029837(A220846(n+1)+A059268(n))`
-/

namespace A058267.P1192278023455880215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A220846 (n + 1) + A059268 n).toNat

end

end A058267.P1192278023455880215

namespace A058267

/-- `A029837(A220846(n+1)+A059268(n))` -/
def P1192278023455880215.Spec : Prop :=
  ∀ n, P1192278023455880215.a n = A058267 (n + 1)

end A058267

/-!
# A058268: An approximation to sigma_{1/2}(n): ceiling( sum_{d|n} sqrt(d) ).

The programs for A058268, the canonical program `A058268.P17499238582623554022` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058268 has offset 1).

The definition of A058268 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058268.P10513679978657047695

`ceil(∑{d}[n+1, sqrt(#)])`
-/

namespace A058268.P10513679978657047695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ d ∈ Nat.divisors (f1 n), Real.sqrt (d : ℝ)⌉

end

end A058268.P10513679978657047695

namespace A058268

/-- `ceil(∑{d}[n+1, sqrt(#)])` -/
def P10513679978657047695.Spec : Prop :=
  ∀ n, P10513679978657047695.a n = A058268 (n + 1)

end A058268

/-! ## A058268.P15277889880523486461

`floor(∑{d}[n+1, sqrt(#)])-(floor(acot(n))-1)`
-/

namespace A058268.P15277889880523486461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f1 n), Real.sqrt (d : ℝ)⌋ - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

end

end A058268.P15277889880523486461

namespace A058268

/-- `floor(∑{d}[n+1, sqrt(#)])-(floor(acot(n))-1)` -/
def P15277889880523486461.Spec : Prop :=
  ∀ n, P15277889880523486461.a n = A058268 (n + 1)

end A058268

/-! ## A058268.P13578339923317736343

`floor(∑{d}[n+1, sqrt(#)])%(n+1)²+1`
-/

namespace A058268.P13578339923317736343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊∑ d ∈ Nat.divisors (f1 n), Real.sqrt (d : ℝ)⌋ ((n + 1) ^ 2 : ℤ) + 1

end

end A058268.P13578339923317736343

namespace A058268

/-- `floor(∑{d}[n+1, sqrt(#)])%(n+1)²+1` -/
def P13578339923317736343.Spec : Prop :=
  ∀ n, P13578339923317736343.a n = A058268 (n + 1)

end A058268

/-! ## A058268.P13443890706236256341

`floor(∑{d}[n+1, sqrt(#)])-(C(2, n+2)-1)`
-/

namespace A058268.P13443890706236256341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f1 n), Real.sqrt (d : ℝ)⌋ - ((Nat.choose 2 (n + 2) : ℤ) - 1)

end

end A058268.P13443890706236256341

namespace A058268

/-- `floor(∑{d}[n+1, sqrt(#)])-(C(2, n+2)-1)` -/
def P13443890706236256341.Spec : Prop :=
  ∀ n, P13443890706236256341.a n = A058268 (n + 1)

end A058268

/-! ## A058268.P17295830672606961948

`floor(A057427(n)+∑{d}[n+1, sqrt(#)])`
-/

namespace A058268.P17295830672606961948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057427 n : ℝ) + ∑ d ∈ Nat.divisors (f1 n), Real.sqrt (d : ℝ)⌋

end

end A058268.P17295830672606961948

namespace A058268

/-- `floor(A057427(n)+∑{d}[n+1, sqrt(#)])` -/
def P17295830672606961948.Spec : Prop :=
  ∀ n, P17295830672606961948.a n = A058268 (n + 1)

end A058268

/-! ## A058268.P17499238582623554022

`A065475(A058266(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A058268

/-- `A065475(A058266(n+1))` -/
def P17499238582623554022.Spec : Prop :=
  ∀ n, P17499238582623554022.a n = A058268 (n + 1)

theorem P17499238582623554022.correct : P17499238582623554022.Spec := by
  intro n
  simp only [A058268, Nat.add_sub_cancel]

end A058268

/-! ## A058268.P4571324778935949344

`A058266(n+1)+A057427(n)`
-/

namespace A058268.P4571324778935949344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058266 (n + 1) + A057427 n

end

end A058268.P4571324778935949344

namespace A058268

/-- `A058266(n+1)+A057427(n)` -/
def P4571324778935949344.Spec : Prop :=
  ∀ n, P4571324778935949344.a n = A058268 (n + 1)

end A058268

/-! ## A058268.P12052824106303375625

`A058266(n+1)-A057428(n)`
-/

namespace A058268.P12052824106303375625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058266 (n + 1) - A057428 n

end

end A058268.P12052824106303375625

namespace A058268

/-- `A058266(n+1)-A057428(n)` -/
def P12052824106303375625.Spec : Prop :=
  ∀ n, P12052824106303375625.a n = A058268 (n + 1)

end A058268

/-! ## A058268.P11132307490279251420

`A058266(n+1)+A000040(n+1)%2`
-/

namespace A058268.P11132307490279251420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058266 (n + 1) + Int.tmod (A000040 (n + 1)) 2

end

end A058268.P11132307490279251420

namespace A058268

/-- `A058266(n+1)+A000040(n+1)%2` -/
def P11132307490279251420.Spec : Prop :=
  ∀ n, P11132307490279251420.a n = A058268 (n + 1)

end A058268

/-!
# A058269: An approximation to sigma_{3/2}(n): floor( sum_{d|n} d^(3/2) ).

The programs for A058269, the canonical program `A058269.P4949853403851933134` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058269 has offset 1).

The definition of A058269 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058269.P4949853403851933134

`floor(∑{d}[n+1, sqrt(#^3)])`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A058269

/-- `floor(∑{d}[n+1, sqrt(#^3)])` -/
def P4949853403851933134.Spec : Prop :=
  ∀ n, P4949853403851933134.a n = A058269 (n + 1)

theorem P4949853403851933134.correct : P4949853403851933134.Spec := by
  intro n
  simp only [A058269, Nat.add_sub_cancel]

end A058269

/-! ## A058269.P3842641429454994768

`ceil(abs(ϕ-A058271(n+1)))`
-/

namespace A058269.P3842641429454994768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.goldenRatio - (A058271 (n + 1) : ℝ)|⌉

end

end A058269.P3842641429454994768

namespace A058269

/-- `ceil(abs(ϕ-A058271(n+1)))` -/
def P3842641429454994768.Spec : Prop :=
  ∀ n, P3842641429454994768.a n = A058269 (n + 1)

end A058269

/-! ## A058269.P16719024981507701399

`A058271(n+1)+A057428(n)`
-/

namespace A058269.P16719024981507701399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058271 (n + 1) + A057428 n

end

end A058269.P16719024981507701399

namespace A058269

/-- `A058271(n+1)+A057428(n)` -/
def P16719024981507701399.Spec : Prop :=
  ∀ n, P16719024981507701399.a n = A058269 (n + 1)

theorem P16719024981507701399.correct : P16719024981507701399.Spec := by
  intro n
  simp only [A058269, Nat.add_sub_cancel, A058269.P16719024981507701399.a, A058269.P4949853403851933134.f1, A058269.P4949853403851933134.a, A057428, A057428.P2999489532230392221.a, A058271, A058271.P8840651636009119007.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A058269

/-! ## A058269.P2772054222985469044

`A058271(n+1)-A057427(n)`
-/

namespace A058269.P2772054222985469044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058271 (n + 1) - A057427 n

end

end A058269.P2772054222985469044

namespace A058269

/-- `A058271(n+1)-A057427(n)` -/
def P2772054222985469044.Spec : Prop :=
  ∀ n, P2772054222985469044.a n = A058269 (n + 1)

theorem P2772054222985469044.correct : P2772054222985469044.Spec := by
  intro n
  simp only [A058269, Nat.add_sub_cancel, A058269.P2772054222985469044.a, A058269.P4949853403851933134.f1, A058269.P4949853403851933134.a, A057427, A057427.P3058147525557661423.a, A058271, A058271.P8840651636009119007.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A058269

/-! ## A058269.P17732220046441095849

`A058271(n+1)+A000007(n)-1`
-/

namespace A058269.P17732220046441095849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058271 (n + 1) + (A000007 n - 1)

end

end A058269.P17732220046441095849

namespace A058269

/-- `A058271(n+1)+A000007(n)-1` -/
def P17732220046441095849.Spec : Prop :=
  ∀ n, P17732220046441095849.a n = A058269 (n + 1)

theorem P17732220046441095849.correct : P17732220046441095849.Spec := by
  intro n
  simp only [A058269, Nat.add_sub_cancel, A058269.P17732220046441095849.a, A058269.P4949853403851933134.f1, A058269.P4949853403851933134.a, A000007, A000007.P6599383543502402472.a, A058271, A058271.P8840651636009119007.a, A057427, A057427.P3058147525557661423.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A058269

/-! ## A058269.P5175008982942070141

`A058271(n+1)-A000040(n+1)%2`
-/

namespace A058269.P5175008982942070141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058271 (n + 1) - Int.tmod (A000040 (n + 1)) 2

end

end A058269.P5175008982942070141

namespace A058269

/-- `A058271(n+1)-A000040(n+1)%2` -/
def P5175008982942070141.Spec : Prop :=
  ∀ n, P5175008982942070141.a n = A058269 (n + 1)

end A058269

/-! ## A058269.P13950826328773130924

`A058271(n+1)-A000045(round(n/(n+1)))`
-/

namespace A058269.P13950826328773130924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058271 (n + 1) - A000045 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat

end

end A058269.P13950826328773130924

namespace A058269

/-- `A058271(n+1)-A000045(round(n/(n+1)))` -/
def P13950826328773130924.Spec : Prop :=
  ∀ n, P13950826328773130924.a n = A058269 (n + 1)

end A058269

/-! ## A058269.P3196426629572581872

`A058271(n+1)+A058272(n+1)-A058274(n+1)`
-/

namespace A058269.P3196426629572581872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058271 (n + 1) + (A058272 (n + 1) - A058274 (n + 1))

end

end A058269.P3196426629572581872

namespace A058269

/-- `A058271(n+1)+A058272(n+1)-A058274(n+1)` -/
def P3196426629572581872.Spec : Prop :=
  ∀ n, P3196426629572581872.a n = A058269 (n + 1)

theorem P3196426629572581872.correct : P3196426629572581872.Spec := by
  intro n
  simp only [A058269, Nat.add_sub_cancel, A058269.P3196426629572581872.a, A058269.P4949853403851933134.f1, A058269.P4949853403851933134.a, A058271, A058271.P8840651636009119007.a, A058272, A058272.P14497618945412508672.f1, A058272.P14497618945412508672.a, A058274, A058274.P5628590533721201962.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A058269

/-! ## A058269.P14410387565492073243

`A028310(ceil(∑{d}[n+1, sqrt(#^3)])-1)`
-/

namespace A058269.P14410387565492073243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (⌈∑ d ∈ Nat.divisors (f1 n), Real.sqrt (d ^ 3 : ℝ)⌉ - 1).toNat

end

end A058269.P14410387565492073243

namespace A058269

/-- `A028310(ceil(∑{d}[n+1, sqrt(#^3)])-1)` -/
def P14410387565492073243.Spec : Prop :=
  ∀ n, P14410387565492073243.a n = A058269 (n + 1)

end A058269

/-!
# A058270: An approximation to sigma_{3/2}(n): round( sum_{d|n} d^(3/2) ).

The programs for A058270, the canonical program `A058270.P1740618142249704317` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058270 has offset 1).

The definition of A058270 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058270.P1740618142249704317

`round(∑{d}[n+1, sqrt(#^3)])`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A058270

/-- `round(∑{d}[n+1, sqrt(#^3)])` -/
def P1740618142249704317.Spec : Prop :=
  ∀ n, P1740618142249704317.a n = A058270 (n + 1)

theorem P1740618142249704317.correct : P1740618142249704317.Spec := by
  intro n
  simp only [A058270, Nat.add_sub_cancel]

end A058270

/-! ## A058270.P665084417496326589

`floor((2*∑{d}[n+1, sqrt(#^3)]+1)/2)`
-/

namespace A058270.P665084417496326589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * (∑ d ∈ Nat.divisors (f1 n), Real.sqrt (d ^ 3 : ℝ)) + 1) / 2⌋

end

end A058270.P665084417496326589

namespace A058270

/-- `floor((2*∑{d}[n+1, sqrt(#^3)]+1)/2)` -/
def P665084417496326589.Spec : Prop :=
  ∀ n, P665084417496326589.a n = A058270 (n + 1)

end A058270

/-! ## A058270.P3337461320211141265

`A332934(n+1)-A186718(A124240(2*(n+2)))`
-/

namespace A058270.P3337461320211141265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332934 (n + 1) - A186718 (A124240 (2 * (n + 2))).toNat

end

end A058270.P3337461320211141265

namespace A058270

/-- `A332934(n+1)-A186718(A124240(2*(n+2)))` -/
def P3337461320211141265.Spec : Prop :=
  ∀ n, P3337461320211141265.a n = A058270 (n + 1)

end A058270

/-! ## A058270.P8403595415756535608

`A332934(n+1)-A319995(A226022(n))`
-/

namespace A058270.P8403595415756535608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332934 (n + 1) - A319995 (A226022 n).toNat

end

end A058270.P8403595415756535608

namespace A058270

/-- `A332934(n+1)-A319995(A226022(n))` -/
def P8403595415756535608.Spec : Prop :=
  ∀ n, P8403595415756535608.a n = A058270 (n + 1)

end A058270

/-! ## A058270.P204546341435630682

`A332934(n+1)-A033483(A267328(n+1))`
-/

namespace A058270.P204546341435630682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332934 (n + 1) - A033483 (A267328 (n + 1)).toNat

end

end A058270.P204546341435630682

namespace A058270

/-- `A332934(n+1)-A033483(A267328(n+1))` -/
def P204546341435630682.Spec : Prop :=
  ∀ n, P204546341435630682.a n = A058270 (n + 1)

end A058270

/-!
# A058271: An approximation to sigma_{3/2}(n): ceiling( sum_{d|n} d^(3/2) ).

The programs for A058271, the canonical program `A058271.P8840651636009119007` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058271 has offset 1).

The definition of A058271 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058271.P10555847552371415216

`ceil(∑{d}[n+1, sqrt(#^3)])`
-/

namespace A058271.P10555847552371415216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ d ∈ Nat.divisors (f1 n), Real.sqrt (d ^ 3 : ℝ)⌉

end

end A058271.P10555847552371415216

namespace A058271

/-- `ceil(∑{d}[n+1, sqrt(#^3)])` -/
def P10555847552371415216.Spec : Prop :=
  ∀ n, P10555847552371415216.a n = A058271 (n + 1)

end A058271

/-! ## A058271.P53604973767382401

`floor(∑{d}[n+1, #^(3/2)])+floor(atan(n+1))`
-/

namespace A058271.P53604973767382401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f1 n), (d : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌋ + ⌊Real.arctan (n + 1 : ℝ)⌋

end

end A058271.P53604973767382401

namespace A058271

/-- `floor(∑{d}[n+1, #^(3/2)])+floor(atan(n+1))` -/
def P53604973767382401.Spec : Prop :=
  ∀ n, P53604973767382401.a n = A058271 (n + 1)

end A058271

/-! ## A058271.P17804767257352707643

`floor(∑{d}[n+1, #^(3/2)])-(floor(acot(n))-1)`
-/

namespace A058271.P17804767257352707643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f1 n), (d : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌋ - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

end

end A058271.P17804767257352707643

namespace A058271

/-- `floor(∑{d}[n+1, #^(3/2)])-(floor(acot(n))-1)` -/
def P17804767257352707643.Spec : Prop :=
  ∀ n, P17804767257352707643.a n = A058271 (n + 1)

end A058271

/-! ## A058271.P9831326118611868907

`char[xor(1, n)+1]+floor(∑{d}[n+1, #^(3/2)])`
-/

namespace A058271.P9831326118611868907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ⌊∑ d ∈ Nat.divisors (f2 n), (d : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌋

end

end A058271.P9831326118611868907

namespace A058271

/-- `char[xor(1, n)+1]+floor(∑{d}[n+1, #^(3/2)])` -/
def P9831326118611868907.Spec : Prop :=
  ∀ n, P9831326118611868907.a n = A058271 (n + 1)

end A058271

/-! ## A058271.P12827453927469591970

`ceil(A058269(n+1)+sin(n)²)`
-/

namespace A058271.P12827453927469591970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A058269 (n + 1) : ℝ) + Real.sin (n : ℝ) ^ 2⌉

end

end A058271.P12827453927469591970

namespace A058271

/-- `ceil(A058269(n+1)+sin(n)²)` -/
def P12827453927469591970.Spec : Prop :=
  ∀ n, P12827453927469591970.a n = A058271 (n + 1)

end A058271

/-! ## A058271.P8840651636009119007

`A058269(n+1)+A057427(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A058271

/-- `A058269(n+1)+A057427(n)` -/
def P8840651636009119007.Spec : Prop :=
  ∀ n, P8840651636009119007.a n = A058271 (n + 1)

theorem P8840651636009119007.correct : P8840651636009119007.Spec := by
  intro n
  simp only [A058271, Nat.add_sub_cancel]

end A058271

/-! ## A058271.P16556723795097200153

`A058269(n+1)-A057428(n)`
-/

namespace A058271.P16556723795097200153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058269 (n + 1) - A057428 n

end

end A058271.P16556723795097200153

namespace A058271

/-- `A058269(n+1)-A057428(n)` -/
def P16556723795097200153.Spec : Prop :=
  ∀ n, P16556723795097200153.a n = A058271 (n + 1)

theorem P16556723795097200153.correct : P16556723795097200153.Spec := by
  intro n
  simp only [A058271, Nat.add_sub_cancel, A058271.P16556723795097200153.a, A058271.P8840651636009119007.a, A057427, A057427.P3058147525557661423.a, A057428, A057428.P2999489532230392221.a, A058269, A058269.P4949853403851933134.f1, A058269.P4949853403851933134.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A058271

/-! ## A058271.P3587960299092292081

`A058269(n+1)+A000040(n+1)%2`
-/

namespace A058271.P3587960299092292081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058269 (n + 1) + Int.tmod (A000040 (n + 1)) 2

end

end A058271.P3587960299092292081

namespace A058271

/-- `A058269(n+1)+A000040(n+1)%2` -/
def P3587960299092292081.Spec : Prop :=
  ∀ n, P3587960299092292081.a n = A058271 (n + 1)

end A058271

/-! ## A058271.P6010993688977672533

`A065475(A058269(n+1))`
-/

namespace A058271.P6010993688977672533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A058269 (n + 1)).toNat

end

end A058271.P6010993688977672533

namespace A058271

/-- `A065475(A058269(n+1))` -/
def P6010993688977672533.Spec : Prop :=
  ∀ n, P6010993688977672533.a n = A058271 (n + 1)

end A058271

/-! ## A058271.P12401462319761113943

`A058269(n+1)+A007318(∑[n])-C(2, n+2)`
-/

namespace A058271.P12401462319761113943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058269 (n + 1) + (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) - (Nat.choose 2 (n + 2) : ℤ))

end

end A058271.P12401462319761113943

namespace A058271

/-- `A058269(n+1)+A007318(∑[n])-C(2, n+2)` -/
def P12401462319761113943.Spec : Prop :=
  ∀ n, P12401462319761113943.a n = A058271 (n + 1)

end A058271

/-!
# A058272: An approximation to sigma_{5/2}(n): floor( sum_{d|n} d^(5/2) ).

The programs for A058272, the canonical program `A058272.P14497618945412508672` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058272 has offset 1).

The definition of A058272 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058272.P14497618945412508672

`floor(∑{d}[n+1, #^(5/2)])`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A058272

/-- `floor(∑{d}[n+1, #^(5/2)])` -/
def P14497618945412508672.Spec : Prop :=
  ∀ n, P14497618945412508672.a n = A058272 (n + 1)

theorem P14497618945412508672.correct : P14497618945412508672.Spec := by
  intro n
  simp only [A058272, Nat.add_sub_cancel]

end A058272

/-! ## A058272.P18147446400314594858

`ceil(abs(ϕ-A058274(n+1)))`
-/

namespace A058272.P18147446400314594858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.goldenRatio - (A058274 (n + 1) : ℝ)|⌉

end

end A058272.P18147446400314594858

namespace A058272

/-- `ceil(abs(ϕ-A058274(n+1)))` -/
def P18147446400314594858.Spec : Prop :=
  ∀ n, P18147446400314594858.a n = A058272 (n + 1)

end A058272

/-! ## A058272.P4640068814137211166

`A058274(n+1)+A057428(n)`
-/

namespace A058272.P4640068814137211166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058274 (n + 1) + A057428 n

end

end A058272.P4640068814137211166

namespace A058272

/-- `A058274(n+1)+A057428(n)` -/
def P4640068814137211166.Spec : Prop :=
  ∀ n, P4640068814137211166.a n = A058272 (n + 1)

theorem P4640068814137211166.correct : P4640068814137211166.Spec := by
  intro n
  simp only [A058272, Nat.add_sub_cancel, A058272.P4640068814137211166.a, A058272.P14497618945412508672.f1, A058272.P14497618945412508672.a, A057428, A057428.P2999489532230392221.a, A058274, A058274.P5628590533721201962.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A058272

/-! ## A058272.P10123936914555884030

`A058274(n+1)-A057427(n)`
-/

namespace A058272.P10123936914555884030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058274 (n + 1) - A057427 n

end

end A058272.P10123936914555884030

namespace A058272

/-- `A058274(n+1)-A057427(n)` -/
def P10123936914555884030.Spec : Prop :=
  ∀ n, P10123936914555884030.a n = A058272 (n + 1)

theorem P10123936914555884030.correct : P10123936914555884030.Spec := by
  intro n
  simp only [A058272, Nat.add_sub_cancel, A058272.P10123936914555884030.a, A058272.P14497618945412508672.f1, A058272.P14497618945412508672.a, A057427, A057427.P3058147525557661423.a, A058274, A058274.P5628590533721201962.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A058272

/-! ## A058272.P354151679213931508

`A058274(n+1)-A000040(n+1)%2`
-/

namespace A058272.P354151679213931508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058274 (n + 1) - Int.tmod (A000040 (n + 1)) 2

end

end A058272.P354151679213931508

namespace A058272

/-- `A058274(n+1)-A000040(n+1)%2` -/
def P354151679213931508.Spec : Prop :=
  ∀ n, P354151679213931508.a n = A058272 (n + 1)

end A058272

/-!
# A058273: An approximation to sigma_{5/2}(n): round( sum_{d|n} d^(5/2) ).

The programs for A058273, the canonical program `A058273.P307178182067191222` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058273 has offset 1).

The definition of A058273 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058273.P307178182067191222

`round(∑{d}[n+1, #^(5/2)])`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A058273

/-- `round(∑{d}[n+1, #^(5/2)])` -/
def P307178182067191222.Spec : Prop :=
  ∀ n, P307178182067191222.a n = A058273 (n + 1)

theorem P307178182067191222.correct : P307178182067191222.Spec := by
  intro n
  simp only [A058273, Nat.add_sub_cancel]

end A058273

/-! ## A058273.P10286474656246942438

`A058274(n+1)-A285073(A020118(n))`
-/

namespace A058273.P10286474656246942438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058274 (n + 1) - A285073 (A020118 n).toNat

end

end A058273.P10286474656246942438

namespace A058273

/-- `A058274(n+1)-A285073(A020118(n))` -/
def P10286474656246942438.Spec : Prop :=
  ∀ n, P10286474656246942438.a n = A058273 (n + 1)

end A058273

/-! ## A058273.P5583263152318873632

`A058274(n+1)-A058275(A248849(n+1))`
-/

namespace A058273.P5583263152318873632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058274 (n + 1) - A058275 (A248849 (n + 1)).toNat

end

end A058273.P5583263152318873632

namespace A058273

/-- `A058274(n+1)-A058275(A248849(n+1))` -/
def P5583263152318873632.Spec : Prop :=
  ∀ n, P5583263152318873632.a n = A058273 (n + 1)

end A058273

/-! ## A058273.P13750557151550393075

`A058274(n+1)-A079998(A113123(n+2))`
-/

namespace A058273.P13750557151550393075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058274 (n + 1) - A079998 (A113123 (n + 2)).toNat

end

end A058273.P13750557151550393075

namespace A058273

/-- `A058274(n+1)-A079998(A113123(n+2))` -/
def P13750557151550393075.Spec : Prop :=
  ∀ n, P13750557151550393075.a n = A058273 (n + 1)

end A058273

/-! ## A058273.P9174594545627480376

`A058274(n+1)-A318950((n+1)²)`
-/

namespace A058273.P9174594545627480376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058274 (n + 1) - A318950 ((n + 1) ^ 2)

end

end A058273.P9174594545627480376

namespace A058273

/-- `A058274(n+1)-A318950((n+1)²)` -/
def P9174594545627480376.Spec : Prop :=
  ∀ n, P9174594545627480376.a n = A058273 (n + 1)

end A058273

/-!
# A058274: An approximation to sigma_{5/2}(n): ceiling( sum_{d|n} d^(5/2) ).

The programs for A058274, the canonical program `A058274.P5628590533721201962` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058274 has offset 1).

The definition of A058274 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058274.P7549422074980444384

`ceil(∑{d}[n+1, #^(5/2)])`
-/

namespace A058274.P7549422074980444384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ d ∈ Nat.divisors (f1 n), (d : ℝ) ^ ((5 : ℚ) / 2 : ℝ)⌉

end

end A058274.P7549422074980444384

namespace A058274

/-- `ceil(∑{d}[n+1, #^(5/2)])` -/
def P7549422074980444384.Spec : Prop :=
  ∀ n, P7549422074980444384.a n = A058274 (n + 1)

end A058274

/-! ## A058274.P5109150033594486128

`floor(∑{d}[n+1, #^(5/2)])-(floor(acot(n))-1)`
-/

namespace A058274.P5109150033594486128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f1 n), (d : ℝ) ^ ((5 : ℚ) / 2 : ℝ)⌋ - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

end

end A058274.P5109150033594486128

namespace A058274

/-- `floor(∑{d}[n+1, #^(5/2)])-(floor(acot(n))-1)` -/
def P5109150033594486128.Spec : Prop :=
  ∀ n, P5109150033594486128.a n = A058274 (n + 1)

end A058274

/-! ## A058274.P11329066261403875464

`ceil(A058272(n+1)+sin(n)²)`
-/

namespace A058274.P11329066261403875464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A058272 (n + 1) : ℝ) + Real.sin (n : ℝ) ^ 2⌉

end

end A058274.P11329066261403875464

namespace A058274

/-- `ceil(A058272(n+1)+sin(n)²)` -/
def P11329066261403875464.Spec : Prop :=
  ∀ n, P11329066261403875464.a n = A058274 (n + 1)

end A058274

/-! ## A058274.P5628590533721201962

`A058272(n+1)+A057427(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A058274

/-- `A058272(n+1)+A057427(n)` -/
def P5628590533721201962.Spec : Prop :=
  ∀ n, P5628590533721201962.a n = A058274 (n + 1)

theorem P5628590533721201962.correct : P5628590533721201962.Spec := by
  intro n
  simp only [A058274, Nat.add_sub_cancel]

end A058274

/-! ## A058274.P18360043466265380819

`A058272(n+1)-A057428(n)`
-/

namespace A058274.P18360043466265380819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058272 (n + 1) - A057428 n

end

end A058274.P18360043466265380819

namespace A058274

/-- `A058272(n+1)-A057428(n)` -/
def P18360043466265380819.Spec : Prop :=
  ∀ n, P18360043466265380819.a n = A058274 (n + 1)

theorem P18360043466265380819.correct : P18360043466265380819.Spec := by
  intro n
  simp only [A058274, Nat.add_sub_cancel, A058274.P18360043466265380819.a, A058274.P5628590533721201962.a, A057427, A057427.P3058147525557661423.a, A057428, A057428.P2999489532230392221.a, A058272, A058272.P14497618945412508672.f1, A058272.P14497618945412508672.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A058274

/-! ## A058274.P13122863212172178657

`A058272(n+1)+and(1, A000040(n+1))`
-/

namespace A058274.P13122863212172178657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058272 (n + 1) + Int.land 1 (A000040 (n + 1))

end

end A058274.P13122863212172178657

namespace A058274

/-- `A058272(n+1)+and(1, A000040(n+1))` -/
def P13122863212172178657.Spec : Prop :=
  ∀ n, P13122863212172178657.a n = A058274 (n + 1)

end A058274

/-! ## A058274.P3811043081030001141

`A058272(n+1)+A065475(A065475(n+1))-A065475(n+1)`
-/

namespace A058274.P3811043081030001141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058272 (n + 1) + (A065475 (A065475 (n + 1)).toNat - A065475 (n + 1))

end

end A058274.P3811043081030001141

namespace A058274

/-- `A058272(n+1)+A065475(A065475(n+1))-A065475(n+1)` -/
def P3811043081030001141.Spec : Prop :=
  ∀ n, P3811043081030001141.a n = A058274 (n + 1)

end A058274

/-!
# A058275: Number of connected 5-regular simple graphs on 2*n vertices with girth at least 4.

The programs for A058275, there is no canonical definition to state claims against.
-/

/-! ## A058275.P7916328316128231390

`A185354(n)-A185254(n)`
-/

namespace A058275.P7916328316128231390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185354 n - A185254 n

end

end A058275.P7916328316128231390

/-! ## A058275.P2231775553521558963

`∏{e}[2^n, A184954(#)]`
-/

namespace A058275.P2231775553521558963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A184954 (Nat.factorization (f1 n) p)

end

end A058275.P2231775553521558963

/-! ## A058275.P5662642672548003201

`floor(A184954(n)+acot(n))`
-/

namespace A058275.P5662642672548003201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A184954 n : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A058275.P5662642672548003201

/-! ## A058275.P8963772460400716735

`A184954(n-a(2%n))` with `a(0)=1`
-/

namespace A058275.P8963772460400716735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A184954 ((n : ℤ) - a (2 % n)).toNat

end

end A058275.P8963772460400716735

/-! ## A058275.P10171905024039464970

`A184954(a(floor(n/3))+n)` with `a(0)=1`
-/

namespace A058275.P10171905024039464970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A184954 (a ⌊(n : ℚ) / 3⌋.toNat + (n : ℤ)).toNat

end

end A058275.P10171905024039464970

/-!
# A058276: Number of connected 6-regular simple graphs on n vertices with girth at least 4.

The programs for A058276, there is no canonical definition to state claims against.
-/

/-! ## A058276.P2100874051558395514

`floor(A184964(n)+acot(n))`
-/

namespace A058276.P2100874051558395514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A184964 n : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A058276.P2100874051558395514

/-! ## A058276.P9486471751818055034

`A184964(n-a(2%n))` with `a(0)=1`
-/

namespace A058276.P9486471751818055034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A184964 ((n : ℤ) - a (2 % n)).toNat

end

end A058276.P9486471751818055034

/-! ## A058276.P11793785607778133373

`A184964(a(floor(n/2))+n)` with `a(0)=1`
-/

namespace A058276.P11793785607778133373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A184964 (a ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ)).toNat

end

end A058276.P11793785607778133373

/-! ## A058276.P3732930622196956507

`A184964(xor(n, a(floor(n/2))))` with `a(0)=1`
-/

namespace A058276.P3732930622196956507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A184964 (Int.xor (n : ℤ) (a ⌊(n : ℚ) / 2⌋.toNat)).toNat

end

end A058276.P3732930622196956507

/-! ## A058276.P18060892011609374463

`A184964(n-2*a(floor(n/2)))` with `a(0)=1, a(1)=0`
-/

namespace A058276.P18060892011609374463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A184964 ((n : ℤ) - 2 * a ⌊(n : ℚ) / 2⌋.toNat).toNat

end

end A058276.P18060892011609374463

/-!
# A058277: Number of values of k such that phi(k) = n, where n runs through the values (A002202) taken by phi.

The programs for A058277, there is no canonical definition to state claims against.
-/

/-! ## A058277.P16402775187394211061

`A143421(n+1)+A143422(n+1)`
-/

namespace A058277.P16402775187394211061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143421 (n + 1) + A143422 (n + 1)

end

end A058277.P16402775187394211061

/-! ## A058277.P12716245388723065650

`A014197(A002202(n+1))`
-/

namespace A058277.P12716245388723065650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (A002202 (n + 1)).toNat

end

end A058277.P12716245388723065650

/-! ## A058277.P11552611345340928968

`A014197(lt[0, A014197(n+1)]+1)`
-/

namespace A058277.P11552611345340928968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A058277.P11552611345340928968

/-! ## A058277.P18239421295680100194

`A014197(eq[1, A264739(n+1)]+1)`
-/

namespace A058277.P18239421295680100194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A058277.P18239421295680100194

/-! ## A058277.P13354638076221519968

`A014197(A000010(A006511(n+1)))`
-/

namespace A058277.P13354638076221519968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (A000010 (A006511 (n + 1)).toNat).toNat

end

end A058277.P13354638076221519968

/-! ## A058277.P1510257757769915861

`A014197(A035114(∑[A143422(n+1)]))`
-/

namespace A058277.P1510257757769915861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (A035114 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A058277.P1510257757769915861

/-! ## A058277.P15768210143095220928

`A066412(A002181(n+1))`
-/

namespace A058277.P15768210143095220928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066412 (A002181 (n + 1)).toNat

end

end A058277.P15768210143095220928

/-! ## A058277.P12872011660124791614

`A066412(A143423(n+1))`
-/

namespace A058277.P12872011660124791614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066412 (A143423 (n + 1)).toNat

end

end A058277.P12872011660124791614

/-! ## A058277.P17087682064645637967

`A066412(A006511(n+1))`
-/

namespace A058277.P17087682064645637967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066412 (A006511 (n + 1)).toNat

end

end A058277.P17087682064645637967

/-!
# A058278: Expansion of (1 - x^2)/(1 - x - x^3).

The programs for A058278, the canonical program `A058278.P13103122703430390268` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058278 has offset 0).

The definition of A058278 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2)/(1-x-x^3))` (program `A058278.P13103122703430390268`, by `A058278.P13103122703430390268.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A058278.P13103122703430390268

`ogf((1-x^2)/(1-x-x^3))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A058278

/-- `ogf((1-x^2)/(1-x-x^3))` -/
def P13103122703430390268.Spec : Prop :=
  ∀ n, P13103122703430390268.a n = A058278 n

theorem P13103122703430390268.correct : P13103122703430390268.Spec := by
  intro n
  simp only [A058278]

end A058278

/-! ## A058278.P13574982237590872897

`a(n-3)+a(n-1)` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A058278.P13574982237590872897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  a (n - 3) + a (n - 1)

end

end A058278.P13574982237590872897

namespace A058278

/-- `a(n-3)+a(n-1)` -/
def P13574982237590872897.Spec : Prop :=
  ∀ n, (P13574982237590872897.a n : ℤ) = A058278 n

end A058278

/-! ## A058278.P5927931953684418554

`a(n-1)-floor(-a(n-3))` with `a(0)=1, a(1)=1, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A058278.P5927931953684418554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  a (n - 1) - (-a (n - 3))

end

end A058278.P5927931953684418554

namespace A058278

/-- `a(n-1)-floor(-a(n-3))` -/
def P5927931953684418554.Spec : Prop :=
  ∀ n, P5927931953684418554.a n = A058278 n

end A058278

/-! ## A058278.P3550973288062966659

`a(n-1)-ceil(-a(n-3))` with `a(0)=1, a(1)=1, a(2)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A058278.P3550973288062966659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  a (n - 1) - (-a (n - 3))

end

end A058278.P3550973288062966659

namespace A058278

/-- `a(n-1)-ceil(-a(n-3))` -/
def P3550973288062966659.Spec : Prop :=
  ∀ n, P3550973288062966659.a n = A058278 n

end A058278

/-! ## A058278.P11079948473247607934

`a(n-1)-round(-a(n-3))` with `a(0)=1, a(1)=1, a(2)=0`

`round` is left out, it is the identity on integers.
-/

namespace A058278.P11079948473247607934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  a (n - 1) - (-a (n - 3))

end

end A058278.P11079948473247607934

namespace A058278

/-- `a(n-1)-round(-a(n-3))` -/
def P11079948473247607934.Spec : Prop :=
  ∀ n, P11079948473247607934.a n = A058278 n

end A058278

/-! ## A058278.P9181475237074210057

`a(n-1)-(a(n-5)-a(n-2))` with `a(0)=1, a(1)=1, a(2)=0, a(3)=1, a(4)=2`
-/

namespace A058278.P9181475237074210057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 1, 2] fun n a =>
  a (n - 1) - (a (n - 5) - a (n - 2))

end

end A058278.P9181475237074210057

namespace A058278

/-- `a(n-1)-(a(n-5)-a(n-2))` -/
def P9181475237074210057.Spec : Prop :=
  ∀ n, P9181475237074210057.a n = A058278 n

end A058278

/-! ## A058278.P5343219438093070599

`A135851(n+1)+A078012(n)`
-/

namespace A058278.P5343219438093070599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (n + 1) + A078012 n

end

end A058278.P5343219438093070599

namespace A058278

/-- `A135851(n+1)+A078012(n)` -/
def P5343219438093070599.Spec : Prop :=
  ∀ n, P5343219438093070599.a n = A058278 n

end A058278

/-! ## A058278.P7053008833257350919

`A107458(n+3)+A107458(n)`
-/

namespace A058278.P7053008833257350919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107458 (n + 3) + A107458 n

end

end A058278.P7053008833257350919

namespace A058278

/-- `A107458(n+3)+A107458(n)` -/
def P7053008833257350919.Spec : Prop :=
  ∀ n, P7053008833257350919.a n = A058278 n

end A058278

/-! ## A058278.P945270378586984875

`A135851(n+1)+A135851(n+2)`
-/

namespace A058278.P945270378586984875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (n + 1) + A135851 (n + 2)

end

end A058278.P945270378586984875

namespace A058278

/-- `A135851(n+1)+A135851(n+2)` -/
def P945270378586984875.Spec : Prop :=
  ∀ n, P945270378586984875.a n = A058278 n

end A058278

/-! ## A058278.P2583300830871520943

`A078012(n)+Δ[A078012(n+1)]`
-/

namespace A058278.P2583300830871520943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 n + (f1 (n + 1) - f1 n)

end

end A058278.P2583300830871520943

namespace A058278

/-- `A078012(n)+Δ[A078012(n+1)]` -/
def P2583300830871520943.Spec : Prop :=
  ∀ n, P2583300830871520943.a n = A058278 n

end A058278

/-! ## A058278.P13636230315894926869

`∑[A135851(n+1)]-A135851(n)`
-/

namespace A058278.P13636230315894926869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A135851 n

end

end A058278.P13636230315894926869

namespace A058278

/-- `∑[A135851(n+1)]-A135851(n)` -/
def P13636230315894926869.Spec : Prop :=
  ∀ n, P13636230315894926869.a n = A058278 n

end A058278

/-! ## A058278.P11138471415513904088

`A179070(n)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A058278.P11138471415513904088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A179070 n - a (n - 1)

end

end A058278.P11138471415513904088

namespace A058278

/-- `A179070(n)-a(n-1)` -/
def P11138471415513904088.Spec : Prop :=
  ∀ n, P11138471415513904088.a n = A058278 n

end A058278

/-! ## A058278.P716224594809510794

`A000930(n)-A078012(n+1)`
-/

namespace A058278.P716224594809510794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n - A078012 (n + 1)

end

end A058278.P716224594809510794

namespace A058278

/-- `A000930(n)-A078012(n+1)` -/
def P716224594809510794.Spec : Prop :=
  ∀ n, P716224594809510794.a n = A058278 n

end A058278

/-! ## A058278.P9661188248901449683

`A000930(n)-A135851(n+3)`
-/

namespace A058278.P9661188248901449683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n - A135851 (n + 3)

end

end A058278.P9661188248901449683

namespace A058278

/-- `A000930(n)-A135851(n+3)` -/
def P9661188248901449683.Spec : Prop :=
  ∀ n, P9661188248901449683.a n = A058278 n

end A058278

/-! ## A058278.P10275983305371542917

`A078012(n+3)-A078012(n+1)`
-/

namespace A058278.P10275983305371542917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (n + 3) - A078012 (n + 1)

end

end A058278.P10275983305371542917

namespace A058278

/-- `A078012(n+3)-A078012(n+1)` -/
def P10275983305371542917.Spec : Prop :=
  ∀ n, P10275983305371542917.a n = A058278 n

end A058278

/-! ## A058278.P294653383775080951

`A000930(n)-A226916(2*n+3)`
-/

namespace A058278.P294653383775080951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n - A226916 (2 * n + 3)

end

end A058278.P294653383775080951

namespace A058278

/-- `A000930(n)-A226916(2*n+3)` -/
def P294653383775080951.Spec : Prop :=
  ∀ n, P294653383775080951.a n = A058278 n

end A058278

/-! ## A058278.P10764959205546316473

`A000930(n)-A078012(n)-A135851(n)`
-/

namespace A058278.P10764959205546316473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n - A078012 n - A135851 n

end

end A058278.P10764959205546316473

namespace A058278

/-- `A000930(n)-A078012(n)-A135851(n)` -/
def P10764959205546316473.Spec : Prop :=
  ∀ n, P10764959205546316473.a n = A058278 n

end A058278

/-! ## A058278.P13133464456101870622

`Δ[A226916(2*(n+3))]`
-/

namespace A058278.P13133464456101870622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226916 (2 * (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A058278.P13133464456101870622

namespace A058278

/-- `Δ[A226916(2*(n+3))]` -/
def P13133464456101870622.Spec : Prop :=
  ∀ n, P13133464456101870622.a n = A058278 n

end A058278

/-! ## A058278.P15655394073786986176

`A000930(n)-Δ[A000930(n)]`
-/

namespace A058278.P15655394073786986176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n - (f1 (n + 1) - f1 n)

end

end A058278.P15655394073786986176

namespace A058278

/-- `A000930(n)-Δ[A000930(n)]` -/
def P15655394073786986176.Spec : Prop :=
  ∀ n, P15655394073786986176.a n = A058278 n

end A058278

/-! ## A058278.P518658353730258615

`Δ[A000930(n)+Δ[A078012(n)]]`
-/

namespace A058278.P518658353730258615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A058278.P518658353730258615

namespace A058278

/-- `Δ[A000930(n)+Δ[A078012(n)]]` -/
def P518658353730258615.Spec : Prop :=
  ∀ n, P518658353730258615.a n = A058278 n

end A058278

/-!
# A058279: a(0)=a(1)=1, a(n)=a(n-2)+(n+1)*a(n-1).

The programs for A058279, the canonical program `A058279.P493393996638830028` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058279 has offset 0).

The definition of A058279 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+(n+1)*a(n-1)` (program `A058279.P493393996638830028`, by `A058279.P493393996638830028.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A058279.P493393996638830028

`a(n-2)+(n+1)*a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A058279

/-- `a(n-2)+(n+1)*a(n-1)` -/
def P493393996638830028.Spec : Prop :=
  ∀ n, (P493393996638830028.a n : ℤ) = A058279 n

theorem P493393996638830028.correct : P493393996638830028.Spec := by
  intro n
  simp only [A058279]

end A058279

/-! ## A058279.P5240804126849720273

`∏[1/a(n-1)+n+1]` with `a(0)=1, a(1)=1`
-/

namespace A058279.P5240804126849720273
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  1 / f1 (n - 1) + (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A058279.P5240804126849720273

namespace A058279

/-- `∏[1/a(n-1)+n+1]` -/
def P5240804126849720273.Spec : Prop :=
  ∀ n, P5240804126849720273.a n = (A058279 n : ℚ)

end A058279

/-! ## A058279.P10513711198699169905

`a(n-2)+a(n-1)/(n+1)^(-1)` with `a(0)=1, a(1)=1`
-/

namespace A058279.P10513711198699169905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) / (n + 1 : ℚ) ^ (-1 : ℤ)

end

end A058279.P10513711198699169905

namespace A058279

/-- `a(n-2)+a(n-1)/(n+1)^(-1)` -/
def P10513711198699169905.Spec : Prop :=
  ∀ n, P10513711198699169905.a n = (A058279 n : ℚ)

end A058279

/-! ## A058279.P4962082545187436481

`A228340(∑[n+1]+2)`
-/

namespace A058279.P4962082545187436481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228340 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A058279.P4962082545187436481

namespace A058279

/-- `A228340(∑[n+1]+2)` -/
def P4962082545187436481.Spec : Prop :=
  ∀ n, P4962082545187436481.a n = A058279 n

end A058279

/-! ## A058279.P8095073584965461690

`record[A001053(n)]-A058307(n)`
-/

namespace A058279.P8095073584965461690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001053 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A058307 n

end

end A058279.P8095073584965461690

namespace A058279

/-- `record[A001053(n)]-A058307(n)` -/
def P8095073584965461690.Spec : Prop :=
  ∀ n, P8095073584965461690.a n = A058279 n

end A058279

/-! ## A058279.P9552222076179931296

`A001053(n+2)-A058307(n)`
-/

namespace A058279.P9552222076179931296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001053 (n + 2) - A058307 n

end

end A058279.P9552222076179931296

namespace A058279

/-- `A001053(n+2)-A058307(n)` -/
def P9552222076179931296.Spec : Prop :=
  ∀ n, P9552222076179931296.a n = A058279 n

end A058279

/-!
# A058281: Continued fraction for square root of e.

The programs for A058281, the canonical program `A058281.P5052278712898496993` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058281 has offset 0).

The definition of A058281 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058281.P15496745576773493987

`gcd(4*n-1, comp[4*(n+1)])`
-/

namespace A058281.P15496745576773493987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((4 * n : ℤ) - 1) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A058281.P15496745576773493987

namespace A058281

/-- `gcd(4*n-1, comp[4*(n+1)])` -/
def P15496745576773493987.Spec : Prop :=
  ∀ n, (P15496745576773493987.a n : ℤ) = A058281 n

end A058281

/-! ## A058281.P12064035935545701417

`comp[or(3, n)]^Δ[ceil((n+2)/3)]`
-/

namespace A058281.P12064035935545701417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℚ) / 3⌉

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

end

end A058281.P12064035935545701417

namespace A058281

/-- `comp[or(3, n)]^Δ[ceil((n+2)/3)]` -/
def P12064035935545701417.Spec : Prop :=
  ∀ n, P12064035935545701417.a n = (A058281 n : ℚ)

end A058281

/-! ## A058281.P7817085833522490894

`and((-1)^(n%3), or(1, comp[or(3, n)]))`
-/

namespace A058281.P7817085833522490894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((-1) ^ (n % 3)) (Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ)

end

end A058281.P7817085833522490894

namespace A058281

/-- `and((-1)^(n%3), or(1, comp[or(3, n)]))` -/
def P7817085833522490894.Spec : Prop :=
  ∀ n, P7817085833522490894.a n = A058281 n

end A058281

/-! ## A058281.P7894318960478378020

`abs(2*n-lcm(3, 2*n+1)/3)`
-/

namespace A058281.P7894318960478378020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℚ) - (Nat.lcm 3 (2 * n + 1) : ℚ) / 3|

end

end A058281.P7894318960478378020

namespace A058281

/-- `abs(2*n-lcm(3, 2*n+1)/3)` -/
def P7894318960478378020.Spec : Prop :=
  ∀ n, P7894318960478378020.a n = (A058281 n : ℚ)

end A058281

/-! ## A058281.P9768385887557645129

`round(4*n/3)^Δ[ceil((n+2)/3)]`
-/

namespace A058281.P9768385887557645129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℚ) / 3⌉

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (4 * ((n : ℚ) / 3)) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A058281.P9768385887557645129

namespace A058281

/-- `round(4*n/3)^Δ[ceil((n+2)/3)]` -/
def P9768385887557645129.Spec : Prop :=
  ∀ n, P9768385887557645129.a n = (A058281 n : ℚ)

end A058281

/-! ## A058281.P5052278712898496993

`abs(gcd(2*n+1, ∑[n²])-2*n)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A058281

/-- `abs(gcd(2*n+1, ∑[n²])-2*n)` -/
def P5052278712898496993.Spec : Prop :=
  ∀ n, P5052278712898496993.a n = A058281 n

theorem P5052278712898496993.correct : P5052278712898496993.Spec := by
  intro n
  simp only [A058281]

end A058281

/-! ## A058281.P7416055927906117329

`a(n-3)+4%a(n-3)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=5`
-/

namespace A058281.P7416055927906117329
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 5] fun n a =>
  a (n - 3) + 4 % a (n - 3)

end

end A058281.P7416055927906117329

namespace A058281

/-- `a(n-3)+4%a(n-3)` -/
def P7416055927906117329.Spec : Prop :=
  ∀ n, (P7416055927906117329.a n : ℤ) = A058281 n

end A058281

/-! ## A058281.P10761394267627984850

`abs((2*n+1)/gcd(3, 1-n)-2*n)`
-/

namespace A058281.P10761394267627984850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(2 * n + 1 : ℚ) / (Int.gcd 3 (1 - (n : ℤ)) : ℚ) - (2 * n : ℚ)|

end

end A058281.P10761394267627984850

namespace A058281

/-- `abs((2*n+1)/gcd(3, 1-n)-2*n)` -/
def P10761394267627984850.Spec : Prop :=
  ∀ n, P10761394267627984850.a n = (A058281 n : ℚ)

end A058281

/-! ## A058281.P10373964249322240409

`A266072(ceil(2*n/3))`
-/

namespace A058281.P10373964249322240409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266072 ⌈2 * ((n : ℚ) / 3)⌉.toNat

end

end A058281.P10373964249322240409

namespace A058281

/-- `A266072(ceil(2*n/3))` -/
def P10373964249322240409.Spec : Prop :=
  ∀ n, P10373964249322240409.a n = A058281 n

end A058281

/-! ## A058281.P5833193078698240268

`abs(2*n-A146535(n+1))`
-/

namespace A058281.P5833193078698240268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A146535 (n + 1)|

end

end A058281.P5833193078698240268

namespace A058281

/-- `abs(2*n-A146535(n+1))` -/
def P5833193078698240268.Spec : Prop :=
  ∀ n, P5833193078698240268.a n = A058281 n

end A058281

/-! ## A058281.P2540743294499691077

`2*A006083(2*n+1)-1`
-/

namespace A058281.P2540743294499691077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006083 (2 * n + 1) - 1

end

end A058281.P2540743294499691077

namespace A058281

/-- `2*A006083(2*n+1)-1` -/
def P2540743294499691077.Spec : Prop :=
  ∀ n, P2540743294499691077.a n = A058281 n

end A058281

/-! ## A058281.P10365609262471025278

`A004273(or(1, Δ[floor((n-2)/3)²]+1))`
-/

namespace A058281.P10365609262471025278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 2 : ℚ) / 3⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (Int.lor 1 (f1 (n + 1) - f1 n + 1)).toNat

end

end A058281.P10365609262471025278

namespace A058281

/-- `A004273(or(1, Δ[floor((n-2)/3)²]+1))` -/
def P10365609262471025278.Spec : Prop :=
  ∀ n, P10365609262471025278.a n = A058281 n

end A058281

/-! ## A058281.P3539329411350031988

`A093178(A004773(n))`
-/

namespace A058281.P3539329411350031988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A004773 n).toNat

end

end A058281.P3539329411350031988

namespace A058281

/-- `A093178(A004773(n))` -/
def P3539329411350031988.Spec : Prop :=
  ∀ n, P3539329411350031988.a n = A058281 n

end A058281

/-! ## A058281.P833299507240470346

`A267872(A005131(n))`
-/

namespace A058281.P833299507240470346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 (A005131 n).toNat

end

end A058281.P833299507240470346

namespace A058281

/-- `A267872(A005131(n))` -/
def P833299507240470346.Spec : Prop :=
  ∀ n, P833299507240470346.a n = A058281 n

end A058281

/-! ## A058281.P12384406586510010705

`A093178(A131452(n+1))`
-/

namespace A058281.P12384406586510010705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A131452 (n + 1)).toNat

end

end A058281.P12384406586510010705

namespace A058281

/-- `A093178(A131452(n+1))` -/
def P12384406586510010705.Spec : Prop :=
  ∀ n, P12384406586510010705.a n = A058281 n

end A058281

/-! ## A058281.P1684433550263644323

`A093178(A226122(n)-1)`
-/

namespace A058281.P1684433550263644323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A226122 n - 1).toNat

end

end A058281.P1684433550263644323

namespace A058281

/-- `A093178(A226122(n)-1)` -/
def P1684433550263644323.Spec : Prop :=
  ∀ n, P1684433550263644323.a n = A058281 n

end A058281

/-! ## A058281.P10958309621983431142

`A093178(A002264(n)+n)`
-/

namespace A058281.P10958309621983431142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A002264 n + (n : ℤ)).toNat

end

end A058281.P10958309621983431142

namespace A058281

/-- `A093178(A002264(n)+n)` -/
def P10958309621983431142.Spec : Prop :=
  ∀ n, P10958309621983431142.a n = A058281 n

end A058281

/-! ## A058281.P2625592456344697550

`A267318(n)%A136289(n)`
-/

namespace A058281.P2625592456344697550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267318 n) (A136289 n)

end

end A058281.P2625592456344697550

namespace A058281

/-- `A267318(n)%A136289(n)` -/
def P2625592456344697550.Spec : Prop :=
  ∀ n, P2625592456344697550.a n = A058281 n

end A058281

/-! ## A058281.P158965001448219812

`A168056(and(n, A257075(n)))`
-/

namespace A058281.P158965001448219812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168056 (Int.land (n : ℤ) (A257075 n)).toNat

end

end A058281.P158965001448219812

namespace A058281

/-- `A168056(and(n, A257075(n)))` -/
def P158965001448219812.Spec : Prop :=
  ∀ n, P158965001448219812.a n = A058281 n

end A058281

/-!
# A058284: Continued fraction for Pi^2.

The programs for A058284, there is no canonical definition to state claims against.
-/

/-! ## A058284.P1365024377799072771

`A137299(∑[n+2])`
-/

namespace A058284.P1365024377799072771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137299 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A058284.P1365024377799072771

/-!
# A058285: Continued fraction for Pi^3.

The programs for A058285, there is no canonical definition to state claims against.
-/

/-! ## A058285.P8691693734062634069

`A137299(A034856(n+2))`
-/

namespace A058285.P8691693734062634069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137299 (A034856 (n + 2)).toNat

end

end A058285.P8691693734062634069

/-!
# A058289: Integer nearest 10^n/(log(10^n) - 1.08366).

The programs for A058289, there is no canonical definition to state claims against.
-/

/-! ## A058289.P8772122732106157458

`A058290(n)+A006880(n)`
-/

namespace A058289.P8772122732106157458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058290 n + A006880 n

end

end A058289.P8772122732106157458

/-! ## A058289.P5788802396535920897

`A058290(n)+∑[A006879(n)]`
-/

namespace A058289.P5788802396535920897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058290 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058289.P5788802396535920897

/-! ## A058289.P7103469868750572540

`A090226(n+1)+A058290(n)-1`
-/

namespace A058289.P7103469868750572540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090226 (n + 1) + (A058290 n - 1)

end

end A058289.P7103469868750572540

/-! ## A058289.P10421798685324183244

`A058290(n)-A006880(n)*A057428(n)`
-/

namespace A058289.P10421798685324183244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058290 n - A006880 n * A057428 n

end

end A058289.P10421798685324183244

/-! ## A058289.P9893338050337555201

`A058290(n)+A114327(2*(n+1)²)+A090226(n+1)`
-/

namespace A058289.P9893338050337555201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058290 n + (A114327 (2 * (n + 1) ^ 2) + A090226 (n + 1))

end

end A058289.P9893338050337555201

/-!
# A058290: Rounded difference between 10^n/(log(10^n) - A) and pi(10^n), where A is Legendre's constant and pi is the prime counting function.

The programs for A058290, there is no canonical definition to state claims against.
-/

/-! ## A058290.P2200727653107323112

`A058289(n)-A006880(n)`
-/

namespace A058290.P2200727653107323112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058289 n - A006880 n

end

end A058290.P2200727653107323112

/-! ## A058290.P7045515811773913020

`A058289(n)-∑[A006879(n)]`
-/

namespace A058290.P7045515811773913020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058289 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058290.P7045515811773913020

/-! ## A058290.P1117644572937508317

`A058289(n)+1-A090226(n+1)`
-/

namespace A058290.P1117644572937508317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058289 n + (1 - A090226 (n + 1))

end

end A058290.P1117644572937508317

/-! ## A058290.P2540393228240437065

`A058289(n)+A065894(n)-A002283(n)`
-/

namespace A058290.P2540393228240437065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058289 n + (A065894 n - A002283 n)

end

end A058290.P2540393228240437065

/-! ## A058290.P3870715088372611357

`A058289(n)-A122121(2*n)`
-/

namespace A058290.P3870715088372611357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058289 n - A122121 (2 * n)

end

end A058290.P3870715088372611357

/-!
# A058291: Continued fraction for 2 Pi.

The programs for A058291, there is no canonical definition to state claims against.
-/

/-! ## A058291.P16596997494957583398

`floor(ratio[A046955(n+1)])`
-/

namespace A058291.P16596997494957583398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A058291.P16596997494957583398

/-!
# A058294: Successive rows of a triangle, the columns of which are generalized Fibonacci sequences S(j).

The programs for A058294, there is no canonical definition to state claims against.
-/

/-! ## A058294.P184243384510631669

`A156079(A235113(n))`
-/

namespace A058294.P184243384510631669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156079 (A235113 n).toNat

end

end A058294.P184243384510631669

/-! ## A058294.P14597826880262366721

`A389975(A235114(n))`
-/

namespace A058294.P14597826880262366721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389975 (A235114 n).toNat

end

end A058294.P14597826880262366721

/-! ## A058294.P8472996514162250194

`A389975(A235116(n))`
-/

namespace A058294.P8472996514162250194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389975 (A235116 n).toNat

end

end A058294.P8472996514162250194

/-! ## A058294.P15747218218899043998

`A225644(A324960(n)-A140751(n+1))`
-/

namespace A058294.P15747218218899043998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225644 (A324960 n - A140751 (n + 1)).toNat

end

end A058294.P15747218218899043998

/-! ## A058294.P11168852206273646779

`A004525(A034870(n)-A185284(2*n+1))`
-/

namespace A058294.P11168852206273646779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A034870 n - A185284 (2 * n + 1)).toNat

end

end A058294.P11168852206273646779

/-!
# A058295: Products of distinct factorials.

The programs for A058295, there is no canonical definition to state claims against.
-/

/-! ## A058295.P7017505217876066643

`∏{p}[A046528(n+1), A135873(#)]`
-/

namespace A058295.P7017505217876066643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A135873 p

end

end A058295.P7017505217876066643

/-! ## A058295.P7141251183118575694

`∪[A099144(n+1), record[A309841(n)]]`
-/

namespace A058295.P7141251183118575694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099144 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A058295.P7141251183118575694

/-! ## A058295.P14828155556386469797

`record[A339088(A310061(n))]`
-/

namespace A058295.P14828155556386469797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339088 (A310061 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058295.P14828155556386469797

/-! ## A058295.P17452669089244094572

`A123258(A167051(n+1))`
-/

namespace A058295.P17452669089244094572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123258 (A167051 (n + 1)).toNat

end

end A058295.P17452669089244094572

/-! ## A058295.P15403852188085245886

`eq[A055935(n), A108069(n)]`
-/

namespace A058295.P15403852188085245886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055935 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108069 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058295.P15403852188085245886

/-!
# A058296: Average of consecutive primes.

The programs for A058296, the canonical program `A058296.P817858334841788841` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058296 has offset 1).

The definition of A058296 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058296.P14327815612107483618

`A162801(n+1)+A000038(n)`
-/

namespace A058296.P14327815612107483618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162801 (n + 1) + A000038 n

end

end A058296.P14327815612107483618

namespace A058296

/-- `A162801(n+1)+A000038(n)` -/
def P14327815612107483618.Spec : Prop :=
  ∀ n, P14327815612107483618.a n = A058296 (n + 1)

end A058296

/-! ## A058296.P13354327568975958267

`A162801(n+1)+A000122(A006530(n+1))`
-/

namespace A058296.P13354327568975958267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162801 (n + 1) + A000122 (A006530 (n + 1)).toNat

end

end A058296.P13354327568975958267

namespace A058296

/-- `A162801(n+1)+A000122(A006530(n+1))` -/
def P13354327568975958267.Spec : Prop :=
  ∀ n, P13354327568975958267.a n = A058296 (n + 1)

end A058296

/-! ## A058296.P1595042623025840678

`round(sqrt(A006094(comp[2*(n+1)]+1)))`
-/

namespace A058296.P1595042623025840678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A006094 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) : ℝ))

end

end A058296.P1595042623025840678

namespace A058296

/-- `round(sqrt(A006094(comp[2*(n+1)]+1)))` -/
def P1595042623025840678.Spec : Prop :=
  ∀ n, P1595042623025840678.a n = A058296 (n + 1)

end A058296

/-! ## A058296.P17456704450951021464

`floor(A001043(comp[2*(n+1)]+1)/2)`
-/

namespace A058296.P17456704450951021464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001043 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) : ℚ) / 2⌋

end

end A058296.P17456704450951021464

namespace A058296

/-- `floor(A001043(comp[2*(n+1)]+1)/2)` -/
def P17456704450951021464.Spec : Prop :=
  ∀ n, P17456704450951021464.a n = A058296 (n + 1)

end A058296

/-! ## A058296.P817858334841788841

`A162800(A004277(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A058296

/-- `A162800(A004277(n))` -/
def P817858334841788841.Spec : Prop :=
  ∀ n, P817858334841788841.a n = A058296 (n + 1)

theorem P817858334841788841.correct : P817858334841788841.Spec := by
  intro n
  simp only [A058296, Nat.add_sub_cancel]

end A058296

/-! ## A058296.P10488759829459604673

`A162800(A004275(n+1))`
-/

namespace A058296.P10488759829459604673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 (A004275 (n + 1)).toNat

end

end A058296.P10488759829459604673

namespace A058296

/-- `A162800(A004275(n+1))` -/
def P10488759829459604673.Spec : Prop :=
  ∀ n, P10488759829459604673.a n = A058296 (n + 1)

end A058296

/-! ## A058296.P16387224515536610649

`A000007(n)+A011974(2*n+1)/2`
-/

namespace A058296.P16387224515536610649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 n : ℚ) + (A011974 (2 * n + 1) : ℚ) / 2

end

end A058296.P16387224515536610649

namespace A058296

/-- `A000007(n)+A011974(2*n+1)/2` -/
def P16387224515536610649.Spec : Prop :=
  ∀ n, P16387224515536610649.a n = (A058296 (n + 1) : ℚ)

end A058296

/-! ## A058296.P5009698852869411508

`A011974(2*n+1)/gcd(2, A011974(n+2))`
-/

namespace A058296.P5009698852869411508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011974 (2 * n + 1) : ℚ) / (Int.gcd 2 (A011974 (n + 2)) : ℚ)

end

end A058296.P5009698852869411508

namespace A058296

/-- `A011974(2*n+1)/gcd(2, A011974(n+2))` -/
def P5009698852869411508.Spec : Prop :=
  ∀ n, P5009698852869411508.a n = (A058296 (n + 1) : ℚ)

end A058296

/-! ## A058296.P8573031010012302751

`record[A000265(n+2)+A078444(n+1)-(n+1)]`
-/

namespace A058296.P8573031010012302751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 2) + (A078444 (n + 1) - (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058296.P8573031010012302751

namespace A058296

/-- `record[A000265(n+2)+A078444(n+1)-(n+1)]` -/
def P8573031010012302751.Spec : Prop :=
  ∀ n, P8573031010012302751.a n = A058296 (n + 1)

end A058296

/-! ## A058296.P14129026141841582000

`A011974(2*n+1)/(4*n+2-A004277(2*n))`
-/

namespace A058296.P14129026141841582000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011974 (2 * n + 1) : ℚ) / ((4 * n + 2 : ℤ) - A004277 (2 * n) : ℚ)

end

end A058296.P14129026141841582000

namespace A058296

/-- `A011974(2*n+1)/(4*n+2-A004277(2*n))` -/
def P14129026141841582000.Spec : Prop :=
  ∀ n, P14129026141841582000.a n = (A058296 (n + 1) : ℚ)

end A058296

/-! ## A058296.P15933480498263214753

`A011974(2*n+1)/A020639(A006093(n+1))`
-/

namespace A058296.P15933480498263214753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011974 (2 * n + 1) : ℚ) / (A020639 (A006093 (n + 1)).toNat : ℚ)

end

end A058296.P15933480498263214753

namespace A058296

/-- `A011974(2*n+1)/A020639(A006093(n+1))` -/
def P15933480498263214753.Spec : Prop :=
  ∀ n, P15933480498263214753.a n = (A058296 (n + 1) : ℚ)

end A058296

/-! ## A058296.P15801820888434361121

`ceil(sqrt(A023523(2*n+1)))`
-/

namespace A058296.P15801820888434361121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A023523 (2 * n + 1) : ℝ)⌉

end

end A058296.P15801820888434361121

namespace A058296

/-- `ceil(sqrt(A023523(2*n+1)))` -/
def P15801820888434361121.Spec : Prop :=
  ∀ n, P15801820888434361121.a n = A058296 (n + 1)

end A058296

/-! ## A058296.P2632291955552088715

`floor(sqrt(A023515(2*n+1)))+1`
-/

namespace A058296.P2632291955552088715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A023515 (2 * n + 1)) + 1

end

end A058296.P2632291955552088715

namespace A058296

/-- `floor(sqrt(A023515(2*n+1)))+1` -/
def P2632291955552088715.Spec : Prop :=
  ∀ n, P2632291955552088715.a n = A058296 (n + 1)

end A058296

/-! ## A058296.P11069117696021977189

`floor(sqrt(A048851(2*n+1)/2))`
-/

namespace A058296.P11069117696021977189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A048851 (2 * n + 1) : ℚ) / 2 : ℝ)⌋

end

end A058296.P11069117696021977189

namespace A058296

/-- `floor(sqrt(A048851(2*n+1)/2))` -/
def P11069117696021977189.Spec : Prop :=
  ∀ n, P11069117696021977189.a n = A058296 (n + 1)

end A058296

/-! ## A058296.P10357008834013213789

`(A068499(2*(n+1))+A028815(2*n))/2`
-/

namespace A058296.P10357008834013213789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068499 (2 * (n + 1)) + A028815 (2 * n) : ℚ) / 2

end

end A058296.P10357008834013213789

namespace A058296

/-- `(A068499(2*(n+1))+A028815(2*n))/2` -/
def P10357008834013213789.Spec : Prop :=
  ∀ n, P10357008834013213789.a n = (A058296 (n + 1) : ℚ)

end A058296

/-! ## A058296.P12774733660089477852

`(A164653(2*(n+1))+A130706(2*n))/2`
-/

namespace A058296.P12774733660089477852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164653 (2 * (n + 1)) + A130706 (2 * n) : ℚ) / 2

end

end A058296.P12774733660089477852

namespace A058296

/-- `(A164653(2*(n+1))+A130706(2*n))/2` -/
def P12774733660089477852.Spec : Prop :=
  ∀ n, P12774733660089477852.a n = (A058296 (n + 1) : ℚ)

end A058296

/-! ## A058296.P6750456153616730976

`(A054541(2*n+1)+A001747(2*n+1))/2`
-/

namespace A058296.P6750456153616730976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054541 (2 * n + 1) + A001747 (2 * n + 1) : ℚ) / 2

end

end A058296.P6750456153616730976

namespace A058296

/-- `(A054541(2*n+1)+A001747(2*n+1))/2` -/
def P6750456153616730976.Spec : Prop :=
  ∀ n, P6750456153616730976.a n = (A058296 (n + 1) : ℚ)

end A058296

/-! ## A058296.P3711368253198352557

`A008578(2*n+1)+A054541(2*n+1)/2`
-/

namespace A058296.P3711368253198352557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008578 (2 * n + 1) : ℚ) + (A054541 (2 * n + 1) : ℚ) / 2

end

end A058296.P3711368253198352557

namespace A058296

/-- `A008578(2*n+1)+A054541(2*n+1)/2` -/
def P3711368253198352557.Spec : Prop :=
  ∀ n, P3711368253198352557.a n = (A058296 (n + 1) : ℚ)

end A058296

/-! ## A058296.P621785772625744134

`A158611(2*(n+1))+A054541(2*n+1)/2`
-/

namespace A058296.P621785772625744134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158611 (2 * (n + 1)) : ℚ) + (A054541 (2 * n + 1) : ℚ) / 2

end

end A058296.P621785772625744134

namespace A058296

/-- `A158611(2*(n+1))+A054541(2*n+1)/2` -/
def P621785772625744134.Spec : Prop :=
  ∀ n, P621785772625744134.a n = (A058296 (n + 1) : ℚ)

end A058296

/-! ## A058296.P5793146992837559088

`ceil(sqrt(A008578(2*n+1)*A008578(2*(n+1))))`
-/

namespace A058296.P5793146992837559088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A008578 (2 * n + 1) * A008578 (2 * (n + 1)) : ℝ)⌉

end

end A058296.P5793146992837559088

namespace A058296

/-- `ceil(sqrt(A008578(2*n+1)*A008578(2*(n+1))))` -/
def P5793146992837559088.Spec : Prop :=
  ∀ n, P5793146992837559088.a n = A058296 (n + 1)

end A058296

/-!
# A058298: Triangle n!/(n-k), 1 <= k < n, read by rows.

The programs for A058298, the canonical program `A058298.P11921164029853105158` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058298 has offset 2).

The definition of A058298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058298.P11681230119700024813

`∏[1/A004736(n+1)+1]`
-/

namespace A058298.P11681230119700024813
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A004736 (n + 1) : ℚ) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A058298.P11681230119700024813

namespace A058298

/-- `∏[1/A004736(n+1)+1]` -/
def P11681230119700024813.Spec : Prop :=
  ∀ n, P11681230119700024813.a n = (A058298 (n + 2) : ℚ)

end A058298

/-! ## A058298.P11921164029853105158

`A077012(A080036(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A058298

/-- `A077012(A080036(n+1))` -/
def P11921164029853105158.Spec : Prop :=
  ∀ n, P11921164029853105158.a n = A058298 (n + 2)

theorem P11921164029853105158.correct : P11921164029853105158.Spec := by
  intro n
  simp only [A058298, Nat.add_sub_cancel]

end A058298

/-! ## A058298.P3090778492889237258

`A034893(A181133(n+1))`
-/

namespace A058298.P3090778492889237258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034893 (A181133 (n + 1)).toNat

end

end A058298.P3090778492889237258

namespace A058298

/-- `A034893(A181133(n+1))` -/
def P3090778492889237258.Spec : Prop :=
  ∀ n, P3090778492889237258.a n = A058298 (n + 2)

end A058298

/-! ## A058298.P968903551555354926

`A077012(A014132(n+2))`
-/

namespace A058298.P968903551555354926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077012 (A014132 (n + 2)).toNat

end

end A058298.P968903551555354926

namespace A058298

/-- `A077012(A014132(n+2))` -/
def P968903551555354926.Spec : Prop :=
  ∀ n, P968903551555354926.a n = A058298 (n + 2)

end A058298

/-! ## A058298.P4856274587644857053

`A003057(n+2)*A077012(n+1)`
-/

namespace A058298.P4856274587644857053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) * A077012 (n + 1)

end

end A058298.P4856274587644857053

namespace A058298

/-- `A003057(n+2)*A077012(n+1)` -/
def P4856274587644857053.Spec : Prop :=
  ∀ n, P4856274587644857053.a n = A058298 (n + 2)

end A058298

/-! ## A058298.P14525812045894333373

`a(n-1)+a(n-1)/A002260(A038722(n+1))` with `a(0)=2`
-/

namespace A058298.P14525812045894333373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + a (n - 1) / (A002260 (A038722 (n + 1)).toNat : ℚ)

end

end A058298.P14525812045894333373

namespace A058298

/-- `a(n-1)+a(n-1)/A002260(A038722(n+1))` -/
def P14525812045894333373.Spec : Prop :=
  ∀ n, P14525812045894333373.a n = (A058298 (n + 2) : ℚ)

end A058298

/-! ## A058298.P13709535890864767186

`2/A004736(n+1)*A001710(A003057(n+2))`
-/

namespace A058298.P13709535890864767186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A004736 (n + 1) : ℚ) * (A001710 (A003057 (n + 2)).toNat : ℚ)

end

end A058298.P13709535890864767186

namespace A058298

/-- `2/A004736(n+1)*A001710(A003057(n+2))` -/
def P13709535890864767186.Spec : Prop :=
  ∀ n, P13709535890864767186.a n = (A058298 (n + 2) : ℚ)

end A058298

/-! ## A058298.P16468944501095350928

`record[A094310(A061579(n+1))]`
-/

namespace A058298.P16468944501095350928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094310 (A061579 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058298.P16468944501095350928

namespace A058298

/-- `record[A094310(A061579(n+1))]` -/
def P16468944501095350928.Spec : Prop :=
  ∀ n, P16468944501095350928.a n = A058298 (n + 2)

end A058298

/-! ## A058298.P1836716923320510484

`A094310(2*A004736(n+1)+n)`
-/

namespace A058298.P1836716923320510484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094310 (2 * A004736 (n + 1) + (n : ℤ)).toNat

end

end A058298.P1836716923320510484

namespace A058298

/-- `A094310(2*A004736(n+1)+n)` -/
def P1836716923320510484.Spec : Prop :=
  ∀ n, P1836716923320510484.a n = A058298 (n + 2)

end A058298

/-! ## A058298.P8271815933611514091

`A003057(n+2)!/A004736(n+1)`
-/

namespace A058298.P8271815933611514091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A003057 (n + 2)).toNat : ℚ) / (A004736 (n + 1) : ℚ)

end

end A058298.P8271815933611514091

namespace A058298

/-- `A003057(n+2)!/A004736(n+1)` -/
def P8271815933611514091.Spec : Prop :=
  ∀ n, P8271815933611514091.a n = (A058298 (n + 2) : ℚ)

end A058298

/-! ## A058298.P2731695477295474127

`A000142(comp[∑[n]]-n)/A004736(n+1)`
-/

namespace A058298.P2731695477295474127
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n) : ℚ) / (A004736 (n + 1) : ℚ)

end

end A058298.P2731695477295474127

namespace A058298

/-- `A000142(comp[∑[n]]-n)/A004736(n+1)` -/
def P2731695477295474127.Spec : Prop :=
  ∀ n, P2731695477295474127.a n = (A058298 (n + 2) : ℚ)

end A058298

/-! ## A058298.P9994222814834068417

`A094310(A003056(n)+A061579(n)+2)`
-/

namespace A058298.P9994222814834068417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094310 (A003056 n + (A061579 n + 2)).toNat

end

end A058298.P9994222814834068417

namespace A058298

/-- `A094310(A003056(n)+A061579(n)+2)` -/
def P9994222814834068417.Spec : Prop :=
  ∀ n, P9994222814834068417.a n = A058298 (n + 2)

end A058298

/-! ## A058298.P14139001181758814909

`2/A004736(n+1)*A062139(A057944(n))`
-/

namespace A058298.P14139001181758814909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A004736 (n + 1) : ℚ) * (A062139 (A057944 n).toNat : ℚ)

end

end A058298.P14139001181758814909

namespace A058298

/-- `2/A004736(n+1)*A062139(A057944(n))` -/
def P14139001181758814909.Spec : Prop :=
  ∀ n, P14139001181758814909.a n = (A058298 (n + 2) : ℚ)

end A058298

/-! ## A058298.P8422976684181726637

`A094310(A003057(n+2)²-A014132(n+1))`
-/

namespace A058298.P8422976684181726637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094310 (A003057 (n + 2) ^ 2 - A014132 (n + 1)).toNat

end

end A058298.P8422976684181726637

namespace A058298

/-- `A094310(A003057(n+2)²-A014132(n+1))` -/
def P8422976684181726637.Spec : Prop :=
  ∀ n, P8422976684181726637.a n = A058298 (n + 2)

end A058298

/-! ## A058298.P6746041239275245327

`A094310(A004736(n+1)+A004736(n+1)+n)`
-/

namespace A058298.P6746041239275245327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094310 (A004736 (n + 1) + (A004736 (n + 1) + (n : ℤ))).toNat

end

end A058298.P6746041239275245327

namespace A058298

/-- `A094310(A004736(n+1)+A004736(n+1)+n)` -/
def P6746041239275245327.Spec : Prop :=
  ∀ n, P6746041239275245327.a n = A058298 (n + 2)

end A058298

/-! ## A058298.P15583298694049515282

`A132159(A004736(n+1)+n)/A004736(n+1)`
-/

namespace A058298.P15583298694049515282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132159 (A004736 (n + 1) + (n : ℤ)).toNat : ℚ) / (A004736 (n + 1) : ℚ)

end

end A058298.P15583298694049515282

namespace A058298

/-- `A132159(A004736(n+1)+n)/A004736(n+1)` -/
def P15583298694049515282.Spec : Prop :=
  ∀ n, P15583298694049515282.a n = (A058298 (n + 2) : ℚ)

end A058298

/-! ## A058298.P897462979303394821

`A130534(A014132(n+1)+A004736(n+1))/A004736(n+1)`
-/

namespace A058298.P897462979303394821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130534 (A014132 (n + 1) + A004736 (n + 1)).toNat : ℚ) / (A004736 (n + 1) : ℚ)

end

end A058298.P897462979303394821

namespace A058298

/-- `A130534(A014132(n+1)+A004736(n+1))/A004736(n+1)` -/
def P897462979303394821.Spec : Prop :=
  ∀ n, P897462979303394821.a n = (A058298 (n + 2) : ℚ)

end A058298

/-! ## A058298.P11718217753023721856

`A066667(A004736(n+1)+n)/A004736(n+1)`
-/

namespace A058298.P11718217753023721856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066667 (A004736 (n + 1) + (n : ℤ)).toNat : ℚ) / (A004736 (n + 1) : ℚ)

end

end A058298.P11718217753023721856

namespace A058298

/-- `A066667(A004736(n+1)+n)/A004736(n+1)` -/
def P11718217753023721856.Spec : Prop :=
  ∀ n, P11718217753023721856.a n = (A058298 (n + 2) : ℚ)

end A058298

/-! ## A058298.P2484695843486976215

`A119502(n)*A119741(n+2)`
-/

namespace A058298.P2484695843486976215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 n * A119741 (n + 2)

end

end A058298.P2484695843486976215

namespace A058298

/-- `A119502(n)*A119741(n+2)` -/
def P2484695843486976215.Spec : Prop :=
  ∀ n, P2484695843486976215.a n = A058298 (n + 2)

end A058298

/-! ## A058298.P9284411618312425227

`record[A070861(n+3)]`
-/

namespace A058298.P9284411618312425227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070861 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058298.P9284411618312425227

namespace A058298

/-- `record[A070861(n+3)]` -/
def P9284411618312425227.Spec : Prop :=
  ∀ n, P9284411618312425227.a n = A058298 (n + 2)

end A058298

