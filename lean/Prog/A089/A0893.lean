import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
# A089300: Number of planar partitions of n (A000219) that are non-squashing along rows and down columns (cf. A018819).

The programs for A089300, there is no canonical definition to state claims against.
-/

/-! ## A089300.P3878802967450624982

`A002513(n)+A001221(A020108(n))`
-/

namespace A089300.P3878802967450624982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002513 n + A001221 (A020108 n).toNat

end

end A089300.P3878802967450624982

/-! ## A089300.P3228717226550866159

`A229915(n)-A188967(A092255(n))`
-/

namespace A089300.P3228717226550866159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229915 n - A188967 (A092255 n).toNat

end

end A089300.P3228717226550866159

/-! ## A089300.P6930964996573011720

`A323429(n)-A323273(A323431(n))`
-/

namespace A089300.P6930964996573011720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323429 n - A323273 (A323431 n).toNat

end

end A089300.P6930964996573011720

/-! ## A089300.P378388563333691024

`A175139(A336414(n))`
-/

namespace A089300.P378388563333691024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175139 (A336414 n).toNat

end

end A089300.P378388563333691024

/-! ## A089300.P17628170909320795214

`∑[A346800(n+1)-A124482(n+1)]`
-/

namespace A089300.P17628170909320795214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346800 (n + 1) - A124482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089300.P17628170909320795214

/-!
# A089302: Triangle read by rows in which each row is the inverse binomial transform of a diagonal of A089246.

The programs for A089302, there is no canonical definition to state claims against.
-/

/-! ## A089302.P15384126888933085046

`A172381(A055645(n))+A048142(n+1)`
-/

namespace A089302.P15384126888933085046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172381 (A055645 n).toNat + A048142 (n + 1)

end

end A089302.P15384126888933085046

/-! ## A089302.P8472001575905728846

`A118759(A172381(n)+A048142(n+1))`
-/

namespace A089302.P8472001575905728846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A172381 n + A048142 (n + 1)).toNat

end

end A089302.P8472001575905728846

/-! ## A089302.P6286096675088504428

`A269394(A172381(n)+A048142(n+1))`
-/

namespace A089302.P6286096675088504428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269394 (A172381 n + A048142 (n + 1)).toNat

end

end A089302.P6286096675088504428

/-! ## A089302.P467080084567190721

`(A172381(n)+A048142(n+1))%A264755(n+2)`
-/

namespace A089302.P467080084567190721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172381 n + A048142 (n + 1)) (A264755 (n + 2))

end

end A089302.P467080084567190721

/-! ## A089302.P11276501349930455169

`A048142(n+1)+A172381(n)+A000038(A001405(n))`
-/

namespace A089302.P11276501349930455169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048142 (n + 1) + (A172381 n + A000038 (A001405 n).toNat)

end

end A089302.P11276501349930455169

/-!
# A089303: a(n) = floor( (10^n - 1) / (9*n) ).

The programs for A089303, the canonical program `A089303.P2829233237180184215` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089303 has offset 1).

The definition of A089303 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((10^(n+1)-1)/(9*(n+1)))` (program `A089303.P2829233237180184215`, by `A089303.P2829233237180184215.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089303.P2829233237180184215

`floor((10^(n+1)-1)/(9*(n+1)))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089303

/-- `floor((10^(n+1)-1)/(9*(n+1)))` -/
def P2829233237180184215.Spec : Prop :=
  ∀ n, P2829233237180184215.a n = A089303 (n + 1)

theorem P2829233237180184215.correct : P2829233237180184215.Spec := by
  intro n
  simp only [A089303, Nat.add_sub_cancel]

end A089303

/-! ## A089303.P7038972127640122102

`ceil(∑[A103456(n)]/(n+1))`
-/

namespace A089303.P7038972127640122102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103456 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌉

end

end A089303.P7038972127640122102

namespace A089303

/-- `ceil(∑[A103456(n)]/(n+1))` -/
def P7038972127640122102.Spec : Prop :=
  ∀ n, P7038972127640122102.a n = A089303 (n + 1)

end A089303

/-! ## A089303.P18396989281882683592

`abs(floor(Δ[A014824(n)]/(n+1)))`
-/

namespace A089303.P18396989281882683592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)⌋|

end

end A089303.P18396989281882683592

namespace A089303

/-- `abs(floor(Δ[A014824(n)]/(n+1)))` -/
def P18396989281882683592.Spec : Prop :=
  ∀ n, P18396989281882683592.a n = A089303 (n + 1)

end A089303

/-! ## A089303.P16512429489938399475

`ceil((A105279(n)+2)/(n+1))-1`
-/

namespace A089303.P16512429489938399475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A105279 n + 2 : ℚ) / (n + 1 : ℚ)⌉ - 1

end

end A089303.P16512429489938399475

namespace A089303

/-- `ceil((A105279(n)+2)/(n+1))-1` -/
def P16512429489938399475.Spec : Prop :=
  ∀ n, P16512429489938399475.a n = A089303 (n + 1)

end A089303

/-! ## A089303.P18360336659440715171

`-ceil(A000042(n+1)/xor(n, -1))`
-/

namespace A089303.P18360336659440715171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈(A000042 (n + 1) : ℚ) / (Int.xor (n : ℤ) (-1) : ℚ)⌉

end

end A089303.P18360336659440715171

namespace A089303

/-- `-ceil(A000042(n+1)/xor(n, -1))` -/
def P18360336659440715171.Spec : Prop :=
  ∀ n, P18360336659440715171.a n = A089303 (n + 1)

end A089303

/-! ## A089303.P15281464660235421159

`floor(∑[A011557(n)-1]/(n+1))+1`
-/

namespace A089303.P15281464660235421159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌋ + 1

end

end A089303.P15281464660235421159

namespace A089303

/-- `floor(∑[A011557(n)-1]/(n+1))+1` -/
def P15281464660235421159.Spec : Prop :=
  ∀ n, P15281464660235421159.a n = A089303 (n + 1)

end A089303

/-! ## A089303.P15166681875471441524

`ceil((∑[A002283(n)+1]-n)/(n+1))`
-/

namespace A089303.P15166681875471441524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) : ℤ) : ℚ) / (n + 1 : ℚ)⌉

end

end A089303.P15166681875471441524

namespace A089303

/-- `ceil((∑[A002283(n)+1]-n)/(n+1))` -/
def P15166681875471441524.Spec : Prop :=
  ∀ n, P15166681875471441524.a n = A089303 (n + 1)

end A089303

/-! ## A089303.P17965087747010453457

`record[floor(A287468(n)/A008619(n))]`
-/

namespace A089303.P17965087747010453457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A287468 n : ℚ) / (A008619 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089303.P17965087747010453457

namespace A089303

/-- `record[floor(A287468(n)/A008619(n))]` -/
def P17965087747010453457.Spec : Prop :=
  ∀ n, P17965087747010453457.a n = A089303 (n + 1)

end A089303

/-!
# A089304: Sum of all digits in all even numbers from 0 to 222...2 (with n 2's).

The programs for A089304, there is no canonical definition to state claims against.
-/

/-! ## A089304.P420872798267109080

`A089343(n)-A089350(n)/2`
-/

namespace A089304.P420872798267109080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089343 n : ℚ) - (A089350 n : ℚ) / 2

end

end A089304.P420872798267109080

/-! ## A089304.P5999324532837902856

`A089314(n)-A089343(n)/3`
-/

namespace A089304.P5999324532837902856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089314 n : ℚ) - (A089343 n : ℚ) / 3

end

end A089304.P5999324532837902856

/-!
# A089306: Smallest prime of the form n + (n+1)+ (n+2)+...+(n+k), or 0 if no such prime exists.

The programs for A089306, the canonical program `A089306.P13013484817223251864` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089306 has offset 1).

The definition of A089306 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089306.P13013484817223251864

`A061397(A191558(n+1)+n+3-C(2, ∑{e}[n+1, #])!)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A089306

/-- `A061397(A191558(n+1)+n+3-C(2, ∑{e}[n+1, #])!)` -/
def P13013484817223251864.Spec : Prop :=
  ∀ n, P13013484817223251864.a n = A089306 (n + 1)

theorem P13013484817223251864.correct : P13013484817223251864.Spec := by
  intro n
  simp only [A089306, Nat.add_sub_cancel]

end A089306

/-! ## A089306.P17919115379605121693

`A061397(A191558(n+1)+n+2-∑{p}[n+1, floor(#/(n+1))])`
-/

namespace A089306.P17919115379605121693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A191558 (n + 1) + ((n + 2 : ℤ) - ∑ p ∈ Nat.primeFactors (f1 n), ⌊(p : ℚ) / (n + 1 : ℚ)⌋)).toNat

end

end A089306.P17919115379605121693

namespace A089306

/-- `A061397(A191558(n+1)+n+2-∑{p}[n+1, floor(#/(n+1))])` -/
def P17919115379605121693.Spec : Prop :=
  ∀ n, P17919115379605121693.a n = A089306 (n + 1)

end A089306

/-! ## A089306.P18273406548754330824

`A061397(A191558(n+1)+ceil(n+2-∑{p}[n+1, #/(n+1)]))`
-/

namespace A089306.P18273406548754330824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A191558 (n + 1) + ⌈(n + 2 : ℚ) - ∑ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / (n + 1 : ℚ)⌉).toNat

end

end A089306.P18273406548754330824

namespace A089306

/-- `A061397(A191558(n+1)+ceil(n+2-∑{p}[n+1, #/(n+1)]))` -/
def P18273406548754330824.Spec : Prop :=
  ∀ n, P18273406548754330824.a n = A089306 (n + 1)

end A089306

/-! ## A089306.P8203551454706353832

`A061397(2*A191558(n+1)+1)+A061397(n+1)`
-/

namespace A089306.P8203551454706353832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (2 * A191558 (n + 1) + 1).toNat + A061397 (n + 1)

end

end A089306.P8203551454706353832

namespace A089306

/-- `A061397(2*A191558(n+1)+1)+A061397(n+1)` -/
def P8203551454706353832.Spec : Prop :=
  ∀ n, P8203551454706353832.a n = A089306 (n + 1)

end A089306

/-! ## A089306.P13745959452619160985

`A061397(A005171(n+1)+A191558(n+1)+n+1)`
-/

namespace A089306.P13745959452619160985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A005171 (n + 1) + (A191558 (n + 1) + (n : ℤ)) + 1).toNat

end

end A089306.P13745959452619160985

namespace A089306

/-- `A061397(A005171(n+1)+A191558(n+1)+n+1)` -/
def P13745959452619160985.Spec : Prop :=
  ∀ n, P13745959452619160985.a n = A089306 (n + 1)

end A089306

/-! ## A089306.P6065279110734745314

`A061397(A191558(n+1)+2-A010051(n+1)+n)`
-/

namespace A089306.P6065279110734745314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A191558 (n + 1) + (2 - A010051 (n + 1) + (n : ℤ))).toNat

end

end A089306.P6065279110734745314

namespace A089306

/-- `A061397(A191558(n+1)+2-A010051(n+1)+n)` -/
def P6065279110734745314.Spec : Prop :=
  ∀ n, P6065279110734745314.a n = A089306 (n + 1)

end A089306

/-! ## A089306.P14871555429307147614

`∏{d}[A040081(n+2), A040081(#+1)]*A038699(n+2)`
-/

namespace A089306.P14871555429307147614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ d ∈ Nat.divisors (f1 n).natAbs, A040081 (d + 1)) * A038699 (n + 2)

end

end A089306.P14871555429307147614

namespace A089306

/-- `∏{d}[A040081(n+2), A040081(#+1)]*A038699(n+2)` -/
def P14871555429307147614.Spec : Prop :=
  ∀ n, P14871555429307147614.a n = A089306 (n + 1)

end A089306

/-! ## A089306.P9334435879617670307

`A075555((n+1)*(n+1-A010051(n+1)))`
-/

namespace A089306.P9334435879617670307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075555 ((n + 1 : ℤ) * ((n + 1 : ℤ) - A010051 (n + 1))).toNat

end

end A089306.P9334435879617670307

namespace A089306

/-- `A075555((n+1)*(n+1-A010051(n+1)))` -/
def P9334435879617670307.Spec : Prop :=
  ∀ n, P9334435879617670307.a n = A089306 (n + 1)

end A089306

/-! ## A089306.P10600041651683353490

`A075555(A002378(n)+1-∑{p}[n+1, C(#, n)]+n)`
-/

namespace A089306.P10600041651683353490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075555 (A002378 n + (1 - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n : ℕ) : ℤ) + (n : ℤ))).toNat

end

end A089306.P10600041651683353490

namespace A089306

/-- `A075555(A002378(n)+1-∑{p}[n+1, C(#, n)]+n)` -/
def P10600041651683353490.Spec : Prop :=
  ∀ n, P10600041651683353490.a n = A089306 (n + 1)

end A089306

/-! ## A089306.P10048146288761842176

`A075555(A191558(n+1)+A002378(n))`
-/

namespace A089306.P10048146288761842176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075555 (A191558 (n + 1) + A002378 n).toNat

end

end A089306.P10048146288761842176

namespace A089306

/-- `A075555(A191558(n+1)+A002378(n))` -/
def P10048146288761842176.Spec : Prop :=
  ∀ n, P10048146288761842176.a n = A089306 (n + 1)

end A089306

/-! ## A089306.P1030319199065552740

`A075555(∑[A005408(n)]-A061397(n+1))`
-/

namespace A089306.P1030319199065552740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075555 (∑ j ∈ Finset.range (n + 1), f1 j - A061397 (n + 1)).toNat

end

end A089306.P1030319199065552740

namespace A089306

/-- `A075555(∑[A005408(n)]-A061397(n+1))` -/
def P1030319199065552740.Spec : Prop :=
  ∀ n, P1030319199065552740.a n = A089306 (n + 1)

end A089306

/-!
# A089307: Smallest prime of the form 1+n*(n+n_2)*...*(n+n_n) with 1<=n_2

The programs for A089307, there is no canonical definition to state claims against.
-/

/-! ## A089307.P5935187353845300115

`A181561(C(A057307(n), A295924(3*n+1)))`
-/

namespace A089307.P5935187353845300115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181561 (Nat.choose (A057307 n).toNat (A295924 (3 * n + 1)).toNat)

end

end A089307.P5935187353845300115

/-!
# A089308: Triangle read by rows, in which n-th row contains n numbers starting with n and in increasing order such that the product of the terms + 1 gives the smallest such prime.

The programs for A089308, there is no canonical definition to state claims against.
-/

/-! ## A089308.P8203124623835906922

`A340260(A057856(n+1))+A051162(n)`
-/

namespace A089308.P8203124623835906922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340260 (A057856 (n + 1)).toNat + A051162 n

end

end A089308.P8203124623835906922

/-! ## A089308.P11489432779342687621

`A139399(A057856(n+1))+A094727(n+1)`
-/

namespace A089308.P11489432779342687621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (A057856 (n + 1)).toNat + A094727 (n + 1)

end

end A089308.P11489432779342687621

/-! ## A089308.P2641213789976102927

`A279328(A225245(A279328(n)))+A051162(n)`
-/

namespace A089308.P2641213789976102927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279328 (A225245 (A279328 n).toNat).toNat + A051162 n

end

end A089308.P2641213789976102927

/-! ## A089308.P7703773171392457099

`A204162(A318391(n+1))+A051162(n)`
-/

namespace A089308.P7703773171392457099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204162 (A318391 (n + 1)).toNat + A051162 n

end

end A089308.P7703773171392457099

/-! ## A089308.P10788042907062470376

`A003056(A236433(n+1)+A141468(n+1))`
-/

namespace A089308.P10788042907062470376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A236433 (n + 1) + A141468 (n + 1)).toNat

end

end A089308.P10788042907062470376

/-!
# A089309: Write n in binary; a(n) = length of the rightmost run of 1's.

The programs for A089309, the canonical program `A089309.P10120023621371103171` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089309 has offset 0).

The definition of A089309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089309.P10120023621371103171

