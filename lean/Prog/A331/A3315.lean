import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C039
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C003
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A331500: a(n) = A302112(n) * n! * 2^n.

The programs for A331500, there is no canonical definition to state claims against.
-/

/-! ## A331500.P15337942477099552074

`A302112(n)*n!*2^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A331500.P15337942477099552074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302112 n * (Nat.factorial n : ℤ) * (2 ^ n : ℤ)

end

end A331500.P15337942477099552074

/-! ## A331500.P4216803060556954870

`A000165(n)*A302112(n)`
-/

namespace A331500.P4216803060556954870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 n * A302112 n

end

end A331500.P4216803060556954870

/-! ## A331500.P10540973650111463983

`n!*A302112(n)*2^n`
-/

namespace A331500.P10540973650111463983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A302112 n * (2 ^ n : ℤ)

end

end A331500.P10540973650111463983

/-! ## A331500.P7130118968017055887

`A037223(2*n)*A302112(n)`
-/

namespace A331500.P7130118968017055887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037223 (2 * n) * A302112 n

end

end A331500.P7130118968017055887

/-! ## A331500.P6823153827052263417

`A037223(2*n)*A138464(A058331(n))`
-/

namespace A331500.P6823153827052263417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037223 (2 * n) * A138464 (A058331 n).toNat

end

end A331500.P6823153827052263417

/-!
# A331503: a(n) is the number of sets modulo n which can be formed by a finite arithmetic sequence.

The programs for A331503, the canonical program `A331503.P7437171579320171255` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331503 has offset 1).

The definition of A331503 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331503.P7437171579320171255

`A000203(n+1)+(n+1)*(A000005(n+1)-1-3*floor((n+1)/2)+∑{#}[floor((n+1)/2)-1, (n+1)/gcd(n+1, #+1)])`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A331503

/-- `A000203(n+1)+(n+1)*(A000005(n+1)-1-3*floor((n+1)/2)+∑{#}[floor((n+1)/2)-1, (n+1)/gcd(n+1, #+1)])` -/
def P7437171579320171255.Spec : Prop :=
  ∀ n, P7437171579320171255.a n = (A331503 (n + 1) : ℚ)

end A331503

/-!
# A331504: Number of labeled graphs with n nodes and floor(n*(n-1)/4) edges.

The programs for A331504, the canonical program `A331504.P15145428303646094946` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331504 has offset 1).

The definition of A331504 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331504.P15145428303646094946

`C(C(n+1, 2), floor((n+1)*n/4))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A331504

/-- `C(C(n+1, 2), floor((n+1)*n/4))` -/
def P15145428303646094946.Spec : Prop :=
  ∀ n, (P15145428303646094946.a n : ℤ) = A331504 (n + 1)

theorem P15145428303646094946.correct : P15145428303646094946.Spec := by
  intro n
  simp only [A331504, Nat.add_sub_cancel]

end A331504

/-! ## A331504.P10157305021635705596

`A001405(∑[n])`
-/

namespace A331504.P10157305021635705596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A331504.P10157305021635705596

namespace A331504

/-- `A001405(∑[n])` -/
def P10157305021635705596.Spec : Prop :=
  ∀ n, P10157305021635705596.a n = A331504 (n + 1)

end A331504

/-! ## A331504.P827306222656595383

`abs(A126930(∑[n]))`
-/

namespace A331504.P827306222656595383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A126930 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A331504.P827306222656595383

namespace A331504

/-- `abs(A126930(∑[n]))` -/
def P827306222656595383.Spec : Prop :=
  ∀ n, P827306222656595383.a n = A331504 (n + 1)

end A331504

/-! ## A331504.P2037214557246080018

`A014495(∑[n])+1`
-/

namespace A331504.P2037214557246080018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A331504.P2037214557246080018

namespace A331504

/-- `A014495(∑[n])+1` -/
def P2037214557246080018.Spec : Prop :=
  ∀ n, P2037214557246080018.a n = A331504 (n + 1)

end A331504

/-! ## A331504.P15748329993038531800

`A210736(∑[n]+1)`
-/

namespace A331504.P15748329993038531800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A331504.P15748329993038531800

namespace A331504

/-- `A210736(∑[n]+1)` -/
def P15748329993038531800.Spec : Prop :=
  ∀ n, P15748329993038531800.a n = A331504 (n + 1)

end A331504

/-!
# A331505: Number of labeled graphs with n nodes and floor(n/2) edges.

The programs for A331505, the canonical program `A331505.P1825187625864276437` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331505 has offset 1).

The definition of A331505 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331505.P1825187625864276437

`C(C(n+1, 2), floor((n+1)/2))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A331505

/-- `C(C(n+1, 2), floor((n+1)/2))` -/
def P1825187625864276437.Spec : Prop :=
  ∀ n, (P1825187625864276437.a n : ℤ) = A331505 (n + 1)

theorem P1825187625864276437.correct : P1825187625864276437.Spec := by
  intro n
  simp only [A331505, Nat.add_sub_cancel]

end A331505

/-! ## A331505.P8947298629921066872

`C(∑[n], ceil(n/2))`
-/

namespace A331505.P8947298629921066872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) ⌈(n : ℚ) / 2⌉.toNat

end

end A331505.P8947298629921066872

namespace A331505

/-- `C(∑[n], ceil(n/2))` -/
def P8947298629921066872.Spec : Prop :=
  ∀ n, (P8947298629921066872.a n : ℤ) = A331505 (n + 1)

end A331505

/-! ## A331505.P15139345527846360300

`lcm((-1)^n, C(∑[n], floor(n²/2)))`
-/

namespace A331505.P15139345527846360300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) ⌊(n ^ 2 : ℚ) / 2⌋.toNat : ℤ)

end

end A331505.P15139345527846360300

namespace A331505

/-- `lcm((-1)^n, C(∑[n], floor(n²/2)))` -/
def P15139345527846360300.Spec : Prop :=
  ∀ n, (P15139345527846360300.a n : ℤ) = A331505 (n + 1)

end A331505

/-! ## A331505.P3835290521310262358

`A000007(n)+C(∑[n], A065033(n))`
-/

namespace A331505.P3835290521310262358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (A065033 n).toNat : ℤ)

end

end A331505.P3835290521310262358

namespace A331505

/-- `A000007(n)+C(∑[n], A065033(n))` -/
def P3835290521310262358.Spec : Prop :=
  ∀ n, P3835290521310262358.a n = A331505 (n + 1)

end A331505

/-! ## A331505.P18154617716326854933

`A084546(A084570(n))`
-/

namespace A331505.P18154617716326854933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084546 (A084570 n).toNat

end

end A331505.P18154617716326854933

namespace A331505

/-- `A084546(A084570(n))` -/
def P18154617716326854933.Spec : Prop :=
  ∀ n, P18154617716326854933.a n = A331505 (n + 1)

end A331505

/-!
# A331506: Least primitive root g < prime(n) of the n-th prime with g a product of two Fibonacci numbers, or 0 if such a number g does not exist.

The programs for A331506, there is no canonical definition to state claims against.
-/

/-! ## A331506.P7004519342390271822

`A102516(A102516(A001918(n+1)))`
-/

namespace A331506.P7004519342390271822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102516 (A102516 (A001918 (n + 1)).toNat).toNat

end

end A331506.P7004519342390271822

/-! ## A331506.P9873587821846448034

`∏{p}[A001918(n+1), A002233(A002223(#))]`
-/

namespace A331506.P9873587821846448034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002233 (A002223 p).toNat

end

end A331506.P9873587821846448034

/-! ## A331506.P781273517655297142

`∏{p}[A001918(n+1), A001918(A204185(#))]`
-/

namespace A331506.P781273517655297142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001918 (A204185 p).toNat

end

end A331506.P781273517655297142

/-! ## A331506.P16586247067640740378

`A153678(A001918(n+1))%A001950(n+1)`
-/

namespace A331506.P16586247067640740378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153678 (A001918 (n + 1)).toNat) (A001950 (n + 1))

end

end A331506.P16586247067640740378

/-!
# A331507: Water retention for an n X n number square with the maximum number of ponds using a simple filling pattern.

The programs for A331507, there is no canonical definition to state claims against.
-/

/-! ## A331507.P11782647289280186899

`A051162(A081135(n))`
-/

namespace A331507.P11782647289280186899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (A081135 n).toNat

end

end A331507.P11782647289280186899

/-! ## A331507.P15188106501690826271

`A094727(A081135(n)+1)-1`
-/

namespace A331507.P15188106501690826271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (A081135 n + 1).toNat - 1

end

end A331507.P15188106501690826271

/-! ## A331507.P4229408735130465673

`A353392(3*n+1)+1-A230935(n+1)`
-/

namespace A331507.P4229408735130465673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353392 (3 * n + 1) + 1 - A230935 (n + 1)

end

end A331507.P4229408735130465673

/-!
# A331508: Array read by antidiagonals: A(n,k) is the number of nonisomorphic T_0 n-regular set multipartitions (multisets of sets) on a k-set.

The programs for A331508, there is no canonical definition to state claims against.
-/

/-! ## A331508.P9893830679593272975

`A048766(A326474(n)+A169585(n))`
-/

namespace A331508.P9893830679593272975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A326474 n + A169585 n).toNat

end

end A331508.P9893830679593272975

/-! ## A331508.P4912087489705985694

`A048766(A326474(n)+A209229(n))`
-/

namespace A331508.P4912087489705985694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A326474 n + A209229 n).toNat

end

end A331508.P4912087489705985694

/-! ## A331508.P3050610253919149107

`A048766(A331039(n)+A326474(n))`
-/

namespace A331508.P3050610253919149107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A331039 n + A326474 n).toNat

end

end A331508.P3050610253919149107

/-! ## A331508.P15306531852449705078

`A048766(A331509(n)+A326474(n))`
-/

namespace A331508.P15306531852449705078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A331509 n + A326474 n).toNat

end

end A331508.P15306531852449705078

/-! ## A331508.P1082541141949357212

`A048766(A326474(n-A048298(n)))`
-/

namespace A331508.P1082541141949357212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A326474 ((n : ℤ) - A048298 n).toNat).toNat

end

end A331508.P1082541141949357212

/-!
# A331509: Array read by antidiagonals: A(n,k) is the number of nonisomorphic T_0 n-regular set-systems on a k-set.

The programs for A331509, there is no canonical definition to state claims against.
-/

/-! ## A331509.P13711684570592885044

`A072660(A331039(n))`
-/

namespace A331509.P13711684570592885044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072660 (A331039 n).toNat

end

end A331509.P13711684570592885044

/-! ## A331509.P6793291753463573562

`A106457(A331039(n)+1)`
-/

namespace A331509.P6793291753463573562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106457 (A331039 n + 1).toNat

end

end A331509.P6793291753463573562

/-! ## A331509.P12940376051915586484

`A022307(3*A331039(n))`
-/

namespace A331509.P12940376051915586484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 (3 * A331039 n).toNat

end

end A331509.P12940376051915586484

/-! ## A331509.P6410449264216381142

`A038575(3*A331039(n))`
-/

namespace A331509.P6410449264216381142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 (3 * A331039 n).toNat

end

end A331509.P6410449264216381142

/-! ## A331509.P17631522687085098752

`A330956(A331039(n)+16)`
-/

namespace A331509.P17631522687085098752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330956 (A331039 n + 16).toNat

end

end A331509.P17631522687085098752

/-!
# A331512: a(n) = Sum_{k=0..n} n^(n-k) * (n+k+1) * binomial(n,k) * binomial(n+k,k).

The programs for A331512, the canonical program `A331512.P13936320668356076919` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331512 has offset 0).

The definition of A331512 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331512.P13936320668356076919

