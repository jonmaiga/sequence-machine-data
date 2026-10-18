import SequenceMachineLib
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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
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
import Seq.Opaque.C025

/-!
# A007800: From a problem in AI planning: a(n) = 4+a(n-1)+a(n-2)+a(n-3)+a(n-4)-a(n-5)-a(n-6)-a(n-7), n>7.

The programs for A007800, the canonical program `A007800.P2941543183462430859` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007800 has offset 1).

The definition of A007800 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007800.P2941543183462430859

`3*a(n-1)-2*a(n-2)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007800

/-- `3*a(n-1)-2*a(n-2)-a(n-4)+a(n-5)` -/
def P2941543183462430859.Spec : Prop :=
  ∀ n, P2941543183462430859.a n = A007800 (n + 1)

theorem P2941543183462430859.correct : P2941543183462430859.Spec := by
  intro n
  simp only [A007800, Nat.add_sub_cancel]

end A007800

/-! ## A007800.P5488499591791553189

`∑[2*a(n-1)-a(n-4)]+1` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A007800.P5488499591791553189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 4] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A007800.P5488499591791553189

namespace A007800

/-- `∑[2*a(n-1)-a(n-4)]+1` -/
def P5488499591791553189.Spec : Prop :=
  ∀ n, P5488499591791553189.a n = A007800 (n + 1)

end A007800

/-! ## A007800.P10907815818812254720

`∑[∑[a(n-1)+a(n-3)+a(n-2)]]+1` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A007800.P10907815818812254720
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n f2 =>
  f2 (n - 1) + (f2 (n - 3) + f2 (n - 2))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A007800.P10907815818812254720

namespace A007800

/-- `∑[∑[a(n-1)+a(n-3)+a(n-2)]]+1` -/
def P10907815818812254720.Spec : Prop :=
  ∀ n, (P10907815818812254720.a n : ℤ) = A007800 (n + 1)

end A007800

/-! ## A007800.P17670805317160127322

`a(n-1)+a(n-2)+a(n-3)-2+n` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`
-/

namespace A007800.P17670805317160127322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8] fun n a =>
  a (n - 1) + (a (n - 2) + a (n - 3)) - 2 + (n : ℤ)

end

end A007800.P17670805317160127322

namespace A007800

/-- `a(n-1)+a(n-2)+a(n-3)-2+n` -/
def P17670805317160127322.Spec : Prop :=
  ∀ n, P17670805317160127322.a n = A007800 (n + 1)

end A007800

/-! ## A007800.P9890032061555341986

`A062544(n)+1`
-/

namespace A007800.P9890032061555341986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062544 n + 1

end

end A007800.P9890032061555341986

namespace A007800

/-- `A062544(n)+1` -/
def P9890032061555341986.Spec : Prop :=
  ∀ n, P9890032061555341986.a n = A007800 (n + 1)

end A007800

/-! ## A007800.P6352063540874967575

`∑[A008937(n)]+1`
-/

namespace A007800.P6352063540874967575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A007800.P6352063540874967575

namespace A007800

/-- `∑[A008937(n)]+1` -/
def P6352063540874967575.Spec : Prop :=
  ∀ n, P6352063540874967575.a n = A007800 (n + 1)

end A007800

/-! ## A007800.P9142399711360033338

`A221949(n+1)+n`
-/

namespace A007800.P9142399711360033338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221949 (n + 1) + (n : ℤ)

end

end A007800.P9142399711360033338

namespace A007800

/-- `A221949(n+1)+n` -/
def P9142399711360033338.Spec : Prop :=
  ∀ n, P9142399711360033338.a n = A007800 (n + 1)

end A007800

/-! ## A007800.P7977353674109941537

`∑[A192804(n+2)]-n`
-/

namespace A007800.P7977353674109941537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A007800.P7977353674109941537

namespace A007800

/-- `∑[A192804(n+2)]-n` -/
def P7977353674109941537.Spec : Prop :=
  ∀ n, P7977353674109941537.a n = A007800 (n + 1)

end A007800

/-! ## A007800.P4306620442185101642

`∑[A288465(n)/2]-n`
-/

namespace A007800.P4306620442185101642
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288465 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℚ)

end

end A007800.P4306620442185101642

namespace A007800

/-- `∑[A288465(n)/2]-n` -/
def P4306620442185101642.Spec : Prop :=
  ∀ n, P4306620442185101642.a n = (A007800 (n + 1) : ℚ)

end A007800

/-! ## A007800.P8902194183011510286

`∑[∑[∑[A001590(n)]]]+1`
-/

namespace A007800.P8902194183011510286
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A007800.P8902194183011510286

namespace A007800

/-- `∑[∑[∑[A001590(n)]]]+1` -/
def P8902194183011510286.Spec : Prop :=
  ∀ n, P8902194183011510286.a n = A007800 (n + 1)

end A007800

/-! ## A007800.P12564435459146665090

`A325473(n+3)-(n+2)`
-/

namespace A007800.P12564435459146665090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325473 (n + 3) - (n + 2 : ℤ)

end

end A007800.P12564435459146665090

namespace A007800

/-- `A325473(n+3)-(n+2)` -/
def P12564435459146665090.Spec : Prop :=
  ∀ n, P12564435459146665090.a n = A007800 (n + 1)

end A007800

/-! ## A007800.P11436473093184710734

`∑[∑[A000073(n+1)]]+1`
-/

namespace A007800.P11436473093184710734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A007800.P11436473093184710734

namespace A007800

/-- `∑[∑[A000073(n+1)]]+1` -/
def P11436473093184710734.Spec : Prop :=
  ∀ n, P11436473093184710734.a n = A007800 (n + 1)

end A007800

/-! ## A007800.P9711746293609077855

`∑[floor(A000213(n+2)/2)]+1`
-/

namespace A007800.P9711746293609077855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000213 (n + 2) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A007800.P9711746293609077855

namespace A007800

/-- `∑[floor(A000213(n+2)/2)]+1` -/
def P9711746293609077855.Spec : Prop :=
  ∀ n, P9711746293609077855.a n = A007800 (n + 1)

end A007800

/-! ## A007800.P17401065824519923313

`∑[A317200(n+2)]-(2*n+1)`
-/

namespace A007800.P17401065824519923313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317200 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 * n + 1 : ℤ)

end

end A007800.P17401065824519923313

namespace A007800

/-- `∑[A317200(n+2)]-(2*n+1)` -/
def P17401065824519923313.Spec : Prop :=
  ∀ n, P17401065824519923313.a n = A007800 (n + 1)

end A007800

/-! ## A007800.P15816147574547157494

`A196787(n+2)+A000073(n+1)`
-/

namespace A007800.P15816147574547157494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196787 (n + 2) + A000073 (n + 1)

end

end A007800.P15816147574547157494

namespace A007800

/-- `A196787(n+2)+A000073(n+1)` -/
def P15816147574547157494.Spec : Prop :=
  ∀ n, P15816147574547157494.a n = A007800 (n + 1)

end A007800

/-! ## A007800.P705486761109266824

`(∑[A054668(n+1)]+1)/2`
-/

namespace A007800.P705486761109266824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054668 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A007800.P705486761109266824

namespace A007800

/-- `(∑[A054668(n+1)]+1)/2` -/
def P705486761109266824.Spec : Prop :=
  ∀ n, P705486761109266824.a n = (A007800 (n + 1) : ℚ)

end A007800

/-! ## A007800.P8459675053507836024

`round((A027053(n+2)-n)/2)`
-/

namespace A007800.P8459675053507836024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A027053 (n + 2) - (n : ℤ) : ℚ) / 2)

end

end A007800.P8459675053507836024

namespace A007800

/-- `round((A027053(n+2)-n)/2)` -/
def P8459675053507836024.Spec : Prop :=
  ∀ n, P8459675053507836024.a n = A007800 (n + 1)

end A007800

/-! ## A007800.P14903821351844316582

`A116576(n+4)-A027024(n+2)`
-/

namespace A007800.P14903821351844316582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116576 (n + 4) - A027024 (n + 2)

end

end A007800.P14903821351844316582

namespace A007800

/-- `A116576(n+4)-A027024(n+2)` -/
def P14903821351844316582.Spec : Prop :=
  ∀ n, P14903821351844316582.a n = A007800 (n + 1)

end A007800

/-! ## A007800.P4629746664819015339

`∑[A018921(n)-Δ[A018921(n)]]+1`
-/

namespace A007800.P4629746664819015339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018921 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018921 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A007800.P4629746664819015339

namespace A007800

/-- `∑[A018921(n)-Δ[A018921(n)]]+1` -/
def P4629746664819015339.Spec : Prop :=
  ∀ n, P4629746664819015339.a n = A007800 (n + 1)

end A007800

/-!
# A007802: Numbers n such that game of n X n Button Madness need have no solution; this lists only the primitive elements of the set.

The programs for A007802, there is no canonical definition to state claims against.
-/

/-! ## A007802.P1111340891366902926

`A057751(A000943(n+1))`
-/

namespace A007802.P1111340891366902926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057751 (A000943 (n + 1)).toNat

end

end A007802.P1111340891366902926

/-! ## A007802.P17876474615944005594

`A076605(2^A372514(n))`
-/

namespace A007802.P17876474615944005594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A372514 n : ℤ))).toNat

end

end A007802.P17876474615944005594

/-!
# A007803: Number of connected series-parallel graphs with a longest path of at most n edges and also a largest cut set of at most n edges.

The programs for A007803, there is no canonical definition to state claims against.
-/

/-! ## A007803.P11661336683911677608

`2*A391487(n+1)-1`
-/

namespace A007803.P11661336683911677608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A391487 (n + 1) - 1

end

end A007803.P11661336683911677608

/-! ## A007803.P2299731247234473416

`A391484((n+1)²+n²)`
-/

namespace A007803.P2299731247234473416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391484 ((n + 1) ^ 2 + n ^ 2)

end

end A007803.P2299731247234473416

/-!
# A007805: a(n) = Fibonacci(6*n + 3)/2.

The programs for A007805, the canonical program `A007805.P16702797989775712078` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007805 has offset 0).

The definition of A007805 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007805.P16702797989775712078

`18*a(n-1)-a(n-2)` with `a(0)=1, a(1)=17`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007805

/-- `18*a(n-1)-a(n-2)` -/
def P16702797989775712078.Spec : Prop :=
  ∀ n, P16702797989775712078.a n = A007805 n

theorem P16702797989775712078.correct : P16702797989775712078.Spec := by
  intro n
  simp only [A007805]

end A007805

/-! ## A007805.P12692268854363182328

`((2+sqrt(5))^(2*n+1)-(2-sqrt(5))^(2*n+1))/(2*sqrt(5))`
-/

namespace A007805.P12692268854363182328
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + Real.sqrt (5 : ℝ)) ^ (2 * n + 1) - (2 - Real.sqrt (5 : ℝ)) ^ (2 * n + 1)) / (2 * Real.sqrt (5 : ℝ))

end

end A007805.P12692268854363182328

namespace A007805

/-- `((2+sqrt(5))^(2*n+1)-(2-sqrt(5))^(2*n+1))/(2*sqrt(5))` -/
def P12692268854363182328.Spec : Prop :=
  ∀ n, P12692268854363182328.a n = (A007805 n : ℝ)

end A007805

/-! ## A007805.P5282908638452048815

`A001076(2*n+1)`
-/

namespace A007805.P5282908638452048815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 (2 * n + 1)

end

end A007805.P5282908638452048815

namespace A007805

/-- `A001076(2*n+1)` -/
def P5282908638452048815.Spec : Prop :=
  ∀ n, P5282908638452048815.a n = A007805 n

end A007805

/-! ## A007805.P6807439120160849450

`floor(ϕ^6*a(n-1))` with `a(0)=1`
-/

namespace A007805.P6807439120160849450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊Real.goldenRatio ^ 6 * (a (n - 1) : ℝ)⌋

end

end A007805.P6807439120160849450

namespace A007805

/-- `floor(ϕ^6*a(n-1))` -/
def P6807439120160849450.Spec : Prop :=
  ∀ n, P6807439120160849450.a n = A007805 n

end A007805

/-! ## A007805.P2224312066984763657

`Δ[A049660(n)]`
-/

namespace A007805.P2224312066984763657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007805.P2224312066984763657

namespace A007805

/-- `Δ[A049660(n)]` -/
def P2224312066984763657.Spec : Prop :=
  ∀ n, P2224312066984763657.a n = A007805 n

end A007805

/-! ## A007805.P17755651176851204939

`A041031(2*n)`
-/

namespace A007805.P17755651176851204939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041031 (2 * n)

end

end A007805.P17755651176851204939

namespace A007805

/-- `A041031(2*n)` -/
def P17755651176851204939.Spec : Prop :=
  ∀ n, P17755651176851204939.a n = A007805 n

end A007805

/-! ## A007805.P4649938483061031427

`A041143(2*n)`
-/

namespace A007805.P4649938483061031427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041143 (2 * n)

end

end A007805.P4649938483061031427

namespace A007805

/-- `A041143(2*n)` -/
def P4649938483061031427.Spec : Prop :=
  ∀ n, P4649938483061031427.a n = A007805 n

end A007805

/-! ## A007805.P3649952299845640366

`A153315(2*n)`
-/

namespace A007805.P3649952299845640366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153315 (2 * n)

end

end A007805.P3649952299845640366

namespace A007805

/-- `A153315(2*n)` -/
def P3649952299845640366.Spec : Prop :=
  ∀ n, P3649952299845640366.a n = A007805 n

end A007805

/-! ## A007805.P12487297048625924442

`A099511(3*n)`
-/

namespace A007805.P12487297048625924442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099511 (3 * n)

end

end A007805.P12487297048625924442

namespace A007805

/-- `A099511(3*n)` -/
def P12487297048625924442.Spec : Prop :=
  ∀ n, P12487297048625924442.a n = A007805 n

end A007805

/-!
# A007806: Integer part of Sum_{i=1..n} binomial(n,i) * (n/i)^i.

The programs for A007806, there is no canonical definition to state claims against.
-/

/-! ## A007806.P1908447467811340378

`∑[A320356(2*(n+1))-A001222(2*n+5)]`
-/

namespace A007806.P1908447467811340378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320356 (2 * (n + 1)) - A001222 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007806.P1908447467811340378

/-! ## A007806.P18043800521554830425

`A008776(n)-A307824(A007580(n))`
-/

namespace A007806.P18043800521554830425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n - A307824 (A007580 n).toNat

end

end A007806.P18043800521554830425

/-!
# A007807: A variation on Euclid: a(n)=g(n)-1, where g(0)=0, g(1)=1, g(n+1)=g(n)(g(n-1)+1).

The programs for A007807, the canonical program `A007807.P14675783805972562567` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007807 has offset 1).

The definition of A007807 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007807.P14675783805972562567

