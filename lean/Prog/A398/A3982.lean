import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C002
import Seq.B003.C000
import Seq.B004.C000
import Seq.B004.C002
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
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A398200: Lower (4/5,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A398200, the canonical program `A398200.P3776530324586389120` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398200 has offset 0).

The definition of A398200 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398200.P6359957672006744655

`ogf((x+4x^2+2x^3+4x^4+2x^5+x^6)/(1-2x+x^2-x^5+2x^6-x^7))`
-/

namespace A398200.P6359957672006744655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4, 2, 4, 2, 1] [1, -2, 1, 0, 0, -1, 2, -1] n

end

end A398200.P6359957672006744655

namespace A398200

/-- `ogf((x+4x^2+2x^3+4x^4+2x^5+x^6)/(1-2x+x^2-x^5+2x^6-x^7))` -/
def P6359957672006744655.Spec : Prop :=
  ∀ n, P6359957672006744655.a n = A398200 n

end A398200

/-! ## A398200.P3776530324586389120

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=13, a(4)=24, a(5)=37, a(6)=52`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398200

/-- `2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` -/
def P3776530324586389120.Spec : Prop :=
  ∀ n, P3776530324586389120.a n = A398200 n

theorem P3776530324586389120.correct : P3776530324586389120.Spec := by
  intro n
  simp only [A398200]

end A398200

/-! ## A398200.P3224607566984842266

`floor(4/5*∑[n])+n²`
-/

namespace A398200.P3224607566984842266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 : ℚ) / 5 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌋ + (n ^ 2 : ℤ)

end

end A398200.P3224607566984842266

namespace A398200

/-- `floor(4/5*∑[n])+n²` -/
def P3224607566984842266.Spec : Prop :=
  ∀ n, P3224607566984842266.a n = A398200 n

end A398200

/-! ## A398200.P15152945443447670865

`abs(A398061(n)-C(5*n+1, 2)/5)`
-/

namespace A398200.P15152945443447670865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A398061 n : ℚ) - (Nat.choose (5 * n + 1) 2 : ℚ) / 5|

end

end A398200.P15152945443447670865

namespace A398200

/-- `abs(A398061(n)-C(5*n+1, 2)/5)` -/
def P15152945443447670865.Spec : Prop :=
  ∀ n, P15152945443447670865.a n = (A398200 n : ℚ)

end A398200

/-! ## A398200.P12598795657956665228

`∑[A004273(round(7*n/5))]`
-/

namespace A398200.P12598795657956665228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.roundAway (7 * ((n : ℚ) / 5))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398200.P12598795657956665228

namespace A398200

/-- `∑[A004273(round(7*n/5))]` -/
def P12598795657956665228.Spec : Prop :=
  ∀ n, P12598795657956665228.a n = A398200 n

end A398200

/-!
# A398201: Upper (4/5,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A398201, the canonical program `A398201.P17485533436528189980` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398201 has offset 0).

The definition of A398201 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398201.P2248456158400468847

`ogf((2x+3x^2+2x^3+3x^4+3x^5+x^6)/(1-2x+x^2-x^5+2x^6-x^7))`
-/

namespace A398201.P2248456158400468847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 3, 2, 3, 3, 1] [1, -2, 1, 0, 0, -1, 2, -1] n

end

end A398201.P2248456158400468847

namespace A398201

/-- `ogf((2x+3x^2+2x^3+3x^4+3x^5+x^6)/(1-2x+x^2-x^5+2x^6-x^7))` -/
def P2248456158400468847.Spec : Prop :=
  ∀ n, P2248456158400468847.a n = A398201 n

end A398201

/-! ## A398201.P17485533436528189980

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=2, a(2)=7, a(3)=14, a(4)=24, a(5)=37, a(6)=53`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398201

/-- `2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` -/
def P17485533436528189980.Spec : Prop :=
  ∀ n, P17485533436528189980.a n = A398201 n

theorem P17485533436528189980.correct : P17485533436528189980.Spec := by
  intro n
  simp only [A398201]

end A398201

/-! ## A398201.P13334291437583063126

`n²-floor(∑[n/5-n])`
-/

namespace A398201.P13334291437583063126
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 5 - (n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A398201.P13334291437583063126

namespace A398201

/-- `n²-floor(∑[n/5-n])` -/
def P13334291437583063126.Spec : Prop :=
  ∀ n, P13334291437583063126.a n = A398201 n

end A398201

/-! ## A398201.P11025401258336330254

`abs(A398060(n)-C(5*n+1, 2)/5)`
-/

namespace A398201.P11025401258336330254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A398060 n : ℚ) - (Nat.choose (5 * n + 1) 2 : ℚ) / 5|

end

end A398201.P11025401258336330254

namespace A398201

/-- `abs(A398060(n)-C(5*n+1, 2)/5)` -/
def P11025401258336330254.Spec : Prop :=
  ∀ n, P11025401258336330254.a n = (A398201 n : ℚ)

end A398201

/-! ## A398201.P7442924473217486124

`∑[A315707(n)-A016777(n)]`
-/

namespace A398201.P7442924473217486124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315707 n - A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398201.P7442924473217486124

namespace A398201

/-- `∑[A315707(n)-A016777(n)]` -/
def P7442924473217486124.Spec : Prop :=
  ∀ n, P7442924473217486124.a n = A398201 n

end A398201

/-! ## A398201.P4141802802994478392

`∑[A057354(2*n+1)+A004273(n)]`
-/

namespace A398201.P4141802802994478392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (2 * n + 1) + A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398201.P4141802802994478392

namespace A398201

/-- `∑[A057354(2*n+1)+A004273(n)]` -/
def P4141802802994478392.Spec : Prop :=
  ∀ n, P4141802802994478392.a n = A398201 n

end A398201

/-! ## A398201.P9768198188893692160

`∑[comp[A005843(n+1)]+A134119(4*n)]`
-/

namespace A398201.P9768198188893692160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) + A134119 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398201.P9768198188893692160

namespace A398201

/-- `∑[comp[A005843(n+1)]+A134119(4*n)]` -/
def P9768198188893692160.Spec : Prop :=
  ∀ n, P9768198188893692160.a n = A398201 n

end A398201

/-!
# A398202: Lower (4/3,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A398202, the canonical program `A398202.P5570466732706551257` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398202 has offset 0).

The definition of A398202 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398202.P9427813830642519408

