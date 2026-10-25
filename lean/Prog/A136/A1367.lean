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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
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
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A136702: Final nonzero digit of n! in base 16.

The programs for A136702, the canonical program `A136702.P11278385412180144797` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136702 has offset 0).

The definition of A136702 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 183 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136702.P11278385412180144797

`A248766(floor(sqrt(n²+1)))%16`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A136702

/-- `A248766(floor(sqrt(n²+1)))%16` -/
def P11278385412180144797.Spec : Prop :=
  ∀ n, P11278385412180144797.a n = A136702 n

theorem P11278385412180144797.correct : P11278385412180144797.Spec := by
  intro n
  simp only [A136702]

end A136702

/-! ## A136702.P15247097688519643052

`and(15, A248766(A028310(n)))`
-/

namespace A136702.P15247097688519643052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 15 (A248766 (A028310 n).toNat)

end

end A136702.P15247097688519643052

namespace A136702

/-- `and(15, A248766(A028310(n)))` -/
def P15247097688519643052.Spec : Prop :=
  ∀ n, P15247097688519643052.a n = A136702 n

end A136702

/-!
# A136703: Number of Lyndon words on {1,2,3} with an even number of 1's and an even number of 2's.

The programs for A136703, there is no canonical definition to state claims against.
-/

/-! ## A136703.P5749469554925886672

`A133267(n+1)-A006575(and(1, 20*a(n-1)+1)+n)/2` with `a(0)=1`
-/

namespace A136703.P5749469554925886672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A133267 (n + 1) : ℚ) - (A006575 (Int.land 1 (SequenceMachineLib.roundAway (20 * a (n - 1) + 1)) + (n : ℤ)).toNat : ℚ) / 2

end

end A136703.P5749469554925886672

/-! ## A136703.P11633263619465454855

`A133267(n+1)-A006575(ceil(3^((n-2-a(n-1))%3))+n)/2` with `a(0)=1`
-/

namespace A136703.P11633263619465454855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A133267 (n + 1) : ℚ) - (A006575 (⌈(3 : ℚ) ^ (Int.tmod (SequenceMachineLib.roundAway (((n : ℤ) - 2 : ℚ) - a (n - 1))) 3 : ℤ)⌉ + (n : ℤ)).toNat : ℚ) / 2

end

end A136703.P11633263619465454855

/-! ## A136703.P7953994204623040723

`A133267(n+1)-A136704(A028310(n)+1)`
-/

namespace A136703.P7953994204623040723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133267 (n + 1) - A136704 (A028310 n + 1).toNat

end

end A136703.P7953994204623040723

/-! ## A136703.P1297989927677032127

`A133267(n+1)-(A136704(n+1)+A000007(n))`
-/

namespace A136703.P1297989927677032127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133267 (n + 1) - (A136704 (n + 1) + A000007 n)

end

end A136703.P1297989927677032127

/-! ## A136703.P13721851981546044259

`A133267(n+1)+A136704(n+1)-A006575(n+1)`
-/

namespace A136703.P13721851981546044259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133267 (n + 1) + (A136704 (n + 1) - A006575 (n + 1))

end

end A136703.P13721851981546044259

/-!
# A136704: Number of Lyndon words on {1,2,3} with an odd number of 1's and an odd number of 2's.

The programs for A136704, there is no canonical definition to state claims against.
-/

/-! ## A136704.P13432761462583606884

`floor(A006575(n+1)/2)`
-/

namespace A136704.P13432761462583606884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006575 (n + 1) : ℚ) / 2⌋

end

end A136704.P13432761462583606884

/-! ## A136704.P16223388435841444810

`A006575(ceil(3^((n-2-a(n-1))%3))+n)/2` with `a(0)=0`
-/

namespace A136704.P16223388435841444810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (A006575 (⌈(3 : ℚ) ^ (Int.tmod (SequenceMachineLib.roundAway (((n : ℤ) - 2 : ℚ) - a (n - 1))) 3 : ℤ)⌉ + (n : ℤ)).toNat : ℚ) / 2

end

end A136704.P16223388435841444810

/-! ## A136704.P13297076689725338201

`(A006575(n+1)-A000007(n))/2`
-/

namespace A136704.P13297076689725338201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006575 (n + 1) - A000007 n : ℚ) / 2

end

end A136704.P13297076689725338201

/-! ## A136704.P1688039469281798701

`ceil((A006575(n+1)-A010054(n))/2)`
-/

namespace A136704.P1688039469281798701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006575 (n + 1) - A010054 n : ℚ) / 2⌉

end

end A136704.P1688039469281798701

/-! ## A136704.P13751094565598250890

`A006575(and(1, 20*a(n-1)+1)+n)/2` with `a(0)=0`
-/

namespace A136704.P13751094565598250890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (A006575 (Int.land 1 (SequenceMachineLib.roundAway (20 * a (n - 1) + 1)) + (n : ℤ)).toNat : ℚ) / 2

end

end A136704.P13751094565598250890

/-!
# A136705: Triangle read by rows where the n-th row gives the coefficients of the characteristic polynomial for a Fibonacci-type matrix with a=1 and b=1.

The programs for A136705, there is no canonical definition to state claims against.
-/

/-! ## A136705.P13647941163707670768

`round(atan(atan(A134885(n+1))))`
-/

namespace A136705.P13647941163707670768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (Real.arctan (A134885 (n + 1) : ℝ)))

end

end A136705.P13647941163707670768

/-! ## A136705.P3614514386274117651

`A240328(A008284(n+1))^A254067(n+2)`
-/

namespace A136705.P3614514386274117651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240328 (A008284 (n + 1)).toNat : ℚ) ^ (A254067 (n + 2) : ℤ)

end

end A136705.P3614514386274117651

/-! ## A136705.P5291612068626186981

`A010057(A064094(n))*A122188(n+1)`
-/

namespace A136705.P5291612068626186981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A064094 n).toNat * A122188 (n + 1)

end

end A136705.P5291612068626186981

/-! ## A136705.P16941493746628305747

`A015075(A002024(n+2)^A046854(n))`
-/

namespace A136705.P16941493746628305747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015075 (SequenceMachineLib.roundAway ((A002024 (n + 2) : ℚ) ^ (A046854 n : ℤ))).toNat

end

end A136705.P16941493746628305747

/-! ## A136705.P4397011397066826059

`A008683(A293558(n+3))`
-/

namespace A136705.P4397011397066826059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A293558 (n + 3)).toNat

end

end A136705.P4397011397066826059

/-!
# A136706: At step n the sequence lists the number of occurrences of digit (n mod k), with k>0, in all the numbers from 1 to n. Case k=2.

The programs for A136706, there is no canonical definition to state claims against.
-/

/-! ## A136706.P9637908354091574955

`A048766(A025823(n)^A005206(n))`
-/

namespace A136706.P9637908354091574955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (SequenceMachineLib.roundAway ((A025823 n : ℚ) ^ (A005206 n : ℤ))).toNat

end

end A136706.P9637908354091574955

/-! ## A136706.P7333469007608587124

`A048766(A025823(n)^A005378(n))`
-/

namespace A136706.P7333469007608587124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (SequenceMachineLib.roundAway ((A025823 n : ℚ) ^ (A005378 n : ℤ))).toNat

end

end A136706.P7333469007608587124

/-! ## A136706.P3959086664107763702

`A048766(A025823(n)^A195119(n))`
-/

namespace A136706.P3959086664107763702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (SequenceMachineLib.roundAway ((A025823 n : ℚ) ^ (A195119 n : ℤ))).toNat

end

end A136706.P3959086664107763702

/-! ## A136706.P1255478121898313041

`A053735(A025823(n)^A079398(n))`
-/

namespace A136706.P1255478121898313041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (SequenceMachineLib.roundAway ((A025823 n : ℚ) ^ (A079398 n : ℤ))).toNat

end

end A136706.P1255478121898313041

/-! ## A136706.P4169851210202517706

`A010879(A025823(n)^n)`
-/

namespace A136706.P4169851210202517706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A025823 n ^ n).toNat

end

end A136706.P4169851210202517706

/-!
# A136707: At step n the sequence lists the number of occurrences of digit (n mod k), with k>0, in all the numbers from 1 to n. Case k=3.

The programs for A136707, there is no canonical definition to state claims against.
-/

/-! ## A136707.P3738378413539451332

`gcd(A008683(A122636(n+1)), A097109(n))`
-/

namespace A136707.P3738378413539451332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (A122636 (n + 1)).toNat) (A097109 n)

end

end A136707.P3738378413539451332

/-! ## A136707.P10868231150474976887

`A294339(A128827(n+1))%A076396(2*n+3)`
-/

namespace A136707.P10868231150474976887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294339 (A128827 (n + 1)).toNat) (A076396 (2 * n + 3))

end

end A136707.P10868231150474976887

/-!
# A136714: At step n the sequence lists the number of occurrences of digit (n mod k), with k>0, in all the numbers from 1 to n. Case k=10.

The programs for A136714, there is no canonical definition to state claims against.
-/

/-! ## A136714.P13632723393305502205

`A256100(A058183(n+1))`
-/

namespace A136714.P13632723393305502205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256100 (A058183 (n + 1)).toNat

end

end A136714.P13632723393305502205

/-!
# A136716: Triangle T(n,k), 0 <= k < n, read by rows: T(n,k) is the number of permutations of the set O_n = {1,3,5,...,2n-1} with k excedances.

The programs for A136716, there is no canonical definition to state claims against.
-/

/-! ## A136716.P4490084937954013373

`A213623(A099040(n*A047996(n)))`
-/

namespace A136716.P4490084937954013373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213623 (A099040 ((n : ℤ) * A047996 n).toNat).toNat

end

end A136716.P4490084937954013373

/-! ## A136716.P5083753207063877865

`or(A213623(A099040(n)), A261685(n+1))`
-/

namespace A136716.P5083753207063877865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A213623 (A099040 n).toNat) (A261685 (n + 1))

end

end A136716.P5083753207063877865

/-!
# A136717: Triangle T(n,k), 1 <= k <= n, read by rows: T(n,k) is the number of permutations in the symmetric group S_n having k multiplicative 3-excedances. Equivalently, the number of permutations of the set {3,6,9,...,3n} with k excedances.

The programs for A136717, there is no canonical definition to state claims against.
-/

/-! ## A136717.P11030709742774960103

`A136716(A291551(n+3)+n+1)`
-/

namespace A136717.P11030709742774960103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136716 (A291551 (n + 3) + (n + 1 : ℤ)).toNat

end

end A136717.P11030709742774960103

/-! ## A136717.P1800298893274058346

`A136716(n+1)%A012212(A052296(n))`
-/

namespace A136717.P1800298893274058346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136716 (n + 1)) (A012212 (A052296 n).toNat)

end

end A136717.P1800298893274058346

/-!
# A136718: Triangle read by rows: T(n,k) is the number of permutations of {1,2,...,n} having k entries divisible by 3 that are followed by a smaller entry (n>=1, k>=0).

The programs for A136718, there is no canonical definition to state claims against.
-/

/-! ## A136718.P14466400586015008423

`A136717(record[n%(A136717(n+1)+n)]+1)`
-/

namespace A136718.P14466400586015008423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A136717 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136717 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A136718.P14466400586015008423

/-! ## A136718.P996694645357394963

`filter[A136717(n+1), A022932(#)]`
-/

namespace A136718.P996694645357394963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022932 (f1 j).toNat = 1) n)

end

end A136718.P996694645357394963

/-! ## A136718.P366412894004519759

`filter[A136717(n+1), A109720(#)]`
-/

namespace A136718.P366412894004519759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A109720 (f1 j).toNat = 1) n)

end

end A136718.P366412894004519759

/-! ## A136718.P9924545803010014714

`filter[A136717(n+1), A145568(#)]`
-/

namespace A136718.P9924545803010014714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A136718.P9924545803010014714

/-! ## A136718.P290775802051277986

`filter[A136717(n+1), A276398(#)]`
-/

namespace A136718.P290775802051277986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276398 (f1 j).toNat = 1) n)

end

end A136718.P290775802051277986

/-!
# A136719: Number of labeled directed trees with n nodes.

The programs for A136719, the canonical program `A136719.P1059163427161476346` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136719 has offset 1).

The definition of A136719 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136719.P1059163427161476346

