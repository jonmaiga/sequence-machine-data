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
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C048
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
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A099400: Square root of a(n) contains the n-th prime as a string of digits to the immediate right of the decimal point (excluding leading zeros).

The programs for A099400, there is no canonical definition to state claims against.
-/

/-! ## A099400.P16536246732381764483

`A034057(A000040(n+1)%A112633(n+1))`
-/

namespace A099400.P16536246732381764483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034057 (Int.tmod (A000040 (n + 1)) (A112633 (n + 1))).toNat

end

end A099400.P16536246732381764483

/-! ## A099400.P7273017385462814759

`A034057(A069677(n+1)%A112633(n+1))`
-/

namespace A099400.P7273017385462814759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034057 (Int.tmod (A069677 (n + 1)) (A112633 (n + 1))).toNat

end

end A099400.P7273017385462814759

/-! ## A099400.P14531139226195319848

`A034057(A069678(n+1)%A112633(n+1))`
-/

namespace A099400.P14531139226195319848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034057 (Int.tmod (A069678 (n + 1)) (A112633 (n + 1))).toNat

end

end A099400.P14531139226195319848

/-! ## A099400.P15299339003742231204

`A034057(A069679(n+1)%A112633(n+1))`
-/

namespace A099400.P15299339003742231204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034057 (Int.tmod (A069679 (n + 1)) (A112633 (n + 1))).toNat

end

end A099400.P15299339003742231204

/-! ## A099400.P15827115691705759703

`A034057(A069680(n+1)%A112633(n+1))`
-/

namespace A099400.P15827115691705759703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034057 (Int.tmod (A069680 (n + 1)) (A112633 (n + 1))).toNat

end

end A099400.P15827115691705759703

/-!
# A099401: Square root of a(n) contains the n-th Fibonacci number as a string of digits to the immediate right of the decimal point (excluding leading zeros).

The programs for A099401, there is no canonical definition to state claims against.
-/

/-! ## A099401.P16962589185550986452

`A034057(Δ[round(ϕ*a(n-1))])` with `a(0)=1`
-/

namespace A099401.P16962589185550986452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034057 (f1 (n + 1) - f1 n).toNat

end

end A099401.P16962589185550986452

/-! ## A099401.P15025841682449695489

`A034057(∑[round(ϕ*a(n-1))])` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A099401.P15025841682449695489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034057 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A099401.P15025841682449695489

/-! ## A099401.P11796427150683260451

`A034057(∑[a(n-1)+a(n-2)])` with `a(0)=1, a(1)=0`
-/

namespace A099401.P11796427150683260451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034057 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099401.P11796427150683260451

/-! ## A099401.P515835566794884918

`A034057(∑[2-(4/2-a(n-1)-a(n-2))])` with `a(0)=1, a(1)=0`
-/

namespace A099401.P515835566794884918
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  2 - ((4 : ℚ) / 2 - f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034057 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A099401.P515835566794884918

/-!
# A099405: Decimal part of 1/a(n) starts with Fibonacci(n) (leading zeros excluded).

The programs for A099405, there is no canonical definition to state claims against.
-/

/-! ## A099405.P6897165266176106797

`A095156(∑[round(ϕ*a(n-1))])` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A099405.P6897165266176106797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095156 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A099405.P6897165266176106797

/-! ## A099405.P8184900466503050699

`A095156(A037027(∑[n]))`
-/

namespace A099405.P8184900466503050699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095156 (A037027 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A099405.P8184900466503050699

/-! ## A099405.P5892709105436959845

`A095156(A000045(n+1))`
-/

namespace A099405.P5892709105436959845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095156 (A000045 (n + 1)).toNat

end

end A099405.P5892709105436959845

/-! ## A099405.P8924462141050620477

`A095156(A324969(n+2))`
-/

namespace A099405.P8924462141050620477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095156 (A324969 (n + 2)).toNat

end

end A099405.P8924462141050620477

/-!
# A099406: Decimal part of 1/a(n) starts with the n-th prime (leading zeros excluded).

The programs for A099406, there is no canonical definition to state claims against.
-/

/-! ## A099406.P12451243068741429898

`A052039(A000040(n+1))`
-/

namespace A099406.P12451243068741429898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052039 (A000040 (n + 1)).toNat

end

end A099406.P12451243068741429898

/-! ## A099406.P17932212822779048143

`A052039(p?[xor(1, n)+1])`
-/

namespace A099406.P17932212822779048143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052039 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A099406.P17932212822779048143

/-! ## A099406.P15597267893385453190

`A052039(Δ[A007504(n)])`
-/

namespace A099406.P15597267893385453190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052039 (f1 (n + 1) - f1 n).toNat

end

end A099406.P15597267893385453190

/-! ## A099406.P5069494896604752987

`A095156(Δ[A007504(n)])`
-/

namespace A099406.P5069494896604752987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095156 (f1 (n + 1) - f1 n).toNat

end

end A099406.P5069494896604752987

/-! ## A099406.P8467749126512904156

`A052039(A008578(n+2))`
-/

namespace A099406.P8467749126512904156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052039 (A008578 (n + 2)).toNat

end

end A099406.P8467749126512904156

/-! ## A099406.P4281374753144294218

`A052039(A182986(n+2))`
-/

namespace A099406.P4281374753144294218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052039 (A182986 (n + 2)).toNat

end

end A099406.P4281374753144294218

/-!
# A099407: Number of points of self-intersection of the path of a billiard ball traveling at a 45-degree angle on a prime(n) X prime(n+1) billiard table. Also equal to 1/2 the number of the lattice points lying within a prime(n) X prime(n+1) rectangle.

The programs for A099407, the canonical program `A099407.P6703751582392478936` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099407 has offset 1).

The definition of A099407 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099407.P6703751582392478936

`(A000040(n+1)-1)*(A000040(n+2)-1)/2`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099407

/-- `(A000040(n+1)-1)*(A000040(n+2)-1)/2` -/
def P6703751582392478936.Spec : Prop :=
  ∀ n, P6703751582392478936.a n = (A099407 (n + 1) : ℚ)

end A099407

/-! ## A099407.P656174602649638202

`A201498(n+1)-3`
-/

namespace A099407.P656174602649638202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201498 (n + 1) - 3

end

end A099407.P656174602649638202

namespace A099407

/-- `A201498(n+1)-3` -/
def P656174602649638202.Spec : Prop :=
  ∀ n, P656174602649638202.a n = A099407 (n + 1)

end A099407

/-! ## A099407.P5909068584557865784

`A083553(n+1)/2`
-/

namespace A099407.P5909068584557865784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083553 (n + 1) : ℚ) / 2

end

end A099407.P5909068584557865784

namespace A099407

/-- `A083553(n+1)/2` -/
def P5909068584557865784.Spec : Prop :=
  ∀ n, P5909068584557865784.a n = (A099407 (n + 1) : ℚ)

end A099407

/-! ## A099407.P8033397410898991072

`ceil(A037165(n+1)/2)`
-/

namespace A099407.P8033397410898991072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A037165 (n + 1) : ℚ) / 2⌉

end

end A099407.P8033397410898991072

namespace A099407

/-- `ceil(A037165(n+1)/2)` -/
def P8033397410898991072.Spec : Prop :=
  ∀ n, P8033397410898991072.a n = A099407 (n + 1)

end A099407

/-! ## A099407.P9090464881268529579

`A014303(n+1)-A005097(n+1)`
-/

namespace A099407.P9090464881268529579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014303 (n + 1) - A005097 (n + 1)

end

end A099407.P9090464881268529579

namespace A099407

/-- `A014303(n+1)-A005097(n+1)` -/
def P9090464881268529579.Spec : Prop :=
  ∀ n, P9090464881268529579.a n = A099407 (n + 1)

end A099407

/-! ## A099407.P10055966289065845963

`A005097(n+1)*A006093(n+1)`
-/

namespace A099407.P10055966289065845963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) * A006093 (n + 1)

end

end A099407.P10055966289065845963

namespace A099407

/-- `A005097(n+1)*A006093(n+1)` -/
def P10055966289065845963.Spec : Prop :=
  ∀ n, P10055966289065845963.a n = A099407 (n + 1)

end A099407

/-! ## A099407.P15096883422627711896

`A130290(n+1)*A165972(n+1)`
-/

namespace A099407.P15096883422627711896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 1) * A165972 (n + 1)

end

end A099407.P15096883422627711896

namespace A099407

/-- `A130290(n+1)*A165972(n+1)` -/
def P15096883422627711896.Spec : Prop :=
  ∀ n, P15096883422627711896.a n = A099407 (n + 1)

end A099407

/-! ## A099407.P13745307859128445733

`(A000040(n+1)-1)*A005097(n+1)`
-/

namespace A099407.P13745307859128445733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - 1) * A005097 (n + 1)

end

end A099407.P13745307859128445733

namespace A099407

/-- `(A000040(n+1)-1)*A005097(n+1)` -/
def P13745307859128445733.Spec : Prop :=
  ∀ n, P13745307859128445733.a n = A099407 (n + 1)

end A099407

/-! ## A099407.P4389824657205996370

`(A006254(n+1)-1)*A006093(n+1)`
-/

namespace A099407.P4389824657205996370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006254 (n + 1) - 1) * A006093 (n + 1)

end

end A099407.P4389824657205996370

namespace A099407

/-- `(A006254(n+1)-1)*A006093(n+1)` -/
def P4389824657205996370.Spec : Prop :=
  ∀ n, P4389824657205996370.a n = A099407 (n + 1)

end A099407

/-! ## A099407.P9422880083635738309

`(A086801(n+1)+2)*A005097(n+1)`
-/

namespace A099407.P9422880083635738309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A086801 (n + 1) + 2) * A005097 (n + 1)

end

end A099407.P9422880083635738309

namespace A099407

/-- `(A086801(n+1)+2)*A005097(n+1)` -/
def P9422880083635738309.Spec : Prop :=
  ∀ n, P9422880083635738309.a n = A099407 (n + 1)

end A099407

/-! ## A099407.P14693614978978929239

`(A008864(n+1)-2)*A005097(n+1)`
-/

namespace A099407.P14693614978978929239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) - 2) * A005097 (n + 1)

end

end A099407.P14693614978978929239

namespace A099407

/-- `(A008864(n+1)-2)*A005097(n+1)` -/
def P14693614978978929239.Spec : Prop :=
  ∀ n, P14693614978978929239.a n = A099407 (n + 1)

end A099407

/-! ## A099407.P7120535984596085774

`2*A079079(n+1)-A001043(n+1)`
-/

namespace A099407.P7120535984596085774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079079 (n + 1) - A001043 (n + 1)

end

end A099407.P7120535984596085774

namespace A099407

/-- `2*A079079(n+1)-A001043(n+1)` -/
def P7120535984596085774.Spec : Prop :=
  ∀ n, P7120535984596085774.a n = A099407 (n + 1)

end A099407

/-! ## A099407.P12112451018857634516

`(A098090(n+1)-2)*A006093(n+1)`
-/

namespace A099407.P12112451018857634516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A098090 (n + 1) - 2) * A006093 (n + 1)

end

end A099407.P12112451018857634516

namespace A099407

/-- `(A098090(n+1)-2)*A006093(n+1)` -/
def P12112451018857634516.Spec : Prop :=
  ∀ n, P12112451018857634516.a n = A099407 (n + 1)

end A099407

/-! ## A099407.P3523195372769437844

`A037166(n+1)/2-A005097(n+1)`
-/

namespace A099407.P3523195372769437844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037166 (n + 1) : ℚ) / 2 - (A005097 (n + 1) : ℚ)

end

end A099407.P3523195372769437844

namespace A099407

/-- `A037166(n+1)/2-A005097(n+1)` -/
def P3523195372769437844.Spec : Prop :=
  ∀ n, P3523195372769437844.a n = (A099407 (n + 1) : ℚ)

end A099407

/-! ## A099407.P14506820097855613728

`(A037167(n+1)-A006093(n+1))/2`
-/

namespace A099407.P14506820097855613728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037167 (n + 1) - A006093 (n + 1) : ℚ) / 2

end

end A099407.P14506820097855613728

namespace A099407

/-- `(A037167(n+1)-A006093(n+1))/2` -/
def P14506820097855613728.Spec : Prop :=
  ∀ n, P14506820097855613728.a n = (A099407 (n + 1) : ℚ)

end A099407

/-! ## A099407.P17020292311914643258

`A005097(n+1)/2*A037168(n+1)`
-/

namespace A099407.P17020292311914643258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005097 (n + 1) : ℚ) / 2 * (A037168 (n + 1) : ℚ)

end

end A099407.P17020292311914643258

namespace A099407

/-- `A005097(n+1)/2*A037168(n+1)` -/
def P17020292311914643258.Spec : Prop :=
  ∀ n, P17020292311914643258.a n = (A099407 (n + 1) : ℚ)

end A099407

/-! ## A099407.P10606604653796083860

`A058263(n+1)/2*A083554(n+1)`
-/

namespace A099407.P10606604653796083860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058263 (n + 1) : ℚ) / 2 * (A083554 (n + 1) : ℚ)

end

end A099407.P10606604653796083860

namespace A099407

/-- `A058263(n+1)/2*A083554(n+1)` -/
def P10606604653796083860.Spec : Prop :=
  ∀ n, P10606604653796083860.a n = (A099407 (n + 1) : ℚ)

end A099407

/-! ## A099407.P17945505855971690456

`(A130290(n+1)+A102781(n+1))*A005097(n+1)`
-/

namespace A099407.P17945505855971690456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130290 (n + 1) + A102781 (n + 1)) * A005097 (n + 1)

end

end A099407.P17945505855971690456

namespace A099407

/-- `(A130290(n+1)+A102781(n+1))*A005097(n+1)` -/
def P17945505855971690456.Spec : Prop :=
  ∀ n, P17945505855971690456.a n = A099407 (n + 1)

end A099407

/-! ## A099407.P3203507685706009461

`A014303(n+1)-A014303(n+1)/A000040(n+1)`
-/

namespace A099407.P3203507685706009461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014303 (n + 1) : ℚ) - (A014303 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A099407.P3203507685706009461

namespace A099407

/-- `A014303(n+1)-A014303(n+1)/A000040(n+1)` -/
def P3203507685706009461.Spec : Prop :=
  ∀ n, P3203507685706009461.a n = (A099407 (n + 1) : ℚ)

end A099407

/-! ## A099407.P6272442744164705317

`A014303(n+1)-A130290(n+2)`
-/

namespace A099407.P6272442744164705317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014303 (n + 1) - A130290 (n + 2)

end

end A099407.P6272442744164705317

namespace A099407

/-- `A014303(n+1)-A130290(n+2)` -/
def P6272442744164705317.Spec : Prop :=
  ∀ n, P6272442744164705317.a n = A099407 (n + 1)

end A099407

/-!
# A099409: Numbers k such that 2*R_k + 5 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A099409, there is no canonical definition to state claims against.
-/

/-! ## A099409.P2061820308823559399

`A056677(A028310(n))-A057428(n)`
-/

namespace A099409.P2061820308823559399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056677 (A028310 n).toNat - A057428 n

end

end A099409.P2061820308823559399

/-! ## A099409.P7314191763846559006

`A056677(A028310(n))+A000040(n+1)%2`
-/

namespace A099409.P7314191763846559006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056677 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A099409.P7314191763846559006

/-!
# A099410: Numbers k such that 2*R_k + 7 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A099410, there is no canonical definition to state claims against.
-/

/-! ## A099410.P14731412752480869766

`A049107(A138020(n))*A049643(n)`
-/

namespace A099410.P14731412752480869766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049107 (A138020 n).toNat * A049643 n

end

end A099410.P14731412752480869766

/-! ## A099410.P14110659988738120514

`A049643(n)*A238015(A005191(n))`
-/

namespace A099410.P14110659988738120514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n * A238015 (A005191 n).toNat

end

end A099410.P14110659988738120514

/-! ## A099410.P2563520330702008609

`A049107(A138020(n))*A329147(n)`
-/

namespace A099410.P2563520330702008609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049107 (A138020 n).toNat * A329147 n

end

end A099410.P2563520330702008609

/-!
# A099411: Numbers k such that 3*R_k + 4 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A099411, there is no canonical definition to state claims against.
-/

/-! ## A099411.P2971241265930888721

`A056680(n+1)+1`
-/

namespace A099411.P2971241265930888721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056680 (n + 1) + 1

end

end A099411.P2971241265930888721

/-! ## A099411.P4683820062056612680

`∑[A191788(A148596(n))]`
-/

namespace A099411.P4683820062056612680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191788 (A148596 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099411.P4683820062056612680

/-!
# A099412: 0 together with numbers k such that 4*R_k - 3 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A099412, there is no canonical definition to state claims against.
-/

/-! ## A099412.P5829433975305426520

`A158388(n)+A056681(A028310(n))`
-/

namespace A099412.P5829433975305426520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + A056681 (A028310 n).toNat

end

end A099412.P5829433975305426520

/-!
# A099413: Numbers k such that 4*R_k + 3 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A099413, there is no canonical definition to state claims against.
-/

/-! ## A099413.P10892078185526214670

`A057427(n)+A056682(A028310(n))`
-/

namespace A099413.P10892078185526214670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A056682 (A028310 n).toNat

end

end A099413.P10892078185526214670

/-! ## A099413.P7827461092330829061

`A056682(A028310(n))-A057428(n)`
-/

namespace A099413.P7827461092330829061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056682 (A028310 n).toNat - A057428 n

end

end A099413.P7827461092330829061

/-! ## A099413.P6773027842983816083

`A267870(n+3)+A056682(A028310(n))`
-/

namespace A099413.P6773027842983816083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267870 (n + 3) + A056682 (A028310 n).toNat

end

end A099413.P6773027842983816083

/-! ## A099413.P8050301458938940262

`A056682(A028310(n))+A000040(n+1)%2`
-/

namespace A099413.P8050301458938940262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056682 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A099413.P8050301458938940262

/-!
# A099414: Numbers k such that 4*R_k + 5 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A099414, there is no canonical definition to state claims against.
-/

/-! ## A099414.P1795020594115758491

`A198706(n+1)%Δ[A198662(n+5)]`
-/

namespace A099414.P1795020594115758491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198662 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198706 (n + 1)) (f1 (n + 1) - f1 n)

end

end A099414.P1795020594115758491

/-! ## A099414.P9132948864348120416

`ceil((n+1)*sqrt(2))*A093998(A082426(n+1))`
-/

namespace A099414.P9132948864348120416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌉ * A093998 (A082426 (n + 1)).toNat

end

end A099414.P9132948864348120416

/-!
# A099416: Numbers k such that 5*R_k - 2 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A099416, there is no canonical definition to state claims against.
-/

/-! ## A099416.P17740930978665332446

`A056685(n+1)+1`
-/

namespace A099416.P17740930978665332446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056685 (n + 1) + 1

end

end A099416.P17740930978665332446

/-!
# A099417: Numbers k such that 5*R_k + 2 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A099417, there is no canonical definition to state claims against.
-/

/-! ## A099417.P9113624262065113103

`A056686(round(sqrt(n²+1)))+floor(10^n/3)%2`
-/

namespace A099417.P9113624262065113103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056686 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + Int.tmod ⌊(10 ^ n : ℚ) / 3⌋ 2

end

end A099417.P9113624262065113103

/-! ## A099417.P979366333541761352

`A057427(n)+A056686(A028310(n))`
-/

namespace A099417.P979366333541761352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A056686 (A028310 n).toNat

end

end A099417.P979366333541761352

/-! ## A099417.P7153749260327108579

`A178334(n)+A056686(A028310(n))`
-/

namespace A099417.P7153749260327108579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A056686 (A028310 n).toNat

end

end A099417.P7153749260327108579

/-! ## A099417.P7689237023582140009

`A178489(n)+A056686(A028310(n))`
-/

namespace A099417.P7689237023582140009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n + A056686 (A028310 n).toNat

end

end A099417.P7689237023582140009

/-! ## A099417.P9023125588334418695

`A056686(A028310(n))-A057428(n)`
-/

namespace A099417.P9023125588334418695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056686 (A028310 n).toNat - A057428 n

end

end A099417.P9023125588334418695

/-!
# A099418: Numbers k such that 5*R_k + 4 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A099418, there is no canonical definition to state claims against.
-/

/-! ## A099418.P4065912263363008426

`A056687(n+1)+1`
-/

namespace A099418.P4065912263363008426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056687 (n + 1) + 1

end

end A099418.P4065912263363008426

/-! ## A099418.P15765945728809118643

`A014681(A056687(n+1))`
-/

namespace A099418.P15765945728809118643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A056687 (n + 1)).toNat

end

end A099418.P15765945728809118643

/-! ## A099418.P8452860692287123685

`eq[1, A104543(n+1)]+2`
-/

namespace A099418.P8452860692287123685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104543 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A099418.P8452860692287123685

/-!
# A099419: Numbers k such that 7*R_k - 6 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A099419, there is no canonical definition to state claims against.
-/

/-! ## A099419.P3735081972352606380

`A056688(n+1)+1`
-/

namespace A099419.P3735081972352606380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056688 (n + 1) + 1

end

end A099419.P3735081972352606380

/-! ## A099419.P2513470742131503313

`A004482(A056688(n+1))`
-/

namespace A099419.P2513470742131503313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A056688 (n + 1)).toNat

end

end A099419.P2513470742131503313

/-!
# A099420: Numbers k such that 7*R_k - 4 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A099420, there is no canonical definition to state claims against.
-/

/-! ## A099420.P16419024753031666387

`A056689(n+1)+1`
-/

namespace A099420.P16419024753031666387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056689 (n + 1) + 1

end

end A099420.P16419024753031666387

/-!
# A099421: 0 together with numbers k such that 8*R_k - 7 is a prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A099421, there is no canonical definition to state claims against.
-/

/-! ## A099421.P16511090448656498068

`A225195(n+1)%A001478(abs(∑[(-5)^n]))`
-/

namespace A099421.P16511090448656498068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-5) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225195 (n + 1)) (A001478 |∑ j ∈ Finset.range (n + 1), f1 j|.toNat)

end

end A099421.P16511090448656498068

/-! ## A099421.P3254292237234136478

`A242380(n+1)%A008619(A002315(n))`
-/

namespace A099421.P3254292237234136478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242380 (n + 1)) (A008619 (A002315 n).toNat)

end

end A099421.P3254292237234136478

/-!
# A099422: Numbers k such that 8*R_k - 5 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A099422, there is no canonical definition to state claims against.
-/

/-! ## A099422.P1451467785124021987

`A056694(n+1)+1`
-/

namespace A099422.P1451467785124021987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056694 (n + 1) + 1

end

end A099422.P1451467785124021987

/-! ## A099422.P8453900137511582558

`A000079(n)-(A000225(n)-A056694(A348553(n)))`
-/

namespace A099422.P8453900137511582558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A000225 n - A056694 (A348553 n).toNat)

end

end A099422.P8453900137511582558

/-! ## A099422.P11268531141500023816

`eq[1, A105973(n)]+1`
-/

namespace A099422.P11268531141500023816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105973 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A099422.P11268531141500023816

/-! ## A099422.P7689472176565683912

`∑{digits}[A093166(n+1), A001221(#)]`
-/

namespace A099422.P7689472176565683912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A001221 x).sum

end

end A099422.P7689472176565683912

/-!
# A099423: Lean quaternary temporal logic [LQTL] cumulative column frequencies of LQTL logic in A094266.

The programs for A099423, there is no canonical definition to state claims against.
-/

/-! ## A099423.P666994461981093260

`Δ[A035687(2*n+5)%A257630(n+1)]`
-/

namespace A099423.P666994461981093260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035687 (2 * n + 5)) (A257630 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099423.P666994461981093260

/-! ## A099423.P2904549097278823589

`C(A094266(n+1), A079468(A325566(n+1)))`
-/

namespace A099423.P2904549097278823589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A094266 (n + 1)).toNat (A079468 (A325566 (n + 1)).toNat).toNat

end

end A099423.P2904549097278823589

/-! ## A099423.P2446769545536375091

`C(A043537(A000079(n)), 2^(n%4))`
-/

namespace A099423.P2446769545536375091
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A043537 (A000079 n).toNat).toNat (2 ^ (n % 4))

end

end A099423.P2446769545536375091

/-! ## A099423.P6828668876228217679

`C(A010874(A000325(n)), A070402(n))`
-/

namespace A099423.P6828668876228217679
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A010874 (A000325 n).toNat).toNat (A070402 n).toNat

end

end A099423.P6828668876228217679

/-! ## A099423.P10558178109018228541

`C(A008621(n)%A115425(3*n), A010883(n))`
-/

namespace A099423.P10558178109018228541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.tmod (A008621 n) (A115425 (3 * n))).toNat (A010883 n).toNat

end

end A099423.P10558178109018228541

/-!
# A099425: Expansion of (1+x^2)/(1-2*x-x^2).

The programs for A099425, the canonical program `A099425.P6176128933877223829` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099425 has offset 0).

The definition of A099425 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^2)/(1-2x-x^2))` (program `A099425.P6176128933877223829`, by `A099425.P6176128933877223829.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099425.P6176128933877223829

`ogf((1+x^2)/(1-2x-x^2))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099425

/-- `ogf((1+x^2)/(1-2x-x^2))` -/
def P6176128933877223829.Spec : Prop :=
  ∀ n, P6176128933877223829.a n = A099425 n

theorem P6176128933877223829.correct : P6176128933877223829.Spec := by
  intro n
  simp only [A099425]

end A099425

/-! ## A099425.P14135056230519477752

`round((1+sqrt(2))^n)`
-/

namespace A099425.P14135056230519477752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((1 + Real.sqrt (2 : ℝ)) ^ n)

end

end A099425.P14135056230519477752

namespace A099425

/-- `round((1+sqrt(2))^n)` -/
def P14135056230519477752.Spec : Prop :=
  ∀ n, P14135056230519477752.a n = A099425 n

end A099425

/-! ## A099425.P5058883007597834861

`2*a(n-1)+a(n-2)` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A099425.P5058883007597834861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  2 * a (n - 1) + a (n - 2)

end

end A099425.P5058883007597834861

namespace A099425

/-- `2*a(n-1)+a(n-2)` -/
def P5058883007597834861.Spec : Prop :=
  ∀ n, (P5058883007597834861.a n : ℤ) = A099425 n

end A099425

/-! ## A099425.P4415978354615709254

`a(n-1)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A099425.P4415978354615709254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 2))

end

end A099425.P4415978354615709254

namespace A099425

/-- `a(n-1)+a(n-1)+a(n-2)` -/
def P4415978354615709254.Spec : Prop :=
  ∀ n, (P4415978354615709254.a n : ℤ) = A099425 n

end A099425

/-! ## A099425.P18206579674309532014

`A002203(n)-round(1/(n+2))`
-/

namespace A099425.P18206579674309532014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n - SequenceMachineLib.roundAway (1 / (n + 2 : ℚ))

end

end A099425.P18206579674309532014

namespace A099425

/-- `A002203(n)-round(1/(n+2))` -/
def P18206579674309532014.Spec : Prop :=
  ∀ n, P18206579674309532014.a n = A099425 n

end A099425

/-! ## A099425.P8012637713222215113

`A100227(n)+A057427(n)`
-/

namespace A099425.P8012637713222215113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100227 n + A057427 n

end

end A099425.P8012637713222215113

namespace A099425

/-- `A100227(n)+A057427(n)` -/
def P8012637713222215113.Spec : Prop :=
  ∀ n, P8012637713222215113.a n = A099425 n

end A099425

/-! ## A099425.P3722345854301813310

`A124696(n)+A057428(n)`
-/

namespace A099425.P3722345854301813310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124696 n + A057428 n

end

end A099425.P3722345854301813310

namespace A099425

/-- `A124696(n)+A057428(n)` -/
def P3722345854301813310.Spec : Prop :=
  ∀ n, P3722345854301813310.a n = A099425 n

end A099425

/-! ## A099425.P11959792151400550002

`A100227(n)-A057428(n)`
-/

namespace A099425.P11959792151400550002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100227 n - A057428 n

end

end A099425.P11959792151400550002

namespace A099425

/-- `A100227(n)-A057428(n)` -/
def P11959792151400550002.Spec : Prop :=
  ∀ n, P11959792151400550002.a n = A099425 n

end A099425

/-! ## A099425.P14177681171043852623

`A124696(n)-A057427(n)`
-/

namespace A099425.P14177681171043852623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124696 n - A057427 n

end

end A099425.P14177681171043852623

namespace A099425

/-- `A124696(n)-A057427(n)` -/
def P14177681171043852623.Spec : Prop :=
  ∀ n, P14177681171043852623.a n = A099425 n

end A099425

/-! ## A099425.P13170926930054759536

`A182143(n)-A062157(n)`
-/

namespace A099425.P13170926930054759536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182143 n - A062157 n

end

end A099425.P13170926930054759536

namespace A099425

/-- `A182143(n)-A062157(n)` -/
def P13170926930054759536.Spec : Prop :=
  ∀ n, P13170926930054759536.a n = A099425 n

end A099425

/-! ## A099425.P13799122294948322518

`A123335(n)*A280560(n)`
-/

namespace A099425.P13799122294948322518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123335 n * A280560 n

end

end A099425.P13799122294948322518

namespace A099425

/-- `A123335(n)*A280560(n)` -/
def P13799122294948322518.Spec : Prop :=
  ∀ n, P13799122294948322518.a n = A099425 n

end A099425

/-! ## A099425.P2699567584346997275

`A002203(n)/A054977(n)`
-/

namespace A099425.P2699567584346997275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002203 n : ℚ) / (A054977 n : ℚ)

end

end A099425.P2699567584346997275

namespace A099425

/-- `A002203(n)/A054977(n)` -/
def P2699567584346997275.Spec : Prop :=
  ∀ n, P2699567584346997275.a n = (A099425 n : ℚ)

end A099425

/-! ## A099425.P12428102239005835612

`A001333(n)+Δ[A215928(n)]`
-/

namespace A099425.P12428102239005835612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n + (f1 (n + 1) - f1 n)

end

end A099425.P12428102239005835612

namespace A099425

/-- `A001333(n)+Δ[A215928(n)]` -/
def P12428102239005835612.Spec : Prop :=
  ∀ n, P12428102239005835612.a n = A099425 n

end A099425

/-! ## A099425.P1143802113708504621

`A001333(n)*A036453(n+1)`
-/

namespace A099425.P1143802113708504621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n * A036453 (n + 1)

end

end A099425.P1143802113708504621

namespace A099425

/-- `A001333(n)*A036453(n+1)` -/
def P1143802113708504621.Spec : Prop :=
  ∀ n, P1143802113708504621.a n = A099425 n

end A099425

/-! ## A099425.P18250636313257830884

`(A057427(n)+1)*A001333(n)`
-/

namespace A099425.P18250636313257830884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A001333 n

end

end A099425.P18250636313257830884

namespace A099425

/-- `(A057427(n)+1)*A001333(n)` -/
def P18250636313257830884.Spec : Prop :=
  ∀ n, P18250636313257830884.a n = A099425 n

end A099425

/-! ## A099425.P14682788658074153523

`(2-A000007(n))*A001333(n)`
-/

namespace A099425.P14682788658074153523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A001333 n

end

end A099425.P14682788658074153523

namespace A099425

/-- `(2-A000007(n))*A001333(n)` -/
def P14682788658074153523.Spec : Prop :=
  ∀ n, P14682788658074153523.a n = A099425 n

end A099425

/-! ## A099425.P446990453537208545

`A001333(n)*A040001(2*n)`
-/

namespace A099425.P446990453537208545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n * A040001 (2 * n)

end

end A099425.P446990453537208545

namespace A099425

/-- `A001333(n)*A040001(2*n)` -/
def P446990453537208545.Spec : Prop :=
  ∀ n, P446990453537208545.a n = A099425 n

end A099425

/-! ## A099425.P12547820437250392847

`A001333(n)*A382713(2*n)`
-/

namespace A099425.P12547820437250392847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n * A382713 (2 * n)

end

end A099425.P12547820437250392847

namespace A099425

/-- `A001333(n)*A382713(2*n)` -/
def P12547820437250392847.Spec : Prop :=
  ∀ n, P12547820437250392847.a n = A099425 n

end A099425

/-!
# A099426: Numbers n where n^2 = x^3 + y^3; x,y>0 and gcd(x,y)=1.

The programs for A099426, there is no canonical definition to state claims against.
-/

/-! ## A099426.P11080687241816229002

`filter[A050801(n+1), A341642(#)]`
-/

namespace A099426.P11080687241816229002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341642 (f1 j).toNat = 1) n)

end

end A099426.P11080687241816229002

/-!
# A099427: a(1) = 1; for n > 1, a(n) = 1 + greatest common divisor of n and a(n-1).

The programs for A099427, the canonical program `A099427.P338640220411734191` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099427 has offset 1).

The definition of A099427 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099427.P338640220411734191

