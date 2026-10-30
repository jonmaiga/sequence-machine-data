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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
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
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C047
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
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
import Seq.B004.C003
import Seq.B004.C004
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
# A334900: Numbers k such that k and k+2 are both bi-unitary practical numbers (A334898).

The programs for A334900, there is no canonical definition to state claims against.
-/

/-! ## A334900.P16350787492066995378

`∩[A334898(n+1)-2, A334898(n+1)]`
-/

namespace A334900.P16350787492066995378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334898 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334900.P16350787492066995378

/-! ## A334900.P2288747895131897898

`A334898(eq[2, A334898(n+2)-A334898(n+1)]+1)`
-/

namespace A334900.P2288747895131897898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334898 (n + 2) - A334898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A334900.P2288747895131897898

/-! ## A334900.P8288936888324814811

`A334898(eq[2, A334898(n+2)%A334898(n+1)]+1)`
-/

namespace A334900.P8288936888324814811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334898 (n + 2)) (A334898 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A334900.P8288936888324814811

/-! ## A334900.P2423094989610384150

`∩[A334898(n+1), A023444(A334898(n+1))]`
-/

namespace A334900.P2423094989610384150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A334898 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334900.P2423094989610384150

/-!
# A334901: Infinitary practical numbers: numbers m such that every number 1 <= k <= isigma(m) is a sum of distinct infinitary divisors of m, where isigma is A049417.

The programs for A334901, there is no canonical definition to state claims against.
-/

/-! ## A334901.P2950620040298489581

`lt[A307284(n), A049417(n+1)]+1`
-/

namespace A334901.P2950620040298489581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307284 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A334901.P2950620040298489581

/-!
# A334902: Infinitary practical numbers (A334901) whose number of divisors is not a power of 2.

The programs for A334902, there is no canonical definition to state claims against.
-/

/-! ## A334902.P12809118562393773589

`∩[A334901(n+1), A335198(n+1)]`
-/

namespace A334902.P12809118562393773589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334902.P12809118562393773589

/-! ## A334902.P8264769293921395734

`∩[A334901(n+1), A335935(n+1)]`
-/

namespace A334902.P8264769293921395734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334902.P8264769293921395734

/-! ## A334902.P8444354615964550383

`∩[A162643(n+1), A334901(n+1)]`
-/

namespace A334902.P8444354615964550383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334902.P8444354615964550383

/-!
# A334903: Numbers k such that k and k+2 are both infinitary practical numbers (A334901).

The programs for A334903, there is no canonical definition to state claims against.
-/

/-! ## A334903.P14828698925280769656

`∩[A334901(n+1)-2, A334901(n+1)]`
-/

namespace A334903.P14828698925280769656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334901 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334903.P14828698925280769656

/-! ## A334903.P9308507805708101792

`∩[A334901(n+1), A023444(A334901(n+1))]`
-/

namespace A334903.P9308507805708101792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A334901 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334903.P9308507805708101792

/-!
# A334904: a(n) is the least integer b such that the fractions (b^0)/p, (b^1)/p, ..., (b^(r-1))/p where p is the n-th prime, produce the A006556(n) distinct cycles.

The programs for A334904, there is no canonical definition to state claims against.
-/

/-! ## A334904.P12245658787978507133

`A249739(A053760(n+1)^A060370(n+1))`
-/

namespace A334904.P12245658787978507133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249739 (SequenceMachineLib.roundAway ((A053760 (n + 1) : ℚ) ^ (A060370 (n + 1) : ℤ))).toNat

end

end A334904.P12245658787978507133

/-! ## A334904.P10902413475721428107

`A193348(A089623(A273712(n)+A272943(n)))`
-/

namespace A334904.P10902413475721428107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193348 (A089623 (A273712 n + A272943 n).toNat).toNat

end

end A334904.P10902413475721428107

/-! ## A334904.P4337452995082359430

`A207324(A181803(4*n+n+2))`
-/

namespace A334904.P4337452995082359430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207324 (A181803 (4 * n + (n + 2))).toNat

end

end A334904.P4337452995082359430

/-! ## A334904.P10512229390200243776

`A054868(A324702(2*(n+1))+A001405(n))`
-/

namespace A334904.P10512229390200243776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054868 (A324702 (2 * (n + 1)) + A001405 n).toNat

end

end A334904.P10512229390200243776

/-! ## A334904.P16094443449853109172

`A353849(A258237(3*n+5)+A000035(n))`
-/

namespace A334904.P16094443449853109172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353849 (A258237 (3 * n + 5) + A000035 n).toNat

end

end A334904.P16094443449853109172

/-!
# A334906: Numbers k such that binomial(prime(k+2), prime(k+1)) and binomial(prime(k+1), prime(k)) are coprime.

The programs for A334906, the canonical program `A334906.P3282194429805016584` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334906 has offset 1).

The definition of A334906 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1290 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334906.P3282194429805016584

`eq[1, A058078(n+1)]+1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A334906

/-- `eq[1, A058078(n+1)]+1` -/
def P3282194429805016584.Spec : Prop :=
  ∀ n, (P3282194429805016584.a n : ℤ) = A334906 (n + 1)

theorem P3282194429805016584.correct : P3282194429805016584.Spec := by
  intro n
  simp only [A334906, Nat.add_sub_cancel]

end A334906

/-! ## A334906.P4140383018282425019

`A000720(A058079(n+1))-2`
-/

namespace A334906.P4140383018282425019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A058079 (n + 1)).toNat - 2

end

end A334906.P4140383018282425019

namespace A334906

/-- `A000720(A058079(n+1))-2` -/
def P4140383018282425019.Spec : Prop :=
  ∀ n, P4140383018282425019.a n = A334906 (n + 1)

end A334906

/-! ## A334906.P1646307485071764212

`A084360(A058079(1+n))`
-/

namespace A334906.P1646307485071764212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084360 (A058079 (1 + n)).toNat

end

end A334906.P1646307485071764212

namespace A334906

/-- `A084360(A058079(1+n))` -/
def P1646307485071764212.Spec : Prop :=
  ∀ n, P1646307485071764212.a n = A334906 (n + 1)

end A334906

/-! ## A334906.P9819642182536516924

`A082513(A058079(n+1))`
-/

namespace A334906.P9819642182536516924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082513 (A058079 (n + 1)).toNat

end

end A334906.P9819642182536516924

namespace A334906

/-- `A082513(A058079(n+1))` -/
def P9819642182536516924.Spec : Prop :=
  ∀ n, P9819642182536516924.a n = A334906 (n + 1)

end A334906

/-! ## A334906.P2165888316896924970

`A033270(A058079(n+1)-1)`
-/

namespace A334906.P2165888316896924970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A058079 (n + 1) - 1).toNat

end

end A334906.P2165888316896924970

namespace A334906

/-- `A033270(A058079(n+1)-1)` -/
def P2165888316896924970.Spec : Prop :=
  ∀ n, P2165888316896924970.a n = A334906 (n + 1)

end A334906

/-! ## A334906.P5286898497704691623

`A062602(A058079(n+1)+2)`
-/

namespace A334906.P5286898497704691623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (A058079 (n + 1) + 2).toNat

end

end A334906.P5286898497704691623

namespace A334906

/-- `A062602(A058079(n+1)+2)` -/
def P5286898497704691623.Spec : Prop :=
  ∀ n, P5286898497704691623.a n = A334906 (n + 1)

end A334906

/-! ## A334906.P10701735259812335150

`A033270(xor(1, A058079(n+1)))`
-/

namespace A334906.P10701735259812335150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (Int.xor 1 (A058079 (n + 1))).toNat

end

end A334906.P10701735259812335150

namespace A334906

/-- `A033270(xor(1, A058079(n+1)))` -/
def P10701735259812335150.Spec : Prop :=
  ∀ n, P10701735259812335150.a n = A334906 (n + 1)

end A334906

/-! ## A334906.P6879706266704241552

`A286470(2*A058079(n+1))-1`
-/

namespace A334906.P6879706266704241552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286470 (2 * A058079 (n + 1)).toNat - 1

end

end A334906.P6879706266704241552

namespace A334906

/-- `A286470(2*A058079(n+1))-1` -/
def P6879706266704241552.Spec : Prop :=
  ∀ n, P6879706266704241552.a n = A334906 (n + 1)

end A334906

/-!
# A334907: Comtet's expansion of the e.g.f. (sqrt(1 + sqrt(8*s)) - sqrt(1 - sqrt(8*s)))/ sqrt(8*s * (1 - 8*s)).

The programs for A334907, the canonical program `A334907.P12812039533966240543` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334907 has offset 0).

The definition of A334907 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A334907.P3935858462677635167

`n!*∑{#}[n, 2^(n-2*#)*C(2*n+1, 2*#)*C(2*#, #)]`
-/

namespace A334907.P3935858462677635167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), (2 : ℚ) ^ ((n : ℤ) - (2 * k : ℤ) : ℤ) * (Nat.choose (2 * n + 1) (2 * k) : ℚ) * (Nat.choose (2 * k) k : ℚ))

end

end A334907.P3935858462677635167

namespace A334907

/-- `n!*∑{#}[n, 2^(n-2*#)*C(2*n+1, 2*#)*C(2*#, #)]` -/
def P3935858462677635167.Spec : Prop :=
  ∀ n, P3935858462677635167.a n = (A334907 n : ℚ)

end A334907

/-! ## A334907.P10739873205624858951

`2^n*n!*∑{#}[n, A223549(C(n+1, 2)+#)/A223550(C(n+1, 2)+#)]`
-/

namespace A334907.P10739873205624858951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n * Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), (A223549 (Nat.choose (n + 1) 2 + k) : ℚ) / (A223550 (Nat.choose (n + 1) 2 + k) : ℚ))

end

end A334907.P10739873205624858951

namespace A334907

/-- `2^n*n!*∑{#}[n, A223549(C(n+1, 2)+#)/A223550(C(n+1, 2)+#)]` -/
def P10739873205624858951.Spec : Prop :=
  ∀ n, P10739873205624858951.a n = (A334907 n : ℚ)

end A334907

/-! ## A334907.P515475412308039395

`n!*A063079(n+1)/A060818(n)`
-/

namespace A334907.P515475412308039395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℤ) * A063079 (n + 1) : ℚ) / (A060818 n : ℚ)

end

end A334907.P515475412308039395

namespace A334907

/-- `n!*A063079(n+1)/A060818(n)` -/
def P515475412308039395.Spec : Prop :=
  ∀ n, P515475412308039395.a n = (A334907 n : ℚ)

end A334907

/-! ## A334907.P12812039533966240543

`n!*A001790(2*n+1)/A060818(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A334907

/-- `n!*A001790(2*n+1)/A060818(n)` -/
def P12812039533966240543.Spec : Prop :=
  ∀ n, P12812039533966240543.a n = (A334907 n : ℚ)

end A334907

/-! ## A334907.P13824529602817685758

`C(4*n+2, 2*n+1)*n!/2^(n+1)`
-/

namespace A334907.P13824529602817685758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * n + 2) (2 * n + 1) * Nat.factorial n : ℚ) / (2 ^ (n + 1) : ℚ)

end

end A334907.P13824529602817685758

namespace A334907

/-- `C(4*n+2, 2*n+1)*n!/2^(n+1)` -/
def P13824529602817685758.Spec : Prop :=
  ∀ n, P13824529602817685758.a n = (A334907 n : ℚ)

end A334907

/-!
# A334908: Area/6 of primitive Pythagorean triangles generated by {{2, 0}, {1, -1}}^n * {{2}, {1}}, for n >= 0.

The programs for A334908, there is no canonical definition to state claims against.
-/

/-! ## A334908.P12110719378119765660

`A015266(n+3)*A122803(n)`
-/

namespace A334908.P12110719378119765660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015266 (n + 3) * A122803 n

end

end A334908.P12110719378119765660

/-! ## A334908.P16007414203725542154

`∑[A015249(n+2)*A083424(n)]`
-/

namespace A334908.P16007414203725542154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015249 (n + 2) * A083424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334908.P16007414203725542154

/-! ## A334908.P2995818067512623103

`Δ[A084247(n)]*A015266(n+3)`
-/

namespace A334908.P2995818067512623103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A015266 (n + 3)

end

end A334908.P2995818067512623103

/-! ## A334908.P18268775412292641862

`lcm(∑[A011782(n)], A015266(n+3))`
-/

namespace A334908.P18268775412292641862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A015266 (n + 3))

end

end A334908.P18268775412292641862

/-! ## A334908.P17418535193413834724

`abs(Δ[A151575(n)]*A015266(n+3))`
-/

namespace A334908.P17418535193413834724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A015266 (n + 3)|

end

end A334908.P17418535193413834724

/-! ## A334908.P2808968510300168452

`lcm(A015266(n+3)/A033999(n), A122803(n))`
-/

namespace A334908.P2808968510300168452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A015266 (n + 3) : ℚ) / (A033999 n : ℚ))) (A122803 n)

end

end A334908.P2808968510300168452

/-! ## A334908.P5314560407227552595

`∑[A015249(n+2)*A122803(n)]*A122803(n)`
-/

namespace A334908.P5314560407227552595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015249 (n + 2) * A122803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A122803 n

end

end A334908.P5314560407227552595

/-!
# A334909: Area/6 of primitive Pythagorean triangles given in A334638 as triples.

The programs for A334909, the canonical program `A334909.P15284204172457429698` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334909 has offset 0).

The definition of A334909 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A334909.P15284204172457429698

`2^(n-1)*(3*2^n-1)*(2^(n+1)-1)*(2^(n+2)-1)/3`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A334909

/-- `2^(n-1)*(3*2^n-1)*(2^(n+1)-1)*(2^(n+2)-1)/3` -/
def P15284204172457429698.Spec : Prop :=
  ∀ n, P15284204172457429698.a n = (A334909 n : ℚ)

end A334909

/-! ## A334909.P6947400184600147842

`A010036(n)*A171477(n)`
-/

namespace A334909.P6947400184600147842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010036 n * A171477 n

end

end A334909.P6947400184600147842

namespace A334909

/-- `A010036(n)*A171477(n)` -/
def P6947400184600147842.Spec : Prop :=
  ∀ n, P6947400184600147842.a n = A334909 n

end A334909

/-! ## A334909.P11142688346542245971

`Δ[A006516(n)]*A171477(n)`
-/

namespace A334909.P11142688346542245971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A171477 n

end

end A334909.P11142688346542245971

namespace A334909

/-- `Δ[A006516(n)]*A171477(n)` -/
def P11142688346542245971.Spec : Prop :=
  ∀ n, P11142688346542245971.a n = A334909 n

end A334909

/-! ## A334909.P11094167346820385027

`A006095(n+2)*A010036(n)`
-/

namespace A334909.P11094167346820385027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006095 (n + 2) * A010036 n

end

end A334909.P11094167346820385027

namespace A334909

/-- `A006095(n+2)*A010036(n)` -/
def P11094167346820385027.Spec : Prop :=
  ∀ n, P11094167346820385027.a n = A334909 n

end A334909

/-! ## A334909.P15788019913980290389

`Δ[A006516(n)]*A006095(n+2)`
-/

namespace A334909.P15788019913980290389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A006095 (n + 2)

end

end A334909.P15788019913980290389

namespace A334909

/-- `Δ[A006516(n)]*A006095(n+2)` -/
def P15788019913980290389.Spec : Prop :=
  ∀ n, P15788019913980290389.a n = A334909 n

end A334909

/-! ## A334909.P13143800659755388658

`(A006516(n+1)-A006516(n))*A171477(n)`
-/

namespace A334909.P13143800659755388658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006516 (n + 1) - A006516 n) * A171477 n

end

end A334909.P13143800659755388658

namespace A334909

/-- `(A006516(n+1)-A006516(n))*A171477(n)` -/
def P13143800659755388658.Spec : Prop :=
  ∀ n, P13143800659755388658.a n = A334909 n

end A334909

/-!
# A334911: Census-taker numbers: Numbers k such that exactly two unordered triples of positive numbers have product k and equal sums.

The programs for A334911, there is no canonical definition to state claims against.
-/

/-! ## A334911.P7010793871639949850

`A060292(lt[A001318(n), A282846(3*n)])`
-/

namespace A334911.P7010793871639949850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282846 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060292 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A334911.P7010793871639949850

/-! ## A334911.P15940787984282777855

`A060292(eq[A053258(3*(n+1)), A116598(n)])`
-/

namespace A334911.P15940787984282777855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053258 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060292 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A334911.P15940787984282777855

/-!
# A334912: a(n) = numerator (2^(4*n-1) * (2^(4*n-2) - 1) * (Bernoulli(4*n-2) / (4*n-2)!) * ((2*n-2)! / Euler(2*n-2))^2).

The programs for A334912, there is no canonical definition to state claims against.
-/

/-! ## A334912.P14921273278156937286

`A012853(n)/A001316(n)`
-/

namespace A334912.P14921273278156937286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012853 n : ℚ) / (A001316 n : ℚ)

end

end A334912.P14921273278156937286

/-! ## A334912.P544074749111624030

`A046161(2*n+1)*A089171(2*n)`
-/

namespace A334912.P544074749111624030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 (2 * n + 1) * A089171 (2 * n)

end

end A334912.P544074749111624030

/-!
# A334913: a(n) is the sum of digits of n in signed binary nonadjacent form.

The programs for A334913, the canonical program `A334913.P14278215368688331790` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334913 has offset 0).

The definition of A334913 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A184615, A184616, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A334913.P14278215368688331790

`A000120(A184615(n))-A000120(A184616(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A334913

/-- `A000120(A184615(n))-A000120(A184616(n))` -/
def P14278215368688331790.Spec : Prop :=
  ∀ n, P14278215368688331790.a n = A334913 n

theorem P14278215368688331790.correct : P14278215368688331790.Spec := by
  intro n
  simp only [A334913]

end A334913

/-! ## A334913.P6654791302565191951

`A036555(n)-∑[∑{e}[xor(n, -n), 2-#]]`
-/

namespace A334913.P6654791302565191951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036555 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334913.P6654791302565191951

namespace A334913

/-- `A036555(n)-∑[∑{e}[xor(n, -n), 2-#]]` -/
def P6654791302565191951.Spec : Prop :=
  ∀ n, P6654791302565191951.a n = A334913 n

end A334913

/-! ## A334913.P16989873077073318333

`log2(A134660(n))-∑[∑{e}[xor(n, -n), 2-#]]`
-/

namespace A334913.P16989873077073318333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A134660 n : ℝ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)

end

end A334913.P16989873077073318333

namespace A334913

/-- `log2(A134660(n))-∑[∑{e}[xor(n, -n), 2-#]]` -/
def P16989873077073318333.Spec : Prop :=
  ∀ n, P16989873077073318333.a n = (A334913 n : ℝ)

end A334913

/-! ## A334913.P1186265887240046552

`A036555(n)-A000120(n)`
-/

namespace A334913.P1186265887240046552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036555 n - A000120 n

end

end A334913.P1186265887240046552

namespace A334913

/-- `A036555(n)-A000120(n)` -/
def P1186265887240046552.Spec : Prop :=
  ∀ n, P1186265887240046552.a n = A334913 n

end A334913

/-! ## A334913.P15992562657940108244

`2*A000120(n)-A324466(n)`
-/

namespace A334913.P15992562657940108244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000120 n - A324466 n

end

end A334913.P15992562657940108244

namespace A334913

/-- `2*A000120(n)-A324466(n)` -/
def P15992562657940108244.Spec : Prop :=
  ∀ n, P15992562657940108244.a n = A334913 n

end A334913

/-! ## A334913.P1736595636786021806

`A324467(n)-A000120(n)-A324466(n)`
-/

namespace A334913.P1736595636786021806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324467 n - A000120 n - A324466 n

end

end A334913.P1736595636786021806

namespace A334913

/-- `A324467(n)-A000120(n)-A324466(n)` -/
def P1736595636786021806.Spec : Prop :=
  ∀ n, P1736595636786021806.a n = A334913 n

end A334913

/-! ## A334913.P14066923765440389044

`∑[A088705(record[n*n²%3])]`
-/

namespace A334913.P14066923765440389044
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n ^ 2 % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334913.P14066923765440389044

namespace A334913

/-- `∑[A088705(record[n*n²%3])]` -/
def P14066923765440389044.Spec : Prop :=
  ∀ n, P14066923765440389044.a n = A334913 n

end A334913

/-! ## A334913.P37119256470463438

`A240883(2*n)-∑[∑{e}[xor(n, -n), 2-#]]`
-/

namespace A334913.P37119256470463438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240883 (2 * n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334913.P37119256470463438

namespace A334913

/-- `A240883(2*n)-∑[∑{e}[xor(n, -n), 2-#]]` -/
def P37119256470463438.Spec : Prop :=
  ∀ n, P37119256470463438.a n = A334913 n

end A334913

/-! ## A334913.P732050752441358017

`A240883(2*n)-A000120(n)`
-/

namespace A334913.P732050752441358017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240883 (2 * n) - A000120 n

end

end A334913.P732050752441358017

namespace A334913

/-- `A240883(2*n)-A000120(n)` -/
def P732050752441358017.Spec : Prop :=
  ∀ n, P732050752441358017.a n = A334913 n

end A334913

/-! ## A334913.P14276668936206959285

`A240883(2*n)-A048881(2*n)`
-/

namespace A334913.P14276668936206959285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240883 (2 * n) - A048881 (2 * n)

end

end A334913.P14276668936206959285

namespace A334913

/-- `A240883(2*n)-A048881(2*n)` -/
def P14276668936206959285.Spec : Prop :=
  ∀ n, P14276668936206959285.a n = A334913 n

end A334913

/-! ## A334913.P2828337800770534539

`A046818(2*n)-A000120(2*n+1)`
-/

namespace A334913.P2828337800770534539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046818 (2 * n) - A000120 (2 * n + 1)

end

end A334913.P2828337800770534539

namespace A334913

/-- `A046818(2*n)-A000120(2*n+1)` -/
def P2828337800770534539.Spec : Prop :=
  ∀ n, P2828337800770534539.a n = A334913 n

end A334913

/-! ## A334913.P14316732183969192620

`A000120(3*n)-∑[∑{e}[xor(n, -n), 2-#]]`
-/

namespace A334913.P14316732183969192620
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (3 * n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334913.P14316732183969192620

namespace A334913

/-- `A000120(3*n)-∑[∑{e}[xor(n, -n), 2-#]]` -/
def P14316732183969192620.Spec : Prop :=
  ∀ n, P14316732183969192620.a n = A334913 n

end A334913

/-! ## A334913.P14644683501628744055

`A000120(A008585(n))-A000120(n)`
-/

namespace A334913.P14644683501628744055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A008585 n).toNat - A000120 n

end

end A334913.P14644683501628744055

namespace A334913

/-- `A000120(A008585(n))-A000120(n)` -/
def P14644683501628744055.Spec : Prop :=
  ∀ n, P14644683501628744055.a n = A334913 n

end A334913

/-! ## A334913.P3888254709451269298

`∑[A088705(record[lcm(3, n)])]`
-/

namespace A334913.P3888254709451269298
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334913.P3888254709451269298

namespace A334913

/-- `∑[A088705(record[lcm(3, n)])]` -/
def P3888254709451269298.Spec : Prop :=
  ∀ n, P3888254709451269298.a n = A334913 n

end A334913

/-! ## A334913.P4465982884332742096

`A000120(6*n)-(n-∑[∑{e}[and(n, -n), #]])`
-/

namespace A334913.P4465982884332742096
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (6 * n) - ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A334913.P4465982884332742096

namespace A334913

/-- `A000120(6*n)-(n-∑[∑{e}[and(n, -n), #]])` -/
def P4465982884332742096.Spec : Prop :=
  ∀ n, P4465982884332742096.a n = A334913 n

end A334913

/-! ## A334913.P1324207011294763513

`∑[∑{e}[and(n, -n), #]]+5*n-A011371(6*n)`
-/

namespace A334913.P1324207011294763513
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 5 * n : ℕ) : ℤ) - A011371 (6 * n)