`3*(3*(n+1))^(n-1)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136719

/-- `3*(3*(n+1))^(n-1)` -/
def P1059163427161476346.Spec : Prop :=
  ∀ n, P1059163427161476346.a n = (A136719 (n + 1) : ℚ)

end A136719

/-! ## A136719.P219164382915672443

`A052756(n+1)/(n+1)`
-/

namespace A136719.P219164382915672443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052756 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A136719.P219164382915672443

namespace A136719

/-- `A052756(n+1)/(n+1)` -/
def P219164382915672443.Spec : Prop :=
  ∀ n, P219164382915672443.a n = (A136719 (n + 1) : ℚ)

end A136719

/-! ## A136719.P1352387508268330260

`A000244(n)/(n+1)^A024000(n)`
-/

namespace A136719.P1352387508268330260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n : ℚ) / (n + 1 : ℚ) ^ (A024000 n : ℤ)

end

end A136719.P1352387508268330260

namespace A136719

/-- `A000244(n)/(n+1)^A024000(n)` -/
def P1352387508268330260.Spec : Prop :=
  ∀ n, P1352387508268330260.a n = (A136719 (n + 1) : ℚ)

end A136719

/-! ## A136719.P13468529771827994779

`lcm(3*(n+1), n+1)^n/(n+1)`
-/

namespace A136719.P13468529771827994779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (3 * (n + 1)) (n + 1) ^ n : ℚ) / (n + 1 : ℚ)

end

end A136719.P13468529771827994779

namespace A136719

/-- `lcm(3*(n+1), n+1)^n/(n+1)` -/
def P13468529771827994779.Spec : Prop :=
  ∀ n, P13468529771827994779.a n = (A136719 (n + 1) : ℚ)

end A136719

/-! ## A136719.P15445861755282915275

`A038062(n+1)/3`
-/

namespace A136719.P15445861755282915275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038062 (n + 1) : ℚ) / 3

end

end A136719.P15445861755282915275

namespace A136719

/-- `A038062(n+1)/3` -/
def P15445861755282915275.Spec : Prop :=
  ∀ n, P15445861755282915275.a n = (A136719 (n + 1) : ℚ)

end A136719

/-!
# A136720: Prime quadruples: 2nd term.

The programs for A136720, there is no canonical definition to state claims against.
-/

/-! ## A136720.P7245950606872957216

`A007530(n+1)+2`
-/

namespace A136720.P7245950606872957216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007530 (n + 1) + 2

end

end A136720.P7245950606872957216

/-! ## A136720.P3038520490747764680

`A136721(n+1)-4`
-/

namespace A136720.P3038520490747764680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136721 (n + 1) - 4

end

end A136720.P3038520490747764680

/-! ## A136720.P12931756034357652416

`A090258(n+1)-6`
-/

namespace A136720.P12931756034357652416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090258 (n + 1) - 6

end

end A136720.P12931756034357652416

/-! ## A136720.P10392534128633924274

`A125855(n+1)+3`
-/

namespace A136720.P10392534128633924274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125855 (n + 1) + 3

end

end A136720.P10392534128633924274

/-! ## A136720.P14961285702979064070

`A173037(n+1)-2`
-/

namespace A136720.P14961285702979064070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173037 (n + 1) - 2

end

end A136720.P14961285702979064070

/-! ## A136720.P3054297894725207676

`A064974(n+1)-7`
-/

namespace A136720.P3054297894725207676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064974 (n + 1) - 7

end

end A136720.P3054297894725207676

/-! ## A136720.P13982441484030682006

`3*A173092(n+1)-2`
-/

namespace A136720.P13982441484030682006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A173092 (n + 1) - 2

end

end A136720.P13982441484030682006

/-! ## A136720.P3652130092837771371

`2*A222960(n+1)+5`
-/

namespace A136720.P3652130092837771371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A222960 (n + 1) + 5

end

end A136720.P3652130092837771371

/-! ## A136720.P3584959107761705841

`A136162(4*n+2)`
-/

namespace A136720.P3584959107761705841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136162 (4 * n + 2)

end

end A136720.P3584959107761705841

/-! ## A136720.P10049356825637199811

`∩[A046138(n+1), A053778(n+1)]+2`
-/

namespace A136720.P10049356825637199811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A136720.P10049356825637199811

/-! ## A136720.P11595330298647767724

`∩[A046138(n+1), A089628(n+3)]+2`
-/

namespace A136720.P11595330298647767724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089628 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A136720.P11595330298647767724

/-! ## A136720.P9964085203688811763

`∩[A022004(n+1), A046138(n+1)]+2`
-/

namespace A136720.P9964085203688811763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A136720.P9964085203688811763

/-! ## A136720.P9821100824647474813

`∩[A022004(n+1), A053778(n+1)]+2`
-/

namespace A136720.P9821100824647474813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A136720.P9821100824647474813

/-! ## A136720.P2333422550359685931

`∩[A022004(n+1), A089628(n+3)]+2`
-/

namespace A136720.P2333422550359685931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089628 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A136720.P2333422550359685931

/-! ## A136720.P8595961525885114078

`∩[A022004(n+1), A046134(n+1)]+2`
-/

namespace A136720.P8595961525885114078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A136720.P8595961525885114078

/-! ## A136720.P17933860974517660897

`∩[A046134(n+1), A046138(n+1)]+2`
-/

namespace A136720.P17933860974517660897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A136720.P17933860974517660897

/-! ## A136720.P3608074749615448927

`∩[A046134(n+1), A053778(n+1)]+2`
-/

namespace A136720.P3608074749615448927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A136720.P3608074749615448927

/-! ## A136720.P8064375663887108294

`∩[A022005(n+1), A073648(n+1)]`
-/

namespace A136720.P8064375663887108294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073648 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136720.P8064375663887108294

/-! ## A136720.P9369089281212847403

`∩[A046134(n+1), A341357(n+1)]+2`
-/

namespace A136720.P9369089281212847403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A136720.P9369089281212847403

/-! ## A136720.P2450773608995498557

`∩[A007529(n+1), A073648(n+1)]`
-/

namespace A136720.P2450773608995498557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073648 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136720.P2450773608995498557

/-!
# A136721: Prime quadruples: 3rd term.

The programs for A136721, there is no canonical definition to state claims against.
-/

/-! ## A136721.P4386866462111433622

`A090258(n+1)-2`
-/

namespace A136721.P4386866462111433622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090258 (n + 1) - 2

end

end A136721.P4386866462111433622

/-! ## A136721.P14577731157741541619

`A136720(n+1)+4`
-/

namespace A136721.P14577731157741541619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136720 (n + 1) + 4

end

end A136721.P14577731157741541619

/-! ## A136721.P5721562577111453015

`A007530(n+1)+6`
-/

namespace A136721.P5721562577111453015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007530 (n + 1) + 6

end

end A136721.P5721562577111453015

/-! ## A136721.P7635399731253438123

`A173037(n+1)+2`
-/

namespace A136721.P7635399731253438123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173037 (n + 1) + 2

end

end A136721.P7635399731253438123

/-! ## A136721.P2250789150110284915

`A064974(n+1)-3`
-/

namespace A136721.P2250789150110284915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064974 (n + 1) - 3

end

end A136721.P2250789150110284915

/-! ## A136721.P11413769088753065510

`A125855(n+1)+7`
-/

namespace A136721.P11413769088753065510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125855 (n + 1) + 7

end

end A136721.P11413769088753065510

/-! ## A136721.P14798528539024027021

`3*A173092(n+1)+2`
-/

namespace A136721.P14798528539024027021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A173092 (n + 1) + 2

end

end A136721.P14798528539024027021

/-! ## A136721.P4227995075383856454

`A136162(4*n+3)`
-/

namespace A136721.P4227995075383856454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136162 (4 * n + 3)

end

end A136721.P4227995075383856454

/-! ## A136721.P1531634129846216281

`∩[A073649(n+1), A098412(n+1)]`
-/

namespace A136721.P1531634129846216281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098412 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136721.P1531634129846216281

/-! ## A136721.P3531896611062362403

`∩[A001359(n+1), A098412(n+1)]`
-/

namespace A136721.P3531896611062362403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098412 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136721.P3531896611062362403

/-! ## A136721.P2100521288479186564

`∩[A001359(n+1), A098415(n+1)]`
-/

namespace A136721.P2100521288479186564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136721.P2100521288479186564

/-! ## A136721.P6630880772071629423

`∩[A073649(n+1), A098415(n+1)]`
-/

namespace A136721.P6630880772071629423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136721.P6630880772071629423

/-! ## A136721.P9137485627134000720

`∩[A098412(n+1), A098414(n+1)]`
-/

namespace A136721.P9137485627134000720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136721.P9137485627134000720

/-! ## A136721.P7865450691812098198

`∩[A098412(n+1), A141830(n+1)]`
-/

namespace A136721.P7865450691812098198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136721.P7865450691812098198

/-! ## A136721.P12032369491623721323

`∩[A069458(n+1), A098412(n+1)]`
-/

namespace A136721.P12032369491623721323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098412 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136721.P12032369491623721323

/-! ## A136721.P16391669714579624990

`∩[A098412(n+1), A378983(n+1)]`
-/

namespace A136721.P16391669714579624990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136721.P16391669714579624990

/-! ## A136721.P2850003265107796016

`∩[A098415(n+1), A378983(n+1)]`
-/

namespace A136721.P2850003265107796016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136721.P2850003265107796016

/-! ## A136721.P760574831244503980

`A174839(4*n+7)`
-/

namespace A136721.P760574831244503980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174839 (4 * n + 7)

end

end A136721.P760574831244503980

/-! ## A136721.P7045873815567382985

`∩[A054799(n+1), A098412(n+1)]`
-/

namespace A136721.P7045873815567382985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098412 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136721.P7045873815567382985

/-! ## A136721.P13496969007694557702

`∩[A054799(n+1), A098415(n+1)]`
-/

namespace A136721.P13496969007694557702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136721.P13496969007694557702

/-!
# A136722: Number of preferential arrangements (or hierarchical orderings) on the connected graphs on n unlabeled nodes.

The programs for A136722, there is no canonical definition to state claims against.
-/

/-! ## A136722.P4484657375360018290

`A001349(n)*A011782(n)`
-/

namespace A136722.P4484657375360018290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 n * A011782 n

end

end A136722.P4484657375360018290

/-! ## A136722.P13220515278836929038

`Δ[A094373(n)]*A001349(n)`
-/

namespace A136722.P13220515278836929038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001349 n

end

end A136722.P13220515278836929038

/-! ## A136722.P17652011223184019387

`A001349(n)*A117401(A000124(n))`
-/

namespace A136722.P17652011223184019387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 n * A117401 (A000124 n).toNat

end

end A136722.P17652011223184019387

/-! ## A136722.P13299218977608479051

`A001349(n)*A131577(A028310(n))`
-/

namespace A136722.P13299218977608479051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 n * A131577 (A028310 n).toNat

end

end A136722.P13299218977608479051

/-! ## A136722.P8373252374831017531

`A011782(n)*A304311(A000217(n))`
-/

namespace A136722.P8373252374831017531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A304311 (A000217 n).toNat

end

end A136722.P8373252374831017531

/-!
# A136723: Number of preferential arrangements (or hierarchical orderings) on the connected graphs on n labeled nodes.

The programs for A136723, there is no canonical definition to state claims against.
-/

/-! ## A136723.P8348818312682755484

`A001187(n)*A000670(n)`
-/

namespace A136723.P8348818312682755484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001187 n * A000670 n

end

end A136723.P8348818312682755484

/-! ## A136723.P13543394411356248755

`A000670(n)*A143543(A152947(n+1))`
-/

namespace A136723.P13543394411356248755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n * A143543 (A152947 (n + 1)).toNat

end

end A136723.P13543394411356248755

/-! ## A136723.P8573888157555149284

`A000670(n)*A223894(A179865(n+1))`
-/

namespace A136723.P8573888157555149284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n * A223894 (A179865 (n + 1)).toNat

end

end A136723.P8573888157555149284

/-! ## A136723.P17712462009777732664

`(A052875(n)+1)*A223894(A179865(n+1))`
-/

namespace A136723.P17712462009777732664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052875 n + 1) * A223894 (A179865 (n + 1)).toNat

end

end A136723.P17712462009777732664

/-! ## A136723.P11786940072106616623

`A223894(A179865(n+1))*A261959(A000096(n))`
-/

namespace A136723.P11786940072106616623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223894 (A179865 (n + 1)).toNat * A261959 (A000096 n).toNat

end

end A136723.P11786940072106616623

/-!
# A136724: Numbers divisible by 4 that are not powers of 2.

The programs for A136724, the canonical program `A136724.P16450411899371355320` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136724 has offset 1).

The definition of A136724 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136724.P13817295042201065722

`4*comp[and(n, -n)]`
-/

namespace A136724.P13817295042201065722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A136724.P13817295042201065722

namespace A136724

/-- `4*comp[and(n, -n)]` -/
def P13817295042201065722.Spec : Prop :=
  ∀ n, (P13817295042201065722.a n : ℤ) = A136724 (n + 1)

end A136724

/-! ## A136724.P16450411899371355320

`4*lt[and(n, -n), n]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136724

/-- `4*lt[and(n, -n), n]` -/
def P16450411899371355320.Spec : Prop :=
  ∀ n, (P16450411899371355320.a n : ℤ) = A136724 (n + 1)

theorem P16450411899371355320.correct : P16450411899371355320.Spec := by
  intro n
  simp only [A136724, Nat.add_sub_cancel]

end A136724

/-! ## A136724.P1623023674540536841

`4*comp[abs(or(n, -n))]`
-/

namespace A136724.P1623023674540536841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (n : ℤ) (-(n : ℤ))|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A136724.P1623023674540536841

namespace A136724

/-- `4*comp[abs(or(n, -n))]` -/
def P1623023674540536841.Spec : Prop :=
  ∀ n, (P1623023674540536841.a n : ℤ) = A136724 (n + 1)

end A136724

/-! ## A136724.P1252484574256595515

`4*comp[-or(n, -n)]`
-/

namespace A136724.P1252484574256595515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (n : ℤ) (-(n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A136724.P1252484574256595515

namespace A136724

/-- `4*comp[-or(n, -n)]` -/
def P1252484574256595515.Spec : Prop :=
  ∀ n, (P1252484574256595515.a n : ℤ) = A136724 (n + 1)

end A136724

/-! ## A136724.P8746105182472149271

`4*lt[0, and(n, n-1)]`
-/

namespace A136724.P8746105182472149271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A136724.P8746105182472149271

namespace A136724

/-- `4*lt[0, and(n, n-1)]` -/
def P8746105182472149271.Spec : Prop :=
  ∀ n, (P8746105182472149271.a n : ℤ) = A136724 (n + 1)

end A136724

/-! ## A136724.P6800523047349489185

`4*comp[floor(2^(n-1))]`
-/

namespace A136724.P6800523047349489185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A136724.P6800523047349489185

namespace A136724

/-- `4*comp[floor(2^(n-1))]` -/
def P6800523047349489185.Spec : Prop :=
  ∀ n, (P6800523047349489185.a n : ℤ) = A136724 (n + 1)

end A136724

/-! ## A136724.P14290654737414821232

`lt[2, gcd(n, A001316(n))]`
-/

namespace A136724.P14290654737414821232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A001316 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A136724.P14290654737414821232

namespace A136724

/-- `lt[2, gcd(n, A001316(n))]` -/
def P14290654737414821232.Spec : Prop :=
  ∀ n, (P14290654737414821232.a n : ℤ) = A136724 (n + 1)

end A136724

/-! ## A136724.P11248651088311066

`A177712(A057716(n+1)+n)`
-/

namespace A136724.P11248651088311066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177712 (A057716 (n + 1) + (n : ℤ)).toNat

end

end A136724.P11248651088311066

namespace A136724

/-- `A177712(A057716(n+1)+n)` -/
def P11248651088311066.Spec : Prop :=
  ∀ n, P11248651088311066.a n = A136724 (n + 1)

end A136724

/-! ## A136724.P12799951018290708609

`A192544(A062289(n+1))`
-/

namespace A136724.P12799951018290708609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192544 (A062289 (n + 1)).toNat

end

end A136724.P12799951018290708609

namespace A136724

/-- `A192544(A062289(n+1))` -/
def P12799951018290708609.Spec : Prop :=
  ∀ n, P12799951018290708609.a n = A136724 (n + 1)

end A136724

/-! ## A136724.P3637597281625815758

`filter[A192544(n+1), A065202(#)]`
-/

namespace A136724.P3637597281625815758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065202 (f1 j).toNat = 1) n)

end

end A136724.P3637597281625815758

namespace A136724

/-- `filter[A192544(n+1), A065202(#)]` -/
def P3637597281625815758.Spec : Prop :=
  ∀ n, P3637597281625815758.a n = A136724 (n + 1)

end A136724

/-! ## A136724.P9123116293242674489

`filter[A192544(n+1), A202238(#)]`
-/

namespace A136724.P9123116293242674489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A136724.P9123116293242674489

namespace A136724

/-- `filter[A192544(n+1), A202238(#)]` -/
def P9123116293242674489.Spec : Prop :=
  ∀ n, P9123116293242674489.a n = A136724 (n + 1)

end A136724

/-! ## A136724.P2592959130675514578

`filter[A192544(n+1), A323170(#)]`
-/

namespace A136724.P2592959130675514578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A136724.P2592959130675514578

namespace A136724

/-- `filter[A192544(n+1), A323170(#)]` -/
def P2592959130675514578.Spec : Prop :=
  ∀ n, P2592959130675514578.a n = A136724 (n + 1)

end A136724

/-! ## A136724.P4831732207045776852

`filter[A192544(n+1), A347523(#)]`
-/

namespace A136724.P4831732207045776852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A136724.P4831732207045776852

namespace A136724

/-- `filter[A192544(n+1), A347523(#)]` -/
def P4831732207045776852.Spec : Prop :=
  ∀ n, P4831732207045776852.a n = A136724 (n + 1)

end A136724

/-! ## A136724.P16454942344503901111

`filter[A192544(n+1), A355447(#)]`
-/

namespace A136724.P16454942344503901111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A136724.P16454942344503901111

namespace A136724

/-- `filter[A192544(n+1), A355447(#)]` -/
def P16454942344503901111.Spec : Prop :=
  ∀ n, P16454942344503901111.a n = A136724 (n + 1)

end A136724

/-! ## A136724.P7308149217038414871

`A004766(A138591(n+2))-1`
-/

namespace A136724.P7308149217038414871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (A138591 (n + 2)).toNat - 1

end

end A136724.P7308149217038414871

namespace A136724

/-- `A004766(A138591(n+2))-1` -/
def P7308149217038414871.Spec : Prop :=
  ∀ n, P7308149217038414871.a n = A136724 (n + 1)

end A136724

/-! ## A136724.P2451717147020121220

`filter[A336705(n+1), A065202(#)]`
-/

namespace A136724.P2451717147020121220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065202 (f1 j).toNat = 1) n)

end

end A136724.P2451717147020121220

namespace A136724

/-- `filter[A336705(n+1), A065202(#)]` -/
def P2451717147020121220.Spec : Prop :=
  ∀ n, P2451717147020121220.a n = A136724 (n + 1)

end A136724

/-! ## A136724.P9414560085788430032

`A008574(A057716(n+1))`
-/

namespace A136724.P9414560085788430032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A057716 (n + 1)).toNat

end

end A136724.P9414560085788430032

namespace A136724

/-- `A008574(A057716(n+1))` -/
def P9414560085788430032.Spec : Prop :=
  ∀ n, P9414560085788430032.a n = A136724 (n + 1)

end A136724

/-! ## A136724.P17919937323090119152

`A008574(A138591(n+2))`
-/

namespace A136724.P17919937323090119152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A138591 (n + 2)).toNat

end

end A136724.P17919937323090119152

namespace A136724

/-- `A008574(A138591(n+2))` -/
def P17919937323090119152.Spec : Prop :=
  ∀ n, P17919937323090119152.a n = A136724 (n + 1)

end A136724

/-! ## A136724.P10065341621262588772

`filter[A008574(n), A065202(#)]`
-/

namespace A136724.P10065341621262588772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065202 (f1 j).toNat = 1) n)

end

end A136724.P10065341621262588772

namespace A136724

/-- `filter[A008574(n), A065202(#)]` -/
def P10065341621262588772.Spec : Prop :=
  ∀ n, P10065341621262588772.a n = A136724 (n + 1)

end A136724

/-! ## A136724.P15668991793370368882

`filter[A008574(n), A202238(#)]`
-/

namespace A136724.P15668991793370368882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A136724.P15668991793370368882

namespace A136724

/-- `filter[A008574(n), A202238(#)]` -/
def P15668991793370368882.Spec : Prop :=
  ∀ n, P15668991793370368882.a n = A136724 (n + 1)

end A136724

/-!
# A136726: G.f.: A(x) = Sum_{n>=0} log( Sum_{k>=0} fibonacci(k+1)^n*x^k )^n / n!.

The programs for A136726, there is no canonical definition to state claims against.
-/

/-! ## A136726.P16318294817053395955

