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
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B005.C000
import Seq.B005.C001
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
import Seq.Opaque.C010
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A051900: Minimal 2^n safe-primes: a(n) = 2^n*A051886(n) + 1 (a prime number).

The programs for A051900, there is no canonical definition to state claims against.
-/

/-! ## A051900.P12148792583286747866

`2^n*A051886(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051900.P12148792583286747866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A051886 n + 1

end

end A051900.P12148792583286747866

/-! ## A051900.P12436274329626046008

`A000079(n)/A051886(n)^(-1)+1`
-/

namespace A051900.P12436274329626046008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / (A051886 n : ℚ) ^ (-1 : ℤ) + 1

end

end A051900.P12436274329626046008

/-!
# A051901: Minimal factorial safe-primes: a prime p = a(n) here if (p-1)/n! = A051888(n).

The programs for A051901, there is no canonical definition to state claims against.
-/

/-! ## A051901.P12326487258639105245

`1+n!*A051888(n)`
-/

namespace A051901.P12326487258639105245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + (Nat.factorial n : ℤ) * A051888 n

end

end A051901.P12326487258639105245

/-! ## A051901.P5543682209160501996

`1+A000142(n)*A051888(n)`
-/

namespace A051901.P5543682209160501996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000142 n * A051888 n

end

end A051901.P5543682209160501996

/-! ## A051901.P8416440289190966616

`A379743(A000142(n)+1)`
-/

namespace A051901.P8416440289190966616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379743 (A000142 n + 1).toNat

end

end A051901.P8416440289190966616

/-! ## A051901.P8472194309845965896

`A151800(A000142(n)*A305149(2*(n+2)))`
-/

namespace A051901.P8472194309845965896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A000142 n * A305149 (2 * (n + 2))).toNat

end

end A051901.P8472194309845965896

/-!
# A051902: Minimal primorial safe primes: p and primorial*p + 1 are both primes.

The programs for A051902, there is no canonical definition to state claims against.
-/

/-! ## A051902.P8896629661905080109

`1+A002110(n+1)*A051887(n+1)`
-/

namespace A051902.P8896629661905080109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A002110 (n + 1) * A051887 (n + 1)

end

end A051902.P8896629661905080109

/-! ## A051902.P4681987252516095152

`p?[A293712(A120118(n))]`
-/

namespace A051902.P4681987252516095152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293712 (A120118 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051902.P4681987252516095152

/-!
# A051903: Maximum exponent in the prime factorization of n.

The programs for A051903, the canonical program `A051903.P13920478898438787932` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051903 has offset 1).

The definition of A051903 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051903.P13920478898438787932

`a((n+1)/∏{p}[n+1, #]-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051903

/-- `a((n+1)/∏{p}[n+1, #]-1)+1` -/
def P13920478898438787932.Spec : Prop :=
  ∀ n, (P13920478898438787932.a n : ℤ) = A051903 (n + 1)

theorem P13920478898438787932.correct : P13920478898438787932.Spec := by
  intro n
  simp only [A051903, Nat.add_sub_cancel]

end A051903

/-! ## A051903.P7252281211754889160

`A067132(n+1)-1`
-/

namespace A051903.P7252281211754889160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 (n + 1) - 1

end

end A051903.P7252281211754889160

namespace A051903

/-- `A067132(n+1)-1` -/
def P7252281211754889160.Spec : Prop :=
  ∀ n, P7252281211754889160.a n = A051903 (n + 1)

theorem P7252281211754889160.correct : P7252281211754889160.Spec := by
  intro n
  simp only [A051903, Nat.add_sub_cancel, A051903.P7252281211754889160.a, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, A067132, A067132.P2149404699775634079.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051903

/-! ## A051903.P2819854233580519491

`val(A046523(n+1), 2)`
-/

namespace A051903.P2819854233580519491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A046523 (n + 1)).toNat 2

end

end A051903.P2819854233580519491

namespace A051903

/-- `val(A046523(n+1), 2)` -/
def P2819854233580519491.Spec : Prop :=
  ∀ n, (P2819854233580519491.a n : ℤ) = A051903 (n + 1)

end A051903

/-! ## A051903.P12759012430104857784

`val(A328400(n+1), 2)`
-/

namespace A051903.P12759012430104857784
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A328400 (n + 1)).toNat 2

end

end A051903.P12759012430104857784

namespace A051903

/-- `val(A328400(n+1), 2)` -/
def P12759012430104857784.Spec : Prop :=
  ∀ n, (P12759012430104857784.a n : ℤ) = A051903 (n + 1)

end A051903

/-! ## A051903.P16557651322965421380

`val(A359600(n+1), 3)`
-/

namespace A051903.P16557651322965421380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A359600 (n + 1)).toNat 3

end

end A051903.P16557651322965421380

namespace A051903

/-- `val(A359600(n+1), 3)` -/
def P16557651322965421380.Spec : Prop :=
  ∀ n, (P16557651322965421380.a n : ℤ) = A051903 (n + 1)

end A051903

/-! ## A051903.P4434940862158935762

`val(A278254(n+1), 4)`
-/

namespace A051903.P4434940862158935762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278254 (n + 1)).toNat 4

end

end A051903.P4434940862158935762

namespace A051903

/-- `val(A278254(n+1), 4)` -/
def P4434940862158935762.Spec : Prop :=
  ∀ n, (P4434940862158935762.a n : ℤ) = A051903 (n + 1)

end A051903

/-! ## A051903.P9397153757069818358

`∑{e}[A238745(n+1), #]`
-/

namespace A051903.P9397153757069818358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238745 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A051903.P9397153757069818358

namespace A051903

/-- `∑{e}[A238745(n+1), #]` -/
def P9397153757069818358.Spec : Prop :=
  ∀ n, (P9397153757069818358.a n : ℤ) = A051903 (n + 1)

end A051903

/-! ## A051903.P16784914310730954121

`A188385(n+1)/(n+1)`
-/

namespace A051903.P16784914310730954121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188385 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A051903.P16784914310730954121

namespace A051903

/-- `A188385(n+1)/(n+1)` -/
def P16784914310730954121.Spec : Prop :=
  ∀ n, P16784914310730954121.a n = (A051903 (n + 1) : ℚ)

end A051903

/-! ## A051903.P4575188202596131254

`a(A003557(n+1)-1)+1` with `a(0)=0`
-/

namespace A051903.P4575188202596131254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A003557 (n + 1) - 1).toNat + 1

end

end A051903.P4575188202596131254

namespace A051903

/-- `a(A003557(n+1)-1)+1` -/
def P4575188202596131254.Spec : Prop :=
  ∀ n, (P4575188202596131254.a n : ℤ) = A051903 (n + 1)

end A051903

/-! ## A051903.P10418963153404417148

`1+a((n+1)/A007947(n+1)-1)` with `a(0)=0`
-/

namespace A051903.P10418963153404417148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ) - 1)).toNat

end

end A051903.P10418963153404417148

namespace A051903

/-- `1+a((n+1)/A007947(n+1)-1)` -/
def P10418963153404417148.Spec : Prop :=
  ∀ n, (P10418963153404417148.a n : ℤ) = A051903 (n + 1)

theorem P10418963153404417148.correct : P10418963153404417148.Spec := by
  intro n
  simp only [A051903, Nat.add_sub_cancel, A051903.P10418963153404417148.a, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051903

/-! ## A051903.P10281856851116832483

`A007814(A046523(n+1))`
-/

namespace A051903.P10281856851116832483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A046523 (n + 1)).toNat

end

end A051903.P10281856851116832483

namespace A051903

/-- `A007814(A046523(n+1))` -/
def P10281856851116832483.Spec : Prop :=
  ∀ n, P10281856851116832483.a n = A051903 (n + 1)

end A051903

/-! ## A051903.P6508079538630019736

`A023443(A067132(n+1))`
-/

namespace A051903.P6508079538630019736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A067132 (n + 1)).toNat

end

end A051903.P6508079538630019736

namespace A051903

/-- `A023443(A067132(n+1))` -/
def P6508079538630019736.Spec : Prop :=
  ∀ n, P6508079538630019736.a n = A051903 (n + 1)

end A051903

/-! ## A051903.P4803868176615705247

`A051282(A101296(n+1))`
-/

namespace A051903.P4803868176615705247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051282 (A101296 (n + 1)).toNat

end

end A051903.P4803868176615705247

namespace A051903

/-- `A051282(A101296(n+1))` -/
def P4803868176615705247.Spec : Prop :=
  ∀ n, P4803868176615705247.a n = A051903 (n + 1)

end A051903

/-! ## A051903.P4642064600110057924

`A067029(A089247(n+1))`
-/

namespace A051903.P4642064600110057924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A089247 (n + 1)).toNat

end

end A051903.P4642064600110057924

namespace A051903

/-- `A067029(A089247(n+1))` -/
def P4642064600110057924.Spec : Prop :=
  ∀ n, P4642064600110057924.a n = A051903 (n + 1)

end A051903

/-! ## A051903.P7598378613277407914

`A001222(A238745(n+1))`
-/

namespace A051903.P7598378613277407914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A238745 (n + 1)).toNat

end

end A051903.P7598378613277407914

namespace A051903

/-- `A001222(A238745(n+1))` -/
def P7598378613277407914.Spec : Prop :=
  ∀ n, P7598378613277407914.a n = A051903 (n + 1)

end A051903

/-! ## A051903.P4373917834329708156

`A061395(A181819(n+1))`
-/

namespace A051903.P4373917834329708156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A181819 (n + 1)).toNat

end

end A051903.P4373917834329708156

namespace A051903

/-- `A061395(A181819(n+1))` -/
def P4373917834329708156.Spec : Prop :=
  ∀ n, P4373917834329708156.a n = A051903 (n + 1)

end A051903

/-! ## A051903.P6573194240751488175

`A007814(A328400(n+1))`
-/

namespace A051903.P6573194240751488175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A328400 (n + 1)).toNat

end

end A051903.P6573194240751488175

namespace A051903

/-- `A007814(A328400(n+1))` -/
def P6573194240751488175.Spec : Prop :=
  ∀ n, P6573194240751488175.a n = A051903 (n + 1)

end A051903

/-! ## A051903.P14977099898327266448

`A061395(A329601(n+1))`
-/

namespace A051903.P14977099898327266448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A329601 (n + 1)).toNat

end

end A051903.P14977099898327266448

namespace A051903

/-- `A061395(A329601(n+1))` -/
def P14977099898327266448.Spec : Prop :=
  ∀ n, P14977099898327266448.a n = A051903 (n + 1)

end A051903

/-! ## A051903.P12518511011015414266

`A052409(A375931(n+1))`
-/

namespace A051903.P12518511011015414266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A375931 (n + 1)).toNat

end

end A051903.P12518511011015414266

namespace A051903

/-- `A052409(A375931(n+1))` -/
def P12518511011015414266.Spec : Prop :=
  ∀ n, P12518511011015414266.a n = A051903 (n + 1)

end A051903

/-! ## A051903.P1334221439705517092

`A089309(A046523(n+1)-1)`
-/

namespace A051903.P1334221439705517092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A046523 (n + 1) - 1).toNat

end

end A051903.P1334221439705517092

namespace A051903

/-- `A089309(A046523(n+1)-1)` -/
def P1334221439705517092.Spec : Prop :=
  ∀ n, P1334221439705517092.a n = A051903 (n + 1)

end A051903

/-!
# A051904: Minimal exponent in prime factorization of n.

The programs for A051904, the canonical program `A051904.P9263651810596342710` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051904 has offset 1).

The definition of A051904 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051904.P3773107758809360338

`val(A320389(n+1), 2)`
-/

namespace A051904.P3773107758809360338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A320389 (n + 1)).toNat 2

end

end A051904.P3773107758809360338

namespace A051904

/-- `val(A320389(n+1), 2)` -/
def P3773107758809360338.Spec : Prop :=
  ∀ n, (P3773107758809360338.a n : ℤ) = A051904 (n + 1)

end A051904

/-! ## A051904.P6616104484257364501

`∑{e}[A304181(n+1), #]`
-/

namespace A051904.P6616104484257364501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304181 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A051904.P6616104484257364501

namespace A051904

/-- `∑{e}[A304181(n+1), #]` -/
def P6616104484257364501.Spec : Prop :=
  ∀ n, (P6616104484257364501.a n : ℤ) = A051904 (n + 1)

end A051904

/-! ## A051904.P5686607075190887424

`A051903(A062759(n+1))`
-/

namespace A051904.P5686607075190887424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A062759 (n + 1)).toNat

end

end A051904.P5686607075190887424

namespace A051904

/-- `A051903(A062759(n+1))` -/
def P5686607075190887424.Spec : Prop :=
  ∀ n, P5686607075190887424.a n = A051904 (n + 1)

end A051904

/-! ## A051904.P9263651810596342710

`A071178(A046523(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A051904

/-- `A071178(A046523(n+1))` -/
def P9263651810596342710.Spec : Prop :=
  ∀ n, P9263651810596342710.a n = A051904 (n + 1)

theorem P9263651810596342710.correct : P9263651810596342710.Spec := by
  intro n
  simp only [A051904, Nat.add_sub_cancel]

end A051904

/-! ## A051904.P5881255179553635460

`A071178(A083260(n+1))`
-/

namespace A051904.P5881255179553635460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (A083260 (n + 1)).toNat

end

end A051904.P5881255179553635460

namespace A051904

/-- `A071178(A083260(n+1))` -/
def P5881255179553635460.Spec : Prop :=
  ∀ n, P5881255179553635460.a n = A051904 (n + 1)

end A051904

/-! ## A051904.P7994118005162653723

`A071178(A089247(n+1))`
-/

namespace A051904.P7994118005162653723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (A089247 (n + 1)).toNat

end

end A051904.P7994118005162653723

namespace A051904

/-- `A071178(A089247(n+1))` -/
def P7994118005162653723.Spec : Prop :=
  ∀ n, P7994118005162653723.a n = A051904 (n + 1)

end A051904

/-! ## A051904.P4118657697423419948

`A055396(A181819(n+1))`
-/

namespace A051904.P4118657697423419948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A181819 (n + 1)).toNat

end

end A051904.P4118657697423419948

namespace A051904

/-- `A055396(A181819(n+1))` -/
def P4118657697423419948.Spec : Prop :=
  ∀ n, P4118657697423419948.a n = A051904 (n + 1)

end A051904

/-! ## A051904.P10683467387105793200

`A001222(A304181(n+1))`
-/

namespace A051904.P10683467387105793200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A304181 (n + 1)).toNat

end

end A051904.P10683467387105793200

namespace A051904

/-- `A001222(A304181(n+1))` -/
def P10683467387105793200.Spec : Prop :=
  ∀ n, P10683467387105793200.a n = A051904 (n + 1)

end A051904

/-! ## A051904.P15473571835410298724

`A071178(A238745(n+1))`
-/

namespace A051904.P15473571835410298724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (A238745 (n + 1)).toNat

end

end A051904.P15473571835410298724

namespace A051904

/-- `A071178(A238745(n+1))` -/
def P15473571835410298724.Spec : Prop :=
  ∀ n, P15473571835410298724.a n = A051904 (n + 1)

end A051904

/-! ## A051904.P17939367091449677424

`A055396(A329601(n+1))`
-/

namespace A051904.P17939367091449677424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A329601 (n + 1)).toNat

end

end A051904.P17939367091449677424

namespace A051904

/-- `A055396(A329601(n+1))` -/
def P17939367091449677424.Spec : Prop :=
  ∀ n, P17939367091449677424.a n = A051904 (n + 1)

end A051904

/-! ## A051904.P16934555846416250401

`val(A085079(A071364(n+1)), 2)`
-/

namespace A051904.P16934555846416250401
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A085079 (A071364 (n + 1)).toNat).toNat 2

end

end A051904.P16934555846416250401

namespace A051904

/-- `val(A085079(A071364(n+1)), 2)` -/
def P16934555846416250401.Spec : Prop :=
  ∀ n, (P16934555846416250401.a n : ℤ) = A051904 (n + 1)

end A051904

/-! ## A051904.P6753353221462389950

`A051903(n+1)-A062977(n+1)`
-/

namespace A051904.P6753353221462389950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1) - A062977 (n + 1)

end

end A051904.P6753353221462389950

namespace A051904

/-- `A051903(n+1)-A062977(n+1)` -/
def P6753353221462389950.Spec : Prop :=
  ∀ n, P6753353221462389950.a n = A051904 (n + 1)

end A051904

/-! ## A051904.P2227248700548778640

`A051903((n+1)/A062760(n+1))`
-/

namespace A051904.P2227248700548778640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A062760 (n + 1) : ℚ))).toNat

end

end A051904.P2227248700548778640

namespace A051904

/-- `A051903((n+1)/A062760(n+1))` -/
def P2227248700548778640.Spec : Prop :=
  ∀ n, P2227248700548778640.a n = A051904 (n + 1)

end A051904

/-! ## A051904.P16440035482685140090

`A052409((n+1)/A062760(n+1))`
-/

namespace A051904.P16440035482685140090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A062760 (n + 1) : ℚ))).toNat

end

end A051904.P16440035482685140090

namespace A051904

/-- `A052409((n+1)/A062760(n+1))` -/
def P16440035482685140090.Spec : Prop :=
  ∀ n, P16440035482685140090.a n = A051904 (n + 1)

end A051904

/-! ## A051904.P13135287481690284017

`A052409(A062759(2*n+1-n))`
-/

namespace A051904.P13135287481690284017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A062759 (2 * n + 1 - n)).toNat

end

end A051904.P13135287481690284017

namespace A051904

/-- `A052409(A062759(2*n+1-n))` -/
def P13135287481690284017.Spec : Prop :=
  ∀ n, P13135287481690284017.a n = A051904 (n + 1)

end A051904

/-! ## A051904.P11205224155246892489

`A052409(A304181(2*n+1-n))`
-/

namespace A051904.P11205224155246892489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A304181 (2 * n + 1 - n)).toNat

end

end A051904.P11205224155246892489

namespace A051904

/-- `A052409(A304181(2*n+1-n))` -/
def P11205224155246892489.Spec : Prop :=
  ∀ n, P11205224155246892489.a n = A051904 (n + 1)

end A051904

/-! ## A051904.P11292485760046428259

`A051903(n+1)-A051903(A062760(n+1))`
-/

namespace A051904.P11292485760046428259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1) - A051903 (A062760 (n + 1)).toNat

end

end A051904.P11292485760046428259

namespace A051904

/-- `A051903(n+1)-A051903(A062760(n+1))` -/
def P11292485760046428259.Spec : Prop :=
  ∀ n, P11292485760046428259.a n = A051904 (n + 1)

end A051904

/-! ## A051904.P5929500478063718989

`A076558(n+1)/A087802(n+1)`
-/

namespace A051904.P5929500478063718989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076558 (n + 1) : ℚ) / (A087802 (n + 1) : ℚ)

end

end A051904.P5929500478063718989

namespace A051904

/-- `A076558(n+1)/A087802(n+1)` -/
def P5929500478063718989.Spec : Prop :=
  ∀ n, P5929500478063718989.a n = (A051904 (n + 1) : ℚ)

end A051904

/-! ## A051904.P496578989980288394

`A007814(A320389(n+1))`
-/

namespace A051904.P496578989980288394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A320389 (n + 1)).toNat

end

end A051904.P496578989980288394

namespace A051904

/-- `A007814(A320389(n+1))` -/
def P496578989980288394.Spec : Prop :=
  ∀ n, P496578989980288394.a n = A051904 (n + 1)

end A051904

/-! ## A051904.P9295831606331885653

`A067029(A085079(n+1))`
-/

namespace A051904.P9295831606331885653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A085079 (n + 1)).toNat

end

end A051904.P9295831606331885653

namespace A051904

/-- `A067029(A085079(n+1))` -/
def P9295831606331885653.Spec : Prop :=
  ∀ n, P9295831606331885653.a n = A051904 (n + 1)

end A051904

/-!
# A051906: Number of ways of placing n nonattacking queens on an n X n toroidal chessboard.

The programs for A051906, there is no canonical definition to state claims against.
-/

/-! ## A051906.P15147903734642298225

`A007705(gcd(n, floor(n/2)))`
-/

namespace A051906.P15147903734642298225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007705 (Int.gcd (n : ℤ) ⌊(n : ℚ) / 2⌋)

end

end A051906.P15147903734642298225

/-! ## A051906.P7613209169917817893

`A007705((n/2)^and(1, n+1))`
-/

namespace A051906.P7613209169917817893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007705 (SequenceMachineLib.roundAway (((n : ℚ) / 2) ^ Nat.land 1 (n + 1))).toNat

end

end A051906.P7613209169917817893

/-! ## A051906.P17824956572216021441

`A007705(n-ceil((n-1)/(2-and(1, n))))`
-/

namespace A051906.P17824956572216021441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007705 ((n : ℤ) - ⌈((n : ℤ) - 1 : ℚ) / (2 - (Nat.land 1 n : ℤ) : ℚ)⌉).toNat

end

end A051906.P17824956572216021441

/-! ## A051906.P13873844994378789507

`A007705(n-(1-(n-2)/(and(1, n)-2)))`
-/

namespace A051906.P13873844994378789507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007705 (SequenceMachineLib.roundAway ((n : ℚ) - (1 - ((n : ℤ) - 2 : ℚ) / ((Nat.land 1 n : ℤ) - 2 : ℚ)))).toNat

end

end A051906.P13873844994378789507

/-! ## A051906.P8552574110641571147

`A007705(∑[n+1]%(n+2)-(-1)^n)`
-/

namespace A051906.P8552574110641571147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007705 ((((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 2) : ℕ) : ℤ) - (-1) ^ n).toNat

end

end A051906.P8552574110641571147

/-!
# A051907: Number of ways to express 1 as the sum of distinct unit fractions such that the sum of the denominators is n.

The programs for A051907, there is no canonical definition to state claims against.
-/

/-! ## A051907.P12183606200646287717

`dr(A007623(A339629(n+1)))`
-/

namespace A051907.P12183606200646287717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007623 (A339629 (n + 1)).toNat)

end

end A051907.P12183606200646287717

/-! ## A051907.P5384037997086123825

`A007623(A339629(2*n-n+1))%9`
-/

namespace A051907.P5384037997086123825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007623 (A339629 ((2 * n : ℤ) - (n : ℤ) + 1).toNat).toNat) 9

end

end A051907.P5384037997086123825

/-! ## A051907.P1328446086331647680

`∑{d}[A275729(A339629(n+1)), A184344(#)]`
-/

namespace A051907.P1328446086331647680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275729 (A339629 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A184344 d

end

end A051907.P1328446086331647680

/-! ## A051907.P15956602571442638707

`A034968(A339629(n+1))`
-/

namespace A051907.P15956602571442638707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A339629 (n + 1)).toNat

end

end A051907.P15956602571442638707

/-! ## A051907.P2071295903338781744

`A275729(A339629(n+1))^Δ[A004868(n+1)]`
-/

namespace A051907.P2071295903338781744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004868 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275729 (A339629 (n + 1)).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A051907.P2071295903338781744

/-! ## A051907.P12696505864131740968

`A275729(A339629(n+1))^A014963(A336178(n+1))`
-/

namespace A051907.P12696505864131740968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275729 (A339629 (n + 1)).toNat : ℚ) ^ (A014963 (A336178 (n + 1)).toNat : ℤ)

end

end A051907.P12696505864131740968

/-!
# A051908: Number of ways to express 1 as the sum of unit fractions such that the sum of the denominators is n.

The programs for A051908, there is no canonical definition to state claims against.
-/

/-! ## A051908.P3234733221200469795

`A316896(n+1)+A339225(n+1)%A056624(n+1)`
-/

namespace A051908.P3234733221200469795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316896 (n + 1) + Int.tmod (A339225 (n + 1)) (A056624 (n + 1))

end

end A051908.P3234733221200469795

/-! ## A051908.P3652177887380591365

`floor(sqrt(A089873(n)+xor(n, n+1)+1))%2`
-/

namespace A051908.P3652177887380591365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A089873 n + (Nat.xor n (n + 1) + 1 : ℤ))) 2

end

end A051908.P3652177887380591365

/-! ## A051908.P12587726724754088890

`A121967(A256473(n+1))`
-/

namespace A051908.P12587726724754088890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121967 (A256473 (n + 1)).toNat

end

end A051908.P12587726724754088890

/-! ## A051908.P6140840257622171378

`A032895(A081438(n))%2`
-/

namespace A051908.P6140840257622171378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032895 (A081438 n).toNat) 2

end

end A051908.P6140840257622171378

/-! ## A051908.P16169351773771041556

`A101273(A063757(n))%2`
-/

namespace A051908.P16169351773771041556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101273 (A063757 n).toNat) 2

end

end A051908.P16169351773771041556

/-!
# A051909: Subset of strict Egyptian numbers - there is a unique representation of 1 as the sum of distinct unit fractions with the sum of denominators being these numbers.

The programs for A051909, there is no canonical definition to state claims against.
-/

/-! ## A051909.P6737172236845652348

`eq[1, A051907(n+1)]+1`
-/

namespace A051909.P6737172236845652348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051907 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A051909.P6737172236845652348

/-! ## A051909.P5187525215182483236

`eq[1, abs(a(A051907(n)))]` with `a(0)=0, a(1)=1`
-/

namespace A051909.P5187525215182483236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (A051907 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051909.P5187525215182483236

/-! ## A051909.P11978424277996323245

`eq[1, A000045(a(A051907(n)))]` with `a(0)=0, a(1)=1`
-/

namespace A051909.P11978424277996323245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  A000045 (f2 (A051907 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051909.P11978424277996323245

/-! ## A051909.P15895612587305477709

`eq[1, A000041(a(A051907(n)))]` with `a(0)=2, a(1)=1`
-/

namespace A051909.P15895612587305477709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A000041 (f2 (A051907 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051909.P15895612587305477709

/-! ## A051909.P17106413223086749685

`eq[1, A000108(a(A051907(n)))]` with `a(0)=2, a(1)=1`
-/

namespace A051909.P17106413223086749685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A000108 (f2 (A051907 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051909.P17106413223086749685

/-!
# A051910: Triangle T(n,m) = Nim-product of n and m, read by rows, 0<=m<=n.

The programs for A051910, there is no canonical definition to state claims against.
-/

/-! ## A051910.P2798056121244303549

`A051775(A245300(n))`
-/

namespace A051910.P2798056121244303549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051775 (A245300 n).toNat

end

end A051910.P2798056121244303549

/-! ## A051910.P8203179791903360304

`A029962(A063804(n+3))%10`
-/

namespace A051910.P8203179791903360304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029962 (A063804 (n + 3)).toNat) 10

end

end A051910.P8203179791903360304

/-! ## A051910.P13876867713051288170

`(A125066(n+9)*A125083(n))%A125076(n+1)`
-/

namespace A051910.P13876867713051288170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125066 (n + 9) * A125083 n) (A125076 (n + 1))

end

end A051910.P13876867713051288170

/-! ## A051910.P18418296067091156613

`A392370(A006218(n+4)*A374748(n))`
-/

namespace A051910.P18418296067091156613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392370 (A006218 (n + 4) * A374748 n).toNat

end

end A051910.P18418296067091156613

/-!
# A051911: Triangle T(n,m) = Nim-product of n and m, read by rows, 1<=n<=m.

The programs for A051911, there is no canonical definition to state claims against.
-/

/-! ## A051911.P16057584204106669479

`A051910(comp[∑[n]])`
-/

namespace A051911.P16057584204106669479
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051910 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A051911.P16057584204106669479

/-! ## A051911.P13936912956217503552

`A051776(A245300(n)+1)`
-/

namespace A051911.P13936912956217503552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051776 (A245300 n + 1).toNat

end

end A051911.P13936912956217503552

/-!
# A051912: a(n) is the smallest integer such that the sum of any three ordered terms a(k), k <= n, is unique.

The programs for A051912, there is no canonical definition to state claims against.
-/

/-! ## A051912.P1107981759542462763

`A096772(n+1)-1`
-/

namespace A051912.P1107981759542462763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096772 (n + 1) - 1

end

end A051912.P1107981759542462763

/-! ## A051912.P2179787457155375106

`record[A096772(A158416(n))-1]`
-/

namespace A051912.P2179787457155375106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096772 (A158416 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051912.P2179787457155375106

/-! ## A051912.P6207911981933328473

`A134824(n+2)+A096772(n+1)`
-/

namespace A051912.P6207911981933328473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A096772 (n + 1)

end

end A051912.P6207911981933328473

/-! ## A051912.P11413419860601477959

`A122434(3*(n+1))+A096772(n+1)`
-/

namespace A051912.P11413419860601477959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122434 (3 * (n + 1)) + A096772 (n + 1)

end

end A051912.P11413419860601477959

/-! ## A051912.P1225658058916056131

`A209635(A000040(n+4))+A096772(n+1)`
-/

namespace A051912.P1225658058916056131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209635 (A000040 (n + 4)).toNat + A096772 (n + 1)

end

end A051912.P1225658058916056131

/-! ## A051912.P12450663876340871561

`A209635(A045323(3*(n+1)))+A096772(n+1)`
-/

namespace A051912.P12450663876340871561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209635 (A045323 (3 * (n + 1))).toNat + A096772 (n + 1)

end

end A051912.P12450663876340871561

/-! ## A051912.P17323812942334125992

`xor(-A096772(n+1), -A007318(C(n, 2)))`
-/

namespace A051912.P17323812942334125992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A096772 (n + 1)) (-A007318 (Nat.choose n 2))

end

end A051912.P17323812942334125992

/-!
# A051913: Numbers k such that phi(k)/phi(phi(k)) = 3.

The programs for A051913, the canonical program `A051913.P17812452377997013029` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051913 has offset 1).

The definition of A051913 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1218 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051913.P11246474966651102978

`eq[2, A061395(A000010(n+1))]+1`
-/

namespace A051913.P11246474966651102978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A051913.P11246474966651102978

namespace A051913

/-- `eq[2, A061395(A000010(n+1))]+1` -/
def P11246474966651102978.Spec : Prop :=
  ∀ n, (P11246474966651102978.a n : ℤ) = A051913 (n + 1)

end A051913

/-! ## A051913.P17812452377997013029

`eq[6, A080400(n+1)]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A051913

/-- `eq[6, A080400(n+1)]+1` -/
def P17812452377997013029.Spec : Prop :=
  ∀ n, (P17812452377997013029.a n : ℤ) = A051913 (n + 1)

theorem P17812452377997013029.correct : P17812452377997013029.Spec := by
  intro n
  simp only [A051913, Nat.add_sub_cancel]

end A051913

/-! ## A051913.P14285813381391093776

`∩[A048135(n+1), A066498(n+1)]`
-/

namespace A051913.P14285813381391093776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051913.P14285813381391093776

namespace A051913

/-- `∩[A048135(n+1), A066498(n+1)]` -/
def P14285813381391093776.Spec : Prop :=
  ∀ n, (P14285813381391093776.a n : ℤ) = A051913 (n + 1)

end A051913

/-! ## A051913.P13126359523654114422

`∩[A004169(n+1), A048135(n+1)]`
-/

namespace A051913.P13126359523654114422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051913.P13126359523654114422

namespace A051913

/-- `∩[A004169(n+1), A048135(n+1)]` -/
def P13126359523654114422.Spec : Prop :=
  ∀ n, (P13126359523654114422.a n : ℤ) = A051913 (n + 1)

end A051913

/-! ## A051913.P4735965067563314467

`filter[A004169(n+1), A122255(#)]`
-/

namespace A051913.P4735965067563314467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122255 (f1 j).toNat = 1) n)

end

end A051913.P4735965067563314467

namespace A051913

/-- `filter[A004169(n+1), A122255(#)]` -/
def P4735965067563314467.Spec : Prop :=
  ∀ n, P4735965067563314467.a n = A051913 (n + 1)

end A051913

/-! ## A051913.P1857687020461156403

`filter[A066498(n+1), A122255(#)]`
-/

namespace A051913.P1857687020461156403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122255 (f1 j).toNat = 1) n)

end

end A051913.P1857687020461156403

namespace A051913

/-- `filter[A066498(n+1), A122255(#)]` -/
def P1857687020461156403.Spec : Prop :=
  ∀ n, P1857687020461156403.a n = A051913 (n + 1)

end A051913

/-! ## A051913.P3858308705288448643

`eq[3, A318884(Δ[A049643(n)])]+1`
-/

namespace A051913.P3858308705288448643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318884 (f3 (n + 1) - f3 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A051913.P3858308705288448643

namespace A051913

/-- `eq[3, A318884(Δ[A049643(n)])]+1` -/
def P3858308705288448643.Spec : Prop :=
  ∀ n, (P3858308705288448643.a n : ℤ) = A051913 (n + 1)

end A051913

/-! ## A051913.P11362200330223219233

`eq[3, A006530(A053575(n+1))]+1`
-/

namespace A051913.P11362200330223219233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A053575 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A051913.P11362200330223219233

namespace A051913

/-- `eq[3, A006530(A053575(n+1))]+1` -/
def P11362200330223219233.Spec : Prop :=
  ∀ n, (P11362200330223219233.a n : ℤ) = A051913 (n + 1)

end A051913

/-! ## A051913.P7087668391543828015

`eq[3, A318884(A039649(n+1)-1)]+1`
-/

namespace A051913.P7087668391543828015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318884 (A039649 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A051913.P7087668391543828015

namespace A051913

/-- `eq[3, A318884(A039649(n+1)-1)]+1` -/
def P7087668391543828015.Spec : Prop :=
  ∀ n, (P7087668391543828015.a n : ℤ) = A051913 (n + 1)

end A051913

/-! ## A051913.P17484999796801856922

`eq[3, A006530(A225530(n))]`
-/

namespace A051913.P17484999796801856922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A225530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051913.P17484999796801856922

namespace A051913

/-- `eq[3, A006530(A225530(n))]` -/
def P17484999796801856922.Spec : Prop :=
  ∀ n, (P17484999796801856922.a n : ℤ) = A051913 (n + 1)

end A051913

/-!
# A051915: Numbers k such that 2*k! + 1 is prime.

The programs for A051915, there is no canonical definition to state claims against.
-/

/-! ## A051915.P13739879072216691251

`eq[2, A051888(n)]`
-/

namespace A051915.P13739879072216691251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051888 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051915.P13739879072216691251

/-! ## A051915.P3374599963078463888

`lt[A051888(A028310(n)), 3]`
-/

namespace A051915.P3374599963078463888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051888 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051915.P3374599963078463888

/-! ## A051915.P14932330834569528020

`lt[log(A051888(n)), A054977(n)]`
-/

namespace A051915.P14932330834569528020
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A051888 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A051915.P14932330834569528020

/-! ## A051915.P17247215339224299193

`lt[log(A051888(n)), A329684(n)]`
-/

namespace A051915.P17247215339224299193
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A051888 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A051915.P17247215339224299193

/-! ## A051915.P8274948797093888912

`lt[A051888(A233583(n+1)), 3]`
-/

namespace A051915.P8274948797093888912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051888 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051915.P8274948797093888912

/-!
# A051916: The Greek sequence: 2^a * 3^b * 5^c where a = 0,1,2,3,..., b,c in {0,1}, excluding the terms 1,2; that is: (a,b,c) != (0,0,0), (1,0,0).

The programs for A051916, the canonical program `A051916.P17059523613539162639` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051916 has offset 1).

The definition of A051916 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1320 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051916.P5730919396332424807

`∪[A070004(n+1), A163978(n+1)]`
-/

namespace A051916.P5730919396332424807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051916.P5730919396332424807

namespace A051916

/-- `∪[A070004(n+1), A163978(n+1)]` -/
def P5730919396332424807.Spec : Prop :=
  ∀ n, (P5730919396332424807.a n : ℤ) = A051916 (n + 1)

end A051916

/-! ## A051916.P17059523613539162639

`∪[3*A094958(n+1), A094958(n+3)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A051916

/-- `∪[3*A094958(n+1), A094958(n+3)]` -/
def P17059523613539162639.Spec : Prop :=
  ∀ n, (P17059523613539162639.a n : ℤ) = A051916 (n + 1)

theorem P17059523613539162639.correct : P17059523613539162639.Spec := by
  intro n
  simp only [A051916, Nat.add_sub_cancel]

end A051916

/-! ## A051916.P14448943058579917005

`∩[A003401(n+1), A051037(n+3)]`
-/

namespace A051916.P14448943058579917005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051916.P14448943058579917005

namespace A051916

/-- `∩[A003401(n+1), A051037(n+3)]` -/
def P14448943058579917005.Spec : Prop :=
  ∀ n, (P14448943058579917005.a n : ℤ) = A051916 (n + 1)

end A051916

/-! ## A051916.P2211491930342153431

`A070814(n+3)/A070814(A118827(2*n+1))`
-/

namespace A051916.P2211491930342153431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070814 (n + 3) : ℚ) / (A070814 (A118827 (2 * n + 1)).toNat : ℚ)

end

end A051916.P2211491930342153431

namespace A051916

/-- `A070814(n+3)/A070814(A118827(2*n+1))` -/
def P2211491930342153431.Spec : Prop :=
  ∀ n, P2211491930342153431.a n = (A051916 (n + 1) : ℚ)

end A051916

/-! ## A051916.P5377040605469561891

`filter[A002473(n+3), A336477(#)]`
-/

namespace A051916.P5377040605469561891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336477 (f1 j).toNat = 1) n)

end

end A051916.P5377040605469561891

namespace A051916

/-- `filter[A002473(n+3), A336477(#)]` -/
def P5377040605469561891.Spec : Prop :=
  ∀ n, P5377040605469561891.a n = A051916 (n + 1)

end A051916

/-! ## A051916.P16908706934163491244

`filter[A029461(n+3), A336477(#)]`
-/

namespace A051916.P16908706934163491244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029461 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336477 (f1 j).toNat = 1) n)

end

end A051916.P16908706934163491244

namespace A051916

/-- `filter[A029461(n+3), A336477(#)]` -/
def P16908706934163491244.Spec : Prop :=
  ∀ n, P16908706934163491244.a n = A051916 (n + 1)

end A051916

/-! ## A051916.P8347510591672447008

`filter[A033620(n+3), A336477(#)]`
-/

namespace A051916.P8347510591672447008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336477 (f1 j).toNat = 1) n)

