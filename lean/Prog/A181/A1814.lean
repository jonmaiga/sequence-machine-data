import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
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
# A181400: Total number of positive integers below 10^n requiring 6 positive cubes in their representation as sum of cubes.

The programs for A181400, there is no canonical definition to state claims against.
-/

/-! ## A181400.P17408358522075193304

`∑[A181401(n+1)]`
-/

namespace A181400.P17408358522075193304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181400.P17408358522075193304

/-!
# A181402: Total number of positive integers below 10^n requiring 7 positive cubes in their representation as sum of cubes.

The programs for A181402, there is no canonical definition to state claims against.
-/

/-! ## A181402.P17375861929968443589

`A181403(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A181402.P17375861929968443589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A181403 (n + 1) + a (n - 1)

end

end A181402.P17375861929968443589

/-!
# A181403: Total number of n-digit numbers requiring 7 positive cubes in their representation as sum of cubes.

The programs for A181403, there is no canonical definition to state claims against.
-/

/-! ## A181403.P13600720588936812342

`A004086(C(9, A007090(n)))`
-/

namespace A181403.P13600720588936812342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (Nat.choose 9 (A007090 n).toNat)

end

end A181403.P13600720588936812342

/-!
# A181404: Total number of positive integers below 10^n requiring 8 positive cubes in their representation as sum of cubes.

The programs for A181404, the canonical program `A181404.P4146839388607921947` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181404 has offset 1).

The definition of A181404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181404.P4146839388607921947

`a(n-1)` with `a(0)=0, a(1)=3, a(2)=15`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A181404

/-- `a(n-1)` -/
def P4146839388607921947.Spec : Prop :=
  ∀ n, (P4146839388607921947.a n : ℤ) = A181404 (n + 1)

theorem P4146839388607921947.correct : P4146839388607921947.Spec := by
  intro n
  simp only [A181404, Nat.add_sub_cancel]

end A181404

/-!
# A181405: Total number of n-digit numbers requiring 8 positive cubes in their representation as sum of cubes.

The programs for A181405, the canonical program `A181405.P7943397675622492946` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181405 has offset 1).

The definition of A181405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181405.P7943397675622492946

`a(n-1)` with `a(0)=0, a(1)=3, a(2)=12, a(3)=0`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A181405

/-- `a(n-1)` -/
def P7943397675622492946.Spec : Prop :=
  ∀ n, (P7943397675622492946.a n : ℤ) = A181405 (n + 1)

theorem P7943397675622492946.correct : P7943397675622492946.Spec := by
  intro n
  simp only [A181405, Nat.add_sub_cancel]

end A181405

/-!
# A181406: Symbolic sequence at the accumulation point of the 3*2^{k} supercycles of unimodal maps.

The programs for A181406, there is no canonical definition to state claims against.
-/

/-! ## A181406.P8963005411135431655

`A189706(6*∑{d}[n+1, #]+n)`
-/

namespace A181406.P8963005411135431655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189706 (6 * (∑ d ∈ Nat.divisors (f1 n), d) + n)

end

end A181406.P8963005411135431655

/-! ## A181406.P17729200365660740048

`A175527(n)%Δ[eq[1, gcd(n, n%3)]]`
-/

namespace A181406.P17729200365660740048
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (n % 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175527 n) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A181406.P17729200365660740048

/-! ## A181406.P12359626500772312688

`(((A087191(n+1)+n)%3)²%3)²`
-/

namespace A181406.P12359626500772312688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A087191 (n + 1) + (n : ℤ)) 3 ^ 2) 3 ^ 2

end

end A181406.P12359626500772312688

/-! ## A181406.P7548492023233492098

`char[A007494(comp[∏{d}[n+1, #+1]-1])]`
-/

namespace A181406.P7548492023233492098
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f3 n), (d + 1) : ℕ) : ℤ) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A181406.P7548492023233492098

/-! ## A181406.P10710777159447322594

`A286752(A284371(n+1))`
-/

namespace A181406.P10710777159447322594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286752 (A284371 (n + 1)).toNat

end

end A181406.P10710777159447322594

/-!
# A181407: a(n) = (n-4)*(n-3)*2^(n-2).

The programs for A181407, the canonical program `A181407.P14987774927231937430` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181407 has offset 0).

The definition of A181407 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181407.P14987774927231937430

`(n-4)*(n-3)*2^(n-2)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A181407

/-- `(n-4)*(n-3)*2^(n-2)` -/
def P14987774927231937430.Spec : Prop :=
  ∀ n, P14987774927231937430.a n = (A181407 n : ℚ)

end A181407

/-! ## A181407.P1833662100964884539

`A178987(n-1)+a(n-1)` with `a(0)=3`
-/

namespace A181407.P1833662100964884539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A178987 (n - 1) + a (n - 1)

end

end A181407.P1833662100964884539

namespace A181407

/-- `A178987(n-1)+a(n-1)` -/
def P1833662100964884539.Spec : Prop :=
  ∀ n, P1833662100964884539.a n = A181407 n

end A181407

/-! ## A181407.P551561392605972732

`A053730(n)-A053565(n)`
-/

namespace A181407.P551561392605972732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053730 n - A053565 n

end

end A181407.P551561392605972732

namespace A181407

/-- `A053730(n)-A053565(n)` -/
def P551561392605972732.Spec : Prop :=
  ∀ n, P551561392605972732.a n = A181407 n

end A181407

/-! ## A181407.P16779902822064414229

`A053545(n)+4-A048496(n)`
-/

namespace A181407.P16779902822064414229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053545 n + (4 - A048496 n)

end

end A181407.P16779902822064414229

namespace A181407

/-- `A053545(n)+4-A048496(n)` -/
def P16779902822064414229.Spec : Prop :=
  ∀ n, P16779902822064414229.a n = A181407 n

end A181407

/-! ## A181407.P12756461328639710534

`A104270(n+1)+2*A159964(n)`
-/

namespace A181407.P12756461328639710534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104270 (n + 1) + 2 * A159964 n

end

end A181407.P12756461328639710534

namespace A181407

/-- `A104270(n+1)+2*A159964(n)` -/
def P12756461328639710534.Spec : Prop :=
  ∀ n, P12756461328639710534.a n = A181407 n

end A181407

/-! ## A181407.P14276075206861238797

`∑[A178987(n)]+3-A178987(n)`
-/

namespace A181407.P14276075206861238797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (3 - A178987 n)

end

end A181407.P14276075206861238797

namespace A181407

/-- `∑[A178987(n)]+3-A178987(n)` -/
def P14276075206861238797.Spec : Prop :=
  ∀ n, P14276075206861238797.a n = A181407 n

end A181407

/-! ## A181407.P6137247357318098653

`A128796(n)+3*A127276(n)`
-/

namespace A181407.P6137247357318098653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128796 n + 3 * A127276 n

end

end A181407.P6137247357318098653

namespace A181407

/-- `A128796(n)+3*A127276(n)` -/
def P6137247357318098653.Spec : Prop :=
  ∀ n, P6137247357318098653.a n = A181407 n

end A181407

/-! ## A181407.P4620759606138906958

`A052481(n+1)+A127276(n+1)-A176027(n)`
-/

namespace A181407.P4620759606138906958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052481 (n + 1) + (A127276 (n + 1) - A176027 n)

end

end A181407.P4620759606138906958

namespace A181407

/-- `A052481(n+1)+A127276(n+1)-A176027(n)` -/
def P4620759606138906958.Spec : Prop :=
  ∀ n, P4620759606138906958.a n = A181407 n

end A181407

/-!
# A181408: Numbers n such that there is at least one pair of twin primes 2^n - 2^k - 1 and 2^n - 2^k + 1 with n/2 <= k < n.

The programs for A181408, there is no canonical definition to state claims against.
-/

/-! ## A181408.P2120516966049048653

`A272377(n)+∑[record[A321176(n)]]`
-/

namespace A181408.P2120516966049048653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321176 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272377 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181408.P2120516966049048653

/-! ## A181408.P15205445132161307089

`A272377(n)+∑[A321176(n+3)]`
-/

namespace A181408.P15205445132161307089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321176 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272377 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181408.P15205445132161307089

/-!
# A181410: G.f.: exp( Sum_{n>=1} A181411(n)*x^n/n ) where A181411(n) = Sum_{k=0..n} C(n,k)*sigma(n+k).

The programs for A181410, there is no canonical definition to state claims against.
-/

/-! ## A181410.P11825981318765236025

`A323016(A323020(n))+A261519(n)`
-/

namespace A181410.P11825981318765236025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323016 (A323020 n).toNat + A261519 n

end

end A181410.P11825981318765236025

/-! ## A181410.P5538583311915622166

`A154638(n)-A001222(A202999(n))`
-/

namespace A181410.P5538583311915622166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154638 n - A001222 (A202999 n).toNat

end

end A181410.P5538583311915622166

/-!
# A181411: a(n) = Sum_{k=0..n} C(n,k)*sigma(n+k) for n>=1.

The programs for A181411, there is no canonical definition to state claims against.
-/

/-! ## A181411.P16553695137228710680

`A266340(2*n+1)-A025428(A075737(n+1))`
-/

namespace A181411.P16553695137228710680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266340 (2 * n + 1) - A025428 (A075737 (n + 1)).toNat

end

end A181411.P16553695137228710680

/-!
# A181412: Squares whose reverse is a triangular number; trailing zeros are permitted.

The programs for A181412, there is no canonical definition to state claims against.
-/

/-! ## A181412.P1730333099475659077

`A115691(∪[A224866(n+1), A197458(n)])`
-/

namespace A181412.P1730333099475659077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197458 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115691 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A181412.P1730333099475659077

/-!
# A181415: Irregular triangle T(n,k) = A049009(n,k)/n, read by rows, 1 <= k <= A000041(n).

The programs for A181415, there is no canonical definition to state claims against.
-/

/-! ## A181415.P15859601896842997019

`A036040(n+1)*A181512(n+1)`
-/

namespace A181415.P15859601896842997019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036040 (n + 1) * A181512 (n + 1)

end

end A181415.P15859601896842997019

/-! ## A181415.P7363598597004384025

`A049009(n+1)/A036042(n+1)`
-/

namespace A181415.P7363598597004384025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049009 (n + 1) : ℚ) / (A036042 (n + 1) : ℚ)

end

end A181415.P7363598597004384025

/-! ## A181415.P2597659574467821451

`A181417(n+1)/A036043(n+1)`
-/

namespace A181415.P2597659574467821451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181417 (n + 1) : ℚ) / (A036043 (n + 1) : ℚ)

end

end A181415.P2597659574467821451

/-! ## A181415.P3813800037828077133

`A035206(n+1)*A036038(n+1)/A036042(n+1)`
-/

namespace A181415.P3813800037828077133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035206 (n + 1) * A036038 (n + 1) : ℚ) / (A036042 (n + 1) : ℚ)

end

end A181415.P3813800037828077133

/-! ## A181415.P16042982870576514016

`A036038(n+1)/A096162(n+1)*A181512(n+1)`
-/

namespace A181415.P16042982870576514016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036038 (n + 1) : ℚ) / (A096162 (n + 1) : ℚ) * (A181512 (n + 1) : ℚ)

end

end A181415.P16042982870576514016

/-! ## A181415.P2238754217025734058

`A036039(n+1)/A107106(n+1)*A181512(n+1)`
-/

namespace A181415.P2238754217025734058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036039 (n + 1) : ℚ) / (A107106 (n + 1) : ℚ) * (A181512 (n + 1) : ℚ)

end

end A181415.P2238754217025734058

/-! ## A181415.P9684899853244267019

`A124794(A185974(n+1))*A181512(n+1)`
-/

namespace A181415.P9684899853244267019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124794 (A185974 (n + 1)).toNat * A181512 (n + 1)

end

end A181415.P9684899853244267019

/-! ## A181415.P521439305190257201

`A036040(n+1)*A178888(n+1)/∑[A155972(n)]`
-/

namespace A181415.P521439305190257201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155972 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036040 (n + 1) * A178888 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A181415.P521439305190257201

/-!
# A181416: Irregular triangle T(n,k) = n*A178883(n,k), read by rows, 1 <= k <= A000041(n).

The programs for A181416, there is no canonical definition to state claims against.
-/

/-! ## A181416.P15570745488061104348

`A036042(n+1)*A178883(n+1)`
-/

namespace A181416.P15570745488061104348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 (n + 1) * A178883 (n + 1)

end

end A181416.P15570745488061104348

/-! ## A181416.P10566026353362832682

`A178802(n+1)*A178803(n+1)/A181512(n+1)`
-/

namespace A181416.P10566026353362832682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178802 (n + 1) * A178803 (n + 1) : ℚ) / (A181512 (n + 1) : ℚ)

end

end A181416.P10566026353362832682

/-! ## A181416.P14216704596535947667

`A055642(A055538(n+3))*A178883(n+1)`
-/

namespace A181416.P14216704596535947667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A055538 (n + 3)).toNat * A178883 (n + 1)

end

end A181416.P14216704596535947667

/-!
# A181417: Irregular triangle T(n,k) = binomial(n-1,m-1)*m!*A036040(n,k), where m=A036043(n,k), read by rows, 1 <= k <= A000041(n).

The programs for A181417, there is no canonical definition to state claims against.
-/

/-! ## A181417.P13965121626421543889

`A036043(n+1)*A181415(n+1)`
-/

namespace A181417.P13965121626421543889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036043 (n + 1) * A181415 (n + 1)

end

end A181417.P13965121626421543889

/-! ## A181417.P15265748063734582996

`A036040(n+1)*A181512(n+1)*A036043(n+1)`
-/

namespace A181417.P15265748063734582996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036040 (n + 1) * A181512 (n + 1) * A036043 (n + 1)

end

end A181417.P15265748063734582996

/-! ## A181417.P8730172261848054676

`A036043(n+1)/A036042(n+1)*A049009(n+1)`
-/

namespace A181417.P8730172261848054676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036043 (n + 1) : ℚ) / (A036042 (n + 1) : ℚ) * (A049009 (n + 1) : ℚ)

end

end A181417.P8730172261848054676

/-! ## A181417.P15088391750370067210

`A035206(n+1)*A036038(n+1)/A036042(n+1)*A036043(n+1)`
-/

namespace A181417.P15088391750370067210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035206 (n + 1) * A036038 (n + 1) : ℚ) / (A036042 (n + 1) : ℚ) * (A036043 (n + 1) : ℚ)

end

end A181417.P15088391750370067210

/-! ## A181417.P15822085148363531792

`A036038(n+1)/A096162(n+1)*A181512(n+1)*A036043(n+1)`
-/

namespace A181417.P15822085148363531792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036038 (n + 1) : ℚ) / (A096162 (n + 1) : ℚ) * (A181512 (n + 1) : ℚ) * (A036043 (n + 1) : ℚ)

end

end A181417.P15822085148363531792

/-! ## A181417.P4383992011308720542

`A124794(A185974(n+1))*A181512(n+1)*A036043(n+1)`
-/

namespace A181417.P4383992011308720542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124794 (A185974 (n + 1)).toNat * A181512 (n + 1) * A036043 (n + 1)

end

end A181417.P4383992011308720542

/-!
# A181418: a(n) = A000984(n)*A000172(n), which is the term-wise product of the Central binomial coefficients and Franel numbers, respectively.

The programs for A181418, there is no canonical definition to state claims against.
-/

/-! ## A181418.P11942577824257018191

`A000984(n)*A000172(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A181418.P11942577824257018191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A000172 n

end

end A181418.P11942577824257018191

/-! ## A181418.P15273795963652452951

`sqrt(A002894(n))*A000172(n)`
-/

namespace A181418.P15273795963652452951
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A002894 n : ℝ) * (A000172 n : ℝ)

end

end A181418.P15273795963652452951

/-! ## A181418.P1150973808343909364

`A000172(n)*A068555(∑[n])`
-/

namespace A181418.P1150973808343909364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000172 n * A068555 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181418.P1150973808343909364

/-! ## A181418.P3707212496039823348

`record[A081668(n)]*A000172(n)`
-/

namespace A181418.P3707212496039823348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000172 n

end

end A181418.P3707212496039823348

/-! ## A181418.P7649914670704422935

`record[A126869(n)]*A000172(n)`
-/

namespace A181418.P7649914670704422935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000172 n

end

end A181418.P7649914670704422935

/-! ## A181418.P16951767826396435841

`A000172(n)*A001405(2*n)`
-/

namespace A181418.P16951767826396435841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000172 n * A001405 (2 * n)

end

end A181418.P16951767826396435841

/-! ## A181418.P8308309899469444188

`A000172(n)*A081668(2*n)`
-/

namespace A181418.P8308309899469444188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000172 n * A081668 (2 * n)

end

end A181418.P8308309899469444188

/-! ## A181418.P12328058408383709345

`A000172(n)*A126869(2*n)`
-/

namespace A181418.P12328058408383709345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000172 n * A126869 (2 * n)

end

end A181418.P12328058408383709345

/-! ## A181418.P177644744011192592

`A000172(n)*A126930(2*n)`
-/

namespace A181418.P177644744011192592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000172 n * A126930 (2 * n)

end

end A181418.P177644744011192592

/-! ## A181418.P15141250435597832051

`A000172(n)*A007318(A046092(n))`
-/

namespace A181418.P15141250435597832051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000172 n * A007318 (A046092 n).toNat

end

end A181418.P15141250435597832051

/-!
# A181419: Numbers of the form Fibonacci(p^{k+1})/Fibonacci(p^k) where p are primes, k>=1.

The programs for A181419, there is no canonical definition to state claims against.
-/

/-! ## A181419.P4641417375288343255

`filter[A181420(n+1), A356315(#)]`
-/

namespace A181419.P4641417375288343255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356315 (f1 j).toNat = 1) n)

end

end A181419.P4641417375288343255

/-! ## A181419.P17424294280648734322

`filter[A181420(n+1), A139312(#)]`
-/

namespace A181419.P17424294280648734322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A139312 (f1 j).toNat = 1) n)

end

end A181419.P17424294280648734322

/-!
# A181420: Numbers of the form Fibonacci(p^c)/Fibonacci(p^b), where p is some prime and 1<=b<c are two integer exponents.

The programs for A181420, there is no canonical definition to state claims against.
-/

/-! ## A181420.P14932100473602748697

`A007913(∪[A181393(n+1), A181419(n+1)])`
-/

namespace A181420.P14932100473602748697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181419 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A181420.P14932100473602748697

/-! ## A181420.P4855023471263990797

`A093178(∪[A181393(n+1), A181419(n+1)])`
-/

namespace A181420.P4855023471263990797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181419 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A181420.P4855023471263990797

/-! ## A181420.P17453812377866905524

`A181440(∪[A181393(n+1), A181419(n+1)])`
-/

namespace A181420.P17453812377866905524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181419 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A181420.P17453812377866905524

