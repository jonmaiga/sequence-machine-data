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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A347902: a(n) = a(n-1) + a(n-3) + a(n-4) with initial values a(0) = 8, a(1)=5, a(2) = 13, a(3) = 30.

The programs for A347902, the canonical program `A347902.P12320210847358190094` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347902 has offset 0).

The definition of A347902 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A347902.P12320210847358190094`, by `A347902.P12320210847358190094.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A347902.P1056277574865879687

`ogf((8-3x+8x^2+9x^3)/(1-x-x^3-x^4))`
-/

namespace A347902.P1056277574865879687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -3, 8, 9] [1, -1, 0, -1, -1] n

end

end A347902.P1056277574865879687

namespace A347902

/-- `ogf((8-3x+8x^2+9x^3)/(1-x-x^3-x^4))` -/
def P1056277574865879687.Spec : Prop :=
  ∀ n, P1056277574865879687.a n = A347902 n

end A347902

/-! ## A347902.P12320210847358190094

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=8, a(1)=5, a(2)=13, a(3)=30`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A347902

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P12320210847358190094.Spec : Prop :=
  ∀ n, (P12320210847358190094.a n : ℤ) = A347902 n

theorem P12320210847358190094.correct : P12320210847358190094.Spec := by
  intro n
  simp only [A347902]

end A347902

/-! ## A347902.P7558165465822409902

`A111572(n+2)+A111572(n+6)+A111571(n+9)`
-/

namespace A347902.P7558165465822409902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111572 (n + 2) + (A111572 (n + 6) + A111571 (n + 9))

end

end A347902.P7558165465822409902

namespace A347902

/-- `A111572(n+2)+A111572(n+6)+A111571(n+9)` -/
def P7558165465822409902.Spec : Prop :=
  ∀ n, P7558165465822409902.a n = A347902 n

end A347902

/-!
# A347906: Numbers k such that 2^(2*k-1) == 1 (mod k).

The programs for A347906, there is no canonical definition to state claims against.
-/

/-! ## A347906.P6641117777951293486

`A006935(n+1)/2`
-/

namespace A347906.P6641117777951293486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006935 (n + 1) : ℚ) / 2

end

end A347906.P6641117777951293486

/-! ## A347906.P1546254602242209561

`record[ratio[A006935(A152271(n))]]`
-/

namespace A347906.P1546254602242209561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006935 (A152271 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347906.P1546254602242209561

/-! ## A347906.P360534125702743121

`record[ratio[A006935(A158416(n))]]`
-/

namespace A347906.P360534125702743121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006935 (A158416 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347906.P360534125702743121

/-! ## A347906.P2198036621232250882

`record[A130421(n+1)%2*A130421(n+1)]`
-/

namespace A347906.P2198036621232250882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130421 (n + 1)) 2 * A130421 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347906.P2198036621232250882

/-! ## A347906.P7241364302561746034

`2^A008683(A005382(n+1))*A006935(n+1)`
-/

namespace A347906.P7241364302561746034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A005382 (n + 1)).toNat : ℤ) * (A006935 (n + 1) : ℚ)

end

end A347906.P7241364302561746034

/-!
# A347907: Numbers k such that 2^(4*k-1) == 1 (mod k).

The programs for A347907, there is no canonical definition to state claims against.
-/

/-! ## A347907.P1738344287321012776

`A347908(n+1)/2`
-/

namespace A347907.P1738344287321012776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347908 (n + 1) : ℚ) / 2

end

end A347907.P1738344287321012776

/-! ## A347907.P8145233823464660221

`2^A008683(A020483(n))*A347908(n+1)`
-/

namespace A347907.P8145233823464660221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ) * (A347908 (n + 1) : ℚ)

end

end A347907.P8145233823464660221

/-! ## A347907.P18410652058783882755

`2^A008683(A057673(n))*A347908(n+1)`
-/

namespace A347907.P18410652058783882755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A057673 n).toNat : ℤ) * (A347908 (n + 1) : ℚ)

end

end A347907.P18410652058783882755

/-! ## A347907.P1145092214780568873

`2^A008683(A023202(n+1))*A347908(n+1)`
-/

namespace A347907.P1145092214780568873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A023202 (n + 1)).toNat : ℤ) * (A347908 (n + 1) : ℚ)

end

end A347907.P1145092214780568873

/-! ## A347907.P1877419047621993982

`2^A008683(A171832(n+1))*A347908(n+1)`
-/

namespace A347907.P1877419047621993982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A171832 (n + 1)).toNat : ℤ) * (A347908 (n + 1) : ℚ)

end

end A347907.P1877419047621993982

/-! ## A347907.P4461623579125585046

`floor(A175905(n+1)/4)`
-/

namespace A347907.P4461623579125585046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A175905 (n + 1) : ℚ) / 4⌋

end

end A347907.P4461623579125585046

/-! ## A347907.P16834461887262638781

`or(1-A096268(n), round(A175905(n+1)/4))`
-/

namespace A347907.P16834461887262638781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (1 - A096268 n) (SequenceMachineLib.roundAway ((A175905 (n + 1) : ℚ) / 4))

end

end A347907.P16834461887262638781

/-! ## A347907.P10076718905065595436

`ceil(A175905(n+1)/4-A001222(A002385(n+1)))`
-/

namespace A347907.P10076718905065595436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A175905 (n + 1) : ℚ) / 4 - (A001222 (A002385 (n + 1)).toNat : ℚ)⌉

end

end A347907.P10076718905065595436

/-!
# A347908: Even numbers k such that 2^(2*k) == 2 (mod k).

The programs for A347908, there is no canonical definition to state claims against.
-/

/-! ## A347908.P14469886377895378733

`A347907(n+1)*2`
-/

namespace A347908.P14469886377895378733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347907 (n + 1) * 2

end

end A347908.P14469886377895378733

/-! ## A347908.P17794851054575340223

`2*A347907(n+1)`
-/

namespace A347908.P17794851054575340223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A347907 (n + 1)

end

end A347908.P17794851054575340223

/-! ## A347908.P1241251234441701497

`A347907(n+1)+A347907(n%(n+1)+1)`
-/

namespace A347908.P1241251234441701497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347907 (n + 1) + A347907 (n % (n + 1) + 1)

end

end A347908.P1241251234441701497

/-! ## A347908.P1093821261379616527

`A347907(n+1)+A347907(n+1)+char[A031755(n+1)]`
-/

namespace A347908.P1093821261379616527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031755 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347907 (n + 1) + (A347907 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A347908.P1093821261379616527

/-! ## A347908.P4118243779071875607

`A347907(n+1)+A347907(n+1)/A250208(A250208(n+1))`
-/

namespace A347908.P4118243779071875607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347907 (n + 1) : ℚ) + (A347907 (n + 1) : ℚ) / (A250208 (A250208 (n + 1)).toNat : ℚ)

end

end A347908.P4118243779071875607

/-! ## A347908.P15867628852911001440

`floor(A175905(n+1)/2)`
-/

namespace A347908.P15867628852911001440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A175905 (n + 1) : ℚ) / 2⌋

end

end A347908.P15867628852911001440

/-!
# A347912: a(n) = Sum_{k=1..n} k - floor(sqrt(k)+1/2) * floor(sqrt(k-1)).

The programs for A347912, the canonical program `A347912.P8634845992585817048` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347912 has offset 1).

The definition of A347912 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347912.P8634845992585817048

`∑[n%floor(sqrt(n+1))+1]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A347912

/-- `∑[n%floor(sqrt(n+1))+1]` -/
def P8634845992585817048.Spec : Prop :=
  ∀ n, (P8634845992585817048.a n : ℤ) = A347912 (n + 1)

theorem P8634845992585817048.correct : P8634845992585817048.Spec := by
  intro n
  simp only [A347912, Nat.add_sub_cancel]

end A347912

/-! ## A347912.P17700713454386361364

`∑[(n-char[1])%round(sqrt(n+1))]+n+1`
-/

namespace A347912.P17700713454386361364
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)) (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A347912.P17700713454386361364

namespace A347912

/-- `∑[(n-char[1])%round(sqrt(n+1))]+n+1` -/
def P17700713454386361364.Spec : Prop :=
  ∀ n, P17700713454386361364.a n = A347912 (n + 1)

end A347912

/-! ## A347912.P1744264308998022634

`∑[(comp[round(sqrt(n+1))²+n]+1)%ceil(record[sqrt(xor(3, n))])]`
-/

namespace A347912.P1744264308998022634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 + (n : ℤ)

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.xor 3 n : ℝ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1 : ℤ) ⌈f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347912.P1744264308998022634

namespace A347912

/-- `∑[(comp[round(sqrt(n+1))²+n]+1)%ceil(record[sqrt(xor(3, n))])]` -/
def P1744264308998022634.Spec : Prop :=
  ∀ n, P1744264308998022634.a n = A347912 (n + 1)

end A347912

/-! ## A347912.P13726006402416956841

`∑[A055087(n)+1]`
-/

namespace A347912.P13726006402416956841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347912.P13726006402416956841

namespace A347912

/-- `∑[A055087(n)+1]` -/
def P13726006402416956841.Spec : Prop :=
  ∀ n, P13726006402416956841.a n = A347912 (n + 1)

theorem P13726006402416956841.correct : P13726006402416956841.Spec := by
  intro n
  simp only [A347912, Nat.add_sub_cancel, A347912.P13726006402416956841.f1, A347912.P13726006402416956841.a, A347912.P8634845992585817048.f1, A347912.P8634845992585817048.a, A055087, A055087.P17964067358640094815.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A347912

/-! ## A347912.P17933523156270549097

`∑[A122197(n+1)]`
-/

namespace A347912.P17933523156270549097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347912.P17933523156270549097

namespace A347912

/-- `∑[A122197(n+1)]` -/
def P17933523156270549097.Spec : Prop :=
  ∀ n, P17933523156270549097.a n = A347912 (n + 1)

end A347912

/-! ## A347912.P10844121504161412098

`∑[sqrt(A126114(n+1))]`
-/

namespace A347912.P10844121504161412098
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A126114 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347912.P10844121504161412098

namespace A347912

/-- `∑[sqrt(A126114(n+1))]` -/
def P10844121504161412098.Spec : Prop :=
  ∀ n, P10844121504161412098.a n = (A347912 (n + 1) : ℝ)

end A347912

/-! ## A347912.P888356713982334387

`∑[2*n+1-lt[0, A098158(n)]]`
-/

namespace A347912.P888356713982334387
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347912.P888356713982334387

namespace A347912

/-- `∑[2*n+1-lt[0, A098158(n)]]` -/
def P888356713982334387.Spec : Prop :=
  ∀ n, P888356713982334387.a n = A347912 (n + 1)

end A347912

/-! ## A347912.P9579005325679923345

`∑[A000005(2^A055087(n))]`
-/

namespace A347912.P9579005325679923345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A055087 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347912.P9579005325679923345

namespace A347912

/-- `∑[A000005(2^A055087(n))]` -/
def P9579005325679923345.Spec : Prop :=
  ∀ n, P9579005325679923345.a n = A347912 (n + 1)

end A347912

/-!
# A347913: a(n) is the number of multisets of integers that are possible to reach by starting with n occurrences of 0 and by splitting. Splitting is taking 2 occurrences of the same integer and incrementing one of them by 1 and decrementing the other occurrence by 1.

The programs for A347913, there is no canonical definition to state claims against.
-/

/-! ## A347913.P7017206241828922905

`A383014(A322132(n))`
-/

namespace A347913.P7017206241828922905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383014 (A322132 n).toNat

end

end A347913.P7017206241828922905

/-!
# A347915: Expansion of e.g.f. Product_{k>=1} (1 + x^k)^exp(x).

The programs for A347915, there is no canonical definition to state claims against.
-/

/-! ## A347915.P1499080353964427364

`A008619(A134091(n)-A134085(n))`
-/

namespace A347915.P1499080353964427364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A134091 n - A134085 n).toNat

end

end A347915.P1499080353964427364

/-! ## A347915.P6739547883463294614

`A237886(A237880(n+1))+A215708(n)`
-/

namespace A347915.P6739547883463294614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237886 (A237880 (n + 1)).toNat + A215708 n

end

end A347915.P6739547883463294614

/-!
# A347917: The coefficients in the expansion x_1(x_1 + x_2)...(x_1 + x_2 + ... + x_n), given row by row.

The programs for A347917, there is no canonical definition to state claims against.
-/

/-! ## A347917.P5562508692521558169

`A051903(A345922(3*n+2)+A156903(n+1))`
-/

namespace A347917.P5562508692521558169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A345922 (3 * n + 2) + A156903 (n + 1)).toNat

end

end A347917.P5562508692521558169

/-! ## A347917.P16150635759047677412

`gcd(A219595(2*n+3), A317586(A317586(n+1)))`
-/

namespace A347917.P16150635759047677412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A219595 (2 * n + 3)) (A317586 (A317586 (n + 1)).toNat)

end

end A347917.P16150635759047677412

/-! ## A347917.P3158565817788643756

`A193073(A111212(n)+A000677(n))`
-/

namespace A347917.P3158565817788643756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193073 (A111212 n + A000677 n).toNat

end

end A347917.P3158565817788643756

/-! ## A347917.P2273399348182049614

`A368414(A218084(n+1)+A113581(n))`
-/

namespace A347917.P2273399348182049614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368414 (A218084 (n + 1) + A113581 n).toNat

end

end A347917.P2273399348182049614

/-! ## A347917.P18224713040060345896

`A050320(A278235(n)^A325528(n+1))`
-/

namespace A347917.P18224713040060345896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (SequenceMachineLib.roundAway ((A278235 n : ℚ) ^ (A325528 (n + 1) : ℤ))).toNat

end

end A347917.P18224713040060345896

/-!
# A347921: Number of minimal total dominating sets in the n X n rook graph.

The programs for A347921, there is no canonical definition to state claims against.
-/

/-! ## A347921.P14489285638837166760

`A384118(∑[4*(n+1)])`
-/

namespace A347921.P14489285638837166760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384118 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A347921.P14489285638837166760

/-!
# A347922: Number of minimal total dominating sets in the n X n rook complement graph.

The programs for A347922, the canonical program `A347922.P18188876204702734571` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347922 has offset 1).

The definition of A347922 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A347922.P455834510079732141

`ogf((x+44x^2+156x^3+92x^4+7x^5)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A347922.P455834510079732141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 44, 156, 92, 7] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A347922.P455834510079732141

namespace A347922

/-- `ogf((x+44x^2+156x^3+92x^4+7x^5)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P455834510079732141.Spec : Prop :=
  ∀ n, P455834510079732141.a n = A347922 (n + 1)

end A347922

/-! ## A347922.P18188876204702734571

`(5*(n+1)²-11*(n+1)+5)*(n+1)²*n²/12`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A347922

/-- `(5*(n+1)²-11*(n+1)+5)*(n+1)²*n²/12` -/
def P18188876204702734571.Spec : Prop :=
  ∀ n, P18188876204702734571.a n = (A347922 (n + 1) : ℚ)

end A347922

/-! ## A347922.P9776052807749751505

`6*C(n+1, 3)²+2*C(n+1, 2)^3-C(n+1, 2)²`
-/

namespace A347922.P9776052807749751505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * Nat.choose (n + 1) 3 ^ 2 + 2 * Nat.choose (n + 1) 2 ^ 3 : ℤ) - (Nat.choose (n + 1) 2 ^ 2 : ℤ)

end

end A347922.P9776052807749751505

namespace A347922

/-- `6*C(n+1, 3)²+2*C(n+1, 2)^3-C(n+1, 2)²` -/
def P9776052807749751505.Spec : Prop :=
  ∀ n, P9776052807749751505.a n = A347922 (n + 1)

end A347922

/-! ## A347922.P7757561087139527600

`A163274(n)-A331528(n)`
-/

namespace A347922.P7757561087139527600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163274 n - A331528 n

end

end A347922.P7757561087139527600

namespace A347922

/-- `A163274(n)-A331528(n)` -/
def P7757561087139527600.Spec : Prop :=
  ∀ n, P7757561087139527600.a n = A347922 (n + 1)

end A347922

/-! ## A347922.P1467411430322462739

`A163274(n)-∑[A168178(n)]`
-/

namespace A347922.P1467411430322462739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163274 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347922.P1467411430322462739

