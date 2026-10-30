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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C047
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A173500: Number of sequences of length n with terms from {0,1,...,n-1} such that the sum of terms is 0 modulo n and the i-th term is not i or 2i modulo n.

The programs for A173500, there is no canonical definition to state claims against.
-/

/-! ## A173500.P13484564816059381647

`floor(A286933(∑[4*n])/6)`
-/

namespace A173500.P13484564816059381647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A286933 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 6⌋

end

end A173500.P13484564816059381647

/-! ## A173500.P5707281715549119350

`floor(n*A199593((n+1)^n)/67)`
-/

namespace A173500.P5707281715549119350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) * A199593 ((n + 1) ^ n) : ℚ) / 67⌋

end

end A173500.P5707281715549119350

/-!
# A173501: a(1) = 2, a(2) = 3, a(n) = 6^(2^(n-3)) for n >= 3.

The programs for A173501, there is no canonical definition to state claims against.
-/

/-! ## A173501.P15970614924411209145

`a(n-1)²` with `a(0)=2, a(1)=3, a(2)=6`
-/

namespace A173501.P15970614924411209145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 6] fun n a =>
  a (n - 1) ^ 2

end

end A173501.P15970614924411209145

/-! ## A173501.P4139705291140904925

`ceil(6^2^(n-2))`
-/

namespace A173501.P4139705291140904925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(6 : ℝ) ^ ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) : ℝ)⌉

end

end A173501.P4139705291140904925

/-! ## A173501.P12263263697665655355

`a(n-1)^2` with `a(0)=2, a(1)=3, a(2)=6`
-/

namespace A173501.P12263263697665655355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 6] fun n a =>
  a (n - 1) ^ 2

end

end A173501.P12263263697665655355

/-! ## A173501.P9413667812890823154

`a(n-1)*a(n-1)` with `a(0)=2, a(1)=3, a(2)=6`
-/

namespace A173501.P9413667812890823154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 6] fun n a =>
  a (n - 1) * a (n - 1)

end

end A173501.P9413667812890823154

/-! ## A173501.P17638844212084072028

`A018062(2^n)`
-/

namespace A173501.P17638844212084072028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018062 (2 ^ n)

end

end A173501.P17638844212084072028

/-!
# A173502: Number of concave kites (darts or arrowheads) on an n X n grid (or geoboard).

The programs for A173502, there is no canonical definition to state claims against.
-/

/-! ## A173502.P6188590290275000263

`4*A335239(n!)`
-/

namespace A173502.P6188590290275000263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A335239 (Nat.factorial n)

end

end A173502.P6188590290275000263

/-!
# A173503: Triangle T(n, k, q) = c(n, q)/(c(k, q)*c(n-k, q)) where c(n,q) = Product_{j=1..n} (q^j -1)^(n-j) and q = 2, read by rows.

The programs for A173503, there is no canonical definition to state claims against.
-/

/-! ## A173503.P8271290017044681598

`A156950(n)/A022166(n)`
-/

namespace A173503.P8271290017044681598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156950 n : ℚ) / (A022166 n : ℚ)

end

end A173503.P8271290017044681598

/-! ## A173503.P2175260747180540272

`A007318(n)*A156950(n)/A157638(n)`
-/

namespace A173503.P2175260747180540272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n * A156950 n : ℚ) / (A157638 n : ℚ)

end

end A173503.P2175260747180540272

/-! ## A173503.P2395226289418780744

`A009963(n)/A156765(n)*A156950(n)`
-/

namespace A173503.P2395226289418780744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009963 n : ℚ) / (A156765 n : ℚ) * (A156950 n : ℚ)

end

end A173503.P2395226289418780744

/-! ## A173503.P16157579304981662354

`A156950(n)/gcd(A108084(n), A156950(n))`
-/

namespace A173503.P16157579304981662354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156950 n : ℚ) / (Int.gcd (A108084 n) (A156950 n) : ℚ)

end

end A173503.P16157579304981662354

/-! ## A173503.P18347084153418731340

`A156950(n)/floor(A157638(n)/(A014473(n)+1))`
-/

namespace A173503.P18347084153418731340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156950 n : ℚ) / (⌊(A157638 n : ℚ) / (A014473 n + 1 : ℚ)⌋ : ℚ)

end

end A173503.P18347084153418731340

/-! ## A173503.P16863097107025592791

`A156950(n)/(A022167(n)/A157640(n)*A157638(n))`
-/

namespace A173503.P16863097107025592791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156950 n : ℚ) / ((A022167 n : ℚ) / (A157640 n : ℚ) * (A157638 n : ℚ))

end

end A173503.P16863097107025592791

/-! ## A173503.P3698373214695749742

`A156950(n)/(A022168(n)/A157641(n)*A157638(n))`
-/

namespace A173503.P3698373214695749742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156950 n : ℚ) / ((A022168 n : ℚ) / (A157641 n : ℚ) * (A157638 n : ℚ))

end

end A173503.P3698373214695749742

/-!
# A173504: Triangle T(n, k, q) = c(n, q)/(c(k, q)*c(n-k, q)) where c(n,q) = Product_{j=1..n} (q^j -1)^(n-j) and q = 3, read by rows.

The programs for A173504, there is no canonical definition to state claims against.
-/

/-! ## A173504.P10402876755857753588

`A106241(A008518(n))`
-/

namespace A173504.P10402876755857753588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106241 (A008518 n).toNat

end

end A173504.P10402876755857753588

/-! ## A173504.P14958259234661062824

`A032544(A108267(n))`
-/

namespace A173504.P14958259234661062824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032544 (A108267 n).toNat

end

end A173504.P14958259234661062824

/-! ## A173504.P5329659941299388100

`A106241(A099927(n))`
-/

namespace A173504.P5329659941299388100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106241 (A099927 n).toNat

end

end A173504.P5329659941299388100

/-! ## A173504.P17229302690529018127

`A225878(A091378(n))`
-/

namespace A173504.P17229302690529018127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225878 (A091378 n).toNat

end

end A173504.P17229302690529018127

/-! ## A173504.P5745705403497649763

`A106241(A264862(n+1))`
-/

namespace A173504.P5745705403497649763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106241 (A264862 (n + 1)).toNat

end

end A173504.P5745705403497649763

/-!
# A173505: Triangle T(n, k, q) = c(n, q)/(c(k, q)*c(n-k, q)) where c(n,q) = Product_{j=1..n} (q^j -1)^(n-j) and q = 4, read by rows.

The programs for A173505, there is no canonical definition to state claims against.
-/

/-! ## A173505.P17918210912102361579

`A339886(A173887(n))`
-/

namespace A173505.P17918210912102361579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339886 (A173887 n).toNat

end

end A173505.P17918210912102361579

/-! ## A173505.P13495381282645210009

`A131801(A009963(n)-1)`
-/

namespace A173505.P13495381282645210009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131801 (A009963 n - 1).toNat

end

end A173505.P13495381282645210009

/-! ## A173505.P6630700775907127035

`A049606(A126445(n)%A209684(n+1))`
-/

namespace A173505.P6630700775907127035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049606 (Int.tmod (A126445 n) (A209684 (n + 1))).toNat

end

end A173505.P6630700775907127035

/-! ## A173505.P2889034675733429836

`A095987(∏{p}[A008459(n), A008459(n)+#])`
-/

namespace A173505.P2889034675733429836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095987 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A008459 n + (p : ℤ))).toNat

end

end A173505.P2889034675733429836

/-! ## A173505.P7839762915667883846

`A339876(A150764(n))`
-/

namespace A173505.P7839762915667883846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339876 (A150764 n).toNat

end

end A173505.P7839762915667883846

/-!
# A173506: a(n) = (3^(3^n) - 1)/2.

The programs for A173506, there is no canonical definition to state claims against.
-/

/-! ## A173506.P392153390532091855

`floor(3^3^n/2)`
-/

namespace A173506.P392153390532091855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 ^ 3 ^ n : ℚ) / 2⌋

end

end A173506.P392153390532091855

/-!
# A173508: a(n) = ceiling(A173497(n)/2).

The programs for A173508, the canonical program `A173508.P13999398580247368265` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173508 has offset 0).

The definition of A173508 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(A173497(n)/2)` (program `A173508.P13999398580247368265`, by `A173508.P13999398580247368265.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173508.P13999398580247368265

`ceil(A173497(n)/2)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A173508

/-- `ceil(A173497(n)/2)` -/
def P13999398580247368265.Spec : Prop :=
  ∀ n, P13999398580247368265.a n = A173508 n

theorem P13999398580247368265.correct : P13999398580247368265.Spec := by
  intro n
  simp only [A173508]

end A173508

/-! ## A173508.P13937488174554340469

`Δ[floor(a(n-1)/(sqrt(3)-1))]` with `a(0)=3`
-/

namespace A173508.P13937488174554340469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  ⌊(f1 (n - 1) : ℝ) / (Real.sqrt (3 : ℝ) - 1)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173508.P13937488174554340469

namespace A173508

/-- `Δ[floor(a(n-1)/(sqrt(3)-1))]` -/
def P13937488174554340469.Spec : Prop :=
  ∀ n, P13937488174554340469.a n = A173508 n

end A173508

/-! ## A173508.P13133090891555118465

`Δ[ceil(a(n-1)/(sqrt(3)-1))]` with `a(0)=0, a(1)=1`
-/

namespace A173508.P13133090891555118465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ⌈(f1 (n - 1) : ℝ) / (Real.sqrt (3 : ℝ) - 1)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173508.P13133090891555118465

namespace A173508

/-- `Δ[ceil(a(n-1)/(sqrt(3)-1))]` -/
def P13133090891555118465.Spec : Prop :=
  ∀ n, P13133090891555118465.a n = A173508 n

end A173508

/-! ## A173508.P17847980623317689020

`Δ[ceil(a(n-1)+a(n-2)/2)]` with `a(0)=1, a(1)=2`
-/

namespace A173508.P17847980623317689020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  ⌈(f1 (n - 1) : ℚ) + (f1 (n - 2) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173508.P17847980623317689020

namespace A173508

/-- `Δ[ceil(a(n-1)+a(n-2)/2)]` -/
def P17847980623317689020.Spec : Prop :=
  ∀ n, P17847980623317689020.a n = A173508 n

end A173508

/-! ## A173508.P17241418129940000312

`Δ[round(a(n-1)+a(n-2)/2)]` with `a(0)=1, a(1)=2`
-/

namespace A173508.P17241418129940000312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℚ) + (f1 (n - 2) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173508.P17241418129940000312

namespace A173508

/-- `Δ[round(a(n-1)+a(n-2)/2)]` -/
def P17241418129940000312.Spec : Prop :=
  ∀ n, P17241418129940000312.a n = A173508 n

end A173508

/-! ## A173508.P16390256783419430631

`Δ[floor(a(n-1)+a(n-2)/2)]` with `a(0)=2, a(1)=3`
-/

namespace A173508.P16390256783419430631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) + (f1 (n - 2) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173508.P16390256783419430631

namespace A173508

/-- `Δ[floor(a(n-1)+a(n-2)/2)]` -/
def P16390256783419430631.Spec : Prop :=
  ∀ n, P16390256783419430631.a n = A173508 n

end A173508

/-! ## A173508.P6409560351365560552

`Δ[A173497(n+1)]`
-/

namespace A173508.P6409560351365560552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173508.P6409560351365560552

namespace A173508

/-- `Δ[A173497(n+1)]` -/
def P6409560351365560552.Spec : Prop :=
  ∀ n, P6409560351365560552.a n = A173508 n

end A173508

/-! ## A173508.P429368713516870519

`Δ[A064323(n+2)]`
-/

namespace A173508.P429368713516870519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064323 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173508.P429368713516870519

namespace A173508

/-- `Δ[A064323(n+2)]` -/
def P429368713516870519.Spec : Prop :=
  ∀ n, P429368713516870519.a n = A173508 n

end A173508

/-! ## A173508.P17518233662958559543

`Δ[A064324(n+2)]`
-/

namespace A173508.P17518233662958559543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064324 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173508.P17518233662958559543

namespace A173508

/-- `Δ[A064324(n+2)]` -/
def P17518233662958559543.Spec : Prop :=
  ∀ n, P17518233662958559543.a n = A173508 n

end A173508

/-! ## A173508.P16279996608348309158

`A173497(n+2)-A173497(n+1)`
-/

namespace A173508.P16279996608348309158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173497 (n + 2) - A173497 (n + 1)

end

end A173508.P16279996608348309158

namespace A173508

/-- `A173497(n+2)-A173497(n+1)` -/
def P16279996608348309158.Spec : Prop :=
  ∀ n, P16279996608348309158.a n = A173508 n

end A173508

/-!
# A173509: Partial sums of A038568.

The programs for A173509, there is no canonical definition to state claims against.
-/

/-! ## A173509.P15311212557926827168

`∑[A038568(n)]`
-/

namespace A173509.P15311212557926827168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173509.P15311212557926827168

/-! ## A173509.P3326979523719921659

`∑[A038569(A014681(n))]`
-/

namespace A173509.P3326979523719921659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038569 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173509.P3326979523719921659

/-! ## A173509.P15313658674000430096

`∑[A317988(4+n)]`
-/

namespace A173509.P15313658674000430096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317988 (4 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173509.P15313658674000430096

/-! ## A173509.P15784102921544105330

`A000027(A038568(n)+a(n-1))` with `a(0)=1`
-/

namespace A173509.P15784102921544105330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000027 (A038568 n + a (n - 1)).toNat

end

end A173509.P15784102921544105330

/-! ## A173509.P4813734171150319709

`∑[A071912(n+1)%A129844(2*(n+2))]`
-/

namespace A173509.P4813734171150319709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071912 (n + 1)) (A129844 (2 * (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173509.P4813734171150319709

/-!
# A173510: a(n) = a(n-1) + a(n-2) - floor( a(n-1)/2 ).

The programs for A173510, the canonical program `A173510.P7115637906454749898` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173510 has offset 0).

The definition of A173510 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-floor(a(n-1)/2)` (program `A173510.P7115637906454749898`, by `A173510.P7115637906454749898.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173510.P7115637906454749898

`a(n-1)+a(n-2)-floor(a(n-1)/2)` with `a(0)=2, a(1)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173510

/-- `a(n-1)+a(n-2)-floor(a(n-1)/2)` -/
def P7115637906454749898.Spec : Prop :=
  ∀ n, P7115637906454749898.a n = A173510 n

theorem P7115637906454749898.correct : P7115637906454749898.Spec := by
  intro n
  simp only [A173510]

end A173510

/-! ## A173510.P17350751709194785637

`ceil(a(n-1)/2)+a(n-2)` with `a(0)=2, a(1)=1`
-/

namespace A173510.P17350751709194785637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  ⌈(a (n - 1) : ℚ) / 2⌉ + a (n - 2)

end

end A173510.P17350751709194785637

namespace A173510

/-- `ceil(a(n-1)/2)+a(n-2)` -/
def P17350751709194785637.Spec : Prop :=
  ∀ n, P17350751709194785637.a n = A173510 n

end A173510

/-! ## A173510.P3271899222844712655

`round(a(n-2)+a(n-1)/2)` with `a(0)=2, a(1)=1`
-/

namespace A173510.P3271899222844712655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 2) : ℚ) + (a (n - 1) : ℚ) / 2)

end

end A173510.P3271899222844712655

namespace A173510

/-- `round(a(n-2)+a(n-1)/2)` -/
def P3271899222844712655.Spec : Prop :=
  ∀ n, P3271899222844712655.a n = A173510 n

end A173510

/-! ## A173510.P14289082874031318084

`floor(a(n-2)+(a(n-1)+1)/2)` with `a(0)=2, a(1)=1`
-/

namespace A173510.P14289082874031318084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  ⌊(a (n - 2) : ℚ) + (a (n - 1) + 1 : ℚ) / 2⌋

end

end A173510.P14289082874031318084

namespace A173510

/-- `floor(a(n-2)+(a(n-1)+1)/2)` -/
def P14289082874031318084.Spec : Prop :=
  ∀ n, P14289082874031318084.a n = A173510 n

end A173510

/-! ## A173510.P9025685859871276413

`1-floor(1-a(n-1)/2-a(n-2))` with `a(0)=2, a(1)=1`
-/

namespace A173510.P9025685859871276413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  1 - ⌊1 - (a (n - 1) : ℚ) / 2 - (a (n - 2) : ℚ)⌋

end

end A173510.P9025685859871276413

namespace A173510

/-- `1-floor(1-a(n-1)/2-a(n-2))` -/
def P9025685859871276413.Spec : Prop :=
  ∀ n, P9025685859871276413.a n = A173510 n

end A173510

/-! ## A173510.P13121294624956091708

`ceil(a(n-1)-(a(n-1)/2-a(n-2)))` with `a(0)=2, a(1)=1`
-/

namespace A173510.P13121294624956091708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  ⌈(a (n - 1) : ℚ) - ((a (n - 1) : ℚ) / 2 - (a (n - 2) : ℚ))⌉

end

end A173510.P13121294624956091708

namespace A173510

/-- `ceil(a(n-1)-(a(n-1)/2-a(n-2)))` -/
def P13121294624956091708.Spec : Prop :=
  ∀ n, P13121294624956091708.a n = A173510 n

end A173510

/-! ## A173510.P3904866556729664960

`a(n-2)+(a(n-1)+a(n-1)%2)/2` with `a(0)=2, a(1)=1`
-/

namespace A173510.P3904866556729664960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 2) + (a (n - 1) + (Int.tmod (SequenceMachineLib.roundAway (a (n - 1))) 2 : ℚ)) / 2

end

end A173510.P3904866556729664960

namespace A173510

/-- `a(n-2)+(a(n-1)+a(n-1)%2)/2` -/
def P3904866556729664960.Spec : Prop :=
  ∀ n, P3904866556729664960.a n = (A173510 n : ℚ)

end A173510

/-!
# A173511: a(n) = 4*n^2 + floor(n/2).

The programs for A173511, the canonical program `A173511.P15855760004363908529` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173511 has offset 0).

The definition of A173511 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n²+floor(n/2)` (program `A173511.P15855760004363908529`, by `A173511.P15855760004363908529.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173511.P4892235238698121001

`floor((2*n+1/8)²)`
-/

namespace A173511.P4892235238698121001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n : ℚ) + (1 : ℚ) / 8) ^ 2⌋

end

end A173511.P4892235238698121001

namespace A173511

/-- `floor((2*n+1/8)²)` -/
def P4892235238698121001.Spec : Prop :=
  ∀ n, P4892235238698121001.a n = A173511 n

end A173511

/-! ## A173511.P15855760004363908529

`4*n²+floor(n/2)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173511

/-- `4*n²+floor(n/2)` -/
def P15855760004363908529.Spec : Prop :=
  ∀ n, P15855760004363908529.a n = A173511 n

theorem P15855760004363908529.correct : P15855760004363908529.Spec := by
  intro n
  simp only [A173511]

end A173511

/-! ## A173511.P473316619909588135

`ogf((4x+9x^2+3x^3)/(1-2x+2x^3-x^4))`
-/

namespace A173511.P473316619909588135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 9, 3] [1, -2, 0, 2, -1] n

end

end A173511.P473316619909588135

namespace A173511

/-- `ogf((4x+9x^2+3x^3)/(1-2x+2x^3-x^4))` -/
def P473316619909588135.Spec : Prop :=
  ∀ n, P473316619909588135.a n = A173511 n

end A173511

/-! ## A173511.P8198987688281331413

`∑[a(n-2)+16]` with `a(0)=0, a(1)=4, a(2)=13`
-/

namespace A173511.P8198987688281331413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 13] fun n f1 =>
  f1 (n - 2) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173511.P8198987688281331413

namespace A173511

/-- `∑[a(n-2)+16]` -/
def P8198987688281331413.Spec : Prop :=
  ∀ n, (P8198987688281331413.a n : ℤ) = A173511 n

end A173511

/-! ## A173511.P5556784407492054680

`∑[∑[floor(a(n-2))]]` with `a(0)=0, a(1)=4, a(2)=9, a(3)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A173511.P5556784407492054680
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 9, 7] fun n f2 =>
  f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173511.P5556784407492054680

namespace A173511

/-- `∑[∑[floor(a(n-2))]]` -/
def P5556784407492054680.Spec : Prop :=
  ∀ n, (P5556784407492054680.a n : ℤ) = A173511 n

end A173511

/-! ## A173511.P18000520983710565955

`A173562(2*n)`
-/

namespace A173511.P18000520983710565955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173562 (2 * n)

end

end A173511.P18000520983710565955

namespace A173511

/-- `A173562(2*n)` -/
def P18000520983710565955.Spec : Prop :=
  ∀ n, P18000520983710565955.a n = A173511 n

theorem P18000520983710565955.correct : P18000520983710565955.Spec := by
  intro n
  simp only [A173511, Nat.add_sub_cancel, A173511.P18000520983710565955.a, A173511.P15855760004363908529.a, A173562, A173562.P3856815624657338522.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173511

/-! ## A173511.P9946453828346770656

`A038709(4*n)`
-/

namespace A173511.P9946453828346770656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038709 (4 * n)

end

end A173511.P9946453828346770656

namespace A173511

/-- `A038709(4*n)` -/
def P9946453828346770656.Spec : Prop :=
  ∀ n, P9946453828346770656.a n = A173511 n

end A173511

/-! ## A173511.P16072529049476280862

`∑{#}[floor(n/2), ((2*n)^C(#, floor(n/2)))²]`
-/

namespace A173511.P16072529049476280862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ((2 * n) ^ Nat.choose k ⌊(n : ℚ) / 2⌋.toNat) ^ 2

end

end A173511.P16072529049476280862

namespace A173511

/-- `∑{#}[floor(n/2), ((2*n)^C(#, floor(n/2)))²]` -/
def P16072529049476280862.Spec : Prop :=
  ∀ n, (P16072529049476280862.a n : ℤ) = A173511 n

end A173511

/-! ## A173511.P11668430464655023523

`∑{#}[floor(n/2), (2*n)^(2*C(#, floor(n/2)))]`
-/

namespace A173511.P11668430464655023523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (2 * n) ^ (2 * Nat.choose k ⌊(n : ℚ) / 2⌋.toNat)

end

end A173511.P11668430464655023523

namespace A173511

/-- `∑{#}[floor(n/2), (2*n)^(2*C(#, floor(n/2)))]` -/
def P11668430464655023523.Spec : Prop :=
  ∀ n, (P11668430464655023523.a n : ℤ) = A173511 n

end A173511

/-! ## A173511.P18421631878228298154

`∑{#}[floor(n/2), C(2*n*2*n, C(n-#, n))]`
-/

namespace A173511.P18421631878228298154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose (2 * n * (2 * n)) (Nat.choose ((n : ℤ) - (k : ℤ)).toNat n)

end

end A173511.P18421631878228298154

namespace A173511

/-- `∑{#}[floor(n/2), C(2*n*2*n, C(n-#, n))]` -/
def P18421631878228298154.Spec : Prop :=
  ∀ n, (P18421631878228298154.a n : ℤ) = A173511 n

end A173511

/-! ## A173511.P4189204616558591128

`A011869(A017077(n))`
-/

namespace A173511.P4189204616558591128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011869 (A017077 n).toNat

end

end A173511.P4189204616558591128

namespace A173511

/-- `A011869(A017077(n))` -/
def P4189204616558591128.Spec : Prop :=
  ∀ n, P4189204616558591128.a n = A173511 n

end A173511

/-! ## A173511.P16394932263562001371

`∑{#}[n, (floor(n/2)+2*n*2*n)*C(#, n)]`
-/

namespace A173511.P16394932263562001371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (⌊(n : ℚ) / 2⌋ + (2 * n * (2 * n) : ℤ)) * (Nat.choose k n : ℤ)

end

end A173511.P16394932263562001371

namespace A173511

/-- `∑{#}[n, (floor(n/2)+2*n*2*n)*C(#, n)]` -/
def P16394932263562001371.Spec : Prop :=
  ∀ n, P16394932263562001371.a n = A173511 n

end A173511

/-! ## A173511.P10587903613128012610

`∑{#}[floor(n/2), (2*n)^C(2, C(2*n, #))]`
-/

namespace A173511.P10587903613128012610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (2 * n) ^ Nat.choose 2 (Nat.choose (2 * n) k)

end

end A173511.P10587903613128012610

namespace A173511

/-- `∑{#}[floor(n/2), (2*n)^C(2, C(2*n, #))]` -/
def P10587903613128012610.Spec : Prop :=
  ∀ n, (P10587903613128012610.a n : ℤ) = A173511 n

end A173511

/-! ## A173511.P6654847502433590665

`∑{#}[2*n, 2*n-C(n-floor(n/2), C(#, n))]`
-/

namespace A173511.P6654847502433590665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((2 * n : ℤ) - (Nat.choose ((n : ℤ) - ⌊(n : ℚ) / 2⌋).toNat (Nat.choose k n) : ℤ))

end

end A173511.P6654847502433590665

namespace A173511

/-- `∑{#}[2*n, 2*n-C(n-floor(n/2), C(#, n))]` -/
def P6654847502433590665.Spec : Prop :=
  ∀ n, P6654847502433590665.a n = A173511 n

end A173511

/-!
# A173512: a(n) = 8*n + 4 + n mod 2.

The programs for A173512, the canonical program `A173512.P11120696902860728187` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173512 has offset 0).

The definition of A173512 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*n+4+n%2` (program `A173512.P11120696902860728187`, by `A173512.P11120696902860728187.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173512.P11120696902860728187

`8*n+4+n%2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173512

/-- `8*n+4+n%2` -/
def P11120696902860728187.Spec : Prop :=
  ∀ n, (P11120696902860728187.a n : ℤ) = A173512 n

theorem P11120696902860728187.correct : P11120696902860728187.Spec := by
  intro n
  simp only [A173512]

end A173512

/-! ## A173512.P15309163363083277136

`ogf((4+9x+3x^2)/(1-x-x^2+x^3))`
-/

namespace A173512.P15309163363083277136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 9, 3] [1, -1, -1, 1] n

end

end A173512.P15309163363083277136

namespace A173512

/-- `ogf((4+9x+3x^2)/(1-x-x^2+x^3))` -/
def P15309163363083277136.Spec : Prop :=
  ∀ n, P15309163363083277136.a n = A173512 n

end A173512

/-! ## A173512.P1414613744101154865

`a(n-2)+16` with `a(0)=4, a(1)=13`
-/

namespace A173512.P1414613744101154865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 13] fun n a =>
  a (n - 2) + 16

end

end A173512.P1414613744101154865

namespace A173512

/-- `a(n-2)+16` -/
def P1414613744101154865.Spec : Prop :=
  ∀ n, (P1414613744101154865.a n : ℤ) = A173512 n

end A173512

/-! ## A173512.P4535901950611890397

`∑[8-(-1)^n]-3`
-/

namespace A173512.P4535901950611890397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A173512.P4535901950611890397

namespace A173512

/-- `∑[8-(-1)^n]-3` -/
def P4535901950611890397.Spec : Prop :=
  ∀ n, P4535901950611890397.a n = A173512 n

end A173512

/-! ## A173512.P9444827779529919485

`∑[abs(a(n-2))]` with `a(0)=4, a(1)=9, a(2)=7`
-/

namespace A173512.P9444827779529919485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 9, 7] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173512.P9444827779529919485

namespace A173512

/-- `∑[abs(a(n-2))]` -/
def P9444827779529919485.Spec : Prop :=
  ∀ n, (P9444827779529919485.a n : ℤ) = A173512 n

end A173512

/-! ## A173512.P4120442487686143851

`∑[16-a(n-1)]` with `a(0)=4, a(1)=9`
-/

namespace A173512.P4120442487686143851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 9] fun n f1 =>
  16 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173512.P4120442487686143851

namespace A173512

/-- `∑[16-a(n-1)]` -/
def P4120442487686143851.Spec : Prop :=
  ∀ n, P4120442487686143851.a n = A173512 n

end A173512

/-! ## A173512.P2330576237196913281

`∑[∑[ogf((4+9x+3x^2)/(1+x))]]`
-/

namespace A173512.P2330576237196913281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 9, 3] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173512.P2330576237196913281

namespace A173512

/-- `∑[∑[ogf((4+9x+3x^2)/(1+x))]]` -/
def P2330576237196913281.Spec : Prop :=
  ∀ n, P2330576237196913281.a n = A173512 n

end A173512

/-! ## A173512.P18317384912864680664

`or(4*(2*n+1), and(1, n))`
-/

namespace A173512.P18317384912864680664
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (4 * (2 * n + 1)) (Nat.land 1 n)

end

end A173512.P18317384912864680664

namespace A173512

/-- `or(4*(2*n+1), and(1, n))` -/
def P18317384912864680664.Spec : Prop :=
  ∀ n, (P18317384912864680664.a n : ℤ) = A173512 n

end A173512

/-! ## A173512.P6746028377246574604

`xor(4*(2*n+1), and(1, n))`
-/

namespace A173512.P6746028377246574604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (4 * (2 * n + 1)) (Nat.land 1 n)

end

end A173512.P6746028377246574604

namespace A173512

/-- `xor(4*(2*n+1), and(1, n))` -/
def P6746028377246574604.Spec : Prop :=
  ∀ n, (P6746028377246574604.a n : ℤ) = A173512 n

end A173512

/-! ## A173512.P1003004291221259718

`or(8*n+4, char[2*n+1])`
-/

namespace A173512.P1003004291221259718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (8 * n + 4) (if ∃ j, f1 j = n then 1 else 0)

end

end A173512.P1003004291221259718

namespace A173512

/-- `or(8*n+4, char[2*n+1])` -/
def P1003004291221259718.Spec : Prop :=
  ∀ n, (P1003004291221259718.a n : ℤ) = A173512 n

end A173512

/-! ## A173512.P3346554829894907715

`xor(8*n+4, char[2*n+1])`
-/

namespace A173512.P3346554829894907715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (8 * n + 4) (if ∃ j, f1 j = n then 1 else 0)

end

end A173512.P3346554829894907715

namespace A173512

/-- `xor(8*n+4, char[2*n+1])` -/
def P3346554829894907715.Spec : Prop :=
  ∀ n, (P3346554829894907715.a n : ℤ) = A173512 n

end A173512

/-! ## A173512.P7614649920123262911

`∑[dr(A040134(n)+1)]`
-/

namespace A173512.P7614649920123262911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040134 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173512.P7614649920123262911

namespace A173512

/-- `∑[dr(A040134(n)+1)]` -/
def P7614649920123262911.Spec : Prop :=
  ∀ n, (P7614649920123262911.a n : ℤ) = A173512 n

end A173512

/-! ## A173512.P1989361091864482136

`∑[A341430(a(n-1))]` with `a(0)=4`
-/

namespace A173512.P1989361091864482136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A341430 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173512.P1989361091864482136

namespace A173512

/-- `∑[A341430(a(n-1))]` -/
def P1989361091864482136.Spec : Prop :=
  ∀ n, P1989361091864482136.a n = A173512 n

end A173512

/-! ## A173512.P74503829044239111

`∑[A374628(a(n-1))]` with `a(0)=4`
-/

namespace A173512.P74503829044239111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A374628 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173512.P74503829044239111

namespace A173512

/-- `∑[A374628(a(n-1))]` -/
def P74503829044239111.Spec : Prop :=
  ∀ n, P74503829044239111.a n = A173512 n

end A173512

/-! ## A173512.P12303911015134444260

`∑[dr((A040224(n)+1)²)]`
-/

namespace A173512.P12303911015134444260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((A040224 n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173512.P12303911015134444260

namespace A173512

/-- `∑[dr((A040224(n)+1)²)]` -/
def P12303911015134444260.Spec : Prop :=
  ∀ n, (P12303911015134444260.a n : ℤ) = A173512 n

end A173512

/-! ## A173512.P9645156303870225555

`∑[dr((1-A040137(n))²)]`
-/

namespace A173512.P9645156303870225555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((1 - A040137 n) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173512.P9645156303870225555

namespace A173512

/-- `∑[dr((1-A040137(n))²)]` -/
def P9645156303870225555.Spec : Prop :=
  ∀ n, (P9645156303870225555.a n : ℤ) = A173512 n

end A173512

/-! ## A173512.P17392552404472515716

`∑[dr((1-A040875(n))²)]`
-/

namespace A173512.P17392552404472515716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((1 - A040875 n) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173512.P17392552404472515716

namespace A173512

/-- `∑[dr((1-A040875(n))²)]` -/
def P17392552404472515716.Spec : Prop :=
  ∀ n, (P17392552404472515716.a n : ℤ) = A173512 n

end A173512

/-! ## A173512.P13000758726988241713

`∑[dr((2*A009946(n))²)]`
-/

namespace A173512.P13000758726988241713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((2 * A009946 n) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173512.P13000758726988241713

namespace A173512

/-- `∑[dr((2*A009946(n))²)]` -/
def P13000758726988241713.Spec : Prop :=
  ∀ n, (P13000758726988241713.a n : ℤ) = A173512 n

end A173512

/-! ## A173512.P11914238625128221508

`Δ[A008619(n)+(2*n)²]`
-/

namespace A173512.P11914238625128221508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + ((2 * n) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173512.P11914238625128221508

namespace A173512

/-- `Δ[A008619(n)+(2*n)²]` -/
def P11914238625128221508.Spec : Prop :=
  ∀ n, P11914238625128221508.a n = A173512 n

end A173512

/-! ## A173512.P2476756230236495942

`∪[A119413(n+1), A082285(n)]`
-/

namespace A173512.P2476756230236495942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A173512.P2476756230236495942

namespace A173512

/-- `∪[A119413(n+1), A082285(n)]` -/
def P2476756230236495942.Spec : Prop :=
  ∀ n, (P2476756230236495942.a n : ℤ) = A173512 n

end A173512

/-!
# A173513: a(n) = ceiling(A173510(n)/2).

The programs for A173513, the canonical program `A173513.P10848406702566201534` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173513 has offset 0).

The definition of A173513 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(A173510(n)/2)` (program `A173513.P10848406702566201534`, by `A173513.P10848406702566201534.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173513.P10848406702566201534

`ceil(A173510(n)/2)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A173513

/-- `ceil(A173510(n)/2)` -/
def P10848406702566201534.Spec : Prop :=
  ∀ n, P10848406702566201534.a n = A173513 n

theorem P10848406702566201534.correct : P10848406702566201534.Spec := by
  intro n
  simp only [A173513]

end A173513

/-! ## A173513.P8331124963903585286

`A065033(A173510(n))`
-/

namespace A173513.P8331124963903585286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A173510 n).toNat

