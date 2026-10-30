import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C032
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C005
import Seq.Opaque.C009
import Seq.Opaque.C012
import Seq.Opaque.C013
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
# A388911: a(n) = Sum_{k=0..n} 2^k * binomial(n,k) * binomial(2*n+2*k,k).

The programs for A388911, the canonical program `A388911.P16718361275454871703` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388911 has offset 0).

The definition of A388911 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, 2^#*C(n, #)*C(2*n+2*#, #)]` (program `A388911.P16718361275454871703`, by `A388911.P16718361275454871703.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A388911.P16718361275454871703

`∑{#}[n, 2^#*C(n, #)*C(2*n+2*#, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A388911

/-- `∑{#}[n, 2^#*C(n, #)*C(2*n+2*#, #)]` -/
def P16718361275454871703.Spec : Prop :=
  ∀ n, (P16718361275454871703.a n : ℤ) = A388911 n

theorem P16718361275454871703.correct : P16718361275454871703.Spec := by
  intro n
  simp only [A388911]

end A388911

/-!
# A388912: a(n) = Sum_{k=0..n} 2^(n-k) * binomial(n,k) * binomial(2*n+2*k,k).

The programs for A388912, the canonical program `A388912.P15612508580718229543` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388912 has offset 0).

The definition of A388912 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A388912.P15612508580718229543

`∑{#}[n, 2^(n-#)*C(n, #)*C(2*n+2*#, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A388912

/-- `∑{#}[n, 2^(n-#)*C(n, #)*C(2*n+2*#, #)]` -/
def P15612508580718229543.Spec : Prop :=
  ∀ n, P15612508580718229543.a n = (A388912 n : ℚ)

end A388912

/-!
# A388914: Expansion of (1/x) * Series_Reversion( x / ((1+x)^2 * (2*x+(1+x)^2)) ).

The programs for A388914, the canonical program `A388914.P9378335392211498574` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388914 has offset 0).

The definition of A388914 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A388914.P9378335392211498574

`1/(n+1)*∑{#}[n, 2^#*C(n+1, #)*C(4*n-2*#+4, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A388914

/-- `1/(n+1)*∑{#}[n, 2^#*C(n+1, #)*C(4*n-2*#+4, n-#)]` -/
def P9378335392211498574.Spec : Prop :=
  ∀ n, P9378335392211498574.a n = (A388914 n : ℚ)

end A388914

/-!
# A388915: a(n) = Sum_{k=0..n} 3^k * binomial(n,k) * binomial(2*n+2*k,k).

The programs for A388915, the canonical program `A388915.P2246449935133281723` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388915 has offset 0).

The definition of A388915 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, 3^#*C(n, #)*C(2*n+2*#, #)]` (program `A388915.P2246449935133281723`, by `A388915.P2246449935133281723.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A388915.P2246449935133281723

`∑{#}[n, 3^#*C(n, #)*C(2*n+2*#, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A388915

/-- `∑{#}[n, 3^#*C(n, #)*C(2*n+2*#, #)]` -/
def P2246449935133281723.Spec : Prop :=
  ∀ n, (P2246449935133281723.a n : ℤ) = A388915 n

theorem P2246449935133281723.correct : P2246449935133281723.Spec := by
  intro n
  simp only [A388915]

end A388915

/-!
# A388967: Smallest number in a group of 4 or more consecutive numbers such that, beyond the first number, no number's prime factor exponents equal any prime factor exponent of the previous number.

The programs for A388967, there is no canonical definition to state claims against.
-/

/-! ## A388967.P11745206363479711872

`A387531(comp[floor((1/2+n)^3)])`
-/

namespace A388967.P11745206363479711872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((1 : ℚ) / 2 + (n : ℚ)) ^ 3⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387531 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A388967.P11745206363479711872

/-! ## A388967.P6433262264004888298

`record[A212793(3*n+2)*A387531(n+1)]`
-/

namespace A388967.P6433262264004888298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (3 * n + 2) * A387531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A388967.P6433262264004888298

/-! ## A388967.P4357343048705251124

`record[A387531(n+1)/A052409(2*n+5)]`
-/

namespace A388967.P4357343048705251124
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A387531 (n + 1) : ℚ) / (A052409 (2 * n + 5) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A388967.P4357343048705251124

/-!
# A388969: Number of symmetric planar subpartitions of the size n pyramidal planar partition.

The programs for A388969, there is no canonical definition to state claims against.
-/

/-! ## A388969.P12586562622128400654

`A300230(3^∑[n])`
-/

namespace A388969.P12586562622128400654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300230 (3 ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A388969.P12586562622128400654

/-!
# A388972: Numbers whose number of exponential divisors is a power of 2.

The programs for A388972, the canonical program `A388972.P12899895285067129731` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388972 has offset 1).

The definition of A388972 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9581 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A388972.P8719918677502096504

`eq[1, A286361(A000005(n+1))]+1`
-/

namespace A388972.P8719918677502096504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286361 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A388972.P8719918677502096504

namespace A388972

/-- `eq[1, A286361(A000005(n+1))]+1` -/
def P8719918677502096504.Spec : Prop :=
  ∀ n, (P8719918677502096504.a n : ℤ) = A388972 (n + 1)

end A388972

/-! ## A388972.P12899895285067129731

`lt[gcd(3, A049419(n+1)), 3]+1`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A388972

/-- `lt[gcd(3, A049419(n+1)), 3]+1` -/
def P12899895285067129731.Spec : Prop :=
  ∀ n, (P12899895285067129731.a n : ℤ) = A388972 (n + 1)

theorem P12899895285067129731.correct : P12899895285067129731.Spec := by
  intro n
  simp only [A388972, Nat.add_sub_cancel]

end A388972

/-!
# A388973: The number of exponential divisors of the numbers whose number of exponential divisors is a power of 2.

The programs for A388973, the canonical program `A388973.P2955072861727697620` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388973 has offset 1).

The definition of A388973 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, A388972, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A388973.P18044743696725422340

`2^A388974(n+1)`
-/

namespace A388973.P18044743696725422340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A388974 (n + 1) : ℤ)

end

end A388973.P18044743696725422340

namespace A388973

/-- `2^A388974(n+1)` -/
def P18044743696725422340.Spec : Prop :=
  ∀ n, P18044743696725422340.a n = (A388973 (n + 1) : ℚ)

end A388973

/-! ## A388973.P2955072861727697620

`A049419(A388972(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A388973

/-- `A049419(A388972(n+1))` -/
def P2955072861727697620.Spec : Prop :=
  ∀ n, P2955072861727697620.a n = A388973 (n + 1)

theorem P2955072861727697620.correct : P2955072861727697620.Spec := by
  intro n
  simp only [A388973, Nat.add_sub_cancel]

end A388973

/-! ## A388973.P12366844704122583555

`filter[A049419(n+1), A000120(#)]`
-/

namespace A388973.P12366844704122583555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000120 (f1 j).toNat = 1) n)

end

end A388973.P12366844704122583555

namespace A388973

/-- `filter[A049419(n+1), A000120(#)]` -/
def P12366844704122583555.Spec : Prop :=
  ∀ n, P12366844704122583555.a n = A388973 (n + 1)

end A388973

/-! ## A388973.P10020219041312902144

`filter[A049419(n+1), A000265(#)]`
-/

namespace A388973.P10020219041312902144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000265 (f1 j).toNat = 1) n)

end

end A388973.P10020219041312902144

namespace A388973

/-- `filter[A049419(n+1), A000265(#)]` -/
def P10020219041312902144.Spec : Prop :=
  ∀ n, P10020219041312902144.a n = A388973 (n + 1)

end A388973

/-! ## A388973.P10158717392062680129

`filter[A049419(n+1), A003963(#)]`
-/

namespace A388973.P10158717392062680129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A003963 (f1 j).toNat = 1) n)

end

end A388973.P10158717392062680129

namespace A388973

/-- `filter[A049419(n+1), A003963(#)]` -/
def P10158717392062680129.Spec : Prop :=
  ∀ n, P10158717392062680129.a n = A388973 (n + 1)

end A388973

/-! ## A388973.P9138127869321454466

`filter[A049419(n+1), A010060(#)]`
-/

namespace A388973.P9138127869321454466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A388973.P9138127869321454466

namespace A388973

/-- `filter[A049419(n+1), A010060(#)]` -/
def P9138127869321454466.Spec : Prop :=
  ∀ n, P9138127869321454466.a n = A388973 (n + 1)

end A388973

/-! ## A388973.P1534625694804772847

`filter[A049419(n+1), A011655(#)]`
-/

namespace A388973.P1534625694804772847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A388973.P1534625694804772847

namespace A388973

/-- `filter[A049419(n+1), A011655(#)]` -/
def P1534625694804772847.Spec : Prop :=
  ∀ n, P1534625694804772847.a n = A388973 (n + 1)

end A388973

/-! ## A388973.P16639345748616191616

`filter[A049419(n+1), A011751(#)]`
-/

namespace A388973.P16639345748616191616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011751 (f1 j).toNat = 1) n)

end

end A388973.P16639345748616191616

namespace A388973

/-- `filter[A049419(n+1), A011751(#)]` -/
def P16639345748616191616.Spec : Prop :=
  ∀ n, P16639345748616191616.a n = A388973 (n + 1)

end A388973

/-! ## A388973.P2878156853717892270

`filter[A049419(n+1), A022928(#)]`
-/

namespace A388973.P2878156853717892270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022928 (f1 j).toNat = 1) n)

end

end A388973.P2878156853717892270

namespace A388973

/-- `filter[A049419(n+1), A022928(#)]` -/
def P2878156853717892270.Spec : Prop :=
  ∀ n, P2878156853717892270.a n = A388973 (n + 1)

end A388973

/-! ## A388973.P6737873684600902026

`and(A121934(n+1), A391988(n+1))`
-/

namespace A388973.P6737873684600902026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A121934 (n + 1)) (A391988 (n + 1))

end

end A388973.P6737873684600902026

namespace A388973

/-- `and(A121934(n+1), A391988(n+1))` -/
def P6737873684600902026.Spec : Prop :=
  ∀ n, P6737873684600902026.a n = A388973 (n + 1)

end A388973

/-! ## A388973.P13229375064651545132

`and(A108898(n), A391988(n+1))`
-/

namespace A388973.P13229375064651545132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108898 n) (A391988 (n + 1))

end

end A388973.P13229375064651545132

namespace A388973

/-- `and(A108898(n), A391988(n+1))` -/
def P13229375064651545132.Spec : Prop :=
  ∀ n, P13229375064651545132.a n = A388973 (n + 1)

end A388973

/-! ## A388973.P17122462014844615476

`and(A216616(n), A391988(n+1))`
-/

namespace A388973.P17122462014844615476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A216616 n) (A391988 (n + 1))

end

end A388973.P17122462014844615476

namespace A388973

/-- `and(A216616(n), A391988(n+1))` -/
def P17122462014844615476.Spec : Prop :=
  ∀ n, P17122462014844615476.a n = A388973 (n + 1)

end A388973

/-! ## A388973.P8441985914781235337

`and(A018886(n+1), A391988(n+1))`
-/

namespace A388973.P8441985914781235337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018886 (n + 1)) (A391988 (n + 1))

end

end A388973.P8441985914781235337

namespace A388973

/-- `and(A018886(n+1), A391988(n+1))` -/
def P8441985914781235337.Spec : Prop :=
  ∀ n, P8441985914781235337.a n = A388973 (n + 1)

end A388973

/-! ## A388973.P16305104889980258710

`and(A169650(n+1), A391988(n+1))`
-/

namespace A388973.P16305104889980258710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A169650 (n + 1)) (A391988 (n + 1))

