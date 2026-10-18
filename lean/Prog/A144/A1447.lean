import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C035
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
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A144700: Generalized (3,-1) Catalan numbers.

The programs for A144700, there is no canonical definition to state claims against.
-/

/-! ## A144700.P5919775350610892716

`A157271(A097119(n))`
-/

namespace A144700.P5919775350610892716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A097119 n).toNat

end

end A144700.P5919775350610892716

/-! ## A144700.P9212198060709674043

`A008619(A097119(n*A109035(n)))`
-/

namespace A144700.P9212198060709674043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A097119 ((n : ℤ) * A109035 n).toNat).toNat

end

end A144700.P9212198060709674043

/-! ## A144700.P720435727969092989

`A008619(A097119(n)^A109035(n))`
-/

namespace A144700.P720435727969092989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway ((A097119 n : ℚ) ^ (A109035 n : ℤ))).toNat

end

end A144700.P720435727969092989

/-! ## A144700.P14456937328869729798

`A109168(A097119(n)^A109035(n))`
-/

namespace A144700.P14456937328869729798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109168 (SequenceMachineLib.roundAway ((A097119 n : ℚ) ^ (A109035 n : ℤ))).toNat

end

end A144700.P14456937328869729798

/-! ## A144700.P4599044646101356203

`A152271(A097119(n)^A109035(n))`
-/

namespace A144700.P4599044646101356203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (SequenceMachineLib.roundAway ((A097119 n : ℚ) ^ (A109035 n : ℤ))).toNat

end

end A144700.P4599044646101356203

/-!
# A144704: a(n) = 4^n*(1-2*n).

The programs for A144704, the canonical program `A144704.P2568151218366369639` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144704 has offset 0).

The definition of A144704 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n*(1-2*n)` (program `A144704.P2568151218366369639`, by `A144704.P2568151218366369639.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A144704.P2568151218366369639

`4^n*(1-2*n)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A144704

/-- `4^n*(1-2*n)` -/
def P2568151218366369639.Spec : Prop :=
  ∀ n, P2568151218366369639.a n = A144704 n

theorem P2568151218366369639.correct : P2568151218366369639.Spec := by
  intro n
  simp only [A144704]

end A144704

/-! ## A144704.P15035117092916019509

`1-A000337(2*n)`
-/

namespace A144704.P15035117092916019509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000337 (2 * n)

end

end A144704.P15035117092916019509

namespace A144704

/-- `1-A000337(2*n)` -/
def P15035117092916019509.Spec : Prop :=
  ∀ n, P15035117092916019509.a n = A144704 n

end A144704

/-! ## A144704.P1777073707402151295

`2-A048495(2*n)`
-/

namespace A144704.P1777073707402151295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A048495 (2 * n)

end

end A144704.P1777073707402151295

namespace A144704

/-- `2-A048495(2*n)` -/
def P1777073707402151295.Spec : Prop :=
  ∀ n, P1777073707402151295.a n = A144704 n

end A144704

/-! ## A144704.P8557846384887698060

`∑[4^n]-A072258(n)`
-/

namespace A144704.P8557846384887698060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A072258 n

end

end A144704.P8557846384887698060

namespace A144704

/-- `∑[4^n]-A072258(n)` -/
def P8557846384887698060.Spec : Prop :=
  ∀ n, P8557846384887698060.a n = A144704 n

end A144704

/-! ## A144704.P2393439297993376951

`1-A036799(2*n)/2`
-/

namespace A144704.P2393439297993376951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (A036799 (2 * n) : ℚ) / 2

end

end A144704.P2393439297993376951

namespace A144704

/-- `1-A036799(2*n)/2` -/
def P2393439297993376951.Spec : Prop :=
  ∀ n, P2393439297993376951.a n = (A144704 n : ℚ)

end A144704

/-! ## A144704.P15547762011647012027

`5-A098821(2*n+1)`
-/

namespace A144704.P15547762011647012027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A098821 (2 * n + 1)

end

end A144704.P15547762011647012027

namespace A144704

/-- `5-A098821(2*n+1)` -/
def P15547762011647012027.Spec : Prop :=
  ∀ n, P15547762011647012027.a n = A144704 n

end A144704

/-! ## A144704.P10575055940362295189

`4^n-A036289(2*n)`
-/

namespace A144704.P10575055940362295189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - A036289 (2 * n)

end

end A144704.P10575055940362295189

namespace A144704

/-- `4^n-A036289(2*n)` -/
def P10575055940362295189.Spec : Prop :=
  ∀ n, P10575055940362295189.a n = A144704 n

end A144704

/-! ## A144704.P11295809586983851214

`-(2*n-1)*A000302(n)`
-/

namespace A144704.P11295809586983851214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((2 * n : ℤ) - 1) * A000302 n)

end

end A144704.P11295809586983851214

namespace A144704

/-- `-(2*n-1)*A000302(n)` -/
def P11295809586983851214.Spec : Prop :=
  ∀ n, P11295809586983851214.a n = A144704 n

end A144704

/-! ## A144704.P10032056979265781986

`floor((1/2-n)*A004171(n))`
-/

namespace A144704.P10032056979265781986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((1 : ℚ) / 2 - (n : ℚ)) * (A004171 n : ℚ)⌋

end

end A144704.P10032056979265781986

namespace A144704

/-- `floor((1/2-n)*A004171(n))` -/
def P10032056979265781986.Spec : Prop :=
  ∀ n, P10032056979265781986.a n = A144704 n

end A144704

/-! ## A144704.P3985916600727532144

`a(n-1)-A053220(2*n)` with `a(0)=1`
-/

namespace A144704.P3985916600727532144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A053220 (2 * n)

end

end A144704.P3985916600727532144

namespace A144704

/-- `a(n-1)-A053220(2*n)` -/
def P3985916600727532144.Spec : Prop :=
  ∀ n, P3985916600727532144.a n = A144704 n

end A144704

/-! ## A144704.P17145618066911219570

`4*a(n-1)-Δ[A007583(n)]` with `a(0)=1`
-/

namespace A144704.P17145618066911219570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007583 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) - (f1 (n + 1) - f1 n)

end

end A144704.P17145618066911219570

namespace A144704

/-- `4*a(n-1)-Δ[A007583(n)]` -/
def P17145618066911219570.Spec : Prop :=
  ∀ n, P17145618066911219570.a n = A144704 n

end A144704

/-! ## A144704.P4232383966685031271

`4*a(n-1)-1-A083420(n)` with `a(0)=1`
-/

namespace A144704.P4232383966685031271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) - 1 - A083420 n

end

end A144704.P4232383966685031271

namespace A144704

/-- `4*a(n-1)-1-A083420(n)` -/
def P4232383966685031271.Spec : Prop :=
  ∀ n, P4232383966685031271.a n = A144704 n

end A144704

/-! ## A144704.P16144201100320871038

`4*a(n-1)-2*A000079(n)²` with `a(0)=1`
-/

namespace A144704.P16144201100320871038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) - 2 * A000079 n ^ 2

end

end A144704.P16144201100320871038

namespace A144704

/-- `4*a(n-1)-2*A000079(n)²` -/
def P16144201100320871038.Spec : Prop :=
  ∀ n, P16144201100320871038.a n = A144704 n

end A144704

/-! ## A144704.P18416794053256902632

`4*a(n-1)-A000079(2*n+1)` with `a(0)=1`
-/

namespace A144704.P18416794053256902632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) - A000079 (2 * n + 1)

end

end A144704.P18416794053256902632

namespace A144704

/-- `4*a(n-1)-A000079(2*n+1)` -/
def P18416794053256902632.Spec : Prop :=
  ∀ n, P18416794053256902632.a n = A144704 n

end A144704

/-! ## A144704.P17331848177295927220

`A072197(n+1)-A072259(n)`
-/

namespace A144704.P17331848177295927220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072197 (n + 1) - A072259 n

end

end A144704.P17331848177295927220

namespace A144704

/-- `A072197(n+1)-A072259(n)` -/
def P17331848177295927220.Spec : Prop :=
  ∀ n, P17331848177295927220.a n = A144704 n

end A144704

/-! ## A144704.P10004381119454220663

`A072261(n+1)-A072260(n)`
-/

namespace A144704.P10004381119454220663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072261 (n + 1) - A072260 n

end

end A144704.P10004381119454220663

namespace A144704

/-- `A072261(n+1)-A072260(n)` -/
def P10004381119454220663.Spec : Prop :=
  ∀ n, P10004381119454220663.a n = A144704 n

end A144704

/-! ## A144704.P3737573926835057800

`A052539(n)-A002064(2*n)`
-/

namespace A144704.P3737573926835057800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052539 n - A002064 (2 * n)

end

end A144704.P3737573926835057800

namespace A144704

/-- `A052539(n)-A002064(2*n)` -/
def P3737573926835057800.Spec : Prop :=
  ∀ n, P3737573926835057800.a n = A144704 n

end A144704

/-! ## A144704.P10233634390802051881

`A083420(n)-A087323(2*n)`
-/

namespace A144704.P10233634390802051881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083420 n - A087323 (2 * n)

end

end A144704.P10233634390802051881

namespace A144704

/-- `A083420(n)-A087323(2*n)` -/
def P10233634390802051881.Spec : Prop :=
  ∀ n, P10233634390802051881.a n = A144704 n

end A144704

/-! ## A144704.P12739605054050616551

`A155543(n)-A134401(2*n)`
-/

namespace A144704.P12739605054050616551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155543 n - A134401 (2 * n)

end

end A144704.P12739605054050616551

namespace A144704

/-- `A155543(n)-A134401(2*n)` -/
def P12739605054050616551.Spec : Prop :=
  ∀ n, P12739605054050616551.a n = A144704 n

end A144704

/-!
# A144706: Central coefficients of the triangle A132047.

The programs for A144706, the canonical program `A144706.P9831127724178421571` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144706 has offset 0).

The definition of A144706 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144706.P14297943795852282027

`(4-2/n)*a(n-1)` with `a(0)=1, a(1)=6`
-/

namespace A144706.P14297943795852282027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 6] fun n a =>
  (4 - 2 / (n : ℚ)) * a (n - 1)

end

end A144706.P14297943795852282027

namespace A144706

/-- `(4-2/n)*a(n-1)` -/
def P14297943795852282027.Spec : Prop :=
  ∀ n, P14297943795852282027.a n = (A144706 n : ℚ)

end A144706

/-! ## A144706.P5002720134706283388

`2*(2-n^(-1))*a(n-1)` with `a(0)=1, a(1)=6`
-/

namespace A144706.P5002720134706283388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 6] fun n a =>
  2 * ((2 - (n : ℚ) ^ (-1 : ℤ)) * a (n - 1))

end

end A144706.P5002720134706283388

namespace A144706

/-- `2*(2-n^(-1))*a(n-1)` -/
def P5002720134706283388.Spec : Prop :=
  ∀ n, P5002720134706283388.a n = (A144706 n : ℚ)

end A144706

/-! ## A144706.P2477667295546315669

`record[a(n-1)/(floor(n/2)/n-1)]` with `a(0)=1, a(1)=6`
-/

namespace A144706.P2477667295546315669
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144706.P2477667295546315669

namespace A144706

/-- `record[a(n-1)/(floor(n/2)/n-1)]` -/
def P2477667295546315669.Spec : Prop :=
  ∀ n, P2477667295546315669.a n = (A144706 n : ℚ)

end A144706

/-! ## A144706.P9831127724178421571

`A000984(n)*A122553(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A144706

/-- `A000984(n)*A122553(n)` -/
def P9831127724178421571.Spec : Prop :=
  ∀ n, P9831127724178421571.a n = A144706 n

theorem P9831127724178421571.correct : P9831127724178421571.Spec := by
  intro n
  simp only [A144706]

end A144706

/-! ## A144706.P8430353822538659865

`A113127(n)*A120589(n)`
-/

namespace A144706.P8430353822538659865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113127 n * A120589 n

end

end A144706.P8430353822538659865

namespace A144706

/-- `A113127(n)*A120589(n)` -/
def P8430353822538659865.Spec : Prop :=
  ∀ n, P8430353822538659865.a n = A144706 n

end A144706

/-! ## A144706.P13861086750117539880

`lcm(A000984(n), A029651(n))`
-/

namespace A144706.P13861086750117539880
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000984 n) (A029651 n)

end

end A144706.P13861086750117539880

namespace A144706

/-- `lcm(A000984(n), A029651(n))` -/
def P13861086750117539880.Spec : Prop :=
  ∀ n, (P13861086750117539880.a n : ℤ) = A144706 n

end A144706

/-! ## A144706.P12705546353303981461

`A029651(n)*A036453(n+1)`
-/

namespace A144706.P12705546353303981461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029651 n * A036453 (n + 1)

end

end A144706.P12705546353303981461

namespace A144706

/-- `A029651(n)*A036453(n+1)` -/
def P12705546353303981461.Spec : Prop :=
  ∀ n, P12705546353303981461.a n = A144706 n

end A144706

/-! ## A144706.P1075466356573141912

`(2-A000007(n))*A029651(n)`
-/

namespace A144706.P1075466356573141912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A029651 n

end

end A144706.P1075466356573141912

namespace A144706

/-- `(2-A000007(n))*A029651(n)` -/
def P1075466356573141912.Spec : Prop :=
  ∀ n, P1075466356573141912.a n = A144706 n

end A144706

/-! ## A144706.P8910334861407992980

`2*A100320(n)-A000984(n)`
-/

namespace A144706.P8910334861407992980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100320 n - A000984 n

end

end A144706.P8910334861407992980

namespace A144706

/-- `2*A100320(n)-A000984(n)` -/
def P8910334861407992980.Spec : Prop :=
  ∀ n, P8910334861407992980.a n = A144706 n

end A144706

/-! ## A144706.P15444928458252692196

`2*A029609(n)-A100320(n)`
-/

namespace A144706.P15444928458252692196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029609 n - A100320 n

end

end A144706.P15444928458252692196

namespace A144706

/-- `2*A029609(n)-A100320(n)` -/
def P15444928458252692196.Spec : Prop :=
  ∀ n, P15444928458252692196.a n = A144706 n

end A144706

/-! ## A144706.P7564399228596171787

`(A146534(n)+A100320(n))/2`
-/

namespace A144706.P7564399228596171787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146534 n + A100320 n : ℚ) / 2

end

end A144706.P7564399228596171787

namespace A144706

/-- `(A146534(n)+A100320(n))/2` -/
def P7564399228596171787.Spec : Prop :=
  ∀ n, P7564399228596171787.a n = (A144706 n : ℚ)

end A144706

/-! ## A144706.P6524240058966457968

`gcd(3, A000244(n))*A000984(n)`
-/

namespace A144706.P6524240058966457968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (A000244 n) : ℤ) * A000984 n

end

end A144706.P6524240058966457968

namespace A144706

/-- `gcd(3, A000244(n))*A000984(n)` -/
def P6524240058966457968.Spec : Prop :=
  ∀ n, P6524240058966457968.a n = A144706 n

end A144706

/-! ## A144706.P8407145900242495398

`A100320(n)+record[2*A138364(n)]`
-/

namespace A144706.P8407145900242495398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100320 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144706.P8407145900242495398

namespace A144706

/-- `A100320(n)+record[2*A138364(n)]` -/
def P8407145900242495398.Spec : Prop :=
  ∀ n, P8407145900242495398.a n = A144706 n

end A144706

/-! ## A144706.P3917003188769590279

`record[A008486(2*n)*A097331(n)]`
-/

namespace A144706.P3917003188769590279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) * A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144706.P3917003188769590279

namespace A144706

/-- `record[A008486(2*n)*A097331(n)]` -/
def P3917003188769590279.Spec : Prop :=
  ∀ n, P3917003188769590279.a n = A144706 n

end A144706

/-! ## A144706.P6236257245907574506

`record[(A008706(n)+n)*A097331(n)]`
-/

namespace A144706.P6236257245907574506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008706 n + (n : ℤ)) * A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144706.P6236257245907574506

namespace A144706

/-- `record[(A008706(n)+n)*A097331(n)]` -/
def P6236257245907574506.Spec : Prop :=
  ∀ n, P6236257245907574506.a n = A144706 n

end A144706

/-! ## A144706.P18349934029387033599

`record[(A093178(n)+n)*A126324(n)]`
-/

namespace A144706.P18349934029387033599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A093178 n + (n : ℤ)) * A126324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144706.P18349934029387033599

namespace A144706

/-- `record[(A093178(n)+n)*A126324(n)]` -/
def P18349934029387033599.Spec : Prop :=
  ∀ n, P18349934029387033599.a n = A144706 n

end A144706

/-! ## A144706.P909044950252068378

`A262543(n+1)+A051924(n+1)`
-/

namespace A144706.P909044950252068378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262543 (n + 1) + A051924 (n + 1)

end

end A144706.P909044950252068378

namespace A144706

/-- `A262543(n+1)+A051924(n+1)` -/
def P909044950252068378.Spec : Prop :=
  ∀ n, P909044950252068378.a n = A144706 n

end A144706

/-! ## A144706.P3985599009060120297

`A126930(2*n)*A127752(2*n)`
-/

namespace A144706.P3985599009060120297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 (2 * n) * A127752 (2 * n)

end

end A144706.P3985599009060120297

namespace A144706

/-- `A126930(2*n)*A127752(2*n)` -/
def P3985599009060120297.Spec : Prop :=
  ∀ n, P3985599009060120297.a n = A144706 n

end A144706

/-!
# A144707: Diagonal sums of the triangle A132047.

The programs for A144707, the canonical program `A144707.P187510953293646439` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144707 has offset 0).

The definition of A144707 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144707.P187510953293646439

`a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=7, a(4)=11`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A144707

/-- `a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` -/
def P187510953293646439.Spec : Prop :=
  ∀ n, P187510953293646439.a n = A144707 n

theorem P187510953293646439.correct : P187510953293646439.Spec := by
  intro n
  simp only [A144707]

end A144707

/-! ## A144707.P3372265588983775679

`abs(2-A131326(n))`
-/

namespace A144707.P3372265588983775679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A131326 n|

end

end A144707.P3372265588983775679

namespace A144707

/-- `abs(2-A131326(n))` -/
def P3372265588983775679.Spec : Prop :=
  ∀ n, P3372265588983775679.a n = A144707 n

end A144707

/-! ## A144707.P3704857885345768626

`A022086(n)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A144707.P3704857885345768626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A022086 n + a (n - 2)

end

end A144707.P3704857885345768626

namespace A144707

/-- `A022086(n)+a(n-2)` -/
def P3704857885345768626.Spec : Prop :=
  ∀ n, P3704857885345768626.a n = A144707 n

end A144707

/-! ## A144707.P2659601773226605569

`A377628(n)-A153284(n+1)`
-/

namespace A144707.P2659601773226605569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377628 n - A153284 (n + 1)

end

end A144707.P2659601773226605569

namespace A144707

/-- `A377628(n)-A153284(n+1)` -/
def P2659601773226605569.Spec : Prop :=
  ∀ n, P2659601773226605569.a n = A144707 n

end A144707

/-! ## A144707.P17442124396967774156

`3*A000045(n+1)-Δ[A038179(n+2)]`
-/

namespace A144707.P17442124396967774156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038179 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000045 (n + 1) - (f1 (n + 1) - f1 n)

end

end A144707.P17442124396967774156

namespace A144707

/-- `3*A000045(n+1)-Δ[A038179(n+2)]` -/
def P17442124396967774156.Spec : Prop :=
  ∀ n, P17442124396967774156.a n = A144707 n

end A144707

/-! ## A144707.P7310575821883792836

`A000045(n)+a(n-2)+2*A000045(n)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A144707.P7310575821883792836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A000045 n + (a (n - 2) + 2 * A000045 n)

end

end A144707.P7310575821883792836

namespace A144707

/-- `A000045(n)+a(n-2)+2*A000045(n)` -/
def P7310575821883792836.Spec : Prop :=
  ∀ n, P7310575821883792836.a n = A144707 n

end A144707

/-! ## A144707.P14842825770849955981

`A154327(n)+A154327(n)-A000045(n+1)`
-/

namespace A144707.P14842825770849955981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154327 n + (A154327 n - A000045 (n + 1))

end

end A144707.P14842825770849955981

namespace A144707

/-- `A154327(n)+A154327(n)-A000045(n+1)` -/
def P14842825770849955981.Spec : Prop :=
  ∀ n, P14842825770849955981.a n = A144707 n

end A144707

/-! ## A144707.P10249265009289960866

`A033627(2*n+1)+A097133(n+1)-A033627(2*(n+1))`
-/

namespace A144707.P10249265009289960866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (2 * n + 1) + (A097133 (n + 1) - A033627 (2 * (n + 1)))

end

end A144707.P10249265009289960866

namespace A144707

/-- `A033627(2*n+1)+A097133(n+1)-A033627(2*(n+1))` -/
def P10249265009289960866.Spec : Prop :=
  ∀ n, P10249265009289960866.a n = A144707 n

end A144707

/-! ## A144707.P12443598097710789442

`∑[A000285(n)]%(2*A014217(n+1))`
-/

namespace A144707.P12443598097710789442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (2 * A014217 (n + 1))

end

end A144707.P12443598097710789442

namespace A144707

/-- `∑[A000285(n)]%(2*A014217(n+1))` -/
def P12443598097710789442.Spec : Prop :=
  ∀ n, P12443598097710789442.a n = A144707 n

end A144707

/-!
# A144708: a(n) = 6^n * (1-4*n).

The programs for A144708, the canonical program `A144708.P2940767006973549682` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144708 has offset 0).

The definition of A144708 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n*(1-4*n)` (program `A144708.P2940767006973549682`, by `A144708.P2940767006973549682.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A144708.P15740897609333399287

`(1-4*n)*6^n`
-/

namespace A144708.P15740897609333399287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (4 * n : ℤ)) * (6 ^ n : ℤ)

end

end A144708.P15740897609333399287

namespace A144708

/-- `(1-4*n)*6^n` -/
def P15740897609333399287.Spec : Prop :=
  ∀ n, P15740897609333399287.a n = A144708 n