`A000120(and(n, xor(n, -n)-n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A089309

/-- `A000120(and(n, xor(n, -n)-n))` -/
def P10120023621371103171.Spec : Prop :=
  ∀ n, P10120023621371103171.a n = A089309 n

theorem P10120023621371103171.correct : P10120023621371103171.Spec := by
  intro n
  simp only [A089309]

end A089309

/-! ## A089309.P13163406077527941499

`A002487(and(n, xor(n, -n)-n))`
-/

namespace A089309.P13163406077527941499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Int.land (n : ℤ) (Int.xor (n : ℤ) (-(n : ℤ)) - (n : ℤ))).toNat

end

end A089309.P13163406077527941499

namespace A089309

/-- `A002487(and(n, xor(n, -n)-n))` -/
def P13163406077527941499.Spec : Prop :=
  ∀ n, P13163406077527941499.a n = A089309 n

end A089309

/-! ## A089309.P17287054741235914969

`A090996(A030101(n))`
-/

namespace A089309.P17287054741235914969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A030101 n).toNat

end

end A089309.P17287054741235914969

namespace A089309

/-- `A090996(A030101(n))` -/
def P17287054741235914969.Spec : Prop :=
  ∀ n, P17287054741235914969.a n = A089309 n

end A089309

/-! ## A089309.P2044134527647397082

`A090996(A057889(n))`
-/

namespace A089309.P2044134527647397082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A057889 n).toNat

end

end A089309.P2044134527647397082

namespace A089309

/-- `A090996(A057889(n))` -/
def P2044134527647397082.Spec : Prop :=
  ∀ n, P2044134527647397082.a n = A089309 n

end A089309

/-! ## A089309.P18220967324378854527

`A090996(A217589(n))`
-/

namespace A089309.P18220967324378854527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A217589 n).toNat

end

end A089309.P18220967324378854527

namespace A089309

/-- `A090996(A217589(n))` -/
def P18220967324378854527.Spec : Prop :=
  ∀ n, P18220967324378854527.a n = A089309 n

end A089309

/-! ## A089309.P9592118730075174308

`A090996(A366389(n))`
-/

namespace A089309.P9592118730075174308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A366389 n).toNat

end

end A089309.P9592118730075174308

namespace A089309

/-- `A090996(A366389(n))` -/
def P9592118730075174308.Spec : Prop :=
  ∀ n, P9592118730075174308.a n = A089309 n

end A089309

/-! ## A089309.P14694792578503016754

`A090996(A055944(n)-n)`
-/

namespace A089309.P14694792578503016754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A055944 n - (n : ℤ)).toNat

end

end A089309.P14694792578503016754

namespace A089309

/-- `A090996(A055944(n)-n)` -/
def P14694792578503016754.Spec : Prop :=
  ∀ n, P14694792578503016754.a n = A089309 n

end A089309

/-! ## A089309.P14378486443319228695

`A007814(2*n+1-A129527(n))`
-/

namespace A089309.P14378486443319228695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 ((2 * n + 1 : ℤ) - A129527 n).toNat

end

end A089309.P14378486443319228695

namespace A089309

/-- `A007814(2*n+1-A129527(n))` -/
def P14378486443319228695.Spec : Prop :=
  ∀ n, P14378486443319228695.a n = A089309 n

end A089309

/-! ## A089309.P9440474483040627510

`A337821(A028310(n))+A057427(n)`
-/

namespace A089309.P9440474483040627510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337821 (A028310 n).toNat + A057427 n

end

end A089309.P9440474483040627510

namespace A089309

/-- `A337821(A028310(n))+A057427(n)` -/
def P9440474483040627510.Spec : Prop :=
  ∀ n, P9440474483040627510.a n = A089309 n

end A089309

/-! ## A089309.P7807952640481604489

`A090996(A004086(A081432(n)))`
-/

namespace A089309.P7807952640481604489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A004086 (A081432 n).toNat).toNat

end

end A089309.P7807952640481604489

namespace A089309

/-- `A090996(A004086(A081432(n)))` -/
def P7807952640481604489.Spec : Prop :=
  ∀ n, P7807952640481604489.a n = A089309 n

end A089309

/-! ## A089309.P4567912026523010349

`A000120(A342410(n))`
-/

namespace A089309.P4567912026523010349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A342410 n).toNat

end

end A089309.P4567912026523010349

namespace A089309

/-- `A000120(A342410(n))` -/
def P4567912026523010349.Spec : Prop :=
  ∀ n, P4567912026523010349.a n = A089309 n

end A089309

/-! ## A089309.P6943269979928200782

`A090996(A322464(n))`
-/

namespace A089309.P6943269979928200782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A322464 n).toNat

end

end A089309.P6943269979928200782

namespace A089309

/-- `A090996(A322464(n))` -/
def P6943269979928200782.Spec : Prop :=
  ∀ n, P6943269979928200782.a n = A089309 n

end A089309

/-! ## A089309.P10581616376603353216

`A090996(A342410(n)+A342410(n))`
-/

namespace A089309.P10581616376603353216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A342410 n + A342410 n).toNat

end

end A089309.P10581616376603353216

namespace A089309

/-- `A090996(A342410(n)+A342410(n))` -/
def P10581616376603353216.Spec : Prop :=
  ∀ n, P10581616376603353216.a n = A089309 n

end A089309

/-! ## A089309.P3088071870776340759

`A302045(A207801(n+1))`
-/

namespace A089309.P3088071870776340759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302045 (A207801 (n + 1)).toNat

end

end A089309.P3088071870776340759

namespace A089309

/-- `A302045(A207801(n+1))` -/
def P3088071870776340759.Spec : Prop :=
  ∀ n, P3088071870776340759.a n = A089309 n

end A089309

/-! ## A089309.P14412229348110720336

`A088705(n)-A088705(2*A140472(n))`
-/

namespace A089309.P14412229348110720336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n - A088705 (2 * A140472 n).toNat

end

end A089309.P14412229348110720336

namespace A089309

/-- `A088705(n)-A088705(2*A140472(n))` -/
def P14412229348110720336.Spec : Prop :=
  ∀ n, P14412229348110720336.a n = A089309 n

end A089309

/-! ## A089309.P3213730215678569399

`A302045(A252753(n))`
-/

namespace A089309.P3213730215678569399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302045 (A252753 n).toNat

end

end A089309.P3213730215678569399

namespace A089309

/-- `A302045(A252753(n))` -/
def P3213730215678569399.Spec : Prop :=
  ∀ n, P3213730215678569399.a n = A089309 n

end A089309

/-! ## A089309.P11332835423399223589

`val(A163755(2*n), 3)`
-/

namespace A089309.P11332835423399223589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A163755 (2 * n)).toNat 3

end

end A089309.P11332835423399223589

namespace A089309

/-- `val(A163755(2*n), 3)` -/
def P11332835423399223589.Spec : Prop :=
  ∀ n, (P11332835423399223589.a n : ℤ) = A089309 n

end A089309

/-! ## A089309.P12069706259318309726

`A090996(A342410(2*n))`
-/

namespace A089309.P12069706259318309726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A342410 (2 * n)).toNat

end

end A089309.P12069706259318309726

namespace A089309

/-- `A090996(A342410(2*n))` -/
def P12069706259318309726.Spec : Prop :=
  ∀ n, P12069706259318309726.a n = A089309 n

end A089309

/-! ## A089309.P7558958708896322162

`A285097(xor(n, 2*n))`
-/

namespace A089309.P7558958708896322162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (Nat.xor n (2 * n))

end

end A089309.P7558958708896322162

namespace A089309

/-- `A285097(xor(n, 2*n))` -/
def P7558958708896322162.Spec : Prop :=
  ∀ n, P7558958708896322162.a n = A089309 n

end A089309

/-! ## A089309.P6711061959836449491

`A285097(A048724(n))`
-/

namespace A089309.P6711061959836449491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (A048724 n).toNat

end

end A089309.P6711061959836449491

namespace A089309

/-- `A285097(A048724(n))` -/
def P6711061959836449491.Spec : Prop :=
  ∀ n, P6711061959836449491.a n = A089309 n

end A089309

/-!
# A089310: Write n in binary; a(n) = number of 1's in second block of 1's from right.

The programs for A089310, the canonical program `A089310.P13975828915729620657` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089310 has offset 0).

The definition of A089310 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089310.P13975828915729620657

`A089309(and(n, and(n, -n)+n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A089310

/-- `A089309(and(n, and(n, -n)+n))` -/
def P13975828915729620657.Spec : Prop :=
  ∀ n, P13975828915729620657.a n = A089310 n

theorem P13975828915729620657.correct : P13975828915729620657.Spec := by
  intro n
  simp only [A089310]

end A089310

/-! ## A089310.P4333231980078223608

`A089309(n-and(n, xor(n, -n)-n))`
-/

namespace A089310.P4333231980078223608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 ((n : ℤ) - Int.land (n : ℤ) (Int.xor (n : ℤ) (-(n : ℤ)) - (n : ℤ))).toNat

end

end A089310.P4333231980078223608

namespace A089310

/-- `A089309(n-and(n, xor(n, -n)-n))` -/
def P4333231980078223608.Spec : Prop :=
  ∀ n, P4333231980078223608.a n = A089310 n

end A089310

/-! ## A089310.P17140062433316320202

`A000120(A089313(n))`
-/

namespace A089310.P17140062433316320202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A089313 n).toNat

end

end A089310.P17140062433316320202

namespace A089310

/-- `A000120(A089313(n))` -/
def P17140062433316320202.Spec : Prop :=
  ∀ n, P17140062433316320202.a n = A089310 n

end A089310

/-! ## A089310.P17876223963859427216

`A000523(A089313(n)+1)`
-/

namespace A089310.P17876223963859427216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A089313 n + 1).toNat

end

end A089310.P17876223963859427216

namespace A089310

/-- `A000523(A089313(n)+1)` -/
def P17876223963859427216.Spec : Prop :=
  ∀ n, P17876223963859427216.a n = A089310 n

end A089310

/-! ## A089310.P10393491501697625271

`A001222(A089313(n)+1)`
-/

namespace A089310.P10393491501697625271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A089313 n + 1).toNat

end

end A089310.P10393491501697625271

namespace A089310

/-- `A001222(A089313(n)+1)` -/
def P10393491501697625271.Spec : Prop :=
  ∀ n, P10393491501697625271.a n = A089310 n

end A089310

/-! ## A089310.P11080653992079105474

`A007814(A089313(n)+1)`
-/

namespace A089310.P11080653992079105474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A089313 n + 1).toNat

end

end A089310.P11080653992079105474

namespace A089310

/-- `A007814(A089313(n)+1)` -/
def P11080653992079105474.Spec : Prop :=
  ∀ n, P11080653992079105474.a n = A089310 n

end A089310

/-! ## A089310.P5769288394810230149

`A087117(A089313(n)+1)`
-/

namespace A089310.P5769288394810230149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A089313 n + 1).toNat

end

end A089310.P5769288394810230149

namespace A089310

/-- `A087117(A089313(n)+1)` -/
def P5769288394810230149.Spec : Prop :=
  ∀ n, P5769288394810230149.a n = A089310 n

end A089310

/-! ## A089310.P2129244046573441494

`A090003(2*A089313(n))`
-/

namespace A089310.P2129244046573441494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090003 (2 * A089313 n).toNat

end

end A089310.P2129244046573441494

namespace A089310

/-- `A090003(2*A089313(n))` -/
def P2129244046573441494.Spec : Prop :=
  ∀ n, P2129244046573441494.a n = A089310 n

end A089310

/-! ## A089310.P12989994049133176993

`A279210(A030101(n))`
-/

namespace A089310.P12989994049133176993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279210 (A030101 n).toNat

end

end A089310.P12989994049133176993

namespace A089310

/-- `A279210(A030101(n))` -/
def P12989994049133176993.Spec : Prop :=
  ∀ n, P12989994049133176993.a n = A089310 n

end A089310

/-! ## A089310.P15037732123571538017

`A279210(A057889(n))`
-/

namespace A089310.P15037732123571538017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279210 (A057889 n).toNat

end

end A089310.P15037732123571538017

namespace A089310

/-- `A279210(A057889(n))` -/
def P15037732123571538017.Spec : Prop :=
  ∀ n, P15037732123571538017.a n = A089310 n

end A089310

/-! ## A089310.P7311118558692585237

`A279210(A366389(n))`
-/

namespace A089310.P7311118558692585237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279210 (A366389 n).toNat

end

end A089310.P7311118558692585237

namespace A089310

/-- `A279210(A366389(n))` -/
def P7311118558692585237.Spec : Prop :=
  ∀ n, P7311118558692585237.a n = A089310 n

end A089310

/-! ## A089310.P10883067735090040942

`A279210(A322464(n))`
-/

namespace A089310.P10883067735090040942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279210 (A322464 n).toNat

end

end A089310.P10883067735090040942

namespace A089310

/-- `A279210(A322464(n))` -/
def P10883067735090040942.Spec : Prop :=
  ∀ n, P10883067735090040942.a n = A089310 n

end A089310

/-! ## A089310.P18240365352922574554

`A089309(n-A342410(n))`
-/

namespace A089310.P18240365352922574554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 ((n : ℤ) - A342410 n).toNat

end

end A089310.P18240365352922574554

namespace A089310

/-- `A089309(n-A342410(n))` -/
def P18240365352922574554.Spec : Prop :=
  ∀ n, P18240365352922574554.a n = A089310 n

end A089310

/-! ## A089310.P8536745965738277141

`val(A163755(2*n), 7)`
-/

namespace A089310.P8536745965738277141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A163755 (2 * n)).toNat 7

end

end A089310.P8536745965738277141

namespace A089310

/-- `val(A163755(2*n), 7)` -/
def P8536745965738277141.Spec : Prop :=
  ∀ n, (P8536745965738277141.a n : ℤ) = A089310 n

end A089310

/-! ## A089310.P3807944588208512886

`A089311(A166404(n))`
-/

namespace A089310.P3807944588208512886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089311 (A166404 n).toNat

end

end A089310.P3807944588208512886

namespace A089310

/-- `A089311(A166404(n))` -/
def P3807944588208512886.Spec : Prop :=
  ∀ n, P3807944588208512886.a n = A089310 n

end A089310

/-! ## A089310.P14189130037379737319

`A089311(A336962(n))`
-/

namespace A089310.P14189130037379737319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089311 (A336962 n).toNat

end

end A089310.P14189130037379737319

namespace A089310

/-- `A089311(A336962(n))` -/
def P14189130037379737319.Spec : Prop :=
  ∀ n, P14189130037379737319.a n = A089310 n

end A089310

/-! ## A089310.P12324477693846002323

`A351563(A005940(n+1))`
-/

namespace A089310.P12324477693846002323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351563 (A005940 (n + 1)).toNat

end

end A089310.P12324477693846002323

namespace A089310

/-- `A351563(A005940(n+1))` -/
def P12324477693846002323.Spec : Prop :=
  ∀ n, P12324477693846002323.a n = A089310 n

end A089310

/-! ## A089310.P13542973118964439545

`A279210(A160638(n))`
-/

namespace A089310.P13542973118964439545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279210 (A160638 n).toNat

end

end A089310.P13542973118964439545

namespace A089310

/-- `A279210(A160638(n))` -/
def P13542973118964439545.Spec : Prop :=
  ∀ n, P13542973118964439545.a n = A089310 n

end A089310

/-! ## A089310.P5738715768483234986

`A351563(A374717(n+1))`
-/

namespace A089310.P5738715768483234986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351563 (A374717 (n + 1)).toNat

end

end A089310.P5738715768483234986

namespace A089310

/-- `A351563(A374717(n+1))` -/
def P5738715768483234986.Spec : Prop :=
  ∀ n, P5738715768483234986.a n = A089310 n

end A089310

/-!
# A089311: Write n in binary; a(n) = number of 0's in rightmost block of zeros, after dropping any trailing 0's.

The programs for A089311, the canonical program `A089311.P16370938375623616626` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089311 has offset 0).

The definition of A089311 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089311.P5590893557343511652

`val(A163755(2*n), 5)`
-/

namespace A089311.P5590893557343511652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A163755 (2 * n)).toNat 5

end

end A089311.P5590893557343511652

namespace A089311

/-- `val(A163755(2*n), 5)` -/
def P5590893557343511652.Spec : Prop :=
  ∀ n, (P5590893557343511652.a n : ℤ) = A089311 n

end A089311

/-! ## A089311.P6145208083426446516

`A089310(A166404(n))`
-/

namespace A089311.P6145208083426446516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089310 (A166404 n).toNat

end

end A089311.P6145208083426446516

namespace A089311

/-- `A089310(A166404(n))` -/
def P6145208083426446516.Spec : Prop :=
  ∀ n, P6145208083426446516.a n = A089311 n

end A089311

/-! ## A089311.P16370938375623616626

`A089310(A261693(n))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A089311

/-- `A089310(A261693(n))` -/
def P16370938375623616626.Spec : Prop :=
  ∀ n, P16370938375623616626.a n = A089311 n

theorem P16370938375623616626.correct : P16370938375623616626.Spec := by
  intro n
  simp only [A089311]

end A089311

/-! ## A089311.P3223527646951999093

`A285097(A140472(n))`
-/

namespace A089311.P3223527646951999093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (A140472 n).toNat

end

end A089311.P3223527646951999093

namespace A089311

/-- `A285097(A140472(n))` -/
def P3223527646951999093.Spec : Prop :=
  ∀ n, P3223527646951999093.a n = A089311 n

end A089311

/-! ## A089311.P17761131206365553492

`A089310(A336963(n))`
-/

namespace A089311.P17761131206365553492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089310 (A336963 n).toNat

end

end A089311.P17761131206365553492

namespace A089311

/-- `A089310(A336963(n))` -/
def P17761131206365553492.Spec : Prop :=
  ∀ n, P17761131206365553492.a n = A089311 n

end A089311

/-! ## A089311.P1260056115199457637

`A285097(A285326(n))`
-/

namespace A089311.P1260056115199457637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (A285326 n).toNat

end

end A089311.P1260056115199457637

namespace A089311

/-- `A285097(A285326(n))` -/
def P1260056115199457637.Spec : Prop :=
  ∀ n, P1260056115199457637.a n = A089311 n

end A089311

/-! ## A089311.P14178365558648512531

`A285097(A285327(n)+n)`
-/

namespace A089311.P14178365558648512531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (A285327 n + (n : ℤ)).toNat

end

end A089311.P14178365558648512531

namespace A089311

/-- `A285097(A285327(n)+n)` -/
def P14178365558648512531.Spec : Prop :=
  ∀ n, P14178365558648512531.a n = A089311 n

end A089311

/-! ## A089311.P11742726267190220751

`A279209(2*A030101(n)+1)`
-/

namespace A089311.P11742726267190220751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279209 (2 * A030101 n + 1).toNat

end

end A089311.P11742726267190220751

namespace A089311

/-- `A279209(2*A030101(n)+1)` -/
def P11742726267190220751.Spec : Prop :=
  ∀ n, P11742726267190220751.a n = A089311 n

end A089311

/-! ## A089311.P4303625387761865548

`A279209(A030101(n))%A057335(n)`
-/

namespace A089311.P4303625387761865548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279209 (A030101 n).toNat) (A057335 n)

end

end A089311.P4303625387761865548

namespace A089311

/-- `A279209(A030101(n))%A057335(n)` -/
def P4303625387761865548.Spec : Prop :=
  ∀ n, P4303625387761865548.a n = A089311 n

end A089311

/-! ## A089311.P14421786825187429806

`A279209(A030101(n)+A030101(n)+1)`
-/

namespace A089311.P14421786825187429806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279209 (A030101 n + (A030101 n + 1)).toNat

end

end A089311.P14421786825187429806

namespace A089311

/-- `A279209(A030101(n)+A030101(n)+1)` -/
def P14421786825187429806.Spec : Prop :=
  ∀ n, P14421786825187429806.a n = A089311 n

end A089311

/-!
# A089312: Write n in binary; a(n) = number represented by rightmost block of 1's.

The programs for A089312, the canonical program `A089312.P13072524501959530013` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089312 has offset 0).

The definition of A089312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089312.P13072524501959530013

`a(∑[n]%n)+and(n, -(n+2))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089312

