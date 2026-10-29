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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C043
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A093801: a(n) = b(n)*Integral_{x=0..1/(4^n)} (1 - sqrt(x)) dx, where b(n) = 3*24^n.

The programs for A093801, the canonical program `A093801.P12294987091916954248` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093801 has offset 0).

The definition of A093801 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093801.P10160125054064932718

`ogf((1+3x)/(1-9x+18x^2))`
-/

namespace A093801.P10160125054064932718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -9, 18] n

end

end A093801.P10160125054064932718

namespace A093801

/-- `ogf((1+3x)/(1-9x+18x^2))` -/
def P10160125054064932718.Spec : Prop :=
  ∀ n, P10160125054064932718.a n = A093801 n

end A093801

/-! ## A093801.P12294987091916954248

`3*6^n-2*3^n`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A093801

/-- `3*6^n-2*3^n` -/
def P12294987091916954248.Spec : Prop :=
  ∀ n, P12294987091916954248.a n = A093801 n

theorem P12294987091916954248.correct : P12294987091916954248.Spec := by
  intro n
  simp only [A093801]

end A093801

/-! ## A093801.P12172361586329978034

`lcm(2-lcm(3, 2^n), 3^n)`
-/

namespace A093801.P12172361586329978034
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 - (Nat.lcm 3 (2 ^ n) : ℤ)) (3 ^ n : ℤ)

end

end A093801.P12172361586329978034

namespace A093801

/-- `lcm(2-lcm(3, 2^n), 3^n)` -/
def P12172361586329978034.Spec : Prop :=
  ∀ n, (P12172361586329978034.a n : ℤ) = A093801 n

end A093801

/-! ## A093801.P13240408383375875697

`3^n*A033484(n)`
-/

namespace A093801.P13240408383375875697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A033484 n

end

end A093801.P13240408383375875697

namespace A093801

/-- `3^n*A033484(n)` -/
def P13240408383375875697.Spec : Prop :=
  ∀ n, P13240408383375875697.a n = A093801 n

end A093801

/-! ## A093801.P15121835882703481646

`lcm(3^n, ∑[A003945(n)])`
-/

namespace A093801.P15121835882703481646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (3 ^ n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093801.P15121835882703481646

namespace A093801

/-- `lcm(3^n, ∑[A003945(n)])` -/
def P15121835882703481646.Spec : Prop :=
  ∀ n, (P15121835882703481646.a n : ℤ) = A093801 n

end A093801

/-! ## A093801.P17980001083937002825

`3^n*A296953(n+1)`
-/

namespace A093801.P17980001083937002825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A296953 (n + 1)

end

end A093801.P17980001083937002825

namespace A093801

/-- `3^n*A296953(n+1)` -/
def P17980001083937002825.Spec : Prop :=
  ∀ n, P17980001083937002825.a n = A093801 n

end A093801

/-! ## A093801.P3384992439551046226

`A083329(n)*A099856(n)`
-/

namespace A093801.P3384992439551046226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 n * A099856 n

end

end A093801.P3384992439551046226

namespace A093801

/-- `A083329(n)*A099856(n)` -/
def P3384992439551046226.Spec : Prop :=
  ∀ n, P3384992439551046226.a n = A093801 n

end A093801

/-! ## A093801.P5747530063453637573

`lcm(A000244(n), A033484(n))`
-/

namespace A093801.P5747530063453637573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000244 n) (A033484 n)

end

end A093801.P5747530063453637573

namespace A093801

/-- `lcm(A000244(n), A033484(n))` -/
def P5747530063453637573.Spec : Prop :=
  ∀ n, (P5747530063453637573.a n : ℤ) = A093801 n

end A093801

/-! ## A093801.P13984402431684901156

`A000244(n)*A027383(2*n)`
-/

namespace A093801.P13984402431684901156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A027383 (2 * n)

end

end A093801.P13984402431684901156

namespace A093801

/-- `A000244(n)*A027383(2*n)` -/
def P13984402431684901156.Spec : Prop :=
  ∀ n, P13984402431684901156.a n = A093801 n

end A093801

/-! ## A093801.P9995450534606286572

`A027383(2*n)*A038754(2*n)`
-/

namespace A093801.P9995450534606286572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 (2 * n) * A038754 (2 * n)

end

end A093801.P9995450534606286572

namespace A093801

/-- `A027383(2*n)*A038754(2*n)` -/
def P9995450534606286572.Spec : Prop :=
  ∀ n, P9995450534606286572.a n = A093801 n

end A093801

/-! ## A093801.P6112426743355899472

`A027383(2*n)*A108411(2*n)`
-/

namespace A093801.P6112426743355899472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 (2 * n) * A108411 (2 * n)

end

end A093801.P6112426743355899472

namespace A093801

/-- `A027383(2*n)*A108411(2*n)` -/
def P6112426743355899472.Spec : Prop :=
  ∀ n, P6112426743355899472.a n = A093801 n

end A093801

/-! ## A093801.P2564981108954300208

`(A000225(n+1)+A000225(n))*A000244(n)`
-/

namespace A093801.P2564981108954300208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000225 (n + 1) + A000225 n) * A000244 n

end

end A093801.P2564981108954300208

namespace A093801

/-- `(A000225(n+1)+A000225(n))*A000244(n)` -/
def P2564981108954300208.Spec : Prop :=
  ∀ n, P2564981108954300208.a n = A093801 n

end A093801

/-!
# A093802: Number of distinct factorizations of 105*2^n.

The programs for A093802, there is no canonical definition to state claims against.
-/

/-! ## A093802.P3508321511460501695

`∑[∑[A299474(n)+A120452(n+1)]]`
-/

namespace A093802.P3508321511460501695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299474 n + A120452 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093802.P3508321511460501695

/-! ## A093802.P16466512957485677149

`A346426(∑[n+3]+n+3)`
-/

namespace A093802.P16466512957485677149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A093802.P16466512957485677149

/-! ## A093802.P5602928777040528570

`A318284(4*A001747(n+1))`
-/

namespace A093802.P5602928777040528570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (4 * A001747 (n + 1)).toNat

end

end A093802.P5602928777040528570

/-! ## A093802.P3874862007448935804

`A318284(8*A008578(n+1))`
-/

namespace A093802.P3874862007448935804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (8 * A008578 (n + 1)).toNat

end

end A093802.P3874862007448935804

/-! ## A093802.P13404769921432175682

`A318284(8*∏{e}[A006530(n+1), A000040(n*#)])`
-/

namespace A093802.P13404769921432175682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (8 * (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (n * Nat.factorization (f1 n).natAbs p))).toNat

end

end A093802.P13404769921432175682

/-!
# A093803: Greatest odd proper divisor of n; a(1)=1.

The programs for A093803, the canonical program `A093803.P6708475165521758842` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093803 has offset 1).

The definition of A093803 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032742, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A093803.P6708475165521758842

`A000265(A032742(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A093803

/-- `A000265(A032742(n+1))` -/
def P6708475165521758842.Spec : Prop :=
  ∀ n, P6708475165521758842.a n = A093803 (n + 1)

theorem P6708475165521758842.correct : P6708475165521758842.Spec := by
  intro n
  simp only [A093803, Nat.add_sub_cancel]

end A093803

/-! ## A093803.P2795962937962512481

`(n+1)/(A020639(n+1)*(n+1)%2+A006519(n+1)*(1-(n+1)%2))`
-/

namespace A093803.P2795962937962512481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A020639 (n + 1) * (((n + 1) % 2 : ℕ) : ℤ) + A006519 (n + 1) * (1 - (((n + 1) % 2 : ℕ) : ℤ)) : ℚ)

end

end A093803.P2795962937962512481

namespace A093803

/-- `(n+1)/(A020639(n+1)*(n+1)%2+A006519(n+1)*(1-(n+1)%2))` -/
def P2795962937962512481.Spec : Prop :=
  ∀ n, P2795962937962512481.a n = (A093803 (n + 1) : ℚ)

end A093803

/-! ## A093803.P535956489559219991

`A032742((n+1)/ceil(xor(n, n+1)/4))`
-/

namespace A093803.P535956489559219991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 4⌉ : ℚ))).toNat

end

end A093803.P535956489559219991

namespace A093803

/-- `A032742((n+1)/ceil(xor(n, n+1)/4))` -/
def P535956489559219991.Spec : Prop :=
  ∀ n, P535956489559219991.a n = A093803 (n + 1)

end A093803

/-! ## A093803.P16399902126966959611

`gcd(((n+1)/2^val(n+1, 2))², A126287(n+1))`
-/

namespace A093803.P16399902126966959611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)) ^ 2)) (A126287 (n + 1))

end

end A093803.P16399902126966959611

namespace A093803

/-- `gcd(((n+1)/2^val(n+1, 2))², A126287(n+1))` -/
def P16399902126966959611.Spec : Prop :=
  ∀ n, (P16399902126966959611.a n : ℤ) = A093803 (n + 1)

end A093803

/-! ## A093803.P13700332098702077499

`floor((n+1)/ceil(xor(n, n+1)/4))/A020639(n+1)`
-/

namespace A093803.P13700332098702077499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 4⌉ : ℚ)⌋ : ℚ) / (A020639 (n + 1) : ℚ)

end

end A093803.P13700332098702077499

namespace A093803

/-- `floor((n+1)/ceil(xor(n, n+1)/4))/A020639(n+1)` -/
def P13700332098702077499.Spec : Prop :=
  ∀ n, P13700332098702077499.a n = (A093803 (n + 1) : ℚ)

end A093803

/-! ## A093803.P10836475281656373099

`A032742(A259445(n+1))`
-/

namespace A093803.P10836475281656373099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A259445 (n + 1)).toNat

end

end A093803.P10836475281656373099

namespace A093803

/-- `A032742(A259445(n+1))` -/
def P10836475281656373099.Spec : Prop :=
  ∀ n, P10836475281656373099.a n = A093803 (n + 1)

end A093803

/-! ## A093803.P17016529807331244518

`A028234(2*A032742(n+1))`
-/

namespace A093803.P17016529807331244518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (2 * A032742 (n + 1)).toNat

end

end A093803.P17016529807331244518

namespace A093803

/-- `A028234(2*A032742(n+1))` -/
def P17016529807331244518.Spec : Prop :=
  ∀ n, P17016529807331244518.a n = A093803 (n + 1)

end A093803

/-! ## A093803.P2857299945448424086

`A302034(2*A032742(n+1))`
-/

namespace A093803.P2857299945448424086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302034 (2 * A032742 (n + 1)).toNat

end

end A093803.P2857299945448424086

namespace A093803

/-- `A302034(2*A032742(n+1))` -/
def P2857299945448424086.Spec : Prop :=
  ∀ n, P2857299945448424086.a n = A093803 (n + 1)

end A093803

/-! ## A093803.P13487602234865915766

`A302044(2*A032742(n+1))`
-/

namespace A093803.P13487602234865915766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302044 (2 * A032742 (n + 1)).toNat

end

end A093803.P13487602234865915766

namespace A093803

/-- `A302044(2*A032742(n+1))` -/
def P13487602234865915766.Spec : Prop :=
  ∀ n, P13487602234865915766.a n = A093803 (n + 1)

end A093803

/-! ## A093803.P14608332469525108295

`A028234(lcm(2, A032742(n+1)))`
-/

namespace A093803.P14608332469525108295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (Int.lcm 2 (A032742 (n + 1)))

end

end A093803.P14608332469525108295

namespace A093803

/-- `A028234(lcm(2, A032742(n+1)))` -/
def P14608332469525108295.Spec : Prop :=
  ∀ n, P14608332469525108295.a n = A093803 (n + 1)

end A093803

/-! ## A093803.P10724582831293483553

`gcd(A301279(n), A322982(n+1))`
-/

namespace A093803.P10724582831293483553
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A301279 n) (A322982 (n + 1))

end

end A093803.P10724582831293483553

namespace A093803

/-- `gcd(A301279(n), A322982(n+1))` -/
def P10724582831293483553.Spec : Prop :=
  ∀ n, (P10724582831293483553.a n : ℤ) = A093803 (n + 1)

end A093803

/-! ## A093803.P11790763916543776722

`A000265(1-A060681(n+1)+n)`
-/

namespace A093803.P11790763916543776722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (1 - A060681 (n + 1) + (n : ℤ)).toNat

end

end A093803.P11790763916543776722

namespace A093803

/-- `A000265(1-A060681(n+1)+n)` -/
def P11790763916543776722.Spec : Prop :=
  ∀ n, P11790763916543776722.a n = A093803 (n + 1)

theorem P11790763916543776722.correct : P11790763916543776722.Spec := by
  intro n
  simp only [A093803, Nat.add_sub_cancel, A093803.P11790763916543776722.a, A093803.P6708475165521758842.a, A000265, A000265.P16482698636471710744.a, A032742, A032742.P14489579072839730134.a, A060681, A060681.P11747361826650309872.a, A020639, A020639.P7578813688609615429.a, A008578, A008578.P3639467937083264764.a, A055396, A055396.P18305262754425103137.a, A061395, A061395.P8431317036300486107.a, A158611, A158611.P9275629407611603775.a, A243055, A243055.P2464886309294058059.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A093803

/-! ## A093803.P16984347792305228238

`A336651(n+1)*A381639(n+1)`
-/

namespace A093803.P16984347792305228238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336651 (n + 1) * A381639 (n + 1)

end

end A093803.P16984347792305228238

namespace A093803

/-- `A336651(n+1)*A381639(n+1)` -/
def P16984347792305228238.Spec : Prop :=
  ∀ n, P16984347792305228238.a n = A093803 (n + 1)

end A093803

/-! ## A093803.P202400887108843589

`A000265((n+1)/A020639(n+1))`
-/

namespace A093803.P202400887108843589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))).toNat

end

end A093803.P202400887108843589

namespace A093803

/-- `A000265((n+1)/A020639(n+1))` -/
def P202400887108843589.Spec : Prop :=
  ∀ n, P202400887108843589.a n = A093803 (n + 1)

end A093803

/-! ## A093803.P632092774732854264

`A032742((n+1)/A160467(n+1))`
-/

namespace A093803.P632092774732854264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A160467 (n + 1) : ℚ))).toNat

end

end A093803.P632092774732854264

namespace A093803

/-- `A032742((n+1)/A160467(n+1))` -/
def P632092774732854264.Spec : Prop :=
  ∀ n, P632092774732854264.a n = A093803 (n + 1)

end A093803

/-! ## A093803.P1611778013594716123

`A259445(n+1)/A020639(n+1)`
-/

namespace A093803.P1611778013594716123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259445 (n + 1) : ℚ) / (A020639 (n + 1) : ℚ)

end

end A093803.P1611778013594716123

namespace A093803

/-- `A259445(n+1)/A020639(n+1)` -/
def P1611778013594716123.Spec : Prop :=
  ∀ n, P1611778013594716123.a n = (A093803 (n + 1) : ℚ)

end A093803

/-! ## A093803.P3787938686276194362

`A000265(n+1)%A126286(n+1)`
-/

namespace A093803.P3787938686276194362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 (n + 1)) (A126286 (n + 1))

end

end A093803.P3787938686276194362

namespace A093803

/-- `A000265(n+1)%A126286(n+1)` -/
def P3787938686276194362.Spec : Prop :=
  ∀ n, P3787938686276194362.a n = A093803 (n + 1)

end A093803

/-! ## A093803.P9242967775333383166

`A171435(n+1)%A126286(n+1)`
-/

namespace A093803.P9242967775333383166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171435 (n + 1)) (A126286 (n + 1))

end

end A093803.P9242967775333383166

namespace A093803

/-- `A171435(n+1)%A126286(n+1)` -/
def P9242967775333383166.Spec : Prop :=
  ∀ n, P9242967775333383166.a n = A093803 (n + 1)

end A093803

/-! ## A093803.P6784661763080194679

`A000265(gcd(n+1, A060681(n+1)))`
-/

namespace A093803.P6784661763080194679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.gcd (n + 1 : ℤ) (A060681 (n + 1)))

end

end A093803.P6784661763080194679

namespace A093803

/-- `A000265(gcd(n+1, A060681(n+1)))` -/
def P6784661763080194679.Spec : Prop :=
  ∀ n, P6784661763080194679.a n = A093803 (n + 1)

end A093803

/-!
# A093804: Primes p such that p! + 1 is also prime.

The programs for A093804, there is no canonical definition to state claims against.
-/

/-! ## A093804.P4645691792714772252

`p?[A002981(n+1)]`
-/

namespace A093804.P4645691792714772252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002981 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A093804.P4645691792714772252

/-! ## A093804.P12424627971961033478

`p?[Δ[A002981(gcd(xor(1, n²), ∑[n]))]]`
-/

namespace A093804.P12424627971961033478
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002981 (Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f3 j))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A093804.P12424627971961033478

/-! ## A093804.P11356722101977439865

`p?[Δ[A002981(ceil(C(or(1, n), n)/2))]]`
-/

namespace A093804.P11356722101977439865
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002981 ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A093804.P11356722101977439865

/-! ## A093804.P11324843683409595508

`p?[Δ[A002981(A152271(n))]]`
-/

namespace A093804.P11324843683409595508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002981 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A093804.P11324843683409595508

/-!
# A093805: Numbers n with property that sum of digits is prime and number of prime digits is prime.

The programs for A093805, there is no canonical definition to state claims against.
-/

/-! ## A093805.P717159369843101249

`∩[A028834(n+1), A092619(n+1)]`
-/

namespace A093805.P717159369843101249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093805.P717159369843101249

/-!
# A093806: Primes n with property that sum of digits is prime and number of prime digits is prime.

The programs for A093806, there is no canonical definition to state claims against.
-/

/-! ## A093806.P11724090623633201797

`p?[A093805(n+1)]`
-/

namespace A093806.P11724090623633201797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A093806.P11724090623633201797

/-! ## A093806.P2570937216450808938

`filter[A093805(n+1), A010051(#)]`
-/

namespace A093806.P2570937216450808938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A093806.P2570937216450808938

/-! ## A093806.P16088421499438677271

`filter[A093805(n+1), A080339(#)]`
-/

namespace A093806.P16088421499438677271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A093806.P16088421499438677271

/-! ## A093806.P15997453195951825068

`filter[A093805(n+1), A080545(#)]`
-/

namespace A093806.P15997453195951825068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A093806.P15997453195951825068

/-! ## A093806.P1927900119312597297

`filter[A093805(n+1), A171387(#)]`
-/

namespace A093806.P1927900119312597297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A093806.P1927900119312597297

/-!
# A093807: Palindromic numbers with property that sum of digits is prime and number of prime digits is prime.

The programs for A093807, there is no canonical definition to state claims against.
-/

/-! ## A093807.P18424043206562296608

`filter[A093805(n+1), A136522(#)]`
-/

namespace A093807.P18424043206562296608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A093807.P18424043206562296608

/-! ## A093807.P14372941546986260415

`∩[A093805(n+1), A056142(n)]`
-/

namespace A093807.P14372941546986260415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093807.P14372941546986260415

/-! ## A093807.P15929542425964135528

`∩[A002113(n+1), A093805(n+1)]`
-/

namespace A093807.P15929542425964135528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093807.P15929542425964135528

/-! ## A093807.P3270987324243106159

`∩[A046075(n+1), A093805(n+1)]`
-/

namespace A093807.P3270987324243106159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093807.P3270987324243106159

/-! ## A093807.P9776787144434032756

`∩[A050783(n+1), A093805(n+1)]`
-/

namespace A093807.P9776787144434032756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093807.P9776787144434032756

/-!
# A093808: Palindromic primes with property that sum of digits is prime and number of prime digits is prime.

The programs for A093808, there is no canonical definition to state claims against.
-/

/-! ## A093808.P5088075041795471856

`∩[A002385(n+1), A093807(n+1)]`
-/

namespace A093808.P5088075041795471856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093808.P5088075041795471856

/-! ## A093808.P5513538223208820961

`∩[A062687(n+1), A093807(n+1)]`
-/

namespace A093808.P5513538223208820961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093808.P5513538223208820961

/-! ## A093808.P5089069880187097421

`∩[A072299(n+1), A093807(n+1)]`
-/

namespace A093808.P5089069880187097421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093808.P5089069880187097421

/-! ## A093808.P5053611625565914271

`∩[A080716(n+1), A093807(n+1)]`
-/

namespace A093808.P5053611625565914271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093808.P5053611625565914271

/-! ## A093808.P10115499342766484488

`∩[A082806(n+1), A093807(n+1)]`
-/

namespace A093808.P10115499342766484488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093808.P10115499342766484488

/-! ## A093808.P17795827491644298177

`∩[A093807(n+1), A169829(n+1)]`
-/

namespace A093808.P17795827491644298177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093808.P17795827491644298177

/-! ## A093808.P3019993075827213528

`∩[A093807(n+1), A188650(n+1)]`
-/

namespace A093808.P3019993075827213528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093808.P3019993075827213528

/-! ## A093808.P4308473974825637961

`∩[A093807(n+1), A340252(n+1)]`
-/

namespace A093808.P4308473974825637961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093808.P4308473974825637961

/-! ## A093808.P11805172942748519405

`∩[A084092(n+1), A093807(n+1)]`
-/

namespace A093808.P11805172942748519405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093808.P11805172942748519405

/-! ## A093808.P12689570934242301359

`∩[A093807(n+1), A350836(n+1)]`
-/

namespace A093808.P12689570934242301359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093808.P12689570934242301359

/-! ## A093808.P5196747163442414116

`∩[A093807(n+1), A232183(n+1)]`
-/

namespace A093808.P5196747163442414116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093808.P5196747163442414116

/-! ## A093808.P6838753525177824267

`∩[A093807(n+1), A192139(n+1)]`
-/

namespace A093808.P6838753525177824267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093808.P6838753525177824267

/-! ## A093808.P11432645429922560252

`∩[A069217(n+1), A093807(n+1)]`
-/

namespace A093808.P11432645429922560252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093808.P11432645429922560252

/-!
# A093809: a[n] =a[n-1] + 2*n*Prime[n]-n^2.

The programs for A093809, the canonical program `A093809.P10690986031535740142` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093809 has offset 1).

The definition of A093809 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*(n+1)*A000040(n+1)-(n+1)²` (program `A093809.P10690986031535740142`, by `A093809.P10690986031535740142.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A093809.P10690986031535740142

`a(n-1)+2*(n+1)*A000040(n+1)-(n+1)²` with `a(0)=0`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A093809

/-- `a(n-1)+2*(n+1)*A000040(n+1)-(n+1)²` -/
def P10690986031535740142.Spec : Prop :=
  ∀ n, P10690986031535740142.a n = A093809 (n + 1)

theorem P10690986031535740142.correct : P10690986031535740142.Spec := by
  intro n
  simp only [A093809, Nat.add_sub_cancel]

end A093809

/-! ## A093809.P2760437200676210289

`∑[(n+1)*(A064680(A000040(n+1))-(n+1))]`
-/

namespace A093809.P2760437200676210289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A064680 (A000040 (n + 1)).toNat - (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093809.P2760437200676210289

namespace A093809

/-- `∑[(n+1)*(A064680(A000040(n+1))-(n+1))]` -/
def P2760437200676210289.Spec : Prop :=
  ∀ n, P2760437200676210289.a n = A093809 (n + 1)

end A093809

/-! ## A093809.P5634494265721476727

`∑[(n+1)*(A347681(∑[n]+1)-n)]`
-/

namespace A093809.P5634494265721476727
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A347681 (∑ j ∈ Finset.range (n + 1), f2 j + 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093809.P5634494265721476727

namespace A093809

/-- `∑[(n+1)*(A347681(∑[n]+1)-n)]` -/
def P5634494265721476727.Spec : Prop :=
  ∀ n, P5634494265721476727.a n = A093809 (n + 1)

end A093809

/-! ## A093809.P320595456414676136

`∑[(n+1)*(A347682(∑[n+1])-n)]`
-/

namespace A093809.P320595456414676136
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A347682 (∑ j ∈ Finset.range (n + 1), f2 j) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093809.P320595456414676136

namespace A093809

/-- `∑[(n+1)*(A347682(∑[n+1])-n)]` -/
def P320595456414676136.Spec : Prop :=
  ∀ n, P320595456414676136.a n = A093809 (n + 1)

end A093809

/-!
# A093810: Smallest prime factor of 2^n-3.

The programs for A093810, the canonical program `A093810.P16790172799095051837` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093810 has offset 2).

The definition of A093810 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020639, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A093810.P16790172799095051837

`A020639(A036563(n+2))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A093810

/-- `A020639(A036563(n+2))` -/
def P16790172799095051837.Spec : Prop :=
  ∀ n, P16790172799095051837.a n = A093810 (n + 2)

theorem P16790172799095051837.correct : P16790172799095051837.Spec := by
  intro n
  simp only [A093810, Nat.add_sub_cancel]

end A093810

/-! ## A093810.P6008120978144529940

`A020639(2^(n+2)-3)`
-/

namespace A093810.P6008120978144529940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 ^ (n + 2) - 3)

end

end A093810.P6008120978144529940

namespace A093810

/-- `A020639(2^(n+2)-3)` -/
def P6008120978144529940.Spec : Prop :=
  ∀ n, P6008120978144529940.a n = A093810 (n + 2)

end A093810

/-! ## A093810.P10712638808953325437

`or(1, A020639(∑[∑[2^n]]+n))`
-/

namespace A093810.P10712638808953325437
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A020639 (∑ j ∈ Finset.range (n + 1), f1 j + n))

end

end A093810.P10712638808953325437

namespace A093810

/-- `or(1, A020639(∑[∑[2^n]]+n))` -/
def P10712638808953325437.Spec : Prop :=
  ∀ n, P10712638808953325437.a n = A093810 (n + 2)

end A093810

/-! ## A093810.P16744721033314417888

`A374196(A028399(n+2)+1)`
-/

namespace A093810.P16744721033314417888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374196 (A028399 (n + 2) + 1).toNat

end

end A093810.P16744721033314417888

namespace A093810

/-- `A374196(A028399(n+2)+1)` -/
def P16744721033314417888.Spec : Prop :=
  ∀ n, P16744721033314417888.a n = A093810 (n + 2)

end A093810

/-!
# A093811: Sum of the digital products of the divisors of n.

The programs for A093811, the canonical program `A093811.P2245103281644187700` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093811 has offset 1).

The definition of A093811 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093811.P2245103281644187700

`∑{d}[n+1, A007954(#)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A093811

/-- `∑{d}[n+1, A007954(#)]` -/
def P2245103281644187700.Spec : Prop :=
  ∀ n, P2245103281644187700.a n = A093811 (n + 1)

theorem P2245103281644187700.correct : P2245103281644187700.Spec := by
  intro n
  simp only [A093811, Nat.add_sub_cancel]

end A093811

/-! ## A093811.P13624978685655185041

`∑{d}[n+1, abs(A187844(#))]`
-/

namespace A093811.P13624978685655185041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), |A187844 d|

end

end A093811.P13624978685655185041

namespace A093811

/-- `∑{d}[n+1, abs(A187844(#))]` -/
def P13624978685655185041.Spec : Prop :=
  ∀ n, P13624978685655185041.a n = A093811 (n + 1)

end A093811

/-! ## A093811.P1097983547845926661

`∑{d}[n+1, A302801(#)%(2*#)]`
-/

namespace A093811.P1097983547845926661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A302801 d) (2 * d : ℤ)

end

end A093811.P1097983547845926661

namespace A093811

/-- `∑{d}[n+1, A302801(#)%(2*#)]` -/
def P1097983547845926661.Spec : Prop :=
  ∀ n, P1097983547845926661.a n = A093811 (n + 1)

end A093811

/-! ## A093811.P8786593651890312957

`∑{d}[n+1, #%10]%A326533(3*n+5)`
-/

namespace A093811.P8786593651890312957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ d ∈ Nat.divisors (f1 n), d % 10 : ℕ) : ℤ) (A326533 (3 * n + 5))

