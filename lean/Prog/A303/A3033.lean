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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
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
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A303300: Irregular triangle read by rows: T(n,k) is the number of partitions of n into k consecutive parts that differ by two, including the partition n, and the first element of column k is in row k^2.

The programs for A303300, there is no canonical definition to state claims against.
-/

/-! ## A303300.P3758524063041897323

`round(atan(A330466(n+1)))`
-/

namespace A303300.P3758524063041897323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A330466 (n + 1) : ℝ))

end

end A303300.P3758524063041897323

/-! ## A303300.P4142557291734193511

`ceil(A330466(n+1)/A000009(n))`
-/

namespace A303300.P4142557291734193511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330466 (n + 1) : ℚ) / (A000009 n : ℚ)⌉

end

end A303300.P4142557291734193511

/-! ## A303300.P8574872274847739770

`ceil(A330466(n+1)/A000041(n))`
-/

namespace A303300.P8574872274847739770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330466 (n + 1) : ℚ) / (A000041 n : ℚ)⌉

end

end A303300.P8574872274847739770

/-! ## A303300.P6293708632526404406

`ceil(A330466(n+1)/A000064(n))`
-/

namespace A303300.P6293708632526404406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330466 (n + 1) : ℚ) / (A000064 n : ℚ)⌉

end

end A303300.P6293708632526404406

/-! ## A303300.P3942134984866463416

`ceil(A330466(n+1)/A000070(n))`
-/

namespace A303300.P3942134984866463416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330466 (n + 1) : ℚ) / (A000070 n : ℚ)⌉

end

end A303300.P3942134984866463416

/-! ## A303300.P18239206387025767002

`ceil(A330466(n+1)/A000115(n))`
-/

namespace A303300.P18239206387025767002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330466 (n + 1) : ℚ) / (A000115 n : ℚ)⌉

end

end A303300.P18239206387025767002

/-! ## A303300.P8234402020051135556

`ceil(A330466(n+1)/A000118(n))`
-/

namespace A303300.P8234402020051135556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330466 (n + 1) : ℚ) / (A000118 n : ℚ)⌉

end

end A303300.P8234402020051135556

/-! ## A303300.P11457688534984481099

`ceil(A330466(n+1)/A000124(n))`
-/

namespace A303300.P11457688534984481099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330466 (n + 1) : ℚ) / (A000124 n : ℚ)⌉

end

end A303300.P11457688534984481099

/-! ## A303300.P8105907868191161424

`ceil(A330466(n+1)/A001522(n))`
-/

namespace A303300.P8105907868191161424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330466 (n + 1) : ℚ) / (A001522 n : ℚ)⌉

end

end A303300.P8105907868191161424

/-! ## A303300.P15736909444198072289

`ceil(A330466(n+1)/A001844(n))`
-/

namespace A303300.P15736909444198072289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330466 (n + 1) : ℚ) / (A001844 n : ℚ)⌉

end

end A303300.P15736909444198072289

/-! ## A303300.P12365201577995843744

`ceil(A330466(n+1)/A002790(n))`
-/

namespace A303300.P12365201577995843744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330466 (n + 1) : ℚ) / (A002790 n : ℚ)⌉

end

end A303300.P12365201577995843744

/-! ## A303300.P8586363038237242709

`ceil(A330466(n+1)/A003485(n))`
-/

namespace A303300.P8586363038237242709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330466 (n + 1) : ℚ) / (A003485 n : ℚ)⌉

end

end A303300.P8586363038237242709

/-! ## A303300.P3123265285055897775

`ceil(A330466(n+1)/A004277(n))`
-/

namespace A303300.P3123265285055897775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330466 (n + 1) : ℚ) / (A004277 n : ℚ)⌉

end

end A303300.P3123265285055897775

/-! ## A303300.P1022286840153186625

`ceil(A330466(n+1)/A005408(n))`
-/

namespace A303300.P1022286840153186625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330466 (n + 1) : ℚ) / (A005408 n : ℚ)⌉

end

end A303300.P1022286840153186625

/-! ## A303300.P6433693690936973214

`ceil(A330466(n+1)/A007204(n))`
-/

namespace A303300.P6433693690936973214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330466 (n + 1) : ℚ) / (A007204 n : ℚ)⌉

end

end A303300.P6433693690936973214

/-! ## A303300.P17422761296167952054

`ceil(A330466(n+1)/A008264(n))`
-/

namespace A303300.P17422761296167952054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330466 (n + 1) : ℚ) / (A008264 n : ℚ)⌉

end

end A303300.P17422761296167952054

/-! ## A303300.P4006080213493198842

`ceil(A330466(n+1)/A008486(n))`
-/

namespace A303300.P4006080213493198842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330466 (n + 1) : ℚ) / (A008486 n : ℚ)⌉

end

end A303300.P4006080213493198842

/-! ## A303300.P669902226438405641

`ceil(A330466(n+1)/A000040(n+1))`
-/

namespace A303300.P669902226438405641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330466 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)⌉

end

end A303300.P669902226438405641

/-! ## A303300.P14959532240466417380

`ceil(A330466(n+1)/A000203(n+1))`
-/

namespace A303300.P14959532240466417380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330466 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ)⌉

end

end A303300.P14959532240466417380

/-! ## A303300.P3356756408786489132

`ceil(A330466(n+1)/A006530(n+1)²)`
-/

namespace A303300.P3356756408786489132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330466 (n + 1) : ℚ) / (A006530 (n + 1) ^ 2 : ℚ)⌉

end

end A303300.P3356756408786489132

/-!
# A303301: Square array T(n,k) read by antidiagonals upwards in which row n is obtained by taking the general formula for generalized n-gonal numbers: m*((n - 2)*m - n + 4)/2, where m = 0, +1, -1, +2, -2, +3, -3, ... and n >= 5. Here n >= 0.

The programs for A303301, there is no canonical definition to state claims against.
-/

/-! ## A303301.P9615204702990141444

`A179761(A007051(n))-A035195(n+4)`
-/

namespace A303301.P9615204702990141444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179761 (A007051 n).toNat - A035195 (n + 4)

end

end A303301.P9615204702990141444

/-! ## A303301.P5315362211740169724

`A198637(A098825(n)*A199898(n+1))`
-/

namespace A303301.P5315362211740169724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198637 (A098825 n * A199898 (n + 1)).toNat

end

end A303301.P5315362211740169724

/-! ## A303301.P11761862899916313944

`A123019(A143505(3*n+4))%A019538(n+1)`
-/

namespace A303301.P11761862899916313944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123019 (A143505 (3 * n + 4)).toNat) (A019538 (n + 1))

end

end A303301.P11761862899916313944

/-!
# A303302: a(n) = 34*n^2.

The programs for A303302, the canonical program `A303302.P13329260813835793330` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303302 has offset 0).

The definition of A303302 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `34*n²` (program `A303302.P13329260813835793330`, by `A303302.P13329260813835793330.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A303302.P13329260813835793330

`34*n²`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A303302

/-- `34*n²` -/
def P13329260813835793330.Spec : Prop :=
  ∀ n, (P13329260813835793330.a n : ℤ) = A303302 n

theorem P13329260813835793330.correct : P13329260813835793330.Spec := by
  intro n
  simp only [A303302]

end A303302

/-!
# A303303: Generalized 23-gonal (or icositrigonal) numbers: m*(21*m - 19)/2 with m = 0, +1, -1, +2, -2, +3, -3, ...

The programs for A303303, the canonical program `A303303.P4767622440286523130` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303303 has offset 0).

The definition of A303303 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A303303.P4767622440286523130

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=20, a(3)=23, a(4)=61`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A303303

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P4767622440286523130.Spec : Prop :=
  ∀ n, P4767622440286523130.a n = A303303 n

theorem P4767622440286523130.correct : P4767622440286523130.Spec := by
  intro n
  simp only [A303303]

end A303303

/-! ## A303303.P12650435119550610096

`∑[2*a(n-2)-a(n-4)]` with `a(0)=0, a(1)=1, a(2)=19, a(3)=3`
-/

namespace A303303.P12650435119550610096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 19, 3] fun n f1 =>
  2 * f1 (n - 2) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303303.P12650435119550610096

namespace A303303

/-- `∑[2*a(n-2)-a(n-4)]` -/
def P12650435119550610096.Spec : Prop :=
  ∀ n, P12650435119550610096.a n = A303303 n

end A303303

/-! ## A303303.P14991041027972047970

`∑[A317319(n)]`
-/

namespace A303303.P14991041027972047970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303303.P14991041027972047970

namespace A303303

/-- `∑[A317319(n)]` -/
def P14991041027972047970.Spec : Prop :=
  ∀ n, P14991041027972047970.a n = A303303 n

end A303303

/-! ## A303303.P12710926178167157947

`A195049(n)-a(n-1)` with `a(0)=0`
-/

namespace A303303.P12710926178167157947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A195049 n - a (n - 1)

end

end A303303.P12710926178167157947

namespace A303303

/-- `A195049(n)-a(n-1)` -/
def P12710926178167157947.Spec : Prop :=
  ∀ n, P12710926178167157947.a n = A303303 n

end A303303

/-! ## A303303.P12811153734410725064

`A303814(n)-∑[n-gcd(n, ∑[n])]`
-/

namespace A303303.P12811153734410725064
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303814 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303303.P12811153734410725064

namespace A303303

/-- `A303814(n)-∑[n-gcd(n, ∑[n])]` -/
def P12811153734410725064.Spec : Prop :=
  ∀ n, P12811153734410725064.a n = A303303 n

end A303303

/-! ## A303303.P9701963991045507583

`A303298(n)+A110660(n)`
-/

namespace A303303.P9701963991045507583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303298 n + A110660 n

end

end A303303.P9701963991045507583

namespace A303303

/-- `A303298(n)+A110660(n)` -/
def P9701963991045507583.Spec : Prop :=
  ∀ n, P9701963991045507583.a n = A303303 n

end A303303

/-! ## A303303.P8456997774740912138

`A303304(n)-A110660(n)`
-/

namespace A303303.P8456997774740912138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303304 n - A110660 n

end

end A303303.P8456997774740912138

namespace A303303

/-- `A303304(n)-A110660(n)` -/
def P8456997774740912138.Spec : Prop :=
  ∀ n, P8456997774740912138.a n = A303303 n

end A303303

/-! ## A303303.P2434306992815502001

`∑[A317318(n)+A142150(n)]`
-/

namespace A303303.P2434306992815502001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317318 n + A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303303.P2434306992815502001

namespace A303303

/-- `∑[A317318(n)+A142150(n)]` -/
def P2434306992815502001.Spec : Prop :=
  ∀ n, P2434306992815502001.a n = A303303 n

end A303303

/-! ## A303303.P15609108566161018144

`∑[A317320(n)-A142150(n)]`
-/

namespace A303303.P15609108566161018144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317320 n - A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303303.P15609108566161018144

namespace A303303

/-- `∑[A317320(n)-A142150(n)]` -/
def P15609108566161018144.Spec : Prop :=
  ∀ n, P15609108566161018144.a n = A303303 n

end A303303

/-! ## A303303.P10186346100456799361

`A303813(n)+2*A110660(n)`
-/

namespace A303303.P10186346100456799361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303813 n + 2 * A110660 n

end

end A303303.P10186346100456799361

namespace A303303

/-- `A303813(n)+2*A110660(n)` -/
def P10186346100456799361.Spec : Prop :=
  ∀ n, P10186346100456799361.a n = A303303 n

end A303303

/-! ## A303303.P4937163438680399907

`2*A195818(n)-A001318(n)`
-/

namespace A303303.P4937163438680399907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195818 n - A001318 n

end

end A303303.P4937163438680399907

namespace A303303

/-- `2*A195818(n)-A001318(n)` -/
def P4937163438680399907.Spec : Prop :=
  ∀ n, P4937163438680399907.a n = A303303 n

end A303303

/-! ## A303303.P12485923914673220025

`2*A277082(n)-A085787(n)`
-/

namespace A303303.P12485923914673220025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A277082 n - A085787 n

end

end A303303.P12485923914673220025

namespace A303303

/-- `2*A277082(n)-A085787(n)` -/
def P12485923914673220025.Spec : Prop :=
  ∀ n, P12485923914673220025.a n = A303303 n

end A303303

/-! ## A303303.P16156430397398756327

`A303299(n)+A110660(n)/2`
-/

namespace A303303.P16156430397398756327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303299 n : ℚ) + (A110660 n : ℚ) / 2

end

end A303303.P16156430397398756327

namespace A303303

/-- `A303299(n)+A110660(n)/2` -/
def P16156430397398756327.Spec : Prop :=
  ∀ n, P16156430397398756327.a n = (A303303 n : ℚ)

end A303303

/-! ## A303303.P9603964844008220898

`A316725(n)-2*A110660(n)`
-/

namespace A303303.P9603964844008220898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316725 n - 2 * A110660 n

end

end A303303.P9603964844008220898

namespace A303303

/-- `A316725(n)-2*A110660(n)` -/
def P9603964844008220898.Spec : Prop :=
  ∀ n, P9603964844008220898.a n = A303303 n

end A303303

/-! ## A303303.P8932267357119290906

`(A303304(n)+A303298(n))/2`
-/

namespace A303303.P8932267357119290906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303304 n + A303298 n : ℚ) / 2

end

end A303303.P8932267357119290906

namespace A303303

/-- `(A303304(n)+A303298(n))/2` -/
def P8932267357119290906.Spec : Prop :=
  ∀ n, P8932267357119290906.a n = (A303303 n : ℚ)

end A303303

/-! ## A303303.P7433039045015741553

`2*A303298(n)-A303813(n)`
-/

namespace A303303.P7433039045015741553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303298 n - A303813 n

end

end A303303.P7433039045015741553

namespace A303303

/-- `2*A303298(n)-A303813(n)` -/
def P7433039045015741553.Spec : Prop :=
  ∀ n, P7433039045015741553.a n = A303303 n

end A303303

/-! ## A303303.P9864825090736125676

`2*A303814(n)-A303304(n)`
-/

namespace A303303.P9864825090736125676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303814 n - A303304 n

end

end A303303.P9864825090736125676

namespace A303303

/-- `2*A303814(n)-A303304(n)` -/
def P9864825090736125676.Spec : Prop :=
  ∀ n, P9864825090736125676.a n = A303303 n

end A303303

/-! ## A303303.P1601650672550755275

`(A303814(n)+A303299(n))/2`
-/

namespace A303303.P1601650672550755275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303814 n + A303299 n : ℚ) / 2

end

end A303303.P1601650672550755275

namespace A303303

/-- `(A303814(n)+A303299(n))/2` -/
def P1601650672550755275.Spec : Prop :=
  ∀ n, P1601650672550755275.a n = (A303303 n : ℚ)

end A303303