`A005831(n+1)-1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007807

/-- `A005831(n+1)-1` -/
def P14675783805972562567.Spec : Prop :=
  ∀ n, P14675783805972562567.a n = A007807 (n + 1)

theorem P14675783805972562567.correct : P14675783805972562567.Spec := by
  intro n
  simp only [A007807, Nat.add_sub_cancel]

end A007807

/-! ## A007807.P4191108821801723929

`(a(n-1)+1)*(a(n-2)+2)-1` with `a(0)=0, a(1)=0`
-/

namespace A007807.P4191108821801723929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  (a (n - 1) + 1) * (a (n - 2) + 2) - 1

end

end A007807.P4191108821801723929

namespace A007807

/-- `(a(n-1)+1)*(a(n-2)+2)-1` -/
def P4191108821801723929.Spec : Prop :=
  ∀ n, P4191108821801723929.a n = A007807 (n + 1)

end A007807

/-! ## A007807.P12145479373145487556

`Δ[∑[A005831(n)]-n]`
-/

namespace A007807.P12145479373145487556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005831 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007807.P12145479373145487556

namespace A007807

/-- `Δ[∑[A005831(n)]-n]` -/
def P12145479373145487556.Spec : Prop :=
  ∀ n, P12145479373145487556.a n = A007807 (n + 1)

end A007807

/-! ## A007807.P3046344958652659003

`Δ[A001478(n+1)+∑[A005831(n)]]`
-/

namespace A007807.P3046344958652659003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005831 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007807.P3046344958652659003

namespace A007807

/-- `Δ[A001478(n+1)+∑[A005831(n)]]` -/
def P3046344958652659003.Spec : Prop :=
  ∀ n, P3046344958652659003.a n = A007807 (n + 1)

end A007807

/-! ## A007807.P15892992057096682471

`A064179(A005846(n+1))+A005831(n+1)`
-/

namespace A007807.P15892992057096682471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064179 (A005846 (n + 1)).toNat + A005831 (n + 1)

end

end A007807.P15892992057096682471

namespace A007807

/-- `A064179(A005846(n+1))+A005831(n+1)` -/
def P15892992057096682471.Spec : Prop :=
  ∀ n, P15892992057096682471.a n = A007807 (n + 1)

end A007807

/-!
# A007808: Number of directed column-convex polyominoes of height n: a(k+1)=(k+1)*a(k)+(a(1)+...+a(k)).

The programs for A007808, the canonical program `A007808.P5368943516025830590` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007808 has offset 0).

The definition of A007808 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007808.P5368943516025830590

`(n²*a(n-1)-1)/(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007808

/-- `(n²*a(n-1)-1)/(n-1)` -/
def P5368943516025830590.Spec : Prop :=
  ∀ n, P5368943516025830590.a n = (A007808 n : ℚ)

end A007808

/-! ## A007808.P10410773479947914022

`Δ[n*a(n-1)+n]` with `a(0)=-2`
-/

namespace A007808.P10410773479947914022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n f1 =>
  (n : ℤ) * f1 (n - 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007808.P10410773479947914022

namespace A007808

/-- `Δ[n*a(n-1)+n]` -/
def P10410773479947914022.Spec : Prop :=
  ∀ n, P10410773479947914022.a n = A007808 n

end A007808

/-! ## A007808.P18054997887148180929

`abs(Δ[n*(a(n-1)-1)])` with `a(0)=2`
-/

namespace A007808.P18054997887148180929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  (n : ℤ) * (f1 (n - 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A007808.P18054997887148180929

namespace A007808

/-- `abs(Δ[n*(a(n-1)-1)])` -/
def P18054997887148180929.Spec : Prop :=
  ∀ n, P18054997887148180929.a n = A007808 n

end A007808

/-! ## A007808.P5572907735624088106

`-Δ[n*(a(n-1)-1)]` with `a(0)=2`
-/

namespace A007808.P5572907735624088106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  (n : ℤ) * (f1 (n - 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A007808.P5572907735624088106

namespace A007808

/-- `-Δ[n*(a(n-1)-1)]` -/
def P5572907735624088106.Spec : Prop :=
  ∀ n, P5572907735624088106.a n = A007808 n

end A007808

/-! ## A007808.P2099489335041899168

`abs(Δ[lcm(n, a(n-1))+n])` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A007808.P2099489335041899168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  Nat.lcm n (f1 (n - 1)) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ)|

end

end A007808.P2099489335041899168

namespace A007808

/-- `abs(Δ[lcm(n, a(n-1))+n])` -/
def P2099489335041899168.Spec : Prop :=
  ∀ n, P2099489335041899168.a n = A007808 n

end A007808

/-! ## A007808.P11082116959930104694

`Δ[floor(n*a(n-1)-(n-2))]` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A007808.P11082116959930104694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) * f1 (n - 1) - ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007808.P11082116959930104694

namespace A007808

/-- `Δ[floor(n*a(n-1)-(n-2))]` -/
def P11082116959930104694.Spec : Prop :=
  ∀ n, P11082116959930104694.a n = A007808 n

end A007808

/-! ## A007808.P4983109604475586025

`1-Δ[n*(a(n-1)-(n-1))]` with `a(0)=2`
-/

namespace A007808.P4983109604475586025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  (n : ℤ) * (f1 (n - 1) - ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A007808.P4983109604475586025

namespace A007808

/-- `1-Δ[n*(a(n-1)-(n-1))]` -/
def P4983109604475586025.Spec : Prop :=
  ∀ n, P4983109604475586025.a n = A007808 n

end A007808

/-! ## A007808.P7531332073129142209

`(n+2)*a(n-1)-(n-1)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A007808.P7531332073129142209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n + 2 : ℤ) * a (n - 1) - ((n : ℤ) - 1) * a (n - 2)

end

end A007808.P7531332073129142209

namespace A007808

/-- `(n+2)*a(n-1)-(n-1)*a(n-2)` -/
def P7531332073129142209.Spec : Prop :=
  ∀ n, P7531332073129142209.a n = A007808 n

end A007808

/-! ## A007808.P12419956714293916171

`A056542(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A007808.P12419956714293916171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056542 n + (n : ℤ) * a (n - 1)

end

end A007808.P12419956714293916171

namespace A007808

/-- `A056542(n)+n*a(n-1)` -/
def P12419956714293916171.Spec : Prop :=
  ∀ n, P12419956714293916171.a n = A007808 n

end A007808

/-! ## A007808.P6516991084901834373

`A056542(n+1)+A000142(n)-A002627(n)`
-/

namespace A007808.P6516991084901834373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056542 (n + 1) + (A000142 n - A002627 n)

end

end A007808.P6516991084901834373

namespace A007808

/-- `A056542(n+1)+A000142(n)-A002627(n)` -/
def P6516991084901834373.Spec : Prop :=
  ∀ n, P6516991084901834373.a n = A007808 n

end A007808

/-!
# A007809: Smallest prime with n distinct digits.

The programs for A007809, there is no canonical definition to state claims against.
-/

/-! ## A007809.P1496046196288577603

`A099629(Δ[n²])`
-/

namespace A007809.P1496046196288577603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099629 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A007809.P1496046196288577603

/-! ## A007809.P13896950249549332832

`A259146(comp[10*n])`
-/

namespace A007809.P13896950249549332832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259146 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A007809.P13896950249549332832

/-! ## A007809.P15904263957301238631

`A259146(n+1)+char[9]`
-/

namespace A007809.P15904263957301238631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259146 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A007809.P15904263957301238631

/-! ## A007809.P944612807637712117

`A099629(2*n+1)+char[9]`
-/

namespace A007809.P944612807637712117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099629 (2 * n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A007809.P944612807637712117

/-! ## A007809.P14960269787859458781

`record[A099629((n+1)%4+n)]`
-/

namespace A007809.P14960269787859458781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099629 ((n + 1) % 4 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007809.P14960269787859458781

/-!
# A007810: Largest prime with n distinct decimal digits.

The programs for A007810, there is no canonical definition to state claims against.
-/

/-! ## A007810.P16746284838069883848

`A099629(2*(n+1))`
-/

namespace A007810.P16746284838069883848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099629 (2 * (n + 1))

end

end A007810.P16746284838069883848

/-! ## A007810.P14176081014505664526

`record[A099629(xor(1, n)+1)]`
-/

namespace A007810.P14176081014505664526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099629 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007810.P14176081014505664526

/-! ## A007810.P3906822527583506626

`record[A099629(n^(n%2)+1)]`
-/

namespace A007810.P3906822527583506626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099629 (n ^ (n % 2) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007810.P3906822527583506626

/-! ## A007810.P14009055584418829585

`record[A099629(A133265(n))]`
-/

namespace A007810.P14009055584418829585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099629 (A133265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007810.P14009055584418829585

/-!
# A007811: Numbers k for which 10k+1, 10k+3, 10k+7 and 10k+9 are primes.

The programs for A007811, there is no canonical definition to state claims against.
-/

/-! ## A007811.P402717496045562311

`3*A014561(n+1)+1`
-/

namespace A007811.P402717496045562311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A014561 (n + 1) + 1

end

end A007811.P402717496045562311

/-! ## A007811.P4507658022515305081

`A064975(n+1)-1`
-/

namespace A007811.P4507658022515305081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064975 (n + 1) - 1

end

end A007811.P4507658022515305081

/-! ## A007811.P14072432182898307595

`floor(A178082(n+1)/2)`
-/

namespace A007811.P14072432182898307595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A178082 (n + 1) : ℚ) / 2⌋

end

end A007811.P14072432182898307595

/-! ## A007811.P8129392864120500917

`3*A061668(n+1)-2`
-/

namespace A007811.P8129392864120500917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A061668 (n + 1) - 2

end

end A007811.P8129392864120500917

/-! ## A007811.P10732416500916025289

`∑[3*A159910(n+1)]+1`
-/

namespace A007811.P10732416500916025289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A159910 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A007811.P10732416500916025289

/-! ## A007811.P12942134017487858655

`(3*A112540(n+1)-1)/2`
-/

namespace A007811.P12942134017487858655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A112540 (n + 1) - 1 : ℚ) / 2

end

end A007811.P12942134017487858655

/-! ## A007811.P10303219342635081650

`A112540(n+1)+A014561(n+1)`
-/

namespace A007811.P10303219342635081650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112540 (n + 1) + A014561 (n + 1)

end

end A007811.P10303219342635081650

/-! ## A007811.P3951182440970061860

`A178082(n+1)%A064975(n+1)`
-/

namespace A007811.P3951182440970061860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178082 (n + 1)) (A064975 (n + 1))

end

end A007811.P3951182440970061860

/-! ## A007811.P16444567714887158

`A061668(n+1)+A112540(n+1)-1`
-/

namespace A007811.P16444567714887158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061668 (n + 1) + (A112540 (n + 1) - 1)

end

end A007811.P16444567714887158

/-! ## A007811.P13358441020207596499

`A014561(n+1)+A061668(n+1)+A014561(n+1)`
-/

namespace A007811.P13358441020207596499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014561 (n + 1) + (A061668 (n + 1) + A014561 (n + 1))

end

end A007811.P13358441020207596499

/-! ## A007811.P16900337621348958344

`A115095(n+2)-1`
-/

namespace A007811.P16900337621348958344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115095 (n + 2) - 1

end

end A007811.P16900337621348958344

/-! ## A007811.P15661706461555725253

`A125855(n+2)/10`
-/

namespace A007811.P15661706461555725253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125855 (n + 2) : ℚ) / 10

end

end A007811.P15661706461555725253

/-! ## A007811.P352455051011458973

`(floor(A090258(n+2)/5)-1)/2`
-/

namespace A007811.P352455051011458973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A090258 (n + 2) : ℚ) / 5⌋ - 1 : ℚ) / 2

end

end A007811.P352455051011458973

/-! ## A007811.P17926035087333741403

`A014682(A112540(n+1))-1`
-/

namespace A007811.P17926035087333741403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A112540 (n + 1)).toNat - 1

end

end A007811.P17926035087333741403

/-!
# A007814: Exponent of highest power of 2 dividing n, a.k.a. the binary carry sequence, the ruler sequence, or the 2-adic valuation of n.

The programs for A007814, the canonical program `A007814.P13537437864234730737` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007814 has offset 1).

The definition of A007814 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007814.P15642417693884190303

`val(n+1, 2)`
-/

namespace A007814.P15642417693884190303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

end

end A007814.P15642417693884190303

namespace A007814

/-- `val(n+1, 2)` -/
def P15642417693884190303.Spec : Prop :=
  ∀ n, (P15642417693884190303.a n : ℤ) = A007814 (n + 1)

end A007814

/-! ## A007814.P13537437864234730737

`A001511(n+1)-1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A007814

/-- `A001511(n+1)-1` -/
def P13537437864234730737.Spec : Prop :=
  ∀ n, P13537437864234730737.a n = A007814 (n + 1)

theorem P13537437864234730737.correct : P13537437864234730737.Spec := by
  intro n
  simp only [A007814, Nat.add_sub_cancel]

end A007814

/-! ## A007814.P7769426036668437123

`1-A088705(n+1)`
-/

namespace A007814.P7769426036668437123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A088705 (n + 1)

end

end A007814.P7769426036668437123

namespace A007814

/-- `1-A088705(n+1)` -/
def P7769426036668437123.Spec : Prop :=
  ∀ n, P7769426036668437123.a n = A007814 (n + 1)

end A007814

/-! ## A007814.P9342556829400102781

`(A037227(n+1)-1)/2`
-/

namespace A007814.P9342556829400102781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037227 (n + 1) - 1 : ℚ) / 2

end

end A007814.P9342556829400102781

namespace A007814

/-- `(A037227(n+1)-1)/2` -/
def P9342556829400102781.Spec : Prop :=
  ∀ n, P9342556829400102781.a n = (A007814 (n + 1) : ℚ)

end A007814

/-! ## A007814.P10210652168728718391

`floor(A002487(n)/A002487(n+1))`
-/

namespace A007814.P10210652168728718391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002487 n : ℚ) / (A002487 (n + 1) : ℚ)⌋

end

end A007814.P10210652168728718391

namespace A007814

/-- `floor(A002487(n)/A002487(n+1))` -/
def P10210652168728718391.Spec : Prop :=
  ∀ n, P10210652168728718391.a n = A007814 (n + 1)

end A007814

/-! ## A007814.P9889949607067586354

`1+A000120(n)-A000120(n+1)`
-/

namespace A007814.P9889949607067586354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000120 n - A000120 (n + 1)

end

end A007814.P9889949607067586354

namespace A007814

/-- `1+A000120(n)-A000120(n+1)` -/
def P9889949607067586354.Spec : Prop :=
  ∀ n, P9889949607067586354.a n = A007814 (n + 1)

end A007814

/-! ## A007814.P6846600678760660557

`A183063(n+1)/A001227(n+1)`
-/

namespace A007814.P6846600678760660557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183063 (n + 1) : ℚ) / (A001227 (n + 1) : ℚ)

end

end A007814.P6846600678760660557

namespace A007814

/-- `A183063(n+1)/A001227(n+1)` -/
def P6846600678760660557.Spec : Prop :=
  ∀ n, P6846600678760660557.a n = (A007814 (n + 1) : ℚ)

end A007814

/-! ## A007814.P13739305591382122124

`A000005(n+1)/(A000005(2*(n+1))-A000005(n+1))-1`
-/

namespace A007814.P13739305591382122124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A000005 (2 * (n + 1)) - A000005 (n + 1) : ℚ) - 1

end

end A007814.P13739305591382122124

namespace A007814

/-- `A000005(n+1)/(A000005(2*(n+1))-A000005(n+1))-1` -/
def P13739305591382122124.Spec : Prop :=
  ∀ n, P13739305591382122124.a n = (A007814 (n + 1) : ℚ)

end A007814

/-! ## A007814.P2567346184132309178

`A070939(n+1)-A070939(A030101(n+1))`
-/

namespace A007814.P2567346184132309178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1) - A070939 (A030101 (n + 1)).toNat

end

end A007814.P2567346184132309178

namespace A007814

/-- `A070939(n+1)-A070939(A030101(n+1))` -/
def P2567346184132309178.Spec : Prop :=
  ∀ n, P2567346184132309178.a n = A007814 (n + 1)

end A007814

/-! ## A007814.P5379210867915577426

`A285406(n+1)-A281264(n+1)`
-/

namespace A007814.P5379210867915577426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285406 (n + 1) - A281264 (n + 1)

end

end A007814.P5379210867915577426

namespace A007814

/-- `A285406(n+1)-A281264(n+1)` -/
def P5379210867915577426.Spec : Prop :=
  ∀ n, P5379210867915577426.a n = A007814 (n + 1)

end A007814

/-! ## A007814.P17464976196164625309

`floor(log2(xor(n, n+1)))`
-/

namespace A007814.P17464976196164625309
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (Nat.xor n (n + 1))

end

end A007814.P17464976196164625309

namespace A007814

/-- `floor(log2(xor(n, n+1)))` -/
def P17464976196164625309.Spec : Prop :=
  ∀ n, (P17464976196164625309.a n : ℤ) = A007814 (n + 1)

end A007814

/-! ## A007814.P4625904542600768055

`log2(or(n, n+1)-n)`
-/

namespace A007814.P4625904542600768055
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℝ)

end

end A007814.P4625904542600768055

namespace A007814

/-- `log2(or(n, n+1)-n)` -/
def P4625904542600768055.Spec : Prop :=
  ∀ n, P4625904542600768055.a n = (A007814 (n + 1) : ℝ)

end A007814

/-! ## A007814.P7738741177066476307

`log2(xor(n, or(n, n+1)))`
-/

namespace A007814.P7738741177066476307
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.xor n (Nat.lor n (n + 1)) : ℝ)

end

end A007814.P7738741177066476307

namespace A007814

/-- `log2(xor(n, or(n, n+1)))` -/
def P7738741177066476307.Spec : Prop :=
  ∀ n, P7738741177066476307.a n = (A007814 (n + 1) : ℝ)

end A007814

/-! ## A007814.P5837404727928034282

`log2(and(n+1, xor(n, -1)))`
-/

namespace A007814.P5837404727928034282
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.land (n + 1 : ℤ) (Int.xor (n : ℤ) (-1)) : ℝ)

end

end A007814.P5837404727928034282

namespace A007814

/-- `log2(and(n+1, xor(n, -1)))` -/
def P5837404727928034282.Spec : Prop :=
  ∀ n, P5837404727928034282.a n = (A007814 (n + 1) : ℝ)

end A007814

/-! ## A007814.P8001116493009667152

`val(record[(n-1)²], 2)/2`
-/

namespace A007814.P8001116493009667152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2 : ℚ) / 2

end

end A007814.P8001116493009667152

namespace A007814

/-- `val(record[(n-1)²], 2)/2` -/
def P8001116493009667152.Spec : Prop :=
  ∀ n, P8001116493009667152.a n = (A007814 (n + 1) : ℚ)

end A007814

/-! ## A007814.P6738500636705294011

`log2(and(n+1, -(n+1)))`
-/

namespace A007814.P6738500636705294011
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℝ)

end

end A007814.P6738500636705294011

namespace A007814

/-- `log2(and(n+1, -(n+1)))` -/
def P6738500636705294011.Spec : Prop :=
  ∀ n, P6738500636705294011.a n = (A007814 (n + 1) : ℝ)

end A007814

/-! ## A007814.P9361846480494485950

`∑{e}[or(n, n+1)-n, #]`
-/

namespace A007814.P9361846480494485950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (n + 1) : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A007814.P9361846480494485950

namespace A007814

/-- `∑{e}[or(n, n+1)-n, #]` -/
def P9361846480494485950.Spec : Prop :=
  ∀ n, (P9361846480494485950.a n : ℤ) = A007814 (n + 1)

end A007814

/-! ## A007814.P17256898079595160938

`log2(xor(n, n+1)+1)-1`
-/

namespace A007814.P17256898079595160938
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.xor n (n + 1) + 1 : ℝ) - 1

end

end A007814.P17256898079595160938

namespace A007814

/-- `log2(xor(n, n+1)+1)-1` -/
def P17256898079595160938.Spec : Prop :=
  ∀ n, P17256898079595160938.a n = (A007814 (n + 1) : ℝ)

end A007814

/-! ## A007814.P5553904391417071911

`log2((xor(n, n+1)+1)/2)`
-/

namespace A007814.P5553904391417071911
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((Nat.xor n (n + 1) + 1 : ℚ) / 2 : ℝ)

end

end A007814.P5553904391417071911

namespace A007814

/-- `log2((xor(n, n+1)+1)/2)` -/
def P5553904391417071911.Spec : Prop :=
  ∀ n, P5553904391417071911.a n = (A007814 (n + 1) : ℝ)

end A007814

/-! ## A007814.P7515736560965523202

`log2(gcd(n+1, (3-n)^10))`
-/

namespace A007814.P7515736560965523202
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (n + 1 : ℤ) ((3 - (n : ℤ)) ^ 10) : ℝ)

end

end A007814.P7515736560965523202

namespace A007814

/-- `log2(gcd(n+1, (3-n)^10))` -/
def P7515736560965523202.Spec : Prop :=
  ∀ n, P7515736560965523202.a n = (A007814 (n + 1) : ℝ)

end A007814

/-!
# A007815: Number of triangulations of cyclic 3-polytope C(3,n+3).

The programs for A007815, there is no canonical definition to state claims against.
-/

/-! ## A007815.P8480583248087385689

`A364915(A075342(n+1))`
-/

namespace A007815.P8480583248087385689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364915 (A075342 (n + 1)).toNat

end

end A007815.P8480583248087385689

/-! ## A007815.P5703482419675232313

`A364915(∑[A342641(n+1)])`
-/

namespace A007815.P5703482419675232313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364915 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A007815.P5703482419675232313

/-!
# A007816: Number of abstract simplicial 2-complexes on {1,2,3,...,n+3} which triangulate the 2-sphere: C(n+3,2)*(4n+1)!/(3n+3)!.

The programs for A007816, there is no canonical definition to state claims against.
-/

/-! ## A007816.P3843764705428375805

`A100960((n+2)²+2)`
-/

namespace A007816.P3843764705428375805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100960 ((n + 2) ^ 2 + 2)

end

end A007816.P3843764705428375805

/-! ## A007816.P16734404606646611528

`A288265((n+3)²-(n+1))`
-/

namespace A007816.P16734404606646611528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288265 ((n + 3) ^ 2 - (n + 1))

end

end A007816.P16734404606646611528

/-! ## A007816.P371920273049046145

`record[Δ[A000196(n)]*A100960(n+3)]`
-/

namespace A007816.P371920273049046145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A100960 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007816.P371920273049046145

/-! ## A007816.P16219210689201682147

`record[A100960(n+3)*A214295(n+1)]`
-/

namespace A007816.P16219210689201682147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100960 (n + 3) * A214295 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007816.P16219210689201682147

/-!
# A007818: Maximal number of bonds joining n nodes in simple cubic lattice.

The programs for A007818, there is no canonical definition to state claims against.
-/

/-! ## A007818.P2274277312869771764

`3*(n+1)-A004526(A193416(n+1))`
-/

namespace A007818.P2274277312869771764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A004526 (A193416 (n + 1)).toNat

end

end A007818.P2274277312869771764

/-! ## A007818.P1602529594205888774

`A016777(n+1)-A008619(A193416(n+1))`
-/

namespace A007818.P1602529594205888774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (n + 1) - A008619 (A193416 (n + 1)).toNat

end

end A007818.P1602529594205888774

/-! ## A007818.P10314138583998488660

`A005843(n)-A008619(A193416(n+1))+n+4`
-/

namespace A007818.P10314138583998488660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - A008619 (A193416 (n + 1)).toNat + (n + 4 : ℤ)

end

end A007818.P10314138583998488660

/-! ## A007818.P10210231396196862811

`A008619(A016957(n))-A193416(n+1)/2`
-/

namespace A007818.P10210231396196862811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (A016957 n).toNat : ℚ) - (A193416 (n + 1) : ℚ) / 2

end

end A007818.P10210231396196862811

/-! ## A007818.P9257630695277180795

`A008619(A016969(n))-A193416(n+1)/2`
-/

namespace A007818.P9257630695277180795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (A016969 n).toNat : ℚ) - (A193416 (n + 1) : ℚ) / 2

end

end A007818.P9257630695277180795

/-! ## A007818.P14618883534019758845

`A065033(A016969(n))-A065033(A193416(n+1))`
-/

namespace A007818.P14618883534019758845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A016969 n).toNat - A065033 (A193416 (n + 1)).toNat

end

end A007818.P14618883534019758845

/-! ## A007818.P9400604617441632617

`A008619(A193416(n+1)+A016957(n))-A193416(n+1)`
-/

namespace A007818.P9400604617441632617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A193416 (n + 1) + A016957 n).toNat - A193416 (n + 1)

end

end A007818.P9400604617441632617

/-! ## A007818.P3569690345862441509

`A008619(A193416(n+1)+A016969(n))-A193416(n+1)`
-/

namespace A007818.P3569690345862441509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A193416 (n + 1) + A016969 n).toNat - A193416 (n + 1)

end

end A007818.P3569690345862441509

/-! ## A007818.P10104227627550554697

`6*(n+1)-A118659(n+1)`
-/

namespace A007818.P10104227627550554697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (n + 1) : ℤ) - A118659 (n + 1)

end

end A007818.P10104227627550554697

/-! ## A007818.P16749017302619833551

`A016969(n)+1-A118659(n+1)`
-/

namespace A007818.P16749017302619833551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n + (1 - A118659 (n + 1))

end

end A007818.P16749017302619833551

/-!
# A007819: a(n) = Sum_{j=1..n} binomial(n^2, j).

The programs for A007819, there is no canonical definition to state claims against.
-/

/-! ## A007819.P6710329294355687250

`A066382(n+1)-1`
-/

namespace A007819.P6710329294355687250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066382 (n + 1) - 1

end

end A007819.P6710329294355687250

/-! ## A007819.P5457251347085388701

`∑[abs(Δ[A066382(n)])]`
-/

namespace A007819.P5457251347085388701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066382 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007819.P5457251347085388701

/-! ## A007819.P154293816116072035

`record[A066382(ceil(xor(1, n)/2))-1]`
-/

namespace A007819.P154293816116072035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066382 ⌈(Nat.xor 1 n : ℚ) / 2⌉.toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007819.P154293816116072035

/-! ## A007819.P2812984017390208408

`∑[(A007318(n)%2)!*Δ[A066382(n)]]`
-/

namespace A007819.P2812984017390208408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066382 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A007318 n) 2).toNat : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007819.P2812984017390208408

/-! ## A007819.P17380820740245348265

`∑[A000041(n²%(n+1))*Δ[A066382(n)]]`
-/

namespace A007819.P17380820740245348265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066382 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n ^ 2 % (n + 1)) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007819.P17380820740245348265

/-!
# A007820: Stirling numbers of second kind S(2n,n).

The programs for A007820, there is no canonical definition to state claims against.
-/

/-! ## A007820.P13777414958743217232

`A226703(∑[n])`
-/

namespace A007820.P13777414958743217232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226703 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007820.P13777414958743217232

/-! ## A007820.P7644135404187476245

`A343278(2*n)`
-/

namespace A007820.P7644135404187476245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343278 (2 * n)

end

end A007820.P7644135404187476245

/-! ## A007820.P5877045181001495970

`A343279(2*n)`
-/

namespace A007820.P5877045181001495970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343279 (2 * n)

end

end A007820.P5877045181001495970

/-! ## A007820.P8256545541947185542

`A369381(∑[n]+n)`
-/

namespace A007820.P8256545541947185542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369381 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A007820.P8256545541947185542

/-! ## A007820.P15291783941770906480

`A293926(∑[n])`
-/

namespace A007820.P15291783941770906480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293926 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007820.P15291783941770906480

/-!
# A007821: Primes p such that pi(p) is not prime.

The programs for A007821, the canonical program `A007821.P9323765795172173596` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007821 has offset 1).

The definition of A007821 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A007821.P9323765795172173596

`A000040(A018252(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A007821

/-- `A000040(A018252(n+1))` -/
def P9323765795172173596.Spec : Prop :=
  ∀ n, P9323765795172173596.a n = A007821 (n + 1)

theorem P9323765795172173596.correct : P9323765795172173596.Spec := by
  intro n
  simp only [A007821, Nat.add_sub_cancel]

end A007821

/-! ## A007821.P990111378301947640

`p?[A141437(n+1)]`
-/

namespace A007821.P990111378301947640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A007821.P990111378301947640

namespace A007821

/-- `p?[A141437(n+1)]` -/
def P990111378301947640.Spec : Prop :=
  ∀ n, P990111378301947640.a n = A007821 (n + 1)

end A007821

/-! ## A007821.P6050414333752597174

`A001748(A141468(n+2))/3`
-/

namespace A007821.P6050414333752597174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A141468 (n + 2)).toNat : ℚ) / 3

end

end A007821.P6050414333752597174

namespace A007821

/-- `A001748(A141468(n+2))/3` -/
def P6050414333752597174.Spec : Prop :=
  ∀ n, P6050414333752597174.a n = (A007821 (n + 1) : ℚ)

end A007821

/-! ## A007821.P14064272777787384995

`A309649(n+1)+A000007(n)`
-/

namespace A007821.P14064272777787384995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309649 (n + 1) + A000007 n

end

end A007821.P14064272777787384995

namespace A007821

/-- `A309649(n+1)+A000007(n)` -/
def P14064272777787384995.Spec : Prop :=
  ∀ n, P14064272777787384995.a n = A007821 (n + 1)

end A007821

/-! ## A007821.P17570139132467701158

`A054977(n)*A309649(n+1)`
-/

namespace A007821.P17570139132467701158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A309649 (n + 1)

end

end A007821.P17570139132467701158

namespace A007821

/-- `A054977(n)*A309649(n+1)` -/
def P17570139132467701158.Spec : Prop :=
  ∀ n, P17570139132467701158.a n = A007821 (n + 1)

end A007821

/-! ## A007821.P12756567330638668074

`A001749(∑[A054546(n+1)])/4`
-/

namespace A007821.P12756567330638668074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 4

end

end A007821.P12756567330638668074

namespace A007821

/-- `A001749(∑[A054546(n+1)])/4` -/
def P12756567330638668074.Spec : Prop :=
  ∀ n, P12756567330638668074.a n = (A007821 (n + 1) : ℚ)

end A007821

/-! ## A007821.P1215789138661858867

`A001749(comp[A182986(n+1)])/4`
-/

namespace A007821.P1215789138661858867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℚ) / 4

end

end A007821.P1215789138661858867

namespace A007821

/-- `A001749(comp[A182986(n+1)])/4` -/
def P1215789138661858867.Spec : Prop :=
  ∀ n, P1215789138661858867.a n = (A007821 (n + 1) : ℚ)

end A007821

/-! ## A007821.P6152202416652940369

`A168285(n+1)+A018252(n+1)`
-/

namespace A007821.P6152202416652940369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168285 (n + 1) + A018252 (n + 1)

end

end A007821.P6152202416652940369

namespace A007821

/-- `A168285(n+1)+A018252(n+1)` -/
def P6152202416652940369.Spec : Prop :=
  ∀ n, P6152202416652940369.a n = A007821 (n + 1)

end A007821

/-! ## A007821.P7151189786631961152

`A168271(n+1)+A144570(n+1)`
-/

namespace A007821.P7151189786631961152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168271 (n + 1) + A144570 (n + 1)

end

end A007821.P7151189786631961152

namespace A007821

/-- `A168271(n+1)+A144570(n+1)` -/
def P7151189786631961152.Spec : Prop :=
  ∀ n, P7151189786631961152.a n = A007821 (n + 1)

end A007821

/-! ## A007821.P16259088832741421236

`A168285(n+1)+A141468(n+2)`
-/

namespace A007821.P16259088832741421236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168285 (n + 1) + A141468 (n + 2)

end

end A007821.P16259088832741421236

namespace A007821

/-- `A168285(n+1)+A141468(n+2)` -/
def P16259088832741421236.Spec : Prop :=
  ∀ n, P16259088832741421236.a n = A007821 (n + 1)

end A007821

/-! ## A007821.P12790878011196608458

`A001749(comp[A006093(n+1)]+1)/4`
-/

namespace A007821.P12790878011196608458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) : ℚ) / 4

end

end A007821.P12790878011196608458

namespace A007821

/-- `A001749(comp[A006093(n+1)]+1)/4` -/
def P12790878011196608458.Spec : Prop :=
  ∀ n, P12790878011196608458.a n = (A007821 (n + 1) : ℚ)

end A007821

/-! ## A007821.P9089598767017944398

`A001749(comp[A063872(n+1)]+1)/4`
-/

namespace A007821.P9089598767017944398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063872 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) : ℚ) / 4

end

end A007821.P9089598767017944398

namespace A007821

/-- `A001749(comp[A063872(n+1)]+1)/4` -/
def P9089598767017944398.Spec : Prop :=
  ∀ n, P9089598767017944398.a n = (A007821 (n + 1) : ℚ)

end A007821

/-! ## A007821.P15069863799102542763

`A045319(A060462(n+1))`
-/

namespace A007821.P15069863799102542763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A060462 (n + 1)).toNat

end

end A007821.P15069863799102542763

namespace A007821

/-- `A045319(A060462(n+1))` -/
def P15069863799102542763.Spec : Prop :=
  ∀ n, P15069863799102542763.a n = A007821 (n + 1)

end A007821

/-! ## A007821.P16230992005540826079

`A000040(Δ[A051349(n)])`
-/

namespace A007821.P16230992005540826079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (n + 1) - f1 n).toNat

end

end A007821.P16230992005540826079

namespace A007821

/-- `A000040(Δ[A051349(n)])` -/
def P16230992005540826079.Spec : Prop :=
  ∀ n, P16230992005540826079.a n = A007821 (n + 1)

end A007821

/-! ## A007821.P13748624452346621105

`A068519(A065090(n+2))`
-/

namespace A007821.P13748624452346621105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068519 (A065090 (n + 2)).toNat

end

end A007821.P13748624452346621105

namespace A007821

/-- `A068519(A065090(n+2))` -/
def P13748624452346621105.Spec : Prop :=
  ∀ n, P13748624452346621105.a n = A007821 (n + 1)

end A007821

/-! ## A007821.P14946977980993543305

`A000040(A141468(n+2))`
-/

namespace A007821.P14946977980993543305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A141468 (n + 2)).toNat

end

end A007821.P14946977980993543305

namespace A007821

/-- `A000040(A141468(n+2))` -/
def P14946977980993543305.Spec : Prop :=
  ∀ n, P14946977980993543305.a n = A007821 (n + 1)

end A007821

/-! ## A007821.P9316258201588174481

`A000040(sqrt(A062312(n+1)))`
-/

namespace A007821.P9316258201588174481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (Real.sqrt (A062312 (n + 1) : ℝ))).toNat

end

end A007821.P9316258201588174481

namespace A007821

/-- `A000040(sqrt(A062312(n+1)))` -/
def P9316258201588174481.Spec : Prop :=
  ∀ n, P9316258201588174481.a n = A007821 (n + 1)

end A007821

/-! ## A007821.P4833850041370132519

`A000040(sqrt(A161753(n+2)))`
-/

namespace A007821.P4833850041370132519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (Real.sqrt (A161753 (n + 2) : ℝ))).toNat

end

end A007821.P4833850041370132519

namespace A007821

/-- `A000040(sqrt(A161753(n+2)))` -/
def P4833850041370132519.Spec : Prop :=
  ∀ n, P4833850041370132519.a n = A007821 (n + 1)

end A007821

/-! ## A007821.P3919430517791482200

`A000040(∑[A054546(n+1)])`
-/

namespace A007821.P3919430517791482200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A007821.P3919430517791482200

namespace A007821

/-- `A000040(∑[A054546(n+1)])` -/
def P3919430517791482200.Spec : Prop :=
  ∀ n, P3919430517791482200.a n = A007821 (n + 1)

end A007821

/-! ## A007821.P5359093390930336718

`A008578(A018252(n+1)+1)`
-/

namespace A007821.P5359093390930336718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A018252 (n + 1) + 1).toNat

end

end A007821.P5359093390930336718

namespace A007821

/-- `A008578(A018252(n+1)+1)` -/
def P5359093390930336718.Spec : Prop :=
  ∀ n, P5359093390930336718.a n = A007821 (n + 1)

end A007821

/-!
# A007822: Number of symmetric foldings of 2n+1 stamps.

The programs for A007822, there is no canonical definition to state claims against.
-/

/-! ## A007822.P9958685326297364398

`ceil(A001010(2*n+1)/2)`
-/

namespace A007822.P9958685326297364398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001010 (2 * n + 1) : ℚ) / 2⌉

end

end A007822.P9958685326297364398

/-! ## A007822.P14246640993657742889

`A001010(2*n+1)/gcd(2, A000010(n+2))`
-/

namespace A007822.P14246640993657742889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001010 (2 * n + 1) : ℚ) / (Int.gcd 2 (A000010 (n + 2)) : ℚ)

end

end A007822.P14246640993657742889

/-! ## A007822.P18442126581445238821

`A001010(2*n+1)/A020639(A005598(n))`
-/

namespace A007822.P18442126581445238821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001010 (2 * n + 1) : ℚ) / (A020639 (A005598 n).toNat : ℚ)

end

end A007822.P18442126581445238821

/-! ## A007822.P8009022473913202168

`A001010(2*n+1)/A001031(A001031(n+1))`
-/

namespace A007822.P8009022473913202168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001010 (2 * n + 1) : ℚ) / (A001031 (A001031 (n + 1)).toNat : ℚ)

end

end A007822.P8009022473913202168

/-!
# A007823: A007824(n)/16.

The programs for A007823, there is no canonical definition to state claims against.
-/

/-! ## A007823.P5559339951214479880

`A007824(n)/16`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A007823.P5559339951214479880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007824 n : ℚ) / 16

end

end A007823.P5559339951214479880

/-! ## A007823.P13606287725407810441

`A159699(a(n-1))` with `a(0)=1`
-/

namespace A007823.P13606287725407810441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A159699 (a (n - 1)).toNat

end

end A007823.P13606287725407810441

/-! ## A007823.P15673398588382481997

`A006520(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A007823.P15673398588382481997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006520 (a (n - 1)).toNat + a (n - 1)

end

end A007823.P15673398588382481997

/-!
# A007824: a(n) = f(a(n-1)), with f(m) = Sum i*b(i)*2^(i-1), m = Sum b(i)*2^i, and starting value 16.

The programs for A007824, there is no canonical definition to state claims against.
-/

/-! ## A007824.P12720587470976208428

`16*A007823(n)`
-/

namespace A007824.P12720587470976208428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A007823 n

end

end A007824.P12720587470976208428

/-! ## A007824.P16216218728672748473

`A008598(A007823(n))`
-/

namespace A007824.P16216218728672748473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008598 (A007823 n).toNat

end

end A007824.P16216218728672748473

/-! ## A007824.P5270136259040496938

`A136013(a(n-1))` with `a(0)=16`
-/

namespace A007824.P5270136259040496938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16] fun n a =>
  A136013 (a (n - 1)).toNat

