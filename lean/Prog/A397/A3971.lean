import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C048
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C005
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
import Seq.B007.C001
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
# A397100: a(n) is the number of steps by which n's trajectory under f is ahead of 0's; i.e., f^k(0) = f^(k-a(n))(n) for all sufficiently large k, where f(n) = n XOR 2^A000120(n).

The programs for A397100, the canonical program `A397100.P2153576112342565242` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397100 has offset 0).

The definition of A397100 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A396409, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A397100.P2153576112342565242

`A007814(n+1)-A396409(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A397100

/-- `A007814(n+1)-A396409(n)` -/
def P2153576112342565242.Spec : Prop :=
  ∀ n, P2153576112342565242.a n = A397100 n

theorem P2153576112342565242.correct : P2153576112342565242.Spec := by
  intro n
  simp only [A397100]

end A397100

/-! ## A397100.P9042260667192847136

`A000120(n)²-2*A073642(n)`
-/

namespace A397100.P9042260667192847136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n ^ 2 - 2 * A073642 n

end

end A397100.P9042260667192847136

namespace A397100

/-- `A000120(n)²-2*A073642(n)` -/
def P9042260667192847136.Spec : Prop :=
  ∀ n, P9042260667192847136.a n = A397100 n

end A397100

/-! ## A397100.P16511457853945542362

`val(n+1, 2)-A396409(n)`
-/

namespace A397100.P16511457853945542362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 : ℤ) - A396409 n

end

end A397100.P16511457853945542362

namespace A397100

/-- `val(n+1, 2)-A396409(n)` -/
def P16511457853945542362.Spec : Prop :=
  ∀ n, P16511457853945542362.a n = A397100 n

end A397100

/-! ## A397100.P11173578618189282345

`log2(A001316(n))-A005843(A055941(n))`
-/

namespace A397100.P11173578618189282345
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ) - (A005843 (A055941 n).toNat : ℝ)

end

end A397100.P11173578618189282345

namespace A397100

/-- `log2(A001316(n))-A005843(A055941(n))` -/
def P11173578618189282345.Spec : Prop :=
  ∀ n, P11173578618189282345.a n = (A397100 n : ℝ)

end A397100

/-! ## A397100.P16374765777524566786

`A000120(n)+A000120(n)-A326730(n)`
-/

namespace A397100.P16374765777524566786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + (A000120 n - A326730 n)

end

end A397100.P16374765777524566786

namespace A397100

/-- `A000120(n)+A000120(n)-A326730(n)` -/
def P16374765777524566786.Spec : Prop :=
  ∀ n, P16374765777524566786.a n = A397100 n

end A397100

/-! ## A397100.P13520899941842501399

`A002378(A000120(n))-A197354(n)`
-/

namespace A397100.P13520899941842501399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A000120 n).toNat - A197354 n

end

end A397100.P13520899941842501399

namespace A397100

/-- `A002378(A000120(n))-A197354(n)` -/
def P13520899941842501399.Spec : Prop :=
  ∀ n, P13520899941842501399.a n = A397100 n

end A397100

/-! ## A397100.P3844050370691807501

`A002378(∑[A088705(n)])-A197354(n)`
-/

namespace A397100.P3844050370691807501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A197354 n

end

end A397100.P3844050370691807501

namespace A397100

/-- `A002378(∑[A088705(n)])-A197354(n)` -/
def P3844050370691807501.Spec : Prop :=
  ∀ n, P3844050370691807501.a n = A397100 n

end A397100

/-! ## A397100.P4655160439773880100

`A002378(A070939(n)-A023416(n))-A197354(n)`
-/

namespace A397100.P4655160439773880100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A070939 n - A023416 n).toNat - A197354 n

end

end A397100.P4655160439773880100

namespace A397100

/-- `A002378(A070939(n)-A023416(n))-A197354(n)` -/
def P4655160439773880100.Spec : Prop :=
  ∀ n, P4655160439773880100.a n = A397100 n

end A397100

/-!
# A397101: Number of compositions (c_1,...,c_k) of n with c_i >= 2*k - i.

The programs for A397101, there is no canonical definition to state claims against.
-/

/-! ## A397101.P5435731035893483407

`A005709(n+2)%A269134(n+3)`
-/

namespace A397101.P5435731035893483407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005709 (n + 2)) (A269134 (n + 3))

end

end A397101.P5435731035893483407

/-! ## A397101.P5115153467140088014

`A005709(n+2)+A000007(A057468(n+1))`
-/

namespace A397101.P5115153467140088014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 (n + 2) + A000007 (A057468 (n + 1)).toNat

end

end A397101.P5115153467140088014

/-! ## A397101.P3048711858664520362

`A005709(A351374(n+2))`
-/

namespace A397101.P3048711858664520362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 (A351374 (n + 2)).toNat

end

end A397101.P3048711858664520362

/-! ## A397101.P7136023363867726532

`A005709(n+2)+A000007(A259465(n))`
-/

namespace A397101.P7136023363867726532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 (n + 2) + A000007 (A259465 n).toNat

end

end A397101.P7136023363867726532

/-!
# A397102: Which blocks in A280864 have length 4 and whose first and last terms are primes.

The programs for A397102, there is no canonical definition to state claims against.
-/

/-! ## A397102.P16512101019926754507

`∩[A396305(n+1), A396560(n+1)]`
-/

namespace A397102.P16512101019926754507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397102.P16512101019926754507

/-!
# A397105: a(n) = 3^(n-1)*(Fibonacci(n+2) - 1).

The programs for A397105, the canonical program `A397105.P16734631379244146230` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397105 has offset 0).

The definition of A397105 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397105.P16734631379244146230

`ogf(x/(1-6x+27x^3))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A397105

/-- `ogf(x/(1-6x+27x^3))` -/
def P16734631379244146230.Spec : Prop :=
  ∀ n, P16734631379244146230.a n = A397105 n

theorem P16734631379244146230.correct : P16734631379244146230.Spec := by
  intro n
  simp only [A397105]

end A397105

/-! ## A397105.P3311476845215338782

`6*a(n-1)-27*a(n-3)` with `a(0)=0, a(1)=1, a(2)=6`
-/

namespace A397105.P3311476845215338782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 6] fun n a =>
  6 * a (n - 1) - 27 * a (n - 3)

end

end A397105.P3311476845215338782

namespace A397105

/-- `6*a(n-1)-27*a(n-3)` -/
def P3311476845215338782.Spec : Prop :=
  ∀ n, P3311476845215338782.a n = A397105 n

end A397105

/-! ## A397105.P7164670505153097398

`3^(n-1)*(A000045(n+2)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397105.P7164670505153097398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000045 (n + 2) - 1 : ℚ)

end

end A397105.P7164670505153097398

namespace A397105

/-- `3^(n-1)*(A000045(n+2)-1)` -/
def P7164670505153097398.Spec : Prop :=
  ∀ n, P7164670505153097398.a n = (A397105 n : ℚ)

end A397105

/-! ## A397105.P6697181665028416111

`A000071(n+2)*A140429(n)`
-/

namespace A397105.P6697181665028416111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) * A140429 n

end

end A397105.P6697181665028416111

namespace A397105

/-- `A000071(n+2)*A140429(n)` -/
def P6697181665028416111.Spec : Prop :=
  ∀ n, P6697181665028416111.a n = A397105 n

end A397105

/-! ## A397105.P10289301127760035484

`3^(n-1)*∑[A000045(n)]`
-/

namespace A397105.P10289301127760035484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A397105.P10289301127760035484

namespace A397105

/-- `3^(n-1)*∑[A000045(n)]` -/
def P10289301127760035484.Spec : Prop :=
  ∀ n, P10289301127760035484.a n = (A397105 n : ℚ)

end A397105

/-! ## A397105.P6219954924086999300

`3^(n-1)*∑{#}[n, A000045(n-#)]`
-/

namespace A397105.P6219954924086999300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((∑ k ∈ Finset.range (f1 n + 1), A000045 (n - k) : ℤ) : ℚ)

end

end A397105.P6219954924086999300

namespace A397105

/-- `3^(n-1)*∑{#}[n, A000045(n-#)]` -/
def P6219954924086999300.Spec : Prop :=
  ∀ n, P6219954924086999300.a n = (A397105 n : ℚ)

end A397105

/-! ## A397105.P14621009238476899048

`∑{#}[n, (-1)^(n-#)*C(n, #)*A400512(#)]`
-/

namespace A397105.P14621009238476899048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A400512 k : ℚ)

end

end A397105.P14621009238476899048

namespace A397105

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A400512(#)]` -/
def P14621009238476899048.Spec : Prop :=
  ∀ n, P14621009238476899048.a n = (A397105 n : ℚ)

end A397105

/-!
# A397106: a(n) = n + A275314(n), for n >= 1.

The programs for A397106, the canonical program `A397106.P13058087477262254909` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397106 has offset 1).

The definition of A397106 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397106.P13058087477262254909

`n+1+A275314(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A397106

/-- `n+1+A275314(n+1)` -/
def P13058087477262254909.Spec : Prop :=
  ∀ n, P13058087477262254909.a n = A397106 (n + 1)

theorem P13058087477262254909.correct : P13058087477262254909.Spec := by
  intro n
  simp only [A397106, Nat.add_sub_cancel]

end A397106

/-! ## A397106.P15074480704262609424

`n+2+A001414(n+1)-A001222(n+1)`
-/

namespace A397106.P15074480704262609424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) + A001414 (n + 1) - A001222 (n + 1)

end

end A397106.P15074480704262609424

namespace A397106

/-- `n+2+A001414(n+1)-A001222(n+1)` -/
def P15074480704262609424.Spec : Prop :=
  ∀ n, P15074480704262609424.a n = A397106 (n + 1)

theorem P15074480704262609424.correct : P15074480704262609424.Spec := by
  intro n
  simp only [A397106, Nat.add_sub_cancel, A397106.P15074480704262609424.a, A397106.P13058087477262254909.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A275314, A275314.P16603517016269577307.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A397106

/-! ## A397106.P7736190685831762115

`∑{p}[n+1, #*val(n+1, #)]-∑{e}[n+1, #]+n+2`
-/

namespace A397106.P7736190685831762115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ) + (n + 2 : ℤ)

end

end A397106.P7736190685831762115

namespace A397106

/-- `∑{p}[n+1, #*val(n+1, #)]-∑{e}[n+1, #]+n+2` -/
def P7736190685831762115.Spec : Prop :=
  ∀ n, P7736190685831762115.a n = A397106 (n + 1)

