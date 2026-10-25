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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A344100: Expansion of Product_{k>=1} (1 + x^k)^binomial(k+4,5).

The programs for A344100, there is no canonical definition to state claims against.
-/

/-! ## A344100.P6985391856896469284

`A057608(2*n+1)-∑[A133670(n)]`
-/

namespace A344100.P6985391856896469284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133670 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057608 (2 * n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344100.P6985391856896469284

/-! ## A344100.P7845474084679943115

`A057608(2*n+1)-∑[A003277(n+1)]`
-/

namespace A344100.P7845474084679943115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057608 (2 * n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344100.P7845474084679943115

/-!
# A344101: Expansion of Product_{k>=1} (1 + x^k)^binomial(k+5,6).

The programs for A344101, there is no canonical definition to state claims against.
-/

/-! ## A344101.P10508339807964705584

`or(or(1, n), A327330(2^n-1))`
-/

namespace A344101.P10508339807964705584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.lor 1 n : ℤ) (A327330 (2 ^ n - 1))

end

end A344101.P10508339807964705584

/-! ## A344101.P3643976212153902697

`or(n, A327330(A326518(n)))`
-/

namespace A344101.P3643976212153902697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A327330 (A326518 n).toNat)

end

end A344101.P3643976212153902697

/-!
# A344103: a(n) is the smallest number k >= 1 with exactly n divisors d, for which sigma(k) is divisible by d*sigma(d).

The programs for A344103, there is no canonical definition to state claims against.
-/

/-! ## A344103.P9168200549294556189

`A345237(A032502(n+1))`
-/

namespace A344103.P9168200549294556189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345237 (A032502 (n + 1)).toNat

end

end A344103.P9168200549294556189

/-!
# A344104: a(0) = 10; for n > 0, a(n) is a(n-1) multiplied by the number of 0's so far in the sequence.

The programs for A344104, there is no canonical definition to state claims against.
-/

/-! ## A344104.P8961253468813540931

`10*A005179(ceil(2^(n-1)))`
-/

namespace A344104.P8961253468813540931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A005179 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A344104.P8961253468813540931

/-! ## A344104.P16277070226705562516

`10*A299758(A152947(n+1))`
-/

namespace A344104.P16277070226705562516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A299758 (A152947 (n + 1)).toNat

end

end A344104.P16277070226705562516

/-! ## A344104.P4191703156170795879

`a(n-1)*eq[0, A308214(n+1)]` with `a(0)=10`
-/

namespace A344104.P4191703156170795879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308214 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [10] fun n a =>
  a (n - 1) * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344104.P4191703156170795879

/-! ## A344104.P9763730711947520749

`a(n-1)*lt[A000010(n+1), 5]` with `a(0)=10`
-/

namespace A344104.P9763730711947520749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.rec [10] fun n a =>
  a (n - 1) * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A344104.P9763730711947520749

/-!
# A344106: a(n) = n! * LaguerreL(n, -n+1).

The programs for A344106, there is no canonical definition to state claims against.
-/

/-! ## A344106.P8734457486216120782

`A289192(2*n²)`
-/

namespace A344106.P8734457486216120782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (2 * n ^ 2)

end

end A344106.P8734457486216120782

/-! ## A344106.P1590899529609380862

`or(A000007(n), A289192(A001105(n)))`
-/

namespace A344106.P1590899529609380862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A289192 (A001105 n).toNat)

end

end A344106.P1590899529609380862

/-! ## A344106.P2457748166855239787

`A007318(∑[n])*A289192(A001105(n))`
-/

namespace A344106.P2457748166855239787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A289192 (A001105 n).toNat

end

end A344106.P2457748166855239787

/-! ## A344106.P3286793416744294719

`A289192(A001105(n))/A289192(∑[n])`
-/

namespace A344106.P3286793416744294719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289192 (A001105 n).toNat : ℚ) / (A289192 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A344106.P3286793416744294719

/-! ## A344106.P3393945619544448196

`A289192(A001105(n))+A000007(n+1)`
-/

namespace A344106.P3393945619544448196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (A001105 n).toNat + A000007 (n + 1)

end

end A344106.P3393945619544448196

/-!
# A344107: a(n) = n! * LaguerreL(n, -n+2).

The programs for A344107, there is no canonical definition to state claims against.
-/

/-! ## A344107.P1224533835343950235

`A320140(round(2^∑[n]/3))-n-n`
-/

namespace A344107.P1224533835343950235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320140 (SequenceMachineLib.roundAway ((2 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3)).toNat - (n : ℤ) - (n : ℤ)

end

end A344107.P1224533835343950235

/-!
# A344108: Expansion of Product_{k>=1} 1 / (1 - x^k)^binomial(2*k,k).

The programs for A344108, there is no canonical definition to state claims against.
-/

/-! ## A344108.P14706419251080670020

`A194990(A196489(n+1))`
-/

namespace A344108.P14706419251080670020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194990 (A196489 (n + 1)).toNat

end

end A344108.P14706419251080670020

/-! ## A344108.P12927241463496396077

`A110655(A273623(n+1)+A005574(n+1))`
-/

namespace A344108.P12927241463496396077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A273623 (n + 1) + A005574 (n + 1)).toNat

end

end A344108.P12927241463496396077

/-!
# A344109: a(n) = (5*2^n + 7*(-1)^n)/3.

The programs for A344109, the canonical program `A344109.P17538809115289571830` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344109 has offset 0).

The definition of A344109 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*2^n+7*(-1)^n)/3` (program `A344109.P17118769499656270841`, by `A344109.P17118769499656270841.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A344109.P17538809115289571830

`a(n-1)+2*a(n-2)` with `a(0)=4, a(1)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A344109

/-- `a(n-1)+2*a(n-2)` -/
def P17538809115289571830.Spec : Prop :=
  ∀ n, (P17538809115289571830.a n : ℤ) = A344109 n

theorem P17538809115289571830.correct : P17538809115289571830.Spec := by
  intro n
  simp only [A344109]

end A344109

/-! ## A344109.P9629044316828253405

`A084214(n+1)+3*(-1)^n`
-/

namespace A344109.P9629044316828253405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084214 (n + 1) + 3 * (-1) ^ n

end

end A344109.P9629044316828253405

namespace A344109

/-- `A084214(n+1)+3*(-1)^n` -/
def P9629044316828253405.Spec : Prop :=
  ∀ n, P9629044316828253405.a n = A344109 n

end A344109

/-! ## A344109.P189963916470418260

`A001045(n+2)+A154879(n)`
-/

namespace A344109.P189963916470418260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 2) + A154879 n

end

end A344109.P189963916470418260

namespace A344109

/-- `A001045(n+2)+A154879(n)` -/
def P189963916470418260.Spec : Prop :=
  ∀ n, P189963916470418260.a n = A344109 n

end A344109

/-! ## A344109.P3311792629797491935

`2*A014551(n)-A001045(n)`
-/

namespace A344109.P3311792629797491935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014551 n - A001045 n

end

end A344109.P3311792629797491935

namespace A344109

/-- `2*A014551(n)-A001045(n)` -/
def P3311792629797491935.Spec : Prop :=
  ∀ n, P3311792629797491935.a n = A344109 n

end A344109

/-! ## A344109.P1397322643099319291

`5*A001045(n+1)-A084214(n+1)`
-/

namespace A344109.P1397322643099319291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A001045 (n + 1) - A084214 (n + 1)

end

end A344109.P1397322643099319291

namespace A344109

/-- `5*A001045(n+1)-A084214(n+1)` -/
def P1397322643099319291.Spec : Prop :=
  ∀ n, P1397322643099319291.a n = A344109 n

end A344109

/-! ## A344109.P17118769499656270841

`(5*2^n+7*(-1)^n)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344109.P17118769499656270841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 2 ^ n : ℤ) + 7 * (-1) ^ n : ℚ) / 3

end

end A344109.P17118769499656270841

namespace A344109

/-- `(5*2^n+7*(-1)^n)/3` -/
def P17118769499656270841.Spec : Prop :=
  ∀ n, P17118769499656270841.a n = (A344109 n : ℚ)

theorem P17118769499656270841.correct : P17118769499656270841.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A344109, Nat.add_sub_cancel, A344109.P17118769499656270841.a, A344109.P17538809115289571830.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A344109, Nat.add_sub_cancel, A344109.P17118769499656270841.a, A344109.P17538809115289571830.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A344109

/-! ## A344109.P2657975982955825375

`abs(A156550(n))-(-1)^n`
-/

namespace A344109.P2657975982955825375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156550 n| - (-1) ^ n

end

end A344109.P2657975982955825375

namespace A344109

/-- `abs(A156550(n))-(-1)^n` -/
def P2657975982955825375.Spec : Prop :=
  ∀ n, P2657975982955825375.a n = A344109 n

end A344109

/-! ## A344109.P17765890718720414032

`ogf((-4+3x)/(-1+x+2x^2))`
-/

namespace A344109.P17765890718720414032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -3] [1, -1, -2] n

end

end A344109.P17765890718720414032

namespace A344109

/-- `ogf((-4+3x)/(-1+x+2x^2))` -/
def P17765890718720414032.Spec : Prop :=
  ∀ n, P17765890718720414032.a n = A344109 n

end A344109

/-! ## A344109.P7294323527679658309

`a(n-1)+a(n-2)+a(n-2)` with `a(0)=4, a(1)=1`
-/

namespace A344109.P7294323527679658309
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 1] fun n a =>
  a (n - 1) + (a (n - 2) + a (n - 2))

end

end A344109.P7294323527679658309

namespace A344109

/-- `a(n-1)+a(n-2)+a(n-2)` -/
def P7294323527679658309.Spec : Prop :=
  ∀ n, (P7294323527679658309.a n : ℤ) = A344109 n

theorem P7294323527679658309.correct : P7294323527679658309.Spec := by
  intro n
  simp only [A344109, Nat.add_sub_cancel, A344109.P7294323527679658309.a, A344109.P17538809115289571830.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A344109

/-! ## A344109.P8072045513556966512

`2-(2*(1-a(n-2))-a(n-1))` with `a(0)=4, a(1)=1`
-/

namespace A344109.P8072045513556966512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n a =>
  2 - (2 * (1 - a (n - 2)) - a (n - 1))

end

end A344109.P8072045513556966512

namespace A344109

/-- `2-(2*(1-a(n-2))-a(n-1))` -/
def P8072045513556966512.Spec : Prop :=
  ∀ n, P8072045513556966512.a n = A344109 n

end A344109

/-! ## A344109.P5144894587641093125

`a(n-1)-a(n-2)/(1/2-1)` with `a(0)=4, a(1)=1`
-/

namespace A344109.P5144894587641093125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4, 1] fun n a =>
  a (n - 1) - a (n - 2) / ((1 : ℚ) / 2 - 1)

end

end A344109.P5144894587641093125

namespace A344109

/-- `a(n-1)-a(n-2)/(1/2-1)` -/
def P5144894587641093125.Spec : Prop :=
  ∀ n, P5144894587641093125.a n = (A344109 n : ℚ)

end A344109

/-! ## A344109.P5692166826162849678

`abs(5-A083581(n))`
-/

namespace A344109.P5692166826162849678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 - A083581 n|

end

end A344109.P5692166826162849678

namespace A344109

/-- `abs(5-A083581(n))` -/
def P5692166826162849678.Spec : Prop :=
  ∀ n, P5692166826162849678.a n = A344109 n

end A344109

/-! ## A344109.P10426984315203229394

`A171382(n)+2^n`
-/

namespace A344109.P10426984315203229394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171382 n + (2 ^ n : ℤ)

end

end A344109.P10426984315203229394

namespace A344109

/-- `A171382(n)+2^n` -/
def P10426984315203229394.Spec : Prop :=
  ∀ n, P10426984315203229394.a n = A344109 n

end A344109

/-! ## A344109.P4603613384411776738

`A155980(n+3)+2^n`
-/

namespace A344109.P4603613384411776738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155980 (n + 3) + (2 ^ n : ℤ)

end

end A344109.P4603613384411776738

namespace A344109

/-- `A155980(n+3)+2^n` -/
def P4603613384411776738.Spec : Prop :=
  ∀ n, P4603613384411776738.a n = A344109 n

end A344109

/-! ## A344109.P11069090389146633061

`A140657(n)+A014113(n)`
-/

namespace A344109.P11069090389146633061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140657 n + A014113 n

end

end A344109.P11069090389146633061

namespace A344109

/-- `A140657(n)+A014113(n)` -/
def P11069090389146633061.Spec : Prop :=
  ∀ n, P11069090389146633061.a n = A344109 n

end A344109

/-! ## A344109.P655989043985441495

`A269019(n)+A052953(n)`
-/

namespace A344109.P655989043985441495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269019 n + A052953 n

end

end A344109.P655989043985441495

namespace A344109

/-- `A269019(n)+A052953(n)` -/
def P655989043985441495.Spec : Prop :=
  ∀ n, P655989043985441495.a n = A344109 n

end A344109

/-! ## A344109.P15476325939811913625

`A280293(n)+A097072(n)`
-/

namespace A344109.P15476325939811913625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280293 n + A097072 n

end

end A344109.P15476325939811913625

namespace A344109

/-- `A280293(n)+A097072(n)` -/
def P15476325939811913625.Spec : Prop :=
  ∀ n, P15476325939811913625.a n = A344109 n

end A344109

/-! ## A344109.P17396888205710895967

`A283642(n)+A154879(n)`
-/

namespace A344109.P17396888205710895967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283642 n + A154879 n

end

end A344109.P17396888205710895967

namespace A344109

/-- `A283642(n)+A154879(n)` -/
def P17396888205710895967.Spec : Prop :=
  ∀ n, P17396888205710895967.a n = A344109 n

end A344109

/-! ## A344109.P3457607034041646988

`A115341(n+1)+A001045(n)`
-/

namespace A344109.P3457607034041646988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115341 (n + 1) + A001045 n

end

end A344109.P3457607034041646988

namespace A344109

/-- `A115341(n+1)+A001045(n)` -/
def P3457607034041646988.Spec : Prop :=
  ∀ n, P3457607034041646988.a n = A344109 n

end A344109

/-! ## A344109.P9027721564836219070

`A140657(n)+A078008(n+1)`
-/

namespace A344109.P9027721564836219070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140657 n + A078008 (n + 1)

end

end A344109.P9027721564836219070

namespace A344109

/-- `A140657(n)+A078008(n+1)` -/
def P9027721564836219070.Spec : Prop :=
  ∀ n, P9027721564836219070.a n = A344109 n

end A344109

/-!
# A344110: Triangle read by rows: T(n,k) = 2^(n*k), n >= 0, 0 <= k <= n.

The programs for A344110, the canonical program `A344110.P6857301136692459558` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344110 has offset 0).

The definition of A344110 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344110.P1456094125159803112

`2^A079904(n)`
-/

namespace A344110.P1456094125159803112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A079904 n : ℤ)

end

end A344110.P1456094125159803112

namespace A344110

/-- `2^A079904(n)` -/
def P1456094125159803112.Spec : Prop :=
  ∀ n, P1456094125159803112.a n = (A344110 n : ℚ)

end A344110

/-! ## A344110.P4779136945362462500

`2^(A144204(n+1)+1)`
-/

namespace A344110.P4779136945362462500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A144204 (n + 1) + 1 : ℤ)

end

end A344110.P4779136945362462500

namespace A344110

/-- `2^(A144204(n+1)+1)` -/
def P4779136945362462500.Spec : Prop :=
  ∀ n, P4779136945362462500.a n = (A344110 n : ℚ)

end A344110

/-! ## A344110.P5690284588882462763

`2^(A076110(n+1)-1)`
-/

namespace A344110.P5690284588882462763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A076110 (n + 1) - 1 : ℤ)

end

end A344110.P5690284588882462763

namespace A344110

/-- `2^(A076110(n+1)-1)` -/
def P5690284588882462763.Spec : Prop :=
  ∀ n, P5690284588882462763.a n = (A344110 n : ℚ)

end A344110

/-! ## A344110.P8408045428221277259

`A059268(n)^∑[char[∑[n+1]]]`
-/

namespace A344110.P8408045428221277259
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A344110.P8408045428221277259

namespace A344110

/-- `A059268(n)^∑[char[∑[n+1]]]` -/
def P8408045428221277259.Spec : Prop :=
  ∀ n, P8408045428221277259.a n = A344110 n

end A344110

/-! ## A344110.P11586612671537198356

`∏[char[∑[n+1]]+1]^A002262(n)`
-/

namespace A344110.P11586612671537198356
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (A002262 n : ℤ)

end

end A344110.P11586612671537198356

namespace A344110

/-- `∏[char[∑[n+1]]+1]^A002262(n)` -/
def P11586612671537198356.Spec : Prop :=
  ∀ n, P11586612671537198356.a n = (A344110 n : ℚ)

end A344110

/-! ## A344110.P6857301136692459558

