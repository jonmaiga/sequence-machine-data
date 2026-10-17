import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C022
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A386006: a(n) = Sum_{k=0..n} binomial(3*n-2,k).

The programs for A386006, there is no canonical definition to state claims against.
-/

/-! ## A386006.P5021979577999481930

`A097750(2*n²)`
-/

namespace A386006.P5021979577999481930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097750 (2 * n ^ 2)

end

end A386006.P5021979577999481930

/-! ## A386006.P140616428007903382

`A008949(A117625(n))`
-/

namespace A386006.P140616428007903382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (A117625 n).toNat

end

end A386006.P140616428007903382

/-! ## A386006.P1372551348498216578

`A193820(A022266(n))`
-/

namespace A386006.P1372551348498216578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193820 (A022266 n).toNat

end

end A386006.P1372551348498216578

/-! ## A386006.P11778902479309113767

`A052509(A383464(n))`
-/

namespace A386006.P11778902479309113767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 (A383464 n).toNat

end

end A386006.P11778902479309113767

/-! ## A386006.P3846134933633859739

`A054123(A139274(n))`
-/

namespace A386006.P3846134933633859739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 (A139274 n).toNat

end

end A386006.P3846134933633859739

/-!
# A386011: Total number of inversions in all parking functions of length n.

The programs for A386011, there is no canonical definition to state claims against.
-/

/-! ## A386011.P267495925023951737

`(n+1)/2*(n+2)^(n-1)*∑[n]`
-/

namespace A386011.P267495925023951737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (n + 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A386011.P267495925023951737

/-!
# A386012: a(n) = n^3*tau(n).

The programs for A386012, the canonical program `A386012.P15305501697735957009` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386012 has offset 1).

The definition of A386012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386012.P15305501697735957009

`∑{d}[n+1, lcm(#, (n+1)^3)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A386012

/-- `∑{d}[n+1, lcm(#, (n+1)^3)]` -/
def P15305501697735957009.Spec : Prop :=
  ∀ n, (P15305501697735957009.a n : ℤ) = A386012 (n + 1)

theorem P15305501697735957009.correct : P15305501697735957009.Spec := by
  intro n
  simp only [A386012, Nat.add_sub_cancel]

end A386012

/-! ## A386012.P14051992403086188070

`∑{d}[n+1, A372928(#)]`
-/

namespace A386012.P14051992403086188070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A372928 d

end

end A386012.P14051992403086188070

namespace A386012

/-- `∑{d}[n+1, A372928(#)]` -/
def P14051992403086188070.Spec : Prop :=
  ∀ n, P14051992403086188070.a n = A386012 (n + 1)

end A386012

/-! ## A386012.P9580213959807626548

`(n+1)*A034714(n+1)`
-/

namespace A386012.P9580213959807626548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A034714 (n + 1)

end

end A386012.P9580213959807626548

namespace A386012

/-- `(n+1)*A034714(n+1)` -/
def P9580213959807626548.Spec : Prop :=
  ∀ n, P9580213959807626548.a n = A386012 (n + 1)

end A386012

/-! ## A386012.P8177782502262629845

`A386013(n+1)/(n+1)`
-/

namespace A386012.P8177782502262629845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386013 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A386012.P8177782502262629845

namespace A386012

/-- `A386013(n+1)/(n+1)` -/
def P8177782502262629845.Spec : Prop :=
  ∀ n, P8177782502262629845.a n = (A386012 (n + 1) : ℚ)

end A386012

/-! ## A386012.P6686886019494635702

`(n+1)²*A038040(n+1)`
-/

namespace A386012.P6686886019494635702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A038040 (n + 1)

end

end A386012.P6686886019494635702

namespace A386012

/-- `(n+1)²*A038040(n+1)` -/
def P6686886019494635702.Spec : Prop :=
  ∀ n, P6686886019494635702.a n = A386012 (n + 1)

end A386012

/-! ## A386012.P11696724120379954040

`(n+1)^3*A000005(n+1)`
-/

namespace A386012.P11696724120379954040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) * A000005 (n + 1)

end

end A386012.P11696724120379954040

namespace A386012

/-- `(n+1)^3*A000005(n+1)` -/
def P11696724120379954040.Spec : Prop :=
  ∀ n, P11696724120379954040.a n = A386012 (n + 1)

end A386012

/-! ## A386012.P3384531147112244280

`A000005(n+1)*A000578(n+1)`
-/

namespace A386012.P3384531147112244280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000578 (n + 1)

end

end A386012.P3384531147112244280

namespace A386012

/-- `A000005(n+1)*A000578(n+1)` -/
def P3384531147112244280.Spec : Prop :=
  ∀ n, P3384531147112244280.a n = A386012 (n + 1)

end A386012

/-! ## A386012.P16233470337698711613

`∑{d}[n+1, A001158(#)*A059376((n+1)/#)]`
-/

namespace A386012.P16233470337698711613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001158 d * A059376 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A386012.P16233470337698711613

namespace A386012

/-- `∑{d}[n+1, A001158(#)*A059376((n+1)/#)]` -/
def P16233470337698711613.Spec : Prop :=
  ∀ n, P16233470337698711613.a n = A386012 (n + 1)

end A386012

/-! ## A386012.P13938008940609754435

`∑{d}[n+1, A000056(#)*A328259((n+1)/#)]`
-/

namespace A386012.P13938008940609754435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000056 d * A328259 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A386012.P13938008940609754435

namespace A386012

/-- `∑{d}[n+1, A000056(#)*A328259((n+1)/#)]` -/
def P13938008940609754435.Spec : Prop :=
  ∀ n, P13938008940609754435.a n = A386012 (n + 1)

end A386012

/-! ## A386012.P16934265174630856478

`∑{d}[n+1, A000005(#)*A338165((n+1)/#)]`
-/

namespace A386012.P16934265174630856478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A338165 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A386012.P16934265174630856478

namespace A386012

/-- `∑{d}[n+1, A000005(#)*A338165((n+1)/#)]` -/
def P16934265174630856478.Spec : Prop :=
  ∀ n, P16934265174630856478.a n = A386012 (n + 1)

end A386012

/-! ## A386012.P13073143251223638631

`∑{d}[n+1, A068963(#)*A368743((n+1)/#)]`
-/

namespace A386012.P13073143251223638631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068963 d * A368743 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A386012.P13073143251223638631

namespace A386012

/-- `∑{d}[n+1, A068963(#)*A368743((n+1)/#)]` -/
def P13073143251223638631.Spec : Prop :=
  ∀ n, P13073143251223638631.a n = A386012 (n + 1)

end A386012

/-! ## A386012.P9556870362007140016

`∑{d}[n+1, A069097(#)*A373060((n+1)/#)]`
-/

namespace A386012.P9556870362007140016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069097 d * A373060 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A386012.P9556870362007140016

namespace A386012

/-- `∑{d}[n+1, A069097(#)*A373060((n+1)/#)]` -/
def P9556870362007140016.Spec : Prop :=
  ∀ n, P9556870362007140016.a n = A386012 (n + 1)

end A386012

/-! ## A386012.P9549758978058546415

`∑{d}[n+1, A343497(#)*A350156((n+1)/#)]`
-/

namespace A386012.P9549758978058546415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A343497 d * A350156 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A386012.P9549758978058546415

namespace A386012

/-- `∑{d}[n+1, A343497(#)*A350156((n+1)/#)]` -/
def P9549758978058546415.Spec : Prop :=
  ∀ n, P9549758978058546415.a n = A386012 (n + 1)

end A386012

/-! ## A386012.P1493118041893945597

`A000578(n+1)+A000578(n+1)*A032741(n+1)`
-/

namespace A386012.P1493118041893945597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) + A000578 (n + 1) * A032741 (n + 1)

end

end A386012.P1493118041893945597

namespace A386012

/-- `A000578(n+1)+A000578(n+1)*A032741(n+1)` -/
def P1493118041893945597.Spec : Prop :=
  ∀ n, P1493118041893945597.a n = A386012 (n + 1)

end A386012

/-! ## A386012.P13002873091050684117

`A000578(n+1)/A035116(n+1)*A319089(n+1)`
-/

namespace A386012.P13002873091050684117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000578 (n + 1) : ℚ) / (A035116 (n + 1) : ℚ) * (A319089 (n + 1) : ℚ)

end

end A386012.P13002873091050684117

namespace A386012

/-- `A000578(n+1)/A035116(n+1)*A319089(n+1)` -/
def P13002873091050684117.Spec : Prop :=
  ∀ n, P13002873091050684117.a n = (A386012 (n + 1) : ℚ)

end A386012

/-! ## A386012.P14619891411213658736

`A000005(n+1)*A103164(n+1)*A103390(n+2)`
-/

namespace A386012.P14619891411213658736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A103164 (n + 1) * A103390 (n + 2)

end

end A386012.P14619891411213658736

namespace A386012

/-- `A000005(n+1)*A103164(n+1)*A103390(n+2)` -/
def P14619891411213658736.Spec : Prop :=
  ∀ n, P14619891411213658736.a n = A386012 (n + 1)

end A386012

/-! ## A386012.P9562105391010091298

`A038040(n+1)/A007956(n+1)*A338576(n+1)`
-/

namespace A386012.P9562105391010091298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (A007956 (n + 1) : ℚ) * (A338576 (n + 1) : ℚ)

end

end A386012.P9562105391010091298

namespace A386012

/-- `A038040(n+1)/A007956(n+1)*A338576(n+1)` -/
def P9562105391010091298.Spec : Prop :=
  ∀ n, P9562105391010091298.a n = (A386012 (n + 1) : ℚ)

end A386012

/-! ## A386012.P16481799610323181242

`(n+1)²*A127168(∑[n])`
-/

namespace A386012.P16481799610323181242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A127168 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A386012.P16481799610323181242

namespace A386012

/-- `(n+1)²*A127168(∑[n])` -/
def P16481799610323181242.Spec : Prop :=
  ∀ n, P16481799610323181242.a n = A386012 (n + 1)

end A386012

/-! ## A386012.P12276318531013248267

`(n+1)²*A143271(∑[n+1])`
-/

namespace A386012.P12276318531013248267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A143271 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A386012.P12276318531013248267

namespace A386012

/-- `(n+1)²*A143271(∑[n+1])` -/
def P12276318531013248267.Spec : Prop :=
  ∀ n, P12276318531013248267.a n = A386012 (n + 1)

end A386012

/-! ## A386012.P6121827315895123360

`(n+1)²*A143273(∑[n+1])`
-/

namespace A386012.P6121827315895123360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A143273 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A386012.P6121827315895123360

namespace A386012

/-- `(n+1)²*A143273(∑[n+1])` -/
def P6121827315895123360.Spec : Prop :=
  ∀ n, P6121827315895123360.a n = A386012 (n + 1)

end A386012

/-!
# A386013: a(n) = n^4*tau(n).

The programs for A386013, the canonical program `A386013.P18011294247083933259` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386013 has offset 1).

The definition of A386013 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386013.P18011294247083933259

`∑{d}[n+1, lcm(#, (n+1)^4)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A386013

/-- `∑{d}[n+1, lcm(#, (n+1)^4)]` -/
def P18011294247083933259.Spec : Prop :=
  ∀ n, (P18011294247083933259.a n : ℤ) = A386013 (n + 1)

theorem P18011294247083933259.correct : P18011294247083933259.Spec := by
  intro n
  simp only [A386013, Nat.add_sub_cancel]

end A386013

/-! ## A386013.P11527096131632285985

`∑{d}[n+1, lcm((n+1)², #²)²]`
-/

namespace A386013.P11527096131632285985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.lcm ((n + 1) ^ 2) (d ^ 2) ^ 2

end

end A386013.P11527096131632285985

namespace A386013

/-- `∑{d}[n+1, lcm((n+1)², #²)²]` -/
def P11527096131632285985.Spec : Prop :=
  ∀ n, (P11527096131632285985.a n : ℤ) = A386013 (n + 1)

end A386013

/-! ## A386013.P15502013318663498299

`∑{d}[n+1, A372931(#)]`
-/

namespace A386013.P15502013318663498299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A372931 d

end

end A386013.P15502013318663498299

namespace A386013

/-- `∑{d}[n+1, A372931(#)]` -/
def P15502013318663498299.Spec : Prop :=
  ∀ n, P15502013318663498299.a n = A386013 (n + 1)

end A386013

/-! ## A386013.P6399974458162219242

`(n+1)*A386012(n+1)`
-/

namespace A386013.P6399974458162219242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A386012 (n + 1)

end

end A386013.P6399974458162219242

namespace A386013

/-- `(n+1)*A386012(n+1)` -/
def P6399974458162219242.Spec : Prop :=
  ∀ n, P6399974458162219242.a n = A386013 (n + 1)

end A386013

/-! ## A386013.P1571976324147848246

`(n+1)²*A034714(n+1)`
-/

namespace A386013.P1571976324147848246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A034714 (n + 1)

end

end A386013.P1571976324147848246

namespace A386013

/-- `(n+1)²*A034714(n+1)` -/
def P1571976324147848246.Spec : Prop :=
  ∀ n, P1571976324147848246.a n = A386013 (n + 1)

end A386013

/-! ## A386013.P3159349846340381670

`(n+1)^3*A038040(n+1)`
-/

namespace A386013.P3159349846340381670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) * A038040 (n + 1)

end

end A386013.P3159349846340381670

namespace A386013

/-- `(n+1)^3*A038040(n+1)` -/
def P3159349846340381670.Spec : Prop :=
  ∀ n, P3159349846340381670.a n = A386013 (n + 1)

end A386013

/-! ## A386013.P4790552882963357175

`(n+1)²²*A000005(n+1)`
-/

namespace A386013.P4790552882963357175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) * A000005 (n + 1)

end

end A386013.P4790552882963357175

namespace A386013

/-- `(n+1)²²*A000005(n+1)` -/
def P4790552882963357175.Spec : Prop :=
  ∀ n, P4790552882963357175.a n = A386013 (n + 1)

end A386013

/-! ## A386013.P7870339258360749949

`∑{d}[n+1, A001159(#)*A059377((n+1)/#)]`
-/

namespace A386013.P7870339258360749949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001159 d * A059377 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A386013.P7870339258360749949

namespace A386013

/-- `∑{d}[n+1, A001159(#)*A059377((n+1)/#)]` -/
def P7870339258360749949.Spec : Prop :=
  ∀ n, P7870339258360749949.a n = A386013 (n + 1)

end A386013

/-! ## A386013.P10888641885907425442

`∑{d}[n+1, A068970(#)*A372929((n+1)/#)]`
-/

namespace A386013.P10888641885907425442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068970 d * A372929 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A386013.P10888641885907425442

namespace A386013

/-- `∑{d}[n+1, A068970(#)*A372929((n+1)/#)]` -/
def P10888641885907425442.Spec : Prop :=
  ∀ n, P10888641885907425442.a n = A386013 (n + 1)

end A386013

/-! ## A386013.P8427315974098427672

`∑{d}[n+1, A084218(#)*A372926((n+1)/#)]`
-/

namespace A386013.P8427315974098427672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A084218 d * A372926 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A386013.P8427315974098427672

namespace A386013

/-- `∑{d}[n+1, A084218(#)*A372926((n+1)/#)]` -/
def P8427315974098427672.Spec : Prop :=
  ∀ n, P8427315974098427672.a n = A386013 (n + 1)

end A386013

/-! ## A386013.P16469821158239508255

`∑{d}[n+1, A343498(#)*A372952((n+1)/#)]`
-/

namespace A386013.P16469821158239508255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A343498 d * A372952 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A386013.P16469821158239508255

namespace A386013

/-- `∑{d}[n+1, A343498(#)*A372952((n+1)/#)]` -/
def P16469821158239508255.Spec : Prop :=
  ∀ n, P16469821158239508255.a n = A386013 (n + 1)

end A386013

/-! ## A386013.P18221955487245391048

`A000005(n+1)*A000583(n+1)`
-/

namespace A386013.P18221955487245391048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000583 (n + 1)

end

end A386013.P18221955487245391048

namespace A386013

/-- `A000005(n+1)*A000583(n+1)` -/
def P18221955487245391048.Spec : Prop :=
  ∀ n, P18221955487245391048.a n = A386013 (n + 1)

end A386013

/-! ## A386013.P7771420396992850721

`A000005(n+1)*A002523(n+1)-A000005(n+1)`
-/

namespace A386013.P7771420396992850721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A002523 (n + 1) - A000005 (n + 1)

end

end A386013.P7771420396992850721

namespace A386013

/-- `A000005(n+1)*A002523(n+1)-A000005(n+1)` -/
def P7771420396992850721.Spec : Prop :=
  ∀ n, P7771420396992850721.a n = A386013 (n + 1)

end A386013

/-! ## A386013.P15849148750176795705

`A000005(n+1)*A000290(A000290(n+1))`
-/

namespace A386013.P15849148750176795705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000290 (A000290 (n + 1)).toNat

end

end A386013.P15849148750176795705

namespace A386013

/-- `A000005(n+1)*A000290(A000290(n+1))` -/
def P15849148750176795705.Spec : Prop :=
  ∀ n, P15849148750176795705.a n = A386013 (n + 1)

end A386013

/-!
# A386015: Number of parking functions of size n with a descent in the first position.

The programs for A386015, there is no canonical definition to state claims against.
-/

/-! ## A386015.P13380856488132393910

