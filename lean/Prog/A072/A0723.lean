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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
# A072301: Number of positive integers not exceeding n that are relatively prime to sigma(n).

The programs for A072301, there is no canonical definition to state claims against.
-/

/-! ## A072301.P10904057520845219546

`lcm(A057514(A057545(n)), A057550(n))`
-/

namespace A072301.P10904057520845219546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057514 (A057545 n).toNat) (A057550 n)

end

end A072301.P10904057520845219546

/-!
# A072303: Numbers n for which n is congruent to n^2 mod phi(n).

The programs for A072303, the canonical program `A072303.P6106614484039131218` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072303 has offset 1).

The definition of A072303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5376 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072303.P2992512081836883474

`eq[0, (n+1)%A160595(n+1)]+1`
-/

namespace A072303.P2992512081836883474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A160595 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072303.P2992512081836883474

namespace A072303

/-- `eq[0, (n+1)%A160595(n+1)]+1` -/
def P2992512081836883474.Spec : Prop :=
  ∀ n, (P2992512081836883474.a n : ℤ) = A072303 (n + 1)

end A072303

/-! ## A072303.P6106614484039131218

`lt[(n²+n)%A000010(n+1), 1]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A072303

/-- `lt[(n²+n)%A000010(n+1), 1]+1` -/
def P6106614484039131218.Spec : Prop :=
  ∀ n, (P6106614484039131218.a n : ℤ) = A072303 (n + 1)

theorem P6106614484039131218.correct : P6106614484039131218.Spec := by
  intro n
  simp only [A072303, Nat.add_sub_cancel]

end A072303

/-! ## A072303.P15079584597138295563

`record[∑{d}[n+1, gcd(n²+n, A000010(#))]]`
-/

namespace A072303.P15079584597138295563
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Int.gcd (n ^ 2 + n : ℤ) (A000010 d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072303.P15079584597138295563

namespace A072303

/-- `record[∑{d}[n+1, gcd(n²+n, A000010(#))]]` -/
def P15079584597138295563.Spec : Prop :=
  ∀ n, (P15079584597138295563.a n : ℤ) = A072303 (n + 1)

end A072303

/-! ## A072303.P9630741087189833117

`eq[A009195(n+1), A160595(n+1)]+1`
-/

namespace A072303.P9630741087189833117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160595 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A072303.P9630741087189833117

namespace A072303

/-- `eq[A009195(n+1), A160595(n+1)]+1` -/
def P9630741087189833117.Spec : Prop :=
  ∀ n, (P9630741087189833117.a n : ℤ) = A072303 (n + 1)

end A072303

/-! ## A072303.P7538861860321344620

`record[gcd(n+1, A002378(n)%A000010(n+1))]`
-/

namespace A072303.P7538861860321344620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (Int.tmod (A002378 n) (A000010 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072303.P7538861860321344620

namespace A072303

/-- `record[gcd(n+1, A002378(n)%A000010(n+1))]` -/
def P7538861860321344620.Spec : Prop :=
  ∀ n, (P7538861860321344620.a n : ℤ) = A072303 (n + 1)

end A072303

/-!
# A072306: a(n)-th Fibonacci number is the smallest Fibonacci number containing exactly n 2's.

The programs for A072306, there is no canonical definition to state claims against.
-/

/-! ## A072306.P5221875707443487882

`A152856(A107318(n+1))+A008607(n)`
-/

namespace A072306.P5221875707443487882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152856 (A107318 (n + 1)).toNat + A008607 n

end

end A072306.P5221875707443487882

/-!
# A072307: a(n)-th Fibonacci number is the smallest Fibonacci number containing exactly n 3's.

The programs for A072307, there is no canonical definition to state claims against.
-/

/-! ## A072307.P4707915802246755512

`A065507(A045340(n+1))+A005897(n)`
-/

namespace A072307.P4707915802246755512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065507 (A045340 (n + 1)).toNat + A005897 n

end

end A072307.P4707915802246755512

/-!
# A072314: 

The programs for A072314, there is no canonical definition to state claims against.
-/

/-! ## A072314.P12983575700679996446

`A000045(A072313(n+1))`
-/

namespace A072314.P12983575700679996446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A072313 (n + 1)).toNat

end

end A072314.P12983575700679996446

/-!
# A072315: 

The programs for A072315, there is no canonical definition to state claims against.
-/

/-! ## A072315.P244959696965280776

`A000045(A072312(n+1))`
-/

namespace A072315.P244959696965280776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A072312 (n + 1)).toNat

end

end A072315.P244959696965280776

/-!
# A072316: 

The programs for A072316, there is no canonical definition to state claims against.
-/

/-! ## A072316.P12179486625353159256

`A000045(A072311(n+1))`
-/

namespace A072316.P12179486625353159256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A072311 (n + 1)).toNat

end

end A072316.P12179486625353159256

/-!
# A072317: 

The programs for A072317, there is no canonical definition to state claims against.
-/

/-! ## A072317.P10950699109498442625

`A000045(A072310(n+1))`
-/

namespace A072317.P10950699109498442625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A072310 (n + 1)).toNat

end

end A072317.P10950699109498442625

/-!
# A072318: 

The programs for A072318, there is no canonical definition to state claims against.
-/

/-! ## A072318.P761818922417810532

`A000045(A072309(n+1))`
-/

namespace A072318.P761818922417810532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A072309 (n + 1)).toNat

end

end A072318.P761818922417810532

/-!
# A072319: Smallest Fibonacci number containing exactly n 4's.

The programs for A072319, there is no canonical definition to state claims against.
-/

/-! ## A072319.P840941592166888483

`A000045(A072308(n+1))`
-/

namespace A072319.P840941592166888483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A072308 (n + 1)).toNat

end

end A072319.P840941592166888483

/-!
# A072320: 

The programs for A072320, there is no canonical definition to state claims against.
-/

/-! ## A072320.P17577702994786892514

`A000045(A072307(n+1))`
-/

namespace A072320.P17577702994786892514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A072307 (n + 1)).toNat

end

end A072320.P17577702994786892514

/-!
# A072321: 

The programs for A072321, there is no canonical definition to state claims against.
-/

/-! ## A072321.P4113688978853301256

`A000045(A072306(n+1))`
-/

namespace A072321.P4113688978853301256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A072306 (n + 1)).toNat

end

end A072321.P4113688978853301256

/-!
# A072322: 

The programs for A072322, there is no canonical definition to state claims against.
-/

/-! ## A072322.P1848651504630936892

`A000045(A072305(n+1))`
-/

namespace A072322.P1848651504630936892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A072305 (n + 1)).toNat

end

end A072322.P1848651504630936892

/-!
# A072323: 

The programs for A072323, there is no canonical definition to state claims against.
-/

/-! ## A072323.P14051318455965096605

`A000045(A072304(n+1))`
-/

namespace A072323.P14051318455965096605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A072304 (n + 1)).toNat

end

end A072323.P14051318455965096605

/-! ## A072323.P6436037223292742087

`A212804(A072304(n+1)+1)`
-/

namespace A072323.P6436037223292742087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A072304 (n + 1) + 1).toNat

end

end A072323.P6436037223292742087

/-! ## A072323.P5500803658921892237

`A103609(2*A072304(n+1))`
-/

namespace A072323.P5500803658921892237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * A072304 (n + 1)).toNat

end

end A072323.P5500803658921892237

/-!
# A072324: Terms of A071383 such that A071383(n) = 5 * A071383(n-1).

The programs for A072324, there is no canonical definition to state claims against.
-/

/-! ## A072324.P3473432048916864937

`A088959(A078444(n+1))`
-/

namespace A072324.P3473432048916864937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088959 (A078444 (n + 1)).toNat

end

end A072324.P3473432048916864937

/-! ## A072324.P7987293143508470713

`A088959(A358533(n+1))`
-/

namespace A072324.P7987293143508470713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088959 (A358533 (n + 1)).toNat

end

end A072324.P7987293143508470713

/-! ## A072324.P2927088144758558447

`A088959(A220657(n)+2)`
-/

namespace A072324.P2927088144758558447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088959 (A220657 n + 2).toNat

end

end A072324.P2927088144758558447

/-!
# A072325: Number of even numbers that cannot be expressed as the difference p-q of two odd primes q < p <= prime(n).

The programs for A072325, there is no canonical definition to state claims against.
-/

/-! ## A072325.P7610506956529633688

`A175540(n+1)-A080370(n+2)`
-/

namespace A072325.P7610506956529633688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175540 (n + 1) - A080370 (n + 2)

end

end A072325.P7610506956529633688

/-! ## A072325.P8013314104913909125

`A175540(floor((2*n+3)/2))%A080370(n+2)`
-/

namespace A072325.P8013314104913909125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175540 ⌊(2 * n + 3 : ℚ) / 2⌋.toNat) (A080370 (n + 2))

end

end A072325.P8013314104913909125

/-! ## A072325.P9857748632132492916

`A213911(A213902(n+1)^A176591(n))`
-/

namespace A072325.P9857748632132492916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (SequenceMachineLib.roundAway ((A213902 (n + 1) : ℚ) ^ (A176591 n : ℤ))).toNat

end

end A072325.P9857748632132492916

/-! ## A072325.P18291355012018005996

`A035683(A001223(n+1)%A115932(n+1))`
-/

namespace A072325.P18291355012018005996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035683 (Int.tmod (A001223 (n + 1)) (A115932 (n + 1))).toNat

end

end A072325.P18291355012018005996

/-! ## A072325.P6977548039105883860

`A083768(n+1)%A132460(A001223(n+1))`
-/

namespace A072325.P6977548039105883860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083768 (n + 1)) (A132460 (A001223 (n + 1)).toNat)

end

end A072325.P6977548039105883860

/-!
# A072327: Numbers k such that k^2 is a term of A072510.

The programs for A072327, there is no canonical definition to state claims against.
-/

/-! ## A072327.P1604900405331857368

`eq[1, A076933((n+1)²)]+1`
-/

namespace A072327.P1604900405331857368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076933 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072327.P1604900405331857368

/-! ## A072327.P7933676909728797939

`eq[1, A076933((A000038(n)+n)²)]`
-/

namespace A072327.P7933676909728797939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076933 ((A000038 n + (n : ℤ)) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072327.P7933676909728797939

/-!
# A072328: a(n+1) = 2*a(n-2) + a(n-1), with a(0) = 3, a(1) = 0, and a(2) = 2.

The programs for A072328, the canonical program `A072328.P902276230658173347` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072328 has offset 0).

The definition of A072328 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A072328.anchor : A072328 0 = 3 ∧ A072328 1 = 0 ∧ A072328 2 = 2 ∧ ∀ n, A072328 (n + 3) = A072328 (n + 1) + 2 * A072328 n` in `Proof.A072.A072328`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A072328.P15414953280892821517

`ogf((-3+x^2)/(-1+x^2+2x^3))`
-/

namespace A072328.P15414953280892821517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, -1] [1, 0, -1, -2] n

end

end A072328.P15414953280892821517

namespace A072328

/-- `ogf((-3+x^2)/(-1+x^2+2x^3))` -/
def P15414953280892821517.Spec : Prop :=
  ∀ n, P15414953280892821517.a n = A072328 n

end A072328

/-! ## A072328.P902276230658173347

`a(n-2)+2*a(n-3)` with `a(0)=3, a(1)=0, a(2)=2`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072328

/-- `a(n-2)+2*a(n-3)` -/
def P902276230658173347.Spec : Prop :=
  ∀ n, (P902276230658173347.a n : ℤ) = A072328 n

theorem P902276230658173347.correct : P902276230658173347.Spec := by
  intro n
  simp only [A072328]

end A072328

/-! ## A072328.P11115720015300514839

`a(n-2)+a(n-3)+a(n-3)` with `a(0)=3, a(1)=0, a(2)=2`
-/

namespace A072328.P11115720015300514839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 0, 2] fun n a =>
  a (n - 2) + (a (n - 3) + a (n - 3))

end

end A072328.P11115720015300514839

namespace A072328

/-- `a(n-2)+a(n-3)+a(n-3)` -/
def P11115720015300514839.Spec : Prop :=
  ∀ n, (P11115720015300514839.a n : ℤ) = A072328 n

theorem P11115720015300514839.correct : P11115720015300514839.Spec := by
  intro n
  simp only [A072328, Nat.add_sub_cancel, A072328.P11115720015300514839.a, A072328.P902276230658173347.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A072328

/-! ## A072328.P1176645268778961761

`3*a(n-3)-(a(n-3)-a(n-2))` with `a(0)=3, a(1)=0, a(2)=2`
-/

namespace A072328.P1176645268778961761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 0, 2] fun n a =>
  3 * a (n - 3) - (a (n - 3) - a (n - 2))

end

end A072328.P1176645268778961761

namespace A072328

/-- `3*a(n-3)-(a(n-3)-a(n-2))` -/
def P1176645268778961761.Spec : Prop :=
  ∀ n, P1176645268778961761.a n = A072328 n

end A072328

/-! ## A072328.P3634855029710537671

`3*A052947(n)-A159287(n)`
-/

namespace A072328.P3634855029710537671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A052947 n - A159287 n

end

end A072328.P3634855029710537671

namespace A072328

/-- `3*A052947(n)-A159287(n)` -/
def P3634855029710537671.Spec : Prop :=
  ∀ n, P3634855029710537671.a n = A072328 n

end A072328

/-! ## A072328.P9771530078238661877

`Δ[A159284(n)]+2*A052947(n)`
-/

namespace A072328.P9771530078238661877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A052947 n

end

end A072328.P9771530078238661877

namespace A072328

/-- `Δ[A159284(n)]+2*A052947(n)` -/
def P9771530078238661877.Spec : Prop :=
  ∀ n, P9771530078238661877.a n = A072328 n

end A072328

/-! ## A072328.P12963267201073217581

`A052947(n)+A159288(n)-A078026(n+1)`
-/

namespace A072328.P12963267201073217581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052947 n + (A159288 n - A078026 (n + 1))

end

end A072328.P12963267201073217581

namespace A072328

/-- `A052947(n)+A159288(n)-A078026(n+1)` -/
def P12963267201073217581.Spec : Prop :=
  ∀ n, P12963267201073217581.a n = A072328 n

end A072328

/-! ## A072328.P10304224629799471810

`A159285(n)+A159286(n)-A078026(n+1)`
-/

namespace A072328.P10304224629799471810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159285 n + (A159286 n - A078026 (n + 1))

end

end A072328.P10304224629799471810

namespace A072328

/-- `A159285(n)+A159286(n)-A078026(n+1)` -/
def P10304224629799471810.Spec : Prop :=
  ∀ n, P10304224629799471810.a n = A072328 n

end A072328

/-! ## A072328.P16719880475922574421

`A159284(n+1)+A159284(n)-A159286(n+1)`
-/

namespace A072328.P16719880475922574421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159284 (n + 1) + (A159284 n - A159286 (n + 1))

end

end A072328.P16719880475922574421

namespace A072328

/-- `A159284(n+1)+A159284(n)-A159286(n+1)` -/
def P16719880475922574421.Spec : Prop :=
  ∀ n, P16719880475922574421.a n = A072328 n

end A072328

/-! ## A072328.P3820102081916206895

`A159287(n+1)+A159288(n)-A159286(n+1)`
-/

namespace A072328.P3820102081916206895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159287 (n + 1) + (A159288 n - A159286 (n + 1))

end

end A072328.P3820102081916206895

namespace A072328

/-- `A159287(n+1)+A159288(n)-A159286(n+1)` -/
def P3820102081916206895.Spec : Prop :=
  ∀ n, P3820102081916206895.a n = A072328 n

end A072328

/-! ## A072328.P8659624809616358126

`A159285(n+1)-(A159287(n)+A052947(n+1))`
-/

namespace A072328.P8659624809616358126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159285 (n + 1) - (A159287 n + A052947 (n + 1))

end

end A072328.P8659624809616358126

namespace A072328

/-- `A159285(n+1)-(A159287(n)+A052947(n+1))` -/
def P8659624809616358126.Spec : Prop :=
  ∀ n, P8659624809616358126.a n = A072328 n

end A072328

/-! ## A072328.P8304810936234695384

`Δ[A288668(n)-A052947(n)]`
-/

namespace A072328.P8304810936234695384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288668 n - A052947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A072328.P8304810936234695384

namespace A072328

/-- `Δ[A288668(n)-A052947(n)]` -/
def P8304810936234695384.Spec : Prop :=
  ∀ n, P8304810936234695384.a n = A072328 n

end A072328

/-!
# A072329: a(n+1) = 3*a(n-2) + 2*a(n-1), a(n)=x^n+y^n+z^n.

The programs for A072329, the canonical program `A072329.P12232277145023729990` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072329 has offset 0).

The definition of A072329 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 361 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072329.P15681648962260472672

`ogf((-3+2x^2)/(-1+2x^2+3x^3))`
-/

namespace A072329.P15681648962260472672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, -2] [1, 0, -2, -3] n

end

end A072329.P15681648962260472672

namespace A072329

/-- `ogf((-3+2x^2)/(-1+2x^2+3x^3))` -/
def P15681648962260472672.Spec : Prop :=
  ∀ n, P15681648962260472672.a n = A072329 n

end A072329

/-! ## A072329.P12232277145023729990

`2*a(n-2)+3*a(n-3)` with `a(0)=3, a(1)=0, a(2)=4`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072329

/-- `2*a(n-2)+3*a(n-3)` -/
def P12232277145023729990.Spec : Prop :=
  ∀ n, (P12232277145023729990.a n : ℤ) = A072329 n

theorem P12232277145023729990.correct : P12232277145023729990.Spec := by
  intro n
  simp only [A072329]

end A072329

/-!
# A072330: Common difference n such that primitive triangles exist which are n-arithmetic (i.e., primitive Heronian triangles whose sides in arithmetic progression have common difference n).

The programs for A072330, the canonical program `A072330.P15179746371977386479` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072330 has offset 1).

The definition of A072330 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4890 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072330.P8523502182480113630

`filter[A057125(n+1), A162289(#)]`
-/

namespace A072330.P8523502182480113630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A072330.P8523502182480113630

namespace A072330

/-- `filter[A057125(n+1), A162289(#)]` -/
def P8523502182480113630.Spec : Prop :=
  ∀ n, P8523502182480113630.a n = A072330 (n + 1)

end A072330

/-! ## A072330.P15179746371977386479

`filter[A057125(n+1), A187074(#)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A072330

/-- `filter[A057125(n+1), A187074(#)]` -/
def P15179746371977386479.Spec : Prop :=
  ∀ n, P15179746371977386479.a n = A072330 (n + 1)

theorem P15179746371977386479.correct : P15179746371977386479.Spec := by
  intro n
  simp only [A072330, Nat.add_sub_cancel]

end A072330

/-! ## A072330.P18410246857739198600

`filter[A057125(n+1), A354354(#)]`
-/

namespace A072330.P18410246857739198600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A072330.P18410246857739198600

namespace A072330

/-- `filter[A057125(n+1), A354354(#)]` -/
def P18410246857739198600.Spec : Prop :=
  ∀ n, P18410246857739198600.a n = A072330 (n + 1)

end A072330

/-! ## A072330.P10037280696645552337

`filter[A057125(n+1), A372574(#)]`
-/

namespace A072330.P10037280696645552337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372574 (f1 j).toNat = 1) n)

end

end A072330.P10037280696645552337

namespace A072330

/-- `filter[A057125(n+1), A372574(#)]` -/
def P10037280696645552337.Spec : Prop :=
  ∀ n, P10037280696645552337.a n = A072330 (n + 1)

end A072330

/-! ## A072330.P16840119800747262838

`filter[A057125(n+1), A373139(#)]`
-/

namespace A072330.P16840119800747262838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373139 (f1 j).toNat = 1) n)

end

end A072330.P16840119800747262838

namespace A072330

/-- `filter[A057125(n+1), A373139(#)]` -/
def P16840119800747262838.Spec : Prop :=
  ∀ n, P16840119800747262838.a n = A072330 (n + 1)

end A072330

/-! ## A072330.P16702365482287096827

`filter[A057125(n+1), A373155(#)]`
-/

namespace A072330.P16702365482287096827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A072330.P16702365482287096827

namespace A072330

/-- `filter[A057125(n+1), A373155(#)]` -/
def P16702365482287096827.Spec : Prop :=
  ∀ n, P16702365482287096827.a n = A072330 (n + 1)

end A072330

/-! ## A072330.P2321575026569412416

`filter[A057125(n+1), A373991(#)]`
-/

namespace A072330.P2321575026569412416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373991 (f1 j).toNat = 1) n)

end

end A072330.P2321575026569412416

namespace A072330

/-- `filter[A057125(n+1), A373991(#)]` -/
def P2321575026569412416.Spec : Prop :=
  ∀ n, P2321575026569412416.a n = A072330 (n + 1)

end A072330

/-! ## A072330.P9597488831889498318

`filter[A057125(n+1), A374041(#)]`
-/

namespace A072330.P9597488831889498318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374041 (f1 j).toNat = 1) n)

end

end A072330.P9597488831889498318

namespace A072330

/-- `filter[A057125(n+1), A374041(#)]` -/
def P9597488831889498318.Spec : Prop :=
  ∀ n, P9597488831889498318.a n = A072330 (n + 1)

end A072330

/-! ## A072330.P8830573218750701157

`filter[A057125(n+1), A374043(#)]`
-/

namespace A072330.P8830573218750701157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374043 (f1 j).toNat = 1) n)

end

end A072330.P8830573218750701157

namespace A072330

/-- `filter[A057125(n+1), A374043(#)]` -/
def P8830573218750701157.Spec : Prop :=
  ∀ n, P8830573218750701157.a n = A072330 (n + 1)

end A072330

/-! ## A072330.P13992158076846347102

`∩[A057125(n+1), A091998(n+1)]`
-/

namespace A072330.P13992158076846347102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072330.P13992158076846347102

namespace A072330

/-- `∩[A057125(n+1), A091998(n+1)]` -/
def P13992158076846347102.Spec : Prop :=
  ∀ n, (P13992158076846347102.a n : ℤ) = A072330 (n + 1)

end A072330

/-! ## A072330.P3360173002614684465

`∩[A057125(n+1), A383288(n+1)]`
-/

namespace A072330.P3360173002614684465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072330.P3360173002614684465

namespace A072330