`A002264(A125493(n!))`
-/

namespace A136726.P16318294817053395955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A125493 (Nat.factorial n)).toNat

end

end A136726.P16318294817053395955

/-! ## A136726.P9802270475019796355

`A227737(or(1, A003713(n)))`
-/

namespace A136726.P9802270475019796355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227737 (Int.lor 1 (A003713 n)).toNat

end

end A136726.P9802270475019796355

/-! ## A136726.P11910464421002719164

`A261231(A001586(n)+n)`
-/

namespace A136726.P11910464421002719164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261231 (A001586 n + (n : ℤ)).toNat

end

end A136726.P11910464421002719164

/-!
# A136727: E.g.f.: A(x) = (exp(x)/(3 - 2*exp(x)))^(1/3).

The programs for A136727, there is no canonical definition to state claims against.
-/

/-! ## A136727.P6833759741296086820

`A047593((n+1)^n)/(n+2)`
-/

namespace A136727.P6833759741296086820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047593 ((n + 1) ^ n) : ℚ) / (n + 2 : ℚ)

end

end A136727.P6833759741296086820

/-! ## A136727.P10496448874084805165

`A168056(A083062(n))`
-/

namespace A136727.P10496448874084805165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168056 (A083062 n).toNat

end

end A136727.P10496448874084805165

/-!
# A136728: E.g.f.: A(x) = (exp(x)/(4 - 3*exp(x)))^(1/4).

The programs for A136728, there is no canonical definition to state claims against.
-/

/-! ## A136728.P12221037712203021261

`A032864(∏[abs(1-2*n)])+2^floor(n/2)`
-/

namespace A136728.P12221037712203021261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032864 (∏ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) + (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A136728.P12221037712203021261

/-! ## A136728.P7043272800978119274

`xor(A037800(A321031(n)), A321031(n))`
-/

namespace A136728.P7043272800978119274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037800 (A321031 n).toNat) (A321031 n)

end

end A136728.P7043272800978119274

/-!
# A136729: E.g.f.: A(x) = [ exp(x)/(5 - 4*exp(x)) ]^(1/5).

The programs for A136729, there is no canonical definition to state claims against.
-/

/-! ## A136729.P9768817421355659281

`A050942(n!²+1)-1`
-/

namespace A136729.P9768817421355659281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050942 (Nat.factorial n ^ 2 + 1) - 1

end

end A136729.P9768817421355659281

/-!
# A136730: Square array, read by antidiagonals, where T(n,k) = T(n,k-1) + T(n-1,k+n-1) for n>0, k>0, such that T(n,0) = T(n-1,n-1) for n>0 with T(0,k)=1 for k>=0.

The programs for A136730, there is no canonical definition to state claims against.
-/

/-! ## A136730.P18417652442912887419

`A320466(∏{d}[A339067(n+1), #])`
-/

namespace A136730.P18417652442912887419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320466 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A136730.P18417652442912887419

/-! ## A136730.P13146884521111730099

`A167015(A062399(n))+A004247(n)`
-/

namespace A136730.P13146884521111730099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167015 (A062399 n).toNat + A004247 n

end

end A136730.P13146884521111730099

/-! ## A136730.P5000560310542758166

`A352513(A022171(n))+A167015(n)`
-/

namespace A136730.P5000560310542758166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352513 (A022171 n).toNat + A167015 n

end

end A136730.P5000560310542758166

/-! ## A136730.P681633750755970343

`A034367(A114123(n+1))+A004247(n)`
-/

namespace A136730.P681633750755970343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034367 (A114123 (n + 1)).toNat + A004247 n

end

end A136730.P681633750755970343

/-! ## A136730.P7874895100835042594

`A229079(n)+A034367(A114123(n+1))`
-/

namespace A136730.P7874895100835042594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229079 n + A034367 (A114123 (n + 1)).toNat

end

end A136730.P7874895100835042594

/-!
# A136731: Column 1 of square array A136730.

The programs for A136731, there is no canonical definition to state claims against.
-/

/-! ## A136731.P10268012510054494020

`record[A136730(comp[∑[n]])]`
-/

namespace A136731.P10268012510054494020
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136730 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136731.P10268012510054494020

/-! ## A136731.P5388114897638122929

`A136730(∑[n+1]+1)`
-/

namespace A136731.P5388114897638122929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136730 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A136731.P5388114897638122929

/-! ## A136731.P18420623314391984977

`record[A051168(n)*A136730(n)]`
-/

namespace A136731.P18420623314391984977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 n * A136730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136731.P18420623314391984977

/-! ## A136731.P3394437021652369347

`record[A072233(n)*A136730(n)]`
-/

namespace A136731.P3394437021652369347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 n * A136730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136731.P3394437021652369347

/-! ## A136731.P2361228745758044870

`record[A136730(n)*A242887(n)]`
-/

namespace A136731.P2361228745758044870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136730 n * A242887 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136731.P2361228745758044870

/-!
# A136732: Column 2 of square array A136730.

The programs for A136732, there is no canonical definition to state claims against.
-/

/-! ## A136732.P2480248190918658513

`A136730(∑[n+2]+3)`
-/

namespace A136732.P2480248190918658513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136730 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A136732.P2480248190918658513

/-! ## A136732.P8299002019261298388

`record[lcm(A068934(n+1), A136730(n))]`
-/

namespace A136732.P8299002019261298388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A068934 (n + 1)) (A136730 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136732.P8299002019261298388

/-! ## A136732.P12568978047001297987

`record[gcd(A136715(n+1), A136730(n+2))]`
-/

namespace A136732.P12568978047001297987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A136715 (n + 1)) (A136730 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136732.P12568978047001297987

/-!
# A136733: Square array, read by antidiagonals, where T(n,k) = T(n,k-1) + T(n-1,k+n) for n>0, k>0, such that T(n,0) = T(n-1,n) for n>0 with T(0,k)=1 for k>=0.

The programs for A136733, there is no canonical definition to state claims against.
-/

/-! ## A136733.P16689362943919912464

`A121424(∑[2*n]%comp[∑[n]])`
-/

namespace A136733.P16689362943919912464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121424 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A136733.P16689362943919912464

/-! ## A136733.P13084772661831787593

`A121424(∑[char[∑[n]]]²-(n+1))`
-/

namespace A136733.P13084772661831787593
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121424 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A136733.P13084772661831787593

/-! ## A136733.P1713585305791802975

`A121424(A061579(n))+A025444(n)`
-/

namespace A136733.P1713585305791802975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121424 (A061579 n).toNat + A025444 n

end

end A136733.P1713585305791802975

/-! ## A136733.P1763423468533979238

`A121424(A061579(n))%A017443(n)`
-/

namespace A136733.P1763423468533979238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121424 (A061579 n).toNat) (A017443 n)

end

end A136733.P1763423468533979238

/-! ## A136733.P807432961409081079

`gcd(A000038(n), A121424(A061579(n)))`
-/

namespace A136733.P807432961409081079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A121424 (A061579 n).toNat)

end

end A136733.P807432961409081079

/-!
# A136737: Square array, read by antidiagonals, where T(n,k) = T(n,k-1) + T(n-1,k+n+1) for n>0, k>0, such that T(n,0) = T(n-1,n+1) for n>0 with T(0,k)=1 for k>=0.

The programs for A136737, there is no canonical definition to state claims against.
-/

/-! ## A136737.P16768194694708759906

`A121426(∑[2*n]%comp[∑[n]])`
-/

namespace A136737.P16768194694708759906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121426 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A136737.P16768194694708759906

/-! ## A136737.P2563670229090838462

`A121426(∑[char[∑[n]]]²-(n+1))`
-/

namespace A136737.P2563670229090838462
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121426 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A136737.P2563670229090838462

/-! ## A136737.P16948051505029791344

`and(-1, A121426(A061579(n)))`
-/

namespace A136737.P16948051505029791344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A121426 (A061579 n).toNat)

end

end A136737.P16948051505029791344

/-! ## A136737.P16119268489971571476

`A121426(A061579(n))+A025444(n)`
-/

namespace A136737.P16119268489971571476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121426 (A061579 n).toNat + A025444 n

end

end A136737.P16119268489971571476

/-! ## A136737.P3566814385093692636

`A121426(A061579(n))%A071258(n)`
-/

namespace A136737.P3566814385093692636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121426 (A061579 n).toNat) (A071258 n)

end

end A136737.P3566814385093692636

/-!
# A136741: Diagonal of square array A136737, one place above the main diagonal.

The programs for A136741, there is no canonical definition to state claims against.
-/

/-! ## A136741.P11637712034749994615

`abs(A132693(n+1))`
-/

namespace A136741.P11637712034749994615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A132693 (n + 1)|

end

end A136741.P11637712034749994615

/-! ## A136741.P5479518285902597814

`record[abs(A132693(A002262(n)))]`
-/

namespace A136741.P5479518285902597814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A132693 (A002262 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136741.P5479518285902597814

/-! ## A136741.P12074341975142667415

`record[abs(A132693(A025581(n)))]`
-/

namespace A136741.P12074341975142667415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A132693 (A025581 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136741.P12074341975142667415

/-! ## A136741.P787570960466721925

`record[abs(A132693(A158821(n)))]`
-/

namespace A136741.P787570960466721925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A132693 (A158821 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136741.P787570960466721925

/-! ## A136741.P2471690728770630678

`A033999(n)*A132693(n+1)`
-/

namespace A136741.P2471690728770630678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A132693 (n + 1)

end

end A136741.P2471690728770630678

/-!
# A136743: Number of prime factors in the n-th run of squarefree numbers.

The programs for A136743, there is no canonical definition to state claims against.
-/

/-! ## A136743.P7007373383021986618

`∑{e}[A136742(n+1), #]`
-/

namespace A136743.P7007373383021986618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136742 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A136743.P7007373383021986618

/-! ## A136743.P17914644254001409604

`∑{p}[A136742(n+1), A001221(#)]`
-/

namespace A136743.P17914644254001409604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 p

end

end A136743.P17914644254001409604

/-! ## A136743.P989647341198461431

`∑{p}[A136742(n+1), A001222(#)]`
-/

namespace A136743.P989647341198461431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A136743.P989647341198461431

/-! ## A136743.P15053820735693841745

`∑{p}[A136742(n+1), A008480(#)]`
-/

namespace A136743.P15053820735693841745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008480 p

end

end A136743.P15053820735693841745

/-! ## A136743.P4334302324495930482

`∑{p}[A136742(n+1), A008834(#)]`
-/

namespace A136743.P4334302324495930482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008834 p

end

end A136743.P4334302324495930482

/-!
# A136745: Irregular triangle T(0,0)=1, T(1,0)=-1, T(1,1)=0, T(1,2)=1 and T(n,k) = T(n-1,k-2)-T(n-2,k).

The programs for A136745, there is no canonical definition to state claims against.
-/

/-! ## A136745.P972453265535288219

`A339885(A175886(n+1)-A063656(n))`
-/

namespace A136745.P972453265535288219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339885 (A175886 (n + 1) - A063656 n).toNat

end

end A136745.P972453265535288219

/-! ## A136745.P10571989148067769856

`xor(A121373(n+1), A232629(A192018(3*(n+1))))`
-/

namespace A136745.P10571989148067769856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A121373 (n + 1)) (A232629 (A192018 (3 * (n + 1))).toNat)

end

end A136745.P10571989148067769856

/-!
# A136746: G.f.: (z^12+1-z^11-z^10+z^8-z^6+z^5-z^3+z)/((z+1)*(z-1)^2).

The programs for A136746, there is no canonical definition to state claims against.
-/

/-! ## A136746.P1276089506787485508

`∑[p?[5-A290216(n)]%2]`
-/

namespace A136746.P1276089506787485508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A290216 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136746.P1276089506787485508

/-! ## A136746.P2838343116169619892

`∑[A000035(p?[5-A290216(n)])]`
-/

namespace A136746.P2838343116169619892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A290216 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136746.P2838343116169619892

/-! ## A136746.P14713335347292187158

`∑[A002264(p?[5-A290216(n)])]`
-/

namespace A136746.P14713335347292187158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A290216 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136746.P14713335347292187158

/-! ## A136746.P4737996988515821129

`∑[A036541(p?[5-A290216(n)])]`
-/

namespace A136746.P4737996988515821129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A290216 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036541 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136746.P4737996988515821129

/-! ## A136746.P1973649283317796186

`∑[A072418(p?[5-A290216(n)])]`
-/

namespace A136746.P1973649283317796186
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A290216 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072418 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136746.P1973649283317796186

/-! ## A136746.P15797724978288903226

`∑[A073089(p?[5-A290216(n)])]`
-/

namespace A136746.P15797724978288903226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A290216 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073089 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136746.P15797724978288903226

/-! ## A136746.P3818345100695454835

`∑[A280737(p?[5-A290216(n)])]`
-/

namespace A136746.P3818345100695454835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A290216 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280737 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136746.P3818345100695454835

/-! ## A136746.P137231231731974397

`∑[A340829(p?[5-A290216(n)])]`
-/

namespace A136746.P137231231731974397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A290216 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340829 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136746.P137231231731974397

/-! ## A136746.P2154803783296745185

`∑[A340831(p?[5-A290216(n)])]`
-/

namespace A136746.P2154803783296745185
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A290216 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340831 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136746.P2154803783296745185

/-! ## A136746.P3249172391800169577

`∑[A267152(A188082(n+1)+A165900(n))]`
-/

namespace A136746.P3249172391800169577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267152 (A188082 (n + 1) + A165900 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136746.P3249172391800169577

/-!
# A136748: Expansion of (a(q) - a(q^2) - 4*a(q^4) + 4*a(q^8)) / 6 in powers of q where a() is a cubic AGM theta function.

The programs for A136748, the canonical program `A136748.P10554759567997370342` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136748 has offset 1).

The definition of A136748 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136748.P997002685146420141

`A244375(n+1)/A176563(n)`
-/

namespace A136748.P997002685146420141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244375 (n + 1) : ℚ) / (A176563 n : ℚ)

end

end A136748.P997002685146420141

namespace A136748

/-- `A244375(n+1)/A176563(n)` -/
def P997002685146420141.Spec : Prop :=
  ∀ n, P997002685146420141.a n = (A136748 (n + 1) : ℚ)

end A136748

/-! ## A136748.P11540285456127946539

`A115979(n+1)-A115979(∑[gcd(2, n)])`
-/

namespace A136748.P11540285456127946539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115979 (n + 1) - A115979 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A136748.P11540285456127946539

namespace A136748

/-- `A115979(n+1)-A115979(∑[gcd(2, n)])` -/
def P11540285456127946539.Spec : Prop :=
  ∀ n, P11540285456127946539.a n = A136748 (n + 1)

end A136748

/-! ## A136748.P15126820499192717091

`2*A123484(n+1)-A112298(n+1)`
-/

namespace A136748.P15126820499192717091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123484 (n + 1) - A112298 (n + 1)

end

end A136748.P15126820499192717091

namespace A136748

/-- `2*A123484(n+1)-A112298(n+1)` -/
def P15126820499192717091.Spec : Prop :=
  ∀ n, P15126820499192717091.a n = A136748 (n + 1)

end A136748

/-! ## A136748.P16575330295803684459

`∑{d}[n+1, A115979(#)*A154955((n+1)/#)]`
-/

namespace A136748.P16575330295803684459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A115979 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A136748.P16575330295803684459

namespace A136748

/-- `∑{d}[n+1, A115979(#)*A154955((n+1)/#)]` -/
def P16575330295803684459.Spec : Prop :=
  ∀ n, P16575330295803684459.a n = A136748 (n + 1)

end A136748

/-! ## A136748.P10554759567997370342

`∑{d}[n+1, A010892(#-1)*A230074((n+1)/#)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A136748

/-- `∑{d}[n+1, A010892(#-1)*A230074((n+1)/#)]` -/
def P10554759567997370342.Spec : Prop :=
  ∀ n, P10554759567997370342.a n = A136748 (n + 1)

theorem P10554759567997370342.correct : P10554759567997370342.Spec := by
  intro n
  simp only [A136748, Nat.add_sub_cancel]

end A136748

/-! ## A136748.P38983551650953349

`∑{d}[n+1, A112298(#)*A130706((n+1)/#-1)]`
-/

namespace A136748.P38983551650953349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A112298 d * A130706 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A136748.P38983551650953349

namespace A136748

/-- `∑{d}[n+1, A112298(#)*A130706((n+1)/#-1)]` -/
def P38983551650953349.Spec : Prop :=
  ∀ n, P38983551650953349.a n = A136748 (n + 1)

end A136748

/-! ## A136748.P2065313630475435278

`A115979(n+1)-A115979(A073675(n+1))`
-/

namespace A136748.P2065313630475435278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115979 (n + 1) - A115979 (A073675 (n + 1)).toNat

end

end A136748.P2065313630475435278

namespace A136748

/-- `A115979(n+1)-A115979(A073675(n+1))` -/
def P2065313630475435278.Spec : Prop :=
  ∀ n, P2065313630475435278.a n = A136748 (n + 1)

end A136748

/-! ## A136748.P12217868729284271386

`A115979(n+1)-A115979(A110654(3*(n+1)))`
-/

namespace A136748.P12217868729284271386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115979 (n + 1) - A115979 (A110654 (3 * (n + 1))).toNat

end

end A136748.P12217868729284271386

namespace A136748

/-- `A115979(n+1)-A115979(A110654(3*(n+1)))` -/
def P12217868729284271386.Spec : Prop :=
  ∀ n, P12217868729284271386.a n = A136748 (n + 1)

end A136748

/-!
# A136749: G.f.: Sum_{n>=0} arctanh(2^n*x)^n / n!, a power series in x with integer coefficients.

The programs for A136749, there is no canonical definition to state claims against.
-/

/-! ## A136749.P545056601186265275

`A122542(eq[A002262(n), A258709(n)])`
-/

namespace A136749.P545056601186265275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A136749.P545056601186265275

/-! ## A136749.P6611430860543874296

`A113413(eq[A002260(n+1), A258709(n)])`
-/

namespace A136749.P6611430860543874296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113413 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A136749.P6611430860543874296

/-! ## A136749.P14667808321091007157

`A113413(eq[A131818(n+1), A258709(n)])`
-/

namespace A136749.P14667808321091007157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113413 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A136749.P14667808321091007157

/-!
# A136750: G.f.: A(x) = x/(1-x) o x/(1-x^2) o x/(1-x^3) o x/(1-x^4) o..., composition of functions x/(1-x^n) for n = ...,3,2,1.

The programs for A136750, there is no canonical definition to state claims against.
-/

/-! ## A136750.P14011234166444383505

`A127680(n)+A004526(A309862(n))`
-/

namespace A136750.P14011234166444383505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127680 n + A004526 (A309862 n).toNat

end

end A136750.P14011234166444383505

/-! ## A136750.P12224011456793356942

`A054404(A289846(n)+A110334(n))`
-/

namespace A136750.P12224011456793356942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A289846 n + A110334 n).toNat

end

end A136750.P12224011456793356942

/-! ## A136750.P11946532676208063651

`A249728(A047022(n))`
-/

namespace A136750.P11946532676208063651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (A047022 n).toNat

end

end A136750.P11946532676208063651

/-! ## A136750.P10573048401139865540

`A202304(A198957(n))`
-/

namespace A136750.P10573048401139865540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A198957 n).toNat

end

end A136750.P10573048401139865540

/-! ## A136750.P1413969515607833991

`A249728(A307487(n))`
-/

namespace A136750.P1413969515607833991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (A307487 n).toNat

end

end A136750.P1413969515607833991

/-!
# A136751: G.f.: A(x) = ...o x/(1-x^4) o x/(1-x^3) o x/(1-x^2) o x/(1-x), composition of functions x/(1-x^n) for n = 1,2,3,...

The programs for A136751, there is no canonical definition to state claims against.
-/

/-! ## A136751.P11279974807219950138

`A127757(A268419(n+1))`
-/

namespace A136751.P11279974807219950138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A268419 (n + 1)).toNat