`gcd(n+1, a(n-1))+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099427

/-- `gcd(n+1, a(n-1))+1` -/
def P338640220411734191.Spec : Prop :=
  ∀ n, (P338640220411734191.a n : ℤ) = A099427 (n + 1)

theorem P338640220411734191.correct : P338640220411734191.Spec := by
  intro n
  simp only [A099427, Nat.add_sub_cancel]

end A099427

/-! ## A099427.P15591626937055020287

`A137866(n+1)+1`
-/

namespace A099427.P15591626937055020287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137866 (n + 1) + 1

end

end A099427.P15591626937055020287

namespace A099427

/-- `A137866(n+1)+1` -/
def P15591626937055020287.Spec : Prop :=
  ∀ n, P15591626937055020287.a n = A099427 (n + 1)

end A099427

/-! ## A099427.P9738886734178080982

`2-A124195(n+1)+n`
-/

namespace A099427.P9738886734178080982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A124195 (n + 1) + (n : ℤ)

end

end A099427.P9738886734178080982

namespace A099427

/-- `2-A124195(n+1)+n` -/
def P9738886734178080982.Spec : Prop :=
  ∀ n, P9738886734178080982.a n = A099427 (n + 1)

end A099427

/-! ## A099427.P3876011400795823761

`gcd(a(n-1), A131738(n))+1` with `a(0)=1`
-/

namespace A099427.P3876011400795823761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (a (n - 1) : ℤ) (A131738 n) + 1

end

end A099427.P3876011400795823761

namespace A099427

/-- `gcd(a(n-1), A131738(n))+1` -/
def P3876011400795823761.Spec : Prop :=
  ∀ n, (P3876011400795823761.a n : ℤ) = A099427 (n + 1)

end A099427

/-! ## A099427.P1577083804837791015

`A129089(2*(n+1))/2`
-/

namespace A099427.P1577083804837791015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129089 (2 * (n + 1)) : ℚ) / 2

end

end A099427.P1577083804837791015

namespace A099427

/-- `A129089(2*(n+1))/2` -/
def P1577083804837791015.Spec : Prop :=
  ∀ n, P1577083804837791015.a n = (A099427 (n + 1) : ℚ)

end A099427

/-!
# A099429: A Jacobsthal-Lucas convolution.

The programs for A099429, the canonical program `A099429.P13617846749739745140` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099429 has offset 0).

The definition of A099429 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099429.P17698527095450188544

`ogf((2x^2-x^3)/(1-2x-3x^2+4x^3+4x^4))`
-/

namespace A099429.P17698527095450188544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, -1] [1, -2, -3, 4, 4] n

end

end A099429.P17698527095450188544

namespace A099429

/-- `ogf((2x^2-x^3)/(1-2x-3x^2+4x^3+4x^4))` -/
def P17698527095450188544.Spec : Prop :=
  ∀ n, P17698527095450188544.a n = A099429 n

end A099429

/-! ## A099429.P13617846749739745140

`A036289(n)/6+(-1)^n*n/3`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099429

/-- `A036289(n)/6+(-1)^n*n/3` -/
def P13617846749739745140.Spec : Prop :=
  ∀ n, P13617846749739745140.a n = (A099429 n : ℚ)

end A099429

/-! ## A099429.P9669276811723367868

`n*Δ[ceil(2^n/6)]`
-/

namespace A099429.P9669276811723367868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 ^ n : ℚ) / 6⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A099429.P9669276811723367868

namespace A099429

/-- `n*Δ[ceil(2^n/6)]` -/
def P9669276811723367868.Spec : Prop :=
  ∀ n, P9669276811723367868.a n = A099429 n

end A099429

/-! ## A099429.P244626389914618991

`abs(n*Δ[A023105(n)])`
-/

namespace A099429.P244626389914618991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023105 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (f1 (n + 1) - f1 n)|

end

end A099429.P244626389914618991

namespace A099429

/-- `abs(n*Δ[A023105(n)])` -/
def P244626389914618991.Spec : Prop :=
  ∀ n, P244626389914618991.a n = A099429 n

end A099429

/-! ## A099429.P5499760368859567736

`abs(n/2*A151575(n))`
-/

namespace A099429.P5499760368859567736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(n : ℚ) / 2 * (A151575 n : ℚ)|

end

end A099429.P5499760368859567736

namespace A099429

/-- `abs(n/2*A151575(n))` -/
def P5499760368859567736.Spec : Prop :=
  ∀ n, P5499760368859567736.a n = (A099429 n : ℚ)

end A099429

/-! ## A099429.P5678106015038030879

`floor(n*Δ[A167167(n)/2])`
-/

namespace A099429.P5678106015038030879
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167167 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * (f1 (n + 1) - f1 n)⌋

end

end A099429.P5678106015038030879

namespace A099429

/-- `floor(n*Δ[A167167(n)/2])` -/
def P5678106015038030879.Spec : Prop :=
  ∀ n, P5678106015038030879.a n = A099429 n

end A099429

/-! ## A099429.P16800191393734153713

`A099431(n)+A038608(n)`
-/

namespace A099429.P16800191393734153713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099431 n + A038608 n

end

end A099429.P16800191393734153713

namespace A099429

/-- `A099431(n)+A038608(n)` -/
def P16800191393734153713.Spec : Prop :=
  ∀ n, P16800191393734153713.a n = A099429 n

end A099429

/-! ## A099429.P13299028012656281507

`A172481(n)-A103196(n)`
-/

namespace A099429.P13299028012656281507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172481 n - A103196 n

end

end A099429.P13299028012656281507

namespace A099429

/-- `A172481(n)-A103196(n)` -/
def P13299028012656281507.Spec : Prop :=
  ∀ n, P13299028012656281507.a n = A099429 n

end A099429

/-! ## A099429.P6846543113324570602

`A099431(n)-A181983(n)`
-/

namespace A099429.P6846543113324570602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099431 n - A181983 n

end

end A099429.P6846543113324570602

namespace A099429

/-- `A099431(n)-A181983(n)` -/
def P6846543113324570602.Spec : Prop :=
  ∀ n, P6846543113324570602.a n = A099429 n

end A099429

/-! ## A099429.P7807933192184590642

`A172481(n)-A113954(n+2)`
-/

namespace A099429.P7807933192184590642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172481 n - A113954 (n + 2)

end

end A099429.P7807933192184590642

namespace A099429

/-- `A172481(n)-A113954(n+2)` -/
def P7807933192184590642.Spec : Prop :=
  ∀ n, P7807933192184590642.a n = A099429 n

end A099429

/-! ## A099429.P4146365873855095586

`A103196(n+1)+A001045(n)-A136299(n+1)`
-/

namespace A099429.P4146365873855095586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103196 (n + 1) + (A001045 n - A136299 (n + 1))

end

end A099429.P4146365873855095586

namespace A099429

/-- `A103196(n+1)+A001045(n)-A136299(n+1)` -/
def P4146365873855095586.Spec : Prop :=
  ∀ n, P4146365873855095586.a n = A099429 n

end A099429

/-! ## A099429.P10013944707771772195

`A103196(n+1)-(A139790(n)+A001045(n+1))`
-/

namespace A099429.P10013944707771772195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103196 (n + 1) - (A139790 n + A001045 (n + 1))

end

end A099429.P10013944707771772195

namespace A099429

/-- `A103196(n+1)-(A139790(n)+A001045(n+1))` -/
def P10013944707771772195.Spec : Prop :=
  ∀ n, P10013944707771772195.a n = A099429 n

end A099429

/-! ## A099429.P18065639914526801110

`A001045(n+1)+A113954(n+1)-A139790(n)`
-/

namespace A099429.P18065639914526801110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) + (A113954 (n + 1) - A139790 n)

end

end A099429.P18065639914526801110

namespace A099429

/-- `A001045(n+1)+A113954(n+1)-A139790(n)` -/
def P18065639914526801110.Spec : Prop :=
  ∀ n, P18065639914526801110.a n = A099429 n

end A099429

/-! ## A099429.P16081504523255022150

`n*A078008(n)/2`
-/

namespace A099429.P16081504523255022150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A078008 n : ℚ) / 2

end

end A099429.P16081504523255022150

namespace A099429

/-- `n*A078008(n)/2` -/
def P16081504523255022150.Spec : Prop :=
  ∀ n, P16081504523255022150.a n = (A099429 n : ℚ)

end A099429

/-! ## A099429.P17207822203922241578

`n*Δ[A001045(n)]/2`
-/

namespace A099429.P17207822203922241578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A099429.P17207822203922241578

namespace A099429

/-- `n*Δ[A001045(n)]/2` -/
def P17207822203922241578.Spec : Prop :=
  ∀ n, P17207822203922241578.a n = (A099429 n : ℚ)

end A099429

/-! ## A099429.P6563369607758643942

`n*Δ[A128209(n)]/2`
-/

namespace A099429.P6563369607758643942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128209 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A099429.P6563369607758643942

namespace A099429

/-- `n*Δ[A128209(n)]/2` -/
def P6563369607758643942.Spec : Prop :=
  ∀ n, P6563369607758643942.a n = (A099429 n : ℚ)

end A099429

/-! ## A099429.P4417481598910258575

`n*Δ[A152046(n)]/2`
-/

namespace A099429.P4417481598910258575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152046 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A099429.P4417481598910258575

namespace A099429

/-- `n*Δ[A152046(n)]/2` -/
def P4417481598910258575.Spec : Prop :=
  ∀ n, P4417481598910258575.a n = (A099429 n : ℚ)

end A099429

/-! ## A099429.P12474088220515787074

`n*Δ[A153643(n)]/2`
-/

namespace A099429.P12474088220515787074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153643 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A099429.P12474088220515787074

namespace A099429

/-- `n*Δ[A153643(n)]/2` -/
def P12474088220515787074.Spec : Prop :=
  ∀ n, P12474088220515787074.a n = (A099429 n : ℚ)

end A099429

/-! ## A099429.P17825768054039608367

`n*Δ[A167030(n)]/2`
-/

namespace A099429.P17825768054039608367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167030 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A099429.P17825768054039608367

namespace A099429

/-- `n*Δ[A167030(n)]/2` -/
def P17825768054039608367.Spec : Prop :=
  ∀ n, P17825768054039608367.a n = (A099429 n : ℚ)

end A099429

/-! ## A099429.P9797911785122361829

`n*Δ[A167167(n)]/2`
-/

namespace A099429.P9797911785122361829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167167 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A099429.P9797911785122361829

namespace A099429

/-- `n*Δ[A167167(n)]/2` -/
def P9797911785122361829.Spec : Prop :=
  ∀ n, P9797911785122361829.a n = (A099429 n : ℚ)

end A099429

/-!
# A099430: a(n) = 2^n+(-1)^n-1.

The programs for A099430, the canonical program `A099430.P5657682657797432528` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099430 has offset 0).

The definition of A099430 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+(-1)^n-1` (program `A099430.P5657682657797432528`, by `A099430.P5657682657797432528.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099430.P15068846897051459530

`ogf((1-2x+3x^2)/(1-2x-x^2+2x^3))`
-/

namespace A099430.P15068846897051459530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 3] [1, -2, -1, 2] n

end

end A099430.P15068846897051459530

namespace A099430

/-- `ogf((1-2x+3x^2)/(1-2x-x^2+2x^3))` -/
def P15068846897051459530.Spec : Prop :=
  ∀ n, P15068846897051459530.a n = A099430 n

end A099430

/-! ## A099430.P5657682657797432528

`2^n+(-1)^n-1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099430

/-- `2^n+(-1)^n-1` -/
def P5657682657797432528.Spec : Prop :=
  ∀ n, P5657682657797432528.a n = A099430 n

theorem P5657682657797432528.correct : P5657682657797432528.Spec := by
  intro n
  simp only [A099430]

end A099430

/-! ## A099430.P2784229692224856880

`2^n-2*n%2`
-/

namespace A099430.P2784229692224856880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ((2 * (n % 2) : ℕ) : ℤ)

end

end A099430.P2784229692224856880

namespace A099430

/-- `2^n-2*n%2` -/
def P2784229692224856880.Spec : Prop :=
  ∀ n, P2784229692224856880.a n = A099430 n

end A099430

/-! ## A099430.P12983725124051166146

`2^n-2*and(1, n)`
-/

namespace A099430.P12983725124051166146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (2 * Nat.land 1 n : ℤ)

end

end A099430.P12983725124051166146

namespace A099430

/-- `2^n-2*and(1, n)` -/
def P12983725124051166146.Spec : Prop :=
  ∀ n, P12983725124051166146.a n = A099430 n

end A099430

/-! ## A099430.P10985853070791694500

`xor(1, abs(xor(1, (-2)^n)))`
-/

namespace A099430.P10985853070791694500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 |Int.xor 1 ((-2) ^ n)|

end

end A099430.P10985853070791694500

namespace A099430

/-- `xor(1, abs(xor(1, (-2)^n)))` -/
def P10985853070791694500.Spec : Prop :=
  ∀ n, P10985853070791694500.a n = A099430 n

end A099430

/-! ## A099430.P747052783560120629

`abs(xor(1, n+1)-(2^n+n))`
-/

namespace A099430.P747052783560120629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.xor 1 (n + 1) : ℤ) - (2 ^ n + n : ℤ)|

end

end A099430.P747052783560120629

namespace A099430

/-- `abs(xor(1, n+1)-(2^n+n))` -/
def P747052783560120629.Spec : Prop :=
  ∀ n, P747052783560120629.a n = A099430 n

end A099430

/-! ## A099430.P14585015828433513528

`floor(a(n-1)+2*(a(n-2)+1))` with `a(0)=1, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A099430.P14585015828433513528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) + 2 * (a (n - 2) + 1)

end

end A099430.P14585015828433513528

namespace A099430

/-- `floor(a(n-1)+2*(a(n-2)+1))` -/
def P14585015828433513528.Spec : Prop :=
  ∀ n, (P14585015828433513528.a n : ℤ) = A099430 n

theorem P14585015828433513528.correct : P14585015828433513528.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A099430, Nat.add_sub_cancel, A099430.P14585015828433513528.a, A099430.P5657682657797432528.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A099430, Nat.add_sub_cancel, A099430.P14585015828433513528.a, A099430.P5657682657797432528.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A099430

/-! ## A099430.P18163743698593751581

`floor(a(n-1)+a(n-2)+a(n-2)+2)` with `a(0)=1, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A099430.P18163743698593751581
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 2) + 2))

end

end A099430.P18163743698593751581

namespace A099430

/-- `floor(a(n-1)+a(n-2)+a(n-2)+2)` -/
def P18163743698593751581.Spec : Prop :=
  ∀ n, (P18163743698593751581.a n : ℤ) = A099430 n

theorem P18163743698593751581.correct : P18163743698593751581.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A099430, Nat.add_sub_cancel, A099430.P18163743698593751581.a, A099430.P5657682657797432528.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A099430, Nat.add_sub_cancel, A099430.P18163743698593751581.a, A099430.P5657682657797432528.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A099430

/-! ## A099430.P14586041159084779429

`xor(1, A166977(n))`
-/

namespace A099430.P14586041159084779429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A166977 n)

end

end A099430.P14586041159084779429

namespace A099430

/-- `xor(1, A166977(n))` -/
def P14586041159084779429.Spec : Prop :=
  ∀ n, P14586041159084779429.a n = A099430 n

end A099430

/-! ## A099430.P12002728292949817735

`abs(1-A225883(n))`
-/

namespace A099430.P12002728292949817735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A225883 n|

end

end A099430.P12002728292949817735

namespace A099430

/-- `abs(1-A225883(n))` -/
def P12002728292949817735.Spec : Prop :=
  ∀ n, P12002728292949817735.a n = A099430 n

end A099430

/-! ## A099430.P3355556286133977379

`2*(A280193(n)+a(n-1))` with `a(0)=1`
-/

namespace A099430.P3355556286133977379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (A280193 n + a (n - 1))

end

end A099430.P3355556286133977379

namespace A099430

/-- `2*(A280193(n)+a(n-1))` -/
def P3355556286133977379.Spec : Prop :=
  ∀ n, P3355556286133977379.a n = A099430 n

end A099430

/-! ## A099430.P7915189875122224156

`A000034(n)*A277800(n)`
-/

namespace A099430.P7915189875122224156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A277800 n

end

end A099430.P7915189875122224156

namespace A099430

/-- `A000034(n)*A277800(n)` -/
def P7915189875122224156.Spec : Prop :=
  ∀ n, P7915189875122224156.a n = A099430 n

end A099430

/-! ## A099430.P323876374289513945

`A056450(n)%A049332(n)`
-/

namespace A099430.P323876374289513945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056450 n) (A049332 n)

end

end A099430.P323876374289513945

namespace A099430

/-- `A056450(n)%A049332(n)` -/
def P323876374289513945.Spec : Prop :=
  ∀ n, P323876374289513945.a n = A099430 n

end A099430

/-! ## A099430.P18249118276674781069

`A285475(n)%A000051(n)`
-/

namespace A099430.P18249118276674781069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285475 n) (A000051 n)

end

end A099430.P18249118276674781069

namespace A099430

/-- `A285475(n)%A000051(n)` -/
def P18249118276674781069.Spec : Prop :=
  ∀ n, P18249118276674781069.a n = A099430 n

end A099430

/-! ## A099430.P685173908576112333

`lcm(A113679(n), A287199(n))`
-/

namespace A099430.P685173908576112333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A113679 n) (A287199 n)

end

end A099430.P685173908576112333

namespace A099430

/-- `lcm(A113679(n), A287199(n))` -/
def P685173908576112333.Spec : Prop :=
  ∀ n, (P685173908576112333.a n : ℤ) = A099430 n

end A099430

/-! ## A099430.P17221845310201627289

`and(A051049(n), A113679(n))`
-/

namespace A099430.P17221845310201627289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051049 n) (A113679 n)

end

end A099430.P17221845310201627289

namespace A099430

/-- `and(A051049(n), A113679(n))` -/
def P17221845310201627289.Spec : Prop :=
  ∀ n, P17221845310201627289.a n = A099430 n

end A099430

/-! ## A099430.P17257917917238976054

`xor(A000035(n), A051049(n))`
-/

namespace A099430.P17257917917238976054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 n) (A051049 n)

end

end A099430.P17257917917238976054

namespace A099430

/-- `xor(A000035(n), A051049(n))` -/
def P17257917917238976054.Spec : Prop :=
  ∀ n, P17257917917238976054.a n = A099430 n

end A099430

/-! ## A099430.P4313858122834516973

`Δ[2^n-or(1, n)]`
-/

namespace A099430.P4313858122834516973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (Nat.lor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099430.P4313858122834516973

namespace A099430

/-- `Δ[2^n-or(1, n)]` -/
def P4313858122834516973.Spec : Prop :=
  ∀ n, P4313858122834516973.a n = A099430 n

end A099430

/-! ## A099430.P1598635246939307622

`(4-2*(a(n-1)-2*(a(n-1)+a(n-2))))/2` with `a(0)=1, a(1)=0`
-/

namespace A099430.P1598635246939307622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  (4 - 2 * (a (n - 1) - 2 * (a (n - 1) + a (n - 2)))) / 2

end

end A099430.P1598635246939307622

namespace A099430

/-- `(4-2*(a(n-1)-2*(a(n-1)+a(n-2))))/2` -/
def P1598635246939307622.Spec : Prop :=
  ∀ n, P1598635246939307622.a n = (A099430 n : ℚ)

theorem P1598635246939307622.correct : P1598635246939307622.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A099430, Nat.add_sub_cancel, A099430.P1598635246939307622.a, A099430.P5657682657797432528.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A099430, Nat.add_sub_cancel, A099430.P1598635246939307622.a, A099430.P5657682657797432528.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A099430

/-! ## A099430.P10648093934910826741

`Δ[A000325(n)+and(1, n)]`
-/

namespace A099430.P10648093934910826741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 n + (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099430.P10648093934910826741

namespace A099430

/-- `Δ[A000325(n)+and(1, n)]` -/
def P10648093934910826741.Spec : Prop :=
  ∀ n, P10648093934910826741.a n = A099430 n

end A099430

/-!
# A099431: Expansion of x(1-2x+3x^2)/(1-x-2x)^2;.

The programs for A099431, the canonical program `A099431.P12204934944498620732` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099431 has offset 0).

The definition of A099431 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099431.P12204934944498620732

`n*Δ[round(2^n/6)]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099431

/-- `n*Δ[round(2^n/6)]` -/
def P12204934944498620732.Spec : Prop :=
  ∀ n, P12204934944498620732.a n = A099431 n

theorem P12204934944498620732.correct : P12204934944498620732.Spec := by
  intro n
  simp only [A099431]

end A099431

/-! ## A099431.P9645170197743936804

`abs(n/2*A084247(n))`
-/

namespace A099431.P9645170197743936804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(n : ℚ) / 2 * (A084247 n : ℚ)|

end

end A099431.P9645170197743936804

namespace A099431

/-- `abs(n/2*A084247(n))` -/
def P9645170197743936804.Spec : Prop :=
  ∀ n, P9645170197743936804.a n = (A099431 n : ℚ)

end A099431

/-! ## A099431.P3168568897891665137

`floor(n/4*A115341(n))`
-/

namespace A099431.P3168568897891665137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4 * (A115341 n : ℚ)⌋

end

end A099431.P3168568897891665137

namespace A099431

/-- `floor(n/4*A115341(n))` -/
def P3168568897891665137.Spec : Prop :=
  ∀ n, P3168568897891665137.a n = A099431 n

end A099431

/-! ## A099431.P6802513233856491902

`A181983(n)+A099429(n)`
-/

namespace A099431.P6802513233856491902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 n + A099429 n

end

end A099431.P6802513233856491902

namespace A099431

/-- `A181983(n)+A099429(n)` -/
def P6802513233856491902.Spec : Prop :=
  ∀ n, P6802513233856491902.a n = A099431 n

end A099431

/-! ## A099431.P2807059839423923587

`A099429(n)-A038608(n)`
-/

namespace A099431.P2807059839423923587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099429 n - A038608 n

end

end A099431.P2807059839423923587

namespace A099431

/-- `A099429(n)-A038608(n)` -/
def P2807059839423923587.Spec : Prop :=
  ∀ n, P2807059839423923587.a n = A099431 n

end A099431

/-! ## A099431.P2130867228159073766

`A172481(n)-A095342(n+1)`
-/

namespace A099431.P2130867228159073766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172481 n - A095342 (n + 1)

end

end A099431.P2130867228159073766

namespace A099431

/-- `A172481(n)-A095342(n+1)` -/
def P2130867228159073766.Spec : Prop :=
  ∀ n, P2130867228159073766.a n = A099431 n

end A099431

/-! ## A099431.P8027446659410120092

`A053088(n+1)+A113954(n)-A139790(n)`
-/

namespace A099431.P8027446659410120092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053088 (n + 1) + (A113954 n - A139790 n)

end

end A099431.P8027446659410120092

namespace A099431

/-- `A053088(n+1)+A113954(n)-A139790(n)` -/
def P8027446659410120092.Spec : Prop :=
  ∀ n, P8027446659410120092.a n = A099431 n

end A099431

/-! ## A099431.P7672353551562435106

`A103196(n)+A172481(n)-A103196(n+1)`
-/

namespace A099431.P7672353551562435106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103196 n + (A172481 n - A103196 (n + 1))

end

end A099431.P7672353551562435106

namespace A099431

/-- `A103196(n)+A172481(n)-A103196(n+1)` -/
def P7672353551562435106.Spec : Prop :=
  ∀ n, P7672353551562435106.a n = A099431 n

end A099431

/-! ## A099431.P2062952270139515203

`ogf((x-2x^2+3x^3)/(1-2x-3x^2+4x^3+4x^4))`
-/

namespace A099431.P2062952270139515203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2, 3] [1, -2, -3, 4, 4] n

end

end A099431.P2062952270139515203

namespace A099431

/-- `ogf((x-2x^2+3x^3)/(1-2x-3x^2+4x^3+4x^4))` -/
def P2062952270139515203.Spec : Prop :=
  ∀ n, P2062952270139515203.a n = A099431 n

end A099431

/-! ## A099431.P10191348288189248482

`n*Δ[A078008(n)]/2`
-/

namespace A099431.P10191348288189248482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A099431.P10191348288189248482

namespace A099431

/-- `n*Δ[A078008(n)]/2` -/
def P10191348288189248482.Spec : Prop :=
  ∀ n, P10191348288189248482.a n = (A099431 n : ℚ)

end A099431

/-! ## A099431.P16499729903015803126

`n*Δ[A153772(n)]/2`
-/

namespace A099431.P16499729903015803126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153772 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A099431.P16499729903015803126

namespace A099431

/-- `n*Δ[A153772(n)]/2` -/
def P16499729903015803126.Spec : Prop :=
  ∀ n, P16499729903015803126.a n = (A099431 n : ℚ)

end A099431

/-! ## A099431.P14768695230823240588

`n*A141416(2*n)/2`
-/

namespace A099431.P14768695230823240588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A141416 (2 * n) : ℚ) / 2

end

end A099431.P14768695230823240588

namespace A099431

/-- `n*A141416(2*n)/2` -/
def P14768695230823240588.Spec : Prop :=
  ∀ n, P14768695230823240588.a n = (A099431 n : ℚ)

end A099431

/-! ## A099431.P4797452654242331757

`A093835(n)-A099429(n)`
-/

namespace A099431.P4797452654242331757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093835 n - A099429 n

end

end A099431.P4797452654242331757

namespace A099431

/-- `A093835(n)-A099429(n)` -/
def P4797452654242331757.Spec : Prop :=
  ∀ n, P4797452654242331757.a n = A099431 n

end A099431

/-! ## A099431.P9580472339460664137

`Δ[A099429(n)]-A001045(n)`
-/

namespace A099431.P9580472339460664137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001045 n

end

end A099431.P9580472339460664137

namespace A099431

/-- `Δ[A099429(n)]-A001045(n)` -/
def P9580472339460664137.Spec : Prop :=
  ∀ n, P9580472339460664137.a n = A099431 n

end A099431

/-! ## A099431.P4584637323078260398

`A099429(n+1)-(A099429(n)+A001045(n))`
-/

namespace A099431.P4584637323078260398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099429 (n + 1) - (A099429 n + A001045 n)

end

end A099431.P4584637323078260398

namespace A099431

/-- `A099429(n+1)-(A099429(n)+A001045(n))` -/
def P4584637323078260398.Spec : Prop :=
  ∀ n, P4584637323078260398.a n = A099431 n

end A099431

/-! ## A099431.P16040911187159493616

`n*A115341(n)/4`
-/

namespace A099431.P16040911187159493616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A115341 n : ℚ) / 4

end

end A099431.P16040911187159493616

namespace A099431

/-- `n*A115341(n)/4` -/
def P16040911187159493616.Spec : Prop :=
  ∀ n, P16040911187159493616.a n = (A099431 n : ℚ)

end A099431

/-! ## A099431.P2038763134574047538

`2*A093835(n)-A001787(n)`
-/

namespace A099431.P2038763134574047538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093835 n - A001787 n

end

end A099431.P2038763134574047538

namespace A099431

/-- `2*A093835(n)-A001787(n)` -/
def P2038763134574047538.Spec : Prop :=
  ∀ n, P2038763134574047538.a n = A099431 n

end A099431

/-! ## A099431.P7714831420049679455

`A001787(n)-2*A099429(n)`
-/

namespace A099431.P7714831420049679455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n - 2 * A099429 n

end

end A099431.P7714831420049679455

namespace A099431

/-- `A001787(n)-2*A099429(n)` -/
def P7714831420049679455.Spec : Prop :=
  ∀ n, P7714831420049679455.a n = A099431 n

end A099431

/-! ## A099431.P17283643866815712344

`A036289(n)-(A193449(n)+A099429(n))`
-/

namespace A099431.P17283643866815712344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 n - (A193449 n + A099429 n)

end

end A099431.P17283643866815712344

namespace A099431

/-- `A036289(n)-(A193449(n)+A099429(n))` -/
def P17283643866815712344.Spec : Prop :=
  ∀ n, P17283643866815712344.a n = A099431 n

end A099431

/-!
# A099432: Convolution of A030195(n) (generalized (3,3)-Fibonacci) with itself.

The programs for A099432, the canonical program `A099432.P3215814776234349135` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099432 has offset 0).

The definition of A099432 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099432.P6335420368523721835

`∑{#}[floor((n+2)/2), #*C(n-#+2, #)*3^(n-#+1)]`
-/

namespace A099432.P6335420368523721835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (k * Nat.choose ((n : ℤ) - (k : ℤ) + 2).toNat k : ℚ) * (3 : ℚ) ^ ((n : ℤ) - (k : ℤ) + 1 : ℤ)

end

end A099432.P6335420368523721835

namespace A099432

/-- `∑{#}[floor((n+2)/2), #*C(n-#+2, #)*3^(n-#+1)]` -/
def P6335420368523721835.Spec : Prop :=
  ∀ n, P6335420368523721835.a n = (A099432 n : ℚ)

end A099432

/-! ## A099432.P11404033106349932973

`ogf(1/(1-6x+3x^2+18x^3+9x^4))`
-/

namespace A099432.P11404033106349932973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -6, 3, 18, 9] n

end

end A099432.P11404033106349932973

namespace A099432

/-- `ogf(1/(1-6x+3x^2+18x^3+9x^4))` -/
def P11404033106349932973.Spec : Prop :=
  ∀ n, P11404033106349932973.a n = A099432 n

end A099432

/-! ## A099432.P3215814776234349135

`6*a(n-1)-3*a(n-2)-18*a(n-3)-9*a(n-4)` with `a(0)=1, a(1)=6, a(2)=33, a(3)=162`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099432

/-- `6*a(n-1)-3*a(n-2)-18*a(n-3)-9*a(n-4)` -/
def P3215814776234349135.Spec : Prop :=
  ∀ n, P3215814776234349135.a n = A099432 n

theorem P3215814776234349135.correct : P3215814776234349135.Spec := by
  intro n
  simp only [A099432]

end A099432

/-! ## A099432.P15014002986037738085

`A128235(∑[n+1]+2)`
-/

namespace A099432.P15014002986037738085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128235 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A099432.P15014002986037738085

namespace A099432

/-- `A128235(∑[n+1]+2)` -/
def P15014002986037738085.Spec : Prop :=
  ∀ n, P15014002986037738085.a n = A099432 n

end A099432

/-! ## A099432.P3303723117515604877

`and(1-4/2, A128235(A133263(n+1)))`
-/

namespace A099432.P3303723117515604877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (1 - (4 : ℚ) / 2)) (A128235 (A133263 (n + 1)).toNat)

end

end A099432.P3303723117515604877

namespace A099432

/-- `and(1-4/2, A128235(A133263(n+1)))` -/
def P3303723117515604877.Spec : Prop :=
  ∀ n, P3303723117515604877.a n = A099432 n

end A099432

/-! ## A099432.P9807323593356883351

`A128235(A133263(n+1))%A291386(n)`
-/

namespace A099432.P9807323593356883351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128235 (A133263 (n + 1)).toNat) (A291386 n)

end

end A099432.P9807323593356883351

namespace A099432

/-- `A128235(A133263(n+1))%A291386(n)` -/
def P9807323593356883351.Spec : Prop :=
  ∀ n, P9807323593356883351.a n = A099432 n

end A099432

/-! ## A099432.P8910401507012239610

`A228495(2*n)+A128235(A133263(n+1))`
-/

namespace A099432.P8910401507012239610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228495 (2 * n) + A128235 (A133263 (n + 1)).toNat

end

end A099432.P8910401507012239610

namespace A099432

/-- `A228495(2*n)+A128235(A133263(n+1))` -/
def P8910401507012239610.Spec : Prop :=
  ∀ n, P8910401507012239610.a n = A099432 n

end A099432

/-! ## A099432.P5688452395260397414

`or(A019590(n+2), A128235(A133263(n+1)))`
-/

namespace A099432.P5688452395260397414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A019590 (n + 2)) (A128235 (A133263 (n + 1)).toNat)

end

end A099432.P5688452395260397414

namespace A099432

/-- `or(A019590(n+2), A128235(A133263(n+1)))` -/
def P5688452395260397414.Spec : Prop :=
  ∀ n, P5688452395260397414.a n = A099432 n

end A099432

/-! ## A099432.P3500198610335346399

`A007318(A000217(n+2))*A128235(A133263(n+1))`
-/

namespace A099432.P3500198610335346399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 2)).toNat * A128235 (A133263 (n + 1)).toNat

end

end A099432.P3500198610335346399

namespace A099432

/-- `A007318(A000217(n+2))*A128235(A133263(n+1))` -/
def P3500198610335346399.Spec : Prop :=
  ∀ n, P3500198610335346399.a n = A099432 n

end A099432

/-! ## A099432.P12972520751886680304

`A007318(A161680(n+7))*A128235(A133263(n+1))`
-/

namespace A099432.P12972520751886680304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A161680 (n + 7)).toNat * A128235 (A133263 (n + 1)).toNat

end

end A099432.P12972520751886680304

namespace A099432

/-- `A007318(A161680(n+7))*A128235(A133263(n+1))` -/
def P12972520751886680304.Spec : Prop :=
  ∀ n, P12972520751886680304.a n = A099432 n

end A099432

/-!
# A099433: Numbers m such that A066421(k) < A066421(n) for all k < m.

The programs for A099433, there is no canonical definition to state claims against.
-/

/-! ## A099433.P18305707710280111228

`A224183(∑[(n+2)^n])`
-/

namespace A099433.P18305707710280111228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224183 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099433.P18305707710280111228

/-!
# A099434: a(n) = A066421(A099433(n)). The value of A066421 on its record-holders.