/-!
# A181421: Primes such that the square of the sum of itself and next prime, when added to 1 is a prime.

The programs for A181421, the canonical program `A181421.P7941151460370424266` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181421 has offset 1).

The definition of A181421 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181421.P13486127476641158587

`A055377(floor(sqrt(A244095(n+1))))`
-/

namespace A181421.P13486127476641158587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055377 (Int.sqrt (A244095 (n + 1))).toNat

end

end A181421.P13486127476641158587

namespace A181421

/-- `A055377(floor(sqrt(A244095(n+1))))` -/
def P13486127476641158587.Spec : Prop :=
  ∀ n, P13486127476641158587.a n = A181421 (n + 1)

end A181421

/-! ## A181421.P5327925590623521526

`A055377(ceil(sqrt(A244095(n+1))))`
-/

namespace A181421.P5327925590623521526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055377 ⌈Real.sqrt (A244095 (n + 1) : ℝ)⌉.toNat

end

end A181421.P5327925590623521526

namespace A181421

/-- `A055377(ceil(sqrt(A244095(n+1))))` -/
def P5327925590623521526.Spec : Prop :=
  ∀ n, P5327925590623521526.a n = A181421 (n + 1)

end A181421

/-! ## A181421.P7792492945564901851

`A055377(round(sqrt(A244095(n+1))))`
-/

namespace A181421.P7792492945564901851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055377 (SequenceMachineLib.roundAway (Real.sqrt (A244095 (n + 1) : ℝ))).toNat

end

end A181421.P7792492945564901851

namespace A181421

/-- `A055377(round(sqrt(A244095(n+1))))` -/
def P7792492945564901851.Spec : Prop :=
  ∀ n, P7792492945564901851.a n = A181421 (n + 1)

end A181421

/-! ## A181421.P17771093675988603290

`A055377(sqrt(A244095(n+1)-1))`
-/

namespace A181421.P17771093675988603290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055377 (SequenceMachineLib.roundAway (Real.sqrt (A244095 (n + 1) - 1 : ℝ))).toNat

end

end A181421.P17771093675988603290

namespace A181421

/-- `A055377(sqrt(A244095(n+1)-1))` -/
def P17771093675988603290.Spec : Prop :=
  ∀ n, P17771093675988603290.a n = A181421 (n + 1)

end A181421

/-! ## A181421.P7941151460370424266

`eq[A003415(n), A053000(A013634(n))]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A181421

/-- `eq[A003415(n), A053000(A013634(n))]` -/
def P7941151460370424266.Spec : Prop :=
  ∀ n, (P7941151460370424266.a n : ℤ) = A181421 (n + 1)

theorem P7941151460370424266.correct : P7941151460370424266.Spec := by
  intro n
  simp only [A181421, Nat.add_sub_cancel]

end A181421

/-!
# A181422: Primes such that the square of the sum of itself and next prime when added to 3 is a prime.

The programs for A181422, there is no canonical definition to state claims against.
-/

/-! ## A181422.P12896215240720290197

`A105792(A267836(n+1)+A008439(n))`
-/

namespace A181422.P12896215240720290197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105792 (A267836 (n + 1) + A008439 n).toNat

end

end A181422.P12896215240720290197

/-!
# A181423: Primes such that the square of the sum of itself and next prime, when added to 5, is a prime.

The programs for A181423, there is no canonical definition to state claims against.
-/

/-! ## A181423.P8596108296535818973

`∩[A073654(n+1), A166021(n+1)]`
-/

namespace A181423.P8596108296535818973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181423.P8596108296535818973

/-!
# A181424: Primes p such that p and the two previous primes are in arithmetic progression.

The programs for A181424, there is no canonical definition to state claims against.
-/

/-! ## A181424.P15923682312066155065

`A000040(A064113(n+1)+2)`
-/

namespace A181424.P15923682312066155065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A064113 (n + 1) + 2).toNat

end

end A181424.P15923682312066155065

/-! ## A181424.P14513455122115448967

`A117217(n+1)+A006562(n+1)`
-/

namespace A181424.P14513455122115448967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117217 (n + 1) + A006562 (n + 1)

end

end A181424.P14513455122115448967

/-! ## A181424.P1228054316691202136

`A122535(n+1)+2*A117217(n+1)`
-/

namespace A181424.P1228054316691202136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122535 (n + 1) + 2 * A117217 (n + 1)

end

end A181424.P1228054316691202136

/-! ## A181424.P2593770845953165894

`2*A006562(n+1)-A122535(n+1)`
-/

namespace A181424.P2593770845953165894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006562 (n + 1) - A122535 (n + 1)

end

end A181424.P2593770845953165894

/-! ## A181424.P9417302054218972069

`A122535(n+1)+A004277(A117217(n+1))`
-/

namespace A181424.P9417302054218972069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122535 (n + 1) + A004277 (A117217 (n + 1)).toNat

end

end A181424.P9417302054218972069

/-! ## A181424.P4060735118025585211

`A117217(n+1)+∩[A071680(n+1), A173970(n+1)]`
-/

namespace A181424.P4060735118025585211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173970 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117217 (n + 1) + (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A181424.P4060735118025585211

/-! ## A181424.P5964697918875199486

`A117217(n+1)+∩[A173970(n+1), A225494(n+1)]`
-/

namespace A181424.P5964697918875199486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225494 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117217 (n + 1) + (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A181424.P5964697918875199486

/-! ## A181424.P6415306102766250976

`A117217(n+1)+∩[A125830(n+1), A225494(n+1)]`
-/

namespace A181424.P6415306102766250976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225494 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117217 (n + 1) + (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A181424.P6415306102766250976

/-! ## A181424.P8535403271822056453

`A006562(n+1)+A001223(A064113(n+1))`
-/

namespace A181424.P8535403271822056453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1) + A001223 (A064113 (n + 1)).toNat

end

end A181424.P8535403271822056453

/-! ## A181424.P9893159916200422966

`A006562(n+1)+A001223(A066875(n+1))`
-/

namespace A181424.P9893159916200422966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1) + A001223 (A066875 (n + 1)).toNat

end

end A181424.P9893159916200422966

/-! ## A181424.P14166550952584411615

`A122535(n+1)+2*A001223(A064113(n+1))`
-/

namespace A181424.P14166550952584411615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122535 (n + 1) + 2 * A001223 (A064113 (n + 1)).toNat

end

end A181424.P14166550952584411615

/-! ## A181424.P15522046090554311117

`A122535(n+1)+2*A001223(A066875(n+1))`
-/

namespace A181424.P15522046090554311117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122535 (n + 1) + 2 * A001223 (A066875 (n + 1)).toNat

end

end A181424.P15522046090554311117

/-! ## A181424.P9559620399500809353

`A117646(3*(n+1))`
-/

namespace A181424.P9559620399500809353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117646 (3 * (n + 1))

end

end A181424.P9559620399500809353

/-! ## A181424.P15424382573780002840

`2*p?[A075540(n+1)]-A122535(n+1)`
-/

namespace A181424.P15424382573780002840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A122535 (n + 1)

end

end A181424.P15424382573780002840

/-! ## A181424.P16003759637633803970

`A004139(A064113(n+1))`
-/

namespace A181424.P16003759637633803970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A064113 (n + 1)).toNat

end

end A181424.P16003759637633803970

/-! ## A181424.P14747589330457887505

`A045319(A066875(n+1))`
-/

namespace A181424.P14747589330457887505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A066875 (n + 1)).toNat

end

end A181424.P14747589330457887505

/-! ## A181424.P3961640389970929555

`A000040(A356347(n+1))`
-/

namespace A181424.P3961640389970929555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A356347 (n + 1)).toNat

end

end A181424.P3961640389970929555

/-! ## A181424.P13542162446805791589

`A045319(A173390(n+2))`
-/

namespace A181424.P13542162446805791589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A173390 (n + 2)).toNat

end

end A181424.P13542162446805791589

/-! ## A181424.P12524066002848454899

`A000040(A066875(n+1)+1)`
-/

namespace A181424.P12524066002848454899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A066875 (n + 1) + 1).toNat

end

end A181424.P12524066002848454899

/-! ## A181424.P3662374590963644289

`A045344(A064113(n+1)+1)`
-/

namespace A181424.P3662374590963644289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A064113 (n + 1) + 1).toNat

end

end A181424.P3662374590963644289

/-!
# A181426: Numerator of Sum_{k=1..n} k^4 / Product_{k=1..n} k^4.

The programs for A181426, there is no canonical definition to state claims against.
-/

/-! ## A181426.P1234893385000418345

`A214685(A000538(n+1)/A214685(2*(n+1)))`
-/

namespace A181426.P1234893385000418345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214685 (SequenceMachineLib.roundAway ((A000538 (n + 1) : ℚ) / (A214685 (2 * (n + 1)) : ℚ))).toNat

end

end A181426.P1234893385000418345

/-!
# A181427: a(n) = n + [n^2 if n is odd or n^3 if n is even].

The programs for A181427, the canonical program `A181427.P521392376251572166` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181427 has offset 1).

The definition of A181427 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181427.P521392376251572166

`n+1+(n+1)^((5+(-1)^(n+1))/2)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A181427

/-- `n+1+(n+1)^((5+(-1)^(n+1))/2)` -/
def P521392376251572166.Spec : Prop :=
  ∀ n, P521392376251572166.a n = (A181427 (n + 1) : ℝ)

end A181427

/-! ## A181427.P13788436036401732478

`(n+1)*(1+A065679(n+1))`
-/

namespace A181427.P13788436036401732478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 + A065679 (n + 1))

end

end A181427.P13788436036401732478

namespace A181427

/-- `(n+1)*(1+A065679(n+1))` -/
def P13788436036401732478.Spec : Prop :=
  ∀ n, P13788436036401732478.a n = A181427 (n + 1)

end A181427

/-! ## A181427.P2411788530131754228

`lcm(n*or(1, n+2)+2, n+1)`
-/

namespace A181427.P2411788530131754228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n * Nat.lor 1 (n + 2) + 2) (n + 1)

end

end A181427.P2411788530131754228

namespace A181427

/-- `lcm(n*or(1, n+2)+2, n+1)` -/
def P2411788530131754228.Spec : Prop :=
  ∀ n, (P2411788530131754228.a n : ℤ) = A181427 (n + 1)

end A181427

/-! ## A181427.P12347266653805670445

`∑{d}[5-a(n-1), (n+1)^#]` with `a(0)=2`
-/

namespace A181427.P12347266653805670445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (n + 1) ^ d

end

end A181427.P12347266653805670445

namespace A181427

/-- `∑{d}[5-a(n-1), (n+1)^#]` -/
def P12347266653805670445.Spec : Prop :=
  ∀ n, (P12347266653805670445.a n : ℤ) = A181427 (n + 1)

end A181427

/-! ## A181427.P12675264349963497818

`∑{d}[A020639(3*(n+2)), (n+1)^#]`
-/

namespace A181427.P12675264349963497818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (n + 1) ^ d

end

end A181427.P12675264349963497818

namespace A181427

/-- `∑{d}[A020639(3*(n+2)), (n+1)^#]` -/
def P12675264349963497818.Spec : Prop :=
  ∀ n, (P12675264349963497818.a n : ℤ) = A181427 (n + 1)

end A181427

/-! ## A181427.P4986885016657406859

`((n+1)^A176895(2*n)+1)*(n+1)`
-/

namespace A181427.P4986885016657406859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) ^ (A176895 (2 * n) : ℤ) + 1) * (n + 1 : ℚ)

end

end A181427.P4986885016657406859

namespace A181427

/-- `((n+1)^A176895(2*n)+1)*(n+1)` -/
def P4986885016657406859.Spec : Prop :=
  ∀ n, P4986885016657406859.a n = (A181427 (n + 1) : ℚ)

end A181427

/-!
# A181428: a(n) = prime(n+2) + prime(n+1) - prime(n).

The programs for A181428, the canonical program `A181428.P14403328019642653517` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181428 has offset 1).

The definition of A181428 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+3)+A000040(n+2)-A000040(n+1)` (program `A181428.P14403328019642653517`, by `A181428.P14403328019642653517.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A181428.P4140169042928366010

`A000040(n+2)-A000040(n+1)+A000040(n+3)`
-/

namespace A181428.P4140169042928366010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A000040 (n + 1) + A000040 (n + 3)

end

end A181428.P4140169042928366010

namespace A181428

/-- `A000040(n+2)-A000040(n+1)+A000040(n+3)` -/
def P4140169042928366010.Spec : Prop :=
  ∀ n, P4140169042928366010.a n = A181428 (n + 1)