/-- `∩[A057125(n+1), A383288(n+1)]` -/
def P3360173002614684465.Spec : Prop :=
  ∀ n, (P3360173002614684465.a n : ℤ) = A072330 (n + 1)

end A072330

/-! ## A072330.P5119789560292403725

`∩[A008364(n+1), A057125(n+1)]`
-/

namespace A072330.P5119789560292403725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072330.P5119789560292403725

namespace A072330

/-- `∩[A008364(n+1), A057125(n+1)]` -/
def P5119789560292403725.Spec : Prop :=
  ∀ n, (P5119789560292403725.a n : ℤ) = A072330 (n + 1)

end A072330

/-! ## A072330.P11281630891455847255

`∩[A057125(n+1), A292315(n+1)]`
-/

namespace A072330.P11281630891455847255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072330.P11281630891455847255

namespace A072330

/-- `∩[A057125(n+1), A292315(n+1)]` -/
def P11281630891455847255.Spec : Prop :=
  ∀ n, (P11281630891455847255.a n : ℤ) = A072330 (n + 1)

end A072330

/-! ## A072330.P16794272372094592751

`∩[A007775(n+1), A057125(n+1)]`
-/

namespace A072330.P16794272372094592751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072330.P16794272372094592751

namespace A072330

/-- `∩[A007775(n+1), A057125(n+1)]` -/
def P16794272372094592751.Spec : Prop :=
  ∀ n, (P16794272372094592751.a n : ℤ) = A072330 (n + 1)

end A072330

/-! ## A072330.P7235776421407550622

`∩[A057125(n+1), A185208(n+1)]`
-/

namespace A072330.P7235776421407550622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072330.P7235776421407550622

namespace A072330

/-- `∩[A057125(n+1), A185208(n+1)]` -/
def P7235776421407550622.Spec : Prop :=
  ∀ n, (P7235776421407550622.a n : ℤ) = A072330 (n + 1)

end A072330

/-! ## A072330.P5085634984765447031

`∩[A057125(n+1), A206547(n+1)]`
-/

namespace A072330.P5085634984765447031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072330.P5085634984765447031

namespace A072330

/-- `∩[A057125(n+1), A206547(n+1)]` -/
def P5085634984765447031.Spec : Prop :=
  ∀ n, (P5085634984765447031.a n : ℤ) = A072330 (n + 1)

end A072330

/-! ## A072330.P7736504509669279815

`∩[A057125(n+1), A374044(n+1)]`
-/

namespace A072330.P7736504509669279815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072330.P7736504509669279815

namespace A072330

/-- `∩[A057125(n+1), A374044(n+1)]` -/
def P7736504509669279815.Spec : Prop :=
  ∀ n, (P7736504509669279815.a n : ℤ) = A072330 (n + 1)

end A072330

/-! ## A072330.P4463345883840858378

`∩[A057125(n+1), A389633(n+1)]`
-/

namespace A072330.P4463345883840858378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072330.P4463345883840858378

namespace A072330

/-- `∩[A057125(n+1), A389633(n+1)]` -/
def P4463345883840858378.Spec : Prop :=
  ∀ n, (P4463345883840858378.a n : ℤ) = A072330 (n + 1)

end A072330

/-! ## A072330.P5466338171089845542

`∩[A057125(n+1), A367734(n+1)]`
-/

namespace A072330.P5466338171089845542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072330.P5466338171089845542

namespace A072330

/-- `∩[A057125(n+1), A367734(n+1)]` -/
def P5466338171089845542.Spec : Prop :=
  ∀ n, (P5466338171089845542.a n : ℤ) = A072330 (n + 1)

end A072330

/-! ## A072330.P4033001886297490588

`∩[A057125(n+1), A373140(n+1)]`
-/

namespace A072330.P4033001886297490588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072330.P4033001886297490588

namespace A072330

/-- `∩[A057125(n+1), A373140(n+1)]` -/
def P4033001886297490588.Spec : Prop :=
  ∀ n, (P4033001886297490588.a n : ℤ) = A072330 (n + 1)

end A072330

/-!
# A072331: a(n) = 2^(n-1) * Sum_{k=0..n} ((n+k)!/(n-k)!)/k!.

The programs for A072331, there is no canonical definition to state claims against.
-/

/-! ## A072331.P6843015748923196872

`2^n*A001517(n+1)`
-/

namespace A072331.P6843015748923196872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001517 (n + 1)

end

end A072331.P6843015748923196872

/-! ## A072331.P15568010485648247843

`Δ[A105747(n)]*A000079(n)`
-/

namespace A072331.P15568010485648247843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 n

end

end A072331.P15568010485648247843

/-! ## A072331.P4507779137095482925

`A000079(n)*A080893(n+2)`
-/

namespace A072331.P4507779137095482925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A080893 (n + 2)

end

end A072331.P4507779137095482925

/-! ## A072331.P5116155391334333005

`lcm(A000079(n), A001517(n+1))`
-/

namespace A072331.P5116155391334333005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A001517 (n + 1))

end

end A072331.P5116155391334333005

/-! ## A072331.P8959950444919110005

`Δ[A105747(n)]*record[A319862(n)]`
-/

namespace A072331.P8959950444919110005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105747 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A072331.P8959950444919110005

/-!
# A072332: Largest eigenvalue, rounded to the nearest integer, of a rank n matrix of 1..n^2 filled successively along antidiagonals (A069480).

The programs for A072332, there is no canonical definition to state claims against.
-/

/-! ## A072332.P8950563161016315513

`A008617(A094792(2*n+1)+A005843(n))`
-/

namespace A072332.P8950563161016315513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A094792 (2 * n + 1) + A005843 n).toNat

end

end A072332.P8950563161016315513

/-! ## A072332.P10129605014274366237

`A188427(n)-(1-A020639(n!))`
-/

namespace A072332.P10129605014274366237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188427 n - (1 - A020639 (Nat.factorial n))

end

end A072332.P10129605014274366237

/-! ## A072332.P7851839333180148210

`A188427(n)+A014306(A000302(n))`
-/

namespace A072332.P7851839333180148210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188427 n + A014306 (A000302 n).toNat

end

end A072332.P7851839333180148210

/-! ## A072332.P9250895779174719187

`A188427(n)+A051904(A000142(n))`
-/

namespace A072332.P9250895779174719187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188427 n + A051904 (A000142 n).toNat

end

end A072332.P9250895779174719187

/-! ## A072332.P13783971966103019385

`A188427(n)+A087624(A000244(n))`
-/

namespace A072332.P13783971966103019385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188427 n + A087624 (A000244 n).toNat

end

end A072332.P13783971966103019385

/-!
# A072333: Largest eigenvalue, rounded to the nearest integer, of a rank n matrix of 1..n^2 filled successively along rows.

The programs for A072333, there is no canonical definition to state claims against.
-/

/-! ## A072333.P8576428667414775450

`∑[A103682(n+1)+A003056(A062801(n))]`
-/

namespace A072333.P8576428667414775450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103682 (n + 1) + A003056 (A062801 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072333.P8576428667414775450

/-! ## A072333.P772580083042361705

`A008618(A000330(3*(n+1))-A001859(n))`
-/

namespace A072333.P772580083042361705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A000330 (3 * (n + 1)) - A001859 n).toNat

end

end A072333.P772580083042361705

/-! ## A072333.P11321798020538665561

`∑[∑[or(1, 3*n)]]-A160383(n!)`
-/

namespace A072333.P11321798020538665561
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A160383 (Nat.factorial n)

end

end A072333.P11321798020538665561

/-!
# A072335: Expansion of 1/((1-x^2)*(1-4*x+x^2)).

The programs for A072335, the canonical program `A072335.P18280785447333986107` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072335 has offset 0).

The definition of A072335 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x+4x^3-x^4))` (program `A072335.P18280785447333986107`, by `A072335.P18280785447333986107.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A072335.P18280785447333986107

`ogf(1/(1-4x+4x^3-x^4))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072335

/-- `ogf(1/(1-4x+4x^3-x^4))` -/
def P18280785447333986107.Spec : Prop :=
  ∀ n, P18280785447333986107.a n = A072335 n

theorem P18280785447333986107.correct : P18280785447333986107.Spec := by
  intro n
  simp only [A072335]

end A072335

/-! ## A072335.P3318174539250084529

`4*a(n-1)-4*a(n-3)+a(n-4)` with `a(0)=1, a(1)=4, a(2)=16, a(3)=60`
-/

namespace A072335.P3318174539250084529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 16, 60] fun n a =>
  4 * a (n - 1) - 4 * a (n - 3) + a (n - 4)

end

end A072335.P3318174539250084529

namespace A072335

/-- `4*a(n-1)-4*a(n-3)+a(n-4)` -/
def P3318174539250084529.Spec : Prop :=
  ∀ n, P3318174539250084529.a n = A072335 n

end A072335

/-! ## A072335.P10446872792520968813

`floor((sqrt(3)+2)*a(n-1))+2-n%2` with `a(0)=1`
-/

namespace A072335.P10446872792520968813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌋ + 2 - ((n % 2 : ℕ) : ℤ)

end

end A072335.P10446872792520968813

namespace A072335

/-- `floor((sqrt(3)+2)*a(n-1))+2-n%2` -/
def P10446872792520968813.Spec : Prop :=
  ∀ n, P10446872792520968813.a n = A072335 n

end A072335

/-! ## A072335.P520835002448578583

`∑[4*a(n-1)-a(n-2)]-a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A072335.P520835002448578583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  4 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A072335.P520835002448578583

namespace A072335

/-- `∑[4*a(n-1)-a(n-2)]-a(n-1)` -/
def P520835002448578583.Spec : Prop :=
  ∀ n, P520835002448578583.a n = A072335 n

end A072335

/-! ## A072335.P99537095806992308

`(a(n-1)-and(1, n))*a(n-1)/a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A072335.P99537095806992308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  (a (n - 1) - (Nat.land 1 n : ℚ)) * (a (n - 1) / a (n - 2))

end

end A072335.P99537095806992308

namespace A072335

/-- `(a(n-1)-and(1, n))*a(n-1)/a(n-2)` -/
def P99537095806992308.Spec : Prop :=
  ∀ n, P99537095806992308.a n = (A072335 n : ℚ)

end A072335

/-! ## A072335.P9008045337953977347

`∑[∑[A006253(n)]]`
-/

namespace A072335.P9008045337953977347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006253 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072335.P9008045337953977347

namespace A072335

/-- `∑[∑[A006253(n)]]` -/
def P9008045337953977347.Spec : Prop :=
  ∀ n, P9008045337953977347.a n = A072335 n

end A072335

/-! ## A072335.P1554798083146913031

`∑[A109437(n+1)]`
-/

namespace A072335.P1554798083146913031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072335.P1554798083146913031

namespace A072335

/-- `∑[A109437(n+1)]` -/
def P1554798083146913031.Spec : Prop :=
  ∀ n, P1554798083146913031.a n = A072335 n

end A072335

/-! ## A072335.P13757030346793805848

`∑[abs(∑[A125905(n)])]`
-/

namespace A072335.P13757030346793805848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125905 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072335.P13757030346793805848

namespace A072335

/-- `∑[abs(∑[A125905(n)])]` -/
def P13757030346793805848.Spec : Prop :=
  ∀ n, P13757030346793805848.a n = A072335 n

end A072335

/-! ## A072335.P16678029320598355269

`∑[∑[∑[A217233(n)]]]`
-/

namespace A072335.P16678029320598355269
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217233 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072335.P16678029320598355269

namespace A072335

/-- `∑[∑[∑[A217233(n)]]]` -/
def P16678029320598355269.Spec : Prop :=
  ∀ n, P16678029320598355269.a n = A072335 n

end A072335

/-! ## A072335.P2048399587499386676

`A112832(n+1)-1`
-/

namespace A072335.P2048399587499386676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112832 (n + 1) - 1

end

end A072335.P2048399587499386676

namespace A072335

/-- `A112832(n+1)-1` -/
def P2048399587499386676.Spec : Prop :=
  ∀ n, P2048399587499386676.a n = A072335 n

end A072335

/-! ## A072335.P15945087835902762954

`floor(A006253(n+1)/2)`
-/

namespace A072335.P15945087835902762954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006253 (n + 1) : ℚ) / 2⌋

end

end A072335.P15945087835902762954

namespace A072335

/-- `floor(A006253(n+1)/2)` -/
def P15945087835902762954.Spec : Prop :=
  ∀ n, P15945087835902762954.a n = A072335 n

end A072335

/-! ## A072335.P2065069213450209862

`A189450(n+1)-and(1, n)`
-/

namespace A072335.P2065069213450209862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189450 (n + 1) - (Nat.land 1 n : ℤ)

end

end A072335.P2065069213450209862

namespace A072335

/-- `A189450(n+1)-and(1, n)` -/
def P2065069213450209862.Spec : Prop :=
  ∀ n, P2065069213450209862.a n = A072335 n

end A072335

/-! ## A072335.P2754635704149890449

`∑[∑[xor(1, A120892(n+1))]]`
-/

namespace A072335.P2754635704149890449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A120892 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072335.P2754635704149890449

namespace A072335

/-- `∑[∑[xor(1, A120892(n+1))]]` -/
def P2754635704149890449.Spec : Prop :=
  ∀ n, P2754635704149890449.a n = A072335 n

end A072335

/-! ## A072335.P1196658617217496261

`A061278(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A072335.P1196658617217496261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A061278 (n + 1) - a (n - 1)

end

end A072335.P1196658617217496261

namespace A072335

/-- `A061278(n+1)-a(n-1)` -/
def P1196658617217496261.Spec : Prop :=
  ∀ n, P1196658617217496261.a n = A072335 n

end A072335

/-! ## A072335.P13809448755320161166

`∑[A001353(n+1)]-a(n-1)` with `a(0)=1`
-/

namespace A072335.P13809448755320161166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A072335.P13809448755320161166

namespace A072335

/-- `∑[A001353(n+1)]-a(n-1)` -/
def P13809448755320161166.Spec : Prop :=
  ∀ n, P13809448755320161166.a n = A072335 n

end A072335

/-! ## A072335.P392518841289959488

`A242728(n)+A001571(n)`
-/

namespace A072335.P392518841289959488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242728 n + A001571 n

end

end A072335.P392518841289959488

namespace A072335

/-- `A242728(n)+A001571(n)` -/
def P392518841289959488.Spec : Prop :=
  ∀ n, P392518841289959488.a n = A072335 n

end A072335

/-! ## A072335.P5331416722308988921

`A189450(n+1)-A000035(n)`
-/

namespace A072335.P5331416722308988921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189450 (n + 1) - A000035 n

end

end A072335.P5331416722308988921

namespace A072335

/-- `A189450(n+1)-A000035(n)` -/
def P5331416722308988921.Spec : Prop :=
  ∀ n, P5331416722308988921.a n = A072335 n

end A072335

/-! ## A072335.P9091120479663426268

`∑[∑[A120893(n)+A001353(n)]]`
-/

namespace A072335.P9091120479663426268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120893 n + A001353 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072335.P9091120479663426268

namespace A072335

/-- `∑[∑[A120893(n)+A001353(n)]]` -/
def P9091120479663426268.Spec : Prop :=
  ∀ n, P9091120479663426268.a n = A072335 n

end A072335

/-! ## A072335.P10972686643848876246

`∑[A259592(2*n)-A109437(n)]`
-/

namespace A072335.P10972686643848876246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259592 (2 * n) - A109437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072335.P10972686643848876246

namespace A072335

/-- `∑[A259592(2*n)-A109437(n)]` -/
def P10972686643848876246.Spec : Prop :=
  ∀ n, P10972686643848876246.a n = A072335 n

end A072335

/-! ## A072335.P17895561471109517366

`A121401(n+1)-(A242725(n+1)+1)`
-/

namespace A072335.P17895561471109517366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121401 (n + 1) - (A242725 (n + 1) + 1)

end

end A072335.P17895561471109517366

namespace A072335

/-- `A121401(n+1)-(A242725(n+1)+1)` -/
def P17895561471109517366.Spec : Prop :=
  ∀ n, P17895561471109517366.a n = A072335 n

end A072335

/-!
# A072336: EULER transform of A064831 (with its initial 1 omitted).

The programs for A072336, there is no canonical definition to state claims against.
-/

/-! ## A072336.P9200100143380885561

`A099802(A020698(n))-A191201(n+1)`
-/

namespace A072336.P9200100143380885561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (A020698 n).toNat - A191201 (n + 1)

end

end A072336.P9200100143380885561

/-! ## A072336.P11007690257010134247

`A000302(n)-A045917(record[A071653(n)+1])`
-/

namespace A072336.P11007690257010134247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071653 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n - A045917 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072336.P11007690257010134247

/-!
# A072337: Inverse EULER transform of A064831 (with its initial 1 omitted).

The programs for A072337, the canonical program `A072337.P6973343561193604984` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072337 has offset 0).

The definition of A072337 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072337.P6973343561193604984

`or(C(2, n), A032170(A028310(n)))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A072337

/-- `or(C(2, n), A032170(A028310(n)))` -/
def P6973343561193604984.Spec : Prop :=
  ∀ n, P6973343561193604984.a n = A072337 n

theorem P6973343561193604984.correct : P6973343561193604984.Spec := by
  intro n
  simp only [A072337]

end A072337

/-! ## A072337.P12300111322529593119

`C(2, n)+A032170(A028310(n))-A000007(n)`
-/

namespace A072337.P12300111322529593119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 n : ℤ) + (A032170 (A028310 n).toNat - A000007 n)

end

end A072337.P12300111322529593119

namespace A072337

/-- `C(2, n)+A032170(A028310(n))-A000007(n)` -/
def P12300111322529593119.Spec : Prop :=
  ∀ n, P12300111322529593119.a n = A072337 n

end A072337

/-! ## A072337.P8000463362663351406

`C(2, n)+A032170(A028310(n))%A356853(n)`
-/

namespace A072337.P8000463362663351406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 n : ℤ) + Int.tmod (A032170 (A028310 n).toNat) (A356853 n)

end

end A072337.P8000463362663351406

namespace A072337

/-- `C(2, n)+A032170(A028310(n))%A356853(n)` -/
def P8000463362663351406.Spec : Prop :=
  ∀ n, P8000463362663351406.a n = A072337 n

end A072337

/-! ## A072337.P7078086201770535841

`A051889(A087124(n)+A077602(n))`
-/

namespace A072337.P7078086201770535841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A087124 n + A077602 (n + 1)).toNat

end

end A072337.P7078086201770535841

namespace A072337

/-- `A051889(A087124(n)+A077602(n))` -/
def P7078086201770535841.Spec : Prop :=
  ∀ n, P7078086201770535841.a n = A072337 n

end A072337

/-!
# A072338: EULER transform of A002620 (with the initial 0,0,1 omitted).

The programs for A072338, there is no canonical definition to state claims against.
-/

/-! ## A072338.P17266839464096342696

`A022726(n)-A185234(A114656(n+1))`
-/

namespace A072338.P17266839464096342696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022726 n - A185234 (A114656 (n + 1)).toNat

end

end A072338.P17266839464096342696

/-! ## A072338.P13150706351810238972

`A003987(6^n-n)`
-/

namespace A072338.P13150706351810238972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (6 ^ n - n)

end

end A072338.P13150706351810238972

/-!
# A072339: Any number n can be written (in two ways, one with m even and one with m odd) in the form n = 2^k_1 - 2^k_2 + 2^k_3 - ... + 2^k_m where the signs alternate and k_1 > k_2 > k_3 > ... >k_m >= 0; sequence gives minimal value of m.

The programs for A072339, the canonical program `A072339.P14610231955541927541` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072339 has offset 1).

The definition of A072339 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072339.P14610231955541927541

`A069010(n+1)+A069010(2*(n+1)-1)-1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A072339

/-- `A069010(n+1)+A069010(2*(n+1)-1)-1` -/
def P14610231955541927541.Spec : Prop :=
  ∀ n, P14610231955541927541.a n = A072339 (n + 1)

theorem P14610231955541927541.correct : P14610231955541927541.Spec := by
  intro n
  simp only [A072339, Nat.add_sub_cancel]

end A072339

/-! ## A072339.P1553557955117950265

`A088748(floor(n/(xor(n, n+1)+1)))`
-/

namespace A072339.P1553557955117950265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat

end

end A072339.P1553557955117950265

namespace A072339

/-- `A088748(floor(n/(xor(n, n+1)+1)))` -/
def P1553557955117950265.Spec : Prop :=
  ∀ n, P1553557955117950265.a n = A072339 (n + 1)

end A072339

/-! ## A072339.P10054925907910229526

`A088748(floor(n/2^val(n+1, 2))/2)`
-/

namespace A072339.P10054925907910229526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (SequenceMachineLib.roundAway ((⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ : ℚ) / 2)).toNat

end

end A072339.P10054925907910229526

namespace A072339

/-- `A088748(floor(n/2^val(n+1, 2))/2)` -/
def P10054925907910229526.Spec : Prop :=
  ∀ n, P10054925907910229526.a n = A072339 (n + 1)

end A072339

/-! ## A072339.P3385811338257338410

`A005811(floor(n/(xor(n, n+1)+1)))+1`
-/

namespace A072339.P3385811338257338410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat + 1

end

end A072339.P3385811338257338410

namespace A072339

/-- `A005811(floor(n/(xor(n, n+1)+1)))+1` -/
def P3385811338257338410.Spec : Prop :=
  ∀ n, P3385811338257338410.a n = A072339 (n + 1)

end A072339

/-! ## A072339.P11179336981255261553

`A005811(round(n/(xor(n, n+1)+1)))+1`
-/

namespace A072339.P11179336981255261553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (SequenceMachineLib.roundAway ((n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ))).toNat + 1

end

end A072339.P11179336981255261553

namespace A072339

/-- `A005811(round(n/(xor(n, n+1)+1)))+1` -/
def P11179336981255261553.Spec : Prop :=
  ∀ n, P11179336981255261553.a n = A072339 (n + 1)

end A072339

/-! ## A072339.P3108678061323407401

`A136004(floor(n/(xor(n, n+1)+1)))-3`
-/

namespace A072339.P3108678061323407401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136004 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat - 3

end

end A072339.P3108678061323407401

namespace A072339