end

end A388973.P16305104889980258710

namespace A388973

/-- `and(A169650(n+1), A391988(n+1))` -/
def P16305104889980258710.Spec : Prop :=
  ∀ n, P16305104889980258710.a n = A388973 (n + 1)

end A388973

/-! ## A388973.P3365155754580151687

`gcd(A002528(n), A391988(n+1))`
-/

namespace A388973.P3365155754580151687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002528 n) (A391988 (n + 1))

end

end A388973.P3365155754580151687

namespace A388973

/-- `gcd(A002528(n), A391988(n+1))` -/
def P3365155754580151687.Spec : Prop :=
  ∀ n, (P3365155754580151687.a n : ℤ) = A388973 (n + 1)

end A388973

/-! ## A388973.P9275694567380011807

`and(A198644(n), A391988(n+1))`
-/

namespace A388973.P9275694567380011807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198644 n) (A391988 (n + 1))

end

end A388973.P9275694567380011807

namespace A388973

/-- `and(A198644(n), A391988(n+1))` -/
def P9275694567380011807.Spec : Prop :=
  ∀ n, P9275694567380011807.a n = A388973 (n + 1)

end A388973

/-! ## A388973.P9998134684435349854

`and(A289404(n), A391988(n+1))`
-/

namespace A388973.P9998134684435349854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A289404 n) (A391988 (n + 1))

end

end A388973.P9998134684435349854

namespace A388973

/-- `and(A289404(n), A391988(n+1))` -/
def P9998134684435349854.Spec : Prop :=
  ∀ n, P9998134684435349854.a n = A388973 (n + 1)

end A388973

/-! ## A388973.P5272256978873732633

`and(A290416(n), A391988(n+1))`
-/

namespace A388973.P5272256978873732633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A290416 n) (A391988 (n + 1))

end

end A388973.P5272256978873732633

namespace A388973

/-- `and(A290416(n), A391988(n+1))` -/
def P5272256978873732633.Spec : Prop :=
  ∀ n, P5272256978873732633.a n = A388973 (n + 1)

end A388973

/-! ## A388973.P4049221319123434005

`and(A088653(n), A391988(n+1))`
-/

namespace A388973.P4049221319123434005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088653 n) (A391988 (n + 1))

end

end A388973.P4049221319123434005

namespace A388973

/-- `and(A088653(n), A391988(n+1))` -/
def P4049221319123434005.Spec : Prop :=
  ∀ n, P4049221319123434005.a n = A388973 (n + 1)

end A388973

/-! ## A388973.P12404746769575175174

`and(A196781(n+1), A391988(n+1))`
-/

namespace A388973.P12404746769575175174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A196781 (n + 1)) (A391988 (n + 1))

end

end A388973.P12404746769575175174

namespace A388973

/-- `and(A196781(n+1), A391988(n+1))` -/
def P12404746769575175174.Spec : Prop :=
  ∀ n, P12404746769575175174.a n = A388973 (n + 1)

end A388973

/-!
# A388974: a(n) = log_2(A388973(n)).

The programs for A388974, the canonical program `A388974.P5470956650158130436` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388974 has offset 1).

The definition of A388974 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A388973, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A388974.P5470956650158130436

`log2(A388973(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A388974

/-- `log2(A388973(n+1))` -/
def P5470956650158130436.Spec : Prop :=
  ∀ n, P5470956650158130436.a n = (A388974 (n + 1) : ℝ)

end A388974

/-! ## A388974.P18321590235959745290

`row(A020453(n+1)%A388973(n+1))`
-/

namespace A388974.P18321590235959745290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (Int.tmod (A020453 (n + 1)) (A388973 (n + 1))).toNat

end

end A388974.P18321590235959745290

namespace A388974

/-- `row(A020453(n+1)%A388973(n+1))` -/
def P18321590235959745290.Spec : Prop :=
  ∀ n, (P18321590235959745290.a n : ℤ) = A388974 (n + 1)

end A388974

/-! ## A388974.P5043804327986408441

`A001222(A204129(2*(n+2))*A388973(n+1))`
-/

namespace A388974.P5043804327986408441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A204129 (2 * (n + 2)) * A388973 (n + 1)).toNat

end

end A388974.P5043804327986408441

namespace A388974

/-- `A001222(A204129(2*(n+2))*A388973(n+1))` -/
def P5043804327986408441.Spec : Prop :=
  ∀ n, P5043804327986408441.a n = A388974 (n + 1)

end A388974

/-! ## A388974.P17743809612406143431

`val(A388973(n+1), A000005(A056874(n+1)))`
-/

namespace A388974.P17743809612406143431
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A388973 (n + 1)).toNat (A000005 (A056874 (n + 1)).toNat).toNat

end

end A388974.P17743809612406143431

namespace A388974

/-- `val(A388973(n+1), A000005(A056874(n+1)))` -/
def P17743809612406143431.Spec : Prop :=
  ∀ n, (P17743809612406143431.a n : ℤ) = A388974 (n + 1)

end A388974

/-! ## A388974.P11311083922453661624

`val(A388973(n+1), A000005(A007519(n+1)))`
-/

namespace A388974.P11311083922453661624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A388973 (n + 1)).toNat (A000005 (A007519 (n + 1)).toNat).toNat

end

end A388974.P11311083922453661624

namespace A388974

/-- `val(A388973(n+1), A000005(A007519(n+1)))` -/
def P11311083922453661624.Spec : Prop :=
  ∀ n, (P11311083922453661624.a n : ℤ) = A388974 (n + 1)

end A388974

/-! ## A388974.P16736755164061603600

`row(A158709(2*(n+1))%A388973(n+1))`
-/

namespace A388974.P16736755164061603600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (Int.tmod (A158709 (2 * (n + 1))) (A388973 (n + 1))).toNat

end

end A388974.P16736755164061603600

namespace A388974

/-- `row(A158709(2*(n+1))%A388973(n+1))` -/
def P16736755164061603600.Spec : Prop :=
  ∀ n, (P16736755164061603600.a n : ℤ) = A388974 (n + 1)

end A388974

/-! ## A388974.P8949328709290043574

`A007814(A269377(2*(n+1))*A391988(n+1))`
-/

namespace A388974.P8949328709290043574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A269377 (2 * (n + 1)) * A391988 (n + 1)).toNat

end

end A388974.P8949328709290043574

namespace A388974

/-- `A007814(A269377(2*(n+1))*A391988(n+1))` -/
def P8949328709290043574.Spec : Prop :=
  ∀ n, P8949328709290043574.a n = A388974 (n + 1)

end A388974

/-! ## A388974.P10050100537642537997

`A007814(A000040(2*n+5)*A391988(n+1))`
-/

namespace A388974.P10050100537642537997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000040 (2 * n + 5) * A391988 (n + 1)).toNat

end

end A388974.P10050100537642537997

namespace A388974

/-- `A007814(A000040(2*n+5)*A391988(n+1))` -/
def P10050100537642537997.Spec : Prop :=
  ∀ n, P10050100537642537997.a n = A388974 (n + 1)

end A388974

/-! ## A388974.P7996130500635958264

`A001222(∏{e}[A388972(n+1)%A259180(n+1), #])`
-/

namespace A388974.P7996130500635958264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A388972 (n + 1)) (A259180 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A388974.P7996130500635958264

namespace A388974

/-- `A001222(∏{e}[A388972(n+1)%A259180(n+1), #])` -/
def P7996130500635958264.Spec : Prop :=
  ∀ n, P7996130500635958264.a n = A388974 (n + 1)

end A388974

/-! ## A388974.P1630006740111437029

`A007814(A235154(n+1)*A391988(n+1))`
-/

namespace A388974.P1630006740111437029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A235154 (n + 1) * A391988 (n + 1)).toNat

end

end A388974.P1630006740111437029

namespace A388974

/-- `A007814(A235154(n+1)*A391988(n+1))` -/
def P1630006740111437029.Spec : Prop :=
  ∀ n, P1630006740111437029.a n = A388974 (n + 1)

end A388974

/-!
# A388975: a(n) = A033885(A003961(n)), where A033885(n) = 3*n-sigma(n), and A003961 is fully multiplicative with a(p) = nextprime(p).

The programs for A388975, the canonical program `A388975.P12312812905887415776` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388975 has offset 1).

The definition of A388975 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A388975.P9685605354733175982

`A388977(n+1)/(n+1)`
-/

namespace A388975.P9685605354733175982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A388977 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A388975.P9685605354733175982

namespace A388975

/-- `A388977(n+1)/(n+1)` -/
def P9685605354733175982.Spec : Prop :=
  ∀ n, P9685605354733175982.a n = (A388975 (n + 1) : ℚ)

end A388975

/-! ## A388975.P15776750457634181836

`A249734(n+1)-A003973(n+1)`
-/

namespace A388975.P15776750457634181836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249734 (n + 1) - A003973 (n + 1)

end

end A388975.P15776750457634181836

namespace A388975

/-- `A249734(n+1)-A003973(n+1)` -/
def P15776750457634181836.Spec : Prop :=
  ∀ n, P15776750457634181836.a n = A388975 (n + 1)

end A388975

/-! ## A388975.P8783789610230533591

`A003961(2*(n+1))-A000203(A003961(n+1))`
-/

namespace A388975.P8783789610230533591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (2 * (n + 1)) - A000203 (A003961 (n + 1)).toNat

end

end A388975.P8783789610230533591

namespace A388975

/-- `A003961(2*(n+1))-A000203(A003961(n+1))` -/
def P8783789610230533591.Spec : Prop :=
  ∀ n, P8783789610230533591.a n = A388975 (n + 1)

end A388975

/-! ## A388975.P12312812905887415776

`A033885(A003961(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A388975

/-- `A033885(A003961(n+1))` -/
def P12312812905887415776.Spec : Prop :=
  ∀ n, P12312812905887415776.a n = A388975 (n + 1)

theorem P12312812905887415776.correct : P12312812905887415776.Spec := by
  intro n
  simp only [A388975, Nat.add_sub_cancel]

end A388975

/-! ## A388975.P4166685035458094340

`A344587(n+1)+A003961(n+1)`
-/

namespace A388975.P4166685035458094340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344587 (n + 1) + A003961 (n + 1)

end

end A388975.P4166685035458094340

namespace A388975

/-- `A344587(n+1)+A003961(n+1)` -/
def P4166685035458094340.Spec : Prop :=
  ∀ n, P4166685035458094340.a n = A388975 (n + 1)

end A388975

/-! ## A388975.P700949073573365279

`3*A003961(n+1)-A003973(n+1)`
-/

namespace A388975.P700949073573365279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003961 (n + 1) - A003973 (n + 1)

end

end A388975.P700949073573365279

namespace A388975

/-- `3*A003961(n+1)-A003973(n+1)` -/
def P700949073573365279.Spec : Prop :=
  ∀ n, P700949073573365279.a n = A388975 (n + 1)

end A388975

/-! ## A388975.P2425577692410425969

`∑{d}[n+1, A033885(#)*A349387((n+1)/#)]`
-/

namespace A388975.P2425577692410425969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033885 d * A349387 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A388975.P2425577692410425969

namespace A388975

/-- `∑{d}[n+1, A033885(#)*A349387((n+1)/#)]` -/
def P2425577692410425969.Spec : Prop :=
  ∀ n, P2425577692410425969.a n = A388975 (n + 1)

end A388975

/-! ## A388975.P13462582790622085796

`A003961(n+1)+A003961(n+1)-A336851(n+1)`
-/

namespace A388975.P13462582790622085796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) + (A003961 (n + 1) - A336851 (n + 1))

end

end A388975.P13462582790622085796

namespace A388975

/-- `A003961(n+1)+A003961(n+1)-A336851(n+1)` -/
def P13462582790622085796.Spec : Prop :=
  ∀ n, P13462582790622085796.a n = A388975 (n + 1)

end A388975

/-! ## A388975.P7272450828644495598

`A003961(n+1)+A389078(n+1)-A389077(n+1)`
-/

namespace A388975.P7272450828644495598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) + (A389078 (n + 1) - A389077 (n + 1))