`floor((n+1)/2*(n+2)^(n-1))`
-/

namespace A386015.P13380856488132393910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 2 * (n + 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A386015.P13380856488132393910

/-! ## A386015.P6848280368519828447

`lcm(n+1, floor((n+2)^(n-1)))/2`
-/

namespace A386015.P6848280368519828447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) ⌊(n + 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ : ℚ) / 2

end

end A386015.P6848280368519828447

/-! ## A386015.P13007339651124216872

`A055865(n+1)/2`
-/

namespace A386015.P13007339651124216872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055865 (n + 1) : ℚ) / 2

end

end A386015.P13007339651124216872

/-! ## A386015.P9439939504023214025

`record[A033842(n+2)%A033842(n)]`
-/

namespace A386015.P9439939504023214025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033842 (n + 2)) (A033842 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A386015.P9439939504023214025

/-!
# A386016: A sequence constructed by greedily sampling the Borel distribution for parameter value 1/2 to minimize ratio discrepancy.

The programs for A386016, there is no canonical definition to state claims against.
-/

/-! ## A386016.P7899255556149976570

`A333381(A386989(n+1))`
-/

namespace A386016.P7899255556149976570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A386989 (n + 1)).toNat

end

end A386016.P7899255556149976570

/-! ## A386016.P6383317165686315257

`A288915(A356422(n+2))`
-/

namespace A386016.P6383317165686315257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288915 (A356422 (n + 2)).toNat

end

end A386016.P6383317165686315257

/-! ## A386016.P8435056943870519677

`gcd(A143898(A265075(n)), A377430(n+5))`
-/

namespace A386016.P8435056943870519677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143898 (A265075 n).toNat) (A377430 (n + 5))

end

end A386016.P8435056943870519677

/-! ## A386016.P16933689593288574388

`A333766(C(A182097(n+2), A345197(n)))`
-/

namespace A386016.P16933689593288574388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333766 (Nat.choose (A182097 (n + 2)).toNat (A345197 n).toNat)

end

end A386016.P16933689593288574388

/-! ## A386016.P17352078332602118430

`A066099(or(A074149(n+1), A105291(n)))`
-/

namespace A386016.P17352078332602118430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (Int.lor (A074149 (n + 1)) (A105291 n)).toNat

end

end A386016.P17352078332602118430

/-!
# A386017: Primes having only {0, 1, 2, 4} as digits.

The programs for A386017, there is no canonical definition to state claims against.
-/

/-! ## A386017.P15228109480428982625

`∩[A036956(n+1), A173580(n+1)]`
-/

namespace A386017.P15228109480428982625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386017.P15228109480428982625

/-! ## A386017.P5269746582883309930

`∩[A036958(n+1), A173580(n+1)]`
-/

namespace A386017.P5269746582883309930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386017.P5269746582883309930

/-! ## A386017.P6941447535938038113

`∩[A036956(n+1), A152312(n+1)]`
-/

namespace A386017.P6941447535938038113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386017.P6941447535938038113

/-! ## A386017.P7214636578693868740

`∩[A036958(n+1), A152312(n+1)]`
-/

namespace A386017.P7214636578693868740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386017.P7214636578693868740

/-! ## A386017.P7632113577387724868

`∩[A036960(n+1), A173580(n+1)]`
-/

namespace A386017.P7632113577387724868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386017.P7632113577387724868

/-! ## A386017.P7642867742512684738

`∩[A036956(n+1), A380906(n+1)]`
-/

namespace A386017.P7642867742512684738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386017.P7642867742512684738

/-! ## A386017.P6432143764088360341

`∩[A036958(n+1), A380906(n+1)]`
-/

namespace A386017.P6432143764088360341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386017.P6432143764088360341

/-! ## A386017.P18319406918881642377

`∩[A036956(n+1), A386341(n+1)]`
-/

namespace A386017.P18319406918881642377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386017.P18319406918881642377

/-! ## A386017.P16540831227212790259

`∩[A036956(n+1), A386342(n+1)]`
-/

namespace A386017.P16540831227212790259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386017.P16540831227212790259

/-! ## A386017.P5957587485911209080

`∩[A036956(n+1), A386343(n+1)]`
-/

namespace A386017.P5957587485911209080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386017.P5957587485911209080

/-! ## A386017.P13659622987930978818

`∩[A036956(n+1), A386344(n+1)]`
-/

namespace A386017.P13659622987930978818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386017.P13659622987930978818

/-! ## A386017.P13545741020698991316

`∩[A173580(n+1), A386343(n+1)]`
-/

namespace A386017.P13545741020698991316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386017.P13545741020698991316

/-! ## A386017.P5238766727637698146

`∩[A152312(n+1), A007091(n)]`
-/

namespace A386017.P5238766727637698146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386017.P5238766727637698146

/-! ## A386017.P4740167353650336609

`∩[A173580(n+1), A007091(n)]`
-/

namespace A386017.P4740167353650336609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386017.P4740167353650336609

/-! ## A386017.P4589983094578341809

`∩[A380906(n+1), A007091(n)]`
-/

namespace A386017.P4589983094578341809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386017.P4589983094578341809

/-! ## A386017.P6500153774452095743

`∩[A386341(n+1), A007091(n)]`
-/

namespace A386017.P6500153774452095743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386017.P6500153774452095743

/-! ## A386017.P1518394293489284058

`∩[A386342(n+1), A007091(n)]`
-/

namespace A386017.P1518394293489284058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386017.P1518394293489284058

/-! ## A386017.P8370700928042506105

`∩[A386343(n+1), A007091(n)]`
-/

namespace A386017.P8370700928042506105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386017.P8370700928042506105

/-! ## A386017.P9448926916892748371

`∩[A386344(n+1), A007091(n)]`
-/

namespace A386017.P9448926916892748371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386017.P9448926916892748371

/-! ## A386017.P13721952557395055907

`∩[A036962(n+1), A173580(n+1)]`
-/

namespace A386017.P13721952557395055907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386017.P13721952557395055907

/-!
# A386018: Primes having only {0, 1, 2, 5} as digits.

The programs for A386018, the canonical program `A386018.P6227341428964575611` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386018 has offset 1).

The definition of A386018 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386018.P11233068234554025168

`∩[A036958(n+1), A386340(n+1)]`
-/

namespace A386018.P11233068234554025168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386018.P11233068234554025168

namespace A386018

/-- `∩[A036958(n+1), A386340(n+1)]` -/
def P11233068234554025168.Spec : Prop :=
  ∀ n, (P11233068234554025168.a n : ℤ) = A386018 (n + 1)

end A386018

/-! ## A386018.P6227341428964575611

`∩[A160337(n+1), A386342(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A386018

/-- `∩[A160337(n+1), A386342(n+1)]` -/
def P6227341428964575611.Spec : Prop :=
  ∀ n, (P6227341428964575611.a n : ℤ) = A386018 (n + 1)

theorem P6227341428964575611.correct : P6227341428964575611.Spec := by
  intro n
  simp only [A386018, Nat.add_sub_cancel]

end A386018

/-! ## A386018.P6281965561068406078

`∩[A036958(n+1), A080228(n+1)]`
-/

namespace A386018.P6281965561068406078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386018.P6281965561068406078

namespace A386018

/-- `∩[A036958(n+1), A080228(n+1)]` -/
def P6281965561068406078.Spec : Prop :=
  ∀ n, (P6281965561068406078.a n : ℤ) = A386018 (n + 1)

end A386018

/-! ## A386018.P5828187967612308105

`∩[A036960(n+1), A080228(n+1)]`
-/

namespace A386018.P5828187967612308105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386018.P5828187967612308105

namespace A386018

/-- `∩[A036960(n+1), A080228(n+1)]` -/
def P5828187967612308105.Spec : Prop :=
  ∀ n, (P5828187967612308105.a n : ℤ) = A386018 (n + 1)

end A386018

/-! ## A386018.P16523533395346499503

`∩[A036962(n+1), A080228(n+1)]`
-/

namespace A386018.P16523533395346499503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386018.P16523533395346499503

namespace A386018

/-- `∩[A036962(n+1), A080228(n+1)]` -/
def P16523533395346499503.Spec : Prop :=
  ∀ n, (P16523533395346499503.a n : ℤ) = A386018 (n + 1)

end A386018

/-! ## A386018.P6584816739731110795

`∩[A080228(n+1), A386343(n+1)]`
-/

namespace A386018.P6584816739731110795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386018.P6584816739731110795

namespace A386018

/-- `∩[A080228(n+1), A386343(n+1)]` -/
def P6584816739731110795.Spec : Prop :=
  ∀ n, (P6584816739731110795.a n : ℤ) = A386018 (n + 1)

end A386018

/-! ## A386018.P10569183358104671983

`∩[A080228(n+1), A386348(n+1)]`
-/

namespace A386018.P10569183358104671983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386018.P10569183358104671983

namespace A386018

/-- `∩[A080228(n+1), A386348(n+1)]` -/
def P10569183358104671983.Spec : Prop :=
  ∀ n, (P10569183358104671983.a n : ℤ) = A386018 (n + 1)

end A386018

/-! ## A386018.P14370033820889203773

`∩[A080228(n+1), A386355(n+1)]`
-/

namespace A386018.P14370033820889203773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386018.P14370033820889203773

namespace A386018

/-- `∩[A080228(n+1), A386355(n+1)]` -/
def P14370033820889203773.Spec : Prop :=
  ∀ n, (P14370033820889203773.a n : ℤ) = A386018 (n + 1)

end A386018

/-! ## A386018.P11902289051934533163

`∩[A080228(n+1), A386357(n+1)]`
-/

namespace A386018.P11902289051934533163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386018.P11902289051934533163

namespace A386018

/-- `∩[A080228(n+1), A386357(n+1)]` -/
def P11902289051934533163.Spec : Prop :=
  ∀ n, (P11902289051934533163.a n : ℤ) = A386018 (n + 1)

end A386018

/-! ## A386018.P17548030665896147845

`∩[A038616(n+1), A080228(n+1)]`
-/

namespace A386018.P17548030665896147845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386018.P17548030665896147845

namespace A386018

/-- `∩[A038616(n+1), A080228(n+1)]` -/
def P17548030665896147845.Spec : Prop :=
  ∀ n, (P17548030665896147845.a n : ℤ) = A386018 (n + 1)

end A386018

/-! ## A386018.P5154169398283515551

`∩[A202267(n+1), A386342(n+1)]`
-/

namespace A386018.P5154169398283515551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386018.P5154169398283515551

namespace A386018

/-- `∩[A202267(n+1), A386342(n+1)]` -/
def P5154169398283515551.Spec : Prop :=
  ∀ n, (P5154169398283515551.a n : ℤ) = A386018 (n + 1)

end A386018

/-! ## A386018.P14072196102825844027

`∩[A386340(n+1), A007092(n)]`
-/

namespace A386018.P14072196102825844027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386018.P14072196102825844027

namespace A386018

/-- `∩[A386340(n+1), A007092(n)]` -/
def P14072196102825844027.Spec : Prop :=
  ∀ n, (P14072196102825844027.a n : ℤ) = A386018 (n + 1)

end A386018

/-!
# A386019: Primes having only {0, 1, 2, 6} as digits.

The programs for A386019, there is no canonical definition to state claims against.
-/

/-! ## A386019.P1184371103770577611

`A112303(A042319(n))`
-/

namespace A386019.P1184371103770577611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112303 (A042319 n).toNat

end

end A386019.P1184371103770577611

/-!
# A386020: Primes having only {0, 1, 2, 7} as digits.

The programs for A386020, the canonical program `A386020.P5151810573370523150` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386020 has offset 1).

The definition of A386020 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 354 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386020.P5151810573370523150

`∩[A160337(n+1), A380906(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A386020

/-- `∩[A160337(n+1), A380906(n+1)]` -/
def P5151810573370523150.Spec : Prop :=
  ∀ n, (P5151810573370523150.a n : ℤ) = A386020 (n + 1)

theorem P5151810573370523150.correct : P5151810573370523150.Spec := by
  intro n
  simp only [A386020, Nat.add_sub_cancel]

end A386020

/-! ## A386020.P13101574719686375339

`∩[A202267(n+1), A380906(n+1)]`
-/

namespace A386020.P13101574719686375339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386020.P13101574719686375339

namespace A386020

/-- `∩[A202267(n+1), A380906(n+1)]` -/
def P13101574719686375339.Spec : Prop :=
  ∀ n, (P13101574719686375339.a n : ℤ) = A386020 (n + 1)

end A386020

/-! ## A386020.P79209372252896394

`A386032(n+1)%A049078(A139669(n))`
-/

namespace A386020.P79209372252896394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A386032 (n + 1)) (A049078 (A139669 n).toNat)

end

end A386020.P79209372252896394

namespace A386020

/-- `A386032(n+1)%A049078(A139669(n))` -/
def P79209372252896394.Spec : Prop :=
  ∀ n, P79209372252896394.a n = A386020 (n + 1)

end A386020

/-!
# A386021: Primes having only {0, 1, 2, 8} as digits.

The programs for A386021, there is no canonical definition to state claims against.
-/

/-! ## A386021.P5233590198609834716

`∩[A080228(n+1), A152312(n+1)]`
-/

namespace A386021.P5233590198609834716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386021.P5233590198609834716

/-! ## A386021.P203124366500395662

`∩[A080228(n+1), A173580(n+1)]`
-/

namespace A386021.P203124366500395662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386021.P203124366500395662

/-! ## A386021.P11765887387317485688

`∩[A080228(n+1), A380906(n+1)]`
-/

namespace A386021.P11765887387317485688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386021.P11765887387317485688

/-! ## A386021.P1975836184502041130

`∩[A080228(n+1), A386351(n+1)]`
-/

namespace A386021.P1975836184502041130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386021.P1975836184502041130

/-! ## A386021.P7773350715387436988

`∩[A080228(n+1), A386353(n+1)]`
-/

namespace A386021.P7773350715387436988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386021.P7773350715387436988

/-! ## A386021.P7307090021009938363

`∩[A173580(n+1), A386340(n+1)]`
-/

namespace A386021.P7307090021009938363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386021.P7307090021009938363

/-! ## A386021.P4430318601413285165

`∩[A173580(n+1), A386347(n+1)]`
-/

namespace A386021.P4430318601413285165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386021.P4430318601413285165

/-! ## A386021.P11098167841237880251

`∩[A173580(n+1), A386349(n+1)]`
-/

namespace A386021.P11098167841237880251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386021.P11098167841237880251

/-! ## A386021.P3416764875842429781

`∩[A080228(n+1), A386350(n+1)]`
-/

namespace A386021.P3416764875842429781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386021.P3416764875842429781

/-! ## A386021.P9027380903214956185

`∩[A080228(n+1), A386345(n+1)]`
-/

namespace A386021.P9027380903214956185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386021.P9027380903214956185

/-! ## A386021.P2714246751405124248

`∩[A173580(n+1), A386345(n+1)]`
-/

namespace A386021.P2714246751405124248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386021.P2714246751405124248

/-! ## A386021.P1079850946835201913

`∩[A173580(n+1), A386346(n+1)]`
-/

namespace A386021.P1079850946835201913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386021.P1079850946835201913

/-! ## A386021.P10663261353410923044

`∩[A038613(n+1), A080228(n+1)]`
-/

namespace A386021.P10663261353410923044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386021.P10663261353410923044

/-! ## A386021.P15900437742237220011

`∩[A038612(n+1), A173580(n+1)]`
-/

namespace A386021.P15900437742237220011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386021.P15900437742237220011

/-!
# A386022: Primes having only {0, 1, 2, 9} as digits.

The programs for A386022, there is no canonical definition to state claims against.
-/

/-! ## A386022.P11209702671915895527

`p?[record[A222239(n)]]`
-/

namespace A386022.P11209702671915895527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A386022.P11209702671915895527

/-! ## A386022.P17588142254851076306

`∩[A242590(n+1), A265761(n+1)]`
-/

namespace A386022.P17588142254851076306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386022.P17588142254851076306

/-!
# A386023: Primes having only {0, 1, 3, 4} as digits.

The programs for A386023, the canonical program `A386023.P11392362810406853193` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386023 has offset 1).

The definition of A386023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386023.P15723433983164094166

`∩[A036956(n+1), A329760(n+1)]`
-/

namespace A386023.P15723433983164094166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386023.P15723433983164094166

namespace A386023

/-- `∩[A036956(n+1), A329760(n+1)]` -/
def P15723433983164094166.Spec : Prop :=
  ∀ n, (P15723433983164094166.a n : ℤ) = A386023 (n + 1)

end A386023

/-! ## A386023.P11910307069856361255

`∩[A036956(n+1), A386339(n+1)]`
-/

namespace A386023.P11910307069856361255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386023.P11910307069856361255

namespace A386023

/-- `∩[A036956(n+1), A386339(n+1)]` -/
def P11910307069856361255.Spec : Prop :=
  ∀ n, (P11910307069856361255.a n : ℤ) = A386023 (n + 1)

end A386023

/-! ## A386023.P6198969587012534306

`∩[A036956(n+1), A361822(n+1)]`
-/

namespace A386023.P6198969587012534306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386023.P6198969587012534306

namespace A386023

/-- `∩[A036956(n+1), A361822(n+1)]` -/
def P6198969587012534306.Spec : Prop :=
  ∀ n, (P6198969587012534306.a n : ℤ) = A386023 (n + 1)