end

end A136751.P11279974807219950138

/-! ## A136751.P15498169246645388010

`A122922(A189389(n))+A036765(n)`
-/

namespace A136751.P15498169246645388010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122922 (A189389 n).toNat + A036765 n

end

end A136751.P15498169246645388010

/-! ## A136751.P12711453233421126808

`A361165(A000602(n))+A036765(n)`
-/

namespace A136751.P12711453233421126808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361165 (A000602 n).toNat + A036765 n

end

end A136751.P12711453233421126808

/-! ## A136751.P6779328252380011181

`A175126(A309861(n))+A036765(n)`
-/

namespace A136751.P6779328252380011181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A309861 n).toNat + A036765 n

end

end A136751.P6779328252380011181

/-!
# A136752: G.f.: A(x) = x/(1-x) o x/(1-x^2) o x/(1-x^4) o x/(1-x^8) o..., composition of functions x/(1 - x^{2^n}) for n=0,1,2,3,...

The programs for A136752, there is no canonical definition to state claims against.
-/

/-! ## A136752.P11521020918423790415

`A226190(a(n-1)+4*a(n-2))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A136752.P11521020918423790415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A226190 (a (n - 1) + 4 * a (n - 2)).toNat

end

end A136752.P11521020918423790415

/-! ## A136752.P13108177414793341738

`A051058(A037958(n))+A028495(n)`
-/

namespace A136752.P13108177414793341738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051058 (A037958 n).toNat + A028495 n

end

end A136752.P13108177414793341738

/-! ## A136752.P8222255017550521793

`A051058(A051053(n))+A028495(n)`
-/

namespace A136752.P8222255017550521793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051058 (A051053 n).toNat + A028495 n

end

end A136752.P8222255017550521793

/-! ## A136752.P6019252165429229689

`A028495(n)+A000120(A185293(n))`
-/

namespace A136752.P6019252165429229689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 n + A000120 (A185293 n).toNat

end

end A136752.P6019252165429229689

/-! ## A136752.P2191084545073736036

`A028495(n)+A001221(A309864(n))`
-/

namespace A136752.P2191084545073736036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 n + A001221 (A309864 n).toNat

end

end A136752.P2191084545073736036

/-!
# A136753: G.f.: A(x) = ...o x/(1-x^8) o x/(1-x^4) o x/(1-x^2) o x/(1-x), composition of functions x/(1 - x^{2^n}) for n=...,3,2,1,0.

The programs for A136753, there is no canonical definition to state claims against.
-/

/-! ## A136753.P16794314963774428309

`∑[A233583(3*a(n-1)-2*a(n-3))]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A136753.P16794314963774428309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  A233583 (3 * f1 (n - 1) - 2 * f1 (n - 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136753.P16794314963774428309

/-! ## A136753.P16733281397636189300

`A024417(A191793(∑[n]))`
-/

namespace A136753.P16733281397636189300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A191793 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A136753.P16733281397636189300

/-! ## A136753.P7629650325888453524

`A024417(A273716(n+2))`
-/

namespace A136753.P7629650325888453524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A273716 (n + 2)).toNat

end

end A136753.P7629650325888453524

/-! ## A136753.P8465873701346283066

`A289666(n^A212998(n))`
-/

namespace A136753.P8465873701346283066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289666 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A212998 n : ℤ))).toNat

end

end A136753.P8465873701346283066

/-!
# A136754: Leading digit of n! in base 3.

The programs for A136754, there is no canonical definition to state claims against.
-/

/-! ## A136754.P17797554698391824430

`gcd(2, A343394(A159966(3*n+13)))`
-/

namespace A136754.P17797554698391824430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A343394 (A159966 (3 * n + 13)).toNat)

end

end A136754.P17797554698391824430

/-! ## A136754.P16932048369816479542

`gcd(2, A014682(A065435(n+3)))`
-/

namespace A136754.P16932048369816479542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A014682 (A065435 (n + 3)).toNat)

end

end A136754.P16932048369816479542

/-! ## A136754.P2489211170001788537

`A270642(∑[A330061(A016777(n))])`
-/

namespace A136754.P2489211170001788537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330061 (A016777 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270642 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A136754.P2489211170001788537

/-! ## A136754.P9385703978712926595

`A246127(A219987(2*n+1)+A002322(n+1))`
-/

namespace A136754.P9385703978712926595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246127 (A219987 (2 * n + 1) + A002322 (n + 1)).toNat

end

end A136754.P9385703978712926595

/-! ## A136754.P2633362134797656015

`A000002(A237593(3*n+1)*A318949(n+1))`
-/

namespace A136754.P2633362134797656015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A237593 (3 * n + 1) * A318949 (n + 1)).toNat

end

end A136754.P2633362134797656015

/-!
# A136755: a(n) = leading digit of n! in base 4.

The programs for A136755, there is no canonical definition to state claims against.
-/

/-! ## A136755.P193746892016199314

`A122587(A136766(n))`
-/

namespace A136755.P193746892016199314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122587 (A136766 n).toNat

end

end A136755.P193746892016199314

/-! ## A136755.P15584191031237630104

`A276333(or(char[1], A136766(n)))`
-/

namespace A136755.P15584191031237630104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276333 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A136766 n)).toNat

end

end A136755.P15584191031237630104

/-! ## A136755.P1960634475924905401

`A276333(A136766(n)%(n+4))`
-/

namespace A136755.P1960634475924905401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276333 (Int.tmod (A136766 n) (n + 4 : ℤ)).toNat

end

end A136755.P1960634475924905401

/-! ## A136755.P7948933572426671349

`A276333(A136766(n))%A249032(n)`
-/

namespace A136755.P7948933572426671349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276333 (A136766 n).toNat) (A249032 n)

end

end A136755.P7948933572426671349

/-! ## A136755.P16386861030428748066

`gcd(A000038(n), A276333(A136766(n)))`
-/

namespace A136755.P16386861030428748066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A276333 (A136766 n).toNat)

end

end A136755.P16386861030428748066

/-! ## A136755.P1606627386428271413

`lcm(A020985(n), A276333(A136766(n)))`
-/

namespace A136755.P1606627386428271413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A276333 (A136766 n).toNat)

end

end A136755.P1606627386428271413

/-! ## A136755.P12891551349379236690

`and(A004767(n), A276333(A136766(n)))`
-/

namespace A136755.P12891551349379236690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004767 n) (A276333 (A136766 n).toNat)

end

end A136755.P12891551349379236690

/-! ## A136755.P16405087634344000013

`or(A063524(n), A276333(A136766(n)))`
-/

namespace A136755.P16405087634344000013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063524 n) (A276333 (A136766 n).toNat)

end

end A136755.P16405087634344000013

/-! ## A136755.P2425431043498527745

`char[A004442(n)]*A276333(A136766(n))`
-/

namespace A136755.P2425431043498527745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A276333 (A136766 n).toNat

end

end A136755.P2425431043498527745

/-! ## A136755.P16092492727665117544

`A276333(A136766(n))+A000007(n+1)`
-/

namespace A136755.P16092492727665117544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276333 (A136766 n).toNat + A000007 (n + 1)

end

end A136755.P16092492727665117544

/-! ## A136755.P5943954065930670544

`A276333(A136766(n))+A000038(n+1)`
-/

namespace A136755.P5943954065930670544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276333 (A136766 n).toNat + A000038 (n + 1)

end

end A136755.P5943954065930670544

/-! ## A136755.P7425891755685108747

`A276333(2*A136766(n)-A136766(n))`
-/

namespace A136755.P7425891755685108747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276333 (2 * A136766 n - A136766 n).toNat

end

end A136755.P7425891755685108747

/-! ## A136755.P8889823389356462812

`A000045(gcd(n, n+1))*A276333(A136766(n))`
-/

namespace A136755.P8889823389356462812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd n (n + 1)) * A276333 (A136766 n).toNat

end

end A136755.P8889823389356462812

/-!
# A136756: Leading digit of n! in base 5.

The programs for A136756, there is no canonical definition to state claims against.
-/

/-! ## A136756.P15296795287601413723

`gcd(A000120(n+1)², A008891(3*(n+1)))`
-/

namespace A136756.P15296795287601413723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000120 (n + 1) ^ 2) (A008891 (3 * (n + 1)))

end

end A136756.P15296795287601413723

/-! ## A136756.P3135072886896189457

`A322906(A007953(A249252(n)²))`
-/

namespace A136756.P3135072886896189457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322906 (A007953 (A249252 n ^ 2).toNat).toNat

end

end A136756.P3135072886896189457

/-! ## A136756.P9192973126566866632

`A128644(∑[A000043(A128694(n+7))])`
-/

namespace A136756.P9192973126566866632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (A128694 (n + 7)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128644 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A136756.P9192973126566866632

/-! ## A136756.P17962398853210141340

`gcd(A302829(3*(n+1)), A302852(A302854(2*(n+1))))`
-/

namespace A136756.P17962398853210141340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A302829 (3 * (n + 1))) (A302852 (A302854 (2 * (n + 1))).toNat)

end

end A136756.P17962398853210141340

/-! ## A136756.P5454264629178245882

`A138317(gcd(∏{p}[n+1, #], A372732(n)))`
-/

namespace A136756.P5454264629178245882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138317 (Int.gcd ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) (A372732 n))

end

end A136756.P5454264629178245882

/-!
# A136767: n! never ends in this many 0's in base 4.

The programs for A136767, there is no canonical definition to state claims against.
-/

/-! ## A136767.P14959333542423632120

`comp[A090616(n)]`
-/

namespace A136767.P14959333542423632120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090616 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A136767.P14959333542423632120

/-! ## A136767.P8609431444901716598

`comp[floor(A005187(n)/2)]`
-/

namespace A136767.P8609431444901716598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005187 n : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A136767.P8609431444901716598

/-! ## A136767.P7571471051693646529

`comp[floor(A011371(n)/2)]`
-/

namespace A136767.P7571471051693646529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011371 n : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A136767.P7571471051693646529

/-! ## A136767.P14905941201553679360

`lt[1, A215020(2*(n+1))]`
-/

namespace A136767.P14905941201553679360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215020 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A136767.P14905941201553679360

/-! ## A136767.P12107450358952012202

`lt[A256490(n+1), 4]+1`
-/

namespace A136767.P12107450358952012202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256490 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A136767.P12107450358952012202

/-! ## A136767.P3963315899557557474

`lt[2, A082850(2*(n+1))]`
-/

namespace A136767.P3963315899557557474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082850 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A136767.P3963315899557557474

/-! ## A136767.P216307541719523054

`lt[2, A182105(2*(n+1))]`
-/

namespace A136767.P216307541719523054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182105 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A136767.P216307541719523054

/-! ## A136767.P13010186330599704978

`comp[floor((n-A000120(n))/2)]`
-/

namespace A136767.P13010186330599704978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - A000120 n : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A136767.P13010186330599704978

/-! ## A136767.P6237367460533948288

`comp[floor(n/2)-A234017(n)]`
-/

namespace A136767.P6237367460533948288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ - A234017 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A136767.P6237367460533948288

/-! ## A136767.P10942422641795644110

`comp[floor(n/2)*A079559(n)]`
-/

namespace A136767.P10942422641795644110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ * A079559 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A136767.P10942422641795644110

/-!
# A136768: n! never ends in this many 0's in base 7.

The programs for A136768, there is no canonical definition to state claims against.
-/

/-! ## A136768.P12616836757493297743

`comp[a(floor(n/7))+n]` with `a(0)=0`
-/

namespace A136768.P12616836757493297743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 7⌋.toNat + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A136768.P12616836757493297743

/-! ## A136768.P9393645593970094942

`∑[gcd(8, val(n+1, 8))]-1`
-/