namespace A347922

/-- `A163274(n)-∑[A168178(n)]` -/
def P1467411430322462739.Spec : Prop :=
  ∀ n, P1467411430322462739.a n = A347922 (n + 1)

end A347922

/-! ## A347922.P4307571918719549447

`n²*A163102(n)-A331528(n)`
-/

namespace A347922.P4307571918719549447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A163102 n - A331528 n

end

end A347922.P4307571918719549447

namespace A347922

/-- `n²*A163102(n)-A331528(n)` -/
def P4307571918719549447.Spec : Prop :=
  ∀ n, P4307571918719549447.a n = A347922 (n + 1)

end A347922

/-! ## A347922.P7356948996460016085

`(n-A027444(n))²/2-A331528(n)`
-/

namespace A347922.P7356948996460016085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A027444 n) ^ 2 : ℚ) / 2 - (A331528 n : ℚ)

end

end A347922.P7356948996460016085

namespace A347922

/-- `(n-A027444(n))²/2-A331528(n)` -/
def P7356948996460016085.Spec : Prop :=
  ∀ n, P7356948996460016085.a n = (A347922 (n + 1) : ℚ)

end A347922

/-! ## A347922.P6862463708850962634

`A163275(n)/A028310(n)-A331528(n)`
-/

namespace A347922.P6862463708850962634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163275 n : ℚ) / (A028310 n : ℚ) - (A331528 n : ℚ)

end

end A347922.P6862463708850962634

namespace A347922

/-- `A163275(n)/A028310(n)-A331528(n)` -/
def P6862463708850962634.Spec : Prop :=
  ∀ n, P6862463708850962634.a n = (A347922 (n + 1) : ℚ)

end A347922

/-!
# A347925: a(n) is the lowest common denominator of n-th Gilbreath polynomial.

The programs for A347925, there is no canonical definition to state claims against.
-/

/-! ## A347925.P5431619327812482036

`A030065(abs(2-n)!)`
-/

namespace A347925.P5431619327812482036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030065 (Nat.factorial |2 - (n : ℤ)|.toNat)

end

end A347925.P5431619327812482036

/-! ## A347925.P636726914041281219

`A060819(abs(2-n)!)`
-/

namespace A347925.P636726914041281219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (Nat.factorial |2 - (n : ℤ)|.toNat)

end

end A347925.P636726914041281219

/-! ## A347925.P11350058397350669618

`A165342(abs(2-n)!)`
-/

namespace A347925.P11350058397350669618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165342 (Nat.factorial |2 - (n : ℤ)|.toNat)

end

end A347925.P11350058397350669618

/-! ## A347925.P12070406974059741919

`A173234(abs(2-n)!)`
-/

namespace A347925.P12070406974059741919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173234 (Nat.factorial |2 - (n : ℤ)|.toNat)

end

end A347925.P12070406974059741919

/-! ## A347925.P4882921288406105883

`A246416(abs(2-n)!)`
-/

namespace A347925.P4882921288406105883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246416 (Nat.factorial |2 - (n : ℤ)|.toNat)

end

end A347925.P4882921288406105883

/-!
# A347929: a(n) = 2^(-1 + (n + n mod 2)/2)*abs(permanent(M_n)) where M_n is the n X n matrix M_n(j, k) = cos(Pi*j*k/n) if n >= 1 and a(0) = 1.

The programs for A347929, there is no canonical definition to state claims against.
-/

/-! ## A347929.P16390624426733187939

`A038569(A003483(n))-1`
-/

namespace A347929.P16390624426733187939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038569 (A003483 n).toNat - 1

end

end A347929.P16390624426733187939

/-! ## A347929.P13463448967312615772

`A000196(and(A000420(n), A293857(n)))`
-/

namespace A347929.P13463448967312615772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.land (A000420 n) (A293857 n)).toNat

end

end A347929.P13463448967312615772

/-! ## A347929.P12522032917352625950

`C(A000188(A293857(n)), A000188(2*n+1))`
-/

namespace A347929.P12522032917352625950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000188 (A293857 n).toNat).toNat (A000188 (2 * n + 1)).toNat

end

end A347929.P12522032917352625950

/-! ## A347929.P3172189220315186729

`A000188(A293857(n))%A038569(A003483(n))`
-/

namespace A347929.P3172189220315186729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000188 (A293857 n).toNat) (A038569 (A003483 n).toNat)

end

end A347929.P3172189220315186729

/-!
# A347930: 3-Springer numbers.

The programs for A347930, there is no canonical definition to state claims against.
-/

/-! ## A347930.P8289657200475547756

`A112975(or(1, A333890(n)))`
-/

namespace A347930.P8289657200475547756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112975 (Int.lor 1 (A333890 n)).toNat

end

end A347930.P8289657200475547756

/-! ## A347930.P17789555916236622104

`A320922(A000088(n))-(n-gcd(n, ∑[n]))`
-/

namespace A347930.P17789555916236622104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320922 (A000088 n).toNat - ((n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ))

end

end A347930.P17789555916236622104

/-!
# A347931: Nonprime numbers that divide their second arithmetic derivative.

The programs for A347931, there is no canonical definition to state claims against.
-/

/-! ## A347931.P7491842532590675448

`filter[A348284(n+1), A005171(#)]`
-/

namespace A347931.P7491842532590675448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A347931.P7491842532590675448

/-! ## A347931.P10247336294045798679

`filter[A348284(n+1), A087049(#)]`
-/

namespace A347931.P10247336294045798679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A347931.P10247336294045798679

/-! ## A347931.P11223654389607491360

`∩[A348284(n+1), A400276(n+1)]`
-/

namespace A347931.P11223654389607491360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347931.P11223654389607491360

/-! ## A347931.P4237068428017971573

`∩[A162966(n+1), A348284(n+1)]`
-/

namespace A347931.P4237068428017971573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347931.P4237068428017971573

/-! ## A347931.P14443778158427444058

`∩[A018252(n+1), A348284(n+1)]`
-/

namespace A347931.P14443778158427444058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347931.P14443778158427444058

/-!
# A347933: Positive integers that can't be written in the form a+b+c for some positive integers a, b, and c satisfying gcd(a,b)=1, gcd(a,c)>1, and gcd(b,c)>1.

The programs for A347933, there is no canonical definition to state claims against.
-/

/-! ## A347933.P12163920776917884657

`lt[n*A306488(n), n]`
-/

namespace A347933.P12163920776917884657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A306488 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A347933.P12163920776917884657

/-! ## A347933.P4765661535393725435

`eq[A000007(n), A306488(n)]`
-/

namespace A347933.P4765661535393725435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306488 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A347933.P4765661535393725435

/-! ## A347933.P11433246428664226399

`eq[A000038(n), A306488(n)]`
-/

namespace A347933.P11433246428664226399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306488 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A347933.P11433246428664226399

/-! ## A347933.P4417637068316071202

`eq[A015824(n), A306488(n)]`
-/

namespace A347933.P4417637068316071202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015824 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306488 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A347933.P4417637068316071202

/-! ## A347933.P11684939845121029745

`eq[A112316(n), A306488(n)]`
-/

namespace A347933.P11684939845121029745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306488 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A347933.P11684939845121029745

/-!
# A347935: Numbers k such that A187795(k) > 2*k.

The programs for A347935, the canonical program `A347935.P14454853274330969859` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347935 has offset 1).

The definition of A347935 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1284 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347935.P14454853274330969859