end A386023

/-! ## A386023.P11226415406581174639

`∩[A036958(n+1), A361822(n+1)]`
-/

namespace A386023.P11226415406581174639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386023.P11226415406581174639

namespace A386023

/-- `∩[A036958(n+1), A361822(n+1)]` -/
def P11226415406581174639.Spec : Prop :=
  ∀ n, (P11226415406581174639.a n : ℤ) = A386023 (n + 1)

end A386023

/-! ## A386023.P15992506920755847187

`∩[A036956(n+1), A386337(n+1)]`
-/

namespace A386023.P15992506920755847187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386023.P15992506920755847187

namespace A386023

/-- `∩[A036956(n+1), A386337(n+1)]` -/
def P15992506920755847187.Spec : Prop :=
  ∀ n, (P15992506920755847187.a n : ℤ) = A386023 (n + 1)

end A386023

/-! ## A386023.P2858321823298004786

`∩[A036956(n+1), A386338(n+1)]`
-/

namespace A386023.P2858321823298004786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386023.P2858321823298004786

namespace A386023

/-- `∩[A036956(n+1), A386338(n+1)]` -/
def P2858321823298004786.Spec : Prop :=
  ∀ n, (P2858321823298004786.a n : ℤ) = A386023 (n + 1)

end A386023

/-! ## A386023.P11392362810406853193

`∩[A329760(n+1), A007091(n)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A386023

/-- `∩[A329760(n+1), A007091(n)]` -/
def P11392362810406853193.Spec : Prop :=
  ∀ n, (P11392362810406853193.a n : ℤ) = A386023 (n + 1)

theorem P11392362810406853193.correct : P11392362810406853193.Spec := by
  intro n
  simp only [A386023, Nat.add_sub_cancel]

end A386023

/-! ## A386023.P10228331311918557426

`∩[A361822(n+1), A007091(n)]`
-/

namespace A386023.P10228331311918557426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386023.P10228331311918557426

namespace A386023

/-- `∩[A361822(n+1), A007091(n)]` -/
def P10228331311918557426.Spec : Prop :=
  ∀ n, (P10228331311918557426.a n : ℤ) = A386023 (n + 1)

end A386023

/-! ## A386023.P7715402034282763036

`∩[A386337(n+1), A007091(n)]`
-/

namespace A386023.P7715402034282763036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386023.P7715402034282763036

namespace A386023

/-- `∩[A386337(n+1), A007091(n)]` -/
def P7715402034282763036.Spec : Prop :=
  ∀ n, (P7715402034282763036.a n : ℤ) = A386023 (n + 1)

end A386023

/-! ## A386023.P16032240800934698118

`∩[A386338(n+1), A007091(n)]`
-/

namespace A386023.P16032240800934698118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386023.P16032240800934698118

namespace A386023

/-- `∩[A386338(n+1), A007091(n)]` -/
def P16032240800934698118.Spec : Prop :=
  ∀ n, (P16032240800934698118.a n : ℤ) = A386023 (n + 1)

end A386023

/-! ## A386023.P10271666404117593371

`∩[A386339(n+1), A007091(n)]`
-/

namespace A386023.P10271666404117593371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386023.P10271666404117593371

namespace A386023

/-- `∩[A386339(n+1), A007091(n)]` -/
def P10271666404117593371.Spec : Prop :=
  ∀ n, (P10271666404117593371.a n : ℤ) = A386023 (n + 1)

end A386023

/-! ## A386023.P10596377390522312585

`∩[A038604(n+1), A007091(n)]`
-/

namespace A386023.P10596377390522312585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386023.P10596377390522312585

namespace A386023

/-- `∩[A038604(n+1), A007091(n)]` -/
def P10596377390522312585.Spec : Prop :=
  ∀ n, (P10596377390522312585.a n : ℤ) = A386023 (n + 1)

end A386023

/-! ## A386023.P2203532560356767093

`∩[A036956(n+1), A038604(n+1)]`
-/

namespace A386023.P2203532560356767093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386023.P2203532560356767093

namespace A386023

/-- `∩[A036956(n+1), A038604(n+1)]` -/
def P2203532560356767093.Spec : Prop :=
  ∀ n, (P2203532560356767093.a n : ℤ) = A386023 (n + 1)

end A386023

/-! ## A386023.P8665320144218497261

`∩[A361822(n+1), A395817(n+1)]`
-/

namespace A386023.P8665320144218497261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386023.P8665320144218497261

namespace A386023

/-- `∩[A361822(n+1), A395817(n+1)]` -/
def P8665320144218497261.Spec : Prop :=
  ∀ n, (P8665320144218497261.a n : ℤ) = A386023 (n + 1)

end A386023

/-! ## A386023.P16603258133642701507

`∩[A361822(n+1), A007092(n)]`
-/

namespace A386023.P16603258133642701507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386023.P16603258133642701507

namespace A386023

/-- `∩[A361822(n+1), A007092(n)]` -/
def P16603258133642701507.Spec : Prop :=
  ∀ n, (P16603258133642701507.a n : ℤ) = A386023 (n + 1)

end A386023

/-!
# A386024: Primes having only {0, 1, 3, 5} as digits.

The programs for A386024, there is no canonical definition to state claims against.
-/

/-! ## A386024.P7998242751495682199

`∩[A036958(n+1), A155055(n+1)]`
-/

namespace A386024.P7998242751495682199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386024.P7998242751495682199

/-! ## A386024.P15935743280759185810

`∩[A036960(n+1), A155055(n+1)]`
-/

namespace A386024.P15935743280759185810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386024.P15935743280759185810

/-! ## A386024.P548106168648938720

`∩[A155055(n+1), A386358(n+1)]`
-/

namespace A386024.P548106168648938720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386024.P548106168648938720

/-! ## A386024.P6565934678114976013

`∩[A036958(n+1), A386336(n+1)]`
-/

namespace A386024.P6565934678114976013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386024.P6565934678114976013

/-! ## A386024.P17777215466388512273

`∩[A160337(n+1), A329760(n+1)]`
-/

namespace A386024.P17777215466388512273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386024.P17777215466388512273

/-! ## A386024.P14601482236263143917

`∩[A202267(n+1), A329760(n+1)]`
-/

namespace A386024.P14601482236263143917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386024.P14601482236263143917

/-! ## A386024.P16606908638002014903

`∩[A155055(n+1), A007092(n)]`
-/

namespace A386024.P16606908638002014903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386024.P16606908638002014903

/-! ## A386024.P8605817487449314353

`∩[A386336(n+1), A007092(n)]`
-/

namespace A386024.P8605817487449314353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386024.P8605817487449314353

/-! ## A386024.P456918651720930940

`∩[A036958(n+1), A168501(n+1)]`
-/

namespace A386024.P456918651720930940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386024.P456918651720930940

/-! ## A386024.P10977732734781944394

`∩[A036960(n+1), A168501(n+1)]`
-/

namespace A386024.P10977732734781944394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386024.P10977732734781944394

/-! ## A386024.P1025688353953003478

`∩[A155055(n+1), A007093(n)]`
-/

namespace A386024.P1025688353953003478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386024.P1025688353953003478

/-!
# A386025: Primes having only {0, 1, 3, 7} as digits.

The programs for A386025, the canonical program `A386025.P16199978454777636192` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386025 has offset 1).

The definition of A386025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386025.P16199978454777636192

`∩[A160337(n+1), A361822(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A386025

/-- `∩[A160337(n+1), A361822(n+1)]` -/
def P16199978454777636192.Spec : Prop :=
  ∀ n, (P16199978454777636192.a n : ℤ) = A386025 (n + 1)

theorem P16199978454777636192.correct : P16199978454777636192.Spec := by
  intro n
  simp only [A386025, Nat.add_sub_cancel]

end A386025

/-! ## A386025.P4508248687929443637

`∩[A155055(n+1), A386353(n+1)]`
-/

namespace A386025.P4508248687929443637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386025.P4508248687929443637

namespace A386025

/-- `∩[A155055(n+1), A386353(n+1)]` -/
def P4508248687929443637.Spec : Prop :=
  ∀ n, (P4508248687929443637.a n : ℤ) = A386025 (n + 1)

end A386025

/-! ## A386025.P12399870442507732004

`∩[A202267(n+1), A361822(n+1)]`
-/

namespace A386025.P12399870442507732004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386025.P12399870442507732004

namespace A386025

/-- `∩[A202267(n+1), A361822(n+1)]` -/
def P12399870442507732004.Spec : Prop :=
  ∀ n, (P12399870442507732004.a n : ℤ) = A386025 (n + 1)

end A386025

/-! ## A386025.P13424158436020795422

`∩[A276137(n+1), A386353(n+1)]`
-/

namespace A386025.P13424158436020795422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386025.P13424158436020795422

namespace A386025

/-- `∩[A276137(n+1), A386353(n+1)]` -/
def P13424158436020795422.Spec : Prop :=
  ∀ n, (P13424158436020795422.a n : ℤ) = A386025 (n + 1)

end A386025

/-! ## A386025.P13331086619049724154

`∩[A107315(n+1), A386353(n+1)]`
-/

namespace A386025.P13331086619049724154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386025.P13331086619049724154

namespace A386025

/-- `∩[A107315(n+1), A386353(n+1)]` -/
def P13331086619049724154.Spec : Prop :=
  ∀ n, (P13331086619049724154.a n : ℤ) = A386025 (n + 1)

end A386025

/-!
# A386026: Primes having only {0, 1, 3, 9} as digits.

The programs for A386026, there is no canonical definition to state claims against.
-/

/-! ## A386026.P611309536469260047

`∩[A066594(n+1), A155055(n+1)]`
-/

namespace A386026.P611309536469260047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386026.P611309536469260047

/-! ## A386026.P12064570916089707203

`∩[A155055(n+1), A386351(n+1)]`
-/

namespace A386026.P12064570916089707203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386026.P12064570916089707203

/-! ## A386026.P17173796459937519282

`∩[A137386(n+1), A155055(n+1)]`
-/

namespace A386026.P17173796459937519282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386026.P17173796459937519282

/-! ## A386026.P11001491344484579232

`∩[A137386(n+1), A386355(n+1)]`
-/

namespace A386026.P11001491344484579232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386026.P11001491344484579232

/-! ## A386026.P41298769483260316

`∩[A066594(n+1), A276137(n+1)]`
-/

namespace A386026.P41298769483260316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386026.P41298769483260316

/-!
# A386027: Primes having only {0, 1, 4, 5} as digits.

The programs for A386027, there is no canonical definition to state claims against.
-/

/-! ## A386027.P5263187253877995670

`∩[A036958(n+1), A386335(n+1)]`
-/

namespace A386027.P5263187253877995670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386027.P5263187253877995670

/-! ## A386027.P12805590961068200384

`∩[A386335(n+1), A007092(n)]`
-/

namespace A386027.P12805590961068200384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386027.P12805590961068200384

/-! ## A386027.P10597363908386273618

`∩[A036958(n+1), A062726(n+1)]`
-/

namespace A386027.P10597363908386273618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386027.P10597363908386273618

/-! ## A386027.P9393382056583494609

`∩[A062726(n+1), A386356(n+1)]`
-/

namespace A386027.P9393382056583494609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386027.P9393382056583494609

/-!
# A386028: Primes having only {0, 1, 4, 6} as digits.

The programs for A386028, there is no canonical definition to state claims against.
-/

/-! ## A386028.P5479226258591109638

`∩[A034844(n+1), A036960(n+1)]`
-/

namespace A386028.P5479226258591109638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386028.P5479226258591109638

/-! ## A386028.P183563507881733571

`∩[A034844(n+1), A036962(n+1)]`
-/

namespace A386028.P183563507881733571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036962 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386028.P183563507881733571

/-! ## A386028.P306645801114337792

`∩[A098945(n+1), A386338(n+1)]`
-/

namespace A386028.P306645801114337792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386028.P306645801114337792

/-! ## A386028.P2309963962186615474

`∩[A036960(n+1), A084984(n+1)]`
-/

namespace A386028.P2309963962186615474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386028.P2309963962186615474

/-! ## A386028.P4388953027783633576

`∩[A036962(n+1), A084984(n+1)]`
-/

namespace A386028.P4388953027783633576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386028.P4388953027783633576

/-!
# A386029: Primes having only {0, 1, 4, 7} as digits.

The programs for A386029, there is no canonical definition to state claims against.
-/

/-! ## A386029.P4801785697320195939

`∩[A117743(n+1), A325112(n+1)]`
-/

namespace A386029.P4801785697320195939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386029.P4801785697320195939

/-! ## A386029.P16267812543518676906

`∩[A020631(n+1), A325112(n+1)]`
-/

namespace A386029.P16267812543518676906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386029.P16267812543518676906

/-! ## A386029.P14209174029275788432

`∩[A020633(n+1), A325112(n+1)]`
-/

namespace A386029.P14209174029275788432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386029.P14209174029275788432

/-! ## A386029.P16929401340916316929

`∩[A090417(n+1), A307913(n+1)]`
-/

namespace A386029.P16929401340916316929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386029.P16929401340916316929

/-!
# A386030: Primes having only {0, 1, 4, 8} as digits.

The programs for A386030, there is no canonical definition to state claims against.
-/

/-! ## A386030.P8071457404469690138

`∩[A034844(n+1), A173580(n+1)]`
-/

namespace A386030.P8071457404469690138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386030.P8071457404469690138

/-! ## A386030.P12266444097351984312

`∩[A173580(n+1), A329760(n+1)]`
-/

namespace A386030.P12266444097351984312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386030.P12266444097351984312

/-! ## A386030.P11195905405567228519

`∩[A173580(n+1), A386335(n+1)]`
-/

namespace A386030.P11195905405567228519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386030.P11195905405567228519

/-! ## A386030.P2173682573523636934

`∩[A173580(n+1), A386339(n+1)]`
-/

namespace A386030.P2173682573523636934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386030.P2173682573523636934

/-! ## A386030.P11202491891531875993

`∩[A034844(n+1), A386356(n+1)]`
-/

namespace A386030.P11202491891531875993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386030.P11202491891531875993

/-! ## A386030.P12571616802783850464

`∩[A066593(n+1), A386337(n+1)]`
-/

namespace A386030.P12571616802783850464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386030.P12571616802783850464

/-! ## A386030.P16459785017208576408

`∩[A173580(n+1), A361822(n+1)]`
-/

namespace A386030.P16459785017208576408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386030.P16459785017208576408

/-! ## A386030.P942421813356052303

`∩[A173580(n+1), A386337(n+1)]`
-/

namespace A386030.P942421813356052303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386030.P942421813356052303

/-! ## A386030.P6000169758864844156

`∩[A038604(n+1), A173580(n+1)]`
-/

namespace A386030.P6000169758864844156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386030.P6000169758864844156

/-! ## A386030.P8405174246221166884

`∩[A098945(n+1), A386337(n+1)]`
-/

namespace A386030.P8405174246221166884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386030.P8405174246221166884

/-!
# A386031: Primes having only {0, 1, 5, 6} as digits.

The programs for A386031, there is no canonical definition to state claims against.
-/

/-! ## A386031.P8816005015305544909

`A000265(∩[A007090(2*n), A001358(n+1)])`
-/

namespace A386031.P8816005015305544909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A386031.P8816005015305544909

/-! ## A386031.P930938072176366232

`∩[A062726(n+1), A386349(n+1)]`
-/

namespace A386031.P930938072176366232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386031.P930938072176366232

/-! ## A386031.P17484425678791789415

`A350509(∩[A007090(2*(n+2)), A001358(n+1)])`
-/

namespace A386031.P17484425678791789415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350509 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A386031.P17484425678791789415

/-! ## A386031.P3752754071945342875

`A350509(∩[A007090(2*(n+2)), A006881(n+1)])`
-/

namespace A386031.P3752754071945342875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350509 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A386031.P3752754071945342875

/-!
# A386032: Primes having only {0, 1, 5, 7} as digits.

The programs for A386032, the canonical program `A386032.P1209115764652298695` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386032 has offset 1).

The definition of A386032 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386032.P9206340625398178029

`∩[A155055(n+1), A386344(n+1)]`
-/

namespace A386032.P9206340625398178029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386032.P9206340625398178029

namespace A386032

/-- `∩[A155055(n+1), A386344(n+1)]` -/
def P9206340625398178029.Spec : Prop :=
  ∀ n, (P9206340625398178029.a n : ℤ) = A386032 (n + 1)

end A386032

/-! ## A386032.P1209115764652298695

`∩[A160337(n+1), A386335(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A386032

/-- `∩[A160337(n+1), A386335(n+1)]` -/
def P1209115764652298695.Spec : Prop :=
  ∀ n, (P1209115764652298695.a n : ℤ) = A386032 (n + 1)

theorem P1209115764652298695.correct : P1209115764652298695.Spec := by
  intro n
  simp only [A386032, Nat.add_sub_cancel]

end A386032

/-! ## A386032.P16671523301361127526

`∩[A202267(n+1), A386335(n+1)]`
-/

namespace A386032.P16671523301361127526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386032.P16671523301361127526

namespace A386032

/-- `∩[A202267(n+1), A386335(n+1)]` -/
def P16671523301361127526.Spec : Prop :=
  ∀ n, (P16671523301361127526.a n : ℤ) = A386032 (n + 1)

end A386032

/-! ## A386032.P4029995207095360386

`∩[A155055(n+1), A307913(n+1)]`
-/

namespace A386032.P4029995207095360386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386032.P4029995207095360386

namespace A386032

/-- `∩[A155055(n+1), A307913(n+1)]` -/
def P4029995207095360386.Spec : Prop :=
  ∀ n, (P4029995207095360386.a n : ℤ) = A386032 (n + 1)

end A386032

/-! ## A386032.P10283875948512900190

`∩[A276137(n+1), A386344(n+1)]`
-/

namespace A386032.P10283875948512900190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386032.P10283875948512900190

namespace A386032

/-- `∩[A276137(n+1), A386344(n+1)]` -/
def P10283875948512900190.Spec : Prop :=
  ∀ n, (P10283875948512900190.a n : ℤ) = A386032 (n + 1)

end A386032

/-!
# A386033: Primes having only {0, 1, 5, 8} as digits.

The programs for A386033, there is no canonical definition to state claims against.
-/

/-! ## A386033.P7238121997935809402

`∩[A080228(n+1), A386335(n+1)]`
-/

namespace A386033.P7238121997935809402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386033.P7238121997935809402

/-! ## A386033.P116268161652898847

`∩[A080228(n+1), A329760(n+1)]`
-/

namespace A386033.P116268161652898847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386033.P116268161652898847

/-! ## A386033.P3667578263063804560

`∩[A080228(n+1), A386336(n+1)]`
-/

namespace A386033.P3667578263063804560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386033.P3667578263063804560

/-! ## A386033.P18070889161331595636

`∩[A080228(n+1), A386337(n+1)]`
-/

namespace A386033.P18070889161331595636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386033.P18070889161331595636

/-! ## A386033.P17832370345457457403

`∩[A080228(n+1), A386339(n+1)]`
-/

namespace A386033.P17832370345457457403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386033.P17832370345457457403

/-! ## A386033.P1113370594296458963

`∩[A038604(n+1), A080228(n+1)]`
-/

namespace A386033.P1113370594296458963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386033.P1113370594296458963

/-!
# A386034: Primes having only {0, 1, 5, 9} as digits.

The programs for A386034, the canonical program `A386034.P2766143906307460608` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386034 has offset 1).

The definition of A386034 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386034.P2766143906307460608

`∩[A155055(n+1), A386342(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A386034

/-- `∩[A155055(n+1), A386342(n+1)]` -/
def P2766143906307460608.Spec : Prop :=
  ∀ n, (P2766143906307460608.a n : ℤ) = A386034 (n + 1)

theorem P2766143906307460608.correct : P2766143906307460608.Spec := by
  intro n
  simp only [A386034, Nat.add_sub_cancel]

end A386034

/-! ## A386034.P10602131695617545766

`∩[A045573(n+1), A155055(n+1)]`
-/

namespace A386034.P10602131695617545766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386034.P10602131695617545766

namespace A386034

/-- `∩[A045573(n+1), A155055(n+1)]` -/
def P10602131695617545766.Spec : Prop :=
  ∀ n, (P10602131695617545766.a n : ℤ) = A386034 (n + 1)

end A386034

/-! ## A386034.P5417938342277939615

`∩[A023245(n+1), A177054(n+1)]`
-/

namespace A386034.P5417938342277939615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386034.P5417938342277939615

namespace A386034

/-- `∩[A023245(n+1), A177054(n+1)]` -/
def P5417938342277939615.Spec : Prop :=
  ∀ n, (P5417938342277939615.a n : ℤ) = A386034 (n + 1)

end A386034

/-!
# A386035: Primes having only {0, 1, 6, 7} as digits.

The programs for A386035, there is no canonical definition to state claims against.
-/

/-! ## A386035.P7439613480716590298

`filter[A386344(n+2), A330550(#)]`
-/

namespace A386035.P7439613480716590298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386344 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A330550 (f1 j).toNat = 1) n)

end

end A386035.P7439613480716590298

/-! ## A386035.P17293498711045791310

`∩[A020627(n+1), A131229(n+1)]`
-/

namespace A386035.P17293498711045791310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386035.P17293498711045791310

/-!
# A386036: Primes having only {0, 1, 6, 8} as digits.

The programs for A386036, there is no canonical definition to state claims against.
-/

/-! ## A386036.P10845480844100532477

`∩[A386344(n+1), A054047(n)]`
-/

namespace A386036.P10845480844100532477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386036.P10845480844100532477

/-! ## A386036.P5613169250973351802

`∩[A045574(n+1), A386344(n+1)]`
-/

namespace A386036.P5613169250973351802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386036.P5613169250973351802

/-! ## A386036.P15245484515153939466

`∩[A057770(n+1), A386344(n+1)]`
-/

namespace A386036.P15245484515153939466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386036.P15245484515153939466

/-! ## A386036.P14549960874469467637

`∩[A038617(n+1), A054047(n)]`
-/

namespace A386036.P14549960874469467637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386036.P14549960874469467637

/-! ## A386036.P4645694602854339423

`∩[A386339(n+1), A054047(n)]`
-/

namespace A386036.P4645694602854339423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386036.P4645694602854339423

/-! ## A386036.P17373983066291196540

`∩[A386349(n+1), A054047(n)]`
-/

namespace A386036.P17373983066291196540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386036.P17373983066291196540

/-! ## A386036.P786910516596297644

`∩[A386353(n+1), A054047(n)]`
-/

namespace A386036.P786910516596297644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386036.P786910516596297644

/-! ## A386036.P17016293915283612005

`∩[A386358(n+1), A054047(n)]`
-/

namespace A386036.P17016293915283612005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386036.P17016293915283612005

/-! ## A386036.P4861674504558129275

`∩[A038617(n+1), A045574(n+1)]`
-/

namespace A386036.P4861674504558129275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386036.P4861674504558129275

/-! ## A386036.P14832630835943306590

`∩[A038617(n+1), A057770(n+1)]`
-/

namespace A386036.P14832630835943306590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386036.P14832630835943306590

/-! ## A386036.P6132264572536349401

`∩[A034844(n+1), A386349(n+1)]`
-/

namespace A386036.P6132264572536349401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386036.P6132264572536349401

/-! ## A386036.P4278492884480418650

`∩[A045574(n+1), A386339(n+1)]`
-/

namespace A386036.P4278492884480418650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386036.P4278492884480418650

/-! ## A386036.P12925019157638063115

`∩[A045574(n+1), A386349(n+1)]`
-/

namespace A386036.P12925019157638063115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386036.P12925019157638063115

/-! ## A386036.P11681352613432451120

`∩[A045574(n+1), A386353(n+1)]`
-/

namespace A386036.P11681352613432451120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386036.P11681352613432451120

/-! ## A386036.P8337807112002674225

`∩[A045574(n+1), A386358(n+1)]`
-/

namespace A386036.P8337807112002674225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386036.P8337807112002674225

/-! ## A386036.P2993244384199144325

`∩[A057770(n+1), A386339(n+1)]`
-/

namespace A386036.P2993244384199144325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386036.P2993244384199144325

/-! ## A386036.P14075849859175977317

`∩[A057770(n+1), A386349(n+1)]`
-/

namespace A386036.P14075849859175977317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386036.P14075849859175977317

/-! ## A386036.P12740352704734458698

`∩[A057770(n+1), A386353(n+1)]`
-/

namespace A386036.P12740352704734458698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386036.P12740352704734458698

/-! ## A386036.P5310863370028189912

`∩[A057770(n+1), A386358(n+1)]`
-/

namespace A386036.P5310863370028189912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386036.P5310863370028189912

/-! ## A386036.P487142671489528964

`∩[A057770(n+1), A098945(n+1)]`
-/

namespace A386036.P487142671489528964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386036.P487142671489528964

/-!
# A386037: Primes having only {0, 1, 6, 9} as digits.

The programs for A386037, the canonical program `A386037.P15520396281815550651` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386037 has offset 1).