The programs for A099434, there is no canonical definition to state claims against.
-/

/-! ## A099434.P10319110774151120402

`A066421(A099433(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A099434.P10319110774151120402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066421 (A099433 (n + 1)).toNat

end

end A099434.P10319110774151120402

/-!
# A099435: Number of simple class-1 graphs on n nodes.

The programs for A099435, there is no canonical definition to state claims against.
-/

/-! ## A099435.P5800567098730756702

`Δ[A006897(n)]-A099437(n+1)`
-/

namespace A099435.P5800567098730756702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A099437 (n + 1)

end

end A099435.P5800567098730756702

/-! ## A099435.P1678595565805668553

`A000088(n+1)-A099437(n+1)`
-/

namespace A099435.P1678595565805668553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - A099437 (n + 1)

end

end A099435.P1678595565805668553

/-! ## A099435.P1590226967348494807

`record[A327805(n)]-A099437(n+1)`
-/

namespace A099435.P1590226967348494807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A099437 (n + 1)

end

end A099435.P1590226967348494807

/-! ## A099435.P13532876364363607532

`A263284(A000124(n+1))-A099437(n+1)`
-/

namespace A099435.P13532876364363607532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263284 (A000124 (n + 1)).toNat - A099437 (n + 1)

end

end A099435.P13532876364363607532

/-!
# A099436: Number of simple connected class-1 graphs on n nodes.

The programs for A099436, there is no canonical definition to state claims against.
-/

/-! ## A099436.P14345537447470452012

`A001349(n+1)-A099438(n+1)`
-/

namespace A099436.P14345537447470452012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A099438 (n + 1)

end

end A099436.P14345537447470452012

/-! ## A099436.P6776139768200190595

`A201922(A000124(n))-A099438(n+1)`
-/

namespace A099436.P6776139768200190595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A000124 n).toNat - A099438 (n + 1)

end

end A099436.P6776139768200190595

/-! ## A099436.P16056294704209068068

`A224065(A119663(n+1))-A099438(n+1)`
-/

namespace A099436.P16056294704209068068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224065 (A119663 (n + 1)).toNat - A099438 (n + 1)

end

end A099436.P16056294704209068068

/-! ## A099436.P3662676270970735751

`A224065(eq[0, A321964(n)])-A099438(n+1)`
-/

namespace A099436.P3662676270970735751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - A099438 (n + 1)

end

end A099436.P3662676270970735751

/-!
# A099437: Number of simple class-2 graphs on n nodes.

The programs for A099437, there is no canonical definition to state claims against.
-/

/-! ## A099437.P8748146231670321704

`A000088(n+1)-A099435(n+1)`
-/

namespace A099437.P8748146231670321704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - A099435 (n + 1)

end

end A099437.P8748146231670321704

/-! ## A099437.P10129332868653072668

`Δ[A006897(n)]-A099435(n+1)`
-/

namespace A099437.P10129332868653072668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A099435 (n + 1)

end

end A099437.P10129332868653072668

/-! ## A099437.P15925678702154747549

`record[A327805(n)]-A099435(n+1)`
-/

namespace A099437.P15925678702154747549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A099435 (n + 1)

end

end A099437.P15925678702154747549

/-! ## A099437.P2542974643020380904

`record[A327805(n+2)]%A099435(n+1)`
-/

namespace A099437.P2542974643020380904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327805 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A099435 (n + 1))

end

end A099437.P2542974643020380904

/-!
# A099438: Number of simple connected class-2 graphs on n nodes.

The programs for A099438, there is no canonical definition to state claims against.
-/

/-! ## A099438.P10633835598859150261

`A001349(n+1)-A099436(n+1)`
-/

namespace A099438.P10633835598859150261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A099436 (n + 1)

end

end A099438.P10633835598859150261

/-! ## A099438.P8657650518597344109

`A201922(A000124(n))-A099436(n+1)`
-/

namespace A099438.P8657650518597344109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A000124 n).toNat - A099436 (n + 1)

end

end A099438.P8657650518597344109

/-! ## A099438.P17905635434074305457

`A224065(A119663(n+1))-A099436(n+1)`
-/

namespace A099438.P17905635434074305457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224065 (A119663 (n + 1)).toNat - A099436 (n + 1)

end

end A099438.P17905635434074305457

/-!
# A099439: Numbers k such that A000295(k) = 2^k-k-1 is prime.

The programs for A099439, there is no canonical definition to state claims against.
-/

/-! ## A099439.P18070299573226139771

`A063791(n+1)+1`
-/

namespace A099439.P18070299573226139771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063791 (n + 1) + 1

end

end A099439.P18070299573226139771

/-! ## A099439.P3747439218527579881

`A296031(n+1)-1`
-/

namespace A099439.P3747439218527579881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296031 (n + 1) - 1

end

end A099439.P3747439218527579881

/-! ## A099439.P1174439590113881858

`A092486(A063791(n+1))`
-/

namespace A099439.P1174439590113881858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (A063791 (n + 1)).toNat

end

end A099439.P1174439590113881858

/-!
# A099440: Primes of the form A000295(k) = 2^k - k - 1.

The programs for A099440, there is no canonical definition to state claims against.
-/

/-! ## A099440.P15550541794313930114

`A000295(A099439(n+1))`
-/

namespace A099440.P15550541794313930114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 (A099439 (n + 1)).toNat

end

end A099440.P15550541794313930114

/-! ## A099440.P17213144519826135293

`A000295(A063791(n+1)+1)`
-/

namespace A099440.P17213144519826135293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 (A063791 (n + 1) + 1).toNat

end

end A099440.P17213144519826135293

/-! ## A099440.P17062790606055784022

`A000295(A296031(n+1)-1)`
-/

namespace A099440.P17062790606055784022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 (A296031 (n + 1) - 1).toNat

end

end A099440.P17062790606055784022

/-! ## A099440.P15426550608770614050

`A000295(xor(1, A296031(n+1)))`
-/

namespace A099440.P15426550608770614050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 (Int.xor 1 (A296031 (n + 1))).toNat

end

end A099440.P15426550608770614050

/-! ## A099440.P2512624190782538359

`∩[A030196(n+1), A227885(n+1)]`
-/

namespace A099440.P2512624190782538359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099440.P2512624190782538359

/-!
# A099441: Numbers n such that A000295(n) = 2^n-n-1 is a semiprime.

The programs for A099441, there is no canonical definition to state claims against.
-/

/-! ## A099441.P12500988350942911123

`floor(log2(A099442(n+1)))+1`
-/

namespace A099441.P12500988350942911123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A099442 (n + 1)).toNat + 1

end

end A099441.P12500988350942911123

/-! ## A099441.P4651210150810537559

`ceil(log2(A099443(n)+A099442(n+1)))`
-/

namespace A099441.P4651210150810537559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A099443 n + A099442 (n + 1) : ℝ)⌉

end

end A099441.P4651210150810537559

/-! ## A099441.P632789143365905366

`ceil(log2(A349137(n+1)+A099442(n+1)))`
-/

namespace A099441.P632789143365905366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A349137 (n + 1) + A099442 (n + 1) : ℝ)⌉

end

end A099441.P632789143365905366

/-! ## A099441.P10798577964927057079

`ceil(log2(A099442(n+1)+A099425(n+2)))-1`
-/

namespace A099441.P10798577964927057079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A099442 (n + 1) + A099425 (n + 2) : ℝ)⌉ - 1

end

end A099441.P10798577964927057079

/-! ## A099441.P18364492332902168014

`A191675(A320328(n))+A004001(3*(n+1))`
-/

namespace A099441.P18364492332902168014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191675 (A320328 n).toNat + A004001 (3 * (n + 1))

end

end A099441.P18364492332902168014

/-!
# A099442: Semiprimes of the form 2^k-k-1.

The programs for A099442, there is no canonical definition to state claims against.
-/

/-! ## A099442.P10063759235674435733

`A000295(A099441(n+1))`
-/

namespace A099442.P10063759235674435733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 (A099441 (n + 1)).toNat

end

end A099442.P10063759235674435733

/-! ## A099442.P8529629147257623346

`A125128(A099441(n+1)-1)`
-/

namespace A099442.P8529629147257623346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125128 (A099441 (n + 1) - 1).toNat

end

end A099442.P8529629147257623346

/-! ## A099442.P1940331426284234333

`A145654(A099441(n+1))/p?[A228085(n)]`
-/

namespace A099442.P1940331426284234333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228085 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145654 (A099441 (n + 1)).toNat : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A099442.P1940331426284234333

/-! ## A099442.P10641201019066853151

`A145654(A099441(n+1))/A020639(2*(n+1))`
-/

namespace A099442.P10641201019066853151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145654 (A099441 (n + 1)).toNat : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A099442.P10641201019066853151

/-! ## A099442.P13498808419220933902

`A145654(A099441(n+1))/A000005(A006512(n+1))`
-/

namespace A099442.P13498808419220933902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145654 (A099441 (n + 1)).toNat : ℚ) / (A000005 (A006512 (n + 1)).toNat : ℚ)

end

end A099442.P13498808419220933902

/-!
# A099443: A Chebyshev transform of Fib(n+1).

The programs for A099443, the canonical program `A099443.P17618998521029560100` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099443 has offset 0).

The definition of A099443 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099443.P17618998521029560100

`-a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=0`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099443

/-- `-a(n-5)` -/
def P17618998521029560100.Spec : Prop :=
  ∀ n, P17618998521029560100.a n = A099443 n

theorem P17618998521029560100.correct : P17618998521029560100.Spec := by
  intro n
  simp only [A099443]

end A099443

/-!
# A099444: A Chebyshev transform of Fib(2n+2).

The programs for A099444, the canonical program `A099444.P5644600176746087132` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099444 has offset 0).

The definition of A099444 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099444.P5644600176746087132

`ogf((1+x^2)/(1-3x+3x^2-3x^3+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099444

/-- `ogf((1+x^2)/(1-3x+3x^2-3x^3+x^4))` -/
def P5644600176746087132.Spec : Prop :=
  ∀ n, P5644600176746087132.a n = A099444 n

theorem P5644600176746087132.correct : P5644600176746087132.Spec := by
  intro n
  simp only [A099444]

end A099444

/-! ## A099444.P14939902305172525956

`round((ϕ+1)*a(n-1)-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A099444.P14939902305172525956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  SequenceMachineLib.roundAway ((Real.goldenRatio + 1) * (a (n - 1) : ℝ) - (a (n - 2) : ℝ))

end

end A099444.P14939902305172525956

namespace A099444

/-- `round((ϕ+1)*a(n-1)-a(n-2))` -/
def P14939902305172525956.Spec : Prop :=
  ∀ n, P14939902305172525956.a n = A099444 n

end A099444

/-! ## A099444.P10089658958516741439

`round(a(n-1)/(2-ϕ))-a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A099444.P10089658958516741439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (2 - Real.goldenRatio)) - a (n - 2)

end

end A099444.P10089658958516741439

namespace A099444

/-- `round(a(n-1)/(2-ϕ))-a(n-2)` -/
def P10089658958516741439.Spec : Prop :=
  ∀ n, P10089658958516741439.a n = A099444 n

end A099444

/-! ## A099444.P18104385244408119653

`round(ϕ*a(n-1))-(a(n-2)-a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A099444.P18104385244408119653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ)) - (a (n - 2) - a (n - 1))

end

end A099444.P18104385244408119653

namespace A099444

/-- `round(ϕ*a(n-1))-(a(n-2)-a(n-1))` -/
def P18104385244408119653.Spec : Prop :=
  ∀ n, P18104385244408119653.a n = A099444 n

end A099444

/-! ## A099444.P9642672831190929825

`A099445(n)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A099444.P9642672831190929825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A099445 n + a (n - 2)

end

end A099444.P9642672831190929825

namespace A099444

/-- `A099445(n)+a(n-2)` -/
def P9642672831190929825.Spec : Prop :=
  ∀ n, P9642672831190929825.a n = A099444 n

end A099444

/-!
# A099445: An Alexander sequence for the Miller Institute knot.

The programs for A099445, the canonical program `A099445.P6753794134659625778` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099445 has offset 0).

The definition of A099445 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099445.P14063640624568570119

`ogf((1-x^4)/(1-3x+3x^2-3x^3+x^4))`
-/

namespace A099445.P14063640624568570119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 0, -1] [1, -3, 3, -3, 1] n

end

end A099445.P14063640624568570119

namespace A099445

/-- `ogf((1-x^4)/(1-3x+3x^2-3x^3+x^4))` -/
def P14063640624568570119.Spec : Prop :=
  ∀ n, P14063640624568570119.a n = A099445 n

end A099445

/-! ## A099445.P6753794134659625778

`3*a(n-1)-3*a(n-2)+3*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=12, a(4)=25`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099445

/-- `3*a(n-1)-3*a(n-2)+3*a(n-3)-a(n-4)` -/
def P6753794134659625778.Spec : Prop :=
  ∀ n, P6753794134659625778.a n = A099445 n

theorem P6753794134659625778.correct : P6753794134659625778.Spec := by
  intro n
  simp only [A099445]

end A099445

/-! ## A099445.P41493327945222065

`A185283(∑[∑[A122558(n)]])`
-/

namespace A099445.P41493327945222065
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122558 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A099445.P41493327945222065

namespace A099445

/-- `A185283(∑[∑[A122558(n)]])` -/
def P41493327945222065.Spec : Prop :=
  ∀ n, P41493327945222065.a n = A099445 n

end A099445

/-! ## A099445.P7577600885873586018

`∑[A005041(Δ[A232687(n)])]`
-/

namespace A099445.P7577600885873586018
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232687 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099445.P7577600885873586018

namespace A099445

/-- `∑[A005041(Δ[A232687(n)])]` -/
def P7577600885873586018.Spec : Prop :=
  ∀ n, P7577600885873586018.a n = A099445 n

end A099445

/-!
# A099446: A Chebyshev transform of A057083.

The programs for A099446, the canonical program `A099446.P4445013777832551893` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099446 has offset 0).

The definition of A099446 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099446.P4445013777832551893

`ogf((1+x^2)/(1-3x+5x^2-3x^3+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099446

/-- `ogf((1+x^2)/(1-3x+5x^2-3x^3+x^4))` -/
def P4445013777832551893.Spec : Prop :=
  ∀ n, P4445013777832551893.a n = A099446 n

theorem P4445013777832551893.correct : P4445013777832551893.Spec := by
  intro n
  simp only [A099446]

end A099446

/-! ## A099446.P111772775771671651

`∑{#}[n, A099447(n-#)*(1+(-1)^#)/2]`
-/

namespace A099446.P111772775771671651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A099447 (n - k) * (1 + (-1) ^ k) : ℚ) / 2

end

end A099446.P111772775771671651

namespace A099446

/-- `∑{#}[n, A099447(n-#)*(1+(-1)^#)/2]` -/
def P111772775771671651.Spec : Prop :=
  ∀ n, P111772775771671651.a n = (A099446 n : ℚ)

end A099446

/-! ## A099446.P12184270646495815795

`∑{#}[floor(n/2), C(n-#, #)*(-1)^#*A057083(n-2*#)]`
-/

namespace A099446.P12184270646495815795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose ((n : ℤ) - (k : ℤ)).toNat k : ℤ) * (-1) ^ k * A057083 (n - 2 * k)

end

end A099446.P12184270646495815795

namespace A099446

/-- `∑{#}[floor(n/2), C(n-#, #)*(-1)^#*A057083(n-2*#)]` -/
def P12184270646495815795.Spec : Prop :=
  ∀ n, P12184270646495815795.a n = A099446 n

end A099446

/-! ## A099446.P8211572652320591869

`A099447(n)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A099446.P8211572652320591869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A099447 n + a (n - 2)

end

end A099446.P8211572652320591869

namespace A099446

/-- `A099447(n)+a(n-2)` -/
def P8211572652320591869.Spec : Prop :=
  ∀ n, P8211572652320591869.a n = A099446 n

end A099446

/-! ## A099446.P17003484543671317239

`∑[A123879(n)]-Δ[A123879(n)]`
-/

namespace A099446.P17003484543671317239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123879 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (f2 (n + 1) - f2 n)

end

end A099446.P17003484543671317239

namespace A099446

/-- `∑[A123879(n)]-Δ[A123879(n)]` -/
def P17003484543671317239.Spec : Prop :=
  ∀ n, P17003484543671317239.a n = A099446 n

end A099446

/-! ## A099446.P16967263366970184955

`A199803(2*n)-Δ[A101496(2*n)]`
-/

namespace A099446.P16967263366970184955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101496 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199803 (2 * n) - (f1 (n + 1) - f1 n)

end

end A099446.P16967263366970184955

namespace A099446

/-- `A199803(2*n)-Δ[A101496(2*n)]` -/
def P16967263366970184955.Spec : Prop :=
  ∀ n, P16967263366970184955.a n = A099446 n

end A099446

/-! ## A099446.P1261484394289386131

`2*A199803(2*n)-A101496(2*n+1)`
-/

namespace A099446.P1261484394289386131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199803 (2 * n) - A101496 (2 * n + 1)

end

end A099446.P1261484394289386131

namespace A099446

/-- `2*A199803(2*n)-A101496(2*n+1)` -/
def P1261484394289386131.Spec : Prop :=
  ∀ n, P1261484394289386131.a n = A099446 n

end A099446

/-! ## A099446.P10225064678610149490

`A199803(2*(n+1))+A199803(2*n+3)+A199803(2*n)`
-/

namespace A099446.P10225064678610149490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199803 (2 * (n + 1)) + (A199803 (2 * n + 3) + A199803 (2 * n))

end

end A099446.P10225064678610149490

namespace A099446

/-- `A199803(2*(n+1))+A199803(2*n+3)+A199803(2*n)` -/
def P10225064678610149490.Spec : Prop :=
  ∀ n, P10225064678610149490.a n = A099446 n

end A099446

/-! ## A099446.P697888169337521871

`A001906(n+1)-3*A290891(n)`
-/

namespace A099446.P697888169337521871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1) - 3 * A290891 n

end

end A099446.P697888169337521871

namespace A099446

/-- `A001906(n+1)-3*A290891(n)` -/
def P697888169337521871.Spec : Prop :=
  ∀ n, P697888169337521871.a n = A099446 n

end A099446

/-!
# A099447: An Alexander sequence for the knot 6_3.

The programs for A099447, the canonical program `A099447.P10906942621988233157` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099447 has offset 0).

The definition of A099447 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099447.P10906942621988233157

`ogf((1-x^4)/(1-3x+5x^2-3x^3+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099447

/-- `ogf((1-x^4)/(1-3x+5x^2-3x^3+x^4))` -/
def P10906942621988233157.Spec : Prop :=
  ∀ n, P10906942621988233157.a n = A099447 n

theorem P10906942621988233157.correct : P10906942621988233157.Spec := by
  intro n
  simp only [A099447]

end A099447

/-!
# A099448: A Chebyshev transform of A030191 associated to the knot 7_6.

The programs for A099448, the canonical program `A099448.P15182197904241854295` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099448 has offset 0).

The definition of A099448 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099448.P15182197904241854295

`ogf((1+x^2)/(1-5x+7x^2-5x^3+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099448

/-- `ogf((1+x^2)/(1-5x+7x^2-5x^3+x^4))` -/
def P15182197904241854295.Spec : Prop :=
  ∀ n, P15182197904241854295.a n = A099448 n

theorem P15182197904241854295.correct : P15182197904241854295.Spec := by
  intro n
  simp only [A099448]

end A099448

/-! ## A099448.P9795233204051012284

`∑{#}[n, A099449(n-#)*(1+(-1)^#)/2]`
-/

namespace A099448.P9795233204051012284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A099449 (n - k) * (1 + (-1) ^ k) : ℚ) / 2

end

end A099448.P9795233204051012284

namespace A099448

/-- `∑{#}[n, A099449(n-#)*(1+(-1)^#)/2]` -/
def P9795233204051012284.Spec : Prop :=
  ∀ n, P9795233204051012284.a n = (A099448 n : ℚ)

end A099448

/-! ## A099448.P2220614646138236697

`∑{#}[floor(n/2), C(n-#, #)*(-1)^#*A030191(n-2*#)]`
-/

namespace A099448.P2220614646138236697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose ((n : ℤ) - (k : ℤ)).toNat k : ℤ) * (-1) ^ k * A030191 (n - 2 * k)

end

end A099448.P2220614646138236697

namespace A099448

/-- `∑{#}[floor(n/2), C(n-#, #)*(-1)^#*A030191(n-2*#)]` -/
def P2220614646138236697.Spec : Prop :=
  ∀ n, P2220614646138236697.a n = A099448 n

end A099448

/-! ## A099448.P5949926366844989757

`A099449(n)+a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A099448.P5949926366844989757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  A099449 n + a (n - 2)

end

end A099448.P5949926366844989757

namespace A099448

/-- `A099449(n)+a(n-2)` -/
def P5949926366844989757.Spec : Prop :=
  ∀ n, P5949926366844989757.a n = A099448 n

end A099448

/-! ## A099448.P17610476334153756022

`A289780(n)+A104630(n)`
-/

namespace A099448.P17610476334153756022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289780 n + A104630 n

end

end A099448.P17610476334153756022

namespace A099448

/-- `A289780(n)+A104630(n)` -/
def P17610476334153756022.Spec : Prop :=
  ∀ n, P17610476334153756022.a n = A099448 n

end A099448

/-! ## A099448.P1494309388573379237

`A104630(n)+A389933(n)+A104630(n)`
-/

namespace A099448.P1494309388573379237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104630 n + (A389933 n + A104630 n)

end

end A099448.P1494309388573379237

namespace A099448

/-- `A104630(n)+A389933(n)+A104630(n)` -/
def P1494309388573379237.Spec : Prop :=
  ∀ n, P1494309388573379237.a n = A099448 n

end A099448

/-! ## A099448.P1173264522304441690

`A289780(n)+A289780(n)-A389933(n)`
-/

namespace A099448.P1173264522304441690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289780 n + (A289780 n - A389933 n)

end

end A099448.P1173264522304441690

namespace A099448

/-- `A289780(n)+A289780(n)-A389933(n)` -/
def P1173264522304441690.Spec : Prop :=
  ∀ n, P1173264522304441690.a n = A099448 n

end A099448

/-! ## A099448.P14905329689182568094

`A289780(n)-A057428(n)*A104630(n)`
-/

namespace A099448.P14905329689182568094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289780 n - A057428 n * A104630 n

end

end A099448.P14905329689182568094

namespace A099448

/-- `A289780(n)-A057428(n)*A104630(n)` -/
def P14905329689182568094.Spec : Prop :=
  ∀ n, P14905329689182568094.a n = A099448 n

end A099448

/-! ## A099448.P15674101766841336729

`A389699(n+1)+A104630(n)-A389699(n)`
-/

namespace A099448.P15674101766841336729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389699 (n + 1) + (A104630 n - A389699 n)

end

end A099448.P15674101766841336729

namespace A099448

/-- `A389699(n+1)+A104630(n)-A389699(n)` -/
def P15674101766841336729.Spec : Prop :=
  ∀ n, P15674101766841336729.a n = A099448 n

end A099448

/-! ## A099448.P12431089702288747134

`A289780(n+1)+A289780(n)-A390824(n+1)`
-/

namespace A099448.P12431089702288747134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289780 (n + 1) + (A289780 n - A390824 (n + 1))

end

end A099448.P12431089702288747134

namespace A099448

/-- `A289780(n+1)+A289780(n)-A390824(n+1)` -/
def P12431089702288747134.Spec : Prop :=
  ∀ n, P12431089702288747134.a n = A099448 n

end A099448

/-!
# A099449: An Alexander sequence for the knot 7_6.

The programs for A099449, the canonical program `A099449.P2014112400289142465` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099449 has offset 0).

The definition of A099449 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099449.P13938419789562017420

`ogf((1-x^4)/(1-5x+7x^2-5x^3+x^4))`
-/

namespace A099449.P13938419789562017420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 0, -1] [1, -5, 7, -5, 1] n

end

end A099449.P13938419789562017420

namespace A099449

/-- `ogf((1-x^4)/(1-5x+7x^2-5x^3+x^4))` -/
def P13938419789562017420.Spec : Prop :=
  ∀ n, P13938419789562017420.a n = A099449 n

end A099449

/-! ## A099449.P2014112400289142465

`5*a(n-1)-7*a(n-2)+5*a(n-3)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=18, a(3)=60, a(4)=197`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099449

/-- `5*a(n-1)-7*a(n-2)+5*a(n-3)-a(n-4)` -/
def P2014112400289142465.Spec : Prop :=
  ∀ n, P2014112400289142465.a n = A099449 n

theorem P2014112400289142465.correct : P2014112400289142465.Spec := by
  intro n
  simp only [A099449]

end A099449

/-!
# A099450: Expansion of 1/(1 - 5*x + 7*x^2).

The programs for A099450, the canonical program `A099450.P5144300585578809018` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099450 has offset 0).

The definition of A099450 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-5x+7x^2))` (program `A099450.P5144300585578809018`, by `A099450.P5144300585578809018.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099450.P5144300585578809018

`ogf(1/(1-5x+7x^2))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099450

/-- `ogf(1/(1-5x+7x^2))` -/
def P5144300585578809018.Spec : Prop :=
  ∀ n, P5144300585578809018.a n = A099450 n

theorem P5144300585578809018.correct : P5144300585578809018.Spec := by
  intro n
  simp only [A099450]

end A099450

/-! ## A099450.P4544998244920155766

`5*a(n-1)-7*a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A099450.P4544998244920155766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  5 * a (n - 1) - 7 * a (n - 2)

end

end A099450.P4544998244920155766

namespace A099450

/-- `5*a(n-1)-7*a(n-2)` -/
def P4544998244920155766.Spec : Prop :=
  ∀ n, P4544998244920155766.a n = A099450 n

end A099450

/-!
# A099451: A Chebyshev transform of A099450 associated to the knot 7_7.

The programs for A099451, the canonical program `A099451.P11663743513202144528` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099451 has offset 0).

The definition of A099451 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099451.P11663743513202144528

`ogf((1+x^2)/(1-5x+9x^2-5x^3+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099451

/-- `ogf((1+x^2)/(1-5x+9x^2-5x^3+x^4))` -/
def P11663743513202144528.Spec : Prop :=
  ∀ n, P11663743513202144528.a n = A099451 n

theorem P11663743513202144528.correct : P11663743513202144528.Spec := by
  intro n
  simp only [A099451]

end A099451

/-! ## A099451.P2865843219841088845

`A099452(n)+a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A099451.P2865843219841088845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  A099452 n + a (n - 2)

end

end A099451.P2865843219841088845

namespace A099451

/-- `A099452(n)+a(n-2)` -/
def P2865843219841088845.Spec : Prop :=
  ∀ n, P2865843219841088845.a n = A099451 n

end A099451

/-! ## A099451.P15664144828891833891

`∑[A099452(n)]-a(A023443(n))` with `a(0)=1, a(1)=5`
-/

namespace A099451.P15664144828891833891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099452 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (A023443 n).toNat

end

end A099451.P15664144828891833891

namespace A099451

/-- `∑[A099452(n)]-a(A023443(n))` -/
def P15664144828891833891.Spec : Prop :=
  ∀ n, P15664144828891833891.a n = A099451 n

end A099451

/-! ## A099451.P6994121517265169723

`∑[A099452(n)]-a(A028310(n)-1)` with `a(0)=1, a(1)=5`
-/

namespace A099451.P6994121517265169723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099452 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (A028310 n - 1).toNat

end

end A099451.P6994121517265169723

namespace A099451

/-- `∑[A099452(n)]-a(A028310(n)-1)` -/
def P6994121517265169723.Spec : Prop :=
  ∀ n, P6994121517265169723.a n = A099451 n

end A099451

/-! ## A099451.P2928896449238405885

`A099452(n)-(A000038(n)-a(n-2))` with `a(0)=1, a(1)=5`
-/

namespace A099451.P2928896449238405885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  A099452 n - (A000038 n - a (n - 2))

end

end A099451.P2928896449238405885

namespace A099451

/-- `A099452(n)-(A000038(n)-a(n-2))` -/
def P2928896449238405885.Spec : Prop :=
  ∀ n, P2928896449238405885.a n = A099451 n

end A099451

/-!
# A099452: An Alexander sequence for the knot 7_7.

The programs for A099452, the canonical program `A099452.P1034614990282009816` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099452 has offset 0).

The definition of A099452 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099452.P1034614990282009816

`ogf((1-x^4)/(1-5x+9x^2-5x^3+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099452

/-- `ogf((1-x^4)/(1-5x+9x^2-5x^3+x^4))` -/
def P1034614990282009816.Spec : Prop :=
  ∀ n, P1034614990282009816.a n = A099452 n

theorem P1034614990282009816.correct : P1034614990282009816.Spec := by
  intro n
  simp only [A099452]

end A099452

/-!
# A099453: Expansion of 1/(1 - 7*x + 11*x^2).

The programs for A099453, the canonical program `A099453.P17267597087897274543` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099453 has offset 0).

The definition of A099453 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-7x+11x^2))` (program `A099453.P17267597087897274543`, by `A099453.P17267597087897274543.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099453.P17267597087897274543

`ogf(1/(1-7x+11x^2))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099453

/-- `ogf(1/(1-7x+11x^2))` -/
def P17267597087897274543.Spec : Prop :=
  ∀ n, P17267597087897274543.a n = A099453 n

theorem P17267597087897274543.correct : P17267597087897274543.Spec := by
  intro n
  simp only [A099453]

end A099453

/-! ## A099453.P15855214530397450152

`7*a(n-1)-11*a(n-2)` with `a(0)=1, a(1)=7`
-/

namespace A099453.P15855214530397450152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  7 * a (n - 1) - 11 * a (n - 2)

end

end A099453.P15855214530397450152

namespace A099453

/-- `7*a(n-1)-11*a(n-2)` -/
def P15855214530397450152.Spec : Prop :=
  ∀ n, P15855214530397450152.a n = A099453 n

end A099453

/-! ## A099453.P7323865678491239727

`A289783(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A099453.P7323865678491239727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A289783 n + 2 * a (n - 1)

end

end A099453.P7323865678491239727

namespace A099453

/-- `A289783(n)+2*a(n-1)` -/
def P7323865678491239727.Spec : Prop :=
  ∀ n, P7323865678491239727.a n = A099453 n

end A099453

/-! ## A099453.P9063763517500863915

`A081568(n+1)-A192240(n+1)`
-/

namespace A099453.P9063763517500863915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081568 (n + 1) - A192240 (n + 1)

end

end A099453.P9063763517500863915

namespace A099453

/-- `A081568(n+1)-A192240(n+1)` -/
def P9063763517500863915.Spec : Prop :=
  ∀ n, P9063763517500863915.a n = A099453 n

end A099453

/-! ## A099453.P12477806828303966051

`A289783(n+1)-A081568(n+1)`
-/

namespace A099453.P12477806828303966051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289783 (n + 1) - A081568 (n + 1)

end

end A099453.P12477806828303966051

namespace A099453

/-- `A289783(n+1)-A081568(n+1)` -/
def P12477806828303966051.Spec : Prop :=
  ∀ n, P12477806828303966051.a n = A099453 n

end A099453

/-! ## A099453.P18348494622430299362

`A081568(n+2)%A081568(n+1)`
-/

namespace A099453.P18348494622430299362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081568 (n + 2)) (A081568 (n + 1))

end

end A099453.P18348494622430299362

namespace A099453

/-- `A081568(n+2)%A081568(n+1)` -/
def P18348494622430299362.Spec : Prop :=
  ∀ n, P18348494622430299362.a n = A099453 n

end A099453

/-! ## A099453.P12409068243033256780

`∑[A163147(n)/2^n]`
-/

namespace A099453.P12409068243033256780
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163147 n : ℚ) / (2 ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099453.P12409068243033256780

namespace A099453

/-- `∑[A163147(n)/2^n]` -/
def P12409068243033256780.Spec : Prop :=
  ∀ n, P12409068243033256780.a n = (A099453 n : ℚ)

end A099453

/-! ## A099453.P9981184532566997922

`A153884(n+1)/2^n`
-/

namespace A099453.P9981184532566997922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153884 (n + 1) : ℚ) / (2 ^ n : ℚ)

end

end A099453.P9981184532566997922

namespace A099453

/-- `A153884(n+1)/2^n` -/
def P9981184532566997922.Spec : Prop :=
  ∀ n, P9981184532566997922.a n = (A099453 n : ℚ)

end A099453

/-! ## A099453.P8880366665039362942

`round(A153884(n+1)/A000079(n))`
-/

namespace A099453.P8880366665039362942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A153884 (n + 1) : ℚ) / (A000079 n : ℚ))

end

end A099453.P8880366665039362942

namespace A099453

/-- `round(A153884(n+1)/A000079(n))` -/
def P8880366665039362942.Spec : Prop :=
  ∀ n, P8880366665039362942.a n = A099453 n

end A099453

/-!
# A099454: A Chebyshev transform of A099453 associated to the knot 8_12.

The programs for A099454, the canonical program `A099454.P12651229851247002803` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099454 has offset 0).

The definition of A099454 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099454.P12651229851247002803