end

end A334913.P1324207011294763513

namespace A334913

/-- `∑[∑{e}[and(n, -n), #]]+5*n-A011371(6*n)` -/
def P1324207011294763513.Spec : Prop :=
  ∀ n, P1324207011294763513.a n = A334913 n

end A334913

/-! ## A334913.P11579872720290477208

`A000120(A008588(n))-A000120(n)`
-/

namespace A334913.P11579872720290477208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A008588 n).toNat - A000120 n

end

end A334913.P11579872720290477208

namespace A334913

/-- `A000120(A008588(n))-A000120(n)` -/
def P11579872720290477208.Spec : Prop :=
  ∀ n, P11579872720290477208.a n = A334913 n

end A334913

/-! ## A334913.P1544722083043284743

`A272666(n)-A011371(A008588(n))`
-/

namespace A334913.P1544722083043284743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272666 n - A011371 (A008588 n).toNat

end

end A334913.P1544722083043284743

namespace A334913

/-- `A272666(n)-A011371(A008588(n))` -/
def P1544722083043284743.Spec : Prop :=
  ∀ n, P1544722083043284743.a n = A334913 n

end A334913

/-! ## A334913.P13626614827295560940

`A065363(A379658(n))`
-/

namespace A334913.P13626614827295560940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 (A379658 n).toNat

end

end A334913.P13626614827295560940

namespace A334913

/-- `A065363(A379658(n))` -/
def P13626614827295560940.Spec : Prop :=
  ∀ n, P13626614827295560940.a n = A334913 n

end A334913

/-!
# A334914: Least positive multiple of n that when written in base 10 uses only 0's, 1's, 2's and 3's.

The programs for A334914, there is no canonical definition to state claims against.
-/

/-! ## A334914.P8494100345331741458

`(1+n)*A335401(n+1)`
-/

namespace A334914.P8494100345331741458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A335401 (n + 1)

end

end A334914.P8494100345331741458

/-! ## A334914.P1884905759595862117

`A000027(n+1)/cot(atan(A335401(n+1)))`
-/

namespace A334914.P1884905759595862117
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℝ) / Real.cot (Real.arctan (A335401 (n + 1) : ℝ))

end

end A334914.P1884905759595862117

/-! ## A334914.P13877797873669461753

`A335401(n+1)/(A287523(A026356(n+1))+1/(n+1))`
-/

namespace A334914.P13877797873669461753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335401 (n + 1) : ℚ) / ((A287523 (A026356 (n + 1)).toNat : ℚ) + 1 / (n + 1 : ℚ))

end

end A334914.P13877797873669461753

/-! ## A334914.P13035928971271496017

`(n+1)/A335401(n+1)^A008683(A181758(n+1))`
-/

namespace A334914.P13035928971271496017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A335401 (n + 1) : ℚ) ^ (A008683 (A181758 (n + 1)).toNat : ℤ)

end

end A334914.P13035928971271496017

/-!
# A334915: Numbers whose XOR-triangles have central zeros.

The programs for A334915, there is no canonical definition to state claims against.
-/

/-! ## A334915.P16695445727418461171

`lt[A079882(n), A079882(A141977(n+1))]`
-/

namespace A334915.P16695445727418461171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079882 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079882 (A141977 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334915.P16695445727418461171

/-! ## A334915.P15825610032766831570

`lt[A079944(n), A079944(A141977(n+1))]`
-/

namespace A334915.P15825610032766831570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079944 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079944 (A141977 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334915.P15825610032766831570

/-! ## A334915.P3825647717433453345

`lt[A206959(A119620(n)), A000038(n)]`
-/

namespace A334915.P3825647717433453345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206959 (A119620 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334915.P3825647717433453345

/-! ## A334915.P13024858485842559538

`eq[A091228(n), A232639(A305420(n+1))]`
-/

namespace A334915.P13024858485842559538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091228 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232639 (A305420 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334915.P13024858485842559538

/-! ## A334915.P1845077535884499355

`lt[A332839(2*n+1), A332824(A332864(n+5))]`
-/

namespace A334915.P1845077535884499355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332839 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332824 (A332864 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334915.P1845077535884499355

/-!
# A334916: a(n) is the smallest number > 1 whose base n digits yield the original number when added and multiplied left to right; or 0 if no such number exists.

The programs for A334916, there is no canonical definition to state claims against.
-/

/-! ## A334916.P17814503445706920752

`A085196(A126319(n))*A127306(n)`
-/

namespace A334916.P17814503445706920752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085196 (A126319 n).toNat * A127306 n

end

end A334916.P17814503445706920752

/-! ## A334916.P12470575021118186768

`A237548(n+5)%A008619(A305609(n))`
-/

namespace A334916.P12470575021118186768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237548 (n + 5)) (A008619 (A305609 n).toNat)

end

end A334916.P12470575021118186768

/-! ## A334916.P16002898862134548509

`and(A000010(A294784(n+1)), A038155(n))`
-/

namespace A334916.P16002898862134548509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000010 (A294784 (n + 1)).toNat) (A038155 n)

end

end A334916.P16002898862134548509

/-!
# A334917: Indices in A334916 where records occur.

The programs for A334917, there is no canonical definition to state claims against.
-/

/-! ## A334917.P1621198393500801272

`eq[A262907(n), A350111(n)]`
-/

namespace A334917.P1621198393500801272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262907 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350111 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334917.P1621198393500801272

/-! ## A334917.P416102060533675967

`eq[A266434(n), A297242(A099884(n))]`
-/

namespace A334917.P416102060533675967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266434 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297242 (A099884 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334917.P416102060533675967

/-! ## A334917.P9517035641514907437

`lt[A293361(n), A059110(A239087(2*(n+1)))]`
-/

namespace A334917.P9517035641514907437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293361 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059110 (A239087 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334917.P9517035641514907437

/-! ## A334917.P13999759877352706577

`lt[A339645(A329405(n+5)), A167790(n+1)]`
-/

namespace A334917.P13999759877352706577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339645 (A329405 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167790 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334917.P13999759877352706577

/-! ## A334917.P12538973918046039355

`A002473(A139199(n+1)%A031140(3*n+5))`
-/

namespace A334917.P12538973918046039355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (Int.tmod (A139199 (n + 1)) (A031140 (3 * n + 5))).toNat

end

end A334917.P12538973918046039355

/-!
# A334919: Numbers of the form i + j + 3*i*j for i,j >= 1 together with numbers of the form -i - j + 3*i*j for i,j >= 2.

The programs for A334919, the canonical program `A334919.P14357513930265192530` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334919 has offset 1).

The definition of A334919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334919.P8715092050962047786

`lt[0, A339895(3*n+1)]`
-/

namespace A334919.P8715092050962047786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339895 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A334919.P8715092050962047786

namespace A334919

/-- `lt[0, A339895(3*n+1)]` -/
def P8715092050962047786.Spec : Prop :=
  ∀ n, (P8715092050962047786.a n : ℤ) = A334919 (n + 1)

end A334919

/-! ## A334919.P14357513930265192530

`lt[1, A046079(3*n+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A334919

/-- `lt[1, A046079(3*n+1)]` -/
def P14357513930265192530.Spec : Prop :=
  ∀ n, (P14357513930265192530.a n : ℤ) = A334919 (n + 1)

theorem P14357513930265192530.correct : P14357513930265192530.Spec := by
  intro n
  simp only [A334919, Nat.add_sub_cancel]

end A334919

/-! ## A334919.P5313482619829319802

`lt[1, A086798(3*n+1)]`
-/

namespace A334919.P5313482619829319802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086798 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A334919.P5313482619829319802

namespace A334919

/-- `lt[1, A086798(3*n+1)]` -/
def P5313482619829319802.Spec : Prop :=
  ∀ n, (P5313482619829319802.a n : ℤ) = A334919 (n + 1)

end A334919

/-! ## A334919.P14710853394429104363

`lt[0, A285726(3*n+1)]`
-/

namespace A334919.P14710853394429104363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285726 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A334919.P14710853394429104363

namespace A334919

/-- `lt[0, A285726(3*n+1)]` -/
def P14710853394429104363.Spec : Prop :=
  ∀ n, (P14710853394429104363.a n : ℤ) = A334919 (n + 1)

end A334919

/-! ## A334919.P8433991222546971967

`eq[1, A301316(3*n+1)]`
-/

namespace A334919.P8433991222546971967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301316 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334919.P8433991222546971967

namespace A334919

/-- `eq[1, A301316(3*n+1)]` -/
def P8433991222546971967.Spec : Prop :=
  ∀ n, (P8433991222546971967.a n : ℤ) = A334919 (n + 1)

end A334919

/-! ## A334919.P7308795169461776768

`lt[1, A056138(3*n+1)]`
-/

namespace A334919.P7308795169461776768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056138 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A334919.P7308795169461776768

namespace A334919

/-- `lt[1, A056138(3*n+1)]` -/
def P7308795169461776768.Spec : Prop :=
  ∀ n, (P7308795169461776768.a n : ℤ) = A334919 (n + 1)

end A334919

/-! ## A334919.P17094069782014087793

`lt[1, A083716(3*n+1)]`
-/

namespace A334919.P17094069782014087793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083716 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A334919.P17094069782014087793

namespace A334919

/-- `lt[1, A083716(3*n+1)]` -/
def P17094069782014087793.Spec : Prop :=
  ∀ n, (P17094069782014087793.a n : ℤ) = A334919 (n + 1)

end A334919

/-! ## A334919.P16118363895153067610

`lt[0, A255361(3*n)]`
-/

namespace A334919.P16118363895153067610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255361 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A334919.P16118363895153067610

namespace A334919

/-- `lt[0, A255361(3*n)]` -/
def P16118363895153067610.Spec : Prop :=
  ∀ n, (P16118363895153067610.a n : ℤ) = A334919 (n + 1)

end A334919

/-! ## A334919.P3472983170986331606

`lt[0, A216599(3*n+1)]`
-/

namespace A334919.P3472983170986331606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216599 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A334919.P3472983170986331606

namespace A334919

/-- `lt[0, A216599(3*n+1)]` -/
def P3472983170986331606.Spec : Prop :=
  ∀ n, (P3472983170986331606.a n : ℤ) = A334919 (n + 1)

end A334919

/-! ## A334919.P12845130032563267672

`eq[1, A156033(3*n)]`
-/

namespace A334919.P12845130032563267672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156033 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334919.P12845130032563267672

namespace A334919

/-- `eq[1, A156033(3*n)]` -/
def P12845130032563267672.Spec : Prop :=
  ∀ n, (P12845130032563267672.a n : ℤ) = A334919 (n + 1)

end A334919

/-!
# A334920: Sum of the even side lengths of all primitive Heronian triangles with perimeter A096468(n).

The programs for A334920, there is no canonical definition to state claims against.
-/

/-! ## A334920.P5968556542640042375

`A096468(n+1)*A298614(n+1)-A334928(n+1)`
-/

namespace A334920.P5968556542640042375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096468 (n + 1) * A298614 (n + 1) - A334928 (n + 1)

end

end A334920.P5968556542640042375

/-!
# A334921: Expansion of Phi(x) = (1/(1+x))*Product_{k>=0} (1-(x/(1+x))^2^k).

The programs for A334921, the canonical program `A334921.P10327737379832920277` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334921 has offset 0).

The definition of A334921 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A334921.P10327737379832920277

`∑{#}[n, (-1)^(n-#)*C(n, #)*(-1)^(2*n-2*#+A000120(#))]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A334921

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*(-1)^(2*n-2*#+A000120(#))]` -/
def P10327737379832920277.Spec : Prop :=
  ∀ n, P10327737379832920277.a n = (A334921 n : ℚ)

end A334921

/-! ## A334921.P17898485363258208960

`(2-A280560(n)²)*A029880(n)`
-/

namespace A334921.P17898485363258208960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A280560 n ^ 2) * A029880 n

end

end A334921.P17898485363258208960

namespace A334921

/-- `(2-A280560(n)²)*A029880(n)` -/
def P17898485363258208960.Spec : Prop :=
  ∀ n, P17898485363258208960.a n = A334921 n

end A334921

/-! ## A334921.P7994588454108784795

`A029880(n)*A349355(A001316(n))`
-/

namespace A334921.P7994588454108784795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029880 n * A349355 (A001316 n).toNat

end

end A334921.P7994588454108784795

namespace A334921

/-- `A029880(n)*A349355(A001316(n))` -/
def P7994588454108784795.Spec : Prop :=
  ∀ n, P7994588454108784795.a n = A334921 n

end A334921

/-! ## A334921.P8687168999725056697

`A029880(n)*A349355(A134660(n))`
-/

namespace A334921.P8687168999725056697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029880 n * A349355 (A134660 n).toNat

end

end A334921.P8687168999725056697

namespace A334921

/-- `A029880(n)*A349355(A134660(n))` -/
def P8687168999725056697.Spec : Prop :=
  ∀ n, P8687168999725056697.a n = A334921 n

end A334921

/-! ## A334921.P17779014473450129558

`A029880(n)*A062953(A034444(n+1))`
-/

namespace A334921.P17779014473450129558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029880 n * A062953 (A034444 (n + 1)).toNat

end

end A334921.P17779014473450129558

namespace A334921

/-- `A029880(n)*A062953(A034444(n+1))` -/
def P17779014473450129558.Spec : Prop :=
  ∀ n, P17779014473450129558.a n = A334921 n

end A334921

/-! ## A334921.P7618538649922450169

`A029880(n)*A280560(A092131(n+1))`
-/

namespace A334921.P7618538649922450169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029880 n * A280560 (A092131 (n + 1)).toNat

end

end A334921.P7618538649922450169

namespace A334921

/-- `A029880(n)*A280560(A092131(n+1))` -/
def P7618538649922450169.Spec : Prop :=
  ∀ n, P7618538649922450169.a n = A334921 n

end A334921

/-! ## A334921.P8560356707001242175

`∑{#}[n, (-1)^(n-#)*C(n, #)*A106400(#)]`
-/

namespace A334921.P8560356707001242175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A106400 k : ℚ)

end

end A334921.P8560356707001242175

namespace A334921

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A106400(#)]` -/
def P8560356707001242175.Spec : Prop :=
  ∀ n, P8560356707001242175.a n = (A334921 n : ℚ)

end A334921

/-! ## A334921.P1855912188842008297

`A029880(n)*A280560(A139250(n))`
-/

namespace A334921.P1855912188842008297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029880 n * A280560 (A139250 n).toNat

end

end A334921.P1855912188842008297

namespace A334921

/-- `A029880(n)*A280560(A139250(n))` -/
def P1855912188842008297.Spec : Prop :=
  ∀ n, P1855912188842008297.a n = A334921 n

end A334921

/-!
# A334922: Square array T(n,k) = ((3/2)*n*k + (1/2)*A319929(n,k))/2, n >= 1, k >= 1, read by antidiagonals.

The programs for A334922, the canonical program `A334922.P17964154798392453556` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334922 has offset 1).

The definition of A334922 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334922.P17964154798392453556

`A243866(n+1)+A143902(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A334922

/-- `A243866(n+1)+A143902(n+1)` -/
def P17964154798392453556.Spec : Prop :=
  ∀ n, P17964154798392453556.a n = A334922 (n + 1)

theorem P17964154798392453556.correct : P17964154798392453556.Spec := by
  intro n
  simp only [A334922, Nat.add_sub_cancel]

end A334922

/-! ## A334922.P1652911512984064710

`(A322630(n+1)+A003991(n+1))/2`
-/

namespace A334922.P1652911512984064710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322630 (n + 1) + A003991 (n + 1) : ℚ) / 2

end

end A334922.P1652911512984064710

namespace A334922

/-- `(A322630(n+1)+A003991(n+1))/2` -/
def P1652911512984064710.Spec : Prop :=
  ∀ n, P1652911512984064710.a n = (A334922 (n + 1) : ℚ)

end A334922

/-! ## A334922.P10811089417298046483

`2*A003991(n+1)-A334923(n+1)`
-/

namespace A334922.P10811089417298046483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003991 (n + 1) - A334923 (n + 1)

end

end A334922.P10811089417298046483

namespace A334922

/-- `2*A003991(n+1)-A334923(n+1)` -/
def P10811089417298046483.Spec : Prop :=
  ∀ n, P10811089417298046483.a n = A334922 (n + 1)

theorem P10811089417298046483.correct : P10811089417298046483.Spec := by
  intro n
  simp only [A334922, Nat.add_sub_cancel, A334922.P10811089417298046483.a, A334922.P17964154798392453556.a, A003991, A003991.P6365127437582401781.a, A143902, A143902.P5916339437029833280.a, A243866, A243866.P17842490002735257572.a, A334923, A334923.P17285238801038389709.a, A059036, A059036.P14090632459187506294.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A334922

/-! ## A334922.P12257074767091969848

`(A322744(n+1)+A319929(n+1))/2`
-/

namespace A334922.P12257074767091969848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322744 (n + 1) + A319929 (n + 1) : ℚ) / 2

end

end A334922.P12257074767091969848

namespace A334922

/-- `(A322744(n+1)+A319929(n+1))/2` -/
def P12257074767091969848.Spec : Prop :=
  ∀ n, P12257074767091969848.a n = (A334922 (n + 1) : ℚ)

end A334922

/-! ## A334922.P16447664301929370551

`A098352(n+1)/2-A334923(n+1)`
-/

namespace A334922.P16447664301929370551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098352 (n + 1) : ℚ) / 2 - (A334923 (n + 1) : ℚ)

end

end A334922.P16447664301929370551

namespace A334922

/-- `A098352(n+1)/2-A334923(n+1)` -/
def P16447664301929370551.Spec : Prop :=
  ∀ n, P16447664301929370551.a n = (A334922 (n + 1) : ℚ)

theorem P16447664301929370551.correct : P16447664301929370551.Spec := by
  intro n
  simp only [A334922, Nat.add_sub_cancel, A334922.P16447664301929370551.a, A334922.P17964154798392453556.a, A098352, A098352.P3707437164941693741.a, A143902, A143902.P5916339437029833280.a, A243866, A243866.P17842490002735257572.a, A334923, A334923.P17285238801038389709.a, A003991, A003991.P6365127437582401781.a, A059036, A059036.P14090632459187506294.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A334922

/-! ## A334922.P15473266486237372835

`A243866(n+1)+A004526(A003991(n+1))`
-/

namespace A334922.P15473266486237372835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243866 (n + 1) + A004526 (A003991 (n + 1)).toNat

end

end A334922.P15473266486237372835

namespace A334922

/-- `A243866(n+1)+A004526(A003991(n+1))` -/
def P15473266486237372835.Spec : Prop :=
  ∀ n, P15473266486237372835.a n = A334922 (n + 1)

end A334922

/-! ## A334922.P8181264003293923576

`A005843(A003991(n+1))-A334923(n+1)`
-/

namespace A334922.P8181264003293923576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A003991 (n + 1)).toNat - A334923 (n + 1)

end

end A334922.P8181264003293923576

namespace A334922

/-- `A005843(A003991(n+1))-A334923(n+1)` -/
def P8181264003293923576.Spec : Prop :=
  ∀ n, P8181264003293923576.a n = A334922 (n + 1)

end A334922

/-! ## A334922.P5592032220796475186

`A004526(A098352(n+1))-A334923(n+1)`
-/

namespace A334922.P5592032220796475186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A098352 (n + 1)).toNat - A334923 (n + 1)

end

end A334922.P5592032220796475186

namespace A334922

/-- `A004526(A098352(n+1))-A334923(n+1)` -/
def P5592032220796475186.Spec : Prop :=
  ∀ n, P5592032220796475186.a n = A334922 (n + 1)

end A334922

/-! ## A334922.P11917188357402158532

`(A008486(A003991(n+1))-A322744(n+1))/2`
-/

namespace A334922.P11917188357402158532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008486 (A003991 (n + 1)).toNat - A322744 (n + 1) : ℚ) / 2

end

end A334922.P11917188357402158532

namespace A334922

/-- `(A008486(A003991(n+1))-A322744(n+1))/2` -/
def P11917188357402158532.Spec : Prop :=
  ∀ n, P11917188357402158532.a n = (A334922 (n + 1) : ℚ)

end A334922

/-! ## A334922.P7663822530834523619

`A003991(n+1)+A334923(n+1)-A322744(n+1)`
-/

namespace A334922.P7663822530834523619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + (A334923 (n + 1) - A322744 (n + 1))

end

end A334922.P7663822530834523619

namespace A334922

/-- `A003991(n+1)+A334923(n+1)-A322744(n+1)` -/
def P7663822530834523619.Spec : Prop :=
  ∀ n, P7663822530834523619.a n = A334922 (n + 1)

theorem P7663822530834523619.correct : P7663822530834523619.Spec := by
  intro n
  simp only [A334922, Nat.add_sub_cancel, A334922.P7663822530834523619.a, A334922.P17964154798392453556.a, A003991, A003991.P6365127437582401781.a, A143902, A143902.P5916339437029833280.a, A243866, A243866.P17842490002735257572.a, A322744, A322744.P7428208251532424710.a, A334923, A334923.P17285238801038389709.a, A059036, A059036.P14090632459187506294.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A334922

/-! ## A334922.P10528932921933833052

`A319929(n+1)+A334923(n+1)-A322630(n+1)`
-/

namespace A334922.P10528932921933833052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319929 (n + 1) + (A334923 (n + 1) - A322630 (n + 1))

end

end A334922.P10528932921933833052

namespace A334922

/-- `A319929(n+1)+A334923(n+1)-A322630(n+1)` -/
def P10528932921933833052.Spec : Prop :=
  ∀ n, P10528932921933833052.a n = A334922 (n + 1)

end A334922

/-! ## A334922.P17839312053875273892

`A322630(n+1)+A322744(n+1)-A334923(n+1)`
-/

namespace A334922.P17839312053875273892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322630 (n + 1) + (A322744 (n + 1) - A334923 (n + 1))

end

end A334922.P17839312053875273892

namespace A334922

/-- `A322630(n+1)+A322744(n+1)-A334923(n+1)` -/
def P17839312053875273892.Spec : Prop :=
  ∀ n, P17839312053875273892.a n = A334922 (n + 1)

end A334922

/-! ## A334922.P3122337905171514896

`A319929(n+1)+A327259(n+1)-A334923(n+1)`
-/

namespace A334922.P3122337905171514896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319929 (n + 1) + (A327259 (n + 1) - A334923 (n + 1))

end

end A334922.P3122337905171514896

namespace A334922

/-- `A319929(n+1)+A327259(n+1)-A334923(n+1)` -/
def P3122337905171514896.Spec : Prop :=
  ∀ n, P3122337905171514896.a n = A334922 (n + 1)

end A334922

/-! ## A334922.P2203765181639206592

`A322744(n+1)+A334923(n+1)-A327259(n+1)`
-/

namespace A334922.P2203765181639206592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322744 (n + 1) + (A334923 (n + 1) - A327259 (n + 1))

end

end A334922.P2203765181639206592

namespace A334922

/-- `A322744(n+1)+A334923(n+1)-A327259(n+1)` -/
def P2203765181639206592.Spec : Prop :=
  ∀ n, P2203765181639206592.a n = A334922 (n + 1)

theorem P2203765181639206592.correct : P2203765181639206592.Spec := by
  intro n
  simp only [A334922, Nat.add_sub_cancel, A334922.P2203765181639206592.a, A334922.P17964154798392453556.a, A143902, A143902.P5916339437029833280.a, A243866, A243866.P17842490002735257572.a, A322744, A322744.P7428208251532424710.a, A327259, A327259.P9875520771987652429.a, A334923, A334923.P17285238801038389709.a, A003991, A003991.P6365127437582401781.a, A059036, A059036.P14090632459187506294.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A334922

/-!
# A334923: Square array T(n,k) = ((5/2)*n*k - (1/2)*A319929(n,k))/2, n >= 1, k >= 1, read by antidiagonals.

The programs for A334923, the canonical program `A334923.P17285238801038389709` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334923 has offset 1).

The definition of A334923 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334923.P12420760119460061616

`(A322744(n+1)+A003991(n+1))/2`
-/

namespace A334923.P12420760119460061616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322744 (n + 1) + A003991 (n + 1) : ℚ) / 2

end

end A334923.P12420760119460061616

namespace A334923

/-- `(A322744(n+1)+A003991(n+1))/2` -/
def P12420760119460061616.Spec : Prop :=
  ∀ n, P12420760119460061616.a n = (A334923 (n + 1) : ℚ)

theorem P12420760119460061616.correct : P12420760119460061616.Spec := by
  intro n
  simp only [A334923, Nat.add_sub_cancel, A334923.P12420760119460061616.a, A334923.P17285238801038389709.a, A003991, A003991.P6365127437582401781.a, A322744, A322744.P7428208251532424710.a, A334922, A334922.P17964154798392453556.a, A143902, A143902.P5916339437029833280.a, A243866, A243866.P17842490002735257572.a, A059036, A059036.P14090632459187506294.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A334923

/-! ## A334923.P17285238801038389709

`2*A003991(n+1)-A334922(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A334923

/-- `2*A003991(n+1)-A334922(n+1)` -/
def P17285238801038389709.Spec : Prop :=
  ∀ n, P17285238801038389709.a n = A334923 (n + 1)

theorem P17285238801038389709.correct : P17285238801038389709.Spec := by
  intro n
  simp only [A334923, Nat.add_sub_cancel]

end A334923

/-! ## A334923.P7529662065010028369

`(A327259(n+1)+A322630(n+1))/2`
-/

namespace A334923.P7529662065010028369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327259 (n + 1) + A322630 (n + 1) : ℚ) / 2

end

end A334923.P7529662065010028369

namespace A334923

/-- `(A327259(n+1)+A322630(n+1))/2` -/
def P7529662065010028369.Spec : Prop :=
  ∀ n, P7529662065010028369.a n = (A334923 (n + 1) : ℚ)

end A334923

/-! ## A334923.P2782504205442561166

`A098352(n+1)/2-A334922(n+1)`
-/

namespace A334923.P2782504205442561166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098352 (n + 1) : ℚ) / 2 - (A334922 (n + 1) : ℚ)

end

end A334923.P2782504205442561166

namespace A334923

/-- `A098352(n+1)/2-A334922(n+1)` -/
def P2782504205442561166.Spec : Prop :=
  ∀ n, P2782504205442561166.a n = (A334923 (n + 1) : ℚ)

theorem P2782504205442561166.correct : P2782504205442561166.Spec := by
  intro n
  simp only [A334923, Nat.add_sub_cancel, A334923.P2782504205442561166.a, A334923.P17285238801038389709.a, A003991, A003991.P6365127437582401781.a, A098352, A098352.P3707437164941693741.a, A334922, A334922.P17964154798392453556.a, A143902, A143902.P5916339437029833280.a, A243866, A243866.P17842490002735257572.a, A059036, A059036.P14090632459187506294.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A334923

/-! ## A334923.P2488364818824937448

`A001281(A322744(n+1)+A003991(n+1))`
-/

namespace A334923.P2488364818824937448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A322744 (n + 1) + A003991 (n + 1)).toNat

end

end A334923.P2488364818824937448

namespace A334923

/-- `A001281(A322744(n+1)+A003991(n+1))` -/
def P2488364818824937448.Spec : Prop :=
  ∀ n, P2488364818824937448.a n = A334923 (n + 1)

end A334923

/-! ## A334923.P17606125624417245178

`A004526(A322744(n+1)+A003991(n+1))`
-/

namespace A334923.P17606125624417245178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A322744 (n + 1) + A003991 (n + 1)).toNat

end

end A334923.P17606125624417245178

namespace A334923

/-- `A004526(A322744(n+1)+A003991(n+1))` -/
def P17606125624417245178.Spec : Prop :=
  ∀ n, P17606125624417245178.a n = A334923 (n + 1)

end A334923

/-! ## A334923.P10710145264231462553

`A123108(A322744(n+1)+A003991(n+1))`
-/

namespace A334923.P10710145264231462553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A322744 (n + 1) + A003991 (n + 1)).toNat

end

end A334923.P10710145264231462553

namespace A334923

/-- `A123108(A322744(n+1)+A003991(n+1))` -/
def P10710145264231462553.Spec : Prop :=
  ∀ n, P10710145264231462553.a n = A334923 (n + 1)

end A334923

/-! ## A334923.P17024727435251960982

`A005843(A003991(n+1))-A334922(n+1)`
-/

namespace A334923.P17024727435251960982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A003991 (n + 1)).toNat - A334922 (n + 1)

end

end A334923.P17024727435251960982

namespace A334923

/-- `A005843(A003991(n+1))-A334922(n+1)` -/
def P17024727435251960982.Spec : Prop :=
  ∀ n, P17024727435251960982.a n = A334923 (n + 1)

end A334923

/-! ## A334923.P3966321959010588188

`A110654(A098352(n+1))-A334922(n+1)`
-/

namespace A334923.P3966321959010588188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A098352 (n + 1)).toNat - A334922 (n + 1)

