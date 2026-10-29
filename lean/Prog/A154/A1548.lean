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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C047
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A154804: Number of ways to represent 2*n as the sum of two distinct primes (counting 1 as a prime).

The programs for A154804, the canonical program `A154804.P1698714868867127105` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154804 has offset 1).

The definition of A154804 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154804.P1698714868867127105

`A101264(n)+A061357(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A154804

/-- `A101264(n)+A061357(n+1)` -/
def P1698714868867127105.Spec : Prop :=
  ∀ n, P1698714868867127105.a n = A154804 (n + 1)

theorem P1698714868867127105.correct : P1698714868867127105.Spec := by
  intro n
  simp only [A154804, Nat.add_sub_cancel]

end A154804

/-! ## A154804.P13629915632728365484

`A001031(n+1)-A080339(n+1)`
-/

namespace A154804.P13629915632728365484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001031 (n + 1) - A080339 (n + 1)

end

end A154804.P13629915632728365484

namespace A154804

/-- `A001031(n+1)-A080339(n+1)` -/
def P13629915632728365484.Spec : Prop :=
  ∀ n, P13629915632728365484.a n = A154804 (n + 1)

end A154804

/-! ## A154804.P2651854192039917270

`floor(A096139(n+1)/2)`
-/

namespace A154804.P2651854192039917270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A096139 (n + 1) : ℚ) / 2⌋

end

end A154804.P2651854192039917270

namespace A154804

/-- `floor(A096139(n+1)/2)` -/
def P2651854192039917270.Spec : Prop :=
  ∀ n, P2651854192039917270.a n = A154804 (n + 1)

end A154804

/-! ## A154804.P16787381354288624584

`A154784(n+1)%Δ[n²]`
-/

namespace A154804.P16787381354288624584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154784 (n + 1)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A154804.P16787381354288624584

namespace A154804

/-- `A154784(n+1)%Δ[n²]` -/
def P16787381354288624584.Spec : Prop :=
  ∀ n, P16787381354288624584.a n = A154804 (n + 1)

end A154804

/-! ## A154804.P3557951951525725857

`A004526(A096139(n+1))`
-/

namespace A154804.P3557951951525725857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A096139 (n + 1)).toNat

end

end A154804.P3557951951525725857

namespace A154804

/-- `A004526(A096139(n+1))` -/
def P3557951951525725857.Spec : Prop :=
  ∀ n, P3557951951525725857.a n = A154804 (n + 1)

end A154804

/-! ## A154804.P5804741638004113046

`A110654(A096139(n+1)-1)`
-/

namespace A154804.P5804741638004113046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A096139 (n + 1) - 1).toNat

end

end A154804.P5804741638004113046

namespace A154804

/-- `A110654(A096139(n+1)-1)` -/
def P5804741638004113046.Spec : Prop :=
  ∀ n, P5804741638004113046.a n = A154804 (n + 1)

end A154804

/-! ## A154804.P1991502699415572452

`A002265(2*A096139(n+1))`
-/

namespace A154804.P1991502699415572452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A096139 (n + 1)).toNat

end

end A154804.P1991502699415572452

namespace A154804

/-- `A002265(2*A096139(n+1))` -/
def P1991502699415572452.Spec : Prop :=
  ∀ n, P1991502699415572452.a n = A154804 (n + 1)

end A154804

/-! ## A154804.P315774208279827993

`A004524(or(1, A096139(n+1)))`
-/

namespace A154804.P315774208279827993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.lor 1 (A096139 (n + 1))).toNat

end

end A154804.P315774208279827993

namespace A154804

/-- `A004524(or(1, A096139(n+1)))` -/
def P315774208279827993.Spec : Prop :=
  ∀ n, P315774208279827993.a n = A154804 (n + 1)

end A154804

/-! ## A154804.P12156286931981236525

`A028242(or(1, A096139(n+1)))`
-/

namespace A154804.P12156286931981236525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.lor 1 (A096139 (n + 1))).toNat

end

end A154804.P12156286931981236525

namespace A154804

/-- `A028242(or(1, A096139(n+1)))` -/
def P12156286931981236525.Spec : Prop :=
  ∀ n, P12156286931981236525.a n = A154804 (n + 1)

end A154804

/-! ## A154804.P7777692611394841015

`A057979(or(1, A096139(n+1)))`
-/

namespace A154804.P7777692611394841015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (Int.lor 1 (A096139 (n + 1))).toNat

end

end A154804.P7777692611394841015

namespace A154804

/-- `A057979(or(1, A096139(n+1)))` -/
def P7777692611394841015.Spec : Prop :=
  ∀ n, P7777692611394841015.a n = A154804 (n + 1)

end A154804

/-! ## A154804.P17290280873222980554

`A154784(n+1)/A103517(n)`
-/

namespace A154804.P17290280873222980554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154784 (n + 1) : ℚ) / (A103517 n : ℚ)

end

end A154804.P17290280873222980554

namespace A154804

/-- `A154784(n+1)/A103517(n)` -/
def P17290280873222980554.Spec : Prop :=
  ∀ n, P17290280873222980554.a n = (A154804 (n + 1) : ℚ)

end A154804

/-! ## A154804.P4998546089758716147

`A004524(2*A096139(n+1))/2`
-/

namespace A154804.P4998546089758716147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004524 (2 * A096139 (n + 1)).toNat : ℚ) / 2

end

end A154804.P4998546089758716147

namespace A154804

/-- `A004524(2*A096139(n+1))/2` -/
def P4998546089758716147.Spec : Prop :=
  ∀ n, P4998546089758716147.a n = (A154804 (n + 1) : ℚ)

end A154804

/-! ## A154804.P8123909414006372960

`A096139(n+1)-A001031(n+1)`
-/

namespace A154804.P8123909414006372960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096139 (n + 1) - A001031 (n + 1)

end

end A154804.P8123909414006372960

namespace A154804

/-- `A096139(n+1)-A001031(n+1)` -/
def P8123909414006372960.Spec : Prop :=
  ∀ n, P8123909414006372960.a n = A154804 (n + 1)

end A154804

/-! ## A154804.P2110947943450027705

`A154784(n+1)/A005843(n+1)`
-/

namespace A154804.P2110947943450027705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154784 (n + 1) : ℚ) / (A005843 (n + 1) : ℚ)

end

end A154804.P2110947943450027705

namespace A154804

/-- `A154784(n+1)/A005843(n+1)` -/
def P2110947943450027705.Spec : Prop :=
  ∀ n, P2110947943450027705.a n = (A154804 (n + 1) : ℚ)

end A154804

/-! ## A154804.P5794025145963894262

`A154784(n+1)/A051755(n+2)`
-/

namespace A154804.P5794025145963894262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154784 (n + 1) : ℚ) / (A051755 (n + 2) : ℚ)

end

end A154804.P5794025145963894262

namespace A154804

/-- `A154784(n+1)/A051755(n+2)` -/
def P5794025145963894262.Spec : Prop :=
  ∀ n, P5794025145963894262.a n = (A154804 (n + 1) : ℚ)

end A154804

/-! ## A154804.P12190510532614115665

`A061357(n+1)+A010051(2*n+1)`
-/

namespace A154804.P12190510532614115665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (n + 1) + A010051 (2 * n + 1)

end

end A154804.P12190510532614115665

namespace A154804

/-- `A061357(n+1)+A010051(2*n+1)` -/
def P12190510532614115665.Spec : Prop :=
  ∀ n, P12190510532614115665.a n = A154804 (n + 1)

theorem P12190510532614115665.correct : P12190510532614115665.Spec := by
  intro n
  simp only [A154804, Nat.add_sub_cancel, A154804.P12190510532614115665.a, A154804.P1698714868867127105.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A061357, A061357.P8691350643323572907.a, A101264, A101264.P9977125953316836564.a, A045917, A045917.P11130213963118040287.f1, A045917.P11130213963118040287.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A154804

/-! ## A154804.P12105145489595782022

`A341945(2*(n+1))-A080339(n+1)`
-/

namespace A154804.P12105145489595782022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341945 (2 * (n + 1)) - A080339 (n + 1)

end

end A154804.P12105145489595782022

namespace A154804

/-- `A341945(2*(n+1))-A080339(n+1)` -/
def P12105145489595782022.Spec : Prop :=
  ∀ n, P12105145489595782022.a n = A154804 (n + 1)

end A154804

/-! ## A154804.P15217680438054641676

`A096139(n+1)-A341945(2*(n+1))`
-/

namespace A154804.P15217680438054641676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096139 (n + 1) - A341945 (2 * (n + 1))

end

end A154804.P15217680438054641676

namespace A154804

/-- `A096139(n+1)-A341945(2*(n+1))` -/
def P15217680438054641676.Spec : Prop :=
  ∀ n, P15217680438054641676.a n = A154804 (n + 1)

end A154804

/-! ## A154804.P18409004773132170050

`(A001031(n+1)-A010051(n+1))%(n+1)`
-/

namespace A154804.P18409004773132170050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001031 (n + 1) - A010051 (n + 1)) (n + 1 : ℤ)

end

end A154804.P18409004773132170050

namespace A154804

/-- `(A001031(n+1)-A010051(n+1))%(n+1)` -/
def P18409004773132170050.Spec : Prop :=
  ∀ n, P18409004773132170050.a n = A154804 (n + 1)

end A154804

/-!
# A154806: Numbers such that every run length in base 2 is 4.

The programs for A154806, there is no canonical definition to state claims against.
-/

/-! ## A154806.P5948415376293557350

`ogf(15/(1-16x-x^2+16x^3))`
-/

namespace A154806.P5948415376293557350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [15] [1, -16, -1, 16] n

end

end A154806.P5948415376293557350

/-! ## A154806.P6650489335928102027

`∑[16*a(n-1)]-a(n-1)` with `a(0)=15`
-/

namespace A154806.P6650489335928102027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [15] fun n f1 =>
  16 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [15] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A154806.P6650489335928102027

/-! ## A154806.P9436470608110108258

`a(n-1)+15*or(1, a(n-1))` with `a(0)=15`
-/

namespace A154806.P9436470608110108258
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [15] fun n a =>
  a (n - 1) + 15 * Nat.lor 1 (a (n - 1))

end

end A154806.P9436470608110108258

/-! ## A154806.P14407142485288272880

`A224520(4*(n+1))`
-/

namespace A154806.P14407142485288272880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224520 (4 * (n + 1))

end

end A154806.P14407142485288272880

/-! ## A154806.P15490487044927460997

`∑[or(1, A037786(2*(n+1)))]`
-/

namespace A154806.P15490487044927460997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A037786 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154806.P15490487044927460997

/-! ## A154806.P12919927088017229162

`xor(∑[(2*A000302(n))²], A037751(2*(n+1)))`
-/

namespace A154806.P12919927088017229162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A000302 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A037751 (2 * (n + 1)))

end

end A154806.P12919927088017229162

/-! ## A154806.P14767348218984904698

`xor(∑[A000302(2*n+1)], A037751(2*(n+1)))`
-/

namespace A154806.P14767348218984904698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A037751 (2 * (n + 1)))

end

end A154806.P14767348218984904698

/-! ## A154806.P13762111982259433106

`1/17*2^(4*(n+1)+4)+15/34*(-1)^(n+2)-1/2`
-/

namespace A154806.P13762111982259433106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 17 * (2 ^ (4 * (n + 1) + 4) : ℚ) + (15 : ℚ) / 34 * ((-1) ^ (n + 2) : ℚ) - (1 : ℚ) / 2

end

end A154806.P13762111982259433106

/-! ## A154806.P15259413081463732755

`floor(A001025(n+2)/17)`
-/

namespace A154806.P15259413081463732755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001025 (n + 2) : ℚ) / 17⌋

end

end A154806.P15259413081463732755

/-! ## A154806.P10880038822250899986

`floor(A247281(2*(n+2))/17)`
-/

namespace A154806.P10880038822250899986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A247281 (2 * (n + 2)) : ℚ) / 17⌋

end

end A154806.P10880038822250899986

/-!
# A154808: Numbers such that every run length in base 2 is 5.

The programs for A154808, there is no canonical definition to state claims against.
-/

/-! ## A154808.P9287776489121400904

`ogf(31/(1-32x-x^2+32x^3))`
-/

namespace A154808.P9287776489121400904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [31] [1, -32, -1, 32] n

end

end A154808.P9287776489121400904

/-! ## A154808.P13845344530656314098

`A224521(5*(n+1))`
-/

namespace A154808.P13845344530656314098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224521 (5 * (n + 1))

end

end A154808.P13845344530656314098

/-! ## A154808.P12681739090228928411

`record[A224521(5*A028242(n))]`
-/

namespace A154808.P12681739090228928411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224521 (5 * A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154808.P12681739090228928411

/-! ## A154808.P14377107996880964640

`floor(A087288(5*(n+2))/66)`
-/

namespace A154808.P14377107996880964640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A087288 (5 * (n + 2)) : ℚ) / 66⌋

end

end A154808.P14377107996880964640

/-! ## A154808.P355654636295914313

`floor(A000079(5*n+11)/66)`
-/

namespace A154808.P355654636295914313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000079 (5 * n + 11) : ℚ) / 66⌋

end

end A154808.P355654636295914313

/-!
# A154809: Numbers whose binary expansion is not palindromic.

The programs for A154809, the canonical program `A154809.P10885830400059510628` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154809 has offset 1).

The definition of A154809 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154809.P1445518486978982633

`lt[0, A175919(n)]`
-/

namespace A154809.P1445518486978982633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A154809.P1445518486978982633

namespace A154809

/-- `lt[0, A175919(n)]` -/
def P1445518486978982633.Spec : Prop :=
  ∀ n, (P1445518486978982633.a n : ℤ) = A154809 (n + 1)

end A154809

/-! ## A154809.P15115425864909475235

`lt[0, A178226(n)]`
-/

namespace A154809.P15115425864909475235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A154809.P15115425864909475235

namespace A154809

/-- `lt[0, A178226(n)]` -/
def P15115425864909475235.Spec : Prop :=
  ∀ n, (P15115425864909475235.a n : ℤ) = A154809 (n + 1)

end A154809

/-! ## A154809.P8793458721745680887

`lt[0, A303534(n)]`
-/

namespace A154809.P8793458721745680887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303534 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A154809.P8793458721745680887

namespace A154809

/-- `lt[0, A303534(n)]` -/
def P8793458721745680887.Spec : Prop :=
  ∀ n, (P8793458721745680887.a n : ℤ) = A154809 (n + 1)

end A154809

/-! ## A154809.P15884620390323253920

`lt[1, A303536(n)]`
-/

namespace A154809.P15884620390323253920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303536 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A154809.P15884620390323253920

namespace A154809

/-- `lt[1, A303536(n)]` -/
def P15884620390323253920.Spec : Prop :=
  ∀ n, (P15884620390323253920.a n : ℤ) = A154809 (n + 1)

end A154809

/-! ## A154809.P5131599799062092025

`comp[A006995(n+1)]`
-/

namespace A154809.P5131599799062092025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A154809.P5131599799062092025

namespace A154809

/-- `comp[A006995(n+1)]` -/
def P5131599799062092025.Spec : Prop :=
  ∀ n, (P5131599799062092025.a n : ℤ) = A154809 (n + 1)

end A154809

/-! ## A154809.P10885830400059510628

`lt[1, A055945(n)²+1]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A154809