The definition of A386037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 257 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386037.P2610960588630441877

`∩[A386338(n+1), A054047(n)]`
-/

namespace A386037.P2610960588630441877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386037.P2610960588630441877

namespace A386037

/-- `∩[A386338(n+1), A054047(n)]` -/
def P2610960588630441877.Spec : Prop :=
  ∀ n, (P2610960588630441877.a n : ℤ) = A386037 (n + 1)

end A386037

/-! ## A386037.P8821283470177333998

`∩[A386343(n+1), A054047(n)]`
-/

namespace A386037.P8821283470177333998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386037.P8821283470177333998

namespace A386037

/-- `∩[A386343(n+1), A054047(n)]` -/
def P8821283470177333998.Spec : Prop :=
  ∀ n, (P8821283470177333998.a n : ℤ) = A386037 (n + 1)

end A386037

/-! ## A386037.P15870345850473879651

`∩[A386348(n+1), A054047(n)]`
-/

namespace A386037.P15870345850473879651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386037.P15870345850473879651

namespace A386037

/-- `∩[A386348(n+1), A054047(n)]` -/
def P15870345850473879651.Spec : Prop :=
  ∀ n, (P15870345850473879651.a n : ℤ) = A386037 (n + 1)

end A386037

/-! ## A386037.P17282637158280099698

`∩[A386352(n+1), A054047(n)]`
-/

namespace A386037.P17282637158280099698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386037.P17282637158280099698

namespace A386037

/-- `∩[A386352(n+1), A054047(n)]` -/
def P17282637158280099698.Spec : Prop :=
  ∀ n, (P17282637158280099698.a n : ℤ) = A386037 (n + 1)

end A386037

/-! ## A386037.P17859984349475965317

`∩[A386357(n+1), A054047(n)]`
-/

namespace A386037.P17859984349475965317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386037.P17859984349475965317

namespace A386037

/-- `∩[A386357(n+1), A054047(n)]` -/
def P17859984349475965317.Spec : Prop :=
  ∀ n, (P17859984349475965317.a n : ℤ) = A386037 (n + 1)

end A386037

/-! ## A386037.P11143077400545124235

`∩[A038616(n+1), A045574(n+1)]`
-/

namespace A386037.P11143077400545124235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386037.P11143077400545124235

namespace A386037

/-- `∩[A038616(n+1), A045574(n+1)]` -/
def P11143077400545124235.Spec : Prop :=
  ∀ n, (P11143077400545124235.a n : ℤ) = A386037 (n + 1)

end A386037

/-! ## A386037.P15520396281815550651