`lt[n, A294889(n+1)]+1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A347935

/-- `lt[n, A294889(n+1)]+1` -/
def P14454853274330969859.Spec : Prop :=
  ∀ n, (P14454853274330969859.a n : ℤ) = A347935 (n + 1)

theorem P14454853274330969859.correct : P14454853274330969859.Spec := by
  intro n
  simp only [A347935, Nat.add_sub_cancel]

end A347935

/-! ## A347935.P10690832582446983489

`lt[n, A294889(A028310(n))]`
-/

namespace A347935.P10690832582446983489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294889 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A347935.P10690832582446983489

namespace A347935

/-- `lt[n, A294889(A028310(n))]` -/
def P10690832582446983489.Spec : Prop :=
  ∀ n, (P10690832582446983489.a n : ℤ) = A347935 (n + 1)

end A347935

/-! ## A347935.P18053463777636196740

`lt[A004273(n), A187795(n+1)]+1`
-/

namespace A347935.P18053463777636196740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187795 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A347935.P18053463777636196740

namespace A347935

/-- `lt[A004273(n), A187795(n+1)]+1` -/
def P18053463777636196740.Spec : Prop :=
  ∀ n, (P18053463777636196740.a n : ℤ) = A347935 (n + 1)

end A347935

/-! ## A347935.P10293104154955218006

`lt[A004277(n), A187795(n+1)]+1`
-/

namespace A347935.P10293104154955218006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187795 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A347935.P10293104154955218006

namespace A347935

/-- `lt[A004277(n), A187795(n+1)]+1` -/
def P10293104154955218006.Spec : Prop :=
  ∀ n, (P10293104154955218006.a n : ℤ) = A347935 (n + 1)

end A347935

/-! ## A347935.P13812594613749773633

`lt[A005408(n), A187795(n+1)]+1`
-/

namespace A347935.P13812594613749773633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187795 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A347935.P13812594613749773633

namespace A347935

/-- `lt[A005408(n), A187795(n+1)]+1` -/
def P13812594613749773633.Spec : Prop :=
  ∀ n, (P13812594613749773633.a n : ℤ) = A347935 (n + 1)

end A347935

/-! ## A347935.P14896317190245971318

`A014681(lt[2*n, A187795(n+1)])`
-/

namespace A347935.P14896317190245971318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A347935.P14896317190245971318

namespace A347935

/-- `A014681(lt[2*n, A187795(n+1)])` -/
def P14896317190245971318.Spec : Prop :=
  ∀ n, P14896317190245971318.a n = A347935 (n + 1)

end A347935

/-! ## A347935.P18416084579705982744

`A020725(lt[2*n, A187795(n+1)])`
-/

namespace A347935.P18416084579705982744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A347935.P18416084579705982744

namespace A347935

/-- `A020725(lt[2*n, A187795(n+1)])` -/
def P18416084579705982744.Spec : Prop :=
  ∀ n, P18416084579705982744.a n = A347935 (n + 1)

end A347935

/-! ## A347935.P15010831155407358237

`A065475(lt[2*n, A187795(n+1)])`
-/

namespace A347935.P15010831155407358237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A347935.P15010831155407358237

namespace A347935

/-- `A065475(lt[2*n, A187795(n+1)])` -/
def P15010831155407358237.Spec : Prop :=
  ∀ n, P15010831155407358237.a n = A347935 (n + 1)

end A347935

/-! ## A347935.P11002442272818529572

`A014681(lt[n, A187795(n+1)/2])`
-/

namespace A347935.P11002442272818529572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187795 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A347935.P11002442272818529572

namespace A347935

/-- `A014681(lt[n, A187795(n+1)/2])` -/
def P11002442272818529572.Spec : Prop :=
  ∀ n, P11002442272818529572.a n = A347935 (n + 1)

end A347935

/-! ## A347935.P6255402230169939965

`A020725(lt[n, A187795(n+1)/2])`
-/

namespace A347935.P6255402230169939965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187795 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A347935.P6255402230169939965

namespace A347935

/-- `A020725(lt[n, A187795(n+1)/2])` -/
def P6255402230169939965.Spec : Prop :=
  ∀ n, P6255402230169939965.a n = A347935 (n + 1)

end A347935

/-! ## A347935.P5271083439714758433

`A065475(lt[n, A187795(n+1)/2])`
-/

namespace A347935.P5271083439714758433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187795 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A347935.P5271083439714758433

namespace A347935

/-- `A065475(lt[n, A187795(n+1)/2])` -/
def P5271083439714758433.Spec : Prop :=
  ∀ n, P5271083439714758433.a n = A347935 (n + 1)

end A347935

/-! ## A347935.P6425379642147932975

`A014681(lt[n, A187795(n+1)-n])`
-/

namespace A347935.P6425379642147932975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187795 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A347935.P6425379642147932975

namespace A347935

/-- `A014681(lt[n, A187795(n+1)-n])` -/
def P6425379642147932975.Spec : Prop :=
  ∀ n, P6425379642147932975.a n = A347935 (n + 1)

end A347935

/-! ## A347935.P4185484593645995243

`A020725(lt[n, A187795(n+1)-n])`
-/

namespace A347935.P4185484593645995243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187795 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A347935.P4185484593645995243

namespace A347935

/-- `A020725(lt[n, A187795(n+1)-n])` -/
def P4185484593645995243.Spec : Prop :=
  ∀ n, P4185484593645995243.a n = A347935 (n + 1)

end A347935

/-! ## A347935.P537121496412814287

`A065475(lt[n, A187795(n+1)-n])`
-/

namespace A347935.P537121496412814287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187795 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A347935.P537121496412814287

namespace A347935

/-- `A065475(lt[n, A187795(n+1)-n])` -/
def P537121496412814287.Spec : Prop :=
  ∀ n, P537121496412814287.a n = A347935 (n + 1)

end A347935

/-! ## A347935.P4558569198302824172

`lt[A294888(n+1), A033880(n+1)]+1`
-/

namespace A347935.P4558569198302824172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A347935.P4558569198302824172

namespace A347935

/-- `lt[A294888(n+1), A033880(n+1)]+1` -/
def P4558569198302824172.Spec : Prop :=
  ∀ n, (P4558569198302824172.a n : ℤ) = A347935 (n + 1)

end A347935

/-! ## A347935.P7681920297941770131

`lt[A294888(n+1), A237588(n+1)]+1`
-/

namespace A347935.P7681920297941770131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A347935.P7681920297941770131

namespace A347935

/-- `lt[A294888(n+1), A237588(n+1)]+1` -/
def P7681920297941770131.Spec : Prop :=
  ∀ n, (P7681920297941770131.a n : ℤ) = A347935 (n + 1)

end A347935

/-! ## A347935.P6431029867306090737

`lt[A004273(n), A187795(A028310(n))]`
-/

namespace A347935.P6431029867306090737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187795 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A347935.P6431029867306090737

namespace A347935

/-- `lt[A004273(n), A187795(A028310(n))]` -/
def P6431029867306090737.Spec : Prop :=
  ∀ n, (P6431029867306090737.a n : ℤ) = A347935 (n + 1)

end A347935

/-! ## A347935.P13472677923416205489

`A020725(lt[A294888(n+1), A033880(n+1)])`
-/

namespace A347935.P13472677923416205489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A347935.P13472677923416205489

namespace A347935

/-- `A020725(lt[A294888(n+1), A033880(n+1)])` -/
def P13472677923416205489.Spec : Prop :=
  ∀ n, P13472677923416205489.a n = A347935 (n + 1)

end A347935

/-! ## A347935.P15919724820250894931

`A020725(lt[A294888(n+1), A237588(n+1)])`
-/

namespace A347935.P15919724820250894931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A347935.P15919724820250894931

namespace A347935

/-- `A020725(lt[A294888(n+1), A237588(n+1)])` -/
def P15919724820250894931.Spec : Prop :=
  ∀ n, P15919724820250894931.a n = A347935 (n + 1)

end A347935

/-! ## A347935.P73063977484533418

`A020725(lt[A294888(n+1)+n, A001065(n+1)])`
-/

namespace A347935.P73063977484533418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294888 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A347935.P73063977484533418

namespace A347935

/-- `A020725(lt[A294888(n+1)+n, A001065(n+1)])` -/
def P73063977484533418.Spec : Prop :=
  ∀ n, P73063977484533418.a n = A347935 (n + 1)

end A347935

/-!
# A347936: Odd numbers k such that A187795(k) > 2*k.

The programs for A347936, there is no canonical definition to state claims against.
-/

/-! ## A347936.P4001385542349370153

`A347939(A000005(5^n))`
-/

namespace A347936.P4001385542349370153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347939 (A000005 (5 ^ n)).toNat

end

end A347936.P4001385542349370153

/-! ## A347936.P365684955745681672

`A347939(∑[A269948(n)!])`
-/

namespace A347936.P365684955745681672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A269948 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347939 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A347936.P365684955745681672

/-! ## A347936.P467133628363967078

`A347939(∑[A309629(n)!])`
-/

namespace A347936.P467133628363967078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A309629 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347939 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A347936.P467133628363967078

/-! ## A347936.P847576999935676333

`A347939(A032551(n+1)+1)`
-/

namespace A347936.P847576999935676333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347939 (A032551 (n + 1) + 1).toNat

end

end A347936.P847576999935676333

/-!
# A347938: Primitive terms of A347935: terms of A347935 that are not multiples of other terms of A347935.

The programs for A347938, there is no canonical definition to state claims against.
-/

/-! ## A347938.P9046969841151694309

`6*A340846(A111157(n+1))`
-/

namespace A347938.P9046969841151694309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A340846 (A111157 (n + 1)).toNat

end

end A347938.P9046969841151694309

/-! ## A347938.P4482902519484214942

`A359831(A260781(n)+A014574(n+1))`
-/

namespace A347938.P4482902519484214942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359831 (A260781 n + A014574 (n + 1)).toNat

end

end A347938.P4482902519484214942

/-!
# A347939: Primitive terms of A347936: terms of A347936 that are not multiples of other terms of A347936.

The programs for A347939, there is no canonical definition to state claims against.
-/

/-! ## A347939.P16339812419019952823

`A347936(∑[A326476(n)!])`
-/

namespace A347939.P16339812419019952823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A326476 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347936 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A347939.P16339812419019952823

/-! ## A347939.P992971352823722675

`A347936(A061920(n+1)%A061949(3*n+4))`
-/

namespace A347939.P992971352823722675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347936 (Int.tmod (A061920 (n + 1)) (A061949 (3 * n + 4))).toNat

end

end A347939.P992971352823722675

/-!
# A347940: Array T(n, k) = Sum_{j=2..n+2} (-1)^(n-j)*Stirling2(n+1, j-1)*j!*j^k/2, for n and k >= 0, read by antidiagonals.

The programs for A347940, there is no canonical definition to state claims against.
-/

/-! ## A347940.P13651024644517490279

`A099594(eq[0, A103451(n)])/2`
-/

namespace A347940.P13651024644517490279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099594 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A347940.P13651024644517490279

/-! ## A347940.P1743736175877296986

`A099594(eq[0, A103452(n)])/2`
-/

namespace A347940.P1743736175877296986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099594 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A347940.P1743736175877296986

/-! ## A347940.P10499446243799880831

`A099594(lt[1, A007318(n)])/2`
-/

namespace A347940.P10499446243799880831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099594 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) : ℚ) / 2

end

end A347940.P10499446243799880831

/-! ## A347940.P4421297776652252201

`A099594(lt[1, A099594(n)])/2`
-/

namespace A347940.P4421297776652252201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099594 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) : ℚ) / 2

end

end A347940.P4421297776652252201

/-! ## A347940.P11246272242643642560

`A099594(A140978(n+1)-n)/2`
-/

namespace A347940.P11246272242643642560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099594 (A140978 (n + 1) - (n : ℤ)).toNat : ℚ) / 2

end

end A347940.P11246272242643642560

/-! ## A347940.P4509474778382244149

`A099594(A014132(A014132(n+1)))/2`
-/

namespace A347940.P4509474778382244149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099594 (A014132 (A014132 (n + 1)).toNat).toNat : ℚ) / 2

end

end A347940.P4509474778382244149

/-!
# A347941: For sets of n random points in the real plane, a(n) is an upper bound for the minimal number of nearest neighbors.

The programs for A347941, the canonical program `A347941.P7353354474054331216` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347941 has offset 2).

The definition of A347941 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A347941.P7353354474054331216

`ogf((2+x^8-2x^9+x^11)/(1-x-x^9+x^10))`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A347941

/-- `ogf((2+x^8-2x^9+x^11)/(1-x-x^9+x^10))` -/
def P7353354474054331216.Spec : Prop :=
  ∀ n, P7353354474054331216.a n = A347941 (n + 2)

theorem P7353354474054331216.correct : P7353354474054331216.Spec := by
  intro n
  simp only [A347941, Nat.add_sub_cancel]

end A347941

/-! ## A347941.P10466142874207117207

`A131737(A086161(n))+1`
-/

namespace A347941.P10466142874207117207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131737 (A086161 n).toNat + 1

end

end A347941.P10466142874207117207

namespace A347941

/-- `A131737(A086161(n))+1` -/
def P10466142874207117207.Spec : Prop :=
  ∀ n, P10466142874207117207.a n = A347941 (n + 2)

end A347941

/-! ## A347941.P11418392756126327454

`A131737(A008620(n+1))+1`
-/

namespace A347941.P11418392756126327454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131737 (A008620 (n + 1)).toNat + 1

end

end A347941.P11418392756126327454

namespace A347941

/-- `A131737(A008620(n+1))+1` -/
def P11418392756126327454.Spec : Prop :=
  ∀ n, P11418392756126327454.a n = A347941 (n + 2)

end A347941

/-! ## A347941.P3542321304541183630

`A004396(A065033(A004523(n)))+1`
-/

namespace A347941.P3542321304541183630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A065033 (A004523 n).toNat).toNat + 1

end

end A347941.P3542321304541183630

namespace A347941

/-- `A004396(A065033(A004523(n)))+1` -/
def P3542321304541183630.Spec : Prop :=
  ∀ n, P3542321304541183630.a n = A347941 (n + 2)

end A347941

/-! ## A347941.P3398527568131159207

`A004523(A065033(A004523(n))+2)`
-/

namespace A347941.P3398527568131159207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A065033 (A004523 n).toNat + 2).toNat

end

end A347941.P3398527568131159207

namespace A347941

/-- `A004523(A065033(A004523(n))+2)` -/
def P3398527568131159207.Spec : Prop :=
  ∀ n, P3398527568131159207.a n = A347941 (n + 2)

end A347941

/-! ## A347941.P5382155975812611547

`A002264(A004275(A002264(n+1)))+2`
-/

namespace A347941.P5382155975812611547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A004275 (A002264 (n + 1)).toNat).toNat + 2

end

end A347941.P5382155975812611547

namespace A347941

/-- `A002264(A004275(A002264(n+1)))+2` -/
def P5382155975812611547.Spec : Prop :=
  ∀ n, P5382155975812611547.a n = A347941 (n + 2)

end A347941

/-! ## A347941.P15380902948085315247

`A018838(A018838(n+2))/2`
-/

namespace A347941.P15380902948085315247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018838 (A018838 (n + 2)).toNat : ℚ) / 2

end

end A347941.P15380902948085315247

namespace A347941

/-- `A018838(A018838(n+2))/2` -/
def P15380902948085315247.Spec : Prop :=
  ∀ n, P15380902948085315247.a n = (A347941 (n + 2) : ℚ)

end A347941

/-! ## A347941.P1067153993252252307

`A004525(A018838(A018838(n+2)))`
-/

namespace A347941.P1067153993252252307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A018838 (A018838 (n + 2)).toNat).toNat

end

end A347941.P1067153993252252307

namespace A347941

/-- `A004525(A018838(A018838(n+2)))` -/
def P1067153993252252307.Spec : Prop :=
  ∀ n, P1067153993252252307.a n = A347941 (n + 2)

end A347941

/-! ## A347941.P981624863893249218

`A008620(A004281(A008620(n+4)))`
-/

namespace A347941.P981624863893249218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A004281 (A008620 (n + 4)).toNat).toNat

end

end A347941.P981624863893249218

namespace A347941

/-- `A008620(A004281(A008620(n+4)))` -/
def P981624863893249218.Spec : Prop :=
  ∀ n, P981624863893249218.a n = A347941 (n + 2)

end A347941

/-! ## A347941.P634896952734116947

`A008620(A018837(A008611(n)+n))`
-/

namespace A347941.P634896952734116947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A018837 (A008611 n + (n : ℤ)).toNat).toNat

end

end A347941.P634896952734116947

namespace A347941

/-- `A008620(A018837(A008611(n)+n))` -/
def P634896952734116947.Spec : Prop :=
  ∀ n, P634896952734116947.a n = A347941 (n + 2)

end A347941

/-! ## A347941.P12780330878589359299

`A008620(A018837(A008611(4*n)))`
-/

namespace A347941.P12780330878589359299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A018837 (A008611 (4 * n)).toNat).toNat

end

end A347941.P12780330878589359299

namespace A347941

/-- `A008620(A018837(A008611(4*n)))` -/
def P12780330878589359299.Spec : Prop :=
  ∀ n, P12780330878589359299.a n = A347941 (n + 2)

end A347941

/-!
# A347944: Numbers that cannot be written as the sum of two (not necessarily distinct) terms in A000009.

The programs for A347944, there is no canonical definition to state claims against.
-/

/-! ## A347944.P4083804031066829182

`eq[0, A347943(n)]`
-/

namespace A347944.P4083804031066829182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347943 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347944.P4083804031066829182

/-! ## A347944.P15021823657793900368

`lt[A347943(n), A000034(n)]`
-/

namespace A347944.P15021823657793900368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347943 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A347944.P15021823657793900368

/-! ## A347944.P15881412456529538951

`record[n-A005891(n)*A347943(n)]`
-/

namespace A347944.P15881412456529538951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A005891 n * A347943 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347944.P15881412456529538951

/-! ## A347944.P16140363409244300193

`record[n-A081330(n+1)*A347943(n)]`
-/

namespace A347944.P16140363409244300193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A081330 (n + 1) * A347943 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347944.P16140363409244300193

/-! ## A347944.P15067578304197529852

`lt[A347943(n), A347950(A046523(n+1))]`
-/

namespace A347944.P15067578304197529852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347943 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347950 (A046523 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A347944.P15067578304197529852

/-! ## A347944.P10898303817237353829

`record[n-A255553(n+1)*A347943(n)]`
-/

namespace A347944.P10898303817237353829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A255553 (n + 1) * A347943 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347944.P10898303817237353829

/-! ## A347944.P12609325581351390537

`lt[A347943(n), A014963(A006093(n+1))]`
-/

namespace A347944.P12609325581351390537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347943 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A006093 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A347944.P12609325581351390537

/-! ## A347944.P4533540130034918915

`lt[A347943(n), A347954(A045456(n+1))]`
-/

namespace A347944.P4533540130034918915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347943 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347954 (A045456 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A347944.P4533540130034918915

/-! ## A347944.P15347523104278603734

`lt[A347943(n), A014963(A096175(n+1))]`
-/

namespace A347944.P15347523104278603734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347943 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A096175 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A347944.P15347523104278603734

/-!
# A347945: To get {a(n)}, start with the nonnegative integers sequence f() and, for each y>=0, shift the f(y) to position f(2y) and reset indices.

The programs for A347945, there is no canonical definition to state claims against.
-/

/-! ## A347945.P7477311719810837299

`A098003(n+1)-1`
-/

namespace A347945.P7477311719810837299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098003 (n + 1) - 1

end

end A347945.P7477311719810837299

/-! ## A347945.P949394507674937881

`abs(1-A098003(Δ[n²]-n))`
-/

namespace A347945.P949394507674937881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A098003 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat|

end

end A347945.P949394507674937881

/-! ## A347945.P10688727359197698276

`floor(2*A098486(n+2)/3)-1`
-/

namespace A347945.P10688727359197698276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * A098486 (n + 2) : ℚ) / 3⌋ - 1

end

end A347945.P10688727359197698276

/-! ## A347945.P5073159906580278802

`A023443(A098003(n+1))`
-/

namespace A347945.P5073159906580278802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A098003 (n + 1)).toNat

end

end A347945.P5073159906580278802

/-! ## A347945.P12482312202347251188

`A057918(A098003(n+1)²)`
-/

namespace A347945.P12482312202347251188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A098003 (n + 1) ^ 2).toNat

end

end A347945.P12482312202347251188

/-! ## A347945.P13909927078784395293

`A259361(A098003(n+1)²)`
-/

namespace A347945.P13909927078784395293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A098003 (n + 1) ^ 2).toNat

end

end A347945.P13909927078784395293

/-! ## A347945.P10395701167543258537

`A023444(A098003(n+1)+1)`
-/

namespace A347945.P10395701167543258537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A098003 (n + 1) + 1).toNat

end

end A347945.P10395701167543258537

/-! ## A347945.P17357915819952337075

`A289207(A098003(n+1)+1)`
-/

namespace A347945.P17357915819952337075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A098003 (n + 1) + 1).toNat

end

end A347945.P17357915819952337075

/-! ## A347945.P11514721103436984625

`A004523(A098486(n+2))-1`
-/

namespace A347945.P11514721103436984625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A098486 (n + 2)).toNat - 1

end

end A347945.P11514721103436984625

/-! ## A347945.P8305685427147816368

`A004396(A098486(n+2)-2)`
-/

namespace A347945.P8305685427147816368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A098486 (n + 2) - 2).toNat

end

end A347945.P8305685427147816368

/-!
# A347947: Number of walks on square lattice from (1,n) to (0,0) using steps that decrease the Euclidean distance to the origin and increase the Euclidean distance to (n,1) and that change each coordinate by at most 1.

The programs for A347947, there is no canonical definition to state claims against.
-/

/-! ## A347947.P15117582174893548688

`A346540(∑[n+1]+1)`
-/

namespace A347947.P15117582174893548688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346540 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A347947.P15117582174893548688

/-! ## A347947.P10593748905101398310

`abs(A346540(A034856(n+1))-n)+n`
-/

namespace A347947.P10593748905101398310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A346540 (A034856 (n + 1)).toNat - (n : ℤ)| + (n : ℤ)

end

end A347947.P10593748905101398310

/-! ## A347947.P6522943512449388688

`A346540(A034856(n+1))%A257273(n)`
-/

namespace A347947.P6522943512449388688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346540 (A034856 (n + 1)).toNat) (A257273 n)

end

end A347947.P6522943512449388688

/-! ## A347947.P13852394866070767301

`A158388(n+1)*A346540(A034856(n+1))`
-/

namespace A347947.P13852394866070767301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (n + 1) * A346540 (A034856 (n + 1)).toNat

end

end A347947.P13852394866070767301

/-! ## A347947.P14750657660451129189

`A346540(A034856(n+1))+A000035(2*n)`
-/

namespace A347947.P14750657660451129189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346540 (A034856 (n + 1)).toNat + A000035 (2 * n)

end

end A347947.P14750657660451129189

/-! ## A347947.P10970424730337226699

`A346540(A034856(n+1))+A021913(A020668(n+1))`
-/

namespace A347947.P10970424730337226699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346540 (A034856 (n + 1)).toNat + A021913 (A020668 (n + 1)).toNat

end

end A347947.P10970424730337226699

/-! ## A347947.P6138262903310696396

`A001222(A002144(n+1))*A346540(A034856(n+1))`
-/

namespace A347947.P6138262903310696396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002144 (n + 1)).toNat * A346540 (A034856 (n + 1)).toNat

end

end A347947.P6138262903310696396

/-! ## A347947.P5347406415620911742

`A092412(A002061(n))*A346540(A034856(n+1))`
-/

namespace A347947.P5347406415620911742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092412 (A002061 n).toNat * A346540 (A034856 (n + 1)).toNat

end

end A347947.P5347406415620911742

/-!
# A347948: E.g.f.: 1 / (1 - Sum_{k>=1} x^prime(k) / prime(k)!).

The programs for A347948, there is no canonical definition to state claims against.
-/

/-! ## A347948.P4083071439251210723

`A231876(A000111(n))-A054065(n+1)`
-/

namespace A347948.P4083071439251210723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231876 (A000111 n).toNat - A054065 (n + 1)

end

end A347948.P4083071439251210723

/-! ## A347948.P3434307372483487197

`A349897(round(ϕ*a(n-1)))+1` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A347948.P3434307372483487197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n a =>
  A349897 (SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))).toNat + 1

end

end A347948.P3434307372483487197

/-! ## A347948.P18134915724764601404

`A364328(A073788(n))`
-/

namespace A347948.P18134915724764601404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364328 (A073788 n).toNat

end

end A347948.P18134915724764601404

/-!
# A347949: E.g.f.: 1 / (1 - Sum_{k>=1} x^prime(k) / prime(k)).

The programs for A347949, there is no canonical definition to state claims against.
-/

/-! ## A347949.P3648268291823685297

`abs((n-1)*A025581(A002851(n)²))`
-/

namespace A347949.P3648268291823685297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - 1) * A025581 (A002851 n ^ 2).toNat|

end

end A347949.P3648268291823685297

/-! ## A347949.P2369363670325778935

`A324684(A218002(n))+A319112(n)`
-/

namespace A347949.P2369363670325778935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324684 (A218002 n).toNat + A319112 n

end

end A347949.P2369363670325778935

/-! ## A347949.P15418769793466958004

`A324684(A319113(n))+A319112(n)`
-/

namespace A347949.P15418769793466958004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324684 (A319113 n).toNat + A319112 n

end

end A347949.P15418769793466958004

/-!
# A347950: Characteristic function of numbers that have middle divisors.

The programs for A347950, the canonical program `A347950.P18371532176146364720` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347950 has offset 1).

The definition of A347950 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347950.P4015354946641102555

`1-A348327(n+1)`
-/

namespace A347950.P4015354946641102555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A348327 (n + 1)

end

end A347950.P4015354946641102555

namespace A347950

/-- `1-A348327(n+1)` -/
def P4015354946641102555.Spec : Prop :=
  ∀ n, P4015354946641102555.a n = A347950 (n + 1)

theorem P4015354946641102555.correct : P4015354946641102555.Spec := by
  intro n
  simp only [A347950, Nat.add_sub_cancel, A347950.P4015354946641102555.a, A347950.P18371532176146364720.f1, A347950.P18371532176146364720.a, A100345, A100345.P12526129573146748191.a, A348327, A348327.P11076907261933524591.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A347950

/-! ## A347950.P9386632426189382692

`A348364(n+1)-1`
-/

namespace A347950.P9386632426189382692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348364 (n + 1) - 1

end

end A347950.P9386632426189382692

namespace A347950

/-- `A348364(n+1)-1` -/
def P9386632426189382692.Spec : Prop :=
  ∀ n, P9386632426189382692.a n = A347950 (n + 1)

theorem P9386632426189382692.correct : P9386632426189382692.Spec := by
  intro n
  simp only [A347950, Nat.add_sub_cancel, A347950.P9386632426189382692.a, A347950.P18371532176146364720.f1, A347950.P18371532176146364720.a, A100345, A100345.P12526129573146748191.a, A348364, A348364.P5163504315235711716.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A347950

/-! ## A347950.P18228488234640091641

`log2(A348364(n+1))`
-/

namespace A347950.P18228488234640091641
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A348364 (n + 1) : ℝ)

end

end A347950.P18228488234640091641

namespace A347950

/-- `log2(A348364(n+1))` -/
def P18228488234640091641.Spec : Prop :=
  ∀ n, P18228488234640091641.a n = (A347950 (n + 1) : ℝ)

end A347950

/-! ## A347950.P18371532176146364720

`char[A100345(n)-1]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A347950