/-- `lt[1, A055945(n)²+1]` -/
def P10885830400059510628.Spec : Prop :=
  ∀ n, (P10885830400059510628.a n : ℤ) = A154809 (n + 1)

theorem P10885830400059510628.correct : P10885830400059510628.Spec := by
  intro n
  simp only [A154809, Nat.add_sub_cancel]

end A154809

/-! ## A154809.P6768770278217504234

`lt[and(n, A145341(n+1)), n]`
-/

namespace A154809.P6768770278217504234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A145341 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A154809.P6768770278217504234

namespace A154809

/-- `lt[and(n, A145341(n+1)), n]` -/
def P6768770278217504234.Spec : Prop :=
  ∀ n, (P6768770278217504234.a n : ℤ) = A154809 (n + 1)

end A154809

/-! ## A154809.P3615764961812460352

`eq[A178226(n), A297382(n+1)]`
-/

namespace A154809.P3615764961812460352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297382 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154809.P3615764961812460352

namespace A154809

/-- `eq[A178226(n), A297382(n+1)]` -/
def P3615764961812460352.Spec : Prop :=
  ∀ n, (P3615764961812460352.a n : ℤ) = A154809 (n + 1)

end A154809

/-! ## A154809.P1266943015533363508

`∪[A057891(n+1), A161602(n+1)]`
-/

namespace A154809.P1266943015533363508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A154809.P1266943015533363508

namespace A154809

/-- `∪[A057891(n+1), A161602(n+1)]` -/
def P1266943015533363508.Spec : Prop :=
  ∀ n, (P1266943015533363508.a n : ℤ) = A154809 (n + 1)

end A154809

/-! ## A154809.P5225176773131031827

`∪[A161601(n+1), A161602(n+1)]`
-/

namespace A154809.P5225176773131031827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A154809.P5225176773131031827

namespace A154809

/-- `∪[A161601(n+1), A161602(n+1)]` -/
def P5225176773131031827.Spec : Prop :=
  ∀ n, (P5225176773131031827.a n : ℤ) = A154809 (n + 1)

end A154809

/-! ## A154809.P1700160986040849607

`∪[A161602(n+1), A164861(n+1)]`
-/

namespace A154809.P1700160986040849607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A154809.P1700160986040849607

namespace A154809

/-- `∪[A161602(n+1), A164861(n+1)]` -/
def P1700160986040849607.Spec : Prop :=
  ∀ n, (P1700160986040849607.a n : ℤ) = A154809 (n + 1)

end A154809

/-! ## A154809.P12854426525341513044

`∪[A057891(n+1), A272670(n+1)]`
-/

namespace A154809.P12854426525341513044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A154809.P12854426525341513044

namespace A154809

/-- `∪[A057891(n+1), A272670(n+1)]` -/
def P12854426525341513044.Spec : Prop :=
  ∀ n, (P12854426525341513044.a n : ℤ) = A154809 (n + 1)

end A154809

/-! ## A154809.P687650162892178670

`comp[A206914(n)]`
-/

namespace A154809.P687650162892178670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206914 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A154809.P687650162892178670

namespace A154809

/-- `comp[A206914(n)]` -/
def P687650162892178670.Spec : Prop :=
  ∀ n, (P687650162892178670.a n : ℤ) = A154809 (n + 1)

end A154809

/-! ## A154809.P17646670316230216589

`filter[A062289(n+1), A178226(#)]`
-/

namespace A154809.P17646670316230216589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A154809.P17646670316230216589

namespace A154809

/-- `filter[A062289(n+1), A178226(#)]` -/
def P17646670316230216589.Spec : Prop :=
  ∀ n, P17646670316230216589.a n = A154809 (n + 1)

end A154809

/-! ## A154809.P13301899002381799961

`filter[A133398(n+1), A178226(#)]`
-/

namespace A154809.P13301899002381799961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A154809.P13301899002381799961

namespace A154809

/-- `filter[A133398(n+1), A178226(#)]` -/
def P13301899002381799961.Spec : Prop :=
  ∀ n, P13301899002381799961.a n = A154809 (n + 1)

end A154809

/-! ## A154809.P12876220535448182817

`eq[0, A178225(n)]`
-/

namespace A154809.P12876220535448182817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A154809.P12876220535448182817

namespace A154809

/-- `eq[0, A178225(n)]` -/
def P12876220535448182817.Spec : Prop :=
  ∀ n, (P12876220535448182817.a n : ℤ) = A154809 (n + 1)

end A154809

/-! ## A154809.P8497618973443646058

`eq[A054977(n), A178226(n)]`
-/

namespace A154809.P8497618973443646058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154809.P8497618973443646058

namespace A154809

/-- `eq[A054977(n), A178226(n)]` -/
def P8497618973443646058.Spec : Prop :=
  ∀ n, (P8497618973443646058.a n : ℤ) = A154809 (n + 1)

end A154809

/-!
# A154810: Nonpalindromic numbers with binary digits only.

The programs for A154810, the canonical program `A154810.P6912137978945050340` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154810 has offset 1).

The definition of A154810 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A154809, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A154810.P6912137978945050340