`ogf((1+x^2)/(1-7x+13x^2-7x^3+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099454

/-- `ogf((1+x^2)/(1-7x+13x^2-7x^3+x^4))` -/
def P12651229851247002803.Spec : Prop :=
  ∀ n, P12651229851247002803.a n = A099454 n

theorem P12651229851247002803.correct : P12651229851247002803.Spec := by
  intro n
  simp only [A099454]

end A099454

/-! ## A099454.P12208469022571487480

`∑{#}[floor(n/2), C(n-#, #)*(-1)^#*A099453(n-2*#)]`
-/

namespace A099454.P12208469022571487480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose ((n : ℤ) - (k : ℤ)).toNat k : ℤ) * (-1) ^ k * A099453 (n - 2 * k)

end

end A099454.P12208469022571487480

namespace A099454

/-- `∑{#}[floor(n/2), C(n-#, #)*(-1)^#*A099453(n-2*#)]` -/
def P12208469022571487480.Spec : Prop :=
  ∀ n, P12208469022571487480.a n = A099454 n

end A099454

/-! ## A099454.P11744016973648422329

`A099455(n)+a(n-2)` with `a(0)=1, a(1)=7`
-/

namespace A099454.P11744016973648422329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  A099455 n + a (n - 2)

end

end A099454.P11744016973648422329

namespace A099454

/-- `A099455(n)+a(n-2)` -/
def P11744016973648422329.Spec : Prop :=
  ∀ n, P11744016973648422329.a n = A099454 n

end A099454

/-! ## A099454.P2197083122122072107

`A099455(n)-(A000038(n)-a(n-2))` with `a(0)=1, a(1)=7`
-/

namespace A099454.P2197083122122072107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  A099455 n - (A000038 n - a (n - 2))

end

end A099454.P2197083122122072107

namespace A099454

/-- `A099455(n)-(A000038(n)-a(n-2))` -/
def P2197083122122072107.Spec : Prop :=
  ∀ n, P2197083122122072107.a n = A099454 n

end A099454

/-! ## A099454.P307280843929096596

`A131322(2*n+1)+2*A192232(2*(n+1))`
-/

namespace A099454.P307280843929096596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131322 (2 * n + 1) + 2 * A192232 (2 * (n + 1))

end

end A099454.P307280843929096596

namespace A099454

/-- `A131322(2*n+1)+2*A192232(2*(n+1))` -/
def P307280843929096596.Spec : Prop :=
  ∀ n, P307280843929096596.a n = A099454 n

end A099454

/-! ## A099454.P10007839130484757261

`A112576(2*n+1)+3*A192232(2*(n+1))`
-/

namespace A099454.P10007839130484757261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112576 (2 * n + 1) + 3 * A192232 (2 * (n + 1))

end

end A099454.P10007839130484757261

namespace A099454

/-- `A112576(2*n+1)+3*A192232(2*(n+1))` -/
def P10007839130484757261.Spec : Prop :=
  ∀ n, P10007839130484757261.a n = A099454 n

end A099454

/-! ## A099454.P6031290553724297155

`A192232(A233583(2*n+1))+A192232(2*(n+2))`
-/

namespace A099454.P6031290553724297155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192232 (A233583 (2 * n + 1)).toNat + A192232 (2 * (n + 2))

end

end A099454.P6031290553724297155

namespace A099454

/-- `A192232(A233583(2*n+1))+A192232(2*(n+2))` -/
def P6031290553724297155.Spec : Prop :=
  ∀ n, P6031290553724297155.a n = A099454 n

end A099454

/-!
# A099455: An Alexander sequence for the knot 8_12.

The programs for A099455, the canonical program `A099455.P4535009247870756930` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099455 has offset 0).

The definition of A099455 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099455.P4535009247870756930

`ogf((1-x^4)/(1-7x+13x^2-7x^3+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099455

/-- `ogf((1-x^4)/(1-7x+13x^2-7x^3+x^4))` -/
def P4535009247870756930.Spec : Prop :=
  ∀ n, P4535009247870756930.a n = A099455 n

theorem P4535009247870756930.correct : P4535009247870756930.Spec := by
  intro n
  simp only [A099455]

end A099455

/-! ## A099455.P17065524293942536161

`A192232(2*(n+2))-A151755(A063896(n))`
-/

namespace A099455.P17065524293942536161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192232 (2 * (n + 2)) - A151755 (A063896 n).toNat

end

end A099455.P17065524293942536161

namespace A099455

/-- `A192232(2*(n+2))-A151755(A063896(n))` -/
def P17065524293942536161.Spec : Prop :=
  ∀ n, P17065524293942536161.a n = A099455 n

end A099455

/-!
# A099456: Expansion of 1/(1 - 4*x + 5*x^2).

The programs for A099456, the canonical program `A099456.P486373569608515104` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099456 has offset 0).

The definition of A099456 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x+5x^2))` (program `A099456.P486373569608515104`, by `A099456.P486373569608515104.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099456.P486373569608515104

`ogf(1/(1-4x+5x^2))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099456

/-- `ogf(1/(1-4x+5x^2))` -/
def P486373569608515104.Spec : Prop :=
  ∀ n, P486373569608515104.a n = A099456 n

theorem P486373569608515104.correct : P486373569608515104.Spec := by
  intro n
  simp only [A099456]

end A099456

/-! ## A099456.P3725307300336112958

`4*a(n-1)-5*a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A099456.P3725307300336112958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 * a (n - 1) - 5 * a (n - 2)

end

end A099456.P3725307300336112958

namespace A099456

/-- `4*a(n-1)-5*a(n-2)` -/
def P3725307300336112958.Spec : Prop :=
  ∀ n, P3725307300336112958.a n = A099456 n

end A099456

/-! ## A099456.P2645824166273826105

`∑{#}[n, (-1)^#*2^(n-2*#)*C(n+1, 2*#+1)]`
-/

namespace A099456.P2645824166273826105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((-1) ^ k : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (2 * k : ℤ) : ℤ) * (Nat.choose (n + 1) (2 * k + 1) : ℚ)

end

end A099456.P2645824166273826105

namespace A099456

/-- `∑{#}[n, (-1)^#*2^(n-2*#)*C(n+1, 2*#+1)]` -/
def P2645824166273826105.Spec : Prop :=
  ∀ n, P2645824166273826105.a n = (A099456 n : ℚ)

end A099456

/-! ## A099456.P5774803329803002554

`∏[4-5/a(n-1)]` with `a(0)=1, a(1)=4`
-/

namespace A099456.P5774803329803002554
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  4 - 5 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A099456.P5774803329803002554

namespace A099456

/-- `∏[4-5/a(n-1)]` -/
def P5774803329803002554.Spec : Prop :=
  ∀ n, P5774803329803002554.a n = (A099456 n : ℚ)

end A099456

/-! ## A099456.P6402975505202652376

`∑[A102486(n)/2]`
-/

namespace A099456.P6402975505202652376
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102486 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099456.P6402975505202652376

namespace A099456

/-- `∑[A102486(n)/2]` -/
def P6402975505202652376.Spec : Prop :=
  ∀ n, P6402975505202652376.a n = (A099456 n : ℚ)

end A099456

/-! ## A099456.P1423135652389361248

`A139011(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A099456.P1423135652389361248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A139011 n + 2 * a (n - 1)

end

end A099456.P1423135652389361248

namespace A099456

/-- `A139011(n)+2*a(n-1)` -/
def P1423135652389361248.Spec : Prop :=
  ∀ n, P1423135652389361248.a n = A099456 n

end A099456

/-! ## A099456.P11632520648395938059

`A102486(n)-A139011(n)`
-/

namespace A099456.P11632520648395938059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102486 n - A139011 n

end

end A099456.P11632520648395938059

namespace A099456

/-- `A102486(n)-A139011(n)` -/
def P11632520648395938059.Spec : Prop :=
  ∀ n, P11632520648395938059.a n = A099456 n

end A099456

/-!
# A099457: A Chebyshev transform of A099456 associated to the knot 9_44.

The programs for A099457, the canonical program `A099457.P15016947095913996561` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099457 has offset 0).

The definition of A099457 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099457.P15016947095913996561

`ogf((1+x^2)/(1-4x+7x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099457

/-- `ogf((1+x^2)/(1-4x+7x^2-4x^3+x^4))` -/
def P15016947095913996561.Spec : Prop :=
  ∀ n, P15016947095913996561.a n = A099457 n

theorem P15016947095913996561.correct : P15016947095913996561.Spec := by
  intro n
  simp only [A099457]

end A099457

/-! ## A099457.P7922927775002123975

`∑{#}[n, A099458(n-#)*(1+(-1)^#)/2]`
-/

namespace A099457.P7922927775002123975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A099458 (n - k) * (1 + (-1) ^ k) : ℚ) / 2

end

end A099457.P7922927775002123975

namespace A099457

/-- `∑{#}[n, A099458(n-#)*(1+(-1)^#)/2]` -/
def P7922927775002123975.Spec : Prop :=
  ∀ n, P7922927775002123975.a n = (A099457 n : ℚ)

end A099457

/-! ## A099457.P8671303358715385307

`∑{#}[floor(n/2), C(n-#, #)*(-1)^#*A099456(n-2*#)]`
-/

namespace A099457.P8671303358715385307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose ((n : ℤ) - (k : ℤ)).toNat k : ℤ) * (-1) ^ k * A099456 (n - 2 * k)

end

end A099457.P8671303358715385307

namespace A099457

/-- `∑{#}[floor(n/2), C(n-#, #)*(-1)^#*A099456(n-2*#)]` -/
def P8671303358715385307.Spec : Prop :=
  ∀ n, P8671303358715385307.a n = A099457 n

end A099457

/-! ## A099457.P5021562949853870979

`A099458(n)+a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A099457.P5021562949853870979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A099458 n + a (n - 2)

end

end A099457.P5021562949853870979

namespace A099457

/-- `A099458(n)+a(n-2)` -/
def P5021562949853870979.Spec : Prop :=
  ∀ n, P5021562949853870979.a n = A099457 n

end A099457

/-! ## A099457.P12317729538252172933

`A099458(n)-((A000005(n)%2)!-2)*a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A099457.P12317729538252172933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A099458 n - ((Nat.factorial (Int.tmod (A000005 n) 2).toNat : ℤ) - 2) * a (n - 2)

end

end A099457.P12317729538252172933

namespace A099457

/-- `A099458(n)-((A000005(n)%2)!-2)*a(n-2)` -/
def P12317729538252172933.Spec : Prop :=
  ∀ n, P12317729538252172933.a n = A099457 n

end A099457

/-!
# A099458: An Alexander sequence for the knot 9_44.

The programs for A099458, the canonical program `A099458.P6156282954064048150` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099458 has offset 0).

The definition of A099458 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099458.P6156282954064048150

`ogf((1-x^4)/(1-4x+7x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099458

/-- `ogf((1-x^4)/(1-4x+7x^2-4x^3+x^4))` -/
def P6156282954064048150.Spec : Prop :=
  ∀ n, P6156282954064048150.a n = A099458 n

theorem P6156282954064048150.correct : P6156282954064048150.Spec := by
  intro n
  simp only [A099458]

end A099458

/-!
# A099459: Expansion of 1/(1 - 7*x + 9*x^2).

The programs for A099459, the canonical program `A099459.P12336679495138184667` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099459 has offset 0).

The definition of A099459 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-7x+9x^2))` (program `A099459.P12336679495138184667`, by `A099459.P12336679495138184667.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099459.P12336679495138184667

`ogf(1/(1-7x+9x^2))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099459

/-- `ogf(1/(1-7x+9x^2))` -/
def P12336679495138184667.Spec : Prop :=
  ∀ n, P12336679495138184667.a n = A099459 n

theorem P12336679495138184667.correct : P12336679495138184667.Spec := by
  intro n
  simp only [A099459]

end A099459

/-! ## A099459.P5147526100835783456

`7*a(n-1)-9*a(n-2)` with `a(0)=1, a(1)=7`
-/

namespace A099459.P5147526100835783456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  7 * a (n - 1) - 9 * a (n - 2)

end

end A099459.P5147526100835783456

namespace A099459

/-- `7*a(n-1)-9*a(n-2)` -/
def P5147526100835783456.Spec : Prop :=
  ∀ n, P5147526100835783456.a n = A099459 n

end A099459

/-! ## A099459.P9097574443001697491

`∑{#}[n, C(2*n-#+1, #)*3^#]`
-/

namespace A099459.P9097574443001697491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose ((2 * n : ℤ) - (k : ℤ) + 1).toNat k * 3 ^ k

end

end A099459.P9097574443001697491

namespace A099459

/-- `∑{#}[n, C(2*n-#+1, #)*3^#]` -/
def P9097574443001697491.Spec : Prop :=
  ∀ n, (P9097574443001697491.a n : ℤ) = A099459 n

end A099459

/-! ## A099459.P12752520942631006943

`∑{#}[floor(n/2), C(n-#, #)*(-9)^#*7^(n-2*#)]`
-/

namespace A099459.P12752520942631006943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ((Nat.choose ((n : ℤ) - (k : ℤ)).toNat k : ℤ) * (-9) ^ k : ℚ) * (7 : ℚ) ^ ((n : ℤ) - (2 * k : ℤ) : ℤ)

end

end A099459.P12752520942631006943

namespace A099459

/-- `∑{#}[floor(n/2), C(n-#, #)*(-9)^#*7^(n-2*#)]` -/
def P12752520942631006943.Spec : Prop :=
  ∀ n, P12752520942631006943.a n = (A099459 n : ℚ)

end A099459

/-! ## A099459.P17911012893378655635

`((7+sqrt(13))^(n+1)-(7-sqrt(13))^(n+1))/(2^(n+1)*sqrt(13))`
-/

namespace A099459.P17911012893378655635
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((7 + Real.sqrt (13 : ℝ)) ^ (n + 1) - (7 - Real.sqrt (13 : ℝ)) ^ (n + 1)) / ((2 ^ (n + 1) : ℝ) * Real.sqrt (13 : ℝ))

end

end A099459.P17911012893378655635

namespace A099459

/-- `((7+sqrt(13))^(n+1)-(7-sqrt(13))^(n+1))/(2^(n+1)*sqrt(13))` -/
def P17911012893378655635.Spec : Prop :=
  ∀ n, P17911012893378655635.a n = (A099459 n : ℝ)

end A099459

/-! ## A099459.P7942479775471425445

`A006130(Δ[n²])`
-/

namespace A099459.P7942479775471425445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099459.P7942479775471425445

namespace A099459

/-- `A006130(Δ[n²])` -/
def P7942479775471425445.Spec : Prop :=
  ∀ n, P7942479775471425445.a n = A099459 n

end A099459

/-! ## A099459.P3739415966354777847

`∑[record[A152167(n)]]`
-/

namespace A099459.P3739415966354777847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152167 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099459.P3739415966354777847

namespace A099459

/-- `∑[record[A152167(n)]]` -/
def P3739415966354777847.Spec : Prop :=
  ∀ n, P3739415966354777847.a n = A099459 n

end A099459

/-! ## A099459.P15234356440271741000

`∑[A152167(2*n)]`
-/

namespace A099459.P15234356440271741000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152167 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099459.P15234356440271741000

namespace A099459

/-- `∑[A152167(2*n)]` -/
def P15234356440271741000.Spec : Prop :=
  ∀ n, P15234356440271741000.a n = A099459 n

end A099459

/-! ## A099459.P9697925294638824794

`∑[A105476(Δ[n²])]`
-/

namespace A099459.P9697925294638824794
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105476 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099459.P9697925294638824794

namespace A099459

/-- `∑[A105476(Δ[n²])]` -/
def P9697925294638824794.Spec : Prop :=
  ∀ n, P9697925294638824794.a n = A099459 n

end A099459

/-! ## A099459.P8860262921370210891

`A099579(2*(n+1))`
-/

namespace A099459.P8860262921370210891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099579 (2 * (n + 1))

end

end A099459.P8860262921370210891

namespace A099459

/-- `A099579(2*(n+1))` -/
def P8860262921370210891.Spec : Prop :=
  ∀ n, P8860262921370210891.a n = A099459 n

end A099459

/-! ## A099459.P9074340499177690822

`record[-A182228(n+2)]`
-/

namespace A099459.P9074340499177690822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A182228 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099459.P9074340499177690822

namespace A099459

/-- `record[-A182228(n+2)]` -/
def P9074340499177690822.Spec : Prop :=
  ∀ n, P9074340499177690822.a n = A099459 n

end A099459

/-! ## A099459.P10768624252797100679

`A105963(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A099459.P10768624252797100679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A105963 (2 * n) - a (n - 1)

end

end A099459.P10768624252797100679

namespace A099459

/-- `A105963(2*n)-a(n-1)` -/
def P10768624252797100679.Spec : Prop :=
  ∀ n, P10768624252797100679.a n = A099459 n

end A099459

/-! ## A099459.P8445596729158622068

`A112831(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A099459.P8445596729158622068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A112831 n + 5 * a (n - 1)

end

end A099459.P8445596729158622068

namespace A099459

/-- `A112831(n)+5*a(n-1)` -/
def P8445596729158622068.Spec : Prop :=
  ∀ n, P8445596729158622068.a n = A099459 n

end A099459

/-! ## A099459.P3772547495779701763

`A152167(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A099459.P3772547495779701763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A152167 (n + n) + a (n - 1)

end

end A099459.P3772547495779701763

namespace A099459

/-- `A152167(n+n)+a(n-1)` -/
def P3772547495779701763.Spec : Prop :=
  ∀ n, P3772547495779701763.a n = A099459 n

end A099459

/-! ## A099459.P13024951437224171877

`A006130(n)*A075118(n+1)`
-/

namespace A099459.P13024951437224171877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 n * A075118 (n + 1)

end

end A099459.P13024951437224171877

namespace A099459

/-- `A006130(n)*A075118(n+1)` -/
def P13024951437224171877.Spec : Prop :=
  ∀ n, P13024951437224171877.a n = A099459 n

end A099459

/-! ## A099459.P14756326160652724425

`Δ[Δ[A112831(n)]]-A112831(n)`
-/

namespace A099459.P14756326160652724425
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112831 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A112831 n

end

end A099459.P14756326160652724425

namespace A099459

/-- `Δ[Δ[A112831(n)]]-A112831(n)` -/
def P14756326160652724425.Spec : Prop :=
  ∀ n, P14756326160652724425.a n = A099459 n

end A099459

/-! ## A099459.P5845196039206599069

`A182228(2*n)+A105963(2*n)`
-/

namespace A099459.P5845196039206599069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182228 (2 * n) + A105963 (2 * n)

end

end A099459.P5845196039206599069

namespace A099459

/-- `A182228(2*n)+A105963(2*n)` -/
def P5845196039206599069.Spec : Prop :=
  ∀ n, P5845196039206599069.a n = A099459 n

end A099459

/-! ## A099459.P6801830204917086712

`A105963(2*n)-A099579(2*n)`
-/

namespace A099459.P6801830204917086712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105963 (2 * n) - A099579 (2 * n)

end

end A099459.P6801830204917086712

namespace A099459

/-- `A105963(2*n)-A099579(2*n)` -/
def P6801830204917086712.Spec : Prop :=
  ∀ n, P6801830204917086712.a n = A099459 n

end A099459

/-! ## A099459.P4134495016503487811

`A006130(2*n+1)+A000007(n+1)`
-/

namespace A099459.P4134495016503487811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 (2 * n + 1) + A000007 (n + 1)

end

end A099459.P4134495016503487811

namespace A099459

/-- `A006130(2*n+1)+A000007(n+1)` -/
def P4134495016503487811.Spec : Prop :=
  ∀ n, P4134495016503487811.a n = A099459 n

end A099459

/-! ## A099459.P1637261501619537044

`A006130(2*n+1)+A000035(2*n)`
-/

namespace A099459.P1637261501619537044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 (2 * n + 1) + A000035 (2 * n)

end

end A099459.P1637261501619537044

namespace A099459

/-- `A006130(2*n+1)+A000035(2*n)` -/
def P1637261501619537044.Spec : Prop :=
  ∀ n, P1637261501619537044.a n = A099459 n

end A099459

/-!
# A099460: A Chebyshev transform of A099459 associated to the knot 9_48.

The programs for A099460, the canonical program `A099460.P16114135887233208913` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099460 has offset 0).

The definition of A099460 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099460.P16114135887233208913

`ogf((1+x^2)/(1-7x+11x^2-7x^3+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099460

/-- `ogf((1+x^2)/(1-7x+11x^2-7x^3+x^4))` -/
def P16114135887233208913.Spec : Prop :=
  ∀ n, P16114135887233208913.a n = A099460 n

theorem P16114135887233208913.correct : P16114135887233208913.Spec := by
  intro n
  simp only [A099460]

end A099460

/-! ## A099460.P13481525144033922926

`∑{#}[floor(n/2), C(n-#, #)*(-1)^#*A099459(n-2*#)]`
-/

namespace A099460.P13481525144033922926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose ((n : ℤ) - (k : ℤ)).toNat k : ℤ) * (-1) ^ k * A099459 (n - 2 * k)

end

end A099460.P13481525144033922926

namespace A099460

/-- `∑{#}[floor(n/2), C(n-#, #)*(-1)^#*A099459(n-2*#)]` -/
def P13481525144033922926.Spec : Prop :=
  ∀ n, P13481525144033922926.a n = A099460 n

end A099460

/-! ## A099460.P9884971329325245690

`A099461(n)+a(n-2)` with `a(0)=1, a(1)=7`
-/

namespace A099460.P9884971329325245690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  A099461 n + a (n - 2)

end

end A099460.P9884971329325245690

namespace A099460

/-- `A099461(n)+a(n-2)` -/
def P9884971329325245690.Spec : Prop :=
  ∀ n, P9884971329325245690.a n = A099460 n

end A099460

/-!
# A099461: An Alexander sequence for the knot 9_48.

The programs for A099461, the canonical program `A099461.P292420770641898495` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099461 has offset 0).

The definition of A099461 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099461.P292420770641898495

`ogf((1-x^4)/(1-7x+11x^2-7x^3+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099461

/-- `ogf((1-x^4)/(1-7x+11x^2-7x^3+x^4))` -/
def P292420770641898495.Spec : Prop :=
  ∀ n, P292420770641898495.a n = A099461 n

theorem P292420770641898495.correct : P292420770641898495.Spec := by
  intro n
  simp only [A099461]

end A099461

/-! ## A099461.P10642263071729006338

`A005379(Δ[Δ[A116732(3*n)]])`
-/

namespace A099461.P10642263071729006338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116732 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 (f1 (n + 1) - f1 n).toNat

end

end A099461.P10642263071729006338

namespace A099461

/-- `A005379(Δ[Δ[A116732(3*n)]])` -/
def P10642263071729006338.Spec : Prop :=
  ∀ n, P10642263071729006338.a n = A099461 n

end A099461

/-!
# A099462: Expansion of x/(1 - 4*x^2 - 4*x^3).

The programs for A099462, the canonical program `A099462.P16680483091701615402` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099462 has offset 0).

The definition of A099462 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x/(1-4x^2-4x^3))` (program `A099462.P16680483091701615402`, by `A099462.P16680483091701615402.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099462.P16680483091701615402

`ogf(x/(1-4x^2-4x^3))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099462

/-- `ogf(x/(1-4x^2-4x^3))` -/
def P16680483091701615402.Spec : Prop :=
  ∀ n, P16680483091701615402.a n = A099462 n

theorem P16680483091701615402.correct : P16680483091701615402.Spec := by
  intro n
  simp only [A099462]

end A099462

/-! ## A099462.P6691765683519020939

`4*a(n-2)+4*a(n-3)` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A099462.P6691765683519020939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n a =>
  4 * a (n - 2) + 4 * a (n - 3)

end

end A099462.P6691765683519020939

namespace A099462

/-- `4*a(n-2)+4*a(n-3)` -/
def P6691765683519020939.Spec : Prop :=
  ∀ n, (P6691765683519020939.a n : ℤ) = A099462 n

end A099462

/-! ## A099462.P2262528522924313167

`∑{#}[floor((n-1)/2), C(#, n-2*#-1)*4^#]`
-/

namespace A099462.P2262528522924313167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose k ((n : ℤ) - (2 * k : ℤ) - 1).toNat * 4 ^ k

end

end A099462.P2262528522924313167

namespace A099462

/-- `∑{#}[floor((n-1)/2), C(#, n-2*#-1)*4^#]` -/
def P2262528522924313167.Spec : Prop :=
  ∀ n, (P2262528522924313167.a n : ℤ) = A099462 n

end A099462

/-! ## A099462.P5595468823707825082

`4*(a(n-2)+a(n-3))` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A099462.P5595468823707825082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n a =>
  4 * (a (n - 2) + a (n - 3))

end

end A099462.P5595468823707825082

namespace A099462

/-- `4*(a(n-2)+a(n-3))` -/
def P5595468823707825082.Spec : Prop :=
  ∀ n, (P5595468823707825082.a n : ℤ) = A099462 n

end A099462

/-! ## A099462.P10523162128089624371

`A122788(2*n)`
-/

namespace A099462.P10523162128089624371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122788 (2 * n)

end

end A099462.P10523162128089624371

namespace A099462

/-- `A122788(2*n)` -/
def P10523162128089624371.Spec : Prop :=
  ∀ n, P10523162128089624371.a n = A099462 n

end A099462

/-! ## A099462.P162252930697180282

`and(-n, A122788(n+n))`
-/

namespace A099462.P162252930697180282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(n : ℤ)) (A122788 (n + n))

end

end A099462.P162252930697180282

namespace A099462

/-- `and(-n, A122788(n+n))` -/
def P162252930697180282.Spec : Prop :=
  ∀ n, P162252930697180282.a n = A099462 n

end A099462

/-! ## A099462.P13702783489022363313

`(A077943(2*n)-A078003(2*n+1))/2`
-/

namespace A099462.P13702783489022363313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077943 (2 * n) - A078003 (2 * n + 1) : ℚ) / 2

end

end A099462.P13702783489022363313

namespace A099462

/-- `(A077943(2*n)-A078003(2*n+1))/2` -/
def P13702783489022363313.Spec : Prop :=
  ∀ n, P13702783489022363313.a n = (A099462 n : ℚ)

end A099462

/-! ## A099462.P17605170754608901249

`A077993(2*n)+A077993(2*n+1)/2`
-/

namespace A099462.P17605170754608901249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077993 (2 * n) : ℚ) + (A077993 (2 * n + 1) : ℚ) / 2

end

end A099462.P17605170754608901249

namespace A099462

/-- `A077993(2*n)+A077993(2*n+1)/2` -/
def P17605170754608901249.Spec : Prop :=
  ∀ n, P17605170754608901249.a n = (A099462 n : ℚ)

end A099462

/-! ## A099462.P16521494765230353614

`A077943(2*n)-A077943(2*n+1)/2`
-/

namespace A099462.P16521494765230353614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077943 (2 * n) : ℚ) - (A077943 (2 * n + 1) : ℚ) / 2

end

end A099462.P16521494765230353614

namespace A099462

/-- `A077943(2*n)-A077943(2*n+1)/2` -/
def P16521494765230353614.Spec : Prop :=
  ∀ n, P16521494765230353614.a n = (A099462 n : ℚ)

end A099462

/-! ## A099462.P18391318799025481253

`A104767(2*n+1)+A078003(2*n)-A077943(2*n+1)`
-/

namespace A099462.P18391318799025481253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104767 (2 * n + 1) + (A078003 (2 * n) - A077943 (2 * n + 1))

end

end A099462.P18391318799025481253

namespace A099462

/-- `A104767(2*n+1)+A078003(2*n)-A077943(2*n+1)` -/
def P18391318799025481253.Spec : Prop :=
  ∀ n, P18391318799025481253.a n = A099462 n

end A099462

/-! ## A099462.P8966948470398510541

`A078071(2*n)-A104767(2*n+1)`
-/

namespace A099462.P8966948470398510541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078071 (2 * n) - A104767 (2 * n + 1)

end

end A099462.P8966948470398510541

namespace A099462

/-- `A078071(2*n)-A104767(2*n+1)` -/
def P8966948470398510541.Spec : Prop :=
  ∀ n, P8966948470398510541.a n = A099462 n

end A099462

/-! ## A099462.P6614042412101526939

`A251928(2*n+1)-A251928(2*(n+1))/2`
-/

namespace A099462.P6614042412101526939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251928 (2 * n + 1) : ℚ) - (A251928 (2 * (n + 1)) : ℚ) / 2

end

end A099462.P6614042412101526939

namespace A099462

/-- `A251928(2*n+1)-A251928(2*(n+1))/2` -/
def P6614042412101526939.Spec : Prop :=
  ∀ n, P6614042412101526939.a n = (A099462 n : ℚ)

end A099462

/-!
# A099463: Bisection of tribonacci numbers.

The programs for A099463, the canonical program `A099463.P14277499439505614140` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099463 has offset 0).

The definition of A099463 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099463.P6718724600250765390

`ogf((x-x^2)/(1-3x-x^2-x^3))`
-/

namespace A099463.P6718724600250765390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1] [1, -3, -1, -1] n

end

end A099463.P6718724600250765390

namespace A099463

/-- `ogf((x-x^2)/(1-3x-x^2-x^3))` -/
def P6718724600250765390.Spec : Prop :=
  ∀ n, P6718724600250765390.a n = A099463 n

end A099463

/-! ## A099463.P14277499439505614140