`∑{#}[n, (n+1)^#*(#+1)*C(n+1, #+1)²]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A331512

/-- `∑{#}[n, (n+1)^#*(#+1)*C(n+1, #+1)²]` -/
def P13936320668356076919.Spec : Prop :=
  ∀ n, (P13936320668356076919.a n : ℤ) = A331512 n

theorem P13936320668356076919.correct : P13936320668356076919.Spec := by
  intro n
  simp only [A331512]

end A331512

/-! ## A331512.P11537420905242601936

`∑{#}[n, n^(n-#)*(n+#+1)*C(n, #)*C(n+#, #)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A331512.P11537420905242601936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (n : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (n + k + 1 : ℚ) * (Nat.choose n k : ℚ) * (Nat.choose (n + k) k : ℚ)

end

end A331512.P11537420905242601936

namespace A331512

/-- `∑{#}[n, n^(n-#)*(n+#+1)*C(n, #)*C(n+#, #)]` -/
def P11537420905242601936.Spec : Prop :=
  ∀ n, P11537420905242601936.a n = (A331512 n : ℚ)

end A331512

/-! ## A331512.P8329825152919056057

`A187021(n+1)-A367256(n+1)`
-/

namespace A331512.P8329825152919056057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187021 (n + 1) - A367256 (n + 1)

end

end A331512.P8329825152919056057

namespace A331512

/-- `A187021(n+1)-A367256(n+1)` -/
def P8329825152919056057.Spec : Prop :=
  ∀ n, P8329825152919056057.a n = A331512 n

end A331512

/-! ## A331512.P199923050493669787

`A331511(∑[4*n+6])`
-/

namespace A331512.P199923050493669787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331511 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A331512.P199923050493669787

namespace A331512

/-- `A331511(∑[4*n+6])` -/
def P199923050493669787.Spec : Prop :=
  ∀ n, P199923050493669787.a n = A331512 n

end A331512

/-!
# A331513: a(n) = Sum_{k=0..n} (-n)^(n-k) * (n+k+1) * binomial(n,k) * binomial(n+k,k).

The programs for A331513, the canonical program `A331513.P10611487940447653603` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331513 has offset 0).

The definition of A331513 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331513.P10611487940447653603

`∑{#}[n, (-n)^(n-#)*(n+#+1)*C(n, #)*C(n+#, #)]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A331513

/-- `∑{#}[n, (-n)^(n-#)*(n+#+1)*C(n, #)*C(n+#, #)]` -/
def P10611487940447653603.Spec : Prop :=
  ∀ n, P10611487940447653603.a n = (A331513 n : ℚ)

end A331513

/-!
# A331515: Expansion of 1/(1 - 8*x + 4*x^2)^(3/2).

The programs for A331515, the canonical program `A331515.P3171371485173106526` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331515 has offset 0).

The definition of A331515 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331515.P11488062971383284594

`(n+2)/2*∑{#}[n, 3^#*C(n+1, #)*C(n+1, #+1)]`
-/

namespace A331515.P11488062971383284594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * ((∑ k ∈ Finset.range (f1 n + 1), 3 ^ k * Nat.choose (n + 1) k * Nat.choose (n + 1) (k + 1) : ℕ) : ℚ)

end

end A331515.P11488062971383284594

namespace A331515

/-- `(n+2)/2*∑{#}[n, 3^#*C(n+1, #)*C(n+1, #+1)]` -/
def P11488062971383284594.Spec : Prop :=
  ∀ n, P11488062971383284594.a n = (A331515 n : ℚ)

end A331515

/-! ## A331515.P3171371485173106526

`C(n+2, 2)*A007564(n+1)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A331515

/-- `C(n+2, 2)*A007564(n+1)` -/
def P3171371485173106526.Spec : Prop :=
  ∀ n, P3171371485173106526.a n = A331515 n

theorem P3171371485173106526.correct : P3171371485173106526.Spec := by
  intro n
  simp only [A331515]

end A331515

/-! ## A331515.P6599514631395496719

`(n+1)*Δ[A363570(n)]`
-/

namespace A331515.P6599514631395496719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A331515.P6599514631395496719

namespace A331515

/-- `(n+1)*Δ[A363570(n)]` -/
def P6599514631395496719.Spec : Prop :=
  ∀ n, P6599514631395496719.a n = A331515 n

end A331515

/-! ## A331515.P16149986033331317930

`∑[n+1]*A007564(n+1)`
-/

namespace A331515.P16149986033331317930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A007564 (n + 1)

end

end A331515.P16149986033331317930

namespace A331515

/-- `∑[n+1]*A007564(n+1)` -/
def P16149986033331317930.Spec : Prop :=
  ∀ n, P16149986033331317930.a n = A331515 n

end A331515

/-! ## A331515.P7334225778050744848

`(n+1)/3*A054122(n+1)`
-/

namespace A331515.P7334225778050744848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A054122 (n + 1) : ℚ)

end

end A331515.P7334225778050744848

namespace A331515

/-- `(n+1)/3*A054122(n+1)` -/
def P7334225778050744848.Spec : Prop :=
  ∀ n, P7334225778050744848.a n = (A331515 n : ℚ)

end A331515

/-! ## A331515.P16051043190249021903

`A331323(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A331515.P16051043190249021903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A331323 n + 2 * a (n - 1)

end

end A331515.P16051043190249021903

namespace A331515

/-- `A331323(n)+2*a(n-1)` -/
def P16051043190249021903.Spec : Prop :=
  ∀ n, P16051043190249021903.a n = A331515 n

end A331515

/-! ## A331515.P15575235114739176721

`record[A331514(A052905(n))]`
-/

namespace A331515.P15575235114739176721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331514 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331515.P15575235114739176721

namespace A331515

/-- `record[A331514(A052905(n))]` -/
def P15575235114739176721.Spec : Prop :=
  ∀ n, P15575235114739176721.a n = A331515 n

end A331515

/-! ## A331515.P10356044686971835593

`A331514(A052905(n+2))`
-/

namespace A331515.P10356044686971835593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331514 (A052905 (n + 2)).toNat

end

end A331515.P10356044686971835593

namespace A331515

/-- `A331514(A052905(n+2))` -/
def P10356044686971835593.Spec : Prop :=
  ∀ n, P10356044686971835593.a n = A331515 n

end A331515

/-! ## A331515.P790774198973100207

`record[A331514(A055999(n)+1)]`
-/

namespace A331515.P790774198973100207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331514 (A055999 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331515.P790774198973100207

namespace A331515

/-- `record[A331514(A055999(n)+1)]` -/
def P790774198973100207.Spec : Prop :=
  ∀ n, P790774198973100207.a n = A331515 n

end A331515

/-! ## A331515.P3365595458525942190

`A331514(A000096(n+4)-4)`
-/

namespace A331515.P3365595458525942190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331514 (A000096 (n + 4) - 4).toNat

end

end A331515.P3365595458525942190

namespace A331515

/-- `A331514(A000096(n+4)-4)` -/
def P3365595458525942190.Spec : Prop :=
  ∀ n, P3365595458525942190.a n = A331515 n

end A331515

/-!
# A331516: Expansion of 1/(1 - 10*x + 9*x^2)^(3/2).

The programs for A331516, the canonical program `A331516.P10548894907357545297` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331516 has offset 0).

The definition of A331516 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331516.P12176612722375275768

`(n+2)/2*∑{#}[n, 4^#*C(n+1, #)*C(n+1, #+1)]`
-/

namespace A331516.P12176612722375275768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * ((∑ k ∈ Finset.range (f1 n + 1), 4 ^ k * Nat.choose (n + 1) k * Nat.choose (n + 1) (k + 1) : ℕ) : ℚ)

end

end A331516.P12176612722375275768

namespace A331516

/-- `(n+2)/2*∑{#}[n, 4^#*C(n+1, #)*C(n+1, #+1)]` -/
def P12176612722375275768.Spec : Prop :=
  ∀ n, P12176612722375275768.a n = (A331516 n : ℚ)

end A331516

/-! ## A331516.P14867542490746379425

`∑{#}[n, 2^#*(2*#+1)*C(2*#, #)*C(n+2, n-#)]`
-/

namespace A331516.P14867542490746379425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), 2 ^ k * (2 * k + 1) * Nat.choose (2 * k) k * Nat.choose (n + 2) ((n : ℤ) - (k : ℤ)).toNat

end

end A331516.P14867542490746379425

namespace A331516

/-- `∑{#}[n, 2^#*(2*#+1)*C(2*#, #)*C(n+2, n-#)]` -/
def P14867542490746379425.Spec : Prop :=
  ∀ n, (P14867542490746379425.a n : ℤ) = A331516 n

end A331516

/-! ## A331516.P10548894907357545297

`C(n+2, 2)*A059231(n+1)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A331516

/-- `C(n+2, 2)*A059231(n+1)` -/
def P10548894907357545297.Spec : Prop :=
  ∀ n, P10548894907357545297.a n = A331516 n

theorem P10548894907357545297.correct : P10548894907357545297.Spec := by
  intro n
  simp only [A331516]

end A331516

/-! ## A331516.P14205679380023641572

`∑[A383946(n)]`
-/

namespace A331516.P14205679380023641572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331516.P14205679380023641572

namespace A331516

/-- `∑[A383946(n)]` -/
def P14205679380023641572.Spec : Prop :=
  ∀ n, P14205679380023641572.a n = A331516 n

end A331516

/-! ## A331516.P8400364837833360993

`∑[∑[A387208(n)]]`
-/

namespace A331516.P8400364837833360993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387208 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331516.P8400364837833360993

namespace A331516

/-- `∑[∑[A387208(n)]]` -/
def P8400364837833360993.Spec : Prop :=
  ∀ n, P8400364837833360993.a n = A331516 n

end A331516

/-! ## A331516.P12371243776701887000

`∑[n+1]*A059231(n+1)`
-/

namespace A331516.P12371243776701887000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A059231 (n + 1)

end

end A331516.P12371243776701887000

namespace A331516

/-- `∑[n+1]*A059231(n+1)` -/
def P12371243776701887000.Spec : Prop :=
  ∀ n, P12371243776701887000.a n = A331516 n

end A331516

/-! ## A331516.P1638968335443107961

`∑[n+1]*A127846(n+1)`
-/

namespace A331516.P1638968335443107961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A127846 (n + 1)

end

end A331516.P1638968335443107961

namespace A331516

/-- `∑[n+1]*A127846(n+1)` -/
def P1638968335443107961.Spec : Prop :=
  ∀ n, P1638968335443107961.a n = A331516 n

end A331516

/-! ## A331516.P15646567077446278409

`A331514(A055999(n+3))`
-/

namespace A331516.P15646567077446278409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331514 (A055999 (n + 3)).toNat

end

end A331516.P15646567077446278409

namespace A331516

/-- `A331514(A055999(n+3))` -/
def P15646567077446278409.Spec : Prop :=
  ∀ n, P15646567077446278409.a n = A331516 n

end A331516

/-! ## A331516.P14215256119660067038

`A331514(A000096(n+5)-5)`
-/

namespace A331516.P14215256119660067038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331514 (A000096 (n + 5) - 5).toNat

end

end A331516.P14215256119660067038

namespace A331516

/-- `A331514(A000096(n+5)-5)` -/
def P14215256119660067038.Spec : Prop :=
  ∀ n, P14215256119660067038.a n = A331516 n

end A331516

/-! ## A331516.P14382051277844227821

`A331514(A000217(n+6)-6)`
-/

namespace A331516.P14382051277844227821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331514 (A000217 (n + 6) - 6).toNat

end

end A331516.P14382051277844227821

namespace A331516

/-- `A331514(A000217(n+6)-6)` -/
def P14382051277844227821.Spec : Prop :=
  ∀ n, P14382051277844227821.a n = A331516 n

end A331516

/-!
# A331517: a(n) = Sum_{k=0..n} p(n,k) * !k, where p(n,k) = number of partitions of n into k parts and !k = subfactorial of k.

The programs for A331517, there is no canonical definition to state claims against.
-/

/-! ## A331517.P2187927712529121686

`A062276(A101880(n))+A000007(n)`
-/

namespace A331517.P2187927712529121686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062276 (A101880 n).toNat + A000007 n

end

end A331517.P2187927712529121686

/-! ## A331517.P688583073765823578

`A062276(A101880(A000038(n)+n))`
-/

namespace A331517.P688583073765823578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062276 (A101880 (A000038 n + (n : ℤ)).toNat).toNat

end

end A331517.P688583073765823578

/-! ## A331517.P697921394644526143

`A062276(A101880(n)+A054977(n))`
-/

namespace A331517.P697921394644526143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062276 (A101880 n + A054977 n).toNat

end

end A331517.P697921394644526143

/-! ## A331517.P8937465872994665873

`A062276(A101880(n))^A115721(n)`
-/

namespace A331517.P8937465872994665873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062276 (A101880 n).toNat : ℚ) ^ (A115721 n : ℤ)

end

end A331517.P8937465872994665873

/-!
# A331518: a(n) = Sum_{k=0..n} q(n,k) * !k, where q(n,k) = number of partitions of n into k distinct parts and !k = subfactorial of k.

The programs for A331518, there is no canonical definition to state claims against.
-/

/-! ## A331518.P14313855079668189748

`A369596(∑[∑[n]])`
-/

namespace A331518.P14313855079668189748
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369596 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A331518.P14313855079668189748

/-! ## A331518.P13144090311392877577

`A249243(A032058(n)+A000007(n))`
-/

namespace A331518.P13144090311392877577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249243 (A032058 n + A000007 n).toNat

end

end A331518.P13144090311392877577

/-! ## A331518.P16594999013454140825

`A249243(A032058(n)*A054977(n))`
-/

namespace A331518.P16594999013454140825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249243 (A032058 n * A054977 n).toNat

end

end A331518.P16594999013454140825

/-! ## A331518.P3898128533848355808

`A249243(A032058(n)+A054977(n)-1)`
-/

namespace A331518.P3898128533848355808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249243 (A032058 n + (A054977 n - 1)).toNat

end

end A331518.P3898128533848355808

/-! ## A331518.P7576274245506707478

`A249243(A032058(n)-(1-A054977(n)))`
-/

namespace A331518.P7576274245506707478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249243 (A032058 n - (1 - A054977 n)).toNat

end

end A331518.P7576274245506707478

/-!
# A331519: a(0) = 1; a(n) = Sum_{k=1..n} (binomial(n,k) mod 2) * a(k-1) * a(n-k).

The programs for A331519, there is no canonical definition to state claims against.
-/

/-! ## A331519.P14036695433315773110

`A246674(A000225(n)*A151573(n))`
-/

namespace A331519.P14036695433315773110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246674 (A000225 n * A151573 n).toNat

end

end A331519.P14036695433315773110

/-! ## A331519.P3832815055149974111

`A136218(A365380(n+2))`
-/

namespace A331519.P3832815055149974111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136218 (A365380 (n + 2)).toNat

end

end A331519.P3832815055149974111

/-! ## A331519.P526298984655684632

`A340500(lcm(4, A090932(n)))`
-/

namespace A331519.P526298984655684632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340500 (Int.lcm 4 (A090932 n))

end

end A331519.P526298984655684632

/-! ## A331519.P13379047634201901921

`or(1, A080098(A269265(n)))`
-/

namespace A331519.P13379047634201901921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A080098 (A269265 n).toNat)

end

end A331519.P13379047634201901921

/-! ## A331519.P8227698595576020781

`A048691(A014372(n+2)+1)`
-/

namespace A331519.P8227698595576020781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (A014372 (n + 2) + 1).toNat

end

end A331519.P8227698595576020781

/-!
# A331521: a(n) is the least positive k such that A002645(n) - k^4 is a fourth power.

The programs for A331521, there is no canonical definition to state claims against.
-/

/-! ## A331521.P512716277416806303

`A273294(A002645(n+1))`
-/

namespace A331521.P512716277416806303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273294 (A002645 (n + 1)).toNat

end

end A331521.P512716277416806303

/-! ## A331521.P163337547792405360

`A273294(p?[A003336(n+1)])`
-/

namespace A331521.P163337547792405360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273294 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A331521.P163337547792405360

/-! ## A331521.P17764966562238771882

`A273294(p?[A004831(n+1)])`
-/

namespace A331521.P17764966562238771882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273294 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A331521.P17764966562238771882

/-! ## A331521.P1861633202025032319

`A273294(p?[A344187(n+1)])`
-/

namespace A331521.P1861633202025032319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273294 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A331521.P1861633202025032319

/-! ## A331521.P846869314360417017

`A273294(∩[A003336(n+1), A028916(n+1)])`
-/

namespace A331521.P846869314360417017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028916 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273294 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A331521.P846869314360417017

/-!
# A331528: a(n) = n^2 * (n+1)^2 * (n^2+n+1) / 12.

The programs for A331528, the canonical program `A331528.P1751832924946197085` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331528 has offset 0).

The definition of A331528 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331528.P1751832924946197085

`(n*(n+1))²*(n²+n+1)/12`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A331528

/-- `(n*(n+1))²*(n²+n+1)/12` -/
def P1751832924946197085.Spec : Prop :=
  ∀ n, P1751832924946197085.a n = (A331528 n : ℚ)

end A331528

/-! ## A331528.P4502984552165761889

`n²*(n+1)²*(n²+n+1)/12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A331528.P4502984552165761889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 * (n + 1) ^ 2 * (n ^ 2 + n + 1) : ℚ) / 12

end

end A331528.P4502984552165761889

namespace A331528

/-- `n²*(n+1)²*(n²+n+1)/12` -/
def P4502984552165761889.Spec : Prop :=
  ∀ n, P4502984552165761889.a n = (A331528 n : ℚ)

end A331528

/-! ## A331528.P10709170347638842016

`ogf((x+14x^2+30x^3+14x^4+x^5)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A331528.P10709170347638842016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 14, 30, 14, 1] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A331528.P10709170347638842016

namespace A331528

/-- `ogf((x+14x^2+30x^3+14x^4+x^5)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P10709170347638842016.Spec : Prop :=
  ∀ n, P10709170347638842016.a n = A331528 n

end A331528

/-! ## A331528.P1381357446928209063

`∑[n*C(n²+1, 2)]`
-/

namespace A331528.P1381357446928209063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (n ^ 2 + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331528.P1381357446928209063

namespace A331528

/-- `∑[n*C(n²+1, 2)]` -/
def P1381357446928209063.Spec : Prop :=
  ∀ n, (P1381357446928209063.a n : ℤ) = A331528 n

end A331528

/-! ## A331528.P11299588985120973656

`a(n-1)+n*C(n²+1, 2)` with `a(0)=0`
-/

namespace A331528.P11299588985120973656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + n * Nat.choose (n ^ 2 + 1) 2

end

end A331528.P11299588985120973656

namespace A331528

/-- `a(n-1)+n*C(n²+1, 2)` -/
def P11299588985120973656.Spec : Prop :=
  ∀ n, (P11299588985120973656.a n : ℤ) = A331528 n

end A331528

/-! ## A331528.P1982447677899972475

`∑[A168178(n)]`
-/

namespace A331528.P1982447677899972475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331528.P1982447677899972475

namespace A331528

/-- `∑[A168178(n)]` -/
def P1982447677899972475.Spec : Prop :=
  ∀ n, P1982447677899972475.a n = A331528 n

end A331528

/-! ## A331528.P10075953711721206592

`∑[A155977(n)/2]`
-/

namespace A331528.P10075953711721206592
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155977 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331528.P10075953711721206592

namespace A331528

/-- `∑[A155977(n)/2]` -/
def P10075953711721206592.Spec : Prop :=
  ∀ n, P10075953711721206592.a n = (A331528 n : ℚ)

end A331528

/-! ## A331528.P4345171075850364246

`∑[n*A037270(n)]`
-/

namespace A331528.P4345171075850364246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A037270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331528.P4345171075850364246

namespace A331528

/-- `∑[n*A037270(n)]` -/
def P4345171075850364246.Spec : Prop :=
  ∀ n, P4345171075850364246.a n = A331528 n

end A331528

/-! ## A331528.P6620376585386961415

`∑[n²*A006003(n)]`
-/

namespace A331528.P6620376585386961415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A006003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331528.P6620376585386961415

namespace A331528

/-- `∑[n²*A006003(n)]` -/
def P6620376585386961415.Spec : Prop :=
  ∀ n, P6620376585386961415.a n = A331528 n

end A331528

/-! ## A331528.P12007818251534976694

`∑[A321672(n)]+∑[n]²`
-/

namespace A331528.P12007818251534976694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321672 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

end

end A331528.P12007818251534976694

namespace A331528

/-- `∑[A321672(n)]+∑[n]²` -/
def P12007818251534976694.Spec : Prop :=
  ∀ n, P12007818251534976694.a n = A331528 n

end A331528

/-! ## A331528.P8189603836796480087

`A208954(n+1)-A132122(n)`
-/

namespace A331528.P8189603836796480087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208954 (n + 1) - A132122 n

end

end A331528.P8189603836796480087

namespace A331528

/-- `A208954(n+1)-A132122(n)` -/
def P8189603836796480087.Spec : Prop :=
  ∀ n, P8189603836796480087.a n = A331528 n

end A331528

/-! ## A331528.P13021617992102669765

`A163274(n)-A347922(n+1)`
-/

namespace A331528.P13021617992102669765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163274 n - A347922 (n + 1)

end

end A331528.P13021617992102669765

namespace A331528

/-- `A163274(n)-A347922(n+1)` -/
def P13021617992102669765.Spec : Prop :=
  ∀ n, P13021617992102669765.a n = A331528 n

end A331528

/-! ## A331528.P12821025630586495878

`(n+1)²*A006007(n)-A004282(n)`
-/

namespace A331528.P12821025630586495878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A006007 n - A004282 n

end

end A331528.P12821025630586495878

namespace A331528

/-- `(n+1)²*A006007(n)-A004282(n)` -/
def P12821025630586495878.Spec : Prop :=
  ∀ n, P12821025630586495878.a n = A331528 n

end A331528

/-! ## A331528.P13758782141726074203

`A000537(n)*A002378(n)-A000539(n)`
-/

namespace A331528.P13758782141726074203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n * A002378 n - A000539 n

end

end A331528.P13758782141726074203

namespace A331528

/-- `A000537(n)*A002378(n)-A000539(n)` -/
def P13758782141726074203.Spec : Prop :=
  ∀ n, P13758782141726074203.a n = A331528 n

end A331528

/-! ## A331528.P7060793227670469449

`∑[n]*A006325(n+1)`
-/

namespace A331528.P7060793227670469449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A006325 (n + 1)

end

end A331528.P7060793227670469449

namespace A331528

/-- `∑[n]*A006325(n+1)` -/
def P7060793227670469449.Spec : Prop :=
  ∀ n, P7060793227670469449.a n = A331528 n

end A331528

/-! ## A331528.P9799577886533192830

`(A002415(n+1)+A002415(n))*A000217(n)`
-/

namespace A331528.P9799577886533192830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002415 (n + 1) + A002415 n) * A000217 n

end

end A331528.P9799577886533192830

namespace A331528

/-- `(A002415(n+1)+A002415(n))*A000217(n)` -/
def P9799577886533192830.Spec : Prop :=
  ∀ n, P9799577886533192830.a n = A331528 n

end A331528

/-! ## A331528.P6049577595453226762

`(A071252(n+1)-A071246(n+1))*A000217(n)`
-/

namespace A331528.P6049577595453226762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A071252 (n + 1) - A071246 (n + 1)) * A000217 n

end

end A331528.P6049577595453226762

namespace A331528

/-- `(A071252(n+1)-A071246(n+1))*A000217(n)` -/
def P6049577595453226762.Spec : Prop :=
  ∀ n, P6049577595453226762.a n = A331528 n

end A331528

/-! ## A331528.P16038139761145530701

`∑[n*A000217(n²)]`
-/

namespace A331528.P16038139761145530701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000217 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331528.P16038139761145530701

namespace A331528

/-- `∑[n*A000217(n²)]` -/
def P16038139761145530701.Spec : Prop :=
  ∀ n, P16038139761145530701.a n = A331528 n

end A331528

/-! ## A331528.P187731020317264548