end

end A173513.P8331124963903585286

namespace A173513

/-- `A065033(A173510(n))` -/
def P8331124963903585286.Spec : Prop :=
  ∀ n, P8331124963903585286.a n = A173513 n

end A173513

/-! ## A173513.P9331284625173560808

`A004526(A173510(n)+1)`
-/

namespace A173513.P9331284625173560808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A173510 n + 1).toNat

end

end A173513.P9331284625173560808

namespace A173513

/-- `A004526(A173510(n)+1)` -/
def P9331284625173560808.Spec : Prop :=
  ∀ n, P9331284625173560808.a n = A173513 n

end A173513

/-! ## A173513.P18407782003910986983

`A008619(A173510(n)-1)`
-/

namespace A173513.P18407782003910986983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A173510 n - 1).toNat

end

end A173513.P18407782003910986983

namespace A173513

/-- `A008619(A173510(n)-1)` -/
def P18407782003910986983.Spec : Prop :=
  ∀ n, P18407782003910986983.a n = A173513 n

end A173513

/-! ## A173513.P2941789130351590751

`∑{#}[A173510(n), A000035(#)]`
-/

namespace A173513.P2941789130351590751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173510 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A000035 k

end

end A173513.P2941789130351590751

namespace A173513

/-- `∑{#}[A173510(n), A000035(#)]` -/
def P2941789130351590751.Spec : Prop :=
  ∀ n, P2941789130351590751.a n = A173513 n

end A173513

/-!
# A173514: a(n) = 2*a(n-1) + a(n-2) - [a(n-2)/2] - [a(n-4)/2] - [a(n-5)/2] where [k] := floor(k).

The programs for A173514, there is no canonical definition to state claims against.
-/

/-! ## A173514.P2240280352393203109

`A194640(A000930(2*(n+1))-A194640(n))`
-/

namespace A173514.P2240280352393203109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A000930 (2 * (n + 1)) - A194640 n).toNat

end

end A173514.P2240280352393203109

/-! ## A173514.P10794948556309011626

`A194640(A199804(2*(n+1))-A194640(n))`
-/

namespace A173514.P10794948556309011626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A199804 (2 * (n + 1)) - A194640 n).toNat

end

end A173514.P10794948556309011626

/-! ## A173514.P6425723741163924435

`A029902(a(n-1))+a(n-2)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A173514.P6425723741163924435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A029902 (a (n - 1)).toNat + a (n - 2)

end

end A173514.P6425723741163924435

/-! ## A173514.P2829166345515535215

`A000006(A149997(n))`
-/

namespace A173514.P2829166345515535215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A149997 n).toNat

end

end A173514.P2829166345515535215

/-!
# A173516: a(1)=1, a(n) = 3*n*a(n-1) + 1, n > 1.

The programs for A173516, the canonical program `A173516.P18078021970280265780` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173516 has offset 1).

The definition of A173516 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+3*(n+1)*a(n-1)` (program `A173516.P18078021970280265780`, by `A173516.P18078021970280265780.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173516.P18078021970280265780

`1+3*(n+1)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173516

/-- `1+3*(n+1)*a(n-1)` -/
def P18078021970280265780.Spec : Prop :=
  ∀ n, (P18078021970280265780.a n : ℤ) = A173516 (n + 1)

theorem P18078021970280265780.correct : P18078021970280265780.Spec := by
  intro n
  simp only [A173516, Nat.add_sub_cancel]

end A173516

/-! ## A173516.P14154748300075235739

`3*(n+1)*a(n-1)+1` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173516.P14154748300075235739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * (n + 1) * a (n - 1) + 1

end

end A173516.P14154748300075235739

namespace A173516

/-- `3*(n+1)*a(n-1)+1` -/
def P14154748300075235739.Spec : Prop :=
  ∀ n, (P14154748300075235739.a n : ℤ) = A173516 (n + 1)

theorem P14154748300075235739.correct : P14154748300075235739.Spec := by
  intro n
  simp only [A173516, Nat.add_sub_cancel, A173516.P14154748300075235739.a, A173516.P18078021970280265780.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A173516

/-! ## A173516.P7904331860893668574

`1-3*a(n-1)*xor(n, -1)` with `a(0)=1`
-/

namespace A173516.P7904331860893668574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - 3 * a (n - 1) * Int.xor (n : ℤ) (-1)

end

end A173516.P7904331860893668574

namespace A173516

/-- `1-3*a(n-1)*xor(n, -1)` -/
def P7904331860893668574.Spec : Prop :=
  ∀ n, P7904331860893668574.a n = A173516 (n + 1)

end A173516

/-! ## A173516.P5520796682595747535

`a(n-1)*A008486(n+1)+1` with `a(0)=1`
-/

namespace A173516.P5520796682595747535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A008486 (n + 1) + 1

end

end A173516.P5520796682595747535

namespace A173516

/-- `a(n-1)*A008486(n+1)+1` -/
def P5520796682595747535.Spec : Prop :=
  ∀ n, P5520796682595747535.a n = A173516 (n + 1)

end A173516

/-! ## A173516.P15991284388179118003

`a(n-1)*A008585(n+1)+1` with `a(0)=1`
-/

namespace A173516.P15991284388179118003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A008585 (n + 1) + 1

end

end A173516.P15991284388179118003

namespace A173516

/-- `a(n-1)*A008585(n+1)+1` -/
def P15991284388179118003.Spec : Prop :=
  ∀ n, P15991284388179118003.a n = A173516 (n + 1)

end A173516

/-! ## A173516.P10551650632016276049

`a(n-1)*A031193(n+1)+1` with `a(0)=1`
-/

namespace A173516.P10551650632016276049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A031193 (n + 1) + 1

end

end A173516.P10551650632016276049

namespace A173516

/-- `a(n-1)*A031193(n+1)+1` -/
def P10551650632016276049.Spec : Prop :=
  ∀ n, P10551650632016276049.a n = A173516 (n + 1)

end A173516

/-! ## A173516.P8148783224398493659

`A010845(n+1)-A032031(n+1)`
-/

namespace A173516.P8148783224398493659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010845 (n + 1) - A032031 (n + 1)

end

end A173516.P8148783224398493659

namespace A173516

/-- `A010845(n+1)-A032031(n+1)` -/
def P8148783224398493659.Spec : Prop :=
  ∀ n, P8148783224398493659.a n = A173516 (n + 1)

end A173516

/-! ## A173516.P77165869561734121

`A010845(n+1)-A000142(n+1)*A000244(n+1)`
-/

namespace A173516.P77165869561734121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010845 (n + 1) - A000142 (n + 1) * A000244 (n + 1)

end

end A173516.P77165869561734121

namespace A173516

/-- `A010845(n+1)-A000142(n+1)*A000244(n+1)` -/
def P77165869561734121.Spec : Prop :=
  ∀ n, P77165869561734121.a n = A173516 (n + 1)

end A173516

/-!
# A173517: a(n) = k if n is the k-th nonsquare, zero otherwise.

The programs for A173517, the canonical program `A173517.P8849641690335087974` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173517 has offset 0).

The definition of A173517 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A173517.P8849641690335087974

`(1-A010052(n))*A028391(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A173517

/-- `(1-A010052(n))*A028391(n)` -/
def P8849641690335087974.Spec : Prop :=
  ∀ n, P8849641690335087974.a n = A173517 n

theorem P8849641690335087974.correct : P8849641690335087974.Spec := by
  intro n
  simp only [A173517]

end A173517

/-! ## A173517.P10818539412649009194

`Δ[C(floor(1-sqrt(n)+n), 2)]`
-/

namespace A173517.P10818539412649009194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊1 - Real.sqrt (n : ℝ) + (n : ℝ)⌋.toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A173517.P10818539412649009194

namespace A173517

/-- `Δ[C(floor(1-sqrt(n)+n), 2)]` -/
def P10818539412649009194.Spec : Prop :=
  ∀ n, P10818539412649009194.a n = A173517 n

end A173517

/-! ## A173517.P12058351098996002703

`(n-floor(sqrt(n)))*char[comp[n²]]`
-/

namespace A173517.P12058351098996002703
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (Nat.sqrt n : ℤ)) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A173517.P12058351098996002703

namespace A173517

/-- `(n-floor(sqrt(n)))*char[comp[n²]]` -/
def P12058351098996002703.Spec : Prop :=
  ∀ n, P12058351098996002703.a n = A173517 n

end A173517

/-! ## A173517.P14490689763339221087

`A028391(n*char[comp[(n+1)²]])`
-/

namespace A173517.P14490689763339221087
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 (n * (if ∃ j, f1 j = n then 1 else 0))

end

end A173517.P14490689763339221087

namespace A173517

/-- `A028391(n*char[comp[(n+1)²]])` -/
def P14490689763339221087.Spec : Prop :=
  ∀ n, P14490689763339221087.a n = A173517 n

end A173517

/-! ## A173517.P2306622759127531188

`lcm(A028391(n), A397085(n))`
-/

namespace A173517.P2306622759127531188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028391 n) (A397085 n)

end

end A173517.P2306622759127531188

namespace A173517

/-- `lcm(A028391(n), A397085(n))` -/
def P2306622759127531188.Spec : Prop :=
  ∀ n, (P2306622759127531188.a n : ℤ) = A173517 n

end A173517

/-! ## A173517.P14272369577785358509

`n-A000196(n)*A056926(n)`
-/

namespace A173517.P14272369577785358509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000196 n * A056926 n

end

end A173517.P14272369577785358509

namespace A173517

/-- `n-A000196(n)*A056926(n)` -/
def P14272369577785358509.Spec : Prop :=
  ∀ n, P14272369577785358509.a n = A173517 n

end A173517

/-! ## A173517.P6100677054864433344

`A142150(A277383(n+1)+1)`
-/

namespace A173517.P6100677054864433344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A277383 (n + 1) + 1).toNat

end

end A173517.P6100677054864433344

namespace A173517

/-- `A142150(A277383(n+1)+1)` -/
def P6100677054864433344.Spec : Prop :=
  ∀ n, P6100677054864433344.a n = A173517 n

end A173517

/-! ## A173517.P7638335514079637737

`A028391(n)%A393571(n)`
-/

namespace A173517.P7638335514079637737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028391 n) (A393571 n)

end

end A173517.P7638335514079637737

namespace A173517

/-- `A028391(n)%A393571(n)` -/
def P7638335514079637737.Spec : Prop :=
  ∀ n, P7638335514079637737.a n = A173517 n

end A173517

/-! ## A173517.P10905029714728746428

`A037213(A028391(A037213(n)+n)*A028391(n))`
-/

namespace A173517.P10905029714728746428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A028391 (A037213 n + (n : ℤ)).toNat * A028391 n).toNat

end

end A173517.P10905029714728746428

namespace A173517

/-- `A037213(A028391(A037213(n)+n)*A028391(n))` -/
def P10905029714728746428.Spec : Prop :=
  ∀ n, P10905029714728746428.a n = A173517 n

end A173517

/-! ## A173517.P9189750827846002539

`A037213((A028391(n)-A037213(n))*A028391(n))`
-/

namespace A173517.P9189750827846002539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 ((A028391 n - A037213 n) * A028391 n).toNat

end

end A173517.P9189750827846002539

namespace A173517

/-- `A037213((A028391(n)-A037213(n))*A028391(n))` -/
def P9189750827846002539.Spec : Prop :=
  ∀ n, P9189750827846002539.a n = A173517 n

end A173517

/-!
# A173519: Number of partitions of n*(n+1)/2 into parts not greater than n.

The programs for A173519, there is no canonical definition to state claims against.
-/

/-! ## A173519.P9706621682854154537

`A008284(A086602(n+1)+A034188(2*n+3))`
-/

namespace A173519.P9706621682854154537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A086602 (n + 1) + A034188 (2 * n + 3)).toNat

end

end A173519.P9706621682854154537

/-! ## A173519.P14205459287876123860

`A026820(A038722(C(C(n+2, 2)-n, 2)-n+1))`
-/

namespace A173519.P14205459287876123860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (A038722 ((Nat.choose ((Nat.choose (n + 2) 2 : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) + 1).toNat).toNat

end

end A173519.P14205459287876123860

/-! ## A173519.P13973358062009749230

`A026820(A050534(n+1)+A028310(n))`
-/

namespace A173519.P13973358062009749230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (A050534 (n + 1) + A028310 n).toNat

end

end A173519.P13973358062009749230

/-! ## A173519.P10568349389263043628

`A026820(A233583(n+1)+A050534(n+1))`
-/

namespace A173519.P10568349389263043628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (A233583 (n + 1) + A050534 (n + 1)).toNat

end

end A173519.P10568349389263043628

/-! ## A173519.P6342498341772165018

`A058398(C(∑[n+1], 2)+1-n)`
-/

namespace A173519.P6342498341772165018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058398 ((Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (1 - (n : ℤ))).toNat

end

end A173519.P6342498341772165018

/-!
# A173520: Partial sums of A118371.

The programs for A173520, there is no canonical definition to state claims against.
-/

/-! ## A173520.P15737809953789436584

`∑[A118371(n+1)]`
-/

namespace A173520.P15737809953789436584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173520.P15737809953789436584

/-! ## A173520.P5048251060720866413

`∑[p?[comp[A105170(n+1)]]]`
-/

namespace A173520.P5048251060720866413
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105170 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173520.P5048251060720866413

/-! ## A173520.P11592216299730825366

`∑[record[A118371(A028920(n))]]`
-/

namespace A173520.P11592216299730825366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118371 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173520.P11592216299730825366

/-! ## A173520.P4193976813935430635

`∑[record[A118371(A101504(n))]]`
-/

namespace A173520.P4193976813935430635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118371 (A101504 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173520.P4193976813935430635

/-! ## A173520.P9250965674503663664

`∑[record[A118371(A126759(n))]]`
-/

namespace A173520.P9250965674503663664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118371 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173520.P9250965674503663664

/-!
# A173521: a(n) is the concatenation of n 1's, 0, n 1's and 0.

The programs for A173521, the canonical program `A173521.P11611460555470517168` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173521 has offset 0).

The definition of A173521 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173521.P11611460555470517168

`10/9*(10^(n+1)+1)*(10^n-1)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173521

/-- `10/9*(10^(n+1)+1)*(10^n-1)` -/
def P11611460555470517168.Spec : Prop :=
  ∀ n, P11611460555470517168.a n = (A173521 n : ℚ)

end A173521

/-! ## A173521.P1511987669861702922

`lcm(2, A332150(n))`
-/

namespace A173521.P1511987669861702922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A332150 n)

end

end A173521.P1511987669861702922

namespace A173521

/-- `lcm(2, A332150(n))` -/
def P1511987669861702922.Spec : Prop :=
  ∀ n, (P1511987669861702922.a n : ℤ) = A173521 n

end A173521

/-! ## A173521.P9302011672837891301

`lcm(5, A332120(n))`
-/

namespace A173521.P9302011672837891301
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (A332120 n)

end

end A173521.P9302011672837891301

namespace A173521

/-- `lcm(5, A332120(n))` -/
def P9302011672837891301.Spec : Prop :=
  ∀ n, (P9302011672837891301.a n : ℤ) = A173521 n

end A173521

/-! ## A173521.P7526055026076077571

`lcm(10, A138148(n))`
-/

namespace A173521.P7526055026076077571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 10 (A138148 n)

end

end A173521.P7526055026076077571

namespace A173521

/-- `lcm(10, A138148(n))` -/
def P7526055026076077571.Spec : Prop :=
  ∀ n, (P7526055026076077571.a n : ℤ) = A173521 n

end A173521

/-! ## A173521.P16394119495231229587

`5*A332140(n)/2`
-/

namespace A173521.P16394119495231229587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * A332140 n : ℚ) / 2

end

end A173521.P16394119495231229587

namespace A173521

/-- `5*A332140(n)/2` -/
def P16394119495231229587.Spec : Prop :=
  ∀ n, P16394119495231229587.a n = (A173521 n : ℚ)

end A173521

/-! ## A173521.P16336730409316882982

`5*A332160(n)/3`
-/

namespace A173521.P16336730409316882982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * A332160 n : ℚ) / 3

end

end A173521.P16336730409316882982

namespace A173521

/-- `5*A332160(n)/3` -/
def P16336730409316882982.Spec : Prop :=
  ∀ n, P16336730409316882982.a n = (A173521 n : ℚ)

end A173521

/-! ## A173521.P11118364524523272305

`5*A332180(n)/4`
-/

namespace A173521.P11118364524523272305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * A332180 n : ℚ) / 4

end

end A173521.P11118364524523272305

namespace A173521

/-- `5*A332180(n)/4` -/
def P11118364524523272305.Spec : Prop :=
  ∀ n, P11118364524523272305.a n = (A173521 n : ℚ)

end A173521

/-! ## A173521.P15996255248840491348

`floor(10/3*A332130(n))`
-/

namespace A173521.P15996255248840491348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 : ℚ) / 3 * (A332130 n : ℚ)⌋

end

end A173521.P15996255248840491348

namespace A173521

/-- `floor(10/3*A332130(n))` -/
def P15996255248840491348.Spec : Prop :=
  ∀ n, P15996255248840491348.a n = A173521 n

end A173521

/-! ## A173521.P16109983683698765801

`A332190(n)+A138148(n)`
-/

namespace A173521.P16109983683698765801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332190 n + A138148 n

end

end A173521.P16109983683698765801

namespace A173521

/-- `A332190(n)+A138148(n)` -/
def P16109983683698765801.Spec : Prop :=
  ∀ n, P16109983683698765801.a n = A173521 n

end A173521

/-! ## A173521.P11201716961745401434

`A332160(n)+A332140(n)`
-/

namespace A173521.P11201716961745401434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332160 n + A332140 n

end

end A173521.P11201716961745401434

namespace A173521

/-- `A332160(n)+A332140(n)` -/
def P11201716961745401434.Spec : Prop :=
  ∀ n, P11201716961745401434.a n = A173521 n

end A173521

/-!
# A173522: Zero together with the partial sums of A105321.

The programs for A173522, the canonical program `A173522.P2611288585659142813` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173522 has offset 0).

The definition of A173522 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173522.P7169942732077310150

`A139250(n)-A173454(n)`
-/

namespace A173522.P7169942732077310150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n - A173454 n

end

end A173522.P7169942732077310150

namespace A173522

/-- `A139250(n)-A173454(n)` -/
def P7169942732077310150.Spec : Prop :=
  ∀ n, P7169942732077310150.a n = A173522 n

end A173522

/-! ## A173522.P2611288585659142813

`∑[A105321(n)]-A105321(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A173522

/-- `∑[A105321(n)]-A105321(n)` -/
def P2611288585659142813.Spec : Prop :=
  ∀ n, P2611288585659142813.a n = A173522 n

theorem P2611288585659142813.correct : P2611288585659142813.Spec := by
  intro n
  simp only [A173522]

end A173522

/-! ## A173522.P5565788667688552514

`∑[A139251(n)]-A173454(n)`
-/

namespace A173522.P5565788667688552514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A173454 n

end

end A173522.P5565788667688552514

namespace A173522

/-- `∑[A139251(n)]-A173454(n)` -/
def P5565788667688552514.Spec : Prop :=
  ∀ n, P5565788667688552514.a n = A173522 n

end A173522

/-! ## A173522.P2588922921078496751

`A006046(A004273(n)-n)+A006046(n)`
-/

namespace A173522.P2588922921078496751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (A004273 n - (n : ℤ)).toNat + A006046 n

end

end A173522.P2588922921078496751

namespace A173522

/-- `A006046(A004273(n)-n)+A006046(n)` -/
def P2588922921078496751.Spec : Prop :=
  ∀ n, P2588922921078496751.a n = A173522 n

end A173522

/-! ## A173522.P17157063869040883417

`∑{d}[A039635(n+1), A006046(n+1-A016006(#))]`
-/

namespace A173522.P17157063869040883417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A006046 ((n + 1 : ℤ) - A016006 d).toNat

end

end A173522.P17157063869040883417

namespace A173522

/-- `∑{d}[A039635(n+1), A006046(n+1-A016006(#))]` -/
def P17157063869040883417.Spec : Prop :=
  ∀ n, P17157063869040883417.a n = A173522 n

end A173522

/-! ## A173522.P354454661114267745

`∑[A131136(n)]-A008619(A131136(n))`
-/

namespace A173522.P354454661114267745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131136 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008619 (A131136 n).toNat

end

end A173522.P354454661114267745

namespace A173522

/-- `∑[A131136(n)]-A008619(A131136(n))` -/
def P354454661114267745.Spec : Prop :=
  ∀ n, P354454661114267745.a n = A173522 n

end A173522

/-! ## A173522.P1718541606942413208

`2*A006046(n)-sqrt(A177241(n))`
-/

namespace A173522.P1718541606942413208
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * A006046 n : ℝ) - Real.sqrt (A177241 n : ℝ)

end

end A173522.P1718541606942413208

namespace A173522

/-- `2*A006046(n)-sqrt(A177241(n))` -/
def P1718541606942413208.Spec : Prop :=
  ∀ n, P1718541606942413208.a n = (A173522 n : ℝ)

end A173522

/-! ## A173522.P8332204229221458775

`A151566(comp[2*(n+1)])`
-/

namespace A173522.P8332204229221458775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151566 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A173522.P8332204229221458775

namespace A173522

/-- `A151566(comp[2*(n+1)])` -/
def P8332204229221458775.Spec : Prop :=
  ∀ n, P8332204229221458775.a n = A173522 n

end A173522

/-! ## A173522.P6880278290673404950

`A151566(Δ[n²])-A105321(n)`
-/

namespace A173522.P6880278290673404950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151566 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A105321 n

end

end A173522.P6880278290673404950

namespace A173522

/-- `A151566(Δ[n²])-A105321(n)` -/
def P6880278290673404950.Spec : Prop :=
  ∀ n, P6880278290673404950.a n = A173522 n

end A173522

/-! ## A173522.P3047290851624794847

`A266530(Δ[n²])-A173454(n)`
-/

namespace A173522.P3047290851624794847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266530 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A173454 n

end

end A173522.P3047290851624794847

namespace A173522

/-- `A266530(Δ[n²])-A173454(n)` -/
def P3047290851624794847.Spec : Prop :=
  ∀ n, P3047290851624794847.a n = A173522 n

end A173522

/-! ## A173522.P10055264426047390464

`record[A266530(A000265(n+1))]-A173454(n)`
-/

namespace A173522.P10055264426047390464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266530 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A173454 n

end

end A173522.P10055264426047390464

namespace A173522

/-- `record[A266530(A000265(n+1))]-A173454(n)` -/
def P10055264426047390464.Spec : Prop :=
  ∀ n, P10055264426047390464.a n = A173522 n

end A173522

/-! ## A173522.P5135359862913635547

`A266530(2*n+3)-A139251(n+1)-A173454(n)`
-/

namespace A173522.P5135359862913635547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266530 (2 * n + 3) - A139251 (n + 1) - A173454 n

end

end A173522.P5135359862913635547

namespace A173522

/-- `A266530(2*n+3)-A139251(n+1)-A173454(n)` -/
def P5135359862913635547.Spec : Prop :=
  ∀ n, P5135359862913635547.a n = A173522 n

end A173522

/-! ## A173522.P12714311669297454429

`A223542(∑[n]-n)+A006046(n)`
-/

namespace A173522.P12714311669297454429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223542 (∑ j ∈ Finset.range (n + 1), f1 j - n) + A006046 n

end

end A173522.P12714311669297454429

namespace A173522

/-- `A223542(∑[n]-n)+A006046(n)` -/
def P12714311669297454429.Spec : Prop :=
  ∀ n, P12714311669297454429.a n = A173522 n

end A173522

/-!
# A173523: 1+A053735(n-1), where A053735 is the sum-of-digits function in base 3.

The programs for A173523, the canonical program `A173523.P2383759421144788857` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173523 has offset 1).

The definition of A173523 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173523.P2383759421144788857

`1+A053735(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A173523

/-- `1+A053735(n)` -/
def P2383759421144788857.Spec : Prop :=
  ∀ n, P2383759421144788857.a n = A173523 (n + 1)

theorem P2383759421144788857.correct : P2383759421144788857.Spec := by
  intro n
  simp only [A173523, Nat.add_sub_cancel]

end A173523

/-! ## A173523.P16108612592637391713

`a(floor(n/3))+n%3` with `a(0)=1`
-/

namespace A173523.P16108612592637391713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 3⌋.toNat + n % 3

end

end A173523.P16108612592637391713

namespace A173523

/-- `a(floor(n/3))+n%3` -/
def P16108612592637391713.Spec : Prop :=
  ∀ n, (P16108612592637391713.a n : ℤ) = A173523 (n + 1)

end A173523

/-! ## A173523.P7910489989288479883

`a(n-3^val(n, 3))+1` with `a(0)=1`
-/

namespace A173523.P7910489989288479883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 3 ^ SequenceMachineLib.valuation n 3) + 1

end

end A173523.P7910489989288479883

namespace A173523

/-- `a(n-3^val(n, 3))+1` -/
def P7910489989288479883.Spec : Prop :=
  ∀ n, (P7910489989288479883.a n : ℤ) = A173523 (n + 1)

end A173523

/-! ## A173523.P12457516530427310459

`a(n-1)+1-val(n², 3)` with `a(0)=1`
-/

namespace A173523.P12457516530427310459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (1 - (SequenceMachineLib.valuation (n ^ 2) 3 : ℤ))

end

end A173523.P12457516530427310459

namespace A173523

/-- `a(n-1)+1-val(n², 3)` -/
def P12457516530427310459.Spec : Prop :=
  ∀ n, P12457516530427310459.a n = A173523 (n + 1)

end A173523

/-! ## A173523.P10630814203390151802

`1-(val(n², 3)-a(n-1))` with `a(0)=1`
-/

namespace A173523.P10630814203390151802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ((SequenceMachineLib.valuation (n ^ 2) 3 : ℤ) - a (n - 1))

end

end A173523.P10630814203390151802

namespace A173523

/-- `1-(val(n², 3)-a(n-1))` -/
def P10630814203390151802.Spec : Prop :=
  ∀ n, P10630814203390151802.a n = A173523 (n + 1)

end A173523

/-! ## A173523.P11962492771159811630

`a(n-1)-2*val(n, 3)+1` with `a(0)=1`
-/

namespace A173523.P11962492771159811630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (2 * SequenceMachineLib.valuation n 3 : ℤ) + 1

end

end A173523.P11962492771159811630

namespace A173523

/-- `a(n-1)-2*val(n, 3)+1` -/
def P11962492771159811630.Spec : Prop :=
  ∀ n, P11962492771159811630.a n = A173523 (n + 1)

end A173523

/-! ## A173523.P3180812619106699864

`1-(2*val(n, 3)-a(n-1))` with `a(0)=1`
-/

namespace A173523.P3180812619106699864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ((2 * SequenceMachineLib.valuation n 3 : ℤ) - a (n - 1))

end

end A173523.P3180812619106699864

namespace A173523

/-- `1-(2*val(n, 3)-a(n-1))` -/
def P3180812619106699864.Spec : Prop :=
  ∀ n, P3180812619106699864.a n = A173523 (n + 1)

end A173523

/-! ## A173523.P8236903716063784536

`n-2*∑[val(abs(1-n)+1, 3)]+1`
-/

namespace A173523.P8236903716063784536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((2 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) + 1

end

end A173523.P8236903716063784536

namespace A173523

/-- `n-2*∑[val(abs(1-n)+1, 3)]+1` -/
def P8236903716063784536.Spec : Prop :=
  ∀ n, P8236903716063784536.a n = A173523 (n + 1)

end A173523

/-! ## A173523.P17009246355536991007

`a(floor(n/3))+n-3*floor(n/3)` with `a(0)=1`
-/

namespace A173523.P17009246355536991007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 3⌋.toNat + ((n : ℤ) - 3 * ⌊(n : ℚ) / 3⌋)

end

end A173523.P17009246355536991007

namespace A173523

/-- `a(floor(n/3))+n-3*floor(n/3)` -/
def P17009246355536991007.Spec : Prop :=
  ∀ n, P17009246355536991007.a n = A173523 (n + 1)

end A173523

/-! ## A173523.P11065761472808939677

`A365722(3*n+1)`
-/

namespace A173523.P11065761472808939677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365722 (3 * n + 1)

end

end A173523.P11065761472808939677

namespace A173523

/-- `A365722(3*n+1)` -/
def P11065761472808939677.Spec : Prop :=
  ∀ n, P11065761472808939677.a n = A173523 (n + 1)

end A173523

/-! ## A173523.P3641811464623914906

`A230641(n)+1-n`
-/

namespace A173523.P3641811464623914906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230641 n + (1 - (n : ℤ))

end

end A173523.P3641811464623914906

namespace A173523

/-- `A230641(n)+1-n` -/
def P3641811464623914906.Spec : Prop :=
  ∀ n, P3641811464623914906.a n = A173523 (n + 1)

theorem P3641811464623914906.correct : P3641811464623914906.Spec := by
  intro n
  simp only [A173523, Nat.add_sub_cancel, A173523.P3641811464623914906.a, A173523.P2383759421144788857.a, A053735, A053735.P3640341592284089632.a, A230641, A230641.P12572480448472300178.a, A054861, A054861.P6137810495506521191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173523

/-! ## A173523.P649982509018396347

`1-A344853(n)+n`
-/

namespace A173523.P649982509018396347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A344853 n + (n : ℤ)

end

end A173523.P649982509018396347

namespace A173523

/-- `1-A344853(n)+n` -/
def P649982509018396347.Spec : Prop :=
  ∀ n, P649982509018396347.a n = A173523 (n + 1)

theorem P649982509018396347.correct : P649982509018396347.Spec := by
  intro n
  simp only [A173523, Nat.add_sub_cancel, A173523.P649982509018396347.a, A173523.P2383759421144788857.a, A053735, A053735.P3640341592284089632.a, A344853, A344853.P1953230496886263085.a, A054861, A054861.P6137810495506521191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173523

/-! ## A173523.P11026009196040003771

`n+1-2*A054861(n)`
-/

namespace A173523.P11026009196040003771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 2 * A054861 n

end

end A173523.P11026009196040003771

namespace A173523

/-- `n+1-2*A054861(n)` -/
def P11026009196040003771.Spec : Prop :=
  ∀ n, P11026009196040003771.a n = A173523 (n + 1)

theorem P11026009196040003771.correct : P11026009196040003771.Spec := by
  intro n
  simp only [A173523, Nat.add_sub_cancel, A173523.P11026009196040003771.a, A173523.P2383759421144788857.a, A053735, A053735.P3640341592284089632.a, A054861, A054861.P6137810495506521191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173523

/-! ## A173523.P1715914418209126138

`A061775(A006047(n))`
-/

namespace A173523.P1715914418209126138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (A006047 n).toNat

end

end A173523.P1715914418209126138

namespace A173523

/-- `A061775(A006047(n))` -/
def P1715914418209126138.Spec : Prop :=
  ∀ n, P1715914418209126138.a n = A173523 (n + 1)

end A173523

/-! ## A173523.P13471227582106429719

`A094727(A387188(n))`
-/

namespace A173523.P13471227582106429719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (A387188 n).toNat

end

end A173523.P13471227582106429719

namespace A173523

/-- `A094727(A387188(n))` -/
def P13471227582106429719.Spec : Prop :=
  ∀ n, P13471227582106429719.a n = A173523 (n + 1)

end A173523

/-! ## A173523.P4369667595785093207

`A056239(A331279(n))+1`
-/

namespace A173523.P4369667595785093207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A331279 n).toNat + 1

end

end A173523.P4369667595785093207

namespace A173523

/-- `A056239(A331279(n))+1` -/
def P4369667595785093207.Spec : Prop :=
  ∀ n, P4369667595785093207.a n = A173523 (n + 1)

end A173523

/-! ## A173523.P8143318262675922700

`A016777(n)-A346502(n)`
-/

namespace A173523.P8143318262675922700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n - A346502 n

end

end A173523.P8143318262675922700

namespace A173523

/-- `A016777(n)-A346502(n)` -/
def P8143318262675922700.Spec : Prop :=
  ∀ n, P8143318262675922700.a n = A173523 (n + 1)

end A173523

/-! ## A173523.P2106274640433764258

`A160384(n)+A081603(n)+1`
-/

namespace A173523.P2106274640433764258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160384 n + A081603 n + 1

end

end A173523.P2106274640433764258

namespace A173523

/-- `A160384(n)+A081603(n)+1` -/
def P2106274640433764258.Spec : Prop :=
  ∀ n, P2106274640433764258.a n = A173523 (n + 1)

end A173523

/-! ## A173523.P15604618432918650524

`A180017(n)+A063787(n+1)`
-/

namespace A173523.P15604618432918650524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180017 n + A063787 (n + 1)

end

end A173523.P15604618432918650524

namespace A173523

/-- `A180017(n)+A063787(n+1)` -/
def P15604618432918650524.Spec : Prop :=
  ∀ n, P15604618432918650524.a n = A173523 (n + 1)

theorem P15604618432918650524.correct : P15604618432918650524.Spec := by
  intro n
  simp only [A173523, Nat.add_sub_cancel, A173523.P15604618432918650524.a, A173523.P2383759421144788857.a, A053735, A053735.P3640341592284089632.a, A063787, A063787.P13236937262237871159.a, A180017, A180017.P1955405444060819929.a, A000120, A000120.P2816527436160941581.a, A011371, A011371.P12398255777927387864.a, A054861, A054861.P6137810495506521191.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173523

/-! ## A173523.P12241255623299505371

`A365722(n)+A051064(n+1)`
-/

namespace A173523.P12241255623299505371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365722 n + A051064 (n + 1)

end

end A173523.P12241255623299505371

namespace A173523

/-- `A365722(n)+A051064(n+1)` -/
def P12241255623299505371.Spec : Prop :=
  ∀ n, P12241255623299505371.a n = A173523 (n + 1)

end A173523

/-!
# A173524: a(n) = A053737(4^k+n-1) in the limit k->infinity, where k plays the role of a row index in A053737.

The programs for A173524, the canonical program `A173524.P13458821933964064182` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173524 has offset 1).

The definition of A173524 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173524.P13458821933964064182

`a(floor(n/4))+n%4` with `a(0)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173524

/-- `a(floor(n/4))+n%4` -/
def P13458821933964064182.Spec : Prop :=
  ∀ n, (P13458821933964064182.a n : ℤ) = A173524 (n + 1)

theorem P13458821933964064182.correct : P13458821933964064182.Spec := by
  intro n
  simp only [A173524, Nat.add_sub_cancel]

end A173524

/-! ## A173524.P4853917848569825488

`a(floor(n/4))+and(3, n)` with `a(0)=1`
-/

namespace A173524.P4853917848569825488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 4⌋.toNat + Nat.land 3 n

end

end A173524.P4853917848569825488

namespace A173524

/-- `a(floor(n/4))+and(3, n)` -/
def P4853917848569825488.Spec : Prop :=
  ∀ n, (P4853917848569825488.a n : ℤ) = A173524 (n + 1)

end A173524

/-! ## A173524.P18419177803648650225

`a(n-4^val(n, 4))+1` with `a(0)=1`
-/

namespace A173524.P18419177803648650225
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 4 ^ SequenceMachineLib.valuation n 4) + 1

