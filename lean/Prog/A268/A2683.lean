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
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C049
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A268302: G.f.: Sum_{n>=1} x^(n*(n-1)/2) * (G(x)^n + 1/G(x)^(n-1)), where G(x) is the g.f. of A268300.

The programs for A268302, there is no canonical definition to state claims against.
-/

/-! ## A268302.P6921099446414996046

`A231876(A001316(n)+floor(17^(n/2)))`
-/

namespace A268302.P6921099446414996046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231876 (A001316 n + ⌊(17 : ℝ) ^ ((n : ℚ) / 2 : ℝ)⌋).toNat

end

end A268302.P6921099446414996046

/-!
# A268306: The number of even permutations p of 1,2,...,n such that -1<=p(i)-i<=2 for i=1,2,...,n.

The programs for A268306, the canonical program `A268306.P10270823922185399726` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268306 has offset 1).

The definition of A268306 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268306.P5121293471064155705

`ogf((1-x+x^2-x^3-x^5)/(1-2x+x^2-2x^3+x^4+x^6))`
-/

namespace A268306.P5121293471064155705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1, -1, 0, -1] [1, -2, 1, -2, 1, 0, 1] n

end

end A268306.P5121293471064155705

namespace A268306

/-- `ogf((1-x+x^2-x^3-x^5)/(1-2x+x^2-2x^3+x^4+x^6))` -/
def P5121293471064155705.Spec : Prop :=
  ∀ n, P5121293471064155705.a n = A268306 (n + 1)

end A268306

/-! ## A268306.P10270823922185399726

`A133872(n+1)/2+A000073(n+3)/2`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A268306

/-- `A133872(n+1)/2+A000073(n+3)/2` -/
def P10270823922185399726.Spec : Prop :=
  ∀ n, P10270823922185399726.a n = (A268306 (n + 1) : ℚ)

end A268306

/-! ## A268306.P10121998623319840244

`A008937(n)+1-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A268306.P10121998623319840244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A008937 n + 1 - a (n - 2)

end

end A268306.P10121998623319840244

namespace A268306

/-- `A008937(n)+1-a(n-2)` -/
def P10121998623319840244.Spec : Prop :=
  ∀ n, P10121998623319840244.a n = A268306 (n + 1)

end A268306

/-! ## A268306.P9754901763813165943

`A108351(n+1)-A110655(n)`
-/

namespace A268306.P9754901763813165943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108351 (n + 1) - A110655 n

end

end A268306.P9754901763813165943

namespace A268306

/-- `A108351(n+1)-A110655(n)` -/
def P9754901763813165943.Spec : Prop :=
  ∀ n, P9754901763813165943.a n = A268306 (n + 1)

end A268306

/-! ## A268306.P7829170640980187644

`A110656(2*(n+1))+A283834(n+1)-A110656(2*n)`
-/

namespace A268306.P7829170640980187644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (2 * (n + 1)) + (A283834 (n + 1) - A110656 (2 * n))

end

end A268306.P7829170640980187644

namespace A268306

/-- `A110656(2*(n+1))+A283834(n+1)-A110656(2*n)` -/
def P7829170640980187644.Spec : Prop :=
  ∀ n, P7829170640980187644.a n = A268306 (n + 1)

end A268306

/-! ## A268306.P1214299869094177099

`round(A000073(n+3)/2)`
-/

namespace A268306.P1214299869094177099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000073 (n + 3) : ℚ) / 2)

end

end A268306.P1214299869094177099

namespace A268306

/-- `round(A000073(n+3)/2)` -/
def P1214299869094177099.Spec : Prop :=
  ∀ n, P1214299869094177099.a n = A268306 (n + 1)

end A268306

/-! ## A268306.P8726221753844989040

`floor((A301657(n+1)-1)/2)`
-/

namespace A268306.P8726221753844989040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A301657 (n + 1) - 1 : ℚ) / 2⌋

end

end A268306.P8726221753844989040

namespace A268306

/-- `floor((A301657(n+1)-1)/2)` -/
def P8726221753844989040.Spec : Prop :=
  ∀ n, P8726221753844989040.a n = A268306 (n + 1)

end A268306

/-! ## A268306.P6403713128754541457

`A288465(n)/2-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A268306.P6403713128754541457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (A288465 n : ℚ) / 2 - a (n - 2)

end

end A268306.P6403713128754541457

namespace A268306

/-- `A288465(n)/2-a(n-2)` -/
def P6403713128754541457.Spec : Prop :=
  ∀ n, P6403713128754541457.a n = (A268306 (n + 1) : ℚ)

end A268306

/-! ## A268306.P3715052956135713372

`ceil(A135491(n+1)/4)`
-/

namespace A268306.P3715052956135713372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135491 (n + 1) : ℚ) / 4⌉

end

end A268306.P3715052956135713372

namespace A268306

/-- `ceil(A135491(n+1)/4)` -/
def P3715052956135713372.Spec : Prop :=
  ∀ n, P3715052956135713372.a n = A268306 (n + 1)

end A268306

/-! ## A268306.P17346344799159629834

`ceil(Δ[A008937(n+1)/2])`
-/

namespace A268306.P17346344799159629834
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008937 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A268306.P17346344799159629834

namespace A268306

/-- `ceil(Δ[A008937(n+1)/2])` -/
def P17346344799159629834.Spec : Prop :=
  ∀ n, P17346344799159629834.a n = A268306 (n + 1)

end A268306

/-! ## A268306.P8882648994086666896

`ceil(Δ[Δ[A062544(n)/2]])`
-/

namespace A268306.P8882648994086666896
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062544 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A268306.P8882648994086666896

namespace A268306

/-- `ceil(Δ[Δ[A062544(n)/2]])` -/
def P8882648994086666896.Spec : Prop :=
  ∀ n, P8882648994086666896.a n = A268306 (n + 1)

end A268306

/-! ## A268306.P1187857655272350599

`ceil(Δ[A116734(n+1)/4])`
-/

namespace A268306.P1187857655272350599
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116734 (n + 1) : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A268306.P1187857655272350599

namespace A268306

/-- `ceil(Δ[A116734(n+1)/4])` -/
def P1187857655272350599.Spec : Prop :=
  ∀ n, P1187857655272350599.a n = A268306 (n + 1)

end A268306

/-! ## A268306.P1339999354613880085

`round(Δ[A000213(n+3)/4])`
-/

namespace A268306.P1339999354613880085
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000213 (n + 3) : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A268306.P1339999354613880085

namespace A268306

/-- `round(Δ[A000213(n+3)/4])` -/
def P1339999354613880085.Spec : Prop :=
  ∀ n, P1339999354613880085.a n = A268306 (n + 1)

end A268306

/-! ## A268306.P15724316349762431728

`ceil(record[Δ[A308189(n+1)/2]])`
-/

namespace A268306.P15724316349762431728
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308189 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A268306.P15724316349762431728

namespace A268306

/-- `ceil(record[Δ[A308189(n+1)/2]])` -/
def P15724316349762431728.Spec : Prop :=
  ∀ n, P15724316349762431728.a n = A268306 (n + 1)

end A268306

/-! ## A268306.P630488805997100975

`round(Δ[A008937(n+1)]/A178815(n+2))`
-/

namespace A268306.P630488805997100975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / (A178815 (n + 2) : ℚ))

end

end A268306.P630488805997100975

namespace A268306

/-- `round(Δ[A008937(n+1)]/A178815(n+2))` -/
def P630488805997100975.Spec : Prop :=
  ∀ n, P630488805997100975.a n = A268306 (n + 1)

end A268306

/-!
# A268307: Integers n such that A005897(n) is the sum of two positive cubes.

The programs for A268307, there is no canonical definition to state claims against.
-/

/-! ## A268307.P6356667467609004178

`lt[0, A025455(A005897(n))]`
-/

namespace A268307.P6356667467609004178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 (A005897 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A268307.P6356667467609004178

/-! ## A268307.P14666135637344870876

`eq[1, A025468(A005919(n)-n²)]`
-/

namespace A268307.P14666135637344870876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025468 (A005919 n - (n ^ 2 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268307.P14666135637344870876

/-! ## A268307.P4475740314105771160

`eq[1, A025468(A005899(n)+2*n²)]`
-/

namespace A268307.P4475740314105771160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025468 (A005899 n + (2 * n ^ 2 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268307.P4475740314105771160

/-! ## A268307.P11934897167742961390

`eq[1, A025468(A005901(n)-(2*n)²)]`
-/

namespace A268307.P11934897167742961390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025468 (A005901 n - ((2 * n) ^ 2 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268307.P11934897167742961390

/-!
# A268309: Number of n X n symmetric matrices with nonnegative integer entries and without zero rows or columns such that the sum of all entries is equal to n^2.

The programs for A268309, there is no canonical definition to state claims against.
-/

/-! ## A268309.P8939367477413264459

`A138177(A101374(floor(acot(n)+n)))`
-/

namespace A268309.P8939367477413264459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138177 (A101374 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat).toNat

end

end A268309.P8939367477413264459

/-! ## A268309.P4631817199542402540

`A138177(or(char[2^n-1], A101374(n)))`
-/

namespace A268309.P4631817199542402540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138177 (Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A101374 n)).toNat

end

end A268309.P4631817199542402540

/-! ## A268309.P2162877563293370602

`A138177(C(n², 2)+gcd(n, A008458(n)))`
-/

namespace A268309.P2162877563293370602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138177 (Nat.choose (n ^ 2) 2 + Int.gcd (n : ℤ) (A008458 n))

end

end A268309.P2162877563293370602

/-! ## A268309.P93466577813858675

`A138177(A101374(A000007(n)+n))`
-/

namespace A268309.P93466577813858675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138177 (A101374 (A000007 n + (n : ℤ)).toNat).toNat

end

end A268309.P93466577813858675

/-! ## A268309.P3342256855537797696

`A138177(xor(A000007(n), A101374(n)))`
-/

namespace A268309.P3342256855537797696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138177 (Int.xor (A000007 n) (A101374 n)).toNat

end

end A268309.P3342256855537797696

/-!
# A268310: Largest k > 0 such that a base b with 1 < b < c exists such that b^(c-1) == 1 (mod c^k), where c is the n-th composite number, or 0 if no such k exists.

The programs for A268310, there is no canonical definition to state claims against.
-/

/-! ## A268310.P829779984025352720

`A006519(A028387(n))%A049559(A002808(n+1))`
-/

namespace A268310.P829779984025352720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006519 (A028387 n).toNat) (A049559 (A002808 (n + 1)).toNat)

end

end A268310.P829779984025352720

/-! ## A268310.P8487529576731832712

`A319684(A262366(n+1))%A063994(A073846(2*n+3))`
-/

namespace A268310.P8487529576731832712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319684 (A262366 (n + 1)).toNat) (A063994 (A073846 (2 * n + 3)).toNat)

end

end A268310.P8487529576731832712

/-! ## A268310.P7267917572985367424

`A166333(A141937(n+1))%A063994(A002808(n+1))`
-/

namespace A268310.P7267917572985367424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166333 (A141937 (n + 1)).toNat) (A063994 (A002808 (n + 1)).toNat)

end

end A268310.P7267917572985367424

/-! ## A268310.P17653692941801000040

`Δ[A178223(n+1)]%A063994(A073846(2*n+3))`
-/

namespace A268310.P17653692941801000040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A063994 (A073846 (2 * n + 3)).toNat)

end

end A268310.P17653692941801000040

/-! ## A268310.P13676888337289993958

`A055396(A000954(n))%A187730(A056653(n+1))!`
-/

namespace A268310.P13676888337289993958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055396 (A000954 n).toNat) (Nat.factorial (A187730 (A056653 (n + 1)).toNat).toNat : ℤ)

end

end A268310.P13676888337289993958

/-! ## A268310.P829678028879518427

`A276330(A178218(n+1))%A063994(A073846(2*n+3))`
-/

namespace A268310.P829678028879518427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276330 (A178218 (n + 1)).toNat) (A063994 (A073846 (2 * n + 3)).toNat)

end

end A268310.P829678028879518427

/-! ## A268310.P16069653757720819732

`A016777(4*A186696(n+1))%A187730(A056653(n+1))`
-/

namespace A268310.P16069653757720819732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016777 (4 * A186696 (n + 1)).toNat) (A187730 (A056653 (n + 1)).toNat)

end

end A268310.P16069653757720819732

/-! ## A268310.P2380119924026200998

`A001876(A285014(n+1))`
-/

namespace A268310.P2380119924026200998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (A285014 (n + 1)).toNat

end

end A268310.P2380119924026200998

/-! ## A268310.P14317557826121666846

`A001222(A137365(n+1))%A187730(A056653(n+1))!`
-/

namespace A268310.P14317557826121666846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A137365 (n + 1)).toNat) (Nat.factorial (A187730 (A056653 (n + 1)).toNat).toNat : ℤ)

end

end A268310.P14317557826121666846

/-!
# A268311: Number of free polyominoes that form a continuous path of edge joined cells spanning an n X n square in both dimensions.

The programs for A268311, there is no canonical definition to state claims against.
-/

/-! ## A268311.P12192589914253258010

`A268371(∑[n+1])`
-/

namespace A268311.P12192589914253258010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268371 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268311.P12192589914253258010

/-! ## A268311.P2161903519699916293

`record[A268371(∑[A057979(n)])]`
-/

namespace A268311.P2161903519699916293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268371 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268311.P2161903519699916293

/-! ## A268311.P7527671379529590722

`record[A268371(record[A108299(n)])]`
-/

namespace A268311.P7527671379529590722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108299 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268371 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268311.P7527671379529590722

/-!
# A268313: First term of a run of at least 10 consecutive integers which are not squarefree.

The programs for A268313, there is no canonical definition to state claims against.
-/

/-! ## A268313.P7543706995217011725

`A078143(eq[1, Δ[A078143(n+1)]]+1)`
-/

namespace A268313.P7543706995217011725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078143 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A268313.P7543706995217011725

/-! ## A268313.P10552383931894919756

`∩[A077647(n+1)-2, A077647(n+1)]`
-/

namespace A268313.P10552383931894919756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077647 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077647 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268313.P10552383931894919756

/-!
# A268314: First term of a run of at least 11 consecutive integers which are not squarefree.

The programs for A268314, there is no canonical definition to state claims against.
-/

/-! ## A268314.P17070652850356802303

`A268313(lt[Δ[A268313(n+1)], 3]+1)`
-/

namespace A268314.P17070652850356802303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268313 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268313 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1)

end

end A268314.P17070652850356802303

/-! ## A268314.P11929282740650088264

`∩[A268313(n+1), A268313(n+2)-1]`
-/

namespace A268314.P11929282740650088264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268313 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268314.P11929282740650088264

/-!
# A268315: Decimal expansion of 256/27.

The programs for A268315, the canonical program `A268315.P15190156868514388229` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268315 has offset 1).

The definition of A268315 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268315.P15190156868514388229