`ogf((2x+4x^2+3x^3+x^4)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A398202.P9427813830642519408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 4, 3, 1] [1, -2, 1, -1, 2, -1] n

end

end A398202.P9427813830642519408

namespace A398202

/-- `ogf((2x+4x^2+3x^3+x^4)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P9427813830642519408.Spec : Prop :=
  ∀ n, P9427813830642519408.a n = A398202 n

end A398202

/-! ## A398202.P5570466732706551257

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=8, a(3)=17, a(4)=29`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398202

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P5570466732706551257.Spec : Prop :=
  ∀ n, P5570466732706551257.a n = A398202 n

theorem P5570466732706551257.correct : P5570466732706551257.Spec := by
  intro n
  simp only [A398202]

end A398202

/-! ## A398202.P16200429075670770404

`floor((5*n+1)²/15)`
-/

namespace A398202.P16200429075670770404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((5 * n + 1) ^ 2 : ℚ) / 15⌋

end

end A398202.P16200429075670770404

namespace A398202

/-- `floor((5*n+1)²/15)` -/
def P16200429075670770404.Spec : Prop :=
  ∀ n, P16200429075670770404.a n = A398202 n

end A398202

/-! ## A398202.P13524601216513453412

`∑[a(n-3)+10]` with `a(0)=0, a(1)=2, a(2)=6, a(3)=9`
-/

namespace A398202.P13524601216513453412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 6, 9] fun n f1 =>
  f1 (n - 3) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398202.P13524601216513453412

namespace A398202

/-- `∑[a(n-3)+10]` -/
def P13524601216513453412.Spec : Prop :=
  ∀ n, (P13524601216513453412.a n : ℤ) = A398202 n

end A398202

/-! ## A398202.P2923665871626312664

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=2, a(2)=4, a(3)=3, a(4)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A398202.P2923665871626312664
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4, 3, 3] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398202.P2923665871626312664

namespace A398202

/-- `∑[∑[floor(a(n-3))]]` -/
def P2923665871626312664.Spec : Prop :=
  ∀ n, (P2923665871626312664.a n : ℤ) = A398202 n

end A398202

/-! ## A398202.P3950397530264232671

`A398854(n)+n`
-/

namespace A398202.P3950397530264232671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398854 n + (n : ℤ)

end

end A398202.P3950397530264232671

namespace A398202

/-- `A398854(n)+n` -/
def P3950397530264232671.Spec : Prop :=
  ∀ n, P3950397530264232671.a n = A398202 n

end A398202

/-! ## A398202.P9044509976691956095

`round(A168668(n)/3)`
-/

namespace A398202.P9044509976691956095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A168668 n : ℚ) / 3)

end

end A398202.P9044509976691956095

namespace A398202

/-- `round(A168668(n)/3)` -/
def P9044509976691956095.Spec : Prop :=
  ∀ n, P9044509976691956095.a n = A398202 n

end A398202

/-! ## A398202.P3235500055633038669

`∑[A298786(n)-1]`
-/

namespace A398202.P3235500055633038669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298786 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398202.P3235500055633038669

namespace A398202

/-- `∑[A298786(n)-1]` -/
def P3235500055633038669.Spec : Prop :=
  ∀ n, P3235500055633038669.a n = A398202 n

end A398202

/-! ## A398202.P15187922511851836981

`A397980(n)+∑[n]`
-/

namespace A398202.P15187922511851836981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397980 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398202.P15187922511851836981

namespace A398202

/-- `A397980(n)+∑[n]` -/
def P15187922511851836981.Spec : Prop :=
  ∀ n, P15187922511851836981.a n = A398202 n

end A398202

/-! ## A398202.P5545477032879308964

`A298787(n)-(n+1)`
-/

namespace A398202.P5545477032879308964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298787 n - (n + 1 : ℤ)

end

end A398202.P5545477032879308964

namespace A398202

/-- `A298787(n)-(n+1)` -/
def P5545477032879308964.Spec : Prop :=
  ∀ n, P5545477032879308964.a n = A398202 n

end A398202

/-! ## A398202.P11316088949497618448

`A301696(n)-(n+1)²`
-/

namespace A398202.P11316088949497618448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301696 n - ((n + 1) ^ 2 : ℤ)

end

end A398202.P11316088949497618448

namespace A398202

/-- `A301696(n)-(n+1)²` -/
def P11316088949497618448.Spec : Prop :=
  ∀ n, P11316088949497618448.a n = A398202 n

end A398202

/-! ## A398202.P2537689034099200717

`∑[A042965(n+1)]+n²`
-/

namespace A398202.P2537689034099200717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A398202.P2537689034099200717

namespace A398202

/-- `∑[A042965(n+1)]+n²` -/
def P2537689034099200717.Spec : Prop :=
  ∀ n, P2537689034099200717.a n = A398202 n

end A398202

/-! ## A398202.P9575287917368407264

`∑[A219529(n)]-(n+1)²`
-/

namespace A398202.P9575287917368407264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A398202.P9575287917368407264

namespace A398202

/-- `∑[A219529(n)]-(n+1)²` -/
def P9575287917368407264.Spec : Prop :=
  ∀ n, P9575287917368407264.a n = A398202 n

end A398202

/-! ## A398202.P15251451111698943356

`A113422(n)+A004523(n)`
-/

namespace A398202.P15251451111698943356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113422 n + A004523 n

end

end A398202.P15251451111698943356

namespace A398202

/-- `A113422(n)+A004523(n)` -/
def P15251451111698943356.Spec : Prop :=
  ∀ n, P15251451111698943356.a n = A398202 n

end A398202

/-! ## A398202.P2108289382656561728

`A165900(n)+A000969(n)`
-/

namespace A398202.P2108289382656561728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 n + A000969 n

end

end A398202.P2108289382656561728

namespace A398202

/-- `A165900(n)+A000969(n)` -/
def P2108289382656561728.Spec : Prop :=
  ∀ n, P2108289382656561728.a n = A398202 n

end A398202

/-! ## A398202.P11022646338536219576

`A398836(n)+A001840(n)`
-/

namespace A398202.P11022646338536219576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398836 n + A001840 n

end

end A398202.P11022646338536219576

namespace A398202

/-- `A398836(n)+A001840(n)` -/
def P11022646338536219576.Spec : Prop :=
  ∀ n, P11022646338536219576.a n = A398202 n

end A398202

/-! ## A398202.P17308357156011673823

`A398205(n)+A194275(n)`
-/

namespace A398202.P17308357156011673823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398205 n + A194275 n

end

end A398202.P17308357156011673823

namespace A398202

/-- `A398205(n)+A194275(n)` -/
def P17308357156011673823.Spec : Prop :=
  ∀ n, P17308357156011673823.a n = A398202 n

end A398202

/-! ## A398202.P15114170962964584008

`A397974(n)+A389143(n)`
-/

namespace A398202.P15114170962964584008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397974 n + A389143 n

end

end A398202.P15114170962964584008

namespace A398202

/-- `A397974(n)+A389143(n)` -/
def P15114170962964584008.Spec : Prop :=
  ∀ n, P15114170962964584008.a n = A398202 n

end A398202

/-! ## A398202.P17785315300613101836

`A397975(n)+A389142(n)`
-/

namespace A398202.P17785315300613101836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397975 n + A389142 n

end

end A398202.P17785315300613101836

namespace A398202

/-- `A397975(n)+A389142(n)` -/
def P17785315300613101836.Spec : Prop :=
  ∀ n, P17785315300613101836.a n = A398202 n

end A398202

/-! ## A398202.P11715987597447114150

`A056109(n)-A008577(n)`
-/

namespace A398202.P11715987597447114150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056109 n - A008577 n

end

end A398202.P11715987597447114150

namespace A398202

/-- `A056109(n)-A008577(n)` -/
def P11715987597447114150.Spec : Prop :=
  ∀ n, P11715987597447114150.a n = A398202 n

end A398202

/-!
# A398203: Upper (4/3,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A398203, the canonical program `A398203.P13519331803441787108` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398203 has offset 0).

The definition of A398203 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398203.P4349526208239501932

`ogf((3x+2x^2+4x^3+x^4)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A398203.P4349526208239501932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 2, 4, 1] [1, -2, 1, -1, 2, -1] n

end

end A398203.P4349526208239501932

namespace A398203

/-- `ogf((3x+2x^2+4x^3+x^4)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P4349526208239501932.Spec : Prop :=
  ∀ n, P4349526208239501932.a n = A398203 n

end A398203

/-! ## A398203.P13519331803441787108

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=3, a(2)=8, a(3)=17, a(4)=30`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398203

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P13519331803441787108.Spec : Prop :=
  ∀ n, P13519331803441787108.a n = A398203 n

theorem P13519331803441787108.correct : P13519331803441787108.Spec := by
  intro n
  simp only [A398203]

end A398203

/-! ## A398203.P4267007642876336762

`ceil(n*(2+5*n)/3)`
-/

namespace A398203.P4267007642876336762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n * (2 + 5 * n) : ℚ) / 3⌉

end

end A398203.P4267007642876336762

namespace A398203

/-- `ceil(n*(2+5*n)/3)` -/
def P4267007642876336762.Spec : Prop :=
  ∀ n, P4267007642876336762.a n = A398203 n

end A398203

/-! ## A398203.P16248072101377543904

`∑[a(n-3)+10]` with `a(0)=0, a(1)=3, a(2)=5, a(3)=9`
-/

namespace A398203.P16248072101377543904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 5, 9] fun n f1 =>
  f1 (n - 3) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398203.P16248072101377543904

namespace A398203

/-- `∑[a(n-3)+10]` -/
def P16248072101377543904.Spec : Prop :=
  ∀ n, (P16248072101377543904.a n : ℤ) = A398203 n

end A398203

/-! ## A398203.P3730806996286488030

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=3, a(2)=2, a(3)=4, a(4)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A398203.P3730806996286488030
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 2, 4, 4] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398203.P3730806996286488030

namespace A398203

/-- `∑[∑[floor(a(n-3))]]` -/
def P3730806996286488030.Spec : Prop :=
  ∀ n, (P3730806996286488030.a n : ℤ) = A398203 n

end A398203

/-! ## A398203.P11152590083781813129

`A398855(n)+n`
-/

namespace A398203.P11152590083781813129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398855 n + (n : ℤ)

end

end A398203.P11152590083781813129

namespace A398203

/-- `A398855(n)+n` -/
def P11152590083781813129.Spec : Prop :=
  ∀ n, P11152590083781813129.a n = A398203 n

end A398203

/-! ## A398203.P14684794105411209622

`∑[A298784(n)-1]`
-/

namespace A398203.P14684794105411209622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298784 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398203.P14684794105411209622

namespace A398203

/-- `∑[A298784(n)-1]` -/
def P14684794105411209622.Spec : Prop :=
  ∀ n, P14684794105411209622.a n = A398203 n

end A398203

/-! ## A398203.P15641595339721977960

`A397981(n)+∑[n]`
-/

namespace A398203.P15641595339721977960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397981 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398203.P15641595339721977960

namespace A398203

/-- `A397981(n)+∑[n]` -/
def P15641595339721977960.Spec : Prop :=
  ∀ n, P15641595339721977960.a n = A398203 n

end A398203

/-! ## A398203.P129182080157781916

`A298785(n)-(n+1)`
-/

namespace A398203.P129182080157781916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298785 n - (n + 1 : ℤ)

end

end A398203.P129182080157781916

namespace A398203

/-- `A298785(n)-(n+1)` -/
def P129182080157781916.Spec : Prop :=
  ∀ n, P129182080157781916.a n = A398203 n

end A398203

/-! ## A398203.P3133082963323121284

`2*A398205(n)+n`
-/

namespace A398203.P3133082963323121284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A398205 n + (n : ℤ)

end

end A398203.P3133082963323121284

namespace A398203

/-- `2*A398205(n)+n` -/
def P3133082963323121284.Spec : Prop :=
  ∀ n, P3133082963323121284.a n = A398203 n

end A398203

/-! ## A398203.P9735751314116481417

`A301695(n)-(n+1)²`
-/