end

end A334923.P3966321959010588188

namespace A334923

/-- `A110654(A098352(n+1))-A334922(n+1)` -/
def P3966321959010588188.Spec : Prop :=
  ∀ n, P3966321959010588188.a n = A334923 (n + 1)

end A334923

/-! ## A334923.P14088093375073202085

`A322744(n+1)+A334922(n+1)-A003991(n+1)`
-/

namespace A334923.P14088093375073202085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322744 (n + 1) + (A334922 (n + 1) - A003991 (n + 1))

end

end A334923.P14088093375073202085

namespace A334923

/-- `A322744(n+1)+A334922(n+1)-A003991(n+1)` -/
def P14088093375073202085.Spec : Prop :=
  ∀ n, P14088093375073202085.a n = A334923 (n + 1)

theorem P14088093375073202085.correct : P14088093375073202085.Spec := by
  intro n
  simp only [A334923, Nat.add_sub_cancel, A334923.P14088093375073202085.a, A334923.P17285238801038389709.a, A003991, A003991.P6365127437582401781.a, A322744, A322744.P7428208251532424710.a, A334922, A334922.P17964154798392453556.a, A143902, A143902.P5916339437029833280.a, A243866, A243866.P17842490002735257572.a, A059036, A059036.P14090632459187506294.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A334923

/-! ## A334923.P14999202046479926429

`A322630(n+1)+A334922(n+1)-A319929(n+1)`
-/

namespace A334923.P14999202046479926429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322630 (n + 1) + (A334922 (n + 1) - A319929 (n + 1))

end

end A334923.P14999202046479926429

namespace A334923

/-- `A322630(n+1)+A334922(n+1)-A319929(n+1)` -/
def P14999202046479926429.Spec : Prop :=
  ∀ n, P14999202046479926429.a n = A334923 (n + 1)

end A334923

/-! ## A334923.P198897074794976329

`A322630(n+1)+A322744(n+1)-A334922(n+1)`
-/

namespace A334923.P198897074794976329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322630 (n + 1) + (A322744 (n + 1) - A334922 (n + 1))

end

end A334923.P198897074794976329

namespace A334923

/-- `A322630(n+1)+A322744(n+1)-A334922(n+1)` -/
def P198897074794976329.Spec : Prop :=
  ∀ n, P198897074794976329.a n = A334923 (n + 1)

end A334923

/-! ## A334923.P7098343021891475605

`A319929(n+1)+A327259(n+1)-A334922(n+1)`
-/

namespace A334923.P7098343021891475605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319929 (n + 1) + (A327259 (n + 1) - A334922 (n + 1))

end

end A334923.P7098343021891475605

namespace A334923

/-- `A319929(n+1)+A327259(n+1)-A334922(n+1)` -/
def P7098343021891475605.Spec : Prop :=
  ∀ n, P7098343021891475605.a n = A334923 (n + 1)

end A334923

/-! ## A334923.P2079348610386345386

`A327259(n+1)+A334922(n+1)-A322744(n+1)`
-/

namespace A334923.P2079348610386345386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327259 (n + 1) + (A334922 (n + 1) - A322744 (n + 1))

end

end A334923.P2079348610386345386

namespace A334923

/-- `A327259(n+1)+A334922(n+1)-A322744(n+1)` -/
def P2079348610386345386.Spec : Prop :=
  ∀ n, P2079348610386345386.a n = A334923 (n + 1)

theorem P2079348610386345386.correct : P2079348610386345386.Spec := by
  intro n
  simp only [A334923, Nat.add_sub_cancel, A334923.P2079348610386345386.a, A334923.P17285238801038389709.a, A003991, A003991.P6365127437582401781.a, A322744, A322744.P7428208251532424710.a, A327259, A327259.P9875520771987652429.a, A334922, A334922.P17964154798392453556.a, A143902, A143902.P5916339437029833280.a, A243866, A243866.P17842490002735257572.a, A059036, A059036.P14090632459187506294.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A334923

/-!
# A334924: G.f.: Sum_{k>=1} x^(k^2*(k + 1)/2) / (1 - x^(k^2*(k + 1)/2)).

The programs for A334924, there is no canonical definition to state claims against.
-/

/-! ## A334924.P16866997398792156211

`A060775(gcd(A058794(2*n+3), A100782(n+1)))`
-/

namespace A334924.P16866997398792156211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060775 (Int.gcd (A058794 (2 * n + 3)) (A100782 (n + 1)))

end

end A334924.P16866997398792156211

/-! ## A334924.P16155633155900401536

`A000005(gcd(A014491(n+1), A274498(n)))`
-/

namespace A334924.P16155633155900401536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A014491 (n + 1)) (A274498 n))

end

end A334924.P16155633155900401536

/-! ## A334924.P11036756493805902831

`gcd(A132328(n), A351014(A087966(n+1)))`
-/

namespace A334924.P11036756493805902831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A132328 n) (A351014 (A087966 (n + 1)).toNat)

end

end A334924.P11036756493805902831

/-! ## A334924.P15583221189375436901

`∏{e}[∑[A117575(n+2)], #]`
-/

namespace A334924.P15583221189375436901
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117575 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A334924.P15583221189375436901

/-! ## A334924.P15833718133018038672

`gcd(A050226(n+1), A400195(n+1))`
-/

namespace A334924.P15833718133018038672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050226 (n + 1)) (A400195 (n + 1))

end

end A334924.P15833718133018038672

/-!
# A334925: G.f.: Sum_{k>=1} x^(k*(k^2 + 1)/2) / (1 - x^(k*(k^2 + 1)/2)).

The programs for A334925, there is no canonical definition to state claims against.
-/

/-! ## A334925.P2213091992573521804

`A334924(A059537(n+1)%A127723(n+1))`
-/

namespace A334925.P2213091992573521804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334924 (Int.tmod (A059537 (n + 1)) (A127723 (n + 1))).toNat

end

end A334925.P2213091992573521804

/-! ## A334925.P4665300895036222773

`A334924(A151988(n+1)*A334924(2*n+1))`
-/

namespace A334925.P4665300895036222773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334924 (A151988 (n + 1) * A334924 (2 * n + 1)).toNat

end

end A334925.P4665300895036222773

/-! ## A334925.P10111652712550832633

`A334924(A265734(n+1)*A334924(2*n+1))`
-/

namespace A334925.P10111652712550832633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334924 (A265734 (n + 1) * A334924 (2 * n + 1)).toNat

end

end A334925.P10111652712550832633

/-! ## A334925.P13342145695136442795

`A109400(gcd(A134274(n+1), A204455(n+1)))`
-/

namespace A334925.P13342145695136442795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109400 (Int.gcd (A134274 (n + 1)) (A204455 (n + 1)))

end

end A334925.P13342145695136442795

/-! ## A334925.P8899864007504277269

`A334924(A334924(2*n+1)²*A047226(n+2))`
-/

namespace A334925.P8899864007504277269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334924 (A334924 (2 * n + 1) ^ 2 * A047226 (n + 2)).toNat

end

end A334925.P8899864007504277269

/-!
# A334926: G.f.: Sum_{k>=1} x^(k*(2*k^2 + 1)/3) / (1 - x^(k*(2*k^2 + 1)/3)).

The programs for A334926, the canonical program `A334926.P1752397318478902184` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334926 has offset 1).

The definition of A334926 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334926.P1752397318478902184

`∑{d}[n+1, A256432(#)]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A334926

/-- `∑{d}[n+1, A256432(#)]` -/
def P1752397318478902184.Spec : Prop :=
  ∀ n, P1752397318478902184.a n = A334926 (n + 1)

theorem P1752397318478902184.correct : P1752397318478902184.Spec := by
  intro n
  simp only [A334926, Nat.add_sub_cancel]

end A334926

/-! ## A334926.P6253513999272337425

`A000005(∑{d}[n-Δ[n²], A256432(#)])`
-/

namespace A334926.P6253513999272337425
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ d ∈ Nat.divisors (f1 n).natAbs, A256432 d).toNat

end

end A334926.P6253513999272337425

namespace A334926

/-- `A000005(∑{d}[n-Δ[n²], A256432(#)])` -/
def P6253513999272337425.Spec : Prop :=
  ∀ n, P6253513999272337425.a n = A334926 (n + 1)

end A334926

/-! ## A334926.P11205748837651432770

`A000011(∑{d}[n-Δ[n²], A256432(#)])`
-/

namespace A334926.P11205748837651432770
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (∑ d ∈ Nat.divisors (f1 n).natAbs, A256432 d).toNat

end

end A334926.P11205748837651432770

namespace A334926

/-- `A000011(∑{d}[n-Δ[n²], A256432(#)])` -/
def P11205748837651432770.Spec : Prop :=
  ∀ n, P11205748837651432770.a n = A334926 (n + 1)

end A334926

/-! ## A334926.P12043717171667271697

`A000030(∑{d}[n-Δ[n²], A256432(#)])`
-/

namespace A334926.P12043717171667271697
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (∑ d ∈ Nat.divisors (f1 n).natAbs, A256432 d).toNat

end

end A334926.P12043717171667271697

namespace A334926

/-- `A000030(∑{d}[n-Δ[n²], A256432(#)])` -/
def P12043717171667271697.Spec : Prop :=
  ∀ n, P12043717171667271697.a n = A334926 (n + 1)

end A334926

/-! ## A334926.P9061636200556869120

`A000108(∑{d}[n-Δ[n²], A256432(#)])`
-/

namespace A334926.P9061636200556869120
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (∑ d ∈ Nat.divisors (f1 n).natAbs, A256432 d).toNat

end

end A334926.P9061636200556869120

namespace A334926

/-- `A000108(∑{d}[n-Δ[n²], A256432(#)])` -/
def P9061636200556869120.Spec : Prop :=
  ∀ n, P9061636200556869120.a n = A334926 (n + 1)

end A334926

/-! ## A334926.P3043240691584730689

`A000142(∑{d}[n-Δ[n²], A256432(#)])`
-/

namespace A334926.P3043240691584730689
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (∑ d ∈ Nat.divisors (f1 n).natAbs, A256432 d).toNat

end

end A334926.P3043240691584730689

namespace A334926

/-- `A000142(∑{d}[n-Δ[n²], A256432(#)])` -/
def P3043240691584730689.Spec : Prop :=
  ∀ n, P3043240691584730689.a n = A334926 (n + 1)

end A334926

/-! ## A334926.P8325413913361559836

`A000961(∑{d}[n-Δ[n²], A256432(#)])`
-/

namespace A334926.P8325413913361559836
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (∑ d ∈ Nat.divisors (f1 n).natAbs, A256432 d).toNat

end

end A334926.P8325413913361559836

namespace A334926

/-- `A000961(∑{d}[n-Δ[n²], A256432(#)])` -/
def P8325413913361559836.Spec : Prop :=
  ∀ n, P8325413913361559836.a n = A334926 (n + 1)

end A334926

/-! ## A334926.P9823247699814418894

`A005117(∑{d}[n-Δ[n²], A256432(#)])`
-/

namespace A334926.P9823247699814418894
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (∑ d ∈ Nat.divisors (f1 n).natAbs, A256432 d).toNat

end

end A334926.P9823247699814418894

namespace A334926

/-- `A005117(∑{d}[n-Δ[n²], A256432(#)])` -/
def P9823247699814418894.Spec : Prop :=
  ∀ n, P9823247699814418894.a n = A334926 (n + 1)

end A334926

/-! ## A334926.P13614611898512468109

`A006530(∑{d}[n-Δ[n²], A256432(#)])`
-/

namespace A334926.P13614611898512468109
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ d ∈ Nat.divisors (f1 n).natAbs, A256432 d).toNat

end

end A334926.P13614611898512468109

namespace A334926

/-- `A006530(∑{d}[n-Δ[n²], A256432(#)])` -/
def P13614611898512468109.Spec : Prop :=
  ∀ n, P13614611898512468109.a n = A334926 (n + 1)

end A334926

/-! ## A334926.P8060925035097422935

`A008578(∑{d}[n-Δ[n²], A256432(#)])`
-/

namespace A334926.P8060925035097422935
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ d ∈ Nat.divisors (f1 n).natAbs, A256432 d).toNat

end

end A334926.P8060925035097422935

namespace A334926

/-- `A008578(∑{d}[n-Δ[n²], A256432(#)])` -/
def P8060925035097422935.Spec : Prop :=
  ∀ n, P8060925035097422935.a n = A334926 (n + 1)

end A334926

/-! ## A334926.P8127048114639922993

`A014963(∑{d}[n-Δ[n²], A256432(#)])`
-/

namespace A334926.P8127048114639922993
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∑ d ∈ Nat.divisors (f1 n).natAbs, A256432 d).toNat

end

end A334926.P8127048114639922993

namespace A334926

/-- `A014963(∑{d}[n-Δ[n²], A256432(#)])` -/
def P8127048114639922993.Spec : Prop :=
  ∀ n, P8127048114639922993.a n = A334926 (n + 1)

end A334926

/-! ## A334926.P16424956894393655974

`A020639(∑{d}[n-Δ[n²], A256432(#)])`
-/

namespace A334926.P16424956894393655974
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ d ∈ Nat.divisors (f1 n).natAbs, A256432 d).toNat

end

end A334926.P16424956894393655974

namespace A334926

/-- `A020639(∑{d}[n-Δ[n²], A256432(#)])` -/
def P16424956894393655974.Spec : Prop :=
  ∀ n, P16424956894393655974.a n = A334926 (n + 1)

end A334926

/-! ## A334926.P4323021330785376304

`A028310(∑{d}[n-Δ[n²], A256432(#)])`
-/

namespace A334926.P4323021330785376304
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ d ∈ Nat.divisors (f1 n).natAbs, A256432 d).toNat

end

end A334926.P4323021330785376304

namespace A334926

/-- `A028310(∑{d}[n-Δ[n²], A256432(#)])` -/
def P4323021330785376304.Spec : Prop :=
  ∀ n, P4323021330785376304.a n = A334926 (n + 1)

end A334926

/-! ## A334926.P5169976084049190843

`A033627(∑{d}[n-Δ[n²], A256432(#)])`
-/

namespace A334926.P5169976084049190843
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (∑ d ∈ Nat.divisors (f1 n).natAbs, A256432 d).toNat

end

end A334926.P5169976084049190843

namespace A334926

/-- `A033627(∑{d}[n-Δ[n²], A256432(#)])` -/
def P5169976084049190843.Spec : Prop :=
  ∀ n, P5169976084049190843.a n = A334926 (n + 1)

end A334926

/-! ## A334926.P3926433161565321685

`A052740(∑{d}[n-Δ[n²], A256432(#)])`
-/

namespace A334926.P3926433161565321685
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052740 (∑ d ∈ Nat.divisors (f1 n).natAbs, A256432 d).toNat

end

end A334926.P3926433161565321685

namespace A334926

/-- `A052740(∑{d}[n-Δ[n²], A256432(#)])` -/
def P3926433161565321685.Spec : Prop :=
  ∀ n, P3926433161565321685.a n = A334926 (n + 1)

end A334926

/-! ## A334926.P1548874541520963708

`A154562(∑{d}[n-Δ[n²], A256432(#)])`
-/

namespace A334926.P1548874541520963708
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154562 (∑ d ∈ Nat.divisors (f1 n).natAbs, A256432 d).toNat

end

end A334926.P1548874541520963708

namespace A334926

/-- `A154562(∑{d}[n-Δ[n²], A256432(#)])` -/
def P1548874541520963708.Spec : Prop :=
  ∀ n, P1548874541520963708.a n = A334926 (n + 1)

end A334926

/-! ## A334926.P11932872500537468054

`A000027(∑{d}[ϕ²-(ϕ-n), A256432(#)])`
-/

namespace A334926.P11932872500537468054
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A256432 d).toNat

end

end A334926.P11932872500537468054

namespace A334926

/-- `A000027(∑{d}[ϕ²-(ϕ-n), A256432(#)])` -/
def P11932872500537468054.Spec : Prop :=
  ∀ n, P11932872500537468054.a n = A334926 (n + 1)

end A334926

/-! ## A334926.P13722088238514809492

`A001511(∑{d}[n-1-A004277(n), A256432(#)])`
-/

namespace A334926.P13722088238514809492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (∑ d ∈ Nat.divisors (f1 n).natAbs, A256432 d).toNat

end

end A334926.P13722088238514809492

namespace A334926

/-- `A001511(∑{d}[n-1-A004277(n), A256432(#)])` -/
def P13722088238514809492.Spec : Prop :=
  ∀ n, P13722088238514809492.a n = A334926 (n + 1)

end A334926

/-! ## A334926.P1670848221255509526

`∑{d}[n-1-A004277(n), A256432(#)]%A053742(n)`
-/

namespace A334926.P1670848221255509526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n).natAbs, A256432 d) (A053742 n)

end

end A334926.P1670848221255509526

namespace A334926

/-- `∑{d}[n-1-A004277(n), A256432(#)]%A053742(n)` -/
def P1670848221255509526.Spec : Prop :=
  ∀ n, P1670848221255509526.a n = A334926 (n + 1)

end A334926

/-!
# A334929: Positive integers k such that there exists a positive integer m consisting of k identical digits and such that m is a multiple of k.

The programs for A334929, there is no canonical definition to state claims against.
-/

/-! ## A334929.P16313310260390938548

