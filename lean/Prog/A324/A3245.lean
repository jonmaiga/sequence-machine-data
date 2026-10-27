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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
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
# A324500: a(n) = denominator of Sum_{d|n} sigma(d)/tau(d) where sigma(k) = the sum of the divisors of k (A000203) and tau(k) = the number of divisors of k (A000005).

The programs for A324500, there is no canonical definition to state claims against.
-/

/-! ## A324500.P2782860150553367662

`A005361(gcd(A144119(n+1)², A015910(n+1)))`
-/

namespace A324500.P2782860150553367662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (Int.gcd (A144119 (n + 1) ^ 2) (A015910 (n + 1)))

end

end A324500.P2782860150553367662

/-! ## A324500.P3663542842736983576

`gcd(A113413(A114538(n+2)), A161455(n+1))`
-/

namespace A324500.P3663542842736983576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A113413 (A114538 (n + 2)).toNat) (A161455 (n + 1))

end

end A324500.P3663542842736983576

/-! ## A324500.P6094993983165125647

`gcd(Δ[A347473(n+3)], A062775(n+1))`
-/

namespace A324500.P6094993983165125647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347473 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A062775 (n + 1))

end

end A324500.P6094993983165125647

/-! ## A324500.P9404576172579742285

`gcd(A006577(A129133(n+1)), A064472(n+1))`
-/

namespace A324500.P9404576172579742285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006577 (A129133 (n + 1)).toNat) (A064472 (n + 1))

end

end A324500.P9404576172579742285

/-! ## A324500.P12832961893244895903

`gcd(A024378(2*(n+1)), A056239(A206863(n+1)))`
-/

namespace A324500.P12832961893244895903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A024378 (2 * (n + 1))) (A056239 (A206863 (n + 1)).toNat)

end

end A324500.P12832961893244895903

/-!
# A324501: a(n) = numerator of Sum_{d|n} (1/pod(d)) where pod(k) = the product of the divisors of k (A007955).

The programs for A324501, the canonical program `A324501.P1716032831025346766` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324501 has offset 1).

The definition of A324501 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324501.P1716032831025346766

`∑{d}[n+1, A007955(n+1)/A007955(#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A324501

/-- `∑{d}[n+1, A007955(n+1)/A007955(#)]` -/
def P1716032831025346766.Spec : Prop :=
  ∀ n, P1716032831025346766.a n = (A324501 (n + 1) : ℚ)

end A324501

/-!
# A324504: a(n) = denominator of Sum_{d|n} (d/tau(d)) where tau(k) = the number of divisors of k (A000005).

The programs for A324504, there is no canonical definition to state claims against.
-/

/-! ## A324504.P9355641208078411006

`gcd(A000027(A076295(n)), A124859(n+1))`
-/

namespace A324504.P9355641208078411006
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (A076295 n).toNat) (A124859 (n + 1))

end

end A324504.P9355641208078411006

/-! ## A324504.P15955857739426250403

`gcd(A052410(A005179(n+1)), A329603(n+1))`
-/

namespace A324504.P15955857739426250403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052410 (A005179 (n + 1)).toNat) (A329603 (n + 1))

end

end A324504.P15955857739426250403

/-!
# A324505: a(n) = numerator of Sum_{d|n} (d/pod(d)) where pod(k) = the product of the divisors of k (A007955).

The programs for A324505, the canonical program `A324505.P18122971594184600049` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324505 has offset 1).

The definition of A324505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324505.P18122971594184600049

`∑{d}[n+1, A007956(n+1)/A007956(#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A324505

/-- `∑{d}[n+1, A007956(n+1)/A007956(#)]` -/
def P18122971594184600049.Spec : Prop :=
  ∀ n, P18122971594184600049.a n = (A324505 (n + 1) : ℚ)

end A324505

/-!
# A324506: a(n) = numerator of Product_{d|n} (d/tau(d)) where tau(k) = the number of divisors of k (A000005).

The programs for A324506, the canonical program `A324506.P94793196211163730` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324506 has offset 1).

The definition of A324506 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3779 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324506.P10646230180226457339

`A007955(n+1)/A211776(n+1)*A324507(n+1)`
-/

namespace A324506.P10646230180226457339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A211776 (n + 1) : ℚ) * (A324507 (n + 1) : ℚ)

end

end A324506.P10646230180226457339

namespace A324506

/-- `A007955(n+1)/A211776(n+1)*A324507(n+1)` -/
def P10646230180226457339.Spec : Prop :=
  ∀ n, P10646230180226457339.a n = (A324506 (n + 1) : ℚ)

end A324506

/-! ## A324506.P94793196211163730

`lcm(A211776(n+1), A324528(n+1))/A211776(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A324506

/-- `lcm(A211776(n+1), A324528(n+1))/A211776(n+1)` -/
def P94793196211163730.Spec : Prop :=
  ∀ n, P94793196211163730.a n = (A324506 (n + 1) : ℚ)

end A324506

/-! ## A324506.P16807504049243189614

`A062758(n+1)/A306705(n+1)*A324507(n+1)`
-/

namespace A324506.P16807504049243189614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062758 (n + 1) : ℚ) / (A306705 (n + 1) : ℚ) * (A324507 (n + 1) : ℚ)

end

end A324506.P16807504049243189614

namespace A324506

/-- `A062758(n+1)/A306705(n+1)*A324507(n+1)` -/
def P16807504049243189614.Spec : Prop :=
  ∀ n, P16807504049243189614.a n = (A324506 (n + 1) : ℚ)

end A324506

/-! ## A324506.P7878292035545765973

`A324507(n+1)*A324980(n+1)/A324987(n+1)`
-/

namespace A324506.P7878292035545765973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324507 (n + 1) * A324980 (n + 1) : ℚ) / (A324987 (n + 1) : ℚ)

end

end A324506.P7878292035545765973

namespace A324506

/-- `A324507(n+1)*A324980(n+1)/A324987(n+1)` -/
def P7878292035545765973.Spec : Prop :=
  ∀ n, P7878292035545765973.a n = (A324506 (n + 1) : ℚ)

end A324506

/-!
# A324507: a(n) = denominator of Product_{d|n} (d/tau(d)) where tau(k) = the number of divisors of k (A000005).

The programs for A324507, the canonical program `A324507.P9101657935171306601` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324507 has offset 1).

The definition of A324507 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324507.P9101657935171306601

`A211776(n+1)/A007955(n+1)*A324506(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A324507

/-- `A211776(n+1)/A007955(n+1)*A324506(n+1)` -/
def P9101657935171306601.Spec : Prop :=
  ∀ n, P9101657935171306601.a n = (A324507 (n + 1) : ℚ)

end A324507

/-! ## A324507.P458208225289564164

`lcm(A211776(n+1), A324528(n+1))/A007955(n+1)`
-/

namespace A324507.P458208225289564164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A211776 (n + 1)) (A324528 (n + 1)) : ℚ) / (A007955 (n + 1) : ℚ)

end

end A324507.P458208225289564164

namespace A324507

/-- `lcm(A211776(n+1), A324528(n+1))/A007955(n+1)` -/
def P458208225289564164.Spec : Prop :=
  ∀ n, P458208225289564164.a n = (A324507 (n + 1) : ℚ)

end A324507

/-! ## A324507.P12407964558312276415

`A306705(n+1)/A062758(n+1)*A324506(n+1)`
-/

namespace A324507.P12407964558312276415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306705 (n + 1) : ℚ) / (A062758 (n + 1) : ℚ) * (A324506 (n + 1) : ℚ)

end

end A324507.P12407964558312276415

namespace A324507

/-- `A306705(n+1)/A062758(n+1)*A324506(n+1)` -/
def P12407964558312276415.Spec : Prop :=
  ∀ n, P12407964558312276415.a n = (A324507 (n + 1) : ℚ)

end A324507

/-! ## A324507.P16787501042909476032

`A324987(n+1)/gcd(A324980(n+1), A324987(n+1))`
-/

namespace A324507.P16787501042909476032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324987 (n + 1) : ℚ) / (Int.gcd (A324980 (n + 1)) (A324987 (n + 1)) : ℚ)

end

end A324507.P16787501042909476032

namespace A324507

/-- `A324987(n+1)/gcd(A324980(n+1), A324987(n+1))` -/
def P16787501042909476032.Spec : Prop :=
  ∀ n, P16787501042909476032.a n = (A324507 (n + 1) : ℚ)

end A324507

/-! ## A324507.P14121914409253937520

`gcd(A323761(n+1)², A000027(A306705(n+1)))`
-/

namespace A324507.P14121914409253937520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A323761 (n + 1) ^ 2) (A000027 (A306705 (n + 1)).toNat)

end

end A324507.P14121914409253937520

namespace A324507

/-- `gcd(A323761(n+1)², A000027(A306705(n+1)))` -/
def P14121914409253937520.Spec : Prop :=
  ∀ n, (P14121914409253937520.a n : ℤ) = A324507 (n + 1)

end A324507

/-!
# A324508: Numbers m such that Product_{d|m} (d/tau(d)) is an integer h where tau(k) = the number of divisors of k (A000005).

The programs for A324508, there is no canonical definition to state claims against.
-/

/-! ## A324508.P4120121937587904075

`eq[1, A324507(n+1)]+1`
-/

namespace A324508.P4120121937587904075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324507 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A324508.P4120121937587904075

/-! ## A324508.P6525432747803841548

`A015906(eq[1, A324507(n+1)])`
-/

namespace A324508.P6525432747803841548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324507 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324508.P6525432747803841548

/-! ## A324508.P7047447319359895545

`record[(2-A324507(n+1))*A000027(n+1)]`
-/

namespace A324508.P7047447319359895545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A324507 (n + 1)) * A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324508.P7047447319359895545

/-! ## A324508.P388724244286118534

`eq[A054977(n), A324507(A028310(n))]`
-/

namespace A324508.P388724244286118534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324507 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A324508.P388724244286118534

/-! ## A324508.P17678183303683353365

`eq[A057427(n), A324507(A028310(n))]`
-/

namespace A324508.P17678183303683353365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324507 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A324508.P17678183303683353365

/-!
# A324509: a(n) = numerator of Product_{d|n} (sigma(d)/tau(d)) where sigma(k) = the sum of the divisors of k (A000203) and tau(k) = the number of divisors of k (A000005).

The programs for A324509, there is no canonical definition to state claims against.
-/

/-! ## A324509.P555616626794031500

`A206032(n+1)/A211776(n+1)*A324510(n+1)`
-/

namespace A324509.P555616626794031500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206032 (n + 1) : ℚ) / (A211776 (n + 1) : ℚ) * (A324510 (n + 1) : ℚ)

end

end A324509.P555616626794031500

/-! ## A324509.P5659976346953461262

`A324980(n+1)/gcd(A306705(n+1), A324980(n+1))`
-/

namespace A324509.P5659976346953461262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324980 (n + 1) : ℚ) / (Int.gcd (A306705 (n + 1)) (A324980 (n + 1)) : ℚ)

end

end A324509.P5659976346953461262

/-! ## A324509.P5739025992447307698

`A325030(n+1)/gcd(A307101(n+1), A325030(n+1))`
-/

namespace A324509.P5739025992447307698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325030 (n + 1) : ℚ) / (Int.gcd (A307101 (n + 1)) (A325030 (n + 1)) : ℚ)

end

end A324509.P5739025992447307698

/-! ## A324509.P2948779932477121734

`A005811(A356942(n))*A038712(n+1)`
-/

namespace A324509.P2948779932477121734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A356942 n).toNat * A038712 (n + 1)

end

end A324509.P2948779932477121734

/-!
# A324510: a(n) = denominator of Product_{d|n} (sigma(d)/tau(d)) where sigma(k) = the sum of the divisors of k (A000203) and tau(k) = the number of divisors of k (A000005).

The programs for A324510, there is no canonical definition to state claims against.
-/

/-! ## A324510.P12495823641319571526

`A211776(n+1)/A206032(n+1)*A324509(n+1)`
-/

namespace A324510.P12495823641319571526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211776 (n + 1) : ℚ) / (A206032 (n + 1) : ℚ) * (A324509 (n + 1) : ℚ)

end

end A324510.P12495823641319571526

/-! ## A324510.P9799894121357301593

`A306705(n+1)/gcd(A306705(n+1), A324980(n+1))`
-/

namespace A324510.P9799894121357301593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306705 (n + 1) : ℚ) / (Int.gcd (A306705 (n + 1)) (A324980 (n + 1)) : ℚ)

end

end A324510.P9799894121357301593

/-! ## A324510.P10209703545667618244

`A307101(n+1)/gcd(A307101(n+1), A325030(n+1))`
-/

namespace A324510.P10209703545667618244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307101 (n + 1) : ℚ) / (Int.gcd (A307101 (n + 1)) (A325030 (n + 1)) : ℚ)

end

end A324510.P10209703545667618244

/-! ## A324510.P1997030992923169079

`A334664(n+1)^A246720(A110880(n))`
-/

namespace A324510.P1997030992923169079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334664 (n + 1) : ℚ) ^ (A246720 (A110880 n).toNat : ℤ)

end

end A324510.P1997030992923169079

/-!
# A324511: Numbers m such that Product_{d|m} (sigma(d)/tau(d)) is an integer h where sigma(k) = the sum of the divisors of k (A000203) and tau(k) = the number of divisors of k (A000005).

The programs for A324511, there is no canonical definition to state claims against.
-/

/-! ## A324511.P17454609426562345693

`eq[1, A324510(n+1)]+1`
-/

namespace A324511.P17454609426562345693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324510 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A324511.P17454609426562345693

/-! ## A324511.P14923678493663604301

`record[A000027(n+1)/A324510(n+1)]`
-/

namespace A324511.P14923678493663604301
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A324510 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324511.P14923678493663604301

/-! ## A324511.P1839550849618920491

`eq[1, A324510(A000038(n)+n)]`
-/

namespace A324511.P1839550849618920491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324510 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324511.P1839550849618920491

/-! ## A324511.P531062415751672005

`record[A028310(n+1)/A324510(n+1)]`
-/

namespace A324511.P531062415751672005
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 (n + 1) : ℚ) / (A324510 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324511.P531062415751672005

/-! ## A324511.P475938187620959598

`record[A008619(2*n)/A324510(n+1)]`
-/

namespace A324511.P475938187620959598
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A324510 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324511.P475938187620959598

/-! ## A324511.P1197190211311117267

`record[A028242(2*n)/A324510(n+1)]`
-/

namespace A324511.P1197190211311117267
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028242 (2 * n) : ℚ) / (A324510 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324511.P1197190211311117267

/-! ## A324511.P8081506547291516996

`record[A000463(A005408(n))/A324510(n+1)]`
-/

namespace A324511.P8081506547291516996
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000463 (A005408 n).toNat : ℚ) / (A324510 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324511.P8081506547291516996

/-! ## A324511.P3003046900943817322

`A003990(record[A000124(n)/A324510(n+1)])`
-/

namespace A324511.P3003046900943817322
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000124 n : ℚ) / (A324510 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003990 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A324511.P3003046900943817322

/-!
# A324512: Number of aperiodic n-gons.

The programs for A324512, there is no canonical definition to state claims against.
-/

/-! ## A324512.P5329588391221373190

`(n+1)*A324513(n+1)`
-/

namespace A324512.P5329588391221373190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A324513 (n + 1)

end

end A324512.P5329588391221373190

/-! ## A324512.P9295095177124950390

`lcm(∏{p}[n+1, #], A324513(A246338(n+1)))`
-/

namespace A324512.P9295095177124950390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) (A324513 (A246338 (n + 1)).toNat)

end

end A324512.P9295095177124950390

/-! ## A324512.P2198498512427239004

`A339626(n)+A259479(A217777(n))`
-/

namespace A324512.P2198498512427239004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339626 n + A259479 (A217777 n).toNat

end

end A324512.P2198498512427239004

/-!
# A324513: Number of aperiodic cycle necklaces with n vertices.

The programs for A324513, there is no canonical definition to state claims against.
-/

/-! ## A324513.P18035785904095425318

`A324512(n+1)/(n+1)`
-/

namespace A324513.P18035785904095425318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324512 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A324513.P18035785904095425318

/-! ## A324513.P8672166705475123674

`abs(A324512(Δ[n²]-n)/(Δ[n²]-n))`
-/

namespace A324513.P8672166705475123674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A324512 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ) : ℚ)|

end

end A324513.P8672166705475123674

/-!
# A324514: Number of aperiodic permutations of {1..n}.

The programs for A324514, there is no canonical definition to state claims against.
-/

/-! ## A324514.P13524480670879695005

`A306669(n+1)*(n+1)`
-/

namespace A324514.P13524480670879695005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306669 (n + 1) * (n + 1 : ℤ)

end

end A324514.P13524480670879695005

/-! ## A324514.P1738987873457942042

`A343488(∑[n+1])`
-/

namespace A324514.P1738987873457942042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343488 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A324514.P1738987873457942042

/-! ## A324514.P17156277844874475972

`A007318(∑[n])*A343488(A025747(n))`
-/

namespace A324514.P17156277844874475972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A343488 (A025747 n).toNat

end

end A324514.P17156277844874475972

/-! ## A324514.P2973642626568528637

`A343488(A025747(n))%A211210(n+2)`
-/

namespace A324514.P2973642626568528637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343488 (A025747 n).toNat) (A211210 (n + 2))

end

end A324514.P2973642626568528637

/-!
# A324515: Numbers > 1 where the maximum prime index minus the minimum prime index equals the number of prime factors minus the number of distinct prime factors.

The programs for A324515, there is no canonical definition to state claims against.
-/

/-! ## A324515.P3857431380961596661

`lt[A051699(n), A109004(A142330(n+1))]`
-/