/-- `a(∑[n]%n)+and(n, -(n+2))` -/
def P13072524501959530013.Spec : Prop :=
  ∀ n, P13072524501959530013.a n = A089312 n

theorem P13072524501959530013.correct : P13072524501959530013.Spec := by
  intro n
  simp only [A089312]

end A089312

/-! ## A089312.P5756673367233748494

`a(n-gcd(n, ∑[n]))+and(n, -(n+2))` with `a(0)=0`
-/

namespace A089312.P5756673367233748494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j)) + Int.land (n : ℤ) (-(n + 2 : ℤ))

end

end A089312.P5756673367233748494

namespace A089312

/-- `a(n-gcd(n, ∑[n]))+and(n, -(n+2))` -/
def P5756673367233748494.Spec : Prop :=
  ∀ n, P5756673367233748494.a n = A089312 n

end A089312

/-! ## A089312.P10182502361368226110

`A089313(4*n+1)`
-/

namespace A089312.P10182502361368226110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089313 (4 * n + 1)

end

end A089312.P10182502361368226110

namespace A089312

/-- `A089313(4*n+1)` -/
def P10182502361368226110.Spec : Prop :=
  ∀ n, P10182502361368226110.a n = A089312 n

end A089312

/-! ## A089312.P8989571955667144265

`2^A089309(n)-1`
-/

namespace A089312.P8989571955667144265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A089309 n : ℤ) - 1

end

end A089312.P8989571955667144265

namespace A089312

/-- `2^A089309(n)-1` -/
def P8989571955667144265.Spec : Prop :=
  ∀ n, P8989571955667144265.a n = (A089312 n : ℚ)

end A089312

/-! ## A089312.P10893626353158219571

`A135481(n/gcd(64, n))`
-/

namespace A089312.P10893626353158219571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 (SequenceMachineLib.roundAway ((n : ℚ) / (Nat.gcd 64 n : ℚ))).toNat

end

end A089312.P10893626353158219571

namespace A089312

/-- `A135481(n/gcd(64, n))` -/
def P10893626353158219571.Spec : Prop :=
  ∀ n, P10893626353158219571.a n = A089312 n

end A089312

/-! ## A089312.P13902908341153236529

`or(a(∑[n]%n), A135481(n))` with `a(0)=0`
-/

namespace A089312.P13902908341153236529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (a ((∑ j ∈ Finset.range (n + 1), f1 j) % n)) (A135481 n)

end

end A089312.P13902908341153236529

namespace A089312

/-- `or(a(∑[n]%n), A135481(n))` -/
def P13902908341153236529.Spec : Prop :=
  ∀ n, P13902908341153236529.a n = A089312 n

end A089312

/-! ## A089312.P9418677287229085351

`A038573(and(n, xor(n, -n)-n))`
-/

namespace A089312.P9418677287229085351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (Int.land (n : ℤ) (Int.xor (n : ℤ) (-(n : ℤ)) - (n : ℤ))).toNat

end

end A089312.P9418677287229085351

namespace A089312

/-- `A038573(and(n, xor(n, -n)-n))` -/
def P9418677287229085351.Spec : Prop :=
  ∀ n, P9418677287229085351.a n = A089312 n

end A089312

/-! ## A089312.P10263486867584454697

`A325401(and(n, xor(n, -n)-n))`
-/

namespace A089312.P10263486867584454697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.land (n : ℤ) (Int.xor (n : ℤ) (-(n : ℤ)) - (n : ℤ))).toNat

end

end A089312.P10263486867584454697

namespace A089312

/-- `A325401(and(n, xor(n, -n)-n))` -/
def P10263486867584454697.Spec : Prop :=
  ∀ n, P10263486867584454697.a n = A089312 n

end A089312

/-! ## A089312.P8685041379958038997

`A330717(and(n, xor(n, -n)-n))`
-/

namespace A089312.P8685041379958038997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330717 (Int.land (n : ℤ) (Int.xor (n : ℤ) (-(n : ℤ)) - (n : ℤ))).toNat

end

end A089312.P8685041379958038997

namespace A089312

/-- `A330717(and(n, xor(n, -n)-n))` -/
def P8685041379958038997.Spec : Prop :=
  ∀ n, P8685041379958038997.a n = A089312 n

end A089312

/-! ## A089312.P15681301871771410070

`A278222(and(n, xor(n, -n)-n))-1`
-/

namespace A089312.P15681301871771410070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (Int.land (n : ℤ) (Int.xor (n : ℤ) (-(n : ℤ)) - (n : ℤ))).toNat - 1

end

end A089312.P15681301871771410070

namespace A089312

/-- `A278222(and(n, xor(n, -n)-n))-1` -/
def P15681301871771410070.Spec : Prop :=
  ∀ n, P15681301871771410070.a n = A089312 n

end A089312

/-! ## A089312.P2532589213264045896

`A000225(A089309(n))`
-/

namespace A089312.P2532589213264045896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A089309 n).toNat

end

end A089312.P2532589213264045896

namespace A089312

/-- `A000225(A089309(n))` -/
def P2532589213264045896.Spec : Prop :=
  ∀ n, P2532589213264045896.a n = A089312 n

end A089312

/-! ## A089312.P3959244175118723563

`A030101(A342410(n))`
-/

namespace A089312.P3959244175118723563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A342410 n).toNat

end

end A089312.P3959244175118723563

namespace A089312

/-- `A030101(A342410(n))` -/
def P3959244175118723563.Spec : Prop :=
  ∀ n, P3959244175118723563.a n = A089312 n

end A089312

/-! ## A089312.P10833095581099263805

`A135481(sqrt(A191871(n)))`
-/

namespace A089312.P10833095581099263805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 (SequenceMachineLib.roundAway (Real.sqrt (A191871 n : ℝ))).toNat

end

end A089312.P10833095581099263805

namespace A089312

/-- `A135481(sqrt(A191871(n)))` -/
def P10833095581099263805.Spec : Prop :=
  ∀ n, P10833095581099263805.a n = A089312 n

end A089312

/-! ## A089312.P17518288525581228642

`A116082(A089309(2*n))`
-/

namespace A089312.P17518288525581228642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116082 (A089309 (2 * n)).toNat

end

end A089312.P17518288525581228642

namespace A089312

/-- `A116082(A089309(2*n))` -/
def P17518288525581228642.Spec : Prop :=
  ∀ n, P17518288525581228642.a n = A089312 n

end A089312

/-! ## A089312.P17471947974923170740

`A001065(2^A089309(n))`
-/

namespace A089312.P17471947974923170740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A089309 n : ℤ))).toNat

end

end A089312.P17471947974923170740

namespace A089312

/-- `A001065(2^A089309(n))` -/
def P17471947974923170740.Spec : Prop :=
  ∀ n, P17471947974923170740.a n = A089312 n

end A089312

/-! ## A089312.P16988145390870075308

`A004483(2^A089309(n))`
-/

namespace A089312.P16988145390870075308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A089309 n : ℤ))).toNat

end

end A089312.P16988145390870075308

namespace A089312

/-- `A004483(2^A089309(n))` -/
def P16988145390870075308.Spec : Prop :=
  ∀ n, P16988145390870075308.a n = A089312 n

end A089312

/-! ## A089312.P5612937734942499747

`A011371(2^A089309(n))`
-/

namespace A089312.P5612937734942499747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A089309 n : ℤ))).toNat

end

end A089312.P5612937734942499747

namespace A089312

/-- `A011371(2^A089309(n))` -/
def P5612937734942499747.Spec : Prop :=
  ∀ n, P5612937734942499747.a n = A089312 n

end A089312

/-! ## A089312.P15985604372899365180

`A033619(2^A089309(n))`
-/

namespace A089312.P15985604372899365180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A089309 n : ℤ))).toNat

end

end A089312.P15985604372899365180

namespace A089312

/-- `A033619(2^A089309(n))` -/
def P15985604372899365180.Spec : Prop :=
  ∀ n, P15985604372899365180.a n = A089312 n

end A089312

/-! ## A089312.P66718910764021185

`A035327(2^A089309(n))`
-/

namespace A089312.P66718910764021185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A089309 n : ℤ))).toNat

end

end A089312.P66718910764021185

namespace A089312

/-- `A035327(2^A089309(n))` -/
def P66718910764021185.Spec : Prop :=
  ∀ n, P66718910764021185.a n = A089312 n

end A089312

/-! ## A089312.P13535845771344850486

`A016116(2*A089309(n))-1`
-/

namespace A089312.P13535845771344850486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * A089309 n).toNat - 1

end

end A089312.P13535845771344850486

namespace A089312

/-- `A016116(2*A089309(n))-1` -/
def P13535845771344850486.Spec : Prop :=
  ∀ n, P13535845771344850486.a n = A089312 n

end A089312

/-!
# A089313: Write n in binary; a(n) = number represented by second block of 1's from the right.

The programs for A089313, the canonical program `A089313.P1141171356323381310` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089313 has offset 0).

The definition of A089313 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089310, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A089313.P1141171356323381310

`2^A089310(n)-1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A089313

/-- `2^A089310(n)-1` -/
def P1141171356323381310.Spec : Prop :=
  ∀ n, P1141171356323381310.a n = (A089313 n : ℚ)

end A089313

/-! ## A089313.P16520021760724887265

`A000225(A089310(n))`
-/

namespace A089313.P16520021760724887265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A089310 n).toNat

end

end A089313.P16520021760724887265

namespace A089313

/-- `A000225(A089310(n))` -/
def P16520021760724887265.Spec : Prop :=
  ∀ n, P16520021760724887265.a n = A089313 n

end A089313

/-! ## A089313.P329006164150012128

`A001065(2^A089310(n))`
-/

namespace A089313.P329006164150012128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A089310 n : ℤ))).toNat

end

end A089313.P329006164150012128

namespace A089313

/-- `A001065(2^A089310(n))` -/
def P329006164150012128.Spec : Prop :=
  ∀ n, P329006164150012128.a n = A089313 n

end A089313

/-! ## A089313.P14203096173288589585

`A055010(n)%(2^A089310(n))`
-/

namespace A089313.P14203096173288589585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055010 n) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A089310 n : ℤ)))

end

end A089313.P14203096173288589585

namespace A089313

/-- `A055010(n)%(2^A089310(n))` -/
def P14203096173288589585.Spec : Prop :=
  ∀ n, P14203096173288589585.a n = A089313 n

end A089313

/-! ## A089313.P8375354640550371675

`record[A006530(64*n+63)]%(2^A089310(n))`
-/

namespace A089313.P8375354640550371675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (64 * n + 63)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A089310 n : ℤ)))

end

end A089313.P8375354640550371675

namespace A089313

/-- `record[A006530(64*n+63)]%(2^A089310(n))` -/
def P8375354640550371675.Spec : Prop :=
  ∀ n, P8375354640550371675.a n = A089313 n

end A089313

/-! ## A089313.P15554070387566335569

`A089312(n-A342410(n))`
-/

namespace A089313.P15554070387566335569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089312 ((n : ℤ) - A342410 n).toNat

end

end A089313.P15554070387566335569

namespace A089313

/-- `A089312(n-A342410(n))` -/
def P15554070387566335569.Spec : Prop :=
  ∀ n, P15554070387566335569.a n = A089313 n

end A089313

/-!
# A089314: Sum of all digits in all even numbers from 0 to 444...4 (with n 4's).

The programs for A089314, the canonical program `A089314.P11258980856673060156` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089314 has offset 0).

The definition of A089314 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089314.P11258980856673060156

`(9*(9*10^n+28)*n-64*(10^n-1))/81`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089314

/-- `(9*(9*10^n+28)*n-64*(10^n-1))/81` -/
def P11258980856673060156.Spec : Prop :=
  ∀ n, P11258980856673060156.a n = (A089314 n : ℚ)

end A089314

/-! ## A089314.P16476176482106845451

`A089304(n)+A089343(n)/3`
-/

namespace A089314.P16476176482106845451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089304 n : ℚ) + (A089343 n : ℚ) / 3

end

end A089314.P16476176482106845451

namespace A089314

/-- `A089304(n)+A089343(n)/3` -/
def P16476176482106845451.Spec : Prop :=
  ∀ n, P16476176482106845451.a n = (A089314 n : ℚ)

end A089314

/-! ## A089314.P13191210289897802062

`A089343(n)/3+A089343(n)-A089350(n)/2`
-/

namespace A089314.P13191210289897802062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089343 n : ℚ) / 3 + ((A089343 n : ℚ) - (A089350 n : ℚ) / 2)

end

end A089314.P13191210289897802062

namespace A089314

/-- `A089343(n)/3+A089343(n)-A089350(n)/2` -/
def P13191210289897802062.Spec : Prop :=
  ∀ n, P13191210289897802062.a n = (A089314 n : ℚ)

end A089314

/-!
# A089316: Prime worms [successive digit differences with absolute value of 2].

The programs for A089316, there is no canonical definition to state claims against.
-/

/-! ## A089316.P1126010775295929089

`∩[A089360(n+1), A048399(n+2)]`
-/

namespace A089316.P1126010775295929089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048399 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089316.P1126010775295929089

/-!
# A089320: a(1) = 1, a(n) = smallest multiple of n using nonzero digits beginning with the digit reversal of a(n-1), if n is not == 0 (mod 10), else a(10^r*k) =10^r*{digit Reversal of a(10^r*k-1)}.

The programs for A089320, there is no canonical definition to state claims against.
-/

/-! ## A089320.P8686640780756300666

`(n+1)*A089321(n+1)`
-/

namespace A089320.P8686640780756300666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A089321 (n + 1)

end

end A089320.P8686640780756300666

/-! ## A089320.P15778188252261821132

`A089321(n+1)*A348553(n)`
-/

namespace A089320.P15778188252261821132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089321 (n + 1) * A348553 n

end

end A089320.P15778188252261821132

/-! ## A089320.P3588662919303680199

`A089321(n+1)/(n+1)^A008683(A005382(n+1))`
-/

namespace A089320.P3588662919303680199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089321 (n + 1) : ℚ) / (n + 1 : ℚ) ^ (A008683 (A005382 (n + 1)).toNat : ℤ)

end

end A089320.P3588662919303680199

/-!
# A089321: A089320(n)/n.

The programs for A089321, there is no canonical definition to state claims against.
-/

/-! ## A089321.P18071542658968837629

`A089320(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A089321.P18071542658968837629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089320 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A089321.P18071542658968837629

/-! ## A089321.P7902017274098009940

`A007913((n+1)*A089320(n+1))`
-/

namespace A089321.P7902017274098009940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((n + 1 : ℤ) * A089320 (n + 1)).toNat

end

end A089321.P7902017274098009940

/-!
# A089323: Smallest k such that concatenation of r*k and 1 is a prime for all r = 1 to n, or smallest k such that 10*r*k +1 is a prime for all r = 1 to n.

The programs for A089323, there is no canonical definition to state claims against.
-/

/-! ## A089323.P8873219690333831418

`A100986(char[6]+1+n)`
-/

namespace A089323.P8873219690333831418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100986 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)

end

end A089323.P8873219690333831418

/-! ## A089323.P7883156477784643342

`record[A100986(A116482(n))]`
-/

namespace A089323.P7883156477784643342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100986 (A116482 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089323.P7883156477784643342

/-! ## A089323.P18310265756787427401

`record[A100986(A219347(n))]`
-/

namespace A089323.P18310265756787427401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100986 (A219347 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089323.P18310265756787427401

/-!
# A089324: Number of lattice paths from (0,0) to the line x+y=n that use the step set {(0,1),(1,0),(2,0),(3,0),...} and never pass below y=x.

The programs for A089324, there is no canonical definition to state claims against.
-/

/-! ## A089324.P11427563114206804324

`A106580(∑[n]+n)`
-/

namespace A089324.P11427563114206804324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106580 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A089324.P11427563114206804324

/-! ## A089324.P11141759965169121805

`A106580(A000217(n)+n)^ceil(sin(n)²)`
-/

namespace A089324.P11141759965169121805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106580 (A000217 n + (n : ℤ)).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A089324.P11141759965169121805

/-! ## A089324.P5243432296281622677

`A106580(A000217(n)+n)+A025444(n)`
-/

namespace A089324.P5243432296281622677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106580 (A000217 n + (n : ℤ)).toNat + A025444 n

end

end A089324.P5243432296281622677

/-! ## A089324.P17201514916010892069

`A106580(A000217(n)+n)%A042352(n)`
-/

namespace A089324.P17201514916010892069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106580 (A000217 n + (n : ℤ)).toNat) (A042352 n)

end

end A089324.P17201514916010892069

/-! ## A089324.P16713832948047216569

`A106580(A000217(n)+n)+A000035(2*n)`
-/

namespace A089324.P16713832948047216569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106580 (A000217 n + (n : ℤ)).toNat + A000035 (2 * n)

end

end A089324.P16713832948047216569

/-! ## A089324.P4220110602872010519

`abs(A153881(n+1))*A106580(A000217(n)+n)`
-/

namespace A089324.P4220110602872010519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A153881 (n + 1)| * A106580 (A000217 n + (n : ℤ)).toNat

end

end A089324.P4220110602872010519

/-! ## A089324.P15039462452009664200

`A106580(A000217(n)+n)^A007318(C(2, n))^n`
-/

namespace A089324.P15039462452009664200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106580 (A000217 n + (n : ℤ)).toNat : ℚ) ^ (A007318 (Nat.choose 2 n) ^ n : ℤ)