end

end A093811.P8786593651890312957

namespace A093811

/-- `∑{d}[n+1, #%10]%A326533(3*n+5)` -/
def P8786593651890312957.Spec : Prop :=
  ∀ n, P8786593651890312957.a n = A093811 (n + 1)

end A093811

/-! ## A093811.P16347893528359922952

`A367466(n+1)+A000007(A331508(3*n+2))`
-/

namespace A093811.P16347893528359922952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367466 (n + 1) + A000007 (A331508 (3 * n + 2)).toNat

end

end A093811.P16347893528359922952

namespace A093811

/-- `A367466(n+1)+A000007(A331508(3*n+2))` -/
def P16347893528359922952.Spec : Prop :=
  ∀ n, P16347893528359922952.a n = A093811 (n + 1)

end A093811

/-!
# A093817: Largest prime factor of 2^n-3.

The programs for A093817, the canonical program `A093817.P10961853332067796385` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093817 has offset 2).

The definition of A093817 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A093817.P10961853332067796385

`A006530(A036563(n+2))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A093817

/-- `A006530(A036563(n+2))` -/
def P10961853332067796385.Spec : Prop :=
  ∀ n, P10961853332067796385.a n = A093817 (n + 2)

theorem P10961853332067796385.correct : P10961853332067796385.Spec := by
  intro n
  simp only [A093817, Nat.add_sub_cancel]

end A093817

/-! ## A093817.P14508156050390585043

`A006530(2^(n+2)-3)`
-/

namespace A093817.P14508156050390585043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 ^ (n + 2) - 3)

end

end A093817.P14508156050390585043

namespace A093817

/-- `A006530(2^(n+2)-3)` -/
def P14508156050390585043.Spec : Prop :=
  ∀ n, P14508156050390585043.a n = A093817 (n + 2)

end A093817

/-! ## A093817.P3857658984333337215

`A088387(A020707(n)-3)`
-/

namespace A093817.P3857658984333337215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (A020707 n - 3).toNat

end

end A093817.P3857658984333337215

namespace A093817

/-- `A088387(A020707(n)-3)` -/
def P3857658984333337215.Spec : Prop :=
  ∀ n, P3857658984333337215.a n = A093817 (n + 2)

end A093817

/-! ## A093817.P17119044499460840381

`A088387(∑[A046055(n+1)])`
-/

namespace A093817.P17119044499460840381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A093817.P17119044499460840381

namespace A093817

/-- `A088387(∑[A046055(n+1)])` -/
def P17119044499460840381.Spec : Prop :=
  ∀ n, P17119044499460840381.a n = A093817 (n + 2)

end A093817

/-! ## A093817.P14859922694660483487

`A299766(A091270(n+1))`
-/

namespace A093817.P14859922694660483487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299766 (A091270 (n + 1)).toNat

end

end A093817.P14859922694660483487

namespace A093817

/-- `A299766(A091270(n+1))` -/
def P14859922694660483487.Spec : Prop :=
  ∀ n, P14859922694660483487.a n = A093817 (n + 2)

end A093817

/-!
# A093818: a(n) = gcd(A001008(n), n!).

The programs for A093818, the canonical program `A093818.P17790798542643971304` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093818 has offset 1).

The definition of A093818 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093818.P477114136873659060

`gcd(A110566(n+1), A308970(n+1))`
-/

namespace A093818.P477114136873659060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A110566 (n + 1)) (A308970 (n + 1))

end

end A093818.P477114136873659060

namespace A093818

/-- `gcd(A110566(n+1), A308970(n+1))` -/
def P477114136873659060.Spec : Prop :=
  ∀ n, (P477114136873659060.a n : ℤ) = A093818 (n + 1)

end A093818

/-! ## A093818.P4395331707793583387

`gcd(A003418(A008611(n)), A308970(n+1))`
-/

namespace A093818.P4395331707793583387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003418 (A008611 n).toNat) (A308970 (n + 1))

end

end A093818.P4395331707793583387

namespace A093818

/-- `gcd(A003418(A008611(n)), A308970(n+1))` -/
def P4395331707793583387.Spec : Prop :=
  ∀ n, (P4395331707793583387.a n : ℤ) = A093818 (n + 1)

end A093818

/-! ## A093818.P5076939294988872063

`gcd(A003418(n), A308970(n+1))`
-/

namespace A093818.P5076939294988872063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003418 n) (A308970 (n + 1))

end

end A093818.P5076939294988872063

namespace A093818

/-- `gcd(A003418(n), A308970(n+1))` -/
def P5076939294988872063.Spec : Prop :=
  ∀ n, (P5076939294988872063.a n : ℤ) = A093818 (n + 1)

end A093818

/-! ## A093818.P2170429322731572152

`gcd(A000793(n), A001008(n+1))`
-/

namespace A093818.P2170429322731572152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000793 n) (A001008 (n + 1))

end

end A093818.P2170429322731572152

namespace A093818

/-- `gcd(A000793(n), A001008(n+1))` -/
def P2170429322731572152.Spec : Prop :=
  ∀ n, (P2170429322731572152.a n : ℤ) = A093818 (n + 1)

end A093818

/-! ## A093818.P14722077493167725408

`A001008(n+1)/A060746(n+1)`
-/

namespace A093818.P14722077493167725408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001008 (n + 1) : ℚ) / (A060746 (n + 1) : ℚ)

end

end A093818.P14722077493167725408

namespace A093818

/-- `A001008(n+1)/A060746(n+1)` -/
def P14722077493167725408.Spec : Prop :=
  ∀ n, P14722077493167725408.a n = (A093818 (n + 1) : ℚ)

end A093818

/-! ## A093818.P17790798542643971304

`gcd(∑[1/(n+1)]*A002805(n+1), A027457(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A093818

/-- `gcd(∑[1/(n+1)]*A002805(n+1), A027457(n+1))` -/
def P17790798542643971304.Spec : Prop :=
  ∀ n, (P17790798542643971304.a n : ℤ) = A093818 (n + 1)

theorem P17790798542643971304.correct : P17790798542643971304.Spec := by
  intro n
  simp only [A093818, Nat.add_sub_cancel]

end A093818

/-! ## A093818.P14179547732869178434

`gcd(A001008(A000027(n+1)), A027457(n+1))`
-/

namespace A093818.P14179547732869178434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001008 (A000027 (n + 1)).toNat) (A027457 (n + 1))

end

end A093818.P14179547732869178434

namespace A093818

/-- `gcd(A001008(A000027(n+1)), A027457(n+1))` -/
def P14179547732869178434.Spec : Prop :=
  ∀ n, (P14179547732869178434.a n : ℤ) = A093818 (n + 1)

end A093818

/-! ## A093818.P3025068447871276006

`gcd(A034386(n)+A001008(n+1), A034386(n))`
-/

namespace A093818.P3025068447871276006
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034386 n + A001008 (n + 1)) (A034386 n)

end

end A093818.P3025068447871276006

namespace A093818

/-- `gcd(A034386(n)+A001008(n+1), A034386(n))` -/
def P3025068447871276006.Spec : Prop :=
  ∀ n, (P3025068447871276006.a n : ℤ) = A093818 (n + 1)

end A093818

/-! ## A093818.P9473898100334109571

`A025529(n+1)/(A060746(n+1)*A110566(n+1))`
-/

namespace A093818.P9473898100334109571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025529 (n + 1) : ℚ) / (A060746 (n + 1) * A110566 (n + 1) : ℚ)

end

end A093818.P9473898100334109571

namespace A093818

/-- `A025529(n+1)/(A060746(n+1)*A110566(n+1))` -/
def P9473898100334109571.Spec : Prop :=
  ∀ n, P9473898100334109571.a n = (A093818 (n + 1) : ℚ)

end A093818

/-! ## A093818.P15747051304322653885

`A096617(n+1)/(A060746(n+1)*A120263(n+1))`
-/

namespace A093818.P15747051304322653885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096617 (n + 1) : ℚ) / (A060746 (n + 1) * A120263 (n + 1) : ℚ)

end

end A093818.P15747051304322653885

namespace A093818

/-- `A096617(n+1)/(A060746(n+1)*A120263(n+1))` -/
def P15747051304322653885.Spec : Prop :=
  ∀ n, P15747051304322653885.a n = (A093818 (n + 1) : ℚ)

end A093818

/-! ## A093818.P6784827083755962821

`gcd(A002182(n+1)+A001008(n+1), A002182(n+1))`
-/

namespace A093818.P6784827083755962821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002182 (n + 1) + A001008 (n + 1)) (A002182 (n + 1))

end

end A093818.P6784827083755962821

namespace A093818

/-- `gcd(A002182(n+1)+A001008(n+1), A002182(n+1))` -/
def P6784827083755962821.Spec : Prop :=
  ∀ n, (P6784827083755962821.a n : ℤ) = A093818 (n + 1)

end A093818

/-! ## A093818.P15412637106170782590

`gcd(89*A001008(n+1), A002182(n+1))`
-/

namespace A093818.P15412637106170782590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (89 * A001008 (n + 1)) (A002182 (n + 1))

end

end A093818.P15412637106170782590

namespace A093818

/-- `gcd(89*A001008(n+1), A002182(n+1))` -/
def P15412637106170782590.Spec : Prop :=
  ∀ n, (P15412637106170782590.a n : ℤ) = A093818 (n + 1)

end A093818

/-! ## A093818.P16209556193295705449

`gcd(A007662(n), A382213(n+1))`
-/

namespace A093818.P16209556193295705449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007662 n) (A382213 (n + 1))

end

end A093818.P16209556193295705449

namespace A093818

/-- `gcd(A007662(n), A382213(n+1))` -/
def P16209556193295705449.Spec : Prop :=
  ∀ n, (P16209556193295705449.a n : ℤ) = A093818 (n + 1)

end A093818

/-! ## A093818.P8246775107794701344

`gcd(A001008(n+1)², A034386(n))`
-/

namespace A093818.P8246775107794701344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001008 (n + 1) ^ 2) (A034386 n)

end

end A093818.P8246775107794701344

namespace A093818

/-- `gcd(A001008(n+1)², A034386(n))` -/
def P8246775107794701344.Spec : Prop :=
  ∀ n, (P8246775107794701344.a n : ℤ) = A093818 (n + 1)

end A093818

/-!
# A093819: Algebraic degree of sin(2*Pi/n).

The programs for A093819, the canonical program `A093819.P10904425845107863521` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093819 has offset 1).

The definition of A093819 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093819.P8534392793861310228

`A232626(2*(n+1))`
-/

namespace A093819.P8534392793861310228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232626 (2 * (n + 1))

end

end A093819.P8534392793861310228

namespace A093819

/-- `A232626(2*(n+1))` -/
def P8534392793861310228.Spec : Prop :=
  ∀ n, P8534392793861310228.a n = A093819 (n + 1)

end A093819

/-! ## A093819.P8132180504763840847

`A055035(gcd(n+1, ∑[n]))`
-/

namespace A093819.P8132180504763840847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055035 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A093819.P8132180504763840847

namespace A093819

/-- `A055035(gcd(n+1, ∑[n]))` -/
def P8132180504763840847.Spec : Prop :=
  ∀ n, P8132180504763840847.a n = A093819 (n + 1)

end A093819

/-! ## A093819.P5448017727280492276

`A055035((n+1)/(n%2+1))`
-/

namespace A093819.P5448017727280492276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055035 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((n % 2 + 1 : ℕ) : ℚ))).toNat

end

end A093819.P5448017727280492276

namespace A093819

/-- `A055035((n+1)/(n%2+1))` -/
def P5448017727280492276.Spec : Prop :=
  ∀ n, P5448017727280492276.a n = A093819 (n + 1)

end A093819

/-! ## A093819.P9628562763984678612

`A055035((n+1)/(and(1, n)+1))`
-/

namespace A093819.P9628562763984678612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055035 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.land 1 n + 1 : ℚ))).toNat

end

end A093819.P9628562763984678612

namespace A093819

/-- `A055035((n+1)/(and(1, n)+1))` -/
def P9628562763984678612.Spec : Prop :=
  ∀ n, P9628562763984678612.a n = A093819 (n + 1)

end A093819

/-! ## A093819.P10205473625878728869

`A055035((∑[n]+n)%(n+1)+1)`
-/

namespace A093819.P10205473625878728869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055035 ((∑ j ∈ Finset.range (n + 1), f1 j + n) % (n + 1) + 1)

end

end A093819.P10205473625878728869

namespace A093819

/-- `A055035((∑[n]+n)%(n+1)+1)` -/
def P10205473625878728869.Spec : Prop :=
  ∀ n, P10205473625878728869.a n = A093819 (n + 1)

end A093819

/-! ## A093819.P9175339653214375788

`A055035(Δ[A001318(n)])`
-/

namespace A093819.P9175339653214375788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055035 (f1 (n + 1) - f1 n).toNat

end

end A093819.P9175339653214375788

namespace A093819

/-- `A055035(Δ[A001318(n)])` -/
def P9175339653214375788.Spec : Prop :=
  ∀ n, P9175339653214375788.a n = A093819 (n + 1)

end A093819

/-! ## A093819.P2404451206248083806

`A055035(A026741(n+1))`
-/

namespace A093819.P2404451206248083806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055035 (A026741 (n + 1)).toNat

end

end A093819.P2404451206248083806

namespace A093819

/-- `A055035(A026741(n+1))` -/
def P2404451206248083806.Spec : Prop :=
  ∀ n, P2404451206248083806.a n = A093819 (n + 1)

end A093819

/-! ## A093819.P10904425845107863521