end

end A007824.P5270136259040496938

/-!
# A007825: Number of n step self-avoiding walks on 3 X infinity grid starting from (0,1).

The programs for A007825, there is no canonical definition to state claims against.
-/

/-! ## A007825.P11827524431309880976

`∑[∑[A293754(A211660(n+1))]]`
-/

namespace A007825.P11827524431309880976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293754 (A211660 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007825.P11827524431309880976

/-! ## A007825.P719555977785647355

`3*2^n-2-A053824(A056312(n+1))`
-/

namespace A007825.P719555977785647355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * 2 ^ n : ℤ) - 2 - A053824 (A056312 (n + 1)).toNat

end

end A007825.P719555977785647355

/-! ## A007825.P5267821877131894534

`A364158(A000051(n)-A336970(n))`
-/

namespace A007825.P5267821877131894534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364158 (A000051 n - A336970 n).toNat

end

end A007825.P5267821877131894534

/-!
# A007826: Numbered stops on the Market-Frankford rapid transit (SEPTA) railway line in Philadelphia, PA USA.

The programs for A007826, there is no canonical definition to state claims against.
-/

/-! ## A007826.P13706458100553092272

`A270831(A249515(n+2))+A161696(n)`
-/

namespace A007826.P13706458100553092272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270831 (A249515 (n + 2)).toNat + A161696 n

end

end A007826.P13706458100553092272

/-!
# A007827: Number of homeomorphically irreducible (or series-reduced) trees with n pendant nodes, or continua with n non-cut points, or leaves.

The programs for A007827, there is no canonical definition to state claims against.
-/

/-! ## A007827.P15278039585178459474

`A339780(A133263(n)-1)`
-/

namespace A007827.P15278039585178459474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339780 (A133263 n - 1).toNat

end

end A007827.P15278039585178459474

/-! ## A007827.P14730393854300734726

`A339780(A253145(n)-n)`
-/

namespace A007827.P14730393854300734726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339780 (A253145 n - (n : ℤ)).toNat

end

end A007827.P14730393854300734726

/-! ## A007827.P1708075972452409347

`A339780(A057427(n)+∑[n])`
-/

namespace A007827.P1708075972452409347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339780 (A057427 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A007827.P1708075972452409347

/-! ## A007827.P7437622885447000909

`A339780(A238531(n+1)-1)`
-/

namespace A007827.P7437622885447000909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339780 (A238531 (n + 1) - 1).toNat

end

end A007827.P7437622885447000909

/-! ## A007827.P17986309856809875894

`A339780(A134869(n+1)-(n+1))`
-/

namespace A007827.P17986309856809875894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339780 (A134869 (n + 1) - (n + 1 : ℤ)).toNat

end

end A007827.P17986309856809875894

/-! ## A007827.P15421478815773547584

`A339780(A000124(n)*A057427(n))`
-/

namespace A007827.P15421478815773547584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339780 (A000124 n * A057427 n).toNat

end

end A007827.P15421478815773547584

/-! ## A007827.P4292428882100118652

`A339780(A000124(n)%A046691(n))`
-/

namespace A007827.P4292428882100118652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339780 (Int.tmod (A000124 n) (A046691 n)).toNat

end

end A007827.P4292428882100118652

/-! ## A007827.P4982511569586697479

`A339780(A034856(n+1)-A004277(n))`
-/

namespace A007827.P4982511569586697479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339780 (A034856 (n + 1) - A004277 n).toNat

end

end A007827.P4982511569586697479

/-! ## A007827.P5379390529940668554

`A339780(A000124(n)+1-A057427(n))`
-/

namespace A007827.P5379390529940668554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339780 (A000124 n + (1 - A057427 n)).toNat

end

end A007827.P5379390529940668554

/-! ## A007827.P4551554368582158709

`A339780(1-(A057427(n)-A000124(n)))`
-/

namespace A007827.P4551554368582158709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339780 (1 - (A057427 n - A000124 n)).toNat

end

end A007827.P4551554368582158709

/-!
# A007828: Largest t such that a spherical t-design with n points exists in 3 dimensions.

The programs for A007828, there is no canonical definition to state claims against.
-/

/-! ## A007828.P6955690699831344452

`∑{e}[∑[A290344(n)], A000010(#)]`
-/

namespace A007828.P6955690699831344452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290344 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000010 (Nat.factorization (f1 n).natAbs p)

end

end A007828.P6955690699831344452

/-! ## A007828.P11764114527012934641

`∑{e}[∑[A290344(n)], A003056(#)]`
-/

namespace A007828.P11764114527012934641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290344 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003056 (Nat.factorization (f1 n).natAbs p)

end

end A007828.P11764114527012934641

/-! ## A007828.P14852857932477138736

`A244221(A001296(n))+A241568(n+1)`
-/

namespace A007828.P14852857932477138736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244221 (A001296 n).toNat + A241568 (n + 1)

end

end A007828.P14852857932477138736

/-! ## A007828.P7453436863041555242

`A305079(A002380(n)+1)`
-/

namespace A007828.P7453436863041555242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (A002380 n + 1).toNat

end

end A007828.P7453436863041555242

/-! ## A007828.P9894352575675509609

`A056239(n+2)-A124778(2*(n+1))`
-/

namespace A007828.P9894352575675509609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 2) - A124778 (2 * (n + 1))

end

end A007828.P9894352575675509609

/-!
# A007829: From random walks on complete directed triangle.

The programs for A007829, there is no canonical definition to state claims against.
-/

/-! ## A007829.P4105725612569441010

`A066360(A389411(n))`
-/

namespace A007829.P4105725612569441010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066360 (A389411 n).toNat

end

end A007829.P4105725612569441010

/-! ## A007829.P3539744932661911598

`∑[A236241(A275605(n))]`
-/

namespace A007829.P3539744932661911598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236241 (A275605 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007829.P3539744932661911598

/-! ## A007829.P14047633099435306101

`floor(n/4)*A002262(A215394(n+1))`
-/

namespace A007829.P14047633099435306101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋ * A002262 (A215394 (n + 1)).toNat

end

end A007829.P14047633099435306101

/-! ## A007829.P10999071864818361942

`A351498(n+1)%Δ[A006549(n+1)]`
-/

namespace A007829.P10999071864818361942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351498 (n + 1)) (f1 (n + 1) - f1 n)

end

end A007829.P10999071864818361942

/-! ## A007829.P14683428094929628087

`and(record[A000790(n+4)], A000773(n+1))`
-/

namespace A007829.P14683428094929628087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000790 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A000773 (n + 1))

end

end A007829.P14683428094929628087

/-!
# A007830: a(n) = (n+3)^n.

The programs for A007830, the canonical program `A007830.P10533073876938541573` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007830 has offset 0).

The definition of A007830 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+3)^n` (program `A007830.P10533073876938541573`, by `A007830.P10533073876938541573.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007830.P10533073876938541573

`(n+3)^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007830

/-- `(n+3)^n` -/
def P10533073876938541573.Spec : Prop :=
  ∀ n, (P10533073876938541573.a n : ℤ) = A007830 n

theorem P10533073876938541573.correct : P10533073876938541573.Spec := by
  intro n
  simp only [A007830]

end A007830

/-!
# A007831: Number of edge-labeled series-reduced trees with n nodes.

The programs for A007831, there is no canonical definition to state claims against.
-/

/-! ## A007831.P16046471240772119508

`ceil(A005512(n+2)/(n+2))`
-/

namespace A007831.P16046471240772119508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005512 (n + 2) : ℚ) / (n + 2 : ℚ)⌉

end

end A007831.P16046471240772119508

/-! ## A007831.P13573286083900694318

`A005512(n+2)/A065475(n+1)`
-/

namespace A007831.P13573286083900694318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005512 (n + 2) : ℚ) / (A065475 (n + 1) : ℚ)

end

end A007831.P13573286083900694318

/-! ## A007831.P11368038423229544563

`A005512(n+2)/(A008486(n)-A004275(n))`
-/

namespace A007831.P11368038423229544563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005512 (n + 2) : ℚ) / (A008486 n - A004275 n : ℚ)

end

end A007831.P11368038423229544563

/-! ## A007831.P15385152663675630654

`A331437(∑[n+2])/A065475(n+1)`
-/

namespace A007831.P15385152663675630654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331437 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A065475 (n + 1) : ℚ)

end

end A007831.P15385152663675630654

/-! ## A007831.P12485169359462485606

`A331437(∑[n+2])/A052938(A004273(n))`
-/

namespace A007831.P12485169359462485606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331437 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A052938 (A004273 n).toNat : ℚ)

end

end A007831.P12485169359462485606

/-!
# A007832: Number of point labeled 5,6-free two-graphs with n nodes.

The programs for A007832, there is no canonical definition to state claims against.
-/

/-! ## A007832.P4472306472515606711

`A255350(floor(10^(n-1)))`
-/

namespace A007832.P4472306472515606711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255350 ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

end

end A007832.P4472306472515606711

/-! ## A007832.P1410143235290949405

`A323240(A062871(n))`
-/

namespace A007832.P1410143235290949405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323240 (A062871 n).toNat

end

end A007832.P1410143235290949405

/-!
# A007833: Number of point-labeled reduced two-graphs with n nodes.

The programs for A007833, there is no canonical definition to state claims against.
-/

/-! ## A007833.P12154432724766492450

`A006024(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A007833.P12154432724766492450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006024 n - (n : ℤ) * a (n - 1)

end

end A007833.P12154432724766492450

/-! ## A007833.P17297886097144978679

`A154448(floor(n/2)^round(2^(n-2)))`
-/

namespace A007833.P17297886097144978679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154448 (SequenceMachineLib.roundAway ((⌊(n : ℚ) / 2⌋ : ℚ) ^ (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)) : ℤ))).toNat

end

end A007833.P17297886097144978679

/-!
# A007834: Number of point labeled reduced 5-free two-graphs with n nodes.

The programs for A007834, there is no canonical definition to state claims against.
-/

/-! ## A007834.P16883747216873578904

`A058381(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A007834.P16883747216873578904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A058381 n - (n : ℤ) * a (n - 1)

end

end A007834.P16883747216873578904

/-!
# A007835: Number of unordered sets of pairs (in-degree, out-degree) for nodes of directed trees on n unlabeled nodes (the edges are directed in arbitrary directions, the tree is unrooted).

The programs for A007835, there is no canonical definition to state claims against.
-/

/-! ## A007835.P3932105772003249647

`A209399(n)+A073188(A275871(n))`
-/

namespace A007835.P3932105772003249647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209399 n + A073188 (A275871 n).toNat

end

end A007835.P3932105772003249647

/-! ## A007835.P468998986519709236

`A111495(a(n-1))+n+1` with `a(0)=1, a(1)=1`
-/

namespace A007835.P468998986519709236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A111495 (a (n - 1)).toNat + (n + 1 : ℤ)

end

end A007835.P468998986519709236

/-! ## A007835.P11078346076509023479

`A183423(A067687(n))`
-/

namespace A007835.P11078346076509023479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183423 (A067687 n).toNat

end

end A007835.P11078346076509023479

/-!
# A007836: Springer numbers associated with symplectic group.

The programs for A007836, there is no canonical definition to state claims against.
-/

/-! ## A007836.P14348105001506297626

`2*A000828(n)-A001586(n)`
-/

namespace A007836.P14348105001506297626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000828 n - A001586 n

end

end A007836.P14348105001506297626

/-! ## A007836.P9823706219973661746

`or(1, A000831(n)-A001586(n))`
-/

namespace A007836.P9823706219973661746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000831 n - A001586 n)

end

end A007836.P9823706219973661746

/-! ## A007836.P16081048181256265041

`2*A000828(n)-abs(A212435(n))`
-/

namespace A007836.P16081048181256265041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000828 n - |A212435 n|

end

end A007836.P16081048181256265041

/-! ## A007836.P9145989398995827423

`A000831(A028310(n))-A001586(n)`
-/

namespace A007836.P9145989398995827423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000831 (A028310 n).toNat - A001586 n

end

end A007836.P9145989398995827423

/-! ## A007836.P8284666008810201356

`A000831(A065033(2*n))-A001586(n)`
-/

namespace A007836.P8284666008810201356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000831 (A065033 (2 * n)).toNat - A001586 n

end

end A007836.P8284666008810201356

/-! ## A007836.P4785587757489363813

`A000831(A000007(n)+n)-A001586(n)`
-/

namespace A007836.P4785587757489363813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000831 (A000007 n + (n : ℤ)).toNat - A001586 n

end

end A007836.P4785587757489363813

/-! ## A007836.P7934222847547929380

`A000007(n)-(A001586(n)-A000831(n))`
-/

namespace A007836.P7934222847547929380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - (A001586 n - A000831 n)

end

end A007836.P7934222847547929380

/-! ## A007836.P13207925246284873187

`A000828(n)-(A001586(n)-A000828(A028310(n)))`
-/

namespace A007836.P13207925246284873187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000828 n - (A001586 n - A000828 (A028310 n).toNat)

end

end A007836.P13207925246284873187

/-!
# A007837: Number of partitions of n-set with distinct block sizes.

The programs for A007837, there is no canonical definition to state claims against.
-/

/-! ## A007837.P6632562393906553714

`A327869(∑[n])`
-/

namespace A007837.P6632562393906553714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327869 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007837.P6632562393906553714

/-! ## A007837.P5313942638302088833

`A327876(n)+A032311(n)`
-/

namespace A007837.P5313942638302088833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327876 n + A032311 n

end

end A007837.P5313942638302088833

/-! ## A007837.P15305905732389623900

`A032298(n)-A327876(n)`
-/

namespace A007837.P15305905732389623900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032298 n - A327876 n

end

end A007837.P15305905732389623900

/-! ## A007837.P772405025434662821

`(A032311(n)+A032298(n))/2`
-/

namespace A007837.P772405025434662821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032311 n + A032298 n : ℚ) / 2

end

end A007837.P772405025434662821

/-! ## A007837.P17838991562326209769

`or(A000007(n), A327869(A000217(n)))`
-/

namespace A007837.P17838991562326209769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A327869 (A000217 n).toNat)

end

end A007837.P17838991562326209769

/-! ## A007837.P3547071379415679773

`A327869(A000217(n))+A000007(A005408(n))`
-/

namespace A007837.P3547071379415679773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327869 (A000217 n).toNat + A000007 (A005408 n).toNat

end

end A007837.P3547071379415679773

/-! ## A007837.P18177149033705173296

`A327869(A000217(n))+A000007(A016789(n))`
-/

namespace A007837.P18177149033705173296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327869 (A000217 n).toNat + A000007 (A016789 n).toNat

end

end A007837.P18177149033705173296

/-! ## A007837.P8039756860161621097

`A327869(A000217(n))+A000007(A016813(n))`
-/

namespace A007837.P8039756860161621097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327869 (A000217 n).toNat + A000007 (A016813 n).toNat

end

end A007837.P8039756860161621097

/-! ## A007837.P14949744569368232672

`A327869(A000217(n))+A247133(A016885(n))`
-/

namespace A007837.P14949744569368232672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327869 (A000217 n).toNat + A247133 (A016885 n).toNat

end

end A007837.P14949744569368232672

/-! ## A007837.P6903992783700870374

`A001222(A060264(n))*A327869(A000217(n))`
-/

namespace A007837.P6903992783700870374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A060264 n).toNat * A327869 (A000217 n).toNat

end

end A007837.P6903992783700870374

/-! ## A007837.P12898160962317355498

`A327869(A000096(n))*A327869(A000217(n))`
-/

namespace A007837.P12898160962317355498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327869 (A000096 n).toNat * A327869 (A000217 n).toNat

end

end A007837.P12898160962317355498

/-! ## A007837.P8390479152218738591

`A032313(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A007837.P8390479152218738591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A032313 n - (n : ℤ) * a (n - 1)

end

end A007837.P8390479152218738591

/-! ## A007837.P127652157871262329

`A327876(n)+A327876(n+1)/(n+1)`
-/

namespace A007837.P127652157871262329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327876 n : ℚ) + (A327876 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A007837.P127652157871262329

/-!
# A007838: Number of permutations of n elements with distinct cycle lengths.

The programs for A007838, there is no canonical definition to state claims against.
-/

/-! ## A007838.P14343068587672017618

`n!-A351901(n)`
-/

namespace A007838.P14343068587672017618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A351901 n

end

end A007838.P14343068587672017618

/-! ## A007838.P1814839790003033546

`A392471(∑[abs(1-n)])`
-/

namespace A007838.P1814839790003033546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392471 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A007838.P1814839790003033546

/-! ## A007838.P13109332062549379602

`A000142(n)-A351901(n)`
-/

namespace A007838.P13109332062549379602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A351901 n

end

end A007838.P13109332062549379602

/-! ## A007838.P7148560733262969793

`A000142(n)/A322381(n)*A322380(n)`
-/

namespace A007838.P7148560733262969793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A322381 n : ℚ) * (A322380 n : ℚ)

end

end A007838.P7148560733262969793

/-! ## A007838.P1815889330897394293

`A129177(A180415(n+1))`
-/

namespace A007838.P1815889330897394293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129177 (A180415 (n + 1)).toNat

end

end A007838.P1815889330897394293

/-! ## A007838.P6858627583195646184

`A129177(A000125(n)+n)`
-/

namespace A007838.P6858627583195646184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129177 (A000125 n + (n : ℤ)).toNat

end

end A007838.P6858627583195646184

/-! ## A007838.P13820326025064388568

`A129177(∑[A133263(n)-n])`
-/

namespace A007838.P13820326025064388568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129177 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A007838.P13820326025064388568

/-! ## A007838.P16999184923964921750

`A129177(A000292(n+1)-n²)`
-/

namespace A007838.P16999184923964921750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129177 (A000292 (n + 1) - (n ^ 2 : ℤ)).toNat

end

end A007838.P16999184923964921750

/-!
# A007840: Number of factorizations of permutations of n letters into ordered cycles.

The programs for A007840, there is no canonical definition to state claims against.
-/

/-! ## A007840.P1101807101341398204

`A355652(∑[n]+n)`
-/

namespace A007840.P1101807101341398204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355652 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A007840.P1101807101341398204

/-! ## A007840.P15093741953886897656

`A355665(∑[n]+n)`
-/

namespace A007840.P15093741953886897656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355665 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A007840.P15093741953886897656

/-! ## A007840.P3535230317446736078

`A357881(∑[n+1]+n)`
-/

namespace A007840.P3535230317446736078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357881 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A007840.P3535230317446736078

/-! ## A007840.P15418030493284087011

`A052835(n)-A104150(n)`
-/

namespace A007840.P15418030493284087011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052835 n - A104150 n

end

end A007840.P15418030493284087011

/-! ## A007840.P3458540213745305100

`and(-1, A355652(A000096(n)))`
-/

namespace A007840.P3458540213745305100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A355652 (A000096 n).toNat)

end

end A007840.P3458540213745305100

/-! ## A007840.P3891742731904112908

`A098361(A000124(n))+A052864(n)`
-/

namespace A007840.P3891742731904112908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 (A000124 n).toNat + A052864 n

end

end A007840.P3891742731904112908

/-! ## A007840.P1490894885225966742

`A104150(A028310(n))+A052864(n)`
-/

namespace A007840.P1490894885225966742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 (A028310 n).toNat + A052864 n

end

end A007840.P1490894885225966742

/-! ## A007840.P11228075031769183600

`lcm(A266871(n), A355652(A000096(n)))`
-/

namespace A007840.P11228075031769183600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A266871 n) (A355652 (A000096 n).toNat)

end

end A007840.P11228075031769183600

/-! ## A007840.P12081650559143715454

`A000142(n)/A323340(n)*A323339(n)`
-/

namespace A007840.P12081650559143715454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A323340 n : ℚ) * (A323339 n : ℚ)

end

end A007840.P12081650559143715454

/-! ## A007840.P18115153425941199698

`A079640(∑[abs(1-n)])`
-/

namespace A007840.P18115153425941199698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079640 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A007840.P18115153425941199698

/-!
# A007841: Number of factorizations of permutations of n letters into cycles in nondecreasing length order.

The programs for A007841, there is no canonical definition to state claims against.
-/

/-! ## A007841.P2117938327841046104

`A000142(n)/A322365(n)*A322364(n)`
-/

namespace A007841.P2117938327841046104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A322365 n : ℚ) * (A322364 n : ℚ)

end

end A007841.P2117938327841046104

/-! ## A007841.P8477807036977372309

`A249480(∑[n])`
-/

namespace A007841.P8477807036977372309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249480 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007841.P8477807036977372309

/-! ## A007841.P14811239161214225129

`A249480((n²+n)/2)+val(n²+1, 3)`
-/

namespace A007841.P14811239161214225129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249480 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat + (SequenceMachineLib.valuation (n ^ 2 + 1) 3 : ℤ)

end

end A007841.P14811239161214225129

/-! ## A007841.P3453542146477804088

`A249480(A000217(n))+char[12]`
-/

