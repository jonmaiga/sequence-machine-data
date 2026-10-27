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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
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
# A074800: a(n) = denominator( (4*n+1)*(Product_{i=1..n} (2*i-1)/Product_{i=1..n} (2*i))^5 ).

The programs for A074800, there is no canonical definition to state claims against.
-/

/-! ## A074800.P3299978376505901853

`2^(5*val((2*n)!, 2))`
-/

namespace A074800.P3299978376505901853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (5 * SequenceMachineLib.valuation (Nat.factorial (2 * n)) 2)

end

end A074800.P3299978376505901853

/-! ## A074800.P18084252205268949955

`gcd(4^n, (2*n)!)^5`
-/

namespace A074800.P18084252205268949955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (4 ^ n) (Nat.factorial (2 * n)) ^ 5

end

end A074800.P18084252205268949955

/-! ## A074800.P12510522733265612753

`∏[gcd(2*n, 2^n)^5]`
-/

namespace A074800.P12510522733265612753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n) (2 ^ n) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A074800.P12510522733265612753

/-! ## A074800.P8720572620608935375

`and(-(2*n)!, (2*n)!)^5`
-/

namespace A074800.P8720572620608935375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(Nat.factorial (2 * n) : ℤ)) (Nat.factorial (2 * n) : ℤ) ^ 5

end

end A074800.P8720572620608935375

/-! ## A074800.P9601355132606475926

`A046161(n)^5`
-/

namespace A074800.P9601355132606475926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 n ^ 5

end

end A074800.P9601355132606475926

/-!
# A074801: a(n) is the sum of the n-th row of the triangle formed by replacing each m in Pascal's triangle with sigma(m).

The programs for A074801, there is no canonical definition to state claims against.
-/

/-! ## A074801.P14469386026812447694

`A238368(A066186(n)+1)`
-/

namespace A074801.P14469386026812447694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238368 (A066186 n + 1).toNat

end

end A074801.P14469386026812447694

/-! ## A074801.P14593813233869285183

`A174868(record[Δ[A037229(n)]])`
-/

namespace A074801.P14593813233869285183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037229 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174868 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A074801.P14593813233869285183

/-! ## A074801.P6721389381074596368

`∑[A355557(A184641(n))-1]`
-/

namespace A074801.P6721389381074596368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355557 (A184641 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074801.P6721389381074596368

/-!
# A074802: Number of numbers k <= n such that tau(k) = tau(k+1) where tau(x) = A000005(x) is the number of divisors of x.

The programs for A074802, the canonical program `A074802.P3858761796293181444` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074802 has offset 1).

The definition of A074802 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074802.P3858761796293181444

`∑[A130638(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A074802

/-- `∑[A130638(n+1)]` -/
def P3858761796293181444.Spec : Prop :=
  ∀ n, P3858761796293181444.a n = A074802 (n + 1)

theorem P3858761796293181444.correct : P3858761796293181444.Spec := by
  intro n
  simp only [A074802, Nat.add_sub_cancel]

end A074802

/-! ## A074802.P13959135563468284710

`∑[floor(cos(A182394(n+2)))]`
-/

namespace A074802.P13959135563468284710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (A182394 (n + 2) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074802.P13959135563468284710

namespace A074802

/-- `∑[floor(cos(A182394(n+2)))]` -/
def P13959135563468284710.Spec : Prop :=
  ∀ n, P13959135563468284710.a n = A074802 (n + 1)

end A074802

/-! ## A074802.P2859631213638383328

`∑[char[A005237(n+1)-1]]`
-/

namespace A074802.P2859631213638383328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074802.P2859631213638383328

namespace A074802

/-- `∑[char[A005237(n+1)-1]]` -/
def P2859631213638383328.Spec : Prop :=
  ∀ n, (P2859631213638383328.a n : ℤ) = A074802 (n + 1)

end A074802

/-! ## A074802.P10922411360224438967

`∑[char[eq[0, A051950(n+2)]]]`
-/

namespace A074802.P10922411360224438967
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074802.P10922411360224438967

namespace A074802

/-- `∑[char[eq[0, A051950(n+2)]]]` -/
def P10922411360224438967.Spec : Prop :=
  ∀ n, (P10922411360224438967.a n : ℤ) = A074802 (n + 1)

end A074802

/-! ## A074802.P1966546311334535069

`∑[A000007(Δ[A000005(n+1)]²)]`
-/

namespace A074802.P1966546311334535069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074802.P1966546311334535069

namespace A074802

/-- `∑[A000007(Δ[A000005(n+1)]²)]` -/
def P1966546311334535069.Spec : Prop :=
  ∀ n, P1966546311334535069.a n = A074802 (n + 1)

theorem P1966546311334535069.correct : P1966546311334535069.Spec := by
  intro n
  simp only [A074802, Nat.add_sub_cancel, A074802.P1966546311334535069.f2, A074802.P1966546311334535069.f1, A074802.P1966546311334535069.a, A074802.P3858761796293181444.f1, A074802.P3858761796293181444.a, A000005, A000005.P16091521709108585461.a, A000007, A000007.P6599383543502402472.a, A130638, A130638.P11945976620762067139.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A051950, A051950.P1558606958145203364.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074802

/-! ## A074802.P5226480455249113658

`∑[val(A112276(n+1), A112275(n+1))]`
-/

namespace A074802.P5226480455249113658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A112276 (n + 1)).toNat (A112275 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074802.P5226480455249113658

namespace A074802

/-- `∑[val(A112276(n+1), A112275(n+1))]` -/
def P5226480455249113658.Spec : Prop :=
  ∀ n, (P5226480455249113658.a n : ℤ) = A074802 (n + 1)

end A074802

/-! ## A074802.P16558587334101223647

`∑[A000217(A182394(n+2)^n+1)%3]`
-/

namespace A074802.P16558587334101223647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A182394 (n + 2) ^ n + 1).toNat) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074802.P16558587334101223647

namespace A074802

/-- `∑[A000217(A182394(n+2)^n+1)%3]` -/
def P16558587334101223647.Spec : Prop :=
  ∀ n, P16558587334101223647.a n = A074802 (n + 1)

end A074802

/-! ## A074802.P12405176068228456987

`∑[A284749(∑{d}[A182394(n+2)^n+1, #]+1)²]`
-/

namespace A074802.P12405176068228456987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182394 (n + 2) ^ n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284749 (∑ d ∈ Nat.divisors (f2 n).natAbs, d + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074802.P12405176068228456987

namespace A074802

/-- `∑[A284749(∑{d}[A182394(n+2)^n+1, #]+1)²]` -/
def P12405176068228456987.Spec : Prop :=
  ∀ n, P12405176068228456987.a n = A074802 (n + 1)

end A074802

/-! ## A074802.P1265118803789236231

`∑[char[eq[1, A171937(n+1)]]]`
-/

namespace A074802.P1265118803789236231
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171937 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074802.P1265118803789236231

namespace A074802

/-- `∑[char[eq[1, A171937(n+1)]]]` -/
def P1265118803789236231.Spec : Prop :=
  ∀ n, (P1265118803789236231.a n : ℤ) = A074802 (n + 1)

end A074802

/-! ## A074802.P10005814476058663961

`∑[round(acot(A275320(n+1)))]`
-/

namespace A074802.P10005814476058663961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A275320 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074802.P10005814476058663961

namespace A074802

/-- `∑[round(acot(A275320(n+1)))]` -/
def P10005814476058663961.Spec : Prop :=
  ∀ n, P10005814476058663961.a n = A074802 (n + 1)

end A074802

/-!
# A074803: Kolakoski-(4,2) sequence: a(n) is length of n-th run.

The programs for A074803, the canonical program `A074803.P3346642823134531288` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074803 has offset 1).

The definition of A074803 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074803.P3346642823134531288

`2*(A285345(A065033(n+1))+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A074803

/-- `2*(A285345(A065033(n+1))+1)` -/
def P3346642823134531288.Spec : Prop :=
  ∀ n, P3346642823134531288.a n = A074803 (n + 1)

theorem P3346642823134531288.correct : P3346642823134531288.Spec := by
  intro n
  simp only [A074803, Nat.add_sub_cancel]

end A074803

/-! ## A074803.P12714697259521877209

`A001316(A001316(n))^(A285345(A065033(n+1))+1)`
-/

namespace A074803.P12714697259521877209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001316 (A001316 n).toNat : ℚ) ^ (A285345 (A065033 (n + 1)).toNat + 1 : ℤ)

end

end A074803.P12714697259521877209

namespace A074803

/-- `A001316(A001316(n))^(A285345(A065033(n+1))+1)` -/
def P12714697259521877209.Spec : Prop :=
  ∀ n, P12714697259521877209.a n = (A074803 (n + 1) : ℚ)

end A074803

/-! ## A074803.P9505913412006844820

`A306652(A094290(n+1))^(A285345(A065033(n+1))+1)`
-/

namespace A074803.P9505913412006844820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306652 (A094290 (n + 1)).toNat : ℚ) ^ (A285345 (A065033 (n + 1)).toNat + 1 : ℤ)

end

end A074803.P9505913412006844820

namespace A074803

/-- `A306652(A094290(n+1))^(A285345(A065033(n+1))+1)` -/
def P9505913412006844820.Spec : Prop :=
  ∀ n, P9505913412006844820.a n = (A074803 (n + 1) : ℚ)

end A074803

/-! ## A074803.P11888715618765024970

`A306652(A118486(n+2))^(A285345(A065033(n+1))+1)`
-/

namespace A074803.P11888715618765024970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306652 (A118486 (n + 2)).toNat : ℚ) ^ (A285345 (A065033 (n + 1)).toNat + 1 : ℤ)

end

end A074803.P11888715618765024970

namespace A074803

/-- `A306652(A118486(n+2))^(A285345(A065033(n+1))+1)` -/
def P11888715618765024970.Spec : Prop :=
  ∀ n, P11888715618765024970.a n = (A074803 (n + 1) : ℚ)

end A074803

/-! ## A074803.P12010813902734145333

`A020639(A030457(n+1))^(A285345(A065033(n+1))+1)`
-/

namespace A074803.P12010813902734145333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (A030457 (n + 1)).toNat : ℚ) ^ (A285345 (A065033 (n + 1)).toNat + 1 : ℤ)

end

end A074803.P12010813902734145333

namespace A074803

/-- `A020639(A030457(n+1))^(A285345(A065033(n+1))+1)` -/
def P12010813902734145333.Spec : Prop :=
  ∀ n, P12010813902734145333.a n = (A074803 (n + 1) : ℚ)

end A074803

/-! ## A074803.P6800731448510105529

`A094290(A017101(n))^(A285345(A065033(n+1))+1)`
-/

namespace A074803.P6800731448510105529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094290 (A017101 n).toNat : ℚ) ^ (A285345 (A065033 (n + 1)).toNat + 1 : ℤ)

end

end A074803.P6800731448510105529

namespace A074803

/-- `A094290(A017101(n))^(A285345(A065033(n+1))+1)` -/
def P6800731448510105529.Spec : Prop :=
  ∀ n, P6800731448510105529.a n = (A074803 (n + 1) : ℚ)

end A074803

/-!
# A074804: Kolakoski-(3,2) sequence: a(n) is length of n-th run.

The programs for A074804, there is no canonical definition to state claims against.
-/

/-! ## A074804.P18361873445772244482

`floor(A071820(n+2)+acot(n))`
-/

namespace A074804.P18361873445772244482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A071820 (n + 2) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A074804.P18361873445772244482

/-! ## A074804.P12846373180157497607

`A071820(ceil(abs(sin(1)-n))+2)`
-/

namespace A074804.P12846373180157497607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071820 (⌈|Real.sin (1 : ℝ) - (n : ℝ)|⌉ + 2).toNat

end

end A074804.P12846373180157497607

/-! ## A074804.P18043626247538694302

`A071820(n^ceil(abs(sin(n)))+2)`
-/

namespace A074804.P18043626247538694302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071820 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈|Real.sin (n : ℝ)|⌉ : ℤ) + 2)).toNat

end

end A074804.P18043626247538694302

/-! ## A074804.P16939295395991238644

`A071820(A028310(n)+2)`
-/

namespace A074804.P16939295395991238644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071820 (A028310 n + 2).toNat

end

end A074804.P16939295395991238644

/-! ## A074804.P12495456582978636970

`A071820(A193768(n+2))`
-/

namespace A074804.P12495456582978636970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071820 (A193768 (n + 2)).toNat

end

end A074804.P12495456582978636970

/-! ## A074804.P8531989900374998787

`A071820(A348776(n+2))`
-/

namespace A074804.P8531989900374998787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071820 (A348776 (n + 2)).toNat

end

end A074804.P8531989900374998787

/-! ## A074804.P9782016509838777895

`A071820(A000002(a(n-1))+n)` with `a(0)=3`
-/

namespace A074804.P9782016509838777895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A071820 (A000002 (a (n - 1)).toNat + (n : ℤ)).toNat

end

end A074804.P9782016509838777895

/-! ## A074804.P6987003556635651432

`A071820(A001083(a(n-1))+n)` with `a(0)=3`
-/

namespace A074804.P6987003556635651432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A071820 (A001083 (a (n - 1)).toNat + (n : ℤ)).toNat

end

end A074804.P6987003556635651432

/-! ## A074804.P17577885584306062145

`A071820(A054348(a(n-1))+n)` with `a(0)=3`
-/

namespace A074804.P17577885584306062145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A071820 (A054348 (a (n - 1)).toNat + (n : ℤ)).toNat

end

end A074804.P17577885584306062145

/-! ## A074804.P16814648901500148073

`A071820(A074264(a(n-1))+n)` with `a(0)=3`
-/

namespace A074804.P16814648901500148073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A071820 (A074264 (a (n - 1)).toNat + (n : ℤ)).toNat

end

end A074804.P16814648901500148073

/-! ## A074804.P5582667259578968468

`A071820(gcd(2, A000040(n+1))+n+1)`
-/

namespace A074804.P5582667259578968468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071820 (Int.gcd 2 (A000040 (n + 1)) + (n + 1))

end

end A074804.P5582667259578968468

/-! ## A074804.P11800931452194614342

`and(a(A006928(n)-1), A071820(n+2))` with `a(0)=3`
-/

namespace A074804.P11800931452194614342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.land (a (A006928 n - 1).toNat) (A071820 (n + 2))

end

end A074804.P11800931452194614342

/-! ## A074804.P13245414255216268754

`and(a(2-A049710(n)), A071820(n+2))` with `a(0)=3`
-/

namespace A074804.P13245414255216268754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.land (a (2 - A049710 n).toNat) (A071820 (n + 2))

end

end A074804.P13245414255216268754

/-! ## A074804.P15630654691302704850

`A071820(A000002(n+2)/A006928(n+1)+n+1)`
-/

namespace A074804.P15630654691302704850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071820 (SequenceMachineLib.roundAway ((A000002 (n + 2) : ℚ) / (A006928 (n + 1) : ℚ) + (n + 1 : ℚ))).toNat

end

end A074804.P15630654691302704850

/-! ## A074804.P11577810157757435258

`A000002(2*(n+1))+A071820(n+2)-A006928(2*n+1)`
-/

namespace A074804.P11577810157757435258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (2 * (n + 1)) + (A071820 (n + 2) - A006928 (2 * n + 1))

end

end A074804.P11577810157757435258

/-! ## A074804.P9855814590132840984

`A071820(A107430(∑[n]+2)+2)`
-/

namespace A074804.P9855814590132840984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071820 (A107430 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + 2).toNat

end

end A074804.P9855814590132840984

/-! ## A074804.P17325057449156854169

`A071820(A213234(n²)+1+n)`
-/

namespace A074804.P17325057449156854169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071820 (A213234 (n ^ 2) + 1 + (n : ℤ)).toNat

end

end A074804.P17325057449156854169

/-! ## A074804.P14295467020110380943

`A071820(A213234(n*(n+1))+n+1)`
-/

namespace A074804.P14295467020110380943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071820 (A213234 (n * (n + 1)) + (n + 1 : ℤ)).toNat

end

end A074804.P14295467020110380943

/-!
# A074805: n mod 19 + 1 ("Golden Number").

The programs for A074805, the canonical program `A074805.P8794352720558331280` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074805 has offset 0).

The definition of A074805 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n%19+1` (program `A074805.P8794352720558331280`, by `A074805.P8794352720558331280.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074805.P8794352720558331280

`n%19+1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A074805

/-- `n%19+1` -/
def P8794352720558331280.Spec : Prop :=
  ∀ n, (P8794352720558331280.a n : ℤ) = A074805 n

theorem P8794352720558331280.correct : P8794352720558331280.Spec := by
  intro n
  simp only [A074805]

end A074805

/-!
# A074806: Least k such that F(k) reduced (mod prime(n)) = prime(n)-1 where F(k) is the k-th Fibonacci number.

The programs for A074806, there is no canonical definition to state claims against.
-/

/-! ## A074806.P6007210436832082630

`A055032(A060305(n+1)-2)`
-/

namespace A074806.P6007210436832082630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055032 (A060305 (n + 1) - 2).toNat

end

end A074806.P6007210436832082630

/-! ## A074806.P10597742143470082429

`A283971(A060305(n+1)-2)`
-/

namespace A074806.P10597742143470082429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 (A060305 (n + 1) - 2).toNat

end

end A074806.P10597742143470082429

/-!
# A074809: Largest prime factor of A019518, concatenation of first n primes.

The programs for A074809, there is no canonical definition to state claims against.
-/

/-! ## A074809.P2550454313321816605

`A006530(A206780(n+1)+A021164(n))`
-/

namespace A074809.P2550454313321816605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A206780 (n + 1) + A021164 n).toNat

end

end A074809.P2550454313321816605

/-!
# A074810: Numbers k such that the number of primes between k and 2k (inclusive) = largest prime factor of k.

The programs for A074810, there is no canonical definition to state claims against.
-/

/-! ## A074810.P9917497484394994540

`eq[A006530(n+1), A035250(n+1)]+1`
-/

namespace A074810.P9917497484394994540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A074810.P9917497484394994540

/-!
# A074811: Least k such that prime(k) >= k*tau(k*n) where tau = A000005.

The programs for A074811, there is no canonical definition to state claims against.
-/

/-! ## A074811.P18216537923524559346

`A110560(lcm(20, A093464(n+1)))`
-/

namespace A074811.P18216537923524559346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 (Int.lcm 20 (A093464 (n + 1)))

end

end A074811.P18216537923524559346

/-! ## A074811.P857392430765849827

`A220121(A259939(n))^A055087(n)`
-/

namespace A074811.P857392430765849827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220121 (A259939 n).toNat : ℚ) ^ (A055087 n : ℤ)

end

end A074811.P857392430765849827

/-!
# A074813: Number of primes between n and R(n) (inclusive), where R(n) (A004086) is the digit reversal of n.

The programs for A074813, there is no canonical definition to state claims against.
-/

/-! ## A074813.P5079162945586440909

`A060568(n+1)+A039999(A077168(n))`
-/

namespace A074813.P5079162945586440909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060568 (n + 1) + A039999 (A077168 n).toNat

end

end A074813.P5079162945586440909

/-! ## A074813.P14923127790176502131

`A262988(n+1)+A060568(A077168(n))`
-/

namespace A074813.P14923127790176502131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262988 (n + 1) + A060568 (A077168 n).toNat

end

end A074813.P14923127790176502131

/-! ## A074813.P16935677902217968142

`A321464(A361413(n+1))%7`
-/

namespace A074813.P16935677902217968142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321464 (A361413 (n + 1)).toNat) 7

end

end A074813.P16935677902217968142

/-! ## A074813.P2867802329888927072

`A000290(A025504(3*n+5))%A025502(n)`
-/

namespace A074813.P2867802329888927072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (A025504 (3 * n + 5)).toNat) (A025502 n)

end

end A074813.P2867802329888927072

/-! ## A074813.P3884255105872304543

`A330991(A333032(n+1))%A002973(2*n+1)`
-/

namespace A074813.P3884255105872304543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330991 (A333032 (n + 1)).toNat) (A002973 (2 * n + 1))

end

end A074813.P3884255105872304543

/-!
# A074816: a(n) = 3^A001221(n) = 3^omega(n).

The programs for A074816, the canonical program `A074816.P6381608744235882068` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074816 has offset 1).

The definition of A074816 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A074816.P6381608744235882068