/-! ## A303303.P5000945907627552794

`2*A303304(n)-A316725(n)`
-/

namespace A303303.P5000945907627552794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303304 n - A316725 n

end

end A303303.P5000945907627552794

namespace A303303

/-- `2*A303304(n)-A316725(n)` -/
def P5000945907627552794.Spec : Prop :=
  ∀ n, P5000945907627552794.a n = A303303 n

end A303303

/-! ## A303303.P14418627854272059911

`(A316725(n)+A303813(n))/2`
-/

namespace A303303.P14418627854272059911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316725 n + A303813 n : ℚ) / 2

end

end A303303.P14418627854272059911

namespace A303303

/-- `(A316725(n)+A303813(n))/2` -/
def P14418627854272059911.Spec : Prop :=
  ∀ n, P14418627854272059911.a n = (A303303 n : ℚ)

end A303303

/-!
# A303304: Generalized 25-gonal (or icosipentagonal) numbers: m*(23*m - 21)/2 with m = 0, +1, -1, +2, -2, +3, -3, ...

The programs for A303304, the canonical program `A303304.P13060594668490165912` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303304 has offset 0).

The definition of A303304 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A303304.P13060594668490165912

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=22, a(3)=25, a(4)=67`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A303304

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P13060594668490165912.Spec : Prop :=
  ∀ n, P13060594668490165912.a n = A303304 n

theorem P13060594668490165912.correct : P13060594668490165912.Spec := by
  intro n
  simp only [A303304]

end A303304

/-! ## A303304.P14167322307226634504

`∑[(2*n+19*n%or(1, n))/2]`
-/

namespace A303304.P14167322307226634504
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 19 * (n % Nat.lor 1 n) : ℕ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303304.P14167322307226634504

namespace A303304

/-- `∑[(2*n+19*n%or(1, n))/2]` -/
def P14167322307226634504.Spec : Prop :=
  ∀ n, P14167322307226634504.a n = (A303304 n : ℚ)

end A303304

/-! ## A303304.P12776434124118186550

`∑[A317321(n)]`
-/

namespace A303304.P12776434124118186550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303304.P12776434124118186550

namespace A303304

/-- `∑[A317321(n)]` -/
def P12776434124118186550.Spec : Prop :=
  ∀ n, P12776434124118186550.a n = A303304 n

end A303304

/-! ## A303304.P15664964475455657624

`A195058(n)-a(n-1)` with `a(0)=0`
-/

namespace A303304.P15664964475455657624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A195058 n - a (n - 1)

end

end A303304.P15664964475455657624

namespace A303304

/-- `A195058(n)-a(n-1)` -/
def P15664964475455657624.Spec : Prop :=
  ∀ n, P15664964475455657624.a n = A303304 n

end A303304

/-! ## A303304.P11139945945552087185

`A303814(n)+∑[n-gcd(n, ∑[n])]`
-/

namespace A303304.P11139945945552087185
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303814 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303304.P11139945945552087185

namespace A303304

/-- `A303814(n)+∑[n-gcd(n, ∑[n])]` -/
def P11139945945552087185.Spec : Prop :=
  ∀ n, P11139945945552087185.a n = A303304 n

end A303304

/-! ## A303304.P10111580553728322635

`A303303(n)+A110660(n)`
-/

namespace A303304.P10111580553728322635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303303 n + A110660 n

end

end A303304.P10111580553728322635

namespace A303304

/-- `A303303(n)+A110660(n)` -/
def P10111580553728322635.Spec : Prop :=
  ∀ n, P10111580553728322635.a n = A303304 n

end A303304

/-! ## A303304.P2677812154189768601

`A316725(n)-A110660(n)`
-/

namespace A303304.P2677812154189768601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316725 n - A110660 n

end

end A303304.P2677812154189768601

namespace A303304

/-- `A316725(n)-A110660(n)` -/
def P2677812154189768601.Spec : Prop :=
  ∀ n, P2677812154189768601.a n = A303304 n

end A303304

/-! ## A303304.P16154968038463404059

`∑[A317320(n)+A142150(n)]`
-/

namespace A303304.P16154968038463404059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317320 n + A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303304.P16154968038463404059

namespace A303304

/-- `∑[A317320(n)+A142150(n)]` -/
def P16154968038463404059.Spec : Prop :=
  ∀ n, P16154968038463404059.a n = A303304 n

end A303304

/-! ## A303304.P4671121609578997535

`∑[A317322(n)-A142150(n)]`
-/

namespace A303304.P4671121609578997535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317322 n - A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303304.P4671121609578997535

namespace A303304

/-- `∑[A317322(n)-A142150(n)]` -/
def P4671121609578997535.Spec : Prop :=
  ∀ n, P4671121609578997535.a n = A303304 n

end A303304

/-! ## A303304.P561628164059313445

`A303298(n)+2*A110660(n)`
-/

namespace A303304.P561628164059313445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303298 n + 2 * A110660 n

end

end A303304.P561628164059313445

namespace A303304

/-- `A303298(n)+2*A110660(n)` -/
def P561628164059313445.Spec : Prop :=
  ∀ n, P561628164059313445.a n = A303304 n

end A303304

/-! ## A303304.P12994454890048050375

`2*A277082(n)-A001318(n)`
-/

namespace A303304.P12994454890048050375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A277082 n - A001318 n

end

end A303304.P12994454890048050375

namespace A303304

/-- `2*A277082(n)-A001318(n)` -/
def P12994454890048050375.Spec : Prop :=
  ∀ n, P12994454890048050375.a n = A303304 n

end A303304

/-! ## A303304.P14379161687956034116

`A303814(n)+A110660(n)/2`
-/

namespace A303304.P14379161687956034116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303814 n : ℚ) + (A110660 n : ℚ) / 2

end

end A303304.P14379161687956034116

namespace A303304

/-- `A303814(n)+A110660(n)/2` -/
def P14379161687956034116.Spec : Prop :=
  ∀ n, P14379161687956034116.a n = (A303304 n : ℚ)

end A303304

/-! ## A303304.P4239550835399786938

`A303815(n)-2*A110660(n)`
-/

namespace A303304.P4239550835399786938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303815 n - 2 * A110660 n

end

end A303304.P4239550835399786938

namespace A303304

/-- `A303815(n)-2*A110660(n)` -/
def P4239550835399786938.Spec : Prop :=
  ∀ n, P4239550835399786938.a n = A303304 n

end A303304

/-! ## A303304.P12759227623602765690

`2*A303305(n)-A118277(n)`
-/

namespace A303304.P12759227623602765690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303305 n - A118277 n

end

end A303304.P12759227623602765690

namespace A303304

/-- `2*A303305(n)-A118277(n)` -/
def P12759227623602765690.Spec : Prop :=
  ∀ n, P12759227623602765690.a n = A303304 n

end A303304

/-! ## A303304.P7234423481107859238

`2*A195313(n)-A317301(n)`
-/

namespace A303304.P7234423481107859238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195313 n - A317301 n

end

end A303304.P7234423481107859238

namespace A303304

/-- `2*A195313(n)-A317301(n)` -/
def P7234423481107859238.Spec : Prop :=
  ∀ n, P7234423481107859238.a n = A303304 n

end A303304

/-! ## A303304.P18095979632200962181

`2*A303298(n)-A303305(n)`
-/

namespace A303304.P18095979632200962181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303298 n - A303305 n

end

end A303304.P18095979632200962181

namespace A303304

/-- `2*A303298(n)-A303305(n)` -/
def P18095979632200962181.Spec : Prop :=
  ∀ n, P18095979632200962181.a n = A303304 n

end A303304

/-! ## A303304.P10924659798043158624

`2*A303303(n)-A303298(n)`
-/

namespace A303304.P10924659798043158624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303303 n - A303298 n

end

end A303304.P10924659798043158624

namespace A303304

/-- `2*A303303(n)-A303298(n)` -/
def P10924659798043158624.Spec : Prop :=
  ∀ n, P10924659798043158624.a n = A303304 n

end A303304

/-! ## A303304.P12795392968045686695

`2*A303299(n)-A303813(n)`
-/

namespace A303304.P12795392968045686695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303299 n - A303813 n

end

end A303304.P12795392968045686695

namespace A303304

/-- `2*A303299(n)-A303813(n)` -/
def P12795392968045686695.Spec : Prop :=
  ∀ n, P12795392968045686695.a n = A303304 n

end A303304

/-! ## A303304.P13929383391007182622

`2*A303814(n)-A303303(n)`
-/

namespace A303304.P13929383391007182622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303814 n - A303303 n

end

end A303304.P13929383391007182622

namespace A303304

/-- `2*A303814(n)-A303303(n)` -/
def P13929383391007182622.Spec : Prop :=
  ∀ n, P13929383391007182622.a n = A303304 n

end A303304

/-! ## A303304.P2790077651690349777

`(A303815(n)+A303298(n))/2`
-/

namespace A303304.P2790077651690349777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303815 n + A303298 n : ℚ) / 2

end

end A303304.P2790077651690349777

namespace A303304

/-- `(A303815(n)+A303298(n))/2` -/
def P2790077651690349777.Spec : Prop :=
  ∀ n, P2790077651690349777.a n = (A303304 n : ℚ)

end A303304

/-!
# A303305: Generalized 17-gonal (or heptadecagonal) numbers: m*(15*m - 13)/2 with m = 0, +1, -1, +2, -2, +3, -3, ...

The programs for A303305, the canonical program `A303305.P15652256000223301674` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303305 has offset 0).

The definition of A303305 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A303305.P16590647013578353990

`(30*n*(n+1)+11*(2*n+1)*(-1)^n-11)/16`
-/

namespace A303305.P16590647013578353990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((30 * n * (n + 1) : ℤ) + (11 * (2 * n + 1) : ℤ) * (-1) ^ n - 11 : ℚ) / 16

end

end A303305.P16590647013578353990

namespace A303305

/-- `(30*n*(n+1)+11*(2*n+1)*(-1)^n-11)/16` -/
def P16590647013578353990.Spec : Prop :=
  ∀ n, P16590647013578353990.a n = (A303305 n : ℚ)

theorem P16590647013578353990.correct : P16590647013578353990.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A303305, Nat.add_sub_cancel, A303305.P16590647013578353990.a, A303305.P15652256000223301674.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A303305, Nat.add_sub_cancel, A303305.P16590647013578353990.a, A303305.P15652256000223301674.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A303305

/-! ## A303305.P15652256000223301674

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=14, a(3)=17, a(4)=43`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A303305

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P15652256000223301674.Spec : Prop :=
  ∀ n, P15652256000223301674.a n = A303305 n

theorem P15652256000223301674.correct : P15652256000223301674.Spec := by
  intro n
  simp only [A303305]

end A303305

/-! ## A303305.P7322220817185383653

`∑[abs(11*(gcd(n, ∑[n])-n)-n)]`
-/

namespace A303305.P7322220817185383653
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |11 * ((Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ) - (n : ℤ)) - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303305.P7322220817185383653

namespace A303305

/-- `∑[abs(11*(gcd(n, ∑[n])-n)-n)]` -/
def P7322220817185383653.Spec : Prop :=
  ∀ n, P7322220817185383653.a n = A303305 n

end A303305

/-! ## A303305.P15976045412094044473

`∑[A317313(n)]`
-/

namespace A303305.P15976045412094044473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303305.P15976045412094044473

namespace A303305

/-- `∑[A317313(n)]` -/
def P15976045412094044473.Spec : Prop :=
  ∀ n, P15976045412094044473.a n = A303305 n

end A303305

/-! ## A303305.P784175601814353895

`∑[(A317324(n)+n)/2]`
-/