namespace A398203.P9735751314116481417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301695 n - ((n + 1) ^ 2 : ℤ)

end

end A398203.P9735751314116481417

namespace A398203

/-- `A301695(n)-(n+1)²` -/
def P9735751314116481417.Spec : Prop :=
  ∀ n, P9735751314116481417.a n = A398203 n

end A398203

/-! ## A398203.P9782346321784973280

`∑[A301694(n)]-(n+1)²`
-/

namespace A398203.P9782346321784973280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A398203.P9782346321784973280

namespace A398203

/-- `∑[A301694(n)]-(n+1)²` -/
def P9782346321784973280.Spec : Prop :=
  ∀ n, P9782346321784973280.a n = A398203 n

end A398203

/-! ## A398203.P16649937306169586086

`A113422(n)+A004396(n)`
-/

namespace A398203.P16649937306169586086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113422 n + A004396 n

end

end A398203.P16649937306169586086

namespace A398203

/-- `A113422(n)+A004396(n)` -/
def P16649937306169586086.Spec : Prop :=
  ∀ n, P16649937306169586086.a n = A398203 n

end A398203

/-! ## A398203.P12041641048936579656

`A147623(n)+A032765(n)`
-/

namespace A398203.P12041641048936579656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147623 n + A032765 n

end

end A398203.P12041641048936579656

namespace A398203

/-- `A147623(n)+A032765(n)` -/
def P12041641048936579656.Spec : Prop :=
  ∀ n, P12041641048936579656.a n = A398203 n

end A398203

/-! ## A398203.P5232143645707175315

`A302402(n)+A222170(n)`
-/

namespace A398203.P5232143645707175315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302402 n + A222170 n

end

end A398203.P5232143645707175315

namespace A398203

/-- `A302402(n)+A222170(n)` -/
def P5232143645707175315.Spec : Prop :=
  ∀ n, P5232143645707175315.a n = A398203 n

end A398203

/-! ## A398203.P11472368318425352887

`A084849(n)-A208994(n)`
-/

namespace A398203.P11472368318425352887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084849 n - A208994 n

end

end A398203.P11472368318425352887

namespace A398203

/-- `A084849(n)-A208994(n)` -/
def P11472368318425352887.Spec : Prop :=
  ∀ n, P11472368318425352887.a n = A398203 n

end A398203

/-! ## A398203.P7321033671911611448

`A033951(n)-A298025(n)`
-/

namespace A398203.P7321033671911611448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033951 n - A298025 n

end

end A398203.P7321033671911611448

namespace A398203

/-- `A033951(n)-A298025(n)` -/
def P7321033671911611448.Spec : Prop :=
  ∀ n, P7321033671911611448.a n = A398203 n

end A398203

/-! ## A398203.P8238346723085472167

`A147875(n)-A194275(n)`
-/

namespace A398203.P8238346723085472167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147875 n - A194275 n

end

end A398203.P8238346723085472167

namespace A398203

/-- `A147875(n)-A194275(n)` -/
def P8238346723085472167.Spec : Prop :=
  ∀ n, P8238346723085472167.a n = A398203 n

end A398203

/-! ## A398203.P4956111884521884175

`A365418(n)-A000969(n)`
-/

namespace A398203.P4956111884521884175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365418 n - A000969 n

end

end A398203.P4956111884521884175

namespace A398203

/-- `A365418(n)-A000969(n)` -/
def P4956111884521884175.Spec : Prop :=
  ∀ n, P4956111884521884175.a n = A398203 n

end A398203

/-! ## A398203.P12251266308497066755

`A158138(2*n+1)-(2*n+1)`
-/

namespace A398203.P12251266308497066755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158138 (2 * n + 1) - (2 * n + 1 : ℤ)

end

end A398203.P12251266308497066755

namespace A398203

/-- `A158138(2*n+1)-(2*n+1)` -/
def P12251266308497066755.Spec : Prop :=
  ∀ n, P12251266308497066755.a n = A398203 n

end A398203

/-!
# A398204: Lower (-1/3,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A398204, the canonical program `A398204.P14484470933449480928` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398204 has offset 0).

The definition of A398204 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398204.P14484470933449480928

`ogf((3x^2+x^3+x^4)/(1-2x+x^2-x^3+2x^4-x^5))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398204

/-- `ogf((3x^2+x^3+x^4)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P14484470933449480928.Spec : Prop :=
  ∀ n, P14484470933449480928.a n = A398204 n

theorem P14484470933449480928.correct : P14484470933449480928.Spec := by
  intro n
  simp only [A398204]

end A398204

/-! ## A398204.P6229088387803409111

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=7, a(4)=12`
-/

namespace A398204.P6229088387803409111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 3, 7, 12] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A398204.P6229088387803409111

namespace A398204

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P6229088387803409111.Spec : Prop :=
  ∀ n, P6229088387803409111.a n = A398204 n

end A398204

/-! ## A398204.P10569510249056318408

`floor(n²-∑[n]/3)`
-/

namespace A398204.P10569510249056318408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℚ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌋

end

end A398204.P10569510249056318408

namespace A398204

/-- `floor(n²-∑[n]/3)` -/
def P10569510249056318408.Spec : Prop :=
  ∀ n, P10569510249056318408.a n = A398204 n

end A398204

/-! ## A398204.P2489977728314268186

`∑[a(n-3)+5]` with `a(0)=0, a(1)=0, a(2)=3, a(3)=4`
-/

namespace A398204.P2489977728314268186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 3, 4] fun n f1 =>
  f1 (n - 3) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398204.P2489977728314268186

namespace A398204

/-- `∑[a(n-3)+5]` -/
def P2489977728314268186.Spec : Prop :=
  ∀ n, (P2489977728314268186.a n : ℤ) = A398204 n

end A398204

/-! ## A398204.P14960158235566336241

`∑[∑[or(1, a(n-3))]]` with `a(0)=0, a(1)=0, a(2)=3`
-/

namespace A398204.P14960158235566336241
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 3] fun n f2 =>
  Nat.lor 1 (f2 (n - 3))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398204.P14960158235566336241

namespace A398204

/-- `∑[∑[or(1, a(n-3))]]` -/
def P14960158235566336241.Spec : Prop :=
  ∀ n, (P14960158235566336241.a n : ℤ) = A398204 n

end A398204

/-! ## A398204.P14604254181592687213

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=0, a(2)=3, a(3)=1, a(4)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A398204.P14604254181592687213
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 3, 1, 1] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398204.P14604254181592687213

namespace A398204

/-- `∑[∑[floor(a(n-3))]]` -/
def P14604254181592687213.Spec : Prop :=
  ∀ n, (P14604254181592687213.a n : ℤ) = A398204 n

end A398204

/-! ## A398204.P3841496518315811394

`∑[∑[3^a(a(n-3))]]` with `a(0)=0, a(1)=0, a(2)=3`
-/

namespace A398204.P3841496518315811394
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 3] fun n f2 =>
  3 ^ f2 (f2 (n - 3))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398204.P3841496518315811394

namespace A398204

/-- `∑[∑[3^a(a(n-3))]]` -/
def P3841496518315811394.Spec : Prop :=
  ∀ n, (P3841496518315811394.a n : ℤ) = A398204 n

end A398204

/-! ## A398204.P10920606033917627106

`∑[∑[gcd(n+1, n-2)]]-(2*n+1)`
-/

namespace A398204.P10920606033917627106
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) ((n : ℤ) - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 * n + 1 : ℤ)

end

end A398204.P10920606033917627106

namespace A398204

/-- `∑[∑[gcd(n+1, n-2)]]-(2*n+1)` -/
def P10920606033917627106.Spec : Prop :=
  ∀ n, P10920606033917627106.a n = A398204 n

end A398204

/-! ## A398204.P14163176171143120426

`A194275(n)-n`
-/

namespace A398204.P14163176171143120426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194275 n - (n : ℤ)

end

end A398204.P14163176171143120426

namespace A398204

/-- `A194275(n)-n` -/
def P14163176171143120426.Spec : Prop :=
  ∀ n, P14163176171143120426.a n = A398204 n

end A398204

/-! ## A398204.P6836996675890765249

`A398856(n)-n²`
-/

namespace A398204.P6836996675890765249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398856 n - (n ^ 2 : ℤ)

end

end A398204.P6836996675890765249

namespace A398204

/-- `A398856(n)-n²` -/
def P6836996675890765249.Spec : Prop :=
  ∀ n, P6836996675890765249.a n = A398204 n

end A398204

/-! ## A398204.P13435913135737366199

`A397982(n)-∑[n]`
-/

namespace A398204.P13435913135737366199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397982 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398204.P13435913135737366199

namespace A398204

/-- `A397982(n)-∑[n]` -/
def P13435913135737366199.Spec : Prop :=
  ∀ n, P13435913135737366199.a n = A398204 n

end A398204

/-! ## A398204.P13844049364852408703

`∑[A008854(n+1)]-n`
-/

namespace A398204.P13844049364852408703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A398204.P13844049364852408703

namespace A398204

/-- `∑[A008854(n+1)]-n` -/
def P13844049364852408703.Spec : Prop :=
  ∀ n, P13844049364852408703.a n = A398204 n

end A398204

/-! ## A398204.P3276681174685090085

`A208994(n)-A080956(n)`
-/

namespace A398204.P3276681174685090085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208994 n - A080956 n

end

end A398204.P3276681174685090085

namespace A398204

/-- `A208994(n)-A080956(n)` -/
def P3276681174685090085.Spec : Prop :=
  ∀ n, P3276681174685090085.a n = A398204 n

end A398204

/-! ## A398204.P17824592222808513467

`A001105(n)-A397981(n)`
-/

namespace A398204.P17824592222808513467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n - A397981 n

end

end A398204.P17824592222808513467

namespace A398204

/-- `A001105(n)-A397981(n)` -/
def P17824592222808513467.Spec : Prop :=
  ∀ n, P17824592222808513467.a n = A398204 n

end A398204

/-! ## A398204.P12030747650552637993

`A397972(n)-A004396(n)`
-/

namespace A398204.P12030747650552637993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397972 n - A004396 n

end

end A398204.P12030747650552637993

namespace A398204

/-- `A397972(n)-A004396(n)` -/
def P12030747650552637993.Spec : Prop :=
  ∀ n, P12030747650552637993.a n = A398204 n

end A398204

/-! ## A398204.P2589029802176153573

`A005475(n)-A398203(n)`
-/

namespace A398204.P2589029802176153573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n - A398203 n

end

end A398204.P2589029802176153573

namespace A398204

/-- `A005475(n)-A398203(n)` -/
def P2589029802176153573.Spec : Prop :=
  ∀ n, P2589029802176153573.a n = A398204 n

end A398204

/-! ## A398204.P11662424556736970147

`A005476(n)-A398855(n)`
-/

namespace A398204.P11662424556736970147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005476 n - A398855 n

end

end A398204.P11662424556736970147

namespace A398204

/-- `A005476(n)-A398855(n)` -/
def P11662424556736970147.Spec : Prop :=
  ∀ n, P11662424556736970147.a n = A398204 n

end A398204

/-! ## A398204.P2622548613262725534

`A397974(n)-A032765(n)`
-/

namespace A398204.P2622548613262725534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397974 n - A032765 n

end

end A398204.P2622548613262725534

namespace A398204

/-- `A397974(n)-A032765(n)` -/
def P2622548613262725534.Spec : Prop :=
  ∀ n, P2622548613262725534.a n = A398204 n

end A398204

/-! ## A398204.P17046377181048917651

`A033428(n)-A398859(n)`
-/

namespace A398204.P17046377181048917651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n - A398859 n

end

end A398204.P17046377181048917651

namespace A398204

/-- `A033428(n)-A398859(n)` -/
def P17046377181048917651.Spec : Prop :=
  ∀ n, P17046377181048917651.a n = A398204 n

end A398204

/-! ## A398204.P4404540163496916780

`A393678(n)-A090168(n)`
-/

namespace A398204.P4404540163496916780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393678 n - A090168 n

end

end A398204.P4404540163496916780

namespace A398204

/-- `A393678(n)-A090168(n)` -/
def P4404540163496916780.Spec : Prop :=
  ∀ n, P4404540163496916780.a n = A398204 n

end A398204

/-!
# A398205: Upper (-1/3,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A398205, the canonical program `A398205.P11638134174617533476` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398205 has offset 0).

The definition of A398205 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398205.P11638134174617533476

`ogf((x+x^2+2x^3+x^4)/(1-2x+x^2-x^3+2x^4-x^5))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398205

/-- `ogf((x+x^2+2x^3+x^4)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P11638134174617533476.Spec : Prop :=
  ∀ n, P11638134174617533476.a n = A398205 n

theorem P11638134174617533476.correct : P11638134174617533476.Spec := by
  intro n
  simp only [A398205]

end A398205

/-! ## A398205.P6890886798992555334

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=7, a(4)=13`
-/

namespace A398205.P6890886798992555334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 7, 13] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A398205.P6890886798992555334