`3^A001221(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A074816

/-- `3^A001221(n+1)` -/
def P6381608744235882068.Spec : Prop :=
  ∀ n, P6381608744235882068.a n = (A074816 (n + 1) : ℚ)

end A074816

/-! ## A074816.P8865904707287450755

`A007425(A007947(n+1))`
-/

namespace A074816.P8865904707287450755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A007947 (n + 1)).toNat

end

end A074816.P8865904707287450755

namespace A074816

/-- `A007425(A007947(n+1))` -/
def P8865904707287450755.Spec : Prop :=
  ∀ n, P8865904707287450755.a n = A074816 (n + 1)

end A074816

/-! ## A074816.P10701955584230849577

`∏{p}[n+1, 3%#²]`
-/

namespace A074816.P10701955584230849577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 3 % p ^ 2

end

end A074816.P10701955584230849577

namespace A074816

/-- `∏{p}[n+1, 3%#²]` -/
def P10701955584230849577.Spec : Prop :=
  ∀ n, (P10701955584230849577.a n : ℤ) = A074816 (n + 1)

end A074816

/-! ## A074816.P14994372042653661530

`∏{e}[n+1, ceil(exp(tanh(#)))]`
-/

namespace A074816.P14994372042653661530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌈Real.exp (Real.tanh (Nat.factorization (f1 n) p : ℝ))⌉

end

end A074816.P14994372042653661530

namespace A074816

/-- `∏{e}[n+1, ceil(exp(tanh(#)))]` -/
def P14994372042653661530.Spec : Prop :=
  ∀ n, P14994372042653661530.a n = A074816 (n + 1)

end A074816

/-! ## A074816.P5223965847123930574

`∏{p}[n+1, gcd(3, 3*#)]`
-/

namespace A074816.P5223965847123930574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd 3 (3 * p)

end

end A074816.P5223965847123930574

namespace A074816

/-- `∏{p}[n+1, gcd(3, 3*#)]` -/
def P5223965847123930574.Spec : Prop :=
  ∀ n, (P5223965847123930574.a n : ℤ) = A074816 (n + 1)

end A074816

/-! ## A074816.P6396247580425128930

`∏{p}[n+1, val(#, 4)+3]`
-/

namespace A074816.P6396247580425128930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (SequenceMachineLib.valuation p 4 + 3)

end

end A074816.P6396247580425128930

namespace A074816

/-- `∏{p}[n+1, val(#, 4)+3]` -/
def P6396247580425128930.Spec : Prop :=
  ∀ n, (P6396247580425128930.a n : ℤ) = A074816 (n + 1)

end A074816

/-! ## A074816.P9869094867377597796

`∏{e}[n+1, (3^#)%6]`
-/

namespace A074816.P9869094867377597796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 3 ^ Nat.factorization (f1 n) p % 6

end

end A074816.P9869094867377597796

namespace A074816

/-- `∏{e}[n+1, (3^#)%6]` -/
def P9869094867377597796.Spec : Prop :=
  ∀ n, (P9869094867377597796.a n : ℤ) = A074816 (n + 1)

end A074816

/-! ## A074816.P316734572754232422

`∏{p}[n+1, or(3, 2%#)]`
-/

namespace A074816.P316734572754232422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.lor 3 (2 % p)

end

end A074816.P316734572754232422

namespace A074816

/-- `∏{p}[n+1, or(3, 2%#)]` -/
def P316734572754232422.Spec : Prop :=
  ∀ n, (P316734572754232422.a n : ℤ) = A074816 (n + 1)

end A074816

/-! ## A074816.P17181779139852208304

`∏{e}[n+1, or(3, #%2)]`
-/

namespace A074816.P17181779139852208304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.lor 3 (Nat.factorization (f1 n) p % 2)

end

end A074816.P17181779139852208304

namespace A074816

/-- `∏{e}[n+1, or(3, #%2)]` -/
def P17181779139852208304.Spec : Prop :=
  ∀ n, (P17181779139852208304.a n : ℤ) = A074816 (n + 1)

end A074816

/-! ## A074816.P2034666361748524593

`∏{p}[n+1, gcd(n, #)+2]`
-/

namespace A074816.P2034666361748524593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.gcd n p + 2)

end

end A074816.P2034666361748524593

namespace A074816

/-- `∏{p}[n+1, gcd(n, #)+2]` -/
def P2034666361748524593.Spec : Prop :=
  ∀ n, (P2034666361748524593.a n : ℤ) = A074816 (n + 1)

end A074816

/-! ## A074816.P13160134069328022094

`∏{e}[n+1, root(3^#, #)]`
-/

namespace A074816.P13160134069328022094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (3 ^ Nat.factorization (f1 n) p : ℝ) ^ (1 / (Nat.factorization (f1 n) p : ℝ))

end

end A074816.P13160134069328022094

namespace A074816

/-- `∏{e}[n+1, root(3^#, #)]` -/
def P13160134069328022094.Spec : Prop :=
  ∀ n, P13160134069328022094.a n = (A074816 (n + 1) : ℝ)

end A074816

/-! ## A074816.P12720745167198351539

`∏{p}[n+1, xor(#, xor(3, #))]`
-/

namespace A074816.P12720745167198351539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.xor p (Nat.xor 3 p)

end

end A074816.P12720745167198351539

namespace A074816

/-- `∏{p}[n+1, xor(#, xor(3, #))]` -/
def P12720745167198351539.Spec : Prop :=
  ∀ n, (P12720745167198351539.a n : ℤ) = A074816 (n + 1)

end A074816

/-! ## A074816.P8947749147986968374

`3^∑{e}[∏{p}[n+1, #], #]`
-/

namespace A074816.P8947749147986968374
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A074816.P8947749147986968374

namespace A074816

/-- `3^∑{e}[∏{p}[n+1, #], #]` -/
def P8947749147986968374.Spec : Prop :=
  ∀ n, (P8947749147986968374.a n : ℤ) = A074816 (n + 1)

end A074816

/-! ## A074816.P18353078046356077316

`∏{p}[n+1, 2-or(#, -1)]`
-/

namespace A074816.P18353078046356077316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (2 - Int.lor (p : ℤ) (-1))

end

end A074816.P18353078046356077316

namespace A074816

/-- `∏{p}[n+1, 2-or(#, -1)]` -/
def P18353078046356077316.Spec : Prop :=
  ∀ n, P18353078046356077316.a n = A074816 (n + 1)

end A074816

/-! ## A074816.P9001002939066607019

`∏{p}[n+1, C(2, #²)+3]`
-/

namespace A074816.P9001002939066607019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.choose 2 (p ^ 2) + 3)

end

end A074816.P9001002939066607019

namespace A074816

/-- `∏{p}[n+1, C(2, #²)+3]` -/
def P9001002939066607019.Spec : Prop :=
  ∀ n, (P9001002939066607019.a n : ℤ) = A074816 (n + 1)

end A074816

/-! ## A074816.P3487321011681474952

`∏{p}[n+1, floor(1/#)+3]`
-/

namespace A074816.P3487321011681474952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (⌊1 / (p : ℚ)⌋ + 3)

end

end A074816.P3487321011681474952

namespace A074816

/-- `∏{p}[n+1, floor(1/#)+3]` -/
def P3487321011681474952.Spec : Prop :=
  ∀ n, P3487321011681474952.a n = A074816 (n + 1)

end A074816

/-! ## A074816.P10423122799159766181

`3^∑{p}[n+1, ceil(1/#)]`
-/

namespace A074816.P10423122799159766181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (p : ℚ)⌉ : ℤ)

end

end A074816.P10423122799159766181

namespace A074816

/-- `3^∑{p}[n+1, ceil(1/#)]` -/
def P10423122799159766181.Spec : Prop :=
  ∀ n, P10423122799159766181.a n = (A074816 (n + 1) : ℚ)

end A074816

/-! ## A074816.P6729491373296464476

`3^∑{e}[n+1, ceil(1/#)]`
-/

namespace A074816.P6729491373296464476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (Nat.factorization (f1 n) p : ℚ)⌉ : ℤ)

end

end A074816.P6729491373296464476

namespace A074816

/-- `3^∑{e}[n+1, ceil(1/#)]` -/
def P6729491373296464476.Spec : Prop :=
  ∀ n, P6729491373296464476.a n = (A074816 (n + 1) : ℚ)

end A074816

/-! ## A074816.P11825480963078320360

`floor(∏{e}[n+1, #/(n+2)+3])`
-/

namespace A074816.P11825480963078320360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℚ) / (n + 2 : ℚ) + 3)⌋

end

end A074816.P11825480963078320360

namespace A074816

/-- `floor(∏{e}[n+1, #/(n+2)+3])` -/
def P11825480963078320360.Spec : Prop :=
  ∀ n, P11825480963078320360.a n = A074816 (n + 1)

end A074816

/-! ## A074816.P4968954841245382308

`ceil(∏{e}[n+1, 3-#/(n+1)])`
-/

namespace A074816.P4968954841245382308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ p ∈ Nat.primeFactors (f1 n), (3 - (Nat.factorization (f1 n) p : ℚ) / (n + 1 : ℚ))⌉

end

end A074816.P4968954841245382308

namespace A074816

/-- `ceil(∏{e}[n+1, 3-#/(n+1)])` -/
def P4968954841245382308.Spec : Prop :=
  ∀ n, P4968954841245382308.a n = A074816 (n + 1)

end A074816

/-!
# A074819: Numbers k such that mu(k)+mu(k+1) = 0.

The programs for A074819, the canonical program `A074819.P5930104584530314437` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074819 has offset 1).

The definition of A074819 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074819.P5930104584530314437

`eq[-A008683(n+2), A008683(n+1)]+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A074819

/-- `eq[-A008683(n+2), A008683(n+1)]+1` -/
def P5930104584530314437.Spec : Prop :=
  ∀ n, (P5930104584530314437.a n : ℤ) = A074819 (n + 1)

theorem P5930104584530314437.correct : P5930104584530314437.Spec := by
  intro n
  simp only [A074819, Nat.add_sub_cancel]

end A074819

/-! ## A074819.P10712080724779866671

`eq[0, A092410(n+1)]+1`
-/

namespace A074819.P10712080724779866671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092410 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A074819.P10712080724779866671

namespace A074819

/-- `eq[0, A092410(n+1)]+1` -/
def P10712080724779866671.Spec : Prop :=
  ∀ n, (P10712080724779866671.a n : ℤ) = A074819 (n + 1)

end A074819

/-! ## A074819.P17267872841294837065

`eq[A002321(abs(2-n)+1), A002321(n+1)]`
-/

namespace A074819.P17267872841294837065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (|2 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074819.P17267872841294837065

namespace A074819

/-- `eq[A002321(abs(2-n)+1), A002321(n+1)]` -/
def P17267872841294837065.Spec : Prop :=
  ∀ n, (P17267872841294837065.a n : ℤ) = A074819 (n + 1)

end A074819

/-! ## A074819.P5406257635528306033

`eq[A008683(A000007(n)+n), A157658(n+1)]`
-/

namespace A074819.P5406257635528306033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157658 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074819.P5406257635528306033

namespace A074819

/-- `eq[A008683(A000007(n)+n), A157658(n+1)]` -/
def P5406257635528306033.Spec : Prop :=
  ∀ n, (P5406257635528306033.a n : ℤ) = A074819 (n + 1)

end A074819

/-! ## A074819.P15019387023207227680

`eq[A008683(A123108(2*n)), A157658(n+1)]`
-/

namespace A074819.P15019387023207227680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A123108 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157658 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074819.P15019387023207227680

namespace A074819

/-- `eq[A008683(A123108(2*n)), A157658(n+1)]` -/
def P15019387023207227680.Spec : Prop :=
  ∀ n, (P15019387023207227680.a n : ℤ) = A074819 (n + 1)

end A074819

/-!
# A074820: Numbers k such that mu(k) = mu(k+2), where mu is the Möbius function (A008683).

The programs for A074820, the canonical program `A074820.P13650440751212995516` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074820 has offset 1).

The definition of A074820 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074820.P13650440751212995516

`eq[A008683(n+1), A008683(n+3)]+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A074820

/-- `eq[A008683(n+1), A008683(n+3)]+1` -/
def P13650440751212995516.Spec : Prop :=
  ∀ n, (P13650440751212995516.a n : ℤ) = A074820 (n + 1)

theorem P13650440751212995516.correct : P13650440751212995516.Spec := by
  intro n
  simp only [A074820, Nat.add_sub_cancel]

end A074820

/-! ## A074820.P1458153072871560

`A020725(eq[A008683(n+1), A008683(n+3)])`
-/

namespace A074820.P1458153072871560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A074820.P1458153072871560

namespace A074820

/-- `A020725(eq[A008683(n+1), A008683(n+3)])` -/
def P1458153072871560.Spec : Prop :=
  ∀ n, P1458153072871560.a n = A074820 (n + 1)

end A074820

/-! ## A074820.P12608652933350073876

`eq[A007423(n+1), A007423(n+3)]+1`
-/

namespace A074820.P12608652933350073876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A074820.P12608652933350073876

namespace A074820

/-- `eq[A007423(n+1), A007423(n+3)]+1` -/
def P12608652933350073876.Spec : Prop :=
  ∀ n, (P12608652933350073876.a n : ℤ) = A074820 (n + 1)

end A074820

/-! ## A074820.P15746556850534377247

`eq[A133695(n+1), A133695(n+3)]+1`
-/

namespace A074820.P15746556850534377247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133695 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A074820.P15746556850534377247

namespace A074820

/-- `eq[A133695(n+1), A133695(n+3)]+1` -/
def P15746556850534377247.Spec : Prop :=
  ∀ n, (P15746556850534377247.a n : ℤ) = A074820 (n + 1)

end A074820

/-! ## A074820.P14612846390983844369

`eq[A231821(n+1), A231821(n+3)]+1`
-/

namespace A074820.P14612846390983844369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231821 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A074820.P14612846390983844369

namespace A074820

/-- `eq[A231821(n+1), A231821(n+3)]+1` -/
def P14612846390983844369.Spec : Prop :=
  ∀ n, (P14612846390983844369.a n : ℤ) = A074820 (n + 1)

end A074820

/-! ## A074820.P14331893310141097217

`eq[A008683(n+2), A008683(A028310(n))]`
-/

namespace A074820.P14331893310141097217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074820.P14331893310141097217

namespace A074820

/-- `eq[A008683(n+2), A008683(A028310(n))]` -/
def P14331893310141097217.Spec : Prop :=
  ∀ n, (P14331893310141097217.a n : ℤ) = A074820 (n + 1)

end A074820

/-! ## A074820.P12845937697378776380

`eq[A007423(A143051(n+1)), A007423(n+2)]`
-/

namespace A074820.P12845937697378776380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (A143051 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074820.P12845937697378776380

namespace A074820

/-- `eq[A007423(A143051(n+1)), A007423(n+2)]` -/
def P12845937697378776380.Spec : Prop :=
  ∀ n, (P12845937697378776380.a n : ℤ) = A074820 (n + 1)

end A074820

/-! ## A074820.P6546502585456830153

`eq[A008683(A143051(n+1)), A008683(n+2)]`
-/

namespace A074820.P6546502585456830153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A143051 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074820.P6546502585456830153

namespace A074820

/-- `eq[A008683(A143051(n+1)), A008683(n+2)]` -/
def P6546502585456830153.Spec : Prop :=
  ∀ n, (P6546502585456830153.a n : ℤ) = A074820 (n + 1)

end A074820

/-! ## A074820.P5524459586144786469

`eq[A008683(A123108(2*n)), A008683(n+2)]`
-/

namespace A074820.P5524459586144786469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A123108 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074820.P5524459586144786469

namespace A074820

/-- `eq[A008683(A123108(2*n)), A008683(n+2)]` -/
def P5524459586144786469.Spec : Prop :=
  ∀ n, (P5524459586144786469.a n : ℤ) = A074820 (n + 1)

end A074820

/-! ## A074820.P17411314677333008369

`eq[A157658(A123108(2*n)), A157658(n+2)]`
-/

namespace A074820.P17411314677333008369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157658 (A123108 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157658 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074820.P17411314677333008369

namespace A074820

/-- `eq[A157658(A123108(2*n)), A157658(n+2)]` -/
def P17411314677333008369.Spec : Prop :=
  ∀ n, (P17411314677333008369.a n : ℤ) = A074820 (n + 1)

end A074820

/-!
# A074821: Numbers k such that tau(k) = tau(2k+1).

The programs for A074821, the canonical program `A074821.P5811129272772757011` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074821 has offset 1).

The definition of A074821 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7994 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074821.P2664773898908187089

`∪[A005384(n+1), A121494(n+1)]`
-/

namespace A074821.P2664773898908187089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A074821.P2664773898908187089

namespace A074821

/-- `∪[A005384(n+1), A121494(n+1)]` -/
def P2664773898908187089.Spec : Prop :=
  ∀ n, (P2664773898908187089.a n : ℤ) = A074821 (n + 1)

end A074821

/-! ## A074821.P14302526513201864776

`∪[A121494(n+1), A348511(n+1)]`
-/

namespace A074821.P14302526513201864776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A074821.P14302526513201864776

namespace A074821

/-- `∪[A121494(n+1), A348511(n+1)]` -/
def P14302526513201864776.Spec : Prop :=
  ∀ n, (P14302526513201864776.a n : ℤ) = A074821 (n + 1)

end A074821

/-! ## A074821.P5811129272772757011

`eq[A000005(2*n+3), A000005(n+1)]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A074821

/-- `eq[A000005(2*n+3), A000005(n+1)]+1` -/
def P5811129272772757011.Spec : Prop :=
  ∀ n, (P5811129272772757011.a n : ℤ) = A074821 (n + 1)

theorem P5811129272772757011.correct : P5811129272772757011.Spec := by
  intro n
  simp only [A074821, Nat.add_sub_cancel]

end A074821

/-! ## A074821.P6131842297340658097

`eq[A000005(abs(1-n)+1), A099774(n+1)]`
-/

namespace A074821.P6131842297340658097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074821.P6131842297340658097

namespace A074821

/-- `eq[A000005(abs(1-n)+1), A099774(n+1)]` -/
def P6131842297340658097.Spec : Prop :=
  ∀ n, (P6131842297340658097.a n : ℤ) = A074821 (n + 1)

end A074821

/-! ## A074821.P1277157761820215812

`eq[A032741(n), A325765(2*n)]`
-/

namespace A074821.P1277157761820215812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325765 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074821.P1277157761820215812

namespace A074821

/-- `eq[A032741(n), A325765(2*n)]` -/
def P1277157761820215812.Spec : Prop :=
  ∀ n, (P1277157761820215812.a n : ℤ) = A074821 (n + 1)

end A074821

/-! ## A074821.P10586657084389463247

`eq[A145154(Δ[n²]), A145154(n)]`
-/

namespace A074821.P10586657084389463247
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A074821.P10586657084389463247

namespace A074821

/-- `eq[A145154(Δ[n²]), A145154(n)]` -/
def P10586657084389463247.Spec : Prop :=
  ∀ n, (P10586657084389463247.a n : ℤ) = A074821 (n + 1)

end A074821

/-! ## A074821.P6633992354485047250

`eq[A032741(2*(n+1)+1), A032741(n+1)]+1`
-/

namespace A074821.P6633992354485047250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (2 * (n + 1) + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A074821.P6633992354485047250

namespace A074821

/-- `eq[A032741(2*(n+1)+1), A032741(n+1)]+1` -/
def P6633992354485047250.Spec : Prop :=
  ∀ n, (P6633992354485047250.a n : ℤ) = A074821 (n + 1)

end A074821

/-! ## A074821.P4919604150997239158

`eq[A277692(2*(n+1))+1, A277692(2*n+1)]`
-/

namespace A074821.P4919604150997239158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (2 * (n + 1)) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074821.P4919604150997239158

namespace A074821

/-- `eq[A277692(2*(n+1))+1, A277692(2*n+1)]` -/
def P4919604150997239158.Spec : Prop :=
  ∀ n, (P4919604150997239158.a n : ℤ) = A074821 (n + 1)

end A074821

/-! ## A074821.P9440160871133002493

`eq[A032741(A004277(n)+1), A032741(n)]`
-/

namespace A074821.P9440160871133002493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A004277 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074821.P9440160871133002493

namespace A074821

/-- `eq[A032741(A004277(n)+1), A032741(n)]` -/
def P9440160871133002493.Spec : Prop :=
  ∀ n, (P9440160871133002493.a n : ℤ) = A074821 (n + 1)

end A074821

/-! ## A074821.P1702587329960272584

`eq[A319410(A004277(n)+1), A319410(n)]`
-/

namespace A074821.P1702587329960272584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 (A004277 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074821.P1702587329960272584

namespace A074821

/-- `eq[A319410(A004277(n)+1), A319410(n)]` -/
def P1702587329960272584.Spec : Prop :=
  ∀ n, (P1702587329960272584.a n : ℤ) = A074821 (n + 1)

end A074821

/-! ## A074821.P15571766910840252047

`eq[A028310(A032741(2*n+1)), A032741(n)]`
-/

namespace A074821.P15571766910840252047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A032741 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074821.P15571766910840252047

namespace A074821

/-- `eq[A028310(A032741(2*n+1)), A032741(n)]` -/
def P15571766910840252047.Spec : Prop :=
  ∀ n, (P15571766910840252047.a n : ℤ) = A074821 (n + 1)

end A074821

/-! ## A074821.P16484881680181092009

`eq[A023443(A032741(n)), A070824(2*n+1)]`
-/

namespace A074821.P16484881680181092009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A032741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074821.P16484881680181092009

namespace A074821

/-- `eq[A023443(A032741(n)), A070824(2*n+1)]` -/
def P16484881680181092009.Spec : Prop :=
  ∀ n, (P16484881680181092009.a n : ℤ) = A074821 (n + 1)

end A074821

/-! ## A074821.P8245071631702291045

`eq[A028310(A319410(2*n+1)), A319410(n)]`
-/

namespace A074821.P8245071631702291045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A319410 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074821.P8245071631702291045

namespace A074821

/-- `eq[A028310(A319410(2*n+1)), A319410(n)]` -/
def P8245071631702291045.Spec : Prop :=
  ∀ n, (P8245071631702291045.a n : ℤ) = A074821 (n + 1)

end A074821

/-! ## A074821.P15779752099191277333

`eq[A277692(4*n+3), A277692(2*n+1)]`
-/

namespace A074821.P15779752099191277333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (4 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074821.P15779752099191277333

namespace A074821

/-- `eq[A277692(4*n+3), A277692(2*n+1)]` -/
def P15779752099191277333.Spec : Prop :=
  ∀ n, (P15779752099191277333.a n : ℤ) = A074821 (n + 1)

end A074821

/-! ## A074821.P15083705124524190819

`eq[A032741(A233583(2*(n+1))), A032741(n)]`
-/

namespace A074821.P15083705124524190819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A233583 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074821.P15083705124524190819

namespace A074821

/-- `eq[A032741(A233583(2*(n+1))), A032741(n)]` -/
def P15083705124524190819.Spec : Prop :=
  ∀ n, (P15083705124524190819.a n : ℤ) = A074821 (n + 1)

end A074821

/-!
# A074822: Primes p such that p + 4 is prime and p == 9 (mod 10).

The programs for A074822, the canonical program `A074822.P17874906260609589235` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074822 has offset 1).

The definition of A074822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2702 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074822.P10427117771623514029

`∩[A029710(n+1), A030433(n+1)]`
-/

namespace A074822.P10427117771623514029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074822.P10427117771623514029

namespace A074822

/-- `∩[A029710(n+1), A030433(n+1)]` -/
def P10427117771623514029.Spec : Prop :=
  ∀ n, (P10427117771623514029.a n : ℤ) = A074822 (n + 1)

end A074822

/-! ## A074822.P7951070115373502179

`∩[A015913(n+1), A030433(n+1)]`
-/

namespace A074822.P7951070115373502179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074822.P7951070115373502179

namespace A074822

/-- `∩[A015913(n+1), A030433(n+1)]` -/
def P7951070115373502179.Spec : Prop :=
  ∀ n, (P7951070115373502179.a n : ℤ) = A074822 (n + 1)

end A074822

/-! ## A074822.P14629483010524851004

`∩[A030433(n+1), A172238(n+1)]`
-/

namespace A074822.P14629483010524851004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074822.P14629483010524851004

namespace A074822

/-- `∩[A030433(n+1), A172238(n+1)]` -/
def P14629483010524851004.Spec : Prop :=
  ∀ n, (P14629483010524851004.a n : ℤ) = A074822 (n + 1)

end A074822

/-! ## A074822.P2790852954821350404

`∩[A030433(n+1), A056772(n+1)]`
-/

namespace A074822.P2790852954821350404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074822.P2790852954821350404

namespace A074822

/-- `∩[A030433(n+1), A056772(n+1)]` -/
def P2790852954821350404.Spec : Prop :=
  ∀ n, (P2790852954821350404.a n : ℤ) = A074822 (n + 1)

end A074822

/-! ## A074822.P10056148610284351873

`∩[A015913(n+1), A132234(n+1)]`
-/

namespace A074822.P10056148610284351873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074822.P10056148610284351873

namespace A074822

/-- `∩[A015913(n+1), A132234(n+1)]` -/
def P10056148610284351873.Spec : Prop :=
  ∀ n, (P10056148610284351873.a n : ℤ) = A074822 (n + 1)

end A074822

/-! ## A074822.P10845972023094020669

`∩[A029710(n+1), A132234(n+1)]`
-/

namespace A074822.P10845972023094020669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074822.P10845972023094020669

namespace A074822

/-- `∩[A029710(n+1), A132234(n+1)]` -/
def P10845972023094020669.Spec : Prop :=
  ∀ n, (P10845972023094020669.a n : ℤ) = A074822 (n + 1)

end A074822

/-! ## A074822.P9293300398303956962

`∩[A056772(n+1), A132234(n+1)]`
-/

namespace A074822.P9293300398303956962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074822.P9293300398303956962

namespace A074822

/-- `∩[A056772(n+1), A132234(n+1)]` -/
def P9293300398303956962.Spec : Prop :=
  ∀ n, (P9293300398303956962.a n : ℤ) = A074822 (n + 1)

end A074822

/-! ## A074822.P17874906260609589235

`p?[A030431(n+1)-4]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A074822

/-- `p?[A030431(n+1)-4]` -/
def P17874906260609589235.Spec : Prop :=
  ∀ n, P17874906260609589235.a n = A074822 (n + 1)

theorem P17874906260609589235.correct : P17874906260609589235.Spec := by
  intro n
  simp only [A074822, Nat.add_sub_cancel]

end A074822

/-! ## A074822.P6857591958535123932

`p?[A132235(n+1)-4]`
-/

namespace A074822.P6857591958535123932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074822.P6857591958535123932

namespace A074822

/-- `p?[A132235(n+1)-4]` -/
def P6857591958535123932.Spec : Prop :=
  ∀ n, P6857591958535123932.a n = A074822 (n + 1)

end A074822

/-! ## A074822.P16797226617344905193

`∩[A015913(n+1), A243174(n+1)]`
-/

namespace A074822.P16797226617344905193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074822.P16797226617344905193

namespace A074822

/-- `∩[A015913(n+1), A243174(n+1)]` -/
def P16797226617344905193.Spec : Prop :=
  ∀ n, (P16797226617344905193.a n : ℤ) = A074822 (n + 1)

end A074822

/-! ## A074822.P13981921289934317038

`∩[A029710(n+1), A243174(n+1)]`
-/

namespace A074822.P13981921289934317038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074822.P13981921289934317038

namespace A074822

/-- `∩[A029710(n+1), A243174(n+1)]` -/
def P13981921289934317038.Spec : Prop :=
  ∀ n, (P13981921289934317038.a n : ℤ) = A074822 (n + 1)

end A074822

/-! ## A074822.P4822182965566398734

`∩[A172238(n+1), A243174(n+1)]`
-/

namespace A074822.P4822182965566398734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074822.P4822182965566398734

namespace A074822

/-- `∩[A172238(n+1), A243174(n+1)]` -/
def P4822182965566398734.Spec : Prop :=
  ∀ n, (P4822182965566398734.a n : ℤ) = A074822 (n + 1)

end A074822

/-! ## A074822.P15309490613844405844

`∩[A030433(n+1), A111980(n+1)]`
-/

namespace A074822.P15309490613844405844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074822.P15309490613844405844

namespace A074822

/-- `∩[A030433(n+1), A111980(n+1)]` -/
def P15309490613844405844.Spec : Prop :=
  ∀ n, (P15309490613844405844.a n : ℤ) = A074822 (n + 1)

end A074822

/-! ## A074822.P7014230946005144516

`∩[A111980(n+1), A132234(n+1)]`
-/

namespace A074822.P7014230946005144516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074822.P7014230946005144516

namespace A074822

/-- `∩[A111980(n+1), A132234(n+1)]` -/
def P7014230946005144516.Spec : Prop :=
  ∀ n, (P7014230946005144516.a n : ℤ) = A074822 (n + 1)

end A074822

/-! ## A074822.P15702606136526327859

`∩[A111980(n+1), A243174(n+1)]`
-/

namespace A074822.P15702606136526327859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074822.P15702606136526327859

namespace A074822

/-- `∩[A111980(n+1), A243174(n+1)]` -/
def P15702606136526327859.Spec : Prop :=
  ∀ n, (P15702606136526327859.a n : ℤ) = A074822 (n + 1)

end A074822

/-! ## A074822.P2101853638990890108

`∩[A015913(n+1), A033212(n+1)]`
-/

namespace A074822.P2101853638990890108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074822.P2101853638990890108

namespace A074822

/-- `∩[A015913(n+1), A033212(n+1)]` -/
def P2101853638990890108.Spec : Prop :=
  ∀ n, (P2101853638990890108.a n : ℤ) = A074822 (n + 1)

end A074822

/-! ## A074822.P10268743723563387375

`∩[A029710(n+1), A033212(n+1)]`
-/

namespace A074822.P10268743723563387375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074822.P10268743723563387375

namespace A074822

/-- `∩[A029710(n+1), A033212(n+1)]` -/
def P10268743723563387375.Spec : Prop :=
  ∀ n, (P10268743723563387375.a n : ℤ) = A074822 (n + 1)

end A074822

/-! ## A074822.P4894754701164297319

`∩[A033212(n+1), A056772(n+1)]`
-/

namespace A074822.P4894754701164297319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074822.P4894754701164297319

namespace A074822

/-- `∩[A033212(n+1), A056772(n+1)]` -/
def P4894754701164297319.Spec : Prop :=
  ∀ n, (P4894754701164297319.a n : ℤ) = A074822 (n + 1)

end A074822

/-! ## A074822.P5079685223062691177

`∩[A033212(n+1), A111980(n+1)]`
-/

namespace A074822.P5079685223062691177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074822.P5079685223062691177

namespace A074822

/-- `∩[A033212(n+1), A111980(n+1)]` -/
def P5079685223062691177.Spec : Prop :=
  ∀ n, (P5079685223062691177.a n : ℤ) = A074822 (n + 1)

end A074822

/-! ## A074822.P10380026004030891905

`∩[A033212(n+1), A172238(n+1)]`
-/

namespace A074822.P10380026004030891905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074822.P10380026004030891905

namespace A074822

/-- `∩[A033212(n+1), A172238(n+1)]` -/
def P10380026004030891905.Spec : Prop :=
  ∀ n, (P10380026004030891905.a n : ℤ) = A074822 (n + 1)

end A074822

/-!
# A074823: a(n) = 2^omega(n)*mu(n)^2.

The programs for A074823, the canonical program `A074823.P11429893750671731771` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074823 has offset 1).