theorem P4140169042928366010.correct : P4140169042928366010.Spec := by
  intro n
  simp only [A181428, Nat.add_sub_cancel, A181428.P4140169042928366010.a, A181428.P14403328019642653517.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A181428

/-! ## A181428.P14403328019642653517

`A000040(n+3)+A000040(n+2)-A000040(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A181428

/-- `A000040(n+3)+A000040(n+2)-A000040(n+1)` -/
def P14403328019642653517.Spec : Prop :=
  ∀ n, P14403328019642653517.a n = A181428 (n + 1)

theorem P14403328019642653517.correct : P14403328019642653517.Spec := by
  intro n
  simp only [A181428, Nat.add_sub_cancel]

end A181428

/-! ## A181428.P2003735190548304675

`A065091(n+1)+A031131(n+1)`
-/

namespace A181428.P2003735190548304675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + A031131 (n + 1)

end

end A181428.P2003735190548304675

namespace A181428

/-- `A065091(n+1)+A031131(n+1)` -/
def P2003735190548304675.Spec : Prop :=
  ∀ n, P2003735190548304675.a n = A181428 (n + 1)

theorem P2003735190548304675.correct : P2003735190548304675.Spec := by
  intro n
  simp only [A181428, Nat.add_sub_cancel, A181428.P2003735190548304675.a, A181428.P14403328019642653517.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031131, A031131.P2453725465626413076.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181428

/-! ## A181428.P8796859484881543149

`A215848(n+1)+A001223(n+1)`
-/

namespace A181428.P8796859484881543149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1) + A001223 (n + 1)

end

end A181428.P8796859484881543149

namespace A181428

/-- `A215848(n+1)+A001223(n+1)` -/
def P8796859484881543149.Spec : Prop :=
  ∀ n, P8796859484881543149.a n = A181428 (n + 1)

theorem P8796859484881543149.correct : P8796859484881543149.Spec := by
  intro n
  simp only [A181428, Nat.add_sub_cancel, A181428.P8796859484881543149.a, A181428.P14403328019642653517.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A215848, A215848.P17068717743202425727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181428

/-! ## A181428.P11226768392164734043

`A305748(n+1)+A024675(n+1)`
-/

namespace A181428.P11226768392164734043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305748 (n + 1) + A024675 (n + 1)

end

end A181428.P11226768392164734043

namespace A181428

/-- `A305748(n+1)+A024675(n+1)` -/
def P11226768392164734043.Spec : Prop :=
  ∀ n, P11226768392164734043.a n = A181428 (n + 1)

end A181428

/-! ## A181428.P11706613627686235285

`A034961(n+1)-A100484(n+1)`
-/

namespace A181428.P11706613627686235285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) - A100484 (n + 1)

end

end A181428.P11706613627686235285

namespace A181428

/-- `A034961(n+1)-A100484(n+1)` -/
def P11706613627686235285.Spec : Prop :=
  ∀ n, P11706613627686235285.a n = A181428 (n + 1)

theorem P11706613627686235285.correct : P11706613627686235285.Spec := by
  intro n
  simp only [A181428, Nat.add_sub_cancel, A181428.P11706613627686235285.a, A181428.P14403328019642653517.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A034961, A034961.P9480249767911558173.a, A100484, A100484.P9678625670825099636.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181428

/-! ## A181428.P2057038673172340034

`A210497(n+1)+A001223(n+2)`
-/

namespace A181428.P2057038673172340034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210497 (n + 1) + A001223 (n + 2)

end

end A181428.P2057038673172340034

namespace A181428

/-- `A210497(n+1)+A001223(n+2)` -/
def P2057038673172340034.Spec : Prop :=
  ∀ n, P2057038673172340034.a n = A181428 (n + 1)

theorem P2057038673172340034.correct : P2057038673172340034.Spec := by
  intro n
  simp only [A181428, Nat.add_sub_cancel, A181428.P2057038673172340034.a, A181428.P14403328019642653517.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A210497, A210497.P11511747503835237208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181428

/-! ## A181428.P5797285865910767501

`A191472(n+1)+A062234(n+2)`
-/

namespace A181428.P5797285865910767501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191472 (n + 1) + A062234 (n + 2)

end

end A181428.P5797285865910767501

namespace A181428

/-- `A191472(n+1)+A062234(n+2)` -/
def P5797285865910767501.Spec : Prop :=
  ∀ n, P5797285865910767501.a n = A181428 (n + 1)

theorem P5797285865910767501.correct : P5797285865910767501.Spec := by
  intro n
  simp only [A181428, Nat.add_sub_cancel, A181428.P5797285865910767501.a, A181428.P14403328019642653517.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A062234, A062234.P8592873382335253705.a, A191472, A191472.P18443393501784059995.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181428

/-! ## A181428.P841283568507151159

`2*A024675(n+1)-Δ[A007504(n)]`
-/

namespace A181428.P841283568507151159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024675 (n + 1) - (f1 (n + 1) - f1 n)

end

end A181428.P841283568507151159

namespace A181428

/-- `2*A024675(n+1)-Δ[A007504(n)]` -/
def P841283568507151159.Spec : Prop :=
  ∀ n, P841283568507151159.a n = A181428 (n + 1)

end A181428

/-! ## A181428.P3956439641938134911

`A046933(n+1)+A215848(n+1)+1`
-/

namespace A181428.P3956439641938134911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1) + (A215848 (n + 1) + 1)

end

end A181428.P3956439641938134911

namespace A181428

/-- `A046933(n+1)+A215848(n+1)+1` -/
def P3956439641938134911.Spec : Prop :=
  ∀ n, P3956439641938134911.a n = A181428 (n + 1)

theorem P3956439641938134911.correct : P3956439641938134911.Spec := by
  intro n
  simp only [A181428, Nat.add_sub_cancel, A181428.P3956439641938134911.a, A181428.P14403328019642653517.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A046933, A046933.P9479947770746769512.a, A215848, A215848.P17068717743202425727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181428

/-! ## A181428.P11043343503562048730

`A093667(n+1)+2*A001223(n+1)`
-/

namespace A181428.P11043343503562048730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093667 (n + 1) + 2 * A001223 (n + 1)

end

end A181428.P11043343503562048730

namespace A181428

/-- `A093667(n+1)+2*A001223(n+1)` -/
def P11043343503562048730.Spec : Prop :=
  ∀ n, P11043343503562048730.a n = A181428 (n + 1)

theorem P11043343503562048730.correct : P11043343503562048730.Spec := by
  intro n
  simp only [A181428, Nat.add_sub_cancel, A181428.P11043343503562048730.a, A181428.P14403328019642653517.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A093667, A093667.P4637239888588385054.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181428

/-! ## A181428.P16937731146070616344

`A096379(n+1)+2*A031131(n+1)`
-/

namespace A181428.P16937731146070616344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096379 (n + 1) + 2 * A031131 (n + 1)

end

end A181428.P16937731146070616344

namespace A181428

/-- `A096379(n+1)+2*A031131(n+1)` -/
def P16937731146070616344.Spec : Prop :=
  ∀ n, P16937731146070616344.a n = A181428 (n + 1)

theorem P16937731146070616344.correct : P16937731146070616344.Spec := by
  intro n
  simp only [A181428, Nat.add_sub_cancel, A181428.P16937731146070616344.a, A181428.P14403328019642653517.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031131, A031131.P2453725465626413076.a, A096379, A096379.P509834506880397996.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181428

/-! ## A181428.P5169272726755722424

`A000040(n+1)+2*A305748(n+1)`
-/

namespace A181428.P5169272726755722424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2 * A305748 (n + 1)

end

end A181428.P5169272726755722424

namespace A181428

/-- `A000040(n+1)+2*A305748(n+1)` -/
def P5169272726755722424.Spec : Prop :=
  ∀ n, P5169272726755722424.a n = A181428 (n + 1)

end A181428

/-! ## A181428.P14533324837959731901

`2*A024675(n+1)-A000040(n+1)`
-/

namespace A181428.P14533324837959731901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024675 (n + 1) - A000040 (n + 1)

end

end A181428.P14533324837959731901

namespace A181428

/-- `2*A024675(n+1)-A000040(n+1)` -/
def P14533324837959731901.Spec : Prop :=
  ∀ n, P14533324837959731901.a n = A181428 (n + 1)

end A181428

/-! ## A181428.P4108368626517232415

`A034961(n+1)-2*A000040(n+1)`
-/

namespace A181428.P4108368626517232415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) - 2 * A000040 (n + 1)

end

end A181428.P4108368626517232415

namespace A181428

/-- `A034961(n+1)-2*A000040(n+1)` -/
def P4108368626517232415.Spec : Prop :=
  ∀ n, P4108368626517232415.a n = A181428 (n + 1)

theorem P4108368626517232415.correct : P4108368626517232415.Spec := by
  intro n
  simp only [A181428, Nat.add_sub_cancel, A181428.P4108368626517232415.a, A181428.P14403328019642653517.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A034961, A034961.P9480249767911558173.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181428

/-! ## A181428.P13719354313996282681

`2*A065091(n+1)-A096379(n+1)`
-/

namespace A181428.P13719354313996282681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065091 (n + 1) - A096379 (n + 1)

end

end A181428.P13719354313996282681

namespace A181428

/-- `2*A065091(n+1)-A096379(n+1)` -/
def P13719354313996282681.Spec : Prop :=
  ∀ n, P13719354313996282681.a n = A181428 (n + 1)

theorem P13719354313996282681.correct : P13719354313996282681.Spec := by
  intro n
  simp only [A181428, Nat.add_sub_cancel, A181428.P13719354313996282681.a, A181428.P14403328019642653517.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A065091, A065091.P6971844946592549357.a, A096379, A096379.P509834506880397996.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181428

/-! ## A181428.P3661297958022250166

`2*A215848(n+1)-A093667(n+1)`
-/

namespace A181428.P3661297958022250166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A215848 (n + 1) - A093667 (n + 1)

end

end A181428.P3661297958022250166

namespace A181428

/-- `2*A215848(n+1)-A093667(n+1)` -/
def P3661297958022250166.Spec : Prop :=
  ∀ n, P3661297958022250166.a n = A181428 (n + 1)

theorem P3661297958022250166.correct : P3661297958022250166.Spec := by
  intro n
  simp only [A181428, Nat.add_sub_cancel, A181428.P3661297958022250166.a, A181428.P14403328019642653517.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A093667, A093667.P4637239888588385054.a, A215848, A215848.P17068717743202425727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181428

/-! ## A181428.P1796594535155806002

`A001223(n+1)+A028334(n+2)+A024675(n+1)`
-/

namespace A181428.P1796594535155806002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) + (A028334 (n + 2) + A024675 (n + 1))

end

end A181428.P1796594535155806002

namespace A181428

/-- `A001223(n+1)+A028334(n+2)+A024675(n+1)` -/
def P1796594535155806002.Spec : Prop :=
  ∀ n, P1796594535155806002.a n = A181428 (n + 1)

end A181428

/-! ## A181428.P1762152471422248649

`A001223(n+2)+A001748(n+2)-A001043(n+1)`
-/

namespace A181428.P1762152471422248649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2) + (A001748 (n + 2) - A001043 (n + 1))

end

end A181428.P1762152471422248649

namespace A181428

/-- `A001223(n+2)+A001748(n+2)-A001043(n+1)` -/
def P1762152471422248649.Spec : Prop :=
  ∀ n, P1762152471422248649.a n = A181428 (n + 1)

theorem P1762152471422248649.correct : P1762152471422248649.Spec := by
  intro n
  simp only [A181428, Nat.add_sub_cancel, A181428.P1762152471422248649.a, A181428.P14403328019642653517.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A001223, A001223.P5034056745985311719.a, A001748, A001748.P16019639290970068825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181428

/-! ## A181428.P17994999017827460910

`A031131(n+1)+A000040(n+2)`
-/

namespace A181428.P17994999017827460910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 1) + A000040 (n + 2)

end

end A181428.P17994999017827460910

namespace A181428

/-- `A031131(n+1)+A000040(n+2)` -/
def P17994999017827460910.Spec : Prop :=
  ∀ n, P17994999017827460910.a n = A181428 (n + 1)

theorem P17994999017827460910.correct : P17994999017827460910.Spec := by
  intro n
  simp only [A181428, Nat.add_sub_cancel, A181428.P17994999017827460910.a, A181428.P14403328019642653517.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031131, A031131.P2453725465626413076.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181428

/-!
# A181430: Number of distinct 5-card poker hands using n ranks and 4 unlabeled suits.

The programs for A181430, the canonical program `A181430.P772268133492616925` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181430 has offset 0).

The definition of A181430 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181430.P772268133492616925

`n*(n-1)*(51*n^3-59*n²+106*n-24)/120`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A181430

/-- `n*(n-1)*(51*n^3-59*n²+106*n-24)/120` -/
def P772268133492616925.Spec : Prop :=
  ∀ n, P772268133492616925.a n = (A181430 n : ℚ)

end A181430

/-!
# A181431: For n not divisible by 10 and using as many leading zeros as needed, smallest number whose inverse has only digits of n in its period.

The programs for A181431, there is no canonical definition to state claims against.
-/

/-! ## A181431.P3980175424058671798

`A096688(n+1)*A267925(A278896(n+1))`
-/

namespace A181431.P3980175424058671798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096688 (n + 1) * A267925 (A278896 (n + 1)).toNat

end

end A181431.P3980175424058671798

/-!
# A181432: Symmetric square array T(n,k) read by antidiagonals. T(n,k)=A008836(n)*A008836(k).

The programs for A181432, the canonical program `A181432.P18320344108581790144` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181432 has offset 1).

The definition of A181432 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181432.P18320344108581790144

`A008836(col(n)+1)*A008836(row(n)-col(n)+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A181432

/-- `A008836(col(n)+1)*A008836(row(n)-col(n)+1)` -/
def P18320344108581790144.Spec : Prop :=
  ∀ n, P18320344108581790144.a n = A181432 (n + 1)

theorem P18320344108581790144.correct : P18320344108581790144.Spec := by
  intro n
  simp only [A181432, Nat.add_sub_cancel]

end A181432

/-! ## A181432.P16435192265112639259

`A008836(row(n)-col(n)+1)*A008836(col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A181432.P16435192265112639259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat * A008836 (SequenceMachineLib.triCol n + 1)

end

end A181432.P16435192265112639259

namespace A181432

/-- `A008836(row(n)-col(n)+1)*A008836(col(n)+1)` -/
def P16435192265112639259.Spec : Prop :=
  ∀ n, P16435192265112639259.a n = A181432 (n + 1)

theorem P16435192265112639259.correct : P16435192265112639259.Spec := by
  intro n
  simp only [A181432, Nat.add_sub_cancel, A181432.P16435192265112639259.a, A181432.P18320344108581790144.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A181432

/-! ## A181432.P2908848390235048253

`(-1)^A130836(n+1)`
-/

namespace A181432.P2908848390235048253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A130836 (n + 1) : ℤ)

end

end A181432.P2908848390235048253

namespace A181432

/-- `(-1)^A130836(n+1)` -/
def P2908848390235048253.Spec : Prop :=
  ∀ n, P2908848390235048253.a n = (A181432 (n + 1) : ℚ)

end A181432

/-! ## A181432.P6022929728819607460

`(-1)^∑{e}[A003991(n+1), #]`
-/

namespace A181432.P6022929728819607460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A181432.P6022929728819607460

namespace A181432

/-- `(-1)^∑{e}[A003991(n+1), #]` -/
def P6022929728819607460.Spec : Prop :=
  ∀ n, P6022929728819607460.a n = A181432 (n + 1)

end A181432

/-! ## A181432.P3797402606897667768

`ratio[A008836(A074909(n))]`
-/

namespace A181432.P3797402606897667768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A074909 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A181432.P3797402606897667768

namespace A181432

/-- `ratio[A008836(A074909(n))]` -/
def P3797402606897667768.Spec : Prop :=
  ∀ n, P3797402606897667768.a n = (A181432 (n + 1) : ℚ)

end A181432

/-! ## A181432.P10955332232300401539

`A008836(A003991(n+1))`
-/

namespace A181432.P10955332232300401539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A003991 (n + 1)).toNat

end

end A181432.P10955332232300401539

namespace A181432

/-- `A008836(A003991(n+1))` -/
def P10955332232300401539.Spec : Prop :=
  ∀ n, P10955332232300401539.a n = A181432 (n + 1)

end A181432

/-! ## A181432.P642655714948820218

`A008836(A059036(n)+1)`
-/

namespace A181432.P642655714948820218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A059036 n + 1).toNat

end

end A181432.P642655714948820218

namespace A181432

/-- `A008836(A059036(n)+1)` -/
def P642655714948820218.Spec : Prop :=
  ∀ n, P642655714948820218.a n = A181432 (n + 1)

end A181432

/-! ## A181432.P11647357442242398356

`A008836(A059897(n+1))`
-/

namespace A181432.P11647357442242398356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A059897 (n + 1)).toNat

end

end A181432.P11647357442242398356

namespace A181432

/-- `A008836(A059897(n+1))` -/
def P11647357442242398356.Spec : Prop :=
  ∀ n, P11647357442242398356.a n = A181432 (n + 1)

end A181432

/-! ## A181432.P5737901472485896953

`A008836(A089913(n+1))`
-/

namespace A181432.P5737901472485896953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A089913 (n + 1)).toNat

end

end A181432.P5737901472485896953

namespace A181432

/-- `A008836(A089913(n+1))` -/
def P5737901472485896953.Spec : Prop :=
  ∀ n, P5737901472485896953.a n = A181432 (n + 1)

end A181432

/-! ## A181432.P18223740903974547423

`A008836(A098352(n+1))`
-/

namespace A181432.P18223740903974547423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A098352 (n + 1)).toNat

end

end A181432.P18223740903974547423

namespace A181432

/-- `A008836(A098352(n+1))` -/
def P18223740903974547423.Spec : Prop :=
  ∀ n, P18223740903974547423.a n = A181432 (n + 1)

end A181432

/-!
# A181433: Numbers k such that 11*k is 5 less than a square.

The programs for A181433, the canonical program `A181433.P5653467107559216235` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181433 has offset 1).

The definition of A181433 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181433.P16610670769870982547

`(22*(n+1)*n-5*(2*(n+1)-1)*(-1)^(n+1)+3)/8`
-/

namespace A181433.P16610670769870982547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((22 * (n + 1) * n : ℤ) - 5 * ((2 * (n + 1) : ℤ) - 1) * (-1) ^ (n + 1) + 3 : ℚ) / 8

end

end A181433.P16610670769870982547

namespace A181433

/-- `(22*(n+1)*n-5*(2*(n+1)-1)*(-1)^(n+1)+3)/8` -/
def P16610670769870982547.Spec : Prop :=
  ∀ n, P16610670769870982547.a n = (A181433 (n + 1) : ℚ)

theorem P16610670769870982547.correct : P16610670769870982547.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A181433, Nat.add_sub_cancel, A181433.P16610670769870982547.a, A181433.P5653467107559216235.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A181433, Nat.add_sub_cancel, A181433.P16610670769870982547.a, A181433.P5653467107559216235.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A181433

/-! ## A181433.P5653467107559216235

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=4, a(2)=20, a(3)=29, a(4)=61`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A181433

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P5653467107559216235.Spec : Prop :=
  ∀ n, P5653467107559216235.a n = A181433 (n + 1)

theorem P5653467107559216235.correct : P5653467107559216235.Spec := by
  intro n
  simp only [A181433, Nat.add_sub_cancel]

end A181433

/-! ## A181433.P17577409405162214263

`∑[(char[2*n]+3)*n*gcd(2, n)]+1`
-/

namespace A181433.P17577409405162214263
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0) + 3) * (n * Nat.gcd 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A181433.P17577409405162214263

namespace A181433

/-- `∑[(char[2*n]+3)*n*gcd(2, n)]+1` -/
def P17577409405162214263.Spec : Prop :=
  ∀ n, (P17577409405162214263.a n : ℤ) = A181433 (n + 1)

end A181433

/-! ## A181433.P17319501432353390162

`comp[round(5*n/3)]²-2*∑[n*(2*n%2+1)!]`
-/

namespace A181433.P17319501432353390162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (5 * ((n : ℚ) / 3))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.factorial (2 * (n % 2) + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2 : ℤ) - ((2 * (∑ j ∈ Finset.range (n + 1), f2 j) : ℕ) : ℤ)

end

end A181433.P17319501432353390162

namespace A181433

/-- `comp[round(5*n/3)]²-2*∑[n*(2*n%2+1)!]` -/
def P17319501432353390162.Spec : Prop :=
  ∀ n, P17319501432353390162.a n = A181433 (n + 1)

end A181433

/-! ## A181433.P4095726945070801025

`floor(A179088(n+1)/2)`
-/

namespace A181433.P4095726945070801025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A179088 (n + 1) : ℚ) / 2⌋

end

end A181433.P4095726945070801025

namespace A181433

/-- `floor(A179088(n+1)/2)` -/
def P4095726945070801025.Spec : Prop :=
  ∀ n, P4095726945070801025.a n = A181433 (n + 1)

end A181433

/-! ## A181433.P3291221540430650283

`A374584(n+1)+n²+n`
-/

namespace A181433.P3291221540430650283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374584 (n + 1) + (n ^ 2 + n : ℤ)

end

end A181433.P3291221540430650283

namespace A181433

/-- `A374584(n+1)+n²+n` -/
def P3291221540430650283.Spec : Prop :=
  ∀ n, P3291221540430650283.a n = A181433 (n + 1)

end A181433

/-! ## A181433.P13071570451261203444

`A001082(n+1)+record[C(or(2, n), 2)]`
-/

namespace A181433.P13071570451261203444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 2 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 1) + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A181433.P13071570451261203444

namespace A181433

/-- `A001082(n+1)+record[C(or(2, n), 2)]` -/
def P13071570451261203444.Spec : Prop :=
  ∀ n, P13071570451261203444.a n = A181433 (n + 1)

end A181433

/-! ## A181433.P7758514497601919305

`A274978(n+1)+n²+n+1`
-/

namespace A181433.P7758514497601919305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274978 (n + 1) + (n ^ 2 : ℤ) + (n + 1 : ℤ)

end

end A181433.P7758514497601919305

namespace A181433

/-- `A274978(n+1)+n²+n+1` -/
def P7758514497601919305.Spec : Prop :=
  ∀ n, P7758514497601919305.a n = A181433 (n + 1)

end A181433

/-! ## A181433.P9911489116008149433

`A195162(n)+A186424(n)`
-/

namespace A181433.P9911489116008149433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195162 n + A186424 n

end

end A181433.P9911489116008149433

namespace A181433

/-- `A195162(n)+A186424(n)` -/
def P9911489116008149433.Spec : Prop :=
  ∀ n, P9911489116008149433.a n = A181433 (n + 1)

end A181433

/-! ## A181433.P3257167038282353664

`A247643(n)+A195818(n)`
-/

namespace A181433.P3257167038282353664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247643 n + A195818 n

end

end A181433.P3257167038282353664

namespace A181433

/-- `A247643(n)+A195818(n)` -/
def P3257167038282353664.Spec : Prop :=
  ∀ n, P3257167038282353664.a n = A181433 (n + 1)

end A181433

/-! ## A181433.P4256581683135925447

`A119617(n+1)-A074378(n)`
-/

namespace A181433.P4256581683135925447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119617 (n + 1) - A074378 n

end

end A181433.P4256581683135925447

namespace A181433

/-- `A119617(n+1)-A074378(n)` -/
def P4256581683135925447.Spec : Prop :=
  ∀ n, P4256581683135925447.a n = A181433 (n + 1)

end A181433

/-! ## A181433.P7025588192660013578

`A124080(n)-A266957(n+1)`
-/

namespace A181433.P7025588192660013578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124080 n - A266957 (n + 1)

end

end A181433.P7025588192660013578

namespace A181433

/-- `A124080(n)-A266957(n+1)` -/
def P7025588192660013578.Spec : Prop :=
  ∀ n, P7025588192660013578.a n = A181433 (n + 1)

end A181433

/-! ## A181433.P13174620827188817226

`A274682(n+1)-A247643(n)`
-/

namespace A181433.P13174620827188817226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274682 (n + 1) - A247643 n

end

end A181433.P13174620827188817226

namespace A181433

/-- `A274682(n+1)-A247643(n)` -/
def P13174620827188817226.Spec : Prop :=
  ∀ n, P13174620827188817226.a n = A181433 (n + 1)

end A181433

/-! ## A181433.P1532421972892852492

`A220082(n+1)-A317300(n)`
-/

namespace A181433.P1532421972892852492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220082 (n + 1) - A317300 n

end

end A181433.P1532421972892852492

namespace A181433

/-- `A220082(n+1)-A317300(n)` -/
def P1532421972892852492.Spec : Prop :=
  ∀ n, P1532421972892852492.a n = A181433 (n + 1)

end A181433

/-! ## A181433.P11998561295279647925

`A273368(n)+1-A317300(n)`
-/

namespace A181433.P11998561295279647925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273368 n + (1 - A317300 n)

end

end A181433.P11998561295279647925

namespace A181433

/-- `A273368(n)+1-A317300(n)` -/
def P11998561295279647925.Spec : Prop :=
  ∀ n, P11998561295279647925.a n = A181433 (n + 1)

end A181433

/-! ## A181433.P4272828625320884682

`A000124(n)+2*A195160(n)`
-/

namespace A181433.P4272828625320884682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n + 2 * A195160 n

end

end A181433.P4272828625320884682

namespace A181433

/-- `A000124(n)+2*A195160(n)` -/
def P4272828625320884682.Spec : Prop :=
  ∀ n, P4272828625320884682.a n = A181433 (n + 1)

end A181433

/-! ## A181433.P15912692711287681478

`A257083(n)+2*A074377(n)`
-/

namespace A181433.P15912692711287681478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257083 n + 2 * A074377 n

end

end A181433.P15912692711287681478

namespace A181433

/-- `A257083(n)+2*A074377(n)` -/
def P15912692711287681478.Spec : Prop :=
  ∀ n, P15912692711287681478.a n = A181433 (n + 1)

end A181433

/-! ## A181433.P17127149698581289735

`A014493(n+1)+A001082(n+1)`
-/

namespace A181433.P17127149698581289735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014493 (n + 1) + A001082 (n + 1)

end

end A181433.P17127149698581289735

namespace A181433

/-- `A014493(n+1)+A001082(n+1)` -/
def P17127149698581289735.Spec : Prop :=
  ∀ n, P17127149698581289735.a n = A181433 (n + 1)

end A181433

/-! ## A181433.P3257828871225517868

`A062786(n+1)-A132355(n+1)`
-/

namespace A181433.P3257828871225517868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062786 (n + 1) - A132355 (n + 1)

end

end A181433.P3257828871225517868

namespace A181433

/-- `A062786(n+1)-A132355(n+1)` -/
def P3257828871225517868.Spec : Prop :=
  ∀ n, P3257828871225517868.a n = A181433 (n + 1)

end A181433

/-! ## A181433.P13101755366419848385

`A014493(n+1)+A257083(n)-1`
-/

namespace A181433.P13101755366419848385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014493 (n + 1) + (A257083 n - 1)

end

end A181433.P13101755366419848385

namespace A181433

/-- `A014493(n+1)+A257083(n)-1` -/
def P13101755366419848385.Spec : Prop :=
  ∀ n, P13101755366419848385.a n = A181433 (n + 1)

end A181433

/-!
# A181434: First column in matrix inverse of a mixed convolution of A052542.

The programs for A181434, the canonical program `A181434.P17652804712885310540` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181434 has offset 1).

The definition of A181434 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1085 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181434.P17287738200296496606

`A181435(n+1)+char[1]`
-/

namespace A181434.P17287738200296496606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181435 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A181434.P17287738200296496606

namespace A181434

/-- `A181435(n+1)+char[1]` -/
def P17287738200296496606.Spec : Prop :=
  ∀ n, P17287738200296496606.a n = A181434 (n + 1)

end A181434

/-! ## A181434.P11593555890517780425

`A008683(n+1)-2*char[1]`
-/

namespace A181434.P11593555890517780425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) - ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A181434.P11593555890517780425

namespace A181434

/-- `A008683(n+1)-2*char[1]` -/
def P11593555890517780425.Spec : Prop :=
  ∀ n, P11593555890517780425.a n = A181434 (n + 1)

end A181434

/-! ## A181434.P17652804712885310540

`A157657(n+1)*A260196(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A181434

/-- `A157657(n+1)*A260196(n)` -/
def P17652804712885310540.Spec : Prop :=
  ∀ n, P17652804712885310540.a n = A181434 (n + 1)

theorem P17652804712885310540.correct : P17652804712885310540.Spec := by
  intro n
  simp only [A181434, Nat.add_sub_cancel]

end A181434

/-! ## A181434.P6817360526785648525

`and(A008683(n+1), A260196(n))`
-/

namespace A181434.P6817360526785648525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008683 (n + 1)) (A260196 n)