namespace A303305.P784175601814353895
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317324 n + (n : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303305.P784175601814353895

namespace A303305

/-- `∑[(A317324(n)+n)/2]` -/
def P784175601814353895.Spec : Prop :=
  ∀ n, P784175601814353895.a n = (A303305 n : ℚ)

end A303305

/-! ## A303305.P15372708865960175572

`A195046(n)-a(n-1)` with `a(0)=0`
-/

namespace A303305.P15372708865960175572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A195046 n - a (n - 1)

end

end A303305.P15372708865960175572

namespace A303305

/-- `A195046(n)-a(n-1)` -/
def P15372708865960175572.Spec : Prop :=
  ∀ n, P15372708865960175572.a n = A303305 n

end A303305

/-! ## A303305.P16067508842627198413

`A277082(n)+A110660(n)`
-/

namespace A303305.P16067508842627198413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277082 n + A110660 n

end

end A303305.P16067508842627198413

namespace A303305

/-- `A277082(n)+A110660(n)` -/
def P16067508842627198413.Spec : Prop :=
  ∀ n, P16067508842627198413.a n = A303305 n

end A303305

/-! ## A303305.P4553543206050688193

`A303813(n)-A110660(n)`
-/

namespace A303305.P4553543206050688193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303813 n - A110660 n

end

end A303305.P4553543206050688193

namespace A303305

/-- `A303813(n)-A110660(n)` -/
def P4553543206050688193.Spec : Prop :=
  ∀ n, P4553543206050688193.a n = A303305 n

end A303305

/-! ## A303305.P11179107726429842806

`A273367(n)-A111711(n+1)`
-/

namespace A303305.P11179107726429842806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273367 n - A111711 (n + 1)

end

end A303305.P11179107726429842806

namespace A303305

/-- `A273367(n)-A111711(n+1)` -/
def P11179107726429842806.Spec : Prop :=
  ∀ n, P11179107726429842806.a n = A303305 n

end A303305

/-! ## A303305.P10040784338974050817

`A195313(n)+2*A110660(n)`
-/

namespace A303305.P10040784338974050817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195313 n + 2 * A110660 n

end

end A303305.P10040784338974050817

namespace A303305

/-- `A195313(n)+2*A110660(n)` -/
def P10040784338974050817.Spec : Prop :=
  ∀ n, P10040784338974050817.a n = A303305 n

end A303305

/-! ## A303305.P917332887814608892

`2*A195160(n)-A001318(n)`
-/

namespace A303305.P917332887814608892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195160 n - A001318 n

end

end A303305.P917332887814608892

namespace A303305

/-- `2*A195160(n)-A001318(n)` -/
def P917332887814608892.Spec : Prop :=
  ∀ n, P917332887814608892.a n = A303305 n

end A303305

/-! ## A303305.P7792522380122044622

`2*A195162(n)-A085787(n)`
-/

namespace A303305.P7792522380122044622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195162 n - A085787 n

end

end A303305.P7792522380122044622

namespace A303305

/-- `2*A195162(n)-A085787(n)` -/
def P7792522380122044622.Spec : Prop :=
  ∀ n, P7792522380122044622.a n = A303305 n

end A303305

/-! ## A303305.P806587510293505071

`A303298(n)-2*A110660(n)`
-/

namespace A303305.P806587510293505071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303298 n - 2 * A110660 n

end

end A303305.P806587510293505071

namespace A303305

/-- `A303298(n)-2*A110660(n)` -/
def P806587510293505071.Spec : Prop :=
  ∀ n, P806587510293505071.a n = A303305 n

end A303305

/-! ## A303305.P9203487039426512100

`2*A303298(n)-A303304(n)`
-/

namespace A303305.P9203487039426512100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303298 n - A303304 n

end

end A303305.P9203487039426512100

namespace A303305

/-- `2*A303298(n)-A303304(n)` -/
def P9203487039426512100.Spec : Prop :=
  ∀ n, P9203487039426512100.a n = A303305 n

end A303305

/-! ## A303305.P9895513328286683552

`2*A303813(n)-A303298(n)`
-/

namespace A303305.P9895513328286683552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303813 n - A303298 n

end

end A303305.P9895513328286683552

namespace A303305

/-- `2*A303813(n)-A303298(n)` -/
def P9895513328286683552.Spec : Prop :=
  ∀ n, P9895513328286683552.a n = A303305 n

end A303305

/-! ## A303305.P14288809395664812783

`2*A303303(n)-A303815(n)`
-/

namespace A303305.P14288809395664812783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303303 n - A303815 n

end

end A303305.P14288809395664812783

namespace A303305

/-- `2*A303303(n)-A303815(n)` -/
def P14288809395664812783.Spec : Prop :=
  ∀ n, P14288809395664812783.a n = A303305 n

end A303305

/-! ## A303305.P7756584625098311839

`2*A303299(n)-A316725(n)`
-/

namespace A303305.P7756584625098311839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303299 n - A316725 n

end

end A303305.P7756584625098311839

namespace A303305

/-- `2*A303299(n)-A316725(n)` -/
def P7756584625098311839.Spec : Prop :=
  ∀ n, P7756584625098311839.a n = A303305 n

end A303305

/-! ## A303305.P1411305013206758502

`∑[2*A195159(n)-A026741(n)]`
-/

namespace A303305.P1411305013206758502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195159 n - A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303305.P1411305013206758502

namespace A303305

/-- `∑[2*A195159(n)-A026741(n)]` -/
def P1411305013206758502.Spec : Prop :=
  ∀ n, P1411305013206758502.a n = A303305 n

end A303305

/-! ## A303305.P2534714208858610303

`∑[(A317319(n)+A195159(n))/2]`
-/

namespace A303305.P2534714208858610303
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317319 n + A195159 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303305.P2534714208858610303

namespace A303305

/-- `∑[(A317319(n)+A195159(n))/2]` -/
def P2534714208858610303.Spec : Prop :=
  ∀ n, P2534714208858610303.a n = (A303305 n : ℚ)

end A303305

/-! ## A303305.P802366415763396942

`∑[A026741(n)+A317314(n)-n]`
-/

namespace A303305.P802366415763396942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n + (A317314 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303305.P802366415763396942

namespace A303305

/-- `∑[A026741(n)+A317314(n)-n]` -/
def P802366415763396942.Spec : Prop :=
  ∀ n, P802366415763396942.a n = A303305 n

end A303305

/-!
# A303307: Expansion of Product_{n>=1} ((1 + (2*x)^n)/(1 - (2*x)^n))^(1/2).

The programs for A303307, there is no canonical definition to state claims against.
-/

/-! ## A303307.P3636128331065583025

`A100951(A000079(2*n+1))+A000079(n)`
-/

namespace A303307.P3636128331065583025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100951 (A000079 (2 * n + 1)).toNat + A000079 n

end

end A303307.P3636128331065583025

/-! ## A303307.P11631052751199375168

`A163823(A026765(n))`
-/

namespace A303307.P11631052751199375168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163823 (A026765 n).toNat

end

end A303307.P11631052751199375168

/-!
# A303308: Number of n X n 0..1 arrays with every element equal to 0, 1, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303308, there is no canonical definition to state claims against.
-/

/-! ## A303308.P10006159481527622985

`A303314((n+1)²+n²)`
-/

namespace A303308.P10006159481527622985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 ((n + 1) ^ 2 + n ^ 2)

end

end A303308.P10006159481527622985

/-! ## A303308.P10421894685319773054

`record[A003982(n)*A303314(n+1)]`
-/

namespace A303308.P10421894685319773054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A303314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303308.P10421894685319773054

/-! ## A303308.P8912663600187116445

`A016288(n)*A303314(A001844(n))`
-/

namespace A303308.P8912663600187116445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016288 n * A303314 (A001844 n).toNat

end

end A303308.P8912663600187116445

/-! ## A303308.P12191610485352136045

`A303314(A001844(n))^A178334(n)`
-/

namespace A303308.P12191610485352136045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303314 (A001844 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A303308.P12191610485352136045

/-! ## A303308.P12631238403267808017

`gcd(A151810(n), A303314(A001844(n)))`
-/

namespace A303308.P12631238403267808017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151810 n) (A303314 (A001844 n).toNat)

end

end A303308.P12631238403267808017

/-!
# A303309: Number of nX3 0..1 arrays with every element equal to 0, 1, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303309, the canonical program `A303309.P15635005058740074719` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303309 has offset 1).

The definition of A303309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303309.P15635005058740074719

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=3, a(1)=3, a(2)=12, a(3)=11, a(4)=19, a(5)=34, a(6)=53`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A303309

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P15635005058740074719.Spec : Prop :=
  ∀ n, (P15635005058740074719.a n : ℤ) = A303309 (n + 1)

theorem P15635005058740074719.correct : P15635005058740074719.Spec := by
  intro n
  simp only [A303309, Nat.add_sub_cancel]

end A303309

/-! ## A303309.P6383038632101413666

`A303314(∑[n+3]+1)`
-/

namespace A303309.P6383038632101413666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303309.P6383038632101413666

namespace A303309

/-- `A303314(∑[n+3]+1)` -/
def P6383038632101413666.Spec : Prop :=
  ∀ n, P6383038632101413666.a n = A303309 (n + 1)

end A303309

/-! ## A303309.P14952666300099445110

`A303314(A034856(n+2))%A303311(n+1)`
-/

namespace A303309.P14952666300099445110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303314 (A034856 (n + 2)).toNat) (A303311 (n + 1))

end

end A303309.P14952666300099445110

namespace A303309

/-- `A303314(A034856(n+2))%A303311(n+1)` -/
def P14952666300099445110.Spec : Prop :=
  ∀ n, P14952666300099445110.a n = A303309 (n + 1)

end A303309

/-!
# A303310: Number of nX4 0..1 arrays with every element equal to 0, 1, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303310, there is no canonical definition to state claims against.
-/

/-! ## A303310.P12520041568752081719

`A303314(A141214(n+1))`
-/

namespace A303310.P12520041568752081719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (A141214 (n + 1)).toNat

end

end A303310.P12520041568752081719

/-! ## A303310.P8288316284872742690

`A303314(A027379(n+2))`
-/

namespace A303310.P8288316284872742690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (A027379 (n + 2)).toNat

end

end A303310.P8288316284872742690

/-! ## A303310.P545368236820939613

`A303314(A055998(n+2))`
-/

namespace A303310.P545368236820939613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (A055998 (n + 2)).toNat

end

end A303310.P545368236820939613

/-! ## A303310.P5884214453351121482

`A303314(A155212(n)+5)`
-/

namespace A303310.P5884214453351121482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (A155212 n + 5).toNat

end

end A303310.P5884214453351121482

/-! ## A303310.P6387574125535516313

`A303314(A056000(n)+7)`
-/

namespace A303310.P6387574125535516313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (A056000 n + 7).toNat

end

end A303310.P6387574125535516313

/-!
# A303311: Number of nX5 0..1 arrays with every element equal to 0, 1, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303311, there is no canonical definition to state claims against.
-/

/-! ## A303311.P13970904217384560089

`A303314(A046691(n+3))`
-/

namespace A303311.P13970904217384560089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (A046691 (n + 3)).toNat

end

end A303311.P13970904217384560089

/-! ## A303311.P278677266152472874

`A303314(Δ[A023545(n+1)])`
-/

namespace A303311.P278677266152472874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (f1 (n + 1) - f1 n).toNat

end

end A303311.P278677266152472874

/-! ## A303311.P11824274925829906888

`A303314(A052905(n+2)+1)`
-/

namespace A303311.P11824274925829906888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (A052905 (n + 2) + 1).toNat

end

end A303311.P11824274925829906888

/-! ## A303311.P16233626360186828364

`A303314(A000217(n+5)-4)`
-/

namespace A303311.P16233626360186828364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (A000217 (n + 5) - 4).toNat

end

end A303311.P16233626360186828364

/-! ## A303311.P5042766590212327927

`A303314(A000124(n+5)-5)`
-/

namespace A303311.P5042766590212327927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (A000124 (n + 5) - 5).toNat

end

end A303311.P5042766590212327927

/-!
# A303312: Number of nX6 0..1 arrays with every element equal to 0, 1, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303312, there is no canonical definition to state claims against.
-/

/-! ## A303312.P11800103728807010531

`A303314(A052905(n+3))`
-/

namespace A303312.P11800103728807010531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (A052905 (n + 3)).toNat

end

end A303312.P11800103728807010531

/-! ## A303312.P3042632740199568369

`A303314(A000217(n+6)-5)`
-/

namespace A303312.P3042632740199568369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (A000217 (n + 6) - 5).toNat

end

end A303312.P3042632740199568369

/-! ## A303312.P3385534441709181924

`A303314(A000124(n+6)-6)`
-/

namespace A303312.P3385534441709181924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (A000124 (n + 6) - 6).toNat

end

end A303312.P3385534441709181924

/-! ## A303312.P2633075404475964066

`A303314(A152949(n+8)-8)`
-/

namespace A303312.P2633075404475964066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (A152949 (n + 8) - 8).toNat

end

end A303312.P2633075404475964066

/-! ## A303312.P4305083736653238410

`A303314(Δ[Δ[A006504(n+1)]])`
-/

namespace A303312.P4305083736653238410
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (f1 (n + 1) - f1 n).toNat

end

end A303312.P4305083736653238410

/-!
# A303313: Number of nX7 0..1 arrays with every element equal to 0, 1, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303313, there is no canonical definition to state claims against.
-/

/-! ## A303313.P9794568640302684972

`A303314(A055999(n+4))`
-/

namespace A303313.P9794568640302684972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (A055999 (n + 4)).toNat

end

end A303313.P9794568640302684972

/-! ## A303313.P4255412945307637042

`A303314(A046691(n+5)-2)`
-/

namespace A303313.P4255412945307637042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (A046691 (n + 5) - 2).toNat

end

end A303313.P4255412945307637042

/-! ## A303313.P13687200551107690866

`A303314(A000217(n+7)-6)`
-/

namespace A303313.P13687200551107690866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (A000217 (n + 7) - 6).toNat

end

end A303313.P13687200551107690866

/-! ## A303313.P9748730049366220789

`A303314(A000124(n+7)-7)`
-/

namespace A303313.P9748730049366220789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (A000124 (n + 7) - 7).toNat

end

end A303313.P9748730049366220789

/-! ## A303313.P2413046882878769431

`A303314(A152949(n+8)+n-2)`
-/

namespace A303313.P2413046882878769431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (A152949 (n + 8) + ((n : ℤ) - 2)).toNat

end

end A303313.P2413046882878769431

/-!
# A303314: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303314, there is no canonical definition to state claims against.
-/

/-! ## A303314.P4097506555866863060

`A302515(n+1)+A186034(A022167(n))`
-/

namespace A303314.P4097506555866863060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (n + 1) + A186034 (A022167 n).toNat

end

end A303314.P4097506555866863060

/-! ## A303314.P16061746460654651912

`A302515(n+1)+A124763(A099594(n))`
-/

namespace A303314.P16061746460654651912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (n + 1) + A124763 (A099594 n).toNat

end

end A303314.P16061746460654651912

/-! ## A303314.P13469920924183780340

`A302515(n+1)+A228360(A174116(n))`
-/

namespace A303314.P13469920924183780340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (n + 1) + A228360 (A174116 n).toNat

end

end A303314.P13469920924183780340

/-! ## A303314.P6364521520841929224

`A302515(n+1)+A059841(A157156(n))`
-/

namespace A303314.P6364521520841929224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (n + 1) + A059841 (A157156 n).toNat

end

end A303314.P6364521520841929224

/-! ## A303314.P11928968071744440918

`A302515(n+1)+A014374(A318045(n+1))`
-/

namespace A303314.P11928968071744440918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (n + 1) + A014374 (A318045 (n + 1)).toNat

end

end A303314.P11928968071744440918

/-!
# A303315: Number of 3Xn 0..1 arrays with every element equal to 0, 1, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303315, the canonical program `A303315.P5717862236653799006` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303315 has offset 1).

The definition of A303315 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 309 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303315.P5717862236653799006

`a(n-1)+3*a(n-3)+4*a(n-4)` with `a(0)=4, a(1)=4, a(2)=12, a(3)=17, a(4)=24, a(5)=67, a(6)=158`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A303315

/-- `a(n-1)+3*a(n-3)+4*a(n-4)` -/
def P5717862236653799006.Spec : Prop :=
  ∀ n, (P5717862236653799006.a n : ℤ) = A303315 (n + 1)

theorem P5717862236653799006.correct : P5717862236653799006.Spec := by
  intro n
  simp only [A303315, Nat.add_sub_cancel]

end A303315

/-! ## A303315.P2064332905432792338

`A303314(∑[n+2]+4)`
-/

namespace A303315.P2064332905432792338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A303315.P2064332905432792338

namespace A303315

/-- `A303314(∑[n+2]+4)` -/
def P2064332905432792338.Spec : Prop :=
  ∀ n, P2064332905432792338.a n = A303315 (n + 1)

end A303315

/-! ## A303315.P7793611126480769392

`gcd(n, n+1)*A303314(A046691(n)+7)`
-/

namespace A303315.P7793611126480769392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A303314 (A046691 n + 7).toNat

end

end A303315.P7793611126480769392

namespace A303315

/-- `gcd(n, n+1)*A303314(A046691(n)+7)` -/
def P7793611126480769392.Spec : Prop :=
  ∀ n, P7793611126480769392.a n = A303315 (n + 1)

end A303315

/-! ## A303315.P3039527979122595264

`lcm(A057077(n), A303314(A167614(n+1)))`
-/

namespace A303315.P3039527979122595264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A303314 (A167614 (n + 1)).toNat)

end

end A303315.P3039527979122595264

namespace A303315

/-- `lcm(A057077(n), A303314(A167614(n+1)))` -/
def P3039527979122595264.Spec : Prop :=
  ∀ n, (P3039527979122595264.a n : ℤ) = A303315 (n + 1)

end A303315

/-! ## A303315.P11430989966941004545

`A303314(A167614(n+1))+A034512(n+1)`
-/

namespace A303315.P11430989966941004545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (A167614 (n + 1)).toNat + A034512 (n + 1)

end

end A303315.P11430989966941004545

namespace A303315

/-- `A303314(A167614(n+1))+A034512(n+1)` -/
def P11430989966941004545.Spec : Prop :=
  ∀ n, P11430989966941004545.a n = A303315 (n + 1)

end A303315

/-!
# A303316: Number of 4Xn 0..1 arrays with every element equal to 0, 1, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303316, there is no canonical definition to state claims against.
-/

/-! ## A303316.P5528977729671928269

`A303314(A141214(n)+7)`
-/

namespace A303316.P5528977729671928269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (A141214 n + 7).toNat

end

end A303316.P5528977729671928269

/-! ## A303316.P7952724346252828325

`A303314(A052905(n)+9)`
-/

namespace A303316.P7952724346252828325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (A052905 n + 9).toNat

end

end A303316.P7952724346252828325

/-! ## A303316.P9089184241076357561

`A303314(A055999(n)+10)`
-/

namespace A303316.P9089184241076357561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (A055999 n + 10).toNat

end

end A303316.P9089184241076357561

/-! ## A303316.P7581317176663386236

`A303314(A167614(n+2)+1)`
-/

namespace A303316.P7581317176663386236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (A167614 (n + 2) + 1).toNat

end

end A303316.P7581317176663386236

/-! ## A303316.P6759786844801954608

`A303314(A167487(n+2)-3)`
-/

namespace A303316.P6759786844801954608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (A167487 (n + 2) - 3).toNat

end

end A303316.P6759786844801954608

/-!
# A303317: Number of 5 X n 0..1 arrays with every element equal to 0, 1, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303317, there is no canonical definition to state claims against.
-/

/-! ## A303317.P12757774839381117577

`A303314(A167499(n+3))`
-/

namespace A303317.P12757774839381117577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (A167499 (n + 3)).toNat

end

end A303317.P12757774839381117577

/-! ## A303317.P12793437682019407743

`A303314(A000217(n+4)+5)`
-/

namespace A303317.P12793437682019407743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (A000217 (n + 4) + 5).toNat

end

end A303317.P12793437682019407743

/-! ## A303317.P3461996958141858915

`A303314(A055998(n+2)+8)`
-/

namespace A303317.P3461996958141858915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (A055998 (n + 2) + 8).toNat

end

end A303317.P3461996958141858915

/-! ## A303317.P12100967927932845870

`A303314(A034856(n+2)+n+11)`
-/

namespace A303317.P12100967927932845870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (A034856 (n + 2) + (n + 11 : ℤ)).toNat

end

end A303317.P12100967927932845870

/-! ## A303317.P11707829522375433591

`A303314(A038722(Δ[A023545(n+1)]))`
-/

namespace A303317.P11707829522375433591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A303317.P11707829522375433591

/-!
# A303318: Number of 6Xn 0..1 arrays with every element equal to 0, 1, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303318, there is no canonical definition to state claims against.
-/

/-! ## A303318.P6252136015142962582

`A303314(A167499(n+4)+1)`
-/

namespace A303318.P6252136015142962582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (A167499 (n + 4) + 1).toNat

end

end A303318.P6252136015142962582

/-! ## A303318.P16911155547538734838

`A303314(A133263(n+5)+4)`
-/

namespace A303318.P16911155547538734838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (A133263 (n + 5) + 4).toNat

end

end A303318.P16911155547538734838

/-! ## A303318.P5812412540405403772

`A303314(A000124(n+5)+5)`
-/

namespace A303318.P5812412540405403772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (A000124 (n + 5) + 5).toNat

end

end A303318.P5812412540405403772

/-! ## A303318.P14085972227528204864

`A303314(A000217(n+5)+6)`
-/

namespace A303318.P14085972227528204864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (A000217 (n + 5) + 6).toNat

end

end A303318.P14085972227528204864

/-! ## A303318.P1897480837072030536

`A303314(A052905(n+2)+11)`
-/

namespace A303318.P1897480837072030536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (A052905 (n + 2) + 11).toNat

end

end A303318.P1897480837072030536

/-!
# A303319: Number of 7Xn 0..1 arrays with every element equal to 0, 1, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303319, there is no canonical definition to state claims against.
-/

/-! ## A303319.P4288380613949236870

`A303314(A167487(n+5))`
-/

namespace A303319.P4288380613949236870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (A167487 (n + 5)).toNat

end

end A303319.P4288380613949236870

/-! ## A303319.P16325100472113397475

`A303314(A000096(n+5)+8)`
-/

namespace A303319.P16325100472113397475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (A000096 (n + 5) + 8).toNat

end

end A303319.P16325100472113397475

/-! ## A303319.P5229706755450875629

`A303314(A000217(n+6)+7)`
-/

namespace A303319.P5229706755450875629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (A000217 (n + 6) + 7).toNat

end

end A303319.P5229706755450875629

/-! ## A303319.P9001269506460555462

`A303314(A000124(n+7)-(n+1))`
-/

namespace A303319.P9001269506460555462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A303319.P9001269506460555462

/-! ## A303319.P9473355812750159118

`A303314(A046691(n+6)-A005843(n+2))`
-/

namespace A303319.P9473355812750159118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (A046691 (n + 6) - A005843 (n + 2)).toNat

end

end A303319.P9473355812750159118

/-!
# A303320: Number of n X n 0..1 arrays with every element equal to 0, 2, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303320, there is no canonical definition to state claims against.
-/

/-! ## A303320.P7646616064537150512

`A303325(∑[4*n]+1)`
-/

namespace A303320.P7646616064537150512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303325 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303320.P7646616064537150512

/-! ## A303320.P40877603447092980

`A303325(A001844(n))+char[11]`
-/

namespace A303320.P40877603447092980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303325 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303320.P40877603447092980

/-! ## A303320.P1269505537502625739

`xor(A025444(n), A303325(A001844(n)))`
-/

namespace A303320.P1269505537502625739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025444 n) (A303325 (A001844 n).toNat)

end

end A303320.P1269505537502625739

/-! ## A303320.P16680239890215524783

`A303325(A001844(n))%A251730(n+1)`
-/

namespace A303320.P16680239890215524783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303325 (A001844 n).toNat) (A251730 (n + 1))

end

end A303320.P16680239890215524783

/-! ## A303320.P5166232447342979973

`A007318(C(2, n))*A303325(A001844(n))`
-/

namespace A303320.P5166232447342979973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A303325 (A001844 n).toNat

end

end A303320.P5166232447342979973

/-!
# A303321: Number of nX4 0..1 arrays with every element equal to 0, 2, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303321, there is no canonical definition to state claims against.
-/

/-! ## A303321.P16110141461621750821

`A303325(∑[n+4]+3)`
-/

namespace A303321.P16110141461621750821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303325 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A303321.P16110141461621750821

/-!
# A303322: Number of nX5 0..1 arrays with every element equal to 0, 2, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303322, there is no canonical definition to state claims against.
-/

/-! ## A303322.P14402119299170323995

`A303325(∑[n+5]+6)`
-/

namespace A303322.P14402119299170323995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303325 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A303322.P14402119299170323995

/-! ## A303322.P10064371120848294757

`A303325(Δ[A023545(n+1)])+char[17]`
-/

namespace A303322.P10064371120848294757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303325 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303322.P10064371120848294757

/-! ## A303322.P2757473747169646540

`A326686(n)+A303325(Δ[A023545(n+1)])`
-/

namespace A303322.P2757473747169646540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326686 n + A303325 (f1 (n + 1) - f1 n).toNat

end

end A303322.P2757473747169646540

/-! ## A303322.P5515258027986573785

`A014963(6*(n+1))*A303325(Δ[A023545(n+1)])`
-/

namespace A303322.P5515258027986573785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A303325 (f1 (n + 1) - f1 n).toNat

end

end A303322.P5515258027986573785

/-! ## A303322.P12920732050228465985

`A000041(n²%(n+1))*A303325(Δ[A023545(n+1)])`
-/

namespace A303322.P12920732050228465985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n ^ 2 % (n + 1)) * A303325 (f1 (n + 1) - f1 n).toNat

end

end A303322.P12920732050228465985

/-!
# A303323: Number of nX6 0..1 arrays with every element equal to 0, 2, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303323, there is no canonical definition to state claims against.
-/

/-! ## A303323.P9198659199865090699

`A303325(A056119(n)+16)`
-/

namespace A303323.P9198659199865090699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303325 (A056119 n + 16).toNat

end

end A303323.P9198659199865090699

/-! ## A303323.P12063970619898651808

`A303325(eq[3, A219347(n)])`
-/

namespace A303323.P12063970619898651808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303323.P12063970619898651808

/-! ## A303323.P11381476457265300619

`A303325(eq[5, A193592(n)])`
-/

namespace A303323.P11381476457265300619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303323.P11381476457265300619

/-! ## A303323.P12342157051745864953

`A303325(eq[8, A258709(n)])`
-/

namespace A303323.P12342157051745864953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303323.P12342157051745864953

/-! ## A303323.P15933480612441580075

`A303325(eq[16, A166065(n)])`
-/

namespace A303323.P15933480612441580075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303323.P15933480612441580075

/-!
# A303324: Number of nX7 0..1 arrays with every element equal to 0, 2, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303324, there is no canonical definition to state claims against.
-/

/-! ## A303324.P9951287858370471357

`A303325(A055999(n+4))`
-/

namespace A303324.P9951287858370471357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303325 (A055999 (n + 4)).toNat

end

end A303324.P9951287858370471357

/-! ## A303324.P4537733227058637943

`A303325(A056121(n)+22)`
-/

namespace A303324.P4537733227058637943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303325 (A056121 n + 22).toNat

end

end A303324.P4537733227058637943

/-! ## A303324.P3440617982584115068

`A303325(eq[4, A219347(n)])`
-/

namespace A303324.P3440617982584115068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303324.P3440617982584115068

/-! ## A303324.P17078186425962115014

`A303325(eq[6, A193592(n)])`
-/

namespace A303324.P17078186425962115014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303324.P17078186425962115014

/-! ## A303324.P3652903659285329590

`A303325(Δ[A023551(n+2)])`
-/

namespace A303324.P3652903659285329590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303325 (f1 (n + 1) - f1 n).toNat

end

end A303324.P3652903659285329590

/-!
# A303325: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 2, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303325, there is no canonical definition to state claims against.
-/

/-! ## A303325.P14455081023942014498

`A120880(A002262(n)*A281217(n))`
-/

namespace A303325.P14455081023942014498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 (A002262 n * A281217 n).toNat

end

end A303325.P14455081023942014498

/-! ## A303325.P12904809004816364286

`A120880(lcm(A002262(n), A281217(n)))`
-/

namespace A303325.P12904809004816364286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 (Int.lcm (A002262 n) (A281217 n))

end

end A303325.P12904809004816364286

/-! ## A303325.P6214490681819861955

`A034444(C(A260443(n), A307431(n)))`
-/

namespace A303325.P6214490681819861955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (Nat.choose (A260443 n).toNat (A307431 n).toNat)

end

end A303325.P6214490681819861955

/-! ## A303325.P9123249005205853928

`A101412(A133643(n+1)^A126760(n))`
-/

namespace A303325.P9123249005205853928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101412 (SequenceMachineLib.roundAway ((A133643 (n + 1) : ℚ) ^ (A126760 n : ℤ))).toNat

end

end A303325.P9123249005205853928

/-! ## A303325.P2600281097122339408

`gcd(A124340(n+1), A269302(A068607(n)))`
-/

namespace A303325.P2600281097122339408
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124340 (n + 1)) (A269302 (A068607 n).toNat)

end

end A303325.P2600281097122339408

/-!
# A303326: Number of 4 X n 0..1 arrays with every element equal to 0, 2, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303326, there is no canonical definition to state claims against.
-/

/-! ## A303326.P3692806747225904452

`A303325(∑[n+3]+7)`
-/

namespace A303326.P3692806747225904452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303325 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A303326.P3692806747225904452

/-! ## A303326.P14188639166887416464

`lcm(2, A303325(A141214(n)+7))`
-/

namespace A303326.P14188639166887416464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A303325 (A141214 n + 7).toNat)

end

end A303326.P14188639166887416464

/-! ## A303326.P6060186464858715290

`A303325(A000217(n+3)+4)+char[24]`
-/

namespace A303326.P6060186464858715290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303325 (A000217 (n + 3) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303326.P6060186464858715290

/-! ## A303326.P5612222033769314910

`lcm(A001221(n+2), A303325(A000217(n+3)+4))`
-/

namespace A303326.P5612222033769314910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001221 (n + 2)) (A303325 (A000217 (n + 3) + 4).toNat)

end

end A303326.P5612222033769314910

/-! ## A303326.P5535902839243196699

`A007318(C(2, n+1))*A303325(A141214(n)+7)`
-/

namespace A303326.P5535902839243196699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 1)) * A303325 (A141214 n + 7).toNat

end

end A303326.P5535902839243196699

/-!
# A303327: Number of 5Xn 0..1 arrays with every element equal to 0, 2, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303327, there is no canonical definition to state claims against.
-/

/-! ## A303327.P1803971399380279946

`A303325(∑[n+4]+11)`
-/

namespace A303327.P1803971399380279946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303325 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A303327.P1803971399380279946

/-!
# A303328: Number of 6 X n 0..1 arrays with every element equal to 0, 2, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303328, there is no canonical definition to state claims against.
-/

/-! ## A303328.P11856321114215106940

`A303325((n+5)²-∑[n+4])`
-/

namespace A303328.P11856321114215106940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303325 ((n + 5) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A303328.P11856321114215106940

/-!
# A303329: Number of 7Xn 0..1 arrays with every element equal to 0, 2, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303329, there is no canonical definition to state claims against.
-/

/-! ## A303329.P14188926178651570070

`A303325(A167487(n+5))`
-/

namespace A303329.P14188926178651570070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303325 (A167487 (n + 5)).toNat

end

end A303329.P14188926178651570070

/-! ## A303329.P17130398207281396619

`A303325(eq[11, A066657(n)])`
-/

namespace A303329.P17130398207281396619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303329.P17130398207281396619

/-! ## A303329.P1942893492610221071

`A303325(A166136(n+5)+1)`
-/

namespace A303329.P1942893492610221071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303325 (A166136 (n + 5) + 1).toNat

end

end A303329.P1942893492610221071

/-! ## A303329.P10894170413737288321

`A303325(A167614(n+5)+4)`
-/

namespace A303329.P10894170413737288321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303325 (A167614 (n + 5) + 4).toNat

end

end A303329.P10894170413737288321

/-! ## A303329.P11666789483089874346

`A303325(A000124(n+6)+6)`
-/

namespace A303329.P11666789483089874346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303325 (A000124 (n + 6) + 6).toNat

end

end A303329.P11666789483089874346

/-!
# A303330: a(n) is the number of noncrossing path sets on 3*n nodes up to rotation and reflection with each path having exactly 3 nodes.

The programs for A303330, there is no canonical definition to state claims against.
-/

/-! ## A303330.P944706992350893516

`A302828(∑[n+3])`
-/

namespace A303330.P944706992350893516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302828 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A303330.P944706992350893516

/-! ## A303330.P9667750044872986264

`A302828(A141214(n))+A025466(n)`
-/

namespace A303330.P9667750044872986264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302828 (A141214 n).toNat + A025466 n

end

end A303330.P9667750044872986264

/-! ## A303330.P14455750382838644927

`A302828(A141214(n))/A304042(n)`
-/

namespace A303330.P14455750382838644927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302828 (A141214 n).toNat : ℚ) / (A304042 n : ℚ)

end

end A303330.P14455750382838644927

/-! ## A303330.P7661572614723556550

`A302828(A141214(n))^A178489(n)`
-/

namespace A303330.P7661572614723556550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302828 (A141214 n).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A303330.P7661572614723556550

/-! ## A303330.P1455365404882942989

`A302828(A141214(n))+A000038(3*(n+1))`
-/

namespace A303330.P1455365404882942989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302828 (A141214 n).toNat + A000038 (3 * (n + 1))

end

end A303330.P1455365404882942989

/-!
# A303333: a(n) = [x^n] (theta_3(x^(1/2))^n + theta_4(x^(1/2))^n)/2, where theta_3() and theta_4() are the Jacobi theta functions.

The programs for A303333, there is no canonical definition to state claims against.
-/

/-! ## A303333.P15321729345935591242

`A122141(A006137(n))`
-/

namespace A303333.P15321729345935591242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122141 (A006137 n).toNat

end

end A303333.P15321729345935591242

/-! ## A303333.P4332302415503624103

`A122141(A022267(n)+1)`
-/

namespace A303333.P4332302415503624103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122141 (A022267 n + 1).toNat

end

end A303333.P4332302415503624103

/-! ## A303333.P16356088687048173703

`A122141(A000124(3*n)-n)`
-/

namespace A303333.P16356088687048173703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122141 (A000124 (3 * n) - (n : ℤ)).toNat

end

end A303333.P16356088687048173703

/-! ## A303333.P2317404630600135280

`A286815(A062728(n))`
-/

namespace A303333.P2317404630600135280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (A062728 n).toNat

end

end A303333.P2317404630600135280

/-! ## A303333.P11066163406979984576

`A319574(A062725(n))`
-/

namespace A303333.P11066163406979984576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319574 (A062725 n).toNat

end

end A303333.P11066163406979984576

/-!
# A303336: Number of rectangles with semiprime area and dimensions p,q where n = p+q and p <= q.

The programs for A303336, there is no canonical definition to state claims against.
-/

/-! ## A303336.P14449104997851856528

`A061358(n+1)+char[A001358(n+1)]`
-/

namespace A303336.P14449104997851856528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A303336.P14449104997851856528

/-! ## A303336.P12171036141655276316

`A064911(A028310(n))+A061358(n+1)`
-/

namespace A303336.P12171036141655276316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A028310 n).toNat + A061358 (n + 1)

end

end A303336.P12171036141655276316

/-! ## A303336.P700123997073960058

`A110654(A073610(n+1))+A064911(A028310(n))`
-/

namespace A303336.P700123997073960058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A073610 (n + 1)).toNat + A064911 (A028310 n).toNat

end

end A303336.P700123997073960058

/-! ## A303336.P17590895706299680741

`A061358(n+1)+char[eq[2, A105700(n)]]`
-/

namespace A303336.P17590895706299680741
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303336.P17590895706299680741

/-! ## A303336.P15819772059474695811

`A064911(A233583(n+1))+A061358(n+1)`
-/

namespace A303336.P15819772059474695811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A233583 (n + 1)).toNat + A061358 (n + 1)

end

end A303336.P15819772059474695811

/-!
# A303337: Number of rectangles with semiprime area and dimensions (p) X (p+q) such that n = p+q, p < q.

The programs for A303337, the canonical program `A303337.P8262585349217065809` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303337 has offset 1).

The definition of A303337 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303337.P8262585349217065809

`A242096(A014973(n+1))+A064911(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A303337

/-- `A242096(A014973(n+1))+A064911(n+1)` -/
def P8262585349217065809.Spec : Prop :=
  ∀ n, P8262585349217065809.a n = A303337 (n + 1)

theorem P8262585349217065809.correct : P8262585349217065809.Spec := by
  intro n
  simp only [A303337, Nat.add_sub_cancel]

end A303337

/-! ## A303337.P2704641351494827533

`A242096(A061397(n+1))+A064911(n+1)`
-/

namespace A303337.P2704641351494827533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242096 (A061397 (n + 1)).toNat + A064911 (n + 1)

end

end A303337.P2704641351494827533

namespace A303337

/-- `A242096(A061397(n+1))+A064911(n+1)` -/
def P2704641351494827533.Spec : Prop :=
  ∀ n, P2704641351494827533.a n = A303337 (n + 1)

end A303337

/-! ## A303337.P3128011149838600142

`A242096(A089026(n+1))+A064911(n+1)`
-/

namespace A303337.P3128011149838600142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242096 (A089026 (n + 1)).toNat + A064911 (n + 1)

end

end A303337.P3128011149838600142

namespace A303337

/-- `A242096(A089026(n+1))+A064911(n+1)` -/
def P3128011149838600142.Spec : Prop :=
  ∀ n, P3128011149838600142.a n = A303337 (n + 1)

end A303337

/-! ## A303337.P3229967007766381150

`A064911(n+1)+A010051(n+1)*A056172(n+1)`
-/

namespace A303337.P3229967007766381150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1) + A010051 (n + 1) * A056172 (n + 1)

end

end A303337.P3229967007766381150

namespace A303337

/-- `A064911(n+1)+A010051(n+1)*A056172(n+1)` -/
def P3229967007766381150.Spec : Prop :=
  ∀ n, P3229967007766381150.a n = A303337 (n + 1)

end A303337

/-! ## A303337.P16940121164497036961

`A064911(n+1)+A056172(n+1)*A080339(n+1)`
-/

namespace A303337.P16940121164497036961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1) + A056172 (n + 1) * A080339 (n + 1)

end

end A303337.P16940121164497036961

namespace A303337

/-- `A064911(n+1)+A056172(n+1)*A080339(n+1)` -/
def P16940121164497036961.Spec : Prop :=
  ∀ n, P16940121164497036961.a n = A303337 (n + 1)

end A303337

/-! ## A303337.P5773644537369465906

`round(A056172(n+1)/A122282(A283464(n+1)))`
-/

namespace A303337.P5773644537369465906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A056172 (n + 1) : ℚ) / (A122282 (A283464 (n + 1)).toNat : ℚ))