`a(n-3)` with `a(0)=9, a(1)=4, a(2)=8, a(3)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A268315

/-- `a(n-3)` -/
def P15190156868514388229.Spec : Prop :=
  ∀ n, (P15190156868514388229.a n : ℤ) = A268315 (n + 1)

theorem P15190156868514388229.correct : P15190156868514388229.Spec := by
  intro n
  simp only [A268315, Nat.add_sub_cancel]

end A268315

/-!
# A268316: a(n) is the number of Dyck paths of length 4n and height n.

The programs for A268316, there is no canonical definition to state claims against.
-/

/-! ## A268316.P9545043327010369654

`A080936(A004277(n²))`
-/

namespace A268316.P9545043327010369654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080936 (A004277 (n ^ 2)).toNat

end

end A268316.P9545043327010369654

/-! ## A268316.P17584968957298458562

`A080936(A004273(n²)+1)`
-/

namespace A268316.P17584968957298458562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080936 (A004273 (n ^ 2) + 1).toNat

end

end A268316.P17584968957298458562

/-! ## A268316.P17571860882365110840

`A080936(A028310(2*n²))`
-/

namespace A268316.P17571860882365110840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080936 (A028310 (2 * n ^ 2)).toNat

end

end A268316.P17571860882365110840

/-! ## A268316.P15802055056040379983

`A080936(n²+A028310(n²))`
-/

namespace A268316.P15802055056040379983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080936 ((n ^ 2 : ℤ) + A028310 (n ^ 2)).toNat

end

end A268316.P15802055056040379983

/-! ## A268316.P14919659246158472852

`A080936(2*A065033(2*n)²)`
-/

namespace A268316.P14919659246158472852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080936 (2 * A065033 (2 * n) ^ 2).toNat

end

end A268316.P14919659246158472852

/-! ## A268316.P13078086201735690742

`A080936(record[2*A000463(n+1)])`
-/

namespace A268316.P13078086201735690742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080936 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A268316.P13078086201735690742

/-! ## A268316.P6443213829494181588

`A080936(A179865(2*n+1)-n)`
-/

namespace A268316.P6443213829494181588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080936 (A179865 (2 * n + 1) - (n : ℤ)).toNat

end

end A268316.P6443213829494181588

/-! ## A268316.P14419618498445162687

`A080936(record[A000463(n+1)]+n²)`
-/

namespace A268316.P14419618498445162687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080936 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n ^ 2 : ℤ)).toNat

end

end A268316.P14419618498445162687

/-! ## A268316.P9393862534967049618

`A080936(A004277(n)*A028310(n))`
-/

namespace A268316.P9393862534967049618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080936 (A004277 n * A028310 n).toNat

end

end A268316.P9393862534967049618

/-! ## A268316.P2091988609995032035

`A080936(A005843(A065033(2*n)²))`
-/

namespace A268316.P2091988609995032035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080936 (A005843 (A065033 (2 * n) ^ 2).toNat).toNat

end

end A268316.P2091988609995032035

/-!
# A268317: Irregular triangle read by rows: T(n,k) gives the columns sum in the table Fib(n+1) X Fib(n), where k = 1..Fib(n), and 1's are assigned to cells on the longest diagonal path.

The programs for A268317, the canonical program `A268317.P13150400514428310603` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268317 has offset 0).

The definition of A268317 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268317.P13150400514428310603

`a(A268318(n-1))+1` with `a(0)=0`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A268317

/-- `a(A268318(n-1))+1` -/
def P13150400514428310603.Spec : Prop :=
  ∀ n, (P13150400514428310603.a n : ℤ) = A268317 n

theorem P13150400514428310603.correct : P13150400514428310603.Spec := by
  intro n
  simp only [A268317]

end A268317

/-! ## A268317.P7785960931219267155

`A000029(a(A268318(n-1)))` with `a(0)=0`
-/

namespace A268317.P7785960931219267155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000029 (a (A268318 (n - 1)).toNat).toNat

end

end A268317.P7785960931219267155

namespace A268317

/-- `A000029(a(A268318(n-1)))` -/
def P7785960931219267155.Spec : Prop :=
  ∀ n, P7785960931219267155.a n = A268317 n

end A268317

/-! ## A268317.P12044716503421900301

`A000031(a(A268318(n-1)))` with `a(0)=0`
-/

namespace A268317.P12044716503421900301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000031 (a (A268318 (n - 1)).toNat).toNat

end

end A268317.P12044716503421900301

namespace A268317

/-- `A000031(a(A268318(n-1)))` -/
def P12044716503421900301.Spec : Prop :=
  ∀ n, P12044716503421900301.a n = A268317 n

end A268317

/-! ## A268317.P7356649215037817583

`A000047(a(A268318(n-1)))` with `a(0)=0`
-/

namespace A268317.P7356649215037817583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000047 (a (A268318 (n - 1)).toNat).toNat

end

end A268317.P7356649215037817583

namespace A268317

/-- `A000047(a(A268318(n-1)))` -/
def P7356649215037817583.Spec : Prop :=
  ∀ n, P7356649215037817583.a n = A268317 n

end A268317

/-! ## A268317.P10603637080290715974

`A000267(a(A268318(n-1)))` with `a(0)=0`
-/

namespace A268317.P10603637080290715974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000267 (a (A268318 (n - 1)).toNat).toNat

end

end A268317.P10603637080290715974

namespace A268317

/-- `A000267(a(A268318(n-1)))` -/
def P10603637080290715974.Spec : Prop :=
  ∀ n, P10603637080290715974.a n = A268317 n

end A268317

/-! ## A268317.P5576176073787847687

`A003410(a(A268318(n-1)))` with `a(0)=0`
-/

namespace A268317.P5576176073787847687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A003410 (a (A268318 (n - 1)).toNat).toNat

end

end A268317.P5576176073787847687

namespace A268317

/-- `A003410(a(A268318(n-1)))` -/
def P5576176073787847687.Spec : Prop :=
  ∀ n, P5576176073787847687.a n = A268317 n

end A268317

/-! ## A268317.P2867093593692656949

`A007097(a(A268318(n-1)))` with `a(0)=0`
-/

namespace A268317.P2867093593692656949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A007097 (a (A268318 (n - 1)).toNat).toNat

end

end A268317.P2867093593692656949

namespace A268317

/-- `A007097(a(A268318(n-1)))` -/
def P2867093593692656949.Spec : Prop :=
  ∀ n, P2867093593692656949.a n = A268317 n

end A268317

/-! ## A268317.P10313007747589517540

`A013620(a(A268318(n-1)))` with `a(0)=0`
-/

namespace A268317.P10313007747589517540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A013620 (a (A268318 (n - 1)).toNat).toNat

end

end A268317.P10313007747589517540

namespace A268317

/-- `A013620(a(A268318(n-1)))` -/
def P10313007747589517540.Spec : Prop :=
  ∀ n, P10313007747589517540.a n = A268317 n

end A268317

/-! ## A268317.P696224786286743268

`A020986(a(A268318(n-1)))` with `a(0)=0`
-/

namespace A268317.P696224786286743268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A020986 (a (A268318 (n - 1)).toNat).toNat

end

end A268317.P696224786286743268

namespace A268317

/-- `A020986(a(A268318(n-1)))` -/
def P696224786286743268.Spec : Prop :=
  ∀ n, P696224786286743268.a n = A268317 n

end A268317

/-! ## A268317.P12649428601843647153

`A025488(a(A268318(n-1)))` with `a(0)=0`
-/

namespace A268317.P12649428601843647153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A025488 (a (A268318 (n - 1)).toNat).toNat

end

end A268317.P12649428601843647153

namespace A268317

/-- `A025488(a(A268318(n-1)))` -/
def P12649428601843647153.Spec : Prop :=
  ∀ n, P12649428601843647153.a n = A268317 n

end A268317

/-! ## A268317.P18402851629612576128

`A025501(a(A268318(n-1)))` with `a(0)=0`
-/

namespace A268317.P18402851629612576128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A025501 (a (A268318 (n - 1)).toNat).toNat

end

end A268317.P18402851629612576128

namespace A268317

/-- `A025501(a(A268318(n-1)))` -/
def P18402851629612576128.Spec : Prop :=
  ∀ n, P18402851629612576128.a n = A268317 n

end A268317

/-! ## A268317.P16283696770639254769

`A025502(a(A268318(n-1)))` with `a(0)=0`
-/

namespace A268317.P16283696770639254769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A025502 (a (A268318 (n - 1)).toNat).toNat

end

end A268317.P16283696770639254769

namespace A268317

/-- `A025502(a(A268318(n-1)))` -/
def P16283696770639254769.Spec : Prop :=
  ∀ n, P16283696770639254769.a n = A268317 n

end A268317

/-! ## A268317.P16660474963484983915

`A036561(a(A268318(n-1)))` with `a(0)=0`
-/

namespace A268317.P16660474963484983915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A036561 (a (A268318 (n - 1)).toNat).toNat

end

end A268317.P16660474963484983915

namespace A268317

/-- `A036561(a(A268318(n-1)))` -/
def P16660474963484983915.Spec : Prop :=
  ∀ n, P16660474963484983915.a n = A268317 n

end A268317

/-! ## A268317.P5091420998015464217

`A041029(a(A268318(n-1)))` with `a(0)=0`
-/

namespace A268317.P5091420998015464217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A041029 (a (A268318 (n - 1)).toNat).toNat

end

end A268317.P5091420998015464217

namespace A268317

/-- `A041029(a(A268318(n-1)))` -/
def P5091420998015464217.Spec : Prop :=
  ∀ n, P5091420998015464217.a n = A268317 n

end A268317

/-! ## A268317.P12791156781807682178

`A041047(a(A268318(n-1)))` with `a(0)=0`
-/

namespace A268317.P12791156781807682178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A041047 (a (A268318 (n - 1)).toNat).toNat

end

end A268317.P12791156781807682178

namespace A268317

/-- `A041047(a(A268318(n-1)))` -/
def P12791156781807682178.Spec : Prop :=
  ∀ n, P12791156781807682178.a n = A268317 n

end A268317

/-! ## A268317.P12264604327090813939

`A058223(a(A268318(n-1)))` with `a(0)=0`
-/

namespace A268317.P12264604327090813939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A058223 (a (A268318 (n - 1)).toNat).toNat

end

end A268317.P12264604327090813939

namespace A268317

/-- `A058223(a(A268318(n-1)))` -/
def P12264604327090813939.Spec : Prop :=
  ∀ n, P12264604327090813939.a n = A268317 n

end A268317

/-! ## A268317.P13207611729272383650

`A000040(a(A268318(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A268317.P13207611729272383650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000040 (a (A268318 (n - 1)).toNat).toNat

end

end A268317.P13207611729272383650

namespace A268317

/-- `A000040(a(A268318(n-1)))` -/
def P13207611729272383650.Spec : Prop :=
  ∀ n, P13207611729272383650.a n = A268317 n

end A268317

/-! ## A268317.P18022122156667761961

`A014963(a(A268318(n-1))-or(n, -1))` with `a(0)=0`
-/

namespace A268317.P18022122156667761961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A014963 (a (A268318 (n - 1)).toNat - Int.lor (n : ℤ) (-1)).toNat

end

end A268317.P18022122156667761961

namespace A268317

/-- `A014963(a(A268318(n-1))-or(n, -1))` -/
def P18022122156667761961.Spec : Prop :=
  ∀ n, P18022122156667761961.a n = A268317 n

end A268317

/-! ## A268317.P14488180232465432494

`A020639(a(A268318(n-1))-or(n, -1))` with `a(0)=0`
-/

namespace A268317.P14488180232465432494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A020639 (a (A268318 (n - 1)).toNat - Int.lor (n : ℤ) (-1)).toNat

end

end A268317.P14488180232465432494

namespace A268317

/-- `A020639(a(A268318(n-1))-or(n, -1))` -/
def P14488180232465432494.Spec : Prop :=
  ∀ n, P14488180232465432494.a n = A268317 n

end A268317

/-!
# A268318: Irregular triangle read by rows: T(n,k) gives the row sums in the table Fib(n+1) X Fib(n), where k = 1..Fib(n+1), and 1's are assigned to cells on the longest diagonal path.

The programs for A268318, the canonical program `A268318.P17043639645401286693` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268318 has offset 0).

The definition of A268318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268318.P11527875855299955407

`A005379(n+1)-∑[log2(Δ[ceil(ϕ/acot(n))])]`
-/

namespace A268318.P11527875855299955407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio / SequenceMachineLib.acot (n : ℝ)⌉

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f2 (n + 1) - f2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A005379 (n + 1) : ℝ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268318.P11527875855299955407

namespace A268318

/-- `A005379(n+1)-∑[log2(Δ[ceil(ϕ/acot(n))])]` -/
def P11527875855299955407.Spec : Prop :=
  ∀ n, P11527875855299955407.a n = (A268318 n : ℝ)

end A268318

/-! ## A268318.P6873032242347135292

`A095792(n)+Δ[floor((n/(n+1)+n)/ϕ)]`
-/

namespace A268318.P6873032242347135292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / (n + 1 : ℚ) + (n : ℚ) : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095792 n + (f1 (n + 1) - f1 n)

end

end A268318.P6873032242347135292

namespace A268318

/-- `A095792(n)+Δ[floor((n/(n+1)+n)/ϕ)]` -/
def P6873032242347135292.Spec : Prop :=
  ∀ n, P6873032242347135292.a n = A268318 n

end A268318

/-! ## A268318.P15375715021953633800

`Δ[floor(ϕ*(n+1))-1-A130233(floor((n+1)/ϕ))]`
-/

namespace A268318.P15375715021953633800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ - 1 - A130233 ⌊(n + 1 : ℝ) / Real.goldenRatio⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268318.P15375715021953633800

namespace A268318

/-- `Δ[floor(ϕ*(n+1))-1-A130233(floor((n+1)/ϕ))]` -/
def P15375715021953633800.Spec : Prop :=
  ∀ n, P15375715021953633800.a n = A268318 n

end A268318

/-! ## A268318.P17043639645401286693

`ceil(A005379(n+1)/A005378(n))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A268318

/-- `ceil(A005379(n+1)/A005378(n))` -/
def P17043639645401286693.Spec : Prop :=
  ∀ n, P17043639645401286693.a n = A268318 n

theorem P17043639645401286693.correct : P17043639645401286693.Spec := by
  intro n
  simp only [A268318]

end A268318

/-! ## A268318.P9854355729993917403

`A020639(A239002(n)!)%(n+1)`
-/

namespace A268318.P9854355729993917403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (Nat.factorial (A239002 n).toNat)) (n + 1 : ℤ)

end

end A268318.P9854355729993917403

namespace A268318

/-- `A020639(A239002(n)!)%(n+1)` -/
def P9854355729993917403.Spec : Prop :=
  ∀ n, P9854355729993917403.a n = A268318 n

end A268318

/-! ## A268318.P5929562310021729559

`Δ[A005379(n)]+1-A192687(n)`
-/

namespace A268318.P5929562310021729559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (1 - A192687 n)

end

end A268318.P5929562310021729559

namespace A268318

/-- `Δ[A005379(n)]+1-A192687(n)` -/
def P5929562310021729559.Spec : Prop :=
  ∀ n, P5929562310021729559.a n = A268318 n

end A268318

/-! ## A268318.P1499260071633197223

`A000010(ceil(sqrt(A239002(n)))+1)%(n+1)`
-/

namespace A268318.P1499260071633197223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (⌈Real.sqrt (A239002 n : ℝ)⌉ + 1).toNat) (n + 1 : ℤ)

end

end A268318.P1499260071633197223

namespace A268318

/-- `A000010(ceil(sqrt(A239002(n)))+1)%(n+1)` -/
def P1499260071633197223.Spec : Prop :=
  ∀ n, P1499260071633197223.a n = A268318 n

end A268318

/-! ## A268318.P13274758207191685755

`A020639(A239002(n*a(a(n-1)))!)` with `a(0)=0`
-/

namespace A268318.P13274758207191685755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A020639 (Nat.factorial (A239002 ((n : ℤ) * a (a (n - 1)).toNat).toNat).toNat)

end

end A268318.P13274758207191685755

namespace A268318

/-- `A020639(A239002(n*a(a(n-1)))!)` -/
def P13274758207191685755.Spec : Prop :=
  ∀ n, P13274758207191685755.a n = A268318 n

end A268318

/-! ## A268318.P15605841542405833617

`A122922(A239002(n))+A057427(n)`
-/

namespace A268318.P15605841542405833617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122922 (A239002 n).toNat + A057427 n

end

end A268318.P15605841542405833617

namespace A268318

/-- `A122922(A239002(n))+A057427(n)` -/
def P15605841542405833617.Spec : Prop :=
  ∀ n, P15605841542405833617.a n = A268318 n

end A268318

/-! ## A268318.P3376662428091168867

`A020639(A239002(n)!)-A000007(n)`
-/

namespace A268318.P3376662428091168867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.factorial (A239002 n).toNat) - A000007 n

end

end A268318.P3376662428091168867

namespace A268318

/-- `A020639(A239002(n)!)-A000007(n)` -/
def P3376662428091168867.Spec : Prop :=
  ∀ n, P3376662428091168867.a n = A268318 n

end A268318

/-! ## A268318.P3786975886191063425

`A020639(A239002(n)!)*A057427(n)`
-/

namespace A268318.P3786975886191063425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.factorial (A239002 n).toNat) * A057427 n

end

end A268318.P3786975886191063425

namespace A268318

/-- `A020639(A239002(n)!)*A057427(n)` -/
def P3786975886191063425.Spec : Prop :=
  ∀ n, P3786975886191063425.a n = A268318 n

end A268318

/-! ## A268318.P699540504168449898

`A000079(Δ[A005379(n)])-A192687(n)`
-/

namespace A268318.P699540504168449898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (f1 (n + 1) - f1 n).toNat - A192687 n

end

end A268318.P699540504168449898

namespace A268318

/-- `A000079(Δ[A005379(n)])-A192687(n)` -/
def P699540504168449898.Spec : Prop :=
  ∀ n, P699540504168449898.a n = A268318 n

end A268318

/-! ## A268318.P17273055491538984592

`A001611(Δ[A005379(n)])-A192687(n)`
-/

namespace A268318.P17273055491538984592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (f1 (n + 1) - f1 n).toNat - A192687 n

end

end A268318.P17273055491538984592

namespace A268318

/-- `A001611(Δ[A005379(n)])-A192687(n)` -/
def P17273055491538984592.Spec : Prop :=
  ∀ n, P17273055491538984592.a n = A268318 n

end A268318

/-! ## A268318.P7635402665479988706

`A104162(Δ[A005379(n)])-A192687(n)`
-/

namespace A268318.P7635402665479988706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104162 (f1 (n + 1) - f1 n).toNat - A192687 n

end

end A268318.P7635402665479988706

namespace A268318

/-- `A104162(Δ[A005379(n)])-A192687(n)` -/
def P7635402665479988706.Spec : Prop :=
  ∀ n, P7635402665479988706.a n = A268318 n

end A268318

/-! ## A268318.P4501441735533649108

`A000005(A067595(A239002(n)+1))%(n+1)`
-/

namespace A268318.P4501441735533649108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A067595 (A239002 n + 1).toNat).toNat) (n + 1 : ℤ)

end

end A268318.P4501441735533649108

namespace A268318

/-- `A000005(A067595(A239002(n)+1))%(n+1)` -/
def P4501441735533649108.Spec : Prop :=
  ∀ n, P4501441735533649108.a n = A268318 n

end A268318

/-! ## A268318.P7032641283863871924

`and(1, A000040(n+1))*A020639(A239002(n)!)`
-/

namespace A268318.P7032641283863871924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) * A020639 (Nat.factorial (A239002 n).toNat)

end

end A268318.P7032641283863871924

namespace A268318

/-- `and(1, A000040(n+1))*A020639(A239002(n)!)` -/
def P7032641283863871924.Spec : Prop :=
  ∀ n, P7032641283863871924.a n = A268318 n

end A268318

/-! ## A268318.P14412836840673956196

`floor(A020639(A239002(n)!)/A014963(4*n+2))`
-/

namespace A268318.P14412836840673956196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A020639 (Nat.factorial (A239002 n).toNat) : ℚ) / (A014963 (4 * n + 2) : ℚ)⌋

end

end A268318.P14412836840673956196

namespace A268318

/-- `floor(A020639(A239002(n)!)/A014963(4*n+2))` -/
def P14412836840673956196.Spec : Prop :=
  ∀ n, P14412836840673956196.a n = A268318 n

end A268318

/-! ## A268318.P13465134724747578579

`A000045(ceil(n/(n+1)))*A020639(A239002(n)!)`
-/

namespace A268318.P13465134724747578579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat * A020639 (Nat.factorial (A239002 n).toNat)

end

end A268318.P13465134724747578579

namespace A268318

/-- `A000045(ceil(n/(n+1)))*A020639(A239002(n)!)` -/
def P13465134724747578579.Spec : Prop :=
  ∀ n, P13465134724747578579.a n = A268318 n

end A268318

/-! ## A268318.P2670458666815736776

`A006530(A193916(A239002(n)))%A002326(n)`
-/

namespace A268318.P2670458666815736776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A193916 (A239002 n).toNat).toNat) (A002326 n)

end

end A268318.P2670458666815736776

namespace A268318

/-- `A006530(A193916(A239002(n)))%A002326(n)` -/
def P2670458666815736776.Spec : Prop :=
  ∀ n, P2670458666815736776.a n = A268318 n

end A268318

/-!
# A268319: Numbers that are the mean of two distinct positive cubes.

The programs for A268319, there is no canonical definition to state claims against.
-/

/-! ## A268319.P9372130591045272611

`A024670(A024671(n+1))/2`
-/

namespace A268319.P9372130591045272611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024670 (A024671 (n + 1)).toNat : ℚ) / 2

end

end A268319.P9372130591045272611

/-! ## A268319.P17080360518431766759

`lt[0, A025468(2*n)]`
-/

namespace A268319.P17080360518431766759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025468 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A268319.P17080360518431766759

/-! ## A268319.P6912026108295023053

`record[A024670(n+2)/A020639(A024670(n+2))]`
-/

namespace A268319.P6912026108295023053
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024670 (n + 2) : ℚ) / (A020639 (A024670 (n + 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268319.P6912026108295023053

/-! ## A268319.P15500129564712889824

`lt[1, A280618(2*n)]`
-/

namespace A268319.P15500129564712889824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280618 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A268319.P15500129564712889824

/-! ## A268319.P4832991116060425793

`lt[A010057(n), A025455(2*n)]`
-/

namespace A268319.P4832991116060425793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A268319.P4832991116060425793

/-! ## A268319.P15427324424639596029

`lt[2, A175362(2*n)-2]`
-/

namespace A268319.P15427324424639596029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175362 (2 * n) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A268319.P15427324424639596029

/-! ## A268319.P8139792204592874396

`lt[4, A175362(A005843(n))]`
-/

namespace A268319.P8139792204592874396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175362 (A005843 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A268319.P8139792204592874396

/-! ## A268319.P16195309016980964753

`record[A032742(A024670(n+2))]`
-/

namespace A268319.P16195309016980964753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A024670 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268319.P16195309016980964753

/-! ## A268319.P13127493026249616228

`lt[1, A002265(A175362(2*n))]`
-/

namespace A268319.P13127493026249616228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A175362 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A268319.P13127493026249616228

/-!
# A268320: Number of length-(n+1) 0..n arrays with new values introduced in sequential order, and with new repeated values introduced in sequential order, both starting with zero.

The programs for A268320, there is no canonical definition to state claims against.
-/

/-! ## A268320.P5337043817607844017

`A268327(∑[4*n]+1)`
-/

namespace A268320.P5337043817607844017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268327 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A268320.P5337043817607844017

/-! ## A268320.P7262250437903168733

`record[A268327(A178218(n+1))]`
-/

namespace A268320.P7262250437903168733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268327 (A178218 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268320.P7262250437903168733

/-! ## A268320.P4351836018182131306

`record[A003982(n)*A268327(n+1)]`
-/

namespace A268320.P4351836018182131306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A268327 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268320.P4351836018182131306

/-! ## A268320.P11369979362160739561

`record[gcd(A114327(n), A268327(n+1))]`
-/

namespace A268320.P11369979362160739561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A268327 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268320.P11369979362160739561

/-! ## A268320.P13090157963459625190

`record[(2-A143182(n))*A268327(n+1)]`
-/

namespace A268320.P13090157963459625190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A143182 n) * A268327 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268320.P13090157963459625190

/-! ## A268320.P4555562259952844768

`record[A268327(2*(n+1))/A114327(2*n+1)]`
-/

namespace A268320.P4555562259952844768
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268327 (2 * (n + 1)) : ℚ) / (A114327 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268320.P4555562259952844768

/-! ## A268320.P15720214683109888302

`record[A268327(A003602((n+1)²))]`
-/

namespace A268320.P15720214683109888302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268327 (A003602 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268320.P15720214683109888302

/-!
# A268321: Number of length-(n+1) 0..2 arrays with new values introduced in sequential order, and with new repeated values introduced in sequential order, both starting with zero.

The programs for A268321, the canonical program `A268321.P8819373755082707875` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268321 has offset 1).

The definition of A268321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268321.P8819373755082707875

`ogf((2-10x+10x^2+11x^3-11x^4-5x^5)/(1-7x+14x^2-21x^4+7x^5+6x^6))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A268321

/-- `ogf((2-10x+10x^2+11x^3-11x^4-5x^5)/(1-7x+14x^2-21x^4+7x^5+6x^6))` -/
def P8819373755082707875.Spec : Prop :=
  ∀ n, P8819373755082707875.a n = A268321 (n + 1)

theorem P8819373755082707875.correct : P8819373755082707875.Spec := by
  intro n
  simp only [A268321, Nat.add_sub_cancel]

end A268321

/-! ## A268321.P8424083102712123513

`A268327(∑[n+2])`
-/

namespace A268321.P8424083102712123513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268327 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268321.P8424083102712123513

namespace A268321

/-- `A268327(∑[n+2])` -/
def P8424083102712123513.Spec : Prop :=
  ∀ n, P8424083102712123513.a n = A268321 (n + 1)

end A268321

/-! ## A268321.P17828137409211840411

`record[A129186(n)*A268327(n+1)]`
-/

namespace A268321.P17828137409211840411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129186 n * A268327 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268321.P17828137409211840411

namespace A268321

/-- `record[A129186(n)*A268327(n+1)]` -/
def P17828137409211840411.Spec : Prop :=
  ∀ n, P17828137409211840411.a n = A268321 (n + 1)

end A268321

/-! ## A268321.P3699471801690947830

`record[A268327(A000096(A143182(n)))]`
-/

namespace A268321.P3699471801690947830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268327 (A000096 (A143182 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268321.P3699471801690947830

namespace A268321

/-- `record[A268327(A000096(A143182(n)))]` -/
def P3699471801690947830.Spec : Prop :=
  ∀ n, P3699471801690947830.a n = A268321 (n + 1)

end A268321

/-! ## A268321.P1810896020256995850

`record[A268327(A000096(A324347(n)))]`
-/

namespace A268321.P1810896020256995850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268327 (A000096 (A324347 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268321.P1810896020256995850

namespace A268321

/-- `record[A268327(A000096(A324347(n)))]` -/
def P1810896020256995850.Spec : Prop :=
  ∀ n, P1810896020256995850.a n = A268321 (n + 1)

end A268321

/-! ## A268321.P12892720198078372892

`record[A268327(A000096(A003602(n+1)))]`
-/

namespace A268321.P12892720198078372892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268327 (A000096 (A003602 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268321.P12892720198078372892

namespace A268321

/-- `record[A268327(A000096(A003602(n+1)))]` -/
def P12892720198078372892.Spec : Prop :=
  ∀ n, P12892720198078372892.a n = A268321 (n + 1)

end A268321

/-! ## A268321.P16784236612443026316

`record[A268327(A000096(A003963(n+1)))]`
-/

namespace A268321.P16784236612443026316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268327 (A000096 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268321.P16784236612443026316

namespace A268321

/-- `record[A268327(A000096(A003963(n+1)))]` -/
def P16784236612443026316.Spec : Prop :=
  ∀ n, P16784236612443026316.a n = A268321 (n + 1)

end A268321

/-! ## A268321.P15648472966349314696

`record[A268327(A101881(A000265(n+1)))]`
-/

namespace A268321.P15648472966349314696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268327 (A101881 (A000265 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268321.P15648472966349314696

namespace A268321

/-- `record[A268327(A101881(A000265(n+1)))]` -/
def P15648472966349314696.Spec : Prop :=
  ∀ n, P15648472966349314696.a n = A268321 (n + 1)

end A268321

/-! ## A268321.P9757746810557413769

`record[A268327(A000096(A138528(n+1)))]`
-/

namespace A268321.P9757746810557413769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268327 (A000096 (A138528 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268321.P9757746810557413769

namespace A268321

/-- `record[A268327(A000096(A138528(n+1)))]` -/
def P9757746810557413769.Spec : Prop :=
  ∀ n, P9757746810557413769.a n = A268321 (n + 1)

end A268321

/-!
# A268322: Number of length-(n+1) 0..3 arrays with new values introduced in sequential order, and with new repeated values introduced in sequential order, both starting with zero.

The programs for A268322, there is no canonical definition to state claims against.
-/

/-! ## A268322.P5052771299152856046

`A268327(∑[n+3]+1)`
-/

namespace A268322.P5052771299152856046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268327 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A268322.P5052771299152856046

/-! ## A268322.P11216092686014228491

`record[A268327(A034856(A028920(n)))]`
-/

namespace A268322.P11216092686014228491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268327 (A034856 (A028920 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268322.P11216092686014228491

/-! ## A268322.P14946557265555328188

`gcd(A000038(n), A268327(A034856(n+2)))`
-/

namespace A268322.P14946557265555328188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A268327 (A034856 (n + 2)).toNat)

end

end A268322.P14946557265555328188

/-! ## A268322.P6914822289407555444

`A268327(A034856(n+2))%A037583(n+1)`
-/

namespace A268322.P6914822289407555444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268327 (A034856 (n + 2)).toNat) (A037583 (n + 1))

end

end A268322.P6914822289407555444

/-! ## A268322.P5439926025779339519

`A000041(C(2, 2*n))*A268327(A034856(n+2))`
-/

namespace A268322.P5439926025779339519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (2 * n)) * A268327 (A034856 (n + 2)).toNat

end

end A268322.P5439926025779339519

/-! ## A268322.P16374010831754652624

`A014963(lcm(4, n)+18)*A268327(A034856(n+2))`
-/

namespace A268322.P16374010831754652624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.lcm 4 n + 18) * A268327 (A034856 (n + 2)).toNat

end

end A268322.P16374010831754652624

/-! ## A268322.P9500456092025894978

`A008683(A005117(n+1))²*A268327(A034856(n+2))`
-/

namespace A268322.P9500456092025894978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A005117 (n + 1)).toNat ^ 2 * A268327 (A034856 (n + 2)).toNat

end

end A268322.P9500456092025894978

/-!
# A268323: Number of length-(n+1) 0..4 arrays with new values introduced in sequential order, and with new repeated values introduced in sequential order, both starting with zero.

The programs for A268323, there is no canonical definition to state claims against.
-/

/-! ## A268323.P13583282379470870076

`A268327(∑[n+4]+3)`
-/

namespace A268323.P13583282379470870076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268327 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A268323.P13583282379470870076

/-! ## A268323.P8742212582005925694

`abs(1-A268327(A055998(n+2)))+1`
-/

namespace A268323.P8742212582005925694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A268327 (A055998 (n + 2)).toNat| + 1

end

end A268323.P8742212582005925694

/-! ## A268323.P4083560716854782988

`A000034(2*n)*A268327(A055998(n+2))`
-/

namespace A268323.P4083560716854782988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A268327 (A055998 (n + 2)).toNat

end

end A268323.P4083560716854782988

/-! ## A268323.P14411305755076012662

`A001222(A155938(n+1))*A268327(A055998(n+2))`
-/

namespace A268323.P14411305755076012662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A155938 (n + 1)).toNat * A268327 (A055998 (n + 2)).toNat

end

end A268323.P14411305755076012662

/-! ## A268323.P14041718349298540555

`A001222(A155943(n+1))*A268327(A055998(n+2))`
-/

namespace A268323.P14041718349298540555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A155943 (n + 1)).toNat * A268327 (A055998 (n + 2)).toNat

end

end A268323.P14041718349298540555

/-! ## A268323.P3435337277186191777

`A014963(A000217(n+3))*A268327(A055998(n+2))`
-/

namespace A268323.P3435337277186191777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 3)).toNat * A268327 (A055998 (n + 2)).toNat

end

end A268323.P3435337277186191777

/-! ## A268323.P5748200586107445096

`A014963(A000096(n+9))*A268327(A055998(n+2))`
-/

namespace A268323.P5748200586107445096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000096 (n + 9)).toNat * A268327 (A055998 (n + 2)).toNat

end

end A268323.P5748200586107445096

/-!
# A268324: Number of length-(n+1) 0..5 arrays with new values introduced in sequential order, and with new repeated values introduced in sequential order, both starting with zero.

The programs for A268324, there is no canonical definition to state claims against.
-/

/-! ## A268324.P13192971518909040079

`A268327(A046691(n+3))`
-/

namespace A268324.P13192971518909040079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268327 (A046691 (n + 3)).toNat

end

end A268324.P13192971518909040079

/-! ## A268324.P12210910077480965916

`A268327(Δ[A023545(n+1)])`
-/

namespace A268324.P12210910077480965916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268327 (f1 (n + 1) - f1 n).toNat

end

end A268324.P12210910077480965916

/-! ## A268324.P9105050078741844105

`A268327(A055999(n+2)+2)`
-/

namespace A268324.P9105050078741844105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268327 (A055999 (n + 2) + 2).toNat

end

end A268324.P9105050078741844105

/-! ## A268324.P12762198359001916040

`A268327(A027379(n+3)-1)`
-/

namespace A268324.P12762198359001916040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268327 (A027379 (n + 3) - 1).toNat

end

end A268324.P12762198359001916040

/-! ## A268324.P692549413719094395

`A268327(A000124(n+5)-5)`
-/

namespace A268324.P692549413719094395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268327 (A000124 (n + 5) - 5).toNat

end

end A268324.P692549413719094395

/-! ## A268324.P5296988732528134785

`A268327(A167499(n+4)-9)`
-/

namespace A268324.P5296988732528134785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268327 (A167499 (n + 4) - 9).toNat

end

end A268324.P5296988732528134785

/-! ## A268324.P10130491204335224309

`A268327(Δ[A060488(n+3)]+2)`
-/

namespace A268324.P10130491204335224309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060488 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268327 (f1 (n + 1) - f1 n + 2).toNat

end

end A268324.P10130491204335224309

/-! ## A268324.P12811105165274184734

`A268327(A161680(n+7)-(n+10))`
-/

namespace A268324.P12811105165274184734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268327 (A161680 (n + 7) - (n + 10 : ℤ)).toNat

end

end A268324.P12811105165274184734

/-!
# A268325: Number of length-(n+1) 0..6 arrays with new values introduced in sequential order, and with new repeated values introduced in sequential order, both starting with zero.

The programs for A268325, there is no canonical definition to state claims against.
-/

/-! ## A268325.P8919698886899162351

`record[A268327(A052905(n))]`
-/

namespace A268325.P8919698886899162351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268327 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268325.P8919698886899162351

/-! ## A268325.P13943459631724357406

`A268327(A052905(n+3))`
-/

namespace A268325.P13943459631724357406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268327 (A052905 (n + 3)).toNat

end

end A268325.P13943459631724357406

/-! ## A268325.P15675541541614497041

`record[A268327(A055999(n)+1)]`
-/

namespace A268325.P15675541541614497041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268327 (A055999 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268325.P15675541541614497041

/-! ## A268325.P2418715265687291276

`A268327(A046691(n+4)-1)`
-/

namespace A268325.P2418715265687291276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268327 (A046691 (n + 4) - 1).toNat

end

end A268325.P2418715265687291276

/-! ## A268325.P5320285193740343527

`A268327(A027379(n+4)-2)`
-/

namespace A268325.P5320285193740343527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268327 (A027379 (n + 4) - 2).toNat

end

end A268325.P5320285193740343527

/-! ## A268325.P11963047285025298812

`A268327(Δ[A023551(n+1)]+1)`
-/

namespace A268325.P11963047285025298812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268327 (f1 (n + 1) - f1 n + 1).toNat

end

end A268325.P11963047285025298812

/-! ## A268325.P12503268725545163129

`A268327(Δ[A023545(n+2)]-1)`
-/

namespace A268325.P12503268725545163129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268327 (f1 (n + 1) - f1 n - 1).toNat

end

end A268325.P12503268725545163129

/-! ## A268325.P12806189204780213283

`A268327(Δ[A060488(n+4)]+1)`
-/

namespace A268325.P12806189204780213283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060488 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268327 (f1 (n + 1) - f1 n + 1).toNat

end

end A268325.P12806189204780213283

/-! ## A268325.P13765940346134484631

`record[A268327(A034856(n+2)-3)]`
-/

namespace A268325.P13765940346134484631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268327 (A034856 (n + 2) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268325.P13765940346134484631

/-! ## A268325.P11198556326035513304

`record[A268327(A101881(2*n)+n)]`
-/

namespace A268325.P11198556326035513304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268327 (A101881 (2 * n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268325.P11198556326035513304

/-!
# A268326: Number of length-(n+1) 0..7 arrays with new values introduced in sequential order, and with new repeated values introduced in sequential order, both starting with zero.

The programs for A268326, there is no canonical definition to state claims against.
-/

/-! ## A268326.P18125721119879018671

`A268327(A055999(n+4))`
-/

namespace A268326.P18125721119879018671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268327 (A055999 (n + 4)).toNat

end

end A268326.P18125721119879018671

/-! ## A268326.P10435943612675162670

`A268327(Δ[A023551(n+2)])`
-/

namespace A268326.P10435943612675162670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268327 (f1 (n + 1) - f1 n).toNat

end

end A268326.P10435943612675162670

/-! ## A268326.P18014219090884464322

`A268327(Δ[A060488(n+5)])`
-/

namespace A268326.P18014219090884464322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060488 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268327 (f1 (n + 1) - f1 n).toNat

end

end A268326.P18014219090884464322

/-! ## A268326.P8126852350513288687

`A268327(A161680(n+7)+n+1)`
-/

namespace A268326.P8126852350513288687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268327 (A161680 (n + 7) + (n + 1 : ℤ)).toNat

end

end A268326.P8126852350513288687

/-! ## A268326.P16338045115176546961

`A268327(A167499(n+4)+2*(n+1))`
-/

namespace A268326.P16338045115176546961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268327 (A167499 (n + 4) + (2 * (n + 1) : ℤ)).toNat

end

end A268326.P16338045115176546961

/-! ## A268326.P3975888123623266383

`A268327(Δ[n²]+A034856(n+4)+8)`
-/

namespace A268326.P3975888123623266383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268327 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A034856 (n + 4) + 8)).toNat

end

end A268326.P3975888123623266383

/-! ## A268326.P8991263704834980102

`record[A268327(A055999(A019303(n)))]`
-/

namespace A268326.P8991263704834980102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268327 (A055999 (A019303 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268326.P8991263704834980102

/-!
# A268327: T(n,k)=Number of length-(n+1) 0..k arrays with new values introduced in sequential order, and with new repeated values introduced in sequential order, both starting with zero.

The programs for A268327, there is no canonical definition to state claims against.
-/

/-! ## A268327.P4073108997703459937

`A390084(A209996(n+1))`
-/

namespace A268327.P4073108997703459937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390084 (A209996 (n + 1)).toNat

end

end A268327.P4073108997703459937

/-! ## A268327.P7227667966617151020

`A062575(A209996(n+1)+1)`
-/

namespace A268327.P7227667966617151020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062575 (A209996 (n + 1) + 1).toNat

end

end A268327.P7227667966617151020

/-! ## A268327.P17419673592390304630

`A335420(A241171(n+1))+A007318(A059268(n))`
-/

namespace A268327.P17419673592390304630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335420 (A241171 (n + 1)).toNat + A007318 (A059268 n).toNat

end

end A268327.P17419673592390304630

/-! ## A268327.P2786401299385325376

`A058224(A210228(n+1))+A007318(A203647(n+1))`
-/

namespace A268327.P2786401299385325376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058224 (A210228 (n + 1)).toNat + A007318 (A203647 (n + 1)).toNat

end

end A268327.P2786401299385325376

/-! ## A268327.P6575522835086891396

`A243729(n+1)-A020639(A112356(n))`
-/

namespace A268327.P6575522835086891396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243729 (n + 1) - A020639 (A112356 n).toNat

end

end A268327.P6575522835086891396

/-!
# A268328: Integers of the form (prime(m) + prime(m+1))/10 for some m.

The programs for A268328, the canonical program `A268328.P13273210723323809643` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268328 has offset 1).

The definition of A268328 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268328.P11205893688037125317

`A392111(n+2)`
-/

namespace A268328.P11205893688037125317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392111 (n + 2)

end

end A268328.P11205893688037125317

namespace A268328

/-- `A392111(n+2)` -/
def P11205893688037125317.Spec : Prop :=
  ∀ n, P11205893688037125317.a n = A268328 (n + 1)

end A268328

/-! ## A268328.P13273210723323809643

`∩[A024675(n+1), A008706(n+2)]/5`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A268328

/-- `∩[A024675(n+1), A008706(n+2)]/5` -/
def P13273210723323809643.Spec : Prop :=
  ∀ n, P13273210723323809643.a n = (A268328 (n + 1) : ℚ)

end A268328

/-! ## A268328.P9495936643396095451

`eq[5*n, A210882(5*n+1)]`
-/

namespace A268328.P9495936643396095451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210882 (5 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268328.P9495936643396095451

namespace A268328

/-- `eq[5*n, A210882(5*n+1)]` -/
def P9495936643396095451.Spec : Prop :=
  ∀ n, (P9495936643396095451.a n : ℤ) = A268328 (n + 1)

end A268328

/-! ## A268328.P5120163119492215036

`A013634(A253970(n+2))/10`
-/

namespace A268328.P5120163119492215036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013634 (A253970 (n + 2)).toNat : ℚ) / 10

end

end A268328.P5120163119492215036

namespace A268328

/-- `A013634(A253970(n+2))/10` -/
def P5120163119492215036.Spec : Prop :=
  ∀ n, P5120163119492215036.a n = (A268328 (n + 1) : ℚ)

end A268328

/-! ## A268328.P7734320047933582764

`A222618(n+1)/10`
-/

namespace A268328.P7734320047933582764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222618 (n + 1) : ℚ) / 10

end

end A268328.P7734320047933582764

namespace A268328

/-- `A222618(n+1)/10` -/
def P7734320047933582764.Spec : Prop :=
  ∀ n, P7734320047933582764.a n = (A268328 (n + 1) : ℚ)

end A268328

/-!
# A268329: Expansion of (1 - sqrt(1 - 4*x))^5/16.

The programs for A268329, the canonical program `A268329.P14268697526507854789` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268329 has offset 5).

The definition of A268329 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268329.P14268697526507854789

`2*A000344(n+2)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A268329

/-- `2*A000344(n+2)` -/
def P14268697526507854789.Spec : Prop :=
  ∀ n, P14268697526507854789.a n = A268329 (n + 5)

theorem P14268697526507854789.correct : P14268697526507854789.Spec := by
  intro n
  simp only [A268329, Nat.add_sub_cancel]

end A268329

/-! ## A268329.P5688296661118188483

`10*C(2*(n+5)-6, n)/(n+5)`
-/

namespace A268329.P5688296661118188483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 * Nat.choose ((2 * (n + 5) : ℤ) - 6).toNat n : ℚ) / (n + 5 : ℚ)

end

end A268329.P5688296661118188483

namespace A268329

/-- `10*C(2*(n+5)-6, n)/(n+5)` -/
def P5688296661118188483.Spec : Prop :=
  ∀ n, P5688296661118188483.a n = (A268329 (n + 5) : ℚ)

end A268329

/-! ## A268329.P6900479156109709486

`record[abs(2*A115144(n))]`
-/

namespace A268329.P6900479156109709486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A115144 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268329.P6900479156109709486

namespace A268329

/-- `record[abs(2*A115144(n))]` -/
def P6900479156109709486.Spec : Prop :=
  ∀ n, P6900479156109709486.a n = A268329 (n + 5)

end A268329

/-! ## A268329.P10784858483056785053

`∑[2*A026013(n+1)]`
-/

namespace A268329.P10784858483056785053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268329.P10784858483056785053

namespace A268329

/-- `∑[2*A026013(n+1)]` -/
def P10784858483056785053.Spec : Prop :=
  ∀ n, P10784858483056785053.a n = A268329 (n + 5)

end A268329

/-! ## A268329.P13198215848217779645

`Δ[2*A143955(n+2)]`
-/

namespace A268329.P13198215848217779645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143955 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268329.P13198215848217779645

namespace A268329

/-- `Δ[2*A143955(n+2)]` -/
def P13198215848217779645.Spec : Prop :=
  ∀ n, P13198215848217779645.a n = A268329 (n + 5)

end A268329

/-! ## A268329.P9549548337446297132

`A390965(n+1)+A002057(n)`
-/

namespace A268329.P9549548337446297132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390965 (n + 1) + A002057 n

end

end A268329.P9549548337446297132

namespace A268329

/-- `A390965(n+1)+A002057(n)` -/
def P9549548337446297132.Spec : Prop :=
  ∀ n, P9549548337446297132.a n = A268329 (n + 5)

end A268329

/-! ## A268329.P16188974797537134672

`∑[2*(A099376(n)+A032952(n))]`
-/

namespace A268329.P16188974797537134672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A099376 n + A032952 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268329.P16188974797537134672

namespace A268329

/-- `∑[2*(A099376(n)+A032952(n))]` -/
def P16188974797537134672.Spec : Prop :=
  ∀ n, P16188974797537134672.a n = A268329 (n + 5)

end A268329

/-! ## A268329.P13589660443820513744

`A390965(n+1)+A099376(n+1)`
-/

namespace A268329.P13589660443820513744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390965 (n + 1) + A099376 (n + 1)

end

end A268329.P13589660443820513744

namespace A268329

/-- `A390965(n+1)+A099376(n+1)` -/
def P13589660443820513744.Spec : Prop :=
  ∀ n, P13589660443820513744.a n = A268329 (n + 5)

end A268329

/-! ## A268329.P3456151128812528433

`A070857(n+1)-A000245(n+2)`
-/

namespace A268329.P3456151128812528433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070857 (n + 1) - A000245 (n + 2)

end

end A268329.P3456151128812528433

namespace A268329

/-- `A070857(n+1)-A000245(n+2)` -/
def P3456151128812528433.Spec : Prop :=
  ∀ n, P3456151128812528433.a n = A268329 (n + 5)

end A268329

/-! ## A268329.P13563590921366097732

`A071723(n+1)-A000108(n+2)`
-/

namespace A268329.P13563590921366097732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071723 (n + 1) - A000108 (n + 2)

end

end A268329.P13563590921366097732

namespace A268329

/-- `A071723(n+1)-A000108(n+2)` -/
def P13563590921366097732.Spec : Prop :=
  ∀ n, P13563590921366097732.a n = A268329 (n + 5)

end A268329

/-! ## A268329.P6687728982567839276

`A071722(n+2)-A061557(n+2)`
-/

namespace A268329.P6687728982567839276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071722 (n + 2) - A061557 (n + 2)

end

end A268329.P6687728982567839276

namespace A268329

/-- `A071722(n+2)-A061557(n+2)` -/
def P6687728982567839276.Spec : Prop :=
  ∀ n, P6687728982567839276.a n = A268329 (n + 5)

end A268329

/-! ## A268329.P11143414691576905667

`A071722(n+2)-A000782(n+3)`
-/

namespace A268329.P11143414691576905667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071722 (n + 2) - A000782 (n + 3)

end

end A268329.P11143414691576905667

namespace A268329

/-- `A071722(n+2)-A000782(n+3)` -/
def P11143414691576905667.Spec : Prop :=
  ∀ n, P11143414691576905667.a n = A268329 (n + 5)

end A268329

/-! ## A268329.P9050404666535630405

`2*(A120989(n+1)-A002057(n))`
-/

namespace A268329.P9050404666535630405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A120989 (n + 1) - A002057 n)

end

end A268329.P9050404666535630405

namespace A268329

/-- `2*(A120989(n+1)-A002057(n))` -/
def P9050404666535630405.Spec : Prop :=
  ∀ n, P9050404666535630405.a n = A268329 (n + 5)

end A268329

/-! ## A268329.P16862630307018194520

`Δ[2*(A114277(n)-A001453(n+2))]`
-/

namespace A268329.P16862630307018194520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A114277 n - A001453 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268329.P16862630307018194520

namespace A268329

/-- `Δ[2*(A114277(n)-A001453(n+2))]` -/
def P16862630307018194520.Spec : Prop :=
  ∀ n, P16862630307018194520.a n = A268329 (n + 5)

end A268329

/-! ## A268329.P7365463833323610918

`2*(A071719(n+1)-A071722(n+1))`
-/

namespace A268329.P7365463833323610918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A071719 (n + 1) - A071722 (n + 1))

end

end A268329.P7365463833323610918

namespace A268329

/-- `2*(A071719(n+1)-A071722(n+1))` -/
def P7365463833323610918.Spec : Prop :=
  ∀ n, P7365463833323610918.a n = A268329 (n + 5)

end A268329

/-! ## A268329.P10129968167164000752

`2*(A071729(n+1)-A071732(n+1))`
-/

namespace A268329.P10129968167164000752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A071729 (n + 1) - A071732 (n + 1))

end

end A268329.P10129968167164000752

namespace A268329

/-- `2*(A071729(n+1)-A071732(n+1))` -/
def P10129968167164000752.Spec : Prop :=
  ∀ n, P10129968167164000752.a n = A268329 (n + 5)

end A268329

/-! ## A268329.P10954420901826737047

`A071723(n+1)-(A026012(n)+A000782(n+1))`
-/

namespace A268329.P10954420901826737047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071723 (n + 1) - (A026012 n + A000782 (n + 1))

end

end A268329.P10954420901826737047

namespace A268329

/-- `A071723(n+1)-(A026012(n)+A000782(n+1))` -/
def P10954420901826737047.Spec : Prop :=
  ∀ n, P10954420901826737047.a n = A268329 (n + 5)

end A268329

/-! ## A268329.P10420051391051441626

`A071723(n+1)+A070857(n)-A071722(n+1)`
-/

namespace A268329.P10420051391051441626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071723 (n + 1) + (A070857 n - A071722 (n + 1))

end

end A268329.P10420051391051441626

namespace A268329

/-- `A071723(n+1)+A070857(n)-A071722(n+1)` -/
def P10420051391051441626.Spec : Prop :=
  ∀ n, P10420051391051441626.a n = A268329 (n + 5)

end A268329

/-! ## A268329.P10658282337225717689

`A071723(n+1)+A099376(n)-A071721(n+1)`
-/

namespace A268329.P10658282337225717689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071723 (n + 1) + (A099376 n - A071721 (n + 1))

end

end A268329.P10658282337225717689

namespace A268329

/-- `A071723(n+1)+A099376(n)-A071721(n+1)` -/
def P10658282337225717689.Spec : Prop :=
  ∀ n, P10658282337225717689.a n = A268329 (n + 5)

end A268329

/-! ## A268329.P2683695964325534692

`A070857(n+1)+A390965(n+1)-A071723(n+1)`
-/

namespace A268329.P2683695964325534692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070857 (n + 1) + (A390965 (n + 1) - A071723 (n + 1))

end

end A268329.P2683695964325534692

namespace A268329

/-- `A070857(n+1)+A390965(n+1)-A071723(n+1)` -/
def P2683695964325534692.Spec : Prop :=
  ∀ n, P2683695964325534692.a n = A268329 (n + 5)

end A268329

/-!
# A268330: Least squarefree number differing by more than n from any other squarefree number.

The programs for A268330, there is no canonical definition to state claims against.
-/

/-! ## A268330.P3934845747564059122

`A270344(n*a(comp[2*n+7]-n))` with `a(0)=1`
-/

namespace A268330.P3934845747564059122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270344 ((n : ℤ) * a (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)).toNat

end

end A268330.P3934845747564059122

/-! ## A268330.P17011326510682161403

`A270344(A270890(n+1))/ceil(2/(n+1))`
-/

namespace A268330.P17011326510682161403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270344 (A270890 (n + 1)).toNat : ℚ) / (⌈2 / (n + 1 : ℚ)⌉ : ℚ)

end

end A268330.P17011326510682161403

/-! ## A268330.P11082181234921404199

`A270344(n)-A010051(A001579(n))`
-/

namespace A268330.P11082181234921404199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270344 n - A010051 (A001579 n).toNat

end

end A268330.P11082181234921404199

/-!
# A268335: Exponentially odd numbers.

The programs for A268335, the canonical program `A268335.P2949356212945410865` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268335 has offset 1).

The definition of A268335 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268335.P388447577347414493

`sqrt(A374458(n+1))`
-/

namespace A268335.P388447577347414493
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A374458 (n + 1) : ℝ)

end

end A268335.P388447577347414493

namespace A268335

/-- `sqrt(A374458(n+1))` -/
def P388447577347414493.Spec : Prop :=
  ∀ n, P388447577347414493.a n = (A268335 (n + 1) : ℝ)

end A268335

/-! ## A268335.P11829748240544389598

`record[A331737(n+1)]`
-/

namespace A268335.P11829748240544389598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268335.P11829748240544389598

namespace A268335

/-- `record[A331737(n+1)]` -/
def P11829748240544389598.Spec : Prop :=
  ∀ n, P11829748240544389598.a n = A268335 (n + 1)

end A268335

/-! ## A268335.P5774554945813461717

`eq[0, A351572(n+1)]+1`
-/

namespace A268335.P5774554945813461717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351572 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A268335.P5774554945813461717

namespace A268335

/-- `eq[0, A351572(n+1)]+1` -/
def P5774554945813461717.Spec : Prop :=
  ∀ n, (P5774554945813461717.a n : ℤ) = A268335 (n + 1)

end A268335

/-! ## A268335.P2949356212945410865

`eq[1, A295316(n+1)]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A268335

/-- `eq[1, A295316(n+1)]+1` -/
def P2949356212945410865.Spec : Prop :=
  ∀ n, (P2949356212945410865.a n : ℤ) = A268335 (n + 1)

theorem P2949356212945410865.correct : P2949356212945410865.Spec := by
  intro n
  simp only [A268335, Nat.add_sub_cancel]

end A268335

/-! ## A268335.P8399706356313607963

`eq[1, A331738(n+1)]+1`
-/

namespace A268335.P8399706356313607963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331738 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A268335.P8399706356313607963

namespace A268335

/-- `eq[1, A331738(n+1)]+1` -/
def P8399706356313607963.Spec : Prop :=
  ∀ n, (P8399706356313607963.a n : ℤ) = A268335 (n + 1)

end A268335

/-! ## A268335.P5652465722848041958

`eq[1, A336643(n+1)]+1`
-/

namespace A268335.P5652465722848041958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A268335.P5652465722848041958

namespace A268335

/-- `eq[1, A336643(n+1)]+1` -/
def P5652465722848041958.Spec : Prop :=
  ∀ n, (P5652465722848041958.a n : ℤ) = A268335 (n + 1)

end A268335

/-! ## A268335.P6057794133712017795

`eq[1, A351568(n+1)]+1`
-/

namespace A268335.P6057794133712017795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351568 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A268335.P6057794133712017795

namespace A268335

/-- `eq[1, A351568(n+1)]+1` -/
def P6057794133712017795.Spec : Prop :=
  ∀ n, (P6057794133712017795.a n : ℤ) = A268335 (n + 1)

end A268335

/-! ## A268335.P6436071862238365961

`lt[A351570(n+1), 1]+1`
-/

namespace A268335.P6436071862238365961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351570 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A268335.P6436071862238365961

namespace A268335

/-- `lt[A351570(n+1), 1]+1` -/
def P6436071862238365961.Spec : Prop :=
  ∀ n, (P6436071862238365961.a n : ℤ) = A268335 (n + 1)

end A268335

/-! ## A268335.P2552386208737154428

`lt[n, A351569(n+1)]+1`
-/

namespace A268335.P2552386208737154428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351569 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A268335.P2552386208737154428

namespace A268335

/-- `lt[n, A351569(n+1)]+1` -/
def P2552386208737154428.Spec : Prop :=
  ∀ n, (P2552386208737154428.a n : ℤ) = A268335 (n + 1)

end A268335

/-! ## A268335.P754043657803157865

`∪[A001075(n), A002035(n+1)]`
-/

namespace A268335.P754043657803157865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A268335.P754043657803157865

namespace A268335

/-- `∪[A001075(n), A002035(n+1)]` -/
def P754043657803157865.Spec : Prop :=
  ∀ n, (P754043657803157865.a n : ℤ) = A268335 (n + 1)

end A268335

/-! ## A268335.P14700639281534057565

`∪[A002035(n+1), A001287(n)]`
-/

namespace A268335.P14700639281534057565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (n + 10)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A268335.P14700639281534057565

namespace A268335

/-- `∪[A002035(n+1), A001287(n)]` -/
def P14700639281534057565.Spec : Prop :=
  ∀ n, (P14700639281534057565.a n : ℤ) = A268335 (n + 1)

end A268335

/-! ## A268335.P18420351803144861922

`∪[A001317(n), A002035(n+1)]`
-/

namespace A268335.P18420351803144861922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A268335.P18420351803144861922

namespace A268335

/-- `∪[A001317(n), A002035(n+1)]` -/
def P18420351803144861922.Spec : Prop :=
  ∀ n, (P18420351803144861922.a n : ℤ) = A268335 (n + 1)

end A268335

/-! ## A268335.P12260554581346367223

`∪[A001334(n), A002035(n+1)]`
-/

namespace A268335.P12260554581346367223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001334 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A268335.P12260554581346367223

namespace A268335

/-- `∪[A001334(n), A002035(n+1)]` -/
def P12260554581346367223.Spec : Prop :=
  ∀ n, (P12260554581346367223.a n : ℤ) = A268335 (n + 1)

end A268335

/-! ## A268335.P4617565977223053892

`∪[A001360(n), A002035(n+1)]`
-/

namespace A268335.P4617565977223053892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001360 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A268335.P4617565977223053892

namespace A268335

/-- `∪[A001360(n), A002035(n+1)]` -/
def P4617565977223053892.Spec : Prop :=
  ∀ n, (P4617565977223053892.a n : ℤ) = A268335 (n + 1)

end A268335

/-! ## A268335.P11807173376810369233

`∪[A002035(n+1), A001496(n)]`
-/

namespace A268335.P11807173376810369233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001496 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A268335.P11807173376810369233

namespace A268335

/-- `∪[A002035(n+1), A001496(n)]` -/
def P11807173376810369233.Spec : Prop :=
  ∀ n, (P11807173376810369233.a n : ℤ) = A268335 (n + 1)

end A268335

/-! ## A268335.P15947473821215246735

`∪[A002035(n+1), A001779(n)]`
-/

namespace A268335.P15947473821215246735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001779 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A268335.P15947473821215246735

namespace A268335

/-- `∪[A002035(n+1), A001779(n)]` -/
def P15947473821215246735.Spec : Prop :=
  ∀ n, (P15947473821215246735.a n : ℤ) = A268335 (n + 1)

end A268335

/-! ## A268335.P11686446043793652449

`∪[A002035(n+1), A001848(n)]`
-/

namespace A268335.P11686446043793652449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001848 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A268335.P11686446043793652449

namespace A268335

/-- `∪[A002035(n+1), A001848(n)]` -/
def P11686446043793652449.Spec : Prop :=
  ∀ n, (P11686446043793652449.a n : ℤ) = A268335 (n + 1)

end A268335

/-! ## A268335.P16281109225072261207

`∪[A006859(n), A002035(n+1)]`
-/

namespace A268335.P16281109225072261207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006859 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A268335.P16281109225072261207

namespace A268335

/-- `∪[A006859(n), A002035(n+1)]` -/
def P16281109225072261207.Spec : Prop :=
  ∀ n, (P16281109225072261207.a n : ℤ) = A268335 (n + 1)

end A268335

/-! ## A268335.P11586909374415196228

`∪[A002035(n+1), A008514(n)]`
-/

namespace A268335.P11586909374415196228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008514 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A268335.P11586909374415196228

namespace A268335

/-- `∪[A002035(n+1), A008514(n)]` -/
def P11586909374415196228.Spec : Prop :=
  ∀ n, (P11586909374415196228.a n : ℤ) = A268335 (n + 1)

end A268335

/-! ## A268335.P11152429600187789782

`A367407(n+1)*A367419(n+1)`
-/

namespace A268335.P11152429600187789782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367407 (n + 1) * A367419 (n + 1)

end

end A268335.P11152429600187789782

namespace A268335

/-- `A367407(n+1)*A367419(n+1)` -/
def P11152429600187789782.Spec : Prop :=
  ∀ n, P11152429600187789782.a n = A268335 (n + 1)

end A268335

/-! ## A268335.P7573863058599982332

`lt[(-n)^∏{e}[n, #], 0]`
-/

namespace A268335.P7573863058599982332
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(n : ℤ)) ^ (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A268335.P7573863058599982332

namespace A268335

/-- `lt[(-n)^∏{e}[n, #], 0]` -/
def P7573863058599982332.Spec : Prop :=
  ∀ n, (P7573863058599982332.a n : ℤ) = A268335 (n + 1)

end A268335

/-!
# A268336: a(n) = A174824(n)/n, where A174824(n) = lcm(A002322(n), n) and A002322(n) is the Carmichael lambda function (also known as the reduced totient function or the universal exponent of n).

The programs for A268336, there is no canonical definition to state claims against.
-/

/-! ## A268336.P11477138894539320357

`A174824(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A268336.P11477138894539320357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174824 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A268336.P11477138894539320357

/-! ## A268336.P1412360730380677308

`lcm(n+1, A002322(n+1))/(n+1)`
-/

namespace A268336.P1412360730380677308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A002322 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A268336.P1412360730380677308

/-! ## A268336.P18326890827545918741

`lcm(xor(n, -1), A011773(n+1))/(n+1)`
-/

namespace A268336.P18326890827545918741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (Int.xor (n : ℤ) (-1)) (A011773 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A268336.P18326890827545918741

/-! ## A268336.P2059868711463300987

`A002322(n+1)/A327979(n+1)`
-/

namespace A268336.P2059868711463300987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002322 (n + 1) : ℚ) / (A327979 (n + 1) : ℚ)

end

end A268336.P2059868711463300987

/-! ## A268336.P13241977197578593329

`A002322(A007947(n+1))/A173751(n+1)`
-/

namespace A268336.P13241977197578593329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002322 (A007947 (n + 1)).toNat : ℚ) / (A173751 (n + 1) : ℚ)

end

end A268336.P13241977197578593329

/-! ## A268336.P17933012902754158293

`A002322(n+1)/gcd(A002322(n+1), A131738(n))`
-/

namespace A268336.P17933012902754158293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002322 (n + 1) : ℚ) / (Int.gcd (A002322 (n + 1)) (A131738 n) : ℚ)

end

end A268336.P17933012902754158293

/-! ## A268336.P16237463567036800771

`A011773(n+1)/gcd(A011773(n+1), A048671(n+1))`
-/

namespace A268336.P16237463567036800771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011773 (n + 1) : ℚ) / (Int.gcd (A011773 (n + 1)) (A048671 (n + 1)) : ℚ)

end

end A268336.P16237463567036800771

/-! ## A268336.P9676203813504224120

`A173614(2*(n+1))/A173751(n+1)`
-/

namespace A268336.P9676203813504224120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173614 (2 * (n + 1)) : ℚ) / (A173751 (n + 1) : ℚ)

end

end A268336.P9676203813504224120

/-! ## A268336.P17445835832370452855

`A164306(A002322(n+1)+∑[n])`
-/

namespace A268336.P17445835832370452855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (A002322 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A268336.P17445835832370452855

/-! ## A268336.P10891113711306550271

`A011773((n+1)*∏{p}[n+1, #])/(n+1)`
-/

namespace A268336.P10891113711306550271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011773 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p)) : ℚ) / (n + 1 : ℚ)

end

end A268336.P10891113711306550271

/-! ## A268336.P547879095090765108

`A011773(A064549(n+1))/(n+1)`
-/

namespace A268336.P547879095090765108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011773 (A064549 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A268336.P547879095090765108

/-! ## A268336.P1931906158530213459

`A002322(A354258(n+1))/(n+1)`
-/

namespace A268336.P1931906158530213459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002322 (A354258 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A268336.P1931906158530213459

/-!
# A268337: Numbers which have only digits 0 and 1 in bases 3 and 5.

The programs for A268337, there is no canonical definition to state claims against.
-/

/-! ## A268337.P5243800230500788227

`∩[A129508(n+1), A033042(n)]`
-/

namespace A268337.P5243800230500788227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268337.P5243800230500788227

/-! ## A268337.P3250313951982642163

`∩[A005836(n+1), A033042(n)]`
-/

namespace A268337.P3250313951982642163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268337.P3250313951982642163

/-! ## A268337.P12900166950514759066

`∩[A033042(n), A003278(n+1)-1]`
-/

namespace A268337.P12900166950514759066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268337.P12900166950514759066

/-!
# A268339: Number of polyominoes with width and height equal to n that are invariant under all symmetries of the square.

The programs for A268339, there is no canonical definition to state claims against.
-/

/-! ## A268339.P16217058109629107150

`A268758(ceil((n+1)/2))`
-/

namespace A268339.P16217058109629107150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268758 ⌈(n + 1 : ℚ) / 2⌉.toNat

end

end A268339.P16217058109629107150

/-! ## A268339.P7486897161345072796

`or(A000035(n), A268758(A008619(n)))`
-/

namespace A268339.P7486897161345072796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A268758 (A008619 n).toNat)

end

end A268339.P7486897161345072796

/-! ## A268339.P12782779639307191864

`A268758(A008619(n))+A058026(2*(n+1))`
-/

namespace A268339.P12782779639307191864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268758 (A008619 n).toNat + A058026 (2 * (n + 1))

end

end A268339.P12782779639307191864

/-! ## A268339.P12540521031114257518

`A268758(A008619(n))+A036987(2*(n+2))`
-/

namespace A268339.P12540521031114257518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268758 (A008619 n).toNat + A036987 (2 * (n + 2))

end

end A268339.P12540521031114257518

/-! ## A268339.P473068701942063530

`A010127(2*n+3)*A268758(A008619(n))`
-/

namespace A268339.P473068701942063530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010127 (2 * n + 3) * A268758 (A008619 n).toNat

end

end A268339.P473068701942063530

/-!
# A268340: Characteristic function of the prime powers p^k, k >= 2.

The programs for A268340, the canonical program `A268340.P758938358263668477` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268340 has offset 1).

The definition of A268340 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268340.P758938358263668477

`∑{d}[n+1, A008683((n+1)/#)*(A001222(#)-A001221(#))]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A268340

/-- `∑{d}[n+1, A008683((n+1)/#)*(A001222(#)-A001221(#))]` -/
def P758938358263668477.Spec : Prop :=
  ∀ n, P758938358263668477.a n = A268340 (n + 1)

theorem P758938358263668477.correct : P758938358263668477.Spec := by
  intro n
  simp only [A268340, Nat.add_sub_cancel]

end A268340

/-! ## A268340.P4995852966021382419

`round(n/∏{p}[n+1, #+n])`
-/

namespace A268340.P4995852966021382419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), (p + n) : ℕ) : ℚ))

end

end A268340.P4995852966021382419

namespace A268340

/-- `round(n/∏{p}[n+1, #+n])` -/
def P4995852966021382419.Spec : Prop :=
  ∀ n, P4995852966021382419.a n = A268340 (n + 1)

end A268340

/-! ## A268340.P8125665433169701079

`floor(2*n/∏{p}[n+1, #+n])`
-/

namespace A268340.P8125665433169701079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), (p + n) : ℕ) : ℚ)⌋