end

end A181434.P6817360526785648525

namespace A181434

/-- `and(A008683(n+1), A260196(n))` -/
def P6817360526785648525.Spec : Prop :=
  ∀ n, P6817360526785648525.a n = A181434 (n + 1)

end A181434

/-! ## A181434.P2001172586348044749

`xor(A063524(n), A181435(n+1))`
-/

namespace A181434.P2001172586348044749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A181435 (n + 1))

end

end A181434.P2001172586348044749

namespace A181434

/-- `xor(A063524(n), A181435(n+1))` -/
def P2001172586348044749.Spec : Prop :=
  ∀ n, P2001172586348044749.a n = A181434 (n + 1)

end A181434

/-! ## A181434.P6332485457540944377

`A008683(n+1)*A121273(n+1)`
-/

namespace A181434.P6332485457540944377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A121273 (n + 1)

end

end A181434.P6332485457540944377

namespace A181434

/-- `A008683(n+1)*A121273(n+1)` -/
def P6332485457540944377.Spec : Prop :=
  ∀ n, P6332485457540944377.a n = A181434 (n + 1)

end A181434

/-! ## A181434.P14194212892129818546

`A346234(n+1)%A072865(n+1)`
-/

namespace A181434.P14194212892129818546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346234 (n + 1)) (A072865 (n + 1))

end

end A181434.P14194212892129818546

namespace A181434

/-- `A346234(n+1)%A072865(n+1)` -/
def P14194212892129818546.Spec : Prop :=
  ∀ n, P14194212892129818546.a n = A181434 (n + 1)

end A181434

/-! ## A181434.P13121132802161137328

`A359484(n+1)%A072865(n+1)`
-/

namespace A181434.P13121132802161137328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359484 (n + 1)) (A072865 (n + 1))

end

end A181434.P13121132802161137328

namespace A181434

/-- `A359484(n+1)%A072865(n+1)` -/
def P13121132802161137328.Spec : Prop :=
  ∀ n, P13121132802161137328.a n = A181434 (n + 1)

end A181434

/-! ## A181434.P11935231451471898237

`A378750(n+1)%A072865(n+1)`
-/

namespace A181434.P11935231451471898237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A378750 (n + 1)) (A072865 (n + 1))

end

end A181434.P11935231451471898237

namespace A181434

/-- `A378750(n+1)%A072865(n+1)` -/
def P11935231451471898237.Spec : Prop :=
  ∀ n, P11935231451471898237.a n = A181434 (n + 1)

end A181434

/-! ## A181434.P520870117821310289

`A008683(n+1)*A148761(C(2, n))`
-/

namespace A181434.P520870117821310289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A148761 (Nat.choose 2 n)

end

end A181434.P520870117821310289

namespace A181434

/-- `A008683(n+1)*A148761(C(2, n))` -/
def P520870117821310289.Spec : Prop :=
  ∀ n, P520870117821310289.a n = A181434 (n + 1)

end A181434

/-! ## A181434.P4653279524124233406

`A008683(n+1)*A190444(C(2, n))`
-/

namespace A181434.P4653279524124233406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A190444 (Nat.choose 2 n)

end

end A181434.P4653279524124233406

namespace A181434

/-- `A008683(n+1)*A190444(C(2, n))` -/
def P4653279524124233406.Spec : Prop :=
  ∀ n, P4653279524124233406.a n = A181434 (n + 1)

end A181434

/-! ## A181434.P5859979943879491580

`or(abs(A008683(n+1)), A181435(n+1))`
-/

namespace A181434.P5859979943879491580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor |A008683 (n + 1)| (A181435 (n + 1))

end

end A181434.P5859979943879491580

namespace A181434

/-- `or(abs(A008683(n+1)), A181435(n+1))` -/
def P5859979943879491580.Spec : Prop :=
  ∀ n, P5859979943879491580.a n = A181434 (n + 1)

end A181434

/-! ## A181434.P13072544802430411438

`A000041(C(3, n²))*A008683(n+1)`
-/

namespace A181434.P13072544802430411438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 3 (n ^ 2)) * A008683 (n + 1)

end

end A181434.P13072544802430411438

namespace A181434

/-- `A000041(C(3, n²))*A008683(n+1)` -/
def P13072544802430411438.Spec : Prop :=
  ∀ n, P13072544802430411438.a n = A181434 (n + 1)

end A181434

/-! ## A181434.P14673928146698877234

`(A072865(n+1)-1)*A008683(n+1)`
-/

namespace A181434.P14673928146698877234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A072865 (n + 1) - 1) * A008683 (n + 1)

end

end A181434.P14673928146698877234

namespace A181434

/-- `(A072865(n+1)-1)*A008683(n+1)` -/
def P14673928146698877234.Spec : Prop :=
  ∀ n, P14673928146698877234.a n = A181434 (n + 1)

end A181434

/-! ## A181434.P3098748420965957414

`gcd(1-n, A000040(n+1))*A008683(n+1)`
-/

namespace A181434.P3098748420965957414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (1 - (n : ℤ)) (A000040 (n + 1)) : ℤ) * A008683 (n + 1)

end

end A181434.P3098748420965957414

namespace A181434

/-- `gcd(1-n, A000040(n+1))*A008683(n+1)` -/
def P3098748420965957414.Spec : Prop :=
  ∀ n, P3098748420965957414.a n = A181434 (n + 1)

end A181434

/-! ## A181434.P12530430920135822229

`A007318((n+3)*C(2, n))*A008683(n+1)`
-/

namespace A181434.P12530430920135822229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ((n + 3) * Nat.choose 2 n) * A008683 (n + 1)

end

end A181434.P12530430920135822229

namespace A181434

/-- `A007318((n+3)*C(2, n))*A008683(n+1)` -/
def P12530430920135822229.Spec : Prop :=
  ∀ n, P12530430920135822229.a n = A181434 (n + 1)

end A181434

/-! ## A181434.P9748373125508869946

`A008683(n+1)-A000041(C(n+2, 2*n))+1`
-/

namespace A181434.P9748373125508869946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) - A000041 (Nat.choose (n + 2) (2 * n)) + 1

end

end A181434.P9748373125508869946

namespace A181434

/-- `A008683(n+1)-A000041(C(n+2, 2*n))+1` -/
def P9748373125508869946.Spec : Prop :=
  ∀ n, P9748373125508869946.a n = A181434 (n + 1)

end A181434

/-! ## A181434.P15515213538229472413

`A000045(C(n+2, 2*n)+1)*A008683(n+1)`
-/

namespace A181434.P15515213538229472413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose (n + 2) (2 * n) + 1) * A008683 (n + 1)

end

end A181434.P15515213538229472413

namespace A181434

/-- `A000045(C(n+2, 2*n)+1)*A008683(n+1)` -/
def P15515213538229472413.Spec : Prop :=
  ∀ n, P15515213538229472413.a n = A181434 (n + 1)

end A181434

/-! ## A181434.P13922487376412464

`A001222(C(n+3, 2*n)+2)*A008683(n+1)`
-/

namespace A181434.P13922487376412464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.choose (n + 3) (2 * n) + 2) * A008683 (n + 1)

end

end A181434.P13922487376412464

namespace A181434

/-- `A001222(C(n+3, 2*n)+2)*A008683(n+1)` -/
def P13922487376412464.Spec : Prop :=
  ∀ n, P13922487376412464.a n = A181434 (n + 1)

end A181434

/-! ## A181434.P6727254740820042144

`gcd(n+2, A006530(2*n+n+3))*A008683(n+1)`
-/

namespace A181434.P6727254740820042144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 2 : ℤ) (A006530 (2 * n + (n + 3))) : ℤ) * A008683 (n + 1)

end

end A181434.P6727254740820042144

namespace A181434

/-- `gcd(n+2, A006530(2*n+n+3))*A008683(n+1)` -/
def P6727254740820042144.Spec : Prop :=
  ∀ n, P6727254740820042144.a n = A181434 (n + 1)

end A181434

/-!
# A181435: First column in matrix inverse of a mixed convolution of A052906.

The programs for A181435, the canonical program `A181435.P17617308443401127913` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181435 has offset 1).

The definition of A181435 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1085 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181435.P1548883073832754813

`A008683(n+1)-3*char[1]`
-/

namespace A181435.P1548883073832754813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) - ((3 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A181435.P1548883073832754813

namespace A181435

/-- `A008683(n+1)-3*char[1]` -/
def P1548883073832754813.Spec : Prop :=
  ∀ n, P1548883073832754813.a n = A181435 (n + 1)

end A181435

/-! ## A181435.P5030626686027992876

`A178562(n)²*A008683(n+1)`
-/

namespace A181435.P5030626686027992876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178562 n ^ 2 * A008683 (n + 1)

end

end A181435.P5030626686027992876

namespace A181435

/-- `A178562(n)²*A008683(n+1)` -/
def P5030626686027992876.Spec : Prop :=
  ∀ n, P5030626686027992876.a n = A181435 (n + 1)

end A181435

/-! ## A181435.P17215525304564704160

`A373565(n)²*A008683(n+1)`
-/

namespace A181435.P17215525304564704160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n ^ 2 * A008683 (n + 1)

end

end A181435.P17215525304564704160

namespace A181435

/-- `A373565(n)²*A008683(n+1)` -/
def P17215525304564704160.Spec : Prop :=
  ∀ n, P17215525304564704160.a n = A181435 (n + 1)

end A181435

/-! ## A181435.P7578009694850607656

`A008683(n+1)*A266891(C(2, n))`
-/

namespace A181435.P7578009694850607656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A266891 (Nat.choose 2 n)

end

end A181435.P7578009694850607656

namespace A181435

/-- `A008683(n+1)*A266891(C(2, n))` -/
def P7578009694850607656.Spec : Prop :=
  ∀ n, P7578009694850607656.a n = A181435 (n + 1)

end A181435

/-! ## A181435.P2695722519959959448

`(A063524(n)+1)²*A008683(n+1)`
-/

namespace A181435.P2695722519959959448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063524 n + 1) ^ 2 * A008683 (n + 1)

end

end A181435.P2695722519959959448

namespace A181435

/-- `(A063524(n)+1)²*A008683(n+1)` -/
def P2695722519959959448.Spec : Prop :=
  ∀ n, P2695722519959959448.a n = A181435 (n + 1)

end A181435

/-! ## A181435.P18421110184980424112

`(1-A159075(n))²*A008683(n+1)`
-/

namespace A181435.P18421110184980424112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A159075 n) ^ 2 * A008683 (n + 1)

end

end A181435.P18421110184980424112

namespace A181435

/-- `(1-A159075(n))²*A008683(n+1)` -/
def P18421110184980424112.Spec : Prop :=
  ∀ n, P18421110184980424112.a n = A181435 (n + 1)

end A181435

/-! ## A181435.P6397247830051594249

`A000041(C(2, n))²*A008683(n+1)`
-/

namespace A181435.P6397247830051594249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 n) ^ 2 * A008683 (n + 1)

end

end A181435.P6397247830051594249

namespace A181435

/-- `A000041(C(2, n))²*A008683(n+1)` -/
def P6397247830051594249.Spec : Prop :=
  ∀ n, P6397247830051594249.a n = A181435 (n + 1)

end A181435

/-! ## A181435.P5889357919918580319

`A007318(C(2, n)+9)*A008683(n+1)`
-/

namespace A181435.P5889357919918580319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n + 9) * A008683 (n + 1)

end

end A181435.P5889357919918580319

namespace A181435

/-- `A007318(C(2, n)+9)*A008683(n+1)` -/
def P5889357919918580319.Spec : Prop :=
  ∀ n, P5889357919918580319.a n = A181435 (n + 1)

end A181435

/-! ## A181435.P15051968991937881213

`(A336352(n+1)+1)²*A008683(n+1)`
-/

namespace A181435.P15051968991937881213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A336352 (n + 1) + 1) ^ 2 * A008683 (n + 1)

end

end A181435.P15051968991937881213

namespace A181435

/-- `(A336352(n+1)+1)²*A008683(n+1)` -/
def P15051968991937881213.Spec : Prop :=
  ∀ n, P15051968991937881213.a n = A181435 (n + 1)

end A181435

/-! ## A181435.P1161931134932680647

`A008683(n+1)/(2/A072865(n+1))²`
-/

namespace A181435.P1161931134932680647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 1) : ℚ) / (2 / (A072865 (n + 1) : ℚ)) ^ 2

end

end A181435.P1161931134932680647

namespace A181435

/-- `A008683(n+1)/(2/A072865(n+1))²` -/
def P1161931134932680647.Spec : Prop :=
  ∀ n, P1161931134932680647.a n = (A181435 (n + 1) : ℚ)

end A181435

/-! ## A181435.P3635982675675478911

`gcd(2, A006530(n+1))²*A008683(n+1)`
-/

namespace A181435.P3635982675675478911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A006530 (n + 1)) ^ 2 : ℤ) * A008683 (n + 1)

end

end A181435.P3635982675675478911

namespace A181435

/-- `gcd(2, A006530(n+1))²*A008683(n+1)` -/
def P3635982675675478911.Spec : Prop :=
  ∀ n, P3635982675675478911.a n = A181435 (n + 1)

end A181435

/-! ## A181435.P4269342894466623855

`A322315(A008578(n+1))²*A008683(n+1)`
-/

namespace A181435.P4269342894466623855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322315 (A008578 (n + 1)).toNat ^ 2 * A008683 (n + 1)

end

end A181435.P4269342894466623855

namespace A181435

/-- `A322315(A008578(n+1))²*A008683(n+1)` -/
def P4269342894466623855.Spec : Prop :=
  ∀ n, P4269342894466623855.a n = A181435 (n + 1)

end A181435

/-! ## A181435.P7514910482890620558

`A008683(n+1)*A350388(2*A014963(n+1))`
-/

namespace A181435.P7514910482890620558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A350388 (2 * A014963 (n + 1)).toNat

end

end A181435.P7514910482890620558

namespace A181435

/-- `A008683(n+1)*A350388(2*A014963(n+1))` -/
def P7514910482890620558.Spec : Prop :=
  ∀ n, P7514910482890620558.a n = A181435 (n + 1)

end A181435

/-! ## A181435.P13699919275576434114

`(A008683(n+1)-A185012(n+1))*A294619(n+1)`
-/

namespace A181435.P13699919275576434114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 1) - A185012 (n + 1)) * A294619 (n + 1)

end

end A181435.P13699919275576434114

namespace A181435

/-- `(A008683(n+1)-A185012(n+1))*A294619(n+1)` -/
def P13699919275576434114.Spec : Prop :=
  ∀ n, P13699919275576434114.a n = A181435 (n + 1)

end A181435

/-! ## A181435.P10432684772704891984

`A181434(n+1)-char[1]`
-/

namespace A181435.P10432684772704891984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181434 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A181435.P10432684772704891984

namespace A181435

/-- `A181434(n+1)-char[1]` -/
def P10432684772704891984.Spec : Prop :=
  ∀ n, P10432684772704891984.a n = A181435 (n + 1)

end A181435

/-! ## A181435.P17617308443401127913

