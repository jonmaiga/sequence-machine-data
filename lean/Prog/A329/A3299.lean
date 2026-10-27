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
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A329900: Primorial deflation of n: starting from x = n, repeatedly divide x by the largest primorial A002110(k) that divides it, until x is an odd number. Then a(n) = Product prime(k_i), for primorial indices k_1 >= k_2 >= ..., encountered in the process.

The programs for A329900, there is no canonical definition to state claims against.
-/

/-! ## A329900.P9543792719883675035

`A238745(A328479(n+1))`
-/

namespace A329900.P9543792719883675035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238745 (A328479 (n + 1)).toNat

end

end A329900.P9543792719883675035

/-! ## A329900.P12655546351475646507

`A319626((n+1)/A328478(n+1))`
-/

namespace A329900.P12655546351475646507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A328478 (n + 1) : ℚ))).toNat

end

end A329900.P12655546351475646507

/-! ## A329900.P2015755872326877324

`A319626(A328479(n+1)%A016825(n))`
-/

namespace A329900.P2015755872326877324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (Int.tmod (A328479 (n + 1)) (A016825 n)).toNat

end

end A329900.P2015755872326877324

/-! ## A329900.P13423519144011995790

`A319626(A328479(n+1))%A017223(n)`
-/

namespace A329900.P13423519144011995790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319626 (A328479 (n + 1)).toNat) (A017223 n)

end

end A329900.P13423519144011995790

/-! ## A329900.P2422523843257194859

`gcd(A319626(A328479(n+1)), A319626(n+1))`
-/

namespace A329900.P2422523843257194859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A319626 (A328479 (n + 1)).toNat) (A319626 (n + 1))

end

end A329900.P2422523843257194859

/-!
# A329901: Inverse permutation to A181815.

The programs for A329901, there is no canonical definition to state claims against.
-/

/-! ## A329901.P14747604589815861860

`A329906(A243071(n+1))`
-/

namespace A329901.P14747604589815861860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329906 (A243071 (n + 1)).toNat

end

end A329901.P14747604589815861860

/-! ## A329901.P4706666114246310485

`A361808(A122111(n+1))`
-/

namespace A329901.P4706666114246310485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361808 (A122111 (n + 1)).toNat

end

end A329901.P4706666114246310485

/-! ## A329901.P7992190517064611907

`A361808(∑{d}[n+1, A329034(#)])`
-/

namespace A329901.P7992190517064611907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361808 (∑ d ∈ Nat.divisors (f1 n), A329034 d).toNat

end

end A329901.P7992190517064611907

/-! ## A329901.P10326099408838764410

`A361808(1-A352491(n+1)+n)`
-/

namespace A329901.P10326099408838764410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361808 (1 - A352491 (n + 1) + (n : ℤ)).toNat

end

end A329901.P10326099408838764410

/-! ## A329901.P8501728235361083905

`A361808(A181815(A361808(n+1)))`
-/

namespace A329901.P8501728235361083905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361808 (A181815 (A361808 (n + 1)).toNat).toNat

end

end A329901.P8501728235361083905

/-!
# A329902: Primorial deflation of the n-th highly composite number: the unique integer k such that A108951(k) = A002182(n).

The programs for A329902, there is no canonical definition to state claims against.
-/

/-! ## A329902.P14358691581030285623

`A181815(A306802(n+1))`
-/

namespace A329902.P14358691581030285623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181815 (A306802 (n + 1)).toNat

end

end A329902.P14358691581030285623

/-! ## A329902.P10496651482288577236

`A329900(A002182(n+1))`
-/

namespace A329902.P10496651482288577236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (A002182 (n + 1)).toNat

end

end A329902.P10496651482288577236

/-! ## A329902.P13863195031094383887

`A272605(n+1)*A329900(A301413(n+1))`
-/

namespace A329902.P13863195031094383887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272605 (n + 1) * A329900 (A301413 (n + 1)).toNat

end

end A329902.P13863195031094383887

/-! ## A329902.P12445371057230529780

`A122111(A353562(n+1))`
-/

namespace A329902.P12445371057230529780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A353562 (n + 1)).toNat

end

end A329902.P12445371057230529780

/-! ## A329902.P4888040075837573855

`A122111(∏{e}[A002182(n+1), A100725(#)])`
-/

namespace A329902.P4888040075837573855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A100725 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A329902.P4888040075837573855

/-!
# A329903: a(n) = A156552(n) mod 3.

The programs for A329903, the canonical program `A329903.P6568458653162980673` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329903 has offset 1).

The definition of A329903 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A329903.P6568458653162980673

`A156552(n+1)%3`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A329903

/-- `A156552(n+1)%3` -/
def P6568458653162980673.Spec : Prop :=
  ∀ n, P6568458653162980673.a n = A329903 (n + 1)

theorem P6568458653162980673.correct : P6568458653162980673.Spec := by
  intro n
  simp only [A329903, Nat.add_sub_cancel]

end A329903

/-! ## A329903.P12334203872619019935

`A010872(A156552(n+1))`
-/

namespace A329903.P12334203872619019935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A156552 (n + 1)).toNat

end

end A329903.P12334203872619019935

namespace A329903

/-- `A010872(A156552(n+1))` -/
def P12334203872619019935.Spec : Prop :=
  ∀ n, P12334203872619019935.a n = A329903 (n + 1)

end A329903

/-! ## A329903.P3983301884618875585

`dr(and(11, A332814(n+1)))`
-/

namespace A329903.P3983301884618875585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.land 11 (A332814 (n + 1)))

end

end A329903.P3983301884618875585

namespace A329903

/-- `dr(and(11, A332814(n+1)))` -/
def P3983301884618875585.Spec : Prop :=
  ∀ n, (P3983301884618875585.a n : ℤ) = A329903 (n + 1)

end A329903

/-! ## A329903.P17748341280614799720

`1-A332814(2*(n+1))`
-/

namespace A329903.P17748341280614799720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A332814 (2 * (n + 1))

end

end A329903.P17748341280614799720

namespace A329903

/-- `1-A332814(2*(n+1))` -/
def P17748341280614799720.Spec : Prop :=
  ∀ n, P17748341280614799720.a n = A329903 (n + 1)

end A329903

/-! ## A329903.P17723570836202365103

`A332813(A335423(n+1))`
-/

namespace A329903.P17723570836202365103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332813 (A335423 (n + 1)).toNat

end

end A329903.P17723570836202365103

namespace A329903

/-- `A332813(A335423(n+1))` -/
def P17723570836202365103.Spec : Prop :=
  ∀ n, P17723570836202365103.a n = A329903 (n + 1)

end A329903

/-! ## A329903.P5014912610544482749

`A353307(n+1)+2*A353307(A064989(n+1))`
-/

namespace A329903.P5014912610544482749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353307 (n + 1) + 2 * A353307 (A064989 (n + 1)).toNat

end

end A329903.P5014912610544482749

namespace A329903

/-- `A353307(n+1)+2*A353307(A064989(n+1))` -/
def P5014912610544482749.Spec : Prop :=
  ∀ n, P5014912610544482749.a n = A329903 (n + 1)

end A329903

/-! ## A329903.P276040560800561117

`1-A332823(A335423(2*(n+1)))`
-/

namespace A329903.P276040560800561117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A332823 (A335423 (2 * (n + 1))).toNat

end

end A329903.P276040560800561117

namespace A329903

/-- `1-A332823(A335423(2*(n+1)))` -/
def P276040560800561117.Spec : Prop :=
  ∀ n, P276040560800561117.a n = A329903 (n + 1)

end A329903

/-! ## A329903.P1031437639640537987

`(A005941(n+1)-1)%3`
-/

namespace A329903.P1031437639640537987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005941 (n + 1) - 1) 3

end

end A329903.P1031437639640537987

namespace A329903

/-- `(A005941(n+1)-1)%3` -/
def P1031437639640537987.Spec : Prop :=
  ∀ n, P1031437639640537987.a n = A329903 (n + 1)

end A329903

/-! ## A329903.P3520846964804577209

`(A323243(n+1)-A324865(n+1))%3`
-/

namespace A329903.P3520846964804577209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323243 (n + 1) - A324865 (n + 1)) 3

end

end A329903.P3520846964804577209

namespace A329903

/-- `(A323243(n+1)-A324865(n+1))%3` -/
def P3520846964804577209.Spec : Prop :=
  ∀ n, P3520846964804577209.a n = A329903 (n + 1)

end A329903

/-! ## A329903.P9083963313077420540

`(A292382(n+1)+A292380(n+1))%3`
-/

namespace A329903.P9083963313077420540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292382 (n + 1) + A292380 (n + 1)) 3

end

end A329903.P9083963313077420540

namespace A329903

/-- `(A292382(n+1)+A292380(n+1))%3` -/
def P9083963313077420540.Spec : Prop :=
  ∀ n, P9083963313077420540.a n = A329903 (n + 1)

end A329903

/-! ## A329903.P4610920735186792002

`A353307(n+1)+2*A353307(A003961(n+1))`
-/

namespace A329903.P4610920735186792002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353307 (n + 1) + 2 * A353307 (A003961 (n + 1)).toNat

end

end A329903.P4610920735186792002

namespace A329903

/-- `A353307(n+1)+2*A353307(A003961(n+1))` -/
def P4610920735186792002.Spec : Prop :=
  ∀ n, P4610920735186792002.a n = A329903 (n + 1)

end A329903

/-! ## A329903.P8024954445839633030

`A332813(A332460(n+1))`
-/

namespace A329903.P8024954445839633030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332813 (A332460 (n + 1)).toNat

end

end A329903.P8024954445839633030

namespace A329903

/-- `A332813(A332460(n+1))` -/
def P8024954445839633030.Spec : Prop :=
  ∀ n, P8024954445839633030.a n = A329903 (n + 1)

end A329903

/-! ## A329903.P16343665326374425038

`A252754(A250245(n+1))%3`
-/

namespace A329903.P16343665326374425038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252754 (A250245 (n + 1)).toNat) 3

end

end A329903.P16343665326374425038

namespace A329903

/-- `A252754(A250245(n+1))%3` -/
def P16343665326374425038.Spec : Prop :=
  ∀ n, P16343665326374425038.a n = A329903 (n + 1)

end A329903

/-! ## A329903.P3121605073621485318

`A269388(A302025(n+1))%3`
-/

namespace A329903.P3121605073621485318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269388 (A302025 (n + 1)).toNat) 3

end

end A329903.P3121605073621485318

namespace A329903

/-- `A269388(A302025(n+1))%3` -/
def P3121605073621485318.Spec : Prop :=
  ∀ n, P3121605073621485318.a n = A329903 (n + 1)

end A329903

/-! ## A329903.P13788793236639695515

`1-A332823(A332460(2*(n+1)))`
-/

namespace A329903.P13788793236639695515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A332823 (A332460 (2 * (n + 1))).toNat

end

end A329903.P13788793236639695515

namespace A329903

/-- `1-A332823(A332460(2*(n+1)))` -/
def P13788793236639695515.Spec : Prop :=
  ∀ n, P13788793236639695515.a n = A329903 (n + 1)

end A329903

/-! ## A329903.P5662663352796201955

`A332823(A335423(2*(n+1))²)+1`
-/

namespace A329903.P5662663352796201955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332823 (A335423 (2 * (n + 1)) ^ 2).toNat + 1

end

end A329903.P5662663352796201955

namespace A329903

/-- `A332823(A335423(2*(n+1))²)+1` -/
def P5662663352796201955.Spec : Prop :=
  ∀ n, P5662663352796201955.a n = A329903 (n + 1)

end A329903

/-! ## A329903.P11923657626912410175

`A332813(A332462(n+1))`
-/

namespace A329903.P11923657626912410175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332813 (A332462 (n + 1)).toNat

end

end A329903.P11923657626912410175

namespace A329903

/-- `A332813(A332462(n+1))` -/
def P11923657626912410175.Spec : Prop :=
  ∀ n, P11923657626912410175.a n = A329903 (n + 1)

end A329903

/-!
# A329904: Position of A329899(n) in A025487.

The programs for A329904, there is no canonical definition to state claims against.
-/

/-! ## A329904.P11097682193029908892

`A085089(A329899(n+1))`
-/

namespace A329904.P11097682193029908892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (A329899 (n + 1)).toNat

end

end A329904.P11097682193029908892

/-! ## A329904.P14496356757326333361

`A101296(A329899(2*n+1-n))`
-/

namespace A329904.P14496356757326333361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (A329899 (2 * n + 1 - n)).toNat

end

end A329904.P14496356757326333361

/-! ## A329904.P6476261658995323844

`A330752(A329899(n+1))%A016825(n)`
-/

namespace A329904.P6476261658995323844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330752 (A329899 (n + 1)).toNat) (A016825 n)

end

end A329904.P6476261658995323844

/-! ## A329904.P6125442516115895411

`A330752(A329899(n+1)%A017186(n))`
-/

namespace A329904.P6125442516115895411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330752 (Int.tmod (A329899 (n + 1)) (A017186 n)).toNat

end

end A329904.P6125442516115895411

/-! ## A329904.P12305959900493056161

`A330752(2*A329899(n+1)-A329899(n+1))`
-/

namespace A329904.P12305959900493056161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330752 (2 * A329899 (n + 1) - A329899 (n + 1)).toNat

end

end A329904.P12305959900493056161

/-! ## A329904.P2538056174094377901

`A330752(A329899(n+1))+A008683(8*(n+1))`
-/

namespace A329904.P2538056174094377901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330752 (A329899 (n + 1)).toNat + A008683 (8 * (n + 1))

end

end A329904.P2538056174094377901

/-! ## A329904.P1647958539484151587

`A330752(A329899(n+1))^A014963(2*A000040(n+1))`
-/

namespace A329904.P1647958539484151587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330752 (A329899 (n + 1)).toNat : ℚ) ^ (A014963 (2 * A000040 (n + 1)).toNat : ℤ)

end

end A329904.P1647958539484151587

/-!
# A329905: a(1) = 0; a(2) = 1; and for n > 2, a(n) = A330682(n) + 2*a(A329904(n)).

The programs for A329905, there is no canonical definition to state claims against.
-/

/-! ## A329905.P12014895800921305325

`A330682(n+1)+2*a(A329904(n+1)-1)` with `a(0)=0, a(1)=1, a(2)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A329905.P12014895800921305325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A330682 (n + 1) + 2 * a (A329904 (n + 1) - 1).toNat

end

end A329905.P12014895800921305325

/-! ## A329905.P12128590940345434796

`A243071(A181815(n+1))`
-/

namespace A329905.P12128590940345434796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A181815 (n + 1)).toNat

end

end A329905.P12128590940345434796

/-! ## A329905.P789818774131566046

`A253566(A181820(n+1))`
-/

namespace A329905.P789818774131566046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253566 (A181820 (n + 1)).toNat

end

end A329905.P789818774131566046

/-! ## A329905.P12856933497197087106

`A253566(∏{e}[A025487(n+1), A000040(#)])`
-/

namespace A329905.P12856933497197087106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253566 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A329905.P12856933497197087106

/-! ## A329905.P7765860074266406348

`∑{d}[A181815(n+1), A297171(#)]`
-/

namespace A329905.P7765860074266406348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297171 d

end

end A329905.P7765860074266406348

/-! ## A329905.P9988781713444221486

`A243071(A238745(record[A046523(n+1)]))`
-/

namespace A329905.P9988781713444221486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A238745 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A329905.P9988781713444221486

/-!
# A329906: a(0) = 1; a(1) = 2; after which a(2n) = A329898(a(n)), a(2n+1) = A330683(a(n)).

The programs for A329906, there is no canonical definition to state claims against.
-/

/-! ## A329906.P3471564340431960539

`A329901(A163511(n))`
-/

namespace A329906.P3471564340431960539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329901 (A163511 n).toNat

end

end A329906.P3471564340431960539

/-! ## A329906.P16030220375563905383

`A361808(A253565(n))`
-/

namespace A329906.P16030220375563905383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361808 (A253565 n).toNat

end

end A329906.P16030220375563905383

/-! ## A329906.P8144341351237701769

`A085089(A329887(n))`
-/

namespace A329906.P8144341351237701769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (A329887 n).toNat

end

end A329906.P8144341351237701769

/-! ## A329906.P13038251659074931851

`A101296(A329887(n)+char[1])`
-/

namespace A329906.P13038251659074931851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (A329887 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A329906.P13038251659074931851

/-! ## A329906.P16962957696975908376

`A101296(lcm((-1)^n, A329887(n)))`
-/

namespace A329906.P16962957696975908376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (Int.lcm ((-1) ^ n) (A329887 n))

end

end A329906.P16962957696975908376

/-!
# A329907: Number of iterations of A329904 needed to reach 1.

The programs for A329907, there is no canonical definition to state claims against.
-/

/-! ## A329907.P17001053421170370329

`1+a(A329904(n+1)-1)` with `a(0)=0, a(1)=1`
-/

namespace A329907.P17001053421170370329
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a (A329904 (n + 1) - 1).toNat

end

end A329907.P17001053421170370329

/-! ## A329907.P5148863881525671389

`A252464(A181815(n+1))`
-/

namespace A329907.P5148863881525671389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (A181815 (n + 1)).toNat

end

end A329907.P5148863881525671389

/-! ## A329907.P4209408168405676730

`ceil(log2(A329905(n+1)+1))`
-/

namespace A329907.P4209408168405676730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A329905 (n + 1) + 1 : ℝ)⌉

end

end A329907.P4209408168405676730

/-! ## A329907.P2055657303548655497

`a(A329904(n+1)-1)+1` with `a(0)=0`
-/

namespace A329907.P2055657303548655497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A329904 (n + 1) - 1).toNat + 1

end

end A329907.P2055657303548655497

/-! ## A329907.P17771209615698694395

`A061394(n+1)+val(A307107(n+1), 2)`
-/

namespace A329907.P17771209615698694395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061394 (n + 1) + (SequenceMachineLib.valuation (A307107 (n + 1)).toNat 2 : ℤ)

end

end A329907.P17771209615698694395

/-! ## A329907.P18421874890098962373

`A252464(A181820(n+1))`
-/

namespace A329907.P18421874890098962373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (A181820 (n + 1)).toNat

end

end A329907.P18421874890098962373

/-! ## A329907.P10466415933659468411

`A252464(∏{e}[A025487(n+1), A000040(#)])`
-/

namespace A329907.P10466415933659468411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A329907.P10466415933659468411

/-! ## A329907.P11067015000471537962

`A087436(A247451(n+1))+A051282(n+1)`
-/

namespace A329907.P11067015000471537962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A247451 (n + 1)).toNat + A051282 (n + 1)

end

end A329907.P11067015000471537962

/-! ## A329907.P9009189356938621234

`A061394(n+1)+A051903(A307107(n+1))`
-/

namespace A329907.P9009189356938621234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061394 (n + 1) + A051903 (A307107 (n + 1)).toNat

end

end A329907.P9009189356938621234

/-! ## A329907.P8569016143279583174

`A029837(A329905(n+1)+1)`
-/

namespace A329907.P8569016143279583174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A329905 (n + 1) + 1).toNat

end

end A329907.P8569016143279583174

/-! ## A329907.P9974293861855279673

`A070939(A329905(n+1))%A008574(n)`
-/

namespace A329907.P9974293861855279673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070939 (A329905 (n + 1)).toNat) (A008574 n)

end

end A329907.P9974293861855279673

/-!
# A329908: Number of oriented rational links with crossing number n.

The programs for A329908, the canonical program `A329908.P7764492787053131179` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329908 has offset 2).

The definition of A329908 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A329908.P7764492787053131179

`a(n-1)+3*a(n-2)-a(n-3)-2*a(n-5)-4*a(n-6)` with `a(0)=2, a(1)=2, a(2)=5, a(3)=6, a(4)=15, a(5)=24`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A329908

/-- `a(n-1)+3*a(n-2)-a(n-3)-2*a(n-5)-4*a(n-6)` -/
def P7764492787053131179.Spec : Prop :=
  ∀ n, P7764492787053131179.a n = A329908 (n + 2)

theorem P7764492787053131179.correct : P7764492787053131179.Spec := by
  intro n
  simp only [A329908, Nat.add_sub_cancel]

end A329908

/-! ## A329908.P7555208251808531848