end

end A303337.P5773644537369465906

namespace A303337

/-- `round(A056172(n+1)/A122282(A283464(n+1)))` -/
def P5773644537369465906.Spec : Prop :=
  ∀ n, P5773644537369465906.a n = A303337 (n + 1)

end A303337

/-!
# A303339: a(n) is the largest triangular number that is prime(n)-smooth.

The programs for A303339, there is no canonical definition to state claims against.
-/

/-! ## A303339.P5217211979302039358

`A000217(A002072(n+1))`
-/

namespace A303339.P5217211979302039358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002072 (n + 1)).toNat

end

end A303339.P5217211979302039358

/-! ## A303339.P3011031708242390250

`C(A117581(n+1), 2)`
-/

namespace A303339.P3011031708242390250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A117581 (n + 1)).toNat 2

end

end A303339.P3011031708242390250

/-! ## A303339.P2452317702501128219

`C(A138180(∑[A002071(n+1)])+1, 2)`
-/

namespace A303339.P2452317702501128219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002071 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A138180 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1).toNat 2

end

end A303339.P2452317702501128219

/-! ## A303339.P13375959176470184844

`A002072(n+1)/2*A117581(n+1)`
-/

namespace A303339.P13375959176470184844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002072 (n + 1) : ℚ) / 2 * (A117581 (n + 1) : ℚ)