`xor(A063524(n), A181434(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A181435

/-- `xor(A063524(n), A181434(n+1))` -/
def P17617308443401127913.Spec : Prop :=
  ∀ n, P17617308443401127913.a n = A181435 (n + 1)

theorem P17617308443401127913.correct : P17617308443401127913.Spec := by
  intro n
  simp only [A181435, Nat.add_sub_cancel]

end A181435

/-! ## A181435.P2444216256235502007

`xor(A181434(n+1), A302047(A016945(n+2)))`
-/

namespace A181435.P2444216256235502007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A181434 (n + 1)) (A302047 (A016945 (n + 2)).toNat)

end

end A181435.P2444216256235502007

namespace A181435

/-- `xor(A181434(n+1), A302047(A016945(n+2)))` -/
def P2444216256235502007.Spec : Prop :=
  ∀ n, P2444216256235502007.a n = A181435 (n + 1)

end A181435

/-! ## A181435.P11546506337092051349

`A014963((n+1)*A001222(n+2))²*A008683(n+1)`
-/

namespace A181435.P11546506337092051349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ((n + 1 : ℤ) * A001222 (n + 2)).toNat ^ 2 * A008683 (n + 1)

end

end A181435.P11546506337092051349

namespace A181435

/-- `A014963((n+1)*A001222(n+2))²*A008683(n+1)` -/
def P11546506337092051349.Spec : Prop :=
  ∀ n, P11546506337092051349.a n = A181435 (n + 1)

end A181435

/-! ## A181435.P10481266140190304365

`A178536(n+1)*A178562(n)`
-/

namespace A181435.P10481266140190304365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178536 (n + 1) * A178562 n

end

end A181435.P10481266140190304365

namespace A181435

/-- `A178536(n+1)*A178562(n)` -/
def P10481266140190304365.Spec : Prop :=
  ∀ n, P10481266140190304365.a n = A181435 (n + 1)

end A181435

/-! ## A181435.P954984544888223260

`A178536(n+1)*A373565(n)`
-/

namespace A181435.P954984544888223260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178536 (n + 1) * A373565 n

end

end A181435.P954984544888223260

namespace A181435

/-- `A178536(n+1)*A373565(n)` -/
def P954984544888223260.Spec : Prop :=
  ∀ n, P954984544888223260.a n = A181435 (n + 1)

end A181435

/-!
# A181437: Size of the longest increasing sequence of primes starting with 2, 3 and with second-order differences bounded by n.

The programs for A181437, there is no canonical definition to state claims against.
-/

/-! ## A181437.P8126604519370248401

`A337516(A263317(n+1)+1)`
-/

namespace A181437.P8126604519370248401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337516 (A263317 (n + 1) + 1).toNat

end

end A181437.P8126604519370248401

/-!
# A181440: a(1) = 2; for n > 1, a(n) = A000217(n)-(sum of previous terms).

The programs for A181440, the canonical program `A181440.P5334357542794437050` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181440 has offset 1).

The definition of A181440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181440.P5334357542794437050

`C(2, C(3, n²))+n`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A181440

/-- `C(2, C(3, n²))+n` -/
def P5334357542794437050.Spec : Prop :=
  ∀ n, (P5334357542794437050.a n : ℤ) = A181440 (n + 1)

theorem P5334357542794437050.correct : P5334357542794437050.Spec := by
  intro n
  simp only [A181440, Nat.add_sub_cancel]

end A181440

/-!
# A181441: a(n) = A114537(n,n), the (n-1)-fold application of the prime function starting with the n-th nonprime.

The programs for A181441, there is no canonical definition to state claims against.
-/

/-! ## A181441.P8612875357143533292

`A114537(∑[4*n]+1)`
-/

namespace A181441.P8612875357143533292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114537 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A181441.P8612875357143533292

/-! ## A181441.P6512653028532103768

`or(1, A114537(A001844(n)))`
-/

namespace A181441.P6512653028532103768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A114537 (A001844 n).toNat)

end

end A181441.P6512653028532103768

/-! ## A181441.P5753136280436348840

`record[A003982(n)*A114537(n+1)]`
-/

namespace A181441.P5753136280436348840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A114537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181441.P5753136280436348840

/-! ## A181441.P4777392864581049649

`record[gcd(A114327(n), A114537(n+1))]`
-/

namespace A181441.P4777392864581049649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A114537 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181441.P4777392864581049649

/-! ## A181441.P1270475834861001293

`A007318(C(n+2, 2))*A114537(A001844(n))`
-/

namespace A181441.P1270475834861001293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose (n + 2) 2) * A114537 (A001844 n).toNat

end

end A181441.P1270475834861001293

/-!
# A181442: Expansion of (1 + x - 8*x^2 + x^3 + x^4) / ( (1 - x)*(1 - 10*x^2 + x^4) ).

The programs for A181442, the canonical program `A181442.P7107322903478687717` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181442 has offset 0).

The definition of A181442 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-8x^2+x^3+x^4)/(1-x-10x^2+10x^3+x^4-x^5))` (program `A181442.P7107322903478687717`, by `A181442.P7107322903478687717.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A181442.P7107322903478687717

`ogf((1+x-8x^2+x^3+x^4)/(1-x-10x^2+10x^3+x^4-x^5))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A181442

/-- `ogf((1+x-8x^2+x^3+x^4)/(1-x-10x^2+10x^3+x^4-x^5))` -/
def P7107322903478687717.Spec : Prop :=
  ∀ n, P7107322903478687717.a n = A181442 n

theorem P7107322903478687717.correct : P7107322903478687717.Spec := by
  intro n
  simp only [A181442]

end A181442

/-! ## A181442.P11527234339365738871

`11*a(n-2)-11*a(n-4)+a(n-6)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=15, a(4)=35, a(5)=144`
-/

namespace A181442.P11527234339365738871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 15, 35, 144] fun n a =>
  11 * a (n - 2) - 11 * a (n - 4) + a (n - 6)

end

end A181442.P11527234339365738871

namespace A181442

/-- `11*a(n-2)-11*a(n-4)+a(n-6)` -/
def P11527234339365738871.Spec : Prop :=
  ∀ n, P11527234339365738871.a n = A181442 n

end A181442

/-! ## A181442.P1679995823531563309

`A077288(n)+1`
-/

namespace A181442.P1679995823531563309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077288 n + 1

end

end A181442.P1679995823531563309

namespace A181442

/-- `A077288(n)+1` -/
def P1679995823531563309.Spec : Prop :=
  ∀ n, P1679995823531563309.a n = A181442 n

end A181442

/-! ## A181442.P7625016895745838954

`A129445(round(sqrt(n²+1)))+A129444(n+1)`
-/

namespace A181442.P7625016895745838954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129445 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A129444 (n + 1)

end

end A181442.P7625016895745838954

namespace A181442

/-- `A129445(round(sqrt(n²+1)))+A129444(n+1)` -/
def P7625016895745838954.Spec : Prop :=
  ∀ n, P7625016895745838954.a n = A181442 n

end A181442

/-! ## A181442.P4325567410846532615

`ceil(A080806(n+1)/2)`
-/

namespace A181442.P4325567410846532615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A080806 (n + 1) : ℚ) / 2⌉

end

end A181442.P4325567410846532615

namespace A181442

/-- `ceil(A080806(n+1)/2)` -/
def P4325567410846532615.Spec : Prop :=
  ∀ n, P4325567410846532615.a n = A181442 n

end A181442

/-! ## A181442.P3248158195402684565

`(A131093(A032766(n+1))+1)/2`
-/

namespace A181442.P3248158195402684565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131093 (A032766 (n + 1)).toNat + 1 : ℚ) / 2

end

end A181442.P3248158195402684565

namespace A181442

/-- `(A131093(A032766(n+1))+1)/2` -/
def P3248158195402684565.Spec : Prop :=
  ∀ n, P3248158195402684565.a n = (A181442 n : ℚ)

end A181442

/-! ## A181442.P2067507763607345412

`A129445(n+2)-A233450(n+2)`
-/

namespace A181442.P2067507763607345412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129445 (n + 2) - A233450 (n + 2)

end

end A181442.P2067507763607345412

namespace A181442

/-- `A129445(n+2)-A233450(n+2)` -/
def P2067507763607345412.Spec : Prop :=
  ∀ n, P2067507763607345412.a n = A181442 n

end A181442

/-! ## A181442.P8879455238319815868

`A135278(∑[n])-(n-A077288(n))`
-/

namespace A181442.P8879455238319815868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (∑ j ∈ Finset.range (n + 1), f1 j) - ((n : ℤ) - A077288 n)

end

end A181442.P8879455238319815868

namespace A181442

/-- `A135278(∑[n])-(n-A077288(n))` -/
def P8879455238319815868.Spec : Prop :=
  ∀ n, P8879455238319815868.a n = A181442 n

end A181442

/-! ## A181442.P6494999956718619433

`∑[gcd(A004189(n), A098297(n))]+1`
-/

namespace A181442.P6494999956718619433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004189 n) (A098297 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A181442.P6494999956718619433

namespace A181442

/-- `∑[gcd(A004189(n), A098297(n))]+1` -/
def P6494999956718619433.Spec : Prop :=
  ∀ n, (P6494999956718619433.a n : ℤ) = A181442 n

end A181442

/-!
# A181443: Solutions a(n) to (r(n)-5)*(r(n)-6) = 21 *a(n)*(a(n)-1).

The programs for A181443, there is no canonical definition to state claims against.
-/

/-! ## A181443.P14272932634542659020

`record[A001057(A237254(n+1))]`
-/

namespace A181443.P14272932634542659020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A237254 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181443.P14272932634542659020

/-! ## A181443.P9154170353056276361

`record[A142150(A237254(n+1)+1)]`
-/

namespace A181443.P9154170353056276361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A237254 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181443.P9154170353056276361

/-! ## A181443.P5222346433297795090

`record[A260439(A237254(n+1)+1)]`
-/

namespace A181443.P5222346433297795090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260439 (A237254 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181443.P5222346433297795090

/-!
# A181444: G.f. satisfies: A(x) = 1 + x*Sum_{n>=0} log( A(2^n*x)^2 )^n/n!.

The programs for A181444, there is no canonical definition to state claims against.
-/

/-! ## A181444.P740901713991843468

`A252463(C(2^(n+1), abs(1-n)))`
-/

namespace A181444.P740901713991843468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (Nat.choose (2 ^ (n + 1)) |1 - (n : ℤ)|.toNat)

end

end A181444.P740901713991843468

/-!
# A181445: G.f. satisfies: A(x) = Sum_{n>=0} log(1 + x*A(2^n*x))^n/n!.

The programs for A181445, there is no canonical definition to state claims against.
-/

/-! ## A181445.P16744656635907628103

`A319284((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*A000292(n))`
-/

namespace A181445.P16744656635907628103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319284 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) * (A000292 n : ℚ))).toNat

end

end A181445.P16744656635907628103

/-! ## A181445.P996472604308592363

`A237270(xor(A258180(n), A371796(n)))`
-/

namespace A181445.P996472604308592363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237270 (Int.xor (A258180 n) (A371796 n)).toNat

end

end A181445.P996472604308592363

/-!
# A181448: Numbers k such that 5 is the largest prime factor of k^2 - 1.

The programs for A181448, there is no canonical definition to state claims against.
-/

/-! ## A181448.P5687310364685414440

`A223701(n+6)`
-/

namespace A181448.P5687310364685414440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223701 (n + 6)

end

end A181448.P5687310364685414440

/-! ## A181448.P725346642755052179

`eq[5, A076605(n+2)]+2`
-/

namespace A181448.P725346642755052179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A181448.P725346642755052179

/-! ## A181448.P6343671252608383220

`eq[5, A006530(abs(2-n²)+1)]`
-/