end

end A388975.P7272450828644495598

namespace A388975

/-- `A003961(n+1)+A389078(n+1)-A389077(n+1)` -/
def P7272450828644495598.Spec : Prop :=
  ∀ n, P7272450828644495598.a n = A388975 (n + 1)

end A388975

/-! ## A388975.P6081773015898158997

`A003961(2*(n+1))-A003973(n+1)`
-/

namespace A388975.P6081773015898158997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (2 * (n + 1)) - A003973 (n + 1)

end

end A388975.P6081773015898158997

namespace A388975

/-- `A003961(2*(n+1))-A003973(n+1)` -/
def P6081773015898158997.Spec : Prop :=
  ∀ n, P6081773015898158997.a n = A388975 (n + 1)

end A388975

/-! ## A388975.P16664954808004055576

`A033885(A191002(n+1)/(n+1))`
-/

namespace A388975.P16664954808004055576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033885 (SequenceMachineLib.roundAway ((A191002 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A388975.P16664954808004055576

namespace A388975

/-- `A033885(A191002(n+1)/(n+1))` -/
def P16664954808004055576.Spec : Prop :=
  ∀ n, P16664954808004055576.a n = A388975 (n + 1)

end A388975

/-! ## A388975.P13889567725375382437

`A326068(A249734(n+1))`
-/

namespace A388975.P13889567725375382437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326068 (A249734 (n + 1)).toNat

end

end A388975.P13889567725375382437

namespace A388975

/-- `A326068(A249734(n+1))` -/
def P13889567725375382437.Spec : Prop :=
  ∀ n, P13889567725375382437.a n = A388975 (n + 1)

end A388975

/-!
# A388976: a(n) = A033885(n) * A003961(n), where A033885(n) = 3*n-sigma(n), and A003961 is fully multiplicative with a(p) = nextprime(p).

The programs for A388976, the canonical program `A388976.P9323048198730537457` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388976 has offset 1).

The definition of A388976 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A388976.P9323048198730537457

`A033885(n+1)*A003961(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A388976

/-- `A033885(n+1)*A003961(n+1)` -/
def P9323048198730537457.Spec : Prop :=
  ∀ n, P9323048198730537457.a n = A388976 (n + 1)

theorem P9323048198730537457.correct : P9323048198730537457.Spec := by
  intro n
  simp only [A388976, Nat.add_sub_cancel]

end A388976

/-! ## A388976.P14067850303098914786

`3*A191002(n+1)-A341529(n+1)`
-/

namespace A388976.P14067850303098914786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A191002 (n + 1) - A341529 (n + 1)

end

end A388976.P14067850303098914786

namespace A388976

/-- `3*A191002(n+1)-A341529(n+1)` -/
def P14067850303098914786.Spec : Prop :=
  ∀ n, P14067850303098914786.a n = A388976 (n + 1)

theorem P14067850303098914786.correct : P14067850303098914786.Spec := by
  intro n
  simp only [A388976, Nat.add_sub_cancel, A388976.P14067850303098914786.a, A388976.P9323048198730537457.a, A003961, A003961.P5996473960037614004.a, A033885, A033885.P621255430935931612.a, A191002, A191002.P17774142683052749299.a, A341529, A341529.P16215354079337836042.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A253885, A253885.P16715555451856890624.a, A243501, A243501.P10707292738867961998.a, A048673, A048673.P3613002930333742504.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A388976

/-! ## A388976.P10565994372400856560

`(n+1)*A003961(2*(n+1))-A341529(n+1)`
-/

namespace A388976.P10565994372400856560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003961 (2 * (n + 1)) - A341529 (n + 1)

end

end A388976.P10565994372400856560

namespace A388976

/-- `(n+1)*A003961(2*(n+1))-A341529(n+1)` -/
def P10565994372400856560.Spec : Prop :=
  ∀ n, P10565994372400856560.a n = A388976 (n + 1)

end A388976

/-! ## A388976.P16747470866037487135

`A388977(n+1)-A341512(n+1)`
-/

namespace A388976.P16747470866037487135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388977 (n + 1) - A341512 (n + 1)

end

end A388976.P16747470866037487135

namespace A388976

/-- `A388977(n+1)-A341512(n+1)` -/
def P16747470866037487135.Spec : Prop :=
  ∀ n, P16747470866037487135.a n = A388976 (n + 1)

end A388976

/-! ## A388976.P11724162769111064035

`A003961(n+1)*A033885(n+1)`
-/

namespace A388976.P11724162769111064035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) * A033885 (n + 1)

end

end A388976.P11724162769111064035

namespace A388976

/-- `A003961(n+1)*A033885(n+1)` -/
def P11724162769111064035.Spec : Prop :=
  ∀ n, P11724162769111064035.a n = A388976 (n + 1)

theorem P11724162769111064035.correct : P11724162769111064035.Spec := by
  intro n
  simp only [A388976, Nat.add_sub_cancel, A388976.P11724162769111064035.a, A388976.P9323048198730537457.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A388976

/-! ## A388976.P7222427111655237584

`A033885(n+1)/A000203(n+1)*A341529(n+1)`
-/

namespace A388976.P7222427111655237584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033885 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) * (A341529 (n + 1) : ℚ)

end

end A388976.P7222427111655237584

namespace A388976

/-- `A033885(n+1)/A000203(n+1)*A341529(n+1)` -/
def P7222427111655237584.Spec : Prop :=
  ∀ n, P7222427111655237584.a n = (A388976 (n + 1) : ℚ)

end A388976

/-!
# A388977: a(n) = n * A033885(A003961(n)), where A033885(n) = 3*n-sigma(n), and A003961 is fully multiplicative with a(p) = nextprime(p).

The programs for A388977, the canonical program `A388977.P2451326477071846566` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388977 has offset 1).

The definition of A388977 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A388977.P17393600681777997891

`(n+1)*A388975(n+1)`
-/

namespace A388977.P17393600681777997891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A388975 (n + 1)

end

end A388977.P17393600681777997891

namespace A388977

/-- `(n+1)*A388975(n+1)` -/
def P17393600681777997891.Spec : Prop :=
  ∀ n, P17393600681777997891.a n = A388977 (n + 1)

end A388977

/-! ## A388977.P5665494772200603391

`3*A191002(n+1)-A341528(n+1)`
-/

namespace A388977.P5665494772200603391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A191002 (n + 1) - A341528 (n + 1)

end

end A388977.P5665494772200603391

namespace A388977

/-- `3*A191002(n+1)-A341528(n+1)` -/
def P5665494772200603391.Spec : Prop :=
  ∀ n, P5665494772200603391.a n = A388977 (n + 1)

end A388977

/-! ## A388977.P6254602307031737117

`(n+1)*A003961(2*(n+1))-A341528(n+1)`
-/

namespace A388977.P6254602307031737117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003961 (2 * (n + 1)) - A341528 (n + 1)

end

end A388977.P6254602307031737117

namespace A388977

/-- `(n+1)*A003961(2*(n+1))-A341528(n+1)` -/
def P6254602307031737117.Spec : Prop :=
  ∀ n, P6254602307031737117.a n = A388977 (n + 1)

end A388977

/-! ## A388977.P2451326477071846566

`(n+1)*A033885(A003961(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A388977

/-- `(n+1)*A033885(A003961(n+1))` -/
def P2451326477071846566.Spec : Prop :=
  ∀ n, P2451326477071846566.a n = A388977 (n + 1)

theorem P2451326477071846566.correct : P2451326477071846566.Spec := by
  intro n
  simp only [A388977, Nat.add_sub_cancel]

end A388977

/-! ## A388977.P3350101744621305740

`A388976(n+1)+A341512(n+1)`
-/

namespace A388977.P3350101744621305740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388976 (n + 1) + A341512 (n + 1)

end

end A388977.P3350101744621305740

namespace A388977

/-- `A388976(n+1)+A341512(n+1)` -/
def P3350101744621305740.Spec : Prop :=
  ∀ n, P3350101744621305740.a n = A388977 (n + 1)

end A388977

/-! ## A388977.P13900667110184760928

`(A344587(n+1)+A003961(n+1))*(n+1)`
-/

namespace A388977.P13900667110184760928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A344587 (n + 1) + A003961 (n + 1)) * (n + 1 : ℤ)

end

end A388977.P13900667110184760928

namespace A388977

/-- `(A344587(n+1)+A003961(n+1))*(n+1)` -/
def P13900667110184760928.Spec : Prop :=
  ∀ n, P13900667110184760928.a n = A388977 (n + 1)

end A388977

/-!
# A388978: a(n) = A326128(n) * A389077(n).

The programs for A388978, the canonical program `A388978.P10471211982599907514` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388978 has offset 1).

The definition of A388978 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A388978.P5887686069161317170

`A326128(n+1)*A389077(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388978.P5887686069161317170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326128 (n + 1) * A389077 (n + 1)

end

end A388978.P5887686069161317170

namespace A388978

/-- `A326128(n+1)*A389077(n+1)` -/
def P5887686069161317170.Spec : Prop :=
  ∀ n, P5887686069161317170.a n = A388978 (n + 1)

end A388978

/-! ## A388978.P10471211982599907514

`(n+1-A007913(n+1))*(A000203(A003961(n+1))-A007913(A003961(n+1))-A003961(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A388978

/-- `(n+1-A007913(n+1))*(A000203(A003961(n+1))-A007913(A003961(n+1))-A003961(n+1))` -/
def P10471211982599907514.Spec : Prop :=
  ∀ n, P10471211982599907514.a n = A388978 (n + 1)

theorem P10471211982599907514.correct : P10471211982599907514.Spec := by
  intro n
  simp only [A388978, Nat.add_sub_cancel]

end A388978

/-! ## A388978.P10705393350155010930

`A341528(n+1)+A191002(A007913(n+1))-A191002(n+1)-(n+1)*A007913(A003961(n+1))-A003973(n+1)*A007913(n+1)+A007913(n+1)*A003961(n+1)`
-/

namespace A388978.P10705393350155010930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341528 (n + 1) + A191002 (A007913 (n + 1)).toNat - A191002 (n + 1) - (n + 1 : ℤ) * A007913 (A003961 (n + 1)).toNat - A003973 (n + 1) * A007913 (n + 1) + A007913 (n + 1) * A003961 (n + 1)

end

end A388978.P10705393350155010930

namespace A388978

/-- `A341528(n+1)+A191002(A007913(n+1))-A191002(n+1)-(n+1)*A007913(A003961(n+1))-A003973(n+1)*A007913(n+1)+A007913(n+1)*A003961(n+1)` -/
def P10705393350155010930.Spec : Prop :=
  ∀ n, P10705393350155010930.a n = A388978 (n + 1)

end A388978

/-! ## A388978.P5130687998773142352

`(n+1-A007913(n+1))*A389077(n+1)`
-/

namespace A388978.P5130687998773142352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A007913 (n + 1)) * A389077 (n + 1)

end

end A388978.P5130687998773142352

namespace A388978

/-- `(n+1-A007913(n+1))*A389077(n+1)` -/
def P5130687998773142352.Spec : Prop :=
  ∀ n, P5130687998773142352.a n = A388978 (n + 1)

end A388978

/-! ## A388978.P11585461711964903477

`(1-A055231(A066990(n+1))+n)*A389077(n+1)`
-/

namespace A388978.P11585461711964903477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A055231 (A066990 (n + 1)).toNat + (n : ℤ)) * A389077 (n + 1)

end

end A388978.P11585461711964903477

namespace A388978

/-- `(1-A055231(A066990(n+1))+n)*A389077(n+1)` -/
def P11585461711964903477.Spec : Prop :=
  ∀ n, P11585461711964903477.a n = A388978 (n + 1)

end A388978

/-! ## A388978.P1006843267434920652

`(A326126(n+1)-A001065(n+1))*A389077(n+1)`
-/

namespace A388978.P1006843267434920652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A326126 (n + 1) - A001065 (n + 1)) * A389077 (n + 1)

end

end A388978.P1006843267434920652

namespace A388978

/-- `(A326126(n+1)-A001065(n+1))*A389077(n+1)` -/
def P1006843267434920652.Spec : Prop :=
  ∀ n, P1006843267434920652.a n = A388978 (n + 1)

end A388978

/-! ## A388978.P3780049883818447952

`(A389076(n+1)-A003961(n+1))*A326128(n+1)`
-/

namespace A388978.P3780049883818447952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A389076 (n + 1) - A003961 (n + 1)) * A326128 (n + 1)