namespace A136768.P9393645593970094942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 8 (SequenceMachineLib.valuation (n + 1) 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A136768.P9393645593970094942

/-! ## A136768.P7804864804450253946

`∑[8-8^val(n+1, 8)]+n`
-/

namespace A136768.P7804864804450253946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - (8 ^ SequenceMachineLib.valuation (n + 1) 8 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A136768.P7804864804450253946

/-! ## A136768.P17299795086522475906

`comp[floor(8*floor(n/7)/7)+n]`
-/

namespace A136768.P17299795086522475906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(8 * ⌊(n : ℚ) / 7⌋ : ℚ) / 7⌋ + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A136768.P17299795086522475906

/-! ## A136768.P16758432764795818829

`A020646(n+1)+n`
-/

namespace A136768.P16758432764795818829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020646 (n + 1) + (n : ℤ)

end

end A136768.P16758432764795818829

/-! ## A136768.P16597516295579498974

`7*A228298(n+1)+n`
-/

namespace A136768.P16597516295579498974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A228298 (n + 1) + (n : ℤ)

end

end A136768.P16597516295579498974

/-! ## A136768.P7356207812694856277

`∑[Δ[A033928(n+1)]+7]`
-/

namespace A136768.P7356207812694856277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033928 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136768.P7356207812694856277

/-! ## A136768.P6173427961846837163

`∑[Δ[A020646(n)]-or(n, -1)]`
-/

namespace A136768.P6173427961846837163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020646 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - Int.lor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136768.P6173427961846837163

/-! ## A136768.P16134917878894022694

`∑[A001399(Δ[A020646(n)])]`
-/

namespace A136768.P16134917878894022694
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020646 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136768.P16134917878894022694

/-! ## A136768.P10934870200073535761

`∑[A004482(Δ[A020646(n)])]`
-/

namespace A136768.P10934870200073535761
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020646 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136768.P10934870200073535761

/-!
# A136769: n! never ends in this many 0's in base 8.

The programs for A136769, there is no canonical definition to state claims against.
-/

/-! ## A136769.P5920137609891802912

`comp[A090617(n)]`
-/

namespace A136769.P5920137609891802912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090617 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A136769.P5920137609891802912

/-! ## A136769.P1523391739652678427

`lt[3, A082850(3*(n+1))]`
-/

namespace A136769.P1523391739652678427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082850 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A136769.P1523391739652678427

/-! ## A136769.P8167770135603162362

`lt[2, A254110(A008486(n))]`
-/

namespace A136769.P8167770135603162362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254110 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A136769.P8167770135603162362

/-! ## A136769.P10117841694575064654

`lt[2, A254110(A008574(n)-n)]`
-/

namespace A136769.P10117841694575064654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254110 (A008574 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A136769.P10117841694575064654

/-! ## A136769.P6417878476151209635

`eq[1, A020647(n+1)/A020647(n)]`
-/

namespace A136769.P6417878476151209635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020647 (n + 1) : ℚ) / (A020647 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A136769.P6417878476151209635

/-! ## A136769.P2939132963545374536

`eq[1, A020647(A020647(n+1)-A020647(n))]`
-/

namespace A136769.P2939132963545374536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020647 (A020647 (n + 1) - A020647 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A136769.P2939132963545374536

/-! ## A136769.P7154631233904679520

`eq[1, A020647(A020647(n)%A020647(n+1))]`
-/

namespace A136769.P7154631233904679520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020647 (Int.tmod (A020647 n) (A020647 (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A136769.P7154631233904679520

/-!
# A136770: n! never ends in this many 0's in base 9.

The programs for A136770, there is no canonical definition to state claims against.
-/

/-! ## A136770.P8204828180239429000

`comp[A090618(n)]`
-/

namespace A136770.P8204828180239429000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090618 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A136770.P8204828180239429000

/-! ## A136770.P750470959449136581

`2*A020648(n+1)+n`
-/

namespace A136770.P750470959449136581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020648 (n + 1) + (n : ℤ)

end

end A136770.P750470959449136581

/-! ## A136770.P7989645554003400762

`2*A007844(2*(n+1))+n`
-/

namespace A136770.P7989645554003400762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007844 (2 * (n + 1)) + (n : ℤ)

end

end A136770.P7989645554003400762

/-! ## A136770.P10239330559014088706

`A004277(A020648(n+1))+n`
-/

namespace A136770.P10239330559014088706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A020648 (n + 1)).toNat + (n : ℤ)

end

end A136770.P10239330559014088706

/-! ## A136770.P11079044471763966711

`A005843(A007844(2*(n+1)))+n`
-/

namespace A136770.P11079044471763966711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A007844 (2 * (n + 1))).toNat + (n : ℤ)

end

end A136770.P11079044471763966711

/-! ## A136770.P8077734431383012825

`A008458(A120503(2*(n+1)))+n`
-/

namespace A136770.P8077734431383012825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A120503 (2 * (n + 1))).toNat + (n : ℤ)

end

end A136770.P8077734431383012825

/-! ## A136770.P12497957443583362013

`eq[1, A020648(n+1)/A020648(n)]`
-/

namespace A136770.P12497957443583362013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020648 (n + 1) : ℚ) / (A020648 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A136770.P12497957443583362013

/-! ## A136770.P8131381073542075085

`floor(A096346(A096346(2*n+1))/2)`
-/

namespace A136770.P8131381073542075085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A096346 (A096346 (2 * n + 1)).toNat : ℚ) / 2⌋

end

end A136770.P8131381073542075085

/-! ## A136770.P4055848679435537639

`eq[2*A120525(2*n+1), A120525(2*(n+1))]`
-/

namespace A136770.P4055848679435537639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A120525 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120525 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136770.P4055848679435537639

/-!
# A136771: n! never ends in this many 0's in base 11.

The programs for A136771, there is no canonical definition to state claims against.
-/

/-! ## A136771.P1670373346651245148

`∑[gcd(12, val(n+1, 12))]-1`
-/

namespace A136771.P1670373346651245148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 12 (SequenceMachineLib.valuation (n + 1) 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A136771.P1670373346651245148

/-! ## A136771.P18344354621686309142

`a(n-1)+12-11*char[a(n-1)+12]` with `a(0)=11`
-/

namespace A136771.P18344354621686309142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11] fun n f1 =>
  f1 (n - 1) + 12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  a (n - 1) + 12 - ((11 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A136771.P18344354621686309142

/-! ## A136771.P1138106524587145990

`A048841(n+1)+n`
-/

namespace A136771.P1138106524587145990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048841 (n + 1) + (n : ℤ)

end

end A136771.P1138106524587145990

/-! ## A136771.P17716729974101394420

`11*∑[A168185(n+1)]+n`
-/

namespace A136771.P17716729974101394420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A136771.P17716729974101394420

/-! ## A136771.P11434783943061163805

`A053832(n+1)+10*(n+1)+n`
-/

namespace A136771.P11434783943061163805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053832 (n + 1) + (10 * (n + 1) : ℤ) + (n : ℤ)

end

end A136771.P11434783943061163805

/-! ## A136771.P18361386009386204406

`∑[A000008(Δ[A048841(n)])]`
-/

namespace A136771.P18361386009386204406
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048841 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000008 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136771.P18361386009386204406

/-! ## A136771.P8285172569037648794

`∑[A001302(Δ[A048841(n)])]`
-/

namespace A136771.P8285172569037648794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048841 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001302 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136771.P8285172569037648794

/-! ## A136771.P16886436436978999180

`∑[A005496(Δ[A048841(n)])]`
-/

namespace A136771.P16886436436978999180
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048841 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136771.P16886436436978999180

/-! ## A136771.P5215065121087159542

`∑[A005555(Δ[A048841(n)])]`
-/

namespace A136771.P5215065121087159542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048841 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136771.P5215065121087159542

/-! ## A136771.P1792216262889944628

`∑[A036410(Δ[A048841(n)])]`
-/

namespace A136771.P1792216262889944628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048841 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036410 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136771.P1792216262889944628

/-!
# A136772: n! never ends in this many 0's in base 12.

The programs for A136772, there is no canonical definition to state claims against.
-/

/-! ## A136772.P7763171866208932398

`comp[A090619(n)]`
-/

namespace A136772.P7763171866208932398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090619 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A136772.P7763171866208932398

/-!
# A136773: n! never ends in this many 0's in base 13.

The programs for A136773, there is no canonical definition to state claims against.
-/

/-! ## A136773.P15269553695470198938

`A048842(n+1)+n`
-/

namespace A136773.P15269553695470198938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048842 (n + 1) + (n : ℤ)

end

end A136773.P15269553695470198938

/-! ## A136773.P3339956380230261421

`∑[A000115(Δ[A048842(n)])]`
-/

namespace A136773.P3339956380230261421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048842 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000115 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136773.P3339956380230261421

/-! ## A136773.P9562690899386067346

`∑[A005555(Δ[A048842(n)])]`
-/

namespace A136773.P9562690899386067346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048842 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136773.P9562690899386067346

/-! ## A136773.P16950616750290066561

`∑[A077168(Δ[A048842(n)])]`
-/

namespace A136773.P16950616750290066561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048842 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136773.P16950616750290066561

/-! ## A136773.P7689526635770654760

`∑[A291769(Δ[A048842(n)])]`
-/

namespace A136773.P7689526635770654760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048842 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291769 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136773.P7689526635770654760

/-!
# A136774: n! never ends in this many 0's in base 16.

The programs for A136774, the canonical program `A136774.P9169465516778292592` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136774 has offset 1).

The definition of A136774 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 991 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136774.P9169465516778292592

`lt[4, A082850(4*(n+1))]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A136774

/-- `lt[4, A082850(4*(n+1))]` -/
def P9169465516778292592.Spec : Prop :=
  ∀ n, (P9169465516778292592.a n : ℤ) = A136774 (n + 1)

theorem P9169465516778292592.correct : P9169465516778292592.Spec := by
  intro n
  simp only [A136774, Nat.add_sub_cancel]

end A136774

/-! ## A136774.P2575266112477046433

`lt[8, A182105(4*(n+1))]`
-/

namespace A136774.P2575266112477046433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182105 (4 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A136774.P2575266112477046433

namespace A136774

/-- `lt[8, A182105(4*(n+1))]` -/
def P2575266112477046433.Spec : Prop :=
  ∀ n, (P2575266112477046433.a n : ℤ) = A136774 (n + 1)

end A136774

/-! ## A136774.P5816215774040150217

`lt[5, A254111(4*(n+1))+1]+1`
-/

namespace A136774.P5816215774040150217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254111 (4 * (n + 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A136774.P5816215774040150217

namespace A136774

/-- `lt[5, A254111(4*(n+1))+1]+1` -/
def P5816215774040150217.Spec : Prop :=
  ∀ n, (P5816215774040150217.a n : ℤ) = A136774 (n + 1)

end A136774

/-! ## A136774.P7718593785329281711

`lt[3, A254110(A008574(n))]`
-/

namespace A136774.P7718593785329281711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254110 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A136774.P7718593785329281711

namespace A136774

/-- `lt[3, A254110(A008574(n))]` -/
def P7718593785329281711.Spec : Prop :=
  ∀ n, (P7718593785329281711.a n : ℤ) = A136774 (n + 1)

end A136774

/-! ## A136774.P2005894629617919500

`lt[6, A001222(A152980(8*n+11))]`
-/

namespace A136774.P2005894629617919500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A152980 (8 * n + 11)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A136774.P2005894629617919500

namespace A136774

/-- `lt[6, A001222(A152980(8*n+11))]` -/
def P2005894629617919500.Spec : Prop :=
  ∀ n, (P2005894629617919500.a n : ℤ) = A136774 (n + 1)

end A136774

/-!
# A136775: Number of multiplex juggling sequences of length n, base state and hand capacity 2.

The programs for A136775, the canonical program `A136775.P1216090559687480111` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136775 has offset 1).

The definition of A136775 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136775.P1216090559687480111

`5*a(n-1)-5*a(n-2)` with `a(0)=1, a(1)=3, a(2)=11`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136775

/-- `5*a(n-1)-5*a(n-2)` -/
def P1216090559687480111.Spec : Prop :=
  ∀ n, P1216090559687480111.a n = A136775 (n + 1)

theorem P1216090559687480111.correct : P1216090559687480111.Spec := by
  intro n
  simp only [A136775, Nat.add_sub_cancel]

end A136775

/-! ## A136775.P15888665106410104663

`ogf((1-2x+x^2)/(1-5x+5x^2))`
-/

namespace A136775.P15888665106410104663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -5, 5] n

end

end A136775.P15888665106410104663

namespace A136775

/-- `ogf((1-2x+x^2)/(1-5x+5x^2))` -/
def P15888665106410104663.Spec : Prop :=
  ∀ n, P15888665106410104663.a n = A136775 (n + 1)

end A136775

/-! ## A136775.P1737091363334619448

`5*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=3, a(2)=11`
-/

namespace A136775.P1737091363334619448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 11] fun n a =>
  5 * (a (n - 1) - a (n - 2))

end

end A136775.P1737091363334619448

namespace A136775

/-- `5*(a(n-1)-a(n-2))` -/
def P1737091363334619448.Spec : Prop :=
  ∀ n, P1737091363334619448.a n = A136775 (n + 1)

theorem P1737091363334619448.correct : P1737091363334619448.Spec := by
  intro n
  simp only [A136775, Nat.add_sub_cancel, A136775.P1737091363334619448.a, A136775.P1216090559687480111.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A136775

/-! ## A136775.P15522304805178055703

`A147748(n)+A093131(n)`
-/

namespace A136775.P15522304805178055703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147748 n + A093131 n

end

end A136775.P15522304805178055703

namespace A136775

/-- `A147748(n)+A093131(n)` -/
def P15522304805178055703.Spec : Prop :=
  ∀ n, P15522304805178055703.a n = A136775 (n + 1)

end A136775

/-! ## A136775.P1458910371649800241

`A178381(2*n)+A093131(n)`
-/

namespace A136775.P1458910371649800241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178381 (2 * n) + A093131 n

end

end A136775.P1458910371649800241

namespace A136775

/-- `A178381(2*n)+A093131(n)` -/
def P1458910371649800241.Spec : Prop :=
  ∀ n, P1458910371649800241.a n = A136775 (n + 1)

end A136775

/-! ## A136775.P16728598058666527819

`A094667(n+1)+A094865(n)-A033190(n)`
-/

namespace A136775.P16728598058666527819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094667 (n + 1) + (A094865 n - A033190 n)

end

end A136775.P16728598058666527819

namespace A136775

/-- `A094667(n+1)+A094865(n)-A033190(n)` -/
def P16728598058666527819.Spec : Prop :=
  ∀ n, P16728598058666527819.a n = A136775 (n + 1)

end A136775

/-! ## A136775.P1479598205942847119

`A094667(n+1)+A033191(n)-A001519(n+1)`
-/

namespace A136775.P1479598205942847119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094667 (n + 1) + (A033191 n - A001519 (n + 1))

end

end A136775.P1479598205942847119

namespace A136775

/-- `A094667(n+1)+A033191(n)-A001519(n+1)` -/
def P1479598205942847119.Spec : Prop :=
  ∀ n, P1479598205942847119.a n = A136775 (n + 1)

end A136775

/-! ## A136775.P15748918380584268261

`(A052936(n)+A039717(n+1))/2`
-/

namespace A136775.P15748918380584268261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052936 n + A039717 (n + 1) : ℚ) / 2

end

end A136775.P15748918380584268261

namespace A136775

/-- `(A052936(n)+A039717(n+1))/2` -/
def P15748918380584268261.Spec : Prop :=
  ∀ n, P15748918380584268261.a n = (A136775 (n + 1) : ℚ)

end A136775

/-! ## A136775.P2730635826423244788

`(A216212(2*n)+A178381(2*n))/2`
-/

namespace A136775.P2730635826423244788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216212 (2 * n) + A178381 (2 * n) : ℚ) / 2

end

end A136775.P2730635826423244788

namespace A136775

/-- `(A216212(2*n)+A178381(2*n))/2` -/
def P2730635826423244788.Spec : Prop :=
  ∀ n, P2730635826423244788.a n = (A136775 (n + 1) : ℚ)

end A136775

/-! ## A136775.P12427377735553917736

`Δ[A178381(2*n+1)-A178381(2*n)]`
-/

namespace A136775.P12427377735553917736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178381 (2 * n + 1) - A178381 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136775.P12427377735553917736

namespace A136775

/-- `Δ[A178381(2*n+1)-A178381(2*n)]` -/
def P12427377735553917736.Spec : Prop :=
  ∀ n, P12427377735553917736.a n = A136775 (n + 1)

end A136775

/-! ## A136775.P13371248165423423196

`A030191(n)+A147748(n)-A039717(n+1)`
-/

namespace A136775.P13371248165423423196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030191 n + (A147748 n - A039717 (n + 1))

end

end A136775.P13371248165423423196

namespace A136775

/-- `A030191(n)+A147748(n)-A039717(n+1)` -/
def P13371248165423423196.Spec : Prop :=
  ∀ n, P13371248165423423196.a n = A136775 (n + 1)

end A136775

/-! ## A136775.P6830358278618059908

`A039717(n+1)+A147748(n)-A081567(n)`
-/

namespace A136775.P6830358278618059908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039717 (n + 1) + (A147748 n - A081567 n)

end

end A136775.P6830358278618059908

namespace A136775

/-- `A039717(n+1)+A147748(n)-A081567(n)` -/
def P6830358278618059908.Spec : Prop :=
  ∀ n, P6830358278618059908.a n = A136775 (n + 1)

end A136775

/-! ## A136775.P1392195904282781113

`A147748(n+1)+A147748(n)-A020876(n)`
-/

namespace A136775.P1392195904282781113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147748 (n + 1) + (A147748 n - A020876 n)

end

end A136775.P1392195904282781113

namespace A136775

/-- `A147748(n+1)+A147748(n)-A020876(n)` -/
def P1392195904282781113.Spec : Prop :=
  ∀ n, P1392195904282781113.a n = A136775 (n + 1)

end A136775

/-! ## A136775.P15189552171612470893

`A178381(2*n)+A217777(2*n)-A178381(2*n+1)`
-/

namespace A136775.P15189552171612470893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178381 (2 * n) + (A217777 (2 * n) - A178381 (2 * n + 1))

end

end A136775.P15189552171612470893

namespace A136775

/-- `A178381(2*n)+A217777(2*n)-A178381(2*n+1)` -/
def P15189552171612470893.Spec : Prop :=
  ∀ n, P15189552171612470893.a n = A136775 (n + 1)

end A136775

/-! ## A136775.P4783074351204777146

`Δ[floor(A030191(n)/5)]`
-/

namespace A136775.P4783074351204777146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A030191 n : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136775.P4783074351204777146

namespace A136775

/-- `Δ[floor(A030191(n)/5)]` -/
def P4783074351204777146.Spec : Prop :=
  ∀ n, P4783074351204777146.a n = A136775 (n + 1)

end A136775

/-!
# A136776: Number of primitive multiplex juggling sequences of length n, base state and hand capacity 2.

The programs for A136776, the canonical program `A136776.P984565126646447848` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136776 has offset 1).

The definition of A136776 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136776.P984565126646447848

`4*a(n-1)-3*a(n-2)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136776

/-- `4*a(n-1)-3*a(n-2)-a(n-3)` -/
def P984565126646447848.Spec : Prop :=
  ∀ n, P984565126646447848.a n = A136776 (n + 1)

theorem P984565126646447848.correct : P984565126646447848.Spec := by
  intro n
  simp only [A136776, Nat.add_sub_cancel]

end A136776

/-! ## A136776.P10328372318856395105

`ogf((1-2x+x^2)/(1-4x+3x^2+x^3))`
-/

namespace A136776.P10328372318856395105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -4, 3, 1] n

end

end A136776.P10328372318856395105

namespace A136776

/-- `ogf((1-2x+x^2)/(1-4x+3x^2+x^3))` -/
def P10328372318856395105.Spec : Prop :=
  ∀ n, P10328372318856395105.a n = A136776 (n + 1)

end A136776

/-! ## A136776.P13660726992075077924

`Δ[A116423(n+1)]`
-/

namespace A136776.P13660726992075077924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136776.P13660726992075077924

namespace A136776

/-- `Δ[A116423(n+1)]` -/
def P13660726992075077924.Spec : Prop :=
  ∀ n, P13660726992075077924.a n = A136776 (n + 1)

end A136776

/-! ## A136776.P2005238748493021495

`A215404(n)+∑[A121449(n)]`
-/

namespace A136776.P2005238748493021495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215404 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136776.P2005238748493021495

namespace A136776

/-- `A215404(n)+∑[A121449(n)]` -/
def P2005238748493021495.Spec : Prop :=
  ∀ n, P2005238748493021495.a n = A136776 (n + 1)

end A136776

/-! ## A136776.P6952263795043388323

`A121449(n)+A116423(n+1)`
-/

namespace A136776.P6952263795043388323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121449 n + A116423 (n + 1)

end

end A136776.P6952263795043388323

namespace A136776

/-- `A121449(n)+A116423(n+1)` -/
def P6952263795043388323.Spec : Prop :=
  ∀ n, P6952263795043388323.a n = A136776 (n + 1)

end A136776

/-! ## A136776.P4359788094039202213

`A215404(n)+A085810(n+1)`
-/

namespace A136776.P4359788094039202213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215404 n + A085810 (n + 1)

end

end A136776.P4359788094039202213

namespace A136776

/-- `A215404(n)+A085810(n+1)` -/
def P4359788094039202213.Spec : Prop :=
  ∀ n, P4359788094039202213.a n = A136776 (n + 1)

end A136776

/-! ## A136776.P2528432308803434947

`abs(A322504(n))+2*A215404(n)`
-/

namespace A136776.P2528432308803434947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A322504 n| + 2 * A215404 n

end

end A136776.P2528432308803434947

namespace A136776

/-- `abs(A322504(n))+2*A215404(n)` -/
def P2528432308803434947.Spec : Prop :=
  ∀ n, P2528432308803434947.a n = A136776 (n + 1)

end A136776

/-! ## A136776.P17403122633859534899

`A116423(n+2)-A116423(n+1)`
-/

namespace A136776.P17403122633859534899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116423 (n + 2) - A116423 (n + 1)

end

end A136776.P17403122633859534899

namespace A136776

/-- `A116423(n+2)-A116423(n+1)` -/
def P17403122633859534899.Spec : Prop :=
  ∀ n, P17403122633859534899.a n = A136776 (n + 1)

end A136776

/-! ## A136776.P1516521629070284615

`A215404(n+1)+A121449(n)-A215404(n)`
-/

namespace A136776.P1516521629070284615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215404 (n + 1) + (A121449 n - A215404 n)

end

end A136776.P1516521629070284615

namespace A136776

/-- `A215404(n+1)+A121449(n)-A215404(n)` -/
def P1516521629070284615.Spec : Prop :=
  ∀ n, P1516521629070284615.a n = A136776 (n + 1)

end A136776

/-! ## A136776.P13142657524491785796

`A121449(n+1)+A121449(n)-A085810(n+1)`
-/

namespace A136776.P13142657524491785796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121449 (n + 1) + (A121449 n - A085810 (n + 1))

end

end A136776.P13142657524491785796

namespace A136776

/-- `A121449(n+1)+A121449(n)-A085810(n+1)` -/
def P13142657524491785796.Spec : Prop :=
  ∀ n, P13142657524491785796.a n = A136776 (n + 1)

end A136776

/-! ## A136776.P11855779363529731648

`Δ[Δ[A215404(n)]]`
-/

namespace A136776.P11855779363529731648
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215404 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136776.P11855779363529731648

namespace A136776

/-- `Δ[Δ[A215404(n)]]` -/
def P11855779363529731648.Spec : Prop :=
  ∀ n, P11855779363529731648.a n = A136776 (n + 1)

end A136776

/-!
# A136777: Number of multiplex juggling sequences of length n, base state and hand capacity 2.

The programs for A136777, the canonical program `A136777.P4156242041862846096` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136777 has offset 1).

The definition of A136777 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136777.P4156242041862846096

`8*a(n-1)-13*a(n-2)` with `a(0)=1, a(1)=4, a(2)=22`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136777

/-- `8*a(n-1)-13*a(n-2)` -/
def P4156242041862846096.Spec : Prop :=
  ∀ n, P4156242041862846096.a n = A136777 (n + 1)

theorem P4156242041862846096.correct : P4156242041862846096.Spec := by
  intro n
  simp only [A136777, Nat.add_sub_cancel]

end A136777

/-! ## A136777.P5925884432289610830

`ogf((1-4x+3x^2)/(1-8x+13x^2))`
-/

namespace A136777.P5925884432289610830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 3] [1, -8, 13] n

end

end A136777.P5925884432289610830

namespace A136777

/-- `ogf((1-4x+3x^2)/(1-8x+13x^2))` -/
def P5925884432289610830.Spec : Prop :=
  ∀ n, P5925884432289610830.a n = A136777 (n + 1)

end A136777

/-!
# A136778: Number of primitive multiplex juggling sequences of length n, base state and hand capacity 2.

The programs for A136778, the canonical program `A136778.P6204640341777275251` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136778 has offset 1).