end

end A303339.P13375959176470184844

/-! ## A303339.P11909666842912335185

`C(A002072(n+1)+A000027(n+1)-n, 2)`
-/

namespace A303339.P11909666842912335185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002072 (n + 1) + A000027 (n + 1) - (n : ℤ)).toNat 2

end

end A303339.P11909666842912335185

/-!
# A303340: Binary expansion of constant: B = Sum_{n>=1} (-1)^(n-1) / (2^n - 1)^n.

The programs for A303340, there is no canonical definition to state claims against.
-/

/-! ## A303340.P10512563362036008479

`A040053(A000041(A074989(n))*A141689(n+1))`
-/

namespace A303340.P10512563362036008479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040053 (A000041 (A074989 n).toNat * A141689 (n + 1)).toNat

end

end A303340.P10512563362036008479

/-! ## A303340.P10371996391659947004

`A005614(∑{d}[A320578(n+1)+1, lcm(2, #)/2])`
-/

namespace A303340.P10371996391659947004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320578 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n).natAbs, (Nat.lcm 2 d : ℚ) / 2)).toNat

end

end A303340.P10371996391659947004

/-! ## A303340.P15035041083623325192

`A200261(A398485(n))`
-/

namespace A303340.P15035041083623325192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200261 (A398485 n).toNat

end

end A303340.P15035041083623325192

/-! ## A303340.P16377534142181209788

`A108336(6*A098539(n))`
-/

namespace A303340.P16377534142181209788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108336 (6 * A098539 n).toNat

end

end A303340.P16377534142181209788

/-! ## A303340.P9889612627114300698

`A000196(abs(A122440(n)))%2`
-/

namespace A303340.P9889612627114300698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000196 |A122440 n|.toNat) 2

end

end A303340.P9889612627114300698

/-!
# A303341: G.f. A(x) satisfies: 1 = Sum_{n>=1} 1/(1 + (1-x)^n*A(x))^n.

The programs for A303341, there is no canonical definition to state claims against.
-/

/-! ## A303341.P13354214280335977552

`A243069((n+2)^n)-1`
-/

namespace A303341.P13354214280335977552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243069 ((n + 2) ^ n) - 1

end

end A303341.P13354214280335977552

/-!
# A303342: Expansion of Product_{k>=1} ((1 + (9*x)^k) / (1 - (9*x)^k))^(1/3).

The programs for A303342, there is no canonical definition to state claims against.
-/

/-! ## A303342.P1521152567098723664

`A062822(A000312(n)*A301672(n))`
-/

namespace A303342.P1521152567098723664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062822 (A000312 n * A301672 n).toNat

end

end A303342.P1521152567098723664

/-!
# A303344: Expansion of Product_{n>=1} ((1 + (n*x)^n)/(1 - (n*x)^n))^(1/n).

The programs for A303344, there is no canonical definition to state claims against.
-/

/-! ## A303344.P6613454388171792294

`record[A309635(A151570(n))]`
-/

namespace A303344.P6613454388171792294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309635 (A151570 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303344.P6613454388171792294

/-! ## A303344.P13893205075636092141

`A028310(2*A101220(n))`
-/

namespace A303344.P13893205075636092141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * A101220 n).toNat

end

end A303344.P13893205075636092141

/-!
# A303346: Expansion of Product_{n>=1} ((1 + 2*x^n)/(1 - 2*x^n))^(1/2).

The programs for A303346, there is no canonical definition to state claims against.
-/

/-! ## A303346.P11730194357108132664

`A104309(ceil(2^(n-1)))+gcd(n, ∑[n])`
-/

namespace A303346.P11730194357108132664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104309 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat + (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A303346.P11730194357108132664

/-! ## A303346.P1671754295890564879

`A161205(A001075(n))`
-/

namespace A303346.P1671754295890564879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (A001075 n).toNat

end

end A303346.P1671754295890564879

/-! ## A303346.P11097432954687174902

`A161205(A054109(n))`
-/

namespace A303346.P11097432954687174902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (A054109 n).toNat

end

end A303346.P11097432954687174902

/-! ## A303346.P17395964314083818344

`A005041(A148823(n+1))`
-/

namespace A303346.P17395964314083818344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A148823 (n + 1)).toNat

end

end A303346.P17395964314083818344

/-!
# A303348: Expansion of Product_{n>=1} (1 - 9*x^n)^(1/3).

The programs for A303348, there is no canonical definition to state claims against.
-/

/-! ## A303348.P11993958384542008412

`A001511(n+1)-A302538(A302525(n+1))`
-/

namespace A303348.P11993958384542008412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) - A302538 (A302525 (n + 1)).toNat

end

end A303348.P11993958384542008412

/-!
# A303349: Expansion of Product_{n>=1} 1/(1 - 9*x^n)^(1/3).

The programs for A303349, there is no canonical definition to state claims against.
-/

/-! ## A303349.P16012671918439720890

`filter[A024947(3*n+1), A022930(#)]`
-/

namespace A303349.P16012671918439720890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024947 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022930 (f1 j).toNat = 1) n)

end

end A303349.P16012671918439720890

/-!
# A303356: Unitary deficient-perfect numbers: unitary deficient numbers k such that 2*k-usigma(k) is a unitary divisor of k, where usigma is the sum of unitary divisors of k (A034448).

The programs for A303356, there is no canonical definition to state claims against.
-/

/-! ## A303356.P10004047074935668293

`A151552(A179540(n))*A179544(n+1)`
-/

namespace A303356.P10004047074935668293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151552 (A179540 n).toNat * A179544 (n + 1)

end

end A303356.P10004047074935668293

/-! ## A303356.P10038766094391467869

`lcm(A132223(A280378(n+1)), A267099(n+1))`
-/

namespace A303356.P10038766094391467869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A132223 (A280378 (n + 1)).toNat) (A267099 (n + 1))

end

end A303356.P10038766094391467869

/-!
# A303358: Bi-unitary deficient-perfect numbers: bi-unitary deficient numbers k for such that 2*k - bsigma(k) is a bi-unitary divisor of k, where bsigma(k) is the sum of bi-unitary divisors of k (A188999).

The programs for A303358, there is no canonical definition to state claims against.
-/

/-! ## A303358.P4086263667292036764

`A034444(A000088(n))*A110277(n+1)`
-/

namespace A303358.P4086263667292036764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A000088 n).toNat * A110277 (n + 1)

end

end A303358.P4086263667292036764

/-! ## A303358.P6900242990296074684

`record[gcd(A150378(n), A159328(n))]`
-/