`A055034(A225975(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A093819

/-- `A055034(A225975(n+1))` -/
def P10904425845107863521.Spec : Prop :=
  ∀ n, P10904425845107863521.a n = A093819 (n + 1)

theorem P10904425845107863521.correct : P10904425845107863521.Spec := by
  intro n
  simp only [A093819, Nat.add_sub_cancel]

end A093819

/-! ## A093819.P13870547745899376694

`A055035(∑[1-A001057(n)])`
-/

namespace A093819.P13870547745899376694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055035 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A093819.P13870547745899376694

namespace A093819

/-- `A055035(∑[1-A001057(n)])` -/
def P13870547745899376694.Spec : Prop :=
  ∀ n, P13870547745899376694.a n = A093819 (n + 1)

end A093819

/-! ## A093819.P7573889282775015496

`A055035(A060819(2*(n+1)))`
-/

namespace A093819.P7573889282775015496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055035 (A060819 (2 * (n + 1))).toNat

end

end A093819.P7573889282775015496

namespace A093819

/-- `A055035(A060819(2*(n+1)))` -/
def P7573889282775015496.Spec : Prop :=
  ∀ n, P7573889282775015496.a n = A093819 (n + 1)

end A093819

/-! ## A093819.P5292773468610498038

`A023022(2*A225975(n+1))`
-/

namespace A093819.P5292773468610498038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (2 * A225975 (n + 1)).toNat

end

end A093819.P5292773468610498038

namespace A093819

/-- `A023022(2*A225975(n+1))` -/
def P5292773468610498038.Spec : Prop :=
  ∀ n, P5292773468610498038.a n = A093819 (n + 1)

end A093819

/-! ## A093819.P13103829912132791448

`A055034(A232625(2*(n+1)))`
-/

namespace A093819.P13103829912132791448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A232625 (2 * (n + 1))).toNat

end

end A093819.P13103829912132791448

namespace A093819

/-- `A055034(A232625(2*(n+1)))` -/
def P13103829912132791448.Spec : Prop :=
  ∀ n, P13103829912132791448.a n = A093819 (n + 1)

end A093819

/-! ## A093819.P16263421197851430723

`A023022(lcm(2, A178182(n+1)))`
-/

namespace A093819.P16263421197851430723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (Int.lcm 2 (A178182 (n + 1)))

end

end A093819.P16263421197851430723

namespace A093819

/-- `A023022(lcm(2, A178182(n+1)))` -/
def P16263421197851430723.Spec : Prop :=
  ∀ n, P16263421197851430723.a n = A093819 (n + 1)

end A093819

/-! ## A093819.P8501225370033449227

`A023022(A178182(n+1)+char[3])`
-/

namespace A093819.P8501225370033449227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (A178182 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A093819.P8501225370033449227

namespace A093819

/-- `A023022(A178182(n+1)+char[3])` -/
def P8501225370033449227.Spec : Prop :=
  ∀ n, P8501225370033449227.a n = A093819 (n + 1)

end A093819

/-! ## A093819.P4126072626644676490

`A023022(2*A232625(2*(n+1)))`
-/

namespace A093819.P4126072626644676490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (2 * A232625 (2 * (n + 1))).toNat

end

end A093819.P4126072626644676490

namespace A093819

/-- `A023022(2*A232625(2*(n+1)))` -/
def P4126072626644676490.Spec : Prop :=
  ∀ n, P4126072626644676490.a n = A093819 (n + 1)

end A093819

/-! ## A093819.P1775275611973839730

`A055035(n+1-A002411(n)%(n+1))`
-/

namespace A093819.P1775275611973839730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055035 ((n + 1 : ℤ) - Int.tmod (A002411 n) (n + 1 : ℤ)).toNat

end

end A093819.P1775275611973839730

namespace A093819

/-- `A055035(n+1-A002411(n)%(n+1))` -/
def P1775275611973839730.Spec : Prop :=
  ∀ n, P1775275611973839730.a n = A093819 (n + 1)

end A093819

/-! ## A093819.P2219537002076732633

`A004525(A000010(A178182(n+1)))`
-/

namespace A093819.P2219537002076732633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A000010 (A178182 (n + 1)).toNat).toNat

end

end A093819.P2219537002076732633

namespace A093819

/-- `A004525(A000010(A178182(n+1)))` -/
def P2219537002076732633.Spec : Prop :=
  ∀ n, P2219537002076732633.a n = A093819 (n + 1)

end A093819

/-! ## A093819.P6075699087301327500

`A065033(A000010(A178182(n+1))-1)`
-/

namespace A093819.P6075699087301327500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A000010 (A178182 (n + 1)).toNat - 1).toNat

end

end A093819.P6075699087301327500

namespace A093819

/-- `A065033(A000010(A178182(n+1))-1)` -/
def P6075699087301327500.Spec : Prop :=
  ∀ n, P6075699087301327500.a n = A093819 (n + 1)

end A093819

/-! ## A093819.P6924491455962302322

`A055035(A001318(n+1)-A001318(n))`
-/

namespace A093819.P6924491455962302322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055035 (A001318 (n + 1) - A001318 n).toNat

end

end A093819.P6924491455962302322

namespace A093819

/-- `A055035(A001318(n+1)-A001318(n))` -/
def P6924491455962302322.Spec : Prop :=
  ∀ n, P6924491455962302322.a n = A093819 (n + 1)

end A093819

/-! ## A093819.P16893069685537183864

`A023022(A225975(n+1)+A225975(n+1))`
-/

namespace A093819.P16893069685537183864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (A225975 (n + 1) + A225975 (n + 1)).toNat

end

end A093819.P16893069685537183864

namespace A093819

/-- `A023022(A225975(n+1)+A225975(n+1))` -/
def P16893069685537183864.Spec : Prop :=
  ∀ n, P16893069685537183864.a n = A093819 (n + 1)

end A093819

/-!
# A093821: Decimal expansion of (2*(3 - sqrt(3)))/3.

The programs for A093821, there is no canonical definition to state claims against.
-/

/-! ## A093821.P7160917844822586060

`9-A246724(n)`
-/

namespace A093821.P7160917844822586060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A246724 n

end

end A093821.P7160917844822586060

/-! ## A093821.P12438077108576420073

`9-A020832(n+1)`
-/

namespace A093821.P12438077108576420073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A020832 (n + 1)

end

end A093821.P12438077108576420073

/-! ## A093821.P7524738794712676112

`9-A176053(n+1)`
-/

namespace A093821.P7524738794712676112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A176053 (n + 1 + 1)

end

end A093821.P7524738794712676112

/-!
# A093829: Expansion of q * psi(q^3)^3 / psi(q) in powers of q where psi() is a Ramanujan theta function.

The programs for A093829, the canonical program `A093829.P14089070398035005194` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093829 has offset 1).

The definition of A093829 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093829.P6186830097520149781

`(-1)^n*A113447(n+1)`
-/

namespace A093829.P6186830097520149781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A113447 (n + 1)

end

end A093829.P6186830097520149781

namespace A093829

/-- `(-1)^n*A113447(n+1)` -/
def P6186830097520149781.Spec : Prop :=
  ∀ n, P6186830097520149781.a n = A093829 (n + 1)

end A093829

/-! ## A093829.P7059043368028559043

`∑{d}[n+1, A112300(#)]`
-/

namespace A093829.P7059043368028559043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A112300 d

end

end A093829.P7059043368028559043

namespace A093829

/-- `∑{d}[n+1, A112300(#)]` -/
def P7059043368028559043.Spec : Prop :=
  ∀ n, P7059043368028559043.a n = A093829 (n + 1)

end A093829

/-! ## A093829.P14089070398035005194

`A112848(A038502(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A093829

/-- `A112848(A038502(n+1))` -/
def P14089070398035005194.Spec : Prop :=
  ∀ n, P14089070398035005194.a n = A093829 (n + 1)

theorem P14089070398035005194.correct : P14089070398035005194.Spec := by
  intro n
  simp only [A093829, Nat.add_sub_cancel]

end A093829

/-! ## A093829.P16151873215589227027

`A136748(A065883(n+1))`
-/

namespace A093829.P16151873215589227027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136748 (A065883 (n + 1)).toNat

end

end A093829.P16151873215589227027

namespace A093829

/-- `A136748(A065883(n+1))` -/
def P16151873215589227027.Spec : Prop :=
  ∀ n, P16151873215589227027.a n = A093829 (n + 1)

end A093829

/-! ## A093829.P903747212051684868

`A131561(n)*A261884(n+1)`
-/

namespace A093829.P903747212051684868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131561 n * A261884 (n + 1)

end

end A093829.P903747212051684868

namespace A093829

/-- `A131561(n)*A261884(n+1)` -/
def P903747212051684868.Spec : Prop :=
  ∀ n, P903747212051684868.a n = A093829 (n + 1)

end A093829

/-! ## A093829.P14434424093637153172

`A112298(n+1)/A010684(n)`
-/

namespace A093829.P14434424093637153172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112298 (n + 1) : ℚ) / (A010684 n : ℚ)

end

end A093829.P14434424093637153172

namespace A093829

/-- `A112298(n+1)/A010684(n)` -/
def P14434424093637153172.Spec : Prop :=
  ∀ n, P14434424093637153172.a n = (A093829 (n + 1) : ℚ)

end A093829

/-! ## A093829.P13274124084007590012

`A113447(n+1)/A033999(n)`
-/

namespace A093829.P13274124084007590012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113447 (n + 1) : ℚ) / (A033999 n : ℚ)

end

end A093829.P13274124084007590012

namespace A093829

/-- `A113447(n+1)/A033999(n)` -/
def P13274124084007590012.Spec : Prop :=
  ∀ n, P13274124084007590012.a n = (A093829 (n + 1) : ℚ)

end A093829

/-! ## A093829.P7095047579269429568

`A193426(n+1)+A115235(n+1)`
-/

namespace A093829.P7095047579269429568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193426 (n + 1) + A115235 (n + 1)

end

end A093829.P7095047579269429568

namespace A093829

/-- `A193426(n+1)+A115235(n+1)` -/
def P7095047579269429568.Spec : Prop :=
  ∀ n, P7095047579269429568.a n = A093829 (n + 1)

end A093829

/-! ## A093829.P14511638464812999046

`A035178(n+1)*A309873(n+1)`
-/

namespace A093829.P14511638464812999046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035178 (n + 1) * A309873 (n + 1)

end

end A093829.P14511638464812999046

namespace A093829

/-- `A035178(n+1)*A309873(n+1)` -/
def P14511638464812999046.Spec : Prop :=
  ∀ n, P14511638464812999046.a n = A093829 (n + 1)

end A093829

/-! ## A093829.P8175281039001545868

`A035178(n+1)*A343785(n+1)`
-/

namespace A093829.P8175281039001545868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035178 (n + 1) * A343785 (n + 1)

end

end A093829.P8175281039001545868

namespace A093829

/-- `A035178(n+1)*A343785(n+1)` -/
def P8175281039001545868.Spec : Prop :=
  ∀ n, P8175281039001545868.a n = A093829 (n + 1)

end A093829

/-! ## A093829.P9488338859392174824

`A112848(n+1)/A061347(n+1)`
-/

namespace A093829.P9488338859392174824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112848 (n + 1) : ℚ) / (A061347 (n + 1) : ℚ)

end

end A093829.P9488338859392174824

namespace A093829

/-- `A112848(n+1)/A061347(n+1)` -/
def P9488338859392174824.Spec : Prop :=
  ∀ n, P9488338859392174824.a n = (A093829 (n + 1) : ℚ)

end A093829

/-! ## A093829.P13291809895434992285

`A122860(n+1)/A056832(n+1)`
-/

namespace A093829.P13291809895434992285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122860 (n + 1) : ℚ) / (A056832 (n + 1) : ℚ)

end

end A093829.P13291809895434992285

namespace A093829

/-- `A122860(n+1)/A056832(n+1)` -/
def P13291809895434992285.Spec : Prop :=
  ∀ n, P13291809895434992285.a n = (A093829 (n + 1) : ℚ)

end A093829

/-! ## A093829.P4852548438539557455

`A122860(n+1)/A060236(n+1)`
-/

namespace A093829.P4852548438539557455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122860 (n + 1) : ℚ) / (A060236 (n + 1) : ℚ)

end

end A093829.P4852548438539557455

namespace A093829

/-- `A122860(n+1)/A060236(n+1)` -/
def P4852548438539557455.Spec : Prop :=
  ∀ n, P4852548438539557455.a n = (A093829 (n + 1) : ℚ)

end A093829

/-! ## A093829.P17605042191071833099

`A122860(n+1)/A390692(n+1)`
-/

namespace A093829.P17605042191071833099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122860 (n + 1) : ℚ) / (A390692 (n + 1) : ℚ)

end

end A093829.P17605042191071833099

namespace A093829

/-- `A122860(n+1)/A390692(n+1)` -/
def P17605042191071833099.Spec : Prop :=
  ∀ n, P17605042191071833099.a n = (A093829 (n + 1) : ℚ)

end A093829

/-! ## A093829.P17250917483289103342

`A113447(n+1)/(2-A010684(n))`
-/

namespace A093829.P17250917483289103342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113447 (n + 1) : ℚ) / (2 - A010684 n : ℚ)

end

end A093829.P17250917483289103342

namespace A093829

/-- `A113447(n+1)/(2-A010684(n))` -/
def P17250917483289103342.Spec : Prop :=
  ∀ n, P17250917483289103342.a n = (A093829 (n + 1) : ℚ)

end A093829

/-! ## A093829.P2280252905402392666

`A112298(n+1)/(2-A033999(n))`
-/

namespace A093829.P2280252905402392666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112298 (n + 1) : ℚ) / (2 - A033999 n : ℚ)

end

end A093829.P2280252905402392666

namespace A093829

/-- `A112298(n+1)/(2-A033999(n))` -/
def P2280252905402392666.Spec : Prop :=
  ∀ n, P2280252905402392666.a n = (A093829 (n + 1) : ℚ)

end A093829

/-! ## A093829.P14726906980589446755

`A112848(n+1)/(2-A177702(n)²)`
-/

namespace A093829.P14726906980589446755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112848 (n + 1) : ℚ) / (2 - A177702 n ^ 2 : ℚ)

end

end A093829.P14726906980589446755

namespace A093829

/-- `A112848(n+1)/(2-A177702(n)²)` -/
def P14726906980589446755.Spec : Prop :=
  ∀ n, P14726906980589446755.a n = (A093829 (n + 1) : ℚ)

end A093829

/-! ## A093829.P3530745701547130704

`A123331(n+1)+A115979(2*(n+1))`
-/

namespace A093829.P3530745701547130704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123331 (n + 1) + A115979 (2 * (n + 1))

end

end A093829.P3530745701547130704

namespace A093829

/-- `A123331(n+1)+A115979(2*(n+1))` -/
def P3530745701547130704.Spec : Prop :=
  ∀ n, P3530745701547130704.a n = A093829 (n + 1)

end A093829

/-! ## A093829.P8539965129929126882

`(A113447(n+1)+A112298(n+1))/2`
-/

namespace A093829.P8539965129929126882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113447 (n + 1) + A112298 (n + 1) : ℚ) / 2

end

end A093829.P8539965129929126882

namespace A093829

/-- `(A113447(n+1)+A112298(n+1))/2` -/
def P8539965129929126882.Spec : Prop :=
  ∀ n, P8539965129929126882.a n = (A093829 (n + 1) : ℚ)

end A093829

/-! ## A093829.P6224790835286344514

`∑{d}[n+1, A000086(#)*A143259((n+1)/#)]`
-/

namespace A093829.P6224790835286344514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000086 d * A143259 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A093829.P6224790835286344514

namespace A093829

/-- `∑{d}[n+1, A000086(#)*A143259((n+1)/#)]` -/
def P6224790835286344514.Spec : Prop :=
  ∀ n, P6224790835286344514.a n = A093829 (n + 1)

end A093829

/-!
# A093830: Expansion of q^(-1/2)(eta(q^2)eta(q^10)/(eta(q)eta(q^5)))^2 in powers of q.

The programs for A093830, there is no canonical definition to state claims against.
-/

/-! ## A093830.P5102592991529246727

`A167976(A003242(n))+A161412(n)`
-/

namespace A093830.P5102592991529246727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167976 (A003242 n).toNat + A161412 n

end

end A093830.P5102592991529246727

/-! ## A093830.P4211312734957655710

`A376595(A070047(2*n+3)-A008811(n))`
-/

namespace A093830.P4211312734957655710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376595 (A070047 (2 * n + 3) - A008811 n).toNat

end

end A093830.P4211312734957655710

/-! ## A093830.P5783561285625948041

`A327036(∑[A139282(n)]+2)`
-/

namespace A093830.P5783561285625948041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327036 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A093830.P5783561285625948041

/-! ## A093830.P2846937603153498643

`A081604(A382428(n))+A014968(n)`
-/

namespace A093830.P2846937603153498643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A382428 n).toNat + A014968 n

end

end A093830.P2846937603153498643

/-! ## A093830.P18211105671958494791

`A158037(A295831(n))+A097873(n)`
-/

namespace A093830.P18211105671958494791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158037 (A295831 n).toNat + A097873 n

end

end A093830.P18211105671958494791

/-!
# A093832: Values of r such that N(r)/r^2 > Pi, where N(r) is the number of integer lattice points (x,y) inside or on a circle of radius r.

The programs for A093832, there is no canonical definition to state claims against.
-/

/-! ## A093832.P4137009559751350605

`A245636(A053253(n)^3)`
-/

namespace A093832.P4137009559751350605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245636 (A053253 n ^ 3).toNat

end

end A093832.P4137009559751350605

/-! ## A093832.P12680257555383839575

`∑[A239703(A144904(n))+1]`
-/

namespace A093832.P12680257555383839575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239703 (A144904 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093832.P12680257555383839575

/-! ## A093832.P6452139443105405710

`A245636(A053253(n)²*A053253(n))`
-/

namespace A093832.P6452139443105405710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245636 (A053253 n ^ 2 * A053253 n).toNat

end

end A093832.P6452139443105405710

/-! ## A093832.P13806777519352129470

`A195098(A037032(n+1)+A026374(n))`
-/

namespace A093832.P13806777519352129470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195098 (A037032 (n + 1) + A026374 n).toNat

end

end A093832.P13806777519352129470

/-!
# A093833: 3^n-Jacobsthal(n).

The programs for A093833, the canonical program `A093833.P14363556478655463002` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093833 has offset 0).

The definition of A093833 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093833.P10897547034452739328

`ogf((1-2x+x^2)/(1-4x+x^2+6x^3))`
-/

namespace A093833.P10897547034452739328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -4, 1, 6] n

end

end A093833.P10897547034452739328

namespace A093833

/-- `ogf((1-2x+x^2)/(1-4x+x^2+6x^3))` -/
def P10897547034452739328.Spec : Prop :=
  ∀ n, P10897547034452739328.a n = A093833 n

end A093833

/-! ## A093833.P14363556478655463002

`3^n-2^n/3+(-1)^n/3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A093833

/-- `3^n-2^n/3+(-1)^n/3` -/
def P14363556478655463002.Spec : Prop :=
  ∀ n, P14363556478655463002.a n = (A093833 n : ℚ)

end A093833

/-! ## A093833.P8527092863425091188

`Δ[A003462(n)-floor(2^n/3)]`
-/

namespace A093833.P8527092863425091188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n - ⌊(2 ^ n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093833.P8527092863425091188

namespace A093833

/-- `Δ[A003462(n)-floor(2^n/3)]` -/
def P8527092863425091188.Spec : Prop :=
  ∀ n, P8527092863425091188.a n = A093833 n

end A093833

/-! ## A093833.P4679270463302919552

`A008611(A083313(n+1))`
-/

namespace A093833.P4679270463302919552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A083313 (n + 1)).toNat

end

end A093833.P4679270463302919552

namespace A093833

/-- `A008611(A083313(n+1))` -/
def P4679270463302919552.Spec : Prop :=
  ∀ n, P4679270463302919552.a n = A093833 n

end A093833

/-!
# A093834: Expansion of (1-2x)^2/((1-3x)(1-4x)).

The programs for A093834, the canonical program `A093834.P1667686091784292193` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093834 has offset 0).

The definition of A093834 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x+4x^2)/(1-7x+12x^2))` (program `A093834.P1667686091784292193`, by `A093834.P1667686091784292193.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A093834.P1667686091784292193

`ogf((1-4x+4x^2)/(1-7x+12x^2))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A093834

/-- `ogf((1-4x+4x^2)/(1-7x+12x^2))` -/
def P1667686091784292193.Spec : Prop :=
  ∀ n, P1667686091784292193.a n = A093834 n

theorem P1667686091784292193.correct : P1667686091784292193.Spec := by
  intro n
  simp only [A093834]

end A093834

/-! ## A093834.P14486356353158999353

`7*a(n-1)-12*a(n-2)` with `a(0)=1, a(1)=3, a(2)=13`
-/

namespace A093834.P14486356353158999353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 13] fun n a =>
  7 * a (n - 1) - 12 * a (n - 2)

end

end A093834.P14486356353158999353

namespace A093834

/-- `7*a(n-1)-12*a(n-2)` -/
def P14486356353158999353.Spec : Prop :=
  ∀ n, P14486356353158999353.a n = A093834 n

end A093834

/-! ## A093834.P7223670077445778015

`4^n-floor(3^(n-1))`
-/

namespace A093834.P7223670077445778015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A093834.P7223670077445778015

namespace A093834

/-- `4^n-floor(3^(n-1))` -/
def P7223670077445778015.Spec : Prop :=
  ∀ n, P7223670077445778015.a n = A093834 n

end A093834

/-! ## A093834.P12419500730742352682

`or(3*a(n-1), 4^(n-1))` with `a(0)=1`
-/

namespace A093834.P12419500730742352682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (3 * a (n - 1)) (SequenceMachineLib.roundAway ((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)))

end

end A093834.P12419500730742352682

namespace A093834

/-- `or(3*a(n-1), 4^(n-1))` -/
def P12419500730742352682.Spec : Prop :=
  ∀ n, P12419500730742352682.a n = A093834 n

end A093834

/-! ## A093834.P9039372587158557387

`xor(3*a(n-1), 4^(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A093834.P9039372587158557387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  Int.xor (3 * a (n - 1)) (SequenceMachineLib.roundAway ((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)))

end

end A093834.P9039372587158557387

namespace A093834

/-- `xor(3*a(n-1), 4^(n-1))` -/
def P9039372587158557387.Spec : Prop :=
  ∀ n, P9039372587158557387.a n = A093834 n

end A093834

/-! ## A093834.P7283785626320686358

`round(A000302(n)-3^(n-1))`
-/

namespace A093834.P7283785626320686358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000302 n : ℚ) - (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A093834.P7283785626320686358

namespace A093834

/-- `round(A000302(n)-3^(n-1))` -/
def P7283785626320686358.Spec : Prop :=
  ∀ n, P7283785626320686358.a n = A093834 n

end A093834

/-! ## A093834.P14811119311959795981

`ceil(A000079(n)²-3^(n-1))`
-/

namespace A093834.P14811119311959795981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000079 n ^ 2 : ℚ) - (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A093834.P14811119311959795981

namespace A093834

/-- `ceil(A000079(n)²-3^(n-1))` -/
def P14811119311959795981.Spec : Prop :=
  ∀ n, P14811119311959795981.a n = A093834 n

end A093834

/-! ## A093834.P7062952983192882478

`abs(xor(A000918(2*n), A140429(n)))`
-/

namespace A093834.P7062952983192882478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (A000918 (2 * n)) (A140429 n)|

end

end A093834.P7062952983192882478

namespace A093834

/-- `abs(xor(A000918(2*n), A140429(n)))` -/
def P7062952983192882478.Spec : Prop :=
  ∀ n, P7062952983192882478.a n = A093834 n

end A093834

/-! ## A093834.P12484282815974879795

`ceil((Δ[A000079(n)²]-A000244(n))/3)`
-/

namespace A093834.P12484282815974879795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n - A000244 n : ℚ) / 3⌉

end

end A093834.P12484282815974879795

namespace A093834

/-- `ceil((Δ[A000079(n)²]-A000244(n))/3)` -/
def P12484282815974879795.Spec : Prop :=
  ∀ n, P12484282815974879795.a n = A093834 n

end A093834

/-!
# A093835: a(n) = n * Jacobsthal(n).

The programs for A093835, the canonical program `A093835.P5806152599664983893` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093835 has offset 0).

The definition of A093835 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093835.P5806152599664983893

`n*A001045(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A093835

/-- `n*A001045(n)` -/
def P5806152599664983893.Spec : Prop :=
  ∀ n, P5806152599664983893.a n = A093835 n

theorem P5806152599664983893.correct : P5806152599664983893.Spec := by
  intro n
  simp only [A093835]

end A093835

/-! ## A093835.P11206501586408996418

`ogf((x+2x^3)/(1-2x-3x^2+4x^3+4x^4))`
-/

namespace A093835.P11206501586408996418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 2] [1, -2, -3, 4, 4] n

end

end A093835.P11206501586408996418

namespace A093835

/-- `ogf((x+2x^3)/(1-2x-3x^2+4x^3+4x^4))` -/
def P11206501586408996418.Spec : Prop :=
  ∀ n, P11206501586408996418.a n = A093835 n

end A093835

/-! ## A093835.P13743674939990367968

`n*2^n/3-n*(-1)^n/3`
-/

namespace A093835.P13743674939990367968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * 2 ^ n : ℚ) / 3 - ((n : ℤ) * (-1) ^ n : ℚ) / 3

end

end A093835.P13743674939990367968

namespace A093835

/-- `n*2^n/3-n*(-1)^n/3` -/
def P13743674939990367968.Spec : Prop :=
  ∀ n, P13743674939990367968.a n = (A093835 n : ℚ)

end A093835

/-! ## A093835.P15746177066111790973

`abs(n*floor(Δ[or(n, 2^n)]/3))`
-/

namespace A093835.P15746177066111790973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * ⌊((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 3⌋|

end

end A093835.P15746177066111790973

namespace A093835

/-- `abs(n*floor(Δ[or(n, 2^n)]/3))` -/
def P15746177066111790973.Spec : Prop :=
  ∀ n, P15746177066111790973.a n = A093835 n

end A093835

/-! ## A093835.P11627035216436889111

`abs(n*floor(Δ[xor(n, 2^n)]/3))`
-/

namespace A093835.P11627035216436889111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * ⌊((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 3⌋|

end

end A093835.P11627035216436889111

namespace A093835

/-- `abs(n*floor(Δ[xor(n, 2^n)]/3))` -/
def P11627035216436889111.Spec : Prop :=
  ∀ n, P11627035216436889111.a n = A093835 n

end A093835

/-! ## A093835.P15174862647780885705

`abs(n*ceil(or(n, 2^n-2)/3))`
-/

namespace A093835.P15174862647780885705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * ⌈(Int.lor (n : ℤ) ((2 ^ n : ℤ) - 2) : ℚ) / 3⌉|

end

end A093835.P15174862647780885705

namespace A093835

/-- `abs(n*ceil(or(n, 2^n-2)/3))` -/
def P15174862647780885705.Spec : Prop :=
  ∀ n, P15174862647780885705.a n = A093835 n

end A093835

/-! ## A093835.P17913012027513631594

`abs(n*Δ[floor(((3*n+2)%3)^n/3)])`
-/

namespace A093835.P17913012027513631594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((((3 * n + 2) % 3) ^ n : ℕ) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (f1 (n + 1) - f1 n)|

end

end A093835.P17913012027513631594

namespace A093835

/-- `abs(n*Δ[floor(((3*n+2)%3)^n/3)])` -/
def P17913012027513631594.Spec : Prop :=
  ∀ n, P17913012027513631594.a n = A093835 n

end A093835

/-! ## A093835.P15855116329097844293

`abs(n*ceil((gcd(2^n, ceil((1-n)/(n+1)))-1)/3))`
-/

namespace A093835.P15855116329097844293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * ⌈((Int.gcd (2 ^ n : ℤ) ⌈(1 - (n : ℤ) : ℚ) / (n + 1 : ℚ)⌉ : ℤ) - 1 : ℚ) / 3⌉|

end

end A093835.P15855116329097844293

namespace A093835

/-- `abs(n*ceil((gcd(2^n, ceil((1-n)/(n+1)))-1)/3))` -/
def P15855116329097844293.Spec : Prop :=
  ∀ n, P15855116329097844293.a n = A093835 n

end A093835

/-! ## A093835.P17615810573814335027

`n*A152046(n)`
-/

namespace A093835.P17615810573814335027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A152046 n

end

end A093835.P17615810573814335027

namespace A093835

/-- `n*A152046(n)` -/
def P17615810573814335027.Spec : Prop :=
  ∀ n, P17615810573814335027.a n = A093835 n

end A093835

/-! ## A093835.P5570400707560537230

`n*A167167(n)`
-/

namespace A093835.P5570400707560537230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A167167 n

end

end A093835.P5570400707560537230

namespace A093835

/-- `n*A167167(n)` -/
def P5570400707560537230.Spec : Prop :=
  ∀ n, P5570400707560537230.a n = A093835 n

end A093835

/-! ## A093835.P10003727095026766778

`n*Δ[A005578(n)]`
-/

namespace A093835.P10003727095026766778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A093835.P10003727095026766778

namespace A093835

/-- `n*Δ[A005578(n)]` -/
def P10003727095026766778.Spec : Prop :=
  ∀ n, P10003727095026766778.a n = A093835 n

end A093835

/-! ## A093835.P6240316946354598879

`n*(A167030(n)+1)`
-/

namespace A093835.P6240316946354598879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A167030 n + 1)

end

end A093835.P6240316946354598879

namespace A093835

/-- `n*(A167030(n)+1)` -/
def P6240316946354598879.Spec : Prop :=
  ∀ n, P6240316946354598879.a n = A093835 n

end A093835

/-! ## A093835.P17236347291939569001

`n*(A128209(n)-1)`
-/

namespace A093835.P17236347291939569001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A128209 n - 1)

end

end A093835.P17236347291939569001

namespace A093835

/-- `n*(A128209(n)-1)` -/
def P17236347291939569001.Spec : Prop :=
  ∀ n, P17236347291939569001.a n = A093835 n

end A093835

/-! ## A093835.P10556485223890374617

`n*(A153643(n)-2)`
-/

namespace A093835.P10556485223890374617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A153643 n - 2)

end

end A093835.P10556485223890374617

namespace A093835

/-- `n*(A153643(n)-2)` -/
def P10556485223890374617.Spec : Prop :=
  ∀ n, P10556485223890374617.a n = A093835 n

end A093835

/-! ## A093835.P6118604041175625250

`n*A328284(n+3)`
-/

namespace A093835.P6118604041175625250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A328284 (n + 3)

end

end A093835.P6118604041175625250

namespace A093835

/-- `n*A328284(n+3)` -/
def P6118604041175625250.Spec : Prop :=
  ∀ n, P6118604041175625250.a n = A093835 n

end A093835

/-! ## A093835.P7163552547108037037

`n*A133684(2*n)`
-/

namespace A093835.P7163552547108037037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A133684 (2 * n)

end

end A093835.P7163552547108037037

namespace A093835

/-- `n*A133684(2*n)` -/
def P7163552547108037037.Spec : Prop :=
  ∀ n, P7163552547108037037.a n = A093835 n

end A093835

/-! ## A093835.P3296570828602008794

`n/2*A014113(n)`
-/

namespace A093835.P3296570828602008794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A014113 n : ℚ)

end

end A093835.P3296570828602008794

namespace A093835

/-- `n/2*A014113(n)` -/
def P3296570828602008794.Spec : Prop :=
  ∀ n, P3296570828602008794.a n = (A093835 n : ℚ)

end A093835

/-! ## A093835.P9575848029761524479

`n/3*A062510(n)`
-/

namespace A093835.P9575848029761524479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A062510 n : ℚ)

end

end A093835.P9575848029761524479

namespace A093835

/-- `n/3*A062510(n)` -/
def P9575848029761524479.Spec : Prop :=
  ∀ n, P9575848029761524479.a n = (A093835 n : ℚ)

end A093835

/-! ## A093835.P706461030491708103

`n*A133730(Δ[n²])`
-/

namespace A093835.P706461030491708103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A133730 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A093835.P706461030491708103

namespace A093835

/-- `n*A133730(Δ[n²])` -/
def P706461030491708103.Spec : Prop :=
  ∀ n, P706461030491708103.a n = A093835 n

end A093835

/-! ## A093835.P18336153873354306730

`abs(n*(1-A084247(n)))`
-/

namespace A093835.P18336153873354306730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (1 - A084247 n)|

end

end A093835.P18336153873354306730

namespace A093835

/-- `abs(n*(1-A084247(n)))` -/
def P18336153873354306730.Spec : Prop :=
  ∀ n, P18336153873354306730.a n = A093835 n

end A093835

/-!
# A093836: Numerator of A000328(n)/n^2, where A000328(n) is the number of lattice points (x,y) with x^2 + y^2 <= n^2.

The programs for A093836, there is no canonical definition to state claims against.
-/

/-! ## A093836.P4858291705090805320

`A000328(n+1)/A099608(A274741(n))`
-/

namespace A093836.P4858291705090805320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000328 (n + 1) : ℚ) / (A099608 (A274741 n).toNat : ℚ)