`∑[n*A116996(n²)]`
-/

namespace A331528.P187731020317264548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A116996 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331528.P187731020317264548

namespace A331528

/-- `∑[n*A116996(n²)]` -/
def P187731020317264548.Spec : Prop :=
  ∀ n, P187731020317264548.a n = A331528 n

end A331528

/-! ## A331528.P6115114679073844241

`∑[n*A215098(n²)]`
-/

namespace A331528.P6115114679073844241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A215098 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331528.P6115114679073844241

namespace A331528

/-- `∑[n*A215098(n²)]` -/
def P6115114679073844241.Spec : Prop :=
  ∀ n, P6115114679073844241.a n = A331528 n

end A331528

/-!
# A331529: a(n) is the number of nonnegative integers that can be represented in a 7-segment display by using only n segments (version A006942).

The programs for A331529, the canonical program `A331529.P15975824974297406915` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331529 has offset 0).

The definition of A331529 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331529.P15975824974297406915

`ogf((x^2+x^3+x^4+3x^5+3x^6+x^7-x^8-x^9-x^10-3x^11-3x^12-x^13)/(1-x^2-x^3-x^4-3x^5-3x^6-x^7))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A331529

/-- `ogf((x^2+x^3+x^4+3x^5+3x^6+x^7-x^8-x^9-x^10-3x^11-3x^12-x^13)/(1-x^2-x^3-x^4-3x^5-3x^6-x^7))` -/
def P15975824974297406915.Spec : Prop :=
  ∀ n, P15975824974297406915.a n = A331529 n

theorem P15975824974297406915.correct : P15975824974297406915.Spec := by
  intro n
  simp only [A331529]

end A331529

/-! ## A331529.P7027701158867665947

`A084359(A257866(n))`
-/

namespace A331529.P7027701158867665947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084359 (A257866 n).toNat

end

end A331529.P7027701158867665947

namespace A331529

/-- `A084359(A257866(n))` -/
def P7027701158867665947.Spec : Prop :=
  ∀ n, P7027701158867665947.a n = A331529 n

end A331529

/-! ## A331529.P6317455048647494208

`A340205(A261962(n+1))`
-/

namespace A331529.P6317455048647494208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340205 (A261962 (n + 1)).toNat

end

end A331529.P6317455048647494208

namespace A331529

/-- `A340205(A261962(n+1))` -/
def P6317455048647494208.Spec : Prop :=
  ∀ n, P6317455048647494208.a n = A331529 n

end A331529

/-! ## A331529.P5854686616356978333

`A211263(A319918(n))+A151761(n)`
-/

namespace A331529.P5854686616356978333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211263 (A319918 n).toNat + A151761 n

end

end A331529.P5854686616356978333

namespace A331529

/-- `A211263(A319918(n))+A151761(n)` -/
def P5854686616356978333.Spec : Prop :=
  ∀ n, P5854686616356978333.a n = A331529 n

end A331529

/-!
# A331530: a(n) is the number of nonnegative integers that can be represented in a 7-segment display by using only n segments (version A010371).

The programs for A331530, the canonical program `A331530.P7203628187415043668` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331530 has offset 0).

The definition of A331530 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331530.P7203628187415043668

`ogf((x^2+2x^4+3x^5+3x^6+x^7-x^8-2x^10-3x^11-3x^12-x^13)/(1-x^2-2x^4-3x^5-3x^6-x^7))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A331530

/-- `ogf((x^2+2x^4+3x^5+3x^6+x^7-x^8-2x^10-3x^11-3x^12-x^13)/(1-x^2-2x^4-3x^5-3x^6-x^7))` -/
def P7203628187415043668.Spec : Prop :=
  ∀ n, P7203628187415043668.a n = A331530 n

theorem P7203628187415043668.correct : P7203628187415043668.Spec := by
  intro n
  simp only [A331530]

end A331530

/-!
# A331531: Numbers of the form (x^2) OR (y^2) with x, y >= 0 (where OR denotes the bitwise OR operator).

The programs for A331531, there is no canonical definition to state claims against.
-/

/-! ## A331531.P329937752375991403

`or(A331534(n+1)², A331535(n+1)²)`
-/

namespace A331531.P329937752375991403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A331534 (n + 1) ^ 2) (A331535 (n + 1) ^ 2)

end

end A331531.P329937752375991403

/-! ## A331531.P17396107438191852930

`lt[A001222(A156367(n)), A156387(n)]`
-/

namespace A331531.P17396107438191852930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A156367 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A331531.P17396107438191852930

/-! ## A331531.P760354831484343885

`eq[1-and(2, n), A202917(A085543(n))]`
-/

namespace A331531.P760354831484343885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202917 (A085543 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A331531.P760354831484343885

/-! ## A331531.P3093645387063584377

`A020668(lt[A190865(n), A056007(3*n)])`
-/

namespace A331531.P3093645387063584377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190865 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056007 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020668 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A331531.P3093645387063584377

/-!
# A331532: a(n) is the number of nonnegative integers k such that (n^2) AND (k^2) = k^2 (where AND denotes the bitwise AND operator).

The programs for A331532, there is no canonical definition to state claims against.
-/

/-! ## A331532.P3385157247169524994

`Δ[eq[0, A331533(n)]]`
-/

namespace A331532.P3385157247169524994
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331533 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A331532.P3385157247169524994

/-! ## A331532.P3869067397663475159

`Δ[record[A000027(n+1)-A331533(n)]]`
-/

namespace A331532.P3869067397663475159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A331533 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A331532.P3869067397663475159

/-! ## A331532.P4391104777254832505

`Δ[record[A020725(n+1)-A331533(n)]]`
-/

namespace A331532.P4391104777254832505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (n + 1) - A331533 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A331532.P4391104777254832505

/-! ## A331532.P15453698477123516844

`Δ[record[A060576(n)+n-A331533(n)]]`
-/

namespace A331532.P15453698477123516844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n + (n : ℤ) - A331533 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A331532.P15453698477123516844

/-! ## A331532.P5254545617271270960

`Δ[record[n-A331533(n)]]%A158321(n+1)`
-/

namespace A331532.P5254545617271270960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A331533 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A158321 (n + 1))

end

end A331532.P5254545617271270960

/-! ## A331532.P7840074806638820809

`Δ[record[A008611(3*n)-A331533(n)]]`
-/

namespace A331532.P7840074806638820809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * n) - A331533 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A331532.P7840074806638820809

/-!
# A331533: Irregular table read by rows; for n >= 0, the n-th row corresponds to the nonnegative integers k such that (n^2) AND (k^2) = k^2, in ascending order (where AND denotes the bitwise AND operator).

The programs for A331533, there is no canonical definition to state claims against.
-/

/-! ## A331533.P7042943512325267829

`A162306(n+1)-A079559(A373637(n+1))`
-/

namespace A331533.P7042943512325267829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162306 (n + 1) - A079559 (A373637 (n + 1)).toNat

end

end A331533.P7042943512325267829

/-! ## A331533.P13192927118286493907

`A162306(n+1)-A358680(A279812(n+1))`
-/

namespace A331533.P13192927118286493907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162306 (n + 1) - A358680 (A279812 (n + 1)).toNat

end

end A331533.P13192927118286493907

/-! ## A331533.P3441587168593854673

`A162306(n+1)-A334465(A181187(2*n+5))`
-/

namespace A331533.P3441587168593854673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162306 (n + 1) - A334465 (A181187 (2 * n + 5)).toNat

end

end A331533.P3441587168593854673

/-! ## A331533.P2692495964842191109

`A162306(n+1)-A031436(A031438(n))`
-/

namespace A331533.P2692495964842191109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162306 (n + 1) - A031436 (A031438 n).toNat

end

end A331533.P2692495964842191109

/-! ## A331533.P980705030749392016

`A162306(n+1)-A353627(A085809(n+1))`
-/

namespace A331533.P980705030749392016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162306 (n + 1) - A353627 (A085809 (n + 1)).toNat

end

end A331533.P980705030749392016

/-!
# A331534: Let (x, y) be the lexicographically earliest pair of nonnegative integers such that (x^2) OR (y^2) = A331531(n); a(n) = x.

The programs for A331534, there is no canonical definition to state claims against.
-/

/-! ## A331534.P18223322436484447418

`A103822(∑[A297781(A329742(n+1))])`
-/

namespace A331534.P18223322436484447418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297781 (A329742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103822 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A331534.P18223322436484447418

/-! ## A331534.P10654133447416166740

`A099309(n+1)%A000120(A300524(n+3))`
-/

namespace A331534.P10654133447416166740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099309 (n + 1)) (A000120 (A300524 (n + 3)).toNat)

end

end A331534.P10654133447416166740

/-! ## A331534.P10543594585053232178

`A156954(n+1)%A001222(A080035(2*(n+3)))`
-/

namespace A331534.P10543594585053232178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156954 (n + 1)) (A001222 (A080035 (2 * (n + 3))).toNat)

end

end A331534.P10543594585053232178

/-! ## A331534.P17836891027946088039

`and((2*n)%3+1, A020914(A187829(n+1)))`
-/

namespace A331534.P17836891027946088039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((2 * n % 3 + 1 : ℕ) : ℤ) (A020914 (A187829 (n + 1)).toNat)

end

end A331534.P17836891027946088039

/-! ## A331534.P13696114030282953769

`A236314(A389536(n+2))`
-/

namespace A331534.P13696114030282953769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236314 (A389536 (n + 2)).toNat

end

end A331534.P13696114030282953769

/-!
# A331535: Let (x, y) be the lexicographically earliest pair of nonnegative integers such that (x^2) OR (y^2) = A331531(n); a(n) = y.

The programs for A331535, there is no canonical definition to state claims against.
-/

/-! ## A331535.P13103178906188871135

`A364800(A000031(n)%A036966(3*n+4))`
-/

namespace A331535.P13103178906188871135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364800 (Int.tmod (A000031 n) (A036966 (3 * n + 4))).toNat

end

end A331535.P13103178906188871135

/-! ## A331535.P3570954133963774276

`floor(sqrt(p?[A195109(n+1)]))%(n+1)`
-/

namespace A331535.P3570954133963774276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))) (n + 1 : ℤ)

end

end A331535.P3570954133963774276

/-! ## A331535.P1376488731636132662

`A364800(A000031(n))`
-/

namespace A331535.P1376488731636132662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364800 (A000031 n).toNat

end

end A331535.P1376488731636132662

/-! ## A331535.P11958862963857928161

`A178042(∑[A211515(n)])-1`
-/

namespace A331535.P11958862963857928161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211515 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178042 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A331535.P11958862963857928161

/-! ## A331535.P16456770750735899427

`A080791(63*A272948(n+1))`
-/

namespace A331535.P16456770750735899427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (63 * A272948 (n + 1)).toNat

end

end A331535.P16456770750735899427

/-!
# A331536: Number of theorems in the MIU formal system which can be proved in n steps or fewer starting with the axiom 'mi'.

The programs for A331536, there is no canonical definition to state claims against.
-/

/-! ## A331536.P6521197752740162768

`∑[A330558(A005027(n+3)+2)+A004525(n)]`
-/

namespace A331536.P6521197752740162768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330558 (A005027 (n + 3) + 2).toNat + A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331536.P6521197752740162768

/-! ## A331536.P3048893188181301843

`∑[A004525(n)+A218942(n)+A001222(A352693(n))]`
-/

namespace A331536.P3048893188181301843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A218942 n + A001222 (A352693 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331536.P3048893188181301843

/-!
# A331537: Number of functions f:[n]->[n] such that no k exists such that |f^(-1)(k)| = k.

The programs for A331537, there is no canonical definition to state claims against.
-/

/-! ## A331537.P4585507673935380548

`n^n-A331538(n)`
-/

namespace A331537.P4585507673935380548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) - A331538 n

end

end A331537.P4585507673935380548

/-! ## A331537.P9368990958802991815

`abs(A000312(n)-A331538(n))`
-/

namespace A331537.P9368990958802991815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000312 n - A331538 n|

end

end A331537.P9368990958802991815

/-! ## A331537.P12546014661161103241

`(A000312(n)-A331538(n))*A007318(gcd(n, n+1))`
-/

namespace A331537.P12546014661161103241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000312 n - A331538 n) * A007318 (Nat.gcd n (n + 1))

end

end A331537.P12546014661161103241

/-! ## A331537.P8841741419691082729

`(A000312(n)-A331538(n))*A007318(A005888(n)+1)`
-/

namespace A331537.P8841741419691082729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000312 n - A331538 n) * A007318 (A005888 n + 1).toNat

end

end A331537.P8841741419691082729

/-! ## A331537.P9784648112065995432

`(A000312(n)-A331538(n))*A007318(A181890(n))`
-/

namespace A331537.P9784648112065995432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000312 n - A331538 n) * A007318 (A181890 n).toNat

end

end A331537.P9784648112065995432

/-!
# A331538: Number of functions f:[n]->[n] such that there exists a k such that |f^(-1)(k)| = k.

The programs for A331538, there is no canonical definition to state claims against.
-/

/-! ## A331538.P16056837307791738952

`n^n-A331537(n)`
-/

namespace A331538.P16056837307791738952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) - A331537 n

end

end A331538.P16056837307791738952

/-! ## A331538.P15222222463365046064

`abs(A000312(n)-A331537(n))`
-/

namespace A331538.P15222222463365046064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000312 n - A331537 n|

end

end A331538.P15222222463365046064

/-! ## A331538.P2780961824690323860

`(A000312(n)-A331537(n))*A178334(n)`
-/

namespace A331538.P2780961824690323860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000312 n - A331537 n) * A178334 n

end

end A331538.P2780961824690323860

/-! ## A331538.P9381697903926855257

`(A000312(n)-A331537(n))*A007318(∑[n])`
-/

namespace A331538.P9381697903926855257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000312 n - A331537 n) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A331538.P9381697903926855257

/-! ## A331538.P5830702997029133455

`(A000312(n)-A331537(n))%A086783(n+1)`
-/

namespace A331538.P5830702997029133455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000312 n - A331537 n) (A086783 (n + 1))

end

end A331538.P5830702997029133455

/-!
# A331540: Number of primes of the form k*2^n + 1 with k < 2^n.

The programs for A331540, there is no canonical definition to state claims against.
-/

/-! ## A331540.P2425502075695496316

`A086685(2^(n+1))`
-/

namespace A331540.P2425502075695496316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086685 (2 ^ (n + 1))

end

end A331540.P2425502075695496316

/-!
# A331541: a(n) is the maximum number of equal-sum subsets into which the first n primes can be partitioned.

The programs for A331541, there is no canonical definition to state claims against.
-/

/-! ## A331541.P12788474088995444502

`A331479(eq[A054977(n), A331479(n+1)])`
-/

namespace A331541.P12788474088995444502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331479 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A331541.P12788474088995444502

/-! ## A331541.P10226885360119786674

`A331479(eq[A057427(n), A331479(n+1)])`
-/

namespace A331541.P10226885360119786674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331479 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A331541.P10226885360119786674

/-! ## A331541.P780624791548773975

`A331479(eq[A158388(n), A331479(n+1)])`
-/

namespace A331541.P780624791548773975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331479 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A331541.P780624791548773975

/-! ## A331541.P17160949797206754728

`A331479(eq[A178334(n), A331479(n+1)])`
-/

namespace A331541.P17160949797206754728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331479 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A331541.P17160949797206754728

/-! ## A331541.P5704013422769316868

`A331479(record[A028310(n)/A331479(n+1)])`
-/

namespace A331541.P5704013422769316868
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 n : ℚ) / (A331479 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331479 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A331541.P5704013422769316868

/-!
# A331543: Squares using only decimal digits 0,1,2,3.

The programs for A331543, there is no canonical definition to state claims against.
-/

/-! ## A331543.P7550244807559827934

`lt[A028907(n)%10, 4]²`
-/

namespace A331543.P7550244807559827934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028907 n) 10

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 2

end

end A331543.P7550244807559827934

/-! ## A331543.P6608529789554302639

`∩[n², A007090(n)]`
-/

namespace A331543.P6608529789554302639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331543.P6608529789554302639

/-! ## A331543.P12165366116174094499

`A007090(A267764(n+1))`
-/

namespace A331543.P12165366116174094499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A267764 (n + 1)).toNat

end

end A331543.P12165366116174094499

/-! ## A331543.P428455949491899965

`∩[A007091(A020654(n+1)), n²]`
-/

namespace A331543.P428455949491899965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A020654 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A331543.P428455949491899965

/-!
# A331544: Primes that begin a run of consecutive primes whose first differences are strictly increasing.

The programs for A331544, there is no canonical definition to state claims against.
-/

/-! ## A331544.P3264566375726273781

`p?[∑[A194917(A315671(n))]]`
-/

namespace A331544.P3264566375726273781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194917 (A315671 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A331544.P3264566375726273781

/-! ## A331544.P3490684416235065852

`A000040(lt[A344976(60*n²+2), 0]+n)`
-/

namespace A331544.P3490684416235065852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344976 (60 * n ^ 2 + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + n)

end

end A331544.P3490684416235065852

/-! ## A331544.P1318548017222850000

`A008578(A111801(n+1)+A032559(n+1))`
-/

namespace A331544.P1318548017222850000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A111801 (n + 1) + A032559 (n + 1)).toNat

end

end A331544.P1318548017222850000

/-! ## A331544.P15071921290105616429

`A212127(3*n+2)-A236109(A046022(3*n+1))`
-/

namespace A331544.P15071921290105616429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212127 (3 * n + 2) - A236109 (A046022 (3 * n + 1)).toNat

end

end A331544.P15071921290105616429

/-!
# A331545: Triangle of constant term of the symmetric q-binomial coefficients.

The programs for A331545, there is no canonical definition to state claims against.
-/

/-! ## A331545.P7079265069932671866

`A067059(n)*A106465(n)`
-/

namespace A331545.P7079265069932671866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 n * A106465 n

end

end A331545.P7079265069932671866