end

end A089324.P15039462452009664200

/-! ## A089324.P635954518682886729

`A106580(A000217(n)+n)+A008683(A001248(n+1))`
-/

namespace A089324.P635954518682886729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106580 (A000217 n + (n : ℤ)).toNat + A008683 (A001248 (n + 1)).toNat

end

end A089324.P635954518682886729

/-! ## A089324.P7068546046259520923

`A008683(A006881(n+1))*A106580(A000217(n)+n)`
-/

namespace A089324.P7068546046259520923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006881 (n + 1)).toNat * A106580 (A000217 n + (n : ℤ)).toNat

end

end A089324.P7068546046259520923

/-!
# A089325: a(1) = 3, a(n) = smallest multiple of a(n-1) such that 10*a(n) + 1 is prime.

The programs for A089325, there is no canonical definition to state claims against.
-/

/-! ## A089325.P13298278672368562323

`a(n-1)*A089326(n)` with `a(0)=3`
-/

namespace A089325.P13298278672368562323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) * A089326 n

end

end A089325.P13298278672368562323

/-! ## A089325.P5504856134774680550

`∏[p?[A329332(A046073(n+1))]]`
-/

namespace A089325.P5504856134774680550
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329332 (A046073 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A089325.P5504856134774680550

/-! ## A089325.P4264814653621289194

`∏[p?[A001222(A065321(n+2))]]`
-/

namespace A089325.P4264814653621289194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A065321 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A089325.P4264814653621289194

/-! ## A089325.P13912189861499400886

`∏[A014675(∑[3^n]+2)+1]`
-/

namespace A089325.P13912189861499400886
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 (∑ j ∈ Finset.range (n + 1), f2 j + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A089325.P13912189861499400886

/-! ## A089325.P9809613524344987897

`∏[A074804(A042162(n))]`
-/

namespace A089325.P9809613524344987897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074804 (A042162 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A089325.P9809613524344987897

/-!
# A089326: a(n) = A089325(n+1)/A089325(n).

The programs for A089326, there is no canonical definition to state claims against.
-/

/-! ## A089326.P2759085457891882796

`A089325(n+2)/A089325(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A089326.P2759085457891882796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089325 (n + 2) : ℚ) / (A089325 (n + 1) : ℚ)

end

end A089326.P2759085457891882796

/-! ## A089326.P15884992316898781387

`ratio[A089325(n+1)]`
-/

namespace A089326.P15884992316898781387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089325 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A089326.P15884992316898781387

/-!
# A089327: Smallest prime p such that 10*n*p +1 is prime.

The programs for A089327, there is no canonical definition to state claims against.
-/

/-! ## A089327.P17416600904339908330

`A051686(5*(n+1))`
-/

namespace A089327.P17416600904339908330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051686 (5 * (n + 1))

end

end A089327.P17416600904339908330

/-! ## A089327.P4710809536803966715

`A089367(10*(n+1))`
-/

namespace A089327.P4710809536803966715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089367 (10 * (n + 1))

end

end A089327.P4710809536803966715

/-! ## A089327.P5540664078354960894

`p?[A051686(Δ[A028895(n)])]`
-/

namespace A089327.P5540664078354960894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028895 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051686 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089327.P5540664078354960894

/-! ## A089327.P2019742991868287477

`p?[A051686(A008706(n+1))]`
-/

namespace A089327.P2019742991868287477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051686 (A008706 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089327.P2019742991868287477

/-! ## A089327.P11037821096190409353

`A014963(A051686(record[gcd(5, n)+n]))`
-/

namespace A089327.P11037821096190409353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 5 n + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A051686 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A089327.P11037821096190409353

/-! ## A089327.P15139293199796771269

`∑{d}[A051686(A008706(n+1)), A000010(#)]`
-/

namespace A089327.P15139293199796771269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051686 (A008706 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A089327.P15139293199796771269

/-! ## A089327.P16035493280538944667

`∑{p}[A051686(A008706(n+1)), A014963(#)]`
-/

namespace A089327.P16035493280538944667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051686 (A008706 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A014963 p

end

end A089327.P16035493280538944667

/-! ## A089327.P13350404385223479587

`A051686(A008706(n+1))+A000007(n+1)`
-/

namespace A089327.P13350404385223479587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051686 (A008706 (n + 1)).toNat + A000007 (n + 1)

end

end A089327.P13350404385223479587

/-! ## A089327.P3211384799001965850

`A167465(A001613(n))+A051686(A008706(n+1))`
-/

namespace A089327.P3211384799001965850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167465 (A001613 n).toNat + A051686 (A008706 (n + 1)).toNat

end

end A089327.P3211384799001965850

/-! ## A089327.P18330954802017492821

`A167465(A005843(n))+A051686(A008706(n+1))`
-/

namespace A089327.P18330954802017492821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167465 (A005843 n).toNat + A051686 (A008706 (n + 1)).toNat

end

end A089327.P18330954802017492821

/-!
# A089333: Number of partitions into a square number of parts.

The programs for A089333, there is no canonical definition to state claims against.
-/

/-! ## A089333.P3551540880151330544

`A105224(A022125(n)-A005893(n))`
-/

namespace A089333.P3551540880151330544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A022125 n - A005893 n).toNat

end

end A089333.P3551540880151330544

/-! ## A089333.P2453209358172449634

`A026811(n+1)+A026492(A185903(n+1))`
-/

namespace A089333.P2453209358172449634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 (n + 1) + A026492 (A185903 (n + 1)).toNat

end

end A089333.P2453209358172449634

/-! ## A089333.P11931331783479932724

`round(A067728(A298311(n))/A298311(2*n+3))`
-/

namespace A089333.P11931331783479932724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A067728 (A298311 n).toNat : ℚ) / (A298311 (2 * n + 3) : ℚ))

end

end A089333.P11931331783479932724

/-! ## A089333.P13062978680008376849

`A300287(A048139(n+1))`
-/

namespace A089333.P13062978680008376849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300287 (A048139 (n + 1)).toNat

end

end A089333.P13062978680008376849

/-! ## A089333.P7676827814630500129

`A328806(A391645(n+1))`
-/

namespace A089333.P7676827814630500129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328806 (A391645 (n + 1)).toNat

end

end A089333.P7676827814630500129

/-!
# A089339: Number of primes beginning with n and of the form n concatenated with p where p takes all the prime values less than n.

The programs for A089339, there is no canonical definition to state claims against.
-/

/-! ## A089339.P3852105695431884087

`A252736(or(A000720(n+1), A020695(n)))`
-/

namespace A089339.P3852105695431884087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (Int.lor (A000720 (n + 1)) (A020695 n)).toNat

end

end A089339.P3852105695431884087

/-! ## A089339.P12626740060609188626

`A308427(or(A000720(n+1), A020695(n)))`
-/

namespace A089339.P12626740060609188626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308427 (Int.lor (A000720 (n + 1)) (A020695 n)).toNat

end

end A089339.P12626740060609188626

/-!
# A089341: Numbers k with lpf(k) < gpf(k) < 2*lpf(k), where lpf = A020639, gpf = A006530.

The programs for A089341, there is no canonical definition to state claims against.
-/

/-! ## A089341.P15039275265422041929

`eq[2, A120454(n+1)]+1`
-/

namespace A089341.P15039275265422041929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120454 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A089341.P15039275265422041929

/-! ## A089341.P3676054883606674266

`∩[A005279(n+1), A069899(n+1)]`
-/

namespace A089341.P3676054883606674266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089341.P3676054883606674266

/-! ## A089341.P18013180123425908577

`∩[A005279(n+1), A081306(n+1)]`
-/

namespace A089341.P18013180123425908577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089341.P18013180123425908577

/-! ## A089341.P15119220354967620283

`∩[A069899(n+1), A092671(n+1)]`
-/

namespace A089341.P15119220354967620283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089341.P15119220354967620283

/-! ## A089341.P10065140444466357776

`∩[A069899(n+1), A119313(n+1)]`
-/

namespace A089341.P10065140444466357776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089341.P10065140444466357776

/-! ## A089341.P5912780131669513923

`∩[A081306(n+1), A119313(n+1)]`
-/

namespace A089341.P5912780131669513923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089341.P5912780131669513923

/-! ## A089341.P18277013254752005116

`∩[A024619(n+1), A069899(n+1)]`
-/

namespace A089341.P18277013254752005116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089341.P18277013254752005116

/-! ## A089341.P8901211282633351883

`∩[A024619(n+1), A081306(n+1)]`
-/

namespace A089341.P8901211282633351883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089341.P8901211282633351883

/-! ## A089341.P14436691926178454184

`∩[A069899(n+1), A361102(n+1)]`
-/

namespace A089341.P14436691926178454184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089341.P14436691926178454184

/-! ## A089341.P4795973073025064254

`A020725(eq[2, A120454(n+1)])`
-/

namespace A089341.P4795973073025064254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A089341.P4795973073025064254

/-! ## A089341.P3087035875505955909

`eq[2, A120454(A028310(n))]`
-/

namespace A089341.P3087035875505955909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120454 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089341.P3087035875505955909

/-! ## A089341.P17217708033998398005

`eq[2, A120454(A257088(n))]`
-/

namespace A089341.P17217708033998398005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120454 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089341.P17217708033998398005

/-! ## A089341.P15265164788917543310

`filter[A069899(n+1), A143731(#)]`
-/

namespace A089341.P15265164788917543310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A089341.P15265164788917543310

/-! ## A089341.P5040130610596250662

`filter[A081306(n+1), A143731(#)]`
-/

namespace A089341.P5040130610596250662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A089341.P5040130610596250662

/-! ## A089341.P1894192000407140611

`∩[A069899(n+1), A219095(n+2)]`
-/

namespace A089341.P1894192000407140611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219095 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089341.P1894192000407140611

/-! ## A089341.P8212234654881812318

`∩[A081306(n+1), A219095(n+2)]`
-/

namespace A089341.P8212234654881812318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219095 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089341.P8212234654881812318

/-!
# A089343: Sum of all digits in all even numbers from 0 to 6(10^(k+1)-1)/9 (with (k+1) 6's).

The programs for A089343, there is no canonical definition to state claims against.
-/

/-! ## A089343.P14472094667192780458

`A089304(n)+A089350(n)/2`
-/

namespace A089343.P14472094667192780458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089304 n : ℚ) + (A089350 n : ℚ) / 2

end

end A089343.P14472094667192780458

/-! ## A089343.P1802416477670773991

`3*(A089314(n)-A089304(n))`
-/

namespace A089343.P1802416477670773991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A089314 n - A089304 n)

end

end A089343.P1802416477670773991

/-!
# A089344: Smallest prime(k) such that prime(k)-prime(k-n) is equal to prime(k+1)-prime(k).

The programs for A089344, there is no canonical definition to state claims against.
-/

/-! ## A089344.P6418686177828316978

`A000040(A066496(n+1))`
-/

namespace A089344.P6418686177828316978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A066496 (n + 1)).toNat

end

end A089344.P6418686177828316978

/-! ## A089344.P15971134417576281476

`A006005(record[A066496(n+1)])`
-/

namespace A089344.P15971134417576281476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A089344.P15971134417576281476

/-! ## A089344.P15038960923057482350

`A008578(A066496(n+1)+1)`
-/

namespace A089344.P15038960923057482350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A066496 (n + 1) + 1).toNat

end

end A089344.P15038960923057482350

/-!
# A089345: Primes of the form identical even digits followed by a 1.

The programs for A089345, there is no canonical definition to state claims against.
-/

/-! ## A089345.P12559094224156592449

`∩[A089347(n+1), A320256(n+1)]`
-/

namespace A089345.P12559094224156592449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089345.P12559094224156592449

/-! ## A089345.P14059624351871036221

`∩[A320256(n+1), A325934(n+1)]`
-/

namespace A089345.P14059624351871036221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089345.P14059624351871036221

/-! ## A089345.P17305539118260008818

`p?[xor(2, 10*A010785(n)+3)]`
-/

namespace A089345.P17305539118260008818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (10 * A010785 n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089345.P17305539118260008818

/-!
# A089346: Primes of the form identical odd digits followed by a 1.

The programs for A089346, there is no canonical definition to state claims against.
-/

/-! ## A089346.P4166776674989479258

`filter[A089347(n+1), A359152(#)]`
-/

namespace A089346.P4166776674989479258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359152 (f1 j).toNat = 1) n)

end

end A089346.P4166776674989479258

/-! ## A089346.P18088397565332266669

`p?[A017305(A056967(2*n+1))-2]`
-/

namespace A089346.P18088397565332266669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 (A056967 (2 * n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089346.P18088397565332266669

/-! ## A089346.P1100226701330119781

`p?[A017281(2*n+1)*A043562(2*n+1)]`
-/

namespace A089346.P1100226701330119781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (2 * n + 1) * A043562 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089346.P1100226701330119781

/-!
# A089347: Primes of the form identical digits followed by a 1.

The programs for A089347, there is no canonical definition to state claims against.
-/

/-! ## A089347.P5946918909044813593

`∪[A109548(n+1), A109549(n+1)]%A109550(n+1)`
-/

namespace A089347.P5946918909044813593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109548 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109549 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A109550 (n + 1))

end

end A089347.P5946918909044813593

/-! ## A089347.P10636491668283419040

`p?[10*A010785(n)+1]`
-/

namespace A089347.P10636491668283419040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A010785 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089347.P10636491668283419040

/-! ## A089347.P1464182138486085156

`p?[A014181(n+1)-dr(n)]`
-/

namespace A089347.P1464182138486085156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014181 (n + 1) - (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089347.P1464182138486085156

/-! ## A089347.P17155655282952812594

`p?[∑[A027828(n)]-A010878(n)]`
-/

namespace A089347.P17155655282952812594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027828 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A010878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089347.P17155655282952812594

/-! ## A089347.P10541118602249094104

`p?[A010785(n+1)-A010878(n)]`
-/

namespace A089347.P10541118602249094104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 (n + 1) - A010878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089347.P10541118602249094104

/-!
# A089348: Primes of the form smallest multiple of n followed by a 1.

The programs for A089348, there is no canonical definition to state claims against.
-/

/-! ## A089348.P294756576195605670

`A070849(2*(n+1))`
-/

namespace A089348.P294756576195605670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070849 (2 * (n + 1))

end

end A089348.P294756576195605670

/-! ## A089348.P15459899786817444669

`A070846(5*(n+1))`
-/

namespace A089348.P15459899786817444669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (5 * (n + 1))

end

end A089348.P15459899786817444669

/-! ## A089348.P16276739872779292622

`A034694(10*(n+1))`
-/

namespace A089348.P16276739872779292622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (10 * (n + 1))

end

end A089348.P16276739872779292622

/-! ## A089348.P2641651898364287523

`A086507(10*(n+1))`
-/

namespace A089348.P2641651898364287523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086507 (10 * (n + 1))

end

end A089348.P2641651898364287523

/-! ## A089348.P5074654839862797547

`or(1, A070849(record[2-xor(1, -n)]))`
-/

namespace A089348.P5074654839862797547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A070849 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A089348.P5074654839862797547

/-! ## A089348.P4568627145991564987

`A000040(A089534(n+1))`
-/

namespace A089348.P4568627145991564987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A089534 (n + 1)).toNat

end

end A089348.P4568627145991564987

/-! ## A089348.P15374794439889188511

`p?[A070846(Δ[A005891(n)])]`
-/

namespace A089348.P15374794439889188511
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089348.P15374794439889188511

/-! ## A089348.P14920460563830038048

`p?[A070846(Δ[A028895(n)])]`
-/

namespace A089348.P14920460563830038048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028895 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089348.P14920460563830038048

/-! ## A089348.P16705634890100681690

`p?[A034694(A008592(n+1))]`
-/

namespace A089348.P16705634890100681690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A008592 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089348.P16705634890100681690

/-! ## A089348.P14312962372175352292

`p?[A070846(A008706(n+1))]`
-/

namespace A089348.P14312962372175352292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (A008706 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089348.P14312962372175352292

/-!
# A089350: Sum of all digits in all even numbers from 0 to 8(10^(k+1)-1)/9 (with (k+1) 8's).

The programs for A089350, there is no canonical definition to state claims against.
-/

/-! ## A089350.P8122885853235628456

`2*(A089343(n)-A089304(n))`
-/

namespace A089350.P8122885853235628456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A089343 n - A089304 n)

end

end A089350.P8122885853235628456

/-! ## A089350.P7021447296078515922

`2*(3*(A089314(n)-A089304(n))-A089304(n))`
-/

namespace A089350.P7021447296078515922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (3 * (A089314 n - A089304 n) - A089304 n)

end

end A089350.P7021447296078515922

/-! ## A089350.P9538680012194842083

`2*(A089343(n)-(A089314(n)-A089343(n)/3))`
-/

namespace A089350.P9538680012194842083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A089343 n : ℚ) - ((A089314 n : ℚ) - (A089343 n : ℚ) / 3))

end

end A089350.P9538680012194842083

/-!
# A089351: Number of planar partitions of n with trace 4.

The programs for A089351, there is no canonical definition to state claims against.
-/

/-! ## A089351.P4847212891282625145