`A007088(A154809(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A154810

/-- `A007088(A154809(n+1))` -/
def P6912137978945050340.Spec : Prop :=
  ∀ n, P6912137978945050340.a n = A154810 (n + 1)

theorem P6912137978945050340.correct : P6912137978945050340.Spec := by
  intro n
  simp only [A154810, Nat.add_sub_cancel]

end A154810

/-! ## A154810.P10044025581981690592

`A007088(lt[0, A175919(n)])`
-/

namespace A154810.P10044025581981690592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A154810.P10044025581981690592

namespace A154810

/-- `A007088(lt[0, A175919(n)])` -/
def P10044025581981690592.Spec : Prop :=
  ∀ n, P10044025581981690592.a n = A154810 (n + 1)

end A154810

/-! ## A154810.P11801488511347580526

`A007088(eq[1, A178226(n)])`
-/

namespace A154810.P11801488511347580526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A154810.P11801488511347580526

namespace A154810

/-- `A007088(eq[1, A178226(n)])` -/
def P11801488511347580526.Spec : Prop :=
  ∀ n, P11801488511347580526.a n = A154810 (n + 1)

end A154810

/-! ## A154810.P8289617141034700921

`A007088(comp[A206914(n)])`
-/

namespace A154810.P8289617141034700921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206914 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A154810.P8289617141034700921

namespace A154810

/-- `A007088(comp[A206914(n)])` -/
def P8289617141034700921.Spec : Prop :=
  ∀ n, P8289617141034700921.a n = A154810 (n + 1)

end A154810

/-! ## A154810.P6433001024402806028

`A007088(comp[A175298(n)])`
-/

namespace A154810.P6433001024402806028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A154810.P6433001024402806028

namespace A154810

/-- `A007088(comp[A175298(n)])` -/
def P6433001024402806028.Spec : Prop :=
  ∀ n, P6433001024402806028.a n = A154810 (n + 1)

end A154810

/-!
# A154811: a(n) = Fibonacci(2*n+1) mod 9.

The programs for A154811, the canonical program `A154811.P4946767197526676825` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154811 has offset 0).

The definition of A154811 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(2*n+1)%9` (program `A154811.P4946767197526676825`, by `A154811.P4946767197526676825.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154811.P7846025325175208793

`ogf((1+x+3x^2-x^3+3x^4+x^5+x^6)/(1-x+x^6-x^7))`
-/

namespace A154811.P7846025325175208793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 3, -1, 3, 1, 1] [1, -1, 0, 0, 0, 0, 1, -1] n

end

end A154811.P7846025325175208793

namespace A154811

/-- `ogf((1+x+3x^2-x^3+3x^4+x^5+x^6)/(1-x+x^6-x^7))` -/
def P7846025325175208793.Spec : Prop :=
  ∀ n, P7846025325175208793.a n = A154811 n

end A154811

/-! ## A154811.P4946767197526676825

`A000045(2*n+1)%9`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A154811

/-- `A000045(2*n+1)%9` -/
def P4946767197526676825.Spec : Prop :=
  ∀ n, P4946767197526676825.a n = A154811 n

theorem P4946767197526676825.correct : P4946767197526676825.Spec := by
  intro n
  simp only [A154811]

end A154811

/-!
# A154812: Primes p such that the smallest decimal digit of p plus the smallest decimal digit of prime(p) is prime.

The programs for A154812, there is no canonical definition to state claims against.
-/

/-! ## A154812.P1276275154245887695

`p?[∑[A260452(A156540(n))]]`
-/

namespace A154812.P1276275154245887695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260452 (A156540 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154812.P1276275154245887695

/-! ## A154812.P364457510746369203

`record[p?[A127763(A107806(n+1))]]`
-/

namespace A154812.P364457510746369203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127763 (A107806 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154812.P364457510746369203

/-! ## A154812.P1013151431502318602

`p?[∑[A157439(A091597(n))]]`
-/

namespace A154812.P1013151431502318602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157439 (A091597 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154812.P1013151431502318602

/-! ## A154812.P18227549197994672602

`p?[lt[n, A051298(A147649(n))]]`
-/

namespace A154812.P18227549197994672602
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051298 (A147649 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A154812.P18227549197994672602

/-! ## A154812.P3715522286548137074

`p?[∑[A085058(A219578(n+1))]]`
-/

namespace A154812.P3715522286548137074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 (A219578 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154812.P3715522286548137074

/-!
# A154813: Primes p such that the largest decimal digit of p + the smallest digit of prime(p) is a prime.

The programs for A154813, there is no canonical definition to state claims against.
-/

/-! ## A154813.P4530905113022849464

`A000040(eq[A045818(n), A209655(n+1)])`
-/

namespace A154813.P4530905113022849464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045818 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A154813.P4530905113022849464

/-! ## A154813.P6115076322025118864

`record[gcd(A000051(n), A184400(n+1))]`
-/

namespace A154813.P6115076322025118864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000051 n) (A184400 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154813.P6115076322025118864

/-!
# A154815: Period 6: repeat [8, 7, 4, 5, 2, 1].

The programs for A154815, the canonical program `A154815.P15166777220895741110` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154815 has offset 0).

The definition of A154815 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A154815.anchor (n : ℕ) : A154815 n = (([8, 7, 4, 5, 2, 1].getD (n % 6) 0 : ℕ) : ℤ)` in `Proof.A154.A154815`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154815.P15166777220895741110

`a(n-6)` with `a(0)=8, a(1)=7, a(2)=4, a(3)=5, a(4)=2, a(5)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154815

/-- `a(n-6)` -/
def P15166777220895741110.Spec : Prop :=
  ∀ n, (P15166777220895741110.a n : ℤ) = A154815 n

theorem P15166777220895741110.correct : P15166777220895741110.Spec := by
  intro n
  simp only [A154815]

end A154815

/-!
# A154817: Triangle T(n,k) = A060187(n+2,k+2), 1<=k<=n.

The programs for A154817, there is no canonical definition to state claims against.
-/

/-! ## A154817.P12887275221381748660

`A060187(2*∑[char[∑[n]]]+n+3)`
-/

namespace A154817.P12887275221381748660
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (2 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 3))

end

end A154817.P12887275221381748660

/-! ## A154817.P18049279756221554667

`A146568(n+2)+A014410(n+2)`
-/

namespace A154817.P18049279756221554667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146568 (n + 2) + A014410 (n + 2)

end

end A154817.P18049279756221554667

/-! ## A154817.P12594960510144407631

`A060187(A140978(n+1)-n+1)+A008683(A017090(n))`
-/

namespace A154817.P12594960510144407631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (A140978 (n + 1) - (n : ℤ) + 1).toNat + A008683 (A017090 n).toNat

end

end A154817.P12594960510144407631

/-! ## A154817.P16293349147830288674

`A060187(A140978(n+1)-n+1)+A008683(A020483(n))+1`
-/

namespace A154817.P16293349147830288674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (A140978 (n + 1) - (n : ℤ) + 1).toNat + A008683 (A020483 n).toNat + 1

end

end A154817.P16293349147830288674

/-! ## A154817.P11081268522213623549

`A158781(lt[1, A158781(n)])`
-/

namespace A154817.P11081268522213623549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158781 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A154817.P11081268522213623549

/-!
# A154820: Numbers whose trajectory under iteration of sum of cubes of digits eventually turns out to follow the cyclic iteration of 133, 55, 250.

The programs for A154820, there is no canonical definition to state claims against.
-/

/-! ## A154820.P12096737624501469771

`eq[7, A297025(A165330(n))]`
-/

namespace A154820.P12096737624501469771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297025 (A165330 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A154820.P12096737624501469771

/-!
# A154821: Primes p such that p+p^2+p^3-+2 are also prime.

The programs for A154821, there is no canonical definition to state claims against.
-/

/-! ## A154821.P8460152639216991266

`p?[A205647(Δ[n²])]`
-/

namespace A154821.P8460152639216991266
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205647 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154821.P8460152639216991266

/-!
# A154823: Primes p of the form : p+p^2+p^3-+8=prime.

The programs for A154823, there is no canonical definition to state claims against.
-/

/-! ## A154823.P11034740519390123050

`A107821(A201480(n+1))`
-/

namespace A154823.P11034740519390123050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107821 (A201480 (n + 1)).toNat

end

end A154823.P11034740519390123050

/-!
# A154825: Reversion of x*(1-2*x)/(1-3*x).

The programs for A154825, there is no canonical definition to state claims against.
-/

/-! ## A154825.P501452816555013417

`A125695(n)/A280560(n)`
-/

namespace A154825.P501452816555013417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125695 n : ℚ) / (A280560 n : ℚ)

end

end A154825.P501452816555013417

/-! ## A154825.P522668268915105493

`A000038(n)-A152681(n)/A280560(n)`
-/

namespace A154825.P522668268915105493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n : ℚ) - (A152681 n : ℚ) / (A280560 n : ℚ)

end

end A154825.P522668268915105493

/-! ## A154825.P224716857508748149

`A153881(n+1)/A280560(n)*A152681(n)`
-/

namespace A154825.P224716857508748149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153881 (n + 1) : ℚ) / (A280560 n : ℚ) * (A152681 n : ℚ)

end

end A154825.P224716857508748149

/-! ## A154825.P15909124994216659891

`C(2, (n+1)²)-A308035(A055998(n))`
-/

namespace A154825.P15909124994216659891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 ((n + 1) ^ 2) : ℤ) - A308035 (A055998 n).toNat

end

end A154825.P15909124994216659891

/-! ## A154825.P1632224621047108344

`A000038(n)-A308035(A055998(n))`
-/

namespace A154825.P1632224621047108344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A308035 (A055998 n).toNat

end

end A154825.P1632224621047108344

/-! ## A154825.P2591778573803523466

`A153881(n+1)*A308035(A055998(n))`
-/

namespace A154825.P2591778573803523466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1) * A308035 (A055998 n).toNat

end

end A154825.P2591778573803523466

/-! ## A154825.P2429905060248362635

`A277475(C(2, n+1))-A308035(A055998(n))`
-/

namespace A154825.P2429905060248362635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277475 (Nat.choose 2 (n + 1)) - A308035 (A055998 n).toNat

end

end A154825.P2429905060248362635

/-! ## A154825.P4219719883071700196

`A277476(C(2, n+1))-A308035(A055998(n))`
-/

namespace A154825.P4219719883071700196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277476 (Nat.choose 2 (n + 1)) - A308035 (A055998 n).toNat

end

end A154825.P4219719883071700196

/-! ## A154825.P12862292773551500794

`A277479(C(2, n+1))-A308035(A055998(n))`
-/

namespace A154825.P12862292773551500794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277479 (Nat.choose 2 (n + 1)) - A308035 (A055998 n).toNat

end

end A154825.P12862292773551500794

/-! ## A154825.P2850833520600063130

`A277480(C(2, n+1))-A308035(A055998(n))`
-/

namespace A154825.P2850833520600063130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277480 (Nat.choose 2 (n + 1)) - A308035 (A055998 n).toNat

end

end A154825.P2850833520600063130

/-!
# A154828: Row sums of a q-Catalan triangle for q=2.

The programs for A154828, there is no canonical definition to state claims against.
-/

/-! ## A154828.P15469742193270712344

`A004719(A325860(∑[n]))`
-/

namespace A154828.P15469742193270712344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A325860 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A154828.P15469742193270712344

/-!
# A154831: Numbers n such that n^4-2 is prime.

The programs for A154831, there is no canonical definition to state claims against.
-/

/-! ## A154831.P6340847723861228152

`ceil(sqrt(sqrt(A182347(n+1))))`
-/

namespace A154831.P6340847723861228152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A182347 (n + 1) : ℝ))⌉

end

end A154831.P6340847723861228152

/-! ## A154831.P8396139554515510854

`round(sqrt(sqrt(A182347(2*n+1-n))))`
-/

namespace A154831.P8396139554515510854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (A182347 (2 * n + 1 - n) : ℝ)))

end

end A154831.P8396139554515510854

/-! ## A154831.P10996453128876312197

`round(sqrt(∩[A028870(n+1), n²]+1))`
-/

namespace A154831.P10996453128876312197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n + 1 : ℝ))

end

end A154831.P10996453128876312197

/-! ## A154831.P3033217167477105029

`A056926(round(sqrt(A182347(n+1))))`
-/

namespace A154831.P3033217167477105029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (SequenceMachineLib.roundAway (Real.sqrt (A182347 (n + 1) : ℝ))).toNat

end

end A154831.P3033217167477105029

/-! ## A154831.P13686745123268875529

`A056926(sqrt(A182347(n+1)+2))`
-/

namespace A154831.P13686745123268875529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (SequenceMachineLib.roundAway (Real.sqrt (A182347 (n + 1) + 2 : ℝ))).toNat

end

end A154831.P13686745123268875529

/-!
# A154832: Primes p such that p^4-2 is also prime.

The programs for A154832, there is no canonical definition to state claims against.
-/

/-! ## A154832.P5003630516564199492

`p?[A154831(n+1)]`
-/

namespace A154832.P5003630516564199492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154832.P5003630516564199492

/-! ## A154832.P12084101875399831333

`∩[A154831(n+1), A348283(n+1)]`
-/

namespace A154832.P12084101875399831333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154832.P12084101875399831333

/-! ## A154832.P8268573503937197325

`∩[A154831(n+1), A373789(n+1)]`
-/

namespace A154832.P8268573503937197325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154832.P8268573503937197325

/-! ## A154832.P5408629367070303324

`∩[A154831(n+1), A383300(n+1)]`
-/

namespace A154832.P5408629367070303324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154832.P5408629367070303324

/-! ## A154832.P15757301017196797758

`∩[A154831(n+1), A380468(n+1)]`
-/

namespace A154832.P15757301017196797758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154832.P15757301017196797758

/-! ## A154832.P16258934176677246959

`∩[A045417(n+1), A154831(n+1)]`
-/

namespace A154832.P16258934176677246959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154832.P16258934176677246959

/-! ## A154832.P15698984770212485072

`∩[A045320(n+1), A154831(n+1)]`
-/

namespace A154832.P15698984770212485072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154832.P15698984770212485072

/-! ## A154832.P5809574111336171864

`∩[A045393(n+1), A154831(n+1)]`
-/

namespace A154832.P5809574111336171864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154832.P5809574111336171864

/-! ## A154832.P15861984504184000782

`∩[A000040(n+1), A154831(n+1)]`
-/

namespace A154832.P15861984504184000782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154832.P15861984504184000782

/-! ## A154832.P5216262437547078215

`∩[A004139(n+1), A154831(n+1)]`
-/

namespace A154832.P5216262437547078215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154832.P5216262437547078215

/-! ## A154832.P8564489264571544572

`∩[A006005(n+1), A154831(n+1)]`
-/

namespace A154832.P8564489264571544572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154832.P8564489264571544572

/-! ## A154832.P13236634191016517499

`∩[A008578(n+1), A154831(n+1)]`
-/

namespace A154832.P13236634191016517499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154832.P13236634191016517499

/-! ## A154832.P9798250108698319943

`∩[A033946(n+1), A154831(n+1)]`
-/

namespace A154832.P9798250108698319943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154832.P9798250108698319943

/-! ## A154832.P4616446752749430960

`∩[A045319(n+1), A154831(n+1)]`
-/

namespace A154832.P4616446752749430960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154832.P4616446752749430960

/-! ## A154832.P17264728891541094857

`∩[A046022(n+1), A154831(n+1)]`
-/

namespace A154832.P17264728891541094857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154832.P17264728891541094857

/-! ## A154832.P6260440278690994109

`∩[A051948(n+1), A154831(n+1)]`
-/

namespace A154832.P6260440278690994109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154832.P6260440278690994109

/-! ## A154832.P5739164034404114507

`∩[A053813(n+1), A154831(n+1)]`
-/

namespace A154832.P5739164034404114507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154832.P5739164034404114507

/-! ## A154832.P13433458967932860785

`∩[A064728(n+1), A154831(n+1)]`
-/

namespace A154832.P13433458967932860785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154832.P13433458967932860785

/-! ## A154832.P16780703461939410652

`∩[A065091(n+1), A154831(n+1)]`
-/

namespace A154832.P16780703461939410652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154832.P16780703461939410652

/-! ## A154832.P6548734508044406319

`∩[A066050(n+1), A154831(n+1)]`
-/

namespace A154832.P6548734508044406319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154832.P6548734508044406319

/-!
# A154833: Numbers n such that n^5-2 is prime.

The programs for A154833, there is no canonical definition to state claims against.
-/

/-! ## A154833.P17580994636031099142

`A278515(A114572(n))+A234695(3*n+2)`
-/

namespace A154833.P17580994636031099142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278515 (A114572 n).toNat + A234695 (3 * n + 2)

end

end A154833.P17580994636031099142

/-! ## A154833.P2099101377382127648

`or(A045778(A017946(n)), A234695(3*n+2))`
-/

namespace A154833.P2099101377382127648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A045778 (A017946 n).toNat) (A234695 (3 * n + 2))

end

end A154833.P2099101377382127648

/-! ## A154833.P12094177839057631002

`or(A234695(3*n+2), A374684(A025566(n)))`
-/

namespace A154833.P12094177839057631002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A234695 (3 * n + 2)) (A374684 (A025566 n).toNat)

end

end A154833.P12094177839057631002

/-!
# A154834: Primes p such that p^5 - 2 is also prime.

The programs for A154834, there is no canonical definition to state claims against.
-/

/-! ## A154834.P16408602565489151791

`p?[A154833(n+1)]`
-/

namespace A154834.P16408602565489151791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154833 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154834.P16408602565489151791

/-! ## A154834.P17812871617166839084

`∩[A007645(n+1), A154833(n+1)]`
-/

namespace A154834.P17812871617166839084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154834.P17812871617166839084

/-! ## A154834.P7195337957212367529

`∩[A045331(n+1), A154833(n+1)]`
-/

namespace A154834.P7195337957212367529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154834.P7195337957212367529

/-! ## A154834.P15644817417100386233

`∩[A154833(n+1), A279815(n+1)]`
-/

namespace A154834.P15644817417100386233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154834.P15644817417100386233

/-! ## A154834.P17394400388628836270

`∩[A040116(n+1), A154833(n+1)]`
-/

namespace A154834.P17394400388628836270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154834.P17394400388628836270

/-! ## A154834.P4847478440293774222

`∩[A045405(n+1), A154833(n+1)]`
-/

namespace A154834.P4847478440293774222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154834.P4847478440293774222

/-! ## A154834.P2440262789726085671

`∩[A045428(n+1), A154833(n+1)]`
-/

namespace A154834.P2440262789726085671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154834.P2440262789726085671

/-! ## A154834.P12752582487299139380

`∩[A154833(n+1), A325143(n+1)]`
-/

namespace A154834.P12752582487299139380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154834.P12752582487299139380

/-! ## A154834.P2767199832821390155

`∩[A154833(n+1), A042990(n)]`
-/

namespace A154834.P2767199832821390155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154834.P2767199832821390155

/-! ## A154834.P5305162844142921279

`∩[A045311(n+1), A154833(n+1)]`
-/

namespace A154834.P5305162844142921279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154834.P5305162844142921279

/-! ## A154834.P4078843513045122981

`∩[A059456(n+1), A154833(n+1)]`
-/

namespace A154834.P4078843513045122981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154834.P4078843513045122981

/-! ## A154834.P9679878165439684510

`∩[A000040(n+1), A154833(n+1)]`
-/

namespace A154834.P9679878165439684510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154834.P9679878165439684510

/-! ## A154834.P10534050115329712782

`∩[A004139(n+1), A154833(n+1)]`
-/

namespace A154834.P10534050115329712782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154834.P10534050115329712782

/-! ## A154834.P9187531241320252595

`∩[A006005(n+1), A154833(n+1)]`
-/

namespace A154834.P9187531241320252595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154834.P9187531241320252595

/-! ## A154834.P2633165352447286284

`∩[A008578(n+1), A154833(n+1)]`
-/

namespace A154834.P2633165352447286284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154834.P2633165352447286284

/-! ## A154834.P17373543764013264508

`∩[A033946(n+1), A154833(n+1)]`
-/

namespace A154834.P17373543764013264508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154834.P17373543764013264508

/-! ## A154834.P16903758838991422613

`∩[A045319(n+1), A154833(n+1)]`
-/

namespace A154834.P16903758838991422613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154834.P16903758838991422613

/-! ## A154834.P2079219195641787201

`∩[A046022(n+1), A154833(n+1)]`
-/

namespace A154834.P2079219195641787201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154834.P2079219195641787201

/-! ## A154834.P7715966639433128132

`∩[A051948(n+1), A154833(n+1)]`
-/

namespace A154834.P7715966639433128132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154834.P7715966639433128132

/-! ## A154834.P3379204765717635108

`∩[A053813(n+1), A154833(n+1)]`
-/

namespace A154834.P3379204765717635108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154834.P3379204765717635108

/-!
# A154835: G.f. satisfies: A(x) = x + A((x+x^2)*A(x)) with A(0)=0.

The programs for A154835, there is no canonical definition to state claims against.
-/

/-! ## A154835.P10228148231669853395

`A075864(n)+A046094(A309861(n))`
-/

namespace A154835.P10228148231669853395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075864 n + A046094 (A309861 n).toNat

end

end A154835.P10228148231669853395

/-! ## A154835.P2522016740368565210

`A049145(n+1)-A185238(A092893(n))`
-/

namespace A154835.P2522016740368565210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049145 (n + 1) - A185238 (A092893 n).toNat

end

end A154835.P2522016740368565210

/-! ## A154835.P4864957427155577949

`A102407(n)-A009306(A165656(2*n))`
-/

namespace A154835.P4864957427155577949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102407 n - A009306 (A165656 (2 * n)).toNat

end

end A154835.P4864957427155577949

/-! ## A154835.P4003721058221796800

`A049145(n+1)-A185238(A209721(n+1))`
-/

namespace A154835.P4003721058221796800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049145 (n + 1) - A185238 (A209721 (n + 1)).toNat

end

end A154835.P4003721058221796800

/-! ## A154835.P10799700111739933759

`A049145(n+1)-A185238(A088502(n+4))`
-/

namespace A154835.P10799700111739933759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049145 (n + 1) - A185238 (A088502 (n + 4)).toNat

end

end A154835.P10799700111739933759

/-!
# A154836: G.f. satisfies: A(x) = x + A(x*A(x)/(1-x)) with A(0)=0.

The programs for A154836, there is no canonical definition to state claims against.
-/

/-! ## A154836.P2333276017248091209

`A157100(A002998(n))-A135660(n+1)`
-/

namespace A154836.P2333276017248091209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157100 (A002998 n).toNat - A135660 (n + 1)

end

end A154836.P2333276017248091209

/-! ## A154836.P5903746684878625434

`A233583(A157100(n)+1)-1`
-/

namespace A154836.P5903746684878625434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A157100 n + 1).toNat - 1

end

end A154836.P5903746684878625434

/-! ## A154836.P5225117407339543551

`A157100(n)+A057428(A000538(n))`
-/

namespace A154836.P5225117407339543551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157100 n + A057428 (A000538 n).toNat

end

end A154836.P5225117407339543551

/-! ## A154836.P16064577547823990436

`A157100(n)+A057428(A024429(n))`
-/

namespace A154836.P16064577547823990436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157100 n + A057428 (A024429 n).toNat

end

end A154836.P16064577547823990436

/-!
# A154843: Triangular array, T(n,k) = s(n,k) + s(n,n-k), where s(n,k) are the Stirling numbers of the first kind.

The programs for A154843, the canonical program `A154843.P571972679650347175` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154843 has offset 0).

The definition of A154843 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2557 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154843.P571972679650347175

`A054654(n)+A048994(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A154843

/-- `A054654(n)+A048994(n)` -/
def P571972679650347175.Spec : Prop :=
  ∀ n, P571972679650347175.a n = A154843 n

theorem P571972679650347175.correct : P571972679650347175.Spec := by
  intro n
  simp only [A154843]

end A154843

/-! ## A154843.P5940342798510577417

`A048994(n)+A048994(A061579(n))`
-/

namespace A154843.P5940342798510577417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 n + A048994 (A061579 n).toNat

end

end A154843.P5940342798510577417

namespace A154843

/-- `A048994(n)+A048994(A061579(n))` -/
def P5940342798510577417.Spec : Prop :=
  ∀ n, P5940342798510577417.a n = A154843 n

end A154843

/-! ## A154843.P3825409778539464952

`A054654(n)+A054654(A061579(n))`
-/

namespace A154843.P3825409778539464952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054654 n + A054654 (A061579 n).toNat

end

end A154843.P3825409778539464952

namespace A154843

/-- `A054654(n)+A054654(A061579(n))` -/
def P3825409778539464952.Spec : Prop :=
  ∀ n, P3825409778539464952.a n = A154843 n

end A154843

/-! ## A154843.P13616448156843894474

`A048994(A038722(n+1)-1)+A048994(n)`
-/

namespace A154843.P13616448156843894474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (A038722 (n + 1) - 1).toNat + A048994 n

end

end A154843.P13616448156843894474

namespace A154843

/-- `A048994(A038722(n+1)-1)+A048994(n)` -/
def P13616448156843894474.Spec : Prop :=
  ∀ n, P13616448156843894474.a n = A154843 n

end A154843

/-! ## A154843.P3241333507564948544

`A054654(A038722(n+2))+A054654(n)`
-/

namespace A154843.P3241333507564948544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054654 (A038722 (n + 2)).toNat + A054654 n

end

end A154843.P3241333507564948544

namespace A154843

/-- `A054654(A038722(n+2))+A054654(n)` -/
def P3241333507564948544.Spec : Prop :=
  ∀ n, P3241333507564948544.a n = A154843 n

end A154843

/-! ## A154843.P5076735925417808804

`A154913(n)/A271709(n)`
-/

namespace A154843.P5076735925417808804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154913 n : ℚ) / (A271709 n : ℚ)

end

end A154843.P5076735925417808804

namespace A154843

/-- `A154913(n)/A271709(n)` -/
def P5076735925417808804.Spec : Prop :=
  ∀ n, P5076735925417808804.a n = (A154843 n : ℚ)

end A154843

/-! ## A154843.P6859006830073506113

`A048994(n)-(A000007(A007318(n))-A054654(n))`
-/

namespace A154843.P6859006830073506113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 n - (A000007 (A007318 n).toNat - A054654 n)

end

end A154843.P6859006830073506113

namespace A154843

/-- `A048994(n)-(A000007(A007318(n))-A054654(n))` -/
def P6859006830073506113.Spec : Prop :=
  ∀ n, P6859006830073506113.a n = A154843 n

end A154843

/-!
# A154844: Triangle T(n, k) = S(n, k) + S(n, n-k), where S are the Stirling numbers (A048993) of the second kind, read by rows.

The programs for A154844, the canonical program `A154844.P6166470427133278355` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154844 has offset 0).