end

end A051916.P8347510591672447008

namespace A051916

/-- `filter[A033620(n+3), A336477(#)]` -/
def P8347510591672447008.Spec : Prop :=
  ∀ n, P8347510591672447008.a n = A051916 (n + 1)

end A051916

/-! ## A051916.P13710149328073158724

`filter[A033637(n+3), A336477(#)]`
-/

namespace A051916.P13710149328073158724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033637 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336477 (f1 j).toNat = 1) n)

end

end A051916.P13710149328073158724

namespace A051916

/-- `filter[A033637(n+3), A336477(#)]` -/
def P13710149328073158724.Spec : Prop :=
  ∀ n, P13710149328073158724.a n = A051916 (n + 1)

end A051916

/-! ## A051916.P6443600675982425732

`filter[A051037(n+3), A336477(#)]`
-/

namespace A051916.P6443600675982425732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336477 (f1 j).toNat = 1) n)

end

end A051916.P6443600675982425732

namespace A051916

/-- `filter[A051037(n+3), A336477(#)]` -/
def P6443600675982425732.Spec : Prop :=
  ∀ n, P6443600675982425732.a n = A051916 (n + 1)

end A051916

/-! ## A051916.P12433774918044529540

`filter[A051038(n+3), A336477(#)]`
-/

namespace A051916.P12433774918044529540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051038 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336477 (f1 j).toNat = 1) n)

end

end A051916.P12433774918044529540

namespace A051916

/-- `filter[A051038(n+3), A336477(#)]` -/
def P12433774918044529540.Spec : Prop :=
  ∀ n, P12433774918044529540.a n = A051916 (n + 1)

end A051916

/-!
# A051917: Inverse of n under Nim (or Conway) multiplication.

The programs for A051917, there is no canonical definition to state claims against.
-/

/-! ## A051917.P9586958626446436775

`A334290(∑[n+1])`
-/

namespace A051917.P9586958626446436775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334290 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051917.P9586958626446436775

/-! ## A051917.P9437210096556745794

`or(char[1], A334290(A000217(n+1)))`
-/

namespace A051917.P9437210096556745794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A334290 (A000217 (n + 1)).toNat)

end

end A051917.P9437210096556745794

/-! ## A051917.P18246131968314765918

`A000027(A334290(record[A038722(n+1)]))`
-/

namespace A051917.P18246131968314765918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A334290 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A051917.P18246131968314765918

/-! ## A051917.P8108918975290666968

`A334290(A000217(n+1))%A017225(n)`
-/

namespace A051917.P8108918975290666968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334290 (A000217 (n + 1)).toNat) (A017225 n)

end

end A051917.P8108918975290666968

/-! ## A051917.P13545026957941839193

`A334290(A000217(n+1))+char[A017043(n)]`
-/

namespace A051917.P13545026957941839193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017043 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334290 (A000217 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A051917.P13545026957941839193

/-! ## A051917.P5857685608534209688

`A334290(A000217(n+1))+A000007(n+1)`
-/

namespace A051917.P5857685608534209688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334290 (A000217 (n + 1)).toNat + A000007 (n + 1)

end

end A051917.P5857685608534209688

/-! ## A051917.P4586364801567368213

`A007318(C(2, n))*A334290(A000217(n+1))`
-/

namespace A051917.P4586364801567368213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A334290 (A000217 (n + 1)).toNat

end

end A051917.P4586364801567368213

/-! ## A051917.P13962012018985041130

`A014963(12*n+6)*A334290(A000217(n+1))`
-/

namespace A051917.P13962012018985041130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * n + 6) * A334290 (A000217 (n + 1)).toNat

end

end A051917.P13962012018985041130

/-! ## A051917.P18194726145037915449

`A000005(gcd(n, n+1))*A334290(A000217(n+1))`
-/

namespace A051917.P18194726145037915449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd n (n + 1)) * A334290 (A000217 (n + 1)).toNat

end

end A051917.P18194726145037915449

/-! ## A051917.P12380864676503780006

`A334290(A000217(n+1))^A001221(A034699(n+1))`
-/

namespace A051917.P12380864676503780006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334290 (A000217 (n + 1)).toNat : ℚ) ^ (A001221 (A034699 (n + 1)).toNat : ℤ)

end

end A051917.P12380864676503780006

/-!
# A051918: Start with n, apply k->2k+1 until reach new record prime; sequence gives number of steps needed.

The programs for A051918, there is no canonical definition to state claims against.
-/

/-! ## A051918.P10597996924859396407

`val((A051919(n)+1)/(n+1), 2)`
-/

namespace A051918.P10597996924859396407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((A051919 n + 1 : ℚ) / (n + 1 : ℚ))).toNat 2

end

end A051918.P10597996924859396407

/-!
# A051919: Start with n, apply k->2k+1 until reach new record prime; sequence gives record primes.

The programs for A051919, there is no canonical definition to state claims against.
-/

/-! ## A051919.P8230594228760123655

`p?[or(A000124(n), A182939(n))]`
-/

namespace A051919.P8230594228760123655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000124 n) (A182939 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051919.P8230594228760123655

/-! ## A051919.P12499189961309410312

`record[A110359(p?[A104694(n+1)])]`
-/

namespace A051919.P12499189961309410312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104694 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110359 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051919.P12499189961309410312

/-!
# A051920: a(n) = binomial(n, floor(n/2)) + 1.

The programs for A051920, the canonical program `A051920.P2707849764288868979` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051920 has offset 0).

The definition of A051920 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n, floor(n/2))+1` (program `A051920.P2707849764288868979`, by `A051920.P2707849764288868979.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051920.P4618431831665796024

`(4*(n-1)*a(n-2)+2*a(n-1)-3*n+3)/(n+1)` with `a(0)=2, a(1)=2`
-/

namespace A051920.P4618431831665796024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 2] fun n a =>
  ((4 * ((n : ℤ) - 1) : ℚ) * a (n - 2) + 2 * a (n - 1) - (3 * n : ℚ) + 3) / (n + 1 : ℚ)

end

end A051920.P4618431831665796024

namespace A051920

/-- `(4*(n-1)*a(n-2)+2*a(n-1)-3*n+3)/(n+1)` -/
def P4618431831665796024.Spec : Prop :=
  ∀ n, P4618431831665796024.a n = (A051920 n : ℚ)

end A051920

/-! ## A051920.P2707849764288868979

`C(n, floor(n/2))+1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051920

/-- `C(n, floor(n/2))+1` -/
def P2707849764288868979.Spec : Prop :=
  ∀ n, (P2707849764288868979.a n : ℤ) = A051920 n

theorem P2707849764288868979.correct : P2707849764288868979.Spec := by
  intro n
  simp only [A051920]

end A051920

/-! ## A051920.P6101174309046912109

`A001405(n)+1`
-/

namespace A051920.P6101174309046912109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n + 1

end

end A051920.P6101174309046912109

namespace A051920

/-- `A001405(n)+1` -/
def P6101174309046912109.Spec : Prop :=
  ∀ n, P6101174309046912109.a n = A051920 n

theorem P6101174309046912109.correct : P6101174309046912109.Spec := by
  intro n
  simp only [A051920, Nat.add_sub_cancel, A051920.P6101174309046912109.a, A051920.P2707849764288868979.a, A001405, A001405.P5205018418992951678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051920

/-! ## A051920.P9956404964353686172

`A014495(n)+2`
-/

namespace A051920.P9956404964353686172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 n + 2

end

end A051920.P9956404964353686172

namespace A051920

/-- `A014495(n)+2` -/
def P9956404964353686172.Spec : Prop :=
  ∀ n, P9956404964353686172.a n = A051920 n

theorem P9956404964353686172.correct : P9956404964353686172.Spec := by
  intro n
  simp only [A051920, Nat.add_sub_cancel, A051920.P9956404964353686172.a, A051920.P2707849764288868979.a, A014495, A014495.P8648755420632744383.a, A001405, A001405.P5205018418992951678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051920

/-! ## A051920.P10227415772763881617

`A201686(n)+3`
-/

namespace A051920.P10227415772763881617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201686 n + 3

end

end A051920.P10227415772763881617

namespace A051920

/-- `A201686(n)+3` -/
def P10227415772763881617.Spec : Prop :=
  ∀ n, P10227415772763881617.a n = A051920 n

theorem P10227415772763881617.correct : P10227415772763881617.Spec := by
  intro n
  simp only [A051920, Nat.add_sub_cancel, A051920.P10227415772763881617.a, A051920.P2707849764288868979.a, A201686, A201686.P5560453005708353295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051920

/-! ## A051920.P8609942495982004501

`abs(A126930(n))+1`
-/

namespace A051920.P8609942495982004501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A126930 n| + 1

end

end A051920.P8609942495982004501

namespace A051920

/-- `abs(A126930(n))+1` -/
def P8609942495982004501.Spec : Prop :=
  ∀ n, P8609942495982004501.a n = A051920 n

end A051920

/-! ## A051920.P596159059488542978

`A210736(n+1)+1`
-/

namespace A051920.P596159059488542978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (n + 1) + 1

end

end A051920.P596159059488542978

namespace A051920

/-- `A210736(n+1)+1` -/
def P596159059488542978.Spec : Prop :=
  ∀ n, P596159059488542978.a n = A051920 n

end A051920

/-! ## A051920.P9185257626845856948

`A037952(n-1)+a(n-1)` with `a(0)=2`
-/

namespace A051920.P9185257626845856948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A037952 (n - 1) + a (n - 1)

end

end A051920.P9185257626845856948

namespace A051920

/-- `A037952(n-1)+a(n-1)` -/
def P9185257626845856948.Spec : Prop :=
  ∀ n, P9185257626845856948.a n = A051920 n

end A051920

/-! ## A051920.P13614837269639764639

`A050168(n)+2-a(n-1)` with `a(0)=2`
-/

namespace A051920.P13614837269639764639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A050168 n + (2 - a (n - 1))

end

end A051920.P13614837269639764639

namespace A051920

/-- `A050168(n)+2-a(n-1)` -/
def P13614837269639764639.Spec : Prop :=
  ∀ n, P13614837269639764639.a n = A051920 n

end A051920

/-! ## A051920.P8327491146069971622

`A395396(n)+A176059(n)`
-/

namespace A051920.P8327491146069971622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395396 n + A176059 n

end

end A051920.P8327491146069971622

namespace A051920

/-- `A395396(n)+A176059(n)` -/
def P8327491146069971622.Spec : Prop :=
  ∀ n, P8327491146069971622.a n = A051920 n

theorem P8327491146069971622.correct : P8327491146069971622.Spec := by
  intro n
  simp only [A051920, Nat.add_sub_cancel, A051920.P8327491146069971622.a, A051920.P2707849764288868979.a, A176059, A176059.P3242393250982034900.a, A395396, A395396.P11751672268797446085.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051920

/-! ## A051920.P7112117124305627672

`∏[2*or(1, n)/(n+1)]/2+1`
-/

namespace A051920.P7112117124305627672
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lor 1 n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) / 2 + 1

end

end A051920.P7112117124305627672

namespace A051920

/-- `∏[2*or(1, n)/(n+1)]/2+1` -/
def P7112117124305627672.Spec : Prop :=
  ∀ n, P7112117124305627672.a n = (A051920 n : ℚ)

end A051920

/-! ## A051920.P5023162793506902336

`A218008(n)/2+2`
-/

namespace A051920.P5023162793506902336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218008 n : ℚ) / 2 + 2

end

end A051920.P5023162793506902336

namespace A051920

/-- `A218008(n)/2+2` -/
def P5023162793506902336.Spec : Prop :=
  ∀ n, P5023162793506902336.a n = (A051920 n : ℚ)

end A051920

/-! ## A051920.P5806238377598027452

`Δ[A072100(n+1)]+1`
-/

namespace A051920.P5806238377598027452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A051920.P5806238377598027452

namespace A051920

/-- `Δ[A072100(n+1)]+1` -/
def P5806238377598027452.Spec : Prop :=
  ∀ n, P5806238377598027452.a n = A051920 n

end A051920

/-! ## A051920.P12282572499215749669

`A063886(n+1)/2+1`
-/

namespace A051920.P12282572499215749669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063886 (n + 1) : ℚ) / 2 + 1

end

end A051920.P12282572499215749669

namespace A051920

/-- `A063886(n+1)/2+1` -/
def P12282572499215749669.Spec : Prop :=
  ∀ n, P12282572499215749669.a n = (A051920 n : ℚ)

end A051920

/-! ## A051920.P7133028610285378790

`A182027(n+2)/2+1`
-/

namespace A051920.P7133028610285378790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182027 (n + 2) : ℚ) / 2 + 1

end

end A051920.P7133028610285378790

namespace A051920

/-- `A182027(n+2)/2+1` -/
def P7133028610285378790.Spec : Prop :=
  ∀ n, P7133028610285378790.a n = (A051920 n : ℚ)

end A051920

/-! ## A051920.P6518009438178521683

`2*A001405(n)-A014495(n)`
-/

namespace A051920.P6518009438178521683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001405 n - A014495 n

end

end A051920.P6518009438178521683

namespace A051920

/-- `2*A001405(n)-A014495(n)` -/
def P6518009438178521683.Spec : Prop :=
  ∀ n, P6518009438178521683.a n = A051920 n

theorem P6518009438178521683.correct : P6518009438178521683.Spec := by
  intro n
  simp only [A051920, Nat.add_sub_cancel, A051920.P6518009438178521683.a, A051920.P2707849764288868979.a, A001405, A001405.P5205018418992951678.a, A014495, A014495.P8648755420632744383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051920

/-! ## A051920.P4068948567441336410

`∑[A037952(n)]+2-A037952(n)`
-/

namespace A051920.P4068948567441336410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A037952 n)

end

end A051920.P4068948567441336410

namespace A051920

/-- `∑[A037952(n)]+2-A037952(n)` -/
def P4068948567441336410.Spec : Prop :=
  ∀ n, P4068948567441336410.a n = A051920 n

end A051920

/-! ## A051920.P7551832435394416939

`A000051(n)-A045621(n)`
-/

namespace A051920.P7551832435394416939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A045621 n

end

end A051920.P7551832435394416939

namespace A051920

/-- `A000051(n)-A045621(n)` -/
def P7551832435394416939.Spec : Prop :=
  ∀ n, P7551832435394416939.a n = A051920 n

theorem P7551832435394416939.correct : P7551832435394416939.Spec := by
  intro n
  simp only [A051920, Nat.add_sub_cancel, A051920.P7551832435394416939.a, A051920.P2707849764288868979.a, A000051, A000051.P14067217022188782580.a, A045621, A045621.P8822809560474784251.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051920

/-! ## A051920.P9583848195374421885

`A261681(n)-A000918(n)`
-/

namespace A051920.P9583848195374421885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261681 n - A000918 n

end

end A051920.P9583848195374421885

namespace A051920

/-- `A261681(n)-A000918(n)` -/
def P9583848195374421885.Spec : Prop :=
  ∀ n, P9583848195374421885.a n = A051920 n

theorem P9583848195374421885.correct : P9583848195374421885.Spec := by
  intro n
  simp only [A051920, Nat.add_sub_cancel, A051920.P9583848195374421885.a, A051920.P2707849764288868979.a, A000918, A000918.P14329454465793069288.a, A261681, A261681.P9750562906251385611.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051920

/-! ## A051920.P11897639612920880034

`A100071(n+1)/(n+1)+1`
-/

namespace A051920.P11897639612920880034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100071 (n + 1) : ℚ) / (n + 1 : ℚ) + 1

end

end A051920.P11897639612920880034

namespace A051920

/-- `A100071(n+1)/(n+1)+1` -/
def P11897639612920880034.Spec : Prop :=
  ∀ n, P11897639612920880034.a n = (A051920 n : ℚ)

end A051920

/-!
# A051923: Partial sums of A051836.

The programs for A051923, the canonical program `A051923.P16927411281699274646` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051923 has offset 0).

The definition of A051923 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051923.P16927411281699274646

`C(n+5, 5)*(n+2)/2`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051923

/-- `C(n+5, 5)*(n+2)/2` -/
def P16927411281699274646.Spec : Prop :=
  ∀ n, P16927411281699274646.a n = (A051923 n : ℚ)

end A051923

/-! ## A051923.P13688174495935408011

`∑[∑[∑[∑[∑[3*n+1]]]]]`
-/

namespace A051923.P13688174495935408011
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051923.P13688174495935408011

namespace A051923

/-- `∑[∑[∑[∑[∑[3*n+1]]]]]` -/
def P13688174495935408011.Spec : Prop :=
  ∀ n, (P13688174495935408011.a n : ℤ) = A051923 n

end A051923

/-! ## A051923.P2702905180673868762

`floor(∑[∑[∑[∑[∑[a(n-1)+3]]]]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A051923.P2702905180673868762
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f5 =>
  f5 (n - 1) + 3

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051923.P2702905180673868762

namespace A051923

/-- `floor(∑[∑[∑[∑[∑[a(n-1)+3]]]]])` -/
def P2702905180673868762.Spec : Prop :=
  ∀ n, (P2702905180673868762.a n : ℤ) = A051923 n

end A051923

/-! ## A051923.P5969879035613104312

`∑[∑[∑[∑[a(n-1)+3]]]]+a(n-1)` with `a(0)=1`
-/

namespace A051923.P5969879035613104312
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f4 =>
  f4 (n - 1) + 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A051923.P5969879035613104312

namespace A051923

/-- `∑[∑[∑[∑[a(n-1)+3]]]]+a(n-1)` -/
def P5969879035613104312.Spec : Prop :=
  ∀ n, (P5969879035613104312.a n : ℤ) = A051923 n

end A051923

/-! ## A051923.P4474387774293614947

`((n+3)²+n+1)*a(n-1)/n/(n+1)` with `a(0)=1`
-/

namespace A051923.P4474387774293614947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 3) ^ 2 + (n + 1) : ℚ) * (a (n - 1) / (n : ℚ)) / (n + 1 : ℚ)

end

end A051923.P4474387774293614947

namespace A051923

/-- `((n+3)²+n+1)*a(n-1)/n/(n+1)` -/
def P4474387774293614947.Spec : Prop :=
  ∀ n, P4474387774293614947.a n = (A051923 n : ℚ)

end A051923

/-! ## A051923.P17442762903206934009

`A027801(n+1)/5`
-/

namespace A051923.P17442762903206934009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027801 (n + 1) : ℚ) / 5

end

end A051923.P17442762903206934009

namespace A051923

/-- `A027801(n+1)/5` -/
def P17442762903206934009.Spec : Prop :=
  ∀ n, P17442762903206934009.a n = (A051923 n : ℚ)

end A051923

/-! ## A051923.P12061531677859804031

`A107417(n)/(n+1)`
-/

namespace A051923.P12061531677859804031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107417 n : ℚ) / (n + 1 : ℚ)

end

end A051923.P12061531677859804031

namespace A051923

/-- `A107417(n)/(n+1)` -/
def P12061531677859804031.Spec : Prop :=
  ∀ n, P12061531677859804031.a n = (A051923 n : ℚ)

end A051923

/-! ## A051923.P6008303657899937498

`A271663(n)+a(n-2)` with `a(0)=1, a(1)=9`
-/

namespace A051923.P6008303657899937498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n a =>
  A271663 n + a (n - 2)

end

end A051923.P6008303657899937498

namespace A051923

/-- `A271663(n)+a(n-2)` -/
def P6008303657899937498.Spec : Prop :=
  ∀ n, P6008303657899937498.a n = A051923 n

end A051923

/-! ## A051923.P15404296015394629075

`A213563(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A051923.P15404296015394629075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A213563 (n + 1) - a (n - 1)

end

end A051923.P15404296015394629075

namespace A051923

/-- `A213563(n+1)-a(n-1)` -/
def P15404296015394629075.Spec : Prop :=
  ∀ n, P15404296015394629075.a n = A051923 n

end A051923

/-! ## A051923.P13994179471008242582

`A027811(n+1)/A020715(n)`
-/

namespace A051923.P13994179471008242582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027811 (n + 1) : ℚ) / (A020715 n : ℚ)

end

end A051923.P13994179471008242582

namespace A051923

/-- `A027811(n+1)/A020715(n)` -/
def P13994179471008242582.Spec : Prop :=
  ∀ n, P13994179471008242582.a n = (A051923 n : ℚ)

end A051923

/-! ## A051923.P2351567586294770841

`2*A166189(n)-A001753(n)`
-/

namespace A051923.P2351567586294770841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A166189 n - A001753 n

end

end A051923.P2351567586294770841

namespace A051923

/-- `2*A166189(n)-A001753(n)` -/
def P2351567586294770841.Spec : Prop :=
  ∀ n, P2351567586294770841.a n = A051923 n

end A051923

/-! ## A051923.P10464130946820341184

`A271035(n+1)%A253943(n+5)`
-/

namespace A051923.P10464130946820341184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271035 (n + 1)) (A253943 (n + 5))

end

end A051923.P10464130946820341184

namespace A051923

/-- `A271035(n+1)%A253943(n+5)` -/
def P10464130946820341184.Spec : Prop :=
  ∀ n, P10464130946820341184.a n = A051923 n

end A051923

/-! ## A051923.P16796030076420866548

`(A101094(n+1)+A005585(n+1))/2`
-/

namespace A051923.P16796030076420866548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101094 (n + 1) + A005585 (n + 1) : ℚ) / 2

end

end A051923.P16796030076420866548

namespace A051923

/-- `(A101094(n+1)+A005585(n+1))/2` -/
def P16796030076420866548.Spec : Prop :=
  ∀ n, P16796030076420866548.a n = (A051923 n : ℚ)

end A051923

/-! ## A051923.P5357198725791018200

`A005585(n+1)+A006542(n+4)-A040977(n)`
-/

namespace A051923.P5357198725791018200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005585 (n + 1) + (A006542 (n + 4) - A040977 n)

end

end A051923.P5357198725791018200

namespace A051923

/-- `A005585(n+1)+A006542(n+4)-A040977(n)` -/
def P5357198725791018200.Spec : Prop :=
  ∀ n, P5357198725791018200.a n = A051923 n

end A051923

/-! ## A051923.P9326865362520753220

`A051836(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A051923.P9326865362520753220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A051836 (n + 1) + a (n - 1)

end

end A051923.P9326865362520753220

namespace A051923

/-- `A051836(n+1)+a(n-1)` -/
def P9326865362520753220.Spec : Prop :=
  ∀ n, P9326865362520753220.a n = A051923 n

end A051923

/-! ## A051923.P9529581577165910339

`A004302(n+1)/A119771(n+1)*A027810(n)`
-/

namespace A051923.P9529581577165910339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004302 (n + 1) : ℚ) / (A119771 (n + 1) : ℚ) * (A027810 n : ℚ)

end

end A051923.P9529581577165910339

namespace A051923

/-- `A004302(n+1)/A119771(n+1)*A027810(n)` -/
def P9529581577165910339.Spec : Prop :=
  ∀ n, P9529581577165910339.a n = (A051923 n : ℚ)

end A051923

/-! ## A051923.P15256972932705459443

`(A299337(2*n)+A299336(2*n))/2`
-/

namespace A051923.P15256972932705459443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299337 (2 * n) + A299336 (2 * n) : ℚ) / 2

end

end A051923.P15256972932705459443

namespace A051923

/-- `(A299337(2*n)+A299336(2*n))/2` -/
def P15256972932705459443.Spec : Prop :=
  ∀ n, P15256972932705459443.a n = (A051923 n : ℚ)

end A051923

/-! ## A051923.P10411359083023204576

`(A060099(2*n+1)-A299337(2*n+1))/2`
-/

namespace A051923.P10411359083023204576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060099 (2 * n + 1) - A299337 (2 * n + 1) : ℚ) / 2

end

end A051923.P10411359083023204576

namespace A051923

/-- `(A060099(2*n+1)-A299337(2*n+1))/2` -/
def P10411359083023204576.Spec : Prop :=
  ∀ n, P10411359083023204576.a n = (A051923 n : ℚ)

end A051923

/-! ## A051923.P15812554325644979236

`A095660(A056115(n+2)+8)`
-/

namespace A051923.P15812554325644979236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095660 (A056115 (n + 2) + 8).toNat

end

end A051923.P15812554325644979236

namespace A051923

/-- `A095660(A056115(n+2)+8)` -/
def P15812554325644979236.Spec : Prop :=
  ∀ n, P15812554325644979236.a n = A051923 n

end A051923

/-! ## A051923.P4467059184883902994

`A391045(∑[n+3])`
-/

namespace A051923.P4467059184883902994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391045 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051923.P4467059184883902994

namespace A051923

/-- `A391045(∑[n+3])` -/
def P4467059184883902994.Spec : Prop :=
  ∀ n, P4467059184883902994.a n = A051923 n

end A051923

/-!
# A051924: a(n) = binomial(2*n,n) - binomial(2*n-2,n-1); or (3n-2)*C(n-1), where C = Catalan numbers (A000108).

The programs for A051924, the canonical program `A051924.P18005250198217998116` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051924 has offset 1).

The definition of A051924 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*(n+1), n+1)-C(2*(n+1)-2, n)` (program `A051924.P18005250198217998116`, by `A051924.P18005250198217998116.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051924.P8102808700337142797

`A001700(n)+A001791(n)`
-/

namespace A051924.P8102808700337142797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n + A001791 n

end

end A051924.P8102808700337142797

namespace A051924

/-- `A001700(n)+A001791(n)` -/
def P8102808700337142797.Spec : Prop :=
  ∀ n, P8102808700337142797.a n = A051924 (n + 1)

end A051924

/-! ## A051924.P16957792809227723861

`2*(3*(n+1)-2)*(2*(n+1)-3)*a(n-1)/((n+1)*(3*(n+1)-5))` with `a(0)=1`
-/

namespace A051924.P16957792809227723861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 * ((3 * (n + 1) : ℤ) - 2) * ((2 * (n + 1) : ℤ) - 3) : ℚ) * a (n - 1) / ((n + 1 : ℤ) * ((3 * (n + 1) : ℤ) - 5) : ℚ)

end

end A051924.P16957792809227723861

namespace A051924

/-- `2*(3*(n+1)-2)*(2*(n+1)-3)*a(n-1)/((n+1)*(3*(n+1)-5))` -/
def P16957792809227723861.Spec : Prop :=
  ∀ n, P16957792809227723861.a n = (A051924 (n + 1) : ℚ)

end A051924

/-! ## A051924.P2798732968623302987

`C(2*(n+1), n+1)-C(2*n, n)`
-/

namespace A051924.P2798732968623302987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (n + 1)) (n + 1) : ℤ) - (Nat.choose (2 * n) n : ℤ)

end

end A051924.P2798732968623302987

namespace A051924

/-- `C(2*(n+1), n+1)-C(2*n, n)` -/
def P2798732968623302987.Spec : Prop :=
  ∀ n, P2798732968623302987.a n = A051924 (n + 1)

end A051924

/-! ## A051924.P18005250198217998116

`C(2*(n+1), n+1)-C(2*(n+1)-2, n)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051924

/-- `C(2*(n+1), n+1)-C(2*(n+1)-2, n)` -/
def P18005250198217998116.Spec : Prop :=
  ∀ n, P18005250198217998116.a n = A051924 (n + 1)

theorem P18005250198217998116.correct : P18005250198217998116.Spec := by
  intro n
  simp only [A051924, Nat.add_sub_cancel]

end A051924

/-! ## A051924.P16096635279610417071

`(3*(n+1)-2)*(2*(n+1)-2)!/((n+1)*n!²)`
-/

namespace A051924.P16096635279610417071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((3 * (n + 1) : ℤ) - 2) * (Nat.factorial ((2 * (n + 1) : ℤ) - 2).toNat : ℤ) : ℚ) / ((n + 1) * Nat.factorial n ^ 2 : ℚ)

end

end A051924.P16096635279610417071

namespace A051924

/-- `(3*(n+1)-2)*(2*(n+1)-2)!/((n+1)*n!²)` -/
def P16096635279610417071.Spec : Prop :=
  ∀ n, P16096635279610417071.a n = (A051924 (n + 1) : ℚ)

end A051924

/-! ## A051924.P3373405702206002707

`Δ[(4-2/n)*a(n-1)]` with `a(0)=1`
-/

namespace A051924.P3373405702206002707
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (4 - 2 / (n : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051924.P3373405702206002707

namespace A051924

/-- `Δ[(4-2/n)*a(n-1)]` -/
def P3373405702206002707.Spec : Prop :=
  ∀ n, P3373405702206002707.a n = (A051924 (n + 1) : ℚ)

end A051924

/-! ## A051924.P1753070884510377175

`Δ[2*(2-n^(-1))*a(n-1)]` with `a(0)=1`
-/

namespace A051924.P1753070884510377175
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * ((2 - (n : ℚ) ^ (-1 : ℤ)) * f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051924.P1753070884510377175

namespace A051924

/-- `Δ[2*(2-n^(-1))*a(n-1)]` -/
def P1753070884510377175.Spec : Prop :=
  ∀ n, P1753070884510377175.a n = (A051924 (n + 1) : ℚ)

end A051924

/-! ## A051924.P3515106659851948705

`Δ[A000984(n)]`
-/

namespace A051924.P3515106659851948705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051924.P3515106659851948705

namespace A051924

/-- `Δ[A000984(n)]` -/
def P3515106659851948705.Spec : Prop :=
  ∀ n, P3515106659851948705.a n = A051924 (n + 1)

end A051924

/-! ## A051924.P4150004639642595730

`A026010(2*n)`
-/

namespace A051924.P4150004639642595730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026010 (2 * n)

end

end A051924.P4150004639642595730

namespace A051924

/-- `A026010(2*n)` -/
def P4150004639642595730.Spec : Prop :=
  ∀ n, P4150004639642595730.a n = A051924 (n + 1)

end A051924

/-! ## A051924.P2836110922016110710

`A337499(2*n)`
-/

namespace A051924.P2836110922016110710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337499 (2 * n)

end

end A051924.P2836110922016110710

namespace A051924

/-- `A337499(2*n)` -/
def P2836110922016110710.Spec : Prop :=
  ∀ n, P2836110922016110710.a n = A051924 (n + 1)

end A051924

/-! ## A051924.P436159109731746837

`Δ[record[A081668(n)]]`
-/

namespace A051924.P436159109731746837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051924.P436159109731746837

namespace A051924

/-- `Δ[record[A081668(n)]]` -/
def P436159109731746837.Spec : Prop :=
  ∀ n, P436159109731746837.a n = A051924 (n + 1)

end A051924

/-! ## A051924.P14739220678011582992

`Δ[record[A089849(n)]]`
-/

namespace A051924.P14739220678011582992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089849 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051924.P14739220678011582992

namespace A051924

/-- `Δ[record[A089849(n)]]` -/
def P14739220678011582992.Spec : Prop :=
  ∀ n, P14739220678011582992.a n = A051924 (n + 1)

end A051924

/-! ## A051924.P3489810524980918829

`Δ[record[A126869(n)]]`
-/

namespace A051924.P3489810524980918829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051924.P3489810524980918829

namespace A051924

/-- `Δ[record[A126869(n)]]` -/
def P3489810524980918829.Spec : Prop :=
  ∀ n, P3489810524980918829.a n = A051924 (n + 1)

end A051924

/-! ## A051924.P6073808375339349447

`Δ[record[A126930(n)]]`
-/

namespace A051924.P6073808375339349447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051924.P6073808375339349447

namespace A051924

/-- `Δ[record[A126930(n)]]` -/
def P6073808375339349447.Spec : Prop :=
  ∀ n, P6073808375339349447.a n = A051924 (n + 1)

end A051924

/-! ## A051924.P2383815730573208513

`Δ[record[A241543(n)]]`
-/

namespace A051924.P2383815730573208513
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241543 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051924.P2383815730573208513

namespace A051924

/-- `Δ[record[A241543(n)]]` -/
def P2383815730573208513.Spec : Prop :=
  ∀ n, P2383815730573208513.a n = A051924 (n + 1)

end A051924

/-! ## A051924.P14674281766704739283

`Δ[A045992(n)]+1`
-/

namespace A051924.P14674281766704739283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045992 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A051924.P14674281766704739283

namespace A051924

/-- `Δ[A045992(n)]+1` -/
def P14674281766704739283.Spec : Prop :=
  ∀ n, P14674281766704739283.a n = A051924 (n + 1)

end A051924

/-! ## A051924.P658396542645509811

`Δ[A323230(n+1)]`
-/

namespace A051924.P658396542645509811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051924.P658396542645509811

namespace A051924

/-- `Δ[A323230(n+1)]` -/
def P658396542645509811.Spec : Prop :=
  ∀ n, P658396542645509811.a n = A051924 (n + 1)

end A051924

/-! ## A051924.P10452681938643891946

`Δ[A134758(n)]-1`
-/

namespace A051924.P10452681938643891946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134758 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A051924.P10452681938643891946

namespace A051924

/-- `Δ[A134758(n)]-1` -/
def P10452681938643891946.Spec : Prop :=
  ∀ n, P10452681938643891946.a n = A051924 (n + 1)

end A051924

/-! ## A051924.P12504502795028314360

`Δ[A001405(2*n)]`
-/

namespace A051924.P12504502795028314360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051924.P12504502795028314360

namespace A051924

/-- `Δ[A001405(2*n)]` -/
def P12504502795028314360.Spec : Prop :=
  ∀ n, P12504502795028314360.a n = A051924 (n + 1)

end A051924

/-! ## A051924.P4065933434700352783

`Δ[A014495(2*n)]`
-/

namespace A051924.P4065933434700352783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051924.P4065933434700352783

namespace A051924

/-- `Δ[A014495(2*n)]` -/
def P4065933434700352783.Spec : Prop :=
  ∀ n, P4065933434700352783.a n = A051924 (n + 1)

end A051924

/-!
# A051925: a(n) = n*(2*n+5)*(n-1)/6.

The programs for A051925, the canonical program `A051925.P17489283095479781563` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051925 has offset 0).

The definition of A051925 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(2*n+5)*(n-1)/6` (program `A051925.P5089752500371591700`, by `A051925.P5089752500371591700.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051925.P5089752500371591700

`n*(2*n+5)*(n-1)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051925.P5089752500371591700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (2 * n + 5) : ℤ) * ((n : ℤ) - 1) : ℚ) / 6