/-! ## A331545.P468276142366674861

`lcm(A067059(n), A106470(n))`
-/

namespace A331545.P468276142366674861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A067059 n) (A106470 n)

end

end A331545.P468276142366674861

/-! ## A331545.P9693814134080802566

`A067059(n)%(A187596(n)+1)`
-/

namespace A331545.P9693814134080802566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067059 n) (A187596 n + 1)

end

end A331545.P9693814134080802566

/-! ## A331545.P7020693185216794933

`A082105(n)%2*A067059(n)`
-/

namespace A331545.P7020693185216794933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082105 n) 2 * A067059 n

end

end A331545.P7020693185216794933

/-! ## A331545.P1993746388426846165

`A059841(A004198(n))*A067059(n)`
-/

namespace A331545.P1993746388426846165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A004198 n).toNat * A067059 n

end

end A331545.P1993746388426846165

/-! ## A331545.P11179066605170219585

`A059841(A004247(n))*A067059(n)`
-/

namespace A331545.P11179066605170219585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A004247 n).toNat * A067059 n

end

end A331545.P11179066605170219585

/-! ## A331545.P1898532328872851178

`A000035(A077028(n))*A067059(n)`
-/

namespace A331545.P1898532328872851178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A077028 n).toNat * A067059 n

end

end A331545.P1898532328872851178

/-! ## A331545.P12936693589431251457

`A067059(n)*A166514(A008288(n))`
-/

namespace A331545.P12936693589431251457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 n * A166514 (A008288 n).toNat

end

end A331545.P12936693589431251457

/-! ## A331545.P15145964488039830888

`A000035(A176282(n))*A067059(n)`
-/

namespace A331545.P15145964488039830888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A176282 n).toNat * A067059 n

end

end A331545.P15145964488039830888

/-! ## A331545.P12488195032727378020

`A067059(n)%A000070(A051159(n))`
-/

namespace A331545.P12488195032727378020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067059 n) (A000070 (A051159 n).toNat)

end

end A331545.P12488195032727378020

/-!
# A331550: 15-adic integer x = ...65762C0520697E8CA1A31469 satisfying x^3 = x.

The programs for A331550, there is no canonical definition to state claims against.
-/

/-! ## A331550.P6719740734068760247

`15-(A331549(n)+ceil(sin(n)²))`
-/

namespace A331550.P6719740734068760247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 - (A331549 n + ⌈Real.sin (n : ℝ) ^ 2⌉)

end

end A331550.P6719740734068760247

/-! ## A331550.P4106535304907403783

`15-(A331549(n)+A057427(n))`
-/

namespace A331550.P4106535304907403783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 - (A331549 n + A057427 n)

end

end A331550.P4106535304907403783

/-! ## A331550.P174351154733041436

`xor(15, A331549(n)+A087156(n+1)-n)`
-/

namespace A331550.P174351154733041436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 15 (A331549 n + (A087156 (n + 1) - (n : ℤ)))

end

end A331550.P174351154733041436

/-! ## A331550.P8809197970830696055

`15-(A331549(n)-floor(n/A001478(n+1)))`
-/

namespace A331550.P8809197970830696055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 - (A331549 n - ⌊(n : ℚ) / (A001478 (n + 1) : ℚ)⌋)

end

end A331550.P8809197970830696055

/-!
# A331551: Expansion of (1 + 3*x)/(1 + 2*x + 9*x^2)^(3/2).

The programs for A331551, the canonical program `A331551.P3649906653367537951` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331551 has offset 0).

The definition of A331551 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331551.P3649906653367537951

`∑{#}[n, (-2)^#*(#+1)*C(n+1, #+1)²]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A331551

/-- `∑{#}[n, (-2)^#*(#+1)*C(n+1, #+1)²]` -/
def P3649906653367537951.Spec : Prop :=
  ∀ n, P3649906653367537951.a n = A331551 n

theorem P3649906653367537951.correct : P3649906653367537951.Spec := by
  intro n
  simp only [A331551]

end A331551

/-! ## A331551.P11919778226894531789

`∑{#}[n, (-3)^(n-#)*(n+#+1)*C(n, #)*C(n+#, #)]`
-/

namespace A331551.P11919778226894531789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-3 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (n + k + 1 : ℚ) * (Nat.choose n k : ℚ) * (Nat.choose (n + k) k : ℚ)

end

end A331551.P11919778226894531789

namespace A331551

/-- `∑{#}[n, (-3)^(n-#)*(n+#+1)*C(n, #)*C(n+#, #)]` -/
def P11919778226894531789.Spec : Prop :=
  ∀ n, P11919778226894531789.a n = (A331551 n : ℚ)

end A331551

/-! ## A331551.P13440384269362247879

`A331511(∑[n]+n)`
-/

namespace A331551.P13440384269362247879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331511 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A331551.P13440384269362247879

namespace A331551

/-- `A331511(∑[n]+n)` -/
def P13440384269362247879.Spec : Prop :=
  ∀ n, P13440384269362247879.a n = A331551 n

end A331551

/-! ## A331551.P13161259798969967515

`or(A000007(n), A331511(A000096(n)))`
-/

namespace A331551.P13161259798969967515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A331511 (A000096 n).toNat)

end

end A331551.P13161259798969967515

namespace A331551

/-- `or(A000007(n), A331511(A000096(n)))` -/
def P13161259798969967515.Spec : Prop :=
  ∀ n, P13161259798969967515.a n = A331551 n

end A331551

/-! ## A331551.P6014703037689614497

`A331511(A000096(n))+A000007(2*(n+2))`
-/

namespace A331551.P6014703037689614497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331511 (A000096 n).toNat + A000007 (2 * (n + 2))

end

end A331551.P6014703037689614497

namespace A331551

/-- `A331511(A000096(n))+A000007(2*(n+2))` -/
def P6014703037689614497.Spec : Prop :=
  ∀ n, P6014703037689614497.a n = A331551 n

end A331551

/-! ## A331551.P15202708787409400742

`A331511(A000096(n))+A033322(2*n+5)`
-/

namespace A331551.P15202708787409400742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331511 (A000096 n).toNat + A033322 (2 * n + 5)

end

end A331551.P15202708787409400742

namespace A331551

/-- `A331511(A000096(n))+A033322(2*n+5)` -/
def P15202708787409400742.Spec : Prop :=
  ∀ n, P15202708787409400742.a n = A331551 n

end A331551

/-! ## A331551.P8032879130588449305

`A331511(A000096(n))%A000351(C(2, n)+n)`
-/

namespace A331551.P8032879130588449305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331511 (A000096 n).toNat) (A000351 (Nat.choose 2 n + n))

end

end A331551.P8032879130588449305

namespace A331551

/-- `A331511(A000096(n))%A000351(C(2, n)+n)` -/
def P8032879130588449305.Spec : Prop :=
  ∀ n, P8032879130588449305.a n = A331551 n

end A331551

/-! ## A331551.P5232830555856154169

`A331511(A000096(n))^A000041(floor(2/(n+1)))`
-/

namespace A331551.P5232830555856154169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331511 (A000096 n).toNat : ℚ) ^ (A000041 ⌊2 / (n + 1 : ℚ)⌋.toNat : ℤ)

end

end A331551.P5232830555856154169

namespace A331551

/-- `A331511(A000096(n))^A000041(floor(2/(n+1)))` -/
def P5232830555856154169.Spec : Prop :=
  ∀ n, P5232830555856154169.a n = (A331551 n : ℚ)

end A331551

/-! ## A331551.P13462283355620500686

`A040001(A004771(n))*A331511(A000096(n))`
-/

namespace A331551.P13462283355620500686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A004771 n).toNat * A331511 (A000096 n).toNat

end

end A331551.P13462283355620500686

namespace A331551

/-- `A040001(A004771(n))*A331511(A000096(n))` -/
def P13462283355620500686.Spec : Prop :=
  ∀ n, P13462283355620500686.a n = A331551 n

end A331551

/-!
# A331552: Expansion of (1 + 2*x)/(1 + 4*x^2)^(3/2).

The programs for A331552, the canonical program `A331552.P14950380478050511940` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331552 has offset 0).

The definition of A331552 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331552.P14950380478050511940

`∑{#}[n, (-1)^#*(#+1)*C(n+1, #+1)²]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A331552

/-- `∑{#}[n, (-1)^#*(#+1)*C(n+1, #+1)²]` -/
def P14950380478050511940.Spec : Prop :=
  ∀ n, P14950380478050511940.a n = A331552 n

theorem P14950380478050511940.correct : P14950380478050511940.Spec := by
  intro n
  simp only [A331552]

end A331552

/-! ## A331552.P14819090633044760820

`∑{#}[n, (-2)^(n-#)*(n+#+1)*C(n, #)*C(n+#, #)]`
-/

namespace A331552.P14819090633044760820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (n + k + 1 : ℚ) * (Nat.choose n k : ℚ) * (Nat.choose (n + k) k : ℚ)

end

end A331552.P14819090633044760820

namespace A331552

/-- `∑{#}[n, (-2)^(n-#)*(n+#+1)*C(n, #)*C(n+#, #)]` -/
def P14819090633044760820.Spec : Prop :=
  ∀ n, P14819090633044760820.a n = (A331552 n : ℚ)

end A331552

/-! ## A331552.P4143532667282663836

`(n+1)/A001057(n)*a(n-1)` with `a(0)=1`
-/

namespace A331552.P4143532667282663836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) / (A001057 n : ℚ) * a (n - 1)

end

end A331552.P4143532667282663836

namespace A331552

/-- `(n+1)/A001057(n)*a(n-1)` -/
def P4143532667282663836.Spec : Prop :=
  ∀ n, P4143532667282663836.a n = (A331552 n : ℚ)

end A331552

/-! ## A331552.P2158465202699917695

`(-1)^floor(n/2)*A100071(n+1)`
-/

namespace A331552.P2158465202699917695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (A100071 (n + 1) : ℚ)

end

end A331552.P2158465202699917695

namespace A331552

/-- `(-1)^floor(n/2)*A100071(n+1)` -/
def P2158465202699917695.Spec : Prop :=
  ∀ n, P2158465202699917695.a n = (A331552 n : ℚ)

end A331552

/-! ## A331552.P3785117520877040863

`A063886(n)*A127630(n)`
-/

namespace A331552.P3785117520877040863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 n * A127630 n

end

end A331552.P3785117520877040863

namespace A331552

/-- `A063886(n)*A127630(n)` -/
def P3785117520877040863.Spec : Prop :=
  ∀ n, P3785117520877040863.a n = A331552 n

end A331552

/-! ## A331552.P1071821214794583469

`Δ[A009531(n)]*A063886(n)`
-/

namespace A331552.P1071821214794583469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A063886 n

end

end A331552.P1071821214794583469

namespace A331552

/-- `Δ[A009531(n)]*A063886(n)` -/
def P1071821214794583469.Spec : Prop :=
  ∀ n, P1071821214794583469.a n = A331552 n

end A331552

/-! ## A331552.P17502789278436185191

`A043547(n+1)*A128057(n)`
-/

namespace A331552.P17502789278436185191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043547 (n + 1) * A128057 n

end

end A331552.P17502789278436185191

namespace A331552

/-- `A043547(n+1)*A128057(n)` -/
def P17502789278436185191.Spec : Prop :=
  ∀ n, P17502789278436185191.a n = A331552 n

end A331552

/-! ## A331552.P7003913050028079564

`(A166445(n)-A166445(n+1))*A001405(n+1)`
-/

namespace A331552.P7003913050028079564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A166445 n - A166445 (n + 1)) * A001405 (n + 1)

end

end A331552.P7003913050028079564

namespace A331552

/-- `(A166445(n)-A166445(n+1))*A001405(n+1)` -/
def P7003913050028079564.Spec : Prop :=
  ∀ n, P7003913050028079564.a n = A331552 n

end A331552

/-! ## A331552.P473954199475277697

`∑{#}[floor(n/2), (-1)^#*C(n+1, #)*(n+1)]`
-/

namespace A331552.P473954199475277697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (-1) ^ k * (Nat.choose (n + 1) k : ℤ) * (n + 1 : ℤ)

end

end A331552.P473954199475277697

namespace A331552

/-- `∑{#}[floor(n/2), (-1)^#*C(n+1, #)*(n+1)]` -/
def P473954199475277697.Spec : Prop :=
  ∀ n, P473954199475277697.a n = A331552 n

end A331552

/-! ## A331552.P5107932705826942042

`(n+1)*A158208(∑[n+1])`
-/

namespace A331552.P5107932705826942042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A158208 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A331552.P5107932705826942042

namespace A331552

/-- `(n+1)*A158208(∑[n+1])` -/
def P5107932705826942042.Spec : Prop :=
  ∀ n, P5107932705826942042.a n = A331552 n

end A331552

/-! ## A331552.P5414913854042435186

`(n+1)*A130595(A004525(n²)+n)`
-/

namespace A331552.P5414913854042435186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A130595 (A004525 (n ^ 2) + (n : ℤ)).toNat

end

end A331552.P5414913854042435186

namespace A331552

/-- `(n+1)*A130595(A004525(n²)+n)` -/
def P5414913854042435186.Spec : Prop :=
  ∀ n, P5414913854042435186.a n = A331552 n

end A331552

/-! ## A331552.P7193842984376508930

`(n+1)*A130595(A008619((n+1)²)-1)`
-/

namespace A331552.P7193842984376508930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A130595 (A008619 ((n + 1) ^ 2) - 1).toNat

end

end A331552.P7193842984376508930

namespace A331552

/-- `(n+1)*A130595(A008619((n+1)²)-1)` -/
def P7193842984376508930.Spec : Prop :=
  ∀ n, P7193842984376508930.a n = A331552 n

end A331552

/-!
# A331553: Irregular triangle T(n,k) = A115722(n,k)^2 - n.

The programs for A331553, there is no canonical definition to state claims against.
-/

/-! ## A331553.P185798199667557634

`A001222(A063008(n))-A115722(n)²`
-/

namespace A331553.P185798199667557634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A063008 n).toNat - A115722 n ^ 2

end

end A331553.P185798199667557634

/-!
# A331554: Number of simple graphs on n vertices up to homotopy equivalence.

The programs for A331554, there is no canonical definition to state claims against.
-/

/-! ## A331554.P3293508814140522797

`∑[∑[A263358(n)]-char[1]]`
-/

namespace A331554.P3293508814140522797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263358 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331554.P3293508814140522797

/-! ## A331554.P159744868459139619

`A057428(n)+∑[∑[A263358(n)]]`
-/

namespace A331554.P159744868459139619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263358 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331554.P159744868459139619

/-! ## A331554.P671551313747526776

`∑[∑[A263358(n)]]-A057427(n)`
-/

namespace A331554.P671551313747526776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263358 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057427 n

end

end A331554.P671551313747526776

/-! ## A331554.P13759936771492633191

`∑[∑[A263358(n)]*A060576(n)]`
-/

namespace A331554.P13759936771492633191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263358 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A060576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331554.P13759936771492633191

/-! ## A331554.P15825793512933363666

`∑[∑[A263358(n)]%A000032(n)]`
-/

namespace A331554.P15825793512933363666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263358 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) (A000032 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331554.P15825793512933363666

/-!
# A331555: Prime numbers p_k such that p_k == 1 (mod 10) and p_(k+1) == 3 (mod 10).

The programs for A331555, the canonical program `A331555.P4693125471245912202` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331555 has offset 1).

The definition of A331555 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2991 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331555.P12680529623165379601

`∩[A030430(n+1), A129809(n+1)]`
-/

namespace A331555.P12680529623165379601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331555.P12680529623165379601

namespace A331555

/-- `∩[A030430(n+1), A129809(n+1)]` -/
def P12680529623165379601.Spec : Prop :=
  ∀ n, (P12680529623165379601.a n : ℤ) = A331555 (n + 1)

end A331555

/-! ## A331555.P989254291904822416

`∩[A090756(n+1), A129809(n+1)]`
-/

namespace A331555.P989254291904822416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331555.P989254291904822416

namespace A331555

/-- `∩[A090756(n+1), A129809(n+1)]` -/
def P989254291904822416.Spec : Prop :=
  ∀ n, (P989254291904822416.a n : ℤ) = A331555 (n + 1)

end A331555

/-! ## A331555.P4693125471245912202