namespace A398205

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P6890886798992555334.Spec : Prop :=
  ∀ n, P6890886798992555334.a n = A398205 n

end A398205

/-! ## A398205.P10833209008902933179

`∑[comp[∑[gcd(2, n)+1]]]`
-/

namespace A398205.P10833209008902933179
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398205.P10833209008902933179

namespace A398205

/-- `∑[comp[∑[gcd(2, n)+1]]]` -/
def P10833209008902933179.Spec : Prop :=
  ∀ n, (P10833209008902933179.a n : ℤ) = A398205 n

end A398205

/-! ## A398205.P13496255039294705190

`∑[comp[∑[3-n%2]]]`
-/

namespace A398205.P13496255039294705190
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((n % 2 : ℕ) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398205.P13496255039294705190

namespace A398205

/-- `∑[comp[∑[3-n%2]]]` -/
def P13496255039294705190.Spec : Prop :=
  ∀ n, (P13496255039294705190.a n : ℤ) = A398205 n

end A398205

/-! ## A398205.P13126992811382662967

`∑[comp[∑[3-and(1, n)]]]`
-/

namespace A398205.P13126992811382662967
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (Nat.land 1 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398205.P13126992811382662967

namespace A398205

/-- `∑[comp[∑[3-and(1, n)]]]` -/
def P13126992811382662967.Spec : Prop :=
  ∀ n, (P13126992811382662967.a n : ℤ) = A398205 n

end A398205

/-! ## A398205.P1758611667822243309

`n²-floor(∑[n]/3)`
-/

namespace A398205.P1758611667822243309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌋

end

end A398205.P1758611667822243309

namespace A398205

/-- `n²-floor(∑[n]/3)` -/
def P1758611667822243309.Spec : Prop :=
  ∀ n, P1758611667822243309.a n = A398205 n

end A398205

/-! ## A398205.P17097546385531506610

`∑[comp[∑[(n+1)%2+2]]]`
-/

namespace A398205.P17097546385531506610
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2 + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398205.P17097546385531506610

namespace A398205

/-- `∑[comp[∑[(n+1)%2+2]]]` -/
def P17097546385531506610.Spec : Prop :=
  ∀ n, (P17097546385531506610.a n : ℤ) = A398205 n

end A398205

/-! ## A398205.P887281591269404103

`∑[comp[∑[and(1, n+1)+2]]]`
-/

namespace A398205.P887281591269404103
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398205.P887281591269404103

namespace A398205

/-- `∑[comp[∑[and(1, n+1)+2]]]` -/
def P887281591269404103.Spec : Prop :=
  ∀ n, (P887281591269404103.a n : ℤ) = A398205 n

end A398205

/-! ## A398205.P6333563708826955926

`∑[a(n-3)+5]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A398205.P6333563708826955926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 4] fun n f1 =>
  f1 (n - 3) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398205.P6333563708826955926

namespace A398205

/-- `∑[a(n-3)+5]` -/
def P6333563708826955926.Spec : Prop :=
  ∀ n, (P6333563708826955926.a n : ℤ) = A398205 n

end A398205

/-! ## A398205.P16043008943604024451

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A398205.P16043008943604024451
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 2, 2] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398205.P16043008943604024451

namespace A398205

/-- `∑[∑[floor(a(n-3))]]` -/
def P16043008943604024451.Spec : Prop :=
  ∀ n, (P16043008943604024451.a n : ℤ) = A398205 n

end A398205

/-! ## A398205.P15098244691019564048

`A398855(n)/2`
-/

namespace A398205.P15098244691019564048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A398855 n : ℚ) / 2

end

end A398205.P15098244691019564048

namespace A398205

/-- `A398855(n)/2` -/
def P15098244691019564048.Spec : Prop :=
  ∀ n, P15098244691019564048.a n = (A398205 n : ℚ)

end A398205

/-! ## A398205.P242296879190922671

`(A398203(n)-n)/2`
-/

namespace A398205.P242296879190922671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A398203 n - (n : ℤ) : ℚ) / 2

end

end A398205.P242296879190922671

namespace A398205

/-- `(A398203(n)-n)/2` -/
def P242296879190922671.Spec : Prop :=
  ∀ n, P242296879190922671.a n = (A398205 n : ℚ)

end A398205

/-! ## A398205.P4953332444598983698

`∑[A008576(n)-(n+1)]`
-/

namespace A398205.P4953332444598983698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398205.P4953332444598983698

namespace A398205

/-- `∑[A008576(n)-(n+1)]` -/
def P4953332444598983698.Spec : Prop :=
  ∀ n, P4953332444598983698.a n = A398205 n

end A398205

/-! ## A398205.P17066493453025146422

`A134238(n+1)%A298787(n)`
-/

namespace A398205.P17066493453025146422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134238 (n + 1)) (A298787 n)

end

end A398205.P17066493453025146422

namespace A398205

/-- `A134238(n+1)%A298787(n)` -/
def P17066493453025146422.Spec : Prop :=
  ∀ n, P17066493453025146422.a n = A398205 n

end A398205

/-! ## A398205.P14110960638668299448

`A308158(A131098(n+1))`
-/

namespace A398205.P14110960638668299448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308158 (A131098 (n + 1)).toNat

end

end A398205.P14110960638668299448

namespace A398205

/-- `A308158(A131098(n+1))` -/
def P14110960638668299448.Spec : Prop :=
  ∀ n, P14110960638668299448.a n = A398205 n

end A398205

/-! ## A398205.P4578719740518743792

`A211524(A016885(n))`
-/

namespace A398205.P4578719740518743792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211524 (A016885 n).toNat

end

end A398205.P4578719740518743792

namespace A398205

/-- `A211524(A016885(n))` -/
def P4578719740518743792.Spec : Prop :=
  ∀ n, P4578719740518743792.a n = A398205 n

end A398205

/-! ## A398205.P7887765140760007473

`A025799(A370532(n+1))`
-/

namespace A398205.P7887765140760007473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025799 (A370532 (n + 1)).toNat

end

end A398205.P7887765140760007473

namespace A398205

/-- `A025799(A370532(n+1))` -/
def P7887765140760007473.Spec : Prop :=
  ∀ n, P7887765140760007473.a n = A398205 n

end A398205

/-! ## A398205.P2981582669084701598

`A008613(5*(2*n+1))`
-/

namespace A398205.P2981582669084701598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008613 (5 * (2 * n + 1))

end

end A398205.P2981582669084701598

namespace A398205

/-- `A008613(5*(2*n+1))` -/
def P2981582669084701598.Spec : Prop :=
  ∀ n, P2981582669084701598.a n = A398205 n

end A398205

/-! ## A398205.P6941023187371387719

`A319973(A017305(n))`
-/

namespace A398205.P6941023187371387719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319973 (A017305 n).toNat

end

end A398205.P6941023187371387719

namespace A398205

/-- `A319973(A017305(n))` -/
def P6941023187371387719.Spec : Prop :=
  ∀ n, P6941023187371387719.a n = A398205 n

end A398205

/-!
# A398206: Records of A398031.

The programs for A398206, there is no canonical definition to state claims against.
-/

/-! ## A398206.P892173072544999831

`record[A398031(n+1)]`
-/

namespace A398206.P892173072544999831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A398206.P892173072544999831

/-!
# A398221: Number of assembly trees of the complement of the n-path graph.

The programs for A398221, there is no canonical definition to state claims against.
-/

/-! ## A398221.P11475983438920448326

`A008619(A001147(n))-A059590(n)`
-/

namespace A398221.P11475983438920448326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A001147 n).toNat - A059590 n

end

end A398221.P11475983438920448326

/-! ## A398221.P400984864317381928

`A255739(n+1)-A001222(A015669(n))`
-/

namespace A398221.P400984864317381928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255739 (n + 1) - A001222 (A015669 n).toNat

end

end A398221.P400984864317381928

/-!
# A398225: Numbers that are neither 5-free nor 5-full.

The programs for A398225, there is no canonical definition to state claims against.
-/

/-! ## A398225.P16078803209705573372

`∩[A122616(n+1), A382879(n+1)]`
-/

namespace A398225.P16078803209705573372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398225.P16078803209705573372

/-! ## A398225.P1908846542456676237

`∩[A177880(n+1), A382879(n+1)]`
-/

namespace A398225.P1908846542456676237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398225.P1908846542456676237

/-! ## A398225.P4983668016831545070

`∩[A382879(n+1), A174312(n)]`
-/

namespace A398225.P4983668016831545070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174312 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398225.P4983668016831545070

/-! ## A398225.P11345964302232037907

`∩[A334801(n+1), A174312(n)]`
-/

namespace A398225.P11345964302232037907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174312 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398225.P11345964302232037907

/-! ## A398225.P5068225286319196628

`∩[A363950(n+1), A174312(n)]`
-/

namespace A398225.P5068225286319196628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174312 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398225.P5068225286319196628

/-!
# A398227: Nonnegative numbers that are not the sum of two Lucas numbers.

The programs for A398227, there is no canonical definition to state claims against.
-/

/-! ## A398227.P13378134337598396870

`comp[A398228(n+1)]`
-/

namespace A398227.P13378134337598396870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A398227.P13378134337598396870

/-!
# A398228: Numbers that are the sum of two Lucas numbers.

The programs for A398228, there is no canonical definition to state claims against.
-/

/-! ## A398228.P4987900589666723797

`comp[A398227(n+1)]`
-/

namespace A398228.P4987900589666723797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A398228.P4987900589666723797

/-!
# A398230: a(n) is the total collision excess among unordered pairwise sums with repetition of the distinct trinomial coefficient values of order n.

The programs for A398230, there is no canonical definition to state claims against.
-/

/-! ## A398230.P6396205352182527119

`A398232(C(n, 2)+3)`
-/

namespace A398230.P6396205352182527119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398232 (Nat.choose n 2 + 3)

end

end A398230.P6396205352182527119

/-! ## A398230.P2311332496825762616

`A398232(A152949(n+1))`
-/

namespace A398230.P2311332496825762616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398232 (A152949 (n + 1)).toNat

end

end A398230.P2311332496825762616

/-! ## A398230.P14318586940891898678

`A398232(A016028(n+2))`
-/

namespace A398230.P14318586940891898678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398232 (A016028 (n + 2)).toNat

end

end A398230.P14318586940891898678

/-!
# A398231: a(n) is the number of distinct unordered pairwise sums with repetition of the distinct trinomial coefficient values of order n that have more than one representation.

The programs for A398231, there is no canonical definition to state claims against.
-/

/-! ## A398231.P9934655659791092858

`A398237(C(n, 2)+3)`
-/

namespace A398231.P9934655659791092858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398237 (Nat.choose n 2 + 3)

end

end A398231.P9934655659791092858

/-! ## A398231.P1771268913068362020

`A398237(A152949(n+1))`
-/

namespace A398231.P1771268913068362020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398237 (A152949 (n + 1)).toNat

end

end A398231.P1771268913068362020

/-! ## A398231.P7885034458557222327

`A398237(A016028(n+2))`
-/

namespace A398231.P7885034458557222327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398237 (A016028 (n + 2)).toNat

end

end A398231.P7885034458557222327

/-!
# A398232: Triangle read by rows: T(n, k) is the total collision excess among unordered pairwise sums with repetition of the distinct coefficient values in the expansion of (x_1 + ... + x_k)^n, 1 <= k <= n.

The programs for A398232, there is no canonical definition to state claims against.
-/

/-! ## A398232.P131191578649785886

`A398237(n+1)%A165767(n+1)`
-/

namespace A398232.P131191578649785886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A398237 (n + 1)) (A165767 (n + 1))

end

end A398232.P131191578649785886

/-! ## A398232.P14752108447840275775

`A398237(n+1)%A005728(A000330(n))`
-/

namespace A398232.P14752108447840275775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A398237 (n + 1)) (A005728 (A000330 n).toNat)

end

end A398232.P14752108447840275775

/-! ## A398232.P15410741740155830525

`A398237(n+1)+A154272(A005897(n+2))`
-/

namespace A398232.P15410741740155830525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398237 (n + 1) + A154272 (A005897 (n + 2)).toNat

end

end A398232.P15410741740155830525

/-! ## A398232.P11419356956801971287

`A398237(n+1)+A154272(A140672(2*(n+1)))`
-/

namespace A398232.P11419356956801971287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398237 (n + 1) + A154272 (A140672 (2 * (n + 1))).toNat

end

end A398232.P11419356956801971287

/-! ## A398232.P6521438554711353621

`A398237(n+1)+A010054(A031928(3*(n+1)))`
-/

namespace A398232.P6521438554711353621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398237 (n + 1) + A010054 (A031928 (3 * (n + 1))).toNat

end

end A398232.P6521438554711353621

/-!
# A398233: a(n) is the total collision excess among unordered pairwise sums with repetition of the distinct multinomial coefficient values of order n.

The programs for A398233, there is no canonical definition to state claims against.
-/

/-! ## A398233.P10764474468478448231

`A398232(C(n+1, 2)+n+1)`
-/

namespace A398233.P10764474468478448231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398232 (Nat.choose (n + 1) 2 + (n + 1))

end

end A398233.P10764474468478448231

/-! ## A398233.P1558434899959015770

`A398232(∑[1+n])`
-/

namespace A398233.P1558434899959015770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398232 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A398233.P1558434899959015770

/-! ## A398233.P3778829213090707583

`A398238(n+1)+A305892(A112839(n))`
-/

namespace A398233.P3778829213090707583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398238 (n + 1) + A305892 (A112839 n).toNat

end

end A398233.P3778829213090707583

/-!
# A398238: a(n) is the number of distinct unordered pairwise sums with repetition of the distinct multinomial coefficient values of order n having more than one representation.

The programs for A398238, there is no canonical definition to state claims against.
-/

/-! ## A398238.P13526038454190025167

`A398237(C(n+1, 2)+n+1)`
-/

namespace A398238.P13526038454190025167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398237 (Nat.choose (n + 1) 2 + (n + 1))

end

end A398238.P13526038454190025167

/-! ## A398238.P15317545887852217742

`A398237(∑[n+1])`
-/

namespace A398238.P15317545887852217742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398237 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A398238.P15317545887852217742

/-!
# A398241: Number of simple graphs on n unlabeled vertices with feedback vertex set number 1.

The programs for A398241, there is no canonical definition to state claims against.
-/

/-! ## A398241.P11724330482852992515

`∑{#}[n, A398243(#+1)*A005195(n+1-(#+1))]`
-/

namespace A398241.P11724330482852992515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A398243 (k + 1) * A005195 (n + 1 - (k + 1))

end

end A398241.P11724330482852992515

/-! ## A398241.P41850896670191305

`A398240(A133263(n))%A055415(n)`
-/

namespace A398241.P41850896670191305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A398240 (A133263 n).toNat) (A055415 n)

end

end A398241.P41850896670191305

/-! ## A398241.P17012622990673637535

`A057366(A394952(n))`
-/

namespace A398241.P17012622990673637535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057366 (A394952 n).toNat

end

end A398241.P17012622990673637535

/-! ## A398241.P1578117745863244489

`A171974(A144150(n)*A148493(n))`
-/

namespace A398241.P1578117745863244489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171974 (A144150 n * A148493 n).toNat

end

end A398241.P1578117745863244489

/-!
# A398243: Number of simple connected graphs on n unlabeled vertices with feedback vertex set number 1.

The programs for A398243, there is no canonical definition to state claims against.
-/

/-! ## A398243.P18352823215168374956

`A105518(A080643(n))`
-/

namespace A398243.P18352823215168374956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105518 (A080643 n).toNat

end

end A398243.P18352823215168374956

/-! ## A398243.P15929071560987757182

`A054404(A219261(n))`
-/

namespace A398243.P15929071560987757182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A219261 n).toNat

end

end A398243.P15929071560987757182

/-! ## A398243.P18377552735742886195

`A308028(A149421(n))`
-/

namespace A398243.P18377552735742886195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308028 (A149421 n).toNat

end

end A398243.P18377552735742886195

/-!
# A398244: Array read by antidiagonals: T(n,k) is the number of feedback vertex sets in the grid graph P_n X P_k.

The programs for A398244, there is no canonical definition to state claims against.
-/

/-! ## A398244.P5332762309983994666

`A354901(A255256(n))`
-/

namespace A398244.P5332762309983994666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354901 (A255256 n).toNat

end

end A398244.P5332762309983994666

/-! ## A398244.P9195477765313566227

`A366188(A328887(n))`
-/

namespace A398244.P9195477765313566227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366188 (A328887 n).toNat

end

end A398244.P9195477765313566227

/-! ## A398244.P14423457874980672579

`A107457(A049207(n))`
-/

namespace A398244.P14423457874980672579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107457 ((A049207 n).toNat + 18)

end

end A398244.P14423457874980672579

/-! ## A398244.P12070126614338007094

`A085516(A099594(n))`
-/

namespace A398244.P12070126614338007094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085516 (A099594 n).toNat

end

end A398244.P12070126614338007094

/-! ## A398244.P2712391421710958675

`A062821(A174410(n))`
-/

namespace A398244.P2712391421710958675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (A174410 n).toNat

end

end A398244.P2712391421710958675

/-!
# A398245: Number of feedback vertex sets in the n X n grid graph.

The programs for A398245, there is no canonical definition to state claims against.
-/

/-! ## A398245.P11030181162909771794

`A398244(∑[4*n])`
-/

namespace A398245.P11030181162909771794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398244 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A398245.P11030181162909771794

/-!
# A398246: Number of feedback vertex sets in the grid graph P_n X P_3.

The programs for A398246, the canonical program `A398246.P17760257700956056221` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398246 has offset 0).