theorem P15740897609333399287.correct : P15740897609333399287.Spec := by
  intro n
  simp only [A144708, Nat.add_sub_cancel, A144708.P15740897609333399287.a, A144708.P2940767006973549682.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A144708

/-! ## A144708.P2940767006973549682

`6^n*(1-4*n)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A144708

/-- `6^n*(1-4*n)` -/
def P2940767006973549682.Spec : Prop :=
  ∀ n, P2940767006973549682.a n = A144708 n

theorem P2940767006973549682.correct : P2940767006973549682.Spec := by
  intro n
  simp only [A144708]

end A144708

/-! ## A144708.P14770258067739791755

`6*a(n-1)-Δ[A083066(n)]` with `a(0)=1`
-/

namespace A144708.P14770258067739791755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083066 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) - (f1 (n + 1) - f1 n)

end

end A144708.P14770258067739791755

namespace A144708

/-- `6*a(n-1)-Δ[A083066(n)]` -/
def P14770258067739791755.Spec : Prop :=
  ∀ n, P14770258067739791755.a n = A144708 n

end A144708

/-! ## A144708.P2795513425565786905

`A000400(n)-4*A036292(n)`
-/

namespace A144708.P2795513425565786905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n - 4 * A036292 n

end

end A144708.P2795513425565786905

namespace A144708

/-- `A000400(n)-4*A036292(n)` -/
def P2795513425565786905.Spec : Prop :=
  ∀ n, P2795513425565786905.a n = A144708 n

end A144708

/-! ## A144708.P9839481447861022369

`∑[A052934(n)]-4*n*∑[A052934(n)]`
-/

namespace A144708.P9839481447861022369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052934 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (4 * n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A144708.P9839481447861022369

namespace A144708

/-- `∑[A052934(n)]-4*n*∑[A052934(n)]` -/
def P9839481447861022369.Spec : Prop :=
  ∀ n, P9839481447861022369.a n = A144708 n

end A144708

/-! ## A144708.P14492165490012631503

`A026549(2*n)-n*A164532(2*(n+1))`
-/

namespace A144708.P14492165490012631503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026549 (2 * n) - (n : ℤ) * A164532 (2 * (n + 1))

end

end A144708.P14492165490012631503

namespace A144708

/-- `A026549(2*n)-n*A164532(2*(n+1))` -/
def P14492165490012631503.Spec : Prop :=
  ∀ n, P14492165490012631503.a n = A144708 n

end A144708

/-! ## A144708.P13478673011146011297

`A056452(2*n)-n*A164532(2*(n+1))`
-/

namespace A144708.P13478673011146011297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056452 (2 * n) - (n : ℤ) * A164532 (2 * (n + 1))

end

end A144708.P13478673011146011297

namespace A144708

/-- `A056452(2*n)-n*A164532(2*(n+1))` -/
def P13478673011146011297.Spec : Prop :=
  ∀ n, P13478673011146011297.a n = A144708 n

end A144708

/-! ## A144708.P15206882660928252028

`A026532(2*n+1)-n*A164532(2*(n+1))`
-/

namespace A144708.P15206882660928252028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026532 (2 * n + 1) - (n : ℤ) * A164532 (2 * (n + 1))

end

end A144708.P15206882660928252028

namespace A144708

/-- `A026532(2*n+1)-n*A164532(2*(n+1))` -/
def P15206882660928252028.Spec : Prop :=
  ∀ n, P15206882660928252028.a n = A144708 n

end A144708

/-! ## A144708.P5116521855040600662

`A164532(2*n+1)-n*A164532(2*(n+1))`
-/

namespace A144708.P5116521855040600662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164532 (2 * n + 1) - (n : ℤ) * A164532 (2 * (n + 1))

end

end A144708.P5116521855040600662

namespace A144708

/-- `A164532(2*n+1)-n*A164532(2*(n+1))` -/
def P5116521855040600662.Spec : Prop :=
  ∀ n, P5116521855040600662.a n = A144708 n

end A144708

/-! ## A144708.P5112439008527436275

`A166027(2*(n+1))-n*A166027(2*n+1)`
-/

namespace A144708.P5112439008527436275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166027 (2 * (n + 1)) - (n : ℤ) * A166027 (2 * n + 1)

end

end A144708.P5112439008527436275

namespace A144708

/-- `A166027(2*(n+1))-n*A166027(2*n+1)` -/
def P5112439008527436275.Spec : Prop :=
  ∀ n, P5112439008527436275.a n = A144708 n

end A144708

/-! ## A144708.P5216659309746587170

`A026532(2*(n+1))-(4*n+2)*A026532(2*n+1)`
-/

namespace A144708.P5216659309746587170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026532 (2 * (n + 1)) - (4 * n + 2 : ℤ) * A026532 (2 * n + 1)

end

end A144708.P5216659309746587170

namespace A144708

/-- `A026532(2*(n+1))-(4*n+2)*A026532(2*n+1)` -/
def P5216659309746587170.Spec : Prop :=
  ∀ n, P5216659309746587170.a n = A144708 n

end A144708

/-! ## A144708.P13261109559946893033

`A000400(n)-A000400(n)*A008586(n)`
-/

namespace A144708.P13261109559946893033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n - A000400 n * A008586 n

end

end A144708.P13261109559946893033

namespace A144708

/-- `A000400(n)-A000400(n)*A008586(n)` -/
def P13261109559946893033.Spec : Prop :=
  ∀ n, P13261109559946893033.a n = A144708 n

end A144708

/-! ## A144708.P13776604876443891586

`A053469(n+1)-n*Δ[A000400(n)]`
-/

namespace A144708.P13776604876443891586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053469 (n + 1) - (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A144708.P13776604876443891586

namespace A144708

/-- `A053469(n+1)-n*Δ[A000400(n)]` -/
def P13776604876443891586.Spec : Prop :=
  ∀ n, P13776604876443891586.a n = A144708 n

end A144708

/-!
# A144711: Numbers n such that [sum_i=1..r (p(i)^2)]/r = c^2. p(i) prime divisors of n, c integer.

The programs for A144711, there is no canonical definition to state claims against.
-/

/-! ## A144711.P13724361697306683124

`∪[A246655(n+1), A255580(n+1)]`
-/

namespace A144711.P13724361697306683124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A144711.P13724361697306683124

/-! ## A144711.P3096931786545990983

`record[A056926(A134600(n+1))]`
-/

namespace A144711.P3096931786545990983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A134600 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144711.P3096931786545990983

/-! ## A144711.P11963622950865462652

`record[A056926(A134601(n+1))]`
-/

namespace A144711.P11963622950865462652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A134601 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144711.P11963622950865462652

/-! ## A144711.P14433884801738188404

`record[A246655(n+1)-A034473(n+1)]`
-/

namespace A144711.P14433884801738188404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1) - A034473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144711.P14433884801738188404

/-!
# A144712: Ordered sequence of Fibonomial coefficients.

The programs for A144712, there is no canonical definition to state claims against.
-/

/-! ## A144712.P17270482323871731638

`∪[round(ϕ*a(n-1)), A171159(n+1)]` with `a(0)=1`
-/

namespace A144712.P17270482323871731638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A144712.P17270482323871731638

/-! ## A144712.P4748294929354054441

`∪[A171159(n+1), record[A212804(n)]]`
-/

namespace A144712.P4748294929354054441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171159 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A144712.P4748294929354054441

/-! ## A144712.P9178005167739349481

`∪[A171159(n+1), Δ[A157727(n+3)]]`
-/

namespace A144712.P9178005167739349481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171159 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157727 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A144712.P9178005167739349481

/-! ## A144712.P12009275944602695237

`lt[0, char[A010048(n)]]`
-/

namespace A144712.P12009275944602695237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010048 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A144712.P12009275944602695237

/-! ## A144712.P17666300128164006655

`eq[1, char[abs(A055870(n))]]`
-/

namespace A144712.P17666300128164006655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055870 n|

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144712.P17666300128164006655

/-!
# A144714: Left-truncatable primes that contain one or more zero digits.

The programs for A144714, there is no canonical definition to state claims against.
-/

/-! ## A144714.P11021857578236809906

`∩[A033664(n+1), A056709(n+1)]`
-/

namespace A144714.P11021857578236809906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144714.P11021857578236809906

/-! ## A144714.P8715226108661853094

`∩[A033664(n+1), A273460(n+1)]`
-/

namespace A144714.P8715226108661853094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144714.P8715226108661853094

/-! ## A144714.P4890876518798292849

`∩[A033664(n+1), A252480(n+1)]`
-/

namespace A144714.P4890876518798292849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144714.P4890876518798292849

/-! ## A144714.P591258353007338666

`∩[A011540(n+1), A033664(n+1)]`
-/

namespace A144714.P591258353007338666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144714.P591258353007338666

/-! ## A144714.P1007168139120534068

`∩[A033664(n+1), A098394(n+1)]`
-/

namespace A144714.P1007168139120534068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144714.P1007168139120534068

/-! ## A144714.P17019590913311893549

`∩[A033664(n+1), A226241(n+1)]`
-/

namespace A144714.P17019590913311893549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144714.P17019590913311893549

/-!
# A144715: A144325(n) + A144313(n) + A144315(n).

The programs for A144715, there is no canonical definition to state claims against.
-/

/-! ## A144715.P2950688639760975370

`A144325(n+1)+A144313(n+1)+A144315(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A144715.P2950688639760975370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144325 (n + 1) + A144313 (n + 1) + A144315 (n + 1)

end

end A144715.P2950688639760975370

/-!
# A144717: a(n) = smallest positive integer > a(n-1) such that 2*a(1)*a(2)*...*a(n) + 1 is prime.

The programs for A144717, there is no canonical definition to state claims against.
-/

/-! ## A144717.P7366245871071229113

`A144724(round(sqrt(n²+1)))+char[1]`
-/

namespace A144717.P7366245871071229113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144724 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A144717.P7366245871071229113

/-! ## A144717.P11295358144978154230

`C(2, n)!*A144724(A028310(n))`
-/

namespace A144717.P11295358144978154230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.choose 2 n) : ℤ) * A144724 (A028310 n).toNat

end

end A144717.P11295358144978154230

/-! ## A144717.P2483821445584341807

`A209229(∑[n])+A144724(A028310(n))`
-/

namespace A144717.P2483821445584341807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (∑ j ∈ Finset.range (n + 1), f1 j) + A144724 (A028310 n).toNat

end

end A144717.P2483821445584341807

/-! ## A144717.P14759870326294583687

`A014963(A266303(n))*A144724(A028310(n))`
-/

namespace A144717.P14759870326294583687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A266303 n).toNat * A144724 (A028310 n).toNat

end

end A144717.P14759870326294583687

/-! ## A144717.P13206077842748251358

`A061007(A008574(n))!*A144724(A028310(n))`
-/

namespace A144717.P13206077842748251358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A061007 (A008574 n).toNat).toNat : ℤ) * A144724 (A028310 n).toNat

end

end A144717.P13206077842748251358

/-! ## A144717.P10190309010757103938

`A035214(A000040(n+1))*A144724(A028310(n))`
-/

namespace A144717.P10190309010757103938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A000040 (n + 1)).toNat * A144724 (A028310 n).toNat

end

end A144717.P10190309010757103938

/-! ## A144717.P10504320572002155961

`A014963(A005893(n))*A144724(A028310(n))`
-/

namespace A144717.P10504320572002155961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A005893 n).toNat * A144724 (A028310 n).toNat

end

end A144717.P10504320572002155961

/-!
# A144718: a(n) = n-th prime arising A144717.

The programs for A144718, there is no canonical definition to state claims against.
-/

/-! ## A144718.P3388319531428207823

`A144725(round(sqrt(n²+1)))-A000038(n)`
-/

namespace A144718.P3388319531428207823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144725 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A000038 n

end

end A144718.P3388319531428207823

/-! ## A144718.P13404564673537538897

`A054024(a(A242481(n)))*A144725(n)` with `a(0)=3`
-/

namespace A144718.P13404564673537538897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A054024 (a (A242481 n).toNat).toNat * A144725 n

end

end A144718.P13404564673537538897

/-! ## A144718.P3054240583287755722

`ceil(A144725(n+1)/A144717(n+2))`
-/

namespace A144718.P3054240583287755722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A144725 (n + 1) : ℚ) / (A144717 (n + 2) : ℚ)⌉

end

end A144718.P3054240583287755722

/-! ## A144718.P5110041917694289565

`A054024(a(A029350(n)))*A144725(n)` with `a(0)=3`
-/

namespace A144718.P5110041917694289565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A054024 (a (A029350 n).toNat).toNat * A144725 n

end

end A144718.P5110041917694289565

/-! ## A144718.P17476258492191162268

`A054024(a(A071470(n+1)))*A144725(n)` with `a(0)=3`
-/

namespace A144718.P17476258492191162268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A054024 (a (A071470 (n + 1)).toNat).toNat * A144725 n

end

end A144718.P17476258492191162268

/-!
# A144720: a(0) = 2, a(1) = 3, a(n) = 4 * a(n-1) - a(n-2).

The programs for A144720, the canonical program `A144720.P16312110491340689107` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144720 has offset 0).

The definition of A144720 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-a(n-2)` (program `A144720.P16312110491340689107`, by `A144720.P16312110491340689107.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A144720.P16312110491340689107

`4*a(n-1)-a(n-2)` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A144720

/-- `4*a(n-1)-a(n-2)` -/
def P16312110491340689107.Spec : Prop :=
  ∀ n, P16312110491340689107.a n = A144720 n

theorem P16312110491340689107.correct : P16312110491340689107.Spec := by
  intro n
  simp only [A144720]

end A144720

/-! ## A144720.P1704367339286107565

`a(n-1)/(1/2)²-a(n-2)` with `a(0)=2, a(1)=3`
-/

namespace A144720.P1704367339286107565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2 - a (n - 2)

end

end A144720.P1704367339286107565

namespace A144720

/-- `a(n-1)/(1/2)²-a(n-2)` -/
def P1704367339286107565.Spec : Prop :=
  ∀ n, P1704367339286107565.a n = (A144720 n : ℚ)

end A144720

/-! ## A144720.P3378057007200930054

`a(n-1)+a(n-1)+a(n-1)+a(n-1)-a(n-2)` with `a(0)=2, a(1)=3`
-/

namespace A144720.P3378057007200930054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) - a (n - 2))))

end

end A144720.P3378057007200930054