end

end A093836.P4858291705090805320

/-! ## A093836.P14690425649333866420

`A057655(A093837(n+1))%A019248(n+16)`
-/

namespace A093836.P14690425649333866420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057655 (A093837 (n + 1)).toNat) (A019248 (n + 16))

end

end A093836.P14690425649333866420

/-! ## A093836.P15216941171483689412

`A201059(A053411(2*(n+1))%A092867(3*n+5))`
-/

namespace A093836.P15216941171483689412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201059 (Int.tmod (A053411 (2 * (n + 1))) (A092867 (3 * n + 5))).toNat

end

end A093836.P15216941171483689412

/-! ## A093836.P16905396765050132097

`A001222(A239685(n+1))*A057655(A093837(n+1))`
-/

namespace A093836.P16905396765050132097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A239685 (n + 1)).toNat * A057655 (A093837 (n + 1)).toNat

end

end A093836.P16905396765050132097

/-! ## A093836.P16273720096106378654

`A000328(n+1)+A000007(A001792(n))`
-/

namespace A093836.P16273720096106378654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 (n + 1) + A000007 (A001792 n).toNat

end

end A093836.P16273720096106378654

/-!
# A093837: Denominator of N(n)/n^2, where N(n) is the number of lattice points (x,y) with x^2 + y^2 <= n^2.

The programs for A093837, there is no canonical definition to state claims against.
-/

/-! ## A093837.P9093478467772693777

`A115060(n+1)^A060547(A208879(n))`
-/

namespace A093837.P9093478467772693777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115060 (n + 1) : ℚ) ^ (A060547 (A208879 n).toNat : ℤ)

end

end A093837.P9093478467772693777

/-! ## A093837.P9291538928387777501

`gcd(C(∑[(2*n)²], n+2)², (n+1)²)`
-/

namespace A093837.P9291538928387777501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2) ^ 2) ((n + 1) ^ 2)

end

end A093837.P9291538928387777501

/-! ## A093837.P14556385466035458763

`sqrt(A379119((n+1)^4))`
-/

namespace A093837.P14556385466035458763
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A379119 ((n + 1) ^ 4) : ℝ)

end

end A093837.P14556385466035458763

/-! ## A093837.P3673285169230514953

`A345994(∑[∑[12*n]+31])²`
-/

namespace A093837.P3673285169230514953
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 31

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345994 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A093837.P3673285169230514953

/-! ## A093837.P10810823913609937480

`and((n+1)², A145038(2*(n+2)))`
-/

namespace A093837.P10810823913609937480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n + 1) ^ 2 : ℤ) (A145038 (2 * (n + 2)))

end

end A093837.P10810823913609937480

/-!
# A093838: Primes of the form 36n + 1.

The programs for A093838, the canonical program `A093838.P7290419225933873605` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093838 has offset 1).

The definition of A093838 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A093838.anchor (n : ℕ) (hn : 1 ≤ n) : A093838 n = (Nat.nth (fun p => p.Prime ∧ p % 36 = 1) (n - 1) : ℤ)` in `Proof.A093.A093838`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A093838.P7290419225933873605

`p?[36*n+1]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A093838

/-- `p?[36*n+1]` -/
def P7290419225933873605.Spec : Prop :=
  ∀ n, (P7290419225933873605.a n : ℤ) = A093838 (n + 1)

theorem P7290419225933873605.correct : P7290419225933873605.Spec := by
  intro n
  simp only [A093838, Nat.add_sub_cancel]

end A093838

/-! ## A093838.P18049575434951512575

`or(1, p?[a(n-1)+36])` with `a(0)=1`
-/

namespace A093838.P18049575434951512575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 36

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A093838.P18049575434951512575

namespace A093838

/-- `or(1, p?[a(n-1)+36])` -/
def P18049575434951512575.Spec : Prop :=
  ∀ n, (P18049575434951512575.a n : ℤ) = A093838 (n + 1)

end A093838

/-! ## A093838.P15981172134493973749

`∩[A008846(n+1), A061237(n+1)]`
-/

namespace A093838.P15981172134493973749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093838.P15981172134493973749

namespace A093838

/-- `∩[A008846(n+1), A061237(n+1)]` -/
def P15981172134493973749.Spec : Prop :=
  ∀ n, (P15981172134493973749.a n : ℤ) = A093838 (n + 1)

end A093838

/-! ## A093838.P16257162449894012883

`∩[A061237(n+1), A068228(n+1)]`
-/

namespace A093838.P16257162449894012883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093838.P16257162449894012883

namespace A093838

/-- `∩[A061237(n+1), A068228(n+1)]` -/
def P16257162449894012883.Spec : Prop :=
  ∀ n, (P16257162449894012883.a n : ℤ) = A093838 (n + 1)

end A093838

/-! ## A093838.P12670797511949042118

`∩[A061237(n+1), A351537(n+1)]`
-/

namespace A093838.P12670797511949042118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093838.P12670797511949042118

namespace A093838

/-- `∩[A061237(n+1), A351537(n+1)]` -/
def P12670797511949042118.Spec : Prop :=
  ∀ n, (P12670797511949042118.a n : ℤ) = A093838 (n + 1)

end A093838

/-! ## A093838.P11908948166378574684

`∩[A061237(n+1), A354467(n+1)]`
-/

namespace A093838.P11908948166378574684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093838.P11908948166378574684

namespace A093838

/-- `∩[A061237(n+1), A354467(n+1)]` -/
def P11908948166378574684.Spec : Prop :=
  ∀ n, (P11908948166378574684.a n : ℤ) = A093838 (n + 1)

end A093838

/-! ## A093838.P17866209805971963904

`∩[A061237(n+1), A158065(n+1)]`
-/

namespace A093838.P17866209805971963904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093838.P17866209805971963904

namespace A093838

/-- `∩[A061237(n+1), A158065(n+1)]` -/
def P17866209805971963904.Spec : Prop :=
  ∀ n, (P17866209805971963904.a n : ℤ) = A093838 (n + 1)

end A093838

/-! ## A093838.P1368437353889616367

`∩[A068228(n+1), A158065(n+1)]`
-/

namespace A093838.P1368437353889616367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093838.P1368437353889616367

namespace A093838

/-- `∩[A068228(n+1), A158065(n+1)]` -/
def P1368437353889616367.Spec : Prop :=
  ∀ n, (P1368437353889616367.a n : ℤ) = A093838 (n + 1)

end A093838

/-! ## A093838.P6206748750632860140

`∩[A079130(n+1), A158065(n+1)]`
-/

namespace A093838.P6206748750632860140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093838.P6206748750632860140

namespace A093838

/-- `∩[A079130(n+1), A158065(n+1)]` -/
def P6206748750632860140.Spec : Prop :=
  ∀ n, (P6206748750632860140.a n : ℤ) = A093838 (n + 1)

end A093838

/-! ## A093838.P16430742905119143053

`∩[A068228(n+1), A129805(n+1)]`
-/

namespace A093838.P16430742905119143053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093838.P16430742905119143053

namespace A093838

/-- `∩[A068228(n+1), A129805(n+1)]` -/
def P16430742905119143053.Spec : Prop :=
  ∀ n, (P16430742905119143053.a n : ℤ) = A093838 (n + 1)

end A093838

/-! ## A093838.P7537248938087813029

`∩[A129805(n+1), A158065(n+1)]`
-/

namespace A093838.P7537248938087813029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093838.P7537248938087813029

namespace A093838

/-- `∩[A129805(n+1), A158065(n+1)]` -/
def P7537248938087813029.Spec : Prop :=
  ∀ n, (P7537248938087813029.a n : ℤ) = A093838 (n + 1)

end A093838

/-! ## A093838.P4629751466441809039

`∩[A129805(n+1), A351537(n+1)]`
-/

namespace A093838.P4629751466441809039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093838.P4629751466441809039

namespace A093838

/-- `∩[A129805(n+1), A351537(n+1)]` -/
def P4629751466441809039.Spec : Prop :=
  ∀ n, (P4629751466441809039.a n : ℤ) = A093838 (n + 1)

end A093838

/-! ## A093838.P9930302064305493434

`∩[A129805(n+1), A354467(n+1)]`
-/

namespace A093838.P9930302064305493434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093838.P9930302064305493434

namespace A093838

/-- `∩[A129805(n+1), A354467(n+1)]` -/
def P9930302064305493434.Spec : Prop :=
  ∀ n, (P9930302064305493434.a n : ℤ) = A093838 (n + 1)

end A093838

/-! ## A093838.P1210776322441024274

`∩[A061237(n+1), A191218(n+1)]`
-/

namespace A093838.P1210776322441024274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093838.P1210776322441024274

namespace A093838

/-- `∩[A061237(n+1), A191218(n+1)]` -/
def P1210776322441024274.Spec : Prop :=
  ∀ n, (P1210776322441024274.a n : ℤ) = A093838 (n + 1)

end A093838

/-! ## A093838.P15332801932186838421

`∩[A038874(n+1), A061237(n+1)]`
-/

namespace A093838.P15332801932186838421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093838.P15332801932186838421

namespace A093838

/-- `∩[A038874(n+1), A061237(n+1)]` -/
def P15332801932186838421.Spec : Prop :=
  ∀ n, (P15332801932186838421.a n : ℤ) = A093838 (n + 1)

end A093838

/-! ## A093838.P14952998181964577495

`∩[A061237(n+1), A097933(n+1)]`
-/

namespace A093838.P14952998181964577495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093838.P14952998181964577495

namespace A093838

/-- `∩[A061237(n+1), A097933(n+1)]` -/
def P14952998181964577495.Spec : Prop :=
  ∀ n, (P14952998181964577495.a n : ℤ) = A093838 (n + 1)

end A093838

/-! ## A093838.P14292567752406418951

`∩[A038874(n+1), A158065(n+1)]`
-/

namespace A093838.P14292567752406418951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093838.P14292567752406418951

namespace A093838

/-- `∩[A038874(n+1), A158065(n+1)]` -/
def P14292567752406418951.Spec : Prop :=
  ∀ n, (P14292567752406418951.a n : ℤ) = A093838 (n + 1)

end A093838

/-! ## A093838.P3279291580744192260

`∩[A097933(n+1), A158065(n+1)]`
-/

namespace A093838.P3279291580744192260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093838.P3279291580744192260

namespace A093838

/-- `∩[A097933(n+1), A158065(n+1)]` -/
def P3279291580744192260.Spec : Prop :=
  ∀ n, (P3279291580744192260.a n : ℤ) = A093838 (n + 1)

end A093838

/-! ## A093838.P4292128627738328708

`∩[A002144(n+1), A061237(n+1)]`
-/

namespace A093838.P4292128627738328708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093838.P4292128627738328708

namespace A093838

/-- `∩[A002144(n+1), A061237(n+1)]` -/
def P4292128627738328708.Spec : Prop :=
  ∀ n, (P4292128627738328708.a n : ℤ) = A093838 (n + 1)

end A093838

/-! ## A093838.P13725408346998904617

`∩[A002144(n+1), A158065(n+1)]`
-/

namespace A093838.P13725408346998904617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093838.P13725408346998904617

namespace A093838

/-- `∩[A002144(n+1), A158065(n+1)]` -/
def P13725408346998904617.Spec : Prop :=
  ∀ n, (P13725408346998904617.a n : ℤ) = A093838 (n + 1)

end A093838

/-!
# A093839: Lexicographically earliest sequence of distinct positive integers such that the n-th partial sum and n-th partial product are divisible by n.

The programs for A093839, there is no canonical definition to state claims against.
-/

/-! ## A093839.P12324131102119460109

`Δ[n*A093841(A028310(n))]`
-/

namespace A093839.P12324131102119460109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A093841 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093839.P12324131102119460109

/-! ## A093839.P14880268373790423179

`A000038(n)+Δ[A093840(A028310(n))]`
-/

namespace A093839.P14880268373790423179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093840 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (f1 (n + 1) - f1 n)

end

end A093839.P14880268373790423179

/-! ## A093839.P4708663907192736956

`Δ[A057427(n)*A093840(A028310(n))]`
-/

namespace A093839.P4708663907192736956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A093840 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093839.P4708663907192736956

/-! ## A093839.P9039426312765955880

`Δ[A093840(A028310(n))*A178334(n)]`
-/

namespace A093839.P9039426312765955880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093840 (A028310 n).toNat * A178334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093839.P9039426312765955880

/-! ## A093839.P17661630397206726603

`Δ[A093840(A028310(n))*A178489(n)]`
-/

namespace A093839.P17661630397206726603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093840 (A028310 n).toNat * A178489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093839.P17661630397206726603

/-! ## A093839.P6870682093346208698

`Δ[A093840(A028310(n))%A001580(n)]`
-/