`A089353(∑[n+3]+7)`
-/

namespace A089351.P4847212891282625145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089353 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A089351.P4847212891282625145

/-! ## A089351.P11270939692081352214

`or(A000007(n), A089353(A052905(n)+9))`
-/

namespace A089351.P11270939692081352214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A089353 (A052905 n + 9).toNat)

end

end A089351.P11270939692081352214

/-! ## A089351.P15369484708709445925

`lcm(A000034(n), A089353(A000217(n+3)+4))`
-/

namespace A089351.P15369484708709445925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A089353 (A000217 (n + 3) + 4).toNat)

end

end A089351.P15369484708709445925

/-! ## A089351.P10721164487766630986

`A040263(2*n+1)*A089353(A052905(n)+9)`
-/

namespace A089351.P10721164487766630986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040263 (2 * n + 1) * A089353 (A052905 n + 9).toNat

end

end A089351.P10721164487766630986

/-! ## A089351.P15886247740459624312

`A089353(A000217(n+3)+4)%A133061(n+1)`
-/

namespace A089351.P15886247740459624312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089353 (A000217 (n + 3) + 4).toNat) (A133061 (n + 1))

end

end A089351.P15886247740459624312

/-! ## A089351.P14306858622402075686

`gcd(A089353(A052905(n)+9), A135523(2*n+1))`
-/

namespace A089351.P14306858622402075686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A089353 (A052905 n + 9).toNat) (A135523 (2 * n + 1))

end

end A089351.P14306858622402075686

/-! ## A089351.P7450294518469194270

`A089353(A055999(n)+10)^A001222(A008578(n+1))`
-/

namespace A089351.P7450294518469194270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089353 (A055999 n + 10).toNat : ℚ) ^ (A001222 (A008578 (n + 1)).toNat : ℤ)

end

end A089351.P7450294518469194270

/-! ## A089351.P3926479496894082031

`A059268(C(n, 2))*A089353(A052905(n)+9)`
-/

namespace A089351.P3926479496894082031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (Nat.choose n 2) * A089353 (A052905 n + 9).toNat

end

end A089351.P3926479496894082031

/-! ## A089351.P7039509184161970207

`lcm(A087960(n²), A089353(A052905(n)+9))`
-/

namespace A089351.P7039509184161970207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 (n ^ 2)) (A089353 (A052905 n + 9).toNat)

end

end A089351.P7039509184161970207

/-!
# A089352: Numbers that are divisible by the sum of their distinct prime factors (A008472).

The programs for A089352, the canonical program `A089352.P4755244017656261528` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089352 has offset 1).

The definition of A089352 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6080 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089352.P9057259969001741708

`∪[A066031(n+1), A086486(n+1)]`
-/

namespace A089352.P9057259969001741708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A089352.P9057259969001741708

namespace A089352

/-- `∪[A066031(n+1), A086486(n+1)]` -/
def P9057259969001741708.Spec : Prop :=
  ∀ n, (P9057259969001741708.a n : ℤ) = A089352 (n + 1)

end A089352

/-! ## A089352.P10607882925768982007

`∪[A000040(n+1), A158804(n+1)]`
-/

namespace A089352.P10607882925768982007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A089352.P10607882925768982007

namespace A089352

/-- `∪[A000040(n+1), A158804(n+1)]` -/
def P10607882925768982007.Spec : Prop :=
  ∀ n, (P10607882925768982007.a n : ℤ) = A089352 (n + 1)

end A089352

/-! ## A089352.P10223759822677938990

`∪[A000430(n+1), A158804(n+1)]`
-/

namespace A089352.P10223759822677938990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A089352.P10223759822677938990

namespace A089352

/-- `∪[A000430(n+1), A158804(n+1)]` -/
def P10223759822677938990.Spec : Prop :=
  ∀ n, (P10223759822677938990.a n : ℤ) = A089352 (n + 1)

end A089352

/-! ## A089352.P4621934604920189399

`∪[A050376(n+1), A158804(n+1)]`
-/

namespace A089352.P4621934604920189399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A089352.P4621934604920189399

namespace A089352

/-- `∪[A050376(n+1), A158804(n+1)]` -/
def P4621934604920189399.Spec : Prop :=
  ∀ n, (P4621934604920189399.a n : ℤ) = A089352 (n + 1)

end A089352

/-! ## A089352.P4755244017656261528

`eq[n+1, lcm(n+1, A008472(n+1))]+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A089352

/-- `eq[n+1, lcm(n+1, A008472(n+1))]+1` -/
def P4755244017656261528.Spec : Prop :=
  ∀ n, (P4755244017656261528.a n : ℤ) = A089352 (n + 1)

theorem P4755244017656261528.correct : P4755244017656261528.Spec := by
  intro n
  simp only [A089352, Nat.add_sub_cancel]

end A089352

/-! ## A089352.P7020735818654095439

`record[gcd(n+2, A161657(n+2))]`
-/

namespace A089352.P7020735818654095439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A161657 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089352.P7020735818654095439

namespace A089352

/-- `record[gcd(n+2, A161657(n+2))]` -/
def P7020735818654095439.Spec : Prop :=
  ∀ n, (P7020735818654095439.a n : ℤ) = A089352 (n + 1)

end A089352

/-! ## A089352.P17632100810517306287

`eq[n+1, A161656(n+1)]+1`
-/

namespace A089352.P17632100810517306287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161656 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A089352.P17632100810517306287

namespace A089352

/-- `eq[n+1, A161656(n+1)]+1` -/
def P17632100810517306287.Spec : Prop :=
  ∀ n, (P17632100810517306287.a n : ℤ) = A089352 (n + 1)

end A089352

/-! ## A089352.P15230053253308839763

`eq[A008472(n+1), A099635(n+1)]+1`
-/

namespace A089352.P15230053253308839763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099635 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A089352.P15230053253308839763

namespace A089352

/-- `eq[A008472(n+1), A099635(n+1)]+1` -/
def P15230053253308839763.Spec : Prop :=
  ∀ n, (P15230053253308839763.a n : ℤ) = A089352 (n + 1)

end A089352

/-! ## A089352.P10973752241299405979

`A161657(eq[n+2, A161657(n+2)]+2)`
-/

namespace A089352.P10973752241299405979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161657 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161657 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A089352.P10973752241299405979

namespace A089352

/-- `A161657(eq[n+2, A161657(n+2)]+2)` -/
def P10973752241299405979.Spec : Prop :=
  ∀ n, P10973752241299405979.a n = A089352 (n + 1)

end A089352

/-! ## A089352.P5095933869235246340

`eq[A028310(n), A161656(A028310(n))]`
-/

namespace A089352.P5095933869235246340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161656 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089352.P5095933869235246340

namespace A089352

/-- `eq[A028310(n), A161656(A028310(n))]` -/
def P5095933869235246340.Spec : Prop :=
  ∀ n, (P5095933869235246340.a n : ℤ) = A089352 (n + 1)

end A089352

/-!
# A089353: Triangle read by rows: T(n,m) = number of planar partitions of n with trace m.

The programs for A089353, there is no canonical definition to state claims against.
-/

/-! ## A089353.P13400805155520423386

`A382108(A066121(n+1))`
-/

namespace A089353.P13400805155520423386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382108 (A066121 (n + 1)).toNat

end

end A089353.P13400805155520423386

/-! ## A089353.P4503091799709642670

`A199474(A208749(n+2))`
-/

namespace A089353.P4503091799709642670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199474 (A208749 (n + 2)).toNat

end

end A089353.P4503091799709642670

/-! ## A089353.P9027807409916249229

`A327536(A130321(n)*A185620(n))`
-/

namespace A089353.P9027807409916249229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327536 (A130321 n * A185620 n).toNat

end

end A089353.P9027807409916249229

/-! ## A089353.P7814220988419072901

`A050320(A068009(n)*A223209(n+1))`
-/

namespace A089353.P7814220988419072901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (A068009 n * A223209 (n + 1)).toNat

end

end A089353.P7814220988419072901

/-! ## A089353.P8445668762460200436

`A376308(A064642(n+1))`
-/

namespace A089353.P8445668762460200436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376308 (A064642 (n + 1)).toNat

end

end A089353.P8445668762460200436

/-!
# A089354: Number of generalized {(1,2),(1,-1)}-Dyck paths of length 3n with no peaks at level 2.

The programs for A089354, there is no canonical definition to state claims against.
-/

/-! ## A089354.P5588878948601238603

`ceil((A001764(n)-A121545(n))/2)`
-/

namespace A089354.P5588878948601238603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001764 n - A121545 n : ℚ) / 2⌉

end

end A089354.P5588878948601238603

/-! ## A089354.P303707734269287288

`(A001764(n)-A121545(n))/(A057427(n)+1)`
-/

namespace A089354.P303707734269287288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001764 n - A121545 n : ℚ) / (A057427 n + 1 : ℚ)

end

end A089354.P303707734269287288

/-! ## A089354.P10257518329988889296

`(A000007(n)+A001764(n)-A121545(n))/2`
-/

namespace A089354.P10257518329988889296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 n + (A001764 n - A121545 n) : ℚ) / 2

end

end A089354.P10257518329988889296

/-! ## A089354.P12759300858577901835

`A121545(n+1)+A121545(n+1)-A006013(n)`
-/

namespace A089354.P12759300858577901835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121545 (n + 1) + (A121545 (n + 1) - A006013 n)

end

end A089354.P12759300858577901835

/-! ## A089354.P17157129850100494751

`A183160(n)+A183160(n)-A045721(n)`
-/

namespace A089354.P17157129850100494751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183160 n + (A183160 n - A045721 n)

end

end A089354.P17157129850100494751

/-!
# A089355: A quarter-square shaped (A002620) staircase array distributing the frequency of objects counted by A047970.

The programs for A089355, there is no canonical definition to state claims against.
-/

/-! ## A089355.P5418569556660654256

`A001222(xor(4, A000960(A005428(n))))`
-/

namespace A089355.P5418569556660654256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.xor 4 (A000960 (A005428 n).toNat)).toNat

end

end A089355.P5418569556660654256

/-! ## A089355.P1856598555350538101

`A131576(or(A014551(n), A264754(n)))`
-/

namespace A089355.P1856598555350538101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131576 (Int.lor (A014551 n) (A264754 n)).toNat

end

end A089355.P1856598555350538101

/-! ## A089355.P17301866080228272235

`A131576(or(A051049(n), A079696(n+1)))`
-/

namespace A089355.P17301866080228272235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131576 (Int.lor (A051049 n) (A079696 (n + 1))).toNat

end

end A089355.P17301866080228272235

/-! ## A089355.P3415401417885032538

`A001221(or(A200668(n+1), A335956(n)))`
-/

namespace A089355.P3415401417885032538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A200668 (n + 1)) (A335956 n)).toNat

end

end A089355.P3415401417885032538

/-!
# A089357: a(n) = 2^(6*n).

The programs for A089357, the canonical program `A089357.P1765948090617644810` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089357 has offset 0).

The definition of A089357 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(6*n)` (program `A089357.P1765948090617644810`, by `A089357.P1765948090617644810.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089357.P4160003408888315213

`64^n`
-/

namespace A089357.P4160003408888315213
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64 ^ n

end

end A089357.P4160003408888315213

namespace A089357

/-- `64^n` -/
def P4160003408888315213.Spec : Prop :=
  ∀ n, (P4160003408888315213.a n : ℤ) = A089357 n

end A089357

/-! ## A089357.P1765948090617644810

`2^(6*n)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089357

/-- `2^(6*n)` -/
def P1765948090617644810.Spec : Prop :=
  ∀ n, (P1765948090617644810.a n : ℤ) = A089357 n

theorem P1765948090617644810.correct : P1765948090617644810.Spec := by
  intro n
  simp only [A089357]

end A089357

/-!
# A089358: Numbers k such that k^2 - 3*k + 3 is prime.

The programs for A089358, there is no canonical definition to state claims against.
-/

/-! ## A089358.P6929575060070904871

`A002384(n+1)+2`
-/

namespace A089358.P6929575060070904871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1) + 2

end

end A089358.P6929575060070904871

/-! ## A089358.P17317637393534547643

`A055494(n+1)+1`
-/

namespace A089358.P17317637393534547643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 1) + 1

end

end A089358.P17317637393534547643

/-! ## A089358.P10292503678603493431

`(A088503(n+1)+3)/2`
-/

namespace A089358.P10292503678603493431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088503 (n + 1) + 3 : ℚ) / 2

end

end A089358.P10292503678603493431

/-! ## A089358.P9481619972752825423

`floor(sqrt(A002383(n+1)))+2`
-/

namespace A089358.P9481619972752825423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A002383 (n + 1)) + 2

end

end A089358.P9481619972752825423

/-! ## A089358.P8041840535930843762

`(sqrt(A110284(n+1))-1)/2+2`
-/

namespace A089358.P8041840535930843762
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A110284 (n + 1) : ℝ) - 1) / 2 + 2

end

end A089358.P8041840535930843762

/-! ## A089358.P18334027706789059293

`A319702(sqrt(A110284(n+1)))`
-/

namespace A089358.P18334027706789059293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (SequenceMachineLib.roundAway (Real.sqrt (A110284 (n + 1) : ℝ))).toNat

end

end A089358.P18334027706789059293

/-! ## A089358.P8749825585563597578

`eq[1, A289356(n)]+2`
-/

namespace A089358.P8749825585563597578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289356 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A089358.P8749825585563597578

/-! ## A089358.P8699936377671293183

`lt[0, A108154(n+1)]+2`
-/

namespace A089358.P8699936377671293183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108154 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A089358.P8699936377671293183

/-! ## A089358.P5009886008865495074

`eq[1, A182047(n)%(n+1)]+2`
-/

namespace A089358.P5009886008865495074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182047 n) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A089358.P5009886008865495074

/-! ## A089358.P11238445129371661684

`A009056(A002384(n+1))`
-/

namespace A089358.P11238445129371661684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A002384 (n + 1)).toNat

end

end A089358.P11238445129371661684

/-! ## A089358.P11885258547606366624

`A020725(A055494(n+1))`
-/

namespace A089358.P11885258547606366624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A055494 (n + 1)).toNat

end

end A089358.P11885258547606366624

/-! ## A089358.P16395507044398160892

`eq[A002378(n), A066791(n)]+2`
-/

namespace A089358.P16395507044398160892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A089358.P16395507044398160892

/-! ## A089358.P14616468219578317426

`eq[A108154(n+1), A182047(n)]+2`
-/

namespace A089358.P14616468219578317426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182047 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A089358.P14616468219578317426

/-! ## A089358.P6242939691529754382

`eq[A081256(n+1), A108154(n+1)]+2`
-/

namespace A089358.P6242939691529754382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108154 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A089358.P6242939691529754382

/-! ## A089358.P15937286293616905371

`eq[2, A278251(n)]+1`
-/

namespace A089358.P15937286293616905371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278251 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A089358.P15937286293616905371

/-! ## A089358.P2273905135463390480

`eq[2, A278260(2*n+1)]+2`
-/

namespace A089358.P2273905135463390480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278260 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A089358.P2273905135463390480

/-! ## A089358.P1175055796530697423

`A030451(A088503(n+1))`
-/

namespace A089358.P1175055796530697423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030451 (A088503 (n + 1)).toNat

end

end A089358.P1175055796530697423

/-! ## A089358.P6839995500915917283

`A008619(A088503(n+1)+1)`
-/

namespace A089358.P6839995500915917283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A088503 (n + 1) + 1).toNat

end

end A089358.P6839995500915917283

/-! ## A089358.P4843956260114173162

`A028242(A088503(n+1)+1)`
-/

namespace A089358.P4843956260114173162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A088503 (n + 1) + 1).toNat

end

end A089358.P4843956260114173162

/-! ## A089358.P17067005405369182382

`A097065(A088503(n+1)+1)`
-/

namespace A089358.P17067005405369182382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097065 (A088503 (n + 1) + 1).toNat

end

end A089358.P17067005405369182382

/-!
# A089359: Primes which can be partitioned into distinct factorials. 0! and 1! are not considered distinct.

The programs for A089359, there is no canonical definition to state claims against.
-/

/-! ## A089359.P505735765190294390

`p?[A059590(n)]`
-/

namespace A089359.P505735765190294390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089359.P505735765190294390

/-! ## A089359.P12915592819628496296

`p?[A059589(n+1)]`
-/

namespace A089359.P12915592819628496296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089359.P12915592819628496296

/-! ## A089359.P8141969681157329711

`p?[record[A059589(A292266(n))]]`
-/