`3*a(n-1)+a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099463

/-- `3*a(n-1)+a(n-2)+a(n-3)` -/
def P14277499439505614140.Spec : Prop :=
  ∀ n, (P14277499439505614140.a n : ℤ) = A099463 n

theorem P14277499439505614140.correct : P14277499439505614140.Spec := by
  intro n
  simp only [A099463]

end A099463

/-! ## A099463.P8688525012691009512

`A000073(2*n)`
-/

namespace A099463.P8688525012691009512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (2 * n)

end

end A099463.P8688525012691009512

namespace A099463

/-- `A000073(2*n)` -/
def P8688525012691009512.Spec : Prop :=
  ∀ n, P8688525012691009512.a n = A099463 n

end A099463

/-! ## A099463.P15268150217023791171

`A114952(4*n)`
-/

namespace A099463.P15268150217023791171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114952 (4 * n)

end

end A099463.P15268150217023791171

namespace A099463

/-- `A114952(4*n)` -/
def P15268150217023791171.Spec : Prop :=
  ∀ n, P15268150217023791171.a n = A099463 n

end A099463

/-! ## A099463.P12808409044429197707

`A034803(3*(n+1))`
-/

namespace A099463.P12808409044429197707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034803 (3 * (n + 1))

end

end A099463.P12808409044429197707

namespace A099463

/-- `A034803(3*(n+1))` -/
def P12808409044429197707.Spec : Prop :=
  ∀ n, P12808409044429197707.a n = A099463 n

end A099463

/-! ## A099463.P10162458454674598492

`A112476(2*n)-1`
-/

namespace A099463.P10162458454674598492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112476 (2 * n) - 1

end

end A099463.P10162458454674598492

namespace A099463

/-- `A112476(2*n)-1` -/
def P10162458454674598492.Spec : Prop :=
  ∀ n, P10162458454674598492.a n = A099463 n

end A099463

/-! ## A099463.P3219482113223134157

`record[A000073(A014681(n))]`
-/

namespace A099463.P3219482113223134157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099463.P3219482113223134157

namespace A099463

/-- `record[A000073(A014681(n))]` -/
def P3219482113223134157.Spec : Prop :=
  ∀ n, P3219482113223134157.a n = A099463 n

end A099463

/-! ## A099463.P15285951697029871398

`record[A000073(A029578(n))]`
-/

namespace A099463.P15285951697029871398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A029578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099463.P15285951697029871398

namespace A099463

/-- `record[A000073(A029578(n))]` -/
def P15285951697029871398.Spec : Prop :=
  ∀ n, P15285951697029871398.a n = A099463 n

end A099463

/-! ## A099463.P1490563394641554361

`record[A000073(A186421(n))]`
-/

namespace A099463.P1490563394641554361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A186421 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099463.P1490563394641554361

namespace A099463

/-- `record[A000073(A186421(n))]` -/
def P1490563394641554361.Spec : Prop :=
  ∀ n, P1490563394641554361.a n = A099463 n

end A099463

/-! ## A099463.P12674581604816171079

`record[A000073(A026741(n)+1)]`
-/

namespace A099463.P12674581604816171079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A026741 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099463.P12674581604816171079

namespace A099463

/-- `record[A000073(A026741(n)+1)]` -/
def P12674581604816171079.Spec : Prop :=
  ∀ n, P12674581604816171079.a n = A099463 n

end A099463

/-! ## A099463.P13390237620601747629

`record[A000073(A029579(n)-1)]`
-/

namespace A099463.P13390237620601747629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A029579 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099463.P13390237620601747629

namespace A099463

/-- `record[A000073(A029579(n)-1)]` -/
def P13390237620601747629.Spec : Prop :=
  ∀ n, P13390237620601747629.a n = A099463 n

end A099463

/-! ## A099463.P3843133754602496139

`A338192(2*n)-A000045(2*n)`
-/

namespace A099463.P3843133754602496139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338192 (2 * n) - A000045 (2 * n)

end

end A099463.P3843133754602496139

namespace A099463

/-- `A338192(2*n)-A000045(2*n)` -/
def P3843133754602496139.Spec : Prop :=
  ∀ n, P3843133754602496139.a n = A099463 n

end A099463

/-! ## A099463.P8311425776713737554

`record[A000073(n)/A000005(A135561(n+1))]`
-/

namespace A099463.P8311425776713737554
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000073 n : ℚ) / (A000005 (A135561 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099463.P8311425776713737554

namespace A099463

/-- `record[A000073(n)/A000005(A135561(n+1))]` -/
def P8311425776713737554.Spec : Prop :=
  ∀ n, P8311425776713737554.a n = (A099463 n : ℚ)

end A099463

/-! ## A099463.P17452176445454897437

`A354784(2*n)/2`
-/

namespace A099463.P17452176445454897437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354784 (2 * n) : ℚ) / 2

end

end A099463.P17452176445454897437

namespace A099463

/-- `A354784(2*n)/2` -/
def P17452176445454897437.Spec : Prop :=
  ∀ n, P17452176445454897437.a n = (A099463 n : ℚ)

end A099463

/-! ## A099463.P56510884898952906

`Δ[A001590(2*n)/2]`
-/

namespace A099463.P56510884898952906
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001590 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099463.P56510884898952906

namespace A099463

/-- `Δ[A001590(2*n)/2]` -/
def P56510884898952906.Spec : Prop :=
  ∀ n, P56510884898952906.a n = (A099463 n : ℚ)

end A099463

/-! ## A099463.P6515538926937245911

`∑[A098184(n)]-A098184(n)`
-/

namespace A099463.P6515538926937245911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A098184 n

end

end A099463.P6515538926937245911

namespace A099463

/-- `∑[A098184(n)]-A098184(n)` -/
def P6515538926937245911.Spec : Prop :=
  ∀ n, P6515538926937245911.a n = A099463 n

end A099463

/-! ## A099463.P17309945300676993497

`A231057(n+1)-A073717(n)`
-/

namespace A099463.P17309945300676993497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231057 (n + 1) - A073717 n

end

end A099463.P17309945300676993497

namespace A099463

/-- `A231057(n+1)-A073717(n)` -/
def P17309945300676993497.Spec : Prop :=
  ∀ n, P17309945300676993497.a n = A099463 n

end A099463

/-! ## A099463.P1573913316446399363

`A073717(n)-A001590(2*n)`
-/

namespace A099463.P1573913316446399363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073717 n - A001590 (2 * n)

end

end A099463.P1573913316446399363

namespace A099463

/-- `A073717(n)-A001590(2*n)` -/
def P1573913316446399363.Spec : Prop :=
  ∀ n, P1573913316446399363.a n = A099463 n

end A099463

/-! ## A099463.P5535040812554718120

`2*A113300(n)-A073717(n)`
-/

namespace A099463.P5535040812554718120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A113300 n - A073717 n

end

end A099463.P5535040812554718120

namespace A099463

/-- `2*A113300(n)-A073717(n)` -/
def P5535040812554718120.Spec : Prop :=
  ∀ n, P5535040812554718120.a n = A099463 n

end A099463

/-! ## A099463.P473403015991369165

`record[∑[A078042(n)]-A078042(n)]`
-/

namespace A099463.P473403015991369165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078042 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A078042 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099463.P473403015991369165

namespace A099463

/-- `record[∑[A078042(n)]-A078042(n)]` -/
def P473403015991369165.Spec : Prop :=
  ∀ n, P473403015991369165.a n = A099463 n

end A099463

/-!
# A099464: Trisection of tribonacci numbers.

The programs for A099464, the canonical program `A099464.P15958874616804253317` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099464 has offset 0).

The definition of A099464 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099464.P16397369888949058681

`ogf(x/(1-7x+5x^2-x^3))`
-/

namespace A099464.P16397369888949058681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -7, 5, -1] n

end

end A099464.P16397369888949058681

namespace A099464

/-- `ogf(x/(1-7x+5x^2-x^3))` -/
def P16397369888949058681.Spec : Prop :=
  ∀ n, P16397369888949058681.a n = A099464 n

end A099464

/-! ## A099464.P15958874616804253317

`7*a(n-1)-5*a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=7`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099464

/-- `7*a(n-1)-5*a(n-2)+a(n-3)` -/
def P15958874616804253317.Spec : Prop :=
  ∀ n, P15958874616804253317.a n = A099464 n

theorem P15958874616804253317.correct : P15958874616804253317.Spec := by
  intro n
  simp only [A099464]

end A099464

/-! ## A099464.P12168105076090442431

`A000073(3*n)`
-/

namespace A099464.P12168105076090442431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (3 * n)

end

end A099464.P12168105076090442431

namespace A099464

/-- `A000073(3*n)` -/
def P12168105076090442431.Spec : Prop :=
  ∀ n, P12168105076090442431.a n = A099464 n

end A099464

/-! ## A099464.P9367396687319864618

`∑[A192807(n)]`
-/

namespace A099464.P9367396687319864618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192807 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099464.P9367396687319864618

namespace A099464

/-- `∑[A192807(n)]` -/
def P9367396687319864618.Spec : Prop :=
  ∀ n, P9367396687319864618.a n = A099464 n

end A099464

/-! ## A099464.P1318116111376887532

`∑[A001590(3*n)]`
-/

namespace A099464.P1318116111376887532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099464.P1318116111376887532

namespace A099464

/-- `∑[A001590(3*n)]` -/
def P1318116111376887532.Spec : Prop :=
  ∀ n, P1318116111376887532.a n = A099464 n

end A099464

/-! ## A099464.P739218153745490536

`A354784(3*n)/2`
-/

namespace A099464.P739218153745490536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354784 (3 * n) : ℚ) / 2

end

end A099464.P739218153745490536

namespace A099464

/-- `A354784(3*n)/2` -/
def P739218153745490536.Spec : Prop :=
  ∀ n, P739218153745490536.a n = (A099464 n : ℚ)

end A099464

/-! ## A099464.P12831738159062158283

`record[A000073(A006368(n))]`
-/

namespace A099464.P12831738159062158283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A006368 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099464.P12831738159062158283

namespace A099464

/-- `record[A000073(A006368(n))]` -/
def P12831738159062158283.Spec : Prop :=
  ∀ n, P12831738159062158283.a n = A099464 n

end A099464

/-! ## A099464.P11811998807616935401

`record[A000073(A257143(n))]`
-/

namespace A099464.P11811998807616935401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A257143 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099464.P11811998807616935401

namespace A099464

/-- `record[A000073(A257143(n))]` -/
def P11811998807616935401.Spec : Prop :=
  ∀ n, P11811998807616935401.a n = A099464 n

end A099464

/-! ## A099464.P6339329901049260315

`A114952(A272975(n+1))`
-/

namespace A099464.P6339329901049260315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114952 (A272975 (n + 1)).toNat

end

end A099464.P6339329901049260315

namespace A099464

/-- `A114952(A272975(n+1))` -/
def P6339329901049260315.Spec : Prop :=
  ∀ n, P6339329901049260315.a n = A099464 n

end A099464

/-! ## A099464.P506866246702354920

`A114952(A014601(3*n))`
-/

namespace A099464.P506866246702354920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114952 (A014601 (3 * n)).toNat

end

end A099464.P506866246702354920

namespace A099464

/-- `A114952(A014601(3*n))` -/
def P506866246702354920.Spec : Prop :=
  ∀ n, P506866246702354920.a n = A099464 n

end A099464

/-! ## A099464.P7868008193893332549

`∑[A001590(A008486(n))]-1`
-/

namespace A099464.P7868008193893332549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (A008486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A099464.P7868008193893332549

namespace A099464

/-- `∑[A001590(A008486(n))]-1` -/
def P7868008193893332549.Spec : Prop :=
  ∀ n, P7868008193893332549.a n = A099464 n

end A099464

/-! ## A099464.P872997242236146887

`record[A000073(A014682(n)+1)]`
-/

namespace A099464.P872997242236146887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A014682 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099464.P872997242236146887

namespace A099464

/-- `record[A000073(A014682(n)+1)]` -/
def P872997242236146887.Spec : Prop :=
  ∀ n, P872997242236146887.a n = A099464 n

end A099464

/-! ## A099464.P4545228697275548708

`A192807(n+1)-(A192807(n)+A192806(n+1))`
-/

namespace A099464.P4545228697275548708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192807 (n + 1) - (A192807 n + A192806 (n + 1))

end

end A099464.P4545228697275548708

namespace A099464

/-- `A192807(n+1)-(A192807(n)+A192806(n+1))` -/
def P4545228697275548708.Spec : Prop :=
  ∀ n, P4545228697275548708.a n = A099464 n

end A099464

/-!
# A099467: a(1) = a(2) = 1; for n > 2, a(n) is the smallest number > a(n-1) which is not the sum of 2 consecutive elements of the sequence.

The programs for A099467, the canonical program `A099467.P10187499394579304031` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099467 has offset 1).

The definition of A099467 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099467.P10327547376270096781

`ceil(A022429(n)/2)`
-/

namespace A099467.P10327547376270096781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A022429 n : ℚ) / 2⌉

end

end A099467.P10327547376270096781

namespace A099467

/-- `ceil(A022429(n)/2)` -/
def P10327547376270096781.Spec : Prop :=
  ∀ n, P10327547376270096781.a n = A099467 (n + 1)

end A099467

/-! ## A099467.P10187499394579304031

`A022442(n-1)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A099467

/-- `A022442(n-1)-a(n-1)` -/
def P10187499394579304031.Spec : Prop :=
  ∀ n, P10187499394579304031.a n = A099467 (n + 1)

theorem P10187499394579304031.correct : P10187499394579304031.Spec := by
  intro n
  simp only [A099467, Nat.add_sub_cancel]

end A099467

/-! ## A099467.P2339925061741161983

`A000007(n)+comp[A022442(n)]`
-/

namespace A099467.P2339925061741161983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A099467.P2339925061741161983

namespace A099467

/-- `A000007(n)+comp[A022442(n)]` -/
def P2339925061741161983.Spec : Prop :=
  ∀ n, P2339925061741161983.a n = A099467 (n + 1)

end A099467

/-! ## A099467.P16004539379043570525

`A210770(A257088(n))`
-/

namespace A099467.P16004539379043570525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210770 (A257088 n).toNat

end

end A099467.P16004539379043570525

namespace A099467

/-- `A210770(A257088(n))` -/
def P16004539379043570525.Spec : Prop :=
  ∀ n, P16004539379043570525.a n = A099467 (n + 1)

end A099467

/-! ## A099467.P15686164929571108781

`record[A005843(n+1)-A210770(n+1)]-n`
-/

namespace A099467.P15686164929571108781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) - A210770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A099467.P15686164929571108781

namespace A099467

/-- `record[A005843(n+1)-A210770(n+1)]-n` -/
def P15686164929571108781.Spec : Prop :=
  ∀ n, P15686164929571108781.a n = A099467 (n + 1)

end A099467

/-! ## A099467.P9452960126505736170

`A210770(2*(n+1))+A055562(2*n)-3*(n+1)`
-/

namespace A099467.P9452960126505736170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210770 (2 * (n + 1)) + (A055562 (2 * n) - (3 * (n + 1) : ℤ))

end

end A099467.P9452960126505736170

namespace A099467

/-- `A210770(2*(n+1))+A055562(2*n)-3*(n+1)` -/
def P9452960126505736170.Spec : Prop :=
  ∀ n, P9452960126505736170.a n = A099467 (n + 1)

end A099467

/-! ## A099467.P3189991483465465198

`A008619(A022429(n)-1)`
-/

namespace A099467.P3189991483465465198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A022429 n - 1).toNat

end

end A099467.P3189991483465465198

namespace A099467

/-- `A008619(A022429(n)-1)` -/
def P3189991483465465198.Spec : Prop :=
  ∀ n, P3189991483465465198.a n = A099467 (n + 1)

end A099467

/-! ## A099467.P12378055785089563788

`A065033(A022429(n))`
-/

namespace A099467.P12378055785089563788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A022429 n).toNat

end

end A099467.P12378055785089563788

namespace A099467

/-- `A065033(A022429(n))` -/
def P12378055785089563788.Spec : Prop :=
  ∀ n, P12378055785089563788.a n = A099467 (n + 1)

end A099467

/-! ## A099467.P3818134970061194580

`A105637(A022433(n))`
-/

namespace A099467.P3818134970061194580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105637 (A022433 n).toNat

end

end A099467.P3818134970061194580

namespace A099467

/-- `A105637(A022433(n))` -/
def P3818134970061194580.Spec : Prop :=
  ∀ n, P3818134970061194580.a n = A099467 (n + 1)

end A099467

/-! ## A099467.P6253280068945053307

`A004526(A022429(n)-1)+1`
-/

namespace A099467.P6253280068945053307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A022429 n - 1).toNat + 1

end

end A099467.P6253280068945053307

namespace A099467

/-- `A004526(A022429(n)-1)+1` -/
def P6253280068945053307.Spec : Prop :=
  ∀ n, P6253280068945053307.a n = A099467 (n + 1)

end A099467

/-! ## A099467.P6971048099760035586

`A065033(A055562(2*n)-2)`
-/

namespace A099467.P6971048099760035586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A055562 (2 * n) - 2).toNat

end

end A099467.P6971048099760035586

namespace A099467

/-- `A065033(A055562(2*n)-2)` -/
def P6971048099760035586.Spec : Prop :=
  ∀ n, P6971048099760035586.a n = A099467 (n + 1)

end A099467

/-! ## A099467.P18188637950019938111

`A065033(A022433(2*n)-A022433(n))`
-/

namespace A099467.P18188637950019938111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A022433 (2 * n) - A022433 n).toNat

end

end A099467.P18188637950019938111

namespace A099467

/-- `A065033(A022433(2*n)-A022433(n))` -/
def P18188637950019938111.Spec : Prop :=
  ∀ n, P18188637950019938111.a n = A099467 (n + 1)

end A099467

/-! ## A099467.P12845030433069222881

`A022429(n)-A004526(xor(1, A022429(n)))`
-/

namespace A099467.P12845030433069222881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022429 n - A004526 (Int.xor 1 (A022429 n)).toNat

end

end A099467.P12845030433069222881

namespace A099467

/-- `A022429(n)-A004526(xor(1, A022429(n)))` -/
def P12845030433069222881.Spec : Prop :=
  ∀ n, P12845030433069222881.a n = A099467 (n + 1)

end A099467

/-! ## A099467.P14400926845367651483

`A004526(A022429(n)+1)`
-/

namespace A099467.P14400926845367651483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A022429 n + 1).toNat

end

end A099467.P14400926845367651483

namespace A099467

/-- `A004526(A022429(n)+1)` -/
def P14400926845367651483.Spec : Prop :=
  ∀ n, P14400926845367651483.a n = A099467 (n + 1)

end A099467

/-!
# A099469: Least common multiple of n and its digit sum.

The programs for A099469, the canonical program `A099469.P12133209552850225226` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099469 has offset 1).

The definition of A099469 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099469.P12133209552850225226

`lcm(n+1, ∑{digits}[n+1, #])`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099469

/-- `lcm(n+1, ∑{digits}[n+1, #])` -/
def P12133209552850225226.Spec : Prop :=
  ∀ n, (P12133209552850225226.a n : ℤ) = A099469 (n + 1)

theorem P12133209552850225226.correct : P12133209552850225226.Spec := by
  intro n
  simp only [A099469, Nat.add_sub_cancel]

end A099469

/-! ## A099469.P328014775953656762

`lcm(log(∏{digits}[n+1, exp(#)]), (n+1)%(n+2))`
-/

namespace A099469.P328014775953656762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (Real.log ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Real.exp (x : ℝ)).prod)) (((n + 1) % (n + 2) : ℕ) : ℤ)

end

end A099469.P328014775953656762

namespace A099469

/-- `lcm(log(∏{digits}[n+1, exp(#)]), (n+1)%(n+2))` -/
def P328014775953656762.Spec : Prop :=
  ∀ n, (P328014775953656762.a n : ℤ) = A099469 (n + 1)

end A099469

/-! ## A099469.P2100830530856902190

`lcm(n-or(n, -1), log2(∏{digits}[n+1, 2^#]))`
-/

namespace A099469.P2100830530856902190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - Int.lor (n : ℤ) (-1)) (SequenceMachineLib.roundAway (Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ)))

end

end A099469.P2100830530856902190

namespace A099469

/-- `lcm(n-or(n, -1), log2(∏{digits}[n+1, 2^#]))` -/
def P2100830530856902190.Spec : Prop :=
  ∀ n, (P2100830530856902190.a n : ℤ) = A099469 (n + 1)

end A099469

/-! ## A099469.P18056808617402725785

`lcm(n+1, Δ[A037123(n)])`
-/

namespace A099469.P18056808617402725785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (f1 (n + 1) - f1 n)

end

end A099469.P18056808617402725785

namespace A099469

/-- `lcm(n+1, Δ[A037123(n)])` -/
def P18056808617402725785.Spec : Prop :=
  ∀ n, (P18056808617402725785.a n : ℤ) = A099469 (n + 1)

end A099469

/-! ## A099469.P5473669529465929580

`(n+1)*A065518(n+1)`
-/

namespace A099469.P5473669529465929580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A065518 (n + 1)

end

end A099469.P5473669529465929580

namespace A099469

/-- `(n+1)*A065518(n+1)` -/
def P5473669529465929580.Spec : Prop :=
  ∀ n, P5473669529465929580.a n = A099469 (n + 1)

end A099469

/-! ## A099469.P3480293444076658456

`lcm(xor(n, -1), A007953(n+1))`
-/

namespace A099469.P3480293444076658456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.xor (n : ℤ) (-1)) (A007953 (n + 1))

end

end A099469.P3480293444076658456

namespace A099469

/-- `lcm(xor(n, -1), A007953(n+1))` -/
def P3480293444076658456.Spec : Prop :=
  ∀ n, (P3480293444076658456.a n : ℤ) = A099469 (n + 1)

end A099469

/-! ## A099469.P1805391470290195696

`A007953(n+1)*A065517(n+1)`
-/

namespace A099469.P1805391470290195696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) * A065517 (n + 1)

end

end A099469.P1805391470290195696

namespace A099469

/-- `A007953(n+1)*A065517(n+1)` -/
def P1805391470290195696.Spec : Prop :=
  ∀ n, P1805391470290195696.a n = A099469 (n + 1)

end A099469

/-! ## A099469.P13674054439647672464

`lcm(A169805(n+1)/2, A028310(n+1))`
-/

namespace A099469.P13674054439647672464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A169805 (n + 1) : ℚ) / 2)) (A028310 (n + 1))

end

end A099469.P13674054439647672464

namespace A099469

/-- `lcm(A169805(n+1)/2, A028310(n+1))` -/
def P13674054439647672464.Spec : Prop :=
  ∀ n, (P13674054439647672464.a n : ℤ) = A099469 (n + 1)

end A099469

/-!
# A099470: A sequence generated from the Quadrifoil.

The programs for A099470, the canonical program `A099470.P300351751768980909` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099470 has offset 1).

The definition of A099470 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099470.P3691179928546013532

`ogf(-1/(1-2x+3x^2-2x^3+x^4))`
-/

namespace A099470.P3691179928546013532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1] [1, -2, 3, -2, 1] n

end

end A099470.P3691179928546013532

namespace A099470

/-- `ogf(-1/(1-2x+3x^2-2x^3+x^4))` -/
def P3691179928546013532.Spec : Prop :=
  ∀ n, P3691179928546013532.a n = A099470 (n + 1)

end A099470

/-! ## A099470.P300351751768980909