The definition of A398246 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398246.P13014685200307124648

`ogf((1+x-2x^2+2x^3)/(1-7x-3x^2+9x^3-10x^4))`
-/

namespace A398246.P13014685200307124648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -2, 2] [1, -7, -3, 9, -10] n

end

end A398246.P13014685200307124648

namespace A398246

/-- `ogf((1+x-2x^2+2x^3)/(1-7x-3x^2+9x^3-10x^4))` -/
def P13014685200307124648.Spec : Prop :=
  ∀ n, P13014685200307124648.a n = A398246 n

end A398246

/-! ## A398246.P17760257700956056221

`7*a(n-1)+3*a(n-2)-9*a(n-3)+10*a(n-4)` with `a(0)=1, a(1)=8, a(2)=57, a(3)=416`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398246

/-- `7*a(n-1)+3*a(n-2)-9*a(n-3)+10*a(n-4)` -/
def P17760257700956056221.Spec : Prop :=
  ∀ n, P17760257700956056221.a n = A398246 n

theorem P17760257700956056221.correct : P17760257700956056221.Spec := by
  intro n
  simp only [A398246]

end A398246

/-! ## A398246.P13667297272050819115

`A398244(A167614(n+2))`
-/

namespace A398246.P13667297272050819115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398244 (A167614 (n + 2)).toNat