`A000079(A079904(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A344110

/-- `A000079(A079904(n))` -/
def P6857301136692459558.Spec : Prop :=
  ∀ n, P6857301136692459558.a n = A344110 n

theorem P6857301136692459558.correct : P6857301136692459558.Spec := by
  intro n
  simp only [A344110]

end A344110

/-! ## A344110.P11999391969525339370

`A117401(A245300(n))`
-/

namespace A344110.P11999391969525339370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117401 (A245300 n).toNat

end

end A344110.P11999391969525339370

namespace A344110

/-- `A117401(A245300(n))` -/
def P11999391969525339370.Spec : Prop :=
  ∀ n, P11999391969525339370.a n = A344110 n

end A344110

/-! ## A344110.P3767932330891956046

`A011782(A076110(n+1))`
-/

namespace A344110.P3767932330891956046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A076110 (n + 1)).toNat

end

end A344110.P3767932330891956046

namespace A344110

/-- `A011782(A076110(n+1))` -/
def P3767932330891956046.Spec : Prop :=
  ∀ n, P3767932330891956046.a n = A344110 n

end A344110

/-! ## A344110.P17031262648195457791

`2^(A002262(n)*A003056(n))`
-/

namespace A344110.P17031262648195457791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n * A003056 n : ℤ)

end

end A344110.P17031262648195457791

namespace A344110

/-- `2^(A002262(n)*A003056(n))` -/
def P17031262648195457791.Spec : Prop :=
  ∀ n, P17031262648195457791.a n = (A344110 n : ℚ)

end A344110

/-! ## A344110.P5435372799100747877

`2^((A002024(n+1)-1)*A002262(n))`
-/

namespace A344110.P5435372799100747877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((A002024 (n + 1) - 1) * A002262 n : ℤ)

end

end A344110.P5435372799100747877

namespace A344110

/-- `2^((A002024(n+1)-1)*A002262(n))` -/
def P5435372799100747877.Spec : Prop :=
  ∀ n, P5435372799100747877.a n = (A344110 n : ℚ)

end A344110

/-! ## A344110.P9977663846988899529

`2^((A002260(n+1)-1)*A003056(n))`
-/

namespace A344110.P9977663846988899529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((A002260 (n + 1) - 1) * A003056 n : ℤ)

end

end A344110.P9977663846988899529

namespace A344110

/-- `2^((A002260(n+1)-1)*A003056(n))` -/
def P9977663846988899529.Spec : Prop :=
  ∀ n, P9977663846988899529.a n = (A344110 n : ℚ)

end A344110

/-! ## A344110.P6538915291124919998

`(2^(A057555(2*n+1)-1))^A003056(n)`
-/

namespace A344110.P6538915291124919998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A057555 (2 * n + 1) - 1 : ℤ)) ^ (A003056 n : ℤ)

end

end A344110.P6538915291124919998

namespace A344110

/-- `(2^(A057555(2*n+1)-1))^A003056(n)` -/
def P6538915291124919998.Spec : Prop :=
  ∀ n, P6538915291124919998.a n = (A344110 n : ℚ)

end A344110

/-! ## A344110.P425114188392602922

`A000079(A002262(n)*A003056(n))`
-/

namespace A344110.P425114188392602922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n * A003056 n).toNat

end

end A344110.P425114188392602922

namespace A344110

/-- `A000079(A002262(n)*A003056(n))` -/
def P425114188392602922.Spec : Prop :=
  ∀ n, P425114188392602922.a n = A344110 n

end A344110

/-! ## A344110.P639698283422419371

`A000225(A002262(n)*A003056(n))+1`
-/

namespace A344110.P639698283422419371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A002262 n * A003056 n).toNat + 1

end

end A344110.P639698283422419371

namespace A344110

/-- `A000225(A002262(n)*A003056(n))+1` -/
def P639698283422419371.Spec : Prop :=
  ∀ n, P639698283422419371.a n = A344110 n

end A344110

/-! ## A344110.P1647477578375936524

`A011782(A002260(n+1))^A003056(n)`
-/

namespace A344110.P1647477578375936524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (A002260 (n + 1)).toNat : ℚ) ^ (A003056 n : ℤ)

end

end A344110.P1647477578375936524

namespace A344110

/-- `A011782(A002260(n+1))^A003056(n)` -/
def P1647477578375936524.Spec : Prop :=
  ∀ n, P1647477578375936524.a n = (A344110 n : ℚ)

end A344110

/-! ## A344110.P12158232679088218823

`A000079((A002024(n+1)-1)*A002262(n))`
-/

namespace A344110.P12158232679088218823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 ((A002024 (n + 1) - 1) * A002262 n).toNat

end

end A344110.P12158232679088218823

namespace A344110

/-- `A000079((A002024(n+1)-1)*A002262(n))` -/
def P12158232679088218823.Spec : Prop :=
  ∀ n, P12158232679088218823.a n = A344110 n

end A344110

/-! ## A344110.P9417585047930754510

`A000079((A002260(n+1)-1)*A003056(n))`
-/

namespace A344110.P9417585047930754510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 ((A002260 (n + 1) - 1) * A003056 n).toNat

end

end A344110.P9417585047930754510

namespace A344110

/-- `A000079((A002260(n+1)-1)*A003056(n))` -/
def P9417585047930754510.Spec : Prop :=
  ∀ n, P9417585047930754510.a n = A344110 n

end A344110

/-! ## A344110.P5598914090048514115

`A000225(A003056(n)*A057554(Δ[n²]))+1`
-/

namespace A344110.P5598914090048514115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A003056 n * A057554 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat + 1

end

end A344110.P5598914090048514115

namespace A344110

/-- `A000225(A003056(n)*A057554(Δ[n²]))+1` -/
def P5598914090048514115.Spec : Prop :=
  ∀ n, P5598914090048514115.a n = A344110 n

end A344110

/-! ## A344110.P7254343401740027023

`(A020639(2*(n+1))^A002260(n+1)/2)^A003056(n)`
-/

namespace A344110.P7254343401740027023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A020639 (2 * (n + 1)) : ℚ) ^ (A002260 (n + 1) : ℤ) / 2) ^ (A003056 n : ℤ)

end

end A344110.P7254343401740027023

namespace A344110

/-- `(A020639(2*(n+1))^A002260(n+1)/2)^A003056(n)` -/
def P7254343401740027023.Spec : Prop :=
  ∀ n, P7254343401740027023.a n = (A344110 n : ℚ)

end A344110

/-! ## A344110.P5476231108188968308

`A000079(A002262(A025581(n)+n)*A002262(n))`
-/

namespace A344110.P5476231108188968308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 (A025581 n + (n : ℤ)).toNat * A002262 n).toNat

end

end A344110.P5476231108188968308

namespace A344110

/-- `A000079(A002262(A025581(n)+n)*A002262(n))` -/
def P5476231108188968308.Spec : Prop :=
  ∀ n, P5476231108188968308.a n = A344110 n

end A344110

/-!
# A344111: Decimal expansion of 4 + sqrt(3).

The programs for A344111, there is no canonical definition to state claims against.
-/

/-! ## A344111.P10895565146103634058

`A019973(n)+C(2, (n+1)²)`
-/

namespace A344111.P10895565146103634058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019973 (n + 1) + (Nat.choose 2 ((n + 1) ^ 2) : ℤ)

end

end A344111.P10895565146103634058

/-! ## A344111.P2267882861535674821

`A019973(n)+A000038(n)`
-/

namespace A344111.P2267882861535674821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019973 (n + 1) + A000038 n

end

end A344111.P2267882861535674821

/-! ## A344111.P6113283648294862015

`A165663(n)+A000007(n)`
-/

namespace A344111.P6113283648294862015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165663 (n + 1) + A000007 n

end

end A344111.P6113283648294862015

/-! ## A344111.P13149513295062509737

`or(A002194(n), A165663(n))`
-/

namespace A344111.P13149513295062509737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002194 (n + 1)) (A165663 (n + 1))

end

end A344111.P13149513295062509737

/-! ## A344111.P13451911179090127356

`A002194(n)+A000038(n)²`
-/

namespace A344111.P13451911179090127356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002194 (n + 1) + A000038 n ^ 2

end

end A344111.P13451911179090127356

/-! ## A344111.P12096722702348113832

`A019973(n)+2*A000007(n)`
-/

namespace A344111.P12096722702348113832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019973 (n + 1) + 2 * A000007 n

end

end A344111.P12096722702348113832

/-! ## A344111.P14645464262842380804

`2*A019973(n)-A002194(n)`
-/

namespace A344111.P14645464262842380804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019973 (n + 1) - A002194 (n + 1)

end

end A344111.P14645464262842380804

/-! ## A344111.P991513637976341031

`A002194(n)+4*A000007(n)`
-/

namespace A344111.P991513637976341031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002194 (n + 1) + 4 * A000007 n

end

end A344111.P991513637976341031

/-! ## A344111.P9181022374739022453

`A002194(A000038(n)+n)+A000038(n)`
-/

namespace A344111.P9181022374739022453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002194 ((A000038 n + (n : ℤ)).toNat + 1) + A000038 n

end

end A344111.P9181022374739022453

/-! ## A344111.P971440013249009830

`A002194(n)+A090654(n)-A010480(n)`
-/

namespace A344111.P971440013249009830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002194 (n + 1) + (A090654 (n + 1) - A010480 (n + 1))

end

end A344111.P971440013249009830

/-! ## A344111.P7470473303232174645

`A090388(n)+A165663(n)-A002194(n)`
-/

namespace A344111.P7470473303232174645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090388 (n + 1) + (A165663 (n + 1) - A002194 (n + 1))

end

end A344111.P7470473303232174645

/-! ## A344111.P5447069055916920718

`A002194(A152623(n+1)+n)`
-/

namespace A344111.P5447069055916920718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002194 ((A152623 (n + 1 + 1) + (n : ℤ)).toNat + 1)

end

end A344111.P5447069055916920718

/-! ## A344111.P7609674017554458836

`A002194(A020821(n+2)+n)`
-/

namespace A344111.P7609674017554458836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002194 ((A020821 (n + 2) + (n : ℤ)).toNat + 1)

end

end A344111.P7609674017554458836

/-! ## A344111.P1293312626115151957

`A002194(A301755(n+2)+n)`
-/

namespace A344111.P1293312626115151957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002194 ((A301755 (n + 2) + (n : ℤ)).toNat + 1)

end

end A344111.P1293312626115151957

/-! ## A344111.P6485714228173544856

`A019973(n)+A000122(A005117(n+1))`
-/

namespace A344111.P6485714228173544856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019973 (n + 1) + A000122 (A005117 (n + 1)).toNat

end

end A344111.P6485714228173544856

/-! ## A344111.P10095411516211148055

`A165663(n)+A008683(A000118(n))`
-/

namespace A344111.P10095411516211148055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165663 (n + 1) + A008683 (A000118 n).toNat

end

end A344111.P10095411516211148055

/-! ## A344111.P2591353563910063858

`A165663(n)-A008683(2*A000118(n))`
-/

namespace A344111.P2591353563910063858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165663 (n + 1) - A008683 (2 * A000118 n).toNat

end

end A344111.P2591353563910063858

/-! ## A344111.P7838255680985706174

`A002194(n)*A010137(A000040(n+1))`
-/

namespace A344111.P7838255680985706174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002194 (n + 1) * A010137 (A000040 (n + 1)).toNat

end

end A344111.P7838255680985706174

/-! ## A344111.P8674911058589131570

`or((A233583(n+1)-n)², A002194(n))`
-/

namespace A344111.P8674911058589131570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((A233583 (n + 1) - (n : ℤ)) ^ 2) (A002194 (n + 1))

end

end A344111.P8674911058589131570

/-! ## A344111.P1573485178804417855

`A019973(n)+A000122(n²+1)`
-/

namespace A344111.P1573485178804417855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019973 (n + 1) + A000122 (n ^ 2 + 1)

end

end A344111.P1573485178804417855

/-!
# A344112: Triangle read by rows: T(n,k) is the number of relations from an n-element set to a k-element set that are not functions.

The programs for A344112, the canonical program `A344112.P8908861104501591677` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344112 has offset 1).

The definition of A344112 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344112.P5938448789346184150

`A344110(comp[∑[n]])-A089072(n+1)`
-/

namespace A344112.P5938448789346184150
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344110 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A089072 (n + 1)

end

end A344112.P5938448789346184150

namespace A344112

/-- `A344110(comp[∑[n]])-A089072(n+1)` -/
def P5938448789346184150.Spec : Prop :=
  ∀ n, P5938448789346184150.a n = A344112 (n + 1)

end A344112

/-! ## A344112.P13232909510456936085

`2^A075362(n+1)-A089072(n+1)`
-/

namespace A344112.P13232909510456936085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A075362 (n + 1) : ℤ) - (A089072 (n + 1) : ℚ)

end

end A344112.P13232909510456936085

namespace A344112

/-- `2^A075362(n+1)-A089072(n+1)` -/
def P13232909510456936085.Spec : Prop :=
  ∀ n, P13232909510456936085.a n = (A344112 (n + 1) : ℚ)

end A344112

/-! ## A344112.P8908861104501591677

`A000079(A075362(n+1))-A089072(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A344112

/-- `A000079(A075362(n+1))-A089072(n+1)` -/
def P8908861104501591677.Spec : Prop :=
  ∀ n, P8908861104501591677.a n = A344112 (n + 1)

theorem P8908861104501591677.correct : P8908861104501591677.Spec := by
  intro n
  simp only [A344112, Nat.add_sub_cancel]

end A344112

/-! ## A344112.P15462649529961464684

`A344116(n+1)-A002260(n+1)*A101031(n)`
-/

namespace A344112.P15462649529961464684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344116 (n + 1) - A002260 (n + 1) * A101031 n

end

end A344112.P15462649529961464684

namespace A344112

/-- `A344116(n+1)-A002260(n+1)*A101031(n)` -/
def P15462649529961464684.Spec : Prop :=
  ∀ n, P15462649529961464684.a n = A344112 (n + 1)

end A344112

/-! ## A344112.P18350250624728043842

`A344116(n+1)-A101030(n+1)`
-/

namespace A344112.P18350250624728043842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344116 (n + 1) - A101030 (n + 1)

end

end A344112.P18350250624728043842

namespace A344112

/-- `A344116(n+1)-A101030(n+1)` -/
def P18350250624728043842.Spec : Prop :=
  ∀ n, P18350250624728043842.a n = A344112 (n + 1)

end A344112

/-!
# A344113: a(n) = 2^(n^2) - n^n.

The programs for A344113, the canonical program `A344113.P766628256830297063` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344113 has offset 1).

The definition of A344113 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+1)²-(n+1)^(n+1)` (program `A344113.P766628256830297063`, by `A344113.P766628256830297063.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A344113.P766628256830297063

`2^(n+1)²-(n+1)^(n+1)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A344113

/-- `2^(n+1)²-(n+1)^(n+1)` -/
def P766628256830297063.Spec : Prop :=
  ∀ n, P766628256830297063.a n = A344113 (n + 1)

theorem P766628256830297063.correct : P766628256830297063.Spec := by
  intro n
  simp only [A344113, Nat.add_sub_cancel]

end A344113

/-! ## A344113.P12537971694450779289

`A344112(∑[n+1])`
-/

namespace A344113.P12537971694450779289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344112 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A344113.P12537971694450779289

namespace A344113

/-- `A344112(∑[n+1])` -/
def P12537971694450779289.Spec : Prop :=
  ∀ n, P12537971694450779289.a n = A344113 (n + 1)

end A344113

/-! ## A344113.P5966638615537455030

`∑[-Δ[n^n-A000079(n²)]]`
-/

namespace A344113.P5966638615537455030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) - A000079 (n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344113.P5966638615537455030

namespace A344113

/-- `∑[-Δ[n^n-A000079(n²)]]` -/
def P5966638615537455030.Spec : Prop :=
  ∀ n, P5966638615537455030.a n = A344113 (n + 1)

end A344113

/-! ## A344113.P17787773846581603572

`record[A344112(A038722(n+1))]`
-/

namespace A344113.P17787773846581603572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344112 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344113.P17787773846581603572

namespace A344113

/-- `record[A344112(A038722(n+1))]` -/
def P17787773846581603572.Spec : Prop :=
  ∀ n, P17787773846581603572.a n = A344113 (n + 1)

end A344113

/-! ## A344113.P12893872459196970310

`record[A119879(n)*A344112(n+1)]`
-/

namespace A344113.P12893872459196970310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119879 n * A344112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344113.P12893872459196970310

namespace A344113

/-- `record[A119879(n)*A344112(n+1)]` -/
def P12893872459196970310.Spec : Prop :=
  ∀ n, P12893872459196970310.a n = A344113 (n + 1)

end A344113

/-!
# A344114: a(n) = 2^(n^2) - n!.

The programs for A344114, the canonical program `A344114.P11437489847256377705` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344114 has offset 1).

The definition of A344114 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+1)²-(n+1)!` (program `A344114.P11437489847256377705`, by `A344114.P11437489847256377705.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A344114.P11437489847256377705

`2^(n+1)²-(n+1)!`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A344114

/-- `2^(n+1)²-(n+1)!` -/
def P11437489847256377705.Spec : Prop :=
  ∀ n, P11437489847256377705.a n = A344114 (n + 1)

theorem P11437489847256377705.correct : P11437489847256377705.Spec := by
  intro n
  simp only [A344114, Nat.add_sub_cancel]

end A344114

/-! ## A344114.P14404780401481758934

`2^(n+1)²-∏[n+1]`
-/

namespace A344114.P14404780401481758934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) ^ 2 : ℤ) - ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A344114.P14404780401481758934

namespace A344114

/-- `2^(n+1)²-∏[n+1]` -/
def P14404780401481758934.Spec : Prop :=
  ∀ n, P14404780401481758934.a n = A344114 (n + 1)

theorem P14404780401481758934.correct : P14404780401481758934.Spec := by
  intro n
  simp only [A344114, Nat.add_sub_cancel, A344114.P14404780401481758934.f1, A344114.P14404780401481758934.a, A344114.P11437489847256377705.a, SequenceMachineLib.memo_apply]
  try simp

end A344114

/-! ## A344114.P4903976683516516452

`abs((n+1)!-∏[2*4^n])`
-/

namespace A344114.P4903976683516516452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.factorial (n + 1) : ℤ) - ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|

end

end A344114.P4903976683516516452

namespace A344114

/-- `abs((n+1)!-∏[2*4^n])` -/
def P4903976683516516452.Spec : Prop :=
  ∀ n, P4903976683516516452.a n = A344114 (n + 1)

end A344114

/-! ## A344114.P8662224867519435646

`abs(2^∑[2*n+1]-(n+1)!)`
-/

namespace A344114.P8662224867519435646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - (Nat.factorial (n + 1) : ℤ)|

end

end A344114.P8662224867519435646

namespace A344114

/-- `abs(2^∑[2*n+1]-(n+1)!)` -/
def P8662224867519435646.Spec : Prop :=
  ∀ n, P8662224867519435646.a n = A344114 (n + 1)

end A344114

/-! ## A344114.P16695587182387869186

`A344115(∑[n+1])`
-/

namespace A344114.P16695587182387869186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344115 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A344114.P16695587182387869186

namespace A344114

/-- `A344115(∑[n+1])` -/
def P16695587182387869186.Spec : Prop :=
  ∀ n, P16695587182387869186.a n = A344114 (n + 1)

end A344114

/-!
# A344115: Triangle read by rows: T(n,k) is the number of relations from an n-element set to a k-element set that are not one-to-one functions.

The programs for A344115, the canonical program `A344115.P8807128078899641983` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344115 has offset 1).

The definition of A344115 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344115.P4158122232909327941

`A344110(comp[∑[n]])-A068424(n+1)`
-/

namespace A344115.P4158122232909327941
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344110 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A068424 (n + 1)

end

end A344115.P4158122232909327941

namespace A344115

/-- `A344110(comp[∑[n]])-A068424(n+1)` -/
def P4158122232909327941.Spec : Prop :=
  ∀ n, P4158122232909327941.a n = A344115 (n + 1)

end A344115

/-! ## A344115.P1109552524707865798

`2^A075362(n+1)-A068424(n+1)`
-/

namespace A344115.P1109552524707865798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A075362 (n + 1) : ℤ) - (A068424 (n + 1) : ℚ)

end

end A344115.P1109552524707865798

namespace A344115

/-- `2^A075362(n+1)-A068424(n+1)` -/
def P1109552524707865798.Spec : Prop :=
  ∀ n, P1109552524707865798.a n = (A344115 (n + 1) : ℚ)

end A344115

/-! ## A344115.P8807128078899641983

`A000079(A075362(n+1))-A068424(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A344115

/-- `A000079(A075362(n+1))-A068424(n+1)` -/
def P8807128078899641983.Spec : Prop :=
  ∀ n, P8807128078899641983.a n = A344115 (n + 1)

theorem P8807128078899641983.correct : P8807128078899641983.Spec := by
  intro n
  simp only [A344115, Nat.add_sub_cancel]

end A344115

/-! ## A344115.P10041395553136962290

`A140513(n)^A002260(n+1)-A068424(n+1)`
-/

namespace A344115.P10041395553136962290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140513 n : ℚ) ^ (A002260 (n + 1) : ℤ) - (A068424 (n + 1) : ℚ)

end

end A344115.P10041395553136962290

namespace A344115

/-- `A140513(n)^A002260(n+1)-A068424(n+1)` -/
def P10041395553136962290.Spec : Prop :=
  ∀ n, P10041395553136962290.a n = (A344115 (n + 1) : ℚ)

end A344115

/-! ## A344115.P15497221682349462319

`A019538(n+1)+A344116(n+1)-A068424(n+1)`
-/

namespace A344115.P15497221682349462319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019538 (n + 1) + (A344116 (n + 1) - A068424 (n + 1))

end

end A344115.P15497221682349462319

namespace A344115

/-- `A019538(n+1)+A344116(n+1)-A068424(n+1)` -/
def P15497221682349462319.Spec : Prop :=
  ∀ n, P15497221682349462319.a n = A344115 (n + 1)

end A344115

/-!
# A344116: Triangle read by rows: T(n,k) is the number of relations from an n-element set to a k-element set that are not onto functions.

The programs for A344116, there is no canonical definition to state claims against.
-/

/-! ## A344116.P12174741598676849821

`A000079(A075362(n+1))-A019538(n+1)`
-/

namespace A344116.P12174741598676849821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A075362 (n + 1)).toNat - A019538 (n + 1)

end

end A344116.P12174741598676849821

/-! ## A344116.P11122217395271221252

`A344110(A014132(n+1))-A019538(n+1)`
-/

namespace A344116.P11122217395271221252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344110 (A014132 (n + 1)).toNat - A019538 (n + 1)

end

end A344116.P11122217395271221252

/-! ## A344116.P4631445710894234983

`A089072(n+1)+A344112(n+1)-A019538(n+1)`
-/

namespace A344116.P4631445710894234983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089072 (n + 1) + (A344112 (n + 1) - A019538 (n + 1))

end

end A344116.P4631445710894234983

/-! ## A344116.P68166105704336779

`A344112(n+1)+A101030(n+1)`
-/

namespace A344116.P68166105704336779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344112 (n + 1) + A101030 (n + 1)

end

end A344116.P68166105704336779

/-! ## A344116.P7454309161513806901

`A101030(n+1)+2^A075362(n+1)-A089072(n+1)`
-/

namespace A344116.P7454309161513806901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101030 (n + 1) : ℚ) + ((2 : ℚ) ^ (A075362 (n + 1) : ℤ) - (A089072 (n + 1) : ℚ))

end