theorem P7736190685831762115.correct : P7736190685831762115.Spec := by
  intro n
  simp only [A397106, Nat.add_sub_cancel, A397106.P7736190685831762115.f1, A397106.P7736190685831762115.f2, A397106.P7736190685831762115.a, A397106.P13058087477262254909.a, A275314, A275314.P16603517016269577307.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A397106

/-! ## A397106.P8565064274533886150

`A059975(n+1)+2+n`
-/

namespace A397106.P8565064274533886150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059975 (n + 1) + (2 + n : ℤ)

end

end A397106.P8565064274533886150

namespace A397106

/-- `A059975(n+1)+2+n` -/
def P8565064274533886150.Spec : Prop :=
  ∀ n, P8565064274533886150.a n = A397106 (n + 1)

theorem P8565064274533886150.correct : P8565064274533886150.Spec := by
  intro n
  simp only [A397106, Nat.add_sub_cancel, A397106.P8565064274533886150.a, A397106.P13058087477262254909.a, A059975, A059975.P3594971538098503590.a, A275314, A275314.P16603517016269577307.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A397106

/-! ## A397106.P2853879594404481346

`2*n+3-A341865(n+1)`
-/

namespace A397106.P2853879594404481346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A341865 (n + 1)

end

end A397106.P2853879594404481346

namespace A397106

/-- `2*n+3-A341865(n+1)` -/
def P2853879594404481346.Spec : Prop :=
  ∀ n, P2853879594404481346.a n = A397106 (n + 1)

theorem P2853879594404481346.correct : P2853879594404481346.Spec := by
  intro n
  simp only [A397106, Nat.add_sub_cancel, A397106.P2853879594404481346.a, A397106.P13058087477262254909.a, A275314, A275314.P16603517016269577307.a, A341865, A341865.P3043601699386979277.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A059975, A059975.P3594971538098503590.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A397106

/-! ## A397106.P3584454957386019312

`A069345(n+1)+A036288(n+1)`
-/

namespace A397106.P3584454957386019312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069345 (n + 1) + A036288 (n + 1)

end

end A397106.P3584454957386019312

namespace A397106

/-- `A069345(n+1)+A036288(n+1)` -/
def P3584454957386019312.Spec : Prop :=
  ∀ n, P3584454957386019312.a n = A397106 (n + 1)

theorem P3584454957386019312.correct : P3584454957386019312.Spec := by
  intro n
  simp only [A397106, Nat.add_sub_cancel, A397106.P3584454957386019312.a, A397106.P13058087477262254909.a, A036288, A036288.P5869837535348566754.f1, A036288.P5869837535348566754.a, A069345, A069345.P4010349656515474516.a, A275314, A275314.P16603517016269577307.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A397106

/-! ## A397106.P759815080462665946

`A100006(n+1)+A075795(n+1)`
-/

namespace A397106.P759815080462665946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100006 (n + 1) + A075795 (n + 1)

end

end A397106.P759815080462665946

namespace A397106

/-- `A100006(n+1)+A075795(n+1)` -/
def P759815080462665946.Spec : Prop :=
  ∀ n, P759815080462665946.a n = A397106 (n + 1)

theorem P759815080462665946.correct : P759815080462665946.Spec := by
  intro n
  simp only [A397106, Nat.add_sub_cancel, A397106.P759815080462665946.a, A397106.P13058087477262254909.a, A075795, A075795.P380277726918487259.a, A100006, A100006.P10301543697715186993.f1, A100006.P10301543697715186993.a, A275314, A275314.P16603517016269577307.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A397106

/-! ## A397106.P7181706856024535921

`A140255(n+1)+A062968(n+1)`
-/

namespace A397106.P7181706856024535921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140255 (n + 1) + A062968 (n + 1)

end

end A397106.P7181706856024535921

namespace A397106

/-- `A140255(n+1)+A062968(n+1)` -/
def P7181706856024535921.Spec : Prop :=
  ∀ n, P7181706856024535921.a n = A397106 (n + 1)

end A397106

/-! ## A397106.P17165228488676150840

`A087656(2*n+3)+n+1`
-/

namespace A397106.P17165228488676150840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087656 (2 * n + 3) + (n + 1 : ℤ)

end

end A397106.P17165228488676150840

namespace A397106

/-- `A087656(2*n+3)+n+1` -/
def P17165228488676150840.Spec : Prop :=
  ∀ n, P17165228488676150840.a n = A397106 (n + 1)

end A397106

/-! ## A397106.P18045044176886059365

`A397104(A092249(n+2))`
-/

namespace A397106.P18045044176886059365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397104 (A092249 (n + 2)).toNat

end

end A397106.P18045044176886059365

namespace A397106

/-- `A397104(A092249(n+2))` -/
def P18045044176886059365.Spec : Prop :=
  ∀ n, P18045044176886059365.a n = A397106 (n + 1)

end A397106

/-!
# A397107: Lower (1,2) midsequence of (floor[n/2]^2) and (ceiling[n/2]^2); see Comments.

The programs for A397107, the canonical program `A397107.P4166444551194803605` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397107 has offset 0).

The definition of A397107 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397107.P10964714509921651150

`ogf((2x+x^2+2x^3+x^4)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A397107.P10964714509921651150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1, 2, 1] [1, -1, -2, 2, 1, -1] n

end

end A397107.P10964714509921651150

namespace A397107

/-- `ogf((2x+x^2+2x^3+x^4)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P10964714509921651150.Spec : Prop :=
  ∀ n, P10964714509921651150.a n = A397107 n

end A397107

/-! ## A397107.P4166444551194803605

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=9, a(4)=12`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A397107

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P4166444551194803605.Spec : Prop :=
  ∀ n, P4166444551194803605.a n = A397107 n

theorem P4166444551194803605.correct : P4166444551194803605.Spec := by
  intro n
  simp only [A397107]

end A397107

/-! ## A397107.P13930917100453684833

`∑[lcm(2, n)]-floor(n/2)`
-/

namespace A397107.P13930917100453684833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌊(n : ℚ) / 2⌋

end

end A397107.P13930917100453684833

namespace A397107

/-- `∑[lcm(2, n)]-floor(n/2)` -/
def P13930917100453684833.Spec : Prop :=
  ∀ n, P13930917100453684833.a n = A397107 n

end A397107

/-! ## A397107.P15282302415023927075

`ceil(n²/2)+ceil(n/2)²`
-/

namespace A397107.P15282302415023927075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 2⌉ + ⌈(n : ℚ) / 2⌉ ^ 2

end

end A397107.P15282302415023927075

namespace A397107

/-- `ceil(n²/2)+ceil(n/2)²` -/
def P15282302415023927075.Spec : Prop :=
  ∀ n, P15282302415023927075.a n = A397107 n

end A397107

/-! ## A397107.P17054048478555234008

`∑[xor(1, a(n-2))+3]` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A397107.P17054048478555234008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1] fun n f1 =>
  Nat.xor 1 (f1 (n - 2)) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397107.P17054048478555234008

namespace A397107

/-- `∑[xor(1, a(n-2))+3]` -/
def P17054048478555234008.Spec : Prop :=
  ∀ n, (P17054048478555234008.a n : ℤ) = A397107 n

end A397107

/-! ## A397107.P4580738819222282532

`∑[C(n+1, gcd(2*n, n²))+n-1]`
-/

namespace A397107.P4580738819222282532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) (Nat.gcd (2 * n) (n ^ 2)) : ℤ) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397107.P4580738819222282532

namespace A397107

/-- `∑[C(n+1, gcd(2*n, n²))+n-1]` -/
def P4580738819222282532.Spec : Prop :=
  ∀ n, P4580738819222282532.a n = A397107 n

end A397107

/-! ## A397107.P800395381449150923

`A006002(n)%A266883(n)`
-/

namespace A397107.P800395381449150923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006002 n) (A266883 n)

end

end A397107.P800395381449150923

namespace A397107

/-- `A006002(n)%A266883(n)` -/
def P800395381449150923.Spec : Prop :=
  ∀ n, P800395381449150923.a n = A397107 n

end A397107

/-! ## A397107.P9772370640235147387

`A008810(A007494(n))`
-/

namespace A397107.P9772370640235147387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008810 (A007494 n).toNat

end

end A397107.P9772370640235147387

namespace A397107

/-- `A008810(A007494(n))` -/
def P9772370640235147387.Spec : Prop :=
  ∀ n, P9772370640235147387.a n = A397107 n

end A397107

/-! ## A397107.P6562026899509091932

`A008810(A004526(n+1)+n)`
-/

namespace A397107.P6562026899509091932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008810 (A004526 (n + 1) + (n : ℤ)).toNat

end

end A397107.P6562026899509091932

namespace A397107

/-- `A008810(A004526(n+1)+n)` -/
def P6562026899509091932.Spec : Prop :=
  ∀ n, P6562026899509091932.a n = A397107 n

end A397107

/-! ## A397107.P9289261914990572140

`A008810(2*n-A004526(n))`
-/

namespace A397107.P9289261914990572140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008810 ((2 * n : ℤ) - A004526 n).toNat

end

end A397107.P9289261914990572140

namespace A397107

/-- `A008810(2*n-A004526(n))` -/
def P9289261914990572140.Spec : Prop :=
  ∀ n, P9289261914990572140.a n = A397107 n

end A397107

/-! ## A397107.P8599621302805111791

`A372665(n+1)%A028387(n)`
-/

namespace A397107.P8599621302805111791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372665 (n + 1)) (A028387 n)

end

end A397107.P8599621302805111791

namespace A397107

/-- `A372665(n+1)%A028387(n)` -/
def P8599621302805111791.Spec : Prop :=
  ∀ n, P8599621302805111791.a n = A397107 n

end A397107

/-! ## A397107.P4475107241588992234

`A345440(n*(n+2))`
-/

namespace A397107.P4475107241588992234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345440 (n * (n + 2))

end

end A397107.P4475107241588992234

namespace A397107

/-- `A345440(n*(n+2))` -/
def P4475107241588992234.Spec : Prop :=
  ∀ n, P4475107241588992234.a n = A397107 n

end A397107

/-!
# A397108: Lower (2,1) midsequence of (floor[n/2]^2) and (ceiling[n/2]^2); see Comments.

The programs for A397108, the canonical program `A397108.P5735509425177347241` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397108 has offset 0).

The definition of A397108 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397108.P12401181506919038488

`ogf((x+2x^2+x^3+2x^4)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A397108.P12401181506919038488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 1, 2] [1, -1, -2, 2, 1, -1] n

end

end A397108.P12401181506919038488

namespace A397108

/-- `ogf((x+2x^2+x^3+2x^4)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P12401181506919038488.Spec : Prop :=
  ∀ n, P12401181506919038488.a n = A397108 n

end A397108

/-! ## A397108.P5735509425177347241

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6, a(4)=12`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A397108

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P5735509425177347241.Spec : Prop :=
  ∀ n, P5735509425177347241.a n = A397108 n

theorem P5735509425177347241.correct : P5735509425177347241.Spec := by
  intro n
  simp only [A397108]

end A397108

/-! ## A397108.P2390058614198970579

`ceil(n²/2)+floor(n/2)²`
-/

namespace A397108.P2390058614198970579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 2⌉ + ⌊(n : ℚ) / 2⌋ ^ 2

end

end A397108.P2390058614198970579

namespace A397108

/-- `ceil(n²/2)+floor(n/2)²` -/
def P2390058614198970579.Spec : Prop :=
  ∀ n, P2390058614198970579.a n = A397108 n

end A397108

/-! ## A397108.P5684302392705530259

`∑[xor(1, a(n-2))+3]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A397108.P5684302392705530259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  Nat.xor 1 (f1 (n - 2)) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397108.P5684302392705530259

namespace A397108

/-- `∑[xor(1, a(n-2))+3]` -/
def P5684302392705530259.Spec : Prop :=
  ∀ n, (P5684302392705530259.a n : ℤ) = A397108 n

end A397108

/-! ## A397108.P4146219036119959811

`∑[gcd(n-1, and(1, n))+n-1]`
-/

namespace A397108.P4146219036119959811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd ((n : ℤ) - 1) (Nat.land 1 n : ℤ) : ℤ) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397108.P4146219036119959811

namespace A397108

/-- `∑[gcd(n-1, and(1, n))+n-1]` -/
def P4146219036119959811.Spec : Prop :=
  ∀ n, P4146219036119959811.a n = A397108 n

end A397108

/-! ## A397108.P10211774365849346133

`∑[floor((lcm(n-1, 2*n)+2*n)/(n+1))]`
-/

namespace A397108.P10211774365849346133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.lcm ((n : ℤ) - 1) (2 * n : ℤ) + 2 * n : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397108.P10211774365849346133

namespace A397108

/-- `∑[floor((lcm(n-1, 2*n)+2*n)/(n+1))]` -/
def P10211774365849346133.Spec : Prop :=
  ∀ n, P10211774365849346133.a n = A397108 n

end A397108

/-! ## A397108.P12246906941089750478

`xor(A032438(n), A109718(n))`
-/

namespace A397108.P12246906941089750478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A032438 n) (A109718 n)

end

end A397108.P12246906941089750478

namespace A397108

/-- `xor(A032438(n), A109718(n))` -/
def P12246906941089750478.Spec : Prop :=
  ∀ n, P12246906941089750478.a n = A397108 n

end A397108

/-! ## A397108.P7119573648829928363

`∪[A033428(n), A056109(n)]`
-/

namespace A397108.P7119573648829928363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056109 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A397108.P7119573648829928363

namespace A397108

/-- `∪[A033428(n), A056109(n)]` -/
def P7119573648829928363.Spec : Prop :=
  ∀ n, (P7119573648829928363.a n : ℤ) = A397108 n

end A397108

/-! ## A397108.P3825883194008377705

`(A272705(n)-1)/4`
-/

namespace A397108.P3825883194008377705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272705 n - 1 : ℚ) / 4

end

end A397108.P3825883194008377705

namespace A397108

/-- `(A272705(n)-1)/4` -/
def P3825883194008377705.Spec : Prop :=
  ∀ n, P3825883194008377705.a n = (A397108 n : ℚ)

end A397108

/-! ## A397108.P1778816595722947852

`∑{#}[n, C(floor(n/2), C(n, #)+1)+#]`
-/

namespace A397108.P1778816595722947852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose ⌊(n : ℚ) / 2⌋.toNat (Nat.choose n k + 1) + k)

end

end A397108.P1778816595722947852

namespace A397108

/-- `∑{#}[n, C(floor(n/2), C(n, #)+1)+#]` -/
def P1778816595722947852.Spec : Prop :=
  ∀ n, (P1778816595722947852.a n : ℤ) = A397108 n

end A397108

/-! ## A397108.P18393202133140210225

`A345440(n²)`
-/

namespace A397108.P18393202133140210225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345440 (n ^ 2)

end

end A397108.P18393202133140210225

namespace A397108

/-- `A345440(n²)` -/
def P18393202133140210225.Spec : Prop :=
  ∀ n, P18393202133140210225.a n = A397108 n

end A397108

/-! ## A397108.P11619545382535759685

`record[A345440(n)]`
-/

namespace A397108.P11619545382535759685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345440 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A397108.P11619545382535759685

namespace A397108

/-- `record[A345440(n)]` -/
def P11619545382535759685.Spec : Prop :=
  ∀ n, P11619545382535759685.a n = A397108 n

end A397108

/-!
# A397109: Lower (1,1/2) midsequence of (floor[n/2]^2) and (ceiling[n/3]^2); see Comments.

The programs for A397109, the canonical program `A397109.P15019351161246294738` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397109 has offset 0).

The definition of A397109 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397109.P1412705757306352572

`ogf((x^2+x^3+5x^4+4x^5+4x^6+2x^7+3x^8+x^9+x^10)/(1-x^2-x^3+x^5-x^6+x^8+x^9-x^11))`
-/

namespace A397109.P1412705757306352572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 1, 5, 4, 4, 2, 3, 1, 1] [1, 0, -1, -1, 0, 1, -1, 0, 1, 1, 0, -1] n

end

end A397109.P1412705757306352572

namespace A397109

/-- `ogf((x^2+x^3+5x^4+4x^5+4x^6+2x^7+3x^8+x^9+x^10)/(1-x^2-x^3+x^5-x^6+x^8+x^9-x^11))` -/
def P1412705757306352572.Spec : Prop :=
  ∀ n, P1412705757306352572.a n = A397109 n

end A397109

/-! ## A397109.P15019351161246294738

`floor((11*n²+8*n+11)/36-n%2*n/2-(n+2)%3*n/9)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A397109

/-- `floor((11*n²+8*n+11)/36-n%2*n/2-(n+2)%3*n/9)` -/
def P15019351161246294738.Spec : Prop :=
  ∀ n, P15019351161246294738.a n = A397109 n

theorem P15019351161246294738.correct : P15019351161246294738.Spec := by
  intro n
  simp only [A397109]

end A397109

/-!
# A397111: Numbers k such that A000201(k) and A001950(k) are both prime.

The programs for A397111, the canonical program `A397111.P2464221293818646851` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397111 has offset 1).

The definition of A397111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 895 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A397111.P2464221293818646851

`∩[A184792(n+1), A184794(n+1)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A397111

/-- `∩[A184792(n+1), A184794(n+1)]` -/
def P2464221293818646851.Spec : Prop :=
  ∀ n, (P2464221293818646851.a n : ℤ) = A397111 (n + 1)

theorem P2464221293818646851.correct : P2464221293818646851.Spec := by
  intro n
  simp only [A397111, Nat.add_sub_cancel]

end A397111

/-! ## A397111.P15452103053905275959

`A000720(A397112(n+1))`
-/

namespace A397111.P15452103053905275959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A397112 (n + 1)).toNat

end

end A397111.P15452103053905275959

namespace A397111

/-- `A000720(A397112(n+1))` -/
def P15452103053905275959.Spec : Prop :=
  ∀ n, P15452103053905275959.a n = A397111 (n + 1)

end A397111

/-! ## A397111.P11875865742396877825

`A061395(2*A397112(n+1))`
-/

namespace A397111.P11875865742396877825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A397112 (n + 1)).toNat

end

end A397111.P11875865742396877825

namespace A397111

/-- `A061395(2*A397112(n+1))` -/
def P11875865742396877825.Spec : Prop :=
  ∀ n, P11875865742396877825.a n = A397111 (n + 1)

end A397111

/-! ## A397111.P37577882157923132

`A316524(A397112(n+1)%A074301(n+1))`
-/

namespace A397111.P37577882157923132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (Int.tmod (A397112 (n + 1)) (A074301 (n + 1))).toNat

end

end A397111.P37577882157923132

namespace A397111

/-- `A316524(A397112(n+1)%A074301(n+1))` -/
def P37577882157923132.Spec : Prop :=
  ∀ n, P37577882157923132.a n = A397111 (n + 1)

end A397111

/-! ## A397111.P14602158386822272275

`A316524(A397112(n+1))%A250942(n+1)`
-/

namespace A397111.P14602158386822272275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316524 (A397112 (n + 1)).toNat) (A250942 (n + 1))

end

end A397111.P14602158386822272275

namespace A397111

/-- `A316524(A397112(n+1))%A250942(n+1)` -/
def P14602158386822272275.Spec : Prop :=
  ∀ n, P14602158386822272275.a n = A397111 (n + 1)

end A397111

/-!
# A397112: Primes indexed by A397111.

The programs for A397112, the canonical program `A397112.P5391708724886906443` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397112 has offset 1).