/-- `char[A100345(n)-1]` -/
def P18371532176146364720.Spec : Prop :=
  ∀ n, (P18371532176146364720.a n : ℤ) = A347950 (n + 1)

theorem P18371532176146364720.correct : P18371532176146364720.Spec := by
  intro n
  simp only [A347950, Nat.add_sub_cancel]

end A347950

/-! ## A347950.P16605432187740710198

`A237271(n+1)%2`
-/

namespace A347950.P16605432187740710198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237271 (n + 1)) 2

end

end A347950.P16605432187740710198

namespace A347950

/-- `A237271(n+1)%2` -/
def P16605432187740710198.Spec : Prop :=
  ∀ n, P16605432187740710198.a n = A347950 (n + 1)

end A347950

/-! ## A347950.P14670818564404308194

`A379379(n+1)%2`
-/

namespace A347950.P14670818564404308194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A379379 (n + 1)) 2

end

end A347950.P14670818564404308194

namespace A347950

/-- `A379379(n+1)%2` -/
def P14670818564404308194.Spec : Prop :=
  ∀ n, P14670818564404308194.a n = A347950 (n + 1)

end A347950

/-! ## A347950.P1094622931413076265

`ceil(A067742(n+1)/8)`
-/

namespace A347950.P1094622931413076265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A067742 (n + 1) : ℚ) / 8⌉

end

end A347950.P1094622931413076265

namespace A347950

/-- `ceil(A067742(n+1)/8)` -/
def P1094622931413076265.Spec : Prop :=
  ∀ n, P1094622931413076265.a n = A347950 (n + 1)

end A347950

/-! ## A347950.P17698980966846282959

`char[A071562(n+1)-1]`
-/

namespace A347950.P17698980966846282959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A347950.P17698980966846282959

namespace A347950

/-- `char[A071562(n+1)-1]` -/
def P17698980966846282959.Spec : Prop :=
  ∀ n, (P17698980966846282959.a n : ℤ) = A347950 (n + 1)

end A347950

/-! ## A347950.P10281989979372328492

`char[A244367(n+1)-1]`
-/

namespace A347950.P10281989979372328492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244367 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A347950.P10281989979372328492

namespace A347950

/-- `char[A244367(n+1)-1]` -/
def P10281989979372328492.Spec : Prop :=
  ∀ n, (P10281989979372328492.a n : ℤ) = A347950 (n + 1)

end A347950

/-! ## A347950.P111355028822877161

`gcd(2, A340833(n+1))-1`
-/

namespace A347950.P111355028822877161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A340833 (n + 1)) : ℤ) - 1

end

end A347950.P111355028822877161

namespace A347950

/-- `gcd(2, A340833(n+1))-1` -/
def P111355028822877161.Spec : Prop :=
  ∀ n, P111355028822877161.a n = A347950 (n + 1)

end A347950

/-! ## A347950.P7238313957806159568

`1-floor(acot(A071090(n+1)))`
-/

namespace A347950.P7238313957806159568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌊SequenceMachineLib.acot (A071090 (n + 1) : ℝ)⌋

end

end A347950.P7238313957806159568

namespace A347950

/-- `1-floor(acot(A071090(n+1)))` -/
def P7238313957806159568.Spec : Prop :=
  ∀ n, P7238313957806159568.a n = A347950 (n + 1)

end A347950

/-! ## A347950.P13228424877974027299

`1-char[A071561(n+1)-1]`
-/

namespace A347950.P13228424877974027299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071561 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A347950.P13228424877974027299

namespace A347950

/-- `1-char[A071561(n+1)-1]` -/
def P13228424877974027299.Spec : Prop :=
  ∀ n, P13228424877974027299.a n = A347950 (n + 1)

end A347950

/-! ## A347950.P6305727268474920340

`A057427(A071090(n+1))`
-/

namespace A347950.P6305727268474920340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A071090 (n + 1)).toNat

end

end A347950.P6305727268474920340

namespace A347950

/-- `A057427(A071090(n+1))` -/
def P6305727268474920340.Spec : Prop :=
  ∀ n, P6305727268474920340.a n = A347950 (n + 1)

end A347950

/-! ## A347950.P7058177297796755102

`A059841(A340833(n+1))`
-/

namespace A347950.P7058177297796755102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A340833 (n + 1)).toNat

end

end A347950.P7058177297796755102

namespace A347950

/-- `A059841(A340833(n+1))` -/
def P7058177297796755102.Spec : Prop :=
  ∀ n, P7058177297796755102.a n = A347950 (n + 1)

end A347950

/-! ## A347950.P18222894621210422538

`A019590(A382485(n+1))`
-/

namespace A347950.P18222894621210422538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (A382485 (n + 1)).toNat

end

end A347950.P18222894621210422538

namespace A347950

/-- `A019590(A382485(n+1))` -/
def P18222894621210422538.Spec : Prop :=
  ∀ n, P18222894621210422538.a n = A347950 (n + 1)

end A347950

/-! ## A347950.P17118945304518731676

`A000035(A340833(n+1)+1)`
-/

namespace A347950.P17118945304518731676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A340833 (n + 1) + 1).toNat

end

end A347950.P17118945304518731676

namespace A347950

/-- `A000035(A340833(n+1)+1)` -/
def P17118945304518731676.Spec : Prop :=
  ∀ n, P17118945304518731676.a n = A347950 (n + 1)

end A347950

/-! ## A347950.P7684439147174215387

`A000007(n*A348327(n+1))`
-/

namespace A347950.P7684439147174215387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A348327 (n + 1)).toNat

end

end A347950.P7684439147174215387

namespace A347950

/-- `A000007(n*A348327(n+1))` -/
def P7684439147174215387.Spec : Prop :=
  ∀ n, P7684439147174215387.a n = A347950 (n + 1)

end A347950

/-! ## A347950.P57487182634352780

`A000328(n)%A348364(n+1)`
-/

namespace A347950.P57487182634352780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000328 n) (A348364 (n + 1))

end

end A347950.P57487182634352780

namespace A347950

/-- `A000328(n)%A348364(n+1)` -/
def P57487182634352780.Spec : Prop :=
  ∀ n, P57487182634352780.a n = A347950 (n + 1)

end A347950

/-! ## A347950.P17693770859729331666

`A000605(n)%A348364(n+1)`
-/

namespace A347950.P17693770859729331666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000605 n) (A348364 (n + 1))

end

end A347950.P17693770859729331666

namespace A347950

/-- `A000605(n)%A348364(n+1)` -/
def P17693770859729331666.Spec : Prop :=
  ∀ n, P17693770859729331666.a n = A347950 (n + 1)

end A347950

/-! ## A347950.P11074525880220401199

`A001148(n)%A348364(n+1)`
-/

namespace A347950.P11074525880220401199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001148 n) (A348364 (n + 1))

end

end A347950.P11074525880220401199

namespace A347950

/-- `A001148(n)%A348364(n+1)` -/
def P11074525880220401199.Spec : Prop :=
  ∀ n, P11074525880220401199.a n = A347950 (n + 1)

end A347950

/-!
# A347951: a(n) = number of maximal chord diagrams by genus d^(||)_2n.

The programs for A347951, there is no canonical definition to state claims against.
-/

/-! ## A347951.P9986185584365324140

`A292111(n+1)/(2*n+1)`
-/

namespace A347951.P9986185584365324140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292111 (n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A347951.P9986185584365324140

/-!
# A347953: G.f.: A(x) = 1/C(-x*T(x)^3), where C(x) = 1 + x*C(x)^2 is the g.f. of A000108 and T(x) = 1 + x*T(x)^3 is the g.f. of A001764.

The programs for A347953, there is no canonical definition to state claims against.
-/

/-! ## A347953.P8487234994684069832

`A261585(A176281(n)+3*n)`
-/

namespace A347953.P8487234994684069832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A176281 n + (3 * n : ℤ)).toNat

end

end A347953.P8487234994684069832

/-! ## A347953.P710698900289183034

`A200755(n)+A054899(A000260(n))`
-/

namespace A347953.P710698900289183034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200755 n + A054899 (A000260 n).toNat

end

end A347953.P710698900289183034

/-! ## A347953.P15306325808941697867

`A292470(A005802(n))+A137955(n)`
-/

namespace A347953.P15306325808941697867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292470 (A005802 n).toNat + A137955 n

end

end A347953.P15306325808941697867

/-!
# A347954: Dirichlet convolution of A003602 with A342001.

The programs for A347954, the canonical program `A347954.P10515140487385531382` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347954 has offset 1).

The definition of A347954 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A347954.P10515140487385531382