`record[A259433(n+1)%A334954(n+1)²]`
-/

namespace A334929.P16313310260390938548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259433 (n + 1)) (A334954 (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334929.P16313310260390938548

/-!
# A334930: Numbers that generate rotationally symmetrical XOR-triangles featuring singleton zero bits in a hexagonal arrangement.

The programs for A334930, the canonical program `A334930.P7356345640304876599` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334930 has offset 1).

The definition of A334930 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A334930.P7356345640304876599

`ogf((1+11x+4x^2-8x^3)/(1-9x^2+8x^4))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A334930

/-- `ogf((1+11x+4x^2-8x^3)/(1-9x^2+8x^4))` -/
def P7356345640304876599.Spec : Prop :=
  ∀ n, P7356345640304876599.a n = A334930 (n + 1)

theorem P7356345640304876599.correct : P7356345640304876599.Spec := by
  intro n
  simp only [A334930, Nat.add_sub_cancel]

end A334930

/-! ## A334930.P9798247893821391853

`2*A273050(n+1)+1`
-/

namespace A334930.P9798247893821391853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A273050 (n + 1) + 1

end

end A334930.P9798247893821391853

namespace A334930

/-- `2*A273050(n+1)+1` -/
def P9798247893821391853.Spec : Prop :=
  ∀ n, P9798247893821391853.a n = A334930 (n + 1)

end A334930

/-! ## A334930.P223547919581280883

`record[Δ[A077972(n)*A117373(n)]]`
-/

namespace A334930.P223547919581280883
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077972 n * A117373 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334930.P223547919581280883

namespace A334930

/-- `record[Δ[A077972(n)*A117373(n)]]` -/
def P223547919581280883.Spec : Prop :=
  ∀ n, P223547919581280883.a n = A334930 (n + 1)

end A334930

/-! ## A334930.P3873407079334367467

`record[and(A010892(n), A173593(n+1))]`
-/

namespace A334930.P3873407079334367467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010892 n) (A173593 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334930.P3873407079334367467

namespace A334930

/-- `record[and(A010892(n), A173593(n+1))]` -/
def P3873407079334367467.Spec : Prop :=
  ∀ n, P3873407079334367467.a n = A334930 (n + 1)

end A334930

/-! ## A334930.P18421777112762837593

`or(1, A014709(2*n)*A113835(n+1))`
-/

namespace A334930.P18421777112762837593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A014709 (2 * n) * A113835 (n + 1))

end

end A334930.P18421777112762837593

namespace A334930

/-- `or(1, A014709(2*n)*A113835(n+1))` -/
def P18421777112762837593.Spec : Prop :=
  ∀ n, P18421777112762837593.a n = A334930 (n + 1)

end A334930

/-! ## A334930.P4460093180817164656

`A000035(n)+A014709(2*n)*A113835(n+1)`
-/

namespace A334930.P4460093180817164656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + A014709 (2 * n) * A113835 (n + 1)

end

end A334930.P4460093180817164656

namespace A334930

/-- `A000035(n)+A014709(2*n)*A113835(n+1)` -/
def P4460093180817164656.Spec : Prop :=
  ∀ n, P4460093180817164656.a n = A334930 (n + 1)

end A334930

/-!
# A334933: a(n) = Product_{p|n, p<n, p prime} omega(n/p).

The programs for A334933, there is no canonical definition to state claims against.
-/

/-! ## A334933.P15919987789520717269

`∏{e}[A290480(n+1), A244160(#)]`
-/

namespace A334933.P15919987789520717269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A244160 (Nat.factorization (f1 n).natAbs p)

end

end A334933.P15919987789520717269

/-! ## A334933.P9988457103189758060

`∏{e}[A290480(n+1), A328830(#)]`
-/

namespace A334933.P9988457103189758060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A328830 (Nat.factorization (f1 n).natAbs p)

end

end A334933.P9988457103189758060

/-! ## A334933.P11340755521607396682

`∏{e}[A290480(n+1), A351700(#)]`
-/

namespace A334933.P11340755521607396682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A351700 (Nat.factorization (f1 n).natAbs p)

end

end A334933.P11340755521607396682

/-! ## A334933.P10028563521569798500

`A122651((1-A345354(n+1))²)`
-/

namespace A334933.P10028563521569798500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122651 ((1 - A345354 (n + 1)) ^ 2).toNat

end

end A334933.P10028563521569798500

/-! ## A334933.P12043233281524188244

`A128397(A050320(n+1)-val(∑{e}[n+1, #²]+n+1, n+3))`
-/

namespace A334933.P12043233281524188244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128397 (A050320 (n + 1) - (SequenceMachineLib.valuation (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ 2 + (n + 1)) (n + 3) : ℤ)).toNat

end

end A334933.P12043233281524188244

/-! ## A334933.P12033324686956885463

`A278908(lcm(7, ∏{p}[n+1, lcm(#, n+1)]/(n+1)))`
-/

namespace A334933.P12033324686956885463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278908 (Int.lcm 7 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), Nat.lcm p (n + 1) : ℕ) : ℚ) / (n + 1 : ℚ))))

end

end A334933.P12033324686956885463

/-! ## A334933.P1398737240955728389

`gcd(A113010(n), A349620(A181819(n+1)))`
-/

namespace A334933.P1398737240955728389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A113010 n) (A349620 (A181819 (n + 1)).toNat)

end

end A334933.P1398737240955728389

/-! ## A334933.P1916418569816127943

`A050361(A007948(n+1)^A001221(n+1))`
-/

namespace A334933.P1916418569816127943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (SequenceMachineLib.roundAway ((A007948 (n + 1) : ℚ) ^ (A001221 (n + 1) : ℤ))).toNat

end

end A334933.P1916418569816127943

/-!
# A334935: The product of (n!)^2/8 and the variance of the random number of comparisons needed to sort a list of n distinct items using quicksort.

The programs for A334935, there is no canonical definition to state claims against.
-/

/-! ## A334935.P1028809286293989675

`n!²/8*A330895(n)/A330907(n)`
-/

namespace A334935.P1028809286293989675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n ^ 2 : ℚ) / 8 * (A330895 n : ℚ) / (A330907 n : ℚ)

end

end A334935.P1028809286293989675

/-! ## A334935.P13996371315301847879

`A056576(A374977(n+1)+A051112(n))`
-/

namespace A334935.P13996371315301847879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056576 (A374977 (n + 1) + A051112 n).toNat

end

end A334935.P13996371315301847879

/-!
# A334936: Perimeters of Heronian triangles with even side lengths.

The programs for A334936, there is no canonical definition to state claims against.
-/

/-! ## A334936.P9407387715510929799

`2*A051518(n+1)`
-/

namespace A334936.P9407387715510929799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051518 (n + 1)

end

end A334936.P9407387715510929799

/-! ## A334936.P12307366239398571238

`4*A305704(n+1)`
-/

namespace A334936.P12307366239398571238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A305704 (n + 1)

end

end A334936.P12307366239398571238

/-! ## A334936.P16860887280765315739

`2*(lt[0, A051516(n+1)]+1)`
-/

namespace A334936.P16860887280765315739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A334936.P16860887280765315739

/-! ## A334936.P3222200247566716720

`4*(lt[0, A051517(n+2)]+2)`
-/

namespace A334936.P3222200247566716720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051517 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A334936.P3222200247566716720

/-! ## A334936.P17901043458491764257

`4*(comp[A305705(n+1)-1]+1)`
-/

namespace A334936.P17901043458491764257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305705 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A334936.P17901043458491764257

/-! ## A334936.P12658186929890444128

`A004277(A051518(n+1))`
-/

namespace A334936.P12658186929890444128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A051518 (n + 1)).toNat

end

end A334936.P12658186929890444128

/-! ## A334936.P12163904706760032038

`A008574(A305704(n+1))`
-/

namespace A334936.P12163904706760032038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A305704 (n + 1)).toNat

end

end A334936.P12163904706760032038

/-! ## A334936.P10144458726774050229

`A004275(A051518(n+1)+1)`
-/

namespace A334936.P10144458726774050229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A051518 (n + 1) + 1).toNat

end

end A334936.P10144458726774050229

/-! ## A334936.P15902035248454890169

`A008574(A051518(n+1)/2)`
-/

namespace A334936.P15902035248454890169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (SequenceMachineLib.roundAway ((A051518 (n + 1) : ℚ) / 2)).toNat

end

end A334936.P15902035248454890169

/-! ## A334936.P12102035878108276373

`A051518(n+1)²/A305704(n+1)`
-/

namespace A334936.P12102035878108276373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051518 (n + 1) ^ 2 : ℚ) / (A305704 (n + 1) : ℚ)

end

end A334936.P12102035878108276373

/-!
# A334937: Sum of the smallest side lengths of all Heronian triangles with even sides and perimeter A334936(n).

The programs for A334937, there is no canonical definition to state claims against.
-/

/-! ## A334937.P422818013136907068

`2*A330912(n+1)`
-/

namespace A334937.P422818013136907068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A330912 (n + 1)

end

end A334937.P422818013136907068

/-! ## A334937.P8436945213385376121

`A004277(A330912(n+1))`
-/

namespace A334937.P8436945213385376121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A330912 (n + 1)).toNat

end

end A334937.P8436945213385376121

/-! ## A334937.P15226765374798587421

`A004275(A330912(n+1)+1)`
-/

namespace A334937.P15226765374798587421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A330912 (n + 1) + 1).toNat

end

end A334937.P15226765374798587421

/-! ## A334937.P13695638435822343050

`A051755(A330912(n+1)+1)`
-/

namespace A334937.P13695638435822343050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (A330912 (n + 1) + 1).toNat

end

end A334937.P13695638435822343050

/-! ## A334937.P16354481047585352026

`A316571(A330912(n+1)+1)`
-/

namespace A334937.P16354481047585352026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316571 (A330912 (n + 1) + 1).toNat

end

end A334937.P16354481047585352026

/-! ## A334937.P9009177837836751945

`A004271(A330912(n+1)+2)`
-/

namespace A334937.P9009177837836751945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (A330912 (n + 1) + 2).toNat

end

end A334937.P9009177837836751945

/-! ## A334937.P5939039893411991901

`A005843(A330912(Δ[n²]-n))`
-/

namespace A334937.P5939039893411991901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A330912 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A334937.P5939039893411991901

/-! ## A334937.P10962798878068938440

`A004273(A330912(n+1)+1)-1`
-/

namespace A334937.P10962798878068938440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A330912 (n + 1) + 1).toNat - 1

end

end A334937.P10962798878068938440

/-! ## A334937.P18157639869262656469

`A005408(A330912(n+1)-1)+1`
-/

namespace A334937.P18157639869262656469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A330912 (n + 1) - 1).toNat + 1

end

end A334937.P18157639869262656469

/-!
# A334938: Sum of the middle side lengths of all Heronian triangles with even sides and perimeter A334936(n).

The programs for A334938, there is no canonical definition to state claims against.
-/

/-! ## A334938.P993582974723231747

`2*A330915(n+1)`
-/

namespace A334938.P993582974723231747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A330915 (n + 1)

end

end A334938.P993582974723231747

/-! ## A334938.P6805992773064726085

`A004277(A330915(n+1))`
-/

namespace A334938.P6805992773064726085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A330915 (n + 1)).toNat

end

end A334938.P6805992773064726085

/-! ## A334938.P4096360087477297341

`A004275(A330915(n+1)+1)`
-/

namespace A334938.P4096360087477297341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A330915 (n + 1) + 1).toNat

end

end A334938.P4096360087477297341

/-! ## A334938.P14345132524706111438

`A051755(A330915(n+1)+1)`
-/

namespace A334938.P14345132524706111438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (A330915 (n + 1) + 1).toNat

end

end A334938.P14345132524706111438

/-! ## A334938.P16945795982054226635

`A316571(A330915(n+1)+1)`
-/

namespace A334938.P16945795982054226635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316571 (A330915 (n + 1) + 1).toNat

end

end A334938.P16945795982054226635

/-! ## A334938.P7362319435880261695

`A004271(A330915(n+1)+2)`
-/

namespace A334938.P7362319435880261695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (A330915 (n + 1) + 2).toNat

end

end A334938.P7362319435880261695

/-! ## A334938.P4361567860457758367

`A004273(A330915(n+1)+1)-1`
-/

namespace A334938.P4361567860457758367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A330915 (n + 1) + 1).toNat - 1

end

end A334938.P4361567860457758367

/-! ## A334938.P5716386230926069859

`A005843(A330915(n+1)+1)-2`
-/

namespace A334938.P5716386230926069859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A330915 (n + 1) + 1).toNat - 2

end

end A334938.P5716386230926069859

/-! ## A334938.P15725880461021050103

`A005843(A330915(n+1)%A001248(n+1)²)`
-/

namespace A334938.P15725880461021050103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.tmod (A330915 (n + 1)) (A001248 (n + 1) ^ 2)).toNat

end

end A334938.P15725880461021050103

/-!
# A334939: Sum of the largest side lengths of all Heronian triangles with even sides and perimeter A334936(n).

The programs for A334939, there is no canonical definition to state claims against.
-/

/-! ## A334939.P2762707516385971542

`2*A330916(n+1)`
-/

namespace A334939.P2762707516385971542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A330916 (n + 1)

end

end A334939.P2762707516385971542

/-! ## A334939.P5292157420011546508

`A004277(A330916(1+n))`
-/

namespace A334939.P5292157420011546508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A330916 (1 + n)).toNat

end

end A334939.P5292157420011546508

/-! ## A334939.P7128798561876797167

`A004275(A330916(n+1)+1)`
-/

namespace A334939.P7128798561876797167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A330916 (n + 1) + 1).toNat

end

end A334939.P7128798561876797167

/-! ## A334939.P12859573690595341551

`A051755(A330916(n+1)+1)`
-/

namespace A334939.P12859573690595341551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (A330916 (n + 1) + 1).toNat

end

end A334939.P12859573690595341551

/-! ## A334939.P16919401449327112970

`A316571(A330916(n+1)+1)`
-/

namespace A334939.P16919401449327112970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316571 (A330916 (n + 1) + 1).toNat

end

end A334939.P16919401449327112970

/-! ## A334939.P9591684124721555528

`A004271(A330916(n+1)+2)`
-/

namespace A334939.P9591684124721555528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (A330916 (n + 1) + 2).toNat

end

end A334939.P9591684124721555528

/-! ## A334939.P108168860959766493

`A330916(n+1)+A330916(-xor(n, -1))`
-/

namespace A334939.P108168860959766493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330916 (n + 1) + A330916 (-Int.xor (n : ℤ) (-1)).toNat

end

end A334939.P108168860959766493

/-! ## A334939.P5054379587410286497

`A005843(lcm((-1)^∏{e}[n, #], A330916(n+1)))`
-/

namespace A334939.P5054379587410286497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.lcm ((-1) ^ (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) (A330916 (n + 1)))

end

end A334939.P5054379587410286497

/-! ## A334939.P8546785292655584871

`A005843(A330916(n+1)/A007318(C(3, n)))`
-/

namespace A334939.P8546785292655584871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.roundAway ((A330916 (n + 1) : ℚ) / (A007318 (Nat.choose 3 n) : ℚ))).toNat

end

end A334939.P8546785292655584871

/-! ## A334939.P2929605904201146980

`A005843(A330916(n+1)^A007318(C(3, n)))`
-/

namespace A334939.P2929605904201146980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.roundAway ((A330916 (n + 1) : ℚ) ^ (A007318 (Nat.choose 3 n) : ℤ))).toNat

end

end A334939.P2929605904201146980

/-!
# A334940: Partial sums of A230595.

The programs for A334940, the canonical program `A334940.P16965108380832837690` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334940 has offset 1).

The definition of A334940 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072613, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A334940.P16965108380832837690

`2*A072613(n+1)+A000720(floor(sqrt(n+1)))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A334940

/-- `2*A072613(n+1)+A000720(floor(sqrt(n+1)))` -/
def P16965108380832837690.Spec : Prop :=
  ∀ n, P16965108380832837690.a n = A334940 (n + 1)

theorem P16965108380832837690.correct : P16965108380832837690.Spec := by
  intro n
  simp only [A334940, Nat.add_sub_cancel]

end A334940

/-! ## A334940.P15234154039550072915

`2*A072000(n+1)-A000720(floor(sqrt(n+1)))`
-/

namespace A334940.P15234154039550072915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072000 (n + 1) - A000720 (Nat.sqrt (n + 1))

end

end A334940.P15234154039550072915

namespace A334940

/-- `2*A072000(n+1)-A000720(floor(sqrt(n+1)))` -/
def P15234154039550072915.Spec : Prop :=
  ∀ n, P15234154039550072915.a n = A334940 (n + 1)

end A334940

/-! ## A334940.P9109627078636607318

`∑[A230595(n+1)]`
-/

namespace A334940.P9109627078636607318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334940.P9109627078636607318

namespace A334940

/-- `∑[A230595(n+1)]` -/
def P9109627078636607318.Spec : Prop :=
  ∀ n, P9109627078636607318.a n = A334940 (n + 1)

end A334940

/-! ## A334940.P7979884157744181430

`∑[∑{p}[n+1, gcd(n, #)]*A064911(n+1)]`
-/

namespace A334940.P7979884157744181430
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f2 n), Nat.gcd n p : ℕ) : ℤ) * A064911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334940.P7979884157744181430

namespace A334940

/-- `∑[∑{p}[n+1, gcd(n, #)]*A064911(n+1)]` -/
def P7979884157744181430.Spec : Prop :=
  ∀ n, P7979884157744181430.a n = A334940 (n + 1)

end A334940

/-! ## A334940.P12300855886700893842

`∑[A174956(A046523(n+1))]`
-/

namespace A334940.P12300855886700893842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174956 (A046523 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334940.P12300855886700893842

namespace A334940

/-- `∑[A174956(A046523(n+1))]` -/
def P12300855886700893842.Spec : Prop :=
  ∀ n, P12300855886700893842.a n = A334940 (n + 1)

end A334940

/-! ## A334940.P12567289437337675669

`∑[A174956(A071364(n+1))]`
-/

namespace A334940.P12567289437337675669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174956 (A071364 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334940.P12567289437337675669

namespace A334940

/-- `∑[A174956(A071364(n+1))]` -/
def P12567289437337675669.Spec : Prop :=
  ∀ n, P12567289437337675669.a n = A334940 (n + 1)

end A334940

/-! ## A334940.P7927320409342077582

`A072613(n+1)+A072000(n+1)`
-/

namespace A334940.P7927320409342077582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072613 (n + 1) + A072000 (n + 1)

end

end A334940.P7927320409342077582

namespace A334940

/-- `A072613(n+1)+A072000(n+1)` -/
def P7927320409342077582.Spec : Prop :=
  ∀ n, P7927320409342077582.a n = A334940 (n + 1)

end A334940

/-! ## A334940.P17298658272236573193

`∑[A280710(n+1)+A064911(n+1)]`
-/

namespace A334940.P17298658272236573193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280710 (n + 1) + A064911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334940.P17298658272236573193

namespace A334940

/-- `∑[A280710(n+1)+A064911(n+1)]` -/
def P17298658272236573193.Spec : Prop :=
  ∀ n, P17298658272236573193.a n = A334940 (n + 1)

end A334940

/-! ## A334940.P8518359760049329301

`∑[A001221(n+1)*A064911(n+1)]`
-/

namespace A334940.P8518359760049329301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) * A064911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334940.P8518359760049329301

namespace A334940

/-- `∑[A001221(n+1)*A064911(n+1)]` -/
def P8518359760049329301.Spec : Prop :=
  ∀ n, P8518359760049329301.a n = A334940 (n + 1)

end A334940

/-! ## A334940.P630392620639347930

`A056811(n+1)+2*A072613(n+1)`
-/

namespace A334940.P630392620639347930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 (n + 1) + 2 * A072613 (n + 1)

end

end A334940.P630392620639347930

namespace A334940

/-- `A056811(n+1)+2*A072613(n+1)` -/
def P630392620639347930.Spec : Prop :=
  ∀ n, P630392620639347930.a n = A334940 (n + 1)

end A334940

/-! ## A334940.P17174637455408736911

`2*A072000(n+1)-A056811(n+1)`
-/

namespace A334940.P17174637455408736911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072000 (n + 1) - A056811 (n + 1)

end

end A334940.P17174637455408736911

namespace A334940

/-- `2*A072000(n+1)-A056811(n+1)` -/
def P17174637455408736911.Spec : Prop :=
  ∀ n, P17174637455408736911.a n = A334940 (n + 1)

end A334940

/-! ## A334940.P17187446446104723070

`∑[(A008683(n+1)+1)*A303337(n+1)]`
-/

namespace A334940.P17187446446104723070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 1) + 1) * A303337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334940.P17187446446104723070

namespace A334940

/-- `∑[(A008683(n+1)+1)*A303337(n+1)]` -/
def P17187446446104723070.Spec : Prop :=
  ∀ n, P17187446446104723070.a n = A334940 (n + 1)

end A334940

/-! ## A334940.P6977400937352237404

`∑[(A000005(n+1)-2)*A303337(n+1)]`
-/

namespace A334940.P6977400937352237404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) - 2) * A303337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334940.P6977400937352237404

namespace A334940

/-- `∑[(A000005(n+1)-2)*A303337(n+1)]` -/
def P6977400937352237404.Spec : Prop :=
  ∀ n, P6977400937352237404.a n = A334940 (n + 1)

end A334940

/-! ## A334940.P17377895105886001192

`∑[A029833(A273013(n+1))]`
-/

namespace A334940.P17377895105886001192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029833 (A273013 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334940.P17377895105886001192

namespace A334940

/-- `∑[A029833(A273013(n+1))]` -/
def P17377895105886001192.Spec : Prop :=
  ∀ n, P17377895105886001192.a n = A334940 (n + 1)

end A334940

/-!
# A334941: For any n > 0, let w be the least positive number such that the values (a(n+1-w), ..., a(n-1), e) do not appear continuously in (a(1), ..., a(n-1)) for some e in {0, 1}; a(n) is the least such e.

The programs for A334941, there is no canonical definition to state claims against.
-/

/-! ## A334941.P2732095803293346661

`A295662(A299458(n+1))+A079101(n+1)`
-/

namespace A334941.P2732095803293346661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295662 (A299458 (n + 1)).toNat + A079101 (n + 1)

end

end A334941.P2732095803293346661

/-!
# A334944: For any n > 0, let w be the least positive number such that the values (a(n+1-w), ..., a(n-1), e) do not appear continuously in (a(1), ..., a(n-1)) for some e in 0..w-1; a(n) is the least such e.

The programs for A334944, there is no canonical definition to state claims against.
-/

/-! ## A334944.P13826937543856844584

`A276422(2*n+3)%A030548(A002182(n+1))`
-/

namespace A334944.P13826937543856844584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276422 (2 * n + 3)) (A030548 (A002182 (n + 1)).toNat)

end

end A334944.P13826937543856844584

/-! ## A334944.P3420997085943280315

`(n-1)%A094267(A337702(n+3))`
-/

namespace A334944.P3420997085943280315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) (A094267 (A337702 (n + 3)).toNat)

end

end A334944.P3420997085943280315

/-! ## A334944.P11314454462089937344

`and(A035214(n), A076314(A000073(n)))`
-/

namespace A334944.P11314454462089937344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035214 n) (A076314 (A000073 n).toNat)

end

end A334944.P11314454462089937344

/-! ## A334944.P6477684524150337422