end

end A173524.P18419177803648650225

namespace A173524

/-- `a(n-4^val(n, 4))+1` -/
def P18419177803648650225.Spec : Prop :=
  ∀ n, (P18419177803648650225.a n : ℤ) = A173524 (n + 1)

end A173524

/-! ## A173524.P4386898389963349673

`val(n, 2)%2+a(and(n, n-1))+1` with `a(0)=1, a(1)=2`
-/

namespace A173524.P4386898389963349673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.valuation n 2 % 2 + (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1)

end

end A173524.P4386898389963349673

namespace A173524

/-- `val(n, 2)%2+a(and(n, n-1))+1` -/
def P4386898389963349673.Spec : Prop :=
  ∀ n, (P4386898389963349673.a n : ℤ) = A173524 (n + 1)

end A173524

/-! ## A173524.P7242705167367743707

`A053737(n)+1`
-/

namespace A173524.P7242705167367743707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n + 1

end

end A173524.P7242705167367743707

namespace A173524

/-- `A053737(n)+1` -/
def P7242705167367743707.Spec : Prop :=
  ∀ n, P7242705167367743707.a n = A173524 (n + 1)

end A173524

/-! ## A173524.P6936150011463768885

`dr(A007090(n))+1`
-/

namespace A173524.P6936150011463768885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007090 n) + 1

end

end A173524.P6936150011463768885

namespace A173524

/-- `dr(A007090(n))+1` -/
def P6936150011463768885.Spec : Prop :=
  ∀ n, (P6936150011463768885.a n : ℤ) = A173524 (n + 1)

end A173524

/-! ## A173524.P7100949135650898741

`A230631(n)+1-n`
-/

namespace A173524.P7100949135650898741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230631 n + (1 - (n : ℤ))

end

end A173524.P7100949135650898741

namespace A173524

/-- `A230631(n)+1-n` -/
def P7100949135650898741.Spec : Prop :=
  ∀ n, P7100949135650898741.a n = A173524 (n + 1)

end A173524

/-! ## A173524.P13104551169450271077

`∑{digits}[record[A064770(n)+1], #]`
-/

namespace A173524.P13104551169450271077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A173524.P13104551169450271077

namespace A173524

/-- `∑{digits}[record[A064770(n)+1], #]` -/
def P13104551169450271077.Spec : Prop :=
  ∀ n, (P13104551169450271077.a n : ℤ) = A173524 (n + 1)

end A173524

/-! ## A173524.P14600135499196018636

`n+1-3*A054893(n)`
-/

namespace A173524.P14600135499196018636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 3 * A054893 n

end

end A173524.P14600135499196018636

namespace A173524

/-- `n+1-3*A054893(n)` -/
def P14600135499196018636.Spec : Prop :=
  ∀ n, P14600135499196018636.a n = A173524 (n + 1)

end A173524

/-! ## A173524.P3670501232323830430

`∑{digits}[A007090(4*n+1), #]`
-/

namespace A173524.P3670501232323830430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A173524.P3670501232323830430

namespace A173524

/-- `∑{digits}[A007090(4*n+1), #]` -/
def P3670501232323830430.Spec : Prop :=
  ∀ n, (P3670501232323830430.a n : ℤ) = A173524 (n + 1)

end A173524

/-! ## A173524.P589095304082086017

`∑{digits}[lt[A054055(n), 4]+1, #]`
-/

namespace A173524.P589095304082086017
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A173524.P589095304082086017

namespace A173524

/-- `∑{digits}[lt[A054055(n), 4]+1, #]` -/
def P589095304082086017.Spec : Prop :=
  ∀ n, (P589095304082086017.a n : ℤ) = A173524 (n + 1)

end A173524

/-! ## A173524.P8673717685071879979

`dr(A024644(2*n)/2)+1`
-/

namespace A173524.P8673717685071879979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway ((A024644 (2 * n) : ℚ) / 2)) + 1

end

end A173524.P8673717685071879979

namespace A173524

/-- `dr(A024644(2*n)/2)+1` -/
def P8673717685071879979.Spec : Prop :=
  ∀ n, (P8673717685071879979.a n : ℤ) = A173524 (n + 1)

end A173524

/-! ## A173524.P12534443040297637111

`A005496(A053737(n))`
-/

namespace A173524.P12534443040297637111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A053737 n).toNat

end

end A173524.P12534443040297637111

namespace A173524

/-- `A005496(A053737(n))` -/
def P12534443040297637111.Spec : Prop :=
  ∀ n, P12534443040297637111.a n = A173524 (n + 1)

end A173524

/-! ## A173524.P13124822774463451632

`A053737(A016813(n))`
-/

namespace A173524.P13124822774463451632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A016813 n).toNat

end

end A173524.P13124822774463451632

namespace A173524

/-- `A053737(A016813(n))` -/
def P13124822774463451632.Spec : Prop :=
  ∀ n, P13124822774463451632.a n = A173524 (n + 1)

end A173524

/-! ## A173524.P6235513718838361588

`A053737(A158057(n))`
-/

namespace A173524.P6235513718838361588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A158057 n).toNat

end

end A173524.P6235513718838361588

namespace A173524

/-- `A053737(A158057(n))` -/
def P6235513718838361588.Spec : Prop :=
  ∀ n, P6235513718838361588.a n = A173524 (n + 1)

end A173524

/-! ## A173524.P8367669290364261885

`A007953(A007090(n)+1)`
-/

namespace A173524.P8367669290364261885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007090 n + 1).toNat

end

end A173524.P8367669290364261885

namespace A173524

/-- `A007953(A007090(n)+1)` -/
def P8367669290364261885.Spec : Prop :=
  ∀ n, P8367669290364261885.a n = A173524 (n + 1)

end A173524

/-! ## A173524.P4325182839937294959

`A057536(A007284(n))+1`
-/

namespace A173524.P4325182839937294959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057536 (A007284 n).toNat + 1

end

end A173524.P4325182839937294959

namespace A173524

/-- `A057536(A007284(n))+1` -/
def P4325182839937294959.Spec : Prop :=
  ∀ n, P4325182839937294959.a n = A173524 (n + 1)

end A173524

/-! ## A173524.P8862348006121569960

`A053824(A020655(n+1))`
-/

namespace A173524.P8862348006121569960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A020655 (n + 1)).toNat

end

end A173524.P8862348006121569960

namespace A173524

/-- `A053824(A020655(n+1))` -/
def P8862348006121569960.Spec : Prop :=
  ∀ n, P8862348006121569960.a n = A173524 (n + 1)

end A173524

/-! ## A173524.P9587144110121103842

`A139352(n)+A063787(n+1)`
-/

namespace A173524.P9587144110121103842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n + A063787 (n + 1)

end

end A173524.P9587144110121103842

namespace A173524

/-- `A139352(n)+A063787(n+1)` -/
def P9587144110121103842.Spec : Prop :=
  ∀ n, P9587144110121103842.a n = A173524 (n + 1)

end A173524

/-! ## A173524.P11551178226681239802

`A139351(2*n+1)+A000120(n)`
-/

namespace A173524.P11551178226681239802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (2 * n + 1) + A000120 n

end

end A173524.P11551178226681239802

namespace A173524

/-- `A139351(2*n+1)+A000120(n)` -/
def P11551178226681239802.Spec : Prop :=
  ∀ n, P11551178226681239802.a n = A173524 (n + 1)

end A173524

/-!
# A173525: a(n) = 1 + A053824(n-1), where A053824 = sum of digits in base 5.

The programs for A173525, the canonical program `A173525.P12961577271591045237` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173525 has offset 1).

The definition of A173525 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173525.P12961577271591045237

`1+A053824(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A173525

/-- `1+A053824(n)` -/
def P12961577271591045237.Spec : Prop :=
  ∀ n, P12961577271591045237.a n = A173525 (n + 1)

theorem P12961577271591045237.correct : P12961577271591045237.Spec := by
  intro n
  simp only [A173525, Nat.add_sub_cancel]

end A173525

/-! ## A173525.P4251846204713953077

`A230865(n)+1-n`
-/

namespace A173525.P4251846204713953077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230865 n + (1 - (n : ℤ))

end

end A173525.P4251846204713953077

namespace A173525

/-- `A230865(n)+1-n` -/
def P4251846204713953077.Spec : Prop :=
  ∀ n, P4251846204713953077.a n = A173525 (n + 1)

theorem P4251846204713953077.correct : P4251846204713953077.Spec := by
  intro n
  simp only [A173525, Nat.add_sub_cancel, A173525.P4251846204713953077.a, A173525.P12961577271591045237.a, A053824, A053824.P3010568683746929224.a, A230865, A230865.P13351572211588276155.a, A027868, A027868.P16736331187050993761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173525

/-! ## A173525.P7277840151318707818

`∑{digits}[1+A007091(n), #]`
-/

namespace A173525.P7277840151318707818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A007091 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A173525.P7277840151318707818

namespace A173525

/-- `∑{digits}[1+A007091(n), #]` -/
def P7277840151318707818.Spec : Prop :=
  ∀ n, (P7277840151318707818.a n : ℤ) = A173525 (n + 1)

end A173525

/-! ## A173525.P17543711607054244973

`a(A319653(n)-1)+1` with `a(0)=1`
-/

namespace A173525.P17543711607054244973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A319653 n - 1).toNat + 1

end

end A173525.P17543711607054244973

namespace A173525

/-- `a(A319653(n)-1)+1` -/
def P17543711607054244973.Spec : Prop :=
  ∀ n, (P17543711607054244973.a n : ℤ) = A173525 (n + 1)

end A173525

/-! ## A173525.P7243491120213749493

`n+1-4*A027868(n)`
-/

namespace A173525.P7243491120213749493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 4 * A027868 n

end

end A173525.P7243491120213749493

namespace A173525

/-- `n+1-4*A027868(n)` -/
def P7243491120213749493.Spec : Prop :=
  ∀ n, P7243491120213749493.a n = A173525 (n + 1)

theorem P7243491120213749493.correct : P7243491120213749493.Spec := by
  intro n
  simp only [A173525, Nat.add_sub_cancel, A173525.P7243491120213749493.a, A173525.P12961577271591045237.a, A027868, A027868.P16736331187050993761.a, A053824, A053824.P3010568683746929224.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173525

/-! ## A173525.P6698118507350543753

`A008619(2*A053824(n))`
-/

namespace A173525.P6698118507350543753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A053824 n).toNat

end

end A173525.P6698118507350543753

namespace A173525

/-- `A008619(2*A053824(n))` -/
def P6698118507350543753.Spec : Prop :=
  ∀ n, P6698118507350543753.a n = A173525 (n + 1)

end A173525

/-! ## A173525.P11212153337677472978

`A001489(n)+A230865(n)+1`
-/

namespace A173525.P11212153337677472978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (A230865 n + 1)

end

end A173525.P11212153337677472978

namespace A173525

/-- `A001489(n)+A230865(n)+1` -/
def P11212153337677472978.Spec : Prop :=
  ∀ n, P11212153337677472978.a n = A173525 (n + 1)

theorem P11212153337677472978.correct : P11212153337677472978.Spec := by
  intro n
  simp only [A173525, Nat.add_sub_cancel, A173525.P11212153337677472978.a, A173525.P12961577271591045237.a, A001489, A001489.P15233530513763566776.a, A053824, A053824.P3010568683746929224.a, A230865, A230865.P13351572211588276155.a, A027868, A027868.P16736331187050993761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173525

/-! ## A173525.P17154539830190921037

`A096289(n)+1-A000120(n)`
-/

namespace A173525.P17154539830190921037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096289 n + (1 - A000120 n)

end

end A173525.P17154539830190921037

namespace A173525

/-- `A096289(n)+1-A000120(n)` -/
def P17154539830190921037.Spec : Prop :=
  ∀ n, P17154539830190921037.a n = A173525 (n + 1)

theorem P17154539830190921037.correct : P17154539830190921037.Spec := by
  intro n
  simp only [A173525, Nat.add_sub_cancel, A173525.P17154539830190921037.a, A173525.P12961577271591045237.a, A000120, A000120.P2816527436160941581.a, A053824, A053824.P3010568683746929224.a, A096289, A096289.P10983530805932168913.a, A005187, A005187.P3874015513960485494.a, A027868, A027868.P16736331187050993761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173525

/-! ## A173525.P3637205105271449884

`1-A001489(A230865(n)-n)`
-/

namespace A173525.P3637205105271449884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001489 (A230865 n - (n : ℤ)).toNat

end

end A173525.P3637205105271449884

namespace A173525

/-- `1-A001489(A230865(n)-n)` -/
def P3637205105271449884.Spec : Prop :=
  ∀ n, P3637205105271449884.a n = A173525 (n + 1)

end A173525

/-! ## A173525.P9704358919372095041

`A028310(1-(n-A230865(n)))`
-/

namespace A173525.P9704358919372095041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (1 - ((n : ℤ) - A230865 n)).toNat

end

end A173525.P9704358919372095041

namespace A173525

/-- `A028310(1-(n-A230865(n)))` -/
def P9704358919372095041.Spec : Prop :=
  ∀ n, P9704358919372095041.a n = A173525 (n + 1)

end A173525

/-! ## A173525.P12200081880377194544

`1-A053824(n)*A057428(n)`
-/

namespace A173525.P12200081880377194544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A053824 n * A057428 n

end

end A173525.P12200081880377194544

namespace A173525

/-- `1-A053824(n)*A057428(n)` -/
def P12200081880377194544.Spec : Prop :=
  ∀ n, P12200081880377194544.a n = A173525 (n + 1)

end A173525

/-! ## A173525.P17314160576889173959

`A052938(2*(A230865(n)-n))`
-/

namespace A173525.P17314160576889173959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * (A230865 n - (n : ℤ))).toNat

end

end A173525.P17314160576889173959

namespace A173525

/-- `A052938(2*(A230865(n)-n))` -/
def P17314160576889173959.Spec : Prop :=
  ∀ n, P17314160576889173959.a n = A173525 (n + 1)

end A173525

/-! ## A173525.P5046564172587037139

`A010874(n)+a(A002266(n))` with `a(0)=1`
-/

namespace A173525.P5046564172587037139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010874 n + a (A002266 n).toNat

end

end A173525.P5046564172587037139

namespace A173525

/-- `A010874(n)+a(A002266(n))` -/
def P5046564172587037139.Spec : Prop :=
  ∀ n, P5046564172587037139.a n = A173525 (n + 1)

end A173525

/-! ## A173525.P8237415031251987738

`A001316(A001316(n))-(1-A053824(n))`
-/

namespace A173525.P8237415031251987738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A001316 n).toNat - (1 - A053824 n)

end

end A173525.P8237415031251987738

namespace A173525

/-- `A001316(A001316(n))-(1-A053824(n))` -/
def P8237415031251987738.Spec : Prop :=
  ∀ n, P8237415031251987738.a n = A173525 (n + 1)

end A173525

/-! ## A173525.P3057180860415034781

`A053824(n)-(A183226(n)-A183228(n))`
-/

namespace A173525.P3057180860415034781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n - (A183226 n - A183228 n)

end

end A173525.P3057180860415034781

namespace A173525

/-- `A053824(n)-(A183226(n)-A183228(n))` -/
def P3057180860415034781.Spec : Prop :=
  ∀ n, P3057180860415034781.a n = A173525 (n + 1)

end A173525

/-! ## A173525.P13087480634126231331

`A053827(A037465(n))+1`
-/

namespace A173525.P13087480634126231331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A037465 n).toNat + 1

end

end A173525.P13087480634126231331

namespace A173525

/-- `A053827(A037465(n))+1` -/
def P13087480634126231331.Spec : Prop :=
  ∀ n, P13087480634126231331.a n = A173525 (n + 1)

end A173525

/-! ## A173525.P13530347013225610202

`A053827(A037465(n)+1)`
-/

namespace A173525.P13530347013225610202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A037465 n + 1).toNat

end

end A173525.P13530347013225610202

namespace A173525

/-- `A053827(A037465(n)+1)` -/
def P13530347013225610202.Spec : Prop :=
  ∀ n, P13530347013225610202.a n = A173525 (n + 1)

end A173525

/-! ## A173525.P13976607886750768027

`A173526(A037465(n)+1)`
-/

namespace A173525.P13976607886750768027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173526 (A037465 n + 1).toNat

end

end A173525.P13976607886750768027

namespace A173525

/-- `A173526(A037465(n)+1)` -/
def P13976607886750768027.Spec : Prop :=
  ∀ n, P13976607886750768027.a n = A173525 (n + 1)

end A173525

/-! ## A173525.P17051381366819800441

`A053830(A037468(n))+1`
-/

namespace A173525.P17051381366819800441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A037468 n).toNat + 1

end

end A173525.P17051381366819800441

namespace A173525

/-- `A053830(A037468(n))+1` -/
def P17051381366819800441.Spec : Prop :=
  ∀ n, P17051381366819800441.a n = A173525 (n + 1)

end A173525

/-! ## A173525.P13952352199904231099

`A053830(A037468(n)+1)`
-/

namespace A173525.P13952352199904231099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A037468 n + 1).toNat

end

end A173525.P13952352199904231099

namespace A173525

/-- `A053830(A037468(n)+1)` -/
def P13952352199904231099.Spec : Prop :=
  ∀ n, P13952352199904231099.a n = A173525 (n + 1)

end A173525

/-!
# A173526: a(n) = 1 + A053827(n-1), where A053827 is the sum-of-digits function in base 6.

The programs for A173526, the canonical program `A173526.P10479073765119350543` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173526 has offset 1).

The definition of A173526 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173526.P10479073765119350543

`1+A053827(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A173526

/-- `1+A053827(n)` -/
def P10479073765119350543.Spec : Prop :=
  ∀ n, P10479073765119350543.a n = A173526 (n + 1)

theorem P10479073765119350543.correct : P10479073765119350543.Spec := by
  intro n
  simp only [A173526, Nat.add_sub_cancel]

end A173526

/-! ## A173526.P8183789170574773593

`∑{digits}[A007092(n)+1, #]`
-/

namespace A173526.P8183789170574773593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A173526.P8183789170574773593

namespace A173526

/-- `∑{digits}[A007092(n)+1, #]` -/
def P8183789170574773593.Spec : Prop :=
  ∀ n, (P8183789170574773593.a n : ℤ) = A173526 (n + 1)

end A173526

/-! ## A173526.P11553430734516976097

`1+a(A244414(n)-1)` with `a(0)=1`
-/

namespace A173526.P11553430734516976097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  1 + a (A244414 n - 1).toNat

end

end A173526.P11553430734516976097

namespace A173526

/-- `1+a(A244414(n)-1)` -/
def P11553430734516976097.Spec : Prop :=
  ∀ n, (P11553430734516976097.a n : ℤ) = A173526 (n + 1)

end A173526

/-! ## A173526.P534952024014732143

`a(A319654(n)-1)+1` with `a(0)=1`
-/

namespace A173526.P534952024014732143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A319654 n - 1).toNat + 1

end

end A173526.P534952024014732143

namespace A173526

/-- `a(A319654(n)-1)+1` -/
def P534952024014732143.Spec : Prop :=
  ∀ n, (P534952024014732143.a n : ℤ) = A173526 (n + 1)

end A173526

/-! ## A173526.P15586156572906675812

`n-5*A054895(n)+1`
-/

namespace A173526.P15586156572906675812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 5 * A054895 n + 1

end

end A173526.P15586156572906675812

namespace A173526

/-- `n-5*A054895(n)+1` -/
def P15586156572906675812.Spec : Prop :=
  ∀ n, P15586156572906675812.a n = A173526 (n + 1)

theorem P15586156572906675812.correct : P15586156572906675812.Spec := by
  intro n
  simp only [A173526, Nat.add_sub_cancel, A173526.P15586156572906675812.a, A173526.P10479073765119350543.a, A053827, A053827.P15972254016312287163.a, A054895, A054895.P15754295407001771698.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173526

/-! ## A173526.P1698015707666326385

`A028242(2*A053827(n))`
-/

namespace A173526.P1698015707666326385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A053827 n).toNat

end

end A173526.P1698015707666326385

namespace A173526

/-- `A028242(2*A053827(n))` -/
def P1698015707666326385.Spec : Prop :=
  ∀ n, P1698015707666326385.a n = A173526 (n + 1)

end A173526

/-! ## A173526.P1212118893451619796

`a(A319806(n)-A319723(n)-1)+1` with `a(0)=1`
-/

namespace A173526.P1212118893451619796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A319806 n - A319723 n - 1).toNat + 1

end

end A173526.P1212118893451619796

namespace A173526

/-- `a(A319806(n)-A319723(n)-1)+1` -/
def P1212118893451619796.Spec : Prop :=
  ∀ n, (P1212118893451619796.a n : ℤ) = A173526 (n + 1)

end A173526

/-! ## A173526.P10527777493031311780

`A001316(A001316(n))-(1-A053827(n))`
-/

namespace A173526.P10527777493031311780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A001316 n).toNat - (1 - A053827 n)

end

end A173526.P10527777493031311780

namespace A173526

/-- `A001316(A001316(n))-(1-A053827(n))` -/
def P10527777493031311780.Spec : Prop :=
  ∀ n, P10527777493031311780.a n = A173526 (n + 1)

end A173526

/-! ## A173526.P5392688323665503553

`1-Δ[A053827(n)-A231672(n)]`
-/

namespace A173526.P5392688323665503553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 n - A231672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A173526.P5392688323665503553

namespace A173526

/-- `1-Δ[A053827(n)-A231672(n)]` -/
def P5392688323665503553.Spec : Prop :=
  ∀ n, P5392688323665503553.a n = A173526 (n + 1)

end A173526

/-! ## A173526.P7631421196118492699

`A053830(A037472(n))+1`
-/

namespace A173526.P7631421196118492699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A037472 n).toNat + 1

end

end A173526.P7631421196118492699

namespace A173526

/-- `A053830(A037472(n))+1` -/
def P7631421196118492699.Spec : Prop :=
  ∀ n, P7631421196118492699.a n = A173526 (n + 1)

end A173526

/-! ## A173526.P4518696311103642917

`A053830(A037472(n)+1)`
-/

namespace A173526.P4518696311103642917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A037472 n + 1).toNat

end

end A173526.P4518696311103642917

namespace A173526

/-- `A053830(A037472(n)+1)` -/
def P4518696311103642917.Spec : Prop :=
  ∀ n, P4518696311103642917.a n = A173526 (n + 1)

end A173526

/-! ## A173526.P7772412411721297048

`A053828(A020657(n+1))+1`
-/

namespace A173526.P7772412411721297048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (A020657 (n + 1)).toNat + 1

end

end A173526.P7772412411721297048

namespace A173526

/-- `A053828(A020657(n+1))+1` -/
def P7772412411721297048.Spec : Prop :=
  ∀ n, P7772412411721297048.a n = A173526 (n + 1)

end A173526

/-! ## A173526.P17405972916347073273

`A053828(A020658(n+1)-1)+1`
-/

namespace A173526.P17405972916347073273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (A020658 (n + 1) - 1).toNat + 1

end

end A173526.P17405972916347073273

namespace A173526

/-- `A053828(A020658(n+1)-1)+1` -/
def P17405972916347073273.Spec : Prop :=
  ∀ n, P17405972916347073273.a n = A173526 (n + 1)

end A173526

/-! ## A173526.P247023574670256893

`A053828(A020658(n+1))`
-/

namespace A173526.P247023574670256893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (A020658 (n + 1)).toNat

end

end A173526.P247023574670256893

namespace A173526

/-- `A053828(A020658(n+1))` -/
def P247023574670256893.Spec : Prop :=
  ∀ n, P247023574670256893.a n = A173526 (n + 1)

end A173526

/-! ## A173526.P2267640173200250289

`A053829(A037471(n))+1`
-/

namespace A173526.P2267640173200250289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A037471 n).toNat + 1

end

end A173526.P2267640173200250289

namespace A173526

/-- `A053829(A037471(n))+1` -/
def P2267640173200250289.Spec : Prop :=
  ∀ n, P2267640173200250289.a n = A173526 (n + 1)

end A173526

/-! ## A173526.P594601865138813747

`A053829(A037471(n)+1)`
-/

namespace A173526.P594601865138813747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A037471 n + 1).toNat

end

end A173526.P594601865138813747

namespace A173526

/-- `A053829(A037471(n)+1)` -/
def P594601865138813747.Spec : Prop :=
  ∀ n, P594601865138813747.a n = A173526 (n + 1)

end A173526

/-! ## A173526.P5413525510615241615

`A326746(A007092(n)+1)`
-/

namespace A173526.P5413525510615241615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (A007092 n + 1).toNat

end

end A173526.P5413525510615241615

namespace A173526

/-- `A326746(A007092(n)+1)` -/
def P5413525510615241615.Spec : Prop :=
  ∀ n, P5413525510615241615.a n = A173526 (n + 1)

end A173526

/-! ## A173526.P14592090772040811731

`A053827(A016921(n))`
-/