The definition of A397112 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A397112.P5391708724886906443

`A000040(A397111(1+n))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A397112

/-- `A000040(A397111(1+n))` -/
def P5391708724886906443.Spec : Prop :=
  ∀ n, P5391708724886906443.a n = A397112 (n + 1)

theorem P5391708724886906443.correct : P5391708724886906443.Spec := by
  intro n
  simp only [A397112, Nat.add_sub_cancel]

end A397112

/-! ## A397112.P10802098820879032528

`A006093(A397111(n+1))+1`
-/

namespace A397112.P10802098820879032528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A397111 (n + 1)).toNat + 1

end

end A397112.P10802098820879032528

namespace A397112

/-- `A006093(A397111(n+1))+1` -/
def P10802098820879032528.Spec : Prop :=
  ∀ n, P10802098820879032528.a n = A397112 (n + 1)

end A397112

/-! ## A397112.P9050175747851381952

`A008864(A397111(n+1))-A179775(2*n+5)`
-/

namespace A397112.P9050175747851381952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A397111 (n + 1)).toNat - A179775 (2 * n + 5)

end

end A397112.P9050175747851381952

namespace A397112

/-- `A008864(A397111(n+1))-A179775(2*n+5)` -/
def P9050175747851381952.Spec : Prop :=
  ∀ n, P9050175747851381952.a n = A397112 (n + 1)

end A397112

/-! ## A397112.P2021533778826257248

`A008864(A397111(n+1))-A373403(2*(n+2))`
-/

namespace A397112.P2021533778826257248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A397111 (n + 1)).toNat - A373403 (2 * (n + 2))

end

end A397112.P2021533778826257248

namespace A397112

/-- `A008864(A397111(n+1))-A373403(2*(n+2))` -/
def P2021533778826257248.Spec : Prop :=
  ∀ n, P2021533778826257248.a n = A397112 (n + 1)

end A397112

/-!
# A397113: Lower (2,-1) midsequence of (floor[n/2]^2) and (ceiling[n/2]^2); see Comments.

The programs for A397113, the canonical program `A397113.P6223883879511154495` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397113 has offset 0).

The definition of A397113 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397113.P13248002386069317248

`ogf((-x+2x^2-x^3+2x^4)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A397113.P13248002386069317248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1, 2, -1, 2] [1, -1, -2, 2, 1, -1] n

end

end A397113.P13248002386069317248

namespace A397113

/-- `ogf((-x+2x^2-x^3+2x^4)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P13248002386069317248.Spec : Prop :=
  ∀ n, P13248002386069317248.a n = A397113 n

end A397113

/-! ## A397113.P6223883879511154495

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=-1, a(2)=1, a(3)=-2, a(4)=4`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A397113

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P6223883879511154495.Spec : Prop :=
  ∀ n, P6223883879511154495.a n = A397113 n

theorem P6223883879511154495.correct : P6223883879511154495.Spec := by
  intro n
  simp only [A397113]

end A397113

/-! ## A397113.P13187504310906848164

`floor(n/2)²-Δ[floor(n/2)²]`
-/

namespace A397113.P13187504310906848164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ ^ 2 - (f1 (n + 1) - f1 n)

end

end A397113.P13187504310906848164

namespace A397113

/-- `floor(n/2)²-Δ[floor(n/2)²]` -/
def P13187504310906848164.Spec : Prop :=
  ∀ n, P13187504310906848164.a n = A397113 n

end A397113

/-!
# A397114: Numbers of terms in A055932 that have the same prime signature as A025487(n).

The programs for A397114, there is no canonical definition to state claims against.
-/

/-! ## A397114.P12734647219395014820

`A008480(A181820(n+1))`
-/

namespace A397114.P12734647219395014820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A181820 (n + 1)).toNat

end

end A397114.P12734647219395014820

/-! ## A397114.P7930240944071843363

`A309004(A025487(n+1))`
-/

namespace A397114.P7930240944071843363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309004 (A025487 (n + 1)).toNat

end

end A397114.P7930240944071843363

/-! ## A397114.P12273768617628204381

`A321648(A181815(1+n))`
-/

namespace A397114.P12273768617628204381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321648 (A181815 (1 + n)).toNat

end

end A397114.P12273768617628204381

/-! ## A397114.P476470272590009427

`A309004(A233819(n+1))`
-/

namespace A397114.P476470272590009427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309004 (A233819 (n + 1)).toNat

end

end A397114.P476470272590009427

/-! ## A397114.P10686787814910521990

`A097847(floor((n+1)*ϕ)*A049046(n+5))`
-/

namespace A397114.P10686787814910521990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097847 (⌊(n + 1 : ℝ) * Real.goldenRatio⌋ * A049046 (n + 5)).toNat

end

end A397114.P10686787814910521990

/-!
# A397115: Size of clusters of star triples of Family A in the Spectre aperiodic monotile tiling.

The programs for A397115, the canonical program `A397115.P17735952307214204756` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397115 has offset 1).

The definition of A397115 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397115.P17735952307214204756