/-- `A136004(floor(n/(xor(n, n+1)+1)))-3` -/
def P3108678061323407401.Spec : Prop :=
  ∀ n, P3108678061323407401.a n = A072339 (n + 1)

end A072339

/-! ## A072339.P17994817752527845160

`A072219(n+1)-char[or(n, n-1)+n]`
-/

namespace A072339.P17994817752527845160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072219 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A072339.P17994817752527845160

namespace A072339

/-- `A072219(n+1)-char[or(n, n-1)+n]` -/
def P17994817752527845160.Spec : Prop :=
  ∀ n, P17994817752527845160.a n = A072339 (n + 1)

end A072339

/-! ## A072339.P1217758922153675955

`or(1, A005811(n))-char[or(n, n-1)+n]`
-/

namespace A072339.P1217758922153675955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A005811 n) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A072339.P1217758922153675955

namespace A072339

/-- `or(1, A005811(n))-char[or(n, n-1)+n]` -/
def P1217758922153675955.Spec : Prop :=
  ∀ n, P1217758922153675955.a n = A072339 (n + 1)

end A072339

/-! ## A072339.P10755313364319205454

`char[or(n, n-1)+n]+or(1, A037834(n+1))`
-/

namespace A072339.P10755313364319205454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + Int.lor 1 (A037834 (n + 1))

end

end A072339.P10755313364319205454

namespace A072339

/-- `char[or(n, n-1)+n]+or(1, A037834(n+1))` -/
def P10755313364319205454.Spec : Prop :=
  ∀ n, P10755313364319205454.a n = A072339 (n + 1)

end A072339

/-! ## A072339.P8917023778789693086

`A005811((n+1)/and(n+1, -(n+1)))+1-char[and(n, n+1)+n]`
-/

namespace A072339.P8917023778789693086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat + (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A072339.P8917023778789693086

namespace A072339

/-- `A005811((n+1)/and(n+1, -(n+1)))+1-char[and(n, n+1)+n]` -/
def P8917023778789693086.Spec : Prop :=
  ∀ n, P8917023778789693086.a n = A072339 (n + 1)

end A072339

/-! ## A072339.P13602821292905553484

`A088748(A025480(n))`
-/

namespace A072339.P13602821292905553484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (A025480 n).toNat

end

end A072339.P13602821292905553484

namespace A072339

/-- `A088748(A025480(n))` -/
def P13602821292905553484.Spec : Prop :=
  ∀ n, P13602821292905553484.a n = A072339 (n + 1)

end A072339

/-! ## A072339.P5135740329730141417

`A382733(A000265(n+1))`
-/

namespace A072339.P5135740329730141417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382733 (A000265 (n + 1)).toNat

end

end A072339.P5135740329730141417

namespace A072339

/-- `A382733(A000265(n+1))` -/
def P5135740329730141417.Spec : Prop :=
  ∀ n, P5135740329730141417.a n = A072339 (n + 1)

end A072339

/-! ## A072339.P1846367978974762132

`A088748(A153733(n)/2)`
-/

namespace A072339.P1846367978974762132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (SequenceMachineLib.roundAway ((A153733 n : ℚ) / 2)).toNat

end

end A072339.P1846367978974762132

namespace A072339

/-- `A088748(A153733(n)/2)` -/
def P1846367978974762132.Spec : Prop :=
  ∀ n, P1846367978974762132.a n = A072339 (n + 1)

end A072339

/-! ## A072339.P7169061175989870404

`A069010(n+1)+A033264(n)`
-/

namespace A072339.P7169061175989870404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (n + 1) + A033264 n

end

end A072339.P7169061175989870404

namespace A072339

/-- `A069010(n+1)+A033264(n)` -/
def P7169061175989870404.Spec : Prop :=
  ∀ n, P7169061175989870404.a n = A072339 (n + 1)

end A072339

/-! ## A072339.P2790462669642300884

`A072219(n+1)-A014707(n)`
-/

namespace A072339.P2790462669642300884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072219 (n + 1) - A014707 n

end

end A072339.P2790462669642300884

namespace A072339

/-- `A072219(n+1)-A014707(n)` -/
def P2790462669642300884.Spec : Prop :=
  ∀ n, P2790462669642300884.a n = A072339 (n + 1)

end A072339

/-! ## A072339.P3123763649142629918

`A072219(n+1)-A038189(n+1)`
-/

namespace A072339.P3123763649142629918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072219 (n + 1) - A038189 (n + 1)

end

end A072339.P3123763649142629918

namespace A072339

/-- `A072219(n+1)-A038189(n+1)` -/
def P3123763649142629918.Spec : Prop :=
  ∀ n, P3123763649142629918.a n = A072339 (n + 1)

end A072339

/-! ## A072339.P10557318698519641810

`A069010(n+1)+A069010(A129760(n+1))`
-/

namespace A072339.P10557318698519641810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (n + 1) + A069010 (A129760 (n + 1)).toNat

end

end A072339.P10557318698519641810

namespace A072339

/-- `A069010(n+1)+A069010(A129760(n+1))` -/
def P10557318698519641810.Spec : Prop :=
  ∀ n, P10557318698519641810.a n = A072339 (n + 1)

end A072339

/-! ## A072339.P8117381963480543933

`A069010(n+1)+A005811(n)-A069010(n)`
-/

namespace A072339.P8117381963480543933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (n + 1) + (A005811 n - A069010 n)

end

end A072339.P8117381963480543933

namespace A072339

/-- `A069010(n+1)+A005811(n)-A069010(n)` -/
def P8117381963480543933.Spec : Prop :=
  ∀ n, P8117381963480543933.a n = A072339 (n + 1)

end A072339

/-! ## A072339.P5815879183599434789

`A000120(A122199(n+1))`
-/

namespace A072339.P5815879183599434789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A122199 (n + 1)).toNat

end

end A072339.P5815879183599434789

namespace A072339

/-- `A000120(A122199(n+1))` -/
def P5815879183599434789.Spec : Prop :=
  ∀ n, P5815879183599434789.a n = A072339 (n + 1)

end A072339

/-! ## A072339.P11585753209608950344

`A088748(2*n+1)-A014709(n)`
-/

namespace A072339.P11585753209608950344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (2 * n + 1) - A014709 n

end

end A072339.P11585753209608950344

namespace A072339

/-- `A088748(2*n+1)-A014709(n)` -/
def P11585753209608950344.Spec : Prop :=
  ∀ n, P11585753209608950344.a n = A072339 (n + 1)

end A072339

/-!
# A072341: a(n) = the least natural number k such that k*sigma(n) + 1 is prime.

The programs for A072341, there is no canonical definition to state claims against.
-/

/-! ## A072341.P11404071962163995480

`A034693(A000203(n+1))`
-/

namespace A072341.P11404071962163995480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A000203 (n + 1)).toNat

end

end A072341.P11404071962163995480

/-! ## A072341.P4720767096253524247

`A034693(∑{d}[n+1, #])`
-/

namespace A072341.P4720767096253524247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A072341.P4720767096253524247

/-! ## A072341.P12479209042827325172

`A034693(Δ[A160664(n)])`
-/

namespace A072341.P12479209042827325172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (f1 (n + 1) - f1 n).toNat

end

end A072341.P12479209042827325172

/-! ## A072341.P15157314404465547318

`A034693(A039653(n+1)+1)`
-/

namespace A072341.P15157314404465547318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A039653 (n + 1) + 1).toNat

end

end A072341.P15157314404465547318

/-! ## A072341.P9241047489302797685

`A034693(A245092(2*n+1))`
-/

namespace A072341.P9241047489302797685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A245092 (2 * n + 1)).toNat

end

end A072341.P9241047489302797685

/-! ## A072341.P14018693830628744782

`A034693(A001065(n+1)+1+n)`
-/

namespace A072341.P14018693830628744782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A072341.P14018693830628744782

/-! ## A072341.P8599925582839785573

`A034693(2*(n+1)-A033879(n+1))`
-/

namespace A072341.P8599925582839785573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 ((2 * (n + 1) : ℤ) - A033879 (n + 1)).toNat

end

end A072341.P8599925582839785573

/-!
# A072342: a(n) = the least natural number k such that k*reverse(n) + 1 is prime.

The programs for A072342, there is no canonical definition to state claims against.
-/

/-! ## A072342.P5840249742901666811

`A034693(A004086(n+1))`
-/

namespace A072342.P5840249742901666811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A004086 (n + 1)).toNat

end

end A072342.P5840249742901666811

/-! ## A072342.P10627392806652253466

`A034693(A056964(n+1)-(n+1))`
-/

namespace A072342.P10627392806652253466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A056964 (n + 1) - (n + 1 : ℤ)).toNat

end

end A072342.P10627392806652253466

/-! ## A072342.P15351965382316577784

`A034693(A135020(2*(n+1)))`
-/

namespace A072342.P15351965382316577784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A135020 (2 * (n + 1))).toNat

end

end A072342.P15351965382316577784

/-! ## A072342.P9749177345784433669

`A034693(A034704(n+1)%A034698(2*(n+1)))`
-/

namespace A072342.P9749177345784433669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (Int.tmod (A034704 (n + 1)) (A034698 (2 * (n + 1)))).toNat

end

end A072342.P9749177345784433669

/-!
# A072344: a(n) = the least natural number k such that k*phi(n) + 1 is prime.

The programs for A072344, there is no canonical definition to state claims against.
-/

/-! ## A072344.P7099039594293760677

`A034693(A000010(n+1))`
-/

namespace A072344.P7099039594293760677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A000010 (n + 1)).toNat

end

end A072344.P7099039594293760677

/-! ## A072344.P4377050965077493637

`A034693(Δ[A002088(n)])`
-/

namespace A072344.P4377050965077493637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (f1 (n + 1) - f1 n).toNat

end

end A072344.P4377050965077493637

/-! ## A072344.P2143201723073447514

`A034693(Δ[A005728(n)])`
-/

namespace A072344.P2143201723073447514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (f1 (n + 1) - f1 n).toNat

end

end A072344.P2143201723073447514

/-! ## A072344.P689277038584476831

`A034693(A109606(n+1)+1)`
-/

namespace A072344.P689277038584476831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A109606 (n + 1) + 1).toNat

end

end A072344.P689277038584476831

/-! ## A072344.P7091888163930004645

`A016014(floor((A000010(n+1)+1)/2))`
-/

namespace A072344.P7091888163930004645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 ⌊(A000010 (n + 1) + 1 : ℚ) / 2⌋.toNat

end

end A072344.P7091888163930004645

/-! ## A072344.P11412079218496220089

`A034693(A002088(n+1)-A002088(n))`
-/

namespace A072344.P11412079218496220089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A002088 (n + 1) - A002088 n).toNat

end

end A072344.P11412079218496220089

/-! ## A072344.P12605147823675261242

`A034693(A384710(n+1))`
-/

namespace A072344.P12605147823675261242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A384710 (n + 1)).toNat

end

end A072344.P12605147823675261242

/-! ## A072344.P2023998785559468613

`A034693(A225530(n+1))`
-/

namespace A072344.P2023998785559468613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A225530 (n + 1)).toNat

end

end A072344.P2023998785559468613

/-! ## A072344.P10244309333053721868

`A034693(A089929(2*(n+1)))`
-/

namespace A072344.P10244309333053721868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A089929 (2 * (n + 1))).toNat

end

end A072344.P10244309333053721868

/-! ## A072344.P18020518508237838461

`A026021(A039651(n+1)%A198453(n+1))`
-/

namespace A072344.P18020518508237838461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026021 (Int.tmod (A039651 (n + 1)) (A198453 (n + 1))).toNat

end

end A072344.P18020518508237838461

/-!
# A072345: Volume of n-dimensional sphere of radius r is V_n*r^n = Pi^(n/2)*r^n/(n/2)! = C_n*Pi^floor(n/2)*r^n; sequence gives numerator of C_n.

The programs for A072345, the canonical program `A072345.P14018415858760845876` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072345 has offset 0).

The definition of A072345 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072345.P14018415858760845876

`3*a(n-2)-2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=1, a(3)=4`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072345

/-- `3*a(n-2)-2*a(n-4)` -/
def P14018415858760845876.Spec : Prop :=
  ∀ n, P14018415858760845876.a n = A072345 n

theorem P14018415858760845876.correct : P14018415858760845876.Spec := by
  intro n
  simp only [A072345]

end A072345

/-! ## A072345.P14727396354780706587

`2^((n+1)/2)*(1-(-1)^n)/2+(1+(-1)^n)/2`
-/

namespace A072345.P14727396354780706587
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((n + 1 : ℚ) / 2 : ℝ) * (1 - (-1) ^ n : ℝ) / 2 + ((1 + (-1) ^ n : ℚ) / 2 : ℝ)

end

end A072345.P14727396354780706587

namespace A072345

/-- `2^((n+1)/2)*(1-(-1)^n)/2+(1+(-1)^n)/2` -/
def P14727396354780706587.Spec : Prop :=
  ∀ n, P14727396354780706587.a n = (A072345 n : ℝ)

end A072345

/-! ## A072345.P11521642687585271426

`2^(∑[n]%(n+1))`
-/

namespace A072345.P11521642687585271426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1))

end

end A072345.P11521642687585271426

namespace A072345

/-- `2^(∑[n]%(n+1))` -/
def P11521642687585271426.Spec : Prop :=
  ∀ n, (P11521642687585271426.a n : ℤ) = A072345 n

end A072345

/-! ## A072345.P10412361376088625065

`4^Δ[(or(1, n)/4)²]`
-/

namespace A072345.P10412361376088625065
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 n : ℚ) / 4) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (4 : ℝ) ^ (f1 (n + 1) - f1 n : ℝ)

end

end A072345.P10412361376088625065

namespace A072345

/-- `4^Δ[(or(1, n)/4)²]` -/
def P10412361376088625065.Spec : Prop :=
  ∀ n, P10412361376088625065.a n = (A072345 n : ℝ)

end A072345

/-! ## A072345.P5143972620977594182

`a(n-2)*a(n%2)` with `a(0)=1, a(1)=2`
-/

namespace A072345.P5143972620977594182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) * a (n % 2)

end

end A072345.P5143972620977594182

namespace A072345

/-- `a(n-2)*a(n%2)` -/
def P5143972620977594182.Spec : Prop :=
  ∀ n, (P5143972620977594182.a n : ℤ) = A072345 n

end A072345

/-! ## A072345.P8969229665442551122

`a(and(1, n))*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A072345.P8969229665442551122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (Nat.land 1 n) * a (n - 2)

end

end A072345.P8969229665442551122

namespace A072345

/-- `a(and(1, n))*a(n-2)` -/
def P8969229665442551122.Spec : Prop :=
  ∀ n, (P8969229665442551122.a n : ℤ) = A072345 n

end A072345

/-! ## A072345.P13501770624273650006

`ceil(2^∑[ogf(x/(1+2x+x^2))])`
-/

namespace A072345.P13501770624273650006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, 2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)⌉

end

end A072345.P13501770624273650006

namespace A072345

/-- `ceil(2^∑[ogf(x/(1+2x+x^2))])` -/
def P13501770624273650006.Spec : Prop :=
  ∀ n, P13501770624273650006.a n = A072345 n

end A072345

/-! ## A072345.P12502608209397781877

`ogf((1+2x-2x^2-2x^3)/(1-3x^2+2x^4))`
-/

namespace A072345.P12502608209397781877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -2, -2] [1, 0, -3, 0, 2] n

end

end A072345.P12502608209397781877

namespace A072345

/-- `ogf((1+2x-2x^2-2x^3)/(1-3x^2+2x^4))` -/
def P12502608209397781877.Spec : Prop :=
  ∀ n, P12502608209397781877.a n = A072345 n

end A072345

/-! ## A072345.P1978065146180426643

`gcd(2, n+1)*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A072345.P1978065146180426643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.gcd 2 (n + 1) * a (n - 2)

end

end A072345.P1978065146180426643

namespace A072345

/-- `gcd(2, n+1)*a(n-2)` -/
def P1978065146180426643.Spec : Prop :=
  ∀ n, (P1978065146180426643.a n : ℤ) = A072345 n

end A072345

/-! ## A072345.P12908489099557872607

`gcd(4, (n+1)²)^((n+1)/4)`
-/

namespace A072345.P12908489099557872607
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 4 ((n + 1) ^ 2) : ℝ) ^ ((n + 1 : ℚ) / 4 : ℝ)

end

end A072345.P12908489099557872607

namespace A072345

/-- `gcd(4, (n+1)²)^((n+1)/4)` -/
def P12908489099557872607.Spec : Prop :=
  ∀ n, P12908489099557872607.a n = (A072345 n : ℝ)

end A072345

/-! ## A072345.P15933716325829492582

`(2*and(1, n))!^((n+1)/2)`
-/

namespace A072345.P15933716325829492582
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * Nat.land 1 n) : ℝ) ^ ((n + 1 : ℚ) / 2 : ℝ)

end

end A072345.P15933716325829492582

namespace A072345

/-- `(2*and(1, n))!^((n+1)/2)` -/
def P15933716325829492582.Spec : Prop :=
  ∀ n, P15933716325829492582.a n = (A072345 n : ℝ)

end A072345

/-! ## A072345.P9474558356049575572

`∏[3-a(n-1)]/a(n-1)` with `a(0)=1`
-/

namespace A072345.P9474558356049575572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / a (n - 1)

end

end A072345.P9474558356049575572

namespace A072345

/-- `∏[3-a(n-1)]/a(n-1)` -/
def P9474558356049575572.Spec : Prop :=
  ∀ n, P9474558356049575572.a n = (A072345 n : ℚ)

end A072345

/-! ## A072345.P9650498883362615151

`(3-gcd(n, 4/2))*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A072345.P9650498883362615151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (3 - (Int.gcd (n : ℤ) (SequenceMachineLib.roundAway ((4 : ℚ) / 2)) : ℤ)) * a (n - 2)

end

end A072345.P9650498883362615151

namespace A072345

/-- `(3-gcd(n, 4/2))*a(n-2)` -/
def P9650498883362615151.Spec : Prop :=
  ∀ n, P9650498883362615151.a n = A072345 n

end A072345

/-! ## A072345.P2197082150489784474

`ceil(2/a(n-1)*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A072345.P2197082150489784474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌈2 / (a (n - 1) : ℚ) * (a (n - 2) : ℚ)⌉

end

end A072345.P2197082150489784474

namespace A072345

/-- `ceil(2/a(n-1)*a(n-2))` -/
def P2197082150489784474.Spec : Prop :=
  ∀ n, P2197082150489784474.a n = A072345 n

end A072345

/-! ## A072345.P3375828963754161475

`a(n-2)*(3-(-1)^n)/2` with `a(0)=1, a(1)=2`
-/

namespace A072345.P3375828963754161475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) * ((3 - (-1) ^ n : ℚ) / 2)

end

end A072345.P3375828963754161475

namespace A072345

/-- `a(n-2)*(3-(-1)^n)/2` -/
def P3375828963754161475.Spec : Prop :=
  ∀ n, P3375828963754161475.a n = (A072345 n : ℚ)

end A072345

/-! ## A072345.P13412022536072734339

`2^floor((n+1)/2)/a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A072345.P13412022536072734339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (2 : ℚ) ^ (⌊(n + 1 : ℚ) / 2⌋ : ℤ) / a (n - 1)

end

end A072345.P13412022536072734339

namespace A072345

/-- `2^floor((n+1)/2)/a(n-1)` -/
def P13412022536072734339.Spec : Prop :=
  ∀ n, P13412022536072734339.a n = (A072345 n : ℚ)

end A072345

/-! ## A072345.P13965775772586559352

`(∑[2-a(n-1)]-n)*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A072345.P13965775772586559352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)) * a (n - 2)

end

end A072345.P13965775772586559352

namespace A072345

/-- `(∑[2-a(n-1)]-n)*a(n-2)` -/
def P13965775772586559352.Spec : Prop :=
  ∀ n, P13965775772586559352.a n = A072345 n

end A072345

/-! ## A072345.P5406610615127365889

`floor(a(n-2)+a(n-2)/a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A072345.P5406610615127365889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(a (n - 2) : ℚ) + (a (n - 2) : ℚ) / (a (n - 1) : ℚ)⌋

end

end A072345.P5406610615127365889

namespace A072345

/-- `floor(a(n-2)+a(n-2)/a(n-1))` -/
def P5406610615127365889.Spec : Prop :=
  ∀ n, P5406610615127365889.a n = A072345 n

end A072345

/-! ## A072345.P12984586591798274973

`gcd(a(n-2)+a(n-2), 1-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A072345.P12984586591798274973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.gcd (a (n - 2) + a (n - 2) : ℤ) (1 - (a (n - 1) : ℤ))

end

end A072345.P12984586591798274973

namespace A072345

/-- `gcd(a(n-2)+a(n-2), 1-a(n-1))` -/
def P12984586591798274973.Spec : Prop :=
  ∀ n, (P12984586591798274973.a n : ℤ) = A072345 n

end A072345

/-! ## A072345.P1923574036217753450

`2^∑[A001057(n)]`
-/

namespace A072345.P1923574036217753450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A072345.P1923574036217753450

namespace A072345

/-- `2^∑[A001057(n)]` -/
def P1923574036217753450.Spec : Prop :=
  ∀ n, P1923574036217753450.a n = (A072345 n : ℚ)

end A072345

/-!
# A072346: Volume of n-dimensional sphere of radius r is V_n*r^n = Pi^(n/2)*r^n/(n/2)! = C_n*Pi^floor(n/2)*r^n; sequence gives denominator of C_n.

The programs for A072346, the canonical program `A072346.P3766421880552302429` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072346 has offset 0).

The definition of A072346 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072346.P3766421880552302429

`gcd(n, ∑[n])*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072346

/-- `gcd(n, ∑[n])*a(n-2)` -/
def P3766421880552302429.Spec : Prop :=
  ∀ n, (P3766421880552302429.a n : ℤ) = A072346 n

theorem P3766421880552302429.correct : P3766421880552302429.Spec := by
  intro n
  simp only [A072346]

end A072346

/-! ## A072346.P9227642948637458003

`lcm(2, n*a(n-2))/2` with `a(0)=1, a(1)=1`
-/

namespace A072346.P9227642948637458003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (Int.lcm 2 (SequenceMachineLib.roundAway ((n : ℚ) * a (n - 2))) : ℚ) / 2

end

end A072346.P9227642948637458003

namespace A072346

/-- `lcm(2, n*a(n-2))/2` -/
def P9227642948637458003.Spec : Prop :=
  ∀ n, P9227642948637458003.a n = (A072346 n : ℚ)

end A072346

/-! ## A072346.P10757432682832570127

`n/gcd(2, n²)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A072346.P10757432682832570127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℚ) / (Nat.gcd 2 (n ^ 2) : ℚ) * a (n - 2)