namespace A173526.P14592090772040811731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A016921 n).toNat

end

end A173526.P14592090772040811731

namespace A173526

/-- `A053827(A016921(n))` -/
def P14592090772040811731.Spec : Prop :=
  ∀ n, P14592090772040811731.a n = A173526 (n + 1)

end A173526

/-! ## A173526.P4014811272975246114

`A053827(A016777(2*n))`
-/

namespace A173526.P4014811272975246114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A016777 (2 * n)).toNat

end

end A173526.P4014811272975246114

namespace A173526

/-- `A053827(A016777(2*n))` -/
def P4014811272975246114.Spec : Prop :=
  ∀ n, P4014811272975246114.a n = A173526 (n + 1)

end A173526

/-! ## A173526.P14371910476350978555

`A053827(A016777(n)-(1-A016777(n)))`
-/

namespace A173526.P14371910476350978555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A016777 n - (1 - A016777 n)).toNat

end

end A173526.P14371910476350978555

namespace A173526

/-- `A053827(A016777(n)-(1-A016777(n)))` -/
def P14371910476350978555.Spec : Prop :=
  ∀ n, P14371910476350978555.a n = A173526 (n + 1)

end A173526

/-!
# A173527: a(n) = 1 + A053828(n-1), where A053828 is the sum of digits in base 7.

The programs for A173527, the canonical program `A173527.P4501047238505781544` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173527 has offset 1).

The definition of A173527 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053828, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A173527.P4501047238505781544

`1+A053828(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A173527

/-- `1+A053828(n)` -/
def P4501047238505781544.Spec : Prop :=
  ∀ n, P4501047238505781544.a n = A173527 (n + 1)

theorem P4501047238505781544.correct : P4501047238505781544.Spec := by
  intro n
  simp only [A173527, Nat.add_sub_cancel]

end A173527

/-! ## A173527.P7671563384721827308

`a(floor(n/7))+n%7` with `a(0)=1`
-/

namespace A173527.P7671563384721827308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 7⌋.toNat + n % 7

end

end A173527.P7671563384721827308

namespace A173527

/-- `a(floor(n/7))+n%7` -/
def P7671563384721827308.Spec : Prop :=
  ∀ n, (P7671563384721827308.a n : ℤ) = A173527 (n + 1)

end A173527

/-! ## A173527.P4906678163301086225

`∑{digits}[A007093(n)+1, #]`
-/

namespace A173527.P4906678163301086225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A173527.P4906678163301086225

namespace A173527

/-- `∑{digits}[A007093(n)+1, #]` -/
def P4906678163301086225.Spec : Prop :=
  ∀ n, (P4906678163301086225.a n : ℤ) = A173527 (n + 1)

end A173527

/-! ## A173527.P15329461504484523846

`a(A242603(n)-1)+1` with `a(0)=1`
-/

namespace A173527.P15329461504484523846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A242603 n - 1).toNat + 1

end

end A173527.P15329461504484523846

namespace A173527

/-- `a(A242603(n)-1)+1` -/
def P15329461504484523846.Spec : Prop :=
  ∀ n, (P15329461504484523846.a n : ℤ) = A173527 (n + 1)

end A173527

/-! ## A173527.P15109408353014470805

`a(A319655(n)-1)+1` with `a(0)=1`
-/

namespace A173527.P15109408353014470805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A319655 n - 1).toNat + 1

end

end A173527.P15109408353014470805

namespace A173527

/-- `a(A319655(n)-1)+1` -/
def P15109408353014470805.Spec : Prop :=
  ∀ n, (P15109408353014470805.a n : ℤ) = A173527 (n + 1)

end A173527

/-! ## A173527.P2503914518921704003

`1-6*A054896(n)+n`
-/

namespace A173527.P2503914518921704003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 6 * A054896 n + (n : ℤ)

end

end A173527.P2503914518921704003

namespace A173527

/-- `1-6*A054896(n)+n` -/
def P2503914518921704003.Spec : Prop :=
  ∀ n, P2503914518921704003.a n = A173527 (n + 1)

end A173527

/-! ## A173527.P258857607808115038

`A175213(A053828(n)²)`
-/

namespace A173527.P258857607808115038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175213 (A053828 n ^ 2).toNat

end

end A173527.P258857607808115038

namespace A173527

/-- `A175213(A053828(n)²)` -/
def P258857607808115038.Spec : Prop :=
  ∀ n, P258857607808115038.a n = A173527 (n + 1)

end A173527

/-! ## A173527.P13973414768060917189

`A260056(A053828(n)²)`
-/

namespace A173527.P13973414768060917189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260056 (A053828 n ^ 2).toNat

end

end A173527.P13973414768060917189

namespace A173527

/-- `A260056(A053828(n)²)` -/
def P13973414768060917189.Spec : Prop :=
  ∀ n, P13973414768060917189.a n = A173527 (n + 1)

end A173527

/-! ## A173527.P1020044217160718309

`A264766(A053828(n)²)`
-/

namespace A173527.P1020044217160718309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264766 (A053828 n ^ 2).toNat

end

end A173527.P1020044217160718309

namespace A173527

/-- `A264766(A053828(n)²)` -/
def P1020044217160718309.Spec : Prop :=
  ∀ n, P1020044217160718309.a n = A173527 (n + 1)

end A173527

/-! ## A173527.P15704849247424803884

`A053830(A037475(n)+1)`
-/

namespace A173527.P15704849247424803884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A037475 n + 1).toNat

end

end A173527.P15704849247424803884

namespace A173527

/-- `A053830(A037475(n)+1)` -/
def P15704849247424803884.Spec : Prop :=
  ∀ n, P15704849247424803884.a n = A173527 (n + 1)

end A173527

/-! ## A173527.P16395760461886188395

`A008619(2*A053828(n))`
-/

namespace A173527.P16395760461886188395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A053828 n).toNat

end

end A173527.P16395760461886188395

namespace A173527

/-- `A008619(2*A053828(n))` -/
def P16395760461886188395.Spec : Prop :=
  ∀ n, P16395760461886188395.a n = A173527 (n + 1)

end A173527

/-! ## A173527.P1676056246546225283

`A053829(A037474(n))+1`
-/

namespace A173527.P1676056246546225283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A037474 n).toNat + 1

end

end A173527.P1676056246546225283

namespace A173527

/-- `A053829(A037474(n))+1` -/
def P1676056246546225283.Spec : Prop :=
  ∀ n, P1676056246546225283.a n = A173527 (n + 1)

end A173527

/-! ## A173527.P14680821273532717396

`A053829(A037474(n)+1)`
-/

namespace A173527.P14680821273532717396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A037474 n + 1).toNat

end

end A173527.P14680821273532717396

namespace A173527

/-- `A053829(A037474(n)+1)` -/
def P14680821273532717396.Spec : Prop :=
  ∀ n, P14680821273532717396.a n = A173527 (n + 1)

end A173527

/-! ## A173527.P3114594934107563023

`∑{digits}[lt[A054055(n), 7], #]+1`
-/

namespace A173527.P3114594934107563023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + 1

end

end A173527.P3114594934107563023

namespace A173527

/-- `∑{digits}[lt[A054055(n), 7], #]+1` -/
def P3114594934107563023.Spec : Prop :=
  ∀ n, (P3114594934107563023.a n : ℤ) = A173527 (n + 1)

end A173527

/-! ## A173527.P10130463038145518102

`A007953(A007093(n))+1`
-/

namespace A173527.P10130463038145518102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007093 n).toNat + 1

end

end A173527.P10130463038145518102

namespace A173527

/-- `A007953(A007093(n))+1` -/
def P10130463038145518102.Spec : Prop :=
  ∀ n, P10130463038145518102.a n = A173527 (n + 1)

end A173527

/-! ## A173527.P1167374621522351470

`∑{digits}[record[n-A064770(n)]+1, #]`
-/

namespace A173527.P1167374621522351470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A064770 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A173527.P1167374621522351470

namespace A173527

/-- `∑{digits}[record[n-A064770(n)]+1, #]` -/
def P1167374621522351470.Spec : Prop :=
  ∀ n, (P1167374621522351470.a n : ℤ) = A173527 (n + 1)

end A173527

/-! ## A173527.P10572215493945568004

`A007953(A007093(n)+1)`
-/

namespace A173527.P10572215493945568004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007093 n + 1).toNat

end

end A173527.P10572215493945568004

namespace A173527

/-- `A007953(A007093(n)+1)` -/
def P10572215493945568004.Spec : Prop :=
  ∀ n, P10572215493945568004.a n = A173527 (n + 1)

end A173527

/-! ## A173527.P2250305093408873665

`A053828(8*n-(n-1))`
-/

namespace A173527.P2250305093408873665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 ((8 * n : ℤ) - ((n : ℤ) - 1)).toNat

end

end A173527.P2250305093408873665

namespace A173527

/-- `A053828(8*n-(n-1))` -/
def P2250305093408873665.Spec : Prop :=
  ∀ n, P2250305093408873665.a n = A173527 (n + 1)

end A173527

/-! ## A173527.P358753441152225041

`A000005(2^A053828(n))`
-/

namespace A173527.P358753441152225041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A053828 n : ℤ))).toNat

end

end A173527.P358753441152225041

namespace A173527

/-- `A000005(2^A053828(n))` -/
def P358753441152225041.Spec : Prop :=
  ∀ n, P358753441152225041.a n = A173527 (n + 1)

end A173527

/-! ## A173527.P6108845675019663617

`A001222(2*2^A053828(n))`
-/

namespace A173527.P6108845675019663617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (2 * (2 : ℚ) ^ (A053828 n : ℤ))).toNat

end

end A173527.P6108845675019663617

namespace A173527

/-- `A001222(2*2^A053828(n))` -/
def P6108845675019663617.Spec : Prop :=
  ∀ n, P6108845675019663617.a n = A173527 (n + 1)

end A173527

/-!
# A173528: a(n) = 1 + sum of digits of n-1 written in base 8.

The programs for A173528, the canonical program `A173528.P11178338902106819806` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173528 has offset 1).

The definition of A173528 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053829, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A173528.P11178338902106819806

`A053829(n)+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A173528

/-- `A053829(n)+1` -/
def P11178338902106819806.Spec : Prop :=
  ∀ n, P11178338902106819806.a n = A173528 (n + 1)

theorem P11178338902106819806.correct : P11178338902106819806.Spec := by
  intro n
  simp only [A173528, Nat.add_sub_cancel]

end A173528

/-! ## A173528.P13918051081515901194

`∑{digits}[A007094(n)+1, #]`
-/

namespace A173528.P13918051081515901194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A173528.P13918051081515901194

namespace A173528

/-- `∑{digits}[A007094(n)+1, #]` -/
def P13918051081515901194.Spec : Prop :=
  ∀ n, (P13918051081515901194.a n : ℤ) = A173528 (n + 1)

end A173528

/-! ## A173528.P15282156981371122664

`n+1-7*A054897(n)`
-/

namespace A173528.P15282156981371122664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 7 * A054897 n

end

end A173528.P15282156981371122664

namespace A173528

/-- `n+1-7*A054897(n)` -/
def P15282156981371122664.Spec : Prop :=
  ∀ n, P15282156981371122664.a n = A173528 (n + 1)

theorem P15282156981371122664.correct : P15282156981371122664.Spec := by
  intro n
  simp only [A173528, Nat.add_sub_cancel, A173528.P15282156981371122664.a, A173528.P11178338902106819806.a, A053829, A053829.P14344387204019492916.a, A054897, A054897.P7937699676947939957.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173528

/-! ## A173528.P1849039228790736074

`A175213(A053829(n)²)`
-/

namespace A173528.P1849039228790736074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175213 (A053829 n ^ 2).toNat

end

end A173528.P1849039228790736074

namespace A173528

/-- `A175213(A053829(n)²)` -/
def P1849039228790736074.Spec : Prop :=
  ∀ n, P1849039228790736074.a n = A173528 (n + 1)

end A173528

/-! ## A173528.P4609953312538053299

`A053830(A037477(n)+1)`
-/

namespace A173528.P4609953312538053299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A037477 n + 1).toNat

end

end A173528.P4609953312538053299

namespace A173528

/-- `A053830(A037477(n)+1)` -/
def P4609953312538053299.Spec : Prop :=
  ∀ n, P4609953312538053299.a n = A173528 (n + 1)

end A173528

/-! ## A173528.P5557807656955038697

`A007953(A007094(n))+1`
-/

namespace A173528.P5557807656955038697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007094 n).toNat + 1

end

end A173528.P5557807656955038697

namespace A173528

/-- `A007953(A007094(n))+1` -/
def P5557807656955038697.Spec : Prop :=
  ∀ n, P5557807656955038697.a n = A173528 (n + 1)

end A173528

/-! ## A173528.P12745468567323590589

`A007953(A007094(n)+1)`
-/

namespace A173528.P12745468567323590589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007094 n + 1).toNat

end

end A173528.P12745468567323590589

namespace A173528

/-- `A007953(A007094(n)+1)` -/
def P12745468567323590589.Spec : Prop :=
  ∀ n, P12745468567323590589.a n = A173528 (n + 1)

end A173528

/-! ## A173528.P6706640199502514617

`A053829(or(1, 8*n))`
-/

namespace A173528.P6706640199502514617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (Nat.lor 1 (8 * n))

end

end A173528.P6706640199502514617

namespace A173528

/-- `A053829(or(1, 8*n))` -/
def P6706640199502514617.Spec : Prop :=
  ∀ n, P6706640199502514617.a n = A173528 (n + 1)

end A173528

/-! ## A173528.P13231881659660896447

`A053829(xor(1, 8*n))`
-/

namespace A173528.P13231881659660896447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (Nat.xor 1 (8 * n))

end

end A173528.P13231881659660896447

namespace A173528

/-- `A053829(xor(1, 8*n))` -/
def P13231881659660896447.Spec : Prop :=
  ∀ n, P13231881659660896447.a n = A173528 (n + 1)

end A173528

/-! ## A173528.P18282507106289884437

`A053829(9*n-(n-1))`
-/

namespace A173528.P18282507106289884437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 ((9 * n : ℤ) - ((n : ℤ) - 1)).toNat

end

end A173528.P18282507106289884437

namespace A173528

/-- `A053829(9*n-(n-1))` -/
def P18282507106289884437.Spec : Prop :=
  ∀ n, P18282507106289884437.a n = A173528 (n + 1)

end A173528

/-! ## A173528.P12317638348518362547

`A000005(2^A053829(n))`
-/

namespace A173528.P12317638348518362547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A053829 n : ℤ))).toNat

end

end A173528.P12317638348518362547

namespace A173528

/-- `A000005(2^A053829(n))` -/
def P12317638348518362547.Spec : Prop :=
  ∀ n, P12317638348518362547.a n = A173528 (n + 1)

end A173528

/-!
# A173529: a(n) = 1 + A053830(n-1), where A053830 is the sum of the digits of its argument in base 9.

The programs for A173529, the canonical program `A173529.P74338267676865748` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173529 has offset 1).

The definition of A173529 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053830, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A173529.P74338267676865748

`1+A053830(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A173529

/-- `1+A053830(n)` -/
def P74338267676865748.Spec : Prop :=
  ∀ n, P74338267676865748.a n = A173529 (n + 1)

theorem P74338267676865748.correct : P74338267676865748.Spec := by
  intro n
  simp only [A173529, Nat.add_sub_cancel]

end A173529

/-! ## A173529.P1419592640259405351

`a(floor(n/9))+n%9` with `a(0)=1`
-/

namespace A173529.P1419592640259405351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 9⌋.toNat + n % 9

end

end A173529.P1419592640259405351

namespace A173529

/-- `a(floor(n/9))+n%9` -/
def P1419592640259405351.Spec : Prop :=
  ∀ n, (P1419592640259405351.a n : ℤ) = A173529 (n + 1)

end A173529

/-! ## A173529.P6959628230602230934

`n-8*∑[val(C(2, n)+n, 9)]+1`
-/

namespace A173529.P6959628230602230934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.choose 2 n + n) 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((8 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) + 1

end

end A173529.P6959628230602230934

namespace A173529

/-- `n-8*∑[val(C(2, n)+n, 9)]+1` -/
def P6959628230602230934.Spec : Prop :=
  ∀ n, P6959628230602230934.a n = A173529 (n + 1)

end A173529

/-! ## A173529.P16365099983693916385

`∑{digits}[A007095(n)+1, #]`
-/

namespace A173529.P16365099983693916385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A173529.P16365099983693916385

namespace A173529

/-- `∑{digits}[A007095(n)+1, #]` -/
def P16365099983693916385.Spec : Prop :=
  ∀ n, (P16365099983693916385.a n : ℤ) = A173529 (n + 1)

end A173529

/-! ## A173529.P13597166218926216140

`n+1-8*A054898(n)`
-/

namespace A173529.P13597166218926216140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 8 * A054898 n

end

end A173529.P13597166218926216140

namespace A173529

/-- `n+1-8*A054898(n)` -/
def P13597166218926216140.Spec : Prop :=
  ∀ n, P13597166218926216140.a n = A173529 (n + 1)

end A173529

/-! ## A173529.P16073225183405342923

`∑{digits}[comp[A011539(n+1)]+1, #]`
-/

namespace A173529.P16073225183405342923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A173529.P16073225183405342923

namespace A173529

/-- `∑{digits}[comp[A011539(n+1)]+1, #]` -/
def P16073225183405342923.Spec : Prop :=
  ∀ n, (P16073225183405342923.a n : ℤ) = A173529 (n + 1)

end A173529

/-! ## A173529.P9500706959504678795

`A008619(2*A053830(n))`
-/

namespace A173529.P9500706959504678795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A053830 n).toNat

end

end A173529.P9500706959504678795

namespace A173529

/-- `A008619(2*A053830(n))` -/
def P9500706959504678795.Spec : Prop :=
  ∀ n, P9500706959504678795.a n = A173529 (n + 1)

end A173529

/-! ## A173529.P9134775465277730639

`A028242(2*A053830(n))`
-/

namespace A173529.P9134775465277730639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A053830 n).toNat

end

end A173529.P9134775465277730639

namespace A173529

/-- `A028242(2*A053830(n))` -/
def P9134775465277730639.Spec : Prop :=
  ∀ n, P9134775465277730639.a n = A173529 (n + 1)

end A173529

/-! ## A173529.P14920427360485953937

`A052938(2*A053830(n))`
-/

namespace A173529.P14920427360485953937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A053830 n).toNat

end

end A173529.P14920427360485953937

namespace A173529

/-- `A052938(2*A053830(n))` -/
def P14920427360485953937.Spec : Prop :=
  ∀ n, P14920427360485953937.a n = A173529 (n + 1)

end A173529

/-! ## A173529.P7899150276795725835

`A008611(3*A053830(n))`
-/

namespace A173529.P7899150276795725835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A053830 n).toNat

end

end A173529.P7899150276795725835

namespace A173529

/-- `A008611(3*A053830(n))` -/
def P7899150276795725835.Spec : Prop :=
  ∀ n, P7899150276795725835.a n = A173529 (n + 1)

end A173529

/-! ## A173529.P11527749283595433954

`A008612(6*A053830(n))`
-/

namespace A173529.P11527749283595433954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (6 * A053830 n).toNat

end

end A173529.P11527749283595433954

namespace A173529

/-- `A008612(6*A053830(n))` -/
def P11527749283595433954.Spec : Prop :=
  ∀ n, P11527749283595433954.a n = A173529 (n + 1)

end A173529

/-! ## A173529.P3833045926969660238

`A007953(A007095(n))+1`
-/

namespace A173529.P3833045926969660238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007095 n).toNat + 1

end

end A173529.P3833045926969660238

namespace A173529

/-- `A007953(A007095(n))+1` -/
def P3833045926969660238.Spec : Prop :=
  ∀ n, P3833045926969660238.a n = A173529 (n + 1)

end A173529

/-! ## A173529.P16280342968406170039

`∑{digits}[record[A004184(n)+1], #]`
-/

namespace A173529.P16280342968406170039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A173529.P16280342968406170039

namespace A173529

/-- `∑{digits}[record[A004184(n)+1], #]` -/
def P16280342968406170039.Spec : Prop :=
  ∀ n, (P16280342968406170039.a n : ℤ) = A173529 (n + 1)

end A173529

/-! ## A173529.P11423076758083241519

`∑{digits}[record[A235049(n)+1], #]`
-/

namespace A173529.P11423076758083241519
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A173529.P11423076758083241519

namespace A173529

/-- `∑{digits}[record[A235049(n)+1], #]` -/
def P11423076758083241519.Spec : Prop :=
  ∀ n, (P11423076758083241519.a n : ℤ) = A173529 (n + 1)

end A173529

/-! ## A173529.P9360691575404069497

`A053830(10*n-(n-1))`
-/

namespace A173529.P9360691575404069497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 ((10 * n : ℤ) - ((n : ℤ) - 1)).toNat

end

end A173529.P9360691575404069497

namespace A173529

/-- `A053830(10*n-(n-1))` -/
def P9360691575404069497.Spec : Prop :=
  ∀ n, P9360691575404069497.a n = A173529 (n + 1)

end A173529

/-! ## A173529.P18163438415708290621

`A007953(A007095(n)+1)`
-/

namespace A173529.P18163438415708290621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007095 n + 1).toNat

end

end A173529.P18163438415708290621

namespace A173529

/-- `A007953(A007095(n)+1)` -/
def P18163438415708290621.Spec : Prop :=
  ∀ n, P18163438415708290621.a n = A173529 (n + 1)

end A173529

/-! ## A173529.P5842234021303198271

`A007953(record[A004728(n)+1])`
-/

namespace A173529.P5842234021303198271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004728 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A173529.P5842234021303198271

namespace A173529

/-- `A007953(record[A004728(n)+1])` -/
def P5842234021303198271.Spec : Prop :=
  ∀ n, P5842234021303198271.a n = A173529 (n + 1)

end A173529

/-! ## A173529.P11368294346670520297

`A007953(record[A235049(n)+1])`
-/

namespace A173529.P11368294346670520297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A173529.P11368294346670520297

namespace A173529

/-- `A007953(record[A235049(n)+1])` -/
def P11368294346670520297.Spec : Prop :=
  ∀ n, P11368294346670520297.a n = A173529 (n + 1)

end A173529

/-! ## A173529.P17140014802022581692

`A175213(A053830(n)²)`
-/

namespace A173529.P17140014802022581692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175213 (A053830 n ^ 2).toNat

end

end A173529.P17140014802022581692

namespace A173529

/-- `A175213(A053830(n)²)` -/
def P17140014802022581692.Spec : Prop :=
  ∀ n, P17140014802022581692.a n = A173529 (n + 1)

end A173529

/-! ## A173529.P8732703230897214657

`A004155(5*A007095(n))`
-/

namespace A173529.P8732703230897214657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 (5 * A007095 n).toNat

end

end A173529.P8732703230897214657

namespace A173529

/-- `A004155(5*A007095(n))` -/
def P8732703230897214657.Spec : Prop :=
  ∀ n, P8732703230897214657.a n = A173529 (n + 1)

end A173529

/-!
# A173530: Number of ON cells after n generations of three-dimensional cellular automaton related to Sierpinski's triangle and the toothpick sequences (See Comments for definition).

The programs for A173530, the canonical program `A173530.P16325262512397487259` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173530 has offset 0).

The definition of A173530 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173530.P13062000120282294191

`∑[4/and(n, 1-n)*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A173530.P13062000120282294191
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  4 / (Int.land (n : ℤ) (1 - (n : ℤ)) : ℚ) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173530.P13062000120282294191

namespace A173530

/-- `∑[4/and(n, 1-n)*a(n-1)]` -/
def P13062000120282294191.Spec : Prop :=
  ∀ n, P13062000120282294191.a n = (A173530 n : ℚ)

end A173530

/-! ## A173530.P893046519572285273

`∑[2*a(n-1)/gcd(floor(n/2), a(n-1))]` with `a(0)=0, a(1)=1`
-/

namespace A173530.P893046519572285273
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  2 * (f1 (n - 1) / (Int.gcd ⌊(n : ℚ) / 2⌋ (SequenceMachineLib.roundAway (f1 (n - 1))) : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173530.P893046519572285273

namespace A173530

/-- `∑[2*a(n-1)/gcd(floor(n/2), a(n-1))]` -/
def P893046519572285273.Spec : Prop :=
  ∀ n, P893046519572285273.a n = (A173530 n : ℚ)

end A173530

/-! ## A173530.P16325262512397487259

`∑[A173531(n)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A173530

/-- `∑[A173531(n)]` -/
def P16325262512397487259.Spec : Prop :=
  ∀ n, P16325262512397487259.a n = A173530 n

theorem P16325262512397487259.correct : P16325262512397487259.Spec := by
  intro n
  simp only [A173530]

end A173530

/-! ## A173530.P4617553529244223641

`A173531(A028310(n))+a(n-1)` with `a(0)=0`
-/

namespace A173530.P4617553529244223641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A173531 (A028310 n).toNat + a (n - 1)

end

end A173530.P4617553529244223641

namespace A173530

/-- `A173531(A028310(n))+a(n-1)` -/
def P4617553529244223641.Spec : Prop :=
  ∀ n, P4617553529244223641.a n = A173530 n

end A173530

/-! ## A173530.P15134238707134774511

`∑[A000010(A038573(n)+1)²*and(n, -n)]`
-/

namespace A173530.P15134238707134774511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A038573 n + 1).toNat ^ 2 * Int.land (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173530.P15134238707134774511

namespace A173530

/-- `∑[A000010(A038573(n)+1)²*and(n, -n)]` -/
def P15134238707134774511.Spec : Prop :=
  ∀ n, P15134238707134774511.a n = A173530 n

end A173530

/-! ## A173530.P11265925138258154314

`A139250(n)+∑[A173532(n)]`
-/

namespace A173530.P11265925138258154314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173530.P11265925138258154314

namespace A173530

/-- `A139250(n)+∑[A173532(n)]` -/
def P11265925138258154314.Spec : Prop :=
  ∀ n, P11265925138258154314.a n = A173530 n

end A173530

/-! ## A173530.P6278170650213770017

`∑[A173532(n)+A139251(n)]`
-/

namespace A173530.P6278170650213770017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173532 n + A139251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173530.P6278170650213770017

namespace A173530

/-- `∑[A173532(n)+A139251(n)]` -/
def P6278170650213770017.Spec : Prop :=
  ∀ n, P6278170650213770017.a n = A173530 n

end A173530

/-! ## A173530.P4699704009329190099

`∑[A173532(n)]+A173522(n)+A173454(n)`
-/

namespace A173530.P4699704009329190099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A173522 n + A173454 n)

end

end A173530.P4699704009329190099

namespace A173530

/-- `∑[A173532(n)]+A173522(n)+A173454(n)` -/
def P4699704009329190099.Spec : Prop :=
  ∀ n, P4699704009329190099.a n = A173530 n

end A173530

/-! ## A173530.P6388032358934591632

`∑[A173532(n)]+A266530(2*(n+1))-A160552(n)`
-/

namespace A173530.P6388032358934591632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A266530 (2 * (n + 1)) - A160552 n)

end

end A173530.P6388032358934591632

namespace A173530

/-- `∑[A173532(n)]+A266530(2*(n+1))-A160552(n)` -/
def P6388032358934591632.Spec : Prop :=
  ∀ n, P6388032358934591632.a n = A173530 n

end A173530

/-! ## A173530.P2503958399623046773

`∑[A177241(n)/gcd(64, n)]%((n+1)^(n+1))`
-/

namespace A173530.P2503958399623046773
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177241 n : ℚ) / (Nat.gcd 64 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)) ((n + 1) ^ (n + 1) : ℤ)

end

end A173530.P2503958399623046773

namespace A173530

/-- `∑[A177241(n)/gcd(64, n)]%((n+1)^(n+1))` -/
def P2503958399623046773.Spec : Prop :=
  ∀ n, P2503958399623046773.a n = A173530 n

end A173530

/-!
# A173531: a(0)=0: For n>0, a(n) = A060632(n)*A060632(n-1).

The programs for A173531, the canonical program `A173531.P13371912172200892370` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173531 has offset 0).

The definition of A173531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173531.P10576391720626781572

`4/and(n, 1-n)*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A173531.P10576391720626781572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 / (Int.land (n : ℤ) (1 - (n : ℤ)) : ℚ) * a (n - 1)

end

end A173531.P10576391720626781572

namespace A173531

/-- `4/and(n, 1-n)*a(n-1)` -/
def P10576391720626781572.Spec : Prop :=
  ∀ n, P10576391720626781572.a n = (A173531 n : ℚ)

end A173531

/-! ## A173531.P9777398416355145568

`2*a(n-1)/gcd(C(n, 2), a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A173531.P9777398416355145568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * (a (n - 1) / (Int.gcd (Nat.choose n 2 : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ))

end

end A173531.P9777398416355145568

namespace A173531

/-- `2*a(n-1)/gcd(C(n, 2), a(n-1))` -/
def P9777398416355145568.Spec : Prop :=
  ∀ n, P9777398416355145568.a n = (A173531 n : ℚ)

end A173531

/-! ## A173531.P13371912172200892370

`and(n, -n)*A212988(A038573(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A173531

/-- `and(n, -n)*A212988(A038573(n))` -/
def P13371912172200892370.Spec : Prop :=
  ∀ n, P13371912172200892370.a n = A173531 n

theorem P13371912172200892370.correct : P13371912172200892370.Spec := by
  intro n
  simp only [A173531]

end A173531

/-! ## A173531.P11954467600972370952

`A000010(A038573(n)+1)²*and(n, -n)`
-/

namespace A173531.P11954467600972370952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A038573 n + 1).toNat ^ 2 * Int.land (n : ℤ) (-(n : ℤ))

end

end A173531.P11954467600972370952

namespace A173531

/-- `A000010(A038573(n)+1)²*and(n, -n)` -/
def P11954467600972370952.Spec : Prop :=
  ∀ n, P11954467600972370952.a n = A173531 n

end A173531

/-! ## A173531.P16432094256101614936

`A131577(∑[A088705(A038572(n))])`
-/

namespace A173531.P16432094256101614936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (A038572 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A173531.P16432094256101614936

namespace A173531

/-- `A131577(∑[A088705(A038572(n))])` -/
def P16432094256101614936.Spec : Prop :=
  ∀ n, P16432094256101614936.a n = A173531 n

end A173531

/-! ## A173531.P7138041729431286509

`sqrt(A177241(n))*A000010(A001316(n))`
-/

namespace A173531.P7138041729431286509
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A177241 n : ℝ) * (A000010 (A001316 n).toNat : ℝ)

end

end A173531.P7138041729431286509

namespace A173531

/-- `sqrt(A177241(n))*A000010(A001316(n))` -/
def P7138041729431286509.Spec : Prop :=
  ∀ n, P7138041729431286509.a n = (A173531 n : ℝ)

end A173531

/-! ## A173531.P12038689967775339000

`A213673(A233775(2*n))`
-/

namespace A173531.P12038689967775339000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213673 (A233775 (2 * n)).toNat

end

end A173531.P12038689967775339000

namespace A173531

/-- `A213673(A233775(2*n))` -/
def P12038689967775339000.Spec : Prop :=
  ∀ n, P12038689967775339000.a n = A173531 n

end A173531

/-! ## A173531.P4207643407494987639

`A173532(n)+A139251(n)`
-/

namespace A173531.P4207643407494987639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173532 n + A139251 n

end

end A173531.P4207643407494987639

namespace A173531

/-- `A173532(n)+A139251(n)` -/
def P4207643407494987639.Spec : Prop :=
  ∀ n, P4207643407494987639.a n = A173531 n

end A173531

/-! ## A173531.P7389874176339177537

`A000010(A060632(n))*A220495(n)`
-/

namespace A173531.P7389874176339177537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A060632 n).toNat * A220495 n

end

end A173531.P7389874176339177537

namespace A173531

/-- `A000010(A060632(n))*A220495(n)` -/
def P7389874176339177537.Spec : Prop :=
  ∀ n, P7389874176339177537.a n = A173531 n

end A173531

/-!
# A173532: a(n) = A173531(n) - A139251(n).

The programs for A173532, there is no canonical definition to state claims against.
-/

/-! ## A173532.P17414116135087417552

`A173531(n)-A139251(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173532.P17414116135087417552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173531 n - A139251 n

end

end A173532.P17414116135087417552

/-! ## A173532.P12731322057365936613

`A173531(n)-Δ[floor(A187220(n)/2)]`
-/

namespace A173532.P12731322057365936613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A187220 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173531 n - (f1 (n + 1) - f1 n)

end

end A173532.P12731322057365936613

/-! ## A173532.P1236176149110480207

`A173531(n)-floor(A187221(n+1)/2)`
-/

namespace A173532.P1236176149110480207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173531 n - ⌊(A187221 (n + 1) : ℚ) / 2⌋

end

end A173532.P1236176149110480207

/-! ## A173532.P3103684983156227604

`A213673(A233775(2*n))-A139251(n)`
-/

namespace A173532.P3103684983156227604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213673 (A233775 (2 * n)).toNat - A139251 n

end

end A173532.P3103684983156227604

/-! ## A173532.P10660350565620725792

`A173531(n)-Δ[(A187220(n)-A057427(n))/2]`
-/

namespace A173532.P10660350565620725792
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187220 n - A057427 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173531 n : ℚ) - (f1 (n + 1) - f1 n)

end

end A173532.P10660350565620725792

/-! ## A173532.P353073437180532858

`and(n, -n)*A212988(A038573(n))-A139251(n)`
-/

namespace A173532.P353073437180532858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) * A212988 (A038573 n).toNat - A139251 n

end

end A173532.P353073437180532858

/-! ## A173532.P8040654078208135869

`A000010(A038573(n)+1)²*and(n, -n)-A139251(n)`
-/

namespace A173532.P8040654078208135869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A038573 n + 1).toNat ^ 2 * Int.land (n : ℤ) (-(n : ℤ)) - A139251 n