namespace A089359.P8141969681157329711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059589 (A292266 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089359.P8141969681157329711

/-! ## A089359.P3099948178404041148

`p?[A283984(n)-A283984(floor(n/2))]`
-/

namespace A089359.P3099948178404041148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283984 n - A283984 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089359.P3099948178404041148

/-! ## A089359.P93227675322908231

`p?[A276082(n)+A276083(n)-A276091(n)]`
-/

namespace A089359.P93227675322908231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276082 n + (A276083 n - A276091 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089359.P93227675322908231

/-!
# A089361: Numbers of pairs (i, j), i, j > 1, such that i^j <= n.

The programs for A089361, the canonical program `A089361.P96077978573421332` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089361 has offset 1).

The definition of A089361 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089361.P8455572977291173497

`A255165(n+1)-n`
-/

namespace A089361.P8455572977291173497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255165 (n + 1) - (n : ℤ)

end

end A089361.P8455572977291173497

namespace A089361

/-- `A255165(n+1)-n` -/
def P8455572977291173497.Spec : Prop :=
  ∀ n, P8455572977291173497.a n = A089361 (n + 1)

end A089361

/-! ## A089361.P3579795493958025535

`∑[A089723(n+1)-1]`
-/

namespace A089361.P3579795493958025535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089361.P3579795493958025535

namespace A089361

/-- `∑[A089723(n+1)-1]` -/
def P3579795493958025535.Spec : Prop :=
  ∀ n, P3579795493958025535.a n = A089361 (n + 1)

end A089361

/-! ## A089361.P6120418908468993216

`∑[A259362(n+1)]-1`
-/

namespace A089361.P6120418908468993216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259362 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A089361.P6120418908468993216

namespace A089361

/-- `∑[A259362(n+1)]-1` -/
def P6120418908468993216.Spec : Prop :=
  ∀ n, P6120418908468993216.a n = A089361 (n + 1)

end A089361

/-! ## A089361.P3306269372835614086

`A342871(n+1)-Δ[n²]`
-/

namespace A089361.P3306269372835614086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342871 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A089361.P3306269372835614086

namespace A089361

/-- `A342871(n+1)-Δ[n²]` -/
def P3306269372835614086.Spec : Prop :=
  ∀ n, P3306269372835614086.a n = A089361 (n + 1)

end A089361

/-! ## A089361.P96077978573421332

`∑[A032741(A052409(n+1))]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A089361

/-- `∑[A032741(A052409(n+1))]` -/
def P96077978573421332.Spec : Prop :=
  ∀ n, P96077978573421332.a n = A089361 (n + 1)

theorem P96077978573421332.correct : P96077978573421332.Spec := by
  intro n
  simp only [A089361, Nat.add_sub_cancel]

end A089361

/-! ## A089361.P9698844704192545416

`∑[A032741(A132349(n+1))]`
-/

namespace A089361.P9698844704192545416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A132349 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089361.P9698844704192545416

namespace A089361

/-- `∑[A032741(A132349(n+1))]` -/
def P9698844704192545416.Spec : Prop :=
  ∀ n, P9698844704192545416.a n = A089361 (n + 1)

end A089361

/-! ## A089361.P14420412325576687883

`A327737(n+1)-A016777(n)`
-/

namespace A089361.P14420412325576687883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327737 (n + 1) - A016777 n

end

end A089361.P14420412325576687883

namespace A089361

/-- `A327737(n+1)-A016777(n)` -/
def P14420412325576687883.Spec : Prop :=
  ∀ n, P14420412325576687883.a n = A089361 (n + 1)

end A089361

/-! ## A089361.P16939326399504715072

`A255165(n+1)%A028310(n)`
-/

namespace A089361.P16939326399504715072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255165 (n + 1)) (A028310 n)

end

end A089361.P16939326399504715072

namespace A089361

/-- `A255165(n+1)%A028310(n)` -/
def P16939326399504715072.Spec : Prop :=
  ∀ n, P16939326399504715072.a n = A089361 (n + 1)

end A089361

/-! ## A089361.P12886249127726117709

`A342871(n+1)%A157142(n)`
-/

namespace A089361.P12886249127726117709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342871 (n + 1)) (A157142 n)

end

end A089361.P12886249127726117709

namespace A089361

/-- `A342871(n+1)%A157142(n)` -/
def P12886249127726117709.Spec : Prop :=
  ∀ n, P12886249127726117709.a n = A089361 (n + 1)

end A089361

/-! ## A089361.P7185309729417067730

`∑[A033300(n)%A089723(n+1)]`
-/

namespace A089361.P7185309729417067730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033300 n) (A089723 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089361.P7185309729417067730

namespace A089361

/-- `∑[A033300(n)%A089723(n+1)]` -/
def P7185309729417067730.Spec : Prop :=
  ∀ n, P7185309729417067730.a n = A089361 (n + 1)

end A089361

/-! ## A089361.P122263438369276598

`∑[A152951(n)%A089723(n+1)]`
-/

namespace A089361.P122263438369276598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152951 n) (A089723 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089361.P122263438369276598

namespace A089361

/-- `∑[A152951(n)%A089723(n+1)]` -/
def P122263438369276598.Spec : Prop :=
  ∀ n, P122263438369276598.a n = A089361 (n + 1)

end A089361

/-! ## A089361.P15232444305188734738

`A023443(A342871(n+1)-2*n)`
-/

namespace A089361.P15232444305188734738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A342871 (n + 1) - (2 * n : ℤ)).toNat

end

end A089361.P15232444305188734738

namespace A089361

/-- `A023443(A342871(n+1)-2*n)` -/
def P15232444305188734738.Spec : Prop :=
  ∀ n, P15232444305188734738.a n = A089361 (n + 1)

end A089361

/-! ## A089361.P4443072359604986383

`A023443(A342871(n+1)-n-n)`
-/

namespace A089361.P4443072359604986383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A342871 (n + 1) - (n : ℤ) - (n : ℤ)).toNat

end

end A089361.P4443072359604986383

namespace A089361

/-- `A023443(A342871(n+1)-n-n)` -/
def P4443072359604986383.Spec : Prop :=
  ∀ n, P4443072359604986383.a n = A089361 (n + 1)

end A089361

/-! ## A089361.P9624133993773072054

`A072292(A001597(∑[A259362(n+1)]))`
-/

namespace A089361.P9624133993773072054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259362 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072292 (A001597 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A089361.P9624133993773072054

namespace A089361

/-- `A072292(A001597(∑[A259362(n+1)]))` -/
def P9624133993773072054.Spec : Prop :=
  ∀ n, P9624133993773072054.a n = A089361 (n + 1)

end A089361

/-! ## A089361.P10182019056864948193

`A259361(∑[A259362(n+1)]²)`
-/

namespace A089361.P10182019056864948193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259362 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A089361.P10182019056864948193

namespace A089361

/-- `A259361(∑[A259362(n+1)]²)` -/
def P10182019056864948193.Spec : Prop :=
  ∀ n, P10182019056864948193.a n = A089361 (n + 1)

end A089361

/-!
# A089362: Numbers k such that k^2 - 5k + 5 is prime.

The programs for A089362, there is no canonical definition to state claims against.
-/

/-! ## A089362.P14159603233805737843

`A002328(n+1)+2`
-/

namespace A089362.P14159603233805737843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1) + 2

end

end A089362.P14159603233805737843

/-! ## A089362.P14928297027971184697

`A076597(n+1)+1`
-/

namespace A089362.P14928297027971184697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076597 (n + 1) + 1

end

end A089362.P14928297027971184697

/-! ## A089362.P8790249092241375718

`A045546(n+1)+3`
-/

namespace A089362.P8790249092241375718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1) + 3

end

end A089362.P8790249092241375718

/-! ## A089362.P14018616671447823369

`A094210(n+1)+4`
-/

namespace A089362.P14018616671447823369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1) + 4

end

end A089362.P14018616671447823369

/-! ## A089362.P15767394009520402566

`(A088502(n+1)+5)/2`
-/

namespace A089362.P15767394009520402566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088502 (n + 1) + 5 : ℚ) / 2

end

end A089362.P15767394009520402566

/-! ## A089362.P12842518643330532082

`floor(sqrt(A002327(n+1)))+3`
-/

namespace A089362.P12842518643330532082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A002327 (n + 1)) + 3

end

end A089362.P12842518643330532082

/-! ## A089362.P17836897373030197123

`round(sqrt(A110013(n+1))/2)+2`
-/

namespace A089362.P17836897373030197123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A110013 (n + 1) : ℝ) / 2) + 2

end

end A089362.P17836897373030197123

/-! ## A089362.P14957955689200597989

`A014682(A088502(n+1)+1)+2`
-/

namespace A089362.P14957955689200597989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A088502 (n + 1) + 1).toNat + 2

end

end A089362.P14957955689200597989

/-! ## A089362.P6335040668263247680

`A009056(A002328(n+1))`
-/

namespace A089362.P6335040668263247680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A002328 (n + 1)).toNat

end

end A089362.P6335040668263247680

/-! ## A089362.P17977116693748155670

`A009005(A045546(n+1))`
-/

namespace A089362.P17977116693748155670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009005 (A045546 (n + 1)).toNat

end

end A089362.P17977116693748155670

/-! ## A089362.P15089911492044918303

`A020725(A076597(n+1))`
-/

namespace A089362.P15089911492044918303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A076597 (n + 1)).toNat

end

end A089362.P15089911492044918303

/-! ## A089362.P1389564147021595851

`A020705(A094210(n+1))`
-/

namespace A089362.P1389564147021595851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (A094210 (n + 1)).toNat

end

end A089362.P1389564147021595851

/-! ## A089362.P9590534128970687986

`A009056(eq[2, A278247(n)]+2)`
-/

namespace A089362.P9590534128970687986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A089362.P9590534128970687986

/-! ## A089362.P10420775470808351422

`A052938(A088502(n+1))`
-/

namespace A089362.P10420775470808351422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A088502 (n + 1)).toNat

end

end A089362.P10420775470808351422

/-! ## A089362.P12679002621238018214

`A008619(A088502(n+1)+1)+1`
-/

namespace A089362.P12679002621238018214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A088502 (n + 1) + 1).toNat + 1

end

end A089362.P12679002621238018214

/-! ## A089362.P17537206546576298388

`A097065(A088502(n+1)+1)+1`
-/

namespace A089362.P17537206546576298388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097065 (A088502 (n + 1) + 1).toNat + 1

end

end A089362.P17537206546576298388

/-! ## A089362.P11424631697356349157

`A004524(A088502(n+1)+2)+2`
-/

namespace A089362.P11424631697356349157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A088502 (n + 1) + 2).toNat + 2

end

end A089362.P11424631697356349157

/-! ## A089362.P15570535540057935175

`floor(sqrt(p?[(n+1)²+n]))+3`
-/

namespace A089362.P15570535540057935175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + 3

end

end A089362.P15570535540057935175

/-! ## A089362.P18023719536034244908

`ceil(sqrt(p?[(n+1)²+n]))+2`
-/

namespace A089362.P18023719536034244908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ)⌉ + 2

end

end A089362.P18023719536034244908

/-! ## A089362.P17171323243557297517

`round(sqrt(p?[(n+1)²+n]))+3`
-/

namespace A089362.P17171323243557297517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ)) + 3

end

end A089362.P17171323243557297517

/-!
# A089363: Numbers of pairs (i, j), i, j > 1, such that i^j <= 10^n.

The programs for A089363, there is no canonical definition to state claims against.
-/

/-! ## A089363.P11998548145714145591

`A089580(n+1)+A032741(n+1)`
-/

namespace A089363.P11998548145714145591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089580 (n + 1) + A032741 (n + 1)

end

end A089363.P11998548145714145591

/-! ## A089363.P1260256330399113777

`Δ[A006218(n)]+A089580(n+1)-1`
-/

namespace A089363.P1260256330399113777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A089580 (n + 1) - 1)

end

end A089363.P1260256330399113777

/-! ## A089363.P11314792919792559795

`A000005(n+1)+A089580(n+1)-1`
-/

namespace A089363.P11314792919792559795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A089580 (n + 1) - 1)

end

end A089363.P11314792919792559795

/-! ## A089363.P3527857887405406039

`A089580(n+1)+A023443(A000005(n+1))`
-/

namespace A089363.P3527857887405406039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089580 (n + 1) + A023443 (A000005 (n + 1)).toNat

end

end A089363.P3527857887405406039

/-!
# A089364: Smallest prime whose product of digits is an n-th power.

The programs for A089364, there is no canonical definition to state claims against.
-/

/-! ## A089364.P5081919688277016913

`record[A088653(n)]%A164926(3*n+2)`
-/

namespace A089364.P5081919688277016913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A164926 (3 * n + 2))

end

end A089364.P5081919688277016913

/-!
# A089365: Smallest prime whose product of digits is 2^n.

The programs for A089365, there is no canonical definition to state claims against.
-/

/-! ## A089365.P10329774513479717664

`A341634(A071604(2^n))`
-/

namespace A089365.P10329774513479717664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341634 (A071604 (2 ^ n)).toNat

end

end A089365.P10329774513479717664

/-! ## A089365.P15335545667785628908

`A107698(2^n)`
-/

namespace A089365.P15335545667785628908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107698 (2 ^ n)

end

end A089365.P15335545667785628908

/-! ## A089365.P11018179009012402127

`p?[∑{d}[n+1, #%2]*A107698(n+1)]`
-/

namespace A089365.P11018179009012402127
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d % 2 : ℕ) : ℤ) * A107698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089365.P11018179009012402127

/-!
# A089367: Smallest prime p such that np +1 is a prime, or 0 if no such prime exists.

The programs for A089367, there is no canonical definition to state claims against.
-/

/-! ## A089367.P14375502527036513977

`∑{p}[A376579(n+1), #]`
-/

namespace A089367.P14375502527036513977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A089367.P14375502527036513977

/-! ## A089367.P10168624465892784637

`A014262(ceil(2^(n-1)))+ceil(∏{e}[n+1, #+1]/2)`
-/

namespace A089367.P10168624465892784637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014262 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat + ⌈((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2⌉

end

end A089367.P10168624465892784637

/-! ## A089367.P179590503761804981

`A160692(3^A214123(n+2))`
-/

namespace A089367.P179590503761804981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160692 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A214123 (n + 2) : ℤ))).toNat

end

end A089367.P179590503761804981

/-! ## A089367.P9277924820482597551

`A300817(A214123(n+2)^6)`
-/

namespace A089367.P9277924820482597551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 (A214123 (n + 2) ^ 6).toNat

end

end A089367.P9277924820482597551

/-! ## A089367.P6559805316239935461

`A135356(A214123(n+2)!²)`
-/

namespace A089367.P6559805316239935461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135356 (Nat.factorial (A214123 (n + 2)).toNat ^ 2)

end

end A089367.P6559805316239935461

/-!
# A089368: Least k such that 2*pi(n) = pi(n+k), where pi(n) = number of primes up to n. (The number of primes between 1 to n is the same as the number of primes between n+1 and n+k.)

The programs for A089368, there is no canonical definition to state claims against.
-/

/-! ## A089368.P18239187836126480747

`A073881(n+1)-(n+1)`
-/

namespace A089368.P18239187836126480747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073881 (n + 1) - (n + 1 : ℤ)

end

end A089368.P18239187836126480747

/-! ## A089368.P2037010980996941698

`A158611(2*∑[C(2, ∑{e}[n+1, #+1])])-(n+1)`
-/

namespace A089368.P2037010980996941698
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (2 * (∑ j ∈ Finset.range (n + 1), f1 j)) - (n + 1 : ℤ)

end

end A089368.P2037010980996941698

/-! ## A089368.P17045286729829984964

`A045974(A136548(n+2))-(n+1)`
-/

namespace A089368.P17045286729829984964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045974 (A136548 (n + 2)).toNat - (n + 1 : ℤ)

end

end A089368.P17045286729829984964

/-! ## A089368.P8930211477864750593

`A158611(2*A036234(n+1))-(n+1)`
-/

namespace A089368.P8930211477864750593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (2 * A036234 (n + 1)).toNat - (n + 1 : ℤ)

end

end A089368.P8930211477864750593

/-! ## A089368.P16398964589734034170

`A028815(2*A000720(n+1))-(n+2)`
-/

namespace A089368.P16398964589734034170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (2 * A000720 (n + 1)).toNat - (n + 2 : ℤ)

end

end A089368.P16398964589734034170

/-! ## A089368.P12131803717768174193

`A008578(∑[A109810((n+1)²)])-(n+1)`
-/

namespace A089368.P12131803717768174193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109810 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n + 1 : ℤ)

end

end A089368.P12131803717768174193

/-! ## A089368.P8899079179052694159

`A008578(∑[A178254((n+1)²)])-(n+1)`
-/

namespace A089368.P8899079179052694159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178254 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n + 1 : ℤ)

end

end A089368.P8899079179052694159

/-! ## A089368.P4237430307225533230

`A028815(∑[2*A010051(n+1)])-(n+2)`
-/

namespace A089368.P4237430307225533230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n + 2 : ℤ)

end

end A089368.P4237430307225533230

/-! ## A089368.P14250237374725731611

`A008578(2*A000720(n+1)+1)-(n+1)`
-/

namespace A089368.P14250237374725731611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (2 * A000720 (n + 1) + 1).toNat - (n + 1 : ℤ)

end

end A089368.P14250237374725731611

/-! ## A089368.P8434783463793735547

`A064555(2*A000720(n+1)+1)-(n+1)`
-/

namespace A089368.P8434783463793735547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064555 (2 * A000720 (n + 1) + 1).toNat - (n + 1 : ℤ)

end

end A089368.P8434783463793735547

/-!
# A089369: Begin with n and place (n-1) on the least significant side, place (n-2) on the most significant side and so on until a 1 is placed.

The programs for A089369, there is no canonical definition to state claims against.
-/

/-! ## A089369.P4610617053127188737

`A004086(A089370(n+1))`
-/

namespace A089369.P4610617053127188737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A089370 (n + 1)).toNat

end

end A089369.P4610617053127188737

/-!
# A089370: Begin with n and place (n-1) on the most significant side, place (n-2) on the least significant side and so on until a 1 is placed.

The programs for A089370, there is no canonical definition to state claims against.
-/

/-! ## A089370.P16408301731757413462

`A004086(A089369(n+1))`
-/

namespace A089370.P16408301731757413462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A089369 (n + 1)).toNat

end

end A089370.P16408301731757413462

/-!
# A089371: Number of divisors of n that do not exceed the abundance of n.

The programs for A089371, there is no canonical definition to state claims against.
-/

/-! ## A089371.P7044382019313347242

`A034968(lcm(A004526(n), A091234(n+1)))`
-/

namespace A089371.P7044382019313347242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (Int.lcm (A004526 n) (A091234 (n + 1)))

end

end A089371.P7044382019313347242