namespace A007841.P3453542146477804088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249480 (A000217 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A007841.P3453542146477804088

/-! ## A007841.P16986379023206368619

`abs(record[A249480(n)-A000038(n)])`
-/

namespace A007841.P16986379023206368619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249480 n - A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A007841.P16986379023206368619

/-!
# A007843: Least positive integer k for which 2^n divides k!.

The programs for A007843, the canonical program `A007843.P17090837649853726909` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007843 has offset 0).

The definition of A007843 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007843.P1113266734198395997

`comp[a(n-1)+val(n, 2)]-n` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A007843.P1113266734198395997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n f1 =>
  f1 (n - 1) + SequenceMachineLib.valuation n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A007843.P1113266734198395997

namespace A007843

/-- `comp[a(n-1)+val(n, 2)]-n` -/
def P1113266734198395997.Spec : Prop :=
  ∀ n, P1113266734198395997.a n = A007843 n

end A007843

/-! ## A007843.P11371977903342922361

`comp[a(floor(n/2))+n]+1-n` with `a(0)=1, a(1)=1`
-/

namespace A007843.P11371977903342922361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1 : ℤ) - (n : ℤ)

end

end A007843.P11371977903342922361

namespace A007843

/-- `comp[a(floor(n/2))+n]+1-n` -/
def P11371977903342922361.Spec : Prop :=
  ∀ n, P11371977903342922361.a n = A007843 n

end A007843

/-! ## A007843.P9897923374024512053

`comp[A005187(n+1)]-n+1`
-/

namespace A007843.P9897923374024512053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) + 1

end

end A007843.P9897923374024512053

namespace A007843

/-- `comp[A005187(n+1)]-n+1` -/
def P9897923374024512053.Spec : Prop :=
  ∀ n, P9897923374024512053.a n = A007843 n

end A007843

/-! ## A007843.P17090837649853726909

`A100661(A028310(n))+n`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A007843

/-- `A100661(A028310(n))+n` -/
def P17090837649853726909.Spec : Prop :=
  ∀ n, P17090837649853726909.a n = A007843 n

theorem P17090837649853726909.correct : P17090837649853726909.Spec := by
  intro n
  simp only [A007843]

end A007843

/-! ## A007843.P2647247271015369034

`A004277(∑[char[A101925(n)]])`
-/

namespace A007843.P2647247271015369034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101925 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007843.P2647247271015369034

namespace A007843

/-- `A004277(∑[char[A101925(n)]])` -/
def P2647247271015369034.Spec : Prop :=
  ∀ n, P2647247271015369034.a n = A007843 n

end A007843

/-! ## A007843.P17019101327008386322

`A080578(n+1)-A087156(n+1)`
-/

namespace A007843.P17019101327008386322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080578 (n + 1) - A087156 (n + 1)

end

end A007843.P17019101327008386322

namespace A007843

/-- `A080578(n+1)-A087156(n+1)` -/
def P17019101327008386322.Spec : Prop :=
  ∀ n, P17019101327008386322.a n = A007843 n

end A007843

/-! ## A007843.P8663800542956844996

`(A057427(n)+1)*A046699(n+1)`
-/

namespace A007843.P8663800542956844996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A046699 (n + 1)

end

end A007843.P8663800542956844996

namespace A007843

/-- `(A057427(n)+1)*A046699(n+1)` -/
def P8663800542956844996.Spec : Prop :=
  ∀ n, P8663800542956844996.a n = A007843 n

end A007843

/-! ## A007843.P4178382687665534767

`2*A046699(n+1)-A000007(n)`
-/

namespace A007843.P4178382687665534767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046699 (n + 1) - A000007 n

end

end A007843.P4178382687665534767

namespace A007843

/-- `2*A046699(n+1)-A000007(n)` -/
def P4178382687665534767.Spec : Prop :=
  ∀ n, P4178382687665534767.a n = A007843 n

end A007843

/-! ## A007843.P13117043456463990124

`A020639(A004277(n))*A046699(n+1)`
-/

namespace A007843.P13117043456463990124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A046699 (n + 1)

end

end A007843.P13117043456463990124

namespace A007843

/-- `A020639(A004277(n))*A046699(n+1)` -/
def P13117043456463990124.Spec : Prop :=
  ∀ n, P13117043456463990124.a n = A007843 n

end A007843

/-! ## A007843.P15853300774947545780

`A004277(A046699(n+1)*A057427(n))`
-/

namespace A007843.P15853300774947545780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A046699 (n + 1) * A057427 n).toNat

end

end A007843.P15853300774947545780

namespace A007843

/-- `A004277(A046699(n+1)*A057427(n))` -/
def P15853300774947545780.Spec : Prop :=
  ∀ n, P15853300774947545780.a n = A007843 n

end A007843

/-! ## A007843.P932433208099366119

`A004277(A046699(n+1)%A004277(n))`
-/

namespace A007843.P932433208099366119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (Int.tmod (A046699 (n + 1)) (A004277 n)).toNat

end

end A007843.P932433208099366119

namespace A007843

/-- `A004277(A046699(n+1)%A004277(n))` -/
def P932433208099366119.Spec : Prop :=
  ∀ n, P932433208099366119.a n = A007843 n

end A007843

/-! ## A007843.P2609891447848294528

`A004277(A046699(n+1)+A057427(n)-1)`
-/

namespace A007843.P2609891447848294528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A046699 (n + 1) + (A057427 n - 1)).toNat

end

end A007843.P2609891447848294528

namespace A007843

/-- `A004277(A046699(n+1)+A057427(n)-1)` -/
def P2609891447848294528.Spec : Prop :=
  ∀ n, P2609891447848294528.a n = A007843 n

end A007843

/-! ## A007843.P3089680870590295175

`A034444(A034444(n+1))*A046699(n+1)`
-/

namespace A007843.P3089680870590295175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A034444 (n + 1)).toNat * A046699 (n + 1)

end

end A007843.P3089680870590295175

namespace A007843

/-- `A034444(A034444(n+1))*A046699(n+1)` -/
def P3089680870590295175.Spec : Prop :=
  ∀ n, P3089680870590295175.a n = A007843 n

end A007843

/-! ## A007843.P14234287230653652276

`A046699(n+1)+∑[A079559(n)]-A079559(n)`
-/

namespace A007843.P14234287230653652276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - A079559 n)

end

end A007843.P14234287230653652276

namespace A007843

/-- `A046699(n+1)+∑[A079559(n)]-A079559(n)` -/
def P14234287230653652276.Spec : Prop :=
  ∀ n, P14234287230653652276.a n = A007843 n

end A007843

/-! ## A007843.P14241649119893811668

`A046699(n+1)+A046699(n+2)-A079559(n)`
-/

namespace A007843.P14241649119893811668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (n + 1) + (A046699 (n + 2) - A079559 n)

end

end A007843.P14241649119893811668

namespace A007843

/-- `A046699(n+1)+A046699(n+2)-A079559(n)` -/
def P14241649119893811668.Spec : Prop :=
  ∀ n, P14241649119893811668.a n = A007843 n

end A007843

/-! ## A007843.P15326431527825066799

`A046698(n+2)*A046699(n+1)`
-/

namespace A007843.P15326431527825066799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 (n + 2) * A046699 (n + 1)

end

end A007843.P15326431527825066799

namespace A007843

/-- `A046698(n+2)*A046699(n+1)` -/
def P15326431527825066799.Spec : Prop :=
  ∀ n, P15326431527825066799.a n = A007843 n

end A007843

/-! ## A007843.P4833673910587837009

`A046699(A080578(n+1))`
-/

namespace A007843.P4833673910587837009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (A080578 (n + 1)).toNat

end

end A007843.P4833673910587837009

namespace A007843

/-- `A046699(A080578(n+1))` -/
def P4833673910587837009.Spec : Prop :=
  ∀ n, P4833673910587837009.a n = A007843 n

end A007843

/-! ## A007843.P1527594815960526648

`A046699(comp[A005187(n+1)]+1)`
-/

namespace A007843.P1527594815960526648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A007843.P1527594815960526648

namespace A007843

/-- `A046699(comp[A005187(n+1)]+1)` -/
def P1527594815960526648.Spec : Prop :=
  ∀ n, P1527594815960526648.a n = A007843 n

end A007843

/-! ## A007843.P802570881228570805

`A046699(2*A046699(n+1)+n)`
-/

namespace A007843.P802570881228570805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (2 * A046699 (n + 1) + (n : ℤ)).toNat

end

end A007843.P802570881228570805

namespace A007843

/-- `A046699(2*A046699(n+1)+n)` -/
def P802570881228570805.Spec : Prop :=
  ∀ n, P802570881228570805.a n = A007843 n

end A007843

/-!
# A007844: Least positive integer k for which 3^n divides k!.

The programs for A007844, the canonical program `A007844.P17370799922270474338` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007844 has offset 0).

The definition of A007844 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007844.P17370799922270474338

`A080579(n+1)-A087156(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007844

/-- `A080579(n+1)-A087156(n+1)` -/
def P17370799922270474338.Spec : Prop :=
  ∀ n, P17370799922270474338.a n = A007844 n

theorem P17370799922270474338.correct : P17370799922270474338.Spec := by
  intro n
  simp only [A007844]

end A007844

/-! ## A007844.P15446798646273317274

`A000007(n)+A080579(n+1)-(n+1)`
-/

namespace A007844.P15446798646273317274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A080579 (n + 1) - (n + 1 : ℤ))

end

end A007844.P15446798646273317274

namespace A007844

/-- `A000007(n)+A080579(n+1)-(n+1)` -/
def P15446798646273317274.Spec : Prop :=
  ∀ n, P15446798646273317274.a n = A007844 n

end A007844

/-! ## A007844.P17369857163448645813

`A080579(n+1)-(n+1)%A000603(n)`
-/

namespace A007844.P17369857163448645813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080579 (n + 1) - Int.tmod (n + 1 : ℤ) (A000603 n)

end

end A007844.P17369857163448645813

namespace A007844

/-- `A080579(n+1)-(n+1)%A000603(n)` -/
def P17369857163448645813.Spec : Prop :=
  ∀ n, P17369857163448645813.a n = A007844 n

end A007844

/-! ## A007844.P12813805628262046338

`A080579(n+1)-(A178334(A178334(n))+n)`
-/

namespace A007844.P12813805628262046338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080579 (n + 1) - (A178334 (A178334 n).toNat + (n : ℤ))

end

end A007844.P12813805628262046338

namespace A007844

/-- `A080579(n+1)-(A178334(A178334(n))+n)` -/
def P12813805628262046338.Spec : Prop :=
  ∀ n, P12813805628262046338.a n = A007844 n

end A007844

/-! ## A007844.P9661590183996249513

`A080579(n+1)-(n+1-A088157(A007953(n)))`
-/

namespace A007844.P9661590183996249513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080579 (n + 1) - ((n + 1 : ℤ) - A088157 (A007953 n).toNat)

end

end A007844.P9661590183996249513

namespace A007844

/-- `A080579(n+1)-(n+1-A088157(A007953(n)))` -/
def P9661590183996249513.Spec : Prop :=
  ∀ n, P9661590183996249513.a n = A007844 n

end A007844

/-! ## A007844.P2930229679429289936

`A080579(n+1)-A004524(A062545(n))`
-/

namespace A007844.P2930229679429289936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080579 (n + 1) - A004524 (A062545 n).toNat

end

end A007844.P2930229679429289936

namespace A007844

/-- `A080579(n+1)-A004524(A062545(n))` -/
def P2930229679429289936.Spec : Prop :=
  ∀ n, P2930229679429289936.a n = A007844 n

end A007844

/-! ## A007844.P9957124936429926983

`A065033(2*(A080579(n+1)-(n+1)))`
-/

namespace A007844.P9957124936429926983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * (A080579 (n + 1) - (n + 1 : ℤ))).toNat

end

end A007844.P9957124936429926983

namespace A007844

/-- `A065033(2*(A080579(n+1)-(n+1)))` -/
def P9957124936429926983.Spec : Prop :=
  ∀ n, P9957124936429926983.a n = A007844 n

end A007844

/-! ## A007844.P1612124263221759291

`A007318(A000217(A080579(n+1)-(n+1))+1)`
-/

namespace A007844.P1612124263221759291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (A080579 (n + 1) - (n + 1 : ℤ)).toNat + 1).toNat

end

end A007844.P1612124263221759291

namespace A007844

/-- `A007318(A000217(A080579(n+1)-(n+1))+1)` -/
def P1612124263221759291.Spec : Prop :=
  ∀ n, P1612124263221759291.a n = A007844 n

end A007844

/-!
# A007845: Least positive integer k for which 5^n divides k!.

The programs for A007845, the canonical program `A007845.P9262049496449237903` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007845 has offset 0).

The definition of A007845 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007845.P9262049496449237903

`comp[a(n-1)+val(n, 5)+1]-n` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007845

/-- `comp[a(n-1)+val(n, 5)+1]-n` -/
def P9262049496449237903.Spec : Prop :=
  ∀ n, P9262049496449237903.a n = A007845 n

theorem P9262049496449237903.correct : P9262049496449237903.Spec := by
  intro n
  simp only [A007845]

end A007845

/-! ## A007845.P857900160572468705

`A008706(A228297(n+1)-char[A191610(n+1)])`
-/

namespace A007845.P857900160572468705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191610 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A228297 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A007845.P857900160572468705

namespace A007845

/-- `A008706(A228297(n+1)-char[A191610(n+1)])` -/
def P857900160572468705.Spec : Prop :=
  ∀ n, P857900160572468705.a n = A007845 n

end A007845

/-! ## A007845.P15272883278628204944

`A008706(A303788(n)%A074255(n+1))`
-/

namespace A007845.P15272883278628204944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (Int.tmod (A303788 n) (A074255 (n + 1))).toNat

end

end A007845.P15272883278628204944

namespace A007845

/-- `A008706(A303788(n)%A074255(n+1))` -/
def P15272883278628204944.Spec : Prop :=
  ∀ n, P15272883278628204944.a n = A007845 n

end A007845

/-! ## A007845.P10727877883318235199

`A303788(A008458(n))%A200525(n+1)`
-/

namespace A007845.P10727877883318235199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303788 (A008458 n).toNat) (A200525 (n + 1))

end

end A007845.P10727877883318235199

namespace A007845

/-- `A303788(A008458(n))%A200525(n+1)` -/
def P10727877883318235199.Spec : Prop :=
  ∀ n, P10727877883318235199.a n = A007845 n

end A007845

/-! ## A007845.P6446809852949896050

`A008706(A303788(n))%A200525(n+1)`
-/

namespace A007845.P6446809852949896050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008706 (A303788 n).toNat) (A200525 (n + 1))

end

end A007845.P6446809852949896050

namespace A007845

/-- `A008706(A303788(n))%A200525(n+1)` -/
def P6446809852949896050.Spec : Prop :=
  ∀ n, P6446809852949896050.a n = A007845 n

end A007845

/-!
# A007846: There are three equivalent descriptions: 1. Number of (horizontally or vertically) connected arrays of 1..n on rectangular grid (otherwise zero) with only one local maximum. 2. Number of n-polyominoes labeled 1...n such that each successive labeled cell is the neighbor of a previously labeled cell. 3. Number of connected n-step paths on a rectangular lattice, diagonal or repeated steps not allowed.

The programs for A007846, there is no canonical definition to state claims against.
-/

/-! ## A007846.P13134015112248318876

`A335834(6*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A007846.P13134015112248318876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A335834 (6 * a (n - 1)).toNat

end

end A007846.P13134015112248318876

/-! ## A007846.P17979609716039189716

`ceil(2^(n-1))*A181551(ceil(2^(n-1)))`
-/

namespace A007846.P17979609716039189716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A181551 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A007846.P17979609716039189716

/-!
# A007847: Number of hyperplanes spanned by the vertices of an n-cube.

The programs for A007847, there is no canonical definition to state claims against.
-/

/-! ## A007847.P742268368001325798

`2*A138933(A134957(n))`
-/

namespace A007847.P742268368001325798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138933 (A134957 n).toNat

end

end A007847.P742268368001325798

/-!
# A007848: Number of skew hyperplanes spanned by the vertices of an n-cube.

The programs for A007848, there is no canonical definition to state claims against.
-/

/-! ## A007848.P12493827584132222057

`lcm(2^n, A087062(round(9/2*5^n)))`
-/

namespace A007848.P12493827584132222057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) (A087062 (SequenceMachineLib.roundAway ((9 : ℚ) / 2 * (5 ^ n : ℚ))).toNat)

end

end A007848.P12493827584132222057

/-!
# A007849: Number of hyperplanes spanned by the vertices of an n-cube that cover exactly n vertices.

The programs for A007849, there is no canonical definition to state claims against.
-/

/-! ## A007849.P4224971685329496144

`A004649(A000668(n+1))+1`
-/

namespace A007849.P4224971685329496144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004649 (A000668 (n + 1)).toNat + 1

end

end A007849.P4224971685329496144

/-!
# A007850: Giuga numbers: composite numbers n such that p divides n/p - 1 for every prime divisor p of n.

The programs for A007850, there is no canonical definition to state claims against.
-/

/-! ## A007850.P4315562833337918220

`A330069(n+3)/2`
-/

namespace A007850.P4315562833337918220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330069 (n + 3) : ℚ) / 2

end

end A007850.P4315562833337918220

/-!
# A007851: Number of elements w of the Weyl group D(n) such that the roots sent negative by w span an Abelian subalgebra of the Lie algebra.

The programs for A007851, the canonical program `A007851.P15050771373022439753` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007851 has offset 1).

The definition of A007851 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A189176, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A007851.P15050771373022439753