`A112387(n)+A001045(n+1)`
-/

namespace A329908.P7555208251808531848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112387 n + A001045 (n + 1)

end

end A329908.P7555208251808531848

namespace A329908

/-- `A112387(n)+A001045(n+1)` -/
def P7555208251808531848.Spec : Prop :=
  ∀ n, P7555208251808531848.a n = A329908 (n + 2)

end A329908

/-! ## A329908.P6154522029156465552

`A135318(2*n)+A112387(n)`
-/

namespace A329908.P6154522029156465552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (2 * n) + A112387 n

end

end A329908.P6154522029156465552

namespace A329908

/-- `A135318(2*n)+A112387(n)` -/
def P6154522029156465552.Spec : Prop :=
  ∀ n, P6154522029156465552.a n = A329908 (n + 2)

end A329908

/-! ## A329908.P7828584904402164250

`A352737(n+2)+A336398(n+2)`
-/

namespace A329908.P7828584904402164250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352737 (n + 2) + A336398 (n + 2)

end

end A329908.P7828584904402164250

namespace A329908

/-- `A352737(n+2)+A336398(n+2)` -/
def P7828584904402164250.Spec : Prop :=
  ∀ n, P7828584904402164250.a n = A329908 (n + 2)

end A329908

/-! ## A329908.P2444974348418280858

`A112387(2*n+1)+A112387(n)`
-/

namespace A329908.P2444974348418280858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112387 (2 * n + 1) + A112387 n

end

end A329908.P2444974348418280858

namespace A329908

/-- `A112387(2*n+1)+A112387(n)` -/
def P2444974348418280858.Spec : Prop :=
  ∀ n, P2444974348418280858.a n = A329908 (n + 2)

end A329908

/-! ## A329908.P10247661428931337399

`A090597(n+4)+A018240(n+3)`
-/

namespace A329908.P10247661428931337399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090597 (n + 4) + A018240 (n + 3)

end

end A329908.P10247661428931337399

namespace A329908

/-- `A090597(n+4)+A018240(n+3)` -/
def P10247661428931337399.Spec : Prop :=
  ∀ n, P10247661428931337399.a n = A329908 (n + 2)

end A329908

/-! ## A329908.P2022069819792791240

`A005418(n+1)+Δ[A090597(n+3)]`
-/

namespace A329908.P2022069819792791240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090597 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 1) + (f1 (n + 1) - f1 n)

end

end A329908.P2022069819792791240

namespace A329908

/-- `A005418(n+1)+Δ[A090597(n+3)]` -/
def P2022069819792791240.Spec : Prop :=
  ∀ n, P2022069819792791240.a n = A329908 (n + 2)

end A329908

/-! ## A329908.P5627128903399710251

`A135318(2*n)+A135318(A004442(n))`
-/

namespace A329908.P5627128903399710251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (2 * n) + A135318 (A004442 n).toNat

end

end A329908.P5627128903399710251

namespace A329908

/-- `A135318(2*n)+A135318(A004442(n))` -/
def P5627128903399710251.Spec : Prop :=
  ∀ n, P5627128903399710251.a n = A329908 (n + 2)

end A329908

/-! ## A329908.P3029866532695138704

`A000079(n)-(A001045(n)-A112387(n))`
-/

namespace A329908.P3029866532695138704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A001045 n - A112387 n)

end

end A329908.P3029866532695138704

namespace A329908

/-- `A000079(n)-(A001045(n)-A112387(n))` -/
def P3029866532695138704.Spec : Prop :=
  ∀ n, P3029866532695138704.a n = A329908 (n + 2)

end A329908

/-! ## A329908.P996874534076303454

`A005418(n+1)+A090597(n+4)-A090597(n+3)`
-/

namespace A329908.P996874534076303454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 1) + (A090597 (n + 4) - A090597 (n + 3))

end

end A329908.P996874534076303454

namespace A329908

/-- `A005418(n+1)+A090597(n+4)-A090597(n+3)` -/
def P996874534076303454.Spec : Prop :=
  ∀ n, P996874534076303454.a n = A329908 (n + 2)

end A329908

/-! ## A329908.P15782022411033839250

`A005418(n+2)+A018240(n+3)-A018240(n+4)`
-/

namespace A329908.P15782022411033839250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 2) + (A018240 (n + 3) - A018240 (n + 4))

end

end A329908.P15782022411033839250

namespace A329908

/-- `A005418(n+2)+A018240(n+3)-A018240(n+4)` -/
def P15782022411033839250.Spec : Prop :=
  ∀ n, P15782022411033839250.a n = A329908 (n + 2)

end A329908

/-! ## A329908.P3754521706964287886

`A135318(A004442(n))+A135318(A005843(n))`
-/

namespace A329908.P3754521706964287886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (A004442 n).toNat + A135318 (A005843 n).toNat

end

end A329908.P3754521706964287886

namespace A329908

/-- `A135318(A004442(n))+A135318(A005843(n))` -/
def P3754521706964287886.Spec : Prop :=
  ∀ n, P3754521706964287886.a n = A329908 (n + 2)

end A329908

/-! ## A329908.P7018013313970774334

`A112387(n)+Δ[A000975(n)]`
-/

namespace A329908.P7018013313970774334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112387 n + (f1 (n + 1) - f1 n)

end

end A329908.P7018013313970774334

namespace A329908

/-- `A112387(n)+Δ[A000975(n)]` -/
def P7018013313970774334.Spec : Prop :=
  ∀ n, P7018013313970774334.a n = A329908 (n + 2)

end A329908

/-! ## A329908.P3380183182814125422

`A005418(n+3)-A336398(n+4)`
-/

namespace A329908.P3380183182814125422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 3) - A336398 (n + 4)

end

end A329908.P3380183182814125422

namespace A329908

/-- `A005418(n+3)-A336398(n+4)` -/
def P3380183182814125422.Spec : Prop :=
  ∀ n, P3380183182814125422.a n = A329908 (n + 2)

end A329908

/-! ## A329908.P14293070979471029656

`A048573(n)+A112387(n)-A000079(n)`
-/

namespace A329908.P14293070979471029656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048573 n + (A112387 n - A000079 n)

end

end A329908.P14293070979471029656

namespace A329908

/-- `A048573(n)+A112387(n)-A000079(n)` -/
def P14293070979471029656.Spec : Prop :=
  ∀ n, P14293070979471029656.a n = A329908 (n + 2)

end A329908

/-! ## A329908.P3947643851469576521

`A084214(n+1)+A112387(n)-A062510(n)`
-/

namespace A329908.P3947643851469576521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084214 (n + 1) + (A112387 n - A062510 n)

end

end A329908.P3947643851469576521

namespace A329908

/-- `A084214(n+1)+A112387(n)-A062510(n)` -/
def P3947643851469576521.Spec : Prop :=
  ∀ n, P3947643851469576521.a n = A329908 (n + 2)

end A329908

/-!
# A329909: Number of different four-digit proper fractions with anomalous cancellation property in base n.

The programs for A329909, there is no canonical definition to state claims against.
-/

/-! ## A329909.P9856733803851980860

`A245701(C(4*n+2, n)/(2*n+1))%(n!*∑[1/n!])`
-/

namespace A329909.P9856733803851980860
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245701 (SequenceMachineLib.roundAway ((Nat.choose (4 * n + 2) n : ℚ) / (2 * n + 1 : ℚ))).toNat) (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A329909.P9856733803851980860

/-! ## A329909.P14986298196114283932

`A243178(A102881(n))`
-/

namespace A329909.P14986298196114283932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243178 (A102881 n).toNat

end

end A329909.P14986298196114283932

/-!
# A329911: The number of rooted chains of reflexive matrices of order n.

The programs for A329911, there is no canonical definition to state claims against.
-/

/-! ## A329911.P6223750141518353934

`A000629(n²-n)`
-/

namespace A329911.P6223750141518353934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000629 (n ^ 2 - n)

end

end A329911.P6223750141518353934

/-! ## A329911.P6591086294993571067

`A227044(C(n, 2))`
-/

namespace A329911.P6591086294993571067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227044 (Nat.choose n 2)

end

end A329911.P6591086294993571067

/-! ## A329911.P5082380602949499568

`(A330301(n)+1)/2`
-/

namespace A329911.P5082380602949499568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330301 n + 1 : ℚ) / 2

end

end A329911.P5082380602949499568

/-! ## A329911.P11183913904593633242

`A073146(A349919(n))`
-/

namespace A329911.P11183913904593633242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073146 (A349919 n).toNat

end

end A329911.P11183913904593633242

/-! ## A329911.P10121276657603155735

`A129062(A000124((n-1)²+n))`
-/

namespace A329911.P10121276657603155735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129062 (A000124 (((n : ℤ) - 1) ^ 2 + (n : ℤ)).toNat).toNat

end

end A329911.P10121276657603155735

/-!
# A329913: The fifth moments of the squared binomial coefficients; a(n) = Sum_{m=0..n} m^5*binomial(n, m)^2.

The programs for A329913, there is no canonical definition to state claims against.
-/

/-! ## A329913.P768269782623940403

`A265352(A000537(n)*A001353(n))`
-/

namespace A329913.P768269782623940403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265352 (A000537 n * A001353 n).toNat

end

end A329913.P768269782623940403

/-!
# A329914: Numbers k such that there exist numbers M_k which, when 1 is placed at both ends of M_k, the number M_k is multiplied by k.

The programs for A329914, there is no canonical definition to state claims against.
-/

/-! ## A329914.P6931939198114789322

`A043292(n+4)+10`
-/

namespace A329914.P6931939198114789322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043292 (n + 4) + 10

end

end A329914.P6931939198114789322

/-!
# A329918: Coefficients of orthogonal polynomials related to the Jacobsthal numbers A152046, triangle read by rows, T(n, k) for 0 <= k <= n.

The programs for A329918, the canonical program `A329918.P9556832341652762600` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329918 has offset 0).

The definition of A329918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329918.P10482226736493520199

`T(n-1,k-1)+2*T(n-2,k)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A329918.P10482226736493520199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 0] fun n a =>
  SequenceMachineLib.triUpLeft a n + 2 * SequenceMachineLib.triUp2 a n

end

end A329918.P10482226736493520199

namespace A329918

/-- `T(n-1,k-1)+2*T(n-2,k)` -/
def P10482226736493520199.Spec : Prop :=
  ∀ n, (P10482226736493520199.a n : ℤ) = A329918 n

end A329918

/-! ## A329918.P9556832341652762600

`A156663(n)*A206474(n)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A329918

/-- `A156663(n)*A206474(n)` -/
def P9556832341652762600.Spec : Prop :=
  ∀ n, P9556832341652762600.a n = A329918 n

theorem P9556832341652762600.correct : P9556832341652762600.Spec := by
  intro n
  simp only [A329918]

end A329918

/-! ## A329918.P6511139136657099334

`abs(A156663(n)*A185331(n))`
-/

namespace A329918.P6511139136657099334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156663 n * A185331 n|

end

end A329918.P6511139136657099334

namespace A329918

/-- `abs(A156663(n)*A185331(n))` -/
def P6511139136657099334.Spec : Prop :=
  ∀ n, P6511139136657099334.a n = A329918 n

end A329918

/-! ## A329918.P3239330317010050426

`A077966(A025581(n))*A185331(n)`
-/

namespace A329918.P3239330317010050426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077966 (A025581 n).toNat * A185331 n

end

end A329918.P3239330317010050426

namespace A329918

/-- `A077966(A025581(n))*A185331(n)` -/
def P3239330317010050426.Spec : Prop :=
  ∀ n, P3239330317010050426.a n = A329918 n

end A329918

/-! ## A329918.P11721499179744785624

`gcd(A000038(n), A185331(n))*A156663(n)`
-/

namespace A329918.P11721499179744785624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000038 n) (A185331 n) : ℤ) * A156663 n

end

end A329918.P11721499179744785624

namespace A329918

/-- `gcd(A000038(n), A185331(n))*A156663(n)` -/
def P11721499179744785624.Spec : Prop :=
  ∀ n, P11721499179744785624.a n = A329918 n

end A329918

/-! ## A329918.P10624394221279432920

`lcm(A156663(n)*A185331(n), A209615(n+1))`
-/

namespace A329918.P10624394221279432920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A156663 n * A185331 n) (A209615 (n + 1))

end

end A329918.P10624394221279432920

namespace A329918

/-- `lcm(A156663(n)*A185331(n), A209615(n+1))` -/
def P10624394221279432920.Spec : Prop :=
  ∀ n, (P10624394221279432920.a n : ℤ) = A329918 n

end A329918

/-! ## A329918.P17086782051544754961

`∑{d}[A156663(n)*A185331(n), A000010(#)]`
-/

namespace A329918.P17086782051544754961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156663 n * A185331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A329918.P17086782051544754961

namespace A329918

/-- `∑{d}[A156663(n)*A185331(n), A000010(#)]` -/
def P17086782051544754961.Spec : Prop :=
  ∀ n, P17086782051544754961.a n = A329918 n

end A329918

/-! ## A329918.P914454295353871700

`-(A156663(n)*A196199(A185331(n)²))`
-/

namespace A329918.P914454295353871700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A156663 n * A196199 (A185331 n ^ 2).toNat)

end

end A329918.P914454295353871700

namespace A329918

/-- `-(A156663(n)*A196199(A185331(n)²))` -/
def P914454295353871700.Spec : Prop :=
  ∀ n, P914454295353871700.a n = A329918 n

end A329918

/-!
# A329919: a(n) is the total number of squares after n iterations of the "Square Multiscale" substitution.

The programs for A329919, there is no canonical definition to state claims against.
-/

/-! ## A329919.P7624919716332491748

`∑[A232503(A010014(n))]`
-/

namespace A329919.P7624919716332491748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232503 (A010014 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329919.P7624919716332491748

/-! ## A329919.P14525649884517536860

`∑[A048785(A026671(n))²]`
-/

namespace A329919.P14525649884517536860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (A026671 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329919.P14525649884517536860

/-! ## A329919.P13105598561112054915

`∑[A007426(A099393(n))²]`
-/

namespace A329919.P13105598561112054915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007426 (A099393 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329919.P13105598561112054915

/-!
# A329921: Integral solutions to Mordell's equation y^2 = x^3 - n with minimal absolute value of x (a(n) gives x-values).

The programs for A329921, there is no canonical definition to state claims against.
-/

/-! ## A329921.P17387367005371425802

`A014289(A000079(n+1))+A014289(n+1)`
-/

namespace A329921.P17387367005371425802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014289 (A000079 (n + 1)).toNat + A014289 (n + 1)

end

end A329921.P17387367005371425802

/-! ## A329921.P16918345170171293459

`A046660(A177815(3*n+2))-A380958(3*(n+1))`
-/

namespace A329921.P16918345170171293459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A177815 (3 * n + 2)).toNat - A380958 (3 * (n + 1))

end

end A329921.P16918345170171293459

/-!
# A329923: Beatty sequence for (2+sqrt(34))/5.

The programs for A329923, there is no canonical definition to state claims against.
-/

/-! ## A329923.P13401446627036320840

`comp[A329924(n+1)-1]+1`
-/

namespace A329923.P13401446627036320840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329924 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A329923.P13401446627036320840

/-! ## A329923.P15531399135844732877

`floor(∑[atan((n+3)^(n+2))])`
-/

namespace A329923.P15531399135844732877
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan ((n + 3) ^ (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A329923.P15531399135844732877

/-! ## A329923.P7392936870950352949

`A247779(n+1)-A373979(A026268(3*n+1))`
-/

namespace A329923.P7392936870950352949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247779 (n + 1) - A373979 (A026268 (3 * n + 1)).toNat

end

end A329923.P7392936870950352949

/-! ## A329923.P8850545749938274031

`A247779(n+1)-A185012(A373074(2*n+3))`
-/

namespace A329923.P8850545749938274031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247779 (n + 1) - A185012 (A373074 (2 * n + 3)).toNat

end

end A329923.P8850545749938274031

/-! ## A329923.P17666336680304070251

`A296188(A001826(n+3))+A105566(2*n+1)`
-/

namespace A329923.P17666336680304070251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296188 (A001826 (n + 3)).toNat + A105566 (2 * n + 1)

end

end A329923.P17666336680304070251

/-!
# A329924: Beatty sequence for (8+sqrt(34))/5.

The programs for A329924, there is no canonical definition to state claims against.
-/

/-! ## A329924.P313313542752056387

`eq[char[A329923(n+1)], A000007(n)]`
-/

namespace A329924.P313313542752056387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329923 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A329924.P313313542752056387

/-! ## A329924.P3090053528510089991

`A182008(A002620(3*(n+1)))+n`
-/

namespace A329924.P3090053528510089991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182008 (A002620 (3 * (n + 1))).toNat + (n : ℤ)

end

end A329924.P3090053528510089991

/-! ## A329924.P14023351677014506963

`A002024((A137803(2*n+1)+1)*(n+1))`
-/

namespace A329924.P14023351677014506963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 ((A137803 (2 * n + 1) + 1) * (n + 1 : ℤ)).toNat

end

end A329924.P14023351677014506963

/-! ## A329924.P17999140833079300387

`A003056(∑[9*n+6]-A000969(n))`
-/

namespace A329924.P17999140833079300387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000969 n).toNat

end

end A329924.P17999140833079300387

/-! ## A329924.P18088886737934545647

`or(A187341(n+1), A353480(A119684(n+1)))`
-/

namespace A329924.P18088886737934545647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A187341 (n + 1)) (A353480 (A119684 (n + 1)).toNat)

end

end A329924.P18088886737934545647

/-!
# A329925: Beatty sequence for (1+sqrt(41))/5.

The programs for A329925, there is no canonical definition to state claims against.
-/

/-! ## A329925.P2735899782764038503

`comp[A329926(n+1)-1]+1`
-/

namespace A329925.P2735899782764038503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329926 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A329925.P2735899782764038503

/-! ## A329925.P16578414532881977050

`floor((n+1)*atan(11))%A005563(A058187(n))`
-/

namespace A329925.P16578414532881977050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n + 1 : ℝ) * Real.arctan (11 : ℝ)⌋ (A005563 (A058187 n).toNat)

end

end A329925.P16578414532881977050

/-! ## A329925.P5609198574920283065

`ceil((n+1)*atan(11)-A021913(A139981(n+1)))`
-/

namespace A329925.P5609198574920283065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.arctan (11 : ℝ) - (A021913 (A139981 (n + 1)).toNat : ℝ)⌉

end

end A329925.P5609198574920283065

/-! ## A329925.P1950097433130971378

`floor((n+1)*atan(11))/A033999(A001105(n))`
-/

namespace A329925.P1950097433130971378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n + 1 : ℝ) * Real.arctan (11 : ℝ)⌋ : ℚ) / (A033999 (A001105 n).toNat : ℚ)

end

end A329925.P1950097433130971378

/-! ## A329925.P2159387583922925592

`A002024(A004525(floor((n+1)*atan(11))²))`
-/

namespace A329925.P2159387583922925592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A004525 (⌊(n + 1 : ℝ) * Real.arctan (11 : ℝ)⌋ ^ 2).toNat).toNat

end

end A329925.P2159387583922925592

/-! ## A329925.P2498535948135372946

`A000038(A067728(n+1))+floor((n+1)*atan(11))`
-/

namespace A329925.P2498535948135372946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A067728 (n + 1)).toNat + ⌊(n + 1 : ℝ) * Real.arctan (11 : ℝ)⌋

end

end A329925.P2498535948135372946

/-! ## A329925.P9416499442344176069

`A000196(A288624((n+1)²))`
-/

namespace A329925.P9416499442344176069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A288624 ((n + 1) ^ 2)).toNat

end

end A329925.P9416499442344176069

/-! ## A329925.P9262966229545844298

`A329991(n+1)-(n+1)`
-/

namespace A329925.P9262966229545844298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329991 (n + 1) - (n + 1 : ℤ)

end

end A329925.P9262966229545844298

/-! ## A329925.P17341015942153753987

`A057355(A329991(n+1))`
-/

namespace A329925.P17341015942153753987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 (A329991 (n + 1)).toNat

end

end A329925.P17341015942153753987

/-!
# A329926: Beatty sequence for (9+sqrt(41))/5.

The programs for A329926, there is no canonical definition to state claims against.
-/