end A344116.P7454309161513806901

/-!
# A344117: Number of twin prime pairs in the range (6*n + 1, 6*(n + m) + 1], where m is the number of twin prime pairs, 6*k +- 1 for k = 1, 2, ..., n.

The programs for A344117, there is no canonical definition to state claims against.
-/

/-! ## A344117.P15886431034084085497

`A124765(A320189(n+1)+A112088(n+1))`
-/

namespace A344117.P15886431034084085497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A320189 (n + 1) + A112088 (n + 1)).toNat

end

end A344117.P15886431034084085497

/-!
# A344118: Triangle of numbers T(n,k) = floor((A089072(n,k)-A019538(n,k))/A019538(n,k)) read by rows, n>=1, 1<=k<=n.

The programs for A344118, there is no canonical definition to state claims against.
-/

/-! ## A344118.P544141683164459184

`floor(A076014(n+1)/abs(A163626(n)))-1`
-/

namespace A344118.P544141683164459184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A076014 (n + 1) : ℚ) / (|A163626 n| : ℚ)⌋ - 1

end

end A344118.P544141683164459184

/-! ## A344118.P17395044123359563849

`floor(A076014(n+1)/A028246(n+1))-1`
-/

namespace A344118.P17395044123359563849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A076014 (n + 1) : ℚ) / (A028246 (n + 1) : ℚ)⌋ - 1

end

end A344118.P17395044123359563849

/-! ## A344118.P3747355450520088323

`floor(A101031(n)/A028246(n+1))`
-/

namespace A344118.P3747355450520088323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A101031 n : ℚ) / (A028246 (n + 1) : ℚ)⌋

end

end A344118.P3747355450520088323

/-! ## A344118.P12921938830061103004

`floor(A002260(n+1)/A019538(n+1)*A101031(n))`
-/

namespace A344118.P12921938830061103004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002260 (n + 1) : ℚ) / (A019538 (n + 1) : ℚ) * (A101031 n : ℚ)⌋

end

end A344118.P12921938830061103004

/-! ## A344118.P10775409450185691090

`floor((A002262(n)+1)*A101031(n)/A019538(n+1))`
-/

namespace A344118.P10775409450185691090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A002262 n + 1) * A101031 n : ℚ) / (A019538 (n + 1) : ℚ)⌋

end

end A344118.P10775409450185691090

/-! ## A344118.P12767282950686109990

`floor((A144328(n+1)+1)*A101031(n)/A019538(n+1))`
-/

namespace A344118.P12767282950686109990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A144328 (n + 1) + 1) * A101031 n : ℚ) / (A019538 (n + 1) : ℚ)⌋

end

end A344118.P12767282950686109990

/-!
# A344120: For n >= 0, let N = 243 + n*343, let v(x) be the maximum power of 7 dividing x, and let p(N) be the partition function A000041(N). If v(p(N)) >= v(24*N-1) then a(n)=1, otherwise a(n)=0.

The programs for A344120, there is no canonical definition to state claims against.
-/

/-! ## A344120.P1568793821449030273

`15%gcd(A051222(n+1), A068921(n))`
-/

namespace A344120.P1568793821449030273
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 % Int.gcd (A051222 (n + 1)) (A068921 n)

end

end A344120.P1568793821449030273

/-! ## A344120.P2203605388073984656

`49%gcd(2*A057979(n), A086450(n))`
-/

namespace A344120.P2203605388073984656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49 % Int.gcd (2 * A057979 n) (A086450 n)

end

end A344120.P2203605388073984656

/-! ## A344120.P10348315086197748152

`A021913(gcd(A051222(n+1), A068921(n)))`
-/

namespace A344120.P10348315086197748152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (Int.gcd (A051222 (n + 1)) (A068921 n))

end

end A344120.P10348315086197748152

/-! ## A344120.P2949893230570718817

`A057979(gcd(2*A057979(n), A086450(n)))`
-/

namespace A344120.P2949893230570718817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (Int.gcd (2 * A057979 n) (A086450 n))

end

end A344120.P2949893230570718817

/-! ## A344120.P7122232208379142540

`A239508(A239512(n+1))-A011657(n+3)`
-/

namespace A344120.P7122232208379142540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239508 (A239512 (n + 1)).toNat - A011657 (n + 3)

end

end A344120.P7122232208379142540

/-! ## A344120.P14602156974643945873

`(A196382(n+2)+A010106(A331851(n)))%2`
-/

namespace A344120.P14602156974643945873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196382 (n + 2) + A010106 (A331851 n).toNat) 2

end

end A344120.P14602156974643945873

/-! ## A344120.P7646626354560190090

`A184491(n+1)%2`
-/

namespace A344120.P7646626354560190090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184491 (n + 1)) 2

end

end A344120.P7646626354560190090

/-! ## A344120.P5012054496911239152

`floor(atan(∑[n²]%7))^A031501(n)`
-/

namespace A344120.P5012054496911239152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊Real.arctan (((∑ j ∈ Finset.range (n + 1), f1 j) % 7 : ℕ) : ℝ)⌋ : ℚ) ^ (A031501 n : ℤ)

end

end A344120.P5012054496911239152

/-! ## A344120.P6463774795268521785

`A288317(A016885(n))%2`
-/

namespace A344120.P6463774795268521785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288317 (A016885 n).toNat) 2

end

end A344120.P6463774795268521785

/-! ## A344120.P15317783788124224510

`(A020721(n+2)*A272409(n+1))%2`
-/

namespace A344120.P15317783788124224510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020721 (n + 2) * A272409 (n + 1)) 2

end

end A344120.P15317783788124224510

/-!
# A344121: a(n) is the multiplicative inverse of 24 (mod 7^n).

The programs for A344121, the canonical program `A344121.P6184258589641421674` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344121 has offset 1).

The definition of A344121 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344121.P6184258589641421674

`∑[(Δ[A042948(n)]+3)*7^n]+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A344121

/-- `∑[(Δ[A042948(n)]+3)*7^n]+1` -/
def P6184258589641421674.Spec : Prop :=
  ∀ n, P6184258589641421674.a n = A344121 (n + 1)

theorem P6184258589641421674.correct : P6184258589641421674.Spec := by
  intro n
  simp only [A344121, Nat.add_sub_cancel]

end A344121

/-! ## A344121.P14889547817714482522

`∪[49*a(n-1)-2, A327582(n)]` with `a(0)=47`
-/

namespace A344121.P14889547817714482522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [47] fun n f1 =>
  49 * f1 (n - 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327582 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344121.P14889547817714482522

namespace A344121

/-- `∪[49*a(n-1)-2, A327582(n)]` -/
def P14889547817714482522.Spec : Prop :=
  ∀ n, (P14889547817714482522.a n : ℤ) = A344121 (n + 1)

end A344121

/-! ## A344121.P4378114987949202459

`∪[A052463(n+2), A327582(n)]`
-/

namespace A344121.P4378114987949202459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052463 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327582 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344121.P4378114987949202459

namespace A344121

/-- `∪[A052463(n+2), A327582(n)]` -/
def P4378114987949202459.Spec : Prop :=
  ∀ n, (P4378114987949202459.a n : ℤ) = A344121 (n + 1)

end A344121

/-!
# A344122: Triangle T(n,k) read by rows in which n-th row gives all tree-able degree sequences S of n nodes encoded as Product_{k in S} prime(k); n >= 2, 1<= k <= A000041(n-2).

The programs for A344122, there is no canonical definition to state claims against.
-/

/-! ## A344122.P17529858354421200389

`A381699(A388425(n+1))`
-/

namespace A344122.P17529858354421200389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381699 (A388425 (n + 1)).toNat

end

end A344122.P17529858354421200389

/-!
# A344126: Coordination sequence for the hypertriangular lattice.

The programs for A344126, there is no canonical definition to state claims against.
-/

/-! ## A344126.P17277807427591316231

`A038620(2*n)`
-/

namespace A344126.P17277807427591316231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038620 (2 * n)

end

end A344126.P17277807427591316231

/-! ## A344126.P8362450656446990268

`record[A038620(and(n, n+1))]`
-/

namespace A344126.P8362450656446990268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038620 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344126.P8362450656446990268

/-! ## A344126.P594910004047345662

`lcm(char[1]+1, A038620(A005843(n)))`
-/

namespace A344126.P594910004047345662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ) (A038620 (A005843 n).toNat)

end

end A344126.P594910004047345662

/-! ## A344126.P8991957815978657142

`record[A038620(n-A007814(n+1))]`
-/

namespace A344126.P8991957815978657142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038620 ((n : ℤ) - A007814 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344126.P8991957815978657142

/-! ## A344126.P15951600282391955448

`record[A038620(n)/A038712(n+1)]`
-/

namespace A344126.P15951600282391955448
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038620 n : ℚ) / (A038712 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344126.P15951600282391955448

/-! ## A344126.P7813964706394479211

`record[gcd(A007814(n+1), A038620(n))]`
-/

namespace A344126.P7813964706394479211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (n + 1)) (A038620 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344126.P7813964706394479211

/-! ## A344126.P9083209987539097895

`record[A038620(n)^(A004442(n)-n)]`
-/

namespace A344126.P9083209987539097895
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038620 n : ℚ) ^ (A004442 n - (n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344126.P9083209987539097895

/-! ## A344126.P3135779025404426904

`record[A038620(n)/A001511(n+1)²]`
-/

namespace A344126.P3135779025404426904
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038620 n : ℚ) / (A001511 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344126.P3135779025404426904

/-! ## A344126.P9634787024354864988

`record[A038620(n+1-A001511(n+1))]`
-/

namespace A344126.P9634787024354864988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038620 ((n + 1 : ℤ) - A001511 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344126.P9634787024354864988

/-! ## A344126.P990591558599567820

`A008130(2*n)+A008254(2*n)-(2*n)²`
-/

namespace A344126.P990591558599567820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008130 (2 * n) + (A008254 (2 * n) - ((2 * n) ^ 2 : ℤ))

end

end A344126.P990591558599567820

/-! ## A344126.P10192887513827810712

`record[A038620(n)/A038620(A007814(n+1)²)]`
-/

namespace A344126.P10192887513827810712
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038620 n : ℚ) / (A038620 (A007814 (n + 1) ^ 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344126.P10192887513827810712

/-!
# A344128: a(n) = Sum_{k=1..n} k * floor(n/k^2).

The programs for A344128, the canonical program `A344128.P7684206442371176252` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344128 has offset 1).

The definition of A344128 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344128.P2076093812112763575

`∑[∑{d}[∏{p}[n+1, #^val(n+1, #²)], #]]`
-/

namespace A344128.P2076093812112763575
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344128.P2076093812112763575

namespace A344128

/-- `∑[∑{d}[∏{p}[n+1, #^val(n+1, #²)], #]]` -/
def P2076093812112763575.Spec : Prop :=
  ∀ n, (P2076093812112763575.a n : ℤ) = A344128 (n + 1)

end A344128

/-! ## A344128.P18216114037381472726

`∑{d}[∏{p}[n+1, #^val(n+1, #²)], #]+a(n-1)` with `a(0)=1`
-/

namespace A344128.P18216114037381472726
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), d + a (n - 1)

end

end A344128.P18216114037381472726

namespace A344128

/-- `∑{d}[∏{p}[n+1, #^val(n+1, #²)], #]+a(n-1)` -/
def P18216114037381472726.Spec : Prop :=
  ∀ n, (P18216114037381472726.a n : ℤ) = A344128 (n + 1)

end A344128

/-! ## A344128.P15596991923487474379

`∑[A069290(n+1)]`
-/

namespace A344128.P15596991923487474379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344128.P15596991923487474379

namespace A344128

/-- `∑[A069290(n+1)]` -/
def P15596991923487474379.Spec : Prop :=
  ∀ n, P15596991923487474379.a n = A344128 (n + 1)

end A344128

/-! ## A344128.P14577569594358758636

`∑[∑{d}[A000188(n+1), #]]`
-/

namespace A344128.P14577569594358758636
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344128.P14577569594358758636

namespace A344128

/-- `∑[∑{d}[A000188(n+1), #]]` -/
def P14577569594358758636.Spec : Prop :=
  ∀ n, (P14577569594358758636.a n : ℤ) = A344128 (n + 1)

end A344128

/-! ## A344128.P6254197709813288527

`∑[∑{d}[n+1, A037213(#)]]`
-/

namespace A344128.P6254197709813288527
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A037213 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344128.P6254197709813288527

namespace A344128

/-- `∑[∑{d}[n+1, A037213(#)]]` -/
def P6254197709813288527.Spec : Prop :=
  ∀ n, P6254197709813288527.a n = A344128 (n + 1)

end A344128

/-! ## A344128.P5404900652305120316

`∑[A000203(∏{p}[n+1, #^val(n+1, #²)])]`
-/

namespace A344128.P5404900652305120316
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344128.P5404900652305120316

namespace A344128

/-- `∑[A000203(∏{p}[n+1, #^val(n+1, #²)])]` -/
def P5404900652305120316.Spec : Prop :=
  ∀ n, P5404900652305120316.a n = A344128 (n + 1)

end A344128

/-! ## A344128.P7684206442371176252

`∑[A000203(n+1)-∑{d}[n+1, #%((n+1)%#²+1)]]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A344128

/-- `∑[A000203(n+1)-∑{d}[n+1, #%((n+1)%#²+1)]]` -/
def P7684206442371176252.Spec : Prop :=
  ∀ n, P7684206442371176252.a n = A344128 (n + 1)

theorem P7684206442371176252.correct : P7684206442371176252.Spec := by
  intro n
  simp only [A344128, Nat.add_sub_cancel]

end A344128

/-! ## A344128.P11624270771499147552

`∑[A000203(A000188(n+1))]`
-/

namespace A344128.P11624270771499147552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000188 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344128.P11624270771499147552

namespace A344128

/-- `∑[A000203(A000188(n+1))]` -/
def P11624270771499147552.Spec : Prop :=
  ∀ n, P11624270771499147552.a n = A344128 (n + 1)

end A344128

/-! ## A344128.P13463658133689935382

`∑[A000203(sqrt(A008833(n+1)))]`
-/

namespace A344128.P13463658133689935382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (Real.sqrt (A008833 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344128.P13463658133689935382

namespace A344128

/-- `∑[A000203(sqrt(A008833(n+1)))]` -/
def P13463658133689935382.Spec : Prop :=
  ∀ n, P13463658133689935382.a n = A344128 (n + 1)

end A344128

/-! ## A344128.P1431549818047770198

`∑[A000203(A057918(n+1)+1)]`
-/

namespace A344128.P1431549818047770198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A057918 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344128.P1431549818047770198

namespace A344128

/-- `∑[A000203(A057918(n+1)+1)]` -/
def P1431549818047770198.Spec : Prop :=
  ∀ n, P1431549818047770198.a n = A344128 (n + 1)

end A344128

/-! ## A344128.P14793655141889581710

`∑[A333844((n+1)²)]`
-/

namespace A344128.P14793655141889581710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333844 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344128.P14793655141889581710

namespace A344128

/-- `∑[A333844((n+1)²)]` -/
def P14793655141889581710.Spec : Prop :=
  ∀ n, P14793655141889581710.a n = A344128 (n + 1)

end A344128

/-!
# A344129: The minimum number of steps required for a knight, starting at the central square numbered 1, to reach the square numbered n on a square-spiral numbered board.

The programs for A344129, there is no canonical definition to state claims against.
-/

/-! ## A344129.P17543465385586343416

`A255309(16^A214526(n+1))`
-/

namespace A344129.P17543465385586343416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255309 (SequenceMachineLib.roundAway ((16 : ℚ) ^ (A214526 (n + 1) : ℤ))).toNat

end

end A344129.P17543465385586343416

/-! ## A344129.P16153796762060416986

`A222220(A214526(n+1))%A134644(2*(n+2))`
-/

namespace A344129.P16153796762060416986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222220 (A214526 (n + 1)).toNat) (A134644 (2 * (n + 2)))

end

end A344129.P16153796762060416986

/-! ## A344129.P9891249229803331541

`A159966(A214526(n+1))+A000038(A006094(n+1))`
-/

namespace A344129.P9891249229803331541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159966 (A214526 (n + 1)).toNat + A000038 (A006094 (n + 1)).toNat

end

end A344129.P9891249229803331541

/-! ## A344129.P15424668729037727725

`A159966(A214526(n+1))%A000005(A047982(n))`
-/

namespace A344129.P15424668729037727725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159966 (A214526 (n + 1)).toNat) (A000005 (A047982 n).toNat)

end

end A344129.P15424668729037727725

/-! ## A344129.P7530173578962066024

`A062756(n*A121764(3*n+2))`
-/

namespace A344129.P7530173578962066024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 ((n : ℤ) * A121764 (3 * n + 2)).toNat

end

end A344129.P7530173578962066024

/-!
# A344130: Expansion of Product_{k>=1} (1 + x^k)^binomial(2*k,k).

The programs for A344130, there is no canonical definition to state claims against.
-/

/-! ## A344130.P14482371391793875260

`A136548(A030315(n)+(A081294(n+1)-A000984(n+1))/2)+n`
-/

namespace A344130.P14482371391793875260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (SequenceMachineLib.roundAway ((A030315 n : ℚ) + (A081294 (n + 1) - A000984 (n + 1) : ℚ) / 2)).toNat + (n : ℤ)

end

end A344130.P14482371391793875260

/-! ## A344130.P3135764177759169700

`Δ[A008612(Δ[A150244(n)])]`
-/

namespace A344130.P3135764177759169700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150244 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A344130.P3135764177759169700

/-!
# A344132: a(n) = Sum_{i|n, j|n, k|n} gcd(i,j,k).

The programs for A344132, the canonical program `A344132.P10624915225018026174` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344132 has offset 1).

The definition of A344132 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344132.P10624915225018026174

`∑{d}[n+1, #*A070919((n+1)/#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A344132

/-- `∑{d}[n+1, #*A070919((n+1)/#)]` -/
def P10624915225018026174.Spec : Prop :=
  ∀ n, P10624915225018026174.a n = A344132 (n + 1)

theorem P10624915225018026174.correct : P10624915225018026174.Spec := by
  intro n
  simp only [A344132, Nat.add_sub_cancel]

end A344132

/-! ## A344132.P14555276422590041433

`∑{d}[n+1, A007431(#)*A097988((n+1)/#)]`
-/

namespace A344132.P14555276422590041433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A097988 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344132.P14555276422590041433

namespace A344132

/-- `∑{d}[n+1, A007431(#)*A097988((n+1)/#)]` -/
def P14555276422590041433.Spec : Prop :=
  ∀ n, P14555276422590041433.a n = A344132 (n + 1)

end A344132

/-! ## A344132.P11703257190937945056

`∑{d}[n+1, A000203(#)*A247513((n+1)/#)]`
-/

namespace A344132.P11703257190937945056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A247513 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344132.P11703257190937945056

namespace A344132

/-- `∑{d}[n+1, A000203(#)*A247513((n+1)/#)]` -/
def P11703257190937945056.Spec : Prop :=
  ∀ n, P11703257190937945056.a n = A344132 (n + 1)

end A344132

/-! ## A344132.P9167751664182813629

`∑{d}[n+1, A000010(#)*A319089((n+1)/#)]`
-/

namespace A344132.P9167751664182813629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A319089 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344132.P9167751664182813629

namespace A344132

/-- `∑{d}[n+1, A000010(#)*A319089((n+1)/#)]` -/
def P9167751664182813629.Spec : Prop :=
  ∀ n, P9167751664182813629.a n = A344132 (n + 1)

end A344132

/-! ## A344132.P14193439650679132343

`∑{d}[n+1, A008683(#)*A344082((n+1)/#)]`
-/

namespace A344132.P14193439650679132343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A344082 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344132.P14193439650679132343

namespace A344132

/-- `∑{d}[n+1, A008683(#)*A344082((n+1)/#)]` -/
def P14193439650679132343.Spec : Prop :=
  ∀ n, P14193439650679132343.a n = A344132 (n + 1)

end A344132

/-!
# A344134: a(n) = Sum_{i|n, j|n, k|n} lcm(i,j,k).

The programs for A344134, the canonical program `A344134.P1833307381121386491` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344134 has offset 1).

The definition of A344134 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344134.P1833307381121386491

`∑{d}[n+1, #*A070919(#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A344134

/-- `∑{d}[n+1, #*A070919(#)]` -/
def P1833307381121386491.Spec : Prop :=
  ∀ n, P1833307381121386491.a n = A344134 (n + 1)

theorem P1833307381121386491.correct : P1833307381121386491.Spec := by
  intro n
  simp only [A344134, Nat.add_sub_cancel]

end A344134

/-!
# A344136: Number of linear intervals in the Tamari lattices.

The programs for A344136, the canonical program `A344136.P13047565360050853218` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344136 has offset 1).

The definition of A344136 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A344136.P13047565360050853218

`a(n-1)*2*(2*(n+1)-1)*((n+1)²-(n+1)+2)/((n+3)*((n+1)²-3*(n+1)+4))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A344136

/-- `a(n-1)*2*(2*(n+1)-1)*((n+1)²-(n+1)+2)/((n+3)*((n+1)²-3*(n+1)+4))` -/
def P13047565360050853218.Spec : Prop :=
  ∀ n, P13047565360050853218.a n = (A344136 (n + 1) : ℚ)

end A344136

/-! ## A344136.P9980595951335920740

`A265612(n)+Δ[A014137(n)]`
-/

namespace A344136.P9980595951335920740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265612 n + (f1 (n + 1) - f1 n)

end

end A344136.P9980595951335920740

namespace A344136

/-- `A265612(n)+Δ[A014137(n)]` -/
def P9980595951335920740.Spec : Prop :=
  ∀ n, P9980595951335920740.a n = A344136 (n + 1)

end A344136

/-! ## A344136.P1652834400593529933

`A265612(n)+A000108(n+1)`
-/

namespace A344136.P1652834400593529933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265612 n + A000108 (n + 1)

end

end A344136.P1652834400593529933

namespace A344136

/-- `A265612(n)+A000108(n+1)` -/
def P1652834400593529933.Spec : Prop :=
  ∀ n, P1652834400593529933.a n = A344136 (n + 1)

end A344136

/-! ## A344136.P4664834897933733443

`A024482(n+2)-A070031(n)`
-/

namespace A344136.P4664834897933733443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024482 (n + 2) - A070031 n

end

end A344136.P4664834897933733443

namespace A344136

/-- `A024482(n+2)-A070031(n)` -/
def P4664834897933733443.Spec : Prop :=
  ∀ n, P4664834897933733443.a n = A344136 (n + 1)

end A344136

/-! ## A344136.P17769714949307493222

`A026012(n)+n*A071725(n)`
-/

namespace A344136.P17769714949307493222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n + (n : ℤ) * A071725 n

end

end A344136.P17769714949307493222

namespace A344136

/-- `A026012(n)+n*A071725(n)` -/
def P17769714949307493222.Spec : Prop :=
  ∀ n, P17769714949307493222.a n = A344136 (n + 1)

end A344136

/-! ## A344136.P10794023194727032707

`A000245(n+1)/(n+1)*A000124(n)`
-/

namespace A344136.P10794023194727032707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000245 (n + 1) : ℚ) / (n + 1 : ℚ) * (A000124 n : ℚ)

end

end A344136.P10794023194727032707

namespace A344136

/-- `A000245(n+1)/(n+1)*A000124(n)` -/
def P10794023194727032707.Spec : Prop :=
  ∀ n, P10794023194727032707.a n = (A344136 (n + 1) : ℚ)

end A344136

/-! ## A344136.P776488694524062860

`A071724(n+1)/(n+1)*A000124(n)`
-/

namespace A344136.P776488694524062860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071724 (n + 1) : ℚ) / (n + 1 : ℚ) * (A000124 n : ℚ)

end

end A344136.P776488694524062860

namespace A344136

/-- `A071724(n+1)/(n+1)*A000124(n)` -/
def P776488694524062860.Spec : Prop :=
  ∀ n, P776488694524062860.a n = (A344136 (n + 1) : ℚ)

end A344136

/-! ## A344136.P18213953507988009484

`A001405(2*n+1)+2*A037956(2*n+1)`
-/

namespace A344136.P18213953507988009484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n + 1) + 2 * A037956 (2 * n + 1)

end

end A344136.P18213953507988009484

namespace A344136

/-- `A001405(2*n+1)+2*A037956(2*n+1)` -/
def P18213953507988009484.Spec : Prop :=
  ∀ n, P18213953507988009484.a n = A344136 (n + 1)

end A344136

/-! ## A344136.P16568767519709979585

`A037952(2*n+1)+2*A037953(2*n+1)`
-/

namespace A344136.P16568767519709979585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (2 * n + 1) + 2 * A037953 (2 * n + 1)

end

end A344136.P16568767519709979585

namespace A344136

/-- `A037952(2*n+1)+2*A037953(2*n+1)` -/
def P16568767519709979585.Spec : Prop :=
  ∀ n, P16568767519709979585.a n = A344136 (n + 1)

end A344136

/-! ## A344136.P7048535559081320930

`A037952(2*n+1)+2*A037956(2*n+1)`
-/

namespace A344136.P7048535559081320930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (2 * n + 1) + 2 * A037956 (2 * n + 1)

end

end A344136.P7048535559081320930

namespace A344136

/-- `A037952(2*n+1)+2*A037956(2*n+1)` -/
def P7048535559081320930.Spec : Prop :=
  ∀ n, P7048535559081320930.a n = A344136 (n + 1)

end A344136

/-! ## A344136.P17143867813040848915

`A344191(n+1)+A344191(n+1)-A001700(n)`
-/

namespace A344136.P17143867813040848915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344191 (n + 1) + (A344191 (n + 1) - A001700 n)

end

end A344136.P17143867813040848915

namespace A344136

/-- `A344191(n+1)+A344191(n+1)-A001700(n)` -/
def P17143867813040848915.Spec : Prop :=
  ∀ n, P17143867813040848915.a n = A344136 (n + 1)

end A344136

/-! ## A344136.P584381978973133117

`A029651(n+1)+A265612(n)-A024482(n+2)`
-/

namespace A344136.P584381978973133117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029651 (n + 1) + (A265612 n - A024482 (n + 2))

end

end A344136.P584381978973133117

namespace A344136

/-- `A029651(n+1)+A265612(n)-A024482(n+2)` -/
def P584381978973133117.Spec : Prop :=
  ∀ n, P584381978973133117.a n = A344136 (n + 1)

end A344136

/-! ## A344136.P16035709875734453410

`A029651(n+1)+A265612(n)-A097613(n+2)`
-/

namespace A344136.P16035709875734453410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029651 (n + 1) + (A265612 n - A097613 (n + 2))

end

end A344136.P16035709875734453410

namespace A344136

/-- `A029651(n+1)+A265612(n)-A097613(n+2)` -/
def P16035709875734453410.Spec : Prop :=
  ∀ n, P16035709875734453410.a n = A344136 (n + 1)

end A344136

/-! ## A344136.P12752972359055350521

`A097613(n+2)+A265612(n)-A129869(n+2)`
-/

namespace A344136.P12752972359055350521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097613 (n + 2) + (A265612 n - A129869 (n + 2))

end

end A344136.P12752972359055350521

namespace A344136

/-- `A097613(n+2)+A265612(n)-A129869(n+2)` -/
def P12752972359055350521.Spec : Prop :=
  ∀ n, P12752972359055350521.a n = A344136 (n + 1)

end A344136

/-! ## A344136.P13514299366951506909

`Δ[A001700(n)]-A070031(n)`
-/

namespace A344136.P13514299366951506909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A070031 n

end

end A344136.P13514299366951506909

namespace A344136

/-- `Δ[A001700(n)]-A070031(n)` -/
def P13514299366951506909.Spec : Prop :=
  ∀ n, P13514299366951506909.a n = A344136 (n + 1)

end A344136

/-! ## A344136.P9374962987699650812

`Δ[A010763(n)]-A070031(n)`
-/

namespace A344136.P9374962987699650812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010763 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A070031 n

end

end A344136.P9374962987699650812

namespace A344136

/-- `Δ[A010763(n)]-A070031(n)` -/
def P9374962987699650812.Spec : Prop :=
  ∀ n, P9374962987699650812.a n = A344136 (n + 1)

end A344136

/-! ## A344136.P10228566034416800090

`A121686(n+1)-A001700(n)`
-/

namespace A344136.P10228566034416800090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121686 (n + 1) - A001700 n

end

end A344136.P10228566034416800090

namespace A344136

/-- `A121686(n+1)-A001700(n)` -/
def P10228566034416800090.Spec : Prop :=
  ∀ n, P10228566034416800090.a n = A344136 (n + 1)

end A344136

/-! ## A344136.P16897766937134789772

`A000108(n+1)+A349695(n+1)-A001700(n)`
-/

namespace A344136.P16897766937134789772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A349695 (n + 1) - A001700 n)

end

end A344136.P16897766937134789772

namespace A344136

/-- `A000108(n+1)+A349695(n+1)-A001700(n)` -/
def P16897766937134789772.Spec : Prop :=
  ∀ n, P16897766937134789772.a n = A344136 (n + 1)

end A344136

/-! ## A344136.P5425456439669957881

`A349695(n+1)+A000108(n)-A126223(n+1)`
-/

namespace A344136.P5425456439669957881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349695 (n + 1) + (A000108 n - A126223 (n + 1))

end

end A344136.P5425456439669957881

namespace A344136

/-- `A349695(n+1)+A000108(n)-A126223(n+1)` -/
def P5425456439669957881.Spec : Prop :=
  ∀ n, P5425456439669957881.a n = A344136 (n + 1)

end A344136

/-! ## A344136.P8017064149162565441

`A051960(n+1)+A265612(n)-A051924(n+2)`
-/

namespace A344136.P8017064149162565441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051960 (n + 1) + (A265612 n - A051924 (n + 2))

end

end A344136.P8017064149162565441

namespace A344136

/-- `A051960(n+1)+A265612(n)-A051924(n+2)` -/
def P8017064149162565441.Spec : Prop :=
  ∀ n, P8017064149162565441.a n = A344136 (n + 1)

end A344136

/-!
# A344137: Sum of the squarefree divisors of n whose square does not divide n.

The programs for A344137, the canonical program `A344137.P296871737562835172` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344137 has offset 1).

The definition of A344137 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A344137.P296871737562835172

`A048250(n+1)-A295295(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A344137

/-- `A048250(n+1)-A295295(n+1)` -/
def P296871737562835172.Spec : Prop :=
  ∀ n, P296871737562835172.a n = A344137 (n + 1)

theorem P296871737562835172.correct : P296871737562835172.Spec := by
  intro n
  simp only [A344137, Nat.add_sub_cancel]

end A344137

/-! ## A344137.P18075130025177306939

`∏{p}[n+1, #+1]-∏{p}[(n+1)/∏{p}[n+1, #], #+1]`
-/

namespace A344137.P18075130025177306939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (p + 1) : ℕ) : ℤ) - ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, (p + 1) : ℕ) : ℤ)