`A189176(n+1)-1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A007851

/-- `A189176(n+1)-1` -/
def P15050771373022439753.Spec : Prop :=
  ∀ n, P15050771373022439753.a n = A007851 (n + 1)

theorem P15050771373022439753.correct : P15050771373022439753.Spec := by
  intro n
  simp only [A007851, Nat.add_sub_cancel]

end A007851

/-! ## A007851.P16460576254566979064

`∑[abs(Δ[A189176(n)])]`
-/

namespace A007851.P16460576254566979064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189176 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007851.P16460576254566979064

namespace A007851

/-- `∑[abs(Δ[A189176(n)])]` -/
def P16460576254566979064.Spec : Prop :=
  ∀ n, P16460576254566979064.a n = A007851 (n + 1)

end A007851

/-! ## A007851.P6434424753889104726

`(n/2+2)*A000108(n+1)-1`
-/

namespace A007851.P6434424753889104726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 2) * (A000108 (n + 1) : ℚ) - 1

end

end A007851.P6434424753889104726

namespace A007851

/-- `(n/2+2)*A000108(n+1)-1` -/
def P6434424753889104726.Spec : Prop :=
  ∀ n, P6434424753889104726.a n = (A007851 (n + 1) : ℚ)

end A007851

/-! ## A007851.P2131316942083239351

`A134760(n)+A000245(n)`
-/

namespace A007851.P2131316942083239351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134760 n + A000245 n

end

end A007851.P2131316942083239351

namespace A007851

/-- `A134760(n)+A000245(n)` -/
def P2131316942083239351.Spec : Prop :=
  ∀ n, P2131316942083239351.a n = A007851 (n + 1)

end A007851

/-! ## A007851.P5089039567369765752

`A162551(n)+A000778(n)`
-/

namespace A007851.P5089039567369765752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162551 n + A000778 n

end

end A007851.P5089039567369765752

namespace A007851

/-- `A162551(n)+A000778(n)` -/
def P5089039567369765752.Spec : Prop :=
  ∀ n, P5089039567369765752.a n = A007851 (n + 1)

end A007851

/-! ## A007851.P4576563222546929633

`A001700(n)+∑[A000245(n)]`
-/

namespace A007851.P4576563222546929633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007851.P4576563222546929633

namespace A007851

/-- `A001700(n)+∑[A000245(n)]` -/
def P4576563222546929633.Spec : Prop :=
  ∀ n, P4576563222546929633.a n = A007851 (n + 1)

end A007851

/-! ## A007851.P12987348669662362259

`A134760(n)+Δ[A000108(n)]`
-/

namespace A007851.P12987348669662362259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134760 n + (f1 (n + 1) - f1 n)

end

end A007851.P12987348669662362259

namespace A007851

/-- `A134760(n)+Δ[A000108(n)]` -/
def P12987348669662362259.Spec : Prop :=
  ∀ n, P12987348669662362259.a n = A007851 (n + 1)

end A007851

/-! ## A007851.P8852650059010412962

`A010763(n)+A000108(n+1)`
-/

namespace A007851.P8852650059010412962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010763 n + A000108 (n + 1)

end

end A007851.P8852650059010412962

namespace A007851

/-- `A010763(n)+A000108(n+1)` -/
def P8852650059010412962.Spec : Prop :=
  ∀ n, P8852650059010412962.a n = A007851 (n + 1)

end A007851

/-! ## A007851.P13303892552772826717

`A000245(n)+A028329(n)-1`
-/

namespace A007851.P13303892552772826717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n + (A028329 n - 1)

end

end A007851.P13303892552772826717

namespace A007851

/-- `A000245(n)+A028329(n)-1` -/
def P13303892552772826717.Spec : Prop :=
  ∀ n, P13303892552772826717.a n = A007851 (n + 1)

end A007851

/-! ## A007851.P8337521721638684177

`A038665(n)-(A001700(n)+1)`
-/

namespace A007851.P8337521721638684177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038665 n - (A001700 n + 1)

end

end A007851.P8337521721638684177

namespace A007851

/-- `A038665(n)-(A001700(n)+1)` -/
def P8337521721638684177.Spec : Prop :=
  ∀ n, P8337521721638684177.a n = A007851 (n + 1)

end A007851

/-! ## A007851.P4550867550927339285

`A322938(n)-A246434(n+1)`
-/

namespace A007851.P4550867550927339285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322938 n - A246434 (n + 1)

end

end A007851.P4550867550927339285

namespace A007851

/-- `A322938(n)-A246434(n+1)` -/
def P4550867550927339285.Spec : Prop :=
  ∀ n, P4550867550927339285.a n = A007851 (n + 1)

end A007851

/-! ## A007851.P1167588060999030725

`A000108(n+1)+A001700(n)-1`
-/

namespace A007851.P1167588060999030725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A001700 n - 1)

end

end A007851.P1167588060999030725

namespace A007851

/-- `A000108(n+1)+A001700(n)-1` -/
def P1167588060999030725.Spec : Prop :=
  ∀ n, P1167588060999030725.a n = A007851 (n + 1)

end A007851

/-! ## A007851.P4102559129059535792

`A079309(n+1)-A371963(n+1)`
-/

namespace A007851.P4102559129059535792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079309 (n + 1) - A371963 (n + 1)

end

end A007851.P4102559129059535792

namespace A007851

/-- `A079309(n+1)-A371963(n+1)` -/
def P4102559129059535792.Spec : Prop :=
  ∀ n, P4102559129059535792.a n = A007851 (n + 1)

end A007851

/-! ## A007851.P14474758102602182754

`A001405(2*n+1)+∑[A000245(n)]`
-/

namespace A007851.P14474758102602182754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007851.P14474758102602182754

namespace A007851

/-- `A001405(2*n+1)+∑[A000245(n)]` -/
def P14474758102602182754.Spec : Prop :=
  ∀ n, P14474758102602182754.a n = A007851 (n + 1)

end A007851

/-! ## A007851.P11915320467314742825

`A037952(2*n+1)+∑[A000245(n)]`
-/

namespace A007851.P11915320467314742825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007851.P11915320467314742825

namespace A007851

/-- `A037952(2*n+1)+∑[A000245(n)]` -/
def P11915320467314742825.Spec : Prop :=
  ∀ n, P11915320467314742825.a n = A007851 (n + 1)

end A007851

/-! ## A007851.P9429417699951902279

`A029651(n+1)-(A001791(n+1)+1)`
-/

namespace A007851.P9429417699951902279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029651 (n + 1) - (A001791 (n + 1) + 1)

end

end A007851.P9429417699951902279

namespace A007851

/-- `A029651(n+1)-(A001791(n+1)+1)` -/
def P9429417699951902279.Spec : Prop :=
  ∀ n, P9429417699951902279.a n = A007851 (n + 1)

end A007851

/-! ## A007851.P4224168687472672926

`A000108(n+1)+A088218(n+1)-1`
-/

namespace A007851.P4224168687472672926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A088218 (n + 1) - 1)

end

end A007851.P4224168687472672926

namespace A007851

/-- `A000108(n+1)+A088218(n+1)-1` -/
def P4224168687472672926.Spec : Prop :=
  ∀ n, P4224168687472672926.a n = A007851 (n + 1)

end A007851

/-! ## A007851.P16174028321037586706

`A005317(n+1)+A125107(n+1)-1`
-/

namespace A007851.P16174028321037586706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005317 (n + 1) + (A125107 (n + 1) - 1)

end

end A007851.P16174028321037586706

namespace A007851

/-- `A005317(n+1)+A125107(n+1)-1` -/
def P16174028321037586706.Spec : Prop :=
  ∀ n, P16174028321037586706.a n = A007851 (n + 1)

end A007851

/-! ## A007851.P12572434513240208383

`A000108(n+1)+A260878(n+1)-2`
-/

namespace A007851.P12572434513240208383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A260878 (n + 1) - 2)

end

end A007851.P12572434513240208383

namespace A007851

/-- `A000108(n+1)+A260878(n+1)-2` -/
def P12572434513240208383.Spec : Prop :=
  ∀ n, P12572434513240208383.a n = A007851 (n + 1)

end A007851

/-! ## A007851.P4580703418517412753

`A014495(2*n+1)+A000108(n+1)`
-/

namespace A007851.P4580703418517412753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 (2 * n + 1) + A000108 (n + 1)

end

end A007851.P4580703418517412753

namespace A007851

/-- `A014495(2*n+1)+A000108(n+1)` -/
def P4580703418517412753.Spec : Prop :=
  ∀ n, P4580703418517412753.a n = A007851 (n + 1)

end A007851

/-!
# A007852: Number of antichains in rooted plane trees on n nodes.

The programs for A007852, there is no canonical definition to state claims against.
-/

/-! ## A007852.P4659912801419780411

`record[A145973(∑[n])]`
-/

namespace A007852.P4659912801419780411
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145973 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007852.P4659912801419780411

/-! ## A007852.P10593348646680367427

`A145973(n*Δ[n²])`
-/

namespace A007852.P10593348646680367427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145973 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A007852.P10593348646680367427

/-! ## A007852.P8275801228244609204

`record[gcd(A145973(n), A244925(n+1))]`
-/

namespace A007852.P8275801228244609204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A145973 n) (A244925 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007852.P8275801228244609204

/-! ## A007852.P12817837273299174324

`record[A145973(n)/A013612(n)]`
-/

namespace A007852.P12817837273299174324
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145973 n : ℚ) / (A013612 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007852.P12817837273299174324

/-! ## A007852.P2580048889418200077

`record[A145973(n)/A213940(n+1)]`
-/

namespace A007852.P2580048889418200077
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145973 n : ℚ) / (A213940 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007852.P2580048889418200077

/-!
# A007853: Number of maximal antichains in rooted plane trees on n nodes.

The programs for A007853, there is no canonical definition to state claims against.
-/

/-! ## A007853.P2570091175106557065

`A056192(A279553(n+1)+A011705(n))`
-/

namespace A007853.P2570091175106557065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056192 (A279553 (n + 1) + A011705 n).toNat

end

end A007853.P2570091175106557065

/-! ## A007853.P9540863053230737391

`A279553(n+1)+A098841(A000041(n))`
-/

namespace A007853.P9540863053230737391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279553 (n + 1) + A098841 (A000041 n).toNat

end

end A007853.P9540863053230737391

/-! ## A007853.P16862891730819323367

`A279553(n+1)+A086008(A020037(n))`
-/

namespace A007853.P16862891730819323367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279553 (n + 1) + A086008 (A020037 n).toNat

end

end A007853.P16862891730819323367

/-! ## A007853.P5146477135285937487

`A347440(A007909(n))+A279553(n+1)`
-/

namespace A007853.P5146477135285937487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347440 (A007909 n).toNat + A279553 (n + 1)

end

end A007853.P5146477135285937487

/-!
# A007854: Expansion of 1/(1 - 3*x*C(x)), where C(x) = (1 - sqrt(1 - 4*x))/(2*x) = g.f. for the Catalan numbers A000108.

The programs for A007854, there is no canonical definition to state claims against.
-/

/-! ## A007854.P2993749885714293991

`A049027(n)*A122553(n)`
-/

namespace A007854.P2993749885714293991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049027 n * A122553 n

end

end A007854.P2993749885714293991

/-! ## A007854.P14507216342428583975

`2*A090317(n)-A000108(n)`
-/

namespace A007854.P14507216342428583975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090317 n - A000108 n

end

end A007854.P14507216342428583975

/-! ## A007854.P11965289805532718598

`2*A067336(n)-A049027(n)`
-/

namespace A007854.P11965289805532718598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067336 n - A049027 n

end

end A007854.P11965289805532718598

/-! ## A007854.P8071576989182338362

`A049027(n)*A127752(2*n)`
-/

namespace A007854.P8071576989182338362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049027 n * A127752 (2 * n)

end

end A007854.P8071576989182338362

/-! ## A007854.P12275142507426811640

`gcd(3, A000244(n))*A049027(n)`
-/

namespace A007854.P12275142507426811640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (A000244 n) : ℤ) * A049027 n

end

end A007854.P12275142507426811640

/-! ## A007854.P3462627156855602608

`and(3, ∑[A000079(n)])*A049027(n)`
-/

namespace A007854.P3462627156855602608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (∑ j ∈ Finset.range (n + 1), f1 j) * A049027 n

end

end A007854.P3462627156855602608

/-! ## A007854.P8208937794586297848

`A014963(A048883(n))*A049027(n)`
-/

namespace A007854.P8208937794586297848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A048883 n).toNat * A049027 n

end

end A007854.P8208937794586297848

/-! ## A007854.P15199811850648460984

`A000244(n)/A025192(n)*A067336(n)`
-/

namespace A007854.P15199811850648460984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n : ℚ) / (A025192 n : ℚ) * (A067336 n : ℚ)

end

end A007854.P15199811850648460984

/-! ## A007854.P11926381355477753270

`3^A064547(A020639(n+1))*A049027(n)`
-/

namespace A007854.P11926381355477753270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A064547 (A020639 (n + 1)).toNat : ℤ) * (A049027 n : ℚ)

end

end A007854.P11926381355477753270

/-! ## A007854.P11002922276585428385

`A049027(n)+A067336(n)%A049027(n+1)`
-/

namespace A007854.P11002922276585428385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049027 n + Int.tmod (A067336 n) (A049027 (n + 1))

end

end A007854.P11002922276585428385

/-! ## A007854.P9368310075744502445

`A117375(∑[n])`
-/

namespace A007854.P9368310075744502445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117375 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007854.P9368310075744502445

/-! ## A007854.P1227068790422737333

`record[A117375(n)]`
-/

namespace A007854.P1227068790422737333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007854.P1227068790422737333

/-!
# A007855: Infima closed sets in rooted plane trees on n nodes.

The programs for A007855, there is no canonical definition to state claims against.
-/

/-! ## A007855.P16635163475403335249

`A243280(n)+A178334(A051114(n))`
-/

namespace A007855.P16635163475403335249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243280 n + A178334 (A051114 n).toNat

end

end A007855.P16635163475403335249

/-! ## A007855.P15262695928742709978

`A025459(A000273(n))+A000259(n+1)`
-/

namespace A007855.P15262695928742709978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025459 (A000273 n).toNat + A000259 (n + 1)

end

end A007855.P15262695928742709978

/-!
# A007856: Subtrees in rooted plane trees on n nodes.

The programs for A007856, there is no canonical definition to state claims against.
-/

/-! ## A007856.P4883756444982332653

`A243585(n)-n*A153294(n)`
-/

namespace A007856.P4883756444982332653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243585 n - (n : ℤ) * A153294 n

end

end A007856.P4883756444982332653

/-! ## A007856.P13330753423510013830

`A243585(n)+n*A153294(n)*A153881(n+1)`
-/

namespace A007856.P13330753423510013830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243585 n + (n : ℤ) * A153294 n * A153881 (n + 1)

end

end A007856.P13330753423510013830

/-!
# A007857: Number of independent sets in rooted plane trees on n nodes.

The programs for A007857, the canonical program `A007857.P12156564883507010954` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007857 has offset 1).

The definition of A007857 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007226, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A007857.P12156564883507010954

`A007226(n)-A000108(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A007857

/-- `A007226(n)-A000108(n)` -/
def P12156564883507010954.Spec : Prop :=
  ∀ n, P12156564883507010954.a n = A007857 (n + 1)

theorem P12156564883507010954.correct : P12156564883507010954.Spec := by
  intro n
  simp only [A007857, Nat.add_sub_cancel]

end A007857

/-! ## A007857.P1696508574544069445

`A007226(n)-abs(A168491(n))`
-/

namespace A007857.P1696508574544069445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007226 n - |A168491 n|

end

end A007857.P1696508574544069445

namespace A007857

/-- `A007226(n)-abs(A168491(n))` -/
def P1696508574544069445.Spec : Prop :=
  ∀ n, P1696508574544069445.a n = A007857 (n + 1)

end A007857

/-! ## A007857.P3930893176793733481

`A007226(n)-A028364(∑[n])`
-/

namespace A007857.P3930893176793733481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007226 n - A028364 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007857.P3930893176793733481

namespace A007857

/-- `A007226(n)-A028364(∑[n])` -/
def P3930893176793733481.Spec : Prop :=
  ∀ n, P3930893176793733481.a n = A007857 (n + 1)

end A007857

/-! ## A007857.P4837608132446686568

`A007226(n)-A039599(∑[n])`
-/

namespace A007857.P4837608132446686568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007226 n - A039599 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007857.P4837608132446686568

namespace A007857

/-- `A007226(n)-A039599(∑[n])` -/
def P4837608132446686568.Spec : Prop :=
  ∀ n, P4837608132446686568.a n = A007857 (n + 1)

end A007857

/-! ## A007857.P827741332904357645

`A115140(n+1)+A007226(n)`
-/

namespace A007857.P827741332904357645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 (n + 1) + A007226 n

end

end A007857.P827741332904357645

namespace A007857

/-- `A115140(n+1)+A007226(n)` -/
def P827741332904357645.Spec : Prop :=
  ∀ n, P827741332904357645.a n = A007857 (n + 1)

end A007857

/-! ## A007857.P11985440934572403320

`A007226(n)-A120588(n+1)`
-/

namespace A007857.P11985440934572403320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007226 n - A120588 (n + 1)

end

end A007857.P11985440934572403320

namespace A007857

/-- `A007226(n)-A120588(n+1)` -/
def P11985440934572403320.Spec : Prop :=
  ∀ n, P11985440934572403320.a n = A007857 (n + 1)

end A007857

/-! ## A007857.P153429819287629608

`A007226(n)-A028303(2*n)`
-/

namespace A007857.P153429819287629608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007226 n - A028303 (2 * n)

end

end A007857.P153429819287629608

namespace A007857

/-- `A007226(n)-A028303(2*n)` -/
def P153429819287629608.Spec : Prop :=
  ∀ n, P153429819287629608.a n = A007857 (n + 1)

end A007857

/-! ## A007857.P6352966851574444701

`A007226(n)-A057977(2*n)`
-/

namespace A007857.P6352966851574444701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007226 n - A057977 (2 * n)

end

end A007857.P6352966851574444701

namespace A007857

/-- `A007226(n)-A057977(2*n)` -/
def P6352966851574444701.Spec : Prop :=
  ∀ n, P6352966851574444701.a n = A007857 (n + 1)

end A007857

/-! ## A007857.P11834700491960597606

`A007226(n)-A126120(2*n)`
-/

namespace A007857.P11834700491960597606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007226 n - A126120 (2 * n)

end

end A007857.P11834700491960597606

namespace A007857

/-- `A007226(n)-A126120(2*n)` -/
def P11834700491960597606.Spec : Prop :=
  ∀ n, P11834700491960597606.a n = A007857 (n + 1)

end A007857

/-! ## A007857.P3419909623664729058

`A007226(n)-A089408(2*n+1)`
-/

namespace A007857.P3419909623664729058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007226 n - A089408 (2 * n + 1)

end

end A007857.P3419909623664729058

namespace A007857

/-- `A007226(n)-A089408(2*n+1)` -/
def P3419909623664729058.Spec : Prop :=
  ∀ n, P3419909623664729058.a n = A007857 (n + 1)

end A007857

/-! ## A007857.P14349391725474497853

`A007226(n)-A097331(2*n+1)`
-/

namespace A007857.P14349391725474497853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007226 n - A097331 (2 * n + 1)

end

end A007857.P14349391725474497853

namespace A007857

/-- `A007226(n)-A097331(2*n+1)` -/
def P14349391725474497853.Spec : Prop :=
  ∀ n, P14349391725474497853.a n = A007857 (n + 1)

end A007857

/-! ## A007857.P14505737765448985412

`Δ[n²]*A000139(n)-A000108(n)`
-/

namespace A007857.P14505737765448985412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A000139 n - A000108 n

end

end A007857.P14505737765448985412

namespace A007857

/-- `Δ[n²]*A000139(n)-A000108(n)` -/
def P14505737765448985412.Spec : Prop :=
  ∀ n, P14505737765448985412.a n = A007857 (n + 1)

end A007857

/-! ## A007857.P9268236982802618652

`A001764(n)+A006013(n)-A000108(n)`
-/

namespace A007857.P9268236982802618652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n + (A006013 n - A000108 n)

end

end A007857.P9268236982802618652

namespace A007857

/-- `A001764(n)+A006013(n)-A000108(n)` -/
def P9268236982802618652.Spec : Prop :=
  ∀ n, P9268236982802618652.a n = A007857 (n + 1)

end A007857

/-! ## A007857.P8375683223940371875

`A047749(2*n+1)+A047749(2*n)-A126120(2*n)`
-/

namespace A007857.P8375683223940371875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047749 (2 * n + 1) + (A047749 (2 * n) - A126120 (2 * n))

end

end A007857.P8375683223940371875

namespace A007857

/-- `A047749(2*n+1)+A047749(2*n)-A126120(2*n)` -/
def P8375683223940371875.Spec : Prop :=
  ∀ n, P8375683223940371875.a n = A007857 (n + 1)

end A007857

/-! ## A007857.P5408086353696624978

`A225050(n)/(n+1)`
-/

namespace A007857.P5408086353696624978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225050 n : ℚ) / (n + 1 : ℚ)

end

end A007857.P5408086353696624978

namespace A007857

/-- `A225050(n)/(n+1)` -/
def P5408086353696624978.Spec : Prop :=
  ∀ n, P5408086353696624978.a n = (A007857 (n + 1) : ℚ)

end A007857

/-!
# A007858: G.f. is 1 - 1/f(x), where f(x) = 1+x+3*x^2+9*x^3+32*x^4+... is 1/x times g.f. for A063020.

The programs for A007858, there is no canonical definition to state claims against.
-/

/-! ## A007858.P15491950261967128089

`A084500(A192816(n+1))`
-/

namespace A007858.P15491950261967128089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084500 (A192816 (n + 1)).toNat

end

end A007858.P15491950261967128089

/-! ## A007858.P17155194193884927571

`A300763(A149955(n+1))`
-/

namespace A007858.P17155194193884927571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (A149955 (n + 1)).toNat

end

end A007858.P17155194193884927571

/-! ## A007858.P1567842163858365192

`A108954(A078465(4*n+1)+n+1)`
-/

namespace A007858.P1567842163858365192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A078465 (4 * n + 1) + (n : ℤ) + 1).toNat

end

end A007858.P1567842163858365192

/-!
# A007859: Number of matchings in rooted plane trees on n nodes.

The programs for A007859, there is no canonical definition to state claims against.
-/

/-! ## A007859.P13391301499676933150

`n*A049840((n+1)^(n-1))`
-/

namespace A007859.P13391301499676933150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A049840 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A007859.P13391301499676933150

/-! ## A007859.P18115236973537292229

`n*A000194(A052868(n))`
-/

namespace A007859.P18115236973537292229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000194 (A052868 n).toNat

end

end A007859.P18115236973537292229

/-!
# A007860: Maximal matchings in rooted plane trees on n nodes.

The programs for A007860, there is no canonical definition to state claims against.
-/

/-! ## A007860.P12742107905002380744

`A103221(A033887(n)+2^(n+1))`
-/

namespace A007860.P12742107905002380744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A033887 n + (2 ^ (n + 1) : ℤ)).toNat

end

end A007860.P12742107905002380744

/-! ## A007860.P10345296889924681534

`A008615(A311434(n)+A069009(n))`
-/

namespace A007860.P10345296889924681534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A311434 n + A069009 n).toNat

end

end A007860.P10345296889924681534

/-! ## A007860.P10412906915890717413

`A103221(A290194(n)+A033887(n))`
-/

namespace A007860.P10412906915890717413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A290194 n + A033887 n).toNat

end

end A007860.P10412906915890717413

/-!
# A007861: 

The programs for A007861, there is no canonical definition to state claims against.
-/

/-! ## A007861.P2412983429297521906

`a(n-1)^(n+1)*(n+1)!` with `a(0)=1`
-/

namespace A007861.P2412983429297521906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) ^ (n + 1) * Nat.factorial (n + 1)

end

end A007861.P2412983429297521906

/-!
# A007862: Number of triangular numbers that divide n.

The programs for A007862, the canonical program `A007862.P13725744150973773245` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007862 has offset 1).

The definition of A007862 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007862.P16467955003588601730

`A129308(2*(n+1))`
-/

namespace A007862.P16467955003588601730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (2 * (n + 1))

end

end A007862.P16467955003588601730

namespace A007862

/-- `A129308(2*(n+1))` -/
def P16467955003588601730.Spec : Prop :=
  ∀ n, P16467955003588601730.a n = A007862 (n + 1)

end A007862

/-! ## A007862.P16055140693293620602

`Δ[A069470(n)]`
-/

namespace A007862.P16055140693293620602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007862.P16055140693293620602

namespace A007862

/-- `Δ[A069470(n)]` -/
def P16055140693293620602.Spec : Prop :=
  ∀ n, P16055140693293620602.a n = A007862 (n + 1)

end A007862

/-! ## A007862.P4200054294383051051

`A325334(n+1)+1`
-/

namespace A007862.P4200054294383051051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325334 (n + 1) + 1

end

end A007862.P4200054294383051051

namespace A007862

/-- `A325334(n+1)+1` -/
def P4200054294383051051.Spec : Prop :=
  ∀ n, P4200054294383051051.a n = A007862 (n + 1)

end A007862

/-! ## A007862.P13725744150973773245

`∑{d}[n+1, A010054(#)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A007862

/-- `∑{d}[n+1, A010054(#)]` -/
def P13725744150973773245.Spec : Prop :=
  ∀ n, P13725744150973773245.a n = A007862 (n + 1)

theorem P13725744150973773245.correct : P13725744150973773245.Spec := by
  intro n
  simp only [A007862, Nat.add_sub_cancel]

end A007862

/-! ## A007862.P2410886870614603524

`∑{d}[n+1, A073423(#)]`
-/

namespace A007862.P2410886870614603524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A073423 d

end

end A007862.P2410886870614603524

namespace A007862

/-- `∑{d}[n+1, A073423(#)]` -/
def P2410886870614603524.Spec : Prop :=
  ∀ n, P2410886870614603524.a n = A007862 (n + 1)

end A007862

/-! ## A007862.P17449827925221118554

`∑{d}[n+1, A073424(#)]`
-/

namespace A007862.P17449827925221118554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A073424 d

end

end A007862.P17449827925221118554

namespace A007862

/-- `∑{d}[n+1, A073424(#)]` -/
def P17449827925221118554.Spec : Prop :=
  ∀ n, P17449827925221118554.a n = A007862 (n + 1)

end A007862

/-! ## A007862.P8852493081244538997

`∑{d}[n+1, A023531(#-1)]`
-/

namespace A007862.P8852493081244538997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023531 (d - 1)

end

end A007862.P8852493081244538997

namespace A007862

/-- `∑{d}[n+1, A023531(#-1)]` -/
def P8852493081244538997.Spec : Prop :=
  ∀ n, P8852493081244538997.a n = A007862 (n + 1)

end A007862

/-! ## A007862.P15512669152042413270

`A343407(n+1)+A023531(n)`
-/

namespace A007862.P15512669152042413270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343407 (n + 1) + A023531 n

end

end A007862.P15512669152042413270

namespace A007862

/-- `A343407(n+1)+A023531(n)` -/
def P15512669152042413270.Spec : Prop :=
  ∀ n, P15512669152042413270.a n = A007862 (n + 1)

end A007862

/-! ## A007862.P7983207440417862182

`A069470(n+1)-A069470(n)`
-/

namespace A007862.P7983207440417862182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069470 (n + 1) - A069470 n

end

end A007862.P7983207440417862182

namespace A007862

/-- `A069470(n+1)-A069470(n)` -/
def P7983207440417862182.Spec : Prop :=
  ∀ n, P7983207440417862182.a n = A007862 (n + 1)

end A007862

/-! ## A007862.P7011695448507784282

`∑{d}[A004767(n)+1, A003982(#)]`
-/

namespace A007862.P7011695448507784282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003982 d

end

end A007862.P7011695448507784282

namespace A007862

/-- `∑{d}[A004767(n)+1, A003982(#)]` -/
def P7011695448507784282.Spec : Prop :=
  ∀ n, P7011695448507784282.a n = A007862 (n + 1)

end A007862

/-! ## A007862.P16952724700724351482

`A004197(A337362(2*(n+1)))+1`
-/

namespace A007862.P16952724700724351482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 (A337362 (2 * (n + 1))).toNat + 1

end

end A007862.P16952724700724351482

namespace A007862

/-- `A004197(A337362(2*(n+1)))+1` -/
def P16952724700724351482.Spec : Prop :=
  ∀ n, P16952724700724351482.a n = A007862 (n + 1)

end A007862

/-! ## A007862.P3534345089891770413

`A004197(A337363(2*(n+1)))+1`
-/

namespace A007862.P3534345089891770413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 (A337363 (2 * (n + 1))).toNat + 1

end

end A007862.P3534345089891770413

namespace A007862

/-- `A004197(A337363(2*(n+1)))+1` -/
def P3534345089891770413.Spec : Prop :=
  ∀ n, P3534345089891770413.a n = A007862 (n + 1)

end A007862

/-! ## A007862.P15922895245040498135

`A004736(A337362(2*(n+1))+1)`
-/

namespace A007862.P15922895245040498135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A337362 (2 * (n + 1)) + 1).toNat

end

end A007862.P15922895245040498135

namespace A007862

/-- `A004736(A337362(2*(n+1))+1)` -/
def P15922895245040498135.Spec : Prop :=
  ∀ n, P15922895245040498135.a n = A007862 (n + 1)

end A007862

/-! ## A007862.P17016673309356378185

`A343407(n+1)+A010054(n+1)`
-/

namespace A007862.P17016673309356378185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343407 (n + 1) + A010054 (n + 1)

end

end A007862.P17016673309356378185

namespace A007862

/-- `A343407(n+1)+A010054(n+1)` -/
def P17016673309356378185.Spec : Prop :=
  ∀ n, P17016673309356378185.a n = A007862 (n + 1)

end A007862

/-! ## A007862.P3933569111048506936

`A127938(n+1)-A049982(n+1)`
-/

namespace A007862.P3933569111048506936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127938 (n + 1) - A049982 (n + 1)

end

end A007862.P3933569111048506936

namespace A007862

/-- `A127938(n+1)-A049982(n+1)` -/
def P3933569111048506936.Spec : Prop :=
  ∀ n, P3933569111048506936.a n = A007862 (n + 1)

end A007862

/-! ## A007862.P16501998631777639097

`A099777(n+1)-A174199(n+1)`
-/

namespace A007862.P16501998631777639097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (n + 1) - A174199 (n + 1)

end

end A007862.P16501998631777639097

namespace A007862

/-- `A099777(n+1)-A174199(n+1)` -/
def P16501998631777639097.Spec : Prop :=
  ∀ n, P16501998631777639097.a n = A007862 (n + 1)

end A007862

/-! ## A007862.P296018393311532043

`A000005(2*(n+1))-A174199(n+1)`
-/

namespace A007862.P296018393311532043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 1)) - A174199 (n + 1)

end

end A007862.P296018393311532043

namespace A007862

/-- `A000005(2*(n+1))-A174199(n+1)` -/
def P296018393311532043.Spec : Prop :=
  ∀ n, P296018393311532043.a n = A007862 (n + 1)

end A007862

/-! ## A007862.P9265859400668514763

`A066446(2*(n+1))-A337363(2*(n+1))`
-/

namespace A007862.P9265859400668514763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066446 (2 * (n + 1)) - A337363 (2 * (n + 1))

end

end A007862.P9265859400668514763

namespace A007862

/-- `A066446(2*(n+1))-A337363(2*(n+1))` -/
def P9265859400668514763.Spec : Prop :=
  ∀ n, P9265859400668514763.a n = A007862 (n + 1)

end A007862

/-! ## A007862.P1001479550860459507

`∑{d}[n+1, A023900(#)*A327629((n+1)/#)]`
-/

namespace A007862.P1001479550860459507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A327629 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007862.P1001479550860459507

namespace A007862

/-- `∑{d}[n+1, A023900(#)*A327629((n+1)/#)]` -/
def P1001479550860459507.Spec : Prop :=
  ∀ n, P1001479550860459507.a n = A007862 (n + 1)

end A007862

/-! ## A007862.P12276308652099572435

`∑{d}[n+1, A099894(#-1)*A329801((n+1)/#)]`
-/