`ogf((1+4x+x^2)/(1-4x-12x^2+14x^3+x^4))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A397115

/-- `ogf((1+4x+x^2)/(1-4x-12x^2+14x^3+x^4))` -/
def P17735952307214204756.Spec : Prop :=
  ∀ n, P17735952307214204756.a n = A397115 (n + 1)

theorem P17735952307214204756.correct : P17735952307214204756.Spec := by
  intro n
  simp only [A397115, Nat.add_sub_cancel]

end A397115

/-! ## A397115.P1686631002332014974

`∑[A400810(n+1)]`
-/

namespace A397115.P1686631002332014974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397115.P1686631002332014974

namespace A397115

/-- `∑[A400810(n+1)]` -/
def P1686631002332014974.Spec : Prop :=
  ∀ n, P1686631002332014974.a n = A397115 (n + 1)

end A397115

/-! ## A397115.P16953097476230577206

`Δ[round((∑[A397120(n+1)]-n)/3)]`
-/

namespace A397115.P16953097476230577206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397120 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ) : ℤ) : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A397115.P16953097476230577206

namespace A397115

/-- `Δ[round((∑[A397120(n+1)]-n)/3)]` -/
def P16953097476230577206.Spec : Prop :=
  ∀ n, P16953097476230577206.a n = A397115 (n + 1)

end A397115

/-!
# A397116: Size of clusters of star triples of Family C in the Spectre aperiodic monotile tiling.

The programs for A397116, the canonical program `A397116.P3382353160413060835` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397116 has offset 1).

The definition of A397116 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397116.P3382353160413060835

`ogf((2+4x)/(1-4x-12x^2+14x^3+x^4))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A397116

/-- `ogf((2+4x)/(1-4x-12x^2+14x^3+x^4))` -/
def P3382353160413060835.Spec : Prop :=
  ∀ n, P3382353160413060835.a n = A397116 (n + 1)

theorem P3382353160413060835.correct : P3382353160413060835.Spec := by
  intro n
  simp only [A397116, Nat.add_sub_cancel]

end A397116

/-! ## A397116.P6988616832489881041

`∑[A400811(n+1)]`
-/

namespace A397116.P6988616832489881041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397116.P6988616832489881041

namespace A397116

/-- `∑[A400811(n+1)]` -/
def P6988616832489881041.Spec : Prop :=
  ∀ n, P6988616832489881041.a n = A397116 (n + 1)

end A397116

/-!
# A397117: Size of clusters of star triples of Family B in the Spectre aperiodic monotile tiling.

The programs for A397117, the canonical program `A397117.P8291693752339869472` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397117 has offset 1).

The definition of A397117 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397117.P8291693752339869472

`ogf((1+4x+6x^2+x^3)/(1-4x-12x^2+14x^3+x^4))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A397117

/-- `ogf((1+4x+6x^2+x^3)/(1-4x-12x^2+14x^3+x^4))` -/
def P8291693752339869472.Spec : Prop :=
  ∀ n, P8291693752339869472.a n = A397117 (n + 1)

theorem P8291693752339869472.correct : P8291693752339869472.Spec := by
  intro n
  simp only [A397117, Nat.add_sub_cancel]

end A397117

/-! ## A397117.P5353849911328540626

`A397118(n+1)-A400810(n+1)`
-/

namespace A397117.P5353849911328540626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397118 (n + 1) - A400810 (n + 1)

end

end A397117.P5353849911328540626

namespace A397117

/-- `A397118(n+1)-A400810(n+1)` -/
def P5353849911328540626.Spec : Prop :=
  ∀ n, P5353849911328540626.a n = A397117 (n + 1)

end A397117

/-!
# A397118: Size of clusters of star triples of Family D in the Spectre aperiodic monotile tiling.

The programs for A397118, the canonical program `A397118.P13000304660534981691` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397118 has offset 1).

The definition of A397118 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397118.P228819434909241100

`ogf((2+7x+3x^2)/(1-4x-12x^2+14x^3+x^4))`
-/

namespace A397118.P228819434909241100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 7, 3] [1, -4, -12, 14, 1] n

end

end A397118.P228819434909241100

namespace A397118

/-- `ogf((2+7x+3x^2)/(1-4x-12x^2+14x^3+x^4))` -/
def P228819434909241100.Spec : Prop :=
  ∀ n, P228819434909241100.a n = A397118 (n + 1)

end A397118

/-! ## A397118.P13000304660534981691

`3*a(n-1)+15*a(n-2)+a(n-3)+12` with `a(0)=2, a(1)=15, a(2)=87`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A397118

/-- `3*a(n-1)+15*a(n-2)+a(n-3)+12` -/
def P13000304660534981691.Spec : Prop :=
  ∀ n, (P13000304660534981691.a n : ℤ) = A397118 (n + 1)

theorem P13000304660534981691.correct : P13000304660534981691.Spec := by
  intro n
  simp only [A397118, Nat.add_sub_cancel]

end A397118

/-! ## A397118.P14403374371180643507

`A400810(n+1)+A397117(n+1)`
-/

namespace A397118.P14403374371180643507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400810 (n + 1) + A397117 (n + 1)

end

end A397118.P14403374371180643507

namespace A397118

/-- `A400810(n+1)+A397117(n+1)` -/
def P14403374371180643507.Spec : Prop :=
  ∀ n, P14403374371180643507.a n = A397118 (n + 1)

end A397118

/-!
# A397119: Size of clusters of star triples of Family E in the Spectre aperiodic monotile tiling.

The programs for A397119, the canonical program `A397119.P9974820454996830404` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397119 has offset 1).

The definition of A397119 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397119.P11943009608682459017

`ogf((4+9x-x^2)/(1-4x-12x^2+14x^3+x^4))`
-/

namespace A397119.P11943009608682459017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 9, -1] [1, -4, -12, 14, 1] n

end

end A397119.P11943009608682459017

namespace A397119

/-- `ogf((4+9x-x^2)/(1-4x-12x^2+14x^3+x^4))` -/
def P11943009608682459017.Spec : Prop :=
  ∀ n, P11943009608682459017.a n = A397119 (n + 1)

end A397119

/-! ## A397119.P9974820454996830404

`3*a(n-1)+15*a(n-2)+a(n-3)+12` with `a(0)=4, a(1)=25, a(2)=147`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A397119

/-- `3*a(n-1)+15*a(n-2)+a(n-3)+12` -/
def P9974820454996830404.Spec : Prop :=
  ∀ n, (P9974820454996830404.a n : ℤ) = A397119 (n + 1)

theorem P9974820454996830404.correct : P9974820454996830404.Spec := by
  intro n
  simp only [A397119, Nat.add_sub_cancel]

end A397119

/-!
# A397120: Size of Type A Megastars of star triples in the Spectre aperiodic monotile tiling.

The programs for A397120, the canonical program `A397120.P1780921705813442705` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397120 has offset 1).

The definition of A397120 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397120.P14405542823004734408

`ogf((1+x-2x^2)/(1-3x-15x^2-x^3))`
-/

namespace A397120.P14405542823004734408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -2] [1, -3, -15, -1] n

end

end A397120.P14405542823004734408

namespace A397120

/-- `ogf((1+x-2x^2)/(1-3x-15x^2-x^3))` -/
def P14405542823004734408.Spec : Prop :=
  ∀ n, P14405542823004734408.a n = A397120 (n + 1)

end A397120

/-! ## A397120.P1780921705813442705

`3*a(n-1)+15*a(n-2)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=25`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A397120

/-- `3*a(n-1)+15*a(n-2)+a(n-3)` -/
def P1780921705813442705.Spec : Prop :=
  ∀ n, (P1780921705813442705.a n : ℤ) = A397120 (n + 1)

theorem P1780921705813442705.correct : P1780921705813442705.Spec := by
  intro n
  simp only [A397120, Nat.add_sub_cancel]

end A397120

/-!
# A397127: Lexicographically earliest sequence of distinct numbers k that are neither squarefree nor prime powers (k in A126706), such that for any prime p, any run of consecutive multiples of p has length exactly 2.

The programs for A397127, there is no canonical definition to state claims against.
-/

/-! ## A397127.P14770714036970384207

`A397128(A032559(n+1))`
-/

namespace A397127.P14770714036970384207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397128 (A032559 (n + 1)).toNat

end

end A397127.P14770714036970384207

/-! ## A397127.P6715126062022522359

`A397128(A276142(n+1))`
-/

namespace A397127.P6715126062022522359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397128 (A276142 (n + 1)).toNat

end

end A397127.P6715126062022522359

/-! ## A397127.P16800083317639760835

`A397128(A227549(n+2))`
-/

namespace A397127.P16800083317639760835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397128 (A227549 (n + 2)).toNat

end

end A397127.P16800083317639760835

/-! ## A397127.P3571283324439192080

`A397128(A396204(n+2))`
-/

namespace A397127.P3571283324439192080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397128 (A396204 (n + 2)).toNat

end

end A397127.P3571283324439192080

/-! ## A397127.P8958379810189837967

`A397128(∑[A046563(n+1)^n])`
-/

namespace A397127.P8958379810189837967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046563 (n + 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397128 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A397127.P8958379810189837967

/-!
# A397133: Triangle T(n,m) read by rows: the number of partitions of [1..n] into sets of size m.

The programs for A397133, there is no canonical definition to state claims against.
-/

/-! ## A397133.P8736856228817426451

`A200472(A120913(n+1))`
-/

namespace A397133.P8736856228817426451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200472 (A120913 (n + 1)).toNat

end

end A397133.P8736856228817426451

/-! ## A397133.P3220518000336755009

`A066387(n+1)/A133644(n+1)`
-/

namespace A397133.P3220518000336755009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066387 (n + 1) : ℚ) / (A133644 (n + 1) : ℚ)

end

end A397133.P3220518000336755009

/-!
# A397136: Dirichlet g.f.: Product_{p prime} (1 + 2/p^s + 1/p^(2*s-1)).

The programs for A397136, the canonical program `A397136.P9058078001182760132` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397136 has offset 1).

The definition of A397136 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A397136.P6114891960547881906

`abs((1+n)*∏{e}[n+1, (-C(2, #))^#])/∏{p}[n+1, #]`
-/

namespace A397136.P6114891960547881906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((|(1 + n : ℤ) * (∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.choose 2 (Nat.factorization (f1 n) p) : ℤ)) ^ Nat.factorization (f1 n) p)| : ℤ) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

end

end A397136.P6114891960547881906

namespace A397136

/-- `abs((1+n)*∏{e}[n+1, (-C(2, #))^#])/∏{p}[n+1, #]` -/
def P6114891960547881906.Spec : Prop :=
  ∀ n, P6114891960547881906.a n = (A397136 (n + 1) : ℚ)

end A397136

/-! ## A397136.P13710416460011594997

`abs(∏{e}[n+1, (-C(2, #))^#])*A000190(n+1)`
-/

namespace A397136.P13710416460011594997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.choose 2 (Nat.factorization (f1 n) p) : ℤ)) ^ Nat.factorization (f1 n) p| * A000190 (n + 1)

end

end A397136.P13710416460011594997

namespace A397136

/-- `abs(∏{e}[n+1, (-C(2, #))^#])*A000190(n+1)` -/
def P13710416460011594997.Spec : Prop :=
  ∀ n, P13710416460011594997.a n = A397136 (n + 1)

end A397136

/-! ## A397136.P3051590812600040636

`abs(∏{e}[n+1, (-C(2, #))^#])*A003557(n+1)`
-/

namespace A397136.P3051590812600040636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.choose 2 (Nat.factorization (f1 n) p) : ℤ)) ^ Nat.factorization (f1 n) p| * A003557 (n + 1)

end

end A397136.P3051590812600040636

namespace A397136

/-- `abs(∏{e}[n+1, (-C(2, #))^#])*A003557(n+1)` -/
def P3051590812600040636.Spec : Prop :=
  ∀ n, P3051590812600040636.a n = A397136 (n + 1)

end A397136

/-! ## A397136.P11303344730098132375

`abs(∏{e}[n+1, (-C(2, #))^#]*(n+1))/A007947(n+1)`
-/

namespace A397136.P11303344730098132375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((|(∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.choose 2 (Nat.factorization (f1 n) p) : ℤ)) ^ Nat.factorization (f1 n) p) * (n + 1 : ℤ)| : ℤ) : ℚ) / (A007947 (n + 1) : ℚ)

end

end A397136.P11303344730098132375

namespace A397136

/-- `abs(∏{e}[n+1, (-C(2, #))^#]*(n+1))/A007947(n+1)` -/
def P11303344730098132375.Spec : Prop :=
  ∀ n, P11303344730098132375.a n = (A397136 (n + 1) : ℚ)