The definition of A074823 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A074823.P5965693296383476244

`abs(A226177(n+1))`
-/

namespace A074823.P5965693296383476244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A226177 (n + 1)|

end

end A074823.P5965693296383476244

namespace A074823

/-- `abs(A226177(n+1))` -/
def P5965693296383476244.Spec : Prop :=
  ∀ n, P5965693296383476244.a n = A074823 (n + 1)

end A074823

/-! ## A074823.P11429893750671731771

`A034444(n+1)*A008966(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A074823

/-- `A034444(n+1)*A008966(n+1)` -/
def P11429893750671731771.Spec : Prop :=
  ∀ n, P11429893750671731771.a n = A074823 (n + 1)

theorem P11429893750671731771.correct : P11429893750671731771.Spec := by
  intro n
  simp only [A074823, Nat.add_sub_cancel]

end A074823

/-! ## A074823.P11021052584220385067

`2^A001221(n+1)*A008683(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A074823.P11021052584220385067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (n + 1) : ℤ) * (A008683 (n + 1) ^ 2 : ℚ)

end

end A074823.P11021052584220385067

namespace A074823

/-- `2^A001221(n+1)*A008683(n+1)²` -/
def P11021052584220385067.Spec : Prop :=
  ∀ n, P11021052584220385067.a n = (A074823 (n + 1) : ℚ)

end A074823

/-! ## A074823.P14901981819970450219

`∏{e}[n+1, C(2, #²)]`
-/

namespace A074823.P14901981819970450219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.choose 2 (Nat.factorization (f1 n) p ^ 2)

end

end A074823.P14901981819970450219

namespace A074823

/-- `∏{e}[n+1, C(2, #²)]` -/
def P14901981819970450219.Spec : Prop :=
  ∀ n, (P14901981819970450219.a n : ℤ) = A074823 (n + 1)

end A074823

/-! ## A074823.P1216869542512200233

`∏{e}[n+1, (2^#)%4]`
-/

namespace A074823.P1216869542512200233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p % 4

end

end A074823.P1216869542512200233

namespace A074823

/-- `∏{e}[n+1, (2^#)%4]` -/
def P1216869542512200233.Spec : Prop :=
  ∀ n, (P1216869542512200233.a n : ℤ) = A074823 (n + 1)

end A074823

/-! ## A074823.P16410805866083239827

`∏{e}[n+1, and(2, 2^#)]`
-/

namespace A074823.P16410805866083239827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.land 2 (2 ^ Nat.factorization (f1 n) p)

end

end A074823.P16410805866083239827

namespace A074823

/-- `∏{e}[n+1, and(2, 2^#)]` -/
def P16410805866083239827.Spec : Prop :=
  ∀ n, (P16410805866083239827.a n : ℤ) = A074823 (n + 1)

end A074823

/-! ## A074823.P13662113979990997737

`∏{e}[n+1, floor(2/#²)]`
-/

namespace A074823.P13662113979990997737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌊2 / (Nat.factorization (f1 n) p ^ 2 : ℚ)⌋

end

end A074823.P13662113979990997737

namespace A074823

/-- `∏{e}[n+1, floor(2/#²)]` -/
def P13662113979990997737.Spec : Prop :=
  ∀ n, P13662113979990997737.a n = A074823 (n + 1)

end A074823

/-! ## A074823.P12755833196380530984

`sqrt(A351521(n+1))`
-/

namespace A074823.P12755833196380530984
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A351521 (n + 1) : ℝ)

end

end A074823.P12755833196380530984

namespace A074823

/-- `sqrt(A351521(n+1))` -/
def P12755833196380530984.Spec : Prop :=
  ∀ n, P12755833196380530984.a n = (A074823 (n + 1) : ℝ)

end A074823

/-! ## A074823.P5373841382492613009

`A114811(4*(n+1))`
-/

namespace A074823.P5373841382492613009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114811 (4 * (n + 1))

end

end A074823.P5373841382492613009

namespace A074823

/-- `A114811(4*(n+1))` -/
def P5373841382492613009.Spec : Prop :=
  ∀ n, P5373841382492613009.a n = A074823 (n + 1)

end A074823

/-! ## A074823.P2084587157214248167

`A048298(A073184(n+1))`
-/

namespace A074823.P2084587157214248167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (A073184 (n + 1)).toNat

end

end A074823.P2084587157214248167

namespace A074823

/-- `A048298(A073184(n+1))` -/
def P2084587157214248167.Spec : Prop :=
  ∀ n, P2084587157214248167.a n = A074823 (n + 1)

end A074823

/-! ## A074823.P16618952175006459341

`A048298(A181819(n+1))`
-/

namespace A074823.P16618952175006459341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (A181819 (n + 1)).toNat

end

end A074823.P16618952175006459341

namespace A074823

/-- `A048298(A181819(n+1))` -/
def P16618952175006459341.Spec : Prop :=
  ∀ n, P16618952175006459341.a n = A074823 (n + 1)

end A074823

/-! ## A074823.P17546142383168486662

`A048298(A318470(n+1))`
-/

namespace A074823.P17546142383168486662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (A318470 (n + 1)).toNat

end

end A074823.P17546142383168486662

namespace A074823

/-- `A048298(A318470(n+1))` -/
def P17546142383168486662.Spec : Prop :=
  ∀ n, P17546142383168486662.a n = A074823 (n + 1)

end A074823

/-! ## A074823.P6855873859526213591

`gcd(A000038(n), A226177(n+1))`
-/

namespace A074823.P6855873859526213591
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A226177 (n + 1))

end

end A074823.P6855873859526213591

namespace A074823

/-- `gcd(A000038(n), A226177(n+1))` -/
def P6855873859526213591.Spec : Prop :=
  ∀ n, (P6855873859526213591.a n : ℤ) = A074823 (n + 1)

end A074823

/-! ## A074823.P11589677690466557086

`lcm(A000034(n), A226177(n+1))`
-/

namespace A074823.P11589677690466557086
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A226177 (n + 1))

end

end A074823.P11589677690466557086

namespace A074823

/-- `lcm(A000034(n), A226177(n+1))` -/
def P11589677690466557086.Spec : Prop :=
  ∀ n, (P11589677690466557086.a n : ℤ) = A074823 (n + 1)

end A074823

/-! ## A074823.P11881868978648928580

`lcm(A285193(n), A306653(n+1))`
-/

namespace A074823.P11881868978648928580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A285193 n) (A306653 (n + 1))

end

end A074823.P11881868978648928580

namespace A074823

/-- `lcm(A285193(n), A306653(n+1))` -/
def P11881868978648928580.Spec : Prop :=
  ∀ n, (P11881868978648928580.a n : ℤ) = A074823 (n + 1)

end A074823

/-! ## A074823.P5754481305691445928

`and(A029882(n), A046644(n+1))`
-/

namespace A074823.P5754481305691445928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029882 n) (A046644 (n + 1))

end

end A074823.P5754481305691445928

namespace A074823

/-- `and(A029882(n), A046644(n+1))` -/
def P5754481305691445928.Spec : Prop :=
  ∀ n, P5754481305691445928.a n = A074823 (n + 1)

end A074823

/-! ## A074823.P6230437418147554576

`and(A029882(n), A226177(n+1))`
-/

namespace A074823.P6230437418147554576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029882 n) (A226177 (n + 1))

end

end A074823.P6230437418147554576

namespace A074823

/-- `and(A029882(n), A226177(n+1))` -/
def P6230437418147554576.Spec : Prop :=
  ∀ n, P6230437418147554576.a n = A074823 (n + 1)

end A074823

/-! ## A074823.P7972384375394913194

`∑{d}[A055615(n+1), A008966(#)]`
-/

namespace A074823.P7972384375394913194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008966 d

end

end A074823.P7972384375394913194

namespace A074823

/-- `∑{d}[A055615(n+1), A008966(#)]` -/
def P7972384375394913194.Spec : Prop :=
  ∀ n, P7972384375394913194.a n = A074823 (n + 1)

end A074823

/-! ## A074823.P10654856470900446931

`∑{d}[A055615(n+1), A035316(#)]`
-/

namespace A074823.P10654856470900446931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A035316 d

end

end A074823.P10654856470900446931

namespace A074823

/-- `∑{d}[A055615(n+1), A035316(#)]` -/
def P10654856470900446931.Spec : Prop :=
  ∀ n, P10654856470900446931.a n = A074823 (n + 1)

end A074823

/-! ## A074823.P1903882091604535030

`A000005(n+1)*A008966(n+1)`
-/

namespace A074823.P1903882091604535030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A008966 (n + 1)

end

end A074823.P1903882091604535030

namespace A074823

/-- `A000005(n+1)*A008966(n+1)` -/
def P1903882091604535030.Spec : Prop :=
  ∀ n, P1903882091604535030.a n = A074823 (n + 1)

end A074823

/-!
# A074824: Numbers k such that 2^k + Fibonacci(k) is prime.

The programs for A074824, there is no canonical definition to state claims against.
-/

/-! ## A074824.P13165395390103151727

`A284722(A233193(n+2))`
-/

namespace A074824.P13165395390103151727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284722 (A233193 (n + 2)).toNat

end

end A074824.P13165395390103151727

/-! ## A074824.P6865496764594070409

`A336422(A333497(n))+A130234(n)`
-/

namespace A074824.P6865496764594070409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336422 (A333497 n).toNat + A130234 n

end

end A074824.P6865496764594070409

/-! ## A074824.P7867477844720445493

`lt[A209628(n+1), A033715(A007089(n))]`
-/

namespace A074824.P7867477844720445493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 (A007089 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A074824.P7867477844720445493

/-! ## A074824.P4941529008919978803

`A328959(A038718(3*n+4))+A324926(n+1)`
-/

namespace A074824.P4941529008919978803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328959 (A038718 (3 * n + 4)).toNat + A324926 (n + 1)

end

end A074824.P4941529008919978803

/-!
# A074826: Binomial transform of reflected pentanacci numbers A074062: a(n) = Sum_{k=0..n}(-1)^k*binomial(n, k)*A074062(k).

The programs for A074826, the canonical program `A074826.P9270957454152524524` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074826 has offset 0).

The definition of A074826 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 305 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074826.P9270957454152524524

`6*a(n-1)-15*a(n-2)+20*a(n-3)-15*a(n-4)+4*a(n-5)` with `a(0)=5, a(1)=6, a(2)=6, a(3)=6, a(4)=6`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A074826

/-- `6*a(n-1)-15*a(n-2)+20*a(n-3)-15*a(n-4)+4*a(n-5)` -/
def P9270957454152524524.Spec : Prop :=
  ∀ n, P9270957454152524524.a n = A074826 n

theorem P9270957454152524524.correct : P9270957454152524524.Spec := by
  intro n
  simp only [A074826]

end A074826

/-!
# A074827: Numbers n such that tau(n) > tau(n+1) where tau(x) = A000005(x).

The programs for A074827, there is no canonical definition to state claims against.
-/

/-! ## A074827.P9656449203368327677

`∑[A303577(n+1)]`
-/

namespace A074827.P9656449203368327677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074827.P9656449203368327677

/-! ## A074827.P5580059164542614737

`A303577(n+1)+A303578(n+1)-1`
-/

namespace A074827.P5580059164542614737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303577 (n + 1) + (A303578 (n + 1) - 1)

end

end A074827.P5580059164542614737

/-! ## A074827.P9762993756488686564

`A303578(n+2)-1`
-/

namespace A074827.P9762993756488686564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303578 (n + 2) - 1

end

end A074827.P9762993756488686564

/-! ## A074827.P1313304533315332995

`lt[A000005(n+1), A032741(n)+1]`
-/

namespace A074827.P1313304533315332995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A074827.P1313304533315332995

/-! ## A074827.P13014408052501455271

`lt[A000005(n+1), A000005(A028310(n))]`
-/

namespace A074827.P13014408052501455271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A074827.P13014408052501455271

/-! ## A074827.P17968628976163488468

`lt[A341062(n+1)+1, 1]`
-/

namespace A074827.P17968628976163488468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341062 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A074827.P17968628976163488468

/-! ## A074827.P11045193478949416808

`A023443(A303578(n+2))`
-/

namespace A074827.P11045193478949416808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A303578 (n + 2)).toNat

end

end A074827.P11045193478949416808

/-! ## A074827.P13991239665502756656

`lt[A032741(n+1), A032741(n)]`
-/

namespace A074827.P13991239665502756656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A074827.P13991239665502756656

/-! ## A074827.P358766398116550233

`lt[A145154(n+1), A145154(n)]`
-/

namespace A074827.P358766398116550233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A074827.P358766398116550233

/-! ## A074827.P5565363382419406623

`lt[A319410(n+1), A319410(n)]`
-/

namespace A074827.P5565363382419406623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A074827.P5565363382419406623

/-! ## A074827.P16132999308396483859

`lt[A038040(n+1), A038040(A028310(n))]`
-/

namespace A074827.P16132999308396483859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A074827.P16132999308396483859

/-! ## A074827.P302794931848916434

`lt[A184389(n+1), A184389(A028310(n))]`
-/

namespace A074827.P302794931848916434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184389 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A074827.P302794931848916434

/-! ## A074827.P16855271704371691756

`lt[Δ[∏{d}[n, #]], 0]`
-/

namespace A074827.P16855271704371691756
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), d

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A074827.P16855271704371691756

/-! ## A074827.P8301275774785027973

`lt[ratio[∏{d}[n, #]], 1]`
-/

namespace A074827.P8301275774785027973
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), d

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℚ)) n

end

end A074827.P8301275774785027973

/-! ## A074827.P8820816429546313959

`lt[∏{d}[n+1, #], ∏{d}[n, #]]`
-/

namespace A074827.P8820816429546313959
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), d

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A074827.P8820816429546313959

/-!
# A074828: a(1) = 1; for n>1, a(n) = smallest composite multiple of n if n is a prime else the smallest prime divisor of n if n is composite.

The programs for A074828, there is no canonical definition to state claims against.
-/

/-! ## A074828.P4661540476736789942

`A159475(n+1)%A071262(n)`
-/

namespace A074828.P4661540476736789942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159475 (n + 1)) (A071262 n)

end

end A074828.P4661540476736789942

/-! ## A074828.P17211470342795204381

`gcd(A063918(n+1), A103517(n))`
-/

namespace A074828.P17211470342795204381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A063918 (n + 1)) (A103517 n)

end

end A074828.P17211470342795204381

/-! ## A074828.P3110279488181984969

`A061397(n+1)+A020639(n+1)`
-/

namespace A074828.P3110279488181984969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1) + A020639 (n + 1)

end

end A074828.P3110279488181984969

/-! ## A074828.P15582127037402655068