namespace A181448.P6343671252608383220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (|2 - (n ^ 2 : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181448.P6343671252608383220

/-! ## A181448.P140670587423179361

`eq[5, A006530((n+3)²-1)]+3`
-/

namespace A181448.P140670587423179361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 3) ^ 2 - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A181448.P140670587423179361

/-!
# A181449: Numbers k such that 7 is the largest prime factor of k^2 - 1.

The programs for A181449, there is no canonical definition to state claims against.
-/

/-! ## A181449.P11693553380079515658

`A223701(n+14)`
-/

namespace A181449.P11693553380079515658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223701 (n + 14)

end

end A181449.P11693553380079515658

/-! ## A181449.P3954242013068181217

`eq[7, A076605(n+2)]+2`
-/

namespace A181449.P3954242013068181217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A181449.P3954242013068181217

/-! ## A181449.P10180018401434747715

`A009056(eq[7, A076605(n+2)])`
-/

namespace A181449.P10180018401434747715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181449.P10180018401434747715

/-! ## A181449.P8872227690192136169

`eq[7, A076605(A233583(n+1))]`
-/

namespace A181449.P8872227690192136169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181449.P8872227690192136169

/-! ## A181449.P8508081988112101379

`eq[7, A006530(A082562(n))]`
-/

namespace A181449.P8508081988112101379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A082562 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181449.P8508081988112101379

/-!
# A181450: Numbers k such that 11 is the largest prime factor of k^2 - 1.

The programs for A181450, there is no canonical definition to state claims against.
-/

/-! ## A181450.P13400433835037489610

`A223701(n+30)`
-/

namespace A181450.P13400433835037489610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223701 (n + 30)

end

end A181450.P13400433835037489610

/-! ## A181450.P346284196376814430

`eq[11, A076605(n+2)]+2`
-/

namespace A181450.P346284196376814430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A181450.P346284196376814430

/-! ## A181450.P9187242723932627730

`eq[11, A076605(A233583(n+1))]`
-/

namespace A181450.P9187242723932627730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181450.P9187242723932627730

/-! ## A181450.P14629648367824917705

`eq[11, A006530(A082562(n))]`
-/

namespace A181450.P14629648367824917705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A082562 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181450.P14629648367824917705

/-! ## A181450.P13490619626378161477

`eq[5, A061395(A106230(n+1))]`
-/

namespace A181450.P13490619626378161477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A106230 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181450.P13490619626378161477

/-!
# A181451: Numbers k such that 13 is the largest prime factor of k^2 - 1.

The programs for A181451, there is no canonical definition to state claims against.
-/

/-! ## A181451.P2486705503492397911

`A223701(n+50)`
-/

namespace A181451.P2486705503492397911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223701 (n + 50)

end

end A181451.P2486705503492397911

/-! ## A181451.P16146596934196750224

`eq[13, A076605(n+2)]+2`
-/

namespace A181451.P16146596934196750224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A181451.P16146596934196750224

/-! ## A181451.P5537136482223809732

`A171463(eq[13, A076605(n+2)])`
-/

namespace A181451.P5537136482223809732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181451.P5537136482223809732

/-! ## A181451.P1511779344371062544

`eq[13, A076605(A233583(n+1))]`
-/

namespace A181451.P1511779344371062544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181451.P1511779344371062544

/-! ## A181451.P14119291851222724977

`eq[13, A006530(A082562(n))]`
-/

namespace A181451.P14119291851222724977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A082562 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181451.P14119291851222724977

/-!
# A181452: Numbers k such that 17 is the largest prime factor of k^2 - 1.

The programs for A181452, there is no canonical definition to state claims against.
-/

/-! ## A181452.P14580411904310868169

`A223701(A076605(A181468(n+1))+n+1)`
-/

namespace A181452.P14580411904310868169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223701 (A076605 (A181468 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A181452.P14580411904310868169

/-! ## A181452.P18233945010878542874

`eq[17, A076605(n+2)]+2`
-/

namespace A181452.P18233945010878542874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A181452.P18233945010878542874

/-! ## A181452.P7072274483385767366

`A009056(eq[17, A076605(n+2)])`
-/

namespace A181452.P7072274483385767366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181452.P7072274483385767366

/-! ## A181452.P5864429333028461426

`eq[17, A076605(A233583(n+1))]`
-/

namespace A181452.P5864429333028461426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181452.P5864429333028461426

/-! ## A181452.P2044448560652180219

`eq[17, A006530(A082562(n))]`
-/

namespace A181452.P2044448560652180219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A082562 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181452.P2044448560652180219

/-!
# A181453: Numbers k such that 19 is the largest prime factor of k^2 - 1.

The programs for A181453, there is no canonical definition to state claims against.
-/

/-! ## A181453.P18134415399645781394

`A009056(eq[19, A076605(n+2)])`
-/

namespace A181453.P18134415399645781394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181453.P18134415399645781394

/-! ## A181453.P1131661404424923185

`A171463(eq[19, A076605(n+2)])`
-/

namespace A181453.P1131661404424923185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181453.P1131661404424923185

/-! ## A181453.P10685854100576057571

`eq[19, A076605(A233583(n+1))]`
-/

namespace A181453.P10685854100576057571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181453.P10685854100576057571

/-! ## A181453.P875395654120071393

`eq[19, A006530(A082562(n))]`
-/

namespace A181453.P875395654120071393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A082562 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181453.P875395654120071393

/-! ## A181453.P17409965021514591282

`eq[19, A006530(A106230(n+1))]`
-/

namespace A181453.P17409965021514591282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A106230 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181453.P17409965021514591282

/-!
# A181454: Numbers k such that 23 is the largest prime factor of k^2 - 1.

The programs for A181454, there is no canonical definition to state claims against.
-/

/-! ## A181454.P15924224041136412565

`eq[23, A076605(round(acot(n)+n))]`
-/

namespace A181454.P15924224041136412565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181454.P15924224041136412565

/-! ## A181454.P11823637927827362784

`A009056(eq[23, A076605(n+2)])`
-/

namespace A181454.P11823637927827362784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181454.P11823637927827362784

/-! ## A181454.P15733691629538835579

`A171463(eq[23, A076605(n+2)])`
-/

namespace A181454.P15733691629538835579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181454.P15733691629538835579

/-! ## A181454.P10912972219669937207

`eq[23, A076605(A233583(n+1))]`
-/

namespace A181454.P10912972219669937207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181454.P10912972219669937207

/-! ## A181454.P15478800001014468870

`eq[23, A006530(A082562(n))]`
-/

namespace A181454.P15478800001014468870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A082562 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181454.P15478800001014468870

/-!
# A181455: Numbers k such that 29 is the largest prime factor of k^2 - 1.

The programs for A181455, there is no canonical definition to state claims against.
-/

/-! ## A181455.P10562563811602408985

`eq[29, A076605(round(acot(n)+n))]`
-/

namespace A181455.P10562563811602408985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181455.P10562563811602408985

/-! ## A181455.P11706676773732563454

`A009056(eq[29, A076605(n+2)])`
-/

namespace A181455.P11706676773732563454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181455.P11706676773732563454

/-! ## A181455.P10284864176728673070

`A171463(eq[29, A076605(n+2)])`
-/

namespace A181455.P10284864176728673070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181455.P10284864176728673070

/-! ## A181455.P1419658108505381997

`eq[29, A076605(A233583(n+1))]`
-/

namespace A181455.P1419658108505381997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181455.P1419658108505381997

/-! ## A181455.P10425624533990942062

`eq[29, A006530(A082562(n))]`
-/

namespace A181455.P10425624533990942062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A082562 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181455.P10425624533990942062

/-!
# A181456: Numbers k such that 31 is the largest prime factor of k^2 - 1.

The programs for A181456, there is no canonical definition to state claims against.
-/

/-! ## A181456.P3480133034165409140

`A009056(eq[31, A076605(n+2)])`
-/

namespace A181456.P3480133034165409140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181456.P3480133034165409140

/-! ## A181456.P3185667236681004904

`A171463(eq[31, A076605(n+2)])`
-/

namespace A181456.P3185667236681004904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181456.P3185667236681004904

/-! ## A181456.P10431888490659513491

`eq[31, A076605(A233583(n+1))]`
-/

namespace A181456.P10431888490659513491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181456.P10431888490659513491

/-! ## A181456.P8572108313178473866

`eq[31, A006530(A082562(n))]`
-/

namespace A181456.P8572108313178473866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A082562 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181456.P8572108313178473866

/-! ## A181456.P4590889142165101170

`eq[31, A006530(A106230(n+1))]`
-/

namespace A181456.P4590889142165101170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A106230 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181456.P4590889142165101170

/-!
# A181457: Numbers k such that 37 is the largest prime factor of k^2 - 1.

The programs for A181457, there is no canonical definition to state claims against.
-/

/-! ## A181457.P16338490532515357824

`eq[37, A076605(round(acot(n)+n))]`
-/

namespace A181457.P16338490532515357824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181457.P16338490532515357824

/-! ## A181457.P14339011333060669113

`A009056(eq[37, A076605(n+2)])`
-/

namespace A181457.P14339011333060669113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181457.P14339011333060669113

/-! ## A181457.P8899527417183984536

`A171463(eq[37, A076605(n+2)])`
-/

namespace A181457.P8899527417183984536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181457.P8899527417183984536

/-! ## A181457.P10240407544684758246

`eq[37, A076605(A233583(n+1))]`
-/

namespace A181457.P10240407544684758246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181457.P10240407544684758246

/-! ## A181457.P6883974104703894817

`eq[37, A006530(A082562(n))]`
-/

namespace A181457.P6883974104703894817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A082562 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181457.P6883974104703894817

/-!
# A181458: Numbers k such that 41 is the largest prime factor of k^2 - 1.

The programs for A181458, there is no canonical definition to state claims against.
-/

/-! ## A181458.P11293462089788883057

`A009056(eq[41, A076605(n+2)])`
-/

namespace A181458.P11293462089788883057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181458.P11293462089788883057

/-! ## A181458.P16709738338339495618

`A171463(eq[41, A076605(n+2)])`
-/

namespace A181458.P16709738338339495618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181458.P16709738338339495618

/-! ## A181458.P3577889378717077389

`eq[41, A076605(A233583(n+1))]`
-/

namespace A181458.P3577889378717077389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181458.P3577889378717077389

/-! ## A181458.P16331794414717583583

`eq[41, A006530(A082562(n))]`
-/

namespace A181458.P16331794414717583583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A082562 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181458.P16331794414717583583

/-! ## A181458.P4181959738574648351

`eq[41, A006530(A106230(n+1))]`
-/

namespace A181458.P4181959738574648351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A106230 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181458.P4181959738574648351

/-!
# A181459: Numbers k such that 43 is the largest prime factor of k^2 - 1.

The programs for A181459, there is no canonical definition to state claims against.
-/

/-! ## A181459.P7795303664270475016

`A009056(eq[43, A076605(n+2)])`
-/

namespace A181459.P7795303664270475016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181459.P7795303664270475016

/-! ## A181459.P8607874840631047503

`A171463(eq[43, A076605(n+2)])`
-/

namespace A181459.P8607874840631047503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181459.P8607874840631047503

/-! ## A181459.P15067681220608307570

`eq[43, A076605(A233583(n+1))]`
-/

namespace A181459.P15067681220608307570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181459.P15067681220608307570

/-! ## A181459.P1772145794816350757

`eq[43, A006530(A082562(n))]`
-/

namespace A181459.P1772145794816350757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A082562 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181459.P1772145794816350757

/-! ## A181459.P1458543400305951245

`eq[43, A006530(A106230(n+1))]`
-/

namespace A181459.P1458543400305951245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A106230 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181459.P1458543400305951245

/-!
# A181460: Numbers k such that 47 is the largest prime factor of k^2-1.

The programs for A181460, there is no canonical definition to state claims against.
-/

/-! ## A181460.P10164418626730659084

`2+eq[47, A076605(n+2)]`
-/

namespace A181460.P10164418626730659084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  47

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181460.P10164418626730659084

/-! ## A181460.P1033540375814351489

`A009056(eq[47, A076605(n+2)])`
-/

namespace A181460.P1033540375814351489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  47

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181460.P1033540375814351489

/-! ## A181460.P2652893079658971007

`A171463(eq[47, A076605(n+2)])`
-/

namespace A181460.P2652893079658971007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  47

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181460.P2652893079658971007

/-! ## A181460.P3719098012554557545

`eq[47, A076605(A233583(n+1))]`
-/

namespace A181460.P3719098012554557545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  47

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181460.P3719098012554557545

/-!
# A181461: Numbers k such that 53 is the largest prime factor of k^2-1.

The programs for A181461, there is no canonical definition to state claims against.
-/

/-! ## A181461.P17510296677286426430

`eq[53, A076605(n+2)]+2`
-/

namespace A181461.P17510296677286426430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A181461.P17510296677286426430

/-! ## A181461.P1604786878216902530

`A009056(eq[53, A076605(n+2)])`
-/

namespace A181461.P1604786878216902530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181461.P1604786878216902530

/-! ## A181461.P4097291419346932784

`A171463(eq[53, A076605(n+2)])`
-/

namespace A181461.P4097291419346932784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181461.P4097291419346932784

/-! ## A181461.P5182936087742900902

`eq[53, A076605(A233583(n+1))]`
-/

namespace A181461.P5182936087742900902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181461.P5182936087742900902

/-!
# A181462: Numbers k such that 59 is the largest prime factor of k^2-1.

The programs for A181462, there is no canonical definition to state claims against.
-/

/-! ## A181462.P17572832605254096045

`eq[59, A076605(n+2)]+2`
-/

namespace A181462.P17572832605254096045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  59

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A181462.P17572832605254096045

/-! ## A181462.P6253547032343248006

`A009056(eq[59, A076605(n+2)])`
-/

namespace A181462.P6253547032343248006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  59

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181462.P6253547032343248006

/-! ## A181462.P9537683934759241604

`A171463(eq[59, A076605(n+2)])`
-/

namespace A181462.P9537683934759241604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  59

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181462.P9537683934759241604

/-! ## A181462.P13703422970656202856

`eq[59, A076605(A233583(n+1))]`
-/

namespace A181462.P13703422970656202856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  59

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181462.P13703422970656202856

/-!
# A181463: Numbers k such that 61 is the largest prime factor of k^2-1.

The programs for A181463, there is no canonical definition to state claims against.
-/

/-! ## A181463.P4334580707555033345

`A009056(eq[61, A076605(n+2)])`
-/

namespace A181463.P4334580707555033345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181463.P4334580707555033345

/-! ## A181463.P7187708979014551951

`A171463(eq[61, A076605(n+2)])`
-/

namespace A181463.P7187708979014551951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181463.P7187708979014551951

/-! ## A181463.P7955368537488581539

`eq[61, A076605(A233583(n+1))]`
-/

namespace A181463.P7955368537488581539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181463.P7955368537488581539

/-!
# A181464: Numbers k such that 67 is the largest prime factor of k^2-1.

The programs for A181464, there is no canonical definition to state claims against.
-/

/-! ## A181464.P4646960022057691564

`eq[67, A076605(round(acot(n)+n))]`
-/

namespace A181464.P4646960022057691564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  67

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181464.P4646960022057691564

/-! ## A181464.P9270360473017695533

`A009056(eq[67, A076605(n+2)])`
-/

namespace A181464.P9270360473017695533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  67

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181464.P9270360473017695533

/-! ## A181464.P490491773121796864

`A171463(eq[67, A076605(n+2)])`
-/

namespace A181464.P490491773121796864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  67

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181464.P490491773121796864

/-! ## A181464.P3232516464138311981

`eq[4, A076605(A233583(n+1))-63]`
-/

namespace A181464.P3232516464138311981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (A233583 (n + 1)).toNat - 63

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181464.P3232516464138311981

/-!
# A181466: Numbers k such that 73 is the largest prime factor of k^2 - 1.

The programs for A181466, there is no canonical definition to state claims against.
-/

/-! ## A181466.P2802127622497987243

`eq[73, A076605(n+2)]+2`
-/

namespace A181466.P2802127622497987243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  73

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A181466.P2802127622497987243

/-! ## A181466.P14916236452190284452

`A009056(eq[73, A076605(n+2)])`
-/

namespace A181466.P14916236452190284452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  73

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181466.P14916236452190284452

/-! ## A181466.P17759319089671596629

`A171463(eq[73, A076605(n+2)])`
-/

namespace A181466.P17759319089671596629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  73

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181466.P17759319089671596629

/-! ## A181466.P8942030166637840159

`eq[73, A076605(A233583(n+1))]`
-/

namespace A181466.P8942030166637840159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  73

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181466.P8942030166637840159

/-!
# A181467: Numbers k such that 79 is the largest prime factor of k^2 - 1.

The programs for A181467, there is no canonical definition to state claims against.
-/

/-! ## A181467.P17156757134113526357

`2+eq[79, A076605(n+2)]`
-/

namespace A181467.P17156757134113526357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  79

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181467.P17156757134113526357

/-! ## A181467.P17338555214661090850

`A009056(eq[79, A076605(n+2)])`
-/

namespace A181467.P17338555214661090850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  79

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181467.P17338555214661090850

/-! ## A181467.P14761343913116310343

`A171463(eq[79, A076605(n+2)])`
-/

namespace A181467.P14761343913116310343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  79

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181467.P14761343913116310343

/-! ## A181467.P12053454173176665878

`eq[79, A076605(A233583(n+1))]`
-/

namespace A181467.P12053454173176665878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  79

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181467.P12053454173176665878

/-!
# A181468: Numbers k such that 83 is the largest prime factor of k^2 - 1.

The programs for A181468, there is no canonical definition to state claims against.
-/

/-! ## A181468.P9419293114514743046

`eq[83, A076605(n+2)]+2`
-/

namespace A181468.P9419293114514743046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  83

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A181468.P9419293114514743046

/-! ## A181468.P7116312301951166835

`A009056(eq[83, A076605(n+2)])`
-/

namespace A181468.P7116312301951166835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  83

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181468.P7116312301951166835

/-! ## A181468.P7996167980822657963

`A171463(eq[83, A076605(n+2)])`
-/

namespace A181468.P7996167980822657963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  83

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181468.P7996167980822657963

/-! ## A181468.P7107927036068465283

`eq[83, A076605(A233583(n+1))]`
-/

namespace A181468.P7107927036068465283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  83

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181468.P7107927036068465283

/-!
# A181470: Numbers n such that 97 is the largest prime factor of n^2 - 1.

The programs for A181470, there is no canonical definition to state claims against.
-/

/-! ## A181470.P3153677774604397193

`eq[97, A076605(round(acot(n)+n))]`
-/

namespace A181470.P3153677774604397193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  97

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181470.P3153677774604397193

/-! ## A181470.P12698304896487291682

`A009056(eq[97, A076605(n+2)])`
-/

namespace A181470.P12698304896487291682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  97

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181470.P12698304896487291682

/-! ## A181470.P5396180247330436938

`A171463(eq[97, A076605(n+2)])`
-/

namespace A181470.P5396180247330436938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  97

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181470.P5396180247330436938

/-!
# A181471: a(n) = number of numbers of the form k^2-1 having n-th prime as largest prime divisor.

The programs for A181471, there is no canonical definition to state claims against.
-/

/-! ## A181471.P10933261635058466776

`A316340(A188573(n))+A026924(3*n+5)`
-/

namespace A181471.P10933261635058466776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316340 (A188573 n).toNat + A026924 (3 * n + 5)

end

end A181471.P10933261635058466776

/-!
# A181472: Riordan array ((1+x)/(1+2*x+2*x^2),x*(1+x)/(1+2*x+2*x^2)).

The programs for A181472, the canonical program `A181472.P461584453384974550` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181472 has offset 0).

The definition of A181472 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181472.P461584453384974550

`T(n-1,k-1)+T(n-2,k-1)-2*T(n-1,k)-2*T(n-2,k)` with `a(0)=1, a(1)=-1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A181472

/-- `T(n-1,k-1)+T(n-2,k-1)-2*T(n-1,k)-2*T(n-2,k)` -/
def P461584453384974550.Spec : Prop :=
  ∀ n, P461584453384974550.a n = A181472 n

theorem P461584453384974550.correct : P461584453384974550.Spec := by
  intro n
  simp only [A181472]

end A181472

/-! ## A181472.P16572876244026943921

`A104562(n)*A206491(A143409(n))`
-/

namespace A181472.P16572876244026943921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104562 n * A206491 (A143409 n).toNat

end

end A181472.P16572876244026943921

namespace A181472

/-- `A104562(n)*A206491(A143409(n))` -/
def P16572876244026943921.Spec : Prop :=
  ∀ n, P16572876244026943921.a n = A181472 n

end A181472

/-! ## A181472.P16418161945759430640

`A202327(n+1)-A185284(A090988(n+1))`
-/

namespace A181472.P16418161945759430640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202327 (n + 1) - A185284 (A090988 (n + 1)).toNat

end

end A181472.P16418161945759430640

namespace A181472

/-- `A202327(n+1)-A185284(A090988(n+1))` -/
def P16418161945759430640.Spec : Prop :=
  ∀ n, P16418161945759430640.a n = A181472 n

end A181472

/-! ## A181472.P18395663221186687554

`A202327(n+1)-A107846(A187829(n+1))`
-/

namespace A181472.P18395663221186687554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202327 (n + 1) - A107846 (A187829 (n + 1)).toNat

end

end A181472.P18395663221186687554

namespace A181472

/-- `A202327(n+1)-A107846(A187829(n+1))` -/
def P18395663221186687554.Spec : Prop :=
  ∀ n, P18395663221186687554.a n = A181472 n

end A181472

/-! ## A181472.P6614447942339361993

`A202327(n+1)-A185284(A066073(n+1))`
-/

namespace A181472.P6614447942339361993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202327 (n + 1) - A185284 (A066073 (n + 1)).toNat

end

end A181472.P6614447942339361993

namespace A181472

/-- `A202327(n+1)-A185284(A066073(n+1))` -/
def P6614447942339361993.Spec : Prop :=
  ∀ n, P6614447942339361993.a n = A181472 n

end A181472

/-!
# A181473: Digital root of EKG sequence.

The programs for A181473, there is no canonical definition to state claims against.
-/

/-! ## A181473.P416531291229835839

`dr(Δ[A065057(n)])`
-/

namespace A181473.P416531291229835839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A181473.P416531291229835839

/-! ## A181473.P1444147448109096129

`dr(A064413(n+1))`
-/

namespace A181473.P1444147448109096129
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A064413 (n + 1))

end

end A181473.P1444147448109096129

/-! ## A181473.P1548809361374045691

`dr(A181548(n+1))`
-/

namespace A181473.P1548809361374045691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A181548 (n + 1))

end

end A181473.P1548809361374045691

/-! ## A181473.P6747723546844385168

`dr(sqrt(A104125(n+1)))`
-/

namespace A181473.P6747723546844385168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway (Real.sqrt (A104125 (n + 1) : ℝ)))

end

end A181473.P6747723546844385168

/-! ## A181473.P16087682553777071878

`dr(n+1+A065519(n+1))`
-/

namespace A181473.P16087682553777071878
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((n + 1 : ℤ) + A065519 (n + 1))

end

end A181473.P16087682553777071878

/-! ## A181473.P2152633335032386805

`dr(∑[A064426(A028310(n))])`
-/

namespace A181473.P2152633335032386805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064426 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181473.P2152633335032386805

/-! ## A181473.P16617745525036882576

`dr(∑[A064426(A000007(n)+n)])`
-/

namespace A181473.P16617745525036882576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064426 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181473.P16617745525036882576

/-! ## A181473.P7602505463925999723

`A010888(sqrt(A104125(n+1)))`
-/

namespace A181473.P7602505463925999723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (SequenceMachineLib.roundAway (Real.sqrt (A104125 (n + 1) : ℝ))).toNat

end

end A181473.P7602505463925999723

/-! ## A181473.P11344816062995975122

`A010888(A064413(n+1)+9)`
-/

namespace A181473.P11344816062995975122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A064413 (n + 1) + 9).toNat

end

end A181473.P11344816062995975122

/-! ## A181473.P13758978227127598576

`dr(A185586(A185413(n+1)))`
-/

namespace A181473.P13758978227127598576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A185586 (A185413 (n + 1)).toNat)

end

end A181473.P13758978227127598576

/-! ## A181473.P11239777000864013195

`dr(root(A104125(n+1), A020639(2*((n+2)²-3))))`
-/

namespace A181473.P11239777000864013195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway ((A104125 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (((n + 2) ^ 2 : ℤ) - 3)).toNat : ℝ))))

end

end A181473.P11239777000864013195

/-!
# A181474: Sequence related to the Hankel transform of A105523(n+5).

The programs for A181474, the canonical program `A181474.P11910840652620331206` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181474 has offset 0).

The definition of A181474 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181474.P8380844005547627875

`∑[A067046(n+1)-A006918(n)]`
-/

namespace A181474.P8380844005547627875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067046 (n + 1) - A006918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181474.P8380844005547627875

namespace A181474

/-- `∑[A067046(n+1)-A006918(n)]` -/
def P8380844005547627875.Spec : Prop :=
  ∀ n, P8380844005547627875.a n = A181474 n

end A181474

/-! ## A181474.P11910840652620331206

`(ceil(n/2)+1)*A000330(A008619(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A181474

/-- `(ceil(n/2)+1)*A000330(A008619(n))` -/
def P11910840652620331206.Spec : Prop :=
  ∀ n, P11910840652620331206.a n = A181474 n

theorem P11910840652620331206.correct : P11910840652620331206.Spec := by
  intro n
  simp only [A181474]

end A181474

/-! ## A181474.P124506914115071505

`A000330(floor(n/2)+1)*A008619(n+1)`
-/

namespace A181474.P124506914115071505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (⌊(n : ℚ) / 2⌋ + 1).toNat * A008619 (n + 1)

end

end A181474.P124506914115071505

namespace A181474

/-- `A000330(floor(n/2)+1)*A008619(n+1)` -/
def P124506914115071505.Spec : Prop :=
  ∀ n, P124506914115071505.a n = A181474 n

end A181474

/-! ## A181474.P14025904384056531332

`A007009(n+1)-A008911(A080513(n))`
-/

namespace A181474.P14025904384056531332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007009 (n + 1) - A008911 (A080513 n).toNat

end

end A181474.P14025904384056531332

namespace A181474

/-- `A007009(n+1)-A008911(A080513(n))` -/
def P14025904384056531332.Spec : Prop :=
  ∀ n, P14025904384056531332.a n = A181474 n

end A181474

/-! ## A181474.P6572774116230130113

`∑[∑[A001057(n+1)]²]*A008619(n+1)`
-/

namespace A181474.P6572774116230130113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A008619 (n + 1)

end

end A181474.P6572774116230130113

namespace A181474

/-- `∑[∑[A001057(n+1)]²]*A008619(n+1)` -/
def P6572774116230130113.Spec : Prop :=
  ∀ n, P6572774116230130113.a n = A181474 n

end A181474

/-! ## A181474.P17619140820783136169

`A002624(record[xor(2, n)])/8`
-/

namespace A181474.P17619140820783136169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002624 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℚ) / 8

end

end A181474.P17619140820783136169

namespace A181474

/-- `A002624(record[xor(2, n)])/8` -/
def P17619140820783136169.Spec : Prop :=
  ∀ n, P17619140820783136169.a n = (A181474 n : ℚ)

end A181474

/-! ## A181474.P2036957808117138245

`A008619(n+1)*A228706(A004525(2*n+1))`
-/

namespace A181474.P2036957808117138245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) * A228706 (A004525 (2 * n + 1)).toNat

end

end A181474.P2036957808117138245

namespace A181474

/-- `A008619(n+1)*A228706(A004525(2*n+1))` -/
def P2036957808117138245.Spec : Prop :=
  ∀ n, P2036957808117138245.a n = A181474 n

end A181474

/-!
# A181475: a(n) = 3*n^4 + 6*n^3 - 3*n + 1.

The programs for A181475, the canonical program `A181475.P11291647170100295222` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181475 has offset 0).

The definition of A181475 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n^4+6*n^3-3*n+1` (program `A181475.P11291647170100295222`, by `A181475.P11291647170100295222.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A181475.P11291647170100295222

`3*n^4+6*n^3-3*n+1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A181475

/-- `3*n^4+6*n^3-3*n+1` -/
def P11291647170100295222.Spec : Prop :=
  ∀ n, P11291647170100295222.a n = A181475 n

theorem P11291647170100295222.correct : P11291647170100295222.Spec := by
  intro n
  simp only [A181475]

end A181475

/-! ## A181475.P16916933733596800116

`∑[lcm(A008458(n), A056220(n))]`
-/

namespace A181475.P16916933733596800116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008458 n) (A056220 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181475.P16916933733596800116

namespace A181475

/-- `∑[lcm(A008458(n), A056220(n))]` -/
def P16916933733596800116.Spec : Prop :=
  ∀ n, (P16916933733596800116.a n : ℤ) = A181475 n

end A181475

/-! ## A181475.P9811859573001459781

`∑[abs(1-A001105(n))*A008458(n)]`
-/

namespace A181475.P9811859573001459781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A001105 n| * A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181475.P9811859573001459781

namespace A181475

/-- `∑[abs(1-A001105(n))*A008458(n)]` -/
def P9811859573001459781.Spec : Prop :=
  ∀ n, P9811859573001459781.a n = A181475 n

end A181475

/-! ## A181475.P2566628049547213749

`∑[A008458(n)*A056220(A028310(n))]`
-/

namespace A181475.P2566628049547213749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n * A056220 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181475.P2566628049547213749

namespace A181475

/-- `∑[A008458(n)*A056220(A028310(n))]` -/
def P2566628049547213749.Spec : Prop :=
  ∀ n, P2566628049547213749.a n = A181475 n

end A181475

/-! ## A181475.P14340695110379701291

`A068626(A211441(n)+1)`
-/

namespace A181475.P14340695110379701291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068626 (A211441 n + 1).toNat

end

end A181475.P14340695110379701291

namespace A181475

/-- `A068626(A211441(n)+1)` -/
def P14340695110379701291.Spec : Prop :=
  ∀ n, P14340695110379701291.a n = A181475 n

end A181475

/-! ## A181475.P5573975167667314377

`or(1, A152746(∑[n]))`
-/

namespace A181475.P5573975167667314377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A152746 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A181475.P5573975167667314377

namespace A181475

/-- `or(1, A152746(∑[n]))` -/
def P5573975167667314377.Spec : Prop :=
  ∀ n, P5573975167667314377.a n = A181475 n

end A181475

/-! ## A181475.P3668037091549204129

`xor(1, A152746(A000217(n)))`
-/

namespace A181475.P3668037091549204129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A152746 (A000217 n).toNat)

end

end A181475.P3668037091549204129

namespace A181475

/-- `xor(1, A152746(A000217(n)))` -/
def P3668037091549204129.Spec : Prop :=
  ∀ n, P3668037091549204129.a n = A181475 n

end A181475

/-! ## A181475.P7699321180234500702

`A298125(∑[2*n]+1)`
-/

namespace A181475.P7699321180234500702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298125 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A181475.P7699321180234500702

namespace A181475

/-- `A298125(∑[2*n]+1)` -/
def P7699321180234500702.Spec : Prop :=
  ∀ n, P7699321180234500702.a n = A181475 n

end A181475

/-! ## A181475.P1253416848848269117

`abs(A242658(∑[2*n])-1)`
-/

namespace A181475.P1253416848848269117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A242658 (∑ j ∈ Finset.range (n + 1), f1 j) - 1|

end

end A181475.P1253416848848269117

namespace A181475

/-- `abs(A242658(∑[2*n])-1)` -/
def P1253416848848269117.Spec : Prop :=
  ∀ n, P1253416848848269117.a n = A181475 n

end A181475

/-! ## A181475.P15191631876366776689

`A003215(A004273(∑[n]))`
-/

namespace A181475.P15191631876366776689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (A004273 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A181475.P15191631876366776689

namespace A181475

/-- `A003215(A004273(∑[n]))` -/
def P15191631876366776689.Spec : Prop :=
  ∀ n, P15191631876366776689.a n = A181475 n

end A181475

/-! ## A181475.P14164218675916421620

`A153286(A103505(n+1))`
-/

namespace A181475.P14164218675916421620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153286 (A103505 (n + 1)).toNat

end

end A181475.P14164218675916421620

namespace A181475

/-- `A153286(A103505(n+1))` -/
def P14164218675916421620.Spec : Prop :=
  ∀ n, P14164218675916421620.a n = A181475 n

end A181475

/-! ## A181475.P1800439720049198922

`A003215(A004277(∑[n])-1)`
-/

namespace A181475.P1800439720049198922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (A004277 (∑ j ∈ Finset.range (n + 1), f1 j) - 1).toNat

end

end A181475.P1800439720049198922

namespace A181475

/-- `A003215(A004277(∑[n])-1)` -/
def P1800439720049198922.Spec : Prop :=
  ∀ n, P1800439720049198922.a n = A181475 n

end A181475

/-! ## A181475.P14006135239774666506

`A003215(A069127(n+1)%Δ[n^3])`
-/

namespace A181475.P14006135239774666506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (Int.tmod (A069127 (n + 1)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A181475.P14006135239774666506

namespace A181475

/-- `A003215(A069127(n+1)%Δ[n^3])` -/
def P14006135239774666506.Spec : Prop :=
  ∀ n, P14006135239774666506.a n = A181475 n

end A181475

/-! ## A181475.P16242192292140309742

`A003215(A033991(n)%A056105(n))`
-/

namespace A181475.P16242192292140309742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (Int.tmod (A033991 n) (A056105 n)).toNat

end

end A181475.P16242192292140309742

namespace A181475

/-- `A003215(A033991(n)%A056105(n))` -/
def P16242192292140309742.Spec : Prop :=
  ∀ n, P16242192292140309742.a n = A181475 n

end A181475

/-!
# A181476: Numbers k such that k^k == 1 (mod sigma(k)).

The programs for A181476, there is no canonical definition to state claims against.
-/

/-! ## A181476.P9034591428318368776

`eq[A325401(n), A325403(A017377(n))]`
-/

namespace A181476.P9034591428318368776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325403 (A017377 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A181476.P9034591428318368776

/-! ## A181476.P5657843595788824109

`A316856(eq[A123158(n), A345000(n)])`
-/

namespace A181476.P5657843595788824109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123158 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316856 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A181476.P5657843595788824109

/-!
# A181477: a(n) has generating function 1/((1-x)^k*(1-x^2)^(k*(k-1)/2)) for k=5.

The programs for A181477, there is no canonical definition to state claims against.
-/

/-! ## A181477.P2147393282422274900

`record[A210391(∑[n+4])]`
-/

namespace A181477.P2147393282422274900
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181477.P2147393282422274900

/-! ## A181477.P3351672124920579695

`A210391(A055999(n+3))`
-/

namespace A181477.P3351672124920579695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A055999 (n + 3)).toNat

end

end A181477.P3351672124920579695

/-! ## A181477.P4490279599893640896

`A210391(Δ[A026054(n+3)])`
-/

namespace A181477.P4490279599893640896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (f1 (n + 1) - f1 n).toNat

end

end A181477.P4490279599893640896

/-! ## A181477.P11582158547337412323

`A210391(A000217(n+6)-6)`
-/

namespace A181477.P11582158547337412323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A000217 (n + 6) - 6).toNat

end

end A181477.P11582158547337412323

/-! ## A181477.P5753755199783773557

`A210391(A167499(n+3)+2*n)`
-/

namespace A181477.P5753755199783773557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A167499 (n + 3) + (2 * n : ℤ)).toNat

end

end A181477.P5753755199783773557

/-!
# A181478: a(n) has generating function 1/((1-x)^k*(1-x^2)^(k*(k-1)/2)) for k=6.

The programs for A181478, there is no canonical definition to state claims against.
-/

/-! ## A181478.P17602405526418474861

`A210391(A000096(n+6)-6)`
-/

namespace A181478.P17602405526418474861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A000096 (n + 6) - 6).toNat

end

end A181478.P17602405526418474861

/-! ## A181478.P4398344356591649496

`A210391(A000217(n+7)-7)`
-/

namespace A181478.P4398344356591649496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A000217 (n + 7) - 7).toNat

end

end A181478.P4398344356591649496

/-! ## A181478.P11363766680364681306

`A210391(Δ[Δ[A055832(n+5)]])`
-/

namespace A181478.P11363766680364681306
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055832 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (f1 (n + 1) - f1 n).toNat

end

end A181478.P11363766680364681306

/-! ## A181478.P10069145116941252794

`record[A210391(∑[A009005(n+1)])]`
-/

namespace A181478.P10069145116941252794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181478.P10069145116941252794

/-! ## A181478.P7210658644823298217

`A210391(Δ[A026054(n+4)]-1)`
-/

namespace A181478.P7210658644823298217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (f1 (n + 1) - f1 n - 1).toNat

end

end A181478.P7210658644823298217

/-! ## A181478.P15737245614978515428

`record[A210391(A052905(n+1)-2)]`
-/

namespace A181478.P15737245614978515428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A052905 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181478.P15737245614978515428

/-! ## A181478.P9244437705827908990

`A210391(A000124(n+6)+n-1)`
-/

namespace A181478.P9244437705827908990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A000124 (n + 6) + ((n : ℤ) - 1)).toNat

end

end A181478.P9244437705827908990

/-! ## A181478.P10875483713684157885

`A210391(A167614(n+4)+A004273(n+2))`
-/

namespace A181478.P10875483713684157885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A167614 (n + 4) + A004273 (n + 2)).toNat

end

end A181478.P10875483713684157885

/-! ## A181478.P1308713487462192721

`A210391(A133263(n+10)-A008486(n+12))`
-/

namespace A181478.P1308713487462192721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A133263 (n + 10) - A008486 (n + 12)).toNat

end

end A181478.P1308713487462192721

/-! ## A181478.P16171976261895249895

`A210391(eq[6, A004736(n+1)-1])`
-/

namespace A181478.P16171976261895249895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181478.P16171976261895249895

/-!
# A181479: a(n) has generating function 1/((1-x)^k*(1-x^2)^(k*(k-1)/2)) for k=7.

The programs for A181479, there is no canonical definition to state claims against.
-/

/-! ## A181479.P12448857305498368162

`A210391(A155212(n+4))`
-/

namespace A181479.P12448857305498368162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A155212 (n + 4)).toNat

end

end A181479.P12448857305498368162

/-! ## A181479.P8256852563055866007

`A210391(A000096(n+7)-7)`
-/

namespace A181479.P8256852563055866007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A000096 (n + 7) - 7).toNat

end

end A181479.P8256852563055866007

/-! ## A181479.P1946259764419605876

`A210391(A000217(n+8)-8)`
-/

namespace A181479.P1946259764419605876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A000217 (n + 8) - 8).toNat

end

end A181479.P1946259764419605876

/-! ## A181479.P11830728085371884756

`A210391(A008585(n+4)+A000124(n+5))`
-/

namespace A181479.P11830728085371884756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A008585 (n + 4) + A000124 (n + 5)).toNat

end

end A181479.P11830728085371884756

/-! ## A181479.P3091474669422083220

`A210391(A034856(n+5)+A004273(n+5))`
-/

namespace A181479.P3091474669422083220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A034856 (n + 5) + A004273 (n + 5)).toNat

end

end A181479.P3091474669422083220

/-!
# A181480: a(n) has generating function 1/((1-x)^k*(1-x^2)^(k*(k-1)/2)) for k=8.

The programs for A181480, there is no canonical definition to state claims against.
-/

/-! ## A181480.P10632679959305615934

`A210391(A055999(n+6)-3)`
-/

namespace A181480.P10632679959305615934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A055999 (n + 6) - 3).toNat

end

end A181480.P10632679959305615934

/-! ## A181480.P3184264636677659255

`A210391(A000096(n+8)-8)`
-/

namespace A181480.P3184264636677659255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A000096 (n + 8) - 8).toNat

end

end A181480.P3184264636677659255

/-! ## A181480.P17913115346870563047

`A210391(A000217(n+9)-9)`
-/

namespace A181480.P17913115346870563047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A000217 (n + 9) - 9).toNat

end

end A181480.P17913115346870563047

/-! ## A181480.P15652199248914120641

`A210391(A167499(n+6)+2*n+3)`
-/

namespace A181480.P15652199248914120641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A167499 (n + 6) + (2 * n + 3 : ℤ)).toNat

end

end A181480.P15652199248914120641

/-! ## A181480.P13593048508029779348

`A210391(A167614(n+6)+A004273(n+3))`
-/

namespace A181480.P13593048508029779348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A167614 (n + 6) + A004273 (n + 3)).toNat

end

end A181480.P13593048508029779348

/-!
# A181482: The sum of the first n integers, with every third integer taken negative.

The programs for A181482, the canonical program `A181482.P9632223293790798266` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181482 has offset 1).

The definition of A181482 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181482.P1624627806516179048

`a(n-1)+(-1)^((n+2)%3)*(n+1)` with `a(0)=1, a(1)=3, a(2)=0`
-/

namespace A181482.P1624627806516179048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 0] fun n a =>
  a (n - 1) + (-1) ^ ((n + 2) % 3) * (n + 1 : ℤ)

end

end A181482.P1624627806516179048

namespace A181482

/-- `a(n-1)+(-1)^((n+2)%3)*(n+1)` -/
def P1624627806516179048.Spec : Prop :=
  ∀ n, P1624627806516179048.a n = A181482 (n + 1)

end A181482

/-! ## A181482.P9632223293790798266

`(n+1)*(n+2)/2-3*floor((n+1)/3)*(floor((n+1)/3)+1)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A181482

/-- `(n+1)*(n+2)/2-3*floor((n+1)/3)*(floor((n+1)/3)+1)` -/
def P9632223293790798266.Spec : Prop :=
  ∀ n, P9632223293790798266.a n = (A181482 (n + 1) : ℚ)

end A181482

/-! ## A181482.P4500875085213660175

`∑[∑[Δ[lcm(3, n)]-2]]`
-/

namespace A181482.P4500875085213660175
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181482.P4500875085213660175

namespace A181482

/-- `∑[∑[Δ[lcm(3, n)]-2]]` -/
def P4500875085213660175.Spec : Prop :=
  ∀ n, P4500875085213660175.a n = A181482 (n + 1)

end A181482

/-! ## A181482.P4350653367099096719

`∑[(n+1)*(2-gcd(3, n+1))]`
-/

namespace A181482.P4350653367099096719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 - (Nat.gcd 3 (n + 1) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181482.P4350653367099096719

namespace A181482

/-- `∑[(n+1)*(2-gcd(3, n+1))]` -/
def P4350653367099096719.Spec : Prop :=
  ∀ n, P4350653367099096719.a n = A181482 (n + 1)

end A181482

/-! ## A181482.P9198332189668545673

`∑[(n+1)*∑[floor(a(n-3))]]` with `a(0)=1, a(1)=0, a(2)=-2, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A181482.P9198332189668545673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -2, 2] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181482.P9198332189668545673

namespace A181482

/-- `∑[(n+1)*∑[floor(a(n-3))]]` -/
def P9198332189668545673.Spec : Prop :=
  ∀ n, P9198332189668545673.a n = A181482 (n + 1)

end A181482

/-! ## A181482.P14458911712771591411

`∑[(n+1)/∑[floor(a(n-3))]]` with `a(0)=1, a(1)=0, a(2)=-2, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A181482.P14458911712771591411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -2, 2] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181482.P14458911712771591411

namespace A181482

/-- `∑[(n+1)/∑[floor(a(n-3))]]` -/
def P14458911712771591411.Spec : Prop :=
  ∀ n, P14458911712771591411.a n = (A181482 (n + 1) : ℚ)

end A181482

/-! ## A181482.P17236192548510131879

`∑[(n+1)*A131561(n)]`
-/

namespace A181482.P17236192548510131879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A131561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181482.P17236192548510131879

namespace A181482

/-- `∑[(n+1)*A131561(n)]` -/
def P17236192548510131879.Spec : Prop :=
  ∀ n, P17236192548510131879.a n = A181482 (n + 1)

end A181482

/-! ## A181482.P7826470393490833103

`∑[round(xor(2*n, A061347(n+1))/2)]`
-/

namespace A181482.P7826470393490833103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.xor (2 * n : ℤ) (A061347 (n + 1)) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181482.P7826470393490833103

namespace A181482

/-- `∑[round(xor(2*n, A061347(n+1))/2)]` -/
def P7826470393490833103.Spec : Prop :=
  ∀ n, P7826470393490833103.a n = A181482 (n + 1)

end A181482

/-! ## A181482.P12612355629745313901

`∑[∑[Δ[A109044(n)]-2]]`
-/

namespace A181482.P12612355629745313901
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181482.P12612355629745313901

namespace A181482

/-- `∑[∑[Δ[A109044(n)]-2]]` -/
def P12612355629745313901.Spec : Prop :=
  ∀ n, P12612355629745313901.a n = A181482 (n + 1)

end A181482

/-! ## A181482.P4011270075840123238

`∑[(n+1)*Δ[Δ[A058212(n)]]]`
-/

namespace A181482.P4011270075840123238
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058212 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181482.P4011270075840123238

namespace A181482

/-- `∑[(n+1)*Δ[Δ[A058212(n)]]]` -/
def P4011270075840123238.Spec : Prop :=
  ∀ n, P4011270075840123238.a n = A181482 (n + 1)

end A181482

/-! ## A181482.P11054994530722941147

`∑[Δ[A008611(n+1)]*(n+1)]`
-/

namespace A181482.P11054994530722941147
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181482.P11054994530722941147

namespace A181482

/-- `∑[Δ[A008611(n+1)]*(n+1)]` -/
def P11054994530722941147.Spec : Prop :=
  ∀ n, P11054994530722941147.a n = A181482 (n + 1)

end A181482

/-! ## A181482.P1470991326536186551

`∑[(n+1)*A008683(Δ[A047354(n+1)])]`
-/

namespace A181482.P1470991326536186551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047354 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008683 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181482.P1470991326536186551

namespace A181482

/-- `∑[(n+1)*A008683(Δ[A047354(n+1)])]` -/
def P1470991326536186551.Spec : Prop :=
  ∀ n, P1470991326536186551.a n = A181482 (n + 1)

end A181482

/-! ## A181482.P14389141209474309974

`∑[(n+1)*A257075(n+2)]`
-/

namespace A181482.P14389141209474309974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A257075 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181482.P14389141209474309974

namespace A181482

/-- `∑[(n+1)*A257075(n+2)]` -/
def P14389141209474309974.Spec : Prop :=
  ∀ n, P14389141209474309974.a n = A181482 (n + 1)

end A181482

/-! ## A181482.P10857024915537752127

`∑[(n+1)/A131561(n+3)]`
-/

namespace A181482.P10857024915537752127
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A131561 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181482.P10857024915537752127

namespace A181482

/-- `∑[(n+1)/A131561(n+3)]` -/
def P10857024915537752127.Spec : Prop :=
  ∀ n, P10857024915537752127.a n = (A181482 (n + 1) : ℚ)

end A181482

/-! ## A181482.P17265521980807384337

`∑[A001057(∑[n%3+1])]`
-/

namespace A181482.P17265521980807384337
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181482.P17265521980807384337

namespace A181482

/-- `∑[A001057(∑[n%3+1])]` -/
def P17265521980807384337.Spec : Prop :=
  ∀ n, P17265521980807384337.a n = A181482 (n + 1)

end A181482

/-! ## A181482.P10375587659020737259

`∑[(n+1)*A130151(2*n)]`
-/

namespace A181482.P10375587659020737259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A130151 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181482.P10375587659020737259

namespace A181482

/-- `∑[(n+1)*A130151(2*n)]` -/
def P10375587659020737259.Spec : Prop :=
  ∀ n, P10375587659020737259.a n = A181482 (n + 1)

end A181482

/-! ## A181482.P2561612320239589526

`∑[(n+1)*A131734(2*n+1)]`
-/

namespace A181482.P2561612320239589526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A131734 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181482.P2561612320239589526

namespace A181482

/-- `∑[(n+1)*A131734(2*n+1)]` -/
def P2561612320239589526.Spec : Prop :=
  ∀ n, P2561612320239589526.a n = A181482 (n + 1)

end A181482

/-! ## A181482.P10263331863201530126

`∑[(n+1)*A278718(2*n+1)]`
-/

namespace A181482.P10263331863201530126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A278718 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181482.P10263331863201530126

namespace A181482

/-- `∑[(n+1)*A278718(2*n+1)]` -/
def P10263331863201530126.Spec : Prop :=
  ∀ n, P10263331863201530126.a n = A181482 (n + 1)

end A181482

/-!
# A181485: Indices of records in A171919 = number of solutions to n=x*y*z, x+y=z+1.

The programs for A181485, there is no canonical definition to state claims against.
-/

/-! ## A181485.P9998365859338059552

`A000010(A042567(n)*A154529(n))`
-/

namespace A181485.P9998365859338059552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A042567 n * A154529 n).toNat