`∩[A034844(n+1), A386348(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A386037

/-- `∩[A034844(n+1), A386348(n+1)]` -/
def P15520396281815550651.Spec : Prop :=
  ∀ n, (P15520396281815550651.a n : ℤ) = A386037 (n + 1)

theorem P15520396281815550651.correct : P15520396281815550651.Spec := by
  intro n
  simp only [A386037, Nat.add_sub_cancel]

end A386037

/-! ## A386037.P10448402664177469124

`∩[A045574(n+1), A386338(n+1)]`
-/

namespace A386037.P10448402664177469124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386037.P10448402664177469124

namespace A386037

/-- `∩[A045574(n+1), A386338(n+1)]` -/
def P10448402664177469124.Spec : Prop :=
  ∀ n, (P10448402664177469124.a n : ℤ) = A386037 (n + 1)

end A386037

/-! ## A386037.P6257017197163306992

`∩[A045574(n+1), A386343(n+1)]`
-/

namespace A386037.P6257017197163306992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386037.P6257017197163306992

namespace A386037

/-- `∩[A045574(n+1), A386343(n+1)]` -/
def P6257017197163306992.Spec : Prop :=
  ∀ n, (P6257017197163306992.a n : ℤ) = A386037 (n + 1)

end A386037

/-! ## A386037.P3898024268746215106

`∩[A045574(n+1), A386348(n+1)]`
-/

namespace A386037.P3898024268746215106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386037.P3898024268746215106

namespace A386037

/-- `∩[A045574(n+1), A386348(n+1)]` -/
def P3898024268746215106.Spec : Prop :=
  ∀ n, (P3898024268746215106.a n : ℤ) = A386037 (n + 1)

end A386037

/-! ## A386037.P3023629086152707979

`∩[A045574(n+1), A386352(n+1)]`
-/

namespace A386037.P3023629086152707979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386037.P3023629086152707979

namespace A386037

/-- `∩[A045574(n+1), A386352(n+1)]` -/
def P3023629086152707979.Spec : Prop :=
  ∀ n, (P3023629086152707979.a n : ℤ) = A386037 (n + 1)

end A386037

/-! ## A386037.P14073557621703741871

`∩[A045574(n+1), A386357(n+1)]`
-/

namespace A386037.P14073557621703741871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386037.P14073557621703741871

namespace A386037

/-- `∩[A045574(n+1), A386357(n+1)]` -/
def P14073557621703741871.Spec : Prop :=
  ∀ n, (P14073557621703741871.a n : ℤ) = A386037 (n + 1)

end A386037

/-! ## A386037.P472476797199204945

`∩[A057770(n+1), A386338(n+1)]`
-/

namespace A386037.P472476797199204945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386037.P472476797199204945

namespace A386037

/-- `∩[A057770(n+1), A386338(n+1)]` -/
def P472476797199204945.Spec : Prop :=
  ∀ n, (P472476797199204945.a n : ℤ) = A386037 (n + 1)

end A386037

/-! ## A386037.P80069235585306593

`∩[A057770(n+1), A386343(n+1)]`
-/

namespace A386037.P80069235585306593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386037.P80069235585306593

namespace A386037

/-- `∩[A057770(n+1), A386343(n+1)]` -/
def P80069235585306593.Spec : Prop :=
  ∀ n, (P80069235585306593.a n : ℤ) = A386037 (n + 1)

end A386037

/-! ## A386037.P10887606675516400935

`∩[A057770(n+1), A386348(n+1)]`
-/

namespace A386037.P10887606675516400935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386037.P10887606675516400935

namespace A386037

/-- `∩[A057770(n+1), A386348(n+1)]` -/
def P10887606675516400935.Spec : Prop :=
  ∀ n, (P10887606675516400935.a n : ℤ) = A386037 (n + 1)

end A386037

/-! ## A386037.P5126580866052639002

`∩[A057770(n+1), A386352(n+1)]`
-/

namespace A386037.P5126580866052639002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386037.P5126580866052639002

namespace A386037

/-- `∩[A057770(n+1), A386352(n+1)]` -/
def P5126580866052639002.Spec : Prop :=
  ∀ n, (P5126580866052639002.a n : ℤ) = A386037 (n + 1)

end A386037

/-! ## A386037.P5214342022975457491

`∩[A057770(n+1), A386357(n+1)]`
-/

namespace A386037.P5214342022975457491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386037.P5214342022975457491

namespace A386037

/-- `∩[A057770(n+1), A386357(n+1)]` -/
def P5214342022975457491.Spec : Prop :=
  ∀ n, (P5214342022975457491.a n : ℤ) = A386037 (n + 1)

end A386037

/-! ## A386037.P17300254114023489528

`∩[A038616(n+1), A054047(n)]`
-/

namespace A386037.P17300254114023489528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386037.P17300254114023489528

namespace A386037

/-- `∩[A038616(n+1), A054047(n)]` -/
def P17300254114023489528.Spec : Prop :=
  ∀ n, (P17300254114023489528.a n : ℤ) = A386037 (n + 1)

end A386037

/-! ## A386037.P2879438106275982146

`∩[A038616(n+1), A057770(n+1)]`
-/

namespace A386037.P2879438106275982146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386037.P2879438106275982146

namespace A386037

/-- `∩[A038616(n+1), A057770(n+1)]` -/
def P2879438106275982146.Spec : Prop :=
  ∀ n, (P2879438106275982146.a n : ℤ) = A386037 (n + 1)

end A386037

/-! ## A386037.P5954083684596362956

`∩[A084984(n+1), A386348(n+1)]`
-/

namespace A386037.P5954083684596362956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386037.P5954083684596362956

namespace A386037

/-- `∩[A084984(n+1), A386348(n+1)]` -/
def P5954083684596362956.Spec : Prop :=
  ∀ n, (P5954083684596362956.a n : ℤ) = A386037 (n + 1)

end A386037

/-!
# A386039: Primes having only {0, 1, 7, 9} as digits.

The programs for A386039, the canonical program `A386039.P75601870519274112` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386039 has offset 1).

The definition of A386039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386039.P75601870519274112

`∩[A155055(n+1), A380906(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A386039

/-- `∩[A155055(n+1), A380906(n+1)]` -/
def P75601870519274112.Spec : Prop :=
  ∀ n, (P75601870519274112.a n : ℤ) = A386039 (n + 1)

theorem P75601870519274112.correct : P75601870519274112.Spec := by
  intro n
  simp only [A386039, Nat.add_sub_cancel]

end A386039

/-! ## A386039.P9285714445071859321

`∩[A276137(n+1), A380906(n+1)]`
-/

namespace A386039.P9285714445071859321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386039.P9285714445071859321

namespace A386039

/-- `∩[A276137(n+1), A380906(n+1)]` -/
def P9285714445071859321.Spec : Prop :=
  ∀ n, (P9285714445071859321.a n : ℤ) = A386039 (n + 1)

end A386039

/-! ## A386039.P12910762357331676665

`∩[A107315(n+1), A380906(n+1)]`
-/

namespace A386039.P12910762357331676665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386039.P12910762357331676665

namespace A386039

/-- `∩[A107315(n+1), A380906(n+1)]` -/
def P12910762357331676665.Spec : Prop :=
  ∀ n, (P12910762357331676665.a n : ℤ) = A386039 (n + 1)

end A386039

/-!
# A386040: Primes having only {0, 1, 8, 9} as digits.

The programs for A386040, the canonical program `A386040.P12443822358662903675` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386040 has offset 1).

The definition of A386040 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386040.P12680812709271459822

`∩[A386337(n+1), A054047(n)]`
-/

namespace A386040.P12680812709271459822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386040.P12680812709271459822

namespace A386040

/-- `∩[A386337(n+1), A054047(n)]` -/
def P12680812709271459822.Spec : Prop :=
  ∀ n, (P12680812709271459822.a n : ℤ) = A386040 (n + 1)

end A386040

/-! ## A386040.P16864387264545590039

`∩[A386341(n+1), A054047(n)]`
-/

namespace A386040.P16864387264545590039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386040.P16864387264545590039

namespace A386040

/-- `∩[A386341(n+1), A054047(n)]` -/
def P16864387264545590039.Spec : Prop :=
  ∀ n, (P16864387264545590039.a n : ℤ) = A386040 (n + 1)

end A386040

/-! ## A386040.P1809909414526891087

`∩[A386346(n+1), A054047(n)]`
-/

namespace A386040.P1809909414526891087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386040.P1809909414526891087

namespace A386040

/-- `∩[A386346(n+1), A054047(n)]` -/
def P1809909414526891087.Spec : Prop :=
  ∀ n, (P1809909414526891087.a n : ℤ) = A386040 (n + 1)

end A386040

/-! ## A386040.P13322200970356101002

`∩[A386350(n+1), A054047(n)]`
-/

namespace A386040.P13322200970356101002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386040.P13322200970356101002

namespace A386040

/-- `∩[A386350(n+1), A054047(n)]` -/
def P13322200970356101002.Spec : Prop :=
  ∀ n, (P13322200970356101002.a n : ℤ) = A386040 (n + 1)

end A386040

/-! ## A386040.P15777901127500861986

`∩[A386354(n+1), A054047(n)]`
-/

namespace A386040.P15777901127500861986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386040.P15777901127500861986

namespace A386040

/-- `∩[A386354(n+1), A054047(n)]` -/
def P15777901127500861986.Spec : Prop :=
  ∀ n, (P15777901127500861986.a n : ℤ) = A386040 (n + 1)

end A386040

/-! ## A386040.P12443822358662903675

`∩[A034844(n+1), A386346(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A386040

/-- `∩[A034844(n+1), A386346(n+1)]` -/
def P12443822358662903675.Spec : Prop :=
  ∀ n, (P12443822358662903675.a n : ℤ) = A386040 (n + 1)

theorem P12443822358662903675.correct : P12443822358662903675.Spec := by
  intro n
  simp only [A386040, Nat.add_sub_cancel]

end A386040

/-! ## A386040.P12183685928032247526

`∩[A045574(n+1), A386337(n+1)]`
-/

namespace A386040.P12183685928032247526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386040.P12183685928032247526

namespace A386040

/-- `∩[A045574(n+1), A386337(n+1)]` -/
def P12183685928032247526.Spec : Prop :=
  ∀ n, (P12183685928032247526.a n : ℤ) = A386040 (n + 1)

end A386040

/-! ## A386040.P14765450385182546946

`∩[A045574(n+1), A386341(n+1)]`
-/

namespace A386040.P14765450385182546946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386040.P14765450385182546946

namespace A386040

/-- `∩[A045574(n+1), A386341(n+1)]` -/
def P14765450385182546946.Spec : Prop :=
  ∀ n, (P14765450385182546946.a n : ℤ) = A386040 (n + 1)

end A386040

/-! ## A386040.P7932443219445747858

`∩[A045574(n+1), A386346(n+1)]`
-/

namespace A386040.P7932443219445747858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386040.P7932443219445747858

namespace A386040

/-- `∩[A045574(n+1), A386346(n+1)]` -/
def P7932443219445747858.Spec : Prop :=
  ∀ n, (P7932443219445747858.a n : ℤ) = A386040 (n + 1)

end A386040

/-! ## A386040.P17475449254575435877

`∩[A045574(n+1), A386350(n+1)]`
-/

namespace A386040.P17475449254575435877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386040.P17475449254575435877

namespace A386040

/-- `∩[A045574(n+1), A386350(n+1)]` -/
def P17475449254575435877.Spec : Prop :=
  ∀ n, (P17475449254575435877.a n : ℤ) = A386040 (n + 1)

end A386040

/-! ## A386040.P17660173467162860610

`∩[A045574(n+1), A386354(n+1)]`
-/

namespace A386040.P17660173467162860610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386040.P17660173467162860610

namespace A386040

/-- `∩[A045574(n+1), A386354(n+1)]` -/
def P17660173467162860610.Spec : Prop :=
  ∀ n, (P17660173467162860610.a n : ℤ) = A386040 (n + 1)

end A386040

/-! ## A386040.P671407864473019864

`∩[A057770(n+1), A386337(n+1)]`
-/

namespace A386040.P671407864473019864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386040.P671407864473019864

namespace A386040

/-- `∩[A057770(n+1), A386337(n+1)]` -/
def P671407864473019864.Spec : Prop :=
  ∀ n, (P671407864473019864.a n : ℤ) = A386040 (n + 1)

end A386040

/-! ## A386040.P15869958285652616211

`∩[A057770(n+1), A386341(n+1)]`
-/

namespace A386040.P15869958285652616211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386040.P15869958285652616211

namespace A386040

/-- `∩[A057770(n+1), A386341(n+1)]` -/
def P15869958285652616211.Spec : Prop :=
  ∀ n, (P15869958285652616211.a n : ℤ) = A386040 (n + 1)

end A386040

/-! ## A386040.P183758371621069919

`∩[A057770(n+1), A386346(n+1)]`
-/

namespace A386040.P183758371621069919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386040.P183758371621069919

namespace A386040

/-- `∩[A057770(n+1), A386346(n+1)]` -/
def P183758371621069919.Spec : Prop :=
  ∀ n, (P183758371621069919.a n : ℤ) = A386040 (n + 1)

end A386040

/-! ## A386040.P16838297753320284642

`∩[A057770(n+1), A386350(n+1)]`
-/

namespace A386040.P16838297753320284642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386040.P16838297753320284642

namespace A386040

/-- `∩[A057770(n+1), A386350(n+1)]` -/
def P16838297753320284642.Spec : Prop :=
  ∀ n, (P16838297753320284642.a n : ℤ) = A386040 (n + 1)

end A386040

/-! ## A386040.P8653574027827853304

`∩[A057770(n+1), A386354(n+1)]`
-/

namespace A386040.P8653574027827853304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386040.P8653574027827853304

namespace A386040

/-- `∩[A057770(n+1), A386354(n+1)]` -/
def P8653574027827853304.Spec : Prop :=
  ∀ n, (P8653574027827853304.a n : ℤ) = A386040 (n + 1)

end A386040

/-! ## A386040.P8232939647796739855

`∩[A038614(n+1), A054047(n)]`
-/

namespace A386040.P8232939647796739855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386040.P8232939647796739855

namespace A386040

/-- `∩[A038614(n+1), A054047(n)]` -/
def P8232939647796739855.Spec : Prop :=
  ∀ n, (P8232939647796739855.a n : ℤ) = A386040 (n + 1)

end A386040

/-! ## A386040.P5335951223045040307

`∩[A038614(n+1), A045574(n+1)]`
-/

namespace A386040.P5335951223045040307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386040.P5335951223045040307

namespace A386040

/-- `∩[A038614(n+1), A045574(n+1)]` -/
def P5335951223045040307.Spec : Prop :=
  ∀ n, (P5335951223045040307.a n : ℤ) = A386040 (n + 1)

end A386040

/-! ## A386040.P6238726019725754146

`∩[A038614(n+1), A057770(n+1)]`
-/

namespace A386040.P6238726019725754146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386040.P6238726019725754146

namespace A386040

/-- `∩[A038614(n+1), A057770(n+1)]` -/
def P6238726019725754146.Spec : Prop :=
  ∀ n, (P6238726019725754146.a n : ℤ) = A386040 (n + 1)

end A386040

/-! ## A386040.P10568869892682302950

`∩[A084984(n+1), A386346(n+1)]`
-/

namespace A386040.P10568869892682302950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386040.P10568869892682302950

namespace A386040

/-- `∩[A084984(n+1), A386346(n+1)]` -/
def P10568869892682302950.Spec : Prop :=
  ∀ n, (P10568869892682302950.a n : ℤ) = A386040 (n + 1)

end A386040

/-!
# A386041: Primes having only {0, 2, 3, 4} as digits.

The programs for A386041, there is no canonical definition to state claims against.
-/

/-! ## A386041.P17636834189864505494

`∩[A036956(n+1), A154761(n+1)]`
-/

namespace A386041.P17636834189864505494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386041.P17636834189864505494

/-! ## A386041.P10300686283402006370

`∩[A036956(n+1), A386331(n+1)]`
-/

namespace A386041.P10300686283402006370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386041.P10300686283402006370

/-! ## A386041.P15723068343611452964

`∩[A036956(n+1), A386332(n+1)]`
-/

namespace A386041.P15723068343611452964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386041.P15723068343611452964

/-! ## A386041.P16688678913412172971

`∩[A036956(n+1), A386333(n+1)]`
-/

namespace A386041.P16688678913412172971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386041.P16688678913412172971

/-! ## A386041.P2547817161441175125

`∩[A036956(n+1), A386334(n+1)]`
-/

namespace A386041.P2547817161441175125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386041.P2547817161441175125

/-! ## A386041.P4374365666277982147

`∩[A036958(n+1), A386331(n+1)]`
-/

namespace A386041.P4374365666277982147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386041.P4374365666277982147

/-! ## A386041.P17099529787792262079

`∩[A036956(n+1), A038603(n+1)]`
-/

namespace A386041.P17099529787792262079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386041.P17099529787792262079

/-! ## A386041.P4657683967494886908

`∩[A036956(n+1), A307636(n+1)]`
-/

namespace A386041.P4657683967494886908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386041.P4657683967494886908

/-! ## A386041.P7536202521106323225

`∩[A036956(n+1), A132080(n+1)]`
-/

namespace A386041.P7536202521106323225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386041.P7536202521106323225

/-! ## A386041.P4694757503600753553

`∩[A038603(n+1), A007091(n)]`
-/

namespace A386041.P4694757503600753553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386041.P4694757503600753553

/-! ## A386041.P181387135254326966

`∩[A154761(n+1), A007091(n)]`
-/

namespace A386041.P181387135254326966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386041.P181387135254326966

/-!
# A386042: Primes having only {0, 2, 3, 5} as digits.

The programs for A386042, there is no canonical definition to state claims against.
-/

/-! ## A386042.P8671151955799468784

`∩[A034470(n+1), A036958(n+1)]`
-/

namespace A386042.P8671151955799468784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386042.P8671151955799468784

/-! ## A386042.P8731519050377469368

`∩[A034470(n+1), A160337(n+1)]`
-/

namespace A386042.P8731519050377469368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386042.P8731519050377469368

/-! ## A386042.P17984970108648115464

`∩[A036958(n+1), A386330(n+1)]`
-/

namespace A386042.P17984970108648115464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386042.P17984970108648115464

/-! ## A386042.P10378683731511377070

`∩[A160337(n+1), A386333(n+1)]`
-/

namespace A386042.P10378683731511377070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386042.P10378683731511377070

/-! ## A386042.P17747158544044415409

`∩[A034470(n+1), A155777(n+1)]`
-/

namespace A386042.P17747158544044415409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386042.P17747158544044415409

/-! ## A386042.P13978964802420829709

`∩[A034470(n+1), A007092(n)]`
-/

namespace A386042.P13978964802420829709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386042.P13978964802420829709

/-! ## A386042.P16929310338139194954

`∩[A386330(n+1), A007092(n)]`
-/

namespace A386042.P16929310338139194954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386042.P16929310338139194954

/-! ## A386042.P9005262898594846187

`∩[A028374(n+1), A036958(n+1)]`
-/

namespace A386042.P9005262898594846187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386042.P9005262898594846187

/-! ## A386042.P1310253934765096246

`∩[A028374(n+1), A155777(n+1)]`
-/

namespace A386042.P1310253934765096246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386042.P1310253934765096246

/-! ## A386042.P766720494607926949

`∩[A028374(n+1), A160337(n+1)]`
-/

namespace A386042.P766720494607926949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386042.P766720494607926949

/-!
# A386044: Primes having only {0, 2, 3, 7} as digits.

The programs for A386044, there is no canonical definition to state claims against.
-/

/-! ## A386044.P13137184086872665191

`∩[A160337(n+1), A386331(n+1)]`
-/

namespace A386044.P13137184086872665191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386044.P13137184086872665191

/-! ## A386044.P1558130220363128687

`∩[A202267(n+1), A386331(n+1)]`
-/

namespace A386044.P1558130220363128687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386044.P1558130220363128687

/-! ## A386044.P684700696231902239

`∩[A329150(n+1), A386331(n+1)]`
-/

namespace A386044.P684700696231902239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386044.P684700696231902239

/-!
# A386048: Primes having only {0, 2, 4, 9} as digits.

The programs for A386048, there is no canonical definition to state claims against.
-/

/-! ## A386048.P14538365374079737518

`∩[A276138(n+1), A386355(n+1)]`
-/

namespace A386048.P14538365374079737518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386048.P14538365374079737518

/-!
# A386049: Primes having only {0, 2, 5, 7} as digits.

The programs for A386049, there is no canonical definition to state claims against.
-/

/-! ## A386049.P779740829307308462

`∩[A160337(n+1), A386329(n+1)]`
-/

namespace A386049.P779740829307308462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386049.P779740829307308462

/-!
# A386052: Primes having only {0, 2, 6, 9} as digits.

The programs for A386052, there is no canonical definition to state claims against.
-/

/-! ## A386052.P11406059146285248412

`∩[A276138(n+1), A386348(n+1)]`
-/

namespace A386052.P11406059146285248412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386052.P11406059146285248412

/-!
# A386055: Primes having only {0, 2, 8, 9} as digits.

The programs for A386055, there is no canonical definition to state claims against.
-/

/-! ## A386055.P180584779348669750

`∩[A276138(n+1), A386346(n+1)]`
-/

namespace A386055.P180584779348669750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386055.P180584779348669750

/-!
# A386056: Primes having only {0, 3, 4, 5} as digits.

The programs for A386056, there is no canonical definition to state claims against.
-/

/-! ## A386056.P473306841550385253

`∩[A036958(n+1), A386328(n+1)]`
-/

namespace A386056.P473306841550385253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386056.P473306841550385253

/-! ## A386056.P6800206287185526098

`∩[A386328(n+1), A007092(n)]`
-/

namespace A386056.P6800206287185526098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386056.P6800206287185526098

/-!
# A386057: Primes having only {0, 3, 4, 6} as digits.

The programs for A386057, there is no canonical definition to state claims against.
-/

/-! ## A386057.P5205372930359023921

`∪[A093074(A199340(n+1)), A199346(n+5)]`
-/

namespace A386057.P5205372930359023921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (A199340 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199346 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A386057.P5205372930359023921

/-!
# A386059: Primes having only {0, 3, 4, 8} as digits.

The programs for A386059, there is no canonical definition to state claims against.
-/

/-! ## A386059.P11629372435628027573

`∩[A098946(n+1), A386337(n+1)]`
-/

namespace A386059.P11629372435628027573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386059.P11629372435628027573

/-!
# A386062: Primes having only {0, 3, 5, 7} as digits.

The programs for A386062, there is no canonical definition to state claims against.
-/

/-! ## A386062.P7948865365991375997

`∩[A154761(n+1), A155055(n+1)]`
-/

namespace A386062.P7948865365991375997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386062.P7948865365991375997

/-! ## A386062.P11455310854143387943

`∩[A160337(n+1), A386328(n+1)]`
-/

namespace A386062.P11455310854143387943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386062.P11455310854143387943

/-! ## A386062.P865019256684700824

`∩[A202267(n+1), A386328(n+1)]`
-/

namespace A386062.P865019256684700824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386062.P865019256684700824

/-! ## A386062.P11434437512873456860

`∩[A329150(n+1), A386328(n+1)]`
-/

namespace A386062.P11434437512873456860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386062.P11434437512873456860

/-!
# A386064: Primes having only {0, 3, 5, 9} as digits.

The programs for A386064, there is no canonical definition to state claims against.
-/

/-! ## A386064.P2893426835129182472

`∩[A034470(n+1), A155055(n+1)]`
-/

namespace A386064.P2893426835129182472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386064.P2893426835129182472

/-! ## A386064.P8798123942476256885

`∩[A155055(n+1), A386333(n+1)]`
-/

namespace A386064.P8798123942476256885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386064.P8798123942476256885

/-! ## A386064.P10336010190184385542

`∩[A028374(n+1), A155055(n+1)]`
-/

namespace A386064.P10336010190184385542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386064.P10336010190184385542

/-!
# A386065: Primes having only {0, 3, 6, 7} as digits.

The programs for A386065, there is no canonical definition to state claims against.
-/

/-! ## A386065.P5303115350129045104

`∩[A137310(n+1), A155081(n+1)]`
-/

namespace A386065.P5303115350129045104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386065.P5303115350129045104

/-!
# A386066: Primes having only {0, 3, 6, 8} as digits.

The programs for A386066, there is no canonical definition to state claims against.
-/

/-! ## A386066.P11531152040969519155

`∩[A072960(n+1), A154761(n+1)]`
-/

namespace A386066.P11531152040969519155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386066.P11531152040969519155

/-! ## A386066.P9545091830557666

`∩[A079652(n+1), A154761(n+1)]`
-/

namespace A386066.P9545091830557666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386066.P9545091830557666

/-! ## A386066.P16427923329895522830

`∩[A072960(n+1), A386339(n+1)]`
-/

namespace A386066.P16427923329895522830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386066.P16427923329895522830

/-! ## A386066.P1469413214060365106

`∩[A072960(n+1), A386358(n+1)]`
-/

namespace A386066.P1469413214060365106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386066.P1469413214060365106

/-! ## A386066.P11501630346306816619

`∩[A079652(n+1), A386339(n+1)]`
-/

namespace A386066.P11501630346306816619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386066.P11501630346306816619

/-! ## A386066.P10482142833940225867

`∩[A079652(n+1), A386358(n+1)]`
-/

namespace A386066.P10482142833940225867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386066.P10482142833940225867

/-! ## A386066.P2229340173425132328

`∩[A072960(n+1), A386349(n+1)]`
-/

namespace A386066.P2229340173425132328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386066.P2229340173425132328

/-! ## A386066.P8470835306250608519

`∩[A072960(n+1), A386353(n+1)]`
-/

namespace A386066.P8470835306250608519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386066.P8470835306250608519

/-! ## A386066.P14536149992317765065

`∩[A079652(n+1), A386349(n+1)]`
-/

namespace A386066.P14536149992317765065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386066.P14536149992317765065

/-! ## A386066.P8802034217757001531

`∩[A079652(n+1), A386353(n+1)]`
-/

namespace A386066.P8802034217757001531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386066.P8802034217757001531

/-!
# A386068: Primes having only {0, 3, 7, 9} as digits.

The programs for A386068, there is no canonical definition to state claims against.
-/

/-! ## A386068.P5598448763400845562

`∩[A155055(n+1), A386331(n+1)]`
-/

namespace A386068.P5598448763400845562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386068.P5598448763400845562

/-!
# A386069: Primes having only {0, 3, 8, 9} as digits.

The programs for A386069, the canonical program `A386069.P385928273964232171` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386069 has offset 1).

The definition of A386069 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386069.P10937583846794937964

`∩[A072960(n+1), A386332(n+1)]`
-/

namespace A386069.P10937583846794937964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386069.P10937583846794937964

namespace A386069

/-- `∩[A072960(n+1), A386332(n+1)]` -/
def P10937583846794937964.Spec : Prop :=
  ∀ n, (P10937583846794937964.a n : ℤ) = A386069 (n + 1)

end A386069

/-! ## A386069.P11611328572123250910

`∩[A079652(n+1), A386332(n+1)]`
-/

namespace A386069.P11611328572123250910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386069.P11611328572123250910

namespace A386069

/-- `∩[A079652(n+1), A386332(n+1)]` -/
def P11611328572123250910.Spec : Prop :=
  ∀ n, (P11611328572123250910.a n : ℤ) = A386069 (n + 1)

end A386069

/-! ## A386069.P385928273964232171

`∩[A072960(n+1), A386337(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A386069

/-- `∩[A072960(n+1), A386337(n+1)]` -/
def P385928273964232171.Spec : Prop :=
  ∀ n, (P385928273964232171.a n : ℤ) = A386069 (n + 1)

theorem P385928273964232171.correct : P385928273964232171.Spec := by
  intro n
  simp only [A386069, Nat.add_sub_cancel]

end A386069

/-! ## A386069.P3289919831367155827

`∩[A079652(n+1), A386337(n+1)]`
-/

namespace A386069.P3289919831367155827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386069.P3289919831367155827

namespace A386069

/-- `∩[A079652(n+1), A386337(n+1)]` -/
def P3289919831367155827.Spec : Prop :=
  ∀ n, (P3289919831367155827.a n : ℤ) = A386069 (n + 1)

end A386069

/-! ## A386069.P14882202144433812145

`∩[A072960(n+1), A386354(n+1)]`
-/

namespace A386069.P14882202144433812145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386069.P14882202144433812145

namespace A386069

/-- `∩[A072960(n+1), A386354(n+1)]` -/
def P14882202144433812145.Spec : Prop :=
  ∀ n, (P14882202144433812145.a n : ℤ) = A386069 (n + 1)

end A386069

/-! ## A386069.P6637741392316220365

`∩[A079652(n+1), A386354(n+1)]`
-/

namespace A386069.P6637741392316220365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386069.P6637741392316220365

namespace A386069

/-- `∩[A079652(n+1), A386354(n+1)]` -/
def P6637741392316220365.Spec : Prop :=
  ∀ n, (P6637741392316220365.a n : ℤ) = A386069 (n + 1)

end A386069

/-! ## A386069.P9224439531091545405

`∩[A038614(n+1), A072960(n+1)]`
-/

namespace A386069.P9224439531091545405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386069.P9224439531091545405

namespace A386069

/-- `∩[A038614(n+1), A072960(n+1)]` -/
def P9224439531091545405.Spec : Prop :=
  ∀ n, (P9224439531091545405.a n : ℤ) = A386069 (n + 1)

end A386069

/-! ## A386069.P1104538541548075324

`∩[A038614(n+1), A079652(n+1)]`
-/

namespace A386069.P1104538541548075324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386069.P1104538541548075324

namespace A386069

/-- `∩[A038614(n+1), A079652(n+1)]` -/
def P1104538541548075324.Spec : Prop :=
  ∀ n, (P1104538541548075324.a n : ℤ) = A386069 (n + 1)

end A386069

/-! ## A386069.P11891825618346082394

`∩[A072960(n+1), A386346(n+1)]`
-/

namespace A386069.P11891825618346082394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386069.P11891825618346082394

namespace A386069

/-- `∩[A072960(n+1), A386346(n+1)]` -/
def P11891825618346082394.Spec : Prop :=
  ∀ n, (P11891825618346082394.a n : ℤ) = A386069 (n + 1)

end A386069

/-! ## A386069.P10259215657645134451

`∩[A072960(n+1), A386350(n+1)]`
-/

namespace A386069.P10259215657645134451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386069.P10259215657645134451

namespace A386069

/-- `∩[A072960(n+1), A386350(n+1)]` -/
def P10259215657645134451.Spec : Prop :=
  ∀ n, (P10259215657645134451.a n : ℤ) = A386069 (n + 1)

end A386069

/-! ## A386069.P10966446719855228866

`∩[A079652(n+1), A386346(n+1)]`
-/

namespace A386069.P10966446719855228866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386069.P10966446719855228866

namespace A386069

/-- `∩[A079652(n+1), A386346(n+1)]` -/
def P10966446719855228866.Spec : Prop :=
  ∀ n, (P10966446719855228866.a n : ℤ) = A386069 (n + 1)

end A386069

/-! ## A386069.P5702003378415702706

`∩[A079652(n+1), A386350(n+1)]`
-/

namespace A386069.P5702003378415702706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386069.P5702003378415702706

namespace A386069

/-- `∩[A079652(n+1), A386350(n+1)]` -/
def P5702003378415702706.Spec : Prop :=
  ∀ n, (P5702003378415702706.a n : ℤ) = A386069 (n + 1)

end A386069

/-!
# A386072: Primes having only {0, 4, 6, 7} as digits.

The programs for A386072, there is no canonical definition to state claims against.
-/

/-! ## A386072.P1377034427984878492

`∩[A098948(n+1), A386338(n+1)]`
-/

namespace A386072.P1377034427984878492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386072.P1377034427984878492

/-!
# A386073: Primes having only {0, 4, 6, 9} as digits.

The programs for A386073, there is no canonical definition to state claims against.
-/

/-! ## A386073.P15876506799076676191

`∩[A001744(n+1), A386334(n+1)]`
-/

namespace A386073.P15876506799076676191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386073.P15876506799076676191

/-! ## A386073.P12813394298550957239

`∩[A034844(n+1), A386334(n+1)]`
-/

namespace A386073.P12813394298550957239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386073.P12813394298550957239

/-! ## A386073.P7921700328358246491

`∩[A061372(n+1), A386334(n+1)]`
-/

namespace A386073.P7921700328358246491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386073.P7921700328358246491

/-! ## A386073.P4689666305122723432

`∩[A001744(n+1), A386343(n+1)]`
-/

namespace A386073.P4689666305122723432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386073.P4689666305122723432

/-! ## A386073.P17286257396633283528

`∩[A061372(n+1), A386343(n+1)]`
-/

namespace A386073.P17286257396633283528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386073.P17286257396633283528

/-!
# A386076: Primes having only {0, 4, 8, 9} as digits.

The programs for A386076, there is no canonical definition to state claims against.
-/

/-! ## A386076.P9175954596402792499

`∩[A001744(n+1), A386332(n+1)]`
-/

namespace A386076.P9175954596402792499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386076.P9175954596402792499

/-! ## A386076.P5107661576716957963

`∩[A034844(n+1), A386332(n+1)]`
-/

namespace A386076.P5107661576716957963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386076.P5107661576716957963

/-! ## A386076.P14090797613970555326

`∩[A061372(n+1), A386332(n+1)]`
-/

namespace A386076.P14090797613970555326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386076.P14090797613970555326

/-! ## A386076.P8868648160936332284

`∩[A001744(n+1), A386341(n+1)]`
-/

namespace A386076.P8868648160936332284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386076.P8868648160936332284

/-!
# A386078: Primes having only {0, 5, 6, 9} as digits.

The programs for A386078, there is no canonical definition to state claims against.
-/

/-! ## A386078.P8669155841148610409

`A179028(A229785(n+1)%A268687(n+3))`
-/

namespace A386078.P8669155841148610409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179028 (Int.tmod (A229785 (n + 1)) (A268687 (n + 3))).toNat

end

end A386078.P8669155841148610409

/-!
# A386080: Primes having only {0, 5, 7, 9} as digits.

The programs for A386080, there is no canonical definition to state claims against.
-/

/-! ## A386080.P18063360369727066

`∩[A155055(n+1), A386329(n+1)]`
-/

namespace A386080.P18063360369727066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386080.P18063360369727066

/-!
# A386082: Primes having only {0, 6, 7, 8} as digits.

The programs for A386082, there is no canonical definition to state claims against.
-/

/-! ## A386082.P16807889152021076886

`∩[A098948(n+1), A386336(n+1)]`
-/

namespace A386082.P16807889152021076886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386082.P16807889152021076886

/-!
# A386084: Primes having only {0, 7, 8, 9} as digits.

The programs for A386084, there is no canonical definition to state claims against.
-/

/-! ## A386084.P16855464288140850809

`p?[record[A059630(n)]]`
-/

namespace A386084.P16855464288140850809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059630 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A386084.P16855464288140850809

/-! ## A386084.P3442714681951855704

`p?[record[A222224(n)]]`
-/

namespace A386084.P3442714681951855704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222224 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A386084.P3442714681951855704

/-!
# A386085: Primes having only {1, 2, 3, 4} as digits.

The programs for A386085, there is no canonical definition to state claims against.
-/

/-! ## A386085.P7373556602958140647

`∩[A036956(n+1), A133783(n+1)]`
-/

namespace A386085.P7373556602958140647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386085.P7373556602958140647

/-! ## A386085.P7677852789236999265

`∩[A036956(n+1), A084544(n+1)]`
-/

namespace A386085.P7677852789236999265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386085.P7677852789236999265

/-! ## A386085.P3024952838705156285

`∩[A036958(n+1), A084544(n+1)]`
-/

namespace A386085.P3024952838705156285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386085.P3024952838705156285

/-! ## A386085.P13380244344379542209

`∩[A084544(n+1), A133783(n+1)]`
-/

namespace A386085.P13380244344379542209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386085.P13380244344379542209

/-! ## A386085.P4014185690165887775

`∩[A036960(n+1), A084544(n+1)]`
-/

namespace A386085.P4014185690165887775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386085.P4014185690165887775

/-! ## A386085.P11771593899410096491

`p?[A084544(n+1)]`
-/

namespace A386085.P11771593899410096491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A386085.P11771593899410096491

/-! ## A386085.P3123273802698967395

`∩[A084544(n+1), A244392(n+1)]`
-/

namespace A386085.P3123273802698967395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386085.P3123273802698967395

/-! ## A386085.P3941019189253843111

`∩[A084544(n+1), A386358(n+1)]`
-/

namespace A386085.P3941019189253843111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386085.P3941019189253843111

/-! ## A386085.P1341807533385885831

`∩[A036962(n+1), A084544(n+1)]`
-/

namespace A386085.P1341807533385885831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386085.P1341807533385885831

/-! ## A386085.P3718176840951961654

`∩[A036956(n+1), A386325(n+1)]`
-/

namespace A386085.P3718176840951961654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386085.P3718176840951961654

/-! ## A386085.P474301065493679586

`∩[A036956(n+1), A386327(n+1)]`
-/

namespace A386085.P474301065493679586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386327 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386085.P474301065493679586

/-! ## A386085.P18100736181243892166

`∩[A084544(n+1), A386325(n+1)]`
-/

namespace A386085.P18100736181243892166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386085.P18100736181243892166

/-! ## A386085.P18079707971914039891

`∩[A084544(n+1), A386327(n+1)]`
-/

namespace A386085.P18079707971914039891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386327 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386085.P18079707971914039891

/-! ## A386085.P5041017532924234912

`∩[A084544(n+1), A386351(n+1)]`
-/

namespace A386085.P5041017532924234912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386085.P5041017532924234912

/-! ## A386085.P4155113168881196473

`∩[A084544(n+1), A386353(n+1)]`
-/

namespace A386085.P4155113168881196473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386085.P4155113168881196473

/-! ## A386085.P2027714513678985310

`∩[A084544(n+1), A386354(n+1)]`
-/

namespace A386085.P2027714513678985310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386085.P2027714513678985310

/-! ## A386085.P15433390642856653727

`∩[A084544(n+1), A386356(n+1)]`
-/

namespace A386085.P15433390642856653727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386085.P15433390642856653727

/-! ## A386085.P12233061365889675660

`∩[A084544(n+1), A386357(n+1)]`
-/

namespace A386085.P12233061365889675660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386085.P12233061365889675660

/-! ## A386085.P9053550841412908028

`∩[A133783(n+1), A007091(n)]`
-/

namespace A386085.P9053550841412908028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386085.P9053550841412908028

/-! ## A386085.P2617284671728801148

`∩[A386323(n+1), A007091(n)]`
-/

namespace A386085.P2617284671728801148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386085.P2617284671728801148

/-!
# A386086: Primes having only {1, 2, 3, 5} as digits.

The programs for A386086, there is no canonical definition to state claims against.
-/

/-! ## A386086.P8932518120747654528

`∩[A036958(n+1), A190223(n+1)]`
-/

namespace A386086.P8932518120747654528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386086.P8932518120747654528

/-! ## A386086.P1057976421390718728

`∩[A133783(n+1), A190223(n+1)]`
-/

namespace A386086.P1057976421390718728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386086.P1057976421390718728

/-! ## A386086.P5234989239737362779

`∩[A036958(n+1), A190222(n+1)]`
-/

namespace A386086.P5234989239737362779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386086.P5234989239737362779

/-! ## A386086.P14767198528628642759

`∩[A133783(n+1), A190222(n+1)]`
-/

namespace A386086.P14767198528628642759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386086.P14767198528628642759

/-! ## A386086.P9107908616900166535

`∩[A133783(n+1), A160337(n+1)]`
-/

namespace A386086.P9107908616900166535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386086.P9107908616900166535

/-! ## A386086.P2898088581075763002

`∩[A036960(n+1), A190223(n+1)]`
-/

namespace A386086.P2898088581075763002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386086.P2898088581075763002

/-! ## A386086.P6792311042459430151

`∩[A036960(n+1), A190222(n+1)]`
-/

namespace A386086.P6792311042459430151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386086.P6792311042459430151

/-! ## A386086.P12433837195538560171

`∩[A190223(n+1), A386358(n+1)]`
-/

namespace A386086.P12433837195538560171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386086.P12433837195538560171

/-! ## A386086.P15373017281022150121

`∩[A160337(n+1), A386325(n+1)]`
-/

namespace A386086.P15373017281022150121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386086.P15373017281022150121

/-! ## A386086.P7827355956361626375

`∩[A190223(n+1), A386325(n+1)]`
-/

namespace A386086.P7827355956361626375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386086.P7827355956361626375

/-! ## A386086.P3061418205213679018

`∩[A190223(n+1), A386347(n+1)]`
-/

namespace A386086.P3061418205213679018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386086.P3061418205213679018

/-! ## A386086.P7160579258106086340

`∩[A190222(n+1), A386358(n+1)]`
-/

namespace A386086.P7160579258106086340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386086.P7160579258106086340

/-! ## A386086.P908223891309684115

`∩[A190223(n+1), A386354(n+1)]`
-/

namespace A386086.P908223891309684115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386086.P908223891309684115

/-! ## A386086.P5727311529520998462

`∩[A190223(n+1), A386357(n+1)]`
-/

namespace A386086.P5727311529520998462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386086.P5727311529520998462

/-! ## A386086.P7476059149113518446

`∩[A001742(n+1), A036958(n+1)]`
-/

namespace A386086.P7476059149113518446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386086.P7476059149113518446

/-! ## A386086.P14217058892239967085

`∩[A001742(n+1), A036960(n+1)]`
-/

namespace A386086.P14217058892239967085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386086.P14217058892239967085

/-! ## A386086.P16155650387972083692

`∩[A001742(n+1), A133783(n+1)]`
-/

namespace A386086.P16155650387972083692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386086.P16155650387972083692

/-! ## A386086.P12394959323194762882

`∩[A001742(n+1), A386325(n+1)]`
-/

namespace A386086.P12394959323194762882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386086.P12394959323194762882

/-! ## A386086.P12404780987401305668

`∩[A001742(n+1), A386347(n+1)]`
-/

namespace A386086.P12404780987401305668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386086.P12404780987401305668

/-! ## A386086.P6086948873288112256

`∩[A001742(n+1), A386354(n+1)]`
-/

namespace A386086.P6086948873288112256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386086.P6086948873288112256

/-!
# A386087: Primes having only {1, 2, 3, 6} as digits.

The programs for A386087, the canonical program `A386087.P8096014675522522534` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386087 has offset 1).

The definition of A386087 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386087.P6554487652251619840

`∩[A133783(n+1), A386345(n+1)]`
-/

namespace A386087.P6554487652251619840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386087.P6554487652251619840

namespace A386087

/-- `∩[A133783(n+1), A386345(n+1)]` -/
def P6554487652251619840.Spec : Prop :=
  ∀ n, (P6554487652251619840.a n : ℤ) = A386087 (n + 1)

end A386087

/-! ## A386087.P5861709447448691707

`∩[A062101(n+1), A386351(n+1)]`
-/

namespace A386087.P5861709447448691707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386087.P5861709447448691707

namespace A386087

/-- `∩[A062101(n+1), A386351(n+1)]` -/
def P5861709447448691707.Spec : Prop :=
  ∀ n, (P5861709447448691707.a n : ℤ) = A386087 (n + 1)

end A386087

/-! ## A386087.P8096014675522522534

`∩[A057436(n+1), A386345(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A386087

/-- `∩[A057436(n+1), A386345(n+1)]` -/
def P8096014675522522534.Spec : Prop :=
  ∀ n, (P8096014675522522534.a n : ℤ) = A386087 (n + 1)

theorem P8096014675522522534.correct : P8096014675522522534.Spec := by
  intro n
  simp only [A386087, Nat.add_sub_cancel]

end A386087

/-! ## A386087.P1057532188765807224

`∩[A008541(n+1), A133783(n+1)]`
-/

namespace A386087.P1057532188765807224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386087.P1057532188765807224

namespace A386087

/-- `∩[A008541(n+1), A133783(n+1)]` -/
def P1057532188765807224.Spec : Prop :=
  ∀ n, (P1057532188765807224.a n : ℤ) = A386087 (n + 1)

end A386087

/-!
# A386088: Primes having only {1, 2, 3, 7} as digits.

The programs for A386088, the canonical program `A386088.P2858648878049144333` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386088 has offset 1).

The definition of A386088 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 578 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386088.P13893198806381595303

`∩[A190223(n+1), A386353(n+1)]`
-/

namespace A386088.P13893198806381595303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386088.P13893198806381595303

namespace A386088

/-- `∩[A190223(n+1), A386353(n+1)]` -/
def P13893198806381595303.Spec : Prop :=
  ∀ n, (P13893198806381595303.a n : ℤ) = A386088 (n + 1)

end A386088

/-! ## A386088.P3221171013319357383

`∩[A190223(n+1), A386345(n+1)]`
-/

namespace A386088.P3221171013319357383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386088.P3221171013319357383

namespace A386088

/-- `∩[A190223(n+1), A386345(n+1)]` -/
def P3221171013319357383.Spec : Prop :=
  ∀ n, (P3221171013319357383.a n : ℤ) = A386088 (n + 1)

end A386088

/-! ## A386088.P10846472001521441442

`∩[A190223(n+1), A386350(n+1)]`
-/

namespace A386088.P10846472001521441442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386088.P10846472001521441442

namespace A386088

/-- `∩[A190223(n+1), A386350(n+1)]` -/
def P10846472001521441442.Spec : Prop :=
  ∀ n, (P10846472001521441442.a n : ℤ) = A386088 (n + 1)

end A386088

/-! ## A386088.P2858648878049144333

`∩[A001742(n+1), A386345(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A386088

/-- `∩[A001742(n+1), A386345(n+1)]` -/
def P2858648878049144333.Spec : Prop :=
  ∀ n, (P2858648878049144333.a n : ℤ) = A386088 (n + 1)

theorem P2858648878049144333.correct : P2858648878049144333.Spec := by
  intro n
  simp only [A386088, Nat.add_sub_cancel]

end A386088

/-! ## A386088.P5301904423666132106

`∩[A001742(n+1), A386350(n+1)]`
-/

namespace A386088.P5301904423666132106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386088.P5301904423666132106

namespace A386088

/-- `∩[A001742(n+1), A386350(n+1)]` -/
def P5301904423666132106.Spec : Prop :=
  ∀ n, (P5301904423666132106.a n : ℤ) = A386088 (n + 1)

end A386088

/-! ## A386088.P2309643280388603890

`∩[A001742(n+1), A386353(n+1)]`
-/

namespace A386088.P2309643280388603890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386088.P2309643280388603890

namespace A386088

/-- `∩[A001742(n+1), A386353(n+1)]` -/
def P2309643280388603890.Spec : Prop :=
  ∀ n, (P2309643280388603890.a n : ℤ) = A386088 (n + 1)

end A386088

/-! ## A386088.P1733775507033680642

`∩[A001742(n+1), A386352(n+1)]`
-/

namespace A386088.P1733775507033680642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386088.P1733775507033680642

namespace A386088

/-- `∩[A001742(n+1), A386352(n+1)]` -/
def P1733775507033680642.Spec : Prop :=
  ∀ n, (P1733775507033680642.a n : ℤ) = A386088 (n + 1)

end A386088

/-! ## A386088.P7513020637636962220

`∩[A190223(n+1), A386352(n+1)]`
-/

namespace A386088.P7513020637636962220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386088.P7513020637636962220

namespace A386088

/-- `∩[A190223(n+1), A386352(n+1)]` -/
def P7513020637636962220.Spec : Prop :=
  ∀ n, (P7513020637636962220.a n : ℤ) = A386088 (n + 1)

end A386088

/-! ## A386088.P2812464487647825933

`∩[A001742(n+1), A386323(n+1)]`
-/

namespace A386088.P2812464487647825933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386088.P2812464487647825933

namespace A386088

/-- `∩[A001742(n+1), A386323(n+1)]` -/
def P2812464487647825933.Spec : Prop :=
  ∀ n, (P2812464487647825933.a n : ℤ) = A386088 (n + 1)

end A386088

/-! ## A386088.P6166314355167266196

`∩[A160337(n+1), A386323(n+1)]`
-/

namespace A386088.P6166314355167266196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386088.P6166314355167266196

namespace A386088

/-- `∩[A160337(n+1), A386323(n+1)]` -/
def P6166314355167266196.Spec : Prop :=
  ∀ n, (P6166314355167266196.a n : ℤ) = A386088 (n + 1)

end A386088

/-! ## A386088.P15497121070529034800

`∩[A190223(n+1), A386323(n+1)]`
-/

namespace A386088.P15497121070529034800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386088.P15497121070529034800

namespace A386088

/-- `∩[A190223(n+1), A386323(n+1)]` -/
def P15497121070529034800.Spec : Prop :=
  ∀ n, (P15497121070529034800.a n : ℤ) = A386088 (n + 1)

end A386088

/-! ## A386088.P2168381089135859306

`∩[A190222(n+1), A386353(n+1)]`
-/

namespace A386088.P2168381089135859306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386088.P2168381089135859306

namespace A386088

/-- `∩[A190222(n+1), A386353(n+1)]` -/
def P2168381089135859306.Spec : Prop :=
  ∀ n, (P2168381089135859306.a n : ℤ) = A386088 (n + 1)

end A386088

/-! ## A386088.P12786781144855774967

`∩[A190222(n+1), A386323(n+1)]`
-/

namespace A386088.P12786781144855774967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386088.P12786781144855774967

namespace A386088

/-- `∩[A190222(n+1), A386323(n+1)]` -/
def P12786781144855774967.Spec : Prop :=
  ∀ n, (P12786781144855774967.a n : ℤ) = A386088 (n + 1)

end A386088

/-! ## A386088.P13547661579803838300

`∩[A190222(n+1), A386345(n+1)]`
-/

namespace A386088.P13547661579803838300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386088.P13547661579803838300

namespace A386088

/-- `∩[A190222(n+1), A386345(n+1)]` -/
def P13547661579803838300.Spec : Prop :=
  ∀ n, (P13547661579803838300.a n : ℤ) = A386088 (n + 1)

end A386088

/-! ## A386088.P2297725471304361290

`∩[A190222(n+1), A386350(n+1)]`
-/

namespace A386088.P2297725471304361290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386088.P2297725471304361290

namespace A386088

/-- `∩[A190222(n+1), A386350(n+1)]` -/
def P2297725471304361290.Spec : Prop :=
  ∀ n, (P2297725471304361290.a n : ℤ) = A386088 (n + 1)

end A386088

/-! ## A386088.P3756313390199165375

`∩[A190222(n+1), A386352(n+1)]`
-/

namespace A386088.P3756313390199165375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386088.P3756313390199165375

namespace A386088

/-- `∩[A190222(n+1), A386352(n+1)]` -/
def P3756313390199165375.Spec : Prop :=
  ∀ n, (P3756313390199165375.a n : ℤ) = A386088 (n + 1)

end A386088

/-! ## A386088.P7624924597916101727

`∩[A062101(n+1), A386350(n+1)]`
-/

namespace A386088.P7624924597916101727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386088.P7624924597916101727

namespace A386088

/-- `∩[A062101(n+1), A386350(n+1)]` -/
def P7624924597916101727.Spec : Prop :=
  ∀ n, (P7624924597916101727.a n : ℤ) = A386088 (n + 1)

end A386088

/-! ## A386088.P17693393349830741561

`∩[A001742(n+1), A038613(n+1)]`
-/

namespace A386088.P17693393349830741561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386088.P17693393349830741561

namespace A386088

/-- `∩[A001742(n+1), A038613(n+1)]` -/
def P17693393349830741561.Spec : Prop :=
  ∀ n, (P17693393349830741561.a n : ℤ) = A386088 (n + 1)

end A386088

/-! ## A386088.P6494242850989203728

`∩[A038613(n+1), A190223(n+1)]`
-/

namespace A386088.P6494242850989203728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386088.P6494242850989203728

namespace A386088

/-- `∩[A038613(n+1), A190223(n+1)]` -/
def P6494242850989203728.Spec : Prop :=
  ∀ n, (P6494242850989203728.a n : ℤ) = A386088 (n + 1)

end A386088

/-! ## A386088.P6649261112925124439

`∩[A038613(n+1), A190222(n+1)]`
-/

namespace A386088.P6649261112925124439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386088.P6649261112925124439

namespace A386088

/-- `∩[A038613(n+1), A190222(n+1)]` -/
def P6649261112925124439.Spec : Prop :=
  ∀ n, (P6649261112925124439.a n : ℤ) = A386088 (n + 1)

end A386088

/-!
# A386089: Primes having only {1, 2, 3, 8} as digits.

The programs for A386089, there is no canonical definition to state claims against.
-/

/-! ## A386089.P6270426021549494163

`∩[A178317(n+1), A386323(n+1)]`
-/

namespace A386089.P6270426021549494163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386089.P6270426021549494163

/-! ## A386089.P16851735649932686582

`∩[A321702(n+1), A386323(n+1)]`
-/

namespace A386089.P16851735649932686582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386089.P16851735649932686582

/-! ## A386089.P10658217367402271919

`∩[A181173(n+1), A321702(n+1)]`
-/

namespace A386089.P10658217367402271919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386089.P10658217367402271919

/-!
# A386091: Primes having only {1, 2, 4, 5} as digits.

The programs for A386091, there is no canonical definition to state claims against.
-/

/-! ## A386091.P17010263397971225309

`∩[A036958(n+1), A247052(n+1)]`
-/

namespace A386091.P17010263397971225309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386091.P17010263397971225309

/-! ## A386091.P12724069885303948577

`∩[A133783(n+1), A247052(n+1)]`
-/

namespace A386091.P12724069885303948577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386091.P12724069885303948577

/-! ## A386091.P6040406344901802183

`∩[A036960(n+1), A247052(n+1)]`
-/

namespace A386091.P6040406344901802183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386091.P6040406344901802183

/-! ## A386091.P9184804584892653917

`∩[A247052(n+1), A386342(n+1)]`
-/

namespace A386091.P9184804584892653917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386091.P9184804584892653917

/-! ## A386091.P16338460692060440486

`∩[A247052(n+1), A386358(n+1)]`
-/

namespace A386091.P16338460692060440486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386091.P16338460692060440486

/-! ## A386091.P16743870766501728518

`∩[A036958(n+1), A386321(n+1)]`
-/

namespace A386091.P16743870766501728518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386091.P16743870766501728518

/-! ## A386091.P1266175292666521243

`∩[A133783(n+1), A386341(n+1)]`
-/

namespace A386091.P1266175292666521243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386091.P1266175292666521243

/-! ## A386091.P5039463945631341033

`∩[A036958(n+1), A082741(n+1)]`
-/

namespace A386091.P5039463945631341033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386091.P5039463945631341033

/-! ## A386091.P5600581151175450205

`∩[A036960(n+1), A082741(n+1)]`
-/

namespace A386091.P5600581151175450205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386091.P5600581151175450205

/-! ## A386091.P7545566076119560281

`∩[A082741(n+1), A133783(n+1)]`
-/

namespace A386091.P7545566076119560281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386091.P7545566076119560281

/-! ## A386091.P10161976444720637409

`∩[A038615(n+1), A247052(n+1)]`
-/

namespace A386091.P10161976444720637409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386091.P10161976444720637409

/-! ## A386091.P2767373361946910185

`∩[A082741(n+1), A386325(n+1)]`
-/

namespace A386091.P2767373361946910185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386091.P2767373361946910185

/-! ## A386091.P7089918638608788664

`∩[A082741(n+1), A386342(n+1)]`
-/

namespace A386091.P7089918638608788664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386091.P7089918638608788664

/-! ## A386091.P12393629862006318302

`∩[A082741(n+1), A386354(n+1)]`
-/

namespace A386091.P12393629862006318302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386091.P12393629862006318302

/-! ## A386091.P4481065839587092855

`∩[A082741(n+1), A386357(n+1)]`
-/

namespace A386091.P4481065839587092855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386091.P4481065839587092855

/-! ## A386091.P2170446267131844698

`∩[A082741(n+1), A386358(n+1)]`
-/

namespace A386091.P2170446267131844698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386091.P2170446267131844698

/-! ## A386091.P3164054348337074513

`∩[A247052(n+1), A386325(n+1)]`
-/

namespace A386091.P3164054348337074513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386091.P3164054348337074513

/-! ## A386091.P6220384620281538884

`∩[A247052(n+1), A386354(n+1)]`
-/

namespace A386091.P6220384620281538884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386091.P6220384620281538884

/-! ## A386091.P728778752788877828

`∩[A247052(n+1), A386357(n+1)]`
-/

namespace A386091.P728778752788877828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386091.P728778752788877828

/-! ## A386091.P17316294287326298969

`∩[A084545(n+1), A247052(n+1)]`
-/

namespace A386091.P17316294287326298969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386091.P17316294287326298969

/-!
# A386092: Primes having only {1, 2, 4, 6} as digits.

The programs for A386092, there is no canonical definition to state claims against.
-/

/-! ## A386092.P10885751832561612907

`∩[A133783(n+1), A152312(n+1)]`
-/

namespace A386092.P10885751832561612907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386092.P10885751832561612907

/-! ## A386092.P15082066086939898381

`∩[A133783(n+1), A380906(n+1)]`
-/

namespace A386092.P15082066086939898381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386092.P15082066086939898381

/-! ## A386092.P12465025313441807233

`∩[A057436(n+1), A152312(n+1)]`
-/

namespace A386092.P12465025313441807233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386092.P12465025313441807233

/-! ## A386092.P15008910566865177274

`∩[A057436(n+1), A380906(n+1)]`
-/

namespace A386092.P15008910566865177274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386092.P15008910566865177274

/-! ## A386092.P9608902917712144096

`∩[A152312(n+1), A214677(n+1)]`
-/

namespace A386092.P9608902917712144096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386092.P9608902917712144096

/-!
# A386093: Primes having only {1, 2, 4, 7} as digits.

The programs for A386093, the canonical program `A386093.P8909246624751845622` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386093 has offset 1).

The definition of A386093 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 497 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386093.P8909246624751845622

`∩[A247052(n+1), A380906(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A386093

/-- `∩[A247052(n+1), A380906(n+1)]` -/
def P8909246624751845622.Spec : Prop :=
  ∀ n, (P8909246624751845622.a n : ℤ) = A386093 (n + 1)

theorem P8909246624751845622.correct : P8909246624751845622.Spec := by
  intro n
  simp only [A386093, Nat.add_sub_cancel]

end A386093

/-! ## A386093.P6141899484068985244

`∩[A247052(n+1), A386350(n+1)]`
-/

namespace A386093.P6141899484068985244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386093.P6141899484068985244

namespace A386093

/-- `∩[A247052(n+1), A386350(n+1)]` -/
def P6141899484068985244.Spec : Prop :=
  ∀ n, (P6141899484068985244.a n : ℤ) = A386093 (n + 1)

end A386093

/-! ## A386093.P13582908996617132743

`∩[A247052(n+1), A386353(n+1)]`
-/

namespace A386093.P13582908996617132743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386093.P13582908996617132743

namespace A386093

/-- `∩[A247052(n+1), A386353(n+1)]` -/
def P13582908996617132743.Spec : Prop :=
  ∀ n, (P13582908996617132743.a n : ℤ) = A386093 (n + 1)

end A386093

/-! ## A386093.P17041224874554232031

`∩[A082741(n+1), A380906(n+1)]`
-/

namespace A386093.P17041224874554232031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386093.P17041224874554232031

namespace A386093

/-- `∩[A082741(n+1), A380906(n+1)]` -/
def P17041224874554232031.Spec : Prop :=
  ∀ n, (P17041224874554232031.a n : ℤ) = A386093 (n + 1)

end A386093

/-! ## A386093.P3830002850660213717

`∩[A082741(n+1), A386350(n+1)]`
-/

namespace A386093.P3830002850660213717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386093.P3830002850660213717

namespace A386093

/-- `∩[A082741(n+1), A386350(n+1)]` -/
def P3830002850660213717.Spec : Prop :=
  ∀ n, (P3830002850660213717.a n : ℤ) = A386093 (n + 1)

end A386093

/-! ## A386093.P4166097218013668869

`∩[A082741(n+1), A386353(n+1)]`
-/

namespace A386093.P4166097218013668869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386093.P4166097218013668869

namespace A386093

/-- `∩[A082741(n+1), A386353(n+1)]` -/
def P4166097218013668869.Spec : Prop :=
  ∀ n, (P4166097218013668869.a n : ℤ) = A386093 (n + 1)

end A386093

/-! ## A386093.P4470758925541616846

`∩[A082741(n+1), A386352(n+1)]`
-/

namespace A386093.P4470758925541616846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386093.P4470758925541616846

namespace A386093

/-- `∩[A082741(n+1), A386352(n+1)]` -/
def P4470758925541616846.Spec : Prop :=
  ∀ n, (P4470758925541616846.a n : ℤ) = A386093 (n + 1)

end A386093

/-! ## A386093.P12695182927924091192

`∩[A247052(n+1), A386352(n+1)]`
-/

namespace A386093.P12695182927924091192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386093.P12695182927924091192

namespace A386093

/-- `∩[A247052(n+1), A386352(n+1)]` -/
def P12695182927924091192.Spec : Prop :=
  ∀ n, (P12695182927924091192.a n : ℤ) = A386093 (n + 1)

end A386093

/-! ## A386093.P5598890228539152262

`∩[A082741(n+1), A386323(n+1)]`
-/

namespace A386093.P5598890228539152262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386093.P5598890228539152262

namespace A386093

/-- `∩[A082741(n+1), A386323(n+1)]` -/
def P5598890228539152262.Spec : Prop :=
  ∀ n, (P5598890228539152262.a n : ℤ) = A386093 (n + 1)

end A386093

/-! ## A386093.P6989044178548476046

`∩[A247052(n+1), A386323(n+1)]`
-/

namespace A386093.P6989044178548476046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386093.P6989044178548476046

namespace A386093

/-- `∩[A247052(n+1), A386323(n+1)]` -/
def P6989044178548476046.Spec : Prop :=
  ∀ n, (P6989044178548476046.a n : ℤ) = A386093 (n + 1)

end A386093

/-! ## A386093.P3073290681327031924

`∩[A038613(n+1), A082741(n+1)]`
-/

namespace A386093.P3073290681327031924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386093.P3073290681327031924

namespace A386093

/-- `∩[A038613(n+1), A082741(n+1)]` -/
def P3073290681327031924.Spec : Prop :=
  ∀ n, (P3073290681327031924.a n : ℤ) = A386093 (n + 1)

end A386093

/-! ## A386093.P9536773422673287892

`∩[A038613(n+1), A247052(n+1)]`
-/

namespace A386093.P9536773422673287892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386093.P9536773422673287892

namespace A386093

/-- `∩[A038613(n+1), A247052(n+1)]` -/
def P9536773422673287892.Spec : Prop :=
  ∀ n, (P9536773422673287892.a n : ℤ) = A386093 (n + 1)

end A386093

/-! ## A386093.P12608233479762255500

`∩[A001729(n+1), A380906(n+1)]`
-/

namespace A386093.P12608233479762255500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386093.P12608233479762255500

namespace A386093

/-- `∩[A001729(n+1), A380906(n+1)]` -/
def P12608233479762255500.Spec : Prop :=
  ∀ n, (P12608233479762255500.a n : ℤ) = A386093 (n + 1)

end A386093

/-! ## A386093.P9816850841107325304

`∩[A247052(n+1), A261189(n+1)]`
-/

namespace A386093.P9816850841107325304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386093.P9816850841107325304

namespace A386093

/-- `∩[A247052(n+1), A261189(n+1)]` -/
def P9816850841107325304.Spec : Prop :=
  ∀ n, (P9816850841107325304.a n : ℤ) = A386093 (n + 1)

end A386093

/-!
# A386094: Primes having only {1, 2, 4, 9} as digits.

The programs for A386094, there is no canonical definition to state claims against.
-/

/-! ## A386094.P25302044317693363

`A154722(A060945(2*n+3)*A104435(2*n+1))`
-/

namespace A386094.P25302044317693363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154722 (A060945 (2 * n + 3) * A104435 (2 * n + 1)).toNat

end

end A386094.P25302044317693363

/-!
# A386095: Primes having only {1, 2, 5, 6} as digits.

The programs for A386095, there is no canonical definition to state claims against.
-/

/-! ## A386095.P5401741760239383400

`∩[A133783(n+1), A386340(n+1)]`
-/

namespace A386095.P5401741760239383400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386095.P5401741760239383400

/-! ## A386095.P15340063555656251447

`∩[A062101(n+1), A386342(n+1)]`
-/

namespace A386095.P15340063555656251447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386095.P15340063555656251447

/-! ## A386095.P17126281504628460399

`∩[A057436(n+1), A386340(n+1)]`
-/

namespace A386095.P17126281504628460399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386095.P17126281504628460399

/-! ## A386095.P16144347753324993828

`∩[A045573(n+1), A133783(n+1)]`
-/

namespace A386095.P16144347753324993828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386095.P16144347753324993828

/-!
# A386096: Primes having only {1, 2, 5, 7} as digits.

The programs for A386096, the canonical program `A386096.P15885976382190563992` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386096 has offset 1).

The definition of A386096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1277 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386096.P15360010427606936405

`∩[A190223(n+1), A247052(n+1)]`
-/

namespace A386096.P15360010427606936405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386096.P15360010427606936405

namespace A386096

/-- `∩[A190223(n+1), A247052(n+1)]` -/
def P15360010427606936405.Spec : Prop :=
  ∀ n, (P15360010427606936405.a n : ℤ) = A386096 (n + 1)

end A386096

/-! ## A386096.P15885976382190563992

`∩[A190222(n+1), A247052(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A386096

/-- `∩[A190222(n+1), A247052(n+1)]` -/
def P15885976382190563992.Spec : Prop :=
  ∀ n, (P15885976382190563992.a n : ℤ) = A386096 (n + 1)

theorem P15885976382190563992.correct : P15885976382190563992.Spec := by
  intro n
  simp only [A386096, Nat.add_sub_cancel]

end A386096

/-! ## A386096.P684040892692681679

`∩[A160337(n+1), A247052(n+1)]`
-/

namespace A386096.P684040892692681679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386096.P684040892692681679

namespace A386096

/-- `∩[A160337(n+1), A247052(n+1)]` -/
def P684040892692681679.Spec : Prop :=
  ∀ n, (P684040892692681679.a n : ℤ) = A386096 (n + 1)

end A386096

/-! ## A386096.P16226478294207579679

`∩[A190223(n+1), A386340(n+1)]`
-/

namespace A386096.P16226478294207579679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386096.P16226478294207579679

namespace A386096

/-- `∩[A190223(n+1), A386340(n+1)]` -/
def P16226478294207579679.Spec : Prop :=
  ∀ n, (P16226478294207579679.a n : ℤ) = A386096 (n + 1)

end A386096

/-! ## A386096.P6387089131176427619

`∩[A190223(n+1), A386344(n+1)]`
-/

namespace A386096.P6387089131176427619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386096.P6387089131176427619

namespace A386096

/-- `∩[A190223(n+1), A386344(n+1)]` -/
def P6387089131176427619.Spec : Prop :=
  ∀ n, (P6387089131176427619.a n : ℤ) = A386096 (n + 1)

end A386096

/-! ## A386096.P10345524706094365589

`∩[A247052(n+1), A386340(n+1)]`
-/

namespace A386096.P10345524706094365589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386096.P10345524706094365589

namespace A386096

/-- `∩[A247052(n+1), A386340(n+1)]` -/
def P10345524706094365589.Spec : Prop :=
  ∀ n, (P10345524706094365589.a n : ℤ) = A386096 (n + 1)

end A386096

/-! ## A386096.P14227292902670824984

`∩[A190222(n+1), A386344(n+1)]`
-/

namespace A386096.P14227292902670824984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386096.P14227292902670824984

namespace A386096

/-- `∩[A190222(n+1), A386344(n+1)]` -/
def P14227292902670824984.Spec : Prop :=
  ∀ n, (P14227292902670824984.a n : ℤ) = A386096 (n + 1)

end A386096

/-! ## A386096.P3812255103657977890

`∩[A160337(n+1), A386321(n+1)]`
-/

namespace A386096.P3812255103657977890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386096.P3812255103657977890

namespace A386096

/-- `∩[A160337(n+1), A386321(n+1)]` -/
def P3812255103657977890.Spec : Prop :=
  ∀ n, (P3812255103657977890.a n : ℤ) = A386096 (n + 1)

end A386096

/-! ## A386096.P10751663838583433399

`∩[A190223(n+1), A386321(n+1)]`
-/

namespace A386096.P10751663838583433399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386096.P10751663838583433399

namespace A386096

/-- `∩[A190223(n+1), A386321(n+1)]` -/
def P10751663838583433399.Spec : Prop :=
  ∀ n, (P10751663838583433399.a n : ℤ) = A386096 (n + 1)

end A386096

/-! ## A386096.P16928803604701231717

`∩[A190223(n+1), A386341(n+1)]`
-/

namespace A386096.P16928803604701231717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386096.P16928803604701231717

namespace A386096

/-- `∩[A190223(n+1), A386341(n+1)]` -/
def P16928803604701231717.Spec : Prop :=
  ∀ n, (P16928803604701231717.a n : ℤ) = A386096 (n + 1)

end A386096

/-! ## A386096.P12085040593929361494

`∩[A190223(n+1), A386343(n+1)]`
-/

namespace A386096.P12085040593929361494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386096.P12085040593929361494

namespace A386096

/-- `∩[A190223(n+1), A386343(n+1)]` -/
def P12085040593929361494.Spec : Prop :=
  ∀ n, (P12085040593929361494.a n : ℤ) = A386096 (n + 1)

end A386096

/-! ## A386096.P6285109126008164862

`∩[A247052(n+1), A386346(n+1)]`
-/

namespace A386096.P6285109126008164862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386096.P6285109126008164862

namespace A386096

/-- `∩[A247052(n+1), A386346(n+1)]` -/
def P6285109126008164862.Spec : Prop :=
  ∀ n, (P6285109126008164862.a n : ℤ) = A386096 (n + 1)

end A386096

/-! ## A386096.P4453035342084166634

`∩[A247052(n+1), A386349(n+1)]`
-/

namespace A386096.P4453035342084166634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386096.P4453035342084166634

namespace A386096

/-- `∩[A247052(n+1), A386349(n+1)]` -/
def P4453035342084166634.Spec : Prop :=
  ∀ n, (P4453035342084166634.a n : ℤ) = A386096 (n + 1)

end A386096

/-! ## A386096.P13826345916353991727

`∩[A190222(n+1), A386340(n+1)]`
-/

namespace A386096.P13826345916353991727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386096.P13826345916353991727

namespace A386096

/-- `∩[A190222(n+1), A386340(n+1)]` -/
def P13826345916353991727.Spec : Prop :=
  ∀ n, (P13826345916353991727.a n : ℤ) = A386096 (n + 1)

end A386096

/-! ## A386096.P8787002078885487434

`∩[A001742(n+1), A247052(n+1)]`
-/

namespace A386096.P8787002078885487434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386096.P8787002078885487434

namespace A386096

/-- `∩[A001742(n+1), A247052(n+1)]` -/
def P8787002078885487434.Spec : Prop :=
  ∀ n, (P8787002078885487434.a n : ℤ) = A386096 (n + 1)

end A386096

/-! ## A386096.P2750728716314593160

`∩[A001742(n+1), A386321(n+1)]`
-/

namespace A386096.P2750728716314593160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386096.P2750728716314593160

namespace A386096

/-- `∩[A001742(n+1), A386321(n+1)]` -/
def P2750728716314593160.Spec : Prop :=
  ∀ n, (P2750728716314593160.a n : ℤ) = A386096 (n + 1)

end A386096

/-! ## A386096.P727994364796688402

`∩[A001742(n+1), A386340(n+1)]`
-/

namespace A386096.P727994364796688402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386096.P727994364796688402

namespace A386096

/-- `∩[A001742(n+1), A386340(n+1)]` -/
def P727994364796688402.Spec : Prop :=
  ∀ n, (P727994364796688402.a n : ℤ) = A386096 (n + 1)

end A386096

/-! ## A386096.P10820510752195441671

`∩[A001742(n+1), A386341(n+1)]`
-/

namespace A386096.P10820510752195441671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386096.P10820510752195441671

namespace A386096

/-- `∩[A001742(n+1), A386341(n+1)]` -/
def P10820510752195441671.Spec : Prop :=
  ∀ n, (P10820510752195441671.a n : ℤ) = A386096 (n + 1)

end A386096

/-! ## A386096.P11650532615997567902

`∩[A001742(n+1), A386343(n+1)]`
-/

namespace A386096.P11650532615997567902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386096.P11650532615997567902

namespace A386096

/-- `∩[A001742(n+1), A386343(n+1)]` -/
def P11650532615997567902.Spec : Prop :=
  ∀ n, (P11650532615997567902.a n : ℤ) = A386096 (n + 1)

end A386096

/-! ## A386096.P3315592002535944893

`∩[A001742(n+1), A386344(n+1)]`
-/

namespace A386096.P3315592002535944893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386096.P3315592002535944893

namespace A386096

/-- `∩[A001742(n+1), A386344(n+1)]` -/
def P3315592002535944893.Spec : Prop :=
  ∀ n, (P3315592002535944893.a n : ℤ) = A386096 (n + 1)

end A386096

/-!
# A386097: Primes having only {1, 2, 5, 8} as digits.

The programs for A386097, there is no canonical definition to state claims against.
-/

/-! ## A386097.P5737960625656779756

`∩[A080228(n+1), A386321(n+1)]`
-/

namespace A386097.P5737960625656779756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386097.P5737960625656779756

/-! ## A386097.P16391614396537453602

`∩[A080228(n+1), A386325(n+1)]`
-/

namespace A386097.P16391614396537453602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386097.P16391614396537453602

/-! ## A386097.P15761393921614801580

`∩[A080228(n+1), A386327(n+1)]`
-/

namespace A386097.P15761393921614801580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386327 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386097.P15761393921614801580

/-! ## A386097.P4987776125305516947

`∩[A080228(n+1), A386322(n+1)]`
-/

namespace A386097.P4987776125305516947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386097.P4987776125305516947

/-! ## A386097.P3211030875221893944

`∩[A080228(n+1), A386324(n+1)]`
-/

namespace A386097.P3211030875221893944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386097.P3211030875221893944

/-! ## A386097.P13303804364701016203

`∩[A038618(n+1), A080228(n+1)]`
-/

namespace A386097.P13303804364701016203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386097.P13303804364701016203

/-!
# A386098: Primes having only {1, 2, 5, 9} as digits.

The programs for A386098, there is no canonical definition to state claims against.
-/

/-! ## A386098.P14370193779432312257

`∩[A290164(n+1), A332109(n+1)]`
-/

namespace A386098.P14370193779432312257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386098.P14370193779432312257

/-! ## A386098.P1607093344733265547

`∩[A290164(n+1), A363287(n+1)]`
-/

namespace A386098.P1607093344733265547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386098.P1607093344733265547

/-!
# A386099: Primes having only {1, 2, 6, 7} as digits.

The programs for A386099, there is no canonical definition to state claims against.
-/

/-! ## A386099.P1415564332384466365

`∩[A062101(n+1), A380906(n+1)]`
-/

namespace A386099.P1415564332384466365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386099.P1415564332384466365