end A397136

/-! ## A397136.P1983461004921888142

`A055076(n+1)*A397238(n+1)`
-/

namespace A397136.P1983461004921888142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055076 (n + 1) * A397238 (n + 1)

end

end A397136.P1983461004921888142

namespace A397136

/-- `A055076(n+1)*A397238(n+1)` -/
def P1983461004921888142.Spec : Prop :=
  ∀ n, P1983461004921888142.a n = A397136 (n + 1)

end A397136

/-! ## A397136.P2678002185293479189

`A056671(n+1)*A397238(n+1)`
-/

namespace A397136.P2678002185293479189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056671 (n + 1) * A397238 (n + 1)

end

end A397136.P2678002185293479189

namespace A397136

/-- `A056671(n+1)*A397238(n+1)` -/
def P2678002185293479189.Spec : Prop :=
  ∀ n, P2678002185293479189.a n = A397136 (n + 1)

end A397136

/-! ## A397136.P18377762273259444304

`A069780(n+1)*A397238(n+1)`
-/

namespace A397136.P18377762273259444304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069780 (n + 1) * A397238 (n + 1)

end

end A397136.P18377762273259444304

namespace A397136

/-- `A069780(n+1)*A397238(n+1)` -/
def P18377762273259444304.Spec : Prop :=
  ∀ n, P18377762273259444304.a n = A397136 (n + 1)

end A397136

/-! ## A397136.P12896341959212066544

`A212793(n+1)*A347291(n+1)`
-/

namespace A397136.P12896341959212066544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (n + 1) * A347291 (n + 1)

end

end A397136.P12896341959212066544

namespace A397136

/-- `A212793(n+1)*A347291(n+1)` -/
def P12896341959212066544.Spec : Prop :=
  ∀ n, P12896341959212066544.a n = A397136 (n + 1)

end A397136

/-! ## A397136.P16663015376431046239

`A294931(n+1)*A397238(n+1)`
-/

namespace A397136.P16663015376431046239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294931 (n + 1) * A397238 (n + 1)

end

end A397136.P16663015376431046239

namespace A397136

/-- `A294931(n+1)*A397238(n+1)` -/
def P16663015376431046239.Spec : Prop :=
  ∀ n, P16663015376431046239.a n = A397136 (n + 1)

end A397136

/-! ## A397136.P6259643150766197977

`A295878(n+1)*A397238(n+1)`
-/

namespace A397136.P6259643150766197977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295878 (n + 1) * A397238 (n + 1)

end

end A397136.P6259643150766197977

namespace A397136

/-- `A295878(n+1)*A397238(n+1)` -/
def P6259643150766197977.Spec : Prop :=
  ∀ n, P6259643150766197977.a n = A397136 (n + 1)

end A397136

/-! ## A397136.P5197731517680259140

`A363825(n+1)*A397238(n+1)`
-/

namespace A397136.P5197731517680259140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363825 (n + 1) * A397238 (n + 1)

end

end A397136.P5197731517680259140

namespace A397136

/-- `A363825(n+1)*A397238(n+1)` -/
def P5197731517680259140.Spec : Prop :=
  ∀ n, P5197731517680259140.a n = A397136 (n + 1)

end A397136

/-! ## A397136.P15840257122934584798

`A365402(n+1)*A397238(n+1)`
-/

namespace A397136.P15840257122934584798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365402 (n + 1) * A397238 (n + 1)

end

end A397136.P15840257122934584798

namespace A397136

/-- `A365402(n+1)*A397238(n+1)` -/
def P15840257122934584798.Spec : Prop :=
  ∀ n, P15840257122934584798.a n = A397136 (n + 1)

end A397136

/-! ## A397136.P2577552025572600303

`A366308(n+1)*A397238(n+1)`
-/

namespace A397136.P2577552025572600303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366308 (n + 1) * A397238 (n + 1)

end

end A397136.P2577552025572600303

namespace A397136

/-- `A366308(n+1)*A397238(n+1)` -/
def P2577552025572600303.Spec : Prop :=
  ∀ n, P2577552025572600303.a n = A397136 (n + 1)

end A397136

/-! ## A397136.P4636055799189655235

`A368470(n+1)*A397238(n+1)`
-/

namespace A397136.P4636055799189655235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368470 (n + 1) * A397238 (n + 1)

end

end A397136.P4636055799189655235

namespace A397136

/-- `A368470(n+1)*A397238(n+1)` -/
def P4636055799189655235.Spec : Prop :=
  ∀ n, P4636055799189655235.a n = A397136 (n + 1)

end A397136

/-! ## A397136.P16345998833432303175

`A368977(n+1)*A397238(n+1)`
-/

namespace A397136.P16345998833432303175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368977 (n + 1) * A397238 (n + 1)

end

end A397136.P16345998833432303175

namespace A397136

/-- `A368977(n+1)*A397238(n+1)` -/
def P16345998833432303175.Spec : Prop :=
  ∀ n, P16345998833432303175.a n = A397136 (n + 1)

end A397136

/-! ## A397136.P10770373598130830667

`A369307(n+1)*A397238(n+1)`
-/

namespace A397136.P10770373598130830667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369307 (n + 1) * A397238 (n + 1)

end

end A397136.P10770373598130830667

namespace A397136

/-- `A369307(n+1)*A397238(n+1)` -/
def P10770373598130830667.Spec : Prop :=
  ∀ n, P10770373598130830667.a n = A397136 (n + 1)

end A397136

/-! ## A397136.P7935951825377724839

`A387960(n+1)*A397238(n+1)`
-/

namespace A397136.P7935951825377724839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387960 (n + 1) * A397238 (n + 1)

end

end A397136.P7935951825377724839

namespace A397136

/-- `A387960(n+1)*A397238(n+1)` -/
def P7935951825377724839.Spec : Prop :=
  ∀ n, P7935951825377724839.a n = A397136 (n + 1)

end A397136

/-! ## A397136.P8085798890582927377

`A392628(n+1)*A397238(n+1)`
-/

namespace A397136.P8085798890582927377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392628 (n + 1) * A397238 (n + 1)

end

end A397136.P8085798890582927377

namespace A397136

/-- `A392628(n+1)*A397238(n+1)` -/
def P8085798890582927377.Spec : Prop :=
  ∀ n, P8085798890582927377.a n = A397136 (n + 1)

end A397136

/-! ## A397136.P9058078001182760132