`A250480(n+1)+A089026(n+1)`
-/

namespace A074828.P15582127037402655068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250480 (n + 1) + A089026 (n + 1)

end

end A074828.P15582127037402655068

/-! ## A074828.P6460983013289664156

`A061228(n+1)-A191558(n+1)`
-/

namespace A074828.P6460983013289664156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061228 (n + 1) - A191558 (n + 1)

end

end A074828.P6460983013289664156

/-! ## A074828.P7332682944074650876

`A143545(n+1)/A032742(n+1)`
-/

namespace A074828.P7332682944074650876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143545 (n + 1) : ℚ) / (A032742 (n + 1) : ℚ)

end

end A074828.P7332682944074650876

/-! ## A074828.P7374528024795657956

`gcd(A061228(n+1), A143545(n+1))`
-/

namespace A074828.P7374528024795657956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061228 (n + 1)) (A143545 (n + 1))

end

end A074828.P7374528024795657956

/-! ## A074828.P7554923189455314556

`gcd(A066560(n+1), A159475(n+1))`
-/

namespace A074828.P7554923189455314556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066560 (n + 1)) (A159475 (n + 1))

end

end A074828.P7554923189455314556

/-! ## A074828.P2522365598652527391

`(A010051(n+1)+1)*A020639(n+1)`
-/

namespace A074828.P2522365598652527391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010051 (n + 1) + 1) * A020639 (n + 1)

end

end A074828.P2522365598652527391

/-! ## A074828.P4648829084688394405

`(2-A005171(n+1))*A020639(n+1)`
-/

namespace A074828.P4648829084688394405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A005171 (n + 1)) * A020639 (n + 1)

end

end A074828.P4648829084688394405

/-! ## A074828.P1290177883826605049

`2*A020639(n+1)-A063918(n+1)`
-/

namespace A074828.P1290177883826605049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020639 (n + 1) - A063918 (n + 1)

end

end A074828.P1290177883826605049

/-! ## A074828.P6387642228362911462

`C(2, A061007(n+1))*A020639(n+1)`
-/

namespace A074828.P6387642228362911462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (A061007 (n + 1)).toNat : ℤ) * A020639 (n + 1)

end

end A074828.P6387642228362911462

/-! ## A074828.P4203567295713967483

`(char[A006093(n+1)]+1)*A020639(n+1)`
-/

namespace A074828.P4203567295713967483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℤ) * A020639 (n + 1)

end

end A074828.P4203567295713967483

/-! ## A074828.P2320562590233389198

`A000005(A089026(n+1))*A020639(n+1)`
-/

namespace A074828.P2320562590233389198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A089026 (n + 1)).toNat * A020639 (n + 1)

end

end A074828.P2320562590233389198

/-! ## A074828.P475274736382335308

`A103517(n)/A103517(A032742(n+1)-1)`
-/

namespace A074828.P475274736382335308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103517 n : ℚ) / (A103517 (A032742 (n + 1) - 1).toNat : ℚ)

end

end A074828.P475274736382335308

/-! ## A074828.P18273838464697723319

`(A010051(n+1)+1)*A014963(A028233(n+1))`
-/

namespace A074828.P18273838464697723319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010051 (n + 1) + 1) * A014963 (A028233 (n + 1)).toNat

end

end A074828.P18273838464697723319

/-! ## A074828.P490244351223526039

`A020639(n+1)*A206591(C(2, A001222(n+1)))`
-/

namespace A074828.P490244351223526039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A206591 (Nat.choose 2 (A001222 (n + 1)).toNat)

end

end A074828.P490244351223526039

/-! ## A074828.P8106500145585065496

`A253236(A020639(n+1))+C(A253236(n+1), n)`
-/

namespace A074828.P8106500145585065496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253236 (A020639 (n + 1)).toNat + (Nat.choose (A253236 (n + 1)).toNat n : ℤ)

end

end A074828.P8106500145585065496

/-! ## A074828.P2842628728181472726

`(n+1)/A032742(n+1)*A000005(A089026(n+1))`
-/

namespace A074828.P2842628728181472726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A032742 (n + 1) : ℚ) * (A000005 (A089026 (n + 1)).toNat : ℚ)

end

end A074828.P2842628728181472726

/-! ## A074828.P2066857626228790925

`ceil(A020639(n+1)/A000010(n+1))*A020639(n+1)`
-/

namespace A074828.P2066857626228790925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A020639 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)⌉ * A020639 (n + 1)

end

end A074828.P2066857626228790925

/-!
# A074829: Triangle formed by Pascal's rule, except that the n-th row begins and ends with the n-th Fibonacci number.

The programs for A074829, there is no canonical definition to state claims against.
-/

/-! ## A074829.P8574216671904775501

`A316939(n)-A108617(n)`
-/

namespace A074829.P8574216671904775501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316939 n - A108617 n

end

end A074829.P8574216671904775501

/-! ## A074829.P1652968856965002239

`∑[A105809(n)-A108617(n)]`
-/

namespace A074829.P1652968856965002239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105809 n - A108617 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074829.P1652968856965002239

/-! ## A074829.P16666007766570917111

`A316938(n)-2*A316939(n)`
-/

namespace A074829.P16666007766570917111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316938 n - 2 * A316939 n

end

end A074829.P16666007766570917111

/-! ## A074829.P17738126897129227537

`A316938(n)%A316939(A028310(n))`
-/

namespace A074829.P17738126897129227537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316938 n) (A316939 (A028310 n).toNat)

end

end A074829.P17738126897129227537

/-! ## A074829.P557652320083965930

`A316939(n+1)-A105809(n+1)`
-/

namespace A074829.P557652320083965930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316939 (n + 1) - A105809 (n + 1)

end

end A074829.P557652320083965930

/-! ## A074829.P8079037334517354104

`A108617(A007401(n+1))-A136431(n)`
-/

namespace A074829.P8079037334517354104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108617 (A007401 (n + 1)).toNat - A136431 n

end

end A074829.P8079037334517354104

/-! ## A074829.P6735147023616403352

`A108617(A014132(n+1)-1)-A136431(n)`
-/

namespace A074829.P6735147023616403352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108617 (A014132 (n + 1) - 1).toNat - A136431 n

end

end A074829.P6735147023616403352

/-! ## A074829.P3977035082874883165

`A136431(A061579(n+1))+A136431(A007401(n+2))`
-/

namespace A074829.P3977035082874883165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136431 (A061579 (n + 1)).toNat + A136431 (A007401 (n + 2)).toNat

end

end A074829.P3977035082874883165

/-! ## A074829.P9791234547622834132

`A028310(A316938(n)-A316939(n)-A316939(n))`
-/

namespace A074829.P9791234547622834132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A316938 n - A316939 n - A316939 n).toNat

end

end A074829.P9791234547622834132

/-! ## A074829.P15030526083309955794

`A123108(2*a(n-1))+A105809(n)-A108617(n)` with `a(0)=1`
-/

namespace A074829.P15030526083309955794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A123108 (2 * a (n - 1)).toNat + (A105809 n - A108617 n)

end

end A074829.P15030526083309955794

/-! ## A074829.P2104058349252253830

`A002264(A316938(n)-2*A108617(n))`
-/

namespace A074829.P2104058349252253830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A316938 n - 2 * A108617 n).toNat

end

end A074829.P2104058349252253830

/-! ## A074829.P11478776154449554699

`A002264(A316938(n)-A108617(n)-A108617(n))`
-/

namespace A074829.P11478776154449554699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A316938 n - A108617 n - A108617 n).toNat

end

end A074829.P11478776154449554699

/-!
# A074830: Number of base reversals which result in a prime for bases less than n.

The programs for A074830, there is no canonical definition to state claims against.
-/

/-! ## A074830.P17302022323825016890

`A302242(A298340(n)+A000108(n))`
-/

namespace A074830.P17302022323825016890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A298340 n + A000108 n).toNat

end

end A074830.P17302022323825016890

/-! ## A074830.P97368607980509633

`A036710(A341722(n))%A028310(n)`
-/

namespace A074830.P97368607980509633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036710 (A341722 n).toNat) (A028310 n)

end

end A074830.P97368607980509633

/-! ## A074830.P3418572767942126563

`A024896(A317761(n+1))%A028310(n)`
-/

namespace A074830.P3418572767942126563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024896 (A317761 (n + 1)).toNat) (A028310 n)

end

end A074830.P3418572767942126563

/-!
# A074832: Primes whose binary reversal is also prime.

The programs for A074832, there is no canonical definition to state claims against.
-/

/-! ## A074832.P3049412902910800461

`∪[A080790(n+1), A016041(n+1)]`
-/

namespace A074832.P3049412902910800461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A074832.P3049412902910800461

/-! ## A074832.P1122697793812757863

`A143245(A388055(n+1))`
-/

namespace A074832.P1122697793812757863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143245 (A388055 (n + 1)).toNat

end

end A074832.P1122697793812757863

/-! ## A074832.P935312088467011577

`A162742(p?[A162742(2*n+1)])`
-/

namespace A074832.P935312088467011577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162742 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162742 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A074832.P935312088467011577

/-! ## A074832.P13100255940729277050

`A057889(A143245(n+1))`
-/

namespace A074832.P13100255940729277050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A143245 (n + 1)).toNat

end

end A074832.P13100255940729277050

/-! ## A074832.P11098077163970535453

`record[A369044(A369044(n+3))]`
-/