`∩[A129809(n+1), A327752(n+1)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A331555

/-- `∩[A129809(n+1), A327752(n+1)]` -/
def P4693125471245912202.Spec : Prop :=
  ∀ n, (P4693125471245912202.a n : ℤ) = A331555 (n + 1)

theorem P4693125471245912202.correct : P4693125471245912202.Spec := by
  intro n
  simp only [A331555, Nat.add_sub_cancel]

end A331555

/-! ## A331555.P5470201736342631997

`∩[A004615(n+1), A129809(n+1)]`
-/

namespace A331555.P5470201736342631997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331555.P5470201736342631997

namespace A331555

/-- `∩[A004615(n+1), A129809(n+1)]` -/
def P5470201736342631997.Spec : Prop :=
  ∀ n, (P5470201736342631997.a n : ℤ) = A331555 (n + 1)

end A331555

/-! ## A331555.P7151422590920733932

`p?[A063482(eq[3, A007652(n+1)])]`
-/

namespace A331555.P7151422590920733932
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063482 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A331555.P7151422590920733932

namespace A331555

/-- `p?[A063482(eq[3, A007652(n+1)])]` -/
def P7151422590920733932.Spec : Prop :=
  ∀ n, P7151422590920733932.a n = A331555 (n + 1)

end A331555

/-! ## A331555.P13485009486074811502

`A000040(eq[A007652(n+1)+2, A039703(n+2)]+1)`
-/

namespace A331555.P13485009486074811502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039703 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A331555.P13485009486074811502

namespace A331555

/-- `A000040(eq[A007652(n+1)+2, A039703(n+2)]+1)` -/
def P13485009486074811502.Spec : Prop :=
  ∀ n, P13485009486074811502.a n = A331555 (n + 1)

end A331555

/-! ## A331555.P9048919958469605575

`A000040(eq[3, A007652(n+2)^A007652(n+1)]+1)`
-/

namespace A331555.P9048919958469605575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007652 (n + 2) : ℚ) ^ (A007652 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1)

end

end A331555.P9048919958469605575

namespace A331555

/-- `A000040(eq[3, A007652(n+2)^A007652(n+1)]+1)` -/
def P9048919958469605575.Spec : Prop :=
  ∀ n, P9048919958469605575.a n = A331555 (n + 1)

end A331555

/-! ## A331555.P14949759709882853363

`∩[A129809(n+1), A331194(n+1)]`
-/

namespace A331555.P14949759709882853363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331555.P14949759709882853363

namespace A331555

/-- `∩[A129809(n+1), A331194(n+1)]` -/
def P14949759709882853363.Spec : Prop :=
  ∀ n, (P14949759709882853363.a n : ℤ) = A331555 (n + 1)

end A331555

/-! ## A331555.P14047845186767386088

`∩[A129809(n+1), A017281(n)]`
-/

namespace A331555.P14047845186767386088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331555.P14047845186767386088

namespace A331555

/-- `∩[A129809(n+1), A017281(n)]` -/
def P14047845186767386088.Spec : Prop :=
  ∀ n, (P14047845186767386088.a n : ℤ) = A331555 (n + 1)

end A331555

/-! ## A331555.P5555944798047934048

`∩[A129809(n+1), A017305(n)-2]`
-/

namespace A331555.P5555944798047934048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331555.P5555944798047934048

namespace A331555

/-- `∩[A129809(n+1), A017305(n)-2]` -/
def P5555944798047934048.Spec : Prop :=
  ∀ n, (P5555944798047934048.a n : ℤ) = A331555 (n + 1)

end A331555

/-! ## A331555.P15009278578533808980

`∩[A030430(n+1), A151799(A045414(n+1))]`
-/

namespace A331555.P15009278578533808980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (A045414 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331555.P15009278578533808980

namespace A331555

/-- `∩[A030430(n+1), A151799(A045414(n+1))]` -/
def P15009278578533808980.Spec : Prop :=
  ∀ n, (P15009278578533808980.a n : ℤ) = A331555 (n + 1)

end A331555

/-! ## A331555.P3596229149752649153

`∩[A129809(n+1), A277588(n+1)]`
-/

namespace A331555.P3596229149752649153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331555.P3596229149752649153

namespace A331555

/-- `∩[A129809(n+1), A277588(n+1)]` -/
def P3596229149752649153.Spec : Prop :=
  ∀ n, (P3596229149752649153.a n : ℤ) = A331555 (n + 1)

end A331555

/-! ## A331555.P9988175865709758061

`∩[A129809(n+1), A225297(n+1)]`
-/

namespace A331555.P9988175865709758061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331555.P9988175865709758061

namespace A331555

/-- `∩[A129809(n+1), A225297(n+1)]` -/
def P9988175865709758061.Spec : Prop :=
  ∀ n, (P9988175865709758061.a n : ℤ) = A331555 (n + 1)

end A331555

/-! ## A331555.P6920047270351913933

`filter[A129809(n+1), A185705(#)]`
-/

namespace A331555.P6920047270351913933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185705 (f1 j).toNat = 1) n)

end

end A331555.P6920047270351913933

namespace A331555

/-- `filter[A129809(n+1), A185705(#)]` -/
def P6920047270351913933.Spec : Prop :=
  ∀ n, P6920047270351913933.a n = A331555 (n + 1)

end A331555

/-! ## A331555.P2409001017864619444

`∩[A105179(n+1), A129809(n+1)]`
-/

namespace A331555.P2409001017864619444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331555.P2409001017864619444

namespace A331555

/-- `∩[A105179(n+1), A129809(n+1)]` -/
def P2409001017864619444.Spec : Prop :=
  ∀ n, (P2409001017864619444.a n : ℤ) = A331555 (n + 1)

end A331555

/-! ## A331555.P12109367315701413621

`∩[A129809(n+1), A016861(n)]`
-/

namespace A331555.P12109367315701413621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331555.P12109367315701413621

namespace A331555

/-- `∩[A129809(n+1), A016861(n)]` -/
def P12109367315701413621.Spec : Prop :=
  ∀ n, (P12109367315701413621.a n : ℤ) = A331555 (n + 1)

end A331555

/-! ## A331555.P10111075866295757605

`∩[A129809(n+1), A197652(n+1)]`
-/

namespace A331555.P10111075866295757605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331555.P10111075866295757605

namespace A331555

/-- `∩[A129809(n+1), A197652(n+1)]` -/
def P10111075866295757605.Spec : Prop :=
  ∀ n, (P10111075866295757605.a n : ℤ) = A331555 (n + 1)

end A331555

/-! ## A331555.P14397826828785959271

`∩[A129809(n+1), A271508(n+1)]`
-/

namespace A331555.P14397826828785959271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271508 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331555.P14397826828785959271

namespace A331555

/-- `∩[A129809(n+1), A271508(n+1)]` -/
def P14397826828785959271.Spec : Prop :=
  ∀ n, (P14397826828785959271.a n : ℤ) = A331555 (n + 1)

end A331555

/-! ## A331555.P3953981798875789336

`∩[A129809(n+1), A306277(n+1)]`
-/

namespace A331555.P3953981798875789336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331555.P3953981798875789336

namespace A331555

/-- `∩[A129809(n+1), A306277(n+1)]` -/
def P3953981798875789336.Spec : Prop :=
  ∀ n, (P3953981798875789336.a n : ℤ) = A331555 (n + 1)

end A331555

/-! ## A331555.P18102602494332517014

`∩[A129809(n+1), A132359(n+1)]`
-/

namespace A331555.P18102602494332517014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331555.P18102602494332517014

namespace A331555

/-- `∩[A129809(n+1), A132359(n+1)]` -/
def P18102602494332517014.Spec : Prop :=
  ∀ n, (P18102602494332517014.a n : ℤ) = A331555 (n + 1)

end A331555

/-!
# A331556: The lower (or left) offset of a 196-iterate (A006960) from the largest palindrome less than the iterate.

The programs for A331556, there is no canonical definition to state claims against.
-/

/-! ## A331556.P2347511280539652954

`A331560(n+1)-A331557(n+1)`
-/

namespace A331556.P2347511280539652954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331560 (n + 1) - A331557 (n + 1)

end

end A331556.P2347511280539652954

/-! ## A331556.P9030207242293691111

`A086862(A014187(n+3)-A070154(2*n+3))-A331557(n+1)`
-/

namespace A331556.P9030207242293691111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086862 (A014187 (n + 3) - A070154 (2 * n + 3)).toNat - A331557 (n + 1)

end

end A331556.P9030207242293691111

/-!
# A331557: The upper (or right) offset of a 196-iterate (A006960) from the smallest palindrome greater than the iterate.

The programs for A331557, there is no canonical definition to state claims against.
-/

/-! ## A331557.P10763734038836016048

`A331560(n+1)-A331556(n+1)`
-/

namespace A331557.P10763734038836016048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331560 (n + 1) - A331556 (n + 1)

end

end A331557.P10763734038836016048

/-!
# A331558: E.g.f.: log(1 - x - log(1 - x)).

The programs for A331558, there is no canonical definition to state claims against.
-/

/-! ## A331558.P4502242514214819752

`A300491(n+1)-n!`
-/

namespace A331558.P4502242514214819752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300491 (n + 1) - (Nat.factorial n : ℤ)

end

end A331558.P4502242514214819752

/-! ## A331558.P14958440090328171691

`A300491(n+1)-A000142(n)`
-/

namespace A331558.P14958440090328171691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300491 (n + 1) - A000142 n

end

end A331558.P14958440090328171691

/-!
# A331559: E.g.f.: -log(1 + x + log(1 - x)).

The programs for A331559, there is no canonical definition to state claims against.
-/

/-! ## A331559.P15595115446540289271

`A347571(A073789(n+1))`
-/

namespace A331559.P15595115446540289271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347571 (A073789 (n + 1)).toNat

end

end A331559.P15595115446540289271

/-! ## A331559.P16837314409902756325

`A347571(A141769(n+1))`
-/

namespace A331559.P16837314409902756325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347571 (A141769 (n + 1)).toNat

end

end A331559.P16837314409902756325

/-! ## A331559.P696246547221143155

`n*A110266(A177251(n))`
-/

namespace A331559.P696246547221143155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A110266 (A177251 n).toNat

end

end A331559.P696246547221143155

/-!
# A331560: Size of the palindrome-free intervals about the 196-iterates, A006960.

The programs for A331560, there is no canonical definition to state claims against.
-/

/-! ## A331560.P206220591528185378

`A331556(n+1)+A331557(n+1)`
-/

namespace A331560.P206220591528185378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331556 (n + 1) + A331557 (n + 1)

end

end A331560.P206220591528185378

/-! ## A331560.P15367972659689904865

`A086862(or(A005902(n), A055436(n+1)))`
-/

namespace A331560.P15367972659689904865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086862 (Int.lor (A005902 n) (A055436 (n + 1))).toNat

end

end A331560.P15367972659689904865

/-! ## A331560.P3511417751281520356

`A086862(or(A120644(n+1), A264080(n)))`
-/

namespace A331560.P3511417751281520356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086862 (Int.lor (A120644 (n + 1)) (A264080 n)).toNat

end

end A331560.P3511417751281520356

/-! ## A331560.P5536861287394664375

`A086862(or(A241246(n+1), A241249(n+1)))`
-/

namespace A331560.P5536861287394664375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086862 (Int.lor (A241246 (n + 1)) (A241249 (n + 1))).toNat

end

end A331560.P5536861287394664375

/-! ## A331560.P8011215957858368510

`A086862(or(A014311(3*n+2), A069263(2*(n+1))))`
-/

namespace A331560.P8011215957858368510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086862 (Int.lor (A014311 (3 * n + 2)) (A069263 (2 * (n + 1)))).toNat

end

end A331560.P8011215957858368510

/-!
# A331563: Number of labeled cyclic graphs with n edges and 2n vertices.

The programs for A331563, there is no canonical definition to state claims against.
-/

/-! ## A331563.P2771960739164404537

`A331505(2*(n+1))-A302112(n+1)`
-/

namespace A331563.P2771960739164404537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331505 (2 * (n + 1)) - A302112 (n + 1)

end

end A331563.P2771960739164404537

/-!
# A331566: Smallest prime p such that p*A014574(n) is adjacent to a prime.

The programs for A331566, there is no canonical definition to state claims against.
-/

/-! ## A331566.P4439137847497607202

`A007918(A307833(n+1)%A196188(n+1))`
-/

namespace A331566.P4439137847497607202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (Int.tmod (A307833 (n + 1)) (A196188 (n + 1))).toNat

end

end A331566.P4439137847497607202

/-! ## A331566.P8758213413621297926

`A007918(A307833(n+1))%A239721(n+1)`
-/

namespace A331566.P8758213413621297926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007918 (A307833 (n + 1)).toNat) (A239721 (n + 1))

end

end A331566.P8758213413621297926

/-! ## A331566.P10641735505255627095

`A246795(A307833(2*n+1-n)%A196188(n+1)+2)`
-/

namespace A331566.P10641735505255627095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246795 (Int.tmod (A307833 (2 * n + 1 - n)) (A196188 (n + 1)) + 2).toNat

end

end A331566.P10641735505255627095

/-! ## A331566.P15300931694909164236

`A007918(A307833(n+1))*A349619(A349636(n+1))`
-/

namespace A331566.P15300931694909164236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A307833 (n + 1)).toNat * A349619 (A349636 (n + 1)).toNat

end

end A331566.P15300931694909164236

/-! ## A331566.P12863354041010490884

`A007918(A307833(n+1))*A010051(A290163(n+1))`
-/

namespace A331566.P12863354041010490884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A307833 (n + 1)).toNat * A010051 (A290163 (n + 1)).toNat

end

end A331566.P12863354041010490884

/-!
# A331568: Array read by antidiagonals: A(n,k) is the number of nonnegative integer matrices with k columns and any number of distinct nonzero rows with column sums n.

The programs for A331568, there is no canonical definition to state claims against.
-/

/-! ## A331568.P14670106355035370949

`A335518(A301287(n)%A098568(n))`
-/

namespace A331568.P14670106355035370949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335518 (Int.tmod (A301287 n) (A098568 n)).toNat

end

end A331568.P14670106355035370949

/-! ## A331568.P16781991350668554145

`A074206(C(A033552(n), A071920(n)))`
-/

namespace A331568.P16781991350668554145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (Nat.choose (A033552 n).toNat (A071920 n).toNat)

end

end A331568.P16781991350668554145

/-! ## A331568.P16478835137799467450

`A000670(∑{d}[A331572(n), A331572(#)])`
-/

namespace A331568.P16478835137799467450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (∑ d ∈ Nat.divisors (f1 n).natAbs, A331572 d).toNat

end

end A331568.P16478835137799467450

/-! ## A331568.P15785732321972248613

`or(A163351(A331572(n)²), A262809(n))`
-/

namespace A331568.P15785732321972248613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A163351 (A331572 n ^ 2).toNat) (A262809 n)

end

end A331568.P15785732321972248613

/-! ## A331568.P4466824620722051624

`or(A249858(A008277(n+1)), A257565(n))`
-/

namespace A331568.P4466824620722051624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A249858 (A008277 (n + 1)).toNat) (A257565 n)

end

end A331568.P4466824620722051624

/-!
# A331569: Array read by antidiagonals: A(n,k) is the number of binary matrices with k distinct columns and any number of distinct nonzero rows with n ones in every column and columns in decreasing lexicographic order.

The programs for A331569, there is no canonical definition to state claims against.
-/

/-! ## A331569.P5972232737477114193

`A014586(A288972(n)*A331277(n))`
-/

namespace A331569.P5972232737477114193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014586 (A288972 n * A331277 n).toNat

end

end A331569.P5972232737477114193

/-! ## A331569.P4205640500726253698

`A341743(A331278(n))`
-/

namespace A331569.P4205640500726253698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341743 (A331278 n).toNat

end

end A331569.P4205640500726253698

/-! ## A331569.P2146395223492624172

`A116799(A368156(n+2))`
-/

namespace A331569.P2146395223492624172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116799 (A368156 (n + 2)).toNat

end

end A331569.P2146395223492624172

/-! ## A331569.P1252806199246216905

`A350111(A331278(n)+5)`
-/

namespace A331569.P1252806199246216905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350111 (A331278 n + 5).toNat

end

end A331569.P1252806199246216905

/-! ## A331569.P11824419000015238817

`A098152(A331039(n)*A331508(n))`
-/

namespace A331569.P11824419000015238817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098152 (A331039 n * A331508 n).toNat

end

end A331569.P11824419000015238817

/-!
# A331570: Array read by antidiagonals: A(n,k) is the number of nonnegative integer matrices with k distinct columns and any number of distinct nonzero rows with column sums n and columns in decreasing lexicographic order.

The programs for A331570, there is no canonical definition to state claims against.
-/

/-! ## A331570.P207492502702903468

`A120565(A331278(n))`
-/

namespace A331570.P207492502702903468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120565 (A331278 n).toNat

end

end A331570.P207492502702903468

/-! ## A331570.P1144026914803487694

`dr(A331122(A331160(n)))`
-/

namespace A331570.P1144026914803487694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A331122 (A331160 n).toNat)

end

end A331570.P1144026914803487694

/-! ## A331570.P5409825425895912615

`A287870(A331278(n)+1)`
-/

namespace A331570.P5409825425895912615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287870 (A331278 n + 1).toNat

end

end A331570.P5409825425895912615

/-! ## A331570.P16894988553053011213

`A352178(A331160(n)+1)`
-/

namespace A331570.P16894988553053011213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352178 (A331160 n + 1).toNat

end

end A331570.P16894988553053011213

/-! ## A331570.P6822225769856239931

`A331277(n)+A055641(A327475(n))`
-/

namespace A331570.P6822225769856239931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331277 n + A055641 (A327475 n).toNat

end

end A331570.P6822225769856239931

/-!
# A331573: The bottom entry in the forward difference table of the Euler totient function phi for 1..n.

The programs for A331573, the canonical program `A331573.P1027232166475324855` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331573 has offset 1).

The definition of A331573 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331573.P1027232166475324855

`∑{#}[n, (-1)^(n+1-(#+1))*C(n+1, #+1)*A002088(#+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A331573

/-- `∑{#}[n, (-1)^(n+1-(#+1))*C(n+1, #+1)*A002088(#+1)]` -/
def P1027232166475324855.Spec : Prop :=
  ∀ n, P1027232166475324855.a n = (A331573 (n + 1) : ℚ)

end A331573

/-! ## A331573.P12319473582727330626

`∑{#}[n, (-1)^(n-#)*C(n, #)*A000010(#+1)]`
-/

namespace A331573.P12319473582727330626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A000010 (k + 1) : ℚ)

end

end A331573.P12319473582727330626

namespace A331573

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A000010(#+1)]` -/
def P12319473582727330626.Spec : Prop :=
  ∀ n, P12319473582727330626.a n = (A331573 (n + 1) : ℚ)

end A331573

/-! ## A331573.P11991620494136718037

`∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A005728(#)]`
-/

namespace A331573.P11991620494136718037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n + 1 : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (n + 1) k : ℚ) * (A005728 k : ℚ)

end

end A331573.P11991620494136718037

namespace A331573

/-- `∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A005728(#)]` -/
def P11991620494136718037.Spec : Prop :=
  ∀ n, P11991620494136718037.a n = (A331573 (n + 1) : ℚ)

end A331573

/-!
# A331574: a(n) is the number of subsets of {1..n} that contain 3 even and 3 odd numbers.

The programs for A331574, the canonical program `A331574.P4899316904295569274` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331574 has offset 0).