namespace A324515.P3857431380961596661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 (A142330 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A324515.P3857431380961596661

/-! ## A324515.P14955106940421645689

`A212127(A077168(n)+1)`
-/

namespace A324515.P14955106940421645689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212127 (A077168 n + 1).toNat

end

end A324515.P14955106940421645689

/-! ## A324515.P9678746979523710146

`A212127(A187829(n+2))`
-/

namespace A324515.P9678746979523710146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212127 (A187829 (n + 2)).toNat

end

end A324515.P9678746979523710146

/-! ## A324515.P8544412310751454429

`eq[1, A240672(A353851(n))]`
-/

namespace A324515.P8544412310751454429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240672 (A353851 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324515.P8544412310751454429

/-! ## A324515.P10003189680674723963

`lt[1, A133089(A115118(n))]`
-/

namespace A324515.P10003189680674723963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133089 (A115118 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A324515.P10003189680674723963

/-!
# A324517: Numbers > 1 where the maximum prime index equals the number of prime factors minus the number of distinct prime factors.

The programs for A324517, there is no canonical definition to state claims against.
-/

/-! ## A324517.P3877249876817791008

`A020725(eq[A046660(n+1), A061395(2*(n+1))])`
-/

namespace A324517.P3877249876817791008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A324517.P3877249876817791008

/-! ## A324517.P2828000445030073519

`A065475(eq[A046660(n+1), A061395(2*(n+1))])`
-/

namespace A324517.P2828000445030073519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A324517.P2828000445030073519

/-!
# A324519: Numbers > 1 where the minimum prime index equals the number of prime factors minus the number of distinct prime factors.

The programs for A324519, there is no canonical definition to state claims against.
-/

/-! ## A324519.P16399017913108924069

`eq[A046660(n+1), A117365(n+1)]+1`
-/

namespace A324519.P16399017913108924069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117365 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A324519.P16399017913108924069

/-! ## A324519.P13101262323136577925

`eq[A046660(n+1), A286477(n+1)]+1`
-/

namespace A324519.P13101262323136577925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286477 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A324519.P13101262323136577925

/-! ## A324519.P9363108816137245639

`A020725(eq[A046660(n+1), A286477(n+1)])`
-/

namespace A324519.P9363108816137245639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A324519.P9363108816137245639

/-! ## A324519.P3595288150555185582

`A065475(eq[A046660(n+1), A286477(n+1)])`
-/

namespace A324519.P3595288150555185582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A324519.P3595288150555185582

/-! ## A324519.P11245093842315288383

`A113484(eq[A046660(n+1), A286477(n+1)])`
-/

namespace A324519.P11245093842315288383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A324519.P11245093842315288383

/-!
# A324521: Numbers > 1 where the maximum prime index is less than or equal to the number of prime factors counted with multiplicity.

The programs for A324521, the canonical program `A324521.P9856326808181224407` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324521 has offset 1).

The definition of A324521 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1665 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324521.P9856326808181224407

`record[(n+2)*A331281(n+2)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A324521

/-- `record[(n+2)*A331281(n+2)]` -/
def P9856326808181224407.Spec : Prop :=
  ∀ n, P9856326808181224407.a n = A324521 (n + 1)

theorem P9856326808181224407.correct : P9856326808181224407.Spec := by
  intro n
  simp only [A324521, Nat.add_sub_cancel]

end A324521

/-! ## A324521.P14053220598404539617

`filter[A379051(n+1), A331281(#)]`
-/

namespace A324521.P14053220598404539617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331281 (f1 j).toNat = 1) n)

end

end A324521.P14053220598404539617

namespace A324521

/-- `filter[A379051(n+1), A331281(#)]` -/
def P14053220598404539617.Spec : Prop :=
  ∀ n, P14053220598404539617.a n = A324521 (n + 1)

end A324521

/-! ## A324521.P13114559569693970860

`filter[A286608(n+2), A331281(#)]`
-/

namespace A324521.P13114559569693970860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286608 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331281 (f1 j).toNat = 1) n)

end

end A324521.P13114559569693970860

namespace A324521

/-- `filter[A286608(n+2), A331281(#)]` -/
def P13114559569693970860.Spec : Prop :=
  ∀ n, P13114559569693970860.a n = A324521 (n + 1)

end A324521

/-! ## A324521.P17763100095435859265

`record[(n+2)*A331282(2*(n+2))]`
-/

namespace A324521.P17763100095435859265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A331282 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324521.P17763100095435859265

namespace A324521

/-- `record[(n+2)*A331282(2*(n+2))]` -/
def P17763100095435859265.Spec : Prop :=
  ∀ n, P17763100095435859265.a n = A324521 (n + 1)

end A324521

/-! ## A324521.P17127372132720621546

`filter[A354360(n+2), A331281(#)]`
-/

namespace A324521.P17127372132720621546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354360 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331281 (f1 j).toNat = 1) n)

end

end A324521.P17127372132720621546

namespace A324521

/-- `filter[A354360(n+2), A331281(#)]` -/
def P17127372132720621546.Spec : Prop :=
  ∀ n, P17127372132720621546.a n = A324521 (n + 1)

end A324521

/-! ## A324521.P15225924332235168923

`filter[A246352(n+2), A331281(#)]`
-/

namespace A324521.P15225924332235168923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246352 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331281 (f1 j).toNat = 1) n)

end

end A324521.P15225924332235168923

namespace A324521

/-- `filter[A246352(n+2), A331281(#)]` -/
def P15225924332235168923.Spec : Prop :=
  ∀ n, P15225924332235168923.a n = A324521 (n + 1)

end A324521

/-! ## A324521.P5662756727310864154

`filter[A316350(n+2), A331281(#)]`
-/

namespace A324521.P5662756727310864154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316350 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331281 (f1 j).toNat = 1) n)

end

end A324521.P5662756727310864154

namespace A324521

/-- `filter[A316350(n+2), A331281(#)]` -/
def P5662756727310864154.Spec : Prop :=
  ∀ n, P5662756727310864154.a n = A324521 (n + 1)

end A324521

/-! ## A324521.P9509221040488126443

`filter[A324560(n+1), A331281(#)]`
-/

namespace A324521.P9509221040488126443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324560 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331281 (f1 j).toNat = 1) n)

end

end A324521.P9509221040488126443

namespace A324521

/-- `filter[A324560(n+1), A331281(#)]` -/
def P9509221040488126443.Spec : Prop :=
  ∀ n, P9509221040488126443.a n = A324521 (n + 1)

end A324521

/-! ## A324521.P5710222810972840965

`filter[A253567(n+2), A331281(#)]`
-/

namespace A324521.P5710222810972840965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253567 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331281 (f1 j).toNat = 1) n)

end

end A324521.P5710222810972840965

namespace A324521

/-- `filter[A253567(n+2), A331281(#)]` -/
def P5710222810972840965.Spec : Prop :=
  ∀ n, P5710222810972840965.a n = A324521 (n + 1)

end A324521

/-! ## A324521.P1488315647850051730

`filter[A080672(n+1), A331281(#)]`
-/

namespace A324521.P1488315647850051730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331281 (f1 j).toNat = 1) n)

end

end A324521.P1488315647850051730

namespace A324521

/-- `filter[A080672(n+1), A331281(#)]` -/
def P1488315647850051730.Spec : Prop :=
  ∀ n, P1488315647850051730.a n = A324521 (n + 1)

end A324521

/-! ## A324521.P18173754131644088550

`filter[A101513(n+2), A331281(#)]`
-/

namespace A324521.P18173754131644088550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101513 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331281 (f1 j).toNat = 1) n)

end

end A324521.P18173754131644088550

namespace A324521

/-- `filter[A101513(n+2), A331281(#)]` -/
def P18173754131644088550.Spec : Prop :=
  ∀ n, P18173754131644088550.a n = A324521 (n + 1)

end A324521

/-! ## A324521.P6175981333556039001

`filter[A065090(n+2), A331281(#)]`
-/

namespace A324521.P6175981333556039001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331281 (f1 j).toNat = 1) n)

end

end A324521.P6175981333556039001

namespace A324521

/-- `filter[A065090(n+2), A331281(#)]` -/
def P6175981333556039001.Spec : Prop :=
  ∀ n, P6175981333556039001.a n = A324521 (n + 1)

end A324521

/-! ## A324521.P8282740809224166151

`filter[A073900(n+2), A331281(#)]`
-/

namespace A324521.P8282740809224166151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331281 (f1 j).toNat = 1) n)

end

end A324521.P8282740809224166151

namespace A324521

/-- `filter[A073900(n+2), A331281(#)]` -/
def P8282740809224166151.Spec : Prop :=
  ∀ n, P8282740809224166151.a n = A324521 (n + 1)

end A324521

/-! ## A324521.P18156992404931070164

`filter[A171581(n+2), A331281(#)]`
-/

namespace A324521.P18156992404931070164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331281 (f1 j).toNat = 1) n)

end

end A324521.P18156992404931070164

namespace A324521

/-- `filter[A171581(n+2), A331281(#)]` -/
def P18156992404931070164.Spec : Prop :=
  ∀ n, P18156992404931070164.a n = A324521 (n + 1)

end A324521

/-! ## A324521.P15681608908980785242

`filter[A073899(n+2), A331281(#)]`
-/

namespace A324521.P15681608908980785242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073899 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331281 (f1 j).toNat = 1) n)

end

end A324521.P15681608908980785242

namespace A324521

/-- `filter[A073899(n+2), A331281(#)]` -/
def P15681608908980785242.Spec : Prop :=
  ∀ n, P15681608908980785242.a n = A324521 (n + 1)

end A324521

/-! ## A324521.P4836834390798191414

`filter[A073884(n+1), A331281(#)]`
-/

namespace A324521.P4836834390798191414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331281 (f1 j).toNat = 1) n)

end

end A324521.P4836834390798191414

namespace A324521

/-- `filter[A073884(n+1), A331281(#)]` -/
def P4836834390798191414.Spec : Prop :=
  ∀ n, P4836834390798191414.a n = A324521 (n + 1)

end A324521

/-! ## A324521.P7597267385415240870

`filter[A089088(n+1), A331281(#)]`
-/

namespace A324521.P7597267385415240870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331281 (f1 j).toNat = 1) n)

end

end A324521.P7597267385415240870

namespace A324521

/-- `filter[A089088(n+1), A331281(#)]` -/
def P7597267385415240870.Spec : Prop :=
  ∀ n, P7597267385415240870.a n = A324521 (n + 1)

end A324521

/-! ## A324521.P11158642999025545767

`filter[A137621(n+2), A331281(#)]`
-/

namespace A324521.P11158642999025545767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137621 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331281 (f1 j).toNat = 1) n)

end

end A324521.P11158642999025545767

namespace A324521

/-- `filter[A137621(n+2), A331281(#)]` -/
def P11158642999025545767.Spec : Prop :=
  ∀ n, P11158642999025545767.a n = A324521 (n + 1)

end A324521

/-! ## A324521.P14935310549073820997

`filter[A047839(n+1), A331281(#)]`
-/

namespace A324521.P14935310549073820997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331281 (f1 j).toNat = 1) n)

end

end A324521.P14935310549073820997

namespace A324521

/-- `filter[A047839(n+1), A331281(#)]` -/
def P14935310549073820997.Spec : Prop :=
  ∀ n, P14935310549073820997.a n = A324521 (n + 1)

end A324521

/-!
# A324522: Numbers > 1 where the minimum prime index is equal to the number of prime factors counted with multiplicity.

The programs for A324522, there is no canonical definition to state claims against.
-/

/-! ## A324522.P17318076916228186065

`eq[A008578(A001222(n+2)+1), A020639(n+2)]+2`
-/

namespace A324522.P17318076916228186065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A001222 (n + 2) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A324522.P17318076916228186065

/-! ## A324522.P13850761209342347271

`eq[A055396(n+1), A086436(n+1)]+1`
-/

namespace A324522.P13850761209342347271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A324522.P13850761209342347271

/-! ## A324522.P963642376647088167

`eq[A001222(n+2), A055396(n+2)]+2`
-/

namespace A324522.P963642376647088167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A324522.P963642376647088167

/-! ## A324522.P2840423662973278256

`A020725(eq[A055396(n+1), A086436(n+1)])`
-/

namespace A324522.P2840423662973278256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A324522.P2840423662973278256

/-! ## A324522.P9898762685731903356

`A141310(eq[A055396(n+1), A086436(n+1)])`
-/

namespace A324522.P9898762685731903356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A324522.P9898762685731903356

/-! ## A324522.P8656355076566772420

`eq[A001222(n+1), A032742(A020639(n+1)+1)]+1`
-/

namespace A324522.P8656355076566772420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A020639 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A324522.P8656355076566772420

/-! ## A324522.P6126580328004408634

`eq[A020639(n+1), A000040(A252736(n+1)+1)]+1`
-/

namespace A324522.P6126580328004408634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A252736 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A324522.P6126580328004408634

/-!
# A324523: Number of colored set partitions of [2n] where elements of subsets have distinct colors and exactly n colors are used.

The programs for A324523, there is no canonical definition to state claims against.
-/

/-! ## A324523.P4225914005041167578

`A323128(∑[4*n])`
-/

namespace A324523.P4225914005041167578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323128 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A324523.P4225914005041167578

/-! ## A324523.P2702459898680338746

`A323128(A106232(n+1))+A243832(n)`
-/

namespace A324523.P2702459898680338746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323128 (A106232 (n + 1)).toNat + A243832 n

end

end A324523.P2702459898680338746

/-! ## A324523.P14458548736729480636

`A323128(A106232(n+1))+A243833(n)`
-/

namespace A324523.P14458548736729480636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323128 (A106232 (n + 1)).toNat + A243833 n

end

end A324523.P14458548736729480636

/-! ## A324523.P14840878715001175603

`A323128(A106232(n+1))+A008683(4*(n+1))`
-/

namespace A324523.P14840878715001175603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323128 (A106232 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A324523.P14840878715001175603

/-! ## A324523.P11117405045023185251

`A014963(6*(n+1))*A323128(A106232(n+1))`
-/

namespace A324523.P11117405045023185251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A323128 (A106232 (n + 1)).toNat

end

end A324523.P11117405045023185251

/-!
# A324524: Numbers where every prime index divides its multiplicity in the prime factorization. Numbers divisible by a power of prime(k)^k for each prime index k.

The programs for A324524, there is no canonical definition to state claims against.
-/

/-! ## A324524.P3254954781045622325

`filter[A316856(n+1), A014578(#)]`
-/

namespace A324524.P3254954781045622325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A324524.P3254954781045622325

/-! ## A324524.P12462782341209964333

`filter[A316856(n+1), A229062(#)]`
-/

namespace A324524.P12462782341209964333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A324524.P12462782341209964333

/-! ## A324524.P239314316508821317

`∩[A001481(n+1), A316856(n+1)]`
-/

namespace A324524.P239314316508821317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324524.P239314316508821317

/-! ## A324524.P15889855325641889275

`∩[A007417(n+1), A316856(n+1)]`
-/

namespace A324524.P15889855325641889275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324524.P15889855325641889275

/-! ## A324524.P6834068745853571349

`∩[A035231(n+1), A316856(n+1)]`
-/

namespace A324524.P6834068745853571349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324524.P6834068745853571349

/-!
# A324525: Numbers divisible by prime(k)^k for each prime index k.

The programs for A324525, there is no canonical definition to state claims against.
-/

/-! ## A324525.P397545614913923170

`sqrt(∩[(n+1)², A054744(n+1)])`
-/

namespace A324525.P397545614913923170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054744 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A324525.P397545614913923170

/-! ## A324525.P14426854776599677071

`sqrt(∩[A054744(n+1), n²])`
-/

namespace A324525.P14426854776599677071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054744 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A324525.P14426854776599677071

/-! ## A324525.P5439977552142924926

`record[gcd(n+1, A327939((n+1)²))]`
-/

namespace A324525.P5439977552142924926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A327939 ((n + 1) ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324525.P5439977552142924926

/-! ## A324525.P257148330375633486

`record[A056926(A054744(n+1))]`
-/

namespace A324525.P257148330375633486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A054744 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324525.P257148330375633486

/-! ## A324525.P9007828045321969991

`record[A003557(n+1)*A327936((n+1)²)]`
-/

namespace A324525.P9007828045321969991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A327936 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324525.P9007828045321969991

/-!
# A324526: Numbers m such that gcd(sigma(m), pod(m)) = tau(m) where tau(k) = the number of divisors of k (A000005), sigma(k) = the sum of the divisors of k (A000203) and pod(n) = the product of divisors of k (A007955).

The programs for A324526, there is no canonical definition to state claims against.
-/

/-! ## A324526.P17483016741012338561

`eq[A000005(n+1), A306682(n+1)]+1`
-/

namespace A324526.P17483016741012338561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306682 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A324526.P17483016741012338561

/-!
# A324527: a(n) = the smallest number m such that gcd(sigma(m), pod(m)) = n where sigma(k) = the sum of the divisors of k (A000203) and pod(k) = the product of the divisors of k (A007955).

The programs for A324527, there is no canonical definition to state claims against.
-/

/-! ## A324527.P15569076719871184647

`A333764(A162611(3*n+1))*A375266(n+1)`
-/

namespace A324527.P15569076719871184647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333764 (A162611 (3 * n + 1)).toNat * A375266 (n + 1)

end

end A324527.P15569076719871184647

/-!
# A324528: a(n) = lcm(tau(n), pod(n)) where tau(k) = the number of divisors of k (A000005) and pod(n) = the product of divisors of k (A007955).

The programs for A324528, the canonical program `A324528.P13642510436435348081` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324528 has offset 1).

The definition of A324528 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324528.P6626003020109687675

`(n+1)*A307892(n+1)`
-/

namespace A324528.P6626003020109687675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A307892 (n + 1)

end

end A324528.P6626003020109687675

namespace A324528

/-- `(n+1)*A307892(n+1)` -/
def P6626003020109687675.Spec : Prop :=
  ∀ n, P6626003020109687675.a n = A324528 (n + 1)

end A324528

/-! ## A324528.P10436348261197240508

`lcm(Δ[A006218(n)], ∏{d}[n+1, #])`
-/

namespace A324528.P10436348261197240508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) ((∏ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A324528.P10436348261197240508

namespace A324528

/-- `lcm(Δ[A006218(n)], ∏{d}[n+1, #])` -/
def P10436348261197240508.Spec : Prop :=
  ∀ n, (P10436348261197240508.a n : ℤ) = A324528 (n + 1)

end A324528

/-! ## A324528.P13642510436435348081

`lcm((n+1)*A007956(n+1), ∑{d}[n+1, lcm(#, n+1)-n])`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A324528

/-- `lcm((n+1)*A007956(n+1), ∑{d}[n+1, lcm(#, n+1)-n])` -/
def P13642510436435348081.Spec : Prop :=
  ∀ n, (P13642510436435348081.a n : ℤ) = A324528 (n + 1)

theorem P13642510436435348081.correct : P13642510436435348081.Spec := by
  intro n
  simp only [A324528, Nat.add_sub_cancel]

end A324528

/-! ## A324528.P13951599476354716580

`Δ[A006218(n)]*A291186(n+1)`
-/

namespace A324528.P13951599476354716580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A291186 (n + 1)

end

end A324528.P13951599476354716580

namespace A324528

/-- `Δ[A006218(n)]*A291186(n+1)` -/
def P13951599476354716580.Spec : Prop :=
  ∀ n, P13951599476354716580.a n = A324528 (n + 1)

end A324528

/-! ## A324528.P14549438791899353559

`A007955(n+1)*A137927(n+1)`
-/

namespace A324528.P14549438791899353559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) * A137927 (n + 1)

end

end A324528.P14549438791899353559

namespace A324528

/-- `A007955(n+1)*A137927(n+1)` -/
def P14549438791899353559.Spec : Prop :=
  ∀ n, P14549438791899353559.a n = A324528 (n + 1)

end A324528

/-! ## A324528.P9388187858074590578

`A000005(n+1)*A291186(n+1)`
-/

namespace A324528.P9388187858074590578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A291186 (n + 1)

end

end A324528.P9388187858074590578

namespace A324528

/-- `A000005(n+1)*A291186(n+1)` -/
def P9388187858074590578.Spec : Prop :=
  ∀ n, P9388187858074590578.a n = A324528 (n + 1)

end A324528

/-! ## A324528.P7041833719086467355

`A394346(n+1)/A306671(n+1)`
-/

namespace A324528.P7041833719086467355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A394346 (n + 1) : ℚ) / (A306671 (n + 1) : ℚ)