/-! ## A329926.P6333374388344547594

`∑[A043290(A069534(n+1))+2]`
-/

namespace A329926.P6333374388344547594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043290 (A069534 (n + 1)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329926.P6333374388344547594

/-! ## A329926.P5037336319350694793

`A380408(2*n)+3`
-/

namespace A329926.P5037336319350694793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380408 (2 * n) + 3

end

end A329926.P5037336319350694793

/-! ## A329926.P17364735231811989167

`floor(∑[sqrt(9-(n-A231348(2*n+1))%2)])`
-/

namespace A329926.P17364735231811989167
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (9 - Int.tmod ((n : ℤ) - A231348 (2 * n + 1)) 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A329926.P17364735231811989167

/-! ## A329926.P285945935948116753

`A289189(A069132(n+1))`
-/

namespace A329926.P285945935948116753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289189 (A069132 (n + 1)).toNat

end

end A329926.P285945935948116753

/-! ## A329926.P6709837724770432583

`A003059(A002522(3*n+2)+A000217(n))`
-/

namespace A329926.P6709837724770432583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A002522 (3 * n + 2) + A000217 n).toNat

end

end A329926.P6709837724770432583

/-!
# A329927: a(n) is the number of squares with largest size after n iterations of the "Square Multiscale" substitution.

The programs for A329927, there is no canonical definition to state claims against.
-/

/-! ## A329927.P13705546448559021356

`(A329919(n+1)-A329919(n))/16`
-/

namespace A329927.P13705546448559021356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329919 (n + 1) - A329919 n : ℚ) / 16

end

end A329927.P13705546448559021356

/-! ## A329927.P3115355385431520011

`Δ[A329919(n)/16]`
-/

namespace A329927.P3115355385431520011
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329919 n : ℚ) / 16

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A329927.P3115355385431520011

/-! ## A329927.P4029574528926059531

`A168068(A052905(n^A073189(n)))`
-/

namespace A329927.P4029574528926059531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168068 (A052905 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A073189 n : ℤ))).toNat).toNat

end

end A329927.P4029574528926059531

/-! ## A329927.P5340967501955225021

`gcd(A168068(A052905(n)), A341279(n))`
-/

namespace A329927.P5340967501955225021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A168068 (A052905 n).toNat) (A341279 n)

end

end A329927.P5340967501955225021

/-! ## A329927.P9926793163764726239

`A168068(A052905(C(n, A073189(n))))`
-/

namespace A329927.P9926793163764726239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168068 (A052905 (Nat.choose n (A073189 n).toNat)).toNat

end

end A329927.P9926793163764726239

/-!
# A329928: a(n) = (Pi/2)*(2*n+1)!*binomial(2*n+1, (2*n+1)/2).

The programs for A329928, the canonical program `A329928.P6571010498703170400` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329928 has offset 0).

The definition of A329928 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A329928.P6571010498703170400

`a(n-1)*(4*n)²` with `a(0)=2`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A329928

/-- `a(n-1)*(4*n)²` -/
def P6571010498703170400.Spec : Prop :=
  ∀ n, (P6571010498703170400.a n : ℤ) = A329928 n

theorem P6571010498703170400.correct : P6571010498703170400.Spec := by
  intro n
  simp only [A329928]

end A329928

/-! ## A329928.P2286948303689205006

`2*(4^n*n!)²`
-/

namespace A329928.P2286948303689205006
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (4 ^ n * Nat.factorial n) ^ 2

end

end A329928.P2286948303689205006

namespace A329928

/-- `2*(4^n*n!)²` -/
def P2286948303689205006.Spec : Prop :=
  ∀ n, (P2286948303689205006.a n : ℤ) = A329928 n

end A329928

/-! ## A329928.P9976839355768085187

`∏[abs(1-(4*n)²)+1]`
-/

namespace A329928.P9976839355768085187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((4 * n) ^ 2 : ℤ)| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A329928.P9976839355768085187

namespace A329928

/-- `∏[abs(1-(4*n)²)+1]` -/
def P9976839355768085187.Spec : Prop :=
  ∀ n, P9976839355768085187.a n = A329928 n

end A329928

/-! ## A329928.P8460928407401271249

`16*n*n*a(n-1)` with `a(0)=2`
-/

namespace A329928.P8460928407401271249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  16 * (n * (n * a (n - 1)))

end

end A329928.P8460928407401271249

namespace A329928

/-- `16*n*n*a(n-1)` -/
def P8460928407401271249.Spec : Prop :=
  ∀ n, (P8460928407401271249.a n : ℤ) = A329928 n

end A329928

/-! ## A329928.P14233039080594191847

`a(n-1)/((1/2)²/n)²` with `a(0)=2`
-/

namespace A329928.P14233039080594191847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) / (((1 : ℚ) / 2) ^ 2 / (n : ℚ)) ^ 2

end

end A329928.P14233039080594191847

namespace A329928

/-- `a(n-1)/((1/2)²/n)²` -/
def P14233039080594191847.Spec : Prop :=
  ∀ n, P14233039080594191847.a n = (A329928 n : ℚ)

end A329928

/-!
# A329929: a(n) = lcm(tau(n), sigma(n), pod(n)) / gcd(tau(n), sigma(n), pod(n)) where tau(k) is the number of divisors of k (A000005), sigma(k) is the sum of divisors of k (A000203) and pod(k) is the product of divisors of k (A007955).

The programs for A329929, the canonical program `A329929.P12316207208201997715` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329929 has offset 1).

The definition of A329929 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336723, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A329929.P12316207208201997715

`A336723(n+1)/A336722(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A329929

/-- `A336723(n+1)/A336722(n+1)` -/
def P12316207208201997715.Spec : Prop :=
  ∀ n, P12316207208201997715.a n = (A329929 (n + 1) : ℚ)

end A329929

/-! ## A329929.P7009623419271155852

`lcm(∏{d}[n+1, #], A009278(n+1))/A336722(n+1)`
-/

namespace A329929.P7009623419271155852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A009278 (n + 1)) : ℚ) / (A336722 (n + 1) : ℚ)

end

end A329929.P7009623419271155852

namespace A329929

/-- `lcm(∏{d}[n+1, #], A009278(n+1))/A336722(n+1)` -/
def P7009623419271155852.Spec : Prop :=
  ∀ n, P7009623419271155852.a n = (A329929 (n + 1) : ℚ)

end A329929

/-! ## A329929.P3042215046664443535

`A334985(n+1)/A336722(n+1)*A337323(n+1)`
-/

namespace A329929.P3042215046664443535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334985 (n + 1) : ℚ) / (A336722 (n + 1) : ℚ) * (A337323 (n + 1) : ℚ)

end

end A329929.P3042215046664443535

namespace A329929

/-- `A334985(n+1)/A336722(n+1)*A337323(n+1)` -/
def P3042215046664443535.Spec : Prop :=
  ∀ n, P3042215046664443535.a n = (A329929 (n + 1) : ℚ)

end A329929

/-! ## A329929.P476098896985172409

`lcm(A007955(n+1), A009278(n+1))/A336722(n+1)`
-/

namespace A329929.P476098896985172409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A007955 (n + 1)) (A009278 (n + 1)) : ℚ) / (A336722 (n + 1) : ℚ)

end

end A329929.P476098896985172409

namespace A329929

/-- `lcm(A007955(n+1), A009278(n+1))/A336722(n+1)` -/
def P476098896985172409.Spec : Prop :=
  ∀ n, P476098896985172409.a n = (A329929 (n + 1) : ℚ)

end A329929

/-! ## A329929.P6985112569878906197

`lcm(A000203(n+1), A324528(n+1))/A336722(n+1)`
-/

namespace A329929.P6985112569878906197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000203 (n + 1)) (A324528 (n + 1)) : ℚ) / (A336722 (n + 1) : ℚ)

end

end A329929.P6985112569878906197

namespace A329929

/-- `lcm(A000203(n+1), A324528(n+1))/A336722(n+1)` -/
def P6985112569878906197.Spec : Prop :=
  ∀ n, P6985112569878906197.a n = (A329929 (n + 1) : ℚ)

end A329929

/-!
# A329930: a(n) = n!^2*(Sum_{k=1..n} 1/k).

The programs for A329930, the canonical program `A329930.P6561912596512615762` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329930 has offset 0).

The definition of A329930 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A329930.P6561912596512615762

`A000142(n)*A000254(n)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A329930

/-- `A000142(n)*A000254(n)` -/
def P6561912596512615762.Spec : Prop :=
  ∀ n, P6561912596512615762.a n = A329930 n

theorem P6561912596512615762.correct : P6561912596512615762.Spec := by
  intro n
  simp only [A329930]

end A329930

/-! ## A329930.P10742631929311524227

`abs(n!*A081048(n))`
-/

namespace A329930.P10742631929311524227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.factorial n : ℤ) * A081048 n|

end

end A329930.P10742631929311524227

namespace A329930

/-- `abs(n!*A081048(n))` -/
def P10742631929311524227.Spec : Prop :=
  ∀ n, P10742631929311524227.a n = A329930 n

end A329930

/-! ## A329930.P18379367538477642500

`(A000774(n)-n!)*n!`
-/

namespace A329930.P18379367538477642500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000774 n - (Nat.factorial n : ℤ)) * (Nat.factorial n : ℤ)

end

end A329930.P18379367538477642500

namespace A329930

/-- `(A000774(n)-n!)*n!` -/
def P18379367538477642500.Spec : Prop :=
  ∀ n, P18379367538477642500.a n = A329930 n

theorem P18379367538477642500.correct : P18379367538477642500.Spec := by
  intro n
  simp only [A329930, Nat.add_sub_cancel, A329930.P18379367538477642500.a, A329930.P6561912596512615762.a, A000142, A000142.P3272619076580183195.a, A000254, A000254.P9428527937712228311.a, A000774, A000774.P2466986371641539534.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A329930

/-! ## A329930.P8833766833978478565

`(n!-A081047(n))*n!`
-/

namespace A329930.P8833766833978478565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℤ) - A081047 n) * (Nat.factorial n : ℤ)

end

end A329930.P8833766833978478565

namespace A329930

/-- `(n!-A081047(n))*n!` -/
def P8833766833978478565.Spec : Prop :=
  ∀ n, P8833766833978478565.a n = A329930 n

end A329930

/-! ## A329930.P12233402230573620830

`A052517(n+1)/2*n!`
-/

namespace A329930.P12233402230573620830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052517 (n + 1) : ℚ) / 2 * (Nat.factorial n : ℚ)

end

end A329930.P12233402230573620830

namespace A329930

/-- `A052517(n+1)/2*n!` -/
def P12233402230573620830.Spec : Prop :=
  ∀ n, P12233402230573620830.a n = (A329930 n : ℚ)

end A329930

/-!
# A329935: Numbers k such that k and k+1 are both hoax numbers (A019506).

The programs for A329935, the canonical program `A329935.P4917152360086528643` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329935 has offset 1).

The definition of A329935 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 308 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329935.P4917152360086528643

`∩[A019506(n+1)-1, A019506(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A329935

/-- `∩[A019506(n+1)-1, A019506(n+1)]` -/
def P4917152360086528643.Spec : Prop :=
  ∀ n, (P4917152360086528643.a n : ℤ) = A329935 (n + 1)

theorem P4917152360086528643.correct : P4917152360086528643.Spec := by
  intro n
  simp only [A329935, Nat.add_sub_cancel]

end A329935

/-! ## A329935.P17153087545450610805

`∩[A019506(n+1), A023443(A019506(n+1))]`
-/

namespace A329935.P17153087545450610805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A019506 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329935.P17153087545450610805

namespace A329935

/-- `∩[A019506(n+1), A023443(A019506(n+1))]` -/
def P17153087545450610805.Spec : Prop :=
  ∀ n, (P17153087545450610805.a n : ℤ) = A329935 (n + 1)

end A329935

/-!
# A329938: Beatty sequence for sinh x, where csch x + sech x = 1 .

The programs for A329938, there is no canonical definition to state claims against.
-/

/-! ## A329938.P14106325187208935796

`floor(32*(n+1)/17)`
-/

namespace A329938.P14106325187208935796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊32 * ((n + 1 : ℚ) / 17)⌋

end

end A329938.P14106325187208935796

/-! ## A329938.P214389424814866164

`ceil(lcm(16, 2*n+1)/17)`
-/

namespace A329938.P214389424814866164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm 16 (2 * n + 1) : ℚ) / 17⌉

end

end A329938.P214389424814866164

/-! ## A329938.P14685220512003501844

`record[and(17, n+1)%3+n]`
-/

namespace A329938.P14685220512003501844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 17 (n + 1) % 3 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329938.P14685220512003501844

/-! ## A329938.P17957678779816697058

`comp[comp[∑[n%2+8]]+n]`
-/

namespace A329938.P17957678779816697058
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A329938.P17957678779816697058

/-! ## A329938.P14604148505207837154

`comp[comp[∑[and(1, n)+8]]+n]`
-/

namespace A329938.P14604148505207837154
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A329938.P14604148505207837154

/-! ## A329938.P13410145133817773984

`ceil(8*(4*n+2)*tan(acot(17)))`
-/

namespace A329938.P13410145133817773984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(8 * (4 * n + 2) : ℝ) * Real.tan (SequenceMachineLib.acot (17 : ℝ))⌉

end

end A329938.P13410145133817773984

/-! ## A329938.P3079446619704379734

`ceil(Δ[floor((2/acot(2*n))²)]/17)`
-/

namespace A329938.P3079446619704379734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 / SequenceMachineLib.acot (2 * n : ℝ)) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n : ℚ) / 17⌉

end

end A329938.P3079446619704379734

/-! ## A329938.P7008881018079782979

`floor((n+1)/7^sin(10))-(n+1)`
-/

namespace A329938.P7008881018079782979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (7 : ℝ) ^ (Real.sin (10 : ℝ))⌋ - (n + 1 : ℤ)

end

end A329938.P7008881018079782979

/-! ## A329938.P7081402637723587925

`∑[2-char[A121283(n)]]`
-/

namespace A329938.P7081402637723587925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121283 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329938.P7081402637723587925

/-! ## A329938.P13319595120139672234

`∑[2-A014026(2*n+1)²]`
-/

namespace A329938.P13319595120139672234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A014026 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329938.P13319595120139672234

/-!
# A329939: Beatty sequence for cosh x, where csch x + sech x = 1 .

The programs for A329939, there is no canonical definition to state claims against.
-/

/-! ## A329939.P11471949468287448509

`comp[floor(32*n/17)]`
-/

namespace A329939.P11471949468287448509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊32 * ((n : ℚ) / 17)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A329939.P11471949468287448509

/-! ## A329939.P9852306476757343767

`floor((n+1)*(2-sin(25)))`
-/

namespace A329939.P9852306476757343767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * (2 - Real.sin (25 : ℝ))⌋

end

end A329939.P9852306476757343767

/-! ## A329939.P9795001973149979514

`floor((n+1)*22^acot(4))`
-/

namespace A329939.P9795001973149979514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * (22 : ℝ) ^ (SequenceMachineLib.acot (4 : ℝ))⌋

end

end A329939.P9795001973149979514

/-! ## A329939.P6163015149528740452

`floor((n+1)*acot(acot(9))²)`
-/

namespace A329939.P6163015149528740452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * SequenceMachineLib.acot (SequenceMachineLib.acot (9 : ℝ)) ^ 2⌋

end

end A329939.P6163015149528740452

/-! ## A329939.P10003227170279055461

`comp[∑[and(n, -7)]]+n-3`
-/

namespace A329939.P10003227170279055461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + ((n : ℤ) - 3)

end

end A329939.P10003227170279055461

/-! ## A329939.P10795215150143500552

`∑[char[∑[n%2+7]]+2]`
-/

namespace A329939.P10795215150143500552
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329939.P10795215150143500552

/-! ## A329939.P2780125161587594272

`∑[char[∑[9-gcd(2, n)]]+2]`
-/

namespace A329939.P2780125161587594272
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - (Nat.gcd 2 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329939.P2780125161587594272

/-! ## A329939.P16217448987680638953

`∑[char[∑[and(1, n)+7]]+2]`
-/

namespace A329939.P16217448987680638953
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329939.P16217448987680638953

/-! ## A329939.P5599956567620152919

`round(log2(A010921(n)))`
-/

namespace A329939.P5599956567620152919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A010921 n : ℝ))

end

end A329939.P5599956567620152919

/-! ## A329939.P16812577778120530458

`round(log2(A275634(n)))`
-/

namespace A329939.P16812577778120530458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A275634 n : ℝ))

end

end A329939.P16812577778120530458

/-!
# A329940: Square array read by antidiagonals upwards: T(n,k) is the number of right unique relations between set A with n elements and set B with k elements.

The programs for A329940, the canonical program `A329940.P15981345528787013352` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329940 has offset 1).

The definition of A329940 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A329940.P15981345528787013352

`(col(n)+2)^(row(n)-col(n)+1)-1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A329940

/-- `(col(n)+2)^(row(n)-col(n)+1)-1` -/
def P15981345528787013352.Spec : Prop :=
  ∀ n, P15981345528787013352.a n = (A329940 (n + 1) : ℚ)

end A329940

/-! ## A329940.P16372318644644348022

`(col(n)+2)*T(n-1,k)+col(n)+1` with `a(0)=1`
-/

namespace A329940.P16372318644644348022
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triCol n + 2) * SequenceMachineLib.triUp a n + (SequenceMachineLib.triCol n + 1)

end

end A329940.P16372318644644348022

namespace A329940

/-- `(col(n)+2)*T(n-1,k)+col(n)+1` -/
def P16372318644644348022.Spec : Prop :=
  ∀ n, (P16372318644644348022.a n : ℤ) = A329940 (n + 1)

end A329940

/-! ## A329940.P5982685592531172530

`A051129(comp[∑[n]]+1)-1`
-/

namespace A329940.P5982685592531172530
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051129 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) - 1

end

end A329940.P5982685592531172530

namespace A329940

/-- `A051129(comp[∑[n]]+1)-1` -/
def P5982685592531172530.Spec : Prop :=
  ∀ n, P5982685592531172530.a n = A329940 (n + 1)

end A329940

/-! ## A329940.P3089114899713137271

`abs(1-A051129(comp[C(n, 2)]+1))`
-/

namespace A329940.P3089114899713137271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A051129 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)|

end

end A329940.P3089114899713137271

namespace A329940

/-- `abs(1-A051129(comp[C(n, 2)]+1))` -/
def P3089114899713137271.Spec : Prop :=
  ∀ n, P3089114899713137271.a n = A329940 (n + 1)

end A329940

/-! ## A329940.P7649844004936504627

`A009999((n-comp[∑[n]])²-n)-1`
-/

namespace A329940.P7649844004936504627
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009999 (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 - (n : ℤ)).toNat - 1

end

end A329940.P7649844004936504627

namespace A329940

/-- `A009999((n-comp[∑[n]])²-n)-1` -/
def P7649844004936504627.Spec : Prop :=
  ∀ n, P7649844004936504627.a n = A329940 (n + 1)

end A329940

/-! ## A329940.P17465282213527367674

`A341392(A043569(n+1))-1`
-/

namespace A329940.P17465282213527367674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341392 (A043569 (n + 1)).toNat - 1

end

end A329940.P17465282213527367674

namespace A329940

/-- `A341392(A043569(n+1))-1` -/
def P17465282213527367674.Spec : Prop :=
  ∀ n, P17465282213527367674.a n = A329940 (n + 1)

end A329940

/-! ## A329940.P6271965373477789046

`A243499(2*A130328(n))-1`
-/

namespace A329940.P6271965373477789046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243499 (2 * A130328 n).toNat - 1

end

end A329940.P6271965373477789046

namespace A329940

/-- `A243499(2*A130328(n))-1` -/
def P6271965373477789046.Spec : Prop :=
  ∀ n, P6271965373477789046.a n = A329940 (n + 1)

end A329940

/-! ## A329940.P14577084625110775470

`A009998(eq[0, A103451(n)])-1`
-/

namespace A329940.P14577084625110775470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A329940.P14577084625110775470

namespace A329940

/-- `A009998(eq[0, A103451(n)])-1` -/
def P14577084625110775470.Spec : Prop :=
  ∀ n, P14577084625110775470.a n = A329940 (n + 1)

end A329940

/-! ## A329940.P11772635390899262505

`A009998(eq[0, A158821(n)])-1`
-/

namespace A329940.P11772635390899262505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A329940.P11772635390899262505

namespace A329940

/-- `A009998(eq[0, A158821(n)])-1` -/
def P11772635390899262505.Spec : Prop :=
  ∀ n, P11772635390899262505.a n = A329940 (n + 1)

end A329940

/-!
# A329943: Square array read by antidiagonals: T(n,k) is the number of right total relations between set A with n elements and set B with k elements.

The programs for A329943, the canonical program `A329943.P12609807752791925481` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329943 has offset 1).

The definition of A329943 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A329943.P12609807752791925481

`(2^(row(n)-col(n)+1)-1)^(col(n)+1)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A329943