end

end A388978.P3780049883818447952

namespace A388978

/-- `(A389076(n+1)-A003961(n+1))*A326128(n+1)` -/
def P3780049883818447952.Spec : Prop :=
  ∀ n, P3780049883818447952.a n = A388978 (n + 1)

theorem P3780049883818447952.correct : P3780049883818447952.Spec := by
  intro n
  simp only [A388978, Nat.add_sub_cancel, A388978.P3780049883818447952.a, A388978.P10471211982599907514.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003961, A003961.P5996473960037614004.a, A007913, A007913.P8131970495124731496.a, A326128, A326128.P4962900157914824511.a, A389076, A389076.P11407624223470191631.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A253885, A253885.P16715555451856890624.a, A243501, A243501.P10707292738867961998.a, A048673, A048673.P3613002930333742504.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A388978

/-!
# A388979: a(n) = A326127(n) * A389078(n).

The programs for A388979, the canonical program `A388979.P3109301176351806020` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388979 has offset 1).

The definition of A388979 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A389078, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A388979.P3109301176351806020

`A326127(n+1)*A389078(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A388979

/-- `A326127(n+1)*A389078(n+1)` -/
def P3109301176351806020.Spec : Prop :=
  ∀ n, P3109301176351806020.a n = A388979 (n + 1)

theorem P3109301176351806020.correct : P3109301176351806020.Spec := by
  intro n
  simp only [A388979, Nat.add_sub_cancel]

end A388979

/-! ## A388979.P2062113295142593826

`(A000203(n+1)-A007913(n+1)-(n+1))*(A003961(n+1)-A003961(A007913(n+1)))`
-/

namespace A388979.P2062113295142593826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A007913 (n + 1) - (n + 1 : ℤ)) * (A003961 (n + 1) - A003961 (A007913 (n + 1)).toNat)

end

end A388979.P2062113295142593826

namespace A388979

/-- `(A000203(n+1)-A007913(n+1)-(n+1))*(A003961(n+1)-A003961(A007913(n+1)))` -/
def P2062113295142593826.Spec : Prop :=
  ∀ n, P2062113295142593826.a n = A388979 (n + 1)

end A388979

/-! ## A388979.P12602166774221918547

`(A000203(n+1)-A007913(n+1)-(n+1))*(A003961(n+1)-A007913(A003961(n+1)))`
-/

namespace A388979.P12602166774221918547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A007913 (n + 1) - (n + 1 : ℤ)) * (A003961 (n + 1) - A007913 (A003961 (n + 1)).toNat)

end

end A388979.P12602166774221918547

namespace A388979

/-- `(A000203(n+1)-A007913(n+1)-(n+1))*(A003961(n+1)-A007913(A003961(n+1)))` -/
def P12602166774221918547.Spec : Prop :=
  ∀ n, P12602166774221918547.a n = A388979 (n + 1)

end A388979

/-! ## A388979.P3359835517941665500

`(∑{d}[n+1, #]-∏{p}[n+1, #+1])*A053735(A037245(n+3))`
-/

namespace A388979.P3359835517941665500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - ((∏ p ∈ Nat.primeFactors (f2 n), (p + 1) : ℕ) : ℤ)) * A053735 (A037245 (n + 3)).toNat

end

end A388979.P3359835517941665500

namespace A388979

/-- `(∑{d}[n+1, #]-∏{p}[n+1, #+1])*A053735(A037245(n+3))` -/
def P3359835517941665500.Spec : Prop :=
  ∀ n, P3359835517941665500.a n = A388979 (n + 1)

end A388979

/-! ## A388979.P18231350272520183269

`A066503(n+1)*A375027(A352944(n))`
-/

namespace A388979.P18231350272520183269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066503 (n + 1) * A375027 (A352944 n).toNat

end

end A388979.P18231350272520183269

namespace A388979

/-- `A066503(n+1)*A375027(A352944(n))` -/
def P18231350272520183269.Spec : Prop :=
  ∀ n, P18231350272520183269.a n = A388979 (n + 1)

end A388979

/-!
# A388980: Even numbers of the form p * m^2, where p is prime and m > 0.

The programs for A388980, the canonical program `A388980.P12589077229273322427` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388980 has offset 1).

The definition of A388980 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A388980.P12589077229273322427

`∪[A004171(n), A388984(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A388980

/-- `∪[A004171(n), A388984(n+1)]` -/
def P12589077229273322427.Spec : Prop :=
  ∀ n, (P12589077229273322427.a n : ℤ) = A388980 (n + 1)

theorem P12589077229273322427.correct : P12589077229273322427.Spec := by
  intro n
  simp only [A388980, Nat.add_sub_cancel]

end A388980

/-! ## A388980.P11290344663186226254

`filter[2*(n+1), A358769(#)]`
-/

namespace A388980.P11290344663186226254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j) = 1) n)

end

end A388980.P11290344663186226254

namespace A388980

/-- `filter[2*(n+1), A358769(#)]` -/
def P11290344663186226254.Spec : Prop :=
  ∀ n, (P11290344663186226254.a n : ℤ) = A388980 (n + 1)

end A388980

/-! ## A388980.P10162774780260413416

`∩[2*n, A229125(n+1)]`
-/

namespace A388980.P10162774780260413416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388980.P10162774780260413416

namespace A388980

/-- `∩[2*n, A229125(n+1)]` -/
def P10162774780260413416.Spec : Prop :=
  ∀ n, (P10162774780260413416.a n : ℤ) = A388980 (n + 1)

end A388980

/-! ## A388980.P3987991153598695603

`filter[A229125(n+1), A353556(#)]`
-/

namespace A388980.P3987991153598695603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353556 (f1 j).toNat = 1) n)

end

end A388980.P3987991153598695603

namespace A388980

/-- `filter[A229125(n+1), A353556(#)]` -/
def P3987991153598695603.Spec : Prop :=
  ∀ n, P3987991153598695603.a n = A388980 (n + 1)

end A388980

/-! ## A388980.P7749532260466869095

`filter[A229125(n+1), A354034(#)]`
-/

namespace A388980.P7749532260466869095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A388980.P7749532260466869095

namespace A388980

/-- `filter[A229125(n+1), A354034(#)]` -/
def P7749532260466869095.Spec : Prop :=
  ∀ n, P7749532260466869095.a n = A388980 (n + 1)

end A388980

/-! ## A388980.P18082161822257899199

`filter[A229125(n+1), A359770(#)]`
-/

namespace A388980.P18082161822257899199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359770 (f1 j).toNat = 1) n)

end

end A388980.P18082161822257899199

namespace A388980

/-- `filter[A229125(n+1), A359770(#)]` -/
def P18082161822257899199.Spec : Prop :=
  ∀ n, P18082161822257899199.a n = A388980 (n + 1)

end A388980

/-! ## A388980.P2558774959986127857

`filter[A265640(n+1), A353556(#)]`
-/

namespace A388980.P2558774959986127857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353556 (f1 j).toNat = 1) n)

end

end A388980.P2558774959986127857

namespace A388980

/-- `filter[A265640(n+1), A353556(#)]` -/
def P2558774959986127857.Spec : Prop :=
  ∀ n, P2558774959986127857.a n = A388980 (n + 1)

end A388980

/-! ## A388980.P11606842715264218217

`filter[A046470(n+1), A340372(#)]`
-/

namespace A388980.P11606842715264218217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340372 (f1 j).toNat = 1) n)

end

end A388980.P11606842715264218217

namespace A388980

/-- `filter[A046470(n+1), A340372(#)]` -/
def P11606842715264218217.Spec : Prop :=
  ∀ n, P11606842715264218217.a n = A388980 (n + 1)

end A388980

/-! ## A388980.P3430355885812039032

`∩[A046470(n+1), A265640(n+1)]`
-/

namespace A388980.P3430355885812039032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388980.P3430355885812039032

namespace A388980

/-- `∩[A046470(n+1), A265640(n+1)]` -/
def P3430355885812039032.Spec : Prop :=
  ∀ n, (P3430355885812039032.a n : ℤ) = A388980 (n + 1)

end A388980

/-! ## A388980.P11289699655265864092

`filter[A285801(n+1), A353556(#)]`
-/

namespace A388980.P11289699655265864092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353556 (f1 j).toNat = 1) n)

end

end A388980.P11289699655265864092

namespace A388980

/-- `filter[A285801(n+1), A353556(#)]` -/
def P11289699655265864092.Spec : Prop :=
  ∀ n, P11289699655265864092.a n = A388980 (n + 1)

end A388980

/-! ## A388980.P8619619911822269657

`∩[A046470(n+1), A285801(n+1)]`
-/

namespace A388980.P8619619911822269657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388980.P8619619911822269657

namespace A388980

/-- `∩[A046470(n+1), A285801(n+1)]` -/
def P8619619911822269657.Spec : Prop :=
  ∀ n, (P8619619911822269657.a n : ℤ) = A388980 (n + 1)

end A388980

/-! ## A388980.P4089440435693446412

`∩[A229125(n+1), A359771(n+1)]`
-/

namespace A388980.P4089440435693446412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388980.P4089440435693446412

namespace A388980

/-- `∩[A229125(n+1), A359771(n+1)]` -/
def P4089440435693446412.Spec : Prop :=
  ∀ n, (P4089440435693446412.a n : ℤ) = A388980 (n + 1)

end A388980

/-! ## A388980.P614325482303161088

`∩[A157502(n+1), A265640(n+1)]`
-/

namespace A388980.P614325482303161088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388980.P614325482303161088

namespace A388980

/-- `∩[A157502(n+1), A265640(n+1)]` -/
def P614325482303161088.Spec : Prop :=
  ∀ n, (P614325482303161088.a n : ℤ) = A388980 (n + 1)

end A388980

/-! ## A388980.P7625648378580055810

`A388982(∑[n]+1)`
-/

namespace A388980.P7625648378580055810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388982 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A388980.P7625648378580055810

namespace A388980

/-- `A388982(∑[n]+1)` -/
def P7625648378580055810.Spec : Prop :=
  ∀ n, P7625648378580055810.a n = A388980 (n + 1)

end A388980

/-!
# A388981: Square array A(n,k), read by descending antidiagonals, where A(1, k) = A388984(k), and for n > 1, A(n, k) = A003961(A(n-1), k).

The programs for A388981, there is no canonical definition to state claims against.
-/

/-! ## A388981.P8475735724319106607

`A388993(n+1)+A388988(n+1)`
-/