end

end A268340.P8125665433169701079

namespace A268340

/-- `floor(2*n/∏{p}[n+1, #+n])` -/
def P8125665433169701079.Spec : Prop :=
  ∀ n, P8125665433169701079.a n = A268340 (n + 1)

end A268340

/-! ## A268340.P1617033380690341057

`floor(n/∏{e}[n+1, n+2-#])`
-/

namespace A268340.P1617033380690341057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), ((n + 2 : ℤ) - (Nat.factorization (f1 n) p : ℤ)) : ℤ) : ℚ)⌋

end

end A268340.P1617033380690341057

namespace A268340

/-- `floor(n/∏{e}[n+1, n+2-#])` -/
def P1617033380690341057.Spec : Prop :=
  ∀ n, P1617033380690341057.a n = A268340 (n + 1)

end A268340

/-! ## A268340.P16613095105981492768

`char[A249435(n+2)]`
-/

namespace A268340.P16613095105981492768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249435 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A268340.P16613095105981492768

namespace A268340

/-- `char[A249435(n+2)]` -/
def P16613095105981492768.Spec : Prop :=
  ∀ n, (P16613095105981492768.a n : ℤ) = A268340 (n + 1)

end A268340

/-! ## A268340.P6941212716921581387

`∑{e}[A182936(n+1), #]`
-/

namespace A268340.P6941212716921581387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182936 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A268340.P6941212716921581387

namespace A268340

/-- `∑{e}[A182936(n+1), #]` -/
def P6941212716921581387.Spec : Prop :=
  ∀ n, (P6941212716921581387.a n : ℤ) = A268340 (n + 1)

end A268340

/-! ## A268340.P3753834943111650009

`char[∑[A053707(n+1)]]`
-/

namespace A268340.P3753834943111650009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053707 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A268340.P3753834943111650009

namespace A268340

/-- `char[∑[A053707(n+1)]]` -/
def P3753834943111650009.Spec : Prop :=
  ∀ n, (P3753834943111650009.a n : ℤ) = A268340 (n + 1)

end A268340

/-! ## A268340.P8917047787186865939

`char[A025475(n+2)-1]`
-/

namespace A268340.P8917047787186865939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A268340.P8917047787186865939

namespace A268340

/-- `char[A025475(n+2)-1]` -/
def P8917047787186865939.Spec : Prop :=
  ∀ n, (P8917047787186865939.a n : ℤ) = A268340 (n + 1)

end A268340

/-! ## A268340.P3626695922007993003

`char[eq[1, A304455(n+1)]]`
-/

namespace A268340.P3626695922007993003
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A268340.P3626695922007993003

namespace A268340

/-- `char[eq[1, A304455(n+1)]]` -/
def P3626695922007993003.Spec : Prop :=
  ∀ n, (P3626695922007993003.a n : ℤ) = A268340 (n + 1)

end A268340

/-! ## A268340.P17685035273320875345

`char[eq[2, A323014(n+1)]]`
-/

namespace A268340.P17685035273320875345
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A268340.P17685035273320875345

namespace A268340

/-- `char[eq[2, A323014(n+1)]]` -/
def P17685035273320875345.Spec : Prop :=
  ∀ n, (P17685035273320875345.a n : ℤ) = A268340 (n + 1)

end A268340

/-! ## A268340.P9060153333525029574

`C(C(2, A056674(n+1)), 2)`
-/

namespace A268340.P9060153333525029574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (A056674 (n + 1)).toNat) 2

end

end A268340.P9060153333525029574

namespace A268340

/-- `C(C(2, A056674(n+1)), 2)` -/
def P9060153333525029574.Spec : Prop :=
  ∀ n, (P9060153333525029574.a n : ℤ) = A268340 (n + 1)

end A268340

/-! ## A268340.P2319322607004907118

`val(A360720(n+1), n+2)`
-/

namespace A268340.P2319322607004907118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A360720 (n + 1)).toNat (n + 2)

end

end A268340.P2319322607004907118

namespace A268340

/-- `val(A360720(n+1), n+2)` -/
def P2319322607004907118.Spec : Prop :=
  ∀ n, (P2319322607004907118.a n : ℤ) = A268340 (n + 1)

end A268340

/-! ## A268340.P6328713778527417078

`val(A380400(n+1), n+2)`
-/

namespace A268340.P6328713778527417078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A380400 (n + 1)).toNat (n + 2)

end

end A268340.P6328713778527417078

namespace A268340

/-- `val(A380400(n+1), n+2)` -/
def P6328713778527417078.Spec : Prop :=
  ∀ n, (P6328713778527417078.a n : ℤ) = A268340 (n + 1)

end A268340

/-! ## A268340.P5312190005209410736

`val(A399733(n+1), n+2)`
-/

namespace A268340.P5312190005209410736
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A399733 (n + 1)).toNat (n + 2)

end

end A268340.P5312190005209410736

namespace A268340

/-- `val(A399733(n+1), n+2)` -/
def P5312190005209410736.Spec : Prop :=
  ∀ n, (P5312190005209410736.a n : ℤ) = A268340 (n + 1)

end A268340

/-! ## A268340.P4036352065533539980

`val(A399740(n+1), n+2)`
-/

namespace A268340.P4036352065533539980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A399740 (n + 1)).toNat (n + 2)

end

end A268340.P4036352065533539980

namespace A268340

/-- `val(A399740(n+1), n+2)` -/
def P4036352065533539980.Spec : Prop :=
  ∀ n, (P4036352065533539980.a n : ℤ) = A268340 (n + 1)

end A268340

/-! ## A268340.P14487206418606123484

`C(A286875(n+1), n+1)`
-/

namespace A268340.P14487206418606123484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A286875 (n + 1)).toNat (n + 1)

end

end A268340.P14487206418606123484

namespace A268340

/-- `C(A286875(n+1), n+1)` -/
def P14487206418606123484.Spec : Prop :=
  ∀ n, (P14487206418606123484.a n : ℤ) = A268340 (n + 1)

end A268340

/-! ## A268340.P11583683328840834730

`A010051(A005730(n+1))`
-/

namespace A268340.P11583683328840834730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A005730 (n + 1)).toNat

end

end A268340.P11583683328840834730

namespace A268340

/-- `A010051(A005730(n+1))` -/
def P11583683328840834730.Spec : Prop :=
  ∀ n, P11583683328840834730.a n = A268340 (n + 1)

end A268340

/-! ## A268340.P12736957673594219166

`A069513(A005451(n+1))`
-/

namespace A268340.P12736957673594219166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (A005451 (n + 1)).toNat

end

end A268340.P12736957673594219166

namespace A268340

/-- `A069513(A005451(n+1))` -/
def P12736957673594219166.Spec : Prop :=
  ∀ n, P12736957673594219166.a n = A268340 (n + 1)

end A268340

/-! ## A268340.P17393540984111909093

`A069513(A048671(n+1))`
-/

namespace A268340.P17393540984111909093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (A048671 (n + 1)).toNat

end

end A268340.P17393540984111909093

namespace A268340

/-- `A069513(A048671(n+1))` -/
def P17393540984111909093.Spec : Prop :=
  ∀ n, P17393540984111909093.a n = A268340 (n + 1)

end A268340

/-!
# A268342: Number of edges in the unitary addition Cayley graph Gn.

The programs for A268342, the canonical program `A268342.P2994912032385983064` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268342 has offset 1).

The definition of A268342 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268342.P4767348636719375496

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*floor((n+1)/gcd(2, n))`
-/

namespace A268342.P4767348636719375496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) * (⌊(n + 1 : ℚ) / (Nat.gcd 2 n : ℚ)⌋ : ℚ)

end

end A268342.P4767348636719375496

namespace A268342

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*floor((n+1)/gcd(2, n))` -/
def P4767348636719375496.Spec : Prop :=
  ∀ n, P4767348636719375496.a n = (A268342 (n + 1) : ℚ)

end A268342

/-! ## A268342.P2994912032385983064

`2*ceil((n+1)*∏{p}[n+1, #-1]/∏{p}[2*(n+1), #])*ceil(n/2)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A268342

/-- `2*ceil((n+1)*∏{p}[n+1, #-1]/∏{p}[2*(n+1), #])*ceil(n/2)` -/
def P2994912032385983064.Spec : Prop :=
  ∀ n, P2994912032385983064.a n = A268342 (n + 1)

theorem P2994912032385983064.correct : P2994912032385983064.Spec := by
  intro n
  simp only [A268342, Nat.add_sub_cancel]

end A268342

/-! ## A268342.P12847513322772612996

`ceil(n/2)*Δ[A049690(n)]`
-/

namespace A268342.P12847513322772612996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ * (f1 (n + 1) - f1 n)

end

end A268342.P12847513322772612996

namespace A268342

/-- `ceil(n/2)*Δ[A049690(n)]` -/
def P12847513322772612996.Spec : Prop :=
  ∀ n, P12847513322772612996.a n = A268342 (n + 1)

end A268342

/-! ## A268342.P1381149487501834730

`ceil(n/2)*A062570(n+1)`
-/

namespace A268342.P1381149487501834730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ * A062570 (n + 1)

end

end A268342.P1381149487501834730

namespace A268342

/-- `ceil(n/2)*A062570(n+1)` -/
def P1381149487501834730.Spec : Prop :=
  ∀ n, P1381149487501834730.a n = A268342 (n + 1)

end A268342

/-! ## A268342.P6186554564794268972

`(n%2+n)*A055034(n+1)`
-/

namespace A268342.P6186554564794268972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 + n : ℕ) : ℤ) * A055034 (n + 1)

end

end A268342.P6186554564794268972

namespace A268342

/-- `(n%2+n)*A055034(n+1)` -/
def P6186554564794268972.Spec : Prop :=
  ∀ n, P6186554564794268972.a n = A268342 (n + 1)

end A268342

/-! ## A268342.P9778262048745048237

`ceil(n/2)*A000010(2*(n+1))`
-/

namespace A268342.P9778262048745048237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ * A000010 (2 * (n + 1))

end

end A268342.P9778262048745048237

namespace A268342

/-- `ceil(n/2)*A000010(2*(n+1))` -/
def P9778262048745048237.Spec : Prop :=
  ∀ n, P9778262048745048237.a n = A268342 (n + 1)

end A268342

/-! ## A268342.P9705224851553596616

`A000010(n+2+n)*∑[and(1, n)]`
-/

namespace A268342.P9705224851553596616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2 + n) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A268342.P9705224851553596616

namespace A268342

/-- `A000010(n+2+n)*∑[and(1, n)]` -/
def P9705224851553596616.Spec : Prop :=
  ∀ n, P9705224851553596616.a n = A268342 (n + 1)

end A268342

/-! ## A268342.P11087700443669269310

`A000010(Δ[n²]+1)*∑[char[n+1+n]]`
-/

namespace A268342.P11087700443669269310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A268342.P11087700443669269310

namespace A268342

/-- `A000010(Δ[n²]+1)*∑[char[n+1+n]]` -/
def P11087700443669269310.Spec : Prop :=
  ∀ n, P11087700443669269310.a n = A268342 (n + 1)

end A268342

/-! ## A268342.P4046331182971962738

`A062570(n+1)*A110654(n)`
-/

namespace A268342.P4046331182971962738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (n + 1) * A110654 n

end

end A268342.P4046331182971962738

namespace A268342

/-- `A062570(n+1)*A110654(n)` -/
def P4046331182971962738.Spec : Prop :=
  ∀ n, P4046331182971962738.a n = A268342 (n + 1)

end A268342

/-! ## A268342.P13740613186603335134

`ceil(n/2)*A225530(2*(n+1))`
-/

namespace A268342.P13740613186603335134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ * A225530 (2 * (n + 1))

end

end A268342.P13740613186603335134

namespace A268342

/-- `ceil(n/2)*A225530(2*(n+1))` -/
def P13740613186603335134.Spec : Prop :=
  ∀ n, P13740613186603335134.a n = A268342 (n + 1)

end A268342

/-!
# A268343: Hermit primes: primes which are not a nearest neighbor of another prime.

The programs for A268343, the canonical program `A268343.P13116901143195206810` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268343 has offset 1).

The definition of A268343 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268343.P13116901143195206810

`A000040(∩[A258026(n+1), A358529(n+1)])`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A268343

/-- `A000040(∩[A258026(n+1), A358529(n+1)])` -/
def P13116901143195206810.Spec : Prop :=
  ∀ n, P13116901143195206810.a n = A268343 (n + 1)

theorem P13116901143195206810.correct : P13116901143195206810.Spec := by
  intro n
  simp only [A268343, Nat.add_sub_cancel]