`and(A035214(n), A228451(A022096(n)))`
-/

namespace A334944.P6477684524150337422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035214 n) (A228451 (A022096 n).toNat)

end

end A334944.P6477684524150337422

/-! ## A334944.P5491692987411251676

`A007318(A161831(n+1))%A043276(n+1)`
-/

namespace A334944.P5491692987411251676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 (A161831 (n + 1)).toNat) (A043276 (n + 1))

end

end A334944.P5491692987411251676

/-!
# A334946: Irregular triangle read by rows: T(n,k) is the number of partitions of n into k consecutive parts that differ by 6, and the first element of column k is in the row that is the k-th octagonal number (A000567).

The programs for A334946, there is no canonical definition to state claims against.
-/

/-! ## A334946.P669328949044324896

`round(atan(A334947(n+1)))`
-/

namespace A334946.P669328949044324896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A334947 (n + 1) : ℝ))

end

end A334946.P669328949044324896

/-! ## A334946.P12745320907122773439

`A007598(row(A334947(n+1)))`
-/

namespace A334946.P12745320907122773439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (SequenceMachineLib.triRow (A334947 (n + 1)).toNat)

end

end A334946.P12745320907122773439

/-! ## A334946.P2129710182327665161

`A319128(row(A334947(n+1)))²`
-/

namespace A334946.P2129710182327665161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319128 (SequenceMachineLib.triRow (A334947 (n + 1)).toNat) ^ 2

end

end A334946.P2129710182327665161

/-! ## A334946.P4401229287717141176

`A000217(row(row(A334947(n+1))))`
-/

namespace A334946.P4401229287717141176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.triRow (SequenceMachineLib.triRow (A334947 (n + 1)).toNat))

end

end A334946.P4401229287717141176

/-! ## A334946.P15166004607671243648

`A000578(row(row(A334947(n+1))))`
-/

namespace A334946.P15166004607671243648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.triRow (SequenceMachineLib.triRow (A334947 (n + 1)).toNat))

end

end A334946.P15166004607671243648

/-! ## A334946.P707389114634797988

`A333811(row(row(A334947(n+1))))`
-/

namespace A334946.P707389114634797988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333811 (SequenceMachineLib.triRow (SequenceMachineLib.triRow (A334947 (n + 1)).toNat))

end

end A334946.P707389114634797988

/-! ## A334946.P3377477410633398674

`ceil(A334947(n+1)/A000070(n))`
-/

namespace A334946.P3377477410633398674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334947 (n + 1) : ℚ) / (A000070 n : ℚ)⌉

end

end A334946.P3377477410633398674

/-! ## A334946.P3444617283703698676

`ceil(A334947(n+1)/A000712(n))`
-/

namespace A334946.P3444617283703698676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334947 (n + 1) : ℚ) / (A000712 n : ℚ)⌉

end

end A334946.P3444617283703698676

/-! ## A334946.P16051662393637848561

`ceil(A334947(n+1)/A001399(n))`
-/

namespace A334946.P16051662393637848561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334947 (n + 1) : ℚ) / (A001399 n : ℚ)⌉

end

end A334946.P16051662393637848561

/-! ## A334946.P7623589904958238875

`ceil(A334947(n+1)/A001523(n))`
-/

namespace A334946.P7623589904958238875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334947 (n + 1) : ℚ) / (A001523 n : ℚ)⌉

end

end A334946.P7623589904958238875

/-! ## A334946.P17708796673600888373

`ceil(A334947(n+1)/A001844(n))`
-/

namespace A334946.P17708796673600888373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334947 (n + 1) : ℚ) / (A001844 n : ℚ)⌉

end

end A334946.P17708796673600888373

/-! ## A334946.P2041277544368118924

`ceil(A334947(n+1)/A002522(n))`
-/

namespace A334946.P2041277544368118924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334947 (n + 1) : ℚ) / (A002522 n : ℚ)⌉

end

end A334946.P2041277544368118924

/-! ## A334946.P13039593806399124924

`ceil(A334947(n+1)/A004207(n))`
-/

namespace A334946.P13039593806399124924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334947 (n + 1) : ℚ) / (A004207 n : ℚ)⌉

end

end A334946.P13039593806399124924

/-! ## A334946.P16263597408354941497

`ceil(A334947(n+1)/A005914(n))`
-/

namespace A334946.P16263597408354941497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334947 (n + 1) : ℚ) / (A005914 n : ℚ)⌉

end

end A334946.P16263597408354941497

/-! ## A334946.P2701435564636889390

`ceil(A334947(n+1)/A008706(n))`
-/

namespace A334946.P2701435564636889390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334947 (n + 1) : ℚ) / (A008706 n : ℚ)⌉

end

end A334946.P2701435564636889390

/-! ## A334946.P6654945621041537678

`ceil(A334947(n+1)/A016116(n))`
-/

namespace A334946.P6654945621041537678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334947 (n + 1) : ℚ) / (A016116 n : ℚ)⌉

end

end A334946.P6654945621041537678

/-! ## A334946.P12786985541367023751

`ceil(A334947(n+1)/A016945(n))`
-/

namespace A334946.P12786985541367023751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334947 (n + 1) : ℚ) / (A016945 n : ℚ)⌉

end

end A334946.P12786985541367023751

/-! ## A334946.P18098478963143535181

`ceil(A334947(n+1)/A031929(n))`
-/

namespace A334946.P18098478963143535181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334947 (n + 1) : ℚ) / (A031929 n : ℚ)⌉

end

end A334946.P18098478963143535181

/-! ## A334946.P395552613183697493

`ceil(A334947(n+1)/A033568(n))`
-/

namespace A334946.P395552613183697493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334947 (n + 1) : ℚ) / (A033568 n : ℚ)⌉

end

end A334946.P395552613183697493

/-! ## A334946.P12804368157845536762

`ceil(A334947(n+1)/A036469(n))`
-/

namespace A334946.P12804368157845536762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334947 (n + 1) : ℚ) / (A036469 n : ℚ)⌉

end

end A334946.P12804368157845536762

/-!
# A334947: Irregular triangle read by rows: T(n,k) is the number of parts in the partition of n into k consecutive parts that differ by 6, n >= 1, k >= 1, and the first element of column k is in the row that is the k-th octagonal number (A000567).

The programs for A334947, there is no canonical definition to state claims against.
-/

/-! ## A334947.P16855112544362905153

`gcd(A010815(A327779(n)), A112553(3*(n+1)))`
-/

namespace A334947.P16855112544362905153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010815 (A327779 n).toNat) (A112553 (3 * (n + 1)))

end

end A334947.P16855112544362905153

/-! ## A334947.P14410031028056470323

`A104230((n+1)*a(n-2)+2)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A334947.P14410031028056470323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A104230 ((n + 1 : ℤ) * a (n - 2) + 2).toNat - a (n - 2)

end

end A334947.P14410031028056470323

/-! ## A334947.P8639601406991663912

`gcd(A007877(n+2), A121373(A000094(n+1)))`
-/

namespace A334947.P8639601406991663912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007877 (n + 2)) (A121373 (A000094 (n + 1)).toNat)

end

end A334947.P8639601406991663912

/-! ## A334947.P2980921183553652495

`Δ[A353809(A060546(n)+1)]+1`
-/

namespace A334947.P2980921183553652495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353809 (A060546 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A334947.P2980921183553652495

/-! ## A334947.P8987153996956445693

`A000122(A077957(n)%A292461(n))`
-/

namespace A334947.P8987153996956445693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (Int.tmod (A077957 n) (A292461 n)).toNat

end

end A334947.P8987153996956445693

/-!
# A334948: a(n) is the number of partitions of n into consecutive parts that differ by 6.

The programs for A334948, there is no canonical definition to state claims against.
-/

/-! ## A334948.P1879892497998360699

`floor(sqrt(A347440(n+1)+A334949(n+1)))`
-/

namespace A334948.P1879892497998360699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A347440 (n + 1) + A334949 (n + 1))

end

end A334948.P1879892497998360699

/-! ## A334948.P15089970652726954059

`A334953(n+1)/(n+1)`
-/

namespace A334948.P15089970652726954059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334953 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A334948.P15089970652726954059

/-! ## A334948.P13505996244989828393

`A265363(((n+1)*A334953(n+1))%(n+2))`
-/

namespace A334948.P13505996244989828393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265363 (Int.tmod ((n + 1 : ℤ) * A334953 (n + 1)) (n + 2 : ℤ)).toNat

end

end A334948.P13505996244989828393

/-! ## A334948.P2459615315976930140

`A008586(A334953(n+1))%A004767(n)`
-/

namespace A334948.P2459615315976930140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008586 (A334953 (n + 1)).toNat) (A004767 n)

end

end A334948.P2459615315976930140

/-! ## A334948.P10035365334848778650

`A028310(A334953(n+1)%A028310(n))`
-/

namespace A334948.P10035365334848778650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A334953 (n + 1)) (A028310 n)).toNat

end

end A334948.P10035365334848778650

/-! ## A334948.P17336569229303664499

`A317359(A334949(n+1)%A119876(n))`
-/

namespace A334948.P17336569229303664499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317359 (Int.tmod (A334949 (n + 1)) (A119876 n)).toNat

end

end A334948.P17336569229303664499

/-! ## A334948.P17436031227751485310

`A003056(A334949(n+1))%A000419(A325353(n))`
-/

namespace A334948.P17436031227751485310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 (A334949 (n + 1)).toNat) (A000419 (A325353 n).toNat)

end

end A334948.P17436031227751485310

/-!
# A334949: a(n) is the total number of parts in all partitions of n into consecutive parts that differ by 6.

The programs for A334949, there is no canonical definition to state claims against.
-/

/-! ## A334949.P14121696367574947481

`A122298(A095999(n+1))+A122257(A122298(3*(n+1)))`
-/

namespace A334949.P14121696367574947481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122298 (A095999 (n + 1)).toNat + A122257 (A122298 (3 * (n + 1))).toNat

end

end A334949.P14121696367574947481

/-! ## A334949.P3891632132483447207

`A334732(A154279(n+1))`
-/

namespace A334949.P3891632132483447207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334732 (A154279 (n + 1)).toNat

end

end A334949.P3891632132483447207

/-! ## A334949.P16535543960869930878

`A306333(A114103(n+1))`
-/

namespace A334949.P16535543960869930878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306333 (A114103 (n + 1)).toNat

end

end A334949.P16535543960869930878

/-! ## A334949.P8217754447085600169

`A329320(A318588(n+1))`
-/

namespace A334949.P8217754447085600169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329320 (A318588 (n + 1)).toNat

end

end A334949.P8217754447085600169

/-! ## A334949.P14500704461953448120

`A093148(A322288(n+1))`
-/

namespace A334949.P14500704461953448120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093148 (A322288 (n + 1)).toNat

end

end A334949.P14500704461953448120

/-!
# A334950: Pairs (a,b) where "a" is the smallest candidate for the n-th term of Recamán's sequence and "b" is the n-th term of Recamán's sequence (A005132).

The programs for A334950, there is no canonical definition to state claims against.
-/

/-! ## A334950.P4901616084062910452

`A063733(ceil(n/2))-A158416(n)`
-/

namespace A334950.P4901616084062910452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 ⌈(n : ℚ) / 2⌉.toNat - A158416 n

end

end A334950.P4901616084062910452

/-! ## A334950.P4427460303269194296

`A334951(round(n/2))+∑[A001057(n)]`
-/

namespace A334950.P4427460303269194296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334951 (SequenceMachineLib.roundAway ((n : ℚ) / 2)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334950.P4427460303269194296

/-! ## A334950.P622713310272810790

`A063733(A065033(n))-(A142150(n)+1)`
-/

namespace A334950.P622713310272810790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 (A065033 n).toNat - (A142150 n + 1)

end

end A334950.P622713310272810790

/-! ## A334950.P9354498610793626720

`A063733(A065033(n))-A152271(n+1)`
-/

namespace A334950.P9354498610793626720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 (A065033 n).toNat - A152271 (n + 1)

end

end A334950.P9354498610793626720

/-! ## A334950.P1453189167120599643

`A005132(A140106(n+1))-A142150(n)`
-/

namespace A334950.P1453189167120599643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (A140106 (n + 1)).toNat - A142150 n

end

end A334950.P1453189167120599643

/-! ## A334950.P8663982745409361843

`A063733(A110654(n))-(A142150(n)+1)`
-/

namespace A334950.P8663982745409361843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 (A110654 n).toNat - (A142150 n + 1)

end

end A334950.P8663982745409361843

/-! ## A334950.P16955483072931492062

`A063733(A065033(n))-A057979(n+3)`
-/

namespace A334950.P16955483072931492062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 (A065033 n).toNat - A057979 (n + 3)

end

end A334950.P16955483072931492062

/-! ## A334950.P13202017523012215703

`A334951(A110654(n))+n%2*A008619(n)`
-/

namespace A334950.P13202017523012215703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334951 (A110654 n).toNat + ((n % 2 : ℕ) : ℤ) * A008619 n

end

end A334950.P13202017523012215703

/-! ## A334950.P1565209899143970988

`∑[A334952(abs(1-n))]+1`
-/

namespace A334950.P1565209899143970988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334952 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A334950.P1565209899143970988

/-! ## A334950.P9762441190290536633

`∑[A334952(A004273(n)-n)]`
-/

namespace A334950.P9762441190290536633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334952 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334950.P9762441190290536633

/-!
# A334951: a(n) is the smallest candidate for the n-th term of Recamán's sequence A005132.

The programs for A334951, there is no canonical definition to state claims against.
-/

/-! ## A334951.P17699726501461286051

`A063733(n)-(1+n)`
-/

namespace A334951.P17699726501461286051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 n - (1 + n : ℤ)

end

end A334951.P17699726501461286051

/-! ## A334951.P17541907515761221498

`A005132(floor(n²/(n+1)))-n`
-/

namespace A334951.P17541907515761221498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat - (n : ℤ)

end

end A334951.P17541907515761221498

/-! ## A334951.P3236895148040882784

`A005132(n)-n-Δ[A063733(n)]`
-/

namespace A334951.P3236895148040882784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 n - (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A334951.P3236895148040882784

/-! ## A334951.P6982654234888096255

`A063733(n)-1-A061579(A061579(n))`
-/

namespace A334951.P6982654234888096255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 n - 1 - A061579 (A061579 n).toNat

end

end A334951.P6982654234888096255

/-! ## A334951.P12801203128197851238

`A023443(A063733(n))-n`
-/

namespace A334951.P12801203128197851238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A063733 n).toNat - (n : ℤ)

end

end A334951.P12801203128197851238

/-! ## A334951.P13042376696633926480

`A066201(∑[n]+n)-(n+1)`
-/

namespace A334951.P13042376696633926480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066201 (∑ j ∈ Finset.range (n + 1), f1 j + n) - (n + 1 : ℤ)

end

end A334951.P13042376696633926480

/-!
# A334952: First differences of A334950.

The programs for A334952, there is no canonical definition to state claims against.
-/

/-! ## A334952.P10781375834667232237

`Δ[A334950(n)]`
-/

namespace A334952.P10781375834667232237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334952.P10781375834667232237

/-! ## A334952.P8274753383062680988

`A334950(n+1)-A334950(n)`
-/

namespace A334952.P8274753383062680988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334950 (n + 1) - A334950 n

end

end A334952.P8274753383062680988

/-! ## A334952.P17595800113135945836

`Δ[A063733(ceil(n/2))-A158416(n)]`
-/

namespace A334952.P17595800113135945836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 ⌈(n : ℚ) / 2⌉.toNat - A158416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334952.P17595800113135945836

/-! ## A334952.P6358339134793385401

`Δ[A063733(A065033(n))]-A001057(n)`
-/

namespace A334952.P6358339134793385401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001057 n

end

end A334952.P6358339134793385401

/-! ## A334952.P1915513764330989006

`Δ[A063733(A110654(n))]-A001057(n)`
-/

namespace A334952.P1915513764330989006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 (A110654 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001057 n

end

end A334952.P1915513764330989006

/-! ## A334952.P14890081164637148913

`Δ[A063733(A065033(n))-A142150(n)]`
-/

namespace A334952.P14890081164637148913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 (A065033 n).toNat - A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334952.P14890081164637148913

/-! ## A334952.P8712956562237633712

`Δ[A063733(A110654(n))-A142150(n)]`
-/

namespace A334952.P8712956562237633712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 (A110654 n).toNat - A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334952.P8712956562237633712

/-! ## A334952.P8694370601211267617

`Δ[A063733(A065033(n))-(n-A026741(n))]`
-/

namespace A334952.P8694370601211267617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 (A065033 n).toNat - ((n : ℤ) - A026741 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334952.P8694370601211267617

/-!
# A334953: a(n) is the sum of all parts of all partitions of n into consecutive parts that differ by 6.

The programs for A334953, there is no canonical definition to state claims against.
-/

/-! ## A334953.P16453617623984891340

`(n+1)*A334948(n+1)`
-/

namespace A334953.P16453617623984891340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A334948 (n + 1)

end

end A334953.P16453617623984891340

/-! ## A334953.P13460302005360160696

`A075362(A334948(n+1)+∑[n])`
-/

namespace A334953.P13460302005360160696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (A334948 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A334953.P13460302005360160696

/-! ## A334953.P8688109354979475274

`log2(A000079(n+1)^A334948(n+1))`
-/

namespace A334953.P8688109354979475274
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A000079 (n + 1) : ℚ) ^ (A334948 (n + 1) : ℤ) : ℝ)

end

end A334953.P8688109354979475274

/-! ## A334953.P15781709337962437856

`A000027(n+1)/A334948(n+1)^(-1)`
-/

namespace A334953.P15781709337962437856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A334948 (n + 1) : ℚ) ^ (-1 : ℤ)

end

end A334953.P15781709337962437856

/-! ## A334953.P5886561292536060211

`(n+1)*floor(sqrt(A347440(n+1)+A334949(n+1)))`
-/

namespace A334953.P5886561292536060211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.sqrt (A347440 (n + 1) + A334949 (n + 1))

end

end A334953.P5886561292536060211

/-!
# A334954: a(n) is 1 plus the number of divisors of n.

The programs for A334954, the canonical program `A334954.P6871016967396285998` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334954 has offset 1).

The definition of A334954 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A334954.P6646711799616051857

`1+A000005(n+1)`
-/

namespace A334954.P6646711799616051857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000005 (n + 1)

end

end A334954.P6646711799616051857

namespace A334954

/-- `1+A000005(n+1)` -/
def P6646711799616051857.Spec : Prop :=
  ∀ n, P6646711799616051857.a n = A334954 (n + 1)

end A334954

/-! ## A334954.P6871016967396285998

`A337360(n+1)/A000203(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A334954

/-- `A337360(n+1)/A000203(n+1)` -/
def P6871016967396285998.Spec : Prop :=
  ∀ n, P6871016967396285998.a n = (A334954 (n + 1) : ℚ)

end A334954

/-! ## A334954.P2426766256458622790

`∑{d}[n+1, ceil(2/#)]`
-/

namespace A334954.P2426766256458622790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈2 / (d : ℚ)⌉

end

end A334954.P2426766256458622790

namespace A334954

/-- `∑{d}[n+1, ceil(2/#)]` -/
def P2426766256458622790.Spec : Prop :=
  ∀ n, P2426766256458622790.a n = A334954 (n + 1)

end A334954

/-! ## A334954.P8450949425544421725

`ceil(∑{d}[n+1, cosh(acot(#))])`
-/

namespace A334954.P8450949425544421725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ d ∈ Nat.divisors (f1 n), Real.cosh (SequenceMachineLib.acot (d : ℝ))⌉

end

end A334954.P8450949425544421725

namespace A334954

/-- `ceil(∑{d}[n+1, cosh(acot(#))])` -/
def P8450949425544421725.Spec : Prop :=
  ∀ n, P8450949425544421725.a n = A334954 (n + 1)

end A334954

/-! ## A334954.P13767853002786484341

`1+∏{e}[n+1, #+1]`
-/

namespace A334954.P13767853002786484341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A334954.P13767853002786484341

namespace A334954

/-- `1+∏{e}[n+1, #+1]` -/
def P13767853002786484341.Spec : Prop :=
  ∀ n, (P13767853002786484341.a n : ℤ) = A334954 (n + 1)

end A334954

/-! ## A334954.P13939420659970392114

`∑{d}[n+1, gcd(n, #)]+1`
-/

namespace A334954.P13939420659970392114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d + 1

end

end A334954.P13939420659970392114

namespace A334954

/-- `∑{d}[n+1, gcd(n, #)]+1` -/
def P13939420659970392114.Spec : Prop :=
  ∀ n, (P13939420659970392114.a n : ℤ) = A334954 (n + 1)

end A334954

/-! ## A334954.P15099663837712196115

`1-∑{d}[n+1, or(#, -1)]`
-/

namespace A334954.P15099663837712196115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ d ∈ Nat.divisors (f1 n), Int.lor (d : ℤ) (-1)

end

end A334954.P15099663837712196115

namespace A334954

/-- `1-∑{d}[n+1, or(#, -1)]` -/
def P15099663837712196115.Spec : Prop :=
  ∀ n, P15099663837712196115.a n = A334954 (n + 1)

end A334954

/-! ## A334954.P16800731423774381525

`∑{d}[n+1, and(1, #)!]+1`
-/

namespace A334954.P16800731423774381525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.factorial (Nat.land 1 d) + 1

end

end A334954.P16800731423774381525

namespace A334954

/-- `∑{d}[n+1, and(1, #)!]+1` -/
def P16800731423774381525.Spec : Prop :=
  ∀ n, (P16800731423774381525.a n : ℤ) = A334954 (n + 1)

end A334954

/-! ## A334954.P12223606105258321276

`∑{d}[n+1, n²%#]+2`
-/

namespace A334954.P12223606105258321276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), n ^ 2 % d + 2

end

end A334954.P12223606105258321276

namespace A334954

/-- `∑{d}[n+1, n²%#]+2` -/
def P12223606105258321276.Spec : Prop :=
  ∀ n, (P12223606105258321276.a n : ℤ) = A334954 (n + 1)

end A334954

/-! ## A334954.P5479639686239112636

`2^∑{e}[n+1, log2(#+1)]+1`
-/

namespace A334954.P5479639686239112636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (Nat.factorization (f1 n) p + 1 : ℝ)) + 1

end

end A334954.P5479639686239112636

namespace A334954

/-- `2^∑{e}[n+1, log2(#+1)]+1` -/
def P5479639686239112636.Spec : Prop :=
  ∀ n, P5479639686239112636.a n = (A334954 (n + 1) : ℝ)

end A334954

/-! ## A334954.P9244005001311473420

`∑{d}[n+1, val(#, n+2)!]+1`
-/

namespace A334954.P9244005001311473420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.factorial (SequenceMachineLib.valuation d (n + 2)) + 1

end

end A334954.P9244005001311473420

namespace A334954

/-- `∑{d}[n+1, val(#, n+2)!]+1` -/
def P9244005001311473420.Spec : Prop :=
  ∀ n, (P9244005001311473420.a n : ℤ) = A334954 (n + 1)

end A334954

/-! ## A334954.P17480912381904564713

`∑{d}[n+1, C(#, n+1)!]+1`
-/

namespace A334954.P17480912381904564713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.factorial (Nat.choose d (n + 1)) + 1

end

end A334954.P17480912381904564713

namespace A334954