end

end A173532.P8040654078208135869

/-! ## A173532.P85484140187600640

`A213673(A233775(2*n))-A004526(A187221(n+1))`
-/

namespace A173532.P85484140187600640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213673 (A233775 (2 * n)).toNat - A004526 (A187221 (n + 1)).toNat

end

end A173532.P85484140187600640

/-! ## A173532.P1812035081730491451

`A000010(A060632(n))*A220495(n)-A139251(n)`
-/

namespace A173532.P1812035081730491451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A060632 n).toNat * A220495 n - A139251 n

end

end A173532.P1812035081730491451

/-!
# A173533: Numbers with 53 divisors.

The programs for A173533, there is no canonical definition to state claims against.
-/

/-! ## A173533.P12479667748948903656

`p?[round(8*n/7)]²^26`
-/

namespace A173533.P12479667748948903656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2) ^ 26

end

end A173533.P12479667748948903656

/-! ## A173533.P9338163850913507231

`p?[gcd(1-n, floor(n/2))]^52`
-/

namespace A173533.P9338163850913507231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 52

end

end A173533.P9338163850913507231

/-! ## A173533.P9768170829001556653

`A000040(n+1)^52`
-/

namespace A173533.P9768170829001556653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 52

end

end A173533.P9768170829001556653

/-!
# A173534: a(n)=a(n-1)+2*a(n-2)-[a(n-1)/2]-[a(n-4)/2]-[a(n-5)/2].

The programs for A173534, the canonical program `A173534.P9397821273373700839` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173534 has offset 0).

The definition of A173534 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 513 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173534.P9397821273373700839

`a(n-1)+2*a(n-2)-floor(a(n-1)/2)-floor(a(n-4)/2)-floor(a(n-5)/2)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4, a(4)=8`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173534

/-- `a(n-1)+2*a(n-2)-floor(a(n-1)/2)-floor(a(n-4)/2)-floor(a(n-5)/2)` -/
def P9397821273373700839.Spec : Prop :=
  ∀ n, P9397821273373700839.a n = A173534 n

theorem P9397821273373700839.correct : P9397821273373700839.Spec := by
  intro n
  simp only [A173534]

end A173534

/-! ## A173534.P9165901540769848065

`A185283(A238531(n)*A329702(n))`
-/

namespace A173534.P9165901540769848065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A238531 n * A329702 n).toNat

end

end A173534.P9165901540769848065

namespace A173534

/-- `A185283(A238531(n)*A329702(n))` -/
def P9165901540769848065.Spec : Prop :=
  ∀ n, P9165901540769848065.a n = A173534 n

end A173534

/-! ## A173534.P1314080596786583752

`A094192(A001333(n))-A045778(n+3)`
-/

namespace A173534.P1314080596786583752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094192 (A001333 n).toNat - A045778 (n + 3)

end

end A173534.P1314080596786583752

namespace A173534

/-- `A094192(A001333(n))-A045778(n+3)` -/
def P1314080596786583752.Spec : Prop :=
  ∀ n, P1314080596786583752.a n = A173534 n

end A173534

/-! ## A173534.P4528231096402247010

`A319642(n)+A000701(n)`
-/

namespace A173534.P4528231096402247010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319642 n + A000701 n

end

end A173534.P4528231096402247010

namespace A173534

/-- `A319642(n)+A000701(n)` -/
def P4528231096402247010.Spec : Prop :=
  ∀ n, P4528231096402247010.a n = A173534 n

end A173534

/-! ## A173534.P13347812696539168206

`A321728(n)+A319642(n)`
-/

namespace A173534.P13347812696539168206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321728 n + A319642 n

end

end A173534.P13347812696539168206

namespace A173534

/-- `A321728(n)+A319642(n)` -/
def P13347812696539168206.Spec : Prop :=
  ∀ n, P13347812696539168206.a n = A173534 n

end A173534

/-!
# A173535: a(n) = (1/11) * (5*12^n + 6).

The programs for A173535, the canonical program `A173535.P7135530818864063878` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173535 has offset 0).

The definition of A173535 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1/11*(5*12^n+6)` (program `A173535.P9771135971979464674`, by `A173535.P9771135971979464674.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173535.P12048131098938375932

`ogf((1-7x)/(1-13x+12x^2))`
-/

namespace A173535.P12048131098938375932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -7] [1, -13, 12] n

end

end A173535.P12048131098938375932

namespace A173535

/-- `ogf((1-7x)/(1-13x+12x^2))` -/
def P12048131098938375932.Spec : Prop :=
  ∀ n, P12048131098938375932.a n = A173535 n

end A173535

/-! ## A173535.P7135530818864063878

`12*a(n-1)-6` with `a(0)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173535

/-- `12*a(n-1)-6` -/
def P7135530818864063878.Spec : Prop :=
  ∀ n, P7135530818864063878.a n = A173535 n

theorem P7135530818864063878.correct : P7135530818864063878.Spec := by
  intro n
  simp only [A173535]

end A173535

/-! ## A173535.P9771135971979464674

`1/11*(5*12^n+6)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173535.P9771135971979464674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 11 * (5 * 12 ^ n + 6 : ℚ)

end

end A173535.P9771135971979464674

namespace A173535

/-- `1/11*(5*12^n+6)` -/
def P9771135971979464674.Spec : Prop :=
  ∀ n, P9771135971979464674.a n = (A173535 n : ℚ)

theorem P9771135971979464674.correct : P9771135971979464674.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A173535, Nat.add_sub_cancel, A173535.P9771135971979464674.a, A173535.P7135530818864063878.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A173535, Nat.add_sub_cancel, A173535.P9771135971979464674.a, A173535.P7135530818864063878.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A173535

/-! ## A173535.P4424638634121229665

`lcm(6, lcm(4, a(n-1))-1)` with `a(0)=1`
-/

namespace A173535.P4424638634121229665
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm 6 ((Nat.lcm 4 (a (n - 1)) : ℤ) - 1)

end

end A173535.P4424638634121229665

namespace A173535

/-- `lcm(6, lcm(4, a(n-1))-1)` -/
def P4424638634121229665.Spec : Prop :=
  ∀ n, (P4424638634121229665.a n : ℤ) = A173535 n

end A173535

/-! ## A173535.P4271182504086284408

`5*A196791(n)-4`
-/

namespace A173535.P4271182504086284408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A196791 n - 4

end

end A173535.P4271182504086284408

namespace A173535

/-- `5*A196791(n)-4` -/
def P4271182504086284408.Spec : Prop :=
  ∀ n, P4271182504086284408.a n = A173535 n

end A173535

/-! ## A173535.P3077374373268467592

`∑[ceil(2^(n-1))*A052934(n)]`
-/

namespace A173535.P3077374373268467592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A052934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173535.P3077374373268467592

namespace A173535

/-- `∑[ceil(2^(n-1))*A052934(n)]` -/
def P3077374373268467592.Spec : Prop :=
  ∀ n, P3077374373268467592.a n = A173535 n

end A173535

/-! ## A173535.P8242384501299585452

`∑[lcm(A003947(n), A052934(n))]`
-/

namespace A173535.P8242384501299585452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003947 n) (A052934 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173535.P8242384501299585452

namespace A173535

/-- `∑[lcm(A003947(n), A052934(n))]` -/
def P8242384501299585452.Spec : Prop :=
  ∀ n, (P8242384501299585452.a n : ℤ) = A173535 n

end A173535

/-! ## A173535.P12124878469861298572

`∑[A052934(n)*A158780(2*n+1)]`
-/

namespace A173535.P12124878469861298572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052934 n * A158780 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173535.P12124878469861298572

namespace A173535

/-- `∑[A052934(n)*A158780(2*n+1)]` -/
def P12124878469861298572.Spec : Prop :=
  ∀ n, P12124878469861298572.a n = A173535 n

end A173535

/-! ## A173535.P17012352792553093698

`∑[A067423(n)/A000079(n)]`
-/

namespace A173535.P17012352792553093698
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067423 n : ℚ) / (A000079 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173535.P17012352792553093698

namespace A173535

/-- `∑[A067423(n)/A000079(n)]` -/
def P17012352792553093698.Spec : Prop :=
  ∀ n, P17012352792553093698.a n = (A173535 n : ℚ)

end A173535

/-! ## A173535.P10997145442386933539

`∑[A067423(n)/Δ[A000051(n)]]`
-/

namespace A173535.P10997145442386933539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067423 n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173535.P10997145442386933539

namespace A173535

/-- `∑[A067423(n)/Δ[A000051(n)]]` -/
def P10997145442386933539.Spec : Prop :=
  ∀ n, P10997145442386933539.a n = (A173535 n : ℚ)

end A173535

/-!
# A173536: A173039(n) + A173259(n).

The programs for A173536, the canonical program `A173536.P826498765904472395` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173536 has offset 1).

The definition of A173536 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173536.P13398450580437083749

`ogf((1+x^2+6x^3+4x^4+22x^5+25x^6+4x^7+9x^8)/(1-3x^3+3x^6-x^9))`
-/

namespace A173536.P13398450580437083749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1, 6, 4, 22, 25, 4, 9] [1, 0, 0, -3, 0, 0, 3, 0, 0, -1] n

end

end A173536.P13398450580437083749

namespace A173536

/-- `ogf((1+x^2+6x^3+4x^4+22x^5+25x^6+4x^7+9x^8)/(1-3x^3+3x^6-x^9))` -/
def P13398450580437083749.Spec : Prop :=
  ∀ n, P13398450580437083749.a n = A173536 (n + 1)

end A173536

/-! ## A173536.P826498765904472395

`3*a(n-3)-3*a(n-6)+a(n-9)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=9, a(4)=4, a(5)=25, a(6)=49, a(7)=16, a(8)=81`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173536

/-- `3*a(n-3)-3*a(n-6)+a(n-9)` -/
def P826498765904472395.Spec : Prop :=
  ∀ n, P826498765904472395.a n = A173536 (n + 1)

theorem P826498765904472395.correct : P826498765904472395.Spec := by
  intro n
  simp only [A173536, Nat.add_sub_cancel]

end A173536

/-! ## A173536.P11883141548338820397

`A173039(n+1)+A173259(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173536.P11883141548338820397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173039 (n + 1) + A173259 (n + 1)

end

end A173536.P11883141548338820397

namespace A173536

/-- `A173039(n+1)+A173259(n+1)` -/
def P11883141548338820397.Spec : Prop :=
  ∀ n, P11883141548338820397.a n = A173536 (n + 1)

end A173536

/-! ## A173536.P13910345108852251422

`(n+floor(n/3)*(-1)^(n%3)-1)²`
-/

namespace A173536.P13910345108852251422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) + ⌊(n : ℚ) / 3⌋ * (-1) ^ (n % 3) - 1) ^ 2

end

end A173536.P13910345108852251422

namespace A173536

/-- `(n+floor(n/3)*(-1)^(n%3)-1)²` -/
def P13910345108852251422.Spec : Prop :=
  ∀ n, P13910345108852251422.a n = A173536 (n + 1)

end A173536

/-! ## A173536.P9802736446498798063

`(1-A265667(n))²`
-/

namespace A173536.P9802736446498798063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A265667 n) ^ 2

end

end A173536.P9802736446498798063

namespace A173536

/-- `(1-A265667(n))²` -/
def P9802736446498798063.Spec : Prop :=
  ∀ n, P9802736446498798063.a n = A173536 (n + 1)

end A173536

/-! ## A173536.P8343187275284556751

`A006369(abs(1-n))²`
-/

namespace A173536.P8343187275284556751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 |1 - (n : ℤ)|.toNat ^ 2

end

end A173536.P8343187275284556751

namespace A173536

/-- `A006369(abs(1-n))²` -/
def P8343187275284556751.Spec : Prop :=
  ∀ n, P8343187275284556751.a n = A173536 (n + 1)

end A173536

/-! ## A173536.P350808867163619104

`(1-A367286(A064429(n)))²`
-/

namespace A173536.P350808867163619104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A367286 (A064429 n).toNat) ^ 2

end

end A173536.P350808867163619104

namespace A173536

/-- `(1-A367286(A064429(n)))²` -/
def P350808867163619104.Spec : Prop :=
  ∀ n, P350808867163619104.a n = A173536 (n + 1)

end A173536

/-! ## A173536.P17526265167836094251

`(A005131(n)+1-A168056(n))²`
-/

namespace A173536.P17526265167836094251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005131 n + (1 - A168056 n)) ^ 2

end

end A173536.P17526265167836094251

namespace A173536

/-- `(A005131(n)+1-A168056(n))²` -/
def P17526265167836094251.Spec : Prop :=
  ∀ n, P17526265167836094251.a n = A173536 (n + 1)

end A173536

/-! ## A173536.P1936505164521861436

`(2*A004396(n)-A078689(n))²`
-/

namespace A173536.P1936505164521861436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A004396 n - A078689 n) ^ 2

end

end A173536.P1936505164521861436

namespace A173536

/-- `(2*A004396(n)-A078689(n))²` -/
def P1936505164521861436.Spec : Prop :=
  ∀ n, P1936505164521861436.a n = A173536 (n + 1)

end A173536

/-! ## A173536.P8600953205633935537

`((1-A004773(n))/A131534(n))²`
-/

namespace A173536.P8600953205633935537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 - A004773 n : ℚ) / (A131534 n : ℚ)) ^ 2

end

end A173536.P8600953205633935537

namespace A173536

/-- `((1-A004773(n))/A131534(n))²` -/
def P8600953205633935537.Spec : Prop :=
  ∀ n, P8600953205633935537.a n = (A173536 (n + 1) : ℚ)

end A173536

/-! ## A173536.P12612441621966001896

`((1-A004773(n))/A131713(n))²`
-/

namespace A173536.P12612441621966001896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 - A004773 n : ℚ) / (A131713 n : ℚ)) ^ 2

end

end A173536.P12612441621966001896

namespace A173536

/-- `((1-A004773(n))/A131713(n))²` -/
def P12612441621966001896.Spec : Prop :=
  ∀ n, P12612441621966001896.a n = (A173536 (n + 1) : ℚ)

end A173536

/-! ## A173536.P3643483926311051503

`(2-A042968(n+1))²/A146325(n+1)`
-/

namespace A173536.P3643483926311051503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 - A042968 (n + 1)) ^ 2 : ℚ) / (A146325 (n + 1) : ℚ)

end

end A173536.P3643483926311051503

namespace A173536

/-- `(2-A042968(n+1))²/A146325(n+1)` -/
def P3643483926311051503.Spec : Prop :=
  ∀ n, P3643483926311051503.a n = (A173536 (n + 1) : ℚ)

end A173536

/-! ## A173536.P10748663951383582349

`(A135997(n+2)-n)²`
-/

namespace A173536.P10748663951383582349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A135997 (n + 2) - (n : ℤ)) ^ 2

end

end A173536.P10748663951383582349

namespace A173536

/-- `(A135997(n+2)-n)²` -/
def P10748663951383582349.Spec : Prop :=
  ∀ n, P10748663951383582349.a n = A173536 (n + 1)

end A173536

/-! ## A173536.P3031342457757463460

`A000290(A006369(abs(n-1)))`
-/

namespace A173536.P3031342457757463460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A006369 |(n : ℤ) - 1|.toNat).toNat

end

end A173536.P3031342457757463460

namespace A173536

/-- `A000290(A006369(abs(n-1)))` -/
def P3031342457757463460.Spec : Prop :=
  ∀ n, P3031342457757463460.a n = A173536 (n + 1)

end A173536

/-! ## A173536.P12209585400754620736

`(1-A186421(A004773(n)))²`
-/

namespace A173536.P12209585400754620736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A186421 (A004773 n).toNat) ^ 2

end

end A173536.P12209585400754620736

namespace A173536

/-- `(1-A186421(A004773(n)))²` -/
def P12209585400754620736.Spec : Prop :=
  ∀ n, P12209585400754620736.a n = A173536 (n + 1)

end A173536

/-! ## A173536.P10068861793388442033

`A174679(A042968(n+1))`
-/

namespace A173536.P10068861793388442033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174679 (A042968 (n + 1)).toNat

end

end A173536.P10068861793388442033

namespace A173536

/-- `A174679(A042968(n+1))` -/
def P10068861793388442033.Spec : Prop :=
  ∀ n, P10068861793388442033.a n = A173536 (n + 1)

end A173536

/-! ## A173536.P5639700504274524352

`A174679(eq[A174571(n+4), A174571(n)])`
-/

namespace A173536.P5639700504274524352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174679 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A173536.P5639700504274524352

namespace A173536

/-- `A174679(eq[A174571(n+4), A174571(n)])` -/
def P5639700504274524352.Spec : Prop :=
  ∀ n, P5639700504274524352.a n = A173536 (n + 1)

end A173536

/-! ## A173536.P13625296814548530741

`(1-A004396(A080029(n)))²`
-/

namespace A173536.P13625296814548530741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A004396 (A080029 n).toNat) ^ 2

end

end A173536.P13625296814548530741

namespace A173536

/-- `(1-A004396(A080029(n)))²` -/
def P13625296814548530741.Spec : Prop :=
  ∀ n, P13625296814548530741.a n = A173536 (n + 1)

end A173536

/-! ## A173536.P1852314225484734124

`(1-A186731(A047244(n+1)))²`
-/

namespace A173536.P1852314225484734124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A186731 (A047244 (n + 1)).toNat) ^ 2

end

end A173536.P1852314225484734124

namespace A173536

/-- `(1-A186731(A047244(n+1)))²` -/
def P1852314225484734124.Spec : Prop :=
  ∀ n, P1852314225484734124.a n = A173536 (n + 1)

end A173536

/-! ## A173536.P13573848972138899511

`(2-A029579(record[A168052(n)]))²`
-/

namespace A173536.P13573848972138899511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A029579 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) ^ 2

end

end A173536.P13573848972138899511

namespace A173536

/-- `(2-A029579(record[A168052(n)]))²` -/
def P13573848972138899511.Spec : Prop :=
  ∀ n, P13573848972138899511.a n = A173536 (n + 1)

end A173536

/-!
# A173537: a(n) = A173522(n)/2.

The programs for A173537, the canonical program `A173537.P4657731176384884408` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173537 has offset 2).

The definition of A173537 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173522, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A173537.P4657731176384884408

`A173522(n+2)/2`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A173537

/-- `A173522(n+2)/2` -/
def P4657731176384884408.Spec : Prop :=
  ∀ n, P4657731176384884408.a n = (A173537 (n + 2) : ℚ)

end A173537

/-! ## A173537.P1650163043699670652

`∑[ceil(A105321(n+1)/2)]`
-/

namespace A173537.P1650163043699670652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A105321 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173537.P1650163043699670652

namespace A173537

/-- `∑[ceil(A105321(n+1)/2)]` -/
def P1650163043699670652.Spec : Prop :=
  ∀ n, P1650163043699670652.a n = A173537 (n + 2)

end A173537

/-! ## A173537.P11058262364353655326

`A048460(n+1)+a(n-1)` with `a(0)=2`
-/

namespace A173537.P11058262364353655326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A048460 (n + 1) + a (n - 1)

end

end A173537.P11058262364353655326

namespace A173537

/-- `A048460(n+1)+a(n-1)` -/
def P11058262364353655326.Spec : Prop :=
  ∀ n, P11058262364353655326.a n = A173537 (n + 2)

end A173537

/-! ## A173537.P849298688272001952

`∑[A001316(n)]+2^(n-∑[val(n+1, 2)])`
-/

namespace A173537.P849298688272001952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) + (2 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) : ℤ)

end

end A173537.P849298688272001952

namespace A173537

/-- `∑[A001316(n)]+2^(n-∑[val(n+1, 2)])` -/
def P849298688272001952.Spec : Prop :=
  ∀ n, P849298688272001952.a n = (A173537 (n + 2) : ℚ)

end A173537

/-! ## A173537.P15091711732460208444

`A048896(n)+∑[A001316(n)]`
-/

namespace A173537.P15091711732460208444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173537.P15091711732460208444

namespace A173537

/-- `A048896(n)+∑[A001316(n)]` -/
def P15091711732460208444.Spec : Prop :=
  ∀ n, P15091711732460208444.a n = A173537 (n + 2)

end A173537

/-! ## A173537.P1914488783768877200

`A048896(n)+A006046(n+1)`
-/

namespace A173537.P1914488783768877200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n + A006046 (n + 1)

end

end A173537.P1914488783768877200

namespace A173537

/-- `A048896(n)+A006046(n+1)` -/
def P1914488783768877200.Spec : Prop :=
  ∀ n, P1914488783768877200.a n = A173537 (n + 2)

end A173537

/-! ## A173537.P9222846076758746313

`A233775(n+1)+A006046(n)`
-/

namespace A173537.P9222846076758746313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233775 (n + 1) + A006046 n

end

end A173537.P9222846076758746313

namespace A173537

/-- `A233775(n+1)+A006046(n)` -/
def P9222846076758746313.Spec : Prop :=
  ∀ n, P9222846076758746313.a n = A173537 (n + 2)

end A173537

/-! ## A173537.P12513944880050697185

`Δ[A193494(n)+∑[A006046(n)]]`
-/

namespace A173537.P12513944880050697185
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193494 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173537.P12513944880050697185

namespace A173537

/-- `Δ[A193494(n)+∑[A006046(n)]]` -/
def P12513944880050697185.Spec : Prop :=
  ∀ n, P12513944880050697185.a n = A173537 (n + 2)

end A173537

/-! ## A173537.P2251311501878551025

`A001316(A025480(n))+∑[A001316(n)]`
-/

namespace A173537.P2251311501878551025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A025480 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173537.P2251311501878551025

namespace A173537

/-- `A001316(A025480(n))+∑[A001316(n)]` -/
def P2251311501878551025.Spec : Prop :=
  ∀ n, P2251311501878551025.a n = A173537 (n + 2)

end A173537

/-! ## A173537.P14348078104189731768

`A387064(A001316(n+1))+A006046(n+1)`
-/

namespace A173537.P14348078104189731768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387064 (A001316 (n + 1)).toNat + A006046 (n + 1)

end

end A173537.P14348078104189731768

namespace A173537

/-- `A387064(A001316(n+1))+A006046(n+1)` -/
def P14348078104189731768.Spec : Prop :=
  ∀ n, P14348078104189731768.a n = A173537 (n + 2)

end A173537

/-! ## A173537.P14819948852926693285

`A233774(n+1)+A006046(n)-A233774(n)`
-/

namespace A173537.P14819948852926693285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233774 (n + 1) + (A006046 n - A233774 n)

end

end A173537.P14819948852926693285

namespace A173537

/-- `A233774(n+1)+A006046(n)-A233774(n)` -/
def P14819948852926693285.Spec : Prop :=
  ∀ n, P14819948852926693285.a n = A173537 (n + 2)

end A173537

/-! ## A173537.P6126360162239409547

`A006046(n+1)+A193494(n+1)-A193494(n)`
-/

namespace A173537.P6126360162239409547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (n + 1) + (A193494 (n + 1) - A193494 n)

end

end A173537.P6126360162239409547

namespace A173537

/-- `A006046(n+1)+A193494(n+1)-A193494(n)` -/
def P6126360162239409547.Spec : Prop :=
  ∀ n, P6126360162239409547.a n = A173537 (n + 2)

end A173537

/-! ## A173537.P6625510141085806880

`A048896(n)+∑[A048896(2*n)]`
-/

namespace A173537.P6625510141085806880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173537.P6625510141085806880

namespace A173537

/-- `A048896(n)+∑[A048896(2*n)]` -/
def P6625510141085806880.Spec : Prop :=
  ∀ n, P6625510141085806880.a n = A173537 (n + 2)

end A173537

/-! ## A173537.P13220918215931893248

`A048460(2*(n+1))+A006046(n)`
-/

namespace A173537.P13220918215931893248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048460 (2 * (n + 1)) + A006046 n

end

end A173537.P13220918215931893248

namespace A173537

/-- `A048460(2*(n+1))+A006046(n)` -/
def P13220918215931893248.Spec : Prop :=
  ∀ n, P13220918215931893248.a n = A173537 (n + 2)

end A173537

/-! ## A173537.P7082774609788121274

`A151566(2*n+3)/2`
-/

namespace A173537.P7082774609788121274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151566 (2 * n + 3) : ℚ) / 2

end

end A173537.P7082774609788121274

namespace A173537

/-- `A151566(2*n+3)/2` -/
def P7082774609788121274.Spec : Prop :=
  ∀ n, P7082774609788121274.a n = (A173537 (n + 2) : ℚ)

end A173537

/-! ## A173537.P87373622170353715

`A116593(2*(n+1))/6`
-/

namespace A173537.P87373622170353715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116593 (2 * (n + 1)) : ℚ) / 6

end

end A173537.P87373622170353715

namespace A173537

/-- `A116593(2*(n+1))/6` -/
def P87373622170353715.Spec : Prop :=
  ∀ n, P87373622170353715.a n = (A173537 (n + 2) : ℚ)

end A173537

/-! ## A173537.P12969008513810228113

`A353661(A191110(n+1))`
-/

namespace A173537.P12969008513810228113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353661 (A191110 (n + 1)).toNat

end

end A173537.P12969008513810228113

namespace A173537

/-- `A353661(A191110(n+1))` -/
def P12969008513810228113.Spec : Prop :=
  ∀ n, P12969008513810228113.a n = A173537 (n + 2)

end A173537

/-! ## A173537.P1981200669963047807

`A004525(A173522(n+2))`
-/

namespace A173537.P1981200669963047807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A173522 (n + 2)).toNat

end

end A173537.P1981200669963047807

namespace A173537

/-- `A004525(A173522(n+2))` -/
def P1981200669963047807.Spec : Prop :=
  ∀ n, P1981200669963047807.a n = A173537 (n + 2)

end A173537

/-! ## A173537.P9024291616557341199

`A220466(A173522(n+2)-1)`
-/

namespace A173537.P9024291616557341199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220466 (A173522 (n + 2) - 1).toNat

end

end A173537.P9024291616557341199

namespace A173537

/-- `A220466(A173522(n+2)-1)` -/
def P9024291616557341199.Spec : Prop :=
  ∀ n, P9024291616557341199.a n = A173537 (n + 2)

end A173537

/-! ## A173537.P9447489967992463737

`A268234(∑[or(1, n+1)])`
-/

namespace A173537.P9447489967992463737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268234 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173537.P9447489967992463737

namespace A173537

/-- `A268234(∑[or(1, n+1)])` -/
def P9447489967992463737.Spec : Prop :=
  ∀ n, P9447489967992463737.a n = A173537 (n + 2)

end A173537

/-!
# A173538: a(n) = a(n-1) + a(n-2) - [a(n-2)/4] - [a(n-3)/2] - [a(n-4)/4].

The programs for A173538, the canonical program `A173538.P8747119809177067856` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173538 has offset 0).

The definition of A173538 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173538.P8747119809177067856

`a(n-1)+a(n-2)-floor(a(n-2)/4)-floor(a(n-3)/2)-floor(a(n-4)/4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173538

/-- `a(n-1)+a(n-2)-floor(a(n-2)/4)-floor(a(n-3)/2)-floor(a(n-4)/4)` -/
def P8747119809177067856.Spec : Prop :=
  ∀ n, P8747119809177067856.a n = A173538 n

theorem P8747119809177067856.correct : P8747119809177067856.Spec := by
  intro n
  simp only [A173538]

end A173538

/-! ## A173538.P4186788072919574302

`a(n-2)-A345064(A119368(n+1))+n` with `a(0)=1, a(1)=1`
-/

namespace A173538.P4186788072919574302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) - A345064 (A119368 (n + 1)).toNat + (n : ℤ)

end

end A173538.P4186788072919574302

namespace A173538

/-- `a(n-2)-A345064(A119368(n+1))+n` -/
def P4186788072919574302.Spec : Prop :=
  ∀ n, P4186788072919574302.a n = A173538 n

end A173538

/-! ## A173538.P12924849946316537685

`A118168(A276797((n+1)²))`
-/

namespace A173538.P12924849946316537685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118168 (A276797 ((n + 1) ^ 2)).toNat

end

end A173538.P12924849946316537685

namespace A173538

/-- `A118168(A276797((n+1)²))` -/
def P12924849946316537685.Spec : Prop :=
  ∀ n, P12924849946316537685.a n = A173538 n

end A173538

/-! ## A173538.P11400738143481552093

`∑[∑[A170967(2*n+1)]]-n`
-/

namespace A173538.P11400738143481552093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170967 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A173538.P11400738143481552093

namespace A173538

/-- `∑[∑[A170967(2*n+1)]]-n` -/
def P11400738143481552093.Spec : Prop :=
  ∀ n, P11400738143481552093.a n = A173538 n

end A173538

/-! ## A173538.P8546228062110546796

`∑[A084558(A287843(n))]`
-/

namespace A173538.P8546228062110546796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A287843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173538.P8546228062110546796

namespace A173538

/-- `∑[A084558(A287843(n))]` -/
def P8546228062110546796.Spec : Prop :=
  ∀ n, P8546228062110546796.a n = A173538 n

end A173538

/-!
# A173539: Square array read by antidiagonals: T(n,k)=0 if k is a divisor of n, otherwise T(n,k)=k.

The programs for A173539, the canonical program `A173539.P9511536219603571915` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173539 has offset 1).