end A268343

/-! ## A268343.P2143131591270760219

`∩[A147812(n+1), A358528(n+1)]`
-/

namespace A268343.P2143131591270760219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268343.P2143131591270760219

namespace A268343

/-- `∩[A147812(n+1), A358528(n+1)]` -/
def P2143131591270760219.Spec : Prop :=
  ∀ n, (P2143131591270760219.a n : ℤ) = A268343 (n + 1)

end A268343

/-! ## A268343.P10753251915420810828

`∩[A000040(A258026(n+1)), A358528(n+1)]`
-/

namespace A268343.P10753251915420810828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A258026 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268343.P10753251915420810828

namespace A268343

/-- `∩[A000040(A258026(n+1)), A358528(n+1)]` -/
def P10753251915420810828.Spec : Prop :=
  ∀ n, (P10753251915420810828.a n : ℤ) = A268343 (n + 1)

end A268343

/-! ## A268343.P4197176313715183364

`A007510(lt[A217102(n+2), A005875(n)])`
-/

namespace A268343.P4197176313715183364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217102 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A268343.P4197176313715183364

namespace A268343

/-- `A007510(lt[A217102(n+2), A005875(n)])` -/
def P4197176313715183364.Spec : Prop :=
  ∀ n, P4197176313715183364.a n = A268343 (n + 1)

end A268343

/-!
# A268344: a(n) = 11*a(n - 1) - 3*a(n - 2) for n>1, a(0)=0, a(1)=1.

The programs for A268344, the canonical program `A268344.P14894302229094883460` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268344 has offset 0).

The definition of A268344 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*a(n-1)-3*a(n-2)` (program `A268344.P14894302229094883460`, by `A268344.P14894302229094883460.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A268344.P11661253224493809703

`ogf(x/(1-11x+3x^2))`
-/

namespace A268344.P11661253224493809703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -11, 3] n

end

end A268344.P11661253224493809703

namespace A268344

/-- `ogf(x/(1-11x+3x^2))` -/
def P11661253224493809703.Spec : Prop :=
  ∀ n, P11661253224493809703.a n = A268344 n

end A268344

/-! ## A268344.P14894302229094883460

`11*a(n-1)-3*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A268344

/-- `11*a(n-1)-3*a(n-2)` -/
def P14894302229094883460.Spec : Prop :=
  ∀ n, P14894302229094883460.a n = A268344 n

theorem P14894302229094883460.correct : P14894302229094883460.Spec := by
  intro n
  simp only [A268344]

end A268344

/-! ## A268344.P7642810493198268690

`(((11+sqrt(109))/2)^n-((11-sqrt(109))/2)^n)/sqrt(109)`
-/

namespace A268344.P7642810493198268690
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((11 + Real.sqrt (109 : ℝ)) / 2) ^ n - ((11 - Real.sqrt (109 : ℝ)) / 2) ^ n) / Real.sqrt (109 : ℝ)

end

end A268344.P7642810493198268690

namespace A268344

/-- `(((11+sqrt(109))/2)^n-((11-sqrt(109))/2)^n)/sqrt(109)` -/
def P7642810493198268690.Spec : Prop :=
  ∀ n, P7642810493198268690.a n = (A268344 n : ℝ)

theorem P7642810493198268690.correct : P7642810493198268690.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A268344, Nat.add_sub_cancel, A268344.P7642810493198268690.a, A268344.P14894302229094883460.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A268344, Nat.add_sub_cancel, A268344.P7642810493198268690.a, A268344.P14894302229094883460.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A268344

/-!
# A268345: Number of partitions of (2, n) into a sum of distinct pairs.

The programs for A268345, there is no canonical definition to state claims against.
-/

/-! ## A268345.P18374462056734386912

`A346822(n)-A096914(n+2)`
-/

namespace A268345.P18374462056734386912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346822 n - A096914 (n + 2)

end

end A268345.P18374462056734386912

/-! ## A268345.P15614410033243474262

`∑[A000009(n)+∑[A096765(n)]]`
-/

namespace A268345.P15614410033243474262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268345.P15614410033243474262

/-! ## A268345.P12121491223075577895

`∑[A096765(n)+∑[A025147(n)]]`
-/

namespace A268345.P12121491223075577895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268345.P12121491223075577895

/-! ## A268345.P8571311701382611644

`A346822(n)-(A000009(n)+a(n-1))` with `a(0)=1`
-/

namespace A268345.P8571311701382611644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A346822 n - (A000009 n + a (n - 1))

end

end A268345.P8571311701382611644

/-! ## A268345.P13935769737712430886

`∑[A038348(n)+A000009(n)]-A038348(n)`
-/

namespace A268345.P13935769737712430886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038348 n + A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A038348 n

end

end A268345.P13935769737712430886

/-! ## A268345.P15691306131066436484

`A096914(n+3)-A000009(n+1)`
-/

namespace A268345.P15691306131066436484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096914 (n + 3) - A000009 (n + 1)

end

end A268345.P15691306131066436484

/-! ## A268345.P5312920974312204852

`∑[A096765(n)+∑[A096765(n+1)]]`
-/

namespace A268345.P5312920974312204852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268345.P5312920974312204852

/-! ## A268345.P12002116531281523960

`A096914(n+3)+A036469(n)-A036469(n+1)`
-/

namespace A268345.P12002116531281523960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096914 (n + 3) + (A036469 n - A036469 (n + 1))

end

end A268345.P12002116531281523960

/-! ## A268345.P11641195098617747874

`∑[(A036469(n)+A032303(n))/2]`
-/

namespace A268345.P11641195098617747874
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036469 n + A032303 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268345.P11641195098617747874

/-! ## A268345.P910093950869992539

`∑[∑[A015745(n)]]-A015737(n+1)`
-/

namespace A268345.P910093950869992539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015745 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A015737 (n + 1)

end

end A268345.P910093950869992539

/-!
# A268346: Number of partitions of (3, n) into a sum of distinct pairs.

The programs for A268346, there is no canonical definition to state claims against.
-/

/-! ## A268346.P2370347111016395883

`A054242(∑[n+4]+2)`
-/

namespace A268346.P2370347111016395883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054242 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A268346.P2370347111016395883

/-! ## A268346.P14548972976680714064

`or(char[1], A054242(A167614(n+2)))`
-/

namespace A268346.P14548972976680714064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A054242 (A167614 (n + 2)).toNat)

end

end A268346.P14548972976680714064

/-! ## A268346.P10828527221993858459

`abs(A033999(n)*A054242(A167614(n+2)))`
-/

namespace A268346.P10828527221993858459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A054242 (A167614 (n + 2)).toNat|

end

end A268346.P10828527221993858459

/-! ## A268346.P4281252625084863898

`A054242(A167614(n+2))%A000032(n+4)`
-/

namespace A268346.P4281252625084863898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054242 (A167614 (n + 2)).toNat) (A000032 (n + 4))

end

end A268346.P4281252625084863898

/-! ## A268346.P4255709924151988385

`gcd(5, A000032(n))*A054242(A167614(n+2))`
-/

namespace A268346.P4255709924151988385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 5 (A000032 n) : ℤ) * A054242 (A167614 (n + 2)).toNat

end

end A268346.P4255709924151988385

/-!
# A268347: Number of partitions of (4, n) into a sum of distinct pairs.

The programs for A268347, there is no canonical definition to state claims against.
-/

/-! ## A268347.P11570474918768244493

`A054242(∑[n+5]+5)`
-/

namespace A268347.P11570474918768244493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054242 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A268347.P11570474918768244493

/-! ## A268347.P8749553593940761396

`and(-1, A054242(A052905(n+2)))`
-/

namespace A268347.P8749553593940761396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A054242 (A052905 (n + 2)).toNat)

end

end A268347.P8749553593940761396

/-! ## A268347.P10326348064530439387

`or(char[1], A054242(A167499(n+3)-1))`
-/

namespace A268347.P10326348064530439387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A054242 (A167499 (n + 3) - 1).toNat)

end

end A268347.P10326348064530439387

/-! ## A268347.P16422474475664202588

`A054242(A052905(n+2))%A190049(n)`
-/

namespace A268347.P16422474475664202588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054242 (A052905 (n + 2)).toNat) (A190049 n)

end

end A268347.P16422474475664202588

/-! ## A268347.P1265500127358293459

`A054242(A052905(n+2))+val(A083954(n), 7)`
-/

namespace A268347.P1265500127358293459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054242 (A052905 (n + 2)).toNat + (SequenceMachineLib.valuation (A083954 n).toNat 7 : ℤ)

end

end A268347.P1265500127358293459

/-! ## A268347.P1389556596545902530

`A054242(A052905(n+2))+val(A016813(n), 32)`
-/

namespace A268347.P1389556596545902530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054242 (A052905 (n + 2)).toNat + (SequenceMachineLib.valuation (A016813 n).toNat 32 : ℤ)

end

end A268347.P1389556596545902530

/-! ## A268347.P9999817005784436968

`A054242(A052905(n+2))+A010051((n+9)²)`
-/

namespace A268347.P9999817005784436968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054242 (A052905 (n + 2)).toNat + A010051 ((n + 9) ^ 2)

end

end A268347.P9999817005784436968

/-! ## A268347.P16129525173149276282

`A054242(A052905(n+2))+A008683(4*(n+1))`
-/

namespace A268347.P16129525173149276282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054242 (A052905 (n + 2)).toNat + A008683 (4 * (n + 1))

end

end A268347.P16129525173149276282

/-! ## A268347.P10436981493028543137

`A054242(A167499(n+3)-1)%A000032(n+4)`
-/

namespace A268347.P10436981493028543137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054242 (A167499 (n + 3) - 1).toNat) (A000032 (n + 4))

end

end A268347.P10436981493028543137

/-! ## A268347.P10488057893269425137

`A007318(C(2, n))*A054242(A167499(n+3)-1)`
-/

namespace A268347.P10488057893269425137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A054242 (A167499 (n + 3) - 1).toNat

end

end A268347.P10488057893269425137

/-!
# A268348: Number of partitions of (5, n) into a sum of distinct pairs.

The programs for A268348, there is no canonical definition to state claims against.
-/

/-! ## A268348.P856071570640707120

`A054242(C(n+6, 2)+5)`
-/

namespace A268348.P856071570640707120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054242 (Nat.choose (n + 6) 2 + 5)

end

end A268348.P856071570640707120

/-! ## A268348.P6911943668979649453

`A054242(A055999(n+3))`
-/

namespace A268348.P6911943668979649453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054242 (A055999 (n + 3)).toNat

end

end A268348.P6911943668979649453

/-! ## A268348.P12140351618473697389

`A054242(A167499(n+4))`
-/

namespace A268348.P12140351618473697389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054242 (A167499 (n + 4)).toNat

end

end A268348.P12140351618473697389

/-! ## A268348.P6472347956763900891

`A054242(A077169(n+6))`
-/

namespace A268348.P6472347956763900891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054242 (A077169 (n + 6)).toNat

end

end A268348.P6472347956763900891

/-! ## A268348.P17395984982681105899

`A054242(A056119(n)+15)`
-/

namespace A268348.P17395984982681105899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054242 (A056119 n + 15).toNat

end

end A268348.P17395984982681105899

/-! ## A268348.P234045390578257241

`A054242(A056115(n)+20)`
-/

namespace A268348.P234045390578257241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054242 (A056115 n + 20).toNat

end

end A268348.P234045390578257241

/-! ## A268348.P12954412742189912744

`A054242(eq[5, A002262(n)])`
-/

namespace A268348.P12954412742189912744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054242 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268348.P12954412742189912744

/-! ## A268348.P607651759064303230

`A054242(eq[5, A025581(n)])`
-/

namespace A268348.P607651759064303230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054242 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268348.P607651759064303230

/-! ## A268348.P13479057969671781085

`A054242(Δ[A023551(n+1)])`
-/

namespace A268348.P13479057969671781085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054242 (f1 (n + 1) - f1 n).toNat

end

end A268348.P13479057969671781085

/-! ## A268348.P3014229055753018029

`A054242(Δ[A026054(n+3)])`
-/

namespace A268348.P3014229055753018029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054242 (f1 (n + 1) - f1 n).toNat

end

end A268348.P3014229055753018029

/-!
# A268349: Expansion of (1 + x - x^2 - 6*x^3)/(1 - x - 2*x^2 - 3*x^3 - 4*x^4).

The programs for A268349, the canonical program `A268349.P13810137936357113160` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268349 has offset 0).

The definition of A268349 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-x^2-6x^3)/(1-x-2x^2-3x^3-4x^4))` (program `A268349.P13810137936357113160`, by `A268349.P13810137936357113160.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A268349.P13810137936357113160

`ogf((1+x-x^2-6x^3)/(1-x-2x^2-3x^3-4x^4))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A268349

/-- `ogf((1+x-x^2-6x^3)/(1-x-2x^2-3x^3-4x^4))` -/
def P13810137936357113160.Spec : Prop :=
  ∀ n, P13810137936357113160.a n = A268349 n

theorem P13810137936357113160.correct : P13810137936357113160.Spec := by
  intro n
  simp only [A268349]

end A268349

/-! ## A268349.P6234661487045396539

`4*a(n-4)+3*a(n-3)+2*a(n-2)+a(n-1)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A268349.P6234661487045396539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4] fun n a =>
  4 * a (n - 4) + 3 * a (n - 3) + 2 * a (n - 2) + a (n - 1)

end

end A268349.P6234661487045396539

namespace A268349

/-- `4*a(n-4)+3*a(n-3)+2*a(n-2)+a(n-1)` -/
def P6234661487045396539.Spec : Prop :=
  ∀ n, (P6234661487045396539.a n : ℤ) = A268349 n

end A268349

/-! ## A268349.P11819670952413842816

`A361674(A194814(n+1)*A287277(n))`
-/

namespace A268349.P11819670952413842816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361674 (A194814 (n + 1) * A287277 n).toNat

end

end A268349.P11819670952413842816

namespace A268349

/-- `A361674(A194814(n+1)*A287277(n))` -/
def P11819670952413842816.Spec : Prop :=
  ∀ n, P11819670952413842816.a n = A268349 n

end A268349

/-!
# A268351: a(n) = 3*n*(9*n - 1)/2.

The programs for A268351, the canonical program `A268351.P3116761459007713392` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268351 has offset 0).

The definition of A268351 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n*(9*n-1)/2` (program `A268351.P2787502647976843364`, by `A268351.P2787502647976843364.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A268351.P8415802728447319119

`C(9*n, 2)/3`
-/

namespace A268351.P8415802728447319119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (9 * n) 2 : ℚ) / 3

end

end A268351.P8415802728447319119

namespace A268351

/-- `C(9*n, 2)/3` -/
def P8415802728447319119.Spec : Prop :=
  ∀ n, P8415802728447319119.a n = (A268351 n : ℚ)

end A268351

/-! ## A268351.P12480097409933872920

`ogf((12x+15x^2)/(1-3x+3x^2-x^3))`
-/

namespace A268351.P12480097409933872920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 12, 15] [1, -3, 3, -1] n

end

end A268351.P12480097409933872920

namespace A268351

/-- `ogf((12x+15x^2)/(1-3x+3x^2-x^3))` -/
def P12480097409933872920.Spec : Prop :=
  ∀ n, P12480097409933872920.a n = A268351 n

end A268351

/-! ## A268351.P2787502647976843364

`3*n*(9*n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A268351.P2787502647976843364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n : ℤ) * ((9 * n : ℤ) - 1) : ℚ) / 2

end

end A268351.P2787502647976843364

namespace A268351

/-- `3*n*(9*n-1)/2` -/
def P2787502647976843364.Spec : Prop :=
  ∀ n, P2787502647976843364.a n = (A268351 n : ℚ)

theorem P2787502647976843364.correct : P2787502647976843364.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A268351, Nat.add_sub_cancel, A268351.P2787502647976843364.a, A268351.P3116761459007713392.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A268351, Nat.add_sub_cancel, A268351.P2787502647976843364.a, A268351.P3116761459007713392.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A268351

/-! ## A268351.P3116761459007713392

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=12, a(2)=51`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A268351

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P3116761459007713392.Spec : Prop :=
  ∀ n, P3116761459007713392.a n = A268351 n

theorem P3116761459007713392.correct : P3116761459007713392.Spec := by
  intro n
  simp only [A268351]

end A268351

/-! ## A268351.P4952567758556386903

`3*A022266(n)`
-/

namespace A268351.P4952567758556386903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A022266 n

end

end A268351.P4952567758556386903

namespace A268351

/-- `3*A022266(n)` -/
def P4952567758556386903.Spec : Prop :=
  ∀ n, P4952567758556386903.a n = A268351 n

end A268351

/-! ## A268351.P13825011272143313826

`A022284(n)-n`
-/

namespace A268351.P13825011272143313826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022284 n - (n : ℤ)

end

end A268351.P13825011272143313826

namespace A268351

/-- `A022284(n)-n` -/
def P13825011272143313826.Spec : Prop :=
  ∀ n, P13825011272143313826.a n = A268351 n

end A268351

/-! ## A268351.P8557948235274935107

`A000326(3*n)`
-/

namespace A268351.P8557948235274935107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (3 * n)

end

end A268351.P8557948235274935107

namespace A268351

/-- `A000326(3*n)` -/
def P8557948235274935107.Spec : Prop :=
  ∀ n, P8557948235274935107.a n = A268351 n

end A268351

/-! ## A268351.P1008614576086366525

`A211538(6*n+2)`
-/

namespace A268351.P1008614576086366525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211538 (6 * n + 2)

end

end A268351.P1008614576086366525

namespace A268351

/-- `A211538(6*n+2)` -/
def P1008614576086366525.Spec : Prop :=
  ∀ n, P1008614576086366525.a n = A268351 n

end A268351

/-! ## A268351.P13745736613799003281

`∑[a(n-1)+27]` with `a(0)=0, a(1)=12`
-/

namespace A268351.P13745736613799003281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 12] fun n f1 =>
  f1 (n - 1) + 27

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268351.P13745736613799003281

namespace A268351

/-- `∑[a(n-1)+27]` -/
def P13745736613799003281.Spec : Prop :=
  ∀ n, (P13745736613799003281.a n : ℤ) = A268351 n

end A268351

/-! ## A268351.P7431402358345352757

`3*(C(n, 2)+(2*n)²)`
-/

namespace A268351.P7431402358345352757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (Nat.choose n 2 + (2 * n) ^ 2)

end

end A268351.P7431402358345352757

namespace A268351

/-- `3*(C(n, 2)+(2*n)²)` -/
def P7431402358345352757.Spec : Prop :=
  ∀ n, (P7431402358345352757.a n : ℤ) = A268351 n

end A268351

/-! ## A268351.P10816147685751507031

`∑[2*n]+C(5*n, 2)`
-/

namespace A268351.P10816147685751507031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (5 * n) 2

end

end A268351.P10816147685751507031

namespace A268351

/-- `∑[2*n]+C(5*n, 2)` -/
def P10816147685751507031.Spec : Prop :=
  ∀ n, (P10816147685751507031.a n : ℤ) = A268351 n

end A268351

/-! ## A268351.P11331821209531549367

`A195024(n)-∑[n]`
-/

namespace A268351.P11331821209531549367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195024 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A268351.P11331821209531549367

namespace A268351

/-- `A195024(n)-∑[n]` -/
def P11331821209531549367.Spec : Prop :=
  ∀ n, P11331821209531549367.a n = A268351 n

end A268351

/-! ## A268351.P3560843280735934792

`3*(A276819(n)-1)`
-/

namespace A268351.P3560843280735934792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A276819 n - 1)

end

end A268351.P3560843280735934792

namespace A268351

/-- `3*(A276819(n)-1)` -/
def P3560843280735934792.Spec : Prop :=
  ∀ n, P3560843280735934792.a n = A268351 n

end A268351

/-! ## A268351.P14461611531851228985

`A022285(n)-2*n`
-/

namespace A268351.P14461611531851228985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022285 n - (2 * n : ℤ)

end

end A268351.P14461611531851228985

namespace A268351

/-- `A022285(n)-2*n` -/
def P14461611531851228985.Spec : Prop :=
  ∀ n, P14461611531851228985.a n = A268351 n

end A268351

/-! ## A268351.P1967640718700655985

`3*(A062741(n)+n)`
-/

namespace A268351.P1967640718700655985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A062741 n + (n : ℤ))

end

end A268351.P1967640718700655985

namespace A268351

/-- `3*(A062741(n)+n)` -/
def P1967640718700655985.Spec : Prop :=
  ∀ n, P1967640718700655985.a n = A268351 n

end A268351

/-! ## A268351.P11222400356803421463

`A152996(n)+3*n`
-/

namespace A268351.P11222400356803421463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152996 n + (3 * n : ℤ)

end

end A268351.P11222400356803421463

namespace A268351

/-- `A152996(n)+3*n` -/
def P11222400356803421463.Spec : Prop :=
  ∀ n, P11222400356803421463.a n = A268351 n

end A268351

/-! ## A268351.P5623478438587885055

`3*(A022267(n)-n)`
-/

namespace A268351.P5623478438587885055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A022267 n - (n : ℤ))

end

end A268351.P5623478438587885055

namespace A268351

/-- `3*(A022267(n)-n)` -/
def P5623478438587885055.Spec : Prop :=
  ∀ n, P5623478438587885055.a n = A268351 n

end A268351

/-! ## A268351.P14211262165799302488

`A022286(n)-∑[2*n]`
-/

namespace A268351.P14211262165799302488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022286 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A268351.P14211262165799302488

namespace A268351

/-- `A022286(n)-∑[2*n]` -/
def P14211262165799302488.Spec : Prop :=
  ∀ n, P14211262165799302488.a n = A268351 n

end A268351

/-! ## A268351.P2960745050694045001

`n²+A022282(n)-n`
-/

namespace A268351.P2960745050694045001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A022282 n - (n : ℤ))

end

end A268351.P2960745050694045001

namespace A268351

/-- `n²+A022282(n)-n` -/
def P2960745050694045001.Spec : Prop :=
  ∀ n, P2960745050694045001.a n = A268351 n

end A268351

/-! ## A268351.P15156728053309213699

`A144555(n)-(∑[n]+n)`
-/

namespace A268351.P15156728053309213699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144555 n - ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ)

end

end A268351.P15156728053309213699

namespace A268351

/-- `A144555(n)-(∑[n]+n)` -/
def P15156728053309213699.Spec : Prop :=
  ∀ n, P15156728053309213699.a n = A268351 n

end A268351

/-!
# A268353: a(n) is the exponent of 2 corresponding to the n-th Proth prime.

The programs for A268353, the canonical program `A268353.P10442916145150323975` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268353 has offset 1).

The definition of A268353 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080076, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A268353.P10442916145150323975

`A007814(A080076(n+1)-1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A268353

/-- `A007814(A080076(n+1)-1)` -/
def P10442916145150323975.Spec : Prop :=
  ∀ n, P10442916145150323975.a n = A268353 (n + 1)

theorem P10442916145150323975.correct : P10442916145150323975.Spec := by
  intro n
  simp only [A268353, Nat.add_sub_cancel]

end A268353

/-! ## A268353.P14295884521480620122

`val(p?[A080075(n+1)]-1, 2)`
-/

namespace A268353.P14295884521480620122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080075 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat 2

end

end A268353.P14295884521480620122

namespace A268353

/-- `val(p?[A080075(n+1)]-1, 2)` -/
def P14295884521480620122.Spec : Prop :=
  ∀ n, (P14295884521480620122.a n : ℤ) = A268353 (n + 1)

end A268353

/-! ## A268353.P14288596255150193755

`val(p?[A112714(n+1)+2]-1, 2)`
-/

namespace A268353.P14288596255150193755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112714 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat 2

end

end A268353.P14288596255150193755

namespace A268353

/-- `val(p?[A112714(n+1)+2]-1, 2)` -/
def P14288596255150193755.Spec : Prop :=
  ∀ n, (P14288596255150193755.a n : ℤ) = A268353 (n + 1)

end A268353

/-! ## A268353.P7873602863731149222

`val(p?[2*A082662(n+1)+1]-1, 2)`
-/

namespace A268353.P7873602863731149222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082662 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat 2

end

end A268353.P7873602863731149222

namespace A268353

/-- `val(p?[2*A082662(n+1)+1]-1, 2)` -/
def P7873602863731149222.Spec : Prop :=
  ∀ n, (P7873602863731149222.a n : ℤ) = A268353 (n + 1)

end A268353

/-! ## A268353.P2368756367394583413

`val(xor(1, p?[A080075(n-(1-4/2))]-1)-1, 2)`
-/

namespace A268353.P2368756367394583413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080075 (SequenceMachineLib.roundAway ((n : ℚ) - (1 - (4 : ℚ) / 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1) - 1).toNat 2

end

end A268353.P2368756367394583413

namespace A268353

/-- `val(xor(1, p?[A080075(n-(1-4/2))]-1)-1, 2)` -/
def P2368756367394583413.Spec : Prop :=
  ∀ n, (P2368756367394583413.a n : ℤ) = A268353 (n + 1)

end A268353

/-! ## A268353.P14197686618923014578

`val(p?[A082662(A080637(n+1))+1]-1, 2)`
-/

namespace A268353.P14197686618923014578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082662 (A080637 (n + 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat 2

end

end A268353.P14197686618923014578

namespace A268353

/-- `val(p?[A082662(A080637(n+1))+1]-1, 2)` -/
def P14197686618923014578.Spec : Prop :=
  ∀ n, (P14197686618923014578.a n : ℤ) = A268353 (n + 1)

end A268353

/-! ## A268353.P14665700314594525703

`A051903(A080076(n+1)-1)`
-/

namespace A268353.P14665700314594525703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A080076 (n + 1) - 1).toNat

end

end A268353.P14665700314594525703

namespace A268353

/-- `A051903(A080076(n+1)-1)` -/
def P14665700314594525703.Spec : Prop :=
  ∀ n, P14665700314594525703.a n = A268353 (n + 1)

end A268353

/-! ## A268353.P16029142826069513811

`val(record[A006530(A112714(n+1)+2)]-1, 2)`
-/

namespace A268353.P16029142826069513811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A112714 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1).toNat 2

end

end A268353.P16029142826069513811

namespace A268353

/-- `val(record[A006530(A112714(n+1)+2)]-1, 2)` -/
def P16029142826069513811.Spec : Prop :=
  ∀ n, (P16029142826069513811.a n : ℤ) = A268353 (n + 1)

end A268353

/-! ## A268353.P8321318525152680827

`A051903(A000010(A080076(n+1)))`
-/

namespace A268353.P8321318525152680827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A000010 (A080076 (n + 1)).toNat).toNat

end

end A268353.P8321318525152680827

namespace A268353

/-- `A051903(A000010(A080076(n+1)))` -/
def P8321318525152680827.Spec : Prop :=
  ∀ n, P8321318525152680827.a n = A268353 (n + 1)

end A268353

/-!
# A268354: Highest power of 7 dividing n.

The programs for A268354, the canonical program `A268354.P8951824794683086161` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268354 has offset 1).

The definition of A268354 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268354.P10115715284015612897

`7^val(n+1, 7)`
-/

namespace A268354.P10115715284015612897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ SequenceMachineLib.valuation (n + 1) 7

end

end A268354.P10115715284015612897

namespace A268354

/-- `7^val(n+1, 7)` -/
def P10115715284015612897.Spec : Prop :=
  ∀ n, (P10115715284015612897.a n : ℤ) = A268354 (n + 1)

end A268354

/-! ## A268354.P8951824794683086161

`7^A214411(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A268354

/-- `7^A214411(n+1)` -/
def P8951824794683086161.Spec : Prop :=
  ∀ n, P8951824794683086161.a n = (A268354 (n + 1) : ℚ)

end A268354

/-! ## A268354.P15790991204846882497

`(n+1)/A242603(n+1)`
-/

namespace A268354.P15790991204846882497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A242603 (n + 1) : ℚ)

end

end A268354.P15790991204846882497

namespace A268354

/-- `(n+1)/A242603(n+1)` -/
def P15790991204846882497.Spec : Prop :=
  ∀ n, P15790991204846882497.a n = (A268354 (n + 1) : ℚ)

end A268354

/-! ## A268354.P8535320861144881649

`gcd(n+1, (7*n)²²)`
-/

namespace A268354.P8535320861144881649
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (((7 * n) ^ 2) ^ 2)

end

end A268354.P8535320861144881649

namespace A268354

/-- `gcd(n+1, (7*n)²²)` -/
def P8535320861144881649.Spec : Prop :=
  ∀ n, (P8535320861144881649.a n : ℤ) = A268354 (n + 1)

end A268354

/-! ## A268354.P932572959562750309

`A000420(val(n+1, 7))`
-/

namespace A268354.P932572959562750309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (SequenceMachineLib.valuation (n + 1) 7)

end

end A268354.P932572959562750309

namespace A268354

/-- `A000420(val(n+1, 7))` -/
def P932572959562750309.Spec : Prop :=
  ∀ n, P932572959562750309.a n = A268354 (n + 1)

end A268354

/-! ## A268354.P17713635911727907261

`A206453(val(n+1, 7))`
-/

namespace A268354.P17713635911727907261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206453 (SequenceMachineLib.valuation (n + 1) 7)

end

end A268354.P17713635911727907261

namespace A268354

/-- `A206453(val(n+1, 7))` -/
def P17713635911727907261.Spec : Prop :=
  ∀ n, P17713635911727907261.a n = A268354 (n + 1)

end A268354

/-! ## A268354.P8075489439740445626

`A045578(val(n+1, 7)+1)`
-/

namespace A268354.P8075489439740445626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045578 (SequenceMachineLib.valuation (n + 1) 7 + 1)

end

end A268354.P8075489439740445626

namespace A268354

/-- `A045578(val(n+1, 7)+1)` -/
def P8075489439740445626.Spec : Prop :=
  ∀ n, P8075489439740445626.a n = A268354 (n + 1)

end A268354

/-! ## A268354.P1161834161953126838

`∏{d}[n+1, gcd(7, A014963(#))]`
-/

namespace A268354.P1161834161953126838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Int.gcd 7 (A014963 d)

end

end A268354.P1161834161953126838

namespace A268354

/-- `∏{d}[n+1, gcd(7, A014963(#))]` -/
def P1161834161953126838.Spec : Prop :=
  ∀ n, (P1161834161953126838.a n : ℤ) = A268354 (n + 1)

end A268354

/-! ## A268354.P2762017409124852104

`A051724(A370182(n+1))`
-/

namespace A268354.P2762017409124852104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A370182 (n + 1)).toNat

end

end A268354.P2762017409124852104

namespace A268354

/-- `A051724(A370182(n+1))` -/
def P2762017409124852104.Spec : Prop :=
  ∀ n, P2762017409124852104.a n = A268354 (n + 1)

end A268354

/-! ## A268354.P72318036240442196

`A370182(A065330(n+1))`
-/

namespace A268354.P72318036240442196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370182 (A065330 (n + 1)).toNat

end

end A268354.P72318036240442196

namespace A268354

/-- `A370182(A065330(n+1))` -/
def P72318036240442196.Spec : Prop :=
  ∀ n, P72318036240442196.a n = A268354 (n + 1)

end A268354

/-! ## A268354.P3538807517073638662

`A370182(A165725(n+1))`
-/

namespace A268354.P3538807517073638662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370182 (A165725 (n + 1)).toNat

end

end A268354.P3538807517073638662

namespace A268354

/-- `A370182(A165725(n+1))` -/
def P3538807517073638662.Spec : Prop :=
  ∀ n, P3538807517073638662.a n = A268354 (n + 1)

end A268354

/-! ## A268354.P6686192478641784423

`A165725(A392597(n+1))`
-/

namespace A268354.P6686192478641784423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165725 (A392597 (n + 1)).toNat

end

end A268354.P6686192478641784423

namespace A268354

/-- `A165725(A392597(n+1))` -/
def P6686192478641784423.Spec : Prop :=
  ∀ n, P6686192478641784423.a n = A268354 (n + 1)

end A268354

/-! ## A268354.P9846021039675618767

`A370182(A248909(n+1))`
-/

namespace A268354.P9846021039675618767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370182 (A248909 (n + 1)).toNat

end

end A268354.P9846021039675618767

namespace A268354

/-- `A370182(A248909(n+1))` -/
def P9846021039675618767.Spec : Prop :=
  ∀ n, P9846021039675618767.a n = A268354 (n + 1)

end A268354

/-! ## A268354.P15895897660922111272

`A248909(A392598(n+1))`
-/

namespace A268354.P15895897660922111272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248909 (A392598 (n + 1)).toNat

end

end A268354.P15895897660922111272

namespace A268354

/-- `A248909(A392598(n+1))` -/
def P15895897660922111272.Spec : Prop :=
  ∀ n, P15895897660922111272.a n = A268354 (n + 1)

end A268354

/-! ## A268354.P10957700402051244149

`A392597((n+1)/A355582(n+1))`
-/

namespace A268354.P10957700402051244149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392597 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A355582 (n + 1) : ℚ))).toNat