/-- `∑{d}[n+1, C(#, n+1)!]+1` -/
def P17480912381904564713.Spec : Prop :=
  ∀ n, (P17480912381904564713.a n : ℤ) = A334954 (n + 1)

end A334954

/-! ## A334954.P15206362871765464728

`Δ[A006218(n)]+1`
-/

namespace A334954.P15206362871765464728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A334954.P15206362871765464728

namespace A334954

/-- `Δ[A006218(n)]+1` -/
def P15206362871765464728.Spec : Prop :=
  ∀ n, P15206362871765464728.a n = A334954 (n + 1)

end A334954

/-! ## A334954.P4322647496865927776

`Δ[A054519(n)]+1`
-/

namespace A334954.P4322647496865927776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A334954.P4322647496865927776

namespace A334954

/-- `Δ[A054519(n)]+1` -/
def P4322647496865927776.Spec : Prop :=
  ∀ n, P4322647496865927776.a n = A334954 (n + 1)

end A334954

/-! ## A334954.P7383250078378419597

`Δ[A226355(n)/4]`
-/

namespace A334954.P7383250078378419597
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226355 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334954.P7383250078378419597

namespace A334954

/-- `Δ[A226355(n)/4]` -/
def P7383250078378419597.Spec : Prop :=
  ∀ n, P7383250078378419597.a n = (A334954 (n + 1) : ℚ)

end A334954

/-! ## A334954.P10575455024301404809

`A032741(n+1)+2`
-/

namespace A334954.P10575455024301404809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + 2

end

end A334954.P10575455024301404809

namespace A334954

/-- `A032741(n+1)+2` -/
def P10575455024301404809.Spec : Prop :=
  ∀ n, P10575455024301404809.a n = A334954 (n + 1)

end A334954

/-! ## A334954.P9565510904049378

`3-A378216(n+1)`
-/

namespace A334954.P9565510904049378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A378216 (n + 1)

end

end A334954.P9565510904049378

namespace A334954

/-- `3-A378216(n+1)` -/
def P9565510904049378.Spec : Prop :=
  ∀ n, P9565510904049378.a n = A334954 (n + 1)

end A334954

/-! ## A334954.P15572997781401903005

`A325939(4*(n+1))`
-/

namespace A334954.P15572997781401903005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325939 (4 * (n + 1))

end

end A334954.P15572997781401903005

namespace A334954

/-- `A325939(4*(n+1))` -/
def P15572997781401903005.Spec : Prop :=
  ∀ n, P15572997781401903005.a n = A334954 (n + 1)

end A334954

/-! ## A334954.P9215583035454491813

`A062249(n+1)-n`
-/

namespace A334954.P9215583035454491813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062249 (n + 1) - (n : ℤ)

end

end A334954.P9215583035454491813

namespace A334954

/-- `A062249(n+1)-n` -/
def P9215583035454491813.Spec : Prop :=
  ∀ n, P9215583035454491813.a n = A334954 (n + 1)

end A334954

/-! ## A334954.P17645351443496314292

`abs(Δ[A139432(n)])+1`
-/

namespace A334954.P17645351443496314292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139432 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| + 1

end

end A334954.P17645351443496314292

namespace A334954

/-- `abs(Δ[A139432(n)])+1` -/
def P17645351443496314292.Spec : Prop :=
  ∀ n, P17645351443496314292.a n = A334954 (n + 1)

end A334954

/-!
# A334955: Number of 1's in n-th string when A000002 is expressed as 1, 2, 2, 11, 21, 221, 22112, 11221211, 21221121121, 2212211212212112, ....

The programs for A334955, there is no canonical definition to state claims against.
-/

/-! ## A334955.P1308888252719608659

`Δ[A111124(n)]`
-/

namespace A334955.P1308888252719608659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334955.P1308888252719608659

/-! ## A334955.P3129016457228651413

`A111123(n)-Δ[A111123(n)]`
-/

namespace A334955.P3129016457228651413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111123 n - (f1 (n + 1) - f1 n)

end

end A334955.P3129016457228651413

/-! ## A334955.P2049858678006616920

`A111124(n+1)-A111124(n)`
-/

namespace A334955.P2049858678006616920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111124 (n + 1) - A111124 n

end

end A334955.P2049858678006616920

/-! ## A334955.P4339856401033651881

`Δ[A042942(n+1)-Δ[A042942(n+1)]]`
-/

namespace A334955.P4339856401033651881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042942 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042942 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334955.P4339856401033651881

/-! ## A334955.P6955411512988078330

`A111123(n)+A111123(n)-A111123(n+1)`
-/

namespace A334955.P6955411512988078330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111123 n + (A111123 n - A111123 (n + 1))

end

end A334955.P6955411512988078330

/-!
# A334956: For any n > 0, let w be the least positive number such that the values (a(n+1-w), ..., a(n-1), e) do not appear continuously in (a(1), ..., a(n-1)) for some e in 0..w-1; a(n) is the greatest such e.

The programs for A334956, there is no canonical definition to state claims against.
-/

/-! ## A334956.P8770705590535749784

`A287407(A083947(3*n+1)+A001924(n)+1)`
-/

namespace A334956.P8770705590535749784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287407 (A083947 (3 * n + 1) + A001924 n + 1).toNat

end

end A334956.P8770705590535749784

/-! ## A334956.P4795209414924369472

`A005089(or(A004013(n), A169964(n+1)))`
-/

namespace A334956.P4795209414924369472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005089 (Int.lor (A004013 n) (A169964 (n + 1))).toNat

end

end A334956.P4795209414924369472

/-! ## A334956.P646999492652105000

`A001221(A151821(n+1)+A088709(n+1))-1`
-/

namespace A334956.P646999492652105000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A151821 (n + 1) + A088709 (n + 1)).toNat - 1

end

end A334956.P646999492652105000

/-! ## A334956.P2160319798858007354

`A174886(∑[A175579(n+1)])`
-/

namespace A334956.P2160319798858007354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174886 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A334956.P2160319798858007354

/-! ## A334956.P5624519112888254339

`A056169(A039812(n+1)+n)`
-/

namespace A334956.P5624519112888254339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A039812 (n + 1) + (n : ℤ)).toNat

end

end A334956.P5624519112888254339

/-!
# A334957: Triangular array read by rows. T(n,k) is the number of labeled digraphs on n nodes with exactly k self loops, n>=0, 0<=k<=n.

The programs for A334957, there is no canonical definition to state claims against.
-/

/-! ## A334957.P17765620606751972474

`4^(n-A051162(n))*A007318(n)`
-/

namespace A334957.P17765620606751972474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ ((n : ℤ) - A051162 n : ℤ) * (A007318 n : ℚ)

end

end A334957.P17765620606751972474

/-! ## A334957.P17283747379896066626

`A007318(n)*A053763(A003056(n))`
-/

namespace A334957.P17283747379896066626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A053763 (A003056 n).toNat

end

end A334957.P17283747379896066626

/-! ## A334957.P15856775347745253097

`A007318(n)*A157784(A057944(n))`
-/

namespace A334957.P15856775347745253097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A157784 (A057944 n).toNat

end

end A334957.P15856775347745253097

/-! ## A334957.P15930749741204168305

`A053763(A003056(n))*A374452(n)`
-/

namespace A334957.P15930749741204168305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053763 (A003056 n).toNat * A374452 n

end

end A334957.P15930749741204168305

/-! ## A334957.P15797486771589521406

`A007318(n)*A053763(∑[A073424(n)])`
-/

namespace A334957.P15797486771589521406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A053763 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A334957.P15797486771589521406

/-!
# A334958: GCD of consecutive terms of the factorial times the alternating harmonic series.

The programs for A334958, the canonical program `A334958.P4987794612350954490` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334958 has offset 1).

The definition of A334958 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A334958.P4987794612350954490

`gcd(A024167(n+1), (n+1)!)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A334958

/-- `gcd(A024167(n+1), (n+1)!)` -/
def P4987794612350954490.Spec : Prop :=
  ∀ n, (P4987794612350954490.a n : ℤ) = A334958 (n + 1)

theorem P4987794612350954490.correct : P4987794612350954490.Spec := by
  intro n
  simp only [A334958, Nat.add_sub_cancel]

end A334958

/-! ## A334958.P1332391035162843002

`gcd(A024168(n+2), A024168(n+1))`
-/

namespace A334958.P1332391035162843002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A024168 (n + 2)) (A024168 (n + 1))

end

end A334958.P1332391035162843002

namespace A334958

/-- `gcd(A024168(n+2), A024168(n+1))` -/
def P1332391035162843002.Spec : Prop :=
  ∀ n, (P1332391035162843002.a n : ℤ) = A334958 (n + 1)

end A334958

/-! ## A334958.P14260441924385074926

`∏[A335023(round(acot(n)+n))]`
-/

namespace A334958.P14260441924385074926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335023 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A334958.P14260441924385074926

namespace A334958

/-- `∏[A335023(round(acot(n)+n))]` -/
def P14260441924385074926.Spec : Prop :=
  ∀ n, P14260441924385074926.a n = A334958 (n + 1)

end A334958

/-! ## A334958.P16221954328020966418

`a(n-1)*A335023(n)` with `a(0)=1`
-/

namespace A334958.P16221954328020966418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A335023 n

end

end A334958.P16221954328020966418

namespace A334958

/-- `a(n-1)*A335023(n)` -/
def P16221954328020966418.Spec : Prop :=
  ∀ n, P16221954328020966418.a n = A334958 (n + 1)

end A334958

/-! ## A334958.P15544420062253757443

`∏[A335023(A028310(n))]`
-/

namespace A334958.P15544420062253757443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335023 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A334958.P15544420062253757443

namespace A334958

/-- `∏[A335023(A028310(n))]` -/
def P15544420062253757443.Spec : Prop :=
  ∀ n, P15544420062253757443.a n = A334958 (n + 1)

end A334958

/-! ## A334958.P7371169052437056136

`∏[A335023(A233583(n+1))]`
-/

namespace A334958.P7371169052437056136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335023 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A334958.P7371169052437056136

namespace A334958

/-- `∏[A335023(A233583(n+1))]` -/
def P7371169052437056136.Spec : Prop :=
  ∀ n, P7371169052437056136.a n = A334958 (n + 1)

end A334958

/-! ## A334958.P10446228605094644464

`A025527(n+1)*A269626(n+1)`
-/

namespace A334958.P10446228605094644464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025527 (n + 1) * A269626 (n + 1)

end

end A334958.P10446228605094644464

namespace A334958

/-- `A025527(n+1)*A269626(n+1)` -/
def P10446228605094644464.Spec : Prop :=
  ∀ n, P10446228605094644464.a n = A334958 (n + 1)

end A334958

/-! ## A334958.P2147214793689201335

`A003418(n+1)/A058312(n+1)*A025527(n+1)`
-/

namespace A334958.P2147214793689201335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 1) : ℚ) / (A058312 (n + 1) : ℚ) * (A025527 (n + 1) : ℚ)

end

end A334958.P2147214793689201335

namespace A334958

/-- `A003418(n+1)/A058312(n+1)*A025527(n+1)` -/
def P2147214793689201335.Spec : Prop :=
  ∀ n, P2147214793689201335.a n = (A334958 (n + 1) : ℚ)

end A334958

/-! ## A334958.P3446183984748410408

`∏[A335023(n+1)]/A335023(n+1)`
-/

namespace A334958.P3446183984748410408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335023 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A335023 (n + 1) : ℚ)

end

end A334958.P3446183984748410408

namespace A334958

/-- `∏[A335023(n+1)]/A335023(n+1)` -/
def P3446183984748410408.Spec : Prop :=
  ∀ n, P3446183984748410408.a n = (A334958 (n + 1) : ℚ)

end A334958

/-! ## A334958.P15100414759746560465

`A024167(n+1)/A058313(n+1)`
-/

namespace A334958.P15100414759746560465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024167 (n + 1) : ℚ) / (A058313 (n + 1) : ℚ)

end

end A334958.P15100414759746560465

namespace A334958

/-- `A024167(n+1)/A058313(n+1)` -/
def P15100414759746560465.Spec : Prop :=
  ∀ n, P15100414759746560465.a n = (A334958 (n + 1) : ℚ)

end A334958

/-!
# A334964: Numbers that are the sum of three coprime positive cubes.

The programs for A334964, there is no canonical definition to state claims against.
-/

/-! ## A334964.P11128434445875090211

`eq[A025456(n), A133380(A294333(n))]`
-/

namespace A334964.P11128434445875090211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025456 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133380 (A294333 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334964.P11128434445875090211

/-! ## A334964.P4596720017254498038

`lt[A004137(A294333(n)), A051344(n)]`
-/

namespace A334964.P4596720017254498038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004137 (A294333 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051344 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334964.P4596720017254498038

/-! ## A334964.P17248226277852410668

`A003072(lt[A000931(n+1), A286145(n)])`
-/

namespace A334964.P17248226277852410668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003072 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A334964.P17248226277852410668

/-! ## A334964.P7745311919089620812

`record[A019555(A003072(n+1)²)]`
-/

namespace A334964.P7745311919089620812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A003072 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334964.P7745311919089620812

/-! ## A334964.P17026570933844402935

`record[A019555(A024981(n+1)²)]`
-/

namespace A334964.P17026570933844402935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A024981 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334964.P17026570933844402935

/-!
# A334965: Numbers with strictly increasing prime multiplicities.

The programs for A334965, there is no canonical definition to state claims against.
-/

/-! ## A334965.P666497259827241212

`record[A327498(A304678(n+1))]`
-/

namespace A334965.P666497259827241212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327498 (A304678 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334965.P666497259827241212

/-! ## A334965.P16576291423117988120

`filter[A304678(n+1), A351564(#)]`
-/

namespace A334965.P16576291423117988120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304678 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A334965.P16576291423117988120

/-! ## A334965.P653210664203888182

`filter[A362619(n+1), A351564(#)]`
-/

namespace A334965.P653210664203888182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A334965.P653210664203888182

/-! ## A334965.P7770616605921106096

`∩[A130091(n+1), A304678(n+1)]`
-/

namespace A334965.P7770616605921106096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334965.P7770616605921106096

/-! ## A334965.P2935589513992949209

`∪[A000961(n+1), A097319(n+1)]`
-/

namespace A334965.P2935589513992949209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A334965.P2935589513992949209

/-! ## A334965.P6147072915490233932

`record[A052126(n+1)*A079879(n+1)]`
-/

namespace A334965.P6147072915490233932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1) * A079879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334965.P6147072915490233932

/-! ## A334965.P12921124711379852623

`record[A342768(n+1)/A079880(n+1)]`
-/

namespace A334965.P12921124711379852623
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342768 (n + 1) : ℚ) / (A079880 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334965.P12921124711379852623

/-! ## A334965.P18440701300452289248

`record[gcd(A085079(n+1), A327498(n+1))]`
-/

namespace A334965.P18440701300452289248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A085079 (n + 1)) (A327498 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334965.P18440701300452289248

/-! ## A334965.P9668369300681825681

`record[lcm(A053585(n+1), A079880(n+1))]`
-/

namespace A334965.P9668369300681825681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A053585 (n + 1)) (A079880 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334965.P9668369300681825681

/-! ## A334965.P17826819175839585735

`eq[A006530(n+1), A079879(n+1)]+1`
-/

namespace A334965.P17826819175839585735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079879 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A334965.P17826819175839585735

/-!
# A334966: Numbers k such that the k-th composition in standard order (row k of A066099) has weakly decreasing non-adjacent parts.

The programs for A334966, there is no canonical definition to state claims against.
-/

/-! ## A334966.P3237442804213167197

`lt[Δ[A344947(n)], A336366(n+1)]`
-/

namespace A334966.P3237442804213167197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344947 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336366 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A334966.P3237442804213167197

/-! ## A334966.P16959504932542229760

`lt[A361808(A005940(n+1)), A353825(2*(n+2))]`
-/

namespace A334966.P16959504932542229760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361808 (A005940 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353825 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334966.P16959504932542229760

/-! ## A334966.P16061220971832194614

`lt[A086141(n+1), A168380(n+1)]`
-/

namespace A334966.P16061220971832194614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168380 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334966.P16061220971832194614

/-! ## A334966.P17990814300994347121

`lt[A086141(n+1), A296713(n+1)²]`
-/

namespace A334966.P17990814300994347121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296713 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334966.P17990814300994347121

/-! ## A334966.P15056552066102210984

`lt[A086141(n+1)², A063267(n+2)]`
-/

namespace A334966.P15056552066102210984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086141 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063267 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334966.P15056552066102210984

/-!
# A334967: Numbers k such that every subsequence (not necessarily contiguous) of the k-th composition in standard order (A066099) has a different sum.

The programs for A334967, there is no canonical definition to state claims against.
-/

/-! ## A334967.P16735854513217337122

`lt[A334300(n), A299701(A333219(n+1))]`
-/

namespace A334967.P16735854513217337122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334300 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299701 (A333219 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334967.P16735854513217337122

/-! ## A334967.P11335627317518425344

`lt[A334300(n), A334968(n)]`
-/

namespace A334967.P11335627317518425344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334300 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334967.P11335627317518425344

/-! ## A334967.P14263768647188119993

`eq[A029931(2^A334300(n)), A334968(n)]`
-/

namespace A334967.P14263768647188119993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A334300 n : ℤ))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334967.P14263768647188119993

/-! ## A334967.P3369071919013582727

`eq[A334968(n), A374993(2^A334300(n))]`
-/

namespace A334967.P3369071919013582727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334968 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374993 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A334300 n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334967.P3369071919013582727

/-! ## A334967.P13922428742049501834

`eq[A334299(n), A334968(n)]`
-/

namespace A334967.P13922428742049501834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334299 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334967.P13922428742049501834

/-!
# A334968: Number of possible sums of subsequences (not necessarily contiguous) of the n-th composition in standard order (A066099).

The programs for A334968, there is no canonical definition to state claims against.
-/

/-! ## A334968.P3017053615956616506

`A299701(A333219(n+1))`
-/

namespace A334968.P3017053615956616506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299701 (A333219 (n + 1)).toNat

end

end A334968.P3017053615956616506

/-! ## A334968.P13960742040657631117

`A299701(A358506(n+1))`
-/

namespace A334968.P13960742040657631117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299701 (A358506 (n + 1)).toNat

end

end A334968.P13960742040657631117

/-! ## A334968.P15577589174639157175

`A304793(∏{e}[A057335(n), A000040(#)])+1`
-/

namespace A334968.P15577589174639157175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304793 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat + 1

end

end A334968.P15577589174639157175

/-! ## A334968.P6121081107215513738

`A304793(∏{e}[A057335(n), A003459(#)])+1`
-/

namespace A334968.P6121081107215513738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304793 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A003459 (Nat.factorization (f1 n).natAbs p)).toNat + 1

end

end A334968.P6121081107215513738

/-! ## A334968.P10286687305828318858

`A304793(A333219(n+1))+A057427(3*n+1)`
-/

namespace A334968.P10286687305828318858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304793 (A333219 (n + 1)).toNat + A057427 (3 * n + 1)

end

end A334968.P10286687305828318858

/-! ## A334968.P3030208616283645550

`A304793(A333219(n+1))+A054977(3*n+2)`
-/

namespace A334968.P3030208616283645550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304793 (A333219 (n + 1)).toNat + A054977 (3 * n + 2)

end

end A334968.P3030208616283645550

/-!
# A334970: Sum of the values of the "shortest + middle - longest" side lengths of all primitive Heronian triangles with perimeter A096468(n).

The programs for A334970, there is no canonical definition to state claims against.
-/

/-! ## A334970.P6093444954565468923

`A330874(n+1)+A334018(n+1)-A334120(n+1)`
-/

namespace A334970.P6093444954565468923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330874 (n + 1) + (A334018 (n + 1) - A334120 (n + 1))

end

end A334970.P6093444954565468923

/-! ## A334970.P15866736096613724870

`(A096468(n+1)*A298614(n+1))%A334120(n+1)`
-/

namespace A334970.P15866736096613724870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096468 (n + 1) * A298614 (n + 1)) (A334120 (n + 1))

end

end A334970.P15866736096613724870

/-!
# A334971: a(n) is the least prime p such that p+2 is divisible by n-th prime.

The programs for A334971, there is no canonical definition to state claims against.
-/

/-! ## A334971.P1302527660613544965

`A340753(A237589(n+1))`
-/

namespace A334971.P1302527660613544965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340753 (A237589 (n + 1)).toNat

end

end A334971.P1302527660613544965

/-! ## A334971.P4947838375233417204

`A340753(∑[record[A110560(n)]])`
-/

namespace A334971.P4947838375233417204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340753 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A334971.P4947838375233417204

/-! ## A334971.P14832229954699220335

`A340753(∑[record[A128059(n)]])`
-/

namespace A334971.P14832229954699220335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340753 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A334971.P14832229954699220335

/-! ## A334971.P8133069269896029090

`A340753(∑[A006005(n+1)])`
-/

namespace A334971.P8133069269896029090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340753 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A334971.P8133069269896029090

/-! ## A334971.P3153836608936943830

`A340753(A007504(n+1)-1)`
-/

namespace A334971.P3153836608936943830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340753 (A007504 (n + 1) - 1).toNat

end

end A334971.P3153836608936943830

/-! ## A334971.P12124429326490322520

`A340753(A014284(n+2)-2)`
-/

namespace A334971.P12124429326490322520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340753 (A014284 (n + 2) - 2).toNat

end

end A334971.P12124429326490322520

/-! ## A334971.P18323862863123444102

`A340753(A036439(n+2)-3)`
-/

namespace A334971.P18323862863123444102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340753 (A036439 (n + 2) - 3).toNat

end

end A334971.P18323862863123444102

/-! ## A334971.P730362186891703823

`A340753(∑[A000040(n+1)]-1)`
-/

namespace A334971.P730362186891703823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340753 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A334971.P730362186891703823

/-! ## A334971.P2162263877734603280

`A340753(∑[A026741(A000040(n+1))])`
-/

namespace A334971.P2162263877734603280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340753 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A334971.P2162263877734603280

/-!
# A334972: Bi-unitary admirable numbers: numbers k such that there is a proper bi-unitary divisor d of k such that bsigma(k) - 2*d = 2*k, where bsigma is the sum of bi-unitary divisors function (A188999).

The programs for A334972, there is no canonical definition to state claims against.
-/

/-! ## A334972.P9007418195757263062

`A292982(A048197(n+1)%A329866(3*(n+1)))`
-/

namespace A334972.P9007418195757263062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292982 (Int.tmod (A048197 (n + 1)) (A329866 (3 * (n + 1)))).toNat

end

end A334972.P9007418195757263062

/-! ## A334972.P1896212007859056817

`A292982(A048197(n+1))%A038992(A048197(2*n+3))`
-/

namespace A334972.P1896212007859056817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292982 (A048197 (n + 1)).toNat) (A038992 (A048197 (2 * n + 3)).toNat)

end

end A334972.P1896212007859056817

/-! ## A334972.P11305364300413550457

`A292982(A048197(n+1))%A334973(2*n+1)`
-/

namespace A334972.P11305364300413550457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292982 (A048197 (n + 1)).toNat) (A334973 (2 * n + 1))

end

end A334972.P11305364300413550457

/-! ## A334972.P16507766736801804523

`∩[A168086(n+1)%A256265(2*(n+2)), A292982(n+1)]`
-/

namespace A334972.P16507766736801804523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168086 (n + 1)) (A256265 (2 * (n + 2)))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334972.P16507766736801804523