end

end A324528.P7041833719086467355

namespace A324528

/-- `A394346(n+1)/A306671(n+1)` -/
def P7041833719086467355.Spec : Prop :=
  ∀ n, P7041833719086467355.a n = (A324528 (n + 1) : ℚ)

end A324528

/-! ## A324528.P15823574354929827521

`lcm(A000005(n+1), A007955(n+1))`
-/

namespace A324528.P15823574354929827521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (n + 1)) (A007955 (n + 1))

end

end A324528.P15823574354929827521

namespace A324528

/-- `lcm(A000005(n+1), A007955(n+1))` -/
def P15823574354929827521.Spec : Prop :=
  ∀ n, (P15823574354929827521.a n : ℤ) = A324528 (n + 1)

end A324528

/-! ## A324528.P16167083706939918989

`A038040(n+1)/(n+1)*A291186(n+1)`
-/

namespace A324528.P16167083706939918989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (n + 1 : ℚ) * (A291186 (n + 1) : ℚ)

end

end A324528.P16167083706939918989

namespace A324528

/-- `A038040(n+1)/(n+1)*A291186(n+1)` -/
def P16167083706939918989.Spec : Prop :=
  ∀ n, P16167083706939918989.a n = (A324528 (n + 1) : ℚ)

end A324528

/-! ## A324528.P12172426215444632324

`(∑{d}[n+1, #+1]-A000203(n+1))*A291186(n+1)`
-/

namespace A324528.P12172426215444632324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) - A000203 (n + 1)) * A291186 (n + 1)

end

end A324528.P12172426215444632324

namespace A324528

/-- `(∑{d}[n+1, #+1]-A000203(n+1))*A291186(n+1)` -/
def P12172426215444632324.Spec : Prop :=
  ∀ n, P12172426215444632324.a n = A324528 (n + 1)

end A324528

/-! ## A324528.P13856079161897453919

`lcm(A061537(n+1)*A061538(n+1), ∏{e}[n+1, #+1])`
-/

namespace A324528.P13856079161897453919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A061537 (n + 1) * A061538 (n + 1)) ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A324528.P13856079161897453919

namespace A324528

/-- `lcm(A061537(n+1)*A061538(n+1), ∏{e}[n+1, #+1])` -/
def P13856079161897453919.Spec : Prop :=
  ∀ n, (P13856079161897453919.a n : ℤ) = A324528 (n + 1)

end A324528

/-! ## A324528.P13784479075432658418

`A056925(n+1)*A056926(n+1)*A137927(n+1)`
-/

namespace A324528.P13784479075432658418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056925 (n + 1) * A056926 (n + 1) * A137927 (n + 1)

end

end A324528.P13784479075432658418

namespace A324528

/-- `A056925(n+1)*A056926(n+1)*A137927(n+1)` -/
def P13784479075432658418.Spec : Prop :=
  ∀ n, P13784479075432658418.a n = A324528 (n + 1)

end A324528

/-! ## A324528.P15974497853002059408

`A137927(n+1)*A291186(n+1)*A306671(n+1)`
-/

namespace A324528.P15974497853002059408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137927 (n + 1) * A291186 (n + 1) * A306671 (n + 1)

end

end A324528.P15974497853002059408

namespace A324528

/-- `A137927(n+1)*A291186(n+1)*A306671(n+1)` -/
def P15974497853002059408.Spec : Prop :=
  ∀ n, P15974497853002059408.a n = A324528 (n + 1)

end A324528

/-! ## A324528.P7765167720741418322

`A000005(n+1)*A007955(n+1)/A306671(n+1)`
-/

namespace A324528.P7765167720741418322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) * A007955 (n + 1) : ℚ) / (A306671 (n + 1) : ℚ)

end

end A324528.P7765167720741418322

namespace A324528

/-- `A000005(n+1)*A007955(n+1)/A306671(n+1)` -/
def P7765167720741418322.Spec : Prop :=
  ∀ n, P7765167720741418322.a n = (A324528 (n + 1) : ℚ)

end A324528

/-! ## A324528.P13204454003799567217

`lcm(A183091(n+1)*A183092(n+1), A038040(n+1)/(n+1))`
-/

namespace A324528.P13204454003799567217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A183091 (n + 1) * A183092 (n + 1)) (SequenceMachineLib.roundAway ((A038040 (n + 1) : ℚ) / (n + 1 : ℚ)))

end

end A324528.P13204454003799567217

namespace A324528

/-- `lcm(A183091(n+1)*A183092(n+1), A038040(n+1)/(n+1))` -/
def P13204454003799567217.Spec : Prop :=
  ∀ n, (P13204454003799567217.a n : ℤ) = A324528 (n + 1)

end A324528

/-! ## A324528.P67567636908636204

`A137927(n+1)/A211776(n+1)*A306705(n+1)`
-/

namespace A324528.P67567636908636204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137927 (n + 1) : ℚ) / (A211776 (n + 1) : ℚ) * (A306705 (n + 1) : ℚ)

end

end A324528.P67567636908636204

namespace A324528

/-- `A137927(n+1)/A211776(n+1)*A306705(n+1)` -/
def P67567636908636204.Spec : Prop :=
  ∀ n, P67567636908636204.a n = (A324528 (n + 1) : ℚ)

end A324528

/-! ## A324528.P16440860350539186879

`lcm(A007955(n+1)², A009230(n+1))/A007955(n+1)`
-/

namespace A324528.P16440860350539186879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A007955 (n + 1) ^ 2) (A009230 (n + 1)) : ℚ) / (A007955 (n + 1) : ℚ)

end

end A324528.P16440860350539186879

namespace A324528

/-- `lcm(A007955(n+1)², A009230(n+1))/A007955(n+1)` -/
def P16440860350539186879.Spec : Prop :=
  ∀ n, P16440860350539186879.a n = (A324528 (n + 1) : ℚ)

end A324528

/-!
# A324529: a(n) = lcm(sigma(n), pod(n)) where sigma(k) = the sum of divisors of k (A000203) and pod(n) = the product of divisors of k (A007955).

The programs for A324529, the canonical program `A324529.P2342386230792012260` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324529 has offset 1).

The definition of A324529 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324529.P2342386230792012260

`lcm(∑{d}[n+1, #], ∏{d}[n+1, #])`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A324529

/-- `lcm(∑{d}[n+1, #], ∏{d}[n+1, #])` -/
def P2342386230792012260.Spec : Prop :=
  ∀ n, (P2342386230792012260.a n : ℤ) = A324529 (n + 1)

theorem P2342386230792012260.correct : P2342386230792012260.Spec := by
  intro n
  simp only [A324529, Nat.add_sub_cancel]

end A324529

/-! ## A324529.P10932718638588923384

`(n+1)*A307893(n+1)`
-/

namespace A324529.P10932718638588923384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A307893 (n + 1)

end

end A324529.P10932718638588923384

namespace A324529

/-- `(n+1)*A307893(n+1)` -/
def P10932718638588923384.Spec : Prop :=
  ∀ n, P10932718638588923384.a n = A324529 (n + 1)

end A324529

/-! ## A324529.P1788249602230409207

`lcm(Δ[A160664(n)], ∏{d}[n+1, #])`
-/

namespace A324529.P1788249602230409207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) ((∏ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A324529.P1788249602230409207

namespace A324529

/-- `lcm(Δ[A160664(n)], ∏{d}[n+1, #])` -/
def P1788249602230409207.Spec : Prop :=
  ∀ n, (P1788249602230409207.a n : ℤ) = A324529 (n + 1)

end A324529

/-! ## A324529.P16563731757238292209

`∑{d}[n+1, #]*A244668(n+1)`
-/

namespace A324529.P16563731757238292209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A244668 (n + 1)

end

end A324529.P16563731757238292209

namespace A324529

/-- `∑{d}[n+1, #]*A244668(n+1)` -/
def P16563731757238292209.Spec : Prop :=
  ∀ n, P16563731757238292209.a n = A324529 (n + 1)

end A324529

/-! ## A324529.P15557175674846068668

`∏{d}[n+1, #]*A244669(n+1)`
-/

namespace A324529.P15557175674846068668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A244669 (n + 1)

end

end A324529.P15557175674846068668

namespace A324529

/-- `∏{d}[n+1, #]*A244669(n+1)` -/
def P15557175674846068668.Spec : Prop :=
  ∀ n, P15557175674846068668.a n = A324529 (n + 1)

end A324529

/-! ## A324529.P16438352291368313530

`A000203(n+1)*A244668(n+1)`
-/

namespace A324529.P16438352291368313530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A244668 (n + 1)

end

end A324529.P16438352291368313530

namespace A324529

/-- `A000203(n+1)*A244668(n+1)` -/
def P16438352291368313530.Spec : Prop :=
  ∀ n, P16438352291368313530.a n = A324529 (n + 1)

end A324529

/-! ## A324529.P5999152789443048083

`A007955(n+1)*A244669(n+1)`
-/

namespace A324529.P5999152789443048083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) * A244669 (n + 1)

end

end A324529.P5999152789443048083

namespace A324529

/-- `A007955(n+1)*A244669(n+1)` -/
def P5999152789443048083.Spec : Prop :=
  ∀ n, P5999152789443048083.a n = A324529 (n + 1)

end A324529

/-! ## A324529.P17849209095927937302

`gcd(A076722(n+1), A336723(n+1))`
-/

namespace A324529.P17849209095927937302
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A076722 (n + 1)) (A336723 (n + 1))

end

end A324529.P17849209095927937302

namespace A324529

/-- `gcd(A076722(n+1), A336723(n+1))` -/
def P17849209095927937302.Spec : Prop :=
  ∀ n, (P17849209095927937302.a n : ℤ) = A324529 (n + 1)

end A324529

/-! ## A324529.P8644044724161687928

`lcm(A000203(n+1), A007955(n+1))`
-/

namespace A324529.P8644044724161687928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000203 (n + 1)) (A007955 (n + 1))

end

end A324529.P8644044724161687928

namespace A324529

/-- `lcm(A000203(n+1), A007955(n+1))` -/
def P8644044724161687928.Spec : Prop :=
  ∀ n, (P8644044724161687928.a n : ℤ) = A324529 (n + 1)

end A324529

/-! ## A324529.P6358986606633663207

`A000203(n+1)*A007955(n+1)/A306682(n+1)`
-/

namespace A324529.P6358986606633663207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) * A007955 (n + 1) : ℚ) / (A306682 (n + 1) : ℚ)

end

end A324529.P6358986606633663207

namespace A324529

/-- `A000203(n+1)*A007955(n+1)/A306682(n+1)` -/
def P6358986606633663207.Spec : Prop :=
  ∀ n, P6358986606633663207.a n = (A324529 (n + 1) : ℚ)

end A324529

/-!
# A324530: Lexicographically earliest sequence such that a(i) = a(j) => f(i) = f(j), where f(n) = [A033879(n), A318458(n)] for all other numbers, except f(1) = -1.

The programs for A324530, there is no canonical definition to state claims against.
-/

/-! ## A324530.P17469756333472596432

`A324347(n/A183017(A008706(n)))`
-/

namespace A324530.P17469756333472596432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324347 (SequenceMachineLib.roundAway ((n : ℚ) / (A183017 (A008706 n).toNat : ℚ))).toNat

end

end A324530.P17469756333472596432

/-!
# A324531: Lexicographically earliest sequence such that for all i, j >= 1, a(i) = a(j) => f(i) = f(j), where f(n) = [A278222(n), A318458(n)] for all other numbers, except f(1) = 0.

The programs for A324531, there is no canonical definition to state claims against.
-/

/-! ## A324531.P11626495061236099913

`A324346(n-A085974(A000055(n)))`
-/

namespace A324531.P11626495061236099913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324346 ((n : ℤ) - A085974 (A000055 n).toNat).toNat

end

end A324531.P11626495061236099913

/-! ## A324531.P8540787620959580184

`A324347(n-A085974(A000055(n)))`
-/

namespace A324531.P8540787620959580184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324347 ((n : ℤ) - A085974 (A000055 n).toNat).toNat

end

end A324531.P8540787620959580184

/-! ## A324531.P14253216735588629307

`A324400(n+1)-A085974(A000055(n))`
-/

namespace A324531.P14253216735588629307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324400 (n + 1) - A085974 (A000055 n).toNat

end

end A324531.P14253216735588629307

/-! ## A324531.P14643975989140472137

`A324530(n+1)-A085974(A000055(n))`
-/

namespace A324531.P14643975989140472137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324530 (n + 1) - A085974 (A000055 n).toNat

end

end A324531.P14643975989140472137

/-! ## A324531.P18389212320778391389

`A324400(n+1)-A330023(A276086(n))`
-/

namespace A324531.P18389212320778391389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324400 (n + 1) - A330023 (A276086 n).toNat

end

end A324531.P18389212320778391389

/-!
# A324533: Lexicographically earliest positive sequence such that a(i) = a(j) => A002487(i) = A002487(j) and A278219(i) = A278219(j), for all i, j >= 0.

The programs for A324533, there is no canonical definition to state claims against.
-/

/-! ## A324533.P5192169902661080010

`A103391(record[A030118(A329534(n+1))])`
-/

namespace A324533.P5192169902661080010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030118 (A329534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A324533.P5192169902661080010

/-! ## A324533.P6772597911316069742

`A001222(A250396(n))*A286378(A047273(n+1))`
-/

namespace A324533.P6772597911316069742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A250396 n).toNat * A286378 (A047273 (n + 1)).toNat

end

end A324533.P6772597911316069742

/-! ## A324533.P12891937081390057053

`A103391(∑[A040001(A115451(n))])`
-/

namespace A324533.P12891937081390057053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A115451 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A324533.P12891937081390057053

/-! ## A324533.P9622844359333443209

`A286378(A047273(n+1))%A002271(n+1)`
-/

namespace A324533.P9622844359333443209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286378 (A047273 (n + 1)).toNat) (A002271 (n + 1))

end

end A324533.P9622844359333443209

/-! ## A324533.P11245798021347510170

`∑{e}[A181662(n), A336149(#)]`
-/

namespace A324533.P11245798021347510170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A336149 (Nat.factorization (f1 n).natAbs p)

end

end A324533.P11245798021347510170

/-!
# A324534: The smallest common prime factor of sigma(n) and A276086(n), or 1 if no such prime exists.

The programs for A324534, there is no canonical definition to state claims against.
-/

/-! ## A324534.P6721257185492131825

`A020639(A324644(n+1))`
-/

namespace A324534.P6721257185492131825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A324644 (n + 1)).toNat

end

end A324534.P6721257185492131825

/-! ## A324534.P280890201325522042

`A020639(gcd(A000203(n+1), A276086(n+1)))`
-/

namespace A324534.P280890201325522042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (A000203 (n + 1)) (A276086 (n + 1)))

end

end A324534.P280890201325522042

/-! ## A324534.P12520571705509397334

`A020639(gcd(A143348(n+1), A328571(n+1)))`
-/

namespace A324534.P12520571705509397334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (A143348 (n + 1)) (A328571 (n + 1)))

end

end A324534.P12520571705509397334

/-! ## A324534.P8500925268005308983

`A028233(∏{p}[A324644(n+1), #])`
-/

namespace A324534.P8500925268005308983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A324534.P8500925268005308983

/-! ## A324534.P15404736950212486807

`A020639(gcd(∑{d}[n+1, #], A328624(n+1)))`
-/

namespace A324534.P15404736950212486807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A328624 (n + 1)))

end

end A324534.P15404736950212486807

/-! ## A324534.P15584487672849553930

`A107286(A324644(n+1)²)`
-/

namespace A324534.P15584487672849553930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A324644 (n + 1) ^ 2).toNat

end

end A324534.P15584487672849553930

/-! ## A324534.P22545618528893743

`A107286(A324644(n+1)^2)`
-/

namespace A324534.P22545618528893743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A324644 (n + 1) ^ 2).toNat

end

end A324534.P22545618528893743

/-! ## A324534.P1675802638097497964

`A014963(A028233(A324644(n+1)²))`
-/

namespace A324534.P1675802638097497964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A028233 (A324644 (n + 1) ^ 2).toNat).toNat

end

end A324534.P1675802638097497964

/-!
# A324535: An analog of sigma(n)-n (A001065) for nonstandard factorization based on the sieve of Eratosthenes (A083221).

The programs for A324535, there is no canonical definition to state claims against.
-/

/-! ## A324535.P17949386375023316818

`A250246(n+1)-A324546(n+1)`
-/

namespace A324535.P17949386375023316818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (n + 1) - A324546 (n + 1)

end

end A324535.P17949386375023316818

/-! ## A324535.P11958303431202240104

`A324545(n+1)-A250246(n+1)`
-/

namespace A324535.P11958303431202240104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324545 (n + 1) - A250246 (n + 1)

end

end A324535.P11958303431202240104

/-! ## A324535.P16824848495274475088

`A001065(A250246(n+1))`
-/

namespace A324535.P16824848495274475088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A250246 (n + 1)).toNat

end

end A324535.P16824848495274475088

/-! ## A324535.P14329714953248463130

`(A324545(n+1)-A324546(n+1))/2`
-/

namespace A324535.P14329714953248463130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324545 (n + 1) - A324546 (n + 1) : ℚ) / 2

end

end A324535.P14329714953248463130

/-! ## A324535.P2817401924649308372

`A000203(A280496(2*(n+1)))-A280496(2*(n+1))`
-/

namespace A324535.P2817401924649308372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A280496 (2 * (n + 1))).toNat - A280496 (2 * (n + 1))

end

end A324535.P2817401924649308372

/-! ## A324535.P7260831113150537465

`A078898(A324545(n+1)-A324546(n+1))`
-/

namespace A324535.P7260831113150537465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A324545 (n + 1) - A324546 (n + 1)).toNat

end

end A324535.P7260831113150537465

/-!
# A324537: a(n) = A003557(k), where k = Product_{d|n, d>2} prime(A297167(d)).

The programs for A324537, there is no canonical definition to state claims against.
-/

/-! ## A324537.P2163201013122893969

`A064989(∑{d}[A332461(n+1), A300717(#)])`
-/

namespace A324537.P2163201013122893969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (∑ d ∈ Nat.divisors (f1 n).natAbs, A300717 d).toNat

end

end A324537.P2163201013122893969

/-! ## A324537.P3082009969048973692

`A252463(∑{d}[A332461(n+1), A300717(#)])`
-/

namespace A324537.P3082009969048973692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (∑ d ∈ Nat.divisors (f1 n).natAbs, A300717 d).toNat

end

end A324537.P3082009969048973692

/-! ## A324537.P8001349531693335554

`A226029(A263790(A324538(n+1)))`
-/

namespace A324537.P8001349531693335554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226029 (A263790 (A324538 (n + 1)).toNat).toNat

end

end A324537.P8001349531693335554