end

end A268354.P10957700402051244149

namespace A268354

/-- `A392597((n+1)/A355582(n+1))` -/
def P10957700402051244149.Spec : Prop :=
  ∀ n, P10957700402051244149.a n = A268354 (n + 1)

end A268354

/-! ## A268354.P16826249651331863590

`A370182(n+1)/A370182(A370180(n+1))`
-/

namespace A268354.P16826249651331863590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370182 (n + 1) : ℚ) / (A370182 (A370180 (n + 1)).toNat : ℚ)

end

end A268354.P16826249651331863590

namespace A268354

/-- `A370182(n+1)/A370182(A370180(n+1))` -/
def P16826249651331863590.Spec : Prop :=
  ∀ n, P16826249651331863590.a n = (A268354 (n + 1) : ℚ)

end A268354

/-! ## A268354.P14648679334572365261

`A003961(A003961(A038500(A064989(A064989(n+1)))))`
-/

namespace A268354.P14648679334572365261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A003961 (A038500 (A064989 (A064989 (n + 1)).toNat).toNat).toNat).toNat

end

end A268354.P14648679334572365261

namespace A268354

/-- `A003961(A003961(A038500(A064989(A064989(n+1)))))` -/
def P14648679334572365261.Spec : Prop :=
  ∀ n, P14648679334572365261.a n = A268354 (n + 1)

end A268354

/-! ## A268354.P3228410335364888643

`(n+1)/A030106(A030106(n+1))`
-/

namespace A268354.P3228410335364888643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A030106 (A030106 (n + 1)).toNat : ℚ)

end

end A268354.P3228410335364888643

namespace A268354

/-- `(n+1)/A030106(A030106(n+1))` -/
def P3228410335364888643.Spec : Prop :=
  ∀ n, P3228410335364888643.a n = (A268354 (n + 1) : ℚ)

end A268354

/-! ## A268354.P15881822805974732391

`A370182(A370567(n+1))/A370182(n+1)`
-/

namespace A268354.P15881822805974732391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370182 (A370567 (n + 1)).toNat : ℚ) / (A370182 (n + 1) : ℚ)

end

end A268354.P15881822805974732391

namespace A268354

/-- `A370182(A370567(n+1))/A370182(n+1)` -/
def P15881822805974732391.Spec : Prop :=
  ∀ n, P15881822805974732391.a n = (A268354 (n + 1) : ℚ)

end A268354

/-! ## A268354.P16611248861368760602

`A370182(A370182(n+1)²)/A370182(n+1)`
-/

namespace A268354.P16611248861368760602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370182 (A370182 (n + 1) ^ 2).toNat : ℚ) / (A370182 (n + 1) : ℚ)

end

end A268354.P16611248861368760602

namespace A268354

/-- `A370182(A370182(n+1)²)/A370182(n+1)` -/
def P16611248861368760602.Spec : Prop :=
  ∀ n, P16611248861368760602.a n = (A268354 (n + 1) : ℚ)

end A268354

/-!
# A268355: Highest power of 8 dividing n.

The programs for A268355, the canonical program `A268355.P15495533362919716179` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268355 has offset 1).

The definition of A268355 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268355.P3432362971413931324

`8^val(n+1, 8)`
-/

namespace A268355.P3432362971413931324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ SequenceMachineLib.valuation (n + 1) 8

end

end A268355.P3432362971413931324

namespace A268355

/-- `8^val(n+1, 8)` -/
def P3432362971413931324.Spec : Prop :=
  ∀ n, (P3432362971413931324.a n : ℤ) = A268355 (n + 1)

end A268355

/-! ## A268355.P15495533362919716179

`8^A244413(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A268355

/-- `8^A244413(n+1)` -/
def P15495533362919716179.Spec : Prop :=
  ∀ n, P15495533362919716179.a n = (A268355 (n + 1) : ℚ)

end A268355

/-! ## A268355.P7744828748076658453

`A001018(val(n+1, 8))`
-/

namespace A268355.P7744828748076658453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 (SequenceMachineLib.valuation (n + 1) 8)

end

end A268355.P7744828748076658453

namespace A268355

/-- `A001018(val(n+1, 8))` -/
def P7744828748076658453.Spec : Prop :=
  ∀ n, P7744828748076658453.a n = A268355 (n + 1)

end A268355

/-! ## A268355.P15014875069214239141

`A008834(A006519(n+1))`
-/

namespace A268355.P15014875069214239141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008834 (A006519 (n + 1)).toNat

end

end A268355.P15014875069214239141

namespace A268355

/-- `A008834(A006519(n+1))` -/
def P15014875069214239141.Spec : Prop :=
  ∀ n, P15014875069214239141.a n = A268355 (n + 1)

end A268355

/-! ## A268355.P3199444672644871782

`A008834(n+1)/A008834(A000265(n+1))`
-/

namespace A268355.P3199444672644871782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008834 (n + 1) : ℚ) / (A008834 (A000265 (n + 1)).toNat : ℚ)

end

end A268355.P3199444672644871782

namespace A268355

/-- `A008834(n+1)/A008834(A000265(n+1))` -/
def P3199444672644871782.Spec : Prop :=
  ∀ n, P3199444672644871782.a n = (A268355 (n + 1) : ℚ)

end A268355

/-! ## A268355.P14346860641768720599

`(n+1)/A030107(A030107(n+1))`
-/

namespace A268355.P14346860641768720599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A030107 (A030107 (n + 1)).toNat : ℚ)

end

end A268355.P14346860641768720599

namespace A268355

/-- `(n+1)/A030107(A030107(n+1))` -/
def P14346860641768720599.Spec : Prop :=
  ∀ n, P14346860641768720599.a n = (A268355 (n + 1) : ℚ)

end A268355

/-! ## A268355.P7569579250373571431

`A013609(Δ[A007094(n)]²)`
-/

namespace A268355.P7569579250373571431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A268355.P7569579250373571431

namespace A268355

/-- `A013609(Δ[A007094(n)]²)` -/
def P7569579250373571431.Spec : Prop :=
  ∀ n, P7569579250373571431.a n = A268355 (n + 1)

end A268355

/-! ## A268355.P13888472374050049842

`gcd(A008834(n+1), A063727(A000188(n+1)²))`
-/

namespace A268355.P13888472374050049842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008834 (n + 1)) (A063727 (A000188 (n + 1) ^ 2).toNat)

end

end A268355.P13888472374050049842

namespace A268355

/-- `gcd(A008834(n+1), A063727(A000188(n+1)²))` -/
def P13888472374050049842.Spec : Prop :=
  ∀ n, (P13888472374050049842.a n : ℤ) = A268355 (n + 1)

end A268355

/-! ## A268355.P18014903207226555478

`A008834(A083258(n+1)*A159477(n+1))`
-/

namespace A268355.P18014903207226555478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008834 (A083258 (n + 1) * A159477 (n + 1)).toNat

end

end A268355.P18014903207226555478

namespace A268355

/-- `A008834(A083258(n+1)*A159477(n+1))` -/
def P18014903207226555478.Spec : Prop :=
  ∀ n, P18014903207226555478.a n = A268355 (n + 1)

end A268355

/-! ## A268355.P3346096768476622410

`A084280(Δ[A007094(n)])`
-/

namespace A268355.P3346096768476622410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084280 (f1 (n + 1) - f1 n).toNat

end

end A268355.P3346096768476622410

namespace A268355

/-- `A084280(Δ[A007094(n)])` -/
def P3346096768476622410.Spec : Prop :=
  ∀ n, P3346096768476622410.a n = A268355 (n + 1)

end A268355

/-!
# A268356: Numbers n such that 8*9^n - 1 is prime.

The programs for A268356, there is no canonical definition to state claims against.
-/

/-! ## A268356.P11641586074510706662

`record[A273943(A005541(n+1))]`
-/

namespace A268356.P11641586074510706662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A005541 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268356.P11641586074510706662

/-!
# A268357: Highest power of 11 dividing n.

The programs for A268357, the canonical program `A268357.P18137926909629067622` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268357 has offset 1).

The definition of A268357 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268357.P18137926909629067622

`11^val(n+1, 11)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A268357

/-- `11^val(n+1, 11)` -/
def P18137926909629067622.Spec : Prop :=
  ∀ n, (P18137926909629067622.a n : ℤ) = A268357 (n + 1)

theorem P18137926909629067622.correct : P18137926909629067622.Spec := by
  intro n
  simp only [A268357, Nat.add_sub_cancel]

end A268357

/-!
# A268361: Lexicographically least sequence of a certain form that avoids additive squares.

The programs for A268361, the canonical program `A268361.P14641184472888620429` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268361 has offset 1).

The definition of A268361 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268361.P1352057991254367859

`A000045(2+val(n+1, 2))`
-/

namespace A268361.P1352057991254367859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 + SequenceMachineLib.valuation (n + 1) 2)

end

end A268361.P1352057991254367859

namespace A268361

/-- `A000045(2+val(n+1, 2))` -/
def P1352057991254367859.Spec : Prop :=
  ∀ n, P1352057991254367859.a n = A268361 (n + 1)

end A268361

/-! ## A268361.P14641184472888620429

`A000045(A001511(n+1)+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A268361

/-- `A000045(A001511(n+1)+1)` -/
def P14641184472888620429.Spec : Prop :=
  ∀ n, P14641184472888620429.a n = A268361 (n + 1)

theorem P14641184472888620429.correct : P14641184472888620429.Spec := by
  intro n
  simp only [A268361, Nat.add_sub_cancel]

end A268361

/-! ## A268361.P1958218338574095834

`A294442(xor(n, n+1))`
-/

namespace A268361.P1958218338574095834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294442 (Nat.xor n (n + 1))

end

end A268361.P1958218338574095834

namespace A268361

/-- `A294442(xor(n, n+1))` -/
def P1958218338574095834.Spec : Prop :=
  ∀ n, P1958218338574095834.a n = A268361 (n + 1)

end A268361

/-! ## A268361.P8342851747360678854

`A083662(and(n, -(n+2)))`
-/

namespace A268361.P8342851747360678854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083662 (Int.land (n : ℤ) (-(n + 2 : ℤ))).toNat

end

end A268361.P8342851747360678854

namespace A268361

/-- `A083662(and(n, -(n+2)))` -/
def P8342851747360678854.Spec : Prop :=
  ∀ n, P8342851747360678854.a n = A268361 (n + 1)

end A268361

/-! ## A268361.P5061694280818648769

`A132636(val(n+1, 2)+2)`
-/

namespace A268361.P5061694280818648769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132636 (SequenceMachineLib.valuation (n + 1) 2 + 2)

end

end A268361.P5061694280818648769

namespace A268361

/-- `A132636(val(n+1, 2)+2)` -/
def P5061694280818648769.Spec : Prop :=
  ∀ n, P5061694280818648769.a n = A268361 (n + 1)

end A268361

/-! ## A268361.P8850392536663829105

`A212804(val(n+1, 2)+3)`
-/

namespace A268361.P8850392536663829105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (SequenceMachineLib.valuation (n + 1) 2 + 3)

end

end A268361.P8850392536663829105

namespace A268361

/-- `A212804(val(n+1, 2)+3)` -/
def P8850392536663829105.Spec : Prop :=
  ∀ n, P8850392536663829105.a n = A268361 (n + 1)

end A268361

/-! ## A268361.P7306444340847015270

`A071585(and(n, xor(n, n+1)))`
-/

namespace A268361.P7306444340847015270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (Nat.land n (Nat.xor n (n + 1)))

end

end A268361.P7306444340847015270

namespace A268361

/-- `A071585(and(n, xor(n, n+1)))` -/
def P7306444340847015270.Spec : Prop :=
  ∀ n, P7306444340847015270.a n = A268361 (n + 1)

end A268361

/-! ## A268361.P9204741094398177183

`A048680(and(n+1, -(n+1)))`
-/

namespace A268361.P9204741094398177183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat

end

end A268361.P9204741094398177183

namespace A268361

/-- `A048680(and(n+1, -(n+1)))` -/
def P9204741094398177183.Spec : Prop :=
  ∀ n, P9204741094398177183.a n = A268361 (n + 1)

end A268361

/-! ## A268361.P6270848587659753647

`A000071(val(n+1, 2)+2)+1`
-/

namespace A268361.P6270848587659753647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (SequenceMachineLib.valuation (n + 1) 2 + 2) + 1

end

end A268361.P6270848587659753647

namespace A268361

/-- `A000071(val(n+1, 2)+2)+1` -/
def P6270848587659753647.Spec : Prop :=
  ∀ n, P6270848587659753647.a n = A268361 (n + 1)

end A268361

/-! ## A268361.P2782071579505929960

`A071585(2^val(n+1, 2)-1)`
-/

namespace A268361.P2782071579505929960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (2 ^ SequenceMachineLib.valuation (n + 1) 2 - 1)

end

end A268361.P2782071579505929960

namespace A268361

/-- `A071585(2^val(n+1, 2)-1)` -/
def P2782071579505929960.Spec : Prop :=
  ∀ n, P2782071579505929960.a n = A268361 (n + 1)

end A268361

/-! ## A268361.P415064291899303185

`A071585(n%(2^val(n+1, 2)))`
-/

namespace A268361.P415064291899303185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (n % 2 ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A268361.P415064291899303185

namespace A268361

/-- `A071585(n%(2^val(n+1, 2)))` -/
def P415064291899303185.Spec : Prop :=
  ∀ n, P415064291899303185.a n = A268361 (n + 1)

end A268361

/-! ## A268361.P16276422725456176226

`A000045(ceil(log2(2*xor(n, n+1))))`
-/

namespace A268361.P16276422725456176226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈Real.logb 2 (2 * Nat.xor n (n + 1) : ℝ)⌉.toNat

end

end A268361.P16276422725456176226

namespace A268361

/-- `A000045(ceil(log2(2*xor(n, n+1))))` -/
def P16276422725456176226.Spec : Prop :=
  ∀ n, P16276422725456176226.a n = A268361 (n + 1)

end A268361

/-! ## A268361.P14510211541190970471

`A000045(log2(or(n, n+1)-n)+2)`
-/

namespace A268361.P14510211541190970471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (Real.logb 2 ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℝ) + 2)).toNat

end

end A268361.P14510211541190970471

namespace A268361

/-- `A000045(log2(or(n, n+1)-n)+2)` -/
def P14510211541190970471.Spec : Prop :=
  ∀ n, P14510211541190970471.a n = A268361 (n + 1)

end A268361

/-! ## A268361.P8621240217120835236

`A000045(val(4*(2*n-(n-1)), 2))`
-/

namespace A268361.P8621240217120835236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.valuation (4 * ((2 * n : ℤ) - ((n : ℤ) - 1))).toNat 2)

end

end A268361.P8621240217120835236

namespace A268361

/-- `A000045(val(4*(2*n-(n-1)), 2))` -/
def P8621240217120835236.Spec : Prop :=
  ∀ n, P8621240217120835236.a n = A268361 (n + 1)

end A268361

/-! ## A268361.P6518555618392034910

`A000045(log2((xor(n, n+1)+1)/2)+2)`
-/

namespace A268361.P6518555618392034910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (Real.logb 2 ((Nat.xor n (n + 1) + 1 : ℚ) / 2 : ℝ) + 2)).toNat

end

end A268361.P6518555618392034910

namespace A268361

/-- `A000045(log2((xor(n, n+1)+1)/2)+2)` -/
def P6518555618392034910.Spec : Prop :=
  ∀ n, P6518555618392034910.a n = A268361 (n + 1)

end A268361

/-! ## A268361.P12414432342077496591

`A000045(A085058(n))`
-/

namespace A268361.P12414432342077496591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A085058 n).toNat

end

end A268361.P12414432342077496591

namespace A268361

/-- `A000045(A085058(n))` -/
def P12414432342077496591.Spec : Prop :=
  ∀ n, P12414432342077496591.a n = A268361 (n + 1)

end A268361

/-! ## A268361.P12085647455083059450

`A071585(A135481(n))`
-/

namespace A268361.P12085647455083059450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A135481 n).toNat

end

end A268361.P12085647455083059450

namespace A268361

/-- `A071585(A135481(n))` -/
def P12085647455083059450.Spec : Prop :=
  ∀ n, P12085647455083059450.a n = A268361 (n + 1)

end A268361

/-! ## A268361.P13403035584836884012

`A327035(A059139(n))`
-/

namespace A268361.P13403035584836884012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327035 (A059139 n).toNat

end

end A268361.P13403035584836884012

namespace A268361

/-- `A327035(A059139(n))` -/
def P13403035584836884012.Spec : Prop :=
  ∀ n, P13403035584836884012.a n = A268361 (n + 1)

end A268361

/-! ## A268361.P11372705401532107093

`A022290(A006519(n+1))`
-/

namespace A268361.P11372705401532107093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A006519 (n + 1)).toNat

end

end A268361.P11372705401532107093

namespace A268361

/-- `A022290(A006519(n+1))` -/
def P11372705401532107093.Spec : Prop :=
  ∀ n, P11372705401532107093.a n = A268361 (n + 1)

end A268361

/-! ## A268361.P12554050173046462326

`A000045(A090740(n+1))`
-/

namespace A268361.P12554050173046462326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A090740 (n + 1)).toNat

end

end A268361.P12554050173046462326

namespace A268361

/-- `A000045(A090740(n+1))` -/
def P12554050173046462326.Spec : Prop :=
  ∀ n, P12554050173046462326.a n = A268361 (n + 1)

end A268361

/-!
# A268362: Number of n X n arrays containing n copies of 0..n-1 with row sums equal.

The programs for A268362, there is no canonical definition to state claims against.
-/

/-! ## A268362.P6709126023810594004

`A268367(∑[4*n]+1)`
-/

namespace A268362.P6709126023810594004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268367 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A268362.P6709126023810594004

/-!
# A268363: Number of n X 2 arrays containing 2 copies of 0..n-1 with row sums equal.

The programs for A268363, the canonical program `A268363.P17438875431591581757` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268363 has offset 0).

The definition of A268363 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268363.P17438875431591581757

`2^floor(n/2)*n!`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A268363

/-- `2^floor(n/2)*n!` -/
def P17438875431591581757.Spec : Prop :=
  ∀ n, P17438875431591581757.a n = (A268363 n : ℚ)

end A268363

/-! ## A268363.P9413014949500563653

`∏[round(gcd(2, n)/acot(n))]`
-/

namespace A268363.P9413014949500563653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.gcd 2 n : ℝ) / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A268363.P9413014949500563653

namespace A268363

/-- `∏[round(gcd(2, n)/acot(n))]` -/
def P9413014949500563653.Spec : Prop :=
  ∀ n, P9413014949500563653.a n = A268363 n

end A268363

/-! ## A268363.P13693051979027780217

`∏[gcd(n², floor(2/acot(n)))]`
-/

namespace A268363.P13693051979027780217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 : ℤ) ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A268363.P13693051979027780217

namespace A268363

/-- `∏[gcd(n², floor(2/acot(n)))]` -/
def P13693051979027780217.Spec : Prop :=
  ∀ n, (P13693051979027780217.a n : ℤ) = A268363 n

end A268363

/-! ## A268363.P14511493085477253124

`∏[floor(3/acot(n))-lcm(2, n)]`
-/

namespace A268363.P14511493085477253124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ - (Nat.lcm 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A268363.P14511493085477253124

namespace A268363

/-- `∏[floor(3/acot(n))-lcm(2, n)]` -/
def P14511493085477253124.Spec : Prop :=
  ∀ n, P14511493085477253124.a n = A268363 n

end A268363

/-! ## A268363.P16117080278649851574

`∏[∏{p}[n, #^val(2*n, #)]]`
-/

namespace A268363.P16117080278649851574
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (2 * n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A268363.P16117080278649851574

namespace A268363

/-- `∏[∏{p}[n, #^val(2*n, #)]]` -/
def P16117080278649851574.Spec : Prop :=
  ∀ n, (P16117080278649851574.a n : ℤ) = A268363 n

end A268363

/-! ## A268363.P10067528221253339123

`∏[C(n, a(n-1))+n]` with `a(0)=1, a(1)=1`
-/

namespace A268363.P10067528221253339123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  Nat.choose n (f1 (n - 1)) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A268363.P10067528221253339123

namespace A268363

/-- `∏[C(n, a(n-1))+n]` -/
def P10067528221253339123.Spec : Prop :=
  ∀ n, (P10067528221253339123.a n : ℤ) = A268363 n

end A268363

/-! ## A268363.P7418980762514758741

`∏[n*ceil(n/a(n-1))]` with `a(0)=1`
-/

namespace A268363.P7418980762514758741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) * ⌈(n : ℚ) / (f1 (n - 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A268363.P7418980762514758741

namespace A268363

/-- `∏[n*ceil(n/a(n-1))]` -/
def P7418980762514758741.Spec : Prop :=
  ∀ n, P7418980762514758741.a n = A268363 n

end A268363

/-! ## A268363.P5415011769340036512

`2*(n²-n)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A268363.P5415011769340036512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * (((n ^ 2 : ℤ) - (n : ℤ)) * a (n - 2))

end

end A268363.P5415011769340036512

namespace A268363

/-- `2*(n²-n)*a(n-2)` -/
def P5415011769340036512.Spec : Prop :=
  ∀ n, P5415011769340036512.a n = A268363 n

end A268363

/-! ## A268363.P844688711970196465

`2*(n-1)*n*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A268363.P844688711970196465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * ((n : ℤ) - 1) * (n : ℤ) * a (n - 2)

end

end A268363.P844688711970196465

namespace A268363

/-- `2*(n-1)*n*a(n-2)` -/
def P844688711970196465.Spec : Prop :=
  ∀ n, P844688711970196465.a n = A268363 n

end A268363

/-! ## A268363.P17780317108005372288

`∏[A257088(n)]`
-/

namespace A268363.P17780317108005372288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A268363.P17780317108005372288

namespace A268363

/-- `∏[A257088(n)]` -/
def P17780317108005372288.Spec : Prop :=
  ∀ n, P17780317108005372288.a n = A268363 n

end A268363

/-!
# A268365: Number of n X 4 arrays of permutations of 4 copies of 0..n-1 with row sums equal.

The programs for A268365, there is no canonical definition to state claims against.
-/

/-! ## A268365.P14473846599486269851

`A268367(∑[n+4]+3)`
-/

namespace A268365.P14473846599486269851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268367 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A268365.P14473846599486269851

/-! ## A268365.P14897233816577291309

`record[A268367(A027379(n))]`
-/

namespace A268365.P14897233816577291309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268367 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268365.P14897233816577291309

/-! ## A268365.P14830462856384012358

`record[A268367(A183140(n)+1)]`
-/

namespace A268365.P14830462856384012358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268367 (A183140 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268365.P14830462856384012358

/-!
# A268366: Number of n X 6 arrays of permutations of 6 copies of 0..n-1 with row sums equal.

The programs for A268366, there is no canonical definition to state claims against.
-/

/-! ## A268366.P8819219527533468131

`A268367(A052905(n+3))`
-/

namespace A268366.P8819219527533468131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268367 (A052905 (n + 3)).toNat

end

end A268366.P8819219527533468131

/-!
# A268367: T(n,k) = Number of n X k arrays containing k copies of 0..n-1 with row sums equal.

The programs for A268367, there is no canonical definition to state claims against.
-/

/-! ## A268367.P1861748227655097146

`A129835(A168288(n)-A327618(n))`
-/

namespace A268367.P1861748227655097146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129835 (A168288 n - A327618 n).toNat

end

end A268367.P1861748227655097146

/-! ## A268367.P6525585119541178741

`and(A053768(A059328(n)), A175840(n))`
-/

namespace A268367.P6525585119541178741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053768 (A059328 n).toNat) (A175840 n)

end

end A268367.P6525585119541178741

/-! ## A268367.P33077335876707657

`and(A080937(n), A287863(A173882(n)))`
-/

namespace A268367.P33077335876707657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080937 n) (A287863 (A173882 n).toNat)

end

end A268367.P33077335876707657

/-! ## A268367.P28832619587847295

`A000120(A347683(n+1)^A005044(n+1))²/A159314(n)`
-/

namespace A268367.P28832619587847295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000120 (SequenceMachineLib.roundAway ((A347683 (n + 1) : ℚ) ^ (A005044 (n + 1) : ℤ))).toNat ^ 2 : ℚ) / (A159314 n : ℚ)

end

end A268367.P28832619587847295

/-!
# A268368: An eventually quasi-quadratic sequence satisfying a Hofstadter-like recurrence.

The programs for A268368, the canonical program `A268368.P5374632038932573290` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268368 has offset 1).

The definition of A268368 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268368.P5374632038932573290

`ogf((x+4x^3+4x^4+x^5+3x^6-4x^8-5x^9-6x^10+3x^13+3x^14)/(1-3x^4+3x^8-x^12))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A268368

/-- `ogf((x+4x^3+4x^4+x^5+3x^6-4x^8-5x^9-6x^10+3x^13+3x^14)/(1-3x^4+3x^8-x^12))` -/
def P5374632038932573290.Spec : Prop :=
  ∀ n, P5374632038932573290.a n = A268368 (n + 1)

theorem P5374632038932573290.correct : P5374632038932573290.Spec := by
  intro n
  simp only [A268368, Nat.add_sub_cancel]

end A268368

/-!
# A268369: Number of 3 X n arrays containing n copies of 0..3-1 with row sums equal.

The programs for A268369, there is no canonical definition to state claims against.
-/

/-! ## A268369.P4309908693327565948

`A268367(∑[n+2]+4)`
-/

namespace A268369.P4309908693327565948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268367 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A268369.P4309908693327565948

/-! ## A268369.P4316620436897982818

`lcm(2, A268367(A167614(n+1)))`
-/

namespace A268369.P4316620436897982818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A268367 (A167614 (n + 1)).toNat)

end

end A268369.P4316620436897982818

/-! ## A268369.P15577059179280319828

`A268367(A167614(n+1))+A025439(n)`
-/

namespace A268369.P15577059179280319828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268367 (A167614 (n + 1)).toNat + A025439 n

end

end A268369.P15577059179280319828

/-! ## A268369.P5818030149542592952

`A268367(A167614(n+1))+A185063(n)`
-/

namespace A268369.P5818030149542592952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268367 (A167614 (n + 1)).toNat + A185063 n

end

end A268369.P5818030149542592952

/-! ## A268369.P18165929132815671592

`A268367(A167614(n+1))+A185238(n)`
-/

namespace A268369.P18165929132815671592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268367 (A167614 (n + 1)).toNat + A185238 n

end

end A268369.P18165929132815671592

/-!
# A268370: Number of North-East lattice paths from (0,0) to (n,n) that have exactly three east steps below the subdiagonal y = x-1.

The programs for A268370, the canonical program `A268370.P12788103030648664107` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268370 has offset 4).

The definition of A268370 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268370.P12788103030648664107

`∑[A000344(n+3)-A099376(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A268370

/-- `∑[A000344(n+3)-A099376(n)]` -/
def P12788103030648664107.Spec : Prop :=
  ∀ n, P12788103030648664107.a n = A268370 (n + 4)

theorem P12788103030648664107.correct : P12788103030648664107.Spec := by
  intro n
  simp only [A268370, Nat.add_sub_cancel]

end A268370

/-! ## A268370.P9285105989821889807

`A120989(n+2)-A068875(n+2)`
-/

namespace A268370.P9285105989821889807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120989 (n + 2) - A068875 (n + 2)

end

end A268370.P9285105989821889807

namespace A268370

/-- `A120989(n+2)-A068875(n+2)` -/
def P9285105989821889807.Spec : Prop :=
  ∀ n, P9285105989821889807.a n = A268370 (n + 4)

end A268370

/-! ## A268370.P13458475850573380310

`A143955(n+4)-A279557(n+1)`
-/

namespace A268370.P13458475850573380310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143955 (n + 4) - A279557 (n + 1)

end

end A268370.P13458475850573380310

namespace A268370

/-- `A143955(n+4)-A279557(n+1)` -/
def P13458475850573380310.Spec : Prop :=
  ∀ n, P13458475850573380310.a n = A268370 (n + 4)

end A268370

/-! ## A268370.P7957098972108439020

`A003517(n+2)+2*A120989(n+1)`
-/

namespace A268370.P7957098972108439020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003517 (n + 2) + 2 * A120989 (n + 1)

end

end A268370.P7957098972108439020

namespace A268370

/-- `A003517(n+2)+2*A120989(n+1)` -/
def P7957098972108439020.Spec : Prop :=
  ∀ n, P7957098972108439020.a n = A268370 (n + 4)

end A268370

/-! ## A268370.P8862388438823731421

`A002057(n+2)+A002420(n+4)+A002057(n)`
-/

namespace A268370.P8862388438823731421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 (n + 2) + (A002420 (n + 4) + A002057 n)

end

end A268370.P8862388438823731421

namespace A268370

/-- `A002057(n+2)+A002420(n+4)+A002057(n)` -/
def P8862388438823731421.Spec : Prop :=
  ∀ n, P8862388438823731421.a n = A268370 (n + 4)

end A268370

/-!
# A268374: a(n) = A001222(n) - A267116(n).

The programs for A268374, the canonical program `A268374.P9921754921464293632` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268374 has offset 1).

The definition of A268374 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A267116, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A268374.P9921754921464293632

`A001222(n+1)-A267116(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A268374

/-- `A001222(n+1)-A267116(n+1)` -/
def P9921754921464293632.Spec : Prop :=
  ∀ n, P9921754921464293632.a n = A268374 (n + 1)

theorem P9921754921464293632.correct : P9921754921464293632.Spec := by
  intro n
  simp only [A268374, Nat.add_sub_cancel]

end A268374

/-! ## A268374.P13521182700514548893

`Δ[A022559(n)]-A267116(n+1)`
-/

namespace A268374.P13521182700514548893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A267116 (n + 1)

end

end A268374.P13521182700514548893

namespace A268374

/-- `Δ[A022559(n)]-A267116(n+1)` -/
def P13521182700514548893.Spec : Prop :=
  ∀ n, P13521182700514548893.a n = A268374 (n + 1)

end A268374

/-! ## A268374.P16172422679344693651

`log2(A061142(n+1))-A267116(n+1)`
-/

namespace A268374.P16172422679344693651
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A061142 (n + 1) : ℝ) - (A267116 (n + 1) : ℝ)

end

end A268374.P16172422679344693651

namespace A268374

/-- `log2(A061142(n+1))-A267116(n+1)` -/
def P16172422679344693651.Spec : Prop :=
  ∀ n, P16172422679344693651.a n = (A268374 (n + 1) : ℝ)

end A268374

/-! ## A268374.P4691723505811609194

`A267116(2^∑{e}[n+1, #])-A267116(n+1)`
-/

namespace A268374.P4691723505811609194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267116 (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) - A267116 (n + 1)

end

end A268374.P4691723505811609194

namespace A268374

/-- `A267116(2^∑{e}[n+1, #])-A267116(n+1)` -/
def P4691723505811609194.Spec : Prop :=
  ∀ n, P4691723505811609194.a n = A268374 (n + 1)

end A268374

/-! ## A268374.P12861880219351790361

`A061395(A329607(n+1))-A267116(n+1)`
-/

namespace A268374.P12861880219351790361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A329607 (n + 1)).toNat - A267116 (n + 1)

end

end A268374.P12861880219351790361

namespace A268374

/-- `A061395(A329607(n+1))-A267116(n+1)` -/
def P12861880219351790361.Spec : Prop :=
  ∀ n, P12861880219351790361.a n = A268374 (n + 1)

end A268374

/-! ## A268374.P14199741412238768569

`A007814(A329600(n+1))-A267116(n+1)`
-/

namespace A268374.P14199741412238768569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A329600 (n + 1)).toNat - A267116 (n + 1)

end

end A268374.P14199741412238768569

namespace A268374

/-- `A007814(A329600(n+1))-A267116(n+1)` -/
def P14199741412238768569.Spec : Prop :=
  ∀ n, P14199741412238768569.a n = A268374 (n + 1)

end A268374

/-! ## A268374.P9036643486637029425

`A257091(A124859(n+1))-A267116(n+1)`
-/

namespace A268374.P9036643486637029425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257091 (A124859 (n + 1)).toNat - A267116 (n + 1)

end

end A268374.P9036643486637029425

namespace A268374

/-- `A257091(A124859(n+1))-A267116(n+1)` -/
def P9036643486637029425.Spec : Prop :=
  ∀ n, P9036643486637029425.a n = A268374 (n + 1)

end A268374

/-! ## A268374.P5423109773673926218

`A267116(A165826(n+1))-A267116(n+1)`
-/

namespace A268374.P5423109773673926218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267116 (A165826 (n + 1)).toNat - A267116 (n + 1)

end

end A268374.P5423109773673926218

namespace A268374

/-- `A267116(A165826(n+1))-A267116(n+1)` -/
def P5423109773673926218.Spec : Prop :=
  ∀ n, P5423109773673926218.a n = A268374 (n + 1)

end A268374

/-! ## A268374.P2885016935118186158

`A001222(A004736(A008480(n+1)!))`
-/

namespace A268374.P2885016935118186158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004736 (Nat.factorial (A008480 (n + 1)).toNat)).toNat

end

end A268374.P2885016935118186158

namespace A268374

/-- `A001222(A004736(A008480(n+1)!))` -/
def P2885016935118186158.Spec : Prop :=
  ∀ n, P2885016935118186158.a n = A268374 (n + 1)

end A268374

/-! ## A268374.P15629992748876060370

`A035376(A008480(n+1))%A296188(n+1)`
-/

namespace A268374.P15629992748876060370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035376 (A008480 (n + 1)).toNat) (A296188 (n + 1))