/-! ## A334972.P13935277186476578575

`∩[A292982(n+1), A331201(n+1)]`
-/

namespace A334972.P13935277186476578575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334972.P13935277186476578575

/-!
# A334974: Infinitary admirable numbers: numbers k such that there is a proper infinitary divisor d of k such that isigma(k) - 2*d = 2*k, where isigma is the sum of infinitary divisors function (A049417).

The programs for A334974, there is no canonical definition to state claims against.
-/

/-! ## A334974.P5661966846402789761

`A129656(A317492(n+1)%A095101(3*n+2))`
-/

namespace A334974.P5661966846402789761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129656 (Int.tmod (A317492 (n + 1)) (A095101 (3 * n + 2))).toNat

end

end A334974.P5661966846402789761

/-! ## A334974.P2775269203121668135

`A129656(∑[A244171(n+8)]+n)`
-/

namespace A334974.P2775269203121668135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244171 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129656 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A334974.P2775269203121668135

/-! ## A334974.P14763141802941792891

`A129656(∑[A140193(A128164(n+2))])`
-/

namespace A334974.P14763141802941792891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140193 (A128164 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129656 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A334974.P14763141802941792891

/-! ## A334974.P9925237202728732075

`record[A331737(A129656(n+1)²)]`
-/

namespace A334974.P9925237202728732075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331737 (A129656 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334974.P9925237202728732075

/-! ## A334974.P8937595583294734043

`record[A331737(A292982(n+1)²)]`
-/

namespace A334974.P8937595583294734043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331737 (A292982 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334974.P8937595583294734043

/-!
# A334975: Odd infinitary admirable numbers: the odd terms of A334974.

The programs for A334975, there is no canonical definition to state claims against.
-/

/-! ## A334975.P16588023514479884597

`record[A334973(A007862(n+1))]`
-/

namespace A334975.P16588023514479884597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334973 (A007862 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334975.P16588023514479884597

/-! ## A334975.P13073505258178033071

`A334973(A120126(comp[∑[4*n]]))`
-/

namespace A334975.P13073505258178033071
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334973 (A120126 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A334975.P13073505258178033071

/-! ## A334975.P3747852973742303437

`A334973(A355547(n+1))`
-/

namespace A334975.P3747852973742303437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334973 (A355547 (n + 1)).toNat

end

end A334975.P3747852973742303437

/-!
# A334976: a(n) is the total number of down steps between the (n-1)-th and n-th up steps in all 2-Dyck paths of length 3*n. A 2-Dyck path is a nonnegative path with steps (1, 2), (1, -1) that starts and ends at y = 0.

The programs for A334976, there is no canonical definition to state claims against.
-/

/-! ## A334976.P13585491543485158869

`A336945(A028310(n)+1)-A001764(n)`
-/

namespace A334976.P13585491543485158869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336945 (A028310 n + 1).toNat - A001764 n

end

end A334976.P13585491543485158869

/-! ## A334976.P16558116866572719913

`A336945(A087156(n+1))-A001764(n)`
-/

namespace A334976.P16558116866572719913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336945 (A087156 (n + 1)).toNat - A001764 n

end

end A334976.P16558116866572719913

/-! ## A334976.P4966839594238911022

`A336945(A087156(n+1))-A047749(2*n)`
-/

namespace A334976.P4966839594238911022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336945 (A087156 (n + 1)).toNat - A047749 (2 * n)

end

end A334976.P4966839594238911022

/-! ## A334976.P15966660363241884194

`A336945(A087156(n+1))-∑{d}[n+1, A251662(#)]`
-/

namespace A334976.P15966660363241884194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336945 (A087156 (n + 1)).toNat - ∑ d ∈ Nat.divisors (f1 n), A251662 d

end

end A334976.P15966660363241884194

/-! ## A334976.P9659176470565367881

`A336945(A087156(n+1))-ceil(A116637(2*n)/2)`
-/

namespace A334976.P9659176470565367881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336945 (A087156 (n + 1)).toNat - ⌈(A116637 (2 * n) : ℚ) / 2⌉

end

end A334976.P9659176470565367881

/-! ## A334976.P16150608440563707402

`A336945(A087156(n+1))-(n+1)/2*A000139(n)`
-/

namespace A334976.P16150608440563707402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336945 (A087156 (n + 1)).toNat : ℚ) - (n + 1 : ℚ) / 2 * (A000139 n : ℚ)

end

end A334976.P16150608440563707402

/-! ## A334976.P6985477885417479156

`A336945(A087156(n+1))-A047764(A017545(n))`
-/

namespace A334976.P6985477885417479156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336945 (A087156 (n + 1)).toNat - A047764 (A017545 n).toNat

end

end A334976.P6985477885417479156

/-! ## A334976.P8639085909715284375

`A336945(A087156(n+1))-A047761(A004274(n+1))`
-/

namespace A334976.P8639085909715284375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336945 (A087156 (n + 1)).toNat - A047761 (A004274 (n + 1)).toNat

end

end A334976.P8639085909715284375

/-! ## A334976.P13819152086115881114

`A336945(A087156(n+1))-A047761(A004280(n+1))`
-/

namespace A334976.P13819152086115881114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336945 (A087156 (n + 1)).toNat - A047761 (A004280 (n + 1)).toNat

end

end A334976.P13819152086115881114

/-! ## A334976.P13434857637118339148

`A336945(A087156(n+1))-(A006013(n)+A000139(n))/3`
-/

namespace A334976.P13434857637118339148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336945 (A087156 (n + 1)).toNat : ℚ) - (A006013 n + A000139 n : ℚ) / 3

end

end A334976.P13434857637118339148

/-! ## A334976.P3025897792801620896

`A336945(A087156(n+1))-A052183(n)/(n+2)`
-/

namespace A334976.P3025897792801620896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336945 (A087156 (n + 1)).toNat : ℚ) - (A052183 n : ℚ) / (n + 2 : ℚ)

end

end A334976.P3025897792801620896

/-!
# A334977: a(n) is the total number of down steps between the (n-1)-th and n-th up steps in all 2_1-Dyck paths of length 3*n. A 2_1-Dyck path is a lattice path with steps (1, 2), (1, -1) that starts and ends at y = 0 and stays above the line y = -1.

The programs for A334977, the canonical program `A334977.P15905360750646034264` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334977 has offset 0).

The definition of A334977 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334977.P15905360750646034264

`A030983(n+3)+A000007(n)-A006013(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A334977

/-- `A030983(n+3)+A000007(n)-A006013(n)` -/
def P15905360750646034264.Spec : Prop :=
  ∀ n, P15905360750646034264.a n = A334977 n

theorem P15905360750646034264.correct : P15905360750646034264.Spec := by
  intro n
  simp only [A334977]

end A334977

/-! ## A334977.P8368074234031460024

`A030983(n+3)-A006013(n)*A057427(n)`
-/

namespace A334977.P8368074234031460024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030983 (n + 3) - A006013 n * A057427 n

end

end A334977.P8368074234031460024

namespace A334977

/-- `A030983(n+3)-A006013(n)*A057427(n)` -/
def P8368074234031460024.Spec : Prop :=
  ∀ n, P8368074234031460024.a n = A334977 n

end A334977

/-! ## A334977.P15430057940952234314

`A030983(n+3)-A006013(n)%A236194(n+1)`
-/

namespace A334977.P15430057940952234314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030983 (n + 3) - Int.tmod (A006013 n) (A236194 (n + 1))

end

end A334977.P15430057940952234314

namespace A334977

/-- `A030983(n+3)-A006013(n)%A236194(n+1)` -/
def P15430057940952234314.Spec : Prop :=
  ∀ n, P15430057940952234314.a n = A334977 n

end A334977

/-! ## A334977.P13755627424250006439

`(A030983(n+3)-A006013(n))%A002459(n)²`
-/

namespace A334977.P13755627424250006439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030983 (n + 3) - A006013 n) (A002459 n ^ 2)

end

end A334977.P13755627424250006439

namespace A334977

/-- `(A030983(n+3)-A006013(n))%A002459(n)²` -/
def P13755627424250006439.Spec : Prop :=
  ∀ n, P13755627424250006439.a n = A334977 n

end A334977

/-! ## A334977.P6384210234555611673

`(A030983(n+3)-A006013(n))%A028059(n)`
-/

namespace A334977.P6384210234555611673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030983 (n + 3) - A006013 n) (A028059 n)

end

end A334977.P6384210234555611673

namespace A334977

/-- `(A030983(n+3)-A006013(n))%A028059(n)` -/
def P6384210234555611673.Spec : Prop :=
  ∀ n, P6384210234555611673.a n = A334977 n

end A334977

/-!
# A334978: a(n) is the total number of down steps between the (n-1)-th and n-th up steps in all 3-Dyck paths of length 4*n. A 3-Dyck path is a nonnegative lattice path with steps (1, 3), (1, -1) that starts and ends at y = 0.

The programs for A334978, there is no canonical definition to state claims against.
-/

/-! ## A334978.P17359227740728614365

`A008574(A334682(n))%A002293(n+1)`
-/

namespace A334978.P17359227740728614365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008574 (A334682 n).toNat) (A002293 (n + 1))

end

end A334978.P17359227740728614365

/-! ## A334978.P10458245094203822877

`A008574(Δ[A369082(2*n)])%A002293(n+1)`
-/

namespace A334978.P10458245094203822877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369082 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008574 (f1 (n + 1) - f1 n).toNat) (A002293 (n + 1))

end

end A334978.P10458245094203822877

/-!
# A334979: a(n) is the total number of down steps between the (n-1)-th and n-th up steps in all 3_1-Dyck paths of length 4*n. A 3_1-Dyck path is a lattice path with steps (1, 3), (1, -1) that starts and ends at y = 0 and stays above the line y = -1.

The programs for A334979, there is no canonical definition to state claims against.
-/

/-! ## A334979.P3514742373689210208

`A072114(round(cosh(Δ[n²])))`
-/

namespace A334979.P3514742373689210208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072114 (SequenceMachineLib.roundAway (Real.cosh ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ))).toNat

end

end A334979.P3514742373689210208

/-!
# A334980: a(n) is the total number of down steps between the (n-1)-th and n-th up steps in all 3_2-Dyck paths of length 4*n. A 3_2-Dyck path is a lattice path with steps (1, 3), (1, -1) that starts and ends at y = 0 and stays above the line y = -2.

The programs for A334980, the canonical program `A334980.P5429576878076949371` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334980 has offset 0).

The definition of A334980 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334980.P5429576878076949371

`Δ[A337291(n+1)%∑[A006632(n+1)]]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A334980

/-- `Δ[A337291(n+1)%∑[A006632(n+1)]]` -/
def P5429576878076949371.Spec : Prop :=
  ∀ n, P5429576878076949371.a n = A334980 n

theorem P5429576878076949371.correct : P5429576878076949371.Spec := by
  intro n
  simp only [A334980]

end A334980

/-! ## A334980.P14921516966209449374

`Δ[(4*C(4*n+2, n)/(n+1))%∑[C(4*n+2, n)/(n+1)]]`
-/

namespace A334980.P14921516966209449374
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * n + 2) n : ℚ) / (n + 1 : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (4 * ((Nat.choose (4 * n + 2) n : ℚ) / (n + 1 : ℚ)))) (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334980.P14921516966209449374

namespace A334980

/-- `Δ[(4*C(4*n+2, n)/(n+1))%∑[C(4*n+2, n)/(n+1)]]` -/
def P14921516966209449374.Spec : Prop :=
  ∀ n, P14921516966209449374.a n = A334980 n

end A334980

/-!
# A334983: Perimeters of Heronian triangles where the lengths of the smallest and largest sides are coprime.

The programs for A334983, there is no canonical definition to state claims against.
-/

/-! ## A334983.P3097556817871626429

`A096468(A258068(2+n))`
-/

namespace A334983.P3097556817871626429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096468 (A258068 (2 + n)).toNat

end

end A334983.P3097556817871626429

/-! ## A334983.P5131890038353327744

`A096468(comp[∑[A140962(n)]])`
-/

namespace A334983.P5131890038353327744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140962 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096468 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A334983.P5131890038353327744

/-! ## A334983.P7331758513267621307

`record[A096468(A075249(n+3))]`
-/

namespace A334983.P7331758513267621307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096468 (A075249 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334983.P7331758513267621307

/-! ## A334983.P10611014366548464219

`∩[A096468(n+1), A081690(n)]`
-/

namespace A334983.P10611014366548464219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081690 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334983.P10611014366548464219

/-! ## A334983.P15176942514432958885

`A096468(comp[Δ[A207015(n+5)]])`
-/

namespace A334983.P15176942514432958885
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207015 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096468 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A334983.P15176942514432958885

/-! ## A334983.P1190520380209862996

`∩[A096468(n+1), A381767(n+1)]`
-/

namespace A334983.P1190520380209862996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334983.P1190520380209862996

/-! ## A334983.P17222866639673586459

`A096468(comp[A096450(3*(n+1))]+1)`
-/

namespace A334983.P17222866639673586459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096450 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096468 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A334983.P17222866639673586459

/-! ## A334983.P14899925808035737084

`A096468(comp[A326124(2*(n+2))]+1)`
-/

namespace A334983.P14899925808035737084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326124 (2 * (n + 2))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096468 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A334983.P14899925808035737084

/-! ## A334983.P3103054479186494539

`A096468(comp[A269963(2*n+5)]+1)`
-/

namespace A334983.P3103054479186494539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269963 (2 * n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096468 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A334983.P3103054479186494539

/-!
# A334984: Perimeters of Heronian triangles where the lengths of the middle and largest sides are coprime.

The programs for A334984, there is no canonical definition to state claims against.
-/

/-! ## A334984.P13753012735971966328

`A096468(A046100(n+1)%A161796(n+1))`
-/

namespace A334984.P13753012735971966328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096468 (Int.tmod (A046100 (n + 1)) (A161796 (n + 1))).toNat

end

end A334984.P13753012735971966328

/-! ## A334984.P2253721750951543482

`A334983(∑[runs[A330912(2*(n+1))]])`
-/

namespace A334984.P2253721750951543482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330912 (2 * (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334983 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A334984.P2253721750951543482

/-! ## A334984.P13022084513037400914

`A096468(A115063(n+1))%A114841(3*n+2)`
-/

namespace A334984.P13022084513037400914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096468 (A115063 (n + 1)).toNat) (A114841 (3 * n + 2))

end

end A334984.P13022084513037400914

/-! ## A334984.P1955853279780188791

`A096468(∑[runs[A096499(2*(n+2))]])`
-/

namespace A334984.P1955853279780188791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096499 (2 * (n + 2))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096468 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A334984.P1955853279780188791

/-! ## A334984.P4143016298906658220

`∩[A096468(n+1), A231239(n+1)]`
-/

namespace A334984.P4143016298906658220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334984.P4143016298906658220

/-!
# A334985: a(n) = lcm(n, tau(n), sigma(n), pod(n)) / gcd(n, tau(n), sigma(n), pod(n)) where tau(k) is the number of divisors of k (A000005), sigma(k) is the sum of divisors of k (A000203) and pod(k) is the product of divisors of k (A007955).

The programs for A334985, the canonical program `A334985.P2617165009463626642` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334985 has offset 1).

The definition of A334985 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336723, A337323, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A334985.P2617165009463626642

`A336723(n+1)/A337323(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A334985

/-- `A336723(n+1)/A337323(n+1)` -/
def P2617165009463626642.Spec : Prop :=
  ∀ n, P2617165009463626642.a n = (A334985 (n + 1) : ℚ)

end A334985

/-! ## A334985.P4390827600242563583

`lcm(A307893(n+1), A329929(n+1))`
-/

namespace A334985.P4390827600242563583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A307893 (n + 1)) (A329929 (n + 1))

end

end A334985.P4390827600242563583

namespace A334985

/-- `lcm(A307893(n+1), A329929(n+1))` -/
def P4390827600242563583.Spec : Prop :=
  ∀ n, (P4390827600242563583.a n : ℤ) = A334985 (n + 1)

end A334985

/-! ## A334985.P5277888069053511163

`A336723(n+1)/gcd(61*(n+1), A336722(n+1))`
-/

namespace A334985.P5277888069053511163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336723 (n + 1) : ℚ) / (Int.gcd (61 * (n + 1) : ℤ) (A336722 (n + 1)) : ℚ)

end

end A334985.P5277888069053511163

namespace A334985

/-- `A336723(n+1)/gcd(61*(n+1), A336722(n+1))` -/
def P5277888069053511163.Spec : Prop :=
  ∀ n, P5277888069053511163.a n = (A334985 (n + 1) : ℚ)

end A334985

/-! ## A334985.P16511251395552962875

`A329929(n+1)*A336722(n+1)/A337323(n+1)`
-/

namespace A334985.P16511251395552962875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329929 (n + 1) * A336722 (n + 1) : ℚ) / (A337323 (n + 1) : ℚ)

end

end A334985.P16511251395552962875

namespace A334985

/-- `A329929(n+1)*A336722(n+1)/A337323(n+1)` -/
def P16511251395552962875.Spec : Prop :=
  ∀ n, P16511251395552962875.a n = (A334985 (n + 1) : ℚ)

end A334985

/-! ## A334985.P6015652097555295217

`A336723(n+1)/gcd(A000203(n+1), A009191(n+1))`
-/

namespace A334985.P6015652097555295217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336723 (n + 1) : ℚ) / (Int.gcd (A000203 (n + 1)) (A009191 (n + 1)) : ℚ)

end

end A334985.P6015652097555295217

namespace A334985

/-- `A336723(n+1)/gcd(A000203(n+1), A009191(n+1))` -/
def P6015652097555295217.Spec : Prop :=
  ∀ n, P6015652097555295217.a n = (A334985 (n + 1) : ℚ)

end A334985

/-!
# A334986: a(n) = exp(n) * Sum_{k>=0} (-1)^k * n^(k-1) * k^(n-1) / k!.

The programs for A334986, there is no canonical definition to state claims against.
-/

/-! ## A334986.P6533304520621447754

`A292861(A056220(n+1))/(n+1)`
-/

namespace A334986.P6533304520621447754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292861 (A056220 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A334986.P6533304520621447754

/-! ## A334986.P7744079561935652409

`A292861(A054000(n+1)+1)/(n+1)`
-/

namespace A334986.P7744079561935652409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292861 (A054000 (n + 1) + 1).toNat : ℚ) / (n + 1 : ℚ)

end

end A334986.P7744079561935652409

/-!
# A334987: Sum of centered triangular numbers dividing n.

The programs for A334987, there is no canonical definition to state claims against.
-/

/-! ## A334987.P2351839018095776836

`∑{d}[n+1, #*A010054(3*#-2)]`
-/

namespace A334987.P2351839018095776836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A010054 (3 * d - 2)

end

end A334987.P2351839018095776836

/-! ## A334987.P16901435605219242783

`A334988(A141709(n+1))`
-/

namespace A334987.P16901435605219242783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334988 (A141709 (n + 1)).toNat

end

end A334987.P16901435605219242783

/-! ## A334987.P12206786879561864900

`A334988(A151764(n+1))`
-/

namespace A334987.P12206786879561864900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334988 (A151764 (n + 1)).toNat

end

end A334987.P12206786879561864900

/-! ## A334987.P9221024306835342636

`A334988(A151766(n+1))`
-/

namespace A334987.P9221024306835342636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334988 (A151766 (n + 1)).toNat

end

end A334987.P9221024306835342636

/-! ## A334987.P6137785998590803167

`A334988(A326302(n+1))`
-/

namespace A334987.P6137785998590803167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334988 (A326302 (n + 1)).toNat

end

end A334987.P6137785998590803167

/-!
# A334988: Sum of tetrahedral numbers dividing n.

The programs for A334988, the canonical program `A334988.P17676633901634417052` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334988 has offset 1).

The definition of A334988 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023533, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A334988.P17676633901634417052

`∑{d}[n+1, A023533(#)*#]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A334988

/-- `∑{d}[n+1, A023533(#)*#]` -/
def P17676633901634417052.Spec : Prop :=
  ∀ n, P17676633901634417052.a n = A334988 (n + 1)

theorem P17676633901634417052.correct : P17676633901634417052.Spec := by
  intro n
  simp only [A334988, Nat.add_sub_cancel]

end A334988

/-! ## A334988.P8087044634130120453

`∑{d}[n+1, #*A023533(#)]`
-/

namespace A334988.P8087044634130120453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A023533 d

end

end A334988.P8087044634130120453

namespace A334988

/-- `∑{d}[n+1, #*A023533(#)]` -/
def P8087044634130120453.Spec : Prop :=
  ∀ n, P8087044634130120453.a n = A334988 (n + 1)

end A334988

/-! ## A334988.P12313000757539507501

`∑{d}[n+1, #*(1-A014306(#))]`
-/

namespace A334988.P12313000757539507501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * (1 - A014306 d)

end

end A334988.P12313000757539507501

namespace A334988

/-- `∑{d}[n+1, #*(1-A014306(#))]` -/
def P12313000757539507501.Spec : Prop :=
  ∀ n, P12313000757539507501.a n = A334988 (n + 1)

end A334988

/-! ## A334988.P17019612046381059767

`∑{d}[n+1, #*and(1, A331919(#))]`
-/

namespace A334988.P17019612046381059767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * Int.land 1 (A331919 d)

end

end A334988.P17019612046381059767

namespace A334988

/-- `∑{d}[n+1, #*and(1, A331919(#))]` -/
def P17019612046381059767.Spec : Prop :=
  ∀ n, P17019612046381059767.a n = A334988 (n + 1)

end A334988

/-! ## A334988.P4563302037845602909

`gcd(A008706(A013979(n)), A091344(n+1))`
-/

namespace A334988.P4563302037845602909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008706 (A013979 n).toNat) (A091344 (n + 1))

end

end A334988.P4563302037845602909

namespace A334988

/-- `gcd(A008706(A013979(n)), A091344(n+1))` -/
def P4563302037845602909.Spec : Prop :=
  ∀ n, (P4563302037845602909.a n : ℤ) = A334988 (n + 1)

end A334988

/-!
# A334989: Perimeters of Heronian triangles where the lengths of the smallest and middle sides are coprime.

The programs for A334989, there is no canonical definition to state claims against.
-/

/-! ## A334989.P12087732697462812814

`A096468(3%comp[∑[n]]+n)`
-/

namespace A334989.P12087732697462812814
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096468 (3 % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A334989.P12087732697462812814

/-! ## A334989.P8030114204727999873

`A096468(2*(n+1)-abs(1-n))`
-/

namespace A334989.P8030114204727999873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096468 ((2 * (n + 1) : ℤ) - |1 - (n : ℤ)|).toNat

end

end A334989.P8030114204727999873

/-! ## A334989.P13136314057437040641

`record[A096468(C(3^(n%2), n)+n)]`
-/

namespace A334989.P13136314057437040641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096468 (Nat.choose (3 ^ (n % 2)) n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334989.P13136314057437040641

/-! ## A334989.P2129797489231710183

`record[A096468(A038802(n+4))]`
-/

namespace A334989.P2129797489231710183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096468 (A038802 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334989.P2129797489231710183

/-! ## A334989.P1528310460638144554

`record[A224302(A032742(n+7))]`
-/

namespace A334989.P1528310460638144554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224302 (A032742 (n + 7)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334989.P1528310460638144554

/-! ## A334989.P8541346782408944188

`record[A096468(Δ[A064796(n+1)])]`
-/

namespace A334989.P8541346782408944188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064796 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096468 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334989.P8541346782408944188

/-! ## A334989.P1836556933109969230

`record[A096468(n+1)*A179184(n)]`
-/

namespace A334989.P1836556933109969230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096468 (n + 1) * A179184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334989.P1836556933109969230

/-! ## A334989.P1427414252490838863

`∪[A031602(n+1), A331367(n+1)]`
-/

namespace A334989.P1427414252490838863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A334989.P1427414252490838863

/-! ## A334989.P10239387992325844768

`∪[A031692(n+1), A331367(n+1)]`
-/

namespace A334989.P10239387992325844768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A334989.P10239387992325844768

/-! ## A334989.P4222632634431619257

`∪[A044382(n+1), A331367(n+1)]`
-/

namespace A334989.P4222632634431619257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A334989.P4222632634431619257

/-!
# A334990: a(1) = 1 and for any n > 1 with prime factorization Product_{k = 1..m} prime(k)^e_k (where prime(k) denotes the k-th prime number and e_m > 0), a(n) = Product_{k = 1..m-1} prime(k)^(e_k XOR e_{k+1}) (where XOR denotes the bitwise XOR operator).

The programs for A334990, there is no canonical definition to state claims against.
-/

/-! ## A334990.P119625201745126601

`A051119(A226569(1+n))`
-/

namespace A334990.P119625201745126601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (A226569 (1 + n)).toNat

end

end A334990.P119625201745126601

/-! ## A334990.P10061082940308043898

`A226569(n+1)/A053585(n+1)`
-/

namespace A334990.P10061082940308043898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226569 (n + 1) : ℚ) / (A053585 (n + 1) : ℚ)

end

end A334990.P10061082940308043898

/-! ## A334990.P16836149185073440984

`A000026(A064989(n+1)^A239871(n))`
-/

namespace A334990.P16836149185073440984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (SequenceMachineLib.roundAway ((A064989 (n + 1) : ℚ) ^ (A239871 n : ℤ))).toNat

end

end A334990.P16836149185073440984

/-! ## A334990.P5070157119857526582

`gcd(A055641(A066608(n+1)), A079707(n+1))`
-/

namespace A334990.P5070157119857526582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055641 (A066608 (n + 1)).toNat) (A079707 (n + 1))

end

end A334990.P5070157119857526582

/-!
# A334991: a(n) = 4^n + 3 * 18^n.

The programs for A334991, the canonical program `A334991.P17018460124387327371` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334991 has offset 0).

The definition of A334991 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+3*18^n` (program `A334991.P17018460124387327371`, by `A334991.P17018460124387327371.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A334991.P16829876207993951426

`ogf((4-30x)/(1-22x+72x^2))`
-/

namespace A334991.P16829876207993951426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -30] [1, -22, 72] n

end

end A334991.P16829876207993951426

namespace A334991

/-- `ogf((4-30x)/(1-22x+72x^2))` -/
def P16829876207993951426.Spec : Prop :=
  ∀ n, P16829876207993951426.a n = A334991 n

end A334991

/-! ## A334991.P17018460124387327371

`4^n+3*18^n`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A334991

/-- `4^n+3*18^n` -/
def P17018460124387327371.Spec : Prop :=
  ∀ n, (P17018460124387327371.a n : ℤ) = A334991 n

theorem P17018460124387327371.correct : P17018460124387327371.Spec := by
  intro n
  simp only [A334991]

end A334991

/-! ## A334991.P4686836555195088121

`(A013708(n)+A000079(n))*A000079(n)`
-/

namespace A334991.P4686836555195088121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A013708 n + A000079 n) * A000079 n

end

end A334991.P4686836555195088121

namespace A334991

/-- `(A013708(n)+A000079(n))*A000079(n)` -/
def P4686836555195088121.Spec : Prop :=
  ∀ n, P4686836555195088121.a n = A334991 n

end A334991

/-! ## A334991.P2469106694661352938

`(3*A000244(n)²+A000079(n))*A000079(n)`
-/

namespace A334991.P2469106694661352938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * A000244 n ^ 2 + A000079 n) * A000079 n

end

end A334991.P2469106694661352938

namespace A334991

/-- `(3*A000244(n)²+A000079(n))*A000079(n)` -/
def P2469106694661352938.Spec : Prop :=
  ∀ n, P2469106694661352938.a n = A334991 n

end A334991

/-! ## A334991.P15486287654530805461

`(A000244(2*n+1)+A000079(n))*A000079(n)`
-/

namespace A334991.P15486287654530805461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 (2 * n + 1) + A000079 n) * A000079 n

end

end A334991.P15486287654530805461

namespace A334991

/-- `(A000244(2*n+1)+A000079(n))*A000079(n)` -/
def P15486287654530805461.Spec : Prop :=
  ∀ n, P15486287654530805461.a n = A334991 n

end A334991

/-! ## A334991.P1833319729061952261

`(A102518(n+1)+A011782(n+1))*A011782(n+1)`
-/

namespace A334991.P1833319729061952261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A102518 (n + 1) + A011782 (n + 1)) * A011782 (n + 1)