end

end A051925.P5089752500371591700

namespace A051925

/-- `n*(2*n+5)*(n-1)/6` -/
def P5089752500371591700.Spec : Prop :=
  ∀ n, P5089752500371591700.a n = (A051925 n : ℚ)

theorem P5089752500371591700.correct : P5089752500371591700.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A051925, Nat.add_sub_cancel, A051925.P5089752500371591700.a, A051925.P17489283095479781563.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A051925, Nat.add_sub_cancel, A051925.P5089752500371591700.a, A051925.P17489283095479781563.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A051925

/-! ## A051925.P17489283095479781563

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=11`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051925

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P17489283095479781563.Spec : Prop :=
  ∀ n, P17489283095479781563.a n = A051925 n

theorem P17489283095479781563.correct : P17489283095479781563.Spec := by
  intro n
  simp only [A051925]

end A051925

/-! ## A051925.P999715800708364953

`A000330(n)-n`
-/

namespace A051925.P999715800708364953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n - (n : ℤ)

end

end A051925.P999715800708364953

namespace A051925

/-- `A000330(n)-n` -/
def P999715800708364953.Spec : Prop :=
  ∀ n, P999715800708364953.a n = A051925 n

end A051925

/-! ## A051925.P12919609174605863838

`∑[n^ceil(atan(n))-1]`
-/

namespace A051925.P12919609174605863838
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051925.P12919609174605863838

namespace A051925

/-- `∑[n^ceil(atan(n))-1]` -/
def P12919609174605863838.Spec : Prop :=
  ∀ n, P12919609174605863838.a n = (A051925 n : ℚ)

end A051925

/-! ## A051925.P258464698480292819

`∑[floor(n^3*acot(n))]`
-/

namespace A051925.P258464698480292819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 3 : ℝ) * SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051925.P258464698480292819

namespace A051925

/-- `∑[floor(n^3*acot(n))]` -/
def P258464698480292819.Spec : Prop :=
  ∀ n, P258464698480292819.a n = A051925 n

end A051925

/-! ## A051925.P1192770838871230347

`∑[floor(n*(n-acot(n)))]`
-/

namespace A051925.P1192770838871230347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * ((n : ℝ) - SequenceMachineLib.acot (n : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051925.P1192770838871230347

namespace A051925

/-- `∑[floor(n*(n-acot(n)))]` -/
def P1192770838871230347.Spec : Prop :=
  ∀ n, P1192770838871230347.a n = A051925 n

end A051925

/-! ## A051925.P5658876882183887737

`∑[round(n*(n-acot(n)))]`
-/

namespace A051925.P5658876882183887737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * ((n : ℝ) - SequenceMachineLib.acot (n : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051925.P5658876882183887737

namespace A051925

/-- `∑[round(n*(n-acot(n)))]` -/
def P5658876882183887737.Spec : Prop :=
  ∀ n, P5658876882183887737.a n = A051925 n

end A051925

/-! ## A051925.P8735949823107955231

`∑[floor((n²*acot(n))²)]`
-/

namespace A051925.P8735949823107955231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 : ℝ) * SequenceMachineLib.acot (n : ℝ)) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051925.P8735949823107955231

namespace A051925

/-- `∑[floor((n²*acot(n))²)]` -/
def P8735949823107955231.Spec : Prop :=
  ∀ n, P8735949823107955231.a n = A051925 n

end A051925

/-! ## A051925.P1045095725584439339

`a(n-1)+n²-1` with `a(0)=0`
-/

namespace A051925.P1045095725584439339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((n ^ 2 : ℤ) - 1)

end

end A051925.P1045095725584439339

namespace A051925

/-- `a(n-1)+n²-1` -/
def P1045095725584439339.Spec : Prop :=
  ∀ n, P1045095725584439339.a n = A051925 n

end A051925

/-! ## A051925.P12420320266000652930

`n²-(1-a(n-1))` with `a(0)=0`
-/

namespace A051925.P12420320266000652930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n ^ 2 : ℤ) - (1 - a (n - 1))

end

end A051925.P12420320266000652930

namespace A051925

/-- `n²-(1-a(n-1))` -/
def P12420320266000652930.Spec : Prop :=
  ∀ n, P12420320266000652930.a n = A051925 n

end A051925

/-! ## A051925.P8931442685126506423

`∑[n^(2%(n+1))-1]`
-/

namespace A051925.P8931442685126506423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ (2 % (n + 1)) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051925.P8931442685126506423

namespace A051925

/-- `∑[n^(2%(n+1))-1]` -/
def P8931442685126506423.Spec : Prop :=
  ∀ n, P8931442685126506423.a n = A051925 n

end A051925

/-! ## A051925.P8132142979802842779

`Δ[(n+3)/2*C(n, 3)]`
-/

namespace A051925.P8132142979802842779
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / 2 * (Nat.choose n 3 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051925.P8132142979802842779

namespace A051925

/-- `Δ[(n+3)/2*C(n, 3)]` -/
def P8132142979802842779.Spec : Prop :=
  ∀ n, P8132142979802842779.a n = (A051925 n : ℚ)

end A051925

/-! ## A051925.P1953544518018527141

`∑[(2*n²)%(n²+1)]`
-/

namespace A051925.P1953544518018527141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2 % (n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051925.P1953544518018527141

namespace A051925

/-- `∑[(2*n²)%(n²+1)]` -/
def P1953544518018527141.Spec : Prop :=
  ∀ n, (P1953544518018527141.a n : ℤ) = A051925 n

end A051925

/-! ## A051925.P4464351422602159433

`∑[∑[a(n-1)+2]]` with `a(0)=0, a(1)=0, a(2)=3`
-/

namespace A051925.P4464351422602159433
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 3] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051925.P4464351422602159433

namespace A051925

/-- `∑[∑[a(n-1)+2]]` -/
def P4464351422602159433.Spec : Prop :=
  ∀ n, (P4464351422602159433.a n : ℤ) = A051925 n

end A051925

/-! ## A051925.P14076431781743142272

`n*n+a(n-1)-1` with `a(0)=0`
-/

namespace A051925.P14076431781743142272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n * n : ℤ) + (a (n - 1) - 1)

end

end A051925.P14076431781743142272

namespace A051925

/-- `n*n+a(n-1)-1` -/
def P14076431781743142272.Spec : Prop :=
  ∀ n, P14076431781743142272.a n = A051925 n

end A051925

/-! ## A051925.P5459290727445660283

`∑[(n+1)*(n-1)%(n+1)]`
-/

namespace A051925.P5459290727445660283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051925.P5459290727445660283

namespace A051925

/-- `∑[(n+1)*(n-1)%(n+1)]` -/
def P5459290727445660283.Spec : Prop :=
  ∀ n, P5459290727445660283.a n = A051925 n

end A051925

/-! ## A051925.P17095505191319012541

`-xor(-1, ∑[(n+1)*(n-1)])`
-/

namespace A051925.P17095505191319012541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051925.P17095505191319012541

namespace A051925

/-- `-xor(-1, ∑[(n+1)*(n-1)])` -/
def P17095505191319012541.Spec : Prop :=
  ∀ n, P17095505191319012541.a n = A051925 n

end A051925

/-! ## A051925.P7945318827489915384

`∑[n*gcd(n, a(n-1))-1]` with `a(0)=0`
-/

namespace A051925.P7945318827489915384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n * Int.gcd (n : ℤ) (f1 (n - 1)) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051925.P7945318827489915384

namespace A051925

/-- `∑[n*gcd(n, a(n-1))-1]` -/
def P7945318827489915384.Spec : Prop :=
  ∀ n, P7945318827489915384.a n = A051925 n

end A051925

/-! ## A051925.P7987312408029689701

`∑[(n+1)*(n-floor(atan(n+1)))]`
-/

namespace A051925.P7987312408029689701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n : ℤ) - ⌊Real.arctan (n + 1 : ℝ)⌋)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051925.P7987312408029689701

namespace A051925

/-- `∑[(n+1)*(n-floor(atan(n+1)))]` -/
def P7987312408029689701.Spec : Prop :=
  ∀ n, P7987312408029689701.a n = A051925 n

end A051925

/-! ## A051925.P1041550817656414218

`∑[2*n-(1-a(n-1))]` with `a(0)=0, a(1)=0`
-/

namespace A051925.P1041550817656414218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  (2 * n : ℤ) - (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051925.P1041550817656414218

namespace A051925

/-- `∑[2*n-(1-a(n-1))]` -/
def P1041550817656414218.Spec : Prop :=
  ∀ n, P1041550817656414218.a n = A051925 n

end A051925

/-!
# A051926: Number of independent sets of nodes in graph C_4 X P_n (n>2).

The programs for A051926, the canonical program `A051926.P15553188178051803573` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051926 has offset 0).

The definition of A051926 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051926.P15553188178051803573

`5*a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=7, a(2)=35`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051926

/-- `5*a(n-1)+a(n-2)-a(n-3)` -/
def P15553188178051803573.Spec : Prop :=
  ∀ n, P15553188178051803573.a n = A051926 n

theorem P15553188178051803573.correct : P15553188178051803573.Spec := by
  intro n
  simp only [A051926]

end A051926

/-! ## A051926.P3960090728054763063

`ogf((1+2x-x^2)/(1-5x-x^2+x^3))`
-/

namespace A051926.P3960090728054763063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1] [1, -5, -1, 1] n

end

end A051926.P3960090728054763063

namespace A051926

/-- `ogf((1+2x-x^2)/(1-5x-x^2+x^3))` -/
def P3960090728054763063.Spec : Prop :=
  ∀ n, P3960090728054763063.a n = A051926 n

end A051926

/-! ## A051926.P17020870228980112377

`record[A286513(∑[n]+4)]`
-/

namespace A051926.P17020870228980112377
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286513 (∑ j ∈ Finset.range (n + 1), f2 j + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051926.P17020870228980112377

namespace A051926

/-- `record[A286513(∑[n]+4)]` -/
def P17020870228980112377.Spec : Prop :=
  ∀ n, P17020870228980112377.a n = A051926 n

end A051926

/-! ## A051926.P2797949644488784074

`A286513(∑[n+2]+5)`
-/

namespace A051926.P2797949644488784074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286513 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A051926.P2797949644488784074

namespace A051926

/-- `A286513(∑[n+2]+5)` -/
def P2797949644488784074.Spec : Prop :=
  ∀ n, P2797949644488784074.a n = A051926 n

end A051926

/-! ## A051926.P10786205456089952388

`record[A286513(n+4)/A286513(n+1)]`
-/

namespace A051926.P10786205456089952388
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286513 (n + 4) : ℚ) / (A286513 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051926.P10786205456089952388

namespace A051926

/-- `record[A286513(n+4)/A286513(n+1)]` -/
def P10786205456089952388.Spec : Prop :=
  ∀ n, P10786205456089952388.a n = (A051926 n : ℚ)

end A051926

/-!
# A051927: Number of independent vertex sets in the n-prism graph Y_n = K_2 X C_n (n > 2).

The programs for A051927, the canonical program `A051927.P9074890548432425938` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051927 has offset 0).

The definition of A051927 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051927.P9074890548432425938

`a(n-1)+3*a(n-2)+a(n-3)` with `a(0)=3, a(1)=1, a(2)=7`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051927

/-- `a(n-1)+3*a(n-2)+a(n-3)` -/
def P9074890548432425938.Spec : Prop :=
  ∀ n, (P9074890548432425938.a n : ℤ) = A051927 n

theorem P9074890548432425938.correct : P9074890548432425938.Spec := by
  intro n
  simp only [A051927]

end A051927

/-! ## A051927.P11449772338048897779

`A002203(n)+(-1)^n`
-/

namespace A051927.P11449772338048897779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n + (-1) ^ n

end

end A051927.P11449772338048897779

namespace A051927

/-- `A002203(n)+(-1)^n` -/
def P11449772338048897779.Spec : Prop :=
  ∀ n, P11449772338048897779.a n = A051927 n

end A051927

/-! ## A051927.P14036980179929311452

`ogf((-3+2x+3x^2)/(-1+x+3x^2+x^3))`
-/

namespace A051927.P14036980179929311452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2, -3] [1, -1, -3, -1] n

end

end A051927.P14036980179929311452

namespace A051927

/-- `ogf((-3+2x+3x^2)/(-1+x+3x^2+x^3))` -/
def P14036980179929311452.Spec : Prop :=
  ∀ n, P14036980179929311452.a n = A051927 n

end A051927

/-! ## A051927.P5792444033142810095

`(-1)^n+(1-sqrt(2))^n+(1+sqrt(2))^n`
-/

namespace A051927.P5792444033142810095
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n : ℝ) + (1 - Real.sqrt (2 : ℝ)) ^ n + (1 + Real.sqrt (2 : ℝ)) ^ n

end

end A051927.P5792444033142810095

namespace A051927

/-- `(-1)^n+(1-sqrt(2))^n+(1+sqrt(2))^n` -/
def P5792444033142810095.Spec : Prop :=
  ∀ n, P5792444033142810095.a n = (A051927 n : ℝ)

theorem P5792444033142810095.correct : P5792444033142810095.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A051927, Nat.add_sub_cancel, A051927.P5792444033142810095.a, A051927.P9074890548432425938.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A051927, Nat.add_sub_cancel, A051927.P5792444033142810095.a, A051927.P9074890548432425938.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A051927

/-! ## A051927.P7665059715679824237

`xor(2, A182143(n))`
-/

namespace A051927.P7665059715679824237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A182143 n)

end

end A051927.P7665059715679824237

namespace A051927

/-- `xor(2, A182143(n))` -/
def P7665059715679824237.Spec : Prop :=
  ∀ n, P7665059715679824237.a n = A051927 n

end A051927

/-! ## A051927.P16866842642670393885

`abs(2*A123335(n)+1)`
-/

namespace A051927.P16866842642670393885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A123335 n + 1|

end

end A051927.P16866842642670393885

namespace A051927

/-- `abs(2*A123335(n)+1)` -/
def P16866842642670393885.Spec : Prop :=
  ∀ n, P16866842642670393885.a n = A051927 n

end A051927

/-! ## A051927.P3682085237794992278

`xor(A002203(n), A010684(n))`
-/

namespace A051927.P3682085237794992278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002203 n) (A010684 n)

end

end A051927.P3682085237794992278

namespace A051927

/-- `xor(A002203(n), A010684(n))` -/
def P3682085237794992278.Spec : Prop :=
  ∀ n, P3682085237794992278.a n = A051927 n

end A051927

/-! ## A051927.P11104356763398971692

`xor(A010693(n), A080039(n))`
-/

namespace A051927.P11104356763398971692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010693 n) (A080039 n)

end

end A051927.P11104356763398971692

namespace A051927

/-- `xor(A010693(n), A080039(n))` -/
def P11104356763398971692.Spec : Prop :=
  ∀ n, P11104356763398971692.a n = A051927 n

end A051927

/-! ## A051927.P3817950894757616513

`xor(A010673(n+1), A100227(n))`
-/

namespace A051927.P3817950894757616513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010673 (n + 1)) (A100227 n)

end

end A051927.P3817950894757616513

namespace A051927

/-- `xor(A010673(n+1), A100227(n))` -/
def P3817950894757616513.Spec : Prop :=
  ∀ n, P3817950894757616513.a n = A051927 n

end A051927

/-! ## A051927.P4163942978124834553

`xor(A002203(n), A176040(n+1))`
-/

namespace A051927.P4163942978124834553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002203 n) (A176040 (n + 1))

end

end A051927.P4163942978124834553

namespace A051927

/-- `xor(A002203(n), A176040(n+1))` -/
def P4163942978124834553.Spec : Prop :=
  ∀ n, P4163942978124834553.a n = A051927 n

end A051927

/-! ## A051927.P599127942592490039

`xor(2, A080039(n)+A000035(n))`
-/

namespace A051927.P599127942592490039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A080039 n + A000035 n)

end

end A051927.P599127942592490039

namespace A051927

/-- `xor(2, A080039(n)+A000035(n))` -/
def P599127942592490039.Spec : Prop :=
  ∀ n, P599127942592490039.a n = A051927 n

end A051927

/-! ## A051927.P14316560697970216794

`xor(A002203(n), A099545(2*n+1))`
-/

namespace A051927.P14316560697970216794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002203 n) (A099545 (2 * n + 1))

end

end A051927.P14316560697970216794

namespace A051927

/-- `xor(A002203(n), A099545(2*n+1))` -/
def P14316560697970216794.Spec : Prop :=
  ∀ n, P14316560697970216794.a n = A051927 n

end A051927

/-! ## A051927.P7701482447948780789

`Δ[A000034(n)+Δ[A001333(n)]]`
-/

namespace A051927.P7701482447948780789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051927.P7701482447948780789

namespace A051927

/-- `Δ[A000034(n)+Δ[A001333(n)]]` -/
def P7701482447948780789.Spec : Prop :=
  ∀ n, P7701482447948780789.a n = A051927 n

end A051927

/-! ## A051927.P4562042269972495904

`Δ[A163271(n+1)+A000034(n)]`
-/

namespace A051927.P4562042269972495904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163271 (n + 1) + A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051927.P4562042269972495904

namespace A051927

/-- `Δ[A163271(n+1)+A000034(n)]` -/
def P4562042269972495904.Spec : Prop :=
  ∀ n, P4562042269972495904.a n = A051927 n

end A051927

/-! ## A051927.P10132422540923299842

`Δ[A000034(n)+2*A000129(n)]`
-/

namespace A051927.P10132422540923299842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + 2 * A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051927.P10132422540923299842

namespace A051927

/-- `Δ[A000034(n)+2*A000129(n)]` -/
def P10132422540923299842.Spec : Prop :=
  ∀ n, P10132422540923299842.a n = A051927 n

end A051927

/-! ## A051927.P4612659127957478619

`(A002203(n)²-1)/A182143(n)`
-/

namespace A051927.P4612659127957478619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002203 n ^ 2 - 1 : ℚ) / (A182143 n : ℚ)

end

end A051927.P4612659127957478619

namespace A051927

/-- `(A002203(n)²-1)/A182143(n)` -/
def P4612659127957478619.Spec : Prop :=
  ∀ n, P4612659127957478619.a n = (A051927 n : ℚ)

end A051927

/-!
# A051928: Number of independent sets of vertices in graph K_3 X C_n (n > 2).

The programs for A051928, the canonical program `A051928.P13066013823434318633` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051928 has offset 0).

The definition of A051928 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051928.P13066013823434318633

`2*a(n-1)+4*a(n-2)+a(n-3)` with `a(0)=4, a(1)=1, a(2)=13`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051928

/-- `2*a(n-1)+4*a(n-2)+a(n-3)` -/
def P13066013823434318633.Spec : Prop :=
  ∀ n, (P13066013823434318633.a n : ℤ) = A051928 n

theorem P13066013823434318633.correct : P13066013823434318633.Spec := by
  intro n
  simp only [A051928]

end A051928

/-! ## A051928.P5385105020344613961

`ogf((-4+7x+5x^2)/(-1+2x+4x^2+x^3))`
-/

namespace A051928.P5385105020344613961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -7, -5] [1, -2, -4, -1] n

end

end A051928.P5385105020344613961

namespace A051928

/-- `ogf((-4+7x+5x^2)/(-1+2x+4x^2+x^3))` -/
def P5385105020344613961.Spec : Prop :=
  ∀ n, P5385105020344613961.a n = A051928 n

end A051928

/-! ## A051928.P16134153902878301720

`2*(-1)^n+((3-sqrt(13))/2)^n+((3+sqrt(13))/2)^n`
-/

namespace A051928.P16134153902878301720
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * (-1) ^ n : ℝ) + ((3 - Real.sqrt (13 : ℝ)) / 2) ^ n + ((3 + Real.sqrt (13 : ℝ)) / 2) ^ n

end

end A051928.P16134153902878301720

namespace A051928

/-- `2*(-1)^n+((3-sqrt(13))/2)^n+((3+sqrt(13))/2)^n` -/
def P16134153902878301720.Spec : Prop :=
  ∀ n, P16134153902878301720.a n = (A051928 n : ℝ)

theorem P16134153902878301720.correct : P16134153902878301720.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A051928, Nat.add_sub_cancel, A051928.P16134153902878301720.a, A051928.P13066013823434318633.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A051928, Nat.add_sub_cancel, A051928.P16134153902878301720.a, A051928.P13066013823434318633.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A051928

/-! ## A051928.P18291466250893643352

`abs(A006497(n)*A033999(n)+2)`
-/

namespace A051928.P18291466250893643352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006497 n * A033999 n + 2|

end

end A051928.P18291466250893643352

namespace A051928

/-- `abs(A006497(n)*A033999(n)+2)` -/
def P18291466250893643352.Spec : Prop :=
  ∀ n, P18291466250893643352.a n = A051928 n

end A051928

/-! ## A051928.P14180766704925878849

`abs(A006497(n)*A087960(2*n)+2)`
-/

namespace A051928.P14180766704925878849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006497 n * A087960 (2 * n) + 2|

end

end A051928.P14180766704925878849

namespace A051928

/-- `abs(A006497(n)*A087960(2*n)+2)` -/
def P14180766704925878849.Spec : Prop :=
  ∀ n, P14180766704925878849.a n = A051928 n

end A051928

/-!
# A051929: Number of independent sets of vertices in graph K_4 X C_n (n > 2).

The programs for A051929, the canonical program `A051929.P13184414836089518442` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051929 has offset 0).

The definition of A051929 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051929.P13184414836089518442

`3*a(n-1)+5*a(n-2)+a(n-3)` with `a(0)=5, a(1)=1, a(2)=21`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051929

/-- `3*a(n-1)+5*a(n-2)+a(n-3)` -/
def P13184414836089518442.Spec : Prop :=
  ∀ n, (P13184414836089518442.a n : ℤ) = A051929 n

theorem P13184414836089518442.correct : P13184414836089518442.Spec := by
  intro n
  simp only [A051929]

end A051929

/-! ## A051929.P18008895992164943423

`3*(-1)^n+(2-sqrt(5))^n+(2+sqrt(5))^n`
-/

namespace A051929.P18008895992164943423
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 * (-1) ^ n : ℝ) + (2 - Real.sqrt (5 : ℝ)) ^ n + (2 + Real.sqrt (5 : ℝ)) ^ n

end

end A051929.P18008895992164943423

namespace A051929

/-- `3*(-1)^n+(2-sqrt(5))^n+(2+sqrt(5))^n` -/
def P18008895992164943423.Spec : Prop :=
  ∀ n, P18008895992164943423.a n = (A051929 n : ℝ)

theorem P18008895992164943423.correct : P18008895992164943423.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A051929, Nat.add_sub_cancel, A051929.P18008895992164943423.a, A051929.P13184414836089518442.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A051929, Nat.add_sub_cancel, A051929.P18008895992164943423.a, A051929.P13184414836089518442.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A051929

/-! ## A051929.P18058973265084745441

`xor(4, A098600(3*n))`
-/

namespace A051929.P18058973265084745441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (A098600 (3 * n))

end

end A051929.P18058973265084745441

namespace A051929

/-- `xor(4, A098600(3*n))` -/
def P18058973265084745441.Spec : Prop :=
  ∀ n, P18058973265084745441.a n = A051929 n

end A051929

/-! ## A051929.P16894352465629965524

`xor(5, A001350(3*n))`
-/

namespace A051929.P16894352465629965524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (A001350 (3 * n))

end

end A051929.P16894352465629965524

namespace A051929

/-- `xor(5, A001350(3*n))` -/
def P16894352465629965524.Spec : Prop :=
  ∀ n, P16894352465629965524.a n = A051929 n

end A051929

/-! ## A051929.P5811586520715538421

`xor(7, A020878(3*n))`
-/

namespace A051929.P5811586520715538421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 7 (A020878 (3 * n))

end

end A051929.P5811586520715538421

namespace A051929

/-- `xor(7, A020878(3*n))` -/
def P5811586520715538421.Spec : Prop :=
  ∀ n, P5811586520715538421.a n = A051929 n

end A051929

/-! ## A051929.P6088391199269976371

`xor(6, or(3, A014448(n)))`
-/

namespace A051929.P6088391199269976371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 (Int.lor 3 (A014448 n))

end

end A051929.P6088391199269976371

namespace A051929

/-- `xor(6, or(3, A014448(n)))` -/
def P6088391199269976371.Spec : Prop :=
  ∀ n, P6088391199269976371.a n = A051929 n

end A051929

/-! ## A051929.P17397212418121760268

`xor(4, A181716(3*n+1))`
-/

namespace A051929.P17397212418121760268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (A181716 (3 * n + 1))

end

end A051929.P17397212418121760268

namespace A051929

/-- `xor(4, A181716(3*n+1))` -/
def P17397212418121760268.Spec : Prop :=
  ∀ n, P17397212418121760268.a n = A051929 n

end A051929

/-! ## A051929.P605875348923360071

`xor(6, or(3, A000032(3*n)))`
-/

namespace A051929.P605875348923360071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 (Int.lor 3 (A000032 (3 * n)))

end

end A051929.P605875348923360071

namespace A051929

/-- `xor(6, or(3, A000032(3*n)))` -/
def P605875348923360071.Spec : Prop :=
  ∀ n, P605875348923360071.a n = A051929 n

end A051929

/-! ## A051929.P5319544121209709158

`xor(A100233(n), A105397(n))`
-/

namespace A051929.P5319544121209709158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A100233 n) (A105397 n)

end

end A051929.P5319544121209709158

namespace A051929

/-- `xor(A100233(n), A105397(n))` -/
def P5319544121209709158.Spec : Prop :=
  ∀ n, P5319544121209709158.a n = A051929 n

end A051929

/-!
# A051930: Number of independent sets of vertices in graph K_5 X C_n (n > 2).

The programs for A051930, the canonical program `A051930.P1943446384532561090` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051930 has offset 0).

The definition of A051930 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051930.P1943446384532561090

`4*a(n-1)+6*a(n-2)+a(n-3)` with `a(0)=6, a(1)=1, a(2)=31`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051930

/-- `4*a(n-1)+6*a(n-2)+a(n-3)` -/
def P1943446384532561090.Spec : Prop :=
  ∀ n, (P1943446384532561090.a n : ℤ) = A051930 n

theorem P1943446384532561090.correct : P1943446384532561090.Spec := by
  intro n
  simp only [A051930]

end A051930

/-! ## A051930.P3010500458477486881

`A087130(n)+4*A033999(n)`
-/

namespace A051930.P3010500458477486881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087130 n + 4 * A033999 n

end

end A051930.P3010500458477486881

namespace A051930

/-- `A087130(n)+4*A033999(n)` -/
def P3010500458477486881.Spec : Prop :=
  ∀ n, P3010500458477486881.a n = A051930 n

end A051930

/-! ## A051930.P17892608063924186475

`A087130(n)-A101038(A000217(n+3))`
-/

namespace A051930.P17892608063924186475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087130 n - A101038 (A000217 (n + 3)).toNat

end

end A051930.P17892608063924186475

namespace A051930

/-- `A087130(n)-A101038(A000217(n+3))` -/
def P17892608063924186475.Spec : Prop :=
  ∀ n, P17892608063924186475.a n = A051930 n

end A051930

/-! ## A051930.P1220090288855566731

`A101038(A133263(3*n+4))+A087130(n)`
-/

namespace A051930.P1220090288855566731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101038 (A133263 (3 * n + 4)).toNat + A087130 n

end

end A051930.P1220090288855566731

namespace A051930

/-- `A101038(A133263(3*n+4))+A087130(n)` -/
def P1220090288855566731.Spec : Prop :=
  ∀ n, P1220090288855566731.a n = A051930 n

end A051930

/-!
# A051931: Number of independent sets of nodes in graph K_6 X C_n (n > 2).

The programs for A051931, the canonical program `A051931.P3567191690759380197` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051931 has offset 0).

The definition of A051931 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051931.P3567191690759380197

`5*a(n-1)+7*a(n-2)+a(n-3)` with `a(0)=7, a(1)=1, a(2)=43`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051931

/-- `5*a(n-1)+7*a(n-2)+a(n-3)` -/
def P3567191690759380197.Spec : Prop :=
  ∀ n, (P3567191690759380197.a n : ℤ) = A051931 n

theorem P3567191690759380197.correct : P3567191690759380197.Spec := by
  intro n
  simp only [A051931]

end A051931

/-! ## A051931.P17486893312417490837

`A085447(n)+5*(-1)^n`
-/

namespace A051931.P17486893312417490837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085447 n + 5 * (-1) ^ n

end

end A051931.P17486893312417490837

namespace A051931

/-- `A085447(n)+5*(-1)^n` -/
def P17486893312417490837.Spec : Prop :=
  ∀ n, P17486893312417490837.a n = A051931 n

end A051931

/-! ## A051931.P8617894566706448348

`A130848(3*n+1)+A085447(n)`
-/

namespace A051931.P8617894566706448348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130848 (3 * n + 1) + A085447 n

end

end A051931.P8617894566706448348

namespace A051931

/-- `A130848(3*n+1)+A085447(n)` -/
def P8617894566706448348.Spec : Prop :=
  ∀ n, P8617894566706448348.a n = A051931 n

end A051931

/-! ## A051931.P12881843506620669014

`A154870(3*n+1)+A085447(n)`
-/

namespace A051931.P12881843506620669014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154870 (3 * n + 1) + A085447 n

end

end A051931.P12881843506620669014

namespace A051931

/-- `A154870(3*n+1)+A085447(n)` -/
def P12881843506620669014.Spec : Prop :=
  ∀ n, P12881843506620669014.a n = A051931 n

end A051931

/-! ## A051931.P15982450461160706263

`A130815(A085473(n))+A085447(n)`
-/

namespace A051931.P15982450461160706263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130815 (A085473 n).toNat + A085447 n

end

end A051931.P15982450461160706263

namespace A051931

/-- `A130815(A085473(n))+A085447(n)` -/
def P15982450461160706263.Spec : Prop :=
  ∀ n, P15982450461160706263.a n = A051931 n

end A051931

/-!
# A051932: Number of independent sets of nodes in graph K_7 X C_n (n > 2).

The programs for A051932, the canonical program `A051932.P14759649176495140790` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051932 has offset 0).

The definition of A051932 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051932.P14759649176495140790

`6*a(n-1)+8*a(n-2)+a(n-3)` with `a(0)=8, a(1)=1, a(2)=57`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051932

/-- `6*a(n-1)+8*a(n-2)+a(n-3)` -/
def P14759649176495140790.Spec : Prop :=
  ∀ n, (P14759649176495140790.a n : ℤ) = A051932 n

theorem P14759649176495140790.correct : P14759649176495140790.Spec := by
  intro n
  simp only [A051932]

end A051932

/-! ## A051932.P10156361338186264037

`6*(-1)^n+(7/2+1/2*sqrt(53))^n+(7/2-1/2*sqrt(53))^n`
-/

namespace A051932.P10156361338186264037
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (6 * (-1) ^ n : ℝ) + (((7 : ℚ) / 2 : ℝ) + ((1 : ℚ) / 2 : ℝ) * Real.sqrt (53 : ℝ)) ^ n + (((7 : ℚ) / 2 : ℝ) - ((1 : ℚ) / 2 : ℝ) * Real.sqrt (53 : ℝ)) ^ n

end

end A051932.P10156361338186264037

namespace A051932

/-- `6*(-1)^n+(7/2+1/2*sqrt(53))^n+(7/2-1/2*sqrt(53))^n` -/
def P10156361338186264037.Spec : Prop :=
  ∀ n, P10156361338186264037.a n = (A051932 n : ℝ)

theorem P10156361338186264037.correct : P10156361338186264037.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A051932, Nat.add_sub_cancel, A051932.P10156361338186264037.a, A051932.P14759649176495140790.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A051932, Nat.add_sub_cancel, A051932.P10156361338186264037.a, A051932.P14759649176495140790.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A051932

/-!
# A051933: Triangle T(n,m) = Nim-sum (or XOR) of n and m, read by rows, 0<=m<=n.

The programs for A051933, the canonical program `A051933.P14643551248336978789` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051933 has offset 0).

The definition of A051933 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051933.P1194584316127455290

`xor(comp[∑[n]]-n-2, A002262(n))`
-/

namespace A051933.P1194584316127455290
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) - 2) (A002262 n)

end

end A051933.P1194584316127455290

namespace A051933

/-- `xor(comp[∑[n]]-n-2, A002262(n))` -/
def P1194584316127455290.Spec : Prop :=
  ∀ n, P1194584316127455290.a n = A051933 n

end A051933

/-! ## A051933.P1201051881252394211

`A080098(n)-A080099(n)`
-/

namespace A051933.P1201051881252394211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 n - A080099 n

end

end A051933.P1201051881252394211

namespace A051933

/-- `A080098(n)-A080099(n)` -/
def P1201051881252394211.Spec : Prop :=
  ∀ n, P1201051881252394211.a n = A051933 n

end A051933

/-! ## A051933.P14643551248336978789

`xor(A002262(n), A003056(n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A051933

/-- `xor(A002262(n), A003056(n))` -/
def P14643551248336978789.Spec : Prop :=
  ∀ n, P14643551248336978789.a n = A051933 n

theorem P14643551248336978789.correct : P14643551248336978789.Spec := by
  intro n
  simp only [A051933]

end A051933

/-! ## A051933.P12660496295397198791

`2*A080098(n)-A051162(n)`
-/

namespace A051933.P12660496295397198791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080098 n - A051162 n

end

end A051933.P12660496295397198791

namespace A051933

/-- `2*A080098(n)-A051162(n)` -/
def P12660496295397198791.Spec : Prop :=
  ∀ n, P12660496295397198791.a n = A051933 n

end A051933

/-! ## A051933.P5203902321261565302

`A051162(n)-2*A080099(n)`
-/

namespace A051933.P5203902321261565302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n - 2 * A080099 n

end

end A051933.P5203902321261565302

namespace A051933

/-- `A051162(n)-2*A080099(n)` -/
def P5203902321261565302.Spec : Prop :=
  ∀ n, P5203902321261565302.a n = A051933 n

end A051933

/-! ## A051933.P6733431371463888503

`xor(A003056(n), A057554(Δ[n²]))`
-/

namespace A051933.P6733431371463888503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003056 n) (A057554 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A051933.P6733431371463888503

namespace A051933

/-- `xor(A003056(n), A057554(Δ[n²]))` -/
def P6733431371463888503.Spec : Prop :=
  ∀ n, P6733431371463888503.a n = A051933 n

end A051933

/-! ## A051933.P17504311978354879765

`xor(A002260(n+1)-1, A003056(n))`
-/

namespace A051933.P17504311978354879765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002260 (n + 1) - 1) (A003056 n)

end

end A051933.P17504311978354879765

namespace A051933

/-- `xor(A002260(n+1)-1, A003056(n))` -/
def P17504311978354879765.Spec : Prop :=
  ∀ n, P17504311978354879765.a n = A051933 n

theorem P17504311978354879765.correct : P17504311978354879765.Spec := by
  intro n
  simp only [A051933, Nat.add_sub_cancel, A051933.P17504311978354879765.a, A051933.P14643551248336978789.a, A002260, A002260.P9170571874073898642.a, A002262, A002262.P17823619022233514403.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A051933

/-! ## A051933.P5343370471829494164

`A051162(n-A080099(n))-A080099(n)`
-/

namespace A051933.P5343370471829494164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 ((n : ℤ) - A080099 n).toNat - A080099 n

end

end A051933.P5343370471829494164

namespace A051933

/-- `A051162(n-A080099(n))-A080099(n)` -/
def P5343370471829494164.Spec : Prop :=
  ∀ n, P5343370471829494164.a n = A051933 n

end A051933

/-! ## A051933.P7206018228716652641

`xor(A002262(n), A003987(n-A002262(n)))`
-/

namespace A051933.P7206018228716652641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002262 n) (A003987 ((n : ℤ) - A002262 n).toNat)

end

end A051933.P7206018228716652641

namespace A051933

/-- `xor(A002262(n), A003987(n-A002262(n)))` -/
def P7206018228716652641.Spec : Prop :=
  ∀ n, P7206018228716652641.a n = A051933 n

end A051933

/-! ## A051933.P6708225738433320511

`xor(A002262(n), A025581(n-A002262(n)))`
-/

namespace A051933.P6708225738433320511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002262 n) (A025581 ((n : ℤ) - A002262 n).toNat)