The definition of A331574 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331574.P4899316904295569274

`ogf((x^6+2x^7+4x^8+2x^9+x^10)/(1-2x-4x^2+10x^3+5x^4-20x^5+20x^7-5x^8-10x^9+4x^10+2x^11-x^12))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A331574

/-- `ogf((x^6+2x^7+4x^8+2x^9+x^10)/(1-2x-4x^2+10x^3+5x^4-20x^5+20x^7-5x^8-10x^9+4x^10+2x^11-x^12))` -/
def P4899316904295569274.Spec : Prop :=
  ∀ n, P4899316904295569274.a n = A331574 n

theorem P4899316904295569274.correct : P4899316904295569274.Spec := by
  intro n
  simp only [A331574]

end A331574

/-! ## A331574.P3590845943687537992

`C(floor(n/2), 3)*C(floor((n+1)/2), 3)`
-/

namespace A331574.P3590845943687537992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊(n : ℚ) / 2⌋.toNat 3 * Nat.choose ⌊(n + 1 : ℚ) / 2⌋.toNat 3

end

end A331574.P3590845943687537992

namespace A331574

/-- `C(floor(n/2), 3)*C(floor((n+1)/2), 3)` -/
def P3590845943687537992.Spec : Prop :=
  ∀ n, (P3590845943687537992.a n : ℤ) = A331574 n

end A331574

/-! ## A331574.P10602018133583551218

`∑[A028725(n)]`
-/

namespace A331574.P10602018133583551218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331574.P10602018133583551218

namespace A331574

/-- `∑[A028725(n)]` -/
def P10602018133583551218.Spec : Prop :=
  ∀ n, P10602018133583551218.a n = A331574 n

end A331574

/-! ## A331574.P14794275585014647613

`A007531(floor((n+1)/2))/6*A007531(floor(n/2))/6`
-/

namespace A331574.P14794275585014647613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007531 ⌊(n + 1 : ℚ) / 2⌋.toNat : ℚ) / 6 * ((A007531 ⌊(n : ℚ) / 2⌋.toNat : ℚ) / 6)

end

end A331574.P14794275585014647613

namespace A331574

/-- `A007531(floor((n+1)/2))/6*A007531(floor(n/2))/6` -/
def P14794275585014647613.Spec : Prop :=
  ∀ n, P14794275585014647613.a n = (A331574 n : ℚ)

end A331574

/-! ## A331574.P11442632041455597541

`A301919(A023422(n))`
-/

namespace A331574.P11442632041455597541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301919 (A023422 n).toNat

end

end A331574.P11442632041455597541

namespace A331574

/-- `A301919(A023422(n))` -/
def P11442632041455597541.Spec : Prop :=
  ∀ n, P11442632041455597541.a n = A331574 n

end A331574

/-!
# A331575: a(n) is the number of subsets of {1..n} that contain 4 even and 4 odd numbers.

The programs for A331575, the canonical program `A331575.P9808497871265616019` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331575 has offset 0).

The definition of A331575 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331575.P12320386141032427226

`C(floor(n/2), 4)*C(floor((n+1)/2), 4)`
-/

namespace A331575.P12320386141032427226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊(n : ℚ) / 2⌋.toNat 4 * Nat.choose ⌊(n + 1 : ℚ) / 2⌋.toNat 4

end

end A331575.P12320386141032427226

namespace A331575

/-- `C(floor(n/2), 4)*C(floor((n+1)/2), 4)` -/
def P12320386141032427226.Spec : Prop :=
  ∀ n, (P12320386141032427226.a n : ℤ) = A331575 n

end A331575

/-! ## A331575.P9808497871265616019

`A000332(A004526(n))*A000332(A065033(n))`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A331575

/-- `A000332(A004526(n))*A000332(A065033(n))` -/
def P9808497871265616019.Spec : Prop :=
  ∀ n, P9808497871265616019.a n = A331575 n

theorem P9808497871265616019.correct : P9808497871265616019.Spec := by
  intro n
  simp only [A331575]

end A331575

/-! ## A331575.P12553789134876372281

`A000332(A004526(n))*A000332(A110654(n))`
-/

namespace A331575.P12553789134876372281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A004526 n).toNat * A000332 (A110654 n).toNat

end

end A331575.P12553789134876372281

namespace A331575

/-- `A000332(A004526(n))*A000332(A110654(n))` -/
def P12553789134876372281.Spec : Prop :=
  ∀ n, P12553789134876372281.a n = A331575 n

end A331575

/-! ## A331575.P4937053723290894632

`A000332(A110654(n))*A000332(A123108(n))`
-/

namespace A331575.P4937053723290894632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A110654 n).toNat * A000332 (A123108 n).toNat

end

end A331575.P4937053723290894632

namespace A331575

/-- `A000332(A110654(n))*A000332(A123108(n))` -/
def P4937053723290894632.Spec : Prop :=
  ∀ n, P4937053723290894632.a n = A331575 n

end A331575

/-! ## A331575.P3660272546024680499

`A000332(A123108(n+1))*A000332(A123108(n))`
-/

namespace A331575.P3660272546024680499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A123108 (n + 1)).toNat * A000332 (A123108 n).toNat

end

end A331575.P3660272546024680499

namespace A331575

/-- `A000332(A123108(n+1))*A000332(A123108(n))` -/
def P3660272546024680499.Spec : Prop :=
  ∀ n, P3660272546024680499.a n = A331575 n

end A331575

/-! ## A331575.P12401855034360581620

`A000332(A059169(2*n+1))*A000332(A059169(2*(n+1)))`
-/

namespace A331575.P12401855034360581620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A059169 (2 * n + 1)).toNat * A000332 (A059169 (2 * (n + 1))).toNat

end

end A331575.P12401855034360581620

namespace A331575

/-- `A000332(A059169(2*n+1))*A000332(A059169(2*(n+1)))` -/
def P12401855034360581620.Spec : Prop :=
  ∀ n, P12401855034360581620.a n = A331575 n

end A331575

/-!
# A331576: a(n) is the number of subsets of {1..n} that contain 5 even and 5 odd numbers.

The programs for A331576, the canonical program `A331576.P7474989431527191840` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331576 has offset 0).

The definition of A331576 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331576.P7474989431527191840

`A000389(floor(n/2))*A000389(A065033(n))`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A331576

/-- `A000389(floor(n/2))*A000389(A065033(n))` -/
def P7474989431527191840.Spec : Prop :=
  ∀ n, P7474989431527191840.a n = A331576 n

theorem P7474989431527191840.correct : P7474989431527191840.Spec := by
  intro n
  simp only [A331576]

end A331576

/-! ## A331576.P1283575218191777986

`A000389(A065033(n))*A000389(A004526(n))`
-/

namespace A331576.P1283575218191777986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (A065033 n).toNat * A000389 (A004526 n).toNat

end

end A331576.P1283575218191777986

namespace A331576

/-- `A000389(A065033(n))*A000389(A004526(n))` -/
def P1283575218191777986.Spec : Prop :=
  ∀ n, P1283575218191777986.a n = A331576 n

theorem P1283575218191777986.correct : P1283575218191777986.Spec := by
  intro n
  simp only [A331576, Nat.add_sub_cancel, A331576.P1283575218191777986.a, A331576.P7474989431527191840.a, A000389, A000389.P15450220129395289428.a, A004526, A004526.P10084182425416171735.a, A065033, A065033.P13150710762287634520.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A331576

/-! ## A331576.P18016765268479738842

`A000389(A004526(n))*A000389(A110654(n))`
-/

namespace A331576.P18016765268479738842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (A004526 n).toNat * A000389 (A110654 n).toNat

end

end A331576.P18016765268479738842

namespace A331576

/-- `A000389(A004526(n))*A000389(A110654(n))` -/
def P18016765268479738842.Spec : Prop :=
  ∀ n, P18016765268479738842.a n = A331576 n

end A331576

/-! ## A331576.P4843783775201796298

`A000389(A065033(n))*A000389(A123108(n))`
-/

namespace A331576.P4843783775201796298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (A065033 n).toNat * A000389 (A123108 n).toNat

end

end A331576.P4843783775201796298

namespace A331576

/-- `A000389(A065033(n))*A000389(A123108(n))` -/
def P4843783775201796298.Spec : Prop :=
  ∀ n, P4843783775201796298.a n = A331576 n

end A331576

/-! ## A331576.P11160132087659184247

`A000389(A110654(n))*A000389(A123108(n))`
-/

namespace A331576.P11160132087659184247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (A110654 n).toNat * A000389 (A123108 n).toNat

end

end A331576.P11160132087659184247

namespace A331576

/-- `A000389(A110654(n))*A000389(A123108(n))` -/
def P11160132087659184247.Spec : Prop :=
  ∀ n, P11160132087659184247.a n = A331576 n

end A331576

/-! ## A331576.P8097567303175590382

`A000389(A004526(n+1))*A000389(A004526(n))`
-/

namespace A331576.P8097567303175590382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (A004526 (n + 1)).toNat * A000389 (A004526 n).toNat

end

end A331576.P8097567303175590382

namespace A331576

/-- `A000389(A004526(n+1))*A000389(A004526(n))` -/
def P8097567303175590382.Spec : Prop :=
  ∀ n, P8097567303175590382.a n = A331576 n

end A331576

/-! ## A331576.P4396162028617984527

`A226286(A028310(n))/A010551(n)`
-/

namespace A331576.P4396162028617984527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226286 (A028310 n).toNat : ℚ) / (A010551 n : ℚ)

end

end A331576.P4396162028617984527

namespace A331576

/-- `A226286(A028310(n))/A010551(n)` -/
def P4396162028617984527.Spec : Prop :=
  ∀ n, P4396162028617984527.a n = (A331576 n : ℚ)

end A331576

/-!
# A331577: Number of labeled rooted trees with n vertices and more than two branches of the root.

The programs for A331577, there is no canonical definition to state claims against.
-/

/-! ## A331577.P9749636814369556970

`(A000272(n)+Δ[n^abs(1-n)])%A000312(n)`
-/

namespace A331577.P9749636814369556970
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (|1 - (n : ℤ)| : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A000272 n : ℚ) + (f1 (n + 1) - f1 n))) (A000312 n)

end

end A331577.P9749636814369556970

/-! ## A331577.P1093134974805740303

`A333256(C(C(n, 2), 2)+1)`
-/

namespace A331577.P1093134974805740303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333256 (Nat.choose (Nat.choose n 2) 2 + 1)

end

end A331577.P1093134974805740303

/-!
# A331578: Number of labeled series-reduced rooted trees with n vertices and more than two branches of the root.

The programs for A331578, there is no canonical definition to state claims against.
-/

/-! ## A331578.P463570089905699158

`(n+1)*A091570(A000272(n))`
-/

namespace A331578.P463570089905699158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A091570 (A000272 n).toNat

end

end A331578.P463570089905699158

/-! ## A331578.P186794462440670377

`floor(∏{p}[2*n, floor(A258018(2*n+3)/#)]/2)`
-/

namespace A331578.P186794462440670377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ p ∈ Nat.primeFactors (f1 n), ⌊(A258018 (2 * n + 3) : ℚ) / (p : ℚ)⌋ : ℤ) : ℚ) / 2⌋

end

end A331578.P186794462440670377

/-!
# A331580: Smallest number whose unsorted prime signature is the reversed unsorted prime signature of n.

The programs for A331580, there is no canonical definition to state claims against.
-/

/-! ## A331580.P13423126358162362050

`A054842(A037916(n+1))`
-/

namespace A331580.P13423126358162362050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 (A037916 (n + 1)).toNat

end

end A331580.P13423126358162362050

/-! ## A331580.P15065212137921459199

`A071364(A069799(n+1))`
-/

namespace A331580.P15065212137921459199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (A069799 (n + 1)).toNat

end

end A331580.P15065212137921459199

/-! ## A331580.P6135749422679162344

`A137502(A071364(n+1))`
-/

namespace A331580.P6135749422679162344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137502 (A071364 (n + 1)).toNat

end

end A331580.P6135749422679162344

/-! ## A331580.P1514823452242633699

`A071364(A225891(n+1))`
-/

namespace A331580.P1514823452242633699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (A225891 (n + 1)).toNat

end

end A331580.P1514823452242633699

/-! ## A331580.P13472349373538569282

`A071364(A242419(n+1))`
-/

namespace A331580.P13472349373538569282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (A242419 (n + 1)).toNat

end

end A331580.P13472349373538569282

/-!
# A331581: Maximum part of the n-th integer partition in graded reverse-lexicographic order (A080577); a(1) = 0.

The programs for A331581, there is no canonical definition to state claims against.
-/

/-! ## A331581.P9052396474864837371

`A061395(A129129(n))`
-/

namespace A331581.P9052396474864837371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A129129 n).toNat

end

end A331581.P9052396474864837371

/-! ## A331581.P7340958033499863330

`val(A063008(n), 2)`
-/

namespace A331581.P7340958033499863330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A063008 n).toNat 2

end

end A331581.P7340958033499863330

/-! ## A331581.P17508234140716287428

`∑{e}[A333485(n), #]`
-/

namespace A331581.P17508234140716287428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333485 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A331581.P17508234140716287428

/-! ## A331581.P5541302576835131369

`A065120(A114994(n))`
-/

namespace A331581.P5541302576835131369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (A114994 n).toNat

end

end A331581.P5541302576835131369

/-! ## A331581.P9924289318111948523

`A001222(A333485(n))`
-/

namespace A331581.P9924289318111948523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A333485 n).toNat

end

end A331581.P9924289318111948523

/-! ## A331581.P6544412214902032630

`∑{e}[A333484(n), #]`
-/

namespace A331581.P6544412214902032630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333484 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A331581.P6544412214902032630

/-! ## A331581.P18256926603548209680

`A001222(A333484(n))`
-/

namespace A331581.P18256926603548209680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A333484 n).toNat

end

end A331581.P18256926603548209680

/-!
# A331582: a(n) = n! * [x^n] exp(n - exp(x) * (exp(n*x) - 1) / (exp(x) - 1)).

The programs for A331582, there is no canonical definition to state claims against.
-/

/-! ## A331582.P2601831411337343315

`A027641(n)*A037143(A132854(n))`
-/

namespace A331582.P2601831411337343315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 n * A037143 (A132854 n).toNat

end

end A331582.P2601831411337343315

/-!
# A331583: Product of first n terms of continued fraction expansion of Pi.

The programs for A331583, there is no canonical definition to state claims against.
-/

/-! ## A331583.P898123925494145019

`∏[A001203(n)]`
-/

namespace A331583.P898123925494145019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A331583.P898123925494145019

/-! ## A331583.P11342539260568905628

`a(n-1)*A001203(gcd(n, 2*n))` with `a(0)=3`
-/

namespace A331583.P11342539260568905628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) * A001203 (Nat.gcd n (2 * n))

end

end A331583.P11342539260568905628

/-! ## A331583.P5092582750059677175

`∏[A292106(n)/A003417(n)]`
-/

namespace A331583.P5092582750059677175
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292106 n : ℚ) / (A003417 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A331583.P5092582750059677175

/-! ## A331583.P9792414082090359301

`∏[floor(ratio[A046947(n)])]`
-/

namespace A331583.P9792414082090359301
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046947 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f2 (n + 1) : ℚ) / (f2 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A331583.P9792414082090359301

/-! ## A331583.P8226702711592672553

`∏[A137299(∑[n+1])]`
-/

namespace A331583.P8226702711592672553
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137299 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A331583.P8226702711592672553

/-!
# A331586: Even numbers n such that A048633(n+1) = A048633(n).

The programs for A331586, there is no canonical definition to state claims against.
-/

/-! ## A331586.P12309372404317835412

`A000005(A070858(n+1))*A129515(n+1)`
-/

namespace A331586.P12309372404317835412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A070858 (n + 1)).toNat * A129515 (n + 1)

end

end A331586.P12309372404317835412

/-! ## A331586.P11767372113607299190

`A001222(A129521(n+1))*A129515(n+1)`
-/

namespace A331586.P11767372113607299190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A129521 (n + 1)).toNat * A129515 (n + 1)

end

end A331586.P11767372113607299190

/-! ## A331586.P7077840312511197380

`A000005(A252170(n+1))*A129515(n+1)`
-/

namespace A331586.P7077840312511197380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A252170 (n + 1)).toNat * A129515 (n + 1)

end

end A331586.P7077840312511197380

/-! ## A331586.P2569926218834631340

`A020639(A305268(n))*A129515(n+1)`
-/

namespace A331586.P2569926218834631340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A305268 n).toNat * A129515 (n + 1)

end

end A331586.P2569926218834631340

/-! ## A331586.P8664102004088400790

`A030127(A129515(n+1))`
-/

namespace A331586.P8664102004088400790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030127 (A129515 (n + 1)).toNat

end

end A331586.P8664102004088400790

/-!
# A331587: Odd numbers of the form k * reverse(k) (where reverse(k) is the binary reversal of k, A030101(k)).

The programs for A331587, there is no canonical definition to state claims against.
-/

/-! ## A331587.P6201532267338446716

`A331588(n+1)*A331589(n+1)`
-/

namespace A331587.P6201532267338446716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331588 (n + 1) * A331589 (n + 1)

end

end A331587.P6201532267338446716

/-! ## A331587.P4612882251144929976

`A057889(A331588(n+1))*A331588(A000027(n+1))`
-/

namespace A331587.P4612882251144929976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A331588 (n + 1)).toNat * A331588 (A000027 (n + 1)).toNat

end

end A331587.P4612882251144929976

/-! ## A331587.P18137089725006374497

`A325401(A331589(n+1))*A331589(A000027(n+1))`
-/

namespace A331587.P18137089725006374497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A331589 (n + 1)).toNat * A331589 (A000027 (n + 1)).toNat

end

end A331587.P18137089725006374497

/-! ## A331587.P18297692838495454365

`A057889(A331589(n+1)%A001513(n))*A331589(n+1)`
-/