`∑{d}[n+1, A003602(#)*A342001((n+1)/#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A347954

/-- `∑{d}[n+1, A003602(#)*A342001((n+1)/#)]` -/
def P10515140487385531382.Spec : Prop :=
  ∀ n, P10515140487385531382.a n = A347954 (n + 1)

theorem P10515140487385531382.correct : P10515140487385531382.Spec := by
  intro n
  simp only [A347954, Nat.add_sub_cancel]

end A347954

/-! ## A347954.P647194780407553180

`∑{d}[n+1, A346485(#)*A349371((n+1)/#)]`
-/

namespace A347954.P647194780407553180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A346485 d * A349371 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347954.P647194780407553180

namespace A347954

/-- `∑{d}[n+1, A346485(#)*A349371((n+1)/#)]` -/
def P647194780407553180.Spec : Prop :=
  ∀ n, P647194780407553180.a n = A347954 (n + 1)

end A347954

/-! ## A347954.P10617526171022385226

`∑{d}[n+1, A347235(#)*A349373((n+1)/#)]`
-/

namespace A347954.P10617526171022385226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347235 d * A349373 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347954.P10617526171022385226

namespace A347954

/-- `∑{d}[n+1, A347235(#)*A349373((n+1)/#)]` -/
def P10617526171022385226.Spec : Prop :=
  ∀ n, P10617526171022385226.a n = A347954 (n + 1)

end A347954

/-! ## A347954.P12358943178127503278

`∑{d}[n+1, A347234(#)*A353461((n+1)/#)]`
-/

namespace A347954.P12358943178127503278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347234 d * A353461 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347954.P12358943178127503278

namespace A347954

/-- `∑{d}[n+1, A347234(#)*A353461((n+1)/#)]` -/
def P12358943178127503278.Spec : Prop :=
  ∀ n, P12358943178127503278.a n = A347954 (n + 1)

end A347954

/-! ## A347954.P12749663495034764004

`∑{d}[A000265(n+1)%A007991(n+2), A347234((n+1)/#)]`
-/

namespace A347954.P12749663495034764004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 (n + 1)) (A007991 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A347234 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347954.P12749663495034764004

namespace A347954

/-- `∑{d}[A000265(n+1)%A007991(n+2), A347234((n+1)/#)]` -/
def P12749663495034764004.Spec : Prop :=
  ∀ n, P12749663495034764004.a n = A347954 (n + 1)

end A347954

/-!
# A347955: Dirichlet convolution of A003415 (arithmetic derivative) with A003602 (a Kimberling paraphrase).

The programs for A347955, the canonical program `A347955.P1517535332026612869` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347955 has offset 1).

The definition of A347955 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A347955.P1517535332026612869

`∑{d}[n+1, A003415((n+1)/#)*A003602(#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A347955

/-- `∑{d}[n+1, A003415((n+1)/#)*A003602(#)]` -/
def P1517535332026612869.Spec : Prop :=
  ∀ n, P1517535332026612869.a n = A347955 (n + 1)

theorem P1517535332026612869.correct : P1517535332026612869.Spec := by
  intro n
  simp only [A347955, Nat.add_sub_cancel]

end A347955

/-! ## A347955.P14541271822329146745

`∑{d}[n+1, A300251(#)*A349371((n+1)/#)]`
-/

namespace A347955.P14541271822329146745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300251 d * A349371 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347955.P14541271822329146745

namespace A347955

/-- `∑{d}[n+1, A300251(#)*A349371((n+1)/#)]` -/
def P14541271822329146745.Spec : Prop :=
  ∀ n, P14541271822329146745.a n = A347955 (n + 1)

end A347955

/-! ## A347955.P12154340568705559514

`∑{d}[n+1, A319684(#)*A349136((n+1)/#)]`
-/

namespace A347955.P12154340568705559514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A319684 d * A349136 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347955.P12154340568705559514

namespace A347955

/-- `∑{d}[n+1, A319684(#)*A349136((n+1)/#)]` -/
def P12154340568705559514.Spec : Prop :=
  ∀ n, P12154340568705559514.a n = A347955 (n + 1)

end A347955

/-! ## A347955.P6335214054573206984

`∑{d}[n+1, A347131(#)*A349373((n+1)/#)]`
-/

namespace A347955.P6335214054573206984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347131 d * A349373 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347955.P6335214054573206984

namespace A347955

/-- `∑{d}[n+1, A347131(#)*A349373((n+1)/#)]` -/
def P6335214054573206984.Spec : Prop :=
  ∀ n, P6335214054573206984.a n = A347955 (n + 1)

end A347955

/-! ## A347955.P10687671125876511549

`∑{d}[n+1, A347130(#)*A349431((n+1)/#)]`
-/

namespace A347955.P10687671125876511549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347130 d * A349431 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347955.P10687671125876511549

namespace A347955

/-- `∑{d}[n+1, A347130(#)*A349431((n+1)/#)]` -/
def P10687671125876511549.Spec : Prop :=
  ∀ n, P10687671125876511549.a n = A347955 (n + 1)

end A347955

/-! ## A347955.P2883259647015542361

`∑{d}[n+1, A349370(#)*A349380((n+1)/#)]`
-/

namespace A347955.P2883259647015542361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349370 d * A349380 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347955.P2883259647015542361

namespace A347955

/-- `∑{d}[n+1, A349370(#)*A349380((n+1)/#)]` -/
def P2883259647015542361.Spec : Prop :=
  ∀ n, P2883259647015542361.a n = A347955 (n + 1)

end A347955

/-!
# A347956: Dirichlet convolution of A003602 with A069359.

The programs for A347956, the canonical program `A347956.P10805470840089187957` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347956 has offset 1).

The definition of A347956 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A347956.P10805470840089187957

`∑{d}[n+1, A003602(#)*A069359((n+1)/#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A347956

/-- `∑{d}[n+1, A003602(#)*A069359((n+1)/#)]` -/
def P10805470840089187957.Spec : Prop :=
  ∀ n, P10805470840089187957.a n = A347956 (n + 1)

theorem P10805470840089187957.correct : P10805470840089187957.Spec := by
  intro n
  simp only [A347956, Nat.add_sub_cancel]

end A347956

/-! ## A347956.P1665319407570985197

`∑{d}[n+1, A000010(#)*A347957((n+1)/#)]`
-/

namespace A347956.P1665319407570985197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A347957 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347956.P1665319407570985197

namespace A347956

/-- `∑{d}[n+1, A000010(#)*A347957((n+1)/#)]` -/
def P1665319407570985197.Spec : Prop :=
  ∀ n, P1665319407570985197.a n = A347956 (n + 1)

end A347956

/-! ## A347956.P7572681546356438797

`∑{d}[n+1, A117494(#)*A349371((n+1)/#)]`
-/

namespace A347956.P7572681546356438797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117494 d * A349371 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347956.P7572681546356438797

namespace A347956

/-- `∑{d}[n+1, A117494(#)*A349371((n+1)/#)]` -/
def P7572681546356438797.Spec : Prop :=
  ∀ n, P7572681546356438797.a n = A347956 (n + 1)

end A347956

/-! ## A347956.P7732201341614539822

`∑{d}[n+1, A323599(#)*A349136((n+1)/#)]`
-/

namespace A347956.P7732201341614539822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323599 d * A349136 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347956.P7732201341614539822

namespace A347956

/-- `∑{d}[n+1, A323599(#)*A349136((n+1)/#)]` -/
def P7732201341614539822.Spec : Prop :=
  ∀ n, P7732201341614539822.a n = A347956 (n + 1)

end A347956

/-! ## A347956.P15411644417781313120

`∑{d}[n+1, A347134(#)*A349373((n+1)/#)]`
-/

namespace A347956.P15411644417781313120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347134 d * A349373 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347956.P15411644417781313120

namespace A347956

/-- `∑{d}[n+1, A347134(#)*A349373((n+1)/#)]` -/
def P15411644417781313120.Spec : Prop :=
  ∀ n, P15411644417781313120.a n = A347956 (n + 1)

end A347956

/-! ## A347956.P13365088856788027152

`∑{d}[n+1, A349431(#)*A369894((n+1)/#)]`
-/

namespace A347956.P13365088856788027152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349431 d * A369894 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347956.P13365088856788027152

namespace A347956

/-- `∑{d}[n+1, A349431(#)*A369894((n+1)/#)]` -/
def P13365088856788027152.Spec : Prop :=
  ∀ n, P13365088856788027152.a n = A347956 (n + 1)

end A347956

/-!
# A347957: Dirichlet convolution of A001221 (omega) with A003602 (a Kimberling paraphrase).

The programs for A347957, the canonical program `A347957.P14578081410733980616` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347957 has offset 1).

The definition of A347957 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A347957.P14578081410733980616

`∑{d}[n+1, A001221((n+1)/#)*A003602(#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A347957

/-- `∑{d}[n+1, A001221((n+1)/#)*A003602(#)]` -/
def P14578081410733980616.Spec : Prop :=
  ∀ n, P14578081410733980616.a n = A347957 (n + 1)

theorem P14578081410733980616.correct : P14578081410733980616.Spec := by
  intro n
  simp only [A347957, Nat.add_sub_cancel]

end A347957

/-! ## A347957.P15701281035955630603

`∑{d}[n+1, A023900((n+1)/#)*A347956(#)]`
-/

namespace A347957.P15701281035955630603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A347956 d

end

end A347957.P15701281035955630603

namespace A347957

/-- `∑{d}[n+1, A023900((n+1)/#)*A347956(#)]` -/
def P15701281035955630603.Spec : Prop :=
  ∀ n, P15701281035955630603.a n = A347957 (n + 1)

end A347957

/-! ## A347957.P6823219647395469361

`∑{d}[n+1, A181988((n+1)/#)*A205745(#)]`
-/

namespace A347957.P6823219647395469361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A181988 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A205745 d

end

end A347957.P6823219647395469361

namespace A347957

/-- `∑{d}[n+1, A181988((n+1)/#)*A205745(#)]` -/
def P6823219647395469361.Spec : Prop :=
  ∀ n, P6823219647395469361.a n = A347957 (n + 1)

end A347957

/-! ## A347957.P17731184622233280492

`∑{d}[n+1, A010051(#)*A349371((n+1)/#)]`
-/

namespace A347957.P17731184622233280492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 d * A349371 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347957.P17731184622233280492

namespace A347957

/-- `∑{d}[n+1, A010051(#)*A349371((n+1)/#)]` -/
def P17731184622233280492.Spec : Prop :=
  ∀ n, P17731184622233280492.a n = A347957 (n + 1)

end A347957

/-! ## A347957.P13415974931237163002

`∑{d}[n+1, A062799(#)*A349136((n+1)/#)]`
-/

namespace A347957.P13415974931237163002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062799 d * A349136 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347957.P13415974931237163002

namespace A347957

/-- `∑{d}[n+1, A062799(#)*A349136((n+1)/#)]` -/
def P13415974931237163002.Spec : Prop :=
  ∀ n, P13415974931237163002.a n = A347957 (n + 1)

end A347957

/-! ## A347957.P9219770473214075627

`∑{d}[n+1, A069359(#)*A349373((n+1)/#)]`
-/

namespace A347957.P9219770473214075627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069359 d * A349373 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347957.P9219770473214075627

namespace A347957

/-- `∑{d}[n+1, A069359(#)*A349373((n+1)/#)]` -/
def P9219770473214075627.Spec : Prop :=
  ∀ n, P9219770473214075627.a n = A347957 (n + 1)

end A347957

/-! ## A347957.P16798855339430600223

`∑{d}[n+1, A143519(#)*A349372((n+1)/#)]`
-/

namespace A347957.P16798855339430600223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A143519 d * A349372 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347957.P16798855339430600223

namespace A347957

/-- `∑{d}[n+1, A143519(#)*A349372((n+1)/#)]` -/
def P16798855339430600223.Spec : Prop :=
  ∀ n, P16798855339430600223.a n = A347957 (n + 1)

end A347957

/-! ## A347957.P13344974073311793709

`∑{d}[n+1, A323599(#)*A349431((n+1)/#)]`
-/

namespace A347957.P13344974073311793709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323599 d * A349431 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347957.P13344974073311793709

namespace A347957

/-- `∑{d}[n+1, A323599(#)*A349431((n+1)/#)]` -/
def P13344974073311793709.Spec : Prop :=
  ∀ n, P13344974073311793709.a n = A347957 (n + 1)

end A347957

/-! ## A347957.P17165637459884904607

`∑{d}[n+1, A349391(#)*A353461((n+1)/#)]`
-/

namespace A347957.P17165637459884904607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349391 d * A353461 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347957.P17165637459884904607

namespace A347957

/-- `∑{d}[n+1, A349391(#)*A353461((n+1)/#)]` -/
def P17165637459884904607.Spec : Prop :=
  ∀ n, P17165637459884904607.a n = A347957 (n + 1)

end A347957

/-!
# A347958: Inverse Möbius transform of A345000.

The programs for A347958, there is no canonical definition to state claims against.
-/

/-! ## A347958.P14183155756221439325

`∑{d}[n+1, A345000(#)]`
-/

namespace A347958.P14183155756221439325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A345000 d

end

end A347958.P14183155756221439325

/-! ## A347958.P9215545010245265088

`A206225(A326306(n+1)%A295865(3*n+2))`
-/

namespace A347958.P9215545010245265088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206225 (Int.tmod (A326306 (n + 1)) (A295865 (3 * n + 2))).toNat

end

end A347958.P9215545010245265088

/-! ## A347958.P18159319771358826238

`∑{d}[n+1, #%2]*A306671(2^n)`
-/

namespace A347958.P18159319771358826238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d % 2 : ℕ) : ℤ) * A306671 (2 ^ n)

end

end A347958.P18159319771358826238

/-! ## A347958.P3882273138948253309

`A046799(∑{p}[n+1, #]%gcd(2, n)+6^∑{e}[n+1, #])`
-/

namespace A347958.P3882273138948253309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 ((∑ p ∈ Nat.primeFactors (f1 n), p) % Nat.gcd 2 n + 6 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

end

end A347958.P3882273138948253309

/-! ## A347958.P5496568741883271466

`A083902(A054496(n+1))`
-/

namespace A347958.P5496568741883271466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083902 (A054496 (n + 1)).toNat

end

end A347958.P5496568741883271466

/-!
# A347959: Dirichlet convolution of A342001 with A345000.

The programs for A347959, there is no canonical definition to state claims against.
-/

/-! ## A347959.P11051470911563879799

`∑{d}[n+1, A342001((n+1)/#)*A345000(#)]`
-/

namespace A347959.P11051470911563879799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A342001 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A345000 d

end

end A347959.P11051470911563879799

/-! ## A347959.P903261775883629270

`∑{d}[n+1, A346485(#)*A347958((n+1)/#)]`
-/

namespace A347959.P903261775883629270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A346485 d * A347958 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347959.P903261775883629270

/-! ## A347959.P16396227528421327292

`A347963(n+1)-A000122(A003388(n+1))`
-/

namespace A347959.P16396227528421327292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347963 (n + 1) - A000122 (A003388 (n + 1)).toNat

end

end A347959.P16396227528421327292

/-! ## A347959.P14958266128243239073

`A347963(n+1)%A272469(n+2)`
-/

namespace A347959.P14958266128243239073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347963 (n + 1)) (A272469 (n + 2))

end

end A347959.P14958266128243239073

/-! ## A347959.P1583146674608239179

`A347963(n+1)+A158897(A016958(n))`
-/

namespace A347959.P1583146674608239179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347963 (n + 1) + A158897 (A016958 n).toNat

end

end A347959.P1583146674608239179

/-!
# A347960: Numbers k for which A348036(k) > A007947(k).

The programs for A347960, the canonical program `A347960.P10953407055557038276` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347960 has offset 1).

The definition of A347960 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 515 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347960.P10953407055557038276

`lt[A348037(n+1), A003557(n+1)]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A347960

/-- `lt[A348037(n+1), A003557(n+1)]+1` -/
def P10953407055557038276.Spec : Prop :=
  ∀ n, (P10953407055557038276.a n : ℤ) = A347960 (n + 1)

theorem P10953407055557038276.correct : P10953407055557038276.Spec := by
  intro n
  simp only [A347960, Nat.add_sub_cancel]

end A347960

/-! ## A347960.P10710338716186938807

`A065475(lt[A348037(n+1), A003557(n+1)])`
-/

namespace A347960.P10710338716186938807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A347960.P10710338716186938807

namespace A347960

/-- `A065475(lt[A348037(n+1), A003557(n+1)])` -/
def P10710338716186938807.Spec : Prop :=
  ∀ n, P10710338716186938807.a n = A347960 (n + 1)

end A347960

/-! ## A347960.P11928692143594115641

`A326178(lt[A348037(n+1), A003557(n+1)])`
-/

namespace A347960.P11928692143594115641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A347960.P11928692143594115641

namespace A347960

/-- `A326178(lt[A348037(n+1), A003557(n+1)])` -/
def P11928692143594115641.Spec : Prop :=
  ∀ n, P11928692143594115641.a n = A347960 (n + 1)

end A347960

/-! ## A347960.P6792256602082647013

`filter[A249025(n+1), A353625(#)]`
-/

namespace A347960.P6792256602082647013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353625 (f1 j).toNat = 1) n)

end

end A347960.P6792256602082647013

namespace A347960

/-- `filter[A249025(n+1), A353625(#)]` -/
def P6792256602082647013.Spec : Prop :=
  ∀ n, P6792256602082647013.a n = A347960 (n + 1)

end A347960

/-! ## A347960.P8709543077074610113

`∩[A249025(n+1), A338539(n+1)]`
-/

namespace A347960.P8709543077074610113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347960.P8709543077074610113

namespace A347960

/-- `∩[A249025(n+1), A338539(n+1)]` -/
def P8709543077074610113.Spec : Prop :=
  ∀ n, (P8709543077074610113.a n : ℤ) = A347960 (n + 1)

end A347960

/-!
# A347961: Dirichlet convolution of A342001 with itself.

The programs for A347961, the canonical program `A347961.P14259934700239685963` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347961 has offset 1).

The definition of A347961 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A347961.P14259934700239685963

`∑{d}[n+1, A342001(#)*A342001((n+1)/#)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A347961

/-- `∑{d}[n+1, A342001(#)*A342001((n+1)/#)]` -/
def P14259934700239685963.Spec : Prop :=
  ∀ n, P14259934700239685963.a n = A347961 (n + 1)

theorem P14259934700239685963.correct : P14259934700239685963.Spec := by
  intro n
  simp only [A347961, Nat.add_sub_cancel]

end A347961

/-! ## A347961.P1903457951613098410

`A004275(A275387(n+1)%A112648(n+1))`
-/

namespace A347961.P1903457951613098410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (Int.tmod (A275387 (n + 1)) (A112648 (n + 1))).toNat

end

end A347961.P1903457951613098410

namespace A347961

/-- `A004275(A275387(n+1)%A112648(n+1))` -/
def P1903457951613098410.Spec : Prop :=
  ∀ n, P1903457951613098410.a n = A347961 (n + 1)

end A347961

/-! ## A347961.P10499583344114119795

`A004275(A275387(n+1))^A014963(A072306(n+1))`
-/

namespace A347961.P10499583344114119795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004275 (A275387 (n + 1)).toNat : ℚ) ^ (A014963 (A072306 (n + 1)).toNat : ℤ)

end

end A347961.P10499583344114119795

namespace A347961

/-- `A004275(A275387(n+1))^A014963(A072306(n+1))` -/
def P10499583344114119795.Spec : Prop :=
  ∀ n, P10499583344114119795.a n = (A347961 (n + 1) : ℚ)

end A347961

/-! ## A347961.P12996974053567337332

`A001221(A011782(n))*A004275(A275387(n+1))`
-/

namespace A347961.P12996974053567337332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A011782 n).toNat * A004275 (A275387 (n + 1)).toNat

end

end A347961.P12996974053567337332

namespace A347961

/-- `A001221(A011782(n))*A004275(A275387(n+1))` -/
def P12996974053567337332.Spec : Prop :=
  ∀ n, P12996974053567337332.a n = A347961 (n + 1)

end A347961

/-! ## A347961.P7595922092094405556

`A143974(A294876(n+1))`
-/

namespace A347961.P7595922092094405556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143974 (A294876 (n + 1)).toNat

end

end A347961.P7595922092094405556

namespace A347961

/-- `A143974(A294876(n+1))` -/
def P7595922092094405556.Spec : Prop :=
  ∀ n, P7595922092094405556.a n = A347961 (n + 1)

end A347961

/-!
# A347962: a(n) = A347961(A276086(n)), where A347961 is Dirichlet convolution of A342001 with itself.

The programs for A347962, there is no canonical definition to state claims against.
-/

/-! ## A347962.P15837986242953072970

`A347961(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347962.P15837986242953072970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347961 (A276086 n).toNat

end

end A347962.P15837986242953072970

/-! ## A347962.P5982921834811399862

`A347961(A351225(n)+n)`
-/

namespace A347962.P5982921834811399862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347961 (A351225 n + (n : ℤ)).toNat

end

end A347962.P5982921834811399862

/-! ## A347962.P6247797770843295025

`A347961(A328580(n)+A328476(n))`
-/

namespace A347962.P6247797770843295025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347961 (A328580 n + A328476 n).toNat

end

end A347962.P6247797770843295025

/-! ## A347962.P17005211143894866140

`A347961(A328844(n)+A328843(n))`
-/

namespace A347962.P17005211143894866140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347961 (A328844 n + A328843 n).toNat

end

end A347962.P17005211143894866140

/-! ## A347962.P17309603638725970316

`A347961(A327860(n)-A342016(n))`
-/

namespace A347962.P17309603638725970316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347961 (A327860 n - A342016 n).toNat

end

end A347962.P17309603638725970316

/-!
# A347963: Dirichlet convolution of A342001 with A003557.

The programs for A347963, the canonical program `A347963.P2568942602520050035` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347963 has offset 1).

The definition of A347963 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A347963.P2568942602520050035

`∑{d}[n+1, A003557(#)*A342001((n+1)/#)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A347963

/-- `∑{d}[n+1, A003557(#)*A342001((n+1)/#)]` -/
def P2568942602520050035.Spec : Prop :=
  ∀ n, P2568942602520050035.a n = A347963 (n + 1)

theorem P2568942602520050035.correct : P2568942602520050035.Spec := by
  intro n
  simp only [A347963, Nat.add_sub_cancel]

end A347963

/-! ## A347963.P6851577229311946815

`∑{d}[n+1, A276833(#)*A347235((n+1)/#)]`
-/

namespace A347963.P6851577229311946815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A276833 d * A347235 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347963.P6851577229311946815

namespace A347963

/-- `∑{d}[n+1, A276833(#)*A347235((n+1)/#)]` -/
def P6851577229311946815.Spec : Prop :=
  ∀ n, P6851577229311946815.a n = A347963 (n + 1)

end A347963

/-! ## A347963.P4160167003677783655

`∑{d}[n+1, A326306(#)*A346485((n+1)/#)]`
-/

namespace A347963.P4160167003677783655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326306 d * A346485 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347963.P4160167003677783655

namespace A347963

/-- `∑{d}[n+1, A326306(#)*A346485((n+1)/#)]` -/
def P4160167003677783655.Spec : Prop :=
  ∀ n, P4160167003677783655.a n = A347963 (n + 1)

end A347963

/-! ## A347963.P13379987101073974687

`or(A336551(A329593(n)), A347959(n+1))`
-/

namespace A347963.P13379987101073974687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A336551 (A329593 n).toNat) (A347959 (n + 1))

end

end A347963.P13379987101073974687

namespace A347963

/-- `or(A336551(A329593(n)), A347959(n+1))` -/
def P13379987101073974687.Spec : Prop :=
  ∀ n, P13379987101073974687.a n = A347963 (n + 1)

end A347963

/-! ## A347963.P7845780811630905929

`A347959(n+1)+A000122(A003388(n+1))`
-/

namespace A347963.P7845780811630905929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347959 (n + 1) + A000122 (A003388 (n + 1)).toNat

end

end A347963.P7845780811630905929

namespace A347963

/-- `A347959(n+1)+A000122(A003388(n+1))` -/
def P7845780811630905929.Spec : Prop :=
  ∀ n, P7845780811630905929.a n = A347963 (n + 1)

end A347963

/-!
# A347964: Greatest common divisor of A003415 (arithmetic derivative) and A003961 (prime shift towards larger primes).

The programs for A347964, the canonical program `A347964.P3060589955124461694` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347964 has offset 1).

The definition of A347964 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A347964.P3060589955124461694

`gcd(A003415(n+1), A003961(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A347964

/-- `gcd(A003415(n+1), A003961(n+1))` -/
def P3060589955124461694.Spec : Prop :=
  ∀ n, (P3060589955124461694.a n : ℤ) = A347964 (n + 1)

theorem P3060589955124461694.correct : P3060589955124461694.Spec := by
  intro n
  simp only [A347964, Nat.add_sub_cancel]

end A347964

/-! ## A347964.P9055668508068339019

`gcd(∑[A258057(n)], A003961(n+1))`
-/

namespace A347964.P9055668508068339019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A003961 (n + 1))

end

end A347964.P9055668508068339019

namespace A347964

/-- `gcd(∑[A258057(n)], A003961(n+1))` -/
def P9055668508068339019.Spec : Prop :=
  ∀ n, (P9055668508068339019.a n : ℤ) = A347964 (n + 1)

end A347964

/-! ## A347964.P17956637063841848055

`gcd(A045965(n+1), A348937(n+1))`
-/

namespace A347964.P17956637063841848055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A045965 (n + 1)) (A348937 (n + 1))

end

end A347964.P17956637063841848055

namespace A347964

/-- `gcd(A045965(n+1), A348937(n+1))` -/
def P17956637063841848055.Spec : Prop :=
  ∀ n, (P17956637063841848055.a n : ℤ) = A347964 (n + 1)

end A347964

/-! ## A347964.P14464758257797810918

`gcd(A000265(A348937(n+1)), A283980(n+1))`
-/

namespace A347964.P14464758257797810918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000265 (A348937 (n + 1)).toNat) (A283980 (n + 1))

end

end A347964.P14464758257797810918

namespace A347964

/-- `gcd(A000265(A348937(n+1)), A283980(n+1))` -/
def P14464758257797810918.Spec : Prop :=
  ∀ n, (P14464758257797810918.a n : ℤ) = A347964 (n + 1)

end A347964

/-! ## A347964.P11485387917511332319

`gcd(A004442(A253885(n)), A348937(n+1))`
-/

namespace A347964.P11485387917511332319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004442 (A253885 n).toNat) (A348937 (n + 1))

end

end A347964.P11485387917511332319

namespace A347964

/-- `gcd(A004442(A253885(n)), A348937(n+1))` -/
def P11485387917511332319.Spec : Prop :=
  ∀ n, (P11485387917511332319.a n : ℤ) = A347964 (n + 1)

end A347964

/-! ## A347964.P1120272272169367264

`gcd(A026741(A003961(n+1)), A348497(n+1))`
-/

namespace A347964.P1120272272169367264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026741 (A003961 (n + 1)).toNat) (A348497 (n + 1))

end

end A347964.P1120272272169367264

namespace A347964

/-- `gcd(A026741(A003961(n+1)), A348497(n+1))` -/
def P1120272272169367264.Spec : Prop :=
  ∀ n, (P1120272272169367264.a n : ℤ) = A347964 (n + 1)

end A347964

/-!
# A347965: Dirichlet convolution of A003415 (arithmetic derivative) with A003961 (prime shift towards larger primes).

The programs for A347965, the canonical program `A347965.P12359719817700726170` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347965 has offset 1).

The definition of A347965 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A347965.P12359719817700726170

`∑{d}[n+1, A003415(#)*A003961((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A347965

/-- `∑{d}[n+1, A003415(#)*A003961((n+1)/#)]` -/
def P12359719817700726170.Spec : Prop :=
  ∀ n, P12359719817700726170.a n = A347965 (n + 1)

theorem P12359719817700726170.correct : P12359719817700726170.Spec := by
  intro n
  simp only [A347965, Nat.add_sub_cancel]

end A347965

/-! ## A347965.P17667940318608935681

`∑{d}[n+1, A003973(#)*A300251((n+1)/#)]`
-/

namespace A347965.P17667940318608935681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003973 d * A300251 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347965.P17667940318608935681

namespace A347965

/-- `∑{d}[n+1, A003973(#)*A300251((n+1)/#)]` -/
def P17667940318608935681.Spec : Prop :=
  ∀ n, P17667940318608935681.a n = A347965 (n + 1)

end A347965

/-! ## A347965.P13129277487904264988

`∑{d}[n+1, A003972(#)*A319684((n+1)/#)]`
-/

namespace A347965.P13129277487904264988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003972 d * A319684 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347965.P13129277487904264988

namespace A347965

/-- `∑{d}[n+1, A003972(#)*A319684((n+1)/#)]` -/
def P13129277487904264988.Spec : Prop :=
  ∀ n, P13129277487904264988.a n = A347965 (n + 1)

end A347965

/-! ## A347965.P12999923485961804437

`∑{d}[n+1, A347130(#)*A349387((n+1)/#)]`
-/

namespace A347965.P12999923485961804437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347130 d * A349387 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347965.P12999923485961804437

namespace A347965

/-- `∑{d}[n+1, A347130(#)*A349387((n+1)/#)]` -/
def P12999923485961804437.Spec : Prop :=
  ∀ n, P12999923485961804437.a n = A347965 (n + 1)

end A347965

/-! ## A347965.P11028472510360414317

`∑{d}[n+1, A347136(#)*A349394((n+1)/#)]`
-/

namespace A347965.P11028472510360414317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347136 d * A349394 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347965.P11028472510360414317

namespace A347965

/-- `∑{d}[n+1, A347136(#)*A349394((n+1)/#)]` -/
def P11028472510360414317.Spec : Prop :=
  ∀ n, P11028472510360414317.a n = A347965 (n + 1)

end A347965

/-!
# A347967: Number of maximum matchings in the rooted tree with Matula-Goebel number n.

The programs for A347967, there is no canonical definition to state claims against.
-/

/-! ## A347967.P1695542601703496688

`A202853(∑[A206483(n+1)+1])`
-/

namespace A347967.P1695542601703496688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206483 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202853 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A347967.P1695542601703496688

/-! ## A347967.P11658617775311813454

`A202853(∑[A061775(A212628(n+1))])`
-/

namespace A347967.P11658617775311813454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (A212628 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202853 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A347967.P11658617775311813454

/-!
# A347970: Triangle read by rows: T(n, k) is the number of k-dimensional subspaces in (F_3)^n, counted up to coordinate permutation (n >= 0, 0 <= k <= n).

The programs for A347970, there is no canonical definition to state claims against.
-/

/-! ## A347970.P16181276931401741213

`A130149(A059328(n))`
-/

namespace A347970.P16181276931401741213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130149 (A059328 n).toNat

end

end A347970.P16181276931401741213

/-! ## A347970.P13151067936512462632

`A157684(A055921(n))`
-/

namespace A347970.P13151067936512462632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157684 (A055921 n).toNat

end

end A347970.P13151067936512462632

/-! ## A347970.P15290226659606506446

`A058224(A157170(n))`
-/

namespace A347970.P15290226659606506446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058224 (A157170 n).toNat

end

end A347970.P15290226659606506446

/-! ## A347970.P10941457630474865714

`A117119(A111910(n))`
-/

namespace A347970.P10941457630474865714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117119 (A111910 n).toNat

end

end A347970.P10941457630474865714

/-! ## A347970.P5227518263667864080

`A130299(A154980(n))`
-/

namespace A347970.P5227518263667864080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130299 (A154980 n).toNat

end

end A347970.P5227518263667864080

/-!
# A347971: Triangle read by rows: T(n, k) is the number of k-dimensional subspaces in (F_4)^n, counted up to coordinate permutation (n >= 0, 0 <= k <= n).

The programs for A347971, there is no canonical definition to state claims against.
-/

/-! ## A347971.P5387598021982572178

`A048264(A180959(n))`
-/

namespace A347971.P5387598021982572178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048264 (A180959 n).toNat

end

end A347971.P5387598021982572178

/-! ## A347971.P6098186524264575366

`A113218(A176331(n))`
-/

namespace A347971.P6098186524264575366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113218 (A176331 n).toNat

end

end A347971.P6098186524264575366

/-! ## A347971.P15782031234579199193

`A358636(A119307(n))`
-/

namespace A347971.P15782031234579199193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358636 (A119307 n).toNat

end

end A347971.P15782031234579199193

/-! ## A347971.P15703931526710663722

`A129600(A324916(n+1))`
-/

namespace A347971.P15703931526710663722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129600 (A324916 (n + 1)).toNat

end

end A347971.P15703931526710663722

/-! ## A347971.P6474555992367004312

`A022166(n)-A002262(A208059(n))`
-/

namespace A347971.P6474555992367004312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 n - A002262 (A208059 n).toNat

end

end A347971.P6474555992367004312

/-!
# A347972: Triangle read by rows: T(n, k) is the number of k-dimensional subspaces in (F_5)^n, counted up to coordinate permutation (n >= 0, 0 <= k <= n).

The programs for A347972, there is no canonical definition to state claims against.
-/

/-! ## A347972.P5010645017861093386

`A191841(A008459(n))+1`
-/

namespace A347972.P5010645017861093386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191841 (A008459 n).toNat + 1

end

end A347972.P5010645017861093386

/-! ## A347972.P9877172030240276470

`A191841(A007318(n)²)+1`
-/

namespace A347972.P9877172030240276470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191841 (A007318 n ^ 2).toNat + 1

end

end A347972.P9877172030240276470

/-! ## A347972.P6952495689613178673

`A195083(A000292(A007318(n)))`
-/

namespace A347972.P6952495689613178673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195083 (A000292 (A007318 n).toNat).toNat

end

end A347972.P6952495689613178673

/-! ## A347972.P6026603308694204846

`A000196(A154986(n)*A180960(n))`
-/

namespace A347972.P6026603308694204846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A154986 n * A180960 n).toNat

end

end A347972.P6026603308694204846

/-! ## A347972.P15437932874614517384

`A137735(A154986(n)*A180960(n))`
-/

namespace A347972.P15437932874614517384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A154986 n * A180960 n).toNat

end

end A347972.P15437932874614517384

/-!
# A347973: Triangle read by rows: T(n, k) is the number of k-dimensional subspaces in (F_7)^n, counted up to coordinate permutation (n >= 0, 0 <= k <= n).

The programs for A347973, there is no canonical definition to state claims against.
-/

/-! ## A347973.P16759943537340083023

`A215675(A091087(A202549(n+1))²)`
-/

namespace A347973.P16759943537340083023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215675 (A091087 (A202549 (n + 1)).toNat ^ 2).toNat

end

end A347973.P16759943537340083023

/-!
# A347974: Triangle read by rows: T(n, k) is the number of k-dimensional subspaces in (F_8)^n, counted up to coordinate permutation (n >= 0, 0 <= k <= n).

The programs for A347974, there is no canonical definition to state claims against.
-/

/-! ## A347974.P6356489824474519516

`A048265(A056940(n))`
-/

namespace A347974.P6356489824474519516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048265 (A056940 n).toNat

end

end A347974.P6356489824474519516

/-! ## A347974.P17531361269546526742

`A097284(A022167(n))`
-/

namespace A347974.P17531361269546526742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097284 (A022167 n).toNat

end

end A347974.P17531361269546526742

/-! ## A347974.P17918099498066106335

`A093893(A059328(n))`
-/

namespace A347974.P17918099498066106335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093893 (A059328 n).toNat

end

end A347974.P17918099498066106335

/-! ## A347974.P4831180817837631347

`A001948(A168619(n))`
-/

namespace A347974.P4831180817837631347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001948 (A168619 n).toNat

end

end A347974.P4831180817837631347

/-! ## A347974.P2110873977112868365

`A053784(A118185(n))`
-/

namespace A347974.P2110873977112868365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053784 (A118185 n).toNat

end

end A347974.P2110873977112868365

/-!
# A347975: Triangle read by rows: T(n, k) is the number of k-dimensional subspaces in (F_9)^n, counted up to coordinate permutation (n >= 0, 0 <= k <= n).

The programs for A347975, there is no canonical definition to state claims against.
-/

/-! ## A347975.P10977639203330704592

`A003004(A154337(n))`
-/

namespace A347975.P10977639203330704592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003004 (A154337 n).toNat

end

end A347975.P10977639203330704592

/-! ## A347975.P16842057729588396103

`A003960(A174675(n))`
-/

namespace A347975.P16842057729588396103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003960 (A174675 n).toNat

end

end A347975.P16842057729588396103

/-! ## A347975.P15522216522705213254

`A063712(A173885(n))`
-/

namespace A347975.P15522216522705213254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063712 (A173885 n).toNat

end

end A347975.P15522216522705213254

/-! ## A347975.P9520196096423694965

`A120913(A118185(n))`
-/

namespace A347975.P9520196096423694965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120913 (A118185 n).toNat

end

end A347975.P9520196096423694965

/-! ## A347975.P5162151159888360734

`A089279(A155467(n))`
-/

namespace A347975.P5162151159888360734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089279 (A155467 n).toNat

end

end A347975.P5162151159888360734

/-!
# A347976: Triangle T(n,k) read by rows: the rows list volumes of rank 2 Schubert matroid polytopes.

The programs for A347976, there is no canonical definition to state claims against.
-/

/-! ## A347976.P9350093664351740187

`A117670(comp[∑[n]])-A002260(n+1)`
-/

namespace A347976.P9350093664351740187
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117670 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A002260 (n + 1)

end

end A347976.P9350093664351740187

/-! ## A347976.P9542629857612076413

`A117670(comp[∑[n]])-(A002262(n)+1)`
-/

namespace A347976.P9542629857612076413
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117670 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - (A002262 n + 1)

end

end A347976.P9542629857612076413

/-!
# A347977: Primes of the form 2^p * 3^q * 5^r * 7^s - 1.

The programs for A347977, there is no canonical definition to state claims against.
-/

/-! ## A347977.P5411505139821249214

`p?[∑[A086247(n+1)]]`
-/

namespace A347977.P5411505139821249214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086247 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A347977.P5411505139821249214

/-! ## A347977.P6682680961622084091

`p?[A002473(n+1)-1]`
-/

namespace A347977.P6682680961622084091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A347977.P6682680961622084091

/-! ## A347977.P8179481420303173311

`∩[A000040(n+1), A002473(n+1)-1]`
-/

namespace A347977.P8179481420303173311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347977.P8179481420303173311

/-! ## A347977.P7412847093150206359

`∩[A008578(n+1), A002473(n+3)-1]`
-/

namespace A347977.P7412847093150206359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 3) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347977.P7412847093150206359

/-! ## A347977.P1932576810748882752

`eq[A003415(n), A086299(n+1)]`
-/

namespace A347977.P1932576810748882752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086299 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A347977.P1932576810748882752

/-! ## A347977.P5266491936090760238

`eq[A018783(n), A086299(n+1)]`
-/

namespace A347977.P5266491936090760238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086299 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A347977.P5266491936090760238

/-! ## A347977.P15780901676253427826

`eq[A032741(n), A086299(n+1)]`
-/

namespace A347977.P15780901676253427826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086299 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A347977.P15780901676253427826

/-! ## A347977.P18329535426772705252

`eq[A071785(n+1), A129283(n)]`
-/

namespace A347977.P18329535426772705252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A347977.P18329535426772705252

/-! ## A347977.P6529134346933672989

`eq[A085908(n+1), A129283(n)]`
-/

namespace A347977.P6529134346933672989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A347977.P6529134346933672989

/-! ## A347977.P15299744740988465449

`eq[A086299(n+1), A175126(n)]`
-/

namespace A347977.P15299744740988465449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A347977.P15299744740988465449

/-! ## A347977.P7699043613716098773

`eq[A086299(n+1), A302055(n)]`
-/

namespace A347977.P7699043613716098773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A347977.P7699043613716098773

/-! ## A347977.P7579308959007953388

`eq[A129283(n), A262401(n+1)]`
-/

namespace A347977.P7579308959007953388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262401 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A347977.P7579308959007953388

/-! ## A347977.P6939118719998107668

`eq[A086299(n+1), A328771(n)]`
-/

namespace A347977.P6939118719998107668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328771 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A347977.P6939118719998107668

/-! ## A347977.P583834426471934275

`eq[A086299(n+1), A328772(n)]`
-/

namespace A347977.P583834426471934275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328772 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A347977.P583834426471934275

/-! ## A347977.P15698485373679668643

`eq[A086299(n+1), A328847(n)]`
-/

namespace A347977.P15698485373679668643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328847 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A347977.P15698485373679668643

/-! ## A347977.P3878940388017202287

`eq[A086299(n+1), A388303(n)]`
-/

namespace A347977.P3878940388017202287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388303 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A347977.P3878940388017202287

/-! ## A347977.P11600671810518432084

`eq[A086299(n+1), A389146(n)]`
-/

namespace A347977.P11600671810518432084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389146 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A347977.P11600671810518432084

/-! ## A347977.P2995028864587090308

`eq[A086299(n+1), A391024(n)]`
-/

namespace A347977.P2995028864587090308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391024 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A347977.P2995028864587090308

/-! ## A347977.P10930008632473075790

`eq[A086299(n+1), A400262(n)]`
-/

namespace A347977.P10930008632473075790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400262 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A347977.P10930008632473075790

/-!
# A347979: a(n) is the smallest even number k whose symmetric representation of sigma(k) has maximum width n.

The programs for A347979, there is no canonical definition to state claims against.
-/

/-! ## A347979.P1669614004943616140

`lcm(2, A250070(n+1))`
-/

namespace A347979.P1669614004943616140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A250070 (n + 1))