namespace A144720

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-1)-a(n-2)` -/
def P3378057007200930054.Spec : Prop :=
  ∀ n, P3378057007200930054.a n = A144720 n

theorem P3378057007200930054.correct : P3378057007200930054.Spec := by
  intro n
  simp only [A144720, Nat.add_sub_cancel, A144720.P3378057007200930054.a, A144720.P16312110491340689107.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A144720

/-! ## A144720.P5344316287977217351

`a(n-1)-(a(n-2)-a(n-1)-a(n-1)-a(n-1))` with `a(0)=2, a(1)=3`
-/

namespace A144720.P5344316287977217351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - a (n - 1) - a (n - 1))

end

end A144720.P5344316287977217351

namespace A144720

/-- `a(n-1)-(a(n-2)-a(n-1)-a(n-1)-a(n-1))` -/
def P5344316287977217351.Spec : Prop :=
  ∀ n, P5344316287977217351.a n = A144720 n

theorem P5344316287977217351.correct : P5344316287977217351.Spec := by
  intro n
  simp only [A144720, Nat.add_sub_cancel, A144720.P5344316287977217351.a, A144720.P16312110491340689107.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A144720

/-! ## A144720.P1760796033617704672

`A054485(n-1)+a(n-1)` with `a(0)=2`
-/

namespace A144720.P1760796033617704672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A054485 (n - 1) + a (n - 1)

end

end A144720.P1760796033617704672

namespace A144720

/-- `A054485(n-1)+a(n-1)` -/
def P1760796033617704672.Spec : Prop :=
  ∀ n, P1760796033617704672.a n = A144720 n

end A144720

/-! ## A144720.P5576229495559923469

`A237250(A004277(n))`
-/

namespace A144720.P5576229495559923469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237250 (A004277 n).toNat

end

end A144720.P5576229495559923469

namespace A144720

/-- `A237250(A004277(n))` -/
def P5576229495559923469.Spec : Prop :=
  ∀ n, P5576229495559923469.a n = A144720 n

end A144720

/-! ## A144720.P14877826645709667023

`A237250(A004275(n+1))`
-/

namespace A144720.P14877826645709667023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237250 (A004275 (n + 1)).toNat

end

end A144720.P14877826645709667023

namespace A144720

/-- `A237250(A004275(n+1))` -/
def P14877826645709667023.Spec : Prop :=
  ∀ n, P14877826645709667023.a n = A144720 n

end A144720

/-! ## A144720.P925952497586107782

`A001835(n)+A001075(n)`
-/

namespace A144720.P925952497586107782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 n + A001075 n

end

end A144720.P925952497586107782

namespace A144720

/-- `A001835(n)+A001075(n)` -/
def P925952497586107782.Spec : Prop :=
  ∀ n, P925952497586107782.a n = A144720 n

end A144720

/-! ## A144720.P17773782926125208275

`A001835(n)+A092184(n)+1`
-/

namespace A144720.P17773782926125208275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 n + (A092184 n + 1)

end

end A144720.P17773782926125208275

namespace A144720

/-- `A001835(n)+A092184(n)+1` -/
def P17773782926125208275.Spec : Prop :=
  ∀ n, P17773782926125208275.a n = A144720 n

end A144720

/-! ## A144720.P13707211700057813142

`A001353(n)+2*A001835(n)`
-/

namespace A144720.P13707211700057813142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 n + 2 * A001835 n

end

end A144720.P13707211700057813142

namespace A144720

/-- `A001353(n)+2*A001835(n)` -/
def P13707211700057813142.Spec : Prop :=
  ∀ n, P13707211700057813142.a n = A144720 n

end A144720

/-! ## A144720.P10217101592113872683

`A002531(2*n)+A001835(n)`
-/

namespace A144720.P10217101592113872683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 (2 * n) + A001835 n

end

end A144720.P10217101592113872683

namespace A144720

/-- `A002531(2*n)+A001835(n)` -/
def P10217101592113872683.Spec : Prop :=
  ∀ n, P10217101592113872683.a n = A144720 n

end A144720

/-! ## A144720.P3562721370117355452

`A005246(2*n)+A001075(n)`
-/

namespace A144720.P3562721370117355452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 (2 * n) + A001075 n

end

end A144720.P3562721370117355452

namespace A144720

/-- `A005246(2*n)+A001075(n)` -/
def P3562721370117355452.Spec : Prop :=
  ∀ n, P3562721370117355452.a n = A144720 n

end A144720

/-! ## A144720.P17485720585834242427

`2*A001835(n)-A106707(n)`
-/

namespace A144720.P17485720585834242427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001835 n - A106707 n

end

end A144720.P17485720585834242427

namespace A144720

/-- `2*A001835(n)-A106707(n)` -/
def P17485720585834242427.Spec : Prop :=
  ∀ n, P17485720585834242427.a n = A144720 n

end A144720

/-! ## A144720.P6127665761080727971

`Δ[A101879(n)]+2*A001835(n)`
-/

namespace A144720.P6127665761080727971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A001835 n

end

end A144720.P6127665761080727971

namespace A144720

/-- `Δ[A101879(n)]+2*A001835(n)` -/
def P6127665761080727971.Spec : Prop :=
  ∀ n, P6127665761080727971.a n = A144720 n

end A144720

/-! ## A144720.P9313902583001029659

`A005246(2*n+1)+A001835(n)`
-/

namespace A144720.P9313902583001029659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 (2 * n + 1) + A001835 n

end

end A144720.P9313902583001029659

namespace A144720

/-- `A005246(2*n+1)+A001835(n)` -/
def P9313902583001029659.Spec : Prop :=
  ∀ n, P9313902583001029659.a n = A144720 n

end A144720

/-! ## A144720.P6215176205565033289

`A122573(2*(n+1))+A001075(n)`
-/

namespace A144720.P6215176205565033289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122573 (2 * (n + 1)) + A001075 n

end

end A144720.P6215176205565033289

namespace A144720

/-- `A122573(2*(n+1))+A001075(n)` -/
def P6215176205565033289.Spec : Prop :=
  ∀ n, P6215176205565033289.a n = A144720 n

end A144720

/-! ## A144720.P142330612356839350

`A005246(2*n)+A002531(2*n)`
-/

namespace A144720.P142330612356839350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 (2 * n) + A002531 (2 * n)

end

end A144720.P142330612356839350

namespace A144720

/-- `A005246(2*n)+A002531(2*n)` -/
def P142330612356839350.Spec : Prop :=
  ∀ n, P142330612356839350.a n = A144720 n

end A144720

/-! ## A144720.P5157741946422708833

`A005246(2*n+1)+A005246(2*n)`
-/

namespace A144720.P5157741946422708833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 (2 * n + 1) + A005246 (2 * n)

end

end A144720.P5157741946422708833

namespace A144720

/-- `A005246(2*n+1)+A005246(2*n)` -/
def P5157741946422708833.Spec : Prop :=
  ∀ n, P5157741946422708833.a n = A144720 n

end A144720

/-! ## A144720.P6034835198990113682

`A001835(n)+A101879(n)+A061278(n)`
-/

namespace A144720.P6034835198990113682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 n + (A101879 n + A061278 n)

end

end A144720.P6034835198990113682

namespace A144720

/-- `A001835(n)+A101879(n)+A061278(n)` -/
def P6034835198990113682.Spec : Prop :=
  ∀ n, P6034835198990113682.a n = A144720 n

end A144720

/-!
# A144721: a(0) = 2, a(1) = 5, a(n) = 4 * a(n-1) - a(n-2).

The programs for A144721, the canonical program `A144721.P461849978553322276` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144721 has offset 0).

The definition of A144721 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-a(n-2)` (program `A144721.P461849978553322276`, by `A144721.P461849978553322276.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A144721.P461849978553322276

`4*a(n-1)-a(n-2)` with `a(0)=2, a(1)=5`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A144721

/-- `4*a(n-1)-a(n-2)` -/
def P461849978553322276.Spec : Prop :=
  ∀ n, P461849978553322276.a n = A144721 n

theorem P461849978553322276.correct : P461849978553322276.Spec := by
  intro n
  simp only [A144721]

end A144721

/-! ## A144721.P6608462094959423434

`floor((sqrt(3)+2)*a(n-1))` with `a(0)=2, a(1)=5`
-/

namespace A144721.P6608462094959423434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  ⌊(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌋

end

end A144721.P6608462094959423434

namespace A144721

/-- `floor((sqrt(3)+2)*a(n-1))` -/
def P6608462094959423434.Spec : Prop :=
  ∀ n, P6608462094959423434.a n = A144721 n

end A144721

/-! ## A144721.P14313294197719272962

`a(n-1)/(1/2)²-a(n-2)` with `a(0)=2, a(1)=5`
-/

namespace A144721.P14313294197719272962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 5] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2 - a (n - 2)

end

end A144721.P14313294197719272962

namespace A144721

/-- `a(n-1)/(1/2)²-a(n-2)` -/
def P14313294197719272962.Spec : Prop :=
  ∀ n, P14313294197719272962.a n = (A144721 n : ℚ)

end A144721

/-! ## A144721.P2407409990230852349

`A237250(Δ[n²])`
-/

namespace A144721.P2407409990230852349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237250 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A144721.P2407409990230852349

namespace A144721

/-- `A237250(Δ[n²])` -/
def P2407409990230852349.Spec : Prop :=
  ∀ n, P2407409990230852349.a n = A144721 n

end A144721

/-! ## A144721.P12391392947795773673

`A001353(n)+floor((sqrt(3)+2)^n)+1`
-/

namespace A144721.P12391392947795773673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 n + (⌊(Real.sqrt (3 : ℝ) + 2) ^ n⌋ + 1)

end

end A144721.P12391392947795773673

namespace A144721

/-- `A001353(n)+floor((sqrt(3)+2)^n)+1` -/
def P12391392947795773673.Spec : Prop :=
  ∀ n, P12391392947795773673.a n = A144721 n

end A144721

/-! ## A144721.P15337453614608686176

`A003500(n)+A001353(n)`
-/

namespace A144721.P15337453614608686176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003500 n + A001353 n

end

end A144721.P15337453614608686176

namespace A144721

/-- `A003500(n)+A001353(n)` -/
def P15337453614608686176.Spec : Prop :=
  ∀ n, P15337453614608686176.a n = A144721 n

end A144721

/-! ## A144721.P4859059160110774435

`A072110(n)+A016064(n)`
-/

namespace A144721.P4859059160110774435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072110 n + A016064 n

end

end A144721.P4859059160110774435

namespace A144721

/-- `A072110(n)+A016064(n)` -/
def P4859059160110774435.Spec : Prop :=
  ∀ n, P4859059160110774435.a n = A144721 n

end A144721

/-! ## A144721.P8022839486805314102

`A144720(n)+A052530(n)`
-/

namespace A144721.P8022839486805314102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144720 n + A052530 n

end

end A144721.P8022839486805314102

namespace A144721

/-- `A144720(n)+A052530(n)` -/
def P8022839486805314102.Spec : Prop :=
  ∀ n, P8022839486805314102.a n = A144721 n

end A144721

/-! ## A144721.P16636895775961740764

`A120893(n)+A105968(n)`
-/

namespace A144721.P16636895775961740764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120893 n + A105968 n

end

end A144721.P16636895775961740764

namespace A144721

/-- `A120893(n)+A105968(n)` -/
def P16636895775961740764.Spec : Prop :=
  ∀ n, P16636895775961740764.a n = A144721 n

end A144721

/-! ## A144721.P5633801315224842187

`A057819(n)-A003500(n)`
-/

namespace A144721.P5633801315224842187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057819 n - A003500 n

end

end A144721.P5633801315224842187

namespace A144721

/-- `A057819(n)-A003500(n)` -/
def P5633801315224842187.Spec : Prop :=
  ∀ n, P5633801315224842187.a n = A144721 n

end A144721

/-! ## A144721.P2188550734161986625

`A003500(n)-A106707(n)`
-/

namespace A144721.P2188550734161986625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003500 n - A106707 n

end

end A144721.P2188550734161986625

namespace A144721

/-- `A003500(n)-A106707(n)` -/
def P2188550734161986625.Spec : Prop :=
  ∀ n, P2188550734161986625.a n = A144721 n

end A144721

/-! ## A144721.P8050276093778617133

`A077234(n)-A231896(n)`
-/

namespace A144721.P8050276093778617133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077234 n - A231896 n

end

end A144721.P8050276093778617133

namespace A144721

/-- `A077234(n)-A231896(n)` -/
def P8050276093778617133.Spec : Prop :=
  ∀ n, P8050276093778617133.a n = A144721 n

end A144721

/-! ## A144721.P648271344305758271

`A001075(n)+Δ[A001353(n)]`
-/

namespace A144721.P648271344305758271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 n + (f1 (n + 1) - f1 n)

end

end A144721.P648271344305758271

namespace A144721

/-- `A001075(n)+Δ[A001353(n)]` -/
def P648271344305758271.Spec : Prop :=
  ∀ n, P648271344305758271.a n = A144721 n

end A144721

/-! ## A144721.P9376537153650125445

`Δ[A001571(n)-A001835(n)]`
-/

namespace A144721.P9376537153650125445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001571 n - A001835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144721.P9376537153650125445

namespace A144721

/-- `Δ[A001571(n)-A001835(n)]` -/
def P9376537153650125445.Spec : Prop :=
  ∀ n, P9376537153650125445.a n = A144721 n

end A144721

/-! ## A144721.P10940132195456271478

`Δ[A102871(n)-A001835(n)]`
-/

namespace A144721.P10940132195456271478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102871 n - A001835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144721.P10940132195456271478

namespace A144721

/-- `Δ[A102871(n)-A001835(n)]` -/
def P10940132195456271478.Spec : Prop :=
  ∀ n, P10940132195456271478.a n = A144721 n

end A144721

/-! ## A144721.P9668586627494712899

`A001835(n+1)+A001075(n)`
-/

namespace A144721.P9668586627494712899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 (n + 1) + A001075 n

end

end A144721.P9668586627494712899

namespace A144721

/-- `A001835(n+1)+A001075(n)` -/
def P9668586627494712899.Spec : Prop :=
  ∀ n, P9668586627494712899.a n = A144721 n

end A144721

/-! ## A144721.P17870050873167253709

`A001835(n)+A001353(n+1)`
-/

namespace A144721.P17870050873167253709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 n + A001353 (n + 1)

end

end A144721.P17870050873167253709

namespace A144721

/-- `A001835(n)+A001353(n+1)` -/
def P17870050873167253709.Spec : Prop :=
  ∀ n, P17870050873167253709.a n = A144721 n

end A144721

/-! ## A144721.P17532974861946842899

`A079935(n+1)+A001075(n)`
-/

namespace A144721.P17532974861946842899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079935 (n + 1) + A001075 n

end

end A144721.P17532974861946842899

namespace A144721

/-- `A079935(n+1)+A001075(n)` -/
def P17532974861946842899.Spec : Prop :=
  ∀ n, P17532974861946842899.a n = A144721 n

end A144721

/-! ## A144721.P13891308242285652122

`A133161(n+1)+A101879(n)`
-/

namespace A144721.P13891308242285652122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133161 (n + 1) + A101879 n

end

end A144721.P13891308242285652122

namespace A144721

/-- `A133161(n+1)+A101879(n)` -/
def P13891308242285652122.Spec : Prop :=
  ∀ n, P13891308242285652122.a n = A144721 n

end A144721

/-!
# A144723: a(n)= primes arising A144722.

The programs for A144723, there is no canonical definition to state claims against.
-/

/-! ## A144723.P17930368811875814544

`A070846(∏[A121799(n+1)+2])`
-/

namespace A144723.P17930368811875814544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121799 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A144723.P17930368811875814544

/-!
# A144724: a(n) is the smallest positive integer such that b * (Product_{k=1..n} a(k)) + 1 is prime, with b = 4.

The programs for A144724, there is no canonical definition to state claims against.
-/

/-! ## A144724.P3149835979954917492

`A144717(ceil(cosh(sin(n))+n))`
-/

namespace A144724.P3149835979954917492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144717 ⌈Real.cosh (Real.sin (n : ℝ)) + (n : ℝ)⌉.toNat

end

end A144724.P3149835979954917492

/-! ## A144724.P16644377751171941896

`A144717(n+2)-floor(acot(n))`
-/

namespace A144724.P16644377751171941896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144717 (n + 2) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A144724.P16644377751171941896

/-! ## A144724.P2475779026495013694

`A144717(ceil(sqrt(∑[2*n]))+1)`
-/

namespace A144724.P2475779026495013694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144717 (⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉ + 1).toNat

end

end A144724.P2475779026495013694

/-! ## A144724.P3748437084131809134

`record[or(round(cos(4)^n), A144717(n+1))]`
-/

namespace A144724.P3748437084131809134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway (Real.cos (4 : ℝ) ^ n)) (A144717 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144724.P3748437084131809134

/-! ## A144724.P14580487242712298154

`record[A144717(A052938(n))]`
-/

namespace A144724.P14580487242712298154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144717 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144724.P14580487242712298154

/-! ## A144724.P14869027837895105298

`A181440(A144717(n+2))`
-/

namespace A144724.P14869027837895105298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A144717 (n + 2)).toNat

end

end A144724.P14869027837895105298

/-! ## A144724.P4823036393833590785

`record[A144717(A028242(n+3))]`
-/

namespace A144724.P4823036393833590785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144717 (A028242 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144724.P4823036393833590785

/-! ## A144724.P2760103391842270057

`A065475(A144717(n+2)-1)`
-/

namespace A144724.P2760103391842270057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A144717 (n + 2) - 1).toNat

end

end A144724.P2760103391842270057

/-! ## A144724.P3408930606878304141

`record[A060576(n)*A144717(n+1)]`
-/

namespace A144724.P3408930606878304141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A144717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144724.P3408930606878304141

/-! ## A144724.P3273396067620264788

`record[A144717(n+1)%A013655(n)]`
-/

namespace A144724.P3273396067620264788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144717 (n + 1)) (A013655 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144724.P3273396067620264788

/-! ## A144724.P1430512936683734265

`A060576(n+1)+A144717(n+2)-1`
-/

namespace A144724.P1430512936683734265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (n + 1) + (A144717 (n + 2) - 1)

end

end A144724.P1430512936683734265

/-! ## A144724.P1343932291158815393

`A144717(n+2)/A014963(4*n+2)`
-/

namespace A144724.P1343932291158815393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144717 (n + 2) : ℚ) / (A014963 (4 * n + 2) : ℚ)

end

end A144724.P1343932291158815393

/-! ## A144724.P5711766780028540292

`A144717(n+2)-val(A000040(n+1), 2)`
-/

namespace A144724.P5711766780028540292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144717 (n + 2) - (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)

end

end A144724.P5711766780028540292

/-! ## A144724.P7337345794700078568

`A144717(n+2)-val(A144717(n+2), A144717(2*(n+1)))`
-/

namespace A144724.P7337345794700078568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144717 (n + 2) - (SequenceMachineLib.valuation (A144717 (n + 2)).toNat (A144717 (2 * (n + 1))).toNat : ℤ)

end

end A144724.P7337345794700078568

/-! ## A144724.P6303930587823272833

`A144717(n+2)/(A171520(2*(n+1))-A171520(2*n+1))`
-/

namespace A144724.P6303930587823272833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144717 (n + 2) : ℚ) / (A171520 (2 * (n + 1)) - A171520 (2 * n + 1) : ℚ)

end

end A144724.P6303930587823272833

/-!
# A144725: Primes arising in A144724.

The programs for A144725, there is no canonical definition to state claims against.
-/

/-! ## A144725.P4469335778955738700

`A144718(n+2)`
-/

namespace A144725.P4469335778955738700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144718 (n + 2)

end

end A144725.P4469335778955738700

/-! ## A144725.P7617762548146667870

`record[A144718(A286622(n^(n%2)))]`
-/

namespace A144725.P7617762548146667870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144718 (A286622 (n ^ (n % 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144725.P7617762548146667870

/-! ## A144725.P16455922670206680377

`∑{e}[A020707(n), A144718(#)]`
-/

namespace A144725.P16455922670206680377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A144718 (Nat.factorization (f1 n).natAbs p)

end

end A144725.P16455922670206680377

/-! ## A144725.P11627787354337072279

`record[A144718(A137397(n))]`
-/

namespace A144725.P11627787354337072279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144718 (A137397 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144725.P11627787354337072279

/-!
# A144727: Primes arising in A144726

The programs for A144727, there is no canonical definition to state claims against.
-/

/-! ## A144727.P10737480023361715292

`p?[5*(n+1)*∏{p}[n!, #]+1]`
-/

namespace A144727.P10737480023361715292
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * ((n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A144727.P10737480023361715292

/-!
# A144728: a(n) is the smallest positive integer such that b * (Product_{k=1..n} a(k)) + 1 is prime, with a(n) > a(n-1) for n >= 2, and b = 6.

The programs for A144728, there is no canonical definition to state claims against.
-/

/-! ## A144728.P1989666245733637026

`record[A046966(n+1)%A078706(A046966(n+1))]`
-/

namespace A144728.P1989666245733637026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046966 (n + 1)) (A078706 (A046966 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144728.P1989666245733637026

/-! ## A144728.P13607390982951979873

`round(ratio[A046972(n+1)+3])`
-/

namespace A144728.P13607390982951979873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046972 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A144728.P13607390982951979873

/-! ## A144728.P761547699910180808

`ceil(ratio[A144729(A028310(n))])`
-/

namespace A144728.P761547699910180808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144729 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A144728.P761547699910180808

/-! ## A144728.P18440013264562955572

`ceil(A144729(n+1)/A144729(A028310(n)))`
-/

namespace A144728.P18440013264562955572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A144729 (n + 1) : ℚ) / (A144729 (A028310 n).toNat : ℚ)⌉

end

end A144728.P18440013264562955572

/-! ## A144728.P18201213245492711787

`∩[A046966(n+1), A228856(n+1)]`
-/

namespace A144728.P18201213245492711787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144728.P18201213245492711787

/-!
# A144729: Primes arising in A144728.

The programs for A144729, there is no canonical definition to state claims against.
-/

/-! ## A144729.P17584637386602493052

`A016921(∏[record[A026300(n)]])`
-/

namespace A144729.P17584637386602493052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A144729.P17584637386602493052

/-! ## A144729.P6237155695881932532

`A016921(∏[record[A333733(n)]])`
-/

namespace A144729.P6237155695881932532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333733 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A144729.P6237155695881932532

/-!
# A144732: Triangle of numerator coefficients, reading across rows, of Sum_{k=1..n} (1/(1 + r^2 - 2*r*cos(k*Pi/n))).

The programs for A144732, there is no canonical definition to state claims against.
-/

/-! ## A144732.P11333954883527394758

`A143901(A007606(n+1))`
-/

namespace A144732.P11333954883527394758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143901 (A007606 (n + 1)).toNat

end

end A144732.P11333954883527394758

/-! ## A144732.P17013767255445979744

`A143901(A161983(n+1))`
-/

namespace A144732.P17013767255445979744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143901 (A161983 (n + 1)).toNat

end

end A144732.P17013767255445979744

/-! ## A144732.P11681893236242029073

`A143901(A316965(n)+2)`
-/

namespace A144732.P11681893236242029073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143901 (A316965 n + 2).toNat

end

end A144732.P11681893236242029073

/-! ## A144732.P11441996921631135550

`∑[A071028(n)-A038760(n)]`
-/

namespace A144732.P11441996921631135550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 n - A038760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144732.P11441996921631135550

/-! ## A144732.P2108616550756163673

`A143901(A116942(2*(n+1)))`
-/

namespace A144732.P2108616550756163673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143901 (A116942 (2 * (n + 1))).toNat

end

end A144732.P2108616550756163673

/-!
# A144733: Triangle read by rows, 2*A054533 - A054521.

The programs for A144733, there is no canonical definition to state claims against.
-/

/-! ## A144733.P3267628613316261260

`2*A054533(n+1)-A054521(n+1)`
-/

namespace A144733.P3267628613316261260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054533 (n + 1) - A054521 (n + 1)

end

end A144733.P3267628613316261260

/-!
# A144734: Triangle read by rows, A054533 * transpose(A101688) (matrix product) provided A101688 is read as a square array by antidiagonals upwards.

The programs for A144734, there is no canonical definition to state claims against.
-/

/-! ## A144734.P15444992368107873268

`a(n-1)-A054533(n)` with `a(0)=1`
-/

namespace A144734.P15444992368107873268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A054533 n

end

end A144734.P15444992368107873268

/-! ## A144734.P12613131076696174109

`2-∑[A054533(A028310(n))]`
-/

namespace A144734.P12613131076696174109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054533 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144734.P12613131076696174109

/-! ## A144734.P5095114596165346183

`2-∑[A054533(A000007(n)+n)]`
-/

namespace A144734.P5095114596165346183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054533 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144734.P5095114596165346183

/-! ## A144734.P12015866307949835897

`2-∑[A054533(gcd(n, A008574(n)))]`
-/

namespace A144734.P12015866307949835897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054533 (Int.gcd (n : ℤ) (A008574 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144734.P12015866307949835897

/-! ## A144734.P11984719189305105489

`A054533(n+1)+1-∑[A054533(n+1)]`
-/

namespace A144734.P11984719189305105489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054533 (n + 1) + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A144734.P11984719189305105489

/-!
# A144737: Numbers A141426(k) such that the three numbers A141426(k) - /+ 5 and A141426(k) + 1 are all prime.

The programs for A144737, there is no canonical definition to state claims against.
-/

/-! ## A144737.P7118195112929459028

`∩[A087696(n+1), A141426(n+1)]`
-/

namespace A144737.P7118195112929459028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144737.P7118195112929459028

/-! ## A144737.P14592573944947023608

`∩[A087696(n+1), A140555(n+1)-1]`
-/

namespace A144737.P14592573944947023608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140555 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144737.P14592573944947023608

/-! ## A144737.P15276373965285942956

`∩[p?[A018252(n+1)-6]-1, A087696(n+1)]`
-/

namespace A144737.P15276373965285942956
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A144737.P15276373965285942956

/-! ## A144737.P7929835356596374137

`∩[A087696(n+1), A000010(A140555(n+1))]`
-/

namespace A144737.P7929835356596374137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A140555 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144737.P7929835356596374137

/-! ## A144737.P2737524024545833659

`∩[A002322(A140555(n+1)), A087696(n+3)]`
-/

namespace A144737.P2737524024545833659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A140555 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087696 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144737.P2737524024545833659

/-!
# A144739: 7-factorial numbers A114799(7*n+3): Partial products of A017017(k) = 7*k+3, a(0) = 1.

The programs for A144739, there is no canonical definition to state claims against.
-/

/-! ## A144739.P15688782407022317995

`∏[a(n-1)+7]` with `a(0)=1, a(1)=3`
-/

namespace A144739.P15688782407022317995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A144739.P15688782407022317995

/-! ## A144739.P6845934649916623895

`(7*n-4)*a(n-1)` with `a(0)=1`
-/

namespace A144739.P6845934649916623895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((7 * n : ℤ) - 4) * a (n - 1)

end

end A144739.P6845934649916623895

/-! ## A144739.P3413817752378507937

`∏[record[A078689(n)]+n]`
-/

namespace A144739.P3413817752378507937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078689 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A144739.P3413817752378507937

/-! ## A144739.P2505121437667946531

`∏[record[A174785(n)]+n]`
-/

namespace A144739.P2505121437667946531
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174785 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A144739.P2505121437667946531

/-! ## A144739.P15652729302159067649

`∏[record[A187307(n)]+n]`
-/

namespace A144739.P15652729302159067649
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187307 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A144739.P15652729302159067649

/-!
# A144740: Partial totient function phi(c, n) for c = 2: number of semiprimes less than and coprime to n.

The programs for A144740, there is no canonical definition to state claims against.
-/

/-! ## A144740.P15731102200348062751

`A072000(n+1)-A144741(n+1)`
-/

namespace A144740.P15731102200348062751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (n + 1) - A144741 (n + 1)

end

end A144740.P15731102200348062751

/-! ## A144740.P13622112994454649721

`∑[A064911(n+1)]-A144741(n+1)`
-/

namespace A144740.P13622112994454649721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A144741 (n + 1)

end

end A144740.P13622112994454649721

/-! ## A144740.P10026369206002225385

`∑[A101605(2*(n+1))]-A144741(n+1)`
-/

namespace A144740.P10026369206002225385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A144741 (n + 1)

end

end A144740.P10026369206002225385

/-! ## A144740.P15035977509082216079

`∑[A010051(A032742(n+1))]-A144741(n+1)`
-/

namespace A144740.P15035977509082216079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A032742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A144741 (n + 1)

end

end A144740.P15035977509082216079

/-! ## A144740.P17844443786279177129

`A334940(n+1)-(A144741(n+1)+A072613(n+1))`
-/

namespace A144740.P17844443786279177129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334940 (n + 1) - (A144741 (n + 1) + A072613 (n + 1))

end

end A144740.P17844443786279177129

/-!
# A144741: Number of semiprimes less than or equal to and not coprime to n.

The programs for A144741, there is no canonical definition to state claims against.
-/

/-! ## A144741.P18334632429168812057

`A072000(n+1)-A144740(n+1)`
-/

namespace A144741.P18334632429168812057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (n + 1) - A144740 (n + 1)

end

end A144741.P18334632429168812057

/-! ## A144741.P8088175309830184708

`A369747(n+1)-A079275(n+1)`
-/

namespace A144741.P8088175309830184708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369747 (n + 1) - A079275 (n + 1)

end

end A144741.P8088175309830184708

/-! ## A144741.P3366971372697552706

`∑[A064911(n+1)]-A144740(n+1)`
-/

namespace A144741.P3366971372697552706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A144740 (n + 1)

end

end A144741.P3366971372697552706

/-! ## A144741.P2013595055270755348

`∑[A010051(A032742(n+1))]-A144740(n+1)`
-/

namespace A144741.P2013595055270755348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A032742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A144740 (n + 1)

end

end A144741.P2013595055270755348

/-! ## A144741.P13774830024206590414

`A334940(n+1)-(A144740(n+1)+A072613(n+1))`
-/

namespace A144741.P13774830024206590414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334940 (n + 1) - (A144740 (n + 1) + A072613 (n + 1))

end

end A144741.P13774830024206590414

/-!
# A144742: Integers m such that phi(2, m) = A144740(m) > phi(2, k) for 0 < k < m.

The programs for A144742, the canonical program `A144742.P9417670186719166033` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144742 has offset 1).

The definition of A144742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 882 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144742.P9417670186719166033

`record[A007918(A001358(A154958(n)))]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A144742

/-- `record[A007918(A001358(A154958(n)))]` -/
def P9417670186719166033.Spec : Prop :=
  ∀ n, P9417670186719166033.a n = A144742 (n + 1)

theorem P9417670186719166033.correct : P9417670186719166033.Spec := by
  intro n
  simp only [A144742, Nat.add_sub_cancel]

end A144742

/-! ## A144742.P891554116240140271

`p?[A179464(A001358(n+1))]`
-/

namespace A144742.P891554116240140271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179464 (A001358 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144742.P891554116240140271

namespace A144742

/-- `p?[A179464(A001358(n+1))]` -/
def P891554116240140271.Spec : Prop :=
  ∀ n, P891554116240140271.a n = A144742 (n + 1)

end A144742

/-! ## A144742.P5740091563174027881

`p?[A055212(n+1)*A179464(n+1)]`
-/

namespace A144742.P5740091563174027881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055212 (n + 1) * A179464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144742.P5740091563174027881

namespace A144742

/-- `p?[A055212(n+1)*A179464(n+1)]` -/
def P5740091563174027881.Spec : Prop :=
  ∀ n, P5740091563174027881.a n = A144742 (n + 1)

end A144742

/-! ## A144742.P2893876028388451703

`p?[A064911(n+1)*A179464(n+1)]`
-/

namespace A144742.P2893876028388451703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1) * A179464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144742.P2893876028388451703

namespace A144742

/-- `p?[A064911(n+1)*A179464(n+1)]` -/
def P2893876028388451703.Spec : Prop :=
  ∀ n, P2893876028388451703.a n = A144742 (n + 1)

end A144742

/-! ## A144742.P10214248993568801177

`A000040(record[A088738(n+1)-(n+1)])`
-/

namespace A144742.P10214248993568801177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088738 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A144742.P10214248993568801177

namespace A144742

/-- `A000040(record[A088738(n+1)-(n+1)])` -/
def P10214248993568801177.Spec : Prop :=
  ∀ n, P10214248993568801177.a n = A144742 (n + 1)

end A144742

/-! ## A144742.P10885459991967215166

`record[A007918(A088739(n+1))]`
-/

namespace A144742.P10885459991967215166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A088739 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144742.P10885459991967215166

namespace A144742

/-- `record[A007918(A088739(n+1))]` -/
def P10885459991967215166.Spec : Prop :=
  ∀ n, P10885459991967215166.a n = A144742 (n + 1)

end A144742

/-! ## A144742.P3229783355653963591

`record[A007918(A088740(n+1))]`
-/

namespace A144742.P3229783355653963591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A088740 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144742.P3229783355653963591

namespace A144742

/-- `record[A007918(A088740(n+1))]` -/
def P3229783355653963591.Spec : Prop :=
  ∀ n, P3229783355653963591.a n = A144742 (n + 1)

end A144742

/-! ## A144742.P8265623085166020126

`A008578(record[A088739(n+1)-n])`
-/

namespace A144742.P8265623085166020126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088739 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A144742.P8265623085166020126

namespace A144742

/-- `A008578(record[A088739(n+1)-n])` -/
def P8265623085166020126.Spec : Prop :=
  ∀ n, P8265623085166020126.a n = A144742 (n + 1)

end A144742

/-! ## A144742.P3780819649212361120

`A000040(record[A088739(n+1)-(n+1)])`
-/

namespace A144742.P3780819649212361120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088739 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A144742.P3780819649212361120

namespace A144742

/-- `A000040(record[A088739(n+1)-(n+1)])` -/
def P3780819649212361120.Spec : Prop :=
  ∀ n, P3780819649212361120.a n = A144742 (n + 1)

end A144742

/-! ## A144742.P11126830042242186782

`A000040(record[A088740(n+1)-(n+1)])`
-/

namespace A144742.P11126830042242186782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088740 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A144742.P11126830042242186782

namespace A144742

/-- `A000040(record[A088740(n+1)-(n+1)])` -/
def P11126830042242186782.Spec : Prop :=
  ∀ n, P11126830042242186782.a n = A144742 (n + 1)

end A144742

/-! ## A144742.P15051750600642192426

`A006530(record[A151800(A088739(n+1))])`
-/

namespace A144742.P15051750600642192426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A088739 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A144742.P15051750600642192426

namespace A144742

/-- `A006530(record[A151800(A088739(n+1))])` -/
def P15051750600642192426.Spec : Prop :=
  ∀ n, P15051750600642192426.a n = A144742 (n + 1)

end A144742

/-! ## A144742.P3112832144842176103

`A014963(record[A151800(A088739(n+1))])`
-/

namespace A144742.P3112832144842176103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A088739 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A144742.P3112832144842176103

namespace A144742

/-- `A014963(record[A151800(A088739(n+1))])` -/
def P3112832144842176103.Spec : Prop :=
  ∀ n, P3112832144842176103.a n = A144742 (n + 1)

end A144742

/-! ## A144742.P11836736394667864749

`A020639(record[A151800(A088739(n+1))])`
-/

namespace A144742.P11836736394667864749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A088739 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A144742.P11836736394667864749

namespace A144742

/-- `A020639(record[A151800(A088739(n+1))])` -/
def P11836736394667864749.Spec : Prop :=
  ∀ n, P11836736394667864749.a n = A144742 (n + 1)

end A144742

/-!
# A144743: Recurrence sequence a(n)=a(n-1)^2-a(n-1)-1, a(0)=3.

The programs for A144743, the canonical program `A144743.P335265792207207101` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144743 has offset 0).

The definition of A144743 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²-a(n-1)-1` (program `A144743.P335265792207207101`, by `A144743.P335265792207207101.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A144743.P335265792207207101

`a(n-1)²-a(n-1)-1` with `a(0)=3`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A144743

/-- `a(n-1)²-a(n-1)-1` -/
def P335265792207207101.Spec : Prop :=
  ∀ n, P335265792207207101.a n = A144743 n

theorem P335265792207207101.correct : P335265792207207101.Spec := by
  intro n
  simp only [A144743]

end A144743

/-! ## A144743.P6854157262727268955

`2*C(a(n-1), 2)-1` with `a(0)=3`
-/

namespace A144743.P6854157262727268955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (2 * Nat.choose (a (n - 1)).toNat 2 : ℤ) - 1

end

end A144743.P6854157262727268955

namespace A144743

/-- `2*C(a(n-1), 2)-1` -/
def P6854157262727268955.Spec : Prop :=
  ∀ n, P6854157262727268955.a n = A144743 n

end A144743

/-!
# A144744: Recurrence sequence a(n)=a(n-1)^2-a(n-1)-1, a(0)=4.

The programs for A144744, the canonical program `A144744.P16271121413282469676` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144744 has offset 0).

The definition of A144744 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²-a(n-1)-1` (program `A144744.P16271121413282469676`, by `A144744.P16271121413282469676.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A144744.P16271121413282469676

`a(n-1)²-a(n-1)-1` with `a(0)=4`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A144744

/-- `a(n-1)²-a(n-1)-1` -/
def P16271121413282469676.Spec : Prop :=
  ∀ n, P16271121413282469676.a n = A144744 n

theorem P16271121413282469676.correct : P16271121413282469676.Spec := by
  intro n
  simp only [A144744]

end A144744

/-! ## A144744.P10177313272926424080

`2*C(a(n-1), 2)-1` with `a(0)=4`
-/

namespace A144744.P10177313272926424080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (2 * Nat.choose (a (n - 1)).toNat 2 : ℤ) - 1

end

end A144744.P10177313272926424080

namespace A144744

/-- `2*C(a(n-1), 2)-1` -/
def P10177313272926424080.Spec : Prop :=
  ∀ n, P10177313272926424080.a n = A144744 n

end A144744

/-!
# A144745: Recurrence sequence a(n)=a(n-1)^2-a(n-1)-1, a(0)=9.

The programs for A144745, the canonical program `A144745.P18268498339304948760` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144745 has offset 0).

The definition of A144745 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144745.P18268498339304948760

`a(n-1)²-a(n-1)-1` with `a(0)=9`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A144745

/-- `a(n-1)²-a(n-1)-1` -/
def P18268498339304948760.Spec : Prop :=
  ∀ n, P18268498339304948760.a n = A144745 n

theorem P18268498339304948760.correct : P18268498339304948760.Spec := by
  intro n
  simp only [A144745]

end A144745

/-!
# A144746: a(n) = a(n-1)^2 - a(n-1) - 1, a(0)=6.

The programs for A144746, the canonical program `A144746.P7396142646705993564` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144746 has offset 0).

The definition of A144746 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²-a(n-1)-1` (program `A144746.P7396142646705993564`, by `A144746.P7396142646705993564.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A144746.P7396142646705993564

`a(n-1)²-a(n-1)-1` with `a(0)=6`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A144746

/-- `a(n-1)²-a(n-1)-1` -/
def P7396142646705993564.Spec : Prop :=
  ∀ n, P7396142646705993564.a n = A144746 n

theorem P7396142646705993564.correct : P7396142646705993564.Spec := by
  intro n
  simp only [A144746]

end A144746

/-! ## A144746.P16941771199145060319

`2*C(a(n-1), 2)-1` with `a(0)=6`
-/

namespace A144746.P16941771199145060319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  (2 * Nat.choose (a (n - 1)).toNat 2 : ℤ) - 1

end

end A144746.P16941771199145060319

namespace A144746

/-- `2*C(a(n-1), 2)-1` -/
def P16941771199145060319.Spec : Prop :=
  ∀ n, P16941771199145060319.a n = A144746 n

end A144746

/-!
# A144747: Recurrence sequence a(n)=a(n-1)^2-a(n-1)-1, a(0)=7.

The programs for A144747, the canonical program `A144747.P8079210187507290134` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144747 has offset 0).

The definition of A144747 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²-a(n-1)-1` (program `A144747.P8079210187507290134`, by `A144747.P8079210187507290134.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A144747.P8079210187507290134

`a(n-1)²-a(n-1)-1` with `a(0)=7`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A144747

/-- `a(n-1)²-a(n-1)-1` -/
def P8079210187507290134.Spec : Prop :=
  ∀ n, P8079210187507290134.a n = A144747 n

theorem P8079210187507290134.correct : P8079210187507290134.Spec := by
  intro n
  simp only [A144747]

end A144747

/-! ## A144747.P7044699349029904378

`2*C(a(n-1), 2)-1` with `a(0)=7`
-/

namespace A144747.P7044699349029904378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  (2 * Nat.choose (a (n - 1)).toNat 2 : ℤ) - 1

end

end A144747.P7044699349029904378

namespace A144747

/-- `2*C(a(n-1), 2)-1` -/
def P7044699349029904378.Spec : Prop :=
  ∀ n, P7044699349029904378.a n = A144747 n

end A144747

/-!
# A144748: Recurrence sequence a(n)=a(n-1)^2-a(n-1)-1, a(0)=8.

The programs for A144748, the canonical program `A144748.P702255789053459195` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144748 has offset 0).

The definition of A144748 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²-a(n-1)-1` (program `A144748.P702255789053459195`, by `A144748.P702255789053459195.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A144748.P702255789053459195

`a(n-1)²-a(n-1)-1` with `a(0)=8`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A144748

/-- `a(n-1)²-a(n-1)-1` -/
def P702255789053459195.Spec : Prop :=
  ∀ n, P702255789053459195.a n = A144748 n

theorem P702255789053459195.correct : P702255789053459195.Spec := by
  intro n
  simp only [A144748]

end A144748

/-! ## A144748.P9949157175015305380

`2*C(a(n-1), 2)-1` with `a(0)=8`
-/

namespace A144748.P9949157175015305380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  (2 * Nat.choose (a (n - 1)).toNat 2 : ℤ) - 1

end

end A144748.P9949157175015305380

namespace A144748

/-- `2*C(a(n-1), 2)-1` -/
def P9949157175015305380.Spec : Prop :=
  ∀ n, P9949157175015305380.a n = A144748 n

end A144748

/-!
# A144750: A098777 mod 9.

The programs for A144750, the canonical program `A144750.P13160231951552913500` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144750 has offset 0).

The definition of A144750 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144750.P13160231951552913500

`dr(2*a(n-3))` with `a(0)=1, a(1)=8, a(2)=7`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A144750

/-- `dr(2*a(n-3))` -/
def P13160231951552913500.Spec : Prop :=
  ∀ n, (P13160231951552913500.a n : ℤ) = A144750 n

theorem P13160231951552913500.correct : P13160231951552913500.Spec := by
  intro n
  simp only [A144750]

end A144750

/-!
# A144751: a(1) = 3, a(n + 1) = 1 + a(n) + least odd prime factor of a(n).

The programs for A144751, there is no canonical definition to state claims against.
-/

/-! ## A144751.P12047164706923464969

`A140525(n+1)+1`
-/

namespace A144751.P12047164706923464969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140525 (n + 1) + 1

end

end A144751.P12047164706923464969

/-! ## A144751.P9656496569953919036

`or(1, A140525(Δ[n²]-n))`
-/

namespace A144751.P9656496569953919036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A140525 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A144751.P9656496569953919036

/-! ## A144751.P8241838659099630383

`xor(A097807(n)², A140525(Δ[n²]-n))`
-/

namespace A144751.P8241838659099630383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A097807 n ^ 2) (A140525 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A144751.P8241838659099630383

/-! ## A144751.P4654199736257640039

`2-(A007318(∑[n])-A140525(Δ[n²]-n))`
-/

namespace A144751.P4654199736257640039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) - A140525 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat)

end

end A144751.P4654199736257640039

/-! ## A144751.P18204278355051147019

`a(n-1)+A020639(a(n-1))+1` with `a(0)=3`
-/

namespace A144751.P18204278355051147019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (A020639 (a (n - 1)).toNat + 1)

end

end A144751.P18204278355051147019

/-!
# A144752: Positive integers whose binary representation (1) is a palindrome and (2) has a prime number of 0's.

The programs for A144752, the canonical program `A144752.P5169487629001239534` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144752 has offset 1).

The definition of A144752 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144752.P5169487629001239534

`∩[A006995(n+1), A144754(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A144752

/-- `∩[A006995(n+1), A144754(n+1)]` -/
def P5169487629001239534.Spec : Prop :=
  ∀ n, (P5169487629001239534.a n : ℤ) = A144752 (n + 1)

theorem P5169487629001239534.correct : P5169487629001239534.Spec := by
  intro n
  simp only [A144752, Nat.add_sub_cancel]

end A144752

/-! ## A144752.P11307247713643534415

`record[A145799(A144754(n+3))]`
-/

namespace A144752.P11307247713643534415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145799 (A144754 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144752.P11307247713643534415

namespace A144752

/-- `record[A145799(A144754(n+3))]` -/
def P11307247713643534415.Spec : Prop :=
  ∀ n, P11307247713643534415.a n = A144752 (n + 1)

end A144752

/-!
# A144753: Positive integers whose binary representation is a palindrome and has a prime number of 1's.

The programs for A144753, there is no canonical definition to state claims against.
-/

/-! ## A144753.P12929543241427471986

`∩[A006995(n+1), A052294(n+1)]`
-/

namespace A144753.P12929543241427471986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144753.P12929543241427471986

/-! ## A144753.P16525346669690184894

`record[A145799(A052294(n+1))]`
-/

namespace A144753.P16525346669690184894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145799 (A052294 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144753.P16525346669690184894

/-! ## A144753.P8830282708886708748

`filter[A006995(n+1), A137331(#)]`
-/

namespace A144753.P8830282708886708748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137331 (f1 j).toNat = 1) n)

end

end A144753.P8830282708886708748

/-! ## A144753.P2350516193445536601

`filter[A052294(n+1), A178225(#)]`
-/

namespace A144753.P2350516193445536601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178225 (f1 j).toNat = 1) n)

end

end A144753.P2350516193445536601

/-! ## A144753.P7054661867882150736

`filter[A317294(n+2), A178225(#)]`
-/

namespace A144753.P7054661867882150736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317294 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178225 (f1 j).toNat = 1) n)

end

end A144753.P7054661867882150736

/-! ## A144753.P13998019829738325393

`eq[1, A175919(n)+A137331(n)]`
-/

namespace A144753.P13998019829738325393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 n + A137331 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A144753.P13998019829738325393

/-! ## A144753.P4363967549513829242

`eq[A303534(n)+1, A137331(n)]`
-/

namespace A144753.P4363967549513829242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303534 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137331 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144753.P4363967549513829242

/-! ## A144753.P2319365217446178942

`eq[2, A178225(n)+A137331(n)]`
-/

namespace A144753.P2319365217446178942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 n + A137331 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A144753.P2319365217446178942

/-! ## A144753.P15001196072829088966

`eq[1, A137331(n*A178225(n))]`
-/

namespace A144753.P15001196072829088966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137331 ((n : ℤ) * A178225 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A144753.P15001196072829088966

/-! ## A144753.P15174938162097053457

`eq[A007918(A000120(n)), A159780(n)]`
-/

namespace A144753.P15174938162097053457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A000120 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159780 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144753.P15174938162097053457

/-!
# A144754: Integers that have a prime number of 0's in their binary expansion.

The programs for A144754, the canonical program `A144754.P1139666669672371896` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144754 has offset 1).

The definition of A144754 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4595 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144754.P1139666669672371896

`eq[1, ∑{e}[A080791(n), #]]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A144754

/-- `eq[1, ∑{e}[A080791(n), #]]` -/
def P1139666669672371896.Spec : Prop :=
  ∀ n, (P1139666669672371896.a n : ℤ) = A144754 (n + 1)

theorem P1139666669672371896.correct : P1139666669672371896.Spec := by
  intro n
  simp only [A144754, Nat.add_sub_cancel]

end A144754

/-! ## A144754.P4011130371186291599

`eq[1, A003415(A023416(n))]`
-/

namespace A144754.P4011130371186291599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A023416 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A144754.P4011130371186291599

namespace A144754

/-- `eq[1, A003415(A023416(n))]` -/
def P4011130371186291599.Spec : Prop :=
  ∀ n, (P4011130371186291599.a n : ℤ) = A144754 (n + 1)

end A144754

/-! ## A144754.P15008813945663383271

`eq[1, A003415(A080791(n))]`
-/

namespace A144754.P15008813945663383271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A080791 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A144754.P15008813945663383271

namespace A144754

/-- `eq[1, A003415(A080791(n))]` -/
def P15008813945663383271.Spec : Prop :=
  ∀ n, (P15008813945663383271.a n : ℤ) = A144754 (n + 1)

end A144754

/-! ## A144754.P5940450003217811727

`lt[0, A105700(A023416(n)²)]`
-/

namespace A144754.P5940450003217811727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A023416 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A144754.P5940450003217811727

namespace A144754

/-- `lt[0, A105700(A023416(n)²)]` -/
def P5940450003217811727.Spec : Prop :=
  ∀ n, (P5940450003217811727.a n : ℤ) = A144754 (n + 1)

end A144754

/-! ## A144754.P14650827584692955612

`lt[0, A105700(A080791(n)²)]`
-/

namespace A144754.P14650827584692955612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A080791 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A144754.P14650827584692955612

namespace A144754

/-- `lt[0, A105700(A080791(n)²)]` -/
def P14650827584692955612.Spec : Prop :=
  ∀ n, (P14650827584692955612.a n : ℤ) = A144754 (n + 1)

end A144754

/-! ## A144754.P3197185061388778182

`eq[2, A000001(A080791(n)²)]`
-/

namespace A144754.P3197185061388778182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A080791 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A144754.P3197185061388778182

namespace A144754

/-- `eq[2, A000001(A080791(n)²)]` -/
def P3197185061388778182.Spec : Prop :=
  ∀ n, (P3197185061388778182.a n : ℤ) = A144754 (n + 1)

end A144754

/-! ## A144754.P11460943794160332417

`eq[2, A000001(2*A080791(n))]`
-/

namespace A144754.P11460943794160332417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (2 * A080791 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A144754.P11460943794160332417

namespace A144754

/-- `eq[2, A000001(2*A080791(n))]` -/
def P11460943794160332417.Spec : Prop :=
  ∀ n, (P11460943794160332417.a n : ℤ) = A144754 (n + 1)

end A144754

/-! ## A144754.P7226083779686071491

`lt[1, A105700(2*A023416(n))]`
-/

namespace A144754.P7226083779686071491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (2 * A023416 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A144754.P7226083779686071491

namespace A144754

/-- `lt[1, A105700(2*A023416(n))]` -/
def P7226083779686071491.Spec : Prop :=
  ∀ n, (P7226083779686071491.a n : ℤ) = A144754 (n + 1)

end A144754

/-! ## A144754.P4450143312499729572

`eq[2, A105700(2*A080791(n))]`
-/

namespace A144754.P4450143312499729572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (2 * A080791 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A144754.P4450143312499729572

namespace A144754

/-- `eq[2, A105700(2*A080791(n))]` -/
def P4450143312499729572.Spec : Prop :=
  ∀ n, (P4450143312499729572.a n : ℤ) = A144754 (n + 1)

end A144754

/-! ## A144754.P2522792772556317270

`eq[2, A226378(2*A023416(n))]`
-/

namespace A144754.P2522792772556317270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (2 * A023416 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A144754.P2522792772556317270

namespace A144754

/-- `eq[2, A226378(2*A023416(n))]` -/
def P2522792772556317270.Spec : Prop :=
  ∀ n, (P2522792772556317270.a n : ℤ) = A144754 (n + 1)

end A144754

/-! ## A144754.P5964308092652552297

`eq[2, A226378(2*A080791(n))]`
-/

namespace A144754.P5964308092652552297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (2 * A080791 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A144754.P5964308092652552297

namespace A144754

/-- `eq[2, A226378(2*A080791(n))]` -/
def P5964308092652552297.Spec : Prop :=
  ∀ n, (P5964308092652552297.a n : ℤ) = A144754 (n + 1)

end A144754

/-! ## A144754.P2440838157558338979

`eq[2, A284289(2*A023416(n))]`
-/

namespace A144754.P2440838157558338979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 (2 * A023416 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A144754.P2440838157558338979

namespace A144754

/-- `eq[2, A284289(2*A023416(n))]` -/
def P2440838157558338979.Spec : Prop :=
  ∀ n, (P2440838157558338979.a n : ℤ) = A144754 (n + 1)

end A144754

/-! ## A144754.P7430564743089502143

`eq[2, A284289(2*A080791(n))]`
-/

namespace A144754.P7430564743089502143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 (2 * A080791 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A144754.P7430564743089502143

namespace A144754

/-- `eq[2, A284289(2*A080791(n))]` -/
def P7430564743089502143.Spec : Prop :=
  ∀ n, (P7430564743089502143.a n : ℤ) = A144754 (n + 1)

end A144754

/-! ## A144754.P16578752545655064081

`eq[2, and(2, A011373(A023416(n)²))]`
-/

namespace A144754.P16578752545655064081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A011373 (A023416 n ^ 2).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A144754.P16578752545655064081

namespace A144754

/-- `eq[2, and(2, A011373(A023416(n)²))]` -/
def P16578752545655064081.Spec : Prop :=
  ∀ n, (P16578752545655064081.a n : ℤ) = A144754 (n + 1)

end A144754

/-! ## A144754.P17514394436741564569

`eq[A035031(A080791(n)+1), A080791(n)]`
-/

namespace A144754.P17514394436741564569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035031 (A080791 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144754.P17514394436741564569

namespace A144754

/-- `eq[A035031(A080791(n)+1), A080791(n)]` -/
def P17514394436741564569.Spec : Prop :=
  ∀ n, (P17514394436741564569.a n : ℤ) = A144754 (n + 1)

end A144754

/-! ## A144754.P4903755386347329744

`eq[A051698(A080791(n)+1), A080791(n)]`
-/

namespace A144754.P4903755386347329744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (A080791 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144754.P4903755386347329744

namespace A144754

/-- `eq[A051698(A080791(n)+1), A080791(n)]` -/
def P4903755386347329744.Spec : Prop :=
  ∀ n, (P4903755386347329744.a n : ℤ) = A144754 (n + 1)

end A144754

/-! ## A144754.P15891197709102854149

`eq[2, A000005(A080791(A000265(n+1))+1)]`
-/

namespace A144754.P15891197709102854149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A080791 (A000265 (n + 1)).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A144754.P15891197709102854149

namespace A144754

/-- `eq[2, A000005(A080791(A000265(n+1))+1)]` -/
def P15891197709102854149.Spec : Prop :=
  ∀ n, (P15891197709102854149.a n : ℤ) = A144754 (n + 1)

end A144754

/-! ## A144754.P14275657379347312719

`eq[2, A000005(A023416(or(n, n+1))+1)]`
-/

namespace A144754.P14275657379347312719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A023416 (Nat.lor n (n + 1)) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A144754.P14275657379347312719

namespace A144754

/-- `eq[2, A000005(A023416(or(n, n+1))+1)]` -/
def P14275657379347312719.Spec : Prop :=
  ∀ n, (P14275657379347312719.a n : ℤ) = A144754 (n + 1)

end A144754

/-! ## A144754.P18095908683866454096

`eq[2, A077462(A023416(2*n+1))]`
-/

namespace A144754.P18095908683866454096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A023416 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A144754.P18095908683866454096

namespace A144754

/-- `eq[2, A077462(A023416(2*n+1))]` -/
def P18095908683866454096.Spec : Prop :=
  ∀ n, (P18095908683866454096.a n : ℤ) = A144754 (n + 1)

end A144754

/-! ## A144754.P9835620621313813093

`eq[A051698(A080791(2*n)), A080791(n)]`
-/

namespace A144754.P9835620621313813093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (A080791 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144754.P9835620621313813093

namespace A144754

/-- `eq[A051698(A080791(2*n)), A080791(n)]` -/
def P9835620621313813093.Spec : Prop :=
  ∀ n, (P9835620621313813093.a n : ℤ) = A144754 (n + 1)

end A144754

/-!
# A144755: Primes which divide none of overpseudoprimes to base 2 (A141232).

The programs for A144755, there is no canonical definition to state claims against.
-/

/-! ## A144755.P18030157954303238709

`∩[A048197(n+1), A104885(n+1)]`
-/

namespace A144755.P18030157954303238709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048197 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144755.P18030157954303238709

/-! ## A144755.P15586666549085873342

`eq[A003415(n), A144510(A325352(n+1))]`
-/

namespace A144755.P15586666549085873342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144510 (A325352 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144755.P15586666549085873342

/-! ## A144755.P11506077389981009857

`A154363(∪[A154363(n+1), A000031(n)])`
-/

namespace A144755.P11506077389981009857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154363 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A144755.P11506077389981009857

/-! ## A144755.P15175742716515915461

`p?[A305732(2*n+1)-n]`
-/

namespace A144755.P15175742716515915461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305732 (2 * n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144755.P15175742716515915461

/-!
# A144756: Partial products of successive terms of A017101; a(0)=1 .

The programs for A144756, there is no canonical definition to state claims against.
-/

/-! ## A144756.P12268039896453017212

`∏[a(n-1)+8]` with `a(0)=1, a(1)=3`
-/

namespace A144756.P12268039896453017212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A144756.P12268039896453017212

/-! ## A144756.P11437934276219317267

`(8*n-5)*a(n-1)` with `a(0)=1`
-/

namespace A144756.P11437934276219317267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((8 * n : ℤ) - 5) * a (n - 1)

end

end A144756.P11437934276219317267

/-! ## A144756.P11174662707205995967

`∏[abs(1-4*comp[2*(n+1)])]`
-/

namespace A144756.P11174662707205995967
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (4 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A144756.P11174662707205995967

/-! ## A144756.P1186564084355446865

`a(n-1)*A017101(n-1)` with `a(0)=1`
-/

namespace A144756.P1186564084355446865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A017101 (n - 1)

end

end A144756.P1186564084355446865

/-! ## A144756.P3410232953449049682

`a(n-1)/n*A139272(n)` with `a(0)=1`
-/

namespace A144756.P3410232953449049682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (n : ℚ) * (A139272 n : ℚ)

end

end A144756.P3410232953449049682

/-!
# A144757: Number of factor trees for n.

The programs for A144757, the canonical program `A144757.P7952368593999860426` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144757 has offset 2).

The definition of A144757 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A008480, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A144757.P7952368593999860426

`A000108(A001222(n+2)-1)*A008480(n+2)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A144757

/-- `A000108(A001222(n+2)-1)*A008480(n+2)` -/
def P7952368593999860426.Spec : Prop :=
  ∀ n, P7952368593999860426.a n = A144757 (n + 2)

theorem P7952368593999860426.correct : P7952368593999860426.Spec := by
  intro n
  simp only [A144757, Nat.add_sub_cancel]

end A144757

/-! ## A144757.P10058229657830627236

`A113552(A304099(A281978(A282291(A046523(n+2)))))`
-/

namespace A144757.P10058229657830627236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113552 (A304099 (A281978 (A282291 (A046523 (n + 2)).toNat).toNat).toNat).toNat

end

end A144757.P10058229657830627236

namespace A144757

/-- `A113552(A304099(A281978(A282291(A046523(n+2)))))` -/
def P10058229657830627236.Spec : Prop :=
  ∀ n, P10058229657830627236.a n = A144757 (n + 2)

end A144757

/-! ## A144757.P1591307372856822258

`A160418(A330773(n+1))`
-/

namespace A144757.P1591307372856822258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160418 (A330773 (n + 1)).toNat

end

end A144757.P1591307372856822258

namespace A144757

/-- `A160418(A330773(n+1))` -/
def P1591307372856822258.Spec : Prop :=
  ∀ n, P1591307372856822258.a n = A144757 (n + 2)

end A144757

/-! ## A144757.P12190923081037713206

`A054528(A050356(n+2))`
-/

namespace A144757.P12190923081037713206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054528 (A050356 (n + 2)).toNat

end

end A144757.P12190923081037713206

namespace A144757

/-- `A054528(A050356(n+2))` -/
def P12190923081037713206.Spec : Prop :=
  ∀ n, P12190923081037713206.a n = A144757 (n + 2)

end A144757

/-! ## A144757.P10690738613975010482

`A086350(A069626(n+2))`
-/

namespace A144757.P10690738613975010482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086350 (A069626 (n + 2)).toNat

end

end A144757.P10690738613975010482

namespace A144757

/-- `A086350(A069626(n+2))` -/
def P10690738613975010482.Spec : Prop :=
  ∀ n, P10690738613975010482.a n = A144757 (n + 2)

end A144757

/-!
# A144758: Partial products of successive terms of A017197.

The programs for A144758, there is no canonical definition to state claims against.
-/

/-! ## A144758.P3575762991936976178

`∏[a(n-1)+9]` with `a(0)=1, a(1)=3`
-/

namespace A144758.P3575762991936976178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A144758.P3575762991936976178

/-! ## A144758.P3834625614880007032

`(9*n-6)*a(n-1)` with `a(0)=1`
-/

namespace A144758.P3834625614880007032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((9 * n : ℤ) - 6) * a (n - 1)

end

end A144758.P3834625614880007032

/-! ## A144758.P5076299223353300353

`3^n*∏[abs(2-floor(3/acot(n)))]`
-/

namespace A144758.P5076299223353300353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A144758.P5076299223353300353

/-! ## A144758.P17259897872478061165

`3^n*∏[floor(abs(4*n-ϕ))-n]`
-/

namespace A144758.P17259897872478061165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(4 * n : ℝ) - Real.goldenRatio|⌋ - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A144758.P17259897872478061165

/-! ## A144758.P15301783342163027270

`∏[A261954(2*n)]`
-/

namespace A144758.P15301783342163027270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261954 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A144758.P15301783342163027270

/-!
# A144759: Primes the squares of which are Fibbinary numbers (A003714).

The programs for A144759, there is no canonical definition to state claims against.
-/

/-! ## A144759.P8084084487180325113

`p?[eq[1, A090001(n)]]`
-/

namespace A144759.P8084084487180325113
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090001 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A144759.P8084084487180325113

/-! ## A144759.P3712908773761364509

`eq[A090001(n), A210442(n)]`
-/

namespace A144759.P3712908773761364509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144759.P3712908773761364509

/-! ## A144759.P2432006599663477437

`p?[A028310(n)*A090001(n)]`
-/

namespace A144759.P2432006599663477437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A090001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144759.P2432006599663477437

/-! ## A144759.P17279823502738045835

`p?[lcm(A038608(n), A090001(n))]`
-/

namespace A144759.P17279823502738045835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038608 n) (A090001 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A144759.P17279823502738045835

/-! ## A144759.P6457158781426970992

`eq[1, A090001(n)+A007920(n)]`
-/

namespace A144759.P6457158781426970992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090001 n + A007920 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A144759.P6457158781426970992

/-!
# A144760: Trajectory of 6 under iteration of the map k -> A087712(k).

The programs for A144760, there is no canonical definition to state claims against.
-/

/-! ## A144760.P11558550708373339391

`A144814(n+2)`
-/

namespace A144760.P11558550708373339391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144814 (n + 2)

end

end A144760.P11558550708373339391

/-!
# A144761: Integers n such that Phi(2, a(n)) = A144741(a(n)) > Phi(2, k) for 0 < k < a(n).

The programs for A144761, there is no canonical definition to state claims against.
-/

/-! ## A144761.P6963046023439265012

`∩[A026312(n+1), A249685(n+1)]`
-/

namespace A144761.P6963046023439265012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144761.P6963046023439265012

/-! ## A144761.P14314603333752679772

`A279029(2*(n+1))+A000122(A006784(n+1))`
-/

namespace A144761.P14314603333752679772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279029 (2 * (n + 1)) + A000122 (A006784 (n + 1)).toNat

end

end A144761.P14314603333752679772

/-! ## A144761.P2654341138219417057

`∩[A246441(n+1), A249685(n+1)]`
-/

namespace A144761.P2654341138219417057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144761.P2654341138219417057

/-! ## A144761.P8685181427252055060

`∑[A286479(A000087(n+1))]`
-/

namespace A144761.P8685181427252055060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286479 (A000087 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144761.P8685181427252055060

/-! ## A144761.P7947070603306273924

`A065385(A078213(n+1)+2)`
-/

namespace A144761.P7947070603306273924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065385 (A078213 (n + 1) + 2).toNat

end

end A144761.P7947070603306273924

/-!
# A144762: rad(A144761(n)).

The programs for A144762, there is no canonical definition to state claims against.
-/

/-! ## A144762.P4897563577697397332

`∏{p}[A144761(n+1), #]`
-/

namespace A144762.P4897563577697397332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144761 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A144762.P4897563577697397332

/-! ## A144762.P4020319364711529410

`A007947(A144761(n+1))`
-/

namespace A144762.P4020319364711529410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A144761 (n + 1)).toNat

end

end A144762.P4020319364711529410

/-! ## A144762.P5470788853268967324

`gcd(A115343(n+1), A144761(n+1))`
-/

namespace A144762.P5470788853268967324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A115343 (n + 1)) (A144761 (n + 1))

end

end A144762.P5470788853268967324

/-! ## A144762.P9494388145182528889

`A225821(A165054(n+1)*A232589(3*n+5))`
-/

namespace A144762.P9494388145182528889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225821 (A165054 (n + 1) * A232589 (3 * n + 5)).toNat

end

end A144762.P9494388145182528889

/-! ## A144762.P11197309983189830848

`A007947(A200537(2*n)*A235645(2*n+5))`
-/

namespace A144762.P11197309983189830848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A200537 (2 * n) * A235645 (2 * n + 5)).toNat

end

end A144762.P11197309983189830848

/-!
# A144763: core(A144761(n)).

The programs for A144763, there is no canonical definition to state claims against.
-/

/-! ## A144763.P12739671048953822479

`A007913(A144761(n+1))`
-/

namespace A144763.P12739671048953822479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A144761 (n + 1)).toNat

end

end A144763.P12739671048953822479

/-! ## A144763.P9234437736719805341

`gcd(A055491(A144761(n+1)), A144762(n+1))`
-/

namespace A144763.P9234437736719805341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055491 (A144761 (n + 1)).toNat) (A144762 (n + 1))

end

end A144763.P9234437736719805341

/-! ## A144763.P5553485230478570014

`A144761(Δ[n²]-n)/A008833(A144761(n+1))`
-/

namespace A144763.P5553485230478570014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144761 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / (A008833 (A144761 (n + 1)).toNat : ℚ)

end

end A144763.P5553485230478570014

/-! ## A144763.P4887829978391368242

`∏{p}[A055491(A144761(C(n+1, n))), #]`
-/

namespace A144763.P4887829978391368242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055491 (A144761 (Nat.choose (n + 1) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A144763.P4887829978391368242

/-! ## A144763.P6754465180568649948

`gcd(A056135(A144761(n+1)), A144762(3*n+1))`
-/

namespace A144763.P6754465180568649948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056135 (A144761 (n + 1)).toNat) (A144762 (3 * n + 1))

end

end A144763.P6754465180568649948

/-!
# A144764: Partial totient function phi(c, n) for c = 3: number of 3-semiprimes less than and coprime to n.

The programs for A144764, there is no canonical definition to state claims against.
-/

/-! ## A144764.P8464526113904267004

`∑[A101605(n+1)]-A144765(n+1)`
-/

namespace A144764.P8464526113904267004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A144765 (n + 1)

end

end A144764.P8464526113904267004

/-! ## A144764.P14253973804513136088

`A071283(A153452(A029744(n+1)))`
-/

namespace A144764.P14253973804513136088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071283 (A153452 (A029744 (n + 1)).toNat).toNat

end

end A144764.P14253973804513136088

/-! ## A144764.P16257468118540832978

`A102669(A079981(n)*A135585(n))`
-/

namespace A144764.P16257468118540832978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A079981 n * A135585 n).toNat

end

end A144764.P16257468118540832978

/-! ## A144764.P3823612209664665313

`A071283(A142150(n)%A116953(n))`
-/

namespace A144764.P3823612209664665313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071283 (Int.tmod (A142150 n) (A116953 n)).toNat

end

end A144764.P3823612209664665313

/-! ## A144764.P16779338758365906023

`A033264(A022898(n+1))`
-/

namespace A144764.P16779338758365906023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (A022898 (n + 1)).toNat

end

end A144764.P16779338758365906023

/-!
# A144765: Number of triprimes less than or equal to and not coprime to n.

The programs for A144765, there is no canonical definition to state claims against.
-/

/-! ## A144765.P2788296023716308099

`∑[A101605(n+1)]-A144764(n+1)`
-/

namespace A144765.P2788296023716308099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A144764 (n + 1)

end

end A144765.P2788296023716308099

/-! ## A144765.P7923391951962516724

`A072000(A032742(n+1))%A033092(n)`
-/

namespace A144765.P7923391951962516724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072000 (A032742 (n + 1)).toNat) (A033092 n)

end

end A144765.P7923391951962516724

/-! ## A144765.P16018911979763985736

`A072000(A075388(n+1)%A158661(n))`
-/

namespace A144765.P16018911979763985736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (Int.tmod (A075388 (n + 1)) (A158661 n)).toNat

end

end A144765.P16018911979763985736

/-! ## A144765.P8341719080327309635

`A072000(A032742(n+1)%A027601(n+1))`
-/

namespace A144765.P8341719080327309635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (Int.tmod (A032742 (n + 1)) (A027601 (n + 1))).toNat

end

end A144765.P8341719080327309635

/-!
# A144767: a(n) = n! - n^(n-6).

The programs for A144767, the canonical program `A144767.P3800694721197284855` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144767 has offset 6).

The definition of A144767 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144767.P3800694721197284855

`(n+6)!-(n+6)^n`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A144767

/-- `(n+6)!-(n+6)^n` -/
def P3800694721197284855.Spec : Prop :=
  ∀ n, P3800694721197284855.a n = A144767 (n + 6)

theorem P3800694721197284855.correct : P3800694721197284855.Spec := by
  intro n
  simp only [A144767, Nat.add_sub_cancel]

end A144767

/-! ## A144767.P1391213513893937433

`A000142(n+6)-A008787(n)`
-/

namespace A144767.P1391213513893937433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 6) - A008787 n

end

end A144767.P1391213513893937433

namespace A144767

/-- `A000142(n+6)-A008787(n)` -/
def P1391213513893937433.Spec : Prop :=
  ∀ n, P1391213513893937433.a n = A144767 (n + 6)

end A144767

/-!
# A144768: a(n) = n! - n^9.

The programs for A144768, the canonical program `A144768.P1250980164730298014` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144768 has offset 0).

The definition of A144768 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144768.P1250980164730298014

`n!-n^9`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A144768

/-- `n!-n^9` -/
def P1250980164730298014.Spec : Prop :=
  ∀ n, P1250980164730298014.a n = A144768 n

theorem P1250980164730298014.correct : P1250980164730298014.Spec := by
  intro n
  simp only [A144768]

end A144768

/-! ## A144768.P1498277354585315630

`∏[round(1/acot(n))]-n^9`
-/

namespace A144768.P1498277354585315630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (n ^ 9 : ℤ)

end

end A144768.P1498277354585315630

namespace A144768

/-- `∏[round(1/acot(n))]-n^9` -/
def P1498277354585315630.Spec : Prop :=
  ∀ n, P1498277354585315630.a n = A144768 n

end A144768

/-! ## A144768.P16231072294706385705

`∏[ceil(abs(γ-n))]-n^9`
-/

namespace A144768.P16231072294706385705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (n ^ 9 : ℤ)

end

end A144768.P16231072294706385705

namespace A144768

/-- `∏[ceil(abs(γ-n))]-n^9` -/
def P16231072294706385705.Spec : Prop :=
  ∀ n, P16231072294706385705.a n = A144768 n

end A144768

/-! ## A144768.P2313915027921914973

`xor(n^9-A038507(n), -1)`
-/

namespace A144768.P2313915027921914973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n ^ 9 : ℤ) - A038507 n) (-1)

end

end A144768.P2313915027921914973

namespace A144768

/-- `xor(n^9-A038507(n), -1)` -/
def P2313915027921914973.Spec : Prop :=
  ∀ n, P2313915027921914973.a n = A144768 n

end A144768

/-! ## A144768.P16402824772206299375

`or(n!-A001017(n), A000007(n))`
-/

namespace A144768.P16402824772206299375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((Nat.factorial n : ℤ) - A001017 n) (A000007 n)

end

end A144768.P16402824772206299375

namespace A144768

/-- `or(n!-A001017(n), A000007(n))` -/
def P16402824772206299375.Spec : Prop :=
  ∀ n, P16402824772206299375.a n = A144768 n

end A144768

/-! ## A144768.P27249578682995677

`(n!-A001017(n))*A057077(n)²`
-/

namespace A144768.P27249578682995677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℤ) - A001017 n) * A057077 n ^ 2

end

end A144768.P27249578682995677

namespace A144768

/-- `(n!-A001017(n))*A057077(n)²` -/
def P27249578682995677.Spec : Prop :=
  ∀ n, P27249578682995677.a n = A144768 n

end A144768

/-! ## A144768.P15522103941354504568

`(n!-A001017(n))*A056874(n+1)%2`
-/

namespace A144768.P15522103941354504568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℤ) - A001017 n) * Int.tmod (A056874 (n + 1)) 2

end

end A144768.P15522103941354504568

namespace A144768

/-- `(n!-A001017(n))*A056874(n+1)%2` -/
def P15522103941354504568.Spec : Prop :=
  ∀ n, P15522103941354504568.a n = A144768 n

end A144768

/-!
# A144769: a(n) = floor(prime(n)/3).

The programs for A144769, the canonical program `A144769.P5896699175257808564` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144769 has offset 1).

The definition of A144769 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A144769.P5896699175257808564

`floor(A000040(n+1)/3)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A144769

/-- `floor(A000040(n+1)/3)` -/
def P5896699175257808564.Spec : Prop :=
  ∀ n, P5896699175257808564.a n = A144769 (n + 1)

theorem P5896699175257808564.correct : P5896699175257808564.Spec := by
  intro n
  simp only [A144769, Nat.add_sub_cancel]

end A144769

/-! ## A144769.P5515772270982631828

`floor(Δ[A007504(n)]/3)`
-/

namespace A144769.P5515772270982631828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / 3⌋

end

end A144769.P5515772270982631828

namespace A144769

/-- `floor(Δ[A007504(n)]/3)` -/
def P5515772270982631828.Spec : Prop :=
  ∀ n, P5515772270982631828.a n = A144769 (n + 1)

end A144769

/-! ## A144769.P6294868726978878425

`floor(A323703(n+1)/2)`
-/

namespace A144769.P6294868726978878425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A323703 (n + 1) : ℚ) / 2⌋

end

end A144769.P6294868726978878425

namespace A144769

/-- `floor(A323703(n+1)/2)` -/
def P6294868726978878425.Spec : Prop :=
  ∀ n, P6294868726978878425.a n = A144769 (n + 1)

end A144769

/-! ## A144769.P3030835453306764183

`floor(A006005(n+1)/3)`
-/

namespace A144769.P3030835453306764183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006005 (n + 1) : ℚ) / 3⌋

end

end A144769.P3030835453306764183

namespace A144769

/-- `floor(A006005(n+1)/3)` -/
def P3030835453306764183.Spec : Prop :=
  ∀ n, P3030835453306764183.a n = A144769 (n + 1)

end A144769

/-! ## A144769.P2855911353187727019

`ceil(A040976(n+1)/3)`
-/

namespace A144769.P2855911353187727019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A040976 (n + 1) : ℚ) / 3⌉

end

end A144769.P2855911353187727019

namespace A144769

/-- `ceil(A040976(n+1)/3)` -/
def P2855911353187727019.Spec : Prop :=
  ∀ n, P2855911353187727019.a n = A144769 (n + 1)

end A144769

/-! ## A144769.P12758637615299529632

`round(A006093(n+1)/3)`
-/

namespace A144769.P12758637615299529632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A006093 (n + 1) : ℚ) / 3)

end

end A144769.P12758637615299529632

namespace A144769

/-- `round(A006093(n+1)/3)` -/
def P12758637615299529632.Spec : Prop :=
  ∀ n, P12758637615299529632.a n = A144769 (n + 1)

end A144769

/-! ## A144769.P6691068919051354811

`floor(A072055(n+1)/6)`
-/

namespace A144769.P6691068919051354811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A072055 (n + 1) : ℚ) / 6⌋

end

end A144769.P6691068919051354811

namespace A144769

/-- `floor(A072055(n+1)/6)` -/
def P6691068919051354811.Spec : Prop :=
  ∀ n, P6691068919051354811.a n = A144769 (n + 1)

end A144769

/-! ## A144769.P4636177280186719955

`floor(A100484(n+1)/6)`
-/

namespace A144769.P4636177280186719955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A100484 (n + 1) : ℚ) / 6⌋

end

end A144769.P4636177280186719955

namespace A144769

/-- `floor(A100484(n+1)/6)` -/
def P4636177280186719955.Spec : Prop :=
  ∀ n, P4636177280186719955.a n = A144769 (n + 1)

end A144769

/-! ## A144769.P6191076770352297067

`floor(root(A060800(n+1), 2)/3)`
-/

namespace A144769.P6191076770352297067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060800 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) / 3⌋

end

end A144769.P6191076770352297067

namespace A144769

/-- `floor(root(A060800(n+1), 2)/3)` -/
def P6191076770352297067.Spec : Prop :=
  ∀ n, P6191076770352297067.a n = A144769 (n + 1)

end A144769

/-! ## A144769.P10602151016331972108

`round(A040976(n+1)/A158799(n))`
-/

namespace A144769.P10602151016331972108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A040976 (n + 1) : ℚ) / (A158799 n : ℚ))

end

end A144769.P10602151016331972108

namespace A144769

/-- `round(A040976(n+1)/A158799(n))` -/
def P10602151016331972108.Spec : Prop :=
  ∀ n, P10602151016331972108.a n = A144769 (n + 1)

end A144769

/-! ## A144769.P7951902920720709060

`floor(record[A006530(n+2)/3])`
-/

namespace A144769.P7951902920720709060
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 2) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A144769.P7951902920720709060

namespace A144769

/-- `floor(record[A006530(n+2)/3])` -/
def P7951902920720709060.Spec : Prop :=
  ∀ n, P7951902920720709060.a n = A144769 (n + 1)

end A144769

/-! ## A144769.P7398805909518906068

`floor(record[A020639(n+2)/3])`
-/

namespace A144769.P7398805909518906068
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 2) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A144769.P7398805909518906068

namespace A144769

/-- `floor(record[A020639(n+2)/3])` -/
def P7398805909518906068.Spec : Prop :=
  ∀ n, P7398805909518906068.a n = A144769 (n + 1)

end A144769

/-! ## A144769.P13103682260168614377

`round(record[A000010(n+1)/3])`
-/

namespace A144769.P13103682260168614377
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A144769.P13103682260168614377

namespace A144769

/-- `round(record[A000010(n+1)/3])` -/
def P13103682260168614377.Spec : Prop :=
  ∀ n, P13103682260168614377.a n = A144769 (n + 1)

end A144769

/-! ## A144769.P16761495938662260474

`A004396(A102781(n+1))`
-/

namespace A144769.P16761495938662260474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A102781 (n + 1)).toNat

end

end A144769.P16761495938662260474

namespace A144769

/-- `A004396(A102781(n+1))` -/
def P16761495938662260474.Spec : Prop :=
  ∀ n, P16761495938662260474.a n = A144769 (n + 1)

end A144769

/-! ## A144769.P7097950283328139639

`A004524(A323703(n+1))`
-/

namespace A144769.P7097950283328139639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A323703 (n + 1)).toNat

end

end A144769.P7097950283328139639

namespace A144769

/-- `A004524(A323703(n+1))` -/
def P7097950283328139639.Spec : Prop :=
  ∀ n, P7097950283328139639.a n = A144769 (n + 1)

end A144769

/-! ## A144769.P3069671543688256014

`floor(record[A014963(n+2)/3])`
-/

namespace A144769.P3069671543688256014
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (n + 2) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A144769.P3069671543688256014

namespace A144769

/-- `floor(record[A014963(n+2)/3])` -/
def P3069671543688256014.Spec : Prop :=
  ∀ n, P3069671543688256014.a n = A144769 (n + 1)

end A144769

/-! ## A144769.P8629712120096159317

`A002264(p?[A080412(n)])`
-/

namespace A144769.P8629712120096159317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A144769.P8629712120096159317

namespace A144769

/-- `A002264(p?[A080412(n)])` -/
def P8629712120096159317.Spec : Prop :=
  ∀ n, P8629712120096159317.a n = A144769 (n + 1)

end A144769

/-! ## A144769.P8609946896557233989

`A002264(A000040(n+1))`
-/

namespace A144769.P8609946896557233989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A000040 (n + 1)).toNat

end

end A144769.P8609946896557233989

namespace A144769

/-- `A002264(A000040(n+1))` -/
def P8609946896557233989.Spec : Prop :=
  ∀ n, P8609946896557233989.a n = A144769 (n + 1)

end A144769

/-! ## A144769.P9979204266137223867

`A002264(A006005(n+1))`
-/

namespace A144769.P9979204266137223867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A006005 (n + 1)).toNat

end

end A144769.P9979204266137223867

namespace A144769

/-- `A002264(A006005(n+1))` -/
def P9979204266137223867.Spec : Prop :=
  ∀ n, P9979204266137223867.a n = A144769 (n + 1)

end A144769

/-! ## A144769.P15072368100247147099

`A151842(A040976(n+1))`
-/

namespace A144769.P15072368100247147099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151842 (A040976 (n + 1)).toNat

end

end A144769.P15072368100247147099

namespace A144769

/-- `A151842(A040976(n+1))` -/
def P15072368100247147099.Spec : Prop :=
  ∀ n, P15072368100247147099.a n = A144769 (n + 1)

end A144769

/-!
# A144771: For n >= 1 terms of A000142 could be expressed as the product of two nonzero integral factors, which have the smallest difference between them (so this is closest pair of integral factors around the square root value of A000142(n) ). The terms of this sequence are the larger factors from the above described pair.

The programs for A144771, there is no canonical definition to state claims against.
-/

/-! ## A144771.P13558624356642952983

`A070172(ceil(cosh(n)))`
-/

namespace A144771.P13558624356642952983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070172 ⌈Real.cosh (n : ℝ)⌉.toNat

end

end A144771.P13558624356642952983

/-! ## A144771.P1678136203459798560

`A070172(round(cosh(n)))`
-/

namespace A144771.P1678136203459798560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070172 (SequenceMachineLib.roundAway (Real.cosh (n : ℝ))).toNat

end

end A144771.P1678136203459798560

/-! ## A144771.P7738850838172159332

`∑[∑{d}[A349061(2*n)+1, #]]`
-/

namespace A144771.P7738850838172159332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349061 (2 * n) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144771.P7738850838172159332

/-! ## A144771.P4537097572450240474

`A070172(A002459(n))`
-/

namespace A144771.P4537097572450240474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070172 (A002459 n).toNat

end

end A144771.P4537097572450240474

/-!
# A144773: 10-fold factorials: Product_{k=0..n-1} (10*k+1).

The programs for A144773, the canonical program `A144773.P3507842800692635383` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144773 has offset 0).

The definition of A144773 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144773.P3507842800692635383

`(10*n-9)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A144773

/-- `(10*n-9)*a(n-1)` -/
def P3507842800692635383.Spec : Prop :=
  ∀ n, P3507842800692635383.a n = A144773 n

theorem P3507842800692635383.correct : P3507842800692635383.Spec := by
  intro n
  simp only [A144773]

end A144773

/-! ## A144773.P13382870844893887722

`∏[a(n-1)+10]` with `a(0)=1, a(1)=1`
-/

namespace A144773.P13382870844893887722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A144773.P13382870844893887722

namespace A144773

/-- `∏[a(n-1)+10]` -/
def P13382870844893887722.Spec : Prop :=
  ∀ n, (P13382870844893887722.a n : ℤ) = A144773 n

end A144773

/-! ## A144773.P3192669545902290314

`A223513(∑[abs(1-n)])`
-/

namespace A144773.P3192669545902290314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223513 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A144773.P3192669545902290314

namespace A144773

/-- `A223513(∑[abs(1-n)])` -/
def P3192669545902290314.Spec : Prop :=
  ∀ n, P3192669545902290314.a n = A144773 n

end A144773

/-! ## A144773.P16490793557935331179

`A045757(floor(acot(n)+n))`
-/

namespace A144773.P16490793557935331179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045757 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A144773.P16490793557935331179

namespace A144773

/-- `A045757(floor(acot(n)+n))` -/
def P16490793557935331179.Spec : Prop :=
  ∀ n, P16490793557935331179.a n = A144773 n

end A144773

/-! ## A144773.P2661180994058810419

`A045757(xor(n, floor(acot(n))))`
-/

namespace A144773.P2661180994058810419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045757 (Int.xor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A144773.P2661180994058810419

namespace A144773

/-- `A045757(xor(n, floor(acot(n))))` -/
def P2661180994058810419.Spec : Prop :=
  ∀ n, P2661180994058810419.a n = A144773 n

end A144773

/-!
# A144774: Number of positive integers k less than n such that rad(k) < rad(n).

The programs for A144774, there is no canonical definition to state claims against.
-/

/-! ## A144774.P8012515134802376983

`A082551(A291250(n))+A007947(n+1)`
-/

namespace A144774.P8012515134802376983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (A291250 n).toNat + A007947 (n + 1)

end

end A144774.P8012515134802376983

/-! ## A144774.P4239003864049482752

`A082551(A291250(n))+A015052(n+1)`
-/

namespace A144774.P4239003864049482752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (A291250 n).toNat + A015052 (n + 1)

end

end A144774.P4239003864049482752

/-! ## A144774.P15918698772554806013

`A088835(n+1)+A082551(A291250(n))`
-/

namespace A144774.P15918698772554806013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088835 (n + 1) + A082551 (A291250 n).toNat

end

end A144774.P15918698772554806013

/-! ## A144774.P6389341208557834240

`A082551(A291250(n))+abs(A062953(n+1))`
-/

namespace A144774.P6389341208557834240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (A291250 n).toNat + |A062953 (n + 1)|

end

end A144774.P6389341208557834240

/-! ## A144774.P11138371967577961115

`n-A048675(A363919(n+1))`
-/

namespace A144774.P11138371967577961115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A048675 (A363919 (n + 1)).toNat

end

end A144774.P11138371967577961115

/-!
# A144775: Define f(n) = 2 * rad(n) if four divides n and rad(n) otherwise: then a(n) = 0 for composite n where f(n) is not less than n and otherwise equals the number of positive integers k less than n for which f(k) < f(n).

The programs for A144775, there is no canonical definition to state claims against.
-/

/-! ## A144775.P17321530971108025248

`xor(1, ceil((n+1)/∏{p}[n+1, (n+1)/#]))%A333142(3*n+1)`
-/

namespace A144775.P17321530971108025248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor 1 ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉) (A333142 (3 * n + 1))

end

end A144775.P17321530971108025248

/-! ## A144775.P13312558877440155005

`A089026(n+1)-A321928(A183104(n+1))`
-/

namespace A144775.P13312558877440155005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1) - A321928 (A183104 (n + 1)).toNat

end

end A144775.P13312558877440155005

/-! ## A144775.P1956508639380731443

`A308828(A072500(n+1))%A134198(n+1)`
-/

namespace A144775.P1956508639380731443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308828 (A072500 (n + 1)).toNat) (A134198 (n + 1))

end

end A144775.P1956508639380731443

/-! ## A144775.P10082586147532991760

`lcm(A091371(n+1), A100995(A187829(n+1)))`
-/

namespace A144775.P10082586147532991760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A091371 (n + 1)) (A100995 (A187829 (n + 1)).toNat)

end

end A144775.P10082586147532991760

/-! ## A144775.P2680335575707676977

`A324848(A152770(n+1)+A000079(n))`
-/

namespace A144775.P2680335575707676977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324848 (A152770 (n + 1) + A000079 n).toNat

end

end A144775.P2680335575707676977

/-!
# A144777: Integers having decimal digital mean equal to zero.

The programs for A144777, the canonical program `A144777.P1651150914799659025` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144777 has offset 1).

The definition of A144777 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 624 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144777.P1651150914799659025

`9*eq[5, A004427(9*n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A144777

/-- `9*eq[5, A004427(9*n)]` -/
def P1651150914799659025.Spec : Prop :=
  ∀ n, (P1651150914799659025.a n : ℤ) = A144777 (n + 1)

theorem P1651150914799659025.correct : P1651150914799659025.Spec := by
  intro n
  simp only [A144777, Nat.add_sub_cancel]

end A144777

/-! ## A144777.P1884332726567643296

`9*(eq[4, A004426(9*(n+1))]+1)`
-/

namespace A144777.P1884332726567643296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (9 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A144777.P1884332726567643296

namespace A144777

/-- `9*(eq[4, A004426(9*(n+1))]+1)` -/
def P1884332726567643296.Spec : Prop :=
  ∀ n, (P1884332726567643296.a n : ℤ) = A144777 (n + 1)

end A144777

/-! ## A144777.P8101798902219078555

`9*eq[4, A004426(A008591(n))]`
-/

namespace A144777.P8101798902219078555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (A008591 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A144777.P8101798902219078555

namespace A144777

/-- `9*eq[4, A004426(A008591(n))]` -/
def P8101798902219078555.Spec : Prop :=
  ∀ n, (P8101798902219078555.a n : ℤ) = A144777 (n + 1)

end A144777

/-! ## A144777.P13190733319616683665

`∩[A178365(n+1), A008591(n)]`
-/

namespace A144777.P13190733319616683665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144777.P13190733319616683665

namespace A144777

/-- `∩[A178365(n+1), A008591(n)]` -/
def P13190733319616683665.Spec : Prop :=
  ∀ n, (P13190733319616683665.a n : ℤ) = A144777 (n + 1)

end A144777

/-! ## A144777.P9455040216685724111

`∩[A261953(2*n), A178365(n+2)]`
-/

namespace A144777.P9455040216685724111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261953 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178365 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144777.P9455040216685724111

namespace A144777

/-- `∩[A261953(2*n), A178365(n+2)]` -/
def P9455040216685724111.Spec : Prop :=
  ∀ n, (P9455040216685724111.a n : ℤ) = A144777 (n + 1)

end A144777

/-!
# A144778: Square array T(n,k) read by antidiagonals upwards. Mobius function interleaved with k-1 zeros in each column. Every second value in the first row is either 1 or -1. Redheffer type matrix.

The programs for A144778, there is no canonical definition to state claims against.
-/

/-! ## A144778.P4699520291094231717

`-(-A143142(n+1))^A051340(n)`
-/

namespace A144778.P4699520291094231717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((-A143142 (n + 1) : ℚ) ^ (A051340 n : ℤ))

end

end A144778.P4699520291094231717

/-! ## A144778.P16797573887232981206

`-(-A143142(n+1))^A175892(n)`
-/

namespace A144778.P16797573887232981206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((-A143142 (n + 1) : ℚ) ^ (A175892 n : ℤ))

end

end A144778.P16797573887232981206

/-! ## A144778.P15697731933030277020

`or(Δ[A057212(n+1)], A143142(n+1))`
-/

namespace A144778.P15697731933030277020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A143142 (n + 1))

end

end A144778.P15697731933030277020

/-! ## A144778.P17498245491920728560

`or(Δ[A201208(n+1)], A143142(n+1))`
-/

namespace A144778.P17498245491920728560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A143142 (n + 1))

end

end A144778.P17498245491920728560

/-! ## A144778.P14601986170905215088

`-(-A143142(n+1))^A050873(n+1)`
-/

namespace A144778.P14601986170905215088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((-A143142 (n + 1) : ℚ) ^ (A050873 (n + 1) : ℤ))

end

end A144778.P14601986170905215088

/-! ## A144778.P683339478125874542

`A062157(A051340(n))*A143142(n+1)`
-/

namespace A144778.P683339478125874542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A051340 n).toNat * A143142 (n + 1)

end

end A144778.P683339478125874542

/-! ## A144778.P11159061780310130812

`or(A004718(A130123(n)), A143142(n+1))`
-/

namespace A144778.P11159061780310130812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004718 (A130123 n).toNat) (A143142 (n + 1))

end

end A144778.P11159061780310130812

/-! ## A144778.P16749168458616017396

`A062157(A050873(n+1))*A143142(n+1)`
-/

namespace A144778.P16749168458616017396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A050873 (n + 1)).toNat * A143142 (n + 1)

end

end A144778.P16749168458616017396

/-! ## A144778.P17503618287953143087

`A143142(n+1)*A309873(A066884(n+1))`
-/

namespace A144778.P17503618287953143087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143142 (n + 1) * A309873 (A066884 (n + 1)).toNat

end

end A144778.P17503618287953143087

/-!
# A144779: Variant of Sylvester's sequence: a(n+1) = a(n)^2 - a(n) + 1, with a(1) = 5.

The programs for A144779, there is no canonical definition to state claims against.
-/

/-! ## A144779.P4211227629390743469

`2*C(a(n-1), 2)+1` with `a(0)=5`
-/

namespace A144779.P4211227629390743469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  2 * Nat.choose (a (n - 1)) 2 + 1

end

end A144779.P4211227629390743469

/-! ## A144779.P9756901370745508650

`ceil((1/2-a(n-1))²)` with `a(0)=5`
-/

namespace A144779.P9756901370745508650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  ⌈((1 : ℚ) / 2 - (a (n - 1) : ℚ)) ^ 2⌉

end

end A144779.P9756901370745508650

/-! ## A144779.P10740677823845935546

`floor((1/2-a(n-1))²)+1` with `a(0)=5`
-/

namespace A144779.P10740677823845935546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  ⌊((1 : ℚ) / 2 - (a (n - 1) : ℚ)) ^ 2⌋ + 1

end

end A144779.P10740677823845935546

/-! ## A144779.P16837514613489587002

`a(n-1)+(1-a(n-1))²` with `a(0)=5`
-/

namespace A144779.P16837514613489587002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + (1 - a (n - 1)) ^ 2

end

end A144779.P16837514613489587002

/-!
# A144780: Variant of Sylvester's sequence: a(n+1) = a(n)^2 - a(n) + 1, with a(1) = 6.

The programs for A144780, there is no canonical definition to state claims against.
-/

/-! ## A144780.P10408842649685445926

`2*C(a(n-1), 2)+1` with `a(0)=6`
-/

namespace A144780.P10408842649685445926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  2 * Nat.choose (a (n - 1)) 2 + 1

end

end A144780.P10408842649685445926

/-! ## A144780.P5659692761025966015

`lcm(2, C(a(n-1), 2))+1` with `a(0)=6`
-/

namespace A144780.P5659692761025966015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  Nat.lcm 2 (Nat.choose (a (n - 1)) 2) + 1

end

end A144780.P5659692761025966015

/-! ## A144780.P15578227699525081487

`ceil((1/2-a(n-1))²)` with `a(0)=6`
-/

namespace A144780.P15578227699525081487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  ⌈((1 : ℚ) / 2 - (a (n - 1) : ℚ)) ^ 2⌉

end

end A144780.P15578227699525081487

/-! ## A144780.P10437520786845626442

`floor((1/2-a(n-1))²)+1` with `a(0)=6`
-/

namespace A144780.P10437520786845626442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  ⌊((1 : ℚ) / 2 - (a (n - 1) : ℚ)) ^ 2⌋ + 1

end

end A144780.P10437520786845626442

/-!
# A144781: Variant of Sylvester's sequence: a(n+1) = a(n)^2 - a(n) + 1, with a(1) = 8.

The programs for A144781, there is no canonical definition to state claims against.
-/

/-! ## A144781.P2956433084527222341

`2*C(a(n-1), 2)+1` with `a(0)=8`
-/

namespace A144781.P2956433084527222341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  2 * Nat.choose (a (n - 1)) 2 + 1

end

end A144781.P2956433084527222341

/-! ## A144781.P16874974190971286451

`ceil((1/2-a(n-1))²)` with `a(0)=8`
-/

namespace A144781.P16874974190971286451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  ⌈((1 : ℚ) / 2 - (a (n - 1) : ℚ)) ^ 2⌉

end

end A144781.P16874974190971286451

/-! ## A144781.P13476761493691820292

`floor((1/2-a(n-1))²)+1` with `a(0)=8`
-/

namespace A144781.P13476761493691820292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  ⌊((1 : ℚ) / 2 - (a (n - 1) : ℚ)) ^ 2⌋ + 1

end

end A144781.P13476761493691820292

/-!
# A144782: Variant of Sylvester's sequence: a(n+1) = a(n)^2 - a(n) + 1, with a(1) = 9.

The programs for A144782, there is no canonical definition to state claims against.
-/

/-! ## A144782.P2237667958632750374

`2*C(a(n-1), 2)+1` with `a(0)=9`
-/

namespace A144782.P2237667958632750374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  2 * Nat.choose (a (n - 1)) 2 + 1

end

end A144782.P2237667958632750374

/-! ## A144782.P13209590381061593263

`ceil((1/2-a(n-1))²)` with `a(0)=9`
-/

namespace A144782.P13209590381061593263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  ⌈((1 : ℚ) / 2 - (a (n - 1) : ℚ)) ^ 2⌉

end

end A144782.P13209590381061593263

/-! ## A144782.P6892350395216361756

`floor((1/2-a(n-1))²)+1` with `a(0)=9`
-/

namespace A144782.P6892350395216361756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  ⌊((1 : ℚ) / 2 - (a (n - 1) : ℚ)) ^ 2⌋ + 1

end

end A144782.P6892350395216361756

/-!
# A144783: Variant of Sylvester's sequence: a(n+1) = a(n)^2 - a(n) + 1, with a(1) = 10.

The programs for A144783, there is no canonical definition to state claims against.
-/

/-! ## A144783.P3511060787053270779

`2*C(a(n-1), 2)+1` with `a(0)=10`
-/

namespace A144783.P3511060787053270779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10] fun n a =>
  2 * Nat.choose (a (n - 1)) 2 + 1

end

end A144783.P3511060787053270779

/-! ## A144783.P8774314372476991174

`lcm(2, C(a(n-1), 2))+1` with `a(0)=10`
-/

namespace A144783.P8774314372476991174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10] fun n a =>
  Nat.lcm 2 (Nat.choose (a (n - 1)) 2) + 1

end

end A144783.P8774314372476991174

/-! ## A144783.P16088880872925824296

`ceil((1/2-a(n-1))²)` with `a(0)=10`
-/

namespace A144783.P16088880872925824296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  ⌈((1 : ℚ) / 2 - (a (n - 1) : ℚ)) ^ 2⌉

end

end A144783.P16088880872925824296

/-!
# A144784: 

The programs for A144784, there is no canonical definition to state claims against.
-/

/-! ## A144784.P15252129668784578280

`2*C(a(n-1), 2)+1` with `a(0)=11`
-/

namespace A144784.P15252129668784578280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [11] fun n a =>
  2 * Nat.choose (a (n - 1)) 2 + 1

end

end A144784.P15252129668784578280

/-! ## A144784.P13876709051264213574

`lcm(2, C(a(n-1), 2))+1` with `a(0)=11`
-/

namespace A144784.P13876709051264213574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [11] fun n a =>
  Nat.lcm 2 (Nat.choose (a (n - 1)) 2) + 1

end

end A144784.P13876709051264213574

/-! ## A144784.P3381229217101217093

`ceil((1/2-a(n-1))²)` with `a(0)=11`
-/

namespace A144784.P3381229217101217093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  ⌈((1 : ℚ) / 2 - (a (n - 1) : ℚ)) ^ 2⌉

end

end A144784.P3381229217101217093

/-!
# A144785: 

The programs for A144785, there is no canonical definition to state claims against.
-/

/-! ## A144785.P17734312370056449455

`a(n-1)+(1-a(n-1))²` with `a(0)=12`
-/

namespace A144785.P17734312370056449455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12] fun n a =>
  a (n - 1) + (1 - a (n - 1)) ^ 2

end

end A144785.P17734312370056449455

/-! ## A144785.P8337691309564547513

`(a(n-1)-1)*a(n-1)+1` with `a(0)=12`
-/

namespace A144785.P8337691309564547513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12] fun n a =>
  (a (n - 1) - 1) * a (n - 1) + 1

end

end A144785.P8337691309564547513

/-! ## A144785.P9689747648247453396

`1-(1-a(n-1))*a(n-1)` with `a(0)=12`
-/

namespace A144785.P9689747648247453396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12] fun n a =>
  1 - (1 - a (n - 1)) * a (n - 1)

end

end A144785.P9689747648247453396

/-!
# A144786: If n is an oblong number A002378, then a(n)=a(j) where j is the number of oblong numbers in (0,n], otherwise a(n)=n.

The programs for A144786, there is no canonical definition to state claims against.
-/

/-! ## A144786.P2822388321638056741

`gcd(n+1, A035933(n*A005369(n+1)))`
-/

namespace A144786.P2822388321638056741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A035933 ((n : ℤ) * A005369 (n + 1)).toNat)

end

end A144786.P2822388321638056741

/-! ## A144786.P17067965217958770003

`A345708(n+1)+A185246(A035942(3*n))`
-/

namespace A144786.P17067965217958770003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345708 (n + 1) + A185246 (A035942 (3 * n)).toNat

end

end A144786.P17067965217958770003

/-! ## A144786.P7808666584228785911

`A345708(n+1)%A028805(3*n+2)`
-/

namespace A144786.P7808666584228785911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345708 (n + 1)) (A028805 (3 * n + 2))

end

end A144786.P7808666584228785911

/-! ## A144786.P16356981662993705761

`A345708(n+1)%A100846(A009963(n))`
-/

namespace A144786.P16356981662993705761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345708 (n + 1)) (A100846 (A009963 n).toNat)

end

end A144786.P16356981662993705761

/-! ## A144786.P599856206153349458

`A345708(n+1)+A129251(A035790(n+1))`
-/

namespace A144786.P599856206153349458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345708 (n + 1) + A129251 (A035790 (n + 1)).toNat

end

end A144786.P599856206153349458

/-!
# A144787: 

The programs for A144787, there is no canonical definition to state claims against.
-/

/-! ## A144787.P16135291376732379877

`a(n-1)^3+1-a(n-1)` with `a(0)=2`
-/

namespace A144787.P16135291376732379877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) ^ 3 + (1 - a (n - 1))

end

end A144787.P16135291376732379877

/-!
# A144788: 

The programs for A144788, there is no canonical definition to state claims against.
-/

/-! ## A144788.P11737389883213809284

`a(n-1)^3+1-a(n-1)` with `a(0)=3`
-/

namespace A144788.P11737389883213809284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) ^ 3 + (1 - a (n - 1))

end

end A144788.P11737389883213809284

/-!
# A144789: Consider the runs of 0's in the binary representation of n, each of these runs being on the edge of the binary representation n and/or being bounded by 1's. a(n) = the length of the shortest such run (with positive length) of 0's in binary n. a(n) = 0 if there are no runs of 0's in binary n.

The programs for A144789, the canonical program `A144789.P13799208252513075791` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144789 has offset 1).

The definition of A144789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144789.P14582140682970026248

`val(A161822(n+1), 2)`
-/

namespace A144789.P14582140682970026248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A161822 (n + 1)).toNat 2

end

end A144789.P14582140682970026248

namespace A144789

/-- `val(A161822(n+1), 2)` -/
def P14582140682970026248.Spec : Prop :=
  ∀ n, (P14582140682970026248.a n : ℤ) = A144789 (n + 1)

end A144789

/-! ## A144789.P8251720628274072035

`A007814(A161822(n+1))`
-/

namespace A144789.P8251720628274072035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A161822 (n + 1)).toNat

end

end A144789.P8251720628274072035

namespace A144789

/-- `A007814(A161822(n+1))` -/
def P8251720628274072035.Spec : Prop :=
  ∀ n, P8251720628274072035.a n = A144789 (n + 1)

end A144789

/-! ## A144789.P8141057866149474820

`A279209(A233569(n+1))`
-/

namespace A144789.P8141057866149474820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279209 (A233569 (n + 1)).toNat

end

end A144789.P8141057866149474820

namespace A144789

/-- `A279209(A233569(n+1))` -/
def P8141057866149474820.Spec : Prop :=
  ∀ n, P8141057866149474820.a n = A144789 (n + 1)

end A144789

/-! ## A144789.P5085679016194818582

`A244415(A161822(n+1)²)`
-/

namespace A144789.P5085679016194818582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244415 (A161822 (n + 1) ^ 2).toNat

end

end A144789.P5085679016194818582

namespace A144789

/-- `A244415(A161822(n+1)²)` -/
def P5085679016194818582.Spec : Prop :=
  ∀ n, P5085679016194818582.a n = A144789 (n + 1)

end A144789

/-! ## A144789.P9328865548525390135

`A285099(A161822(n+1)+1)`
-/

namespace A144789.P9328865548525390135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285099 (A161822 (n + 1) + 1).toNat

end

end A144789.P9328865548525390135

namespace A144789

/-- `A285099(A161822(n+1)+1)` -/
def P9328865548525390135.Spec : Prop :=
  ∀ n, P9328865548525390135.a n = A144789 (n + 1)

end A144789

/-! ## A144789.P2721326316970068914

`A089309(A161822(n+1)-1)`
-/

namespace A144789.P2721326316970068914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A161822 (n + 1) - 1).toNat

end

end A144789.P2721326316970068914

namespace A144789

/-- `A089309(A161822(n+1)-1)` -/
def P2721326316970068914.Spec : Prop :=
  ∀ n, P2721326316970068914.a n = A144789 (n + 1)

end A144789

/-! ## A144789.P1670109487643814959

`A272604(A161822(n+1)-1)`
-/

namespace A144789.P1670109487643814959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272604 (A161822 (n + 1) - 1).toNat

end

end A144789.P1670109487643814959

namespace A144789

/-- `A272604(A161822(n+1)-1)` -/
def P1670109487643814959.Spec : Prop :=
  ∀ n, P1670109487643814959.a n = A144789 (n + 1)

end A144789

/-! ## A144789.P13799208252513075791

`A297173(A005940(2*(n+2)))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A144789

/-- `A297173(A005940(2*(n+2)))` -/
def P13799208252513075791.Spec : Prop :=
  ∀ n, P13799208252513075791.a n = A144789 (n + 1)

theorem P13799208252513075791.correct : P13799208252513075791.Spec := by
  intro n
  simp only [A144789, Nat.add_sub_cancel]

end A144789

/-! ## A144789.P17605114322153363955

`A089263(6*A161822(n+1))`
-/

namespace A144789.P17605114322153363955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (6 * A161822 (n + 1)).toNat

end

end A144789.P17605114322153363955

namespace A144789

/-- `A089263(6*A161822(n+1))` -/
def P17605114322153363955.Spec : Prop :=
  ∀ n, P17605114322153363955.a n = A144789 (n + 1)

end A144789

/-! ## A144789.P9816663791653955693

`A297173(lcm(2, A005940(n+2)))`
-/

namespace A144789.P9816663791653955693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297173 (Int.lcm 2 (A005940 (n + 2)))

end

end A144789.P9816663791653955693

namespace A144789

/-- `A297173(lcm(2, A005940(n+2)))` -/
def P9816663791653955693.Spec : Prop :=
  ∀ n, P9816663791653955693.a n = A144789 (n + 1)

end A144789

/-! ## A144789.P15480854589818588501

`A051903(2*A161822(n+1))-1`
-/

namespace A144789.P15480854589818588501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (2 * A161822 (n + 1)).toNat - 1

end

end A144789.P15480854589818588501

namespace A144789

/-- `A051903(2*A161822(n+1))-1` -/
def P15480854589818588501.Spec : Prop :=
  ∀ n, P15480854589818588501.a n = A144789 (n + 1)

end A144789

/-! ## A144789.P11830796793333282561

`A067029(A161822(n+1)%(∑[n+5]+6))`
-/

namespace A144789.P11830796793333282561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (Int.tmod (A161822 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j + 6 : ℕ) : ℤ)).toNat

end

end A144789.P11830796793333282561

namespace A144789

/-- `A067029(A161822(n+1)%(∑[n+5]+6))` -/
def P11830796793333282561.Spec : Prop :=
  ∀ n, P11830796793333282561.a n = A144789 (n + 1)

end A144789

/-! ## A144789.P475160899736877316

`A001222(gcd(A137688(n), A161822(n+1)))`
-/

namespace A144789.P475160899736877316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A137688 n) (A161822 (n + 1)))

end

end A144789.P475160899736877316

namespace A144789

/-- `A001222(gcd(A137688(n), A161822(n+1)))` -/
def P475160899736877316.Spec : Prop :=
  ∀ n, P475160899736877316.a n = A144789 (n + 1)

end A144789

/-! ## A144789.P15872607801526244618

`A089263(A161822(n+1)²)-A089263(A161822(n+1))`
-/

namespace A144789.P15872607801526244618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (A161822 (n + 1) ^ 2).toNat - A089263 (A161822 (n + 1)).toNat

end

end A144789.P15872607801526244618

namespace A144789

/-- `A089263(A161822(n+1)²)-A089263(A161822(n+1))` -/
def P15872607801526244618.Spec : Prop :=
  ∀ n, P15872607801526244618.a n = A144789 (n + 1)

end A144789

/-!
# A144790: Consider the runs of 1's in the binary representation of n, each of these runs being on the edge of the binary representation n and/or being bounded by 0's. a(n) = the length of the shortest such run of 1's in binary n.

The programs for A144790, the canonical program `A144790.P8049637417167921042` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144790 has offset 1).

The definition of A144790 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5460 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144790.P13845533116203831316

`A090996(A161820(n+1))`
-/

namespace A144790.P13845533116203831316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A161820 (n + 1)).toNat

end

end A144790.P13845533116203831316

namespace A144790

/-- `A090996(A161820(n+1))` -/
def P13845533116203831316.Spec : Prop :=
  ∀ n, P13845533116203831316.a n = A144790 (n + 1)

end A144790

/-! ## A144790.P5610755685628959747

`A055396(A246029(n+1))`
-/

namespace A144790.P5610755685628959747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A246029 (n + 1)).toNat

end

end A144790.P5610755685628959747

namespace A144790

/-- `A055396(A246029(n+1))` -/
def P5610755685628959747.Spec : Prop :=
  ∀ n, P5610755685628959747.a n = A144790 (n + 1)

end A144790

/-! ## A144790.P8049637417167921042

`A051904(A278222(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A144790

/-- `A051904(A278222(n+1))` -/
def P8049637417167921042.Spec : Prop :=
  ∀ n, P8049637417167921042.a n = A144790 (n + 1)

theorem P8049637417167921042.correct : P8049637417167921042.Spec := by
  intro n
  simp only [A144790, Nat.add_sub_cancel]

end A144790

/-! ## A144790.P11973370740919252471

`A051904(A005940(n+2))`
-/

namespace A144790.P11973370740919252471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A005940 (n + 2)).toNat

end

end A144790.P11973370740919252471

namespace A144790

/-- `A051904(A005940(n+2))` -/
def P11973370740919252471.Spec : Prop :=
  ∀ n, P11973370740919252471.a n = A144790 (n + 1)

end A144790

/-! ## A144790.P14447438762507116024

`A051904(A332815(n+1))`
-/

namespace A144790.P14447438762507116024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A332815 (n + 1)).toNat

end

end A144790.P14447438762507116024

namespace A144790

/-- `A051904(A332815(n+1))` -/
def P14447438762507116024.Spec : Prop :=
  ∀ n, P14447438762507116024.a n = A144790 (n + 1)

end A144790

/-! ## A144790.P12696114629771048664

`A071178(A278525(A253565(n+1)))`
-/

namespace A144790.P12696114629771048664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (A278525 (A253565 (n + 1)).toNat).toNat

end

end A144790.P12696114629771048664

namespace A144790

/-- `A071178(A278525(A253565(n+1)))` -/
def P12696114629771048664.Spec : Prop :=
  ∀ n, P12696114629771048664.a n = A144790 (n + 1)

end A144790

/-! ## A144790.P8179132911436353664

`A175597(A175945(n+1))`
-/

namespace A144790.P8179132911436353664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175597 (A175945 (n + 1)).toNat

end

end A144790.P8179132911436353664

namespace A144790

/-- `A175597(A175945(n+1))` -/
def P8179132911436353664.Spec : Prop :=
  ∀ n, P8179132911436353664.a n = A144790 (n + 1)

end A144790

/-! ## A144790.P7044902816405335951

`A051904(A374717(n+2))`
-/

namespace A144790.P7044902816405335951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A374717 (n + 2)).toNat

end

end A144790.P7044902816405335951

namespace A144790

/-- `A051904(A374717(n+2))` -/
def P7044902816405335951.Spec : Prop :=
  ∀ n, P7044902816405335951.a n = A144790 (n + 1)

end A144790

/-! ## A144790.P68285917538934826

`A306922(A385887(n+1))`
-/

namespace A144790.P68285917538934826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306922 (A385887 (n + 1)).toNat

end

end A144790.P68285917538934826

namespace A144790

/-- `A306922(A385887(n+1))` -/
def P68285917538934826.Spec : Prop :=
  ∀ n, P68285917538934826.a n = A144790 (n + 1)

end A144790

/-! ## A144790.P1316030278721431267

`A144789(A010078(n+2))`
-/

namespace A144790.P1316030278721431267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144789 (A010078 (n + 2)).toNat

end

end A144790.P1316030278721431267

namespace A144790

/-- `A144789(A010078(n+2))` -/
def P1316030278721431267.Spec : Prop :=
  ∀ n, P1316030278721431267.a n = A144790 (n + 1)

end A144790

/-!
# A144791: Euler transform of A141199.

The programs for A144791, there is no canonical definition to state claims against.
-/

/-! ## A144791.P10872238599313665283

`A018361(n+1)+comp[A231343(n+1)]`
-/

namespace A144791.P10872238599313665283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231343 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018361 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A144791.P10872238599313665283

/-! ## A144791.P5594959965655056205

`A169743(A274059(n))+A067850(n)`
-/

namespace A144791.P5594959965655056205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169743 (A274059 n).toNat + A067850 n

end

end A144791.P5594959965655056205

/-!
# A144792: EXP transform of A140585.

The programs for A144792, there is no canonical definition to state claims against.
-/

/-! ## A144792.P6026438310318890319

`A008279(n)*A111273(A087761(n))`
-/

namespace A144792.P6026438310318890319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A111273 (A087761 n).toNat

end

end A144792.P6026438310318890319

/-! ## A144792.P16206805273618174532

`A160102(A068604(n+1)*A306037(n))`
-/

namespace A144792.P16206805273618174532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (A068604 (n + 1) * A306037 n).toNat

end

end A144792.P16206805273618174532

/-!
# A144793: Consider the runs of 0's in the binary representation of n, each of these runs being on the edge of the binary representation n and/or being bounded by 1's. Consider also the runs of 1's in the binary representation of n, each of these runs being on the edge of the binary representation n and/or being bounded by 0's. A positive integer n is included in this sequence if the length of the shortest such run of 0's in binary n equals the length of the shortest such run of 1's in binary n.

The programs for A144793, there is no canonical definition to state claims against.
-/

/-! ## A144793.P10240489826191865613

`eq[A007814(A161822(n+1)), A144790(n+1)]+1`
-/

namespace A144793.P10240489826191865613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A161822 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144790 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A144793.P10240489826191865613

/-! ## A144793.P4807098692969110133

`eq[A144790(n+1), A285099(A161822(n+1)+1)]+1`
-/

namespace A144793.P4807098692969110133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285099 (A161822 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A144793.P4807098692969110133

/-! ## A144793.P2167219241149891823

`eq[A089309(A161822(n+1)-1), A144790(n+1)]+1`
-/

namespace A144793.P2167219241149891823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A161822 (n + 1) - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144790 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A144793.P2167219241149891823

/-! ## A144793.P13049263296378588597

`eq[A089263(6*A161822(n+1)), A144790(n+1)]+1`
-/

namespace A144793.P13049263296378588597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (6 * A161822 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144790 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A144793.P13049263296378588597

/-! ## A144793.P12186252104405743236

`eq[A144789(n+1), A144790(n+1)]+1`
-/

namespace A144793.P12186252104405743236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144789 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144790 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A144793.P12186252104405743236

/-! ## A144793.P2162470167604785102

`A020725(eq[A144789(n+1), A144790(n+1)])`
-/

namespace A144793.P2162470167604785102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144789 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A144793.P2162470167604785102

/-! ## A144793.P6557286948132513541

`eq[A090996(A161820(n+1)), A144789(n+1)]+1`
-/

namespace A144793.P6557286948132513541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A161820 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144789 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A144793.P6557286948132513541

/-! ## A144793.P17015698611240933767

`eq[A144789(n+1), A175597(A175945(n+1))]+1`
-/

namespace A144793.P17015698611240933767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144789 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175597 (A175945 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A144793.P17015698611240933767

/-! ## A144793.P5437842356223615313

`A020725(eq[A245536(n+1)+1, A144789(n+1)])`
-/

namespace A144793.P5437842356223615313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245536 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A144793.P5437842356223615313

/-!
# A144794: A positive integer n is included if every 0 in binary n is next to at least one other 0.

The programs for A144794, the canonical program `A144794.P15433393553894995957` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144794 has offset 1).

The definition of A144794 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4394 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144794.P15433393553894995957

`eq[A036987(n), A290260(2*n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A144794

/-- `eq[A036987(n), A290260(2*n+1)]` -/
def P15433393553894995957.Spec : Prop :=
  ∀ n, (P15433393553894995957.a n : ℤ) = A144794 (n + 1)

theorem P15433393553894995957.correct : P15433393553894995957.Spec := by
  intro n
  simp only [A144794, Nat.add_sub_cancel]

end A144794

/-! ## A144794.P9745982596575149969

`∩[A004753(n+1), A175054(n+1)]`
-/

namespace A144794.P9745982596575149969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144794.P9745982596575149969

namespace A144794

/-- `∩[A004753(n+1), A175054(n+1)]` -/
def P9745982596575149969.Spec : Prop :=
  ∀ n, (P9745982596575149969.a n : ℤ) = A144794 (n + 1)

end A144794

/-! ## A144794.P3735590913415234140

`∩[A175054(n+1), A247875(n+1)]`
-/

namespace A144794.P3735590913415234140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144794.P3735590913415234140

namespace A144794

/-- `∩[A175054(n+1), A247875(n+1)]` -/
def P3735590913415234140.Spec : Prop :=
  ∀ n, (P3735590913415234140.a n : ℤ) = A144794 (n + 1)

end A144794

/-! ## A144794.P3014968177477305596

`∩[A158582(n+1), A175054(n+1)]`
-/

namespace A144794.P3014968177477305596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158582 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144794.P3014968177477305596

namespace A144794

/-- `∩[A158582(n+1), A175054(n+1)]` -/
def P3014968177477305596.Spec : Prop :=
  ∀ n, (P3014968177477305596.a n : ℤ) = A144794 (n + 1)

end A144794

/-! ## A144794.P14737403312503702261

`∩[A062289(n+1), A175054(n+1)]`
-/

namespace A144794.P14737403312503702261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144794.P14737403312503702261

namespace A144794

/-- `∩[A062289(n+1), A175054(n+1)]` -/
def P14737403312503702261.Spec : Prop :=
  ∀ n, (P14737403312503702261.a n : ℤ) = A144794 (n + 1)

end A144794

/-! ## A144794.P13637822843832871911

`filter[A175054(n+1), A043545(#)]`
-/

namespace A144794.P13637822843832871911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A144794.P13637822843832871911

namespace A144794

/-- `filter[A175054(n+1), A043545(#)]` -/
def P13637822843832871911.Spec : Prop :=
  ∀ n, P13637822843832871911.a n = A144794 (n + 1)

end A144794

/-! ## A144794.P6939313885370528924

`eq[1, A056594(A161822(n+1))]+1`
-/

namespace A144794.P6939313885370528924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A161822 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A144794.P6939313885370528924

namespace A144794

/-- `eq[1, A056594(A161822(n+1))]+1` -/
def P6939313885370528924.Spec : Prop :=
  ∀ n, (P6939313885370528924.a n : ℤ) = A144794 (n + 1)

end A144794

/-! ## A144794.P9280583748016886363

`eq[A290260(A005408(n))², A036987(n)]`
-/

namespace A144794.P9280583748016886363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290260 (A005408 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144794.P9280583748016886363

namespace A144794

/-- `eq[A290260(A005408(n))², A036987(n)]` -/
def P9280583748016886363.Spec : Prop :=
  ∀ n, (P9280583748016886363.a n : ℤ) = A144794 (n + 1)

end A144794

/-! ## A144794.P843900823047329044

`filter[A175054(n+1), A267442(#)]`
-/

namespace A144794.P843900823047329044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267442 (f1 j).toNat = 1) n)

end

end A144794.P843900823047329044

namespace A144794

/-- `filter[A175054(n+1), A267442(#)]` -/
def P843900823047329044.Spec : Prop :=
  ∀ n, P843900823047329044.a n = A144794 (n + 1)

end A144794

/-! ## A144794.P17877835595168178800

`eq[A000035(A068068(n+1)), A056979(2*n+1)]`
-/

namespace A144794.P17877835595168178800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A068068 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056979 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144794.P17877835595168178800

namespace A144794

/-- `eq[A000035(A068068(n+1)), A056979(2*n+1)]` -/
def P17877835595168178800.Spec : Prop :=
  ∀ n, (P17877835595168178800.a n : ℤ) = A144794 (n + 1)

end A144794

/-! ## A144794.P9570381095249032685

`lt[A080079(2*(n+1))*A337375(2*n+1), A080079(2*n+1)]`
-/

namespace A144794.P9570381095249032685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (2 * (n + 1)) * A337375 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A144794.P9570381095249032685

namespace A144794

/-- `lt[A080079(2*(n+1))*A337375(2*n+1), A080079(2*n+1)]` -/
def P9570381095249032685.Spec : Prop :=
  ∀ n, (P9570381095249032685.a n : ℤ) = A144794 (n + 1)

end A144794

/-! ## A144794.P586103293054517207

`lt[1, A279209(A233569(n))]`
-/

namespace A144794.P586103293054517207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279209 (A233569 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A144794.P586103293054517207

namespace A144794

/-- `lt[1, A279209(A233569(n))]` -/
def P586103293054517207.Spec : Prop :=
  ∀ n, (P586103293054517207.a n : ℤ) = A144794 (n + 1)

end A144794

/-! ## A144794.P15047467510126583984

`eq[5, A261461(A004767(n))]`
-/

namespace A144794.P15047467510126583984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261461 (A004767 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A144794.P15047467510126583984

namespace A144794

/-- `eq[5, A261461(A004767(n))]` -/
def P15047467510126583984.Spec : Prop :=
  ∀ n, (P15047467510126583984.a n : ℤ) = A144794 (n + 1)

end A144794

/-! ## A144794.P5873447495102866970

`eq[5, A261461(A004771(n))]`
-/

namespace A144794.P5873447495102866970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261461 (A004771 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A144794.P5873447495102866970

namespace A144794

/-- `eq[5, A261461(A004771(n))]` -/
def P5873447495102866970.Spec : Prop :=
  ∀ n, (P5873447495102866970.a n : ℤ) = A144794 (n + 1)

end A144794

/-! ## A144794.P15051291925536034514

`eq[5, A261461(A017137(n))]`
-/

namespace A144794.P15051291925536034514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261461 (A017137 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A144794.P15051291925536034514

namespace A144794

/-- `eq[5, A261461(A017137(n))]` -/
def P15051291925536034514.Spec : Prop :=
  ∀ n, (P15051291925536034514.a n : ℤ) = A144794 (n + 1)

end A144794

/-! ## A144794.P13365058703102093341

`filter[A175054(n+1), A164056(#)]`
-/

namespace A144794.P13365058703102093341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164056 (f1 j).toNat = 1) n)

end

end A144794.P13365058703102093341

namespace A144794

/-- `filter[A175054(n+1), A164056(#)]` -/
def P13365058703102093341.Spec : Prop :=
  ∀ n, P13365058703102093341.a n = A144794 (n + 1)

end A144794

/-! ## A144794.P264098980070116720

`eq[5, A261461(A125169(n))]`
-/

namespace A144794.P264098980070116720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261461 (A125169 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A144794.P264098980070116720

namespace A144794

/-- `eq[5, A261461(A125169(n))]` -/
def P264098980070116720.Spec : Prop :=
  ∀ n, (P264098980070116720.a n : ℤ) = A144794 (n + 1)

end A144794

/-!
# A144795: A positive integer n is included if every 1 in binary n is next to at least one other 1.

The programs for A144795, the canonical program `A144795.P9662738190861548983` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144795 has offset 1).

The definition of A144795 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2439 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144795.P477083892696466420

`A175048(A175059(n+1))`
-/

namespace A144795.P477083892696466420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175048 (A175059 (n + 1)).toNat

end

end A144795.P477083892696466420

namespace A144795

/-- `A175048(A175059(n+1))` -/
def P477083892696466420.Spec : Prop :=
  ∀ n, P477083892696466420.a n = A144795 (n + 1)

end A144795

/-! ## A144795.P9662738190861548983

`A163617(A004742(n+2))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A144795

/-- `A163617(A004742(n+2))` -/
def P9662738190861548983.Spec : Prop :=
  ∀ n, P9662738190861548983.a n = A144795 (n + 1)

theorem P9662738190861548983.correct : P9662738190861548983.Spec := by
  intro n
  simp only [A144795, Nat.add_sub_cancel]

end A144795

/-! ## A144795.P4365184281828408486

`lt[n*A277937(n), n]`
-/

namespace A144795.P4365184281828408486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A277937 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A144795.P4365184281828408486

namespace A144795

/-- `lt[n*A277937(n), n]` -/
def P4365184281828408486.Spec : Prop :=
  ∀ n, (P4365184281828408486.a n : ℤ) = A144795 (n + 1)

end A144795

/-! ## A144795.P9973539234957417489

`eq[A000007(n), A277937(n)]`
-/

namespace A144795.P9973539234957417489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144795.P9973539234957417489

namespace A144795

/-- `eq[A000007(n), A277937(n)]` -/
def P9973539234957417489.Spec : Prop :=
  ∀ n, (P9973539234957417489.a n : ℤ) = A144795 (n + 1)

end A144795

/-! ## A144795.P12879692004333086658

`eq[A000038(n), A277937(n)]`
-/

namespace A144795.P12879692004333086658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144795.P12879692004333086658

namespace A144795

/-- `eq[A000038(n), A277937(n)]` -/
def P12879692004333086658.Spec : Prop :=
  ∀ n, (P12879692004333086658.a n : ℤ) = A144795 (n + 1)

end A144795

/-! ## A144795.P11491096462893829287

`eq[A130706(n), A277937(n)]`
-/

namespace A144795.P11491096462893829287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144795.P11491096462893829287

namespace A144795

/-- `eq[A130706(n), A277937(n)]` -/
def P11491096462893829287.Spec : Prop :=
  ∀ n, (P11491096462893829287.a n : ℤ) = A144795 (n + 1)

end A144795

/-! ## A144795.P9910764929795338197

`eq[A132971(n), A277937(n)]`
-/

namespace A144795.P9910764929795338197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132971 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144795.P9910764929795338197

namespace A144795

/-- `eq[A132971(n), A277937(n)]` -/
def P9910764929795338197.Spec : Prop :=
  ∀ n, (P9910764929795338197.a n : ℤ) = A144795 (n + 1)

end A144795

/-! ## A144795.P15004165763207382611

`eq[A151665(n), A277937(n)]`
-/

namespace A144795.P15004165763207382611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151665 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144795.P15004165763207382611

namespace A144795

/-- `eq[A151665(n), A277937(n)]` -/
def P15004165763207382611.Spec : Prop :=
  ∀ n, (P15004165763207382611.a n : ℤ) = A144795 (n + 1)

end A144795

/-! ## A144795.P17533157357112394334

`eq[A151669(n), A277937(n)]`
-/

namespace A144795.P17533157357112394334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151669 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144795.P17533157357112394334

namespace A144795

/-- `eq[A151669(n), A277937(n)]` -/
def P17533157357112394334.Spec : Prop :=
  ∀ n, (P17533157357112394334.a n : ℤ) = A144795 (n + 1)

end A144795

/-! ## A144795.P1615926769627161875

`eq[A151673(n), A277937(n)]`
-/

namespace A144795.P1615926769627161875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151673 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144795.P1615926769627161875

namespace A144795

/-- `eq[A151673(n), A277937(n)]` -/
def P1615926769627161875.Spec : Prop :=
  ∀ n, (P1615926769627161875.a n : ℤ) = A144795 (n + 1)

end A144795

/-! ## A144795.P14974937517083475109

`eq[A166926(n), A277937(n)]`
-/

namespace A144795.P14974937517083475109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166926 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144795.P14974937517083475109

namespace A144795

/-- `eq[A166926(n), A277937(n)]` -/
def P14974937517083475109.Spec : Prop :=
  ∀ n, (P14974937517083475109.a n : ℤ) = A144795 (n + 1)

end A144795

/-! ## A144795.P10588519001263758389

`eq[A167891(n), A277937(n)]`
-/

namespace A144795.P10588519001263758389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167891 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144795.P10588519001263758389

namespace A144795

/-- `eq[A167891(n), A277937(n)]` -/
def P10588519001263758389.Spec : Prop :=
  ∀ n, (P10588519001263758389.a n : ℤ) = A144795 (n + 1)

end A144795

/-! ## A144795.P1661698744743570274

`eq[A169585(n), A277937(n)]`
-/

namespace A144795.P1661698744743570274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144795.P1661698744743570274

namespace A144795

/-- `eq[A169585(n), A277937(n)]` -/
def P1661698744743570274.Spec : Prop :=
  ∀ n, (P1661698744743570274.a n : ℤ) = A144795 (n + 1)

end A144795

/-! ## A144795.P12847183192690440939

`eq[A175372(n), A277937(n)]`
-/

namespace A144795.P12847183192690440939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175372 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144795.P12847183192690440939

namespace A144795

/-- `eq[A175372(n), A277937(n)]` -/
def P12847183192690440939.Spec : Prop :=
  ∀ n, (P12847183192690440939.a n : ℤ) = A144795 (n + 1)

end A144795

/-! ## A144795.P17765526502924470035

`eq[A208274(n), A277937(n)]`
-/

namespace A144795.P17765526502924470035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208274 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144795.P17765526502924470035

namespace A144795

/-- `eq[A208274(n), A277937(n)]` -/
def P17765526502924470035.Spec : Prop :=
  ∀ n, (P17765526502924470035.a n : ℤ) = A144795 (n + 1)

end A144795

/-! ## A144795.P4720810010982787829

`eq[A208604(n), A277937(n)]`
-/

namespace A144795.P4720810010982787829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208604 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144795.P4720810010982787829

namespace A144795

/-- `eq[A208604(n), A277937(n)]` -/
def P4720810010982787829.Spec : Prop :=
  ∀ n, (P4720810010982787829.a n : ℤ) = A144795 (n + 1)

end A144795

/-! ## A144795.P8408609992939050047

`eq[A004018(n)², A277937(n)]`
-/

namespace A144795.P8408609992939050047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144795.P8408609992939050047

namespace A144795

/-- `eq[A004018(n)², A277937(n)]` -/
def P8408609992939050047.Spec : Prop :=
  ∀ n, (P8408609992939050047.a n : ℤ) = A144795 (n + 1)

end A144795

/-! ## A144795.P6332803388771300816

`eq[A104794(n)², A277937(n)]`
-/

namespace A144795.P6332803388771300816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104794 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144795.P6332803388771300816

namespace A144795

/-- `eq[A104794(n)², A277937(n)]` -/
def P6332803388771300816.Spec : Prop :=
  ∀ n, (P6332803388771300816.a n : ℤ) = A144795 (n + 1)

end A144795

/-! ## A144795.P4996990808027131213

`eq[A099890(n), A277937(n)]`
-/

namespace A144795.P4996990808027131213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099890 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144795.P4996990808027131213

namespace A144795

/-- `eq[A099890(n), A277937(n)]` -/
def P4996990808027131213.Spec : Prop :=
  ∀ n, (P4996990808027131213.a n : ℤ) = A144795 (n + 1)

end A144795

/-!
# A144796: Expansion of x*(5 + 215*x - 1253*x^2 - 23*x^3)/((1 + 34*x + x^2)*(1 - 34*x + x^2)).

The programs for A144796, there is no canonical definition to state claims against.
-/

/-! ## A144796.P4084516833453168031

`6*A144941(n+1)-1`
-/

namespace A144796.P4084516833453168031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A144941 (n + 1) - 1

end

end A144796.P4084516833453168031

/-! ## A144796.P15075381953524816084

`A077242(A047615(n+1))`
-/

namespace A144796.P15075381953524816084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077242 (A047615 (n + 1)).toNat

end

end A144796.P15075381953524816084

/-! ## A144796.P15945722873940184463

`A008683(A007918(n))+6*A144941(n+1)`
-/

namespace A144796.P15945722873940184463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007918 n).toNat + 6 * A144941 (n + 1)

end

end A144796.P15945722873940184463

/-! ## A144796.P16814775916321780340

`A008683(A101300(n))+6*A144941(n+1)`
-/

namespace A144796.P16814775916321780340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A101300 n).toNat + 6 * A144941 (n + 1)

end

end A144796.P16814775916321780340

/-! ## A144796.P3515122076064002843

`A008683(A080906(n+1))+6*A144941(n+1)`
-/

namespace A144796.P3515122076064002843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A080906 (n + 1)).toNat + 6 * A144941 (n + 1)

end

end A144796.P3515122076064002843

/-!
# A144797: Numbers k such that 2*k^2 + 17 is a square.

The programs for A144797, the canonical program `A144797.P2649598675801835323` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144797 has offset 1).

The definition of A144797 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144797.P2649598675801835323

`6*a(n-2)-a(n-4)` with `a(0)=2, a(1)=4, a(2)=16, a(3)=26`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A144797

/-- `6*a(n-2)-a(n-4)` -/
def P2649598675801835323.Spec : Prop :=
  ∀ n, P2649598675801835323.a n = A144797 (n + 1)

theorem P2649598675801835323.correct : P2649598675801835323.Spec := by
  intro n
  simp only [A144797, Nat.add_sub_cancel]

end A144797

/-! ## A144797.P4788882050137060234

`2*A077241(n)`
-/

namespace A144797.P4788882050137060234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077241 n

end

end A144797.P4788882050137060234

namespace A144797

/-- `2*A077241(n)` -/
def P4788882050137060234.Spec : Prop :=
  ∀ n, P4788882050137060234.a n = A144797 (n + 1)

end A144797

/-! ## A144797.P17697610733089523216

`∑[A040003(n)*A079496(n)]`
-/

namespace A144797.P17697610733089523216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040003 n * A079496 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144797.P17697610733089523216

namespace A144797

/-- `∑[A040003(n)*A079496(n)]` -/
def P17697610733089523216.Spec : Prop :=
  ∀ n, P17697610733089523216.a n = A144797 (n + 1)

end A144797

/-! ## A144797.P6620392424180598062

`A143608(xor(1, n))+A048654(n)`
-/

namespace A144797.P6620392424180598062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143608 (Nat.xor 1 n) + A048654 n

end

end A144797.P6620392424180598062

namespace A144797

/-- `A143608(xor(1, n))+A048654(n)` -/
def P6620392424180598062.Spec : Prop :=
  ∀ n, P6620392424180598062.a n = A144797 (n + 1)

end A144797

/-! ## A144797.P5009375335962095912

`2*(Δ[A006451(n)]-A006452(n))`
-/

namespace A144797.P5009375335962095912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n - A006452 n)

end

end A144797.P5009375335962095912

namespace A144797

/-- `2*(Δ[A006451(n)]-A006452(n))` -/
def P5009375335962095912.Spec : Prop :=
  ∀ n, P5009375335962095912.a n = A144797 (n + 1)

end A144797

/-! ## A144797.P4339072559735713323

`∑[2*A040001(n)*A079496(n)]`
-/

namespace A144797.P4339072559735713323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A040001 n * A079496 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144797.P4339072559735713323

namespace A144797

/-- `∑[2*A040001(n)*A079496(n)]` -/
def P4339072559735713323.Spec : Prop :=
  ∀ n, P4339072559735713323.a n = A144797 (n + 1)

end A144797

/-! ## A144797.P6780400757047554044

`2*(A143609(n+1)-A006452(n))`
-/

namespace A144797.P6780400757047554044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A143609 (n + 1) - A006452 n)

end

end A144797.P6780400757047554044

namespace A144797

/-- `2*(A143609(n+1)-A006452(n))` -/
def P6780400757047554044.Spec : Prop :=
  ∀ n, P6780400757047554044.a n = A144797 (n + 1)

end A144797

/-! ## A144797.P7899548475148874341

`2*(A154138(n+1)-A216134(n))`
-/

namespace A144797.P7899548475148874341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A154138 (n + 1) - A216134 n)

end

end A144797.P7899548475148874341

namespace A144797

/-- `2*(A154138(n+1)-A216134(n))` -/
def P7899548475148874341.Spec : Prop :=
  ∀ n, P7899548475148874341.a n = A144797 (n + 1)

end A144797

/-! ## A144797.P4269746871406860983

`2*(A143608(n)+∑[A126354(n+1)])`
-/

namespace A144797.P4269746871406860983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A143608 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A144797.P4269746871406860983

namespace A144797

/-- `2*(A143608(n)+∑[A126354(n+1)])` -/
def P4269746871406860983.Spec : Prop :=
  ∀ n, P4269746871406860983.a n = A144797 (n + 1)

end A144797

/-! ## A144797.P12213834372703979464

`2*(A276599(n+1)-Δ[A079496(n)])`
-/

namespace A144797.P12213834372703979464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079496 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A276599 (n + 1) - (f1 (n + 1) - f1 n))

end

end A144797.P12213834372703979464

namespace A144797

/-- `2*(A276599(n+1)-Δ[A079496(n)])` -/
def P12213834372703979464.Spec : Prop :=
  ∀ n, P12213834372703979464.a n = A144797 (n + 1)

end A144797

/-! ## A144797.P2596414893450795586

`A077442(n)+A002315(A004526(n))`
-/

namespace A144797.P2596414893450795586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077442 n + A002315 (A004526 n).toNat

end

end A144797.P2596414893450795586

namespace A144797

/-- `A077442(n)+A002315(A004526(n))` -/
def P2596414893450795586.Spec : Prop :=
  ∀ n, P2596414893450795586.a n = A144797 (n + 1)

end A144797

/-! ## A144797.P12087886616195687903

`A077442(n)+A001333(A109613(n))`
-/

namespace A144797.P12087886616195687903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077442 n + A001333 (A109613 n).toNat

end

end A144797.P12087886616195687903

namespace A144797

/-- `A077442(n)+A001333(A109613(n))` -/
def P12087886616195687903.Spec : Prop :=
  ∀ n, P12087886616195687903.a n = A144797 (n + 1)

end A144797

/-! ## A144797.P13301740085351904222

`2*(A216134(n)+A046090(A004526(n)))`
-/

namespace A144797.P13301740085351904222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A216134 n + A046090 (A004526 n).toNat)

end

end A144797.P13301740085351904222

namespace A144797

/-- `2*(A216134(n)+A046090(A004526(n)))` -/
def P13301740085351904222.Spec : Prop :=
  ∀ n, P13301740085351904222.a n = A144797 (n + 1)

end A144797

/-! ## A144797.P17311417316222278793

`2*(A006451(n+1)-(A006452(n)+A006451(n)))`
-/

namespace A144797.P17311417316222278793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006451 (n + 1) - (A006452 n + A006451 n))

end

end A144797.P17311417316222278793

namespace A144797

/-- `2*(A006451(n+1)-(A006452(n)+A006451(n)))` -/
def P17311417316222278793.Spec : Prop :=
  ∀ n, P17311417316222278793.a n = A144797 (n + 1)

end A144797

/-! ## A144797.P3206830572662958426

`A387549(n+1)-A077442(n)`
-/

namespace A144797.P3206830572662958426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387549 (n + 1) - A077442 n

end

end A144797.P3206830572662958426

namespace A144797

/-- `A387549(n+1)-A077442(n)` -/
def P3206830572662958426.Spec : Prop :=
  ∀ n, P3206830572662958426.a n = A144797 (n + 1)

end A144797

/-! ## A144797.P8626862624486794589

`2*(A133326(n+1)-A276601(n+1))`
-/

namespace A144797.P8626862624486794589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A133326 (n + 1) - A276601 (n + 1))

end

end A144797.P8626862624486794589

namespace A144797

/-- `2*(A133326(n+1)-A276601(n+1))` -/
def P8626862624486794589.Spec : Prop :=
  ∀ n, P8626862624486794589.a n = A144797 (n + 1)

end A144797

/-! ## A144797.P5760712158078902497

`A387549(n+1)+A217975(n+2)-A077446(n+2)`
-/

namespace A144797.P5760712158078902497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387549 (n + 1) + (A217975 (n + 2) - A077446 (n + 2))

end

end A144797.P5760712158078902497

namespace A144797

/-- `A387549(n+1)+A217975(n+2)-A077446(n+2)` -/
def P5760712158078902497.Spec : Prop :=
  ∀ n, P5760712158078902497.a n = A144797 (n + 1)

end A144797

/-! ## A144797.P12521505056594305406

`∑[A265185(n)/A143095(n)]-2`
-/

namespace A144797.P12521505056594305406
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265185 n : ℚ) / (A143095 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A144797.P12521505056594305406

namespace A144797

/-- `∑[A265185(n)/A143095(n)]-2` -/
def P12521505056594305406.Spec : Prop :=
  ∀ n, P12521505056594305406.a n = (A144797 (n + 1) : ℚ)

end A144797

/-! ## A144797.P4883215018966065715

`2*floor(sqrt(A214838(n+1)))`
-/

namespace A144797.P4883215018966065715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.sqrt (A214838 (n + 1))

end

end A144797.P4883215018966065715

namespace A144797

/-- `2*floor(sqrt(A214838(n+1)))` -/
def P4883215018966065715.Spec : Prop :=
  ∀ n, P4883215018966065715.a n = A144797 (n + 1)

end A144797

/-! ## A144797.P2862677770702672459

`floor(2*sqrt(A305292(n+1)))`
-/

namespace A144797.P2862677770702672459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt (A305292 (n + 1) : ℝ)⌋

end

end A144797.P2862677770702672459

namespace A144797

/-- `floor(2*sqrt(A305292(n+1)))` -/
def P2862677770702672459.Spec : Prop :=
  ∀ n, P2862677770702672459.a n = A144797 (n + 1)

end A144797

/-!
# A144798: Integers having ideal digital mean up to base 3.

The programs for A144798, there is no canonical definition to state claims against.
-/

/-! ## A144798.P5700882571059816035

`∩[A031443(n+1), A031452(n+1)]`
-/

namespace A144798.P5700882571059816035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031452 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144798.P5700882571059816035

/-! ## A144798.P16703366361254766801

`∩[A031452(n+1), floor(A337238(n+1)/4)]`
-/

namespace A144798.P16703366361254766801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A337238 (n + 1) : ℚ) / 4⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144798.P16703366361254766801

/-! ## A144798.P8105762846187081697

`∩[eq[0, A037861(n)], A039276(n+1)]`
-/

namespace A144798.P8105762846187081697
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A144798.P8105762846187081697

/-! ## A144798.P6512146080664967777

`∩[eq[2, A099246(n)], A039276(n+1)]`
-/

namespace A144798.P6512146080664967777
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099246 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A144798.P6512146080664967777

/-! ## A144798.P5339749653014009983

`∩[A031452(n+5), eq[0, A037861(n)]]`
-/

namespace A144798.P5339749653014009983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031452 (n + 5)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A144798.P5339749653014009983

/-!
# A144799: Integers having ideal digital mean up to base 4.

The programs for A144799, there is no canonical definition to state claims against.
-/

/-! ## A144799.P9014880013755581066

`∩[A144798(n+1), A333441(n+1)]`
-/

namespace A144799.P9014880013755581066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144799.P9014880013755581066

/-! ## A144799.P2888979507015581680

`∩[A039004(n+1), A144798(n+1)]`
-/

namespace A144799.P2888979507015581680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144799.P2888979507015581680

/-! ## A144799.P10494079689324681792

`∩[A086748(n+1), A144798(n+1)]`
-/

namespace A144799.P10494079689324681792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144799.P10494079689324681792