namespace A303358.P6900242990296074684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A150378 n) (A159328 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303358.P6900242990296074684

/-! ## A303358.P1997204573636060807

`record[gcd(A221915(n), A318519(n+1))]`
-/

namespace A303358.P1997204573636060807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A221915 n) (A318519 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303358.P1997204573636060807

/-!
# A303359: Bi-unitary near-perfect numbers: bi-unitary abundant numbers k such that the abundance d = bsigma(k) - 2*k is a bi-unitary divisor of k, where bsigma(k) is the sum of bi-unitary divisors of k (A188999).

The programs for A303359, there is no canonical definition to state claims against.
-/

/-! ## A303359.P14957576617040400405

`∩[A334972(n+1), A349080(n+1)]`
-/

namespace A303359.P14957576617040400405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303359.P14957576617040400405

/-! ## A303359.P6083539862842119104

`∩[A325185(n+1), A160740(n)]`
-/

namespace A303359.P6083539862842119104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325185 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160740 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303359.P6083539862842119104

/-! ## A303359.P18414733794711553126

`∩[A325185(n+1), A160746(n)]`
-/

namespace A303359.P18414733794711553126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325185 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160746 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303359.P18414733794711553126

/-!
# A303360: Expansion of Product_{n>=1} ((1 + 4*x^n)/(1 - 4*x^n))^(1/4).

The programs for A303360, there is no canonical definition to state claims against.
-/

/-! ## A303360.P2666663297333596097

`∪[A303442(n+2), A303492(A303443(n))]`
-/

namespace A303360.P2666663297333596097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303442 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303492 (A303443 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A303360.P2666663297333596097

/-! ## A303360.P8239278440719323664

`A303442(A001096(n))`
-/

namespace A303360.P8239278440719323664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303442 (A001096 n).toNat

end

end A303360.P8239278440719323664

/-!
# A303361: Expansion of Product_{n>=1} ((1 + (4*x)^n)/(1 - (4*x)^n))^(1/4).

The programs for A303361, there is no canonical definition to state claims against.
-/

/-! ## A303361.P17921167321623973107

`A278084(A150779(n))`
-/

namespace A303361.P17921167321623973107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278084 (A150779 n).toNat

end

end A303361.P17921167321623973107

/-!
# A303362: Number of strict integer partitions of n with pairwise indivisible parts.

The programs for A303362, there is no canonical definition to state claims against.
-/

/-! ## A303362.P7016442039956508971

`∑{d}[n+1, A328678(#)]`
-/

namespace A303362.P7016442039956508971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328678 d

end

end A303362.P7016442039956508971

/-! ## A303362.P2379840531214223695

`A028310(∑{d}[1-(n-2*n), A328678(#)])`
-/

namespace A303362.P2379840531214223695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n : ℤ) - (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ d ∈ Nat.divisors (f1 n).natAbs, A328678 d).toNat

end

end A303362.P2379840531214223695

/-! ## A303362.P439097793940455311

`A305194(n+1)+A073490(A013613(n))`
-/

namespace A303362.P439097793940455311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305194 (n + 1) + A073490 (A013613 n).toNat

end

end A303362.P439097793940455311

/-! ## A303362.P14259670986432753332

`A305194(n+1)+A102683(A129062(n))`
-/

namespace A303362.P14259670986432753332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305194 (n + 1) + A102683 (A129062 n).toNat

end

end A303362.P14259670986432753332

/-! ## A303362.P3913592169085519270

`A305194(n+1)+A185284(A176388(n))`
-/

namespace A303362.P3913592169085519270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305194 (n + 1) + A185284 (A176388 n).toNat

end

end A303362.P3913592169085519270

/-!
# A303364: Number of strict integer partitions of n with pairwise indivisible and squarefree parts.

The programs for A303364, there is no canonical definition to state claims against.
-/

/-! ## A303364.P16833969522392672071

`Δ[A322526(n)%A152708(n+1)]`
-/

namespace A303364.P16833969522392672071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322526 n) (A152708 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A303364.P16833969522392672071

/-! ## A303364.P5204719077180640105

`A322530(A187829(n+1)%(2^n))`
-/

namespace A303364.P5204719077180640105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322530 (Int.tmod (A187829 (n + 1)) (2 ^ n : ℤ)).toNat

end

end A303364.P5204719077180640105

/-! ## A303364.P15094634743249259532

`A043561(A001970(n))-n%floor(sqrt(n+1))`
-/

namespace A303364.P15094634743249259532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043561 (A001970 n).toNat - ((n % Nat.sqrt (n + 1) : ℕ) : ℤ)

end

end A303364.P15094634743249259532

/-! ## A303364.P2704065524335387139

`A137735(n)-A011730((n+1)*Δ[n^3])`
-/

namespace A303364.P2704065524335387139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 n - A011730 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A303364.P2704065524335387139

/-! ## A303364.P1680167655431925069

`A322530(A187829(n+1)+A151666(3*n))`
-/

namespace A303364.P1680167655431925069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322530 (A187829 (n + 1) + A151666 (3 * n)).toNat

end

end A303364.P1680167655431925069

/-!
# A303365: Number of integer partitions of the n-th squarefree number using squarefree numbers.

The programs for A303365, there is no canonical definition to state claims against.
-/

/-! ## A303365.P17632087441763505280

`A073576(A005117(n+1))`
-/

namespace A303365.P17632087441763505280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073576 (A005117 (n + 1)).toNat

end

end A303365.P17632087441763505280

/-! ## A303365.P8016759311066671626

`A073576(record[∏{p}[n, #]])`
-/

namespace A303365.P8016759311066671626
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073576 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A303365.P8016759311066671626

/-! ## A303365.P568335994600594108

`A073576(record[A003967(n+1)])`
-/

namespace A303365.P568335994600594108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073576 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A303365.P568335994600594108

/-! ## A303365.P9300634072311967569

`A073576(record[A007913(n+1)])`
-/

namespace A303365.P9300634072311967569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073576 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A303365.P9300634072311967569

/-! ## A303365.P12220650582049597779

`A073576(record[A007947(n+1)])`
-/

namespace A303365.P12220650582049597779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073576 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A303365.P12220650582049597779

/-! ## A303365.P16656386484313222799

`A073576(record[A336965(n+1)])`
-/

namespace A303365.P16656386484313222799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073576 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A303365.P16656386484313222799

/-! ## A303365.P7523295974884652386

`record[A073576(n+1)/A000188(n+1)]`
-/

namespace A303365.P7523295974884652386
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073576 (n + 1) : ℚ) / (A000188 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303365.P7523295974884652386

/-! ## A303365.P9991350608226710722

`record[A073576(n+1)/A000189(n+1)]`
-/

namespace A303365.P9991350608226710722
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073576 (n + 1) : ℚ) / (A000189 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303365.P9991350608226710722

/-! ## A303365.P15723988023411022820

`A073576(record[(n+1)/A000688(n+1)])`
-/

namespace A303365.P15723988023411022820
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000688 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073576 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A303365.P15723988023411022820

/-! ## A303365.P11880886602668256993

`record[A073576(n+1)/A003557(n+1)]`
-/

namespace A303365.P11880886602668256993
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073576 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303365.P11880886602668256993

/-!
# A303366: Numbers equal to the determinant of a circulant matrix based on the base-6 digits of n.

The programs for A303366, there is no canonical definition to state claims against.
-/

/-! ## A303366.P13681620568087165420

`record[floor(tan(A115106(n)))]`
-/

namespace A303366.P13681620568087165420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (A115106 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303366.P13681620568087165420

/-! ## A303366.P2357625731258241464

`A100075(∑[(1-n)²])+n`
-/

namespace A303366.P2357625731258241464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100075 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A303366.P2357625731258241464

/-!
# A303368: Numbers equal to the determinant of a circulant matrix based on the base-8 digits of n.

The programs for A303368, there is no canonical definition to state claims against.
-/

/-! ## A303368.P10611488420645679370

`∑[A318833(∑[(5*a(n-1))!])]` with `a(0)=11, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=0`
-/

namespace A303368.P10611488420645679370
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [11, 0, 0, 0, 0, 0, 0] fun n f2 =>
  Nat.factorial (5 * f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318833 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303368.P10611488420645679370

/-! ## A303368.P7346168509285075211

`∑[A127792(A000579(n))]`
-/

namespace A303368.P7346168509285075211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127792 (A000579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303368.P7346168509285075211

/-! ## A303368.P15023631851464003512

`∑[A179743(A001629(n))]`
-/

namespace A303368.P15023631851464003512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179743 (A001629 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303368.P15023631851464003512

/-! ## A303368.P17845603867744546431

`∑[A218970(A000102(n))]`
-/

namespace A303368.P17845603867744546431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218970 (A000102 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303368.P17845603867744546431

/-! ## A303368.P6212971794805172209

`∑[A218970(Δ[A000055(n)])]`
-/

namespace A303368.P6212971794805172209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218970 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303368.P6212971794805172209

/-!
# A303369: Numbers equal to the determinant of a circulant matrix based on the base-9 digits of n.

The programs for A303369, there is no canonical definition to state claims against.
-/

/-! ## A303369.P9603276480004202600

`∑[A212256(Δ[A107070(n+1)])]`
-/

namespace A303369.P9603276480004202600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107070 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212256 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303369.P9603276480004202600

/-! ## A303369.P11571566555800518375

`∑[A073201(∑[A327869(2*(n+1))])]`
-/

namespace A303369.P11571566555800518375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327869 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073201 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303369.P11571566555800518375

/-! ## A303369.P3592262474293405101

`∩[A028430(n+1), A050723(n+1)]`
-/

namespace A303369.P3592262474293405101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303369.P3592262474293405101

/-! ## A303369.P5539115502047799166

`A108971(A375969(A342810(n+2)))`
-/

namespace A303369.P5539115502047799166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108971 (A375969 (A342810 (n + 2)).toNat).toNat

end

end A303369.P5539115502047799166

/-! ## A303369.P13467235033127921136

`A000005(C(n, 7)!)+n`
-/

namespace A303369.P13467235033127921136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.factorial (Nat.choose n 7)) + (n : ℤ)

end

end A303369.P13467235033127921136

/-!
# A303370: Least integer k such that (k+1)^k >= n.

The programs for A303370, the canonical program `A303370.P17831992265168558649` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303370 has offset 0).

The definition of A303370 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303370.P17831992265168558649

`∑[char[(n+1)^n+1]]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A303370

/-- `∑[char[(n+1)^n+1]]` -/
def P17831992265168558649.Spec : Prop :=
  ∀ n, (P17831992265168558649.a n : ℤ) = A303370 n

theorem P17831992265168558649.correct : P17831992265168558649.Spec := by
  intro n
  simp only [A303370]

end A303370

/-! ## A303370.P2817832641955511793

`A004184(∑[char[A124923(n+1)]])`
-/

namespace A303370.P2817832641955511793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124923 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A303370.P2817832641955511793

namespace A303370

/-- `A004184(∑[char[A124923(n+1)]])` -/
def P2817832641955511793.Spec : Prop :=
  ∀ n, P2817832641955511793.a n = A303370 n

end A303370

/-! ## A303370.P15251237745684300889

`A010877(∑[char[A124923(n+1)]])`
-/

namespace A303370.P15251237745684300889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124923 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A303370.P15251237745684300889

namespace A303370

/-- `A010877(∑[char[A124923(n+1)]])` -/
def P15251237745684300889.Spec : Prop :=
  ∀ n, P15251237745684300889.a n = A303370 n

end A303370

/-! ## A303370.P11373581278079652637

`A265359(∑[char[A124923(n+1)]])`
-/

namespace A303370.P11373581278079652637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124923 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265359 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A303370.P11373581278079652637

namespace A303370

/-- `A265359(∑[char[A124923(n+1)]])` -/
def P11373581278079652637.Spec : Prop :=
  ∀ n, P11373581278079652637.a n = A303370 n

end A303370

/-! ## A303370.P5071230527123962709

`A319726(∑[char[A124923(n+1)]])`
-/

namespace A303370.P5071230527123962709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124923 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319726 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A303370.P5071230527123962709

namespace A303370

/-- `A319726(∑[char[A124923(n+1)]])` -/
def P5071230527123962709.Spec : Prop :=
  ∀ n, P5071230527123962709.a n = A303370 n

end A303370

/-! ## A303370.P12560764830244300964

`A014963(15*(n+1))*∑[char[A124923(n+1)]]`
-/

namespace A303370.P12560764830244300964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124923 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (15 * (n + 1)) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A303370.P12560764830244300964

namespace A303370

/-- `A014963(15*(n+1))*∑[char[A124923(n+1)]]` -/
def P12560764830244300964.Spec : Prop :=
  ∀ n, P12560764830244300964.a n = A303370 n

end A303370

/-! ## A303370.P6285193844040506816

`A235224(A003003(n+3)-3)`
-/

namespace A303370.P6285193844040506816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (A003003 (n + 3) - 3).toNat

end

end A303370.P6285193844040506816

namespace A303370

/-- `A235224(A003003(n+3)-3)` -/
def P6285193844040506816.Spec : Prop :=
  ∀ n, P6285193844040506816.a n = A303370 n

end A303370

/-! ## A303370.P8549791905365333074

`A084558(∑[A118175(A171121(n+1))])`
-/

namespace A303370.P8549791905365333074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118175 (A171121 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A303370.P8549791905365333074

namespace A303370

/-- `A084558(∑[A118175(A171121(n+1))])` -/
def P8549791905365333074.Spec : Prop :=
  ∀ n, P8549791905365333074.a n = A303370 n

end A303370

/-! ## A303370.P15139293829941947633

`A001069(A005131(n)+A004905(n+1))`
-/

namespace A303370.P15139293829941947633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001069 (A005131 n + A004905 (n + 1)).toNat

end

end A303370.P15139293829941947633

namespace A303370

/-- `A001069(A005131(n)+A004905(n+1))` -/
def P15139293829941947633.Spec : Prop :=
  ∀ n, P15139293829941947633.a n = A303370 n

end A303370

/-! ## A303370.P17905227383601730136

`A098391(A241010(n+1))`
-/

namespace A303370.P17905227383601730136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098391 (A241010 (n + 1)).toNat

end

end A303370.P17905227383601730136

namespace A303370

/-- `A098391(A241010(n+1))` -/
def P17905227383601730136.Spec : Prop :=
  ∀ n, P17905227383601730136.a n = A303370 n

end A303370

/-!
# A303372: Numbers of the form a^2 + b^6, with integers a, b > 0.

The programs for A303372, there is no canonical definition to state claims against.
-/

/-! ## A303372.P7654664795869901725

`(n+1)²+1-A185284(∑[n])`
-/

namespace A303372.P7654664795869901725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + 1 : ℤ) - A185284 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A303372.P7654664795869901725

/-! ## A303372.P3357769189601209179

`record[A133128(n)-A185284(n)]`
-/

namespace A303372.P3357769189601209179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133128 n - A185284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303372.P3357769189601209179

/-!
# A303373: Numbers of the form a^3 + b^6, with integers a, b > 0.

The programs for A303373, there is no canonical definition to state claims against.
-/

/-! ## A303373.P3030410334054832186

`∩[A103254(n+1), A003325(A103254(n+1))]`
-/

namespace A303373.P3030410334054832186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (A103254 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303373.P3030410334054832186

/-!
# A303374: Numbers of the form a^4 + b^6, with integers a, b > 0.

The programs for A303374, there is no canonical definition to state claims against.
-/

/-! ## A303374.P6883283107820579353

`filter[A340045(n+1), A363712(#)]`
-/

namespace A303374.P6883283107820579353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A363712 (f1 j).toNat = 1) n)

end

end A303374.P6883283107820579353

/-! ## A303374.P10579243552740919718

`∩[A100291(n+1), A340045(n+1)]`
-/

namespace A303374.P10579243552740919718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303374.P10579243552740919718

/-!
# A303377: Numbers of the form a^7 + b^8, with integers a, b > 0.

The programs for A303377, there is no canonical definition to state claims against.
-/

/-! ## A303377.P15419523886656548422

`A003370(n+1)-A097516(n!)`
-/

namespace A303377.P15419523886656548422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003370 (n + 1) - A097516 (Nat.factorial n)

end

end A303377.P15419523886656548422

/-!
# A303378: Array read by antidiagonals: T(m,n) = total domination number of the m X n king graph.

The programs for A303378, there is no canonical definition to state claims against.
-/

/-! ## A303378.P16924349497402289285

`A051059(A244580(n+1)%A303335(∑[n+2]))`
-/

namespace A303378.P16924349497402289285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051059 (Int.tmod (A244580 (n + 1)) (A303335 (∑ j ∈ Finset.range (n + 1), f1 j))).toNat

end

end A303378.P16924349497402289285

/-! ## A303378.P14943533001707649131

`A051059(A244580(n+1))%A245100(2*n+3)`
-/

namespace A303378.P14943533001707649131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051059 (A244580 (n + 1)).toNat) (A245100 (2 * n + 3))

end

end A303378.P14943533001707649131

/-! ## A303378.P7500366461954742459

`A244580(A244580(A071562(A245100(A244580(n+1)))))`
-/

namespace A303378.P7500366461954742459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244580 (A244580 (A071562 (A245100 (A244580 (n + 1)).toNat).toNat).toNat).toNat

end

end A303378.P7500366461954742459

/-! ## A303378.P17075762028794085322

`A000224(A244580(n+1)%A213339(n+3))`
-/

namespace A303378.P17075762028794085322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000224 (Int.tmod (A244580 (n + 1)) (A213339 (n + 3))).toNat

end

end A303378.P17075762028794085322

/-! ## A303378.P10166677126239743812

`A051059(A051125(n+1)%A224522(n+1))`
-/

namespace A303378.P10166677126239743812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051059 (Int.tmod (A051125 (n + 1)) (A224522 (n + 1))).toNat

end

end A303378.P10166677126239743812

/-!
# A303381: Expansion of Product_{n>=1} ((1 + (8*x)^n)/(1 - (8*x)^n))^(1/8).

The programs for A303381, there is no canonical definition to state claims against.
-/

/-! ## A303381.P8687426583722419122

`A185048(A193965(n)+A036081(n))`
-/

namespace A303381.P8687426583722419122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 (A193965 n + A036081 n).toNat

end

end A303381.P8687426583722419122

/-!
# A303382: Expansion of Product_{n>=1} ((1 + 8*x^n)/(1 - 8*x^n))^(1/8).

The programs for A303382, there is no canonical definition to state claims against.
-/

/-! ## A303382.P8425846388319713111

`A303443(A001096(n))`
-/

namespace A303382.P8425846388319713111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303443 (A001096 n).toNat

end

end A303382.P8425846388319713111

/-! ## A303382.P2908526322931415557

`A001281(2*A303443(n))`
-/

namespace A303382.P2908526322931415557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (2 * A303443 n).toNat

end

end A303382.P2908526322931415557

/-!
# A303383: Total volume of all cubes with side length q such that n = p + q and p <= q.

The programs for A303383, the canonical program `A303383.P771961285447132481` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303383 has offset 1).

The definition of A303383 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303383.P2814574481439683246

`∑[n]²-∑[n-lcm(2, n)/2]²`
-/

namespace A303383.P2814574481439683246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (Nat.lcm 2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) - (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

end

end A303383.P2814574481439683246

namespace A303383

/-- `∑[n]²-∑[n-lcm(2, n)/2]²` -/
def P2814574481439683246.Spec : Prop :=
  ∀ n, P2814574481439683246.a n = (A303383 (n + 1) : ℚ)

end A303383

/-! ## A303383.P771961285447132481

`∑[A309335(n)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A303383

/-- `∑[A309335(n)]` -/
def P771961285447132481.Spec : Prop :=
  ∀ n, P771961285447132481.a n = A303383 (n + 1)

theorem P771961285447132481.correct : P771961285447132481.Spec := by
  intro n
  simp only [A303383, Nat.add_sub_cancel]

end A303383

/-! ## A303383.P3760093828358160777

`∑[n]²-∑[A142150(n)]²`
-/

namespace A303383.P3760093828358160777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

end

end A303383.P3760093828358160777

namespace A303383

/-- `∑[n]²-∑[A142150(n)]²` -/
def P3760093828358160777.Spec : Prop :=
  ∀ n, P3760093828358160777.a n = A303383 (n + 1)

end A303383

/-! ## A303383.P1226286302997236389

`∑[gcd(n, ∑[n])]*A085787(n)`
-/

namespace A303383.P1226286302997236389
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A085787 n

end

end A303383.P1226286302997236389

namespace A303383

/-- `∑[gcd(n, ∑[n])]*A085787(n)` -/
def P1226286302997236389.Spec : Prop :=
  ∀ n, P1226286302997236389.a n = A303383 (n + 1)

end A303383

/-! ## A303383.P2913298271947580240

`(A111711(n+1)-1)*C(floor(3*(n+1)/2), 2)/3`
-/

namespace A303383.P2913298271947580240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111711 (n + 1) - 1 : ℚ) * ((Nat.choose ⌊(3 * (n + 1) : ℚ) / 2⌋.toNat 2 : ℚ) / 3)

end

end A303383.P2913298271947580240

namespace A303383

/-- `(A111711(n+1)-1)*C(floor(3*(n+1)/2), 2)/3` -/
def P2913298271947580240.Spec : Prop :=
  ∀ n, P2913298271947580240.a n = (A303383 (n + 1) : ℚ)

end A303383

/-! ## A303383.P7455506545771595212

`A001318(n)*A085787(n)`
-/

namespace A303383.P7455506545771595212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n * A085787 n

end

end A303383.P7455506545771595212

namespace A303383

/-- `A001318(n)*A085787(n)` -/
def P7455506545771595212.Spec : Prop :=
  ∀ n, P7455506545771595212.a n = A303383 (n + 1)

end A303383

/-! ## A303383.P624970034304117240

`∑[A026741(n)]*A085787(n)`
-/

namespace A303383.P624970034304117240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A085787 n

end

end A303383.P624970034304117240

namespace A303383

/-- `∑[A026741(n)]*A085787(n)` -/
def P624970034304117240.Spec : Prop :=
  ∀ n, P624970034304117240.a n = A303383 (n + 1)

end A303383

/-! ## A303383.P11700759123449779417

`∑[A168077(n)*A195159(n)]`
-/

namespace A303383.P11700759123449779417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168077 n * A195159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303383.P11700759123449779417

namespace A303383

/-- `∑[A168077(n)*A195159(n)]` -/
def P11700759123449779417.Spec : Prop :=
  ∀ n, P11700759123449779417.a n = A303383 (n + 1)

end A303383

/-! ## A303383.P9138643888390634638

`∑[A309338(n)/A028310(n)]`
-/

namespace A303383.P9138643888390634638
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309338 n : ℚ) / (A028310 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303383.P9138643888390634638

namespace A303383

/-- `∑[A309338(n)/A028310(n)]` -/
def P9138643888390634638.Spec : Prop :=
  ∀ n, P9138643888390634638.a n = (A303383 (n + 1) : ℚ)

end A303383

/-! ## A303383.P7485656035384826254

`∪[A116149(n+1), A240137(n)]`
-/

namespace A303383.P7485656035384826254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240137 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A303383.P7485656035384826254

namespace A303383

/-- `∪[A116149(n+1), A240137(n)]` -/
def P7485656035384826254.Spec : Prop :=
  ∀ n, (P7485656035384826254.a n : ℤ) = A303383 (n + 1)

end A303383

/-! ## A303383.P15339532461905079202

`∑[A026741(n)²*A195159(n)]`
-/

namespace A303383.P15339532461905079202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n ^ 2 * A195159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303383.P15339532461905079202

namespace A303383

/-- `∑[A026741(n)²*A195159(n)]` -/
def P15339532461905079202.Spec : Prop :=
  ∀ n, P15339532461905079202.a n = A303383 (n + 1)

end A303383

/-! ## A303383.P2339301967812074251

`A000537(n)-A000537(floor(n/2))`
-/

namespace A303383.P2339301967812074251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n - A000537 ⌊(n : ℚ) / 2⌋.toNat

end

end A303383.P2339301967812074251

namespace A303383

/-- `A000537(n)-A000537(floor(n/2))` -/
def P2339301967812074251.Spec : Prop :=
  ∀ n, P2339301967812074251.a n = A303383 (n + 1)

end A303383

/-! ## A303383.P4621547186848157730

`(∑[n]-A000217(floor(n/2)))*A085787(n)`
-/

namespace A303383.P4621547186848157730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000217 ⌊(n : ℚ) / 2⌋.toNat) * A085787 n

end

end A303383.P4621547186848157730

namespace A303383

/-- `(∑[n]-A000217(floor(n/2)))*A085787(n)` -/
def P4621547186848157730.Spec : Prop :=
  ∀ n, P4621547186848157730.a n = A303383 (n + 1)

end A303383

/-! ## A303383.P4289904887386701380

`∑[A000578(n)-A000578(A142150(n))]`
-/

namespace A303383.P4289904887386701380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n - A000578 (A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303383.P4289904887386701380

namespace A303383

/-- `∑[A000578(n)-A000578(A142150(n))]` -/
def P4289904887386701380.Spec : Prop :=
  ∀ n, P4289904887386701380.a n = A303383 (n + 1)

end A303383

/-! ## A303383.P8563140614043996906

`(A163102(n)-A163102(A004526(n)))/2`
-/

namespace A303383.P8563140614043996906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163102 n - A163102 (A004526 n).toNat : ℚ) / 2

end

end A303383.P8563140614043996906

namespace A303383

/-- `(A163102(n)-A163102(A004526(n)))/2` -/
def P8563140614043996906.Spec : Prop :=
  ∀ n, P8563140614043996906.a n = (A303383 (n + 1) : ℚ)

end A303383

/-! ## A303383.P14132029185726642678

`(A110660(n)+A001318(n))*A001318(n)`
-/

namespace A303383.P14132029185726642678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A110660 n + A001318 n) * A001318 n

end

end A303383.P14132029185726642678

namespace A303383

/-- `(A110660(n)+A001318(n))*A001318(n)` -/
def P14132029185726642678.Spec : Prop :=
  ∀ n, P14132029185726642678.a n = A303383 (n + 1)

end A303383

/-! ## A303383.P8589634655280465498

`(A002378(n)-A001318(n))*A001318(n)`
-/

namespace A303383.P8589634655280465498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002378 n - A001318 n) * A001318 n

end

end A303383.P8589634655280465498

namespace A303383

/-- `(A002378(n)-A001318(n))*A001318(n)` -/
def P8589634655280465498.Spec : Prop :=
  ∀ n, P8589634655280465498.a n = A303383 (n + 1)

end A303383

/-! ## A303383.P17090782319092768642

`(A002378(n)-A085787(n))*A085787(n)`
-/

namespace A303383.P17090782319092768642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002378 n - A085787 n) * A085787 n

end

end A303383.P17090782319092768642

namespace A303383

/-- `(A002378(n)-A085787(n))*A085787(n)` -/
def P17090782319092768642.Spec : Prop :=
  ∀ n, P17090782319092768642.a n = A303383 (n + 1)

end A303383

/-! ## A303383.P3432152525163272812

`(A085787(n)-A110660(n))*A085787(n)`
-/

namespace A303383.P3432152525163272812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A085787 n - A110660 n) * A085787 n

end

end A303383.P3432152525163272812

namespace A303383

/-- `(A085787(n)-A110660(n))*A085787(n)` -/
def P3432152525163272812.Spec : Prop :=
  ∀ n, P3432152525163272812.a n = A303383 (n + 1)

end A303383

/-! ## A303383.P12264911815347551499

`A000217(n)²-A000217(A004526(n))²`
-/

namespace A303383.P12264911815347551499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n ^ 2 - A000217 (A004526 n).toNat ^ 2

end

end A303383.P12264911815347551499

namespace A303383

/-- `A000217(n)²-A000217(A004526(n))²` -/
def P12264911815347551499.Spec : Prop :=
  ∀ n, P12264911815347551499.a n = A303383 (n + 1)

end A303383

/-!
# A303384: Total area of all rectangles with dimensions s and t where s | t, n = s + t and s <= t.

The programs for A303384, the canonical program `A303384.P10676162683554511722` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303384 has offset 1).

The definition of A303384 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A064987, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A303384.P10676162683554511722

`A064987(n+1)-A001157(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A303384

/-- `A064987(n+1)-A001157(n+1)` -/
def P10676162683554511722.Spec : Prop :=
  ∀ n, P10676162683554511722.a n = A303384 (n + 1)

theorem P10676162683554511722.correct : P10676162683554511722.Spec := by
  intro n
  simp only [A303384, Nat.add_sub_cancel]

end A303384

/-! ## A303384.P8164544537282989353

`∑{d}[n+1, #*(n+1-#)]`
-/

namespace A303384.P8164544537282989353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * ((n + 1 : ℤ) - (d : ℤ))

end

end A303384.P8164544537282989353

namespace A303384

/-- `∑{d}[n+1, #*(n+1-#)]` -/
def P8164544537282989353.Spec : Prop :=
  ∀ n, P8164544537282989353.a n = A303384 (n + 1)

end A303384

/-! ## A303384.P6392668147811207715

`A334136(n+1)-A086666(n+1)`
-/

namespace A303384.P6392668147811207715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334136 (n + 1) - A086666 (n + 1)

end

end A303384.P6392668147811207715

namespace A303384

/-- `A334136(n+1)-A086666(n+1)` -/
def P6392668147811207715.Spec : Prop :=
  ∀ n, P6392668147811207715.a n = A303384 (n + 1)

end A303384

/-! ## A303384.P15825652088574801740

`A330866(n+1)-A189835(n+1)`
-/

namespace A303384.P15825652088574801740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330866 (n + 1) - A189835 (n + 1)

end

end A303384.P15825652088574801740

namespace A303384

/-- `A330866(n+1)-A189835(n+1)` -/
def P15825652088574801740.Spec : Prop :=
  ∀ n, P15825652088574801740.a n = A303384 (n + 1)

end A303384

/-! ## A303384.P17335249547704694623

`n*A000203(n+1)-A086666(n+1)`
-/

namespace A303384.P17335249547704694623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000203 (n + 1) - A086666 (n + 1)

end

end A303384.P17335249547704694623

namespace A303384

/-- `n*A000203(n+1)-A086666(n+1)` -/
def P17335249547704694623.Spec : Prop :=
  ∀ n, P17335249547704694623.a n = A303384 (n + 1)

end A303384

/-! ## A303384.P3070341064837497019

`(n+1)*A000203(n+1)-A001157(n+1)`
-/

namespace A303384.P3070341064837497019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000203 (n + 1) - A001157 (n + 1)

end

end A303384.P3070341064837497019

namespace A303384

/-- `(n+1)*A000203(n+1)-A001157(n+1)` -/
def P3070341064837497019.Spec : Prop :=
  ∀ n, P3070341064837497019.a n = A303384 (n + 1)

end A303384

/-! ## A303384.P5356953699959369729

`(n+1)*A001065(n+1)-A067558(n+1)`
-/

namespace A303384.P5356953699959369729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001065 (n + 1) - A067558 (n + 1)

end

end A303384.P5356953699959369729

namespace A303384

/-- `(n+1)*A001065(n+1)-A067558(n+1)` -/
def P5356953699959369729.Spec : Prop :=
  ∀ n, P5356953699959369729.a n = A303384 (n + 1)

end A303384

/-! ## A303384.P5391413475416676103

`A064987(n+1)-(A189835(n+1)+A038040(n+1))`
-/

namespace A303384.P5391413475416676103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064987 (n + 1) - (A189835 (n + 1) + A038040 (n + 1))

end

end A303384.P5391413475416676103

namespace A303384

/-- `A064987(n+1)-(A189835(n+1)+A038040(n+1))` -/
def P5391413475416676103.Spec : Prop :=
  ∀ n, P5391413475416676103.a n = A303384 (n + 1)

theorem P5391413475416676103.correct : P5391413475416676103.Spec := by
  intro n
  simp only [A303384, Nat.add_sub_cancel, A303384.P5391413475416676103.a, A303384.P10676162683554511722.a, A001157, A001157.P6892814788348726787.a, A038040, A038040.P16512896840577774730.a, A064987, A064987.P15308919020374608347.a, A189835, A189835.P10100538785749668856.a, A000005, A000005.P16091521709108585461.a, A009194, A009194.P8274270202395757303.a, A009242, A009242.P11355656019912241994.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A017665, A017665.P1720905539505039507.f1, A017665.P1720905539505039507.a, A017666, A017666.P11271370801176685649.f1, A017666.P11271370801176685649.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A037213, A037213.P7544062464691828526.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A303384

/-! ## A303384.P7714231314382559825

`A337329(n+1)-A245484(n+1)`
-/

namespace A303384.P7714231314382559825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337329 (n + 1) - A245484 (n + 1)

end

end A303384.P7714231314382559825

namespace A303384

/-- `A337329(n+1)-A245484(n+1)` -/
def P7714231314382559825.Spec : Prop :=
  ∀ n, P7714231314382559825.a n = A303384 (n + 1)

end A303384

/-!
# A303385: Total area of all rectangles with dimensions s and t such that s | t, n = s + t and s < t.

The programs for A303385, the canonical program `A303385.P7477845777958172115` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303385 has offset 1).

The definition of A303385 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303385.P3633758828323323518

`A303481(n+1)/(n+1)`
-/

namespace A303385.P3633758828323323518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303481 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A303385.P3633758828323323518

namespace A303385

/-- `A303481(n+1)/(n+1)` -/
def P3633758828323323518.Spec : Prop :=
  ∀ n, P3633758828323323518.a n = (A303385 (n + 1) : ℚ)

end A303385

/-! ## A303385.P7477845777958172115

`A303384(n+1)-∑[A001057(n)]²`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A303385

/-- `A303384(n+1)-∑[A001057(n)]²` -/
def P7477845777958172115.Spec : Prop :=
  ∀ n, P7477845777958172115.a n = A303385 (n + 1)

theorem P7477845777958172115.correct : P7477845777958172115.Spec := by
  intro n
  simp only [A303385, Nat.add_sub_cancel]

end A303385

/-! ## A303385.P6878970228690952038

`(A303479(n+1)+2*A303973(n+1))/(n+1)`
-/

namespace A303385.P6878970228690952038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303479 (n + 1) + 2 * A303973 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A303385.P6878970228690952038

namespace A303385

/-- `(A303479(n+1)+2*A303973(n+1))/(n+1)` -/
def P6878970228690952038.Spec : Prop :=
  ∀ n, P6878970228690952038.a n = (A303385 (n + 1) : ℚ)

theorem P6878970228690952038.correct : P6878970228690952038.Spec := by
  intro n
  simp only [A303385, Nat.add_sub_cancel, A303385.P6878970228690952038.a, A303385.P7477845777958172115.f1, A303385.P7477845777958172115.a, A001057, A001057.P5698194758103254717.a, A303384, A303384.P10676162683554511722.a, A303479, A303479.P8152554123791237719.a, A303973, A303973.P17946534861844191776.f1, A303973.P17946534861844191776.a, A001157, A001157.P6892814788348726787.a, A053191, A053191.P16359264019256189161.a, A064987, A064987.P15308919020374608347.a, A303481, A303481.P903145872744022410.a, A000010, A000010.P4673923239450215316.a, A009194, A009194.P8274270202395757303.a, A009242, A009242.P11355656019912241994.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A003557, A003557.P6364735403900941810.a, A017665, A017665.P1720905539505039507.f1, A017665.P1720905539505039507.a, A017666, A017666.P11271370801176685649.f1, A017666.P11271370801176685649.a, A037213, A037213.P7544062464691828526.a, A173557, A173557.P15666735857375843373.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A303385

/-! ## A303385.P1023651792680889063

`A303384(n+1)-A000290(∑[A001057(n)])`
-/

namespace A303385.P1023651792680889063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303384 (n + 1) - A000290 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A303385.P1023651792680889063

namespace A303385

/-- `A303384(n+1)-A000290(∑[A001057(n)])` -/
def P1023651792680889063.Spec : Prop :=
  ∀ n, P1023651792680889063.a n = A303385 (n + 1)

end A303385

/-! ## A303385.P2528238503350016953

`A303384(n+1)-A142150(n+1)²`
-/

namespace A303385.P2528238503350016953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303384 (n + 1) - A142150 (n + 1) ^ 2

end

end A303385.P2528238503350016953

namespace A303385

/-- `A303384(n+1)-A142150(n+1)²` -/
def P2528238503350016953.Spec : Prop :=
  ∀ n, P2528238503350016953.a n = A303385 (n + 1)

end A303385

/-!
# A303386: Number of aperiodic factorizations of n > 1.

The programs for A303386, there is no canonical definition to state claims against.
-/

/-! ## A303386.P10421011899123878128

`A001055(n+2)-A303553(n+2)`
-/

namespace A303386.P10421011899123878128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 2) - A303553 (n + 2)

end

end A303386.P10421011899123878128

/-! ## A303386.P1593711570276396733

`Δ[A096276(n+1)]-A303553(n+2)`
-/

namespace A303386.P1593711570276396733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A303553 (n + 2)

end

end A303386.P1593711570276396733

/-! ## A303386.P4225850781585422398

`A001055(n+2)+A045778(n+2)-A319269(n+2)`
-/

namespace A303386.P4225850781585422398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 2) + (A045778 (n + 2) - A319269 (n + 2))

end

end A303386.P4225850781585422398

/-! ## A303386.P1539452762160808977

`A269757(A342084(n+2)%A222345(2*n+1))`
-/

namespace A303386.P1539452762160808977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269757 (Int.tmod (A342084 (n + 2)) (A222345 (2 * n + 1))).toNat

end

end A303386.P1539452762160808977

/-! ## A303386.P10044328480291335732

`A008624(A334739((n+2)²))`
-/

namespace A303386.P10044328480291335732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A334739 ((n + 2) ^ 2)).toNat

end

end A303386.P10044328480291335732

/-!
# A303387: Expansion of Product_{k>=1} ((1 - 4*x^k)/(1 + 4*x^k))^(1/4).

The programs for A303387, there is no canonical definition to state claims against.
-/

/-! ## A303387.P16483628833423879893

`A303490(n)%p?[gcd(2, n)^(n+1)-1]`
-/

namespace A303387.P16483628833423879893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n ^ (n + 1) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303490 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A303387.P16483628833423879893

/-! ## A303387.P5830369275973317173

`A303490(A001096(n))`
-/

namespace A303387.P5830369275973317173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303490 (A001096 n).toNat

end

end A303387.P5830369275973317173

/-!
# A303389: Number of ways to write n as a*(a+1)/2 + b*(b+1)/2 + 5^c + 5^d, where a,b,c,d are nonnegative integers with a <= b and c <= d.

The programs for A303389, there is no canonical definition to state claims against.
-/

/-! ## A303389.P12053006887630337202

`∑{p}[A239242(n)+A077946(n), A001221(#)]`
-/

namespace A303389.P12053006887630337202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239242 n + A077946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 p

end

end A303389.P12053006887630337202

/-! ## A303389.P2312905371225805392

`A001221(xor(A049966(n+1), A305428(n+1)))`
-/

namespace A303389.P2312905371225805392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.xor (A049966 (n + 1)) (A305428 (n + 1))).toNat

end

end A303389.P2312905371225805392

/-! ## A303389.P2653543364247966883

`A001221(A086246(n)+A027167(n))`
-/

namespace A303389.P2653543364247966883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A086246 n + A027167 n).toNat