`2*a(n-1)-3*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=-1, a(1)=-2, a(2)=-1, a(3)=2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099470

/-- `2*a(n-1)-3*a(n-2)+2*a(n-3)-a(n-4)` -/
def P300351751768980909.Spec : Prop :=
  ∀ n, P300351751768980909.a n = A099470 (n + 1)

theorem P300351751768980909.correct : P300351751768980909.Spec := by
  intro n
  simp only [A099470, Nat.add_sub_cancel]

end A099470

/-! ## A099470.P17772959142559811710

`-A099254(n)`
-/

namespace A099470.P17772959142559811710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A099254 n

end

end A099470.P17772959142559811710

namespace A099470

/-- `-A099254(n)` -/
def P17772959142559811710.Spec : Prop :=
  ∀ n, P17772959142559811710.a n = A099470 (n + 1)

end A099470

/-! ## A099470.P4635615784703542096

`Δ[A099471(n)]`
-/

namespace A099470.P4635615784703542096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099471 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099470.P4635615784703542096

namespace A099470

/-- `Δ[A099471(n)]` -/
def P4635615784703542096.Spec : Prop :=
  ∀ n, P4635615784703542096.a n = A099470 (n + 1)

end A099470

/-! ## A099470.P4739725350334320360

`∑[-A076118(n+1)]`
-/

namespace A099470.P4739725350334320360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A076118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099470.P4739725350334320360

namespace A099470

/-- `∑[-A076118(n+1)]` -/
def P4739725350334320360.Spec : Prop :=
  ∀ n, P4739725350334320360.a n = A099470 (n + 1)

end A099470

/-! ## A099470.P16019454062358387373

`A104555(n)-A128504(n)`
-/

namespace A099470.P16019454062358387373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104555 n - A128504 n

end

end A099470.P16019454062358387373

namespace A099470

/-- `A104555(n)-A128504(n)` -/
def P16019454062358387373.Spec : Prop :=
  ∀ n, P16019454062358387373.a n = A099470 (n + 1)

end A099470

/-! ## A099470.P11828143633033790051

`A099471(n+1)-A099471(n)`
-/

namespace A099470.P11828143633033790051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099471 (n + 1) - A099471 n

end

end A099470.P11828143633033790051

namespace A099470

/-- `A099471(n+1)-A099471(n)` -/
def P11828143633033790051.Spec : Prop :=
  ∀ n, P11828143633033790051.a n = A099470 (n + 1)

end A099470

/-! ## A099470.P270058142768520339

`A099254(n+3)+A057079(n)`
-/

namespace A099470.P270058142768520339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099254 (n + 3) + A057079 n

end

end A099470.P270058142768520339

namespace A099470

/-- `A099254(n+3)+A057079(n)` -/
def P270058142768520339.Spec : Prop :=
  ∀ n, P270058142768520339.a n = A099470 (n + 1)

end A099470

/-! ## A099470.P7544748861474964198

`A110161(2*n)-A099254(n)`
-/

namespace A099470.P7544748861474964198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110161 (2 * n) - A099254 n

end

end A099470.P7544748861474964198

namespace A099470

/-- `A110161(2*n)-A099254(n)` -/
def P7544748861474964198.Spec : Prop :=
  ∀ n, P7544748861474964198.a n = A099470 (n + 1)

end A099470

/-! ## A099470.P4687372763960784307

`n*A000007(n)-A099254(n)`
-/

namespace A099470.P4687372763960784307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000007 n - A099254 n

end

end A099470.P4687372763960784307

namespace A099470

/-- `n*A000007(n)-A099254(n)` -/
def P4687372763960784307.Spec : Prop :=
  ∀ n, P4687372763960784307.a n = A099470 (n + 1)

end A099470

/-! ## A099470.P1555486940958726019

`(A131713(n)²-2)*A104581(n)`
-/

namespace A099470.P1555486940958726019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131713 n ^ 2 - 2) * A104581 n

end

end A099470.P1555486940958726019

namespace A099470

/-- `(A131713(n)²-2)*A104581(n)` -/
def P1555486940958726019.Spec : Prop :=
  ∀ n, P1555486940958726019.a n = A099470 (n + 1)

end A099470

/-! ## A099470.P63189155183583172

`∑[A165202(n)-2*A099254(n)]`
-/

namespace A099470.P63189155183583172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165202 n - 2 * A099254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099470.P63189155183583172

namespace A099470

/-- `∑[A165202(n)-2*A099254(n)]` -/
def P63189155183583172.Spec : Prop :=
  ∀ n, P63189155183583172.a n = A099470 (n + 1)

end A099470

/-! ## A099470.P12947564854878309060

`(n²-A002522(n))*A099254(n)`
-/

namespace A099470.P12947564854878309060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - A002522 n) * A099254 n

end

end A099470.P12947564854878309060

namespace A099470

/-- `(n²-A002522(n))*A099254(n)` -/
def P12947564854878309060.Spec : Prop :=
  ∀ n, P12947564854878309060.a n = A099470 (n + 1)

end A099470

/-! ## A099470.P16641112177847875704

`n-(A222223(A222223(n))+A099254(n))`
-/

namespace A099470.P16641112177847875704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A222223 (A222223 n).toNat + A099254 n)

end

end A099470.P16641112177847875704

namespace A099470

/-- `n-(A222223(A222223(n))+A099254(n))` -/
def P16641112177847875704.Spec : Prop :=
  ∀ n, P16641112177847875704.a n = A099470 (n + 1)

end A099470

/-! ## A099470.P1337484125657043792

`A000035(n-A000035(n))-A099254(n)`
-/

namespace A099470.P1337484125657043792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((n : ℤ) - A000035 n).toNat - A099254 n

end

end A099470.P1337484125657043792

namespace A099470

/-- `A000035(n-A000035(n))-A099254(n)` -/
def P1337484125657043792.Spec : Prop :=
  ∀ n, P1337484125657043792.a n = A099470 (n + 1)

end A099470

/-! ## A099470.P8434842361141356087

`A010872(n-A010872(n))-A099254(n)`
-/

namespace A099470.P8434842361141356087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 ((n : ℤ) - A010872 n).toNat - A099254 n

end

end A099470.P8434842361141356087

namespace A099470

/-- `A010872(n-A010872(n))-A099254(n)` -/
def P8434842361141356087.Spec : Prop :=
  ∀ n, P8434842361141356087.a n = A099470 (n + 1)

end A099470

/-! ## A099470.P14585362998424738317

`(A002378(n)-A002061(n+1))*A099254(n)`
-/

namespace A099470.P14585362998424738317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002378 n - A002061 (n + 1)) * A099254 n

end

end A099470.P14585362998424738317

namespace A099470

/-- `(A002378(n)-A002061(n+1))*A099254(n)` -/
def P14585362998424738317.Spec : Prop :=
  ∀ n, P14585362998424738317.a n = A099470 (n + 1)

end A099470

/-! ## A099470.P14809234505768610503

`A006519(n+1)-(A099254(n)+A006519(A006519(n+1)))`
-/

namespace A099470.P14809234505768610503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) - (A099254 n + A006519 (A006519 (n + 1)).toNat)

end

end A099470.P14809234505768610503

namespace A099470

/-- `A006519(n+1)-(A099254(n)+A006519(A006519(n+1)))` -/
def P14809234505768610503.Spec : Prop :=
  ∀ n, P14809234505768610503.a n = A099470 (n + 1)

end A099470

/-! ## A099470.P8916482320649227060

`A000007(n+1)-A099254(n)`
-/

namespace A099470.P8916482320649227060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A099254 n

end

end A099470.P8916482320649227060

namespace A099470

/-- `A000007(n+1)-A099254(n)` -/
def P8916482320649227060.Spec : Prop :=
  ∀ n, P8916482320649227060.a n = A099470 (n + 1)

end A099470

/-!
# A099471: A sequence generated from the Quadrifoil (flat knot).

The programs for A099471, the canonical program `A099471.P10567312684048879020` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099471 has offset 0).

The definition of A099471 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099471.P10567312684048879020

`ogf((1-2x+x^2-x^3)/(1-2x+3x^2-2x^3+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099471

/-- `ogf((1-2x+x^2-x^3)/(1-2x+3x^2-2x^3+x^4))` -/
def P10567312684048879020.Spec : Prop :=
  ∀ n, P10567312684048879020.a n = A099471 n

theorem P10567312684048879020.correct : P10567312684048879020.Spec := by
  intro n
  simp only [A099471]

end A099471

/-! ## A099471.P3758560992746988726

`1-∑[∑[A076118(n)]]`
-/

namespace A099471.P3758560992746988726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076118 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099471.P3758560992746988726

namespace A099471

/-- `1-∑[∑[A076118(n)]]` -/
def P3758560992746988726.Spec : Prop :=
  ∀ n, P3758560992746988726.a n = A099471 n

end A099471

/-! ## A099471.P10867064508002175548

`A099470(n)+a(n-1)` with `a(0)=1`
-/

namespace A099471.P10867064508002175548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A099470 n + a (n - 1)

end

end A099471.P10867064508002175548

namespace A099471

/-- `A099470(n)+a(n-1)` -/
def P10867064508002175548.Spec : Prop :=
  ∀ n, P10867064508002175548.a n = A099471 n

end A099471

/-! ## A099471.P9668075403104861225

`a(n-1)-A099254(n-1)` with `a(0)=1`
-/

namespace A099471.P9668075403104861225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A099254 (n - 1)

end

end A099471.P9668075403104861225

namespace A099471

/-- `a(n-1)-A099254(n-1)` -/
def P9668075403104861225.Spec : Prop :=
  ∀ n, P9668075403104861225.a n = A099471 n

end A099471

/-! ## A099471.P4065649192906134774

`2*a(n-1)-A187307(n)` with `a(0)=1`
-/

namespace A099471.P4065649192906134774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - A187307 n

end

end A099471.P4065649192906134774

namespace A099471

/-- `2*a(n-1)-A187307(n)` -/
def P4065649192906134774.Spec : Prop :=
  ∀ n, P4065649192906134774.a n = A099471 n

end A099471

/-! ## A099471.P942309376402707970

`A099254(n+1)-A010892(n)`
-/

namespace A099471.P942309376402707970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099254 (n + 1) - A010892 n

end

end A099471.P942309376402707970

namespace A099471

/-- `A099254(n+1)-A010892(n)` -/
def P942309376402707970.Spec : Prop :=
  ∀ n, P942309376402707970.a n = A099471 n

end A099471

/-! ## A099471.P7972325859759428302

`A099254(n)+1-∑[A099254(n)]`
-/

namespace A099471.P7972325859759428302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099254 n + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099471.P7972325859759428302

namespace A099471

/-- `A099254(n)+1-∑[A099254(n)]` -/
def P7972325859759428302.Spec : Prop :=
  ∀ n, P7972325859759428302.a n = A099471 n

end A099471

/-! ## A099471.P9537346139587246663

`∑[A099470(n+1)]+1-A099470(n+1)`
-/

namespace A099471.P9537346139587246663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A099470 (n + 1))

end

end A099471.P9537346139587246663

namespace A099471

/-- `∑[A099470(n+1)]+1-A099470(n+1)` -/
def P9537346139587246663.Spec : Prop :=
  ∀ n, P9537346139587246663.a n = A099471 n

end A099471

/-! ## A099471.P4983493477726457623

`A076118(n+2)+A076118(n)`
-/

namespace A099471.P4983493477726457623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076118 (n + 2) + A076118 n

end

end A099471.P4983493477726457623

namespace A099471

/-- `A076118(n+2)+A076118(n)` -/
def P4983493477726457623.Spec : Prop :=
  ∀ n, P4983493477726457623.a n = A099471 n

end A099471

/-! ## A099471.P4025147017303114848

`A010892(n+1)+A002264(n+1)*A057079(n+1)`
-/

namespace A099471.P4025147017303114848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (n + 1) + A002264 (n + 1) * A057079 (n + 1)

end

end A099471.P4025147017303114848

namespace A099471

/-- `A010892(n+1)+A002264(n+1)*A057079(n+1)` -/
def P4025147017303114848.Spec : Prop :=
  ∀ n, P4025147017303114848.a n = A099471 n

end A099471

/-! ## A099471.P228640021101040177

`A076118(A330396(n+1))`
-/

namespace A099471.P228640021101040177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076118 (A330396 (n + 1)).toNat

end

end A099471.P228640021101040177

namespace A099471

/-- `A076118(A330396(n+1))` -/
def P228640021101040177.Spec : Prop :=
  ∀ n, P228640021101040177.a n = A099471 n

end A099471

/-! ## A099471.P11397612110736635026

`A010892(n+3)-A099470(n+2)`
-/

namespace A099471.P11397612110736635026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (n + 3) - A099470 (n + 2)

end

end A099471.P11397612110736635026

namespace A099471

/-- `A010892(n+3)-A099470(n+2)` -/
def P11397612110736635026.Spec : Prop :=
  ∀ n, P11397612110736635026.a n = A099471 n

end A099471

/-! ## A099471.P17900833954676556881

`A099254(n+1)-A117441(2*n+1)`
-/

namespace A099471.P17900833954676556881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099254 (n + 1) - A117441 (2 * n + 1)

end

end A099471.P17900833954676556881

namespace A099471

/-- `A099254(n+1)-A117441(2*n+1)` -/
def P17900833954676556881.Spec : Prop :=
  ∀ n, P17900833954676556881.a n = A099471 n

end A099471

/-!
# A099473: Numbers k such that binomial(2*k,k) cannot be represented as the sum of three squares.

The programs for A099473, there is no canonical definition to state claims against.
-/

/-! ## A099473.P15305714750184621979

`record[A278537(A084953(n+1))]`
-/

namespace A099473.P15305714750184621979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278537 (A084953 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099473.P15305714750184621979

/-! ## A099473.P303416475782635212

`record[A032742(A084953(A263131(n)))]`
-/

namespace A099473.P303416475782635212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A084953 (A263131 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099473.P303416475782635212

/-! ## A099473.P15618247891800429100

`record[A025480(A084953(A344180(n)))]`
-/

namespace A099473.P15618247891800429100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A084953 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099473.P15618247891800429100

/-! ## A099473.P15702057658194758127

`record[A025480(A084953(A027750(n+1)))]`
-/

namespace A099473.P15702057658194758127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A084953 (A027750 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099473.P15702057658194758127

/-! ## A099473.P4858764632855370365

`A004526(record[A141310(A084953(n+1))])`
-/

namespace A099473.P4858764632855370365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A084953 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A099473.P4858764632855370365

/-! ## A099473.P4307668213577196148

`A004526(record[A186421(A084953(n+1))])`
-/

namespace A099473.P4307668213577196148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186421 (A084953 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A099473.P4307668213577196148

/-! ## A099473.P2988492048319671944

`record[A025480(A084953(A026238(n+2)))]`
-/

namespace A099473.P2988492048319671944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A084953 (A026238 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099473.P2988492048319671944

/-!
# A099474: Numbers k such that 3*prime(k) - prime(k+1) - 3 is prime.

The programs for A099474, there is no canonical definition to state claims against.
-/

/-! ## A099474.P13906447994724485136

`eq[2, A077462(A100021(n+1))]+1`
-/

namespace A099474.P13906447994724485136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A100021 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A099474.P13906447994724485136

/-!
# A099475: Number of divisors d of n such that d+2 is also a divisor of n.

The programs for A099475, the canonical program `A099475.P148219688828894509` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099475 has offset 1).

The definition of A099475 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099475.P148219688828894509

`∑{d}[2*(n+1), 1-A049240(#+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099475

/-- `∑{d}[2*(n+1), 1-A049240(#+1)]` -/
def P148219688828894509.Spec : Prop :=
  ∀ n, P148219688828894509.a n = A099475 (n + 1)

theorem P148219688828894509.correct : P148219688828894509.Spec := by
  intro n
  simp only [A099475, Nat.add_sub_cancel]

end A099475

/-! ## A099475.P10585999656814305349

`∑{d}[2*(n+1), A000005(#+1)%2]`
-/

namespace A099475.P10585999656814305349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A000005 (d + 1)) 2

end

end A099475.P10585999656814305349

namespace A099475

/-- `∑{d}[2*(n+1), A000005(#+1)%2]` -/
def P10585999656814305349.Spec : Prop :=
  ∀ n, P10585999656814305349.a n = A099475 (n + 1)

end A099475

/-! ## A099475.P2817569070000380642

`A179952(A022998(n+1))`
-/

namespace A099475.P2817569070000380642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179952 (A022998 (n + 1)).toNat

end

end A099475.P2817569070000380642

namespace A099475

/-- `A179952(A022998(n+1))` -/
def P2817569070000380642.Spec : Prop :=
  ∀ n, P2817569070000380642.a n = A099475 (n + 1)

end A099475

/-! ## A099475.P8547800220349003135

`A179952(A059029(n)+1)`
-/

namespace A099475.P8547800220349003135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179952 (A059029 n + 1).toNat

end

end A099475.P8547800220349003135

namespace A099475

/-- `A179952(A059029(n)+1)` -/
def P8547800220349003135.Spec : Prop :=
  ∀ n, P8547800220349003135.a n = A099475 (n + 1)

end A099475

/-! ## A099475.P6503812407898453829

`A179952(A257088(n+1))`
-/

namespace A099475.P6503812407898453829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179952 (A257088 (n + 1)).toNat

end

end A099475.P6503812407898453829

namespace A099475

/-- `A179952(A257088(n+1))` -/
def P6503812407898453829.Spec : Prop :=
  ∀ n, P6503812407898453829.a n = A099475 (n + 1)

end A099475

/-! ## A099475.P15690816523647434346

`A179952(2*(n+1))`
-/

namespace A099475.P15690816523647434346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179952 (2 * (n + 1))

end

end A099475.P15690816523647434346

namespace A099475

/-- `A179952(2*(n+1))` -/
def P15690816523647434346.Spec : Prop :=
  ∀ n, P15690816523647434346.a n = A099475 (n + 1)

end A099475

/-!
# A099476: Smallest number having exactly n divisors d such that also d+2 is a divisor.

The programs for A099476, there is no canonical definition to state claims against.
-/

/-! ## A099476.P4288907450706603157

`A305829(A358542(n+1))`
-/

namespace A099476.P4288907450706603157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305829 (A358542 (n + 1)).toNat

end

end A099476.P4288907450706603157

/-! ## A099476.P6414976173521624345

`A001177(A053505(n)*A179753(3*n+1))`
-/

namespace A099476.P6414976173521624345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (A053505 n * A179753 (3 * n + 1)).toNat

end

end A099476.P6414976173521624345

/-!
# A099477: Numbers having no divisors d such that also d+2 is a divisor.

The programs for A099477, the canonical program `A099477.P7976891423228945274` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099477 has offset 1).

The definition of A099477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4781 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099477.P2766548813579990891

`eq[0, A243865(n+1)]+1`
-/

namespace A099477.P2766548813579990891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243865 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A099477.P2766548813579990891

namespace A099477

/-- `eq[0, A243865(n+1)]+1` -/
def P2766548813579990891.Spec : Prop :=
  ∀ n, (P2766548813579990891.a n : ℤ) = A099477 (n + 1)

end A099477

/-! ## A099477.P7976891423228945274

`lt[A099475(n+1), 1]+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A099477

/-- `lt[A099475(n+1), 1]+1` -/
def P7976891423228945274.Spec : Prop :=
  ∀ n, (P7976891423228945274.a n : ℤ) = A099477 (n + 1)

theorem P7976891423228945274.correct : P7976891423228945274.Spec := by
  intro n
  simp only [A099477, Nat.add_sub_cancel]

end A099477

/-! ## A099477.P13098221071684873314

`lt[A243983(n+1), 1]+1`
-/

namespace A099477.P13098221071684873314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243983 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A099477.P13098221071684873314

namespace A099477

/-- `lt[A243983(n+1), 1]+1` -/
def P13098221071684873314.Spec : Prop :=
  ∀ n, (P13098221071684873314.a n : ℤ) = A099477 (n + 1)

end A099477

/-! ## A099477.P1847202239697349414

`lt[A243983(gcd(n, n*a(n-1))), 1]` with `a(0)=1`
-/

namespace A099477.P1847202239697349414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A243983 (Int.gcd (n : ℤ) ((n : ℤ) * f1 (n - 1)))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A099477.P1847202239697349414

namespace A099477

/-- `lt[A243983(gcd(n, n*a(n-1))), 1]` -/
def P1847202239697349414.Spec : Prop :=
  ∀ n, (P1847202239697349414.a n : ℤ) = A099477 (n + 1)

end A099477

/-! ## A099477.P18039585143109893072

`lt[n*A099475(A028310(n)), n]`
-/

namespace A099477.P18039585143109893072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A099475 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A099477.P18039585143109893072

namespace A099477

/-- `lt[n*A099475(A028310(n)), n]` -/
def P18039585143109893072.Spec : Prop :=
  ∀ n, (P18039585143109893072.a n : ℤ) = A099477 (n + 1)

end A099477

/-! ## A099477.P10077457397415878133

`eq[1, A007310(A099475(n+1)+1)]+1`
-/

namespace A099477.P10077457397415878133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A099475 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A099477.P10077457397415878133

namespace A099477

/-- `eq[1, A007310(A099475(n+1)+1)]+1` -/
def P10077457397415878133.Spec : Prop :=
  ∀ n, (P10077457397415878133.a n : ℤ) = A099477 (n + 1)

end A099477

/-! ## A099477.P16623488059034469406

`eq[A000005(n+1), A243917(n+1)]+1`
-/

namespace A099477.P16623488059034469406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243917 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A099477.P16623488059034469406

namespace A099477

/-- `eq[A000005(n+1), A243917(n+1)]+1` -/
def P16623488059034469406.Spec : Prop :=
  ∀ n, (P16623488059034469406.a n : ℤ) = A099477 (n + 1)

end A099477

/-! ## A099477.P12522058423611973586

`eq[A000203(n+1), A243984(n+1)]+1`
-/

namespace A099477.P12522058423611973586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243984 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A099477.P12522058423611973586

namespace A099477

/-- `eq[A000203(n+1), A243984(n+1)]+1` -/
def P12522058423611973586.Spec : Prop :=
  ∀ n, (P12522058423611973586.a n : ℤ) = A099477 (n + 1)

end A099477

/-! ## A099477.P3307160808417105753

`record[n+1-A003144(n+1)*A099475(n+1)]`
-/

namespace A099477.P3307160808417105753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A003144 (n + 1) * A099475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099477.P3307160808417105753

namespace A099477

/-- `record[n+1-A003144(n+1)*A099475(n+1)]` -/
def P3307160808417105753.Spec : Prop :=
  ∀ n, P3307160808417105753.a n = A099477 (n + 1)

end A099477

/-!
# A099478: Least k such that k*2^n*(2^n-1) - 1 is prime.

The programs for A099478, there is no canonical definition to state claims against.
-/

/-! ## A099478.P11830336517103054598

`A152414(n+1)+A055088(A056899(n+1))`
-/

namespace A099478.P11830336517103054598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152414 (n + 1) + A055088 (A056899 (n + 1)).toNat

end

end A099478.P11830336517103054598

/-! ## A099478.P11943076292120545408

`A152414(n+1)+A133566(A005585(n+1))`
-/

namespace A099478.P11943076292120545408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152414 (n + 1) + A133566 (A005585 (n + 1)).toNat

end

end A099478.P11943076292120545408

/-!
# A099479: Count, repeating 4n three times for n > 0.

The programs for A099479, the canonical program `A099479.P5145023907551708787` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099479 has offset 0).

The definition of A099479 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099479.P17340744606267561470

`ogf((x+x^3)/(1-2x+2x^2-2x^3+2x^4-2x^5+x^6))`
-/

namespace A099479.P17340744606267561470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 1] [1, -2, 2, -2, 2, -2, 1] n

end

end A099479.P17340744606267561470

namespace A099479

/-- `ogf((x+x^3)/(1-2x+2x^2-2x^3+2x^4-2x^5+x^6))` -/
def P17340744606267561470.Spec : Prop :=
  ∀ n, P17340744606267561470.a n = A099479 n

end A099479

/-! ## A099479.P5145023907551708787

`floor((n+2)/3)+floor((n+3)/6)+floor((n+4)/6)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099479

/-- `floor((n+2)/3)+floor((n+3)/6)+floor((n+4)/6)` -/
def P5145023907551708787.Spec : Prop :=
  ∀ n, P5145023907551708787.a n = A099479 n

theorem P5145023907551708787.correct : P5145023907551708787.Spec := by
  intro n
  simp only [A099479]

end A099479

/-! ## A099479.P9169147105783844924

`∑[((n%6)^4)%5]`
-/

namespace A099479.P9169147105783844924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 6) ^ 4 % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099479.P9169147105783844924

namespace A099479

/-- `∑[((n%6)^4)%5]` -/
def P9169147105783844924.Spec : Prop :=
  ∀ n, (P9169147105783844924.a n : ℤ) = A099479 n

end A099479

/-! ## A099479.P8709071952723443707

`2*n-comp[or(5, n)]`
-/

namespace A099479.P8709071952723443707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A099479.P8709071952723443707

namespace A099479

/-- `2*n-comp[or(5, n)]` -/
def P8709071952723443707.Spec : Prop :=
  ∀ n, P8709071952723443707.a n = A099479 n

end A099479

/-! ## A099479.P10400528327963091771

`∑[ceil(n/2)²%3]`
-/

namespace A099479.P10400528327963091771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌈(n : ℚ) / 2⌉ ^ 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099479.P10400528327963091771

namespace A099479

/-- `∑[ceil(n/2)²%3]` -/
def P10400528327963091771.Spec : Prop :=
  ∀ n, P10400528327963091771.a n = A099479 n

end A099479

/-! ## A099479.P9612821372398988080

`∑[floor(atan((n+1)%6))]`
-/

namespace A099479.P9612821372398988080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (((n + 1) % 6 : ℕ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099479.P9612821372398988080

namespace A099479

/-- `∑[floor(atan((n+1)%6))]` -/
def P9612821372398988080.Spec : Prop :=
  ∀ n, P9612821372398988080.a n = A099479 n

end A099479

/-! ## A099479.P4096896721735936860

`2*n-lt[n, or(5, n)]`
-/

namespace A099479.P4096896721735936860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ)

end

end A099479.P4096896721735936860

namespace A099479

/-- `2*n-lt[n, or(5, n)]` -/
def P4096896721735936860.Spec : Prop :=
  ∀ n, P4096896721735936860.a n = A099479 n

end A099479

/-! ## A099479.P2433151107858932137

`∑[char[a(n-4)+6]]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A099479.P2433151107858932137
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4] fun n f2 =>
  f2 (n - 4) + 6

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099479.P2433151107858932137

namespace A099479

/-- `∑[char[a(n-4)+6]]` -/
def P2433151107858932137.Spec : Prop :=
  ∀ n, (P2433151107858932137.a n : ℤ) = A099479 n

end A099479

/-! ## A099479.P2323458555466783428

`floor(∑[4-a(n-3)]/3)` with `a(0)=0, a(1)=3, a(2)=4`
-/

namespace A099479.P2323458555466783428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 4] fun n f1 =>
  4 - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌋

end

end A099479.P2323458555466783428

namespace A099479

/-- `floor(∑[4-a(n-3)]/3)` -/
def P2323458555466783428.Spec : Prop :=
  ∀ n, P2323458555466783428.a n = A099479 n

end A099479

/-! ## A099479.P11106842951353472952

`∪[a(n-1)+5, 2*n]-n` with `a(0)=4`
-/

namespace A099479.P11106842951353472952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) + 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n : ℤ) - (n : ℤ)

end

end A099479.P11106842951353472952

namespace A099479

/-- `∪[a(n-1)+5, 2*n]-n` -/
def P11106842951353472952.Spec : Prop :=
  ∀ n, P11106842951353472952.a n = A099479 n

end A099479

/-! ## A099479.P3989185398020329248

`n-floor((n-a(n-1)%4)/3)` with `a(0)=0`
-/

namespace A099479.P3989185398020329248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - ⌊((n : ℤ) - Int.tmod (a (n - 1)) 4 : ℚ) / 3⌋

end

end A099479.P3989185398020329248

namespace A099479

/-- `n-floor((n-a(n-1)%4)/3)` -/
def P3989185398020329248.Spec : Prop :=
  ∀ n, P3989185398020329248.a n = A099479 n

end A099479

/-! ## A099479.P17411256263290036788

`∑[(a(n-2)-a(n-4))²]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A099479.P17411256263290036788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1] fun n f1 =>
  (f1 (n - 2) - f1 (n - 4)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099479.P17411256263290036788

namespace A099479

/-- `∑[(a(n-2)-a(n-4))²]` -/
def P17411256263290036788.Spec : Prop :=
  ∀ n, P17411256263290036788.a n = A099479 n

end A099479

/-! ## A099479.P1474781910004502003

`∪[2*n+1, 5*(n+1)]-(n+1)`
-/

namespace A099479.P1474781910004502003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n : ℤ) - (n + 1 : ℤ)

end

end A099479.P1474781910004502003

namespace A099479

/-- `∪[2*n+1, 5*(n+1)]-(n+1)` -/
def P1474781910004502003.Spec : Prop :=
  ∀ n, P1474781910004502003.a n = A099479 n

end A099479

/-! ## A099479.P166808096370520119

`∪[2*n+1, 5*(n+1)]%(n+1)`
-/

namespace A099479.P166808096370520119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n % (n + 1)

end

end A099479.P166808096370520119

namespace A099479

/-- `∪[2*n+1, 5*(n+1)]%(n+1)` -/
def P166808096370520119.Spec : Prop :=
  ∀ n, (P166808096370520119.a n : ℤ) = A099479 n

end A099479

/-! ## A099479.P13057278682898764946

`∑[2-(a(n-2)+a(n-4))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A099479.P13057278682898764946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1] fun n f1 =>
  2 - (f1 (n - 2) + f1 (n - 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099479.P13057278682898764946

namespace A099479

/-- `∑[2-(a(n-2)+a(n-4))]` -/
def P13057278682898764946.Spec : Prop :=
  ∀ n, P13057278682898764946.a n = A099479 n

end A099479

/-! ## A099479.P631266874776440624

`∑[1-a(n-2)*a(n-4)]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A099479.P631266874776440624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1] fun n f1 =>
  1 - f1 (n - 2) * f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099479.P631266874776440624

namespace A099479

/-- `∑[1-a(n-2)*a(n-4)]` -/
def P631266874776440624.Spec : Prop :=
  ∀ n, P631266874776440624.a n = A099479 n

end A099479

/-! ## A099479.P1804644007708971716

`∑[2-a(n-2)-a(n-4)]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A099479.P1804644007708971716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1] fun n f1 =>
  2 - f1 (n - 2) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099479.P1804644007708971716

namespace A099479

/-- `∑[2-a(n-2)-a(n-4)]` -/
def P1804644007708971716.Spec : Prop :=
  ∀ n, P1804644007708971716.a n = A099479 n

end A099479

/-! ## A099479.P6023425928340509722

`∑[A131719(n)]`
-/

namespace A099479.P6023425928340509722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131719 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099479.P6023425928340509722

namespace A099479

/-- `∑[A131719(n)]` -/
def P6023425928340509722.Spec : Prop :=
  ∀ n, P6023425928340509722.a n = A099479 n

end A099479

/-! ## A099479.P9462028267932984404

`∑[abs(A131720(n))]`
-/

namespace A099479.P9462028267932984404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A131720 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099479.P9462028267932984404

namespace A099479

/-- `∑[abs(A131720(n))]` -/
def P9462028267932984404.Spec : Prop :=
  ∀ n, P9462028267932984404.a n = A099479 n

end A099479

/-! ## A099479.P8750227135731126787

`∑[∑[A134667(n)]]`
-/

namespace A099479.P8750227135731126787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134667 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099479.P8750227135731126787

namespace A099479

/-- `∑[∑[A134667(n)]]` -/
def P8750227135731126787.Spec : Prop :=
  ∀ n, P8750227135731126787.a n = A099479 n

end A099479

/-!
# A099480: Count from 1, repeating 2*n five times.

The programs for A099480, the canonical program `A099480.P13257379117522122156` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099480 has offset 0).

The definition of A099480 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099480.P13088494670940362816

`ogf(1/(1-2x+2x^2-2x^3+2x^4-2x^5+x^6))`
-/

namespace A099480.P13088494670940362816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, 2, -2, 2, -2, 1] n

end

end A099480.P13088494670940362816

namespace A099480

/-- `ogf(1/(1-2x+2x^2-2x^3+2x^4-2x^5+x^6))` -/
def P13088494670940362816.Spec : Prop :=
  ∀ n, P13088494670940362816.a n = A099480 n

end A099480

/-! ## A099480.P13257379117522122156

`A287393(n+1)/2`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099480

/-- `A287393(n+1)/2` -/
def P13257379117522122156.Spec : Prop :=
  ∀ n, P13257379117522122156.a n = (A099480 n : ℚ)

end A099480

/-! ## A099480.P15895413851506033504

`comp[and(n, -6)]-n`
-/

namespace A099480.P15895413851506033504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-6)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A099480.P15895413851506033504

namespace A099480

/-- `comp[and(n, -6)]-n` -/
def P15895413851506033504.Spec : Prop :=
  ∀ n, P15895413851506033504.a n = A099480 n

end A099480

/-! ## A099480.P10958276420489143347

`∑[(n%6)!%2]`
-/

namespace A099480.P10958276420489143347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n % 6) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099480.P10958276420489143347

namespace A099480

/-- `∑[(n%6)!%2]` -/
def P10958276420489143347.Spec : Prop :=
  ∀ n, (P10958276420489143347.a n : ℤ) = A099480 n

end A099480

/-! ## A099480.P5550381387610511524

`∑[(or(1, n)%3)%2]`
-/

namespace A099480.P5550381387610511524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n % 3 % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099480.P5550381387610511524

namespace A099480

/-- `∑[(or(1, n)%3)%2]` -/
def P5550381387610511524.Spec : Prop :=
  ∀ n, (P5550381387610511524.a n : ℤ) = A099480 n

end A099480

/-! ## A099480.P16290624825578065966

`∑[val(or(6, 4*n), 6)]`
-/

namespace A099480.P16290624825578065966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.lor 6 (4 * n)) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099480.P16290624825578065966

namespace A099480

/-- `∑[val(or(6, 4*n), 6)]` -/
def P16290624825578065966.Spec : Prop :=
  ∀ n, (P16290624825578065966.a n : ℤ) = A099480 n

end A099480

/-! ## A099480.P5552352587324108528

`∑[char[xor(1, 3*n)-1]]`
-/

namespace A099480.P5552352587324108528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (3 * n) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099480.P5552352587324108528

namespace A099480

/-- `∑[char[xor(1, 3*n)-1]]` -/
def P5552352587324108528.Spec : Prop :=
  ∀ n, (P5552352587324108528.a n : ℤ) = A099480 n

end A099480

/-! ## A099480.P7138049683878945786

`∑[C(lcm(2, n+1), 2)%3]`
-/

namespace A099480.P7138049683878945786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lcm 2 (n + 1)) 2 % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099480.P7138049683878945786

namespace A099480

/-- `∑[C(lcm(2, n+1), 2)%3]` -/
def P7138049683878945786.Spec : Prop :=
  ∀ n, (P7138049683878945786.a n : ℤ) = A099480 n

end A099480

/-! ## A099480.P7051683715488891238

`comp[or(5, n)-6]+1-n`
-/

namespace A099480.P7051683715488891238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 5 n : ℤ) - 6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + (1 - (n : ℤ))

end

end A099480.P7051683715488891238

namespace A099480

/-- `comp[or(5, n)-6]+1-n` -/
def P7051683715488891238.Spec : Prop :=
  ∀ n, P7051683715488891238.a n = A099480 n

end A099480

/-! ## A099480.P18027050646173596136

`1-(n-comp[or(5, n)-6])`
-/

namespace A099480.P18027050646173596136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 5 n : ℤ) - 6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ))

end

end A099480.P18027050646173596136

namespace A099480

/-- `1-(n-comp[or(5, n)-6])` -/
def P18027050646173596136.Spec : Prop :=
  ∀ n, P18027050646173596136.a n = A099480 n

end A099480

/-! ## A099480.P10224844108030486160

`∑[∑[ogf(1/(1+x^2+x^4))]]`
-/

namespace A099480.P10224844108030486160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, 1, 0, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099480.P10224844108030486160

namespace A099480

/-- `∑[∑[ogf(1/(1+x^2+x^4))]]` -/
def P10224844108030486160.Spec : Prop :=
  ∀ n, P10224844108030486160.a n = A099480 n

end A099480

/-! ## A099480.P15533755619917002295

`lt[n-3, or(5, n-3)]-n`
-/

namespace A099480.P15533755619917002295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 5 ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - (n : ℤ)

end

end A099480.P15533755619917002295

namespace A099480

/-- `lt[n-3, or(5, n-3)]-n` -/
def P15533755619917002295.Spec : Prop :=
  ∀ n, P15533755619917002295.a n = A099480 n

end A099480

/-! ## A099480.P8736326441981346484

`∑[∑[∑[n+1]%(n+2)]%3]`
-/

namespace A099480.P8736326441981346484
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) % (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099480.P8736326441981346484

namespace A099480

/-- `∑[∑[∑[n+1]%(n+2)]%3]` -/
def P8736326441981346484.Spec : Prop :=
  ∀ n, (P8736326441981346484.a n : ℤ) = A099480 n

end A099480

/-! ## A099480.P16756373321765500696

`floor(∑[2-a(n-3)]/3)` with `a(0)=3, a(1)=3, a(2)=2`
-/

namespace A099480.P16756373321765500696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 3, 2] fun n f1 =>
  2 - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌋

end

end A099480.P16756373321765500696

namespace A099480

/-- `floor(∑[2-a(n-3)]/3)` -/
def P16756373321765500696.Spec : Prop :=
  ∀ n, P16756373321765500696.a n = A099480 n

end A099480

/-! ## A099480.P16604633409222250624

`floor((n+5)/6)+floor((n+6)/6)`
-/

namespace A099480.P16604633409222250624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 5 : ℚ) / 6⌋ + ⌊(n + 6 : ℚ) / 6⌋

end

end A099480.P16604633409222250624

namespace A099480

/-- `floor((n+5)/6)+floor((n+6)/6)` -/
def P16604633409222250624.Spec : Prop :=
  ∀ n, P16604633409222250624.a n = A099480 n

end A099480

/-! ## A099480.P3129719421256640746

`∑[1-(a(n-2)+a(n-4))]` with `a(0)=1, a(1)=1, a(2)=0, a(3)=0`
-/

namespace A099480.P3129719421256640746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 0] fun n f1 =>
  1 - (f1 (n - 2) + f1 (n - 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099480.P3129719421256640746

namespace A099480

/-- `∑[1-(a(n-2)+a(n-4))]` -/
def P3129719421256640746.Spec : Prop :=
  ∀ n, P3129719421256640746.a n = A099480 n

end A099480

/-! ## A099480.P17881976267735332765

`∑[1-a(n-2)-a(n-4)]` with `a(0)=1, a(1)=1, a(2)=0, a(3)=0`
-/

namespace A099480.P17881976267735332765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 0] fun n f1 =>
  1 - f1 (n - 2) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099480.P17881976267735332765

namespace A099480

/-- `∑[1-a(n-2)-a(n-4)]` -/
def P17881976267735332765.Spec : Prop :=
  ∀ n, P17881976267735332765.a n = A099480 n

end A099480

/-! ## A099480.P4713471810592762274

`∑[1-A131735(n)]`
-/

namespace A099480.P4713471810592762274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099480.P4713471810592762274

namespace A099480

/-- `∑[1-A131735(n)]` -/
def P4713471810592762274.Spec : Prop :=
  ∀ n, P4713471810592762274.a n = A099480 n

end A099480

/-! ## A099480.P6888726644877618801

`∑[A380484(5*n)]`
-/

namespace A099480.P6888726644877618801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380484 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099480.P6888726644877618801

namespace A099480

/-- `∑[A380484(5*n)]` -/
def P6888726644877618801.Spec : Prop :=
  ∀ n, P6888726644877618801.a n = A099480 n

end A099480

/-! ## A099480.P17279408584113648616

`∑[1-A131736(n)²]`
-/

namespace A099480.P17279408584113648616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A131736 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099480.P17279408584113648616

namespace A099480

/-- `∑[1-A131736(n)²]` -/
def P17279408584113648616.Spec : Prop :=
  ∀ n, P17279408584113648616.a n = A099480 n

end A099480

/-!
# A099481: Numbers k such that 2^k - k^2 is a semiprime.

The programs for A099481, there is no canonical definition to state claims against.
-/

/-! ## A099481.P12720803351171184738

`ceil(log2(A099482(n+1)))`
-/

namespace A099481.P12720803351171184738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A099482 (n + 1) : ℝ)⌉

end

end A099481.P12720803351171184738

/-! ## A099481.P6766770265662736654

`A004442(floor(log2(A099482(n+1))))`
-/

namespace A099481.P6766770265662736654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (Nat.log 2 (A099482 (n + 1)).toNat)

end

end A099481.P6766770265662736654

/-! ## A099481.P10317698759763350443

`A153152(floor(log2(A099482(n+1))))`
-/

namespace A099481.P10317698759763350443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (Nat.log 2 (A099482 (n + 1)).toNat)

end

end A099481.P10317698759763350443

/-! ## A099481.P148611111950488108

`round(log2(A099482(n+1)+A024012(n)))`
-/

namespace A099481.P148611111950488108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A099482 (n + 1) + A024012 n : ℝ))

end

end A099481.P148611111950488108

/-! ## A099481.P15529186161875148167

`round(log2(A099482(n+1)+A072180(n+1)))`
-/

namespace A099481.P15529186161875148167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A099482 (n + 1) + A072180 (n + 1) : ℝ))

end

end A099481.P15529186161875148167

/-!
# A099482: Semiprimes of the form 2^k - k^2.

The programs for A099482, there is no canonical definition to state claims against.
-/

/-! ## A099482.P17768074105849448271

`A024012(A099481(n+1))`
-/

namespace A099482.P17768074105849448271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024012 (A099481 (n + 1)).toNat

end

end A099482.P17768074105849448271

/-!
# A099483: A Fibonacci convolution.

The programs for A099483, the canonical program `A099483.P11366082103204614783` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099483 has offset 0).

The definition of A099483 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099483.P11366082103204614783

`ogf(x/(1-3x+2x^2-3x^3+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099483

/-- `ogf(x/(1-3x+2x^2-3x^3+x^4))` -/
def P11366082103204614783.Spec : Prop :=
  ∀ n, P11366082103204614783.a n = A099483 n

theorem P11366082103204614783.correct : P11366082103204614783.Spec := by
  intro n
  simp only [A099483]

end A099483

/-! ## A099483.P16583505252105865719

`∑[floor(ϕ²*a(n-1))]-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A099483.P16583505252105865719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ⌊Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 2)

end

end A099483.P16583505252105865719

namespace A099483

/-- `∑[floor(ϕ²*a(n-1))]-a(n-2)` -/
def P16583505252105865719.Spec : Prop :=
  ∀ n, P16583505252105865719.a n = A099483 n

end A099483

/-! ## A099483.P6445812526066757728

`A293544(2*(n+1))`
-/

namespace A099483.P6445812526066757728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293544 (2 * (n + 1))

end

end A099483.P6445812526066757728

namespace A099483

/-- `A293544(2*(n+1))` -/
def P6445812526066757728.Spec : Prop :=
  ∀ n, P6445812526066757728.a n = A099483 n

end A099483

/-! ## A099483.P6776233751414119808

`∑[A293544(n+1+n)]`
-/

namespace A099483.P6776233751414119808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293544 (n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099483.P6776233751414119808

namespace A099483

/-- `∑[A293544(n+1+n)]` -/
def P6776233751414119808.Spec : Prop :=
  ∀ n, P6776233751414119808.a n = A099483 n

end A099483

/-! ## A099483.P10412850014902605617

`A140824(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A099483.P10412850014902605617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A140824 n + a (n - 2)

end

end A099483.P10412850014902605617

namespace A099483

/-- `A140824(n)+a(n-2)` -/
def P10412850014902605617.Spec : Prop :=
  ∀ n, P10412850014902605617.a n = A099483 n

end A099483

/-! ## A099483.P3180144028476899286

`A001906(n)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A099483.P3180144028476899286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A001906 n - a (n - 2)

end

end A099483.P3180144028476899286

namespace A099483

/-- `A001906(n)-a(n-2)` -/
def P3180144028476899286.Spec : Prop :=
  ∀ n, P3180144028476899286.a n = A099483 n

end A099483

/-! ## A099483.P6859782170519798593

`round(A000045(2*n)/3*ϕ²)`
-/

namespace A099483.P6859782170519798593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A000045 (2 * n) : ℚ) / 3 : ℝ) * Real.goldenRatio ^ 2)

end

end A099483.P6859782170519798593

namespace A099483

/-- `round(A000045(2*n)/3*ϕ²)` -/
def P6859782170519798593.Spec : Prop :=
  ∀ n, P6859782170519798593.a n = A099483 n

end A099483

/-! ## A099483.P10297903110884732155

`A000045(lcm(2, 2*n))-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A099483.P10297903110884732155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000045 (Nat.lcm 2 (2 * n)) - a (n - 2)

end

end A099483.P10297903110884732155

namespace A099483

/-- `A000045(lcm(2, 2*n))-a(n-2)` -/
def P10297903110884732155.Spec : Prop :=
  ∀ n, P10297903110884732155.a n = A099483 n

end A099483

/-! ## A099483.P6730608088456019916

`∑[A000045(2*n-1)-a(n-2)]` with `a(0)=0, a(1)=1`
-/

namespace A099483.P6730608088456019916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A000045 (2 * n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099483.P6730608088456019916

namespace A099483

/-- `∑[A000045(2*n-1)-a(n-2)]` -/
def P6730608088456019916.Spec : Prop :=
  ∀ n, P6730608088456019916.a n = A099483 n

end A099483

/-! ## A099483.P4875503160834929078

`A000045(Δ[n*(n-1)])-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A099483.P4875503160834929078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000045 (f1 (n + 1) - f1 n).toNat - a (n - 2)

end

end A099483.P4875503160834929078

namespace A099483

/-- `A000045(Δ[n*(n-1)])-a(n-2)` -/
def P4875503160834929078.Spec : Prop :=
  ∀ n, P4875503160834929078.a n = A099483 n

end A099483

/-! ## A099483.P5072369031647361328

`∑[A000045(comp[n+2+n])]-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A099483.P5072369031647361328
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 2)

end

end A099483.P5072369031647361328

namespace A099483

/-- `∑[A000045(comp[n+2+n])]-a(n-2)` -/
def P5072369031647361328.Spec : Prop :=
  ∀ n, P5072369031647361328.a n = A099483 n

end A099483

/-! ## A099483.P13256688606223321631

`A099484(n)-A056594(n)`
-/

namespace A099483.P13256688606223321631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099484 n - A056594 n

end

end A099483.P13256688606223321631

namespace A099483

/-- `A099484(n)-A056594(n)` -/
def P13256688606223321631.Spec : Prop :=
  ∀ n, P13256688606223321631.a n = A099483 n

end A099483

/-! ## A099483.P11795240461668115392

`A387783(n)-A121262(n)`
-/

namespace A099483.P11795240461668115392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387783 n - A121262 n

end

end A099483.P11795240461668115392

namespace A099483

/-- `A387783(n)-A121262(n)` -/
def P11795240461668115392.Spec : Prop :=
  ∀ n, P11795240461668115392.a n = A099483 n

end A099483

/-! ## A099483.P3973002667020961015

`record[A293544(A065190(n+1)+1)]`
-/

namespace A099483.P3973002667020961015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293544 (A065190 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099483.P3973002667020961015

namespace A099483

/-- `record[A293544(A065190(n+1)+1)]` -/
def P3973002667020961015.Spec : Prop :=
  ∀ n, P3973002667020961015.a n = A099483 n

end A099483

/-! ## A099483.P11132935727177459741

`A112299(2*(n+1))+A099484(n)`
-/

namespace A099483.P11132935727177459741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112299 (2 * (n + 1)) + A099484 n

end

end A099483.P11132935727177459741

namespace A099483

/-- `A112299(2*(n+1))+A099484(n)` -/
def P11132935727177459741.Spec : Prop :=
  ∀ n, P11132935727177459741.a n = A099483 n

end A099483

/-! ## A099483.P17310263208428616801

`A000045(n)*A000032(n)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A099483.P17310263208428616801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000045 n * A000032 n - a (n - 2)

end

end A099483.P17310263208428616801

namespace A099483

/-- `A000045(n)*A000032(n)-a(n-2)` -/
def P17310263208428616801.Spec : Prop :=
  ∀ n, P17310263208428616801.a n = A099483 n

end A099483

/-! ## A099483.P783459888718109383

`record[A000045(n+1-A020639(n+1))]-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A099483.P783459888718109383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((n + 1 : ℤ) - A020639 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - a (n - 2)

end

end A099483.P783459888718109383

namespace A099483

/-- `record[A000045(n+1-A020639(n+1))]-a(n-2)` -/
def P783459888718109383.Spec : Prop :=
  ∀ n, P783459888718109383.a n = A099483 n

end A099483

/-! ## A099483.P13125578474838975254

`Δ[A004696(Δ[n²])]`
-/

namespace A099483.P13125578474838975254
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004696 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099483.P13125578474838975254

namespace A099483

/-- `Δ[A004696(Δ[n²])]` -/
def P13125578474838975254.Spec : Prop :=
  ∀ n, P13125578474838975254.a n = A099483 n

end A099483

/-! ## A099483.P8077712793418664744

`Δ[A293543(Δ[n²])]`
-/

namespace A099483.P8077712793418664744
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293543 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099483.P8077712793418664744

namespace A099483

/-- `Δ[A293543(Δ[n²])]` -/
def P8077712793418664744.Spec : Prop :=
  ∀ n, P8077712793418664744.a n = A099483 n

end A099483

/-! ## A099483.P1327733409151398189

`round(A000045(2*(n+1))/3)`
-/

namespace A099483.P1327733409151398189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000045 (2 * (n + 1)) : ℚ) / 3)

end

end A099483.P1327733409151398189

namespace A099483

/-- `round(A000045(2*(n+1))/3)` -/
def P1327733409151398189.Spec : Prop :=
  ∀ n, P1327733409151398189.a n = A099483 n

end A099483

/-!
# A099484: A Fibonacci convolution.

The programs for A099484, the canonical program `A099484.P6414917837973858836` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099484 has offset 0).

The definition of A099484 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099484.P6414917837973858836

`ogf((1-2x+x^2)/(1-3x+2x^2-3x^3+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099484

/-- `ogf((1-2x+x^2)/(1-3x+2x^2-3x^3+x^4))` -/
def P6414917837973858836.Spec : Prop :=
  ∀ n, P6414917837973858836.a n = A099484 n

theorem P6414917837973858836.correct : P6414917837973858836.Spec := by
  intro n
  simp only [A099484]

end A099484

/-! ## A099484.P2991543855884194036

`∑[floor(ϕ²*a(n-1))]-a(n-2)-1` with `a(0)=1, a(1)=1`
-/

namespace A099484.P2991543855884194036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ⌊Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 2) - 1

end

end A099484.P2991543855884194036

namespace A099484

/-- `∑[floor(ϕ²*a(n-1))]-a(n-2)-1` -/
def P2991543855884194036.Spec : Prop :=
  ∀ n, P2991543855884194036.a n = A099484 n

end A099484

/-! ## A099484.P8054864551775682799

`A001906(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A099484.P8054864551775682799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A001906 n - a (n - 2)

end

end A099484.P8054864551775682799

namespace A099484

/-- `A001906(n)-a(n-2)` -/
def P8054864551775682799.Spec : Prop :=
  ∀ n, P8054864551775682799.a n = A099484 n

end A099484

/-! ## A099484.P18143026177588169874

`A088305(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A099484.P18143026177588169874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A088305 n - a (n - 2)

end

end A099484.P18143026177588169874

namespace A099484

/-- `A088305(n)-a(n-2)` -/
def P18143026177588169874.Spec : Prop :=
  ∀ n, P18143026177588169874.a n = A099484 n

end A099484

/-! ## A099484.P8866163514088807854

`A237268(n)-a(n-2)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A099484.P8866163514088807854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A237268 n - a (n - 2)

end

end A099484.P8866163514088807854

namespace A099484

/-- `A237268(n)-a(n-2)` -/
def P8866163514088807854.Spec : Prop :=
  ∀ n, P8866163514088807854.a n = A099484 n

end A099484

/-! ## A099484.P1798464331658149260

`A000045(2*n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A099484.P1798464331658149260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000045 (2 * n) - a (n - 2)

end

end A099484.P1798464331658149260

namespace A099484

/-- `A000045(2*n)-a(n-2)` -/
def P1798464331658149260.Spec : Prop :=
  ∀ n, P1798464331658149260.a n = A099484 n

end A099484

/-! ## A099484.P10370501754840729709

`∑[A000045(n-1+n)-a(n-2)]` with `a(0)=1, a(1)=0`
-/

namespace A099484.P10370501754840729709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A000045 ((n : ℤ) - 1 + (n : ℤ)).toNat - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099484.P10370501754840729709

namespace A099484

/-- `∑[A000045(n-1+n)-a(n-2)]` -/
def P10370501754840729709.Spec : Prop :=
  ∀ n, P10370501754840729709.a n = A099484 n

end A099484

/-! ## A099484.P9927741717870180318

`A099483(n)+A056594(n)`
-/

namespace A099484.P9927741717870180318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099483 n + A056594 n

end

end A099484.P9927741717870180318

namespace A099484

/-- `A099483(n)+A056594(n)` -/
def P9927741717870180318.Spec : Prop :=
  ∀ n, P9927741717870180318.a n = A099484 n

end A099484

/-! ## A099484.P5239018268162006531

`A387782(n+1)+A121262(n)`
-/

namespace A099484.P5239018268162006531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387782 (n + 1) + A121262 n

end

end A099484.P5239018268162006531

namespace A099484

/-- `A387782(n+1)+A121262(n)` -/
def P5239018268162006531.Spec : Prop :=
  ∀ n, P5239018268162006531.a n = A099484 n

end A099484

/-! ## A099484.P5541602910372183626

`record[A000045(n+1-A020639(n+1))]-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A099484.P5541602910372183626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((n + 1 : ℤ) - A020639 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - a (n - 2)

end

end A099484.P5541602910372183626

namespace A099484

/-- `record[A000045(n+1-A020639(n+1))]-a(n-2)` -/
def P5541602910372183626.Spec : Prop :=
  ∀ n, P5541602910372183626.a n = A099484 n

end A099484

/-! ## A099484.P15870200928642425514

`Δ[A293544(Δ[n²])]`
-/

namespace A099484.P15870200928642425514
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293544 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099484.P15870200928642425514

namespace A099484

/-- `Δ[A293544(Δ[n²])]` -/
def P15870200928642425514.Spec : Prop :=
  ∀ n, P15870200928642425514.a n = A099484 n

end A099484

/-! ## A099484.P7544461407714005053

`Δ[Δ[A293544(2*n)]]`
-/

namespace A099484.P7544461407714005053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293544 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099484.P7544461407714005053

namespace A099484

/-- `Δ[Δ[A293544(2*n)]]` -/
def P7544461407714005053.Spec : Prop :=
  ∀ n, P7544461407714005053.a n = A099484 n

end A099484

/-! ## A099484.P13837325795964234662

`Δ[round(A293545(2*n+1)/2)]`
-/

namespace A099484.P13837325795964234662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A293545 (2 * n + 1) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099484.P13837325795964234662

namespace A099484

/-- `Δ[round(A293545(2*n+1)/2)]` -/
def P13837325795964234662.Spec : Prop :=
  ∀ n, P13837325795964234662.a n = A099484 n

end A099484

/-! ## A099484.P4208029070464255085

`A099485(n)-A099483(n)`
-/

namespace A099484.P4208029070464255085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099485 n - A099483 n

end

end A099484.P4208029070464255085

namespace A099484

/-- `A099485(n)-A099483(n)` -/
def P4208029070464255085.Spec : Prop :=
  ∀ n, P4208029070464255085.a n = A099484 n

end A099484

/-! ## A099484.P17591074699928945843

`A122367(n)-A140824(n)`
-/

namespace A099484.P17591074699928945843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n - A140824 n

end

end A099484.P17591074699928945843

namespace A099484

/-- `A122367(n)-A140824(n)` -/
def P17591074699928945843.Spec : Prop :=
  ∀ n, P17591074699928945843.a n = A099484 n

end A099484

/-! ## A099484.P15276081314751960637

`(A099485(n)+A056594(n))/2`
-/

namespace A099484.P15276081314751960637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099485 n + A056594 n : ℚ) / 2

end

end A099484.P15276081314751960637

namespace A099484

/-- `(A099485(n)+A056594(n))/2` -/
def P15276081314751960637.Spec : Prop :=
  ∀ n, P15276081314751960637.a n = (A099484 n : ℚ)

end A099484

/-! ## A099484.P12464606811942368494

`A001906(n+1)-2*A099483(n)`
-/

namespace A099484.P12464606811942368494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1) - 2 * A099483 n

end

end A099484.P12464606811942368494

namespace A099484

/-- `A001906(n+1)-2*A099483(n)` -/
def P12464606811942368494.Spec : Prop :=
  ∀ n, P12464606811942368494.a n = A099484 n

end A099484

/-! ## A099484.P15783448660770450907

`A000045(2*n+1)-A140824(n)`
-/

namespace A099484.P15783448660770450907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1) - A140824 n

end

end A099484.P15783448660770450907

namespace A099484

/-- `A000045(2*n+1)-A140824(n)` -/
def P15783448660770450907.Spec : Prop :=
  ∀ n, P15783448660770450907.a n = A099484 n

end A099484

/-! ## A099484.P11237274483659530800

`A152192(2*n+1)-A140824(n)`
-/

namespace A099484.P11237274483659530800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152192 (2 * n + 1) - A140824 n

end

end A099484.P11237274483659530800

namespace A099484

/-- `A152192(2*n+1)-A140824(n)` -/
def P11237274483659530800.Spec : Prop :=
  ∀ n, P11237274483659530800.a n = A099484 n

end A099484

/-! ## A099484.P4244871350847057685

`A293544(2*n+3)-A293544(2*n+1)`
-/

namespace A099484.P4244871350847057685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293544 (2 * n + 3) - A293544 (2 * n + 1)

end

end A099484.P4244871350847057685

namespace A099484

/-- `A293544(2*n+3)-A293544(2*n+1)` -/
def P4244871350847057685.Spec : Prop :=
  ∀ n, P4244871350847057685.a n = A099484 n

end A099484

/-!
# A099485: A Fibonacci convolution.

The programs for A099485, the canonical program `A099485.P13100285222294234245` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099485 has offset 0).

The definition of A099485 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099485.P13100285222294234245

`ogf((1-x+x^2)/(1-3x+2x^2-3x^3+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099485

/-- `ogf((1-x+x^2)/(1-3x+2x^2-3x^3+x^4))` -/
def P13100285222294234245.Spec : Prop :=
  ∀ n, P13100285222294234245.a n = A099485 n

theorem P13100285222294234245.correct : P13100285222294234245.Spec := by
  intro n
  simp only [A099485]

end A099485

/-! ## A099485.P9369651672809964162

`Δ[A293545(Δ[n²])]`
-/

namespace A099485.P9369651672809964162
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293545 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099485.P9369651672809964162

namespace A099485

/-- `Δ[A293545(Δ[n²])]` -/
def P9369651672809964162.Spec : Prop :=
  ∀ n, P9369651672809964162.a n = A099485 n

end A099485

/-! ## A099485.P4876228646181725091

`Δ[A293546(Δ[n²])]`
-/

namespace A099485.P4876228646181725091
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293546 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099485.P4876228646181725091

namespace A099485

/-- `Δ[A293546(Δ[n²])]` -/
def P4876228646181725091.Spec : Prop :=
  ∀ n, P4876228646181725091.a n = A099485 n

end A099485

/-! ## A099485.P384575629797380227

`A293547(2*(n+1))`
-/

namespace A099485.P384575629797380227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293547 (2 * (n + 1))

end

end A099485.P384575629797380227

namespace A099485

/-- `A293547(2*(n+1))` -/
def P384575629797380227.Spec : Prop :=
  ∀ n, P384575629797380227.a n = A099485 n

end A099485

/-! ## A099485.P16132428938974109664

`∑[A293547(n+1+n)]`
-/

namespace A099485.P16132428938974109664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293547 (n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099485.P16132428938974109664

namespace A099485

/-- `∑[A293547(n+1+n)]` -/
def P16132428938974109664.Spec : Prop :=
  ∀ n, P16132428938974109664.a n = A099485 n

end A099485

/-! ## A099485.P8326156850514428377

`abs(Δ[A293545(2*n+1)])`
-/

namespace A099485.P8326156850514428377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293545 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A099485.P8326156850514428377

namespace A099485

/-- `abs(Δ[A293545(2*n+1)])` -/
def P8326156850514428377.Spec : Prop :=
  ∀ n, P8326156850514428377.a n = A099485 n

end A099485

/-! ## A099485.P14150460722595861962

`round(2*A000045(2*(n+1))/3)`
-/

namespace A099485.P14150460722595861962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * ((A000045 (2 * (n + 1)) : ℚ) / 3))

end

end A099485.P14150460722595861962

namespace A099485

/-- `round(2*A000045(2*(n+1))/3)` -/
def P14150460722595861962.Spec : Prop :=
  ∀ n, P14150460722595861962.a n = A099485 n

end A099485

/-! ## A099485.P11398336148323504571

`2*A000045(2*n)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A099485.P11398336148323504571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * A000045 (2 * n) - a (n - 2)

end

end A099485.P11398336148323504571

namespace A099485

/-- `2*A000045(2*n)-a(n-2)` -/
def P11398336148323504571.Spec : Prop :=
  ∀ n, P11398336148323504571.a n = A099485 n

end A099485

/-! ## A099485.P13580855953786147574

`A099484(n)+A099483(n)`
-/

namespace A099485.P13580855953786147574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099484 n + A099483 n

end

end A099485.P13580855953786147574

namespace A099485

/-- `A099484(n)+A099483(n)` -/
def P13580855953786147574.Spec : Prop :=
  ∀ n, P13580855953786147574.a n = A099485 n

end A099485

/-! ## A099485.P5587170794002190516

`A387784(n)+A121262(n)`
-/

namespace A099485.P5587170794002190516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387784 n + A121262 n

end

end A099485.P5587170794002190516

namespace A099485

/-- `A387784(n)+A121262(n)` -/
def P5587170794002190516.Spec : Prop :=
  ∀ n, P5587170794002190516.a n = A099485 n

end A099485

/-! ## A099485.P7516874071345514525

`Δ[record[A293545(A026741(n))]]`
-/

namespace A099485.P7516874071345514525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293545 (A026741 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099485.P7516874071345514525

namespace A099485

/-- `Δ[record[A293545(A026741(n))]]` -/
def P7516874071345514525.Spec : Prop :=
  ∀ n, P7516874071345514525.a n = A099485 n

end A099485

/-! ## A099485.P12190335518026719316

`Δ[record[A293545(A212831(n))]]`
-/

namespace A099485.P12190335518026719316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293545 (A212831 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099485.P12190335518026719316

namespace A099485

/-- `Δ[record[A293545(A212831(n))]]` -/
def P12190335518026719316.Spec : Prop :=
  ∀ n, P12190335518026719316.a n = A099485 n

end A099485

/-! ## A099485.P14555119431666973295

`A387783(n)+A387782(n+1)`
-/

namespace A099485.P14555119431666973295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387783 n + A387782 (n + 1)

end

end A099485.P14555119431666973295

namespace A099485

/-- `A387783(n)+A387782(n+1)` -/
def P14555119431666973295.Spec : Prop :=
  ∀ n, P14555119431666973295.a n = A099485 n

end A099485

/-! ## A099485.P10234375073859752387

`A001906(n+1)-A099483(n)`
-/

namespace A099485.P10234375073859752387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1) - A099483 n

end

end A099485.P10234375073859752387

namespace A099485

/-- `A001906(n+1)-A099483(n)` -/
def P10234375073859752387.Spec : Prop :=
  ∀ n, P10234375073859752387.a n = A099485 n

end A099485

/-! ## A099485.P10834343902243759841

`A056594(n)+2*A099483(n)`
-/

namespace A099485.P10834343902243759841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n + 2 * A099483 n

end

end A099485.P10834343902243759841

namespace A099485

/-- `A056594(n)+2*A099483(n)` -/
def P10834343902243759841.Spec : Prop :=
  ∀ n, P10834343902243759841.a n = A099485 n

end A099485

/-! ## A099485.P11724768267065934367

`2*A099484(n)-A056594(n)`
-/

namespace A099485.P11724768267065934367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099484 n - A056594 n

end

end A099485.P11724768267065934367

namespace A099485

/-- `2*A099484(n)-A056594(n)` -/
def P11724768267065934367.Spec : Prop :=
  ∀ n, P11724768267065934367.a n = A099485 n

end A099485

/-! ## A099485.P17759009570885705663

`A293544(2*n+3)+A293544(2*n)`
-/

namespace A099485.P17759009570885705663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293544 (2 * n + 3) + A293544 (2 * n)

end

end A099485.P17759009570885705663

namespace A099485

/-- `A293544(2*n+3)+A293544(2*n)` -/
def P17759009570885705663.Spec : Prop :=
  ∀ n, P17759009570885705663.a n = A099485 n

end A099485

/-! ## A099485.P10771511274282795400

`A293543(2*(n+1))+A004696(2*(n+1))`
-/

namespace A099485.P10771511274282795400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293543 (2 * (n + 1)) + A004696 (2 * (n + 1))

end

end A099485.P10771511274282795400

namespace A099485

/-- `A293543(2*(n+1))+A004696(2*(n+1))` -/
def P10771511274282795400.Spec : Prop :=
  ∀ n, P10771511274282795400.a n = A099485 n

end A099485

/-! ## A099485.P15133469765596493673

`A293545(2*n+3)-A293545(2*n+1)`
-/

namespace A099485.P15133469765596493673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293545 (2 * n + 3) - A293545 (2 * n + 1)

end

end A099485.P15133469765596493673

namespace A099485

/-- `A293545(2*n+3)-A293545(2*n+1)` -/
def P15133469765596493673.Spec : Prop :=
  ∀ n, P15133469765596493673.a n = A099485 n

end A099485

/-! ## A099485.P14516211137310390794

`A293546(2*n+3)-A293546(2*n+1)`
-/

namespace A099485.P14516211137310390794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293546 (2 * n + 3) - A293546 (2 * n + 1)

end

end A099485.P14516211137310390794

namespace A099485

/-- `A293546(2*n+3)-A293546(2*n+1)` -/
def P14516211137310390794.Spec : Prop :=
  ∀ n, P14516211137310390794.a n = A099485 n

end A099485

/-!
# A099486: Expansion of x/((1 + x^2)*(1 - 4*x + x^2)).

The programs for A099486, the canonical program `A099486.P10151564919221540922` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099486 has offset 0).

The definition of A099486 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x/(1-4x+2x^2-4x^3+x^4))` (program `A099486.P10151564919221540922`, by `A099486.P10151564919221540922.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099486.P10151564919221540922

`ogf(x/(1-4x+2x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099486

/-- `ogf(x/(1-4x+2x^2-4x^3+x^4))` -/
def P10151564919221540922.Spec : Prop :=
  ∀ n, P10151564919221540922.a n = A099486 n

theorem P10151564919221540922.correct : P10151564919221540922.Spec := by
  intro n
  simp only [A099486]

end A099486

/-! ## A099486.P12317413831601431289

`4*a(n-1)-2*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=14`
-/

namespace A099486.P12317413831601431289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 14] fun n a =>
  4 * a (n - 1) - 2 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A099486.P12317413831601431289

namespace A099486

/-- `4*a(n-1)-2*a(n-2)+4*a(n-3)-a(n-4)` -/
def P12317413831601431289.Spec : Prop :=
  ∀ n, P12317413831601431289.a n = A099486 n

end A099486

/-! ## A099486.P9210718413842185869

`∑{#}[n, cos(π*(n-#)/2)*((2+sqrt(3))^#-(2-sqrt(3))^#)/(2*sqrt(3))]`
-/

namespace A099486.P9210718413842185869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Real.cos (Real.pi * ((n : ℤ) - (k : ℤ) : ℝ) / 2) * ((2 + Real.sqrt (3 : ℝ)) ^ k - (2 - Real.sqrt (3 : ℝ)) ^ k) / (2 * Real.sqrt (3 : ℝ))

end

end A099486.P9210718413842185869

namespace A099486

/-- `∑{#}[n, cos(π*(n-#)/2)*((2+sqrt(3))^#-(2-sqrt(3))^#)/(2*sqrt(3))]` -/
def P9210718413842185869.Spec : Prop :=
  ∀ n, P9210718413842185869.a n = (A099486 n : ℝ)

end A099486

/-! ## A099486.P1965910063519844724

`xor(4*a(n-1)-a(n-2), and(1, n))` with `a(0)=0, a(1)=1`
-/

namespace A099486.P1965910063519844724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.xor (4 * a (n - 1) - a (n - 2)) (Nat.land 1 n : ℤ)

end

end A099486.P1965910063519844724

namespace A099486

/-- `xor(4*a(n-1)-a(n-2), and(1, n))` -/
def P1965910063519844724.Spec : Prop :=
  ∀ n, P1965910063519844724.a n = A099486 n

end A099486

/-! ## A099486.P10947922085846223608

`∑[ceil(∑[A001353(n)/2])]`
-/

namespace A099486.P10947922085846223608
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001353 n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099486.P10947922085846223608

namespace A099486

/-- `∑[ceil(∑[A001353(n)/2])]` -/
def P10947922085846223608.Spec : Prop :=
  ∀ n, P10947922085846223608.a n = A099486 n

end A099486

/-! ## A099486.P12197068127709296050

`∑[floor(A101265(n+1)/2)]`
-/

namespace A099486.P12197068127709296050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A101265 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099486.P12197068127709296050

namespace A099486

/-- `∑[floor(A101265(n+1)/2)]` -/
def P12197068127709296050.Spec : Prop :=
  ∀ n, P12197068127709296050.a n = A099486 n

end A099486

/-! ## A099486.P9801107329664114061

`abs(a(n-2)-A002530(2*n))` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A099486.P9801107329664114061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  |a (n - 2) - A002530 (2 * n)|

end

end A099486.P9801107329664114061

namespace A099486

/-- `abs(a(n-2)-A002530(2*n))` -/
def P9801107329664114061.Spec : Prop :=
  ∀ n, P9801107329664114061.a n = A099486 n

end A099486

/-! ## A099486.P6869596360774113440

`A099487(n)-A056594(n)`
-/

namespace A099486.P6869596360774113440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099487 n - A056594 n

end

end A099486.P6869596360774113440

namespace A099486

/-- `A099487(n)-A056594(n)` -/
def P6869596360774113440.Spec : Prop :=
  ∀ n, P6869596360774113440.a n = A099486 n

end A099486

/-! ## A099486.P18130960157096855129

`A099488(n)-A099487(n)`
-/

namespace A099486.P18130960157096855129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099488 n - A099487 n

end

end A099486.P18130960157096855129

namespace A099486

/-- `A099488(n)-A099487(n)` -/
def P18130960157096855129.Spec : Prop :=
  ∀ n, P18130960157096855129.a n = A099486 n

end A099486

/-! ## A099486.P9900122633158697787

`A099489(n)-A099488(n)`
-/

namespace A099486.P9900122633158697787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099489 n - A099488 n

end

end A099486.P9900122633158697787

namespace A099486

/-- `A099489(n)-A099488(n)` -/
def P9900122633158697787.Spec : Prop :=
  ∀ n, P9900122633158697787.a n = A099486 n

end A099486

/-! ## A099486.P10728187483660964451

`(A099488(n)-A056594(n))/2`
-/

namespace A099486.P10728187483660964451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099488 n - A056594 n : ℚ) / 2

end

end A099486.P10728187483660964451

namespace A099486

/-- `(A099488(n)-A056594(n))/2` -/
def P10728187483660964451.Spec : Prop :=
  ∀ n, P10728187483660964451.a n = (A099486 n : ℚ)

end A099486

/-! ## A099486.P1250277972552942836

`(A099489(n)-A099487(n))/2`
-/

namespace A099486.P1250277972552942836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099489 n - A099487 n : ℚ) / 2

end

end A099486.P1250277972552942836

namespace A099486

/-- `(A099489(n)-A099487(n))/2` -/
def P1250277972552942836.Spec : Prop :=
  ∀ n, P1250277972552942836.a n = (A099486 n : ℚ)

end A099486

/-! ## A099486.P8386227755734375686

`A290908(n)/4`
-/

namespace A099486.P8386227755734375686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290908 n : ℚ) / 4