end

end A347979.P1669614004943616140

/-! ## A347979.P16873781656981146489

`A250070(n*C(2, C(n-1, a(n-1)))+1)` with `a(0)=2`
-/

namespace A347979.P16873781656981146489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A250070 (n * Nat.choose 2 (Nat.choose ((n : ℤ) - 1).toNat (a (n - 1)).toNat) + 1)

end

end A347979.P16873781656981146489

/-! ## A347979.P3137293930668879067

`A250070(n+1)+A000007(n)`
-/

namespace A347979.P3137293930668879067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250070 (n + 1) + A000007 n

end

end A347979.P3137293930668879067

/-! ## A347979.P7213321961015773284

`A250070(n+1)+A088157(n)`
-/

namespace A347979.P7213321961015773284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250070 (n + 1) + A088157 n

end

end A347979.P7213321961015773284

/-! ## A347979.P6809187281743326721

`A250070(n+1)+A112315(n)`
-/

namespace A347979.P6809187281743326721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250070 (n + 1) + A112315 n

end

end A347979.P6809187281743326721

/-!
# A347981: Irregular triangle T(n, k) read by rows in which row n lists the number of parts in the symmetric representation of sigma for n = 2^m * q, 2^(m-1) * q, ... , q, with m >= 0, q odd, 1 <= k <= m + 1.