end

end A268374.P15629992748876060370

namespace A268374

/-- `A035376(A008480(n+1))%A296188(n+1)` -/
def P15629992748876060370.Spec : Prop :=
  ∀ n, P15629992748876060370.a n = A268374 (n + 1)

end A268374

/-!
# A268375: Numbers k for which A001222(k) = A267116(k).

The programs for A268375, the canonical program `A268375.P3303508265173202101` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268375 has offset 1).

The definition of A268375 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268375.P3303508265173202101

`record[(n+1)*A091862(n+1)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A268375

/-- `record[(n+1)*A091862(n+1)]` -/
def P3303508265173202101.Spec : Prop :=
  ∀ n, P3303508265173202101.a n = A268375 (n + 1)

theorem P3303508265173202101.correct : P3303508265173202101.Spec := by
  intro n
  simp only [A268375, Nat.add_sub_cancel]

end A268375

/-! ## A268375.P10090090113526426116

`eq[1, A091862(n+1)]+1`
-/

namespace A268375.P10090090113526426116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091862 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A268375.P10090090113526426116

namespace A268375

/-- `eq[1, A091862(n+1)]+1` -/
def P10090090113526426116.Spec : Prop :=
  ∀ n, (P10090090113526426116.a n : ℤ) = A268375 (n + 1)

end A268375

/-! ## A268375.P8302054928837602190

`filter[A265640(n+1), A091862(#)]`
-/

namespace A268375.P8302054928837602190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091862 (f1 j).toNat = 1) n)

end

end A268375.P8302054928837602190

namespace A268375

/-- `filter[A265640(n+1), A091862(#)]` -/
def P8302054928837602190.Spec : Prop :=
  ∀ n, P8302054928837602190.a n = A268375 (n + 1)

end A268375

/-! ## A268375.P17835492319751905617

`filter[A344586(n+1), A091862(#)]`
-/

namespace A268375.P17835492319751905617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091862 (f1 j).toNat = 1) n)

end

end A268375.P17835492319751905617

namespace A268375

/-- `filter[A344586(n+1), A091862(#)]` -/
def P17835492319751905617.Spec : Prop :=
  ∀ n, P17835492319751905617.a n = A268375 (n + 1)

end A268375

/-! ## A268375.P14889445668719362113

`filter[A130091(n+1), A091862(#)]`
-/

namespace A268375.P14889445668719362113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091862 (f1 j).toNat = 1) n)

end

end A268375.P14889445668719362113

namespace A268375

/-- `filter[A130091(n+1), A091862(#)]` -/
def P14889445668719362113.Spec : Prop :=
  ∀ n, P14889445668719362113.a n = A268375 (n + 1)

end A268375

/-! ## A268375.P17001882150241320163

`filter[A212165(n+1), A091862(#)]`
-/

namespace A268375.P17001882150241320163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091862 (f1 j).toNat = 1) n)

end

end A268375.P17001882150241320163

namespace A268375

/-- `filter[A212165(n+1), A091862(#)]` -/
def P17001882150241320163.Spec : Prop :=
  ∀ n, P17001882150241320163.a n = A268375 (n + 1)

end A268375

/-! ## A268375.P5500283428755552732

`filter[A285801(n+1), A091862(#)]`
-/

namespace A268375.P5500283428755552732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091862 (f1 j).toNat = 1) n)

end

end A268375.P5500283428755552732

namespace A268375

/-- `filter[A285801(n+1), A091862(#)]` -/
def P5500283428755552732.Spec : Prop :=
  ∀ n, P5500283428755552732.a n = A268375 (n + 1)

end A268375

/-! ## A268375.P17236640501600832776

`filter[A363597(n+1), A091862(#)]`
-/

namespace A268375.P17236640501600832776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091862 (f1 j).toNat = 1) n)

end

end A268375.P17236640501600832776

namespace A268375

/-- `filter[A363597(n+1), A091862(#)]` -/
def P17236640501600832776.Spec : Prop :=
  ∀ n, P17236640501600832776.a n = A268375 (n + 1)

end A268375

/-! ## A268375.P2663093611748050395

`filter[A344609(n+1), A091862(#)]`
-/

namespace A268375.P2663093611748050395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091862 (f1 j).toNat = 1) n)

end

end A268375.P2663093611748050395

namespace A268375

/-- `filter[A344609(n+1), A091862(#)]` -/
def P2663093611748050395.Spec : Prop :=
  ∀ n, P2663093611748050395.a n = A268375 (n + 1)

end A268375

/-! ## A268375.P16451185425622857345

`filter[A246716(n+1), A091862(#)]`
-/

namespace A268375.P16451185425622857345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091862 (f1 j).toNat = 1) n)

end

end A268375.P16451185425622857345

namespace A268375

/-- `filter[A246716(n+1), A091862(#)]` -/
def P16451185425622857345.Spec : Prop :=
  ∀ n, P16451185425622857345.a n = A268375 (n + 1)

end A268375

/-! ## A268375.P11584956926374146346

`filter[A253567(n+1), A091862(#)]`
-/

namespace A268375.P11584956926374146346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091862 (f1 j).toNat = 1) n)

end

end A268375.P11584956926374146346

namespace A268375

/-- `filter[A253567(n+1), A091862(#)]` -/
def P11584956926374146346.Spec : Prop :=
  ∀ n, P11584956926374146346.a n = A268375 (n + 1)

end A268375

/-! ## A268375.P11578176889153089973

`filter[A263715(n+2), A091862(#)]`
-/

namespace A268375.P11578176889153089973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263715 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091862 (f1 j).toNat = 1) n)

end

end A268375.P11578176889153089973

namespace A268375

/-- `filter[A263715(n+2), A091862(#)]` -/
def P11578176889153089973.Spec : Prop :=
  ∀ n, P11578176889153089973.a n = A268375 (n + 1)

end A268375

/-! ## A268375.P7166856489252122463

`filter[A079298(n+2), A091862(#)]`
-/

namespace A268375.P7166856489252122463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079298 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091862 (f1 j).toNat = 1) n)

end

end A268375.P7166856489252122463

namespace A268375

/-- `filter[A079298(n+2), A091862(#)]` -/
def P7166856489252122463.Spec : Prop :=
  ∀ n, P7166856489252122463.a n = A268375 (n + 1)

end A268375

/-! ## A268375.P13061172652053657357

`filter[A129657(n+1), A091862(#)]`
-/

namespace A268375.P13061172652053657357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091862 (f1 j).toNat = 1) n)

end

end A268375.P13061172652053657357

namespace A268375

/-- `filter[A129657(n+1), A091862(#)]` -/
def P13061172652053657357.Spec : Prop :=
  ∀ n, P13061172652053657357.a n = A268375 (n + 1)

end A268375

/-! ## A268375.P15633980189047096341

`filter[A047595(n+2), A091862(#)]`
-/

namespace A268375.P15633980189047096341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047595 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091862 (f1 j).toNat = 1) n)

end

end A268375.P15633980189047096341

namespace A268375

/-- `filter[A047595(n+2), A091862(#)]` -/
def P15633980189047096341.Spec : Prop :=
  ∀ n, P15633980189047096341.a n = A268375 (n + 1)

end A268375

/-! ## A268375.P11978273609307953455

`filter[A000401(n+2), A091862(#)]`
-/

namespace A268375.P11978273609307953455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000401 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091862 (f1 j).toNat = 1) n)

end

end A268375.P11978273609307953455

namespace A268375

/-- `filter[A000401(n+2), A091862(#)]` -/
def P11978273609307953455.Spec : Prop :=
  ∀ n, P11978273609307953455.a n = A268375 (n + 1)

end A268375

/-! ## A268375.P1537341146775019289

`filter[A028964(n+2), A091862(#)]`
-/

namespace A268375.P1537341146775019289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028964 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091862 (f1 j).toNat = 1) n)

end

end A268375.P1537341146775019289

namespace A268375

/-- `filter[A028964(n+2), A091862(#)]` -/
def P1537341146775019289.Spec : Prop :=
  ∀ n, P1537341146775019289.a n = A268375 (n + 1)

end A268375

/-! ## A268375.P1500429635636039893

`filter[A129487(n+1), A091862(#)]`
-/

namespace A268375.P1500429635636039893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091862 (f1 j).toNat = 1) n)

end

end A268375.P1500429635636039893

namespace A268375

/-- `filter[A129487(n+1), A091862(#)]` -/
def P1500429635636039893.Spec : Prop :=
  ∀ n, P1500429635636039893.a n = A268375 (n + 1)

end A268375

/-! ## A268375.P17864970408295866748

`lt[A289618(n+1), 1]+1`
-/

namespace A268375.P17864970408295866748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289618 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A268375.P17864970408295866748

namespace A268375

/-- `lt[A289618(n+1), 1]+1` -/
def P17864970408295866748.Spec : Prop :=
  ∀ n, (P17864970408295866748.a n : ℤ) = A268375 (n + 1)

end A268375

/-! ## A268375.P14460824841884776730

`filter[A119848(n+1), A091862(#)]`
-/

namespace A268375.P14460824841884776730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091862 (f1 j).toNat = 1) n)

end

end A268375.P14460824841884776730

namespace A268375

/-- `filter[A119848(n+1), A091862(#)]` -/
def P14460824841884776730.Spec : Prop :=
  ∀ n, P14460824841884776730.a n = A268375 (n + 1)

end A268375

/-!
# A268376: Numbers n for which A001222(n) > A267116(n).

The programs for A268376, the canonical program `A268376.P14208294688663200019` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268376 has offset 1).

The definition of A268376 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268376.P14208294688663200019

`lt[A091862(n+1), 1]+1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A268376

/-- `lt[A091862(n+1), 1]+1` -/
def P14208294688663200019.Spec : Prop :=
  ∀ n, (P14208294688663200019.a n : ℤ) = A268376 (n + 1)

theorem P14208294688663200019.correct : P14208294688663200019.Spec := by
  intro n
  simp only [A268376, Nat.add_sub_cancel]

end A268376

/-! ## A268376.P15687978770226860826

`lt[A091862(n/A152714(2*a(n-1))), 1]` with `a(0)=5`
-/

namespace A268376.P15687978770226860826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A091862 (SequenceMachineLib.roundAway ((n : ℚ) / (A152714 (2 * f1 (n - 1)).toNat : ℚ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A268376.P15687978770226860826

namespace A268376

/-- `lt[A091862(n/A152714(2*a(n-1))), 1]` -/
def P15687978770226860826.Spec : Prop :=
  ∀ n, (P15687978770226860826.a n : ℤ) = A268376 (n + 1)

end A268376

/-! ## A268376.P143360065403812180

`lt[A008480(n+1)%2, 1]+1`
-/

namespace A268376.P143360065403812180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008480 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A268376.P143360065403812180

namespace A268376

/-- `lt[A008480(n+1)%2, 1]+1` -/
def P143360065403812180.Spec : Prop :=
  ∀ n, (P143360065403812180.a n : ℤ) = A268376 (n + 1)

end A268376

/-! ## A268376.P8388737761710179268

`eq[2, gcd(2, A346104(n+1))]+1`
-/

namespace A268376.P8388737761710179268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A346104 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A268376.P8388737761710179268

namespace A268376

/-- `eq[2, gcd(2, A346104(n+1))]+1` -/
def P8388737761710179268.Spec : Prop :=
  ∀ n, (P8388737761710179268.a n : ℤ) = A268376 (n + 1)

end A268376

/-! ## A268376.P9080128540157125667

`lt[A008480(A028310(n))%2, 1]`
-/

namespace A268376.P9080128540157125667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008480 (A028310 n).toNat) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A268376.P9080128540157125667

namespace A268376

/-- `lt[A008480(A028310(n))%2, 1]` -/
def P9080128540157125667.Spec : Prop :=
  ∀ n, (P9080128540157125667.a n : ℤ) = A268376 (n + 1)

end A268376

/-! ## A268376.P7607221990780508272

`eq[1, A057837(a(A289618(n)))]` with `a(0)=2`
-/

namespace A268376.P7607221990780508272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A057837 (f2 (A289618 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268376.P7607221990780508272

namespace A268376

/-- `eq[1, A057837(a(A289618(n)))]` -/
def P7607221990780508272.Spec : Prop :=
  ∀ n, (P7607221990780508272.a n : ℤ) = A268376 (n + 1)

end A268376

/-! ## A268376.P6152129325686619721

`eq[2, A020639(A008480(n+1))]+1`
-/

namespace A268376.P6152129325686619721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008480 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A268376.P6152129325686619721

namespace A268376

/-- `eq[2, A020639(A008480(n+1))]+1` -/
def P6152129325686619721.Spec : Prop :=
  ∀ n, (P6152129325686619721.a n : ℤ) = A268376 (n + 1)

end A268376

/-! ## A268376.P15632522213238867192

`eq[1, A267831(A008480(n+1)²)]+1`
-/

namespace A268376.P15632522213238867192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267831 (A008480 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A268376.P15632522213238867192

namespace A268376

/-- `eq[1, A267831(A008480(n+1)²)]+1` -/
def P15632522213238867192.Spec : Prop :=
  ∀ n, (P15632522213238867192.a n : ℤ) = A268376 (n + 1)

end A268376

/-!
# A268377: Numbers n such that any prime factor of the form 4k+1 has even multiplicity.

The programs for A268377, the canonical program `A268377.P13087392663479504575` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268377 has offset 1).

The definition of A268377 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3842 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268377.P13087392663479504575

`eq[0, A083025(A038387(n+1))]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A268377

/-- `eq[0, A083025(A038387(n+1))]+1` -/
def P13087392663479504575.Spec : Prop :=
  ∀ n, (P13087392663479504575.a n : ℤ) = A268377 (n + 1)

theorem P13087392663479504575.correct : P13087392663479504575.Spec := by
  intro n
  simp only [A268377, Nat.add_sub_cancel]

end A268377

/-! ## A268377.P7038925704270459360

`eq[4, A046109(A007913(n+1))]+1`
-/