/-! ## A324537.P8578379377149675992

`A324538(n+1)-A178226(A257609(n))`
-/

namespace A324537.P8578379377149675992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324538 (n + 1) - A178226 (A257609 n).toNat

end

end A324537.P8578379377149675992

/-! ## A324537.P14113296110601935023

`A324538(n+1)+A057428(A288605(n+1))`
-/

namespace A324537.P14113296110601935023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324538 (n + 1) + A057428 (A288605 (n + 1)).toNat

end

end A324537.P14113296110601935023

/-!
# A324538: Lexicographically earliest sequence such that a(i) = a(j) => f(i) = f(j), where f(n) = A324537(n) for all other numbers, except f(1) = 0.

The programs for A324538, there is no canonical definition to state claims against.
-/

/-! ## A324538.P11514467598914110680

`A000005((ceil(atan(n))+1)^A324537(n+1))`
-/

namespace A324538.P11514467598914110680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((⌈Real.arctan (n : ℝ)⌉ + 1 : ℚ) ^ (A324537 (n + 1) : ℤ))).toNat

end

end A324538.P11514467598914110680

/-! ## A324538.P1739583406097523786

`A322260(A324537(n+1)+A178334(n))`
-/

namespace A324538.P1739583406097523786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322260 (A324537 (n + 1) + A178334 n).toNat

end

end A324538.P1739583406097523786

/-! ## A324538.P2486980915982430842

`A324537(n+1)-A057428(A002413(n))`
-/

namespace A324538.P2486980915982430842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324537 (n + 1) - A057428 (A002413 n).toNat

end

end A324538.P2486980915982430842

/-! ## A324538.P10938356594906648396

`A324537(n+1)+A267776(A267735(n+1))`
-/

namespace A324538.P10938356594906648396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324537 (n + 1) + A267776 (A267735 (n + 1)).toNat

end

end A324538.P10938356594906648396

/-! ## A324538.P17602152707319863306

`A000005(A287841(n+1)^A324537(n+1))`
-/

namespace A324538.P17602152707319863306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A287841 (n + 1) : ℚ) ^ (A324537 (n + 1) : ℤ))).toNat

end

end A324538.P17602152707319863306

/-!
# A324539: Number of divisors d of n such that A276086(d) = (n/d).

The programs for A324539, there is no canonical definition to state claims against.
-/

/-! ## A324539.P311504074614494197

`and(char[A314252(n)], A172119(n))`
-/

namespace A324539.P311504074614494197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314252 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A172119 n)

end

end A324539.P311504074614494197

/-! ## A324539.P3579937582226815792

`val(A005998(n+1), A320889(n+1)+A146307(n+1))`
-/

namespace A324539.P3579937582226815792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A005998 (n + 1)).toNat (A320889 (n + 1) + A146307 (n + 1)).toNat

end

end A324539.P3579937582226815792

/-! ## A324539.P12960883015514182155

`and(A324347(A057979(n)), A342910(n+1))`
-/

namespace A324539.P12960883015514182155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A324347 (A057979 n).toNat) (A342910 (n + 1))

end

end A324539.P12960883015514182155

/-! ## A324539.P11453652794863022764

`A324347(or(2, A057979(n)))%(A342910(n+1)+1)`
-/

namespace A324539.P11453652794863022764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324347 (Int.lor 2 (A057979 n)).toNat) (A342910 (n + 1) + 1)

end

end A324539.P11453652794863022764

/-! ## A324539.P13958317123252165400

`and(n, A338713(A000217(2*n+3)))`
-/

namespace A324539.P13958317123252165400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A338713 (A000217 (2 * n + 3)).toNat)

end

end A324539.P13958317123252165400

/-! ## A324539.P7430969407616400254

`A010054(A000010(n+2)*A020484(n))`
-/

namespace A324539.P7430969407616400254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A000010 (n + 2) * A020484 n).toNat

end

end A324539.P7430969407616400254

/-! ## A324539.P13963965565414940440

`A322977(A138966(n+1))`
-/

namespace A324539.P13963965565414940440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322977 (A138966 (n + 1)).toNat

end

end A324539.P13963965565414940440

/-! ## A324539.P47078172517577332

`A138966(n+1)%A145737(n+1)`
-/

namespace A324539.P47078172517577332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138966 (n + 1)) (A145737 (n + 1))

end

end A324539.P47078172517577332

/-! ## A324539.P7088213456888042012

`A010051(A171136(n+1)-A057427(n))`
-/

namespace A324539.P7088213456888042012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A171136 (n + 1) - A057427 n).toNat

end

end A324539.P7088213456888042012

/-!
# A324540: Numbers not in range of A324580.

The programs for A324540, there is no canonical definition to state claims against.
-/

/-! ## A324540.P18281201883793897253

`comp[A324541(n)]`
-/

namespace A324540.P18281201883793897253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324541 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A324540.P18281201883793897253

/-! ## A324540.P1632831039435865312

`comp[A324580(n)]`
-/

namespace A324540.P1632831039435865312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324580 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A324540.P1632831039435865312

/-! ## A324540.P17198642511284870400

`comp[n*A276086(n)]`
-/

namespace A324540.P17198642511284870400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A276086 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A324540.P17198642511284870400

/-! ## A324540.P11465698894028085853

`eq[0, A324539(n+1)]+1`
-/

namespace A324540.P11465698894028085853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324539 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A324540.P11465698894028085853

/-! ## A324540.P9971836771800262774

`eq[A000007(n), A324539(A028310(n))]`
-/

namespace A324540.P9971836771800262774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324539 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A324540.P9971836771800262774

/-! ## A324540.P18152108183398106443

`A033270(p?[A324539(n+1)+A065091(n+1)])`
-/

namespace A324540.P18152108183398106443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324539 (n + 1) + A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A324540.P18152108183398106443

/-! ## A324540.P2609995807171352091

`record[A057979(n)-A105700(A000217(n))]`
-/

namespace A324540.P2609995807171352091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n - A105700 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324540.P2609995807171352091

/-! ## A324540.P4150153646623852628

`lt[A020639(A000217(2*n+1)), A094077(n+1)]`
-/

namespace A324540.P4150153646623852628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000217 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094077 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A324540.P4150153646623852628

/-! ## A324540.P16141366605676289034

`lt[A326420(n+2), A032741(A000217(2*n+1))]`
-/

namespace A324540.P16141366605676289034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326420 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A000217 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A324540.P16141366605676289034

/-! ## A324540.P2663885582646814953

`∪[A079945(n), A346126(n+1)]`
-/

namespace A324540.P2663885582646814953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079945 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A324540.P2663885582646814953

/-!
# A324541: Numbers that occur in range of A324580.

The programs for A324541, there is no canonical definition to state claims against.
-/

/-! ## A324541.P2866525418198639493

`comp[A324540(n+1)]`
-/

namespace A324541.P2866525418198639493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A324541.P2866525418198639493

/-! ## A324541.P2161973365132276124

`record[lcm(A106247(n), A324539(n+1))]`
-/

namespace A324541.P2161973365132276124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106247 n) (A324539 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324541.P2161973365132276124

/-! ## A324541.P10608669379894151820

`record[A255408(n+1)*A324539(n+1)]`
-/

namespace A324541.P10608669379894151820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255408 (n + 1) * A324539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324541.P10608669379894151820

/-! ## A324541.P5396708279617987747

`eq[A033999(n), A324539(A233583(n+1))]`
-/

namespace A324541.P5396708279617987747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324539 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A324541.P5396708279617987747

/-! ## A324541.P6421818486117464479

`eq[A130706(n)!, A324539(A233583(n+1))]`
-/

namespace A324541.P6421818486117464479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A130706 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324539 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324541.P6421818486117464479

/-!
# A324542: Möbius transform of A324118, where A324118(n) = A000593(A156552(n)).

The programs for A324542, there is no canonical definition to state claims against.
-/

/-! ## A324542.P1088682857608087237

`∑{d}[n+1, A008683(#)*A324118((n+1)/#)]`
-/

namespace A324542.P1088682857608087237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A324118 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A324542.P1088682857608087237

/-! ## A324542.P14266450410757231821

`2*A329644(n+1)-A329644(A003961(n+1))`
-/

namespace A324542.P14266450410757231821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A329644 (n + 1) - A329644 (A003961 (n + 1)).toNat

end

end A324542.P14266450410757231821

/-! ## A324542.P7726530902881944341

`A324543(A003961(n+1))-2*A324543(n+1)`
-/

namespace A324542.P7726530902881944341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324543 (A003961 (n + 1)).toNat - 2 * A324543 (n + 1)

end

end A324542.P7726530902881944341

/-! ## A324542.P6659383880466310968

`A162351(and(A005385(n+1), A286457(n+1)))`
-/

namespace A324542.P6659383880466310968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162351 (Int.land (A005385 (n + 1)) (A286457 (n + 1))).toNat

end

end A324542.P6659383880466310968

/-! ## A324542.P8915673295974341491

`A373754(A074206(3*n+1))%A037465(n+1)`
-/

namespace A324542.P8915673295974341491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373754 (A074206 (3 * n + 1)).toNat) (A037465 (n + 1))

end

end A324542.P8915673295974341491

/-!
# A324543: Möbius transform of A323243, where A323243(n) = sigma(A156552(n)).

The programs for A324543, there is no canonical definition to state claims against.
-/

/-! ## A324543.P4411162725772440262

`2*A297112(n+1)-A329644(n+1)`
-/

namespace A324543.P4411162725772440262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A297112 (n + 1) - A329644 (n + 1)

end

end A324543.P4411162725772440262

/-! ## A324543.P8890608996527781993

`∑{d}[n+1, A008683(#)*A323243((n+1)/#)]`
-/

namespace A324543.P8890608996527781993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A323243 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A324543.P8890608996527781993

/-! ## A324543.P5427512813979227568

`A297112(A003961(n+1))-A329644(n+1)`
-/

namespace A324543.P5427512813979227568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297112 (A003961 (n + 1)).toNat - A329644 (n + 1)

end

end A324543.P5427512813979227568

/-! ## A324543.P14523588636353857220

`A297112(A253560(n+1))-A329644(n+1)`
-/

namespace A324543.P14523588636353857220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297112 (A253560 (n + 1)).toNat - A329644 (n + 1)

end

end A324543.P14523588636353857220

/-! ## A324543.P13926105320301474155

`A005843(A297112(n+1))-A329644(n+1)`
-/

namespace A324543.P13926105320301474155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A297112 (n + 1)).toNat - A329644 (n + 1)

end

end A324543.P13926105320301474155

/-!
# A324544: a(n) = A009194(A250246(n)) = gcd(A250246(n), A324545(n)).

The programs for A324544, there is no canonical definition to state claims against.
-/

/-! ## A324544.P14442679172697117389

`gcd(A250246(n+1), A324545(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324544.P14442679172697117389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A250246 (n + 1)) (A324545 (n + 1))

end

end A324544.P14442679172697117389

/-! ## A324544.P13444950859225450273

`A009194(A250246(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324544.P13444950859225450273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (A250246 (n + 1)).toNat

end

end A324544.P13444950859225450273

/-! ## A324544.P4664648420914689656

`A324394(A252754(n+1))`
-/

namespace A324544.P4664648420914689656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324394 (A252754 (n + 1)).toNat

end

end A324544.P4664648420914689656

/-! ## A324544.P683040158284798802

`gcd(A000203(A250246(n+1)), A250250(n+1))`
-/

namespace A324544.P683040158284798802
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (A250246 (n + 1)).toNat) (A250250 (n + 1))

end

end A324544.P683040158284798802

/-! ## A324544.P3572876455255254907

`gcd(A000203(A280496(2*(n+1))), A280496(2*(n+1)))`
-/

namespace A324544.P3572876455255254907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (A280496 (2 * (n + 1))).toNat) (A280496 (2 * (n + 1)))

end

end A324544.P3572876455255254907

/-! ## A324544.P1323134881249328650

`A009194(A280496(2*(n+1)))`
-/

namespace A324544.P1323134881249328650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (A280496 (2 * (n + 1))).toNat

end

end A324544.P1323134881249328650

/-! ## A324544.P14241576948116590704

`A009194(A009194(n+1)²)*A009194(A250250(n+1))`
-/

namespace A324544.P14241576948116590704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (A009194 (n + 1) ^ 2).toNat * A009194 (A250250 (n + 1)).toNat

end

end A324544.P14241576948116590704

/-!
# A324545: An analog of sigma (A000203) for nonstandard factorization based on the sieve of Eratosthenes (A083221).

The programs for A324545, there is no canonical definition to state claims against.
-/

/-! ## A324545.P10940845523422281305

`A324535(n+1)+A250246(n+1)`
-/

namespace A324545.P10940845523422281305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324535 (n + 1) + A250246 (n + 1)

end

end A324545.P10940845523422281305

/-! ## A324545.P9299142741991109494

`A000203(A250246(n+1))`
-/

namespace A324545.P9299142741991109494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A250246 (n + 1)).toNat

end

end A324545.P9299142741991109494

/-! ## A324545.P15674743451405697729

`A324054(A252754(n+1))`
-/

namespace A324545.P15674743451405697729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324054 (A252754 (n + 1)).toNat

end

end A324545.P15674743451405697729

/-! ## A324545.P493841537403858692

`A324546(n+1)+2*A324535(n+1)`
-/

namespace A324545.P493841537403858692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324546 (n + 1) + 2 * A324535 (n + 1)

end

end A324545.P493841537403858692

/-! ## A324545.P4517368385906030498

`2*A250246(n+1)-A324546(n+1)`
-/

namespace A324545.P4517368385906030498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A250246 (n + 1) - A324546 (n + 1)

end

end A324545.P4517368385906030498

/-! ## A324545.P12046528839868096987

`∑{d}[A280496(2*(n+1)), #]`
-/

namespace A324545.P12046528839868096987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280496 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A324545.P12046528839868096987

/-! ## A324545.P15065377291311567670

`∑{d}[A302026(A269171(n+1)), #]`
-/

namespace A324545.P15065377291311567670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302026 (A269171 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A324545.P15065377291311567670

/-! ## A324545.P17224695115308235968

`A000203(A280496(2*(n+1)))`
-/

namespace A324545.P17224695115308235968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A280496 (2 * (n + 1))).toNat

end

end A324545.P17224695115308235968

/-! ## A324545.P8049886895941712390

`A000203(A302026(A269171(n+1)))`
-/

namespace A324545.P8049886895941712390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A302026 (A269171 (n + 1)).toNat).toNat

end

end A324545.P8049886895941712390

/-!
# A324546: An analog of deficiency (A033879) for nonstandard factorization based on the sieve of Eratosthenes (A083221).

The programs for A324546, there is no canonical definition to state claims against.
-/

/-! ## A324546.P18039720330123262312

`A250246(n+1)-A324535(n+1)`
-/

namespace A324546.P18039720330123262312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (n + 1) - A324535 (n + 1)

end

end A324546.P18039720330123262312

/-! ## A324546.P14371154407397572884

`2*A250246(n+1)-A324545(n+1)`
-/

namespace A324546.P14371154407397572884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A250246 (n + 1) - A324545 (n + 1)

end

end A324546.P14371154407397572884

/-! ## A324546.P6254368254538659946

`A033879(A250246(n+1))`
-/

namespace A324546.P6254368254538659946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A250246 (n + 1)).toNat

end

end A324546.P6254368254538659946

/-! ## A324546.P14773988104664363918

`A324545(n+1)-2*A324535(n+1)`
-/

namespace A324546.P14773988104664363918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324545 (n + 1) - 2 * A324535 (n + 1)

end

end A324546.P14773988104664363918

/-! ## A324546.P7582139912036131733

`A250246(2*(n+1))-A000203(A250246(n+1))`
-/

namespace A324546.P7582139912036131733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (2 * (n + 1)) - A000203 (A250246 (n + 1)).toNat

end

end A324546.P7582139912036131733

/-! ## A324546.P16471221701037515596

`A280496(4*(n+1))-A000203(A280496(2*(n+1)))`
-/

namespace A324546.P16471221701037515596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280496 (4 * (n + 1)) - A000203 (A280496 (2 * (n + 1))).toNat

end

end A324546.P16471221701037515596

/-! ## A324546.P15926272108469301336

`A033879(A324545(n+1)-A324535(n+1))`
-/

namespace A324546.P15926272108469301336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A324545 (n + 1) - A324535 (n + 1)).toNat

end

end A324546.P15926272108469301336

/-!
# A324547: a(n) = A324543(A002110(n)).

The programs for A324547, there is no canonical definition to state claims against.
-/

/-! ## A324547.P10179444621258374665

`A324536(n)-2*a(n-1)` with `a(0)=0`
-/

namespace A324547.P10179444621258374665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A324536 n - 2 * a (n - 1)

end

end A324547.P10179444621258374665

/-!
# A324548: Maximal value which A324543 attains among the divisors of n.

The programs for A324548, there is no canonical definition to state claims against.
-/

/-! ## A324548.P15759282663793716362

`or(A007949(A056040(n)), A324543(n+1))`
-/

namespace A324548.P15759282663793716362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007949 (A056040 n).toNat) (A324543 (n + 1))

end

end A324548.P15759282663793716362

/-! ## A324548.P6726705188113373867

`or(A104515(A027379(n)), A324543(n+1))`
-/

namespace A324548.P6726705188113373867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A104515 (A027379 n).toNat) (A324543 (n + 1))

end

end A324548.P6726705188113373867

/-! ## A324548.P10201815146285766913

`or(A107846(A038217(n)), A324543(n+1))`
-/

namespace A324548.P10201815146285766913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A107846 (A038217 n).toNat) (A324543 (n + 1))

end

end A324548.P10201815146285766913

/-! ## A324548.P1743300571066108615

`or(A124760(A124791(n)), A324543(n+1))`
-/

namespace A324548.P1743300571066108615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124760 (A124791 n).toNat) (A324543 (n + 1))

end

end A324548.P1743300571066108615

/-! ## A324548.P18369232540507644643

`or(A316556(A156888(n)), A324543(n+1))`
-/

namespace A324548.P18369232540507644643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A316556 (A156888 n).toNat) (A324543 (n + 1))

end

end A324548.P18369232540507644643

/-!
# A324549: a(n) = A324543(2*A000040(n)).

The programs for A324549, the canonical program `A324549.P838001861753721853` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324549 has offset 1).

The definition of A324549 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324549.P4317141249556697133