namespace A093839.P6870682093346208698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093840 (A028310 n).toNat) (A001580 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093839.P6870682093346208698

/-! ## A093839.P5939728876139343748

`Δ[A005171(2*(n+1))*A093840(A028310(n))]`
-/

namespace A093839.P5939728876139343748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (2 * (n + 1)) * A093840 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093839.P5939728876139343748

/-! ## A093839.P15884277143035982617

`Δ[A000040(n+1)%2*A093840(A028310(n))]`
-/

namespace A093839.P15884277143035982617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A093840 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093839.P15884277143035982617

/-! ## A093839.P13118438081976810941

`A093840(n+1)+A000038(n)-A093840(A028310(n))`
-/

namespace A093839.P13118438081976810941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093840 (n + 1) + (A000038 n - A093840 (A028310 n).toNat)

end

end A093839.P13118438081976810941

/-!
# A093840: Partial sums of A093839.

The programs for A093840, there is no canonical definition to state claims against.
-/

/-! ## A093840.P4869232701319638700

`∑[A093839(1+n)]`
-/

namespace A093840.P4869232701319638700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093839 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093840.P4869232701319638700

/-! ## A093840.P10613194124375585011

`(n+1)*A093841(n+1)`
-/

namespace A093840.P10613194124375585011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A093841 (n + 1)

end

end A093840.P10613194124375585011

/-! ## A093840.P5339395999075433914

`and(∑[A093839(-xor(n, -1))], -1)`
-/

namespace A093840.P5339395999075433914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093839 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A093840.P5339395999075433914

/-! ## A093840.P486382238925240843

`lcm(ϕ²-(ϕ-n), ∑[A093839(ϕ²-(ϕ-n))])`
-/

namespace A093840.P486382238925240843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093839 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093840.P486382238925240843

/-! ## A093840.P5147401106119655624

`∑[A254109(A093839(-xor(n, -1)))]`
-/

namespace A093840.P5147401106119655624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254109 (A093839 (-Int.xor (n : ℤ) (-1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093840.P5147401106119655624

/-! ## A093840.P14022223123464576461

`A093839(n+1)+a(A023443(n))` with `a(0)=2`
-/

namespace A093840.P14022223123464576461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A093839 (n + 1) + a (A023443 n).toNat

end

end A093840.P14022223123464576461

/-! ## A093840.P6677613016463810095

`-∑[-Δ[n*A093841(A028310(n))]]`
-/

namespace A093840.P6677613016463810095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A093841 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093840.P6677613016463810095

/-! ## A093840.P15761717272451398842

`A093839(A000007(n)+1+n)+a(n-1)` with `a(0)=2`
-/

namespace A093840.P15761717272451398842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A093839 (A000007 n + 1 + (n : ℤ)).toNat + a (n - 1)

end

end A093840.P15761717272451398842

/-! ## A093840.P17281837749662851012

`record[A093841(A154958(n))*A154958(n)]`
-/

namespace A093840.P17281837749662851012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093841 (A154958 n).toNat * A154958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093840.P17281837749662851012

/-! ## A093840.P8049752889186442483

`record[A093841(A344180(n))*A344180(n)]`
-/

namespace A093840.P8049752889186442483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093841 (A344180 n).toNat * A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093840.P8049752889186442483

/-!
# A093841: n-th partial sum of A093839 divided by n.

The programs for A093841, there is no canonical definition to state claims against.
-/

/-! ## A093841.P18404077321901791851

`∑[A093839(n+1)]/(n+1)`
-/

namespace A093841.P18404077321901791851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093839 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A093841.P18404077321901791851

/-! ## A093841.P12547602476580113381

`A002024(∑[A093839(n+1)-n])`
-/

namespace A093841.P12547602476580113381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093839 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A093841.P12547602476580113381

/-! ## A093841.P9422173311917143481

`A276581(∑[A093839(n+1)])-n`
-/

namespace A093841.P9422173311917143481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n : ℤ)

end

end A093841.P9422173311917143481

/-! ## A093841.P14605376377728068816

`A276581(lcm(ϕ²-(ϕ-n), ∑[A093839(ϕ²-(ϕ-n))]))-n`
-/

namespace A093841.P14605376377728068816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093839 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (Int.lcm (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))) (∑ j ∈ Finset.range (n + 1), f1 j)) - (n : ℤ)

end

end A093841.P14605376377728068816

/-! ## A093841.P14917214973427541983

`A093840(n+1)/(n+1)`
-/

namespace A093841.P14917214973427541983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093840 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A093841.P14917214973427541983

/-! ## A093841.P17612089139490140580

`A276581(A093840(n+1))-n`
-/

namespace A093841.P17612089139490140580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (A093840 (n + 1)).toNat - (n : ℤ)

end

end A093841.P17612089139490140580

/-! ## A093841.P7644313731049744201

`A002024(A093840(n+1)-∑[n])`
-/

namespace A093841.P7644313731049744201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A093840 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A093841.P7644313731049744201

/-!
# A093842: n-th partial product of A093839.

The programs for A093842, there is no canonical definition to state claims against.
-/

/-! ## A093842.P11288131388490778706

`∏[A093839(n+1)]`
-/

namespace A093842.P11288131388490778706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A093842.P11288131388490778706

/-! ## A093842.P17692304912169233890

`(n+1)*A093843(n+1)`
-/

namespace A093842.P17692304912169233890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A093843 (n + 1)

end

end A093842.P17692304912169233890

/-! ## A093842.P3729560070492270409

`A093843(n+1)*A348553(n)`
-/

namespace A093842.P3729560070492270409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093843 (n + 1) * A348553 n

end

end A093842.P3729560070492270409

/-! ## A093842.P13102138587462643113

`∏[Δ[n*A093841(A028310(n))]]`
-/

namespace A093842.P13102138587462643113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A093841 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A093842.P13102138587462643113

/-! ## A093842.P3612276130743187511

`a(A023443(n))*A093839(n+1)` with `a(0)=2`
-/

namespace A093842.P3612276130743187511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (A023443 n).toNat * A093839 (n + 1)

end

end A093842.P3612276130743187511

/-!
# A093843: n-th partial product of A093839 divided by n.

The programs for A093843, there is no canonical definition to state claims against.
-/

/-! ## A093843.P9782948080170140132

`∏[A093839(n+1)]/(n+1)`
-/

namespace A093843.P9782948080170140132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093839 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A093843.P9782948080170140132

/-! ## A093843.P16629806270968519307

`∏[Δ[n*A093841(A028310(n))]]/(n+1)`
-/

namespace A093843.P16629806270968519307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A093841 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A093843.P16629806270968519307

/-! ## A093843.P17648921531004670357

`A093842(n+1)/(n+1)`
-/

namespace A093843.P17648921531004670357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093842 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A093843.P17648921531004670357

/-! ## A093843.P15848881352538732624

`ceil(A093842(A348553(n))/A348553(n))`
-/

namespace A093843.P15848881352538732624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A093842 (A348553 n).toNat : ℚ) / (A348553 n : ℚ)⌉

end

end A093843.P15848881352538732624

/-! ## A093843.P10306509128228223394

`record[A093842(A154958(n))/A154958(n)]`
-/

namespace A093843.P10306509128228223394
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093842 (A154958 n).toNat : ℚ) / (A154958 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093843.P10306509128228223394

/-!
# A093844: n-th row of the following triangle contains n terms of an arithmetic progression with the first term 1 such that the sum is the least possible n-th power. Sequence contains the leading diagonal.

The programs for A093844, there is no canonical definition to state claims against.
-/

/-! ## A093844.P13198551443385789891

`(2*(n+1)^n-1)%A000219(A127817(n+1))`
-/

namespace A093844.P13198551443385789891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 * (n + 1) ^ n : ℤ) - 1) (A000219 (A127817 (n + 1)).toNat)

end

end A093844.P13198551443385789891

/-! ## A093844.P17287030945850364034

`A093460(n+1)%A039683(A093483(n+1))`
-/

namespace A093844.P17287030945850364034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093460 (n + 1)) (A039683 (A093483 (n + 1)).toNat)

end

end A093844.P17287030945850364034

/-! ## A093844.P15605437582841639290

`A093460(n+1)-A325974(A152046(2*n+3))`
-/

namespace A093844.P15605437582841639290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093460 (n + 1) - A325974 (A152046 (2 * n + 3)).toNat

end

end A093844.P15605437582841639290

/-!
# A093845: Row sums in A093844.

The programs for A093845, there is no canonical definition to state claims against.
-/

/-! ## A093845.P13192424225993433624

`A110500(n+1)^(n+1)`
-/

namespace A093845.P13192424225993433624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110500 (n + 1) ^ (n + 1)

end

end A093845.P13192424225993433624

/-! ## A093845.P2911346690843140310

`(A014963(A173503(n))*A052410(n+1))^(n+1)`
-/

namespace A093845.P2911346690843140310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014963 (A173503 n).toNat * A052410 (n + 1)) ^ (n + 1)

end

end A093845.P2911346690843140310

/-! ## A093845.P17822902932578325874

`(A052410(n+1)*A175069(A168517(n)))^(n+1)`
-/

namespace A093845.P17822902932578325874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052410 (n + 1) * A175069 (A168517 n).toNat) ^ (n + 1)

end

end A093845.P17822902932578325874

/-! ## A093845.P5670970529920211123

`(A052410(n+1)*A202853(A168619(n)))^(n+1)`
-/

namespace A093845.P5670970529920211123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052410 (n + 1) * A202853 (A168619 n).toNat) ^ (n + 1)

end

end A093845.P5670970529920211123

/-! ## A093845.P233660121541536323

`(A175069(A168517(n))*A304776(n+1))^(n+1)`
-/

namespace A093845.P233660121541536323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A175069 (A168517 n).toNat * A304776 (n + 1)) ^ (n + 1)

end

end A093845.P233660121541536323

/-!
# A093846: Triangle read by rows: T(n, k) = 10^(n-1) - 1 + k*floor(9*10^(n-1)/n), for 1 <= k <= n.

The programs for A093846, the canonical program `A093846.P8141736164759024473` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093846 has offset 1).

The definition of A093846 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^row(n)-1+(col(n)+1)*floor(9*10^row(n)/(row(n)+1))` (program `A093846.P8141736164759024473`, by `A093846.P8141736164759024473.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A093846.P8141736164759024473

`10^row(n)-1+(col(n)+1)*floor(9*10^row(n)/(row(n)+1))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A093846

/-- `10^row(n)-1+(col(n)+1)*floor(9*10^row(n)/(row(n)+1))` -/
def P8141736164759024473.Spec : Prop :=
  ∀ n, P8141736164759024473.a n = A093846 (n + 1)

theorem P8141736164759024473.correct : P8141736164759024473.Spec := by
  intro n
  simp only [A093846, Nat.add_sub_cancel]

end A093846

/-!
# A093847: First column of triangle A093846.

The programs for A093847, the canonical program `A093847.P737299470165273694` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093847 has offset 1).

The definition of A093847 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093847.P737299470165273694

`10^n-1+floor(9*10^n/(n+1))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A093847

/-- `10^n-1+floor(9*10^n/(n+1))` -/
def P737299470165273694.Spec : Prop :=
  ∀ n, P737299470165273694.a n = A093847 (n + 1)

theorem P737299470165273694.correct : P737299470165273694.Spec := by
  intro n
  simp only [A093847, Nat.add_sub_cancel]

end A093847

/-! ## A093847.P6202052596449262316

`A093846(∑[n]+1)`
-/

namespace A093847.P6202052596449262316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093846 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A093847.P6202052596449262316

namespace A093847

/-- `A093846(∑[n]+1)` -/
def P6202052596449262316.Spec : Prop :=
  ∀ n, P6202052596449262316.a n = A093847 (n + 1)

end A093847

/-! ## A093847.P7574337037247129540

`record[A093846(n+1)/A074909(n)]`
-/

namespace A093847.P7574337037247129540
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093846 (n + 1) : ℚ) / (A074909 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093847.P7574337037247129540

namespace A093847

/-- `record[A093846(n+1)/A074909(n)]` -/
def P7574337037247129540.Spec : Prop :=
  ∀ n, P7574337037247129540.a n = (A093847 (n + 1) : ℚ)

end A093847

/-! ## A093847.P9263842852118099877

`record[A093846(n+1)/A002260(n+1)]`
-/

namespace A093847.P9263842852118099877
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093846 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093847.P9263842852118099877

namespace A093847

/-- `record[A093846(n+1)/A002260(n+1)]` -/
def P9263842852118099877.Spec : Prop :=
  ∀ n, P9263842852118099877.a n = (A093847 (n + 1) : ℚ)

end A093847

/-! ## A093847.P558837494188235633

`or(A000007(n), A093846(A000124(n)))`
-/

namespace A093847.P558837494188235633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A093846 (A000124 n).toNat)

end

end A093847.P558837494188235633

namespace A093847

/-- `or(A000007(n), A093846(A000124(n)))` -/
def P558837494188235633.Spec : Prop :=
  ∀ n, P558837494188235633.a n = A093847 (n + 1)

end A093847

/-!
# A093848: (a(n)) is the earliest monotonic sequence starting with a(1)=1 and satisfying a(n)=length of n-th run of consecutive integers with same parity.

The programs for A093848, there is no canonical definition to state claims against.
-/

/-! ## A093848.P1441951314533179010

`Δ[A056133(n+2)]`
-/

namespace A093848.P1441951314533179010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056133 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093848.P1441951314533179010

/-! ## A093848.P10164754946716618013

`Δ[record[A056133(A052938(n))]]`
-/

namespace A093848.P10164754946716618013
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056133 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093848.P10164754946716618013

/-! ## A093848.P474616375988710649

`Δ[record[A056133(A154958(n))]]`
-/

namespace A093848.P474616375988710649
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056133 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093848.P474616375988710649

/-! ## A093848.P14184792701518939929

`Δ[record[A056133(A286544(n))]]`
-/

namespace A093848.P14184792701518939929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056133 (A286544 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093848.P14184792701518939929

/-! ## A093848.P11476136850894137024

`A056133(n+3)-A056133(n+2)`
-/

namespace A093848.P11476136850894137024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056133 (n + 3) - A056133 (n + 2)

end

end A093848.P11476136850894137024

/-!
# A093849: Row sums of triangle A093846.

The programs for A093849, the canonical program `A093849.P11444737057919883405` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093849 has offset 1).

The definition of A093849 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093849.P11444737057919883405

`(n+1)*(2*10^n-2+(n+2)*floor(9*10^n/(n+1)))/2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A093849

/-- `(n+1)*(2*10^n-2+(n+2)*floor(9*10^n/(n+1)))/2` -/
def P11444737057919883405.Spec : Prop :=
  ∀ n, P11444737057919883405.a n = (A093849 (n + 1) : ℚ)

end A093849

/-!
# A093850: Triangle T(n,k) = 10^(n-1) -1 + k*floor(9*10^(n-1)/(n+1)), with 1 <= r <= n, read by rows.

The programs for A093850, the canonical program `A093850.P17700374005503718436` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093850 has offset 1).

The definition of A093850 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^row(n)-1+(col(n)+1)*floor(9*10^row(n)/(row(n)+2))` (program `A093850.P17700374005503718436`, by `A093850.P17700374005503718436.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A093850.P17700374005503718436

`10^row(n)-1+(col(n)+1)*floor(9*10^row(n)/(row(n)+2))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A093850

/-- `10^row(n)-1+(col(n)+1)*floor(9*10^row(n)/(row(n)+2))` -/
def P17700374005503718436.Spec : Prop :=
  ∀ n, P17700374005503718436.a n = A093850 (n + 1)

theorem P17700374005503718436.correct : P17700374005503718436.Spec := by
  intro n
  simp only [A093850, Nat.add_sub_cancel]

end A093850

/-!
# A093851: a(n) = A002283(n-1) + floor(A052268(n)/(1+n)).

The programs for A093851, the canonical program `A093851.P2201497040722180134` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093851 has offset 1).

The definition of A093851 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093851.P6391891980535552186

`10^n-1+floor(9*10^n/(n+2))`
-/

namespace A093851.P6391891980535552186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) - 1 + ⌊(9 * 10 ^ n : ℚ) / (n + 2 : ℚ)⌋

end

end A093851.P6391891980535552186

namespace A093851

/-- `10^n-1+floor(9*10^n/(n+2))` -/
def P6391891980535552186.Spec : Prop :=
  ∀ n, P6391891980535552186.a n = A093851 (n + 1)