end

end A072346.P10757432682832570127

namespace A072346

/-- `n/gcd(2, n²)*a(n-2)` -/
def P10757432682832570127.Spec : Prop :=
  ∀ n, P10757432682832570127.a n = (A072346 n : ℚ)

end A072346

/-! ## A072346.P1262415602233691816

`(n-∑[n]%n)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A072346.P1262415602233691816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j) % n : ℕ) : ℤ)) * a (n - 2)

end

end A072346.P1262415602233691816

namespace A072346

/-- `(n-∑[n]%n)*a(n-2)` -/
def P1262415602233691816.Spec : Prop :=
  ∀ n, P1262415602233691816.a n = A072346 n

end A072346

/-! ## A072346.P8432963318503890276

`n/(2-n%2)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A072346.P8432963318503890276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℚ) / (2 - ((n % 2 : ℕ) : ℤ) : ℚ) * a (n - 2)

end

end A072346.P8432963318503890276

namespace A072346

/-- `n/(2-n%2)*a(n-2)` -/
def P8432963318503890276.Spec : Prop :=
  ∀ n, P8432963318503890276.a n = (A072346 n : ℚ)

end A072346

/-! ## A072346.P11963579616274113467

`gcd(A006882(n), A361522(n))`
-/

namespace A072346.P11963579616274113467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006882 n) (A361522 n)

end

end A072346.P11963579616274113467

namespace A072346

/-- `gcd(A006882(n), A361522(n))` -/
def P11963579616274113467.Spec : Prop :=
  ∀ n, (P11963579616274113467.a n : ℤ) = A072346 n

end A072346

/-! ## A072346.P3337531589060707036

`A075856(A055802(n+3))`
-/

namespace A072346.P3337531589060707036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075856 (A055802 (n + 3)).toNat

end

end A072346.P3337531589060707036

namespace A072346

/-- `A075856(A055802(n+3))` -/
def P3337531589060707036.Spec : Prop :=
  ∀ n, P3337531589060707036.a n = A072346 n

end A072346

/-!
# A072347: If n = pqr...st in binary, a(n) = value of continuant [p,q,r,...,s,t].

The programs for A072347, there is no canonical definition to state claims against.
-/

/-! ## A072347.P16006306025196960037

`A073300(record[A117966(n)])`
-/

namespace A072347.P16006306025196960037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073300 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072347.P16006306025196960037

/-! ## A072347.P12102150931104606044

`A073300(record[A338246(n)])`
-/

namespace A072347.P12102150931104606044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338246 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073300 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072347.P12102150931104606044

/-! ## A072347.P17833239301576936107

`A073300(A005836(n+1))`
-/

namespace A072347.P17833239301576936107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073300 (A005836 (n + 1)).toNat

end

end A072347.P17833239301576936107

/-! ## A072347.P17090047398694351181

`A073300(A003278(n+1)-1)`
-/

namespace A072347.P17090047398694351181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073300 (A003278 (n + 1) - 1).toNat

end

end A072347.P17090047398694351181

/-! ## A072347.P8016430432379336454

`A073300(record[A338241(n)])`
-/

namespace A072347.P8016430432379336454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073300 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072347.P8016430432379336454

/-! ## A072347.P8161330625815114813

`A073300(eq[n, A343754(2*n)])`
-/

namespace A072347.P8161330625815114813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343754 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073300 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A072347.P8161330625815114813

/-! ## A072347.P6291561409676732518

`A073300(A083096(n+1))`
-/

namespace A072347.P6291561409676732518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073300 (A083096 (n + 1)).toNat

end

end A072347.P6291561409676732518

/-!
# A072349: a(n) = m such that A064388(m) = n, or 0 if no such m exists.

The programs for A072349, there is no canonical definition to state claims against.
-/

/-! ## A072349.P12877925791954752880

`A044867(A044867(a(n-2)+1)+1)` with `a(0)=1, a(1)=4, a(2)=2`
-/

namespace A072349.P12877925791954752880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 2] fun n a =>
  A044867 (A044867 (a (n - 2) + 1).toNat + 1).toNat

end

end A072349.P12877925791954752880

/-!
# A072350: E.g.f. A(x) satisfies A(A(x)) = tan(x), where A(x) = Sum_{n>=1} a(n)*x^(2n-1)/(2n-1)!.

The programs for A072350, there is no canonical definition to state claims against.
-/

/-! ## A072350.P2225983990964100231

`A032458(n!)-1`
-/

namespace A072350.P2225983990964100231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032458 (Nat.factorial n) - 1

end

end A072350.P2225983990964100231

/-!
# A072351: Smallest n-digit Fibonacci number.

The programs for A072351, the canonical program `A072351.P18424034066306176343` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072351 has offset 1).

The definition of A072351 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072351.P18424034066306176343

`floor((1/2+ϕ^ceil((n*log(10)+1/2*log(5))/log(ϕ)))/sqrt(5))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072351

/-- `floor((1/2+ϕ^ceil((n*log(10)+1/2*log(5))/log(ϕ)))/sqrt(5))` -/
def P18424034066306176343.Spec : Prop :=
  ∀ n, P18424034066306176343.a n = A072351 (n + 1)

theorem P18424034066306176343.correct : P18424034066306176343.Spec := by
  intro n
  simp only [A072351, Nat.add_sub_cancel]

end A072351

/-! ## A072351.P17121870737364180630

`A000045(A072354(n+1))`
-/

namespace A072351.P17121870737364180630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A072354 (n + 1)).toNat

end

end A072351.P17121870737364180630

namespace A072351

/-- `A000045(A072354(n+1))` -/
def P17121870737364180630.Spec : Prop :=
  ∀ n, P17121870737364180630.a n = A072351 (n + 1)

end A072351

/-! ## A072351.P4216054345797978692

`A212804(A072354(n+1)+1)`
-/

namespace A072351.P4216054345797978692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A072354 (n + 1) + 1).toNat

end

end A072351.P4216054345797978692

namespace A072351

/-- `A212804(A072354(n+1)+1)` -/
def P4216054345797978692.Spec : Prop :=
  ∀ n, P4216054345797978692.a n = A072351 (n + 1)

end A072351

/-! ## A072351.P11085078137523840632

`A324969(A072354(n+1)+1)`
-/

namespace A072351.P11085078137523840632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (A072354 (n + 1) + 1).toNat

end

end A072351.P11085078137523840632

namespace A072351

/-- `A324969(A072354(n+1)+1)` -/
def P11085078137523840632.Spec : Prop :=
  ∀ n, P11085078137523840632.a n = A072351 (n + 1)

end A072351

/-! ## A072351.P4556694373896022812

`A053602(2*A072354(n+1))`
-/

namespace A072351.P4556694373896022812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * A072354 (n + 1)).toNat

end

end A072351.P4556694373896022812

namespace A072351

/-- `A053602(2*A072354(n+1))` -/
def P4556694373896022812.Spec : Prop :=
  ∀ n, P4556694373896022812.a n = A072351 (n + 1)

end A072351

/-! ## A072351.P11641787018065761649

`A000045(∑[A098842(n+1)]-A050815(n+1))`
-/

namespace A072351.P11641787018065761649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j - A050815 (n + 1)).toNat

end

end A072351.P11641787018065761649

namespace A072351

/-- `A000045(∑[A098842(n+1)]-A050815(n+1))` -/
def P11641787018065761649.Spec : Prop :=
  ∀ n, P11641787018065761649.a n = A072351 (n + 1)

end A072351

/-!
# A072352: a(n) is the largest n-digit Fibonacci number.

The programs for A072352, the canonical program `A072352.P11473744423060948537` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072352 has offset 1).

The definition of A072352 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072352.P11473744423060948537

`A000045(A072353(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A072352

/-- `A000045(A072353(n+1))` -/
def P11473744423060948537.Spec : Prop :=
  ∀ n, P11473744423060948537.a n = A072352 (n + 1)

theorem P11473744423060948537.correct : P11473744423060948537.Spec := by
  intro n
  simp only [A072352, Nat.add_sub_cancel]

end A072352

/-! ## A072352.P18307853834811319023

`A212804(A072354(n+2))`
-/

namespace A072352.P18307853834811319023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A072354 (n + 2)).toNat

end

end A072352.P18307853834811319023

namespace A072352

/-- `A212804(A072354(n+2))` -/
def P18307853834811319023.Spec : Prop :=
  ∀ n, P18307853834811319023.a n = A072352 (n + 1)

end A072352

/-! ## A072352.P3549448646386025882

`A000045(∑[A050815(n+1)])`
-/

namespace A072352.P3549448646386025882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A072352.P3549448646386025882

namespace A072352

/-- `A000045(∑[A050815(n+1)])` -/
def P3549448646386025882.Spec : Prop :=
  ∀ n, P3549448646386025882.a n = A072352 (n + 1)

end A072352

/-! ## A072352.P9208040698564921964

`A000045(A072354(n+2)-1)`
-/

namespace A072352.P9208040698564921964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A072354 (n + 2) - 1).toNat

end

end A072352.P9208040698564921964

namespace A072352

/-- `A000045(A072354(n+2)-1)` -/
def P9208040698564921964.Spec : Prop :=
  ∀ n, P9208040698564921964.a n = A072352 (n + 1)

end A072352

/-! ## A072352.P2207336986727584366

`A000045(A164018(2*(n+1)))`
-/

namespace A072352.P2207336986727584366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A164018 (2 * (n + 1))).toNat

end

end A072352.P2207336986727584366

namespace A072352

/-- `A000045(A164018(2*(n+1)))` -/
def P2207336986727584366.Spec : Prop :=
  ∀ n, P2207336986727584366.a n = A072352 (n + 1)

end A072352

/-! ## A072352.P16900250659673799404

`A000045(∑[A098842(n+1)]-1)`
-/

namespace A072352.P16900250659673799404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A072352.P16900250659673799404

namespace A072352

/-- `A000045(∑[A098842(n+1)]-1)` -/
def P16900250659673799404.Spec : Prop :=
  ∀ n, P16900250659673799404.a n = A072352 (n + 1)

end A072352

/-!
# A072353: a(n) is the index of the largest Fibonacci number containing n digits.

The programs for A072353, the canonical program `A072353.P4519683427399016429` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072353 has offset 1).

The definition of A072353 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072353.P4519683427399016429

`floor((n+1)*log(10)/log(ϕ)+log(5)/(2*log(ϕ)))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072353

/-- `floor((n+1)*log(10)/log(ϕ)+log(5)/(2*log(ϕ)))` -/
def P4519683427399016429.Spec : Prop :=
  ∀ n, P4519683427399016429.a n = A072353 (n + 1)

theorem P4519683427399016429.correct : P4519683427399016429.Spec := by
  intro n
  simp only [A072353, Nat.add_sub_cancel]

end A072353

/-! ## A072353.P16472279316636764625

`A072354(n+2)-1`
-/

namespace A072353.P16472279316636764625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072354 (n + 2) - 1

end

end A072353.P16472279316636764625

namespace A072353

/-- `A072354(n+2)-1` -/
def P16472279316636764625.Spec : Prop :=
  ∀ n, P16472279316636764625.a n = A072353 (n + 1)

end A072353

/-! ## A072353.P9105194110848577737

`∑[abs(Δ[A072354(n+1)])]`
-/

namespace A072353.P9105194110848577737
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072354 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072353.P9105194110848577737

namespace A072353

/-- `∑[abs(Δ[A072354(n+1)])]` -/
def P9105194110848577737.Spec : Prop :=
  ∀ n, P9105194110848577737.a n = A072353 (n + 1)

end A072353

/-! ## A072353.P2656206813519340652

`∑[A004185(Δ[A072354(n+1)])]`
-/

namespace A072353.P2656206813519340652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072354 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072353.P2656206813519340652

namespace A072353

/-- `∑[A004185(Δ[A072354(n+1)])]` -/
def P2656206813519340652.Spec : Prop :=
  ∀ n, P2656206813519340652.a n = A072353 (n + 1)

end A072353

/-! ## A072353.P10738010833906509559

`∑[A005349(Δ[A072354(n+1)])]`
-/

namespace A072353.P10738010833906509559
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072354 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072353.P10738010833906509559

namespace A072353

/-- `∑[A005349(Δ[A072354(n+1)])]` -/
def P10738010833906509559.Spec : Prop :=
  ∀ n, P10738010833906509559.a n = A072353 (n + 1)

end A072353

/-! ## A072353.P11769871706361572960

`∑[A031980(Δ[A072354(n+1)])]`
-/

namespace A072353.P11769871706361572960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072354 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031980 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072353.P11769871706361572960

namespace A072353

/-- `∑[A031980(Δ[A072354(n+1)])]` -/
def P11769871706361572960.Spec : Prop :=
  ∀ n, P11769871706361572960.a n = A072353 (n + 1)

end A072353

/-! ## A072353.P7933910139337945771

`∑[A072356(Δ[A072354(n+1)])]`
-/

namespace A072353.P7933910139337945771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072354 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072356 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072353.P7933910139337945771

namespace A072353

/-- `∑[A072356(Δ[A072354(n+1)])]` -/
def P7933910139337945771.Spec : Prop :=
  ∀ n, P7933910139337945771.a n = A072353 (n + 1)

end A072353

/-! ## A072353.P4109217341041930935

`∑[A050815(n+1)]`
-/

namespace A072353.P4109217341041930935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072353.P4109217341041930935

namespace A072353

/-- `∑[A050815(n+1)]` -/
def P4109217341041930935.Spec : Prop :=
  ∀ n, P4109217341041930935.a n = A072353 (n + 1)

end A072353

/-! ## A072353.P17801403077808113936

`∑[A098842(n+1)]-1`
-/

namespace A072353.P17801403077808113936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A072353.P17801403077808113936

namespace A072353

/-- `∑[A098842(n+1)]-1` -/
def P17801403077808113936.Spec : Prop :=
  ∀ n, P17801403077808113936.a n = A072353 (n + 1)

end A072353

/-! ## A072353.P10877709448917756186

`A164018(2*(n+1))`
-/

namespace A072353.P10877709448917756186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164018 (2 * (n + 1))

end

end A072353.P10877709448917756186

namespace A072353

/-- `A164018(2*(n+1))` -/
def P10877709448917756186.Spec : Prop :=
  ∀ n, P10877709448917756186.a n = A072353 (n + 1)

end A072353

/-! ## A072353.P14444815985940491415

`A164018(Δ[(n+1)²])-1`
-/

namespace A072353.P14444815985940491415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164018 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A072353.P14444815985940491415

namespace A072353

/-- `A164018(Δ[(n+1)²])-1` -/
def P14444815985940491415.Spec : Prop :=
  ∀ n, P14444815985940491415.a n = A072353 (n + 1)

end A072353

/-! ## A072353.P9495669042618442092

`lt[Δ[A008963(n)], 0]`
-/

namespace A072353.P9495669042618442092
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A072353.P9495669042618442092

namespace A072353

/-- `lt[Δ[A008963(n)], 0]` -/
def P9495669042618442092.Spec : Prop :=
  ∀ n, (P9495669042618442092.a n : ℤ) = A072353 (n + 1)

end A072353

/-! ## A072353.P478370308495835295

`A023443(A072354(n+2))`
-/

namespace A072353.P478370308495835295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A072354 (n + 2)).toNat

end

end A072353.P478370308495835295

namespace A072353

/-- `A023443(A072354(n+2))` -/
def P478370308495835295.Spec : Prop :=
  ∀ n, P478370308495835295.a n = A072353 (n + 1)

end A072353

/-! ## A072353.P7345596705126324574

`lt[A008963(n+1), A008963(n)]`
-/

namespace A072353.P7345596705126324574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072353.P7345596705126324574

namespace A072353

/-- `lt[A008963(n+1), A008963(n)]` -/
def P7345596705126324574.Spec : Prop :=
  ∀ n, (P7345596705126324574.a n : ℤ) = A072353 (n + 1)

end A072353

/-! ## A072353.P9145473463441948039

`eq[1, A060384(n+1)-A060384(n)]`
-/

namespace A072353.P9145473463441948039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (n + 1) - A060384 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072353.P9145473463441948039

namespace A072353

/-- `eq[1, A060384(n+1)-A060384(n)]` -/
def P9145473463441948039.Spec : Prop :=
  ∀ n, (P9145473463441948039.a n : ℤ) = A072353 (n + 1)

end A072353

/-! ## A072353.P16936663293295208879

`∩[A164018(n+1), A386760(n+1)]`
-/

namespace A072353.P16936663293295208879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072353.P16936663293295208879

namespace A072353

/-- `∩[A164018(n+1), A386760(n+1)]` -/
def P16936663293295208879.Spec : Prop :=
  ∀ n, (P16936663293295208879.a n : ℤ) = A072353 (n + 1)

end A072353

/-!
# A072354: a(n)-th Fibonacci number is the smallest Fibonacci number containing n digits.

The programs for A072354, there is no canonical definition to state claims against.
-/

/-! ## A072354.P13998402908024986222

`A050815(n)+a(n-1)` with `a(0)=1`
-/

namespace A072354.P13998402908024986222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A050815 n + a (n - 1)

end

end A072354.P13998402908024986222

/-! ## A072354.P2682670471364297834

`A072353(n+1)+1-A050815(n+1)`
-/

namespace A072354.P2682670471364297834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072353 (n + 1) + (1 - A050815 (n + 1))

end

end A072354.P2682670471364297834

/-! ## A072354.P861149346393564528

`∑[A098842(n+1)]-A050815(n+1)`
-/

namespace A072354.P861149346393564528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A050815 (n + 1)

end

end A072354.P861149346393564528

/-! ## A072354.P18405525703787259487

`record[(n+1)^(A060384(n+1)-A060384(n))]`
-/

namespace A072354.P18405525703787259487
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A060384 (n + 1) - A060384 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072354.P18405525703787259487

/-! ## A072354.P12586978193659062610

`A000194(A195058(2*n+1)-A176541(n+1))`
-/

namespace A072354.P12586978193659062610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A195058 (2 * n + 1) - A176541 (n + 1)).toNat

end

end A072354.P12586978193659062610

/-!
# A072356: a(n) = if n=p*q^2 for primes p<>q then q*p^2 else n.

The programs for A072356, there is no canonical definition to state claims against.
-/

/-! ## A072356.P9016498057783712626

`A069799(n+1)%A249120(A031285(n))`
-/

namespace A072356.P9016498057783712626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069799 (n + 1)) (A249120 (A031285 n).toNat)

end

end A072356.P9016498057783712626

/-! ## A072356.P8240519173801825210

`A295417(n+1)%A249120(A031285(n))`
-/

namespace A072356.P8240519173801825210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295417 (n + 1)) (A249120 (A031285 n).toNat)

end

end A072356.P8240519173801825210

/-!
# A072357: Cubefree nonsquares whose factorization into a product of primes contains exactly one square.

The programs for A072357, the canonical program `A072357.P5178513811147103073` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072357 has offset 1).

The definition of A072357 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9952 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072357.P5178513811147103073

`filter[A060687(n+1), A049240(#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A072357

/-- `filter[A060687(n+1), A049240(#)]` -/
def P5178513811147103073.Spec : Prop :=
  ∀ n, P5178513811147103073.a n = A072357 (n + 1)

theorem P5178513811147103073.correct : P5178513811147103073.Spec := by
  intro n
  simp only [A072357, Nat.add_sub_cancel]

end A072357

/-! ## A072357.P5139505482343434065

`filter[A060687(n+1), A355447(#)]`
-/

namespace A072357.P5139505482343434065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A072357.P5139505482343434065

namespace A072357

/-- `filter[A060687(n+1), A355447(#)]` -/
def P5139505482343434065.Spec : Prop :=
  ∀ n, P5139505482343434065.a n = A072357 (n + 1)

end A072357

/-! ## A072357.P15590823771457202496

`filter[A060687(n+1), A359475(#)]`
-/

namespace A072357.P15590823771457202496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A072357.P15590823771457202496

namespace A072357

/-- `filter[A060687(n+1), A359475(#)]` -/
def P15590823771457202496.Spec : Prop :=
  ∀ n, P15590823771457202496.a n = A072357 (n + 1)

end A072357

/-! ## A072357.P412509102999226459

`filter[A060687(n+1), A380458(#)]`
-/

namespace A072357.P412509102999226459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380458 (f1 j).toNat = 1) n)

end

end A072357.P412509102999226459

namespace A072357

/-- `filter[A060687(n+1), A380458(#)]` -/
def P412509102999226459.Spec : Prop :=
  ∀ n, P412509102999226459.a n = A072357 (n + 1)

end A072357

/-! ## A072357.P10720151202283856278

`filter[A060687(n+1), A389905(#)]`
-/

namespace A072357.P10720151202283856278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A072357.P10720151202283856278

namespace A072357

/-- `filter[A060687(n+1), A389905(#)]` -/
def P10720151202283856278.Spec : Prop :=
  ∀ n, P10720151202283856278.a n = A072357 (n + 1)

end A072357

/-! ## A072357.P17922877181599821592

`filter[A376249(n+1), A212793(#)]`
-/

namespace A072357.P17922877181599821592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A072357.P17922877181599821592

namespace A072357

/-- `filter[A376249(n+1), A212793(#)]` -/
def P17922877181599821592.Spec : Prop :=
  ∀ n, P17922877181599821592.a n = A072357 (n + 1)

end A072357

/-! ## A072357.P14446463544469071561

`filter[A376249(n+1), A355823(#)]`
-/

namespace A072357.P14446463544469071561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A072357.P14446463544469071561

namespace A072357

/-- `filter[A376249(n+1), A355823(#)]` -/
def P14446463544469071561.Spec : Prop :=
  ∀ n, P14446463544469071561.a n = A072357 (n + 1)

end A072357

/-! ## A072357.P3007835282277194880

`filter[A376249(n+1), A355825(#)]`
-/

namespace A072357.P3007835282277194880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355825 (f1 j).toNat = 1) n)