`A324543(2*A000040(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324549.P4317141249556697133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324543 (2 * A000040 (n + 1)).toNat

end

end A324549.P4317141249556697133

namespace A324549

/-- `A324543(2*A000040(n+1))` -/
def P4317141249556697133.Spec : Prop :=
  ∀ n, P4317141249556697133.a n = A324549 (n + 1)

end A324549

/-! ## A324549.P838001861753721853

`A069061(n+1)-A151821(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A324549

/-- `A069061(n+1)-A151821(n+1)` -/
def P838001861753721853.Spec : Prop :=
  ∀ n, P838001861753721853.a n = A324549 (n + 1)

theorem P838001861753721853.correct : P838001861753721853.Spec := by
  intro n
  simp only [A324549, Nat.add_sub_cancel]

end A324549

/-! ## A324549.P6220844216085508653

`A324552(n+1)-2*A000225(n)`
-/

namespace A324549.P6220844216085508653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324552 (n + 1) - 2 * A000225 n

end

end A324549.P6220844216085508653

namespace A324549

/-- `A324552(n+1)-2*A000225(n)` -/
def P6220844216085508653.Spec : Prop :=
  ∀ n, P6220844216085508653.a n = A324549 (n + 1)

theorem P6220844216085508653.correct : P6220844216085508653.Spec := by
  intro n
  simp only [A324549, Nat.add_sub_cancel, A324549.P6220844216085508653.a, A324549.P838001861753721853.a, A000225, A000225.P6535533121115206393.a, A069061, A069061.P3498939395572373797.a, A151821, A151821.P3447003275305928826.f1, A151821.P3447003275305928826.a, A324552, A324552.P10145515765642831646.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324549

/-! ## A324549.P8319929512722548934

`A069061(n+1)-A036453(n+1)^(n+1)`
-/

namespace A324549.P8319929512722548934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069061 (n + 1) - A036453 (n + 1) ^ (n + 1)

end

end A324549.P8319929512722548934

namespace A324549

/-- `A069061(n+1)-A036453(n+1)^(n+1)` -/
def P8319929512722548934.Spec : Prop :=
  ∀ n, P8319929512722548934.a n = A324549 (n + 1)

end A324549

/-! ## A324549.P1061635328741655998

`A324118(A076274(n+2)+1)-A151821(n+1)`
-/

namespace A324549.P1061635328741655998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324118 (A076274 (n + 2) + 1).toNat - A151821 (n + 1)

end

end A324549.P1061635328741655998

namespace A324549

/-- `A324118(A076274(n+2)+1)-A151821(n+1)` -/
def P1061635328741655998.Spec : Prop :=
  ∀ n, P1061635328741655998.a n = A324549 (n + 1)

end A324549

/-! ## A324549.P97230800862936524

`A324118(A006093(n+1)+A006093(n+1)+2)-A151821(n+1)`
-/

namespace A324549.P97230800862936524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324118 (A006093 (n + 1) + (A006093 (n + 1) + 2)).toNat - A151821 (n + 1)

end

end A324549.P97230800862936524

namespace A324549

/-- `A324118(A006093(n+1)+A006093(n+1)+2)-A151821(n+1)` -/
def P97230800862936524.Spec : Prop :=
  ∀ n, P97230800862936524.a n = A324549 (n + 1)

end A324549

/-! ## A324549.P11313957539407871750

`A324543(A100484(n+1))`
-/

namespace A324549.P11313957539407871750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324543 (A100484 (n + 1)).toNat

end

end A324549.P11313957539407871750

namespace A324549

/-- `A324543(A100484(n+1))` -/
def P11313957539407871750.Spec : Prop :=
  ∀ n, P11313957539407871750.a n = A324549 (n + 1)

end A324549

/-! ## A324549.P13023891292182725176

`A324543(A001747(n+2))`
-/

namespace A324549.P13023891292182725176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324543 (A001747 (n + 2)).toNat

end

end A324549.P13023891292182725176

namespace A324549

/-- `A324543(A001747(n+2))` -/
def P13023891292182725176.Spec : Prop :=
  ∀ n, P13023891292182725176.a n = A324549 (n + 1)

end A324549

/-! ## A324549.P13457877463955150462

`A324543(2*p?[A107750(n)])`
-/

namespace A324549.P13457877463955150462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324543 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A324549.P13457877463955150462

namespace A324549

/-- `A324543(2*p?[A107750(n)])` -/
def P13457877463955150462.Spec : Prop :=
  ∀ n, P13457877463955150462.a n = A324549 (n + 1)

end A324549

/-! ## A324549.P14926225554061320820

`A324543(A005843(p?[A107750(n)]))`
-/

namespace A324549.P14926225554061320820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324543 (A005843 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A324549.P14926225554061320820

namespace A324549

/-- `A324543(A005843(p?[A107750(n)]))` -/
def P14926225554061320820.Spec : Prop :=
  ∀ n, P14926225554061320820.a n = A324549 (n + 1)

end A324549

/-! ## A324549.P13645244397145978445

`A324543(A000040(n+1)+A000040(n+1))`
-/

namespace A324549.P13645244397145978445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324543 (A000040 (n + 1) + A000040 (n + 1)).toNat

end

end A324549.P13645244397145978445

namespace A324549

/-- `A324543(A000040(n+1)+A000040(n+1))` -/
def P13645244397145978445.Spec : Prop :=
  ∀ n, P13645244397145978445.a n = A324549 (n + 1)

end A324549

/-!
# A324550: Primes written in primorial base (A049345).

The programs for A324550, there is no canonical definition to state claims against.
-/

/-! ## A324550.P2933460102957090654

`A049345(A000040(n+1))`
-/

namespace A324550.P2933460102957090654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 (A000040 (n + 1)).toNat

end

end A324550.P2933460102957090654

/-! ## A324550.P6825102450640161022

`A049345(p?[comp[n²]])`
-/

namespace A324550.P6825102450640161022
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A324550.P6825102450640161022

/-! ## A324550.P17856228819394739508

`A049345(Δ[A007504(n)])`
-/

namespace A324550.P17856228819394739508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 (f1 (n + 1) - f1 n).toNat

end

end A324550.P17856228819394739508

/-! ## A324550.P3377290897315864196

`A049345(record[A162753(n)])`
-/

namespace A324550.P3377290897315864196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A324550.P3377290897315864196

/-! ## A324550.P6897102127324642467

`A049345(A008578(n+2))`
-/

namespace A324550.P6897102127324642467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 (A008578 (n + 2)).toNat

end

end A324550.P6897102127324642467

/-! ## A324550.P12400118641076310706

`A049345(A182986(n+2))`
-/

namespace A324550.P12400118641076310706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 (A182986 (n + 2)).toNat

end

end A324550.P12400118641076310706

/-! ## A324550.P9592854279090829489

`A049345(eq[1, A105700(n)])`
-/

namespace A324550.P9592854279090829489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324550.P9592854279090829489

/-! ## A324550.P10896002675590822400

`A049345(eq[1, A328772(n)])`
-/

namespace A324550.P10896002675590822400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328772 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324550.P10896002675590822400

/-! ## A324550.P1836910603547745919

`A049345(record[A006530(n+2)])`
-/

namespace A324550.P1836910603547745919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A324550.P1836910603547745919

/-! ## A324550.P12296288343764509933

`A049345(record[A014963(n+2)])`
-/

namespace A324550.P12296288343764509933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A324550.P12296288343764509933

/-! ## A324550.P382087546042251537

`A049345(record[A020639(n+2)])`
-/

namespace A324550.P382087546042251537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A324550.P382087546042251537

/-! ## A324550.P12604212078798348708

`A049345(A006093(n+1)+1)`
-/

namespace A324550.P12604212078798348708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 (A006093 (n + 1) + 1).toNat

end

end A324550.P12604212078798348708

/-! ## A324550.P16012793798396873885

`A049345(A008864(n+1)-1)`
-/

namespace A324550.P16012793798396873885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 (A008864 (n + 1) - 1).toNat

end

end A324550.P16012793798396873885

/-! ## A324550.P12393947597573892814

`A049345(A100484(n+1)/2)`
-/

namespace A324550.P12393947597573892814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A324550.P12393947597573892814

/-! ## A324550.P1935634553864806282

`A049345(record[A000010(n+1)+1])`
-/

namespace A324550.P1935634553864806282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A324550.P1935634553864806282

/-! ## A324550.P11312422214247044335

`A049345(A006530(A100484(n+1)))`
-/

namespace A324550.P11312422214247044335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 (A006530 (A100484 (n + 1)).toNat).toNat

end

end A324550.P11312422214247044335

/-!
# A324551: Positions of negative terms in A323244.

The programs for A324551, there is no canonical definition to state claims against.
-/

/-! ## A324551.P977336507593011040

`eq[1, A324731(n+1)]+1`
-/

namespace A324551.P977336507593011040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324731 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A324551.P977336507593011040

/-! ## A324551.P11826421651669673312

`eq[1, A324731(A028310(n))]`
-/

namespace A324551.P11826421651669673312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324731 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324551.P11826421651669673312

/-! ## A324551.P13429252362468559485

`A011760(eq[1, A324731(n+1)])`
-/

namespace A324551.P13429252362468559485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324551.P13429252362468559485

/-! ## A324551.P5077806746309307983

`A063660(eq[1, A324731(n+1)])`
-/

namespace A324551.P5077806746309307983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324551.P5077806746309307983

/-! ## A324551.P18315717354540063406

`filter[A009188(n+1), A324731(#)]`
-/

namespace A324551.P18315717354540063406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324731 (f1 j).toNat = 1) n)

end

end A324551.P18315717354540063406

/-! ## A324551.P1593103221332424888

`filter[A264828(n+1), A324731(#)]`
-/

namespace A324551.P1593103221332424888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324731 (f1 j).toNat = 1) n)

end

end A324551.P1593103221332424888

/-! ## A324551.P12365661544595520017

`filter[A347202(n+1), A324731(#)]`
-/

namespace A324551.P12365661544595520017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324731 (f1 j).toNat = 1) n)

end

end A324551.P12365661544595520017

/-! ## A324551.P803015556475744448

`eq[1, A324731(A000007(n)+n)]`
-/

namespace A324551.P803015556475744448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324731 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324551.P803015556475744448

/-! ## A324551.P6139212145203921101

`eq[1, A324731(A000038(n)+n)]`
-/

namespace A324551.P6139212145203921101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324731 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324551.P6139212145203921101

/-! ## A324551.P12361648874748284803

`eq[1, A324731(xor(n, A000038(n)))]`
-/

namespace A324551.P12361648874748284803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324731 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324551.P12361648874748284803

/-! ## A324551.P9004451417229164854

`A000720(p?[A000040(n+1)*A324731(n+1)])`
-/

namespace A324551.P9004451417229164854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A324731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A324551.P9004451417229164854

/-! ## A324551.P9907653327555368016

`eq[1, A324731(A065033(2*n))]`
-/

namespace A324551.P9907653327555368016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324731 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324551.P9907653327555368016

/-! ## A324551.P13958556574328876690

`lt[A323244(n+1)+1, 1]+1`
-/

namespace A324551.P13958556574328876690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323244 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A324551.P13958556574328876690

/-! ## A324551.P11198556782837645945

`filter[A124134(n+1), A324731(#)]`
-/

namespace A324551.P11198556782837645945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324731 (f1 j).toNat = 1) n)

end

end A324551.P11198556782837645945

/-! ## A324551.P4572441044981528745

`filter[A217460(n+1), A324731(#)]`
-/

namespace A324551.P4572441044981528745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324731 (f1 j).toNat = 1) n)

end

end A324551.P4572441044981528745

/-! ## A324551.P11032519552328227477

`lt[A156552(n+1), A324865(n+1)]+1`
-/

namespace A324551.P11032519552328227477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324865 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A324551.P11032519552328227477

/-! ## A324551.P4690953486657534259

`eq[1, A324731(A233583(n+1))]`
-/

namespace A324551.P4690953486657534259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324731 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324551.P4690953486657534259

/-!
# A324552: a(n) = A324542(2*prime(n)).

The programs for A324552, the canonical program `A324552.P10145515765642831646` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324552 has offset 1).

The definition of A324552 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324552.P14406159869681338952

`A324542(2*A000040(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324552.P14406159869681338952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324542 (2 * A000040 (n + 1)).toNat

end

end A324552.P14406159869681338952

namespace A324552

/-- `A324542(2*A000040(n+1))` -/
def P14406159869681338952.Spec : Prop :=
  ∀ n, P14406159869681338952.a n = A324552 (n + 1)

end A324552

/-! ## A324552.P8859513355933614058

`record[A324542(n+4)]`
-/

namespace A324552.P8859513355933614058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324542 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324552.P8859513355933614058

namespace A324552

/-- `record[A324542(n+4)]` -/
def P8859513355933614058.Spec : Prop :=
  ∀ n, P8859513355933614058.a n = A324552 (n + 1)

end A324552

/-! ## A324552.P14518497898602367807

`A324542(A100484(n+1))`
-/

namespace A324552.P14518497898602367807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324542 (A100484 (n + 1)).toNat

end

end A324552.P14518497898602367807

namespace A324552

/-- `A324542(A100484(n+1))` -/
def P14518497898602367807.Spec : Prop :=
  ∀ n, P14518497898602367807.a n = A324552 (n + 1)

end A324552

/-! ## A324552.P10269893348516912435

`A324542(A001747(n+2))`
-/

namespace A324552.P10269893348516912435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324542 (A001747 (n + 2)).toNat

end

end A324552.P10269893348516912435

namespace A324552

/-- `A324542(A001747(n+2))` -/
def P10269893348516912435.Spec : Prop :=
  ∀ n, P10269893348516912435.a n = A324552 (n + 1)

end A324552

/-! ## A324552.P10365519615619325970

`A324542(2*(A040976(n+1)+2))`
-/

namespace A324552.P10365519615619325970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324542 (2 * (A040976 (n + 1) + 2)).toNat

end

end A324552.P10365519615619325970

namespace A324552

/-- `A324542(2*(A040976(n+1)+2))` -/
def P10365519615619325970.Spec : Prop :=
  ∀ n, P10365519615619325970.a n = A324552 (n + 1)

end A324552

/-! ## A324552.P15721951049342446248

`A069061(n+1)-A036453(n+1)`
-/

namespace A324552.P15721951049342446248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069061 (n + 1) - A036453 (n + 1)

end

end A324552.P15721951049342446248

namespace A324552

/-- `A069061(n+1)-A036453(n+1)` -/
def P15721951049342446248.Spec : Prop :=
  ∀ n, P15721951049342446248.a n = A324552 (n + 1)

end A324552

/-! ## A324552.P10145515765642831646

`A324549(n+1)+2*A000225(n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A324552

/-- `A324549(n+1)+2*A000225(n)` -/
def P10145515765642831646.Spec : Prop :=
  ∀ n, P10145515765642831646.a n = A324552 (n + 1)

theorem P10145515765642831646.correct : P10145515765642831646.Spec := by
  intro n
  simp only [A324552, Nat.add_sub_cancel]

end A324552

/-! ## A324552.P14549324351602274657

`A069061(n+1)-(2-A237709(n+1)%2)`
-/

namespace A324552.P14549324351602274657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069061 (n + 1) - (2 - Int.tmod (A237709 (n + 1)) 2)

end

end A324552.P14549324351602274657

namespace A324552

/-- `A069061(n+1)-(2-A237709(n+1)%2)` -/
def P14549324351602274657.Spec : Prop :=
  ∀ n, P14549324351602274657.a n = A324552 (n + 1)

end A324552

/-! ## A324552.P487243272270633658

`A069061(n+1)-ceil(A182774(n+1)/(n+1))`
-/

namespace A324552.P487243272270633658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069061 (n + 1) - ⌈(A182774 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A324552.P487243272270633658

namespace A324552

/-- `A069061(n+1)-ceil(A182774(n+1)/(n+1))` -/
def P487243272270633658.Spec : Prop :=
  ∀ n, P487243272270633658.a n = A324552 (n + 1)

end A324552

/-! ## A324552.P5554823377212384707

`A324542(A000040(n+1)+A000040(n+1))`
-/

namespace A324552.P5554823377212384707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324542 (A000040 (n + 1) + A000040 (n + 1)).toNat

end

end A324552.P5554823377212384707

namespace A324552

/-- `A324542(A000040(n+1)+A000040(n+1))` -/
def P5554823377212384707.Spec : Prop :=
  ∀ n, P5554823377212384707.a n = A324552 (n + 1)

end A324552

/-! ## A324552.P18214960240938266939

`A324542(A001748(n+2))`
-/

namespace A324552.P18214960240938266939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324542 (A001748 (n + 2)).toNat

end

end A324552.P18214960240938266939

namespace A324552

/-- `A324542(A001748(n+2))` -/
def P18214960240938266939.Spec : Prop :=
  ∀ n, P18214960240938266939.a n = A324552 (n + 1)

end A324552

/-!
# A324553: a(n) = the smallest number m such that gcd(m, tau(m)) = n where tau(k) = the number of the divisors of k (A000005).

The programs for A324553, there is no canonical definition to state claims against.
-/

/-! ## A324553.P5501443154613868810

`A324555(n+1)+A186114(A000079(n+3))`
-/

namespace A324553.P5501443154613868810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324555 (n + 1) + A186114 (A000079 (n + 3)).toNat

end

end A324553.P5501443154613868810

/-! ## A324553.P5354268172655108233

`A324555(n+1)+A063667(A037245(n+1))`
-/

namespace A324553.P5354268172655108233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324555 (n + 1) + A063667 (A037245 (n + 1)).toNat

end

end A324553.P5354268172655108233

/-! ## A324553.P11984396082412012514

`A324555(n+1)-A002448(A000701(3*n+4))`
-/

namespace A324553.P11984396082412012514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324555 (n + 1) - A002448 (A000701 (3 * n + 4)).toNat

end

end A324553.P11984396082412012514

/-! ## A324553.P8026104165420664728

`A324555(n+1)+A192323(A000108(n))`
-/

namespace A324553.P8026104165420664728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324555 (n + 1) + A192323 (A000108 n).toNat

end

end A324553.P8026104165420664728

/-! ## A324553.P6933705028895316424

`A324555(n+1)+A162781(A126791(n))`
-/

namespace A324553.P6933705028895316424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324555 (n + 1) + A162781 (A126791 n).toNat

end

end A324553.P6933705028895316424

/-!
# A324554: a(n) = the smallest number m such that gcd(tau(m), sigma(m)) = n where tau(k) = the number of the divisors of k (A000005) and sigma(k) = the sum of the divisors of k (A000203).

The programs for A324554, there is no canonical definition to state claims against.
-/

/-! ## A324554.P7584488023786550384

`lcm(n!, A097005(3*n+1))`
-/

namespace A324554.P7584488023786550384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial n : ℤ) (A097005 (3 * n + 1))

end

end A324554.P7584488023786550384

/-!
# A324555: a(n) = the smallest number m such that gcd(tau(m), pod(m)) = n where tau(k) = the number of the divisors of k (A000005) and pod(k) = the product of the divisors of k (A007955).

The programs for A324555, there is no canonical definition to state claims against.
-/

/-! ## A324555.P11095140511652795088

`A324553(n+1)-A000122(A000051(n))`
-/

namespace A324555.P11095140511652795088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324553 (n + 1) - A000122 (A000051 n).toNat

end

end A324555.P11095140511652795088

/-! ## A324555.P16967087640952587701

`A324553(n+1)-A162781(A126791(n))`
-/

namespace A324555.P16967087640952587701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324553 (n + 1) - A162781 (A126791 n).toNat

end

end A324555.P16967087640952587701

/-! ## A324555.P9404292096205932365

`A123492(A351972(n))^A028334(n+2)`
-/

namespace A324555.P9404292096205932365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123492 (A351972 n).toNat : ℚ) ^ (A028334 (n + 2) : ℤ)