`lcm(A007427(n+1), A347291(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A397136

/-- `lcm(A007427(n+1), A347291(n+1))` -/
def P9058078001182760132.Spec : Prop :=
  ∀ n, (P9058078001182760132.a n : ℤ) = A397136 (n + 1)

theorem P9058078001182760132.correct : P9058078001182760132.Spec := by
  intro n
  simp only [A397136, Nat.add_sub_cancel]

end A397136

/-!
# A397137: Sum of excess shadings of all permutations of [n] using a reflected interval shading.

The programs for A397137, there is no canonical definition to state claims against.
-/

/-! ## A397137.P11259148249816027436

`A289437(A351757(n)+1)`
-/

namespace A397137.P11259148249816027436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289437 (A351757 n + 1).toNat

end

end A397137.P11259148249816027436

/-! ## A397137.P12574652402335934607

`A344601(A057151(n+2))`
-/

namespace A397137.P12574652402335934607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344601 (A057151 (n + 2)).toNat

end

end A397137.P12574652402335934607

/-!
# A397141: Number of palindromic Carlitz compositions of n with parts in standard order.

The programs for A397141, there is no canonical definition to state claims against.
-/

/-! ## A397141.P15301160429792353983

`A001878(xor(A240114(n+1), A284797(n)))`
-/

namespace A397141.P15301160429792353983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (Int.xor (A240114 (n + 1)) (A284797 n)).toNat

end

end A397141.P15301160429792353983

/-! ## A397141.P16878739853089971717

`A188048(A124027(n+1)^A261959(2*n+3))`
-/

namespace A397141.P16878739853089971717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188048 (SequenceMachineLib.roundAway ((A124027 (n + 1) : ℚ) ^ (A261959 (2 * n + 3) : ℤ))).toNat

end

end A397141.P16878739853089971717

/-! ## A397141.P2110514263801850542

`A007318(3*n+2)%A092335(A037380(2*(n+2)))`
-/

namespace A397141.P2110514263801850542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 (3 * n + 2)) (A092335 (A037380 (2 * (n + 2))).toNat)

end

end A397141.P2110514263801850542

/-!
# A397142: Palindromes without digit 0 whose square is also a palindrome.

The programs for A397142, there is no canonical definition to state claims against.
-/

/-! ## A397142.P17177986101860231148

`∩[A002778(n+1), A007932(n+1)]`
-/

namespace A397142.P17177986101860231148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397142.P17177986101860231148

/-! ## A397142.P12827304175676466044

`∩[A007932(n+1), A057135(n+1)]`
-/

namespace A397142.P12827304175676466044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397142.P12827304175676466044

/-! ## A397142.P11928858324237707690

`∩[A002778(n+1), A082207(n+1)]`
-/

namespace A397142.P11928858324237707690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397142.P11928858324237707690

/-! ## A397142.P4761749413943827464

`∩[A002778(n+1), A083114(n+1)]`
-/

namespace A397142.P4761749413943827464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397142.P4761749413943827464

/-! ## A397142.P14847665878947706466

`∩[A002778(n+1), A083115(n+1)]`
-/

namespace A397142.P14847665878947706466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397142.P14847665878947706466

/-!
# A397144: G.f. A(x), with A(0) = 0, satisfies A(x-x^2) = x + A(x)^3.

The programs for A397144, there is no canonical definition to state claims against.
-/

/-! ## A397144.P7235527298442357073

`A289831(round((n+1)^n/2))`
-/

namespace A397144.P7235527298442357073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (SequenceMachineLib.roundAway (((n + 1) ^ n : ℚ) / 2)).toNat

end

end A397144.P7235527298442357073

/-! ## A397144.P11804817627771270778

`A151916(A111277(n))`
-/

namespace A397144.P11804817627771270778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151916 (A111277 n).toNat

end

end A397144.P11804817627771270778

/-!
# A397147: G.f. A(x), with A(0) = 0, satisfies A(x-x^3) = x + A(x)^2.

The programs for A397147, there is no canonical definition to state claims against.
-/

/-! ## A397147.P14096285425512505690

`A268132(A149019(n))`
-/

namespace A397147.P14096285425512505690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268132 (A149019 n).toNat

end

end A397147.P14096285425512505690

/-! ## A397147.P17638217285811879269

`ceil((C(A018280(2*n+1), 2)+3*n+2)/9)`
-/

namespace A397147.P17638217285811879269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (A018280 (2 * n + 1)).toNat 2 + 3 * n + 2 : ℚ) / 9⌉

end

end A397147.P17638217285811879269

/-!
# A397148: Numbers k such that k + omega(k) is prime.

The programs for A397148, the canonical program `A397148.P13443785870938589229` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397148 has offset 1).

The definition of A397148 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5230 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A397148.P13443785870938589229

`eq[2, A000005(n+A001221(n+1)+1)]+1`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A397148

/-- `eq[2, A000005(n+A001221(n+1)+1)]+1` -/
def P13443785870938589229.Spec : Prop :=
  ∀ n, (P13443785870938589229.a n : ℤ) = A397148 (n + 1)

theorem P13443785870938589229.correct : P13443785870938589229.Spec := by
  intro n
  simp only [A397148, Nat.add_sub_cancel]

end A397148

/-! ## A397148.P1378553359461123315

`eq[3, A265390(A229109(n+1))]+1`
-/

namespace A397148.P1378553359461123315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265390 (A229109 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A397148.P1378553359461123315

namespace A397148

/-- `eq[3, A265390(A229109(n+1))]+1` -/
def P1378553359461123315.Spec : Prop :=
  ∀ n, (P1378553359461123315.a n : ℤ) = A397148 (n + 1)

end A397148

/-!
# A397150: Number of decimal places which are known after using n terms of A072193 and treating them as the coefficients of a continued fraction.

The programs for A397150, there is no canonical definition to state claims against.
-/

/-! ## A397150.P3005723894141232204

`n-A362611(A371791(n))`
-/

namespace A397150.P3005723894141232204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A362611 (A371791 n).toNat

end

end A397150.P3005723894141232204

/-! ## A397150.P7183234708797469431

`n-A124766(A000041(n)-A383092(n))`
-/

namespace A397150.P7183234708797469431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A124766 (A000041 n - A383092 n).toNat

end

end A397150.P7183234708797469431

/-! ## A397150.P13765234999736579064

`A004526(lt[A043517(3*n+5), A096891(2*(n+2))])`
-/

namespace A397150.P13765234999736579064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043517 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096891 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A397150.P13765234999736579064

/-!
# A397151: Number of compositions (c_1,...,c_k) of n with c_i >= 3*k - 2*i.

The programs for A397151, there is no canonical definition to state claims against.
-/

/-! ## A397151.P5127431789213977653

`A005711(n+2)^A005711(A278657(n))`
-/

namespace A397151.P5127431789213977653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005711 (n + 2) : ℚ) ^ (A005711 (A278657 n).toNat : ℤ)

end

end A397151.P5127431789213977653

/-! ## A397151.P10597554360399077908

`A086299(A059762(n+1))+A005711(n+2)`
-/

namespace A397151.P10597554360399077908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086299 (A059762 (n + 1)).toNat + A005711 (n + 2)

end

end A397151.P10597554360399077908

/-! ## A397151.P1416083536864553207

`A322856(n+3)^A232976(A323519(n+1))`
-/

namespace A397151.P1416083536864553207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322856 (n + 3) : ℚ) ^ (A232976 (A323519 (n + 1)).toNat : ℤ)

end

end A397151.P1416083536864553207

/-! ## A397151.P233214425754897524

`A005711(n+2)%A079156(n+2)`
-/

namespace A397151.P233214425754897524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005711 (n + 2)) (A079156 (n + 2))

end

end A397151.P233214425754897524

/-! ## A397151.P11335998877459574849

`A052126(A000040(2*n+3)*A005711(n+2))`
-/

namespace A397151.P11335998877459574849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A000040 (2 * n + 3) * A005711 (n + 2)).toNat

end

end A397151.P11335998877459574849

/-!
# A397152: Number of partitions of {1,...,3*n} into 3-element subsets {x,y,z} satisfying x+y=3*z.

The programs for A397152, there is no canonical definition to state claims against.
-/

/-! ## A397152.P888933612464301626

`A151697(n)%A151689(A151685(3*n))`
-/

namespace A397152.P888933612464301626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151697 n) (A151689 (A151685 (3 * n)).toNat)

end

end A397152.P888933612464301626

/-! ## A397152.P16424831719607917724

`A333755(A178415(n+1)-A045777(n+1))`
-/

namespace A397152.P16424831719607917724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333755 (A178415 (n + 1) - A045777 (n + 1)).toNat

end

end A397152.P16424831719607917724

/-! ## A397152.P13944366013361916562

`A108643(3*n+1)%A084265(A278074(n))`
-/

namespace A397152.P13944366013361916562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108643 (3 * n + 1)) (A084265 (A278074 n).toNat)

end

end A397152.P13944366013361916562

/-!
# A397153: Maximum length of a snake polyomino in a 12 X n rectangle.

The programs for A397153, there is no canonical definition to state claims against.
-/

/-! ## A397153.P3777381209375232458

`ogf((12+6x+8x^2+7x^3+7x^4+7x^5-4x^6+x^7+2x^10-x^11-x^16+x^17-x^18)/(1-x-x^6+x^7))`
-/

namespace A397153.P3777381209375232458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [12, 6, 8, 7, 7, 7, -4, 1, 0, 0, 2, -1, 0, 0, 0, 0, -1, 1, -1] [1, -1, 0, 0, 0, 0, -1, 1] n

end

end A397153.P3777381209375232458

/-! ## A397153.P1699036876283427010

`A360917(A052905(n+9)-6)`
-/

namespace A397153.P1699036876283427010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360917 (A052905 (n + 9) - 6).toNat

end

end A397153.P1699036876283427010

/-!
# A397155: Least prime p such that n^3 - p is semiprime.

The programs for A397155, there is no canonical definition to state claims against.
-/

/-! ## A397155.P6311062989172704598

`A398353((n+2)^3)`
-/

namespace A397155.P6311062989172704598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398353 ((n + 2) ^ 3)

end

end A397155.P6311062989172704598

/-!
# A397164: In A280864, these are the primes that begin a block of length 4 that both begins and ends with a prime.

The programs for A397164, there is no canonical definition to state claims against.
-/

/-! ## A397164.P4049530863399114381

`A396301(A397102(1+n))`
-/

namespace A397164.P4049530863399114381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396301 (A397102 (1 + n)).toNat

end

end A397164.P4049530863399114381

/-! ## A397164.P8965457894455245835

`A396303(A397102(n+1)-2)`
-/

namespace A397164.P8965457894455245835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396303 (A397102 (n + 1) - 2).toNat

end

end A397164.P8965457894455245835

/-! ## A397164.P13248437789351650406

`A000040(A397165(n+1))`
-/

namespace A397164.P13248437789351650406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A397165 (n + 1)).toNat

end

end A397164.P13248437789351650406

/-! ## A397164.P1439641255807200894

`A008578(A397165(n+1)+1)`
-/

namespace A397164.P1439641255807200894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A397165 (n + 1) + 1).toNat

end

end A397164.P1439641255807200894

/-!
# A397165: Apply PrimePi to A397164.

The programs for A397165, there is no canonical definition to state claims against.
-/

/-! ## A397165.P15437995327027408433

`A000720(A397164(1+n))`
-/

namespace A397165.P15437995327027408433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A397164 (1 + n)).toNat

end

end A397165.P15437995327027408433

/-! ## A397165.P9793395930143585583

`A000720(A396301(A397102(n+1)))`
-/

namespace A397165.P9793395930143585583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A396301 (A397102 (n + 1)).toNat).toNat

end

end A397165.P9793395930143585583

/-! ## A397165.P17371049026671879105

`A056239(or(1, A397164(n+1)))`
-/

namespace A397165.P17371049026671879105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.lor 1 (A397164 (n + 1))).toNat

end

end A397165.P17371049026671879105

/-! ## A397165.P13875060202367893860

`A056239(A397164(n+1)+A000035(2*n))`
-/

namespace A397165.P13875060202367893860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A397164 (n + 1) + A000035 (2 * n)).toNat

end

end A397165.P13875060202367893860

/-! ## A397165.P1786184648130921786

`A055396(A397164(n+1)%A397164(n+2))`
-/

namespace A397165.P1786184648130921786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (Int.tmod (A397164 (n + 1)) (A397164 (n + 2))).toNat

end

end A397165.P1786184648130921786

/-!
# A397166: a(n) = smallest k such that prime(n) divides A280864(k).

The programs for A397166, there is no canonical definition to state claims against.
-/

/-! ## A397166.P17277116626818219031

`xor(A121373(A074868(2*n+1)), A280742(n+1))`
-/

namespace A397166.P17277116626818219031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A121373 (A074868 (2 * n + 1)).toNat) (A280742 (n + 1))

end

end A397166.P17277116626818219031

/-! ## A397166.P2699183035022121931

`A280742(n+1)-A007949(A297191(3*n+4))`
-/

namespace A397166.P2699183035022121931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280742 (n + 1) - A007949 (A297191 (3 * n + 4)).toNat

end

end A397166.P2699183035022121931

/-! ## A397166.P16602970497479262901

`A280741(A008578(2+n))-A342004(A213249(n+6))`
-/

namespace A397166.P16602970497479262901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280741 (A008578 (2 + n)).toNat - A342004 (A213249 (n + 6)).toNat

end

end A397166.P16602970497479262901

/-! ## A397166.P1525147968319102262

`A280741(A182986(n+2))-A342004(A213249(n+6))`
-/

namespace A397166.P1525147968319102262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280741 (A182986 (n + 2)).toNat - A342004 (A213249 (n + 6)).toNat

end

end A397166.P1525147968319102262

/-! ## A397166.P16935563652462268747

`A280742(n+1)-A209229(A056361(n+1))`
-/

namespace A397166.P16935563652462268747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280742 (n + 1) - A209229 (A056361 (n + 1)).toNat

end

end A397166.P16935563652462268747

/-!
# A397167: Consider the square spiral with cells labeled counterclockwise starting at 0, as in A304586 and A307282; sequence gives irregular triangle read by rows, where row n lists the neighbors of cell n that already exist when cell n is being filled in.

The programs for A397167, there is no canonical definition to state claims against.
-/

/-! ## A397167.P5760790014363662033

`A025642(gcd(A075300(n), A090220(2*n+1)))`
-/

namespace A397167.P5760790014363662033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025642 (Int.gcd (A075300 n) (A090220 (2 * n + 1)))

end

end A397167.P5760790014363662033

/-! ## A397167.P14876315226061259945

`col(A363225(2*n+1)%A383332(n))`
-/

namespace A397167.P14876315226061259945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (Int.tmod (A363225 (2 * n + 1)) (A383332 n)).toNat

end

end A397167.P14876315226061259945

/-! ## A397167.P10344908183875474873

`col(lt[A329429(n), A056239(3*(n+1))])`
-/

namespace A397167.P10344908183875474873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329429 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A397167.P10344908183875474873

/-! ## A397167.P9322123190416646362

`A001631(n)%A060594(A052082(n+4))`
-/

namespace A397167.P9322123190416646362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001631 n) (A060594 (A052082 (n + 4)).toNat)

end

end A397167.P9322123190416646362

/-! ## A397167.P976823828959308441

`A213177(gcd(A118765(n), A275241(3*(n+1))))`
-/

namespace A397167.P976823828959308441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (Int.gcd (A118765 n) (A275241 (3 * (n + 1))))

end

end A397167.P976823828959308441

/-!
# A397168: Index of n in A354434, or -1 if n never appears.

The programs for A397168, there is no canonical definition to state claims against.
-/

/-! ## A397168.P18105876265107727980

`A233949(a(n-1))` with `a(0)=1, a(1)=2, a(2)=5, a(3)=3`
-/

namespace A397168.P18105876265107727980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 3] fun n a =>
  A233949 (a (n - 1)).toNat

end

end A397168.P18105876265107727980

/-!
# A397169: The leading diagonal of A397219.

The programs for A397169, there is no canonical definition to state claims against.
-/

/-! ## A397169.P4742072154130669944

`A397219(1+∑[n])`
-/

namespace A397169.P4742072154130669944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397219 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A397169.P4742072154130669944

/-! ## A397169.P9146669834980383777

`A397219(A000124(n))%A001262(n+1)`
-/

namespace A397169.P9146669834980383777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A397219 (A000124 n).toNat) (A001262 (n + 1))

end

end A397169.P9146669834980383777

/-! ## A397169.P15788904385543631233

`A000035(2*n+1)*A397219(A000124(n))`
-/

namespace A397169.P15788904385543631233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1) * A397219 (A000124 n).toNat

end

end A397169.P15788904385543631233

/-! ## A397169.P10842158120709816288

`A000034(2*(n+2))*A397219(A000124(n))`
-/

namespace A397169.P10842158120709816288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * (n + 2)) * A397219 (A000124 n).toNat

end

end A397169.P10842158120709816288

/-!
# A397171: Primes that take the longest to appear in A396013.

The programs for A397171, there is no canonical definition to state claims against.
-/

/-! ## A397171.P17325868756807368933

`A000040(lt[A167865(n), A274878(3*n+4)])`
-/

namespace A397171.P17325868756807368933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274878 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A397171.P17325868756807368933

/-! ## A397171.P15430158319191479803

`p?[∑[A352517(2*n+1)]]`
-/

namespace A397171.P15430158319191479803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352517 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A397171.P15430158319191479803

/-! ## A397171.P15115285214450599094

`A095074(A005100(n+1)+char[A245943(3*(n+1))])`
-/

namespace A397171.P15115285214450599094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245943 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095074 (A005100 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A397171.P15115285214450599094

/-! ## A397171.P18379197360267126643

`A000040(lt[A152243(2*n+3), A095047(3*(n+1))])`
-/

namespace A397171.P18379197360267126643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152243 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095047 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A397171.P18379197360267126643

/-! ## A397171.P1191402008722365593

`A300271(A089438(n+2))`
-/

namespace A397171.P1191402008722365593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300271 (A089438 (n + 2)).toNat

end

end A397171.P1191402008722365593

/-!
# A397172: Number of primes in n-th block of A280864.

The programs for A397172, there is no canonical definition to state claims against.
-/

/-! ## A397172.P16030134157423714177

`A010815(A287869(2*n+1))+1`
-/

namespace A397172.P16030134157423714177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A287869 (2 * n + 1)).toNat + 1

end

end A397172.P16030134157423714177

/-! ## A397172.P14816972208020192754

`A373369(gcd(A127857(n+2), A144685(n+1)))`
-/

namespace A397172.P14816972208020192754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373369 (Int.gcd (A127857 (n + 2)) (A144685 (n + 1)))

end

end A397172.P14816972208020192754

/-! ## A397172.P2759757708111491397

`A166124(A063698(n+1))`
-/

namespace A397172.P2759757708111491397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166124 (A063698 (n + 1)).toNat

end

end A397172.P2759757708111491397

/-! ## A397172.P5503599488661007148

`A328614(gcd(A056239(n+1), A268448(n+3)))`
-/

namespace A397172.P5503599488661007148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328614 (Int.gcd (A056239 (n + 1)) (A268448 (n + 3)))

end

end A397172.P5503599488661007148

/-! ## A397172.P12880397526771158589

`A365805(A292104(n+5))%A151765(n+1)`
-/

namespace A397172.P12880397526771158589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A365805 (A292104 (n + 5)).toNat) (A151765 (n + 1))

end

end A397172.P12880397526771158589

/-!
# A397173: Irregular triangle T(n,k) (n >= 2, k>=0) read by rows: T(n,k) = number of times the sum W(i)+W(j) is equal to k, for 1 <= i < j <= n, where W is Weinstein's sequence A399995.

The programs for A397173, there is no canonical definition to state claims against.
-/

/-! ## A397173.P2523513350733345075

`A360457(A280521(n+1)^A276921(n+2))`
-/

namespace A397173.P2523513350733345075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360457 (SequenceMachineLib.roundAway ((A280521 (n + 1) : ℚ) ^ (A276921 (n + 2) : ℤ))).toNat

end

end A397173.P2523513350733345075

/-! ## A397173.P14076228109119165734

`A333381(gcd(A000740(n+1), A111035(n+3)))`
-/

namespace A397173.P14076228109119165734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (Int.gcd (A000740 (n + 1)) (A111035 (n + 3)))

end

end A397173.P14076228109119165734

/-! ## A397173.P5230696035559700313

`A255231(A045704(2*(n+2))-A358120(3*n+1))`
-/

namespace A397173.P5230696035559700313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255231 (A045704 (2 * (n + 2)) - A358120 (3 * n + 1)).toNat

end

end A397173.P5230696035559700313

/-! ## A397173.P6309682406964364820

`A233284(A103481(n+1))`
-/

namespace A397173.P6309682406964364820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233284 (A103481 (n + 1)).toNat

end

end A397173.P6309682406964364820

/-! ## A397173.P12474272540396865869

`A380698(A023652(n+1))`
-/

namespace A397173.P12474272540396865869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380698 (A023652 (n + 1)).toNat

end

end A397173.P12474272540396865869

/-!
# A397175: Numbers that appear in A399995.

The programs for A397175, there is no canonical definition to state claims against.
-/

/-! ## A397175.P18205396521019293323

`comp[A397471(n+1)]`
-/

namespace A397175.P18205396521019293323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A397175.P18205396521019293323

/-! ## A397175.P4861530000283315016

`comp[comp[A399995(n+1)-1]+1]`
-/

namespace A397175.P4861530000283315016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399995 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A397175.P4861530000283315016

/-! ## A397175.P16127208792631924793

`comp[A028310(comp[A399995(n+1)])]`
-/

namespace A397175.P16127208792631924793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399995 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A397175.P16127208792631924793

/-! ## A397175.P1289481735870777733

`comp[A254667(comp[A399995(n+1)])]`
-/

namespace A397175.P1289481735870777733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399995 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A397175.P1289481735870777733

/-! ## A397175.P17660802533989492628

`comp[A028310(comp[1-A397177(n+1)+n])]`
-/

namespace A397175.P17660802533989492628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A397177 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A397175.P17660802533989492628

/-! ## A397175.P6958857015798283431

`comp[A254667(comp[1-A397177(n+1)+n])]`
-/

namespace A397175.P6958857015798283431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A397177 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A397175.P6958857015798283431

/-! ## A397175.P1618923498938868107

`comp[A316569(3*n)+comp[A399995(n+1)]]`
-/

namespace A397175.P1618923498938868107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399995 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316569 (3 * n) + (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A397175.P1618923498938868107

/-! ## A397175.P16162396228715644257

`comp[A318517(2*(n+2))+comp[A399995(n+1)]]`
-/

namespace A397175.P16162396228715644257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399995 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318517 (2 * (n + 2)) + (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A397175.P16162396228715644257

/-! ## A397175.P7509255762690447845

`comp[A132747(2*n+5)+comp[A399995(n+1)]]`
-/

namespace A397175.P7509255762690447845
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399995 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132747 (2 * n + 5) + (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A397175.P7509255762690447845

/-! ## A397175.P16099597447365803269

`comp[A132747(2*n+3)+comp[1-A397177(n+1)+n]]`
-/

namespace A397175.P16099597447365803269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A397177 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132747 (2 * n + 3) + (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A397175.P16099597447365803269

/-!
# A397177: a(n) = n - A399995(n).

The programs for A397177, there is no canonical definition to state claims against.
-/

/-! ## A397177.P13083308451078959266

`n+1-A399995(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397177.P13083308451078959266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A399995 (n + 1)

end

end A397177.P13083308451078959266

/-! ## A397177.P6938456749152625793

`1-A399995(n+1)+n`
-/

namespace A397177.P6938456749152625793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A399995 (n + 1) + (n : ℤ)

end

end A397177.P6938456749152625793

/-! ## A397177.P11629939499516892421

`A024000(A399995(n+1))+n`
-/

namespace A397177.P11629939499516892421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A399995 (n + 1)).toNat + (n : ℤ)