The definition of A136778 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136778.P6204640341777275251

`7*a(n-1)-9*a(n-2)-3*a(n-3)` with `a(0)=1, a(1)=3, a(2)=15`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136778

/-- `7*a(n-1)-9*a(n-2)-3*a(n-3)` -/
def P6204640341777275251.Spec : Prop :=
  ∀ n, P6204640341777275251.a n = A136778 (n + 1)

theorem P6204640341777275251.correct : P6204640341777275251.Spec := by
  intro n
  simp only [A136778, Nat.add_sub_cancel]

end A136778

/-! ## A136778.P3023423161778738508

`ogf((1-4x+3x^2)/(1-7x+9x^2+3x^3))`
-/

namespace A136778.P3023423161778738508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 3] [1, -7, 9, 3] n

end

end A136778.P3023423161778738508

namespace A136778

/-- `ogf((1-4x+3x^2)/(1-7x+9x^2+3x^3))` -/
def P3023423161778738508.Spec : Prop :=
  ∀ n, P3023423161778738508.a n = A136778 (n + 1)

end A136778

/-!
# A136779: Number of multiplex juggling sequences of length n, base state and hand capacity 2.

The programs for A136779, the canonical program `A136779.P13068966823199195913` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136779 has offset 1).

The definition of A136779 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136779.P13068966823199195913

`8*a(n-1)-13*a(n-2)` with `a(0)=1, a(1)=3, a(2)=18`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136779

/-- `8*a(n-1)-13*a(n-2)` -/
def P13068966823199195913.Spec : Prop :=
  ∀ n, P13068966823199195913.a n = A136779 (n + 1)

theorem P13068966823199195913.correct : P13068966823199195913.Spec := by
  intro n
  simp only [A136779, Nat.add_sub_cancel]

end A136779

/-! ## A136779.P11729735405829209778

`ogf((1-5x+7x^2)/(1-8x+13x^2))`
-/

namespace A136779.P11729735405829209778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 7] [1, -8, 13] n

end

end A136779.P11729735405829209778

namespace A136779

/-- `ogf((1-5x+7x^2)/(1-8x+13x^2))` -/
def P11729735405829209778.Spec : Prop :=
  ∀ n, P11729735405829209778.a n = A136779 (n + 1)

end A136779

/-! ## A136779.P4150851494304220493

`A162274(n%(2*a(n-1)))%A136777(n+1)` with `a(0)=1`
-/

namespace A136779.P4150851494304220493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A162274 (Int.tmod (n : ℤ) (2 * a (n - 1))).toNat) (A136777 (n + 1))

end

end A136779.P4150851494304220493

namespace A136779

/-- `A162274(n%(2*a(n-1)))%A136777(n+1)` -/
def P4150851494304220493.Spec : Prop :=
  ∀ n, P4150851494304220493.a n = A136779 (n + 1)

end A136779

/-! ## A136779.P4154056367189934388

`A008683((n+1)²)+A162274(n)%A136777(n+1)`
-/

namespace A136779.P4154056367189934388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) ^ 2) + Int.tmod (A162274 n) (A136777 (n + 1))

end

end A136779.P4154056367189934388

namespace A136779

/-- `A008683((n+1)²)+A162274(n)%A136777(n+1)` -/
def P4154056367189934388.Spec : Prop :=
  ∀ n, P4154056367189934388.a n = A136779 (n + 1)

end A136779

/-!
# A136780: Number of primitive multiplex juggling sequences of length n, base state and hand capacity 2.

The programs for A136780, the canonical program `A136780.P11237905581207468351` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136780 has offset 1).

The definition of A136780 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136780.P11237905581207468351

`7*a(n-1)-8*a(n-2)-7*a(n-3)` with `a(0)=1, a(1)=2, a(2)=13`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136780

/-- `7*a(n-1)-8*a(n-2)-7*a(n-3)` -/
def P11237905581207468351.Spec : Prop :=
  ∀ n, P11237905581207468351.a n = A136780 (n + 1)

theorem P11237905581207468351.correct : P11237905581207468351.Spec := by
  intro n
  simp only [A136780, Nat.add_sub_cancel]

end A136780

/-! ## A136780.P13891607726835924641

`ogf((1-5x+7x^2)/(1-7x+8x^2+7x^3))`
-/

namespace A136780.P13891607726835924641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 7] [1, -7, 8, 7] n

end

end A136780.P13891607726835924641

namespace A136780

/-- `ogf((1-5x+7x^2)/(1-7x+8x^2+7x^3))` -/
def P13891607726835924641.Spec : Prop :=
  ∀ n, P13891607726835924641.a n = A136780 (n + 1)

end A136780

/-!
# A136781: Number of multiplex juggling sequences of length n, base state and hand capacity 2.

The programs for A136781, the canonical program `A136781.P17229268344111475744` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136781 has offset 1).

The definition of A136781 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136781.P17229268344111475744

`14*a(n-1)-54*a(n-2)+57*a(n-3)` with `a(0)=1, a(1)=3, a(2)=21, a(3)=162`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136781

/-- `14*a(n-1)-54*a(n-2)+57*a(n-3)` -/
def P17229268344111475744.Spec : Prop :=
  ∀ n, P17229268344111475744.a n = A136781 (n + 1)

theorem P17229268344111475744.correct : P17229268344111475744.Spec := by
  intro n
  simp only [A136781, Nat.add_sub_cancel]

end A136781

/-!
# A136782: Number of primitive multiplex juggling sequences of length n, base state and hand capacity 2.

The programs for A136782, the canonical program `A136782.P6951865335218545512` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136782 has offset 1).

The definition of A136782 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136782.P6951865335218545512

`13*a(n-1)-43*a(n-2)+24*a(n-3)+27*a(n-4)` with `a(0)=1, a(1)=2, a(2)=16, a(3)=119`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136782

/-- `13*a(n-1)-43*a(n-2)+24*a(n-3)+27*a(n-4)` -/
def P6951865335218545512.Spec : Prop :=
  ∀ n, P6951865335218545512.a n = A136782 (n + 1)

theorem P6951865335218545512.correct : P6951865335218545512.Spec := by
  intro n
  simp only [A136782, Nat.add_sub_cancel]

end A136782

/-!
# A136783: Number of multiplex juggling sequences of length n, base state and hand capacity 3.

The programs for A136783, the canonical program `A136783.P12716832717790608740` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136783 has offset 1).

The definition of A136783 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136783.P12716832717790608740

`10*a(n-1)-27*a(n-2)+20*a(n-3)` with `a(0)=1, a(1)=4, a(2)=20`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136783

/-- `10*a(n-1)-27*a(n-2)+20*a(n-3)` -/
def P12716832717790608740.Spec : Prop :=
  ∀ n, P12716832717790608740.a n = A136783 (n + 1)

theorem P12716832717790608740.correct : P12716832717790608740.Spec := by
  intro n
  simp only [A136783, Nat.add_sub_cancel]

end A136783

/-!
# A136784: Number of primitive multiplex juggling sequences of length n, base state and hand capacity 3.

The programs for A136784, the canonical program `A136784.P10864623646059846194` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136784 has offset 1).

The definition of A136784 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136784.P10864623646059846194

`9*a(n-1)-21*a(n-2)+13*a(n-3)` with `a(0)=1, a(1)=3, a(2)=13`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136784

/-- `9*a(n-1)-21*a(n-2)+13*a(n-3)` -/
def P10864623646059846194.Spec : Prop :=
  ∀ n, P10864623646059846194.a n = A136784 (n + 1)

theorem P10864623646059846194.correct : P10864623646059846194.Spec := by
  intro n
  simp only [A136784, Nat.add_sub_cancel]

end A136784

/-! ## A136784.P14476386363182672183

`ceil(2/3*A083882(n))`
-/

namespace A136784.P14476386363182672183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) / 3 * (A083882 n : ℚ)⌉

end

end A136784.P14476386363182672183

namespace A136784

/-- `ceil(2/3*A083882(n))` -/
def P14476386363182672183.Spec : Prop :=
  ∀ n, P14476386363182672183.a n = A136784 (n + 1)

end A136784

/-! ## A136784.P14125900143504566185

`floor(A014963(A008458(n))+2/3*A083882(n))`
-/

namespace A136784.P14125900143504566185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014963 (A008458 n).toNat : ℚ) + (2 : ℚ) / 3 * (A083882 n : ℚ)⌋

end

end A136784.P14125900143504566185

namespace A136784

/-- `floor(A014963(A008458(n))+2/3*A083882(n))` -/
def P14125900143504566185.Spec : Prop :=
  ∀ n, P14125900143504566185.a n = A136784 (n + 1)

end A136784

/-! ## A136784.P17854629426750061917

`ceil((A163470(n)-A161728(n))/3)`
-/

namespace A136784.P17854629426750061917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A163470 n - A161728 n : ℚ) / 3⌉

end

end A136784.P17854629426750061917

namespace A136784

/-- `ceil((A163470(n)-A161728(n))/3)` -/
def P17854629426750061917.Spec : Prop :=
  ∀ n, P17854629426750061917.a n = A136784 (n + 1)

end A136784

/-! ## A136784.P8764688993317036399

`round(((A163470(n)-A161728(n))/3)^A178334(n))`
-/

namespace A136784.P8764688993317036399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A163470 n - A161728 n : ℚ) / 3) ^ (A178334 n : ℤ))

end

end A136784.P8764688993317036399

namespace A136784

/-- `round(((A163470(n)-A161728(n))/3)^A178334(n))` -/
def P8764688993317036399.Spec : Prop :=
  ∀ n, P8764688993317036399.a n = A136784 (n + 1)

end A136784

/-!
# A136785: Number of multiplex juggling sequences of length n, base state and hand capacity 3.

The programs for A136785, the canonical program `A136785.P1633656810903922168` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136785 has offset 1).

The definition of A136785 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136785.P1633656810903922168