end

end A303389.P2653543364247966883

/-! ## A303389.P5927707575006537282

`A001221(xor(A001951(n), A287851(n)))`
-/

namespace A303389.P5927707575006537282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.xor (A001951 n) (A287851 n)).toNat

end

end A303389.P5927707575006537282

/-! ## A303389.P104576038561961050

`A001221(A217932(n+1)-A051263(n))`
-/

namespace A303389.P104576038561961050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A217932 (n + 1) - A051263 n).toNat

end

end A303389.P104576038561961050

/-!
# A303391: Expansion of Product_{k>=1} (1 + 4*x^k)/(1 - 4*x^k).

The programs for A303391, there is no canonical definition to state claims against.
-/

/-! ## A303391.P3034029791394607605

`A008574(A000302(n)-A026597(n))`
-/

namespace A303391.P3034029791394607605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A000302 n - A026597 n).toNat

end

end A303391.P3034029791394607605

/-! ## A303391.P5047299640200307782

`A008574(A011782(n+1)²-A026597(n))`
-/

namespace A303391.P5047299640200307782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A011782 (n + 1) ^ 2 - A026597 n).toNat

end

end A303391.P5047299640200307782

/-! ## A303391.P1056818973429315492

`A008574(A011782(2*n+1)-A026597(n))`
-/