end

end A397177.P11629939499516892421

/-! ## A397177.P8756229354278703957

`A080079(A399995(n+1)+A080079(n+1))`
-/

namespace A397177.P8756229354278703957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (A399995 (n + 1) + A080079 (n + 1)).toNat

end

end A397177.P8756229354278703957

/-! ## A397177.P2903528285114225678

`A025581(A399995(n+1)+A000217(n+1))`
-/

namespace A397177.P2903528285114225678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A399995 (n + 1) + A000217 (n + 1)).toNat

end

end A397177.P2903528285114225678

/-!
# A397178: Irregular triangle read by rows: T(n,k) (n >= 1, k >= 0) = number of times k appears in the first n terms of A399995.

The programs for A397178, there is no canonical definition to state claims against.
-/

/-! ## A397178.P10581800434610514807

`A030341(A203074(n)-A010051(3*n+1))`
-/

namespace A397178.P10581800434610514807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030341 (A203074 n - A010051 (3 * n + 1)).toNat

end

end A397178.P10581800434610514807

/-! ## A397178.P17150657520191280140

`A190672(A340595(n))`
-/

namespace A397178.P17150657520191280140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190672 (A340595 n).toNat

end

end A397178.P17150657520191280140

/-! ## A397178.P12550712114904197263

`A059832(A041018(n+1))-1`
-/

namespace A397178.P12550712114904197263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059832 (A041018 (n + 1)).toNat - 1

end

end A397178.P12550712114904197263

/-! ## A397178.P16541799011915263751

`A053838(A000079(n)+A067138(n)^5)`
-/

namespace A397178.P16541799011915263751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 (A000079 n + A067138 n ^ 5).toNat

end

end A397178.P16541799011915263751

/-! ## A397178.P16385367355671703153

`A246146(n+4)+A136522(A115596(n+1))`
-/

namespace A397178.P16385367355671703153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246146 (n + 4) + A136522 (A115596 (n + 1)).toNat

end

end A397178.P16385367355671703153

/-!
# A397179: The rows of triangle A397178 converge to this sequence.

The programs for A397179, there is no canonical definition to state claims against.
-/

/-! ## A397179.P3029110437407993629

`A002126(A135846(n+1))-A107628(2*n+5)`
-/

namespace A397179.P3029110437407993629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (A135846 (n + 1)).toNat - A107628 (2 * n + 5)

end

end A397179.P3029110437407993629

/-!
# A397182: a(n) = maximum number of regions the plane can be divided into by drawing n constrained long-legged A's.

The programs for A397182, the canonical program `A397182.P18391866545752869545` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397182 has offset 0).

The definition of A397182 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397182.P18391866545752869545

`floor((15*n²-6*n+4)/4)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A397182

/-- `floor((15*n²-6*n+4)/4)` -/
def P18391866545752869545.Spec : Prop :=
  ∀ n, P18391866545752869545.a n = A397182 n

theorem P18391866545752869545.correct : P18391866545752869545.Spec := by
  intro n
  simp only [A397182]

end A397182

/-! ## A397182.P3462960083128945134

`7*C(n, 2)+floor(n²/4)+2*n+1`
-/

namespace A397182.P3462960083128945134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * Nat.choose n 2 : ℤ) + ⌊(n ^ 2 : ℚ) / 4⌋ + (2 * n : ℤ) + 1

end

end A397182.P3462960083128945134

namespace A397182

/-- `7*C(n, 2)+floor(n²/4)+2*n+1` -/
def P3462960083128945134.Spec : Prop :=
  ∀ n, P3462960083128945134.a n = A397182 n

end A397182

/-! ## A397182.P15537498933318261436

`∑[a(n-2)+15]` with `a(0)=1, a(1)=2, a(2)=10`
-/

namespace A397182.P15537498933318261436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 10] fun n f1 =>
  f1 (n - 2) + 15

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397182.P15537498933318261436

namespace A397182

/-- `∑[a(n-2)+15]` -/
def P15537498933318261436.Spec : Prop :=
  ∀ n, (P15537498933318261436.a n : ℤ) = A397182 n

end A397182

/-! ## A397182.P4351614650450897600

`∑[∑[floor(a(n-2))]]` with `a(0)=1, a(1)=1, a(2)=8, a(3)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A397182.P4351614650450897600
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 8, 7] fun n f2 =>
  f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397182.P4351614650450897600

namespace A397182

/-- `∑[∑[floor(a(n-2))]]` -/
def P4351614650450897600.Spec : Prop :=
  ∀ n, (P4351614650450897600.a n : ℤ) = A397182 n

end A397182

/-! ## A397182.P14979038943032827786

`C(3*n, 2)+1-ceil(3*n²/4)`
-/

namespace A397182.P14979038943032827786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) 2 + 1 : ℤ) - ⌈(3 * n ^ 2 : ℚ) / 4⌉

end

end A397182.P14979038943032827786

namespace A397182

/-- `C(3*n, 2)+1-ceil(3*n²/4)` -/
def P14979038943032827786.Spec : Prop :=
  ∀ n, P14979038943032827786.a n = A397182 n

end A397182

/-! ## A397182.P10489966568603024222