/-- `(2^(row(n)-col(n)+1)-1)^(col(n)+1)` -/
def P12609807752791925481.Spec : Prop :=
  ∀ n, P12609807752791925481.a n = (A329943 (n + 1) : ℚ)

end A329943

/-! ## A329943.P10257897947199623705

`A245789(∑[char[∑[n]]]²-n)`
-/

namespace A329943.P10257897947199623705
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245789 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A329943.P10257897947199623705

namespace A329943

/-- `A245789(∑[char[∑[n]]]²-n)` -/
def P10257897947199623705.Spec : Prop :=
  ∀ n, P10257897947199623705.a n = A329943 (n + 1)

end A329943

/-! ## A329943.P3151932653109276087

`A130330(n)^(1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A329943.P3151932653109276087
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130330 n : ℚ) ^ (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ) : ℤ)

end

end A329943.P3151932653109276087

namespace A329943

/-- `A130330(n)^(1-C(∑[char[∑[n]]], 2)+n)` -/
def P3151932653109276087.Spec : Prop :=
  ∀ n, P3151932653109276087.a n = (A329943 (n + 1) : ℚ)

end A329943

/-! ## A329943.P16188713721463027716

`(2^(C(comp[∑[n]]-n, 2)-n)-1)^A128227(n)`
-/

namespace A329943.P16188713721463027716
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ) - 1) ^ (A128227 n : ℤ)

end

end A329943.P16188713721463027716

namespace A329943

/-- `(2^(C(comp[∑[n]]-n, 2)-n)-1)^A128227(n)` -/
def P16188713721463027716.Spec : Prop :=
  ∀ n, P16188713721463027716.a n = (A329943 (n + 1) : ℚ)

end A329943

/-! ## A329943.P13846143002544599658

`(2^(C(comp[∑[n]]-n, 2)-n)-1)^A002260(n+1)`
-/

namespace A329943.P13846143002544599658
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ) - 1) ^ (A002260 (n + 1) : ℤ)

end

end A329943.P13846143002544599658

namespace A329943

/-- `(2^(C(comp[∑[n]]-n, 2)-n)-1)^A002260(n+1)` -/
def P13846143002544599658.Spec : Prop :=
  ∀ n, P13846143002544599658.a n = (A329943 (n + 1) : ℚ)

end A329943

/-!
# A329944: Number of permutations of [n] whose cycle lengths avoid primes.

The programs for A329944, there is no canonical definition to state claims against.
-/

/-! ## A329944.P6121483904431975605

`A008611(Δ[A280628(n)])`
-/

namespace A329944.P6121483904431975605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280628 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (f1 (n + 1) - f1 n).toNat

end

end A329944.P6121483904431975605

/-! ## A329944.P14316105785022119093

`A008620(Δ[A280628(n)])`
-/

namespace A329944.P14316105785022119093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280628 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (f1 (n + 1) - f1 n).toNat

end

end A329944.P14316105785022119093

/-! ## A329944.P11025807106677508987

`A051275(Δ[A280628(n)])`
-/

namespace A329944.P11025807106677508987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280628 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051275 (f1 (n + 1) - f1 n).toNat

end

end A329944.P11025807106677508987

/-! ## A329944.P5506036647400485879

`A051495(Δ[A280628(n)])`
-/

namespace A329944.P5506036647400485879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280628 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051495 (f1 (n + 1) - f1 n).toNat

end

end A329944.P5506036647400485879

/-!
# A329945: Number of permutations of [n] whose cycle lengths avoid squares.

The programs for A329945, there is no canonical definition to state claims against.
-/

/-! ## A329945.P4770382512252013615

`A308396(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A329945.P4770382512252013615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A308396 n + (n : ℤ) * a (n - 1)

end

end A329945.P4770382512252013615

/-! ## A329945.P12966636175492997061

`A004526(A352003(n)+A318913(n))`
-/

namespace A329945.P12966636175492997061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A352003 n + A318913 n).toNat

end

end A329945.P12966636175492997061

/-! ## A329945.P486471843822842691

`A004526(A352003(n)+A327940(n))`
-/

namespace A329945.P486471843822842691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A352003 n + A327940 n).toNat

end

end A329945.P486471843822842691

/-! ## A329945.P13392144974481034173

`A110654(A352003(n)+A318913(n))`
-/

namespace A329945.P13392144974481034173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A352003 n + A318913 n).toNat

end

end A329945.P13392144974481034173

/-!
# A329946: Primes that are not of the form u(u+1)/2 - v(v-3)/2 for any u >= v >= 1.

The programs for A329946, there is no canonical definition to state claims against.
-/

/-! ## A329946.P16871505137926217219

`p?[A121262(A000330(n))+A016789(n)]`
-/

namespace A329946.P16871505137926217219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A000330 n).toNat + A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A329946.P16871505137926217219

/-! ## A329946.P9050588055920079149

`p?[ceil(xor(1, n)/2)*A323761(n+1)]`
-/

namespace A329946.P9050588055920079149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 n : ℚ) / 2⌉ * A323761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A329946.P9050588055920079149

/-! ## A329946.P5023058510318020902

`p?[A028242(n)*A323761(n+1)]`
-/

namespace A329946.P5023058510318020902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n * A323761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A329946.P5023058510318020902

/-! ## A329946.P8595638387605454016

`p?[A300068(n)*A323761(n+1)]`
-/

namespace A329946.P8595638387605454016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300068 n * A323761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A329946.P8595638387605454016

/-!
# A329947: Integers k such that the radical of the cumulative product of k^k/k! equals its predecessor.

The programs for A329947, there is no canonical definition to state claims against.
-/

/-! ## A329947.P4655339259365762529

`∩[comp[A027855(n+1)], A056077(n+1)]`
-/

namespace A329947.P4655339259365762529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027855 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A329947.P4655339259365762529

/-! ## A329947.P14710938025129065295

`eq[A256267(n+1), A256267(n+2)]+1`
-/

namespace A329947.P14710938025129065295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256267 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A329947.P14710938025129065295

/-! ## A329947.P3812039681614806073

`eq[A056606(n+1), A056606(n)]+1`
-/

namespace A329947.P3812039681614806073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056606 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A329947.P3812039681614806073

/-! ## A329947.P8681427414762499385

`eq[A256267(A322250(n+1)), A292579(n+1)]`
-/

namespace A329947.P8681427414762499385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256267 (A322250 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329947.P8681427414762499385

/-!
# A329949: Lexicographically earliest sequence of positive numbers such that following proposition is true: a(n) is the number of occurrences of a(n+1) in the sequence so far, up to and including a(n+1).

The programs for A329949, the canonical program `A329949.P17854999939394179864` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329949 has offset 1).

The definition of A329949 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329949.P17654859738173048184

`A226005(n+1)+1`
-/

namespace A329949.P17654859738173048184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226005 (n + 1) + 1

end

end A329949.P17654859738173048184

namespace A329949

/-- `A226005(n+1)+1` -/
def P17654859738173048184.Spec : Prop :=
  ∀ n, P17654859738173048184.a n = A329949 (n + 1)

end A329949

/-! ## A329949.P15885060675940509079

`A097285(∑[char[comp[n²-2]]])`
-/

namespace A329949.P15885060675940509079
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A329949.P15885060675940509079

namespace A329949

/-- `A097285(∑[char[comp[n²-2]]])` -/
def P15885060675940509079.Spec : Prop :=
  ∀ n, P15885060675940509079.a n = A329949 (n + 1)

end A329949

/-! ## A329949.P16459909778644919052

`A349520(comp[n*(n+3)]+2)`
-/

namespace A329949.P16459909778644919052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2)

end

end A329949.P16459909778644919052

namespace A329949

/-- `A349520(comp[n*(n+3)]+2)` -/
def P16459909778644919052.Spec : Prop :=
  ∀ n, P16459909778644919052.a n = A329949 (n + 1)

end A329949

/-! ## A329949.P13508972363709536812

`A005496(A226005(n+1))`
-/

namespace A329949.P13508972363709536812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A226005 (n + 1)).toNat

end

end A329949.P13508972363709536812

namespace A329949

/-- `A005496(A226005(n+1))` -/
def P13508972363709536812.Spec : Prop :=
  ∀ n, P13508972363709536812.a n = A329949 (n + 1)

end A329949

/-! ## A329949.P17634079973693382506

`A057058(A194033(n+1))`
-/

namespace A329949.P17634079973693382506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057058 (A194033 (n + 1)).toNat

end

end A329949.P17634079973693382506

namespace A329949

/-- `A057058(A194033(n+1))` -/
def P17634079973693382506.Spec : Prop :=
  ∀ n, P17634079973693382506.a n = A329949 (n + 1)

end A329949

/-! ## A329949.P9130039703879647076

`A057059(A194033(n+2))`
-/

namespace A329949.P9130039703879647076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057059 (A194033 (n + 2)).toNat

end

end A329949.P9130039703879647076

namespace A329949

/-- `A057059(A194033(n+2))` -/
def P9130039703879647076.Spec : Prop :=
  ∀ n, P9130039703879647076.a n = A329949 (n + 1)

end A329949

/-! ## A329949.P17854999939394179864

`A269501(A020703(n+2))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A329949

/-- `A269501(A020703(n+2))` -/
def P17854999939394179864.Spec : Prop :=
  ∀ n, P17854999939394179864.a n = A329949 (n + 1)

theorem P17854999939394179864.correct : P17854999939394179864.Spec := by
  intro n
  simp only [A329949, Nat.add_sub_cancel]

end A329949

/-! ## A329949.P12741677681443410370

`A330709(A078358(n+2))+1`
-/

namespace A329949.P12741677681443410370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330709 (A078358 (n + 2)).toNat + 1

end

end A329949.P12741677681443410370

namespace A329949

/-- `A330709(A078358(n+2))+1` -/
def P12741677681443410370.Spec : Prop :=
  ∀ n, P12741677681443410370.a n = A329949 (n + 1)

end A329949

/-! ## A329949.P15340380974658481571

`A029579(Δ[2*∑[A226005(n)]])`
-/

namespace A329949.P15340380974658481571
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226005 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (f1 (n + 1) - f1 n).toNat

end

end A329949.P15340380974658481571

namespace A329949

/-- `A029579(Δ[2*∑[A226005(n)]])` -/
def P15340380974658481571.Spec : Prop :=
  ∀ n, P15340380974658481571.a n = A329949 (n + 1)

end A329949

/-! ## A329949.P16786575862245182623

`A194258(A213921(A064788(n+2)))`
-/

namespace A329949.P16786575862245182623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194258 (A213921 (A064788 (n + 2)).toNat).toNat

end

end A329949.P16786575862245182623

namespace A329949

/-- `A194258(A213921(A064788(n+2)))` -/
def P16786575862245182623.Spec : Prop :=
  ∀ n, P16786575862245182623.a n = A329949 (n + 1)

end A329949

/-!
# A329952: Numbers k such that binomial(k,3) is divisible by 8.

The programs for A329952, the canonical program `A329952.P14959292963377695714` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329952 has offset 1).

The definition of A329952 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A329952.P14959292963377695714

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=8, a(4)=10, a(5)=16`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A329952

/-- `a(n-1)+a(n-5)-a(n-6)` -/
def P14959292963377695714.Spec : Prop :=
  ∀ n, P14959292963377695714.a n = A329952 (n + 1)

theorem P14959292963377695714.correct : P14959292963377695714.Spec := by
  intro n
  simp only [A329952, Nat.add_sub_cancel]

end A329952

/-! ## A329952.P11240836450505516443

`∑[gcd(6, a(n-5))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=6, a(4)=2`
-/