The definition of A154844 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154844.P6166470427133278355

`A106800(n)+A048993(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A154844

/-- `A106800(n)+A048993(n)` -/
def P6166470427133278355.Spec : Prop :=
  ∀ n, P6166470427133278355.a n = A154844 n

theorem P6166470427133278355.correct : P6166470427133278355.Spec := by
  intro n
  simp only [A154844]

end A154844

/-! ## A154844.P7137286634500515879

`A048993(n)+A048993(A061579(n))`
-/

namespace A154844.P7137286634500515879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n + A048993 (A061579 n).toNat

end

end A154844.P7137286634500515879

namespace A154844

/-- `A048993(n)+A048993(A061579(n))` -/
def P7137286634500515879.Spec : Prop :=
  ∀ n, P7137286634500515879.a n = A154844 n

end A154844

/-! ## A154844.P10490052505256128028

`A106800(A061579(n))+A106800(n)`
-/

namespace A154844.P10490052505256128028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106800 (A061579 n).toNat + A106800 n

end

end A154844.P10490052505256128028

namespace A154844

/-- `A106800(A061579(n))+A106800(n)` -/
def P10490052505256128028.Spec : Prop :=
  ∀ n, P10490052505256128028.a n = A154844 n

end A154844

/-! ## A154844.P15973615636689896365

`A048993(n)+A048993(A114327(n)+n)`
-/

namespace A154844.P15973615636689896365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n + A048993 (A114327 n + (n : ℤ)).toNat

end

end A154844.P15973615636689896365

namespace A154844

/-- `A048993(n)+A048993(A114327(n)+n)` -/
def P15973615636689896365.Spec : Prop :=
  ∀ n, P15973615636689896365.a n = A154844 n

end A154844

/-! ## A154844.P14428883621947752518

`A048993(A038722(n+1)-1)+A048993(n)`
-/

namespace A154844.P14428883621947752518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A038722 (n + 1) - 1).toNat + A048993 n

end

end A154844.P14428883621947752518

namespace A154844

/-- `A048993(A038722(n+1)-1)+A048993(n)` -/
def P14428883621947752518.Spec : Prop :=
  ∀ n, P14428883621947752518.a n = A154844 n

end A154844

/-! ## A154844.P15267721720111036738

`A106800(A038722(n+2))+A106800(n)`
-/

namespace A154844.P15267721720111036738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106800 (A038722 (n + 2)).toNat + A106800 n

end

end A154844.P15267721720111036738

namespace A154844

/-- `A106800(A038722(n+2))+A106800(n)` -/
def P15267721720111036738.Spec : Prop :=
  ∀ n, P15267721720111036738.a n = A154844 n

end A154844

/-! ## A154844.P15621454335736434383

`A154915(n)/A271709(n)`
-/

namespace A154844.P15621454335736434383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154915 n : ℚ) / (A271709 n : ℚ)

end

end A154844.P15621454335736434383

namespace A154844

/-- `A154915(n)/A271709(n)` -/
def P15621454335736434383.Spec : Prop :=
  ∀ n, P15621454335736434383.a n = (A154844 n : ℚ)

end A154844

/-!
# A154853: Triangle of coefficients of p(x,n) = (1-x)^(n+1)*Sum_{m >= 0} ((3*m+2)^n - (3*m+1)^n)*x^m, read by rows.

The programs for A154853, the canonical program `A154853.P9102756538825142703` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154853 has offset 0).

The definition of A154853 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154853.P9102756538825142703

`A225117(n)-A225117(A061579(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A154853

/-- `A225117(n)-A225117(A061579(n))` -/
def P9102756538825142703.Spec : Prop :=
  ∀ n, P9102756538825142703.a n = A154853 n

theorem P9102756538825142703.correct : P9102756538825142703.Spec := by
  intro n
  simp only [A154853]

end A154853

/-! ## A154853.P6390964707354517651

`A225117(n)-A225117(A114327(n)+n)`
-/

namespace A154853.P6390964707354517651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225117 n - A225117 (A114327 n + (n : ℤ)).toNat

end

end A154853.P6390964707354517651

namespace A154853

/-- `A225117(n)-A225117(A114327(n)+n)` -/
def P6390964707354517651.Spec : Prop :=
  ∀ n, P6390964707354517651.a n = A154853 n

end A154853

/-! ## A154853.P5065698001299325315

`A225117(n)-A225117(A057944(n)+A025581(n))`
-/

namespace A154853.P5065698001299325315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225117 n - A225117 (A057944 n + A025581 n).toNat

end

end A154853.P5065698001299325315

namespace A154853

/-- `A225117(n)-A225117(A057944(n)+A025581(n))` -/
def P5065698001299325315.Spec : Prop :=
  ∀ n, P5065698001299325315.a n = A154853 n

end A154853

/-! ## A154853.P12805811406560490841

`A225117(n)-A225117(A002378(n)%A080036(n))`
-/

namespace A154853.P12805811406560490841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225117 n - A225117 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A154853.P12805811406560490841

namespace A154853

/-- `A225117(n)-A225117(A002378(n)%A080036(n))` -/
def P12805811406560490841.Spec : Prop :=
  ∀ n, P12805811406560490841.a n = A154853 n

end A154853

/-! ## A154853.P8898716648813409204

`A225117(n)+A225117(A061579(n))*A260196(n+2)`
-/

namespace A154853.P8898716648813409204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225117 n + A225117 (A061579 n).toNat * A260196 (n + 2)

end

end A154853.P8898716648813409204

namespace A154853

/-- `A225117(n)+A225117(A061579(n))*A260196(n+2)` -/
def P8898716648813409204.Spec : Prop :=
  ∀ n, P8898716648813409204.a n = A154853 n

end A154853

/-!
# A154854: Triangle of coefficients of p(x,n) = (1/2)*(1-x)^(n+1)*Sum_{m >= 0} ((4*m+3)^n - (4*m+1)^n)*x^m, read by rows.

The programs for A154854, there is no canonical definition to state claims against.
-/

/-! ## A154854.P16819274163825603121

`A225118(n)-A154647(n)`
-/

namespace A154854.P16819274163825603121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225118 n - A154647 n

end

end A154854.P16819274163825603121

/-! ## A154854.P9252438844202252199

`A225118(n)-(A176199(n)+A098355(n))/2`
-/

namespace A154854.P9252438844202252199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225118 n : ℚ) - (A176199 n + A098355 n : ℚ) / 2

end

end A154854.P9252438844202252199

/-! ## A154854.P4967328294829540496

`A225118(n)-floor(A174678(n)+A098355(n)/2)`
-/

namespace A154854.P4967328294829540496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225118 n - ⌊(A174678 n : ℚ) + (A098355 n : ℚ) / 2⌋

end

end A154854.P4967328294829540496

/-!
# A154863: Primes p such that largest digit of prime(p) is even.

The programs for A154863, there is no canonical definition to state claims against.
-/

/-! ## A154863.P11529851996723834710

`p?[A000720(A154767(n+1))]`
-/

namespace A154863.P11529851996723834710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A154767 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154863.P11529851996723834710

/-! ## A154863.P2694966588478186

`∩[A000040(n+1), A000720(A154767(n+1))]`
-/

namespace A154863.P2694966588478186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A154767 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154863.P2694966588478186

/-! ## A154863.P15936713102854726285

`∩[A061395(A154767(n+1)), A000040(n+3)]`
-/

namespace A154863.P15936713102854726285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A154767 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154863.P15936713102854726285

/-! ## A154863.P11887092812261430258

`p?[(n+1)*A000034(A028905(n+1))]`
-/

namespace A154863.P11887092812261430258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000034 (A028905 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154863.P11887092812261430258

/-!
# A154866: Primes p such that smallest digit of p is odd and smallest digit of prime(p) is also odd.

The programs for A154866, there is no canonical definition to state claims against.
-/

/-! ## A154866.P8852824705655431684

`A211655(A048991(n+1)%A134102(n+1)+1)`
-/

namespace A154866.P8852824705655431684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211655 (Int.tmod (A048991 (n + 1)) (A134102 (n + 1)) + 1).toNat

end

end A154866.P8852824705655431684

/-! ## A154866.P631235323218331942

`A032529(∑[A324417(n+1)+1])`
-/

namespace A154866.P631235323218331942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324417 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032529 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A154866.P631235323218331942

/-! ## A154866.P6838765793467427871

`∩[A063908(n+1), A258022(n+1)]`
-/

namespace A154866.P6838765793467427871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154866.P6838765793467427871

/-! ## A154866.P4467312483700954703

`A032529(A002473(n+1)^A245013(n))`
-/

namespace A154866.P4467312483700954703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032529 (SequenceMachineLib.roundAway ((A002473 (n + 1) : ℚ) ^ (A245013 n : ℤ))).toNat

end

end A154866.P4467312483700954703

/-! ## A154866.P8231521210344933603

`A032529(lt[A000009(n), A005940(n+1)])`
-/

namespace A154866.P8231521210344933603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032529 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A154866.P8231521210344933603

/-!
# A154867: A triangular sequence of polynomial coefficients: p(x,n) = Sum[m^n*x^m/m!, {m, 0, Infinity}]/(x*Exp[x]); q(x,n)= If[n == 0, 1, p(x, n) + x^n*p(1/x, n)].

The programs for A154867, there is no canonical definition to state claims against.
-/

/-! ## A154867.P11464405821698683221

`A048993(n+1)+A048993(A038722(n+2)+1)`
-/

namespace A154867.P11464405821698683221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (n + 1) + A048993 (A038722 (n + 2) + 1).toNat

end

end A154867.P11464405821698683221

/-! ## A154867.P13796608802264523524

`A204562(abs(A174728(n)))`
-/

namespace A154867.P13796608802264523524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204562 |A174728 n|.toNat

end

end A154867.P13796608802264523524

/-! ## A154867.P11045788903289214893

`A102513(A064298(n+1))`
-/

namespace A154867.P11045788903289214893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102513 (A064298 (n + 1)).toNat

end

end A154867.P11045788903289214893

/-! ## A154867.P4096143969573735941

`A204562(2-A174728(n))`
-/

namespace A154867.P4096143969573735941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204562 (2 - A174728 n).toNat

end

end A154867.P4096143969573735941

/-! ## A154867.P10916938329966647496

`A099594(n)-A025442(A173917(n))`
-/

namespace A154867.P10916938329966647496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 n - A025442 (A173917 n).toNat

end

end A154867.P10916938329966647496

/-!
# A154868: Primes p such that the smallest decimal digit of prime(p) is odd and the largest digit of p is odd.

The programs for A154868, there is no canonical definition to state claims against.
-/

/-! ## A154868.P5829868875496579686

`p?[eq[n%2, A280379(n+1)]]`
-/

namespace A154868.P5829868875496579686
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280379 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A154868.P5829868875496579686

/-! ## A154868.P5186237190166878710

`∩[A061345(A033948(n+1)), A317492(n+1)]`
-/

namespace A154868.P5186237190166878710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 (A033948 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154868.P5186237190166878710

/-! ## A154868.P9805695843661569945

`record[p?[A375374(n+3)]]`
-/

namespace A154868.P9805695843661569945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375374 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154868.P9805695843661569945

/-! ## A154868.P3347391900694964249

`A342194(A192582(n+2))`
-/

namespace A154868.P3347391900694964249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342194 (A192582 (n + 2)).toNat

end

end A154868.P3347391900694964249

/-! ## A154868.P11448816070912870130

`eq[A280379(n+1), A366571(n)]`
-/

namespace A154868.P11448816070912870130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366571 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154868.P11448816070912870130

/-!
# A154870: Period 6: repeat [7, 5, 1, -7, -5, -1].

The programs for A154870, the canonical program `A154870.P15417915587378118576` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154870 has offset 0).

The definition of A154870 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A154870.anchor (n : ℕ) : A154870 n = [7, 5, 1, -7, -5, -1].getD (n % 6) 0` in `Proof.A154.A154870`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154870.P15417915587378118576

`-a(n-3)` with `a(0)=7, a(1)=5, a(2)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154870

/-- `-a(n-3)` -/
def P15417915587378118576.Spec : Prop :=
  ∀ n, P15417915587378118576.a n = A154870 n

theorem P15417915587378118576.correct : P15417915587378118576.Spec := by
  intro n
  simp only [A154870]

end A154870

/-!
# A154877: Numbers that eventually reach the cycle 160-217-352 under "x -> sum of cubes of digits of x" (see A055012).

The programs for A154877, there is no canonical definition to state claims against.
-/

/-! ## A154877.P9349483940853012297

`eq[4, A028661(A165330(n))]`
-/

namespace A154877.P9349483940853012297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028661 (A165330 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A154877.P9349483940853012297

/-!
# A154878: Numbers whose trajectory under iteration of sum of cubes of digits eventually turns out to be 370.

The programs for A154878, there is no canonical definition to state claims against.
-/

/-! ## A154878.P6141317986891303895

`A165333(A032552(n+1)+n)`
-/

namespace A154878.P6141317986891303895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165333 (A032552 (n + 1) + (n : ℤ)).toNat

end

end A154878.P6141317986891303895

/-! ## A154878.P9429021656819008635

`∩[A039261(n+1), A165333(n+1)]`
-/

namespace A154878.P9429021656819008635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154878.P9429021656819008635

/-! ## A154878.P4645501537357527105

`A165333(comp[A035468(n+5)*A263261(n+1)])`
-/

namespace A154878.P4645501537357527105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035468 (n + 5) * A263261 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165333 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A154878.P4645501537357527105

/-! ## A154878.P579297247589465371

`A165333(∑[∏{e}[A066827(n+1), #]])`
-/

namespace A154878.P579297247589465371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066827 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165333 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A154878.P579297247589465371

/-! ## A154878.P721113883929334275

`A165333(∑[A000188(A066827(n+1))])`
-/

namespace A154878.P721113883929334275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A066827 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165333 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A154878.P721113883929334275

/-!
# A154879: Third differences of the Jacobsthal sequence A001045.

The programs for A154879, the canonical program `A154879.P16192474890224845766` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154879 has offset 0).

The definition of A154879 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154879.P14604625299656764599

`ogf((3-5x)/(1-x-2x^2))`
-/

namespace A154879.P14604625299656764599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -5] [1, -1, -2] n

end

end A154879.P14604625299656764599

namespace A154879

/-- `ogf((3-5x)/(1-x-2x^2))` -/
def P14604625299656764599.Spec : Prop :=
  ∀ n, P14604625299656764599.a n = A154879 n

end A154879

/-! ## A154879.P16192474890224845766

`a(n-1)+2*a(n-2)` with `a(0)=3, a(1)=-2`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154879

/-- `a(n-1)+2*a(n-2)` -/
def P16192474890224845766.Spec : Prop :=
  ∀ n, P16192474890224845766.a n = A154879 n

theorem P16192474890224845766.correct : P16192474890224845766.Spec := by
  intro n
  simp only [A154879]

end A154879

/-! ## A154879.P12567139321107654113

`1/3*(8*(-1)^n+2^n)`
-/

namespace A154879.P12567139321107654113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (8 * (-1) ^ n + (2 ^ n : ℤ) : ℚ)

end

end A154879.P12567139321107654113

namespace A154879

/-- `1/3*(8*(-1)^n+2^n)` -/
def P12567139321107654113.Spec : Prop :=
  ∀ n, P12567139321107654113.a n = (A154879 n : ℚ)

theorem P12567139321107654113.correct : P12567139321107654113.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A154879, Nat.add_sub_cancel, A154879.P12567139321107654113.a, A154879.P16192474890224845766.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A154879, Nat.add_sub_cancel, A154879.P12567139321107654113.a, A154879.P16192474890224845766.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A154879

/-! ## A154879.P2063365293422265841

`2^(n-1)-a(n-1)` with `a(0)=3`
-/

namespace A154879.P2063365293422265841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1)