end

end A099486.P8386227755734375686

namespace A099486

/-- `A290908(n)/4` -/
def P8386227755734375686.Spec : Prop :=
  ∀ n, P8386227755734375686.a n = (A099486 n : ℚ)

end A099486

/-! ## A099486.P6181827865022710413

`Δ[round(A061278(n)/4)]`
-/

namespace A099486.P6181827865022710413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A061278 n : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099486.P6181827865022710413

namespace A099486

/-- `Δ[round(A061278(n)/4)]` -/
def P6181827865022710413.Spec : Prop :=
  ∀ n, P6181827865022710413.a n = A099486 n

end A099486

/-! ## A099486.P4802535006553182995

`round(A001353(n+1)/4)`
-/

namespace A099486.P4802535006553182995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001353 (n + 1) : ℚ) / 4)

end

end A099486.P4802535006553182995

namespace A099486

/-- `round(A001353(n+1)/4)` -/
def P4802535006553182995.Spec : Prop :=
  ∀ n, P4802535006553182995.a n = A099486 n

end A099486

/-! ## A099486.P9245619624820311151

`round(A052530(n+1)/8)`
-/

namespace A099486.P9245619624820311151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A052530 (n + 1) : ℚ) / 8)

end

end A099486.P9245619624820311151

namespace A099486

/-- `round(A052530(n+1)/8)` -/
def P9245619624820311151.Spec : Prop :=
  ∀ n, P9245619624820311151.a n = A099486 n

end A099486

/-! ## A099486.P4844911917804183380

`round(∑[A001835(n+1)]/4)`
-/

namespace A099486.P4844911917804183380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4)

end

end A099486.P4844911917804183380

namespace A099486

/-- `round(∑[A001835(n+1)]/4)` -/
def P4844911917804183380.Spec : Prop :=
  ∀ n, P4844911917804183380.a n = A099486 n

end A099486

/-! ## A099486.P17774413725934900972

`round(∑[A079935(n+1)]/4)`
-/

namespace A099486.P17774413725934900972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4)

end

end A099486.P17774413725934900972

namespace A099486

/-- `round(∑[A079935(n+1)]/4)` -/
def P17774413725934900972.Spec : Prop :=
  ∀ n, P17774413725934900972.a n = A099486 n

end A099486

/-! ## A099486.P11977799742325024315

`round(A002530(2*(n+1))/4)`
-/

namespace A099486.P11977799742325024315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002530 (2 * (n + 1)) : ℚ) / 4)

end

end A099486.P11977799742325024315

namespace A099486

/-- `round(A002530(2*(n+1))/4)` -/
def P11977799742325024315.Spec : Prop :=
  ∀ n, P11977799742325024315.a n = A099486 n

end A099486

/-! ## A099486.P7826684350704135375

`round(A249578(3*(n+1))/4)`
-/

namespace A099486.P7826684350704135375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A249578 (3 * (n + 1)) : ℚ) / 4)

end

end A099486.P7826684350704135375

namespace A099486

/-- `round(A249578(3*(n+1))/4)` -/
def P7826684350704135375.Spec : Prop :=
  ∀ n, P7826684350704135375.a n = A099486 n

end A099486

/-!
# A099487: Expansion of (1-3x+x^2)/((1+x^2)(1-4x+x^2)).

The programs for A099487, the canonical program `A099487.P1310383990226242092` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099487 has offset 0).

The definition of A099487 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x+x^2)/(1-4x+2x^2-4x^3+x^4))` (program `A099487.P1310383990226242092`, by `A099487.P1310383990226242092.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099487.P1310383990226242092

`ogf((1-3x+x^2)/(1-4x+2x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099487

/-- `ogf((1-3x+x^2)/(1-4x+2x^2-4x^3+x^4))` -/
def P1310383990226242092.Spec : Prop :=
  ∀ n, P1310383990226242092.a n = A099487 n

theorem P1310383990226242092.correct : P1310383990226242092.Spec := by
  intro n
  simp only [A099487]

end A099487

/-! ## A099487.P8046641937189732212

`A001353(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A099487.P8046641937189732212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A001353 n - a (n - 2)

end

end A099487.P8046641937189732212

namespace A099487

/-- `A001353(n)-a(n-2)` -/
def P8046641937189732212.Spec : Prop :=
  ∀ n, P8046641937189732212.a n = A099487 n

end A099487

/-! ## A099487.P11586512500738449699

`∑[A001835(n)-a(n-2)]` with `a(0)=1, a(1)=0`
-/

namespace A099487.P11586512500738449699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A001835 n - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099487.P11586512500738449699

namespace A099487

/-- `∑[A001835(n)-a(n-2)]` -/
def P11586512500738449699.Spec : Prop :=
  ∀ n, P11586512500738449699.a n = A099487 n

end A099487

/-! ## A099487.P5677355251720141427

`abs(a(n-2)-(A072110(n)-1))` with `a(0)=1, a(1)=1`
-/

namespace A099487.P5677355251720141427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  |a (n - 2) - (A072110 n - 1)|

end

end A099487.P5677355251720141427

namespace A099487

/-- `abs(a(n-2)-(A072110(n)-1))` -/
def P5677355251720141427.Spec : Prop :=
  ∀ n, P5677355251720141427.a n = A099487 n

end A099487

/-! ## A099487.P7638238144289447050

`A099486(n)+A056594(n)`
-/

namespace A099487.P7638238144289447050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099486 n + A056594 n

end

end A099487.P7638238144289447050

namespace A099487

/-- `A099486(n)+A056594(n)` -/
def P7638238144289447050.Spec : Prop :=
  ∀ n, P7638238144289447050.a n = A099487 n

end A099487

/-! ## A099487.P4967018544637057798

`A099488(n)-A099486(n)`
-/

namespace A099487.P4967018544637057798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099488 n - A099486 n

end

end A099487.P4967018544637057798

namespace A099487

/-- `A099488(n)-A099486(n)` -/
def P4967018544637057798.Spec : Prop :=
  ∀ n, P4967018544637057798.a n = A099487 n

end A099487

/-! ## A099487.P10927082556449419698

`(A099488(n)+A056594(n))/2`
-/

namespace A099487.P10927082556449419698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099488 n + A056594 n : ℚ) / 2

end

end A099487.P10927082556449419698

namespace A099487

/-- `(A099488(n)+A056594(n))/2` -/
def P10927082556449419698.Spec : Prop :=
  ∀ n, P10927082556449419698.a n = (A099487 n : ℚ)

end A099487

/-! ## A099487.P8532469753061411833

`A099489(n)-2*A099486(n)`
-/

namespace A099487.P8532469753061411833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099489 n - 2 * A099486 n

end

end A099487.P8532469753061411833

namespace A099487

/-- `A099489(n)-2*A099486(n)` -/
def P8532469753061411833.Spec : Prop :=
  ∀ n, P8532469753061411833.a n = A099487 n

end A099487

/-! ## A099487.P3177739608623233957

`A056594(n)+A099489(n)-A099488(n)`
-/

namespace A099487.P3177739608623233957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n + (A099489 n - A099488 n)

end

end A099487.P3177739608623233957

namespace A099487

/-- `A056594(n)+A099489(n)-A099488(n)` -/
def P3177739608623233957.Spec : Prop :=
  ∀ n, P3177739608623233957.a n = A099487 n