The definition of A173539 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173539.P7379173603143770935

`A173541(comp[∑[n]])`
-/

namespace A173539.P7379173603143770935
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173541 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A173539.P7379173603143770935

namespace A173539

/-- `A173541(comp[∑[n]])` -/
def P7379173603143770935.Spec : Prop :=
  ∀ n, P7379173603143770935.a n = A173539 (n + 1)

end A173539

/-! ## A173539.P14047040137023503052

`A191904(n+1)+n-C(∑[char[∑[n]]], 2)`
-/

namespace A173539.P14047040137023503052
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191904 (n + 1) + ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ))

end

end A173539.P14047040137023503052

namespace A173539

/-- `A191904(n+1)+n-C(∑[char[∑[n]]], 2)` -/
def P14047040137023503052.Spec : Prop :=
  ∀ n, P14047040137023503052.a n = A173539 (n + 1)

end A173539

/-! ## A173539.P15064404952426804841

`(1-C(∑[char[∑[n]]], 2)+n)%A228035(n)`
-/

namespace A173539.P15064404952426804841
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) (A228035 n)

end

end A173539.P15064404952426804841

namespace A173539

/-- `(1-C(∑[char[∑[n]]], 2)+n)%A228035(n)` -/
def P15064404952426804841.Spec : Prop :=
  ∀ n, P15064404952426804841.a n = A173539 (n + 1)

end A173539

/-! ## A173539.P10545302791670653821

`1-C(∑[char[∑[n]]], 2)+n-A127093(comp[∑[n]])`
-/

namespace A173539.P10545302791670653821
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ) - A127093 (SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n)

end

end A173539.P10545302791670653821

namespace A173539

/-- `1-C(∑[char[∑[n]]], 2)+n-A127093(comp[∑[n]])` -/
def P10545302791670653821.Spec : Prop :=
  ∀ n, P10545302791670653821.a n = A173539 (n + 1)

end A173539

/-! ## A173539.P12081957653505535637

`A024222(A228035(n))`
-/

namespace A173539.P12081957653505535637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024222 (A228035 n).toNat

end

end A173539.P12081957653505535637

namespace A173539

/-- `A024222(A228035(n))` -/
def P12081957653505535637.Spec : Prop :=
  ∀ n, P12081957653505535637.a n = A173539 (n + 1)

end A173539

/-! ## A173539.P11649952860671762996

`A173541(A080036(n))%14`
-/

namespace A173539.P11649952860671762996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173541 (A080036 n).toNat) 14

end

end A173539.P11649952860671762996

namespace A173539

/-- `A173541(A080036(n))%14` -/
def P11649952860671762996.Spec : Prop :=
  ∀ n, P11649952860671762996.a n = A173539 (n + 1)

end A173539

/-! ## A173539.P3568848545228903400

`A173541(∑[A035214(n)])%14`
-/

namespace A173539.P3568848545228903400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173541 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) 14

end

end A173539.P3568848545228903400

namespace A173539

/-- `A173541(∑[A035214(n)])%14` -/
def P3568848545228903400.Spec : Prop :=
  ∀ n, P3568848545228903400.a n = A173539 (n + 1)

end A173539

/-! ## A173539.P545741067343286638

`A173541(A014132(n+1))%14`
-/

namespace A173539.P545741067343286638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173541 (A014132 (n + 1)).toNat) 14

end

end A173539.P545741067343286638

namespace A173539

/-- `A173541(A014132(n+1))%14` -/
def P545741067343286638.Spec : Prop :=
  ∀ n, P545741067343286638.a n = A173539 (n + 1)

end A173539

/-! ## A173539.P7311699972544137703

`A191904(n+1)+A002262(n)`
-/

namespace A173539.P7311699972544137703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191904 (n + 1) + A002262 n

end

end A173539.P7311699972544137703

namespace A173539

/-- `A191904(n+1)+A002262(n)` -/
def P7311699972544137703.Spec : Prop :=
  ∀ n, P7311699972544137703.a n = A173539 (n + 1)

theorem P7311699972544137703.correct : P7311699972544137703.Spec := by
  intro n
  simp only [A173539, Nat.add_sub_cancel, A173539.P7311699972544137703.a, A173539.P9511536219603571915.a, A002260, A002260.P9170571874073898642.a, A002262, A002262.P17823619022233514403.a, A077049, A077049.P4113379091505047421.a, A191904, A191904.P13641530380614696573.a, A004736, A004736.P10337537277358081527.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A173539

/-! ## A173539.P15893354337942355356

`A002260(n+1)%A228035(n)`
-/

namespace A173539.P15893354337942355356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002260 (n + 1)) (A228035 n)

end

end A173539.P15893354337942355356

namespace A173539

/-- `A002260(n+1)%A228035(n)` -/
def P15893354337942355356.Spec : Prop :=
  ∀ n, P15893354337942355356.a n = A173539 (n + 1)

end A173539

/-! ## A173539.P604550468022939717

`A131818(n+1)%A228035(n)`
-/

namespace A173539.P604550468022939717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131818 (n + 1)) (A228035 n)

end

end A173539.P604550468022939717

namespace A173539

/-- `A131818(n+1)%A228035(n)` -/
def P604550468022939717.Spec : Prop :=
  ∀ n, P604550468022939717.a n = A173539 (n + 1)

end A173539

/-! ## A173539.P14679568428980059427

`A134868(n+1)%A228035(n)`
-/

namespace A173539.P14679568428980059427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134868 (n + 1)) (A228035 n)

end

end A173539.P14679568428980059427

namespace A173539

/-- `A134868(n+1)%A228035(n)` -/
def P14679568428980059427.Spec : Prop :=
  ∀ n, P14679568428980059427.a n = A173539 (n + 1)

end A173539

/-! ## A173539.P16406975073531993432

`A135223(n+1)%A228035(n)`
-/

namespace A173539.P16406975073531993432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135223 (n + 1)) (A228035 n)

end

end A173539.P16406975073531993432

namespace A173539

/-- `A135223(n+1)%A228035(n)` -/
def P16406975073531993432.Spec : Prop :=
  ∀ n, P16406975073531993432.a n = A173539 (n + 1)

end A173539

/-! ## A173539.P2341477194011003753

`A384660(n+1)%A228035(n)`
-/

namespace A173539.P2341477194011003753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384660 (n + 1)) (A228035 n)

end

end A173539.P2341477194011003753

namespace A173539

/-- `A384660(n+1)%A228035(n)` -/
def P2341477194011003753.Spec : Prop :=
  ∀ n, P2341477194011003753.a n = A173539 (n + 1)

end A173539

/-! ## A173539.P9429169809451412546

`A002262(n)-A176079(comp[∑[n]])`
-/

namespace A173539.P9429169809451412546
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n - A176079 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A173539.P9429169809451412546

namespace A173539

/-- `A002262(n)-A176079(comp[∑[n]])` -/
def P9429169809451412546.Spec : Prop :=
  ∀ n, P9429169809451412546.a n = A173539 (n + 1)

end A173539

/-! ## A173539.P12752305809144993089

`A191904(n+1)+A025675(n+1)`
-/

namespace A173539.P12752305809144993089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191904 (n + 1) + A025675 (n + 1)

end

end A173539.P12752305809144993089

namespace A173539

/-- `A191904(n+1)+A025675(n+1)` -/
def P12752305809144993089.Spec : Prop :=
  ∀ n, P12752305809144993089.a n = A173539 (n + 1)

end A173539

/-! ## A173539.P6941395281131691264

`A191904(n+1)+A025682(n+1)`
-/

namespace A173539.P6941395281131691264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191904 (n + 1) + A025682 (n + 1)

end

end A173539.P6941395281131691264

namespace A173539

/-- `A191904(n+1)+A025682(n+1)` -/
def P6941395281131691264.Spec : Prop :=
  ∀ n, P6941395281131691264.a n = A173539 (n + 1)

end A173539

/-! ## A173539.P7535981796877796301

`A191904(n+1)+A025691(n+1)`
-/

namespace A173539.P7535981796877796301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191904 (n + 1) + A025691 (n + 1)

end

end A173539.P7535981796877796301

namespace A173539

/-- `A191904(n+1)+A025691(n+1)` -/
def P7535981796877796301.Spec : Prop :=
  ∀ n, P7535981796877796301.a n = A173539 (n + 1)

end A173539

/-! ## A173539.P13292443812758700645

`A002260(n+1)-A127093(comp[∑[n]])`
-/

namespace A173539.P13292443812758700645
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - A127093 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A173539.P13292443812758700645

namespace A173539

/-- `A002260(n+1)-A127093(comp[∑[n]])` -/
def P13292443812758700645.Spec : Prop :=
  ∀ n, P13292443812758700645.a n = A173539 (n + 1)

end A173539

/-! ## A173539.P9511536219603571915

`(1-A077049(n+1))*A002260(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A173539

/-- `(1-A077049(n+1))*A002260(n+1)` -/
def P9511536219603571915.Spec : Prop :=
  ∀ n, P9511536219603571915.a n = A173539 (n + 1)

theorem P9511536219603571915.correct : P9511536219603571915.Spec := by
  intro n
  simp only [A173539, Nat.add_sub_cancel]

end A173539

/-!
# A173540: Triangle read by rows in which row n lists the proper nondivisors of n, or zero if n <= 2.

The programs for A173540, the canonical program `A173540.P7434116664741020737` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173540 has offset 1).

The definition of A173540 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9280 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173540.P7434116664741020737

`A173541(record[gcd(n+1, A126988(n+1))])`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A173540

/-- `A173541(record[gcd(n+1, A126988(n+1))])` -/
def P7434116664741020737.Spec : Prop :=
  ∀ n, P7434116664741020737.a n = A173540 (n + 1)

theorem P7434116664741020737.correct : P7434116664741020737.Spec := by
  intro n
  simp only [A173540, Nat.add_sub_cancel]

end A173540

/-! ## A173540.P16503812026575972065

`A002262(record[n+1-A127446(n+1)])`
-/

namespace A173540.P16503812026575972065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A127446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A173540.P16503812026575972065

namespace A173540

/-- `A002262(record[n+1-A127446(n+1)])` -/
def P16503812026575972065.Spec : Prop :=
  ∀ n, P16503812026575972065.a n = A173540 (n + 1)

end A173540

/-! ## A173540.P1423541789466524653

`A002262(record[n+1-A129234(n+1)])`
-/

namespace A173540.P1423541789466524653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A129234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A173540.P1423541789466524653

namespace A173540

/-- `A002262(record[n+1-A129234(n+1)])` -/
def P1423541789466524653.Spec : Prop :=
  ∀ n, P1423541789466524653.a n = A173540 (n + 1)

end A173540

/-! ## A173540.P14760893905912197090

`A002262(record[gcd(n, A141671(n))])`
-/

namespace A173540.P14760893905912197090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A141671 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A173540.P14760893905912197090

namespace A173540

/-- `A002262(record[gcd(n, A141671(n))])` -/
def P14760893905912197090.Spec : Prop :=
  ∀ n, P14760893905912197090.a n = A173540 (n + 1)

end A173540

/-! ## A173540.P14595544113207467333

`A002262(record[n+1-A047916(n+1)])`
-/

namespace A173540.P14595544113207467333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A047916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A173540.P14595544113207467333

namespace A173540

/-- `A002262(record[n+1-A047916(n+1)])` -/
def P14595544113207467333.Spec : Prop :=
  ∀ n, P14595544113207467333.a n = A173540 (n + 1)

end A173540

/-!
# A173541: Triangle read by rows: T(n,k)=k if k is a proper non-divisor of n, otherwise T(n,k)=0 (1<=k<=n).

The programs for A173541, the canonical program `A173541.P8603278970651018191` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173541 has offset 1).

The definition of A173541 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173541.P17210082195899193463

`(1-A051731(n+1))*(col(n)+1)`
-/

namespace A173541.P17210082195899193463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A051731 (n + 1)) * (SequenceMachineLib.triCol n + 1 : ℤ)

end

end A173541.P17210082195899193463

namespace A173541

/-- `(1-A051731(n+1))*(col(n)+1)` -/
def P17210082195899193463.Spec : Prop :=
  ∀ n, P17210082195899193463.a n = A173541 (n + 1)

end A173541

/-! ## A173541.P3397063801858993775

`C(col(n)+1, A143425(n+1)+1)`
-/

namespace A173541.P3397063801858993775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triCol n + 1) (A143425 (n + 1) + 1).toNat

end

end A173541.P3397063801858993775

namespace A173541

/-- `C(col(n)+1, A143425(n+1)+1)` -/
def P3397063801858993775.Spec : Prop :=
  ∀ n, (P3397063801858993775.a n : ℤ) = A173541 (n + 1)

end A173541

/-! ## A173541.P2340158505708536449

`(col(n)+1)%A013973((row(n)+1)%(col(n)+1))`
-/

namespace A173541.P2340158505708536449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.triCol n + 1 : ℤ) (A013973 ((SequenceMachineLib.triRow n + 1) % (SequenceMachineLib.triCol n + 1)))

end

end A173541.P2340158505708536449

namespace A173541

/-- `(col(n)+1)%A013973((row(n)+1)%(col(n)+1))` -/
def P2340158505708536449.Spec : Prop :=
  ∀ n, P2340158505708536449.a n = A173541 (n + 1)

end A173541

/-! ## A173541.P13836217658207380865

`n+1-C(floor(1/2+sqrt(2*(n+1))), 2)-A127093(n+1)`
-/

namespace A173541.P13836217658207380865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.choose ⌊((1 : ℚ) / 2 : ℝ) + Real.sqrt (2 * (n + 1) : ℝ)⌋.toNat 2 : ℤ) - A127093 (n + 1)

end

end A173541.P13836217658207380865

namespace A173541

/-- `n+1-C(floor(1/2+sqrt(2*(n+1))), 2)-A127093(n+1)` -/
def P13836217658207380865.Spec : Prop :=
  ∀ n, P13836217658207380865.a n = A173541 (n + 1)

end A173541

/-! ## A173541.P476420768759702337

`A002262(n)-A176079(n+1)`
-/

namespace A173541.P476420768759702337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n - A176079 (n + 1)

end

end A173541.P476420768759702337

namespace A173541

/-- `A002262(n)-A176079(n+1)` -/
def P476420768759702337.Spec : Prop :=
  ∀ n, P476420768759702337.a n = A173541 (n + 1)

theorem P476420768759702337.correct : P476420768759702337.Spec := by
  intro n
  simp only [A173541, Nat.add_sub_cancel, A173541.P476420768759702337.a, A173541.P8603278970651018191.a, A002260, A002260.P9170571874073898642.a, A002262, A002262.P17823619022233514403.a, A127093, A127093.P1089623250187861217.a, A176079, A176079.P4844635103474567246.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173541

/-! ## A173541.P8603278970651018191

`A002260(n+1)-A127093(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A173541

/-- `A002260(n+1)-A127093(n+1)` -/
def P8603278970651018191.Spec : Prop :=
  ∀ n, P8603278970651018191.a n = A173541 (n + 1)

theorem P8603278970651018191.correct : P8603278970651018191.Spec := by
  intro n
  simp only [A173541, Nat.add_sub_cancel]

end A173541

/-! ## A173541.P2441152534711302358

`A002262(n)+1-A127093(n+1)`
-/

namespace A173541.P2441152534711302358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + (1 - A127093 (n + 1))

end

end A173541.P2441152534711302358

namespace A173541

/-- `A002262(n)+1-A127093(n+1)` -/
def P2441152534711302358.Spec : Prop :=
  ∀ n, P2441152534711302358.a n = A173541 (n + 1)

theorem P2441152534711302358.correct : P2441152534711302358.Spec := by
  intro n
  simp only [A173541, Nat.add_sub_cancel, A173541.P2441152534711302358.a, A173541.P8603278970651018191.a, A002260, A002260.P9170571874073898642.a, A002262, A002262.P17823619022233514403.a, A127093, A127093.P1089623250187861217.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173541

/-! ## A173541.P1446903886331475808

`A128138(n+1)-A191910(n+1)`
-/

namespace A173541.P1446903886331475808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128138 (n + 1) - A191910 (n + 1)

end

end A173541.P1446903886331475808

namespace A173541

/-- `A128138(n+1)-A191910(n+1)` -/
def P1446903886331475808.Spec : Prop :=
  ∀ n, P1446903886331475808.a n = A173541 (n + 1)

end A173541

/-! ## A173541.P10614855332165320902

`(1-A051731(n+1))*A128227(n)`
-/

namespace A173541.P10614855332165320902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A051731 (n + 1)) * A128227 n

end

end A173541.P10614855332165320902

namespace A173541

/-- `(1-A051731(n+1))*A128227(n)` -/
def P10614855332165320902.Spec : Prop :=
  ∀ n, P10614855332165320902.a n = A173541 (n + 1)

end A173541

/-! ## A173541.P634439491322030645

`lcm(A048151(n+1), A155031(n+1))`
-/

namespace A173541.P634439491322030645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A048151 (n + 1)) (A155031 (n + 1))

end

end A173541.P634439491322030645

namespace A173541

/-- `lcm(A048151(n+1), A155031(n+1))` -/
def P634439491322030645.Spec : Prop :=
  ∀ n, (P634439491322030645.a n : ℤ) = A173541 (n + 1)

end A173541

/-! ## A173541.P9653545013769416605

`sqrt(A133819(n+1))-A127093(n+1)`
-/

namespace A173541.P9653545013769416605
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ) - (A127093 (n + 1) : ℝ)

end

end A173541.P9653545013769416605

namespace A173541

/-- `sqrt(A133819(n+1))-A127093(n+1)` -/
def P9653545013769416605.Spec : Prop :=
  ∀ n, P9653545013769416605.a n = (A173541 (n + 1) : ℝ)

end A173541

/-! ## A173541.P14679367846672856470

`(1-A051731(n+1))*A002260(n+1)`
-/

namespace A173541.P14679367846672856470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A051731 (n + 1)) * A002260 (n + 1)

end

end A173541.P14679367846672856470

namespace A173541

/-- `(1-A051731(n+1))*A002260(n+1)` -/
def P14679367846672856470.Spec : Prop :=
  ∀ n, P14679367846672856470.a n = A173541 (n + 1)

end A173541

/-! ## A173541.P10286574158637895115

`(1-A051731(n+1))*A134868(n+1)`
-/

namespace A173541.P10286574158637895115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A051731 (n + 1)) * A134868 (n + 1)

end

end A173541.P10286574158637895115

namespace A173541

/-- `(1-A051731(n+1))*A134868(n+1)` -/
def P10286574158637895115.Spec : Prop :=
  ∀ n, P10286574158637895115.a n = A173541 (n + 1)

end A173541

/-! ## A173541.P11382329842829663769

`sqrt((1-A051731(n+1))*A133819(n+1))`
-/

namespace A173541.P11382329842829663769
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((1 - A051731 (n + 1)) * A133819 (n + 1) : ℝ)

end

end A173541.P11382329842829663769

namespace A173541

/-- `sqrt((1-A051731(n+1))*A133819(n+1))` -/
def P11382329842829663769.Spec : Prop :=
  ∀ n, P11382329842829663769.a n = (A173541 (n + 1) : ℝ)

end A173541

/-! ## A173541.P17021873145026957952

`A000007(A054522(n+1))*A002260(n+1)`
-/

namespace A173541.P17021873145026957952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A054522 (n + 1)).toNat * A002260 (n + 1)

end

end A173541.P17021873145026957952

namespace A173541

/-- `A000007(A054522(n+1))*A002260(n+1)` -/
def P17021873145026957952.Spec : Prop :=
  ∀ n, P17021873145026957952.a n = A173541 (n + 1)

end A173541

/-! ## A173541.P3998551236453235227

`A000007(A126988(n+1))*A002260(n+1)`
-/

namespace A173541.P3998551236453235227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A126988 (n + 1)).toNat * A002260 (n + 1)

end

end A173541.P3998551236453235227

namespace A173541

/-- `A000007(A126988(n+1))*A002260(n+1)` -/
def P3998551236453235227.Spec : Prop :=
  ∀ n, P3998551236453235227.a n = A173541 (n + 1)

end A173541

/-! ## A173541.P11260607178499038170

`A000007(A127446(n+1))*A002260(n+1)`
-/

namespace A173541.P11260607178499038170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A127446 (n + 1)).toNat * A002260 (n + 1)

end

end A173541.P11260607178499038170

namespace A173541

/-- `A000007(A127446(n+1))*A002260(n+1)` -/
def P11260607178499038170.Spec : Prop :=
  ∀ n, P11260607178499038170.a n = A173541 (n + 1)

end A173541

/-! ## A173541.P16633155164876682587

`A000007(A129234(n+1))*A002260(n+1)`
-/

namespace A173541.P16633155164876682587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A129234 (n + 1)).toNat * A002260 (n + 1)

end

end A173541.P16633155164876682587

namespace A173541

/-- `A000007(A129234(n+1))*A002260(n+1)` -/
def P16633155164876682587.Spec : Prop :=
  ∀ n, P16633155164876682587.a n = A173541 (n + 1)

end A173541

/-! ## A173541.P4674418780916276293

`(1-A000007(A048158(n+1)))*A002260(n+1)`
-/

namespace A173541.P4674418780916276293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000007 (A048158 (n + 1)).toNat) * A002260 (n + 1)

end

end A173541.P4674418780916276293

namespace A173541

/-- `(1-A000007(A048158(n+1)))*A002260(n+1)` -/
def P4674418780916276293.Spec : Prop :=
  ∀ n, P4674418780916276293.a n = A173541 (n + 1)

end A173541

/-! ## A173541.P14953924545392840104

`A384660(n+1)-A051731(n+1)*A384660(n+1)`
-/

namespace A173541.P14953924545392840104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384660 (n + 1) - A051731 (n + 1) * A384660 (n + 1)

end

end A173541.P14953924545392840104

namespace A173541

/-- `A384660(n+1)-A051731(n+1)*A384660(n+1)` -/
def P14953924545392840104.Spec : Prop :=
  ∀ n, P14953924545392840104.a n = A173541 (n + 1)

end A173541

/-!
# A173542: Palindromic Ulam numbers.

The programs for A173542, there is no canonical definition to state claims against.
-/

/-! ## A173542.P14803097295107377795

`∩[A002113(n+1), A002858(n+1)]`
-/

namespace A173542.P14803097295107377795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173542.P14803097295107377795

/-! ## A173542.P1498696734649906395

`record[A047813(A002858(n+1))]`
-/

namespace A173542.P1498696734649906395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A002858 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173542.P1498696734649906395

/-! ## A173542.P15877804256228051934

`filter[A002858(n+1), A136522(#)]`
-/

namespace A173542.P15877804256228051934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A173542.P15877804256228051934

/-! ## A173542.P7030284889050296464

`record[A047813(A048951(n+1)/2)]`
-/