namespace A268377.P7038925704270459360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046109 (A007913 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A268377.P7038925704270459360

namespace A268377

/-- `eq[4, A046109(A007913(n+1))]+1` -/
def P7038925704270459360.Spec : Prop :=
  ∀ n, (P7038925704270459360.a n : ℤ) = A268377 (n + 1)

end A268377

/-! ## A268377.P12450032021712098547

`record[(n+1)*A053866(A072436(n+1))]`
-/

namespace A268377.P12450032021712098547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A053866 (A072436 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268377.P12450032021712098547

namespace A268377

/-- `record[(n+1)*A053866(A072436(n+1))]` -/
def P12450032021712098547.Spec : Prop :=
  ∀ n, P12450032021712098547.a n = A268377 (n + 1)

end A268377

/-! ## A268377.P9102384857094579084

`record[-xor(n, -A010052(A286361(n+1)))]`
-/

namespace A268377.P9102384857094579084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (-A010052 (A286361 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268377.P9102384857094579084

namespace A268377

/-- `record[-xor(n, -A010052(A286361(n+1)))]` -/
def P9102384857094579084.Spec : Prop :=
  ∀ n, P9102384857094579084.a n = A268377 (n + 1)

end A268377

/-! ## A268377.P4489043002136507525

`record[gcd(n+1, A008833(n+1)*A072438(n+1))]`
-/

namespace A268377.P4489043002136507525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A008833 (n + 1) * A072438 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268377.P4489043002136507525

namespace A268377

/-- `record[gcd(n+1, A008833(n+1)*A072438(n+1))]` -/
def P4489043002136507525.Spec : Prop :=
  ∀ n, (P4489043002136507525.a n : ℤ) = A268377 (n + 1)

end A268377

/-! ## A268377.P15434969476173978085

`eq[1, A005131(A000925(n²))]`
-/

namespace A268377.P15434969476173978085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 (A000925 (n ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268377.P15434969476173978085

namespace A268377

/-- `eq[1, A005131(A000925(n²))]` -/
def P15434969476173978085.Spec : Prop :=
  ∀ n, (P15434969476173978085.a n : ℤ) = A268377 (n + 1)

end A268377

/-! ## A268377.P1308440633525418678

`eq[1, A030203(A004018(n²))]`
-/

namespace A268377.P1308440633525418678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030203 (A004018 (n ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268377.P1308440633525418678

namespace A268377

/-- `eq[1, A030203(A004018(n²))]` -/
def P1308440633525418678.Spec : Prop :=
  ∀ n, (P1308440633525418678.a n : ℤ) = A268377 (n + 1)

end A268377

/-! ## A268377.P8899478956698868312

`eq[1, A040246(A004531(n²))]`
-/

namespace A268377.P8899478956698868312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040246 (A004531 (n ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268377.P8899478956698868312

namespace A268377

/-- `eq[1, A040246(A004531(n²))]` -/
def P8899478956698868312.Spec : Prop :=
  ∀ n, (P8899478956698868312.a n : ℤ) = A268377 (n + 1)

end A268377

/-! ## A268377.P3306892493444358733

`eq[A000007(n), A063725(A063725(n²))]`
-/

namespace A268377.P3306892493444358733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (A063725 (n ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268377.P3306892493444358733

namespace A268377

/-- `eq[A000007(n), A063725(A063725(n²))]` -/
def P3306892493444358733.Spec : Prop :=
  ∀ n, (P3306892493444358733.a n : ℤ) = A268377 (n + 1)

end A268377

/-!
# A268378: Numbers whose prime factorization includes at least one prime factor of form 4k+3 and any prime factor of the form 4k+1 has even multiplicity.

The programs for A268378, the canonical program `A268378.P4635822612041174352` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268378 has offset 1).

The definition of A268378 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4803 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268378.P4635822612041174352

`∩[A187811(n+1), A268377(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A268378

/-- `∩[A187811(n+1), A268377(n+1)]` -/
def P4635822612041174352.Spec : Prop :=
  ∀ n, (P4635822612041174352.a n : ℤ) = A268378 (n + 1)

theorem P4635822612041174352.correct : P4635822612041174352.Spec := by
  intro n
  simp only [A268378, Nat.add_sub_cancel]

end A268378

/-! ## A268378.P8758896035443929271

`lt[A005094(n+1), A358670(A003375(2*n+5)+1)]+1`
-/

namespace A268378.P8758896035443929271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358670 (A003375 (2 * n + 5) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A268378.P8758896035443929271

namespace A268378

/-- `lt[A005094(n+1), A358670(A003375(2*n+5)+1)]+1` -/
def P8758896035443929271.Spec : Prop :=
  ∀ n, (P8758896035443929271.a n : ℤ) = A268378 (n + 1)

end A268378

/-!
# A268379: Numbers having more prime factors of the form 4*k+1 than of the form 4*k+3, when counted with multiplicity.

The programs for A268379, the canonical program `A268379.P6643847251497471161` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268379 has offset 1).

The definition of A268379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2914 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268379.P6643847251497471161

`lt[0, A079635(A028310(n))]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A268379

/-- `lt[0, A079635(A028310(n))]` -/
def P6643847251497471161.Spec : Prop :=
  ∀ n, (P6643847251497471161.a n : ℤ) = A268379 (n + 1)

theorem P6643847251497471161.correct : P6643847251497471161.Spec := by
  intro n
  simp only [A268379, Nat.add_sub_cancel]

end A268379

/-! ## A268379.P14775842205398945361

`A020725(lt[0, A079635(n+1)])`
-/

namespace A268379.P14775842205398945361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A268379.P14775842205398945361

namespace A268379

/-- `A020725(lt[0, A079635(n+1)])` -/
def P14775842205398945361.Spec : Prop :=
  ∀ n, P14775842205398945361.a n = A268379 (n + 1)

end A268379

/-! ## A268379.P12298989990309978820

`A065475(lt[0, A079635(n+1)])`
-/

namespace A268379.P12298989990309978820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A268379.P12298989990309978820

namespace A268379

/-- `A065475(lt[0, A079635(n+1)])` -/
def P12298989990309978820.Spec : Prop :=
  ∀ n, P12298989990309978820.a n = A268379 (n + 1)

end A268379

/-! ## A268379.P16988740283479506092

`A326178(lt[0, A079635(n+1)])`
-/

namespace A268379.P16988740283479506092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A268379.P16988740283479506092

namespace A268379

/-- `A326178(lt[0, A079635(n+1)])` -/
def P16988740283479506092.Spec : Prop :=
  ∀ n, P16988740283479506092.a n = A268379 (n + 1)

end A268379

/-! ## A268379.P5271788317783228674

`lt[0, A079635(A004277(n))]`
-/

namespace A268379.P5271788317783228674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079635 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A268379.P5271788317783228674

namespace A268379

/-- `lt[0, A079635(A004277(n))]` -/
def P5271788317783228674.Spec : Prop :=
  ∀ n, (P5271788317783228674.a n : ℤ) = A268379 (n + 1)

end A268379

/-! ## A268379.P8065030908448212957

`lt[0, A079635(A233583(n+1))]`
-/

namespace A268379.P8065030908448212957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079635 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A268379.P8065030908448212957

namespace A268379

/-- `lt[0, A079635(A233583(n+1))]` -/
def P8065030908448212957.Spec : Prop :=
  ∀ n, (P8065030908448212957.a n : ℤ) = A268379 (n + 1)

end A268379

/-!
# A268380: Numbers having fewer prime factors of the form 4*k+1 than of the form 4*k+3, when counted with multiplicity.

The programs for A268380, the canonical program `A268380.P16043284880696432250` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268380 has offset 1).

The definition of A268380 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4936 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268380.P16043284880696432250

`lt[A079635(A028310(n))+1, 1]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A268380

/-- `lt[A079635(A028310(n))+1, 1]` -/
def P16043284880696432250.Spec : Prop :=
  ∀ n, (P16043284880696432250.a n : ℤ) = A268380 (n + 1)

theorem P16043284880696432250.correct : P16043284880696432250.Spec := by
  intro n
  simp only [A268380, Nat.add_sub_cancel]

end A268380

/-! ## A268380.P4961454014567662776

`eq[char[A268381(n+1)], A000007(n)]`
-/

namespace A268380.P4961454014567662776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268381 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A268380.P4961454014567662776

namespace A268380

/-- `eq[char[A268381(n+1)], A000007(n)]` -/
def P4961454014567662776.Spec : Prop :=
  ∀ n, (P4961454014567662776.a n : ℤ) = A268380 (n + 1)

end A268380

/-! ## A268380.P1545073548447374226

`eq[char[A268381(n+1)], A000038(n)]`
-/

namespace A268380.P1545073548447374226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268381 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A268380.P1545073548447374226

namespace A268380

/-- `eq[char[A268381(n+1)], A000038(n)]` -/
def P1545073548447374226.Spec : Prop :=
  ∀ n, (P1545073548447374226.a n : ℤ) = A268380 (n + 1)

end A268380

/-! ## A268380.P3561272700824055570

`A020725(lt[A079635(n+1)+1, 1])`
-/

namespace A268380.P3561272700824055570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079635 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A268380.P3561272700824055570

namespace A268380

/-- `A020725(lt[A079635(n+1)+1, 1])` -/
def P3561272700824055570.Spec : Prop :=
  ∀ n, P3561272700824055570.a n = A268380 (n + 1)

end A268380

/-! ## A268380.P1857601518512141170

`A065475(lt[A079635(n+1)+1, 1])`
-/

namespace A268380.P1857601518512141170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079635 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A268380.P1857601518512141170

namespace A268380

/-- `A065475(lt[A079635(n+1)+1, 1])` -/
def P1857601518512141170.Spec : Prop :=
  ∀ n, P1857601518512141170.a n = A268380 (n + 1)

end A268380

/-! ## A268380.P526559032606270181

`eq[char[A268381(n+1)], A010051(2*(n+1))]`
-/

namespace A268380.P526559032606270181
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268381 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A268380.P526559032606270181

namespace A268380

/-- `eq[char[A268381(n+1)], A010051(2*(n+1))]` -/
def P526559032606270181.Spec : Prop :=
  ∀ n, (P526559032606270181.a n : ℤ) = A268380 (n + 1)

end A268380

/-! ## A268380.P13290506852792570142

`eq[char[A268381(n+1)], A238532(2*(n+1))]`
-/

namespace A268380.P13290506852792570142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268381 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238532 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A268380.P13290506852792570142

namespace A268380

/-- `eq[char[A268381(n+1)], A238532(2*(n+1))]` -/
def P13290506852792570142.Spec : Prop :=
  ∀ n, (P13290506852792570142.a n : ℤ) = A268380 (n + 1)

end A268380

/-! ## A268380.P6804899402101524048

`lt[A079635(A004277(n))+1, 1]`
-/

namespace A268380.P6804899402101524048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079635 (A004277 n).toNat + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A268380.P6804899402101524048

namespace A268380

/-- `lt[A079635(A004277(n))+1, 1]` -/
def P6804899402101524048.Spec : Prop :=
  ∀ n, (P6804899402101524048.a n : ℤ) = A268380 (n + 1)

end A268380

/-! ## A268380.P11673792392297722283

`lt[A079635(A233583(n+1))+1, 1]`
-/

namespace A268380.P11673792392297722283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079635 (A233583 (n + 1)).toNat + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A268380.P11673792392297722283

namespace A268380

/-- `lt[A079635(A233583(n+1))+1, 1]` -/
def P11673792392297722283.Spec : Prop :=
  ∀ n, (P11673792392297722283.a n : ℤ) = A268380 (n + 1)

end A268380

/-!
# A268381: Numbers having at least the same number of prime factors of the form 4*k+1 than of the form 4*k+3, when counted with multiplicity.

The programs for A268381, the canonical program `A268381.P11095387665470384089` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268381 has offset 1).

The definition of A268381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268381.P11095387665470384089

`comp[A268380(n+1)-1]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A268381

/-- `comp[A268380(n+1)-1]+1` -/
def P11095387665470384089.Spec : Prop :=
  ∀ n, (P11095387665470384089.a n : ℤ) = A268381 (n + 1)

theorem P11095387665470384089.correct : P11095387665470384089.Spec := by
  intro n
  simp only [A268381, Nat.add_sub_cancel]

end A268381

/-! ## A268381.P15660468052602539833

`∪[A072202(n+1), A268379(n+1)]`
-/

namespace A268381.P15660468052602539833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A268381.P15660468052602539833

namespace A268381

/-- `∪[A072202(n+1), A268379(n+1)]` -/
def P15660468052602539833.Spec : Prop :=
  ∀ n, (P15660468052602539833.a n : ℤ) = A268381 (n + 1)

end A268381

/-! ## A268381.P12350468738241762553

`lt[0, A079635(n+1)+1]+1`
-/

namespace A268381.P12350468738241762553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079635 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A268381.P12350468738241762553

namespace A268381

/-- `lt[0, A079635(n+1)+1]+1` -/
def P12350468738241762553.Spec : Prop :=
  ∀ n, (P12350468738241762553.a n : ℤ) = A268381 (n + 1)

end A268381

/-! ## A268381.P9519636981951485563

`lt[A163990(A047789(n+4)), A122857(n)]`
-/

namespace A268381.P9519636981951485563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163990 (A047789 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122857 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A268381.P9519636981951485563

namespace A268381

/-- `lt[A163990(A047789(n+4)), A122857(n)]` -/
def P9519636981951485563.Spec : Prop :=
  ∀ n, (P9519636981951485563.a n : ℤ) = A268381 (n + 1)

end A268381

/-! ## A268381.P14419553386098190022

`∑[A331466(∑[A374688(2*n)])]`
-/

namespace A268381.P14419553386098190022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374688 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331466 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268381.P14419553386098190022

namespace A268381

/-- `∑[A331466(∑[A374688(2*n)])]` -/
def P14419553386098190022.Spec : Prop :=
  ∀ n, P14419553386098190022.a n = A268381 (n + 1)

end A268381

/-!
# A268382: Partial sums of A268411; the least monotonic left inverse of A268415.

The programs for A268382, the canonical program `A268382.P15340571739554303395` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268382 has offset 0).

The definition of A268382 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268411, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A268382.P6002006868214198091

`n-A268383(n)`
-/

namespace A268382.P6002006868214198091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A268383 n

end

end A268382.P6002006868214198091

namespace A268382

/-- `n-A268383(n)` -/
def P6002006868214198091.Spec : Prop :=
  ∀ n, P6002006868214198091.a n = A268382 n

theorem P6002006868214198091.correct : P6002006868214198091.Spec := by
  intro n
  simp only [A268382, Nat.add_sub_cancel, A268382.P6002006868214198091.a, A268382.P15340571739554303395.a, A268383, A268383.P1822048145753504683.a, A268411, A268411.P10692776799510792898.f2, A268411.P10692776799510792898.f1, A268411.P10692776799510792898.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A268382

/-! ## A268382.P15340571739554303395

`A268411(n)+a(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A268382

/-- `A268411(n)+a(n-1)` -/
def P15340571739554303395.Spec : Prop :=
  ∀ n, P15340571739554303395.a n = A268382 n

theorem P15340571739554303395.correct : P15340571739554303395.Spec := by
  intro n
  simp only [A268382]

end A268382

/-! ## A268382.P8903082097233197644

`∑[A268411(n)]`
-/

namespace A268382.P8903082097233197644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268382.P8903082097233197644

namespace A268382

/-- `∑[A268411(n)]` -/
def P8903082097233197644.Spec : Prop :=
  ∀ n, P8903082097233197644.a n = A268382 n

end A268382

/-! ## A268382.P13528011111854066233

`∑[A069010(n)%2]`
-/

namespace A268382.P13528011111854066233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069010 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268382.P13528011111854066233

namespace A268382

/-- `∑[A069010(n)%2]` -/
def P13528011111854066233.Spec : Prop :=
  ∀ n, P13528011111854066233.a n = A268382 n

end A268382

/-! ## A268382.P14599581114754608112

`∑[A264596(n)%2]`
-/

namespace A268382.P14599581114754608112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264596 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268382.P14599581114754608112

namespace A268382

/-- `∑[A264596(n)%2]` -/
def P14599581114754608112.Spec : Prop :=
  ∀ n, P14599581114754608112.a n = A268382 n

end A268382

/-! ## A268382.P12751616297719640435

`∑[floor(log(A106826(n)))]`
-/

namespace A268382.P12751616297719640435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A106826 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268382.P12751616297719640435

namespace A268382

/-- `∑[floor(log(A106826(n)))]` -/
def P12751616297719640435.Spec : Prop :=
  ∀ n, P12751616297719640435.a n = A268382 n

end A268382

/-! ## A268382.P7792990797141923452

`∑[char[comp[A268412(n)]]]`
-/

namespace A268382.P7792990797141923452
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268412 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268382.P7792990797141923452

namespace A268382

/-- `∑[char[comp[A268412(n)]]]` -/
def P7792990797141923452.Spec : Prop :=
  ∀ n, (P7792990797141923452.a n : ℤ) = A268382 n

end A268382

/-! ## A268382.P17694490142501016767

`∑[log2(A277561(n))%2]`
-/

namespace A268382.P17694490142501016767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.logb 2 (A277561 n : ℝ))) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268382.P17694490142501016767

namespace A268382

/-- `∑[log2(A277561(n))%2]` -/
def P17694490142501016767.Spec : Prop :=
  ∀ n, P17694490142501016767.a n = A268382 n

end A268382

/-! ## A268382.P6527147871702824239

`∑[char[A268415(n+1)]]`
-/

namespace A268382.P6527147871702824239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268415 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268382.P6527147871702824239

namespace A268382

/-- `∑[char[A268415(n+1)]]` -/
def P6527147871702824239.Spec : Prop :=
  ∀ n, (P6527147871702824239.a n : ℤ) = A268382 n

end A268382

/-! ## A268382.P8093691902947289841

`∑[and(2, A088748(n))/2]`
-/

namespace A268382.P8093691902947289841
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A088748 n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268382.P8093691902947289841

namespace A268382

/-- `∑[and(2, A088748(n))/2]` -/
def P8093691902947289841.Spec : Prop :=
  ∀ n, P8093691902947289841.a n = (A268382 n : ℚ)

end A268382

/-! ## A268382.P13642844656344344355

`n-∑[and(1, A037800(n))]`
-/

namespace A268382.P13642844656344344355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A037800 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268382.P13642844656344344355

namespace A268382

/-- `n-∑[and(1, A037800(n))]` -/
def P13642844656344344355.Spec : Prop :=
  ∀ n, P13642844656344344355.a n = A268382 n

end A268382

/-! ## A268382.P3497437337429547515

`∑[A010060(A090077(n))]`
-/

namespace A268382.P3497437337429547515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A090077 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268382.P3497437337429547515

namespace A268382

/-- `∑[A010060(A090077(n))]` -/
def P3497437337429547515.Spec : Prop :=
  ∀ n, P3497437337429547515.a n = A268382 n

end A268382

/-! ## A268382.P7193192792179513172

`∑[A010060(A090079(n))]`
-/

namespace A268382.P7193192792179513172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A090079 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268382.P7193192792179513172

namespace A268382

/-- `∑[A010060(A090079(n))]` -/
def P7193192792179513172.Spec : Prop :=
  ∀ n, P7193192792179513172.a n = A268382 n

end A268382

/-! ## A268382.P12188474702666015891

`∑[A010060(A229763(n))]`
-/

namespace A268382.P12188474702666015891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A229763 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268382.P12188474702666015891

namespace A268382

/-- `∑[A010060(A229763(n))]` -/
def P12188474702666015891.Spec : Prop :=
  ∀ n, P12188474702666015891.a n = A268382 n

end A268382

/-! ## A268382.P7397192118726563331

`∑[A000035(A264596(n))]`
-/

namespace A268382.P7397192118726563331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A264596 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268382.P7397192118726563331

namespace A268382

/-- `∑[A000035(A264596(n))]` -/
def P7397192118726563331.Spec : Prop :=
  ∀ n, P7397192118726563331.a n = A268382 n

end A268382

/-! ## A268382.P14102745395122903498

`∑[A010060(A213064(n)/2)]`
-/

namespace A268382.P14102745395122903498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (SequenceMachineLib.roundAway ((A213064 n : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268382.P14102745395122903498

namespace A268382

/-- `∑[A010060(A213064(n)/2)]` -/
def P14102745395122903498.Spec : Prop :=
  ∀ n, P14102745395122903498.a n = A268382 n

end A268382

/-! ## A268382.P1431112694673198977

`∑[A010060(A213064(n)-n)]`
-/

namespace A268382.P1431112694673198977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A213064 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268382.P1431112694673198977

namespace A268382

/-- `∑[A010060(A213064(n)-n)]` -/
def P1431112694673198977.Spec : Prop :=
  ∀ n, P1431112694673198977.a n = A268382 n

end A268382

/-! ## A268382.P10043019832936384782

`∑[and(A016760(n), A069010(n))]`
-/

namespace A268382.P10043019832936384782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A069010 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268382.P10043019832936384782

namespace A268382

/-- `∑[and(A016760(n), A069010(n))]` -/
def P10043019832936384782.Spec : Prop :=
  ∀ n, P10043019832936384782.a n = A268382 n

end A268382

/-! ## A268382.P17105267281534839906

`∑[A010060(xor(n, A020987(n)))]`
-/

namespace A268382.P17105267281534839906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Int.xor (n : ℤ) (A020987 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268382.P17105267281534839906

namespace A268382

/-- `∑[A010060(xor(n, A020987(n)))]` -/
def P17105267281534839906.Spec : Prop :=
  ∀ n, P17105267281534839906.a n = A268382 n

end A268382

/-!
# A268383: Least monotonic left inverse of A268412.

The programs for A268383, the canonical program `A268383.P1822048145753504683` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268383 has offset 0).

The definition of A268383 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268382, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A268383.P1822048145753504683

`n-A268382(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A268383

/-- `n-A268382(n)` -/
def P1822048145753504683.Spec : Prop :=
  ∀ n, P1822048145753504683.a n = A268383 n

theorem P1822048145753504683.correct : P1822048145753504683.Spec := by
  intro n
  simp only [A268383]

end A268383

/-! ## A268383.P11250084660420422246

`1-A268411(n)+a(n-1)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=1`
-/

namespace A268383.P11250084660420422246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 0, 1] fun n a =>
  1 - A268411 n + a (n - 1)

end

end A268383.P11250084660420422246

namespace A268383

/-- `1-A268411(n)+a(n-1)` -/
def P11250084660420422246.Spec : Prop :=
  ∀ n, P11250084660420422246.a n = A268383 n

end A268383

/-! ## A268383.P10283721499294803111

`∑[A037800(n)%2]`
-/

namespace A268383.P10283721499294803111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037800 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268383.P10283721499294803111

namespace A268383

/-- `∑[A037800(n)%2]` -/
def P10283721499294803111.Spec : Prop :=
  ∀ n, P10283721499294803111.a n = A268383 n

end A268383

/-! ## A268383.P10492703494202967218

`n-∑[A268411(n)]`
-/

namespace A268383.P10492703494202967218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268383.P10492703494202967218

namespace A268383

/-- `n-∑[A268411(n)]` -/
def P10492703494202967218.Spec : Prop :=
  ∀ n, P10492703494202967218.a n = A268383 n

end A268383

/-! ## A268383.P7692942168122555728

`∑[char[A268412(n+1)]]`
-/

namespace A268383.P7692942168122555728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268412 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268383.P7692942168122555728

namespace A268383

/-- `∑[char[A268412(n+1)]]` -/
def P7692942168122555728.Spec : Prop :=
  ∀ n, (P7692942168122555728.a n : ℤ) = A268383 n

end A268383

/-! ## A268383.P4096221608425685980

`∑[char[A268412(n)]]-1`
-/

namespace A268383.P4096221608425685980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268412 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A268383.P4096221608425685980

namespace A268383

/-- `∑[char[A268412(n)]]-1` -/
def P4096221608425685980.Spec : Prop :=
  ∀ n, P4096221608425685980.a n = A268383 n

end A268383

/-! ## A268383.P3949807149210467951

`n-∑[A069010(n)%2]`
-/

namespace A268383.P3949807149210467951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069010 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268383.P3949807149210467951

namespace A268383

/-- `n-∑[A069010(n)%2]` -/
def P3949807149210467951.Spec : Prop :=
  ∀ n, P3949807149210467951.a n = A268383 n

end A268383

/-! ## A268383.P10742830367738060587

`n-∑[A264596(n)%2]`
-/

namespace A268383.P10742830367738060587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264596 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268383.P10742830367738060587

namespace A268383

/-- `n-∑[A264596(n)%2]` -/
def P10742830367738060587.Spec : Prop :=
  ∀ n, P10742830367738060587.a n = A268383 n

end A268383

/-! ## A268383.P1077328041914840338

`n-∑[char[A268415(n+1)]]`
-/

namespace A268383.P1077328041914840338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268415 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A268383.P1077328041914840338

namespace A268383

/-- `n-∑[char[A268415(n+1)]]` -/
def P1077328041914840338.Spec : Prop :=
  ∀ n, P1077328041914840338.a n = A268383 n

end A268383

/-! ## A268383.P15312562529283220118

`n-∑[A010060(A090077(n))]`
-/

namespace A268383.P15312562529283220118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A090077 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268383.P15312562529283220118

namespace A268383

/-- `n-∑[A010060(A090077(n))]` -/
def P15312562529283220118.Spec : Prop :=
  ∀ n, P15312562529283220118.a n = A268383 n

end A268383

/-! ## A268383.P17272318008458848622

`n-∑[A010060(A090079(n))]`
-/

namespace A268383.P17272318008458848622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A090079 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268383.P17272318008458848622

namespace A268383

/-- `n-∑[A010060(A090079(n))]` -/
def P17272318008458848622.Spec : Prop :=
  ∀ n, P17272318008458848622.a n = A268383 n

end A268383

/-! ## A268383.P865268627171861739

`n-∑[A010060(A229763(n))]`
-/

namespace A268383.P865268627171861739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A229763 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268383.P865268627171861739

namespace A268383

/-- `n-∑[A010060(A229763(n))]` -/
def P865268627171861739.Spec : Prop :=
  ∀ n, P865268627171861739.a n = A268383 n

end A268383

/-! ## A268383.P5703556375950081605

`n-∑[A000035(A264596(n))]`
-/

namespace A268383.P5703556375950081605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A264596 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268383.P5703556375950081605

namespace A268383

/-- `n-∑[A000035(A264596(n))]` -/
def P5703556375950081605.Spec : Prop :=
  ∀ n, P5703556375950081605.a n = A268383 n

end A268383

/-! ## A268383.P15679548791392873453

`n-∑[A010060(xor(n, A020987(n)))]`
-/

namespace A268383.P15679548791392873453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Int.xor (n : ℤ) (A020987 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268383.P15679548791392873453

namespace A268383

/-- `n-∑[A010060(xor(n, A020987(n)))]` -/
def P15679548791392873453.Spec : Prop :=
  ∀ n, P15679548791392873453.a n = A268383 n

end A268383

/-! ## A268383.P11157345876657253660

`∑[and(A000040(n+1)², A037800(n))]`
-/

namespace A268383.P11157345876657253660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000040 (n + 1) ^ 2) (A037800 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268383.P11157345876657253660

namespace A268383

/-- `∑[and(A000040(n+1)², A037800(n))]` -/
def P11157345876657253660.Spec : Prop :=
  ∀ n, P11157345876657253660.a n = A268383 n

end A268383

/-! ## A268383.P15446386661203324612

`n-∑[A010060(A213064(n))]`
-/

namespace A268383.P15446386661203324612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A213064 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268383.P15446386661203324612

namespace A268383

/-- `n-∑[A010060(A213064(n))]` -/
def P15446386661203324612.Spec : Prop :=
  ∀ n, P15446386661203324612.a n = A268383 n

end A268383

/-! ## A268383.P6728038759959873435

`∑[A010060(5*A090079(n))]`
-/

namespace A268383.P6728038759959873435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (5 * A090079 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268383.P6728038759959873435

namespace A268383

/-- `∑[A010060(5*A090079(n))]` -/
def P6728038759959873435.Spec : Prop :=
  ∀ n, P6728038759959873435.a n = A268383 n

end A268383

/-! ## A268383.P9529228030482702114

`n-∑[A008683(A136004(2*n))]`
-/

namespace A268383.P9529228030482702114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A136004 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268383.P9529228030482702114

namespace A268383

/-- `n-∑[A008683(A136004(2*n))]` -/
def P9529228030482702114.Spec : Prop :=
  ∀ n, P9529228030482702114.a n = A268383 n

end A268383

/-!
# A268384: Characteristic function of A001317.

The programs for A268384, the canonical program `A268384.P16231980144868817348` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268384 has offset 0).

The definition of A268384 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268384.P1725085659147164337

`A209229(A193231(n))`
-/

namespace A268384.P1725085659147164337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A193231 n).toNat

end

end A268384.P1725085659147164337

namespace A268384

/-- `A209229(A193231(n))` -/
def P1725085659147164337.Spec : Prop :=
  ∀ n, P1725085659147164337.a n = A268384 n

end A268384

/-! ## A268384.P3192186012205423021

`char[xor(2*a(n-1), a(n-1))]` with `a(0)=1`
-/

namespace A268384.P3192186012205423021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.xor (2 * f1 (n - 1)) (f1 (n - 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A268384.P3192186012205423021

namespace A268384

/-- `char[xor(2*a(n-1), a(n-1))]` -/
def P3192186012205423021.Spec : Prop :=
  ∀ n, (P3192186012205423021.a n : ℤ) = A268384 n

end A268384

/-! ## A268384.P7909291384497295358

`char[a(n-1)+2*a(and(n, n-1))]` with `a(0)=1`
-/

namespace A268384.P7909291384497295358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 2 * f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A268384.P7909291384497295358

namespace A268384

/-- `char[a(n-1)+2*a(and(n, n-1))]` -/
def P7909291384497295358.Spec : Prop :=
  ∀ n, (P7909291384497295358.a n : ℤ) = A268384 n

end A268384

/-! ## A268384.P5946131822756339594

`char[xor(a(n-1)/log2(sqrt(2)), a(n-1))]` with `a(0)=1`
-/

namespace A268384.P5946131822756339594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.xor (SequenceMachineLib.roundAway ((f1 (n - 1) : ℝ) / Real.logb 2 (Real.sqrt (2 : ℝ)))) (f1 (n - 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A268384.P5946131822756339594

namespace A268384

/-- `char[xor(a(n-1)/log2(sqrt(2)), a(n-1))]` -/
def P5946131822756339594.Spec : Prop :=
  ∀ n, (P5946131822756339594.a n : ℤ) = A268384 n

end A268384

/-! ## A268384.P16170004169016388219

`char[A001317(n)]`
-/

namespace A268384.P16170004169016388219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A268384.P16170004169016388219

namespace A268384

/-- `char[A001317(n)]` -/
def P16170004169016388219.Spec : Prop :=
  ∀ n, (P16170004169016388219.a n : ℤ) = A268384 n

end A268384

/-! ## A268384.P14493818139597540554

`char[A004729(n)]`
-/

namespace A268384.P14493818139597540554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004729 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A268384.P14493818139597540554

namespace A268384

/-- `char[A004729(n)]` -/
def P14493818139597540554.Spec : Prop :=
  ∀ n, (P14493818139597540554.a n : ℤ) = A268384 n

end A268384

/-! ## A268384.P14999658325495680876

`char[A053576(n)]`
-/

namespace A268384.P14999658325495680876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053576 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A268384.P14999658325495680876

namespace A268384

/-- `char[A053576(n)]` -/
def P14999658325495680876.Spec : Prop :=
  ∀ n, (P14999658325495680876.a n : ℤ) = A268384 n

end A268384

/-! ## A268384.P16844945032349660090

`char[A087745(n)]`
-/

namespace A268384.P16844945032349660090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087745 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A268384.P16844945032349660090

namespace A268384

/-- `char[A087745(n)]` -/
def P16844945032349660090.Spec : Prop :=
  ∀ n, (P16844945032349660090.a n : ℤ) = A268384 n

end A268384

/-! ## A268384.P16858636521794592115

`char[A087756(n)]`
-/

namespace A268384.P16858636521794592115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087756 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A268384.P16858636521794592115

namespace A268384

/-- `char[A087756(n)]` -/
def P16858636521794592115.Spec : Prop :=
  ∀ n, (P16858636521794592115.a n : ℤ) = A268384 n

end A268384

/-! ## A268384.P15510532488170854660

`char[A133179(n)]`
-/

namespace A268384.P15510532488170854660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133179 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A268384.P15510532488170854660

namespace A268384

/-- `char[A133179(n)]` -/
def P15510532488170854660.Spec : Prop :=
  ∀ n, (P15510532488170854660.a n : ℤ) = A268384 n

end A268384

/-! ## A268384.P4666737625151940702

`char[A276618(∑[n])]`
-/

namespace A268384.P4666737625151940702
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276618 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A268384.P4666737625151940702

namespace A268384

/-- `char[A276618(∑[n])]` -/
def P4666737625151940702.Spec : Prop :=
  ∀ n, (P4666737625151940702.a n : ℤ) = A268384 n

end A268384

/-! ## A268384.P16231980144868817348

`a(A246159(n))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A268384

/-- `a(A246159(n))` -/
def P16231980144868817348.Spec : Prop :=
  ∀ n, (P16231980144868817348.a n : ℤ) = A268384 n

theorem P16231980144868817348.correct : P16231980144868817348.Spec := by
  intro n
  simp only [A268384]

end A268384

/-! ## A268384.P3420413690224383478

`char[A212200(n+1)]`
-/

namespace A268384.P3420413690224383478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A268384.P3420413690224383478

namespace A268384

/-- `char[A212200(n+1)]` -/
def P3420413690224383478.Spec : Prop :=
  ∀ n, (P3420413690224383478.a n : ℤ) = A268384 n

end A268384

/-! ## A268384.P3205672156768520509

`char[A049417(2^n)]`
-/

namespace A268384.P3205672156768520509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (2 ^ n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A268384.P3205672156768520509

namespace A268384

/-- `char[A049417(2^n)]` -/
def P3205672156768520509.Spec : Prop :=
  ∀ n, (P3205672156768520509.a n : ℤ) = A268384 n

end A268384

/-! ## A268384.P11291719385408462409

`and(n, char[A099884(n)])`
-/

namespace A268384.P11291719385408462409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099884 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A268384.P11291719385408462409

namespace A268384

/-- `and(n, char[A099884(n)])` -/
def P11291719385408462409.Spec : Prop :=
  ∀ n, (P11291719385408462409.a n : ℤ) = A268384 n

end A268384

/-! ## A268384.P11226460267514364308

`C(C(2, A234022(n)), 2)`
-/

namespace A268384.P11226460267514364308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (A234022 n).toNat) 2

end

end A268384.P11226460267514364308

namespace A268384

/-- `C(C(2, A234022(n)), 2)` -/
def P11226460267514364308.Spec : Prop :=
  ∀ n, (P11226460267514364308.a n : ℤ) = A268384 n

end A268384

/-! ## A268384.P15463864143972465336

`char[A277819(∑[n+1])]`
-/

namespace A268384.P15463864143972465336
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277819 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A268384.P15463864143972465336

namespace A268384

/-- `char[A277819(∑[n+1])]` -/
def P15463864143972465336.Spec : Prop :=
  ∀ n, (P15463864143972465336.a n : ℤ) = A268384 n

end A268384

/-! ## A268384.P3348708534425679897

`char[record[A366264(n+2)]]`
-/

namespace A268384.P3348708534425679897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366264 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A268384.P3348708534425679897

namespace A268384

/-- `char[record[A366264(n+2)]]` -/
def P3348708534425679897.Spec : Prop :=
  ∀ n, (P3348708534425679897.a n : ℤ) = A268384 n

end A268384

/-! ## A268384.P10994062207358912038

`char[A091239(2*n+1)]`
-/

namespace A268384.P10994062207358912038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091239 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A268384.P10994062207358912038

namespace A268384

/-- `char[A091239(2*n+1)]` -/
def P10994062207358912038.Spec : Prop :=
  ∀ n, (P10994062207358912038.a n : ℤ) = A268384 n

end A268384

/-! ## A268384.P5541968374132164350

`A209229(A379471(n))`
-/

namespace A268384.P5541968374132164350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A379471 n).toNat

end

end A268384.P5541968374132164350

namespace A268384

/-- `A209229(A379471(n))` -/
def P5541968374132164350.Spec : Prop :=
  ∀ n, P5541968374132164350.a n = A268384 n

end A268384

/-!
# A268385: a(1) = 1, for n > 1, a(n) = A020639(n)^A193231(A067029(n)) * a(A028234(n)).

The programs for A268385, there is no canonical definition to state claims against.
-/

/-! ## A268385.P9689074046430994049

`A020639(n+1)^A193231(A067029(n+1))*a(A028234(n+1)-1)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A268385.P9689074046430994049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A020639 (n + 1) : ℚ) ^ (A193231 (A067029 (n + 1)).toNat : ℤ) * a (A028234 (n + 1) - 1).toNat

end

end A268385.P9689074046430994049

/-! ## A268385.P2208816204279759691

`A000079(A193231(A007814(n+1)))*A003961(a(A064989(n+1)-1))` with `a(0)=1`
-/

namespace A268385.P2208816204279759691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000079 (A193231 (A007814 (n + 1)).toNat).toNat * A003961 (a (A064989 (n + 1) - 1).toNat).toNat

end

end A268385.P2208816204279759691

/-! ## A268385.P4342781541387041012

`A008833(n+1)*A056552(A270418((n+1)²))`
-/

namespace A268385.P4342781541387041012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1) * A056552 (A270418 ((n + 1) ^ 2)).toNat

end

end A268385.P4342781541387041012

/-! ## A268385.P12290126913699175311

`A008833(n+1)*A056552(A367168((n+1)²))`
-/

namespace A268385.P12290126913699175311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1) * A056552 (A367168 ((n + 1) ^ 2)).toNat

end

end A268385.P12290126913699175311

/-! ## A268385.P5655159014806110472

`A000189(A064549(n+1))*A007948(A071974(n+1))`
-/

namespace A268385.P5655159014806110472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (A064549 (n + 1)).toNat * A007948 (A071974 (n + 1)).toNat

end

end A268385.P5655159014806110472

/-! ## A268385.P1654201723306207574

`A007948(A056622(n+1))*A019554(A064549(n+1))`
-/

namespace A268385.P1654201723306207574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A056622 (n + 1)).toNat * A019554 (A064549 (n + 1)).toNat

end

end A268385.P1654201723306207574

/-! ## A268385.P8982625162398315197

`A019554(A011264(n+1))*A019555(A159253(n+1))`
-/

namespace A268385.P8982625162398315197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A011264 (n + 1)).toNat * A019555 (A159253 (n + 1)).toNat

end

end A268385.P8982625162398315197

/-! ## A268385.P2027445304441830286

`A019554(A011264(n+1))*A019555(A197863(n+1))`
-/

namespace A268385.P2027445304441830286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A011264 (n + 1)).toNat * A019555 (A197863 (n + 1)).toNat

end

end A268385.P2027445304441830286

/-! ## A268385.P15876241746156332594

`A011262(A064549(n+1))/A015052(A011264(n+1))`
-/

namespace A268385.P15876241746156332594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011262 (A064549 (n + 1)).toNat : ℚ) / (A015052 (A011264 (n + 1)).toNat : ℚ)

end

end A268385.P15876241746156332594

/-! ## A268385.P8681897533114460155

`A011262(A064549(n+1))/A053166(A003557(n+1))`
-/

namespace A268385.P8681897533114460155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011262 (A064549 (n + 1)).toNat : ℚ) / (A053166 (A003557 (n + 1)).toNat : ℚ)

end

end A268385.P8681897533114460155

/-! ## A268385.P4205570147398157220

`A011262(A064549(n+1))/A015052(A057521(n+1))`
-/

namespace A268385.P4205570147398157220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011262 (A064549 (n + 1)).toNat : ℚ) / (A015052 (A057521 (n + 1)).toNat : ℚ)

end

end A268385.P4205570147398157220

/-! ## A268385.P6405149850013897022

`A053143(A064549(n+1))/A019555(A011262(n+1))`
-/

namespace A268385.P6405149850013897022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053143 (A064549 (n + 1)).toNat : ℚ) / (A019555 (A011262 (n + 1)).toNat : ℚ)

end

end A268385.P6405149850013897022

/-!
# A268386: a(n) = A193231(A268387(n)).

The programs for A268386, there is no canonical definition to state claims against.
-/

/-! ## A268386.P3095670448777005684

`A193231(A268387(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A268386.P3095670448777005684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A268387 (n + 1)).toNat

end

end A268386.P3095670448777005684

/-! ## A268386.P13701622802536467230

`A268387(A268385(n+1))`
-/

namespace A268386.P13701622802536467230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268387 (A268385 (n + 1)).toNat

end

end A268386.P13701622802536467230

/-! ## A268386.P11071036605063121966

`A248663(A293443(n+1))`
-/

namespace A268386.P11071036605063121966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (A293443 (n + 1)).toNat

end

end A268386.P11071036605063121966

/-! ## A268386.P1536252543580539083

`A193231(A048675(A007913(A293442(n+1))))`
-/

namespace A268386.P1536252543580539083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A048675 (A007913 (A293442 (n + 1)).toNat).toNat).toNat

end

end A268386.P1536252543580539083

/-! ## A268386.P1287725828998524747

`A193231(val(A334205(n+1), 2))`
-/

namespace A268386.P1287725828998524747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (SequenceMachineLib.valuation (A334205 (n + 1)).toNat 2)

end

end A268386.P1287725828998524747

/-! ## A268386.P4585426304393615604

`A087207(A007913(A293443(n+1))²)`
-/

namespace A268386.P4585426304393615604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (A007913 (A293443 (n + 1)).toNat ^ 2).toNat

end

end A268386.P4585426304393615604

/-! ## A268386.P12347431150681892829

`xor(A267115(A268387(n+1)!), A268387(n+1))`
-/

namespace A268386.P12347431150681892829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A267115 (Nat.factorial (A268387 (n + 1)).toNat)) (A268387 (n + 1))

end

end A268386.P12347431150681892829

/-!
# A268387: Bitwise-XOR of the exponents of primes in the prime factorization of n.

The programs for A268387, the canonical program `A268387.P5740070207597668771` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268387 has offset 1).

The definition of A268387 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268387.P17718242451660936173

`A193231(A268386(n+1))`
-/

namespace A268387.P17718242451660936173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A268386 (n + 1)).toNat

end

end A268387.P17718242451660936173

namespace A268387

/-- `A193231(A268386(n+1))` -/
def P17718242451660936173.Spec : Prop :=
  ∀ n, P17718242451660936173.a n = A268387 (n + 1)

end A268387

/-! ## A268387.P5740070207597668771

`A248663(A293442(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A268387

/-- `A248663(A293442(n+1))` -/
def P5740070207597668771.Spec : Prop :=
  ∀ n, P5740070207597668771.a n = A268387 (n + 1)

theorem P5740070207597668771.correct : P5740070207597668771.Spec := by
  intro n
  simp only [A268387, Nat.add_sub_cancel]

end A268387

/-! ## A268387.P15171397161095639169

`A329647(A238745(n+1))`
-/

namespace A268387.P15171397161095639169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329647 (A238745 (n + 1)).toNat

end

end A268387.P15171397161095639169

namespace A268387

/-- `A329647(A238745(n+1))` -/
def P15171397161095639169.Spec : Prop :=
  ∀ n, P15171397161095639169.a n = A268387 (n + 1)

end A268387

/-! ## A268387.P13314286171974345226

`A193231(A048675(A007913(A293443(n+1))))`
-/

namespace A268387.P13314286171974345226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A048675 (A007913 (A293443 (n + 1)).toNat).toNat).toNat

end

end A268387.P13314286171974345226

namespace A268387

/-- `A193231(A048675(A007913(A293443(n+1))))` -/
def P13314286171974345226.Spec : Prop :=
  ∀ n, P13314286171974345226.a n = A268387 (n + 1)

end A268387

/-! ## A268387.P17975525732892893594

`A087207(A007913(A293442(n+1))²)`
-/

namespace A268387.P17975525732892893594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (A007913 (A293442 (n + 1)).toNat ^ 2).toNat

end

end A268387.P17975525732892893594

namespace A268387

/-- `A087207(A007913(A293442(n+1))²)` -/
def P17975525732892893594.Spec : Prop :=
  ∀ n, P17975525732892893594.a n = A268387 (n + 1)

end A268387

/-! ## A268387.P16055860575003974373

`A331740(A007913(A293442(n+1))²)`
-/

namespace A268387.P16055860575003974373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331740 (A007913 (A293442 (n + 1)).toNat ^ 2).toNat

end

end A268387.P16055860575003974373

namespace A268387

/-- `A331740(A007913(A293442(n+1))²)` -/
def P16055860575003974373.Spec : Prop :=
  ∀ n, P16055860575003974373.a n = A268387 (n + 1)

end A268387

/-! ## A268387.P18272650497729734679

`val(A334205(n+1), 2)`
-/

namespace A268387.P18272650497729734679
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A334205 (n + 1)).toNat 2

end

end A268387.P18272650497729734679

namespace A268387

/-- `val(A334205(n+1), 2)` -/
def P18272650497729734679.Spec : Prop :=
  ∀ n, (P18272650497729734679.a n : ℤ) = A268387 (n + 1)

end A268387

/-! ## A268387.P9331359733459881476

`A001222(gcd(2^n, A334205(n+1)))`
-/

namespace A268387.P9331359733459881476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (2 ^ n : ℤ) (A334205 (n + 1)))

end

end A268387.P9331359733459881476

namespace A268387

/-- `A001222(gcd(2^n, A334205(n+1)))` -/
def P9331359733459881476.Spec : Prop :=
  ∀ n, P9331359733459881476.a n = A268387 (n + 1)

end A268387

/-! ## A268387.P4390380379255101887

`A268386(A268385(n+1))`
-/

namespace A268387.P4390380379255101887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268386 (A268385 (n + 1)).toNat

end

end A268387.P4390380379255101887

namespace A268387

/-- `A268386(A268385(n+1))` -/
def P4390380379255101887.Spec : Prop :=
  ∀ n, P4390380379255101887.a n = A268387 (n + 1)

end A268387

/-! ## A268387.P16876209771800334397

`A268386(2^A268386(n+1))`
-/

namespace A268387.P16876209771800334397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268386 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A268386 (n + 1) : ℤ))).toNat

end

end A268387.P16876209771800334397

namespace A268387

/-- `A268386(2^A268386(n+1))` -/
def P16876209771800334397.Spec : Prop :=
  ∀ n, P16876209771800334397.a n = A268387 (n + 1)

end A268387

/-! ## A268387.P7636490856968898560

`val(A226532(n+1), 2)`
-/

namespace A268387.P7636490856968898560
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A226532 (n + 1)).toNat 2

end

end A268387.P7636490856968898560