end

end A154879.P2063365293422265841

namespace A154879

/-- `2^(n-1)-a(n-1)` -/
def P2063365293422265841.Spec : Prop :=
  ∀ n, P2063365293422265841.a n = (A154879 n : ℚ)

end A154879

/-! ## A154879.P8148095660567926313

`a(n-2)+a(n-1)+a(n-2)` with `a(0)=3, a(1)=-2`
-/

namespace A154879.P8148095660567926313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, -2] fun n a =>
  a (n - 2) + (a (n - 1) + a (n - 2))

end

end A154879.P8148095660567926313

namespace A154879

/-- `a(n-2)+a(n-1)+a(n-2)` -/
def P8148095660567926313.Spec : Prop :=
  ∀ n, P8148095660567926313.a n = A154879 n

end A154879

/-! ## A154879.P17202525116807989317

`3*a(n-2)-(a(n-2)-a(n-1))` with `a(0)=3, a(1)=-2`
-/

namespace A154879.P17202525116807989317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, -2] fun n a =>
  3 * a (n - 2) - (a (n - 2) - a (n - 1))

end

end A154879.P17202525116807989317

namespace A154879

/-- `3*a(n-2)-(a(n-2)-a(n-1))` -/
def P17202525116807989317.Spec : Prop :=
  ∀ n, P17202525116807989317.a n = A154879 n