end

end A072357.P3007835282277194880

namespace A072357

/-- `filter[A376249(n+1), A355825(#)]` -/
def P3007835282277194880.Spec : Prop :=
  ∀ n, P3007835282277194880.a n = A072357 (n + 1)

end A072357

/-! ## A072357.P2315229941592259166

`filter[A376249(n+1), A359429(#)]`
-/

namespace A072357.P2315229941592259166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A072357.P2315229941592259166

namespace A072357

/-- `filter[A376249(n+1), A359429(#)]` -/
def P2315229941592259166.Spec : Prop :=
  ∀ n, P2315229941592259166.a n = A072357 (n + 1)

end A072357

/-! ## A072357.P14276981754531913819

`filter[A376249(n+1), A359466(#)]`
-/

namespace A072357.P14276981754531913819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A072357.P14276981754531913819

namespace A072357

/-- `filter[A376249(n+1), A359466(#)]` -/
def P14276981754531913819.Spec : Prop :=
  ∀ n, P14276981754531913819.a n = A072357 (n + 1)

end A072357

/-! ## A072357.P15387731361633423156

`filter[A376249(n+1), A359471(#)]`
-/

namespace A072357.P15387731361633423156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A072357.P15387731361633423156

namespace A072357

/-- `filter[A376249(n+1), A359471(#)]` -/
def P15387731361633423156.Spec : Prop :=
  ∀ n, P15387731361633423156.a n = A072357 (n + 1)

end A072357

/-! ## A072357.P15223512991020330639

`filter[A376249(n+1), A359474(#)]`
-/

namespace A072357.P15223512991020330639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A072357.P15223512991020330639

namespace A072357

/-- `filter[A376249(n+1), A359474(#)]` -/
def P15223512991020330639.Spec : Prop :=
  ∀ n, P15223512991020330639.a n = A072357 (n + 1)

end A072357

/-! ## A072357.P15862008592715219368

`filter[A376249(n+1), A359475(#)]`
-/

namespace A072357.P15862008592715219368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A072357.P15862008592715219368

namespace A072357

/-- `filter[A376249(n+1), A359475(#)]` -/
def P15862008592715219368.Spec : Prop :=
  ∀ n, P15862008592715219368.a n = A072357 (n + 1)

end A072357

/-! ## A072357.P8011451138842576601

`filter[A386684(n+1), A359466(#)]`
-/

namespace A072357.P8011451138842576601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A072357.P8011451138842576601

namespace A072357

/-- `filter[A386684(n+1), A359466(#)]` -/
def P8011451138842576601.Spec : Prop :=
  ∀ n, P8011451138842576601.a n = A072357 (n + 1)

end A072357

/-! ## A072357.P15959331852368059521

`filter[A386684(n+1), A359471(#)]`
-/

namespace A072357.P15959331852368059521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A072357.P15959331852368059521

namespace A072357

/-- `filter[A386684(n+1), A359471(#)]` -/
def P15959331852368059521.Spec : Prop :=
  ∀ n, P15959331852368059521.a n = A072357 (n + 1)

end A072357

/-! ## A072357.P3442099001124845858

`filter[A386684(n+1), A359474(#)]`
-/

namespace A072357.P3442099001124845858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A072357.P3442099001124845858

namespace A072357

/-- `filter[A386684(n+1), A359474(#)]` -/
def P3442099001124845858.Spec : Prop :=
  ∀ n, P3442099001124845858.a n = A072357 (n + 1)

end A072357

/-! ## A072357.P5496092006873477370

`filter[A386684(n+1), A359475(#)]`
-/

namespace A072357.P5496092006873477370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A072357.P5496092006873477370

namespace A072357

/-- `filter[A386684(n+1), A359475(#)]` -/
def P5496092006873477370.Spec : Prop :=
  ∀ n, P5496092006873477370.a n = A072357 (n + 1)

end A072357

/-! ## A072357.P2371998117647760513

`filter[A391023(n+1), A359466(#)]`
-/

namespace A072357.P2371998117647760513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A072357.P2371998117647760513

namespace A072357

/-- `filter[A391023(n+1), A359466(#)]` -/
def P2371998117647760513.Spec : Prop :=
  ∀ n, P2371998117647760513.a n = A072357 (n + 1)

end A072357

/-! ## A072357.P9670568950004154012

`filter[A391023(n+1), A359471(#)]`
-/

namespace A072357.P9670568950004154012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A072357.P9670568950004154012

namespace A072357

/-- `filter[A391023(n+1), A359471(#)]` -/
def P9670568950004154012.Spec : Prop :=
  ∀ n, P9670568950004154012.a n = A072357 (n + 1)

end A072357

/-! ## A072357.P13383486175560461504

`filter[A391023(n+1), A359474(#)]`
-/

namespace A072357.P13383486175560461504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A072357.P13383486175560461504

namespace A072357

/-- `filter[A391023(n+1), A359474(#)]` -/
def P13383486175560461504.Spec : Prop :=
  ∀ n, P13383486175560461504.a n = A072357 (n + 1)

end A072357

/-!
# A072358: Number of cubefree numbers <= n which are not squarefree.

The programs for A072358, the canonical program `A072358.P17985313231785458440` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072358 has offset 1).

The definition of A072358 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013928, A060431, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A072358.P17985313231785458440

`A060431(n+1)-A013928(n+2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A072358

/-- `A060431(n+1)-A013928(n+2)` -/
def P17985313231785458440.Spec : Prop :=
  ∀ n, P17985313231785458440.a n = A072358 (n + 1)

theorem P17985313231785458440.correct : P17985313231785458440.Spec := by
  intro n
  simp only [A072358, Nat.add_sub_cancel]

end A072358

/-! ## A072358.P7750908311081699297

`∑[A359429(n+1)]`
-/

namespace A072358.P7750908311081699297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072358.P7750908311081699297

namespace A072358

/-- `∑[A359429(n+1)]` -/
def P7750908311081699297.Spec : Prop :=
  ∀ n, P7750908311081699297.a n = A072358 (n + 1)

end A072358

/-! ## A072358.P11638897653318865280

`∑[char[A067259(n+1)-1]]`
-/

namespace A072358.P11638897653318865280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072358.P11638897653318865280

namespace A072358

/-- `∑[char[A067259(n+1)-1]]` -/
def P11638897653318865280.Spec : Prop :=
  ∀ n, (P11638897653318865280.a n : ℤ) = A072358 (n + 1)

end A072358

/-! ## A072358.P16712409277952139193

`∑[and(2, A292589(n+1))/2]`
-/

namespace A072358.P16712409277952139193
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A292589 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072358.P16712409277952139193

namespace A072358

/-- `∑[and(2, A292589(n+1))/2]` -/
def P16712409277952139193.Spec : Prop :=
  ∀ n, P16712409277952139193.a n = (A072358 (n + 1) : ℚ)

end A072358

/-! ## A072358.P12371969917693364755

`∑[A088808(A051903(n+1))%2]`
-/

namespace A072358.P12371969917693364755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088808 (A051903 (n + 1)).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072358.P12371969917693364755

namespace A072358

/-- `∑[A088808(A051903(n+1))%2]` -/
def P12371969917693364755.Spec : Prop :=
  ∀ n, P12371969917693364755.a n = A072358 (n + 1)

end A072358

/-! ## A072358.P5731198175824189918

`∑[val(A014963(A000688(n+1)), 2)]`
-/

namespace A072358.P5731198175824189918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A014963 (A000688 (n + 1)).toNat).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072358.P5731198175824189918

namespace A072358

/-- `∑[val(A014963(A000688(n+1)), 2)]` -/
def P5731198175824189918.Spec : Prop :=
  ∀ n, (P5731198175824189918.a n : ℤ) = A072358 (n + 1)

end A072358

/-! ## A072358.P11332745282343873821

`∑[A008966(A003557(n+1))-A008966(n+1)]`
-/

namespace A072358.P11332745282343873821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A003557 (n + 1)).toNat - A008966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072358.P11332745282343873821

namespace A072358

/-- `∑[A008966(A003557(n+1))-A008966(n+1)]` -/
def P11332745282343873821.Spec : Prop :=
  ∀ n, P11332745282343873821.a n = A072358 (n + 1)

end A072358

/-! ## A072358.P7437865114458802572

`∑[A008683(A008834(n+1))-A008683(n+1)²]`
-/

namespace A072358.P7437865114458802572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008834 (n + 1)).toNat - A008683 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072358.P7437865114458802572

namespace A072358

/-- `∑[A008683(A008834(n+1))-A008683(n+1)²]` -/
def P7437865114458802572.Spec : Prop :=
  ∀ n, P7437865114458802572.a n = A072358 (n + 1)

end A072358

/-! ## A072358.P6856262019211269897

`∑[A014963(A256688(n+1))-1]`
-/

namespace A072358.P6856262019211269897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A256688 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072358.P6856262019211269897

namespace A072358

/-- `∑[A014963(A256688(n+1))-1]` -/
def P6856262019211269897.Spec : Prop :=
  ∀ n, P6856262019211269897.a n = A072358 (n + 1)

end A072358

/-! ## A072358.P1448699307673214927

`∑[log2(A014963(∏{e}[n+1, #!]))]`
-/

namespace A072358.P1448699307673214927
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A014963 (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p)) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072358.P1448699307673214927

namespace A072358

/-- `∑[log2(A014963(∏{e}[n+1, #!]))]` -/
def P1448699307673214927.Spec : Prop :=
  ∀ n, P1448699307673214927.a n = (A072358 (n + 1) : ℝ)

end A072358

/-! ## A072358.P5487865493882871938

`∑[A174282(A112624(n+1))]`
-/

namespace A072358.P5487865493882871938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174282 (A112624 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072358.P5487865493882871938

namespace A072358

/-- `∑[A174282(A112624(n+1))]` -/
def P5487865493882871938.Spec : Prop :=
  ∀ n, P5487865493882871938.a n = A072358 (n + 1)

end A072358

/-!
# A072360: One-sixth the area of the smallest primitive d-arithmetic triangle, where d=A072330(n).

The programs for A072360, there is no canonical definition to state claims against.
-/

/-! ## A072360.P4290306614286416293

`A089019(n+1)/2*A089020(n+1)`
-/

namespace A072360.P4290306614286416293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089019 (n + 1) : ℚ) / 2 * (A089020 (n + 1) : ℚ)

end

end A072360.P4290306614286416293

/-! ## A072360.P5480573171190671141

`A086909(n+1)/4*A089020(n+1)`
-/

namespace A072360.P5480573171190671141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086909 (n + 1) : ℚ) / 4 * (A089020 (n + 1) : ℚ)

end

end A072360.P5480573171190671141

/-! ## A072360.P8948745311299005119

`A014682(A089019(n+1)*A089020(n+1))`
-/

namespace A072360.P8948745311299005119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A089019 (n + 1) * A089020 (n + 1)).toNat

end

end A072360.P8948745311299005119

/-! ## A072360.P16464443774658359504

`A014682(lcm(A089019(n+1), A089020(n+1)))`
-/

namespace A072360.P16464443774658359504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.lcm (A089019 (n + 1)) (A089020 (n + 1)))

end

end A072360.P16464443774658359504

/-! ## A072360.P5729814359945084973

`A014682((A096672(n+1)+A072330(n+1))/2*A089020(n+1))`
-/

namespace A072360.P5729814359945084973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.roundAway ((A096672 (n + 1) + A072330 (n + 1) : ℚ) / 2 * (A089020 (n + 1) : ℚ))).toNat

end

end A072360.P5729814359945084973

/-! ## A072360.P17683690211491533315

`A089020(n+1)/6*A096674(n+1)`
-/

namespace A072360.P17683690211491533315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089020 (n + 1) : ℚ) / 6 * (A096674 (n + 1) : ℚ)

end

end A072360.P17683690211491533315

/-!
# A072361: Number of vertically indecomposable distributive lattices on n nodes.

The programs for A072361, there is no canonical definition to state claims against.
-/

/-! ## A072361.P5872206273439287165

`and(A180493(A180482(n+4)), A180501(n))`
-/

namespace A072361.P5872206273439287165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A180493 (A180482 (n + 4)).toNat) (A180501 n)

end

end A072361.P5872206273439287165

/-! ## A072361.P8865088595729769022

`A321936(A184198(3*n))+A321378(3*n+1)`
-/

namespace A072361.P8865088595729769022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321936 (A184198 (3 * n)).toNat + A321378 (3 * n + 1)

end

end A072361.P8865088595729769022

/-!
# A072363: Composite numbers whose sum of divisors is palindromic.

The programs for A072363, there is no canonical definition to state claims against.
-/

/-! ## A072363.P7350846571989548767

`filter[A028980(n+1), A066247(#)]`
-/

namespace A072363.P7350846571989548767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A072363.P7350846571989548767

/-! ## A072363.P6740191832679633957

`filter[A028980(n+2), A005171(#)]`
-/

namespace A072363.P6740191832679633957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028980 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A072363.P6740191832679633957

/-! ## A072363.P9576338971900413602

`∩[A002808(n+1), A028980(n+1)]`
-/

namespace A072363.P9576338971900413602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072363.P9576338971900413602

/-! ## A072363.P2301190693325246812

`∩[A141468(n+1), A028980(n+2)]`
-/

namespace A072363.P2301190693325246812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028980 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072363.P2301190693325246812

/-! ## A072363.P10596877649567232258

`∩[A028980(A020705(n)), A002808(n+1)]`
-/