namespace A388981.P8475735724319106607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388993 (n + 1) + A388988 (n + 1)

end

end A388981.P8475735724319106607

/-! ## A388981.P5029824761235190291

`A388982(lt[A321893(n+1), A299146(n+1)])`
-/

namespace A388981.P5029824761235190291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388982 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A388981.P5029824761235190291

/-!
# A388983: Numbers, not powers of primes, that are of the form p * m^2, where p is prime and m by necessity > 1.

The programs for A388983, the canonical program `A388983.P17500820432191245093` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388983 has offset 1).

The definition of A388983 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9010 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A388983.P17500820432191245093

`filter[A228056(n+1), A355447(#)]`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A388983

/-- `filter[A228056(n+1), A355447(#)]` -/
def P17500820432191245093.Spec : Prop :=
  ∀ n, P17500820432191245093.a n = A388983 (n + 1)

theorem P17500820432191245093.correct : P17500820432191245093.Spec := by
  intro n
  simp only [A388983, Nat.add_sub_cancel]

end A388983

/-! ## A388983.P15353237113292320936

`filter[A229125(n+1), A355447(#)]`
-/

namespace A388983.P15353237113292320936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A388983.P15353237113292320936

namespace A388983

/-- `filter[A229125(n+1), A355447(#)]` -/
def P15353237113292320936.Spec : Prop :=
  ∀ n, P15353237113292320936.a n = A388983 (n + 1)

end A388983

/-! ## A388983.P756213946559720898

`filter[A072588(n+1), A358769(#)]`
-/

namespace A388983.P756213946559720898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A388983.P756213946559720898

namespace A388983

/-- `filter[A072588(n+1), A358769(#)]` -/
def P756213946559720898.Spec : Prop :=
  ∀ n, P756213946559720898.a n = A388983 (n + 1)

end A388983

/-! ## A388983.P15884099042922366684

`∩[A072588(n+1), A228056(n+1)]`
-/

namespace A388983.P15884099042922366684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388983.P15884099042922366684

namespace A388983

/-- `∩[A072588(n+1), A228056(n+1)]` -/
def P15884099042922366684.Spec : Prop :=
  ∀ n, (P15884099042922366684.a n : ℤ) = A388983 (n + 1)

end A388983

/-! ## A388983.P14616346274207578173

`filter[A072587(n+1), A358769(#)]`
-/

namespace A388983.P14616346274207578173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072587 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A388983.P14616346274207578173

namespace A388983

/-- `filter[A072587(n+1), A358769(#)]` -/
def P14616346274207578173.Spec : Prop :=
  ∀ n, P14616346274207578173.a n = A388983 (n + 1)

end A388983

/-! ## A388983.P6965350923966129868

`∩[A072587(n+1), A228056(n+1)]`
-/

namespace A388983.P6965350923966129868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388983.P6965350923966129868

namespace A388983

/-- `∩[A072587(n+1), A228056(n+1)]` -/
def P6965350923966129868.Spec : Prop :=
  ∀ n, (P6965350923966129868.a n : ℤ) = A388983 (n + 1)

end A388983

/-! ## A388983.P11022842404625715615

`∩[A072587(n+1), A229125(n+1)]`
-/

namespace A388983.P11022842404625715615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388983.P11022842404625715615

namespace A388983

/-- `∩[A072587(n+1), A229125(n+1)]` -/
def P11022842404625715615.Spec : Prop :=
  ∀ n, (P11022842404625715615.a n : ℤ) = A388983 (n + 1)

end A388983

/-! ## A388983.P623882481001309621

`filter[A059404(n+1), A358769(#)]`
-/

namespace A388983.P623882481001309621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A388983.P623882481001309621

namespace A388983

/-- `filter[A059404(n+1), A358769(#)]` -/
def P623882481001309621.Spec : Prop :=
  ∀ n, P623882481001309621.a n = A388983 (n + 1)

end A388983

/-! ## A388983.P7840328238579804331

`∩[A059404(n+1), A228056(n+1)]`
-/

namespace A388983.P7840328238579804331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388983.P7840328238579804331

namespace A388983

/-- `∩[A059404(n+1), A228056(n+1)]` -/
def P7840328238579804331.Spec : Prop :=
  ∀ n, (P7840328238579804331.a n : ℤ) = A388983 (n + 1)

end A388983

/-! ## A388983.P7531718303415763925

`∩[A059404(n+1), A229125(n+1)]`
-/

namespace A388983.P7531718303415763925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388983.P7531718303415763925

namespace A388983

/-- `∩[A059404(n+1), A229125(n+1)]` -/
def P7531718303415763925.Spec : Prop :=
  ∀ n, (P7531718303415763925.a n : ℤ) = A388983 (n + 1)

end A388983

/-! ## A388983.P10464673113366511771

`filter[A126706(n+1), A358769(#)]`
-/

namespace A388983.P10464673113366511771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A388983.P10464673113366511771

namespace A388983

/-- `filter[A126706(n+1), A358769(#)]` -/
def P10464673113366511771.Spec : Prop :=
  ∀ n, P10464673113366511771.a n = A388983 (n + 1)

end A388983

/-! ## A388983.P14071787092412759

`filter[A024619(n+1), A358769(#)]`
-/

namespace A388983.P14071787092412759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A388983.P14071787092412759

namespace A388983

/-- `filter[A024619(n+1), A358769(#)]` -/
def P14071787092412759.Spec : Prop :=
  ∀ n, P14071787092412759.a n = A388983 (n + 1)

end A388983

/-! ## A388983.P10002636083010867641

`filter[A361102(n+1), A358769(#)]`
-/

namespace A388983.P10002636083010867641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A388983.P10002636083010867641

namespace A388983

/-- `filter[A361102(n+1), A358769(#)]` -/
def P10002636083010867641.Spec : Prop :=
  ∀ n, P10002636083010867641.a n = A388983 (n + 1)

end A388983

/-! ## A388983.P17907484575192918390

`filter[A387335(n+3), A358769(#)]`
-/

namespace A388983.P17907484575192918390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387335 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A388983.P17907484575192918390

namespace A388983

/-- `filter[A387335(n+3), A358769(#)]` -/
def P17907484575192918390.Spec : Prop :=
  ∀ n, P17907484575192918390.a n = A388983 (n + 1)

end A388983

/-! ## A388983.P1608447263510247439

`∩[A024619(n+1), A228056(n+1)]`
-/

namespace A388983.P1608447263510247439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388983.P1608447263510247439

namespace A388983

/-- `∩[A024619(n+1), A228056(n+1)]` -/
def P1608447263510247439.Spec : Prop :=
  ∀ n, (P1608447263510247439.a n : ℤ) = A388983 (n + 1)

end A388983

/-! ## A388983.P4090984770513207731

`∩[A024619(n+1), A229125(n+1)]`
-/

namespace A388983.P4090984770513207731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388983.P4090984770513207731

namespace A388983

/-- `∩[A024619(n+1), A229125(n+1)]` -/
def P4090984770513207731.Spec : Prop :=
  ∀ n, (P4090984770513207731.a n : ℤ) = A388983 (n + 1)

end A388983

/-! ## A388983.P779155626914690079

`∩[A085971(n+1), A228056(n+1)]`
-/

namespace A388983.P779155626914690079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388983.P779155626914690079

namespace A388983

/-- `∩[A085971(n+1), A228056(n+1)]` -/
def P779155626914690079.Spec : Prop :=
  ∀ n, (P779155626914690079.a n : ℤ) = A388983 (n + 1)

end A388983

/-! ## A388983.P15961920264317980407

`filter[A228056(n+1), A143731(#)]`
-/

namespace A388983.P15961920264317980407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A388983.P15961920264317980407

namespace A388983

/-- `filter[A228056(n+1), A143731(#)]` -/
def P15961920264317980407.Spec : Prop :=
  ∀ n, P15961920264317980407.a n = A388983 (n + 1)

end A388983

/-! ## A388983.P18242891806942183574

`filter[A229125(n+1), A143731(#)]`
-/

namespace A388983.P18242891806942183574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A388983.P18242891806942183574

namespace A388983

/-- `filter[A229125(n+1), A143731(#)]` -/
def P18242891806942183574.Spec : Prop :=
  ∀ n, P18242891806942183574.a n = A388983 (n + 1)

end A388983

/-! ## A388983.P8438225042506677028

`filter[A102467(n+1), A358769(#)]`
-/

namespace A388983.P8438225042506677028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A388983.P8438225042506677028

namespace A388983

/-- `filter[A102467(n+1), A358769(#)]` -/
def P8438225042506677028.Spec : Prop :=
  ∀ n, P8438225042506677028.a n = A388983 (n + 1)

end A388983

/-!
# A388984: Even numbers, not powers of primes, that are of the form p * m^2, where p is prime and m by necessity > 1.

The programs for A388984, the canonical program `A388984.P10702588259379283515` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388984 has offset 1).

The definition of A388984 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5578 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A388984.P15397428597090625286

`∩[2*n, A388983(n+1)]`
-/

namespace A388984.P15397428597090625286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388984.P15397428597090625286

namespace A388984

/-- `∩[2*n, A388983(n+1)]` -/
def P15397428597090625286.Spec : Prop :=
  ∀ n, (P15397428597090625286.a n : ℤ) = A388984 (n + 1)

end A388984

/-! ## A388984.P8168270710950210942

`filter[A388980(n+1), A355447(#)]`
-/

namespace A388984.P8168270710950210942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A388984.P8168270710950210942

namespace A388984

/-- `filter[A388980(n+1), A355447(#)]` -/
def P8168270710950210942.Spec : Prop :=
  ∀ n, P8168270710950210942.a n = A388984 (n + 1)

end A388984

/-! ## A388984.P10702588259379283515

`filter[A388983(n+1), A359770(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A388984

/-- `filter[A388983(n+1), A359770(#)]` -/
def P10702588259379283515.Spec : Prop :=
  ∀ n, P10702588259379283515.a n = A388984 (n + 1)

theorem P10702588259379283515.correct : P10702588259379283515.Spec := by
  intro n
  simp only [A388984, Nat.add_sub_cancel]

end A388984

/-! ## A388984.P7488785954818507282

`filter[A388980(n+1), A202238(#)]`
-/

namespace A388984.P7488785954818507282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A388984.P7488785954818507282

namespace A388984

/-- `filter[A388980(n+1), A202238(#)]` -/
def P7488785954818507282.Spec : Prop :=
  ∀ n, P7488785954818507282.a n = A388984 (n + 1)

end A388984

/-! ## A388984.P12305445206871361279

`filter[A388980(n+1), A323170(#)]`
-/

namespace A388984.P12305445206871361279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A388984.P12305445206871361279

namespace A388984

/-- `filter[A388980(n+1), A323170(#)]` -/
def P12305445206871361279.Spec : Prop :=
  ∀ n, P12305445206871361279.a n = A388984 (n + 1)

end A388984

/-! ## A388984.P7186644300096871825

`filter[A388980(n+1), A347523(#)]`
-/

namespace A388984.P7186644300096871825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A388984.P7186644300096871825

namespace A388984

/-- `filter[A388980(n+1), A347523(#)]` -/
def P7186644300096871825.Spec : Prop :=
  ∀ n, P7186644300096871825.a n = A388984 (n + 1)

end A388984

/-! ## A388984.P5072540838682497247

`filter[A388983(n+1), A353556(#)]`
-/

namespace A388984.P5072540838682497247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353556 (f1 j).toNat = 1) n)

end

end A388984.P5072540838682497247

namespace A388984

/-- `filter[A388983(n+1), A353556(#)]` -/
def P5072540838682497247.Spec : Prop :=
  ∀ n, P5072540838682497247.a n = A388984 (n + 1)