end

end A181485.P9998365859338059552

/-!
# A181486: Record values in A171919 = number of solutions to n=x*y*z, x+y=z+1.

The programs for A181486, there is no canonical definition to state claims against.
-/

/-! ## A181486.P5505267520151222702

`record[gcd(n, C(2, n))+n-A346607(2*n+3)]`
-/

namespace A181486.P5505267520151222702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (Nat.choose 2 n) + n : ℤ) - A346607 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181486.P5505267520151222702

/-! ## A181486.P2365583347234199437

`A089422(record[A096894(n+1)])`
-/

namespace A181486.P2365583347234199437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089422 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A181486.P2365583347234199437

/-! ## A181486.P368543567042887695

`A316571(record[A096894(n+1)])`
-/

namespace A181486.P368543567042887695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316571 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A181486.P368543567042887695

/-! ## A181486.P1813437649489978856

`A089422(eq[1, A092523(n+1)])`
-/

namespace A181486.P1813437649489978856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089422 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181486.P1813437649489978856

/-! ## A181486.P12061893454490101253

`∪[A085681(n+1), A308546(n)]`
-/

namespace A181486.P12061893454490101253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308546 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A181486.P12061893454490101253

/-!
# A181487: Numbers k such that Sum_{d|k, d<k, d not occurring before} d > k.