`10*a(n-1)-27*a(n-2)+20*a(n-3)` with `a(0)=1, a(1)=5, a(2)=30, a(3)=182`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136785

/-- `10*a(n-1)-27*a(n-2)+20*a(n-3)` -/
def P1633656810903922168.Spec : Prop :=
  ∀ n, P1633656810903922168.a n = A136785 (n + 1)

theorem P1633656810903922168.correct : P1633656810903922168.Spec := by
  intro n
  simp only [A136785, Nat.add_sub_cancel]

end A136785

/-!
# A136786: Number of primitive multiplex juggling sequences of length n, base state and hand capacity 3.

The programs for A136786, the canonical program `A136786.P18082061863873361448` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136786 has offset 1).

The definition of A136786 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136786.P18082061863873361448

`9*a(n-1)-22*a(n-2)+13*a(n-3)+3*a(n-4)` with `a(0)=1, a(1)=4, a(2)=21, a(3)=111`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136786

/-- `9*a(n-1)-22*a(n-2)+13*a(n-3)+3*a(n-4)` -/
def P18082061863873361448.Spec : Prop :=
  ∀ n, P18082061863873361448.a n = A136786 (n + 1)

theorem P18082061863873361448.correct : P18082061863873361448.Spec := by
  intro n
  simp only [A136786, Nat.add_sub_cancel]

end A136786

/-! ## A136786.P6589563718611607030

`A063742(A374679(3*n)+A000984(n))`
-/

namespace A136786.P6589563718611607030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063742 (A374679 (3 * n) + A000984 n).toNat

end

end A136786.P6589563718611607030

namespace A136786

/-- `A063742(A374679(3*n)+A000984(n))` -/
def P6589563718611607030.Spec : Prop :=
  ∀ n, P6589563718611607030.a n = A136786 (n + 1)

end A136786

/-!
# A136788: Triangle read by rows: A000012 * A107131.

The programs for A136788, there is no canonical definition to state claims against.
-/

/-! ## A136788.P2451267847575988784

`A094838(A026998(n))`
-/

namespace A136788.P2451267847575988784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094838 (A026998 n).toNat

end

end A136788.P2451267847575988784

/-! ## A136788.P3349535846716769337

`A097561(A209575(n+1))`
-/

namespace A136788.P3349535846716769337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097561 (A209575 (n + 1)).toNat

end

end A136788.P3349535846716769337

/-! ## A136788.P6860158073402204668

`A117119(A247306(n+1))`
-/

namespace A136788.P6860158073402204668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117119 (A247306 (n + 1)).toNat

end

end A136788.P6860158073402204668

/-! ## A136788.P16120395021508422789

`A235402(A210227(n+1))`
-/

namespace A136788.P16120395021508422789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235402 (A210227 (n + 1)).toNat

end

end A136788.P16120395021508422789

/-! ## A136788.P16251035021019303683

`A234398(A362078(n+1))`
-/

namespace A136788.P16251035021019303683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234398 (A362078 (n + 1)).toNat

end

end A136788.P16251035021019303683

/-!
# A136791: Triangle read by rows: T(n,k) = 2 * A011971(n,k) - 1.

The programs for A136791, there is no canonical definition to state claims against.
-/

/-! ## A136791.P3838425124223467140

`2*A011971(n)-1`
-/

namespace A136791.P3838425124223467140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011971 n - 1

end

end A136791.P3838425124223467140

/-! ## A136791.P8077934640013005148

`2*Δ[A011972(n)]-1`
-/

namespace A136791.P8077934640013005148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) - 1

end

end A136791.P8077934640013005148

/-! ## A136791.P3066713257479293828

`A004273(A011971(n))`
-/

namespace A136791.P3066713257479293828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A011971 n).toNat

end

end A136791.P3066713257479293828

/-! ## A136791.P6390974884340615998

`A005408(A011971(n)-1)`
-/

namespace A136791.P6390974884340615998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A011971 n - 1).toNat

end

end A136791.P6390974884340615998

/-! ## A136791.P11954742166747551594

`A325962(2*A011971(n))`
-/

namespace A136791.P11954742166747551594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325962 (2 * A011971 n).toNat

end

end A136791.P11954742166747551594

/-!
# A136792: Row sums of triangle A136791.

The programs for A136792, there is no canonical definition to state claims against.
-/

/-! ## A136792.P6391913435328609822

`2*A005493(n)-(n+1)`
-/

namespace A136792.P6391913435328609822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005493 n - (n + 1 : ℤ)

end

end A136792.P6391913435328609822

/-! ## A136792.P10533141373731991339

`Δ[A060719(n)-∑[n]]`
-/

namespace A136792.P10533141373731991339
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060719 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136792.P10533141373731991339

/-! ## A136792.P5702051431289954218

`Δ[A186021(n+1)]-(n+1)`
-/

namespace A136792.P5702051431289954218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 1 : ℤ)

end

end A136792.P5702051431289954218

/-! ## A136792.P1930796835396511378

`A022958(n)+Δ[A060719(n)]-3`
-/

namespace A136792.P1930796835396511378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060719 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 n + (f1 (n + 1) - f1 n - 3)

end

end A136792.P1930796835396511378

/-! ## A136792.P15324072405390243726

`A259691(A000124(n+2))-(n+1)`
-/

namespace A136792.P15324072405390243726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259691 (A000124 (n + 2)).toNat - (n + 1 : ℤ)

end

end A136792.P15324072405390243726

/-!
# A136793: Number of unlabeled rooted trees with n 4-colored nodes.

The programs for A136793, there is no canonical definition to state claims against.
-/

/-! ## A136793.P1577466232745648617

`A052763(n+1)*4`
-/

namespace A136793.P1577466232745648617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052763 (n + 1) * 4

end

end A136793.P1577466232745648617

/-! ## A136793.P1463773024468236103

`A136794(n+1)*2`
-/

namespace A136793.P1463773024468236103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136794 (n + 1) * 2

end

end A136793.P1463773024468236103

/-! ## A136793.P530011636789629518

`∑[4*Δ[A052763(n)]]`
-/

namespace A136793.P530011636789629518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052763 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136793.P530011636789629518

/-! ## A136793.P2570057186099913878

`4*A242249(A000124(n+6)-6)`
-/

namespace A136793.P2570057186099913878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A242249 (A000124 (n + 6) - 6).toNat

end

end A136793.P2570057186099913878

/-! ## A136793.P13449064532069772550

`4*A242249(Δ[Δ[A006504(n+1)]])`
-/

namespace A136793.P13449064532069772550
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A242249 (f1 (n + 1) - f1 n).toNat

end

end A136793.P13449064532069772550

/-!
# A136794: Number of unlabeled marked rooted trees with n nodes.

The programs for A136794, there is no canonical definition to state claims against.
-/

/-! ## A136794.P16183563750477447452

`A052763(n+1)*2`
-/

namespace A136794.P16183563750477447452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052763 (n + 1) * 2

end

end A136794.P16183563750477447452

/-! ## A136794.P6074268189749192036

`A136793(n+1)/2`
-/

namespace A136794.P6074268189749192036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136793 (n + 1) : ℚ) / 2

end

end A136794.P6074268189749192036

/-! ## A136794.P140706060804073704

`Δ[2*∑[A052763(n)]]`
-/

namespace A136794.P140706060804073704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052763 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136794.P140706060804073704

/-! ## A136794.P5546614542872480073

`2*A242249(A052905(n+3))`
-/

namespace A136794.P5546614542872480073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A242249 (A052905 (n + 3)).toNat

end

end A136794.P5546614542872480073

/-! ## A136794.P4231064863039388252

`2*A242249(Δ[Δ[A006504(n+1)]])`
-/

namespace A136794.P4231064863039388252
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A242249 (f1 (n + 1) - f1 n).toNat

end

end A136794.P4231064863039388252

/-!
# A136795: Number of unlabeled marked trees with n nodes.

The programs for A136795, there is no canonical definition to state claims against.
-/

/-! ## A136795.P15582421382239152366

`A156563(A371785(n))`
-/

namespace A136795.P15582421382239152366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156563 (A371785 n).toNat

end

end A136795.P15582421382239152366

/-!
# A136796: Number of labeled marked rooted trees with n nodes.

The programs for A136796, the canonical program `A136796.P6124558615155368082` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136796 has offset 1).

The definition of A136796 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136796.P6124558615155368082

`2^(2*(n+1)-1)*(n+1)^n`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136796

/-- `2^(2*(n+1)-1)*(n+1)^n` -/
def P6124558615155368082.Spec : Prop :=
  ∀ n, P6124558615155368082.a n = (A136796 (n + 1) : ℚ)

end A136796

/-! ## A136796.P11070238915764030735

`A152556(Δ[n²])`
-/

namespace A136796.P11070238915764030735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152556 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A136796.P11070238915764030735

namespace A136796

/-- `A152556(Δ[n²])` -/
def P11070238915764030735.Spec : Prop :=
  ∀ n, P11070238915764030735.a n = A136796 (n + 1)

end A136796

/-! ## A136796.P8940953316703343175

`lcm(2, A152556(2*n+1))`
-/

namespace A136796.P8940953316703343175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A152556 (2 * n + 1))

end

end A136796.P8940953316703343175

namespace A136796

/-- `lcm(2, A152556(2*n+1))` -/
def P8940953316703343175.Spec : Prop :=
  ∀ n, (P8940953316703343175.a n : ℤ) = A136796 (n + 1)

end A136796

/-! ## A136796.P15733945602868579433

`abs(2*Δ[A046092(n)]^n)`
-/

namespace A136796.P15733945602868579433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (f1 (n + 1) - f1 n) ^ n|

end

end A136796.P15733945602868579433

namespace A136796

/-- `abs(2*Δ[A046092(n)]^n)` -/
def P15733945602868579433.Spec : Prop :=
  ∀ n, P15733945602868579433.a n = A136796 (n + 1)

end A136796

/-! ## A136796.P1142479276655848524

`A003308(2*(n+1))/A000169(n+1)`
-/

namespace A136796.P1142479276655848524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003308 (2 * (n + 1)) : ℚ) / (A000169 (n + 1) : ℚ)

end

end A136796.P1142479276655848524

namespace A136796

/-- `A003308(2*(n+1))/A000169(n+1)` -/
def P1142479276655848524.Spec : Prop :=
  ∀ n, P1142479276655848524.a n = (A136796 (n + 1) : ℚ)

end A136796

/-!
# A136797: Number of labeled marked trees with n nodes.

The programs for A136797, the canonical program `A136797.P1384484390863826464` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136797 has offset 1).

The definition of A136797 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136797.P1384484390863826464

`2^(2*(n+1)-1)*(n+1)^(n-1)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136797

/-- `2^(2*(n+1)-1)*(n+1)^(n-1)` -/
def P1384484390863826464.Spec : Prop :=
  ∀ n, P1384484390863826464.a n = (A136797 (n + 1) : ℚ)

end A136797

/-! ## A136797.P5360344458215210386

`A136796(n+1)/(n+1)`
-/

namespace A136797.P5360344458215210386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136796 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A136797.P5360344458215210386

namespace A136797

/-- `A136796(n+1)/(n+1)` -/
def P5360344458215210386.Spec : Prop :=
  ∀ n, P5360344458215210386.a n = (A136797 (n + 1) : ℚ)

end A136797

/-! ## A136797.P3894787202557495235

`A152556(2*n+1)/(n+1)`
-/

namespace A136797.P3894787202557495235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152556 (2 * n + 1) : ℚ) / (n + 1 : ℚ)

end

end A136797.P3894787202557495235

namespace A136797

/-- `A152556(2*n+1)/(n+1)` -/
def P3894787202557495235.Spec : Prop :=
  ∀ n, P3894787202557495235.a n = (A136797 (n + 1) : ℚ)

end A136797

/-! ## A136797.P8302237536293611104

`record[A136796(A286378(n))/A286378(n)]`
-/

namespace A136797.P8302237536293611104
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136796 (A286378 n).toNat : ℚ) / (A286378 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136797.P8302237536293611104

namespace A136797

/-- `record[A136796(A286378(n))/A286378(n)]` -/
def P8302237536293611104.Spec : Prop :=
  ∀ n, P8302237536293611104.a n = (A136797 (n + 1) : ℚ)

end A136797

/-! ## A136797.P11128789851332920612

`(A091483(n+1)+A091483(n+1))/A016742(n+1)`
-/

namespace A136797.P11128789851332920612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091483 (n + 1) + A091483 (n + 1) : ℚ) / (A016742 (n + 1) : ℚ)

end

end A136797.P11128789851332920612

namespace A136797

/-- `(A091483(n+1)+A091483(n+1))/A016742(n+1)` -/
def P11128789851332920612.Spec : Prop :=
  ∀ n, P11128789851332920612.a n = (A136797 (n + 1) : ℚ)

end A136797

/-!
# A136798: First term in a sequence of at least 3 consecutive composite integers.

The programs for A136798, the canonical program `A136798.P11682257404800107167` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136798 has offset 1).

The definition of A136798 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049591, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A136798.P11682257404800107167

`A049591(n+1)+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A136798

/-- `A049591(n+1)+1` -/
def P11682257404800107167.Spec : Prop :=
  ∀ n, P11682257404800107167.a n = A136798 (n + 1)

theorem P11682257404800107167.correct : P11682257404800107167.Spec := by
  intro n
  simp only [A136798, Nat.add_sub_cancel]

end A136798

/-! ## A136798.P3577299681490110259

`A107987(n+1)-1`
-/

namespace A136798.P3577299681490110259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107987 (n + 1) - 1

end

end A136798.P3577299681490110259

namespace A136798

/-- `A107987(n+1)-1` -/
def P3577299681490110259.Spec : Prop :=
  ∀ n, P3577299681490110259.a n = A136798 (n + 1)