namespace A329952.P11240836450505516443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 6, 2] fun n f1 =>
  Nat.gcd 6 (f1 (n - 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329952.P11240836450505516443

namespace A329952

/-- `∑[gcd(6, a(n-5))]` -/
def P11240836450505516443.Spec : Prop :=
  ∀ n, (P11240836450505516443.a n : ℤ) = A329952 (n + 1)

end A329952

/-! ## A329952.P2154028247176595653

`∑[floor(a(n-5))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=6, a(4)=2, a(5)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A329952.P2154028247176595653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 6, 2, 6] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329952.P2154028247176595653

namespace A329952

/-- `∑[floor(a(n-5))]` -/
def P2154028247176595653.Spec : Prop :=
  ∀ n, (P2154028247176595653.a n : ℤ) = A329952 (n + 1)

end A329952

/-! ## A329952.P16871242914085047479

`∪[A047467(n+1), A158057(n)]`
-/

namespace A329952.P16871242914085047479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A329952.P16871242914085047479

namespace A329952

/-- `∪[A047467(n+1), A158057(n)]` -/
def P16871242914085047479.Spec : Prop :=
  ∀ n, (P16871242914085047479.a n : ℤ) = A329952 (n + 1)

end A329952

/-! ## A329952.P10733157522938024471

`∪[A047467(n+1), A151977(n+1)]`
-/

namespace A329952.P10733157522938024471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A329952.P10733157522938024471

namespace A329952

/-- `∪[A047467(n+1), A151977(n+1)]` -/
def P10733157522938024471.Spec : Prop :=
  ∀ n, (P10733157522938024471.a n : ℤ) = A329952 (n + 1)

end A329952

/-! ## A329952.P14324332694965666806

`∪[A047467(n+1), A247061(n+1)]`
-/

namespace A329952.P14324332694965666806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A329952.P14324332694965666806

namespace A329952

/-- `∪[A047467(n+1), A247061(n+1)]` -/
def P14324332694965666806.Spec : Prop :=
  ∀ n, (P14324332694965666806.a n : ℤ) = A329952 (n + 1)

end A329952

/-! ## A329952.P3951472093734716057

`∪[A047467(n+1), A319281(n+1)]`
-/

namespace A329952.P3951472093734716057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A329952.P3951472093734716057

namespace A329952

/-- `∪[A047467(n+1), A319281(n+1)]` -/
def P3951472093734716057.Spec : Prop :=
  ∀ n, (P3951472093734716057.a n : ℤ) = A329952 (n + 1)

end A329952

/-! ## A329952.P13137977563831329907

`∪[2*A047610(n+1), A151977(n+1)]`
-/

namespace A329952.P13137977563831329907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A329952.P13137977563831329907

namespace A329952

/-- `∪[2*A047610(n+1), A151977(n+1)]` -/
def P13137977563831329907.Spec : Prop :=
  ∀ n, (P13137977563831329907.a n : ℤ) = A329952 (n + 1)

end A329952

/-! ## A329952.P9027429517154904114

`A047469(A047226(n+2))`
-/

namespace A329952.P9027429517154904114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047469 (A047226 (n + 2)).toNat

end

end A329952.P9027429517154904114

namespace A329952

/-- `A047469(A047226(n+2))` -/
def P9027429517154904114.Spec : Prop :=
  ∀ n, P9027429517154904114.a n = A329952 (n + 1)

end A329952

/-! ## A329952.P15334438716029779964

`A047397(A047489(n+1))`
-/

namespace A329952.P15334438716029779964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047397 (A047489 (n + 1)).toNat

end

end A329952.P15334438716029779964

namespace A329952

/-- `A047397(A047489(n+1))` -/
def P15334438716029779964.Spec : Prop :=
  ∀ n, P15334438716029779964.a n = A329952 (n + 1)

end A329952

/-! ## A329952.P6276550330848043766

`A047466(A047412(n+1)+1)`
-/

namespace A329952.P6276550330848043766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047466 (A047412 (n + 1) + 1).toNat

end

end A329952.P6276550330848043766

namespace A329952

/-- `A047466(A047412(n+1)+1)` -/
def P6276550330848043766.Spec : Prop :=
  ∀ n, P6276550330848043766.a n = A329952 (n + 1)

end A329952

/-! ## A329952.P1753575801824370671

`A047476(A047489(n+1))%A047452(n+1)`
-/

namespace A329952.P1753575801824370671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047476 (A047489 (n + 1)).toNat) (A047452 (n + 1))

end

end A329952.P1753575801824370671

namespace A329952

/-- `A047476(A047489(n+1))%A047452(n+1)` -/
def P1753575801824370671.Spec : Prop :=
  ∀ n, P1753575801824370671.a n = A329952 (n + 1)

end A329952

/-! ## A329952.P4140594829197245847

`A047527(A047489(n+1)%A047484(n+1))`
-/

namespace A329952.P4140594829197245847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047527 (Int.tmod (A047489 (n + 1)) (A047484 (n + 1))).toNat

end

end A329952.P4140594829197245847

namespace A329952

/-- `A047527(A047489(n+1)%A047484(n+1))` -/
def P4140594829197245847.Spec : Prop :=
  ∀ n, P4140594829197245847.a n = A329952 (n + 1)

end A329952

/-! ## A329952.P1887996499597323252

`A047527(A047489(n+1))%A047522(n+1)`
-/

namespace A329952.P1887996499597323252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047527 (A047489 (n + 1)).toNat) (A047522 (n + 1))

end

end A329952.P1887996499597323252

namespace A329952

/-- `A047527(A047489(n+1))%A047522(n+1)` -/
def P1887996499597323252.Spec : Prop :=
  ∀ n, P1887996499597323252.a n = A329952 (n + 1)

end A329952

/-! ## A329952.P2904420204806546548

`A047466(or(A047449(n+1), A047488(n+1)))`
-/

namespace A329952.P2904420204806546548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047466 (Int.lor (A047449 (n + 1)) (A047488 (n + 1))).toNat

end

end A329952.P2904420204806546548

namespace A329952

/-- `A047466(or(A047449(n+1), A047488(n+1)))` -/
def P2904420204806546548.Spec : Prop :=
  ∀ n, P2904420204806546548.a n = A329952 (n + 1)

end A329952

/-! ## A329952.P11874953130962479352

`A047476(or(A047448(n+1), A047489(n+1)))`
-/

namespace A329952.P11874953130962479352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047476 (Int.lor (A047448 (n + 1)) (A047489 (n + 1))).toNat

end

end A329952.P11874953130962479352

namespace A329952

/-- `A047476(or(A047448(n+1), A047489(n+1)))` -/
def P11874953130962479352.Spec : Prop :=
  ∀ n, P11874953130962479352.a n = A329952 (n + 1)

end A329952

/-! ## A329952.P8656767623231009990

`A047476(or(A047488(n+1), A047489(n+1)))`
-/

namespace A329952.P8656767623231009990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047476 (Int.lor (A047488 (n + 1)) (A047489 (n + 1))).toNat

end

end A329952.P8656767623231009990

namespace A329952

/-- `A047476(or(A047488(n+1), A047489(n+1)))` -/
def P8656767623231009990.Spec : Prop :=
  ∀ n, P8656767623231009990.a n = A329952 (n + 1)

end A329952

/-! ## A329952.P3457058767502633967

`A047527(or(A047488(n+1), A047489(n+1)))`
-/

namespace A329952.P3457058767502633967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047527 (Int.lor (A047488 (n + 1)) (A047489 (n + 1))).toNat

end

end A329952.P3457058767502633967

namespace A329952

/-- `A047527(or(A047488(n+1), A047489(n+1)))` -/
def P3457058767502633967.Spec : Prop :=
  ∀ n, P3457058767502633967.a n = A329952 (n + 1)

end A329952

/-! ## A329952.P17626831781124569004

`A047527(2*A047489(n+1)-A047489(n+1))`
-/

namespace A329952.P17626831781124569004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047527 (2 * A047489 (n + 1) - A047489 (n + 1)).toNat

end

end A329952.P17626831781124569004

namespace A329952

/-- `A047527(2*A047489(n+1)-A047489(n+1))` -/
def P17626831781124569004.Spec : Prop :=
  ∀ n, P17626831781124569004.a n = A329952 (n + 1)

end A329952

/-! ## A329952.P3654414587807957238

`A293292(2*n+1)+A002266(n+1)-n`
-/

namespace A329952.P3654414587807957238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293292 (2 * n + 1) + (A002266 (n + 1) - (n : ℤ))

end

end A329952.P3654414587807957238

namespace A329952

/-- `A293292(2*n+1)+A002266(n+1)-n` -/
def P3654414587807957238.Spec : Prop :=
  ∀ n, P3654414587807957238.a n = A329952 (n + 1)

end A329952

/-!
# A329954: Record values of A232928.

The programs for A329954, there is no canonical definition to state claims against.
-/

/-! ## A329954.P12739278820564242565

`∩[A038616(n+1), A332484(n+1)]`
-/

namespace A329954.P12739278820564242565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329954.P12739278820564242565

/-! ## A329954.P18409952021445883211

`∩[A228296(n+1), A332484(n+1)]`
-/

namespace A329954.P18409952021445883211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228296 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329954.P18409952021445883211

/-! ## A329954.P3688372601821126308

`∩[A332484(n+1), A386355(n+1)]`
-/

namespace A329954.P3688372601821126308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329954.P3688372601821126308

/-! ## A329954.P2279456244850108465

`∩[A028777(n+1), A225083(n+1)]`
-/

namespace A329954.P2279456244850108465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329954.P2279456244850108465

/-!
# A329955: Expansion of eta(q) * eta(q^2) * eta(q^3)^3 / eta(q^6)^2 in powers of q.

The programs for A329955, there is no canonical definition to state claims against.
-/

/-! ## A329955.P2125874246377107395

`A224821(n)/A132954(2*n)`
-/

namespace A329955.P2125874246377107395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224821 n : ℚ) / (A132954 (2 * n) : ℚ)

end

end A329955.P2125874246377107395

/-! ## A329955.P4367691423414975612

`A034933(n)/A132954(A008587(n))`
-/

namespace A329955.P4367691423414975612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034933 n : ℚ) / (A132954 (A008587 n).toNat : ℚ)

end

end A329955.P4367691423414975612

/-!
# A329956: Expansion of q^(-1/3) * eta(q)^3 * eta(q^3) * eta(q^6) / eta(q^2)^2 in powers of q.

The programs for A329956, there is no canonical definition to state claims against.
-/

/-! ## A329956.P8144259593810854146

`-(A224821(A016777(n))/4)`
-/

namespace A329956.P8144259593810854146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A224821 (A016777 n).toNat : ℚ) / 4)

end

end A329956.P8144259593810854146

/-! ## A329956.P10691463525748660556

`A000007(n+1)-A224821(A016777(n))/4`
-/

namespace A329956.P10691463525748660556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 (n + 1) : ℚ) - (A224821 (A016777 n).toNat : ℚ) / 4

end

end A329956.P10691463525748660556

/-! ## A329956.P18134250086641575182

`A000038(n+1)-A224821(A016777(n))/4`
-/

namespace A329956.P18134250086641575182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 (n + 1) : ℚ) - (A224821 (A016777 n).toNat : ℚ) / 4

end

end A329956.P18134250086641575182

/-! ## A329956.P3704430638871867032

`A224821(A016777(n))/4*A057428(n+1)`
-/

namespace A329956.P3704430638871867032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224821 (A016777 n).toNat : ℚ) / 4 * (A057428 (n + 1) : ℚ)

end

end A329956.P3704430638871867032

/-! ## A329956.P4816850432237420887

`A224821(A016777(n))/4*A008683(A007918(n))`
-/

namespace A329956.P4816850432237420887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224821 (A016777 n).toNat : ℚ) / 4 * (A008683 (A007918 n).toNat : ℚ)

end

end A329956.P4816850432237420887

/-! ## A329956.P4279300766508540084

`A224821(A016777(n))/4*A008683(A151800(n))`
-/

namespace A329956.P4279300766508540084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224821 (A016777 n).toNat : ℚ) / 4 * (A008683 (A151800 n).toNat : ℚ)

end

end A329956.P4279300766508540084

/-! ## A329956.P11741131764300603342

`A008683(A013929(n+1))-A224821(A016777(n))/4`
-/

namespace A329956.P11741131764300603342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A013929 (n + 1)).toNat : ℚ) - (A224821 (A016777 n).toNat : ℚ) / 4

end

end A329956.P11741131764300603342

/-! ## A329956.P3717743483034235103

`A002448(A000040(n+1))-A224821(A016777(n))/4`
-/

namespace A329956.P3717743483034235103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002448 (A000040 (n + 1)).toNat : ℚ) - (A224821 (A016777 n).toNat : ℚ) / 4

end

end A329956.P3717743483034235103

/-! ## A329956.P6648246731421001189

`A224821(A016777(n))/4*A008683(A005382(n+1))`
-/

namespace A329956.P6648246731421001189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224821 (A016777 n).toNat : ℚ) / 4 * (A008683 (A005382 (n + 1)).toNat : ℚ)

end

end A329956.P6648246731421001189

/-! ## A329956.P5470169707825154722

`A033721(A016777(n))/A100051(A017233(n))`
-/

namespace A329956.P5470169707825154722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033721 (A016777 n).toNat : ℚ) / (A100051 (A017233 n).toNat : ℚ)

end

end A329956.P5470169707825154722

/-! ## A329956.P5183662965812905152

`A022087(n)%2-A224821(A016777(n))/4`
-/

namespace A329956.P5183662965812905152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A022087 n) 2 : ℚ) - (A224821 (A016777 n).toNat : ℚ) / 4

end

end A329956.P5183662965812905152

/-! ## A329956.P13219152505434670005

`A002262(∑[n])-A224821(A016777(n))/4`
-/

namespace A329956.P13219152505434670005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) - (A224821 (A016777 n).toNat : ℚ) / 4

end

end A329956.P13219152505434670005

/-!
# A329957: Expansion of q^(-2/3) * eta(q)^4 * eta(q^6)^4 / (eta(q^2)^3 * eta(q^3)^2) in powers of q.

The programs for A329957, there is no canonical definition to state claims against.
-/

/-! ## A329957.P5442233401811738477

`A224821(3*n+2)/4`
-/

namespace A329957.P5442233401811738477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224821 (3 * n + 2) : ℚ) / 4

end

end A329957.P5442233401811738477

/-! ## A329957.P1755266639867804112

`-(A329955(3*n+2)/2)`
-/

namespace A329957.P1755266639867804112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A329955 (3 * n + 2) : ℚ) / 2)

end

end A329957.P1755266639867804112

/-! ## A329957.P10311821084165620218

`(2^A008683(A020484(n))-1)*A329955(3*n+2)`
-/

namespace A329957.P10311821084165620218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A008683 (A020484 n).toNat : ℤ) - 1) * (A329955 (3 * n + 2) : ℚ)

end

end A329957.P10311821084165620218

/-! ## A329957.P10176402680031729921

`A224822(A017233(n))/4`
-/

namespace A329957.P10176402680031729921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224822 (A017233 n).toNat : ℚ) / 4

end

end A329957.P10176402680031729921

/-! ## A329957.P1658599863281693409

`A329955(A124388(n))/4`
-/

namespace A329957.P1658599863281693409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329955 (A124388 n).toNat : ℚ) / 4

end

end A329957.P1658599863281693409

/-!
# A329958: Expansion of q^(-13/24) * eta(q^2)^3 * eta(q^3) * eta(q^6) / eta(q)^2 in powers of q.

The programs for A329958, there is no canonical definition to state claims against.
-/

/-! ## A329958.P7835774681085292267

`A033768(3*n)`
-/

namespace A329958.P7835774681085292267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033768 (3 * n)

end

end A329958.P7835774681085292267

/-! ## A329958.P3540755483505779938

`A224823(3*n+1)/2`
-/

namespace A329958.P3540755483505779938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224823 (3 * n + 1) : ℚ) / 2

end

end A329958.P3540755483505779938

/-! ## A329958.P11785130670405907551

`A004526(A224823(3*n+1))`
-/

namespace A329958.P11785130670405907551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A224823 (3 * n + 1)).toNat

end

end A329958.P11785130670405907551

/-! ## A329958.P11469360801191646555

`A033768(A008486(n))%(n+2)`
-/

namespace A329958.P11469360801191646555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033768 (A008486 n).toNat) (n + 2 : ℤ)

end

end A329958.P11469360801191646555

/-! ## A329958.P7557755463277256809

`A033768(A008585(n))%(n+2)`
-/

namespace A329958.P7557755463277256809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033768 (A008585 n).toNat) (n + 2 : ℤ)

end

end A329958.P7557755463277256809

/-! ## A329958.P15668878754492836336

`A001281(A224823(A016777(n)))`
-/

namespace A329958.P15668878754492836336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A224823 (A016777 n).toNat).toNat

end

end A329958.P15668878754492836336

/-! ## A329958.P12399309432666116147

`A224825(A017209(n))/2`
-/

namespace A329958.P12399309432666116147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224825 (A017209 n).toNat : ℚ) / 2

end

end A329958.P12399309432666116147

/-! ## A329958.P10784652471375183542

`A321440(A017221(n))/4`
-/

namespace A329958.P10784652471375183542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321440 (A017221 n).toNat : ℚ) / 4

end

end A329958.P10784652471375183542

/-! ## A329958.P3411302384339307532

`A224825(A017221(n)-1)/2`
-/

namespace A329958.P3411302384339307532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224825 (A017221 n - 1).toNat : ℚ) / 2

end

end A329958.P3411302384339307532

/-! ## A329958.P7774280284779156178

`A004525(A224825(A017209(n)))`
-/

namespace A329958.P7774280284779156178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A224825 (A017209 n).toNat).toNat

end

end A329958.P7774280284779156178

/-! ## A329958.P13422756044228278217

`A238872(A082286(n))/4`
-/

namespace A329958.P13422756044228278217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238872 (A082286 n).toNat : ℚ) / 4

end

end A329958.P13422756044228278217

/-!
# A329959: Binomial transform of a signed variant of triangle A050166.

The programs for A329959, there is no canonical definition to state claims against.
-/

/-! ## A329959.P5352756845361324322

`lcm(A114327(A290195(n)), A124747(n))`
-/

namespace A329959.P5352756845361324322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A114327 (A290195 n).toNat) (A124747 n)

end

end A329959.P5352756845361324322

/-! ## A329959.P628802257901770854

`floor(A080664(n+1)/A094504(n+1)-A002262(n))`
-/

namespace A329959.P628802257901770854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A080664 (n + 1) : ℚ) / (A094504 (n + 1) : ℚ) - (A002262 n : ℚ)⌋

end

end A329959.P628802257901770854

/-! ## A329959.P4614083267351930985

`floor(A080664(n+1)/A140303(n))+1-A002260(n+1)`
-/

namespace A329959.P4614083267351930985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A080664 (n + 1) : ℚ) / (A140303 n : ℚ)⌋ + 1 - A002260 (n + 1)

end

end A329959.P4614083267351930985

/-! ## A329959.P9734022516112719308

`A000108(A127648(n))%A071093(A182797(n+1))`
-/

namespace A329959.P9734022516112719308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000108 (A127648 n).toNat) (A071093 (A182797 (n + 1)).toNat)

end

end A329959.P9734022516112719308

/-!
# A329961: Beatty sequence for 2 + sin x, where x = least positive solution of 1/(2 + sin x) + 1/(2 + cos x) = 1.

The programs for A329961, there is no canonical definition to state claims against.
-/

/-! ## A329961.P978413275045027208

`floor(49*(n+1)/17)`
-/

namespace A329961.P978413275045027208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊49 * ((n + 1 : ℚ) / 17)⌋

end

end A329961.P978413275045027208

/-! ## A329961.P3800087146940827640

`record[and(17, n+1)%3+n]+1+n`
-/

namespace A329961.P3800087146940827640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 17 (n + 1) % 3 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1 + n

end

end A329961.P3800087146940827640

/-! ## A329961.P18087600930280581221

`floor((n+1)/atan(atan(atan(atan(1)))))+1+n`
-/

namespace A329961.P18087600930280581221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.arctan (Real.arctan (Real.arctan (Real.arctan (1 : ℝ))))⌋ + 1 + (n : ℤ)

end

end A329961.P18087600930280581221

/-! ## A329961.P13890988767791326273

`round((n*ϕ²+1-n)*sinh(log(5)))-n`
-/

namespace A329961.P13890988767791326273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℝ) * Real.goldenRatio ^ 2 + (1 - (n : ℤ) : ℝ)) * Real.sinh (Real.log (5 : ℝ))) - (n : ℤ)

end

end A329961.P13890988767791326273

/-! ## A329961.P12711170700689952437

`∑[3-char[A121283(n)]]`
-/

namespace A329961.P12711170700689952437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121283 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329961.P12711170700689952437

/-! ## A329961.P3610013137815889392

`A329831(n+1)+1+n`
-/

namespace A329961.P3610013137815889392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329831 (n + 1) + 1 + (n : ℤ)

end

end A329961.P3610013137815889392

/-! ## A329961.P7878480154036149192

`round((A157924(n+1)-16)/34)`
-/

namespace A329961.P7878480154036149192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A157924 (n + 1) - 16 : ℚ) / 34)

end

end A329961.P7878480154036149192

/-! ## A329961.P3294888898415228917

`A195175(A329831(n+1))`
-/

namespace A329961.P3294888898415228917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195175 (A329831 (n + 1)).toNat

end

end A329961.P3294888898415228917

/-! ## A329961.P13842600180433577472

`round(A195169(A016789(n))/2)`
-/

namespace A329961.P13842600180433577472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A195169 (A016789 n).toNat : ℚ) / 2)

end

end A329961.P13842600180433577472

/-! ## A329961.P4737032397988246705

`∑[A168185(A001953(n))+2]`
-/

namespace A329961.P4737032397988246705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168185 (A001953 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329961.P4737032397988246705

/-!
# A329962: Beatty sequence for 2 + cos x, where x = least positive solution of 1/(2 + sin x) + 1/(2 + cos x) = 1.

The programs for A329962, there is no canonical definition to state claims against.
-/

/-! ## A329962.P17585993541727499500

`floor((n+1)*atan(25))`
-/

namespace A329962.P17585993541727499500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.arctan (25 : ℝ)⌋

end

end A329962.P17585993541727499500

/-! ## A329962.P5887614187105402531

`floor((n+1)*cosh(sin(8)))`
-/

namespace A329962.P5887614187105402531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.cosh (Real.sin (8 : ℝ))⌋

end

end A329962.P5887614187105402531

/-! ## A329962.P2412196522603666461

`floor(3*(n+1)*(5/7)²)`
-/

namespace A329962.P2412196522603666461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((n + 1 : ℚ) * ((5 : ℚ) / 7) ^ 2)⌋

end

end A329962.P2412196522603666461

/-! ## A329962.P9379036712743011044

`round(2*n/cosh(2)+n+1)`
-/

namespace A329962.P9379036712743011044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℝ) / Real.cosh (2 : ℝ) + (n + 1 : ℝ))

end

end A329962.P9379036712743011044

/-! ## A329962.P4448668923500967861

`∑[char[A329831(n+1)]+1]`
-/

namespace A329962.P4448668923500967861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329831 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329962.P4448668923500967861

/-! ## A329962.P5024495820193613841

`comp[comp[A329832(n+1)]+n]`
-/

namespace A329962.P5024495820193613841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329832 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A329962.P5024495820193613841

/-!
# A329963: Numbers k such that sigma(k) is not divisible by 3.

The programs for A329963, the canonical program `A329963.P10133551863400221226` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329963 has offset 1).

The definition of A329963 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329963.P8053441678048202487

`record[(n+1)*A353815(n+1)]`
-/

namespace A329963.P8053441678048202487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A353815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329963.P8053441678048202487

namespace A329963

/-- `record[(n+1)*A353815(n+1)]` -/
def P8053441678048202487.Spec : Prop :=
  ∀ n, P8053441678048202487.a n = A329963 (n + 1)

end A329963

/-! ## A329963.P10133551863400221226

`record[(n+1)*A000203(n+1)²%3]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A329963

/-- `record[(n+1)*A000203(n+1)²%3]` -/
def P10133551863400221226.Spec : Prop :=
  ∀ n, P10133551863400221226.a n = A329963 (n + 1)

theorem P10133551863400221226.correct : P10133551863400221226.Spec := by
  intro n
  simp only [A329963, Nat.add_sub_cancel]

end A329963

/-! ## A329963.P6901721354751362116

`record[(n+1)/A312254(val(A000203(n+1), 3))]`
-/

namespace A329963.P6901721354751362116
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A312254 (SequenceMachineLib.valuation (A000203 (n + 1)).toNat 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329963.P6901721354751362116

namespace A329963

/-- `record[(n+1)/A312254(val(A000203(n+1), 3))]` -/
def P6901721354751362116.Spec : Prop :=
  ∀ n, P6901721354751362116.a n = (A329963 (n + 1) : ℚ)

end A329963

/-! ## A329963.P2733278900060498256

`eq[1, A353815(n+1)]+1`
-/

namespace A329963.P2733278900060498256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353815 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A329963.P2733278900060498256

namespace A329963

/-- `eq[1, A353815(n+1)]+1` -/
def P2733278900060498256.Spec : Prop :=
  ∀ n, (P2733278900060498256.a n : ℤ) = A329963 (n + 1)

end A329963

/-! ## A329963.P11834726418228410521

`lt[0, A000203(n+1)%3]+1`
-/

namespace A329963.P11834726418228410521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A329963.P11834726418228410521

namespace A329963

/-- `lt[0, A000203(n+1)%3]+1` -/
def P11834726418228410521.Spec : Prop :=
  ∀ n, (P11834726418228410521.a n : ℤ) = A329963 (n + 1)

end A329963

/-! ## A329963.P6765811723459929863

`filter[A336146(2*n+1), A353815(#)]`
-/

namespace A329963.P6765811723459929863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336146 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A329963.P6765811723459929863

namespace A329963

/-- `filter[A336146(2*n+1), A353815(#)]` -/
def P6765811723459929863.Spec : Prop :=
  ∀ n, P6765811723459929863.a n = A329963 (n + 1)

end A329963

/-! ## A329963.P8859011448500321668

`filter[A097503(n+1), A353815(#)]`
-/

namespace A329963.P8859011448500321668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A329963.P8859011448500321668

namespace A329963

/-- `filter[A097503(n+1), A353815(#)]` -/
def P8859011448500321668.Spec : Prop :=
  ∀ n, P8859011448500321668.a n = A329963 (n + 1)

end A329963

/-! ## A329963.P10553548209615430558

`filter[A003136(n+2), A353815(#)]`
-/

namespace A329963.P10553548209615430558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A329963.P10553548209615430558

namespace A329963

/-- `filter[A003136(n+2), A353815(#)]` -/
def P10553548209615430558.Spec : Prop :=
  ∀ n, P10553548209615430558.a n = A329963 (n + 1)

end A329963

/-! ## A329963.P16392566884206481911

`filter[A383784(n+2), A353815(#)]`
-/

namespace A329963.P16392566884206481911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383784 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A329963.P16392566884206481911

namespace A329963

/-- `filter[A383784(n+2), A353815(#)]` -/
def P16392566884206481911.Spec : Prop :=
  ∀ n, P16392566884206481911.a n = A329963 (n + 1)

end A329963

/-! ## A329963.P5843795795129082901

`filter[A035246(n+1), A353815(#)]`
-/

namespace A329963.P5843795795129082901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A329963.P5843795795129082901

namespace A329963

/-- `filter[A035246(n+1), A353815(#)]` -/
def P5843795795129082901.Spec : Prop :=
  ∀ n, P5843795795129082901.a n = A329963 (n + 1)

end A329963

/-! ## A329963.P1296735983144007937

`filter[A026225(n+1), A353815(#)]`
-/

namespace A329963.P1296735983144007937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A329963.P1296735983144007937

namespace A329963

/-- `filter[A026225(n+1), A353815(#)]` -/
def P1296735983144007937.Spec : Prop :=
  ∀ n, P1296735983144007937.a n = A329963 (n + 1)

end A329963

/-! ## A329963.P13867755629291174995

`filter[A026140(n+2), A353815(#)]`
-/

namespace A329963.P13867755629291174995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026140 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A329963.P13867755629291174995

namespace A329963

/-- `filter[A026140(n+2), A353815(#)]` -/
def P13867755629291174995.Spec : Prop :=
  ∀ n, P13867755629291174995.a n = A329963 (n + 1)

end A329963

/-! ## A329963.P4287553448112340838

`filter[A225837(n+1), A353815(#)]`
-/

namespace A329963.P4287553448112340838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A329963.P4287553448112340838

namespace A329963

/-- `filter[A225837(n+1), A353815(#)]` -/
def P4287553448112340838.Spec : Prop :=
  ∀ n, P4287553448112340838.a n = A329963 (n + 1)

end A329963

/-! ## A329963.P15093308440036428710

`filter[A325462(n+1), A353815(#)]`
-/

namespace A329963.P15093308440036428710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A329963.P15093308440036428710

namespace A329963

/-- `filter[A325462(n+1), A353815(#)]` -/
def P15093308440036428710.Spec : Prop :=
  ∀ n, P15093308440036428710.a n = A329963 (n + 1)

end A329963

/-! ## A329963.P3595707633998236052

`filter[A003159(n+1), A353815(#)]`
-/

namespace A329963.P3595707633998236052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A329963.P3595707633998236052

namespace A329963

/-- `filter[A003159(n+1), A353815(#)]` -/
def P3595707633998236052.Spec : Prop :=
  ∀ n, P3595707633998236052.a n = A329963 (n + 1)

end A329963

/-! ## A329963.P9492571834623228257

`filter[A026178(n+1), A353815(#)]`
-/

namespace A329963.P9492571834623228257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A329963.P9492571834623228257

namespace A329963

/-- `filter[A026178(n+1), A353815(#)]` -/
def P9492571834623228257.Spec : Prop :=
  ∀ n, P9492571834623228257.a n = A329963 (n + 1)

end A329963

/-! ## A329963.P1812425119499003128

`filter[A032766(n+1), A353815(#)]`
-/

namespace A329963.P1812425119499003128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A329963.P1812425119499003128

namespace A329963

/-- `filter[A032766(n+1), A353815(#)]` -/
def P1812425119499003128.Spec : Prop :=
  ∀ n, P1812425119499003128.a n = A329963 (n + 1)

end A329963

/-! ## A329963.P3219630202605664062

`filter[A141259(n+1), A353815(#)]`
-/

namespace A329963.P3219630202605664062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A329963.P3219630202605664062

namespace A329963

/-- `filter[A141259(n+1), A353815(#)]` -/
def P3219630202605664062.Spec : Prop :=
  ∀ n, P3219630202605664062.a n = A329963 (n + 1)

end A329963

/-! ## A329963.P7804210158185125828

`filter[A189665(n+1), A353815(#)]`
-/

namespace A329963.P7804210158185125828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A329963.P7804210158185125828

namespace A329963

/-- `filter[A189665(n+1), A353815(#)]` -/
def P7804210158185125828.Spec : Prop :=
  ∀ n, P7804210158185125828.a n = A329963 (n + 1)

end A329963

/-! ## A329963.P5762840755313170463

`filter[A260401(n+1), A353815(#)]`
-/

namespace A329963.P5762840755313170463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A329963.P5762840755313170463

namespace A329963

/-- `filter[A260401(n+1), A353815(#)]` -/
def P5762840755313170463.Spec : Prop :=
  ∀ n, P5762840755313170463.a n = A329963 (n + 1)

end A329963

/-!
# A329964: a(n) = (n!/floor(1+n/2)!)^2.

The programs for A329964, the canonical program `A329964.P473401621958208727` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329964 has offset 0).

The definition of A329964 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A329964.P1538925709935230625

`(n!/floor(1+n/2)!)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A329964.P1538925709935230625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℚ) / (Nat.factorial ⌊1 + (n : ℚ) / 2⌋.toNat : ℚ)) ^ 2

end

end A329964.P1538925709935230625

namespace A329964

/-- `(n!/floor(1+n/2)!)²` -/
def P1538925709935230625.Spec : Prop :=
  ∀ n, P1538925709935230625.a n = (A329964 n : ℚ)

end A329964

/-! ## A329964.P473401621958208727

`A262033(n)²`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A329964

/-- `A262033(n)²` -/
def P473401621958208727.Spec : Prop :=
  ∀ n, P473401621958208727.a n = A329964 n

theorem P473401621958208727.correct : P473401621958208727.Spec := by
  intro n
  simp only [A329964]

end A329964

/-! ## A329964.P5809340846107401738

`(A205825(n+1)/(n+1))²`
-/

namespace A329964.P5809340846107401738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A205825 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A329964.P5809340846107401738

namespace A329964

/-- `(A205825(n+1)/(n+1))²` -/
def P5809340846107401738.Spec : Prop :=
  ∀ n, P5809340846107401738.a n = (A329964 n : ℚ)

end A329964

/-! ## A329964.P10805900762924029779

`A262033(A028310(n))^2`
-/

namespace A329964.P10805900762924029779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262033 (A028310 n).toNat ^ 2

end

end A329964.P10805900762924029779

namespace A329964

/-- `A262033(A028310(n))^2` -/
def P10805900762924029779.Spec : Prop :=
  ∀ n, P10805900762924029779.a n = A329964 n

end A329964

/-! ## A329964.P14188635221056481082

`A173333(A008619(n²))²`
-/

namespace A329964.P14188635221056481082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173333 (A008619 (n ^ 2)).toNat ^ 2

end

end A329964.P14188635221056481082

namespace A329964

/-- `A173333(A008619(n²))²` -/
def P14188635221056481082.Spec : Prop :=
  ∀ n, P14188635221056481082.a n = A329964 n

end A329964

/-! ## A329964.P5924968896284782771

`A094587(∑[A109613(n)])²`
-/

namespace A329964.P5924968896284782771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2

end

end A329964.P5924968896284782771

namespace A329964

/-- `A094587(∑[A109613(n)])²` -/
def P5924968896284782771.Spec : Prop :=
  ∀ n, P5924968896284782771.a n = A329964 n

end A329964

/-! ## A329964.P5606970764914166953

`(A057977(n)*A081123(n))²`
-/

namespace A329964.P5606970764914166953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057977 n * A081123 n) ^ 2

end

end A329964.P5606970764914166953

namespace A329964

/-- `(A057977(n)*A081123(n))²` -/
def P5606970764914166953.Spec : Prop :=
  ∀ n, P5606970764914166953.a n = A329964 n

end A329964

/-! ## A329964.P11287431993234269336

`(A081125(n)/A008619(n))²`
-/

namespace A329964.P11287431993234269336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A081125 n : ℚ) / (A008619 n : ℚ)) ^ 2

end

end A329964.P11287431993234269336

namespace A329964

/-- `(A081125(n)/A008619(n))²` -/
def P11287431993234269336.Spec : Prop :=
  ∀ n, P11287431993234269336.a n = (A329964 n : ℚ)

end A329964

/-! ## A329964.P18204653869947994803

`A205825(n)²/A158416(n)²`
-/

namespace A329964.P18204653869947994803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205825 n ^ 2 : ℚ) / (A158416 n ^ 2 : ℚ)

end

end A329964.P18204653869947994803

namespace A329964

/-- `A205825(n)²/A158416(n)²` -/
def P18204653869947994803.Spec : Prop :=
  ∀ n, P18204653869947994803.a n = (A329964 n : ℚ)

end A329964

/-! ## A329964.P17656051474576010268

`∏[(A028310(n)/A158416(n))²]`
-/

namespace A329964.P17656051474576010268
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A028310 n : ℚ) / (A158416 n : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A329964.P17656051474576010268

namespace A329964

/-- `∏[(A028310(n)/A158416(n))²]` -/
def P17656051474576010268.Spec : Prop :=
  ∀ n, P17656051474576010268.a n = (A329964 n : ℚ)

end A329964

/-!
# A329965: a(n) = ((1+n)*floor(1+n/2))*(n!/floor(1+n/2)!)^2.

The programs for A329965, the canonical program `A329965.P6279486900008359790` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329965 has offset 0).

The definition of A329965 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A329965.P1662100243605890824

`(1+n)*floor(1+n/2)*(n!/floor(1+n/2)!)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A329965.P1662100243605890824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 + n : ℤ) * ⌊1 + (n : ℚ) / 2⌋ : ℚ) * ((Nat.factorial n : ℚ) / (Nat.factorial ⌊1 + (n : ℚ) / 2⌋.toNat : ℚ)) ^ 2