/-! ## A089371.P3356175602773161509

`A318440(A319254(n+1)^A088722(n+1))`
-/

namespace A089371.P3356175602773161509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318440 (SequenceMachineLib.roundAway ((A319254 (n + 1) : ℚ) ^ (A088722 (n + 1) : ℤ))).toNat

end

end A089371.P3356175602773161509

/-! ## A089371.P18277797305596060245

`A294937(n+1)*A334948(A254107(3*(n+1)))`
-/

namespace A089371.P18277797305596060245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294937 (n + 1) * A334948 (A254107 (3 * (n + 1))).toNat

end

end A089371.P18277797305596060245

/-! ## A089371.P1048231376447008321

`char[A005101(n+1)-1]*A334948(A254107(3*(n+1)))`
-/

namespace A089371.P1048231376447008321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A334948 (A254107 (3 * (n + 1))).toNat

end

end A089371.P1048231376447008321

/-!
# A089372: Number of Motzkin paths of length n with no peaks at level 1.

The programs for A089372, there is no canonical definition to state claims against.
-/

/-! ## A089372.P651598403323491817

`A097611(∑[ceil(n/2)])`
-/

namespace A089372.P651598403323491817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097611 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A089372.P651598403323491817

/-! ## A089372.P7897568335753101474

`A097611(A182531(n+1))+A025466(n)`
-/

namespace A089372.P7897568335753101474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097611 (A182531 (n + 1)).toNat + A025466 n

end

end A089372.P7897568335753101474

/-! ## A089372.P17131031087350826284

`A185284(n)+A097611(A182531(n+1))`
-/

namespace A089372.P17131031087350826284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A097611 (A182531 (n + 1)).toNat

end

end A089372.P17131031087350826284

/-! ## A089372.P3685333408978721703

`A097611(A182531(n+1))%A238111(n)`
-/

namespace A089372.P3685333408978721703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097611 (A182531 (n + 1)).toNat) (A238111 n)

end

end A089372.P3685333408978721703

/-! ## A089372.P7836217878777674217

`gcd(A000038(n), A097611(A182531(n+1)))`
-/

namespace A089372.P7836217878777674217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A097611 (A182531 (n + 1)).toNat)

end

end A089372.P7836217878777674217

/-!
# A089374: Numbers n such that the concatenation (in descending order) of all the divisors of n, with 1 in the least significant position, is prime (or 1).

The programs for A089374, there is no canonical definition to state claims against.
-/

/-! ## A089374.P1837503784316208463

`A164921(n+1)+A000005(A007097(n))`
-/

namespace A089374.P1837503784316208463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164921 (n + 1) + A000005 (A007097 n).toNat

end

end A089374.P1837503784316208463

/-! ## A089374.P18124791287941146108

`A164921(n+1)+A020639(A000984(n))`
-/

namespace A089374.P18124791287941146108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164921 (n + 1) + A020639 (A000984 n).toNat

end

end A089374.P18124791287941146108

/-! ## A089374.P5494120985737309261

`A164921(n+1)+A020639(A007070(n))`
-/

namespace A089374.P5494120985737309261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164921 (n + 1) + A020639 (A007070 n).toNat

end

end A089374.P5494120985737309261

/-! ## A089374.P1075818415902314969

`A164921(n+1)+A020639(A104934(n))`
-/

namespace A089374.P1075818415902314969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164921 (n + 1) + A020639 (A104934 n).toNat

end

end A089374.P1075818415902314969

/-! ## A089374.P16186252012120824402

`A164921(n+1)+A020639(A155116(n))`
-/

namespace A089374.P16186252012120824402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164921 (n + 1) + A020639 (A155116 n).toNat

end

end A089374.P16186252012120824402

/-!
# A089376: Primes of the form k^2 - 7*k + 7.

The programs for A089376, there is no canonical definition to state claims against.
-/

/-! ## A089376.P17076266228151983045

`A082111(A089373(n+2)-6)`
-/

namespace A089376.P17076266228151983045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082111 (A089373 (n + 2) - 6).toNat

end

end A089376.P17076266228151983045

/-! ## A089376.P6703838185997626303

`p?[∑[2*n]-5]`
-/

namespace A089376.P6703838185997626303
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089376.P6703838185997626303

/-! ## A089376.P6730186611236069516

`or(1, p?[n²-5+n])`
-/

namespace A089376.P6730186611236069516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 5 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A089376.P6730186611236069516

/-! ## A089376.P3779209952635355908

`∏{d}[p?[n²-5+n], #]`
-/

namespace A089376.P3779209952635355908
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 5 + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A089376.P3779209952635355908

/-! ## A089376.P16440862202421791561

`∑{p}[p?[n²-5+n], #]`
-/

namespace A089376.P16440862202421791561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 5 + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A089376.P16440862202421791561

/-! ## A089376.P17116007653638936326

`∏{p}[p?[n²-5+n], #]`
-/

namespace A089376.P17116007653638936326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 5 + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A089376.P17116007653638936326

/-! ## A089376.P10044984069592905379

`root(p?[n²-5+n], 2)²`
-/

namespace A089376.P10044984069592905379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 5 + (n : ℤ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A089376.P10044984069592905379

/-! ## A089376.P2350505577514435956

`abs(1-p?[n*(n+5)+1])+1`
-/

namespace A089376.P2350505577514435956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 5) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)| + 1

end

end A089376.P2350505577514435956

/-! ## A089376.P8138623367780702310

`abs(2-∑{d}[p?[A002378(n+1)-5], #])+1`
-/

namespace A089376.P8138623367780702310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (n + 1) - 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ)| + 1

end

end A089376.P8138623367780702310

/-! ## A089376.P2306569776374276658

`record[p?[A082111(A025480(n))]]`
-/

namespace A089376.P2306569776374276658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082111 (A025480 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089376.P2306569776374276658

/-! ## A089376.P11898037524253112840

`p?[A082111(n)]%A002149(n)`
-/

namespace A089376.P11898037524253112840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082111 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A002149 n)

end

end A089376.P11898037524253112840

/-! ## A089376.P17070763988711893347

`lcm(p?[A082111(n)], A033999(n))`
-/

namespace A089376.P17070763988711893347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082111 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A033999 n)

end

end A089376.P17070763988711893347

/-! ## A089376.P5926719425845782515

`record[p?[A082111(A304112(n+1))]]`
-/

namespace A089376.P5926719425845782515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082111 (A304112 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089376.P5926719425845782515

/-! ## A089376.P13273324095472960203

`record[p?[A082111(A026238(n+2))]]`
-/

namespace A089376.P13273324095472960203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082111 (A026238 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089376.P13273324095472960203

/-! ## A089376.P116727446420834205

`A000027(p?[A082111(n)])`
-/

namespace A089376.P116727446420834205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082111 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A089376.P116727446420834205

/-! ## A089376.P11684813907505885881

`∩[A139492(n+1), A082111(n)]`
-/

namespace A089376.P11684813907505885881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082111 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089376.P11684813907505885881

/-!
# A089377: Numbers whose product of digits +1 and -1 gives twin prime pairs.

The programs for A089377, the canonical program `A089377.P16444229647022844988` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089377 has offset 1).

The definition of A089377 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3915 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089377.P16444229647022844988

`∩[A081988(n+1), A244607(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A089377

/-- `∩[A081988(n+1), A244607(n+1)]` -/
def P16444229647022844988.Spec : Prop :=
  ∀ n, (P16444229647022844988.a n : ℤ) = A089377 (n + 1)

theorem P16444229647022844988.correct : P16444229647022844988.Spec := by
  intro n
  simp only [A089377, Nat.add_sub_cancel]

end A089377

/-! ## A089377.P1686053432162917855

`eq[1, A325142(abs(A187844(n)))]`
-/

namespace A089377.P1686053432162917855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 |A187844 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089377.P1686053432162917855

namespace A089377

/-- `eq[1, A325142(abs(A187844(n)))]` -/
def P1686053432162917855.Spec : Prop :=
  ∀ n, (P1686053432162917855.a n : ℤ) = A089377 (n + 1)

end A089377

/-! ## A089377.P6888022796682826470

`eq[1, A325142(A007954(n))]`
-/

namespace A089377.P6888022796682826470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089377.P6888022796682826470

namespace A089377

/-- `eq[1, A325142(A007954(n))]` -/
def P6888022796682826470.Spec : Prop :=
  ∀ n, (P6888022796682826470.a n : ℤ) = A089377 (n + 1)

end A089377

/-! ## A089377.P18427767200891727744

`eq[1, A353464(A007954(n)+1)]`
-/

namespace A089377.P18427767200891727744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353464 (A007954 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089377.P18427767200891727744

namespace A089377

/-- `eq[1, A353464(A007954(n)+1)]` -/
def P18427767200891727744.Spec : Prop :=
  ∀ n, (P18427767200891727744.a n : ℤ) = A089377 (n + 1)

end A089377

/-! ## A089377.P12380830363268948005

`eq[1, A325142(n-A070565(n))]`
-/

namespace A089377.P12380830363268948005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 ((n : ℤ) - A070565 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089377.P12380830363268948005

namespace A089377

/-- `eq[1, A325142(n-A070565(n))]` -/
def P12380830363268948005.Spec : Prop :=
  ∀ n, (P12380830363268948005.a n : ℤ) = A089377 (n + 1)

end A089377

/-! ## A089377.P1653907207337366795

`eq[1, A325142(A230099(n)-n)]`
-/

namespace A089377.P1653907207337366795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (A230099 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089377.P1653907207337366795

namespace A089377

/-- `eq[1, A325142(A230099(n)-n)]` -/
def P1653907207337366795.Spec : Prop :=
  ∀ n, (P1653907207337366795.a n : ℤ) = A089377 (n + 1)

end A089377

/-! ## A089377.P14494545389776542803

`eq[A085064(A051801(n)), A168046(n)]`
-/

namespace A089377.P14494545389776542803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085064 (A051801 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089377.P14494545389776542803

namespace A089377

/-- `eq[A085064(A051801(n)), A168046(n)]` -/
def P14494545389776542803.Spec : Prop :=
  ∀ n, (P14494545389776542803.a n : ℤ) = A089377 (n + 1)

end A089377

/-!
# A089378: Number of one-step transitions between all unlabeled hierarchies of n elements.

The programs for A089378, there is no canonical definition to state claims against.
-/

/-! ## A089378.P13351935892067666571

`record[A271230(A238846(n))]`
-/

namespace A089378.P13351935892067666571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271230 (A238846 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089378.P13351935892067666571

/-!
# A089380: Number of Motzkin paths of length n with no UD, UHD, UHHD, UHHHD, ..., starting at level zero (here H=(1,0), U=(1,1), D=(1,-1)).

The programs for A089380, there is no canonical definition to state claims against.
-/

/-! ## A089380.P3174962792713461465

`A097887(∑[ceil(n/2)])`
-/

namespace A089380.P3174962792713461465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097887 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A089380.P3174962792713461465

/-! ## A089380.P7536346817831431635

`A000267(A014341(n))`
-/

namespace A089380.P7536346817831431635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A014341 n).toNat

end

end A089380.P7536346817831431635

/-! ## A089380.P1489095107738600565

`A122701(A004149(n)+1)`
-/

namespace A089380.P1489095107738600565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122701 (A004149 n + 1).toNat

end

end A089380.P1489095107738600565

/-! ## A089380.P7302081836959321037

`A122701(A126683(n)+1)`
-/

namespace A089380.P7302081836959321037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122701 (A126683 n + 1).toNat

end

end A089380.P7302081836959321037

/-! ## A089380.P13340927216631800635

`A115981(n+1)+A034327(A034348(n+1))`
-/

namespace A089380.P13340927216631800635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115981 (n + 1) + A034327 (A034348 (n + 1)).toNat

end

end A089380.P13340927216631800635

/-!
# A089382: Total number of triangles in all the dissections of a convex (n+3)-gon by nonintersecting diagonals.

The programs for A089382, there is no canonical definition to state claims against.
-/

/-! ## A089382.P5936025065665300014

`A035029(n)-A049608(n)`
-/

namespace A089382.P5936025065665300014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035029 n - A049608 n

end

end A089382.P5936025065665300014

/-! ## A089382.P10686523072886599708

`A062110(A268581(n)+4)`
-/

namespace A089382.P10686523072886599708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062110 (A268581 n + 4).toNat

end

end A089382.P10686523072886599708

/-! ## A089382.P4752744641946279404

`A062110(A005408((n+2)²))`
-/

namespace A089382.P4752744641946279404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062110 (A005408 ((n + 2) ^ 2)).toNat

end

end A089382.P4752744641946279404

/-! ## A089382.P2904464175622886198

`A105306(A001844(n+1)+1)`
-/

namespace A089382.P2904464175622886198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (A001844 (n + 1) + 1).toNat

end

end A089382.P2904464175622886198

/-! ## A089382.P11934028268645121153

`A105306(A099776(n+1)+1)`
-/

namespace A089382.P11934028268645121153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (A099776 (n + 1) + 1).toNat

end

end A089382.P11934028268645121153

/-! ## A089382.P8953235366502774361

`A105306(A046092(n+1)+2)`
-/

namespace A089382.P8953235366502774361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (A046092 (n + 1) + 2).toNat

end

end A089382.P8953235366502774361

/-! ## A089382.P15305667265535593394

`A062110(A167614(2*(n+1))+n)`
-/

namespace A089382.P15305667265535593394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062110 (A167614 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A089382.P15305667265535593394

/-! ## A089382.P5318483536710743574

`A105306(A167614(2*n+1)+n)`
-/

namespace A089382.P5318483536710743574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (A167614 (2 * n + 1) + (n : ℤ)).toNat

end

end A089382.P5318483536710743574

/-! ## A089382.P11559217022384448068

`A105306(A016825(Δ[A000292(n)]))`
-/

namespace A089382.P11559217022384448068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (A016825 (f1 (n + 1) - f1 n).toNat).toNat

end

end A089382.P11559217022384448068

/-! ## A089382.P11213894698732224271

`A160232(∑[4*(n+1)])`
-/

namespace A089382.P11213894698732224271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160232 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A089382.P11213894698732224271

/-!
# A089383: Number of peaks at even level in all Schroeder paths (i.e., consisting of steps U=(1,1), D=(1,-1), H=(2,0) and never going below the axis) from (0,0) to (2n+4,0).

The programs for A089383, the canonical program `A089383.P16769992240081267882` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089383 has offset 0).

The definition of A089383 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089383.P16769992240081267882

`∑[A026002(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A089383

/-- `∑[A026002(n+1)]` -/
def P16769992240081267882.Spec : Prop :=
  ∀ n, P16769992240081267882.a n = A089383 n

theorem P16769992240081267882.correct : P16769992240081267882.Spec := by
  intro n
  simp only [A089383]

end A089383

/-! ## A089383.P8732323715990556405

`Δ[A226996(n+1)]`
-/

namespace A089383.P8732323715990556405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A089383.P8732323715990556405

namespace A089383

/-- `Δ[A226996(n+1)]` -/
def P8732323715990556405.Spec : Prop :=
  ∀ n, P8732323715990556405.a n = A089383 n

end A089383

/-! ## A089383.P8486656267557065720

`A226996(n+2)-A226996(n+1)`
-/

namespace A089383.P8486656267557065720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226996 (n + 2) - A226996 (n + 1)

end

end A089383.P8486656267557065720

namespace A089383

/-- `A226996(n+2)-A226996(n+1)` -/
def P8486656267557065720.Spec : Prop :=
  ∀ n, P8486656267557065720.a n = A089383 n

end A089383

/-! ## A089383.P2054484577843672370

`∑[A001850(n+1)-A006318(n+1)]`
-/

namespace A089383.P2054484577843672370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 (n + 1) - A006318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089383.P2054484577843672370

namespace A089383

/-- `∑[A001850(n+1)-A006318(n+1)]` -/
def P2054484577843672370.Spec : Prop :=
  ∀ n, P2054484577843672370.a n = A089383 n

end A089383

/-! ## A089383.P10543695504829056403

`∑[A085403(n+2)+A001850(n+1)]`
-/

namespace A089383.P10543695504829056403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085403 (n + 2) + A001850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089383.P10543695504829056403

namespace A089383

/-- `∑[A085403(n+2)+A001850(n+1)]` -/
def P10543695504829056403.Spec : Prop :=
  ∀ n, P10543695504829056403.a n = A089383 n

end A089383

/-! ## A089383.P7725884323368590622

`A002002(n+2)-A089165(n+1)`
-/

namespace A089383.P7725884323368590622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 (n + 2) - A089165 (n + 1)

end

end A089383.P7725884323368590622

namespace A089383

/-- `A002002(n+2)-A089165(n+1)` -/
def P7725884323368590622.Spec : Prop :=
  ∀ n, P7725884323368590622.a n = A089383 n

end A089383

/-! ## A089383.P15351074653309496842

`∑[A297191((n+1)²+n)]`
-/

namespace A089383.P15351074653309496842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297191 ((n + 1) ^ 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089383.P15351074653309496842

namespace A089383

/-- `∑[A297191((n+1)²+n)]` -/
def P15351074653309496842.Spec : Prop :=
  ∀ n, P15351074653309496842.a n = A089383 n

end A089383

/-! ## A089383.P8390952247227044122

`A297192(∑[n+2]-1)+a(n-1)` with `a(0)=1`
-/

namespace A089383.P8390952247227044122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A297192 (∑ j ∈ Finset.range (n + 1), f1 j - 1) + a (n - 1)

end

end A089383.P8390952247227044122

namespace A089383

/-- `A297192(∑[n+2]-1)+a(n-1)` -/
def P8390952247227044122.Spec : Prop :=
  ∀ n, P8390952247227044122.a n = A089383 n

end A089383

/-! ## A089383.P4438542120555553061

`∑[A297192(A007401(∑[n+1]))]`
-/

namespace A089383.P4438542120555553061
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297192 (A007401 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089383.P4438542120555553061

namespace A089383

/-- `∑[A297192(A007401(∑[n+1]))]` -/
def P4438542120555553061.Spec : Prop :=
  ∀ n, P4438542120555553061.a n = A089383 n

end A089383

/-! ## A089383.P3700657109799015488

`∑[A297192(A005843(n)+A000124(n))]`
-/

namespace A089383.P3700657109799015488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297192 (A005843 n + A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089383.P3700657109799015488

namespace A089383

/-- `∑[A297192(A005843(n)+A000124(n))]` -/
def P3700657109799015488.Spec : Prop :=
  ∀ n, P3700657109799015488.a n = A089383 n

end A089383

/-!
# A089384: Greatest squarefree proper divisor of n, a(1) = 1.

The programs for A089384, there is no canonical definition to state claims against.
-/

/-! ## A089384.P16412072102768671704

`A008966(n+1)*A032742(n+1)+(1-A008966(n+1))*A007947(n+1)`
-/

namespace A089384.P16412072102768671704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A032742 (n + 1) + (1 - A008966 (n + 1)) * A007947 (n + 1)

end

end A089384.P16412072102768671704

/-! ## A089384.P17132062439161974229

`∏{p}[A032742(A089247(n+1)), #]`
-/

namespace A089384.P17132062439161974229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A089247 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A089384.P17132062439161974229

/-! ## A089384.P16785475086290790479

`A007947(A089247(n+1)/A020639(n+1))`
-/

namespace A089384.P16785475086290790479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway ((A089247 (n + 1) : ℚ) / (A020639 (n + 1) : ℚ))).toNat

end

end A089384.P16785475086290790479

/-! ## A089384.P16606239444188940023

`gcd(A007947(n+1), A055615(A032742(n+1)))`
-/

namespace A089384.P16606239444188940023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007947 (n + 1)) (A055615 (A032742 (n + 1)).toNat)

end

end A089384.P16606239444188940023

/-! ## A089384.P16088329471005766175

`A032742((2-A008966(n+1))*A007947(n+1))`
-/

namespace A089384.P16088329471005766175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 ((2 - A008966 (n + 1)) * A007947 (n + 1)).toNat

end

end A089384.P16088329471005766175

/-! ## A089384.P11553664614765393405

`A007947((A007947(n+1)-1)%A032742(n+1)+1)`
-/

namespace A089384.P11553664614765393405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (Int.tmod (A007947 (n + 1) - 1) (A032742 (n + 1)) + 1).toNat

end

end A089384.P11553664614765393405

/-! ## A089384.P5095485247073510900

`A366521((n+1)*A032742(n+1))`
-/

namespace A089384.P5095485247073510900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366521 ((n + 1 : ℤ) * A032742 (n + 1)).toNat

end

end A089384.P5095485247073510900

/-! ## A089384.P8730237641732389419

`A366522((n+1)*A032742(n+1))`
-/

namespace A089384.P8730237641732389419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366522 ((n + 1 : ℤ) * A032742 (n + 1)).toNat

end

end A089384.P8730237641732389419

/-! ## A089384.P16163899007596438734

`A366522(A140651(n+1))`
-/

namespace A089384.P16163899007596438734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366522 (A140651 (n + 1)).toNat

end

end A089384.P16163899007596438734

/-! ## A089384.P16486536023195793243

`A366522(A170826(n+1))`
-/

namespace A089384.P16486536023195793243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366522 (A170826 (n + 1)).toNat

end

end A089384.P16486536023195793243

/-! ## A089384.P3151950905772576998

`A366522(A103390(n+2))`
-/

namespace A089384.P3151950905772576998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366522 (A103390 (n + 2)).toNat

end

end A089384.P3151950905772576998

/-! ## A089384.P8608660123665648019

`A366522((n+1)²)`
-/

namespace A089384.P8608660123665648019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366522 ((n + 1) ^ 2)

end

end A089384.P8608660123665648019

/-! ## A089384.P7178536555959637725

`A366521(A032742((n+1)²))`
-/

namespace A089384.P7178536555959637725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366521 (A032742 ((n + 1) ^ 2)).toNat

end

end A089384.P7178536555959637725

/-!
# A089385: Expansion of Product_{k>0} (1 + x^k) * (1 - x^(2*k)) / (1 + x^(4*k)) in powers of x.

The programs for A089385, there is no canonical definition to state claims against.
-/

/-! ## A089385.P17136091169025178563

`A165481(A007909(n)*A040051(n))`
-/

namespace A089385.P17136091169025178563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165481 (A007909 n * A040051 n).toNat

end

end A089385.P17136091169025178563

/-! ## A089385.P171820482286944785

`A040051(n)*A057077(A134512(n))`
-/

namespace A089385.P171820482286944785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n * A057077 (A134512 n).toNat

end

end A089385.P171820482286944785

/-! ## A089385.P7075444668234032075

`A056594(A056898(A001255(n))%A258439(n))`
-/

namespace A089385.P7075444668234032075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (Int.tmod (A056898 (A001255 n).toNat) (A258439 n)).toNat

end

end A089385.P7075444668234032075

/-!
# A089386: Smallest number with digital product = 10^n.

The programs for A089386, there is no canonical definition to state claims against.
-/

/-! ## A089386.P16861385802095404309

`A280249(A106600(n))`
-/

namespace A089386.P16861385802095404309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280249 (A106600 n).toNat

end

end A089386.P16861385802095404309

/-! ## A089386.P5636596410764024150

`A280249(∑[A085630(n)]+1)`
-/

namespace A089386.P5636596410764024150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085630 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280249 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A089386.P5636596410764024150

/-! ## A089386.P5757060142230019026

`A280249(∑[A085630(n)^A178334(n)])`
-/

namespace A089386.P5757060142230019026
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085630 n : ℚ) ^ (A178334 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280249 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A089386.P5757060142230019026

/-!
# A089387: Number of Schroeder paths of semilength n (i.e., lattice paths from (0,0) to (2n,0), with steps H=(2,0), U=(1,1) and D(1,-1) and not going below the x-axis) with no UD, UHD, UHHD, UHHHD, ... starting at level zero.

The programs for A089387, there is no canonical definition to state claims against.
-/

/-! ## A089387.P13247268745328645606

`A101281(∑[n])`
-/

namespace A089387.P13247268745328645606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101281 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A089387.P13247268745328645606

/-! ## A089387.P4177907845867755646

`A101281(A000217(n))+char[15]`
-/

namespace A089387.P4177907845867755646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101281 (A000217 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A089387.P4177907845867755646

/-! ## A089387.P5954591965468314056

`A297239(n+1)+A101281(n²-C(n, 2))`
-/

namespace A089387.P5954591965468314056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297239 (n + 1) + A101281 (n ^ 2 - Nat.choose n 2)

end

end A089387.P5954591965468314056

/-! ## A089387.P16515361901937677907

`A101281(n²-C(n, 2))/A300909(n+1)`
-/

namespace A089387.P16515361901937677907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101281 (n ^ 2 - Nat.choose n 2) : ℚ) / (A300909 (n + 1) : ℚ)

end

end A089387.P16515361901937677907

/-! ## A089387.P1940454495810817939

`A101281(n²-C(n, 2))%A140250(n+1)`
-/

namespace A089387.P1940454495810817939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101281 (n ^ 2 - Nat.choose n 2)) (A140250 (n + 1))

end

end A089387.P1940454495810817939

/-!
# A089389: Sum of the smallest and the largest nontrivial divisor of n or 0 if n is 1 or a prime.

The programs for A089389, there is no canonical definition to state claims against.
-/

/-! ## A089389.P145254289155909655

`A111234(n+1)%(n+2)`
-/

namespace A089389.P145254289155909655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111234 (n + 1)) (n + 2 : ℤ)

end

end A089389.P145254289155909655

/-! ## A089389.P8529335863115674875

`A066247(n+1)*A111234(n+1)`
-/

namespace A089389.P8529335863115674875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 1) * A111234 (n + 1)

end

end A089389.P8529335863115674875

/-! ## A089389.P14930630805080373821

`lcm(A111234(n+1), A182936(n+1))`
-/

namespace A089389.P14930630805080373821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A111234 (n + 1)) (A182936 (n + 1))