namespace A331587.P18297692838495454365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (Int.tmod (A331589 (n + 1)) (A001513 n)).toNat * A331589 (n + 1)

end

end A331587.P18297692838495454365

/-! ## A331587.P1193619953026777557

`A056539(or(1, A331588(n+1)))*A331588(n+1)`
-/

namespace A331587.P1193619953026777557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (Int.lor 1 (A331588 (n + 1))).toNat * A331588 (n + 1)

end

end A331587.P1193619953026777557

/-! ## A331587.P10526158540939202627

`A165789(A331588(2*n+1-n))*A331588(n+1)`
-/

namespace A331587.P10526158540939202627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165789 (A331588 (2 * n + 1 - n)).toNat * A331588 (n + 1)

end

end A331587.P10526158540939202627

/-! ## A331587.P2178027813576682107

`A056539(or(1, A331589(n+1)))*A331589(n+1)`
-/

namespace A331587.P2178027813576682107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (Int.lor 1 (A331589 (n + 1))).toNat * A331589 (n + 1)

end

end A331587.P2178027813576682107

/-! ## A331587.P4914842374403683222

`A325401(2*A331588(n+1))*A331588(n+1)`
-/

namespace A331587.P4914842374403683222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A331588 (n + 1)).toNat * A331588 (n + 1)

end

end A331587.P4914842374403683222

/-! ## A331587.P2735185942295613092

`A325401(2*A331589(n+1))*A331589(n+1)`
-/

namespace A331587.P2735185942295613092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A331589 (n + 1)).toNat * A331589 (n + 1)

end

end A331587.P2735185942295613092

/-! ## A331587.P15023079699590210535

`A030101(2*A331588(n+1))*A331588(n+1)`
-/

namespace A331587.P15023079699590210535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (2 * A331588 (n + 1)).toNat * A331588 (n + 1)

end

end A331587.P15023079699590210535

/-! ## A331587.P2607923448217200074

`A030101(2*A331589(n+1))*A331589(n+1)`
-/

namespace A331587.P2607923448217200074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (2 * A331589 (n + 1)).toNat * A331589 (n + 1)

end

end A331587.P2607923448217200074

/-!
# A331588: a(n) is the least k such that A331587(n) = k * reverse(k) (where reverse(k) is the binary reversal of k, A030101(k)).

The programs for A331588, there is no canonical definition to state claims against.
-/

/-! ## A331588.P11918679466084549649

`A030101(A331589(n+1))`
-/

namespace A331588.P11918679466084549649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A331589 (n + 1)).toNat

end

end A331588.P11918679466084549649

/-! ## A331588.P12744869763961973095

`A331587(n+1)/A331589(n+1)`
-/

namespace A331588.P12744869763961973095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331587 (n + 1) : ℚ) / (A331589 (n + 1) : ℚ)

end

end A331588.P12744869763961973095

/-! ## A331588.P6410495529175316134

`A057889(A331589(n+1)%A001513(n))`
-/

namespace A331588.P6410495529175316134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (Int.tmod (A331589 (n + 1)) (A001513 n)).toNat

end

end A331588.P6410495529175316134

/-! ## A331588.P15487827167865942595

`A057889(2*A331589(n+1)-A331589(n+1))`
-/

namespace A331588.P15487827167865942595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (2 * A331589 (n + 1) - A331589 (n + 1)).toNat

end

end A331588.P15487827167865942595

/-! ## A331588.P2905724188420986997

`A056539(or(1, A331589(n+1)))`
-/

namespace A331588.P2905724188420986997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (Int.lor 1 (A331589 (n + 1))).toNat

end

end A331588.P2905724188420986997

/-! ## A331588.P9727961514111383509

`A163807(A331589(2*n+1-n))`
-/

namespace A331588.P9727961514111383509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163807 (A331589 (2 * n + 1 - n)).toNat

end

end A331588.P9727961514111383509

/-! ## A331588.P11677508950059855762

`A056539(2*A331589(n+1)-A331589(n+1))`
-/

namespace A331588.P11677508950059855762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (2 * A331589 (n + 1) - A331589 (n + 1)).toNat

end

end A331588.P11677508950059855762

/-! ## A331588.P10346662238009663384

`A057889(2*A331589(n+1))/2`
-/

namespace A331588.P10346662238009663384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057889 (2 * A331589 (n + 1)).toNat : ℚ) / 2

end

end A331588.P10346662238009663384

/-!
# A331589: a(n) is the greatest k such that A331587(n) = k * reverse(k) (where reverse(k) is the binary reversal of k, A030101(k)).

The programs for A331589, there is no canonical definition to state claims against.
-/

/-! ## A331589.P3113460897599500498

`A030101(A331588(n+1))`
-/

namespace A331589.P3113460897599500498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A331588 (n + 1)).toNat

end

end A331589.P3113460897599500498

/-! ## A331589.P14420954138202814162

`A331587(n+1)/A331588(n+1)`
-/

namespace A331589.P14420954138202814162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331587 (n + 1) : ℚ) / (A331588 (n + 1) : ℚ)

end

end A331589.P14420954138202814162

/-! ## A331589.P18270263283771177065

`A325402(A331588(1+2*n-n))`
-/

namespace A331589.P18270263283771177065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325402 (A331588 (1 + 2 * n - n)).toNat

end

end A331589.P18270263283771177065

/-! ## A331589.P15931045540011683143

`A056539(or(1, A331588(n+1)))`
-/

namespace A331589.P15931045540011683143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (Int.lor 1 (A331588 (n + 1))).toNat

end

end A331589.P15931045540011683143

/-! ## A331589.P5604328852914106685

`A056539(2*A331588(n+1)-A331588(n+1))`
-/

namespace A331589.P5604328852914106685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (2 * A331588 (n + 1) - A331588 (n + 1)).toNat

end

end A331589.P5604328852914106685

/-! ## A331589.P9427016850626704898

`A325401(2*A331588(n+1))`
-/

namespace A331589.P9427016850626704898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A331588 (n + 1)).toNat

end

end A331589.P9427016850626704898

/-! ## A331589.P8955718570613021847

`A325401(A331588(n+1)+A331588(n+1))`
-/

namespace A331589.P8955718570613021847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A331588 (n + 1) + A331588 (n + 1)).toNat

end

end A331589.P8955718570613021847

/-! ## A331589.P5112545231272922818

`A056539(A331588(n+1)%Δ[A053599(n+1)])`
-/

namespace A331589.P5112545231272922818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (Int.tmod (A331588 (n + 1)) (f1 (n + 1) - f1 n)).toNat

end

end A331589.P5112545231272922818

/-!
# A331590: Square array A(n,k) = A225546(A225546(n) * A225546(k)), n >= 1, k >= 1, read by descending antidiagonals.

The programs for A331590, there is no canonical definition to state claims against.
-/

/-! ## A331590.P4569715316284792281

`A225546(A225546(col(n)+1)*A225546(row(n)-col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A331590.P4569715316284792281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225546 (A225546 (SequenceMachineLib.triCol n + 1) * A225546 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat).toNat

end

end A331590.P4569715316284792281

/-! ## A331590.P7855570282534553624

`A225546(A225546(row(n)-col(n)+1)*A225546(col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A331590.P7855570282534553624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225546 (A225546 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat * A225546 (SequenceMachineLib.triCol n + 1)).toNat

end

end A331590.P7855570282534553624

/-! ## A331590.P9108273170543340406

`A091257(n+1)+A015494(A275266(n+1))`
-/

namespace A331590.P9108273170543340406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091257 (n + 1) + A015494 (A275266 (n + 1)).toNat

end

end A331590.P9108273170543340406

/-! ## A331590.P11217880519687524197

`A091257(n+1)-A014429(A294082(n+1))`
-/

namespace A331590.P11217880519687524197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091257 (n + 1) - A014429 (A294082 (n + 1)).toNat

end

end A331590.P11217880519687524197

/-!
# A331591: a(n) is the number of distinct prime factors of A225546(n), or equally, number of distinct prime factors of A293442(n).

The programs for A331591, the canonical program `A331591.P9034982908823654082` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331591 has offset 1).

The definition of A331591 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A267116, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A331591.P9034982908823654082

`A000120(A267116(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A331591

/-- `A000120(A267116(n+1))` -/
def P9034982908823654082.Spec : Prop :=
  ∀ n, P9034982908823654082.a n = A331591 (n + 1)

theorem P9034982908823654082.correct : P9034982908823654082.Spec := by
  intro n
  simp only [A331591, Nat.add_sub_cancel]

end A331591

/-! ## A331591.P5954271260430447398

`A001221(A293442(n+1))`
-/

namespace A331591.P5954271260430447398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A293442 (n + 1)).toNat

end

end A331591.P5954271260430447398

namespace A331591

/-- `A001221(A293442(n+1))` -/
def P5954271260430447398.Spec : Prop :=
  ∀ n, P5954271260430447398.a n = A331591 (n + 1)

end A331591

/-! ## A331591.P9926099907817715236

`∑{p}[A293442(n+1), A001222(#)]`
-/

namespace A331591.P9926099907817715236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A331591.P9926099907817715236

namespace A331591

/-- `∑{p}[A293442(n+1), A001222(#)]` -/
def P9926099907817715236.Spec : Prop :=
  ∀ n, P9926099907817715236.a n = A331591 (n + 1)

end A331591

/-! ## A331591.P8189347692744117490

`∑{p}[A293442(n+1), A032741(#)]`
-/

namespace A331591.P8189347692744117490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A032741 p

end

end A331591.P8189347692744117490

namespace A331591

/-- `∑{p}[A293442(n+1), A032741(#)]` -/
def P8189347692744117490.Spec : Prop :=
  ∀ n, P8189347692744117490.a n = A331591 (n + 1)

end A331591

/-! ## A331591.P2451338979518505019

`∑{p}[A293442(n+1), A052409(#)]`
-/

namespace A331591.P2451338979518505019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A052409 p

end

end A331591.P2451338979518505019

namespace A331591

/-- `∑{p}[A293442(n+1), A052409(#)]` -/
def P2451338979518505019.Spec : Prop :=
  ∀ n, P2451338979518505019.a n = A331591 (n + 1)

end A331591

/-! ## A331591.P985208108662870176

`∑{p}[A293442(n+1), A183096(#)]`
-/

namespace A331591.P985208108662870176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A183096 p

end

end A331591.P985208108662870176

namespace A331591

/-- `∑{p}[A293442(n+1), A183096(#)]` -/
def P985208108662870176.Spec : Prop :=
  ∀ n, P985208108662870176.a n = A331591 (n + 1)

end A331591

/-! ## A331591.P5402309205193827281

`A001222(∏{p}[A293442(n+1), #])`
-/

namespace A331591.P5402309205193827281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A331591.P5402309205193827281

namespace A331591

/-- `A001222(∏{p}[A293442(n+1), #])` -/
def P5402309205193827281.Spec : Prop :=
  ∀ n, P5402309205193827281.a n = A331591 (n + 1)

end A331591

/-! ## A331591.P5317402365393498079

`A001221(∏{e}[n+1, A019565(#)])`
-/

namespace A331591.P5317402365393498079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ p ∈ Nat.primeFactors (f1 n), A019565 (Nat.factorization (f1 n) p)).toNat

end

end A331591.P5317402365393498079

namespace A331591

/-- `A001221(∏{e}[n+1, A019565(#)])` -/
def P5317402365393498079.Spec : Prop :=
  ∀ n, P5317402365393498079.a n = A331591 (n + 1)

end A331591

/-! ## A331591.P12039656525075341267

`∑{p}[A293442(n+1), #-A000010(#)]`
-/

namespace A331591.P12039656525075341267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - A000010 p)

end

end A331591.P12039656525075341267

namespace A331591

/-- `∑{p}[A293442(n+1), #-A000010(#)]` -/
def P12039656525075341267.Spec : Prop :=
  ∀ n, P12039656525075341267.a n = A331591 (n + 1)

end A331591

/-! ## A331591.P13491661763690890565

`A064547(A007947(A293442(n+1)²))`
-/

namespace A331591.P13491661763690890565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A007947 (A293442 (n + 1) ^ 2).toNat).toNat

end

end A331591.P13491661763690890565

namespace A331591

/-- `A064547(A007947(A293442(n+1)²))` -/
def P13491661763690890565.Spec : Prop :=
  ∀ n, P13491661763690890565.a n = A331591 (n + 1)

end A331591

/-! ## A331591.P7525790771026183369

`∑{p}[A293442(n+1), A029084(A029084(#))]`
-/

namespace A331591.P7525790771026183369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A029084 (A029084 p).toNat

end

end A331591.P7525790771026183369

namespace A331591

/-- `∑{p}[A293442(n+1), A029084(A029084(#))]` -/
def P7525790771026183369.Spec : Prop :=
  ∀ n, P7525790771026183369.a n = A331591 (n + 1)

end A331591

/-! ## A331591.P324263987857157955

`∑{p}[A293442(n+1), A000010(A293442(#))]`
-/

namespace A331591.P324263987857157955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000010 (A293442 p).toNat

end

end A331591.P324263987857157955

namespace A331591

/-- `∑{p}[A293442(n+1), A000010(A293442(#))]` -/
def P324263987857157955.Spec : Prop :=
  ∀ n, P324263987857157955.a n = A331591 (n + 1)

end A331591

/-! ## A331591.P179769648794097774

`A000120(A001222(n+1)-A268374(n+1))`
-/

namespace A331591.P179769648794097774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A001222 (n + 1) - A268374 (n + 1)).toNat

end

end A331591.P179769648794097774

namespace A331591

/-- `A000120(A001222(n+1)-A268374(n+1))` -/
def P179769648794097774.Spec : Prop :=
  ∀ n, P179769648794097774.a n = A331591 (n + 1)

theorem P179769648794097774.correct : P179769648794097774.Spec := by
  intro n
  simp only [A331591, Nat.add_sub_cancel, A331591.P179769648794097774.a, A331591.P9034982908823654082.a, A000120, A000120.P2816527436160941581.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A267116, A267116.P5484407942504602728.a, A268374, A268374.P9921754921464293632.a, A005187, A005187.P3874015513960485494.a, A238745, A238745.P1043070907349583070.a, A329616, A329616.P252579871882611197.a, A064989, A064989.P13349672914146769936.a, A122111, A122111.P18124015185857335041.a, A181819, A181819.P15090535388863431201.a, A001511, A001511.P17146462531039486101.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A105560, A105560.P10934841406439867276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A331591

/-! ## A331591.P6710336440647703810

`A002024(A293442(∏{p}[A293442(n+1), #]))-1`
-/

namespace A331591.P6710336440647703810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A293442 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)).toNat - 1

end

end A331591.P6710336440647703810

namespace A331591

/-- `A002024(A293442(∏{p}[A293442(n+1), #]))-1` -/
def P6710336440647703810.Spec : Prop :=
  ∀ n, P6710336440647703810.a n = A331591 (n + 1)

end A331591

/-! ## A331591.P12926528624802621221

`A162641(A293442(n+1)²)`
-/

namespace A331591.P12926528624802621221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162641 (A293442 (n + 1) ^ 2).toNat

end

end A331591.P12926528624802621221

namespace A331591

/-- `A162641(A293442(n+1)²)` -/
def P12926528624802621221.Spec : Prop :=
  ∀ n, P12926528624802621221.a n = A331591 (n + 1)

end A331591

/-! ## A331591.P12342681363411058108

`A162641(A293442(n+1)*A293442(n+1))`
-/

namespace A331591.P12342681363411058108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162641 (A293442 (n + 1) * A293442 (n + 1)).toNat

end

end A331591.P12342681363411058108

namespace A331591

/-- `A162641(A293442(n+1)*A293442(n+1))` -/
def P12342681363411058108.Spec : Prop :=
  ∀ n, P12342681363411058108.a n = A331591 (n + 1)

end A331591

/-! ## A331591.P1300062722894936023

`A001221(A318470((n+1)²))`
-/

namespace A331591.P1300062722894936023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A318470 ((n + 1) ^ 2)).toNat

end

end A331591.P1300062722894936023

namespace A331591

/-- `A001221(A318470((n+1)²))` -/
def P1300062722894936023.Spec : Prop :=
  ∀ n, P1300062722894936023.a n = A331591 (n + 1)

end A331591

/-!
# A331592: a(n) is the smaller of the number of terms in the factorizations of n into (1) powers of distinct primes and (2) powers of squarefree numbers with distinct exponents that are powers of 2.

The programs for A331592, the canonical program `A331592.P2855041606795412637` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331592 has offset 1).

The definition of A331592 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 359 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331592.P2855041606795412637