end

end A344137.P18075130025177306939

namespace A344137

/-- `∏{p}[n+1, #+1]-∏{p}[(n+1)/∏{p}[n+1, #], #+1]` -/
def P18075130025177306939.Spec : Prop :=
  ∀ n, P18075130025177306939.a n = A344137 (n + 1)

end A344137

/-! ## A344137.P2617707989777742666

`∏{p}[n+1, #+1]-A048250((n+1)/∏{p}[n+1, #])`
-/

namespace A344137.P2617707989777742666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (p + 1) : ℕ) : ℤ) - A048250 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

end

end A344137.P2617707989777742666

namespace A344137

/-- `∏{p}[n+1, #+1]-A048250((n+1)/∏{p}[n+1, #])` -/
def P2617707989777742666.Spec : Prop :=
  ∀ n, P2617707989777742666.a n = A344137 (n + 1)

end A344137

/-! ## A344137.P14703170669427311134

`∏{p}[n+1, #+1]-A327564(∏{p}[n+1, gcd(n+1, #²)])`
-/

namespace A344137.P14703170669427311134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (p + 1) : ℕ) : ℤ) - A327564 (∏ p ∈ Nat.primeFactors (f2 n), Nat.gcd (n + 1) (p ^ 2))

end

end A344137.P14703170669427311134

namespace A344137

/-- `∏{p}[n+1, #+1]-A327564(∏{p}[n+1, gcd(n+1, #²)])` -/
def P14703170669427311134.Spec : Prop :=
  ∀ n, P14703170669427311134.a n = A344137 (n + 1)

end A344137

/-! ## A344137.P13218366710429068954

`∏{p}[n+1, #+1]-A000203(∏{p}[ceil(n/∏{p}[n+1, #]), #])`
-/

namespace A344137.P13218366710429068954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (p + 1) : ℕ) : ℤ) - A000203 (∏ p ∈ Nat.primeFactors (f2 n).natAbs, p)

end

end A344137.P13218366710429068954

namespace A344137

/-- `∏{p}[n+1, #+1]-A000203(∏{p}[ceil(n/∏{p}[n+1, #]), #])` -/
def P13218366710429068954.Spec : Prop :=
  ∀ n, P13218366710429068954.a n = A344137 (n + 1)

end A344137

/-! ## A344137.P3762996189319478264

`∏{p}[n+1, #+1]-A000203(∏{p}[n+1, gcd(#, (n+1)/#)])`
-/

namespace A344137.P3762996189319478264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (p + 1) : ℕ) : ℤ) - A000203 (∏ p ∈ Nat.primeFactors (f2 n), Int.gcd (p : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))))

end

end A344137.P3762996189319478264

namespace A344137

/-- `∏{p}[n+1, #+1]-A000203(∏{p}[n+1, gcd(#, (n+1)/#)])` -/
def P3762996189319478264.Spec : Prop :=
  ∀ n, P3762996189319478264.a n = A344137 (n + 1)

end A344137

/-! ## A344137.P3412708049552860101

`∏{p}[n+1, #+1]-A000203(∏{p}[(n+1)/∏{p}[n+1, #], #])`
-/

namespace A344137.P3412708049552860101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (p + 1) : ℕ) : ℤ) - A000203 (∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, p)

end

end A344137.P3412708049552860101

namespace A344137

/-- `∏{p}[n+1, #+1]-A000203(∏{p}[(n+1)/∏{p}[n+1, #], #])` -/
def P3412708049552860101.Spec : Prop :=
  ∀ n, P3412708049552860101.a n = A344137 (n + 1)

end A344137

/-! ## A344137.P16610874987886334210

`∏{p}[n+1, #+1]-A048250(∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A344137.P16610874987886334210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (p + 1) : ℕ) : ℤ) - A048250 (∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

end

end A344137.P16610874987886334210

namespace A344137

/-- `∏{p}[n+1, #+1]-A048250(∏{p}[n+1, #^val(n+1, #²)])` -/
def P16610874987886334210.Spec : Prop :=
  ∀ n, P16610874987886334210.a n = A344137 (n + 1)

end A344137

/-! ## A344137.P15684311424968024708

`(A092261(n+1)-1)*A295295(n+1)`
-/

namespace A344137.P15684311424968024708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A092261 (n + 1) - 1) * A295295 (n + 1)

end

end A344137.P15684311424968024708

namespace A344137

/-- `(A092261(n+1)-1)*A295295(n+1)` -/
def P15684311424968024708.Spec : Prop :=
  ∀ n, P15684311424968024708.a n = A344137 (n + 1)

end A344137

/-! ## A344137.P7192755548631990581

`A000203(∏{p}[n+1, #])-A295295(n+1)`
-/

namespace A344137.P7192755548631990581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∏ p ∈ Nat.primeFactors (f1 n), p) - A295295 (n + 1)

end

end A344137.P7192755548631990581

namespace A344137

/-- `A000203(∏{p}[n+1, #])-A295295(n+1)` -/
def P7192755548631990581.Spec : Prop :=
  ∀ n, P7192755548631990581.a n = A344137 (n + 1)

end A344137

/-! ## A344137.P6778448721159840233

`A048250(n+1)-A048250(A000188(n+1))`
-/

namespace A344137.P6778448721159840233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) - A048250 (A000188 (n + 1)).toNat

end

end A344137.P6778448721159840233

namespace A344137

/-- `A048250(n+1)-A048250(A000188(n+1))` -/
def P6778448721159840233.Spec : Prop :=
  ∀ n, P6778448721159840233.a n = A344137 (n + 1)

end A344137

/-! ## A344137.P8013357476907027994

`A048250(n+1)-A048250(A000189(n+1))`
-/

namespace A344137.P8013357476907027994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) - A048250 (A000189 (n + 1)).toNat

end

end A344137.P8013357476907027994

namespace A344137

/-- `A048250(n+1)-A048250(A000189(n+1))` -/
def P8013357476907027994.Spec : Prop :=
  ∀ n, P8013357476907027994.a n = A344137 (n + 1)

end A344137

/-! ## A344137.P17561087253592293956

`A048250(n+1)-A048250(A000190(n+1))`
-/

namespace A344137.P17561087253592293956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) - A048250 (A000190 (n + 1)).toNat

end

end A344137.P17561087253592293956

namespace A344137

/-- `A048250(n+1)-A048250(A000190(n+1))` -/
def P17561087253592293956.Spec : Prop :=
  ∀ n, P17561087253592293956.a n = A344137 (n + 1)

end A344137

/-! ## A344137.P17582132491514487847

`A048250(n+1)-A048250(A003557(n+1))`
-/

namespace A344137.P17582132491514487847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) - A048250 (A003557 (n + 1)).toNat

end

end A344137.P17582132491514487847

namespace A344137

/-- `A048250(n+1)-A048250(A003557(n+1))` -/
def P17582132491514487847.Spec : Prop :=
  ∀ n, P17582132491514487847.a n = A344137 (n + 1)

end A344137

/-! ## A344137.P6876677704564102626

`A048250(n+1)-A048250(A008833(n+1))`
-/

namespace A344137.P6876677704564102626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) - A048250 (A008833 (n + 1)).toNat

end

end A344137.P6876677704564102626

namespace A344137

/-- `A048250(n+1)-A048250(A008833(n+1))` -/
def P6876677704564102626.Spec : Prop :=
  ∀ n, P6876677704564102626.a n = A344137 (n + 1)

end A344137

/-! ## A344137.P495581427239277327

`A048250(n+1)-A048250(A057521(n+1))`
-/

namespace A344137.P495581427239277327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) - A048250 (A057521 (n + 1)).toNat

end

end A344137.P495581427239277327

namespace A344137

/-- `A048250(n+1)-A048250(A057521(n+1))` -/
def P495581427239277327.Spec : Prop :=
  ∀ n, P495581427239277327.a n = A344137 (n + 1)

end A344137

/-! ## A344137.P11288285224899796323

`A000203(A007947(n+1))-A295295(n+1)`
-/

namespace A344137.P11288285224899796323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A007947 (n + 1)).toNat - A295295 (n + 1)

end

end A344137.P11288285224899796323

namespace A344137

/-- `A000203(A007947(n+1))-A295295(n+1)` -/
def P11288285224899796323.Spec : Prop :=
  ∀ n, P11288285224899796323.a n = A344137 (n + 1)

end A344137

/-! ## A344137.P6510870947797545916

`A048250(n+1)-A048250(n+1)/A092261(n+1)`
-/

namespace A344137.P6510870947797545916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) : ℚ) - (A048250 (n + 1) : ℚ) / (A092261 (n + 1) : ℚ)

end

end A344137.P6510870947797545916

namespace A344137

/-- `A048250(n+1)-A048250(n+1)/A092261(n+1)` -/
def P6510870947797545916.Spec : Prop :=
  ∀ n, P6510870947797545916.a n = (A344137 (n + 1) : ℚ)

end A344137

/-! ## A344137.P6080431610289175688

`A000203(A007947(n+1))-A000203(A071773(n+1))`
-/

namespace A344137.P6080431610289175688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A007947 (n + 1)).toNat - A000203 (A071773 (n + 1)).toNat

end

end A344137.P6080431610289175688

namespace A344137

/-- `A000203(A007947(n+1))-A000203(A071773(n+1))` -/
def P6080431610289175688.Spec : Prop :=
  ∀ n, P6080431610289175688.a n = A344137 (n + 1)

end A344137

/-! ## A344137.P11450904682700287993

`A295295((n+1)²)-A295295(n+1)`
-/