namespace A007862.P12276308652099572435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A099894 (d - 1) * A329801 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007862.P12276308652099572435

namespace A007862

/-- `∑{d}[n+1, A099894(#-1)*A329801((n+1)/#)]` -/
def P12276308652099572435.Spec : Prop :=
  ∀ n, P12276308652099572435.a n = A007862 (n + 1)

end A007862

/-!
# A007863: Number of hybrid binary trees with n internal nodes.

The programs for A007863, there is no canonical definition to state claims against.
-/

/-! ## A007863.P3565841331835008160

`A011274(∑[n]+1)`
-/

namespace A007863.P3565841331835008160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011274 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A007863.P3565841331835008160

/-! ## A007863.P13540563550979254520

`record[A011274(n+1)]`
-/

namespace A007863.P13540563550979254520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007863.P13540563550979254520

/-! ## A007863.P9997892371192955231

`A193589(∑[n]+n)`
-/

namespace A007863.P9997892371192955231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193589 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A007863.P9997892371192955231

/-! ## A007863.P8890676038832549191

`A011272(n)+A011270(n)`
-/

namespace A007863.P8890676038832549191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011272 n + A011270 n

end

end A007863.P8890676038832549191

/-! ## A007863.P8574320986373972969

`A011274(A133263(n))+A011272(n)`
-/

namespace A007863.P8574320986373972969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011274 (A133263 n).toNat + A011272 n

end

end A007863.P8574320986373972969

/-! ## A007863.P11630609196881616660

`A245049(∑[n+2]-1)`
-/

namespace A007863.P11630609196881616660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A007863.P11630609196881616660

/-! ## A007863.P9758283566518830913

`record[gcd(A141432(n+1), A245049(n))]`
-/

namespace A007863.P9758283566518830913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141432 (n + 1)) (A245049 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007863.P9758283566518830913

/-!
# A007864: Number of matrix bundles of codimension n (Euler transform of A001156).

The programs for A007864, there is no canonical definition to state claims against.
-/

/-! ## A007864.P14625436069977659527

`A137735((∑[round(sqrt(2*n))]+1)*(2^n-1))`
-/

namespace A007864.P14625436069977659527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 ((∑ j ∈ Finset.range (n + 1), f1 j + 1) * ((2 ^ n : ℤ) - 1)).toNat

end

end A007864.P14625436069977659527

/-! ## A007864.P5803994652350233760

`A231014(∑[a(n-1)+a(n-2)])` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=2`
-/

namespace A007864.P5803994652350233760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2, 2] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231014 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007864.P5803994652350233760

/-! ## A007864.P3579764478174777136

`A003059(A261384(n))`
-/

namespace A007864.P3579764478174777136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A261384 n).toNat

end

end A007864.P3579764478174777136

/-! ## A007864.P8549942761087036036

`A254075(A073472(n))`
-/

namespace A007864.P8549942761087036036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254075 (A073472 n).toNat

end

end A007864.P8549942761087036036

/-! ## A007864.P13346577924210758740

`A231014(A133670(n))`
-/

namespace A007864.P13346577924210758740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231014 (A133670 n).toNat

end

end A007864.P13346577924210758740

/-!
# A007865: Number of sum-free subsets of {1, ..., n}.

The programs for A007865, there is no canonical definition to state claims against.
-/

/-! ## A007865.P4292785288814885435

`A050291(n)-A088810(n)`
-/

namespace A007865.P4292785288814885435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050291 n - A088810 n

end

end A007865.P4292785288814885435

/-! ## A007865.P10121743818949871140

`A085489(n)-A088811(n)`
-/

namespace A007865.P10121743818949871140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085489 n - A088811 n

end

end A007865.P10121743818949871140

/-! ## A007865.P5348719137838538415

`A050291(n)+A085489(n)-A088813(n)`
-/

namespace A007865.P5348719137838538415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050291 n + A085489 n - A088813 n

end

end A007865.P5348719137838538415

/-! ## A007865.P17778372825685996854

`∑[A288728(round(acot(n)+n))]`
-/

namespace A007865.P17778372825685996854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288728 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007865.P17778372825685996854

/-! ## A007865.P7232335555262468422

`A288728(n)+a(n-1)` with `a(0)=1`
-/

namespace A007865.P7232335555262468422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A288728 n + a (n - 1)

end

end A007865.P7232335555262468422

/-! ## A007865.P10447273109275786412

`∑[A288728(abs(1-n)+1)]`
-/

namespace A007865.P10447273109275786412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288728 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007865.P10447273109275786412

/-! ## A007865.P11457476910972247693

`A000079(n)-(A088810(n)+A088808(n))`
-/

namespace A007865.P11457476910972247693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A088810 n + A088808 n)

end

end A007865.P11457476910972247693

/-! ## A007865.P9947321248907420849

`∑[A288728(n+1)]+1-A288728(n+1)`
-/

namespace A007865.P9947321248907420849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A288728 (n + 1))

end

end A007865.P9947321248907420849

/-! ## A007865.P18267047377209076401

`A000079(n)-(A088811(n)+A088809(n))`
-/

namespace A007865.P18267047377209076401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A088811 n + A088809 n)

end

end A007865.P18267047377209076401

/-! ## A007865.P4455040825488858393

`A050291(n)+A088812(n)-A088809(n)`
-/

namespace A007865.P4455040825488858393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050291 n + (A088812 n - A088809 n)

end

end A007865.P4455040825488858393

/-!
# A007866: Number of `homogenized' N-free graphs with n nodes.

The programs for A007866, there is no canonical definition to state claims against.
-/

/-! ## A007866.P14436090962635251455

`A049542(a(n-2)+1)-3` with `a(0)=1, a(1)=2`
-/

namespace A007866.P14436090962635251455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A049542 (a (n - 2) + 1).toNat - 3

end

end A007866.P14436090962635251455

/-! ## A007866.P12468102374949322446

`(ceil(sin(n)²)+1)*A007867(n+1)`
-/

namespace A007866.P12468102374949322446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.sin (n : ℝ) ^ 2⌉ + 1) * A007867 (n + 1)

end

end A007866.P12468102374949322446

/-!
# A007867: Complementary pairs of `homogenized' N-free graphs with n nodes.

The programs for A007867, there is no canonical definition to state claims against.
-/

/-! ## A007867.P17037312967649277188

`ceil(A007866(n+1)/2)`
-/

namespace A007867.P17037312967649277188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007866 (n + 1) : ℚ) / 2⌉

end

end A007867.P17037312967649277188

/-! ## A007867.P16978599326938518961

`ceil(A150056(n+1)/10)`
-/

namespace A007867.P16978599326938518961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A150056 (n + 1) : ℚ) / 10⌉

end

end A007867.P16978599326938518961

/-!
# A007868: Number of inverse pairs of elements in symmetric group S_n, or pairs of total orders on n nodes (average of A000085 and A000142).

The programs for A007868, there is no canonical definition to state claims against.
-/

/-! ## A007868.P8205895057701624578

`(A000085(n)+n!)/2`
-/

namespace A007868.P8205895057701624578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000085 n + (Nat.factorial n : ℤ) : ℚ) / 2

end

end A007868.P8205895057701624578

/-! ## A007868.P6663314163121100363

`(n!+A013989(n)/(n+1))/2`
-/

namespace A007868.P6663314163121100363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℚ) + (A013989 n : ℚ) / (n + 1 : ℚ)) / 2

end

end A007868.P6663314163121100363

/-! ## A007868.P13902364275815861237

`(A000142(n)+A000085(n))/2`
-/

namespace A007868.P13902364275815861237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n + A000085 n : ℚ) / 2

end

end A007868.P13902364275815861237

/-! ## A007868.P9752456300935033865

`(A099020(∑[n])+A000142(n))/2`
-/

namespace A007868.P9752456300935033865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099020 (∑ j ∈ Finset.range (n + 1), f1 j) + A000142 n : ℚ) / 2

end

end A007868.P9752456300935033865

/-! ## A007868.P13485961683373368855

`(A155856(A000217(n))+A000085(n))/2`
-/

namespace A007868.P13485961683373368855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155856 (A000217 n).toNat + A000085 n : ℚ) / 2

end

end A007868.P13485961683373368855

/-! ## A007868.P11516409809764882127

`Δ[A007489(n)+A000085(n+1)]/(2*(n+1))`
-/

namespace A007868.P11516409809764882127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 n + A000085 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (2 * (n + 1) : ℚ)

end

end A007868.P11516409809764882127

/-!
# A007869: Number of complementary pairs of graphs on n nodes. Also number of unlabeled graphs with n nodes and an even number of edges.

The programs for A007869, there is no canonical definition to state claims against.
-/

/-! ## A007869.P17931830490758757434

`A054960(n+1)+A000171(n+1)`
-/

namespace A007869.P17931830490758757434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054960 (n + 1) + A000171 (n + 1)

end

end A007869.P17931830490758757434

/-! ## A007869.P8703721368289507706

`A054931(n+1)+A000719(n+1)`
-/

namespace A007869.P8703721368289507706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054931 (n + 1) + A000719 (n + 1)

end

end A007869.P8703721368289507706

/-! ## A007869.P16587513829162692553

`A000088(n+1)-A054960(n+1)`
-/

namespace A007869.P16587513829162692553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - A054960 (n + 1)

end

end A007869.P16587513829162692553

/-! ## A007869.P4246372800968150622

`1/2*A000088(n+1)+1/2*A000171(n+1)`
-/

namespace A007869.P4246372800968150622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A000088 (n + 1) : ℚ) + (1 : ℚ) / 2 * (A000171 (n + 1) : ℚ)

end

end A007869.P4246372800968150622

/-! ## A007869.P8530645511093530418

`A054960(n+1)+2*A054931(n+1)-A054915(n+1)`
-/

namespace A007869.P8530645511093530418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054960 (n + 1) + (2 * A054931 (n + 1) - A054915 (n + 1))

end

end A007869.P8530645511093530418

/-!
# A007870: Determinant of character table of symmetric group S_n.

The programs for A007870, there is no canonical definition to state claims against.
-/

/-! ## A007870.P12320103905396838254

`A008336(n+1)*A103880(A099579(n))`
-/

namespace A007870.P12320103905396838254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008336 (n + 1) * A103880 (A099579 n).toNat

end

end A007870.P12320103905396838254

/-! ## A007870.P15089990907642899193

`A333963(A006452(n))`
-/

namespace A007870.P15089990907642899193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333963 (A006452 n).toNat

end

end A007870.P15089990907642899193

/-!
# A007871: Number of simple juggling patterns of n balls.

The programs for A007871, there is no canonical definition to state claims against.
-/

/-! ## A007871.P8116175466181161983

`A178008(n)*A212000(A011782(n))`
-/

namespace A007871.P8116175466181161983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178008 n * A212000 (A011782 n).toNat

end

end A007871.P8116175466181161983

/-! ## A007871.P820826022871210463

`A108954(A105217(n))`
-/

namespace A007871.P820826022871210463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A105217 n).toNat

end

end A007871.P820826022871210463

/-!
# A007872: Sum of indices of windows of trapezoidal maps.

The programs for A007872, there is no canonical definition to state claims against.
-/

/-! ## A007872.P12192375367107556464

`A071585(xor(2-char[n²], A000142(n)))`
-/

namespace A007872.P12192375367107556464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (Int.xor (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) (A000142 n)).toNat

end

end A007872.P12192375367107556464

/-! ## A007872.P8946409906111138748

`A120588(n)+A008651(A029651(n))`
-/

namespace A007872.P8946409906111138748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n + A008651 (A029651 n).toNat

end

end A007872.P8946409906111138748

/-! ## A007872.P3389066574786328841

`A165190(A000984(n))+A120588(n)`
-/

namespace A007872.P3389066574786328841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A000984 n).toNat + A120588 n

end

end A007872.P3389066574786328841

/-! ## A007872.P9387365714572666787

`A165190(record[A081668(n)])+A120588(n)`
-/

namespace A007872.P9387365714572666787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A120588 n

end

end A007872.P9387365714572666787

/-!
# A007873: Indices of last windows of trapezoidal maps.

The programs for A007873, there is no canonical definition to state claims against.
-/

/-! ## A007873.P12529383541224206742

`or(1, A341916(A131588(n)))`
-/

namespace A007873.P12529383541224206742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A341916 (A131588 n).toNat)

end

end A007873.P12529383541224206742

/-! ## A007873.P16737695942306327977

`A001650(A148918(n))`
-/

namespace A007873.P16737695942306327977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (A148918 n).toNat

end

end A007873.P16737695942306327977

/-! ## A007873.P2356277849720769207

`A001650(A149000(n))`
-/

namespace A007873.P2356277849720769207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (A149000 n).toNat

end

end A007873.P2356277849720769207

/-! ## A007873.P16376741462333423222

`A316355(A149206(n))`
-/

namespace A007873.P16376741462333423222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (A149206 n).toNat

end

end A007873.P16376741462333423222

/-! ## A007873.P10725957203701847129

`A316355(A149271(n))`
-/

namespace A007873.P10725957203701847129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (A149271 n).toNat

end

end A007873.P10725957203701847129

/-!
# A007874: Distinct perimeter lengths of polygons with regularly spaced vertices.

The programs for A007874, there is no canonical definition to state claims against.
-/

/-! ## A007874.P11891499673923904546

`round(sqrt(A319717(n!)))`
-/

namespace A007874.P11891499673923904546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A319717 (Nat.factorial n) : ℝ))

end

end A007874.P11891499673923904546

/-! ## A007874.P8890417769783107385

`A023193(A148287(n))`
-/

namespace A007874.P8890417769783107385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A148287 n).toNat

end

end A007874.P8890417769783107385

/-! ## A007874.P14529576902293642236

`A045880(A344491(n+1))`
-/

namespace A007874.P14529576902293642236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045880 (A344491 (n + 1)).toNat

end

end A007874.P14529576902293642236

/-! ## A007874.P6920503750120643480

`A055086(or(1, A321208(n)))`
-/

namespace A007874.P6920503750120643480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (Int.lor 1 (A321208 n)).toNat

end

end A007874.P6920503750120643480

/-! ## A007874.P13188440210783910464

`or(char[n^3], A185283(A002467(n)))`
-/

namespace A007874.P13188440210783910464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A185283 (A002467 n).toNat)

end

end A007874.P13188440210783910464

/-!
# A007875: Number of ways of writing n as p*q, with p <= q, gcd(p, q) = 1.

The programs for A007875, the canonical program `A007875.P1743519679505570737` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007875 has offset 1).

The definition of A007875 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007875.P1501448000162454835

`2^A297155(n+1)`
-/

namespace A007875.P1501448000162454835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A297155 (n + 1) : ℤ)

end

end A007875.P1501448000162454835

namespace A007875

/-- `2^A297155(n+1)` -/
def P1501448000162454835.Spec : Prop :=
  ∀ n, P1501448000162454835.a n = (A007875 (n + 1) : ℚ)

end A007875

/-! ## A007875.P599258689940603979

`∑{d}[n+1, A353629(#)]`
-/

namespace A007875.P599258689940603979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353629 d

end

end A007875.P599258689940603979

namespace A007875

/-- `∑{d}[n+1, A353629(#)]` -/
def P599258689940603979.Spec : Prop :=
  ∀ n, P599258689940603979.a n = A007875 (n + 1)

end A007875

/-! ## A007875.P2350230672718061419

`A038548(∏{p}[n+1, #])`
-/

namespace A007875.P2350230672718061419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A007875.P2350230672718061419

namespace A007875

/-- `A038548(∏{p}[n+1, #])` -/
def P2350230672718061419.Spec : Prop :=
  ∀ n, P2350230672718061419.a n = A007875 (n + 1)

end A007875

/-! ## A007875.P1743519679505570737

`A163109(∏{p}[n+1, #])`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A007875

/-- `A163109(∏{p}[n+1, #])` -/
def P1743519679505570737.Spec : Prop :=
  ∀ n, P1743519679505570737.a n = A007875 (n + 1)

theorem P1743519679505570737.correct : P1743519679505570737.Spec := by
  intro n
  simp only [A007875, Nat.add_sub_cancel]

end A007875

/-! ## A007875.P14847246036130094791

`A333145(∏{p}[n+1, #])`
-/

namespace A007875.P14847246036130094791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333145 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A007875.P14847246036130094791

namespace A007875

/-- `A333145(∏{p}[n+1, #])` -/
def P14847246036130094791.Spec : Prop :=
  ∀ n, P14847246036130094791.a n = A007875 (n + 1)

end A007875

/-! ## A007875.P682609588051438658

`A333749(∏{p}[n+1, #])`
-/

namespace A007875.P682609588051438658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333749 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A007875.P682609588051438658

namespace A007875

/-- `A333749(∏{p}[n+1, #])` -/
def P682609588051438658.Spec : Prop :=
  ∀ n, P682609588051438658.a n = A007875 (n + 1)

end A007875

/-! ## A007875.P4152527444734276948

`ceil(A034444(n+1)/2)`
-/

namespace A007875.P4152527444734276948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A034444 (n + 1) : ℚ) / 2⌉

end

end A007875.P4152527444734276948

namespace A007875

/-- `ceil(A034444(n+1)/2)` -/
def P4152527444734276948.Spec : Prop :=
  ∀ n, P4152527444734276948.a n = A007875 (n + 1)

end A007875

/-! ## A007875.P8568144809608690029

`A087893(n+1)/2+1`
-/

namespace A007875.P8568144809608690029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087893 (n + 1) : ℚ) / 2 + 1

end

end A007875.P8568144809608690029

namespace A007875

/-- `A087893(n+1)/2+1` -/
def P8568144809608690029.Spec : Prop :=
  ∀ n, P8568144809608690029.a n = (A007875 (n + 1) : ℚ)

end A007875

/-! ## A007875.P4408781491929026831

`lcm(2, A158522(n+1))/2`
-/

namespace A007875.P4408781491929026831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A158522 (n + 1)) : ℚ) / 2

end

end A007875.P4408781491929026831

namespace A007875

/-- `lcm(2, A158522(n+1))/2` -/
def P4408781491929026831.Spec : Prop :=
  ∀ n, P4408781491929026831.a n = (A007875 (n + 1) : ℚ)

end A007875

/-! ## A007875.P14247903981879560291

`A229347(n+1)/(n+1)`
-/

namespace A007875.P14247903981879560291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229347 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A007875.P14247903981879560291

namespace A007875

/-- `A229347(n+1)/(n+1)` -/
def P14247903981879560291.Spec : Prop :=
  ∀ n, P14247903981879560291.a n = (A007875 (n + 1) : ℚ)

end A007875

/-! ## A007875.P13130005582004352713

`A000010(∏{p}[n+1, ceil(atan(#))])`
-/

namespace A007875.P13130005582004352713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∏ p ∈ Nat.primeFactors (f1 n), ⌈Real.arctan (p : ℝ)⌉).toNat

end

end A007875.P13130005582004352713

namespace A007875

/-- `A000010(∏{p}[n+1, ceil(atan(#))])` -/
def P13130005582004352713.Spec : Prop :=
  ∀ n, P13130005582004352713.a n = A007875 (n + 1)

end A007875

/-! ## A007875.P12309880864390961590

`A000010(∏{p}[n+1, 2%#²])`
-/

namespace A007875.P12309880864390961590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∏ p ∈ Nat.primeFactors (f1 n), 2 % p ^ 2)

end

end A007875.P12309880864390961590

namespace A007875

/-- `A000010(∏{p}[n+1, 2%#²])` -/
def P12309880864390961590.Spec : Prop :=
  ∀ n, P12309880864390961590.a n = A007875 (n + 1)

end A007875

/-! ## A007875.P5810192780930485700

`A000010(2^∑{e}[∏{p}[n+1, #], #])`
-/

namespace A007875.P5810192780930485700
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A007875.P5810192780930485700

namespace A007875

/-- `A000010(2^∑{e}[∏{p}[n+1, #], #])` -/
def P5810192780930485700.Spec : Prop :=
  ∀ n, P5810192780930485700.a n = A007875 (n + 1)

end A007875

/-! ## A007875.P14660809909553457065

`A000010(A034444(n+1))`
-/

namespace A007875.P14660809909553457065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A034444 (n + 1)).toNat

end

end A007875.P14660809909553457065

namespace A007875

/-- `A000010(A034444(n+1))` -/
def P14660809909553457065.Spec : Prop :=
  ∀ n, P14660809909553457065.a n = A007875 (n + 1)

end A007875

/-! ## A007875.P15574233728542258779

`A038548(A007947(n+1))`
-/

namespace A007875.P15574233728542258779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A007947 (n + 1)).toNat

end

end A007875.P15574233728542258779

namespace A007875

/-- `A038548(A007947(n+1))` -/
def P15574233728542258779.Spec : Prop :=
  ∀ n, P15574233728542258779.a n = A007875 (n + 1)

end A007875

/-! ## A007875.P2289117839637331475

`A034444(A028234(n+1))`
-/

namespace A007875.P2289117839637331475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A028234 (n + 1)).toNat

end

end A007875.P2289117839637331475

namespace A007875

/-- `A034444(A028234(n+1))` -/
def P2289117839637331475.Spec : Prop :=
  ∀ n, P2289117839637331475.a n = A007875 (n + 1)

end A007875

/-! ## A007875.P15334916717615495573

`A003966(A074816(n+1))`
-/

namespace A007875.P15334916717615495573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003966 (A074816 (n + 1)).toNat

end

end A007875.P15334916717615495573

namespace A007875

/-- `A003966(A074816(n+1))` -/
def P15334916717615495573.Spec : Prop :=
  ∀ n, P15334916717615495573.a n = A007875 (n + 1)

end A007875

/-! ## A007875.P6038037071007617847

`A034444(A052125(n+1))`
-/

namespace A007875.P6038037071007617847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A052125 (n + 1)).toNat

end

end A007875.P6038037071007617847

namespace A007875

/-- `A034444(A052125(n+1))` -/
def P6038037071007617847.Spec : Prop :=
  ∀ n, P6038037071007617847.a n = A007875 (n + 1)

end A007875

/-! ## A007875.P5297631017962201579

`A001227(A292586(n+1))`
-/

namespace A007875.P5297631017962201579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A292586 (n + 1)).toNat

end

end A007875.P5297631017962201579

namespace A007875

/-- `A001227(A292586(n+1))` -/
def P5297631017962201579.Spec : Prop :=
  ∀ n, P5297631017962201579.a n = A007875 (n + 1)

end A007875

/-! ## A007875.P4767482106174642699

`A000005(A333175(n+1))`
-/

namespace A007875.P4767482106174642699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A333175 (n + 1)).toNat

end

end A007875.P4767482106174642699

namespace A007875

/-- `A000005(A333175(n+1))` -/
def P4767482106174642699.Spec : Prop :=
  ∀ n, P4767482106174642699.a n = A007875 (n + 1)

end A007875

/-!
# A007876: a(2n-1) = n*a(2n-2), a(2n) = n*a(2n-1) + 1.

The programs for A007876, there is no canonical definition to state claims against.
-/

/-! ## A007876.P8444280421386602976

`(a(n-1)-2)*floor(n/2)+a(n-1)+n` with `a(0)=1`
-/

namespace A007876.P8444280421386602976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - 2) * ⌊(n : ℚ) / 2⌋ + (a (n - 1) + (n : ℤ))

end

end A007876.P8444280421386602976

/-! ## A007876.P4936180478274902316

`a(n-1)-((2-a(n-1))*floor(n/2)-n)` with `a(0)=1`
-/

namespace A007876.P4936180478274902316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ((2 - a (n - 1)) * ⌊(n : ℚ) / 2⌋ - (n : ℤ))

end

end A007876.P4936180478274902316

/-! ## A007876.P1813867919233106323

`(a(n-1)+1)*A008619(n)-A028242(n)` with `a(0)=1`
-/

namespace A007876.P1813867919233106323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 1) * A008619 n - A028242 n

end

end A007876.P1813867919233106323

/-! ## A007876.P13447341772347543336

`a(n-1)*A008619(n)-(A059841(n)-1)` with `a(0)=1`
-/

namespace A007876.P13447341772347543336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A008619 n - (A059841 n - 1)

end

end A007876.P13447341772347543336

/-! ## A007876.P3687765828014647236

`a(n-1)*A008619(n)+A008619(n+1)-A008619(n)` with `a(0)=1`
-/

namespace A007876.P3687765828014647236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A008619 n + (A008619 (n + 1) - A008619 n)

end

end A007876.P3687765828014647236

/-!
# A007877: Period 4 zigzag sequence: repeat [0,1,2,1].

The programs for A007877, the canonical program `A007877.P1060081084138887876` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007877 has offset 0).

The definition of A007877 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007877.P1060081084138887876