theorem P3577299681490110259.correct : P3577299681490110259.Spec := by
  intro n
  simp only [A136798, Nat.add_sub_cancel, A136798.P3577299681490110259.a, A136798.P11682257404800107167.a, A049591, A049591.P2776477659953961474.f1, A049591.P2776477659953961474.f2, A049591.P2776477659953961474.a, A107987, A107987.P5415694799470960516.a, A001223, A001223.P5083310856331133973.a, A065091, A065091.P6971844946592549357.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136798

/-! ## A136798.P8533182174668340817

`2*A104280(n+1)`
-/

namespace A136798.P8533182174668340817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104280 (n + 1)

end

end A136798.P8533182174668340817

namespace A136798

/-- `2*A104280(n+1)` -/
def P8533182174668340817.Spec : Prop :=
  ∀ n, P8533182174668340817.a n = A136798 (n + 1)

end A136798

/-! ## A136798.P7801249548657326925

`A297925(n+1)-4`
-/

namespace A136798.P7801249548657326925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297925 (n + 1) - 4

end

end A136798.P7801249548657326925

namespace A136798

/-- `A297925(n+1)-4` -/
def P7801249548657326925.Spec : Prop :=
  ∀ n, P7801249548657326925.a n = A136798 (n + 1)

theorem P7801249548657326925.correct : P7801249548657326925.Spec := by
  intro n
  simp only [A136798, Nat.add_sub_cancel, A136798.P7801249548657326925.a, A136798.P11682257404800107167.a, A049591, A049591.P2776477659953961474.f1, A049591.P2776477659953961474.f2, A049591.P2776477659953961474.a, A297925, A297925.P18079423066294423131.a, A001223, A001223.P5083310856331133973.a, A065091, A065091.P6971844946592549357.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136798

/-! ## A136798.P14102366141825939819

`A297150(n+1)/5+1`
-/

namespace A136798.P14102366141825939819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297150 (n + 1) : ℚ) / 5 + 1

end

end A136798.P14102366141825939819

namespace A136798

/-- `A297150(n+1)/5+1` -/
def P14102366141825939819.Spec : Prop :=
  ∀ n, P14102366141825939819.a n = (A136798 (n + 1) : ℚ)

theorem P14102366141825939819.correct : P14102366141825939819.Spec := by
  intro n
  simp only [A136798, Nat.add_sub_cancel, A136798.P14102366141825939819.a, A136798.P11682257404800107167.a, A049591, A049591.P2776477659953961474.f1, A049591.P2776477659953961474.f2, A049591.P2776477659953961474.a, A297150, A297150.P3820632814485889049.a, A001223, A001223.P5083310856331133973.a, A065091, A065091.P6971844946592549357.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136798

/-! ## A136798.P17239291586710794149

`A067774(n+2)+1`
-/

namespace A136798.P17239291586710794149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067774 (n + 2) + 1

end

end A136798.P17239291586710794149

namespace A136798

/-- `A067774(n+2)+1` -/
def P17239291586710794149.Spec : Prop :=
  ∀ n, P17239291586710794149.a n = A136798 (n + 1)

end A136798

/-! ## A136798.P12241712737450999867

`A107986(n+2)-1`
-/

namespace A136798.P12241712737450999867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107986 (n + 2) - 1

end

end A136798.P12241712737450999867

namespace A136798

/-- `A107986(n+2)-1` -/
def P12241712737450999867.Spec : Prop :=
  ∀ n, P12241712737450999867.a n = A136798 (n + 1)

end A136798

/-! ## A136798.P2120040131558785158

`A141515(n+2)+2`
-/

namespace A136798.P2120040131558785158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141515 (n + 2) + 2

end

end A136798.P2120040131558785158

namespace A136798

/-- `A141515(n+2)+2` -/
def P2120040131558785158.Spec : Prop :=
  ∀ n, P2120040131558785158.a n = A136798 (n + 1)

end A136798

/-! ## A136798.P17657219079690056134

`A025584(n+3)-A136800(n+1)`
-/

namespace A136798.P17657219079690056134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 3) - A136800 (n + 1)

end

end A136798.P17657219079690056134

namespace A136798

/-- `A025584(n+3)-A136800(n+1)` -/
def P17657219079690056134.Spec : Prop :=
  ∀ n, P17657219079690056134.a n = A136798 (n + 1)

theorem P17657219079690056134.correct : P17657219079690056134.Spec := by
  intro n
  simp only [A136798, Nat.add_sub_cancel, A136798.P17657219079690056134.a, A136798.P11682257404800107167.a, A025584, A025584.P1747553391340850671.a, A049591, A049591.P2776477659953961474.f1, A049591.P2776477659953961474.f2, A049591.P2776477659953961474.a, A136800, A136800.P8889398827105192195.a, A001223, A001223.P5083310856331133973.a, A001248, A001248.P16278241061688229202.a, A008837, A008837.P8759727606906235899.a, A049643, A049643.P15143516310095013308.a, A065091, A065091.P6971844946592549357.a, A136799, A136799.P12211769734399561323.a, A156828, A156828.P15006888903266838988.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A046933, A046933.P9479947770746769512.a, A049641, A049641.P593643033419943837.f1, A049641.P593643033419943837.a, A151800, A151800.P4570031678714564115.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A008619, A008619.P16053834178911111118.a, A049688, A049688.P4025135909260073091.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A136798

/-! ## A136798.P15271784511847277380

`A008864(A049579(n+1))`
-/

namespace A136798.P15271784511847277380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A049579 (n + 1)).toNat

end

end A136798.P15271784511847277380

namespace A136798

/-- `A008864(A049579(n+1))` -/
def P15271784511847277380.Spec : Prop :=
  ∀ n, P15271784511847277380.a n = A136798 (n + 1)

end A136798

/-! ## A136798.P6632089484981020360

`A028815(lt[2, Δ[A028815(n)]])`
-/

namespace A136798.P6632089484981020360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A136798.P6632089484981020360

namespace A136798

/-- `A028815(lt[2, Δ[A028815(n)]])` -/
def P6632089484981020360.Spec : Prop :=
  ∀ n, P6632089484981020360.a n = A136798 (n + 1)

end A136798

/-! ## A136798.P17548658141620281053

`A000203(A049591(n+1))`
-/

namespace A136798.P17548658141620281053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A049591 (n + 1)).toNat

end

end A136798.P17548658141620281053

namespace A136798

/-- `A000203(A049591(n+1))` -/
def P17548658141620281053.Spec : Prop :=
  ∀ n, P17548658141620281053.a n = A136798 (n + 1)

end A136798

/-! ## A136798.P8855514966009614626

`A000203(A067774(n+2))`
-/

namespace A136798.P8855514966009614626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A067774 (n + 2)).toNat

end

end A136798.P8855514966009614626

namespace A136798

/-- `A000203(A067774(n+2))` -/
def P8855514966009614626.Spec : Prop :=
  ∀ n, P8855514966009614626.a n = A136798 (n + 1)

end A136798

/-! ## A136798.P10612549861556586951

`A000203(A297150(n+1)/5)`
-/

namespace A136798.P10612549861556586951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A297150 (n + 1) : ℚ) / 5)).toNat

end

end A136798.P10612549861556586951

namespace A136798

/-- `A000203(A297150(n+1)/5)` -/
def P10612549861556586951.Spec : Prop :=
  ∀ n, P10612549861556586951.a n = A136798 (n + 1)

end A136798

/-! ## A136798.P10279775598136504876

`filter[A028815(n), A292438(#)]`
-/

namespace A136798.P10279775598136504876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A136798.P10279775598136504876

namespace A136798

/-- `filter[A028815(n), A292438(#)]` -/
def P10279775598136504876.Spec : Prop :=
  ∀ n, P10279775598136504876.a n = A136798 (n + 1)

end A136798

/-! ## A136798.P11622515234732957751

`filter[A008864(n+1), A292438(#)]`
-/

namespace A136798.P11622515234732957751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A136798.P11622515234732957751

namespace A136798

/-- `filter[A008864(n+1), A292438(#)]` -/
def P11622515234732957751.Spec : Prop :=
  ∀ n, P11622515234732957751.a n = A136798 (n + 1)

end A136798

/-! ## A136798.P9371737998051242610

`filter[A135731(n+1), A292438(#)]`
-/

namespace A136798.P9371737998051242610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A136798.P9371737998051242610

namespace A136798

/-- `filter[A135731(n+1), A292438(#)]` -/
def P9371737998051242610.Spec : Prop :=
  ∀ n, P9371737998051242610.a n = A136798 (n + 1)

end A136798

/-! ## A136798.P11771776553231100631

`filter[A175216(n+1), A292438(#)]`
-/

namespace A136798.P11771776553231100631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A136798.P11771776553231100631

namespace A136798

/-- `filter[A175216(n+1), A292438(#)]` -/
def P11771776553231100631.Spec : Prop :=
  ∀ n, P11771776553231100631.a n = A136798 (n + 1)

end A136798

/-! ## A136798.P8212592925233069914

`filter[A055670(n+2), A292438(#)]`
-/

namespace A136798.P8212592925233069914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A136798.P8212592925233069914

namespace A136798

/-- `filter[A055670(n+2), A292438(#)]` -/
def P8212592925233069914.Spec : Prop :=
  ∀ n, P8212592925233069914.a n = A136798 (n + 1)

end A136798

/-! ## A136798.P16053160118544666496

`filter[A299763(n+2), A292438(#)]`
-/

namespace A136798.P16053160118544666496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A136798.P16053160118544666496

namespace A136798

/-- `filter[A299763(n+2), A292438(#)]` -/
def P16053160118544666496.Spec : Prop :=
  ∀ n, P16053160118544666496.a n = A136798 (n + 1)

end A136798

/-!
# A136799: Last term in a sequence of at least 3 consecutive composite integers.

The programs for A136799, the canonical program `A136799.P12211769734399561323` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136799 has offset 1).

The definition of A136799 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025584, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A136799.P12211769734399561323

`A025584(n+3)-1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A136799

/-- `A025584(n+3)-1` -/
def P12211769734399561323.Spec : Prop :=
  ∀ n, P12211769734399561323.a n = A136799 (n + 1)

theorem P12211769734399561323.correct : P12211769734399561323.Spec := by
  intro n
  simp only [A136799, Nat.add_sub_cancel]

end A136799

/-! ## A136799.P12335909342879446656

`A136800(n+1)+A049591(n+1)`
-/

namespace A136799.P12335909342879446656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136800 (n + 1) + A049591 (n + 1)

end

end A136799.P12335909342879446656

namespace A136799

/-- `A136800(n+1)+A049591(n+1)` -/
def P12335909342879446656.Spec : Prop :=
  ∀ n, P12335909342879446656.a n = A136799 (n + 1)

theorem P12335909342879446656.correct : P12335909342879446656.Spec := by
  intro n
  simp only [A136799, Nat.add_sub_cancel, A136799.P12335909342879446656.a, A136799.P12211769734399561323.a, A025584, A025584.P1747553391340850671.a, A049591, A049591.P2776477659953961474.f1, A049591.P2776477659953961474.f2, A049591.P2776477659953961474.a, A136800, A136800.P8889398827105192195.a, A001223, A001223.P5083310856331133973.a, A001248, A001248.P16278241061688229202.a, A008837, A008837.P8759727606906235899.a, A049643, A049643.P15143516310095013308.a, A065091, A065091.P6971844946592549357.a, A136798, A136798.P11682257404800107167.a, A156828, A156828.P15006888903266838988.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A046933, A046933.P9479947770746769512.a, A049641, A049641.P593643033419943837.f1, A049641.P593643033419943837.a, A151800, A151800.P4570031678714564115.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A008619, A008619.P16053834178911111118.a, A049688, A049688.P4025135909260073091.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A136799

/-! ## A136799.P9567675711634320622

`2*A104279(n+2)`
-/

namespace A136799.P9567675711634320622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104279 (n + 2)

end

end A136799.P9567675711634320622

namespace A136799

/-- `2*A104279(n+2)` -/
def P9567675711634320622.Spec : Prop :=
  ∀ n, P9567675711634320622.a n = A136799 (n + 1)

end A136799

/-! ## A136799.P13396659865259852735

`A179384(n+3)+1`
-/

namespace A136799.P13396659865259852735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179384 (n + 3) + 1

end

end A136799.P13396659865259852735

namespace A136799

/-- `A179384(n+3)+1` -/
def P13396659865259852735.Spec : Prop :=
  ∀ n, P13396659865259852735.a n = A136799 (n + 1)

theorem P13396659865259852735.correct : P13396659865259852735.Spec := by
  intro n
  simp only [A136799, Nat.add_sub_cancel, A136799.P13396659865259852735.a, A136799.P12211769734399561323.a, A025584, A025584.P1747553391340850671.a, A179384, A179384.P14080840919956110630.a, A001248, A001248.P16278241061688229202.a, A008837, A008837.P8759727606906235899.a, A049643, A049643.P15143516310095013308.a, A156828, A156828.P15006888903266838988.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A049641, A049641.P593643033419943837.f1, A049641.P593643033419943837.a, A151800, A151800.P4570031678714564115.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A008619, A008619.P16053834178911111118.a, A049688, A049688.P4025135909260073091.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A136799

/-! ## A136799.P10279183007067228874

`A156828(n+3)-1`
-/

namespace A136799.P10279183007067228874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156828 (n + 3) - 1

end

end A136799.P10279183007067228874

namespace A136799

/-- `A156828(n+3)-1` -/
def P10279183007067228874.Spec : Prop :=
  ∀ n, P10279183007067228874.a n = A136799 (n + 1)

end A136799

/-! ## A136799.P14517239522602093927

`A238327(n+3)-3`
-/

namespace A136799.P14517239522602093927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238327 (n + 3) - 3

end

end A136799.P14517239522602093927

namespace A136799

/-- `A238327(n+3)-3` -/
def P14517239522602093927.Spec : Prop :=
  ∀ n, P14517239522602093927.a n = A136799 (n + 1)

end A136799

/-! ## A136799.P6579915298382954306

`A165972(A049579(n+1))`
-/

namespace A136799.P6579915298382954306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165972 (A049579 (n + 1)).toNat

end

end A136799.P6579915298382954306

namespace A136799

/-- `A165972(A049579(n+1))` -/
def P6579915298382954306.Spec : Prop :=
  ∀ n, P6579915298382954306.a n = A136799 (n + 1)

end A136799

/-! ## A136799.P9513975742867794822

`A000040(A049579(n+1)+1)-1`
-/

namespace A136799.P9513975742867794822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A049579 (n + 1) + 1).toNat - 1

end

end A136799.P9513975742867794822

namespace A136799

/-- `A000040(A049579(n+1)+1)-1` -/
def P9513975742867794822.Spec : Prop :=
  ∀ n, P9513975742867794822.a n = A136799 (n + 1)

end A136799

/-! ## A136799.P10422842504660530546

`A008864(A049579(n+1)+1)-2`
-/

namespace A136799.P10422842504660530546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A049579 (n + 1) + 1).toNat - 2

end

end A136799.P10422842504660530546

namespace A136799

/-- `A008864(A049579(n+1)+1)-2` -/
def P10422842504660530546.Spec : Prop :=
  ∀ n, P10422842504660530546.a n = A136799 (n + 1)

end A136799

/-! ## A136799.P1515259093619130119

`A006093(lt[2, A054541(n+1)]+1)`
-/

namespace A136799.P1515259093619130119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A136799.P1515259093619130119

namespace A136799

/-- `A006093(lt[2, A054541(n+1)]+1)` -/
def P1515259093619130119.Spec : Prop :=
  ∀ n, P1515259093619130119.a n = A136799 (n + 1)

end A136799

/-! ## A136799.P16837537976487586235

`A000040(lt[3, A076368(n+1)]+1)-1`
-/

namespace A136799.P16837537976487586235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) - 1

end

end A136799.P16837537976487586235

namespace A136799

/-- `A000040(lt[3, A076368(n+1)]+1)-1` -/
def P16837537976487586235.Spec : Prop :=
  ∀ n, P16837537976487586235.a n = A136799 (n + 1)

end A136799

/-! ## A136799.P1132717954707620783

`A151800(A067774(n+2))-1`
-/

namespace A136799.P1132717954707620783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A067774 (n + 2)).toNat - 1

end

end A136799.P1132717954707620783

namespace A136799

/-- `A151800(A067774(n+2))-1` -/
def P1132717954707620783.Spec : Prop :=
  ∀ n, P1132717954707620783.a n = A136799 (n + 1)

end A136799

/-! ## A136799.P6867791203529082117

`A000010(A025584(n+3))`
-/

namespace A136799.P6867791203529082117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A025584 (n + 3)).toNat

end

end A136799.P6867791203529082117

namespace A136799

/-- `A000010(A025584(n+3))` -/
def P6867791203529082117.Spec : Prop :=
  ∀ n, P6867791203529082117.a n = A136799 (n + 1)

end A136799

/-! ## A136799.P3378165147803893331

`A000010(A156828(n+3))`
-/

namespace A136799.P3378165147803893331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A156828 (n + 3)).toNat

end

end A136799.P3378165147803893331

namespace A136799

/-- `A000010(A156828(n+3))` -/
def P3378165147803893331.Spec : Prop :=
  ∀ n, P3378165147803893331.a n = A136799 (n + 1)

end A136799

/-! ## A136799.P7427906467845569920

`A000010(A280405(n+2)/3)`
-/

namespace A136799.P7427906467845569920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A280405 (n + 2) : ℚ) / 3)).toNat

end

end A136799.P7427906467845569920

namespace A136799

/-- `A000010(A280405(n+2)/3)` -/
def P7427906467845569920.Spec : Prop :=
  ∀ n, P7427906467845569920.a n = A136799 (n + 1)

end A136799

/-! ## A136799.P16064259381855802113

`filter[A006093(n+1), A323162(#)]`
-/

namespace A136799.P16064259381855802113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A136799.P16064259381855802113

namespace A136799

/-- `filter[A006093(n+1), A323162(#)]` -/
def P16064259381855802113.Spec : Prop :=
  ∀ n, P16064259381855802113.a n = A136799 (n + 1)

end A136799

/-! ## A136799.P14479511720339263716

`filter[A039915(n+1), A292438(#)]`
-/

namespace A136799.P14479511720339263716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A136799.P14479511720339263716

namespace A136799

/-- `filter[A039915(n+1), A292438(#)]` -/
def P14479511720339263716.Spec : Prop :=
  ∀ n, P14479511720339263716.a n = A136799 (n + 1)

end A136799

/-! ## A136799.P5032212422333606885

`filter[A039915(n+1), A323162(#)]`
-/

namespace A136799.P5032212422333606885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A136799.P5032212422333606885

namespace A136799

/-- `filter[A039915(n+1), A323162(#)]` -/
def P5032212422333606885.Spec : Prop :=
  ∀ n, P5032212422333606885.a n = A136799 (n + 1)

end A136799

/-! ## A136799.P14343668554953573986

`filter[A068499(n+1), A323162(#)]`
-/

namespace A136799.P14343668554953573986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A136799.P14343668554953573986

namespace A136799

/-- `filter[A068499(n+1), A323162(#)]` -/
def P14343668554953573986.Spec : Prop :=
  ∀ n, P14343668554953573986.a n = A136799 (n + 1)

end A136799

/-! ## A136799.P14200964035471873636

`filter[A156037(n+1), A323162(#)]`
-/

namespace A136799.P14200964035471873636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A136799.P14200964035471873636

namespace A136799

/-- `filter[A156037(n+1), A323162(#)]` -/
def P14200964035471873636.Spec : Prop :=
  ∀ n, P14200964035471873636.a n = A136799 (n + 1)

end A136799