end A154879

/-! ## A154879.P13576992857168722037

`A094373(n)-(a(n-1)+1)` with `a(0)=3`
-/

namespace A154879.P13576992857168722037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A094373 n - (a (n - 1) + 1)

end

end A154879.P13576992857168722037

namespace A154879

/-- `A094373(n)-(a(n-1)+1)` -/
def P13576992857168722037.Spec : Prop :=
  ∀ n, P13576992857168722037.a n = A154879 n

end A154879

/-! ## A154879.P8993134252160366192

`A056469(n)-(a(n-1)+2)` with `a(0)=3`
-/

namespace A154879.P8993134252160366192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A056469 n - (a (n - 1) + 2)

end

end A154879.P8993134252160366192

namespace A154879

/-- `A056469(n)-(a(n-1)+2)` -/
def P8993134252160366192.Spec : Prop :=
  ∀ n, P8993134252160366192.a n = A154879 n

end A154879

/-! ## A154879.P4085625364196451744

`A174971(n)+A001045(n)`
-/

namespace A154879.P4085625364196451744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174971 n + A001045 n

end

end A154879.P4085625364196451744

namespace A154879

/-- `A174971(n)+A001045(n)` -/
def P4085625364196451744.Spec : Prop :=
  ∀ n, P4085625364196451744.a n = A154879 n

end A154879

/-! ## A154879.P279282072523592296

`A154890(n)-A010679(n)`
-/

namespace A154879.P279282072523592296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154890 n - A010679 n

end

end A154879.P279282072523592296

namespace A154879

/-- `A154890(n)-A010679(n)` -/
def P279282072523592296.Spec : Prop :=
  ∀ n, P279282072523592296.a n = A154879 n

end A154879

/-! ## A154879.P8765240537704533200

`A352692(n)-A033999(n)`
-/

namespace A154879.P8765240537704533200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352692 n - A033999 n

end

end A154879.P8765240537704533200

namespace A154879

/-- `A352692(n)-A033999(n)` -/
def P8765240537704533200.Spec : Prop :=
  ∀ n, P8765240537704533200.a n = A154879 n

end A154879

/-! ## A154879.P11917153706891238779

`A135261(n+1)+A135259(n)`
-/

namespace A154879.P11917153706891238779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135261 (n + 1) + A135259 n

end

end A154879.P11917153706891238779

namespace A154879

/-- `A135261(n+1)+A135259(n)` -/
def P11917153706891238779.Spec : Prop :=
  ∀ n, P11917153706891238779.a n = A154879 n

end A154879

/-! ## A154879.P336273941757662146

`A352692(n)+A105812(n+2)`
-/

namespace A154879.P336273941757662146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352692 n + A105812 (n + 2)

end

end A154879.P336273941757662146

namespace A154879

/-- `A352692(n)+A105812(n+2)` -/
def P336273941757662146.Spec : Prop :=
  ∀ n, P336273941757662146.a n = A154879 n

end A154879

/-! ## A154879.P658170098240175906

`A352692(n)-A165326(n+1)`
-/

namespace A154879.P658170098240175906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352692 n - A165326 (n + 1)

end

end A154879.P658170098240175906

namespace A154879

/-- `A352692(n)-A165326(n+1)` -/
def P658170098240175906.Spec : Prop :=
  ∀ n, P658170098240175906.a n = A154879 n

end A154879

/-! ## A154879.P10894426110855962541

`A078008(n)+2*A033999(n)`
-/

namespace A154879.P10894426110855962541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n + 2 * A033999 n

end

end A154879.P10894426110855962541

namespace A154879

/-- `A078008(n)+2*A033999(n)` -/
def P10894426110855962541.Spec : Prop :=
  ∀ n, P10894426110855962541.a n = A154879 n

end A154879

/-! ## A154879.P10968004683230275364

`A112030(2*n)+A001045(n)`
-/

namespace A154879.P10968004683230275364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112030 (2 * n) + A001045 n

end

end A154879.P10968004683230275364

namespace A154879

/-- `A112030(2*n)+A001045(n)` -/
def P10968004683230275364.Spec : Prop :=
  ∀ n, P10968004683230275364.a n = A154879 n