The programs for A347981, there is no canonical definition to state claims against.
-/

/-! ## A347981.P16129381266330132109

`A237271(A123390(n+1))`
-/

namespace A347981.P16129381266330132109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A123390 (n + 1)).toNat

end

end A347981.P16129381266330132109

/-! ## A347981.P17221254445082061710

`A090822(A210436(n)^A004526(A347026(n+1)))`
-/

namespace A347981.P17221254445082061710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (SequenceMachineLib.roundAway ((A210436 n : ℚ) ^ (A004526 (A347026 (n + 1)).toNat : ℤ))).toNat

end

end A347981.P17221254445082061710

/-! ## A347981.P16718729820757588997

`A257994(A181803(n+1))+A010121(A079153(2*n+5))`
-/

namespace A347981.P16718729820757588997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A181803 (n + 1)).toNat + A010121 (A079153 (2 * n + 5)).toNat

end

end A347981.P16718729820757588997

/-! ## A347981.P1220059744158945086

`A327399(A319627(A123390(n+1)²))`
-/

namespace A347981.P1220059744158945086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327399 (A319627 (A123390 (n + 1) ^ 2).toNat).toNat

end

end A347981.P1220059744158945086

/-! ## A347981.P9340885805178988456

`A335449(A057889(n)*A335450(n+2)+3)`
-/

namespace A347981.P9340885805178988456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335449 (A057889 n * A335450 (n + 2) + 3).toNat

end

end A347981.P9340885805178988456

/-!
# A347983: Smallest number requiring n 1's to build using +, -, *, and ^.

The programs for A347983, there is no canonical definition to state claims against.
-/

/-! ## A347983.P16385568804165711892

`A259466(n)^A287170(2^n)`
-/

namespace A347983.P16385568804165711892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259466 n : ℚ) ^ (A287170 (2 ^ n) : ℤ)

end

end A347983.P16385568804165711892

/-! ## A347983.P17997889378727790680

`A259466(n)+A000035(A000079(n))`
-/

namespace A347983.P17997889378727790680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259466 n + A000035 (A000079 n).toNat

end

end A347983.P17997889378727790680

/-! ## A347983.P1231965565694886328

`A259466(n)+A000007(A000225(n))`
-/

namespace A347983.P1231965565694886328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259466 n + A000007 (A000225 n).toNat

end

end A347983.P1231965565694886328

/-! ## A347983.P8113025088734387975

`A259466(n)+A007814(A000051(n))`
-/

namespace A347983.P8113025088734387975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259466 n + A007814 (A000051 n).toNat

end

end A347983.P8113025088734387975

/-! ## A347983.P15828681699717222143

`A259466(n)+A000007(A014113(n))`
-/

namespace A347983.P15828681699717222143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259466 n + A000007 (A014113 n).toNat

end

end A347983.P15828681699717222143

/-!
# A347985: a(n) = [x^n] (2*n)! * Sum_{k=0..2*n} binomial(x-2*n,k).

The programs for A347985, there is no canonical definition to state claims against.
-/

/-! ## A347985.P13318380660918532856

`A054649(∑[4*n])`
-/

namespace A347985.P13318380660918532856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054649 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A347985.P13318380660918532856

/-! ## A347985.P16642054425292245740

`A006519(2*n+1)*A054649(A046092(n))`
-/

namespace A347985.P16642054425292245740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * n + 1) * A054649 (A046092 n).toNat

end

end A347985.P16642054425292245740

/-! ## A347985.P3372749001783984879

`A054649(A046092(n))%A133942(2*(n+2))`
-/

namespace A347985.P3372749001783984879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054649 (A046092 n).toNat) (A133942 (2 * (n + 2)))

end

end A347985.P3372749001783984879

/-!
# A347986: Length of identical sequence of prime / nonprime numbers left and right of the integer n (excluded).

The programs for A347986, there is no canonical definition to state claims against.
-/

/-! ## A347986.P13507168957675600901

`(A343730(2*(n+1))-1)/2`
-/

namespace A347986.P13507168957675600901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343730 (2 * (n + 1)) - 1 : ℚ) / 2

end

end A347986.P13507168957675600901

/-! ## A347986.P1431507361695489818

`floor(A343730(2*(n+1))/2)`
-/

namespace A347986.P1431507361695489818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A343730 (2 * (n + 1)) : ℚ) / 2⌋

end

end A347986.P1431507361695489818

/-! ## A347986.P7713215443091410063

`A004526(A343730(2*(n+1)))`
-/

namespace A347986.P7713215443091410063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A343730 (2 * (n + 1))).toNat

end

end A347986.P7713215443091410063

/-! ## A347986.P8344020537852591598

`A057979(A343730(2*n+2))`
-/

namespace A347986.P8344020537852591598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A343730 (2 * n + 2)).toNat

end

end A347986.P8344020537852591598

/-! ## A347986.P4628643914710532539

`A028242(A343730(Δ[n²]+1))`
-/

namespace A347986.P4628643914710532539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A343730 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat).toNat

end

end A347986.P4628643914710532539

/-! ## A347986.P7380714492211310893

`A001281(A343730(2*(n+1))-1)`
-/

namespace A347986.P7380714492211310893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A343730 (2 * (n + 1)) - 1).toNat

end

end A347986.P7380714492211310893

/-! ## A347986.P1555552113710160586

`A025480(A343730(2*(n+1))-1)`
-/

namespace A347986.P1555552113710160586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A343730 (2 * (n + 1)) - 1).toNat

end

end A347986.P1555552113710160586

/-! ## A347986.P4331812690433514055

`A008615(3*A343730(2*(n+1)))`
-/

namespace A347986.P4331812690433514055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A343730 (2 * (n + 1))).toNat

end

end A347986.P4331812690433514055

/-! ## A347986.P18351315577322003941

`A001281(xor(1, A343730(2*(n+1))))`
-/

namespace A347986.P18351315577322003941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (Int.xor 1 (A343730 (2 * (n + 1)))).toNat

end

end A347986.P18351315577322003941

/-! ## A347986.P12897889790261993181

`A025480(xor(1, A343730(2*(n+1))))`
-/

namespace A347986.P12897889790261993181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Int.xor 1 (A343730 (2 * (n + 1)))).toNat

end

end A347986.P12897889790261993181

/-!
# A347987: a(n) = [x^n] (2*n)! * Sum_{k=0..2*n} binomial(x,k).

The programs for A347987, there is no canonical definition to state claims against.
-/

/-! ## A347987.P7965865021563055895

`A054651(∑[4*n])`
-/

namespace A347987.P7965865021563055895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054651 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A347987.P7965865021563055895

/-! ## A347987.P10482888220507956771

`or(1, A054651(A046092(n)))`
-/

namespace A347987.P10482888220507956771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A054651 (A046092 n).toNat)

end

end A347987.P10482888220507956771

/-! ## A347987.P17350334203671146078

`A054651(A046092(n))+n*A000007(n)`
-/

namespace A347987.P17350334203671146078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054651 (A046092 n).toNat + (n : ℤ) * A000007 n

end

end A347987.P17350334203671146078

/-! ## A347987.P4883794476800893163

`A014963(12*n+6)*A054651(A046092(n))`
-/

namespace A347987.P4883794476800893163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * n + 6) * A054651 (A046092 n).toNat

end

end A347987.P4883794476800893163

/-! ## A347987.P2074157651652772550

`A190782(∑[4*n])`
-/

namespace A347987.P2074157651652772550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190782 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A347987.P2074157651652772550

/-!
# A347988: Primes p such that q divides p^2 + p + 1, r divides q^2 + q + 1 and p divides r^2 + r + 1 for some primes q and r.

The programs for A347988, there is no canonical definition to state claims against.
-/

/-! ## A347988.P12325648235576957914

`p?[A086273(record[A161700(n+1)])]`
-/

namespace A347988.P12325648235576957914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161700 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086273 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A347988.P12325648235576957914

/-!
# A347989: a(n) = [x^n] (2*n)! * Sum_{k=0..2*n} binomial(x+k,k).

The programs for A347989, there is no canonical definition to state claims against.
-/

/-! ## A347989.P2525212091565035660

`A145324((n+1)²+n²)`
-/

namespace A347989.P2525212091565035660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145324 ((n + 1) ^ 2 + n ^ 2)

end

end A347989.P2525212091565035660

/-! ## A347989.P17984680858186012365

`A136124(A051890(n+1))`
-/

namespace A347989.P17984680858186012365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136124 (A051890 (n + 1)).toNat

end

end A347989.P17984680858186012365

/-! ## A347989.P13600084908607323630

`or(1, A145324(A001844(n)))`
-/

namespace A347989.P13600084908607323630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A145324 (A001844 n).toNat)

end

end A347989.P13600084908607323630

/-! ## A347989.P14364105156393753622

`abs(A049444(A008586(∑[n])))`
-/