theorem P6391891980535552186.correct : P6391891980535552186.Spec := by
  intro n
  simp only [A093851, Nat.add_sub_cancel, A093851.P6391891980535552186.a, A093851.P2201497040722180134.a, A002283, A002283.P2252111154706607536.a, A052268, A052268.P1431609730251872514.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A093851

/-! ## A093851.P2201497040722180134

`A002283(n)+floor(A052268(n+1)/(1+n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A093851

/-- `A002283(n)+floor(A052268(n+1)/(1+n+1))` -/
def P2201497040722180134.Spec : Prop :=
  ∀ n, P2201497040722180134.a n = A093851 (n + 1)

theorem P2201497040722180134.correct : P2201497040722180134.Spec := by
  intro n
  simp only [A093851, Nat.add_sub_cancel]

end A093851

/-! ## A093851.P2671963465454784095

`A093850(∑[n]+1)`
-/

namespace A093851.P2671963465454784095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093850 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A093851.P2671963465454784095

namespace A093851

/-- `A093850(∑[n]+1)` -/
def P2671963465454784095.Spec : Prop :=
  ∀ n, P2671963465454784095.a n = A093851 (n + 1)

end A093851

/-! ## A093851.P8312845293190888052

`record[A093850(n+1)/A059268(n)]`
-/

namespace A093851.P8312845293190888052
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093850 (n + 1) : ℚ) / (A059268 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093851.P8312845293190888052

namespace A093851

/-- `record[A093850(n+1)/A059268(n)]` -/
def P8312845293190888052.Spec : Prop :=
  ∀ n, P8312845293190888052.a n = (A093851 (n + 1) : ℚ)

end A093851

/-! ## A093851.P7902898245672481925

`record[A093850(n+1)/A074909(n)]`
-/

namespace A093851.P7902898245672481925
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093850 (n + 1) : ℚ) / (A074909 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093851.P7902898245672481925

namespace A093851

/-- `record[A093850(n+1)/A074909(n)]` -/
def P7902898245672481925.Spec : Prop :=
  ∀ n, P7902898245672481925.a n = (A093851 (n + 1) : ℚ)

end A093851

/-! ## A093851.P9637888636130405298

`record[A093850(n+1)/A002260(n+1)]`
-/

namespace A093851.P9637888636130405298
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093850 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093851.P9637888636130405298

namespace A093851

/-- `record[A093850(n+1)/A002260(n+1)]` -/
def P9637888636130405298.Spec : Prop :=
  ∀ n, P9637888636130405298.a n = (A093851 (n + 1) : ℚ)

end A093851

/-! ## A093851.P3977428394749847610

`A093850(A000124(n))^A051953(A006450(n+1))`
-/

namespace A093851.P3977428394749847610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093850 (A000124 n).toNat : ℚ) ^ (A051953 (A006450 (n + 1)).toNat : ℤ)

end

end A093851.P3977428394749847610

namespace A093851

/-- `A093850(A000124(n))^A051953(A006450(n+1))` -/
def P3977428394749847610.Spec : Prop :=
  ∀ n, P3977428394749847610.a n = (A093851 (n + 1) : ℚ)

end A093851

/-!
# A093852: a(n) = 10^(n-1) - 1 + n*floor(9*10^(n-1)/(n+1)).

The programs for A093852, the canonical program `A093852.P2068497576450225327` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093852 has offset 1).

The definition of A093852 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n-1+(n+1)*floor(9*10^n/(n+2))` (program `A093852.P2068497576450225327`, by `A093852.P2068497576450225327.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A093852.P2068497576450225327

`10^n-1+(n+1)*floor(9*10^n/(n+2))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A093852

/-- `10^n-1+(n+1)*floor(9*10^n/(n+2))` -/
def P2068497576450225327.Spec : Prop :=
  ∀ n, P2068497576450225327.a n = A093852 (n + 1)

theorem P2068497576450225327.correct : P2068497576450225327.Spec := by
  intro n
  simp only [A093852, Nat.add_sub_cancel]

end A093852

/-! ## A093852.P15242151524689789468

`A093850(∑[n+1])`
-/

namespace A093852.P15242151524689789468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093850 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093852.P15242151524689789468

namespace A093852

/-- `A093850(∑[n+1])` -/
def P15242151524689789468.Spec : Prop :=
  ∀ n, P15242151524689789468.a n = A093852 (n + 1)

end A093852

/-! ## A093852.P11379167163894417838

`record[A093850(A038722(n+1))]`
-/

namespace A093852.P11379167163894417838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093850 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093852.P11379167163894417838

namespace A093852

/-- `record[A093850(A038722(n+1))]` -/
def P11379167163894417838.Spec : Prop :=
  ∀ n, P11379167163894417838.a n = A093852 (n + 1)

end A093852

/-! ## A093852.P6684842326416608255

`record[gcd(A025581(n), A093850(n+1))]`
-/

namespace A093852.P6684842326416608255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A093850 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093852.P6684842326416608255

namespace A093852

/-- `record[gcd(A025581(n), A093850(n+1))]` -/
def P6684842326416608255.Spec : Prop :=
  ∀ n, (P6684842326416608255.a n : ℤ) = A093852 (n + 1)

end A093852

/-! ## A093852.P10608442324862740035

`record[A093850(A000217(A344180(n)))]`
-/

namespace A093852.P10608442324862740035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093850 (A000217 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093852.P10608442324862740035

namespace A093852

/-- `record[A093850(A000217(A344180(n)))]` -/
def P10608442324862740035.Spec : Prop :=
  ∀ n, P10608442324862740035.a n = A093852 (n + 1)

end A093852

/-! ## A093852.P13216592660494300067

`record[A093850(A000217(A051125(n+1)))]`
-/

namespace A093852.P13216592660494300067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093850 (A000217 (A051125 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093852.P13216592660494300067

namespace A093852

/-- `record[A093850(A000217(A051125(n+1)))]` -/
def P13216592660494300067.Spec : Prop :=
  ∀ n, P13216592660494300067.a n = A093852 (n + 1)

end A093852

/-!
# A093853: Number of 3-uniform T_0-hypergraphs without multiple edges on n vertices.

The programs for A093853, there is no canonical definition to state claims against.
-/

/-! ## A093853.P7606962894353412661

`A036694(A261612(n!))`
-/

namespace A093853.P7606962894353412661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036694 (A261612 (Nat.factorial n)).toNat

end

end A093853.P7606962894353412661

/-!
# A093854: Triangle read by rows: T(n,m) = number of 3-uniform T_0-hypergraphs with n distinct edges and m vertices(n>=3, 1<=m<=2*n+1).

The programs for A093854, there is no canonical definition to state claims against.
-/

/-! ## A093854.P6828398449598188328

`A064135(A006521(n+1))*A290447(n+1)`
-/

namespace A093854.P6828398449598188328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064135 (A006521 (n + 1)).toNat * A290447 (n + 1)

end

end A093854.P6828398449598188328

/-! ## A093854.P2012835173237632921

`A034380(A036378(2*(n+2)))*A356913(n+1)`
-/

namespace A093854.P2012835173237632921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (A036378 (2 * (n + 2))).toNat * A356913 (n + 1)

end

end A093854.P2012835173237632921

/-!
# A093856: a(0)=1; a(1)=2; a(n+1) = 2*n*a(n) - a(n-1) for n >= 1.

The programs for A093856, the canonical program `A093856.P706173597335536353` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093856 has offset 0).

The definition of A093856 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093856.P706173597335536353

`2*(n-1)*a(n-1)-a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A093856

/-- `2*(n-1)*a(n-1)-a(n-2)` -/
def P706173597335536353.Spec : Prop :=
  ∀ n, P706173597335536353.a n = A093856 n

theorem P706173597335536353.correct : P706173597335536353.Spec := by
  intro n
  simp only [A093856]

end A093856

/-! ## A093856.P15875153321304844014

`a(n-1)*A004275(n)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A093856.P15875153321304844014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * A004275 n - a (n - 2)

end

end A093856.P15875153321304844014

namespace A093856

/-- `a(n-1)*A004275(n)-a(n-2)` -/
def P15875153321304844014.Spec : Prop :=
  ∀ n, P15875153321304844014.a n = A093856 n

end A093856

/-!
# A093857: Number of unlabeled ordered T_0-multigraphs with n edges.

The programs for A093857, there is no canonical definition to state claims against.
-/

/-! ## A093857.P10928276475522347087

`2*A116654(A227566(n))`
-/

namespace A093857.P10928276475522347087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A116654 (A227566 (n + 61)).toNat

end

end A093857.P10928276475522347087

/-!
# A093858: a(0) = 1, a(1)= 2, a(n) = (a(n+1) - a(n-1))/n, or a(n+1) = n*a(n) + a(n-1).

The programs for A093858, there is no canonical definition to state claims against.
-/

/-! ## A093858.P1671247893588846307

`∏[1/a(n-1)+n-1]` with `a(0)=1, a(1)=2`
-/

namespace A093858.P1671247893588846307
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  1 / f1 (n - 1) + ((n : ℤ) - 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A093858.P1671247893588846307

/-! ## A093858.P3292966006922235820

`(n-1)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A093858.P3292966006922235820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ((n : ℤ) - 1) * a (n - 1) + a (n - 2)

end

end A093858.P3292966006922235820

/-! ## A093858.P1816408165970520153

`a(n-2)-(1-n)*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A093858.P1816408165970520153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) - (1 - (n : ℤ)) * a (n - 1)

end

end A093858.P1816408165970520153

/-! ## A093858.P16923633132341720058

`A102038(n)+A001040(n)`
-/

namespace A093858.P16923633132341720058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102038 n + A001040 n

end

end A093858.P16923633132341720058

/-! ## A093858.P15544224200085556887

`A001053(n)+2*A001040(n)`
-/

namespace A093858.P15544224200085556887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001053 n + 2 * A001040 n

end

end A093858.P15544224200085556887

/-! ## A093858.P1306606239780738509

`A102038(n)+A062323(A000124(n))`
-/

namespace A093858.P1306606239780738509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102038 n + A062323 (A000124 n).toNat

end

end A093858.P1306606239780738509

/-!
# A093859: Numbers whose sum of the digital products of the divisors is prime.

The programs for A093859, there is no canonical definition to state claims against.
-/

/-! ## A093859.P3801954394959914414

`A343656(n+1)+A181486(A002150(n+1))`
-/

namespace A093859.P3801954394959914414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343656 (n + 1) + A181486 (A002150 (n + 1)).toNat

end

end A093859.P3801954394959914414

/-! ## A093859.P16175817132473569470

`lt[A333145(2*n+1), A284749(A003114(2*(n+1)))]`
-/

namespace A093859.P16175817132473569470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333145 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284749 (A003114 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A093859.P16175817132473569470

/-!
# A093861: a(n) = floor(composite(n)^(composite(n)/n)), composite(n) = A002808(n).

The programs for A093861, the canonical program `A093861.P7181153501879587618` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093861 has offset 1).

The definition of A093861 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A002808(n+1)^(A002808(n+1)/(n+1)))` (program `A093861.P7181153501879587618`, by `A093861.P7181153501879587618.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A093861.P7181153501879587618

`floor(A002808(n+1)^(A002808(n+1)/(n+1)))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A093861

/-- `floor(A002808(n+1)^(A002808(n+1)/(n+1)))` -/
def P7181153501879587618.Spec : Prop :=
  ∀ n, P7181153501879587618.a n = A093861 (n + 1)

theorem P7181153501879587618.correct : P7181153501879587618.Spec := by
  intro n
  simp only [A093861, Nat.add_sub_cancel]

end A093861

/-!
# A093862: Floor[ prime(n)^{prime(n)/n}], prime(n) = A000040(n).

The programs for A093862, the canonical program `A093862.P8636765871941824583` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093862 has offset 1).

The definition of A093862 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093862.P8636765871941824583

`floor(A000040(n+1)^(p?[A057979(n)]/(n+1)))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A093862

/-- `floor(A000040(n+1)^(p?[A057979(n)]/(n+1)))` -/
def P8636765871941824583.Spec : Prop :=
  ∀ n, P8636765871941824583.a n = A093862 (n + 1)

theorem P8636765871941824583.correct : P8636765871941824583.Spec := by
  intro n
  simp only [A093862, Nat.add_sub_cancel]

end A093862

/-! ## A093862.P15609689471394990162

`floor(root(A051674(n+1), n+1))`
-/

namespace A093862.P15609689471394990162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051674 (n + 1) : ℝ) ^ (1 / (n + 1 : ℝ))⌋

end

end A093862.P15609689471394990162

namespace A093862

/-- `floor(root(A051674(n+1), n+1))` -/
def P15609689471394990162.Spec : Prop :=
  ∀ n, P15609689471394990162.a n = A093862 (n + 1)

end A093862

/-!
# A093863: Unitary sigma-unitary phi super perfect numbers: USUP(USUP(n))= n/k for some integer k.

The programs for A093863, there is no canonical definition to state claims against.
-/

/-! ## A093863.P3221806361103968971

`eq[A097611(A106345(n)), A097637(n)]`
-/

namespace A093863.P3221806361103968971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097611 (A106345 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097637 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093863.P3221806361103968971

/-! ## A093863.P1379980884740295767

`eq[A047994(A336138(n)), A343639(n)]`
-/

namespace A093863.P1379980884740295767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A336138 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343639 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093863.P1379980884740295767

/-! ## A093863.P9776227971797380049

`eq[A097637(n), A167965(n+1)]`
-/

namespace A093863.P9776227971797380049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097637 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167965 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093863.P9776227971797380049

/-! ## A093863.P17452432840368305843

`eq[A001156(A008616(n)), A097637(n)]`
-/

namespace A093863.P17452432840368305843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 (A008616 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097637 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093863.P17452432840368305843

/-! ## A093863.P7533555265896222610

`eq[A075897(n), A096751(A096751(n))]`
-/

namespace A093863.P7533555265896222610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075897 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096751 (A096751 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093863.P7533555265896222610

/-!
# A093864: Consider the least k such that prime(k) > n*composite(k). Sequence gives prime(k).

The programs for A093864, there is no canonical definition to state claims against.
-/

/-! ## A093864.P8103300676577370301

`A000040(A073459(n+1))`
-/

namespace A093864.P8103300676577370301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A073459 (n + 1)).toNat

end

end A093864.P8103300676577370301

/-! ## A093864.P317340387339487708

`A008578(A073459(n+1)+1)`
-/

namespace A093864.P317340387339487708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A073459 (n + 1) + 1).toNat

end

end A093864.P317340387339487708

/-! ## A093864.P4291660924491956622

`A175787(A073459(n+1)+1)`
-/

namespace A093864.P4291660924491956622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (A073459 (n + 1) + 1).toNat

end

end A093864.P4291660924491956622

/-! ## A093864.P2776243673980700061

`A182986(A073459(n+1)+1)`
-/

namespace A093864.P2776243673980700061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A073459 (n + 1) + 1).toNat

end

end A093864.P2776243673980700061

/-! ## A093864.P17334222512816990416

`A065091(A073459(n+1)-1)`
-/

namespace A093864.P17334222512816990416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A073459 (n + 1) - 1).toNat

end

end A093864.P17334222512816990416

/-!
# A093868: Smallest prime that differs from a multiple of n by unity.

The programs for A093868, there is no canonical definition to state claims against.
-/

/-! ## A093868.P4224390217496071939

`A051698((n+1)*A103689(n+1))`
-/

namespace A093868.P4224390217496071939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 ((n + 1 : ℤ) * A103689 (n + 1)).toNat

end

end A093868.P4224390217496071939

/-! ## A093868.P13576039693783599483

`A194603((n+1)*A103689(n+1))`
-/

namespace A093868.P13576039693783599483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194603 ((n + 1 : ℤ) * A103689 (n + 1)).toNat

end

end A093868.P13576039693783599483

/-! ## A093868.P1481967022598355589

`A020639(A034694(n+1)*A038700(n+1))`
-/

namespace A093868.P1481967022598355589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A034694 (n + 1) * A038700 (n + 1)).toNat

end

end A093868.P1481967022598355589

/-! ## A093868.P4698645137013188258

`A020639(A086507(n+1)*A086508(n+1))`
-/

namespace A093868.P4698645137013188258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A086507 (n + 1) * A086508 (n + 1)).toNat

end

end A093868.P4698645137013188258

/-! ## A093868.P11522814464799602901

`A020639(A034694(n+1)*A249803(n+1))`
-/

namespace A093868.P11522814464799602901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A034694 (n + 1) * A249803 (n + 1)).toNat

end

end A093868.P11522814464799602901

/-! ## A093868.P5443344665512024079

`A020639(lcm(A034694(n+1), A038700(n+1)))`
-/

namespace A093868.P5443344665512024079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lcm (A034694 (n + 1)) (A038700 (n + 1)))

end

end A093868.P5443344665512024079

/-! ## A093868.P6789224787229917987

`A020639(lcm(A086507(n+1), A086508(n+1)))`
-/

namespace A093868.P6789224787229917987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lcm (A086507 (n + 1)) (A086508 (n + 1)))

end

end A093868.P6789224787229917987

/-!
# A093869: Frequency of occurrence of prime(n) in A093868.

The programs for A093869, there is no canonical definition to state claims against.
-/

/-! ## A093869.P18246732490625288367

`3-A006996(A102115(n))`
-/

namespace A093869.P18246732490625288367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A006996 (A102115 n).toNat

end

end A093869.P18246732490625288367

/-! ## A093869.P6120359743053523558

`A348406(xor(8, A057711(n)))`
-/

namespace A093869.P6120359743053523558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348406 (Int.xor 8 (A057711 n)).toNat

end

end A093869.P6120359743053523558

/-! ## A093869.P6265415183430653162

`A348406(xor(8, A129952(n)))`
-/

namespace A093869.P6265415183430653162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348406 (Int.xor 8 (A129952 n)).toNat

end

end A093869.P6265415183430653162

/-! ## A093869.P16493465679374484646

`A121560(C(A344748(n+1), ∑{e}[n+1, #]))`
-/

namespace A093869.P16493465679374484646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121560 (Nat.choose (A344748 (n + 1)).toNat (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A093869.P16493465679374484646

/-! ## A093869.P5397159790132259816

`A115583(A233271(2*n+1)+8)`
-/

namespace A093869.P5397159790132259816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115583 (A233271 (2 * n + 1) + 8).toNat

end

end A093869.P5397159790132259816

/-!
# A093871: a(n) is the n-th prime = -1 (mod n).

The programs for A093871, there is no canonical definition to state claims against.
-/

/-! ## A093871.P13593319410391456086

`A393607((n+1)²+n²)`
-/

namespace A093871.P13593319410391456086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393607 ((n + 1) ^ 2 + n ^ 2)

end

end A093871.P13593319410391456086

/-! ## A093871.P5246627812192649317

`A093870(∑[n+1])`
-/

namespace A093871.P5246627812192649317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093870 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093871.P5246627812192649317

/-!
# A093872: Least composite number with sum of the prime divisors = n, or zero if no such number exists.

The programs for A093872, there is no canonical definition to state claims against.
-/

/-! ## A093872.P16669389484180026447

`A070016(n+1)*A168184(A120262(n))`
-/

namespace A093872.P16669389484180026447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070016 (n + 1) * A168184 (A120262 n).toNat

end

end A093872.P16669389484180026447

/-! ## A093872.P15951989769888338892

`A070016(n+1)%A001065(A158744(n+1))`
-/

namespace A093872.P15951989769888338892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070016 (n + 1)) (A001065 (A158744 (n + 1)).toNat)

end

end A093872.P15951989769888338892

/-! ## A093872.P17388987909626768547

`C(A070016(n+1), A070010(A069970(n+4)))`
-/

namespace A093872.P17388987909626768547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A070016 (n + 1)).toNat (A070010 (A069970 (n + 4)).toNat).toNat

end

end A093872.P17388987909626768547

/-!
# A093873: Numerators in Kepler's tree of harmonic fractions.

The programs for A093873, the canonical program `A093873.P2224361996583993977` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093873 has offset 1).

The definition of A093873 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9215 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093873.P10567384694786526513

`A071585(A274576(n))`
-/

namespace A093873.P10567384694786526513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A274576 n).toNat

end

end A093873.P10567384694786526513

namespace A093873

/-- `A071585(A274576(n))` -/
def P10567384694786526513.Spec : Prop :=
  ∀ n, P10567384694786526513.a n = A093873 (n + 1)

end A093873

/-! ## A093873.P5771923191749382024

`A093875(A101279(n+1))`
-/

namespace A093873.P5771923191749382024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093875 (A101279 (n + 1)).toNat

end

end A093873.P5771923191749382024

namespace A093873

/-- `A093875(A101279(n+1))` -/
def P5771923191749382024.Spec : Prop :=
  ∀ n, P5771923191749382024.a n = A093873 (n + 1)

end A093873

/-! ## A093873.P16571363427275611106

`A002487(A380443(n+1))`
-/

namespace A093873.P16571363427275611106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A380443 (n + 1)).toNat

end

end A093873.P16571363427275611106

namespace A093873

/-- `A002487(A380443(n+1))` -/
def P16571363427275611106.Spec : Prop :=
  ∀ n, P16571363427275611106.a n = A093873 (n + 1)

end A093873

/-! ## A093873.P5314535761530405712

`A071585(n+1)-A093875(n+1)`
-/

namespace A093873.P5314535761530405712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (n + 1) - A093875 (n + 1)

end

end A093873.P5314535761530405712

namespace A093873

/-- `A071585(n+1)-A093875(n+1)` -/
def P5314535761530405712.Spec : Prop :=
  ∀ n, P5314535761530405712.a n = A093873 (n + 1)

end A093873

/-! ## A093873.P10988768335383626867

`A071585(n+1)-A071585(A110654(n))`
-/

namespace A093873.P10988768335383626867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (n + 1) - A071585 (A110654 n).toNat

end

end A093873.P10988768335383626867

namespace A093873

/-- `A071585(n+1)-A071585(A110654(n))` -/
def P10988768335383626867.Spec : Prop :=
  ∀ n, P10988768335383626867.a n = A093873 (n + 1)

end A093873

/-! ## A093873.P16451977328874495411

`A071585(n+1)-A071585(A004526(n+1))`
-/

namespace A093873.P16451977328874495411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (n + 1) - A071585 (A004526 (n + 1)).toNat

end

end A093873.P16451977328874495411

namespace A093873

/-- `A071585(n+1)-A071585(A004526(n+1))` -/
def P16451977328874495411.Spec : Prop :=
  ∀ n, P16451977328874495411.a n = A093873 (n + 1)

end A093873

/-! ## A093873.P3671433796000158899

`A071585(n+1)-A071585(A123108(n+1))`
-/

namespace A093873.P3671433796000158899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (n + 1) - A071585 (A123108 (n + 1)).toNat

end

end A093873.P3671433796000158899

namespace A093873

/-- `A071585(n+1)-A071585(A123108(n+1))` -/
def P3671433796000158899.Spec : Prop :=
  ∀ n, P3671433796000158899.a n = A093873 (n + 1)

end A093873

/-! ## A093873.P2224361996583993977

`A295515(A233279(n+1)+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A093873

/-- `A295515(A233279(n+1)+1)` -/
def P2224361996583993977.Spec : Prop :=
  ∀ n, P2224361996583993977.a n = A093873 (n + 1)

theorem P2224361996583993977.correct : P2224361996583993977.Spec := by
  intro n
  simp only [A093873, Nat.add_sub_cancel]

end A093873

/-! ## A093873.P7340170252471804508

`A295515(A066194(n+2))`
-/

namespace A093873.P7340170252471804508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (A066194 (n + 2)).toNat

end

end A093873.P7340170252471804508

namespace A093873

/-- `A295515(A066194(n+2))` -/
def P7340170252471804508.Spec : Prop :=
  ∀ n, P7340170252471804508.a n = A093873 (n + 1)

end A093873

/-! ## A093873.P10498800892477925922

`A020651(n+1)-A295515(A131271(n))`
-/

namespace A093873.P10498800892477925922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020651 (n + 1) - A295515 (A131271 n).toNat

end

end A093873.P10498800892477925922

namespace A093873

/-- `A020651(n+1)-A295515(A131271(n))` -/
def P10498800892477925922.Spec : Prop :=
  ∀ n, P10498800892477925922.a n = A093873 (n + 1)

end A093873

/-! ## A093873.P11954223638549330651

`A294442(n+1)-A295515(A131271(n))`
-/

namespace A093873.P11954223638549330651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294442 (n + 1) - A295515 (A131271 n).toNat

end

end A093873.P11954223638549330651

namespace A093873

/-- `A294442(n+1)-A295515(A131271(n))` -/
def P11954223638549330651.Spec : Prop :=
  ∀ n, P11954223638549330651.a n = A093873 (n + 1)

end A093873

/-! ## A093873.P10724500107233962851

`A071585(2*(n+1))-A071585(n+1)`
-/

namespace A093873.P10724500107233962851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (2 * (n + 1)) - A071585 (n + 1)

end

end A093873.P10724500107233962851

namespace A093873

/-- `A071585(2*(n+1))-A071585(n+1)` -/
def P10724500107233962851.Spec : Prop :=
  ∀ n, P10724500107233962851.a n = A093873 (n + 1)

end A093873

/-! ## A093873.P10391539345825160293

`A093875(2*(n+1))-A093875(n+1)`
-/

namespace A093873.P10391539345825160293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093875 (2 * (n + 1)) - A093875 (n + 1)

end

end A093873.P10391539345825160293

namespace A093873

/-- `A093875(2*(n+1))-A093875(n+1)` -/
def P10391539345825160293.Spec : Prop :=
  ∀ n, P10391539345825160293.a n = A093873 (n + 1)

end A093873

/-! ## A093873.P12110047680257075895

`A020651(A116882(n+1))`
-/

namespace A093873.P12110047680257075895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020651 (A116882 (n + 1)).toNat

end

end A093873.P12110047680257075895

namespace A093873

/-- `A020651(A116882(n+1))` -/
def P12110047680257075895.Spec : Prop :=
  ∀ n, P12110047680257075895.a n = A093873 (n + 1)

end A093873

/-!
# A093874: Least k such that there are at least n primes between k and k^2.

The programs for A093874, there is no canonical definition to state claims against.
-/

/-! ## A093874.P9607644140203040811

`∑[char[A117490(n+1)]]+1`
-/

namespace A093874.P9607644140203040811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117490 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A093874.P9607644140203040811

/-! ## A093874.P13345970821587647775

`A104103(A251719(n+3)+n)`
-/

namespace A093874.P13345970821587647775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104103 (A251719 (n + 3) + (n : ℤ)).toNat

end

end A093874.P13345970821587647775

/-! ## A093874.P2556895594600447877

`A020725(∑[char[A117490(n+1)]])`
-/

namespace A093874.P2556895594600447877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117490 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093874.P2556895594600447877

/-! ## A093874.P9873520315010087547

`A104103(comp[A001359(n+1)-3]+1)`
-/

namespace A093874.P9873520315010087547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) - 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104103 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A093874.P9873520315010087547

/-! ## A093874.P18042391127531946224

`A000006(comp[∑[A050216(n)]-1]+1)+1`
-/

namespace A093874.P18042391127531946224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) + 1

end

end A093874.P18042391127531946224

/-! ## A093874.P4908534514690797148

`A000006(comp[A000879(n+1)-1]+1)+1`
-/

namespace A093874.P4908534514690797148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000879 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) + 1

end

end A093874.P4908534514690797148

/-! ## A093874.P16870664371206852770

`A104103(∑[A294336(A271004(n))])`
-/

namespace A093874.P16870664371206852770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294336 (A271004 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104103 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A093874.P16870664371206852770

/-!
# A093875: Denominators in Kepler's tree of harmonic fractions.

The programs for A093875, the canonical program `A093875.P1175573544664429257` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093875 has offset 1).

The definition of A093875 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093873, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A093875.P1175573544664429257

`A093873(2*(n+1)+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A093875

/-- `A093873(2*(n+1)+1)` -/
def P1175573544664429257.Spec : Prop :=
  ∀ n, P1175573544664429257.a n = A093875 (n + 1)

theorem P1175573544664429257.correct : P1175573544664429257.Spec := by
  intro n
  simp only [A093875, Nat.add_sub_cancel]

end A093875

/-! ## A093875.P18008164363672075346

`A071585(ceil(n/2))`
-/

namespace A093875.P18008164363672075346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 ⌈(n : ℚ) / 2⌉.toNat

end

end A093875.P18008164363672075346

namespace A093875

/-- `A071585(ceil(n/2))` -/
def P18008164363672075346.Spec : Prop :=
  ∀ n, P18008164363672075346.a n = A093875 (n + 1)

end A093875

/-! ## A093875.P15641316121670379042

`A071585(n+1)-A093873(n+1)`
-/

namespace A093875.P15641316121670379042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (n + 1) - A093873 (n + 1)

end

end A093875.P15641316121670379042

namespace A093875

/-- `A071585(n+1)-A093873(n+1)` -/
def P15641316121670379042.Spec : Prop :=
  ∀ n, P15641316121670379042.a n = A093875 (n + 1)

end A093875

/-! ## A093875.P3977906667613624582

`A114214(A233279(n+1))`
-/

namespace A093875.P3977906667613624582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114214 (A233279 (n + 1)).toNat

end

end A093875.P3977906667613624582

namespace A093875

/-- `A114214(A233279(n+1))` -/
def P3977906667613624582.Spec : Prop :=
  ∀ n, P3977906667613624582.a n = A093875 (n + 1)

end A093875

/-! ## A093875.P11501581132048311442

`A114214(A006068(n+1))`
-/

namespace A093875.P11501581132048311442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114214 (A006068 (n + 1)).toNat

end

end A093875.P11501581132048311442

namespace A093875

/-- `A114214(A006068(n+1))` -/
def P11501581132048311442.Spec : Prop :=
  ∀ n, P11501581132048311442.a n = A093875 (n + 1)

end A093875

/-! ## A093875.P13025072808055561179

`A114214(A341916(n+1))`
-/

namespace A093875.P13025072808055561179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114214 (A341916 (n + 1)).toNat

end

end A093875.P13025072808055561179

namespace A093875

/-- `A114214(A341916(n+1))` -/
def P13025072808055561179.Spec : Prop :=
  ∀ n, P13025072808055561179.a n = A093875 (n + 1)

end A093875

/-! ## A093875.P9654824155448281369

`A002487(or(1, A006068(n+1)))`
-/

namespace A093875.P9654824155448281369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Int.lor 1 (A006068 (n + 1))).toNat