namespace A173542.P7030284889050296464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (SequenceMachineLib.roundAway ((A048951 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173542.P7030284889050296464

/-!
# A173544: Ulam numbers that are fourth powers.

The programs for A173544, there is no canonical definition to state claims against.
-/

/-! ## A173544.P10286539820285694821

`∩[A173545(n+1), n²²]`
-/

namespace A173544.P10286539820285694821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173545 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A173544.P10286539820285694821

/-! ## A173544.P2791041202888069789

`∩[A000583(n), A173545(n+1)]`
-/

namespace A173544.P2791041202888069789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173544.P2791041202888069789

/-! ## A173544.P6004484051896924647

`∩[A212764(n), A173545(n+1)]`
-/

namespace A173544.P6004484051896924647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212764 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173544.P6004484051896924647

/-! ## A173544.P1083368593853544521

`∩[A212765(n), A173545(n+1)]`
-/

namespace A173544.P1083368593853544521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212765 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173544.P1083368593853544521

/-! ## A173544.P14692565593799740460

`∩[A268198(n+1), A173545(n+1)]`
-/

namespace A173544.P14692565593799740460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268198 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173544.P14692565593799740460

/-!
# A173545: Ulam numbers that are perfect squares.

The programs for A173545, there is no canonical definition to state claims against.
-/

/-! ## A173545.P13776367869465157520

`∩[A002858(n+1), n²]`
-/

namespace A173545.P13776367869465157520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A173545.P13776367869465157520

/-! ## A173545.P11929205215565841110

`∩[n², A072832(n)+a(n-1)]` with `a(0)=1`
-/

namespace A173545.P11929205215565841110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A072832 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173545.P11929205215565841110

/-! ## A173545.P10001030547185746240

`∩[A000290(n), A002858(n+1)]`
-/

namespace A173545.P10001030547185746240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173545.P10001030547185746240

/-! ## A173545.P10019286010271058500

`record[A056623(A002858(n+1))]`
-/

namespace A173545.P10019286010271058500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056623 (A002858 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173545.P10019286010271058500

/-!
# A173546: Number of 3 X 3 semimagic squares with distinct positive values < n. In a semimagic squares the row and column sums must all be equal (the "magic sum").

The programs for A173546, there is no canonical definition to state claims against.
-/

/-! ## A173546.P951737750705640746

`72*A173723(n)`
-/

namespace A173546.P951737750705640746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  72 * A173723 (n + 10)

end

end A173546.P951737750705640746

/-! ## A173546.P6309851306487922844

`∑[∑[A173727(n+8)]]`
-/

namespace A173546.P6309851306487922844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173727 (n + 8)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173546.P6309851306487922844

/-! ## A173546.P1570614541156155474

`∑[∑[72*A173724(n+8)]]`
-/

namespace A173546.P1570614541156155474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  72 * A173724 (n + 8)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173546.P1570614541156155474

/-! ## A173546.P3514230670897578597

`∑[∑[A008590(A173724(n+8)/(1/3)²)]]`
-/

namespace A173546.P3514230670897578597
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (SequenceMachineLib.roundAway ((A173724 (n + 8) : ℚ) / ((1 : ℚ) / 3) ^ 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173546.P3514230670897578597

/-!
# A173547: Number of 3 X 3 semimagic squares with distinct positive values and magic sum n.

The programs for A173547, there is no canonical definition to state claims against.
-/

/-! ## A173547.P2587996051005326500

`72*A173725(n)`
-/

namespace A173547.P2587996051005326500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  72 * A173725 (n + 15)

end

end A173547.P2587996051005326500

/-! ## A173547.P17042373506089329181

`72*A069924(A148577(n+1))`
-/

namespace A173547.P17042373506089329181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  72 * A069924 (A148577 (n + 1)).toNat

end

end A173547.P17042373506089329181

/-! ## A173547.P2997040461579661739

`72*A122921(∑[∑[A008950(n+1)]])`
-/

namespace A173547.P2997040461579661739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008950 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  72 * A122921 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A173547.P2997040461579661739

/-! ## A173547.P1063198054871911890

`72*∑[A196564(A000667(n))+A068670(n)]`
-/

namespace A173547.P1063198054871911890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A000667 n).toNat + A068670 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  72 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173547.P1063198054871911890

/-! ## A173547.P6588808798684702166

`72*A069924(record[A148577(n)%A173546(n)])`
-/

namespace A173547.P6588808798684702166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A148577 n) (A173546 (n + 10))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  72 * A069924 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A173547.P6588808798684702166

/-!
# A173548: Number of 3 X 3 magilatin squares with positive values < n.

The programs for A173548, there is no canonical definition to state claims against.
-/

/-! ## A173548.P4893845739346172382

`∑[∑[A174018(n+2)]]`
-/

namespace A173548.P4893845739346172382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174018 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173548.P4893845739346172382

/-!
# A173549: Number of 3 X 3 magilatin squares with positive values and magic sum n.

The programs for A173549, there is no canonical definition to state claims against.
-/

/-! ## A173549.P16686619388907104489

`A097603(A019072(n+4))`
-/

namespace A173549.P16686619388907104489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097603 (A019072 (n + 4)).toNat

end

end A173549.P16686619388907104489

/-! ## A173549.P17625775102208982974

`12*A113197(A000110(n))`
-/

namespace A173549.P17625775102208982974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A113197 (A000110 n).toNat

end

end A173549.P17625775102208982974

/-!
# A173551: Palindromes in base 10 and in at least one other base (from 2 to 9).

The programs for A173551, there is no canonical definition to state claims against.
-/

/-! ## A173551.P12208018051975327514

`A355222(or(A118767(n+1), A119246(n+1)))`
-/

namespace A173551.P12208018051975327514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355222 (Int.lor (A118767 (n + 1)) (A119246 (n + 1))).toNat

end

end A173551.P12208018051975327514

/-! ## A173551.P16721640392686469833

`A010785(lt[A072796(n+2), 15])`
-/

namespace A173551.P16721640392686469833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072796 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A173551.P16721640392686469833

/-! ## A173551.P164356949215577527

`eq[A120004(n), A350457(A294265(n))]`
-/

namespace A173551.P164356949215577527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120004 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350457 (A294265 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A173551.P164356949215577527

/-! ## A173551.P9741664572864662719

`A002113(lt[A023894(n), A279347(n+1)])`
-/

namespace A173551.P9741664572864662719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023894 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A173551.P9741664572864662719

/-! ## A173551.P18100423808703809889

`A010785(lt[A365897(n), A080883(n+4)])`
-/

namespace A173551.P18100423808703809889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365897 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080883 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A173551.P18100423808703809889

/-!
# A173552: Numbers k such that 5+38*k^2 is a prime.

The programs for A173552, there is no canonical definition to state claims against.
-/

/-! ## A173552.P3804060491513402869

`comp[A173553(n+1)]`
-/

namespace A173552.P3804060491513402869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A173552.P3804060491513402869

/-!
# A173553: Numbers n such that 5+38*n^2 is not a prime.

The programs for A173553, there is no canonical definition to state claims against.
-/

/-! ## A173553.P6796016336553610473

`comp[A173552(n+1)]`
-/

namespace A173553.P6796016336553610473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173552 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A173553.P6796016336553610473

/-! ## A173553.P16106793126337193370

`eq[0, char[A173552(A008619(n))]]`
-/

namespace A173553.P16106793126337193370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173552 (A008619 n).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A173553.P16106793126337193370

/-! ## A173553.P9441984263416271315

`eq[0, char[A173552(A344180(n))]]`
-/

namespace A173553.P9441984263416271315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173552 (A344180 n).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A173553.P9441984263416271315

/-! ## A173553.P6550980823095367879

`eq[char[A173552(n+1)], A000038(n)]`
-/

namespace A173553.P6550980823095367879
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173552 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A173553.P6550980823095367879

/-! ## A173553.P1527519480980191931

`comp[A173552(A344180(n))-A000007(n)]`
-/

namespace A173553.P1527519480980191931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173552 (A344180 n).toNat - A000007 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A173553.P1527519480980191931

/-! ## A173553.P11620737105782147845

`comp[A173552(A344180(n))-A000038(n)]`
-/

namespace A173553.P11620737105782147845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173552 (A344180 n).toNat - A000038 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A173553.P11620737105782147845

/-!
# A173554: Primes of form 5+38*n^2.

The programs for A173554, there is no canonical definition to state claims against.
-/

/-! ## A173554.P4464593483323417210

`A158593(A173552(n+1))+4`
-/

namespace A173554.P4464593483323417210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158593 (A173552 (n + 1)).toNat + 4

end

end A173554.P4464593483323417210

/-! ## A173554.P3735158341807640719

`∩[A102851(n+1), 38*n²+5]`
-/

namespace A173554.P3735158341807640719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102851 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  38 * n ^ 2 + 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A173554.P3735158341807640719

/-! ## A173554.P13470647702079892876

`p?[38*n²+5]`
-/

namespace A173554.P13470647702079892876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  38 * n ^ 2 + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A173554.P13470647702079892876

/-! ## A173554.P168377266670668311

`record[A006530(38*n²+5)]`
-/

namespace A173554.P168377266670668311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (38 * n ^ 2 + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173554.P168377266670668311

/-! ## A173554.P9869168166061765500

`record[A020639(38*n²+5)]`
-/

namespace A173554.P9869168166061765500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (38 * n ^ 2 + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173554.P9869168166061765500

/-!
# A173555: Primes p such that 5+38*p^2 is also prime.

The programs for A173555, there is no canonical definition to state claims against.
-/

/-! ## A173555.P1634683497087035976

`p?[A173552(n+1)]`
-/

namespace A173555.P1634683497087035976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173555.P1634683497087035976

/-! ## A173555.P5459064969406508295

`p?[record[A173552(A305297(n))]]`
-/

namespace A173555.P5459064969406508295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173552 (A305297 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173555.P5459064969406508295

/-! ## A173555.P7118665102932399872

`p?[record[A173552(A344180(n))]]`
-/

namespace A173555.P7118665102932399872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173552 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173555.P7118665102932399872

/-! ## A173555.P5339655051058770618

`record[A006530(A173552(n+3))]`
-/

namespace A173555.P5339655051058770618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A173552 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173555.P5339655051058770618

/-! ## A173555.P13279261189182959096

`filter[A173552(n+2), A010051(#)]`
-/

namespace A173555.P13279261189182959096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173552 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A173555.P13279261189182959096

/-! ## A173555.P4181016985670953214

`A007913(p?[A173552(Δ[n²]-n)])`
-/

namespace A173555.P4181016985670953214
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173552 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A173555.P4181016985670953214

/-! ## A173555.P13595130482317849471

`∩[A000040(n+1), A173552(n+1)]`
-/

namespace A173555.P13595130482317849471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173552 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173555.P13595130482317849471

/-! ## A173555.P3113359238077656116

`∩[A045319(n+1), A173552(n+1)]`
-/

namespace A173555.P3113359238077656116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173552 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173555.P3113359238077656116

/-! ## A173555.P726363897549938523

`∩[A058853(n+1), A173552(n+1)]`
-/

namespace A173555.P726363897549938523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173552 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173555.P726363897549938523

/-! ## A173555.P14900772947053790130

`∩[A173552(n+1), A182140(n+1)]`
-/

namespace A173555.P14900772947053790130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173552 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173555.P14900772947053790130

/-! ## A173555.P2303101426756317071

`A006530(2*p?[A173552(Δ[n²]-n)])`
-/

namespace A173555.P2303101426756317071
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173552 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A173555.P2303101426756317071

/-! ## A173555.P2741191163505233582

`p?[record[A173552(A133310(n))]]`
-/

namespace A173555.P2741191163505233582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173552 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173555.P2741191163505233582

/-! ## A173555.P6723814111269699820

`filter[A173552(n+3), A080339(#)]`
-/

namespace A173555.P6723814111269699820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173552 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A173555.P6723814111269699820

/-! ## A173555.P14616662338402707318

`∩[A173552(n+1), A240960(n+1)]`
-/

namespace A173555.P14616662338402707318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173552 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173555.P14616662338402707318

/-!
# A173556: Triangle T(n,m) = (prime(n)-1)*(prime(m)- 1) mod 8 read by rows.

The programs for A173556, the canonical program `A173556.P6779888428081724703` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173556 has offset 1).

The definition of A173556 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173556.P6779888428081724703

`((A000040(row(n)+1)-1)*(A000040(col(n)+1)-1))%8`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A173556

/-- `((A000040(row(n)+1)-1)*(A000040(col(n)+1)-1))%8` -/
def P6779888428081724703.Spec : Prop :=
  ∀ n, P6779888428081724703.a n = A173556 (n + 1)

theorem P6779888428081724703.correct : P6779888428081724703.Spec := by
  intro n
  simp only [A173556, Nat.add_sub_cancel]

end A173556

/-! ## A173556.P12272166252829850610

`A003958(A087112(n+1))%8`
-/

namespace A173556.P12272166252829850610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003958 (A087112 (n + 1)).toNat) 8

end

end A173556.P12272166252829850610

namespace A173556

/-- `A003958(A087112(n+1))%8` -/
def P12272166252829850610.Spec : Prop :=
  ∀ n, P12272166252829850610.a n = A173556 (n + 1)

end A173556

/-!
# A173557: a(n) = Product_{primes p dividing n} (p-1).

The programs for A173557, the canonical program `A173557.P308518469657070908` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173557 has offset 1).

The definition of A173557 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A173557.anchor (n : ℕ) (hn : 1 ≤ n) : A173557 n = ∏ p ∈ n.primeFactors, ((p : ℤ) - 1)` in `Proof.A173.A173557`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173557.P16871788838928965716

`A000010(A007947(n+1))`
-/

namespace A173557.P16871788838928965716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A007947 (n + 1)).toNat

end

end A173557.P16871788838928965716

namespace A173557

/-- `A000010(A007947(n+1))` -/
def P16871788838928965716.Spec : Prop :=
  ∀ n, P16871788838928965716.a n = A173557 (n + 1)

end A173557

/-! ## A173557.P2936204599882652548

`A000010(n+1)/A003557(n+1)`
-/

namespace A173557.P2936204599882652548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A173557.P2936204599882652548

namespace A173557

/-- `A000010(n+1)/A003557(n+1)` -/
def P2936204599882652548.Spec : Prop :=
  ∀ n, P2936204599882652548.a n = (A173557 (n + 1) : ℚ)

end A173557

/-! ## A173557.P15666735857375843373

`(-1)^A001221(n+1)*A023900(n+1)`
-/

namespace A173557.P15666735857375843373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A001221 (n + 1) : ℤ) * (A023900 (n + 1) : ℚ)

end

end A173557.P15666735857375843373

namespace A173557

/-- `(-1)^A001221(n+1)*A023900(n+1)` -/
def P15666735857375843373.Spec : Prop :=
  ∀ n, P15666735857375843373.a n = (A173557 (n + 1) : ℚ)

end A173557

/-! ## A173557.P14241723052006999480

`(A020639(n+1)-1)*a(A028234(n+1)-1)` with `a(0)=1, a(1)=1`
-/

namespace A173557.P14241723052006999480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (A020639 (n + 1) - 1) * a (A028234 (n + 1) - 1).toNat

end

end A173557.P14241723052006999480

namespace A173557

/-- `(A020639(n+1)-1)*a(A028234(n+1)-1)` -/
def P14241723052006999480.Spec : Prop :=
  ∀ n, P14241723052006999480.a n = A173557 (n + 1)

end A173557

/-! ## A173557.P7176759401906900012

`∏{p}[1+n, #-1]`
-/

namespace A173557.P7176759401906900012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)

end

end A173557.P7176759401906900012

namespace A173557

/-- `∏{p}[1+n, #-1]` -/
def P7176759401906900012.Spec : Prop :=
  ∀ n, P7176759401906900012.a n = A173557 (n + 1)

theorem P7176759401906900012.correct : P7176759401906900012.Spec := by
  intro n
  simp only [A173557, Nat.add_sub_cancel, A173557.P7176759401906900012.f1, A173557.P7176759401906900012.a, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A173557

/-! ## A173557.P11971239711442768035

`abs(∏{p}[n+1, -(n%#)])`
-/

namespace A173557.P11971239711442768035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ p ∈ Nat.primeFactors (f1 n), (-((n % p : ℕ) : ℤ))|

end

end A173557.P11971239711442768035

namespace A173557

/-- `abs(∏{p}[n+1, -(n%#)])` -/
def P11971239711442768035.Spec : Prop :=
  ∀ n, P11971239711442768035.a n = A173557 (n + 1)

end A173557

/-! ## A173557.P3518390536688286014

`2^∑{p}[n+1, log2(#-1)]`
-/

namespace A173557.P3518390536688286014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 ((p : ℤ) - 1 : ℝ))

end

end A173557.P3518390536688286014

namespace A173557

/-- `2^∑{p}[n+1, log2(#-1)]` -/
def P3518390536688286014.Spec : Prop :=
  ∀ n, P3518390536688286014.a n = (A173557 (n + 1) : ℝ)

end A173557

/-! ## A173557.P3463729891533604825

`abs(∏{p}[2*n-(n-1), 1-#])`
-/

namespace A173557.P3463729891533604825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ p ∈ Nat.primeFactors (f1 n).natAbs, (1 - (p : ℤ))|

end

end A173557.P3463729891533604825

namespace A173557

/-- `abs(∏{p}[2*n-(n-1), 1-#])` -/
def P3463729891533604825.Spec : Prop :=
  ∀ n, P3463729891533604825.a n = A173557 (n + 1)

end A173557

/-! ## A173557.P5146905017889347749

`∏{p}[n+1, n+1+#]%(n+2)`
-/

namespace A173557.P5146905017889347749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 + p)) % (n + 2)

end

end A173557.P5146905017889347749

namespace A173557

/-- `∏{p}[n+1, n+1+#]%(n+2)` -/
def P5146905017889347749.Spec : Prop :=
  ∀ n, (P5146905017889347749.a n : ℤ) = A173557 (n + 1)

end A173557

/-! ## A173557.P11411742395745112938

`abs(A023900(n+1))`
-/

namespace A173557.P11411742395745112938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A023900 (n + 1)|

end

end A173557.P11411742395745112938

namespace A173557

/-- `abs(A023900(n+1))` -/
def P11411742395745112938.Spec : Prop :=
  ∀ n, P11411742395745112938.a n = A173557 (n + 1)

end A173557

/-! ## A173557.P1906345033071445182

`A000010(∏{p}[n+1, #])`
-/

namespace A173557.P1906345033071445182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A173557.P1906345033071445182

namespace A173557

/-- `A000010(∏{p}[n+1, #])` -/
def P1906345033071445182.Spec : Prop :=
  ∀ n, P1906345033071445182.a n = A173557 (n + 1)

end A173557

/-! ## A173557.P6952099345728366866

`A003958(∏{p}[n+1, #])`
-/

namespace A173557.P6952099345728366866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A173557.P6952099345728366866

namespace A173557

/-- `A003958(∏{p}[n+1, #])` -/
def P6952099345728366866.Spec : Prop :=
  ∀ n, P6952099345728366866.a n = A173557 (n + 1)

end A173557

/-! ## A173557.P6808502757677388639

`1-A318841(n+1)+n`
-/

namespace A173557.P6808502757677388639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A318841 (n + 1) + (n : ℤ)

end

end A173557.P6808502757677388639

namespace A173557

/-- `1-A318841(n+1)+n` -/
def P6808502757677388639.Spec : Prop :=
  ∀ n, P6808502757677388639.a n = A173557 (n + 1)

theorem P6808502757677388639.correct : P6808502757677388639.Spec := by
  intro n
  simp only [A173557, Nat.add_sub_cancel, A173557.P6808502757677388639.a, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A318841, A318841.P6517978691631055757.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173557

/-! ## A173557.P13312983434663350748

`A299822(n+1)/(n+1)`
-/

namespace A173557.P13312983434663350748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299822 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A173557.P13312983434663350748

namespace A173557

/-- `A299822(n+1)/(n+1)` -/
def P13312983434663350748.Spec : Prop :=
  ∀ n, P13312983434663350748.a n = (A173557 (n + 1) : ℚ)

end A173557

/-! ## A173557.P15219029724466731009

`A000010(exp(∑{p}[n+1, log(#)]))`
-/

namespace A173557.P15219029724466731009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (Real.exp (∑ p ∈ Nat.primeFactors (f1 n), Real.log (p : ℝ)))).toNat

end

end A173557.P15219029724466731009

namespace A173557

/-- `A000010(exp(∑{p}[n+1, log(#)]))` -/
def P15219029724466731009.Spec : Prop :=
  ∀ n, P15219029724466731009.a n = A173557 (n + 1)

end A173557

/-! ## A173557.P4621708078887295854

`abs(∑{d}[n+1, #*A008683(#)])`
-/

namespace A173557.P4621708078887295854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A008683 d|

end

end A173557.P4621708078887295854

namespace A173557

/-- `abs(∑{d}[n+1, #*A008683(#)])` -/
def P4621708078887295854.Spec : Prop :=
  ∀ n, P4621708078887295854.a n = A173557 (n + 1)

end A173557

/-! ## A173557.P8811466598201451792

`A000010(A099985(n+1))`
-/

namespace A173557.P8811466598201451792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A099985 (n + 1)).toNat

end

end A173557.P8811466598201451792

namespace A173557

/-- `A000010(A099985(n+1))` -/
def P8811466598201451792.Spec : Prop :=
  ∀ n, P8811466598201451792.a n = A173557 (n + 1)

end A173557

/-! ## A173557.P11811790434901021035

`A000010(A204455(n+1))`
-/

namespace A173557.P11811790434901021035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A204455 (n + 1)).toNat

end

end A173557.P11811790434901021035

namespace A173557

/-- `A000010(A204455(n+1))` -/
def P11811790434901021035.Spec : Prop :=
  ∀ n, P11811790434901021035.a n = A173557 (n + 1)

end A173557

/-! ## A173557.P1092771363983359454

`A003958(A302138(n+1))`
-/

namespace A173557.P1092771363983359454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A302138 (n + 1)).toNat

end

end A173557.P1092771363983359454

namespace A173557

/-- `A003958(A302138(n+1))` -/
def P1092771363983359454.Spec : Prop :=
  ∀ n, P1092771363983359454.a n = A173557 (n + 1)

end A173557

/-! ## A173557.P14989100988584806047

`A049200(A322590(n+1))`
-/

namespace A173557.P14989100988584806047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049200 (A322590 (n + 1)).toNat

end

end A173557.P14989100988584806047

namespace A173557

/-- `A049200(A322590(n+1))` -/
def P14989100988584806047.Spec : Prop :=
  ∀ n, P14989100988584806047.a n = A173557 (n + 1)

end A173557

/-! ## A173557.P308518469657070908

`∏{p}[n+1, #-1]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173557

/-- `∏{p}[n+1, #-1]` -/
def P308518469657070908.Spec : Prop :=
  ∀ n, P308518469657070908.a n = A173557 (n + 1)

theorem P308518469657070908.correct : P308518469657070908.Spec := by
  intro n
  simp only [A173557, Nat.add_sub_cancel]

end A173557

/-!
# A173558: a(n) is the smallest number whose factorial has 10^n trailing zeros.

The programs for A173558, there is no canonical definition to state claims against.
-/

/-! ## A173558.P5127883665905825520

`A173292(n*∏{p}[(n+1)/gcd(n+1, ∏{p}[n+1, #]^3), #]²²)`
-/

namespace A173558.P5127883665905825520
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.gcd (n + 1) ((∏ p ∈ Nat.primeFactors (f2 n), p) ^ 3) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173292 (n * ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p) ^ 2) ^ 2)

end

end A173558.P5127883665905825520

/-! ## A173558.P11035704527591396466

`A173292(n)+A000007(A011782(n))`
-/

namespace A173558.P11035704527591396466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173292 n + A000007 (A011782 n).toNat

end

end A173558.P11035704527591396466

/-! ## A173558.P8486116843920916578

`A173292(n)+A079067(A000079(n))`
-/

namespace A173558.P8486116843920916578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173292 n + A079067 (A000079 n).toNat

end

end A173558.P8486116843920916578

/-! ## A173558.P12716858794478642230

`A173292(n)+A137579(A094587(n))`
-/

namespace A173558.P12716858794478642230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173292 n + A137579 (A094587 n).toNat

end

end A173558.P12716858794478642230

/-! ## A173558.P10995175755529208366

`A359162(A100131(n))+A173292(n)`
-/

namespace A173558.P10995175755529208366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359162 (A100131 n).toNat + A173292 n

end

end A173558.P10995175755529208366

/-!
# A173559: a(n)= +2*a(n-2) +4*a(n-3), n>3.

The programs for A173559, the canonical program `A173559.P15309856753454165683` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173559 has offset 0).

The definition of A173559 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-2)+4*a(n-3)` (program `A173559.P15309856753454165683`, by `A173559.P15309856753454165683.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173559.P5888055228334329532

`ogf((1-6x-15x^2-19x^3)/(1-2x^2-4x^3))`
-/

namespace A173559.P5888055228334329532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6, -15, -19] [1, 0, -2, -4] n

end

end A173559.P5888055228334329532

namespace A173559

/-- `ogf((1-6x-15x^2-19x^3)/(1-2x^2-4x^3))` -/
def P5888055228334329532.Spec : Prop :=
  ∀ n, P5888055228334329532.a n = A173559 n

end A173559

/-! ## A173559.P15309856753454165683

`2*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=-6, a(2)=-13, a(3)=-27`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173559

/-- `2*a(n-2)+4*a(n-3)` -/
def P15309856753454165683.Spec : Prop :=
  ∀ n, P15309856753454165683.a n = A173559 n

theorem P15309856753454165683.correct : P15309856753454165683.Spec := by
  intro n
  simp only [A173559]

end A173559

/-! ## A173559.P588811704442509244

`A011782(n)-xor(A038519(n), A135092(n))`
-/

namespace A173559.P588811704442509244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - Int.xor (A038519 n) (A135092 n)

end

end A173559.P588811704442509244

namespace A173559

/-- `A011782(n)-xor(A038519(n), A135092(n))` -/
def P588811704442509244.Spec : Prop :=
  ∀ n, P588811704442509244.a n = A173559 n

end A173559

/-!
# A173562: a(n) = n^2 + floor(n/4).

The programs for A173562, the canonical program `A173562.P3856815624657338522` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173562 has offset 0).

The definition of A173562 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+floor(n/4)` (program `A173562.P3856815624657338522`, by `A173562.P3856815624657338522.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173562.P16853523733032486796

`floor((n+1/8)²)`
-/

namespace A173562.P16853523733032486796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) + (1 : ℚ) / 8) ^ 2⌋

end

end A173562.P16853523733032486796

namespace A173562

/-- `floor((n+1/8)²)` -/
def P16853523733032486796.Spec : Prop :=
  ∀ n, P16853523733032486796.a n = A173562 n

end A173562

/-! ## A173562.P3856815624657338522

`n²+floor(n/4)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173562

/-- `n²+floor(n/4)` -/
def P3856815624657338522.Spec : Prop :=
  ∀ n, P3856815624657338522.a n = A173562 n

theorem P3856815624657338522.correct : P3856815624657338522.Spec := by
  intro n
  simp only [A173562]

end A173562

/-! ## A173562.P3980049593881051430

`ogf((x+2x^2+2x^3+3x^4)/(1-2x+x^2-x^4+2x^5-x^6))`
-/

namespace A173562.P3980049593881051430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 2, 3] [1, -2, 1, 0, -1, 2, -1] n

end

end A173562.P3980049593881051430

namespace A173562

/-- `ogf((x+2x^2+2x^3+3x^4)/(1-2x+x^2-x^4+2x^5-x^6))` -/
def P3980049593881051430.Spec : Prop :=
  ∀ n, P3980049593881051430.a n = A173562 n

end A173562

/-! ## A173562.P10785222237606292112

`∑[2*n-floor(sqrt(n%4))]`
-/

namespace A173562.P10785222237606292112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Nat.sqrt (n % 4) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173562.P10785222237606292112

namespace A173562

/-- `∑[2*n-floor(sqrt(n%4))]` -/
def P10785222237606292112.Spec : Prop :=
  ∀ n, P10785222237606292112.a n = A173562 n

end A173562

/-! ## A173562.P13185413089891518170

`∑[a(n-4)+8]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=5`
-/

namespace A173562.P13185413089891518170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 5] fun n f1 =>
  f1 (n - 4) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173562.P13185413089891518170

namespace A173562

/-- `∑[a(n-4)+8]` -/
def P13185413089891518170.Spec : Prop :=
  ∀ n, (P13185413089891518170.a n : ℤ) = A173562 n

end A173562

/-! ## A173562.P6631504102375279477

`∑[∑[floor(a(n-4))]]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=2, a(4)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A173562.P6631504102375279477
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 2, 3] fun n f2 =>
  f2 (n - 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173562.P6631504102375279477

namespace A173562

/-- `∑[∑[floor(a(n-4))]]` -/
def P6631504102375279477.Spec : Prop :=
  ∀ n, (P6631504102375279477.a n : ℤ) = A173562 n

end A173562

/-! ## A173562.P6469948233840604071

`record[round((1-n)²+(n-3)/4)]`
-/

namespace A173562.P6469948233840604071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((1 - (n : ℤ)) ^ 2 : ℚ) + ((n : ℤ) - 3 : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173562.P6469948233840604071

namespace A173562

/-- `record[round((1-n)²+(n-3)/4)]` -/
def P6469948233840604071.Spec : Prop :=
  ∀ n, P6469948233840604071.a n = A173562 n

end A173562

/-! ## A173562.P15396506689476309294

`∑[∑[a(n-4)%4]]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=2, a(4)=3`
-/

namespace A173562.P15396506689476309294
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 2, 3] fun n f2 =>
  f2 (n - 4) % 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173562.P15396506689476309294

namespace A173562

/-- `∑[∑[a(n-4)%4]]` -/
def P15396506689476309294.Spec : Prop :=
  ∀ n, (P15396506689476309294.a n : ℤ) = A173562 n

end A173562

/-! ## A173562.P6187053685359286500

`∑[gcd(n+2, ∑[n])+2*(n-1)]`
-/

namespace A173562.P6187053685359286500
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (n + 2) (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ) + 2 * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173562.P6187053685359286500

namespace A173562

/-- `∑[gcd(n+2, ∑[n])+2*(n-1)]` -/
def P6187053685359286500.Spec : Prop :=
  ∀ n, P6187053685359286500.a n = A173562 n

end A173562

/-! ## A173562.P18069935059545907083

`ceil((lcm(2*n+1, 2*n)-(n+3))/4)`
-/

namespace A173562.P18069935059545907083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.lcm (2 * n + 1) (2 * n) : ℤ) - (n + 3 : ℤ) : ℚ) / 4⌉

end

end A173562.P18069935059545907083

namespace A173562

/-- `ceil((lcm(2*n+1, 2*n)-(n+3))/4)` -/
def P18069935059545907083.Spec : Prop :=
  ∀ n, P18069935059545907083.a n = A173562 n

end A173562

/-! ## A173562.P11335908974962937106

`∑[A047624(n+1)]`
-/

namespace A173562.P11335908974962937106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173562.P11335908974962937106

namespace A173562

/-- `∑[A047624(n+1)]` -/
def P11335908974962937106.Spec : Prop :=
  ∀ n, P11335908974962937106.a n = A173562 n

end A173562

/-! ## A173562.P4822520213033941266

`∑[A047411(n+1)-1]`
-/

namespace A173562.P4822520213033941266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047411 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173562.P4822520213033941266

namespace A173562

/-- `∑[A047411(n+1)-1]` -/
def P4822520213033941266.Spec : Prop :=
  ∀ n, P4822520213033941266.a n = A173562 n

end A173562

/-! ## A173562.P12043284177546024392

`∑[A047487(n+1)-2]`
-/

namespace A173562.P12043284177546024392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047487 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173562.P12043284177546024392

namespace A173562

/-- `∑[A047487(n+1)-2]` -/
def P12043284177546024392.Spec : Prop :=
  ∀ n, P12043284177546024392.a n = A173562 n

end A173562

/-! ## A173562.P11982819762677564830

`A227719(n+1)%A268581(n)`
-/

namespace A173562.P11982819762677564830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227719 (n + 1)) (A268581 n)

end

end A173562.P11982819762677564830

namespace A173562

/-- `A227719(n+1)%A268581(n)` -/
def P11982819762677564830.Spec : Prop :=
  ∀ n, P11982819762677564830.a n = A173562 n

end A173562

/-! ## A173562.P15539966818087416764

`A038709(2*n)`
-/

namespace A173562.P15539966818087416764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038709 (2 * n)

end

end A173562.P15539966818087416764

namespace A173562

/-- `A038709(2*n)` -/
def P15539966818087416764.Spec : Prop :=
  ∀ n, P15539966818087416764.a n = A173562 n

end A173562

/-! ## A173562.P17988542120627054197

`A011869(3*n+n+1)`
-/

namespace A173562.P17988542120627054197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011869 (3 * n + (n + 1))

end

end A173562.P17988542120627054197

namespace A173562

/-- `A011869(3*n+n+1)` -/
def P17988542120627054197.Spec : Prop :=
  ∀ n, P17988542120627054197.a n = A173562 n

end A173562

/-!
# A173564: a(n) = a(n-1) + a(n-2) - [a(n-3)/4] - [a(n-4)/2] - [a(n-5)/4].

The programs for A173564, the canonical program `A173564.P14503066837053721793` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173564 has offset 0).

The definition of A173564 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 846 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173564.P14503066837053721793

`a(n-1)+a(n-2)-floor(a(n-3)/4)-floor(a(n-4)/2)-floor(a(n-5)/4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173564

/-- `a(n-1)+a(n-2)-floor(a(n-3)/4)-floor(a(n-4)/2)-floor(a(n-5)/4)` -/
def P14503066837053721793.Spec : Prop :=
  ∀ n, P14503066837053721793.a n = A173564 n

theorem P14503066837053721793.correct : P14503066837053721793.Spec := by
  intro n
  simp only [A173564]

end A173564

/-! ## A173564.P2368055763172614845

`A003056(A290993(n+1)+A290987(n))`
-/

namespace A173564.P2368055763172614845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A290993 (n + 1) + A290987 n).toNat

end

end A173564.P2368055763172614845

namespace A173564

/-- `A003056(A290993(n+1)+A290987(n))` -/
def P2368055763172614845.Spec : Prop :=
  ∀ n, P2368055763172614845.a n = A173564 n

end A173564

/-! ## A173564.P16388434601386378632

`A003056(A238517(2*n)+A238517(n+1))`
-/

namespace A173564.P16388434601386378632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A238517 (2 * n) + A238517 (n + 1)).toNat

end

end A173564.P16388434601386378632

namespace A173564

/-- `A003056(A238517(2*n)+A238517(n+1))` -/
def P16388434601386378632.Spec : Prop :=
  ∀ n, P16388434601386378632.a n = A173564 n

end A173564

/-! ## A173564.P7452542918587072425

`A368887(A280908(n))`
-/

namespace A173564.P7452542918587072425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368887 (A280908 n).toNat

end

end A173564.P7452542918587072425

namespace A173564

/-- `A368887(A280908(n))` -/
def P7452542918587072425.Spec : Prop :=
  ∀ n, P7452542918587072425.a n = A173564 n

end A173564

/-! ## A173564.P2725054042041848957

`A295866(A398101(n))`
-/

namespace A173564.P2725054042041848957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295866 (A398101 n).toNat

end

end A173564.P2725054042041848957

namespace A173564

/-- `A295866(A398101(n))` -/
def P2725054042041848957.Spec : Prop :=
  ∀ n, P2725054042041848957.a n = A173564 n

end A173564

/-!
# A173565: Arises in analysis of Algorithm O for generating oriented trees.

The programs for A173565, there is no canonical definition to state claims against.
-/

/-! ## A173565.P14895739635528637383

`A351005(n+2)+A000081(n)-2`
-/

namespace A173565.P14895739635528637383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351005 (n + 2) + A000081 n - 2

end

end A173565.P14895739635528637383

/-! ## A173565.P3033519046090841908

`A122852(n)-A030699(A102441(n+1))`
-/

namespace A173565.P3033519046090841908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122852 n - A030699 (A102441 (n + 1)).toNat

end

end A173565.P3033519046090841908

/-! ## A173565.P876604749809686954

`A232443(A110145(n)+A008611(n))`
-/

namespace A173565.P876604749809686954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232443 (A110145 n + A008611 n).toNat

end

end A173565.P876604749809686954

/-! ## A173565.P12671624947186318378

`A122852(n)-A043567(A001040(n))`
-/

namespace A173565.P12671624947186318378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122852 n - A043567 (A001040 n).toNat

end

end A173565.P12671624947186318378

/-! ## A173565.P6968302680754072211

`A122852(n)-A055642(A090932(n))`
-/

namespace A173565.P6968302680754072211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122852 n - A055642 (A090932 n).toNat

end

end A173565.P6968302680754072211

/-!
# A173569: Least number k such that the function described in A137921 equals n.

The programs for A173569, there is no canonical definition to state claims against.
-/

/-! ## A173569.P12673674442569575113

`A173570(∑[A061603(n)])`
-/

namespace A173569.P12673674442569575113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173570 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A173569.P12673674442569575113

/-! ## A173569.P6804032089976730492

`A173570(A173588(∑[n]))`
-/

namespace A173569.P6804032089976730492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173570 (A173588 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A173569.P6804032089976730492

/-! ## A173569.P1700960642301377812

`A173570(A002998(n)+1)`
-/

namespace A173569.P1700960642301377812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173570 (A002998 n + 1).toNat

end

end A173569.P1700960642301377812

/-! ## A173569.P3158815742632345038

`A173570(A043315(n+1))`
-/

namespace A173569.P3158815742632345038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173570 (A043315 (n + 1)).toNat

end

end A173569.P3158815742632345038

/-! ## A173569.P11270662745168854507

`A173570(A044912(n+1))`
-/

namespace A173569.P11270662745168854507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173570 (A044912 (n + 1)).toNat

end

end A173569.P11270662745168854507

/-!
# A173570: Where A174102 sets a new record.

The programs for A173570, there is no canonical definition to state claims against.
-/

/-! ## A173570.P12798364928035040770

`record[A173569(n+1)]`
-/

namespace A173570.P12798364928035040770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173570.P12798364928035040770

/-! ## A173570.P6468816036348211324

`A173569(lt[A173564(n), A173536(n+3)])`
-/

namespace A173570.P6468816036348211324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173564 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173536 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173569 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A173570.P6468816036348211324

/-! ## A173570.P1978548115237790414

`A173569(lt[A000115(2*n), A141557(2*n+1)])`
-/

namespace A173570.P1978548115237790414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000115 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141557 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173569 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A173570.P1978548115237790414

/-!
# A173578: a(n) = a(n-1) + A073053(a(n-1)).

The programs for A173578, there is no canonical definition to state claims against.
-/

/-! ## A173578.P10699509426085178334

`a(n-1)+A073053(a(n-1))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173578.P10699509426085178334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A073053 (a (n - 1)).toNat

end

end A173578.P10699509426085178334

/-!
# A173580: Primes where each digit is 0, 1, 2, 4, or 8.

The programs for A173580, there is no canonical definition to state claims against.
-/

/-! ## A173580.P17285587165520217540

`∩[A152312(n+1), A386356(n+1)]`
-/

namespace A173580.P17285587165520217540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173580.P17285587165520217540

/-! ## A173580.P4193268685524233470

`∩[A152312(n+1), A307913(n+1)]`
-/

namespace A173580.P4193268685524233470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173580.P4193268685524233470

/-! ## A173580.P6719979241036306844

`∩[A307913(n+1), A386351(n+1)]`
-/

namespace A173580.P6719979241036306844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173580.P6719979241036306844

/-! ## A173580.P15155912126479238114

`p?[A222240(A080228(n+1))]`
-/