end

end A324555.P9404292096205932365

/-!
# A324557: Fixed points of A324556.

The programs for A324557, there is no canonical definition to state claims against.
-/

/-! ## A324557.P18395689481013103273

`A233249(p?[A122111(n+1)]*A122111(n+1))`
-/

namespace A324557.P18395689481013103273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233249 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A122111 (n + 1)).toNat

end

end A324557.P18395689481013103273

/-!
# A324560: Numbers > 1 where the minimum prime index is less than or equal to the number of prime factors counted with multiplicity.

The programs for A324560, there is no canonical definition to state claims against.
-/

/-! ## A324560.P6787265985596537682

`∪[A102106(n+1), A118672(n+1)]`
-/

namespace A324560.P6787265985596537682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A324560.P6787265985596537682

/-! ## A324560.P9850059839631995009

`lt[A007094(A000700(n)), A018783(n)]`
-/

namespace A324560.P9850059839631995009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A000700 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A324560.P9850059839631995009

/-! ## A324560.P11521482387425167844

`lt[A001057(n), A368821(A007623(n)+1)]`
-/

namespace A324560.P11521482387425167844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368821 (A007623 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A324560.P11521482387425167844

/-! ## A324560.P15666432060423395381

`∑[A047999(A033816(n)+2)+1]`
-/

namespace A324560.P15666432060423395381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 (A033816 n + 2).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324560.P15666432060423395381

/-! ## A324560.P12443643719982809312

`eq[A000122(A331191(2*(n+1))), A134667(n)]`
-/

namespace A324560.P12443643719982809312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A331191 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134667 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A324560.P12443643719982809312

/-! ## A324560.P2915838226104940180

`A357137(A353855(n))+A004525(3*n+4)`
-/

namespace A324560.P2915838226104940180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357137 (A353855 n).toNat + A004525 (3 * n + 4)

end

end A324560.P2915838226104940180

/-! ## A324560.P17364156189152744106

`∑[A000034(∑[A026474(n+1)])]`
-/

namespace A324560.P17364156189152744106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026474 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324560.P17364156189152744106

/-! ## A324560.P6933123738920857405

`lt[A168223(n)+1, A334032(n+2)]`
-/

namespace A324560.P6933123738920857405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168223 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334032 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A324560.P6933123738920857405

/-! ## A324560.P11559574695027254072

`lt[A168223(n), A000212(A334032(n+2))]`
-/

namespace A324560.P11559574695027254072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168223 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (A334032 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A324560.P11559574695027254072

/-! ## A324560.P983343394092876771

`lt[A353864(floor((2*n+1)/3)), A353860(n)]`
-/

namespace A324560.P983343394092876771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353864 ⌊(2 * n + 1 : ℚ) / 3⌋.toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353860 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A324560.P983343394092876771

/-!
# A324561: Numbers with at least one prime index equal to 0, 1, or 4 modulo 5.

The programs for A324561, there is no canonical definition to state claims against.
-/

/-! ## A324561.P1498325423423520663

`lt[A014306(A355569(n+4)), A093101(n+1)]`
-/

namespace A324561.P1498325423423520663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 (A355569 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093101 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A324561.P1498325423423520663

/-! ## A324561.P11647484074760170120

`lt[A286588(A234613(n)), A346132(n+1)]`
-/

namespace A324561.P11647484074760170120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286588 (A234613 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346132 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A324561.P11647484074760170120

/-! ## A324561.P5625194915281223725

`lt[A030528(A046125(3*n+1)), A000384(n)]`
-/

namespace A324561.P5625194915281223725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030528 (A046125 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A324561.P5625194915281223725

/-! ## A324561.P17194752577467901989

`lt[A030528(A046125(3*n+1)), A128301(n+1)]`
-/

namespace A324561.P17194752577467901989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030528 (A046125 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128301 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A324561.P17194752577467901989

/-! ## A324561.P5595868901893133892

`lt[A061311(A136016(n+1)), A005384(2*n+3)]`
-/

namespace A324561.P5595868901893133892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061311 (A136016 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A324561.P5595868901893133892

/-!
# A324562: Numbers > 1 where the maximum prime index is greater than or equal to the number of prime factors counted with multiplicity.

The programs for A324562, the canonical program `A324562.P16997009951451606243` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324562 has offset 1).

The definition of A324562 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324562.P16997009951451606243

`lt[A331282(n+2), 1]+2`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A324562

/-- `lt[A331282(n+2), 1]+2` -/
def P16997009951451606243.Spec : Prop :=
  ∀ n, (P16997009951451606243.a n : ℤ) = A324562 (n + 1)

theorem P16997009951451606243.correct : P16997009951451606243.Spec := by
  intro n
  simp only [A324562, Nat.add_sub_cancel]

end A324562

/-! ## A324562.P9599494822657625742

`comp[n*A331282(n+1)]+1`
-/

namespace A324562.P9599494822657625742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A331282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A324562.P9599494822657625742

namespace A324562

/-- `comp[n*A331282(n+1)]+1` -/
def P9599494822657625742.Spec : Prop :=
  ∀ n, (P9599494822657625742.a n : ℤ) = A324562 (n + 1)

end A324562

/-! ## A324562.P17394529676037672848

`eq[A061395(n+2), A263297(n+2)]+2`
-/

namespace A324562.P17394529676037672848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A324562.P17394529676037672848

namespace A324562

/-- `eq[A061395(n+2), A263297(n+2)]+2` -/
def P17394529676037672848.Spec : Prop :=
  ∀ n, (P17394529676037672848.a n : ℤ) = A324562 (n + 1)

end A324562

/-! ## A324562.P5935020191153510742

`eq[A001222(n+2), A325225(n+2)]+2`
-/

namespace A324562.P5935020191153510742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325225 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A324562.P5935020191153510742

namespace A324562

/-- `eq[A001222(n+2), A325225(n+2)]+2` -/
def P5935020191153510742.Spec : Prop :=
  ∀ n, (P5935020191153510742.a n : ℤ) = A324562 (n + 1)

end A324562

/-! ## A324562.P3237559326240686141

`eq[A000007(n), A331282(n+1)]+1`
-/

namespace A324562.P3237559326240686141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331282 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A324562.P3237559326240686141

namespace A324562

/-- `eq[A000007(n), A331282(n+1)]+1` -/
def P3237559326240686141.Spec : Prop :=
  ∀ n, (P3237559326240686141.a n : ℤ) = A324562 (n + 1)

end A324562

/-! ## A324562.P15112712854392616921

`eq[abs(A257541(n+2)), A257541(n+2)]+2`
-/

namespace A324562.P15112712854392616921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A257541 (n + 2)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257541 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A324562.P15112712854392616921

namespace A324562

/-- `eq[abs(A257541(n+2)), A257541(n+2)]+2` -/
def P15112712854392616921.Spec : Prop :=
  ∀ n, (P15112712854392616921.a n : ℤ) = A324562 (n + 1)

end A324562

/-! ## A324562.P11825339396482171253

`A000720(p?[A331282(n+2)+A000040(n+2)])`
-/

namespace A324562.P11825339396482171253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331282 (n + 2) + A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A324562.P11825339396482171253

namespace A324562

/-- `A000720(p?[A331282(n+2)+A000040(n+2)])` -/
def P11825339396482171253.Spec : Prop :=
  ∀ n, P11825339396482171253.a n = A324562 (n + 1)

end A324562

/-! ## A324562.P14796759587795778427

`A061395(p?[A331282(n+2)+A000040(n+2)])`
-/

namespace A324562.P14796759587795778427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331282 (n + 2) + A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A324562.P14796759587795778427

namespace A324562

/-- `A061395(p?[A331282(n+2)+A000040(n+2)])` -/
def P14796759587795778427.Spec : Prop :=
  ∀ n, P14796759587795778427.a n = A324562 (n + 1)

end A324562

/-! ## A324562.P9967505581963321593

`eq[A233583(n+1)-n, A331282(A233583(n+1))]`
-/

namespace A324562.P9967505581963321593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331282 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A324562.P9967505581963321593

namespace A324562

/-- `eq[A233583(n+1)-n, A331282(A233583(n+1))]` -/
def P9967505581963321593.Spec : Prop :=
  ∀ n, (P9967505581963321593.a n : ℤ) = A324562 (n + 1)

end A324562

/-! ## A324562.P178016857475673408

`record[A202305(n+1)^(1-A331282(A202305(n+1)))]`
-/

namespace A324562.P178016857475673408
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202305 (n + 1) : ℚ) ^ (1 - A331282 (A202305 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324562.P178016857475673408

namespace A324562

/-- `record[A202305(n+1)^(1-A331282(A202305(n+1)))]` -/
def P178016857475673408.Spec : Prop :=
  ∀ n, P178016857475673408.a n = (A324562 (n + 1) : ℚ)

end A324562

/-!
# A324563: Number T(n,k) of permutations p of [n] such that k is the maximum of 0 and the number of elements in any integer interval [p(i)..i+n*[i<p(i)]]; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A324563, there is no canonical definition to state claims against.
-/

/-! ## A324563.P8217527013928956907

`A324564(A061579(n))`
-/

namespace A324563.P8217527013928956907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (A061579 n).toNat

end

end A324563.P8217527013928956907

/-! ## A324563.P6994477379767621400

`A324564(A114327(n)+n)`
-/

namespace A324563.P6994477379767621400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (A114327 n + (n : ℤ)).toNat

end

end A324563.P6994477379767621400

/-! ## A324563.P2720639205183454951

`A324564(A038722(n+1)-1)`
-/

namespace A324563.P2720639205183454951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (A038722 (n + 1) - 1).toNat

end

end A324563.P2720639205183454951

/-! ## A324563.P3376529266692423686

`A324564(A093995(n+1)-(n+1))`
-/

namespace A324563.P3376529266692423686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A324563.P3376529266692423686

/-! ## A324563.P18012903864377893848

`A324564(A002024(n+1)²-(n+1))`
-/

namespace A324563.P18012903864377893848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A324563.P18012903864377893848

/-! ## A324563.P11990022159401160822

`A324564((A003057(n+2)-1)²-(n+1))`
-/

namespace A324563.P11990022159401160822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 ((A003057 (n + 2) - 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A324563.P11990022159401160822

/-! ## A324563.P17190977450975435475

`A324564(A057428(n)+A038722(n+1))`
-/

namespace A324563.P17190977450975435475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (A057428 n + A038722 (n + 1)).toNat

end

end A324563.P17190977450975435475

/-!
# A324564: Number T(n,k) of permutations p of [n] such that n-k is the maximum of 0 and the number of elements in any integer interval [p(i)..i+n*[i<p(i)]]; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A324564, there is no canonical definition to state claims against.
-/

/-! ## A324564.P606393496144062929

`A324563(A061579(n))`
-/

namespace A324564.P606393496144062929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324563 (A061579 n).toNat

end

end A324564.P606393496144062929

/-! ## A324564.P16798387255898947213

`A324563(A114327(n)+n)`
-/

namespace A324564.P16798387255898947213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324563 (A114327 n + (n : ℤ)).toNat

end

end A324564.P16798387255898947213

/-! ## A324564.P4607811988843222060

`A324563(A038722(n+1)-1)`
-/

namespace A324564.P4607811988843222060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324563 (A038722 (n + 1) - 1).toNat

end

end A324564.P4607811988843222060

/-! ## A324564.P14103881180787454205

`A324563(A093995(n+1)-(n+1))`
-/

namespace A324564.P14103881180787454205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324563 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A324564.P14103881180787454205

/-! ## A324564.P14648795643395218938

`A324563(A023443(A038722(n+1)))`
-/

namespace A324564.P14648795643395218938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324563 (A023443 (A038722 (n + 1)).toNat).toNat

end

end A324564.P14648795643395218938

/-!
# A324568: a(n) = Sum_{i=0..n, j=0..n} (binomial(2*i, j) + binomial(2*j, i)).

The programs for A324568, the canonical program `A324568.P1592931569969043723` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324568 has offset 0).

The definition of A324568 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324568.P2715162028979599036

`∑[A072547(n+1)+Δ[A133915(n)]]`
-/

namespace A324568.P2715162028979599036
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133915 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072547 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324568.P2715162028979599036

namespace A324568

/-- `∑[A072547(n+1)+Δ[A133915(n)]]` -/
def P2715162028979599036.Spec : Prop :=
  ∀ n, P2715162028979599036.a n = A324568 n

end A324568

/-! ## A324568.P1592931569969043723

`A014300(n+1)+∑[A014301(n+1)+A000302(n)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A324568

/-- `A014300(n+1)+∑[A014301(n+1)+A000302(n)]` -/
def P1592931569969043723.Spec : Prop :=
  ∀ n, P1592931569969043723.a n = A324568 n

theorem P1592931569969043723.correct : P1592931569969043723.Spec := by
  intro n
  simp only [A324568]

end A324568

/-!
# A324570: Numbers where the sum of distinct prime indices (A066328) is equal to the number of prime factors counted with multiplicity (A001222).

The programs for A324570, there is no canonical definition to state claims against.
-/

/-! ## A324570.P13794350298854692018

`eq[A001222(n+1), A066328(n+1)]+1`
-/

namespace A324570.P13794350298854692018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A324570.P13794350298854692018

/-! ## A324570.P8965840768845276706

`eq[A073093(n+1)-1, A066328(n+1)]+1`
-/

namespace A324570.P8965840768845276706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A324570.P8965840768845276706

/-! ## A324570.P3388746861128782109

`eq[val(A124508(n+1), 2), A066328(n+1)]+1`
-/

namespace A324570.P3388746861128782109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A124508 (n + 1)).toNat 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A324570.P3388746861128782109

/-! ## A324570.P850684764941724678

`eq[val(A165831(n+1), 2), A066328(n+1)]+1`
-/

namespace A324570.P850684764941724678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165831 (n + 1)).toNat 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A324570.P850684764941724678

/-! ## A324570.P12589668628527393617

`eq[A001222(n+1), A056239(A073353(n+1)-(n+1))]+1`
-/

namespace A324570.P12589668628527393617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A073353 (n + 1) - (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A324570.P12589668628527393617

/-!
# A324571: Numbers whose ordered prime signature is equal to the set of distinct prime indices in decreasing order.

The programs for A324571, there is no canonical definition to state claims against.
-/

/-! ## A324571.P16353755536841391616

`∩[A048768(n+1), A304686(n+1)]`
-/

namespace A324571.P16353755536841391616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324571.P16353755536841391616

/-! ## A324571.P16747265969118936394

`∩[A109297(n+1), A304686(n+1)]`
-/

namespace A324571.P16747265969118936394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324571.P16747265969118936394

/-! ## A324571.P3371398862515627119

`∩[A304686(n+1), A325755(n+1)]`
-/

namespace A324571.P3371398862515627119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324571.P3371398862515627119

/-! ## A324571.P6796496109869379163

`∩[A304686(n+1), A367683(n+1)]`
-/

namespace A324571.P6796496109869379163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324571.P6796496109869379163

/-! ## A324571.P3261296167021566980

`∩[A048768(n+1), A364160(n+1)]`
-/

namespace A324571.P3261296167021566980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324571.P3261296167021566980

/-!
# A324572: Number of integer partitions of n whose multiplicities (where if x < y the multiplicity of x is counted prior to the multiplicity of y) are equal to the distinct parts in decreasing order.

The programs for A324572, there is no canonical definition to state claims against.
-/

/-! ## A324572.P7343420673727496887

`A087049(n)+A063725(A004149(n))`
-/

namespace A324572.P7343420673727496887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 n + A063725 (A004149 n).toNat

end

end A324572.P7343420673727496887

/-! ## A324572.P12440246993490932898

`A189135(A020712(n))+A027640(n)`
-/

namespace A324572.P12440246993490932898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189135 (A020712 n).toNat + A027640 n

end

end A324572.P12440246993490932898

/-! ## A324572.P9629888123929298128

`and(A050038(A273964(n+1)), A217605(n))`
-/

namespace A324572.P9629888123929298128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050038 (A273964 (n + 1)).toNat) (A217605 n)

end

end A324572.P9629888123929298128

/-! ## A324572.P7989421938864677718

`A248137(A121709(n+1))%A117545(n+1)`
-/

namespace A324572.P7989421938864677718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248137 (A121709 (n + 1)).toNat) (A117545 (n + 1))

end

end A324572.P7989421938864677718

/-! ## A324572.P12490190959589923178

`A053645(A040081(n+1)+A000079(n))`
-/

namespace A324572.P12490190959589923178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A040081 (n + 1) + A000079 n).toNat

end

end A324572.P12490190959589923178

/-!
# A324573: a(1) = 0; for n > 1, a(n) = sigma(A048675(n)).

The programs for A324573, there is no canonical definition to state claims against.
-/

/-! ## A324573.P7592260242338725352

`2*A048675(n+1)-A324575(n+1)`
-/

namespace A324573.P7592260242338725352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048675 (n + 1) - A324575 (n + 1)

end

end A324573.P7592260242338725352

/-! ## A324573.P5869480275675151247

`A048675(A003961(n+1))-A324575(n+1)`
-/

namespace A324573.P5869480275675151247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A003961 (n + 1)).toNat - A324575 (n + 1)

end

end A324573.P5869480275675151247

/-! ## A324573.P13484972694449133182

`∑{d}[Δ[A336415(n)], #]`
-/

namespace A324573.P13484972694449133182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336415 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A324573.P13484972694449133182

/-! ## A324573.P13694673702749216862

`∑{d}[A048675(n+1), #]`
-/

namespace A324573.P13694673702749216862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A324573.P13694673702749216862

/-! ## A324573.P11363415087409896265

`∑{d}[∑{d}[n+1, A297108(#)], #]`
-/

namespace A324573.P11363415087409896265
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A297108 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A324573.P11363415087409896265

/-! ## A324573.P16235349862420431074

`∑{d}[A104244(∑[n+1]+2), #]`
-/

namespace A324573.P16235349862420431074
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104244 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A324573.P16235349862420431074

/-! ## A324573.P16921659199542828875

`∑{d}[A156552(n+1)-A323905(n+1), #]`
-/

namespace A324573.P16921659199542828875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1) - A323905 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A324573.P16921659199542828875

/-!
# A324574: a(1) = 0; for n > 1, a(n) = A033879(A087207(n)).

The programs for A324574, there is no canonical definition to state claims against.
-/

/-! ## A324574.P4554715890317407521

`A324575(A007947(n+1))`
-/

namespace A324574.P4554715890317407521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324575 (A007947 (n + 1)).toNat

end

end A324574.P4554715890317407521

/-! ## A324574.P178105239415157086

`A324575(∏{p}[n+1, #])`
-/

namespace A324574.P178105239415157086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324575 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A324574.P178105239415157086

/-! ## A324574.P6542420914136169221

`A324575(A075423(n+1)+1)`
-/

namespace A324574.P6542420914136169221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324575 (A075423 (n + 1) + 1).toNat

end

end A324574.P6542420914136169221

/-! ## A324574.P13639827246574175477

`A324575((n+1)/A003557(n+1))`
-/

namespace A324574.P13639827246574175477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324575 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A324574.P13639827246574175477

/-! ## A324574.P15252503771491650129

`2*A087207(n+1)-A324573(A007947(n+1))`
-/

namespace A324574.P15252503771491650129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087207 (n + 1) - A324573 (A007947 (n + 1)).toNat

end

end A324574.P15252503771491650129

/-!
# A324575: a(1) = 0; for n > 1, a(n) = A033879(A048675(n)).

The programs for A324575, there is no canonical definition to state claims against.
-/

/-! ## A324575.P11558974508581279704

`2*A048675(n+1)-A324573(n+1)`
-/

namespace A324575.P11558974508581279704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048675 (n + 1) - A324573 (n + 1)

end

end A324575.P11558974508581279704

/-! ## A324575.P542707853645963772

`A324574(A097248(n+1))`
-/

namespace A324575.P542707853645963772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324574 (A097248 (n + 1)).toNat

end

end A324575.P542707853645963772

/-! ## A324575.P17825393119115714099

`A048675(A003961(n+1))-A324573(n+1)`
-/

namespace A324575.P17825393119115714099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A003961 (n + 1)).toNat - A324573 (n + 1)

end

end A324575.P17825393119115714099

/-! ## A324575.P12714894643202732826

`A324574(A097247(n+1))`
-/

namespace A324575.P12714894643202732826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324574 (A097247 (n + 1)).toNat

end

end A324575.P12714894643202732826

/-! ## A324575.P1425410741628312218

`A048675(A003961(n+1))-∑{d}[A048675(n+1), #]`
-/

namespace A324575.P1425410741628312218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A003961 (n + 1)).toNat - ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ)

end

end A324575.P1425410741628312218

/-!
# A324576: a(n) = A276086(A025487(n)).

The programs for A324576, there is no canonical definition to state claims against.
-/

/-! ## A324576.P450504740577239322

`A276086(A025487(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324576.P450504740577239322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A025487 (n + 1)).toNat

end

end A324576.P450504740577239322

/-! ## A324576.P8123484731305711300

`A324577(n+1)/A025487(n+1)`
-/

namespace A324576.P8123484731305711300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324577 (n + 1) : ℚ) / (A025487 (n + 1) : ℚ)

end

end A324576.P8123484731305711300

/-! ## A324576.P182386747536976041

`A324577(n+1)/record[A329899(n+1)]`
-/

namespace A324576.P182386747536976041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324577 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A324576.P182386747536976041

/-! ## A324576.P7545809410173492182

`A324577(n+1)/record[A051466(n+2)]`
-/

namespace A324576.P7545809410173492182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324577 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A324576.P7545809410173492182

/-! ## A324576.P1851224302117177449

`A324577(n+1)/A055932(A331119(n+1))`
-/

namespace A324576.P1851224302117177449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324577 (n + 1) : ℚ) / (A055932 (A331119 (n + 1)).toNat : ℚ)

end

end A324576.P1851224302117177449

/-! ## A324576.P2020940113772295328

`A324577(n+1)/(A247451(n+1)*A307107(n+1))`
-/

namespace A324576.P2020940113772295328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324577 (n + 1) : ℚ) / (A247451 (n + 1) * A307107 (n + 1) : ℚ)

end

end A324576.P2020940113772295328

/-! ## A324576.P5551914522646142011

`A324577(n+1)/gcd(A181817(n+1), A324577(n+1))`
-/

namespace A324576.P5551914522646142011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324577 (n + 1) : ℚ) / (Int.gcd (A181817 (n + 1)) (A324577 (n + 1)) : ℚ)

end

end A324576.P5551914522646142011

/-! ## A324576.P18006865591306527618

`A324577(n+1)/A181821(A181820(n+1))`
-/

namespace A324576.P18006865591306527618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324577 (n + 1) : ℚ) / (A181821 (A181820 (n + 1)).toNat : ℚ)

end

end A324576.P18006865591306527618

/-! ## A324576.P4850871009953187618

`A324577(n+1)/A329899(A330683(n+1))`
-/

namespace A324576.P4850871009953187618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324577 (n + 1) : ℚ) / (A329899 (A330683 (n + 1)).toNat : ℚ)

end

end A324576.P4850871009953187618

/-! ## A324576.P6381778766248591782

`A276086(record[A046523(n+1)])`
-/

namespace A324576.P6381778766248591782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A324576.P6381778766248591782

/-!
# A324577: a(n) = A025487(n) * A324576(n) = A025487(n) * A276086(A025487(n)).

The programs for A324577, there is no canonical definition to state claims against.
-/

/-! ## A324577.P4918262139882912404

`A025487(n+1)*A324576(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324577.P4918262139882912404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1) * A324576 (n + 1)

end

end A324577.P4918262139882912404

/-! ## A324577.P14264027199965922794

`A324580(A025487(n+1))`
-/

namespace A324577.P14264027199965922794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324580 (A025487 (n + 1)).toNat

end

end A324577.P14264027199965922794

/-! ## A324577.P12381165319136723096

`A025487(n+1)*A276086(A025487(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324577.P12381165319136723096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1) * A276086 (A025487 (n + 1)).toNat

end

end A324577.P12381165319136723096

/-! ## A324577.P12606037202032983396

`record[A329899(n+1)]*A324576(n+1)`
-/

namespace A324577.P12606037202032983396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A324576 (n + 1)

end

end A324577.P12606037202032983396

/-! ## A324577.P12123358023356105139

`record[A051466(n+2)]*A324576(n+1)`
-/

namespace A324577.P12123358023356105139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A324576 (n + 1)

end

end A324577.P12123358023356105139

/-! ## A324577.P14681905611766368882

`A051466(A329898(n+1))*A324576(n+1)`
-/

namespace A324577.P14681905611766368882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (A329898 (n + 1)).toNat * A324576 (n + 1)

end

end A324577.P14681905611766368882

/-! ## A324577.P7094038287276919202

`A055932(A331119(n+1))*A324576(n+1)`
-/

namespace A324577.P7094038287276919202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (A331119 (n + 1)).toNat * A324576 (n + 1)

end

end A324577.P7094038287276919202

/-! ## A324577.P11563266863542915117

`A247451(n+1)*A307107(n+1)*A324576(n+1)`
-/

namespace A324577.P11563266863542915117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247451 (n + 1) * A307107 (n + 1) * A324576 (n + 1)

end

end A324577.P11563266863542915117

/-! ## A324577.P3392898606981686291

`A181821(A181820(n+1))*A324576(n+1)`
-/

namespace A324577.P3392898606981686291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A181820 (n + 1)).toNat * A324576 (n + 1)

end

end A324577.P3392898606981686291

/-! ## A324577.P15517367560629924071

`A324576(n+1)*A329899(A330683(n+1))`
-/

namespace A324577.P15517367560629924071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324576 (n + 1) * A329899 (A330683 (n + 1)).toNat

end

end A324577.P15517367560629924071

/-! ## A324577.P12117662707431198101

`A324576(n+1)*A329887(A329905(n+1))`
-/

namespace A324577.P12117662707431198101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324576 (n + 1) * A329887 (A329905 (n + 1)).toNat

end

end A324577.P12117662707431198101

/-!
# A324578: Numbers n for which n*A276086(n) is a term of A055932.

The programs for A324578, there is no canonical definition to state claims against.
-/

/-! ## A324578.P9568410199020945888

`lt[A000010(A094816(n)), A141056(n)]`
-/

namespace A324578.P9568410199020945888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A094816 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A324578.P9568410199020945888

/-! ## A324578.P3765821829454152355

`lt[A003876(A007318(n)), A257106(n)]`
-/

namespace A324578.P3765821829454152355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003876 (A007318 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257106 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A324578.P3765821829454152355

/-! ## A324578.P4320534795668058924

`lt[A032741(A264428(n)), A074206(n)]`
-/

namespace A324578.P4320534795668058924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A264428 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A324578.P4320534795668058924

/-! ## A324578.P17492678314374846394

`lt[A248499(A166345(n+1)), A141056(n)]`
-/

namespace A324578.P17492678314374846394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248499 (A166345 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A324578.P17492678314374846394

/-! ## A324578.P11779582793532878411

`lt[A028242(A264336(n+1)), A353851(n)]`
-/

namespace A324578.P11779582793532878411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A264336 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353851 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A324578.P11779582793532878411

/-!
# A324579: Numbers n for which n*A276086(n) is a product of primorial numbers (is a term of A025487).

The programs for A324579, there is no canonical definition to state claims against.
-/

/-! ## A324579.P411104692116592627

`record[gcd(n, A000005(A328205(n+1)))]`
-/

namespace A324579.P411104692116592627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A000005 (A328205 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324579.P411104692116592627

/-! ## A324579.P2454312517838767035

`record[and(A034448(n+1), A260885(n+1))]`
-/

namespace A324579.P2454312517838767035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034448 (n + 1)) (A260885 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324579.P2454312517838767035

/-! ## A324579.P15392857762318902637

`record[gcd(∏{p}[n+1, 1-#], A318588(n+1))]`
-/

namespace A324579.P15392857762318902637
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ p ∈ Nat.primeFactors (f2 n), (1 - (p : ℤ))) (A318588 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324579.P15392857762318902637

/-! ## A324579.P4782801256383556849

`record[A124315(A001523(n))]`
-/

namespace A324579.P4782801256383556849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124315 (A001523 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324579.P4782801256383556849

/-! ## A324579.P16633161971365747975

`A014599(A101301(n+1)²)`
-/

namespace A324579.P16633161971365747975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014599 (A101301 (n + 1) ^ 2).toNat

end

end A324579.P16633161971365747975

/-!
# A324580: a(n) = n * A276086(n).

The programs for A324580, there is no canonical definition to state claims against.
-/

/-! ## A324580.P17318709098576135534

`n*A276086(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324580.P17318709098576135534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A276086 n

end

end A324580.P17318709098576135534

/-! ## A324580.P5310997345794631233

`n*(A351225(n)+n)`
-/

namespace A324580.P5310997345794631233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A351225 n + (n : ℤ))

end

end A324580.P5310997345794631233

/-! ## A324580.P10787068531964723278

`A324198(n)*A328584(n)`
-/

namespace A324580.P10787068531964723278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 n * A328584 n

end

end A324580.P10787068531964723278

/-! ## A324580.P2336391779013047125

`n*(A373849(n)+A003415(n))`
-/

namespace A324580.P2336391779013047125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A373849 n + A003415 n)

end

end A324580.P2336391779013047125

/-! ## A324580.P10913560645909172264

`n*(A328844(n)+A328843(n))`
-/

namespace A324580.P10913560645909172264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A328844 n + A328843 n)

end

end A324580.P10913560645909172264

/-! ## A324580.P16404991320466527248

`n*(A358764(n)+A324895(n))`
-/

namespace A324580.P16404991320466527248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A358764 n + A324895 n)

end

end A324580.P16404991320466527248

/-! ## A324580.P8909530520682756907

`n*(A327860(n)-A342016(n))`
-/

namespace A324580.P8909530520682756907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A327860 n - A342016 n)

end

end A324580.P8909530520682756907

/-! ## A324580.P12669899669337511395

`n*(A348949(n)-A348950(n))`
-/

namespace A324580.P12669899669337511395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A348949 n - A348950 n)

end

end A324580.P12669899669337511395

/-! ## A324580.P12804076532472265034

`n*A328571(n)*A328572(n)`
-/

namespace A324580.P12804076532472265034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A328571 n * A328572 n)

end

end A324580.P12804076532472265034

/-! ## A324580.P15434109815301712247

`n*A324198(n)*A351251(n)`
-/

namespace A324580.P15434109815301712247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A324198 n * A351251 n)

end

end A324580.P15434109815301712247

/-! ## A324580.P14484739417015606494

`n*A327858(n)*A351231(n)`
-/

namespace A324580.P14484739417015606494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A327858 n * A351231 n)

end

end A324580.P14484739417015606494

/-! ## A324580.P2179844516542358839

`n*lcm(A324895(n), A351251(n))`
-/

namespace A324580.P2179844516542358839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.lcm (A324895 n) (A351251 n)

end

end A324580.P2179844516542358839

/-! ## A324580.P830244578159761351

`n*A346101(A289234(n))`
-/

namespace A324580.P830244578159761351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A346101 (A289234 n).toNat

end

end A324580.P830244578159761351

/-! ## A324580.P12193714397224219387

`n*(A328580(n)+A328476(n))`
-/

namespace A324580.P12193714397224219387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A328580 n + A328476 n)

end

end A324580.P12193714397224219387

/-! ## A324580.P9009100370109754570

`n*A328475(n)*A328580(n)`
-/

namespace A324580.P9009100370109754570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A328475 n * A328580 n)

end

end A324580.P9009100370109754570

/-! ## A324580.P4341570367770545292

`n*A328627(A328625(n))`
-/

namespace A324580.P4341570367770545292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A328627 (A328625 n).toNat

end

end A324580.P4341570367770545292

/-! ## A324580.P5324220357161352329

`n*A328624(A328626(n))`
-/

namespace A324580.P5324220357161352329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A328624 (A328626 n).toNat

end

end A324580.P5324220357161352329

/-! ## A324580.P13401167541211703372

`n*A346102(A328623(n))`
-/

namespace A324580.P13401167541211703372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A346102 (A328623 n).toNat

end

end A324580.P13401167541211703372

/-! ## A324580.P10658104278773380475

`n*A054842(A049345(n))`
-/

namespace A324580.P10658104278773380475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A054842 (A049345 n).toNat

end

end A324580.P10658104278773380475

/-! ## A324580.P10250652101977861552

`n*A332815(A277022(n))`
-/

namespace A324580.P10250652101977861552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A332815 (A277022 n).toNat

end

end A324580.P10250652101977861552

/-!
# A324581: a(n) = A276086(A002182(n)).

The programs for A324581, there is no canonical definition to state claims against.
-/

/-! ## A324581.P926086256784217480

`A324582(n+1)/A002182(n+1)`
-/

namespace A324581.P926086256784217480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324582 (n + 1) : ℚ) / (A002182 (n + 1) : ℚ)

end

end A324581.P926086256784217480

/-! ## A324581.P5794021877394181657

`A276086(A002182(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324581.P5794021877394181657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A002182 (n + 1)).toNat

end

end A324581.P5794021877394181657

/-! ## A324581.P11039663220327515339

`A324582(n+1)/sqrt(A046952(n+1))`
-/

namespace A324581.P11039663220327515339
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A324582 (n + 1) : ℝ) / Real.sqrt (A046952 (n + 1) : ℝ)

end

end A324581.P11039663220327515339

/-! ## A324581.P6960514574852145234

`A324582(n+1)/(A135372(n+1)-1)`
-/

namespace A324581.P6960514574852145234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324582 (n + 1) : ℚ) / (A135372 (n + 1) - 1 : ℚ)

end

end A324581.P6960514574852145234

/-! ## A324581.P8668210383110851139

`A324582(n+1)/A061799(A002183(n+1))`
-/

namespace A324581.P8668210383110851139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324582 (n + 1) : ℚ) / (A061799 (A002183 (n + 1)).toNat : ℚ)

end

end A324581.P8668210383110851139

/-! ## A324581.P13359279133561306155

`A324582(n+1)/A025487(A306802(n+1))`
-/

namespace A324581.P13359279133561306155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324582 (n + 1) : ℚ) / (A025487 (A306802 (n + 1)).toNat : ℚ)

end

end A324581.P13359279133561306155

/-! ## A324581.P13339096142793207963

`A324582(n+1)/(A063072(n+1)-A072824(n+1))`
-/

namespace A324581.P13339096142793207963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324582 (n + 1) : ℚ) / (A063072 (n + 1) - A072824 (n + 1) : ℚ)

end

end A324581.P13339096142793207963

/-! ## A324581.P10801532137541919324

`A324582(n+1)/(A301413(n+1)*A319865(n+1))`
-/

namespace A324581.P10801532137541919324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324582 (n + 1) : ℚ) / (A301413 (n + 1) * A319865 (n + 1) : ℚ)

end

end A324581.P10801532137541919324

/-! ## A324581.P3528806596627587136

`A324576(A306802(n+1))`
-/

namespace A324581.P3528806596627587136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324576 (A306802 (n + 1)).toNat

end

end A324581.P3528806596627587136

/-! ## A324581.P7585144278165443978

`A324577(A306802(n+1))/A002182(n+1)`
-/

namespace A324581.P7585144278165443978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324577 (A306802 (n + 1)).toNat : ℚ) / (A002182 (n + 1) : ℚ)

end

end A324581.P7585144278165443978

/-!
# A324582: a(n) = A002182(n) * A324581(n) = A002182(n) * A276086(A002182(n)).

The programs for A324582, there is no canonical definition to state claims against.
-/

/-! ## A324582.P9003393858794848094

`A002182(n+1)*A324581(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324582.P9003393858794848094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1) * A324581 (n + 1)

end

end A324582.P9003393858794848094

/-! ## A324582.P4521874081443036403

`A324580(A002182(n+1))`
-/

namespace A324582.P4521874081443036403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324580 (A002182 (n + 1)).toNat

end

end A324582.P4521874081443036403

/-! ## A324582.P8000977724666958712

`A002182(n+1)*A276086(A002182(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324582.P8000977724666958712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1) * A276086 (A002182 (n + 1)).toNat

end

end A324582.P8000977724666958712

/-! ## A324582.P11460789488471036668

`(A135372(n+1)-1)*A324581(n+1)`
-/

namespace A324582.P11460789488471036668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A135372 (n + 1) - 1) * A324581 (n + 1)

end

end A324582.P11460789488471036668

/-! ## A324582.P1137770437378543661

`A061799(A002183(n+1))*A324581(n+1)`
-/

namespace A324582.P1137770437378543661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (A002183 (n + 1)).toNat * A324581 (n + 1)

end

end A324582.P1137770437378543661

/-! ## A324582.P2355877125469257713

`A025487(A306802(n+1))*A324581(n+1)`
-/

namespace A324582.P2355877125469257713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A306802 (n + 1)).toNat * A324581 (n + 1)

end

end A324582.P2355877125469257713

/-! ## A324582.P9119534521907118246

`lcm(A002182(A000027(n+1)), A324581(n+1))`
-/

namespace A324582.P9119534521907118246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002182 (A000027 (n + 1)).toNat) (A324581 (n + 1))

end

end A324582.P9119534521907118246

/-! ## A324582.P17869253178616309339

`A301413(n+1)*A319865(n+1)*A324581(n+1)`
-/

namespace A324582.P17869253178616309339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301413 (n + 1) * A319865 (n + 1) * A324581 (n + 1)

end

end A324582.P17869253178616309339

/-! ## A324582.P4187583029239358768

`ceil(A046952(n+1)/A135372(n+1))*A324581(n+1)`
-/

namespace A324582.P4187583029239358768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A046952 (n + 1) : ℚ) / (A135372 (n + 1) : ℚ)⌉ * A324581 (n + 1)