namespace A303391.P1056818973429315492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A011782 (2 * n + 1) - A026597 n).toNat

end

end A303391.P1056818973429315492

/-!
# A303392: Expansion of Product_{k>=1} ((1 + 4*x^k) / (1 - 4*x^k))^(1/2).

The programs for A303392, there is no canonical definition to state claims against.
-/

/-! ## A303392.P2258766939790092816

`A014320(A000898(n)+n)`
-/

namespace A303392.P2258766939790092816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014320 (A000898 n + (n : ℤ)).toNat

end

end A303392.P2258766939790092816

/-! ## A303392.P3030837064563195306

`A000837(n)*A336735(∑[2^n])`
-/

namespace A303392.P3030837064563195306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 n * A336735 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A303392.P3030837064563195306

/-!
# A303394: Expansion of Product_{n>=1} ((1 - (4*x)^n)/(1 + (4*x)^n))^(1/4).

The programs for A303394, there is no canonical definition to state claims against.
-/

/-! ## A303394.P17387966245405144956

`or(A004984(n), A271675(A114040(n)))`
-/

namespace A303394.P17387966245405144956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004984 n) (A271675 (A114040 n).toNat)

end

end A303394.P17387966245405144956

/-!
# A303395: Expansion of Product_{n>=1} ((1 - (8*x)^n)/(1 + (8*x)^n))^(1/8).

The programs for A303395, there is no canonical definition to state claims against.
-/

/-! ## A303395.P3443096571278414075

`or(A002417(A002895(n)), A301271(n))`
-/

namespace A303395.P3443096571278414075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002417 (A002895 n).toNat) (A301271 n)

end

end A303395.P3443096571278414075

/-!
# A303396: Expansion of Product_{k>=1} ((1 - 8*x^k)/(1 + 8*x^k))^(1/8).

The programs for A303396, there is no canonical definition to state claims against.
-/

/-! ## A303396.P4469168183049925235

`A303491(n)%p?[gcd(2, n)^(n+1)-1]`
-/

namespace A303396.P4469168183049925235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n ^ (n + 1) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303491 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A303396.P4469168183049925235

/-! ## A303396.P5405275209121263287

`A303491(A001096(n))`
-/

namespace A303396.P5405275209121263287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303491 (A001096 n).toNat

end

end A303396.P5405275209121263287

/-!
# A303398: Expansion of Product_{k>=1} (1 - 3*x^k)/(1 + 3*x^k).

The programs for A303398, there is no canonical definition to state claims against.
-/

/-! ## A303398.P3667413608860553699

`xor(Δ[A052400(3*n+1)], A172332(n))`
-/

namespace A303398.P3667413608860553699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052400 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) (A172332 n)

end

end A303398.P3667413608860553699

/-!
# A303399: Number of ordered pairs (a, b) with 0 <= a <= b such that n - 5^a - 5^b can be written as the sum of two triangular numbers.

The programs for A303399, there is no canonical definition to state claims against.
-/

/-! ## A303399.P15064244441943084149

`A353849(A246392(n+1)%A317491(2*n))`
-/

namespace A303399.P15064244441943084149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353849 (Int.tmod (A246392 (n + 1)) (A317491 (2 * n))).toNat

end

end A303399.P15064244441943084149