end A388984

/-! ## A388984.P18327495179783282240

`filter[A388983(n+1), A354034(#)]`
-/

namespace A388984.P18327495179783282240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A388984.P18327495179783282240

namespace A388984

/-- `filter[A388983(n+1), A354034(#)]` -/
def P18327495179783282240.Spec : Prop :=
  ∀ n, P18327495179783282240.a n = A388984 (n + 1)

end A388984

/-! ## A388984.P7863695359597127375

`filter[A177712(n+1), A358769(#)]`
-/

namespace A388984.P7863695359597127375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A388984.P7863695359597127375

namespace A388984

/-- `filter[A177712(n+1), A358769(#)]` -/
def P7863695359597127375.Spec : Prop :=
  ∀ n, P7863695359597127375.a n = A388984 (n + 1)

end A388984

/-! ## A388984.P10960251651179986699

`∩[A177712(n+1), A228056(n+1)]`
-/

namespace A388984.P10960251651179986699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388984.P10960251651179986699

namespace A388984

/-- `∩[A177712(n+1), A228056(n+1)]` -/
def P10960251651179986699.Spec : Prop :=
  ∀ n, (P10960251651179986699.a n : ℤ) = A388984 (n + 1)

end A388984

/-! ## A388984.P17731497295474634878

`∩[A177712(n+1), A229125(n+1)]`
-/

namespace A388984.P17731497295474634878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388984.P17731497295474634878

namespace A388984

/-- `∩[A177712(n+1), A229125(n+1)]` -/
def P17731497295474634878.Spec : Prop :=
  ∀ n, (P17731497295474634878.a n : ℤ) = A388984 (n + 1)

end A388984

/-! ## A388984.P16702110594420337208

`filter[A363101(n+1), A358769(#)]`
-/

namespace A388984.P16702110594420337208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A388984.P16702110594420337208

namespace A388984

/-- `filter[A363101(n+1), A358769(#)]` -/
def P16702110594420337208.Spec : Prop :=
  ∀ n, P16702110594420337208.a n = A388984 (n + 1)

end A388984

/-! ## A388984.P1913641028914423084

`∩[A059404(n+1), A388980(n+1)]`
-/

namespace A388984.P1913641028914423084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388984.P1913641028914423084

namespace A388984

/-- `∩[A059404(n+1), A388980(n+1)]` -/
def P1913641028914423084.Spec : Prop :=
  ∀ n, (P1913641028914423084.a n : ℤ) = A388984 (n + 1)

end A388984

/-! ## A388984.P6717159207379082668

`∩[A388983(n+1), A004277(n)]`
-/

namespace A388984.P6717159207379082668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388984.P6717159207379082668

namespace A388984

/-- `∩[A388983(n+1), A004277(n)]` -/
def P6717159207379082668.Spec : Prop :=
  ∀ n, (P6717159207379082668.a n : ℤ) = A388984 (n + 1)

end A388984

/-! ## A388984.P8569318082328586899

`∩[A388983(n+1), A005843(n)]`
-/

namespace A388984.P8569318082328586899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388984.P8569318082328586899

namespace A388984

/-- `∩[A388983(n+1), A005843(n)]` -/
def P8569318082328586899.Spec : Prop :=
  ∀ n, (P8569318082328586899.a n : ℤ) = A388984 (n + 1)

end A388984

/-! ## A388984.P7079711245999043873

`∩[A388983(n+1), A020739(n)]`
-/

namespace A388984.P7079711245999043873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388984.P7079711245999043873

namespace A388984

/-- `∩[A388983(n+1), A020739(n)]` -/
def P7079711245999043873.Spec : Prop :=
  ∀ n, (P7079711245999043873.a n : ℤ) = A388984 (n + 1)

end A388984

/-! ## A388984.P18234546734637761680

`∩[A388983(n+1), A020744(n)]`
-/

namespace A388984.P18234546734637761680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388984.P18234546734637761680

namespace A388984

/-- `∩[A388983(n+1), A020744(n)]` -/
def P18234546734637761680.Spec : Prop :=
  ∀ n, (P18234546734637761680.a n : ℤ) = A388984 (n + 1)

end A388984

/-! ## A388984.P2382484788646514433

`∩[A388983(n+1), A103517(n)]`
-/

namespace A388984.P2382484788646514433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388984.P2382484788646514433

namespace A388984

/-- `∩[A388983(n+1), A103517(n)]` -/
def P2382484788646514433.Spec : Prop :=
  ∀ n, (P2382484788646514433.a n : ℤ) = A388984 (n + 1)

end A388984

/-! ## A388984.P11791065959827409810

`∩[A388983(n+1), A004275(n)]`
-/

namespace A388984.P11791065959827409810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388984.P11791065959827409810

namespace A388984

/-- `∩[A388983(n+1), A004275(n)]` -/
def P11791065959827409810.Spec : Prop :=
  ∀ n, (P11791065959827409810.a n : ℤ) = A388984 (n + 1)

end A388984

/-! ## A388984.P16710995929587750713

`∩[A158871(n+1), A388980(n+1)]`
-/

namespace A388984.P16710995929587750713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388984.P16710995929587750713

namespace A388984

/-- `∩[A158871(n+1), A388980(n+1)]` -/
def P16710995929587750713.Spec : Prop :=
  ∀ n, (P16710995929587750713.a n : ℤ) = A388984 (n + 1)

end A388984

/-!
# A388985: Numbers k such that {sum of unitary divisors of k} plus {sum of squarefree divisors of k} does not exceed 2*k.

The programs for A388985, the canonical program `A388985.P5764295466939194596` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388985 has offset 1).

The definition of A388985 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3970 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A388985.P5764295466939194596

`lt[A325977(1+n), 1]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A388985

/-- `lt[A325977(1+n), 1]+1` -/
def P5764295466939194596.Spec : Prop :=
  ∀ n, (P5764295466939194596.a n : ℤ) = A388985 (n + 1)

theorem P5764295466939194596.correct : P5764295466939194596.Spec := by
  intro n
  simp only [A388985, Nat.add_sub_cancel]

end A388985

/-!
# A388986: Numbers k such that {sum of unitary divisors of k} plus {sum of squarefree divisors of k} is less than 2*k.

The programs for A388986, the canonical program `A388986.P11904024746085052397` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388986 has offset 1).

The definition of A388986 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4846 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A388986.P11904024746085052397

`lt[A325973(n+1), n]+1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A388986

/-- `lt[A325973(n+1), n]+1` -/
def P11904024746085052397.Spec : Prop :=
  ∀ n, (P11904024746085052397.a n : ℤ) = A388986 (n + 1)

theorem P11904024746085052397.correct : P11904024746085052397.Spec := by
  intro n
  simp only [A388986, Nat.add_sub_cancel]

end A388986

/-! ## A388986.P12340983299571760137

`∩[comp[A389215(n+1)], A013929(n+1)]`
-/

namespace A388986.P12340983299571760137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389215 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A388986.P12340983299571760137

namespace A388986

/-- `∩[comp[A389215(n+1)], A013929(n+1)]` -/
def P12340983299571760137.Spec : Prop :=
  ∀ n, (P12340983299571760137.a n : ℤ) = A388986 (n + 1)

end A388986

/-! ## A388986.P1045707134429393169

`∩[comp[A389215(n+1)], A388985(n+1)]`
-/

namespace A388986.P1045707134429393169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389215 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A388986.P1045707134429393169

namespace A388986

/-- `∩[comp[A389215(n+1)], A388985(n+1)]` -/
def P1045707134429393169.Spec : Prop :=
  ∀ n, (P1045707134429393169.a n : ℤ) = A388986 (n + 1)

end A388986

/-! ## A388986.P1361061676948559457

`A020725(lt[A325973(n+1), n])`
-/

namespace A388986.P1361061676948559457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325973 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A388986.P1361061676948559457

namespace A388986

/-- `A020725(lt[A325973(n+1), n])` -/
def P1361061676948559457.Spec : Prop :=
  ∀ n, P1361061676948559457.a n = A388986 (n + 1)

end A388986

/-! ## A388986.P7845522068366892152

`lt[A325977(n+1), A153881(n+2)]+1`
-/

namespace A388986.P7845522068366892152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A388986.P7845522068366892152

namespace A388986

/-- `lt[A325977(n+1), A153881(n+2)]+1` -/
def P7845522068366892152.Spec : Prop :=
  ∀ n, (P7845522068366892152.a n : ℤ) = A388986 (n + 1)

end A388986

/-! ## A388986.P12789703729231233766

`lt[A325977(A028310(n)), A074290(n+1)]`
-/

namespace A388986.P12789703729231233766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325977 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074290 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A388986.P12789703729231233766

namespace A388986

/-- `lt[A325977(A028310(n)), A074290(n+1)]` -/
def P12789703729231233766.Spec : Prop :=
  ∀ n, (P12789703729231233766.a n : ℤ) = A388986 (n + 1)

end A388986

/-! ## A388986.P11650586057642315951

`lt[A325977(A028310(n)), A000035(2*(n+1))]`
-/

namespace A388986.P11650586057642315951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325977 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A388986.P11650586057642315951

namespace A388986

/-- `lt[A325977(A028310(n)), A000035(2*(n+1))]` -/
def P11650586057642315951.Spec : Prop :=
  ∀ n, (P11650586057642315951.a n : ℤ) = A388986 (n + 1)

end A388986

/-! ## A388986.P973576004088776558

`lt[A325977(n+1), A008836(3*(n+1))]+1`
-/

namespace A388986.P973576004088776558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A388986.P973576004088776558

namespace A388986

/-- `lt[A325977(n+1), A008836(3*(n+1))]+1` -/
def P973576004088776558.Spec : Prop :=
  ∀ n, (P973576004088776558.a n : ℤ) = A388986 (n + 1)

end A388986

/-! ## A388986.P6833933019434892156

`A393869(n+1)+C(A379907(n), A360765(2*n+3))`
-/

namespace A388986.P6833933019434892156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393869 (n + 1) + (Nat.choose (A379907 n).toNat (A360765 (2 * n + 3)).toNat : ℤ)

end

end A388986.P6833933019434892156

namespace A388986

/-- `A393869(n+1)+C(A379907(n), A360765(2*n+3))` -/
def P6833933019434892156.Spec : Prop :=
  ∀ n, P6833933019434892156.a n = A388986 (n + 1)

end A388986

/-! ## A388986.P17301294533357777060

`A393869(n+1)+C(A379907(n+3), A319316(3*n+1))`
-/

namespace A388986.P17301294533357777060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393869 (n + 1) + (Nat.choose (A379907 (n + 3)).toNat (A319316 (3 * n + 1)).toNat : ℤ)

end

end A388986.P17301294533357777060

namespace A388986

/-- `A393869(n+1)+C(A379907(n+3), A319316(3*n+1))` -/
def P17301294533357777060.Spec : Prop :=
  ∀ n, P17301294533357777060.a n = A388986 (n + 1)

end A388986

/-!
# A388987: Square array A(n,k) = A326127(A388981(n, k)), read by descending antidiagonals.

The programs for A388987, there is no canonical definition to state claims against.
-/

/-! ## A388987.P6871555736983625714