namespace A173580.P15155912126479238114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 (A080228 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173580.P15155912126479238114

/-! ## A173580.P10874062548826623160

`p?[A107130(A256305(n)+A080228(n+1))]`
-/

namespace A173580.P10874062548826623160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107130 (A256305 n + A080228 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173580.P10874062548826623160

/-!
# A173581: Numbers k such that tau(sigma(k)) = rad(k).

The programs for A173581, there is no canonical definition to state claims against.
-/

/-! ## A173581.P13089538048778975468

`eq[A007947(n+1), A062068(n+1)]+1`
-/

namespace A173581.P13089538048778975468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062068 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A173581.P13089538048778975468

/-! ## A173581.P9127487871458365990

`eq[(n+1)/A003557(n+1), A000005(A000203(n+1))]+1`
-/

namespace A173581.P9127487871458365990
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A003557 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A173581.P9127487871458365990

/-! ## A173581.P7362893127055879528

`eq[(n+1)/A003557(n+1), A000005(A276528(n+1))]+1`
-/

namespace A173581.P7362893127055879528
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A003557 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A276528 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A173581.P7362893127055879528

/-! ## A173581.P17152054600556243606

`eq[(n+1)/A003557(n+1), A000005(A245092(2*n+1))]+1`
-/

namespace A173581.P17152054600556243606
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A003557 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A245092 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A173581.P17152054600556243606

/-! ## A173581.P14739718464067461785

`filter[A036470(n), A065333(#)]`
-/

namespace A173581.P14739718464067461785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065333 (f1 j).toNat = 1) n)

end

end A173581.P14739718464067461785

/-!
# A173583: Triangle T(n, k, q) = q-binomial(n, k, q^2), for q = 5, read by rows.

The programs for A173583, there is no canonical definition to state claims against.
-/

/-! ## A173583.P258909160445760825

`A037453(A022173(n))`
-/

namespace A173583.P258909160445760825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037453 (A022173 n).toNat

end

end A173583.P258909160445760825

/-! ## A173583.P377652641244668514

`A020655(A022180(n))`
-/

namespace A173583.P377652641244668514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020655 (A022180 n).toNat

end

end A173583.P377652641244668514

/-! ## A173583.P8132720355039362429

`A020654(A022180(n)+1)`
-/

namespace A173583.P8132720355039362429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (A022180 n + 1).toNat

end

end A173583.P8132720355039362429

/-! ## A173583.P1294436289608877429

`A008742(5^A007318(n))`
-/

namespace A173583.P1294436289608877429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008742 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A007318 n : ℤ))).toNat

end

end A173583.P1294436289608877429

/-! ## A173583.P18102302756824318471

`A063476(5^A007318(n))`
-/

namespace A173583.P18102302756824318471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063476 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A007318 n : ℤ))).toNat

end

end A173583.P18102302756824318471

/-!
# A173584: A q-form product triangle based on:q=2;a(n, q)= (Sum[(1 + (-1)^n)*(1 + Sqrt[q])^m, {m, 1, n}] + Sum[(1 + (-1)^n)*(1 - Sqrt[q])^m, {m, 1, n}])/4.

The programs for A173584, there is no canonical definition to state claims against.
-/

/-! ## A173584.P11230516622778033058

`A001951(A172377(n+1))`
-/

namespace A173584.P11230516622778033058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A172377 (n + 1)).toNat

end

end A173584.P11230516622778033058

/-! ## A173584.P3676712459077824594

`A049472(2*A172377(n+1))`
-/

namespace A173584.P3676712459077824594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (2 * A172377 (n + 1)).toNat

end

end A173584.P3676712459077824594

/-! ## A173584.P8677124963125455793

`A049473(2*A172377(n+1))`
-/

namespace A173584.P8677124963125455793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 (2 * A172377 (n + 1)).toNat

end

end A173584.P8677124963125455793

/-! ## A173584.P16058135599008162482

`A172474(4*A172377(n+1))`
-/

namespace A173584.P16058135599008162482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172474 (4 * A172377 (n + 1)).toNat

end

end A173584.P16058135599008162482

/-! ## A173584.P12863647934503474066

`A049472(A172377(n+1)+A172377(n+1))`
-/

namespace A173584.P12863647934503474066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (A172377 (n + 1) + A172377 (n + 1)).toNat

end

end A173584.P12863647934503474066

/-!
# A173585: Triangle T(n, k, q) = c(n, q)/(c(k, q)*c(n-k, q)), where c(n, q) = Product_{j=1..n} t(2*j, q), t(n, q) = (1/4)*( (2 + sqrt(q))^n + (2 - sqrt(q))^n - 2 ), and q = 3, read by rows.

The programs for A173585, there is no canonical definition to state claims against.
-/

/-! ## A173585.P11401994451363078257

`A156599(n)²`
-/

namespace A173585.P11401994451363078257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156599 n ^ 2

end

end A173585.P11401994451363078257

/-! ## A173585.P13048730221721389717

`A156599(xor(1, xor(1, n)))^2`
-/

namespace A173585.P13048730221721389717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156599 (Nat.xor 1 (Nat.xor 1 n)) ^ 2

end

end A173585.P13048730221721389717

/-! ## A173585.P3911269941425736865

`A156599(2*n-n)^2`
-/

namespace A173585.P3911269941425736865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156599 (2 * n - n) ^ 2

end

end A173585.P3911269941425736865

/-! ## A173585.P15632150664862891862

`A156599(A061579(n))*A156599(n)`
-/

namespace A173585.P15632150664862891862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156599 (A061579 n).toNat * A156599 n

end

end A173585.P15632150664862891862

/-! ## A173585.P12494103326903911945

`A156599(log2(A000079(n)))*A156599(n)`
-/

namespace A173585.P12494103326903911945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156599 (SequenceMachineLib.roundAway (Real.logb 2 (A000079 n : ℝ))).toNat * A156599 n

end

end A173585.P12494103326903911945

/-!
# A173587: Primes of the form x^3 + 2y^3, with x,y >0.

The programs for A173587, there is no canonical definition to state claims against.
-/

/-! ## A173587.P16512317039124912896

`∩[A007490(n+1), A219726(n+1)]`
-/

namespace A173587.P16512317039124912896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173587.P16512317039124912896

/-! ## A173587.P15346987972012816082

`p?[A219726(n+1)]`
-/

namespace A173587.P15346987972012816082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219726 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173587.P15346987972012816082

/-! ## A173587.P6947542740832265029

`∩[A040028(n+1), A219726(n+1)]`
-/

namespace A173587.P6947542740832265029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173587.P6947542740832265029

/-! ## A173587.P10941041707968711703

`∩[A000040(n+1), A219726(n+1)]`
-/

namespace A173587.P10941041707968711703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173587.P10941041707968711703

/-! ## A173587.P17679045608099001261

`∩[A004139(n+1), A219726(n+1)]`
-/

namespace A173587.P17679045608099001261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173587.P17679045608099001261

/-! ## A173587.P13221383673863091995

`∩[A006005(n+1), A219726(n+1)]`
-/

namespace A173587.P13221383673863091995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173587.P13221383673863091995

/-! ## A173587.P7633700832001486124

`∩[A008578(n+1), A219726(n+1)]`
-/

namespace A173587.P7633700832001486124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173587.P7633700832001486124

/-! ## A173587.P17161348717443773723

`∩[A033946(n+1), A219726(n+1)]`
-/

namespace A173587.P17161348717443773723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173587.P17161348717443773723

/-! ## A173587.P2763421188600233578

`∩[A045319(n+1), A219726(n+1)]`
-/

namespace A173587.P2763421188600233578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173587.P2763421188600233578

/-! ## A173587.P3869794205959086041

`∩[A046022(n+1), A219726(n+1)]`
-/

namespace A173587.P3869794205959086041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173587.P3869794205959086041

/-! ## A173587.P5705964974521693793

`∩[A051948(n+1), A219726(n+1)]`
-/

namespace A173587.P5705964974521693793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173587.P5705964974521693793

/-! ## A173587.P16910443125928387835

`∩[A062972(n+1), A219726(n+1)]`
-/

namespace A173587.P16910443125928387835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173587.P16910443125928387835

/-! ## A173587.P15580389117310855864

`∩[A064728(n+1), A219726(n+1)]`
-/

namespace A173587.P15580389117310855864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173587.P15580389117310855864

/-! ## A173587.P461492471225817957

`∩[A065091(n+1), A219726(n+1)]`
-/

namespace A173587.P461492471225817957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173587.P461492471225817957

/-! ## A173587.P15057128032511388811

`∩[A065396(n+1), A219726(n+1)]`
-/

namespace A173587.P15057128032511388811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173587.P15057128032511388811

/-! ## A173587.P16291785792483075032

`∩[A067126(n+1), A219726(n+1)]`
-/

namespace A173587.P16291785792483075032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173587.P16291785792483075032

/-! ## A173587.P13276648583386344634

`∩[A106118(n+1), A219726(n+1)]`
-/

namespace A173587.P13276648583386344634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173587.P13276648583386344634

/-! ## A173587.P5846614034105434882

`∩[A106119(n+1), A219726(n+1)]`
-/

namespace A173587.P5846614034105434882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173587.P5846614034105434882

/-! ## A173587.P9180490864671442529

`∩[A116974(n+1), A219726(n+1)]`
-/

namespace A173587.P9180490864671442529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173587.P9180490864671442529

/-! ## A173587.P14100705700548795180

`∩[A158611(n+1), A219726(n+1)]`
-/

namespace A173587.P14100705700548795180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173587.P14100705700548795180

/-!
# A173588: T(n,k) = (k^n)*U(n, (1/k + k)/2), where U(n,x) is the n-th Chebyshev polynomial of the second kind, square array read by antidiagonals upward (n >= 0, k >= 1).

The programs for A173588, there is no canonical definition to state claims against.
-/

/-! ## A173588.P1213036120264545981

`(col(n)+1)*(col(n)+1)*T(n-1,k)+1` with `a(0)=1`
-/

namespace A173588.P1213036120264545981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triCol n + 1) * (SequenceMachineLib.triCol n + 1) * SequenceMachineLib.triUp a n + 1

end

end A173588.P1213036120264545981

/-! ## A173588.P11060394016040519632

`∑{d}[A319075(n), A003963(#)²]`
-/

namespace A173588.P11060394016040519632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003963 d ^ 2

end

end A173588.P11060394016040519632

/-!
# A173589: Integers whose binary representation contains exactly three 1's, no two 1's being adjacent.

The programs for A173589, the canonical program `A173589.P18260503600219272099` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173589 has offset 1).

The definition of A173589 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 679 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173589.P3366352212400203271

`A003714(A179243(n+1))`
-/

namespace A173589.P3366352212400203271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (A179243 (n + 1)).toNat

end

end A173589.P3366352212400203271

namespace A173589

/-- `A003714(A179243(n+1))` -/
def P3366352212400203271.Spec : Prop :=
  ∀ n, P3366352212400203271.a n = A173589 (n + 1)

end A173589

/-! ## A173589.P18260503600219272099

`A003714(eq[3, A007895(n)])`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A173589

/-- `A003714(eq[3, A007895(n)])` -/
def P18260503600219272099.Spec : Prop :=
  ∀ n, P18260503600219272099.a n = A173589 (n + 1)

theorem P18260503600219272099.correct : P18260503600219272099.Spec := by
  intro n
  simp only [A173589, Nat.add_sub_cancel]

end A173589

/-! ## A173589.P9940746139658989734

`A003714(eq[3, n-A219641(n)])`
-/

namespace A173589.P9940746139658989734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A219641 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A173589.P9940746139658989734

namespace A173589

/-- `A003714(eq[3, n-A219641(n)])` -/
def P9940746139658989734.Spec : Prop :=
  ∀ n, P9940746139658989734.a n = A173589 (n + 1)

theorem P9940746139658989734.correct : P9940746139658989734.Spec := by
  intro n
  simp only [A173589, Nat.add_sub_cancel, A173589.P9940746139658989734.f1, A173589.P9940746139658989734.f2, A173589.P9940746139658989734.a, A173589.P18260503600219272099.f1, A173589.P18260503600219272099.f2, A173589.P18260503600219272099.a, A003714, A003714.P565032106299634425.a, A007895, A007895.P13159574906702943091.a, A219641, A219641.P1602393212941527080.a, A003849, A003849.P15070805603138295355.a, A143299, A143299.P15563677956109418683.a, A193564, A193564.P10859496068576138660.a, A026242, A026242.P14627616473925988182.a, A066628, A066628.P4571683134443220888.f1, A066628.P4571683134443220888.a, A002251, A002251.P8899938186717577679.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A173589

/-! ## A173589.P18150164937324821171

`∩[A014311(n+1), A003714(n)]`
-/

namespace A173589.P18150164937324821171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173589.P18150164937324821171

namespace A173589

/-- `∩[A014311(n+1), A003714(n)]` -/
def P18150164937324821171.Spec : Prop :=
  ∀ n, (P18150164937324821171.a n : ℤ) = A173589 (n + 1)

end A173589

/-! ## A173589.P7844790556843908571

`A022340(eq[3, n-A219641(n)])/2`
-/

namespace A173589.P7844790556843908571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A219641 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022340 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A173589.P7844790556843908571

namespace A173589

/-- `A022340(eq[3, n-A219641(n)])/2` -/
def P7844790556843908571.Spec : Prop :=
  ∀ n, P7844790556843908571.a n = (A173589 (n + 1) : ℚ)

end A173589

/-! ## A173589.P9465815813194322355

`A003714(eq[3, A213911(n)+A003849(n)])`
-/

namespace A173589.P9465815813194322355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 n + A003849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A173589.P9465815813194322355

namespace A173589

/-- `A003714(eq[3, A213911(n)+A003849(n)])` -/
def P9465815813194322355.Spec : Prop :=
  ∀ n, P9465815813194322355.a n = A173589 (n + 1)

theorem P9465815813194322355.correct : P9465815813194322355.Spec := by
  intro n
  simp only [A173589, Nat.add_sub_cancel, A173589.P9465815813194322355.f1, A173589.P9465815813194322355.f2, A173589.P9465815813194322355.a, A173589.P18260503600219272099.f1, A173589.P18260503600219272099.f2, A173589.P18260503600219272099.a, A003714, A003714.P565032106299634425.a, A003849, A003849.P15070805603138295355.a, A007895, A007895.P13159574906702943091.a, A213911, A213911.P10704289243874186372.a, A143299, A143299.P15563677956109418683.a, A193564, A193564.P10859496068576138660.a, A026242, A026242.P14627616473925988182.a, A066628, A066628.P4571683134443220888.f1, A066628.P4571683134443220888.a, A002251, A002251.P8899938186717577679.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A173589

/-! ## A173589.P11647088941979971044

`A022340(eq[3, A213911(n)+A003849(n)])/2`
-/

namespace A173589.P11647088941979971044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 n + A003849 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022340 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A173589.P11647088941979971044

namespace A173589

/-- `A022340(eq[3, A213911(n)+A003849(n)])/2` -/
def P11647088941979971044.Spec : Prop :=
  ∀ n, P11647088941979971044.a n = (A173589 (n + 1) : ℚ)

end A173589

/-! ## A173589.P11776226625798207964

`∩[A238247(n+1), A003714(n)]`
-/

namespace A173589.P11776226625798207964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173589.P11776226625798207964

namespace A173589

/-- `∩[A238247(n+1), A003714(n)]` -/
def P11776226625798207964.Spec : Prop :=
  ∀ n, (P11776226625798207964.a n : ℤ) = A173589 (n + 1)

end A173589

/-! ## A173589.P1033049124710469873

`eq[8, A286622(n)]`
-/

namespace A173589.P1033049124710469873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173589.P1033049124710469873

namespace A173589

/-- `eq[8, A286622(n)]` -/
def P1033049124710469873.Spec : Prop :=
  ∀ n, (P1033049124710469873.a n : ℤ) = A173589 (n + 1)

end A173589

/-! ## A173589.P16811843762212685731

`∩[A043683(n+1), A003714(n)]`
-/

namespace A173589.P16811843762212685731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173589.P16811843762212685731

namespace A173589

/-- `∩[A043683(n+1), A003714(n)]` -/
def P16811843762212685731.Spec : Prop :=
  ∀ n, (P16811843762212685731.a n : ℤ) = A173589 (n + 1)

end A173589

/-! ## A173589.P13948670068415285859

`∩[A014311(n+1), A043683(n+1)]`
-/

namespace A173589.P13948670068415285859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173589.P13948670068415285859

namespace A173589

/-- `∩[A014311(n+1), A043683(n+1)]` -/
def P13948670068415285859.Spec : Prop :=
  ∀ n, (P13948670068415285859.a n : ℤ) = A173589 (n + 1)

end A173589

/-! ## A173589.P3226058175940655131

`∩[A043683(n+1), A095736(n+1)]`
-/

namespace A173589.P3226058175940655131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173589.P3226058175940655131

namespace A173589

/-- `∩[A043683(n+1), A095736(n+1)]` -/
def P3226058175940655131.Spec : Prop :=
  ∀ n, (P3226058175940655131.a n : ℤ) = A173589 (n + 1)

end A173589

/-! ## A173589.P12093739644506728242

`∩[A043683(n+1), A151757(n+1)]`
-/

namespace A173589.P12093739644506728242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173589.P12093739644506728242

namespace A173589

/-- `∩[A043683(n+1), A151757(n+1)]` -/
def P12093739644506728242.Spec : Prop :=
  ∀ n, (P12093739644506728242.a n : ℤ) = A173589 (n + 1)

end A173589

/-! ## A173589.P17825016117517689327

`A048678(A014311(n+1))`
-/

namespace A173589.P17825016117517689327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 (A014311 (n + 1)).toNat

end

end A173589.P17825016117517689327

namespace A173589

/-- `A048678(A014311(n+1))` -/
def P17825016117517689327.Spec : Prop :=
  ∀ n, P17825016117517689327.a n = A173589 (n + 1)

end A173589

/-! ## A173589.P4495121279811586273

`A048678(eq[3, A000120(n)])`
-/

namespace A173589.P4495121279811586273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A173589.P4495121279811586273

namespace A173589

/-- `A048678(eq[3, A000120(n)])` -/
def P4495121279811586273.Spec : Prop :=
  ∀ n, P4495121279811586273.a n = A173589 (n + 1)

end A173589

/-! ## A173589.P15424371943744818429

`eq[8, A286589(n)]`
-/

namespace A173589.P15424371943744818429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286589 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173589.P15424371943744818429

namespace A173589

/-- `eq[8, A286589(n)]` -/
def P15424371943744818429.Spec : Prop :=
  ∀ n, (P15424371943744818429.a n : ℤ) = A173589 (n + 1)

end A173589

/-! ## A173589.P2948689035532270464

`eq[8, A209639(2*n)]`
-/

namespace A173589.P2948689035532270464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209639 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173589.P2948689035532270464

namespace A173589

/-- `eq[8, A209639(2*n)]` -/
def P2948689035532270464.Spec : Prop :=
  ∀ n, (P2948689035532270464.a n : ℤ) = A173589 (n + 1)

end A173589

/-! ## A173589.P5528570241134877797

`eq[A071053(A071053(n))+2, A071053(n)]`
-/

namespace A173589.P5528570241134877797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071053 (A071053 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071053 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A173589.P5528570241134877797

namespace A173589

/-- `eq[A071053(A071053(n))+2, A071053(n)]` -/
def P5528570241134877797.Spec : Prop :=
  ∀ n, (P5528570241134877797.a n : ℤ) = A173589 (n + 1)

end A173589

/-! ## A173589.P2824697819267519673

`eq[3, A324466(n)]`
-/

namespace A173589.P2824697819267519673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324466 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173589.P2824697819267519673

namespace A173589

/-- `eq[3, A324466(n)]` -/
def P2824697819267519673.Spec : Prop :=
  ∀ n, (P2824697819267519673.a n : ℤ) = A173589 (n + 1)

end A173589

/-! ## A173589.P5275741879703216241

`eq[8, A245565(n)]`
-/

namespace A173589.P5275741879703216241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173589.P5275741879703216241

namespace A173589

/-- `eq[8, A245565(n)]` -/
def P5275741879703216241.Spec : Prop :=
  ∀ n, (P5275741879703216241.a n : ℤ) = A173589 (n + 1)

end A173589

/-!
# A173590: T(n, k) = k^n*U(n, (1/k + k)/2) + (n + 1)^(k - 1)*U(k - 1, (1/(n + 1) + n + 1)/2), where U(n,x) is the n-th Chebyshev polynomial of the second kind, square array read by antidiagonals (n >= 0, k >= 1).

The programs for A173590, there is no canonical definition to state claims against.
-/

/-! ## A173590.P4897850126454622980

`A173588(A061579(n))+A173588(n)`
-/

namespace A173590.P4897850126454622980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173588 (A061579 n).toNat + A173588 n

end

end A173590.P4897850126454622980

/-! ## A173590.P3522038399802261627

`A173588(n)+A173588(∑[A198954(n)-1])`
-/

namespace A173590.P3522038399802261627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173588 n + A173588 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A173590.P3522038399802261627

/-! ## A173590.P7136990176287133814

`A173588(A038722(n+1)-1)+A173588(n)`
-/

namespace A173590.P7136990176287133814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173588 (A038722 (n + 1) - 1).toNat + A173588 n

end

end A173590.P7136990176287133814

/-! ## A173590.P6945108234826657416

`A047666(n+1)+A033676(A157154(n)²)`
-/

namespace A173590.P6945108234826657416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047666 (n + 1) + A033676 (A157154 n ^ 2).toNat

end

end A173590.P6945108234826657416

/-! ## A173590.P16551497121023969560

`A324760(A339849(n+2))+A002024(n+1)`
-/

namespace A173590.P16551497121023969560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324760 (A339849 (n + 2)).toNat + A002024 (n + 1)

end

end A173590.P16551497121023969560

/-!
# A173593: Numbers having in binary representation exactly two ones in three consecutive digits.

The programs for A173593, the canonical program `A173593.P5985053613389368033` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173593 has offset 1).

The definition of A173593 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173593.P8745954451094389735

`ogf((3+5x-2x^3-4x^4)/(1-2x^2-x^3+2x^5))`
-/

namespace A173593.P8745954451094389735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 5, 0, -2, -4] [1, 0, -2, -1, 0, 2] n

end

end A173593.P8745954451094389735

namespace A173593

/-- `ogf((3+5x-2x^3-4x^4)/(1-2x^2-x^3+2x^5))` -/
def P8745954451094389735.Spec : Prop :=
  ∀ n, P8745954451094389735.a n = A173593 (n + 1)

end A173593

/-! ## A173593.P5985053613389368033

`2*a(n-2)+a(n-3)-2*a(n-5)` with `a(0)=3, a(1)=5, a(2)=6, a(3)=11, a(4)=13`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173593

/-- `2*a(n-2)+a(n-3)-2*a(n-5)` -/
def P5985053613389368033.Spec : Prop :=
  ∀ n, P5985053613389368033.a n = A173593 (n + 1)

theorem P5985053613389368033.correct : P5985053613389368033.Spec := by
  intro n
  simp only [A173593, Nat.add_sub_cancel]

end A173593

/-! ## A173593.P811264763252533151

`or(2*a(n-2), a(n-3))` with `a(0)=3, a(1)=5, a(2)=6`
-/

namespace A173593.P811264763252533151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 5, 6] fun n a =>
  Nat.lor (2 * a (n - 2)) (a (n - 3))

end

end A173593.P811264763252533151

namespace A173593

/-- `or(2*a(n-2), a(n-3))` -/
def P811264763252533151.Spec : Prop :=
  ∀ n, (P811264763252533151.a n : ℤ) = A173593 (n + 1)

end A173593

/-! ## A173593.P17332129082553869829

`(n+1)²%3+2*a(n-2)` with `a(0)=3, a(1)=5`
-/

namespace A173593.P17332129082553869829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 5] fun n a =>
  (n + 1) ^ 2 % 3 + 2 * a (n - 2)

end

end A173593.P17332129082553869829

namespace A173593

/-- `(n+1)²%3+2*a(n-2)` -/
def P17332129082553869829.Spec : Prop :=
  ∀ n, (P17332129082553869829.a n : ℤ) = A173593 (n + 1)

end A173593

/-! ## A173593.P15109894293854646394

`and(1, a(n-3))+2*a(n-2)` with `a(0)=3, a(1)=5, a(2)=6`
-/

namespace A173593.P15109894293854646394
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 5, 6] fun n a =>
  Nat.land 1 (a (n - 3)) + 2 * a (n - 2)

end

end A173593.P15109894293854646394

namespace A173593

/-- `and(1, a(n-3))+2*a(n-2)` -/
def P15109894293854646394.Spec : Prop :=
  ∀ n, (P15109894293854646394.a n : ℤ) = A173593 (n + 1)

end A173593

/-! ## A173593.P17789255785480259897

`xor(2*a(n-2), and(1, a(n-3)))` with `a(0)=3, a(1)=5, a(2)=6`
-/

namespace A173593.P17789255785480259897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 5, 6] fun n a =>
  Nat.xor (2 * a (n - 2)) (Nat.land 1 (a (n - 3)))

end

end A173593.P17789255785480259897

namespace A173593

/-- `xor(2*a(n-2), and(1, a(n-3)))` -/
def P17789255785480259897.Spec : Prop :=
  ∀ n, (P17789255785480259897.a n : ℤ) = A173593 (n + 1)

end A173593

/-! ## A173593.P1349034380603921600

`or(1, a(n-1))+and(a(n-1), a(n-2))` with `a(0)=3, a(1)=5`
-/

namespace A173593.P1349034380603921600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 5] fun n a =>
  Nat.lor 1 (a (n - 1)) + Nat.land (a (n - 1)) (a (n - 2))

end

end A173593.P1349034380603921600

namespace A173593

/-- `or(1, a(n-1))+and(a(n-1), a(n-2))` -/
def P1349034380603921600.Spec : Prop :=
  ∀ n, (P1349034380603921600.a n : ℤ) = A173593 (n + 1)

end A173593

/-!
# A173594: Near-repdigit emirps.

The programs for A173594, there is no canonical definition to state claims against.
-/

/-! ## A173594.P3458905174872519219

`∩[A006567(n+1), A164937(n+1)]`
-/

namespace A173594.P3458905174872519219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173594.P3458905174872519219

/-! ## A173594.P1829345500630874922

`∪[A173595(n+1), A173596(n+1)]`
-/

namespace A173594.P1829345500630874922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A173594.P1829345500630874922

/-! ## A173594.P3087295297386118829

`∩[A068893(n+1), A164937(n+1)]`
-/

namespace A173594.P3087295297386118829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173594.P3087295297386118829

/-! ## A173594.P18327782058172785567

`∩[A109019(n+1), A164937(n+1)]`
-/

namespace A173594.P18327782058172785567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173594.P18327782058172785567

/-! ## A173594.P2825853103338910657

`∩[A164937(n+1), A350867(n+1)]`
-/

namespace A173594.P2825853103338910657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173594.P2825853103338910657

/-!
# A173595: The smaller member of a near-repdigit emirp pair.

The programs for A173595, there is no canonical definition to state claims against.
-/

/-! ## A173595.P1069902450517234241

`∩[A109308(n+1), A164937(n+1)]`
-/

namespace A173595.P1069902450517234241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173595.P1069902450517234241

/-! ## A173595.P8959385212848247400

`∩[A109308(n+1), A173594(n+1)]`
-/

namespace A173595.P8959385212848247400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173595.P8959385212848247400

/-! ## A173595.P11349073457923321756

`∩[A141263(n+1), A173594(n+1)]`
-/

namespace A173595.P11349073457923321756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173595.P11349073457923321756

/-! ## A173595.P13045967412178672393

`∩[A109308(n+1), p?[A210666(n+1)]]`
-/

namespace A173595.P13045967412178672393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109308 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173595.P13045967412178672393

/-!
# A173596: The larger member of a near-repdigit emirp pair.

The programs for A173596, there is no canonical definition to state claims against.
-/

/-! ## A173596.P6102181305295578600

`∩[A099180(n+1), A173594(n+1)]`
-/

namespace A173596.P6102181305295578600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173596.P6102181305295578600

/-! ## A173596.P17330766765624297336

`∩[A109309(n+1), A164937(n+1)]`
-/

namespace A173596.P17330766765624297336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173596.P17330766765624297336

/-! ## A173596.P3647384757568975001

`∩[A109309(n+1), A173594(n+1)]`
-/

namespace A173596.P3647384757568975001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173596.P3647384757568975001

/-!
# A173597: a(n) = a(n-1) + a(n-2) - [a(n-4)/4] - [a(n-5)/2] - [a(n-6)/4].

The programs for A173597, there is no canonical definition to state claims against.
-/

/-! ## A173597.P11378276613063338754

`floor(sqrt(floor((A186285(2^n)+1)/ϕ)+1))`
-/

namespace A173597.P11378276613063338754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (⌊(A186285 (2 ^ n) + 1 : ℝ) / Real.goldenRatio⌋ + 1)

end

end A173597.P11378276613063338754

/-! ## A173597.P18200031905406680485

`A000006(A164362(n+1))`
-/

namespace A173597.P18200031905406680485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A164362 (n + 1)).toNat

end

end A173597.P18200031905406680485

/-! ## A173597.P4129489590049915858

`A249728(∑[A060144(2^n-1)]+1)`
-/

namespace A173597.P4129489590049915858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (2 ^ n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A173597.P4129489590049915858

/-! ## A173597.P4195128697932814846

`A000006(A011782(n)+A008930(n))`
-/

namespace A173597.P4195128697932814846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A011782 n + A008930 n).toNat

end

end A173597.P4195128697932814846

/-! ## A173597.P1274125892421170259

`A026819(A055244(n)+A001045(n))`
-/

namespace A173597.P1274125892421170259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A055244 n + A001045 n).toNat

end

end A173597.P1274125892421170259

/-!
# A173598: Period 6: repeat [1, 8, 7, 2, 4, 5].

The programs for A173598, the canonical program `A173598.P9996692439297068335` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173598 has offset 0).

The definition of A173598 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A173598.anchor (n : ℕ) : A173598 n = (([1, 8, 7, 2, 4, 5].getD (n % 6) 0 : ℕ) : ℤ)` in `Proof.A173.A173598`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173598.P9996692439297068335

`a(n-6)` with `a(0)=1, a(1)=8, a(2)=7, a(3)=2, a(4)=4, a(5)=5`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173598

/-- `a(n-6)` -/
def P9996692439297068335.Spec : Prop :=
  ∀ n, (P9996692439297068335.a n : ℤ) = A173598 n

theorem P9996692439297068335.correct : P9996692439297068335.Spec := by
  intro n
  simp only [A173598]

end A173598

/-!
# A173599: a(n) = a(n-1) + a(n-2) - [a(n-2)/4] - [a(n-4)/2] - [a(n-6)/4].

The programs for A173599, there is no canonical definition to state claims against.
-/

/-! ## A173599.P5971040502193958462

`A081227(A007502(n+1))+A008640(n)`
-/

namespace A173599.P5971040502193958462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081227 (A007502 (n + 1)).toNat + A008640 n

end

end A173599.P5971040502193958462

/-! ## A173599.P252891274510584123

`A035978(n)+A035562(A187829(n+1))`
-/

namespace A173599.P252891274510584123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035978 n + A035562 (A187829 (n + 1)).toNat

end

end A173599.P252891274510584123

/-! ## A173599.P2507675008092072870

`A266441(A266446(n))+A000041(n)`
-/

namespace A173599.P2507675008092072870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266441 (A266446 n).toNat + A000041 n

end

end A173599.P2507675008092072870

/-! ## A173599.P17300352027977795347

`A266441(A266446(n))+∑[A002865(n)]`
-/

namespace A173599.P17300352027977795347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266441 (A266446 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173599.P17300352027977795347

/-! ## A173599.P14150801538211557899

`A143731(A014668(n+1))+A000041(n)`
-/

namespace A173599.P14150801538211557899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143731 (A014668 (n + 1)).toNat + A000041 n

end

end A173599.P14150801538211557899