`C(3*n, 2)-floor((n²-1)*3/4)`
-/

namespace A397182.P10489966568603024222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) 2 : ℤ) - ⌊(((n ^ 2 : ℤ) - 1) * 3 : ℚ) / 4⌋

end

end A397182.P10489966568603024222

namespace A397182

/-- `C(3*n, 2)-floor((n²-1)*3/4)` -/
def P10489966568603024222.Spec : Prop :=
  ∀ n, P10489966568603024222.a n = A397182 n

end A397182

/-! ## A397182.P1499818899567094994

`A393448(n)+∑[n]`
-/

namespace A397182.P1499818899567094994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393448 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A397182.P1499818899567094994

namespace A397182

/-- `A393448(n)+∑[n]` -/
def P1499818899567094994.Spec : Prop :=
  ∀ n, P1499818899567094994.a n = A397182 n

end A397182

/-! ## A397182.P7089416320767443488

`A056105(n)+A006578(n)`
-/

namespace A397182.P7089416320767443488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056105 n + A006578 n

end

end A397182.P7089416320767443488

namespace A397182

/-- `A056105(n)+A006578(n)` -/
def P7089416320767443488.Spec : Prop :=
  ∀ n, P7089416320767443488.a n = A397182 n

end A397182

/-! ## A397182.P6944482041130016670

`A192136(n)+A032527(n)`
-/

namespace A397182.P6944482041130016670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192136 n + A032527 n

end

end A397182.P6944482041130016670

namespace A397182

/-- `A192136(n)+A032527(n)` -/
def P6944482041130016670.Spec : Prop :=
  ∀ n, P6944482041130016670.a n = A397182 n

end A397182

/-! ## A397182.P14035797814300912196

`A218471(n)+A033638(n)`
-/

namespace A397182.P14035797814300912196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218471 n + A033638 n

end

end A397182.P14035797814300912196

namespace A397182

/-- `A218471(n)+A033638(n)` -/
def P14035797814300912196.Spec : Prop :=
  ∀ n, P14035797814300912196.a n = A397182 n

end A397182

/-! ## A397182.P1766583867509879995

`A080855(n)-A077043(n)`
-/

namespace A397182.P1766583867509879995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080855 n - A077043 n

end

end A397182.P1766583867509879995

namespace A397182

/-- `A080855(n)-A077043(n)` -/
def P1766583867509879995.Spec : Prop :=
  ∀ n, P1766583867509879995.a n = A397182 n

end A397182

/-! ## A397182.P3023766247613209386

`A276819(n)-A001859(n)`
-/

namespace A397182.P3023766247613209386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276819 n - A001859 n

end

end A397182.P3023766247613209386

namespace A397182

/-- `A276819(n)-A001859(n)` -/
def P3023766247613209386.Spec : Prop :=
  ∀ n, P3023766247613209386.a n = A397182 n

end A397182

/-! ## A397182.P15780257962937221505

`A212656(n)-A115006(n)`
-/

namespace A397182.P15780257962937221505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212656 n - A115006 n

end

end A397182.P15780257962937221505

namespace A397182

/-- `A212656(n)-A115006(n)` -/
def P15780257962937221505.Spec : Prop :=
  ∀ n, P15780257962937221505.a n = A397182 n

end A397182

/-! ## A397182.P3799318104173457258

`A062741(n)-A331952(n)`
-/

namespace A397182.P3799318104173457258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062741 n - A331952 n

end

end A397182.P3799318104173457258

namespace A397182

/-- `A062741(n)-A331952(n)` -/
def P3799318104173457258.Spec : Prop :=
  ∀ n, P3799318104173457258.a n = A397182 n

end A397182

/-! ## A397182.P1541007592109947861

`A087811(n+1)+A001106(n)`
-/

namespace A397182.P1541007592109947861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (n + 1) + A001106 n

end

end A397182.P1541007592109947861

namespace A397182

/-- `A087811(n+1)+A001106(n)` -/
def P1541007592109947861.Spec : Prop :=
  ∀ n, P1541007592109947861.a n = A397182 n

end A397182

/-! ## A397182.P8833241197130290993

`A140065(n+1)+A002620(n)`
-/

namespace A397182.P8833241197130290993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140065 (n + 1) + A002620 n

end

end A397182.P8833241197130290993

namespace A397182

/-- `A140065(n+1)+A002620(n)` -/
def P8833241197130290993.Spec : Prop :=
  ∀ n, P8833241197130290993.a n = A397182 n

end A397182

/-! ## A397182.P14723681328585683610

`A389608(n)+A024206(n+1)`
-/

namespace A397182.P14723681328585683610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389608 n + A024206 (n + 1)

end

end A397182.P14723681328585683610

namespace A397182

/-- `A389608(n)+A024206(n+1)` -/
def P14723681328585683610.Spec : Prop :=
  ∀ n, P14723681328585683610.a n = A397182 n

end A397182

/-! ## A397182.P7023649492068993178

`A054556(n+1)-A002620(n+1)`
-/

namespace A397182.P7023649492068993178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054556 (n + 1) - A002620 (n + 1)

end

end A397182.P7023649492068993178

namespace A397182

/-- `A054556(n+1)-A002620(n+1)` -/
def P7023649492068993178.Spec : Prop :=
  ∀ n, P7023649492068993178.a n = A397182 n

end A397182

/-! ## A397182.P70280546410218756

`A054556(n+1)+A001057(n)*A001057(n+1)`
-/

namespace A397182.P70280546410218756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054556 (n + 1) + A001057 n * A001057 (n + 1)

end

end A397182.P70280546410218756

namespace A397182

/-- `A054556(n+1)+A001057(n)*A001057(n+1)` -/
def P70280546410218756.Spec : Prop :=
  ∀ n, P70280546410218756.a n = A397182 n

end A397182

/-! ## A397182.P14284745584348335671

`A054556(n+1)+A130472(n)*A130472(n+1)`
-/

namespace A397182.P14284745584348335671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054556 (n + 1) + A130472 n * A130472 (n + 1)

end

end A397182.P14284745584348335671

namespace A397182

/-- `A054556(n+1)+A130472(n)*A130472(n+1)` -/
def P14284745584348335671.Spec : Prop :=
  ∀ n, P14284745584348335671.a n = A397182 n

end A397182

/-!
# A397183: a(n) = A317105(n)/2.

The programs for A397183, there is no canonical definition to state claims against.
-/

/-! ## A397183.P15983809822629202696

`A317105(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397183.P15983809822629202696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317105 n : ℚ) / 2

end

end A397183.P15983809822629202696

/-! ## A397183.P2460805453757733030

`A329022(n+1)-1`
-/

namespace A397183.P2460805453757733030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329022 (n + 1) - 1

end

end A397183.P2460805453757733030

/-! ## A397183.P14652531647126420513

`floor(A317106(n+1)/2)`
-/

namespace A397183.P14652531647126420513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A317106 (n + 1) : ℚ) / 2⌋

end

end A397183.P14652531647126420513

/-! ## A397183.P15891934462491904787

`A001281(A317105(n))`
-/

namespace A397183.P15891934462491904787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A317105 n).toNat

end

end A397183.P15891934462491904787

/-! ## A397183.P17679809447111823357

`A004524(A317106(n+1))`
-/

namespace A397183.P17679809447111823357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A317106 (n + 1)).toNat

end

end A397183.P17679809447111823357

/-! ## A397183.P3722956521303398145

`A023443(A329022(n+1))`
-/

namespace A397183.P3722956521303398145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A329022 (n + 1)).toNat

end

end A397183.P3722956521303398145

/-! ## A397183.P6304465106307261471

`A317106(n+1)%A329022(n+1)`
-/

namespace A397183.P6304465106307261471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317106 (n + 1)) (A329022 (n + 1))

end

end A397183.P6304465106307261471

/-!
# A397184: Number of nonisomorphic metrizable betweenness relations on a set of n elements.

The programs for A397184, there is no canonical definition to state claims against.
-/

/-! ## A397184.P9660668714218171839

`A074945(n!²)`
-/

namespace A397184.P9660668714218171839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074945 (Nat.factorial n ^ 2)

end

end A397184.P9660668714218171839

/-!
# A397185: a(n) is the smallest positive integer m such that every even integer from 2 to 2n can be expressed as a sum of two (not necessarily distinct) 1-bit positions in the binary expansion of m.

The programs for A397185, there is no canonical definition to state claims against.
-/

/-! ## A397185.P4534843395608955072

`A193279(A000244(n))+A063886(n)`
-/

namespace A397185.P4534843395608955072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193279 (A000244 n).toNat + A063886 n

end

end A397185.P4534843395608955072

/-! ## A397185.P10556616019302083820

`A063886(n)+record[A348366(n)]`
-/

namespace A397185.P10556616019302083820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348366 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A397185.P10556616019302083820

/-! ## A397185.P15045148203377383314

`A354711(A018170(n))`
-/

namespace A397185.P15045148203377383314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354711 (A018170 n).toNat

end

end A397185.P15045148203377383314

/-! ## A397185.P9351302258421099313

`A106317(A355325(n))`
-/

namespace A397185.P9351302258421099313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106317 (A355325 n).toNat

end

end A397185.P9351302258421099313

/-!
# A397187: a(n) = ((n + 1)^prime(n) - n^prime(n) - 1)/prime(n).

The programs for A397187, the canonical program `A397187.P6130818575841428385` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397187 has offset 1).

The definition of A397187 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397187.P6130818575841428385

`((n+2)^A000040(n+1)-(n+1)^A000040(n+1)-1)/A000040(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A397187

/-- `((n+2)^A000040(n+1)-(n+1)^A000040(n+1)-1)/A000040(n+1)` -/
def P6130818575841428385.Spec : Prop :=
  ∀ n, P6130818575841428385.a n = (A397187 (n + 1) : ℚ)

end A397187

/-! ## A397187.P3067422329119499028

`A397186((n+1)²+n²)`
-/

namespace A397187.P3067422329119499028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397186 ((n + 1) ^ 2 + n ^ 2)

end

end A397187.P3067422329119499028

namespace A397187

/-- `A397186((n+1)²+n²)` -/
def P3067422329119499028.Spec : Prop :=
  ∀ n, P3067422329119499028.a n = A397187 (n + 1)

end A397187

/-!
# A397188: Antidiagonal sums of the array A397186.

The programs for A397188, there is no canonical definition to state claims against.
-/

/-! ## A397188.P11490569205400480799

`A367217(A323339(n))+A288784(3*n)`
-/

namespace A397188.P11490569205400480799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367217 (A323339 n).toNat + A288784 (3 * n)

end

end A397188.P11490569205400480799

/-!
# A397190: Number of directed Hamiltonian cycles in the n X n torus grid graph, reduced for symmetry (with rotations, reflections, and translations not counted as distinct).

The programs for A397190, there is no canonical definition to state claims against.
-/

/-! ## A397190.P8332639760356686623

`A173720(A355514(n+1))`
-/

namespace A397190.P8332639760356686623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173720 (A355514 (n + 1)).toNat

end

end A397190.P8332639760356686623

/-!
# A397193: Average k of twin prime pairs such that d*2^(k/d) is also the average of twin prime pairs for some d.

The programs for A397193, there is no canonical definition to state claims against.
-/

/-! ## A397193.P5129847679578805336

`A014574(ceil(sqrt(A103297(3*n+4))+n))`
-/

namespace A397193.P5129847679578805336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 ⌈Real.sqrt (A103297 (3 * n + 4) : ℝ) + (n : ℝ)⌉.toNat

end

end A397193.P5129847679578805336

/-! ## A397193.P10119237605265386725

`eq[A211986(n+1), A353464(n+1)]`
-/

namespace A397193.P10119237605265386725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353464 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A397193.P10119237605265386725

/-! ## A397193.P3201777748026731930

`A014574(lt[A107788(n+1), A329431(3*n)])`
-/

namespace A397193.P3201777748026731930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329431 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A397193.P3201777748026731930