end

end A329965.P1662100243605890824

namespace A329965

/-- `(1+n)*floor(1+n/2)*(n!/floor(1+n/2)!)²` -/
def P1662100243605890824.Spec : Prop :=
  ∀ n, P1662100243605890824.a n = (A329965 n : ℚ)

end A329965

/-! ## A329965.P15613386524376384076

`(n+1)!*A057977(n)`
-/

namespace A329965.P15613386524376384076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A057977 n

end

end A329965.P15613386524376384076

namespace A329965

/-- `(n+1)!*A057977(n)` -/
def P15613386524376384076.Spec : Prop :=
  ∀ n, P15613386524376384076.a n = A329965 n

end A329965

/-! ## A329965.P11473328079218088954

`n!*A212303(n+1)`
-/

namespace A329965.P11473328079218088954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A212303 (n + 1)

end

end A329965.P11473328079218088954

namespace A329965

/-- `n!*A212303(n+1)` -/
def P11473328079218088954.Spec : Prop :=
  ∀ n, P11473328079218088954.a n = A329965 n

end A329965

/-! ## A329965.P6279486900008359790

`A093005(n+1)*A329964(n)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A329965

/-- `A093005(n+1)*A329964(n)` -/
def P6279486900008359790.Spec : Prop :=
  ∀ n, P6279486900008359790.a n = A329965 n

theorem P6279486900008359790.correct : P6279486900008359790.Spec := by
  intro n
  simp only [A329965]

end A329965

/-! ## A329965.P9017208045086404253

`A093005(n+1)*A262033(n)²`
-/

namespace A329965.P9017208045086404253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093005 (n + 1) * A262033 n ^ 2

end

end A329965.P9017208045086404253

namespace A329965

/-- `A093005(n+1)*A262033(n)²` -/
def P9017208045086404253.Spec : Prop :=
  ∀ n, P9017208045086404253.a n = A329965 n

end A329965

/-! ## A329965.P6982214736950113028

`record[A047920(n)]*A057977(n)`
-/

namespace A329965.P6982214736950113028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A057977 n

end

end A329965.P6982214736950113028

namespace A329965

/-- `record[A047920(n)]*A057977(n)` -/
def P6982214736950113028.Spec : Prop :=
  ∀ n, P6982214736950113028.a n = A329965 n

end A329965

/-! ## A329965.P9085895457655152264

`record[A047922(n)]*A057977(n)`
-/

namespace A329965.P9085895457655152264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047922 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A057977 n

end

end A329965.P9085895457655152264

namespace A329965

/-- `record[A047922(n)]*A057977(n)` -/
def P9085895457655152264.Spec : Prop :=
  ∀ n, P9085895457655152264.a n = A329965 n

end A329965

/-! ## A329965.P14257322840789737722

`record[A084938(n)]*A057977(n)`
-/

namespace A329965.P14257322840789737722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A057977 n

end

end A329965.P14257322840789737722

namespace A329965

/-- `record[A084938(n)]*A057977(n)` -/
def P14257322840789737722.Spec : Prop :=
  ∀ n, P14257322840789737722.a n = A329965 n

end A329965

/-! ## A329965.P15511276439581028367

`A000142(n+1)*A057977(n)`
-/

namespace A329965.P15511276439581028367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A057977 n

end

end A329965.P15511276439581028367

namespace A329965

/-- `A000142(n+1)*A057977(n)` -/
def P15511276439581028367.Spec : Prop :=
  ∀ n, P15511276439581028367.a n = A329965 n

end A329965

/-! ## A329965.P3371170595147706150

`A081125(n)*A205825(n+1)`
-/

namespace A329965.P3371170595147706150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081125 n * A205825 (n + 1)

end

end A329965.P3371170595147706150

namespace A329965

/-- `A081125(n)*A205825(n+1)` -/
def P3371170595147706150.Spec : Prop :=
  ∀ n, P3371170595147706150.a n = A329965 n

end A329965

/-!
# A329966: a(n) = n! * Sum_{d|n} binomial(n-1,d-1) / d!.

The programs for A329966, there is no canonical definition to state claims against.
-/

/-! ## A329966.P6979634948398947052

`A158416(A063647(n+1)*A356661(n+1))`
-/

namespace A329966.P6979634948398947052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (A063647 (n + 1) * A356661 (n + 1)).toNat

end

end A329966.P6979634948398947052

/-!
# A329967: a(0) = 1; a(n) = Sum_{k=1..n} Stirling1(n,k) * a(n-k).

The programs for A329967, there is no canonical definition to state claims against.
-/

/-! ## A329967.P7089637461632478808

`A292518(11*A190626(n+1))`
-/

namespace A329967.P7089637461632478808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292518 (11 * A190626 (n + 1)).toNat

end

end A329967.P7089637461632478808

/-! ## A329967.P12887116479233125046

`A030019(n)-A118766(A002415(n))`
-/

namespace A329967.P12887116479233125046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030019 n - A118766 (A002415 n).toNat

end

end A329967.P12887116479233125046

/-!
# A329968: a(0) = 1; a(n) = Sum_{k=1..n} |Stirling1(n,k)| * a(n-k).

The programs for A329968, there is no canonical definition to state claims against.
-/

/-! ## A329968.P15739093939882482542

`A057905(A357532(∑[n]))`
-/

namespace A329968.P15739093939882482542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057905 (A357532 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A329968.P15739093939882482542

/-! ## A329968.P10551900639614063187

`A049988(A232988(n)+(∑[n]-n)*(n+1)^(n-2))`
-/

namespace A329968.P10551900639614063187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049988 (SequenceMachineLib.roundAway ((A232988 n : ℚ) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) : ℚ) * (n + 1 : ℚ) ^ ((n : ℤ) - 2 : ℤ))).toNat

end

end A329968.P10551900639614063187

/-!
# A329969: a(n) = Sum_{k=1..n} Stirling2(n,k) * gcd(n,k).

The programs for A329969, there is no canonical definition to state claims against.
-/

/-! ## A329969.P5976108113671545639

`A056239(A081546(n))+floor(n/4)`
-/

namespace A329969.P5976108113671545639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A081546 n).toNat + ⌊(n : ℚ) / 4⌋

end

end A329969.P5976108113671545639

/-! ## A329969.P5643856171708095552

`A057356(n)+A026238(A081546(n))`
-/

namespace A329969.P5643856171708095552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 n + A026238 (A081546 n).toNat

end

end A329969.P5643856171708095552

/-!
# A329971: Expansion of 1 / (1 - 2 * Sum_{k>=1} x^(k^2)).

The programs for A329971, there is no canonical definition to state claims against.
-/

/-! ## A329971.P10760623027382715468

`A115352(A367660(n+1))`
-/

namespace A329971.P10760623027382715468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115352 (A367660 (n + 1)).toNat

end

end A329971.P10760623027382715468

/-! ## A329971.P11209311266453058167

`A036453(n+1)*A318892(A369614(n))`
-/

namespace A329971.P11209311266453058167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A318892 (A369614 n).toNat

end

end A329971.P11209311266453058167

/-! ## A329971.P5568298983975536627

`A248170(A150100(n))`
-/

namespace A329971.P5568298983975536627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248170 (A150100 n).toNat

end

end A329971.P5568298983975536627

/-! ## A329971.P6082660588583400258

`A248170(A150101(n))`
-/

namespace A329971.P6082660588583400258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248170 (A150101 n).toNat

end

end A329971.P6082660588583400258

/-!
# A329972: Y-coordinate of a point moving in a triangular spiral.

The programs for A329972, the canonical program `A329972.P5707886676465842772` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329972 has offset 0).

The definition of A329972 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329972.P5707886676465842772

`A010751(∑[A266982(n+1)])`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A329972

/-- `A010751(∑[A266982(n+1)])` -/
def P5707886676465842772.Spec : Prop :=
  ∀ n, P5707886676465842772.a n = A329972 n

theorem P5707886676465842772.correct : P5707886676465842772.Spec := by
  intro n
  simp only [A329972]

end A329972

/-! ## A329972.P1488116591287971821

`A010751(∑[A267034(n)]-1)`
-/

namespace A329972.P1488116591287971821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010751 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A329972.P1488116591287971821

namespace A329972

/-- `A010751(∑[A267034(n)]-1)` -/
def P1488116591287971821.Spec : Prop :=
  ∀ n, P1488116591287971821.a n = A329972 n

end A329972

/-! ## A329972.P15081973960394708003

`(A180714(n)-A053615(n))/2`
-/

namespace A329972.P15081973960394708003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180714 n - A053615 n : ℚ) / 2

end

end A329972.P15081973960394708003

namespace A329972

/-- `(A180714(n)-A053615(n))/2` -/
def P15081973960394708003.Spec : Prop :=
  ∀ n, P15081973960394708003.a n = (A329972 n : ℚ)

end A329972

/-! ## A329972.P12668249604033572789

`A010751((n-A329116(n))/2)`
-/

namespace A329972.P12668249604033572789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010751 (SequenceMachineLib.roundAway (((n : ℤ) - A329116 n : ℚ) / 2)).toNat

end

end A329972.P12668249604033572789

namespace A329972

/-- `A010751((n-A329116(n))/2)` -/
def P12668249604033572789.Spec : Prop :=
  ∀ n, P12668249604033572789.a n = A329972 n

end A329972

/-! ## A329972.P3450540923131188717

`A174344(n+1)+A319289(n)-A000196(n)`
-/

namespace A329972.P3450540923131188717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (n + 1) + (A319289 n - A000196 n)

end

end A329972.P3450540923131188717

namespace A329972

/-- `A174344(n+1)+A319289(n)-A000196(n)` -/
def P3450540923131188717.Spec : Prop :=
  ∀ n, P3450540923131188717.a n = A329972 n

end A329972

/-! ## A329972.P14970246995626514720

`A319290(n)-(A268038(n+1)+A000196(n))`
-/

namespace A329972.P14970246995626514720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319290 n - (A268038 (n + 1) + A000196 n)

end

end A329972.P14970246995626514720

namespace A329972

/-- `A319290(n)-(A268038(n+1)+A000196(n))` -/
def P14970246995626514720.Spec : Prop :=
  ∀ n, P14970246995626514720.a n = A329972 n

end A329972

/-! ## A329972.P11700842762749870238

`A274923(n+1)+A319290(n)-A000196(n)`
-/

namespace A329972.P11700842762749870238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (n + 1) + (A319290 n - A000196 n)

end

end A329972.P11700842762749870238

namespace A329972

/-- `A274923(n+1)+A319290(n)-A000196(n)` -/
def P11700842762749870238.Spec : Prop :=
  ∀ n, P11700842762749870238.a n = A329972 n

end A329972

/-! ## A329972.P14296035439043317124

`A343203(n)-A329116(n)`
-/

namespace A329972.P14296035439043317124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343203 n - A329116 n

end

end A329972.P14296035439043317124

namespace A329972

/-- `A343203(n)-A329116(n)` -/
def P14296035439043317124.Spec : Prop :=
  ∀ n, P14296035439043317124.a n = A329972 n

end A329972

/-! ## A329972.P13393724875502022680

`A343203(n)-A359216(2*n)`
-/

namespace A329972.P13393724875502022680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343203 n - A359216 (2 * n)

end

end A329972.P13393724875502022680

namespace A329972

/-- `A343203(n)-A359216(2*n)` -/
def P13393724875502022680.Spec : Prop :=
  ∀ n, P13393724875502022680.a n = A329972 n

end A329972

/-! ## A329972.P15330496232450197859

`A343203(n)+A268038(A316884(n+1))`
-/

namespace A329972.P15330496232450197859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343203 n + A268038 (A316884 (n + 1)).toNat

end

end A329972.P15330496232450197859

namespace A329972

/-- `A343203(n)+A268038(A316884(n+1))` -/
def P15330496232450197859.Spec : Prop :=
  ∀ n, P15330496232450197859.a n = A329972 n

end A329972

/-! ## A329972.P6124300320273848418

`A339265(n)+A343203(n)-A255175(n)`
-/

namespace A329972.P6124300320273848418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339265 n + (A343203 n - A255175 n)

end

end A329972.P6124300320273848418

namespace A329972

/-- `A339265(n)+A343203(n)-A255175(n)` -/
def P6124300320273848418.Spec : Prop :=
  ∀ n, P6124300320273848418.a n = A329972 n

end A329972

/-! ## A329972.P14803917833094187393

`A319289(n)+A343203(n)-A319290(n)`
-/

namespace A329972.P14803917833094187393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319289 n + (A343203 n - A319290 n)

end

end A329972.P14803917833094187393

namespace A329972

/-- `A319289(n)+A343203(n)-A319290(n)` -/
def P14803917833094187393.Spec : Prop :=
  ∀ n, P14803917833094187393.a n = A329972 n

end A329972

/-! ## A329972.P3540151941716565134

`A343203(n)-A196199(n)*A339265(n)`
-/

namespace A329972.P3540151941716565134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343203 n - A196199 n * A339265 n

end

end A329972.P3540151941716565134

namespace A329972

/-- `A343203(n)-A196199(n)*A339265(n)` -/
def P3540151941716565134.Spec : Prop :=
  ∀ n, P3540151941716565134.a n = A329972 n

end A329972

/-! ## A329972.P1231769217581955184

`A220604(n+1)+A343203(n)-A220603(n+1)`
-/

namespace A329972.P1231769217581955184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220604 (n + 1) + (A343203 n - A220603 (n + 1))

end

end A329972.P1231769217581955184

namespace A329972

/-- `A220604(n+1)+A343203(n)-A220603(n+1)` -/
def P1231769217581955184.Spec : Prop :=
  ∀ n, P1231769217581955184.a n = A329972 n

end A329972

/-!
# A329974: Beatty sequence for the real solution x of 1/x + 1/(1+x+x^2) = 1.

The programs for A329974, there is no canonical definition to state claims against.
-/

/-! ## A329974.P1591812909379767922

`comp[floor(n/acot(4))]`
-/

namespace A329974.P1591812909379767922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / SequenceMachineLib.acot (4 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A329974.P1591812909379767922

/-! ## A329974.P11589370102695182870

`floor(∑[cosh(cos(cos(n)))])`
-/

namespace A329974.P11589370102695182870
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (Real.cos (Real.cos (n : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A329974.P11589370102695182870

/-! ## A329974.P9299847415343291430

`comp[floor(53*n/13)]`
-/

namespace A329974.P9299847415343291430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊53 * ((n : ℚ) / 13)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A329974.P9299847415343291430

/-! ## A329974.P7308288810295135003

`floor((n+1)*cosh(atan(1)))`
-/

namespace A329974.P7308288810295135003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.cosh (Real.arctan (1 : ℝ))⌋

end

end A329974.P7308288810295135003

/-! ## A329974.P9487795647668354770

`floor((n+1)*cosh(acot(1)))`
-/

namespace A329974.P9487795647668354770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.cosh (SequenceMachineLib.acot (1 : ℝ))⌋

end

end A329974.P9487795647668354770

/-! ## A329974.P5763436020543786141

`ceil(∑[cosh(cos(cos(n)))])-1`
-/

namespace A329974.P5763436020543786141
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (Real.cos (Real.cos (n : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ - 1

end

end A329974.P5763436020543786141

/-! ## A329974.P15415509605402697479

`floor((n+1)/(1-acot(4)))`
-/

namespace A329974.P15415509605402697479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (1 - SequenceMachineLib.acot (4 : ℝ))⌋

end

end A329974.P15415509605402697479

/-! ## A329974.P9669348463455649961

`ceil((n-1)*atan(4)+ϕ)`
-/

namespace A329974.P9669348463455649961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 1 : ℝ) * Real.arctan (4 : ℝ) + Real.goldenRatio⌉

end

end A329974.P9669348463455649961

/-! ## A329974.P17266793455360722997

`n-floor((n+1)*cot(71))`
-/

namespace A329974.P17266793455360722997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(n + 1 : ℝ) * Real.cot (71 : ℝ)⌋

end

end A329974.P17266793455360722997

/-! ## A329974.P15526713332837105300

`ceil(n-(n+1)*cot(71))`
-/

namespace A329974.P15526713332837105300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) - (n + 1 : ℝ) * Real.cot (71 : ℝ)⌉

end

end A329974.P15526713332837105300

/-!
# A329975: Beatty sequence for 1 + x + x^2, where x is the real solution of 1/x + 1/(1+x+x^2) = 1.

The programs for A329975, there is no canonical definition to state claims against.
-/

/-! ## A329975.P4025801105692394502

`floor((log(8)+2)*(n+1))`
-/

namespace A329975.P4025801105692394502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.log (8 : ℝ) + 2) * (n + 1 : ℝ)⌋

end

end A329975.P4025801105692394502

/-! ## A329975.P5055758346540622418

`∑[char[∑[and(1, n)+12]]+4]`
-/

namespace A329975.P5055758346540622418
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 12

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329975.P5055758346540622418

/-! ## A329975.P7179054723287145128

`∑[A217096(record[xor(7, n)])+4]`
-/

namespace A329975.P7179054723287145128
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217096 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329975.P7179054723287145128

/-! ## A329975.P7673218635851984000

`A029919(Δ[n²])+1-n`
-/

namespace A329975.P7673218635851984000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029919 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (1 - (n : ℤ))

end

end A329975.P7673218635851984000

/-! ## A329975.P16940947463022105136

`∑[A055641(8*n+7)+4]`
-/

namespace A329975.P16940947463022105136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (8 * n + 7) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329975.P16940947463022105136

/-! ## A329975.P7546814035669269001

`∑[A217096(8*n+7)+4]`
-/

namespace A329975.P7546814035669269001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217096 (8 * n + 7) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329975.P7546814035669269001

/-! ## A329975.P14940107918516225412

`∑[5-A168046(8*n+7)]`
-/

namespace A329975.P14940107918516225412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A168046 (8 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329975.P14940107918516225412

/-! ## A329975.P4637360894676847323

`A059541(3*(n+1))-(n+1)`
-/

namespace A329975.P4637360894676847323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059541 (3 * (n + 1)) - (n + 1 : ℤ)

end

end A329975.P4637360894676847323

/-! ## A329975.P8282863497124537698

`A329833(3*(n+1))-(n+1)`
-/

namespace A329975.P8282863497124537698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329833 (3 * (n + 1)) - (n + 1 : ℤ)

end

end A329975.P8282863497124537698

/-! ## A329975.P13841873869836344443

`A144972(5*(n+1))-(n+1)`
-/

namespace A329975.P13841873869836344443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144972 (5 * (n + 1)) - (n + 1 : ℤ)

end

end A329975.P13841873869836344443

/-!
# A329976: Number of partitions p of n such that (number of numbers in p that have multiplicity 1) > (number of numbers in p having multiplicity > 1).

The programs for A329976, there is no canonical definition to state claims against.
-/

/-! ## A329976.P12010861907962509678

`A000041(n)-A330146(n)`
-/

namespace A329976.P12010861907962509678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A330146 n

end

end A329976.P12010861907962509678

/-! ## A329976.P10458835996913825305

`A213598(n)-A330146(n)`
-/

namespace A329976.P10458835996913825305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A330146 n

end

end A329976.P10458835996913825305

/-! ## A329976.P11139915741744143256

`sqrt(A001255(n))-A330146(n)`
-/

namespace A329976.P11139915741744143256
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A330146 n : ℝ)

end

end A329976.P11139915741744143256

/-! ## A329976.P3738035256546518469

`∑[A002865(n)]-A330146(n)`
-/

namespace A329976.P3738035256546518469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A330146 n

end

end A329976.P3738035256546518469

/-! ## A329976.P12895861672800730942

`A000065(n)+1-A330146(n)`
-/

namespace A329976.P12895861672800730942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A330146 n)

end

end A329976.P12895861672800730942

/-!
# A329977: Beatty sequence for the number x satisfying 1/x + 1/(log x) = 1.

The programs for A329977, there is no canonical definition to state claims against.
-/

/-! ## A329977.P11850847797591296701

`∑[4-char[7*n]]`
-/

namespace A329977.P11850847797591296701
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329977.P11850847797591296701

/-! ## A329977.P2422960468501741513

`abs(∑[8%gcd(7, n)-4])`
-/

namespace A329977.P2422960468501741513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((8 % Nat.gcd 7 n : ℕ) : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A329977.P2422960468501741513

/-! ## A329977.P13926612117646346825

`record[dr(n+3)+3*n]`
-/

namespace A329977.P13926612117646346825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n + 3 : ℤ) + 3 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329977.P13926612117646346825

/-! ## A329977.P6992340609645482518

`record[xor(3, n)]-floor(n/7)`
-/

namespace A329977.P6992340609645482518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - ⌊(n : ℚ) / 7⌋

end

end A329977.P6992340609645482518

/-! ## A329977.P9989762142594284283

`ceil(record[xor(3, n)]-n/7)`
-/

namespace A329977.P9989762142594284283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) - (n : ℚ) / 7⌉

end

end A329977.P9989762142594284283

/-! ## A329977.P11690645984570720189

`or(3, 4*n)-floor(n/7)`
-/

namespace A329977.P11690645984570720189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 (4 * n) : ℤ) - ⌊(n : ℚ) / 7⌋

end

end A329977.P11690645984570720189

/-! ## A329977.P13488409429953966156

`5*n+3-comp[or(7, n)]`
-/

namespace A329977.P13488409429953966156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 7 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n + 3 : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A329977.P13488409429953966156

/-! ## A329977.P17610788530583023434

`floor((n+1)*(tanh(2)+1)²)`
-/

namespace A329977.P17610788530583023434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * (Real.tanh (2 : ℝ) + 1) ^ 2⌋

end

end A329977.P17610788530583023434

/-! ## A329977.P2192598827467219286

`floor((cos(cos(1))+3)*(n+1))`
-/

namespace A329977.P2192598827467219286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.cos (Real.cos (1 : ℝ)) + 3) * (n + 1 : ℝ)⌋

end

end A329977.P2192598827467219286

/-! ## A329977.P10851868006885407968

`5*n+3-lt[val(n+1, 2), 3]`
-/

namespace A329977.P10851868006885407968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n + 3 : ℤ) - (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ)

end

end A329977.P10851868006885407968

/-!
# A329978: Beatty sequence for log x, where 1/x + 1/(log x) = 1.

The programs for A329978, there is no canonical definition to state claims against.
-/

/-! ## A329978.P11626705342623987774

`comp[floor(27*n/7)]`
-/

namespace A329978.P11626705342623987774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊27 * ((n : ℚ) / 7)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A329978.P11626705342623987774

/-! ## A329978.P2396886631249718202

`floor(∑[atan(gcd(2, n)+3)])`
-/

namespace A329978.P2396886631249718202
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (Nat.gcd 2 n + 3 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A329978.P2396886631249718202

/-! ## A329978.P3333233521234175220

`floor(∑[atan(n%2+4)])`
-/

namespace A329978.P3333233521234175220
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan ((n % 2 + 4 : ℕ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A329978.P3333233521234175220

/-! ## A329978.P3502445034689837611

`floor(∑[atan(and(1, n)+4)])`
-/

namespace A329978.P3502445034689837611
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (Nat.land 1 n + 4 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A329978.P3502445034689837611

/-! ## A329978.P6472289325360115113

`floor(∑[atan(5-and(1, n))])`
-/

namespace A329978.P6472289325360115113
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (5 - (Nat.land 1 n : ℤ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A329978.P6472289325360115113

/-! ## A329978.P15017065236715104174

`floor(sqrt(A324847((n+1)²)))`
-/

namespace A329978.P15017065236715104174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A324847 ((n + 1) ^ 2))

end

end A329978.P15017065236715104174

/-! ## A329978.P10619341226173017522

`floor(log(A303162(2*(n+1))))`
-/

namespace A329978.P10619341226173017522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A303162 (2 * (n + 1)) : ℝ)⌋

end

end A329978.P10619341226173017522

/-! ## A329978.P3263043541950373828

`floor(log2(A221997(2*(n+1))))`
-/

namespace A329978.P3263043541950373828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A221997 (2 * (n + 1))).toNat

end

end A329978.P3263043541950373828

/-! ## A329978.P12725056606621970313

`ceil((record[A138236(n+1)]+1)/7)+n`
-/

namespace A329978.P12725056606621970313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1 : ℚ) / 7⌉ + (n : ℤ)

end

end A329978.P12725056606621970313

/-! ## A329978.P1169522070284249542

`A002265(A314191(n+1)-1)`
-/

namespace A329978.P1169522070284249542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A314191 (n + 1) - 1).toNat

end

end A329978.P1169522070284249542

/-!
# A329979: Prime numbers which can be represented as p^i * q^j - (p + q) where p and q are distinct odd primes and i,j > 0.

The programs for A329979, there is no canonical definition to state claims against.
-/

/-! ## A329979.P4900266232182769855

`p?[A276394(A276391(n+1))+n+5]`
-/

namespace A329979.P4900266232182769855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276394 (A276391 (n + 1)).toNat + (n + 5 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A329979.P4900266232182769855

/-! ## A329979.P12066781537228472896

`p?[A171948(n+2)+5]`
-/

namespace A329979.P12066781537228472896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171948 (n + 2) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A329979.P12066781537228472896

/-! ## A329979.P11376882768575152645

`p?[eq[A033327(n+1), A298307(n)]]`
-/

namespace A329979.P11376882768575152645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033327 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298307 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A329979.P11376882768575152645

/-! ## A329979.P10728604223032653993

`lt[A089981(A323436(n)), A272351(n+3)]`
-/

namespace A329979.P10728604223032653993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089981 (A323436 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272351 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A329979.P10728604223032653993

/-! ## A329979.P1477087701377462734

`A151800(A325789(3*(n+1))+A140868(n+1))`
-/

namespace A329979.P1477087701377462734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A325789 (3 * (n + 1)) + A140868 (n + 1)).toNat

end

end A329979.P1477087701377462734

/-!
# A329981: a(1) = 0, and for n > 0, a(n+1) = floor(k / 3) where k is the number of terms equal to a(n) among the first n terms.

The programs for A329981, there is no canonical definition to state claims against.
-/

/-! ## A329981.P15087999407676364312

`A330709(A106249(n))/A000688(A261962(n))`
-/

namespace A329981.P15087999407676364312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330709 (A106249 n).toNat : ℚ) / (A000688 (A261962 n).toNat : ℚ)

end

end A329981.P15087999407676364312

/-! ## A329981.P5730737907611732546

`A330709(A106249(n))+A000038(A000045(n+1))`
-/

namespace A329981.P5730737907611732546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330709 (A106249 n).toNat + A000038 (A000045 (n + 1)).toNat

end

end A329981.P5730737907611732546

/-! ## A329981.P4455197664067953150

`A228100(A260428(n+1))%A037870(A027620(n))`
-/

namespace A329981.P4455197664067953150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228100 (A260428 (n + 1)).toNat) (A037870 (A027620 n).toNat)

end

end A329981.P4455197664067953150

/-! ## A329981.P12025546181706907866

`A330709(A106249(n))^A000045(A020639(3*n+1))`
-/

namespace A329981.P12025546181706907866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330709 (A106249 n).toNat : ℚ) ^ (A000045 (A020639 (3 * n + 1)).toNat : ℤ)

end

end A329981.P12025546181706907866

/-! ## A329981.P1237798802190978738

`A037814(A321203(n+2))`
-/

namespace A329981.P1237798802190978738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037814 (A321203 (n + 2)).toNat

end

end A329981.P1237798802190978738

/-!
# A329984: a(1) = 0 and for n > 0, a(n+1) is the odd part of k where k is the number of terms equal to a(n) among the first n terms.

The programs for A329984, there is no canonical definition to state claims against.
-/

/-! ## A329984.P5269591061876749530

`A238845(record[or(n, A316964(n))])`
-/

namespace A329984.P5269591061876749530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A316964 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238845 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A329984.P5269591061876749530

/-! ## A329984.P8942726078177919396

`A028234(A057354(3*n+4))%A274018(2*n)`
-/

namespace A329984.P8942726078177919396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028234 (A057354 (3 * n + 4)).toNat) (A274018 (2 * n))

end

end A329984.P8942726078177919396

/-! ## A329984.P8514202818972757732

`gcd(A106617(A259110(n)), A123579(n))`
-/

namespace A329984.P8514202818972757732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106617 (A259110 n).toNat) (A123579 n)

end

end A329984.P8514202818972757732

/-! ## A329984.P9235114518889354343

`A028234(comp[A174474(n)])%A001222(2^(n+1))`
-/

namespace A329984.P9235114518889354343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174474 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028234 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)) (A001222 (2 ^ (n + 1)))

end

end A329984.P9235114518889354343

/-! ## A329984.P3729377620151296740

`gcd(round(2*n/3), A250090(A325238(n+1)))`
-/

namespace A329984.P3729377620151296740
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))) (A250090 (A325238 (n + 1)).toNat)

end

end A329984.P3729377620151296740

/-!
# A329985: a(1) = 1 and for n > 0, a(n+1) = a(k) - a(n) where k is the number of terms equal to a(n) among the first n terms.

The programs for A329985, there is no canonical definition to state claims against.
-/

/-! ## A329985.P463779594492581131

`A363275(n)+A360071(A184815(2*(n+1)))`
-/

namespace A329985.P463779594492581131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363275 n + A360071 (A184815 (2 * (n + 1))).toNat

end

end A329985.P463779594492581131

/-!
# A329987: Beatty sequence for the number x satisfying 1/x + 1/2^x = 1.

The programs for A329987, there is no canonical definition to state claims against.
-/

/-! ## A329987.P11695453804778309269

`floor(26*(n+1)/17)`
-/

namespace A329987.P11695453804778309269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊26 * ((n + 1 : ℚ) / 17)⌋

end

end A329987.P11695453804778309269

/-! ## A329987.P15117296399951833654

`abs(ceil((n+1)/cos(4)))`
-/

namespace A329987.P15117296399951833654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈(n + 1 : ℝ) / Real.cos (4 : ℝ)⌉|

end

end A329987.P15117296399951833654

/-! ## A329987.P13677722834426639375

`-ceil((n+1)/cos(4))`
-/

namespace A329987.P13677722834426639375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈(n + 1 : ℝ) / Real.cos (4 : ℝ)⌉

end

end A329987.P13677722834426639375

/-! ## A329987.P16134545451724652689

`ceil(log(A218078(2*n+1)))`
-/

namespace A329987.P16134545451724652689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A218078 (2 * n + 1) : ℝ)⌉

end

end A329987.P16134545451724652689

/-! ## A329987.P4179992794785345002

`∑[gcd(2, A172336(3*(n+1)))]`
-/

namespace A329987.P4179992794785345002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A172336 (3 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329987.P4179992794785345002

/-! ## A329987.P11747331080584665926

`A003056(∑[A329842(n+1)])`
-/

namespace A329987.P11747331080584665926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A329987.P11747331080584665926

/-! ## A329987.P15291041115611973978

`A002266(A059554(2*(n+1)))`
-/

namespace A329987.P15291041115611973978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A059554 (2 * (n + 1))).toNat

end

end A329987.P15291041115611973978

/-! ## A329987.P9939587800198858126

`A057365(A184516(2*(n+1)))`
-/

namespace A329987.P9939587800198858126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057365 (A184516 (2 * (n + 1))).toNat

end

end A329987.P9939587800198858126

/-! ## A329987.P9944633888259114287

`A057365(A184738(2*(n+1)))`
-/

namespace A329987.P9944633888259114287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057365 (A184738 (2 * (n + 1))).toNat

end

end A329987.P9944633888259114287

/-!
# A329988: Beatty sequence for 2^x, where 1/x + 1/2^x = 1.

The programs for A329988, there is no canonical definition to state claims against.
-/

/-! ## A329988.P1271549695781195471

`floor((52*n+50)/18)`
-/

namespace A329988.P1271549695781195471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(52 * n + 50 : ℚ) / 18⌋

end

end A329988.P1271549695781195471

/-! ## A329988.P7060345833548323282

`comp[floor((1-n)/cos(4))]`
-/

namespace A329988.P7060345833548323282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 - (n : ℤ) : ℝ) / Real.cos (4 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A329988.P7060345833548323282

/-! ## A329988.P1011934796429693282

`∑[ceil(ratio[dr(n+1)])]+n`
-/

namespace A329988.P1011934796429693282
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f2 (n + 1) : ℚ) / (f2 n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A329988.P1011934796429693282

/-! ## A329988.P3816983090125095101

`∑[ceil(atan(dr(n+2)))]+n`
-/

namespace A329988.P3816983090125095101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (SequenceMachineLib.digitalRoot (n + 2 : ℤ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A329988.P3816983090125095101

/-! ## A329988.P10331015099881641838

`∑[3-val(n+1, 9)]-1`
-/

namespace A329988.P10331015099881641838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (SequenceMachineLib.valuation (n + 1) 9 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A329988.P10331015099881641838

/-! ## A329988.P3361418302619499119

`∑[6/a(val(n+1, 9))]` with `a(0)=2`
-/

namespace A329988.P3361418302619499119
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  6 / f1 (SequenceMachineLib.valuation (n + 1) 9)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329988.P3361418302619499119

/-! ## A329988.P8169985100740567298

`round(log(A067416(n+1)))`
-/

namespace A329988.P8169985100740567298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A067416 (n + 1) : ℝ))

end

end A329988.P8169985100740567298

/-! ## A329988.P5770207656579313361

`round(log(A280070(n+2)))`
-/

namespace A329988.P5770207656579313361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A280070 (n + 2) : ℝ))

end

end A329988.P5770207656579313361

/-! ## A329988.P3737502049943338490

`A249123(n+2)+n-1`
-/

namespace A329988.P3737502049943338490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249123 (n + 2) + ((n : ℤ) - 1)

end

end A329988.P3737502049943338490

/-! ## A329988.P18102105154812235565

`ceil(log(A292485(2*n+1)))`
-/

namespace A329988.P18102105154812235565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A292485 (2 * n + 1) : ℝ)⌉

end

end A329988.P18102105154812235565

/-!
# A329990: Beatty sequence for the number x satisfying 1/x + 1/3^x = 1.

The programs for A329990, there is no canonical definition to state claims against.
-/

/-! ## A329990.P7688267541420265014

`comp[floor(n*log(68))]`
-/

namespace A329990.P7688267541420265014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.log (68 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A329990.P7688267541420265014

/-! ## A329990.P6167541459804843313

`floor((tanh(acot(3))+1)*(n+1))`
-/

namespace A329990.P6167541459804843313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.tanh (SequenceMachineLib.acot (3 : ℝ)) + 1) * (n + 1 : ℝ)⌋

end

end A329990.P6167541459804843313

/-! ## A329990.P9859036440484452421

`ceil((n+1)*tanh(acot(3))+n)`
-/

namespace A329990.P9859036440484452421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.tanh (SequenceMachineLib.acot (3 : ℝ)) + (n : ℝ)⌉

end

end A329990.P9859036440484452421

/-! ## A329990.P723198765051145766

`lt[cot((n+1)*sqrt(5)/3), 1]`
-/

namespace A329990.P723198765051145766
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot ((n + 1 : ℝ) * Real.sqrt (5 : ℝ) / 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A329990.P723198765051145766

/-! ## A329990.P8378371133949655160

`ceil((n+1)/(4-atan(1)))+n`
-/

namespace A329990.P8378371133949655160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / (4 - Real.arctan (1 : ℝ))⌉ + (n : ℤ)

end

end A329990.P8378371133949655160

/-! ## A329990.P11253541223463638586

`n-floor((n+1)/(acot(1)-4))`
-/

namespace A329990.P11253541223463638586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(n + 1 : ℝ) / (SequenceMachineLib.acot (1 : ℝ) - 4)⌋

end

end A329990.P11253541223463638586

/-! ## A329990.P9839996637888772919

`round(((n+1)/acot(1)²+n)/2)`
-/

namespace A329990.P9839996637888772919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1 : ℝ) / SequenceMachineLib.acot (1 : ℝ) ^ 2 + (n : ℝ)) / 2)

end

end A329990.P9839996637888772919

/-! ## A329990.P4879038809924218115

`floor((n+1)*acot(acot(9)+3))+n+1`
-/

namespace A329990.P4879038809924218115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * SequenceMachineLib.acot (SequenceMachineLib.acot (9 : ℝ) + 3)⌋ + (n + 1 : ℤ)

end

end A329990.P4879038809924218115

/-! ## A329990.P11421070846557580486

`round(sqrt(A283968(3*n)))`
-/

namespace A329990.P11421070846557580486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A283968 (3 * n) : ℝ))

end

end A329990.P11421070846557580486

/-! ## A329990.P9746676718547829206

`floor(log2(A190570(2*(n+1)))-n)`
-/

namespace A329990.P9746676718547829206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (A190570 (2 * (n + 1)) : ℝ) - (n : ℝ)⌋

end

end A329990.P9746676718547829206

/-!
# A329991: Beatty sequence for 3^x, where 1/x + 1/3^x = 1.

The programs for A329991, there is no canonical definition to state claims against.
-/

/-! ## A329991.P13686355672510158081

`comp[floor(n*sqrt(log2(7)))]`
-/

namespace A329991.P13686355672510158081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (Real.logb 2 (7 : ℝ))⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A329991.P13686355672510158081

/-! ## A329991.P10291017033158275801

`floor((atan(11)+1)*(n+1))`
-/

namespace A329991.P10291017033158275801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.arctan (11 : ℝ) + 1) * (n + 1 : ℝ)⌋

end

end A329991.P10291017033158275801

/-! ## A329991.P13017371729433864291

`ceil((n+1)*atan(11)+n)`
-/

namespace A329991.P13017371729433864291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.arctan (11 : ℝ) + (n : ℝ)⌉

end

end A329991.P13017371729433864291

/-! ## A329991.P11202598919564985486

`round(n*atan(11)+2+n)`
-/

namespace A329991.P11202598919564985486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.arctan (11 : ℝ) + 2 + (n : ℝ))

end

end A329991.P11202598919564985486

/-! ## A329991.P80092797482764069

`ceil((n+1)*acot(acot(11))+n)`
-/

namespace A329991.P80092797482764069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * SequenceMachineLib.acot (SequenceMachineLib.acot (11 : ℝ)) + (n : ℝ)⌉

end

end A329991.P80092797482764069

/-! ## A329991.P10188166270707256444

`round(n*acot(acot(11))+n+2)`
-/

namespace A329991.P10188166270707256444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * SequenceMachineLib.acot (SequenceMachineLib.acot (11 : ℝ)) + (n + 2 : ℝ))

end

end A329991.P10188166270707256444

/-! ## A329991.P3598116883259130480

`floor((n+1)*acot(acot(11)))+n+1`
-/

namespace A329991.P3598116883259130480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * SequenceMachineLib.acot (SequenceMachineLib.acot (11 : ℝ))⌋ + (n + 1 : ℤ)

end

end A329991.P3598116883259130480

/-! ## A329991.P9198097521366960867

`A329925(n+1)+1+n`
-/

namespace A329991.P9198097521366960867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329925 (n + 1) + 1 + (n : ℤ)

end

end A329991.P9198097521366960867

/-! ## A329991.P11443971571540482177

`∑[char[A348553(2*n+1)]+2]`
-/

namespace A329991.P11443971571540482177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329991.P11443971571540482177

/-!
# A329993: Beatty sequence for x^2, where 1/x^2 + 1/2^x = 1.

The programs for A329993, there is no canonical definition to state claims against.
-/

/-! ## A329993.P5460020224573313878

`comp[floor(n/acot(log2(5)))]`
-/

namespace A329993.P5460020224573313878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / SequenceMachineLib.acot (Real.logb 2 (5 : ℝ))⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A329993.P5460020224573313878

/-! ## A329993.P11938235888713078477

`floor((n+1)*(root(52, 4)-1))`
-/

namespace A329993.P11938235888713078477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * ((52 : ℝ) ^ (1 / (4 : ℝ)) - 1)⌋

end

end A329993.P11938235888713078477

/-! ## A329993.P8578485460908047895

`lt[3/(1-a(n-1)), 1]` with `a(0)=32`
-/

namespace A329993.P8578485460908047895
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [32] fun n f1 =>
  3 / (1 - f1 (n - 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A329993.P8578485460908047895

/-! ## A329993.P9544077374733696306

`ceil((n+1)*sqrt(sin(1)+2))-1`
-/

namespace A329993.P9544077374733696306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.sqrt (Real.sin (1 : ℝ) + 2)⌉ - 1

end

end A329993.P9544077374733696306

/-! ## A329993.P4902644998296818502

`comp[round((1-n)*(cot(2)-2))+2]`
-/

namespace A329993.P4902644998296818502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((1 - (n : ℤ) : ℝ) * (Real.cot (2 : ℝ) - 2)) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A329993.P4902644998296818502

/-! ## A329993.P3369891860579996640

`comp[2-round((n-2)*(cot(2)-2))]`
-/

namespace A329993.P3369891860579996640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - SequenceMachineLib.roundAway (((n : ℤ) - 2 : ℝ) * (Real.cot (2 : ℝ) - 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A329993.P3369891860579996640

/-! ## A329993.P14578946708786981191

`∑[Δ[A228177(n)]-3]`
-/

namespace A329993.P14578946708786981191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228177 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329993.P14578946708786981191

/-! ## A329993.P8837704574603047988

`round(A044613(n+1)/38)`
-/

namespace A329993.P8837704574603047988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A044613 (n + 1) : ℚ) / 38)

end

end A329993.P8837704574603047988

/-! ## A329993.P985179579721594008

`round(A195233(n+1)/54)`
-/

namespace A329993.P985179579721594008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A195233 (n + 1) : ℚ) / 54)

end

end A329993.P985179579721594008

/-! ## A329993.P15254171820319152138

`round(log(A229514(2*n+1)))`
-/

namespace A329993.P15254171820319152138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A229514 (2 * n + 1) : ℝ))

end

end A329993.P15254171820319152138

/-!
# A329994: Beatty sequence for 2^x, where 1/x^2 + 1/2^x = 1.

The programs for A329994, there is no canonical definition to state claims against.
-/

/-! ## A329994.P10766572381956660926

`floor(59*(n+1)/24)`
-/

namespace A329994.P10766572381956660926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊59 * ((n + 1 : ℚ) / 24)⌋

end

end A329994.P10766572381956660926

/-! ## A329994.P5539418274871816649

`round(n*(2-cot(2)))+2`
-/

namespace A329994.P5539418274871816649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * (2 - Real.cot (2 : ℝ))) + 2

end

end A329994.P5539418274871816649

/-! ## A329994.P10411921331262770168

`2-round(n*(cot(2)-2))`
-/

namespace A329994.P10411921331262770168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - SequenceMachineLib.roundAway ((n : ℝ) * (Real.cot (2 : ℝ) - 2))

end

end A329994.P10411921331262770168

/-! ## A329994.P7573982354641044777

`comp[floor(n*sqrt(sin(1)+2))]`
-/

namespace A329994.P7573982354641044777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (Real.sin (1 : ℝ) + 2)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A329994.P7573982354641044777

/-! ## A329994.P16273394381421300547

`round((n+2)*atan(9)+n-1)`
-/

namespace A329994.P16273394381421300547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℝ) * Real.arctan (9 : ℝ) + ((n : ℤ) - 1 : ℝ))

end

end A329994.P16273394381421300547

/-! ## A329994.P1040903763640684746

`comp[A228177(n)-3*n]`
-/

namespace A329994.P1040903763640684746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228177 n - (3 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A329994.P1040903763640684746

/-! ## A329994.P1735574648522589465

`A195174(10*(n+1))+n`
-/

namespace A329994.P1735574648522589465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (10 * (n + 1)) + (n : ℤ)

end

end A329994.P1735574648522589465

/-! ## A329994.P14265632006244337594

`ceil(sqrt(A008807(11*n)))+1`
-/

namespace A329994.P14265632006244337594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A008807 (11 * n) : ℝ)⌉ + 1

end

end A329994.P14265632006244337594

/-! ## A329994.P16485019040193323674

`∑[char[A329828(n+1)]+2]`
-/

namespace A329994.P16485019040193323674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329828 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329994.P16485019040193323674

/-! ## A329994.P11444896793953187971

`A038153(n+1)%A091574(n)`
-/

namespace A329994.P11444896793953187971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038153 (n + 1)) (A091574 n)

end

end A329994.P11444896793953187971

/-!
# A329996: Beatty sequence for x^3, where 1/x^3 + 1/3^x = 1.

The programs for A329996, there is no canonical definition to state claims against.
-/

/-! ## A329996.P3389831198967538618

`comp[floor(n*log(31))]`
-/

namespace A329996.P3389831198967538618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.log (31 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A329996.P3389831198967538618

/-! ## A329996.P15984150083985076415

`floor((n+1)/sin(893))`
-/

namespace A329996.P15984150083985076415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.sin (893 : ℝ)⌋

end

end A329996.P15984150083985076415

/-! ## A329996.P3647026013397863312

`floor((n+1)*sinh(log(π)))`
-/

namespace A329996.P3647026013397863312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sinh (Real.log Real.pi)⌋

end

end A329996.P3647026013397863312

/-! ## A329996.P10189765648795313271

`floor(10*(n+1)*sin(3))`
-/

namespace A329996.P10189765648795313271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊10 * ((n + 1 : ℝ) * Real.sin (3 : ℝ))⌋

end

end A329996.P10189765648795313271

/-! ## A329996.P1524485491100920091

`floor((n+1)/cos(11/2))`
-/

namespace A329996.P1524485491100920091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.cos ((11 : ℚ) / 2 : ℝ)⌋

end

end A329996.P1524485491100920091

/-! ## A329996.P4044034404020837359

`floor((n+1)/atan(6/7))`
-/

namespace A329996.P4044034404020837359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.arctan ((6 : ℚ) / 7 : ℝ)⌋

end

end A329996.P4044034404020837359

/-! ## A329996.P13662395464441669735

`floor((n+1)/acot(7/6))`
-/

namespace A329996.P13662395464441669735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / SequenceMachineLib.acot ((7 : ℚ) / 6 : ℝ)⌋

end

end A329996.P13662395464441669735

/-! ## A329996.P12988390117845607917

`floor(log2(A356563(n+1)))`
-/

namespace A329996.P12988390117845607917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A356563 (n + 1)).toNat

end

end A329996.P12988390117845607917

/-! ## A329996.P8571610178770547233

`floor(log2(A096882(n+1))/2)`
-/

namespace A329996.P8571610178770547233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (A096882 (n + 1) : ℝ) / 2⌋

end

end A329996.P8571610178770547233

/-! ## A329996.P1370709612134683689

`floor(sqrt(A234717(n+1)+sqrt(n)))`
-/

namespace A329996.P1370709612134683689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A234717 (n + 1) : ℝ) + Real.sqrt (n : ℝ))⌋

end

end A329996.P1370709612134683689

/-!
# A329997: Beatty sequence for 3^x, where 1/x^3 + 1/3^x = 1.

The programs for A329997, there is no canonical definition to state claims against.
-/

/-! ## A329997.P7277075125797874956

`comp[floor(n*sinh(log(π)))]`
-/

namespace A329997.P7277075125797874956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sinh (Real.log Real.pi)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A329997.P7277075125797874956

/-! ## A329997.P10183098234693121056

`floor(24*(n+1)/7)`
-/

namespace A329997.P10183098234693121056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊24 * ((n + 1 : ℚ) / 7)⌋

end

end A329997.P10183098234693121056

/-! ## A329997.P14361631257567457689

`round(n*sinh(log(7)))+3`
-/

namespace A329997.P14361631257567457689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.sinh (Real.log (7 : ℝ))) + 3

end

end A329997.P14361631257567457689

/-! ## A329997.P1496355551759728406

`ceil(record[6*xor(3, n)]/7)`
-/

namespace A329997.P1496355551759728406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 7⌉

end

end A329997.P1496355551759728406

/-! ## A329997.P3913116670584669449

`round(3*record[xor(7, n)]/7)`
-/

namespace A329997.P3913116670584669449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 7))

end

end A329997.P3913116670584669449

/-! ## A329997.P11258217297476649444

`abs(floor((n+1)*cot(cos(5))))`
-/

namespace A329997.P11258217297476649444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(n + 1 : ℝ) * Real.cot (Real.cos (5 : ℝ))⌋|

end

end A329997.P11258217297476649444

/-! ## A329997.P7656812763261622027

`abs(ceil((n+1)/sin(cot(5))))`
-/

namespace A329997.P7656812763261622027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈(n + 1 : ℝ) / Real.sin (Real.cot (5 : ℝ))⌉|

end

end A329997.P7656812763261622027

/-! ## A329997.P8901876702124847629

`-ceil((n+1)/sin(cot(5)))`
-/

namespace A329997.P8901876702124847629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈(n + 1 : ℝ) / Real.sin (Real.cot (5 : ℝ))⌉

end

end A329997.P8901876702124847629

/-! ## A329997.P9997794129684623535

`ceil(6*xor(3, 4*n)/7)`
-/

namespace A329997.P9997794129684623535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(6 * Nat.xor 3 (4 * n) : ℚ) / 7⌉

end

end A329997.P9997794129684623535

/-! ## A329997.P8047291672320970563

`ceil((n+1)*atan(7)+2*n+1)`
-/

namespace A329997.P8047291672320970563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.arctan (7 : ℝ) + (2 * n + 1 : ℝ)⌉

end

end A329997.P8047291672320970563

/-!
# A329999: Beatty sequence for sqrt(x-1), where 1/sqrt(x-1) + 1/sqrt(x+1) = 1.

The programs for A329999, there is no canonical definition to state claims against.
-/

/-! ## A329999.P210135942998458660

`floor((n+1)*sqrt(35/11))`
-/

namespace A329999.P210135942998458660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt ((35 : ℚ) / 11 : ℝ)⌋

end

end A329999.P210135942998458660

/-! ## A329999.P876194868533438686

`ceil(∑[(atan(7*n)+2)/2])`
-/

namespace A329999.P876194868533438686
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.arctan (7 * n : ℝ) + 2) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A329999.P876194868533438686

/-! ## A329999.P11466257845859411381

`ceil((n+1)/atan(log(27))+n)`
-/

namespace A329999.P11466257845859411381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.arctan (Real.log (27 : ℝ)) + (n : ℝ)⌉

end

end A329999.P11466257845859411381

/-! ## A329999.P9839744416337715320

`floor((n+1)/atan(log(27))+n)+1`
-/

namespace A329999.P9839744416337715320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.arctan (Real.log (27 : ℝ)) + (n : ℝ)⌋ + 1

end

end A329999.P9839744416337715320

/-! ## A329999.P1720084505297665246

`comp[floor(2*n*(sin(1)+1)/ϕ)]`
-/

namespace A329999.P1720084505297665246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((n : ℝ) * (Real.sin (1 : ℝ) + 1) / Real.goldenRatio)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A329999.P1720084505297665246

/-! ## A329999.P14710245302233102523

`ceil(∑[acot(acot(11*(n+8)))]/2)+n`
-/

namespace A329999.P14710245302233102523
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (SequenceMachineLib.acot (11 * (n + 8) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(∑ j ∈ Finset.range (n + 1), f1 j) / 2⌉ + (n : ℤ)

end

end A329999.P14710245302233102523

/-! ## A329999.P6742415978031508503

`ceil(∑[ratio[A088352(n)]])`
-/

namespace A329999.P6742415978031508503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088352 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A329999.P6742415978031508503

/-! ## A329999.P9806491555842081502

`∑[2-char[A276855(n)]]`
-/

namespace A329999.P9806491555842081502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276855 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329999.P9806491555842081502

/-! ## A329999.P762312560122805803

`∑[A105565(n+9)]+n`
-/

namespace A329999.P762312560122805803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105565 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A329999.P762312560122805803

/-! ## A329999.P15029337681541140425

`A292637(n+1)-2*(n+1)`
-/

namespace A329999.P15029337681541140425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292637 (n + 1) - (2 * (n + 1) : ℤ)

end

end A329999.P15029337681541140425