`a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007877

/-- `a(n-4)` -/
def P1060081084138887876.Spec : Prop :=
  ∀ n, (P1060081084138887876.a n : ℤ) = A007877 n

theorem P1060081084138887876.correct : P1060081084138887876.Spec := by
  intro n
  simp only [A007877]

end A007877

/-!
# A007878: Number of terms in discriminant of generic polynomial of degree n.

The programs for A007878, there is no canonical definition to state claims against.
-/

/-! ## A007878.P17323017142787825968

`A138787(n)+a(n-1)` with `a(0)=1`
-/

namespace A007878.P17323017142787825968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A138787 n + a (n - 1)

end

end A007878.P17323017142787825968

/-! ## A007878.P2864976910210774179

`∑[A138787(round(sqrt(n²+1)))]`
-/

namespace A007878.P2864976910210774179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138787 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007878.P2864976910210774179

/-! ## A007878.P56297053607171886

`∑[A138787(n+1)]+1-A138787(n+1)`
-/

namespace A007878.P56297053607171886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A138787 (n + 1))

end

end A007878.P56297053607171886

/-!
# A007879: Chimes made by clock striking the hour and half-hour.

The programs for A007879, the canonical program `A007879.P11691752543807339576` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007879 has offset 0).

The definition of A007879 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007879.P11691752543807339576

`1+((n-1)*(1-(-1)^n)/4)%12`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007879

/-- `1+((n-1)*(1-(-1)^n)/4)%12` -/
def P11691752543807339576.Spec : Prop :=
  ∀ n, P11691752543807339576.a n = A007879 n

theorem P11691752543807339576.correct : P11691752543807339576.Spec := by
  intro n
  simp only [A007879]

end A007879

/-!
# A007880: Westminster chimes at 15-minute intervals (1).

The programs for A007880, the canonical program `A007880.P277093750328925867` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007880 has offset 0).

The definition of A007880 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007880.P277093750328925867

`A130659(n)+A001492(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A007880

/-- `A130659(n)+A001492(n)` -/
def P277093750328925867.Spec : Prop :=
  ∀ n, P277093750328925867.a n = A007880 n

theorem P277093750328925867.correct : P277093750328925867.Spec := by
  intro n
  simp only [A007880]

end A007880

/-!
# A007882: Number of lattice points inside circle of radius n is 4*(a(n)+n)-3.

The programs for A007882, there is no canonical definition to state claims against.
-/

/-! ## A007882.P5407639997793386778

`(A051132(n+1)+3)/4-(n+1)`
-/

namespace A007882.P5407639997793386778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051132 (n + 1) + 3 : ℚ) / 4 - (n + 1 : ℚ)

end

end A007882.P5407639997793386778

/-! ## A007882.P6029817921424039699

`∑[A059169(Δ[A051132(n)])]`
-/

namespace A007882.P6029817921424039699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051132 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007882.P6029817921424039699

/-! ## A007882.P12909035675583204838

`Δ[A211637(n)]`
-/

namespace A007882.P12909035675583204838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211637 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007882.P12909035675583204838

/-! ## A007882.P7591099613692129791

`A211637(n+1)-A211637(n)`
-/

namespace A007882.P7591099613692129791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211637 (n + 1) - A211637 n

end

end A007882.P7591099613692129791

/-! ## A007882.P12320562138127839358

`record[A211637(A008611(n))]-A211637(n)`
-/

namespace A007882.P12320562138127839358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211637 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A211637 n

end

end A007882.P12320562138127839358

/-! ## A007882.P7512880535122563237

`record[A211637(A008612(n))]-A211637(n)`
-/

namespace A007882.P7512880535122563237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211637 (A008612 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A211637 n

end

end A007882.P7512880535122563237

/-! ## A007882.P5065902373802612007

`record[A211637(A055400(n))]-A211637(n)`
-/

namespace A007882.P5065902373802612007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211637 (A055400 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A211637 n

end

end A007882.P5065902373802612007

/-! ## A007882.P12898909677020519590

`record[A211637(A057979(n))]-A211637(n)`
-/

namespace A007882.P12898909677020519590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211637 (A057979 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A211637 n

end

end A007882.P12898909677020519590

/-! ## A007882.P13139143111755185068

`Δ[n^3-A211634(n)]`
-/

namespace A007882.P13139143111755185068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - A211634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007882.P13139143111755185068

/-! ## A007882.P8734395128933524610

`A237526(n*(n+2))`
-/

namespace A007882.P8734395128933524610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237526 (n * (n + 2))

end

end A007882.P8734395128933524610

/-! ## A007882.P17351133545088924998

`A014200(n*(n+2))-n`
-/

namespace A007882.P17351133545088924998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014200 (n * (n + 2)) - (n : ℤ)

end

end A007882.P17351133545088924998

/-!
# A007883: Westminster chimes at 15-minute intervals (2).

The programs for A007883, the canonical program `A007883.P7406616137818884317` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007883 has offset 1).

The definition of A007883 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 833 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007883.P7406616137818884317

`A007884(or(3, 12*n+8))+A007880(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A007883

/-- `A007884(or(3, 12*n+8))+A007880(n)` -/
def P7406616137818884317.Spec : Prop :=
  ∀ n, P7406616137818884317.a n = A007883 (n + 1)

theorem P7406616137818884317.correct : P7406616137818884317.Spec := by
  intro n
  simp only [A007883, Nat.add_sub_cancel]

end A007883

/-!
# A007884: Chimes made by clock striking quarter-hours.

The programs for A007884, the canonical program `A007884.P8538330166122526266` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007884 has offset 0).

The definition of A007884 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007884.P8538330166122526266

`A001492(n)+A010873(n)%3`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A007884

/-- `A001492(n)+A010873(n)%3` -/
def P8538330166122526266.Spec : Prop :=
  ∀ n, P8538330166122526266.a n = A007884 n

theorem P8538330166122526266.correct : P8538330166122526266.Spec := by
  intro n
  simp only [A007884]

end A007884

/-!
# A007885: Numbers n such that balanced sequences exist with n distinct elements.

The programs for A007885, there is no canonical definition to state claims against.
-/

/-! ## A007885.P3163895538504895420

`lt[n-2, lcm(2, A007733(n+1))]+1`
-/

namespace A007885.P3163895538504895420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A007733 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A007885.P3163895538504895420

/-! ## A007885.P14283842600782950844

`record[(n+1)%(4*A054705(A006530(n+1)))]`
-/

namespace A007885.P14283842600782950844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (4 * A054705 (A006530 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007885.P14283842600782950844

/-! ## A007885.P10140476656692945833

`record[A002034(n+1)%A008586(A054705(n+1))]`
-/

namespace A007885.P10140476656692945833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002034 (n + 1)) (A008586 (A054705 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007885.P10140476656692945833

/-! ## A007885.P3752704379657188547

`A065033(eq[A007735(n+1), A110659(n)])`
-/

namespace A007885.P3752704379657188547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A007885.P3752704379657188547

/-! ## A007885.P10219245298346196150

`record[gcd(A204987(n+1), A323912(n+1))]`
-/

namespace A007885.P10219245298346196150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A204987 (n + 1)) (A323912 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007885.P10219245298346196150

/-!
# A007886: Number of cycles induced by iterating the Gray-coding of an n-bit number: a(n+1) = a(n) + 2^n/C_n, where C_n = least power of 2 >= n (C_n is the length of the cycle), with a(0) = 1.

The programs for A007886, the canonical program `A007886.P6848228114351566746` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007886 has offset 0).

The definition of A007886 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007886.P6848228114351566746

`∑[A054243(abs(1-n))]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A007886

/-- `∑[A054243(abs(1-n))]` -/
def P6848228114351566746.Spec : Prop :=
  ∀ n, P6848228114351566746.a n = A007886 n

theorem P6848228114351566746.correct : P6848228114351566746.Spec := by
  intro n
  simp only [A007886]

end A007886

/-! ## A007886.P9510213223030797492

`A054243(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A007886.P9510213223030797492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054243 (n - 1) + a (n - 1)

end

end A007886.P9510213223030797492

namespace A007886

/-- `A054243(n-1)+a(n-1)` -/
def P9510213223030797492.Spec : Prop :=
  ∀ n, P9510213223030797492.a n = A007886 n

end A007886

/-! ## A007886.P9634964421414793836

`∑[2^(n-ceil(log2(A004273(n)+1)))]`
-/

namespace A007886.P9634964421414793836
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - ⌈Real.logb 2 (A004273 n + 1 : ℝ)⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007886.P9634964421414793836

namespace A007886

/-- `∑[2^(n-ceil(log2(A004273(n)+1)))]` -/
def P9634964421414793836.Spec : Prop :=
  ∀ n, P9634964421414793836.a n = (A007886 n : ℚ)

end A007886

/-! ## A007886.P11556724603611545722

`∑[∏[A086669(A131136(n))]]`
-/

namespace A007886.P11556724603611545722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086669 (A131136 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007886.P11556724603611545722

namespace A007886

/-- `∑[∏[A086669(A131136(n))]]` -/
def P11556724603611545722.Spec : Prop :=
  ∀ n, P11556724603611545722.a n = A007886 n

end A007886

/-! ## A007886.P18078476414016354709

`∑[∏[A043529(A289207(n))]]`
-/

namespace A007886.P18078476414016354709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 (A289207 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007886.P18078476414016354709

namespace A007886

/-- `∑[∏[A043529(A289207(n))]]` -/
def P18078476414016354709.Spec : Prop :=
  ∀ n, P18078476414016354709.a n = A007886 n

end A007886

/-! ## A007886.P7267783197444492815

`∑[A054243(n)/A020639(A093659(n))]`
-/

namespace A007886.P7267783197444492815
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054243 n : ℚ) / (A020639 (A093659 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007886.P7267783197444492815

namespace A007886

/-- `∑[A054243(n)/A020639(A093659(n))]` -/
def P7267783197444492815.Spec : Prop :=
  ∀ n, P7267783197444492815.a n = (A007886 n : ℚ)

end A007886

/-! ## A007886.P17300585299131451532

`∑[A054243(n)/A020639(A284001(n))]`
-/

namespace A007886.P17300585299131451532
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054243 n : ℚ) / (A020639 (A284001 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007886.P17300585299131451532

namespace A007886

/-- `∑[A054243(n)/A020639(A284001(n))]` -/
def P17300585299131451532.Spec : Prop :=
  ∀ n, P17300585299131451532.a n = (A007886 n : ℚ)

end A007886

/-! ## A007886.P15938786440646927584

`∑[A000079(n)/A062383(A004273(n))]`
-/

namespace A007886.P15938786440646927584
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / (A062383 (A004273 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007886.P15938786440646927584

namespace A007886

/-- `∑[A000079(n)/A062383(A004273(n))]` -/
def P15938786440646927584.Spec : Prop :=
  ∀ n, P15938786440646927584.a n = (A007886 n : ℚ)

end A007886

/-! ## A007886.P11480274717100879177

`∑[∏[A014709(A173522(n))]]`
-/

namespace A007886.P11480274717100879177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 (A173522 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007886.P11480274717100879177

namespace A007886

/-- `∑[∏[A014709(A173522(n))]]` -/
def P11480274717100879177.Spec : Prop :=
  ∀ n, P11480274717100879177.a n = A007886 n

end A007886

/-! ## A007886.P3042845426345645577

`∑[∏[gcd(2, A002995(n))]]`
-/

namespace A007886.P3042845426345645577
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A002995 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007886.P3042845426345645577

namespace A007886

/-- `∑[∏[gcd(2, A002995(n))]]` -/
def P3042845426345645577.Spec : Prop :=
  ∀ n, (P3042845426345645577.a n : ℤ) = A007886 n

end A007886

/-! ## A007886.P3671648238687788925

`∑[∏[A048766(A245186(n))]]`
-/

namespace A007886.P3671648238687788925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A245186 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007886.P3671648238687788925

namespace A007886

/-- `∑[∏[A048766(A245186(n))]]` -/
def P3671648238687788925.Spec : Prop :=
  ∀ n, P3671648238687788925.a n = A007886 n

end A007886

/-!
# A007887: a(n) = Fibonacci(n) mod 9.

The programs for A007887, the canonical program `A007887.P8103343875470064747` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007887 has offset 0).

The definition of A007887 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007887.P8103343875470064747

`(a(n-1)+a(n-2))%9` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007887

/-- `(a(n-1)+a(n-2))%9` -/
def P8103343875470064747.Spec : Prop :=
  ∀ n, (P8103343875470064747.a n : ℤ) = A007887 n

theorem P8103343875470064747.correct : P8103343875470064747.Spec := by
  intro n
  simp only [A007887]

end A007887

/-!
# A007889: Number of intransitive (or alternating, or Stanley) trees: vertices are [0,n] and for no i

The programs for A007889, there is no canonical definition to state claims against.
-/

/-! ## A007889.P1280287515924988773

`A100526(n+1)/(n+1)`
-/

namespace A007889.P1280287515924988773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100526 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A007889.P1280287515924988773

/-! ## A007889.P9187174018353110602

`A000032(floor(1/(n+1)))*A088789(n+1)/(n+1)`
-/

namespace A007889.P9187174018353110602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 ⌊1 / (n + 1 : ℚ)⌋.toNat * A088789 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A007889.P9187174018353110602

/-! ## A007889.P13487966487976876435

`A000005(or(1, A020639(n+1)))*A088789(n+1)/(n+1)`
-/

namespace A007889.P13487966487976876435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (Int.lor 1 (A020639 (n + 1))).toNat * A088789 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A007889.P13487966487976876435

/-! ## A007889.P542223228246317577

`A349562(n)/2^n`
-/

namespace A007889.P542223228246317577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349562 n : ℚ) / (2 ^ n : ℚ)

end

end A007889.P542223228246317577

/-! ## A007889.P11147140138623054988

`A201595(n)/A011782(n)`
-/

namespace A007889.P11147140138623054988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201595 n : ℚ) / (A011782 n : ℚ)

end

end A007889.P11147140138623054988

/-! ## A007889.P8348344376841587569

`abs(A349562(n)/A120617(n))`
-/

namespace A007889.P8348344376841587569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A349562 n : ℚ) / (A120617 n : ℚ)|

end

end A007889.P8348344376841587569

/-! ## A007889.P1233859674052966726

`A201595(n)/∑[A034008(n)]`
-/

namespace A007889.P1233859674052966726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201595 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A007889.P1233859674052966726

/-! ## A007889.P16166473843607228599

`A000111(n)/A000828(n)*A201595(n)`
-/

namespace A007889.P16166473843607228599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000111 n : ℚ) / (A000828 n : ℚ) * (A201595 n : ℚ)

end

end A007889.P16166473843607228599

/-!
# A007890: Summarize the previous term! (in decreasing order).

The programs for A007890, there is no canonical definition to state claims against.
-/

/-! ## A007890.P12700295732984738850

`A244112(a(n-1))` with `a(0)=1`
-/

namespace A007890.P12700295732984738850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A244112 (a (n - 1)).toNat

end

end A007890.P12700295732984738850

/-!
# A007891: A Kutz sequence.

The programs for A007891, the canonical program `A007891.P8500169547092509693` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007891 has offset 1).

The definition of A007891 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007891.P3186626278531629905

`(n+1-2*floor((n+1)/3))²`
-/

namespace A007891.P3186626278531629905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - 2 * ⌊(n + 1 : ℚ) / 3⌋) ^ 2

end

end A007891.P3186626278531629905

namespace A007891

/-- `(n+1-2*floor((n+1)/3))²` -/
def P3186626278531629905.Spec : Prop :=
  ∀ n, P3186626278531629905.a n = A007891 (n + 1)

end A007891

/-! ## A007891.P8500169547092509693

`a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` with `a(0)=1, a(1)=4, a(2)=1, a(3)=4, a(4)=9, a(5)=4, a(6)=9`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007891

/-- `a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` -/
def P8500169547092509693.Spec : Prop :=
  ∀ n, P8500169547092509693.a n = A007891 (n + 1)

theorem P8500169547092509693.correct : P8500169547092509693.Spec := by
  intro n
  simp only [A007891, Nat.add_sub_cancel]

end A007891

/-! ## A007891.P7881542305195690220

`(1/∑[floor(a(n-3))])^(-2)` with `a(0)=1, a(1)=1, a(2)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A007891.P7881542305195690220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)) ^ (-2 : ℤ)

end

end A007891.P7881542305195690220

namespace A007891

/-- `(1/∑[floor(a(n-3))])^(-2)` -/
def P7881542305195690220.Spec : Prop :=
  ∀ n, P7881542305195690220.a n = (A007891 (n + 1) : ℚ)

end A007891

/-! ## A007891.P5611064951416827033

`∑[floor(a(n-3))]^(-1)^(-2)` with `a(0)=1, a(1)=1, a(2)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A007891.P5611064951416827033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (-1 : ℤ)) ^ (-2 : ℤ)

end

end A007891.P5611064951416827033

namespace A007891

/-- `∑[floor(a(n-3))]^(-1)^(-2)` -/
def P5611064951416827033.Spec : Prop :=
  ∀ n, P5611064951416827033.a n = (A007891 (n + 1) : ℚ)

end A007891

/-! ## A007891.P5930344071580530265

`(1/∑[a(n-1)*a(n-2)])^(-2)` with `a(0)=-1, a(1)=-1`
-/

namespace A007891.P5930344071580530265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, -1] fun n f1 =>
  f1 (n - 1) * f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)) ^ (-2 : ℤ)

end

end A007891.P5930344071580530265

namespace A007891

/-- `(1/∑[a(n-1)*a(n-2)])^(-2)` -/
def P5930344071580530265.Spec : Prop :=
  ∀ n, P5930344071580530265.a n = (A007891 (n + 1) : ℚ)

end A007891

/-! ## A007891.P1484999211086339576

`(1/∑[a(n-1)/a(n-2)])^(-2)` with `a(0)=-1, a(1)=-1`
-/

namespace A007891.P1484999211086339576
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [-1, -1] fun n f1 =>
  f1 (n - 1) / f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 / (∑ j ∈ Finset.range (n + 1), f1 j)) ^ (-2 : ℤ)

end

end A007891.P1484999211086339576

namespace A007891

/-- `(1/∑[a(n-1)/a(n-2)])^(-2)` -/
def P1484999211086339576.Spec : Prop :=
  ∀ n, P1484999211086339576.a n = (A007891 (n + 1) : ℚ)

end A007891

/-! ## A007891.P2695957634381544835

`∑[a(n-1)*a(n-2)]^(-1)^(-2)` with `a(0)=-1, a(1)=-1`
-/

namespace A007891.P2695957634381544835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, -1] fun n f1 =>
  f1 (n - 1) * f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (-1 : ℤ)) ^ (-2 : ℤ)

end

end A007891.P2695957634381544835

namespace A007891

/-- `∑[a(n-1)*a(n-2)]^(-1)^(-2)` -/
def P2695957634381544835.Spec : Prop :=
  ∀ n, P2695957634381544835.a n = (A007891 (n + 1) : ℚ)

end A007891

/-! ## A007891.P8637772666049699351

`A000290(2*n+1-A008854(n+1))`
-/

namespace A007891.P8637772666049699351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 ((2 * n + 1 : ℤ) - A008854 (n + 1)).toNat

end

end A007891.P8637772666049699351

namespace A007891

/-- `A000290(2*n+1-A008854(n+1))` -/
def P8637772666049699351.Spec : Prop :=
  ∀ n, P8637772666049699351.a n = A007891 (n + 1)

end A007891

/-! ## A007891.P11391069649393311177

`A000290(A236337(n)-A236343(n))`
-/

namespace A007891.P11391069649393311177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A236337 n - A236343 n).toNat

end

end A007891.P11391069649393311177

namespace A007891

/-- `A000290(A236337(n)-A236343(n))` -/
def P11391069649393311177.Spec : Prop :=
  ∀ n, P11391069649393311177.a n = A007891 (n + 1)

end A007891

/-! ## A007891.P6655381159611712125

`A000290(A008611(n+2))`
-/

namespace A007891.P6655381159611712125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A008611 (n + 2)).toNat

end

end A007891.P6655381159611712125

namespace A007891

/-- `A000290(A008611(n+2))` -/
def P6655381159611712125.Spec : Prop :=
  ∀ n, P6655381159611712125.a n = A007891 (n + 1)

end A007891

/-! ## A007891.P13211554028304813431

`A079097(A063198(n+2))`
-/

namespace A007891.P13211554028304813431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 (A063198 (n + 2)).toNat

end

end A007891.P13211554028304813431

namespace A007891

/-- `A079097(A063198(n+2))` -/
def P13211554028304813431.Spec : Prop :=
  ∀ n, P13211554028304813431.a n = A007891 (n + 1)

end A007891

/-! ## A007891.P6999414709614423372

`A075561(A143097(n+2))`
-/

namespace A007891.P6999414709614423372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075561 (A143097 (n + 2)).toNat

end

end A007891.P6999414709614423372

namespace A007891

/-- `A075561(A143097(n+2))` -/
def P6999414709614423372.Spec : Prop :=
  ∀ n, P6999414709614423372.a n = A007891 (n + 1)

end A007891

/-! ## A007891.P12848770598944807618

`A004652(A063198(n+2)+1)`
-/

namespace A007891.P12848770598944807618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (A063198 (n + 2) + 1).toNat

end

end A007891.P12848770598944807618

namespace A007891

/-- `A004652(A063198(n+2)+1)` -/
def P12848770598944807618.Spec : Prop :=
  ∀ n, P12848770598944807618.a n = A007891 (n + 1)

end A007891

/-! ## A007891.P10595589158990095570

`A002620(2*A008611(n+2))`
-/

namespace A007891.P10595589158990095570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A008611 (n + 2)).toNat

end

end A007891.P10595589158990095570

namespace A007891

/-- `A002620(2*A008611(n+2))` -/
def P10595589158990095570.Spec : Prop :=
  ∀ n, P10595589158990095570.a n = A007891 (n + 1)

end A007891

/-! ## A007891.P4104403775676629001

`A004652(2*A008611(n+2))`
-/

namespace A007891.P4104403775676629001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (2 * A008611 (n + 2)).toNat

end

end A007891.P4104403775676629001

namespace A007891

/-- `A004652(2*A008611(n+2))` -/
def P4104403775676629001.Spec : Prop :=
  ∀ n, P4104403775676629001.a n = A007891 (n + 1)

end A007891

/-! ## A007891.P8970961610191713169

`A123596(2*A008611(n+2))`
-/

namespace A007891.P8970961610191713169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123596 (2 * A008611 (n + 2)).toNat

end

end A007891.P8970961610191713169

namespace A007891

/-- `A123596(2*A008611(n+2))` -/
def P8970961610191713169.Spec : Prop :=
  ∀ n, P8970961610191713169.a n = A007891 (n + 1)

end A007891

/-! ## A007891.P8682425870619018794

`A004652(n+2-A063942(n+1))`
-/

namespace A007891.P8682425870619018794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 ((n + 2 : ℤ) - A063942 (n + 1)).toNat

end

end A007891.P8682425870619018794

namespace A007891

/-- `A004652(n+2-A063942(n+1))` -/
def P8682425870619018794.Spec : Prop :=
  ∀ n, P8682425870619018794.a n = A007891 (n + 1)

end A007891

/-! ## A007891.P6135515830924635605

`A000290(n+2-A130823(n+2))`
-/

namespace A007891.P6135515830924635605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 ((n + 2 : ℤ) - A130823 (n + 2)).toNat

end

end A007891.P6135515830924635605

namespace A007891

/-- `A000290(n+2-A130823(n+2))` -/
def P6135515830924635605.Spec : Prop :=
  ∀ n, P6135515830924635605.a n = A007891 (n + 1)

end A007891

/-!
# A007892: A Kutz sequence.

The programs for A007892, the canonical program `A007892.P7298296081209675653` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007892 has offset 1).

The definition of A007892 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007892.P7298296081209675653

`(n+1-3*floor((n+1)/4))²`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007892

/-- `(n+1-3*floor((n+1)/4))²` -/
def P7298296081209675653.Spec : Prop :=
  ∀ n, P7298296081209675653.a n = A007892 (n + 1)

theorem P7298296081209675653.correct : P7298296081209675653.Spec := by
  intro n
  simp only [A007892, Nat.add_sub_cancel]

end A007892

/-! ## A007892.P17204968164493024069

`A000290(A110657(n)+1)`
-/

namespace A007892.P17204968164493024069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A110657 n + 1).toNat

end

end A007892.P17204968164493024069

namespace A007892

/-- `A000290(A110657(n)+1)` -/
def P17204968164493024069.Spec : Prop :=
  ∀ n, P17204968164493024069.a n = A007892 (n + 1)

end A007892

/-! ## A007892.P8778125658686792856

`A004652(2*(A110657(n)+1))`
-/

namespace A007892.P8778125658686792856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (2 * (A110657 n + 1)).toNat

end

end A007892.P8778125658686792856

namespace A007892

/-- `A004652(2*(A110657(n)+1))` -/
def P8778125658686792856.Spec : Prop :=
  ∀ n, P8778125658686792856.a n = A007892 (n + 1)

end A007892

/-! ## A007892.P1381837637739269551

`(A028242(A028242(n))+1)^2`
-/

namespace A007892.P1381837637739269551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028242 (A028242 n).toNat + 1) ^ 2

end

end A007892.P1381837637739269551

namespace A007892

/-- `(A028242(A028242(n))+1)^2` -/
def P1381837637739269551.Spec : Prop :=
  ∀ n, P1381837637739269551.a n = A007892 (n + 1)

end A007892

/-! ## A007892.P17804815573713538780

`A000290(A028242(A028242(n))+1)`
-/

namespace A007892.P17804815573713538780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A028242 (A028242 n).toNat + 1).toNat

end

end A007892.P17804815573713538780

namespace A007892

/-- `A000290(A028242(A028242(n))+1)` -/
def P17804815573713538780.Spec : Prop :=
  ∀ n, P17804815573713538780.a n = A007892 (n + 1)

end A007892

/-! ## A007892.P11965124521923952987

`A004652(A110657(n)+A110657(n)+2)`
-/

namespace A007892.P11965124521923952987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (A110657 n + (A110657 n + 2)).toNat

end

end A007892.P11965124521923952987

namespace A007892

/-- `A004652(A110657(n)+A110657(n)+2)` -/
def P11965124521923952987.Spec : Prop :=
  ∀ n, P11965124521923952987.a n = A007892 (n + 1)

end A007892

/-! ## A007892.P4014996435843738906

`A000290(A010873(n+1)+A002265(n+1))`
-/

namespace A007892.P4014996435843738906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A010873 (n + 1) + A002265 (n + 1)).toNat

end

end A007892.P4014996435843738906

namespace A007892

/-- `A000290(A010873(n+1)+A002265(n+1))` -/
def P4014996435843738906.Spec : Prop :=
  ∀ n, P4014996435843738906.a n = A007892 (n + 1)

end A007892

/-! ## A007892.P6253461303499625592

`A000290(n+1-A008585(A002265(n+1)))`
-/

namespace A007892.P6253461303499625592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 ((n + 1 : ℤ) - A008585 (A002265 (n + 1)).toNat).toNat

end

end A007892.P6253461303499625592

namespace A007892

/-- `A000290(n+1-A008585(A002265(n+1)))` -/
def P6253461303499625592.Spec : Prop :=
  ∀ n, P6253461303499625592.a n = A007892 (n + 1)

end A007892

/-! ## A007892.P470466124453453783

`A000290(A083219(n+1)-A002265(n+1))`
-/

namespace A007892.P470466124453453783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A083219 (n + 1) - A002265 (n + 1)).toNat

end

end A007892.P470466124453453783

namespace A007892

/-- `A000290(A083219(n+1)-A002265(n+1))` -/
def P470466124453453783.Spec : Prop :=
  ∀ n, P470466124453453783.a n = A007892 (n + 1)

end A007892

/-! ## A007892.P17462169120295786092

`A004652(A168232(A052938(n+3)))`
-/

namespace A007892.P17462169120295786092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (A168232 (A052938 (n + 3)).toNat).toNat

end

end A007892.P17462169120295786092

namespace A007892

/-- `A004652(A168232(A052938(n+3)))` -/
def P17462169120295786092.Spec : Prop :=
  ∀ n, P17462169120295786092.a n = A007892 (n + 1)

end A007892

/-! ## A007892.P15703687984696010947

`A007893(A001068(n+1))`
-/

namespace A007892.P15703687984696010947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007893 (A001068 (n + 1)).toNat

end

end A007892.P15703687984696010947

namespace A007892

/-- `A007893(A001068(n+1))` -/
def P15703687984696010947.Spec : Prop :=
  ∀ n, P15703687984696010947.a n = A007892 (n + 1)

end A007892

/-!
# A007893: A Kutz sequence.

The programs for A007893, the canonical program `A007893.P16759426605652294665` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007893 has offset 1).

The definition of A007893 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007893.P16759426605652294665

`(n+1-4*floor((n+1)/5))²`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007893

/-- `(n+1-4*floor((n+1)/5))²` -/
def P16759426605652294665.Spec : Prop :=
  ∀ n, P16759426605652294665.a n = A007893 (n + 1)

theorem P16759426605652294665.correct : P16759426605652294665.Spec := by
  intro n
  simp only [A007893, Nat.add_sub_cancel]

end A007893

/-! ## A007893.P6988644027530751794

`∑[A291568(n+1)]*∑[A291568(n+1)]`
-/

namespace A007893.P6988644027530751794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A007893.P6988644027530751794

namespace A007893

/-- `∑[A291568(n+1)]*∑[A291568(n+1)]` -/
def P6988644027530751794.Spec : Prop :=
  ∀ n, P6988644027530751794.a n = A007893 (n + 1)

end A007893

/-! ## A007893.P9017851286761099046

`A000290(A358012(n+1))`
-/

namespace A007893.P9017851286761099046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A358012 (n + 1)).toNat

end

end A007893.P9017851286761099046

namespace A007893

/-- `A000290(A358012(n+1))` -/
def P9017851286761099046.Spec : Prop :=
  ∀ n, P9017851286761099046.a n = A007893 (n + 1)

end A007893

/-! ## A007893.P2200320127176545977

`(A010874(n+1)+A002266(n+1))*A358012(n+1)`
-/

namespace A007893.P2200320127176545977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010874 (n + 1) + A002266 (n + 1)) * A358012 (n + 1)

end

end A007893.P2200320127176545977

namespace A007893

/-- `(A010874(n+1)+A002266(n+1))*A358012(n+1)` -/
def P2200320127176545977.Spec : Prop :=
  ∀ n, P2200320127176545977.a n = A007893 (n + 1)

end A007893

/-! ## A007893.P14710147058658197256

`A028310(∑[A291568(n+1)]²)`
-/

namespace A007893.P14710147058658197256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A007893.P14710147058658197256

namespace A007893

/-- `A028310(∑[A291568(n+1)]²)` -/
def P14710147058658197256.Spec : Prop :=
  ∀ n, P14710147058658197256.a n = A007893 (n + 1)

end A007893

/-! ## A007893.P13939848892213893365

`A191558(∑[A291568(n+1)]²)`
-/

namespace A007893.P13939848892213893365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A007893.P13939848892213893365

namespace A007893

/-- `A191558(∑[A291568(n+1)]²)` -/
def P13939848892213893365.Spec : Prop :=
  ∀ n, P13939848892213893365.a n = A007893 (n + 1)

end A007893

/-! ## A007893.P10965597052224662581

`A131508(A081594(2*(n+1))²)`
-/

namespace A007893.P10965597052224662581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131508 (A081594 (2 * (n + 1)) ^ 2).toNat

end

end A007893.P10965597052224662581

namespace A007893

/-- `A131508(A081594(2*(n+1))²)` -/
def P10965597052224662581.Spec : Prop :=
  ∀ n, P10965597052224662581.a n = A007893 (n + 1)

end A007893

/-!
# A007895: Number of terms in the Zeckendorf representation of n (write n as a sum of non-consecutive distinct Fibonacci numbers).

The programs for A007895, the canonical program `A007895.P13159574906702943091` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007895 has offset 0).

The definition of A007895 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143299, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A007895.P13159574906702943091

`A143299(n+1)-1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A007895