namespace A072363.P10596877649567232258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028980 (A020705 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072363.P10596877649567232258

/-! ## A072363.P7640585720785660413

`∩[A028980(n+1), A078542(n+1)]`
-/

namespace A072363.P7640585720785660413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072363.P7640585720785660413

/-! ## A072363.P3960902279607432669

`∩[A028980(n+1), A391939(n+1)]`
-/

namespace A072363.P3960902279607432669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072363.P3960902279607432669

/-!
# A072364: Decimal expansion of (1/e)^(1/e).

The programs for A072364, there is no canonical definition to state claims against.
-/

/-! ## A072364.P13384548068920682464

`9-A397014(n)`
-/

namespace A072364.P13384548068920682464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A397014 n

end

end A072364.P13384548068920682464

/-!
# A072366: Numbers x such that x + reverse of x is a prime.

The programs for A072366, there is no canonical definition to state claims against.
-/

/-! ## A072366.P9123213333186736256

`eq[0, A007920(A056964(n))]`
-/

namespace A072366.P9123213333186736256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A056964 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072366.P9123213333186736256

/-! ## A072366.P1138698223545539137

`eq[1, A003415(A004086(n)+n)]`
-/

namespace A072366.P1138698223545539137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A004086 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072366.P1138698223545539137

/-! ## A072366.P12659538416748899359

`eq[1, A032741(A004086(n)+n)]`
-/

namespace A072366.P12659538416748899359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A004086 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072366.P12659538416748899359

/-! ## A072366.P7381142833601863152

`eq[1, A074206(A004086(n)+n)]`
-/

namespace A072366.P7381142833601863152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A004086 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072366.P7381142833601863152

/-! ## A072366.P10495743686946739533

`eq[1, A078898(A004086(n)+n)]`
-/

namespace A072366.P10495743686946739533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A004086 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072366.P10495743686946739533

/-! ## A072366.P15194604713468635794

`eq[1, A104725(A004086(n)+n)]`
-/

namespace A072366.P15194604713468635794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 (A004086 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072366.P15194604713468635794

/-! ## A072366.P6735402142983950467

`eq[1, A105700(A004086(n)+n)]`
-/

namespace A072366.P6735402142983950467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A004086 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072366.P6735402142983950467

/-! ## A072366.P8048831994349225997

`eq[2, A092976(A004086(n)+n)]`
-/

namespace A072366.P8048831994349225997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 (A004086 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072366.P8048831994349225997

/-! ## A072366.P10210189600270202567

`eq[2, A225244(A004086(n)+n)]`
-/

namespace A072366.P10210189600270202567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 (A004086 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072366.P10210189600270202567

/-! ## A072366.P12746310240529757753

`record[(n+1)%A014963(A056964(n+1))]`
-/

namespace A072366.P12746310240529757753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A014963 (A056964 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072366.P12746310240529757753

/-! ## A072366.P6928069399249048444

`lt[A000005(A004086(n+1)+1+n), 3]+1`
-/

namespace A072366.P6928069399249048444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A004086 (n + 1) + 1 + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A072366.P6928069399249048444

/-! ## A072366.P10954776880525435486

`record[(n+1)/A051953(A004086(n+1)+n+1)]`
-/

namespace A072366.P10954776880525435486
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A051953 (A004086 (n + 1) + (n : ℤ) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072366.P10954776880525435486

/-! ## A072366.P12779359162892132848

`eq[A040002(n), A048785(A056964(n))]`
-/

namespace A072366.P12779359162892132848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (A056964 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072366.P12779359162892132848

/-! ## A072366.P12638032009271986494

`eq[2, A000005(A028310(A004086(n)+n))]`
-/

namespace A072366.P12638032009271986494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 (A004086 n + (n : ℤ)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072366.P12638032009271986494

/-! ## A072366.P17641877856701379409

`lt[A055672(n), A055672(A004086(n)+n)]`
-/

namespace A072366.P17641877856701379409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (A004086 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072366.P17641877856701379409

/-! ## A072366.P9178772990680684069

`record[A014963(A056964(n+1))-A004086(n+1)]`
-/

namespace A072366.P9178772990680684069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A056964 (n + 1)).toNat - A004086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072366.P9178772990680684069

/-!
# A072367: Squares x such that x + reverse of x is a prime.

The programs for A072367, there is no canonical definition to state claims against.
-/

/-! ## A072367.P14071307777003185016

`A177948(n+1)²`
-/

namespace A072367.P14071307777003185016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177948 (n + 1) ^ 2

end

end A072367.P14071307777003185016

/-! ## A072367.P17160282912750033002

`A177948(C(n+1, n))^2`
-/

namespace A072367.P17160282912750033002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177948 (Nat.choose (n + 1) n) ^ 2

end

end A072367.P17160282912750033002

/-! ## A072367.P16204661544845525658

`A002620(2*A177948(n+1))`
-/

namespace A072367.P16204661544845525658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A177948 (n + 1)).toNat

end

end A072367.P16204661544845525658

/-! ## A072367.P6640094152451105456

`A008794(2*A177948(n+1))`
-/

namespace A072367.P6640094152451105456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (2 * A177948 (n + 1)).toNat

end

end A072367.P6640094152451105456

/-! ## A072367.P18105195119574616541

`A177948(A000027(n+1))^2`
-/

namespace A072367.P18105195119574616541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177948 (A000027 (n + 1)).toNat ^ 2

end

end A072367.P18105195119574616541

/-!
# A072368: Minimal total volume of n bricks with integer sides, all sides being different. Lowest value of sum of products of triples p*q*r chosen from [1,3n].

The programs for A072368, there is no canonical definition to state claims against.
-/

/-! ## A072368.P10602335713258299551

`A331889(∑[n+2]+4)`
-/

namespace A072368.P10602335713258299551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331889 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A072368.P10602335713258299551

/-!
# A072370: Numbers n such that tau(n) = log(n) + 2 * EulerGamma - 1 (rounded off), where tau(n) denotes the number of divisors of n and EulerGamma denotes the Euler-Mascheroni constant (0.5 is rounded to 0).

The programs for A072370, there is no canonical definition to state claims against.
-/

/-! ## A072370.P6944726683159496795

`∩[A135773(n+1), A384321(n+1)]`
-/

namespace A072370.P6944726683159496795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072370.P6944726683159496795

/-! ## A072370.P3305836603656976948

`eq[A036561(A104725(n)), A038605(n+1)]`
-/

namespace A072370.P3305836603656976948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (A104725 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072370.P3305836603656976948

/-! ## A072370.P2056698434333252794

`∩[A067289(n+1), A088331(n+1)]`
-/

namespace A072370.P2056698434333252794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072370.P2056698434333252794

/-! ## A072370.P1383371267759088005

`∩[A067289(n+1), A167520(n+1)]`
-/

namespace A072370.P1383371267759088005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072370.P1383371267759088005

/-! ## A072370.P14565949419865375510

`∩[A067289(n+1), A340745(n+1)]`
-/

namespace A072370.P14565949419865375510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072370.P14565949419865375510

/-!
# A072371: a(0) = 0, a(1) = 1, a(n+1) = 2*a(n) + (2*n-1)^2*a(n-1).

The programs for A072371, there is no canonical definition to state claims against.
-/

/-! ## A072371.P14329768552341366262

`A330797(n)+(2*n-1)*a(n-1)` with `a(0)=1`
-/

namespace A072371.P14329768552341366262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A330797 n + ((2 * n : ℤ) - 1) * a (n - 1)

end

end A072371.P14329768552341366262

/-! ## A072371.P5349057558004956718

`A024199(n)+A001147(n)`
-/

namespace A072371.P5349057558004956718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024199 n + A001147 n

end

end A072371.P5349057558004956718

/-! ## A072371.P8497367245461455744

`A024199(n)+A001497(∑[n])`
-/

namespace A072371.P8497367245461455744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024199 n + A001497 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A072371.P8497367245461455744

/-! ## A072371.P4813324612455877125

`A028338(∑[n])+A024199(n)`
-/

namespace A072371.P4813324612455877125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028338 (∑ j ∈ Finset.range (n + 1), f1 j) + A024199 n

end

end A072371.P4813324612455877125

/-! ## A072371.P11414371409426253625

`A053979(∑[n])+A024199(n)`
-/

namespace A072371.P11414371409426253625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053979 (∑ j ∈ Finset.range (n + 1), f1 j) + A024199 n

end

end A072371.P11414371409426253625

/-! ## A072371.P1190469288524980862

`A024200(n)+2*A024199(n)`
-/

namespace A072371.P1190469288524980862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024200 n + 2 * A024199 n

end

end A072371.P1190469288524980862

/-! ## A072371.P16644569964437438306

`A055634(2*n)+A024199(n)`
-/

namespace A072371.P16644569964437438306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055634 (2 * n) + A024199 n

end

end A072371.P16644569964437438306

/-! ## A072371.P12067244532888972701

`2*A001147(n)-A024200(n)`
-/

namespace A072371.P12067244532888972701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001147 n - A024200 n

end

end A072371.P12067244532888972701

/-!
# A072372: a(0) = 1, a(1) = 1, a(n) = 2*a(n-1) + (2*n-1)^2*a(n-2) for n > 1.

The programs for A072372, the canonical program `A072372.P2442177460960478517` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072372 has offset 0).

The definition of A072372 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+(2*n-1)²*a(n-2)` (program `A072372.P2442177460960478517`, by `A072372.P2442177460960478517.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A072372.P2442177460960478517

`2*a(n-1)+(2*n-1)²*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072372

/-- `2*a(n-1)+(2*n-1)²*a(n-2)` -/
def P2442177460960478517.Spec : Prop :=
  ∀ n, P2442177460960478517.a n = A072372 n

theorem P2442177460960478517.correct : P2442177460960478517.Spec := by
  intro n
  simp only [A072372]

end A072372

/-! ## A072372.P6172112276395904213

`A024199(n+1)-A024200(n+1)`
-/

namespace A072372.P6172112276395904213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024199 (n + 1) - A024200 (n + 1)

end

end A072372.P6172112276395904213

namespace A072372

/-- `A024199(n+1)-A024200(n+1)` -/
def P6172112276395904213.Spec : Prop :=
  ∀ n, P6172112276395904213.a n = A072372 n

end A072372

/-! ## A072372.P5745893788748312200

`2*A024199(n+1)-A001147(n+1)`
-/

namespace A072372.P5745893788748312200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024199 (n + 1) - A001147 (n + 1)

end

end A072372.P5745893788748312200

namespace A072372

/-- `2*A024199(n+1)-A001147(n+1)` -/
def P5745893788748312200.Spec : Prop :=
  ∀ n, P5745893788748312200.a n = A072372 n

end A072372

/-! ## A072372.P4168162255313849316

`A001147(n+1)-2*A024200(n+1)`
-/

namespace A072372.P4168162255313849316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (n + 1) - 2 * A024200 (n + 1)

end

end A072372.P4168162255313849316

namespace A072372

/-- `A001147(n+1)-2*A024200(n+1)` -/
def P4168162255313849316.Spec : Prop :=
  ∀ n, P4168162255313849316.a n = A072372 n

end A072372

/-! ## A072372.P1066837413453432912

`A055634(2*n+1)+2*A024199(n+1)`
-/

namespace A072372.P1066837413453432912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055634 (2 * n + 1) + 2 * A024199 (n + 1)

end

end A072372.P1066837413453432912

namespace A072372

/-- `A055634(2*n+1)+2*A024199(n+1)` -/
def P1066837413453432912.Spec : Prop :=
  ∀ n, P1066837413453432912.a n = A072372 n

end A072372

/-! ## A072372.P3904758800812373835

`A167584(A000124(n))-A024200(n+1)`
-/

namespace A072372.P3904758800812373835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167584 (A000124 n).toNat - A024200 (n + 1)

end

end A072372.P3904758800812373835

namespace A072372

/-- `A167584(A000124(n))-A024200(n+1)` -/
def P3904758800812373835.Spec : Prop :=
  ∀ n, P3904758800812373835.a n = A072372 n

end A072372

/-!
# A072373: Number of spanning trees of the n-prism graph Y_n (regarding case n = 2 as a simple graph).

The programs for A072373, the canonical program `A072373.P2283036377366837827` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072373 has offset 1).

The definition of A072373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072373.P251641206493937195

`A006235(n+1)/or(1, C(2, n))`
-/

namespace A072373.P251641206493937195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006235 (n + 1) : ℚ) / (Nat.lor 1 (Nat.choose 2 n) : ℚ)

end

end A072373.P251641206493937195

namespace A072373

/-- `A006235(n+1)/or(1, C(2, n))` -/
def P251641206493937195.Spec : Prop :=
  ∀ n, P251641206493937195.a n = (A072373 (n + 1) : ℚ)

end A072373

/-! ## A072373.P12028062693753814285

`abs(A006235(n+1)/A260196(n))`
-/

namespace A072373.P12028062693753814285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A006235 (n + 1) : ℚ) / (A260196 n : ℚ)|

end

end A072373.P12028062693753814285

namespace A072373

/-- `abs(A006235(n+1)/A260196(n))` -/
def P12028062693753814285.Spec : Prop :=
  ∀ n, P12028062693753814285.a n = (A072373 (n + 1) : ℚ)

end A072373

/-! ## A072373.P2283036377366837827

`gcd(and(4, A001794(n)), A006235(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A072373

/-- `gcd(and(4, A001794(n)), A006235(n+1))` -/
def P2283036377366837827.Spec : Prop :=
  ∀ n, (P2283036377366837827.a n : ℤ) = A072373 (n + 1)

theorem P2283036377366837827.correct : P2283036377366837827.Spec := by
  intro n
  simp only [A072373, Nat.add_sub_cancel]

end A072373

/-! ## A072373.P558196778536699421

`A006235(n+1)/A014973(A008486(n))`
-/

namespace A072373.P558196778536699421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006235 (n + 1) : ℚ) / (A014973 (A008486 n).toNat : ℚ)

end

end A072373.P558196778536699421

namespace A072373

/-- `A006235(n+1)/A014973(A008486(n))` -/
def P558196778536699421.Spec : Prop :=
  ∀ n, P558196778536699421.a n = (A072373 (n + 1) : ℚ)

end A072373

/-! ## A072373.P14442771921354874479

`A006235(n+1)/(A153881(n+1)*A260196(n))`
-/

namespace A072373.P14442771921354874479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006235 (n + 1) : ℚ) / (A153881 (n + 1) * A260196 n : ℚ)

end

end A072373.P14442771921354874479

namespace A072373

/-- `A006235(n+1)/(A153881(n+1)*A260196(n))` -/
def P14442771921354874479.Spec : Prop :=
  ∀ n, P14442771921354874479.a n = (A072373 (n + 1) : ℚ)

end A072373

/-! ## A072373.P1512541276658156298

`A006235(n+1)/A014963(∑[n+1])`
-/

namespace A072373.P1512541276658156298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006235 (n + 1) : ℚ) / (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A072373.P1512541276658156298

namespace A072373

/-- `A006235(n+1)/A014963(∑[n+1])` -/
def P1512541276658156298.Spec : Prop :=
  ∀ n, P1512541276658156298.a n = (A072373 (n + 1) : ℚ)

end A072373

/-! ## A072373.P5280710616332322747

`A006235(n+1)%A102206(A004273(n))`
-/

namespace A072373.P5280710616332322747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006235 (n + 1)) (A102206 (A004273 n).toNat)

end

end A072373.P5280710616332322747

namespace A072373

/-- `A006235(n+1)%A102206(A004273(n))` -/
def P5280710616332322747.Spec : Prop :=
  ∀ n, P5280710616332322747.a n = A072373 (n + 1)

end A072373

/-! ## A072373.P14970442716610296968

`A006235(n+1)/A358692(n+1)`
-/

namespace A072373.P14970442716610296968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006235 (n + 1) : ℚ) / (A358692 (n + 1) : ℚ)

end

end A072373.P14970442716610296968

namespace A072373

/-- `A006235(n+1)/A358692(n+1)` -/
def P14970442716610296968.Spec : Prop :=
  ∀ n, P14970442716610296968.a n = (A072373 (n + 1) : ℚ)

end A072373

/-!
# A072374: a(1) = 1; a(n) = 1 + Sum_{i=1..n} Product_{j=i..2*i-1} (n-j).

The programs for A072374, the canonical program `A072374.P5901401486414482009` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072374 has offset 1).

The definition of A072374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072374.P5901401486414482009

`A122852(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A072374

/-- `A122852(n+1)` -/
def P5901401486414482009.Spec : Prop :=
  ∀ n, P5901401486414482009.a n = A072374 (n + 1)

theorem P5901401486414482009.correct : P5901401486414482009.Spec := by
  intro n
  simp only [A072374, Nat.add_sub_cancel]

end A072374

/-! ## A072374.P17556481603181442693

`Δ[abs(A113291(n+3))]`
-/

namespace A072374.P17556481603181442693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A113291 (n + 3)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A072374.P17556481603181442693

namespace A072374

/-- `Δ[abs(A113291(n+3))]` -/
def P17556481603181442693.Spec : Prop :=
  ∀ n, P17556481603181442693.a n = A072374 (n + 1)

end A072374

/-! ## A072374.P7222846324445240577

`∑[or(1, Δ[A122852(n)])]`
-/

namespace A072374.P7222846324445240577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122852 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072374.P7222846324445240577

namespace A072374

/-- `∑[or(1, Δ[A122852(n)])]` -/
def P7222846324445240577.Spec : Prop :=
  ∀ n, P7222846324445240577.a n = A072374 (n + 1)

end A072374

/-! ## A072374.P3079775655655647424

`record[A122852(A008611(n))]`
-/

namespace A072374.P3079775655655647424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122852 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072374.P3079775655655647424

namespace A072374

/-- `record[A122852(A008611(n))]` -/
def P3079775655655647424.Spec : Prop :=
  ∀ n, P3079775655655647424.a n = A072374 (n + 1)

end A072374

/-! ## A072374.P9230916060240953065

`record[A122852(A008612(n))]`
-/

namespace A072374.P9230916060240953065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122852 (A008612 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072374.P9230916060240953065

namespace A072374

/-- `record[A122852(A008612(n))]` -/
def P9230916060240953065.Spec : Prop :=
  ∀ n, P9230916060240953065.a n = A072374 (n + 1)

end A072374

/-! ## A072374.P18127693676358861161

`record[A122852(A008615(n))]`
-/

namespace A072374.P18127693676358861161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122852 (A008615 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072374.P18127693676358861161

namespace A072374

/-- `record[A122852(A008615(n))]` -/
def P18127693676358861161.Spec : Prop :=
  ∀ n, P18127693676358861161.a n = A072374 (n + 1)

end A072374

/-! ## A072374.P5868229951263456594

`record[A122852(A008616(n))]`
-/

namespace A072374.P5868229951263456594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122852 (A008616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072374.P5868229951263456594

namespace A072374

/-- `record[A122852(A008616(n))]` -/
def P5868229951263456594.Spec : Prop :=
  ∀ n, P5868229951263456594.a n = A072374 (n + 1)

end A072374

/-! ## A072374.P4294940392415162819

`record[A122852(A028242(n))]`
-/

namespace A072374.P4294940392415162819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122852 (A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072374.P4294940392415162819

namespace A072374

/-- `record[A122852(A028242(n))]` -/
def P4294940392415162819.Spec : Prop :=
  ∀ n, P4294940392415162819.a n = A072374 (n + 1)

end A072374

/-! ## A072374.P14418953271292004503

`record[A122852(A057979(n))]`
-/

namespace A072374.P14418953271292004503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122852 (A057979 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072374.P14418953271292004503

namespace A072374

/-- `record[A122852(A057979(n))]` -/
def P14418953271292004503.Spec : Prop :=
  ∀ n, P14418953271292004503.a n = A072374 (n + 1)

end A072374

/-! ## A072374.P7892225660093420115

`record[A122852(A112689(n))]`
-/

namespace A072374.P7892225660093420115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122852 (A112689 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072374.P7892225660093420115

namespace A072374

/-- `record[A122852(A112689(n))]` -/
def P7892225660093420115.Spec : Prop :=
  ∀ n, P7892225660093420115.a n = A072374 (n + 1)

end A072374

/-! ## A072374.P8462413946789851262

`record[A122852(A289814(n))]`
-/

namespace A072374.P8462413946789851262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122852 (A289814 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072374.P8462413946789851262

namespace A072374

/-- `record[A122852(A289814(n))]` -/
def P8462413946789851262.Spec : Prop :=
  ∀ n, P8462413946789851262.a n = A072374 (n + 1)

end A072374

/-! ## A072374.P2998300695666979206

`((n+1)*a(n-2)+a(n-1)+1)/2` with `a(0)=1, a(1)=2`
-/

namespace A072374.P2998300695666979206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  ((n + 1 : ℚ) * a (n - 2) + (a (n - 1) + 1)) / 2

end

end A072374.P2998300695666979206

namespace A072374

/-- `((n+1)*a(n-2)+a(n-1)+1)/2` -/
def P2998300695666979206.Spec : Prop :=
  ∀ n, P2998300695666979206.a n = (A072374 (n + 1) : ℚ)

end A072374

/-! ## A072374.P5227346127625015393

`(a(n-1)+1+a(n-2)+lcm(n, a(n-2)))/2` with `a(0)=1, a(1)=2`
-/

namespace A072374.P5227346127625015393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 1) + 1 + (a (n - 2) + (Int.lcm (n : ℤ) (SequenceMachineLib.roundAway (a (n - 2))) : ℚ))) / 2

end

end A072374.P5227346127625015393

namespace A072374

/-- `(a(n-1)+1+a(n-2)+lcm(n, a(n-2)))/2` -/
def P5227346127625015393.Spec : Prop :=
  ∀ n, P5227346127625015393.a n = (A072374 (n + 1) : ℚ)

end A072374

/-!
# A072375: Number of cubefree numbers <= n which are nonsquares having exactly one square in their factorization.

The programs for A072375, the canonical program `A072375.P16248227479690323833` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072375 has offset 1).

The definition of A072375 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072375.P16248227479690323833

`∑[A359475(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A072375

/-- `∑[A359475(n+1)]` -/
def P16248227479690323833.Spec : Prop :=
  ∀ n, P16248227479690323833.a n = A072375 (n + 1)

theorem P16248227479690323833.correct : P16248227479690323833.Spec := by
  intro n
  simp only [A072375, Nat.add_sub_cancel]

end A072375

/-! ## A072375.P12314711723853467432

`∑[A023533(5*A329385(n+1)+1)]`
-/

namespace A072375.P12314711723853467432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 (5 * A329385 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072375.P12314711723853467432

namespace A072375

/-- `∑[A023533(5*A329385(n+1)+1)]` -/
def P12314711723853467432.Spec : Prop :=
  ∀ n, P12314711723853467432.a n = A072375 (n + 1)

end A072375

/-! ## A072375.P16615182708742467204

`∑[A033796(A016897(A124508(n+1)))]`
-/

namespace A072375.P16615182708742467204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033796 (A016897 (A124508 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072375.P16615182708742467204

namespace A072375

/-- `∑[A033796(A016897(A124508(n+1)))]` -/
def P16615182708742467204.Spec : Prop :=
  ∀ n, P16615182708742467204.a n = A072375 (n + 1)

end A072375

/-! ## A072375.P7722317358073416844

`∑[A085405(A124240(A008480(n+1)²))]`
-/

namespace A072375.P7722317358073416844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085405 (A124240 (A008480 (n + 1) ^ 2).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072375.P7722317358073416844

namespace A072375

/-- `∑[A085405(A124240(A008480(n+1)²))]` -/
def P7722317358073416844.Spec : Prop :=
  ∀ n, P7722317358073416844.a n = A072375 (n + 1)

end A072375

/-! ## A072375.P7723104111777501903

`∑[A010051(A112624(n+1)*A306694(n+1))]`
-/

namespace A072375.P7723104111777501903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A112624 (n + 1) * A306694 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072375.P7723104111777501903

namespace A072375

/-- `∑[A010051(A112624(n+1)*A306694(n+1))]` -/
def P7723104111777501903.Spec : Prop :=
  ∀ n, P7723104111777501903.a n = A072375 (n + 1)

end A072375

/-! ## A072375.P17024848609818969275

`∑[A044940(A001749(A179926(n+1)))]`
-/

namespace A072375.P17024848609818969275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044940 (A001749 (A179926 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072375.P17024848609818969275

namespace A072375

/-- `∑[A044940(A001749(A179926(n+1)))]` -/
def P17024848609818969275.Spec : Prop :=
  ∀ n, P17024848609818969275.a n = A072375 (n + 1)

end A072375

/-! ## A072375.P16886771187794780343

`∑[∑{e}[(n+1)^A304820(n+1), A255124(#)]]`
-/

namespace A072375.P16886771187794780343
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A304820 (n + 1) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, A255124 (Nat.factorization (SequenceMachineLib.roundAway (f2 n)).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072375.P16886771187794780343

namespace A072375

/-- `∑[∑{e}[(n+1)^A304820(n+1), A255124(#)]]` -/
def P16886771187794780343.Spec : Prop :=
  ∀ n, P16886771187794780343.a n = A072375 (n + 1)

end A072375

/-! ## A072375.P8869968040737209135

`∑[A010060(A005408(A050356(n+1)))]`
-/

namespace A072375.P8869968040737209135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A005408 (A050356 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072375.P8869968040737209135

namespace A072375

/-- `∑[A010060(A005408(A050356(n+1)))]` -/
def P8869968040737209135.Spec : Prop :=
  ∀ n, P8869968040737209135.a n = A072375 (n + 1)

end A072375

/-! ## A072375.P2265432471797426945

`∑[A004530(3*A293514(n+1))/2]`
-/

namespace A072375.P2265432471797426945
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004530 (3 * A293514 (n + 1)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072375.P2265432471797426945

namespace A072375

/-- `∑[A004530(3*A293514(n+1))/2]` -/
def P2265432471797426945.Spec : Prop :=
  ∀ n, P2265432471797426945.a n = (A072375 (n + 1) : ℚ)

end A072375

/-! ## A072375.P11622975316050058671

`n-∑[A285252(2*A294873(n+1))]`
-/

namespace A072375.P11622975316050058671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285252 (2 * A294873 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072375.P11622975316050058671

namespace A072375

/-- `n-∑[A285252(2*A294873(n+1))]` -/
def P11622975316050058671.Spec : Prop :=
  ∀ n, P11622975316050058671.a n = A072375 (n + 1)

end A072375

/-! ## A072375.P5974277203581116088

`∑[A131522(8*(A056595(n+1)+1)+1)]`
-/

namespace A072375.P5974277203581116088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131522 (8 * (A056595 (n + 1) + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072375.P5974277203581116088

namespace A072375

/-- `∑[A131522(8*(A056595(n+1)+1)+1)]` -/
def P5974277203581116088.Spec : Prop :=
  ∀ n, P5974277203581116088.a n = A072375 (n + 1)

end A072375

/-! ## A072375.P13242715152313136644

`∑[A294936(A220658(A294873(n+1)))]`
-/

namespace A072375.P13242715152313136644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294936 (A220658 (A294873 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072375.P13242715152313136644

namespace A072375

/-- `∑[A294936(A220658(A294873(n+1)))]` -/
def P13242715152313136644.Spec : Prop :=
  ∀ n, P13242715152313136644.a n = A072375 (n + 1)

end A072375

/-!
# A072376: a(n) = a(floor(n/2)) + a(floor(n/4)) + a(floor(n/8)) + ... starting with a(0)=0 and a(1)=1.

The programs for A072376, the canonical program `A072376.P9948709719047442237` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072376 has offset 0).

The definition of A072376 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072376.P9948709719047442237

`2*a(floor(n/2))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072376

/-- `2*a(floor(n/2))` -/
def P9948709719047442237.Spec : Prop :=
  ∀ n, (P9948709719047442237.a n : ℤ) = A072376 n

theorem P9948709719047442237.correct : P9948709719047442237.Spec := by
  intro n
  simp only [A072376]

end A072376

/-! ## A072376.P4006742872550904572

`round(2^(ceil(log2(n+1))-2))`
-/

namespace A072376.P4006742872550904572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ - 2 : ℤ))

end

end A072376.P4006742872550904572

namespace A072376

/-- `round(2^(ceil(log2(n+1))-2))` -/
def P4006742872550904572.Spec : Prop :=
  ∀ n, P4006742872550904572.a n = A072376 n

end A072376

/-! ## A072376.P1454692848237690317

`(n-n%(2*a(n-1)))/2` with `a(0)=0, a(1)=1`
-/

namespace A072376.P1454692848237690317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((n : ℤ) - Int.tmod (n : ℤ) (SequenceMachineLib.roundAway (2 * a (n - 1))) : ℚ) / 2

end

end A072376.P1454692848237690317

namespace A072376

/-- `(n-n%(2*a(n-1)))/2` -/
def P1454692848237690317.Spec : Prop :=
  ∀ n, P1454692848237690317.a n = (A072376 n : ℚ)

end A072376

/-! ## A072376.P7569571915181584984

`and(-a(n-1), ceil(abs((1-n)/2)))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A072376.P7569571915181584984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  Int.land (-a (n - 1)) ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉

end

end A072376.P7569571915181584984

namespace A072376

/-- `and(-a(n-1), ceil(abs((1-n)/2)))` -/
def P7569571915181584984.Spec : Prop :=
  ∀ n, P7569571915181584984.a n = A072376 n

end A072376

/-! ## A072376.P12582577542993552098

`a(n-1)+a(n-2)%gcd(n, 2*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A072376.P12582577542993552098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + a (n - 2) % Nat.gcd n (2 * a (n - 1))

end

end A072376.P12582577542993552098

namespace A072376

/-- `a(n-1)+a(n-2)%gcd(n, 2*a(n-1))` -/
def P12582577542993552098.Spec : Prop :=
  ∀ n, (P12582577542993552098.a n : ℤ) = A072376 n

end A072376

/-! ## A072376.P9905896659129406792

`ceil(A053644(n)/2)`
-/

namespace A072376.P9905896659129406792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A053644 n : ℚ) / 2⌉

end

end A072376.P9905896659129406792

namespace A072376

/-- `ceil(A053644(n)/2)` -/
def P9905896659129406792.Spec : Prop :=
  ∀ n, P9905896659129406792.a n = A072376 n

end A072376

/-! ## A072376.P11765172665654449746

`A166444(ceil(log2(n+1)))`
-/

namespace A072376.P11765172665654449746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 ⌈Real.logb 2 (n + 1 : ℝ)⌉.toNat

end

end A072376.P11765172665654449746

namespace A072376

/-- `A166444(ceil(log2(n+1)))` -/
def P11765172665654449746.Spec : Prop :=
  ∀ n, P11765172665654449746.a n = A072376 n

end A072376

/-! ## A072376.P1514963788989943703

`A220469(ceil(log2(n+1)))`
-/

namespace A072376.P1514963788989943703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220469 ⌈Real.logb 2 (n + 1 : ℝ)⌉.toNat

end

end A072376.P1514963788989943703

namespace A072376

/-- `A220469(ceil(log2(n+1)))` -/
def P1514963788989943703.Spec : Prop :=
  ∀ n, P1514963788989943703.a n = A072376 n

end A072376

/-! ## A072376.P11299711533373768160

`ceil(∑[n*A209229(n)]/4)`
-/

namespace A072376.P11299711533373768160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A209229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4⌉

end

end A072376.P11299711533373768160

namespace A072376

/-- `ceil(∑[n*A209229(n)]/4)` -/
def P11299711533373768160.Spec : Prop :=
  ∀ n, P11299711533373768160.a n = A072376 n

end A072376

/-! ## A072376.P9686933215765565810

`ceil((2*n-A006257(n))/4)`
-/

namespace A072376.P9686933215765565810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n : ℤ) - A006257 n : ℚ) / 4⌉

end

end A072376.P9686933215765565810

namespace A072376

/-- `ceil((2*n-A006257(n))/4)` -/
def P9686933215765565810.Spec : Prop :=
  ∀ n, P9686933215765565810.a n = A072376 n

end A072376

/-! ## A072376.P959592646088287028

`ceil(∑[n*char[A000079(n)]]/4)`
-/

namespace A072376.P959592646088287028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4⌉

end

end A072376.P959592646088287028

namespace A072376

/-- `ceil(∑[n*char[A000079(n)]]/4)` -/
def P959592646088287028.Spec : Prop :=
  ∀ n, P959592646088287028.a n = A072376 n

end A072376

/-! ## A072376.P11175717995175053980

`ceil(A000225(floor(log2(2*n+1)))/4)`
-/

namespace A072376.P11175717995175053980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000225 (Nat.log 2 (2 * n + 1)) : ℚ) / 4⌉

end

end A072376.P11175717995175053980

namespace A072376

/-- `ceil(A000225(floor(log2(2*n+1)))/4)` -/
def P11175717995175053980.Spec : Prop :=
  ∀ n, P11175717995175053980.a n = A072376 n

end A072376

/-! ## A072376.P9079363828648964364

`A053644(A004525(n))`
-/

namespace A072376.P9079363828648964364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A004525 n).toNat

end

end A072376.P9079363828648964364

namespace A072376

/-- `A053644(A004525(n))` -/
def P9079363828648964364.Spec : Prop :=
  ∀ n, P9079363828648964364.a n = A072376 n

end A072376

/-! ## A072376.P16201564077649812192

`A026741(A053644(n))`
-/

namespace A072376.P16201564077649812192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A053644 n).toNat

end

end A072376.P16201564077649812192

namespace A072376

/-- `A026741(A053644(n))` -/
def P16201564077649812192.Spec : Prop :=
  ∀ n, P16201564077649812192.a n = A072376 n

end A072376

/-! ## A072376.P8761582929206571402

`A004526(A053644(n)+1)`
-/

namespace A072376.P8761582929206571402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A053644 n + 1).toNat

end

end A072376.P8761582929206571402

namespace A072376

/-- `A004526(A053644(n)+1)` -/
def P8761582929206571402.Spec : Prop :=
  ∀ n, P8761582929206571402.a n = A072376 n

end A072376

/-! ## A072376.P7495681485143674518

`A057979(A053644(n)+1)`
-/

namespace A072376.P7495681485143674518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A053644 n + 1).toNat

end

end A072376.P7495681485143674518

namespace A072376

/-- `A057979(A053644(n)+1)` -/
def P7495681485143674518.Spec : Prop :=
  ∀ n, P7495681485143674518.a n = A072376 n

end A072376

/-! ## A072376.P6918168459816888008

`A060973(A053644(n)+1)`
-/

namespace A072376.P6918168459816888008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 (A053644 n + 1).toNat

end

end A072376.P6918168459816888008

namespace A072376

/-- `A060973(A053644(n)+1)` -/
def P6918168459816888008.Spec : Prop :=
  ∀ n, P6918168459816888008.a n = A072376 n

end A072376

/-! ## A072376.P2126894078263126486

`A234016(A053644(n)+1)`
-/

namespace A072376.P2126894078263126486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234016 (A053644 n + 1).toNat

end

end A072376.P2126894078263126486

namespace A072376

/-- `A234016(A053644(n)+1)` -/
def P2126894078263126486.Spec : Prop :=
  ∀ n, P2126894078263126486.a n = A072376 n

end A072376

/-! ## A072376.P14226847218623664194

`A004526(lcm(2, A053644(n)))`
-/

namespace A072376.P14226847218623664194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.lcm 2 (A053644 n))

end

end A072376.P14226847218623664194

namespace A072376

/-- `A004526(lcm(2, A053644(n)))` -/
def P14226847218623664194.Spec : Prop :=
  ∀ n, P14226847218623664194.a n = A072376 n

end A072376

/-! ## A072376.P7175964577528928116

`A053644(∑[A308187(n+2)])`
-/

namespace A072376.P7175964577528928116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308187 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A072376.P7175964577528928116

namespace A072376

/-- `A053644(∑[A308187(n+2)])` -/
def P7175964577528928116.Spec : Prop :=
  ∀ n, P7175964577528928116.a n = A072376 n

end A072376

/-!
# A072377: Number of pairs of orthogonal Latin squares of order n.

The programs for A072377, there is no canonical definition to state claims against.
-/

/-! ## A072377.P15452029529361984680

`A000010(A107048(n))*A361730(2*n)`
-/

namespace A072377.P15452029529361984680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A107048 n).toNat * A361730 (2 * n)

end

end A072377.P15452029529361984680

/-!
# A072378: Numbers n such that 12*n divides F(12*n), where F(m) is the m-th Fibonacci number.

The programs for A072378, there is no canonical definition to state claims against.
-/

/-! ## A072378.P3853885853527552273

`A317971(n+2)/24`
-/

namespace A072378.P3853885853527552273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317971 (n + 2) : ℚ) / 24

end

end A072378.P3853885853527552273

/-! ## A072378.P4900940270292293815

`a(n-1)*ratio[A317971(n+1)]` with `a(0)=1`
-/

namespace A072378.P4900940270292293815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317971 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A072378.P4900940270292293815

/-! ## A072378.P8589273450128864238

`∑[A194698(Δ[A317971(n+1)])]`
-/

namespace A072378.P8589273450128864238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317971 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072378.P8589273450128864238

/-! ## A072378.P17214180424777788249

`lt[2*n, A104714(A008594(n))]`
-/

namespace A072378.P17214180424777788249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104714 (A008594 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A072378.P17214180424777788249

/-! ## A072378.P17540598683867865544

`lt[A004277(n), A104714(A008594(n))+1]`
-/

namespace A072378.P17540598683867865544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104714 (A008594 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072378.P17540598683867865544

/-! ## A072378.P3033460844085757135

`eq[A008458(2*n), A104714(A008594(n))]`
-/

namespace A072378.P3033460844085757135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104714 (A008594 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072378.P3033460844085757135

/-! ## A072378.P17299748669651963929

`eq[1, A270313(2*A008458(n))]`
-/

namespace A072378.P17299748669651963929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270313 (2 * A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072378.P17299748669651963929

/-! ## A072378.P12871642324566560617

`record[A065033(n)/A270313(A008458(n))]`
-/

namespace A072378.P12871642324566560617
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065033 n : ℚ) / (A270313 (A008458 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072378.P12871642324566560617

/-! ## A072378.P10296821987792285491

`eq[A057427(n), A270313(A008458(n))]/2`
-/

namespace A072378.P10296821987792285491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270313 (A008458 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A072378.P10296821987792285491

/-! ## A072378.P496010564364187104

`A194698(A317971(n+2))`
-/

namespace A072378.P496010564364187104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (A317971 (n + 2)).toNat

end

end A072378.P496010564364187104

/-!
# A072379: Sum_{k<=n} (sigma(k)^2), where sigma(k) denotes the sum of the divisors of k A000203.

The programs for A072379, the canonical program `A072379.P14291617930594236079` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072379 has offset 1).

The definition of A072379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072379.P14291617930594236079

`∑[∑{d}[n+1, #]²]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072379

/-- `∑[∑{d}[n+1, #]²]` -/
def P14291617930594236079.Spec : Prop :=
  ∀ n, (P14291617930594236079.a n : ℤ) = A072379 (n + 1)

theorem P14291617930594236079.correct : P14291617930594236079.Spec := by
  intro n
  simp only [A072379, Nat.add_sub_cancel]

end A072379

/-! ## A072379.P2142960207966111122

`∑[∑{d}[n+1, #]^2]`
-/

namespace A072379.P2142960207966111122
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f2 n), d) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072379.P2142960207966111122

namespace A072379

/-- `∑[∑{d}[n+1, #]^2]` -/
def P2142960207966111122.Spec : Prop :=
  ∀ n, (P2142960207966111122.a n : ℤ) = A072379 (n + 1)

theorem P2142960207966111122.correct : P2142960207966111122.Spec := by
  intro n
  simp only [A072379, Nat.add_sub_cancel, A072379.P2142960207966111122.f2, A072379.P2142960207966111122.f1, A072379.P2142960207966111122.a, A072379.P14291617930594236079.f2, A072379.P14291617930594236079.f1, A072379.P14291617930594236079.a, SequenceMachineLib.memo_apply]

end A072379

/-! ## A072379.P10713097033771636207

`∑[root(∑{d}[n+1, #], 1/2)]`
-/

namespace A072379.P10713097033771636207
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℝ) ^ (1 / ((1 : ℚ) / 2 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072379.P10713097033771636207

namespace A072379

/-- `∑[root(∑{d}[n+1, #], 1/2)]` -/
def P10713097033771636207.Spec : Prop :=
  ∀ n, P10713097033771636207.a n = (A072379 (n + 1) : ℝ)

theorem P10713097033771636207.correct : P10713097033771636207.Spec := by
  intro n
  simp only [A072379, Nat.add_sub_cancel, A072379.P10713097033771636207.f2, A072379.P10713097033771636207.f1, A072379.P10713097033771636207.a, A072379.P14291617930594236079.f2, A072379.P14291617930594236079.f1, A072379.P14291617930594236079.a, SequenceMachineLib.memo_apply]
  try simp

end A072379

/-! ## A072379.P8688512007718863429

`a(n-1)+∑{d}[n+1, #]²` with `a(0)=1`
-/

namespace A072379.P8688512007718863429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (∑ d ∈ Nat.divisors (f1 n), d) ^ 2

end

end A072379.P8688512007718863429

namespace A072379

/-- `a(n-1)+∑{d}[n+1, #]²` -/
def P8688512007718863429.Spec : Prop :=
  ∀ n, (P8688512007718863429.a n : ℤ) = A072379 (n + 1)

end A072379

/-! ## A072379.P17724370780511359570

`∑[∑{d}[n+1, #]*∑{d}[n+1, #]]`
-/

namespace A072379.P17724370780511359570
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f2 n), d) * (∑ d ∈ Nat.divisors (f3 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072379.P17724370780511359570

namespace A072379

/-- `∑[∑{d}[n+1, #]*∑{d}[n+1, #]]` -/
def P17724370780511359570.Spec : Prop :=
  ∀ n, (P17724370780511359570.a n : ℤ) = A072379 (n + 1)

theorem P17724370780511359570.correct : P17724370780511359570.Spec := by
  intro n
  simp only [A072379, Nat.add_sub_cancel, A072379.P17724370780511359570.f2, A072379.P17724370780511359570.f3, A072379.P17724370780511359570.f1, A072379.P17724370780511359570.a, A072379.P14291617930594236079.f2, A072379.P14291617930594236079.f1, A072379.P14291617930594236079.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A072379

/-! ## A072379.P11676464865189038959

`∑[A072861(n+1)]`
-/

namespace A072379.P11676464865189038959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072379.P11676464865189038959

namespace A072379

/-- `∑[A072861(n+1)]` -/
def P11676464865189038959.Spec : Prop :=
  ∀ n, P11676464865189038959.a n = A072379 (n + 1)

theorem P11676464865189038959.correct : P11676464865189038959.Spec := by
  intro n
  simp only [A072379, Nat.add_sub_cancel, A072379.P11676464865189038959.f1, A072379.P11676464865189038959.a, A072379.P14291617930594236079.f2, A072379.P14291617930594236079.f1, A072379.P14291617930594236079.a, A072861, A072861.P7379814568350881994.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072379

/-! ## A072379.P16205334128239505586

`∑[Δ[A160664(n)]²]`
-/

namespace A072379.P16205334128239505586
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072379.P16205334128239505586

namespace A072379

/-- `∑[Δ[A160664(n)]²]` -/
def P16205334128239505586.Spec : Prop :=
  ∀ n, P16205334128239505586.a n = A072379 (n + 1)

end A072379

/-! ## A072379.P6054796248410419041

`∑[Δ[A330725(n)]²]`
-/

namespace A072379.P6054796248410419041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072379.P6054796248410419041

namespace A072379

/-- `∑[Δ[A330725(n)]²]` -/
def P6054796248410419041.Spec : Prop :=
  ∀ n, P6054796248410419041.a n = A072379 (n + 1)

end A072379

/-! ## A072379.P10713144970582165480

`∑[A000203(n+1)²]`
-/

namespace A072379.P10713144970582165480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072379.P10713144970582165480

namespace A072379

/-- `∑[A000203(n+1)²]` -/
def P10713144970582165480.Spec : Prop :=
  ∀ n, P10713144970582165480.a n = A072379 (n + 1)

theorem P10713144970582165480.correct : P10713144970582165480.Spec := by
  intro n
  simp only [A072379, Nat.add_sub_cancel, A072379.P10713144970582165480.f1, A072379.P10713144970582165480.a, A072379.P14291617930594236079.f2, A072379.P14291617930594236079.f1, A072379.P14291617930594236079.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072379

/-! ## A072379.P12249452992021017321

`∑[A143348(n+1)²]`
-/

namespace A072379.P12249452992021017321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143348 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072379.P12249452992021017321

namespace A072379

/-- `∑[A143348(n+1)²]` -/
def P12249452992021017321.Spec : Prop :=
  ∀ n, P12249452992021017321.a n = A072379 (n + 1)

end A072379

/-! ## A072379.P3758617357026092806

`∑[sqrt(A361179(n+1))]`
-/

namespace A072379.P3758617357026092806
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A361179 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072379.P3758617357026092806

namespace A072379

/-- `∑[sqrt(A361179(n+1))]` -/
def P3758617357026092806.Spec : Prop :=
  ∀ n, P3758617357026092806.a n = (A072379 (n + 1) : ℝ)

end A072379

/-! ## A072379.P11101076105225310391

`∑[A245092(Δ[n²])²]`
-/

namespace A072379.P11101076105225310391
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072379.P11101076105225310391

namespace A072379

/-- `∑[A245092(Δ[n²])²]` -/
def P11101076105225310391.Spec : Prop :=
  ∀ n, P11101076105225310391.a n = A072379 (n + 1)

end A072379

/-! ## A072379.P2455070669878595547

`∑[A258974(n+1)-1]`
-/

namespace A072379.P2455070669878595547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258974 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072379.P2455070669878595547

namespace A072379

/-- `∑[A258974(n+1)-1]` -/
def P2455070669878595547.Spec : Prop :=
  ∀ n, P2455070669878595547.a n = A072379 (n + 1)

theorem P2455070669878595547.correct : P2455070669878595547.Spec := by
  intro n
  simp only [A072379, Nat.add_sub_cancel, A072379.P2455070669878595547.f1, A072379.P2455070669878595547.a, A072379.P14291617930594236079.f2, A072379.P14291617930594236079.f1, A072379.P14291617930594236079.a, A258974, A258974.P4466533170833626338.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072379

/-! ## A072379.P12242123583816403711

`∑[∑[A340793(n+1)]²]`
-/

namespace A072379.P12242123583816403711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072379.P12242123583816403711

namespace A072379

/-- `∑[∑[A340793(n+1)]²]` -/
def P12242123583816403711.Spec : Prop :=
  ∀ n, P12242123583816403711.a n = A072379 (n + 1)

end A072379

/-! ## A072379.P1843923003296690779

`∑[(A039653(n+1)+1)²]`
-/

namespace A072379.P1843923003296690779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039653 (n + 1) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072379.P1843923003296690779

namespace A072379

/-- `∑[(A039653(n+1)+1)²]` -/
def P1843923003296690779.Spec : Prop :=
  ∀ n, P1843923003296690779.a n = A072379 (n + 1)

end A072379

/-! ## A072379.P17779868976733782438

`∑[(1-A088580(n+1))²]`
-/

namespace A072379.P17779868976733782438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A088580 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072379.P17779868976733782438

namespace A072379

/-- `∑[(1-A088580(n+1))²]` -/
def P17779868976733782438.Spec : Prop :=
  ∀ n, P17779868976733782438.a n = A072379 (n + 1)

theorem P17779868976733782438.correct : P17779868976733782438.Spec := by
  intro n
  simp only [A072379, Nat.add_sub_cancel, A072379.P17779868976733782438.f1, A072379.P17779868976733782438.a, A072379.P14291617930594236079.f2, A072379.P14291617930594236079.f1, A072379.P14291617930594236079.a, A088580, A088580.P3089093194242277422.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072379

/-! ## A072379.P16328599015900751464

`∑[(A074400(n+1)/2)²]`
-/

namespace A072379.P16328599015900751464
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A074400 (n + 1) : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072379.P16328599015900751464

namespace A072379

/-- `∑[(A074400(n+1)/2)²]` -/
def P16328599015900751464.Spec : Prop :=
  ∀ n, P16328599015900751464.a n = (A072379 (n + 1) : ℚ)

end A072379

/-! ## A072379.P3156600662205483566

`∑[(A272027(n+1)/3)²]`
-/

namespace A072379.P3156600662205483566
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A272027 (n + 1) : ℚ) / 3) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072379.P3156600662205483566

namespace A072379

/-- `∑[(A272027(n+1)/3)²]` -/
def P3156600662205483566.Spec : Prop :=
  ∀ n, P3156600662205483566.a n = (A072379 (n + 1) : ℚ)

end A072379

/-! ## A072379.P14137184425984873620

`∑[(A001065(n+1)+n+1)²]`
-/

namespace A072379.P14137184425984873620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001065 (n + 1) + (n + 1 : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072379.P14137184425984873620

namespace A072379

/-- `∑[(A001065(n+1)+n+1)²]` -/
def P14137184425984873620.Spec : Prop :=
  ∀ n, P14137184425984873620.a n = A072379 (n + 1)

theorem P14137184425984873620.correct : P14137184425984873620.Spec := by
  intro n
  simp only [A072379, Nat.add_sub_cancel, A072379.P14137184425984873620.f1, A072379.P14137184425984873620.a, A072379.P14291617930594236079.f2, A072379.P14291617930594236079.f1, A072379.P14291617930594236079.a, A001065, A001065.P4097147489331274860.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072379

/-! ## A072379.P5223726926902449341

`∑[(n+1-A155085(n+1))²]`
-/

namespace A072379.P5223726926902449341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A155085 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072379.P5223726926902449341

namespace A072379

/-- `∑[(n+1-A155085(n+1))²]` -/
def P5223726926902449341.Spec : Prop :=
  ∀ n, P5223726926902449341.a n = A072379 (n + 1)

theorem P5223726926902449341.correct : P5223726926902449341.Spec := by
  intro n
  simp only [A072379, Nat.add_sub_cancel, A072379.P5223726926902449341.f1, A072379.P5223726926902449341.a, A072379.P14291617930594236079.f2, A072379.P14291617930594236079.f1, A072379.P14291617930594236079.a, A155085, A155085.P2440965829929837208.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072379

/-!
# A072380: Third differences of partition numbers A000041.

The programs for A072380, there is no canonical definition to state claims against.
-/

/-! ## A072380.P12879843434904396812

`∑[A081094(n)]-(A081094(n)+1)`
-/

namespace A072380.P12879843434904396812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A081094 n + 1)

end

end A072380.P12879843434904396812

/-! ## A072380.P16452106488749681043

`Δ[A053445(n)]`
-/

namespace A072380.P16452106488749681043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053445 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A072380.P16452106488749681043

/-! ## A072380.P288809677290520417

`A053445(n+1)-A053445(n)`
-/

namespace A072380.P288809677290520417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053445 (n + 1) - A053445 n

end

end A072380.P288809677290520417

/-! ## A072380.P4840443762371256158

`Δ[Δ[A002865(n+1)]]`
-/

namespace A072380.P4840443762371256158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A072380.P4840443762371256158

/-! ## A072380.P15613266401012177249

`Δ[Δ[A232697(n+1)]]`
-/

namespace A072380.P15613266401012177249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A072380.P15613266401012177249

/-! ## A072380.P5085792905661866152

`Δ[Δ[A085811(n+2)+A008483(n+1)]]`
-/

namespace A072380.P5085792905661866152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 2) + A008483 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A072380.P5085792905661866152

/-! ## A072380.P3636960525274247

`A002865(n+1)+A117989(n+1)-A117989(n+2)`
-/

namespace A072380.P3636960525274247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1) + (A117989 (n + 1) - A117989 (n + 2))

end

end A072380.P3636960525274247

/-! ## A072380.P10156558341106327093

`Δ[Δ[Δ[A000041(n)]]]`
-/

namespace A072380.P10156558341106327093
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A072380.P10156558341106327093

/-! ## A072380.P1702466838255697118

`Δ[Δ[Δ[A000065(n)]]]`
-/

namespace A072380.P1702466838255697118
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A072380.P1702466838255697118

/-! ## A072380.P13292919513479810685

`Δ[Δ[Δ[A133041(n)]]]`
-/

namespace A072380.P13292919513479810685
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A072380.P13292919513479810685

/-! ## A072380.P4692828499664108867

`Δ[Δ[Δ[A139582(n)/2]]]`
-/

namespace A072380.P4692828499664108867
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A072380.P4692828499664108867

/-! ## A072380.P10268171942128067314

`Δ[Δ[Δ[A035363(2*n)]]]`
-/

namespace A072380.P10268171942128067314
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A072380.P10268171942128067314

/-! ## A072380.P2893816778500120321

`Δ[Δ[Δ[A035377(3*n)]]]`
-/

namespace A072380.P2893816778500120321
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A072380.P2893816778500120321

/-! ## A072380.P18021906778801299913

`Δ[A175804(∑[n+3])]`
-/

namespace A072380.P18021906778801299913
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175804 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A072380.P18021906778801299913

/-! ## A072380.P16032950632609876165

`A175804(∑[n+3]+n+3)`
-/

namespace A072380.P16032950632609876165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175804 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A072380.P16032950632609876165

/-! ## A072380.P9076840233945698413

`Δ[Δ[A292745(A055998(n)+2)]]`
-/

namespace A072380.P9076840233945698413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (A055998 n + 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A072380.P9076840233945698413

/-! ## A072380.P8830187438783832661

`Δ[Δ[A292745(A034856(n+1)+1)]]`
-/

namespace A072380.P8830187438783832661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (A034856 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A072380.P8830187438783832661

/-!
# A072381: Numbers m such that Fibonacci(m) is a semiprime.

The programs for A072381, there is no canonical definition to state claims against.
-/

/-! ## A072381.P4180422457767354892

`∩[A035254(n), A114842(n+1)]`
-/

namespace A072381.P4180422457767354892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035254 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072381.P4180422457767354892

/-! ## A072381.P17092975996408944033

`∩[A114842(n+1), A278637(n+1)]`
-/

namespace A072381.P17092975996408944033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278637 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072381.P17092975996408944033

/-! ## A072381.P15538259994783643467

`eq[2, A038575(n)]`
-/

namespace A072381.P15538259994783643467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072381.P15538259994783643467

/-! ## A072381.P13904596342531063640

`eq[4, A286545(n+1)]+1`
-/

namespace A072381.P13904596342531063640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286545 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072381.P13904596342531063640

/-! ## A072381.P6229844593922994361

`eq[6, A278245(n+1)]+1`
-/

namespace A072381.P6229844593922994361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278245 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072381.P6229844593922994361

/-! ## A072381.P5558755588415504892

`eq[4, A286545(A028310(n))]`
-/

namespace A072381.P5558755588415504892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286545 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072381.P5558755588415504892

/-! ## A072381.P4075437251036341500

`eq[6, A278245(A000007(n)+n)]`
-/

namespace A072381.P4075437251036341500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278245 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072381.P4075437251036341500

/-! ## A072381.P5183916043092221004

`∩[A037918(n+1), A114842(n+1)]`
-/

namespace A072381.P5183916043092221004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072381.P5183916043092221004

/-!
# A072382: Primes which can be represented as the sum of a number and its reverse.

The programs for A072382, there is no canonical definition to state claims against.
-/

/-! ## A072382.P546553414000913219

`p?[A067030(n)]`
-/

namespace A072382.P546553414000913219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072382.P546553414000913219

/-! ## A072382.P7040306194212292651

`∩[A000040(n+1), A067030(n)]`
-/

namespace A072382.P7040306194212292651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072382.P7040306194212292651

/-! ## A072382.P12254168948928984595

`∩[A008578(n+1), A067030(n)]`
-/

namespace A072382.P12254168948928984595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072382.P12254168948928984595

/-! ## A072382.P8141478402415944906

`∩[A045319(n+1), A067030(n)]`
-/

namespace A072382.P8141478402415944906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072382.P8141478402415944906

/-! ## A072382.P10150080970665779885

`∩[A045344(n+1), A067030(n)]`
-/

namespace A072382.P10150080970665779885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072382.P10150080970665779885

/-! ## A072382.P17766181584472751303

`∩[A070957(n+1), A067030(n)]`
-/

namespace A072382.P17766181584472751303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072382.P17766181584472751303

/-! ## A072382.P16521093252222459579

`∩[A138837(n+1), A067030(n)]`
-/

namespace A072382.P16521093252222459579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072382.P16521093252222459579

/-! ## A072382.P3105811851472369304

`∩[A189710(n+1), A067030(n)]`
-/

namespace A072382.P3105811851472369304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072382.P3105811851472369304

/-! ## A072382.P4279686143410484892

`∩[A197636(n+1), A067030(n)]`
-/

namespace A072382.P4279686143410484892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072382.P4279686143410484892

/-! ## A072382.P10058222039966381242

`∩[A326715(n+1), A067030(n)]`
-/

namespace A072382.P10058222039966381242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072382.P10058222039966381242

/-! ## A072382.P9201979955176779252

`∩[A301987(n+1), A067030(n)]`
-/

namespace A072382.P9201979955176779252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072382.P9201979955176779252

/-! ## A072382.P15683747883917513898

`record[A020639(A067030(n+1))]`
-/

namespace A072382.P15683747883917513898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A067030 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072382.P15683747883917513898

/-! ## A072382.P2741658992559430826

`filter[A067030(n+1), A010051(#)]`
-/

namespace A072382.P2741658992559430826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A072382.P2741658992559430826

/-!
# A072384: Primes which can be represented as the sum of a cube and its reverse.

The programs for A072384, there is no canonical definition to state claims against.
-/

/-! ## A072384.P10228982662508720078

`p?[A319603(A055176(n+1))]`
-/

namespace A072384.P10228982662508720078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319603 (A055176 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072384.P10228982662508720078

/-!
# A072385: Primes which can be represented as the sum of a prime and its reverse.

The programs for A072385, there is no canonical definition to state claims against.
-/

/-! ## A072385.P1132239518387322643

`p?[A056964(p?[A329389(n)])]`
-/

namespace A072385.P1132239518387322643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329389 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072385.P1132239518387322643

/-!
# A072387: Triangular number x such that x + reverse of x is a prime.

The programs for A072387, there is no canonical definition to state claims against.
-/

/-! ## A072387.P10499179660353310611

`∩[A072366(n+1), A000217(n)]`
-/

namespace A072387.P10499179660353310611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072387.P10499179660353310611

/-!
# A072388: a(0) = 1; for n > 0, a(n) = floor((prime(n+1) + prime(n) + a(n-1))/3).

The programs for A072388, the canonical program `A072388.P14205877717158669958` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072388 has offset 0).

The definition of A072388 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((A000040(n+1)+A000040(n)+a(n-1))/3)` (program `A072388.P14205877717158669958`, by `A072388.P14205877717158669958.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A072388.P14205877717158669958

`floor((A000040(n+1)+A000040(n)+a(n-1))/3)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A072388

/-- `floor((A000040(n+1)+A000040(n)+a(n-1))/3)` -/
def P14205877717158669958.Spec : Prop :=
  ∀ n, P14205877717158669958.a n = A072388 n

theorem P14205877717158669958.correct : P14205877717158669958.Spec := by
  intro n
  simp only [A072388]

end A072388

/-! ## A072388.P12191030397726293729

`A112231(∑[A072643(A023896(n+1))])`
-/

namespace A072388.P12191030397726293729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 (A023896 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112231 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A072388.P12191030397726293729

namespace A072388

/-- `A112231(∑[A072643(A023896(n+1))])` -/
def P12191030397726293729.Spec : Prop :=
  ∀ n, P12191030397726293729.a n = A072388 n

end A072388

/-! ## A072388.P13681753792996487445

`A347621(A055645(n))+A296349(n)`
-/

namespace A072388.P13681753792996487445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347621 (A055645 n).toNat + A296349 n

end

end A072388.P13681753792996487445

namespace A072388

/-- `A347621(A055645(n))+A296349(n)` -/
def P13681753792996487445.Spec : Prop :=
  ∀ n, P13681753792996487445.a n = A072388 n

end A072388

/-! ## A072388.P9706242233221573860

`∑[A118668(record[A114202(n)])]`
-/

namespace A072388.P9706242233221573860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114202 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118668 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072388.P9706242233221573860

namespace A072388

/-- `∑[A118668(record[A114202(n)])]` -/
def P9706242233221573860.Spec : Prop :=
  ∀ n, P9706242233221573860.a n = A072388 n

end A072388

/-! ## A072388.P14483195800347549057

`∑[A333870(n*A000073(n)+2)]`
-/

namespace A072388.P14483195800347549057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333870 ((n : ℤ) * A000073 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072388.P14483195800347549057

namespace A072388

/-- `∑[A333870(n*A000073(n)+2)]` -/
def P14483195800347549057.Spec : Prop :=
  ∀ n, P14483195800347549057.a n = A072388 n

end A072388

/-!
# A072389: Numbers of the form x*(x+1) * y*(y+1) ("bipronics") with x and y nonnegative integers.

The programs for A072389, there is no canonical definition to state claims against.
-/

/-! ## A072389.P7926936555583382677

`4*A085780(n+1)`
-/

namespace A072389.P7926936555583382677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A085780 (n + 1)

end

end A072389.P7926936555583382677

/-! ## A072389.P10672279550028245811

`∪[A035287(n+1), A053990(n+1)]`
-/

namespace A072389.P10672279550028245811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A072389.P10672279550028245811

/-! ## A072389.P22174062450926920

`4*∪[A054731(n+1), A000537(n)]`
-/

namespace A072389.P22174062450926920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A072389.P22174062450926920

/-! ## A072389.P531656633391325263

`4*∪[A054731(n+1), A000217(n)²]`
-/

namespace A072389.P531656633391325263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A072389.P531656633391325263

/-! ## A072389.P12827022144715534119

`A008586(A085780(n+1))`
-/

namespace A072389.P12827022144715534119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A085780 (n + 1)).toNat

end

end A072389.P12827022144715534119

/-! ## A072389.P15997757671356432851

`A008574(A085780(n+1))-A000007(n)`
-/

namespace A072389.P15997757671356432851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A085780 (n + 1)).toNat - A000007 n

end

end A072389.P15997757671356432851

/-! ## A072389.P16075038961853398541

`A008574(A085780(n+1))%A055384(n)`
-/

namespace A072389.P16075038961853398541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008574 (A085780 (n + 1)).toNat) (A055384 n)

end

end A072389.P16075038961853398541

/-! ## A072389.P7076988128209127170

`A008574(A085780(n+1)+n)-A008574(n)`
-/

namespace A072389.P7076988128209127170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A085780 (n + 1) + (n : ℤ)).toNat - A008574 n

end

end A072389.P7076988128209127170

/-! ## A072389.P11954560153532131789

`comp[A352796(n+1)]`
-/

namespace A072389.P11954560153532131789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A072389.P11954560153532131789

/-!
# A072390: Sum of two powers of 13.

The programs for A072390, the canonical program `A072390.P2259144451641578839` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072390 has offset 0).

The definition of A072390 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072390.P2259144451641578839

`13^col(n)+13^row(n)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072390

/-- `13^col(n)+13^row(n)` -/
def P2259144451641578839.Spec : Prop :=
  ∀ n, (P2259144451641578839.a n : ℤ) = A072390 n

theorem P2259144451641578839.correct : P2259144451641578839.Spec := by
  intro n
  simp only [A072390]

end A072390

/-! ## A072390.P424021313452495594

`2*A073220(n+1)`
-/

namespace A072390.P424021313452495594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073220 (n + 1)

end

end A072390.P424021313452495594

namespace A072390

/-- `2*A073220(n+1)` -/
def P424021313452495594.Spec : Prop :=
  ∀ n, P424021313452495594.a n = A072390 n

end A072390

/-! ## A072390.P5671976379291747415

`record[2*A073220(A328399(n))]`
-/

namespace A072390.P5671976379291747415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073220 (A328399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072390.P5671976379291747415

namespace A072390

/-- `record[2*A073220(A328399(n))]` -/
def P5671976379291747415.Spec : Prop :=
  ∀ n, P5671976379291747415.a n = A072390 n

end A072390

/-! ## A072390.P2648083532783487648

`lcm(2, A073220(A000027(n+1)))`
-/

namespace A072390.P2648083532783487648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A073220 (A000027 (n + 1)).toNat)

end

end A072390.P2648083532783487648

namespace A072390

/-- `lcm(2, A073220(A000027(n+1)))` -/
def P2648083532783487648.Spec : Prop :=
  ∀ n, (P2648083532783487648.a n : ℤ) = A072390 n

end A072390

/-! ## A072390.P7805648297091526818

`A073220(n+1)+record[A073220(A328399(n))]`
-/

namespace A072390.P7805648297091526818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073220 (A328399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073220 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072390.P7805648297091526818

namespace A072390

/-- `A073220(n+1)+record[A073220(A328399(n))]` -/
def P7805648297091526818.Spec : Prop :=
  ∀ n, P7805648297091526818.a n = A072390 n

end A072390

/-! ## A072390.P2156052723687783586

`A073220(A000027(n+1))+A073220(n+1)`
-/

namespace A072390.P2156052723687783586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073220 (A000027 (n + 1)).toNat + A073220 (n + 1)

end

end A072390.P2156052723687783586

namespace A072390

/-- `A073220(A000027(n+1))+A073220(n+1)` -/
def P2156052723687783586.Spec : Prop :=
  ∀ n, P2156052723687783586.a n = A072390 n

end A072390

/-!
# A072391: D2(n,n) = Sum_{1<=k<=n} (d_n(k^2)), where d_a(k^2)=card{d: d|k and 1<=d<=a} for real a.

The programs for A072391, the canonical program `A072391.P4293839543337263031` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072391 has offset 1).

The definition of A072391 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072391.P14164628176095933280

`∑[A000188(n+1)+floor(∏{e}[n+1, 2*#+1]/2)]`
-/

namespace A072391.P14164628176095933280
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1) + ⌊((∏ p ∈ Nat.primeFactors (f2 n), (2 * Nat.factorization (f2 n) p + 1) : ℕ) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072391.P14164628176095933280

namespace A072391

/-- `∑[A000188(n+1)+floor(∏{e}[n+1, 2*#+1]/2)]` -/
def P14164628176095933280.Spec : Prop :=
  ∀ n, P14164628176095933280.a n = A072391 (n + 1)

end A072391

/-! ## A072391.P859619608002003383

`∑[A063647(n+1)+∏{p}[n+1, #^val(n+1, #²)]]`
-/

namespace A072391.P859619608002003383
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (n + 1) + ((∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072391.P859619608002003383

namespace A072391

/-- `∑[A063647(n+1)+∏{p}[n+1, #^val(n+1, #²)]]` -/
def P859619608002003383.Spec : Prop :=
  ∀ n, P859619608002003383.a n = A072391 (n + 1)

end A072391

/-! ## A072391.P17264567228637869298

`∑[A018892(n+1)+∏{p}[n+1, #^val(n+1, #²)]-1]`
-/

namespace A072391.P17264567228637869298
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018892 (n + 1) + (((∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072391.P17264567228637869298

namespace A072391

/-- `∑[A018892(n+1)+∏{p}[n+1, #^val(n+1, #²)]-1]` -/
def P17264567228637869298.Spec : Prop :=
  ∀ n, P17264567228637869298.a n = A072391 (n + 1)

end A072391

/-! ## A072391.P4293839543337263031

`A182082(n+1)+∑[∏{p}[n+1, #^val(n+1, #²)]-1]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A072391

/-- `A182082(n+1)+∑[∏{p}[n+1, #^val(n+1, #²)]-1]` -/
def P4293839543337263031.Spec : Prop :=
  ∀ n, P4293839543337263031.a n = A072391 (n + 1)

theorem P4293839543337263031.correct : P4293839543337263031.Spec := by
  intro n
  simp only [A072391, Nat.add_sub_cancel]

end A072391

/-! ## A072391.P3451957098116422027

`A182082(n+1)+A132345(n+1)`
-/

namespace A072391.P3451957098116422027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182082 (n + 1) + A132345 (n + 1)

end

end A072391.P3451957098116422027

namespace A072391

/-- `A182082(n+1)+A132345(n+1)` -/
def P3451957098116422027.Spec : Prop :=
  ∀ n, P3451957098116422027.a n = A072391 (n + 1)

end A072391

/-! ## A072391.P5036911451003239262

`∑[A063647(n+1)+A000188(n+1)]`
-/

namespace A072391.P5036911451003239262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (n + 1) + A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072391.P5036911451003239262

namespace A072391

/-- `∑[A063647(n+1)+A000188(n+1)]` -/
def P5036911451003239262.Spec : Prop :=
  ∀ n, P5036911451003239262.a n = A072391 (n + 1)

end A072391

/-! ## A072391.P18371572552849918358

`∑[A057918(n+1)+A018892(n+1)]`
-/

namespace A072391.P18371572552849918358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (n + 1) + A018892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072391.P18371572552849918358

namespace A072391

/-- `∑[A057918(n+1)+A018892(n+1)]` -/
def P18371572552849918358.Spec : Prop :=
  ∀ n, P18371572552849918358.a n = A072391 (n + 1)

end A072391

/-! ## A072391.P14424050011543274403

`A132345(n+1)+∑[A018892(n+1)]`
-/

namespace A072391.P14424050011543274403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132345 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072391.P14424050011543274403

namespace A072391

/-- `A132345(n+1)+∑[A018892(n+1)]` -/
def P14424050011543274403.Spec : Prop :=
  ∀ n, P14424050011543274403.a n = A072391 (n + 1)

end A072391

/-! ## A072391.P12908555055529893924

`A120486(n+1)+∑[A063647(n+1)]`
-/

namespace A072391.P12908555055529893924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120486 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072391.P12908555055529893924

namespace A072391

/-- `A120486(n+1)+∑[A063647(n+1)]` -/
def P12908555055529893924.Spec : Prop :=
  ∀ n, P12908555055529893924.a n = A072391 (n + 1)

end A072391

/-! ## A072391.P18194377590830779757

`∑[A056924((n+1)²)+A000188(n+1)]`
-/

namespace A072391.P18194377590830779757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 ((n + 1) ^ 2) + A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072391.P18194377590830779757

namespace A072391

/-- `∑[A056924((n+1)²)+A000188(n+1)]` -/
def P18194377590830779757.Spec : Prop :=
  ∀ n, P18194377590830779757.a n = A072391 (n + 1)

end A072391

/-!
# A072395: Numbers k such that reverse(phi(k)) = k.

The programs for A072395, there is no canonical definition to state claims against.
-/

/-! ## A072395.P8214870473238919477

`A069215(comp[∑[A071400(n)]])`
-/

namespace A072395.P8214870473238919477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071400 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069215 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A072395.P8214870473238919477

/-! ## A072395.P12313106049894150578

`A069215(A105209(n+1)+n)`
-/

namespace A072395.P12313106049894150578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069215 (A105209 (n + 1) + (n : ℤ)).toNat

end

end A072395.P12313106049894150578

/-! ## A072395.P2921786477356449337

`A069215(comp[∑[A279111(n+1)]])`
-/

namespace A072395.P2921786477356449337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279111 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069215 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A072395.P2921786477356449337

/-! ## A072395.P11673832754649750356

`A069215(comp[A000695(3*n+2)-1]+1)`
-/

namespace A072395.P11673832754649750356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (3 * n + 2) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069215 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A072395.P11673832754649750356

/-! ## A072395.P8143584447004245425

`A069215(lt[A263767(n), A374251(n+1)])`
-/

namespace A072395.P8143584447004245425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263767 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069215 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A072395.P8143584447004245425

/-!
# A072396: Index of smallest Fibonacci number with n prime factors when counted with multiplicity.

The programs for A072396, there is no canonical definition to state claims against.
-/

/-! ## A072396.P16860970684881352125

`A303215(∑[n]+1)`
-/

namespace A072396.P16860970684881352125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303215 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A072396.P16860970684881352125

/-! ## A072396.P11261316002578710665

`and(-1, A303215(A000124(n)))`
-/

namespace A072396.P11261316002578710665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A303215 (A000124 n).toNat)

end

end A072396.P11261316002578710665

/-! ## A072396.P12334200401406315006

`A303215(A000124(n))+A025444(n)`
-/

namespace A072396.P12334200401406315006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303215 (A000124 n).toNat + A025444 n

end

end A072396.P12334200401406315006

/-! ## A072396.P13141530381377904570

`A303215(A000124(n))+A185255(n)`
-/

namespace A072396.P13141530381377904570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303215 (A000124 n).toNat + A185255 n

end

end A072396.P13141530381377904570

/-! ## A072396.P14281675932133916847

`A303215(A000124(n))%A061722(n)`
-/

namespace A072396.P14281675932133916847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303215 (A000124 n).toNat) (A061722 n)

end

end A072396.P14281675932133916847

/-!
# A072397: Smallest Fibonacci number with n prime factors when counted with multiplicity.

The programs for A072397, there is no canonical definition to state claims against.
-/

/-! ## A072397.P4248123402662140429

`A000045(A072396(n+1))`
-/

namespace A072397.P4248123402662140429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A072396 (n + 1)).toNat

end

end A072397.P4248123402662140429

/-! ## A072397.P4427407631473665856

`A212804(A072396(n+1)+1)`
-/

namespace A072397.P4427407631473665856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A072396 (n + 1) + 1).toNat

end

end A072397.P4427407631473665856

/-! ## A072397.P11032798335362160897

`A020695(A072396(n+1)-3)`
-/

namespace A072397.P11032798335362160897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (A072396 (n + 1) - 3).toNat

end

end A072397.P11032798335362160897

/-! ## A072397.P3829366739307113983

`A053602(2*A072396(n+1))`
-/

namespace A072397.P3829366739307113983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * A072396 (n + 1)).toNat

end

end A072397.P3829366739307113983

/-! ## A072397.P11457611000811490223

`A103609(2*A072396(n+1))`
-/

namespace A072397.P11457611000811490223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * A072396 (n + 1)).toNat

end

end A072397.P11457611000811490223

/-!
# A072398: Numerator of best approximation to Pi with denominator <= 10^n.

The programs for A072398, there is no canonical definition to state claims against.
-/

/-! ## A072398.P4251875298628450672

`round(π*A072399(n))`
-/

namespace A072398.P4251875298628450672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.pi * (A072399 n : ℝ))

end

end A072398.P4251875298628450672

/-! ## A072398.P7625466232071451264

`A224365(A084611(n+1))`
-/

namespace A072398.P7625466232071451264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224365 (A084611 (n + 1)).toNat

end

end A072398.P7625466232071451264

/-!
# A072399: Denominator of best approximation to Pi with denominator <= 10^n.

The programs for A072399, there is no canonical definition to state claims against.
-/

/-! ## A072399.P17616985022320298205

`round(A072398(n)/π)`
-/

namespace A072399.P17616985022320298205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A072398 n : ℝ) / Real.pi)

end

end A072399.P17616985022320298205

/-! ## A072399.P14662428558803734156

`A346534(A095240(n+1))`
-/

namespace A072399.P14662428558803734156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346534 (A095240 (n + 1)).toNat

end

end A072399.P14662428558803734156