The programs for A181487, there is no canonical definition to state claims against.
-/

/-! ## A181487.P8644371603318885947

`∩[A298748(n+1), A381546(n+1)]`
-/

namespace A181487.P8644371603318885947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181487.P8644371603318885947

/-! ## A181487.P10502007114083417933

`∩[A105642(n+1), A381546(n+1)]`
-/

namespace A181487.P10502007114083417933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181487.P10502007114083417933

/-! ## A181487.P5285023726671091878

`∩[A319827(n+1), A381546(n+1)]`
-/

namespace A181487.P5285023726671091878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181487.P5285023726671091878

/-! ## A181487.P12480154088395035132

`∩[A174896(n+1), A381546(n+1)]`
-/

namespace A181487.P12480154088395035132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181487.P12480154088395035132

/-! ## A181487.P12450847151500269342

`∩[A372119(n+1), A381546(n+1)]`
-/

namespace A181487.P12450847151500269342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181487.P12450847151500269342

/-!
# A181488: Composite Flavius' numbers (A000960) whose divisors are again Flavius' numbers.

The programs for A181488, there is no canonical definition to state claims against.
-/

/-! ## A181488.P14298095437877335707

`filter[A181489(n+1), A064911(#)]`
-/

namespace A181488.P14298095437877335707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181489 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A181488.P14298095437877335707

/-! ## A181488.P6753765342273996888

`filter[A181489(n+1), A101040(#)]`
-/

namespace A181488.P6753765342273996888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181489 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A181488.P6753765342273996888

/-! ## A181488.P12022745887367443424

`filter[A181489(n+1), A353480(#)]`
-/

namespace A181488.P12022745887367443424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181489 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A181488.P12022745887367443424

/-! ## A181488.P3563493651280856322

`filter[A181489(n+1), A359828(#)]`
-/

namespace A181488.P3563493651280856322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181489 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A181488.P3563493651280856322

/-!
# A181489: Composite Flavius' numbers (A000960) whose prime factors are again Flavius' numbers.

The programs for A181489, there is no canonical definition to state claims against.
-/

/-! ## A181489.P12213810232654383964

`filter[A100819(n+1), A278169(#)]`
-/

namespace A181489.P12213810232654383964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A278169 (f1 j).toNat = 1) n)

end

end A181489.P12213810232654383964

/-! ## A181489.P6524987412465955077

`filter[A266000(n+1), A278169(#)]`
-/

namespace A181489.P6524987412465955077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A278169 (f1 j).toNat = 1) n)

end

end A181489.P6524987412465955077

/-! ## A181489.P16276368844335782520

`filter[A316438(n+1), A278169(#)]`
-/

namespace A181489.P16276368844335782520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A278169 (f1 j).toNat = 1) n)

end

end A181489.P16276368844335782520

/-!
# A181494: Twin primes (A001097) of the form 3*2^k +- 1.

The programs for A181494, there is no canonical definition to state claims against.
-/

/-! ## A181494.P14009854785539604715

`∩[A097581(n+1), A239711(n+1)]`
-/

namespace A181494.P14009854785539604715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181494.P14009854785539604715

/-! ## A181494.P17995185311249204891

`p?[∑[A020639(7*(n-a(n-1))²+4)]]` with `a(0)=4, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A181494.P17995185311249204891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 1, 2, 4] fun n f2 =>
  A020639 (7 * ((n : ℤ) - f2 (n - 1)) ^ 2 + 4).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181494.P17995185311249204891

/-!
# A181496: Number of degree n polynomials p(x,y) with all coefficients 0 or 1 such that x+y=1 implies p(x,y)=1.

The programs for A181496, there is no canonical definition to state claims against.
-/

/-! ## A181496.P5233738281760384936

`A004277(A000108(n))-A159769(n+1)`
-/

namespace A181496.P5233738281760384936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A000108 n).toNat - A159769 (n + 1)

end

end A181496.P5233738281760384936

/-! ## A181496.P16124656582923179675

`A272461(n+1)-A346632(A030436(n))`
-/

namespace A181496.P16124656582923179675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272461 (n + 1) - A346632 (A030436 n).toNat

end

end A181496.P16124656582923179675

/-! ## A181496.P10675960621700349897

`A272461(n+1)-A350139(A079969(n))`
-/

namespace A181496.P10675960621700349897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272461 (n + 1) - A350139 (A079969 n).toNat

end

end A181496.P10675960621700349897

/-! ## A181496.P4831481769711364760

`A276989(n+1)-A350139(A079969(n))`
-/

namespace A181496.P4831481769711364760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276989 (n + 1) - A350139 (A079969 n).toNat

end

end A181496.P4831481769711364760

/-!
# A181497: a(n) is the smallest m such that A056753(m) = 2*n + 1.

The programs for A181497, the canonical program `A181497.P11616080725035805315` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181497 has offset 0).

The definition of A181497 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181497.P11616080725035805315

`∑[2*a(∑[n%2])]` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A181497

/-- `∑[2*a(∑[n%2])]` -/
def P11616080725035805315.Spec : Prop :=
  ∀ n, (P11616080725035805315.a n : ℤ) = A181497 n

theorem P11616080725035805315.correct : P11616080725035805315.Spec := by
  intro n
  simp only [A181497]

end A181497

/-! ## A181497.P6396958744832458224

`∑[2*a(floor((n+1)/2))]` with `a(0)=0, a(1)=1`
-/

namespace A181497.P6396958744832458224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  2 * f1 ⌊(n + 1 : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181497.P6396958744832458224

namespace A181497

/-- `∑[2*a(floor((n+1)/2))]` -/
def P6396958744832458224.Spec : Prop :=
  ∀ n, (P6396958744832458224.a n : ℤ) = A181497 n

end A181497

/-! ## A181497.P8955808704439453267

`∑[or(n-1, a(n-1))]+n` with `a(0)=0`
-/

namespace A181497.P8955808704439453267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.lor ((n : ℤ) - 1) (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A181497.P8955808704439453267

namespace A181497

/-- `∑[or(n-1, a(n-1))]+n` -/
def P8955808704439453267.Spec : Prop :=
  ∀ n, P8955808704439453267.a n = A181497 n

end A181497

/-! ## A181497.P9879975038720477498

`∑[floor(2*a(∑[a(n-2)²]))]` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A181497.P9879975038720477498
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 2) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  2 * f1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181497.P9879975038720477498

namespace A181497

/-- `∑[floor(2*a(∑[a(n-2)²]))]` -/
def P9879975038720477498.Spec : Prop :=
  ∀ n, (P9879975038720477498.a n : ℤ) = A181497 n

end A181497

/-! ## A181497.P10898213718536884487

`∑[floor(2*a(∑[floor(a(n-2))]))]` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A181497.P10898213718536884487
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  2 * f1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181497.P10898213718536884487

namespace A181497

/-- `∑[floor(2*a(∑[floor(a(n-2))]))]` -/
def P10898213718536884487.Spec : Prop :=
  ∀ n, (P10898213718536884487.a n : ℤ) = A181497 n

end A181497

/-! ## A181497.P14268509334855491513

`∑[record[A038572(n)]]-C(n, 2)`
-/

namespace A181497.P14268509334855491513
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.choose n 2 : ℤ)

end

end A181497.P14268509334855491513

namespace A181497

/-- `∑[record[A038572(n)]]-C(n, 2)` -/
def P14268509334855491513.Spec : Prop :=
  ∀ n, P14268509334855491513.a n = A181497 n

end A181497

/-! ## A181497.P13237843242376892502

`∑[A004760(n+1)-n]+n`
-/

namespace A181497.P13237843242376892502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A181497.P13237843242376892502

namespace A181497

/-- `∑[A004760(n+1)-n]+n` -/
def P13237843242376892502.Spec : Prop :=
  ∀ n, P13237843242376892502.a n = A181497 n

end A181497

/-! ## A181497.P12182630069814614288

`∑[A062383(n)]-A062383(n)`
-/

namespace A181497.P12182630069814614288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A062383 n

end

end A181497.P12182630069814614288

namespace A181497

/-- `∑[A062383(n)]-A062383(n)` -/
def P12182630069814614288.Spec : Prop :=
  ∀ n, P12182630069814614288.a n = A181497 n

end A181497

/-! ## A181497.P3310998674985440422

`n²+A006257(n)-A256249(n)`
-/

namespace A181497.P3310998674985440422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A006257 n - A256249 n)

end

end A181497.P3310998674985440422

namespace A181497

/-- `n²+A006257(n)-A256249(n)` -/
def P3310998674985440422.Spec : Prop :=
  ∀ n, P3310998674985440422.a n = A181497 n

end A181497

/-! ## A181497.P14727080961989704326

`∑[A003817(n)]+n-A003817(n)`
-/

namespace A181497.P14727080961989704326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - A003817 n)

end

end A181497.P14727080961989704326

namespace A181497

/-- `∑[A003817(n)]+n-A003817(n)` -/
def P14727080961989704326.Spec : Prop :=
  ∀ n, P14727080961989704326.a n = A181497 n

end A181497

/-! ## A181497.P8452983792734794744

`∑[A053644(A004761(n+1))]`
-/

namespace A181497.P8452983792734794744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A004761 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181497.P8452983792734794744

namespace A181497

/-- `∑[A053644(A004761(n+1))]` -/
def P8452983792734794744.Spec : Prop :=
  ∀ n, P8452983792734794744.a n = A181497 n

end A181497

/-! ## A181497.P9656242181875763514

`∑[A053644(A005187(n))]`
-/

namespace A181497.P9656242181875763514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A005187 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181497.P9656242181875763514

namespace A181497

/-- `∑[A053644(A005187(n))]` -/
def P9656242181875763514.Spec : Prop :=
  ∀ n, P9656242181875763514.a n = A181497 n

end A181497

/-! ## A181497.P6248508679147441588

`∑[a(n-1)*A014963(2*(n-1))]` with `a(0)=0, a(1)=1`
-/

namespace A181497.P6248508679147441588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) * A014963 (2 * ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181497.P6248508679147441588

namespace A181497

/-- `∑[a(n-1)*A014963(2*(n-1))]` -/
def P6248508679147441588.Spec : Prop :=
  ∀ n, P6248508679147441588.a n = A181497 n

end A181497

/-! ## A181497.P4298463048186304853

`∑[A053644(record[A006257(n)])]`
-/

namespace A181497.P4298463048186304853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181497.P4298463048186304853

namespace A181497

/-- `∑[A053644(record[A006257(n)])]` -/
def P4298463048186304853.Spec : Prop :=
  ∀ n, P4298463048186304853.a n = A181497 n

end A181497

/-! ## A181497.P12851427616143110903

`∑[A082908(2*n)]-A082908(2*n)`
-/

namespace A181497.P12851427616143110903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082908 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A082908 (2 * n)

end

end A181497.P12851427616143110903

namespace A181497

/-- `∑[A082908(2*n)]-A082908(2*n)` -/
def P12851427616143110903.Spec : Prop :=
  ∀ n, P12851427616143110903.a n = A181497 n

end A181497

/-! ## A181497.P8319514229846162234

`∑[A003188(A003817(A011371(2*n)))]`
-/

namespace A181497.P8319514229846162234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A003817 (A011371 (2 * n)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181497.P8319514229846162234

namespace A181497

/-- `∑[A003188(A003817(A011371(2*n)))]` -/
def P8319514229846162234.Spec : Prop :=
  ∀ n, P8319514229846162234.a n = A181497 n

end A181497

/-! ## A181497.P16711497613559825652

`∑[A004761(2*n+1)]-n²`
-/

namespace A181497.P16711497613559825652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004761 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A181497.P16711497613559825652

namespace A181497

/-- `∑[A004761(2*n+1)]-n²` -/
def P16711497613559825652.Spec : Prop :=
  ∀ n, P16711497613559825652.a n = A181497 n

end A181497

/-! ## A181497.P1993393416842740266

`∑[A053644(2*n+1)]-A053644(2*n+1)`
-/

namespace A181497.P1993393416842740266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A053644 (2 * n + 1)

end

end A181497.P1993393416842740266

namespace A181497

/-- `∑[A053644(2*n+1)]-A053644(2*n+1)` -/
def P1993393416842740266.Spec : Prop :=
  ∀ n, P1993393416842740266.a n = A181497 n

end A181497

/-! ## A181497.P16813468810187677740

`∑[A053644(lt[xor(n, 2*n), 2*(n+1)])]`
-/

namespace A181497.P16813468810187677740
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (SequenceMachineLib.nth (fun j => f2 j < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181497.P16813468810187677740

namespace A181497

/-- `∑[A053644(lt[xor(n, 2*n), 2*(n+1)])]` -/
def P16813468810187677740.Spec : Prop :=
  ∀ n, P16813468810187677740.a n = A181497 n

end A181497

/-! ## A181497.P13162127146301441382

`∑[A053644(A004760(n+1))]`
-/

namespace A181497.P13162127146301441382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A004760 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181497.P13162127146301441382

namespace A181497

/-- `∑[A053644(A004760(n+1))]` -/
def P13162127146301441382.Spec : Prop :=
  ∀ n, P13162127146301441382.a n = A181497 n

end A181497