end A154879

/-! ## A154879.P423287181352773183

`A153772(n)+A010673(n+1)²`
-/

namespace A154879.P423287181352773183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153772 n + A010673 (n + 1) ^ 2

end

end A154879.P423287181352773183

namespace A154879

/-- `A153772(n)+A010673(n+1)²` -/
def P423287181352773183.Spec : Prop :=
  ∀ n, P423287181352773183.a n = A154879 n

end A154879

/-! ## A154879.P12869050670614235641

`A154890(n)+1-A010684(n)²`
-/

namespace A154879.P12869050670614235641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154890 n + (1 - A010684 n ^ 2)

end

end A154879.P12869050670614235641

namespace A154879

/-- `A154890(n)+1-A010684(n)²` -/
def P12869050670614235641.Spec : Prop :=
  ∀ n, P12869050670614235641.a n = A154879 n

end A154879

/-! ## A154879.P14625383471622917232

`A078008(n)+2-A010673(n)²`
-/

namespace A154879.P14625383471622917232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n + (2 - A010673 n ^ 2)

end

end A154879.P14625383471622917232

namespace A154879

/-- `A078008(n)+2-A010673(n)²` -/
def P14625383471622917232.Spec : Prop :=
  ∀ n, P14625383471622917232.a n = A154879 n

end A154879

/-! ## A154879.P15782681916256319088

`A135259(n)+Δ[A135259(n+1)]`
-/

namespace A154879.P15782681916256319088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135259 n + (f1 (n + 1) - f1 n)

end

end A154879.P15782681916256319088

namespace A154879

/-- `A135259(n)+Δ[A135259(n+1)]` -/
def P15782681916256319088.Spec : Prop :=
  ∀ n, P15782681916256319088.a n = A154879 n

end A154879

/-!
# A154881: First prime in a consecutive sequence of 6 primes such that, when taken as ordered x,y,z triples, the Cartesian distance between the two points is an integer.

The programs for A154881, there is no canonical definition to state claims against.
-/

/-! ## A154881.P14606797739511530510

`A154893(eq[A051377(n+4), A193299(n+1)])`
-/

namespace A154881.P14606797739511530510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051377 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154893 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A154881.P14606797739511530510

/-!
# A154882: a(n) is the smallest number with at least as many divisors as a(n-1)^2.

The programs for A154882, there is no canonical definition to state claims against.
-/

/-! ## A154882.P16002524048625098811

`A061799(A048691(a(n-1)))` with `a(0)=2`
-/

namespace A154882.P16002524048625098811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A061799 (A048691 (a (n - 1)).toNat).toNat

end

end A154882.P16002524048625098811

/-! ## A154882.P9288632453278347250

`A134865(A135491(n)+1)`
-/

namespace A154882.P9288632453278347250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134865 (A135491 n + 1).toNat

end

end A154882.P9288632453278347250

/-!
# A154883: Distinct entries in continued fraction for Pi in the order of their appearance.

The programs for A154883, there is no canonical definition to state claims against.
-/

/-! ## A154883.P4283506554904370047

`A001203(record[A225802(A001203(n))])`
-/

namespace A154883.P4283506554904370047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225802 (A001203 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A154883.P4283506554904370047

/-! ## A154883.P13764831416968515540

`A001203(eq[n, A225802(A001203(n))])`
-/

namespace A154883.P13764831416968515540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225802 (A001203 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A154883.P13764831416968515540

/-!
# A154887: Number of ways to partition n into distinct reduced fractions i/j with j <= n.

The programs for A154887, there is no canonical definition to state claims against.
-/

/-! ## A154887.P5289662848800648538

`A322912(A017925(n))`
-/

namespace A154887.P5289662848800648538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322912 (A017925 n).toNat

end

end A154887.P5289662848800648538

/-!
# A154888: Number of ways to partition 1 into distinct reduced fractions i/j with j <= n.

The programs for A154888, there is no canonical definition to state claims against.
-/

/-! ## A154888.P8349887771658265128

`A116084(n+1)+1`
-/

namespace A154888.P8349887771658265128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116084 (n + 1) + 1

end

end A154888.P8349887771658265128

/-! ## A154888.P7885987581236089457

`A116085(n)+a(n-1)` with `a(0)=1`
-/

namespace A154888.P7885987581236089457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A116085 n + a (n - 1)

end

end A154888.P7885987581236089457

/-! ## A154888.P3769209155465950808

`∑[A116085(round(sqrt(n²+1)))]+1`
-/

namespace A154888.P3769209155465950808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116085 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A154888.P3769209155465950808

/-! ## A154888.P3058168797169293320

`∑[A116085(A000038(n)+n)]`
-/

namespace A154888.P3058168797169293320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116085 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154888.P3058168797169293320

/-! ## A154888.P1108405207958912406

`∑[A116085(or(n, A000038(n)))]`
-/

namespace A154888.P1108405207958912406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116085 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154888.P1108405207958912406

/-!
# A154890: Jacobsthal numbers A001045 alternatingly incremented by 3 and 5.

The programs for A154890, the canonical program `A154890.P14020852769492434873` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154890 has offset 0).

The definition of A154890 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154890.P9380409230488273867

`ogf((3-11x^2)/(1-2x-x^2+2x^3))`
-/

namespace A154890.P9380409230488273867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, -11] [1, -2, -1, 2] n

end

end A154890.P9380409230488273867

namespace A154890

/-- `ogf((3-11x^2)/(1-2x-x^2+2x^3))` -/
def P9380409230488273867.Spec : Prop :=
  ∀ n, P9380409230488273867.a n = A154890 n

end A154890

/-! ## A154890.P14020852769492434873

`2*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=3, a(1)=6, a(2)=4`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154890

/-- `2*a(n-1)+a(n-2)-2*a(n-3)` -/
def P14020852769492434873.Spec : Prop :=
  ∀ n, P14020852769492434873.a n = A154890 n

theorem P14020852769492434873.correct : P14020852769492434873.Spec := by
  intro n
  simp only [A154890]

end A154890

/-! ## A154890.P8662516582742215207

`A153643(n)+A010684(n)`
-/

namespace A154890.P8662516582742215207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153643 n + A010684 n

end

end A154890.P8662516582742215207

namespace A154890

/-- `A153643(n)+A010684(n)` -/
def P8662516582742215207.Spec : Prop :=
  ∀ n, P8662516582742215207.a n = A154890 n

end A154890

/-! ## A154890.P5287058112865075177

`a(n-2)+2^(n-2)` with `a(0)=3, a(1)=6`
-/

namespace A154890.P5287058112865075177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 6] fun n a =>
  a (n - 2) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A154890.P5287058112865075177

namespace A154890

/-- `a(n-2)+2^(n-2)` -/
def P5287058112865075177.Spec : Prop :=
  ∀ n, P5287058112865075177.a n = (A154890 n : ℚ)

end A154890

/-! ## A154890.P16611438144661426020

`8-(a(n-1)-2^(n-1))` with `a(0)=3`
-/

namespace A154890.P16611438144661426020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  8 - (a (n - 1) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A154890.P16611438144661426020

namespace A154890

/-- `8-(a(n-1)-2^(n-1))` -/
def P16611438144661426020.Spec : Prop :=
  ∀ n, P16611438144661426020.a n = (A154890 n : ℚ)

end A154890

/-! ## A154890.P10025053444148314544

`a(n-1)+2*a(n-2)-8` with `a(0)=3, a(1)=6`
-/

namespace A154890.P10025053444148314544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 6] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 8

end

end A154890.P10025053444148314544

namespace A154890

/-- `a(n-1)+2*a(n-2)-8` -/
def P10025053444148314544.Spec : Prop :=
  ∀ n, P10025053444148314544.a n = A154890 n

end A154890

/-! ## A154890.P2969595031551376720

`2*a(n-2)-(8-a(n-1))` with `a(0)=3, a(1)=6`
-/

namespace A154890.P2969595031551376720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 6] fun n a =>
  2 * a (n - 2) - (8 - a (n - 1))

end

end A154890.P2969595031551376720

namespace A154890

/-- `2*a(n-2)-(8-a(n-1))` -/
def P2969595031551376720.Spec : Prop :=
  ∀ n, P2969595031551376720.a n = A154890 n

end A154890

/-! ## A154890.P5261233955253629446

`∑[a(n-2)+a(n-1)+a(n-2)]` with `a(0)=3, a(1)=3, a(2)=-2`
-/

namespace A154890.P5261233955253629446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 3, -2] fun n f1 =>
  f1 (n - 2) + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154890.P5261233955253629446

namespace A154890

/-- `∑[a(n-2)+a(n-1)+a(n-2)]` -/
def P5261233955253629446.Spec : Prop :=
  ∀ n, P5261233955253629446.a n = A154890 n

end A154890

/-! ## A154890.P9426592238651062771

`A173197(n+1)+2`
-/

namespace A154890.P9426592238651062771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173197 (n + 1) + 2

end

end A154890.P9426592238651062771

namespace A154890

/-- `A173197(n+1)+2` -/
def P9426592238651062771.Spec : Prop :=
  ∀ n, P9426592238651062771.a n = A154890 n

end A154890

/-! ## A154890.P4627513717597912986

`A141416(2*n)+4`
-/

namespace A154890.P4627513717597912986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141416 (2 * n) + 4

end

end A154890.P4627513717597912986

namespace A154890

/-- `A141416(2*n)+4` -/
def P4627513717597912986.Spec : Prop :=
  ∀ n, P4627513717597912986.a n = A154890 n

end A154890

/-! ## A154890.P7529452832695741386

`A154879(n-1)+a(n-1)` with `a(0)=3`
-/

namespace A154890.P7529452832695741386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A154879 (n - 1) + a (n - 1)

end

end A154890.P7529452832695741386

namespace A154890

/-- `A154879(n-1)+a(n-1)` -/
def P7529452832695741386.Spec : Prop :=
  ∀ n, P7529452832695741386.a n = A154890 n

end A154890

/-! ## A154890.P11731989199968357690

`A242475(n-1)-a(n-1)` with `a(0)=3`
-/

namespace A154890.P11731989199968357690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A242475 (n - 1) - a (n - 1)

end

end A154890.P11731989199968357690

namespace A154890

/-- `A242475(n-1)-a(n-1)` -/
def P11731989199968357690.Spec : Prop :=
  ∀ n, P11731989199968357690.a n = A154890 n

end A154890

/-! ## A154890.P16772482053191107558

`A056469(n)+6-a(n-1)` with `a(0)=3`
-/

namespace A154890.P16772482053191107558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A056469 n + (6 - a (n - 1))

end

end A154890.P16772482053191107558

namespace A154890

/-- `A056469(n)+6-a(n-1)` -/
def P16772482053191107558.Spec : Prop :=
  ∀ n, P16772482053191107558.a n = A154890 n

end A154890

/-! ## A154890.P3245472001331802575

`A011782(n)-a(n-1)+8` with `a(0)=3`
-/

namespace A154890.P3245472001331802575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A011782 n - a (n - 1) + 8

end

end A154890.P3245472001331802575

namespace A154890

/-- `A011782(n)-a(n-1)+8` -/
def P3245472001331802575.Spec : Prop :=
  ∀ n, P3245472001331802575.a n = A154890 n

end A154890

/-! ## A154890.P12873188058372469746

`A010703(n)+A001045(n)`
-/

namespace A154890.P12873188058372469746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010703 n + A001045 n

end

end A154890.P12873188058372469746

namespace A154890