namespace A344137.P11450904682700287993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295295 ((n + 1) ^ 2) - A295295 (n + 1)

end

end A344137.P11450904682700287993

namespace A344137

/-- `A295295((n+1)²)-A295295(n+1)` -/
def P11450904682700287993.Spec : Prop :=
  ∀ n, P11450904682700287993.a n = A344137 (n + 1)

end A344137

/-!
# A344138: a(n) = Sum_{x_1|n, x_2|n, x_3|n, x_4|n} gcd(x_1,x_2,x_3,x_4).

The programs for A344138, the canonical program `A344138.P12772707692205614439` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344138 has offset 1).

The definition of A344138 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344138.P12772707692205614439

`∑{d}[n+1, #*A070920((n+1)/#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A344138

/-- `∑{d}[n+1, #*A070920((n+1)/#)]` -/
def P12772707692205614439.Spec : Prop :=
  ∀ n, P12772707692205614439.a n = A344138 (n + 1)

theorem P12772707692205614439.correct : P12772707692205614439.Spec := by
  intro n
  simp only [A344138, Nat.add_sub_cancel]

end A344138

/-! ## A344138.P11031354486086600503

`∑{d}[n+1, A000203(#)*A247516((n+1)/#)]`
-/

namespace A344138.P11031354486086600503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A247516 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344138.P11031354486086600503

namespace A344138

/-- `∑{d}[n+1, A000203(#)*A247516((n+1)/#)]` -/
def P11031354486086600503.Spec : Prop :=
  ∀ n, P11031354486086600503.a n = A344138 (n + 1)

end A344138

/-!
# A344139: a(n) = Sum_{x_1|n, x_2|n, x_3|n, x_4|n, x_5|n} gcd(x_1,x_2,x_3,x_4,x_5).

The programs for A344139, the canonical program `A344139.P12302863342557908566` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344139 has offset 1).

The definition of A344139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344139.P12302863342557908566

`∑{d}[n+1, #*A070921((n+1)/#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A344139

/-- `∑{d}[n+1, #*A070921((n+1)/#)]` -/
def P12302863342557908566.Spec : Prop :=
  ∀ n, P12302863342557908566.a n = A344139 (n + 1)

theorem P12302863342557908566.correct : P12302863342557908566.Spec := by
  intro n
  simp only [A344139, Nat.add_sub_cancel]

end A344139

/-! ## A344139.P9578173798400305949

`∑{d}[n+1, A000203(#)*A247517((n+1)/#)]`
-/

namespace A344139.P9578173798400305949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A247517 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344139.P9578173798400305949

namespace A344139

/-- `∑{d}[n+1, A000203(#)*A247517((n+1)/#)]` -/
def P9578173798400305949.Spec : Prop :=
  ∀ n, P9578173798400305949.a n = A344139 (n + 1)

end A344139

/-!
# A344141: Lexicographically first irreducible polynomial over GF(2) of degree n, evaluated at X = 2.

The programs for A344141, there is no canonical definition to state claims against.
-/

/-! ## A344141.P15441038552867465308

`A344185(n+1)+2^(n+1)`
-/

namespace A344141.P15441038552867465308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344185 (n + 1) + (2 ^ (n + 1) : ℤ)

end

end A344141.P15441038552867465308

/-! ## A344141.P1747156775393170437

`or(A000079(n+1), A344185(n+1))`
-/

namespace A344141.P1747156775393170437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 (n + 1)) (A344185 (n + 1))

end

end A344141.P1747156775393170437

/-! ## A344141.P7227974143172423590

`A344142(n+1)+A344185(n+1)-A344186(n+1)`
-/

namespace A344141.P7227974143172423590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344142 (n + 1) + (A344185 (n + 1) - A344186 (n + 1))

end

end A344141.P7227974143172423590

/-! ## A344141.P2247599948861006251

`or(Δ[A048578(n)], A344185(n+1))`
-/

namespace A344141.P2247599948861006251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A344185 (n + 1))

end

end A344141.P2247599948861006251

/-! ## A344141.P17784139410347634780

`or(A130321(A000217(n+1)), A344185(n+1))`
-/

namespace A344141.P17784139410347634780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A130321 (A000217 (n + 1)).toNat) (A344185 (n + 1))

end

end A344141.P17784139410347634780

/-!
# A344142: Lexicographically first irreducible polynomial over GF(2) of degree n with the lowest possible number of terms, evaluated at X = 2.

The programs for A344142, there is no canonical definition to state claims against.
-/

/-! ## A344142.P15933106469941542170

`A344186(n+1)+2^(n+1)`
-/

namespace A344142.P15933106469941542170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344186 (n + 1) + (2 ^ (n + 1) : ℤ)

end

end A344142.P15933106469941542170

/-! ## A344142.P5192747293857580848

`xor(A000079(n+1), A344186(n+1))`
-/

namespace A344142.P5192747293857580848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000079 (n + 1)) (A344186 (n + 1))

end

end A344142.P5192747293857580848

/-! ## A344142.P4695713796983778580

`or(A016116(2*(n+1)), A344186(n+1))`
-/

namespace A344142.P4695713796983778580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016116 (2 * (n + 1))) (A344186 (n + 1))

end

end A344142.P4695713796983778580

/-! ## A344142.P16889661703077763234

`A344141(n+1)+A344186(n+1)-A344185(n+1)`
-/

namespace A344142.P16889661703077763234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344141 (n + 1) + (A344186 (n + 1) - A344185 (n + 1))

end

end A344142.P16889661703077763234

/-! ## A344142.P3345156268542240721

`or(Δ[A126646(n)], A344186(n+1))`
-/

namespace A344142.P3345156268542240721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A344186 (n + 1))

end

end A344142.P3345156268542240721

/-!
# A344143: Indices k such that A344141(k) and A344142(k) are not equal.

The programs for A344143, there is no canonical definition to state claims against.
-/

/-! ## A344143.P16055017539816016611

`lt[A344185(n+1), A344186(n+1)]+1`
-/

namespace A344143.P16055017539816016611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344185 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344186 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A344143.P16055017539816016611

/-!
# A344145: Positive numbers m such that A020330^k(m) belongs to A344022 for any k >= 0 (where f^k denotes the k-th iterate of f).

The programs for A344145, there is no canonical definition to state claims against.
-/

/-! ## A344145.P13322585115205083634

`eq[A016406(A302792(n+1)), A037861(n)]`
-/