end

end A398246.P13667297272050819115

namespace A398246

/-- `A398244(A167614(n+2))` -/
def P13667297272050819115.Spec : Prop :=
  ∀ n, P13667297272050819115.a n = A398246 n

end A398246

/-! ## A398246.P6293062437636360446

`A398244(A000217(n+3)+n)`
-/

namespace A398246.P6293062437636360446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398244 (A000217 (n + 3) + (n : ℤ)).toNat

end

end A398246.P6293062437636360446

namespace A398246

/-- `A398244(A000217(n+3)+n)` -/
def P6293062437636360446.Spec : Prop :=
  ∀ n, P6293062437636360446.a n = A398246 n

end A398246

/-! ## A398246.P15474726613628297580

`A398244(lt[A059604(n+5), A111932(n+1)])`
-/

namespace A398246.P15474726613628297580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059604 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398244 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A398246.P15474726613628297580

namespace A398246

/-- `A398244(lt[A059604(n+5), A111932(n+1)])` -/
def P15474726613628297580.Spec : Prop :=
  ∀ n, P15474726613628297580.a n = A398246 n

end A398246

/-!
# A398247: Number of feedback vertex sets in the grid graph P_n X P_4.

The programs for A398247, the canonical program `A398247.P13795878478120909758` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398247 has offset 0).

The definition of A398247 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398247.P13795878478120909758