/-- `A010703(n)+A001045(n)` -/
def P12873188058372469746.Spec : Prop :=
  ∀ n, P12873188058372469746.a n = A154890 n

end A154890

/-! ## A154890.P14786966293995572075

`A010695(n)+A005578(n)`
-/

namespace A154890.P14786966293995572075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010695 n + A005578 n

end

end A154890.P14786966293995572075

namespace A154890

/-- `A010695(n)+A005578(n)` -/
def P14786966293995572075.Spec : Prop :=
  ∀ n, P14786966293995572075.a n = A154890 n

end A154890

/-! ## A154890.P13451957896463064711

`A078008(n)+A010696(n)`
-/

namespace A154890.P13451957896463064711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n + A010696 n

end

end A154890.P13451957896463064711

namespace A154890

/-- `A078008(n)+A010696(n)` -/
def P13451957896463064711.Spec : Prop :=
  ∀ n, P13451957896463064711.a n = A154890 n

end A154890

/-! ## A154890.P98286709570981009

`A128209(n)+A010694(n)`
-/

namespace A154890.P98286709570981009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128209 n + A010694 n

end

end A154890.P98286709570981009

namespace A154890

/-- `A128209(n)+A010694(n)` -/
def P98286709570981009.Spec : Prop :=
  ∀ n, P98286709570981009.a n = A154890 n

end A154890

/-! ## A154890.P12729251381798463760

`A153772(n)+A010713(n)`
-/

namespace A154890.P12729251381798463760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153772 n + A010713 n

end

end A154890.P12729251381798463760

namespace A154890

/-- `A153772(n)+A010713(n)` -/
def P12729251381798463760.Spec : Prop :=
  ∀ n, P12729251381798463760.a n = A154890 n

end A154890

/-! ## A154890.P3251750131477283622

`A154879(n)+A010679(n)`
-/

namespace A154890.P3251750131477283622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154879 n + A010679 n

end

end A154890.P3251750131477283622

namespace A154890

/-- `A154879(n)+A010679(n)` -/
def P3251750131477283622.Spec : Prop :=
  ∀ n, P3251750131477283622.a n = A154890 n

end A154890

/-!
# A154891: Where records occurs in A154804.

The programs for A154891, there is no canonical definition to state claims against.
-/

/-! ## A154891.P2102617161292889745

`A135551(A059272(n))+∑[n]+1`
-/

namespace A154891.P2102617161292889745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 (A059272 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A154891.P2102617161292889745

/-! ## A154891.P16723587708900026755

`A038548(A000105(n+2))+A000217(n)`
-/

namespace A154891.P16723587708900026755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A000105 (n + 2)).toNat + A000217 n

end

end A154891.P16723587708900026755

/-! ## A154891.P13192981166690851168

`A338687(n+1)*A338687(A005664(n))`
-/

namespace A154891.P13192981166690851168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338687 (n + 1) * A338687 (A005664 n).toNat

end

end A154891.P13192981166690851168

/-!
# A154893: Numbers whose number of proper divisors is not a prime number.

The programs for A154893, the canonical program `A154893.P9812701386378152860` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154893 has offset 1).

The definition of A154893 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154893.P9103250077870567351

`∪[A008578(n+1), A223456(n+1)]`
-/

namespace A154893.P9103250077870567351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A154893.P9103250077870567351

namespace A154893

/-- `∪[A008578(n+1), A223456(n+1)]` -/
def P9103250077870567351.Spec : Prop :=
  ∀ n, (P9103250077870567351.a n : ℤ) = A154893 (n + 1)

end A154893

/-! ## A154893.P5301033045142890739

`∪[A223456(n+1), A397574(n+1)]`
-/

namespace A154893.P5301033045142890739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A154893.P5301033045142890739

namespace A154893

/-- `∪[A223456(n+1), A397574(n+1)]` -/
def P5301033045142890739.Spec : Prop :=
  ∀ n, (P5301033045142890739.a n : ℤ) = A154893 (n + 1)

end A154893

/-! ## A154893.P461731373910311769

`lt[A020639(a(A000005(n)-1)+3), 4]` with `a(0)=6`
-/

namespace A154893.P461731373910311769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  A020639 (f1 (A000005 n - 1).toNat + 3).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A154893.P461731373910311769

namespace A154893

/-- `lt[A020639(a(A000005(n)-1)+3), 4]` -/
def P461731373910311769.Spec : Prop :=
  ∀ n, (P461731373910311769.a n : ℤ) = A154893 (n + 1)

end A154893

/-! ## A154893.P9812701386378152860

`record[n+1-A055671(A000005(n+1)-1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A154893

/-- `record[n+1-A055671(A000005(n+1)-1)]` -/
def P9812701386378152860.Spec : Prop :=
  ∀ n, P9812701386378152860.a n = A154893 (n + 1)

theorem P9812701386378152860.correct : P9812701386378152860.Spec := by
  intro n
  simp only [A154893, Nat.add_sub_cancel]

end A154893

/-! ## A154893.P5314400380486267492

`lt[1, A237981(2*a(A000005(n)-1)+2)]` with `a(0)=1, a(1)=6`
-/

namespace A154893.P5314400380486267492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n f2 =>
  A237981 (2 * f2 (A000005 n - 1).toNat + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A154893.P5314400380486267492

namespace A154893

/-- `lt[1, A237981(2*a(A000005(n)-1)+2)]` -/
def P5314400380486267492.Spec : Prop :=
  ∀ n, (P5314400380486267492.a n : ℤ) = A154893 (n + 1)

end A154893

/-! ## A154893.P2103273374447435204

`lt[1, n*A007920(A032741(n))]`
-/

namespace A154893.P2103273374447435204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007920 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A154893.P2103273374447435204

namespace A154893

/-- `lt[1, n*A007920(A032741(n))]` -/
def P2103273374447435204.Spec : Prop :=
  ∀ n, (P2103273374447435204.a n : ℤ) = A154893 (n + 1)

end A154893

/-! ## A154893.P15576458165117596597

`record[n*A112316(a(A032741(n)))]` with `a(0)=1`
-/

namespace A154893.P15576458165117596597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) * A112316 (f1 (A032741 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154893.P15576458165117596597

namespace A154893

/-- `record[n*A112316(a(A032741(n)))]` -/
def P15576458165117596597.Spec : Prop :=
  ∀ n, P15576458165117596597.a n = A154893 (n + 1)

end A154893

/-! ## A154893.P12027931087007483725

`record[(n+1)*A010052(a(A070824(n+1)))]` with `a(0)=1`
-/

namespace A154893.P12027931087007483725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1 : ℤ) * A010052 (f1 (A070824 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154893.P12027931087007483725

namespace A154893

/-- `record[(n+1)*A010052(a(A070824(n+1)))]` -/
def P12027931087007483725.Spec : Prop :=
  ∀ n, P12027931087007483725.a n = A154893 (n + 1)

end A154893

/-! ## A154893.P14370155843736207333

`record[(n+1)^A121373(a(A070824(n+1))²)]` with `a(0)=1`
-/

namespace A154893.P14370155843736207333
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1 : ℚ) ^ (A121373 (SequenceMachineLib.roundAway (f1 (A070824 (n + 1)).toNat ^ 2)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154893.P14370155843736207333

namespace A154893

/-- `record[(n+1)^A121373(a(A070824(n+1))²)]` -/
def P14370155843736207333.Spec : Prop :=
  ∀ n, P14370155843736207333.a n = (A154893 (n + 1) : ℚ)

end A154893

/-! ## A154893.P16281700645120446051

`record[(n+1)/(A010051(A070824(n+1)+1)+1)]`
-/

namespace A154893.P16281700645120446051
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A010051 (A070824 (n + 1) + 1).toNat + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154893.P16281700645120446051

namespace A154893

/-- `record[(n+1)/(A010051(A070824(n+1)+1)+1)]` -/
def P16281700645120446051.Spec : Prop :=
  ∀ n, P16281700645120446051.a n = (A154893 (n + 1) : ℚ)

end A154893

/-! ## A154893.P7953425422249113029

`lt[A014963(a(∏{e}[n, #+1]-1)+1), 3]` with `a(0)=5`
-/

namespace A154893.P7953425422249113029
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A014963 (f1 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) - 1) + 1).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A154893.P7953425422249113029

namespace A154893

/-- `lt[A014963(a(∏{e}[n, #+1]-1)+1), 3]` -/
def P7953425422249113029.Spec : Prop :=
  ∀ n, (P7953425422249113029.a n : ℤ) = A154893 (n + 1)

end A154893

/-!
# A154894: Fibonacci numbers whose number of proper divisors is prime.

The programs for A154894, there is no canonical definition to state claims against.
-/

/-! ## A154894.P18269426950815344687

`filter[A090206(n+2), A354807(#)]`
-/

namespace A154894.P18269426950815344687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090206 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354807 (f1 j).toNat = 1) n)

end

end A154894.P18269426950815344687

/-! ## A154894.P8442490880987426347

`filter[A063806(n+1), A010056(#)]`
-/

namespace A154894.P8442490880987426347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010056 (f1 j).toNat = 1) n)

end

end A154894.P8442490880987426347

/-! ## A154894.P2276329977932009400

`filter[A291127(n+1), A010056(#)]`
-/

namespace A154894.P2276329977932009400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010056 (f1 j).toNat = 1) n)

end

end A154894.P2276329977932009400

/-! ## A154894.P4672719943430065757

`filter[A062973(2*(n+1)), A010056(#)]`
-/

namespace A154894.P4672719943430065757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010056 (f1 j).toNat = 1) n)

end

end A154894.P4672719943430065757

/-! ## A154894.P5225629221591296082

`A246104(∑{d}[A001611(2*n+3), #])`
-/

namespace A154894.P5225629221591296082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246104 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A154894.P5225629221591296082

/-!
# A154895: 

The programs for A154895, there is no canonical definition to state claims against.
-/

/-! ## A154895.P14971618221879992204

`A000396(∪[or(1, 3*(comp[5*n]+1)+1), 2^n])`
-/

namespace A154895.P14971618221879992204
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000396 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = x) n)

end

end A154895.P14971618221879992204

/-!
# A154896: Sum of proper divisors minus the number of proper divisors of the perfect number A000396(n).

The programs for A154896, there is no canonical definition to state claims against.
-/

/-! ## A154896.P16971734501147430896

`A000396(n+1)-A133033(n+1)`
-/

namespace A154896.P16971734501147430896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000396 (n + 1) - A133033 (n + 1)

end

end A154896.P16971734501147430896

/-! ## A154896.P12472324751301595056

`A135629(n+1)-A061645(n+1)`
-/

namespace A154896.P12472324751301595056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135629 (n + 1) - A061645 (n + 1)

end

end A154896.P12472324751301595056

/-! ## A154896.P14638503423812706087

`A000396(n+1)-log2(A139306(n+1))`
-/

namespace A154896.P14638503423812706087
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000396 (n + 1) : ℝ) - Real.logb 2 (A139306 (n + 1) : ℝ)

end

end A154896.P14638503423812706087

/-! ## A154896.P2067129479505118991

`A135627(n+1)-log2(A152921(n+1))`
-/

namespace A154896.P2067129479505118991
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A135627 (n + 1) : ℝ) - Real.logb 2 (A152921 (n + 1) : ℝ)

end

end A154896.P2067129479505118991

/-! ## A154896.P6130322640008609890

`Δ[A185351(2^n)]-A133033(n+1)`
-/

namespace A154896.P6130322640008609890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185351 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A133033 (n + 1)

end

end A154896.P6130322640008609890