end

end A324582.P4187583029239358768

/-! ## A324582.P12485302502743423594

`A002182(n+1)*A324576(A306802(n+1))`
-/

namespace A324582.P12485302502743423594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1) * A324576 (A306802 (n + 1)).toNat

end

end A324582.P12485302502743423594

/-!
# A324583: Numbers k such that k and A276086(k) are coprime, where A276086 is the primorial base exp-function.

The programs for A324583, there is no canonical definition to state claims against.
-/

/-! ## A324583.P14387770940319360669

`record[A351250(n)]`
-/

namespace A324583.P14387770940319360669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324583.P14387770940319360669

/-! ## A324583.P10299412454623949939

`eq[0, A351254(n)]`
-/

namespace A324583.P10299412454623949939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351254 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324583.P10299412454623949939

/-! ## A324583.P8186510646470734017

`eq[0, A356302(n)]`
-/

namespace A324583.P8186510646470734017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356302 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324583.P8186510646470734017

/-! ## A324583.P3361161660242844005

`eq[0, A392608(n)]`
-/

namespace A324583.P3361161660242844005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392608 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324583.P3361161660242844005

/-! ## A324583.P12880099011657137949

`eq[1, A324198(n)]`
-/

namespace A324583.P12880099011657137949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324583.P12880099011657137949