namespace A268387

/-- `val(A226532(n+1), 2)` -/
def P7636490856968898560.Spec : Prop :=
  ∀ n, (P7636490856968898560.a n : ℤ) = A268387 (n + 1)

end A268387

/-!
# A268388: "Fermi-Dirac composites": numbers k for which A064547(k) > 1.

The programs for A268388, the canonical program `A268388.P181920710593903785` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268388 has offset 1).

The definition of A268388 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268388.P16358348882064655368

`lt[1, A064547(n+1)]+1`
-/

namespace A268388.P16358348882064655368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A268388.P16358348882064655368

namespace A268388

/-- `lt[1, A064547(n+1)]+1` -/
def P16358348882064655368.Spec : Prop :=
  ∀ n, (P16358348882064655368.a n : ℤ) = A268388 (n + 1)

end A268388

/-! ## A268388.P6237655578651095265

`lt[1, A302776(n+1)]+1`
-/

namespace A268388.P6237655578651095265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302776 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A268388.P6237655578651095265

namespace A268388

/-- `lt[1, A302776(n+1)]+1` -/
def P6237655578651095265.Spec : Prop :=
  ∀ n, (P6237655578651095265.a n : ℤ) = A268388 (n + 1)

end A268388

/-! ## A268388.P181920710593903785

`eq[0, A302777(n+2)]+2`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A268388

/-- `eq[0, A302777(n+2)]+2` -/
def P181920710593903785.Spec : Prop :=
  ∀ n, (P181920710593903785.a n : ℤ) = A268388 (n + 1)

theorem P181920710593903785.correct : P181920710593903785.Spec := by
  intro n
  simp only [A268388, Nat.add_sub_cancel]

end A268388

/-! ## A268388.P228508488889628677

`lt[1, A302792(n+1)]+1`
-/

namespace A268388.P228508488889628677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302792 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A268388.P228508488889628677

namespace A268388

/-- `lt[1, A302792(n+1)]+1` -/
def P228508488889628677.Spec : Prop :=
  ∀ n, (P228508488889628677.a n : ℤ) = A268388 (n + 1)

end A268388

/-! ## A268388.P1391462534334472557

`lt[1, A318306(n+1)]+1`
-/

namespace A268388.P1391462534334472557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318306 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A268388.P1391462534334472557

namespace A268388

/-- `lt[1, A318306(n+1)]+1` -/
def P1391462534334472557.Spec : Prop :=
  ∀ n, (P1391462534334472557.a n : ℤ) = A268388 (n + 1)

end A268388

/-! ## A268388.P11243091211458855443

`lt[1, A323413(n+1)]+1`
-/

namespace A268388.P11243091211458855443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323413 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A268388.P11243091211458855443

namespace A268388

/-- `lt[1, A323413(n+1)]+1` -/
def P11243091211458855443.Spec : Prop :=
  ∀ n, (P11243091211458855443.a n : ℤ) = A268388 (n + 1)

end A268388

/-! ## A268388.P17437440771368667863

`lt[1, A340088(n+1)]+1`
-/

namespace A268388.P17437440771368667863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340088 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A268388.P17437440771368667863

namespace A268388

/-- `lt[1, A340088(n+1)]+1` -/
def P17437440771368667863.Spec : Prop :=
  ∀ n, (P17437440771368667863.a n : ℤ) = A268388 (n + 1)

end A268388

/-! ## A268388.P8823698124007922082

`lt[1, A340089(n+1)]+1`
-/

namespace A268388.P8823698124007922082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340089 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A268388.P8823698124007922082

namespace A268388

/-- `lt[1, A340089(n+1)]+1` -/
def P8823698124007922082.Spec : Prop :=
  ∀ n, (P8823698124007922082.a n : ℤ) = A268388 (n + 1)

end A268388

/-! ## A268388.P17371689184608630820

`lt[2, A305979(n+1)]+1`
-/

namespace A268388.P17371689184608630820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305979 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A268388.P17371689184608630820

namespace A268388

/-- `lt[2, A305979(n+1)]+1` -/
def P17371689184608630820.Spec : Prop :=
  ∀ n, (P17371689184608630820.a n : ℤ) = A268388 (n + 1)

end A268388

/-! ## A268388.P9445256393546112047

`lt[2, A318307(n+1)]+1`
-/

namespace A268388.P9445256393546112047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318307 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A268388.P9445256393546112047

namespace A268388

/-- `lt[2, A318307(n+1)]+1` -/
def P9445256393546112047.Spec : Prop :=
  ∀ n, (P9445256393546112047.a n : ℤ) = A268388 (n + 1)

end A268388

/-! ## A268388.P16444852980169827864

`lt[A091732(n+1), n]+1`
-/

namespace A268388.P16444852980169827864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091732 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A268388.P16444852980169827864

namespace A268388

/-- `lt[A091732(n+1), n]+1` -/
def P16444852980169827864.Spec : Prop :=
  ∀ n, (P16444852980169827864.a n : ℤ) = A268388 (n + 1)

end A268388

/-! ## A268388.P10573221181708308777

`lt[A340087(n+1), n]+1`
-/

namespace A268388.P10573221181708308777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340087 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A268388.P10573221181708308777

namespace A268388

/-- `lt[A340087(n+1), n]+1` -/
def P10573221181708308777.Spec : Prop :=
  ∀ n, (P10573221181708308777.a n : ℤ) = A268388 (n + 1)

end A268388

/-! ## A268388.P1707637923406972370

`comp[A050376(n+1)-2]+2`
-/

namespace A268388.P1707637923406972370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A268388.P1707637923406972370

namespace A268388

/-- `comp[A050376(n+1)-2]+2` -/
def P1707637923406972370.Spec : Prop :=
  ∀ n, (P1707637923406972370.a n : ℤ) = A268388 (n + 1)

end A268388

/-! ## A268388.P1734969395129298704

`∪[A024619(n+1), A082772(n+1)]`
-/

namespace A268388.P1734969395129298704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A268388.P1734969395129298704

namespace A268388

/-- `∪[A024619(n+1), A082772(n+1)]` -/
def P1734969395129298704.Spec : Prop :=
  ∀ n, (P1734969395129298704.a n : ℤ) = A268388 (n + 1)

end A268388

/-! ## A268388.P11727184171331360756

`A020725(lt[1, A323413(n+1)])`
-/

namespace A268388.P11727184171331360756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A268388.P11727184171331360756

namespace A268388

/-- `A020725(lt[1, A323413(n+1)])` -/
def P11727184171331360756.Spec : Prop :=
  ∀ n, P11727184171331360756.a n = A268388 (n + 1)

end A268388

/-! ## A268388.P14519149654407372050

`lt[1, A126168(n+1)]+1`
-/

namespace A268388.P14519149654407372050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126168 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A268388.P14519149654407372050

namespace A268388

/-- `lt[1, A126168(n+1)]+1` -/
def P14519149654407372050.Spec : Prop :=
  ∀ n, (P14519149654407372050.a n : ℤ) = A268388 (n + 1)

end A268388

/-! ## A268388.P6391784335720888770

`lt[2, A037445(n+1)]+1`
-/

namespace A268388.P6391784335720888770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A268388.P6391784335720888770

namespace A268388

/-- `lt[2, A037445(n+1)]+1` -/
def P6391784335720888770.Spec : Prop :=
  ∀ n, (P6391784335720888770.a n : ℤ) = A268388 (n + 1)

end A268388

/-! ## A268388.P12516424680070934238

`lt[A223490(n+1), n]+1`
-/

namespace A268388.P12516424680070934238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223490 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A268388.P12516424680070934238

namespace A268388

/-- `lt[A223490(n+1), n]+1` -/
def P12516424680070934238.Spec : Prop :=
  ∀ n, (P12516424680070934238.a n : ℤ) = A268388 (n + 1)

end A268388

/-! ## A268388.P12773948649071984878

`lt[n+2, A049417(n+1)]+1`
-/

namespace A268388.P12773948649071984878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A268388.P12773948649071984878

namespace A268388

/-- `lt[n+2, A049417(n+1)]+1` -/
def P12773948649071984878.Spec : Prop :=
  ∀ n, (P12773948649071984878.a n : ℤ) = A268388 (n + 1)

end A268388

/-! ## A268388.P14954119401173839224

`lt[1, A126168(A028310(n))]`
-/

namespace A268388.P14954119401173839224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126168 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A268388.P14954119401173839224

namespace A268388

/-- `lt[1, A126168(A028310(n))]` -/
def P14954119401173839224.Spec : Prop :=
  ∀ n, (P14954119401173839224.a n : ℤ) = A268388 (n + 1)

end A268388

/-!
# A268389: a(n) = greatest k such that polynomial (X+1)^k divides the polynomial (in polynomial ring GF(2)[X]) that is encoded in the binary expansion of n. (See the comments for details).

The programs for A268389, there is no canonical definition to state claims against.
-/

/-! ## A268389.P6153692569411465253

`A007949(A235042(n+1))`
-/

namespace A268389.P6153692569411465253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A235042 (n + 1)).toNat

end

end A268389.P6153692569411465253

/-! ## A268389.P5411310432887541522

`Δ[A268395(n)]`
-/

namespace A268389.P5411310432887541522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268395 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268389.P5411310432887541522

/-! ## A268389.P11552406926791715937

`1-Δ[A268672(n)]`
-/

namespace A268389.P11552406926791715937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A268389.P11552406926791715937

/-! ## A268389.P2902218888458183612

`A277818(n+1)-1`
-/

namespace A268389.P2902218888458183612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277818 (n + 1) - 1

end

end A268389.P2902218888458183612

/-! ## A268389.P8716723209806483384

`val(A305422(n+1), 2)`
-/

namespace A268389.P8716723209806483384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A305422 (n + 1)).toNat 2

end

end A268389.P8716723209806483384

/-! ## A268389.P12708442350334991196

`val(A379471(n+1), 2)`
-/

namespace A268389.P12708442350334991196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A379471 (n + 1)).toNat 2

end

end A268389.P12708442350334991196

/-! ## A268389.P14859883994319438366

`val(A379472(n+1), 2)`
-/

namespace A268389.P14859883994319438366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A379472 (n + 1)).toNat 2

end

end A268389.P14859883994319438366

/-! ## A268389.P4004780866393685379

`val(A305425((n+1)/2^val(n+1, 2)), 2)`
-/

namespace A268389.P4004780866393685379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A305425 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat).toNat 2

end

end A268389.P4004780866393685379

/-! ## A268389.P11831174734653548938

`A277808(A277902(n+1))`
-/

namespace A268389.P11831174734653548938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277808 (A277902 (n + 1)).toNat

end

end A268389.P11831174734653548938

/-! ## A268389.P2454158878885306976

`A268679(A003188(n+1))-1`
-/

namespace A268389.P2454158878885306976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268679 (A003188 (n + 1)).toNat - 1

end

end A268389.P2454158878885306976

/-! ## A268389.P12682177627677188278

`A268395(n+1)-A268395(n)`
-/

namespace A268389.P12682177627677188278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268395 (n + 1) - A268395 n

end

end A268389.P12682177627677188278

/-! ## A268389.P5130133682696696570

`A092436(n+1)*A268679(n+1)`
-/

namespace A268389.P5130133682696696570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092436 (n + 1) * A268679 (n + 1)

end

end A268389.P5130133682696696570

/-! ## A268389.P11558858202073221942

`val(A193231(n+1), 2)`
-/

namespace A268389.P11558858202073221942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A193231 (n + 1)).toNat 2

end

end A268389.P11558858202073221942

/-! ## A268389.P17752118681195546837

`A277808(A234612(n+1))`
-/

namespace A268389.P17752118681195546837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277808 (A234612 (n + 1)).toNat

end

end A268389.P17752118681195546837

/-! ## A268389.P17232077570978920061

`A268679(A048724(n+1))-1`
-/

namespace A268389.P17232077570978920061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268679 (A048724 (n + 1)).toNat - 1

end

end A268389.P17232077570978920061

/-! ## A268389.P3763395545695021338

`A268678(A161560(n+2))-A268678(n)`
-/

namespace A268389.P3763395545695021338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268678 (A161560 (n + 2)).toNat - A268678 n

end

end A268389.P3763395545695021338

/-! ## A268389.P16512420943906259655

`A136480(A234613(n+1))-1`
-/

namespace A268389.P16512420943906259655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A234613 (n + 1)).toNat - 1

end

end A268389.P16512420943906259655

/-! ## A268389.P3610246214210458195

`val(A091203(n+1), 3)`
-/

namespace A268389.P3610246214210458195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A091203 (n + 1)).toNat 3

end

end A268389.P3610246214210458195

/-! ## A268389.P7944341571872899807

`val(A091205(n+1), 3)`
-/

namespace A268389.P7944341571872899807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A091205 (n + 1)).toNat 3

end

end A268389.P7944341571872899807

/-! ## A268389.P10558089646830842300

`val(A235042(n+1), 3)`
-/

namespace A268389.P10558089646830842300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A235042 (n + 1)).toNat 3

end

end A268389.P10558089646830842300

/-!
# A268390: 

The programs for A268390, there is no canonical definition to state claims against.
-/

/-! ## A268390.P15344156624800342608

`lt[A268386(n+1), 1]+1`
-/

namespace A268390.P15344156624800342608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268386 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A268390.P15344156624800342608

/-! ## A268390.P1162708738814990307

`eq[0, A268387(n+1)]+1`
-/

namespace A268390.P1162708738814990307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268387 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A268390.P1162708738814990307

/-! ## A268390.P2396939890724757045

`record[n+1-A002061(n)*A268387(n+1)]`
-/

namespace A268390.P2396939890724757045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A002061 n * A268387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268390.P2396939890724757045

/-! ## A268390.P10164177342184538019

`record[n+1-A248489(n+1)*A268387(n+1)]`
-/

namespace A268390.P10164177342184538019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A248489 (n + 1) * A268387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268390.P10164177342184538019

/-! ## A268390.P2403006506058314935

`eq[2, A000122(A253139(n+1))]+1`
-/

namespace A268390.P2403006506058314935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A253139 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A268390.P2403006506058314935

/-! ## A268390.P12888252597798735560

`A238748(A084110(A259021(n+1))+n)`
-/

namespace A268390.P12888252597798735560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238748 (A084110 (A259021 (n + 1)).toNat + (n : ℤ)).toNat

end

end A268390.P12888252597798735560

/-! ## A268390.P4029045789516793986

`A238748(A060775((n+1)*(n+2)))`
-/

namespace A268390.P4029045789516793986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238748 (A060775 ((n + 1) * (n + 2))).toNat

end

end A268390.P4029045789516793986

/-! ## A268390.P6280464132945127589

`A238748(A008683(A077438(n+1))+n+1)`
-/

namespace A268390.P6280464132945127589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238748 (A008683 (A077438 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A268390.P6280464132945127589

/-! ## A268390.P5184123514890857096

`A238748(A008683(A085986(n+1))+n+1)`
-/

namespace A268390.P5184123514890857096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238748 (A008683 (A085986 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A268390.P5184123514890857096

/-! ## A268390.P1833987195595665848

`A238748(A064839(A025487(n+1))+n)`
-/

namespace A268390.P1833987195595665848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238748 (A064839 (A025487 (n + 1)).toNat + (n : ℤ)).toNat

end

end A268390.P1833987195595665848

/-!
# A268391: Numbers of the form p^A001317(k) where p is prime and k >= 0.

The programs for A268391, there is no canonical definition to state claims against.
-/

/-! ## A268391.P11796976600638198440

`record[2*(n+1)/A293443(A293443(n+1))]`
-/

namespace A268391.P11796976600638198440
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℚ) / (A293443 (A293443 (n + 1)).toNat : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268391.P11796976600638198440

/-! ## A268391.P7974612626043170814

`eq[2, A293443(A293443(n+1))]+1`
-/

namespace A268391.P7974612626043170814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293443 (A293443 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A268391.P7974612626043170814

/-! ## A268391.P6892446034065871462

`∩[A128603(n+1), A279457(n+1)]`
-/

namespace A268391.P6892446034065871462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268391.P6892446034065871462

/-! ## A268391.P8595284287314243109

`∩[A026422(n+1), A128603(n+1)]`
-/

namespace A268391.P8595284287314243109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268391.P8595284287314243109

/-! ## A268391.P10114233550148159310

`∩[A026424(n+1), A128603(n+1)]`
-/

namespace A268391.P10114233550148159310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268391.P10114233550148159310

/-! ## A268391.P12570405627079409749

`∩[A002035(n+1), A128603(n+1)]`
-/

namespace A268391.P12570405627079409749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268391.P12570405627079409749

/-! ## A268391.P2282989762482572502

`∩[A128603(n+1), A266347(n+1)]`
-/

namespace A268391.P2282989762482572502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268391.P2282989762482572502

/-! ## A268391.P18268346378787570942

`∩[A000037(n+1), A128603(n+1)]`
-/

namespace A268391.P18268346378787570942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268391.P18268346378787570942

/-! ## A268391.P13473638941453140120

`record[A350389(A128603(n+1))]`
-/

namespace A268391.P13473638941453140120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (A128603 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268391.P13473638941453140120

/-! ## A268391.P14679191351369815649

`filter[A128603(n+1), A267635(#)]`
-/

namespace A268391.P14679191351369815649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128603 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A268391.P14679191351369815649

/-! ## A268391.P4726594727817852010

`filter[A128603(n+1), A381955(#)]`
-/

namespace A268391.P4726594727817852010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128603 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381955 (f1 j).toNat = 1) n)

end

end A268391.P4726594727817852010

/-! ## A268391.P17487731492500503831

`eq[A001222(n+1), A254578(n+1)]+1`
-/

namespace A268391.P17487731492500503831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254578 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A268391.P17487731492500503831

/-! ## A268391.P7705638801683219376

`eq[A000005(n+1), A046523(A046523(n+1)+1)]+1`
-/

namespace A268391.P7705638801683219376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A046523 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A268391.P7705638801683219376

/-! ## A268391.P14724757934143284416

`eq[A050332(n+2), A066829(A002033(n+1)+1)]+2`
-/

namespace A268391.P14724757934143284416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050332 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (A002033 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A268391.P14724757934143284416

/-! ## A268391.P3313574097257723774

`filter[A204878(n+1), A353817(#)]`
-/

namespace A268391.P3313574097257723774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204878 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A268391.P3313574097257723774

/-! ## A268391.P10885771821481670930

`eq[A018892(n+1), A067824(A067824(n+1)+1)]+1`
-/

namespace A268391.P10885771821481670930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067824 (A067824 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A268391.P10885771821481670930

/-! ## A268391.P16112993948782305066

`eq[A067824(A067824(n+1)+1), A100565(n+1)]+1`
-/

namespace A268391.P16112993948782305066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067824 (A067824 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100565 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A268391.P16112993948782305066

/-! ## A268391.P5904053031095857801

`∩[A128603(n+1), A239161(n+1)]`
-/

namespace A268391.P5904053031095857801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268391.P5904053031095857801

/-!
# A268392: a(n) = A268385(A050376(n)).

The programs for A268392, there is no canonical definition to state claims against.
-/

/-! ## A268392.P9708795502276571960

`A268385(A050376(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A268392.P9708795502276571960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268385 (A050376 (n + 1)).toNat

end

end A268392.P9708795502276571960

/-! ## A268392.P17810153580243413756

`A268385(A084400(n+2))`
-/

namespace A268392.P17810153580243413756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268385 (A084400 (n + 2)).toNat

end

end A268392.P17810153580243413756

/-! ## A268392.P17850552784821249515

`A268385(sqrt(A082522(n+1)))`
-/

namespace A268392.P17850552784821249515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268385 (SequenceMachineLib.roundAway (Real.sqrt (A082522 (n + 1) : ℝ))).toNat

end

end A268392.P17850552784821249515

/-! ## A268392.P11065526184253434220

`A268385(record[A223490(n+2)])`
-/

namespace A268392.P11065526184253434220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223490 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268385 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A268392.P11065526184253434220

/-! ## A268392.P6861134282461907528

`A268385(record[A223491(n+2)])`
-/

namespace A268392.P6861134282461907528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223491 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268385 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A268392.P6861134282461907528

/-!
# A268393: Positions of records in permutation A267107.

The programs for A268393, there is no canonical definition to state claims against.
-/

/-! ## A268393.P498219660966194492

`A267107(A268394(n+1))`
-/

namespace A268393.P498219660966194492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267107 (A268394 (n + 1)).toNat

end

end A268393.P498219660966194492

/-! ## A268393.P5589001256174729457

`A332807(2*a(n-1))` with `a(0)=1`
-/

namespace A268393.P5589001256174729457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A332807 (2 * a (n - 1)).toNat

end

end A268393.P5589001256174729457

/-! ## A268393.P16755250097722625071

`A332807(a(n-1)/(1-1/2))` with `a(0)=1`
-/

namespace A268393.P16755250097722625071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A332807 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (1 - (1 : ℚ) / 2))).toNat

end

end A268393.P16755250097722625071

/-! ## A268393.P5564225869236931081

`A080148(a(n-1))` with `a(0)=1`
-/

namespace A268393.P5564225869236931081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A080148 (a (n - 1)).toNat

end

end A268393.P5564225869236931081

/-! ## A268393.P18135237871835287680

`A138971(a(n-1))+1` with `a(0)=1`
-/

namespace A268393.P18135237871835287680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A138971 (a (n - 1)).toNat + 1

end

end A268393.P18135237871835287680

/-!
# A268394: Record values in permutation A267107.

The programs for A268394, there is no canonical definition to state claims against.
-/

/-! ## A268394.P15767753801980080732

`A267107(A268393(n+1))`
-/

namespace A268394.P15767753801980080732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267107 (A268393 (n + 1)).toNat

end

end A268394.P15767753801980080732

/-! ## A268394.P861475223749246289

`A332807(2*a(n-1)+1)` with `a(0)=1`
-/

namespace A268394.P861475223749246289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A332807 (2 * a (n - 1) + 1).toNat

end

end A268394.P861475223749246289

/-! ## A268394.P12031580417369381656

`A332807(or(1, 2*a(n-1)))` with `a(0)=1`
-/

namespace A268394.P12031580417369381656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A332807 (Int.lor 1 (2 * a (n - 1))).toNat

end

end A268394.P12031580417369381656

/-! ## A268394.P10221120207585977244

`A332807(xor(1, 2*a(n-1)))` with `a(0)=1`
-/

namespace A268394.P10221120207585977244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A332807 (Int.xor 1 (2 * a (n - 1))).toNat

end

end A268394.P10221120207585977244

/-! ## A268394.P10039869637751933303

`A332807(a(n-1)+a(n-1)+1)` with `a(0)=1`
-/

namespace A268394.P10039869637751933303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A332807 (a (n - 1) + (a (n - 1) + 1)).toNat

end

end A268394.P10039869637751933303

/-!
# A268395: Partial sums of A268389.

The programs for A268395, there is no canonical definition to state claims against.
-/

/-! ## A268395.P14121746452509828930

`n-A268672(n)`
-/

namespace A268395.P14121746452509828930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A268672 n

end

end A268395.P14121746452509828930

/-! ## A268395.P17343973644487619994

`A268389(n)+a(n-1)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A268395.P17343973644487619994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  A268389 n + a (n - 1)

end

end A268395.P17343973644487619994

/-! ## A268395.P8333656500558803354

`∑[A268389(floor(n/root(2, n+1))+1)]`
-/

namespace A268395.P8333656500558803354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268389 (⌊(n : ℝ) / (2 : ℝ) ^ (1 / (n + 1 : ℝ))⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268395.P8333656500558803354

/-! ## A268395.P1940831709453544222

`A268678(n-∑[1-comp[xor(n, 2*n)]%2])`
-/

namespace A268395.P1940831709453544222
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268678 ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A268395.P1940831709453544222

/-! ## A268395.P9014954495737643560

`A268678(A245710(n))`
-/

namespace A268395.P9014954495737643560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268678 (A245710 n).toNat

end

end A268395.P9014954495737643560

/-! ## A268395.P2475746327580499399

`A268678(n-∑[A010060(n)])`
-/

namespace A268395.P2475746327580499399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268678 ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A268395.P2475746327580499399

/-! ## A268395.P10504727302209178430

`A268678(n-∑[A341916(n)%2])`
-/

namespace A268395.P10504727302209178430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341916 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268678 ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A268395.P10504727302209178430

/-! ## A268395.P7388383266415134977

`∑[A268389(n+1)]-A268389(n+1)`
-/

namespace A268395.P7388383266415134977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A268389 (n + 1)

end

end A268395.P7388383266415134977

/-! ## A268395.P7327281582769197889

`A268678(n-∑[A005836(n+1)%2])`
-/

namespace A268395.P7327281582769197889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005836 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268678 ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A268395.P7327281582769197889

/-! ## A268395.P5812193914536329358

`A268678(n-∑[and(1, A061313(n+1))])`
-/

namespace A268395.P5812193914536329358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A061313 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268678 ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A268395.P5812193914536329358

/-! ## A268395.P14584644881573571253

`∑[A277818(n+1)]-(A277818(n+1)+n)`
-/

namespace A268395.P14584644881573571253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A277818 (n + 1) + (n : ℤ))

end

end A268395.P14584644881573571253

/-! ## A268395.P11804213033939924869

`A268678(∑[char[A048724(n+1)]])`
-/

namespace A268395.P11804213033939924869
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268678 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268395.P11804213033939924869

/-! ## A268395.P12339733996779641595

`A268678(∑[char[A048724(n)]]-1)`
-/

namespace A268395.P12339733996779641595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268678 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A268395.P12339733996779641595

/-! ## A268395.P8042334718249189376

`n-∑[A088705(A193231(n))]`
-/

namespace A268395.P8042334718249189376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (A193231 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268395.P8042334718249189376

/-!
# A268396: Sides of Pythagorean cuboids: triples (a, b, c) that are integral length sides of a rectangular cuboid for which the three face diagonals x, y, z also have integral length.

The programs for A268396, there is no canonical definition to state claims against.
-/

/-! ## A268396.P12548412888046417637

`A245616(or(n+1, C(A034261(n), n)))`
-/

namespace A268396.P12548412888046417637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245616 (Nat.lor (n + 1) (Nat.choose (A034261 n).toNat n))

end

end A268396.P12548412888046417637

/-! ## A268396.P5522388636276298133

`A336694(A134829(n))+A245616(n+1)`
-/

namespace A268396.P5522388636276298133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336694 (A134829 n).toNat + A245616 (n + 1)

end

end A268396.P5522388636276298133

/-! ## A268396.P9976476623070480556

`A245616(n+1)%A097103(A156126(n))`
-/

namespace A268396.P9976476623070480556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245616 (n + 1)) (A097103 (A156126 n).toNat)

end

end A268396.P9976476623070480556

/-! ## A268396.P15600746973418316468

`lcm(A244226(A293169(n)), A245616(n+1))`
-/

namespace A268396.P15600746973418316468
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A244226 (A293169 n).toNat) (A245616 (n + 1))

end

end A268396.P15600746973418316468

/-! ## A268396.P15560594982123727087

`A245616(n+1)+A000122(A098467(n+1))`
-/

namespace A268396.P15560594982123727087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245616 (n + 1) + A000122 (A098467 (n + 1)).toNat

end

end A268396.P15560594982123727087

/-!
# A268397: a(n) is the smallest prime with at least n consecutive primitive roots.

The programs for A268397, there is no canonical definition to state claims against.
-/

/-! ## A268397.P10015017382094701144

`A261438(A045778(n+1)+A023106(n))`
-/

namespace A268397.P10015017382094701144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261438 (A045778 (n + 1) + A023106 n).toNat

end

end A268397.P10015017382094701144

/-! ## A268397.P13002086619350843784

`A020639(A261438(n+1)*A261438(n+2))`
-/

namespace A268397.P13002086619350843784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A261438 (n + 1) * A261438 (n + 2)).toNat

end

end A268397.P13002086619350843784

/-! ## A268397.P13854478157915885555

`A020639(lcm(A261438(n+1), A261438(n+2)))`
-/

namespace A268397.P13854478157915885555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lcm (A261438 (n + 1)) (A261438 (n + 2)))

end

end A268397.P13854478157915885555

/-!
# A268398: Partial sums of A085731.

The programs for A268398, the canonical program `A268398.P16108927674745858169` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268398 has offset 1).

The definition of A268398 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268398.P16108927674745858169

`∑[A085731(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A268398

/-- `∑[A085731(n+1)]` -/
def P16108927674745858169.Spec : Prop :=
  ∀ n, P16108927674745858169.a n = A268398 (n + 1)

theorem P16108927674745858169.correct : P16108927674745858169.Spec := by
  intro n
  simp only [A268398, Nat.add_sub_cancel]

end A268398

/-! ## A268398.P3289858325491786446

`∑[gcd(n+1, Δ[A258864(n)])]`
-/

namespace A268398.P3289858325491786446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258864 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268398.P3289858325491786446

namespace A268398

/-- `∑[gcd(n+1, Δ[A258864(n)])]` -/
def P3289858325491786446.Spec : Prop :=
  ∀ n, (P3289858325491786446.a n : ℤ) = A268398 (n + 1)

end A268398

/-! ## A268398.P9291989839034257448

`∑[(n+1)/A083346(n+1)]`
-/

namespace A268398.P9291989839034257448
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A083346 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268398.P9291989839034257448

namespace A268398

/-- `∑[(n+1)/A083346(n+1)]` -/
def P9291989839034257448.Spec : Prop :=
  ∀ n, P9291989839034257448.a n = (A268398 (n + 1) : ℚ)

end A268398

/-! ## A268398.P11173287038921702347

`∑[gcd(A000027(n+1), A003415(n+1))]`
-/

namespace A268398.P11173287038921702347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A003415 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268398.P11173287038921702347

namespace A268398

/-- `∑[gcd(A000027(n+1), A003415(n+1))]` -/
def P11173287038921702347.Spec : Prop :=
  ∀ n, (P11173287038921702347.a n : ℤ) = A268398 (n + 1)

theorem P11173287038921702347.correct : P11173287038921702347.Spec := by
  intro n
  simp only [A268398, Nat.add_sub_cancel, A268398.P11173287038921702347.f1, A268398.P11173287038921702347.a, A268398.P16108927674745858169.f1, A268398.P16108927674745858169.a, A000027, A000027.P10331202704469894836.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A085731, A085731.P17818604226734037125.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A268398

/-! ## A268398.P934331714910349094

`∑[gcd(A068719(n+1), A073675(n+1))]`
-/

namespace A268398.P934331714910349094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068719 (n + 1)) (A073675 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268398.P934331714910349094

namespace A268398

/-- `∑[gcd(A068719(n+1), A073675(n+1))]` -/
def P934331714910349094.Spec : Prop :=
  ∀ n, (P934331714910349094.a n : ℤ) = A268398 (n + 1)

end A268398

/-! ## A268398.P713886215265146898

`∑[gcd(A006579(n+1), A348492(n+1))]`
-/

namespace A268398.P713886215265146898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006579 (n + 1)) (A348492 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268398.P713886215265146898

namespace A268398

/-- `∑[gcd(A006579(n+1), A348492(n+1))]` -/
def P713886215265146898.Spec : Prop :=
  ∀ n, (P713886215265146898.a n : ℤ) = A268398 (n + 1)

end A268398

/-!
# A268399: Number of North-East lattice paths from (0,0) to (n,n) that have exactly four east steps below the subdiagonal y = x-1.

The programs for A268399, there is no canonical definition to state claims against.
-/

/-! ## A268399.P3627444727224467937

`Δ[A067326(n)]-A067295(n+1)`
-/

namespace A268399.P3627444727224467937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A067295 (n + 1)

end

end A268399.P3627444727224467937

/-! ## A268399.P4850138463635813138

`Δ[A067326(n)-A067295(n)]-A067295(n)`
-/

namespace A268399.P4850138463635813138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067326 n - A067295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A067295 n

end

end A268399.P4850138463635813138