end

end A093875.P9654824155448281369

namespace A093875

/-- `A002487(or(1, A006068(n+1)))` -/
def P9654824155448281369.Spec : Prop :=
  ∀ n, P9654824155448281369.a n = A093875 (n + 1)

end A093875

/-! ## A093875.P5428120310864273336

`A002487(A010059(n+1)+A006068(n+1))`
-/

namespace A093875.P5428120310864273336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A010059 (n + 1) + A006068 (n + 1)).toNat

end

end A093875.P5428120310864273336

namespace A093875

/-- `A002487(A010059(n+1)+A006068(n+1))` -/
def P5428120310864273336.Spec : Prop :=
  ∀ n, P5428120310864273336.a n = A093875 (n + 1)

end A093875

/-! ## A093875.P4900314512108087685

`A005843(A071585(n+1))-A071585(A005843(n+1))`
-/

namespace A093875.P4900314512108087685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A071585 (n + 1)).toNat - A071585 (A005843 (n + 1)).toNat

end

end A093875.P4900314512108087685

namespace A093875

/-- `A005843(A071585(n+1))-A071585(A005843(n+1))` -/
def P4900314512108087685.Spec : Prop :=
  ∀ n, P4900314512108087685.a n = A093875 (n + 1)

end A093875

/-! ## A093875.P13241373245149020657

`A071585(2*n+3)-A071585(n+1)`
-/

namespace A093875.P13241373245149020657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (2 * n + 3) - A071585 (n + 1)

end

end A093875.P13241373245149020657

namespace A093875

/-- `A071585(2*n+3)-A071585(n+1)` -/
def P13241373245149020657.Spec : Prop :=
  ∀ n, P13241373245149020657.a n = A093875 (n + 1)

end A093875

/-! ## A093875.P18418862307859070176

`A002487(A105670(n+2))`
-/

namespace A093875.P18418862307859070176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A105670 (n + 2)).toNat

end

end A093875.P18418862307859070176

namespace A093875

/-- `A002487(A105670(n+2))` -/
def P18418862307859070176.Spec : Prop :=
  ∀ n, P18418862307859070176.a n = A093875 (n + 1)

end A093875

/-!
# A093877: Number of fixed n-celled polyzebras (or zebra-move-connected polyominoes).

The programs for A093877, there is no canonical definition to state claims against.
-/

/-! ## A093877.P2956538326485089982

`A393390(∑[and(n+1, a(n-1))+1])` with `a(0)=6`
-/

namespace A093877.P2956538326485089982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  Nat.land (n + 1) (f1 (n - 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393390 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093877.P2956538326485089982

/-! ## A093877.P12180968462898912424

`A393390(A167614(n+1))`
-/

namespace A093877.P12180968462898912424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393390 (A167614 (n + 1)).toNat

end

end A093877.P12180968462898912424

/-! ## A093877.P2351941206530711202

`A393390(eq[2, A144328(n+1)]+1)`
-/

namespace A093877.P2351941206530711202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393390 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A093877.P2351941206530711202

/-!
# A093878: a(1)=a(2)=1; for n >=3, a(n) = a(a(a(n-1))) + a(n-a(a(n-1))).

The programs for A093878, the canonical program `A093878.P16328039747131196147` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093878 has offset 1).

The definition of A093878 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(a(n-1)-1)-1)+a(n-a(a(n-1)-1))` (program `A093878.P16328039747131196147`, by `A093878.P16328039747131196147.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A093878.P16328039747131196147

`a(a(a(n-1)-1)-1)+a(n-a(a(n-1)-1))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A093878

/-- `a(a(a(n-1)-1)-1)+a(n-a(a(n-1)-1))` -/
def P16328039747131196147.Spec : Prop :=
  ∀ n, (P16328039747131196147.a n : ℤ) = A093878 (n + 1)

theorem P16328039747131196147.correct : P16328039747131196147.Spec := by
  intro n
  simp only [A093878, Nat.add_sub_cancel]

end A093878

/-! ## A093878.P9871844873878647884

`A094217(n)+a(n-1)` with `a(0)=1`
-/

namespace A093878.P9871844873878647884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A094217 n + a (n - 1)

end

end A093878.P9871844873878647884

namespace A093878

/-- `A094217(n)+a(n-1)` -/
def P9871844873878647884.Spec : Prop :=
  ∀ n, P9871844873878647884.a n = A093878 (n + 1)

end A093878

/-! ## A093878.P8405947594631111787

`∑[A094217(abs(1-n)+1)]`
-/

namespace A093878.P8405947594631111787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094217 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093878.P8405947594631111787

namespace A093878

/-- `∑[A094217(abs(1-n)+1)]` -/
def P8405947594631111787.Spec : Prop :=
  ∀ n, P8405947594631111787.a n = A093878 (n + 1)

end A093878

/-! ## A093878.P13495651357414932604

`∑[A094217(round(sqrt(n²+1)))]+1`
-/

namespace A093878.P13495651357414932604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094217 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A093878.P13495651357414932604

namespace A093878

/-- `∑[A094217(round(sqrt(n²+1)))]+1` -/
def P13495651357414932604.Spec : Prop :=
  ∀ n, P13495651357414932604.a n = A093878 (n + 1)

end A093878

/-! ## A093878.P11833916759470496283

`floor(A094215(n+1)+(n+1)/ϕ)`
-/

namespace A093878.P11833916759470496283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A094215 (n + 1) : ℝ) + (n + 1 : ℝ) / Real.goldenRatio⌋

end

end A093878.P11833916759470496283

namespace A093878

/-- `floor(A094215(n+1)+(n+1)/ϕ)` -/
def P11833916759470496283.Spec : Prop :=
  ∀ n, P11833916759470496283.a n = A093878 (n + 1)

end A093878

/-! ## A093878.P8974663633669726625

`A094215(n+1)+A005206(n)`
-/

namespace A093878.P8974663633669726625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094215 (n + 1) + A005206 n

end

end A093878.P8974663633669726625

namespace A093878

/-- `A094215(n+1)+A005206(n)` -/
def P8974663633669726625.Spec : Prop :=
  ∀ n, P8974663633669726625.a n = A093878 (n + 1)

end A093878

/-! ## A093878.P6093555073740600357

`A094215(n+1)+∑[A096270(n)]`
-/

namespace A093878.P6093555073740600357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094215 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093878.P6093555073740600357

namespace A093878

/-- `A094215(n+1)+∑[A096270(n)]` -/
def P6093555073740600357.Spec : Prop :=
  ∀ n, P6093555073740600357.a n = A093878 (n + 1)

end A093878

/-! ## A093878.P15464526024517039448

`A019446(n+1)+A094215(n+1)-1`
-/

namespace A093878.P15464526024517039448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (n + 1) + (A094215 (n + 1) - 1)

end

end A093878.P15464526024517039448

namespace A093878

/-- `A019446(n+1)+A094215(n+1)-1` -/
def P15464526024517039448.Spec : Prop :=
  ∀ n, P15464526024517039448.a n = A093878 (n + 1)

end A093878

/-! ## A093878.P9699101970015947721

`A022342(n+1)+A094215(n+1)-n`
-/

namespace A093878.P9699101970015947721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (n + 1) + (A094215 (n + 1) - (n : ℤ))

end

end A093878.P9699101970015947721

namespace A093878

/-- `A022342(n+1)+A094215(n+1)-n` -/
def P9699101970015947721.Spec : Prop :=
  ∀ n, P9699101970015947721.a n = A093878 (n + 1)

end A093878

/-!
# A093879: First differences of A004001.

The programs for A093879, the canonical program `A093879.P16906810151059446800` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093879 has offset 1).

The definition of A093879 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093879.P16906810151059446800

`A004001(n+2)-A004001(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A093879

/-- `A004001(n+2)-A004001(n+1)` -/
def P16906810151059446800.Spec : Prop :=
  ∀ n, P16906810151059446800.a n = A093879 (n + 1)

theorem P16906810151059446800.correct : P16906810151059446800.Spec := by
  intro n
  simp only [A093879, Nat.add_sub_cancel]

end A093879

/-! ## A093879.P15980716483514823979

`Δ[a(a(n-1)-1)+a(n-a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A093879.P15980716483514823979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (f1 (n - 1) - 1) + f1 (n - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A093879.P15980716483514823979

namespace A093879

/-- `Δ[a(a(n-1)-1)+a(n-a(n-1))]` -/
def P15980716483514823979.Spec : Prop :=
  ∀ n, P15980716483514823979.a n = A093879 (n + 1)

theorem P15980716483514823979.correct : P15980716483514823979.Spec := by
  intro n
  simp only [A093879, Nat.add_sub_cancel, A093879.P15980716483514823979.f1, A093879.P15980716483514823979.a, A093879.P16906810151059446800.a, A004001, A004001.P15027099775036681873.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A093879

/-! ## A093879.P17953158714896419250

`abs(Δ[A283468(n+1)])`
-/

namespace A093879.P17953158714896419250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A093879.P17953158714896419250

namespace A093879

/-- `abs(Δ[A283468(n+1)])` -/
def P17953158714896419250.Spec : Prop :=
  ∀ n, P17953158714896419250.a n = A093879 (n + 1)

end A093879

/-! ## A093879.P5562194036976464060

`char[∑[A265332(n+1)]]`
-/

namespace A093879.P5562194036976464060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265332 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A093879.P5562194036976464060

namespace A093879

/-- `char[∑[A265332(n+1)]]` -/
def P5562194036976464060.Spec : Prop :=
  ∀ n, (P5562194036976464060.a n : ℤ) = A093879 (n + 1)

end A093879

/-! ## A093879.P7050071710064517249

`char[A088359(n+1)-2]`
-/

namespace A093879.P7050071710064517249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088359 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A093879.P7050071710064517249

namespace A093879

/-- `char[A088359(n+1)-2]` -/
def P7050071710064517249.Spec : Prop :=
  ∀ n, (P7050071710064517249.a n : ℤ) = A093879 (n + 1)

end A093879

/-! ## A093879.P12505527385530072152

`char[A188163(n+1)-2]`
-/

namespace A093879.P12505527385530072152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188163 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A093879.P12505527385530072152

namespace A093879

/-- `char[A188163(n+1)-2]` -/
def P12505527385530072152.Spec : Prop :=
  ∀ n, (P12505527385530072152.a n : ℤ) = A093879 (n + 1)

end A093879

/-! ## A093879.P2707179658884760067

`A120474(n)+a(n-1)` with `a(0)=0`
-/

namespace A093879.P2707179658884760067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A120474 n + a (n - 1)

end

end A093879.P2707179658884760067

namespace A093879

/-- `A120474(n)+a(n-1)` -/
def P2707179658884760067.Spec : Prop :=
  ∀ n, P2707179658884760067.a n = A093879 (n + 1)

end A093879

/-! ## A093879.P10821123078481135748

`ceil(Δ[A004074(n+1)/2])`
-/

namespace A093879.P10821123078481135748
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004074 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A093879.P10821123078481135748

namespace A093879

/-- `ceil(Δ[A004074(n+1)/2])` -/
def P10821123078481135748.Spec : Prop :=
  ∀ n, P10821123078481135748.a n = A093879 (n + 1)

end A093879

/-! ## A093879.P13118151924661352952

`char[∑[A051135(n+1)]-1]`
-/

namespace A093879.P13118151924661352952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051135 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A093879.P13118151924661352952

namespace A093879

/-- `char[∑[A051135(n+1)]-1]` -/
def P13118151924661352952.Spec : Prop :=
  ∀ n, (P13118151924661352952.a n : ℤ) = A093879 (n + 1)

end A093879

/-! ## A093879.P18198459403895962765

`1-char[A087686(n+1)-2]`
-/

namespace A093879.P18198459403895962765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087686 (n + 1) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A093879.P18198459403895962765

namespace A093879

/-- `1-char[A087686(n+1)-2]` -/
def P18198459403895962765.Spec : Prop :=
  ∀ n, P18198459403895962765.a n = A093879 (n + 1)

end A093879

/-! ## A093879.P15235056042721180058

`1-char[A266188(n+1)-2]`
-/

namespace A093879.P15235056042721180058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266188 (n + 1) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A093879.P15235056042721180058

namespace A093879

/-- `1-char[A266188(n+1)-2]` -/
def P15235056042721180058.Spec : Prop :=
  ∀ n, P15235056042721180058.a n = A093879 (n + 1)

end A093879

/-! ## A093879.P11088428787189190436

`char[A051135(n)+a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A093879.P11088428787189190436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A051135 n + f1 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A093879.P11088428787189190436

namespace A093879

/-- `char[A051135(n)+a(n-1)]` -/
def P11088428787189190436.Spec : Prop :=
  ∀ n, (P11088428787189190436.a n : ℤ) = A093879 (n + 1)

end A093879

/-! ## A093879.P10920106862217031416

`A000045(Δ[A283468(n+1)]²)`
-/

namespace A093879.P10920106862217031416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A093879.P10920106862217031416

namespace A093879

/-- `A000045(Δ[A283468(n+1)]²)` -/
def P10920106862217031416.Spec : Prop :=
  ∀ n, P10920106862217031416.a n = A093879 (n + 1)

end A093879

/-! ## A093879.P6756928442303560141

`A209384(Δ[A283468(n+1)]²)`
-/

namespace A093879.P6756928442303560141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209384 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A093879.P6756928442303560141

namespace A093879

/-- `A209384(Δ[A283468(n+1)]²)` -/
def P6756928442303560141.Spec : Prop :=
  ∀ n, P6756928442303560141.a n = A093879 (n + 1)

end A093879

/-! ## A093879.P17927964439200390386

`A000045(Δ[A004074(n+1)]+1)`
-/

namespace A093879.P17927964439200390386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (n + 1) - f1 n + 1).toNat

end

end A093879.P17927964439200390386

namespace A093879

/-- `A000045(Δ[A004074(n+1)]+1)` -/
def P17927964439200390386.Spec : Prop :=
  ∀ n, P17927964439200390386.a n = A093879 (n + 1)

end A093879

/-! ## A093879.P6789042372233104463

`A110654(Δ[A004074(n+1)]+1)`
-/

namespace A093879.P6789042372233104463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (f1 (n + 1) - f1 n + 1).toNat

end

end A093879.P6789042372233104463

namespace A093879

/-- `A110654(Δ[A004074(n+1)]+1)` -/
def P6789042372233104463.Spec : Prop :=
  ∀ n, P6789042372233104463.a n = A093879 (n + 1)

end A093879

/-! ## A093879.P3781397950145559861

`A080677(n+1)-A087816(n+1)`
-/

namespace A093879.P3781397950145559861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080677 (n + 1) - A087816 (n + 1)

end

end A093879.P3781397950145559861

namespace A093879

/-- `A080677(n+1)-A087816(n+1)` -/
def P3781397950145559861.Spec : Prop :=
  ∀ n, P3781397950145559861.a n = A093879 (n + 1)

end A093879

/-! ## A093879.P10480444273955507396

`(A283468(n+1)-A283468(n+2))²`
-/

namespace A093879.P10480444273955507396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A283468 (n + 1) - A283468 (n + 2)) ^ 2

end

end A093879.P10480444273955507396

namespace A093879

/-- `(A283468(n+1)-A283468(n+2))²` -/
def P10480444273955507396.Spec : Prop :=
  ∀ n, P10480444273955507396.a n = A093879 (n + 1)

end A093879

/-! ## A093879.P17101100976841076869

`∑[A120474(n+1)]-A120474(n+1)`
-/

namespace A093879.P17101100976841076869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A120474 (n + 1)

end

end A093879.P17101100976841076869

namespace A093879

/-- `∑[A120474(n+1)]-A120474(n+1)` -/
def P17101100976841076869.Spec : Prop :=
  ∀ n, P17101100976841076869.a n = A093879 (n + 1)

end A093879

/-! ## A093879.P4574297258156908729

`A081827(n+1)+A284019(n+2)-A284019(n+1)`
-/

namespace A093879.P4574297258156908729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081827 (n + 1) + (A284019 (n + 2) - A284019 (n + 1))

end

end A093879.P4574297258156908729

namespace A093879

/-- `A081827(n+1)+A284019(n+2)-A284019(n+1)` -/
def P4574297258156908729.Spec : Prop :=
  ∀ n, P4574297258156908729.a n = A093879 (n + 1)

theorem P4574297258156908729.correct : P4574297258156908729.Spec := by
  intro n
  simp only [A093879, Nat.add_sub_cancel, A093879.P4574297258156908729.a, A093879.P16906810151059446800.a, A004001, A004001.P15027099775036681873.a, A081827, A081827.P14419077917004219734.a, A284019, A284019.P8425388726725023330.a, A005185, A005185.P15523785795587217945.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A093879

/-!
# A093880: a(n) = lcm(1, 2, ..., 2n) / lcm(1, 2, ..., n).

The programs for A093880, the canonical program `A093880.P15730827482543380078` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093880 has offset 0).

The definition of A093880 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093880.P2565113639158083600

`A099996(n)/A003418(n)`
-/

namespace A093880.P2565113639158083600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099996 n : ℚ) / (A003418 n : ℚ)

end

end A093880.P2565113639158083600

namespace A093880

/-- `A099996(n)/A003418(n)` -/
def P2565113639158083600.Spec : Prop :=
  ∀ n, P2565113639158083600.a n = (A093880 n : ℚ)

end A093880

/-! ## A093880.P15730827482543380078