end A099487

/-! ## A099487.P11272473276222315601

`Δ[round(A101265(n+1)/4)]`
-/

namespace A099487.P11272473276222315601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A101265 (n + 1) : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099487.P11272473276222315601

namespace A099487

/-- `Δ[round(A101265(n+1)/4)]` -/
def P11272473276222315601.Spec : Prop :=
  ∀ n, P11272473276222315601.a n = A099487 n

end A099487

/-! ## A099487.P6414762064668037761

`Δ[ceil(ceil(A061278(n)/2)/2)]`
-/

namespace A099487.P6414762064668037761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈(A061278 n : ℚ) / 2⌉ : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099487.P6414762064668037761

namespace A099487

/-- `Δ[ceil(ceil(A061278(n)/2)/2)]` -/
def P6414762064668037761.Spec : Prop :=
  ∀ n, P6414762064668037761.a n = A099487 n

end A099487

/-! ## A099487.P12648014212488128917

`2*A099488(n)-A099489(n)`
-/

namespace A099487.P12648014212488128917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099488 n - A099489 n

end

end A099487.P12648014212488128917

namespace A099487

/-- `2*A099488(n)-A099489(n)` -/
def P12648014212488128917.Spec : Prop :=
  ∀ n, P12648014212488128917.a n = A099487 n

end A099487

/-! ## A099487.P528974926852285436

`A001353(n+1)+A056594(n)-A099489(n)`
-/

namespace A099487.P528974926852285436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 (n + 1) + (A056594 n - A099489 n)

end

end A099487.P528974926852285436

namespace A099487

/-- `A001353(n+1)+A056594(n)-A099489(n)` -/
def P528974926852285436.Spec : Prop :=
  ∀ n, P528974926852285436.a n = A099487 n

end A099487

/-! ## A099487.P7175105684959971773

`A099488(n)+A099489(n)-A001353(n+1)`
-/

namespace A099487.P7175105684959971773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099488 n + (A099489 n - A001353 (n + 1))

end

end A099487.P7175105684959971773

namespace A099487

/-- `A099488(n)+A099489(n)-A001353(n+1)` -/
def P7175105684959971773.Spec : Prop :=
  ∀ n, P7175105684959971773.a n = A099487 n

end A099487

/-! ## A099487.P9150229113876350784

`A001353(n+1)+A099486(n)-A290908(n)`
-/

namespace A099487.P9150229113876350784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 (n + 1) + (A099486 n - A290908 n)

end

end A099487.P9150229113876350784

namespace A099487

/-- `A001353(n+1)+A099486(n)-A290908(n)` -/
def P9150229113876350784.Spec : Prop :=
  ∀ n, P9150229113876350784.a n = A099487 n

end A099487

/-!
# A099488: Expansion of (1-x)^2/((1+x^2)*(1-4*x+x^2)).

The programs for A099488, the canonical program `A099488.P8948974621669907724` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099488 has offset 0).

The definition of A099488 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x+x^2)/(1-4x+2x^2-4x^3+x^4))` (program `A099488.P8948974621669907724`, by `A099488.P8948974621669907724.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099488.P8948974621669907724

`ogf((1-2x+x^2)/(1-4x+2x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099488

/-- `ogf((1-2x+x^2)/(1-4x+2x^2-4x^3+x^4))` -/
def P8948974621669907724.Spec : Prop :=
  ∀ n, P8948974621669907724.a n = A099488 n

theorem P8948974621669907724.correct : P8948974621669907724.Spec := by
  intro n
  simp only [A099488]

end A099488

/-! ## A099488.P2237757228493109957

`4*a(n-1)-2*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=28`
-/

namespace A099488.P2237757228493109957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 7, 28] fun n a =>
  4 * a (n - 1) - 2 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A099488.P2237757228493109957

namespace A099488

/-- `4*a(n-1)-2*a(n-2)+4*a(n-3)-a(n-4)` -/
def P2237757228493109957.Spec : Prop :=
  ∀ n, P2237757228493109957.a n = A099488 n

end A099488

/-! ## A099488.P997419031151854139

`a(n-1)-or(2, a(n-2)-or(2, 3*a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A099488.P997419031151854139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - Int.lor 2 (a (n - 2) - Int.lor 2 (3 * a (n - 1)))

end

end A099488.P997419031151854139

namespace A099488

/-- `a(n-1)-or(2, a(n-2)-or(2, 3*a(n-1)))` -/
def P997419031151854139.Spec : Prop :=
  ∀ n, P997419031151854139.a n = A099488 n

end A099488

/-! ## A099488.P13800754815040549631

`∑{#}[floor(n/2), 2^(n-2*#)*C(2*n-2*#+1, 2*#)]`
-/

namespace A099488.P13800754815040549631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (2 : ℚ) ^ ((n : ℤ) - (2 * k : ℤ) : ℤ) * (Nat.choose ((2 * n : ℤ) - (2 * k : ℤ) + 1).toNat (2 * k) : ℚ)

end

end A099488.P13800754815040549631

namespace A099488

/-- `∑{#}[floor(n/2), 2^(n-2*#)*C(2*n-2*#+1, 2*#)]` -/
def P13800754815040549631.Spec : Prop :=
  ∀ n, P13800754815040549631.a n = (A099488 n : ℚ)

end A099488

/-! ## A099488.P4626554683433565785

`∑[or(1, A061278(n))]`
-/

namespace A099488.P4626554683433565785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A061278 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099488.P4626554683433565785

namespace A099488

/-- `∑[or(1, A061278(n))]` -/
def P4626554683433565785.Spec : Prop :=
  ∀ n, P4626554683433565785.a n = A099488 n

end A099488

/-! ## A099488.P5680290509250391699

`∑[or(1, ∑[A001353(n)])]`
-/

namespace A099488.P5680290509250391699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099488.P5680290509250391699

namespace A099488

/-- `∑[or(1, ∑[A001353(n)])]` -/
def P5680290509250391699.Spec : Prop :=
  ∀ n, P5680290509250391699.a n = A099488 n

end A099488

/-! ## A099488.P2240854637495463130

`∑[or(1, ∑[A072110(n)-1])]`
-/

namespace A099488.P2240854637495463130
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072110 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099488.P2240854637495463130

namespace A099488

/-- `∑[or(1, ∑[A072110(n)-1])]` -/
def P2240854637495463130.Spec : Prop :=
  ∀ n, P2240854637495463130.a n = A099488 n

end A099488

/-! ## A099488.P14422823587003456827

`∑[or(1, A101265(n+1)-1)]`
-/

namespace A099488.P14422823587003456827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A101265 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099488.P14422823587003456827

namespace A099488

/-- `∑[or(1, A101265(n+1)-1)]` -/
def P14422823587003456827.Spec : Prop :=
  ∀ n, P14422823587003456827.a n = A099488 n

end A099488

/-! ## A099488.P17807607716336632181

`A099487(n)+A099486(n)`
-/

namespace A099488.P17807607716336632181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099487 n + A099486 n

end

end A099488.P17807607716336632181

namespace A099488

/-- `A099487(n)+A099486(n)` -/
def P17807607716336632181.Spec : Prop :=
  ∀ n, P17807607716336632181.a n = A099488 n

end A099488

/-! ## A099488.P4442263811649148746

`A099489(n)-A099486(n)`
-/

namespace A099488.P4442263811649148746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099489 n - A099486 n

end

end A099488.P4442263811649148746

namespace A099488

/-- `A099489(n)-A099486(n)` -/
def P4442263811649148746.Spec : Prop :=
  ∀ n, P4442263811649148746.a n = A099488 n

end A099488

/-! ## A099488.P14798887337588586687

`A056594(n)+2*A099486(n)`
-/

namespace A099488.P14798887337588586687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n + 2 * A099486 n

end

end A099488.P14798887337588586687

namespace A099488

/-- `A056594(n)+2*A099486(n)` -/
def P14798887337588586687.Spec : Prop :=
  ∀ n, P14798887337588586687.a n = A099488 n

end A099488

/-! ## A099488.P18206899485066978882

`2*A099487(n)-A056594(n)`
-/

namespace A099488.P18206899485066978882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099487 n - A056594 n

end

end A099488.P18206899485066978882

namespace A099488

/-- `2*A099487(n)-A056594(n)` -/
def P18206899485066978882.Spec : Prop :=
  ∀ n, P18206899485066978882.a n = A099488 n

end A099488

/-! ## A099488.P12548064321297225394

`∑[A061278(n)+Δ[A004525(n)]]`
-/

namespace A099488.P12548064321297225394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061278 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099488.P12548064321297225394

namespace A099488

/-- `∑[A061278(n)+Δ[A004525(n)]]` -/
def P12548064321297225394.Spec : Prop :=
  ∀ n, P12548064321297225394.a n = A099488 n

end A099488

/-! ## A099488.P7299897787056858302

`A004525(n+1)+∑[A061278(n)]`
-/

namespace A099488.P7299897787056858302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099488.P7299897787056858302

namespace A099488

/-- `A004525(n+1)+∑[A061278(n)]` -/
def P7299897787056858302.Spec : Prop :=
  ∀ n, P7299897787056858302.a n = A099488 n

end A099488

/-! ## A099488.P15552973565246065537

`A056594(n)+A099489(n)-A099487(n)`
-/

namespace A099488.P15552973565246065537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n + (A099489 n - A099487 n)

end

end A099488.P15552973565246065537

namespace A099488

/-- `A056594(n)+A099489(n)-A099487(n)` -/
def P15552973565246065537.Spec : Prop :=
  ∀ n, P15552973565246065537.a n = A099488 n

end A099488

/-! ## A099488.P12470387438751846226

`Δ[floor(A101265(n+1)/2)]`
-/

namespace A099488.P12470387438751846226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A101265 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099488.P12470387438751846226

namespace A099488

/-- `Δ[floor(A101265(n+1)/2)]` -/
def P12470387438751846226.Spec : Prop :=
  ∀ n, P12470387438751846226.a n = A099488 n

end A099488

/-! ## A099488.P4117504535768524897

`∑[or(2, ∑[A052530(n)])]/2`
-/

namespace A099488.P4117504535768524897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052530 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A099488.P4117504535768524897

namespace A099488

/-- `∑[or(2, ∑[A052530(n)])]/2` -/
def P4117504535768524897.Spec : Prop :=
  ∀ n, P4117504535768524897.a n = (A099488 n : ℚ)

end A099488

/-! ## A099488.P2762683684986493045

`(A099489(n)+A099487(n))/2`
-/

namespace A099488.P2762683684986493045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099489 n + A099487 n : ℚ) / 2

end

end A099488.P2762683684986493045

namespace A099488

/-- `(A099489(n)+A099487(n))/2` -/
def P2762683684986493045.Spec : Prop :=
  ∀ n, P2762683684986493045.a n = (A099488 n : ℚ)

end A099488

/-! ## A099488.P4474603297986741585

`(A056594(n)+Δ[A061278(n)])/2`
-/

namespace A099488.P4474603297986741585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061278 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056594 n + (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A099488.P4474603297986741585

namespace A099488

/-- `(A056594(n)+Δ[A061278(n)])/2` -/
def P4474603297986741585.Spec : Prop :=
  ∀ n, P4474603297986741585.a n = (A099488 n : ℚ)

end A099488

/-! ## A099488.P637923256928789309

`A001353(n+1)-2*A099486(n)`
-/

namespace A099488.P637923256928789309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 (n + 1) - 2 * A099486 n

end

end A099488.P637923256928789309

namespace A099488

/-- `A001353(n+1)-2*A099486(n)` -/
def P637923256928789309.Spec : Prop :=
  ∀ n, P637923256928789309.a n = A099488 n

end A099488

/-!
# A099489: Expansion of (1-x+x^2)/((1+x^2)(1-4x+x^2)).

The programs for A099489, the canonical program `A099489.P15720654369767921367` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099489 has offset 0).

The definition of A099489 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+x^2)/(1-4x+2x^2-4x^3+x^4))` (program `A099489.P15720654369767921367`, by `A099489.P15720654369767921367.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099489.P15720654369767921367

`ogf((1-x+x^2)/(1-4x+2x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099489

/-- `ogf((1-x+x^2)/(1-4x+2x^2-4x^3+x^4))` -/
def P15720654369767921367.Spec : Prop :=
  ∀ n, P15720654369767921367.a n = A099489 n

theorem P15720654369767921367.correct : P15720654369767921367.Spec := by
  intro n
  simp only [A099489]

end A099489

/-! ## A099489.P5093128198551352621

`4*a(n-1)-2*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=11, a(3)=42`
-/

namespace A099489.P5093128198551352621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 11, 42] fun n a =>
  4 * a (n - 1) - 2 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A099489.P5093128198551352621

namespace A099489

/-- `4*a(n-1)-2*a(n-2)+4*a(n-3)-a(n-4)` -/
def P5093128198551352621.Spec : Prop :=
  ∀ n, P5093128198551352621.a n = A099489 n

end A099489

/-! ## A099489.P15897438471639539138

`3*A001353(n+1)/4+A056594(n)/4`
-/

namespace A099489.P15897438471639539138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A001353 (n + 1) : ℚ) / 4 + (A056594 n : ℚ) / 4

end

end A099489.P15897438471639539138

namespace A099489

/-- `3*A001353(n+1)/4+A056594(n)/4` -/
def P15897438471639539138.Spec : Prop :=
  ∀ n, P15897438471639539138.a n = (A099489 n : ℚ)

end A099489

/-! ## A099489.P15646912176938443849

`A099488(n)+A099486(n)`
-/

namespace A099489.P15646912176938443849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099488 n + A099486 n

end

end A099489.P15646912176938443849

namespace A099489

/-- `A099488(n)+A099486(n)` -/
def P15646912176938443849.Spec : Prop :=
  ∀ n, P15646912176938443849.a n = A099489 n

end A099489

/-! ## A099489.P10615267695988514363

`A099487(n)+2*A099486(n)`
-/

namespace A099489.P10615267695988514363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099487 n + 2 * A099486 n

end

end A099489.P10615267695988514363

namespace A099489

/-- `A099487(n)+2*A099486(n)` -/
def P10615267695988514363.Spec : Prop :=
  ∀ n, P10615267695988514363.a n = A099489 n

end A099489

/-! ## A099489.P18007562774531670628

`A099487(n)+A099488(n)-A056594(n)`
-/

namespace A099489.P18007562774531670628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099487 n + (A099488 n - A056594 n)

end

end A099489.P18007562774531670628

namespace A099489

/-- `A099487(n)+A099488(n)-A056594(n)` -/
def P18007562774531670628.Spec : Prop :=
  ∀ n, P18007562774531670628.a n = A099489 n

end A099489

/-! ## A099489.P12420610876308331615

`round(∑[A082841(n)/2]/2)`
-/

namespace A099489.P12420610876308331615
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082841 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j) / 2)

end

end A099489.P12420610876308331615

namespace A099489

/-- `round(∑[A082841(n)/2]/2)` -/
def P12420610876308331615.Spec : Prop :=
  ∀ n, P12420610876308331615.a n = A099489 n

end A099489

/-! ## A099489.P779489427070102822

`round(3/8*A052530(n+1))`
-/

namespace A099489.P779489427070102822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 : ℚ) / 8 * (A052530 (n + 1) : ℚ))

end

end A099489.P779489427070102822

namespace A099489

/-- `round(3/8*A052530(n+1))` -/
def P779489427070102822.Spec : Prop :=
  ∀ n, P779489427070102822.a n = A099489 n

end A099489

/-! ## A099489.P3362256501305579501

`3*A001353(n)-a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A099489.P3362256501305579501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 * A001353 n - a (n - 2)

end

end A099489.P3362256501305579501

namespace A099489

/-- `3*A001353(n)-a(n-2)` -/
def P3362256501305579501.Spec : Prop :=
  ∀ n, P3362256501305579501.a n = A099489 n

end A099489

/-! ## A099489.P14580566330102010679

`A001353(n+1)-A099486(n)`
-/

namespace A099489.P14580566330102010679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 (n + 1) - A099486 n

end

end A099489.P14580566330102010679

namespace A099489

/-- `A001353(n+1)-A099486(n)` -/
def P14580566330102010679.Spec : Prop :=
  ∀ n, P14580566330102010679.a n = A099489 n

end A099489

/-! ## A099489.P9211426963644564686

`2*A099488(n)-A099487(n)`
-/

namespace A099489.P9211426963644564686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099488 n - A099487 n

end

end A099489.P9211426963644564686

namespace A099489

/-- `2*A099488(n)-A099487(n)` -/
def P9211426963644564686.Spec : Prop :=
  ∀ n, P9211426963644564686.a n = A099489 n

end A099489

/-! ## A099489.P5293724043552552733

`A099487(n)+A290908(n)/2`
-/

namespace A099489.P5293724043552552733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099487 n : ℚ) + (A290908 n : ℚ) / 2

end

end A099489.P5293724043552552733

namespace A099489

/-- `A099487(n)+A290908(n)/2` -/
def P5293724043552552733.Spec : Prop :=
  ∀ n, P5293724043552552733.a n = (A099489 n : ℚ)

end A099489

/-! ## A099489.P10806094915550541274

`A001353(n+1)+A056594(n)-A099487(n)`
-/

namespace A099489.P10806094915550541274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 (n + 1) + (A056594 n - A099487 n)

end

end A099489.P10806094915550541274

namespace A099489

/-- `A001353(n+1)+A056594(n)-A099487(n)` -/
def P10806094915550541274.Spec : Prop :=
  ∀ n, P10806094915550541274.a n = A099489 n

end A099489

/-! ## A099489.P9166217561018203970

`A001353(n+1)+A099487(n)-A099488(n)`
-/

namespace A099489.P9166217561018203970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 (n + 1) + (A099487 n - A099488 n)

end

end A099489.P9166217561018203970

namespace A099489

/-- `A001353(n+1)+A099487(n)-A099488(n)` -/
def P9166217561018203970.Spec : Prop :=
  ∀ n, P9166217561018203970.a n = A099489 n

end A099489

/-! ## A099489.P3993352315779325692

`round(A005320(n+1)/4)`
-/

namespace A099489.P3993352315779325692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A005320 (n + 1) : ℚ) / 4)

end

end A099489.P3993352315779325692

namespace A099489

/-- `round(A005320(n+1)/4)` -/
def P3993352315779325692.Spec : Prop :=
  ∀ n, P3993352315779325692.a n = A099489 n

end A099489

/-! ## A099489.P5821105488835068021

`round((A082841(n+1)-A082841(n))/8)`
-/

namespace A099489.P5821105488835068021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A082841 (n + 1) - A082841 n : ℚ) / 8)

end

end A099489.P5821105488835068021

namespace A099489

/-- `round((A082841(n+1)-A082841(n))/8)` -/
def P5821105488835068021.Spec : Prop :=
  ∀ n, P5821105488835068021.a n = A099489 n

end A099489

/-!
# A099491: A Chebyshev transform of Padovan numbers.

The programs for A099491, the canonical program `A099491.P16758939555100584362` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099491 has offset 0).

The definition of A099491 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099491.P16758939555100584362

`ogf((1+2x^2+x^4)/(1+2x^2-x^3+2x^4+x^6))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099491

/-- `ogf((1+2x^2+x^4)/(1+2x^2-x^3+2x^4+x^6))` -/
def P16758939555100584362.Spec : Prop :=
  ∀ n, P16758939555100584362.a n = A099491 n

theorem P16758939555100584362.correct : P16758939555100584362.Spec := by
  intro n
  simp only [A099491]

end A099491

/-! ## A099491.P18315789151133066233

`A100049(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A099491.P18315789151133066233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A100049 n + a (n - 2)

end

end A099491.P18315789151133066233

namespace A099491

/-- `A100049(n)+a(n-2)` -/
def P18315789151133066233.Spec : Prop :=
  ∀ n, P18315789151133066233.a n = A099491 n

end A099491

/-! ## A099491.P7240903761255609155

`∑{#}[floor(n/2), (-1)^#*C(n-#, #)*A000931(n-2*#+3)]`
-/

namespace A099491.P7240903761255609155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (-1) ^ k * (Nat.choose ((n : ℤ) - (k : ℤ)).toNat k : ℤ) * A000931 ((n : ℤ) - (2 * k : ℤ) + 3).toNat

end

end A099491.P7240903761255609155

namespace A099491

/-- `∑{#}[floor(n/2), (-1)^#*C(n-#, #)*A000931(n-2*#+3)]` -/
def P7240903761255609155.Spec : Prop :=
  ∀ n, P7240903761255609155.a n = A099491 n

end A099491

/-!
# A099492: A Chebyshev transform of the Padovan-Jacobsthal numbers.

The programs for A099492, the canonical program `A099492.P17892622448609121904` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099492 has offset 0).

The definition of A099492 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099492.P17892622448609121904

`ogf((1+2x^2+x^4)/(1+2x^2-2x^3+2x^4+x^6))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099492

/-- `ogf((1+2x^2+x^4)/(1+2x^2-2x^3+2x^4+x^6))` -/
def P17892622448609121904.Spec : Prop :=
  ∀ n, P17892622448609121904.a n = A099492 n

theorem P17892622448609121904.correct : P17892622448609121904.Spec := by
  intro n
  simp only [A099492]

end A099492

/-!
# A099493: Expansion of (1+x^2)^2/(1+x^2-2x^3+x^4+x^6).

The programs for A099493, the canonical program `A099493.P4959223478098979912` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099493 has offset 0).

The definition of A099493 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x^2+x^4)/(1+x^2-2x^3+x^4+x^6))` (program `A099493.P4959223478098979912`, by `A099493.P4959223478098979912.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099493.P4959223478098979912

`ogf((1+2x^2+x^4)/(1+x^2-2x^3+x^4+x^6))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099493

/-- `ogf((1+2x^2+x^4)/(1+x^2-2x^3+x^4+x^6))` -/
def P4959223478098979912.Spec : Prop :=
  ∀ n, P4959223478098979912.a n = A099493 n

theorem P4959223478098979912.correct : P4959223478098979912.Spec := by
  intro n
  simp only [A099493]

end A099493

/-!
# A099494: A Chebyshev transform of Fibonacci(n)+(-1)^n.

The programs for A099494, the canonical program `A099494.P6904293981780214720` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099494 has offset 0).

The definition of A099494 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099494.P6904293981780214720

`ogf((1+2x^2+x^4)/(1+x^2-x^3+x^4+x^6))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099494

/-- `ogf((1+2x^2+x^4)/(1+x^2-x^3+x^4+x^6))` -/
def P6904293981780214720.Spec : Prop :=
  ∀ n, P6904293981780214720.a n = A099494 n

theorem P6904293981780214720.correct : P6904293981780214720.Spec := by
  intro n
  simp only [A099494]

end A099494

/-!
# A099495: A Chebyshev transform of Fib(n)^2.

The programs for A099495, the canonical program `A099495.P17868827513109442375` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099495 has offset 0).

The definition of A099495 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099495.P17868827513109442375

`ogf((x-x^2+x^3)/(1-2x+x^2-3x^3+x^4-2x^5+x^6))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099495

/-- `ogf((x-x^2+x^3)/(1-2x+x^2-3x^3+x^4-2x^5+x^6))` -/
def P17868827513109442375.Spec : Prop :=
  ∀ n, P17868827513109442375.a n = A099495 n

theorem P17868827513109442375.correct : P17868827513109442375.Spec := by
  intro n
  simp only [A099495]

end A099495

/-! ## A099495.P16511542544025971122

`A047513(A142474(3^C(a(n-1), 68)+n)+1)` with `a(0)=0, a(1)=1`
-/

namespace A099495.P16511542544025971122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A047513 (A142474 (3 ^ Nat.choose (a (n - 1)).toNat 68 + n) + 1).toNat

end

end A099495.P16511542544025971122

namespace A099495

/-- `A047513(A142474(3^C(a(n-1), 68)+n)+1)` -/
def P16511542544025971122.Spec : Prop :=
  ∀ n, P16511542544025971122.a n = A099495 n

end A099495

/-! ## A099495.P2221888602707567186

`A003056(A137952(n))-A101417(n)`
-/

namespace A099495.P2221888602707567186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A137952 n).toNat - A101417 n

end

end A099495.P2221888602707567186

namespace A099495

/-- `A003056(A137952(n))-A101417(n)` -/
def P2221888602707567186.Spec : Prop :=
  ∀ n, P2221888602707567186.a n = A099495 n

end A099495

/-! ## A099495.P3115019876967658334

`A340569(n)+A001221(A061955(n+1))`
-/

namespace A099495.P3115019876967658334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340569 n + A001221 (A061955 (n + 1)).toNat

end

end A099495.P3115019876967658334

namespace A099495

/-- `A340569(n)+A001221(A061955(n+1))` -/
def P3115019876967658334.Spec : Prop :=
  ∀ n, P3115019876967658334.a n = A099495 n

end A099495

/-! ## A099495.P4177266353250711323

`A340569(n)+A302555(A024494(n+1))`
-/

namespace A099495.P4177266353250711323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340569 n + A302555 (A024494 (n + 1)).toNat

end

end A099495.P4177266353250711323

namespace A099495

/-- `A340569(n)+A302555(A024494(n+1))` -/
def P4177266353250711323.Spec : Prop :=
  ∀ n, P4177266353250711323.a n = A099495 n

end A099495

/-!
# A099496: a(n) = (-1)^n * Fibonacci(2*n+1).

The programs for A099496, the canonical program `A099496.P9995660212830348643` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099496 has offset 0).

The definition of A099496 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^n*A000045(2*n+1)` (program `A099496.P9995660212830348643`, by `A099496.P9995660212830348643.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099496.P1886467424767935103

`ogf((1+x)/(1+3x+x^2))`
-/

namespace A099496.P1886467424767935103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, 3, 1] n

end

end A099496.P1886467424767935103

namespace A099496

/-- `ogf((1+x)/(1+3x+x^2))` -/
def P1886467424767935103.Spec : Prop :=
  ∀ n, P1886467424767935103.a n = A099496 n

end A099496

/-! ## A099496.P12915073461282908358

`(-1)^n*A122367(n)`
-/

namespace A099496.P12915073461282908358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A122367 n

end

end A099496.P12915073461282908358

namespace A099496

/-- `(-1)^n*A122367(n)` -/
def P12915073461282908358.Spec : Prop :=
  ∀ n, P12915073461282908358.a n = A099496 n

end A099496

/-! ## A099496.P9995660212830348643

`(-1)^n*A000045(2*n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099496

/-- `(-1)^n*A000045(2*n+1)` -/
def P9995660212830348643.Spec : Prop :=
  ∀ n, P9995660212830348643.a n = A099496 n

theorem P9995660212830348643.correct : P9995660212830348643.Spec := by
  intro n
  simp only [A099496]

end A099496

/-! ## A099496.P9527366101886828219

`floor(∑[(-ϕ²)^n])`
-/

namespace A099496.P9527366101886828219
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-(Real.goldenRatio ^ 2)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A099496.P9527366101886828219

namespace A099496

/-- `floor(∑[(-ϕ²)^n])` -/
def P9527366101886828219.Spec : Prop :=
  ∀ n, P9527366101886828219.a n = A099496 n

end A099496

/-! ## A099496.P15658517430288213243

`Δ[1-floor(ϕ²*a(n-1))]` with `a(0)=0`
-/

namespace A099496.P15658517430288213243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - ⌊Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099496.P15658517430288213243

namespace A099496

/-- `Δ[1-floor(ϕ²*a(n-1))]` -/
def P15658517430288213243.Spec : Prop :=
  ∀ n, P15658517430288213243.a n = A099496 n

end A099496

/-! ## A099496.P4708129846437220767

`a(n-1)-(a(n-2)+4*a(n-1))` with `a(0)=1, a(1)=-2`
-/

namespace A099496.P4708129846437220767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2] fun n a =>
  a (n - 1) - (a (n - 2) + 4 * a (n - 1))

end

end A099496.P4708129846437220767

namespace A099496

/-- `a(n-1)-(a(n-2)+4*a(n-1))` -/
def P4708129846437220767.Spec : Prop :=
  ∀ n, P4708129846437220767.a n = A099496 n

end A099496

/-! ## A099496.P7903179674367275438

`a(n-1)-4*a(n-1)-a(n-2)` with `a(0)=1, a(1)=-2`
-/

namespace A099496.P7903179674367275438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2] fun n a =>
  a (n - 1) - 4 * a (n - 1) - a (n - 2)

end

end A099496.P7903179674367275438

namespace A099496

/-- `a(n-1)-4*a(n-1)-a(n-2)` -/
def P7903179674367275438.Spec : Prop :=
  ∀ n, P7903179674367275438.a n = A099496 n

end A099496

/-! ## A099496.P16352730410953218044

`∑[A219233(n)]`
-/

namespace A099496.P16352730410953218044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099496.P16352730410953218044

namespace A099496

/-- `∑[A219233(n)]` -/
def P16352730410953218044.Spec : Prop :=
  ∀ n, P16352730410953218044.a n = A099496 n

end A099496

/-! ## A099496.P6948912163156238720

`∑[A075150(n)-2]-1`
-/

namespace A099496.P6948912163156238720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075150 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A099496.P6948912163156238720

namespace A099496

/-- `∑[A075150(n)-2]-1` -/
def P6948912163156238720.Spec : Prop :=
  ∀ n, P6948912163156238720.a n = A099496 n

end A099496

/-! ## A099496.P4349615028639117354

`(-1)^n*Δ[A000045(2*n)]`
-/

namespace A099496.P4349615028639117354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (f1 (n + 1) - f1 n)

end

end A099496.P4349615028639117354

namespace A099496

/-- `(-1)^n*Δ[A000045(2*n)]` -/
def P4349615028639117354.Spec : Prop :=
  ∀ n, P4349615028639117354.a n = A099496 n

end A099496

/-! ## A099496.P17725274153670502626

`(-1)^n*A000045(record[xor(1, n)])`
-/

namespace A099496.P17725274153670502626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000045 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A099496.P17725274153670502626

namespace A099496

/-- `(-1)^n*A000045(record[xor(1, n)])` -/
def P17725274153670502626.Spec : Prop :=
  ∀ n, P17725274153670502626.a n = A099496 n

end A099496

/-! ## A099496.P16333982513048914147

`A178115(A004273(n))`
-/

namespace A099496.P16333982513048914147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178115 (A004273 n).toNat

end

end A099496.P16333982513048914147

namespace A099496

/-- `A178115(A004273(n))` -/
def P16333982513048914147.Spec : Prop :=
  ∀ n, P16333982513048914147.a n = A099496 n

end A099496

/-! ## A099496.P1367887755762343427

`A178115(A042948(n))`
-/

namespace A099496.P1367887755762343427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178115 (A042948 n).toNat

end

end A099496.P1367887755762343427

namespace A099496

/-- `A178115(A042948(n))` -/
def P1367887755762343427.Spec : Prop :=
  ∀ n, P1367887755762343427.a n = A099496 n

end A099496

/-! ## A099496.P2580902897020264977

`A178115(A047242(n+1))`
-/

namespace A099496.P2580902897020264977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178115 (A047242 (n + 1)).toNat

end

end A099496.P2580902897020264977

namespace A099496

/-- `A178115(A047242(n+1))` -/
def P2580902897020264977.Spec : Prop :=
  ∀ n, P2580902897020264977.a n = A099496 n

end A099496

/-! ## A099496.P13462464713051906119

`A178115(A047244(n+1))`
-/

namespace A099496.P13462464713051906119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178115 (A047244 (n + 1)).toNat

end

end A099496.P13462464713051906119

namespace A099496

/-- `A178115(A047244(n+1))` -/
def P13462464713051906119.Spec : Prop :=
  ∀ n, P13462464713051906119.a n = A099496 n

end A099496

/-! ## A099496.P11521610140526677285

`A178115(A047605(n+1))`
-/

namespace A099496.P11521610140526677285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178115 (A047605 (n + 1)).toNat

end

end A099496.P11521610140526677285

namespace A099496

/-- `A178115(A047605(n+1))` -/
def P11521610140526677285.Spec : Prop :=
  ∀ n, P11521610140526677285.a n = A099496 n

end A099496

/-! ## A099496.P16833953256820668466

`A178115(A047612(n+1))`
-/

namespace A099496.P16833953256820668466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178115 (A047612 (n + 1)).toNat

end

end A099496.P16833953256820668466

namespace A099496

/-- `A178115(A047612(n+1))` -/
def P16833953256820668466.Spec : Prop :=
  ∀ n, P16833953256820668466.a n = A099496 n

end A099496

/-! ## A099496.P7782280605455483174

`A178115(A047624(n+1))`
-/

namespace A099496.P7782280605455483174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178115 (A047624 (n + 1)).toNat

end

end A099496.P7782280605455483174

namespace A099496

/-- `A178115(A047624(n+1))` -/
def P7782280605455483174.Spec : Prop :=
  ∀ n, P7782280605455483174.a n = A099496 n

end A099496

/-! ## A099496.P10296286317793335397

`A033999(n)*A108362(2*n)`
-/

namespace A099496.P10296286317793335397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A108362 (2 * n)

end

end A099496.P10296286317793335397

namespace A099496

/-- `A033999(n)*A108362(2*n)` -/
def P10296286317793335397.Spec : Prop :=
  ∀ n, P10296286317793335397.a n = A099496 n

end A099496