`ogf((1+3x-11x^2-x^3+14x^4-10x^5+2x^6-24x^7)/(1-13x-19x^2+90x^3-2x^4-94x^5+72x^6+8x^7+192x^8))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398247

/-- `ogf((1+3x-11x^2-x^3+14x^4-10x^5+2x^6-24x^7)/(1-13x-19x^2+90x^3-2x^4-94x^5+72x^6+8x^7+192x^8))` -/
def P13795878478120909758.Spec : Prop :=
  ∀ n, P13795878478120909758.a n = A398247 n

theorem P13795878478120909758.correct : P13795878478120909758.Spec := by
  intro n
  simp only [A398247]

end A398247

/-!
# A398257: Number of unlabeled digraphs with n nodes containing a global source and a global sink, self-loops allowed.

The programs for A398257, there is no canonical definition to state claims against.
-/

/-! ## A398257.P5584645732709103823

`∑[A039103(A364656(n))]+1`
-/

namespace A398257.P5584645732709103823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039103 (A364656 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A398257.P5584645732709103823

/-!
# A398259: a(1)=0; for n>=2, let s = digit sum of a(n-1); if s=a(m) for some m < n-1, let m be the greatest such index and set a(n)=n-1-m; otherwise set a(n) = 0.

The programs for A398259, there is no canonical definition to state claims against.
-/

/-! ## A398259.P8053790753166414447

`A171917(A048266(n+2))`
-/

namespace A398259.P8053790753166414447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171917 (A048266 (n + 2)).toNat

end

end A398259.P8053790753166414447

/-!
# A398262: Number of indecomposable closed walks of length 2n along the edges of the 4-cube (hypercube Q_4, the tesseract) based at a vertex.

The programs for A398262, the canonical program `A398262.P15848316115240564117` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398262 has offset 0).

The definition of A398262 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398262.P9000648228896108520

`ogf((1-12x-16x^2)/(1-16x+24x^2))`
-/

namespace A398262.P9000648228896108520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -12, -16] [1, -16, 24] n

end

end A398262.P9000648228896108520

namespace A398262

/-- `ogf((1-12x-16x^2)/(1-16x+24x^2))` -/
def P9000648228896108520.Spec : Prop :=
  ∀ n, P9000648228896108520.a n = A398262 n

end A398262

/-! ## A398262.P15848316115240564117

`16*a(n-1)-24*a(n-2)` with `a(0)=1, a(1)=4, a(2)=24`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398262

/-- `16*a(n-1)-24*a(n-2)` -/
def P15848316115240564117.Spec : Prop :=
  ∀ n, P15848316115240564117.a n = A398262 n

theorem P15848316115240564117.correct : P15848316115240564117.Spec := by
  intro n
  simp only [A398262]

end A398262

/-!
# A398264: Numbers divisible by the square but not the cube of their least prime factor.

The programs for A398264, there is no canonical definition to state claims against.
-/

/-! ## A398264.P17143932447249405318

`eq[2, val(A071364(n+1), 2)]+1`
-/

namespace A398264.P17143932447249405318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A071364 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A398264.P17143932447249405318

/-! ## A398264.P3932741442207104529

`eq[2, A067029(n+1)]+1`
-/

namespace A398264.P3932741442207104529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A398264.P3932741442207104529

/-! ## A398264.P3140656409653295477

`eq[2, A067029(A028310(n))]`
-/

namespace A398264.P3140656409653295477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A398264.P3140656409653295477

/-! ## A398264.P12956836028363182844

`eq[2, A067029(n^abs(A057428(n)))]`
-/

namespace A398264.P12956836028363182844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (SequenceMachineLib.roundAway ((n : ℚ) ^ (|A057428 n| : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A398264.P12956836028363182844

/-! ## A398264.P8105490729157939965

`∩[A240112(n+1), A385097(n+1)]`
-/

namespace A398264.P8105490729157939965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398264.P8105490729157939965

/-!
# A398268: Sum of fifth powers of A069268: a(n) = Sum_{k=1..n} gcd(k!, k*(k+1)/2)^5.

The programs for A398268, the canonical program `A398268.P17280064720214812827` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398268 has offset 1).

The definition of A398268 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398268.P17280064720214812827

`a(n-1)+A069268(n+1)^5` with `a(0)=1`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A398268

/-- `a(n-1)+A069268(n+1)^5` -/
def P17280064720214812827.Spec : Prop :=
  ∀ n, P17280064720214812827.a n = A398268 (n + 1)

theorem P17280064720214812827.correct : P17280064720214812827.Spec := by
  intro n
  simp only [A398268, Nat.add_sub_cancel]

end A398268

/-! ## A398268.P17352107926228262700

`∑[A069268(n+1)^5]`
-/

namespace A398268.P17352107926228262700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069268 (n + 1) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398268.P17352107926228262700

namespace A398268

/-- `∑[A069268(n+1)^5]` -/
def P17352107926228262700.Spec : Prop :=
  ∀ n, P17352107926228262700.a n = A398268 (n + 1)

end A398268

/-! ## A398268.P4975749469516936341

`∑[gcd((n+1)!, (n+1)*(n+2)/2)^5]`
-/

namespace A398268.P4975749469516936341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (n + 1) : ℤ) (SequenceMachineLib.roundAway (((n + 1) * (n + 2) : ℚ) / 2)) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398268.P4975749469516936341

namespace A398268

/-- `∑[gcd((n+1)!, (n+1)*(n+2)/2)^5]` -/
def P4975749469516936341.Spec : Prop :=
  ∀ n, (P4975749469516936341.a n : ℤ) = A398268 (n + 1)

end A398268

/-!
# A398269: Number of ways to partition the standard Roman numeral representation of n into a sequence of one or more substrings, each of which is itself the standard Roman numeral representation of a positive integer.

The programs for A398269, there is no canonical definition to state claims against.
-/

/-! ## A398269.P7148987726269609581

`2^(A006968(n+1)-1)`
-/

namespace A398269.P7148987726269609581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A006968 (n + 1) - 1 : ℤ)

end

end A398269.P7148987726269609581

/-! ## A398269.P1520072545831778758

`A011782(A006968(n+1))`
-/

namespace A398269.P1520072545831778758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A006968 (n + 1)).toNat

end

end A398269.P1520072545831778758

/-! ## A398269.P2682105442302217785

`A034008(A006968(n+1)+1)`
-/

namespace A398269.P2682105442302217785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A006968 (n + 1) + 1).toNat

end

end A398269.P2682105442302217785

/-! ## A398269.P2620630587864818069

`A000079(A006968(n+1)-1)`
-/

namespace A398269.P2620630587864818069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A006968 (n + 1) - 1).toNat

end

end A398269.P2620630587864818069

/-! ## A398269.P17314900140382487588

`A320487(A006968(n+1)-1)`
-/

namespace A398269.P17314900140382487588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320487 (A006968 (n + 1) - 1).toNat

end

end A398269.P17314900140382487588

/-! ## A398269.P16451703902733015227

`A000010(2^A006968(n+1))`
-/

namespace A398269.P16451703902733015227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A006968 (n + 1) : ℤ))).toNat

end

end A398269.P16451703902733015227

/-! ## A398269.P2298385049299911412

`A102363(C(A006968(n+1), 2))`
-/

namespace A398269.P2298385049299911412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (Nat.choose (A006968 (n + 1)).toNat 2)

end

end A398269.P2298385049299911412

/-! ## A398269.P12836337702232433055

`A000079(A006968(n+1))/A020639(2*(n+1))`
-/

namespace A398269.P12836337702232433055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (A006968 (n + 1)).toNat : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A398269.P12836337702232433055

/-! ## A398269.P5787025514969769647

`A003557(2^A006968(n+1))`
-/

namespace A398269.P5787025514969769647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A006968 (n + 1) : ℤ))).toNat

end

end A398269.P5787025514969769647

/-! ## A398269.P9299002032689088312

`A004001(2^A006968(n+1))`
-/

namespace A398269.P9299002032689088312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A006968 (n + 1) : ℤ))).toNat

end

end A398269.P9299002032689088312

/-! ## A398269.P4244839130680043801

`A038554(2^A006968(n+1))`
-/

namespace A398269.P4244839130680043801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A006968 (n + 1) : ℤ))).toNat

end

end A398269.P4244839130680043801

/-! ## A398269.P233544799281315854

`A269386(2^A006968(n+1))`
-/

namespace A398269.P233544799281315854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269386 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A006968 (n + 1) : ℤ))).toNat

end

end A398269.P233544799281315854

/-!
# A398270: Array read by antidiagonals: T(n,k) is the feedback vertex set number of the grid graph P_n X P_k.

The programs for A398270, there is no canonical definition to state claims against.
-/

/-! ## A398270.P1352460625471313176

`A003991(n+1)-A360920(n+1)`
-/

namespace A398270.P1352460625471313176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A360920 (n + 1)

end

end A398270.P1352460625471313176

/-! ## A398270.P876896513008932179

`A062153(A320500(n+1))`
-/

namespace A398270.P876896513008932179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (A320500 (n + 1)).toNat

end

end A398270.P876896513008932179

/-! ## A398270.P11282544975726947508

`A143996(n+1)%A058669(n)`
-/

namespace A398270.P11282544975726947508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143996 (n + 1)) (A058669 n)

end

end A398270.P11282544975726947508

/-! ## A398270.P1310544682078472924

`A265893(A230899(n+1))`
-/

namespace A398270.P1310544682078472924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265893 (A230899 (n + 1)).toNat

end

end A398270.P1310544682078472924

/-! ## A398270.P7774649192510388367

`A004218(A157179(n))`
-/

namespace A398270.P7774649192510388367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A157179 n).toNat

end

end A398270.P7774649192510388367

/-!
# A398271: Array read by antidiagonals: T(n,k) is the number of minimum feedback vertex sets in the grid graph P_n X P_k.

The programs for A398271, there is no canonical definition to state claims against.
-/

/-! ## A398271.P1043956478931356664

`A179942(A142459(n+1))`
-/

namespace A398271.P1043956478931356664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179942 (A142459 (n + 1)).toNat

end

end A398271.P1043956478931356664

/-!
# A398272: Number of minimum feedback vertex sets in the n X n grid graph.

The programs for A398272, there is no canonical definition to state claims against.
-/

/-! ## A398272.P3563624667348769124

`A398271((n+1)²+n²)`
-/

namespace A398272.P3563624667348769124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398271 ((n + 1) ^ 2 + n ^ 2)

end

end A398272.P3563624667348769124

/-!
# A398273: Number of minimum feedback vertex sets in the grid graph P_n X P_5.

The programs for A398273, there is no canonical definition to state claims against.
-/

/-! ## A398273.P4612695255479404563

`A398271(A374005(n+1))`
-/

namespace A398273.P4612695255479404563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398271 (A374005 (n + 1)).toNat

end

end A398273.P4612695255479404563

/-!
# A398275: Number of simple connected graphs on n unlabeled vertices with mutual-visibility number 3.

The programs for A398275, there is no canonical definition to state claims against.
-/

/-! ## A398275.P13199452590168919220

`A398274(A114830(n+2))`
-/

namespace A398275.P13199452590168919220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398274 (A114830 (n + 2)).toNat

end

end A398275.P13199452590168919220

/-!
# A398276: Number of total dominating sets in the 3 X n king graph.

The programs for A398276, the canonical program `A398276.P3464083411562283250` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398276 has offset 0).

The definition of A398276 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398276.P3464083411562283250

`ogf((1-3x+22x^2+10x^3-42x^4-6x^5+15x^6-5x^7)/(1-6x-7x^2-40x^3-20x^4+24x^5+5x^6-10x^7+5x^8))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398276

/-- `ogf((1-3x+22x^2+10x^3-42x^4-6x^5+15x^6-5x^7)/(1-6x-7x^2-40x^3-20x^4+24x^5+5x^6-10x^7+5x^8))` -/
def P3464083411562283250.Spec : Prop :=
  ∀ n, P3464083411562283250.a n = A398276 n

theorem P3464083411562283250.correct : P3464083411562283250.Spec := by
  intro n
  simp only [A398276]

end A398276

/-!
# A398277: Number of total dominating sets in the 4 X n king graph.

The programs for A398277, there is no canonical definition to state claims against.
-/

/-! ## A398277.P5195824849412036404

`A303114(∑[n+3])`
-/

namespace A398277.P5195824849412036404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303114 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A398277.P5195824849412036404

/-!
# A398278: Number of (non-null) induced trees in the grid graph P_3 X P_n.

The programs for A398278, the canonical program `A398278.P6652421888883078610` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398278 has offset 1).

The definition of A398278 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398278.P6652421888883078610