end

end A051933.P6708225738433320511

namespace A051933

/-- `xor(A002262(n), A025581(n-A002262(n)))` -/
def P6708225738433320511.Spec : Prop :=
  ∀ n, P6708225738433320511.a n = A051933 n

end A051933

/-! ## A051933.P18396185557462994999

`xor(A002262(n), A099026(n-A002262(n)))`
-/

namespace A051933.P18396185557462994999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002262 n) (A099026 ((n : ℤ) - A002262 n).toNat)

end

end A051933.P18396185557462994999

namespace A051933

/-- `xor(A002262(n), A099026(n-A002262(n)))` -/
def P18396185557462994999.Spec : Prop :=
  ∀ n, P18396185557462994999.a n = A051933 n

end A051933

/-! ## A051933.P4686776218131527941

`xor(A002262(n), A169894(n-A002262(n)))`
-/

namespace A051933.P4686776218131527941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002262 n) (A169894 ((n : ℤ) - A002262 n).toNat)

end

end A051933.P4686776218131527941

namespace A051933

/-- `xor(A002262(n), A169894(n-A002262(n)))` -/
def P4686776218131527941.Spec : Prop :=
  ∀ n, P4686776218131527941.a n = A051933 n

end A051933

/-! ## A051933.P15523071031959951160

`xor(A002262(n), A341839(n-A002262(n)))`
-/

namespace A051933.P15523071031959951160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002262 n) (A341839 ((n : ℤ) - A002262 n).toNat)

end

end A051933.P15523071031959951160

namespace A051933

/-- `xor(A002262(n), A341839(n-A002262(n)))` -/
def P15523071031959951160.Spec : Prop :=
  ∀ n, P15523071031959951160.a n = A051933 n

end A051933

/-! ## A051933.P13491964086759664481

`xor(A057554(2*n+1)+A057554(2*(n+1)), A057554(2*n+1))`
-/

namespace A051933.P13491964086759664481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057554 (2 * n + 1) + A057554 (2 * (n + 1))) (A057554 (2 * n + 1))

end

end A051933.P13491964086759664481

namespace A051933

/-- `xor(A057554(2*n+1)+A057554(2*(n+1)), A057554(2*n+1))` -/
def P13491964086759664481.Spec : Prop :=
  ∀ n, P13491964086759664481.a n = A051933 n

end A051933

/-! ## A051933.P4383754289484959661

`xor(A026100(A026098(n+1))-1, A003056(n))`
-/

namespace A051933.P4383754289484959661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A026100 (A026098 (n + 1)).toNat - 1) (A003056 n)

end

end A051933.P4383754289484959661

namespace A051933

/-- `xor(A026100(A026098(n+1))-1, A003056(n))` -/
def P4383754289484959661.Spec : Prop :=
  ∀ n, P4383754289484959661.a n = A051933 n

end A051933

/-! ## A051933.P10424358271604287430

`A003987(A245300(n))`
-/

namespace A051933.P10424358271604287430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (A245300 n).toNat

end

end A051933.P10424358271604287430

namespace A051933

/-- `A003987(A245300(n))` -/
def P10424358271604287430.Spec : Prop :=
  ∀ n, P10424358271604287430.a n = A051933 n

end A051933

/-! ## A051933.P9139446757865031994

`xor(A003056(n), A263254(A263255(n)))`
-/

namespace A051933.P9139446757865031994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003056 n) (A263254 (A263255 n).toNat)

end

end A051933.P9139446757865031994

namespace A051933

/-- `xor(A003056(n), A263254(A263255(n)))` -/
def P9139446757865031994.Spec : Prop :=
  ∀ n, P9139446757865031994.a n = A051933 n

end A051933

/-! ## A051933.P12486463260985175409

`xor(A002262(n), A330709(2*n))`
-/

namespace A051933.P12486463260985175409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002262 n) (A330709 (2 * n))

end

end A051933.P12486463260985175409

namespace A051933

/-- `xor(A002262(n), A330709(2*n))` -/
def P12486463260985175409.Spec : Prop :=
  ∀ n, P12486463260985175409.a n = A051933 n

end A051933

/-! ## A051933.P12983919688250802669

`xor(A330709(2*n+1), A330709(2*n))`
-/

namespace A051933.P12983919688250802669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A330709 (2 * n + 1)) (A330709 (2 * n))

end

end A051933.P12983919688250802669

namespace A051933

/-- `xor(A330709(2*n+1), A330709(2*n))` -/
def P12983919688250802669.Spec : Prop :=
  ∀ n, P12983919688250802669.a n = A051933 n

end A051933

/-! ## A051933.P10518091324847868812

`A355340(A173787(n))`
-/

namespace A051933.P10518091324847868812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355340 (A173787 n).toNat

end

end A051933.P10518091324847868812

namespace A051933

/-- `A355340(A173787(n))` -/
def P10518091324847868812.Spec : Prop :=
  ∀ n, P10518091324847868812.a n = A051933 n

end A051933

/-!
# A051934: a(n) is the smallest palindrome > a(n-1) such that a(1)+a(2)+...+a(n) is a prime.

The programs for A051934, there is no canonical definition to state claims against.
-/

/-! ## A051934.P5613867063014305683

`char[A001016(n)]+Δ[A087581(n+1)]`
-/

namespace A051934.P5613867063014305683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001016 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087581 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A051934.P5613867063014305683

/-! ## A051934.P883086953816426033

`char[A111814(n)]+Δ[A087581(n+1)]`
-/

namespace A051934.P883086953816426033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111814 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087581 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A051934.P883086953816426033

/-! ## A051934.P11312506500907694435

`A019590(n+1)+Δ[A087581(n+1)]`
-/

namespace A051934.P11312506500907694435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1) + (f1 (n + 1) - f1 n)

end

end A051934.P11312506500907694435

/-! ## A051934.P15848401161680881616

`Δ[A087581(n+1)]-A159075(A008619(n))`
-/

namespace A051934.P15848401161680881616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A159075 (A008619 n).toNat

end

end A051934.P15848401161680881616

/-! ## A051934.P15686114391240130015

`A010051(A051935(n+1))+Δ[A087581(n+1)]`
-/

namespace A051934.P15686114391240130015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A051935 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A051934.P15686114391240130015

/-! ## A051934.P7497728919815378535

`A010051(A078706(n+1))+Δ[A087581(n+1)]`
-/

namespace A051934.P7497728919815378535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A078706 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A051934.P7497728919815378535

/-! ## A051934.P13544418225257449394

`Δ[A087581(n+1)-A014963(A051935(2*(n+1)))]`
-/

namespace A051934.P13544418225257449394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087581 (n + 1) - A014963 (A051935 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051934.P13544418225257449394

/-! ## A051934.P13791945901640392338

`A010056(n²+2)+Δ[A087581(n+1)]`
-/

namespace A051934.P13791945901640392338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (n ^ 2 + 2) + (f1 (n + 1) - f1 n)

end

end A051934.P13791945901640392338

/-! ## A051934.P4515254647399002151

`Δ[A087581(n+1)]+A219634(n+1)%2`
-/

namespace A051934.P4515254647399002151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.tmod (A219634 (n + 1)) 2

end

end A051934.P4515254647399002151

/-!
# A051935: a(n) = smallest number > a(n-1) such that a(1) + a(2) + ... + a(n) is a prime.

The programs for A051935, there is no canonical definition to state claims against.
-/

/-! ## A051935.P10312786428603335172

`Δ[A070865(n+1)]+C(n, n²)`
-/

namespace A051935.P10312786428603335172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.choose n (n ^ 2) : ℤ)

end

end A051935.P10312786428603335172

/-! ## A051935.P3463289207241362269

`A019590(n+1)+Δ[A070865(n+1)]`
-/

namespace A051935.P3463289207241362269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1) + (f1 (n + 1) - f1 n)

end

end A051935.P3463289207241362269

/-! ## A051935.P8174185286531477629

`Δ[A070865(n+1)]+val(n+4, A256290(n+1))`
-/

namespace A051935.P8174185286531477629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (SequenceMachineLib.valuation (n + 4) (A256290 (n + 1)).toNat : ℤ)

end

end A051935.P8174185286531477629

/-! ## A051935.P16241250255606896193

`Δ[A070865(n+1)]-A159075(A008619(n))`
-/

namespace A051935.P16241250255606896193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A159075 (A008619 n).toNat

end

end A051935.P16241250255606896193

/-! ## A051935.P1255436650539860526

`A010051(A007918(n+1)+1)+Δ[A070865(n+1)]`
-/

namespace A051935.P1255436650539860526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A007918 (n + 1) + 1).toNat + (f1 (n + 1) - f1 n)

end

end A051935.P1255436650539860526

/-! ## A051935.P482889457698361768

`A010051(A078706(n+1))+Δ[A070865(n+1)]`
-/

namespace A051935.P482889457698361768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A078706 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A051935.P482889457698361768

/-!
# A051936: Truncated triangular numbers: a(n) = n*(n+1)/2 - 9.

The programs for A051936, the canonical program `A051936.P86888784931558620` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051936 has offset 4).

The definition of A051936 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+4)*(n+5)/2-9` (program `A051936.P1918544808387368088`, by `A051936.P1918544808387368088.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051936.P86888784931558620

`n+4+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051936

/-- `n+4+a(n-1)` -/
def P86888784931558620.Spec : Prop :=
  ∀ n, (P86888784931558620.a n : ℤ) = A051936 (n + 4)

theorem P86888784931558620.correct : P86888784931558620.Spec := by
  intro n
  simp only [A051936, Nat.add_sub_cancel]

end A051936

/-! ## A051936.P1918544808387368088

`(n+4)*(n+5)/2-9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051936.P1918544808387368088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 4) * (n + 5) : ℚ) / 2 - 9

end

end A051936.P1918544808387368088

namespace A051936

/-- `(n+4)*(n+5)/2-9` -/
def P1918544808387368088.Spec : Prop :=
  ∀ n, P1918544808387368088.a n = (A051936 (n + 4) : ℚ)

theorem P1918544808387368088.correct : P1918544808387368088.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A051936, Nat.add_sub_cancel, A051936.P1918544808387368088.a, A051936.P86888784931558620.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A051936, Nat.add_sub_cancel, A051936.P1918544808387368088.a, A051936.P86888784931558620.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A051936

/-! ## A051936.P11084431994479094168

`∑[ceil(atan(n+1))²+n]`
-/

namespace A051936.P11084431994479094168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n + 1 : ℝ)⌉ ^ 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051936.P11084431994479094168

namespace A051936

/-- `∑[ceil(atan(n+1))²+n]` -/
def P11084431994479094168.Spec : Prop :=
  ∀ n, P11084431994479094168.a n = A051936 (n + 4)

end A051936

/-! ## A051936.P16464755284235426290

`∑[ogf((1+3x-3x^2)/(1-2x+x^2))]`
-/

namespace A051936.P16464755284235426290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051936.P16464755284235426290

namespace A051936

/-- `∑[ogf((1+3x-3x^2)/(1-2x+x^2))]` -/
def P16464755284235426290.Spec : Prop :=
  ∀ n, P16464755284235426290.a n = A051936 (n + 4)

end A051936

/-! ## A051936.P7595544087359458483

`ogf((1+3x-3x^2)/(1-3x+3x^2-x^3))`
-/

namespace A051936.P7595544087359458483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -3] [1, -3, 3, -1] n

end

end A051936.P7595544087359458483

namespace A051936

/-- `ogf((1+3x-3x^2)/(1-3x+3x^2-x^3))` -/
def P7595544087359458483.Spec : Prop :=
  ∀ n, P7595544087359458483.a n = A051936 (n + 4)

end A051936

/-! ## A051936.P14901430665524329560

`∑[2^(2%(n+2))+n]`
-/

namespace A051936.P14901430665524329560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (2 % (n + 2)) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051936.P14901430665524329560

namespace A051936

/-- `∑[2^(2%(n+2))+n]` -/
def P14901430665524329560.Spec : Prop :=
  ∀ n, (P14901430665524329560.a n : ℤ) = A051936 (n + 4)

end A051936

/-! ## A051936.P3528520555553304133

`∑[gcd(4, 4%(n+3))+n]`
-/

namespace A051936.P3528520555553304133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 (4 % (n + 3)) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051936.P3528520555553304133

namespace A051936

/-- `∑[gcd(4, 4%(n+3))+n]` -/
def P3528520555553304133.Spec : Prop :=
  ∀ n, (P3528520555553304133.a n : ℤ) = A051936 (n + 4)

end A051936

/-! ## A051936.P12381880681189061067

`record[C(n+2, 2)-6*n]`
-/

namespace A051936.P12381880681189061067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) - (6 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051936.P12381880681189061067

namespace A051936

/-- `record[C(n+2, 2)-6*n]` -/
def P12381880681189061067.Spec : Prop :=
  ∀ n, P12381880681189061067.a n = A051936 (n + 4)

end A051936

/-! ## A051936.P8965931554483816687

`-(∑[xor(n+3, -1)]+3)`
-/

namespace A051936.P8965931554483816687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 3 : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A051936.P8965931554483816687

namespace A051936

/-- `-(∑[xor(n+3, -1)]+3)` -/
def P8965931554483816687.Spec : Prop :=
  ∀ n, P8965931554483816687.a n = A051936 (n + 4)

end A051936

/-! ## A051936.P2394404689697349367

`record[a(n-1)-(5-n)]` with `a(0)=1`
-/

namespace A051936.P2394404689697349367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - (5 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051936.P2394404689697349367

namespace A051936

/-- `record[a(n-1)-(5-n)]` -/
def P2394404689697349367.Spec : Prop :=
  ∀ n, P2394404689697349367.a n = A051936 (n + 4)

end A051936

/-! ## A051936.P11470475929893176346

`∑[ceil(acot(acot(n+1)))²+n]`
-/

namespace A051936.P11470475929893176346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (SequenceMachineLib.acot (n + 1 : ℝ))⌉ ^ 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051936.P11470475929893176346

namespace A051936

/-- `∑[ceil(acot(acot(n+1)))²+n]` -/
def P11470475929893176346.Spec : Prop :=
  ∀ n, P11470475929893176346.a n = A051936 (n + 4)

end A051936

/-! ## A051936.P11589099139671402823

`∑[dr(9*n)/3+n+1]`
-/

namespace A051936.P11589099139671402823
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (9 * n : ℤ) : ℚ) / 3 + (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051936.P11589099139671402823

namespace A051936

/-- `∑[dr(9*n)/3+n+1]` -/
def P11589099139671402823.Spec : Prop :=
  ∀ n, P11589099139671402823.a n = (A051936 (n + 4) : ℚ)

end A051936

/-! ## A051936.P13433120155799985618

`∑[gcd(2, C(2, n+2))²+n]`
-/

namespace A051936.P13433120155799985618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (Nat.choose 2 (n + 2)) ^ 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051936.P13433120155799985618

namespace A051936

/-- `∑[gcd(2, C(2, n+2))²+n]` -/
def P13433120155799985618.Spec : Prop :=
  ∀ n, (P13433120155799985618.a n : ℤ) = A051936 (n + 4)

end A051936

/-! ## A051936.P8733367550307087147

`∑[a(and(2, n²))+n+3]` with `a(0)=1`
-/

namespace A051936.P8733367550307087147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (Nat.land 2 (n ^ 2)) + (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051936.P8733367550307087147

namespace A051936

/-- `∑[a(and(2, n²))+n+3]` -/
def P8733367550307087147.Spec : Prop :=
  ∀ n, (P8733367550307087147.a n : ℤ) = A051936 (n + 4)

end A051936

/-! ## A051936.P16911037580659113251

`∑[2*a(n-2)-n]` with `a(0)=1, a(1)=5, a(2)=6`
-/

namespace A051936.P16911037580659113251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 6] fun n f1 =>
  2 * f1 (n - 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051936.P16911037580659113251

namespace A051936

/-- `∑[2*a(n-2)-n]` -/
def P16911037580659113251.Spec : Prop :=
  ∀ n, P16911037580659113251.a n = A051936 (n + 4)

end A051936

/-! ## A051936.P2397282212008574068

`abs(C(n+3, 2)+2*(n-1))`
-/

namespace A051936.P2397282212008574068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (n + 3) 2 : ℤ) + 2 * ((n : ℤ) - 1)|

end

end A051936.P2397282212008574068

namespace A051936

/-- `abs(C(n+3, 2)+2*(n-1))` -/
def P2397282212008574068.Spec : Prop :=
  ∀ n, P2397282212008574068.a n = A051936 (n + 4)

end A051936

/-! ## A051936.P2064050322353187853

`∑[a(C(2, n+2))+n+3]` with `a(0)=1`
-/

namespace A051936.P2064050322353187853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (Nat.choose 2 (n + 2)) + (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051936.P2064050322353187853

namespace A051936

/-- `∑[a(C(2, n+2))+n+3]` -/
def P2064050322353187853.Spec : Prop :=
  ∀ n, (P2064050322353187853.a n : ℤ) = A051936 (n + 4)

end A051936

/-! ## A051936.P14443200543206696889

`floor(2*n+C(n+3, 2)-ϕ)`
-/

namespace A051936.P14443200543206696889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℝ) + ((Nat.choose (n + 3) 2 : ℝ) - Real.goldenRatio)⌋

end

end A051936.P14443200543206696889

namespace A051936

/-- `floor(2*n+C(n+3, 2)-ϕ)` -/
def P14443200543206696889.Spec : Prop :=
  ∀ n, P14443200543206696889.a n = A051936 (n + 4)

end A051936

/-! ## A051936.P3077368603474608946

`round(2*n+C(n+3, 2)-ϕ)`
-/

namespace A051936.P3077368603474608946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℝ) + ((Nat.choose (n + 3) 2 : ℝ) - Real.goldenRatio))

end

end A051936.P3077368603474608946

namespace A051936

/-- `round(2*n+C(n+3, 2)-ϕ)` -/
def P3077368603474608946.Spec : Prop :=
  ∀ n, P3077368603474608946.a n = A051936 (n + 4)

end A051936

/-! ## A051936.P5148785442400493101

`∑[n+1--3%(n+1)²]`
-/

namespace A051936.P5148785442400493101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (-3) ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051936.P5148785442400493101

namespace A051936

/-- `∑[n+1--3%(n+1)²]` -/
def P5148785442400493101.Spec : Prop :=
  ∀ n, P5148785442400493101.a n = A051936 (n + 4)

end A051936

/-!
# A051937: Truncated triangular pyramid numbers: a(n) = Sum_{k=4..n} (k*(k+1)/2 - 9).

The programs for A051937, the canonical program `A051937.P932862796901659075` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051937 has offset 4).

The definition of A051937 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051937.P14074837946058989096

`(n+1)*((n+4)²+6*(n+4)-34)/6`
-/

namespace A051937.P14074837946058989096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * (((n + 4) ^ 2 + 6 * (n + 4) : ℤ) - 34) : ℚ) / 6

end

end A051937.P14074837946058989096

namespace A051937

/-- `(n+1)*((n+4)²+6*(n+4)-34)/6` -/
def P14074837946058989096.Spec : Prop :=
  ∀ n, P14074837946058989096.a n = (A051937 (n + 4) : ℚ)

theorem P14074837946058989096.correct : P14074837946058989096.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A051937, Nat.add_sub_cancel, A051937.P14074837946058989096.a, A051937.P932862796901659075.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A051937, Nat.add_sub_cancel, A051937.P14074837946058989096.a, A051937.P932862796901659075.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A051937