end

end A089389.P14930630805080373821

/-! ## A089389.P17932615617179268009

`(1-A080339(n+1))*A111234(n+1)`
-/

namespace A089389.P17932615617179268009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A080339 (n + 1)) * A111234 (n + 1)

end

end A089389.P17932615617179268009

/-! ## A089389.P15781157741412037250

`A003415(A014673(n+1))*A111234(n+1)`
-/

namespace A089389.P15781157741412037250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A014673 (n + 1)).toNat * A111234 (n + 1)

end

end A089389.P15781157741412037250

/-! ## A089389.P8630527821351273799

`(1-A000007(A048050(n+1)))*A111234(n+1)`
-/

namespace A089389.P8630527821351273799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000007 (A048050 (n + 1)).toNat) * A111234 (n + 1)

end

end A089389.P8630527821351273799

/-! ## A089389.P3527682264381945236

`A000035(A130675(n+1)+1)*A111234(n+1)`
-/

namespace A089389.P3527682264381945236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A130675 (n + 1) + 1).toNat * A111234 (n + 1)

end

end A089389.P3527682264381945236

/-! ## A089389.P279282036841653489

`A134889(n+1)%A139693(n)`
-/

namespace A089389.P279282036841653489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134889 (n + 1)) (A139693 n)

end

end A089389.P279282036841653489

/-! ## A089389.P6042208073841089746

`A066247(n+1)*A134889(n+1)`
-/

namespace A089389.P6042208073841089746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 1) * A134889 (n + 1)

end

end A089389.P6042208073841089746

/-! ## A089389.P3310274340702747454

`(1-A080339(n+1))*A134889(n+1)`
-/

namespace A089389.P3310274340702747454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A080339 (n + 1)) * A134889 (n + 1)

end

end A089389.P3310274340702747454

/-!
# A089391: Primes arising in A089390 as the n-th partial sum.

The programs for A089391, there is no canonical definition to state claims against.
-/

/-! ## A089391.P14408169620437388740

`p?[∑[A089390(n+1)]]`
-/

namespace A089391.P14408169620437388740
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089390 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089391.P14408169620437388740

/-! ## A089391.P5050398516547565627

`∑[A089390(n+2)]+4`
-/

namespace A089391.P5050398516547565627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089390 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A089391.P5050398516547565627

/-! ## A089391.P10661767734694974960

`A020705(∑[A089390(n+2)])`
-/

namespace A089391.P10661767734694974960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089390 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A089391.P10661767734694974960

/-! ## A089391.P6319897194354697385

`A206770(∑[n+2]+3)`
-/

namespace A089391.P6319897194354697385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206770 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A089391.P6319897194354697385

/-! ## A089391.P6042594607580508386

`A136096(A073620(n+2))`
-/

namespace A089391.P6042594607580508386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136096 (A073620 (n + 2)).toNat

end

end A089391.P6042594607580508386

/-!
# A089392: Magnanimous primes: primes with the property that inserting a "+" in any place between two digits yields a sum which is prime.

The programs for A089392, there is no canonical definition to state claims against.
-/

/-! ## A089392.P16548508106277395556

`p?[A252996(n+1)]`
-/

namespace A089392.P16548508106277395556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089392.P16548508106277395556

/-! ## A089392.P17931060392972164090

`filter[A252996(n+2), A010051(#)]`
-/

namespace A089392.P17931060392972164090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252996 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A089392.P17931060392972164090

/-! ## A089392.P7380291490146513889

`∩[A143260(n+1), A252996(n+1)]`
-/

namespace A089392.P7380291490146513889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089392.P7380291490146513889

/-! ## A089392.P1243962773532969629

`filter[A252996(n+3), A080339(#)]`
-/

namespace A089392.P1243962773532969629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252996 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A089392.P1243962773532969629

/-!
# A089394: Largest n-digit member of A089392, or 0 if there is no such n-digit term.

The programs for A089394, there is no canonical definition to state claims against.
-/

/-! ## A089394.P15457731636541696302

`A001221(2*4^n)*A089392(∑[A211160(n+1)])`
-/

namespace A089394.P15457731636541696302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * 4 ^ n) * A089392 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A089394.P15457731636541696302

/-! ## A089394.P3313353293295687855

`p?[A089392(∑[A211160(n+1)])]`
-/

namespace A089394.P3313353293295687855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211160 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089392 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089394.P3313353293295687855

/-!
# A089395: Prime productive numbers m: Let the digits of m be abcd. Then the numbers bcd*a+1, cd*ab+1, d*abc+1, abcd+1 etc. are all primes. If m is a k-digit number it produces k such primes.

The programs for A089395, there is no canonical definition to state claims against.
-/

/-! ## A089395.P906011673148254627

`record[A089696(n)%A089743(3*n+4)]`
-/

namespace A089395.P906011673148254627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089696 n) (A089743 (3 * n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089395.P906011673148254627

/-! ## A089395.P17220210548856935514

`∏{e}[3^n, A089696(#)]`
-/

namespace A089395.P17220210548856935514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A089696 (Nat.factorization (f1 n) p)

end

end A089395.P17220210548856935514

/-! ## A089395.P2257886889964251321

`A089696(lcm(n, 3^∑{p}[n+1, (#%3)%2]))`
-/

namespace A089395.P2257886889964251321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089696 (Nat.lcm n (3 ^ (∑ p ∈ Nat.primeFactors (f1 n), p % 3 % 2)))

end

end A089395.P2257886889964251321

/-! ## A089395.P3761721040251530469

`A118759(A089696(n))`
-/

namespace A089395.P3761721040251530469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A089696 n).toNat

end

end A089395.P3761721040251530469

/-! ## A089395.P6693415358280936036

`A000188(A089696(n)²)`
-/

namespace A089395.P6693415358280936036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A089696 n ^ 2).toNat

end

end A089395.P6693415358280936036

/-!
# A089396: Smallest n-digit term of A089395.

The programs for A089396, there is no canonical definition to state claims against.
-/

/-! ## A089396.P9024269192594433887

`A006093(A014137(n)*A100702(n))`
-/

namespace A089396.P9024269192594433887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A014137 n * A100702 n).toNat

end

end A089396.P9024269192594433887

/-!
# A089398: a(n) = n-th column sum of binary digits of k*2^(k-1), where summation is over k>=1, without carrying between columns.

The programs for A089398, the canonical program `A089398.P14975224840772739470` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089398 has offset 1).

The definition of A089398 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089398.P3349005269652263138

`A103615(A010078(n+2))`
-/

namespace A089398.P3349005269652263138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103615 (A010078 (n + 2)).toNat

end

end A089398.P3349005269652263138

namespace A089398

/-- `A103615(A010078(n+2))` -/
def P3349005269652263138.Spec : Prop :=
  ∀ n, P3349005269652263138.a n = A089398 (n + 1)

end A089398

/-! ## A089398.P14975224840772739470

`A000120(A103530(n+3)-1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A089398

/-- `A000120(A103530(n+3)-1)` -/
def P14975224840772739470.Spec : Prop :=
  ∀ n, P14975224840772739470.a n = A089398 (n + 1)

theorem P14975224840772739470.correct : P14975224840772739470.Spec := by
  intro n
  simp only [A089398, Nat.add_sub_cancel]

end A089398

/-! ## A089398.P1040441224802329727

`∑[A036987(n)]-A089400(A035327(n+1))`
-/

namespace A089398.P1040441224802329727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A089400 (A035327 (n + 1)).toNat

end

end A089398.P1040441224802329727

namespace A089398

/-- `∑[A036987(n)]-A089400(A035327(n+1))` -/
def P1040441224802329727.Spec : Prop :=
  ∀ n, P1040441224802329727.a n = A089398 (n + 1)

end A089398

/-! ## A089398.P9664966903617385205

`A070939(n+1)-A089400(A035327(n+1))`
-/

namespace A089398.P9664966903617385205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1) - A089400 (A035327 (n + 1)).toNat

end

end A089398.P9664966903617385205

namespace A089398

/-- `A070939(n+1)-A089400(A035327(n+1))` -/
def P9664966903617385205.Spec : Prop :=
  ∀ n, P9664966903617385205.a n = A089398 (n + 1)

end A089398

/-! ## A089398.P11461336498484975819

`∑[1-A105553(n+2)]-A105553(n+2)`
-/

namespace A089398.P11461336498484975819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A105553 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A105553 (n + 2)

end

end A089398.P11461336498484975819

namespace A089398

/-- `∑[1-A105553(n+2)]-A105553(n+2)` -/
def P11461336498484975819.Spec : Prop :=
  ∀ n, P11461336498484975819.a n = A089398 (n + 1)

end A089398

/-! ## A089398.P2471776416575535537

`A000120(A105033(n+1))`
-/

namespace A089398.P2471776416575535537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A105033 (n + 1)).toNat

end

end A089398.P2471776416575535537

namespace A089398

/-- `A000120(A105033(n+1))` -/
def P2471776416575535537.Spec : Prop :=
  ∀ n, P2471776416575535537.a n = A089398 (n + 1)

end A089398

/-! ## A089398.P4226036558237835330

`2-A089401(n+2)+n`
-/

namespace A089398.P4226036558237835330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A089401 (n + 2) + (n : ℤ)

end

end A089398.P4226036558237835330

namespace A089398

/-- `2-A089401(n+2)+n` -/
def P4226036558237835330.Spec : Prop :=
  ∀ n, P4226036558237835330.a n = A089398 (n + 1)

end A089398