`ogf((6-9x-3x^2+26x^3-42x^4+14x^5)/(1-7x+15x^2-6x^3-31x^4+73x^5-75x^6+36x^7-6x^8))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398278

/-- `ogf((6-9x-3x^2+26x^3-42x^4+14x^5)/(1-7x+15x^2-6x^3-31x^4+73x^5-75x^6+36x^7-6x^8))` -/
def P6652421888883078610.Spec : Prop :=
  ∀ n, P6652421888883078610.a n = A398278 (n + 1)

theorem P6652421888883078610.correct : P6652421888883078610.Spec := by
  intro n
  simp only [A398278, Nat.add_sub_cancel]

end A398278

/-! ## A398278.P2277526372539732507

`A360202(A167614(n+1))`
-/

namespace A398278.P2277526372539732507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360202 (A167614 (n + 1)).toNat

end

end A398278.P2277526372539732507

namespace A398278

/-- `A360202(A167614(n+1))` -/
def P2277526372539732507.Spec : Prop :=
  ∀ n, P2277526372539732507.a n = A398278 (n + 1)

end A398278

/-! ## A398278.P8713493084810452682

`A360202(A373663(n+1))`
-/

namespace A398278.P8713493084810452682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360202 (A373663 (n + 1)).toNat

end

end A398278.P8713493084810452682

namespace A398278

/-- `A360202(A373663(n+1))` -/
def P8713493084810452682.Spec : Prop :=
  ∀ n, P8713493084810452682.a n = A398278 (n + 1)

end A398278

/-! ## A398278.P6230246231370397679

`A360202(A034856(n+2))`
-/

namespace A398278.P6230246231370397679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360202 (A034856 (n + 2)).toNat

end

end A398278.P6230246231370397679

namespace A398278

/-- `A360202(A034856(n+2))` -/
def P6230246231370397679.Spec : Prop :=
  ∀ n, P6230246231370397679.a n = A398278 (n + 1)

end A398278

/-! ## A398278.P7366081194328773688

`A360202(A000096(n+2)-1)`
-/

namespace A398278.P7366081194328773688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360202 (A000096 (n + 2) - 1).toNat

end

end A398278.P7366081194328773688

namespace A398278

/-- `A360202(A000096(n+2)-1)` -/
def P7366081194328773688.Spec : Prop :=
  ∀ n, P7366081194328773688.a n = A398278 (n + 1)

end A398278

/-!
# A398279: Number of (non-null) induced trees in the grid graph P_4 X P_n.

The programs for A398279, there is no canonical definition to state claims against.
-/

/-! ## A398279.P10403879388945602300

`A360202(A141214(n+1))`
-/

namespace A398279.P10403879388945602300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360202 (A141214 (n + 1)).toNat

end

end A398279.P10403879388945602300

/-! ## A398279.P12277928195730691992

`A360202(A374004(n+1))`
-/

namespace A398279.P12277928195730691992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360202 (A374004 (n + 1)).toNat

end

end A398279.P12277928195730691992

/-! ## A398279.P8136253263524520407

`A360202(eq[3, A193592(n)])`
-/

namespace A398279.P8136253263524520407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360202 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A398279.P8136253263524520407

/-! ## A398279.P18227635245861471571

`A360202(A000217(n+4)-n)`
-/

namespace A398279.P18227635245861471571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360202 (A000217 (n + 4) - (n : ℤ)).toNat

end

end A398279.P18227635245861471571

/-! ## A398279.P12322286618047090052

`A360202(A000096(n+2)+n+2)`
-/

namespace A398279.P12322286618047090052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360202 (A000096 (n + 2) + (n + 2 : ℤ)).toNat

end

end A398279.P12322286618047090052

/-!
# A398287: Number of satisfiable 3-SAT formulas with 4 variables and n clauses in the multiset clause model.

The programs for A398287, there is no canonical definition to state claims against.
-/

/-! ## A398287.P6730282503576895048

`A397492(A020752(n+1))`
-/

namespace A398287.P6730282503576895048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397492 (A020752 (n + 1)).toNat

end

end A398287.P6730282503576895048

/-! ## A398287.P11756910892079672920

`A397492(A055999(n)+10)`
-/

namespace A398287.P11756910892079672920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397492 (A055999 n + 10).toNat

end

end A398287.P11756910892079672920

/-!
# A398288: Number of unsatisfiable 3-SAT formulas with 5 variables and n clauses in the multiset clause model.

The programs for A398288, there is no canonical definition to state claims against.
-/

/-! ## A398288.P524613305987090300

`A396351(A004767(n+3)+A000217(n))`
-/

namespace A398288.P524613305987090300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396351 (A004767 (n + 3) + A000217 n).toNat

end

end A398288.P524613305987090300

/-!
# A398290: Diagonal of rational function 1/(1 - (1 + x*y*z)*(x + y) - z).

The programs for A398290, the canonical program `A398290.P3703426421171951846` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398290 has offset 0).

The definition of A398290 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398290.P3703426421171951846

`∑{#}[n, (3*#)!/#!^3*C(2*#, n-#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398290

/-- `∑{#}[n, (3*#)!/#!^3*C(2*#, n-#)]` -/
def P3703426421171951846.Spec : Prop :=
  ∀ n, P3703426421171951846.a n = (A398290 n : ℚ)

end A398290

/-!
# A398291: Diagonal of rational function 1/(1 - (1 + x*y*z)*(x*(1 + x*y*z) + y + z)).

The programs for A398291, the canonical program `A398291.P17716215388616559997` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398291 has offset 0).

The definition of A398291 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398291.P17716215388616559997

`∑{#}[n, (3*#)!/#!^3*C(4*#, n-#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398291

/-- `∑{#}[n, (3*#)!/#!^3*C(4*#, n-#)]` -/
def P17716215388616559997.Spec : Prop :=
  ∀ n, P17716215388616559997.a n = (A398291 n : ℚ)

end A398291

/-!
# A398292: Diagonal of rational function 1/(1 - (x + y + z + w + x^2*y*z*w)).

The programs for A398292, the canonical program `A398292.P15633669753371944107` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398292 has offset 0).

The definition of A398292 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398292.P15633669753371944107

`∑{#}[n, (4*#)!/#!^4*C(#, n-#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398292

/-- `∑{#}[n, (4*#)!/#!^4*C(#, n-#)]` -/
def P15633669753371944107.Spec : Prop :=
  ∀ n, P15633669753371944107.a n = (A398292 n : ℚ)

end A398292

/-!
# A398293: Diagonal of rational function 1/(1 - (1 + x*y*z*w)*(x + y) - z - w).

The programs for A398293, the canonical program `A398293.P16923908221111569380` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398293 has offset 0).

The definition of A398293 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398293.P16923908221111569380

`∑{#}[n, (4*#)!/#!^4*C(2*#, n-#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398293

/-- `∑{#}[n, (4*#)!/#!^4*C(2*#, n-#)]` -/
def P16923908221111569380.Spec : Prop :=
  ∀ n, P16923908221111569380.a n = (A398293 n : ℚ)

end A398293

/-!
# A398294: Diagonal of rational function 1/(1 - (1 + x*y*z*w)*(x + y + z) - w).

The programs for A398294, the canonical program `A398294.P4558506374742796449` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398294 has offset 0).

The definition of A398294 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398294.P4558506374742796449

`∑{#}[n, (4*#)!/#!^4*C(3*#, n-#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398294

/-- `∑{#}[n, (4*#)!/#!^4*C(3*#, n-#)]` -/
def P4558506374742796449.Spec : Prop :=
  ∀ n, P4558506374742796449.a n = (A398294 n : ℚ)

end A398294

/-!
# A398295: Diagonal of rational function 1/(1 - (1 + x*y*z*w)*(x + y + z + w)).

The programs for A398295, the canonical program `A398295.P2541942171557627485` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398295 has offset 0).

The definition of A398295 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398295.P2541942171557627485

`∑{#}[n, (4*#)!/#!^4*C(4*#, n-#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398295

/-- `∑{#}[n, (4*#)!/#!^4*C(4*#, n-#)]` -/
def P2541942171557627485.Spec : Prop :=
  ∀ n, P2541942171557627485.a n = (A398295 n : ℚ)

end A398295

/-!
# A398296: Diagonal of rational function 1/(1 - (1 + x*y*z*w)*(x*(1 + x*y*z*w) + y + z + w)).

The programs for A398296, the canonical program `A398296.P12921204731299856871` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398296 has offset 0).

The definition of A398296 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398296.P12921204731299856871

`∑{#}[n, (4*#)!/#!^4*C(5*#, n-#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398296

/-- `∑{#}[n, (4*#)!/#!^4*C(5*#, n-#)]` -/
def P12921204731299856871.Spec : Prop :=
  ∀ n, P12921204731299856871.a n = (A398296 n : ℚ)

end A398296

/-!
# A398299: Primes p such that there are at least two Fermat primes F_i <= 65537 such that p*(F_i - 1) + 1 is prime.

The programs for A398299, there is no canonical definition to state claims against.
-/

/-! ## A398299.P9779996571718757702

`A378703(A106131(n+1))`
-/

namespace A398299.P9779996571718757702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378703 (A106131 (n + 1)).toNat

end

end A398299.P9779996571718757702