end

end A334991.P1833319729061952261

namespace A334991

/-- `(A102518(n+1)+A011782(n+1))*A011782(n+1)` -/
def P1833319729061952261.Spec : Prop :=
  ∀ n, P1833319729061952261.a n = A334991 n

end A334991

/-! ## A334991.P2160004105882609799

`(A011782(n+1)+3*A000244(n)²)*A011782(n+1)`
-/

namespace A334991.P2160004105882609799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) + 3 * A000244 n ^ 2) * A011782 (n + 1)

end

end A334991.P2160004105882609799

namespace A334991

/-- `(A011782(n+1)+3*A000244(n)²)*A011782(n+1)` -/
def P2160004105882609799.Spec : Prop :=
  ∀ n, P2160004105882609799.a n = A334991 n

end A334991

/-! ## A334991.P14392292947099772804

`(A131577(n+1)+3*A000244(n)²)*A131577(n+1)`
-/

namespace A334991.P14392292947099772804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131577 (n + 1) + 3 * A000244 n ^ 2) * A131577 (n + 1)

end

end A334991.P14392292947099772804

namespace A334991

/-- `(A131577(n+1)+3*A000244(n)²)*A131577(n+1)` -/
def P14392292947099772804.Spec : Prop :=
  ∀ n, P14392292947099772804.a n = A334991 n

end A334991

/-! ## A334991.P10635248028147861869

`(A143095(2*n)+3*A000244(n)²)*A143095(2*n)`
-/

namespace A334991.P10635248028147861869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A143095 (2 * n) + 3 * A000244 n ^ 2) * A143095 (2 * n)

end

end A334991.P10635248028147861869

namespace A334991

/-- `(A143095(2*n)+3*A000244(n)²)*A143095(2*n)` -/
def P10635248028147861869.Spec : Prop :=
  ∀ n, P10635248028147861869.a n = A334991 n

end A334991

/-! ## A334991.P15998817024329703727

`(A011782(n+1)+A000244(2*n+1))*A011782(n+1)`
-/

namespace A334991.P15998817024329703727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) + A000244 (2 * n + 1)) * A011782 (n + 1)

end

end A334991.P15998817024329703727

namespace A334991

/-- `(A011782(n+1)+A000244(2*n+1))*A011782(n+1)` -/
def P15998817024329703727.Spec : Prop :=
  ∀ n, P15998817024329703727.a n = A334991 n

end A334991

/-!
# A334992: a(n) is the smallest number larger than a(n-1) whose a(i)-th binary digit is 0 for all i<n, with a(1)=1.

The programs for A334992, there is no canonical definition to state claims against.
-/

/-! ## A334992.P11767557242631838924

`comp[A335033(n+1)]`
-/

namespace A334992.P11767557242631838924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A334992.P11767557242631838924

/-! ## A334992.P5220326445913978837

`and(a(n-1)-A052899(n+1), A052899(n+1))` with `a(0)=1`
-/

namespace A334992.P5220326445913978837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (a (n - 1) - A052899 (n + 1)) (A052899 (n + 1))

end

end A334992.P5220326445913978837

/-! ## A334992.P10120524277001330109

`record[and(n+1, A270106(n))]`
-/

namespace A334992.P10120524277001330109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A270106 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334992.P10120524277001330109

/-! ## A334992.P7938405572225856527

`A004525(record[A320283(n+1)])`
-/

namespace A334992.P7938405572225856527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A334992.P7938405572225856527

/-! ## A334992.P11808493470424498850

`A065033(record[A320283(n+1)])`
-/

namespace A334992.P11808493470424498850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A334992.P11808493470424498850

/-! ## A334992.P11207592507238945777

`A123108(record[A320283(n+1)+1])`
-/

namespace A334992.P11207592507238945777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320283 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A334992.P11207592507238945777

/-! ## A334992.P11637825813875924042

`A008619(record[A320283(n+1)-1])`
-/

namespace A334992.P11637825813875924042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320283 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A334992.P11637825813875924042

/-!
# A334993: Numbers k such that 2*3^k + 1 is prime and divides Phi(3^m, 2).

The programs for A334993, there is no canonical definition to state claims against.
-/

/-! ## A334993.P2361712379491698768

`record[A003306(n+1)^val(A003306(n+1)+1, 2)]`
-/

namespace A334993.P2361712379491698768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003306 (n + 1) ^ SequenceMachineLib.valuation (A003306 (n + 1) + 1).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334993.P2361712379491698768

/-! ## A334993.P6810663419853355903

`2*A056800(n+1)+1`
-/

namespace A334993.P6810663419853355903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056800 (n + 1) + 1

end

end A334993.P6810663419853355903

/-! ## A334993.P16361209169695177408

`A056800(n+1)+A000027(A056800(n+1)+1)`
-/

namespace A334993.P16361209169695177408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056800 (n + 1) + A000027 (A056800 (n + 1) + 1).toNat

end

end A334993.P16361209169695177408

/-! ## A334993.P16042186759582358896

`A056800(n+1)+A196222(n)+A056800(n+1)`
-/

namespace A334993.P16042186759582358896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056800 (n + 1) + (A196222 n + A056800 (n + 1))

end

end A334993.P16042186759582358896

/-! ## A334993.P13574178699200135904

`A056800(n+1)+A066636(n+1)+A056800(n+1)`
-/

namespace A334993.P13574178699200135904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056800 (n + 1) + (A066636 (n + 1) + A056800 (n + 1))

end

end A334993.P13574178699200135904

/-!
# A334994: Orders of the groups PSL(m,q) in increasing order as q runs through the prime powers (without repetitions).

The programs for A334994, there is no canonical definition to state claims against.
-/

/-! ## A334994.P1865260835446893307

`record[A335000(n+1)-char[3]]`
-/

namespace A334994.P1865260835446893307
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335000 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334994.P1865260835446893307

/-! ## A334994.P734225678262856275

`record[A335000(floor(lcm(2, n)/4)+1)]`
-/

namespace A334994.P734225678262856275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335000 (⌊(Nat.lcm 2 n : ℚ) / 4⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334994.P734225678262856275

/-! ## A334994.P3756353121958331490

`record[A335000(floor(n/(n%2+2))+1)]`
-/

namespace A334994.P3756353121958331490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335000 (⌊(n : ℚ) / ((n % 2 + 2 : ℕ) : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334994.P3756353121958331490

/-! ## A334994.P7867149592789535843

`record[A335000(floor(n/(xor(n, n+1)+1))+1)]`
-/

namespace A334994.P7867149592789535843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335000 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334994.P7867149592789535843

/-! ## A334994.P11017440591588987962

`record[A335000(A065648(n))]`
-/

namespace A334994.P11017440591588987962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335000 (A065648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334994.P11017440591588987962

/-!
# A334995: Twice the area of triangle with coordinates (Fn, Fn+k), (Fn+2k, Fn+3k) and (Fn+4k, Fn+5k), where Fn is the n-th Fibonacci number A000045.

The programs for A334995, there is no canonical definition to state claims against.
-/

/-! ## A334995.P11924251033077057376

`A004146(n+1)*A037451(n+1)`
-/

namespace A334995.P11924251033077057376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004146 (n + 1) * A037451 (n + 1)

end

end A334995.P11924251033077057376

/-! ## A334995.P14788469141475088120

`A000045(n+1)*A127595(n+1)`
-/

namespace A334995.P14788469141475088120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A127595 (n + 1)

end

end A334995.P14788469141475088120

/-! ## A334995.P12863111729694969062

`A001906(n+1)*A273623(n+1)`
-/

namespace A334995.P12863111729694969062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1) * A273623 (n + 1)

end

end A334995.P12863111729694969062

/-! ## A334995.P8384201986866632018

`A000045(n+1)*Δ[(1-A000045(2*n+1))²]`
-/

namespace A334995.P8384201986866632018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000045 (2 * n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * (f1 (n + 1) - f1 n)

end

end A334995.P8384201986866632018

/-! ## A334995.P1071580399862794025

`A000045(n+1)*A001906(n+1)*A004146(n+1)`
-/

namespace A334995.P1071580399862794025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A001906 (n + 1) * A004146 (n + 1)

end

end A334995.P1071580399862794025

/-! ## A334995.P12127892954419100816

`A000032(n+1)*A000045(n+1)*A273623(n+1)`
-/

namespace A334995.P12127892954419100816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A000045 (n + 1) * A273623 (n + 1)

end

end A334995.P12127892954419100816

/-!
# A334996: Irregular triangle read by rows: T(n, m) is the number of ways to distribute Omega(n) objects into precisely m distinct boxes, with no box empty (Omega(n) >= m).

The programs for A334996, there is no canonical definition to state claims against.
-/

/-! ## A334996.P3145485807746753933

`A337255(n)-a(n-1)` with `a(0)=0, a(1)=0`
-/

namespace A334996.P3145485807746753933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A337255 n - a (n - 1)

end

end A334996.P3145485807746753933

/-! ## A334996.P17270226993148093326

`abs(A124433(1+n)%(n+1))`
-/

namespace A334996.P17270226993148093326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A124433 (1 + n)) (n + 1 : ℤ)|

end

end A334996.P17270226993148093326

/-! ## A334996.P17339773669067837218

`abs(A124433(C(2, n²)+n+1))`
-/

namespace A334996.P17339773669067837218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124433 (Nat.choose 2 (n ^ 2) + (n + 1))|

end

end A334996.P17339773669067837218

/-! ## A334996.P12666247603186973586

`abs(A124433(round(acot(n+1)+n)+1))`
-/

namespace A334996.P12666247603186973586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124433 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n + 1 : ℝ) + (n : ℝ)) + 1).toNat|

end

end A334996.P12666247603186973586

/-! ## A334996.P12724325174712824020

`abs(A124433(A028310(n)+1))`
-/

namespace A334996.P12724325174712824020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124433 (A028310 n + 1).toNat|

end

end A334996.P12724325174712824020

/-! ## A334996.P4766526179977934789

`abs(A124433(A254667(n+1)))`
-/

namespace A334996.P4766526179977934789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124433 (A254667 (n + 1)).toNat|

end

end A334996.P4766526179977934789

/-! ## A334996.P16803805543068060908

`abs(A124433(A233583(n+2)))`
-/

namespace A334996.P16803805543068060908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124433 (A233583 (n + 2)).toNat|

end

end A334996.P16803805543068060908

/-! ## A334996.P8678496126622718657

`lcm(A011615(n), A124433(n+1))`
-/

namespace A334996.P8678496126622718657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011615 n) (A124433 (n + 1))

end

end A334996.P8678496126622718657

/-! ## A334996.P14014353976117395733

`abs(A124433(A000007(n)+1+n))`
-/

namespace A334996.P14014353976117395733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124433 (A000007 n + 1 + (n : ℤ)).toNat|

end

end A334996.P14014353976117395733

/-! ## A334996.P13372402197619719438

`abs(A124433(n+1))*A057427(n)`
-/

namespace A334996.P13372402197619719438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124433 (n + 1)| * A057427 n

end

end A334996.P13372402197619719438

/-! ## A334996.P4501365543164248129

`abs(A124433(n+1)*A157928(n))`
-/

namespace A334996.P4501365543164248129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124433 (n + 1) * A157928 n|

end

end A334996.P4501365543164248129

/-! ## A334996.P8999174155387239708

`dr(A124433(n+1)-A000007(n))`
-/

namespace A334996.P8999174155387239708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A124433 (n + 1) - A000007 n)

end

end A334996.P8999174155387239708

/-! ## A334996.P18431786757821273980

`dr(A124433(n+1)*A178334(n))`
-/

namespace A334996.P18431786757821273980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A124433 (n + 1) * A178334 n)

end

end A334996.P18431786757821273980

/-! ## A334996.P12655609950297747679

`sqrt(A124433(n+1)²%A026351(n))`
-/

namespace A334996.P12655609950297747679
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.tmod (A124433 (n + 1) ^ 2) (A026351 n) : ℝ)

end

end A334996.P12655609950297747679

/-! ## A334996.P4917502047279668024

`abs((1-A000122(n))*A124433(n+1))`
-/

namespace A334996.P4917502047279668024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - A000122 n) * A124433 (n + 1)|

end

end A334996.P4917502047279668024

/-! ## A334996.P17736897265337949080

`record[A014963(n+2)]%2*dr(A124433(n+1))`
-/

namespace A334996.P17736897265337949080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2 * (SequenceMachineLib.digitalRoot (A124433 (n + 1)) : ℤ)

end

end A334996.P17736897265337949080

/-! ## A334996.P875756525227387386

`abs(A124433(A110654(A051755(n+2))))`
-/

namespace A334996.P875756525227387386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124433 (A110654 (A051755 (n + 2)).toNat).toNat|

end

end A334996.P875756525227387386

/-! ## A334996.P13994564784948076565

`∑{d}[A124433(n+1)-A000007(n), A000010(#)]`
-/

namespace A334996.P13994564784948076565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124433 (n + 1) - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A334996.P13994564784948076565

/-!
# A334997: Array T read by ascending antidiagonals: T(n, k) = Sum_{d divides n} T(d, k-1) with T(n, 0) = 1.

The programs for A334997, there is no canonical definition to state claims against.
-/

/-! ## A334997.P16220561526018083840

`A077592(∑[char[∑[n]]]²-n)`
-/

namespace A334997.P16220561526018083840
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077592 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A334997.P16220561526018083840

/-! ## A334997.P9449861478563000931

`lcm(A033999(n), A077592(A038722(n+1)))`
-/

namespace A334997.P9449861478563000931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A077592 (A038722 (n + 1)).toNat)

end

end A334997.P9449861478563000931

/-! ## A334997.P8705346222941886596

`or(A000007(n), A077592(A038722(n+1)))`
-/

namespace A334997.P8705346222941886596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A077592 (A038722 (n + 1)).toNat)

end

end A334997.P8705346222941886596

/-! ## A334997.P12247260464021652120

`A077592(A038722(n+1))%A001248(n+1)`
-/

namespace A334997.P12247260464021652120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077592 (A038722 (n + 1)).toNat) (A001248 (n + 1))

end

end A334997.P12247260464021652120

/-! ## A334997.P17872163933311976760

`A077592(A038722(n+1))%A002149(n)`
-/

namespace A334997.P17872163933311976760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077592 (A038722 (n + 1)).toNat) (A002149 n)

end

end A334997.P17872163933311976760

/-! ## A334997.P9455471930332050927

`A077592(A038722(n+1))*A193554(A000096(n))`
-/

namespace A334997.P9455471930332050927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077592 (A038722 (n + 1)).toNat * A193554 (A000096 n).toNat

end

end A334997.P9455471930332050927

/-!
# A334998: Permutation of nonnegative integers that converts A162912 into A162911.

The programs for A334998, there is no canonical definition to state claims against.
-/

/-! ## A334998.P9591574304752089399

`A054429(A334999(A054429(n+1)))`
-/

namespace A334998.P9591574304752089399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A334999 (A054429 (n + 1)).toNat).toNat

end

end A334998.P9591574304752089399

/-! ## A334998.P6073193233079246964

`A332769(A258996(A334999(A332769(A258996(n+1)))))`
-/

namespace A334998.P6073193233079246964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332769 (A258996 (A334999 (A332769 (A258996 (n + 1)).toNat).toNat).toNat).toNat

end

end A334998.P6073193233079246964

/-! ## A334998.P13370063933789700009

`A334999(2*n+3)/2`
-/

namespace A334998.P13370063933789700009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334999 (2 * n + 3) : ℚ) / 2

end

end A334998.P13370063933789700009

/-! ## A334998.P5826735593733905431

`A001281(A334999(2*n+3))`
-/

namespace A334998.P5826735593733905431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A334999 (2 * n + 3)).toNat

end

end A334998.P5826735593733905431

/-! ## A334998.P11104262562168878936

`A003602(A334999(2*n+3)-1)`
-/

namespace A334998.P11104262562168878936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A334999 (2 * n + 3) - 1).toNat

end

end A334998.P11104262562168878936

/-! ## A334998.P3008537088340977866

`A059893(A154448(A059893(n+1)))`
-/

namespace A334998.P3008537088340977866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A154448 (A059893 (n + 1)).toNat).toNat

end

end A334998.P3008537088340977866

/-! ## A334998.P13034664882952258443

`Δ[A028242(∑[A334999(2*n+1)])]`
-/

namespace A334998.P13034664882952258443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334999 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334998.P13034664882952258443

/-!
# A334999: Permutation of nonnegative integers that converts A162911 into A162912.

The programs for A334999, there is no canonical definition to state claims against.
-/

/-! ## A334999.P10607089922075837842

`A054429(A334998(A054429(n+1)))`
-/

namespace A334999.P10607089922075837842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A334998 (A054429 (n + 1)).toNat).toNat

end

end A334999.P10607089922075837842

/-! ## A334999.P4841583893011854394

`(A334998(2*(n+1))-1)/2`
-/

namespace A334999.P4841583893011854394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334998 (2 * (n + 1)) - 1 : ℚ) / 2

end

end A334999.P4841583893011854394

/-! ## A334999.P1051557729798694657

`A004526(A334998(2*(n+1)))`
-/

namespace A334999.P1051557729798694657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A334998 (2 * (n + 1))).toNat

end

end A334999.P1051557729798694657

/-! ## A334999.P982763263519053018

`A110654(A334998(2*(n+1))-1)`
-/

namespace A334999.P982763263519053018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A334998 (2 * (n + 1)) - 1).toNat

end

end A334999.P982763263519053018

/-! ## A334999.P5802199958036656000

`A002265(2*A334998(2*(n+1)))`
-/

namespace A334999.P5802199958036656000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A334998 (2 * (n + 1))).toNat

end

end A334999.P5802199958036656000

/-! ## A334999.P11958977988266786502

`A334998(A334998(2*n+2))/2`
-/

namespace A334999.P11958977988266786502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334998 (A334998 (2 * n + 2)).toNat : ℚ) / 2

end

end A334999.P11958977988266786502

/-! ## A334999.P2423837671657576236

`A110654(xor(1, A334998(2*(n+1))))`
-/

namespace A334999.P2423837671657576236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.xor 1 (A334998 (2 * (n + 1)))).toNat

end

end A334999.P2423837671657576236

/-! ## A334999.P10518973667512609926

`A059893(A154447(A059893(n+1)))`
-/

namespace A334999.P10518973667512609926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A154447 (A059893 (n + 1)).toNat).toNat

end

end A334999.P10518973667512609926