/-! ## A051937.P932862796901659075

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=7, a(2)=19, a(3)=38`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051937

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P932862796901659075.Spec : Prop :=
  ∀ n, P932862796901659075.a n = A051937 (n + 4)

theorem P932862796901659075.correct : P932862796901659075.Spec := by
  intro n
  simp only [A051937, Nat.add_sub_cancel]

end A051937

/-! ## A051937.P12294345334349586896

`A000290(n)+A005286(n)`
-/

namespace A051937.P12294345334349586896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n + A005286 n

end

end A051937.P12294345334349586896

namespace A051937

/-- `A000290(n)+A005286(n)` -/
def P12294345334349586896.Spec : Prop :=
  ∀ n, P12294345334349586896.a n = A051937 (n + 4)

end A051937

/-! ## A051937.P10363440783981234940

`Δ[n^3]+C(n, 3)`
-/

namespace A051937.P10363440783981234940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.choose n 3 : ℤ)

end

end A051937.P10363440783981234940

namespace A051937

/-- `Δ[n^3]+C(n, 3)` -/
def P10363440783981234940.Spec : Prop :=
  ∀ n, P10363440783981234940.a n = A051937 (n + 4)

end A051937

/-! ## A051937.P4931214555003124014

`C(n+3, 3)+∑[3*n]`
-/

namespace A051937.P4931214555003124014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 3 + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051937.P4931214555003124014

namespace A051937

/-- `C(n+3, 3)+∑[3*n]` -/
def P4931214555003124014.Spec : Prop :=
  ∀ n, (P4931214555003124014.a n : ℤ) = A051937 (n + 4)

end A051937

/-! ## A051937.P17634046908029955411

`∑[∑[ogf((1+3x-3x^2)/(1-2x+x^2))]]`
-/

namespace A051937.P17634046908029955411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -3] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051937.P17634046908029955411

namespace A051937

/-- `∑[∑[ogf((1+3x-3x^2)/(1-2x+x^2))]]` -/
def P17634046908029955411.Spec : Prop :=
  ∀ n, P17634046908029955411.a n = A051937 (n + 4)

end A051937

/-! ## A051937.P18072547697288552033

`ogf((1+3x-3x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A051937.P18072547697288552033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -3] [1, -4, 6, -4, 1] n

end

end A051937.P18072547697288552033

namespace A051937

/-- `ogf((1+3x-3x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P18072547697288552033.Spec : Prop :=
  ∀ n, P18072547697288552033.a n = A051937 (n + 4)

end A051937

/-! ## A051937.P9023373956956849285

`∑[∑[n]]-∑[a(n-1)-4]` with `a(0)=-1`
-/

namespace A051937.P9023373956956849285
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f3 =>
  f3 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f3 j

end

end A051937.P9023373956956849285

namespace A051937

/-- `∑[∑[n]]-∑[a(n-1)-4]` -/
def P9023373956956849285.Spec : Prop :=
  ∀ n, P9023373956956849285.a n = A051937 (n + 4)

end A051937

/-! ## A051937.P7607339896306761789

`∑[∑[n]]+lcm(2*n+1, n+1)`
-/

namespace A051937.P7607339896306761789
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.lcm (2 * n + 1) (n + 1)

end

end A051937.P7607339896306761789

namespace A051937

/-- `∑[∑[n]]+lcm(2*n+1, n+1)` -/
def P7607339896306761789.Spec : Prop :=
  ∀ n, (P7607339896306761789.a n : ℤ) = A051937 (n + 4)

end A051937

/-! ## A051937.P2078842821168404958

`Δ[C(n+2, 4)]+(2*n+1)*(n+1)`
-/

namespace A051937.P2078842821168404958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((2 * n + 1) * (n + 1) : ℤ)

end

end A051937.P2078842821168404958

namespace A051937

/-- `Δ[C(n+2, 4)]+(2*n+1)*(n+1)` -/
def P2078842821168404958.Spec : Prop :=
  ∀ n, P2078842821168404958.a n = A051937 (n + 4)

end A051937

/-! ## A051937.P18425300744534235895

`∑[∑[gcd(n, 2*n)]]+(2*n+1)*(n+1)`
-/

namespace A051937.P18425300744534235895
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1) * (n + 1)

end

end A051937.P18425300744534235895

namespace A051937

/-- `∑[∑[gcd(n, 2*n)]]+(2*n+1)*(n+1)` -/
def P18425300744534235895.Spec : Prop :=
  ∀ n, (P18425300744534235895.a n : ℤ) = A051937 (n + 4)

end A051937

/-! ## A051937.P1559158399209357836

`∑[A056000(n)+1]`
-/

namespace A051937.P1559158399209357836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056000 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051937.P1559158399209357836

namespace A051937

/-- `∑[A056000(n)+1]` -/
def P1559158399209357836.Spec : Prop :=
  ∀ n, P1559158399209357836.a n = A051937 (n + 4)

end A051937

/-! ## A051937.P15759977306153787943

`∑[A155212(n)-1]`
-/

namespace A051937.P15759977306153787943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155212 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051937.P15759977306153787943

namespace A051937

/-- `∑[A155212(n)-1]` -/
def P15759977306153787943.Spec : Prop :=
  ∀ n, P15759977306153787943.a n = A051937 (n + 4)

end A051937

/-! ## A051937.P413635599860396506

`∑[A051936(n+4)]`
-/

namespace A051937.P413635599860396506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051936 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051937.P413635599860396506

namespace A051937

/-- `∑[A051936(n+4)]` -/
def P413635599860396506.Spec : Prop :=
  ∀ n, P413635599860396506.a n = A051937 (n + 4)

end A051937

/-! ## A051937.P3606217292006153572

`∑[A052905(n)+n]`
-/

namespace A051937.P3606217292006153572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051937.P3606217292006153572

namespace A051937

/-- `∑[A052905(n)+n]` -/
def P3606217292006153572.Spec : Prop :=
  ∀ n, P3606217292006153572.a n = A051937 (n + 4)

end A051937

/-! ## A051937.P13692671207437300495

`n²+A005586(n)+1`
-/

namespace A051937.P13692671207437300495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A005586 n + 1)

end

end A051937.P13692671207437300495

namespace A051937

/-- `n²+A005586(n)+1` -/
def P13692671207437300495.Spec : Prop :=
  ∀ n, P13692671207437300495.a n = A051937 (n + 4)

end A051937

/-! ## A051937.P257372856273746419

`A006503(n)+(n+1)²`
-/

namespace A051937.P257372856273746419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n + ((n + 1) ^ 2 : ℤ)

end

end A051937.P257372856273746419

namespace A051937

/-- `A006503(n)+(n+1)²` -/
def P257372856273746419.Spec : Prop :=
  ∀ n, P257372856273746419.a n = A051937 (n + 4)

end A051937

/-! ## A051937.P17891142834691312502

`A134465(n+1)+∑[n]`
-/

namespace A051937.P17891142834691312502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134465 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A051937.P17891142834691312502

namespace A051937

/-- `A134465(n+1)+∑[n]` -/
def P17891142834691312502.Spec : Prop :=
  ∀ n, P17891142834691312502.a n = A051937 (n + 4)

end A051937

/-! ## A051937.P15032325895235219018

`∑[A246172(n+1)-n]`
-/

namespace A051937.P15032325895235219018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246172 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051937.P15032325895235219018

namespace A051937

/-- `∑[A246172(n+1)-n]` -/
def P15032325895235219018.Spec : Prop :=
  ∀ n, P15032325895235219018.a n = A051937 (n + 4)

end A051937

/-! ## A051937.P12716147659301840702

`A008778(n)+∑[2*n]`
-/

namespace A051937.P12716147659301840702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A051937.P12716147659301840702

namespace A051937

/-- `A008778(n)+∑[2*n]` -/
def P12716147659301840702.Spec : Prop :=
  ∀ n, P12716147659301840702.a n = A051937 (n + 4)

end A051937

/-!
# A051938: Truncated triangular numbers: a(n) = n*(n+1)/2 - 18.

The programs for A051938, the canonical program `A051938.P16307721232726486466` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051938 has offset 6).

The definition of A051938 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+6)*(n+7)/2-18` (program `A051938.P14148397528713375741`, by `A051938.P14148397528713375741.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051938.P16307721232726486466

`n+6+a(n-1)` with `a(0)=3`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051938

/-- `n+6+a(n-1)` -/
def P16307721232726486466.Spec : Prop :=
  ∀ n, (P16307721232726486466.a n : ℤ) = A051938 (n + 6)

theorem P16307721232726486466.correct : P16307721232726486466.Spec := by
  intro n
  simp only [A051938, Nat.add_sub_cancel]

end A051938

/-! ## A051938.P14148397528713375741

`(n+6)*(n+7)/2-18`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051938.P14148397528713375741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 6) * (n + 7) : ℚ) / 2 - 18

end

end A051938.P14148397528713375741

namespace A051938

/-- `(n+6)*(n+7)/2-18` -/
def P14148397528713375741.Spec : Prop :=
  ∀ n, P14148397528713375741.a n = (A051938 (n + 6) : ℚ)

theorem P14148397528713375741.correct : P14148397528713375741.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A051938, Nat.add_sub_cancel, A051938.P14148397528713375741.a, A051938.P16307721232726486466.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A051938, Nat.add_sub_cancel, A051938.P14148397528713375741.a, A051938.P16307721232726486466.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A051938

/-! ## A051938.P13757035906604166835

`∑[ogf((3+x-3x^2)/(1-2x+x^2))]`
-/

namespace A051938.P13757035906604166835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1, -3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051938.P13757035906604166835

namespace A051938

/-- `∑[ogf((3+x-3x^2)/(1-2x+x^2))]` -/
def P13757035906604166835.Spec : Prop :=
  ∀ n, P13757035906604166835.a n = A051938 (n + 6)

end A051938

/-! ## A051938.P8440918182148341646

`ogf((3+x-3x^2)/(1-3x+3x^2-x^3))`
-/

namespace A051938.P8440918182148341646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1, -3] [1, -3, 3, -1] n

end

end A051938.P8440918182148341646

namespace A051938

/-- `ogf((3+x-3x^2)/(1-3x+3x^2-x^3))` -/
def P8440918182148341646.Spec : Prop :=
  ∀ n, P8440918182148341646.a n = A051938 (n + 6)

end A051938

/-! ## A051938.P12042188315704779191

`∑[3%(n+3)+n+3]`
-/

namespace A051938.P12042188315704779191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 % (n + 3) + (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051938.P12042188315704779191

namespace A051938

/-- `∑[3%(n+3)+n+3]` -/
def P12042188315704779191.Spec : Prop :=
  ∀ n, (P12042188315704779191.a n : ℤ) = A051938 (n + 6)

end A051938

/-! ## A051938.P181367998180752413

`record[a(n-1)-(7-n)]` with `a(0)=3`
-/

namespace A051938.P181367998180752413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) - (7 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051938.P181367998180752413

namespace A051938

/-- `record[a(n-1)-(7-n)]` -/
def P181367998180752413.Spec : Prop :=
  ∀ n, P181367998180752413.a n = A051938 (n + 6)

end A051938

/-! ## A051938.P14642176442165720003

`∑[7-(6-a(n-1))%n]` with `a(0)=3`
-/

namespace A051938.P14642176442165720003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  7 - Int.tmod (6 - f1 (n - 1)) (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051938.P14642176442165720003

namespace A051938

/-- `∑[7-(6-a(n-1))%n]` -/
def P14642176442165720003.Spec : Prop :=
  ∀ n, P14642176442165720003.a n = A051938 (n + 6)

end A051938

/-! ## A051938.P3155939205485754218

`2*(C(n+3, 2)/2+2*n)`
-/

namespace A051938.P3155939205485754218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.choose (n + 3) 2 : ℚ) / 2 + (2 * n : ℚ))

end

end A051938.P3155939205485754218

namespace A051938

/-- `2*(C(n+3, 2)/2+2*n)` -/
def P3155939205485754218.Spec : Prop :=
  ∀ n, P3155939205485754218.a n = (A051938 (n + 6) : ℚ)

end A051938

/-! ## A051938.P4844176914475334907

`∑[gcd(2, C(2, n+2))²+n+2]`
-/

namespace A051938.P4844176914475334907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (Nat.choose 2 (n + 2)) ^ 2 + (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051938.P4844176914475334907

namespace A051938

/-- `∑[gcd(2, C(2, n+2))²+n+2]` -/
def P4844176914475334907.Spec : Prop :=
  ∀ n, (P4844176914475334907.a n : ℤ) = A051938 (n + 6)

end A051938

/-! ## A051938.P2447095372610603678

`Δ[C(n+3, 3)+(n-1)*2*n]`
-/

namespace A051938.P2447095372610603678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℤ) + ((n : ℤ) - 1) * (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051938.P2447095372610603678

namespace A051938

/-- `Δ[C(n+3, 3)+(n-1)*2*n]` -/
def P2447095372610603678.Spec : Prop :=
  ∀ n, P2447095372610603678.a n = A051938 (n + 6)

end A051938

/-! ## A051938.P8085615717227594753

`∑[2*a(n-1)-a(n-2)]` with `a(0)=3, a(1)=7, a(2)=8`
-/

namespace A051938.P8085615717227594753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 7, 8] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051938.P8085615717227594753

namespace A051938

/-- `∑[2*a(n-1)-a(n-2)]` -/
def P8085615717227594753.Spec : Prop :=
  ∀ n, P8085615717227594753.a n = A051938 (n + 6)

end A051938

/-! ## A051938.P5247202482004274549

`∑[floor(a(n-1)²/a(n-2))]` with `a(0)=3, a(1)=7, a(2)=8`
-/

namespace A051938.P5247202482004274549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 7, 8] fun n f1 =>
  ⌊(f1 (n - 1) ^ 2 : ℚ) / (f1 (n - 2) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051938.P5247202482004274549

namespace A051938

/-- `∑[floor(a(n-1)²/a(n-2))]` -/
def P5247202482004274549.Spec : Prop :=
  ∀ n, P5247202482004274549.a n = A051938 (n + 6)

end A051938

/-! ## A051938.P1744668181333090655

`∑[a(n-1)-floor(4/(2-a(n-1)))]` with `a(0)=3`
-/

namespace A051938.P1744668181333090655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) - ⌊4 / (2 - f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051938.P1744668181333090655

namespace A051938

/-- `∑[a(n-1)-floor(4/(2-a(n-1)))]` -/
def P1744668181333090655.Spec : Prop :=
  ∀ n, P1744668181333090655.a n = A051938 (n + 6)

end A051938

/-! ## A051938.P1011253352831908355

`∑[a(n-1)-(a(n-2)-a(n-1))]` with `a(0)=3, a(1)=7, a(2)=8`
-/

namespace A051938.P1011253352831908355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 7, 8] fun n f1 =>
  f1 (n - 1) - (f1 (n - 2) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051938.P1011253352831908355

namespace A051938

/-- `∑[a(n-1)-(a(n-2)-a(n-1))]` -/
def P1011253352831908355.Spec : Prop :=
  ∀ n, P1011253352831908355.a n = A051938 (n + 6)

end A051938

/-! ## A051938.P12315899888759702091

`∑[A040006(n)+n]`
-/

namespace A051938.P12315899888759702091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040006 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051938.P12315899888759702091

namespace A051938

/-- `∑[A040006(n)+n]` -/
def P12315899888759702091.Spec : Prop :=
  ∀ n, P12315899888759702091.a n = A051938 (n + 6)

end A051938

/-! ## A051938.P13321809771693036466

`∑[A374359(n+1)+n+1]`
-/

namespace A051938.P13321809771693036466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374359 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051938.P13321809771693036466

namespace A051938

/-- `∑[A374359(n+1)+n+1]` -/
def P13321809771693036466.Spec : Prop :=
  ∀ n, P13321809771693036466.a n = A051938 (n + 6)

end A051938

/-! ## A051938.P7069894471129379417

`A273220(n+2)%A167469(n+1)`
-/

namespace A051938.P7069894471129379417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273220 (n + 2)) (A167469 (n + 1))

end

end A051938.P7069894471129379417

namespace A051938

/-- `A273220(n+2)%A167469(n+1)` -/
def P7069894471129379417.Spec : Prop :=
  ∀ n, P7069894471129379417.a n = A051938 (n + 6)

end A051938

/-! ## A051938.P12096039074783802843

`record[∑[n+3]-10*n]`
-/

namespace A051938.P12096039074783802843
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (10 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051938.P12096039074783802843

namespace A051938

/-- `record[∑[n+3]-10*n]` -/
def P12096039074783802843.Spec : Prop :=
  ∀ n, P12096039074783802843.a n = A051938 (n + 6)

end A051938

/-! ## A051938.P8275441401459469921

`∑[A373011(2*(n+1))]`
-/

namespace A051938.P8275441401459469921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373011 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051938.P8275441401459469921

namespace A051938

/-- `∑[A373011(2*(n+1))]` -/
def P8275441401459469921.Spec : Prop :=
  ∀ n, P8275441401459469921.a n = A051938 (n + 6)

end A051938

/-! ## A051938.P16454437467160557013

`∑[dr(∑[3^n])+n+2]`
-/

namespace A051938.P16454437467160557013
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051938.P16454437467160557013

namespace A051938

/-- `∑[dr(∑[3^n])+n+2]` -/
def P16454437467160557013.Spec : Prop :=
  ∀ n, (P16454437467160557013.a n : ℤ) = A051938 (n + 6)

end A051938

/-!
# A051939: Truncated triangular pyramid numbers: a(n) = (n-5)*(n^2 + 8*n - 66)/6.

The programs for A051939, the canonical program `A051939.P12772201178984180736` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051939 has offset 6).

The definition of A051939 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*((n+6)²+8*(n+6)-66)/6` (program `A051939.P10276668743130899142`, by `A051939.P10276668743130899142.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051939.P10276668743130899142

`(n+1)*((n+6)²+8*(n+6)-66)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051939.P10276668743130899142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * (((n + 6) ^ 2 + 8 * (n + 6) : ℤ) - 66) : ℚ) / 6

end

end A051939.P10276668743130899142

namespace A051939

/-- `(n+1)*((n+6)²+8*(n+6)-66)/6` -/
def P10276668743130899142.Spec : Prop :=
  ∀ n, P10276668743130899142.a n = (A051939 (n + 6) : ℚ)

theorem P10276668743130899142.correct : P10276668743130899142.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A051939, Nat.add_sub_cancel, A051939.P10276668743130899142.a, A051939.P12772201178984180736.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A051939, Nat.add_sub_cancel, A051939.P10276668743130899142.a, A051939.P12772201178984180736.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A051939

/-! ## A051939.P12772201178984180736

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=3, a(1)=13, a(2)=31, a(3)=58`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051939

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P12772201178984180736.Spec : Prop :=
  ∀ n, P12772201178984180736.a n = A051939 (n + 6)

theorem P12772201178984180736.correct : P12772201178984180736.Spec := by
  intro n
  simp only [A051939, Nat.add_sub_cancel]

end A051939

/-! ## A051939.P13044180986851170356

`∑[∑[ogf((3+x-3x^2)/(1-2x+x^2))]]`
-/

namespace A051939.P13044180986851170356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1, -3] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051939.P13044180986851170356

namespace A051939

/-- `∑[∑[ogf((3+x-3x^2)/(1-2x+x^2))]]` -/
def P13044180986851170356.Spec : Prop :=
  ∀ n, P13044180986851170356.a n = A051939 (n + 6)

end A051939

/-! ## A051939.P4541914072877231373

`ogf((3+x-3x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A051939.P4541914072877231373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1, -3] [1, -4, 6, -4, 1] n

end

end A051939.P4541914072877231373

namespace A051939

/-- `ogf((3+x-3x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P4541914072877231373.Spec : Prop :=
  ∀ n, P4541914072877231373.a n = A051939 (n + 6)

end A051939

/-! ## A051939.P16352398643217200032

`3*(n+1)²+C(n+2, 3)`
-/

namespace A051939.P16352398643217200032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1) ^ 2 + Nat.choose (n + 2) 3

end

end A051939.P16352398643217200032

namespace A051939

/-- `3*(n+1)²+C(n+2, 3)` -/
def P16352398643217200032.Spec : Prop :=
  ∀ n, (P16352398643217200032.a n : ℤ) = A051939 (n + 6)

end A051939

/-! ## A051939.P9944150811686574078

`∑[∑[n+3]+n]+lcm(n, n+1)`
-/

namespace A051939.P9944150811686574078
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.lcm n (n + 1)

end

end A051939.P9944150811686574078

namespace A051939

/-- `∑[∑[n+3]+n]+lcm(n, n+1)` -/
def P9944150811686574078.Spec : Prop :=
  ∀ n, (P9944150811686574078.a n : ℤ) = A051939 (n + 6)

end A051939

/-! ## A051939.P6255712067168382912

`∑[C(n+3, 2)]+(n+1)*2*n`
-/

namespace A051939.P6255712067168382912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) * (2 * n)

end

end A051939.P6255712067168382912

namespace A051939

/-- `∑[C(n+3, 2)]+(n+1)*2*n` -/
def P6255712067168382912.Spec : Prop :=
  ∀ n, (P6255712067168382912.a n : ℤ) = A051939 (n + 6)

end A051939

/-! ## A051939.P8448939605321963648

`∑[A302537(n)+2]`
-/

namespace A051939.P8448939605321963648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302537 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051939.P8448939605321963648

namespace A051939

/-- `∑[A302537(n)+2]` -/
def P8448939605321963648.Spec : Prop :=
  ∀ n, P8448939605321963648.a n = A051939 (n + 6)

end A051939

/-! ## A051939.P17967252655685786921

`∑[A056119(n)+3]`
-/

namespace A051939.P17967252655685786921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056119 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051939.P17967252655685786921

namespace A051939

/-- `∑[A056119(n)+3]` -/
def P17967252655685786921.Spec : Prop :=
  ∀ n, P17967252655685786921.a n = A051939 (n + 6)

end A051939

/-! ## A051939.P6884276525561355836

`∑[A016945(n)]+∑[∑[n]]`
-/

namespace A051939.P6884276525561355836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A051939.P6884276525561355836

namespace A051939

/-- `∑[A016945(n)]+∑[∑[n]]` -/
def P6884276525561355836.Spec : Prop :=
  ∀ n, P6884276525561355836.a n = A051939 (n + 6)

end A051939

/-! ## A051939.P10686995133974769422

`A096957(n)-3*(n+1)`
-/

namespace A051939.P10686995133974769422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096957 n - (3 * (n + 1) : ℤ)

end

end A051939.P10686995133974769422

namespace A051939

/-- `A096957(n)-3*(n+1)` -/
def P10686995133974769422.Spec : Prop :=
  ∀ n, P10686995133974769422.a n = A051939 (n + 6)

end A051939

/-! ## A051939.P1885239776363881662

`∑[A155212(n)]+(n+1)²`
-/

namespace A051939.P1885239776363881662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A051939.P1885239776363881662

namespace A051939

/-- `∑[A155212(n)]+(n+1)²` -/
def P1885239776363881662.Spec : Prop :=
  ∀ n, P1885239776363881662.a n = A051939 (n + 6)

end A051939

/-! ## A051939.P14236159347074555845

`A033428(n+1)+∑[∑[n]]`
-/

namespace A051939.P14236159347074555845
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A051939.P14236159347074555845

namespace A051939

/-- `A033428(n+1)+∑[∑[n]]` -/
def P14236159347074555845.Spec : Prop :=
  ∀ n, P14236159347074555845.a n = A051939 (n + 6)

end A051939

/-! ## A051939.P15375723332249163951

`A060488(n+3)+n²-1`
-/

namespace A051939.P15375723332249163951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060488 (n + 3) + ((n ^ 2 : ℤ) - 1)

end

end A051939.P15375723332249163951

namespace A051939

/-- `A060488(n+3)+n²-1` -/
def P15375723332249163951.Spec : Prop :=
  ∀ n, P15375723332249163951.a n = A051939 (n + 6)

end A051939

/-! ## A051939.P2922069288743495872

`∑[∑[n+1]]+∑[A016873(n)]`
-/

namespace A051939.P2922069288743495872
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f3 j

end

end A051939.P2922069288743495872

namespace A051939

/-- `∑[∑[n+1]]+∑[A016873(n)]` -/
def P2922069288743495872.Spec : Prop :=
  ∀ n, P2922069288743495872.a n = A051939 (n + 6)

end A051939

/-! ## A051939.P9470547266916707487

`A046092(n)+∑[∑[n+2]+1]`
-/

namespace A051939.P9470547266916707487
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A051939.P9470547266916707487

namespace A051939

/-- `A046092(n)+∑[∑[n+2]+1]` -/
def P9470547266916707487.Spec : Prop :=
  ∀ n, P9470547266916707487.a n = A051939 (n + 6)

end A051939

/-! ## A051939.P17864664135666622484

`A033816(n)+A005586(n)`
-/

namespace A051939.P17864664135666622484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033816 n + A005586 n

end

end A051939.P17864664135666622484

namespace A051939

/-- `A033816(n)+A005586(n)` -/
def P17864664135666622484.Spec : Prop :=
  ∀ n, P17864664135666622484.a n = A051939 (n + 6)

end A051939

/-! ## A051939.P13844088222159917218

`A062748(n)+A046092(n)`
-/

namespace A051939.P13844088222159917218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062748 n + A046092 n

end

end A051939.P13844088222159917218

namespace A051939

/-- `A062748(n)+A046092(n)` -/
def P13844088222159917218.Spec : Prop :=
  ∀ n, P13844088222159917218.a n = A051939 (n + 6)

end A051939

/-! ## A051939.P6275225876877094588

`A164013(n)+A050407(n)`
-/

namespace A051939.P6275225876877094588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164013 n + A050407 n

end

end A051939.P6275225876877094588

namespace A051939

/-- `A164013(n)+A050407(n)` -/
def P6275225876877094588.Spec : Prop :=
  ∀ n, P6275225876877094588.a n = A051939 (n + 6)

end A051939

/-! ## A051939.P1313933460112650823

`A394185(n)+A161680(n)`
-/

namespace A051939.P1313933460112650823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394185 n + A161680 n

end

end A051939.P1313933460112650823

namespace A051939

/-- `A394185(n)+A161680(n)` -/
def P1313933460112650823.Spec : Prop :=
  ∀ n, P1313933460112650823.a n = A051939 (n + 6)

end A051939

/-!
# A051940: Truncated triangular numbers: n*(n+1)/2 - 3*t*(t+1)/2 with t=4.

The programs for A051940, the canonical program `A051940.P16647939982408799639` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051940 has offset 8).

The definition of A051940 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051940.P16647939982408799639

`n+8+a(n-1)` with `a(0)=6`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051940

/-- `n+8+a(n-1)` -/
def P16647939982408799639.Spec : Prop :=
  ∀ n, (P16647939982408799639.a n : ℤ) = A051940 (n + 8)

theorem P16647939982408799639.correct : P16647939982408799639.Spec := by
  intro n
  simp only [A051940, Nat.add_sub_cancel]

end A051940

/-! ## A051940.P11846708595095572386

`(n+8)*(n+9)/2-30`
-/

namespace A051940.P11846708595095572386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 8) * (n + 9) : ℚ) / 2 - 30

end

end A051940.P11846708595095572386

namespace A051940

/-- `(n+8)*(n+9)/2-30` -/
def P11846708595095572386.Spec : Prop :=
  ∀ n, P11846708595095572386.a n = (A051940 (n + 8) : ℚ)

theorem P11846708595095572386.correct : P11846708595095572386.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A051940, Nat.add_sub_cancel, A051940.P11846708595095572386.a, A051940.P16647939982408799639.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A051940, Nat.add_sub_cancel, A051940.P11846708595095572386.a, A051940.P16647939982408799639.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A051940

/-! ## A051940.P11942123310324578887

`ogf((-6+3x+2x^2)/(-1+3x-3x^2+x^3))`
-/

namespace A051940.P11942123310324578887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -3, -2] [1, -3, 3, -1] n

end

end A051940.P11942123310324578887

namespace A051940

/-- `ogf((-6+3x+2x^2)/(-1+3x-3x^2+x^3))` -/
def P11942123310324578887.Spec : Prop :=
  ∀ n, P11942123310324578887.a n = A051940 (n + 8)

end A051940

/-! ## A051940.P3343316006967588367

`∑[2%(n+2)+n+6]`
-/

namespace A051940.P3343316006967588367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 % (n + 2) + n + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051940.P3343316006967588367

namespace A051940

/-- `∑[2%(n+2)+n+6]` -/
def P3343316006967588367.Spec : Prop :=
  ∀ n, (P3343316006967588367.a n : ℤ) = A051940 (n + 8)

end A051940

/-! ## A051940.P10969739560716357930

`record[a(n-1)-(9-n)]` with `a(0)=6`
-/

namespace A051940.P10969739560716357930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) - (9 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051940.P10969739560716357930

namespace A051940

/-- `record[a(n-1)-(9-n)]` -/
def P10969739560716357930.Spec : Prop :=
  ∀ n, P10969739560716357930.a n = A051940 (n + 8)

end A051940

/-! ## A051940.P5532660953853565938

`record[(3-n)²-C(n+3, 2)]`
-/

namespace A051940.P5532660953853565938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (n : ℤ)) ^ 2 - (Nat.choose (n + 3) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051940.P5532660953853565938

namespace A051940

/-- `record[(3-n)²-C(n+3, 2)]` -/
def P5532660953853565938.Spec : Prop :=
  ∀ n, P5532660953853565938.a n = A051940 (n + 8)

end A051940

/-! ## A051940.P4944574155682056332

`∑[2*ceil(atan(n+1))+4+n]`
-/

namespace A051940.P4944574155682056332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈Real.arctan (n + 1 : ℝ)⌉ + 4 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051940.P4944574155682056332

namespace A051940

/-- `∑[2*ceil(atan(n+1))+4+n]` -/
def P4944574155682056332.Spec : Prop :=
  ∀ n, P4944574155682056332.a n = A051940 (n + 8)

end A051940

/-! ## A051940.P5086371590113593912

`floor((n+3)²-lcm(n-2, n-3)/2)`
-/

namespace A051940.P5086371590113593912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 3) ^ 2 : ℚ) - (Int.lcm ((n : ℤ) - 2) ((n : ℤ) - 3) : ℚ) / 2⌋

end

end A051940.P5086371590113593912

namespace A051940

/-- `floor((n+3)²-lcm(n-2, n-3)/2)` -/
def P5086371590113593912.Spec : Prop :=
  ∀ n, P5086371590113593912.a n = A051940 (n + 8)

end A051940

/-! ## A051940.P2206473756959724317

`Δ[C(n+1, 3)+(2*n+1)*2*n]`
-/

namespace A051940.P2206473756959724317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 3 + (2 * n + 1) * (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A051940.P2206473756959724317

namespace A051940

/-- `Δ[C(n+1, 3)+(2*n+1)*2*n]` -/
def P2206473756959724317.Spec : Prop :=
  ∀ n, P2206473756959724317.a n = A051940 (n + 8)

end A051940

/-! ## A051940.P17635436320830793794

`∑[A171463(n+1)+5]`
-/

namespace A051940.P17635436320830793794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051940.P17635436320830793794

namespace A051940

/-- `∑[A171463(n+1)+5]` -/
def P17635436320830793794.Spec : Prop :=
  ∀ n, P17635436320830793794.a n = A051940 (n + 8)

end A051940

/-! ## A051940.P536286349217047611

`∑[A114637(n+1)+6]`
-/

namespace A051940.P536286349217047611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051940.P536286349217047611

namespace A051940

/-- `∑[A114637(n+1)+6]` -/
def P536286349217047611.Spec : Prop :=
  ∀ n, P536286349217047611.a n = A051940 (n + 8)

end A051940

/-! ## A051940.P14414631869763754683

`∑[A040002(n)+4+n]`
-/

namespace A051940.P14414631869763754683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 n + 4 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051940.P14414631869763754683

namespace A051940

/-- `∑[A040002(n)+4+n]` -/
def P14414631869763754683.Spec : Prop :=
  ∀ n, P14414631869763754683.a n = A051940 (n + 8)

end A051940

/-! ## A051940.P371113749547339521

`∑[A122553(n)+5+n]`
-/

namespace A051940.P371113749547339521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n + 5 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051940.P371113749547339521

namespace A051940

/-- `∑[A122553(n)+5+n]` -/
def P371113749547339521.Spec : Prop :=
  ∀ n, P371113749547339521.a n = A051940 (n + 8)

end A051940

/-! ## A051940.P12109794833740359957

`∑[A158388(n)+7+n]`
-/

namespace A051940.P12109794833740359957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + 7 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051940.P12109794833740359957

namespace A051940

/-- `∑[A158388(n)+7+n]` -/
def P12109794833740359957.Spec : Prop :=
  ∀ n, P12109794833740359957.a n = A051940 (n + 8)

end A051940

/-! ## A051940.P13855295053617685811

`2*(A004767(n)+∑[n/2])`
-/

namespace A051940.P13855295053617685811
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A004767 n : ℚ) + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051940.P13855295053617685811

namespace A051940

/-- `2*(A004767(n)+∑[n/2])` -/
def P13855295053617685811.Spec : Prop :=
  ∀ n, P13855295053617685811.a n = (A051940 (n + 8) : ℚ)

end A051940

/-! ## A051940.P17047861005095674758

`∑[2*A020639(A004277(n))+n+4]`
-/

namespace A051940.P17047861005095674758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020639 (A004277 n).toNat + (n : ℤ) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051940.P17047861005095674758

namespace A051940

/-- `∑[2*A020639(A004277(n))+n+4]` -/
def P17047861005095674758.Spec : Prop :=
  ∀ n, P17047861005095674758.a n = A051940 (n + 8)

end A051940

/-! ## A051940.P1156833571600104213

`Δ[∑[C(n, 2)]+(2*n+1)*2*n]`
-/

namespace A051940.P1156833571600104213
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (2 * n + 1) * (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A051940.P1156833571600104213

namespace A051940

/-- `Δ[∑[C(n, 2)]+(2*n+1)*2*n]` -/
def P1156833571600104213.Spec : Prop :=
  ∀ n, P1156833571600104213.a n = A051940 (n + 8)

end A051940

/-! ## A051940.P5854021261977472477

`∑[A123136(a(n-1))]` with `a(0)=6`
-/

namespace A051940.P5854021261977472477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  A123136 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051940.P5854021261977472477

namespace A051940

/-- `∑[A123136(a(n-1))]` -/
def P5854021261977472477.Spec : Prop :=
  ∀ n, P5854021261977472477.a n = A051940 (n + 8)

end A051940

/-! ## A051940.P4864729851651118283

`A020715(A056126(n))`
-/

namespace A051940.P4864729851651118283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020715 (A056126 n).toNat

end

end A051940.P4864729851651118283

namespace A051940

/-- `A020715(A056126(n))` -/
def P4864729851651118283.Spec : Prop :=
  ∀ n, P4864729851651118283.a n = A051940 (n + 8)

end A051940

/-! ## A051940.P2053080680503280350

`A023444(A056121(n+1))`
-/

namespace A051940.P2053080680503280350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A056121 (n + 1)).toNat

end

end A051940.P2053080680503280350

namespace A051940

/-- `A023444(A056121(n+1))` -/
def P2053080680503280350.Spec : Prop :=
  ∀ n, P2053080680503280350.a n = A051940 (n + 8)

end A051940

/-!
# A051941: Truncated triangular pyramid numbers: a(n) = (n-7)*(n^2 + 10*n - 108)/6, n >= 8.

The programs for A051941, the canonical program `A051941.P11683458766758865164` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051941 has offset 8).

The definition of A051941 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*((n+8)²+10*(n+8)-108)/6` (program `A051941.P17033895385584846688`, by `A051941.P17033895385584846688.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051941.P17033895385584846688

`(n+1)*((n+8)²+10*(n+8)-108)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051941.P17033895385584846688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * (((n + 8) ^ 2 + 10 * (n + 8) : ℤ) - 108) : ℚ) / 6

end

end A051941.P17033895385584846688

namespace A051941

/-- `(n+1)*((n+8)²+10*(n+8)-108)/6` -/
def P17033895385584846688.Spec : Prop :=
  ∀ n, P17033895385584846688.a n = (A051941 (n + 8) : ℚ)

theorem P17033895385584846688.correct : P17033895385584846688.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A051941, Nat.add_sub_cancel, A051941.P17033895385584846688.a, A051941.P11683458766758865164.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A051941, Nat.add_sub_cancel, A051941.P17033895385584846688.a, A051941.P11683458766758865164.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A051941

/-! ## A051941.P11683458766758865164

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=6, a(1)=21, a(2)=46, a(3)=82`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051941

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P11683458766758865164.Spec : Prop :=
  ∀ n, P11683458766758865164.a n = A051941 (n + 8)

theorem P11683458766758865164.correct : P11683458766758865164.Spec := by
  intro n
  simp only [A051941, Nat.add_sub_cancel]

end A051941

/-! ## A051941.P10914945104630461462

`∑[a(n-1)+8+n]` with `a(0)=6`
-/

namespace A051941.P10914945104630461462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) + 8 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051941.P10914945104630461462

namespace A051941

/-- `∑[a(n-1)+8+n]` -/
def P10914945104630461462.Spec : Prop :=
  ∀ n, (P10914945104630461462.a n : ℤ) = A051941 (n + 8)

end A051941

/-! ## A051941.P2943444919522837294

`∑[ogf((-6+3x+2x^2)/(-1+3x-3x^2+x^3))]`
-/

namespace A051941.P2943444919522837294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -3, -2] [1, -3, 3, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051941.P2943444919522837294

namespace A051941

/-- `∑[ogf((-6+3x+2x^2)/(-1+3x-3x^2+x^3))]` -/
def P2943444919522837294.Spec : Prop :=
  ∀ n, P2943444919522837294.a n = A051941 (n + 8)

end A051941

/-! ## A051941.P6017759014023586477

`ogf((6-3x-2x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A051941.P6017759014023586477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -3, -2] [1, -4, 6, -4, 1] n

end

end A051941.P6017759014023586477

namespace A051941

/-- `ogf((6-3x-2x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P6017759014023586477.Spec : Prop :=
  ∀ n, P6017759014023586477.a n = A051941 (n + 8)

end A051941

/-! ## A051941.P1459491499643845518

`∑[9*n+6]+∑[C(n, 2)]`
-/

namespace A051941.P1459491499643845518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A051941.P1459491499643845518

namespace A051941

/-- `∑[9*n+6]+∑[C(n, 2)]` -/
def P1459491499643845518.Spec : Prop :=
  ∀ n, (P1459491499643845518.a n : ℤ) = A051941 (n + 8)

end A051941

/-! ## A051941.P16549005816800753973

`C(4*(n+1)-n, 2)+C(n+1, 3)`
-/

namespace A051941.P16549005816800753973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((4 * (n + 1) : ℤ) - (n : ℤ)).toNat 2 + Nat.choose (n + 1) 3

end

end A051941.P16549005816800753973

namespace A051941

/-- `C(4*(n+1)-n, 2)+C(n+1, 3)` -/
def P16549005816800753973.Spec : Prop :=
  ∀ n, (P16549005816800753973.a n : ℤ) = A051941 (n + 8)

end A051941

/-! ## A051941.P7068634433503923908

`∑[∑[n+3]+n+2]+lcm(2*n+1, n+1)`
-/

namespace A051941.P7068634433503923908
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.lcm (2 * n + 1) (n + 1)

end

end A051941.P7068634433503923908

namespace A051941

/-- `∑[∑[n+3]+n+2]+lcm(2*n+1, n+1)` -/
def P7068634433503923908.Spec : Prop :=
  ∀ n, (P7068634433503923908.a n : ℤ) = A051941 (n + 8)

end A051941

/-! ## A051941.P8513595960696845474

`A096957(n)+∑[2*n]`
-/

namespace A051941.P8513595960696845474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096957 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A051941.P8513595960696845474

namespace A051941

/-- `A096957(n)+∑[2*n]` -/
def P8513595960696845474.Spec : Prop :=
  ∀ n, P8513595960696845474.a n = A051941 (n + 8)

end A051941

/-! ## A051941.P6991320714829499693

`∑[∑[n+1]]+∑[A016969(n)+n]`
-/

namespace A051941.P6991320714829499693
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f3 j

end

end A051941.P6991320714829499693

namespace A051941

/-- `∑[∑[n+1]]+∑[A016969(n)+n]` -/
def P6991320714829499693.Spec : Prop :=
  ∀ n, P6991320714829499693.a n = A051941 (n + 8)

end A051941

/-! ## A051941.P9162896834054696381

`3*(n+1)²+∑[A000217(n+2)]`
-/

namespace A051941.P9162896834054696381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) ^ 2 : ℤ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051941.P9162896834054696381

namespace A051941

/-- `3*(n+1)²+∑[A000217(n+2)]` -/
def P9162896834054696381.Spec : Prop :=
  ∀ n, P9162896834054696381.a n = A051941 (n + 8)

end A051941

/-! ## A051941.P7721847908947745275

`A161680(n)+A087863(n)`
-/

namespace A051941.P7721847908947745275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + A087863 n

end

end A051941.P7721847908947745275

namespace A051941

/-- `A161680(n)+A087863(n)` -/
def P7721847908947745275.Spec : Prop :=
  ∀ n, P7721847908947745275.a n = A051941 (n + 8)

end A051941

/-! ## A051941.P12208471153687650804

`A046092(n)+A023545(n+1)`
-/

namespace A051941.P12208471153687650804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n + A023545 (n + 1)

end

end A051941.P12208471153687650804

namespace A051941

/-- `A046092(n)+A023545(n+1)` -/
def P12208471153687650804.Spec : Prop :=
  ∀ n, P12208471153687650804.a n = A051941 (n + 8)

end A051941

/-! ## A051941.P10918055851513379874

`A101853(n+1)+A045943(n)`
-/

namespace A051941.P10918055851513379874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101853 (n + 1) + A045943 n

end

end A051941.P10918055851513379874

namespace A051941

/-- `A101853(n+1)+A045943(n)` -/
def P10918055851513379874.Spec : Prop :=
  ∀ n, P10918055851513379874.a n = A051941 (n + 8)

end A051941

/-! ## A051941.P13162196811994428697

`A188554(n+1)+A060626(n)`
-/

namespace A051941.P13162196811994428697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188554 (n + 1) + A060626 n

end

end A051941.P13162196811994428697

namespace A051941

/-- `A188554(n+1)+A060626(n)` -/
def P13162196811994428697.Spec : Prop :=
  ∀ n, P13162196811994428697.a n = A051941 (n + 8)

end A051941

/-! ## A051941.P8234525803357481874

`A222001(n+1)+A067725(n)`
-/

namespace A051941.P8234525803357481874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222001 (n + 1) + A067725 n

end

end A051941.P8234525803357481874

namespace A051941

/-- `A222001(n+1)+A067725(n)` -/
def P8234525803357481874.Spec : Prop :=
  ∀ n, P8234525803357481874.a n = A051941 (n + 8)

end A051941

/-! ## A051941.P8894480766338361882

`A180863(n+2)+A005581(n)`
-/

namespace A051941.P8894480766338361882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180863 (n + 2) + A005581 n

end

end A051941.P8894480766338361882

namespace A051941

/-- `A180863(n+2)+A005581(n)` -/
def P8894480766338361882.Spec : Prop :=
  ∀ n, P8894480766338361882.a n = A051941 (n + 8)

end A051941

/-! ## A051941.P14253179786556466999

`A085788(n+1)-A135036(n+1)`
-/

namespace A051941.P14253179786556466999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085788 (n + 1) - A135036 (n + 1)

end

end A051941.P14253179786556466999

namespace A051941

/-- `A085788(n+1)-A135036(n+1)` -/
def P14253179786556466999.Spec : Prop :=
  ∀ n, P14253179786556466999.a n = A051941 (n + 8)

end A051941

/-! ## A051941.P3735187899942375695

`A023545(n+1)+2*A002378(n)`
-/

namespace A051941.P3735187899942375695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) + 2 * A002378 n

end

end A051941.P3735187899942375695

namespace A051941

/-- `A023545(n+1)+2*A002378(n)` -/
def P3735187899942375695.Spec : Prop :=
  ∀ n, P3735187899942375695.a n = A051941 (n + 8)

end A051941

/-! ## A051941.P13456952239164099177

`A126264(n+1)-A167541(n+6)`
-/

namespace A051941.P13456952239164099177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126264 (n + 1) - A167541 (n + 6)

end

end A051941.P13456952239164099177

namespace A051941

/-- `A126264(n+1)-A167541(n+6)` -/
def P13456952239164099177.Spec : Prop :=
  ∀ n, P13456952239164099177.a n = A051941 (n + 8)

end A051941

/-!
# A051942: a(n) = n*(n+1)/2 - 45.

The programs for A051942, the canonical program `A051942.P11124709069933566050` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051942 has offset 9).

The definition of A051942 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+9)*(n+10)/2-45` (program `A051942.P10424792099910250988`, by `A051942.P10424792099910250988.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051942.P9587323414164365345

`n*(n+19)/2`
-/

namespace A051942.P9587323414164365345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 19) : ℚ) / 2

end

end A051942.P9587323414164365345

namespace A051942

/-- `n*(n+19)/2` -/
def P9587323414164365345.Spec : Prop :=
  ∀ n, P9587323414164365345.a n = (A051942 (n + 9) : ℚ)

theorem P9587323414164365345.correct : P9587323414164365345.Spec := by
  intro n
  induction n with
  | zero => simp [A051942, A051942.P9587323414164365345.a, A051942.P11124709069933566050.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A051942, Nat.add_sub_cancel, A051942.P9587323414164365345.a, A051942.P11124709069933566050.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A051942

/-! ## A051942.P11124709069933566050

`n+9+a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051942

/-- `n+9+a(n-1)` -/
def P11124709069933566050.Spec : Prop :=
  ∀ n, (P11124709069933566050.a n : ℤ) = A051942 (n + 9)

theorem P11124709069933566050.correct : P11124709069933566050.Spec := by
  intro n
  simp only [A051942, Nat.add_sub_cancel]

end A051942

/-! ## A051942.P10424792099910250988

`(n+9)*(n+10)/2-45`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051942.P10424792099910250988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 9) * (n + 10) : ℚ) / 2 - 45

end

end A051942.P10424792099910250988

namespace A051942

/-- `(n+9)*(n+10)/2-45` -/
def P10424792099910250988.Spec : Prop :=
  ∀ n, P10424792099910250988.a n = (A051942 (n + 9) : ℚ)

theorem P10424792099910250988.correct : P10424792099910250988.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A051942, Nat.add_sub_cancel, A051942.P10424792099910250988.a, A051942.P11124709069933566050.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A051942, Nat.add_sub_cancel, A051942.P10424792099910250988.a, A051942.P11124709069933566050.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A051942

/-! ## A051942.P6898591623712999887

`∑[dr(9*n)+n]`
-/

namespace A051942.P6898591623712999887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (9 * n : ℤ) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051942.P6898591623712999887

namespace A051942

/-- `∑[dr(9*n)+n]` -/
def P6898591623712999887.Spec : Prop :=
  ∀ n, (P6898591623712999887.a n : ℤ) = A051942 (n + 9)

end A051942

/-! ## A051942.P12629525426118789786

`record[(n-19)*n/2]`
-/

namespace A051942.P12629525426118789786
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 19 : ℚ) * ((n : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051942.P12629525426118789786

namespace A051942

/-- `record[(n-19)*n/2]` -/
def P12629525426118789786.Spec : Prop :=
  ∀ n, P12629525426118789786.a n = (A051942 (n + 9) : ℚ)

end A051942

/-! ## A051942.P2494888361946540122

`∑[ogf((10x-9x^2)/(1-2x+x^2))]`
-/

namespace A051942.P2494888361946540122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 10, -9] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051942.P2494888361946540122

namespace A051942

/-- `∑[ogf((10x-9x^2)/(1-2x+x^2))]` -/
def P2494888361946540122.Spec : Prop :=
  ∀ n, P2494888361946540122.a n = A051942 (n + 9)

end A051942

/-! ## A051942.P12159623249547728363

`ogf((10x-9x^2)/(1-3x+3x^2-x^3))`
-/

namespace A051942.P12159623249547728363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 10, -9] [1, -3, 3, -1] n

end

end A051942.P12159623249547728363

namespace A051942

/-- `ogf((10x-9x^2)/(1-3x+3x^2-x^3))` -/
def P12159623249547728363.Spec : Prop :=
  ∀ n, P12159623249547728363.a n = A051942 (n + 9)

end A051942

/-! ## A051942.P921992361988170948

`∑[A180599(n)+n]`
-/

namespace A051942.P921992361988170948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180599 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051942.P921992361988170948

namespace A051942

/-- `∑[A180599(n)+n]` -/
def P921992361988170948.Spec : Prop :=
  ∀ n, P921992361988170948.a n = A051942 (n + 9)

end A051942

/-! ## A051942.P12660705446326563071

`abs(A055999(n)+7*n-n)`
-/

namespace A051942.P12660705446326563071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055999 n + (7 * n : ℤ) - (n : ℤ)|

end

end A051942.P12660705446326563071

namespace A051942

/-- `abs(A055999(n)+7*n-n)` -/
def P12660705446326563071.Spec : Prop :=
  ∀ n, P12660705446326563071.a n = A051942 (n + 9)

end A051942

/-! ## A051942.P3274320299169088379

`abs(A000217(n)+10*n-n)`
-/

namespace A051942.P3274320299169088379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000217 n + (10 * n : ℤ) - (n : ℤ)|

end

end A051942.P3274320299169088379

namespace A051942

/-- `abs(A000217(n)+10*n-n)` -/
def P3274320299169088379.Spec : Prop :=
  ∀ n, P3274320299169088379.a n = A051942 (n + 9)

end A051942

/-! ## A051942.P2496302425097371712

`A131878(n)%A342914(n)`
-/

namespace A051942.P2496302425097371712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131878 n) (A342914 n)

end

end A051942.P2496302425097371712

namespace A051942

/-- `A131878(n)%A342914(n)` -/
def P2496302425097371712.Spec : Prop :=
  ∀ n, P2496302425097371712.a n = A051942 (n + 9)

end A051942

/-! ## A051942.P12118988326454916488

`A195314(n+1)%A093485(n)`
-/

namespace A051942.P12118988326454916488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195314 (n + 1)) (A093485 n)

end

end A051942.P12118988326454916488

namespace A051942

/-- `A195314(n+1)%A093485(n)` -/
def P12118988326454916488.Spec : Prop :=
  ∀ n, P12118988326454916488.a n = A051942 (n + 9)

end A051942

/-! ## A051942.P468298542298024185

`A262221(n)%A244805(n+1)`
-/

namespace A051942.P468298542298024185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262221 n) (A244805 (n + 1))