/-! ## A324583.P11480933116697677845

`lt[0, A356162(n)]`
-/

namespace A324583.P11480933116697677845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356162 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A324583.P11480933116697677845

/-! ## A324583.P7068408015371392514

`eq[n, A351253(n)]`
-/

namespace A324583.P7068408015371392514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351253 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324583.P7068408015371392514

/-! ## A324583.P12583357205498919554

`comp[A324584(n+1)]`
-/

namespace A324583.P12583357205498919554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A324583.P12583357205498919554

/-! ## A324583.P11549801069572475721

`A351253(lt[n-1, A351253(n)])`
-/

namespace A324583.P11549801069572475721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351253 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351253 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A324583.P11549801069572475721

/-! ## A324583.P517604523070866129

`eq[1, A327168(n)]`
-/

namespace A324583.P517604523070866129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327168 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324583.P517604523070866129

/-! ## A324583.P539480914782909635

`filter[A047263(n+1), A356162(#)]`
-/

namespace A324583.P539480914782909635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356162 (f1 j).toNat = 1) n)

end

end A324583.P539480914782909635

/-! ## A324583.P14359631237395423192

`eq[0, A356303(n)]`
-/

namespace A324583.P14359631237395423192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356303 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324583.P14359631237395423192

/-! ## A324583.P13036809524597502234

`eq[n, A356309(n)]`
-/

namespace A324583.P13036809524597502234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356309 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324583.P13036809524597502234

/-! ## A324583.P8448227569448681039

`lt[gcd(n, A351225(n)), 2]`
-/

namespace A324583.P8448227569448681039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A351225 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A324583.P8448227569448681039

/-! ## A324583.P3616092068672746780

`filter[A057357(2*n+1), A356162(#)]`
-/

namespace A324583.P3616092068672746780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057357 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356162 (f1 j).toNat = 1) n)

end

end A324583.P3616092068672746780

/-!
# A324584: Numbers n that share a prime factor with A276086(n).

The programs for A324584, there is no canonical definition to state claims against.
-/

/-! ## A324584.P17710469815004615161

`eq[0, A356162(n)]`
-/

namespace A324584.P17710469815004615161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356162 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324584.P17710469815004615161

/-! ## A324584.P5556768613275964989

`lt[0, A351254(n)]`
-/

namespace A324584.P5556768613275964989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351254 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A324584.P5556768613275964989

/-! ## A324584.P8816646773369370376

`lt[0, A356302(n)]`
-/

namespace A324584.P8816646773369370376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356302 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A324584.P8816646773369370376

/-! ## A324584.P9483854883759052379

`lt[1, A324198(n)]`
-/

namespace A324584.P9483854883759052379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A324584.P9483854883759052379

/-! ## A324584.P2633218158840425376

`lt[A351250(n), n]`
-/

namespace A324584.P2633218158840425376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351250 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A324584.P2633218158840425376

/-! ## A324584.P7899089252077675875

`lt[A351253(n), n]`
-/

namespace A324584.P7899089252077675875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351253 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A324584.P7899089252077675875

/-! ## A324584.P1298175693286058849

`lt[1, A329037(n+1)]+1`
-/

namespace A324584.P1298175693286058849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329037 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A324584.P1298175693286058849

/-! ## A324584.P12446030562751988400

`eq[1, A000142(C(2, A324198(n)))]`
-/

namespace A324584.P12446030562751988400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (Nat.choose 2 (A324198 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324584.P12446030562751988400

/-! ## A324584.P2778575241034041376

`eq[1, A324198(C(3, A324198(n)))]`
-/

namespace A324584.P2778575241034041376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 (Nat.choose 3 (A324198 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324584.P2778575241034041376

/-! ## A324584.P13806339740394892959

`eq[1, A052549(round(1/A324198(n)))]`
-/

namespace A324584.P13806339740394892959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052549 (SequenceMachineLib.roundAway (1 / (A324198 n : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324584.P13806339740394892959

/-! ## A324584.P13165301186000799968

`eq[1, A198879(round(1/A324198(n)))]`
-/

namespace A324584.P13165301186000799968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198879 ((SequenceMachineLib.roundAway (1 / (A324198 n : ℚ))).toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324584.P13165301186000799968

/-! ## A324584.P2633854208095138202

`eq[1, A002182(round(1/A324198(n))+1)]`
-/

namespace A324584.P2633854208095138202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (SequenceMachineLib.roundAway (1 / (A324198 n : ℚ)) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324584.P2633854208095138202

/-! ## A324584.P3934416386900117233

`comp[A324583(n+1)]`
-/

namespace A324584.P3934416386900117233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A324584.P3934416386900117233

/-! ## A324584.P18019532450794805367

`lt[1, A327168(n)]`
-/

namespace A324584.P18019532450794805367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327168 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A324584.P18019532450794805367

/-! ## A324584.P1705585072159298901

`eq[1, A054977(A327168(n)-1)]`
-/

namespace A324584.P1705585072159298901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A327168 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324584.P1705585072159298901

/-! ## A324584.P7019233236404783602

`eq[1, A057427(A327168(n)-1)]`
-/

namespace A324584.P7019233236404783602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A327168 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324584.P7019233236404783602

/-! ## A324584.P2001848754680099861

`eq[1, A097325(A327168(n)-1)]`
-/

namespace A324584.P2001848754680099861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (A327168 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324584.P2001848754680099861

/-! ## A324584.P15427708932436602093

`eq[1, A158388(A327168(n)-1)]`
-/

namespace A324584.P15427708932436602093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (A327168 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324584.P15427708932436602093

/-! ## A324584.P4848018804304985062

`eq[1, A178334(A327168(n)-1)]`
-/

namespace A324584.P4848018804304985062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A327168 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324584.P4848018804304985062

/-! ## A324584.P4451804791503090915

`lt[1, gcd(n, A351225(n))]`
-/

namespace A324584.P4451804791503090915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A351225 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A324584.P4451804791503090915

/-!
# A324585: Minimum BDD size of the middle bit Boolean function of multiplication of two n-bit numbers for optimum orderings of variables.

The programs for A324585, there is no canonical definition to state claims against.
-/

/-! ## A324585.P5661238557907149668

`A104136(A179597(n)-n)+1`
-/

namespace A324585.P5661238557907149668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104136 (A179597 n - (n : ℤ)).toNat + 1

end

end A324585.P5661238557907149668

/-! ## A324585.P16081329845756446445

`A104136(A179597(n)+∑{d}[n+1, #])`
-/

namespace A324585.P16081329845756446445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104136 (A179597 n + ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)).toNat

end

end A324585.P16081329845756446445

/-!
# A324586: 2^(6*n/5) rounded to nearest integer.

The programs for A324586, the canonical program `A324586.P11932229784967516073` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324586 has offset 1).

The definition of A324586 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A324586.P11932229784967516073

`round(2^(6*(n+1)/5))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A324586

/-- `round(2^(6*(n+1)/5))` -/
def P11932229784967516073.Spec : Prop :=
  ∀ n, P11932229784967516073.a n = A324586 (n + 1)

theorem P11932229784967516073.correct : P11932229784967516073.Spec := by
  intro n
  simp only [A324586, Nat.add_sub_cancel]

end A324586

/-! ## A324586.P14541078399483584403

`A018136(2*(n+1))`
-/

namespace A324586.P14541078399483584403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018136 (2 * (n + 1))

end

end A324586.P14541078399483584403

namespace A324586

/-- `A018136(2*(n+1))` -/
def P14541078399483584403.Spec : Prop :=
  ∀ n, P14541078399483584403.a n = A324586 (n + 1)

end A324586

/-! ## A324586.P6094763289649450905

`A018124(3*(n+1))`
-/

namespace A324586.P6094763289649450905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018124 (3 * (n + 1))

end

end A324586.P6094763289649450905

namespace A324586

/-- `A018124(3*(n+1))` -/
def P6094763289649450905.Spec : Prop :=
  ∀ n, P6094763289649450905.a n = A324586 (n + 1)

end A324586

/-! ## A324586.P17507213358797814669

`A018118(6*(n+1))`
-/

namespace A324586.P17507213358797814669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018118 (6 * (n + 1))

end

end A324586.P17507213358797814669

namespace A324586

/-- `A018118(6*(n+1))` -/
def P17507213358797814669.Spec : Prop :=
  ∀ n, P17507213358797814669.a n = A324586 (n + 1)

end A324586

/-! ## A324586.P2279810696338260596

`record[A018136(xor(1, n)+1)]`
-/

namespace A324586.P2279810696338260596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018136 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324586.P2279810696338260596

namespace A324586

/-- `record[A018136(xor(1, n)+1)]` -/
def P2279810696338260596.Spec : Prop :=
  ∀ n, P2279810696338260596.a n = A324586 (n + 1)

end A324586

/-!
# A324587: Heinz numbers of integer partitions of n into distinct perfect squares (A033461).

The programs for A324587, there is no canonical definition to state claims against.
-/

/-! ## A324587.P6944123951805164622

`record[∏{p}[A324588(n+1), #]]`
-/

namespace A324587.P6944123951805164622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324588 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324587.P6944123951805164622

/-! ## A324587.P1526665779955445254

`record[A007913(A324588(n+1))]`
-/

namespace A324587.P1526665779955445254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A324588 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324587.P1526665779955445254

/-! ## A324587.P17394635817236452872

`filter[A324588(n+1), A008966(#)]`
-/

namespace A324587.P17394635817236452872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A324587.P17394635817236452872

/-! ## A324587.P16294616832966814746

`filter[A324588(n+1), A353559(#)]`
-/

namespace A324587.P16294616832966814746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A324587.P16294616832966814746

/-! ## A324587.P2202633419261183073

`filter[A324588(n+1), A359377(#)]`
-/

namespace A324587.P2202633419261183073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A324587.P2202633419261183073

/-!
# A324588: Heinz numbers of integer partitions of n into perfect squares (A001156).

The programs for A324588, there is no canonical definition to state claims against.
-/

/-! ## A324588.P15781110265098738434

`eq[1, A355731(n+1)%2]+1`
-/

namespace A324588.P15781110265098738434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355731 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A324588.P15781110265098738434

/-! ## A324588.P17354754048161449127

`lt[A078042(A355731(n+1)), 1]+1`
-/

namespace A324588.P17354754048161449127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078042 (A355731 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A324588.P17354754048161449127

/-! ## A324588.P8045296314221842709

`lt[1, A001511(A355731(n+1)+1)]+1`
-/

namespace A324588.P8045296314221842709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A355731 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A324588.P8045296314221842709

/-! ## A324588.P15653668189124038275

`lt[val(A016789(A355731(n+1)+1)+1, 2), 1]+1`
-/

namespace A324588.P15653668189124038275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A016789 (A355731 (n + 1) + 1).toNat + 1).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A324588.P15653668189124038275

/-! ## A324588.P7030174753177016081

`lt[A276163(A350285(n)), A179868(3*n)]`
-/

namespace A324588.P7030174753177016081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276163 (A350285 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179868 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A324588.P7030174753177016081

/-!
# A324591: E.g.f.: exp(2 * (x + x^2 / 2 + x^3 / 3)).

The programs for A324591, the canonical program `A324591.P8648314859779148492` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324591 has offset 0).

The definition of A324591 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A324591.P8648314859779148492

`2*(a(n-1)+(n-1)*a(n-2)+(n-1)*(n-2)*a(n-3))` with `a(0)=1, a(1)=2, a(2)=6`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A324591

/-- `2*(a(n-1)+(n-1)*a(n-2)+(n-1)*(n-2)*a(n-3))` -/
def P8648314859779148492.Spec : Prop :=
  ∀ n, P8648314859779148492.a n = A324591 n

theorem P8648314859779148492.correct : P8648314859779148492.Spec := by
  intro n
  simp only [A324591]

end A324591

/-! ## A324591.P446517587071605023

`A026741(A238014(2*(n+1)))`
-/

namespace A324591.P446517587071605023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A238014 (2 * (n + 1))).toNat

end

end A324591.P446517587071605023

namespace A324591

/-- `A026741(A238014(2*(n+1)))` -/
def P446517587071605023.Spec : Prop :=
  ∀ n, P446517587071605023.a n = A324591 n

end A324591

/-! ## A324591.P16094625183542188582

`A005843(A238014(2*(n+1))/2)/2`
-/

namespace A324591.P16094625183542188582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (SequenceMachineLib.roundAway ((A238014 (2 * (n + 1)) : ℚ) / 2)).toNat : ℚ) / 2

end

end A324591.P16094625183542188582

namespace A324591

/-- `A005843(A238014(2*(n+1))/2)/2` -/
def P16094625183542188582.Spec : Prop :=
  ∀ n, P16094625183542188582.a n = (A324591 n : ℚ)

end A324591

/-!
# A324592: Square array T(n, k) read by diagonals, n > 0, k > 0; for any number m > 0 with prime factorization Product_{i > 0} prime(i)^e(i), let f(m) = Sum_{i > 0} e(i) * sqrt(A005117(i)); f establishes a bijection between the positive numbers and the finite sums of square roots of squarefree numbers; let g be the inverse of f; T(n, k) = g(f(n) * f(k)).

The programs for A324592, there is no canonical definition to state claims against.
-/

/-! ## A324592.P7829036122068677926

`A000005(2^(A050186(n)-A051168(n)))`
-/

namespace A324592.P7829036122068677926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A050186 n - A051168 n : ℤ))).toNat

end

end A324592.P7829036122068677926

/-! ## A324592.P6588059601651971720

`A001222(2^(A050186(n)-A051168(n)))+1`
-/

namespace A324592.P6588059601651971720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A050186 n - A051168 n : ℤ))).toNat + 1

end

end A324592.P6588059601651971720

/-! ## A324592.P11506741567262083069

`A001222(2*2^(A050186(n)-A051168(n)))`
-/

namespace A324592.P11506741567262083069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (2 * (2 : ℚ) ^ (A050186 n - A051168 n : ℤ))).toNat

end

end A324592.P11506741567262083069

/-! ## A324592.P15115081783517886954

`A001222(lcm(3, 2^(A050186(n)-A051168(n))))`
-/

namespace A324592.P15115081783517886954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm 3 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A050186 n - A051168 n : ℤ))))

end

end A324592.P15115081783517886954

/-! ## A324592.P14531020942242205492

`A001222(A000043(n+1))+A050186(n)-A051168(n)`
-/

namespace A324592.P14531020942242205492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000043 (n + 1)).toNat + (A050186 n - A051168 n)

end

end A324592.P14531020942242205492

/-!
# A324593: a(n) is the smallest number k such that n consecutive integers starting at k have the same number of odd divisors (A001227).

The programs for A324593, there is no canonical definition to state claims against.
-/

/-! ## A324593.P18049854479117548186

`∏{p}[A224318(n), A082571(#)]`
-/

namespace A324593.P18049854479117548186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A082571 p

end

end A324593.P18049854479117548186

/-! ## A324593.P5773927812353239589

`A333751(A359884(n)+A091914(n))`
-/

namespace A324593.P5773927812353239589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333751 (A359884 n + A091914 n).toNat

end

end A324593.P5773927812353239589

/-!
# A324594: a(n) is the smallest number k such that n consecutive integers starting at k have the same number of nonprime divisors (A033273).

The programs for A324594, there is no canonical definition to state claims against.
-/

/-! ## A324594.P3131546849518732368

`A034173(a(n-2)+n)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A324594.P3131546849518732368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A034173 (a (n - 2) + (n : ℤ)).toNat

end

end A324594.P3131546849518732368

/-!
# A324595: Number of colored integer partitions of 2n such that all colors from an n-set are used and parts differ by size or by color.

The programs for A324595, there is no canonical definition to state claims against.
-/

/-! ## A324595.P16176803565592624685

`A308680(∑[4*n])`
-/

namespace A324595.P16176803565592624685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A324595.P16176803565592624685

/-! ## A324595.P11694270909213999976

`lcm((-1)^n, A308680(A046092(n)))`
-/

namespace A324595.P11694270909213999976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A308680 (A046092 n).toNat)

end

end A324595.P11694270909213999976

/-! ## A324595.P5238636633665503753

`gcd(A000038(n), A308680(A046092(n)))`
-/

namespace A324595.P5238636633665503753
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A308680 (A046092 n).toNat)

end

end A324595.P5238636633665503753

/-! ## A324595.P10552693270784881203

`A308680(A046092(n))%A305284(n+1)`
-/

namespace A324595.P10552693270784881203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308680 (A046092 n).toNat) (A305284 (n + 1))

end

end A324595.P10552693270784881203

/-! ## A324595.P17560219818956686070

`A007318(C(2, n+2))*A308680(A046092(n))`
-/

namespace A324595.P17560219818956686070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A308680 (A046092 n).toNat

end

end A324595.P17560219818956686070

/-! ## A324595.P9480273619502943874

`A007318(A000217(n))*A308680(A046092(n))`
-/

namespace A324595.P9480273619502943874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A308680 (A046092 n).toNat

end

end A324595.P9480273619502943874

/-! ## A324595.P13726166394031230727

`A071974(A005117(n+1))*A308680(A046092(n))`
-/

namespace A324595.P13726166394031230727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (A005117 (n + 1)).toNat * A308680 (A046092 n).toNat

end

end A324595.P13726166394031230727

/-! ## A324595.P15872349570038960444

`A308680(A046092(n))+A185284(A085731(n+1))`
-/

namespace A324595.P15872349570038960444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (A046092 n).toNat + A185284 (A085731 (n + 1)).toNat

end

end A324595.P15872349570038960444