`A056170(A181819(n+1)²*A073184(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A331592

/-- `A056170(A181819(n+1)²*A073184(n+1))` -/
def P2855041606795412637.Spec : Prop :=
  ∀ n, P2855041606795412637.a n = A331592 (n + 1)

theorem P2855041606795412637.correct : P2855041606795412637.Spec := by
  intro n
  simp only [A331592, Nat.add_sub_cancel]

end A331592

/-! ## A331592.P2553187633177371811

`lcm(A071625(n+1), A096825(A324837(n+1)))`
-/

namespace A331592.P2553187633177371811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A071625 (n + 1)) (A096825 (A324837 (n + 1)).toNat)

end

end A331592.P2553187633177371811

namespace A331592

/-- `lcm(A071625(n+1), A096825(A324837(n+1)))` -/
def P2553187633177371811.Spec : Prop :=
  ∀ n, (P2553187633177371811.a n : ℤ) = A331592 (n + 1)

end A331592

/-! ## A331592.P9684393316709748641

`A056239(A324837(A324837(n+1))+A071625(n+1))`
-/

namespace A331592.P9684393316709748641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A324837 (A324837 (n + 1)).toNat + A071625 (n + 1)).toNat

end

end A331592.P9684393316709748641

namespace A331592

/-- `A056239(A324837(A324837(n+1))+A071625(n+1))` -/
def P9684393316709748641.Spec : Prop :=
  ∀ n, P9684393316709748641.a n = A331592 (n + 1)

end A331592

/-! ## A331592.P8692269140483656430

`A071625(A297002(n+1)%A124065(n+1))`
-/

namespace A331592.P8692269140483656430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (Int.tmod (A297002 (n + 1)) (A124065 (n + 1))).toNat

end

end A331592.P8692269140483656430

namespace A331592

/-- `A071625(A297002(n+1)%A124065(n+1))` -/
def P8692269140483656430.Spec : Prop :=
  ∀ n, P8692269140483656430.a n = A331592 (n + 1)

end A331592

/-! ## A331592.P14471553552882865722

`A071625(n+1)+A005088(A025487(A003557(n+1)))`
-/

namespace A331592.P14471553552882865722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (n + 1) + A005088 (A025487 (A003557 (n + 1)).toNat).toNat

end

end A331592.P14471553552882865722

namespace A331592

/-- `A071625(n+1)+A005088(A025487(A003557(n+1)))` -/
def P14471553552882865722.Spec : Prop :=
  ∀ n, P14471553552882865722.a n = A331592 (n + 1)

end A331592

/-!
# A331593: Numbers k that have the same number of distinct prime factors as A225546(k).

The programs for A331593, there is no canonical definition to state claims against.
-/

/-! ## A331593.P14502965432729564013

`∪[A084400(n+1), A177425(n+1)]`
-/

namespace A331593.P14502965432729564013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A331593.P14502965432729564013

/-! ## A331593.P14618897177880885430

`∪[A084400(n+1), A182854(n+1)]`
-/

namespace A331593.P14618897177880885430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A331593.P14618897177880885430

/-! ## A331593.P13738139583622429632

`eq[A001221(n+1), A331591(n+1)]+1`
-/

namespace A331593.P13738139583622429632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331591 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A331593.P13738139583622429632

/-! ## A331593.P4909263404438218661

`eq[A136567(n+1), A331591(n+1)]+1`
-/

namespace A331593.P4909263404438218661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331591 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A331593.P4909263404438218661

/-! ## A331593.P4248912786628926672

`eq[val(A034444(n+1), 2), A331591(n+1)]+1`
-/

namespace A331593.P4248912786628926672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A034444 (n + 1)).toNat 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331591 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A331593.P4248912786628926672

/-! ## A331593.P18054857819252561163

`eq[A001221(n+1), A000120(A267116(n+1))]+1`
-/

namespace A331593.P18054857819252561163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A267116 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A331593.P18054857819252561163

/-! ## A331593.P16486566056975024743

`∪[A050376(n+1), A316793(n+1)]`
-/

namespace A331593.P16486566056975024743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A331593.P16486566056975024743

/-! ## A331593.P16162632640644220088

`∪[A082522(n+1), A316793(n+1)]`
-/

namespace A331593.P16162632640644220088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A331593.P16162632640644220088

/-! ## A331593.P15704258221446480361

`∪[A084400(n+1), A316793(n+1)]`
-/

namespace A331593.P15704258221446480361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A331593.P15704258221446480361

/-!
# A331594: Number of prime factors (with multiplicity) of A331598(n), where A331598(n) = A122111(n) / gcd(A122111(n),A241909(n)).

The programs for A331594, there is no canonical definition to state claims against.
-/

/-! ## A331594.P6473149534474239414

`A001222(A331598(n+1))`
-/

namespace A331594.P6473149534474239414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A331598 (n + 1)).toNat

end

end A331594.P6473149534474239414

/-! ## A331594.P6581958634242773081

`∑{e}[A331598(n+1), #]`
-/

namespace A331594.P6581958634242773081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331598 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A331594.P6581958634242773081

/-! ## A331594.P3912656554958238270

`∑{e}[A122111(n+1)/A331595(n+1), #]`
-/

namespace A331594.P3912656554958238270
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122111 (n + 1) : ℚ) / (A331595 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A331594.P3912656554958238270

/-! ## A331594.P12960189138202438049

`∑{e}[A122111(n+1)/A241909(n+1)*A331599(n+1), #]`
-/

namespace A331594.P12960189138202438049
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122111 (n + 1) : ℚ) / (A241909 (n + 1) : ℚ) * (A331599 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A331594.P12960189138202438049

/-! ## A331594.P11074514227367820981

`A001222(A122111(n+1)/A331595(n+1))`
-/

namespace A331594.P11074514227367820981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A122111 (n + 1) : ℚ) / (A331595 (n + 1) : ℚ))).toNat

end

end A331594.P11074514227367820981

/-! ## A331594.P10530560476841754957

`∑{e}[A331599(n+1), #]`
-/

namespace A331594.P10530560476841754957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331599 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A331594.P10530560476841754957

/-! ## A331594.P3172752760176712793

`A001222(A331599(n+1))`
-/

namespace A331594.P3172752760176712793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A331599 (n + 1)).toNat

end

end A331594.P3172752760176712793

/-! ## A331594.P14060994939162192098

`A001222(A241909(n+1)/A331595(n+1))`
-/

namespace A331594.P14060994939162192098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A241909 (n + 1) : ℚ) / (A331595 (n + 1) : ℚ))).toNat

end

end A331594.P14060994939162192098

/-! ## A331594.P10096914643779466232

`A033273(A331599(n+1))%A331598(n+1)`
-/

namespace A331594.P10096914643779466232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033273 (A331599 (n + 1)).toNat) (A331598 (n + 1))

end

end A331594.P10096914643779466232

/-! ## A331594.P18016065221893546810

`A071178(A331599(2*n+1-n))`
-/

namespace A331594.P18016065221893546810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (A331599 (2 * n + 1 - n)).toNat

end

end A331594.P18016065221893546810

/-!
# A331595: a(n) = gcd(A122111(n), A241909(n)).

The programs for A331595, there is no canonical definition to state claims against.
-/

/-! ## A331595.P17104593924055726827

`gcd(A122111(n+1), A241909(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A331595.P17104593924055726827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122111 (n + 1)) (A241909 (n + 1))

end

end A331595.P17104593924055726827

/-! ## A331595.P2515444751878624296

`A122111(n+1)/A331598(n+1)`
-/

namespace A331595.P2515444751878624296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122111 (n + 1) : ℚ) / (A331598 (n + 1) : ℚ)

end

end A331595.P2515444751878624296

/-! ## A331595.P9378758859493684350

`(A354867(n+1)-A354866(n+1))/A331598(n+1)`
-/

namespace A331595.P9378758859493684350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354867 (n + 1) - A354866 (n + 1) : ℚ) / (A331598 (n + 1) : ℚ)

end

end A331595.P9378758859493684350

/-! ## A331595.P9300640412411384299

`A241909(n+1)/A331599(n+1)`
-/

namespace A331595.P9300640412411384299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241909 (n + 1) : ℚ) / (A331599 (n + 1) : ℚ)

end

end A331595.P9300640412411384299

/-! ## A331595.P3494357999132954612

`A279356(A249817(n+1))/A331599(n+1)`
-/

namespace A331595.P3494357999132954612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279356 (A249817 (n + 1)).toNat : ℚ) / (A331599 (n + 1) : ℚ)

end

end A331595.P3494357999132954612

/-! ## A331595.P8775852355040894832

`A279352(A249817(n+1))/A331598(n+1)`
-/

namespace A331595.P8775852355040894832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279352 (A249817 (n + 1)).toNat : ℚ) / (A331598 (n + 1) : ℚ)

end

end A331595.P8775852355040894832

/-! ## A331595.P3934227680409737935

`A243505(A048673(n+1))/A331598(n+1)`
-/

namespace A331595.P3934227680409737935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243505 (A048673 (n + 1)).toNat : ℚ) / (A331598 (n + 1) : ℚ)

end

end A331595.P3934227680409737935

/-! ## A331595.P17264168559122748350

`A243070(A001844(n))/A331598(n+1)`
-/

namespace A331595.P17264168559122748350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243070 (A001844 n).toNat : ℚ) / (A331598 (n + 1) : ℚ)

end

end A331595.P17264168559122748350

/-! ## A331595.P3747641072930527487

`gcd(A241909(n+1), A243070(A001844(n)))`
-/

namespace A331595.P3747641072930527487
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A241909 (n + 1)) (A243070 (A001844 n).toNat)

end

end A331595.P3747641072930527487

/-! ## A331595.P2756131022539642731

`A122111(n+1)/A331599(A241916(n+1))`
-/

namespace A331595.P2756131022539642731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122111 (n + 1) : ℚ) / (A331599 (A241916 (n + 1)).toNat : ℚ)

end

end A331595.P2756131022539642731

/-!
# A331596: Number of distinct prime factors of gcd(A122111(n), A241909(n)).

The programs for A331596, there is no canonical definition to state claims against.
-/

/-! ## A331596.P15841416346110175002

`A001222(A331597(n+1))`
-/

namespace A331596.P15841416346110175002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A331597 (n + 1)).toNat

end

end A331596.P15841416346110175002

/-! ## A331596.P14779030274603060225

`A001221(gcd(A122111(n+1), A241909(n+1)))`
-/

namespace A331596.P14779030274603060225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (A122111 (n + 1)) (A241909 (n + 1)))

end

end A331596.P14779030274603060225

/-! ## A331596.P7834638510376653684

`∑{e}[A331597(n+1), #]`
-/

namespace A331596.P7834638510376653684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331597 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A331596.P7834638510376653684

/-! ## A331596.P18012703864092235553

`A001221(A331597(n+1))`
-/

namespace A331596.P18012703864092235553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A331597 (n + 1)).toNat

end

end A331596.P18012703864092235553

/-! ## A331596.P4752906511510637767

`∑{p}[A331597(n+1), A003415(#)]`
-/

namespace A331596.P4752906511510637767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003415 p

end

end A331596.P4752906511510637767

/-! ## A331596.P1973631396022151095

`∑{p}[A331597(n+1), A331597(#)-1]`
-/

namespace A331596.P1973631396022151095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A331597 p - 1)

end

end A331596.P1973631396022151095

/-! ## A331596.P6785412357507655970

`A001222(gcd(A048692(n+1), A331595(n+1)))`
-/

namespace A331596.P6785412357507655970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A048692 (n + 1)) (A331595 (n + 1)))

end

end A331596.P6785412357507655970

/-! ## A331596.P4523480205633071547

`A000005(A000005(A331597(n+1)²))-1`
-/

namespace A331596.P4523480205633071547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (A331597 (n + 1) ^ 2).toNat).toNat - 1

end

end A331596.P4523480205633071547

/-! ## A331596.P5677077284084279001

`A001222(gcd(A241909(n+1)², A122111(A071364(n+1))))`
-/

namespace A331596.P5677077284084279001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A241909 (n + 1) ^ 2) (A122111 (A071364 (n + 1)).toNat))

end

end A331596.P5677077284084279001

/-! ## A331596.P13841805649429880399

`A334107(A238745(A331597(n+1)²))`
-/

namespace A331596.P13841805649429880399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334107 (A238745 (A331597 (n + 1) ^ 2).toNat).toNat

end

end A331596.P13841805649429880399

/-!
# A331597: a(n) = A007947(A331595(n)).

The programs for A331597, there is no canonical definition to state claims against.
-/

/-! ## A331597.P1653385309360686728

`A007947(A331595(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A331597.P1653385309360686728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A331595 (n + 1)).toNat

end

end A331597.P1653385309360686728

/-! ## A331597.P11524828711802294601

`A007947(gcd(A122111(n+1), A241909(n+1)))`
-/

namespace A331597.P11524828711802294601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (Int.gcd (A122111 (n + 1)) (A241909 (n + 1)))

end

end A331597.P11524828711802294601

/-! ## A331597.P2457219566626744067

`gcd(A019565(A003817(n)), A331595(n+1))`
-/

namespace A331597.P2457219566626744067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A019565 (A003817 n).toNat) (A331595 (n + 1))

end

end A331597.P2457219566626744067

/-! ## A331597.P14034780645131385737

`gcd(A048692(n+1), A331595(n+1))`
-/

namespace A331597.P14034780645131385737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048692 (n + 1)) (A331595 (n + 1))

end

end A331597.P14034780645131385737

/-! ## A331597.P12004438485960941660

`∏{p}[A331595(A135684(n+1)), #]`
-/

namespace A331597.P12004438485960941660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331595 (A135684 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A331597.P12004438485960941660

/-! ## A331597.P18263481606513985533

`gcd(A241909(n+1), A329607(n+1))`
-/

namespace A331597.P18263481606513985533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A241909 (n + 1)) (A329607 (n + 1))

end

end A331597.P18263481606513985533

/-! ## A331597.P7598007844617037982

`gcd(A241909(n+1)², A122111(A071364(n+1)))`
-/

namespace A331597.P7598007844617037982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A241909 (n + 1) ^ 2) (A122111 (A071364 (n + 1)).toNat)

end

end A331597.P7598007844617037982

/-! ## A331597.P1388001654546537836

`∏{p}[A331595(n+1), #]`
-/

namespace A331597.P1388001654546537836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331595 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A331597.P1388001654546537836

/-!
# A331598: a(n) = A122111(n) / gcd(A122111(n),A241909(n)).

The programs for A331598, there is no canonical definition to state claims against.
-/

/-! ## A331598.P9858963774772922270

`A122111(n+1)/gcd(A122111(n+1), A241909(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A331598.P9858963774772922270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122111 (n + 1) : ℚ) / (Int.gcd (A122111 (n + 1)) (A241909 (n + 1)) : ℚ)

end

end A331598.P9858963774772922270

/-! ## A331598.P12973750547057135371

`A331599(A241916(n+1))`
-/

namespace A331598.P12973750547057135371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331599 (A241916 (n + 1)).toNat

end

end A331598.P12973750547057135371

/-! ## A331598.P3105684191372555577

`A122111(n+1)/A331595(n+1)`
-/

namespace A331598.P3105684191372555577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122111 (n + 1) : ℚ) / (A331595 (n + 1) : ℚ)

end

end A331598.P3105684191372555577

/-! ## A331598.P10095183690794966608

`∑{d}[n+1, A329034(#)]/A331595(n+1)`
-/

namespace A331598.P10095183690794966608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A329034 d : ℤ) : ℚ) / (A331595 (n + 1) : ℚ)

end

end A331598.P10095183690794966608

/-! ## A331598.P6607310286446289953

`A122111(n+1)/A241909(n+1)*A331599(n+1)`
-/

namespace A331598.P6607310286446289953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122111 (n + 1) : ℚ) / (A241909 (n + 1) : ℚ) * (A331599 (n + 1) : ℚ)

end

end A331598.P6607310286446289953

/-! ## A331598.P4022151179591973359

`A279352(A249817(n+1))/A331595(n+1)`
-/

namespace A331598.P4022151179591973359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279352 (A249817 (n + 1)).toNat : ℚ) / (A331595 (n + 1) : ℚ)

end

end A331598.P4022151179591973359

/-! ## A331598.P18013163347803581873

`A243505(A048673(n+1))/A331595(n+1)`
-/

namespace A331598.P18013163347803581873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243505 (A048673 (n + 1)).toNat : ℚ) / (A331595 (n + 1) : ℚ)

end

end A331598.P18013163347803581873

/-! ## A331598.P8614761720962425995

`A243070(A001844(n))/A331595(n+1)`
-/

namespace A331598.P8614761720962425995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243070 (A001844 n).toNat : ℚ) / (A331595 (n + 1) : ℚ)

end

end A331598.P8614761720962425995

/-!
# A331599: a(n) = A241909(n) / gcd(A122111(n),A241909(n)).

The programs for A331599, there is no canonical definition to state claims against.
-/

/-! ## A331599.P5903141788896812665

`A241909(n+1)/A331595(n+1)`
-/

namespace A331599.P5903141788896812665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241909 (n + 1) : ℚ) / (A331595 (n + 1) : ℚ)

end

end A331599.P5903141788896812665

/-! ## A331599.P7601639815731037842

`A241909(n+1)/gcd(A122111(n+1), A241909(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A331599.P7601639815731037842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241909 (n + 1) : ℚ) / (Int.gcd (A122111 (n + 1)) (A241909 (n + 1)) : ℚ)

end

end A331599.P7601639815731037842

/-! ## A331599.P17697183811746197942

`A331598(A241916(n+1))`
-/

namespace A331599.P17697183811746197942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331598 (A241916 (n + 1)).toNat

end

end A331599.P17697183811746197942

/-! ## A331599.P18044050375174107512

`A011782(A286477(n+1))/A331595(n+1)*A331732(n+1)`
-/

namespace A331599.P18044050375174107512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (A286477 (n + 1)).toNat : ℚ) / (A331595 (n + 1) : ℚ) * (A331732 (n + 1) : ℚ)

end

end A331599.P18044050375174107512

/-! ## A331599.P5322116789590336790

`A241909(n+1)/A122111(n+1)*A331598(n+1)`
-/

namespace A331599.P5322116789590336790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241909 (n + 1) : ℚ) / (A122111 (n + 1) : ℚ) * (A331598 (n + 1) : ℚ)

end

end A331599.P5322116789590336790

/-! ## A331599.P17008237319289295894

`A279356(A249817(n+1))/A331595(n+1)`
-/

namespace A331599.P17008237319289295894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279356 (A249817 (n + 1)).toNat : ℚ) / (A331595 (n + 1) : ℚ)

end

end A331599.P17008237319289295894

/-! ## A331599.P4188671675154277297

`A331598(A137502(2*(n+1))/2)`
-/

namespace A331599.P4188671675154277297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331598 (SequenceMachineLib.roundAway ((A137502 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A331599.P4188671675154277297

/-! ## A331599.P4898885847080972008

`A122111(A241916(n+1))/A331595(n+1)`
-/

namespace A331599.P4898885847080972008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122111 (A241916 (n + 1)).toNat : ℚ) / (A331595 (n + 1) : ℚ)

end

end A331599.P4898885847080972008