end

end A051942.P468298542298024185

namespace A051942

/-- `A262221(n)%A244805(n+1)` -/
def P468298542298024185.Spec : Prop :=
  ∀ n, P468298542298024185.a n = A051942 (n + 9)

end A051942

/-! ## A051942.P14427646272362286802

`∑[A113923(n+1)²+n]`
-/

namespace A051942.P14427646272362286802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113923 (n + 1) ^ 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051942.P14427646272362286802

namespace A051942

/-- `∑[A113923(n+1)²+n]` -/
def P14427646272362286802.Spec : Prop :=
  ∀ n, P14427646272362286802.a n = A051942 (n + 9)

end A051942

/-! ## A051942.P13856562577223220019

`Δ[Δ[A266396(n+1)]]`
-/

namespace A051942.P13856562577223220019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266396 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051942.P13856562577223220019

namespace A051942

/-- `Δ[Δ[A266396(n+1)]]` -/
def P13856562577223220019.Spec : Prop :=
  ∀ n, P13856562577223220019.a n = A051942 (n + 9)

end A051942

/-! ## A051942.P8090614522936980308

`A023451(A056126(n+1))`
-/

namespace A051942.P8090614522936980308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023451 (A056126 (n + 1)).toNat

end

end A051942.P8090614522936980308

namespace A051942

/-- `A023451(A056126(n+1))` -/
def P8090614522936980308.Spec : Prop :=
  ∀ n, P8090614522936980308.a n = A051942 (n + 9)

end A051942

/-! ## A051942.P11981725017125600674

`A023457(A051940(n+9))`
-/

namespace A051942.P11981725017125600674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023457 (A051940 (n + 9)).toNat

end

end A051942.P11981725017125600674

namespace A051942

/-- `A023457(A051940(n+9))` -/
def P11981725017125600674.Spec : Prop :=
  ∀ n, P11981725017125600674.a n = A051942 (n + 9)

end A051942

/-!
# A051943: Truncated triangular pyramid numbers: a(n) = Sum_{k=9..n} (k*(k+1)/2 - 45).

The programs for A051943, the canonical program `A051943.P5459633662569305489` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051943 has offset 9).

The definition of A051943 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051943.P6438518118380510123

`(n+29)*(n+1)*n/6`
-/

namespace A051943.P6438518118380510123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 29) * (n + 1) * n : ℚ) / 6

end

end A051943.P6438518118380510123

namespace A051943

/-- `(n+29)*(n+1)*n/6` -/
def P6438518118380510123.Spec : Prop :=
  ∀ n, P6438518118380510123.a n = (A051943 (n + 9) : ℚ)

theorem P6438518118380510123.correct : P6438518118380510123.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A051943, Nat.add_sub_cancel, A051943.P6438518118380510123.a, A051943.P5459633662569305489.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A051943, Nat.add_sub_cancel, A051943.P6438518118380510123.a, A051943.P5459633662569305489.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A051943

/-! ## A051943.P5459633662569305489

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=10, a(2)=31, a(3)=64`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051943

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P5459633662569305489.Spec : Prop :=
  ∀ n, P5459633662569305489.a n = A051943 (n + 9)

theorem P5459633662569305489.correct : P5459633662569305489.Spec := by
  intro n
  simp only [A051943, Nat.add_sub_cancel]

end A051943

/-! ## A051943.P3669943256558851233

`∑[C(n, 2)+10*n]`
-/

namespace A051943.P3669943256558851233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 10 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051943.P3669943256558851233

namespace A051943

/-- `∑[C(n, 2)+10*n]` -/
def P3669943256558851233.Spec : Prop :=
  ∀ n, (P3669943256558851233.a n : ℤ) = A051943 (n + 9)

end A051943

/-! ## A051943.P4790793641909289640

`∑[a(n-1)+9+n]` with `a(0)=0`
-/

namespace A051943.P4790793641909289640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 9 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051943.P4790793641909289640

namespace A051943

/-- `∑[a(n-1)+9+n]` -/
def P4790793641909289640.Spec : Prop :=
  ∀ n, (P4790793641909289640.a n : ℤ) = A051943 (n + 9)

end A051943

/-! ## A051943.P11514519697261612349

`(2*n+1)²+C(n+3, 3)-(n+2)`
-/

namespace A051943.P11514519697261612349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) + ((Nat.choose (n + 3) 3 : ℤ) - (n + 2 : ℤ))

end

end A051943.P11514519697261612349

namespace A051943

/-- `(2*n+1)²+C(n+3, 3)-(n+2)` -/
def P11514519697261612349.Spec : Prop :=
  ∀ n, P11514519697261612349.a n = A051943 (n + 9)

end A051943

/-! ## A051943.P11531607873750204737

`C(n+3, 3)+(2*n+1)*2*n+n-1`
-/

namespace A051943.P11531607873750204737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℤ) + (((2 * n + 1) * (2 * n) : ℤ) + ((n : ℤ) - 1))

end

end A051943.P11531607873750204737

namespace A051943

/-- `C(n+3, 3)+(2*n+1)*2*n+n-1` -/
def P11531607873750204737.Spec : Prop :=
  ∀ n, P11531607873750204737.a n = A051943 (n + 9)

end A051943

/-! ## A051943.P14395643110616697854

`lcm(2*n+1, 2*n)+∑[∑[n+1]]+n-1`
-/

namespace A051943.P14395643110616697854
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (2 * n + 1) (2 * n) : ℤ) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((n : ℤ) - 1))

end

end A051943.P14395643110616697854

namespace A051943

/-- `lcm(2*n+1, 2*n)+∑[∑[n+1]]+n-1` -/
def P14395643110616697854.Spec : Prop :=
  ∀ n, P14395643110616697854.a n = A051943 (n + 9)

end A051943

/-! ## A051943.P10159424217964239882

`∑[A132762(n)/2]`
-/

namespace A051943.P10159424217964239882
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132762 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051943.P10159424217964239882

namespace A051943

/-- `∑[A132762(n)/2]` -/
def P10159424217964239882.Spec : Prop :=
  ∀ n, P10159424217964239882.a n = (A051943 (n + 9) : ℚ)

end A051943

/-! ## A051943.P18010345851221928965

`∑[A056126(n)+n]`
-/

namespace A051943.P18010345851221928965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056126 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051943.P18010345851221928965

namespace A051943

/-- `∑[A056126(n)+n]` -/
def P18010345851221928965.Spec : Prop :=
  ∀ n, P18010345851221928965.a n = A051943 (n + 9)

end A051943

/-! ## A051943.P6085562535595560894

`∑[A140675(n)-n²]`
-/

namespace A051943.P6085562535595560894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140675 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051943.P6085562535595560894

namespace A051943

/-- `∑[A140675(n)-n²]` -/
def P6085562535595560894.Spec : Prop :=
  ∀ n, P6085562535595560894.a n = A051943 (n + 9)

end A051943

/-! ## A051943.P7942050073357078553

`A027468(n)+∑[∑[n]]`
-/

namespace A051943.P7942050073357078553
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027468 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A051943.P7942050073357078553

namespace A051943

/-- `A027468(n)+∑[∑[n]]` -/
def P7942050073357078553.Spec : Prop :=
  ∀ n, P7942050073357078553.a n = A051943 (n + 9)

end A051943

/-! ## A051943.P14207125783254492302

`(n+1)/3*A132757(n)`
-/

namespace A051943.P14207125783254492302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A132757 n : ℚ)

end

end A051943.P14207125783254492302

namespace A051943

/-- `(n+1)/3*A132757(n)` -/
def P14207125783254492302.Spec : Prop :=
  ∀ n, P14207125783254492302.a n = (A051943 (n + 9) : ℚ)

end A051943

/-! ## A051943.P13550736610781545936

`A024966(n)+A006503(n)`
-/

namespace A051943.P13550736610781545936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024966 n + A006503 n

end

end A051943.P13550736610781545936

namespace A051943

/-- `A024966(n)+A006503(n)` -/
def P13550736610781545936.Spec : Prop :=
  ∀ n, P13550736610781545936.a n = A051943 (n + 9)

end A051943

/-! ## A051943.P12762271646622242350

`A092286(n)+A022265(n)`
-/

namespace A051943.P12762271646622242350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092286 n + A022265 n

end

end A051943.P12762271646622242350

namespace A051943

/-- `A092286(n)+A022265(n)` -/
def P12762271646622242350.Spec : Prop :=
  ∀ n, P12762271646622242350.a n = A051943 (n + 9)

end A051943

/-! ## A051943.P16649641550714688612

`A135705(n)+A004006(n)`
-/

namespace A051943.P16649641550714688612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135705 n + A004006 n

end

end A051943.P16649641550714688612

namespace A051943

/-- `A135705(n)+A004006(n)` -/
def P16649641550714688612.Spec : Prop :=
  ∀ n, P16649641550714688612.a n = A051943 (n + 9)

end A051943

/-! ## A051943.P6896256575749761611

`A186029(n)+A005586(n)`
-/

namespace A051943.P6896256575749761611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186029 n + A005586 n

end

end A051943.P6896256575749761611

namespace A051943

/-- `A186029(n)+A005586(n)` -/
def P6896256575749761611.Spec : Prop :=
  ∀ n, P6896256575749761611.a n = A051943 (n + 9)

end A051943

/-! ## A051943.P15366430955283126968

`A195319(n)+A050407(n)`
-/

namespace A051943.P15366430955283126968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195319 n + A050407 n

end

end A051943.P15366430955283126968

namespace A051943

/-- `A195319(n)+A050407(n)` -/
def P15366430955283126968.Spec : Prop :=
  ∀ n, P15366430955283126968.a n = A051943 (n + 9)

end A051943

/-! ## A051943.P2102375378044194044

`A143058(n)+A142463(n)`
-/

namespace A051943.P2102375378044194044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143058 n + A142463 n

end

end A051943.P2102375378044194044

namespace A051943

/-- `A143058(n)+A142463(n)` -/
def P2102375378044194044.Spec : Prop :=
  ∀ n, P2102375378044194044.a n = A051943 (n + 9)

end A051943

/-! ## A051943.P3536801892881131321

`A277978(n)+A026057(n)`
-/

namespace A051943.P3536801892881131321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277978 n + A026057 n

end

end A051943.P3536801892881131321

namespace A051943

/-- `A277978(n)+A026057(n)` -/
def P3536801892881131321.Spec : Prop :=
  ∀ n, P3536801892881131321.a n = A051943 (n + 9)

end A051943

/-! ## A051943.P1300373730361271388

`A326725(n)+A264443(n)`
-/

namespace A051943.P1300373730361271388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326725 n + A264443 n

end

end A051943.P1300373730361271388

namespace A051943

/-- `A326725(n)+A264443(n)` -/
def P1300373730361271388.Spec : Prop :=
  ∀ n, P1300373730361271388.a n = A051943 (n + 9)

end A051943

/-!
# A051944: a(n) = C(n)*(4*n+1) where C(n) = Catalan numbers (A000108).

The programs for A051944, the canonical program `A051944.P8157116428899209073` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051944 has offset 0).

The definition of A051944 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051944.P10897061963584374364

`A000108(n)*(4*n+1)`
-/

namespace A051944.P10897061963584374364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (4 * n + 1 : ℤ)

end

end A051944.P10897061963584374364

namespace A051944

/-- `A000108(n)*(4*n+1)` -/
def P10897061963584374364.Spec : Prop :=
  ∀ n, P10897061963584374364.a n = A051944 n

end A051944

/-! ## A051944.P8157116428899209073

`A000984(n)+3*A001791(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A051944

/-- `A000984(n)+3*A001791(n)` -/
def P8157116428899209073.Spec : Prop :=
  ∀ n, P8157116428899209073.a n = A051944 n

theorem P8157116428899209073.correct : P8157116428899209073.Spec := by
  intro n
  simp only [A051944]

end A051944

/-! ## A051944.P4186213597295733649

`(4*n+1)*C(2*n, n)/(n+1)`
-/

namespace A051944.P4186213597295733649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * n + 1) * Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ)

end

end A051944.P4186213597295733649

namespace A051944

/-- `(4*n+1)*C(2*n, n)/(n+1)` -/
def P4186213597295733649.Spec : Prop :=
  ∀ n, P4186213597295733649.a n = (A051944 n : ℚ)

end A051944

/-! ## A051944.P773279788018171428

`A107232(2*n)`
-/

namespace A051944.P773279788018171428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107232 (2 * n)

end

end A051944.P773279788018171428

namespace A051944

/-- `A107232(2*n)` -/
def P773279788018171428.Spec : Prop :=
  ∀ n, P773279788018171428.a n = A051944 n

end A051944

/-! ## A051944.P16711293966921598305

`record[Δ[A089849(n+1)]]`
-/

namespace A051944.P16711293966921598305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089849 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051944.P16711293966921598305

namespace A051944

/-- `record[Δ[A089849(n+1)]]` -/
def P16711293966921598305.Spec : Prop :=
  ∀ n, P16711293966921598305.a n = A051944 n

end A051944

/-! ## A051944.P14316826500101587885

`record[Δ[n²]*A126120(n)]`
-/

namespace A051944.P14316826500101587885
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) * A126120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051944.P14316826500101587885

namespace A051944

/-- `record[Δ[n²]*A126120(n)]` -/
def P14316826500101587885.Spec : Prop :=
  ∀ n, P14316826500101587885.a n = A051944 n

end A051944

/-! ## A051944.P8907096149897472322

`(4*n+1)*abs(A168491(n))`
-/

namespace A051944.P8907096149897472322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) * |A168491 n|

end

end A051944.P8907096149897472322

namespace A051944

/-- `(4*n+1)*abs(A168491(n))` -/
def P8907096149897472322.Spec : Prop :=
  ∀ n, P8907096149897472322.a n = A051944 n

end A051944

/-! ## A051944.P12912747636557119568

`(4*n+1)*A120588(n+1)`
-/

namespace A051944.P12912747636557119568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) * A120588 (n + 1)

end

end A051944.P12912747636557119568

namespace A051944

/-- `(4*n+1)*A120588(n+1)` -/
def P12912747636557119568.Spec : Prop :=
  ∀ n, P12912747636557119568.a n = A051944 n

end A051944

/-! ## A051944.P16889294778294750118

`(4*n+1)*A028304(2*n)`
-/

namespace A051944.P16889294778294750118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) * A028304 (2 * n)

end

end A051944.P16889294778294750118

namespace A051944

/-- `(4*n+1)*A028304(2*n)` -/
def P16889294778294750118.Spec : Prop :=
  ∀ n, P16889294778294750118.a n = A051944 n

end A051944

/-! ## A051944.P5944441190908130390

`(4*n+1)*A028329(n)/(2*(n+1))`
-/

namespace A051944.P5944441190908130390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℚ) * ((A028329 n : ℚ) / (2 * (n + 1) : ℚ))

end

end A051944.P5944441190908130390

namespace A051944

/-- `(4*n+1)*A028329(n)/(2*(n+1))` -/
def P5944441190908130390.Spec : Prop :=
  ∀ n, P5944441190908130390.a n = (A051944 n : ℚ)

end A051944

/-! ## A051944.P3553365137028687816

`A062561(n)+A000984(n)`
-/

namespace A051944.P3553365137028687816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062561 n + A000984 n

end

end A051944.P3553365137028687816

namespace A051944

/-- `A062561(n)+A000984(n)` -/
def P3553365137028687816.Spec : Prop :=
  ∀ n, P3553365137028687816.a n = A051944 n