`A003418(2*n)/A003418(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A093880

/-- `A003418(2*n)/A003418(n)` -/
def P15730827482543380078.Spec : Prop :=
  ∀ n, P15730827482543380078.a n = (A093880 n : ℚ)

end A093880

/-! ## A093880.P9838045311625763338

`a(n-1)*A014963(2*n-1)/A155457(n)` with `a(0)=1, a(1)=2`
-/

namespace A093880.P9838045311625763338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * (A014963 (2 * n - 1) : ℚ) / (A155457 n : ℚ)

end

end A093880.P9838045311625763338

namespace A093880

/-- `a(n-1)*A014963(2*n-1)/A155457(n)` -/
def P9838045311625763338.Spec : Prop :=
  ∀ n, P9838045311625763338.a n = (A093880 n : ℚ)

end A093880

/-! ## A093880.P16354612362996243090

`A366369(2*n)`
-/

namespace A093880.P16354612362996243090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366369 (2 * n)

end

end A093880.P16354612362996243090

namespace A093880

/-- `A366369(2*n)` -/
def P16354612362996243090.Spec : Prop :=
  ∀ n, P16354612362996243090.a n = A093880 n

end A093880

/-! ## A093880.P574835466990177018

`A099996(n)/(A001405(n)*A263673(n))`
-/

namespace A093880.P574835466990177018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099996 n : ℚ) / (A001405 n * A263673 n : ℚ)

end

end A093880.P574835466990177018

namespace A093880

/-- `A099996(n)/(A001405(n)*A263673(n))` -/
def P574835466990177018.Spec : Prop :=
  ∀ n, P574835466990177018.a n = (A093880 n : ℚ)

end A093880

/-! ## A093880.P7311679662327121246

`A067049(∑[4*n])`
-/

namespace A093880.P7311679662327121246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067049 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093880.P7311679662327121246

namespace A093880

/-- `A067049(∑[4*n])` -/
def P7311679662327121246.Spec : Prop :=
  ∀ n, P7311679662327121246.a n = A093880 n

end A093880

/-! ## A093880.P8285326436617175910

`A204087(∑[4*n])`
-/

namespace A093880.P8285326436617175910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204087 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093880.P8285326436617175910

namespace A093880

/-- `A204087(∑[4*n])` -/
def P8285326436617175910.Spec : Prop :=
  ∀ n, P8285326436617175910.a n = A093880 n

end A093880

/-!
# A093881: Let n! = 2^a*3^b*5^c*7^d.... in canonical form, then a(n) = concatenation a,b,c,d,...

The programs for A093881, there is no canonical definition to state claims against.
-/

/-! ## A093881.P15780365317855824742

`A004186(∑[A054841(n+1)])`
-/

namespace A093881.P15780365317855824742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A093881.P15780365317855824742

/-! ## A093881.P16156981422230129312

`A321474(∑[A054841(n+1)])`
-/

namespace A093881.P16156981422230129312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321474 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A093881.P16156981422230129312

/-! ## A093881.P15878357323903274458

`A333659(∑[A054841(n+1)])`
-/

namespace A093881.P15878357323903274458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333659 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A093881.P15878357323903274458

/-! ## A093881.P9838905626767056928

`A004086(∑[10*A054841(n+1)])`
-/

namespace A093881.P9838905626767056928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A054841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A093881.P9838905626767056928

/-!
# A093882: Sum of all the numbers formed by deleting one digit from n.

The programs for A093882, the canonical program `A093882.P7713468628412793097` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093882 has offset 0).

The definition of A093882 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093882.P7713468628412793097

`(A055642(n)-1)*(n-9*floor(n/10))%A216556((n-∑{digits}[n, #])²)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A093882

/-- `(A055642(n)-1)*(n-9*floor(n/10))%A216556((n-∑{digits}[n, #])²)` -/
def P7713468628412793097.Spec : Prop :=
  ∀ n, P7713468628412793097.a n = A093882 n

theorem P7713468628412793097.correct : P7713468628412793097.Spec := by
  intro n
  simp only [A093882]

end A093882

/-! ## A093882.P11617338443969819076

`A053392(n)*A063050(A059995(n)²)`
-/

namespace A093882.P11617338443969819076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053392 n * A063050 (A059995 n ^ 2).toNat

end

end A093882.P11617338443969819076

namespace A093882

/-- `A053392(n)*A063050(A059995(n)²)` -/
def P11617338443969819076.Spec : Prop :=
  ∀ n, P11617338443969819076.a n = A093882 n

end A093882

/-! ## A093882.P13135939823166362584

`A043562(A196222(n))*A053392(n)`
-/

namespace A093882.P13135939823166362584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A196222 n).toNat * A053392 n

end

end A093882.P13135939823166362584

namespace A093882

/-- `A043562(A196222(n))*A053392(n)` -/
def P13135939823166362584.Spec : Prop :=
  ∀ n, P13135939823166362584.a n = A093882 n

end A093882

/-! ## A093882.P1171904797105100978

`A053392(A118759(n))%23`
-/

namespace A093882.P1171904797105100978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053392 (A118759 n).toNat) 23

end

end A093882.P1171904797105100978

namespace A093882

/-- `A053392(A118759(n))%23` -/
def P1171904797105100978.Spec : Prop :=
  ∀ n, P1171904797105100978.a n = A093882 n

end A093882

/-! ## A093882.P5101725166050590321

`A138953(A118759(n))%A348553(n)`
-/

namespace A093882.P5101725166050590321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138953 (A118759 n).toNat) (A348553 n)

end

end A093882.P5101725166050590321

namespace A093882

/-- `A138953(A118759(n))%A348553(n)` -/
def P5101725166050590321.Spec : Prop :=
  ∀ n, P5101725166050590321.a n = A093882 n

end A093882

/-!
# A093883: Product of all possible sums of two distinct numbers taken from among first n natural numbers.

The programs for A093883, there is no canonical definition to state claims against.
-/

/-! ## A093883.P5454074320058298516

`∏[Δ[n²]!/(n+1)!]`
-/

namespace A093883.P5454074320058298516
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat : ℚ) / (Nat.factorial (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A093883.P5454074320058298516

/-! ## A093883.P7536126017521788316

`∏[n!*C(2*n+1, n)]`
-/

namespace A093883.P7536126017521788316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.choose (2 * n + 1) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A093883.P7536126017521788316

/-! ## A093883.P18363939668359080998

`∏[∏[4-2/(n+1)]/2*n!]`
-/

namespace A093883.P18363939668359080998
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f2 j) / 2 * (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A093883.P18363939668359080998

/-! ## A093883.P8095797030998622488

`∏[A123225(∑[n])]`
-/

namespace A093883.P8095797030998622488
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123225 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A093883.P8095797030998622488

/-! ## A093883.P8999656871662758699

`∏[record[A123225(n)]]`
-/

namespace A093883.P8999656871662758699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123225 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A093883.P8999656871662758699

/-!
# A093885: a(n) = floor( {product of all possible sums of (n-1) numbers chosen from among first n numbers} / {sum of all possible products of (n-1) numbers chosen from among first n numbers} ).

The programs for A093885, there is no canonical definition to state claims against.
-/

/-! ## A093885.P7738533409559482028

`C(n, 2)*A334757(a(n-1)+1)` with `a(0)=0`
-/

namespace A093885.P7738533409559482028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.choose n 2 : ℤ) * A334757 (a (n - 1) + 1).toNat

end

end A093885.P7738533409559482028

/-!
# A093886: Least k such that k! is divisible by (1!*2!*3!*...*n!).

The programs for A093886, there is no canonical definition to state claims against.
-/

/-! ## A093886.P9495929830515744046

`A007843(∑[∑[val(n+1, 2)]])`
-/

namespace A093886.P9495929830515744046
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007843 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093886.P9495929830515744046

/-! ## A093886.P3637450841014173246

`A007843(∑[∑[floor(log2(xor(n, n+1)))]])`
-/

namespace A093886.P3637450841014173246
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (Nat.xor n (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007843 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093886.P3637450841014173246

/-! ## A093886.P5448642766127122189

`A007843(∑[∑[log2(or(n, n+1)-n)]])`
-/

namespace A093886.P5448642766127122189
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007843 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A093886.P5448642766127122189

/-! ## A093886.P7605859882019499956

`A007843(∑[∑[log2(xor(n, or(n, n+1)))]])`
-/

namespace A093886.P7605859882019499956
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.xor n (Nat.lor n (n + 1)) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007843 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A093886.P7605859882019499956

/-! ## A093886.P18036736609082341140

`A007843(∑[∑[log2(and(n+1, -(n+1)))]])`
-/

namespace A093886.P18036736609082341140
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007843 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A093886.P18036736609082341140

/-! ## A093886.P10211112746136372224

`A007843(∑[∑[∑{e}[or(n, n+1)-n, #]]])`
-/

namespace A093886.P10211112746136372224
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (n + 1) : ℤ) - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007843 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093886.P10211112746136372224

/-! ## A093886.P8269588270227928759

`A007843(∑[∑[log2(xor(n, n+1)+1)-1]])`
-/

namespace A093886.P8269588270227928759
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.xor n (n + 1) + 1 : ℝ) - 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007843 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A093886.P8269588270227928759

/-! ## A093886.P18114252845004050323

`A007843(A174605(n+1))`
-/

namespace A093886.P18114252845004050323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007843 (A174605 (n + 1)).toNat

end

end A093886.P18114252845004050323

/-! ## A093886.P13543909214551241199

`A007843(∑[A011371(n+1)])`
-/

namespace A093886.P13543909214551241199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A093886.P13543909214551241199

/-! ## A093886.P16991497244634520630

`A007843(∑[∑[A001222(or(n, n+1)-n)]])`
-/

namespace A093886.P16991497244634520630
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.lor n (n + 1) - n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A093886.P16991497244634520630

/-!
# A093887: a(n) = (A093886(n))! / (1!*2!*3!*...*n!).

The programs for A093887, there is no canonical definition to state claims against.
-/

/-! ## A093887.P18143120589070506228

`A074199(A093886(n+1))`
-/

namespace A093887.P18143120589070506228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074199 (A093886 (n + 1)).toNat

end

end A093887.P18143120589070506228

/-!
# A093888: Largest palindromic divisor of n!.

The programs for A093888, there is no canonical definition to state claims against.
-/

/-! ## A093888.P9413599090687456808

`A093030(A000142(n))`
-/

namespace A093888.P9413599090687456808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093030 (A000142 n).toNat

end

end A093888.P9413599090687456808

/-! ## A093888.P14572482421631705616

`∏[n+1]/((n+1)*A093889(n))`
-/

namespace A093888.P14572482421631705616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / ((n + 1 : ℤ) * A093889 n : ℚ)

end

end A093888.P14572482421631705616

/-! ## A093888.P4801328498727512413

`A000142(n)/A093889(n)`
-/

namespace A093888.P4801328498727512413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A093889 n : ℚ)

end

end A093888.P4801328498727512413

/-! ## A093888.P14770192817889548505

`A214078(n²)/A093889(n)`
-/

namespace A093888.P14770192817889548505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214078 (n ^ 2) : ℚ) / (A093889 n : ℚ)

end

end A093888.P14770192817889548505

/-!
# A093889: a(n) = n!/A093888(n).

The programs for A093889, there is no canonical definition to state claims against.
-/

/-! ## A093889.P17254519394704478674

`n!/A093888(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A093889.P17254519394704478674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A093888 n : ℚ)

end

end A093889.P17254519394704478674

/-! ## A093889.P1210477587693929099

`A000142(n)/A093888(n)`
-/

namespace A093889.P1210477587693929099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A093888 n : ℚ)

end

end A093889.P1210477587693929099

/-! ## A093889.P10562803052551921896

`A214078(n²)/A093888(n)`
-/

namespace A093889.P10562803052551921896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214078 (n ^ 2) : ℚ) / (A093888 n : ℚ)

end

end A093889.P10562803052551921896

/-! ## A093889.P9071482833818521643

`A214080(n²)/A093888(n)`
-/

namespace A093889.P9071482833818521643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214080 (n ^ 2) : ℚ) / (A093888 n : ℚ)

end

end A093889.P9071482833818521643

/-!
# A093890: Number of primes arising as the sum of one or more divisors of n.

The programs for A093890, there is no canonical definition to state claims against.
-/

/-! ## A093890.P14739759443728795421

`A305258(A093353(n))+A106490(n+1)`
-/

namespace A093890.P14739759443728795421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305258 (A093353 n).toNat + A106490 (n + 1)

end

end A093890.P14739759443728795421

/-! ## A093890.P18274413251075366988

`A069735(n+1)-A033999(A285494(n+1))`
-/

namespace A093890.P18274413251075366988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069735 (n + 1) - A033999 (A285494 (n + 1)).toNat

end

end A093890.P18274413251075366988

/-! ## A093890.P1840249882353894986

`A340831(n+1)+A335885(A065732(n+4))`
-/

namespace A093890.P1840249882353894986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340831 (n + 1) + A335885 (A065732 (n + 4)).toNat

end

end A093890.P1840249882353894986

/-! ## A093890.P12653926284143591571

`gcd(A059739(A050932(n)), A086295(n+1))`
-/

namespace A093890.P12653926284143591571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059739 (A050932 n).toNat) (A086295 (n + 1))

end

end A093890.P12653926284143591571

/-! ## A093890.P16716917179610859333

`gcd(A005087(A172282(n)), A262991(n+1))`
-/

namespace A093890.P16716917179610859333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005087 (A172282 n).toNat) (A262991 (n + 1))

end

end A093890.P16716917179610859333

/-!
# A093891: Numbers k such that every prime up to sigma(k) is a sum of divisors of k.

The programs for A093891, there is no canonical definition to state claims against.
-/

/-! ## A093891.P2057434272705656181

`lt[A002113(n+1), A074206((n+1)²)]+1`
-/

namespace A093891.P2057434272705656181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A093891.P2057434272705656181

/-! ## A093891.P5255762198909067392

`lt[A033879(n+1), A111497(n+1)]+1`
-/

namespace A093891.P5255762198909067392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111497 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A093891.P5255762198909067392

/-! ## A093891.P17533479791789616028

`lt[log2(A184419(n+1)), A000005(n+1)]+1`
-/

namespace A093891.P17533479791789616028
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A184419 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A093891.P17533479791789616028

/-! ## A093891.P6862956870970598844

`record[A000188((n+1)²)%A000040(A046523(n+1))]`
-/

namespace A093891.P6862956870970598844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000188 ((n + 1) ^ 2)) (A000040 (A046523 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093891.P6862956870970598844

/-! ## A093891.P15070396396292926446

`lt[A033879(n+1), A061496((n+1)²+1)]+1`
-/

namespace A093891.P15070396396292926446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061496 ((n + 1) ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A093891.P15070396396292926446

/-!
# A093893: Numbers n such that every sum of two or more divisors is composite.

The programs for A093893, there is no canonical definition to state claims against.
-/

/-! ## A093893.P263795581281476915

`∪[A006005(n+1), A093894(n+1)]`
-/

namespace A093893.P263795581281476915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A093893.P263795581281476915

/-! ## A093893.P3676975291321517536

`∪[A093894(n+1), A175524(n+1)]`
-/

namespace A093893.P3676975291321517536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A093893.P3676975291321517536

/-! ## A093893.P12763012248964053047

`∪[A093894(n+1), A176997(n+1)]`
-/

namespace A093893.P12763012248964053047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A093893.P12763012248964053047

/-! ## A093893.P10157468275059099266

`eq[A001221(n+1), A093890(n+1)]+1`
-/

namespace A093893.P10157468275059099266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093890 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A093893.P10157468275059099266

/-! ## A093893.P1595659083029129341

`eq[A005087(n+1), A093890(n+1)]+1`
-/

namespace A093893.P1595659083029129341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093890 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A093893.P1595659083029129341

/-! ## A093893.P1882830091309604668

`eq[A001221(n+1), A161510(n+1)]+1`
-/

namespace A093893.P1882830091309604668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161510 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A093893.P1882830091309604668

/-! ## A093893.P2546585380861562195

`eq[A005087(n+1), A161510(n+1)]+1`
-/

namespace A093893.P2546585380861562195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161510 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A093893.P2546585380861562195

/-! ## A093893.P311938424578852148

`A004442(eq[A005087(n+1), A093890(n+1)])`
-/

namespace A093893.P311938424578852148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A093893.P311938424578852148

/-! ## A093893.P818728167462662432

`A004442(eq[A005087(n+1), A161510(n+1)])`
-/

namespace A093893.P818728167462662432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A093893.P818728167462662432

/-!
# A093894: Composite members of A093893.

The programs for A093894, there is no canonical definition to state claims against.
-/

/-! ## A093894.P12361975703656078839

`filter[A093893(n+1), A064911(#)]`
-/

namespace A093894.P12361975703656078839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A093894.P12361975703656078839

/-! ## A093894.P17189150817992161219

`filter[A093893(n+1), A066247(#)]`
-/

namespace A093894.P17189150817992161219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A093894.P17189150817992161219

/-! ## A093894.P11036738610119596484

`filter[A093893(n+1), A174898(#)]`
-/

namespace A093894.P11036738610119596484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A093894.P11036738610119596484

/-! ## A093894.P7485163573074907705

`filter[A093893(n+1), A202238(#)]`
-/

namespace A093894.P7485163573074907705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A093894.P7485163573074907705

/-! ## A093894.P5469900153369143398

`filter[A093893(n+1), A323162(#)]`
-/

namespace A093894.P5469900153369143398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A093894.P5469900153369143398

/-!
# A093898: Triangle read by rows: T(n,r) = n^r + r^n (1 <= r <= n).

The programs for A093898, the canonical program `A093898.P11465700762372776882` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093898 has offset 1).

The definition of A093898 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)+1)^(col(n)+1)+(col(n)+1)^(row(n)+1)` (program `A093898.P11465700762372776882`, by `A093898.P11465700762372776882.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A093898.P11465700762372776882

`(row(n)+1)^(col(n)+1)+(col(n)+1)^(row(n)+1)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A093898

/-- `(row(n)+1)^(col(n)+1)+(col(n)+1)^(row(n)+1)` -/
def P11465700762372776882.Spec : Prop :=
  ∀ n, (P11465700762372776882.a n : ℤ) = A093898 (n + 1)

theorem P11465700762372776882.correct : P11465700762372776882.Spec := by
  intro n
  simp only [A093898, Nat.add_sub_cancel]

end A093898

/-! ## A093898.P11193836453482381968

`(row(n)+1)^(col(n)+1)+(col(n)+1)^(row(n)+1)*1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A093898.P11193836453482381968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n + 1) ^ (SequenceMachineLib.triCol n + 1) + (SequenceMachineLib.triCol n + 1) ^ (SequenceMachineLib.triRow n + 1) * 1

end

end A093898.P11193836453482381968

namespace A093898

/-- `(row(n)+1)^(col(n)+1)+(col(n)+1)^(row(n)+1)*1` -/
def P11193836453482381968.Spec : Prop :=
  ∀ n, (P11193836453482381968.a n : ℤ) = A093898 (n + 1)

theorem P11193836453482381968.correct : P11193836453482381968.Spec := by
  intro n
  simp only [A093898, Nat.add_sub_cancel, A093898.P11193836453482381968.a, A093898.P11465700762372776882.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A093898

/-! ## A093898.P7270579857154942270

`(col(n)+1)^(row(n)+1)+(row(n)+1)^(col(n)+1)`
-/

namespace A093898.P7270579857154942270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 1) ^ (SequenceMachineLib.triRow n + 1) + (SequenceMachineLib.triRow n + 1) ^ (SequenceMachineLib.triCol n + 1)

end

end A093898.P7270579857154942270

namespace A093898

/-- `(col(n)+1)^(row(n)+1)+(row(n)+1)^(col(n)+1)` -/
def P7270579857154942270.Spec : Prop :=
  ∀ n, (P7270579857154942270.a n : ℤ) = A093898 (n + 1)

theorem P7270579857154942270.correct : P7270579857154942270.Spec := by
  intro n
  simp only [A093898, Nat.add_sub_cancel, A093898.P7270579857154942270.a, A093898.P11465700762372776882.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A093898

/-! ## A093898.P15194400458835193332

`A089072(n+1)+A075363(n+1)`
-/

namespace A093898.P15194400458835193332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089072 (n + 1) + A075363 (n + 1)

end

end A093898.P15194400458835193332

namespace A093898

/-- `A089072(n+1)+A075363(n+1)` -/
def P15194400458835193332.Spec : Prop :=
  ∀ n, P15194400458835193332.a n = A093898 (n + 1)

end A093898

/-! ## A093898.P10908832681853547683

`A076014(comp[∑[n]])+A075363(n+1)`
-/

namespace A093898.P10908832681853547683
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076014 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A075363 (n + 1)

end

end A093898.P10908832681853547683

namespace A093898

/-- `A076014(comp[∑[n]])+A075363(n+1)` -/
def P10908832681853547683.Spec : Prop :=
  ∀ n, P10908832681853547683.a n = A093898 (n + 1)

end A093898

/-! ## A093898.P14654760706417721326

`A089072(n+1)+A079901(comp[∑[n]])`
-/

namespace A093898.P14654760706417721326
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089072 (n + 1) + A079901 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A093898.P14654760706417721326

namespace A093898

/-- `A089072(n+1)+A079901(comp[∑[n]])` -/
def P14654760706417721326.Spec : Prop :=
  ∀ n, P14654760706417721326.a n = A093898 (n + 1)

end A093898

/-! ## A093898.P3718728266962485998

`A075363(n+1)+A002260(n+1)^A123578(n)`
-/

namespace A093898.P3718728266962485998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075363 (n + 1) : ℚ) + (A002260 (n + 1) : ℚ) ^ (A123578 n : ℤ)

end

end A093898.P3718728266962485998

namespace A093898

/-- `A075363(n+1)+A002260(n+1)^A123578(n)` -/
def P3718728266962485998.Spec : Prop :=
  ∀ n, P3718728266962485998.a n = (A093898 (n + 1) : ℚ)

end A093898

/-! ## A093898.P4812866203079310056

`A075363(n+1)+A002260(n+1)^A130855(n)`
-/

namespace A093898.P4812866203079310056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075363 (n + 1) : ℚ) + (A002260 (n + 1) : ℚ) ^ (A130855 n : ℤ)

end

end A093898.P4812866203079310056

namespace A093898

/-- `A075363(n+1)+A002260(n+1)^A130855(n)` -/
def P4812866203079310056.Spec : Prop :=
  ∀ n, P4812866203079310056.a n = (A093898 (n + 1) : ℚ)

end A093898

/-! ## A093898.P11921533830273010340

`A095887(A038722(n+1))+A075363(n+1)`
-/

namespace A093898.P11921533830273010340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095887 (A038722 (n + 1)).toNat + A075363 (n + 1)

end

end A093898.P11921533830273010340

namespace A093898

/-- `A095887(A038722(n+1))+A075363(n+1)` -/
def P11921533830273010340.Spec : Prop :=
  ∀ n, P11921533830273010340.a n = A093898 (n + 1)

end A093898

/-! ## A093898.P8896926622222827488

`A156353(A245300(n)+1)`
-/

namespace A093898.P8896926622222827488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156353 (A245300 n + 1).toNat

end

end A093898.P8896926622222827488

namespace A093898

/-- `A156353(A245300(n)+1)` -/
def P8896926622222827488.Spec : Prop :=
  ∀ n, P8896926622222827488.a n = A093898 (n + 1)

end A093898