namespace A074832.P11098077163970535453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369044 (A369044 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074832.P11098077163970535453

/-! ## A074832.P1019311292608988820

`p?[A057889(p?[A145341(n+1)])]`
-/

namespace A074832.P1019311292608988820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145341 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074832.P1019311292608988820

/-! ## A074832.P2718251905369082510

`p?[A057889(p?[A057889(n+3)])]`
-/

namespace A074832.P2718251905369082510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074832.P2718251905369082510

/-! ## A074832.P11644843461132927783

`eq[A092976(n), A227864(n)]`
-/

namespace A074832.P11644843461132927783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227864 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074832.P11644843461132927783

/-! ## A074832.P5980040582317915861

`eq[A171565(n), A227864(n)]`
-/

namespace A074832.P5980040582317915861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171565 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227864 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074832.P5980040582317915861

/-! ## A074832.P18045507764371368813

`eq[A217670(n), A227864(n)]`
-/

namespace A074832.P18045507764371368813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217670 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227864 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074832.P18045507764371368813

/-! ## A074832.P6195117033644726360

`eq[A225244(n), A227864(n)]`
-/

namespace A074832.P6195117033644726360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227864 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074832.P6195117033644726360

/-! ## A074832.P18087075387367682974

`eq[A227864(n), A327859(n)]`
-/

namespace A074832.P18087075387367682974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227864 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327859 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074832.P18087075387367682974

/-! ## A074832.P10632498751530652506

`eq[A227864(n), A370117(n)]`
-/

namespace A074832.P10632498751530652506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227864 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074832.P10632498751530652506

/-! ## A074832.P8766237011782614761

`eq[A227864(n), A398023(n)]`
-/

namespace A074832.P8766237011782614761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227864 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074832.P8766237011782614761

/-! ## A074832.P4244416943855025508

`A235027(p?[A235027(n+3)])`
-/

namespace A074832.P4244416943855025508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A074832.P4244416943855025508

/-! ## A074832.P5454286911604364694

`p?[A030101(p?[A145341(n+1)])]`
-/

namespace A074832.P5454286911604364694
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145341 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074832.P5454286911604364694

/-! ## A074832.P12971268608201970246

`p?[A163807(p?[A145341(n+1)])]`
-/

namespace A074832.P12971268608201970246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145341 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163807 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074832.P12971268608201970246

/-! ## A074832.P11922271694968300919

`p?[A163807(p?[A163807(n+3)])]`
-/

namespace A074832.P11922271694968300919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163807 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163807 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074832.P11922271694968300919

/-! ## A074832.P9198219177503482596

`A235027(A143245(2*n+1-n))`
-/

namespace A074832.P9198219177503482596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (A143245 (2 * n + 1 - n)).toNat

end

end A074832.P9198219177503482596

/-! ## A074832.P743645418532925700

`A030101(p?[A030101(p?[2*n+1])])`
-/

namespace A074832.P743645418532925700
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A074832.P743645418532925700

/-!
# A074833: Primes whose ternary reversal is also prime.

The programs for A074833, there is no canonical definition to state claims against.
-/

/-! ## A074833.P16951854544699722236

`p?[A038502(eq[2, A278237(n+1)]+1)]`
-/

namespace A074833.P16951854544699722236
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278237 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074833.P16951854544699722236

/-! ## A074833.P17621957091502810065

`p?[(n+1)*A001222(A030102(n+1))]`
-/

namespace A074833.P17621957091502810065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (A030102 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074833.P17621957091502810065

/-! ## A074833.P2312388300287648792

`p?[A030102(p?[A263273(n)])]`
-/

namespace A074833.P2312388300287648792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074833.P2312388300287648792

/-! ## A074833.P15017413493572030446

`p?[n*A032741(A030102(n))]`
-/

namespace A074833.P15017413493572030446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A032741 (A030102 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074833.P15017413493572030446

/-! ## A074833.P1111764854988393548

`A030102(p?[A030102(A000040(n+1))])`
-/

namespace A074833.P1111764854988393548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A074833.P1111764854988393548

/-! ## A074833.P665086279835979110

`A030102(p?[A003415(n)*A030102(n)])`
-/

namespace A074833.P665086279835979110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n * A030102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A074833.P665086279835979110

/-!
# A074834: Primes whose base 4 reversal is also prime.

The programs for A074834, there is no canonical definition to state claims against.
-/

/-! ## A074834.P9155529014233253400

`p?[(n+1)*A001222(n+1-A055949(n+1))]`
-/

namespace A074834.P9155529014233253400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 ((n + 1 : ℤ) - A055949 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074834.P9155529014233253400

/-! ## A074834.P517464410777841081

`p?[A264994(p?[A264994(n)])]`
-/

namespace A074834.P517464410777841081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264994 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264994 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074834.P517464410777841081

/-! ## A074834.P7269641797328534144

`p?[(n+1)*A001222(A030103(n+1))]`
-/

namespace A074834.P7269641797328534144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (A030103 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074834.P7269641797328534144

/-! ## A074834.P14957626101416956151

`p?[n*A032741(A030103(n))]`
-/

namespace A074834.P14957626101416956151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A032741 (A030103 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074834.P14957626101416956151

/-! ## A074834.P17951342348552379162

`A030103(p?[A030103(A000040(n+1))])`
-/

namespace A074834.P17951342348552379162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030103 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030103 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A074834.P17951342348552379162

/-! ## A074834.P899294981393665279

`A030103(p?[A003415(n)*A030103(n)])`
-/

namespace A074834.P899294981393665279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n * A030103 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030103 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A074834.P899294981393665279

/-!
# A074837: Numbers k such that the penultimate 3 divisors of k sum to k.

The programs for A074837, the canonical program `A074837.P12180014965120219394` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074837 has offset 1).

The definition of A074837 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074837.P12180014965120219394

`a(n-4)+60` with `a(0)=6, a(1)=18, a(2)=42, a(3)=54`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A074837

/-- `a(n-4)+60` -/
def P12180014965120219394.Spec : Prop :=
  ∀ n, (P12180014965120219394.a n : ℤ) = A074837 (n + 1)

theorem P12180014965120219394.correct : P12180014965120219394.Spec := by
  intro n
  simp only [A074837, Nat.add_sub_cancel]

end A074837

/-! ## A074837.P4112947724633882021

`6*lt[5*n, lcm(10, n)]`
-/

namespace A074837.P4112947724633882021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 10 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A074837.P4112947724633882021

namespace A074837

/-- `6*lt[5*n, lcm(10, n)]` -/
def P4112947724633882021.Spec : Prop :=
  ∀ n, (P4112947724633882021.a n : ℤ) = A074837 (n + 1)

end A074837

/-! ## A074837.P7002638489000402090

`6*record[lcm(50, n+5)/50]`
-/

namespace A074837.P7002638489000402090
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 50 (n + 5) : ℚ) / 50

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074837.P7002638489000402090

namespace A074837

/-- `6*record[lcm(50, n+5)/50]` -/
def P7002638489000402090.Spec : Prop :=
  ∀ n, P7002638489000402090.a n = (A074837 (n + 1) : ℚ)

end A074837

/-! ## A074837.P2116601844835917517

`6*or(1, comp[3*n]+n)`
-/

namespace A074837.P2116601844835917517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A074837.P2116601844835917517

namespace A074837

/-- `6*or(1, comp[3*n]+n)` -/
def P2116601844835917517.Spec : Prop :=
  ∀ n, (P2116601844835917517.a n : ℤ) = A074837 (n + 1)

end A074837

/-! ## A074837.P3019444912938111347

`6*(2*comp[5*n+2]+1)`
-/

namespace A074837.P3019444912938111347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A074837.P3019444912938111347

namespace A074837

/-- `6*(2*comp[5*n+2]+1)` -/
def P3019444912938111347.Spec : Prop :=
  ∀ n, (P3019444912938111347.a n : ℤ) = A074837 (n + 1)

end A074837

/-! ## A074837.P12803709539626170799

`record[2*n+lcm(5, 2*n+1)+1]`
-/

namespace A074837.P12803709539626170799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (Nat.lcm 5 (2 * n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074837.P12803709539626170799

namespace A074837

/-- `record[2*n+lcm(5, 2*n+1)+1]` -/
def P12803709539626170799.Spec : Prop :=
  ∀ n, (P12803709539626170799.a n : ℤ) = A074837 (n + 1)

end A074837

/-! ## A074837.P10116843895960277976

`A143988(n+1)+A074229(n+1)`
-/

namespace A074837.P10116843895960277976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143988 (n + 1) + A074229 (n + 1)

end

end A074837.P10116843895960277976

namespace A074837

/-- `A143988(n+1)+A074229(n+1)` -/
def P10116843895960277976.Spec : Prop :=
  ∀ n, P10116843895960277976.a n = A074837 (n + 1)

end A074837

/-! ## A074837.P773037477124927150

`A017593(A047207(n+1))`
-/

namespace A074837.P773037477124927150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017593 (A047207 (n + 1)).toNat

end

end A074837.P773037477124927150

namespace A074837

/-- `A017593(A047207(n+1))` -/
def P773037477124927150.Spec : Prop :=
  ∀ n, P773037477124927150.a n = A074837 (n + 1)

end A074837

/-! ## A074837.P9645107673063177968

`record[(12*n+6)/A104714(A104714(2*n+1))]`
-/

namespace A074837.P9645107673063177968
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (12 * n + 6 : ℚ) / (A104714 (A104714 (2 * n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074837.P9645107673063177968

namespace A074837

/-- `record[(12*n+6)/A104714(A104714(2*n+1))]` -/
def P9645107673063177968.Spec : Prop :=
  ∀ n, P9645107673063177968.a n = (A074837 (n + 1) : ℚ)

end A074837

/-! ## A074837.P11260409652580564600

`A016825(A016825(n)-A110657(n+1))`
-/

namespace A074837.P11260409652580564600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A016825 n - A110657 (n + 1)).toNat

end

end A074837.P11260409652580564600

namespace A074837

/-- `A016825(A016825(n)-A110657(n+1))` -/
def P11260409652580564600.Spec : Prop :=
  ∀ n, P11260409652580564600.a n = A074837 (n + 1)

end A074837

/-! ## A074837.P5242216376387299829

`filter[A017593(n), A011558(#)]`
-/

namespace A074837.P5242216376387299829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017593 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A074837.P5242216376387299829

namespace A074837

/-- `filter[A017593(n), A011558(#)]` -/
def P5242216376387299829.Spec : Prop :=
  ∀ n, P5242216376387299829.a n = A074837 (n + 1)

end A074837

/-! ## A074837.P8040874480784106851

`record[6*A132740(n+1)]`
-/

namespace A074837.P8040874480784106851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A132740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074837.P8040874480784106851

namespace A074837

/-- `record[6*A132740(n+1)]` -/
def P8040874480784106851.Spec : Prop :=
  ∀ n, P8040874480784106851.a n = A074837 (n + 1)

end A074837

/-! ## A074837.P1066728718674444551

`record[6*A132739(2*n+1)]`
-/

namespace A074837.P1066728718674444551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A132739 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074837.P1066728718674444551

namespace A074837

/-- `record[6*A132739(2*n+1)]` -/
def P1066728718674444551.Spec : Prop :=
  ∀ n, P1066728718674444551.a n = A074837 (n + 1)

end A074837

/-! ## A074837.P892863695714869255

`A008458(A045572(n+1))`
-/

namespace A074837.P892863695714869255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A045572 (n + 1)).toNat

end

end A074837.P892863695714869255

namespace A074837

/-- `A008458(A045572(n+1))` -/
def P892863695714869255.Spec : Prop :=
  ∀ n, P892863695714869255.a n = A074837 (n + 1)

end A074837

/-! ## A074837.P5430567219383884400

`filter[A008458(2*n+1), A011558(#)]`
-/

namespace A074837.P5430567219383884400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A074837.P5430567219383884400

namespace A074837

/-- `filter[A008458(2*n+1), A011558(#)]` -/
def P5430567219383884400.Spec : Prop :=
  ∀ n, P5430567219383884400.a n = A074837 (n + 1)

end A074837

/-! ## A074837.P2385415119659420877

`filter[A008588(2*n+1), A011558(#)]`
-/

namespace A074837.P2385415119659420877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A074837.P2385415119659420877

namespace A074837

/-- `filter[A008588(2*n+1), A011558(#)]` -/
def P2385415119659420877.Spec : Prop :=
  ∀ n, P2385415119659420877.a n = A074837 (n + 1)

end A074837

/-! ## A074837.P2025622541887537171

`filter[A174012(2*n+1), A011558(#)]`
-/

namespace A074837.P2025622541887537171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174012 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A074837.P2025622541887537171

namespace A074837

/-- `filter[A174012(2*n+1), A011558(#)]` -/
def P2025622541887537171.Spec : Prop :=
  ∀ n, P2025622541887537171.a n = A074837 (n + 1)

end A074837

/-! ## A074837.P13170889432075017012

`filter[A298026(2*n+1), A011558(#)]`
-/

namespace A074837.P13170889432075017012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298026 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A074837.P13170889432075017012

namespace A074837

/-- `filter[A298026(2*n+1), A011558(#)]` -/
def P13170889432075017012.Spec : Prop :=
  ∀ n, P13170889432075017012.a n = A074837 (n + 1)

end A074837

/-! ## A074837.P6964172839322682153

`filter[A298038(2*n+1), A011558(#)]`
-/

namespace A074837.P6964172839322682153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298038 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A074837.P6964172839322682153

namespace A074837

/-- `filter[A298038(2*n+1), A011558(#)]` -/
def P6964172839322682153.Spec : Prop :=
  ∀ n, P6964172839322682153.a n = A074837 (n + 1)

end A074837

/-! ## A074837.P6559723066372276479

`filter[A340519(2*n+1), A011558(#)]`
-/

namespace A074837.P6559723066372276479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340519 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A074837.P6559723066372276479

namespace A074837

/-- `filter[A340519(2*n+1), A011558(#)]` -/
def P6559723066372276479.Spec : Prop :=
  ∀ n, P6559723066372276479.a n = A074837 (n + 1)

end A074837

/-!
# A074839: a(0) = 1, a(n+1) = a(n) + next prime larger than a(n).

The programs for A074839, there is no canonical definition to state claims against.
-/

/-! ## A074839.P1187443321936815260

`∑[A064934(n)]`
-/

namespace A074839.P1187443321936815260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074839.P1187443321936815260

/-! ## A074839.P9951466808176774516

`∑[A112527(n+1)]-1`
-/

namespace A074839.P9951466808176774516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112527 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A074839.P9951466808176774516

/-! ## A074839.P6170909749945420101

`A064934(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A074839.P6170909749945420101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A064934 n + a (A023443 n).toNat

end

end A074839.P6170909749945420101

/-! ## A074839.P2543429909363365735

`∑[A112527(n+1)/A054977(n)]`
-/

namespace A074839.P2543429909363365735
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112527 (n + 1) : ℚ) / (A054977 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074839.P2543429909363365735

/-! ## A074839.P8363011793414186949

`A064934(n)+a(A004273(n)-n)` with `a(0)=1`
-/

namespace A074839.P8363011793414186949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A064934 n + a (A004273 n - (n : ℤ)).toNat

end

end A074839.P8363011793414186949

/-!
# A074840: Numerators a(n) of fractions slowly converging to sqrt(2): let a(1) = 0, b(n) = n - a(n); if (a(n) + 1) / b(n) < sqrt(2), then a(n+1) = a(n) + 1, else a(n+1)= a(n).

The programs for A074840, the canonical program `A074840.P11855230619708373083` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074840 has offset 1).

The definition of A074840 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074840.P11855230619708373083

`floor((n+1)*(2-sqrt(2)))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A074840

/-- `floor((n+1)*(2-sqrt(2)))` -/
def P11855230619708373083.Spec : Prop :=
  ∀ n, P11855230619708373083.a n = A074840 (n + 1)

theorem P11855230619708373083.correct : P11855230619708373083.Spec := by
  intro n
  simp only [A074840, Nat.add_sub_cancel]

end A074840

/-! ## A074840.P1293594027442860147

`∑[3%(Δ[ceil(n*sqrt(2))]+1)]`
-/

namespace A074840.P1293594027442860147
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.sqrt (2 : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (f2 (n + 1) - f2 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074840.P1293594027442860147

namespace A074840

/-- `∑[3%(Δ[ceil(n*sqrt(2))]+1)]` -/
def P1293594027442860147.Spec : Prop :=
  ∀ n, P1293594027442860147.a n = A074840 (n + 1)

end A074840

/-! ## A074840.P17946436063835565008

`(2*n+1)%floor((n+1)*sqrt(2))`
-/

namespace A074840.P17946436063835565008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n + 1 : ℤ) ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋

end

end A074840.P17946436063835565008

namespace A074840

/-- `(2*n+1)%floor((n+1)*sqrt(2))` -/
def P17946436063835565008.Spec : Prop :=
  ∀ n, P17946436063835565008.a n = A074840 (n + 1)

end A074840

/-! ## A074840.P17705463168914744355

`floor(a(a(n-1))/2-a(n-1))+n` with `a(0)=0`
-/

namespace A074840.P17705463168914744355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (a (n - 1)).toNat : ℚ) / 2 - (a (n - 1) : ℚ)⌋ + (n : ℤ)

end

end A074840.P17705463168914744355

namespace A074840

/-- `floor(a(a(n-1))/2-a(n-1))+n` -/
def P17705463168914744355.Spec : Prop :=
  ∀ n, P17705463168914744355.a n = A074840 (n + 1)

end A074840

/-! ## A074840.P7460289606830526501

`floor(a(a(n-1))/2)-(a(n-1)-n)` with `a(0)=0`
-/

namespace A074840.P7460289606830526501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (a (n - 1)).toNat : ℚ) / 2⌋ - (a (n - 1) - (n : ℤ))

end

end A074840.P7460289606830526501

namespace A074840

/-- `floor(a(a(n-1))/2)-(a(n-1)-n)` -/
def P7460289606830526501.Spec : Prop :=
  ∀ n, P7460289606830526501.a n = A074840 (n + 1)

end A074840

/-! ## A074840.P8154922441963139005

`a(n-2)+gcd(1-a(a(n-2)), a(a(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A074840.P8154922441963139005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + Int.gcd (1 - (a (a (n - 2)) : ℤ)) (a (a (n - 1)) : ℤ)

end

end A074840.P8154922441963139005

namespace A074840

/-- `a(n-2)+gcd(1-a(a(n-2)), a(a(n-1)))` -/
def P8154922441963139005.Spec : Prop :=
  ∀ n, (P8154922441963139005.a n : ℤ) = A074840 (n + 1)

end A074840

/-! ## A074840.P11155741310221848039

`∑[A144611(n)]`
-/

namespace A074840.P11155741310221848039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074840.P11155741310221848039

namespace A074840

/-- `∑[A144611(n)]` -/
def P11155741310221848039.Spec : Prop :=
  ∀ n, P11155741310221848039.a n = A074840 (n + 1)

end A074840

/-! ## A074840.P1459642891322095393

`∑[3-A097509(n)]`
-/

namespace A074840.P1459642891322095393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A097509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074840.P1459642891322095393

namespace A074840

/-- `∑[3-A097509(n)]` -/
def P1459642891322095393.Spec : Prop :=
  ∀ n, P1459642891322095393.a n = A074840 (n + 1)

end A074840

/-! ## A074840.P18404104179739074845

`A195119(n+1)-1`
-/

namespace A074840.P18404104179739074845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 (n + 1) - 1

end

end A074840.P18404104179739074845

namespace A074840

/-- `A195119(n+1)-1` -/
def P18404104179739074845.Spec : Prop :=
  ∀ n, P18404104179739074845.a n = A074840 (n + 1)

end A074840

/-! ## A074840.P2717580286276382916

`∑[char[A003152(n+1)]]`
-/

namespace A074840.P2717580286276382916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074840.P2717580286276382916

namespace A074840

/-- `∑[char[A003152(n+1)]]` -/
def P2717580286276382916.Spec : Prop :=
  ∀ n, (P2717580286276382916.a n : ℤ) = A074840 (n + 1)

end A074840

/-! ## A074840.P13214315942063782162

`n-∑[A188037(n+1)]`
-/

namespace A074840.P13214315942063782162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074840.P13214315942063782162

namespace A074840

/-- `n-∑[A188037(n+1)]` -/
def P13214315942063782162.Spec : Prop :=
  ∀ n, P13214315942063782162.a n = A074840 (n + 1)

end A074840

/-! ## A074840.P15769245067304471206

`1-A054071(n+1)+n`
-/

namespace A074840.P15769245067304471206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A054071 (n + 1) + (n : ℤ)

end

end A074840.P15769245067304471206

namespace A074840

/-- `1-A054071(n+1)+n` -/
def P15769245067304471206.Spec : Prop :=
  ∀ n, P15769245067304471206.a n = A074840 (n + 1)

end A074840

/-! ## A074840.P743859126150652712

`A182770(n+1)-(n+1)`
-/

namespace A074840.P743859126150652712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182770 (n + 1) - (n + 1 : ℤ)

end

end A074840.P743859126150652712

namespace A074840

/-- `A182770(n+1)-(n+1)` -/
def P743859126150652712.Spec : Prop :=
  ∀ n, P743859126150652712.a n = A074840 (n + 1)

end A074840

/-! ## A074840.P7078220610948646598

`A195176(n+1)-(n+2)`
-/

namespace A074840.P7078220610948646598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195176 (n + 1) - (n + 2 : ℤ)

end

end A074840.P7078220610948646598

namespace A074840

/-- `A195176(n+1)-(n+2)` -/
def P7078220610948646598.Spec : Prop :=
  ∀ n, P7078220610948646598.a n = A074840 (n + 1)

end A074840

/-! ## A074840.P2531148417148549082

`2*n-A395101(n+1)`
-/

namespace A074840.P2531148417148549082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A395101 (n + 1)

end

end A074840.P2531148417148549082

namespace A074840

/-- `2*n-A395101(n+1)` -/
def P2531148417148549082.Spec : Prop :=
  ∀ n, P2531148417148549082.a n = A074840 (n + 1)

end A074840

/-! ## A074840.P3509621849088498891

`Δ[n²]-A001951(n+1)`
-/

namespace A074840.P3509621849088498891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A001951 (n + 1)

end

end A074840.P3509621849088498891

namespace A074840

/-- `Δ[n²]-A001951(n+1)` -/
def P3509621849088498891.Spec : Prop :=
  ∀ n, P3509621849088498891.a n = A074840 (n + 1)

end A074840

/-! ## A074840.P2798300657805629150

`n-∑[char[A003151(n+1)]]`
-/

namespace A074840.P2798300657805629150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A074840.P2798300657805629150

namespace A074840

/-- `n-∑[char[A003151(n+1)]]` -/
def P2798300657805629150.Spec : Prop :=
  ∀ n, P2798300657805629150.a n = A074840 (n + 1)

end A074840

/-!
# A074841: Square root of n contains n as a string of digits to the immediate right of the decimal point (excluding leading zeros).

The programs for A074841, there is no canonical definition to state claims against.
-/

/-! ## A074841.P4465445915070547523

`filter[A232087(n+3), A372573(#)]`
-/

namespace A074841.P4465445915070547523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232087 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372573 (f1 j).toNat = 1) n)

end

end A074841.P4465445915070547523

/-!
# A074842: Triplets: base 10 representation is the juxtaposition of three identical strings.

The programs for A074842, the canonical program `A074842.P6483684940166264007` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074842 has offset 1).

The definition of A074842 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074842.P6483684940166264007

`n+1+lcm(A020338(n+1), A172503(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A074842

/-- `n+1+lcm(A020338(n+1), A172503(n+1))` -/
def P6483684940166264007.Spec : Prop :=
  ∀ n, (P6483684940166264007.a n : ℤ) = A074842 (n + 1)

theorem P6483684940166264007.correct : P6483684940166264007.Spec := by
  intro n
  simp only [A074842, Nat.add_sub_cancel]

end A074842

/-! ## A074842.P876330299142599154

`A290725(∑[n+2])+1+n`
-/

namespace A074842.P876330299142599154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290725 (∑ j ∈ Finset.range (n + 1), f1 j) + 1 + (n : ℤ)

end

end A074842.P876330299142599154

namespace A074842

/-- `A290725(∑[n+2])+1+n` -/
def P876330299142599154.Spec : Prop :=
  ∀ n, P876330299142599154.a n = A074842 (n + 1)

end A074842

/-! ## A074842.P7749364655865448144

`A290725(A000096(n+1))+n+1`
-/

namespace A074842.P7749364655865448144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290725 (A000096 (n + 1)).toNat + (n + 1 : ℤ)

end

end A074842.P7749364655865448144

namespace A074842

/-- `A290725(A000096(n+1))+n+1` -/
def P7749364655865448144.Spec : Prop :=
  ∀ n, P7749364655865448144.a n = A074842 (n + 1)

end A074842

/-! ## A074842.P17574652002942112689

`A351419(A020338(n+1))+A020338(n+1)`
-/

namespace A074842.P17574652002942112689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351419 (A020338 (n + 1)).toNat + A020338 (n + 1)

end

end A074842.P17574652002942112689

namespace A074842

/-- `A351419(A020338(n+1))+A020338(n+1)` -/
def P17574652002942112689.Spec : Prop :=
  ∀ n, P17574652002942112689.a n = A074842 (n + 1)

end A074842

/-! ## A074842.P1109894148566144216

`A351419(A084854(∑[n+1]))+A105814(n+1)-(n+1)²`
-/

namespace A074842.P1109894148566144216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351419 (A084854 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + (A105814 (n + 1) - ((n + 1) ^ 2 : ℤ))

end

end A074842.P1109894148566144216

namespace A074842

/-- `A351419(A084854(∑[n+1]))+A105814(n+1)-(n+1)²` -/
def P1109894148566144216.Spec : Prop :=
  ∀ n, P1109894148566144216.a n = A074842 (n + 1)

end A074842

/-!
# A074843: Quadruplets: base 10 representation is the juxtaposition of four identical strings.

The programs for A074843, the canonical program `A074843.P12507081766603151711` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074843 has offset 1).

The definition of A074843 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074843.P12507081766603151711

`A020338(A020338(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A074843

/-- `A020338(A020338(n+1))` -/
def P12507081766603151711.Spec : Prop :=
  ∀ n, P12507081766603151711.a n = A074843 (n + 1)

theorem P12507081766603151711.correct : P12507081766603151711.Spec := by
  intro n
  simp only [A074843, Nat.add_sub_cancel]

end A074843

/-! ## A074843.P10344064750909599115

`A127423(∑[2*(n+1)]+(n+1)*(∏{digits}[n+1, floor(#/10)+10]-(n+1)))+1`
-/

namespace A074843.P10344064750909599115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127423 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n + 1 : ℤ) * (((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 10⌋ + 10).prod - (n + 1 : ℤ))).toNat + 1

end

end A074843.P10344064750909599115

namespace A074843

/-- `A127423(∑[2*(n+1)]+(n+1)*(∏{digits}[n+1, floor(#/10)+10]-(n+1)))+1` -/
def P10344064750909599115.Spec : Prop :=
  ∀ n, P10344064750909599115.a n = A074843 (n + 1)

end A074843

/-! ## A074843.P13129304602886957537

`A127423((n+1)*(∏{digits}[n+1, floor(#/10)+10]-(n+1))+(n+1)*(n+2))+1`
-/

namespace A074843.P13129304602886957537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127423 ((n + 1 : ℤ) * (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 10⌋ + 10).prod - (n + 1 : ℤ)) + ((n + 1) * (n + 2) : ℤ)).toNat + 1

end

end A074843.P13129304602886957537

namespace A074843

/-- `A127423((n+1)*(∏{digits}[n+1, floor(#/10)+10]-(n+1))+(n+1)*(n+2))+1` -/
def P13129304602886957537.Spec : Prop :=
  ∀ n, P13129304602886957537.a n = A074843 (n + 1)

end A074843

/-! ## A074843.P3839460777832090401

`A127423(A084854(∑[n+1]))+1`
-/

namespace A074843.P3839460777832090401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127423 (A084854 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + 1

end

end A074843.P3839460777832090401

namespace A074843

/-- `A127423(A084854(∑[n+1]))+1` -/
def P3839460777832090401.Spec : Prop :=
  ∀ n, P3839460777832090401.a n = A074843 (n + 1)

end A074843

/-! ## A074843.P5442433199191848836

`A127423(A084855(∑[n+1]))+1`
-/

namespace A074843.P5442433199191848836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127423 (A084855 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + 1

end

end A074843.P5442433199191848836

namespace A074843

/-- `A127423(A084855(∑[n+1]))+1` -/
def P5442433199191848836.Spec : Prop :=
  ∀ n, P5442433199191848836.a n = A074843 (n + 1)

end A074843

/-! ## A074843.P6088182250194191456

`A127423(A105814(n+1)-(n+1)²)+1`
-/

namespace A074843.P6088182250194191456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127423 (A105814 (n + 1) - ((n + 1) ^ 2 : ℤ)).toNat + 1

end

end A074843.P6088182250194191456

namespace A074843

/-- `A127423(A105814(n+1)-(n+1)²)+1` -/
def P6088182250194191456.Spec : Prop :=
  ∀ n, P6088182250194191456.a n = A074843 (n + 1)

end A074843

/-! ## A074843.P9081614702597407338

`A127423((A235497(n+1)+n+1)/2)+1`
-/

namespace A074843.P9081614702597407338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127423 (SequenceMachineLib.roundAway ((A235497 (n + 1) + (n + 1 : ℤ) : ℚ) / 2)).toNat + 1

end

end A074843.P9081614702597407338

namespace A074843

/-- `A127423((A235497(n+1)+n+1)/2)+1` -/
def P9081614702597407338.Spec : Prop :=
  ∀ n, P9081614702597407338.a n = A074843 (n + 1)

end A074843

/-! ## A074843.P10366492808827136839

`A127423(A055436(n+1)/(n+1)+n)+1`
-/

namespace A074843.P10366492808827136839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127423 (SequenceMachineLib.roundAway ((A055436 (n + 1) : ℚ) / (n + 1 : ℚ) + (n : ℚ))).toNat + 1

end

end A074843.P10366492808827136839

namespace A074843

/-- `A127423(A055436(n+1)/(n+1)+n)+1` -/
def P10366492808827136839.Spec : Prop :=
  ∀ n, P10366492808827136839.a n = A074843 (n + 1)

end A074843

/-!
# A074845: Numbers k such that S(k) = largest difference between consecutive divisors of k (ordered by size), where S(k) is the Kempner function (A002034).

The programs for A074845, the canonical program `A074845.P14330215240908241597` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074845 has offset 1).

The definition of A074845 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074845.P12589150104155187019

`∪[A073582(n+1), A100263(n+1)]`
-/

namespace A074845.P12589150104155187019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073582 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A074845.P12589150104155187019

namespace A074845

/-- `∪[A073582(n+1), A100263(n+1)]` -/
def P12589150104155187019.Spec : Prop :=
  ∀ n, (P12589150104155187019.a n : ℤ) = A074845 (n + 1)

end A074845

/-! ## A074845.P14330215240908241597

`∪[A073582(n+1), A194593(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A074845

/-- `∪[A073582(n+1), A194593(n+1)]` -/
def P14330215240908241597.Spec : Prop :=
  ∀ n, (P14330215240908241597.a n : ℤ) = A074845 (n + 1)

theorem P14330215240908241597.correct : P14330215240908241597.Spec := by
  intro n
  simp only [A074845, Nat.add_sub_cancel]

end A074845

/-! ## A074845.P312337755637256011

`floor(A161344(n+1)+2/A000041(n))`
-/

namespace A074845.P312337755637256011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A161344 (n + 1) : ℚ) + 2 / (A000041 n : ℚ)⌋

end

end A074845.P312337755637256011

namespace A074845

/-- `floor(A161344(n+1)+2/A000041(n))` -/
def P312337755637256011.Spec : Prop :=
  ∀ n, P312337755637256011.a n = A074845 (n + 1)

end A074845

/-! ## A074845.P11826612929242463878

`filter[A070162(n+1), A353799(#)]`
-/

namespace A074845.P11826612929242463878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A074845.P11826612929242463878

namespace A074845

/-- `filter[A070162(n+1), A353799(#)]` -/
def P11826612929242463878.Spec : Prop :=
  ∀ n, P11826612929242463878.a n = A074845 (n + 1)

end A074845

/-! ## A074845.P9369271285076283640

`lt[A072480(A072480(n))², A072480(n)]`
-/

namespace A074845.P9369271285076283640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (A072480 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A074845.P9369271285076283640

namespace A074845

/-- `lt[A072480(A072480(n))², A072480(n)]` -/
def P9369271285076283640.Spec : Prop :=
  ∀ n, (P9369271285076283640.a n : ℤ) = A074845 (n + 1)

end A074845

/-! ## A074845.P11412477395155592299

`∩[A070162(n+1), A323644(n+1)]`
-/

namespace A074845.P11412477395155592299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074845.P11412477395155592299

namespace A074845

/-- `∩[A070162(n+1), A323644(n+1)]` -/
def P11412477395155592299.Spec : Prop :=
  ∀ n, (P11412477395155592299.a n : ℤ) = A074845 (n + 1)

end A074845

/-! ## A074845.P14451308366496597328

`filter[A048751(n+1), A353799(#)]`
-/

namespace A074845.P14451308366496597328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A074845.P14451308366496597328

namespace A074845

/-- `filter[A048751(n+1), A353799(#)]` -/
def P14451308366496597328.Spec : Prop :=
  ∀ n, P14451308366496597328.a n = A074845 (n + 1)

end A074845

/-! ## A074845.P10559134698130844511

`∩[A048751(n+1), A323644(n+1)]`
-/

namespace A074845.P10559134698130844511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074845.P10559134698130844511

namespace A074845

/-- `∩[A048751(n+1), A323644(n+1)]` -/
def P10559134698130844511.Spec : Prop :=
  ∀ n, (P10559134698130844511.a n : ℤ) = A074845 (n + 1)

end A074845

/-! ## A074845.P9431382769181979557

`filter[A120736(n+3), A353799(#)]`
-/

namespace A074845.P9431382769181979557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120736 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A074845.P9431382769181979557

namespace A074845

/-- `filter[A120736(n+3), A353799(#)]` -/
def P9431382769181979557.Spec : Prop :=
  ∀ n, P9431382769181979557.a n = A074845 (n + 1)

end A074845

/-! ## A074845.P2469806074317577875

`∩[A120736(n+1), A323644(n+1)]`
-/

namespace A074845.P2469806074317577875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074845.P2469806074317577875

namespace A074845

/-- `∩[A120736(n+1), A323644(n+1)]` -/
def P2469806074317577875.Spec : Prop :=
  ∀ n, (P2469806074317577875.a n : ℤ) = A074845 (n + 1)

end A074845

/-! ## A074845.P14178186313711465077

`∩[A007964(n+1), A048751(n+1)]`
-/

namespace A074845.P14178186313711465077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074845.P14178186313711465077

namespace A074845

/-- `∩[A007964(n+1), A048751(n+1)]` -/
def P14178186313711465077.Spec : Prop :=
  ∀ n, (P14178186313711465077.a n : ℤ) = A074845 (n + 1)

end A074845

/-! ## A074845.P390432323926500435

`∩[A007964(n+1), A070162(n+1)]`
-/

namespace A074845.P390432323926500435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074845.P390432323926500435

namespace A074845

/-- `∩[A007964(n+1), A070162(n+1)]` -/
def P390432323926500435.Spec : Prop :=
  ∀ n, (P390432323926500435.a n : ℤ) = A074845 (n + 1)

end A074845

/-! ## A074845.P16893463924755952761

`lt[n, A056583(abs(2-n)+2)]`
-/

namespace A074845.P16893463924755952761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056583 (|2 - (n : ℤ)| + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A074845.P16893463924755952761

namespace A074845

/-- `lt[n, A056583(abs(2-n)+2)]` -/
def P16893463924755952761.Spec : Prop :=
  ∀ n, (P16893463924755952761.a n : ℤ) = A074845 (n + 1)

end A074845

/-! ## A074845.P4120781177540404742

`lt[n+2, A056583(n+2)]+2`
-/

namespace A074845.P4120781177540404742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056583 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A074845.P4120781177540404742

namespace A074845

/-- `lt[n+2, A056583(n+2)]+2` -/
def P4120781177540404742.Spec : Prop :=
  ∀ n, (P4120781177540404742.a n : ℤ) = A074845 (n + 1)

end A074845

/-! ## A074845.P5128721744011695545

`eq[2, A011776(n+1)]+1`
-/

namespace A074845.P5128721744011695545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A074845.P5128721744011695545

namespace A074845

/-- `eq[2, A011776(n+1)]+1` -/
def P5128721744011695545.Spec : Prop :=
  ∀ n, (P5128721744011695545.a n : ℤ) = A074845 (n + 1)

end A074845

/-! ## A074845.P15433405341557492945

`eq[2, A011776(A028310(n))]`
-/

namespace A074845.P15433405341557492945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A074845.P15433405341557492945

namespace A074845

/-- `eq[2, A011776(A028310(n))]` -/
def P15433405341557492945.Spec : Prop :=
  ∀ n, (P15433405341557492945.a n : ℤ) = A074845 (n + 1)

end A074845

/-! ## A074845.P16085150053574452868

`A020725(eq[2, A011776(n+1)])`
-/

namespace A074845.P16085150053574452868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A074845.P16085150053574452868

namespace A074845

/-- `A020725(eq[2, A011776(n+1)])` -/
def P16085150053574452868.Spec : Prop :=
  ∀ n, P16085150053574452868.a n = A074845 (n + 1)

end A074845

/-! ## A074845.P985373410415312308

`eq[A039653(n), A069214(n+1)]`
-/

namespace A074845.P985373410415312308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069214 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074845.P985373410415312308

namespace A074845

/-- `eq[A039653(n), A069214(n+1)]` -/
def P985373410415312308.Spec : Prop :=
  ∀ n, (P985373410415312308.a n : ℤ) = A074845 (n + 1)

end A074845

/-! ## A074845.P14265989600967860342

`eq[2, A011776(A000007(n)+n)]`
-/

namespace A074845.P14265989600967860342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A074845.P14265989600967860342

namespace A074845

/-- `eq[2, A011776(A000007(n)+n)]` -/
def P14265989600967860342.Spec : Prop :=
  ∀ n, (P14265989600967860342.a n : ℤ) = A074845 (n + 1)

end A074845

/-! ## A074845.P12243693481727815072

`eq[2, A011776(A000038(n)+n)]`
-/

namespace A074845.P12243693481727815072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A074845.P12243693481727815072

namespace A074845

/-- `eq[2, A011776(A000038(n)+n)]` -/
def P12243693481727815072.Spec : Prop :=
  ∀ n, (P12243693481727815072.a n : ℤ) = A074845 (n + 1)

end A074845

/-!
# A074846: a(n) is the smallest k > n such that n*k+1 is prime.

The programs for A074846, there is no canonical definition to state claims against.
-/

/-! ## A074846.P13277639786683938301

`A082465(n+1)+1+n`
-/

namespace A074846.P13277639786683938301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082465 (n + 1) + 1 + (n : ℤ)

end

end A074846.P13277639786683938301

/-! ## A074846.P420134905667573994

`A020725(A082465(n+1)+n)`
-/

namespace A074846.P420134905667573994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A082465 (n + 1) + (n : ℤ)).toNat

end

end A074846.P420134905667573994

/-! ## A074846.P7059457514495336117

`(A089726(n+1)-1)/(n+1)`
-/

namespace A074846.P7059457514495336117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089726 (n + 1) - 1 : ℚ) / (n + 1 : ℚ)

end

end A074846.P7059457514495336117

/-! ## A074846.P16395720371053401277

`A003958(A089726(n+1))/(n+1)`
-/

namespace A074846.P16395720371053401277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (A089726 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A074846.P16395720371053401277

/-! ## A074846.P6172576673879620835

`A143594(A098504(2*n+3))+n`
-/

namespace A074846.P6172576673879620835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143594 (A098504 (2 * n + 3)).toNat + (n : ℤ)

end

end A074846.P6172576673879620835

/-!
# A074847: Sum of 4-infinitary divisors of n: if n=Product p(i)^r(i) and d=Product p(i)^s(i), each s(i) has a digit a<=b in its 4-ary expansion everywhere that the corresponding r(i) has a digit b, then d is a 4-infinitary-divisor of n.

The programs for A074847, the canonical program `A074847.P10505165968805150031` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074847 has offset 1).

The definition of A074847 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074847.P10505165968805150031

`A000203(A053165(n+1))*A300909(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A074847

/-- `A000203(A053165(n+1))*A300909(n+1)` -/
def P10505165968805150031.Spec : Prop :=
  ∀ n, P10505165968805150031.a n = A074847 (n + 1)

theorem P10505165968805150031.correct : P10505165968805150031.Spec := by
  intro n
  simp only [A074847, Nat.add_sub_cancel]

end A074847

/-! ## A074847.P10690257198650930717

`A000203((n+1)/A008835(n+1))*A300909(n+1)`
-/

namespace A074847.P10690257198650930717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008835 (n + 1) : ℚ))).toNat * A300909 (n + 1)

end

end A074847.P10690257198650930717

namespace A074847

/-- `A000203((n+1)/A008835(n+1))*A300909(n+1)` -/
def P10690257198650930717.Spec : Prop :=
  ∀ n, P10690257198650930717.a n = A074847 (n + 1)

end A074847

/-! ## A074847.P10736580629318904283

`A000203(A007913(n+1)*A335324(n+1))*A300909(n+1)`
-/

namespace A074847.P10736580629318904283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A007913 (n + 1) * A335324 (n + 1)).toNat * A300909 (n + 1)

end

end A074847.P10736580629318904283

namespace A074847

/-- `A000203(A007913(n+1)*A335324(n+1))*A300909(n+1)` -/
def P10736580629318904283.Spec : Prop :=
  ∀ n, P10736580629318904283.a n = A074847 (n + 1)

end A074847

/-! ## A074847.P17294423633278259440

`A000203(A056553(n+1)/A056555(n+1))*A300909(n+1)`
-/

namespace A074847.P17294423633278259440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A056553 (n + 1) : ℚ) / (A056555 (n + 1) : ℚ))).toNat * A300909 (n + 1)

end

end A074847.P17294423633278259440

namespace A074847

/-- `A000203(A056553(n+1)/A056555(n+1))*A300909(n+1)` -/
def P17294423633278259440.Spec : Prop :=
  ∀ n, P17294423633278259440.a n = A074847 (n + 1)

end A074847

/-! ## A074847.P12303280254426600918

`∑{d}[n+1, #]+1-A247306(xor(n, n+1))`
-/

namespace A074847.P12303280254426600918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d + 1 : ℕ) : ℤ) - A247306 (Nat.xor n (n + 1))

end

end A074847.P12303280254426600918

namespace A074847

/-- `∑{d}[n+1, #]+1-A247306(xor(n, n+1))` -/
def P12303280254426600918.Spec : Prop :=
  ∀ n, P12303280254426600918.a n = A074847 (n + 1)

end A074847

/-!
# A074848: Number of 4-infinitary divisors of n.

The programs for A074848, the canonical program `A074848.P16007081709838019779` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074848 has offset 1).

The definition of A074848 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074848.P1941290085593903967

`A268444(A067029(n+1))*a(A028234(n+1)-1)` with `a(0)=1`
-/

namespace A074848.P1941290085593903967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A268444 (A067029 (n + 1)).toNat * a (A028234 (n + 1) - 1).toNat

end

end A074848.P1941290085593903967

namespace A074848

/-- `A268444(A067029(n+1))*a(A028234(n+1)-1)` -/
def P1941290085593903967.Spec : Prop :=
  ∀ n, P1941290085593903967.a n = A074848 (n + 1)

end A074848

/-! ## A074848.P11315204508064082275

`∏{e}[n+1, A268444(#)]`
-/

namespace A074848.P11315204508064082275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A268444 (Nat.factorization (f1 n) p)

end

end A074848.P11315204508064082275

namespace A074848

/-- `∏{e}[n+1, A268444(#)]` -/
def P11315204508064082275.Spec : Prop :=
  ∀ n, P11315204508064082275.a n = A074848 (n + 1)

end A074848

/-! ## A074848.P16007081709838019779

`∏{e}[n+1, A194740(#)+1]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A074848

/-- `∏{e}[n+1, A194740(#)+1]` -/
def P16007081709838019779.Spec : Prop :=
  ∀ n, P16007081709838019779.a n = A074848 (n + 1)

theorem P16007081709838019779.correct : P16007081709838019779.Spec := by
  intro n
  simp only [A074848, Nat.add_sub_cancel]

end A074848

/-! ## A074848.P2289914038385189579

`∏{e}[n+1, A194765(#)+2]`
-/

namespace A074848.P2289914038385189579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A194765 (Nat.factorization (f1 n) p) + 2)

end

end A074848.P2289914038385189579

namespace A074848

/-- `∏{e}[n+1, A194765(#)+2]` -/
def P2289914038385189579.Spec : Prop :=
  ∀ n, P2289914038385189579.a n = A074848 (n + 1)

end A074848

/-! ## A074848.P6187424780357685915

`∏{e}[n+1, A000005(A101942(#))]`
-/

namespace A074848.P6187424780357685915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000005 (A101942 (Nat.factorization (f1 n) p)).toNat

end

end A074848.P6187424780357685915

namespace A074848

/-- `∏{e}[n+1, A000005(A101942(#))]` -/
def P6187424780357685915.Spec : Prop :=
  ∀ n, P6187424780357685915.a n = A074848 (n + 1)

end A074848

/-! ## A074848.P4090688350883177582

`A000005(A053165(n+1))*A063775(n+1)`
-/

namespace A074848.P4090688350883177582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A053165 (n + 1)).toNat * A063775 (n + 1)

end

end A074848.P4090688350883177582

namespace A074848

/-- `A000005(A053165(n+1))*A063775(n+1)` -/
def P4090688350883177582.Spec : Prop :=
  ∀ n, P4090688350883177582.a n = A074848 (n + 1)

end A074848

/-! ## A074848.P8188421874245101755

`A049419((n+1)*(n+1))/A027750(A049419(n+1))`
-/

namespace A074848.P8188421874245101755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049419 ((n + 1) * (n + 1)) : ℚ) / (A027750 (A049419 (n + 1)).toNat : ℚ)

end

end A074848.P8188421874245101755

namespace A074848

/-- `A049419((n+1)*(n+1))/A027750(A049419(n+1))` -/
def P8188421874245101755.Spec : Prop :=
  ∀ n, P8188421874245101755.a n = (A074848 (n + 1) : ℚ)

end A074848

/-! ## A074848.P11586268024350650742

`∏{e}[(n+1)*(n+1)², A022336(#+1)]`
-/

namespace A074848.P11586268024350650742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A022336 (Nat.factorization (f1 n) p + 1)

end

end A074848.P11586268024350650742

namespace A074848

/-- `∏{e}[(n+1)*(n+1)², A022336(#+1)]` -/
def P11586268024350650742.Spec : Prop :=
  ∀ n, P11586268024350650742.a n = A074848 (n + 1)

end A074848

/-! ## A074848.P9868065971694421758

`∏{e}[A232529(xor(n, n+1))+n, #+1]`
-/

namespace A074848.P9868065971694421758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232529 (Nat.xor n (n + 1)) + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A074848.P9868065971694421758

namespace A074848

/-- `∏{e}[A232529(xor(n, n+1))+n, #+1]` -/
def P9868065971694421758.Spec : Prop :=
  ∀ n, (P9868065971694421758.a n : ℤ) = A074848 (n + 1)

end A074848

/-! ## A074848.P10582035061947602656

`∏{e}[n+1, A000005(A000005(A137005(6*#)))]`
-/

namespace A074848.P10582035061947602656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000005 (A000005 (A137005 (6 * Nat.factorization (f1 n) p)).toNat).toNat

end

end A074848.P10582035061947602656

namespace A074848

/-- `∏{e}[n+1, A000005(A000005(A137005(6*#)))]` -/
def P10582035061947602656.Spec : Prop :=
  ∀ n, P10582035061947602656.a n = A074848 (n + 1)

end A074848

/-!
# A074850: Partial products of successive digits in the decimal expansion of Pi.

The programs for A074850, there is no canonical definition to state claims against.
-/

/-! ## A074850.P17280265900524403704

`A073055(n+1)`
-/

namespace A074850.P17280265900524403704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073055 (n + 1)

end

end A074850.P17280265900524403704

/-!
# A074851: Numbers k such that k and k+1 both have exactly 2 distinct prime factors.

The programs for A074851, the canonical program `A074851.P2009669066819027625` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074851 has offset 1).

The definition of A074851 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5343 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074851.P2009669066819027625

`A304404(eq[1, A304404(n+2)-A304404(n+1)]+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A074851

/-- `A304404(eq[1, A304404(n+2)-A304404(n+1)]+1)` -/
def P2009669066819027625.Spec : Prop :=
  ∀ n, P2009669066819027625.a n = A074851 (n + 1)

theorem P2009669066819027625.correct : P2009669066819027625.Spec := by
  intro n
  simp only [A074851, Nat.add_sub_cancel]

end A074851

/-! ## A074851.P15937194882276591334

`A290480(eq[A290480(n+1)+1, A290480(n+2)]+1)`
-/

namespace A074851.P15937194882276591334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290480 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290480 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290480 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A074851.P15937194882276591334

namespace A074851

/-- `A290480(eq[A290480(n+1)+1, A290480(n+2)]+1)` -/
def P15937194882276591334.Spec : Prop :=
  ∀ n, P15937194882276591334.a n = A074851 (n + 1)

end A074851

/-! ## A074851.P16917844556402173219

`∩[A006049(n+1), A007774(n+1)]`
-/

namespace A074851.P16917844556402173219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074851.P16917844556402173219

namespace A074851

/-- `∩[A006049(n+1), A007774(n+1)]` -/
def P16917844556402173219.Spec : Prop :=
  ∀ n, (P16917844556402173219.a n : ℤ) = A074851 (n + 1)

end A074851

/-! ## A074851.P14326918139423996471

`A007774(eq[1, Δ[A007774(n+1)]]+1)`
-/

namespace A074851.P14326918139423996471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A074851.P14326918139423996471

namespace A074851

/-- `A007774(eq[1, Δ[A007774(n+1)]]+1)` -/
def P14326918139423996471.Spec : Prop :=
  ∀ n, P14326918139423996471.a n = A074851 (n + 1)

end A074851

/-! ## A074851.P31695732987541708

`∩[A007774(n+2)-1, A007774(n+2)]`
-/

namespace A074851.P31695732987541708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074851.P31695732987541708

namespace A074851

/-- `∩[A007774(n+2)-1, A007774(n+2)]` -/
def P31695732987541708.Spec : Prop :=
  ∀ n, (P31695732987541708.a n : ℤ) = A074851 (n + 1)

end A074851

/-! ## A074851.P8279588609420027789

`filter[A006049(n+1), A215480(#)]`
-/

namespace A074851.P8279588609420027789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A074851.P8279588609420027789

namespace A074851

/-- `filter[A006049(n+1), A215480(#)]` -/
def P8279588609420027789.Spec : Prop :=
  ∀ n, P8279588609420027789.a n = A074851 (n + 1)

end A074851

/-! ## A074851.P1161513083529387730

`eq[1, A215480(n+1-A215480(n+1))]`
-/

namespace A074851.P1161513083529387730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215480 ((n + 1 : ℤ) - A215480 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A074851.P1161513083529387730

namespace A074851

/-- `eq[1, A215480(n+1-A215480(n+1))]` -/
def P1161513083529387730.Spec : Prop :=
  ∀ n, (P1161513083529387730.a n : ℤ) = A074851 (n + 1)

end A074851

/-! ## A074851.P9201774841750393822

`eq[A008292(A034444(n+1)+1), A034444(n+2)]+1`
-/

namespace A074851.P9201774841750393822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A034444 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A074851.P9201774841750393822

namespace A074851

/-- `eq[A008292(A034444(n+1)+1), A034444(n+2)]+1` -/
def P9201774841750393822.Spec : Prop :=
  ∀ n, (P9201774841750393822.a n : ℤ) = A074851 (n + 1)

end A074851

/-!
# A074852: Composite n such that n and n+2 are prime powers.

The programs for A074852, there is no canonical definition to state claims against.
-/

/-! ## A074852.P13960925824883486999

`∩[A001597(n+1), A064076(n+1)]`
-/

namespace A074852.P13960925824883486999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074852.P13960925824883486999

/-! ## A074852.P13716561375336498151

`∩[A001597(n+1), A120431(n+2)]`
-/

namespace A074852.P13716561375336498151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074852.P13716561375336498151

/-! ## A074852.P7924561528228202954

`∩[A025475(n+1), A120431(n+2)]`
-/

namespace A074852.P7924561528228202954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074852.P7924561528228202954

/-!
# A074853: Numbers k not in A065036 but such that tau(k) = omega(k)^3.

The programs for A074853, there is no canonical definition to state claims against.
-/

/-! ## A074853.P12250595148216422095

`filter[A351947(n+1), A011765(#)]`
-/

namespace A074853.P12250595148216422095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011765 (f1 j).toNat = 1) n)

end

end A074853.P12250595148216422095

/-!
# A074854: a(n) = Sum_{d|n} (2^(n-d)).

The programs for A074854, the canonical program `A074854.P15378436452442834082` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074854 has offset 1).

The definition of A074854 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074854.P15378436452442834082

`∑[abs(Δ[∑{d}[n, 2^(n-#)]])]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A074854

/-- `∑[abs(Δ[∑{d}[n, 2^(n-#)]])]` -/
def P15378436452442834082.Spec : Prop :=
  ∀ n, P15378436452442834082.a n = (A074854 (n + 1) : ℚ)

end A074854

/-! ## A074854.P18062015514371110178

`∑{d}[n+1, 2^(1-#+n)]`
-/

namespace A074854.P18062015514371110178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ (1 - (d : ℤ) + (n : ℤ) : ℤ)

end

end A074854.P18062015514371110178

namespace A074854

/-- `∑{d}[n+1, 2^(1-#+n)]` -/
def P18062015514371110178.Spec : Prop :=
  ∀ n, P18062015514371110178.a n = (A074854 (n + 1) : ℚ)

end A074854

/-! ## A074854.P9804408893029801445

`Δ[floor(∑[∑{d}[n, 2^(n-#)]])]`
-/

namespace A074854.P9804408893029801445
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), (2 : ℚ) ^ ((n : ℤ) - (d : ℤ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074854.P9804408893029801445

namespace A074854

/-- `Δ[floor(∑[∑{d}[n, 2^(n-#)]])]` -/
def P9804408893029801445.Spec : Prop :=
  ∀ n, P9804408893029801445.a n = A074854 (n + 1)

end A074854

/-! ## A074854.P13053967588345289028

`Δ[ceil(∑[∑{d}[n, 2^(n-#)]])]`
-/

namespace A074854.P13053967588345289028
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), (2 : ℚ) ^ ((n : ℤ) - (d : ℤ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074854.P13053967588345289028

namespace A074854

/-- `Δ[ceil(∑[∑{d}[n, 2^(n-#)]])]` -/
def P13053967588345289028.Spec : Prop :=
  ∀ n, P13053967588345289028.a n = A074854 (n + 1)

end A074854

/-! ## A074854.P245155853242066334

`Δ[round(∑[∑{d}[n, 2^(n-#)]])]`
-/

namespace A074854.P245155853242066334
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), (2 : ℚ) ^ ((n : ℤ) - (d : ℤ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074854.P245155853242066334

namespace A074854

/-- `Δ[round(∑[∑{d}[n, 2^(n-#)]])]` -/
def P245155853242066334.Spec : Prop :=
  ∀ n, P245155853242066334.a n = A074854 (n + 1)

end A074854

/-! ## A074854.P5267136223171247814

`Δ[A178965(n)]-A178965(n)`
-/

namespace A074854.P5267136223171247814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A178965 n

end

end A074854.P5267136223171247814

namespace A074854

/-- `Δ[A178965(n)]-A178965(n)` -/
def P5267136223171247814.Spec : Prop :=
  ∀ n, P5267136223171247814.a n = A074854 (n + 1)

end A074854

/-! ## A074854.P2071243575283268232

`A178965(n+1)-2*A178965(n)`
-/

namespace A074854.P2071243575283268232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178965 (n + 1) - 2 * A178965 n

end

end A074854.P2071243575283268232

namespace A074854

/-- `A178965(n+1)-2*A178965(n)` -/
def P2071243575283268232.Spec : Prop :=
  ∀ n, P2071243575283268232.a n = A074854 (n + 1)

end A074854

/-!
# A074856: Primes p such that all p-k^2 for p/2 < k^2 < p are nonprime.

The programs for A074856, there is no canonical definition to state claims against.
-/

/-! ## A074856.P16863321084122403504

`A308078(A341126(n+9))`
-/

namespace A074856.P16863321084122403504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308078 (A341126 (n + 9)).toNat

end

end A074856.P16863321084122403504

/-! ## A074856.P14226046917920959836

`A109919(2*A102432(n+1))`
-/

namespace A074856.P14226046917920959836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109919 (2 * A102432 (n + 1)).toNat

end

end A074856.P14226046917920959836

/-! ## A074856.P781650562711454317

`A000040(A102432(n+1)^A025428(3*n+1))`
-/

namespace A074856.P781650562711454317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((A102432 (n + 1) : ℚ) ^ (A025428 (3 * n + 1) : ℤ))).toNat

end

end A074856.P781650562711454317

/-!
# A074857: Primes p such that all p-pal for p/2 < pal < p are nonprime, where pal is a palindrome.

The programs for A074857, there is no canonical definition to state claims against.
-/

/-! ## A074857.P11250995005158318732

`∩[A158023(n+1), A229060(n+1)]`
-/

namespace A074857.P11250995005158318732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074857.P11250995005158318732

/-! ## A074857.P13304831698887186461

`A000040(A254329(n+5)%A122736(n))`
-/

namespace A074857.P13304831698887186461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A254329 (n + 5)) (A122736 n)).toNat

end

end A074857.P13304831698887186461

/-!
# A074858: a(n) = a(n-1) + a(n-2) + R(a(n-3)) where a(0) = a(1) = a(2) = 1 and R(n) (A004086) means the reverse of n.

The programs for A074858, there is no canonical definition to state claims against.
-/

/-! ## A074858.P16339557083143661001

`a(n-1)+a(n-2)+A004086(a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A074858.P16339557083143661001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) + a (n - 2) + A004086 (a (n - 3)).toNat

end

end A074858.P16339557083143661001

/-! ## A074858.P1828565285640984924

`A363318(A198518(n))+A198518(n)`
-/

namespace A074858.P1828565285640984924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363318 (A198518 n).toNat + A198518 n

end

end A074858.P1828565285640984924

/-!
# A074859: Number of elements of S_n having the maximum possible order g(n), where g(n) is Landau's function (A000793).

The programs for A074859, there is no canonical definition to state claims against.
-/

/-! ## A074859.P14735689928852096295

`A000793(n)/A074103(n)*A074115(n)`
-/

namespace A074859.P14735689928852096295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000793 n : ℚ) / (A074103 n : ℚ) * (A074115 n : ℚ)

end

end A074859.P14735689928852096295

/-! ## A074859.P1794774405462974669

`n!/A074103(n)`
-/

namespace A074859.P1794774405462974669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A074103 n : ℚ)

end

end A074859.P1794774405462974669

/-! ## A074859.P5201457482308122266

`A000142(n)/A074103(n)`
-/

namespace A074859.P5201457482308122266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A074103 n : ℚ)

end

end A074859.P5201457482308122266

/-! ## A074859.P9766895738307194272

`A130534(∑[n])/A074103(n)`
-/

namespace A074859.P9766895738307194272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130534 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A074103 n : ℚ)

end

end A074859.P9766895738307194272

/-! ## A074859.P12018264317582161750

`Δ[A003422(n)]/A074103(n)`
-/

namespace A074859.P12018264317582161750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A074103 n : ℚ)

end

end A074859.P12018264317582161750

/-! ## A074859.P4703445746753313191

`∏[A028310(n)]/A074103(n)`
-/

namespace A074859.P4703445746753313191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A074103 n : ℚ)

end

end A074859.P4703445746753313191

/-! ## A074859.P3779334395818923038

`A028421(A000217(n))/A074103(n)`
-/

namespace A074859.P3779334395818923038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028421 (A000217 n).toNat : ℚ) / (A074103 n : ℚ)

end

end A074859.P3779334395818923038

/-!
# A074860: a(n) = a(n-1) + R(a(n-2)) + R(a(n-3)) where a(0)=a(1)=a(2)=1 and R(k) = A004086(k) is the reverse of k.

The programs for A074860, there is no canonical definition to state claims against.
-/

/-! ## A074860.P8151066878592849611

`A046665(A047691(n))+A000213(n)`
-/

namespace A074860.P8151066878592849611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (A047691 n).toNat + A000213 n

end

end A074860.P8151066878592849611

/-! ## A074860.P5073593530392203223

`A156874(A361705(n))+A000213(n)`
-/

namespace A074860.P5073593530392203223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156874 (A361705 n).toNat + A000213 n

end

end A074860.P5073593530392203223

/-! ## A074860.P7299605266118984934

`or(A049884(n+1), A113648(A049884(n+1)))`
-/

namespace A074860.P7299605266118984934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A049884 (n + 1)) (A113648 (A049884 (n + 1)).toNat)

end

end A074860.P7299605266118984934

/-!
# A074863: a(n) = a(n-1) + a(n-2) + a(n-3) + R(a(n-4)) where a(0)=a(1)=a(2)=a(3)=1 and R(n) (A004086) is the reverse of n.

The programs for A074863, there is no canonical definition to state claims against.
-/

/-! ## A074863.P14494732503970059702

`A371916(A118767(n+1))%A374266(n+3)`
-/

namespace A074863.P14494732503970059702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A371916 (A118767 (n + 1)).toNat) (A374266 (n + 3))

end

end A074863.P14494732503970059702

/-!
# A074864: a(n) = a(n-1) + a(n-2) + R(a(n-3)) + R(a(n-4)) where a(1)=a(2)=a(3)=a(4)=1 and R(n) (A004086) is the reverse of n.

The programs for A074864, there is no canonical definition to state claims against.
-/

/-! ## A074864.P239014217380280008

`a(n-1)+a(n-2)+A004086(a(n-3))+A004086(a(n-4))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A074864.P239014217380280008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  a (n - 1) + a (n - 2) + A004086 (a (n - 3)).toNat + A004086 (a (n - 4)).toNat

end

end A074864.P239014217380280008

/-! ## A074864.P6641848201017646319

`A318281(A148559(n))`
-/

namespace A074864.P6641848201017646319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318281 (A148559 n).toNat

end

end A074864.P6641848201017646319

/-! ## A074864.P4140684273588276406

`A255724(A325851(n)%A353101(n+1))`
-/

namespace A074864.P4140684273588276406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255724 (Int.tmod (A325851 n) (A353101 (n + 1))).toNat

end

end A074864.P4140684273588276406

/-! ## A074864.P3262413880112405883

`A118759(A074863(n))+A052008(A193581(n+1))`
-/

namespace A074864.P3262413880112405883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A074863 n).toNat + A052008 (A193581 (n + 1)).toNat

end

end A074864.P3262413880112405883

/-!
# A074865: a(n) = a(n-1) + R(a(n-2)) + R(a(n-3)) + R(a(n-4)) where a(1) = a(2) = a(3) = a(4) = 1 and R(n) (A004086) is the reverse of n.

The programs for A074865, there is no canonical definition to state claims against.
-/

/-! ## A074865.P4527701718754733656

`A258266(A000288(n))`
-/

namespace A074865.P4527701718754733656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258266 (A000288 n).toNat

end

end A074865.P4527701718754733656

/-! ## A074865.P8383363847116702794

`A258266(A074863(n))`
-/

namespace A074865.P8383363847116702794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258266 (A074863 n).toNat

end

end A074865.P8383363847116702794

/-! ## A074865.P5203930274349358884

`A258266(A371916(n))`
-/

namespace A074865.P5203930274349358884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258266 (A371916 n).toNat

end

end A074865.P5203930274349358884

/-! ## A074865.P13930445251789112997

`A258266(A074864(n+1))`
-/

namespace A074865.P13930445251789112997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258266 (A074864 (n + 1)).toNat

end

end A074865.P13930445251789112997

/-! ## A074865.P17605806615769252927

`A244481(A316500(n+1))`
-/

namespace A074865.P17605806615769252927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244481 (A316500 (n + 1)).toNat

end

end A074865.P17605806615769252927

/-!
# A074866: Non-balanced numbers in A015763.

The programs for A074866, there is no canonical definition to state claims against.
-/

/-! ## A074866.P17857830343147871173

`∩[A015763(n+1), A078542(n+1)]`
-/

namespace A074866.P17857830343147871173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074866.P17857830343147871173

/-!
# A074867: a(n) = M(a(n-1)) + M(a(n-2)) where a(1)=a(2)=1 and M(k) is the product of the digits of k in base 10.

The programs for A074867, the canonical program `A074867.P812533784924451455` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074867 has offset 1).

The definition of A074867 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074867.P812533784924451455

`a(n-1)+a(n-2)-10*(floor(a(n-1)/10)+floor(a(n-2)/10))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A074867

/-- `a(n-1)+a(n-2)-10*(floor(a(n-1)/10)+floor(a(n-2)/10))` -/
def P812533784924451455.Spec : Prop :=
  ∀ n, P812533784924451455.a n = A074867 (n + 1)

theorem P812533784924451455.correct : P812533784924451455.Spec := by
  intro n
  simp only [A074867, Nat.add_sub_cancel]

end A074867

/-!
# A074871: Start with n and repeatedly apply the map k -> T(k) = A053837(k) + A171765(k); a(n) is the number of steps (at least one) until a prime is reached, or 0 if no prime is ever reached.

The programs for A074871, there is no canonical definition to state claims against.
-/

/-! ## A074871.P16912620820846722864

`A008417(n)%A245554(A001611(n))`
-/

namespace A074871.P16912620820846722864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008417 n) (A245554 (A001611 n).toNat)

end

end A074871.P16912620820846722864

/-! ## A074871.P11450439784966742163

`and(A055090(n), A259760(A068585(n+1)))`
-/

namespace A074871.P11450439784966742163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055090 n) (A259760 (A068585 (n + 1)).toNat)

end

end A074871.P11450439784966742163

/-! ## A074871.P934688109516619542

`A178687(xor(A035942(n), A326594(n)))`
-/

namespace A074871.P934688109516619542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178687 (Int.xor (A035942 n) (A326594 n)).toNat

end

end A074871.P934688109516619542

/-! ## A074871.P13439062252625325472

`A178687(xor(A178691(n), A326594(n)))`
-/

namespace A074871.P13439062252625325472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178687 (Int.xor (A178691 n) (A326594 n)).toNat

end

end A074871.P13439062252625325472

/-! ## A074871.P6317123326645171037

`A333817(A194910(n+1)+A078651(n+1))`
-/

namespace A074871.P6317123326645171037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333817 (A194910 (n + 1) + A078651 (n + 1)).toNat

end

end A074871.P6317123326645171037

/-!
# A074872: Inverse BinomialMean transform of the Fibonacci sequence A000045 (with the initial 0 omitted).

The programs for A074872, the canonical program `A074872.P192293038227093086` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074872 has offset 1).

The definition of A074872 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074872.P3157018193742187578

`5^floor(n/2)`
-/

namespace A074872.P3157018193742187578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A074872.P3157018193742187578

namespace A074872

/-- `5^floor(n/2)` -/
def P3157018193742187578.Spec : Prop :=
  ∀ n, P3157018193742187578.a n = (A074872 (n + 1) : ℚ)

end A074872

/-! ## A074872.P192293038227093086

`5*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A074872

/-- `5*a(n-2)` -/
def P192293038227093086.Spec : Prop :=
  ∀ n, (P192293038227093086.a n : ℤ) = A074872 (n + 1)

theorem P192293038227093086.correct : P192293038227093086.Spec := by
  intro n
  simp only [A074872, Nat.add_sub_cancel]

end A074872

/-! ## A074872.P6629759697120993445

`ogf((1+x)/(1-5x^2))`
-/

namespace A074872.P6629759697120993445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, 0, -5] n

end

end A074872.P6629759697120993445

namespace A074872

/-- `ogf((1+x)/(1-5x^2))` -/
def P6629759697120993445.Spec : Prop :=
  ∀ n, P6629759697120993445.a n = A074872 (n + 1)

end A074872

/-! ## A074872.P3254783904737561045

`∏[6-a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A074872.P3254783904737561045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  6 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A074872.P3254783904737561045

namespace A074872

/-- `∏[6-a(n-1)]` -/
def P3254783904737561045.Spec : Prop :=
  ∀ n, P3254783904737561045.a n = A074872 (n + 1)

end A074872

/-! ## A074872.P5261677362522484226

`∏[ceil(5^((n-1)%2))]`
-/

namespace A074872.P5261677362522484226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(5 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) 2 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A074872.P5261677362522484226

namespace A074872

/-- `∏[ceil(5^((n-1)%2))]` -/
def P5261677362522484226.Spec : Prop :=
  ∀ n, P5261677362522484226.a n = A074872 (n + 1)

end A074872

/-! ## A074872.P17093564970952462259

`or(1, 5^ceil((n-1)/2))`
-/

namespace A074872.P17093564970952462259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (⌈((n : ℤ) - 1 : ℚ) / 2⌉ : ℤ)))

end

end A074872.P17093564970952462259

namespace A074872

/-- `or(1, 5^ceil((n-1)/2))` -/
def P17093564970952462259.Spec : Prop :=
  ∀ n, P17093564970952462259.a n = A074872 (n + 1)

end A074872

/-! ## A074872.P9093266262772309689

`a(n-2)/(1-4/5)` with `a(0)=1, a(1)=1`
-/

namespace A074872.P9093266262772309689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) / (1 - (4 : ℚ) / 5)

end

end A074872.P9093266262772309689

namespace A074872

/-- `a(n-2)/(1-4/5)` -/
def P9093266262772309689.Spec : Prop :=
  ∀ n, P9093266262772309689.a n = (A074872 (n + 1) : ℚ)

end A074872

/-! ## A074872.P4667282749628608950

`floor(5^∑[1-a(n-1)])` with `a(0)=0, a(1)=0`
-/

namespace A074872.P4667282749628608950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)⌋

end

end A074872.P4667282749628608950

namespace A074872

/-- `floor(5^∑[1-a(n-1)])` -/
def P4667282749628608950.Spec : Prop :=
  ∀ n, P4667282749628608950.a n = A074872 (n + 1)

end A074872

/-! ## A074872.P15037016822650620472

`a(n-2)+lcm(4, a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A074872.P15037016822650620472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + Nat.lcm 4 (a (n - 2))

end

end A074872.P15037016822650620472

namespace A074872

/-- `a(n-2)+lcm(4, a(n-2))` -/
def P15037016822650620472.Spec : Prop :=
  ∀ n, (P15037016822650620472.a n : ℤ) = A074872 (n + 1)

end A074872

/-! ## A074872.P3655228565658542512

`A098615(or(1, n))`
-/

namespace A074872.P3655228565658542512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098615 (Nat.lor 1 n)

end

end A074872.P3655228565658542512

namespace A074872

/-- `A098615(or(1, n))` -/
def P3655228565658542512.Spec : Prop :=
  ∀ n, P3655228565658542512.a n = A074872 (n + 1)

end A074872

/-! ## A074872.P1144442626407393531

`A100095(or(1, n))`
-/

namespace A074872.P1144442626407393531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100095 (Nat.lor 1 n)

end

end A074872.P1144442626407393531

namespace A074872

/-- `A100095(or(1, n))` -/
def P1144442626407393531.Spec : Prop :=
  ∀ n, P1144442626407393531.a n = A074872 (n + 1)

end A074872

/-! ## A074872.P10263304164598271353

`A133632(or(1, n))`
-/

namespace A074872.P10263304164598271353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133632 (Nat.lor 1 n)

end

end A074872.P10263304164598271353

namespace A074872

/-- `A133632(or(1, n))` -/
def P10263304164598271353.Spec : Prop :=
  ∀ n, P10263304164598271353.a n = A074872 (n + 1)

end A074872

/-! ## A074872.P11569096694716059639

`A000351(floor(n/2))`
-/

namespace A074872.P11569096694716059639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 ⌊(n : ℚ) / 2⌋.toNat

end

end A074872.P11569096694716059639

namespace A074872

/-- `A000351(floor(n/2))` -/
def P11569096694716059639.Spec : Prop :=
  ∀ n, P11569096694716059639.a n = A074872 (n + 1)

end A074872

/-! ## A074872.P5146215149707577477

`∏[and(5, A099902(n))]`
-/

namespace A074872.P5146215149707577477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 5 (A099902 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A074872.P5146215149707577477

namespace A074872

/-- `∏[and(5, A099902(n))]` -/
def P5146215149707577477.Spec : Prop :=
  ∀ n, P5146215149707577477.a n = A074872 (n + 1)

end A074872

/-! ## A074872.P139437170604649782

`∏[and(5, A106853(n))]`
-/

namespace A074872.P139437170604649782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 5 (A106853 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A074872.P139437170604649782

namespace A074872

/-- `∏[and(5, A106853(n))]` -/
def P139437170604649782.Spec : Prop :=
  ∀ n, P139437170604649782.a n = A074872 (n + 1)

end A074872

/-! ## A074872.P18138791328456933368

`∏[and(5, A169998(n))]`
-/

namespace A074872.P18138791328456933368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 5 (A169998 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A074872.P18138791328456933368

namespace A074872

/-- `∏[and(5, A169998(n))]` -/
def P18138791328456933368.Spec : Prop :=
  ∀ n, P18138791328456933368.a n = A074872 (n + 1)

end A074872

/-! ## A074872.P1448635352914573283

`∏[5%(2*A020639(n+1))]`
-/

namespace A074872.P1448635352914573283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (2 * A020639 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A074872.P1448635352914573283

namespace A074872

/-- `∏[5%(2*A020639(n+1))]` -/
def P1448635352914573283.Spec : Prop :=
  ∀ n, P1448635352914573283.a n = A074872 (n + 1)

end A074872

/-!
# A074877: Number of function calls required to compute ack(3,n), where ack denotes the Ackermann function.

The programs for A074877, the canonical program `A074877.P7718941434962557342` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074877 has offset 0).

The definition of A074877 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074877.P7718941434962557342

`128/3*4^n-40*2^n+3*n+37/3`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A074877

/-- `128/3*4^n-40*2^n+3*n+37/3` -/
def P7718941434962557342.Spec : Prop :=
  ∀ n, P7718941434962557342.a n = (A074877 n : ℚ)

end A074877

/-! ## A074877.P16251501600652201359

`∑[A394960(n+3)]`
-/

namespace A074877.P16251501600652201359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394960 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074877.P16251501600652201359

namespace A074877

/-- `∑[A394960(n+3)]` -/
def P16251501600652201359.Spec : Prop :=
  ∀ n, P16251501600652201359.a n = A074877 n

end A074877

/-! ## A074877.P16060466783427752856

`∑[A126646(n+1)*A290113(n+2)]`
-/

namespace A074877.P16060466783427752856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (n + 1) * A290113 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074877.P16060466783427752856

namespace A074877

/-- `∑[A126646(n+1)*A290113(n+2)]` -/
def P16060466783427752856.Spec : Prop :=
  ∀ n, P16060466783427752856.a n = A074877 n

end A074877

/-! ## A074877.P7995961419156974376

`∑[A036563(n+3)*A126646(n+1)]`
-/

namespace A074877.P7995961419156974376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036563 (n + 3) * A126646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074877.P7995961419156974376

namespace A074877

/-- `∑[A036563(n+3)*A126646(n+1)]` -/
def P7995961419156974376.Spec : Prop :=
  ∀ n, P7995961419156974376.a n = A074877 n

end A074877

/-! ## A074877.P17133589857210792846

`∑[A000225(n+2)*A036563(n+3)]`
-/

namespace A074877.P17133589857210792846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 2) * A036563 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074877.P17133589857210792846

namespace A074877

/-- `∑[A000225(n+2)*A036563(n+3)]` -/
def P17133589857210792846.Spec : Prop :=
  ∀ n, P17133589857210792846.a n = A074877 n

end A074877

/-! ## A074877.P18162468517916504829

`∑[A000225(2*n+5)-A048487(n+2)]`
-/

namespace A074877.P18162468517916504829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (2 * n + 5) - A048487 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074877.P18162468517916504829

namespace A074877

/-- `∑[A000225(2*n+5)-A048487(n+2)]` -/
def P18162468517916504829.Spec : Prop :=
  ∀ n, P18162468517916504829.a n = A074877 n

end A074877

/-! ## A074877.P14228653977495609575

`∑[C(2^(n+3)-2, 2)]`
-/

namespace A074877.P14228653977495609575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((2 ^ (n + 3) : ℤ) - 2).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074877.P14228653977495609575

namespace A074877

/-- `∑[C(2^(n+3)-2, 2)]` -/
def P14228653977495609575.Spec : Prop :=
  ∀ n, (P14228653977495609575.a n : ℤ) = A074877 n

end A074877

/-!
# A074878: Row sums of triangle in A074829.

The programs for A074878, the canonical program `A074878.P3728918960059039724` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074878 has offset 1).

The definition of A074878 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074878.P3728918960059039724

`3*a(n-1)-a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A074878

/-- `3*a(n-1)-a(n-2)-2*a(n-3)` -/
def P3728918960059039724.Spec : Prop :=
  ∀ n, P3728918960059039724.a n = A074878 (n + 1)

theorem P3728918960059039724.correct : P3728918960059039724.Spec := by
  intro n
  simp only [A074878, Nat.add_sub_cancel]

end A074878

/-! ## A074878.P3326418877563627531

`3*2^n-2*A000045(n+2)`
-/

namespace A074878.P3326418877563627531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * 2 ^ n : ℤ) - 2 * A000045 (n + 2)

end

end A074878.P3326418877563627531

namespace A074878

/-- `3*2^n-2*A000045(n+2)` -/
def P3326418877563627531.Spec : Prop :=
  ∀ n, P3326418877563627531.a n = A074878 (n + 1)

end A074878

/-! ## A074878.P6706319355430853950

`2*(a(n-1)+A000045(n-1))` with `a(0)=1`
-/

namespace A074878.P6706319355430853950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + A000045 (n - 1))

end

end A074878.P6706319355430853950

namespace A074878

/-- `2*(a(n-1)+A000045(n-1))` -/
def P6706319355430853950.Spec : Prop :=
  ∀ n, P6706319355430853950.a n = A074878 (n + 1)

end A074878

/-! ## A074878.P1804648886385705836

`ogf((1-x+x^2)/(1-3x+x^2+2x^3))`
-/

namespace A074878.P1804648886385705836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1] [1, -3, 1, 2] n

end

end A074878.P1804648886385705836

namespace A074878

/-- `ogf((1-x+x^2)/(1-3x+x^2+2x^3))` -/
def P1804648886385705836.Spec : Prop :=
  ∀ n, P1804648886385705836.a n = A074878 (n + 1)

end A074878

/-! ## A074878.P11039181466564633816

`A167821(n+1)+2^n`
-/

namespace A074878.P11039181466564633816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167821 (n + 1) + (2 ^ n : ℤ)

end

end A074878.P11039181466564633816

namespace A074878

/-- `A167821(n+1)+2^n` -/
def P11039181466564633816.Spec : Prop :=
  ∀ n, P11039181466564633816.a n = A074878 (n + 1)

end A074878

/-! ## A074878.P2236948712198387731

`A175657(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A074878.P2236948712198387731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A175657 (n - 1) + a (n - 1)

end

end A074878.P2236948712198387731

namespace A074878

/-- `A175657(n-1)+a(n-1)` -/
def P2236948712198387731.Spec : Prop :=
  ∀ n, P2236948712198387731.a n = A074878 (n + 1)

end A074878

/-! ## A074878.P4427486952546160497

`A006355(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A074878.P4427486952546160497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006355 n + 2 * a (n - 1)

end

end A074878.P4427486952546160497

namespace A074878

/-- `A006355(n)+2*a(n-1)` -/
def P4427486952546160497.Spec : Prop :=
  ∀ n, P4427486952546160497.a n = A074878 (n + 1)

end A074878

/-! ## A074878.P10212118974423472234

`2*(A212804(n)+a(n-1))` with `a(0)=1`
-/

namespace A074878.P10212118974423472234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (A212804 n + a (n - 1))

end

end A074878.P10212118974423472234

namespace A074878

/-- `2*(A212804(n)+a(n-1))` -/
def P10212118974423472234.Spec : Prop :=
  ∀ n, P10212118974423472234.a n = A074878 (n + 1)

end A074878

/-! ## A074878.P4701975778266816300

`2*(Δ[A000045(n)]+a(n-1))` with `a(0)=1`
-/

namespace A074878.P4701975778266816300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (f1 (n + 1) - f1 n + a (n - 1))

end

end A074878.P4701975778266816300

namespace A074878

/-- `2*(Δ[A000045(n)]+a(n-1))` -/
def P4701975778266816300.Spec : Prop :=
  ∀ n, P4701975778266816300.a n = A074878 (n + 1)

end A074878

/-! ## A074878.P8190191380626203843

`A131403(n)+A000295(n)`
-/

namespace A074878.P8190191380626203843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131403 n + A000295 n

end

end A074878.P8190191380626203843

namespace A074878

/-- `A131403(n)+A000295(n)` -/
def P8190191380626203843.Spec : Prop :=
  ∀ n, P8190191380626203843.a n = A074878 (n + 1)

end A074878

/-! ## A074878.P3146212655522831823

`A234933(n)+A095121(n)`
-/

namespace A074878.P3146212655522831823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234933 n + A095121 n

end

end A074878.P3146212655522831823

namespace A074878

/-- `A234933(n)+A095121(n)` -/
def P3146212655522831823.Spec : Prop :=
  ∀ n, P3146212655522831823.a n = A074878 (n + 1)

end A074878

/-! ## A074878.P12014929162580482881

`A377728(n)+A051049(n)`
-/

namespace A074878.P12014929162580482881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377728 n + A051049 n

end

end A074878.P12014929162580482881

namespace A074878

/-- `A377728(n)+A051049(n)` -/
def P12014929162580482881.Spec : Prop :=
  ∀ n, P12014929162580482881.a n = A074878 (n + 1)

end A074878

/-! ## A074878.P10655336751331919501

`A104004(n)-A000045(n)`
-/

namespace A074878.P10655336751331919501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104004 n - A000045 n

end

end A074878.P10655336751331919501

namespace A074878

/-- `A104004(n)-A000045(n)` -/
def P10655336751331919501.Spec : Prop :=
  ∀ n, P10655336751331919501.a n = A074878 (n + 1)

end A074878

/-! ## A074878.P17901251694624011182

`A079583(n)-A104161(n)`
-/

namespace A074878.P17901251694624011182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079583 n - A104161 n

end

end A074878.P17901251694624011182

namespace A074878

/-- `A079583(n)-A104161(n)` -/
def P17901251694624011182.Spec : Prop :=
  ∀ n, P17901251694624011182.a n = A074878 (n + 1)

end A074878

/-! ## A074878.P7924257191627445727

`A175660(n)-A008466(n)`
-/

namespace A074878.P7924257191627445727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175660 n - A008466 n

end

end A074878.P7924257191627445727

namespace A074878

/-- `A175660(n)-A008466(n)` -/
def P7924257191627445727.Spec : Prop :=
  ∀ n, P7924257191627445727.a n = A074878 (n + 1)

end A074878

/-! ## A074878.P13671258923109246545

`A007283(n)-record[A118658(n)]`
-/

namespace A074878.P13671258923109246545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074878.P13671258923109246545

namespace A074878

/-- `A007283(n)-record[A118658(n)]` -/
def P13671258923109246545.Spec : Prop :=
  ∀ n, P13671258923109246545.a n = A074878 (n + 1)

end A074878

/-! ## A074878.P18282220480754400952

`A027934(n+1)+A008466(n)`
-/

namespace A074878.P18282220480754400952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027934 (n + 1) + A008466 n

end

end A074878.P18282220480754400952

namespace A074878

/-- `A027934(n+1)+A008466(n)` -/
def P18282220480754400952.Spec : Prop :=
  ∀ n, P18282220480754400952.a n = A074878 (n + 1)

end A074878

/-! ## A074878.P2272240142886210829

`A099036(n)+A008466(n+1)`
-/

namespace A074878.P2272240142886210829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099036 n + A008466 (n + 1)

end

end A074878.P2272240142886210829

namespace A074878

/-- `A099036(n)+A008466(n+1)` -/
def P2272240142886210829.Spec : Prop :=
  ∀ n, P2272240142886210829.a n = A074878 (n + 1)

end A074878

/-! ## A074878.P5166123289324462729

`A119587(n+1)+A000225(n)`
-/

namespace A074878.P5166123289324462729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119587 (n + 1) + A000225 n

end

end A074878.P5166123289324462729

namespace A074878

/-- `A119587(n+1)+A000225(n)` -/
def P5166123289324462729.Spec : Prop :=
  ∀ n, P5166123289324462729.a n = A074878 (n + 1)

end A074878

/-! ## A074878.P7082491161069323167

`A153893(n)-A001595(n+1)`
-/

namespace A074878.P7082491161069323167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153893 n - A001595 (n + 1)

end

end A074878.P7082491161069323167

namespace A074878

/-- `A153893(n)-A001595(n+1)` -/
def P7082491161069323167.Spec : Prop :=
  ∀ n, P7082491161069323167.a n = A074878 (n + 1)

end A074878

/-!
# A074879: 10 - Mod(prime(n),10) when prime(n) + 22 = prime(n+1).

The programs for A074879, there is no canonical definition to state claims against.
-/

/-! ## A074879.P6326852261088246229

`(9*A061779(n+1))%10`
-/

namespace A074879.P6326852261088246229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (9 * A061779 (n + 1)) 10

end

end A074879.P6326852261088246229

/-! ## A074879.P294693136820579764

`A072003(A320709(n+1))`
-/

namespace A074879.P294693136820579764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072003 (A320709 (n + 1)).toNat

end

end A074879.P294693136820579764

/-! ## A074879.P15299105647125321874

`A106586(A061779(n+1)-A017365(2*(n+2)))`
-/

namespace A074879.P15299105647125321874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106586 (A061779 (n + 1) - A017365 (2 * (n + 2))).toNat

end

end A074879.P15299105647125321874

/-! ## A074879.P9046942364778289727

`A106586(A098976(n+1)-22-A017365(2*(n+2)))`
-/

namespace A074879.P9046942364778289727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106586 (A098976 (n + 1) - 22 - A017365 (2 * (n + 2))).toNat

end

end A074879.P9046942364778289727

/-! ## A074879.P15010350540803800937

`A106586(A098976(n+1)-(A017365(n)+2))`
-/

namespace A074879.P15010350540803800937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106586 (A098976 (n + 1) - (A017365 n + 2)).toNat

end

end A074879.P15010350540803800937

/-!
# A074880: Number of labeled cyclic subgroups of S_n having order n.

The programs for A074880, there is no canonical definition to state claims against.
-/

/-! ## A074880.P3243116036880624865

`A074351(n+1)/A000010(n+1)`
-/

namespace A074880.P3243116036880624865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074351 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A074880.P3243116036880624865

/-! ## A074880.P1280800533328642947

`A074351(n+1)/Δ[A002088(n)]`
-/

namespace A074880.P1280800533328642947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074351 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A074880.P1280800533328642947

/-! ## A074880.P10697137526962341967

`A074351(n+1)/Δ[A005728(n)]`
-/

namespace A074880.P10697137526962341967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074351 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A074880.P10697137526962341967

/-! ## A074880.P6478348275339667844

`A074351(n+1)/sqrt(A127473(n+1))`
-/

namespace A074880.P6478348275339667844
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A074351 (n + 1) : ℝ) / Real.sqrt (A127473 (n + 1) : ℝ)

end

end A074880.P6478348275339667844

/-! ## A074880.P10653941554523765979

`A074881(∑[A009490(n)]+n)`
-/

namespace A074880.P10653941554523765979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009490 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074881 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A074880.P10653941554523765979

/-!
# A074881: Triangle T(n,k) giving number of labeled cyclic subgroups of order k in symmetric group S_n, n >= 1, 1 <= k <= g(n), where g(n) = A000793(n) is Landau's function.

The programs for A074881, there is no canonical definition to state claims against.
-/

/-! ## A074881.P3815854368496948392

`A057731(n+1)/A054526(A187829(n+1))`
-/

namespace A074881.P3815854368496948392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057731 (n + 1) : ℚ) / (A054526 (A187829 (n + 1)).toNat : ℚ)

end

end A074881.P3815854368496948392

/-! ## A074881.P3944297714902446948

`A057731(A187829(n+1))/A245851(n+1)`
-/

namespace A074881.P3944297714902446948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057731 (A187829 (n + 1)).toNat : ℚ) / (A245851 (n + 1) : ℚ)

end

end A074881.P3944297714902446948

/-! ## A074881.P12504012631307801532

`A126074(n+1)/(A054526(n+1)*A061704(A036256(n)))`
-/

namespace A074881.P12504012631307801532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126074 (n + 1) : ℚ) / (A054526 (n + 1) * A061704 (A036256 n).toNat : ℚ)

end

end A074881.P12504012631307801532

/-! ## A074881.P9263488728027557570

`A126074(n+1)/(A054526(n+1)*A163100(A094587(n)))`
-/

namespace A074881.P9263488728027557570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126074 (n + 1) : ℚ) / (A054526 (n + 1) * A163100 (A094587 n).toNat : ℚ)

end

end A074881.P9263488728027557570

/-! ## A074881.P1475077646087510883

`floor(A126074(n+1)/A030614(A094587(n)²))/A054526(n+1)`
-/

namespace A074881.P1475077646087510883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A126074 (n + 1) : ℚ) / (A030614 (A094587 n ^ 2).toNat : ℚ)⌋ : ℚ) / (A054526 (n + 1) : ℚ)

end

end A074881.P1475077646087510883

/-!
# A074882: Number of integers in {1, 2, ..., sigma(n)} that are coprime to n.

The programs for A074882, there is no canonical definition to state claims against.
-/

/-! ## A074882.P14363513280244649489

`round(A062354(n+1)/A219291(A000124(n)))`
-/

namespace A074882.P14363513280244649489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A062354 (n + 1) : ℚ) / (A219291 (A000124 n).toNat : ℚ))

end

end A074882.P14363513280244649489

/-! ## A074882.P9934179521188883622

`round(A062354(n+1)/A000005(2^n))`
-/

namespace A074882.P9934179521188883622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A062354 (n + 1) : ℚ) / (A000005 (2 ^ n) : ℚ))

end

end A074882.P9934179521188883622

/-! ## A074882.P3622589361795161347

`round(A062354(n+1)/A001222(2^(n+1)))`
-/

namespace A074882.P3622589361795161347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A062354 (n + 1) : ℚ) / (A001222 (2 ^ (n + 1)) : ℚ))

end

end A074882.P3622589361795161347

/-! ## A074882.P15498376132273130516

`A131818(A161420(n)+A161413(n+1))`
-/

namespace A074882.P15498376132273130516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A161420 n + A161413 (n + 1)).toNat

end

end A074882.P15498376132273130516

/-!
# A074884: For a prime p, let k(p) be the least k such that 2kp+1 is prime. Sequence gives primes for which k(p) exceeds k(q) for all primes q < p.

The programs for A074884, there is no canonical definition to state claims against.
-/

/-! ## A074884.P3091140240455808580

`p?[A036470(n)+2^val(n+1, 2)]`
-/

namespace A074884.P3091140240455808580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036470 n + (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074884.P3091140240455808580

/-!
# A074885: Numbers not of the form x^2 + M*y^2 for integers x > 0, y > 1, M > 0.

The programs for A074885, there is no canonical definition to state claims against.
-/

/-! ## A074885.P10859054931784140249

`eq[A000196(n), A085263(n+1)]+1`
-/

namespace A074885.P10859054931784140249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085263 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A074885.P10859054931784140249

/-! ## A074885.P7806179361797214872

`lt[A217834(n+1), sqrt(n+1)]+1`
-/

namespace A074885.P7806179361797214872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217834 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n + 1

end

end A074885.P7806179361797214872

/-! ## A074885.P18234998817009649012

`eq[A066083(2*n+1), A166040(A026741(n))]`
-/

namespace A074885.P18234998817009649012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066083 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166040 (A026741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074885.P18234998817009649012

/-!
# A074890: a(n) is the action of recursively applying 'Rule 30' elementary cellular automata on the binary representation of n if the cells may only expand into the significant bit, a(0) = 1.

The programs for A074890, the canonical program `A074890.P2851990281288302193` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074890 has offset 0).

The definition of A074890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074890.P2851990281288302193

`xor(or(2*a(n-1), a(n-1)), floor(a(n-1)/2))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A074890

/-- `xor(or(2*a(n-1), a(n-1)), floor(a(n-1)/2))` -/
def P2851990281288302193.Spec : Prop :=
  ∀ n, P2851990281288302193.a n = A074890 n

theorem P2851990281288302193.correct : P2851990281288302193.Spec := by
  intro n
  simp only [A074890]

end A074890

/-! ## A074890.P14338523200350393109

`xor(or(a(n-1)+floor(a(n-1)), a(n-1)), floor(a(n-1)/2))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A074890.P14338523200350393109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (Int.lor (a (n - 1) + a (n - 1)) (a (n - 1))) ⌊(a (n - 1) : ℚ) / 2⌋

end

end A074890.P14338523200350393109

namespace A074890

/-- `xor(or(a(n-1)+floor(a(n-1)), a(n-1)), floor(a(n-1)/2))` -/
def P14338523200350393109.Spec : Prop :=
  ∀ n, P14338523200350393109.a n = A074890 n

theorem P14338523200350393109.correct : P14338523200350393109.Spec := by
  intro n
  simp only [A074890, Nat.add_sub_cancel, A074890.P14338523200350393109.a, A074890.P2851990281288302193.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A074890

/-! ## A074890.P11117845028253999521

`floor(A269160(a(n-1))/2)` with `a(0)=1`
-/

namespace A074890.P11117845028253999521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(A269160 (a (n - 1)).toNat : ℚ) / 2⌋

end

end A074890.P11117845028253999521

namespace A074890

/-- `floor(A269160(a(n-1))/2)` -/
def P11117845028253999521.Spec : Prop :=
  ∀ n, P11117845028253999521.a n = A074890 n

end A074890

/-! ## A074890.P9209327468167316145

`A387312(a(n-1))` with `a(0)=1`
-/

namespace A074890.P9209327468167316145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A387312 (a (n - 1)).toNat

end

end A074890.P9209327468167316145

namespace A074890

/-- `A387312(a(n-1))` -/
def P9209327468167316145.Spec : Prop :=
  ∀ n, P9209327468167316145.a n = A074890 n

end A074890

/-! ## A074890.P5809953598228631106

`A004526(A269160(a(n-1)))` with `a(0)=1`
-/

namespace A074890.P5809953598228631106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004526 (A269160 (a (n - 1)).toNat).toNat

end

end A074890.P5809953598228631106

namespace A074890

/-- `A004526(A269160(a(n-1)))` -/
def P5809953598228631106.Spec : Prop :=
  ∀ n, P5809953598228631106.a n = A074890 n

end A074890

/-!
# A074891: Numbers n such that sigma(n) = phi(3n).

The programs for A074891, there is no canonical definition to state claims against.
-/

/-! ## A074891.P2737588336976701908

`filter[A015715(n+3), A374134(#)]`
-/

namespace A074891.P2737588336976701908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015715 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A074891.P2737588336976701908

/-! ## A074891.P7875099499812252965

`filter[A067780(n+3), A374134(#)]`
-/

namespace A074891.P7875099499812252965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067780 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A074891.P7875099499812252965

/-! ## A074891.P4838547590370733139

`filter[A076375(n+3), A374134(#)]`
-/

namespace A074891.P4838547590370733139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076375 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A074891.P4838547590370733139

/-! ## A074891.P14284953831203160659

`filter[A342103(n+3), A374134(#)]`
-/

namespace A074891.P14284953831203160659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342103 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A074891.P14284953831203160659

/-!
# A074895: Primes written backwards and sorted.

The programs for A074895, there is no canonical definition to state claims against.
-/

/-! ## A074895.P1624801527428231000

`A004086(p?[A076641(n)])`
-/

namespace A074895.P1624801527428231000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076641 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A074895.P1624801527428231000

/-! ## A074895.P4339271809550562022

`A071786(p?[A076641(n)])`
-/

namespace A074895.P4339271809550562022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076641 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A074895.P4339271809550562022

/-! ## A074895.P6542668099083998905

`A004086(A104154(n+1))`
-/

namespace A074895.P6542668099083998905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A104154 (n + 1)).toNat

end

end A074895.P6542668099083998905

/-! ## A074895.P16891467132341113573

`record[A004086(p?[A004086(n)])]`
-/

namespace A074895.P16891467132341113573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074895.P16891467132341113573

/-! ## A074895.P12956310805857030275

`record[A004086(A209190(n+2))]`
-/

namespace A074895.P12956310805857030275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A209190 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074895.P12956310805857030275

/-! ## A074895.P12285407869633180369

`filter[A095179(n+1), A168184(#)]`
-/

namespace A074895.P12285407869633180369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A074895.P12285407869633180369

/-! ## A074895.P4401454698553714884

`A071786(A104154(2*n+1-n))`
-/

namespace A074895.P4401454698553714884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 (A104154 (2 * n + 1 - n)).toNat

end

end A074895.P4401454698553714884

/-! ## A074895.P13761728048933989739

`A004086(p?[A004086(n*A168184(n))])`
-/

namespace A074895.P13761728048933989739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 ((n : ℤ) * A168184 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A074895.P13761728048933989739

/-!
# A074896: Squares written backwards and sorted, duplicates removed.

The programs for A074896, there is no canonical definition to state claims against.
-/

/-! ## A074896.P16244275501582870289

`∩[A067251(n+1), A356417(n+1)]`
-/

namespace A074896.P16244275501582870289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074896.P16244275501582870289

/-! ## A074896.P7975490882053845913

`filter[A356417(n+1), A168184(#)]`
-/

namespace A074896.P7975490882053845913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A074896.P7975490882053845913

/-! ## A074896.P162029138306116236

`∩[A102837(n+1), A358849(n+1)]`
-/

namespace A074896.P162029138306116236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074896.P162029138306116236

/-! ## A074896.P13977592549911117402

`∩[A356417(n+1), A358849(n+1)]`
-/

namespace A074896.P13977592549911117402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074896.P13977592549911117402

/-! ## A074896.P6285502231864306456

`eq[A053188(A321474(n)), A151878(n)]`
-/

namespace A074896.P6285502231864306456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A321474 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074896.P6285502231864306456

/-!
# A074897: Possible values for sum of anti-divisors of n.

The programs for A074897, there is no canonical definition to state claims against.
-/

/-! ## A074897.P5420900546065787123

`eq[char[A074898(n+1)], A008437(2*n)]`
-/

namespace A074897.P5420900546065787123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074898 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008437 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A074897.P5420900546065787123

/-! ## A074897.P16282962280836417633

`eq[char[A066417(n+1)], A165326(2*n+1)]`
-/

namespace A074897.P16282962280836417633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066417 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A074897.P16282962280836417633

/-! ## A074897.P10471036110223241576

`eq[char[A066417(n+1)], A000035(2*n+3)]`
-/

namespace A074897.P10471036110223241576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066417 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A074897.P10471036110223241576

/-! ## A074897.P8981911044332860956

`eq[char[A066417(n+1)], A102283(3*n+1)]`
-/

namespace A074897.P8981911044332860956
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066417 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A074897.P8981911044332860956

/-!
# A074898: Impossible values for sum of anti-divisors of n.

The programs for A074898, there is no canonical definition to state claims against.
-/

/-! ## A074898.P10136207216873748230

`comp[A066417(n+1)]`
-/

namespace A074898.P10136207216873748230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A074898.P10136207216873748230

/-! ## A074898.P8804500792604421871

`comp[A058838(n+1)-1]`
-/

namespace A074898.P8804500792604421871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058838 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A074898.P8804500792604421871

/-! ## A074898.P13306608385755954221

`eq[0, char[A066417(n+2)]]`
-/

namespace A074898.P13306608385755954221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066417 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074898.P13306608385755954221

/-! ## A074898.P3998037247298140081

`comp[A074897(n+1)]%A239562(n+1)`
-/

namespace A074898.P3998037247298140081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074897 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A239562 (n + 1))

end

end A074898.P3998037247298140081

/-! ## A074898.P7049359671267625250

`comp[A074897(n+1)]+1-A052750(n)%2`
-/

namespace A074898.P7049359671267625250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074897 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ) - Int.tmod (A052750 n) 2

end

end A074898.P7049359671267625250