namespace A347989.P14364105156393753622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049444 (A008586 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat|

end

end A347989.P14364105156393753622

/-! ## A347989.P16667269050936972260

`record[A145324(or(1, A245300(n)))]`
-/

namespace A347989.P16667269050936972260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145324 (Int.lor 1 (A245300 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347989.P16667269050936972260

/-!
# A347990: Number of n-step self-avoiding walks on a 2D square lattice where the walk cannot step to the smaller square ring of numbers than the ring it is currently on.

The programs for A347990, there is no canonical definition to state claims against.
-/

/-! ## A347990.P11078294812205734230

`4*A352874(a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A347990.P11078294812205734230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 * A352874 (a (n - 2)).toNat

end

end A347990.P11078294812205734230

/-! ## A347990.P7249867153490300316

`A130446(A320967(n))`
-/

namespace A347990.P7249867153490300316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A320967 n).toNat

end

end A347990.P7249867153490300316

/-!
# A347991: a(n) = Sum_{d|n} 2^(sigma(d) - 1).

The programs for A347991, the canonical program `A347991.P16060967225850719615` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347991 has offset 1).

The definition of A347991 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A347991.P16060967225850719615

`∑{d}[n+1, 2^(A000203(#)-1)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A347991

/-- `∑{d}[n+1, 2^(A000203(#)-1)]` -/
def P16060967225850719615.Spec : Prop :=
  ∀ n, P16060967225850719615.a n = (A347991 (n + 1) : ℚ)

end A347991

/-! ## A347991.P6950981260857079957

`∑{d}[n+1, A011782(A000203(#))]`
-/

namespace A347991.P6950981260857079957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A011782 (A000203 d).toNat

end

end A347991.P6950981260857079957

namespace A347991

/-- `∑{d}[n+1, A011782(A000203(#))]` -/
def P6950981260857079957.Spec : Prop :=
  ∀ n, P6950981260857079957.a n = A347991 (n + 1)

end A347991

/-! ## A347991.P9259833225864137048

`∑{d}[n+1, A000079(A039653(#))]`
-/

namespace A347991.P9259833225864137048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000079 (A039653 d).toNat

end

end A347991.P9259833225864137048

namespace A347991

/-- `∑{d}[n+1, A000079(A039653(#))]` -/
def P9259833225864137048.Spec : Prop :=
  ∀ n, P9259833225864137048.a n = A347991 (n + 1)

end A347991

/-! ## A347991.P13143580867145724346

`∑{d}[n+1, A000079(A000203(#)-1)]`
-/

namespace A347991.P13143580867145724346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000079 (A000203 d - 1).toNat

end

end A347991.P13143580867145724346

namespace A347991

/-- `∑{d}[n+1, A000079(A000203(#)-1)]` -/
def P13143580867145724346.Spec : Prop :=
  ∀ n, P13143580867145724346.a n = A347991 (n + 1)

end A347991

/-! ## A347991.P5694271483436209239

`∑{d}[A130446(n+1), A131577(A000203(#))]`
-/

namespace A347991.P5694271483436209239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A131577 (A000203 d).toNat

end

end A347991.P5694271483436209239

namespace A347991

/-- `∑{d}[A130446(n+1), A131577(A000203(#))]` -/
def P5694271483436209239.Spec : Prop :=
  ∀ n, P5694271483436209239.a n = A347991 (n + 1)

end A347991

/-!
# A347992: a(n) = Sum_{d|n} (-1)^(tau(d) - 1).

The programs for A347992, the canonical program `A347992.P10468658472138835493` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347992 has offset 1).

The definition of A347992 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A347992.P10468658472138835493

`∑{d}[n+1, (-1)^(A000005(#)-1)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A347992

/-- `∑{d}[n+1, (-1)^(A000005(#)-1)]` -/
def P10468658472138835493.Spec : Prop :=
  ∀ n, P10468658472138835493.a n = (A347992 (n + 1) : ℚ)

end A347992

/-! ## A347992.P11088332882146008864

`∑{d}[n+1, A000122(#)-1]`
-/

namespace A347992.P11088332882146008864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000122 d - 1)

end

end A347992.P11088332882146008864

namespace A347992

/-- `∑{d}[n+1, A000122(#)-1]` -/
def P11088332882146008864.Spec : Prop :=
  ∀ n, P11088332882146008864.a n = A347992 (n + 1)

end A347992

/-! ## A347992.P2858700381104706600

`∑{d}[n+1, -(-1)^A000005(#)]`
-/

namespace A347992.P2858700381104706600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (-((-1 : ℚ) ^ (A000005 d : ℤ)))

end

end A347992.P2858700381104706600

namespace A347992

/-- `∑{d}[n+1, -(-1)^A000005(#)]` -/
def P2858700381104706600.Spec : Prop :=
  ∀ n, P2858700381104706600.a n = (A347992 (n + 1) : ℚ)

end A347992

/-! ## A347992.P3891772434227528441

`A046951(n+1)-A056595(n+1)`
-/

namespace A347992.P3891772434227528441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) - A056595 (n + 1)

end

end A347992.P3891772434227528441

namespace A347992

/-- `A046951(n+1)-A056595(n+1)` -/
def P3891772434227528441.Spec : Prop :=
  ∀ n, P3891772434227528441.a n = A347992 (n + 1)

end A347992

/-! ## A347992.P9377401160067398460

`A071325(n+1)-A293575(n+1)`
-/

namespace A347992.P9377401160067398460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071325 (n + 1) - A293575 (n + 1)

end

end A347992.P9377401160067398460

namespace A347992

/-- `A071325(n+1)-A293575(n+1)` -/
def P9377401160067398460.Spec : Prop :=
  ∀ n, P9377401160067398460.a n = A347992 (n + 1)

end A347992

/-! ## A347992.P7588240220820410009

`A328372(n+1)-A345221(n+1)`
-/

namespace A347992.P7588240220820410009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328372 (n + 1) - A345221 (n + 1)

end

end A347992.P7588240220820410009

namespace A347992

/-- `A328372(n+1)-A345221(n+1)` -/
def P7588240220820410009.Spec : Prop :=
  ∀ n, P7588240220820410009.a n = A347992 (n + 1)

end A347992

/-! ## A347992.P5222024975950205083

`2*A046951(n+1)-Δ[A006218(n)]`
-/

namespace A347992.P5222024975950205083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046951 (n + 1) - (f1 (n + 1) - f1 n)

end

end A347992.P5222024975950205083

namespace A347992

/-- `2*A046951(n+1)-Δ[A006218(n)]` -/
def P5222024975950205083.Spec : Prop :=
  ∀ n, P5222024975950205083.a n = A347992 (n + 1)

end A347992

/-! ## A347992.P17382418873927811367

`2*A046951(n+1)-A000005(n+1)`
-/

namespace A347992.P17382418873927811367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046951 (n + 1) - A000005 (n + 1)

end

end A347992.P17382418873927811367

namespace A347992

/-- `2*A046951(n+1)-A000005(n+1)` -/
def P17382418873927811367.Spec : Prop :=
  ∀ n, P17382418873927811367.a n = A347992 (n + 1)

end A347992

/-! ## A347992.P14754081582459765981

`A000005(n+1)-2*A056595(n+1)`
-/

namespace A347992.P14754081582459765981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - 2 * A056595 (n + 1)

end

end A347992.P14754081582459765981

namespace A347992

/-- `A000005(n+1)-2*A056595(n+1)` -/
def P14754081582459765981.Spec : Prop :=
  ∀ n, P14754081582459765981.a n = A347992 (n + 1)

end A347992

/-! ## A347992.P2908538792166512393

`2*A000005(A000188(n+1))-A000005(n+1)`
-/

namespace A347992.P2908538792166512393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 (A000188 (n + 1)).toNat - A000005 (n + 1)

end

end A347992.P2908538792166512393

namespace A347992

/-- `2*A000005(A000188(n+1))-A000005(n+1)` -/
def P2908538792166512393.Spec : Prop :=
  ∀ n, P2908538792166512393.a n = A347992 (n + 1)

end A347992

/-! ## A347992.P200479356775211765

`A032741(n+1)-(A293575(n+1)+A056595(n+1))`
-/

namespace A347992.P200479356775211765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) - (A293575 (n + 1) + A056595 (n + 1))

end

end A347992.P200479356775211765

namespace A347992

/-- `A032741(n+1)-(A293575(n+1)+A056595(n+1))` -/
def P200479356775211765.Spec : Prop :=
  ∀ n, P200479356775211765.a n = A347992 (n + 1)

end A347992

/-! ## A347992.P6142504887818130417

`A076752(n+1)+A046951(n+1)-A395990(n+1)`
-/

namespace A347992.P6142504887818130417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076752 (n + 1) + A046951 (n + 1) - A395990 (n + 1)

end

end A347992.P6142504887818130417

namespace A347992

/-- `A076752(n+1)+A046951(n+1)-A395990(n+1)` -/
def P6142504887818130417.Spec : Prop :=
  ∀ n, P6142504887818130417.a n = A347992 (n + 1)

end A347992

/-! ## A347992.P18125237656471766776

`A000005(A000188(n+1))+A046951(n+1)-A000005(n+1)`
-/

namespace A347992.P18125237656471766776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000188 (n + 1)).toNat + (A046951 (n + 1) - A000005 (n + 1))

end

end A347992.P18125237656471766776

namespace A347992

/-- `A000005(A000188(n+1))+A046951(n+1)-A000005(n+1)` -/
def P18125237656471766776.Spec : Prop :=
  ∀ n, P18125237656471766776.a n = A347992 (n + 1)

end A347992

/-! ## A347992.P6271784637783082187

`A298735(A003961(n+1))-A056595(n+1)`
-/

namespace A347992.P6271784637783082187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298735 (A003961 (n + 1)).toNat - A056595 (n + 1)

end

end A347992.P6271784637783082187

namespace A347992

/-- `A298735(A003961(n+1))-A056595(n+1)` -/
def P6271784637783082187.Spec : Prop :=
  ∀ n, P6271784637783082187.a n = A347992 (n + 1)

end A347992

/-! ## A347992.P16498485161372649222

`A298735(A064988(n+1))-A056595(n+1)`
-/

namespace A347992.P16498485161372649222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298735 (A064988 (n + 1)).toNat - A056595 (n + 1)

end

end A347992.P16498485161372649222

namespace A347992

/-- `A298735(A064988(n+1))-A056595(n+1)` -/
def P16498485161372649222.Spec : Prop :=
  ∀ n, P16498485161372649222.a n = A347992 (n + 1)

end A347992

/-! ## A347992.P15043729089257898051

`A348223(A003961(n+1))`
-/

namespace A347992.P15043729089257898051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348223 (A003961 (n + 1)).toNat

end

end A347992.P15043729089257898051

namespace A347992

/-- `A348223(A003961(n+1))` -/
def P15043729089257898051.Spec : Prop :=
  ∀ n, P15043729089257898051.a n = A347992 (n + 1)

end A347992

/-! ## A347992.P16507748071076490248

`A348223(A064988(n+1))`
-/

namespace A347992.P16507748071076490248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348223 (A064988 (n + 1)).toNat

end

end A347992.P16507748071076490248

namespace A347992

/-- `A348223(A064988(n+1))` -/
def P16507748071076490248.Spec : Prop :=
  ∀ n, P16507748071076490248.a n = A347992 (n + 1)

end A347992

/-! ## A347992.P7178848557593360286

`A348223(A332818(n+1))`
-/

namespace A347992.P7178848557593360286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348223 (A332818 (n + 1)).toNat

end

end A347992.P7178848557593360286

namespace A347992

/-- `A348223(A332818(n+1))` -/
def P7178848557593360286.Spec : Prop :=
  ∀ n, P7178848557593360286.a n = A347992 (n + 1)

end A347992

/-! ## A347992.P2323991776402987788

`A348223(A359600(n+1))`
-/

namespace A347992.P2323991776402987788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348223 (A359600 (n + 1)).toNat

end

end A347992.P2323991776402987788

namespace A347992

/-- `A348223(A359600(n+1))` -/
def P2323991776402987788.Spec : Prop :=
  ∀ n, P2323991776402987788.a n = A347992 (n + 1)

end A347992

/-! ## A347992.P3759740916711536808

`A348223(A348746(n+1))`
-/

namespace A347992.P3759740916711536808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348223 (A348746 (n + 1)).toNat

end

end A347992.P3759740916711536808

namespace A347992

/-- `A348223(A348746(n+1))` -/
def P3759740916711536808.Spec : Prop :=
  ∀ n, P3759740916711536808.a n = A347992 (n + 1)

end A347992

/-!
# A347993: a(n) = n! * Sum_{k=1..n} (-1)^(k+1) * n^(n-k) / (n-k)!.

The programs for A347993, the canonical program `A347993.P16691896612919553820` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347993 has offset 1).

The definition of A347993 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A347993.P16691896612919553820

`(n+1)*A133297(n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A347993

/-- `(n+1)*A133297(n+1)` -/
def P16691896612919553820.Spec : Prop :=
  ∀ n, P16691896612919553820.a n = A347993 (n + 1)

theorem P16691896612919553820.correct : P16691896612919553820.Spec := by
  intro n
  simp only [A347993, Nat.add_sub_cancel]

end A347993

/-! ## A347993.P6216314021770052428

`∑[abs(Δ[n*A133297(n)])]`
-/

namespace A347993.P6216314021770052428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A133297 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347993.P6216314021770052428

namespace A347993

/-- `∑[abs(Δ[n*A133297(n)])]` -/
def P6216314021770052428.Spec : Prop :=
  ∀ n, P6216314021770052428.a n = A347993 (n + 1)

end A347993

/-! ## A347993.P11038755136231712283

`A277458(n+1)+A134095(n+1)`
-/

namespace A347993.P11038755136231712283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277458 (n + 1) + A134095 (n + 1)

end

end A347993.P11038755136231712283

namespace A347993

/-- `A277458(n+1)+A134095(n+1)` -/
def P11038755136231712283.Spec : Prop :=
  ∀ n, P11038755136231712283.a n = A347993 (n + 1)

end A347993

/-! ## A347993.P17486679860855835880

`A000312(n+1)-A134095(n+1)`
-/

namespace A347993.P17486679860855835880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (n + 1) - A134095 (n + 1)

end

end A347993.P17486679860855835880

namespace A347993

/-- `A000312(n+1)-A134095(n+1)` -/
def P17486679860855835880.Spec : Prop :=
  ∀ n, P17486679860855835880.a n = A347993 (n + 1)

end A347993

/-! ## A347993.P7444453766897437860

`(A277458(n+1)+A000312(n+1))/2`
-/

namespace A347993.P7444453766897437860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277458 (n + 1) + A000312 (n + 1) : ℚ) / 2

end

end A347993.P7444453766897437860

namespace A347993

/-- `(A277458(n+1)+A000312(n+1))/2` -/
def P7444453766897437860.Spec : Prop :=
  ∀ n, P7444453766897437860.a n = (A347993 (n + 1) : ℚ)

end A347993

/-!
# A347994: a(n) = n! * Sum_{k=1..n-1} (-1)^(k+1) * n^(n-k-2) / (n-k-1)!.

The programs for A347994, the canonical program `A347994.P5706009978717232292` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347994 has offset 1).

The definition of A347994 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A347994.P5706009978717232292

`A134095(n+1)/(n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A347994

/-- `A134095(n+1)/(n+1)` -/
def P5706009978717232292.Spec : Prop :=
  ∀ n, P5706009978717232292.a n = (A347994 (n + 1) : ℚ)

end A347994

/-! ## A347994.P11760873999537395452

`A000169(n+1)-A133297(n+1)`
-/

namespace A347994.P11760873999537395452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000169 (n + 1) - A133297 (n + 1)

end

end A347994.P11760873999537395452

namespace A347994

/-- `A000169(n+1)-A133297(n+1)` -/
def P11760873999537395452.Spec : Prop :=
  ∀ n, P11760873999537395452.a n = A347994 (n + 1)

end A347994

/-! ## A347994.P7464411541386873315

`A001865(n+1)-(A133297(n+1)+A000435(n+1))`
-/

namespace A347994.P7464411541386873315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001865 (n + 1) - (A133297 (n + 1) + A000435 (n + 1))

end

end A347994.P7464411541386873315

namespace A347994

/-- `A001865(n+1)-(A133297(n+1)+A000435(n+1))` -/
def P7464411541386873315.Spec : Prop :=
  ∀ n, P7464411541386873315.a n = A347994 (n + 1)

end A347994

/-!
# A347996: Number of maximal irredundant sets in the n-triangular honeycomb bishop graph.

The programs for A347996, there is no canonical definition to state claims against.
-/

/-! ## A347996.P9316986887996878859

`A286716(A060913(n))+A206902(n)`
-/

namespace A347996.P9316986887996878859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286716 (A060913 n).toNat + A206902 n

end

end A347996.P9316986887996878859

/-! ## A347996.P4570133012577422617

`A264810(A072131(n+2))-A085451(n+1)`
-/

namespace A347996.P4570133012577422617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264810 (A072131 (n + 2)).toNat - A085451 (n + 1)

end

end A347996.P4570133012577422617

/-!
# A347997: Number of maximal irredundant sets in the n-triangular honeycomb obtuse knight graph.

The programs for A347997, there is no canonical definition to state claims against.
-/

/-! ## A347997.P11522109407877639023

`∏{p}[A326204(n), #-1]`
-/

namespace A347997.P11522109407877639023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326204 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A347997.P11522109407877639023

/-!
# A347998: Number of maximal irredundant sets in the n-triangular honeycomb queen graph.

The programs for A347998, there is no canonical definition to state claims against.
-/

/-! ## A347998.P16241837524545424688

`A260141(a(n-1)+n)` with `a(0)=1`
-/

namespace A347998.P16241837524545424688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A260141 (a (n - 1) + (n : ℤ)).toNat

end

end A347998.P16241837524545424688