`A326127(A388981(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388987.P6871555736983625714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326127 (A388981 (n + 1)).toNat

end

end A388987.P6871555736983625714

/-! ## A388987.P12417374929482816407

`A326127(A388981(C(col(n)+1+row(n)-col(n)+1-1, 2)+col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388987.P12417374929482816407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326127 (A388981 (Nat.choose ((SequenceMachineLib.triCol n + 1 : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) - 1).toNat 2 + (SequenceMachineLib.triCol n + 1))).toNat

end

end A388987.P12417374929482816407

/-! ## A388987.P12094337126976444017

`A326127(A388981(C(row(n)-col(n)+1+col(n)+1-1, 2)+col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388987.P12094337126976444017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326127 (A388981 (Nat.choose ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 + (SequenceMachineLib.triCol n + 1 : ℤ) - 1).toNat 2 + (SequenceMachineLib.triCol n + 1))).toNat

end

end A388987.P12094337126976444017

/-! ## A388987.P3666916214000824677

`A388988(n+1)/A388989(n+1)*A388990(n+1)`
-/

namespace A388987.P3666916214000824677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A388988 (n + 1) : ℚ) / (A388989 (n + 1) : ℚ) * (A388990 (n + 1) : ℚ)

end

end A388987.P3666916214000824677

/-! ## A388987.P12273794681124490074

`A326127(A388993(n+1)+A388988(n+1))`
-/

namespace A388987.P12273794681124490074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326127 (A388993 (n + 1) + A388988 (n + 1)).toNat

end

end A388987.P12273794681124490074

/-!
# A388988: Square array A(n,k) = A326128(A388981(n, k)), read by descending antidiagonals.

The programs for A388988, there is no canonical definition to state claims against.
-/

/-! ## A388988.P7013950391025726618

`A326128(A388981(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388988.P7013950391025726618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326128 (A388981 (n + 1)).toNat

end

end A388988.P7013950391025726618

/-! ## A388988.P6695430845313473108

`A326128(A388981(C(col(n)+1+row(n)-col(n)+1-1, 2)+col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388988.P6695430845313473108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326128 (A388981 (Nat.choose ((SequenceMachineLib.triCol n + 1 : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) - 1).toNat 2 + (SequenceMachineLib.triCol n + 1))).toNat

end

end A388988.P6695430845313473108

/-! ## A388988.P10379895982136213554

`A326128(A388981(C(row(n)-col(n)+1+col(n)+1-1, 2)+col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388988.P10379895982136213554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326128 (A388981 (Nat.choose ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 + (SequenceMachineLib.triCol n + 1 : ℤ) - 1).toNat 2 + (SequenceMachineLib.triCol n + 1))).toNat

end

end A388988.P10379895982136213554

/-! ## A388988.P1032724964009066022

`A388981(n+1)-A388993(n+1)`
-/

namespace A388988.P1032724964009066022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388981 (n + 1) - A388993 (n + 1)

end

end A388988.P1032724964009066022

/-! ## A388988.P13230149756949639260

`A326129(A388981(n+1))*A388989(n+1)`
-/

namespace A388988.P13230149756949639260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326129 (A388981 (n + 1)).toNat * A388989 (n + 1)

end

end A388988.P13230149756949639260

/-!
# A388989: Square array A(n,k) = A388991(A388981(n, k)), read by descending antidiagonals.

The programs for A388989, there is no canonical definition to state claims against.
-/

/-! ## A388989.P11124644881106676033

`A388991(A388981(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388989.P11124644881106676033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388991 (A388981 (n + 1)).toNat

end

end A388989.P11124644881106676033

/-! ## A388989.P14390398255559856513

`A388991(A388981(C(col(n)+1+row(n)-col(n)+1-1, 2)+col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388989.P14390398255559856513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388991 (A388981 (Nat.choose ((SequenceMachineLib.triCol n + 1 : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) - 1).toNat 2 + (SequenceMachineLib.triCol n + 1))).toNat

end

end A388989.P14390398255559856513

/-! ## A388989.P16826734117988807283

`A388991(A388981(C(row(n)-col(n)+1+col(n)+1-1, 2)+col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388989.P16826734117988807283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388991 (A388981 (Nat.choose ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 + (SequenceMachineLib.triCol n + 1 : ℤ) - 1).toNat 2 + (SequenceMachineLib.triCol n + 1))).toNat

end

end A388989.P16826734117988807283

/-! ## A388989.P2254590863621129279

`A388991(A388993(n+1)+A388988(n+1))`
-/

namespace A388989.P2254590863621129279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388991 (A388993 (n + 1) + A388988 (n + 1)).toNat

end

end A388989.P2254590863621129279

/-!
# A388990: Square array A(n,k) = A388992(A388981(n, k)), read by descending antidiagonals.

The programs for A388990, there is no canonical definition to state claims against.
-/

/-! ## A388990.P13272182784719680492

`A388992(A388981(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388990.P13272182784719680492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388992 (A388981 (n + 1)).toNat

end

end A388990.P13272182784719680492

/-! ## A388990.P2110252480913244355

`A388992(A388981(C(col(n)+1+row(n)-col(n)+1-1, 2)+col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388990.P2110252480913244355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388992 (A388981 (Nat.choose ((SequenceMachineLib.triCol n + 1 : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) - 1).toNat 2 + (SequenceMachineLib.triCol n + 1))).toNat

end

end A388990.P2110252480913244355

/-! ## A388990.P844054520052959711

`A388992(A388981(C(row(n)-col(n)+1+col(n)+1-1, 2)+col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388990.P844054520052959711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388992 (A388981 (Nat.choose ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 + (SequenceMachineLib.triCol n + 1 : ℤ) - 1).toNat 2 + (SequenceMachineLib.triCol n + 1))).toNat

end

end A388990.P844054520052959711

/-! ## A388990.P8153249701034029583

`A388992(A388993(n+1)+A388988(n+1))`
-/

namespace A388990.P8153249701034029583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388992 (A388993 (n + 1) + A388988 (n + 1)).toNat

end

end A388990.P8153249701034029583

/-!
# A388991: a(n) is the numerator of ratio A326128(n) / A326127(n), with a(6) = 0 by convention.

The programs for A388991, there is no canonical definition to state claims against.
-/

/-! ## A388991.P143073788935683711

`A326128(n+1)/A226535(A089458(n+1))`
-/

namespace A388991.P143073788935683711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326128 (n + 1) : ℚ) / (A226535 (A089458 (n + 1)).toNat : ℚ)

end

end A388991.P143073788935683711

/-! ## A388991.P7151579579577343914

`A326128(n+1)%A364486(A305938(2*n+3))`
-/

namespace A388991.P7151579579577343914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326128 (n + 1)) (A364486 (A305938 (2 * n + 3)).toNat)

end

end A388991.P7151579579577343914

/-!
# A388993: Square array A(n,k) = A007913(A388981(n, k)), read by descending antidiagonals.

The programs for A388993, there is no canonical definition to state claims against.
-/

/-! ## A388993.P16623772504244892663

`A007913(A388981(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388993.P16623772504244892663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A388981 (n + 1)).toNat

end

end A388993.P16623772504244892663

/-! ## A388993.P8846398915904209242

`A007913(A388981(C(col(n)+1+row(n)-col(n)+1-1, 2)+col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388993.P8846398915904209242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A388981 (Nat.choose ((SequenceMachineLib.triCol n + 1 : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) - 1).toNat 2 + (SequenceMachineLib.triCol n + 1))).toNat

end

end A388993.P8846398915904209242

/-! ## A388993.P752120114929559131

`A007913(A388981(C(row(n)-col(n)+1+col(n)+1-1, 2)+col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388993.P752120114929559131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A388981 (Nat.choose ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 + (SequenceMachineLib.triCol n + 1 : ℤ) - 1).toNat 2 + (SequenceMachineLib.triCol n + 1))).toNat

end

end A388993.P752120114929559131

/-! ## A388993.P18320395219550520158

`A388981(n+1)-A388988(n+1)`
-/

namespace A388993.P18320395219550520158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388981 (n + 1) - A388988 (n + 1)

end

end A388993.P18320395219550520158

/-!
# A388994: a(n) = {sum of squarefree divisors of n} minus {sum of divisors of n that have a square factor}.

The programs for A388994, the canonical program `A388994.P3930905186296382464` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388994 has offset 1).

The definition of A388994 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162296, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A388994.P3930905186296382464

`A048250(n+1)-A162296(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A388994

/-- `A048250(n+1)-A162296(n+1)` -/
def P3930905186296382464.Spec : Prop :=
  ∀ n, P3930905186296382464.a n = A388994 (n + 1)

theorem P3930905186296382464.correct : P3930905186296382464.Spec := by
  intro n
  simp only [A388994, Nat.add_sub_cancel]

end A388994

/-! ## A388994.P10314249868264171400

`2*A048250(n+1)-A000203(n+1)`
-/

namespace A388994.P10314249868264171400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048250 (n + 1) - A000203 (n + 1)

end

end A388994.P10314249868264171400

namespace A388994

/-- `2*A048250(n+1)-A000203(n+1)` -/
def P10314249868264171400.Spec : Prop :=
  ∀ n, P10314249868264171400.a n = A388994 (n + 1)

theorem P10314249868264171400.correct : P10314249868264171400.Spec := by
  intro n
  simp only [A388994, Nat.add_sub_cancel, A388994.P10314249868264171400.a, A388994.P3930905186296382464.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A162296, A162296.P3792343839344082597.f1, A162296.P3792343839344082597.f2, A162296.P3792343839344082597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A388994

/-! ## A388994.P665308181859288992

`A000203(n+1)-2*A162296(n+1)`
-/

namespace A388994.P665308181859288992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - 2 * A162296 (n + 1)

end

end A388994.P665308181859288992

namespace A388994

/-- `A000203(n+1)-2*A162296(n+1)` -/
def P665308181859288992.Spec : Prop :=
  ∀ n, P665308181859288992.a n = A388994 (n + 1)

theorem P665308181859288992.correct : P665308181859288992.Spec := by
  intro n
  simp only [A388994, Nat.add_sub_cancel, A388994.P665308181859288992.a, A388994.P3930905186296382464.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A162296, A162296.P3792343839344082597.f1, A162296.P3792343839344082597.f2, A162296.P3792343839344082597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A388994

/-! ## A388994.P10058464933325831028

`∏{p}[1+n, #+1]-(∑{d}[n+1, #]-∏{p}[1+n, #+1])`
-/

namespace A388994.P10058464933325831028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (p + 1) : ℕ) : ℤ) - (((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - ((∏ p ∈ Nat.primeFactors (f3 n), (p + 1) : ℕ) : ℤ))

end

end A388994.P10058464933325831028

namespace A388994

/-- `∏{p}[1+n, #+1]-(∑{d}[n+1, #]-∏{p}[1+n, #+1])` -/
def P10058464933325831028.Spec : Prop :=
  ∀ n, P10058464933325831028.a n = A388994 (n + 1)

theorem P10058464933325831028.correct : P10058464933325831028.Spec := by
  intro n
  simp only [A388994, Nat.add_sub_cancel, A388994.P10058464933325831028.f1, A388994.P10058464933325831028.f2, A388994.P10058464933325831028.f3, A388994.P10058464933325831028.a, A388994.P3930905186296382464.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A162296, A162296.P3792343839344082597.f1, A162296.P3792343839344082597.f2, A162296.P3792343839344082597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A388994

/-! ## A388994.P5799177062528908039

`∏{p}[n+1, #+1]-A162296(n+1)`
-/

namespace A388994.P5799177062528908039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (p + 1) : ℕ) : ℤ) - A162296 (n + 1)

end

end A388994.P5799177062528908039

namespace A388994

/-- `∏{p}[n+1, #+1]-A162296(n+1)` -/
def P5799177062528908039.Spec : Prop :=
  ∀ n, P5799177062528908039.a n = A388994 (n + 1)

end A388994

/-! ## A388994.P1374778915151459862

`A325314(n+1)+A325313(n+1)`
-/

namespace A388994.P1374778915151459862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325314 (n + 1) + A325313 (n + 1)

end

end A388994.P1374778915151459862

namespace A388994

/-- `A325314(n+1)+A325313(n+1)` -/
def P1374778915151459862.Spec : Prop :=
  ∀ n, P1374778915151459862.a n = A388994 (n + 1)

theorem P1374778915151459862.correct : P1374778915151459862.Spec := by
  intro n
  simp only [A388994, Nat.add_sub_cancel, A388994.P1374778915151459862.a, A388994.P3930905186296382464.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A162296, A162296.P3792343839344082597.f1, A162296.P3792343839344082597.f2, A162296.P3792343839344082597.a, A325313, A325313.P16190563631669618661.a, A325314, A325314.P1683321656325189174.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A388994

/-! ## A388994.P16222264901427898664

`A389204(n+1)-A389162(n+1)`
-/

namespace A388994.P16222264901427898664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389204 (n + 1) - A389162 (n + 1)

end

end A388994.P16222264901427898664

namespace A388994

/-- `A389204(n+1)-A389162(n+1)` -/
def P16222264901427898664.Spec : Prop :=
  ∀ n, P16222264901427898664.a n = A388994 (n + 1)

end A388994

/-! ## A388994.P13930612747954309663

`A325313(n+1)+A325313(n+1)+A033879(n+1)`
-/

namespace A388994.P13930612747954309663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325313 (n + 1) + (A325313 (n + 1) + A033879 (n + 1))

end

end A388994.P13930612747954309663

namespace A388994

/-- `A325313(n+1)+A325313(n+1)+A033879(n+1)` -/
def P13930612747954309663.Spec : Prop :=
  ∀ n, P13930612747954309663.a n = A388994 (n + 1)

theorem P13930612747954309663.correct : P13930612747954309663.Spec := by
  intro n
  simp only [A388994, Nat.add_sub_cancel, A388994.P13930612747954309663.a, A388994.P3930905186296382464.a, A033879, A033879.P5965131822542929609.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A162296, A162296.P3792343839344082597.f1, A162296.P3792343839344082597.f2, A162296.P3792343839344082597.a, A325313, A325313.P16190563631669618661.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A388994

/-! ## A388994.P2430452306475613612

`A048250(n+1)+A389204(n+1)-A034448(n+1)`
-/

namespace A388994.P2430452306475613612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) + (A389204 (n + 1) - A034448 (n + 1))

end

end A388994.P2430452306475613612

namespace A388994

/-- `A048250(n+1)+A389204(n+1)-A034448(n+1)` -/
def P2430452306475613612.Spec : Prop :=
  ∀ n, P2430452306475613612.a n = A388994 (n + 1)

end A388994

/-! ## A388994.P14761142088656489149

`A325314(n+1)+A325314(n+1)-A033879(n+1)`
-/

namespace A388994.P14761142088656489149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325314 (n + 1) + (A325314 (n + 1) - A033879 (n + 1))

end

end A388994.P14761142088656489149

namespace A388994

/-- `A325314(n+1)+A325314(n+1)-A033879(n+1)` -/
def P14761142088656489149.Spec : Prop :=
  ∀ n, P14761142088656489149.a n = A388994 (n + 1)

theorem P14761142088656489149.correct : P14761142088656489149.Spec := by
  intro n
  simp only [A388994, Nat.add_sub_cancel, A388994.P14761142088656489149.a, A388994.P3930905186296382464.a, A033879, A033879.P5965131822542929609.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A162296, A162296.P3792343839344082597.f1, A162296.P3792343839344082597.f2, A162296.P3792343839344082597.a, A325314, A325314.P1683321656325189174.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A388994

/-! ## A388994.P18150273441262163404

`A005843(∏{p}[1+n, #+1])-∑{d}[n+1, #]`
-/

namespace A388994.P18150273441262163404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∏ p ∈ Nat.primeFactors (f1 n), (p + 1)) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A388994.P18150273441262163404

namespace A388994

/-- `A005843(∏{p}[1+n, #+1])-∑{d}[n+1, #]` -/
def P18150273441262163404.Spec : Prop :=
  ∀ n, P18150273441262163404.a n = A388994 (n + 1)

theorem P18150273441262163404.correct : P18150273441262163404.Spec := by
  intro n
  simp only [A388994, Nat.add_sub_cancel, A388994.P18150273441262163404.f1, A388994.P18150273441262163404.f2, A388994.P18150273441262163404.a, A388994.P3930905186296382464.a, A005843, A005843.P3167286115683555970.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A162296, A162296.P3792343839344082597.f1, A162296.P3792343839344082597.f2, A162296.P3792343839344082597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A388994

/-!
# A388995: Square array A(n,k) = A017665(A389088(n,k)), read by falling antidiagonals; numerator of the abundancy index as applied onto special prime shift array A389088.

The programs for A388995, there is no canonical definition to state claims against.
-/

/-! ## A388995.P14912907745289592997

`A017665(A389088(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388995.P14912907745289592997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (A389088 (n + 1)).toNat

end

end A388995.P14912907745289592997

/-! ## A388995.P14341886265802375999

`A017665(A389088(C(col(n)+1+row(n)-col(n)+1-1, 2)+col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388995.P14341886265802375999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (A389088 (Nat.choose ((SequenceMachineLib.triCol n + 1 : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) - 1).toNat 2 + (SequenceMachineLib.triCol n + 1))).toNat

end

end A388995.P14341886265802375999

/-! ## A388995.P13501988455599548808

`A017665(A389088(C(row(n)-col(n)+1+col(n)+1-1, 2)+col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388995.P13501988455599548808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (A389088 (Nat.choose ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 + (SequenceMachineLib.triCol n + 1 : ℤ) - 1).toNat 2 + (SequenceMachineLib.triCol n + 1))).toNat

end

end A388995.P13501988455599548808

/-! ## A388995.P18222458231585000093

`A389093(n+1)/A389094(n+1)`
-/

namespace A388995.P18222458231585000093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389093 (n + 1) : ℚ) / (A389094 (n + 1) : ℚ)

end

end A388995.P18222458231585000093

/-!
# A388996: Square array A(n,k) = A017666(A389088(n,k)), read by falling antidiagonals; denominator of the abundancy index as applied onto special prime shift array A389088.

The programs for A388996, there is no canonical definition to state claims against.
-/

/-! ## A388996.P11105661687098735976

`A017666(A389088(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388996.P11105661687098735976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (A389088 (n + 1)).toNat

end

end A388996.P11105661687098735976

/-! ## A388996.P6649598791099959333

`A017666(A389088(C(col(n)+1+row(n)-col(n)+1-1, 2)+col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388996.P6649598791099959333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (A389088 (Nat.choose ((SequenceMachineLib.triCol n + 1 : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) - 1).toNat 2 + (SequenceMachineLib.triCol n + 1))).toNat

end

end A388996.P6649598791099959333

/-! ## A388996.P3167734427033033044

`A017666(A389088(C(row(n)-col(n)+1+col(n)+1-1, 2)+col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388996.P3167734427033033044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (A389088 (Nat.choose ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 + (SequenceMachineLib.triCol n + 1 : ℤ) - 1).toNat 2 + (SequenceMachineLib.triCol n + 1))).toNat

end

end A388996.P3167734427033033044

/-! ## A388996.P5511804464005047402

`A389088(n+1)/A389094(n+1)`
-/

namespace A388996.P5511804464005047402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389088 (n + 1) : ℚ) / (A389094 (n + 1) : ℚ)

end

end A388996.P5511804464005047402

/-! ## A388996.P2807626440684058955

`A341606(n+1)+A063725(A354464(n+1))`
-/

namespace A388996.P2807626440684058955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341606 (n + 1) + A063725 (A354464 (n + 1)).toNat

end

end A388996.P2807626440684058955

/-!
# A388997: Numbers satisfying Euler's condition for odd perfect numbers, divided by their largest squarefree divisor: a(n) = A003557(A228058(n)).

The programs for A388997, there is no canonical definition to state claims against.
-/

/-! ## A388997.P3510180649900795538

`A228058(n+1)/A389167(n+1)`
-/

namespace A388997.P3510180649900795538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228058 (n + 1) : ℚ) / (A389167 (n + 1) : ℚ)

end

end A388997.P3510180649900795538

/-! ## A388997.P16599444036602283713

`A003557(A228058(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388997.P16599444036602283713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A228058 (n + 1)).toNat

end

end A388997.P16599444036602283713

/-! ## A388997.P2738945882768694907

`(A325379(n+1)+A325377(n+1))/A389167(n+1)`
-/

namespace A388997.P2738945882768694907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325379 (n + 1) + A325377 (n + 1) : ℚ) / (A389167 (n + 1) : ℚ)

end

end A388997.P2738945882768694907

/-! ## A388997.P1477590703605348929

`(A389164(n+1)+A325319(n+1))/A389167(n+1)`
-/

namespace A388997.P1477590703605348929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389164 (n + 1) + A325319 (n + 1) : ℚ) / (A389167 (n + 1) : ℚ)

end

end A388997.P1477590703605348929

/-! ## A388997.P6219874127184617311

`(A389208(n+1)+A389165(n+1))/A389167(n+1)`
-/

namespace A388997.P6219874127184617311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389208 (n + 1) + A389165 (n + 1) : ℚ) / (A389167 (n + 1) : ℚ)

end

end A388997.P6219874127184617311

/-! ## A388997.P4735137501717942127

`(A389203(n+1)-A325377(n+1))/A389167(n+1)`
-/

namespace A388997.P4735137501717942127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389203 (n + 1) - A325377 (n + 1) : ℚ) / (A389167 (n + 1) : ℚ)

end

end A388997.P4735137501717942127

/-! ## A388997.P13543945912307329689

`(A389206(n+1)-A389207(n+1))/A389167(n+1)`
-/

namespace A388997.P13543945912307329689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389206 (n + 1) - A389207 (n + 1) : ℚ) / (A389167 (n + 1) : ℚ)

end

end A388997.P13543945912307329689

/-! ## A388997.P16755416421304729817

`∪[A351574(n+1), A386429(n+1)]/A389167(n+1)`
-/

namespace A388997.P16755416421304729817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386429 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℚ) / (A389167 (n + 1) : ℚ)

end

end A388997.P16755416421304729817

/-! ## A388997.P6355869145422229

`(A325377(n+1)+A325378(n+1)-2*A325320(n+1))/A389167(n+1)`
-/

namespace A388997.P6355869145422229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325377 (n + 1) + (A325378 (n + 1) - 2 * A325320 (n + 1)) : ℚ) / (A389167 (n + 1) : ℚ)

end

end A388997.P6355869145422229

/-! ## A388997.P126226920124786844

`∩[A191218(n+1), A388983(n+1)]/A389167(n+1)`
-/

namespace A388997.P126226920124786844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388983 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / (A389167 (n + 1) : ℚ)

end

end A388997.P126226920124786844

/-!
# A388998: Number of tetrahedra in the n X n queen graph.

The programs for A388998, the canonical program `A388998.P8770754366364259529` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388998 has offset 1).

The definition of A388998 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A388998.P8770754366364259529

`ogf((x+14x^2+8x^4+19x^5+14x^6)/(1-4x+4x^2+4x^3-10x^4+4x^5+4x^6-4x^7+x^8))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A388998

/-- `ogf((x+14x^2+8x^4+19x^5+14x^6)/(1-4x+4x^2+4x^3-10x^4+4x^5+4x^6-4x^7+x^8))` -/
def P8770754366364259529.Spec : Prop :=
  ∀ n, P8770754366364259529.a n = A388998 (n + 1)

theorem P8770754366364259529.correct : P8770754366364259529.Spec := by
  intro n
  simp only [A388998, Nat.add_sub_cancel]

end A388998