/-- `A143299(n+1)-1` -/
def P13159574906702943091.Spec : Prop :=
  ∀ n, P13159574906702943091.a n = A007895 n

theorem P13159574906702943091.correct : P13159574906702943091.Spec := by
  intro n
  simp only [A007895]

end A007895

/-! ## A007895.P12215982180762358004

`A000120(A003714(n))`
-/

namespace A007895.P12215982180762358004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003714 n).toNat

end

end A007895.P12215982180762358004

namespace A007895

/-- `A000120(A003714(n))` -/
def P12215982180762358004.Spec : Prop :=
  ∀ n, P12215982180762358004.a n = A007895 n

end A007895

/-! ## A007895.P1331526142508013175

`dr(A014417(n))`
-/

namespace A007895.P1331526142508013175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A014417 n)

end

end A007895.P1331526142508013175

namespace A007895

/-- `dr(A014417(n))` -/
def P1331526142508013175.Spec : Prop :=
  ∀ n, (P1331526142508013175.a n : ℤ) = A007895 n

end A007895

/-! ## A007895.P487805849074577955

`n-A219641(n)`
-/

namespace A007895.P487805849074577955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A219641 n

end

end A007895.P487805849074577955

namespace A007895

/-- `n-A219641(n)` -/
def P487805849074577955.Spec : Prop :=
  ∀ n, P487805849074577955.a n = A007895 n

end A007895

/-! ## A007895.P2468911532314471693

`ceil(A104324(n)/2)`
-/

namespace A007895.P2468911532314471693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A104324 n : ℚ) / 2⌉

end

end A007895.P2468911532314471693

namespace A007895

/-- `ceil(A104324(n)/2)` -/
def P2468911532314471693.Spec : Prop :=
  ∀ n, P2468911532314471693.a n = A007895 n

end A007895

/-! ## A007895.P3436647281022659566

`a(A019586(n))+1` with `a(0)=0`
-/

namespace A007895.P3436647281022659566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A019586 n).toNat + 1

end

end A007895.P3436647281022659566

namespace A007895

/-- `a(A019586(n))+1` -/
def P3436647281022659566.Spec : Prop :=
  ∀ n, (P3436647281022659566.a n : ℤ) = A007895 n

end A007895

/-! ## A007895.P4385463271011002272

`2*(n+1)-A288625(n+1)`
-/

namespace A007895.P4385463271011002272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A288625 (n + 1)

end

end A007895.P4385463271011002272

namespace A007895

/-- `2*(n+1)-A288625(n+1)` -/
def P4385463271011002272.Spec : Prop :=
  ∀ n, P4385463271011002272.a n = A007895 n

end A007895

/-! ## A007895.P9905260963540178168

`A110654(A104324(n))`
-/

namespace A007895.P9905260963540178168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A104324 n).toNat

end

end A007895.P9905260963540178168

namespace A007895

/-- `A110654(A104324(n))` -/
def P9905260963540178168.Spec : Prop :=
  ∀ n, P9905260963540178168.a n = A007895 n

end A007895

/-! ## A007895.P12449794408968670159

`A004526(A104324(n)+1)`
-/

namespace A007895.P12449794408968670159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A104324 n + 1).toNat

end

end A007895.P12449794408968670159

namespace A007895

/-- `A004526(A104324(n)+1)` -/
def P12449794408968670159.Spec : Prop :=
  ∀ n, P12449794408968670159.a n = A007895 n

end A007895

/-! ## A007895.P5860333760063745841

`A213911(n)+A003849(n)`
-/

namespace A007895.P5860333760063745841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 n + A003849 n

end

end A007895.P5860333760063745841

namespace A007895

/-- `A213911(n)+A003849(n)` -/
def P5860333760063745841.Spec : Prop :=
  ∀ n, P5860333760063745841.a n = A007895 n

end A007895

/-! ## A007895.P4147638455143381045

`A000120(n)-A220115(n)`
-/

namespace A007895.P4147638455143381045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A220115 n

end

end A007895.P4147638455143381045

namespace A007895

/-- `A000120(n)-A220115(n)` -/
def P4147638455143381045.Spec : Prop :=
  ∀ n, P4147638455143381045.a n = A007895 n

end A007895

/-! ## A007895.P11344679192727321191

`A104324(n)-A213911(n)`
-/

namespace A007895.P11344679192727321191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104324 n - A213911 n

end

end A007895.P11344679192727321191

namespace A007895

/-- `A104324(n)-A213911(n)` -/
def P11344679192727321191.Spec : Prop :=
  ∀ n, P11344679192727321191.a n = A007895 n

end A007895

/-! ## A007895.P4980546284548640928

`A104324(A022342(n+1))/2`
-/

namespace A007895.P4980546284548640928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104324 (A022342 (n + 1)).toNat : ℚ) / 2

end

end A007895.P4980546284548640928

namespace A007895

/-- `A104324(A022342(n+1))/2` -/
def P4980546284548640928.Spec : Prop :=
  ∀ n, P4980546284548640928.a n = (A007895 n : ℚ)

end A007895

/-! ## A007895.P14853922623496273100

`A022342(n+1)-A219640(n)`
-/

namespace A007895.P14853922623496273100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (n + 1) - A219640 n

end

end A007895.P14853922623496273100

namespace A007895

/-- `A022342(n+1)-A219640(n)` -/
def P14853922623496273100.Spec : Prop :=
  ∀ n, P14853922623496273100.a n = A007895 n

end A007895

/-! ## A007895.P5031904567052383558

`A135817(n+1)-A135818(n+1)`
-/

namespace A007895.P5031904567052383558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135817 (n + 1) - A135818 (n + 1)

end

end A007895.P5031904567052383558

namespace A007895

/-- `A135817(n+1)-A135818(n+1)` -/
def P5031904567052383558.Spec : Prop :=
  ∀ n, P5031904567052383558.a n = A007895 n

end A007895

/-! ## A007895.P1634309563095046996

`A127229(n+5)%A143299(n+1)`
-/

namespace A007895.P1634309563095046996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A143299 (n + 1))

end

end A007895.P1634309563095046996

namespace A007895

/-- `A127229(n+5)%A143299(n+1)` -/
def P1634309563095046996.Spec : Prop :=
  ∀ n, P1634309563095046996.a n = A007895 n

end A007895

/-! ## A007895.P9030935922035035239

`∑[2-Δ[A288601(n+1)]]`
-/

namespace A007895.P9030935922035035239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288601 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007895.P9030935922035035239

namespace A007895

/-- `∑[2-Δ[A288601(n+1)]]` -/
def P9030935922035035239.Spec : Prop :=
  ∀ n, P9030935922035035239.a n = A007895 n

end A007895

/-! ## A007895.P5080765456133922422

`n+3-A288601(n+2)+n`
-/

namespace A007895.P5080765456133922422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A288601 (n + 2) + (n : ℤ)

end

end A007895.P5080765456133922422

namespace A007895

/-- `n+3-A288601(n+2)+n` -/
def P5080765456133922422.Spec : Prop :=
  ∀ n, P5080765456133922422.a n = A007895 n

end A007895

/-! ## A007895.P1286779050652757262

`A213911(n)+A188432(n+2)`
-/

namespace A007895.P1286779050652757262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 n + A188432 (n + 2)

end

end A007895.P1286779050652757262

namespace A007895

/-- `A213911(n)+A188432(n+2)` -/
def P1286779050652757262.Spec : Prop :=
  ∀ n, P1286779050652757262.a n = A007895 n

end A007895

/-! ## A007895.P5323200223568049686

`dr(record[A130310(n)])`
-/

namespace A007895.P5323200223568049686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A007895.P5323200223568049686

namespace A007895

/-- `dr(record[A130310(n)])` -/
def P5323200223568049686.Spec : Prop :=
  ∀ n, (P5323200223568049686.a n : ℤ) = A007895 n

end A007895

/-!
# A007896: Psi_c(n), where Product_{k>1} 1/(1-1/k^s)^phi(k) = Sum_{k>0} psi_c(k)/k^s.

The programs for A007896, there is no canonical definition to state claims against.
-/

/-! ## A007896.P1675781214972828240

`A065033(A062355(n+1)-A056170(A164190(n)))`
-/

namespace A007896.P1675781214972828240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A062355 (n + 1) - A056170 (A164190 n).toNat).toNat

end

end A007896.P1675781214972828240

/-!
# A007897: a(n) is multiplicative with a(2) = 1; a(4) = 2; a(2^i) = 2^(i-2)+2 if i>2; a(p^i) = 1+(p-1)*p^(i-1)/2 if prime p>2 and i>0.

The programs for A007897, there is no canonical definition to state claims against.
-/

/-! ## A007897.P6325717922894488512

`C(A180783(n+1), A011620((3*n)²))`
-/

namespace A007897.P6325717922894488512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A180783 (n + 1)).toNat (A011620 ((3 * n) ^ 2)).toNat

end

end A007897.P6325717922894488512

/-! ## A007897.P16978642593108451741

`C(A180783(n+1), A011624((3*n)²))`
-/

namespace A007897.P16978642593108451741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A180783 (n + 1)).toNat (A011624 ((3 * n) ^ 2)).toNat

end

end A007897.P16978642593108451741

/-! ## A007897.P10900667312458692617

`gcd(A180783(n+1), A272720(2*n+1))`
-/

namespace A007897.P10900667312458692617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A180783 (n + 1)) (A272720 (2 * n + 1))

end

end A007897.P10900667312458692617

/-! ## A007897.P5270939592669801185

`A180783(n+1)+A114643((3*n+1)²)`
-/

namespace A007897.P5270939592669801185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180783 (n + 1) + A114643 ((3 * n + 1) ^ 2)

end

end A007897.P5270939592669801185

/-! ## A007897.P9791212097971903461

`A180783(n+1)+A000007(A005132(n)²)`
-/

namespace A007897.P9791212097971903461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180783 (n + 1) + A000007 (A005132 n ^ 2).toNat

end

end A007897.P9791212097971903461

/-!
# A007899: Coordination sequence for hexagonal close-packing.

The programs for A007899, the canonical program `A007899.P12298734640380958462` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007899 has offset 0).

The definition of A007899 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007899.P12298734640380958462

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=12, a(2)=44, a(3)=96, a(4)=170`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007899

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P12298734640380958462.Spec : Prop :=
  ∀ n, P12298734640380958462.a n = A007899 n

theorem P12298734640380958462.correct : P12298734640380958462.Spec := by
  intro n
  simp only [A007899]

end A007899

/-! ## A007899.P16955476675785979448

`ceil((A010011(n)+1)/2)`
-/

namespace A007899.P16955476675785979448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A010011 n + 1 : ℚ) / 2⌉

end

end A007899.P16955476675785979448

namespace A007899

/-- `ceil((A010011(n)+1)/2)` -/
def P16955476675785979448.Spec : Prop :=
  ∀ n, P16955476675785979448.a n = A007899 n

end A007899

/-! ## A007899.P4162456487396947539

`A299289(n)+(2*n)²`
-/

namespace A007899.P4162456487396947539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299289 n + ((2 * n) ^ 2 : ℤ)

end

end A007899.P4162456487396947539

namespace A007899

/-- `A299289(n)+(2*n)²` -/
def P4162456487396947539.Spec : Prop :=
  ∀ n, P4162456487396947539.a n = A007899 n

end A007899

/-! ## A007899.P17305066077970478518

`8*n²+A008253(n)`
-/

namespace A007899.P17305066077970478518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n ^ 2 : ℤ) + A008253 n

end

end A007899.P17305066077970478518

namespace A007899

/-- `8*n²+A008253(n)` -/
def P17305066077970478518.Spec : Prop :=
  ∀ n, P17305066077970478518.a n = A007899 n

end A007899

/-! ## A007899.P10742641221542405004

`A007590(n)+A005901(n)`
-/

namespace A007899.P10742641221542405004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n + A005901 n

end

end A007899.P10742641221542405004

namespace A007899

/-- `A007590(n)+A005901(n)` -/
def P10742641221542405004.Spec : Prop :=
  ∀ n, P10742641221542405004.a n = A007899 n

end A007899

/-! ## A007899.P16753569662016848620

`A032525(n)+A005919(n)`
-/

namespace A007899.P16753569662016848620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032525 n + A005919 n

end

end A007899.P16753569662016848620

namespace A007899

/-- `A032525(n)+A005919(n)` -/
def P16753569662016848620.Spec : Prop :=
  ∀ n, P16753569662016848620.a n = A007899 n

end A007899

/-! ## A007899.P14852007276051061883

`A032526(n)+A008527(n)`
-/

namespace A007899.P14852007276051061883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032526 n + A008527 n

end

end A007899.P14852007276051061883

namespace A007899

/-- `A032526(n)+A008527(n)` -/
def P14852007276051061883.Spec : Prop :=
  ∀ n, P14852007276051061883.a n = A007899 n

end A007899

/-! ## A007899.P12678626965684555504

`A032528(n)+A010002(n)`
-/

namespace A007899.P12678626965684555504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 n + A010002 n

end

end A007899.P12678626965684555504

namespace A007899

/-- `A032528(n)+A010002(n)` -/
def P12678626965684555504.Spec : Prop :=
  ∀ n, P12678626965684555504.a n = A007899 n

end A007899

/-! ## A007899.P7377184762150656367

`A033581(n)+A009946(n)`
-/

namespace A007899.P7377184762150656367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n + A009946 n

end

end A007899.P7377184762150656367

namespace A007899

/-- `A033581(n)+A009946(n)` -/
def P7377184762150656367.Spec : Prop :=
  ∀ n, P7377184762150656367.a n = A007899 n

end A007899

/-! ## A007899.P11462288021486669511

`A266977(n)+A022278(n)`
-/

namespace A007899.P11462288021486669511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266977 n + A022278 n

end

end A007899.P11462288021486669511

namespace A007899

/-- `A266977(n)+A022278(n)` -/
def P11462288021486669511.Spec : Prop :=
  ∀ n, P11462288021486669511.a n = A007899 n

end A007899

/-! ## A007899.P15321253762208165671

`A010003(n)-A000982(n)`
-/

namespace A007899.P15321253762208165671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010003 n - A000982 n

end

end A007899.P15321253762208165671

namespace A007899

/-- `A010003(n)-A000982(n)` -/
def P15321253762208165671.Spec : Prop :=
  ∀ n, P15321253762208165671.a n = A007899 n

end A007899

/-! ## A007899.P4469237451836888093

`A333574(n+1)+A033583(n)`
-/

namespace A007899.P4469237451836888093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333574 (n + 1) + A033583 n

end

end A007899.P4469237451836888093

namespace A007899

/-- `A333574(n+1)+A033583(n)` -/
def P4469237451836888093.Spec : Prop :=
  ∀ n, P4469237451836888093.a n = A007899 n

end A007899

/-! ## A007899.P2584410292310958523

`A008253(n)+A081585(n)-1`
-/

namespace A007899.P2584410292310958523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008253 n + (A081585 n - 1)

end

end A007899.P2584410292310958523

namespace A007899

/-- `A008253(n)+A081585(n)-1` -/
def P2584410292310958523.Spec : Prop :=
  ∀ n, P2584410292310958523.a n = A007899 n

end A007899

/-! ## A007899.P9744321674752931049

`A005914(n)-A238410(n+1)`
-/

namespace A007899.P9744321674752931049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005914 n - A238410 (n + 1)

end

end A007899.P9744321674752931049

namespace A007899

/-- `A005914(n)-A238410(n+1)` -/
def P9744321674752931049.Spec : Prop :=
  ∀ n, P9744321674752931049.a n = A007899 n

end A007899

/-! ## A007899.P9768676790554914047

`A110907(n)-A319127(n+1)`
-/

namespace A007899.P9768676790554914047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110907 n - A319127 (n + 1)

end

end A007899.P9768676790554914047

namespace A007899

/-- `A110907(n)-A319127(n+1)` -/
def P9768676790554914047.Spec : Prop :=
  ∀ n, P9768676790554914047.a n = A007899 n

end A007899

/-! ## A007899.P11046013662884628318

`A008253(n)+2*A016742(n)`
-/

namespace A007899.P11046013662884628318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008253 n + 2 * A016742 n

end

end A007899.P11046013662884628318

namespace A007899

/-- `A008253(n)+2*A016742(n)` -/
def P11046013662884628318.Spec : Prop :=
  ∀ n, P11046013662884628318.a n = A007899 n

end A007899

/-! ## A007899.P7373529725334135078

`A008253(n)+A008586(n)²/2`
-/

namespace A007899.P7373529725334135078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008253 n : ℚ) + (A008586 n ^ 2 : ℚ) / 2

end

end A007899.P7373529725334135078

namespace A007899

/-- `A008253(n)+A008586(n)²/2` -/
def P7373529725334135078.Spec : Prop :=
  ∀ n, P7373529725334135078.a n = (A007899 n : ℚ)

end A007899

/-! ## A007899.P1622908961225793566

`A005901(n)+∑[A109613(n)-1]`
-/

namespace A007899.P1622908961225793566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005901 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007899.P1622908961225793566

namespace A007899

/-- `A005901(n)+∑[A109613(n)-1]` -/
def P1622908961225793566.Spec : Prop :=
  ∀ n, P1622908961225793566.a n = A007899 n

end A007899

/-! ## A007899.P16107478407086387797

`A001105(n)+A299289(n)+A001105(n)`
-/

namespace A007899.P16107478407086387797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n + (A299289 n + A001105 n)

end

end A007899.P16107478407086387797

namespace A007899

/-- `A001105(n)+A299289(n)+A001105(n)` -/
def P16107478407086387797.Spec : Prop :=
  ∀ n, P16107478407086387797.a n = A007899 n

end A007899

/-! ## A007899.P25370337023881755

`A005897(n)+A299289(n)-A005893(n)`
-/

namespace A007899.P25370337023881755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n + (A299289 n - A005893 n)

end

end A007899.P25370337023881755

namespace A007899

/-- `A005897(n)+A299289(n)-A005893(n)` -/
def P25370337023881755.Spec : Prop :=
  ∀ n, P25370337023881755.a n = A007899 n

end A007899