theorem P3553365137028687816.correct : P3553365137028687816.Spec := by
  intro n
  simp only [A051944, Nat.add_sub_cancel, A051944.P3553365137028687816.a, A051944.P8157116428899209073.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A062561, A062561.P8999694222887573335.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051944

/-! ## A051944.P16240679054091130004

`A162551(n)+A001700(n)`
-/

namespace A051944.P16240679054091130004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162551 n + A001700 n

end

end A051944.P16240679054091130004

namespace A051944

/-- `A162551(n)+A001700(n)` -/
def P16240679054091130004.Spec : Prop :=
  ∀ n, P16240679054091130004.a n = A051944 n

end A051944

/-! ## A051944.P10105746806869227323

`A276666(n)+A051960(n)`
-/

namespace A051944.P10105746806869227323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276666 n + A051960 n

end

end A051944.P10105746806869227323

namespace A051944

/-- `A276666(n)+A051960(n)` -/
def P10105746806869227323.Spec : Prop :=
  ∀ n, P10105746806869227323.a n = A051944 n

end A051944

/-! ## A051944.P9082326649009455481

`A038665(n)-A005807(n)`
-/

namespace A051944.P9082326649009455481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038665 n - A005807 n

end

end A051944.P9082326649009455481

namespace A051944

/-- `A038665(n)-A005807(n)` -/
def P9082326649009455481.Spec : Prop :=
  ∀ n, P9082326649009455481.a n = A051944 n

end A051944

/-! ## A051944.P17012197330781407318

`A051945(n)-A001791(n)`
-/

namespace A051944.P17012197330781407318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051945 n - A001791 n

end

end A051944.P17012197330781407318

namespace A051944

/-- `A051945(n)-A001791(n)` -/
def P17012197330781407318.Spec : Prop :=
  ∀ n, P17012197330781407318.a n = A051944 n

theorem P17012197330781407318.correct : P17012197330781407318.Spec := by
  intro n
  simp only [A051944, Nat.add_sub_cancel, A051944.P17012197330781407318.a, A051944.P8157116428899209073.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A051945, A051945.P12563148972350424108.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051944

/-! ## A051944.P2681322448883209608

`A053368(n)-A000984(n)`
-/

namespace A051944.P2681322448883209608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053368 n - A000984 n

end

end A051944.P2681322448883209608

namespace A051944

/-- `A053368(n)-A000984(n)` -/
def P2681322448883209608.Spec : Prop :=
  ∀ n, P2681322448883209608.a n = A051944 n

end A051944

/-! ## A051944.P5492828825081110697

`A050476(n)-A162551(n)`
-/

namespace A051944.P5492828825081110697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050476 n - A162551 n

end

end A051944.P5492828825081110697

namespace A051944

/-- `A050476(n)-A162551(n)` -/
def P5492828825081110697.Spec : Prop :=
  ∀ n, P5492828825081110697.a n = A051944 n

theorem P5492828825081110697.correct : P5492828825081110697.Spec := by
  intro n
  simp only [A051944, Nat.add_sub_cancel, A051944.P5492828825081110697.a, A051944.P8157116428899209073.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A050476, A050476.P4852240921440524385.a, A162551, A162551.P10524967716150044895.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051944

/-! ## A051944.P16617610522440684776

`A001791(n)+Δ[A000984(n)]`
-/

namespace A051944.P16617610522440684776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 n + (f1 (n + 1) - f1 n)

end

end A051944.P16617610522440684776

namespace A051944

/-- `A001791(n)+Δ[A000984(n)]` -/
def P16617610522440684776.Spec : Prop :=
  ∀ n, P16617610522440684776.a n = A051944 n

end A051944

/-!
# A051945: a(n) = C(n)*(5*n+1) where C(n) = Catalan numbers (A000108).

The programs for A051945, the canonical program `A051945.P12563148972350424108` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051945 has offset 0).

The definition of A051945 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051945.P10766303427781629845

`A000108(n)*(5*n+1)`
-/

namespace A051945.P10766303427781629845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (5 * n + 1 : ℤ)

end

end A051945.P10766303427781629845

namespace A051945

/-- `A000108(n)*(5*n+1)` -/
def P10766303427781629845.Spec : Prop :=
  ∀ n, P10766303427781629845.a n = A051945 n

end A051945

/-! ## A051945.P12563148972350424108

`A000984(n)+4*A001791(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A051945

/-- `A000984(n)+4*A001791(n)` -/
def P12563148972350424108.Spec : Prop :=
  ∀ n, P12563148972350424108.a n = A051945 n

theorem P12563148972350424108.correct : P12563148972350424108.Spec := by
  intro n
  simp only [A051945]

end A051945

/-! ## A051945.P4959475672369767527

`(5*n+1)*C(2*n, n)/(n+1)`
-/

namespace A051945.P4959475672369767527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * n + 1) * Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ)

end

end A051945.P4959475672369767527

namespace A051945

/-- `(5*n+1)*C(2*n, n)/(n+1)` -/
def P4959475672369767527.Spec : Prop :=
  ∀ n, P4959475672369767527.a n = (A051945 n : ℚ)

end A051945

/-! ## A051945.P8367816712123824002

`(5*n+1)*A120588(n+1)`
-/

namespace A051945.P8367816712123824002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n + 1 : ℤ) * A120588 (n + 1)

end

end A051945.P8367816712123824002

namespace A051945

/-- `(5*n+1)*A120588(n+1)` -/
def P8367816712123824002.Spec : Prop :=
  ∀ n, P8367816712123824002.a n = A051945 n

end A051945

/-! ## A051945.P13521172669947655831

`(5*n+1)*A208355(2*n)`
-/

namespace A051945.P13521172669947655831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n + 1 : ℤ) * A208355 (2 * n)

end

end A051945.P13521172669947655831

namespace A051945

/-- `(5*n+1)*A208355(2*n)` -/
def P13521172669947655831.Spec : Prop :=
  ∀ n, P13521172669947655831.a n = A051945 n

end A051945

/-! ## A051945.P11953598544358417169

`(5*n+1)*abs(A115140(n+1))`
-/

namespace A051945.P11953598544358417169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n + 1 : ℤ) * |A115140 (n + 1)|

end

end A051945.P11953598544358417169

namespace A051945

/-- `(5*n+1)*abs(A115140(n+1))` -/
def P11953598544358417169.Spec : Prop :=
  ∀ n, P11953598544358417169.a n = A051945 n

end A051945

/-! ## A051945.P14807829553657282603

`(4*n+1+n)*A028304(2*n)`
-/

namespace A051945.P14807829553657282603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 + n : ℤ) * A028304 (2 * n)

end

end A051945.P14807829553657282603

namespace A051945

/-- `(4*n+1+n)*A028304(2*n)` -/
def P14807829553657282603.Spec : Prop :=
  ∀ n, P14807829553657282603.a n = A051945 n

end A051945

/-! ## A051945.P17331961623171081410

`(5*n+1)*abs(A105523(2*n+1))`
-/

namespace A051945.P17331961623171081410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n + 1 : ℤ) * |A105523 (2 * n + 1)|

end

end A051945.P17331961623171081410

namespace A051945

/-- `(5*n+1)*abs(A105523(2*n+1))` -/
def P17331961623171081410.Spec : Prop :=
  ∀ n, P17331961623171081410.a n = A051945 n

end A051945

/-! ## A051945.P18253720007538577960

`(6*n+1-n)*A097331(2*n+1)`
-/

namespace A051945.P18253720007538577960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((6 * n + 1 : ℤ) - (n : ℤ)) * A097331 (2 * n + 1)

end

end A051945.P18253720007538577960

namespace A051945

/-- `(6*n+1-n)*A097331(2*n+1)` -/
def P18253720007538577960.Spec : Prop :=
  ∀ n, P18253720007538577960.a n = A051945 n

end A051945

/-! ## A051945.P6584720358867470955

`A051944(n)+A001791(n)`
-/

namespace A051945.P6584720358867470955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051944 n + A001791 n

end

end A051945.P6584720358867470955

namespace A051945

/-- `A051944(n)+A001791(n)` -/
def P6584720358867470955.Spec : Prop :=
  ∀ n, P6584720358867470955.a n = A051945 n

theorem P6584720358867470955.correct : P6584720358867470955.Spec := by
  intro n
  simp only [A051945, Nat.add_sub_cancel, A051945.P6584720358867470955.a, A051945.P12563148972350424108.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A051944, A051944.P8157116428899209073.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051945

/-! ## A051945.P5936678914833076097

`A062561(n)+A001700(n)`
-/

namespace A051945.P5936678914833076097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062561 n + A001700 n

end

end A051945.P5936678914833076097

namespace A051945

/-- `A062561(n)+A001700(n)` -/
def P5936678914833076097.Spec : Prop :=
  ∀ n, P5936678914833076097.a n = A051945 n

end A051945

/-! ## A051945.P9883335613990676603

`A050476(n)-A001791(n)`
-/

namespace A051945.P9883335613990676603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050476 n - A001791 n

end

end A051945.P9883335613990676603

namespace A051945

/-- `A050476(n)-A001791(n)` -/
def P9883335613990676603.Spec : Prop :=
  ∀ n, P9883335613990676603.a n = A051945 n

theorem P9883335613990676603.correct : P9883335613990676603.Spec := by
  intro n
  simp only [A051945, Nat.add_sub_cancel, A051945.P9883335613990676603.a, A051945.P12563148972350424108.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A050476, A050476.P4852240921440524385.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051945

/-! ## A051945.P15318545269224431643

`A053368(n)-A000108(n)`
-/

namespace A051945.P15318545269224431643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053368 n - A000108 n

end

end A051945.P15318545269224431643

namespace A051945

/-- `A053368(n)-A000108(n)` -/
def P15318545269224431643.Spec : Prop :=
  ∀ n, P15318545269224431643.a n = A051945 n

end A051945

/-! ## A051945.P11552740650804880109

`A088218(n+1)+A062561(n)`
-/

namespace A051945.P11552740650804880109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (n + 1) + A062561 n

end

end A051945.P11552740650804880109

namespace A051945

/-- `A088218(n+1)+A062561(n)` -/
def P11552740650804880109.Spec : Prop :=
  ∀ n, P11552740650804880109.a n = A051945 n

end A051945

/-! ## A051945.P888158882638904897

`A162551(n)+A051924(n+1)`
-/

namespace A051945.P888158882638904897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162551 n + A051924 (n + 1)

end

end A051945.P888158882638904897

namespace A051945

/-- `A162551(n)+A051924(n+1)` -/
def P888158882638904897.Spec : Prop :=
  ∀ n, P888158882638904897.a n = A051945 n

end A051945

/-! ## A051945.P11285725735275844508

`A276666(n)+A000984(n+1)`
-/

namespace A051945.P11285725735275844508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276666 n + A000984 (n + 1)

end

end A051945.P11285725735275844508

namespace A051945

/-- `A276666(n)+A000984(n+1)` -/
def P11285725735275844508.Spec : Prop :=
  ∀ n, P11285725735275844508.a n = A051945 n

end A051945

/-! ## A051945.P13754541206283250018

`A128650(n+2)+A000984(n)`
-/

namespace A051945.P13754541206283250018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128650 (n + 2) + A000984 n

end

end A051945.P13754541206283250018

namespace A051945

/-- `A128650(n+2)+A000984(n)` -/
def P13754541206283250018.Spec : Prop :=
  ∀ n, P13754541206283250018.a n = A051945 n

theorem P13754541206283250018.correct : P13754541206283250018.Spec := by
  intro n
  simp only [A051945, Nat.add_sub_cancel, A051945.P13754541206283250018.a, A051945.P12563148972350424108.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A128650, A128650.P16731929856799845103.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051945

/-! ## A051945.P11200526393172832785

`A024482(n+2)-A344191(n)`
-/

namespace A051945.P11200526393172832785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024482 (n + 2) - A344191 n

end

end A051945.P11200526393172832785

namespace A051945

/-- `A024482(n+2)-A344191(n)` -/
def P11200526393172832785.Spec : Prop :=
  ∀ n, P11200526393172832785.a n = A051945 n

end A051945

/-! ## A051945.P9558483163702200129

`A000984(n)+2*A162551(n)`
-/

namespace A051945.P9558483163702200129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + 2 * A162551 n

end

end A051945.P9558483163702200129

namespace A051945

/-- `A000984(n)+2*A162551(n)` -/
def P9558483163702200129.Spec : Prop :=
  ∀ n, P9558483163702200129.a n = A051945 n

theorem P9558483163702200129.correct : P9558483163702200129.Spec := by
  intro n
  simp only [A051945, Nat.add_sub_cancel, A051945.P9558483163702200129.a, A051945.P12563148972350424108.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A162551, A162551.P10524967716150044895.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051945

/-! ## A051945.P9993713711305076863

`4*C(2*n, n+1)+C(2*n, n)`
-/

namespace A051945.P9993713711305076863
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose (2 * n) (n + 1) + Nat.choose (2 * n) n

end

end A051945.P9993713711305076863

namespace A051945

/-- `4*C(2*n, n+1)+C(2*n, n)` -/
def P9993713711305076863.Spec : Prop :=
  ∀ n, (P9993713711305076863.a n : ℤ) = A051945 n

end A051945

/-!
# A051946: Expansion of g.f.: (1+4*x)/(1-x)^7.

The programs for A051946, the canonical program `A051946.P8481104646593850759` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051946 has offset 0).

The definition of A051946 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+4x)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` (program `A051946.P8481104646593850759`, by `A051946.P8481104646593850759.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051946.P8481104646593850759

`ogf((1+4x)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051946

/-- `ogf((1+4x)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P8481104646593850759.Spec : Prop :=
  ∀ n, P8481104646593850759.a n = A051946 n

theorem P8481104646593850759.correct : P8481104646593850759.Spec := by
  intro n
  simp only [A051946]

end A051946

/-! ## A051946.P12684602715062323112

`(5*n+6)*C(n+5, 5)/6`
-/

namespace A051946.P12684602715062323112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * n + 6) * Nat.choose (n + 5) 5 : ℚ) / 6

end

end A051946.P12684602715062323112

namespace A051946

/-- `(5*n+6)*C(n+5, 5)/6` -/
def P12684602715062323112.Spec : Prop :=
  ∀ n, P12684602715062323112.a n = (A051946 n : ℚ)

end A051946

/-! ## A051946.P9609286804084674105

`(n+1)*(n+2)*(n+3)*(n+4)*(n+5)*(5*n+6)/720`
-/

namespace A051946.P9609286804084674105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) * (n + 3) * (n + 4) * (n + 5) * (5 * n + 6) : ℚ) / 720

end

end A051946.P9609286804084674105

namespace A051946

/-- `(n+1)*(n+2)*(n+3)*(n+4)*(n+5)*(5*n+6)/720` -/
def P9609286804084674105.Spec : Prop :=
  ∀ n, P9609286804084674105.a n = (A051946 n : ℚ)

end A051946

/-! ## A051946.P10454498577460226572

`A034264(n+1)`
-/

namespace A051946.P10454498577460226572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034264 (n + 1)

end

end A051946.P10454498577460226572

namespace A051946

/-- `A034264(n+1)` -/
def P10454498577460226572.Spec : Prop :=
  ∀ n, P10454498577460226572.a n = A051946 n

end A051946

/-! ## A051946.P11940493349961586391

`∑[(n+1)*C(n+4, 4)]`
-/

namespace A051946.P11940493349961586391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose (n + 4) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051946.P11940493349961586391

namespace A051946

/-- `∑[(n+1)*C(n+4, 4)]` -/
def P11940493349961586391.Spec : Prop :=
  ∀ n, (P11940493349961586391.a n : ℤ) = A051946 n

end A051946

/-! ## A051946.P14730592239114045065

`∑[∑[∑[∑[∑[a(n-1)+5]]]]]` with `a(0)=1`
-/

namespace A051946.P14730592239114045065
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f5 =>
  f5 (n - 1) + 5

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051946.P14730592239114045065

namespace A051946

/-- `∑[∑[∑[∑[∑[a(n-1)+5]]]]]` -/
def P14730592239114045065.Spec : Prop :=
  ∀ n, (P14730592239114045065.a n : ℤ) = A051946 n

end A051946

/-! ## A051946.P13360065719175459930

`∑[A027800(n)]`
-/

namespace A051946.P13360065719175459930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051946.P13360065719175459930

namespace A051946

/-- `∑[A027800(n)]` -/
def P13360065719175459930.Spec : Prop :=
  ∀ n, P13360065719175459930.a n = A051946 n

end A051946

/-! ## A051946.P10997065332884097175

`A027765(n+4)-A095669(n)`
-/

namespace A051946.P10997065332884097175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027765 (n + 4) - A095669 n

end

end A051946.P10997065332884097175

namespace A051946

/-- `A027765(n+4)-A095669(n)` -/
def P10997065332884097175.Spec : Prop :=
  ∀ n, P10997065332884097175.a n = A051946 n

end A051946

/-! ## A051946.P16304484681510874631

`A253946(n+5)-A096944(n)`
-/

namespace A051946.P16304484681510874631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253946 (n + 5) - A096944 n

end

end A051946.P16304484681510874631

namespace A051946

/-- `A253946(n+5)-A096944(n)` -/
def P16304484681510874631.Spec : Prop :=
  ∀ n, P16304484681510874631.a n = A051946 n

end A051946

/-! ## A051946.P10558348210444405866

`2*A253943(n+5)-A096944(n)`
-/

namespace A051946.P10558348210444405866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A253943 (n + 5) - A096944 n

end

end A051946.P10558348210444405866

namespace A051946

/-- `2*A253943(n+5)-A096944(n)` -/
def P10558348210444405866.Spec : Prop :=
  ∀ n, P10558348210444405866.a n = A051946 n

end A051946

/-! ## A051946.P6791069608968855830

`A027790(n+2)%A112459(n+3)`
-/

namespace A051946.P6791069608968855830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027790 (n + 2)) (A112459 (n + 3))

end

end A051946.P6791069608968855830

namespace A051946

/-- `A027790(n+2)%A112459(n+3)` -/
def P6791069608968855830.Spec : Prop :=
  ∀ n, P6791069608968855830.a n = A051946 n

end A051946

/-! ## A051946.P16668243959076098080

`A006542(n+4)+∑[∑[A000292(n)]]`
-/

namespace A051946.P16668243959076098080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006542 (n + 4) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051946.P16668243959076098080

namespace A051946

/-- `A006542(n+4)+∑[∑[A000292(n)]]` -/
def P16668243959076098080.Spec : Prop :=
  ∀ n, P16668243959076098080.a n = A051946 n

end A051946

/-! ## A051946.P2959948546999641741

`A006542(n+4)+A271567(n)-A056118(n)`
-/

namespace A051946.P2959948546999641741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006542 (n + 4) + (A271567 n - A056118 n)

end

end A051946.P2959948546999641741

namespace A051946

/-- `A006542(n+4)+A271567(n)-A056118(n)` -/
def P2959948546999641741.Spec : Prop :=
  ∀ n, P2959948546999641741.a n = A051946 n

end A051946

/-! ## A051946.P2112330717108894771

`record[A034264(abs(1-n))]`
-/

namespace A051946.P2112330717108894771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034264 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051946.P2112330717108894771

namespace A051946

/-- `record[A034264(abs(1-n))]` -/
def P2112330717108894771.Spec : Prop :=
  ∀ n, P2112330717108894771.a n = A051946 n

end A051946

/-! ## A051946.P14192790754772719467

`∑[∑[A002418(n+1)]]`
-/

namespace A051946.P14192790754772719467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002418 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051946.P14192790754772719467

namespace A051946

/-- `∑[∑[A002418(n+1)]]` -/
def P14192790754772719467.Spec : Prop :=
  ∀ n, P14192790754772719467.a n = A051946 n

end A051946

/-! ## A051946.P16922396832025527632

`∑[A085284(n+1)/(n+1)]`
-/

namespace A051946.P16922396832025527632
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085284 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051946.P16922396832025527632

namespace A051946

/-- `∑[A085284(n+1)/(n+1)]` -/
def P16922396832025527632.Spec : Prop :=
  ∀ n, P16922396832025527632.a n = (A051946 n : ℚ)

end A051946

/-! ## A051946.P3186856781093548779

`A256860(n+2)-A257200(n+2)`
-/

namespace A051946.P3186856781093548779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256860 (n + 2) - A257200 (n + 2)

end

end A051946.P3186856781093548779

namespace A051946

/-- `A256860(n+2)-A257200(n+2)` -/
def P3186856781093548779.Spec : Prop :=
  ∀ n, P3186856781093548779.a n = A051946 n

end A051946

/-! ## A051946.P11505261911013496111

`A006542(n+5)-A034263(n+1)`
-/

namespace A051946.P11505261911013496111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006542 (n + 5) - A034263 (n + 1)

end

end A051946.P11505261911013496111

namespace A051946

/-- `A006542(n+5)-A034263(n+1)` -/
def P11505261911013496111.Spec : Prop :=
  ∀ n, P11505261911013496111.a n = A051946 n

end A051946

/-! ## A051946.P17277337337151070304

`A050484(n+1)-(A050484(n)+A027800(n+1))`
-/

namespace A051946.P17277337337151070304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050484 (n + 1) - (A050484 n + A027800 (n + 1))

end

end A051946.P17277337337151070304

namespace A051946

/-- `A050484(n+1)-(A050484(n)+A027800(n+1))` -/
def P17277337337151070304.Spec : Prop :=
  ∀ n, P17277337337151070304.a n = A051946 n

end A051946

/-! ## A051946.P17976071453574182224

`∑[∑[A287143(2*n+1)]]`
-/

namespace A051946.P17976071453574182224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287143 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051946.P17976071453574182224

namespace A051946

/-- `∑[∑[A287143(2*n+1)]]` -/
def P17976071453574182224.Spec : Prop :=
  ∀ n, P17976071453574182224.a n = A051946 n

end A051946

/-!
# A051947: Partial sums of A034263.

The programs for A051947, the canonical program `A051947.P3155700380476815874` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051947 has offset 0).

The definition of A051947 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051947.P3155700380476815874

`C(n+5, 5)*(2*n+3)/3`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051947

/-- `C(n+5, 5)*(2*n+3)/3` -/
def P3155700380476815874.Spec : Prop :=
  ∀ n, P3155700380476815874.a n = (A051947 n : ℚ)

end A051947

/-! ## A051947.P16339056611166132582

`∑[∑[∑[∑[∑[4*n+1]]]]]`
-/

namespace A051947.P16339056611166132582
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051947.P16339056611166132582

namespace A051947

/-- `∑[∑[∑[∑[∑[4*n+1]]]]]` -/
def P16339056611166132582.Spec : Prop :=
  ∀ n, (P16339056611166132582.a n : ℤ) = A051947 n

end A051947

/-! ## A051947.P3958790085836637434

`3*C(n+5, 6)+C(n+6, 6)`
-/

namespace A051947.P3958790085836637434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (n + 5) 6 + Nat.choose (n + 6) 6

end

end A051947.P3958790085836637434

namespace A051947

/-- `3*C(n+5, 6)+C(n+6, 6)` -/
def P3958790085836637434.Spec : Prop :=
  ∀ n, (P3958790085836637434.a n : ℤ) = A051947 n

end A051947

/-! ## A051947.P6701184502231511784

`floor(∑[∑[∑[∑[∑[a(n-1)+4]]]]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A051947.P6701184502231511784
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f5 =>
  f5 (n - 1) + 4

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051947.P6701184502231511784

namespace A051947

/-- `floor(∑[∑[∑[∑[∑[a(n-1)+4]]]]])` -/
def P6701184502231511784.Spec : Prop :=
  ∀ n, (P6701184502231511784.a n : ℤ) = A051947 n

end A051947

/-! ## A051947.P15036572047065172411

`∑[∑[∑[∑[a(n-1)+4]]]]+a(n-1)` with `a(0)=1`
-/

namespace A051947.P15036572047065172411
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f4 =>
  f4 (n - 1) + 4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A051947.P15036572047065172411

namespace A051947

/-- `∑[∑[∑[∑[a(n-1)+4]]]]+a(n-1)` -/
def P15036572047065172411.Spec : Prop :=
  ∀ n, (P15036572047065172411.a n : ℤ) = A051947 n

end A051947

/-! ## A051947.P11961328639501706407

`or(∑[A034263(n)], char[2])`
-/

namespace A051947.P11961328639501706407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034263 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A051947.P11961328639501706407

namespace A051947

/-- `or(∑[A034263(n)], char[2])` -/
def P11961328639501706407.Spec : Prop :=
  ∀ n, P11961328639501706407.a n = A051947 n

end A051947

/-! ## A051947.P17754423191511081560

`2/(n+2)*A108681(n)`
-/

namespace A051947.P17754423191511081560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 2 : ℚ) * (A108681 n : ℚ)

end

end A051947.P17754423191511081560

namespace A051947

/-- `2/(n+2)*A108681(n)` -/
def P17754423191511081560.Spec : Prop :=
  ∀ n, P17754423191511081560.a n = (A051947 n : ℚ)

end A051947

/-! ## A051947.P12614719908494610897

`∑[A002417(n+1)]+a(n-1)` with `a(0)=1`
-/

namespace A051947.P12614719908494610897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A051947.P12614719908494610897

namespace A051947

/-- `∑[A002417(n+1)]+a(n-1)` -/
def P12614719908494610897.Spec : Prop :=
  ∀ n, P12614719908494610897.a n = A051947 n

end A051947

/-! ## A051947.P5982688287915944699

`A259181(n)+A006414(n)`
-/

namespace A051947.P5982688287915944699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259181 n + A006414 n

end

end A051947.P5982688287915944699

namespace A051947

/-- `A259181(n)+A006414(n)` -/
def P5982688287915944699.Spec : Prop :=
  ∀ n, P5982688287915944699.a n = A051947 n

end A051947

/-! ## A051947.P4659829028493932226

`2*A114243(n)-A108683(n)`
-/

namespace A051947.P4659829028493932226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A114243 n - A108683 n

end

end A051947.P4659829028493932226

namespace A051947

/-- `2*A114243(n)-A108683(n)` -/
def P4659829028493932226.Spec : Prop :=
  ∀ n, P4659829028493932226.a n = A051947 n

end A051947

/-! ## A051947.P13395188119167463529

`∑[A034263(n)]%A001919(n+3)`
-/

namespace A051947.P13395188119167463529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A001919 (n + 3))

end

end A051947.P13395188119167463529

namespace A051947

/-- `∑[A034263(n)]%A001919(n+3)` -/
def P13395188119167463529.Spec : Prop :=
  ∀ n, P13395188119167463529.a n = A051947 n

end A051947

/-! ## A051947.P7969897933811741127

`A112459(n+3)-A005584(n+1)`
-/

namespace A051947.P7969897933811741127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112459 (n + 3) - A005584 (n + 1)

end

end A051947.P7969897933811741127

namespace A051947

/-- `A112459(n+3)-A005584(n+1)` -/
def P7969897933811741127.Spec : Prop :=
  ∀ n, P7969897933811741127.a n = A051947 n

end A051947

/-! ## A051947.P11778310702212550180

`A027765(n+4)-2*A005584(n+1)`
-/

namespace A051947.P11778310702212550180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027765 (n + 4) - 2 * A005584 (n + 1)

end

end A051947.P11778310702212550180

namespace A051947

/-- `A027765(n+4)-2*A005584(n+1)` -/
def P11778310702212550180.Spec : Prop :=
  ∀ n, P11778310702212550180.a n = A051947 n

end A051947

/-! ## A051947.P16692067535053610611

`2*A006542(n+4)-A213563(n+1)`
-/

namespace A051947.P16692067535053610611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006542 (n + 4) - A213563 (n + 1)

end

end A051947.P16692067535053610611

namespace A051947

/-- `2*A006542(n+4)-A213563(n+1)` -/
def P16692067535053610611.Spec : Prop :=
  ∀ n, P16692067535053610611.a n = A051947 n

end A051947

/-! ## A051947.P8705473359173221107

`2*A112459(n+3)-A027765(n+4)`
-/

namespace A051947.P8705473359173221107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112459 (n + 3) - A027765 (n + 4)

end

end A051947.P8705473359173221107

namespace A051947

/-- `2*A112459(n+3)-A027765(n+4)` -/
def P8705473359173221107.Spec : Prop :=
  ∀ n, P8705473359173221107.a n = A051947 n

end A051947

/-! ## A051947.P16758001006340461265

`A005716(n+4)+A096945(n)-∑[A096945(n)]`
-/

namespace A051947.P16758001006340461265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005716 (n + 4) + (A096945 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051947.P16758001006340461265

namespace A051947

/-- `A005716(n+4)+A096945(n)-∑[A096945(n)]` -/
def P16758001006340461265.Spec : Prop :=
  ∀ n, P16758001006340461265.a n = A051947 n

end A051947

/-! ## A051947.P15907721226602817130

`A050483(n+1)-(A050483(n)+A034263(n+1))`
-/

namespace A051947.P15907721226602817130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050483 (n + 1) - (A050483 n + A034263 (n + 1))

end

end A051947.P15907721226602817130

namespace A051947

/-- `A050483(n+1)-(A050483(n)+A034263(n+1))` -/
def P15907721226602817130.Spec : Prop :=
  ∀ n, P15907721226602817130.a n = A051947 n

end A051947

/-! ## A051947.P9589315299286794638

`A005585(n+1)+A101094(n+1)-A040977(n)`
-/

namespace A051947.P9589315299286794638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005585 (n + 1) + (A101094 (n + 1) - A040977 n)

end

end A051947.P9589315299286794638

namespace A051947

/-- `A005585(n+1)+A101094(n+1)-A040977(n)` -/
def P9589315299286794638.Spec : Prop :=
  ∀ n, P9589315299286794638.a n = A051947 n

end A051947

/-! ## A051947.P12975158768763768803

`A000330(n+1)*A047819(n)/A006542(n+4)`
-/

namespace A051947.P12975158768763768803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000330 (n + 1) * A047819 n : ℚ) / (A006542 (n + 4) : ℚ)

end

end A051947.P12975158768763768803

namespace A051947

/-- `A000330(n+1)*A047819(n)/A006542(n+4)` -/
def P12975158768763768803.Spec : Prop :=
  ∀ n, P12975158768763768803.a n = (A051947 n : ℚ)

end A051947

/-! ## A051947.P9345459597168424175

`2*A040977(n+1)-A006470(n+2)`
-/

namespace A051947.P9345459597168424175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040977 (n + 1) - A006470 (n + 2)

end

end A051947.P9345459597168424175

namespace A051947

/-- `2*A040977(n+1)-A006470(n+2)` -/
def P9345459597168424175.Spec : Prop :=
  ∀ n, P9345459597168424175.a n = A051947 n

end A051947

/-!
# A051948: Numbers k such that k*sigma(k) == 2 (mod phi(k)).

The programs for A051948, there is no canonical definition to state claims against.
-/

/-! ## A051948.P13216360351985705421

`eq[A042961(A072480(n)), A097325(n)]`
-/

namespace A051948.P13216360351985705421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042961 (A072480 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051948.P13216360351985705421

/-! ## A051948.P7972684134729975945

`eq[A105700(n), A337908(A008706(n))]`
-/

namespace A051948.P7972684134729975945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337908 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051948.P7972684134729975945

/-! ## A051948.P9117942020194664680

`eq[A258854(A142150(n)), A292438(n)]`
-/

namespace A051948.P9117942020194664680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258854 (A142150 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051948.P9117942020194664680

/-! ## A051948.P1768711857070250922

`eq[A011373(A020639(n+1)), A175126(n)]`
-/

namespace A051948.P1768711857070250922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011373 (A020639 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051948.P1768711857070250922

/-! ## A051948.P2183136294727132091

`eq[A106244(A003415(n)), A175126(n)]`
-/

namespace A051948.P2183136294727132091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106244 (A003415 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051948.P2183136294727132091

/-! ## A051948.P2773475901259162743

`eq[A093391(A003415(n)), A292438(n)]`
-/

namespace A051948.P2773475901259162743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093391 (A003415 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051948.P2773475901259162743

/-! ## A051948.P17412586556228905506

`eq[A002265(A003415(n))², A325142(n)]`
-/

namespace A051948.P17412586556228905506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A003415 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051948.P17412586556228905506

/-! ## A051948.P3823838656328278474

`eq[A104725(A119655(n)), A143862(n)]`
-/

namespace A051948.P3823838656328278474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 (A119655 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143862 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051948.P3823838656328278474

/-! ## A051948.P18017320292071824987

`∪[A064690(n+1), A137922(n+1)]`
-/

namespace A051948.P18017320292071824987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051948.P18017320292071824987

/-! ## A051948.P905539907526240598

`∪[A078419(n+1), A137922(n+1)]`
-/

namespace A051948.P905539907526240598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051948.P905539907526240598

/-!
# A051949: Differences of two factorial numbers.

The programs for A051949, the canonical program `A051949.P14237255743979375876` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051949 has offset 0).

The definition of A051949 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2347 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051949.P597573766788743957

`record[A002262(n)!-A155170(n)]`
-/

namespace A051949.P597573766788743957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) - A155170 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051949.P597573766788743957

namespace A051949

/-- `record[A002262(n)!-A155170(n)]` -/
def P597573766788743957.Spec : Prop :=
  ∀ n, P597573766788743957.a n = A051949 n

end A051949

/-! ## A051949.P14237255743979375876

`record[A003056(n)!-A025581(n)!]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A051949

/-- `record[A003056(n)!-A025581(n)!]` -/
def P14237255743979375876.Spec : Prop :=
  ∀ n, P14237255743979375876.a n = A051949 n

theorem P14237255743979375876.correct : P14237255743979375876.Spec := by
  intro n
  simp only [A051949]

end A051949

/-! ## A051949.P280353643026850656

`record[A081123(A000267(n))-A053615(n)!]`
-/

namespace A051949.P280353643026850656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (A000267 n).toNat - (Nat.factorial (A053615 n).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051949.P280353643026850656

namespace A051949

/-- `record[A081123(A000267(n))-A053615(n)!]` -/
def P280353643026850656.Spec : Prop :=
  ∀ n, P280353643026850656.a n = A051949 n

end A051949

/-! ## A051949.P8308092839536506570

`record[A003056(n)!-A004736(n+1)!]`
-/

namespace A051949.P8308092839536506570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A003056 n).toNat : ℤ) - (Nat.factorial (A004736 (n + 1)).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051949.P8308092839536506570

namespace A051949

/-- `record[A003056(n)!-A004736(n+1)!]` -/
def P8308092839536506570.Spec : Prop :=
  ∀ n, P8308092839536506570.a n = A051949 n

end A051949

/-! ## A051949.P5133473858967044819

`record[A137260(A038722(n+1))/A004736(n+1)]`
-/

namespace A051949.P5133473858967044819
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137260 (A038722 (n + 1)).toNat : ℚ) / (A004736 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051949.P5133473858967044819

namespace A051949

/-- `record[A137260(A038722(n+1))/A004736(n+1)]` -/
def P5133473858967044819.Spec : Prop :=
  ∀ n, P5133473858967044819.a n = (A051949 n : ℚ)

end A051949

/-! ## A051949.P8879708663531057173

`A276091(record[A073138(n)])`
-/

namespace A051949.P8879708663531057173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276091 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A051949.P8879708663531057173

namespace A051949

/-- `A276091(record[A073138(n)])` -/
def P8879708663531057173.Spec : Prop :=
  ∀ n, P8879708663531057173.a n = A051949 n

end A051949

/-! ## A051949.P12566826852896299533

`A276091(record[A256999(n)])`
-/

namespace A051949.P12566826852896299533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276091 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A051949.P12566826852896299533

namespace A051949

/-- `A276091(record[A256999(n)])` -/
def P12566826852896299533.Spec : Prop :=
  ∀ n, P12566826852896299533.a n = A051949 n

end A051949

/-! ## A051949.P8826331781004296789

`A276091(A023758(n+1))`
-/

namespace A051949.P8826331781004296789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276091 (A023758 (n + 1)).toNat

end

end A051949.P8826331781004296789

namespace A051949

/-- `A276091(A023758(n+1))` -/
def P8826331781004296789.Spec : Prop :=
  ∀ n, P8826331781004296789.a n = A051949 n

end A051949

/-! ## A051949.P18412786559447199428

`A276091(record[A257697(n)])`
-/

namespace A051949.P18412786559447199428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276091 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A051949.P18412786559447199428

namespace A051949

/-- `A276091(record[A257697(n)])` -/
def P18412786559447199428.Spec : Prop :=
  ∀ n, P18412786559447199428.a n = A051949 n

end A051949

/-! ## A051949.P14276933901615662033

`record[A276081(2*n)-A276081(n)]`
-/

namespace A051949.P14276933901615662033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276081 (2 * n) - A276081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051949.P14276933901615662033

namespace A051949

/-- `record[A276081(2*n)-A276081(n)]` -/
def P14276933901615662033.Spec : Prop :=
  ∀ n, P14276933901615662033.a n = A051949 n

end A051949

/-!
# A051950: Differences between values of tau(n) (A000005): a(n) = tau(n)-tau(n-1).

The programs for A051950, the canonical program `A051950.P1558606958145203364` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051950 has offset 2).

The definition of A051950 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+2)-A000005(n+1)` (program `A051950.P1558606958145203364`, by `A051950.P1558606958145203364.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051950.P1558606958145203364

`A000005(n+2)-A000005(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A051950

/-- `A000005(n+2)-A000005(n+1)` -/
def P1558606958145203364.Spec : Prop :=
  ∀ n, P1558606958145203364.a n = A051950 (n + 2)

theorem P1558606958145203364.correct : P1558606958145203364.Spec := by
  intro n
  simp only [A051950, Nat.add_sub_cancel]

end A051950

/-! ## A051950.P7496104432395686767

`∑[A051951(n)]+1`
-/

namespace A051950.P7496104432395686767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A051950.P7496104432395686767

namespace A051950

/-- `∑[A051951(n)]+1` -/
def P7496104432395686767.Spec : Prop :=
  ∀ n, P7496104432395686767.a n = A051950 (n + 2)

end A051950

/-! ## A051950.P15209477196846008894

`Δ[A000005(n+1)]`
-/

namespace A051950.P15209477196846008894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051950.P15209477196846008894

namespace A051950

/-- `Δ[A000005(n+1)]` -/
def P15209477196846008894.Spec : Prop :=
  ∀ n, P15209477196846008894.a n = A051950 (n + 2)

theorem P15209477196846008894.correct : P15209477196846008894.Spec := by
  intro n
  simp only [A051950, Nat.add_sub_cancel, A051950.P15209477196846008894.f1, A051950.P15209477196846008894.a, A051950.P1558606958145203364.a, SequenceMachineLib.memo_apply]

end A051950

/-! ## A051950.P15860133389138134647

`Δ[-A378216(n+1)]`
-/

namespace A051950.P15860133389138134647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A378216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051950.P15860133389138134647

namespace A051950

/-- `Δ[-A378216(n+1)]` -/
def P15860133389138134647.Spec : Prop :=
  ∀ n, P15860133389138134647.a n = A051950 (n + 2)

theorem P15860133389138134647.correct : P15860133389138134647.Spec := by
  intro n
  simp only [A051950, Nat.add_sub_cancel, A051950.P15860133389138134647.f1, A051950.P15860133389138134647.a, A051950.P1558606958145203364.a, A000005, A000005.P16091521709108585461.a, A378216, A378216.P4619166357507459087.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051950

/-! ## A051950.P14711924742226859684

`Δ[A320111(2*(n+1))]`
-/

namespace A051950.P14711924742226859684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051950.P14711924742226859684

namespace A051950

/-- `Δ[A320111(2*(n+1))]` -/
def P14711924742226859684.Spec : Prop :=
  ∀ n, P14711924742226859684.a n = A051950 (n + 2)

end A051950

/-! ## A051950.P3499380890835332449

`Δ[A338117(2*(n+1))]`
-/

namespace A051950.P3499380890835332449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338117 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051950.P3499380890835332449

namespace A051950

/-- `Δ[A338117(2*(n+1))]` -/
def P3499380890835332449.Spec : Prop :=
  ∀ n, P3499380890835332449.a n = A051950 (n + 2)

end A051950

/-! ## A051950.P2008066045246055258

`2*Δ[A000005(2*n-(n-1))/2]`
-/

namespace A051950.P2008066045246055258
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A051950.P2008066045246055258

namespace A051950

/-- `2*Δ[A000005(2*n-(n-1))/2]` -/
def P2008066045246055258.Spec : Prop :=
  ∀ n, P2008066045246055258.a n = (A051950 (n + 2) : ℚ)

end A051950

/-! ## A051950.P16006166396722795298

`A341062(n+1)+A051951(n)`
-/

namespace A051950.P16006166396722795298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341062 (n + 1) + A051951 n

end

end A051950.P16006166396722795298

namespace A051950

/-- `A341062(n+1)+A051951(n)` -/
def P16006166396722795298.Spec : Prop :=
  ∀ n, P16006166396722795298.a n = A051950 (n + 2)

end A051950

/-! ## A051950.P5944720362778094106

`Δ[A006218(n+1)-A006218(n)]`
-/

namespace A051950.P5944720362778094106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) - A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051950.P5944720362778094106

namespace A051950

/-- `Δ[A006218(n+1)-A006218(n)]` -/
def P5944720362778094106.Spec : Prop :=
  ∀ n, P5944720362778094106.a n = A051950 (n + 2)

end A051950

/-! ## A051950.P5918456651039735119

`A092405(n+1)-A062011(n+1)`
-/

namespace A051950.P5918456651039735119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092405 (n + 1) - A062011 (n + 1)

end

end A051950.P5918456651039735119

namespace A051950

/-- `A092405(n+1)-A062011(n+1)` -/
def P5918456651039735119.Spec : Prop :=
  ∀ n, P5918456651039735119.a n = A051950 (n + 2)

theorem P5918456651039735119.correct : P5918456651039735119.Spec := by
  intro n
  simp only [A051950, Nat.add_sub_cancel, A051950.P5918456651039735119.a, A051950.P1558606958145203364.a, A000005, A000005.P16091521709108585461.a, A062011, A062011.P17525320077853469406.a, A092405, A092405.P13454232516479669845.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051950

/-! ## A051950.P9983722605894072753

`A378216(n+1)-A378216(n+2)`
-/

namespace A051950.P9983722605894072753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378216 (n + 1) - A378216 (n + 2)

end

end A051950.P9983722605894072753

namespace A051950

/-- `A378216(n+1)-A378216(n+2)` -/
def P9983722605894072753.Spec : Prop :=
  ∀ n, P9983722605894072753.a n = A051950 (n + 2)

theorem P9983722605894072753.correct : P9983722605894072753.Spec := by
  intro n
  simp only [A051950, Nat.add_sub_cancel, A051950.P9983722605894072753.a, A051950.P1558606958145203364.a, A000005, A000005.P16091521709108585461.a, A378216, A378216.P4619166357507459087.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051950

/-! ## A051950.P14152332106876614401

`Δ[A353362(n+1)+A353361(n+1)]`
-/

namespace A051950.P14152332106876614401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353362 (n + 1) + A353361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051950.P14152332106876614401

namespace A051950

/-- `Δ[A353362(n+1)+A353361(n+1)]` -/
def P14152332106876614401.Spec : Prop :=
  ∀ n, P14152332106876614401.a n = A051950 (n + 2)

theorem P14152332106876614401.correct : P14152332106876614401.Spec := by
  intro n
  simp only [A051950, Nat.add_sub_cancel, A051950.P14152332106876614401.f1, A051950.P14152332106876614401.a, A051950.P1558606958145203364.a, A000005, A000005.P16091521709108585461.a, A353361, A353361.P1809669952894249071.f1, A353361.P1809669952894249071.a, A353362, A353362.P16534089322779185243.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A332814, A332814.P5107622216486189293.a, A102283, A102283.P18218274576938374007.a, A156552, A156552.P4268073137713085227.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051950

/-! ## A051950.P12401780453314115476

`A320111(2*(n+2))-A320111(2*(n+1))`
-/

namespace A051950.P12401780453314115476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * (n + 2)) - A320111 (2 * (n + 1))

end

end A051950.P12401780453314115476

namespace A051950

/-- `A320111(2*(n+2))-A320111(2*(n+1))` -/
def P12401780453314115476.Spec : Prop :=
  ∀ n, P12401780453314115476.a n = A051950 (n + 2)

end A051950

/-! ## A051950.P16134782881932184882

`A338117(2*(n+2))-A338117(2*(n+1))`
-/

namespace A051950.P16134782881932184882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338117 (2 * (n + 2)) - A338117 (2 * (n + 1))

end

end A051950.P16134782881932184882

namespace A051950

/-- `A338117(2*(n+2))-A338117(2*(n+1))` -/
def P16134782881932184882.Spec : Prop :=
  ∀ n, P16134782881932184882.a n = A051950 (n + 2)

end A051950

/-! ## A051950.P14651405261070560688

`A334112(n+1)+A332902(n+2)-A334112(n+2)`
-/

namespace A051950.P14651405261070560688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334112 (n + 1) + (A332902 (n + 2) - A334112 (n + 2))

end

end A051950.P14651405261070560688

namespace A051950

/-- `A334112(n+1)+A332902(n+2)-A334112(n+2)` -/
def P14651405261070560688.Spec : Prop :=
  ∀ n, P14651405261070560688.a n = A051950 (n + 2)

end A051950

/-! ## A051950.P8402926408367518846

`A182394(n+2)+A130632(n+1)*A182394(n+2)`
-/

namespace A051950.P8402926408367518846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182394 (n + 2) + A130632 (n + 1) * A182394 (n + 2)

end

end A051950.P8402926408367518846

namespace A051950

/-- `A182394(n+2)+A130632(n+1)*A182394(n+2)` -/
def P8402926408367518846.Spec : Prop :=
  ∀ n, P8402926408367518846.a n = A051950 (n + 2)

end A051950

/-! ## A051950.P14002779082194256335

`Δ[∏{e}[n+1, #+1]]`
-/

namespace A051950.P14002779082194256335
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A051950.P14002779082194256335

namespace A051950

/-- `Δ[∏{e}[n+1, #+1]]` -/
def P14002779082194256335.Spec : Prop :=
  ∀ n, P14002779082194256335.a n = A051950 (n + 2)

theorem P14002779082194256335.correct : P14002779082194256335.Spec := by
  intro n
  simp only [A051950, Nat.add_sub_cancel, A051950.P14002779082194256335.f2, A051950.P14002779082194256335.f1, A051950.P14002779082194256335.a, A051950.P1558606958145203364.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051950

/-! ## A051950.P6064874282807009647

`Δ[∑{d}[n+1, gcd(n, #)]]`
-/

namespace A051950.P6064874282807009647
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.gcd n d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A051950.P6064874282807009647

namespace A051950

/-- `Δ[∑{d}[n+1, gcd(n, #)]]` -/
def P6064874282807009647.Spec : Prop :=
  ∀ n, P6064874282807009647.a n = A051950 (n + 2)

end A051950

/-! ## A051950.P4167950477084718168

`Δ[∑{d}[n+1, floor(atan(#))]]`
-/

namespace A051950.P4167950477084718168
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌊Real.arctan (d : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051950.P4167950477084718168

namespace A051950

/-- `Δ[∑{d}[n+1, floor(atan(#))]]` -/
def P4167950477084718168.Spec : Prop :=
  ∀ n, P4167950477084718168.a n = A051950 (n + 2)

end A051950

/-! ## A051950.P9719794668888577194

`Δ[∑{d}[n+1, ceil(acot(#))]]`
-/

namespace A051950.P9719794668888577194
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051950.P9719794668888577194

namespace A051950

/-- `Δ[∑{d}[n+1, ceil(acot(#))]]` -/
def P9719794668888577194.Spec : Prop :=
  ∀ n, P9719794668888577194.a n = A051950 (n + 2)

end A051950

/-!
# A051951: Second differences of tau(n).

The programs for A051951, the canonical program `A051951.P11397954646157849919` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051951 has offset 0).

The definition of A051951 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051951.P11397954646157849919

`Δ[A051950(A028310(n)+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A051951

/-- `Δ[A051950(A028310(n)+1)]` -/
def P11397954646157849919.Spec : Prop :=
  ∀ n, P11397954646157849919.a n = A051951 n

theorem P11397954646157849919.correct : P11397954646157849919.Spec := by
  intro n
  simp only [A051951]

end A051951

/-! ## A051951.P3488693268344548255

`A051950(n+2)-A341062(n+1)`
-/

namespace A051951.P3488693268344548255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (n + 2) - A341062 (n + 1)

end

end A051951.P3488693268344548255

namespace A051951

/-- `A051950(n+2)-A341062(n+1)` -/
def P3488693268344548255.Spec : Prop :=
  ∀ n, P3488693268344548255.a n = A051951 n

end A051951

/-! ## A051951.P12391503240140963884

`Δ[A000005(n+1)-A032741(n)]%(n+1)`
-/

namespace A051951.P12391503240140963884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)

end

end A051951.P12391503240140963884

namespace A051951

/-- `Δ[A000005(n+1)-A032741(n)]%(n+1)` -/
def P12391503240140963884.Spec : Prop :=
  ∀ n, P12391503240140963884.a n = A051951 n

end A051951

/-! ## A051951.P11009059250306363874

`Δ[A341062(n+1)]`
-/

namespace A051951.P11009059250306363874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051951.P11009059250306363874

namespace A051951

/-- `Δ[A341062(n+1)]` -/
def P11009059250306363874.Spec : Prop :=
  ∀ n, P11009059250306363874.a n = A051951 n

end A051951

/-! ## A051951.P11160788480660290013

`Δ[Δ[A000005(gcd(n, n*a(n-1)))]]` with `a(0)=0`
-/

namespace A051951.P11160788480660290013
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000005 (Int.gcd (n : ℤ) ((n : ℤ) * f2 (n - 1)))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051951.P11160788480660290013

namespace A051951

/-- `Δ[Δ[A000005(gcd(n, n*a(n-1)))]]` -/
def P11160788480660290013.Spec : Prop :=
  ∀ n, P11160788480660290013.a n = A051951 n

end A051951

/-! ## A051951.P2396909208610748586

`Δ[A000007(n)+Δ[A032741(n)]]`
-/

namespace A051951.P2396909208610748586
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051951.P2396909208610748586

namespace A051951

/-- `Δ[A000007(n)+Δ[A032741(n)]]` -/
def P2396909208610748586.Spec : Prop :=
  ∀ n, P2396909208610748586.a n = A051951 n

end A051951

/-! ## A051951.P3480925253752498848

`Δ[Δ[A032741(n)]-A057427(n)]`
-/

namespace A051951.P3480925253752498848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051951.P3480925253752498848

namespace A051951

/-- `Δ[Δ[A032741(n)]-A057427(n)]` -/
def P3480925253752498848.Spec : Prop :=
  ∀ n, P3480925253752498848.a n = A051951 n

end A051951

/-! ## A051951.P2956539537593691086

`Δ[A070824(n+1)-A032741(n)]`
-/

namespace A051951.P2956539537593691086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 1) - A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051951.P2956539537593691086

namespace A051951

/-- `Δ[A070824(n+1)-A032741(n)]` -/
def P2956539537593691086.Spec : Prop :=
  ∀ n, P2956539537593691086.a n = A051951 n

end A051951

/-! ## A051951.P8821643232737600960

`A341062(n+2)-A341062(n+1)`
-/

namespace A051951.P8821643232737600960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341062 (n + 2) - A341062 (n + 1)

end

end A051951.P8821643232737600960

namespace A051951

/-- `A341062(n+2)-A341062(n+1)` -/
def P8821643232737600960.Spec : Prop :=
  ∀ n, P8821643232737600960.a n = A051951 n

end A051951

/-! ## A051951.P11044459629793453993

`Δ[Δ[A032741(n)]-A157532(n+1)]`
-/

namespace A051951.P11044459629793453993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A157532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051951.P11044459629793453993

namespace A051951

/-- `Δ[Δ[A032741(n)]-A157532(n+1)]` -/
def P11044459629793453993.Spec : Prop :=
  ∀ n, P11044459629793453993.a n = A051951 n

end A051951

/-! ## A051951.P265427098152136526

`Δ[A032741(n+1)-A032741(n)]%(n+1)`
-/

namespace A051951.P265427098152136526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) - A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)

end

end A051951.P265427098152136526

namespace A051951

/-- `Δ[A032741(n+1)-A032741(n)]%(n+1)` -/
def P265427098152136526.Spec : Prop :=
  ∀ n, P265427098152136526.a n = A051951 n

end A051951

/-! ## A051951.P17533997123573207718

`Δ[A070824(n+1)-ceil(A168014(n)/(n+1))]`
-/

namespace A051951.P17533997123573207718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 1) - ⌈(A168014 n : ℚ) / (n + 1 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051951.P17533997123573207718

namespace A051951

/-- `Δ[A070824(n+1)-ceil(A168014(n)/(n+1))]` -/
def P17533997123573207718.Spec : Prop :=
  ∀ n, P17533997123573207718.a n = A051951 n

end A051951

/-! ## A051951.P1985742710194366171

`Δ[A070824(n+1)-(A000005((n-1)%(n+1)+1)-1)]`
-/

namespace A051951.P1985742710194366171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 1) - (A000005 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) + 1).toNat - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051951.P1985742710194366171

namespace A051951

/-- `Δ[A070824(n+1)-(A000005((n-1)%(n+1)+1)-1)]` -/
def P1985742710194366171.Spec : Prop :=
  ∀ n, P1985742710194366171.a n = A051951 n

end A051951

/-! ## A051951.P5782310240259516684

`Δ[A070824(n+1)-A000005(A028310(n))]`
-/

namespace A051951.P5782310240259516684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 1) - A000005 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051951.P5782310240259516684

namespace A051951

/-- `Δ[A070824(n+1)-A000005(A028310(n))]` -/
def P5782310240259516684.Spec : Prop :=
  ∀ n, P5782310240259516684.a n = A051951 n

end A051951

/-! ## A051951.P9301626357658508974

`Δ[A070824(n+1)-(A000005(A000007(n)+n)-1)]`
-/

namespace A051951.P9301626357658508974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 1) - (A000005 (A000007 n + (n : ℤ)).toNat - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051951.P9301626357658508974

namespace A051951

/-- `Δ[A070824(n+1)-(A000005(A000007(n)+n)-1)]` -/
def P9301626357658508974.Spec : Prop :=
  ∀ n, P9301626357658508974.a n = A051951 n

end A051951

/-! ## A051951.P9294565122830150241

`Δ[Δ[∑{d}[n, ceil(acot(#))]]]`
-/

namespace A051951.P9294565122830150241
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051951.P9294565122830150241

namespace A051951

/-- `Δ[Δ[∑{d}[n, ceil(acot(#))]]]` -/
def P9294565122830150241.Spec : Prop :=
  ∀ n, P9294565122830150241.a n = A051951 n

end A051951

/-! ## A051951.P12716115375258539971

`Δ[Δ[A277692(2*n+1)]]`
-/

namespace A051951.P12716115375258539971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051951.P12716115375258539971

namespace A051951

/-- `Δ[Δ[A277692(2*n+1)]]` -/
def P12716115375258539971.Spec : Prop :=
  ∀ n, P12716115375258539971.a n = A051951 n

end A051951

/-! ## A051951.P14601297341719656003

`Δ[A051950(A233583(n+2))]`
-/

namespace A051951.P14601297341719656003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (A233583 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051951.P14601297341719656003

namespace A051951

/-- `Δ[A051950(A233583(n+2))]` -/
def P14601297341719656003.Spec : Prop :=
  ∀ n, P14601297341719656003.a n = A051951 n

end A051951

/-! ## A051951.P4868272393616163513

`Δ[Δ[A000005(n²-n)/a(n-1)]]` with `a(0)=0, a(1)=1`
-/

namespace A051951.P4868272393616163513
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  (A000005 (n ^ 2 - n) : ℚ) / f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051951.P4868272393616163513

namespace A051951

/-- `Δ[Δ[A000005(n²-n)/a(n-1)]]` -/
def P4868272393616163513.Spec : Prop :=
  ∀ n, P4868272393616163513.a n = (A051951 n : ℚ)

end A051951

/-!
# A051952: Numbers that are not a sum of 3 positive squares nor are of the form 4^a*(8b+7) and which are not multiples of 4.

The programs for A051952, there is no canonical definition to state claims against.
-/

/-! ## A051952.P8470524684589026111

`eq[and(2, n-1), A063691(n)]`
-/

namespace A051952.P8470524684589026111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 ((n : ℤ) - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051952.P8470524684589026111

/-! ## A051952.P9251883942265780337

`∩[or(1, n)+n, A004214(n+1)]`
-/

namespace A051952.P9251883942265780337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051952.P9251883942265780337

/-! ## A051952.P14291066826777801929

`A103215(A018134(n))`
-/

namespace A051952.P14291066826777801929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103215 (A018134 n).toNat

end

end A051952.P14291066826777801929

/-! ## A051952.P9525515917125016431

`A064233(A319450(n+1))`
-/

namespace A051952.P9525515917125016431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064233 (A319450 (n + 1)).toNat

end

end A051952.P9525515917125016431

/-! ## A051952.P14899212362406914592

`eq[A003781(n), A025427(n)]`
-/

namespace A051952.P14899212362406914592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003781 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051952.P14899212362406914592

/-!
# A051953: Cototient(n) := n - phi(n).

The programs for A051953, the canonical program `A051953.P11179276897610979764` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051953 has offset 1).

The definition of A051953 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A051953.P11179276897610979764

`n+1-A000010(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A051953

/-- `n+1-A000010(n+1)` -/
def P11179276897610979764.Spec : Prop :=
  ∀ n, P11179276897610979764.a n = A051953 (n + 1)

theorem P11179276897610979764.correct : P11179276897610979764.Spec := by
  intro n
  simp only [A051953, Nat.add_sub_cancel]

end A051953

/-! ## A051953.P18292137869900707183

`A051612(n+1)-A001065(n+1)`
-/

namespace A051953.P18292137869900707183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (n + 1) - A001065 (n + 1)

end

end A051953.P18292137869900707183

namespace A051953

/-- `A051612(n+1)-A001065(n+1)` -/
def P18292137869900707183.Spec : Prop :=
  ∀ n, P18292137869900707183.a n = A051953 (n + 1)

end A051953

/-! ## A051953.P3721067075317962331

`A318325(n+1)-A318326(n+1)`
-/

namespace A051953.P3721067075317962331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318325 (n + 1) - A318326 (n + 1)

end

end A051953.P3721067075317962331

namespace A051953

/-- `A318325(n+1)-A318326(n+1)` -/
def P3721067075317962331.Spec : Prop :=
  ∀ n, P3721067075317962331.a n = A051953 (n + 1)

end A051953

/-! ## A051953.P12093122754958550118

`A003557(n+1)*A318305(n+1)`
-/

namespace A051953.P12093122754958550118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A318305 (n + 1)

end

end A051953.P12093122754958550118

namespace A051953

/-- `A003557(n+1)*A318305(n+1)` -/
def P12093122754958550118.Spec : Prop :=
  ∀ n, P12093122754958550118.a n = A051953 (n + 1)

end A051953

/-! ## A051953.P7777385236928079181

`A243823(n+1)+A010846(n+1)-1`
-/

namespace A051953.P7777385236928079181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243823 (n + 1) + A010846 (n + 1) - 1

end

end A051953.P7777385236928079181

namespace A051953

/-- `A243823(n+1)+A010846(n+1)-1` -/
def P7777385236928079181.Spec : Prop :=
  ∀ n, P7777385236928079181.a n = A051953 (n + 1)

end A051953

/-! ## A051953.P7531101152490298483

`A219428(n+1)+1`
-/

namespace A051953.P7531101152490298483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 1) + 1

end

end A051953.P7531101152490298483

namespace A051953

/-- `A219428(n+1)+1` -/
def P7531101152490298483.Spec : Prop :=
  ∀ n, P7531101152490298483.a n = A051953 (n + 1)

end A051953

/-! ## A051953.P7334812354254115111

`n-A109606(n+1)`
-/

namespace A051953.P7334812354254115111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A109606 (n + 1)

end

end A051953.P7334812354254115111

namespace A051953

/-- `n-A109606(n+1)` -/
def P7334812354254115111.Spec : Prop :=
  ∀ n, P7334812354254115111.a n = A051953 (n + 1)

end A051953

/-! ## A051953.P4751637494938244190

`∑{d}[n+1, A062790(#)]`
-/

namespace A051953.P4751637494938244190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062790 d

end

end A051953.P4751637494938244190

namespace A051953

/-- `∑{d}[n+1, A062790(#)]` -/
def P4751637494938244190.Spec : Prop :=
  ∀ n, P4751637494938244190.a n = A051953 (n + 1)

end A051953

/-! ## A051953.P4330070359252120047

`n+1-Δ[A002088(n)]`
-/

namespace A051953.P4330070359252120047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (f1 (n + 1) - f1 n)

end

end A051953.P4330070359252120047

namespace A051953

/-- `n+1-Δ[A002088(n)]` -/
def P4330070359252120047.Spec : Prop :=
  ∀ n, P4330070359252120047.a n = A051953 (n + 1)

end A051953

/-! ## A051953.P386168094968841926

`n+1-Δ[A005728(n)]`
-/

namespace A051953.P386168094968841926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (f1 (n + 1) - f1 n)

end

end A051953.P386168094968841926

namespace A051953

/-- `n+1-Δ[A005728(n)]` -/
def P386168094968841926.Spec : Prop :=
  ∀ n, P386168094968841926.a n = A051953 (n + 1)

end A051953

/-! ## A051953.P17954806933812479392

`A053158(n+1)-(n+1)`
-/

namespace A051953.P17954806933812479392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053158 (n + 1) - (n + 1 : ℤ)

end

end A051953.P17954806933812479392

namespace A051953

/-- `A053158(n+1)-(n+1)` -/
def P17954806933812479392.Spec : Prop :=
  ∀ n, P17954806933812479392.a n = A051953 (n + 1)

end A051953

/-! ## A051953.P9167223255108976342

`2-A039649(n+1)+n`
-/

namespace A051953.P9167223255108976342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A039649 (n + 1) + (n : ℤ)

end

end A051953.P9167223255108976342

namespace A051953

/-- `2-A039649(n+1)+n` -/
def P9167223255108976342.Spec : Prop :=
  ∀ n, P9167223255108976342.a n = A051953 (n + 1)

end A051953

/-! ## A051953.P10488912230823727370

`A053650(n+1)/(n+1)`
-/

namespace A051953.P10488912230823727370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053650 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A051953.P10488912230823727370

namespace A051953

/-- `A053650(n+1)/(n+1)` -/
def P10488912230823727370.Spec : Prop :=
  ∀ n, P10488912230823727370.a n = (A051953 (n + 1) : ℚ)

end A051953

/-! ## A051953.P5093912596612944071

`(n-A074057(n+3))/2`
-/

namespace A051953.P5093912596612944071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A074057 (n + 3) : ℚ) / 2

end

end A051953.P5093912596612944071

namespace A051953

/-- `(n-A074057(n+3))/2` -/
def P5093912596612944071.Spec : Prop :=
  ∀ n, P5093912596612944071.a n = (A051953 (n + 1) : ℚ)

end A051953

/-! ## A051953.P15707224902101754528

`A062955(n+1)%(n+1)`
-/

namespace A051953.P15707224902101754528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062955 (n + 1)) (n + 1 : ℤ)

end

end A051953.P15707224902101754528

namespace A051953

/-- `A062955(n+1)%(n+1)` -/
def P15707224902101754528.Spec : Prop :=
  ∀ n, P15707224902101754528.a n = A051953 (n + 1)

end A051953

/-! ## A051953.P17777312008057531517

`A258434(n+1)%(n+1)`
-/

namespace A051953.P17777312008057531517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258434 (n + 1)) (n + 1 : ℤ)

end

end A051953.P17777312008057531517

namespace A051953

/-- `A258434(n+1)%(n+1)` -/
def P17777312008057531517.Spec : Prop :=
  ∀ n, P17777312008057531517.a n = A051953 (n + 1)

end A051953

/-! ## A051953.P3230533428770435464

`A345891(n+1)%(n+1)`
-/

namespace A051953.P3230533428770435464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345891 (n + 1)) (n + 1 : ℤ)

end

end A051953.P3230533428770435464

namespace A051953

/-- `A345891(n+1)%(n+1)` -/
def P3230533428770435464.Spec : Prop :=
  ∀ n, P3230533428770435464.a n = A051953 (n + 1)

end A051953

/-! ## A051953.P1722572082070274108

`A046151(n+1)%(n+2)`
-/

namespace A051953.P1722572082070274108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046151 (n + 1)) (n + 2 : ℤ)

end

end A051953.P1722572082070274108

namespace A051953

/-- `A046151(n+1)%(n+2)` -/
def P1722572082070274108.Spec : Prop :=
  ∀ n, P1722572082070274108.a n = A051953 (n + 1)

end A051953

/-! ## A051953.P16522766022380700252

`A053192(n+1)%(n+2)`
-/

namespace A051953.P16522766022380700252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053192 (n + 1)) (n + 2 : ℤ)

end

end A051953.P16522766022380700252

namespace A051953

/-- `A053192(n+1)%(n+2)` -/
def P16522766022380700252.Spec : Prop :=
  ∀ n, P16522766022380700252.a n = A051953 (n + 1)

end A051953

/-!
# A051954: a(n) = smallest palindrome > a(n-1) such that a(1)*a(2)*...*a(n) - 1 is a prime.

The programs for A051954, there is no canonical definition to state claims against.
-/

/-! ## A051954.P9972015444255457068

`A032573(A032581(n+2)+A032550(n+3))`
-/

namespace A051954.P9972015444255457068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032573 (A032581 (n + 2) + A032550 (n + 3)).toNat

end

end A051954.P9972015444255457068

/-! ## A051954.P3927484359123342309

`record[A035486(A204926(n+2)+A035486(n+1))]`
-/

namespace A051954.P3927484359123342309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035486 (A204926 (n + 2) + A035486 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051954.P3927484359123342309

/-!
# A051958: a(n) = 2*a(n-1) + 24*a(n-2), a(0)=0, a(1)=1.

The programs for A051958, the canonical program `A051958.P16733244517638860029` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051958 has offset 0).

The definition of A051958 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+24*a(n-2)` (program `A051958.P16733244517638860029`, by `A051958.P16733244517638860029.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051958.P16733244517638860029

`2*a(n-1)+24*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051958

/-- `2*a(n-1)+24*a(n-2)` -/
def P16733244517638860029.Spec : Prop :=
  ∀ n, (P16733244517638860029.a n : ℤ) = A051958 n

theorem P16733244517638860029.correct : P16733244517638860029.Spec := by
  intro n
  simp only [A051958]

end A051958

/-! ## A051958.P9957750913388851125

`2^(n-1)*A015441(n)`
-/

namespace A051958.P9957750913388851125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A015441 n : ℚ)

end

end A051958.P9957750913388851125

namespace A051958

/-- `2^(n-1)*A015441(n)` -/
def P9957750913388851125.Spec : Prop :=
  ∀ n, P9957750913388851125.a n = (A051958 n : ℚ)

end A051958

/-! ## A051958.P1117092869374147209

`(6^n-(-4)^n)/10`
-/

namespace A051958.P1117092869374147209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 ^ n : ℤ) - (-4) ^ n : ℚ) / 10

end

end A051958.P1117092869374147209

namespace A051958

/-- `(6^n-(-4)^n)/10` -/
def P1117092869374147209.Spec : Prop :=
  ∀ n, P1117092869374147209.a n = (A051958 n : ℚ)

theorem P1117092869374147209.correct : P1117092869374147209.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A051958, Nat.add_sub_cancel, A051958.P1117092869374147209.a, A051958.P16733244517638860029.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A051958, Nat.add_sub_cancel, A051958.P1117092869374147209.a, A051958.P16733244517638860029.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A051958

/-! ## A051958.P3343854169288807686

`ogf(x/(1-2x-24x^2))`
-/

namespace A051958.P3343854169288807686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, -24] n

end

end A051958.P3343854169288807686

namespace A051958

/-- `ogf(x/(1-2x-24x^2))` -/
def P3343854169288807686.Spec : Prop :=
  ∀ n, P3343854169288807686.a n = A051958 n

end A051958

/-! ## A051958.P4271144752448248006

`A015441(n)*A131577(n)`
-/

namespace A051958.P4271144752448248006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015441 n * A131577 n

end

end A051958.P4271144752448248006

namespace A051958

/-- `A015441(n)*A131577(n)` -/
def P4271144752448248006.Spec : Prop :=
  ∀ n, P4271144752448248006.a n = A051958 n

end A051958

/-! ## A051958.P2412463996004944756

`lcm(A011782(n), A015441(n))`
-/

namespace A051958.P2412463996004944756
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011782 n) (A015441 n)

end

end A051958.P2412463996004944756

namespace A051958

/-- `lcm(A011782(n), A015441(n))` -/
def P2412463996004944756.Spec : Prop :=
  ∀ n, (P2412463996004944756.a n : ℤ) = A051958 n

end A051958

/-! ## A051958.P7071139856754033610

`Δ[A091002(n)]*A011782(n)`
-/

namespace A051958.P7071139856754033610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A011782 n

end

end A051958.P7071139856754033610

namespace A051958

/-- `Δ[A091002(n)]*A011782(n)` -/
def P7071139856754033610.Spec : Prop :=
  ∀ n, P7071139856754033610.a n = A051958 n

end A051958

/-! ## A051958.P11649868404286344342

`abs(A091005(n+1))*A011782(n)`
-/

namespace A051958.P11649868404286344342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A091005 (n + 1)| * A011782 n

end

end A051958.P11649868404286344342

namespace A051958

/-- `abs(A091005(n+1))*A011782(n)` -/
def P11649868404286344342.Spec : Prop :=
  ∀ n, P11649868404286344342.a n = A051958 n

end A051958

/-!
# A051959: Expansion of (1+6*x)/((1-2*x-x^2)*(1-x)^2).

The programs for A051959, the canonical program `A051959.P13350278011154144203` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051959 has offset 0).

The definition of A051959 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+6x)/(1-4x+4x^2-x^4))` (program `A051959.P13350278011154144203`, by `A051959.P13350278011154144203.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051959.P13350278011154144203

`ogf((1+6x)/(1-4x+4x^2-x^4))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051959

/-- `ogf((1+6x)/(1-4x+4x^2-x^4))` -/
def P13350278011154144203.Spec : Prop :=
  ∀ n, P13350278011154144203.a n = A051959 n

theorem P13350278011154144203.correct : P13350278011154144203.Spec := by
  intro n
  simp only [A051959]

end A051959

/-! ## A051959.P1462885981387475700

`2*a(n-1)+a(n-2)+7*n+1` with `a(0)=1, a(1)=10`
-/

namespace A051959.P1462885981387475700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n a =>
  2 * a (n - 1) + a (n - 2) + (7 * n + 1)

end

end A051959.P1462885981387475700

namespace A051959

/-- `2*a(n-1)+a(n-2)+7*n+1` -/
def P1462885981387475700.Spec : Prop :=
  ∀ n, (P1462885981387475700.a n : ℤ) = A051959 n

end A051959

/-! ## A051959.P14591108941373481563

`∑[∑[a(n-2)+2*a(n-1)]]` with `a(0)=1, a(1)=8`
-/

namespace A051959.P14591108941373481563
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f2 =>
  f2 (n - 2) + 2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051959.P14591108941373481563

namespace A051959

/-- `∑[∑[a(n-2)+2*a(n-1)]]` -/
def P14591108941373481563.Spec : Prop :=
  ∀ n, (P14591108941373481563.a n : ℤ) = A051959 n

end A051959

/-! ## A051959.P441760372628948802

`∑[∑[a(n-1)+a(n-1)+a(n-2)]]` with `a(0)=1, a(1)=8`
-/

namespace A051959.P441760372628948802
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) + f2 (n - 2))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051959.P441760372628948802

namespace A051959

/-- `∑[∑[a(n-1)+a(n-1)+a(n-2)]]` -/
def P441760372628948802.Spec : Prop :=
  ∀ n, (P441760372628948802.a n : ℤ) = A051959 n

end A051959

/-! ## A051959.P16685729416925784316

`∑[A048771(n)]`
-/

namespace A051959.P16685729416925784316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051959.P16685729416925784316

namespace A051959

/-- `∑[A048771(n)]` -/
def P16685729416925784316.Spec : Prop :=
  ∀ n, P16685729416925784316.a n = A051959 n

end A051959

/-! ## A051959.P17674665284690473815

`∑[∑[A048695(n)]]`
-/

namespace A051959.P17674665284690473815
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048695 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051959.P17674665284690473815

namespace A051959

/-- `∑[∑[A048695(n)]]` -/
def P17674665284690473815.Spec : Prop :=
  ∀ n, P17674665284690473815.a n = A051959 n

end A051959

/-! ## A051959.P17156340932349305320

`∑[∑[A048696(n)-A000129(n)]]`
-/

namespace A051959.P17156340932349305320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048696 n - A000129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051959.P17156340932349305320

namespace A051959

/-- `∑[∑[A048696(n)-A000129(n)]]` -/
def P17156340932349305320.Spec : Prop :=
  ∀ n, P17156340932349305320.a n = A051959 n

end A051959

/-! ## A051959.P15787587746042394881

`∑[A048772(n)-∑[A000129(n)]]`
-/

namespace A051959.P15787587746042394881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048772 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051959.P15787587746042394881

namespace A051959

/-- `∑[A048772(n)-∑[A000129(n)]]` -/
def P15787587746042394881.Spec : Prop :=
  ∀ n, P15787587746042394881.a n = A051959 n

end A051959

/-! ## A051959.P3865385553258875101

`A048739(n)+∑[A048772(n)-A048739(n)]`
-/

namespace A051959.P3865385553258875101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048772 n - A048739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048739 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051959.P3865385553258875101

namespace A051959

/-- `A048739(n)+∑[A048772(n)-A048739(n)]` -/
def P3865385553258875101.Spec : Prop :=
  ∀ n, P3865385553258875101.a n = A051959 n

end A051959

/-! ## A051959.P18223606039978521137

`∑[∑[A048654(n)+A048655(n)-A001333(n)]]`
-/

namespace A051959.P18223606039978521137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 n + (A048655 n - A001333 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051959.P18223606039978521137

namespace A051959

/-- `∑[∑[A048654(n)+A048655(n)-A001333(n)]]` -/
def P18223606039978521137.Spec : Prop :=
  ∀ n, P18223606039978521137.a n = A051959 n

end A051959

/-!
# A051960: a(n) = C(n)*(3n+2) where C(n) = Catalan numbers = A000108.

The programs for A051960, the canonical program `A051960.P3694803677626322338` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051960 has offset 0).

The definition of A051960 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051960.P10716721964516503449

`A000108(n)*(3*n+2)`
-/

namespace A051960.P10716721964516503449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (3 * n + 2 : ℤ)

end

end A051960.P10716721964516503449

namespace A051960

/-- `A000108(n)*(3*n+2)` -/
def P10716721964516503449.Spec : Prop :=
  ∀ n, P10716721964516503449.a n = A051960 n

end A051960

/-! ## A051960.P3694803677626322338

`A051924(n+1)+A000108(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A051960

/-- `A051924(n+1)+A000108(n)` -/
def P3694803677626322338.Spec : Prop :=
  ∀ n, P3694803677626322338.a n = A051960 n

theorem P3694803677626322338.correct : P3694803677626322338.Spec := by
  intro n
  simp only [A051960]

end A051960

/-! ## A051960.P13252259137363980727

`2*A000984(n)+A001791(n)`
-/

namespace A051960.P13252259137363980727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000984 n + A001791 n

end

end A051960.P13252259137363980727

namespace A051960

/-- `2*A000984(n)+A001791(n)` -/
def P13252259137363980727.Spec : Prop :=
  ∀ n, P13252259137363980727.a n = A051960 n

end A051960

/-! ## A051960.P6403106834620346116

`(3*n+2)*C(2*n, n)/(n+1)`
-/

namespace A051960.P6403106834620346116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n + 2) * Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ)

end

end A051960.P6403106834620346116

namespace A051960

/-- `(3*n+2)*C(2*n, n)/(n+1)` -/
def P6403106834620346116.Spec : Prop :=
  ∀ n, P6403106834620346116.a n = (A051960 n : ℚ)

end A051960

/-! ## A051960.P7588684559547251686

`record[a(n-1)/(floor(n/2)/n-1)]+∏[4-2/(n+1)]/2` with `a(0)=1`
-/

namespace A051960.P7588684559547251686
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (∏ j ∈ Finset.range (n + 1), f2 j) / 2

end

end A051960.P7588684559547251686

namespace A051960

/-- `record[a(n-1)/(floor(n/2)/n-1)]+∏[4-2/(n+1)]/2` -/
def P7588684559547251686.Spec : Prop :=
  ∀ n, P7588684559547251686.a n = (A051960 n : ℚ)

end A051960

/-! ## A051960.P784339127273795651

`A050168(Δ[n²])`
-/

namespace A051960.P784339127273795651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050168 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A051960.P784339127273795651

namespace A051960

/-- `A050168(Δ[n²])` -/
def P784339127273795651.Spec : Prop :=
  ∀ n, P784339127273795651.a n = A051960 n

end A051960

/-! ## A051960.P15173202271210651035

`Δ[A072100(Δ[n²])]`
-/

namespace A051960.P15173202271210651035
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072100 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051960.P15173202271210651035

namespace A051960

/-- `Δ[A072100(Δ[n²])]` -/
def P15173202271210651035.Spec : Prop :=
  ∀ n, P15173202271210651035.a n = A051960 n

end A051960

/-! ## A051960.P11689892002525673305

`A208976(2*n)+1`
-/

namespace A051960.P11689892002525673305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208976 (2 * n) + 1

end

end A051960.P11689892002525673305

namespace A051960

/-- `A208976(2*n)+1` -/
def P11689892002525673305.Spec : Prop :=
  ∀ n, P11689892002525673305.a n = A051960 n

end A051960

/-! ## A051960.P10684723519900927620

`A028283(n+1)/2`
-/

namespace A051960.P10684723519900927620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028283 (n + 1) : ℚ) / 2

end

end A051960.P10684723519900927620

namespace A051960

/-- `A028283(n+1)/2` -/
def P10684723519900927620.Spec : Prop :=
  ∀ n, P10684723519900927620.a n = (A051960 n : ℚ)

end A051960

/-! ## A051960.P2391265236845067512

`Δ[Δ[n*A155587(n)]]`
-/

namespace A051960.P2391265236845067512
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A155587 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051960.P2391265236845067512

namespace A051960

/-- `Δ[Δ[n*A155587(n)]]` -/
def P2391265236845067512.Spec : Prop :=
  ∀ n, P2391265236845067512.a n = A051960 n

end A051960

/-! ## A051960.P16958231537588078407

`abs(Δ[A072100(2*n+1)])`
-/

namespace A051960.P16958231537588078407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072100 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A051960.P16958231537588078407

namespace A051960

/-- `abs(Δ[A072100(2*n+1)])` -/
def P16958231537588078407.Spec : Prop :=
  ∀ n, P16958231537588078407.a n = A051960 n

end A051960

/-! ## A051960.P7738350983744682675

`Δ[Δ[n*A166588(2*n)]]`
-/

namespace A051960.P7738350983744682675
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A166588 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051960.P7738350983744682675

namespace A051960

/-- `Δ[Δ[n*A166588(2*n)]]` -/
def P7738350983744682675.Spec : Prop :=
  ∀ n, P7738350983744682675.a n = A051960 n

end A051960

/-! ## A051960.P14543768411325550543

`root(A050168(2*n+1), 2)²`
-/

namespace A051960.P14543768411325550543
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A050168 (2 * n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A051960.P14543768411325550543

namespace A051960

/-- `root(A050168(2*n+1), 2)²` -/
def P14543768411325550543.Spec : Prop :=
  ∀ n, P14543768411325550543.a n = (A051960 n : ℝ)

end A051960

/-! ## A051960.P9491609131771043006

`A001700(n)+A000984(n)`
-/

namespace A051960.P9491609131771043006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n + A000984 n

end

end A051960.P9491609131771043006

namespace A051960

/-- `A001700(n)+A000984(n)` -/
def P9491609131771043006.Spec : Prop :=
  ∀ n, P9491609131771043006.a n = A051960 n

end A051960

/-! ## A051960.P17001777704117162290

`A028329(n)+A001791(n)`
-/

namespace A051960.P17001777704117162290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028329 n + A001791 n

end

end A051960.P17001777704117162290

namespace A051960

/-- `A028329(n)+A001791(n)` -/
def P17001777704117162290.Spec : Prop :=
  ∀ n, P17001777704117162290.a n = A051960 n

end A051960

/-! ## A051960.P1561006766191667352

`A165205(n)+A088218(n)`
-/

namespace A051960.P1561006766191667352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165205 n + A088218 n

end

end A051960.P1561006766191667352

namespace A051960

/-- `A165205(n)+A088218(n)` -/
def P1561006766191667352.Spec : Prop :=
  ∀ n, P1561006766191667352.a n = A051960 n

end A051960

/-! ## A051960.P9967999311184235676

`A323229(n)+A134760(n)`
-/

namespace A051960.P9967999311184235676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323229 n + A134760 n

end

end A051960.P9967999311184235676

namespace A051960

/-- `A323229(n)+A134760(n)` -/
def P9967999311184235676.Spec : Prop :=
  ∀ n, P9967999311184235676.a n = A051960 n

end A051960

/-! ## A051960.P14741279028149719048

`A038665(n)-A077587(n)`
-/

namespace A051960.P14741279028149719048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038665 n - A077587 n

end

end A051960.P14741279028149719048

namespace A051960

/-- `A038665(n)-A077587(n)` -/
def P14741279028149719048.Spec : Prop :=
  ∀ n, P14741279028149719048.a n = A051960 n

end A051960

/-! ## A051960.P13610646324095938383

`A053368(n)-A162551(n)`
-/

namespace A051960.P13610646324095938383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053368 n - A162551 n

end

end A051960.P13610646324095938383

namespace A051960

/-- `A053368(n)-A162551(n)` -/
def P13610646324095938383.Spec : Prop :=
  ∀ n, P13610646324095938383.a n = A051960 n

end A051960

/-! ## A051960.P11500486510912150278

`A134762(n)-A120304(n)`
-/

namespace A051960.P11500486510912150278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134762 n - A120304 n

end

end A051960.P11500486510912150278

namespace A051960

/-- `A134762(n)-A120304(n)` -/
def P11500486510912150278.Spec : Prop :=
  ∀ n, P11500486510912150278.a n = A051960 n

end A051960

/-!
# A051961: Smallest number w such that A051953(w) = w - phi(w) is the n-th prime.

The programs for A051961, there is no canonical definition to state claims against.
-/

/-! ## A051961.P10113732616288422955

`A063507(A000040(n+1))`
-/

namespace A051961.P10113732616288422955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (A000040 (n + 1)).toNat

end

end A051961.P10113732616288422955

/-! ## A051961.P17488670471057949315

`A063507(Δ[A007504(n)])`
-/

namespace A051961.P17488670471057949315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (f1 (n + 1) - f1 n).toNat

end

end A051961.P17488670471057949315

/-! ## A051961.P2243057418115944515

`A063507(record[A051698(n)])`
-/

namespace A051961.P2243057418115944515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A051961.P2243057418115944515

/-! ## A051961.P6681101306538163662

`A063507(record[A162753(n)])`
-/

namespace A051961.P6681101306538163662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A051961.P6681101306538163662

/-! ## A051961.P2168650513607276572

`A063507(A008578(n+2))`
-/

namespace A051961.P2168650513607276572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (A008578 (n + 2)).toNat

end

end A051961.P2168650513607276572

/-! ## A051961.P7348177088378482509

`A063507(A182986(n+2))`
-/

namespace A051961.P7348177088378482509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (A182986 (n + 2)).toNat

end

end A051961.P7348177088378482509

/-! ## A051961.P9158083236931233913

`A063507(record[A006530(n+2)])`
-/

namespace A051961.P9158083236931233913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A051961.P9158083236931233913

/-! ## A051961.P11971996148971369803

`A063507(record[A014963(n+2)])`
-/

namespace A051961.P11971996148971369803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A051961.P11971996148971369803

/-! ## A051961.P10414404763718462802

`A063507(record[A020639(n+2)])`
-/

namespace A051961.P10414404763718462802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A051961.P10414404763718462802

/-! ## A051961.P8438604591180936732

`A063507(A006093(n+1)+1)`
-/

namespace A051961.P8438604591180936732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (A006093 (n + 1) + 1).toNat

end

end A051961.P8438604591180936732

/-! ## A051961.P10351800740512546011

`A063507(A008864(n+1)-1)`
-/

namespace A051961.P10351800740512546011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (A008864 (n + 1) - 1).toNat

end

end A051961.P10351800740512546011

/-! ## A051961.P9120058475976454180

`A063507(A028815(n+1)-1)`
-/

namespace A051961.P9120058475976454180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (A028815 (n + 1) - 1).toNat

end

end A051961.P9120058475976454180

/-! ## A051961.P117665187519054456

`A063507(A299763(n+2)-1)`
-/

namespace A051961.P117665187519054456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (A299763 (n + 2) - 1).toNat

end

end A051961.P117665187519054456

/-! ## A051961.P6888801582529417357

`A063507(record[A000010(n+1)+1])`
-/

namespace A051961.P6888801582529417357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A051961.P6888801582529417357

/-! ## A051961.P4122965942404662827

`A063507(eq[1, A051953(n+1)]+1)`
-/

namespace A051961.P4122965942404662827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A051961.P4122965942404662827

/-! ## A051961.P1915809126116653780

`A063507(eq[n, A000010(n+1)]+1)`
-/

namespace A051961.P1915809126116653780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A051961.P1915809126116653780

/-! ## A051961.P807634539576937867

`A063507(A007504(n+1)-A007504(n))`
-/

namespace A051961.P807634539576937867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (A007504 (n + 1) - A007504 n).toNat

end

end A051961.P807634539576937867

/-!
# A051966: Discriminants of real quadratic fields with class number 2 and related continued fraction period length of 1.

The programs for A051966, there is no canonical definition to state claims against.
-/

/-! ## A051966.P12948739773577219782

`∩[A053330(n+1), A379723(n+1)]`
-/

namespace A051966.P12948739773577219782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051966.P12948739773577219782

/-!
# A051969: Discriminants of real quadratic fields with class number 2 and related continued fraction period length of 4.

The programs for A051969, there is no canonical definition to state claims against.
-/

/-! ## A051969.P7363507064074858840

`A359352(A360399(2*n+5))+A062051(n)`
-/

namespace A051969.P7363507064074858840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359352 (A360399 (2 * n + 5)).toNat + A062051 n

end

end A051969.P7363507064074858840

/-!
# A051990: Discriminants of real quadratic fields of ERD-type with class groups of exponent 2 and discriminants of the form D = r^2*k^2+k, k odd.

The programs for A051990, there is no canonical definition to state claims against.
-/

/-! ## A051990.P11087205230203336485

`A051996(n+1)+(A051993(n+1)*A051996(n+1))²`
-/

namespace A051990.P11087205230203336485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051996 (n + 1) + (A051993 (n + 1) * A051996 (n + 1)) ^ 2

end

end A051990.P11087205230203336485

/-! ## A051990.P3140519262277626132

`A053330(lt[A003172(n+1), A081472(n+1)])`
-/

namespace A051990.P3140519262277626132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053330 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A051990.P3140519262277626132

/-! ## A051990.P15734983606277305984

`A053330(A225620(n+1)%A129066(3*n+2))`
-/

namespace A051990.P15734983606277305984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053330 (Int.tmod (A225620 (n + 1)) (A129066 (3 * n + 2))).toNat

end

end A051990.P15734983606277305984

/-!
# A051991: Discriminants of real quadratic fields of ERD-type with class groups of exponent 2 and discriminants of the form D = r^2*k^2+2k, k odd.

The programs for A051991, there is no canonical definition to state claims against.
-/

/-! ## A051991.P4363590113315543451

`A276886(A276885(2*n+5))-A276883(n+1)`
-/

namespace A051991.P4363590113315543451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276886 (A276885 (2 * n + 5)).toNat - A276883 (n + 1)

end

end A051991.P4363590113315543451

/-!
# A051992: Discriminants of real quadratic fields of ERD-type with class groups of exponent 2 and discriminants of the form D = r^2*k^2+4k, k odd.

The programs for A051992, there is no canonical definition to state claims against.
-/

/-! ## A051992.P6936712611044343806

`∩[A053330(n+1), A107996(n+1)]`
-/

namespace A051992.P6936712611044343806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051992.P6936712611044343806

/-! ## A051992.P6667078282873232129

`∩[A094619(n+1), A222947(n)]`
-/

namespace A051992.P6667078282873232129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222947 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051992.P6667078282873232129

/-!
# A051993: Consider real quadratic fields of ERD-type with class groups of exponent 2 and discriminants of the form D = r^2*k^2+k, k odd; sequence gives values of r.

The programs for A051993, there is no canonical definition to state claims against.
-/

/-! ## A051993.P5232414697211335669

`A006703(A051996(n+1)+A051990(n+1))`
-/

namespace A051993.P5232414697211335669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (A051996 (n + 1) + A051990 (n + 1)).toNat

end

end A051993.P5232414697211335669

/-! ## A051993.P12736061727612198230

`A010341(A051996(n+1)+A051990(n+1))`
-/

namespace A051993.P12736061727612198230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010341 (A051996 (n + 1) + A051990 (n + 1)).toNat

end

end A051993.P12736061727612198230

/-! ## A051993.P13658424571219222584

`A006703(4*A051990(n+1))`
-/

namespace A051993.P13658424571219222584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (4 * A051990 (n + 1)).toNat

end

end A051993.P13658424571219222584

/-! ## A051993.P5987966625439150313

`A010341(4*A051990(n+1))`
-/

namespace A051993.P5987966625439150313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010341 (4 * A051990 (n + 1)).toNat

end

end A051993.P5987966625439150313

/-!
# A051994: Consider real quadratic fields of ERD-type with class groups of exponent 2 and discriminants of the form D = r^2*k^2+2k, k odd; sequence gives values of r.

The programs for A051994, there is no canonical definition to state claims against.
-/

/-! ## A051994.P1251786981890353752

`A006703(A051991(n+1))`
-/

namespace A051994.P1251786981890353752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (A051991 (n + 1)).toNat

end

end A051994.P1251786981890353752

/-! ## A051994.P2376575132691397938

`A010341(or(2, A051991(n+1)))`
-/

namespace A051994.P2376575132691397938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010341 (Int.lor 2 (A051991 (n + 1))).toNat

end

end A051994.P2376575132691397938

/-! ## A051994.P9637615771364867021

`A010341(A051991(C(n+1, n)))`
-/

namespace A051994.P9637615771364867021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010341 (A051991 (Nat.choose (n + 1) n)).toNat

end

end A051994.P9637615771364867021

/-! ## A051994.P14696329102520946557

`A010341(2*A051991(n+1)-A051991(n+1))`
-/

namespace A051994.P14696329102520946557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010341 (2 * A051991 (n + 1) - A051991 (n + 1)).toNat

end

end A051994.P14696329102520946557

/-!
# A051999: Minimal value w such that A051953(w) = w - phi(w) is prime and w has n prime divisors.

The programs for A051999, there is no canonical definition to state claims against.
-/

/-! ## A051999.P6472771604521821890

`A121373(∏[2*(n+2)]/4)+∏[A027699(n+1)]`
-/

namespace A051999.P6472771604521821890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4)).toNat + ∏ j ∈ Finset.range (n + 1), f2 j

end

end A051999.P6472771604521821890