namespace A344145.P13322585115205083634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016406 (A302792 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344145.P13322585115205083634

/-! ## A344145.P15791860836635438629

`record[A031443(n+1)%A353357(2*(n+2))]`
-/

namespace A344145.P15791860836635438629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031443 (n + 1)) (A353357 (2 * (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344145.P15791860836635438629

/-! ## A344145.P1974600033558674362

`eq[A025455(A140676(n)), A037861(n)]`
-/

namespace A344145.P1974600033558674362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 (A140676 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344145.P1974600033558674362

/-! ## A344145.P5202421737014308469

`eq[A037861(n), A061853(A332449(n+1))]`
-/

namespace A344145.P5202421737014308469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061853 (A332449 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344145.P5202421737014308469

/-!
# A344149: Decimal expansion of 30+5*sqrt(3)+3*sqrt(25+10*sqrt(5)).

The programs for A344149, there is no canonical definition to state claims against.
-/

/-! ## A344149.P7075549506876127214

`A179451(n)+C(a(n-1), 41)` with `a(0)=5`
-/

namespace A344149.P7075549506876127214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A179451 (n + 2) + (Nat.choose (a (n - 1)).toNat 41 : ℤ)

end

end A344149.P7075549506876127214

/-! ## A344149.P1129049808576785997

`A179451(n-A000225(C(a(n-1), 41)))` with `a(0)=5`
-/

namespace A344149.P1129049808576785997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A179451 (((n : ℤ) - A000225 (Nat.choose (a (n - 1)).toNat 41)).toNat + 2)

end

end A344149.P1129049808576785997

/-! ## A344149.P4696835794317547561

`A179451(n-C(A001316(a(n-1)), 41))` with `a(0)=5`
-/

namespace A344149.P4696835794317547561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A179451 (n - Nat.choose (A001316 (a (n - 1)).toNat).toNat 41 + 2)

end

end A344149.P4696835794317547561

/-!
# A344150: Length of the n-th word in A342910.

The programs for A344150, there is no canonical definition to state claims against.
-/

/-! ## A344150.P11371078642960262304

`a(A009947(n)-1)+1` with `a(0)=1, a(1)=1`
-/

namespace A344150.P11371078642960262304
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (A009947 n - 1).toNat + 1

end

end A344150.P11371078642960262304

/-! ## A344150.P7156249607428267097

`a(n-(A151842(n)+1))+1` with `a(0)=1, a(1)=1`
-/

namespace A344150.P7156249607428267097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a ((n : ℤ) - (A151842 n + 1)).toNat + 1

end

end A344150.P7156249607428267097

/-! ## A344150.P12298552578091526403

`a(A023443(A009947(n)))+1` with `a(0)=1, a(1)=1`
-/

namespace A344150.P12298552578091526403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (A023443 (A009947 n).toNat).toNat + 1

end

end A344150.P12298552578091526403

/-! ## A344150.P15001866019050194323

`A067340(a(A009947(n)-1))` with `a(0)=1, a(1)=1`
-/

namespace A344150.P15001866019050194323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A067340 (a (A009947 n - 1).toNat).toNat

end

end A344150.P15001866019050194323

/-! ## A344150.P11834375057115628821

`A082273(a(A009947(n)-1))` with `a(0)=1, a(1)=1`
-/

namespace A344150.P11834375057115628821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A082273 (a (A009947 n - 1).toNat).toNat

end

end A344150.P11834375057115628821

/-! ## A344150.P18094780048578622793

`A322605(a(A009947(n)-1))` with `a(0)=1, a(1)=1`
-/

namespace A344150.P18094780048578622793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A322605 (a (A009947 n - 1).toNat).toNat

end

end A344150.P18094780048578622793

/-! ## A344150.P2985366918259225439

`A322629(a(A009947(n)-1))` with `a(0)=1, a(1)=1`
-/

namespace A344150.P2985366918259225439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A322629 ((a (A009947 n - 1).toNat).toNat + 100)

end

end A344150.P2985366918259225439

/-!
# A344152: Numbers k such that #0's < #1's in the k-th word in A342910.

The programs for A344152, there is no canonical definition to state claims against.
-/

/-! ## A344152.P15666359424995992762

`lt[A000982(A126792(n+1)²), n]`
-/

namespace A344152.P15666359424995992762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A126792 (n + 1) ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A344152.P15666359424995992762

/-! ## A344152.P2154303546987660485

`lt[A126792(n+1)², A002024(n+1)]`
-/

namespace A344152.P2154303546987660485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126792 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344152.P2154303546987660485

/-! ## A344152.P14338279995135830249

`lt[A126809(A126792(n+1)), A126785(n+2)]`
-/

namespace A344152.P14338279995135830249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126809 (A126792 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126785 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344152.P14338279995135830249

/-! ## A344152.P17870856971042783310

`lt[A006483(A126792(n+1)), A193832(2*(n+1))]`
-/

namespace A344152.P17870856971042783310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006483 (A126792 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193832 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344152.P17870856971042783310

/-! ## A344152.P16556631299961209928

`lt[A126777(A126792(n)), n]-1`
-/

namespace A344152.P16556631299961209928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126777 (A126792 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1

end

end A344152.P16556631299961209928

/-!
# A344153: Numbers k such that #0's > #1's in the k-th word in A342910.

The programs for A344153, there is no canonical definition to state claims against.
-/

/-! ## A344153.P10700221581491746629

`lt[A003056(2*(n+2)), A126792(n+1)²]`
-/

namespace A344153.P10700221581491746629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126792 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344153.P10700221581491746629

/-! ## A344153.P2350319531187133773

`lt[A008619(3*(n+1)), A126792(A008619(3*(n+1)))!]`
-/

namespace A344153.P2350319531187133773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (3 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A126792 (A008619 (3 * (n + 1))).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A344153.P2350319531187133773

/-! ## A344153.P2607543921194702357

`lt[n, ∑{p}[A246689(A126792(n+1)), #]]`
-/

namespace A344153.P2607543921194702357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246689 (A126792 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344153.P2607543921194702357

/-! ## A344153.P3928498402284520453

`lt[A126803(n+1), A126777(A126792(n+1))]`
-/

namespace A344153.P3928498402284520453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126777 (A126792 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344153.P3928498402284520453

/-! ## A344153.P17560504359124572921

`lt[A123108(n), A126792(3*(n+1))!]`
-/

namespace A344153.P17560504359124572921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A126792 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A344153.P17560504359124572921

/-!
# A344154: Numbers k such that the k-th word in A342910 ends with 0.

The programs for A344154, there is no canonical definition to state claims against.
-/

/-! ## A344154.P14076912315276448625

`comp[A344155(n+1)-1]+1`
-/

namespace A344154.P14076912315276448625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344155 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A344154.P14076912315276448625

/-! ## A344154.P16647043859073442648

`eq[0, floor(a(A009947(n-1)))]` with `a(0)=1, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A344154.P16647043859073442648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (A009947 (n - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344154.P16647043859073442648

/-! ## A344154.P1129416987477854929

`eq[1, sqrt(a(A009947(n)-1))]+1` with `a(0)=1, a(1)=0`
-/

namespace A344154.P1129416987477854929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  Real.sqrt (f2 (A009947 n - 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n + 1

end

end A344154.P1129416987477854929

/-! ## A344154.P12260715829212933538

`comp[A344155(n-(22*a(n-1))%2)]` with `a(0)=0`
-/

namespace A344154.P12260715829212933538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A344155 ((n : ℤ) - Int.tmod (22 * f1 (n - 1)) 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A344154.P12260715829212933538

/-! ## A344154.P4143196647529031852

`comp[A002264(A344161(n+1))]`
-/

namespace A344154.P4143196647529031852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A344161 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A344154.P4143196647529031852

/-! ## A344154.P16129829062358104875

`∪[A344158(n+1), A344160(n+1)]`
-/

namespace A344154.P16129829062358104875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344154.P16129829062358104875

/-! ## A344154.P193977805999873116

`eq[1, A005117(a(A009947(n-1)))]` with `a(0)=2, a(1)=1`
-/

namespace A344154.P193977805999873116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A005117 (f2 (A009947 (n - 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344154.P193977805999873116

/-! ## A344154.P1868670376897354988

`eq[1, A020639(a(A009947(n-1)))]` with `a(0)=2, a(1)=1`
-/

namespace A344154.P1868670376897354988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A020639 (f2 (A009947 (n - 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344154.P1868670376897354988

/-! ## A344154.P2749879354385381645

`lt[1, A000010(a(A009947(n-1))+1)]` with `a(0)=1, a(1)=8`
-/

namespace A344154.P2749879354385381645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n f2 =>
  A000010 (f2 (A009947 (n - 1)).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A344154.P2749879354385381645

/-! ## A344154.P15311813749046815288

`eq[3, A000005(a(A009947(n-1))+1)]` with `a(0)=2, a(1)=3, a(2)=2`
-/

namespace A344154.P15311813749046815288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 2] fun n f2 =>
  A000005 (f2 (A009947 (n - 1)).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344154.P15311813749046815288

/-!
# A344155: Numbers k such that the k-th word in A342910 ends with 1.

The programs for A344155, there is no canonical definition to state claims against.
-/

/-! ## A344155.P111307367488956668

`eq[0, floor(a(A009947(n-1)))]` with `a(0)=1, a(1)=1, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A344155.P111307367488956668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0] fun n f2 =>
  f2 (A009947 (n - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344155.P111307367488956668

/-! ## A344155.P14287499012272443041

`eq[1, sqrt(a(A009947(n)-1))]+1` with `a(0)=0, a(1)=1`
-/

namespace A344155.P14287499012272443041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  Real.sqrt (f2 (A009947 n - 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n + 1

end

end A344155.P14287499012272443041

/-! ## A344155.P12671317815002232723

`∪[A344159(n+1), A344161(n+1)]`
-/

namespace A344155.P12671317815002232723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344155.P12671317815002232723

/-! ## A344155.P15393222943567004120

`eq[1, A059268(a(A009947(n-1)))]` with `a(0)=0, a(1)=2`
-/

namespace A344155.P15393222943567004120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  A059268 (f2 (A009947 (n - 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344155.P15393222943567004120

/-! ## A344155.P2162606871374697272

`lt[1, A167832(a(A009947(n-1)))]` with `a(0)=1, a(1)=0`
-/

namespace A344155.P2162606871374697272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  A167832 (f2 (A009947 (n - 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A344155.P2162606871374697272

/-! ## A344155.P8506799174445526472

`eq[2, A087133(a(A009947(n-1)))]` with `a(0)=3, a(1)=1`
-/

namespace A344155.P8506799174445526472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A087133 (f2 (A009947 (n - 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344155.P8506799174445526472

/-! ## A344155.P17682417564619143186

`eq[1, A005117(a(A009947(n-1)))]` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A344155.P17682417564619143186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n f2 =>
  A005117 (f2 (A009947 (n - 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344155.P17682417564619143186

/-! ## A344155.P7378195030381577410

`eq[1, A020639(a(A009947(n-1)))]` with `a(0)=-4, a(1)=3, a(2)=1`
-/

namespace A344155.P7378195030381577410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-4, 3, 1] fun n f2 =>
  A020639 (f2 (A009947 (n - 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344155.P7378195030381577410

/-! ## A344155.P2835144652196431499

`eq[3, A002262(a(A009947(n-1))²)]` with `a(0)=-3, a(1)=0`
-/

namespace A344155.P2835144652196431499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-3, 0] fun n f2 =>
  A002262 (f2 (A009947 (n - 1)).toNat ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344155.P2835144652196431499

/-! ## A344155.P16636496028632897765

`eq[1, A082991(a(A009947(n)-1))]+1` with `a(0)=2, a(1)=1`
-/

namespace A344155.P16636496028632897765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A082991 (f2 (A009947 n - 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A344155.P16636496028632897765

/-!
# A344156: Numbers k such that the k-th word in A342910 has first digit = last digit.

The programs for A344156, there is no canonical definition to state claims against.
-/

/-! ## A344156.P7271895792724934975

`comp[A344157(n+1)-1]+1`
-/

namespace A344156.P7271895792724934975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344157 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A344156.P7271895792724934975

/-! ## A344156.P1696907095671709545

`∪[A344158(n+1), A344161(n+1)]`
-/

namespace A344156.P1696907095671709545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344156.P1696907095671709545

/-! ## A344156.P4035200407342488373

`∪[A344161(A348553(n)), A344158(n+1)]`
-/

namespace A344156.P4035200407342488373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344161 (A348553 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344156.P4035200407342488373

/-! ## A344156.P6984008307188271898

`eq[1, gcd(2, A344165(n+1))]+1`
-/

namespace A344156.P6984008307188271898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A344165 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A344156.P6984008307188271898

/-! ## A344156.P11262057722034303341

`eq[char[A344157(n+1)], A151622(n)]`
-/

namespace A344156.P11262057722034303341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344157 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A344156.P11262057722034303341

/-!
# A344157: Numbers k such that the k-th word in A342910 has first digit != digit.

The programs for A344157, there is no canonical definition to state claims against.
-/

/-! ## A344157.P4560126688482975854

`∪[A344159(n+1), A344160(n+1)]`
-/

namespace A344157.P4560126688482975854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344157.P4560126688482975854

/-! ## A344157.P15439206390739513631

`∪[floor(3*(A344155(n+1)+1)/2), A344160(n+1)]`
-/

namespace A344157.P15439206390739513631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * (A344155 (n + 1) + 1) : ℚ) / 2⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344157.P15439206390739513631

/-! ## A344157.P16749705975681295182

`∪[3*A344154(n+1)+2, floor(3*(A344155(n+1)+1)/2)]`
-/

namespace A344157.P16749705975681295182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A344154 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * (A344155 (n + 1) + 1) : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344157.P16749705975681295182

/-! ## A344157.P17051399528457324766

`∪[A344160(A348553(n)), A344159(n+1)]`
-/

namespace A344157.P17051399528457324766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344160 (A348553 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344157.P17051399528457324766

/-! ## A344157.P12621348081276264781

`∪[A016789(A344154(n+1)), A344159(n+1)]`
-/

namespace A344157.P12621348081276264781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A344154 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344157.P12621348081276264781

/-! ## A344157.P9198656272220666390

`∪[A007494(A344155(n+1))+1, A344160(n+1)]`
-/

namespace A344157.P9198656272220666390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A344155 (n + 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344157.P9198656272220666390

/-! ## A344157.P9158317737642460304

`∪[A166517(2*A344154(n+1)), A344159(n+1)]`
-/

namespace A344157.P9158317737642460304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 (2 * A344154 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344157.P9158317737642460304

/-! ## A344157.P9568810617236528896

`∪[3*A344154(n+1)+2, A008619(3*A344155(n+1)+1)]`
-/

namespace A344157.P9568810617236528896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A344154 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (3 * A344155 (n + 1) + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344157.P9568810617236528896

/-! ## A344157.P11072375167341570234

`∪[3*A344154(n+1)+2, A110654(3*A344155(n+1))+1]`
-/

namespace A344157.P11072375167341570234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A344154 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (3 * A344155 (n + 1)).toNat + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344157.P11072375167341570234

/-!
# A344158: Numbers k such that the k-th word in A342910 starts with 0 and ends with 0.

The programs for A344158, there is no canonical definition to state claims against.
-/

/-! ## A344158.P14164805976634345343

`A007494(comp[A344155(n+1)])+1`
-/

namespace A344158.P14164805976634345343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344155 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1

end

end A344158.P14164805976634345343

/-! ## A344158.P16671026854543590700

`A032766(comp[A344155(n+1)]+1)`
-/

namespace A344158.P16671026854543590700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344155 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A344158.P16671026854543590700

/-! ## A344158.P18130103263841065687

`∩[A032766(n), A344156(n+1)]`
-/

namespace A344158.P18130103263841065687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344158.P18130103263841065687

/-! ## A344158.P15230959002590228048

`∩[A032766(n), A344154(n+1)]`
-/

namespace A344158.P15230959002590228048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344158.P15230959002590228048

/-! ## A344158.P5651849587617432583

`eq[char[A344154(n+1)], A003417(n)]`
-/

namespace A344158.P5651849587617432583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344154 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003417 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A344158.P5651849587617432583

/-!
# A344159: Numbers k such that the k-th word in A342910 starts with 0 and ends with 1.

The programs for A344159, there is no canonical definition to state claims against.
-/

/-! ## A344159.P15346578144958548342

`floor(3*(A344155(n+1)+1)/2)`
-/

namespace A344159.P15346578144958548342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * (A344155 (n + 1) + 1) : ℚ) / 2⌋

end

end A344159.P15346578144958548342

/-! ## A344159.P5763666516993794171

`A007494(A344155(n+1))+1`
-/

namespace A344159.P5763666516993794171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A344155 (n + 1)).toNat + 1

end

end A344159.P5763666516993794171

/-! ## A344159.P7897461806482733106

`A032766(A344155(n+1)+1)`
-/

namespace A344159.P7897461806482733106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A344155 (n + 1) + 1).toNat

end

end A344159.P7897461806482733106

/-! ## A344159.P1045108749982525928

`A080513(3*A344155(n+1))`
-/

namespace A344159.P1045108749982525928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (3 * A344155 (n + 1)).toNat

end

end A344159.P1045108749982525928

/-! ## A344159.P17950532557035939024

`A026834(9*A344155(n+1))`
-/

namespace A344159.P17950532557035939024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026834 (9 * A344155 (n + 1)).toNat

end

end A344159.P17950532557035939024

/-! ## A344159.P17789979444753063152

`A008619(3*A344155(n+1)+1)`
-/

namespace A344159.P17789979444753063152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (3 * A344155 (n + 1) + 1).toNat

end

end A344159.P17789979444753063152

/-! ## A344159.P358089544548716198

`A065033(3*A344155(n+1))+1`
-/

namespace A344159.P358089544548716198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (3 * A344155 (n + 1)).toNat + 1

end

end A344159.P358089544548716198

/-! ## A344159.P15974075257219099055

`A110654(3*A344155(n+1))+1`
-/

namespace A344159.P15974075257219099055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (3 * A344155 (n + 1)).toNat + 1

end

end A344159.P15974075257219099055

/-! ## A344159.P15029914050734216003

`A004526(3*A344155(n+1)+3)`
-/

namespace A344159.P15029914050734216003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (3 * A344155 (n + 1) + 3).toNat

end

end A344159.P15029914050734216003

/-! ## A344159.P5718222715424173738

`A008619(A016777(A344155(n+1)))`
-/

namespace A344159.P5718222715424173738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A016777 (A344155 (n + 1)).toNat).toNat

end

end A344159.P5718222715424173738

/-!
# A344160: Numbers k such that the k-th word in A342910 starts with 1 and ends with 0.

The programs for A344160, there is no canonical definition to state claims against.
-/

/-! ## A344160.P7682018786958833264

`3*A344154(n+1)+2`
-/

namespace A344160.P7682018786958833264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A344154 (n + 1) + 2

end

end A344160.P7682018786958833264

/-! ## A344160.P12417550462892636841

`3*(eq[0, ceil(a(A009947(n)-1))]+1)+2` with `a(0)=0, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A344160.P12417550462892636841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (A009947 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) + 2

end

end A344160.P12417550462892636841

/-! ## A344160.P6734671010232035528

`A016789(A344154(n+1))`
-/

namespace A344160.P6734671010232035528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A344154 (n + 1)).toNat

end

end A344160.P6734671010232035528

/-! ## A344160.P7379683531218759518

`A047254(A344158(n+2))`
-/

namespace A344160.P7379683531218759518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047254 (A344158 (n + 2)).toNat

end

end A344160.P7379683531218759518

/-! ## A344160.P15416228549509689994

`A166517(2*A344154(n+1))`
-/

namespace A344160.P15416228549509689994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 (2 * A344154 (n + 1)).toNat

end

end A344160.P15416228549509689994

/-! ## A344160.P1706114842260200100

`A009056(3*A344154(n+1))`
-/

namespace A344160.P1706114842260200100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (3 * A344154 (n + 1)).toNat

end

end A344160.P1706114842260200100

/-! ## A344160.P2978244054765063821

`A008486(A344154(n+1)+1)-1`
-/

namespace A344160.P2978244054765063821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A344154 (n + 1) + 1).toNat - 1

end

end A344160.P2978244054765063821

/-!
# A344161: Numbers k such that the k-th word in A342910 starts with 1 and ends with 1.

The programs for A344161, there is no canonical definition to state claims against.
-/

/-! ## A344161.P7544137460478734281

`∪[A102659(3*n+2), A016789(A344155(n+1))]`
-/

namespace A344161.P7544137460478734281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102659 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A344155 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344161.P7544137460478734281

/-! ## A344161.P17169181891686346125

`∩[3*n-1, A344155(n+1)]`
-/

namespace A344161.P17169181891686346125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344161.P17169181891686346125

/-! ## A344161.P13605164555490930677

`∩[A344155(n+1), A016789(n)]`
-/

namespace A344161.P13605164555490930677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344161.P13605164555490930677

/-! ## A344161.P4415054117666665674

`∩[A344155(n+1), comp[A032766(n)]]`
-/

namespace A344161.P4415054117666665674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344155 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A344161.P4415054117666665674

/-! ## A344161.P7603623856850886351

`∩[A344155(n+1), A008585(n)-1]`
-/

namespace A344161.P7603623856850886351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344161.P7603623856850886351

/-!
# A344164: a(n) = sum of the digits of n-th word in A342910.

The programs for A344164, there is no canonical definition to state claims against.
-/

/-! ## A344164.P14039592595241760574

`A001842(A233098(n+1)+A008619(n))`
-/

namespace A344164.P14039592595241760574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (A233098 (n + 1) + A008619 n).toNat

end

end A344164.P14039592595241760574

/-! ## A344164.P4541219423153917793

`A307322(A161142(n+1))%A028326(n)`
-/

namespace A344164.P4541219423153917793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307322 (A161142 (n + 1)).toNat) (A028326 n)

end

end A344164.P4541219423153917793

/-! ## A344164.P1277332727332620567

`(A136825(A157703(n))+A000045(n))%3`
-/

namespace A344164.P1277332727332620567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136825 (A157703 n).toNat + A000045 n) 3

end

end A344164.P1277332727332620567

/-! ## A344164.P6721935909658434841

`A352512(A316905(n)+A194324(n+1))`
-/

namespace A344164.P6721935909658434841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352512 (A316905 n + A194324 (n + 1)).toNat

end

end A344164.P6721935909658434841

/-! ## A344164.P15709681993830441524

`A022303(n+1)-A016236(A221234(n+1))`
-/

namespace A344164.P15709681993830441524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022303 (n + 1) - A016236 (A221234 (n + 1)).toNat

end

end A344164.P15709681993830441524

/-!
# A344165: a(n) = number of runs in n-th word in A342910.

The programs for A344165, there is no canonical definition to state claims against.
-/

/-! ## A344165.P7658590560169601523

`A352513(A036561(n)+A008835(n+1))`
-/

namespace A344165.P7658590560169601523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352513 (A036561 n + A008835 (n + 1)).toNat

end

end A344165.P7658590560169601523

/-! ## A344165.P12706164853032915025

`A082061(A334436(n+1)+A131666(n))`
-/

namespace A344165.P12706164853032915025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082061 (A334436 (n + 1) + A131666 n).toNat

end

end A344165.P12706164853032915025

/-! ## A344165.P7822174424524709210

`A001221(record[A210875(n+1)+A104684(n)])`
-/

namespace A344165.P7822174424524709210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210875 (n + 1) + A104684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A344165.P7822174424524709210

/-! ## A344165.P4710350471444814823

`A320732(A330942(n)+A165196(n+1))`
-/

namespace A344165.P4710350471444814823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320732 (A330942 n + A165196 (n + 1)).toNat

end

end A344165.P4710350471444814823

/-! ## A344165.P3012747868144708155

`gcd(A001221(A285822(n)), A328926(n+1))`
-/

namespace A344165.P3012747868144708155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A285822 n).toNat) (A328926 (n + 1))

end

end A344165.P3012747868144708155

/-!
# A344166: Positions of palindromes in A342910.

The programs for A344166, there is no canonical definition to state claims against.
-/

/-! ## A344166.P9627399003932744827

`record[gcd(n+1, A344169(n+1))]`
-/

namespace A344166.P9627399003932744827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A344169 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344166.P9627399003932744827

/-! ## A344166.P6093458474659869673

`eq[n, A344169(round(sqrt(n²+1)))]`
-/

namespace A344166.P6093458474659869673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344169 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344166.P6093458474659869673

/-!
# A344167: Positions in A342910 of words in which #0's - #1's is odd.

The programs for A344167, there is no canonical definition to state claims against.
-/

/-! ## A344167.P12587362092375068180

`lt[-a(A009947(n-1)), 3]` with `a(0)=3`
-/

namespace A344167.P12587362092375068180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  -f1 (A009947 (n - 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A344167.P12587362092375068180

/-! ## A344167.P12220268179897754814

`eq[1, A008731(a(A009947(n-1)))]` with `a(0)=0`
-/

namespace A344167.P12220268179897754814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A008731 (f2 (A009947 (n - 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344167.P12220268179897754814

/-! ## A344167.P7058697336732239405

`eq[1, A051703(a(A009947(n-1)))]` with `a(0)=0`
-/

namespace A344167.P7058697336732239405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A051703 (f2 (A009947 (n - 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344167.P7058697336732239405

/-! ## A344167.P5761752143579530353

`eq[1, A082958(a(A009947(n-1)))]` with `a(0)=0`
-/

namespace A344167.P5761752143579530353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A082958 (f2 (A009947 (n - 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344167.P5761752143579530353

/-! ## A344167.P8980218994147373291

`lt[1, A038557(a(A009947(n-1)))]` with `a(0)=1`
-/

namespace A344167.P8980218994147373291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A038557 (f2 (A009947 (n - 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A344167.P8980218994147373291

/-! ## A344167.P9412304203952467215

`eq[1, A116949(a(A009947(n-1)))]` with `a(0)=2`
-/

namespace A344167.P9412304203952467215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A116949 (f2 (A009947 (n - 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344167.P9412304203952467215

/-! ## A344167.P3944288202702546187

`eq[1, A064692(a(A009947(n-1)))]` with `a(0)=4`
-/

namespace A344167.P3944288202702546187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A064692 (f2 (A009947 (n - 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344167.P3944288202702546187

/-! ## A344167.P13731086081175458354

`eq[3, A076605(a(A009947(n-1)))]` with `a(0)=2`
-/

namespace A344167.P13731086081175458354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A076605 (f2 (A009947 (n - 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344167.P13731086081175458354

/-! ## A344167.P13046052042634519864

`eq[0, A190224(a(A009947(n-1))+1)]` with `a(0)=1`
-/

namespace A344167.P13046052042634519864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A190224 (f2 (A009947 (n - 1)).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344167.P13046052042634519864

/-! ## A344167.P8944680081631215795

`eq[1, A306671(a(A009947(n-1))+1)]` with `a(0)=0`
-/

namespace A344167.P8944680081631215795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A306671 (f2 (A009947 (n - 1)).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344167.P8944680081631215795

/-!
# A344168: Positions in A342910 of words where #0's - #1's is even.

The programs for A344168, there is no canonical definition to state claims against.
-/

/-! ## A344168.P9953636337323954156

`comp[A344167(n+1)-1]+1`
-/

namespace A344168.P9953636337323954156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344167 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A344168.P9953636337323954156

/-! ## A344168.P2352543981034380505

`lt[-a(A009947(n-1)), 3]` with `a(0)=3, a(1)=3, a(2)=3`
-/

namespace A344168.P2352543981034380505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 3, 3] fun n f1 =>
  -f1 (A009947 (n - 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A344168.P2352543981034380505

/-! ## A344168.P792773319433470668

`eq[1, A064692(a(A009947(n-1)))]` with `a(0)=2`
-/

namespace A344168.P792773319433470668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A064692 (f2 (A009947 (n - 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344168.P792773319433470668

/-! ## A344168.P8190291375764917597

`eq[3, A048276(a(A009947(n-1)))]` with `a(0)=1`
-/

namespace A344168.P8190291375764917597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A048276 (f2 (A009947 (n - 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344168.P8190291375764917597

/-! ## A344168.P5806393581750469800

`lt[A082958(a(A009947(n-1))), 1]` with `a(0)=2`
-/

namespace A344168.P5806393581750469800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A082958 (f1 (A009947 (n - 1)).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A344168.P5806393581750469800

/-! ## A344168.P17344765574168535287

`eq[1, A008731(a(A009947(n-1)))]` with `a(0)=4`
-/

namespace A344168.P17344765574168535287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A008731 (f2 (A009947 (n - 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344168.P17344765574168535287

/-! ## A344168.P13767171554763753649

`eq[1, A116949(a(A009947(n-1)))]` with `a(0)=4`
-/

namespace A344168.P13767171554763753649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A116949 (f2 (A009947 (n - 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344168.P13767171554763753649

/-! ## A344168.P8697274401983885550

`eq[2, A076605(a(A009947(n-1)))]` with `a(0)=7`
-/

namespace A344168.P8697274401983885550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f2 =>
  A076605 (f2 (A009947 (n - 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344168.P8697274401983885550

/-! ## A344168.P14436343910769913509

`eq[0, A004547(a(A009947(n-1))+6)]` with `a(0)=3`
-/

namespace A344168.P14436343910769913509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A004547 (f2 (A009947 (n - 1)).toNat + 6).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344168.P14436343910769913509

/-! ## A344168.P4798063282836622280

`lt[10, (n-1-a(A009947(n-1)))*A000040(n+2)]` with `a(0)=6`
-/

namespace A344168.P4798063282836622280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f2 =>
  ((n : ℤ) - 1 - f2 (A009947 (n - 1)).toNat) * A000040 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A344168.P4798063282836622280

/-!
# A344170: Numbers k such that 3^(2*k+1) - 3^k - 1 is prime.

The programs for A344170, there is no canonical definition to state claims against.
-/

/-! ## A344170.P18164028684167421177

`record[A161919(n+1)-A334291(3*n+2)]`
-/

namespace A344170.P18164028684167421177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161919 (n + 1) - A334291 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344170.P18164028684167421177

/-! ## A344170.P11533113790502363918

`∑[gcd(A061954(2*n+3), A205406(n+1))]`
-/

namespace A344170.P11533113790502363918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061954 (2 * n + 3)) (A205406 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344170.P11533113790502363918

/-! ## A344170.P2682968611020084869

`eq[A071921(A064094(n)), A229892(n+3)]`
-/

namespace A344170.P2682968611020084869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071921 (A064094 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229892 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344170.P2682968611020084869

/-! ## A344170.P12500766140488207131

`A268448(n+1)+A048881(A007837(n+1))`
-/

namespace A344170.P12500766140488207131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268448 (n + 1) + A048881 (A007837 (n + 1)).toNat

end

end A344170.P12500766140488207131

/-! ## A344170.P2243561366474717931

`eq[A373951(n+2), A373991(A373987(n+1))]`
-/

namespace A344170.P2243561366474717931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373951 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373991 (A373987 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344170.P2243561366474717931

/-!
# A344174: Number of primes p of the form x^4 + y^2 with y + 1 prime such that p is smaller than prime(n) and also a quadratic nonresidue modulo prime(n).

The programs for A344174, there is no canonical definition to state claims against.
-/

/-! ## A344174.P12160591873098504381

`A333381(A331748(3*n+4)+A279345(n+1))`
-/

namespace A344174.P12160591873098504381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A331748 (3 * n + 4) + A279345 (n + 1)).toNat

end

end A344174.P12160591873098504381

/-! ## A344174.P4292485173542650494

`A001221(xor(A060973(n+1), A205489(n+1)))`
-/

namespace A344174.P4292485173542650494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.xor (A060973 (n + 1)) (A205489 (n + 1))).toNat

end

end A344174.P4292485173542650494

/-! ## A344174.P639516216624903503

`A242830(A124753(n+1))+A124766(n)`
-/

namespace A344174.P639516216624903503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242830 (A124753 (n + 1)).toNat + A124766 n

end

end A344174.P639516216624903503

/-! ## A344174.P13775861086672892953

`A165034(n*A103997(n))`
-/

namespace A344174.P13775861086672892953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165034 ((n : ℤ) * A103997 n).toNat

end

end A344174.P13775861086672892953

/-! ## A344174.P12256422970922657539

`A165034(n*A168287(n))`
-/

namespace A344174.P12256422970922657539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165034 ((n : ℤ) * A168287 n).toNat

end

end A344174.P12256422970922657539

/-!
# A344175: Primes of the form 2*3^a+5^b where 3^a+2*5^b is also prime, and a,b >= 1.

The programs for A344175, there is no canonical definition to state claims against.
-/

/-! ## A344175.P16407503461847298676

`p?[or(3, A067729(3*n+4))]`
-/

namespace A344175.P16407503461847298676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A067729 (3 * n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A344175.P16407503461847298676

/-! ## A344175.P11285412422646078480

`p?[or(A100483(2*n+1), A100490(n+1))]`
-/

namespace A344175.P11285412422646078480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A100483 (2 * n + 1)) (A100490 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A344175.P11285412422646078480

/-!
# A344176: Alternating parity Yellowstone permutation: a(n) = n if n <= 3, otherwise the smallest number not occurring earlier having at least one common factor with a(n-2), but none with a(n-1), with the condition that the terms in the sequence alternate parity.

The programs for A344176, there is no canonical definition to state claims against.
-/

/-! ## A344176.P13375486751504363891

`A180649(A167365(n+1))+A098550(n+1)`
-/

namespace A344176.P13375486751504363891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180649 (A167365 (n + 1)).toNat + A098550 (n + 1)

end

end A344176.P13375486751504363891

/-! ## A344176.P8693691461131464377

`A335585(n+1)+A180649(A167365(n+1))`
-/

namespace A344176.P8693691461131464377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335585 (n + 1) + A180649 (A167365 (n + 1)).toNat

end

end A344176.P8693691461131464377

/-! ## A344176.P3645220243187075178

`A180649(A167365(n+1))+A098552(A098551(n+1))`
-/

namespace A344176.P3645220243187075178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180649 (A167365 (n + 1)).toNat + A098552 (A098551 (n + 1)).toNat

end

end A344176.P3645220243187075178

/-! ## A344176.P16405603398143479677

`A256974(A124774(n))+A335585(n+1)^A275216(n)^10`
-/

namespace A344176.P16405603398143479677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256974 (A124774 n).toNat : ℚ) + (A335585 (n + 1) : ℚ) ^ (A275216 n ^ 10 : ℤ)

end

end A344176.P16405603398143479677

/-! ## A344176.P4469028436984176529

`A256974(A064413(n+2))+A335585(n+1)%A032748(n+1)`
-/

namespace A344176.P4469028436984176529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256974 (A064413 (n + 2)).toNat + Int.tmod (A335585 (n + 1)) (A032748 (n + 1))

end

end A344176.P4469028436984176529

/-!
# A344177: Numbers m > 3 such that x^m + x^3 + 1 is irreducible over GF(2) while x^m + x^3 + x^2 + x + 1 = x^m + (x + 1)^3 is not.

The programs for A344177, there is no canonical definition to state claims against.
-/

/-! ## A344177.P5324858662609506205

`filter[A057461(n+1), A079979(#)]`
-/

namespace A344177.P5324858662609506205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079979 (f1 j).toNat = 1) n)

end

end A344177.P5324858662609506205

/-! ## A344177.P12916237233730868621

`∩[A057461(n+1), A232742(n+1)]`
-/

namespace A344177.P12916237233730868621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344177.P12916237233730868621

/-! ## A344177.P8872864302317064865

`∩[3*A002475(n+1), A057461(n+1)]`
-/

namespace A344177.P8872864302317064865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344177.P8872864302317064865

/-! ## A344177.P5494218682579011755

`6*(A133485(n+1)+1)`
-/

namespace A344177.P5494218682579011755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A133485 (n + 1) + 1)

end

end A344177.P5494218682579011755

/-!
# A344178: Difference between the arithmetic derivative of n and the cototient of n: a(n) = A003415(n) - A051953(n).

The programs for A344178, the canonical program `A344178.P7382453285315687724` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344178 has offset 1).

The definition of A344178 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A344178.P3733286365196940148

`A168036(n+1)+A000010(n+1)`
-/

namespace A344178.P3733286365196940148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 (n + 1) + A000010 (n + 1)

end

end A344178.P3733286365196940148

namespace A344178

/-- `A168036(n+1)+A000010(n+1)` -/
def P3733286365196940148.Spec : Prop :=
  ∀ n, P3733286365196940148.a n = A344178 (n + 1)

end A344178

/-! ## A344178.P7382453285315687724

`A003415(n+1)-A051953(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A344178

/-- `A003415(n+1)-A051953(n+1)` -/
def P7382453285315687724.Spec : Prop :=
  ∀ n, P7382453285315687724.a n = A344178 (n + 1)

theorem P7382453285315687724.correct : P7382453285315687724.Spec := by
  intro n
  simp only [A344178, Nat.add_sub_cancel]

end A344178

/-! ## A344178.P18293869272705120647

`A168036(n+1)+Δ[A002088(n)]`
-/

namespace A344178.P18293869272705120647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 (n + 1) + (f1 (n + 1) - f1 n)

end

end A344178.P18293869272705120647

namespace A344178

/-- `A168036(n+1)+Δ[A002088(n)]` -/
def P18293869272705120647.Spec : Prop :=
  ∀ n, P18293869272705120647.a n = A344178 (n + 1)

end A344178

/-! ## A344178.P5514677362601226306

`A211991(n+1)+A051709(n+1)`
-/

namespace A344178.P5514677362601226306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211991 (n + 1) + A051709 (n + 1)

end

end A344178.P5514677362601226306

namespace A344178

/-- `A211991(n+1)+A051709(n+1)` -/
def P5514677362601226306.Spec : Prop :=
  ∀ n, P5514677362601226306.a n = A344178 (n + 1)

theorem P5514677362601226306.correct : P5514677362601226306.Spec := by
  intro n
  simp only [A344178, Nat.add_sub_cancel, A344178.P5514677362601226306.a, A344178.P7382453285315687724.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A051709, A051709.P1277583888386467227.a, A051953, A051953.P12093122754958550118.a, A211991, A211991.P15084257827643114560.a, A001065, A001065.P4097147489331274860.a, A003557, A003557.P6364735403900941810.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A318305, A318305.P17845263951644339002.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A173557, A173557.P15666735857375843373.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A001221, A001221.P10258181745752134128.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A349394, A349394.P210516795435731064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A344178

/-! ## A344178.P1817354666204106650

`A209187(n+1)-A343224(n+1)`
-/

namespace A344178.P1817354666204106650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209187 (n + 1) - A343224 (n + 1)

end

end A344178.P1817354666204106650

namespace A344178

/-- `A209187(n+1)-A343224(n+1)` -/
def P1817354666204106650.Spec : Prop :=
  ∀ n, P1817354666204106650.a n = A344178 (n + 1)

theorem P1817354666204106650.correct : P1817354666204106650.Spec := by
  intro n
  simp only [A344178, Nat.add_sub_cancel, A344178.P1817354666204106650.a, A344178.P7382453285315687724.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A051953, A051953.P12093122754958550118.a, A209187, A209187.P1822992089248699320.a, A343224, A343224.P18101851413978261599.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A318305, A318305.P17845263951644339002.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A173557, A173557.P15666735857375843373.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A001221, A001221.P10258181745752134128.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A349394, A349394.P210516795435731064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A344178

/-! ## A344178.P18081055047899535909

`A345001(n+1)-A228947(n+1)`
-/

namespace A344178.P18081055047899535909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345001 (n + 1) - A228947 (n + 1)

end

end A344178.P18081055047899535909

namespace A344178

/-- `A345001(n+1)-A228947(n+1)` -/
def P18081055047899535909.Spec : Prop :=
  ∀ n, P18081055047899535909.a n = A344178 (n + 1)

end A344178

/-! ## A344178.P3114231109648798741

`∑[A258057(n)-1]+A000010(n+1)`
-/

namespace A344178.P3114231109648798741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A000010 (n + 1)

end

end A344178.P3114231109648798741

namespace A344178

/-- `∑[A258057(n)-1]+A000010(n+1)` -/
def P3114231109648798741.Spec : Prop :=
  ∀ n, P3114231109648798741.a n = A344178 (n + 1)

end A344178

/-! ## A344178.P11529585150205188089

`A168036(n+1)+A109606(n+1)+1`
-/

namespace A344178.P11529585150205188089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 (n + 1) + (A109606 (n + 1) + 1)

end

end A344178.P11529585150205188089

namespace A344178

/-- `A168036(n+1)+A109606(n+1)+1` -/
def P11529585150205188089.Spec : Prop :=
  ∀ n, P11529585150205188089.a n = A344178 (n + 1)

end A344178

/-! ## A344178.P8800229099439428090

`A109606(n+1)+A003415(n+1)-n`
-/

namespace A344178.P8800229099439428090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + A003415 (n + 1) - (n : ℤ)

end

end A344178.P8800229099439428090

namespace A344178

/-- `A109606(n+1)+A003415(n+1)-n` -/
def P8800229099439428090.Spec : Prop :=
  ∀ n, P8800229099439428090.a n = A344178 (n + 1)

end A344178

/-! ## A344178.P15114471629677164240

`A168036(n+1)+n-A219428(n+1)`
-/

namespace A344178.P15114471629677164240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 (n + 1) + ((n : ℤ) - A219428 (n + 1))

end

end A344178.P15114471629677164240

namespace A344178

/-- `A168036(n+1)+n-A219428(n+1)` -/
def P15114471629677164240.Spec : Prop :=
  ∀ n, P15114471629677164240.a n = A344178 (n + 1)

theorem P15114471629677164240.correct : P15114471629677164240.Spec := by
  intro n
  simp only [A344178, Nat.add_sub_cancel, A344178.P15114471629677164240.a, A344178.P7382453285315687724.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A051953, A051953.P12093122754958550118.a, A168036, A168036.P2098310487666722677.a, A219428, A219428.P10048868048684072397.a, A003557, A003557.P6364735403900941810.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A318305, A318305.P17845263951644339002.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A173557, A173557.P15666735857375843373.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001221, A001221.P10258181745752134128.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A349394, A349394.P210516795435731064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A344178

/-! ## A344178.P15729966214498206615

`A168036(n+1)+A002618(n+1)/(n+1)`
-/

namespace A344178.P15729966214498206615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168036 (n + 1) : ℚ) + (A002618 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A344178.P15729966214498206615

namespace A344178

/-- `A168036(n+1)+A002618(n+1)/(n+1)` -/
def P15729966214498206615.Spec : Prop :=
  ∀ n, P15729966214498206615.a n = (A344178 (n + 1) : ℚ)

end A344178

/-! ## A344178.P2069211426970980080

`∑{d}[n+1, A008683(#)*A344584((n+1)/#)]`
-/

namespace A344178.P2069211426970980080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A344584 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344178.P2069211426970980080

namespace A344178

/-- `∑{d}[n+1, A008683(#)*A344584((n+1)/#)]` -/
def P2069211426970980080.Spec : Prop :=
  ∀ n, P2069211426970980080.a n = A344178 (n + 1)

end A344178

/-! ## A344178.P4718394695859675827

`A003415(n+1)+A051709(n+1)-A001065(n+1)`
-/

namespace A344178.P4718394695859675827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) + (A051709 (n + 1) - A001065 (n + 1))

end

end A344178.P4718394695859675827

namespace A344178

/-- `A003415(n+1)+A051709(n+1)-A001065(n+1)` -/
def P4718394695859675827.Spec : Prop :=
  ∀ n, P4718394695859675827.a n = A344178 (n + 1)

theorem P4718394695859675827.correct : P4718394695859675827.Spec := by
  intro n
  simp only [A344178, Nat.add_sub_cancel, A344178.P4718394695859675827.a, A344178.P7382453285315687724.a, A001065, A001065.P4097147489331274860.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A051709, A051709.P1277583888386467227.a, A051953, A051953.P12093122754958550118.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A318305, A318305.P17845263951644339002.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A173557, A173557.P15666735857375843373.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A001221, A001221.P10258181745752134128.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A349394, A349394.P210516795435731064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A344178

/-! ## A344178.P4882747577802448163

`A001065(n+1)+A211991(n+1)-A051953(n+1)`
-/

namespace A344178.P4882747577802448163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (A211991 (n + 1) - A051953 (n + 1))

end

end A344178.P4882747577802448163

namespace A344178

/-- `A001065(n+1)+A211991(n+1)-A051953(n+1)` -/
def P4882747577802448163.Spec : Prop :=
  ∀ n, P4882747577802448163.a n = A344178 (n + 1)

theorem P4882747577802448163.correct : P4882747577802448163.Spec := by
  intro n
  simp only [A344178, Nat.add_sub_cancel, A344178.P4882747577802448163.a, A344178.P7382453285315687724.a, A001065, A001065.P4097147489331274860.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A051953, A051953.P12093122754958550118.a, A211991, A211991.P15084257827643114560.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A318305, A318305.P17845263951644339002.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A173557, A173557.P15666735857375843373.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A001221, A001221.P10258181745752134128.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A349394, A349394.P210516795435731064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A344178

/-! ## A344178.P12291688127659336944

`A319684(n+1)-(A319683(n+1)+A051953(n+1))`
-/

namespace A344178.P12291688127659336944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319684 (n + 1) - (A319683 (n + 1) + A051953 (n + 1))

end

end A344178.P12291688127659336944

namespace A344178

/-- `A319684(n+1)-(A319683(n+1)+A051953(n+1))` -/
def P12291688127659336944.Spec : Prop :=
  ∀ n, P12291688127659336944.a n = A344178 (n + 1)

theorem P12291688127659336944.correct : P12291688127659336944.Spec := by
  intro n
  simp only [A344178, Nat.add_sub_cancel, A344178.P12291688127659336944.a, A344178.P7382453285315687724.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A051953, A051953.P12093122754958550118.a, A319683, A319683.P12610436916634477773.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A318305, A318305.P17845263951644339002.a, A349394, A349394.P210516795435731064.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A344178

/-! ## A344178.P10232631114624177344

`A003415(n+1)-A319700(2*(n+1))`
-/

namespace A344178.P10232631114624177344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) - A319700 (2 * (n + 1))

end

end A344178.P10232631114624177344

namespace A344178

/-- `A003415(n+1)-A319700(2*(n+1))` -/
def P10232631114624177344.Spec : Prop :=
  ∀ n, P10232631114624177344.a n = A344178 (n + 1)

end A344178

/-! ## A344178.P7846517925586413776

`A319703(2*(n+1))-A051953(n+1)`
-/

namespace A344178.P7846517925586413776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (2 * (n + 1)) - A051953 (n + 1)

end

end A344178.P7846517925586413776

namespace A344178

/-- `A319703(2*(n+1))-A051953(n+1)` -/
def P7846517925586413776.Spec : Prop :=
  ∀ n, P7846517925586413776.a n = A344178 (n + 1)

end A344178

/-! ## A344178.P4614623022571131030

`A319703(2*(n+1))-A319700(2*(n+1))`
-/

namespace A344178.P4614623022571131030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (2 * (n + 1)) - A319700 (2 * (n + 1))

end

end A344178.P4614623022571131030

namespace A344178

/-- `A319703(2*(n+1))-A319700(2*(n+1))` -/
def P4614623022571131030.Spec : Prop :=
  ∀ n, P4614623022571131030.a n = A344178 (n + 1)

end A344178

/-! ## A344178.P4698986805794652090

`A168036(n+1)+A067541(Δ[n²])`
-/

namespace A344178.P4698986805794652090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 (n + 1) + A067541 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A344178.P4698986805794652090

namespace A344178

/-- `A168036(n+1)+A067541(Δ[n²])` -/
def P4698986805794652090.Spec : Prop :=
  ∀ n, P4698986805794652090.a n = A344178 (n + 1)

end A344178

/-!
# A344179: Jordan-Polya numbers (A001013) not in A344181.

The programs for A344179, there is no canonical definition to state claims against.
-/

/-! ## A344179.P2867130024577721167

`A064476(eq[A111851(n+3), A341591(n+3)])`
-/

namespace A344179.P2867130024577721167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111851 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341591 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064476 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A344179.P2867130024577721167

/-!
# A344180: Lexicographically earliest infinite sequence such that a(i) = a(j) => f(i) = f(j) for all i, j >= 0, where f(n) = 0 if n is a Fibbinary number (A003714), otherwise f(n) = n.

The programs for A344180, there is no canonical definition to state claims against.
-/

/-! ## A344180.P9894684706268896194

`A000005(A300867(n)^A324752(n))`
-/

namespace A344180.P9894684706268896194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A300867 n : ℚ) ^ (A324752 n : ℤ))).toNat

end

end A344180.P9894684706268896194

/-! ## A344180.P18349208226666640200

`A081604(A101951(n+2)*A318921(n))`
-/

namespace A344180.P18349208226666640200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A101951 (n + 2) * A318921 n).toNat

end

end A344180.P18349208226666640200

/-!
# A344181: Numbers such that repeated division by their largest factorial divisor (as long as such a divisor larger than one exists) eventually yields 1.

The programs for A344181, there is no canonical definition to state claims against.
-/

/-! ## A344181.P17362510679223676408

`eq[1, A093411(n)]`
-/

namespace A344181.P17362510679223676408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344181.P17362510679223676408

/-! ## A344181.P9129106621413409884

`record[A329379(n+1)]`
-/

namespace A344181.P9129106621413409884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344181.P9129106621413409884

/-! ## A344181.P5708382179630283501

`eq[n, A329379(abs(1-n)+1)]`
-/

namespace A344181.P5708382179630283501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329379 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344181.P5708382179630283501

/-! ## A344181.P17180917737192619806

`A329379(lt[n, A329379(n+1)]+1)`
-/

namespace A344181.P17180917737192619806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329379 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A344181.P17180917737192619806

/-! ## A344181.P14091915259542587900

`record[A001013(n+1)/A093411(A001013(n+1))]`
-/

namespace A344181.P14091915259542587900
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001013 (n + 1) : ℚ) / (A093411 (A001013 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344181.P14091915259542587900

/-! ## A344181.P7513832227036720509

`record[A025487(n+1)/A093411(A025487(n+1))]`
-/

namespace A344181.P7513832227036720509
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025487 (n + 1) : ℚ) / (A093411 (A025487 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344181.P7513832227036720509

/-! ## A344181.P12819801827732788052

`record[A033620(n+1)/A093411(A033620(n+1))]`
-/

namespace A344181.P12819801827732788052
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033620 (n + 1) : ℚ) / (A093411 (A033620 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344181.P12819801827732788052

/-! ## A344181.P14751094367546872568

`record[A080197(n+1)/A093411(A080197(n+1))]`
-/

namespace A344181.P14751094367546872568
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080197 (n + 1) : ℚ) / (A093411 (A080197 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344181.P14751094367546872568

/-! ## A344181.P17221766293904866321

`record[A070089(n+1)/A093411(A070089(n+1))]`
-/

namespace A344181.P17221766293904866321
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070089 (n + 1) : ℚ) / (A093411 (A070089 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344181.P17221766293904866321

/-! ## A344181.P10192629208719900844

`record[A329379(A028310(n))-A000035(n)]`
-/

namespace A344181.P10192629208719900844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329379 (A028310 n).toNat - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344181.P10192629208719900844

/-!
# A344182: a(n) = A344026(n) XOR A344028(n).

The programs for A344182, the canonical program `A344182.P4846288778226888907` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344182 has offset 0).

The definition of A344182 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344182.P4846288778226888907

`xor(A344026(n), A344028(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A344182

/-- `xor(A344026(n), A344028(n))` -/
def P4846288778226888907.Spec : Prop :=
  ∀ n, P4846288778226888907.a n = A344182 n

theorem P4846288778226888907.correct : P4846288778226888907.Spec := by
  intro n
  simp only [A344182]

end A344182

/-! ## A344182.P11093884706829866757

`xor(A344026(n)-A329039(A005940(n+1)), A344026(n))`
-/

namespace A344182.P11093884706829866757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A344026 n - A329039 (A005940 (n + 1)).toNat) (A344026 n)

end

end A344182.P11093884706829866757

namespace A344182

/-- `xor(A344026(n)-A329039(A005940(n+1)), A344026(n))` -/
def P11093884706829866757.Spec : Prop :=
  ∀ n, P11093884706829866757.a n = A344182 n

end A344182

/-! ## A344182.P11490522968725443038

`xor(A069359(A005940(n+1)), A344026(n))`
-/

namespace A344182.P11490522968725443038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A069359 (A005940 (n + 1)).toNat) (A344026 n)

end

end A344182.P11490522968725443038

namespace A344182

/-- `xor(A069359(A005940(n+1)), A344026(n))` -/
def P11490522968725443038.Spec : Prop :=
  ∀ n, P11490522968725443038.a n = A344182 n

end A344182

/-! ## A344182.P16438663158457639632

`xor(A003415(A005940(n+1)), A344028(n))`
-/

namespace A344182.P16438663158457639632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003415 (A005940 (n + 1)).toNat) (A344028 n)

end

end A344182.P16438663158457639632

namespace A344182

/-- `xor(A003415(A005940(n+1)), A344028(n))` -/
def P16438663158457639632.Spec : Prop :=
  ∀ n, P16438663158457639632.a n = A344182 n

end A344182

/-! ## A344182.P4538553808940316191

`xor(A003415(A292602(4*n+3)), A344028(n))`
-/

namespace A344182.P4538553808940316191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003415 (A292602 (4 * n + 3)).toNat) (A344028 n)

end

end A344182.P4538553808940316191

namespace A344182

/-- `xor(A003415(A292602(4*n+3)), A344028(n))` -/
def P4538553808940316191.Spec : Prop :=
  ∀ n, P4538553808940316191.a n = A344182 n

end A344182

/-! ## A344182.P17189857241773218883

`xor(A319703(A005940(2*(n+1))), A344028(n))`
-/

namespace A344182.P17189857241773218883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A319703 (A005940 (2 * (n + 1))).toNat) (A344028 n)

end

end A344182.P17189857241773218883

namespace A344182

/-- `xor(A319703(A005940(2*(n+1))), A344028(n))` -/
def P17189857241773218883.Spec : Prop :=
  ∀ n, P17189857241773218883.a n = A344182 n

end A344182

/-! ## A344182.P13869472449446184480

`xor(A329033(A253563(n)), A344028(n))`
-/

namespace A344182.P13869472449446184480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A329033 (A253563 n).toNat) (A344028 n)

end

end A344182.P13869472449446184480

namespace A344182

/-- `xor(A329033(A253563(n)), A344028(n))` -/
def P13869472449446184480.Spec : Prop :=
  ∀ n, P13869472449446184480.a n = A344182 n

end A344182

/-!
# A344185: a(n) = A344141(n) - 2^n.

The programs for A344185, there is no canonical definition to state claims against.
-/

/-! ## A344185.P7633205845118113987

`A344141(n+1)-2^(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344185.P7633205845118113987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344141 (n + 1) - (2 ^ (n + 1) : ℤ)

end

end A344185.P7633205845118113987

/-! ## A344185.P14022983245901034779

`A344141(n+1)%A056450(n)`
-/

namespace A344185.P14022983245901034779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344141 (n + 1)) (A056450 n)

end

end A344185.P14022983245901034779

/-! ## A344185.P13990771139667487532

`and(A126646(n), A344141(n+1))`
-/

namespace A344185.P13990771139667487532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A344141 (n + 1))

end

end A344185.P13990771139667487532

/-! ## A344185.P15509057365888834160

`and(A285542(n), A344141(n+1))`
-/

namespace A344185.P15509057365888834160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285542 n) (A344141 (n + 1))

end

end A344185.P15509057365888834160

/-! ## A344185.P6429336346379303297

`xor(A000079(n+1), A344141(n+1))`
-/

namespace A344185.P6429336346379303297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000079 (n + 1)) (A344141 (n + 1))

end

end A344185.P6429336346379303297

/-! ## A344185.P3919387343930047379

`and(A060160(n+1), A344141(n+1))`
-/

namespace A344185.P3919387343930047379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060160 (n + 1)) (A344141 (n + 1))

end

end A344185.P3919387343930047379

/-! ## A344185.P5521729902646591841

`and(A263806(n), A344141(n+1))`
-/

namespace A344185.P5521729902646591841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A263806 n) (A344141 (n + 1))

end

end A344185.P5521729902646591841

/-! ## A344185.P11451927288497019434

`and(A267816(n), A344141(n+1))`
-/

namespace A344185.P11451927288497019434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267816 n) (A344141 (n + 1))

end

end A344185.P11451927288497019434

/-! ## A344185.P3199101886219111662

`and(A195460(n+1), A344141(n+1))`
-/

namespace A344185.P3199101886219111662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195460 (n + 1)) (A344141 (n + 1))

end

end A344185.P3199101886219111662

/-! ## A344185.P17322000518899271907

`and(A220236(n+1), A344141(n+1))`
-/

namespace A344185.P17322000518899271907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A220236 (n + 1)) (A344141 (n + 1))

end

end A344185.P17322000518899271907

/-! ## A344185.P11231725961922264712

`and(A344141(n+1), A381707(n+1))`
-/

namespace A344185.P11231725961922264712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A344141 (n + 1)) (A381707 (n + 1))

end

end A344185.P11231725961922264712

/-!
# A344186: a(n) = A344142(n) - 2^n.

The programs for A344186, there is no canonical definition to state claims against.
-/

/-! ## A344186.P11389513200493157937

`A344142(n+1)-2^(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344186.P11389513200493157937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344142 (n + 1) - (2 ^ (n + 1) : ℤ)

end

end A344186.P11389513200493157937

/-! ## A344186.P16452985723259398892

`A344142(n+1)%A056450(n)`
-/

namespace A344186.P16452985723259398892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344142 (n + 1)) (A056450 n)

end

end A344186.P16452985723259398892

/-! ## A344186.P879423646592293149

`and(A126646(n), A344142(n+1))`
-/

namespace A344186.P879423646592293149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A344142 (n + 1))

end

end A344186.P879423646592293149

/-! ## A344186.P2676948349760053546

`and(A285542(n), A344142(n+1))`
-/

namespace A344186.P2676948349760053546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285542 n) (A344142 (n + 1))

end

end A344186.P2676948349760053546

/-! ## A344186.P2225662664696956307

`and(∑[A000079(n)], A344142(n+1))`
-/

namespace A344186.P2225662664696956307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A344142 (n + 1))

end

end A344186.P2225662664696956307

/-! ## A344186.P8876821655219170095

`and(A060160(n+1), A344142(n+1))`
-/

namespace A344186.P8876821655219170095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060160 (n + 1)) (A344142 (n + 1))

end

end A344186.P8876821655219170095

/-! ## A344186.P9989966903262128792

`and(A263806(n), A344142(n+1))`
-/

namespace A344186.P9989966903262128792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A263806 n) (A344142 (n + 1))

end

end A344186.P9989966903262128792

/-! ## A344186.P11770883175513088697

`and(A267816(n), A344142(n+1))`
-/

namespace A344186.P11770883175513088697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267816 n) (A344142 (n + 1))

end

end A344186.P11770883175513088697

/-! ## A344186.P4301144633392967612

`and(A195460(n+1), A344142(n+1))`
-/

namespace A344186.P4301144633392967612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195460 (n + 1)) (A344142 (n + 1))

end

end A344186.P4301144633392967612

/-! ## A344186.P12664725887156237415

`and(A220236(n+1), A344142(n+1))`
-/

namespace A344186.P12664725887156237415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A220236 (n + 1)) (A344142 (n + 1))

end

end A344186.P12664725887156237415

/-! ## A344186.P8660587090414732898

`and(A344142(n+1), A381707(n+1))`
-/

namespace A344186.P8660587090414732898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A344142 (n + 1)) (A381707 (n + 1))

end

end A344186.P8660587090414732898

/-!
# A344188: Numbers that are the sum of three fourth powers in exactly one way.

The programs for A344188, there is no canonical definition to state claims against.
-/

/-! ## A344188.P14442584102123230920

`eq[A158464(n), A193243(n)]`
-/

namespace A344188.P14442584102123230920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158464 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193243 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344188.P14442584102123230920

/-! ## A344188.P9279642837835036662

`eq[A193243(n), A351206(n)]`
-/

namespace A344188.P9279642837835036662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193243 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344188.P9279642837835036662

/-! ## A344188.P330988362107550711

`A003337(A085736(n+1))`
-/

namespace A344188.P330988362107550711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003337 (A085736 (n + 1)).toNat

end

end A344188.P330988362107550711

/-!
# A344189: Numbers that are the sum of four fourth powers in exactly one way.

The programs for A344189, there is no canonical definition to state claims against.
-/

/-! ## A344189.P9943781794358594159

`A003338(round(root(A092863(3*(n+1)), 11)+n))`
-/

namespace A344189.P9943781794358594159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003338 (SequenceMachineLib.roundAway ((A092863 (3 * (n + 1)) : ℝ) ^ (1 / (11 : ℝ)) + (n : ℝ))).toNat

end

end A344189.P9943781794358594159

/-!
# A344191: a(n) = Catalan(n) * (n^2 + 2) / (n + 2).

The programs for A344191, the canonical program `A344191.P13941837293387142321` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344191 has offset 0).

The definition of A344191 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A344191.P13941837293387142321

`a(n-1)*2*(2*n-1)*(n²+2)/((n+2)*(n²-2*n+3))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A344191

/-- `a(n-1)*2*(2*n-1)*(n²+2)/((n+2)*(n²-2*n+3))` -/
def P13941837293387142321.Spec : Prop :=
  ∀ n, P13941837293387142321.a n = (A344191 n : ℚ)

end A344191

/-! ## A344191.P14245158025291741824

`C(2*n, n)/(n+1)*(n²+2)/(n+2)`
-/

namespace A344191.P14245158025291741824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * ((n ^ 2 + 2 : ℚ) / (n + 2 : ℚ))

end

end A344191.P14245158025291741824

namespace A344191

/-- `C(2*n, n)/(n+1)*(n²+2)/(n+2)` -/
def P14245158025291741824.Spec : Prop :=
  ∀ n, P14245158025291741824.a n = (A344191 n : ℚ)

end A344191

/-! ## A344191.P15307551182382727499

`A000984(n)-A000245(n)`
-/

namespace A344191.P15307551182382727499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A000245 n

end

end A344191.P15307551182382727499

namespace A344191

/-- `A000984(n)-A000245(n)` -/
def P15307551182382727499.Spec : Prop :=
  ∀ n, P15307551182382727499.a n = A344191 n

end A344191

/-! ## A344191.P11369654005397123176

`A000984(n)-Δ[A000108(n)]`
-/

namespace A344191.P11369654005397123176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - (f1 (n + 1) - f1 n)

end

end A344191.P11369654005397123176

namespace A344191

/-- `A000984(n)-Δ[A000108(n)]` -/
def P11369654005397123176.Spec : Prop :=
  ∀ n, P11369654005397123176.a n = A344191 n

end A344191

/-! ## A344191.P2182017240502864234

`A000984(n)-Δ[A120304(n)]`
-/

namespace A344191.P2182017240502864234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - (f1 (n + 1) - f1 n)

end

end A344191.P2182017240502864234

namespace A344191

/-- `A000984(n)-Δ[A120304(n)]` -/
def P2182017240502864234.Spec : Prop :=
  ∀ n, P2182017240502864234.a n = A344191 n

end A344191

/-! ## A344191.P4677740786127539255

`record[A126869(n)]-A000245(n)`
-/

namespace A344191.P4677740786127539255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000245 n

end

end A344191.P4677740786127539255

namespace A344191

/-- `record[A126869(n)]-A000245(n)` -/
def P4677740786127539255.Spec : Prop :=
  ∀ n, P4677740786127539255.a n = A344191 n

end A344191

/-! ## A344191.P10115750715165468047

`A037951(2*n)+A000108(n)`
-/

namespace A344191.P10115750715165468047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037951 (2 * n) + A000108 n

end

end A344191.P10115750715165468047

namespace A344191

/-- `A037951(2*n)+A000108(n)` -/
def P10115750715165468047.Spec : Prop :=
  ∀ n, P10115750715165468047.a n = A344191 n

end A344191

/-! ## A344191.P15029958193611948054

`A001405(2*n)-A000245(n)`
-/

namespace A344191.P15029958193611948054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) - A000245 n

end

end A344191.P15029958193611948054

namespace A344191

/-- `A001405(2*n)-A000245(n)` -/
def P15029958193611948054.Spec : Prop :=
  ∀ n, P15029958193611948054.a n = A344191 n

end A344191

/-! ## A344191.P12822708845880172528

`A063886(2*n)-A000245(n)`
-/

namespace A344191.P12822708845880172528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (2 * n) - A000245 n

end

end A344191.P12822708845880172528

namespace A344191

/-- `A063886(2*n)-A000245(n)` -/
def P12822708845880172528.Spec : Prop :=
  ∀ n, P12822708845880172528.a n = A344191 n

end A344191

/-! ## A344191.P11841764343733267616

`A126869(2*n)-A000245(n)`
-/

namespace A344191.P11841764343733267616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (2 * n) - A000245 n

end

end A344191.P11841764343733267616

namespace A344191

/-- `A126869(2*n)-A000245(n)` -/
def P11841764343733267616.Spec : Prop :=
  ∀ n, P11841764343733267616.a n = A344191 n

end A344191

/-! ## A344191.P13168318284610503947

`A126930(2*n)-A000245(n)`
-/

namespace A344191.P13168318284610503947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 (2 * n) - A000245 n

end

end A344191.P13168318284610503947

namespace A344191

/-- `A126930(2*n)-A000245(n)` -/
def P13168318284610503947.Spec : Prop :=
  ∀ n, P13168318284610503947.a n = A344191 n

end A344191

/-! ## A344191.P271098600834677977

`2*A088218(n)-A071724(n)`
-/

namespace A344191.P271098600834677977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088218 n - A071724 n

end

end A344191.P271098600834677977

namespace A344191

/-- `2*A088218(n)-A071724(n)` -/
def P271098600834677977.Spec : Prop :=
  ∀ n, P271098600834677977.a n = A344191 n

end A344191

/-! ## A344191.P11218790196279465717

`record[A126869(n)]-Δ[A000108(n)]`
-/

namespace A344191.P11218790196279465717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (f2 (n + 1) - f2 n)

end

end A344191.P11218790196279465717

namespace A344191

/-- `record[A126869(n)]-Δ[A000108(n)]` -/
def P11218790196279465717.Spec : Prop :=
  ∀ n, P11218790196279465717.a n = A344191 n

end A344191

/-! ## A344191.P8215717470036076389

`A000984(n)-Δ[A120588(n+1)]`
-/

namespace A344191.P8215717470036076389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - (f1 (n + 1) - f1 n)

end

end A344191.P8215717470036076389

namespace A344191

/-- `A000984(n)-Δ[A120588(n+1)]` -/
def P8215717470036076389.Spec : Prop :=
  ∀ n, P8215717470036076389.a n = A344191 n

end A344191

/-! ## A344191.P2420897460149971872

`A001405(2*n)-Δ[A000108(n)]`
-/

namespace A344191.P2420897460149971872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) - (f1 (n + 1) - f1 n)

end

end A344191.P2420897460149971872

namespace A344191

/-- `A001405(2*n)-Δ[A000108(n)]` -/
def P2420897460149971872.Spec : Prop :=
  ∀ n, P2420897460149971872.a n = A344191 n

end A344191

/-! ## A344191.P7459448129561644609

`A063886(2*n)-Δ[A000108(n)]`
-/

namespace A344191.P7459448129561644609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (2 * n) - (f1 (n + 1) - f1 n)

end

end A344191.P7459448129561644609

namespace A344191

/-- `A063886(2*n)-Δ[A000108(n)]` -/
def P7459448129561644609.Spec : Prop :=
  ∀ n, P7459448129561644609.a n = A344191 n

end A344191

/-! ## A344191.P12922873074739935098

`A081668(2*n)-Δ[A000108(n)]`
-/

namespace A344191.P12922873074739935098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 (2 * n) - (f1 (n + 1) - f1 n)

end

end A344191.P12922873074739935098

namespace A344191

/-- `A081668(2*n)-Δ[A000108(n)]` -/
def P12922873074739935098.Spec : Prop :=
  ∀ n, P12922873074739935098.a n = A344191 n

end A344191

/-! ## A344191.P3539005805821368292

`A126869(2*n)-Δ[A000108(n)]`
-/

namespace A344191.P3539005805821368292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (2 * n) - (f1 (n + 1) - f1 n)

end

end A344191.P3539005805821368292

namespace A344191

/-- `A126869(2*n)-Δ[A000108(n)]` -/
def P3539005805821368292.Spec : Prop :=
  ∀ n, P3539005805821368292.a n = A344191 n

end A344191

/-! ## A344191.P245993108309706073

`A000984(n)-Δ[A126120(2*n)]`
-/

namespace A344191.P245993108309706073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - (f1 (n + 1) - f1 n)

end

end A344191.P245993108309706073

namespace A344191

/-- `A000984(n)-Δ[A126120(2*n)]` -/
def P245993108309706073.Spec : Prop :=
  ∀ n, P245993108309706073.a n = A344191 n

end A344191

/-! ## A344191.P12369558330976770723

`A000984(n)-Δ[A131428(n)/2]`
-/

namespace A344191.P12369558330976770723
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131428 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) - (f1 (n + 1) - f1 n)

end

end A344191.P12369558330976770723

namespace A344191

/-- `A000984(n)-Δ[A131428(n)/2]` -/
def P12369558330976770723.Spec : Prop :=
  ∀ n, P12369558330976770723.a n = (A344191 n : ℚ)

end A344191

/-!
# A344193: Numbers that are the sum of four fourth powers in exactly two ways.

The programs for A344193, there is no canonical definition to state claims against.
-/

/-! ## A344193.P15773971880644912223

`A309763(A123068(n+1)+1)`
-/

namespace A344193.P15773971880644912223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309763 (A123068 (n + 1) + 1).toNat

end

end A344193.P15773971880644912223

/-!
# A344194: a(n) = Sum_{k=1..n} tau(gcd(k,n))^gcd(k,n), where tau(n) is the number of divisors of n.

The programs for A344194, there is no canonical definition to state claims against.
-/

/-! ## A344194.P9864706678170087208

`A344081(n+1)+A001222(A340027(n))`
-/

namespace A344194.P9864706678170087208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344081 (n + 1) + A001222 (A340027 n).toNat

end

end A344194.P9864706678170087208

/-! ## A344194.P7879911578724119683

`∑{d}[n+1, A236284(#)]+A001222(A340027(n))`
-/

namespace A344194.P7879911578724119683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A236284 d + A001222 (A340027 n).toNat

end

end A344194.P7879911578724119683

/-! ## A344194.P4027199741232055749

`∑{d}[n+1, A000005(#)^#]+A001222(A340027(n))`
-/

namespace A344194.P4027199741232055749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d ^ d + A001222 (A340027 n).toNat

end

end A344194.P4027199741232055749

/-!
# A344196: Numbers that are the sum of six fifth powers in ten or more ways.

The programs for A344196, there is no canonical definition to state claims against.
-/

/-! ## A344196.P12418842264418456419

`record[A346365(A274821(n))]`
-/

namespace A344196.P12418842264418456419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346365 (A274821 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344196.P12418842264418456419

/-! ## A344196.P14355003448235649775

`A346365(A043320(n+1))`
-/

namespace A344196.P14355003448235649775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346365 (A043320 (n + 1)).toNat

end

end A344196.P14355003448235649775

/-! ## A344196.P3503968792133674806

`A346365(A044917(n+1))`
-/

namespace A344196.P3503968792133674806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346365 (A044917 (n + 1)).toNat

end

end A344196.P3503968792133674806

/-! ## A344196.P3078889560842018048

`A346365(A055645(n+1))`
-/

namespace A344196.P3078889560842018048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346365 (A055645 (n + 1)).toNat

end

end A344196.P3078889560842018048

/-! ## A344196.P14847152141306075610

`A346365(A055646(n)+1)`
-/

namespace A344196.P14847152141306075610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346365 (A055646 n + 1).toNat

end

end A344196.P14847152141306075610

/-!
# A344198: Numbers m > 9 such that x^m + x^9 + 1 is irreducible over GF(2) while x^m + x^9 + x^6 + x^3 + 1 = x^m + (x^3 + 1)^3 is not.

The programs for A344198, there is no canonical definition to state claims against.
-/

/-! ## A344198.P16111614789989747081

`filter[A057479(n+1), A079978(#)]`
-/

namespace A344198.P16111614789989747081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079978 (f1 j).toNat = 1) n)

end

end A344198.P16111614789989747081

/-! ## A344198.P11071168771302347518

`filter[A057479(n+1), A079979(#)]`
-/

namespace A344198.P11071168771302347518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079979 (f1 j).toNat = 1) n)

end

end A344198.P11071168771302347518

/-! ## A344198.P1916076053051102358

`filter[A057479(n+1), A296210(#)]`
-/

namespace A344198.P1916076053051102358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296210 (f1 j).toNat = 1) n)

end

end A344198.P1916076053051102358

/-! ## A344198.P8818228372328407380

`filter[A057479(n+2), A173857(#)]`
-/

namespace A344198.P8818228372328407380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057479 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A173857 (f1 j).toNat = 1) n)

end

end A344198.P8818228372328407380

/-! ## A344198.P6040374026567616197

`filter[A057479(n+2), A329680(#)]`
-/

namespace A344198.P6040374026567616197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057479 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A329680 (f1 j).toNat = 1) n)

end

end A344198.P6040374026567616197

/-!
# A344199: Numbers m > 15 such that x^m + x^15 + 1 is irreducible over GF(2) while x^m + x^15 + x^10 + x^5 + 1 = x^m + (x^5 + 1)^3 is not.

The programs for A344199, there is no canonical definition to state claims against.
-/

/-! ## A344199.P16871450449537981820

`A230354(A194903(n+1)+A152618(n))`
-/

namespace A344199.P16871450449537981820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230354 (A194903 (n + 1) + A152618 n).toNat

end

end A344199.P16871450449537981820

