import SequenceMachineLib
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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
import Seq.Opaque.C026

/-!
# A175700: a(n) = n ^ phi(n+1), phi(n) = A000010(n) = Euler totient function.

The programs for A175700, there is no canonical definition to state claims against.
-/

/-! ## A175700.P1814982992144062250

`(n+1)^A000010(n+2)`
-/

namespace A175700.P1814982992144062250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A000010 (n + 2) : ℤ)

end

end A175700.P1814982992144062250

/-! ## A175700.P3157206786769286035

`(n+1)^A225530(n+2)`
-/

namespace A175700.P3157206786769286035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A225530 (n + 2) : ℤ)

end

end A175700.P3157206786769286035

/-! ## A175700.P16141027190046776106

`(n+1)^A384710(n+2)`
-/

namespace A175700.P16141027190046776106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A384710 (n + 2) : ℤ)

end

end A175700.P16141027190046776106

/-! ## A175700.P17123967598241799798

`((n+1)^A023022(n+2))²`
-/

namespace A175700.P17123967598241799798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) ^ (A023022 (n + 2) : ℤ)) ^ 2

end

end A175700.P17123967598241799798

/-! ## A175700.P4732925832509410379

`(n+1)^A057828((n+2)²)`
-/

namespace A175700.P4732925832509410379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A057828 ((n + 2) ^ 2) : ℤ)

end

end A175700.P4732925832509410379

/-! ## A175700.P8275951428463753642

`(n+1)^sqrt(A127473(n+2))`
-/

namespace A175700.P8275951428463753642
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (Real.sqrt (A127473 (n + 2) : ℝ))

end

end A175700.P8275951428463753642

/-! ## A175700.P2230790090330080398

`sqrt(n+1)^A140434(n+2)`
-/

namespace A175700.P2230790090330080398
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 1 : ℝ) ^ (A140434 (n + 2) : ℤ)

end

end A175700.P2230790090330080398

/-! ## A175700.P5393169761124390010

`(n+1)^A106476(∑[n+1])`
-/

namespace A175700.P5393169761124390010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A106476 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A175700.P5393169761124390010

/-! ## A175700.P4875902960301090027

`(n+1)^Δ[A002088(n+1)]`
-/

namespace A175700.P4875902960301090027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A175700.P4875902960301090027

/-! ## A175700.P10149857896318934199

`(n+1)^Δ[A005728(n+1)]`
-/

namespace A175700.P10149857896318934199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A175700.P10149857896318934199

/-!
# A175701: a(n) = n ^ (phi(n)+1), phi(n) = A000010(n) = Euler totient function.

The programs for A175701, there is no canonical definition to state claims against.
-/

/-! ## A175701.P414894152738446073

`(n+1)*A062981(n+1)`
-/

namespace A175701.P414894152738446073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A062981 (n + 1)

end

end A175701.P414894152738446073

/-! ## A175701.P1513554113986393129

`(n+1)^A039649(n+1)`
-/

namespace A175701.P1513554113986393129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A039649 (n + 1) : ℤ)

end

end A175701.P1513554113986393129

/-! ## A175701.P7319590526842087131

`(n+1)^(Δ[A005728(n)]+1)`
-/

namespace A175701.P7319590526842087131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (f1 (n + 1) - f1 n + 1 : ℤ)

end

end A175701.P7319590526842087131

/-! ## A175701.P17724992221715075164

`(n+1)^A076221(∑[n+2])`
-/

namespace A175701.P17724992221715075164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A076221 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A175701.P17724992221715075164

/-! ## A175701.P18335716751496075054

`(n+1)*(A066916(n+1)+1)`
-/

namespace A175701.P18335716751496075054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A066916 (n + 1) + 1)

end

end A175701.P18335716751496075054

/-! ## A175701.P5421714747529000754

`(n+1)*(A066915(n+1)-1)`
-/

namespace A175701.P5421714747529000754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A066915 (n + 1) - 1)

end

end A175701.P5421714747529000754

/-! ## A175701.P9284323312425209943

`(n+1)^(A000010(n+1)+1)`
-/

namespace A175701.P9284323312425209943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A000010 (n + 1) + 1 : ℤ)

end

end A175701.P9284323312425209943

/-! ## A175701.P1452649784999587264

`(n+1)^(A225530(n+1)+1)`
-/

namespace A175701.P1452649784999587264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A225530 (n + 1) + 1 : ℤ)

end

end A175701.P1452649784999587264

/-! ## A175701.P202741991106549582

`(n+1)^(A384710(n+1)+1)`
-/

namespace A175701.P202741991106549582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A384710 (n + 1) + 1 : ℤ)

end

end A175701.P202741991106549582

/-! ## A175701.P3252786392027538991

`(n+1)^(A109606(n+1)+2)`
-/

namespace A175701.P3252786392027538991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A109606 (n + 1) + 2 : ℤ)

end

end A175701.P3252786392027538991

/-!
# A175705: Convolution square of A001157 (the sum of squared divisors).

The programs for A175705, there is no canonical definition to state claims against.
-/

/-! ## A175705.P15195775587295505201

`∑[∑[∑[A227116(3*n+2)]]]`
-/

namespace A175705.P15195775587295505201
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227116 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175705.P15195775587295505201

/-!
# A175706: Semiprimes of the form m*p such that k*p = (m*p)-th semiprime.

The programs for A175706, there is no canonical definition to state claims against.
-/

/-! ## A175706.P15477940976257052143

`A001358(A176654(n+1))`
-/

namespace A175706.P15477940976257052143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A176654 (n + 1)).toNat

end

end A175706.P15477940976257052143

/-! ## A175706.P4025735004060492431

`A176540(A176654(n+1)+1)`
-/

namespace A175706.P4025735004060492431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (A176654 (n + 1) + 1).toNat

end

end A175706.P4025735004060492431

/-! ## A175706.P7284811131028803730

`A129767(2*A176654(n+1))`
-/

namespace A175706.P7284811131028803730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129767 (2 * A176654 (n + 1)).toNat

end

end A175706.P7284811131028803730

/-! ## A175706.P12360299399040811194

`A088707(A176654(2*n+1-n))-1`
-/

namespace A175706.P12360299399040811194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (A176654 ((2 * n : ℤ) + (1 - (n : ℤ))).toNat).toNat - 1

end

end A175706.P12360299399040811194

/-! ## A175706.P4320695581363906247

`lcm(A088707(A176654(n+1))-1, A033999(n))`
-/

namespace A175706.P4320695581363906247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A088707 (A176654 (n + 1)).toNat - 1) (A033999 n)

end

end A175706.P4320695581363906247

/-!
# A175707: Number of ways to put n copies of 1,2,3,4 into sets.

The programs for A175707, there is no canonical definition to state claims against.
-/

/-! ## A175707.P16337444991361666719

`A188411(n)+a(n-1)` with `a(0)=1`
-/

namespace A175707.P16337444991361666719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A188411 n + a (n - 1)

end

end A175707.P16337444991361666719

/-! ## A175707.P474798366606554961

`∑[A188411(n+1)]+1-A188411(n+1)`
-/

namespace A175707.P474798366606554961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A188411 (n + 1))

end

end A175707.P474798366606554961

/-! ## A175707.P7062639646979822701

`A188392(∑[n+3])`
-/

namespace A175707.P7062639646979822701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188392 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A175707.P7062639646979822701

/-! ## A175707.P3307610893372524720

`or(A169585(n), A188392(A141214(n)))`
-/

namespace A175707.P3307610893372524720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A169585 n) (A188392 (A141214 n).toNat)

end

end A175707.P3307610893372524720

/-! ## A175707.P7974865475660162240

`or(A188392(A141214(n)), A306550(n))`
-/

namespace A175707.P7974865475660162240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A188392 (A141214 n).toNat) (A306550 n)

end

end A175707.P7974865475660162240

/-!
# A175708: n-th semiprime minus n.

The programs for A175708, the canonical program `A175708.P9200072279870982` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175708 has offset 1).

The definition of A175708 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A175708.P9200072279870982

`A001358(n+1)-A000027(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A175708

/-- `A001358(n+1)-A000027(n+1)` -/
def P9200072279870982.Spec : Prop :=
  ∀ n, P9200072279870982.a n = A175708 (n + 1)

theorem P9200072279870982.correct : P9200072279870982.Spec := by
  intro n
  simp only [A175708, Nat.add_sub_cancel]

end A175708

/-! ## A175708.P7859896391941708316

`A186621(n+1)-n`
-/

namespace A175708.P7859896391941708316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) - (n : ℤ)

end

end A175708.P7859896391941708316

namespace A175708

/-- `A186621(n+1)-n` -/
def P7859896391941708316.Spec : Prop :=
  ∀ n, P7859896391941708316.a n = A175708 (n + 1)

end A175708

/-! ## A175708.P2066049656058031445

`A001358(n+1)-(n+1)`
-/

namespace A175708.P2066049656058031445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) - (n + 1 : ℤ)

end

end A175708.P2066049656058031445

namespace A175708

/-- `A001358(n+1)-(n+1)` -/
def P2066049656058031445.Spec : Prop :=
  ∀ n, P2066049656058031445.a n = A175708 (n + 1)

end A175708

/-! ## A175708.P8025848885597934219

`A088707(n+1)-(n+2)`
-/

namespace A175708.P8025848885597934219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - (n + 2 : ℤ)

end

end A175708.P8025848885597934219

namespace A175708

/-- `A088707(n+1)-(n+2)` -/
def P8025848885597934219.Spec : Prop :=
  ∀ n, P8025848885597934219.a n = A175708 (n + 1)

end A175708

/-! ## A175708.P12746635800615743519

`eq[1, A064911(n+1)]-n`
-/

namespace A175708.P12746635800615743519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A175708.P12746635800615743519

namespace A175708

/-- `eq[1, A064911(n+1)]-n` -/
def P12746635800615743519.Spec : Prop :=
  ∀ n, P12746635800615743519.a n = A175708 (n + 1)

end A175708

/-! ## A175708.P11007377396708574558

`eq[2, A001222(n+1)]-n`
-/

namespace A175708.P11007377396708574558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A175708.P11007377396708574558

namespace A175708

/-- `eq[2, A001222(n+1)]-n` -/
def P11007377396708574558.Spec : Prop :=
  ∀ n, P11007377396708574558.a n = A175708 (n + 1)

end A175708

/-! ## A175708.P5842526859439893814

`eq[2, A008481(n+1)]-n`
-/

namespace A175708.P5842526859439893814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A175708.P5842526859439893814

namespace A175708

/-- `eq[2, A008481(n+1)]-n` -/
def P5842526859439893814.Spec : Prop :=
  ∀ n, P5842526859439893814.a n = A175708 (n + 1)

end A175708

/-! ## A175708.P56401772798455818

`eq[2, A033273(n+1)]-n`
-/

namespace A175708.P56401772798455818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A175708.P56401772798455818

namespace A175708

/-- `eq[2, A033273(n+1)]-n` -/
def P56401772798455818.Spec : Prop :=
  ∀ n, P56401772798455818.a n = A175708 (n + 1)

end A175708

/-! ## A175708.P9350063091820170054

`eq[2, A050379(n+1)]-n`
-/

namespace A175708.P9350063091820170054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A175708.P9350063091820170054

namespace A175708

/-- `eq[2, A050379(n+1)]-n` -/
def P9350063091820170054.Spec : Prop :=
  ∀ n, P9350063091820170054.a n = A175708 (n + 1)

end A175708

/-! ## A175708.P16967394456412711464

`eq[2, A342085(n+1)]-n`
-/

namespace A175708.P16967394456412711464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A175708.P16967394456412711464

namespace A175708

/-- `eq[2, A342085(n+1)]-n` -/
def P16967394456412711464.Spec : Prop :=
  ∀ n, P16967394456412711464.a n = A175708 (n + 1)

end A175708

/-! ## A175708.P16020496157498553322

`sqrt(A074985(n+1))-(n+1)`
-/

namespace A175708.P16020496157498553322
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A074985 (n + 1) : ℝ) - (n + 1 : ℝ)

end

end A175708.P16020496157498553322

namespace A175708

/-- `sqrt(A074985(n+1))-(n+1)` -/
def P16020496157498553322.Spec : Prop :=
  ∀ n, P16020496157498553322.a n = (A175708 (n + 1) : ℝ)

end A175708

/-! ## A175708.P14360365503243138260

`A100493(n+1)-2*(n+1)`
-/

namespace A175708.P14360365503243138260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100493 (n + 1) - (2 * (n + 1) : ℤ)

end

end A175708.P14360365503243138260

namespace A175708

/-- `A100493(n+1)-2*(n+1)` -/
def P14360365503243138260.Spec : Prop :=
  ∀ n, P14360365503243138260.a n = A175708 (n + 1)

end A175708

/-! ## A175708.P13505236828314701222

`A075818(n+1)/2-(n+1)`
-/

namespace A175708.P13505236828314701222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075818 (n + 1) : ℚ) / 2 - (n + 1 : ℚ)

end

end A175708.P13505236828314701222

namespace A175708

/-- `A075818(n+1)/2-(n+1)` -/
def P13505236828314701222.Spec : Prop :=
  ∀ n, P13505236828314701222.a n = (A175708 (n + 1) : ℚ)

end A175708

/-! ## A175708.P8458385964251438176

`a(n-1)+A065516(n)-1` with `a(0)=3`
-/

namespace A175708.P8458385964251438176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (A065516 n - 1)

end

end A175708.P8458385964251438176

namespace A175708

/-- `a(n-1)+A065516(n)-1` -/
def P8458385964251438176.Spec : Prop :=
  ∀ n, P8458385964251438176.a n = A175708 (n + 1)

end A175708

/-! ## A175708.P1596028197444994474

`record[n/a(A001222(n))]-(n+1)` with `a(0)=4, a(1)=2`
-/

namespace A175708.P1596028197444994474
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4, 2] fun n f1 =>
  (n : ℚ) / f1 (A001222 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n + 1 : ℚ)

end

end A175708.P1596028197444994474

namespace A175708

/-- `record[n/a(A001222(n))]-(n+1)` -/
def P1596028197444994474.Spec : Prop :=
  ∀ n, P1596028197444994474.a n = (A175708 (n + 1) : ℚ)

end A175708

/-! ## A175708.P16535913185849142843

`A001478(n+1)+A001358(n+1)`
-/

namespace A175708.P16535913185849142843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + A001358 (n + 1)

end

end A175708.P16535913185849142843

namespace A175708

/-- `A001478(n+1)+A001358(n+1)` -/
def P16535913185849142843.Spec : Prop :=
  ∀ n, P16535913185849142843.a n = A175708 (n + 1)

end A175708

/-! ## A175708.P14883219583539065024

`A014689(n+1)-A065870(n+1)`
-/

namespace A175708.P14883219583539065024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) - A065870 (n + 1)

end

end A175708.P14883219583539065024

namespace A175708

/-- `A014689(n+1)-A065870(n+1)` -/
def P14883219583539065024.Spec : Prop :=
  ∀ n, P14883219583539065024.a n = A175708 (n + 1)

end A175708

/-! ## A175708.P13950595428862654295

`A133796(n+1)-A014688(n+1)`
-/

namespace A175708.P13950595428862654295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1) - A014688 (n + 1)

end

end A175708.P13950595428862654295

namespace A175708

/-- `A133796(n+1)-A014688(n+1)` -/
def P13950595428862654295.Spec : Prop :=
  ∀ n, P13950595428862654295.a n = A175708 (n + 1)

end A175708

/-! ## A175708.P14138203617334690117

`A075818(n+1)-A100493(n+1)`
-/

namespace A175708.P14138203617334690117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1) - A100493 (n + 1)

end

end A175708.P14138203617334690117

namespace A175708

/-- `A075818(n+1)-A100493(n+1)` -/
def P14138203617334690117.Spec : Prop :=
  ∀ n, P14138203617334690117.a n = A175708 (n + 1)

end A175708

/-! ## A175708.P308914166359366255

`eq[A001221(n+1)+2, A000005(n+1)]-n`
-/

namespace A175708.P308914166359366255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - (n : ℤ)

end

end A175708.P308914166359366255

namespace A175708

/-- `eq[A001221(n+1)+2, A000005(n+1)]-n` -/
def P308914166359366255.Spec : Prop :=
  ∀ n, P308914166359366255.a n = A175708 (n + 1)

end A175708

/-!
# A175709: Products of 2 primes of the form 5*k-+2.

The programs for A175709, there is no canonical definition to state claims against.
-/

/-! ## A175709.P2069531827396247912

`eq[A000124(A284289(n)), A010158(n)]`
-/

namespace A175709.P2069531827396247912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A284289 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010158 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175709.P2069531827396247912

/-! ## A175709.P11361689118750081820

`eq[A007494(A284289(n)), A010139(n)]`
-/

namespace A175709.P11361689118750081820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A284289 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010139 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175709.P11361689118750081820

/-! ## A175709.P9348900403748202871

`eq[A010161(n), A028310(A284289(n))]`
-/

namespace A175709.P9348900403748202871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010161 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A284289 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175709.P9348900403748202871

/-! ## A175709.P17992526301837963274

`eq[A010139(n), A120853(A226602(n))]`
-/

namespace A175709.P17992526301837963274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010139 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120853 (A226602 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175709.P17992526301837963274

/-! ## A175709.P5776369618358275337

`eq[A040345(n), A159794(A284289(n))]`
-/

namespace A175709.P5776369618358275337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040345 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159794 (A284289 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175709.P5776369618358275337

/-!
# A175710: Numbers k such that k-4, k and k+4 are all semiprimes.

The programs for A175710, there is no canonical definition to state claims against.
-/

/-! ## A175710.P417728638976375456

`∩[A175648(n+1), A175766(n+1)]`
-/

namespace A175710.P417728638976375456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175648 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175710.P417728638976375456

/-! ## A175710.P5911887560297728099

`∩[A175648(n+1), A175664(n+1)]`
-/

namespace A175710.P5911887560297728099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175648 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175710.P5911887560297728099

/-! ## A175710.P3927914422038794606

`∩[A175664(n+1), A255746(n+1)]`
-/

namespace A175710.P3927914422038794606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175710.P3927914422038794606

/-! ## A175710.P178167949748530589

`filter[A256382(n+1), A064911(#)]`
-/

namespace A175710.P178167949748530589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A175710.P178167949748530589

/-! ## A175710.P4050457223907575680

`filter[A256382(n+1), A280710(#)]`
-/

namespace A175710.P4050457223907575680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A175710.P4050457223907575680

/-! ## A175710.P767061735998864259

`∩[A175648(n+1), A256382(n+1)]`
-/

namespace A175710.P767061735998864259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175648 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175710.P767061735998864259

/-! ## A175710.P13526201273253655974

`∩[A175664(n+1), A256382(n+1)]`
-/

namespace A175710.P13526201273253655974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175710.P13526201273253655974

/-! ## A175710.P5989133081431468384

`∩[A255746(n+1), A256382(n+1)]`
-/

namespace A175710.P5989133081431468384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175710.P5989133081431468384

/-! ## A175710.P1734745509954719577

`∩[A175634(n+1), A256382(n+1)]`
-/

namespace A175710.P1734745509954719577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175710.P1734745509954719577

/-! ## A175710.P8562359977649832163

`∩[A175766(n+1), A255746(n+1)]`
-/

namespace A175710.P8562359977649832163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175710.P8562359977649832163

/-! ## A175710.P15951336853095657934

`∩[A131368(n+1), A256382(n+1)]`
-/

namespace A175710.P15951336853095657934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175710.P15951336853095657934

/-! ## A175710.P5245720595589731623

`∩[A006881(n+1), A256382(n+1)]`
-/

namespace A175710.P5245720595589731623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175710.P5245720595589731623

/-! ## A175710.P12092975324738192410

`∩[A161918(n+1), A256382(n+1)]`
-/

namespace A175710.P12092975324738192410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175710.P12092975324738192410

/-! ## A175710.P17083635923622218163

`∩[A001358(n+1), A256382(n+1)]`
-/

namespace A175710.P17083635923622218163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175710.P17083635923622218163

/-! ## A175710.P7029827416934552685

`∩[A176540(n+1), A256382(n+1)]`
-/

namespace A175710.P7029827416934552685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175710.P7029827416934552685

/-! ## A175710.P10351569858024310184

`∩[A077135(n+1), A256382(n+1)]`
-/

namespace A175710.P10351569858024310184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175710.P10351569858024310184

/-! ## A175710.P14178611043256545891

`∩[A077136(n+1), A256382(n+1)]`
-/

namespace A175710.P14178611043256545891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175710.P14178611043256545891

/-!
# A175711: Primes p such that p-th semiprime=r*k and r>=p>=k.

The programs for A175711, there is no canonical definition to state claims against.
-/

/-! ## A175711.P14992664388508805955

`p?[comp[A176173(A176223(n+2))]]`
-/

namespace A175711.P14992664388508805955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176173 (A176223 (n + 2)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A175711.P14992664388508805955

/-! ## A175711.P8952518141649259371

`p?[comp[A137203(A137172(n+5))]]`
-/

namespace A175711.P8952518141649259371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137203 (A137172 (n + 5)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A175711.P8952518141649259371

/-! ## A175711.P17783313926438521381

`p?[lt[A276597(n+1), A162457(n+1)]]`
-/

namespace A175711.P17783313926438521381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276597 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162457 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A175711.P17783313926438521381

/-! ## A175711.P14319867808069464100

`p?[lt[A156249(n+1), A074803(2*(n+2))]]`
-/

namespace A175711.P14319867808069464100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156249 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074803 (2 * (n + 2))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A175711.P14319867808069464100

/-! ## A175711.P1180383356137377898

`∩[A039156(n+1), A391021(n+1)]`
-/

namespace A175711.P1180383356137377898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175711.P1180383356137377898

/-!
# A175712: The third column of the Lucas Fibonacci sum of binomials A175685.

The programs for A175712, there is no canonical definition to state claims against.
-/

/-! ## A175712.P15862934909736357009

`Δ[A055801(A134869(n+10)-10)]`
-/

namespace A175712.P15862934909736357009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (A134869 (n + 10) - 10).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175712.P15862934909736357009

/-! ## A175712.P6809637601107788569

`A000045(n)-A137579(A001611(n))`
-/

namespace A175712.P6809637601107788569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A137579 (A001611 n).toNat

end

end A175712.P6809637601107788569

/-! ## A175712.P10092035063983282688

`A000045(n)-A166097(A184983(n))`
-/

namespace A175712.P10092035063983282688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A166097 (A184983 n).toNat

end

end A175712.P10092035063983282688

/-! ## A175712.P3659856902898663858

`or(A025459(A293337(n)), A278800(n))`
-/

namespace A175712.P3659856902898663858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025459 (A293337 n).toNat) (A278800 n)

end

end A175712.P3659856902898663858

/-! ## A175712.P12576775866428752583

`A000045(n)-A137579(A000045(n)+1)`
-/

namespace A175712.P12576775866428752583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A137579 (A000045 n + 1).toNat

end

end A175712.P12576775866428752583

/-!
# A175713: Expansion of 1/(1 - x - 4*x^2 + 4*x^3 - 2*x^4).

The programs for A175713, the canonical program `A175713.P14292175792066014836` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175713 has offset 0).

The definition of A175713 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175713.P14292175792066014836

`a(n-1)+4*a(n-2)-4*a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=5`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A175713

/-- `a(n-1)+4*a(n-2)-4*a(n-3)+2*a(n-4)` -/
def P14292175792066014836.Spec : Prop :=
  ∀ n, P14292175792066014836.a n = A175713 n

theorem P14292175792066014836.correct : P14292175792066014836.Spec := by
  intro n
  simp only [A175713]

end A175713

/-! ## A175713.P7721718983733617411

`A161329(or(A148019(n), A152405(n)))`
-/

namespace A175713.P7721718983733617411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161329 (Int.lor (A148019 n) (A152405 n)).toNat

end

end A175713.P7721718983733617411

namespace A175713

/-- `A161329(or(A148019(n), A152405(n)))` -/
def P7721718983733617411.Spec : Prop :=
  ∀ n, P7721718983733617411.a n = A175713 n

end A175713

/-!
# A175714: Expansion of -1/((1 - x)*(1 - x^2 + 4*x^3)).

The programs for A175714, the canonical program `A175714.P4623683059861555371` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175714 has offset 0).

The definition of A175714 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175714.P4623683059861555371

`a(n-1)+a(n-2)-5*a(n-3)+4*a(n-4)` with `a(0)=-1, a(1)=-1, a(2)=-2, a(3)=2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A175714

/-- `a(n-1)+a(n-2)-5*a(n-3)+4*a(n-4)` -/
def P4623683059861555371.Spec : Prop :=
  ∀ n, P4623683059861555371.a n = A175714 n

theorem P4623683059861555371.correct : P4623683059861555371.Spec := by
  intro n
  simp only [A175714]

end A175714

/-! ## A175714.P8821463276708939362

`∑[a(n-2)-4*a(n-3)]` with `a(0)=-1, a(1)=0, a(2)=-1`
-/

namespace A175714.P8821463276708939362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 0, -1] fun n f1 =>
  f1 (n - 2) - 4 * f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175714.P8821463276708939362

namespace A175714

/-- `∑[a(n-2)-4*a(n-3)]` -/
def P8821463276708939362.Spec : Prop :=
  ∀ n, P8821463276708939362.a n = A175714 n

end A175714

/-!
# A175715: Expansion of 1/(1 - x - x^2 - 3*x^4 + 4*x^5 - 2*x^6).

The programs for A175715, the canonical program `A175715.P18135608796352713105` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175715 has offset 0).

The definition of A175715 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175715.P18135608796352713105

`a(n-1)+a(n-2)+3*a(n-4)-4*a(n-5)+2*a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=8, a(5)=10`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A175715

/-- `a(n-1)+a(n-2)+3*a(n-4)-4*a(n-5)+2*a(n-6)` -/
def P18135608796352713105.Spec : Prop :=
  ∀ n, P18135608796352713105.a n = A175715 n

theorem P18135608796352713105.correct : P18135608796352713105.Spec := by
  intro n
  simp only [A175715]

end A175715

/-! ## A175715.P12367778293619780432

`A003056(A279825(n)+A204064(n))`
-/

namespace A175715.P12367778293619780432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A279825 n + A204064 n).toNat

end

end A175715.P12367778293619780432

namespace A175715

/-- `A003056(A279825(n)+A204064(n))` -/
def P12367778293619780432.Spec : Prop :=
  ∀ n, P12367778293619780432.a n = A175715 n

end A175715

/-! ## A175715.P10213099886889383996

`A178381(n)+A014082(A056333(n+1))`
-/

namespace A175715.P10213099886889383996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178381 n + A014082 (A056333 (n + 1)).toNat

end

end A175715.P10213099886889383996

namespace A175715

/-- `A178381(n)+A014082(A056333(n+1))` -/
def P10213099886889383996.Spec : Prop :=
  ∀ n, P10213099886889383996.a n = A175715 n

end A175715

/-! ## A175715.P18112373436542897444

`A050605(A339392(n+1))+A001405(n)`
-/

namespace A175715.P18112373436542897444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (A339392 (n + 1)).toNat + A001405 n

end

end A175715.P18112373436542897444

namespace A175715

/-- `A050605(A339392(n+1))+A001405(n)` -/
def P18112373436542897444.Spec : Prop :=
  ∀ n, P18112373436542897444.a n = A175715 n

end A175715

/-!
# A175716: The total number of elements(ordered pairs) in all equivalence relations on {1,2,...,n}.

The programs for A175716, there is no canonical definition to state claims against.
-/

/-! ## A175716.P7759303207810945125

`n*A124427(n)`
-/

namespace A175716.P7759303207810945125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A124427 n

end

end A175716.P7759303207810945125

/-! ## A175716.P8886791836027954089

`n*A270236(C(n, 2)+1)`
-/

namespace A175716.P8886791836027954089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A270236 (Nat.choose n 2 + 1)

end

end A175716.P8886791836027954089

/-! ## A175716.P2638866235954502432

`n*A270236(A152947(n+1))`
-/

namespace A175716.P2638866235954502432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A270236 (A152947 (n + 1)).toNat

end

end A175716.P2638866235954502432

/-! ## A175716.P4623644517445579314

`n*A270701(A179865(n+1))`
-/

namespace A175716.P4623644517445579314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A270701 (A179865 (n + 1)).toNat

end

end A175716.P4623644517445579314

/-! ## A175716.P609679407867737786

`n*A270236(A000124(n)-n)`
-/

namespace A175716.P609679407867737786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A270236 (A000124 n - (n : ℤ)).toNat

end

end A175716.P609679407867737786

/-! ## A175716.P980277766877519135

`n*A270702(A000124(n)-n)`
-/

namespace A175716.P980277766877519135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A270702 (A000124 n - (n : ℤ)).toNat

end

end A175716.P980277766877519135

/-! ## A175716.P7729294396879215388

`n*(A052889(n)+Δ[A011971(A161680(n))])`
-/

namespace A175716.P7729294396879215388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A161680 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A052889 n + (f1 (n + 1) - f1 n))

end

end A175716.P7729294396879215388

/-! ## A175716.P683466806524599806

`n*(A052889(n)+Δ[A123081(A152947(n+1))])`
-/

namespace A175716.P683466806524599806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123081 (A152947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A052889 n + (f1 (n + 1) - f1 n))

end

end A175716.P683466806524599806

/-! ## A175716.P9315007216634915690

`n*record[A270702(A008619(n))%A270702(n+1)]`
-/

namespace A175716.P9315007216634915690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270702 (A008619 n).toNat) (A270702 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175716.P9315007216634915690

/-!
# A175717: First differences of A175628.

The programs for A175717, there is no canonical definition to state claims against.
-/

/-! ## A175717.P12502949786593128087

`A175628(n+2)-A175628(n+1)`
-/

namespace A175717.P12502949786593128087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175628 (n + 2) - A175628 (n + 1)

end

end A175717.P12502949786593128087

/-! ## A175717.P10646549269067129323

`Δ[A175628(n+1)]`
-/

namespace A175717.P10646549269067129323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175717.P10646549269067129323

/-! ## A175717.P10022553694898344818

`Δ[A061035(A117142(n+1))]`
-/

namespace A175717.P10022553694898344818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061035 (A117142 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175717.P10022553694898344818

/-! ## A175717.P11291623364446804142

`Δ[A061035(A101881(n)-A142150(n))]`
-/

namespace A175717.P11291623364446804142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061035 (A101881 n - A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175717.P11291623364446804142

/-! ## A175717.P7405291429683498102

`Δ[A175779(A165157(n+1))]`
-/

namespace A175717.P7405291429683498102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175779 (A165157 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175717.P7405291429683498102

/-! ## A175717.P1563365401615591110

`Δ[A175779(A000124(round(n/2))+n)]`
-/

namespace A175717.P1563365401615591110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175779 (A000124 (SequenceMachineLib.roundAway ((n : ℚ) / 2)).toNat + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175717.P1563365401615591110

/-!
# A175722: a(n) = -a(n-1) + a(n-2) - F(-n) + 1, a(0) = 1, a(1) = -1, where F() = Fibonacci numbers A000045.

The programs for A175722, the canonical program `A175722.P13805072927840271945` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175722 has offset 0).

The definition of A175722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175722.P13805072927840271945

`∑[a(n-2)-a(n-1)]+a(n-2)-a(n-1)` with `a(0)=1, a(1)=-1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A175722

/-- `∑[a(n-2)-a(n-1)]+a(n-2)-a(n-1)` -/
def P13805072927840271945.Spec : Prop :=
  ∀ n, P13805072927840271945.a n = A175722 n

theorem P13805072927840271945.correct : P13805072927840271945.Spec := by
  intro n
  simp only [A175722]

end A175722

/-! ## A175722.P11785325166530162243

`a(n-2)-(a(n-1)-∑[a(n-2)-a(n-1)])` with `a(0)=1, a(1)=-1`
-/

namespace A175722.P11785325166530162243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  a (n - 2) - (a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A175722.P11785325166530162243

namespace A175722

/-- `a(n-2)-(a(n-1)-∑[a(n-2)-a(n-1)])` -/
def P11785325166530162243.Spec : Prop :=
  ∀ n, P11785325166530162243.a n = A175722 n

end A175722

/-! ## A175722.P17657648803661354372

`∑[A001629(n+2)*A033999(n)]`
-/

namespace A175722.P17657648803661354372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (n + 2) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175722.P17657648803661354372

namespace A175722

/-- `∑[A001629(n+2)*A033999(n)]` -/
def P17657648803661354372.Spec : Prop :=
  ∀ n, P17657648803661354372.a n = A175722 n

end A175722

/-! ## A175722.P3207824904949004984

`∑[A001629(n+2)/A033999(n+2)]`
-/

namespace A175722.P3207824904949004984
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001629 (n + 2) : ℚ) / (A033999 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175722.P3207824904949004984

namespace A175722

/-- `∑[A001629(n+2)/A033999(n+2)]` -/
def P3207824904949004984.Spec : Prop :=
  ∀ n, P3207824904949004984.a n = (A175722 n : ℚ)

end A175722

/-! ## A175722.P14877432796873739898

`∑[A001629(n+2)*A009001(2*n)]`
-/

namespace A175722.P14877432796873739898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (n + 2) * A009001 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175722.P14877432796873739898

namespace A175722

/-- `∑[A001629(n+2)*A009001(2*n)]` -/
def P14877432796873739898.Spec : Prop :=
  ∀ n, P14877432796873739898.a n = A175722 n

end A175722

/-! ## A175722.P15645412089834884889

`∑[A001629(n+2)/A056594(2*n)]`
-/

namespace A175722.P15645412089834884889
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001629 (n + 2) : ℚ) / (A056594 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175722.P15645412089834884889

namespace A175722

/-- `∑[A001629(n+2)/A056594(2*n)]` -/
def P15645412089834884889.Spec : Prop :=
  ∀ n, P15645412089834884889.a n = (A175722 n : ℚ)

end A175722

/-! ## A175722.P5672835514607396249

`∑[∑[A023610(n)*A033999(n)]]`
-/

namespace A175722.P5672835514607396249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023610 n * A033999 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175722.P5672835514607396249

namespace A175722

/-- `∑[∑[A023610(n)*A033999(n)]]` -/
def P5672835514607396249.Spec : Prop :=
  ∀ n, P5672835514607396249.a n = A175722 n

end A175722

/-!
# A175723: a(1)=a(2)=1; thereafter a(n) = gpf(a(n-1)+a(n-2)), where gpf = "greatest prime factor".

The programs for A175723, the canonical program `A175723.P10617801829154666952` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175723 has offset 1).

The definition of A175723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175723.P10617801829154666952

`a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=2, a(6)=7`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A175723

/-- `a(n-4)` -/
def P10617801829154666952.Spec : Prop :=
  ∀ n, (P10617801829154666952.a n : ℤ) = A175723 (n + 1)

theorem P10617801829154666952.correct : P10617801829154666952.Spec := by
  intro n
  simp only [A175723, Nat.add_sub_cancel]

end A175723

/-!
# A175724: Partial sums of floor(n^2/12).

The programs for A175724, the canonical program `A175724.P11267858550823246600` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175724 has offset 0).

The definition of A175724 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175724.P11267858550823246600

`round((2*n^3+3*n²-18*n)/72)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A175724

/-- `round((2*n^3+3*n²-18*n)/72)` -/
def P11267858550823246600.Spec : Prop :=
  ∀ n, P11267858550823246600.a n = A175724 n

theorem P11267858550823246600.correct : P11267858550823246600.Spec := by
  intro n
  simp only [A175724]

end A175724

/-! ## A175724.P11268115744655892192

`a(n-6)+(n-2)*(n-3)/2` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=3`
-/

namespace A175724.P11268115744655892192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 0, 0, 1, 3] fun n a =>
  a (n - 6) + ((n : ℤ) - 2 : ℚ) * (((n : ℤ) - 3 : ℚ) / 2)

end

end A175724.P11268115744655892192

namespace A175724

/-- `a(n-6)+(n-2)*(n-3)/2` -/
def P11268115744655892192.Spec : Prop :=
  ∀ n, P11268115744655892192.a n = (A175724 n : ℚ)

end A175724

/-! ## A175724.P6674021665289180603

`floor(a(n-1)+(n/2)²/3)` with `a(0)=0`
-/

namespace A175724.P6674021665289180603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + ((n : ℚ) / 2) ^ 2 / 3⌋

end

end A175724.P6674021665289180603

namespace A175724

/-- `floor(a(n-1)+(n/2)²/3)` -/
def P6674021665289180603.Spec : Prop :=
  ∀ n, P6674021665289180603.a n = A175724 n

end A175724

/-! ## A175724.P5641382531806868669

`∑[n-3-a(n-3)]+a(n-3)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A175724.P5641382531806868669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n f1 =>
  (n : ℤ) - 3 - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 3)

end

end A175724.P5641382531806868669

namespace A175724

/-- `∑[n-3-a(n-3)]+a(n-3)` -/
def P5641382531806868669.Spec : Prop :=
  ∀ n, P5641382531806868669.a n = A175724 n

end A175724

/-! ## A175724.P9082290591266810026

`∑[A008724(n)]`
-/

namespace A175724.P9082290591266810026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175724.P9082290591266810026

namespace A175724

/-- `∑[A008724(n)]` -/
def P9082290591266810026.Spec : Prop :=
  ∀ n, P9082290591266810026.a n = A175724 n

end A175724

/-! ## A175724.P16007366124355157965

`A173196(n)-A173691(n)`
-/

namespace A175724.P16007366124355157965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 n - A173691 n

end

end A175724.P16007366124355157965

namespace A175724

/-- `A173196(n)-A173691(n)` -/
def P16007366124355157965.Spec : Prop :=
  ∀ n, P16007366124355157965.a n = A175724 n

end A175724

/-! ## A175724.P15844790543123379105

`A171965(n)-A181120(n)`
-/

namespace A175724.P15844790543123379105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171965 n - A181120 n

end

end A175724.P15844790543123379105

namespace A175724

/-- `A171965(n)-A181120(n)` -/
def P15844790543123379105.Spec : Prop :=
  ∀ n, P15844790543123379105.a n = A175724 n

end A175724

/-! ## A175724.P6138886056167893044

`A173690(n)+A177239(n)-A173691(n)`
-/

namespace A175724.P6138886056167893044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173690 n + (A177239 n - A173691 n)

end

end A175724.P6138886056167893044

namespace A175724

/-- `A173690(n)+A177239(n)-A173691(n)` -/
def P6138886056167893044.Spec : Prop :=
  ∀ n, P6138886056167893044.a n = A175724 n

end A175724

/-! ## A175724.P14351820578102755771

`∑[A174709(n+2)]`
-/

namespace A175724.P14351820578102755771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174709 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175724.P14351820578102755771

namespace A175724

/-- `∑[A174709(n+2)]` -/
def P14351820578102755771.Spec : Prop :=
  ∀ n, P14351820578102755771.a n = A175724 n

end A175724

/-! ## A175724.P13632951440916224941

`∑[∑[A152467(n+2)]]`
-/

namespace A175724.P13632951440916224941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175724.P13632951440916224941

namespace A175724

/-- `∑[∑[A152467(n+2)]]` -/
def P13632951440916224941.Spec : Prop :=
  ∀ n, P13632951440916224941.a n = A175724 n

end A175724

/-! ## A175724.P2105103072922013710

`A181120(n+2)-A056827(n+2)`
-/

namespace A175724.P2105103072922013710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181120 (n + 2) - A056827 (n + 2)

end

end A175724.P2105103072922013710

namespace A175724

/-- `A181120(n+2)-A056827(n+2)` -/
def P2105103072922013710.Spec : Prop :=
  ∀ n, P2105103072922013710.a n = A175724 n

end A175724

/-! ## A175724.P18334777047701878897

`∑[∑[val(A000079(n+2), 64)]-1]+1+n`
-/

namespace A175724.P18334777047701878897
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000079 (n + 2)).toNat 64

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A175724.P18334777047701878897

namespace A175724

/-- `∑[∑[val(A000079(n+2), 64)]-1]+1+n` -/
def P18334777047701878897.Spec : Prop :=
  ∀ n, P18334777047701878897.a n = A175724 n

end A175724

/-! ## A175724.P270536281736638733

`∑[A081753(n²)-1]`
-/

namespace A175724.P270536281736638733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (n ^ 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175724.P270536281736638733

namespace A175724

/-- `∑[A081753(n²)-1]` -/
def P270536281736638733.Spec : Prop :=
  ∀ n, P270536281736638733.a n = A175724 n

end A175724

/-! ## A175724.P16517712046415021138

`∑[A342696(n²)]`
-/

namespace A175724.P16517712046415021138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175724.P16517712046415021138

namespace A175724

/-- `∑[A342696(n²)]` -/
def P16517712046415021138.Spec : Prop :=
  ∀ n, P16517712046415021138.a n = A175724 n

end A175724

/-!
# A175725: Number of characters in the Polish name of n, including spaces and hyphens.

The programs for A175725, there is no canonical definition to state claims against.
-/

/-! ## A175725.P10656492020529795432

`A008962(n)+∑[A025469(A251740(n))]`
-/

namespace A175725.P10656492020529795432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 (A251740 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008962 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175725.P10656492020529795432

/-! ## A175725.P12127659512694268732

`A025469(A251923(n+1))+A008962(n)`
-/

namespace A175725.P12127659512694268732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 (A251923 (n + 1)).toNat + A008962 n

end

end A175725.P12127659512694268732

/-!
# A175727: Numbers k such that both A000203(k)-k-1 and A000203(k)-2*k-1 are prime numbers.

The programs for A175727, there is no canonical definition to state claims against.
-/

/-! ## A175727.P8780943213729203913

`∪[A064114(n+1), A179945(n+1)]`
-/

namespace A175727.P8780943213729203913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A175727.P8780943213729203913

/-! ## A175727.P5221138398920432129

`∪[A179945(n+1), A292986(n+1)]`
-/

namespace A175727.P5221138398920432129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A175727.P5221138398920432129

/-! ## A175727.P3337675031985987996

`∪[A179945(n+1), A298463(n+1)]`
-/

namespace A175727.P3337675031985987996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A175727.P3337675031985987996

/-! ## A175727.P480972205697650519

`∪[A179945(n+1), A298973(n+1)]`
-/

namespace A175727.P480972205697650519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A175727.P480972205697650519

/-! ## A175727.P12271744284758636686

`∪[A179945(n+1), A306984(n+1)]`
-/

namespace A175727.P12271744284758636686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A175727.P12271744284758636686

/-! ## A175727.P9147364093899552507

`∪[A179945(n+1), A333967(n+1)]`
-/

namespace A175727.P9147364093899552507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A175727.P9147364093899552507

/-! ## A175727.P112220512300791301

`∪[A179945(n+1), A348631(n+1)]`
-/

namespace A175727.P112220512300791301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348631 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A175727.P112220512300791301

/-! ## A175727.P6937010046088896814

`∪[A179945(n+1), A354281(n+1)]`
-/

namespace A175727.P6937010046088896814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A175727.P6937010046088896814

/-! ## A175727.P13544949976297738002

`∪[A179945(n+1), A027804(n+4)]`
-/

namespace A175727.P13544949976297738002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027804 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A175727.P13544949976297738002

/-!
# A175729: Numbers n such that the sum of the prime factors with multiplicity of n divides n-1.

The programs for A175729, there is no canonical definition to state claims against.
-/

/-! ## A175729.P2763942033336252458

`eq[1, (n+1)%A107463(n+1)]+1`
-/

namespace A175729.P2763942033336252458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A107463 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175729.P2763942033336252458

/-! ## A175729.P13704491600564687342

`eq[1, A238525(n+2)]+2`
-/

namespace A175729.P13704491600564687342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238525 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A175729.P13704491600564687342

/-! ## A175729.P14741852868417049516

`eq[1, n%A107463(A028310(n))]`
-/

namespace A175729.P14741852868417049516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A107463 (A028310 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175729.P14741852868417049516

/-! ## A175729.P9033999953397476772

`eq[2, A233543(a(A238525(n)))]` with `a(0)=1, a(1)=5, a(2)=4`
-/

namespace A175729.P9033999953397476772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 4] fun n f2 =>
  A233543 (f2 (A238525 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175729.P9033999953397476772

/-! ## A175729.P17853550318080561664

`lt[4, A006530(a(A238525(n))+1)]` with `a(0)=2, a(1)=4`
-/

namespace A175729.P17853550318080561664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n f2 =>
  A006530 (f2 (A238525 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A175729.P17853550318080561664

/-!
# A175730: Numbers with deficiency of 42.

The programs for A175730, there is no canonical definition to state claims against.
-/

/-! ## A175730.P10079215674517702085

`eq[41, A235796(A028310(n))]`
-/

namespace A175730.P10079215674517702085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235796 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175730.P10079215674517702085

/-!
# A175731: Semiprimes m such that either 2m-1 or 2m+1 is prime, but not both.

The programs for A175731, there is no canonical definition to state claims against.
-/

/-! ## A175731.P13870150824411273244

`filter[A172458(n+1), A064911(#)]`
-/

namespace A175731.P13870150824411273244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A175731.P13870150824411273244

/-! ## A175731.P17721641433168950256

`filter[A174047(n+1), A064911(#)]`
-/

namespace A175731.P17721641433168950256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A175731.P17721641433168950256

/-! ## A175731.P11489584203463193269

`filter[A172458(n+1), A101040(#)]`
-/

namespace A175731.P11489584203463193269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A175731.P11489584203463193269

/-! ## A175731.P3321659215339628623

`eq[A002126(2*n+1), A284289(n)]`
-/

namespace A175731.P3321659215339628623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175731.P3321659215339628623

/-! ## A175731.P16280859622823418198

`eq[A002126(2*n+1), A284465(n)]`
-/

namespace A175731.P16280859622823418198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284465 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175731.P16280859622823418198

/-! ## A175731.P366348346432166504

`∩[A001358(n+1), A172458(n+1)]`
-/

namespace A175731.P366348346432166504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175731.P366348346432166504

/-! ## A175731.P2974400915643832515

`∩[A001358(n+1), A174047(n+1)]`
-/

namespace A175731.P2974400915643832515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175731.P2974400915643832515

/-! ## A175731.P10893017810292972788

`∩[A088707(n+1)-1, ceil((A100317(n+3)+1)/2)-1]`
-/

namespace A175731.P10893017810292972788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A100317 (n + 3) + 1 : ℚ) / 2⌉ - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175731.P10893017810292972788

/-! ## A175731.P17343378217085829078

`∩[ceil((A100317(n+3)+1)/2)-1, A175708(n+1)+1+n]`
-/

namespace A175731.P17343378217085829078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A100317 (n + 3) + 1 : ℚ) / 2⌉ - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175708 (n + 1) + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175731.P17343378217085829078

/-! ## A175731.P4308939482790222542

`eq[A010141(A002126(2*n+1)), A105700(n)]`
-/

namespace A175731.P4308939482790222542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010141 (A002126 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175731.P4308939482790222542

/-!
# A175732: a(n) = gcd(phi(n), psi(n)).

The programs for A175732, the canonical program `A175732.P6482811191448036687` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175732 has offset 1).

The definition of A175732 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175732.P6482811191448036687

`gcd(Δ[A002088(n)], A001615(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A175732

/-- `gcd(Δ[A002088(n)], A001615(n+1))` -/
def P6482811191448036687.Spec : Prop :=
  ∀ n, (P6482811191448036687.a n : ℤ) = A175732 (n + 1)

theorem P6482811191448036687.correct : P6482811191448036687.Spec := by
  intro n
  simp only [A175732, Nat.add_sub_cancel]

end A175732

/-! ## A175732.P10226523546442678396

`A003557(n+1)*A066086(n+1)`
-/

namespace A175732.P10226523546442678396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A066086 (n + 1)

end

end A175732.P10226523546442678396

namespace A175732

/-- `A003557(n+1)*A066086(n+1)` -/
def P10226523546442678396.Spec : Prop :=
  ∀ n, P10226523546442678396.a n = A175732 (n + 1)

end A175732

/-! ## A175732.P209659283688878102

`A345052(n+1)/A322359(n+1)`
-/

namespace A175732.P209659283688878102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345052 (n + 1) : ℚ) / (A322359 (n + 1) : ℚ)

end

end A175732.P209659283688878102

namespace A175732

/-- `A345052(n+1)/A322359(n+1)` -/
def P209659283688878102.Spec : Prop :=
  ∀ n, P209659283688878102.a n = (A175732 (n + 1) : ℚ)

end A175732

/-! ## A175732.P9678526427190895492

`gcd(A158523(n+1), A292786(n+1))`
-/

namespace A175732.P9678526427190895492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A158523 (n + 1)) (A292786 (n + 1))

end

end A175732.P9678526427190895492

namespace A175732

/-- `gcd(A158523(n+1), A292786(n+1))` -/
def P9678526427190895492.Spec : Prop :=
  ∀ n, (P9678526427190895492.a n : ℤ) = A175732 (n + 1)

end A175732

/-! ## A175732.P8641806408329926573

`gcd(A306927(n+1)+1+n, A000010(n+1))`
-/

namespace A175732.P8641806408329926573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A306927 (n + 1) + 1 + (n : ℤ)) (A000010 (n + 1))

end

end A175732.P8641806408329926573

namespace A175732

/-- `gcd(A306927(n+1)+1+n, A000010(n+1))` -/
def P8641806408329926573.Spec : Prop :=
  ∀ n, (P8641806408329926573.a n : ℤ) = A175732 (n + 1)

end A175732

/-! ## A175732.P5652181705827207177

`A003557(n+1)*A009223(A007947(n+1))`
-/

namespace A175732.P5652181705827207177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A009223 (A007947 (n + 1)).toNat

end

end A175732.P5652181705827207177

namespace A175732

/-- `A003557(n+1)*A009223(A007947(n+1))` -/
def P5652181705827207177.Spec : Prop :=
  ∀ n, P5652181705827207177.a n = A175732 (n + 1)

end A175732

/-! ## A175732.P5298004507434735521

`gcd(A109606(n+1)+1, A001615(A000027(n+1)))`
-/

namespace A175732.P5298004507434735521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109606 (n + 1) + 1) (A001615 (A000027 (n + 1)).toNat)

end

end A175732.P5298004507434735521

namespace A175732

/-- `gcd(A109606(n+1)+1, A001615(A000027(n+1)))` -/
def P5298004507434735521.Spec : Prop :=
  ∀ n, (P5298004507434735521.a n : ℤ) = A175732 (n + 1)

end A175732

/-! ## A175732.P18293909368598318476

`gcd(n-A219428(n+1), A000027(A001615(n+1)))`
-/

namespace A175732.P18293909368598318476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - A219428 (n + 1)) (A000027 (A001615 (n + 1)).toNat)

end

end A175732.P18293909368598318476

namespace A175732

/-- `gcd(n-A219428(n+1), A000027(A001615(n+1)))` -/
def P18293909368598318476.Spec : Prop :=
  ∀ n, (P18293909368598318476.a n : ℤ) = A175732 (n + 1)

end A175732

/-! ## A175732.P18326107041154761037

`A001615(n+1)/A048250(n+1)*A066086(n+1)`
-/

namespace A175732.P18326107041154761037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) : ℚ) / (A048250 (n + 1) : ℚ) * (A066086 (n + 1) : ℚ)

end

end A175732.P18326107041154761037

namespace A175732

/-- `A001615(n+1)/A048250(n+1)*A066086(n+1)` -/
def P18326107041154761037.Spec : Prop :=
  ∀ n, P18326107041154761037.a n = (A175732 (n + 1) : ℚ)

end A175732

/-! ## A175732.P11938727953333091461

`A000010(n+1)*A066086(n+1)/A173557(n+1)`
-/

namespace A175732.P11938727953333091461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) * A066086 (n + 1) : ℚ) / (A173557 (n + 1) : ℚ)

end

end A175732.P11938727953333091461

namespace A175732

/-- `A000010(n+1)*A066086(n+1)/A173557(n+1)` -/
def P11938727953333091461.Spec : Prop :=
  ∀ n, P11938727953333091461.a n = (A175732 (n + 1) : ℚ)

end A175732

/-! ## A175732.P8370761711433090332

`A000010(n+1)*A048250(n+1)/A322359(n+1)`
-/

namespace A175732.P8370761711433090332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) * A048250 (n + 1) : ℚ) / (A322359 (n + 1) : ℚ)

end

end A175732.P8370761711433090332

namespace A175732

/-- `A000010(n+1)*A048250(n+1)/A322359(n+1)` -/
def P8370761711433090332.Spec : Prop :=
  ∀ n, P8370761711433090332.a n = (A175732 (n + 1) : ℚ)

end A175732

/-! ## A175732.P16778676403091646672

`A001615(n+1)*A173557(n+1)/A322359(n+1)`
-/

namespace A175732.P16778676403091646672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) * A173557 (n + 1) : ℚ) / (A322359 (n + 1) : ℚ)

end

end A175732.P16778676403091646672

namespace A175732

/-- `A001615(n+1)*A173557(n+1)/A322359(n+1)` -/
def P16778676403091646672.Spec : Prop :=
  ∀ n, P16778676403091646672.a n = (A175732 (n + 1) : ℚ)

end A175732

/-! ## A175732.P2497673063930664006

`A003557(n+1)/A322359(n+1)*A322360(n+1)`
-/

namespace A175732.P2497673063930664006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) : ℚ) / (A322359 (n + 1) : ℚ) * (A322360 (n + 1) : ℚ)

end

end A175732.P2497673063930664006

namespace A175732

/-- `A003557(n+1)/A322359(n+1)*A322360(n+1)` -/
def P2497673063930664006.Spec : Prop :=
  ∀ n, P2497673063930664006.a n = (A175732 (n + 1) : ℚ)

end A175732

/-! ## A175732.P14604692234047035281

`A066086(n+1)*A342458(n+1)/A342459(n+1)`
-/

namespace A175732.P14604692234047035281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066086 (n + 1) * A342458 (n + 1) : ℚ) / (A342459 (n + 1) : ℚ)

end

end A175732.P14604692234047035281

namespace A175732

/-- `A066086(n+1)*A342458(n+1)/A342459(n+1)` -/
def P14604692234047035281.Spec : Prop :=
  ∀ n, P14604692234047035281.a n = (A175732 (n + 1) : ℚ)

end A175732

/-! ## A175732.P15354255379713142495

`gcd(1-A051953(n+1)+n, A028310(A001615(n+1)))`
-/

namespace A175732.P15354255379713142495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A051953 (n + 1) + (n : ℤ)) (A028310 (A001615 (n + 1)).toNat)

end

end A175732.P15354255379713142495

namespace A175732

/-- `gcd(1-A051953(n+1)+n, A028310(A001615(n+1)))` -/
def P15354255379713142495.Spec : Prop :=
  ∀ n, (P15354255379713142495.a n : ℤ) = A175732 (n + 1)

end A175732

/-!
# A175733: a(n) is the smallest n-digit number with 3 divisors.

The programs for A175733, there is no canonical definition to state claims against.
-/

/-! ## A175733.P16875689305343556743

`A131581(n)²`
-/

namespace A175733.P16875689305343556743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131581 n ^ 2

end

end A175733.P16875689305343556743

/-! ## A175733.P6918977675301133547

`A131581(n)^A000005(A029710(n+1))`
-/

namespace A175733.P6918977675301133547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131581 n : ℚ) ^ (A000005 (A029710 (n + 1)).toNat : ℤ)

end

end A175733.P6918977675301133547

/-! ## A175733.P12705426545276856805

`A131581(n)^A001221(A131574(n+1))`
-/

namespace A175733.P12705426545276856805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131581 n : ℚ) ^ (A001221 (A131574 (n + 1)).toNat : ℤ)

end

end A175733.P12705426545276856805

/-! ## A175733.P10591099370052515094

`A131581(n)^A000040(A133707(n+1))`
-/

namespace A175733.P10591099370052515094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131581 n : ℚ) ^ (A000040 (A133707 (n + 1)).toNat : ℤ)

end

end A175733.P10591099370052515094

/-! ## A175733.P14774418900448246629

`A131581(n)^A020639(A272006(3*n+5))`
-/

namespace A175733.P14774418900448246629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131581 n : ℚ) ^ (A020639 (A272006 (3 * n + 5)).toNat : ℤ)

end

end A175733.P14774418900448246629

/-!
# A175734: Largest n-digit number with 3 divisors.

The programs for A175734, there is no canonical definition to state claims against.
-/

/-! ## A175734.P8926556037857836511

`A132153(n+1)²`
-/

namespace A175734.P8926556037857836511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132153 (n + 1) ^ 2

end

end A175734.P8926556037857836511

/-! ## A175734.P14594488357519693131

`record[A132153(A134478(n))²]`
-/

namespace A175734.P14594488357519693131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132153 (A134478 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175734.P14594488357519693131

/-! ## A175734.P13155845640171256623

`record[A132153(A344180(n))²]`
-/

namespace A175734.P13155845640171256623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132153 (A344180 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175734.P13155845640171256623

/-! ## A175734.P16887073508294531628

`A132153(n+1)^dr(A017185(n))`
-/

namespace A175734.P16887073508294531628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132153 (n + 1) ^ SequenceMachineLib.digitalRoot (A017185 n)

end

end A175734.P16887073508294531628

/-! ## A175734.P2554313798738502418

`A132153(n+1)^A010693(2*n)`
-/

namespace A175734.P2554313798738502418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132153 (n + 1) : ℚ) ^ (A010693 (2 * n) : ℤ)

end

end A175734.P2554313798738502418

/-! ## A175734.P17295637462163209492

`A132153(n+1)^A020639(2*(n+1))`
-/

namespace A175734.P17295637462163209492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132153 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A175734.P17295637462163209492

/-! ## A175734.P4245990138568003957

`record[A132153(A134478(n))]*A132153(n+1)`
-/

namespace A175734.P4245990138568003957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132153 (A134478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A132153 (n + 1)

end

end A175734.P4245990138568003957

/-! ## A175734.P9760510023580427250

`record[A132153(A344180(n))]*A132153(n+1)`
-/

namespace A175734.P9760510023580427250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132153 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A132153 (n + 1)

end

end A175734.P9760510023580427250

/-! ## A175734.P4270976262091170075

`A132153(n+1)^A001227(A050758(n+1))`
-/

namespace A175734.P4270976262091170075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132153 (n + 1) : ℚ) ^ (A001227 (A050758 (n + 1)).toNat : ℤ)

end

end A175734.P4270976262091170075

/-! ## A175734.P17358830469726163922

`A132153(n+1)^A001227(A082376(n+1))`
-/

namespace A175734.P17358830469726163922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132153 (n + 1) : ℚ) ^ (A001227 (A082376 (n + 1)).toNat : ℤ)

end

end A175734.P17358830469726163922

/-! ## A175734.P5736617376608195846

`A132153(n+1)^A001227(A096635(n+1))`
-/

namespace A175734.P5736617376608195846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132153 (n + 1) : ℚ) ^ (A001227 (A096635 (n + 1)).toNat : ℤ)

end

end A175734.P5736617376608195846

/-! ## A175734.P10965171108650166405

`A132153(n+1)^A000005(A132143(n+1))`
-/

namespace A175734.P10965171108650166405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132153 (n + 1) : ℚ) ^ (A000005 (A132143 (n + 1)).toNat : ℤ)

end

end A175734.P10965171108650166405

/-! ## A175734.P3253699213505139192

`A132153(A008619(2*n+1))*A132153(n+1)`
-/

namespace A175734.P3253699213505139192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132153 (A008619 (2 * n + 1)).toNat * A132153 (n + 1)

end

end A175734.P3253699213505139192

/-! ## A175734.P15458087028284800658

`or(A000035(n), A132153(n+1))*A132153(n+1)`
-/

namespace A175734.P15458087028284800658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A132153 (n + 1)) * A132153 (n + 1)

end

end A175734.P15458087028284800658

/-!
# A175735: n-th non-Chen semiprime minus n-th Chen semiprime.

The programs for A175735, there is no canonical definition to state claims against.
-/

/-! ## A175735.P9914224536003253681

`A175680(n+1)-A175634(n+1)`
-/

namespace A175735.P9914224536003253681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175680 (n + 1) - A175634 (n + 1)

end

end A175735.P9914224536003253681

/-! ## A175735.P7505389520388740830

`A175680(n+1)-lt[A054576(n+4), A105700(n)]`
-/

namespace A175735.P7505389520388740830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175680 (n + 1) - (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ)

end

end A175735.P7505389520388740830

/-! ## A175735.P4752145879595067188

`A175680(n+1)-lt[A077565(n+4), A105700(n)]`
-/

namespace A175735.P4752145879595067188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077565 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175680 (n + 1) - (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ)

end

end A175735.P4752145879595067188

/-! ## A175735.P9074756232140928434

`A175680(n+1)-lt[A002033(n+3), A105700(n)²]`
-/

namespace A175735.P9074756232140928434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175680 (n + 1) - (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ)

end

end A175735.P9074756232140928434

/-! ## A175735.P2783343187498338082

`A175680(n+1)-lt[A105560(n+4), A105700(n)²]`
-/

namespace A175735.P2783343187498338082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105560 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175680 (n + 1) - (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ)

end

end A175735.P2783343187498338082

/-! ## A175735.P17292036144046457054

`A175680(n+1)-lt[A284289(n+4), A105700(n)²]`
-/

namespace A175735.P17292036144046457054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175680 (n + 1) - (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ)

end

end A175735.P17292036144046457054

/-!
# A175736: Increasing gaps between 2-pseudoprimes (lower end).

The programs for A175736, there is no canonical definition to state claims against.
-/

/-! ## A175736.P18303308866860187194

`A175737(n+1)-A175738(n+1)`
-/

namespace A175736.P18303308866860187194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175737 (n + 1) - A175738 (n + 1)

end

end A175736.P18303308866860187194

/-! ## A175736.P5194998017483405098

`A175737(n+1)-record[A173619(n+1)]`
-/

namespace A175736.P5194998017483405098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175737 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175736.P5194998017483405098

/-! ## A175736.P2791178664326192420

`A175737(n+1)-record[A001567(n+2)-A001567(n+1)]`
-/

namespace A175736.P2791178664326192420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 2) - A001567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175737 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175736.P2791178664326192420

/-! ## A175736.P9461689588891229400

`A175737(n+1)-record[Δ[A001567(n+1)]]`
-/

namespace A175736.P9461689588891229400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175737 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175736.P9461689588891229400

/-! ## A175736.P8307677553481236010

`A175737(n+1)+A001478(record[A173619(n+1)])`
-/

namespace A175736.P8307677553481236010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175737 (n + 1) + A001478 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A175736.P8307677553481236010

/-!
# A175737: Increasing gaps between 2-pseudoprimes (upper end).

The programs for A175737, there is no canonical definition to state claims against.
-/

/-! ## A175737.P7679523965319351757

`A175738(n+1)+A175736(n+1)`
-/

namespace A175737.P7679523965319351757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175738 (n + 1) + A175736 (n + 1)

end

end A175737.P7679523965319351757

/-! ## A175737.P3243836107786051842

`A175736(n+1)+record[A173619(n+1)]`
-/

namespace A175737.P3243836107786051842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175736 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175737.P3243836107786051842

/-! ## A175737.P2387907216429333150

`A175736(n+1)+record[A001567(n+2)-A001567(n+1)]`
-/

namespace A175737.P2387907216429333150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 2) - A001567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175736 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175737.P2387907216429333150

/-! ## A175737.P13864757789578530480

`A175736(n+1)+record[Δ[A001567(n+1)]]`
-/

namespace A175737.P13864757789578530480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175736 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175737.P13864757789578530480

/-!
# A175738: Sizes of successive increasing gaps between 2-pseudoprimes.

The programs for A175738, there is no canonical definition to state claims against.
-/

/-! ## A175738.P12933627246668562987

`A175737(n+1)-A175736(n+1)`
-/

namespace A175738.P12933627246668562987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175737 (n + 1) - A175736 (n + 1)

end

end A175738.P12933627246668562987

/-! ## A175738.P4627505409419852012

`A175737(A000027(n+1))%A175736(n+1)`
-/

namespace A175738.P4627505409419852012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175737 (A000027 (n + 1)).toNat) (A175736 (n + 1))

end

end A175738.P4627505409419852012

/-! ## A175738.P4536353198818326949

`A175737(A080513(2*n))%A175736(n+1)`
-/

namespace A175738.P4536353198818326949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175737 (A080513 (2 * n)).toNat) (A175736 (n + 1))

end

end A175738.P4536353198818326949

/-! ## A175738.P11592622446162096412

`record[A175737(A162247(n+1))]%A175736(n+1)`
-/

namespace A175738.P11592622446162096412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175737 (A162247 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A175736 (n + 1))

end

end A175738.P11592622446162096412

/-! ## A175738.P15682609525627171607

`(A175737(n+1)%A175736(n+1))%A230489(n+1)`
-/

namespace A175738.P15682609525627171607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A175737 (n + 1)) (A175736 (n + 1))) (A230489 (n + 1))

end

end A175738.P15682609525627171607

/-! ## A175738.P4171981232525867648

`A175737(A000196(∑[2*(n+1)]))%A175736(n+1)`
-/

namespace A175738.P4171981232525867648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175737 (A000196 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat) (A175736 (n + 1))

end

end A175738.P4171981232525867648

/-! ## A175738.P752609216528069693

`record[A173619(n+1)]`
-/

namespace A175738.P752609216528069693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175738.P752609216528069693

/-! ## A175738.P12581212601042937907

`record[A001567(n+2)-A001567(n+1)]`
-/

namespace A175738.P12581212601042937907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 2) - A001567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175738.P12581212601042937907

/-!
# A175742: Numbers with 32 divisors.

The programs for A175742, the canonical program `A175742.P17751392204006132798` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175742 has offset 1).

The definition of A175742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175742.P17751392204006132798

`eq[7, log2(A145154(n))]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A175742

/-- `eq[7, log2(A145154(n))]` -/
def P17751392204006132798.Spec : Prop :=
  ∀ n, (P17751392204006132798.a n : ℤ) = A175742 (n + 1)

theorem P17751392204006132798.correct : P17751392204006132798.Spec := by
  intro n
  simp only [A175742, Nat.add_sub_cancel]

end A175742

/-! ## A175742.P3180389915231025867

`eq[32, A000005(A028310(n))]`
-/

namespace A175742.P3180389915231025867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175742.P3180389915231025867

namespace A175742

/-- `eq[32, A000005(A028310(n))]` -/
def P3180389915231025867.Spec : Prop :=
  ∀ n, (P3180389915231025867.a n : ℤ) = A175742 (n + 1)

end A175742

/-! ## A175742.P4858704037924803700

`A300664(A062399(n)+2)`
-/

namespace A175742.P4858704037924803700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300664 (A062399 n + 2).toNat

end

end A175742.P4858704037924803700

namespace A175742

/-- `A300664(A062399(n)+2)` -/
def P4858704037924803700.Spec : Prop :=
  ∀ n, P4858704037924803700.a n = A175742 (n + 1)

end A175742

/-! ## A175742.P13232525532338018493

`A300664(A351870(n)+2)`
-/

namespace A175742.P13232525532338018493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300664 (A351870 n + 2).toNat

end

end A175742.P13232525532338018493

namespace A175742

/-- `A300664(A351870(n)+2)` -/
def P13232525532338018493.Spec : Prop :=
  ∀ n, P13232525532338018493.a n = A175742 (n + 1)

end A175742

/-! ## A175742.P11101794385907611575

`A300664(n+2)%(C(A128605(3*n+4), 2)-(n+1))`
-/

namespace A175742.P11101794385907611575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300664 (n + 2)) ((Nat.choose (A128605 (3 * n + 4)).toNat 2 : ℤ) - (n + 1 : ℤ))

end

end A175742.P11101794385907611575

namespace A175742

/-- `A300664(n+2)%(C(A128605(3*n+4), 2)-(n+1))` -/
def P11101794385907611575.Spec : Prop :=
  ∀ n, P11101794385907611575.a n = A175742 (n + 1)

end A175742

/-!
# A175743: Numbers with 33 divisors.

The programs for A175743, the canonical program `A175743.P361553405530527540` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175743 has offset 1).

The definition of A175743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175743.P3986861412237007204

`(A178740(n+1)%A178740(3*n+5))²`
-/

namespace A175743.P3986861412237007204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178740 (n + 1)) (A178740 (3 * n + 5)) ^ 2

end

end A175743.P3986861412237007204

namespace A175743

/-- `(A178740(n+1)%A178740(3*n+5))²` -/
def P3986861412237007204.Spec : Prop :=
  ∀ n, P3986861412237007204.a n = A175743 (n + 1)

end A175743

/-! ## A175743.P12412594333834438958

`A178740(n+1)^A010553(A001123(n+1))`
-/

namespace A175743.P12412594333834438958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178740 (n + 1) : ℚ) ^ (A010553 (A001123 (n + 1)).toNat : ℤ)

end

end A175743.P12412594333834438958

namespace A175743

/-- `A178740(n+1)^A010553(A001123(n+1))` -/
def P12412594333834438958.Spec : Prop :=
  ∀ n, P12412594333834438958.a n = (A175743 (n + 1) : ℚ)

end A175743

/-! ## A175743.P2263335816438998257

`A178740(n+1)^A295879(A074172(n+1))`
-/

namespace A175743.P2263335816438998257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178740 (n + 1) : ℚ) ^ (A295879 (A074172 (n + 1)).toNat : ℤ)

end

end A175743.P2263335816438998257

namespace A175743

/-- `A178740(n+1)^A295879(A074172(n+1))` -/
def P2263335816438998257.Spec : Prop :=
  ∀ n, P2263335816438998257.a n = (A175743 (n + 1) : ℚ)

end A175743

/-! ## A175743.P17843204645993538580

`∩[A030630(n+1), A119251(n+1)]²`
-/

namespace A175743.P17843204645993538580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A175743.P17843204645993538580

namespace A175743

/-- `∩[A030630(n+1), A119251(n+1)]²` -/
def P17843204645993538580.Spec : Prop :=
  ∀ n, (P17843204645993538580.a n : ℤ) = A175743 (n + 1)

end A175743

/-! ## A175743.P6295439329072587683

`A178740(n+1)^A020639(A046092(n+1))`
-/

namespace A175743.P6295439329072587683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178740 (n + 1) : ℚ) ^ (A020639 (A046092 (n + 1)).toNat : ℤ)

end

end A175743.P6295439329072587683

namespace A175743

/-- `A178740(n+1)^A020639(A046092(n+1))` -/
def P6295439329072587683.Spec : Prop :=
  ∀ n, P6295439329072587683.a n = (A175743 (n + 1) : ℚ)

end A175743

/-! ## A175743.P5062380204984454544

`A178740(n+1)^A000005(A007700(n+1))`
-/

namespace A175743.P5062380204984454544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178740 (n + 1) : ℚ) ^ (A000005 (A007700 (n + 1)).toNat : ℤ)

end

end A175743.P5062380204984454544

namespace A175743

/-- `A178740(n+1)^A000005(A007700(n+1))` -/
def P5062380204984454544.Spec : Prop :=
  ∀ n, P5062380204984454544.a n = (A175743 (n + 1) : ℚ)

end A175743

/-! ## A175743.P361553405530527540

`∩[A030630(n+1), A145784(n+1)]²`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A175743

/-- `∩[A030630(n+1), A145784(n+1)]²` -/
def P361553405530527540.Spec : Prop :=
  ∀ n, (P361553405530527540.a n : ℤ) = A175743 (n + 1)

theorem P361553405530527540.correct : P361553405530527540.Spec := by
  intro n
  simp only [A175743, Nat.add_sub_cancel]

end A175743

/-! ## A175743.P12455170195665882030

`∩[A030630(n+1), A279458(n+1)]²`
-/

namespace A175743.P12455170195665882030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A175743.P12455170195665882030

namespace A175743

/-- `∩[A030630(n+1), A279458(n+1)]²` -/
def P12455170195665882030.Spec : Prop :=
  ∀ n, (P12455170195665882030.a n : ℤ) = A175743 (n + 1)

end A175743

/-! ## A175743.P5369561711803283365

`A178740(n+1)^A000005(A077317(n+1))`
-/

namespace A175743.P5369561711803283365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178740 (n + 1) : ℚ) ^ (A000005 (A077317 (n + 1)).toNat : ℤ)

end

end A175743.P5369561711803283365

namespace A175743

/-- `A178740(n+1)^A000005(A077317(n+1))` -/
def P5369561711803283365.Spec : Prop :=
  ∀ n, P5369561711803283365.a n = (A175743 (n + 1) : ℚ)

end A175743

/-! ## A175743.P12574762478779941310

`A000290(A178740(n+1))`
-/

namespace A175743.P12574762478779941310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A178740 (n + 1)).toNat

end

end A175743.P12574762478779941310

namespace A175743

/-- `A000290(A178740(n+1))` -/
def P12574762478779941310.Spec : Prop :=
  ∀ n, P12574762478779941310.a n = A175743 (n + 1)

end A175743

/-!
# A175744: Numbers with 34 divisors.

The programs for A175744, the canonical program `A175744.P5492150925736287456` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175744 has offset 1).

The definition of A175744 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175744.P15953666684219339298

`A175747(n+1)/A040002(A197225(n+1))`
-/

namespace A175744.P15953666684219339298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175747 (n + 1) : ℚ) / (A040002 (A197225 (n + 1)).toNat : ℚ)

end

end A175744.P15953666684219339298

namespace A175744

/-- `A175747(n+1)/A040002(A197225(n+1))` -/
def P15953666684219339298.Spec : Prop :=
  ∀ n, P15953666684219339298.a n = (A175744 (n + 1) : ℚ)

end A175744

/-! ## A175744.P2461469907326331444

`A175747(n+1)/A040002(A308711(n+1))`
-/

namespace A175744.P2461469907326331444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175747 (n + 1) : ℚ) / (A040002 (A308711 (n + 1)).toNat : ℚ)

end

end A175744.P2461469907326331444

namespace A175744

/-- `A175747(n+1)/A040002(A308711(n+1))` -/
def P2461469907326331444.Spec : Prop :=
  ∀ n, P2461469907326331444.a n = (A175744 (n + 1) : ℚ)

end A175744

/-! ## A175744.P10358976957526577388

`A175747(n+1)/4%A175738(n+1)`
-/

namespace A175744.P10358976957526577388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175747 (n + 1) : ℚ) / (Int.tmod 4 (A175738 (n + 1)) : ℚ)

end

end A175744.P10358976957526577388

namespace A175744

/-- `A175747(n+1)/4%A175738(n+1)` -/
def P10358976957526577388.Spec : Prop :=
  ∀ n, P10358976957526577388.a n = (A175744 (n + 1) : ℚ)

end A175744

/-! ## A175744.P7435841863214017175

`A175747(n+1)/A048785(A001359(n+1))`
-/

namespace A175744.P7435841863214017175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175747 (n + 1) : ℚ) / (A048785 (A001359 (n + 1)).toNat : ℚ)

end

end A175744.P7435841863214017175

namespace A175744

/-- `A175747(n+1)/A048785(A001359(n+1))` -/
def P7435841863214017175.Spec : Prop :=
  ∀ n, P7435841863214017175.a n = (A175744 (n + 1) : ℚ)

end A175744

/-! ## A175744.P1819172741544560934

`A175747(n+1)/A048785(A006512(n+1))`
-/

namespace A175744.P1819172741544560934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175747 (n + 1) : ℚ) / (A048785 (A006512 (n + 1)).toNat : ℚ)

end

end A175744.P1819172741544560934

namespace A175744

/-- `A175747(n+1)/A048785(A006512(n+1))` -/
def P1819172741544560934.Spec : Prop :=
  ∀ n, P1819172741544560934.a n = (A175744 (n + 1) : ℚ)

end A175744

/-! ## A175744.P7130300883781381409

`A175747(n+1)/A048785(A275021(n+1))`
-/

namespace A175744.P7130300883781381409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175747 (n + 1) : ℚ) / (A048785 (A275021 (n + 1)).toNat : ℚ)

end

end A175744.P7130300883781381409

namespace A175744

/-- `A175747(n+1)/A048785(A275021(n+1))` -/
def P7130300883781381409.Spec : Prop :=
  ∀ n, P7130300883781381409.a n = (A175744 (n + 1) : ℚ)

end A175744

/-! ## A175744.P5492150925736287456

`2*A166629(A166629(p?[2*n+1]))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A175744

/-- `2*A166629(A166629(p?[2*n+1]))` -/
def P5492150925736287456.Spec : Prop :=
  ∀ n, P5492150925736287456.a n = A175744 (n + 1)

theorem P5492150925736287456.correct : P5492150925736287456.Spec := by
  intro n
  simp only [A175744, Nat.add_sub_cancel]

end A175744

/-! ## A175744.P7357287298389626941

`A175747(n+1)/A040002(A086781(n))`
-/

namespace A175744.P7357287298389626941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175747 (n + 1) : ℚ) / (A040002 (A086781 n).toNat : ℚ)

end

end A175744.P7357287298389626941

namespace A175744

/-- `A175747(n+1)/A040002(A086781(n))` -/
def P7357287298389626941.Spec : Prop :=
  ∀ n, P7357287298389626941.a n = (A175744 (n + 1) : ℚ)

end A175744

/-! ## A175744.P298596264837976851

`A175747(n+1)/A040002(A000124(n))`
-/

namespace A175744.P298596264837976851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175747 (n + 1) : ℚ) / (A040002 (A000124 n).toNat : ℚ)

end

end A175744.P298596264837976851

namespace A175744

/-- `A175747(n+1)/A040002(A000124(n))` -/
def P298596264837976851.Spec : Prop :=
  ∀ n, P298596264837976851.a n = (A175744 (n + 1) : ℚ)

end A175744

/-! ## A175744.P10037448855726075367

`A175747(n+1)/A040002(A133263(n))`
-/

namespace A175744.P10037448855726075367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175747 (n + 1) : ℚ) / (A040002 (A133263 n).toNat : ℚ)

end

end A175744.P10037448855726075367

namespace A175744

/-- `A175747(n+1)/A040002(A133263(n))` -/
def P10037448855726075367.Spec : Prop :=
  ∀ n, P10037448855726075367.a n = (A175744 (n + 1) : ℚ)

end A175744

/-! ## A175744.P15186070747035014688

`A175747(n+1)/A174571(A328805(n+1))`
-/

namespace A175744.P15186070747035014688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175747 (n + 1) : ℚ) / (A174571 (A328805 (n + 1)).toNat : ℚ)

end

end A175744.P15186070747035014688

namespace A175744

/-- `A175747(n+1)/A174571(A328805(n+1))` -/
def P15186070747035014688.Spec : Prop :=
  ∀ n, P15186070747035014688.a n = (A175744 (n + 1) : ℚ)

end A175744

/-! ## A175744.P12401267675630280976

`A175747(n+1)/A040002(A025747(n))`
-/

namespace A175744.P12401267675630280976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175747 (n + 1) : ℚ) / (A040002 (A025747 n).toNat : ℚ)

end

end A175744.P12401267675630280976

namespace A175744

/-- `A175747(n+1)/A040002(A025747(n))` -/
def P12401267675630280976.Spec : Prop :=
  ∀ n, P12401267675630280976.a n = (A175744 (n + 1) : ℚ)

end A175744

/-! ## A175744.P5347148091589156369

`A175747(n+1)/A040002(A175746(n+1))`
-/

namespace A175744.P5347148091589156369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175747 (n + 1) : ℚ) / (A040002 (A175746 (n + 1)).toNat : ℚ)

end

end A175744.P5347148091589156369

namespace A175744

/-- `A175747(n+1)/A040002(A175746(n+1))` -/
def P5347148091589156369.Spec : Prop :=
  ∀ n, P5347148091589156369.a n = (A175744 (n + 1) : ℚ)

end A175744

/-! ## A175744.P10690113476352779528

`A175747(n+1)/A040002(A253025(n+1))`
-/

namespace A175744.P10690113476352779528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175747 (n + 1) : ℚ) / (A040002 (A253025 (n + 1)).toNat : ℚ)

end

end A175744.P10690113476352779528

namespace A175744

/-- `A175747(n+1)/A040002(A253025(n+1))` -/
def P10690113476352779528.Spec : Prop :=
  ∀ n, P10690113476352779528.a n = (A175744 (n + 1) : ℚ)

end A175744

/-! ## A175744.P14526319352539891788

`A175747(n+1)/A040002(A175742(2*n+1))`
-/

namespace A175744.P14526319352539891788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175747 (n + 1) : ℚ) / (A040002 (A175742 (2 * n + 1)).toNat : ℚ)

end

end A175744.P14526319352539891788

namespace A175744

/-- `A175747(n+1)/A040002(A175742(2*n+1))` -/
def P14526319352539891788.Spec : Prop :=
  ∀ n, P14526319352539891788.a n = (A175744 (n + 1) : ℚ)

end A175744

/-! ## A175744.P17728314159052012003

`A175747(n+1)/A059132(A028326(n))`
-/

namespace A175744.P17728314159052012003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175747 (n + 1) : ℚ) / (A059132 (A028326 n).toNat : ℚ)

end

end A175744.P17728314159052012003

namespace A175744

/-- `A175747(n+1)/A059132(A028326(n))` -/
def P17728314159052012003.Spec : Prop :=
  ∀ n, P17728314159052012003.a n = (A175744 (n + 1) : ℚ)

end A175744

/-!
# A175745: Numbers with 35 divisors.

The programs for A175745, there is no canonical definition to state claims against.
-/

/-! ## A175745.P16699942786520984222

`(A143610(n+1)%A143583(n+2))²`
-/

namespace A175745.P16699942786520984222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143610 (n + 1)) (A143583 (n + 2)) ^ 2

end

end A175745.P16699942786520984222

/-!
# A175746: Numbers with 36 divisors.

The programs for A175746, there is no canonical definition to state claims against.
-/

/-! ## A175746.P1321504743993248450

`eq[12, sqrt(A145154(n))]`
-/

namespace A175746.P1321504743993248450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A145154 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A175746.P1321504743993248450

/-! ## A175746.P8823688614472131536

`eq[36, A000005(A028310(n))]`
-/

namespace A175746.P8823688614472131536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175746.P8823688614472131536

/-!
# A175747: Numbers with 38 divisors.

The programs for A175747, the canonical program `A175747.P799847572334092033` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175747 has offset 1).

The definition of A175747 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175747.P2160899248923222426

`A175753(n+1)/A040056(A060240(n))`
-/

namespace A175747.P2160899248923222426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175753 (n + 1) : ℚ) / (A040056 (A060240 n).toNat : ℚ)

end

end A175747.P2160899248923222426

namespace A175747

/-- `A175753(n+1)/A040056(A060240(n))` -/
def P2160899248923222426.Spec : Prop :=
  ∀ n, P2160899248923222426.a n = (A175747 (n + 1) : ℚ)

end A175747

/-! ## A175747.P14742646585173382349

`A040002(∑[A006530(2*n+1)])*A175744(n+1)`
-/

namespace A175747.P14742646585173382349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A175744 (n + 1)

end

end A175747.P14742646585173382349

namespace A175747

/-- `A040002(∑[A006530(2*n+1)])*A175744(n+1)` -/
def P14742646585173382349.Spec : Prop :=
  ∀ n, P14742646585173382349.a n = A175747 (n + 1)

end A175747

/-! ## A175747.P6783899719112818623

`A040002(p?[A197225(n+1)])*A175744(n+1)`
-/

namespace A175747.P6783899719112818623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat * A175744 (n + 1)

end

end A175747.P6783899719112818623

namespace A175747

/-- `A040002(p?[A197225(n+1)])*A175744(n+1)` -/
def P6783899719112818623.Spec : Prop :=
  ∀ n, P6783899719112818623.a n = A175747 (n + 1)

end A175747

/-! ## A175747.P8714891189529286877

`A040002(A308711(abs(1-n)+1))*A175744(n+1)`
-/

namespace A175747.P8714891189529286877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 (A308711 (|1 - (n : ℤ)| + 1).toNat).toNat * A175744 (n + 1)

end

end A175747.P8714891189529286877

namespace A175747

/-- `A040002(A308711(abs(1-n)+1))*A175744(n+1)` -/
def P8714891189529286877.Spec : Prop :=
  ∀ n, P8714891189529286877.a n = A175747 (n + 1)

end A175747

/-! ## A175747.P17776381418807766368

`A040002(A001157(n+1)-n²)*A175744(n+1)`
-/

namespace A175747.P17776381418807766368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 (A001157 (n + 1) - (n ^ 2 : ℤ)).toNat * A175744 (n + 1)

end

end A175747.P17776381418807766368

namespace A175747

/-- `A040002(A001157(n+1)-n²)*A175744(n+1)` -/
def P17776381418807766368.Spec : Prop :=
  ∀ n, P17776381418807766368.a n = A175747 (n + 1)

end A175747

/-! ## A175747.P799847572334092033

`A048785(A006512(or(1, n)))*A175744(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A175747

/-- `A048785(A006512(or(1, n)))*A175744(n+1)` -/
def P799847572334092033.Spec : Prop :=
  ∀ n, P799847572334092033.a n = A175747 (n + 1)

theorem P799847572334092033.correct : P799847572334092033.Spec := by
  intro n
  simp only [A175747, Nat.add_sub_cancel]

end A175747

/-! ## A175747.P18088683761370928487

`A048785(A006512(∏{p}[n, #]))*A175744(n+1)`
-/

namespace A175747.P18088683761370928487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (A006512 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat * A175744 (n + 1)

end

end A175747.P18088683761370928487

namespace A175747

/-- `A048785(A006512(∏{p}[n, #]))*A175744(n+1)` -/
def P18088683761370928487.Spec : Prop :=
  ∀ n, P18088683761370928487.a n = A175747 (n + 1)

end A175747

/-! ## A175747.P9441853498803840181

`A048785(A006512(abs(1-n)+1))*A175744(n+1)`
-/

namespace A175747.P9441853498803840181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (A006512 (|1 - (n : ℤ)| + 1).toNat).toNat * A175744 (n + 1)

end

end A175747.P9441853498803840181

namespace A175747

/-- `A048785(A006512(abs(1-n)+1))*A175744(n+1)` -/
def P9441853498803840181.Spec : Prop :=
  ∀ n, P9441853498803840181.a n = A175747 (n + 1)

end A175747

/-! ## A175747.P12738197132175508232

`A048785(A001359(n+1))*A175744(n+1)`
-/

namespace A175747.P12738197132175508232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (A001359 (n + 1)).toNat * A175744 (n + 1)

end

end A175747.P12738197132175508232

namespace A175747

/-- `A048785(A001359(n+1))*A175744(n+1)` -/
def P12738197132175508232.Spec : Prop :=
  ∀ n, P12738197132175508232.a n = A175747 (n + 1)

end A175747

/-! ## A175747.P3231079429536287680

`A048785(A275021(n+1))*A175744(n+1)`
-/

namespace A175747.P3231079429536287680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (A275021 (n + 1)).toNat * A175744 (n + 1)

end

end A175747.P3231079429536287680

namespace A175747

/-- `A048785(A275021(n+1))*A175744(n+1)` -/
def P3231079429536287680.Spec : Prop :=
  ∀ n, P3231079429536287680.a n = A175747 (n + 1)

end A175747

/-! ## A175747.P4094218217215255764

`A000034(A006512(n+2))²*A175744(n+1)`
-/

namespace A175747.P4094218217215255764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A006512 (n + 2)).toNat ^ 2 * A175744 (n + 1)

end

end A175747.P4094218217215255764

namespace A175747

/-- `A000034(A006512(n+2))²*A175744(n+1)` -/
def P4094218217215255764.Spec : Prop :=
  ∀ n, P4094218217215255764.a n = A175747 (n + 1)

end A175747

/-! ## A175747.P3225668497369454591

`A040002(A086781(n))*A175744(n+1)`
-/

namespace A175747.P3225668497369454591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 (A086781 n).toNat * A175744 (n + 1)

end

end A175747.P3225668497369454591

namespace A175747

/-- `A040002(A086781(n))*A175744(n+1)` -/
def P3225668497369454591.Spec : Prop :=
  ∀ n, P3225668497369454591.a n = A175747 (n + 1)

end A175747

/-! ## A175747.P15246863012168062529

`A040002(A166573(n+1))*A175744(n+1)`
-/

namespace A175747.P15246863012168062529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 (A166573 (n + 1)).toNat * A175744 (n + 1)

end

end A175747.P15246863012168062529

namespace A175747

/-- `A040002(A166573(n+1))*A175744(n+1)` -/
def P15246863012168062529.Spec : Prop :=
  ∀ n, P15246863012168062529.a n = A175747 (n + 1)

end A175747

/-! ## A175747.P6028394018957810483

`A040002(A000124(n))*A175744(n+1)`
-/

namespace A175747.P6028394018957810483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 (A000124 n).toNat * A175744 (n + 1)

end

end A175747.P6028394018957810483

namespace A175747

/-- `A040002(A000124(n))*A175744(n+1)` -/
def P6028394018957810483.Spec : Prop :=
  ∀ n, P6028394018957810483.a n = A175747 (n + 1)

end A175747

/-! ## A175747.P16243158207099933503

`A040002(A133263(n))*A175744(n+1)`
-/

namespace A175747.P16243158207099933503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 (A133263 n).toNat * A175744 (n + 1)

end

end A175747.P16243158207099933503

namespace A175747

/-- `A040002(A133263(n))*A175744(n+1)` -/
def P16243158207099933503.Spec : Prop :=
  ∀ n, P16243158207099933503.a n = A175747 (n + 1)

end A175747

/-! ## A175747.P3002423309396341167

`A174571(A328805(n+1))*A175744(n+1)`
-/

namespace A175747.P3002423309396341167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A328805 (n + 1)).toNat * A175744 (n + 1)

end

end A175747.P3002423309396341167

namespace A175747

/-- `A174571(A328805(n+1))*A175744(n+1)` -/
def P3002423309396341167.Spec : Prop :=
  ∀ n, P3002423309396341167.a n = A175747 (n + 1)

end A175747

/-! ## A175747.P6260180161320869191

`A040002(A025747(n))*A175744(n+1)`
-/

namespace A175747.P6260180161320869191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 (A025747 n).toNat * A175744 (n + 1)

end

end A175747.P6260180161320869191

namespace A175747

/-- `A040002(A025747(n))*A175744(n+1)` -/
def P6260180161320869191.Spec : Prop :=
  ∀ n, P6260180161320869191.a n = A175747 (n + 1)

end A175747

/-! ## A175747.P11153314204700799079

`A040002(A175746(n+1))*A175744(n+1)`
-/

namespace A175747.P11153314204700799079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 (A175746 (n + 1)).toNat * A175744 (n + 1)

end

end A175747.P11153314204700799079

namespace A175747

/-- `A040002(A175746(n+1))*A175744(n+1)` -/
def P11153314204700799079.Spec : Prop :=
  ∀ n, P11153314204700799079.a n = A175747 (n + 1)

end A175747

/-! ## A175747.P10857219117365608544

`A040002(A253025(n+1))*A175744(n+1)`
-/

namespace A175747.P10857219117365608544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 (A253025 (n + 1)).toNat * A175744 (n + 1)

end

end A175747.P10857219117365608544

namespace A175747

/-- `A040002(A253025(n+1))*A175744(n+1)` -/
def P10857219117365608544.Spec : Prop :=
  ∀ n, P10857219117365608544.a n = A175747 (n + 1)

end A175747

/-! ## A175747.P8802703081364038069

`A175744(n+1)*A181819(A082663(n+1))`
-/

namespace A175747.P8802703081364038069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175744 (n + 1) * A181819 (A082663 (n + 1)).toNat

end

end A175747.P8802703081364038069

namespace A175747

/-- `A175744(n+1)*A181819(A082663(n+1))` -/
def P8802703081364038069.Spec : Prop :=
  ∀ n, P8802703081364038069.a n = A175747 (n + 1)

end A175747

/-!
# A175748: Numbers with 39 divisors.

The programs for A175748, there is no canonical definition to state claims against.
-/

/-! ## A175748.P9787705190680354034

`A189987(n+1)²`
-/

namespace A175748.P9787705190680354034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189987 (n + 1) ^ 2

end

end A175748.P9787705190680354034

/-! ## A175748.P11194670670643089931

`A189987(2*(n+1)-(n+1))^2`
-/

namespace A175748.P11194670670643089931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189987 (2 * (n + 1) - (n + 1)) ^ 2

end

end A175748.P11194670670643089931

/-! ## A175748.P13628860505739563952

`record[A189987(A291769(n))²]`
-/

namespace A175748.P13628860505739563952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189987 (A291769 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175748.P13628860505739563952

/-! ## A175748.P5363334014014698251

`∩[A030632(n+1), A195089(n+1)]²`
-/

namespace A175748.P5363334014014698251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A175748.P5363334014014698251

/-! ## A175748.P4416410606373289492

`record[A189987(A291769(n))]*A189987(n+1)`
-/

namespace A175748.P4416410606373289492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189987 (A291769 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A189987 (n + 1)

end

end A175748.P4416410606373289492

/-! ## A175748.P11557530637547579508

`A189987(A000027(n+1))*A189987(n+1)`
-/

namespace A175748.P11557530637547579508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189987 (A000027 (n + 1)).toNat * A189987 (n + 1)

end

end A175748.P11557530637547579508

/-! ## A175748.P15352828452006137307

`A189987(A028310(n+1))*A189987(n+1)`
-/

namespace A175748.P15352828452006137307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189987 (A028310 (n + 1)).toNat * A189987 (n + 1)

end

end A175748.P15352828452006137307

/-! ## A175748.P2724734874129757637

`A189987(n+1)*A189987(A008619(2*n))`
-/

namespace A175748.P2724734874129757637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189987 (n + 1) * A189987 (A008619 (2 * n)).toNat

end

end A175748.P2724734874129757637

/-! ## A175748.P5585221596448145393

`A189987(n+1)*A189987((n+1)%A030630(n+1))`
-/

namespace A175748.P5585221596448145393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189987 (n + 1) * A189987 (Int.tmod (n + 1 : ℤ) (A030630 (n + 1))).toNat

end

end A175748.P5585221596448145393

/-! ## A175748.P6126598508171513487

`∩[A030632(n+1), A046308(n+1)]²`
-/

namespace A175748.P6126598508171513487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A175748.P6126598508171513487

/-! ## A175748.P4521942952884594401

`∩[A046308(n+1), A336596(n+1)]²`
-/

namespace A175748.P4521942952884594401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A175748.P4521942952884594401

/-! ## A175748.P8087696373016500357

`∩[A030632(n+1), A322448(n+1)]²`
-/

namespace A175748.P8087696373016500357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A175748.P8087696373016500357

/-! ## A175748.P2836388161018386703

`∩[A046308(n+1), A253388(n+1)]²`
-/

namespace A175748.P2836388161018386703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A175748.P2836388161018386703

/-! ## A175748.P7772398811519558602

`∩[A195089(n+1), A253388(n+1)]²`
-/

namespace A175748.P7772398811519558602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A175748.P7772398811519558602

/-! ## A175748.P5904218001082475526

`∩[A030632(n+1), A187039(n+1)]²`
-/

namespace A175748.P5904218001082475526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A175748.P5904218001082475526

/-! ## A175748.P16372322958848402

`∩[A030632(n+1), A374904(n+1)]²`
-/

namespace A175748.P16372322958848402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A175748.P16372322958848402

/-! ## A175748.P14333959370465786055

`∩[A030632(n+1), A366761(n+1)]²`
-/

namespace A175748.P14333959370465786055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A175748.P14333959370465786055

/-! ## A175748.P8176573766576971298

`∩[A030632(n+1), A382292(n+1)]²`
-/

namespace A175748.P8176573766576971298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A175748.P8176573766576971298

/-! ## A175748.P17324068163606311538

`∩[A030632(n+1), A374590(n+1)]²`
-/

namespace A175748.P17324068163606311538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A175748.P17324068163606311538

/-!
# A175749: Numbers with 40 divisors.

The programs for A175749, there is no canonical definition to state claims against.
-/

/-! ## A175749.P12958590448709286120

`A030127(A175742(n+1))`
-/

namespace A175749.P12958590448709286120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030127 (A175742 (n + 1)).toNat

end

end A175749.P12958590448709286120

/-!
# A175750: Numbers with 42 divisors.

The programs for A175750, there is no canonical definition to state claims against.
-/

/-! ## A175750.P2491424908001907230

`A179703(A193979(∑[n]))`
-/

namespace A175750.P2491424908001907230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179703 (A193979 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A175750.P2491424908001907230

/-! ## A175750.P9904443277779889309

`A179703(A062399(n)+1)`
-/

namespace A175750.P9904443277779889309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179703 (A062399 n + 1).toNat

end

end A175750.P9904443277779889309

/-! ## A175750.P8476675189588644791

`A179703(A351870(n)+1)`
-/

namespace A175750.P8476675189588644791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179703 (A351870 n + 1).toNat

end

end A175750.P8476675189588644791

/-! ## A175750.P13505885566866468392

`∩[A179703(n+1), A270308(n+1)]`
-/

namespace A175750.P13505885566866468392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175750.P13505885566866468392

/-! ## A175750.P8514749892534693382

`A179703(A032555(n+1))`
-/

namespace A175750.P8514749892534693382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179703 (A032555 (n + 1)).toNat

end

end A175750.P8514749892534693382

/-!
# A175751: Numbers with 44 divisors.

The programs for A175751, there is no canonical definition to state claims against.
-/

/-! ## A175751.P7684529882489448410

`A008598(∩[A137491(n+1), A008598(n)])`
-/

namespace A175751.P7684529882489448410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008598 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008598 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A175751.P7684529882489448410

/-! ## A175751.P6802564638253690873

`16*A137491(A187829(n+1))`
-/

namespace A175751.P6802564638253690873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A137491 (A187829 (n + 1)).toNat

end

end A175751.P6802564638253690873

/-! ## A175751.P12913004007218777767

`A008598(lcm(16, A137491(n+1)))`
-/

namespace A175751.P12913004007218777767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008598 (Int.lcm 16 (A137491 (n + 1)))

end

end A175751.P12913004007218777767

/-! ## A175751.P7628553151638396517

`A010149(A008888(n))*A137491(n+1)`
-/

namespace A175751.P7628553151638396517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010149 (A008888 n).toNat * A137491 (n + 1)

end

end A175751.P7628553151638396517

/-! ## A175751.P15704896900995968048

`A040056(A115916(n+1))*A137491(n+1)`
-/

namespace A175751.P15704896900995968048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040056 (A115916 (n + 1)).toNat * A137491 (n + 1)

end

end A175751.P15704896900995968048

/-!
# A175752: Numbers with 45 divisors.

The programs for A175752, there is no canonical definition to state claims against.
-/

/-! ## A175752.P2932109078454604380

`(eq[45, A000005((n+2)²)]+2)²`
-/

namespace A175752.P2932109078454604380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  45

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 2) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2) ^ 2

end

end A175752.P2932109078454604380

/-! ## A175752.P10229194379581103698

`A056583(A179746(n+1))`
-/

namespace A175752.P10229194379581103698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056583 (A179746 (n + 1)).toNat

end

end A175752.P10229194379581103698

/-!
# A175753: Numbers with 46 divisors.

The programs for A175753, the canonical program `A175753.P11510275057961638768` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175753 has offset 1).

The definition of A175753 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175753.P6463689023511212631

`A040056(A001359(n+1))*A175747(n+1)`
-/

namespace A175753.P6463689023511212631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040056 (A001359 (n + 1)).toNat * A175747 (n + 1)

end

end A175753.P6463689023511212631

namespace A175753

/-- `A040056(A001359(n+1))*A175747(n+1)` -/
def P6463689023511212631.Spec : Prop :=
  ∀ n, P6463689023511212631.a n = A175753 (n + 1)

end A175753

/-! ## A175753.P7169435983030769136

`A040056(A006512(n+1))*A175747(n+1)`
-/

namespace A175753.P7169435983030769136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040056 (A006512 (n + 1)).toNat * A175747 (n + 1)

end

end A175753.P7169435983030769136

namespace A175753

/-- `A040056(A006512(n+1))*A175747(n+1)` -/
def P7169435983030769136.Spec : Prop :=
  ∀ n, P7169435983030769136.a n = A175753 (n + 1)

end A175753

/-! ## A175753.P17981447524014035490

`A040056(A175742(n+1))*A175747(n+1)`
-/

namespace A175753.P17981447524014035490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040056 (A175742 (n + 1)).toNat * A175747 (n + 1)

end

end A175753.P17981447524014035490

namespace A175753

/-- `A040056(A175742(n+1))*A175747(n+1)` -/
def P17981447524014035490.Spec : Prop :=
  ∀ n, P17981447524014035490.a n = A175753 (n + 1)

end A175753

/-! ## A175753.P4824041856355654992

`A040056(A003366(n+1))*A175747(n+1)`
-/

namespace A175753.P4824041856355654992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040056 (A003366 (n + 1)).toNat * A175747 (n + 1)

end

end A175753.P4824041856355654992

namespace A175753

/-- `A040056(A003366(n+1))*A175747(n+1)` -/
def P4824041856355654992.Spec : Prop :=
  ∀ n, P4824041856355654992.a n = A175753 (n + 1)

end A175753

/-! ## A175753.P8417088551678386279

`A040056(A261580(3*n+1))*A175747(n+1)`
-/

namespace A175753.P8417088551678386279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040056 (A261580 (3 * n + 1)).toNat * A175747 (n + 1)

end

end A175753.P8417088551678386279

namespace A175753

/-- `A040056(A261580(3*n+1))*A175747(n+1)` -/
def P8417088551678386279.Spec : Prop :=
  ∀ n, P8417088551678386279.a n = A175753 (n + 1)

end A175753

/-! ## A175753.P2082298450769071152

`16*A040002(∑[A006530(2*n+1)])*A175744(n+1)`
-/

namespace A175753.P2082298450769071152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * (A040002 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A175744 (n + 1))

end

end A175753.P2082298450769071152

namespace A175753

/-- `16*A040002(∑[A006530(2*n+1)])*A175744(n+1)` -/
def P2082298450769071152.Spec : Prop :=
  ∀ n, P2082298450769071152.a n = A175753 (n + 1)

end A175753

/-! ## A175753.P10589791719211292409

`A040002(A197225(n+1))²*A175747(n+1)`
-/

namespace A175753.P10589791719211292409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 (A197225 (n + 1)).toNat ^ 2 * A175747 (n + 1)

end

end A175753.P10589791719211292409

namespace A175753

/-- `A040002(A197225(n+1))²*A175747(n+1)` -/
def P10589791719211292409.Spec : Prop :=
  ∀ n, P10589791719211292409.a n = A175753 (n + 1)

end A175753

/-! ## A175753.P6771492568195349784

`16*A040002(A308711(abs(1-n)+1))*A175744(n+1)`
-/

namespace A175753.P6771492568195349784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * (A040002 (A308711 (|1 - (n : ℤ)| + 1).toNat).toNat * A175744 (n + 1))

end

end A175753.P6771492568195349784

namespace A175753

/-- `16*A040002(A308711(abs(1-n)+1))*A175744(n+1)` -/
def P6771492568195349784.Spec : Prop :=
  ∀ n, P6771492568195349784.a n = A175753 (n + 1)

end A175753

/-! ## A175753.P3714321154674906949

`A040056(A308711(n+1))*A175747(n+1)`
-/

namespace A175753.P3714321154674906949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040056 (A308711 (n + 1)).toNat * A175747 (n + 1)

end

end A175753.P3714321154674906949

namespace A175753

/-- `A040056(A308711(n+1))*A175747(n+1)` -/
def P3714321154674906949.Spec : Prop :=
  ∀ n, P3714321154674906949.a n = A175753 (n + 1)

end A175753

/-! ## A175753.P11510275057961638768

`16*A048785(A006512(∏{p}[n, #]))*A175744(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A175753

/-- `16*A048785(A006512(∏{p}[n, #]))*A175744(n+1)` -/
def P11510275057961638768.Spec : Prop :=
  ∀ n, P11510275057961638768.a n = A175753 (n + 1)

theorem P11510275057961638768.correct : P11510275057961638768.Spec := by
  intro n
  simp only [A175753, Nat.add_sub_cancel]

end A175753

/-! ## A175753.P11703532118305125052

`16*A048785(A006512(abs(1-n)+1))*A175744(n+1)`
-/

namespace A175753.P11703532118305125052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * (A048785 (A006512 (|1 - (n : ℤ)| + 1).toNat).toNat * A175744 (n + 1))

end

end A175753.P11703532118305125052

namespace A175753

/-- `16*A048785(A006512(abs(1-n)+1))*A175744(n+1)` -/
def P11703532118305125052.Spec : Prop :=
  ∀ n, P11703532118305125052.a n = A175753 (n + 1)

end A175753

/-! ## A175753.P16891601372574955898

`A048785(A275021(n+1))²*A175747(n+1)`
-/

namespace A175753.P16891601372574955898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (A275021 (n + 1)).toNat ^ 2 * A175747 (n + 1)

end

end A175753.P16891601372574955898

namespace A175753

/-- `A048785(A275021(n+1))²*A175747(n+1)` -/
def P16891601372574955898.Spec : Prop :=
  ∀ n, P16891601372574955898.a n = A175753 (n + 1)

end A175753

/-! ## A175753.P11767906178816589748

`A040002(A086781(n))²*A175747(n+1)`
-/

namespace A175753.P11767906178816589748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 (A086781 n).toNat ^ 2 * A175747 (n + 1)

end

end A175753.P11767906178816589748

namespace A175753

/-- `A040002(A086781(n))²*A175747(n+1)` -/
def P11767906178816589748.Spec : Prop :=
  ∀ n, P11767906178816589748.a n = A175753 (n + 1)

end A175753

/-! ## A175753.P17157363868719970100

`A040056(A133263(n))*A175747(n+1)`
-/

namespace A175753.P17157363868719970100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040056 (A133263 n).toNat * A175747 (n + 1)

end

end A175753.P17157363868719970100

namespace A175753

/-- `A040056(A133263(n))*A175747(n+1)` -/
def P17157363868719970100.Spec : Prop :=
  ∀ n, P17157363868719970100.a n = A175753 (n + 1)

end A175753

/-! ## A175753.P9906684253192235075

`A040002(A000124(n))²*A175747(n+1)`
-/

namespace A175753.P9906684253192235075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 (A000124 n).toNat ^ 2 * A175747 (n + 1)

end

end A175753.P9906684253192235075

namespace A175753

/-- `A040002(A000124(n))²*A175747(n+1)` -/
def P9906684253192235075.Spec : Prop :=
  ∀ n, P9906684253192235075.a n = A175753 (n + 1)

end A175753

/-! ## A175753.P14696225592013486031

`A174571(A328805(n+1))²*A175747(n+1)`
-/

namespace A175753.P14696225592013486031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A328805 (n + 1)).toNat ^ 2 * A175747 (n + 1)

end

end A175753.P14696225592013486031

namespace A175753

/-- `A174571(A328805(n+1))²*A175747(n+1)` -/
def P14696225592013486031.Spec : Prop :=
  ∀ n, P14696225592013486031.a n = A175753 (n + 1)

end A175753

/-! ## A175753.P13479553128779255023

`16*A174571(A328805(n+1))*A175744(n+1)`
-/

namespace A175753.P13479553128779255023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * (A174571 (A328805 (n + 1)).toNat * A175744 (n + 1))

end

end A175753.P13479553128779255023

namespace A175753

/-- `16*A174571(A328805(n+1))*A175744(n+1)` -/
def P13479553128779255023.Spec : Prop :=
  ∀ n, P13479553128779255023.a n = A175753 (n + 1)

end A175753

/-! ## A175753.P1643171651814452882

`A040002(A025747(n))²*A175747(n+1)`
-/

namespace A175753.P1643171651814452882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 (A025747 n).toNat ^ 2 * A175747 (n + 1)

end

end A175753.P1643171651814452882

namespace A175753

/-- `A040002(A025747(n))²*A175747(n+1)` -/
def P1643171651814452882.Spec : Prop :=
  ∀ n, P1643171651814452882.a n = A175753 (n + 1)

end A175753

/-! ## A175753.P5496115268352836444

`16*A040002(A025747(n))*A175744(n+1)`
-/

namespace A175753.P5496115268352836444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * (A040002 (A025747 n).toNat * A175744 (n + 1))

end

end A175753.P5496115268352836444

namespace A175753

/-- `16*A040002(A025747(n))*A175744(n+1)` -/
def P5496115268352836444.Spec : Prop :=
  ∀ n, P5496115268352836444.a n = A175753 (n + 1)

end A175753

/-! ## A175753.P6472018715450682799

`A040002(A175746(n+1))²*A175747(n+1)`
-/

namespace A175753.P6472018715450682799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 (A175746 (n + 1)).toNat ^ 2 * A175747 (n + 1)

end

end A175753.P6472018715450682799

namespace A175753

/-- `A040002(A175746(n+1))²*A175747(n+1)` -/
def P6472018715450682799.Spec : Prop :=
  ∀ n, P6472018715450682799.a n = A175753 (n + 1)

end A175753

/-!
# A175754: Numbers with 48 divisors.

The programs for A175754, there is no canonical definition to state claims against.
-/

/-! ## A175754.P8578697402413338561

`A068547(A292125(n+1))`
-/

namespace A175754.P8578697402413338561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068547 (A292125 (n + 1)).toNat

end

end A175754.P8578697402413338561

/-! ## A175754.P10328596251446309170

`A258055(A000079(n))+A068547(n+1)`
-/

namespace A175754.P10328596251446309170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258055 (A000079 n).toNat + A068547 (n + 1)

end

end A175754.P10328596251446309170

/-!
# A175755: Numbers with 49 divisors.

The programs for A175755, there is no canonical definition to state claims against.
-/

/-! ## A175755.P15032035268109609467

`A074591(A085986(n+1))^3`
-/

namespace A175755.P15032035268109609467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074591 (A085986 (n + 1)).toNat ^ 3

end

end A175755.P15032035268109609467

/-! ## A175755.P5049227282576367543

`A309002(A006881(n+1))^3`
-/

namespace A175755.P5049227282576367543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309002 (A006881 (n + 1)).toNat ^ 3

end

end A175755.P5049227282576367543

/-! ## A175755.P8653965360653334729

`A105570(A006881(n+1)²)^3`
-/

namespace A175755.P8653965360653334729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A006881 (n + 1) ^ 2).toNat ^ 3

end

end A175755.P8653965360653334729

/-! ## A175755.P14615926053666727767

`A056926(A006881(n+1)²)^6`
-/

namespace A175755.P14615926053666727767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A006881 (n + 1) ^ 2).toNat ^ 6

end

end A175755.P14615926053666727767

/-! ## A175755.P12298961822525556104

`A336643(A006881(n+1)²)^6`
-/

namespace A175755.P12298961822525556104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (A006881 (n + 1) ^ 2).toNat ^ 6

end

end A175755.P12298961822525556104

/-! ## A175755.P2676305146568178935

`A006881(n+1)^A046645(A085986(n+1))`
-/

namespace A175755.P2676305146568178935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006881 (n + 1) : ℚ) ^ (A046645 (A085986 (n + 1)).toNat : ℤ)

end

end A175755.P2676305146568178935

/-! ## A175755.P10249384857988211280

`A162142(n+1)^A089233(A074172(n+1))`
-/

namespace A175755.P10249384857988211280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162142 (n + 1) : ℚ) ^ (A089233 (A074172 (n + 1)).toNat : ℤ)

end

end A175755.P10249384857988211280

/-! ## A175755.P5965902055347914589

`A006881(n+1)^A046645(A006881(n+1)²)`
-/

namespace A175755.P5965902055347914589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006881 (n + 1) : ℚ) ^ (A046645 (A006881 (n + 1) ^ 2).toNat : ℤ)

end

end A175755.P5965902055347914589

/-! ## A175755.P11830257984827068379

`A162142(n+1)^A020639(32*A028552(n+2))`
-/

namespace A175755.P11830257984827068379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162142 (n + 1) : ℚ) ^ (A020639 (32 * A028552 (n + 2)).toNat : ℤ)

end

end A175755.P11830257984827068379

/-!
# A175757: Triangular array read by rows: T(n,k) is the number of blocks of size k in all set partitions of {1,2,...,n}.

The programs for A175757, there is no canonical definition to state claims against.
-/

/-! ## A175757.P16284076699523786218

`A056857(comp[∑[n]]+1)`
-/

namespace A175757.P16284076699523786218
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056857 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A175757.P16284076699523786218

/-! ## A175757.P18144489435154297452

`A056860(A099375(n)+1+n)`
-/

namespace A175757.P18144489435154297452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056860 (A099375 n + 1 + (n : ℤ)).toNat

end

end A175757.P18144489435154297452

/-! ## A175757.P13328224786534224350

`A056860(2*A004736(n+1)+n)`
-/

namespace A175757.P13328224786534224350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056860 (2 * A004736 (n + 1) + (n : ℤ)).toNat

end

end A175757.P13328224786534224350

/-! ## A175757.P17862929559354128471

`A056860(2*A127739(n+1)-n)`
-/

namespace A175757.P17862929559354128471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056860 (2 * A127739 (n + 1) - (n : ℤ)).toNat

end

end A175757.P17862929559354128471

/-! ## A175757.P17372785027059639968

`A000110(A025581(n))*A135278(n)`
-/

namespace A175757.P17372785027059639968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A025581 n).toNat * A135278 n

end

end A175757.P17372785027059639968

/-! ## A175757.P1729999841072479279

`A000110(log2(A130321(n)))*A074909(n+1)`
-/

namespace A175757.P1729999841072479279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))).toNat * A074909 (n + 1)

end

end A175757.P1729999841072479279

/-! ## A175757.P17389827560060540761

`A056857(A014132(n+1)+1)+A000007(n+1)`
-/

namespace A175757.P17389827560060540761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056857 (A014132 (n + 1) + 1).toNat + A000007 (n + 1)

end

end A175757.P17389827560060540761

/-! ## A175757.P10468879109102777503

`A056860(A004736(n+1)+A004736(n+1)+n)`
-/

namespace A175757.P10468879109102777503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056860 (A004736 (n + 1) + (A004736 (n + 1) + (n : ℤ))).toNat

end

end A175757.P10468879109102777503

/-! ## A175757.P10417095814506495358

`A056860(A127739(n+1)+A127739(n+1)-n)`
-/

namespace A175757.P10417095814506495358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056860 (A127739 (n + 1) + (A127739 (n + 1) - (n : ℤ))).toNat

end

end A175757.P10417095814506495358

/-! ## A175757.P6081167471801689940

`A074909(n+1)*A104725(A130321(n))`
-/

namespace A175757.P6081167471801689940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) * A104725 (A130321 n).toNat

end

end A175757.P6081167471801689940

/-!
# A175758: Numbers n with property that arithmetic mean of its digits is both an integer and one of the prime factors of n.

The programs for A175758, there is no canonical definition to state claims against.
-/

/-! ## A175758.P7663162093771771402

`eq[A165091(n+4), A321407(A103497(n))]`
-/

namespace A175758.P7663162093771771402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165091 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321407 (A103497 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175758.P7663162093771771402

/-! ## A175758.P2434177025272359149

`A068773(2*n+3)-A001222(A108080(n))`
-/

namespace A175758.P2434177025272359149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068773 (2 * n + 3) - A001222 (A108080 n).toNat

end

end A175758.P2434177025272359149

/-!
# A175759: Numbers n such that bigomega( n+bigomega(n) ) = bigomega(n), where bigomega = A001222.

The programs for A175759, there is no canonical definition to state claims against.
-/

/-! ## A175759.P13673773928434183614

`eq[A001222(A001222(n+1)+n+1), A001222(n+1)]+1`
-/

namespace A175759.P13673773928434183614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001222 (n + 1) + (n + 1 : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A175759.P13673773928434183614

/-!
# A175760: Numbers n such that d(n + d(n)) = d(n), where d(n) is the sum of the distinct primes dividing n.

The programs for A175760, there is no canonical definition to state claims against.
-/

/-! ## A175760.P127862604151555390

`A384500(A055707(n+1))`
-/

namespace A175760.P127862604151555390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384500 (A055707 (n + 1)).toNat

end

end A175760.P127862604151555390

/-!
# A175761: Odd nonprimes such that the arithmetic mean of all prime factors is not an integer.

The programs for A175761, there is no canonical definition to state claims against.
-/

/-! ## A175761.P14922200933841807513

`∩[2*n+1, A175352(n+1)]`
-/

namespace A175761.P14922200933841807513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175761.P14922200933841807513

/-! ## A175761.P598670977538685193

`∩[A175352(n+1), A004273(n)]`
-/

namespace A175761.P598670977538685193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175761.P598670977538685193

/-! ## A175761.P16132125891594346133

`∩[A175352(n+1), A004274(n)]`
-/

namespace A175761.P16132125891594346133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175761.P16132125891594346133

/-! ## A175761.P3597842381886247549

`∩[A175352(n+1), A004276(n)]`
-/

namespace A175761.P3597842381886247549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175761.P3597842381886247549

/-! ## A175761.P976486608075578315

`∩[A175352(n+1), A004281(n)]`
-/

namespace A175761.P976486608075578315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175761.P976486608075578315

/-! ## A175761.P16255789219778459334

`∩[A175352(n+1), A060747(n)]`
-/

namespace A175761.P16255789219778459334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175761.P16255789219778459334

/-! ## A175761.P1429461752750543435

`∩[A175352(n+1), A163985(n)]`
-/

namespace A175761.P1429461752750543435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175761.P1429461752750543435

/-! ## A175761.P16666967299937808391

`∩[A175352(n+1), A223134(n)]`
-/

namespace A175761.P16666967299937808391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175761.P16666967299937808391

/-! ## A175761.P2066855475379944065

`∩[A175352(n+1), A176847(n+1)]`
-/

namespace A175761.P2066855475379944065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175761.P2066855475379944065

/-! ## A175761.P9755411072687101515

`∩[A175352(n+1), A193071(n+1)]`
-/

namespace A175761.P9755411072687101515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175761.P9755411072687101515

/-! ## A175761.P3230975170707760436

`∩[A175352(n+1), A255763(n+1)]`
-/

namespace A175761.P3230975170707760436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175761.P3230975170707760436

/-!
# A175762: Primes with an arithmetic mean of digits which is also prime.

The programs for A175762, there is no canonical definition to state claims against.
-/

/-! ## A175762.P7932145484294765392

`p?[∑[gcd(4, A323361(n+1))]]`
-/

namespace A175762.P7932145484294765392
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A323361 (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A175762.P7932145484294765392

/-! ## A175762.P5665803798834777330

`p?[A110029(∑[A079487(n)])]`
-/

namespace A175762.P5665803798834777330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110029 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175762.P5665803798834777330

/-! ## A175762.P16411801655728199350

`p?[∑[A294894(A008279(n))]]`
-/

namespace A175762.P16411801655728199350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294894 (A008279 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175762.P16411801655728199350

/-! ## A175762.P1883904014057708392

`p?[∑[A283325(A054252(n))]]`
-/

namespace A175762.P1883904014057708392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283325 (A054252 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175762.P1883904014057708392

/-! ## A175762.P5432123468920140977

`p?[∑[A198194(A174116(n))]]`
-/

namespace A175762.P5432123468920140977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198194 (A174116 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175762.P5432123468920140977

/-!
# A175765: Pairs (t,t+8) of 3-almost primes t separated by 8.

The programs for A175765, there is no canonical definition to state claims against.
-/

/-! ## A175765.P11021617461414856941

`A096604(A175612(n+1))-2`
-/

namespace A175765.P11021617461414856941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096604 (A175612 (n + 1)).toNat - 2

end

end A175765.P11021617461414856941

/-! ## A175765.P9942975330047696897

`A001316(2^n)*A175612(n+1)`
-/

namespace A175765.P9942975330047696897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (2 ^ n) * A175612 (n + 1)

end

end A175765.P9942975330047696897

/-! ## A175765.P17585791547653342006

`A003958(A007283(n))*A175612(n+1)`
-/

namespace A175765.P17585791547653342006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A007283 n).toNat * A175612 (n + 1)

end

end A175765.P17585791547653342006

/-! ## A175765.P1952511061706864942

`A007978(A286831(n))*A175612(n+1)`
-/

namespace A175765.P1952511061706864942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (A286831 n).toNat * A175612 (n + 1)

end

end A175765.P1952511061706864942

/-! ## A175765.P14068788425959265668

`A007978(A006203(n+1))*A175612(n+1)`
-/

namespace A175765.P14068788425959265668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (A006203 (n + 1)).toNat * A175612 (n + 1)

end

end A175765.P14068788425959265668

/-!
# A175766: Greater of "twin numbers": Omega(n) = Omega(n - 2^Omega(n)), where Omega is A001222.

The programs for A175766, there is no canonical definition to state claims against.
-/

/-! ## A175766.P12063921382709171494

`A175767(2*n+1)+A061142(A175767(2*n+1))`
-/

namespace A175766.P12063921382709171494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175767 (2 * n + 1) + A061142 (A175767 (2 * n + 1)).toNat

end

end A175766.P12063921382709171494

/-! ## A175766.P1561787576207700721

`A175767(2*(n+1))`
-/

namespace A175766.P1561787576207700721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175767 (2 * (n + 1))

end

end A175766.P1561787576207700721

/-! ## A175766.P12722859614746817523

`record[A175767(xor(1, n)+1)]`
-/

namespace A175766.P12722859614746817523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175767 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175766.P12722859614746817523

/-! ## A175766.P18357143868350741898

`record[A175767(n^(n%2)+1)]`
-/

namespace A175766.P18357143868350741898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175767 (n ^ (n % 2) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175766.P18357143868350741898

/-! ## A175766.P10334370614845898185

`record[A175767(n+2)/(-1)^n]`
-/

namespace A175766.P10334370614845898185
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175767 (n + 2) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175766.P10334370614845898185

/-!
# A175768: Primes of the form k * b^b + 1, with b > 1.

The programs for A175768, the canonical program `A175768.P8239218232139053030` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175768 has offset 1).

The definition of A175768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3445 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175768.P8239218232139053030

`p?[(n+2)*A342023(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A175768

/-- `p?[(n+2)*A342023(n+1)]` -/
def P8239218232139053030.Spec : Prop :=
  ∀ n, P8239218232139053030.a n = A175768 (n + 1)

theorem P8239218232139053030.correct : P8239218232139053030.Spec := by
  intro n
  simp only [A175768, Nat.add_sub_cancel]

end A175768

/-! ## A175768.P2593559872038196671

`p?[comp[A327939(n+1)+n+1]]`
-/

namespace A175768.P2593559872038196671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327939 (n + 1) + (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A175768.P2593559872038196671

namespace A175768

/-- `p?[comp[A327939(n+1)+n+1]]` -/
def P2593559872038196671.Spec : Prop :=
  ∀ n, (P2593559872038196671.a n : ℤ) = A175768 (n + 1)

end A175768

/-! ## A175768.P10491824177734150830

`p?[A100716(n+1)+1]`
-/

namespace A175768.P10491824177734150830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100716 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175768.P10491824177734150830

namespace A175768

/-- `p?[A100716(n+1)+1]` -/
def P10491824177734150830.Spec : Prop :=
  ∀ n, P10491824177734150830.a n = A175768 (n + 1)

end A175768

/-! ## A175768.P7836980212021786641

`p?[lt[1, A327939(n+1)]+2]`
-/

namespace A175768.P7836980212021786641
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327939 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A175768.P7836980212021786641

namespace A175768

/-- `p?[lt[1, A327939(n+1)]+2]` -/
def P7836980212021786641.Spec : Prop :=
  ∀ n, (P7836980212021786641.a n : ℤ) = A175768 (n + 1)

end A175768

/-! ## A175768.P17823542983081206549

`record[A020639(A100716(n+1)+1)]`
-/

namespace A175768.P17823542983081206549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A100716 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175768.P17823542983081206549

namespace A175768

/-- `record[A020639(A100716(n+1)+1)]` -/
def P17823542983081206549.Spec : Prop :=
  ∀ n, P17823542983081206549.a n = A175768 (n + 1)

end A175768

/-! ## A175768.P10259656403594243045

`∩[A066191(n+1), A100716(n+1)+1]`
-/

namespace A175768.P10259656403594243045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100716 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175768.P10259656403594243045

namespace A175768

/-- `∩[A066191(n+1), A100716(n+1)+1]` -/
def P10259656403594243045.Spec : Prop :=
  ∀ n, (P10259656403594243045.a n : ℤ) = A175768 (n + 1)

end A175768

/-! ## A175768.P8750260891344110570

`p?[lt[A327937(n+1), n]+2]`
-/

namespace A175768.P8750260891344110570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327937 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A175768.P8750260891344110570

namespace A175768

/-- `p?[lt[A327937(n+1), n]+2]` -/
def P8750260891344110570.Spec : Prop :=
  ∀ n, (P8750260891344110570.a n : ℤ) = A175768 (n + 1)

end A175768

/-! ## A175768.P13913630505179832351

`p?[lt[A327938(n+1), n]+2]`
-/

namespace A175768.P13913630505179832351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327938 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A175768.P13913630505179832351

namespace A175768

/-- `p?[lt[A327938(n+1), n]+2]` -/
def P13913630505179832351.Spec : Prop :=
  ∀ n, (P13913630505179832351.a n : ℤ) = A175768 (n + 1)

end A175768

/-! ## A175768.P5870391883362221744

`record[A006530(lt[A327937(n+1), n]+2)]`
-/

namespace A175768.P5870391883362221744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327937 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175768.P5870391883362221744

namespace A175768

/-- `record[A006530(lt[A327937(n+1), n]+2)]` -/
def P5870391883362221744.Spec : Prop :=
  ∀ n, P5870391883362221744.a n = A175768 (n + 1)

end A175768

/-! ## A175768.P17398858376312654751

`record[A020639(lt[A327937(n+1), n]+2)]`
-/

namespace A175768.P17398858376312654751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327937 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175768.P17398858376312654751

namespace A175768

/-- `record[A020639(lt[A327937(n+1), n]+2)]` -/
def P17398858376312654751.Spec : Prop :=
  ∀ n, P17398858376312654751.a n = A175768 (n + 1)

end A175768

/-! ## A175768.P5097498837574422068

`p?[n*A129251(xor(2, n)+1)]`
-/

namespace A175768.P5097498837574422068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A129251 (Nat.xor 2 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175768.P5097498837574422068

namespace A175768

/-- `p?[n*A129251(xor(2, n)+1)]` -/
def P5097498837574422068.Spec : Prop :=
  ∀ n, P5097498837574422068.a n = A175768 (n + 1)

end A175768

/-! ## A175768.P1064813174209370235

`record[A014963(A100716(n+1)+1)]`
-/

namespace A175768.P1064813174209370235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A100716 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175768.P1064813174209370235

namespace A175768

/-- `record[A014963(A100716(n+1)+1)]` -/
def P1064813174209370235.Spec : Prop :=
  ∀ n, P1064813174209370235.a n = A175768 (n + 1)

end A175768

/-! ## A175768.P2551938928520267329

`record[A014963(lt[A327937(n+1), n]+2)]`
-/

namespace A175768.P2551938928520267329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327937 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175768.P2551938928520267329

namespace A175768

/-- `record[A014963(lt[A327937(n+1), n]+2)]` -/
def P2551938928520267329.Spec : Prop :=
  ∀ n, P2551938928520267329.a n = A175768 (n + 1)

end A175768

/-!
# A175770: In the sequence of prime numbers, replace all the '3' digits with '1' and vice versa.

The programs for A175770, there is no canonical definition to state claims against.
-/

/-! ## A175770.P10670196151962159660

`A222220(Δ[A007504(n)])`
-/

namespace A175770.P10670196151962159660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 (f1 (n + 1) - f1 n).toNat

end

end A175770.P10670196151962159660

/-! ## A175770.P6736599540834727518

`A222220(record[A051698(n)])`
-/

namespace A175770.P6736599540834727518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A175770.P6736599540834727518

/-! ## A175770.P14265772914444106496

`A222220(A000040(n+1))`
-/

namespace A175770.P14265772914444106496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 (A000040 (n + 1)).toNat

end

end A175770.P14265772914444106496

/-! ## A175770.P5105514768213635777

`A222220(A008578(n+2))`
-/

namespace A175770.P5105514768213635777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 (A008578 (n + 2)).toNat

end

end A175770.P5105514768213635777

/-! ## A175770.P7085583645528847182

`A222220(A182986(n+2))`
-/

namespace A175770.P7085583645528847182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 (A182986 (n + 2)).toNat

end

end A175770.P7085583645528847182

/-! ## A175770.P10308326182715040101

`A222220(lt[n, A282462(n)])`
-/

namespace A175770.P10308326182715040101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A175770.P10308326182715040101

/-! ## A175770.P11566915380424452408

`A222220(∑[A054541(n+1)])`
-/

namespace A175770.P11566915380424452408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A175770.P11566915380424452408

/-! ## A175770.P5788955515479432502

`A222220(record[A039649(n+1)])`
-/

namespace A175770.P5788955515479432502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A175770.P5788955515479432502

/-! ## A175770.P13926629620712223743

`A222220(record[A111089(n+1)])`
-/

namespace A175770.P13926629620712223743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A175770.P13926629620712223743

/-! ## A175770.P5152354466921490440

`A222220(record[A006530(n+2)])`
-/

namespace A175770.P5152354466921490440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A175770.P5152354466921490440

/-! ## A175770.P15505111232581324247

`A222220(record[A014963(n+2)])`
-/

namespace A175770.P15505111232581324247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A175770.P15505111232581324247

/-! ## A175770.P5244347701696079866

`A222220(record[A020639(n+2)])`
-/

namespace A175770.P5244347701696079866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A175770.P5244347701696079866

/-! ## A175770.P1330359537780851375

`A222220(A006093(n+1)+1)`
-/

namespace A175770.P1330359537780851375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 (A006093 (n + 1) + 1).toNat

end

end A175770.P1330359537780851375

/-! ## A175770.P1264664939742677100

`A035044(A035043(A171018(n+1)))`
-/

namespace A175770.P1264664939742677100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 (A035043 (A171018 (n + 1)).toNat).toNat

end

end A175770.P1264664939742677100

/-! ## A175770.P4479481610365926119

`A222254(A222220(A171057(n+1)))`
-/

namespace A175770.P4479481610365926119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222220 (A171057 (n + 1)).toNat).toNat

end

end A175770.P4479481610365926119

/-! ## A175770.P4640227784947139373

`A222220(A007504(n+1)-A007504(n))`
-/

namespace A175770.P4640227784947139373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 (A007504 (n + 1) - A007504 n).toNat

end

end A175770.P4640227784947139373

/-!
# A175772: Expansion of 1/(1 - x - x^9 - x^17 + x^18).

The programs for A175772, there is no canonical definition to state claims against.
-/

/-! ## A175772.P18076559073247777350

`A175740(n+2)-A185119(A120803(n+1))`
-/

namespace A175772.P18076559073247777350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175740 (n + 2) - A185119 (A120803 (n + 1)).toNat

end

end A175772.P18076559073247777350

/-!
# A175773: Expansion of 1/(1 - x - x^6 - x^11 + x^12).

The programs for A175773, there is no canonical definition to state claims against.
-/

/-! ## A175773.P3852124232424649223

`∑[A003056(A033183(A000045(n)))]`
-/

namespace A175773.P3852124232424649223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A033183 (A000045 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175773.P3852124232424649223

/-! ## A175773.P16974510571226055681

`A105224(A322801(2*n+3)+A309676(n))`
-/

namespace A175773.P16974510571226055681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A322801 (2 * n + 3) + A309676 n).toNat

end

end A175773.P16974510571226055681

/-!
# A175774: a(n) = 7*(10^n-5).

The programs for A175774, the canonical program `A175774.P6773370170303990518` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175774 has offset 1).

The definition of A175774 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175774.P6773370170303990518

`10*a(n-1)+315` with `a(0)=35`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A175774

/-- `10*a(n-1)+315` -/
def P6773370170303990518.Spec : Prop :=
  ∀ n, (P6773370170303990518.a n : ℤ) = A175774 (n + 1)

theorem P6773370170303990518.correct : P6773370170303990518.Spec := by
  intro n
  simp only [A175774, Nat.add_sub_cancel]

end A175774

/-! ## A175774.P8518343047203695448

`7*(10^(n+1)-5)`
-/

namespace A175774.P8518343047203695448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * ((10 ^ (n + 1) : ℤ) - 5)

end

end A175774.P8518343047203695448

namespace A175774

/-- `7*(10^(n+1)-5)` -/
def P8518343047203695448.Spec : Prop :=
  ∀ n, P8518343047203695448.a n = A175774 (n + 1)

end A175774

/-! ## A175774.P15383675504135040058

`A175775(n+1)-14`
-/

namespace A175774.P15383675504135040058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175775 (n + 1) - 14

end

end A175774.P15383675504135040058

namespace A175774

/-- `A175775(n+1)-14` -/
def P15383675504135040058.Spec : Prop :=
  ∀ n, P15383675504135040058.a n = A175774 (n + 1)

end A175774

/-! ## A175774.P2551909170324635191

`A175601(n+1)+28`
-/

namespace A175774.P2551909170324635191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175601 (n + 1) + 28

end

end A175774.P2551909170324635191

namespace A175774

/-- `A175601(n+1)+28` -/
def P2551909170324635191.Spec : Prop :=
  ∀ n, P2551909170324635191.a n = A175774 (n + 1)

end A175774

/-! ## A175774.P8370174424204648635

`A086578(n+1)-28`
-/

namespace A175774.P8370174424204648635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086578 (n + 1) - 28

end

end A175774.P8370174424204648635

namespace A175774

/-- `A086578(n+1)-28` -/
def P8370174424204648635.Spec : Prop :=
  ∀ n, P8370174424204648635.a n = A175774 (n + 1)

end A175774

/-! ## A175774.P6772381990720902710

`35*A086573(n)+35`
-/

namespace A175774.P6772381990720902710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  35 * A086573 n + 35

end

end A175774.P6772381990720902710

namespace A175774

/-- `35*A086573(n)+35` -/
def P6772381990720902710.Spec : Prop :=
  ∀ n, P6772381990720902710.a n = A175774 (n + 1)

end A175774

/-! ## A175774.P11571470500884572030

`Δ[A002281(n+1)]-35`
-/

namespace A175774.P11571470500884572030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002281 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 35

end

end A175774.P11571470500884572030

namespace A175774

/-- `Δ[A002281(n+1)]-35` -/
def P11571470500884572030.Spec : Prop :=
  ∀ n, P11571470500884572030.a n = A175774 (n + 1)

end A175774

/-! ## A175774.P12812348795604381012

`abs(7*(A173833(n+1)-2))`
-/

namespace A175774.P12812348795604381012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |7 * (A173833 (n + 1) - 2)|

end

end A175774.P12812348795604381012

namespace A175774

/-- `abs(7*(A173833(n+1)-2))` -/
def P12812348795604381012.Spec : Prop :=
  ∀ n, P12812348795604381012.a n = A175774 (n + 1)

end A175774

/-! ## A175774.P11808170341035547282

`A177109(n+1)+A177074(n+1)`
-/

namespace A175774.P11808170341035547282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177109 (n + 1) + A177074 (n + 1)

end

end A175774.P11808170341035547282

namespace A175774

/-- `A177109(n+1)+A177074(n+1)` -/
def P11808170341035547282.Spec : Prop :=
  ∀ n, P11808170341035547282.a n = A175774 (n + 1)

end A175774

/-! ## A175774.P12779368948314241327

`A177097(n+1)+A124167(n)+5`
-/

namespace A175774.P12779368948314241327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177097 (n + 1) + (A124167 n + 5)

end

end A175774.P12779368948314241327

namespace A175774

/-- `A177097(n+1)+A124167(n)+5` -/
def P12779368948314241327.Spec : Prop :=
  ∀ n, P12779368948314241327.a n = A175774 (n + 1)

end A175774

/-!
# A175775: a(n) = 7*(10^n-3).

The programs for A175775, the canonical program `A175775.P16440432393240206062` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175775 has offset 1).

The definition of A175775 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175775.P16440432393240206062

`11*a(n-1)-10*a(n-2)` with `a(0)=49, a(1)=679`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A175775

/-- `11*a(n-1)-10*a(n-2)` -/
def P16440432393240206062.Spec : Prop :=
  ∀ n, P16440432393240206062.a n = A175775 (n + 1)

theorem P16440432393240206062.correct : P16440432393240206062.Spec := by
  intro n
  simp only [A175775, Nat.add_sub_cancel]

end A175775

/-! ## A175775.P4353567033665824384

`70*10^n-21`
-/

namespace A175775.P4353567033665824384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (70 * 10 ^ n : ℤ) - 21

end

end A175775.P4353567033665824384

namespace A175775

/-- `70*10^n-21` -/
def P4353567033665824384.Spec : Prop :=
  ∀ n, P4353567033665824384.a n = A175775 (n + 1)

end A175775

/-! ## A175775.P4559948126274569147

`7*A173833(n+1)`
-/

namespace A175775.P4559948126274569147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A173833 (n + 1)

end

end A175775.P4559948126274569147

namespace A175775

/-- `7*A173833(n+1)` -/
def P4559948126274569147.Spec : Prop :=
  ∀ n, P4559948126274569147.a n = A175775 (n + 1)

end A175775

/-! ## A175775.P14559051631404653054

`7*(A133384(n)-5)`
-/

namespace A175775.P14559051631404653054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (A133384 n - 5)

end

end A175775.P14559051631404653054

namespace A175775

/-- `7*(A133384(n)-5)` -/
def P14559051631404653054.Spec : Prop :=
  ∀ n, P14559051631404653054.a n = A175775 (n + 1)

end A175775

/-! ## A175775.P3879633038706664934

`7*(A011557(n+1)-3)`
-/

namespace A175775.P3879633038706664934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (A011557 (n + 1) - 3)

end

end A175775.P3879633038706664934

namespace A175775

/-- `7*(A011557(n+1)-3)` -/
def P3879633038706664934.Spec : Prop :=
  ∀ n, P3879633038706664934.a n = A175775 (n + 1)

end A175775

/-!
# A175776: Partial sums of floor(n^2/15).

The programs for A175776, the canonical program `A175776.P16282107014062764913` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175776 has offset 0).

The definition of A175776 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175776.P16282107014062764913

`round((2*n+1)*(n²+n-14)/90)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A175776

/-- `round((2*n+1)*(n²+n-14)/90)` -/
def P16282107014062764913.Spec : Prop :=
  ∀ n, P16282107014062764913.a n = A175776 n

theorem P16282107014062764913.correct : P16282107014062764913.Spec := by
  intro n
  simp only [A175776]

end A175776

/-! ## A175776.P13427335887380866920

`a(n-1)+floor(n²/15)` with `a(0)=0`
-/

namespace A175776.P13427335887380866920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ⌊(n ^ 2 : ℚ) / 15⌋

end

end A175776.P13427335887380866920

namespace A175776

/-- `a(n-1)+floor(n²/15)` -/
def P13427335887380866920.Spec : Prop :=
  ∀ n, P13427335887380866920.a n = A175776 n

end A175776

/-! ## A175776.P13251933988308052761

`∑[floor(A036404(n)/3)]`
-/

namespace A175776.P13251933988308052761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036404 n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175776.P13251933988308052761

namespace A175776

/-- `∑[floor(A036404(n)/3)]` -/
def P13251933988308052761.Spec : Prop :=
  ∀ n, P13251933988308052761.a n = A175776 n

end A175776

/-! ## A175776.P2325066944154401812

`∑[floor(A000290(n)/15)]`
-/

namespace A175776.P2325066944154401812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000290 n : ℚ) / 15⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175776.P2325066944154401812

namespace A175776

/-- `∑[floor(A000290(n)/15)]` -/
def P2325066944154401812.Spec : Prop :=
  ∀ n, P2325066944154401812.a n = A175776 n

end A175776

/-! ## A175776.P14022725182050317871

`∑[floor(floor((A117950(n)+1)/5)/3)]`
-/

namespace A175776.P14022725182050317871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(A117950 n + 1 : ℚ) / 5⌋ : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175776.P14022725182050317871

namespace A175776

/-- `∑[floor(floor((A117950(n)+1)/5)/3)]` -/
def P14022725182050317871.Spec : Prop :=
  ∀ n, P14022725182050317871.a n = A175776 n

end A175776

/-! ## A175776.P1855589275833994538

`∑[2*A057354(A056829(n))]/2`
-/

namespace A175776.P1855589275833994538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057354 (A056829 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A175776.P1855589275833994538

namespace A175776

/-- `∑[2*A057354(A056829(n))]/2` -/
def P1855589275833994538.Spec : Prop :=
  ∀ n, P1855589275833994538.a n = (A175776 n : ℚ)

end A175776

/-! ## A175776.P14134754514400845851

`∑[A057354(A056829(n))]*A054977(n)`
-/

namespace A175776.P14134754514400845851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A056829 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A054977 n

end

end A175776.P14134754514400845851

namespace A175776

/-- `∑[A057354(A056829(n))]*A054977(n)` -/
def P14134754514400845851.Spec : Prop :=
  ∀ n, P14134754514400845851.a n = A175776 n

end A175776

/-! ## A175776.P2538806389861785523

`∑[A057354(A056829(n))]*A057427(n)`
-/

namespace A175776.P2538806389861785523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A056829 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057427 n

end

end A175776.P2538806389861785523

namespace A175776

/-- `∑[A057354(A056829(n))]*A057427(n)` -/
def P2538806389861785523.Spec : Prop :=
  ∀ n, P2538806389861785523.a n = A175776 n

end A175776

/-! ## A175776.P15200537715136866017

`∑[A057354(A056829(n))]%A000041(n)`
-/

namespace A175776.P15200537715136866017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A056829 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000041 n)

end

end A175776.P15200537715136866017

namespace A175776

/-- `∑[A057354(A056829(n))]%A000041(n)` -/
def P15200537715136866017.Spec : Prop :=
  ∀ n, P15200537715136866017.a n = A175776 n

end A175776

/-! ## A175776.P7596027980388331758

`∑[A057354(A056829(n))]+A008683(4*(n+1))`
-/

namespace A175776.P7596027980388331758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A056829 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A008683 (4 * (n + 1))

end

end A175776.P7596027980388331758

namespace A175776

/-- `∑[A057354(A056829(n))]+A008683(4*(n+1))` -/
def P7596027980388331758.Spec : Prop :=
  ∀ n, P7596027980388331758.a n = A175776 n

end A175776

/-! ## A175776.P11623684640726963659

`∑[A002264(A118015(n))]%C(n+8, 8)`
-/

namespace A175776.P11623684640726963659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A118015 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (Nat.choose (n + 8) 8 : ℤ)

end

end A175776.P11623684640726963659

namespace A175776

/-- `∑[A002264(A118015(n))]%C(n+8, 8)` -/
def P11623684640726963659.Spec : Prop :=
  ∀ n, P11623684640726963659.a n = A175776 n

end A175776

/-! ## A175776.P15632639938895782103

`∑[A002264(A118015(n))]*A057427(n)`
-/

namespace A175776.P15632639938895782103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A118015 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057427 n

end

end A175776.P15632639938895782103

namespace A175776

/-- `∑[A002264(A118015(n))]*A057427(n)` -/
def P15632639938895782103.Spec : Prop :=
  ∀ n, P15632639938895782103.a n = A175776 n

end A175776

/-! ## A175776.P779086213552267592

`∑[A002264(A118015(n))]%A001523(n)`
-/

namespace A175776.P779086213552267592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A118015 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A001523 n)

end

end A175776.P779086213552267592

namespace A175776

/-- `∑[A002264(A118015(n))]%A001523(n)` -/
def P779086213552267592.Spec : Prop :=
  ∀ n, P779086213552267592.a n = A175776 n

end A175776

/-! ## A175776.P15298337814113191090

`∑[A002266(A000212(n))]*A057427(n)`
-/

namespace A175776.P15298337814113191090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A000212 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057427 n

end

end A175776.P15298337814113191090

namespace A175776

/-- `∑[A002266(A000212(n))]*A057427(n)` -/
def P15298337814113191090.Spec : Prop :=
  ∀ n, P15298337814113191090.a n = A175776 n

end A175776

/-! ## A175776.P5479446292326486311

`∑[A002266(A000212(n))]%A056362(n)`
-/

namespace A175776.P5479446292326486311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A000212 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A056362 n)

end

end A175776.P5479446292326486311

namespace A175776

/-- `∑[A002266(A000212(n))]%A056362(n)` -/
def P5479446292326486311.Spec : Prop :=
  ∀ n, P5479446292326486311.a n = A175776 n

end A175776

/-!
# A175777: Partial sums of floor(n^2/16).

The programs for A175777, the canonical program `A175777.P8631107561654120076` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175777 has offset 0).

The definition of A175777 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175777.P8631107561654120076

`round(n*(n+4)*(2*n-5)/96)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A175777

/-- `round(n*(n+4)*(2*n-5)/96)` -/
def P8631107561654120076.Spec : Prop :=
  ∀ n, P8631107561654120076.a n = A175777 n

theorem P8631107561654120076.correct : P8631107561654120076.Spec := by
  intro n
  simp only [A175777]

end A175777

/-! ## A175777.P16747604824310550203

`floor(a(n-1)+(n/4)²)` with `a(0)=0`
-/

namespace A175777.P16747604824310550203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + ((n : ℚ) / 4) ^ 2⌋

end

end A175777.P16747604824310550203

namespace A175777

/-- `floor(a(n-1)+(n/4)²)` -/
def P16747604824310550203.Spec : Prop :=
  ∀ n, P16747604824310550203.a n = A175777 n

end A175777

/-! ## A175777.P13813879539606853792

`∑[and(-2, A001971(n))]/2`
-/

namespace A175777.P13813879539606853792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A001971 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A175777.P13813879539606853792

namespace A175777

/-- `∑[and(-2, A001971(n))]/2` -/
def P13813879539606853792.Spec : Prop :=
  ∀ n, P13813879539606853792.a n = (A175777 n : ℚ)

end A175777

/-! ## A175777.P5723945974197586251

`A011861(n)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A175777.P5723945974197586251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A011861 n + a (n - 2)

end

end A175777.P5723945974197586251

namespace A175777

/-- `A011861(n)+a(n-2)` -/
def P5723945974197586251.Spec : Prop :=
  ∀ n, P5723945974197586251.a n = A175777 n

end A175777

/-! ## A175777.P16319413369392023953

`A122046(n)-A177189(n)`
-/

namespace A175777.P16319413369392023953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122046 n - A177189 n

end

end A175777.P16319413369392023953

namespace A175777

/-- `A122046(n)-A177189(n)` -/
def P16319413369392023953.Spec : Prop :=
  ∀ n, P16319413369392023953.a n = A175777 n

end A175777

/-! ## A175777.P10018484599685196064

`∑[A008619(∑[A002265(n+1)])]-(n+1)`
-/

namespace A175777.P10018484599685196064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A175777.P10018484599685196064

namespace A175777

/-- `∑[A008619(∑[A002265(n+1)])]-(n+1)` -/
def P10018484599685196064.Spec : Prop :=
  ∀ n, P10018484599685196064.a n = A175777 n

end A175777

/-! ## A175777.P17424807845188296138

`∑[A002265(A002265(n²))+1]-(n+1)`
-/

namespace A175777.P17424807845188296138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A002265 (n ^ 2)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A175777.P17424807845188296138

namespace A175777

/-- `∑[A002265(A002265(n²))+1]-(n+1)` -/
def P17424807845188296138.Spec : Prop :=
  ∀ n, P17424807845188296138.a n = A175777 n

end A175777

/-! ## A175777.P578251084243377325

`A004526(∑[A036406(n)]-n)`
-/

namespace A175777.P578251084243377325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A175777.P578251084243377325

namespace A175777

/-- `A004526(∑[A036406(n)]-n)` -/
def P578251084243377325.Spec : Prop :=
  ∀ n, P578251084243377325.a n = A175777 n

end A175777

/-! ## A175777.P14961245051275628071

`A175826(n)-A110654(A175826(n)+n)`
-/

namespace A175777.P14961245051275628071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175826 n - A110654 (A175826 n + (n : ℤ)).toNat

end

end A175777.P14961245051275628071

namespace A175777

/-- `A175826(n)-A110654(A175826(n)+n)` -/
def P14961245051275628071.Spec : Prop :=
  ∀ n, P14961245051275628071.a n = A175777 n

end A175777

/-!
# A175778: Length of the longest positive arithmetic progression, with nonzero common difference, that sums to n.

The programs for A175778, there is no canonical definition to state claims against.
-/

/-! ## A175778.P2675755519785025191

`gcd(A348568(A029579(n)), A348581(2*(n+1)))`
-/

namespace A175778.P2675755519785025191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A348568 (A029579 n).toNat) (A348581 (2 * (n + 1)))

end

end A175778.P2675755519785025191

/-! ## A175778.P11147474708983051703

`A348581(2*(n+1))-A295896(A348585(n+2))`
-/

namespace A175778.P11147474708983051703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348581 (2 * (n + 1)) - A295896 (A348585 (n + 2)).toNat

end

end A175778.P11147474708983051703

/-! ## A175778.P6385987163524460907

`A348581(2*(n+1))-A010052(A348609(2*n+1))`
-/

namespace A175778.P6385987163524460907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348581 (2 * (n + 1)) - A010052 (A348609 (2 * n + 1)).toNat

end

end A175778.P6385987163524460907

/-! ## A175778.P2035531217647720602

`gcd(A060819(A000056(n+1)), A348581(2*n+2))`
-/

namespace A175778.P2035531217647720602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060819 (A000056 (n + 1)).toNat) (A348581 (2 * n + 2))

end

end A175778.P2035531217647720602

/-! ## A175778.P15756043637024988638

`lcm(A092334(A180663(n)+4), A109814(n+1))`
-/

namespace A175778.P15756043637024988638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A092334 (A180663 n + 4).toNat) (A109814 (n + 1))

end

end A175778.P15756043637024988638

/-!
# A175779: Triangle T(n,m) read by rows: numerator of 1/(n-m)^2 - 1/n^2.

The programs for A175779, there is no canonical definition to state claims against.
-/

/-! ## A175779.P11170494002193461700

`A032741(A237996(n)+A111825(n))`
-/

namespace A175779.P11170494002193461700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A237996 n + A111825 n).toNat

end

end A175779.P11170494002193461700

/-! ## A175779.P13827745959915556901

`A000005(A237996(n)+A111825(n))-1`
-/

namespace A175779.P13827745959915556901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A237996 n + A111825 n).toNat - 1

end

end A175779.P13827745959915556901

/-! ## A175779.P214991468784012102

`(A029653(n)*A097805(n))%A235614(A235573(n+1))`
-/

namespace A175779.P214991468784012102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029653 n * A097805 n) (A235614 (A235573 (n + 1)).toNat)

end

end A175779.P214991468784012102

/-! ## A175779.P10127506516654667161

`A033999(2*n+1)+A000005(A237996(n)+A111825(n))`
-/

namespace A175779.P10127506516654667161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A000005 (A237996 n + A111825 n).toNat

end

end A175779.P10127506516654667161

/-! ## A175779.P6881253379227702029

`A079782(2*(n+1))%A000005(A237996(n)+A111825(n))`
-/

namespace A175779.P6881253379227702029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (2 * (n + 1))) (A000005 (A237996 n + A111825 n).toNat)

end

end A175779.P6881253379227702029

/-!
# A175780: Partial sums of floor(n^2/24).

The programs for A175780, the canonical program `A175780.P2835586407746044088` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175780 has offset 0).

The definition of A175780 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175780.P2835586407746044088

`ceil((2*n-9)*(n+3)²/144)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A175780

/-- `ceil((2*n-9)*(n+3)²/144)` -/
def P2835586407746044088.Spec : Prop :=
  ∀ n, P2835586407746044088.a n = A175780 n

theorem P2835586407746044088.correct : P2835586407746044088.Spec := by
  intro n
  simp only [A175780]

end A175780

/-! ## A175780.P11366229280676923893

`floor(a(n-1)+n²/24)` with `a(0)=0`
-/

namespace A175780.P11366229280676923893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + (n ^ 2 : ℚ) / 24⌋

end

end A175780.P11366229280676923893

namespace A175780

/-- `floor(a(n-1)+n²/24)` -/
def P11366229280676923893.Spec : Prop :=
  ∀ n, P11366229280676923893.a n = A175780 n

end A175780

/-! ## A175780.P11695369239083945178

`∑[or(1, A069905(n))-1]/2`
-/

namespace A175780.P11695369239083945178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A069905 n) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A175780.P11695369239083945178

namespace A175780

/-- `∑[or(1, A069905(n))-1]/2` -/
def P11695369239083945178.Spec : Prop :=
  ∀ n, P11695369239083945178.a n = (A175780 n : ℚ)

end A175780

/-! ## A175780.P833100421471279668

`floor((A175724(n)-A002265(n))/2)`
-/

namespace A175780.P833100421471279668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A175724 n - A002265 n : ℚ) / 2⌋

end

end A175780.P833100421471279668

namespace A175780

/-- `floor((A175724(n)-A002265(n))/2)` -/
def P833100421471279668.Spec : Prop :=
  ∀ n, P833100421471279668.a n = A175780 n

end A175780

/-! ## A175780.P6667904614258895348

`∑[A008619(A005044(2*n))]-(n+1)`
-/

namespace A175780.P6667904614258895348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A005044 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A175780.P6667904614258895348

namespace A175780

/-- `∑[A008619(A005044(2*n))]-(n+1)` -/
def P6667904614258895348.Spec : Prop :=
  ∀ n, P6667904614258895348.a n = A175780 n

end A175780

/-! ## A175780.P8480636977661439962

`A004526(A175724(n)-A002265(n))`
-/

namespace A175780.P8480636977661439962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A175724 n - A002265 n).toNat

end

end A175780.P8480636977661439962

namespace A175780

/-- `A004526(A175724(n)-A002265(n))` -/
def P8480636977661439962.Spec : Prop :=
  ∀ n, P8480636977661439962.a n = A175780 n

end A175780

/-!
# A175781: a(n) = n^(1/k) with the smallest k>1 such that n is a k-th power, taking k=1 if no such k>1 exists.

The programs for A175781, there is no canonical definition to state claims against.
-/

/-! ## A175781.P3395625929835666286

`(n+1)^(1/A020639(A253641(n+1)))`
-/

namespace A175781.P3395625929835666286
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (1 / (A020639 (A253641 (n + 1)).toNat : ℚ) : ℝ)

end

end A175781.P3395625929835666286

/-! ## A175781.P17204703191935671784

`A025478(A340699(n+1))^A074206(A052409(n+1))`
-/

namespace A175781.P17204703191935671784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025478 (A340699 (n + 1)).toNat : ℚ) ^ (A074206 (A052409 (n + 1)).toNat : ℤ)

end

end A175781.P17204703191935671784

/-! ## A175781.P529889395878898899

`A304491(A304481(n+1))^A107286(A295931(n+1))`
-/

namespace A175781.P529889395878898899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304491 (A304481 (n + 1)).toNat : ℚ) ^ (A107286 (A295931 (n + 1)).toNat : ℤ)

end

end A175781.P529889395878898899

/-! ## A175781.P8245457869132367046

`lcm(A056622(n+1), A329814((n+1)²))`
-/

namespace A175781.P8245457869132367046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056622 (n + 1)) (A329814 ((n + 1) ^ 2))

end

end A175781.P8245457869132367046

/-! ## A175781.P1317720571475677541

`A000188(A052410(n+1)^A071187(n+1))`
-/

namespace A175781.P1317720571475677541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (SequenceMachineLib.roundAway ((A052410 (n + 1) : ℚ) ^ (A071187 (n + 1) : ℤ))).toNat

end

end A175781.P1317720571475677541

/-! ## A175781.P13015004288964413285

`A329814((n+1)²)^A295923(A295931(n+1))`
-/

namespace A175781.P13015004288964413285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329814 ((n + 1) ^ 2) : ℚ) ^ (A295923 (A295931 (n + 1)).toNat : ℤ)

end

end A175781.P13015004288964413285

/-! ## A175781.P15718128547345697857

`A025478(A069623((n+1)²))^A318323(A295931(n+1))`
-/

namespace A175781.P15718128547345697857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025478 (A069623 ((n + 1) ^ 2)).toNat : ℚ) ^ (A318323 (A295931 (n + 1)).toNat : ℤ)

end

end A175781.P15718128547345697857

/-!
# A175782: Expansion of 1/(1 - x - x^20 - x^39 + x^40).

The programs for A175782, there is no canonical definition to state claims against.
-/

/-! ## A175782.P1255531503628116651

`Δ[n²]-comp[A022993(2*n)]`
-/

namespace A175782.P1255531503628116651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022993 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

end

end A175782.P1255531503628116651

/-! ## A175782.P2719225317205844137

`∑[A064459(A057361(n))^n²]`
-/

namespace A175782.P2719225317205844137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064459 (A057361 n).toNat ^ n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175782.P2719225317205844137

/-! ## A175782.P143329668287109673

`∑[A160990(n)^A392971(n+1)]`
-/

namespace A175782.P143329668287109673
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160990 n : ℚ) ^ (A392971 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175782.P143329668287109673

/-! ## A175782.P14019851414434386380

`∑[A160990(n)^A096448(n+3)]`
-/

namespace A175782.P14019851414434386380
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160990 n : ℚ) ^ (A096448 (n + 3) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175782.P14019851414434386380

/-! ## A175782.P6911385099938277365

`A246435(floor((A326590(n)/(n+1))²))`
-/

namespace A175782.P6911385099938277365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246435 ⌊((A326590 n : ℚ) / (n + 1 : ℚ)) ^ 2⌋.toNat

end

end A175782.P6911385099938277365

/-!
# A175783: Primes p such that the sum of next p primes is prime.

The programs for A175783, there is no canonical definition to state claims against.
-/

/-! ## A175783.P16510488905630397519

`p?[A259466(n+4)-2]`
-/

namespace A175783.P16510488905630397519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259466 (n + 4) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175783.P16510488905630397519

/-!
# A175784: Numerators of k/(10+k)+1 for k = 2*n-1.

The programs for A175784, the canonical program `A175784.P12487661479724782484` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175784 has offset 1).

The definition of A175784 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175784.P595700549221021235

`4*lcm(5, n+3)/5`
-/

namespace A175784.P595700549221021235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((Nat.lcm 5 (n + 3) : ℚ) / 5)

end

end A175784.P595700549221021235

namespace A175784

/-- `4*lcm(5, n+3)/5` -/
def P595700549221021235.Spec : Prop :=
  ∀ n, P595700549221021235.a n = (A175784 (n + 1) : ℚ)

end A175784

/-! ## A175784.P12317541891622829331

`4*(n+3)/gcd(5, 2-n)`
-/

namespace A175784.P12317541891622829331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((n + 3 : ℚ) / (Int.gcd 5 (2 - (n : ℤ)) : ℚ))

end

end A175784.P12317541891622829331

namespace A175784

/-- `4*(n+3)/gcd(5, 2-n)` -/
def P12317541891622829331.Spec : Prop :=
  ∀ n, P12317541891622829331.a n = (A175784 (n + 1) : ℚ)

end A175784

/-! ## A175784.P12487661479724782484

`4*gcd(n+3, C(n+3, 5))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A175784

/-- `4*gcd(n+3, C(n+3, 5))` -/
def P12487661479724782484.Spec : Prop :=
  ∀ n, (P12487661479724782484.a n : ℤ) = A175784 (n + 1)

theorem P12487661479724782484.correct : P12487661479724782484.Spec := by
  intro n
  simp only [A175784, Nat.add_sub_cancel]

end A175784

/-! ## A175784.P2004579493058214006

`2*a(n-5)-a(n-10)` with `a(0)=12, a(1)=16, a(2)=4, a(3)=24, a(4)=28, a(5)=32, a(6)=36, a(7)=8, a(8)=44, a(9)=48`
-/

namespace A175784.P2004579493058214006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12, 16, 4, 24, 28, 32, 36, 8, 44, 48] fun n a =>
  2 * a (n - 5) - a (n - 10)

end

end A175784.P2004579493058214006

namespace A175784

/-- `2*a(n-5)-a(n-10)` -/
def P2004579493058214006.Spec : Prop :=
  ∀ n, P2004579493058214006.a n = A175784 (n + 1)

end A175784

/-! ## A175784.P4286978503155011949

`4*A060791(n+3)`
-/

namespace A175784.P4286978503155011949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A060791 (n + 3)

end

end A175784.P4286978503155011949

namespace A175784

/-- `4*A060791(n+3)` -/
def P4286978503155011949.Spec : Prop :=
  ∀ n, P4286978503155011949.a n = A175784 (n + 1)

end A175784

/-! ## A175784.P1837650626946568032

`A008574(A060791(n+3))`
-/

namespace A175784.P1837650626946568032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A060791 (n + 3)).toNat

end

end A175784.P1837650626946568032

namespace A175784

/-- `A008574(A060791(n+3))` -/
def P1837650626946568032.Spec : Prop :=
  ∀ n, P1837650626946568032.a n = A175784 (n + 1)

end A175784

/-! ## A175784.P13314116258579583669

`4*(n+3)/A109009(n+3)`
-/

namespace A175784.P13314116258579583669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((n + 3 : ℚ) / (A109009 (n + 3) : ℚ))

end

end A175784.P13314116258579583669

namespace A175784

/-- `4*(n+3)/A109009(n+3)` -/
def P13314116258579583669.Spec : Prop :=
  ∀ n, P13314116258579583669.a n = (A175784 (n + 1) : ℚ)

end A175784

/-! ## A175784.P14639291769016029702

`A060791(A192544(n+2))`
-/

namespace A175784.P14639291769016029702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060791 (A192544 (n + 2)).toNat

end

end A175784.P14639291769016029702

namespace A175784

/-- `A060791(A192544(n+2))` -/
def P14639291769016029702.Spec : Prop :=
  ∀ n, P14639291769016029702.a n = A175784 (n + 1)

end A175784

/-! ## A175784.P5953592152567724903

`A090223(lcm(5, n+3))`
-/

namespace A175784.P5953592152567724903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 (Nat.lcm 5 (n + 3))

end

end A175784.P5953592152567724903

namespace A175784

/-- `A090223(lcm(5, n+3))` -/
def P5953592152567724903.Spec : Prop :=
  ∀ n, P5953592152567724903.a n = A175784 (n + 1)

end A175784

/-! ## A175784.P6284692678888450332

`A106611(8*(n+3))`
-/

namespace A175784.P6284692678888450332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106611 (8 * (n + 3))

end

end A175784.P6284692678888450332

namespace A175784

/-- `A106611(8*(n+3))` -/
def P6284692678888450332.Spec : Prop :=
  ∀ n, P6284692678888450332.a n = A175784 (n + 1)

end A175784

/-! ## A175784.P12086346456665142689

`A106621(A008590(2*(n+3)))`
-/

namespace A175784.P12086346456665142689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 (A008590 (2 * (n + 3))).toNat

end

end A175784.P12086346456665142689

namespace A175784

/-- `A106621(A008590(2*(n+3)))` -/
def P12086346456665142689.Spec : Prop :=
  ∀ n, P12086346456665142689.a n = A175784 (n + 1)

end A175784

/-! ## A175784.P10022576104285458256

`A386490(A340266(n+2))`
-/

namespace A175784.P10022576104285458256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386490 (A340266 (n + 2)).toNat

end

end A175784.P10022576104285458256

namespace A175784

/-- `A386490(A340266(n+2))` -/
def P10022576104285458256.Spec : Prop :=
  ∀ n, P10022576104285458256.a n = A175784 (n + 1)

end A175784

/-!
# A175785: Numbers n such that the number of distinct prime divisors of n does not divide phi(n).

The programs for A175785, the canonical program `A175785.P6519600176006389600` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175785 has offset 1).

The definition of A175785 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175785.P6519600176006389600

`eq[16, A319100(A008574(n))]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A175785

/-- `eq[16, A319100(A008574(n))]` -/
def P6519600176006389600.Spec : Prop :=
  ∀ n, (P6519600176006389600.a n : ℤ) = A175785 (n + 1)

theorem P6519600176006389600.correct : P6519600176006389600.Spec := by
  intro n
  simp only [A175785, Nat.add_sub_cancel]

end A175785

/-! ## A175785.P5864785762292786569

`∩[A349794(n+1), A390093(n+1)]`
-/

namespace A175785.P5864785762292786569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175785.P5864785762292786569

namespace A175785

/-- `∩[A349794(n+1), A390093(n+1)]` -/
def P5864785762292786569.Spec : Prop :=
  ∀ n, (P5864785762292786569.a n : ℤ) = A175785 (n + 1)

end A175785

/-! ## A175785.P17571380958035538947

`∩[A343340(n+1), A107014(n+5)]`
-/

namespace A175785.P17571380958035538947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107014 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175785.P17571380958035538947

namespace A175785

/-- `∩[A343340(n+1), A107014(n+5)]` -/
def P17571380958035538947.Spec : Prop :=
  ∀ n, (P17571380958035538947.a n : ℤ) = A175785 (n + 1)

end A175785

/-! ## A175785.P234462401642245715

`∩[A351910(A132145(n+1)), A343340(n+1)]`
-/

namespace A175785.P234462401642245715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351910 (A132145 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175785.P234462401642245715

namespace A175785

/-- `∩[A351910(A132145(n+1)), A343340(n+1)]` -/
def P234462401642245715.Spec : Prop :=
  ∀ n, (P234462401642245715.a n : ℤ) = A175785 (n + 1)

end A175785

/-!
# A175787: Primes together with 4.

The programs for A175787, the canonical program `A175787.P10024478366857533250` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175787 has offset 1).

The definition of A175787 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046022, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A175787.P10024478366857533250

`A046022(n+2)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A175787

/-- `A046022(n+2)` -/
def P10024478366857533250.Spec : Prop :=
  ∀ n, P10024478366857533250.a n = A175787 (n + 1)

theorem P10024478366857533250.correct : P10024478366857533250.Spec := by
  intro n
  simp only [A175787, Nat.add_sub_cancel]

end A175787

/-! ## A175787.P6920125937870263963

`A068499(n+1)+1`
-/

namespace A175787.P6920125937870263963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068499 (n + 1) + 1

end

end A175787.P6920125937870263963

namespace A175787

/-- `A068499(n+1)+1` -/
def P6920125937870263963.Spec : Prop :=
  ∀ n, P6920125937870263963.a n = A175787 (n + 1)

end A175787

/-! ## A175787.P2366944809344005471

`A161344(n+1)/2`
-/

namespace A175787.P2366944809344005471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161344 (n + 1) : ℚ) / 2

end

end A175787.P2366944809344005471

namespace A175787

/-- `A161344(n+1)/2` -/
def P2366944809344005471.Spec : Prop :=
  ∀ n, P2366944809344005471.a n = (A175787 (n + 1) : ℚ)

end A175787

/-! ## A175787.P12083195832493662781

`A000040(n%a(n-1))` with `a(0)=2, a(1)=3, a(2)=4`
-/

namespace A175787.P12083195832493662781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 4] fun n a =>
  A000040 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A175787.P12083195832493662781

namespace A175787

/-- `A000040(n%a(n-1))` -/
def P12083195832493662781.Spec : Prop :=
  ∀ n, P12083195832493662781.a n = A175787 (n + 1)

end A175787

/-! ## A175787.P12470129292493215364

`A000040(n)/gcd(2, a(n-1))` with `a(0)=2, a(1)=3, a(2)=4, a(3)=5`
-/

namespace A175787.P12470129292493215364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 3, 4, 5] fun n a =>
  (A000040 n : ℚ) / (Int.gcd 2 (SequenceMachineLib.roundAway (a (n - 1))) : ℚ)

end

end A175787.P12470129292493215364

namespace A175787

/-- `A000040(n)/gcd(2, a(n-1))` -/
def P12470129292493215364.Spec : Prop :=
  ∀ n, P12470129292493215364.a n = (A175787 (n + 1) : ℚ)

end A175787

/-! ## A175787.P8214966593052278399

`A130716(n)+A008578(n+1)`
-/

namespace A175787.P8214966593052278399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130716 n + A008578 (n + 1)

end

end A175787.P8214966593052278399

namespace A175787

/-- `A130716(n)+A008578(n+1)` -/
def P8214966593052278399.Spec : Prop :=
  ∀ n, P8214966593052278399.a n = A175787 (n + 1)

end A175787

/-! ## A175787.P6388815709424777325

`A090178(n+1)-A326178(n)`
-/

namespace A175787.P6388815709424777325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090178 (n + 1) - A326178 n

end

end A175787.P6388815709424777325

namespace A175787

/-- `A090178(n+1)-A326178(n)` -/
def P6388815709424777325.Spec : Prop :=
  ∀ n, P6388815709424777325.a n = A175787 (n + 1)

end A175787

/-! ## A175787.P15301347482003120127

`∪[char[1]+A000040(n+1), A000040(n+1)]`
-/

namespace A175787.P15301347482003120127
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + A000040 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A175787.P15301347482003120127

namespace A175787

/-- `∪[char[1]+A000040(n+1), A000040(n+1)]` -/
def P15301347482003120127.Spec : Prop :=
  ∀ n, (P15301347482003120127.a n : ℤ) = A175787 (n + 1)

end A175787

/-! ## A175787.P5335708099728254183

`record[A085729(n+2)]`
-/

namespace A175787.P5335708099728254183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085729 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175787.P5335708099728254183

namespace A175787

/-- `record[A085729(n+2)]` -/
def P5335708099728254183.Spec : Prop :=
  ∀ n, P5335708099728254183.a n = A175787 (n + 1)

end A175787

/-! ## A175787.P1638750880696236072

`filter[A051948(n+1), A324290(#)]`
-/

namespace A175787.P1638750880696236072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A175787.P1638750880696236072

namespace A175787

/-- `filter[A051948(n+1), A324290(#)]` -/
def P1638750880696236072.Spec : Prop :=
  ∀ n, P1638750880696236072.a n = A175787 (n + 1)

end A175787

/-! ## A175787.P4749441847636838214

`filter[A251595(n+1), A324290(#)]`
-/

namespace A175787.P4749441847636838214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A175787.P4749441847636838214

namespace A175787

/-- `filter[A251595(n+1), A324290(#)]` -/
def P4749441847636838214.Spec : Prop :=
  ∀ n, P4749441847636838214.a n = A175787 (n + 1)

end A175787

/-! ## A175787.P15788238738640444516

`record[A001414(n+2)]`
-/

namespace A175787.P15788238738640444516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175787.P15788238738640444516

namespace A175787

/-- `record[A001414(n+2)]` -/
def P15788238738640444516.Spec : Prop :=
  ∀ n, P15788238738640444516.a n = A175787 (n + 1)

end A175787

/-! ## A175787.P5069820277454738705

`record[n/a(A001222(n))]` with `a(0)=2, a(1)=1, a(2)=3, a(3)=4, a(4)=2`
-/

namespace A175787.P5069820277454738705
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1, 3, 4, 2] fun n f1 =>
  (n : ℚ) / f1 (A001222 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175787.P5069820277454738705

namespace A175787

/-- `record[n/a(A001222(n))]` -/
def P5069820277454738705.Spec : Prop :=
  ∀ n, P5069820277454738705.a n = (A175787 (n + 1) : ℚ)

end A175787

/-! ## A175787.P13214135276321115104

`filter[A051948(n+1), A069513(#)]`
-/

namespace A175787.P13214135276321115104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A175787.P13214135276321115104

namespace A175787

/-- `filter[A051948(n+1), A069513(#)]` -/
def P13214135276321115104.Spec : Prop :=
  ∀ n, P13214135276321115104.a n = A175787 (n + 1)

end A175787

/-! ## A175787.P16026486315665152927

`filter[A062972(n+1), A069513(#)]`
-/

namespace A175787.P16026486315665152927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A175787.P16026486315665152927

namespace A175787

/-- `filter[A062972(n+1), A069513(#)]` -/
def P16026486315665152927.Spec : Prop :=
  ∀ n, P16026486315665152927.a n = A175787 (n + 1)

end A175787

/-! ## A175787.P3325534151414738838

`filter[A123091(n+1), A069513(#)]`
-/

namespace A175787.P3325534151414738838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A175787.P3325534151414738838

namespace A175787

/-- `filter[A123091(n+1), A069513(#)]` -/
def P3325534151414738838.Spec : Prop :=
  ∀ n, P3325534151414738838.a n = A175787 (n + 1)

end A175787

/-! ## A175787.P14592511998432920023

`filter[A251595(n+1), A069513(#)]`
-/

namespace A175787.P14592511998432920023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A175787.P14592511998432920023

namespace A175787

/-- `filter[A251595(n+1), A069513(#)]` -/
def P14592511998432920023.Spec : Prop :=
  ∀ n, P14592511998432920023.a n = A175787 (n + 1)

end A175787

/-! ## A175787.P14809656838744356162

`filter[A000430(n+1), A354817(#)]`
-/

namespace A175787.P14809656838744356162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354817 (f1 j).toNat = 1) n)

end

end A175787.P14809656838744356162

namespace A175787

/-- `filter[A000430(n+1), A354817(#)]` -/
def P14809656838744356162.Spec : Prop :=
  ∀ n, P14809656838744356162.a n = A175787 (n + 1)

end A175787

/-! ## A175787.P15150809769621683231

`filter[A000430(n+1), A356310(#)]`
-/

namespace A175787.P15150809769621683231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356310 (f1 j).toNat = 1) n)

end

end A175787.P15150809769621683231

namespace A175787

/-- `filter[A000430(n+1), A356310(#)]` -/
def P15150809769621683231.Spec : Prop :=
  ∀ n, P15150809769621683231.a n = A175787 (n + 1)

end A175787

/-! ## A175787.P15286493700828914685

`filter[A000430(n+1), A358672(#)]`
-/

namespace A175787.P15286493700828914685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358672 (f1 j).toNat = 1) n)

end

end A175787.P15286493700828914685

namespace A175787

/-- `filter[A000430(n+1), A358672(#)]` -/
def P15286493700828914685.Spec : Prop :=
  ∀ n, P15286493700828914685.a n = A175787 (n + 1)

end A175787

/-!
# A175788: Square array A(n,k), n>=0, k>=0, read by antidiagonals: A(n,k) is the number of partitions of n that do not contain k as a part.

The programs for A175788, there is no canonical definition to state claims against.
-/

/-! ## A175788.P3947474015902777957

`A303837(A227655(n))+A303810(n+1)`
-/

namespace A175788.P3947474015902777957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303837 (A227655 n).toNat + A303810 (n + 1)

end

end A175788.P3947474015902777957

/-!
# A175789: Primes that become another prime under the map 8 <-> 9 (acting on the decimal digits).

The programs for A175789, there is no canonical definition to state claims against.
-/

/-! ## A175789.P6051555780517471251

`A270310(eq[A238281(n+1), A344086(3*n+2)])`
-/

namespace A175789.P6051555780517471251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344086 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A175789.P6051555780517471251

/-!
# A175790: Expansion of 1/((1 - x^3 - x^4)*(1 + x)).

The programs for A175790, the canonical program `A175790.P2849040048739161669` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175790 has offset 0).

The definition of A175790 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175790.P2849040048739161669

`A127838(n+2)+(-1)^n`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A175790

/-- `A127838(n+2)+(-1)^n` -/
def P2849040048739161669.Spec : Prop :=
  ∀ n, P2849040048739161669.a n = A175790 n

theorem P2849040048739161669.correct : P2849040048739161669.Spec := by
  intro n
  simp only [A175790]

end A175790

/-! ## A175790.P809873331295226451

`A033999(n)*A177825(n)`
-/

namespace A175790.P809873331295226451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A177825 n

end

end A175790.P809873331295226451

namespace A175790

/-- `A033999(n)*A177825(n)` -/
def P809873331295226451.Spec : Prop :=
  ∀ n, P809873331295226451.a n = A175790 n

end A175790

/-! ## A175790.P9354921644436466281

`A017817(n)-a(n-1)` with `a(0)=1`
-/

namespace A175790.P9354921644436466281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017817 n - a (n - 1)

end

end A175790.P9354921644436466281

namespace A175790

/-- `A017817(n)-a(n-1)` -/
def P9354921644436466281.Spec : Prop :=
  ∀ n, P9354921644436466281.a n = A175790 n

end A175790

/-! ## A175790.P1594952562682178536

`∑[A017817(n)*A033999(n)]*A033999(n)`
-/

namespace A175790.P1594952562682178536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017817 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A175790.P1594952562682178536

namespace A175790

/-- `∑[A017817(n)*A033999(n)]*A033999(n)` -/
def P1594952562682178536.Spec : Prop :=
  ∀ n, P1594952562682178536.a n = A175790 n

end A175790

/-! ## A175790.P827136067847652777

`Δ[A079398(n+1)+n%2]`
-/

namespace A175790.P827136067847652777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079398 (n + 1) + ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175790.P827136067847652777

namespace A175790

/-- `Δ[A079398(n+1)+n%2]` -/
def P827136067847652777.Spec : Prop :=
  ∀ n, P827136067847652777.a n = A175790 n

end A175790

/-! ## A175790.P16074179982345672100

`A079398(n+2)-A079398(n)-a(n-1)` with `a(0)=1`
-/

namespace A175790.P16074179982345672100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A079398 (n + 2) - A079398 n - a (n - 1)

end

end A175790.P16074179982345672100

namespace A175790

/-- `A079398(n+2)-A079398(n)-a(n-1)` -/
def P16074179982345672100.Spec : Prop :=
  ∀ n, P16074179982345672100.a n = A175790 n

end A175790

/-!
# A175791: Primes that become another prime under the map 1 <-> 0 (acting on the digits: A222210), cf. A171013.

The programs for A175791, there is no canonical definition to state claims against.
-/

/-! ## A175791.P18111515314595282128

`p?[A115844(2*n+5)-n]`
-/

namespace A175791.P18111515314595282128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115844 (2 * n + 5) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175791.P18111515314595282128

/-! ## A175791.P4094409023549916767

`∩[A106306(n+1), A301478(n+1)]`
-/

namespace A175791.P4094409023549916767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175791.P4094409023549916767

/-!
# A175792: a(n) = Sum_{k=1..n} (-1)^A000796(k), excess of the number of even over odd digits in the first n digits of Pi.

The programs for A175792, there is no canonical definition to state claims against.
-/

/-! ## A175792.P7184909686374319013

`-A196686(n+1)`
-/

namespace A175792.P7184909686374319013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A196686 (n + 1)

end

end A175792.P7184909686374319013

/-! ## A175792.P13035408707797920415

`∑[(-1)^A000796(n)]`
-/

namespace A175792.P13035408707797920415
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A000796 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175792.P13035408707797920415

/-! ## A175792.P15932867952424249488

`∑[(-1)^A086994(n)]`
-/

namespace A175792.P15932867952424249488
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A086994 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175792.P15932867952424249488

/-! ## A175792.P7757541353583906512

`∑[(-1)^A089281(n)]`
-/

namespace A175792.P7757541353583906512
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A089281 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175792.P7757541353583906512

/-! ## A175792.P12851052703276604438

`∑[(-1)^Δ[A059582(n)]]`
-/

namespace A175792.P12851052703276604438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175792.P12851052703276604438

/-! ## A175792.P16804158764162215048

`∑[(-1)^A065253(n+1)]`
-/

namespace A175792.P16804158764162215048
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A065253 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175792.P16804158764162215048

/-! ## A175792.P15829352367923887407

`∑[(-1)^A072448(n+1)]`
-/

namespace A175792.P15829352367923887407
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A072448 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175792.P15829352367923887407

/-! ## A175792.P14943136931241584262

`∑[(-1)^(9-A030644(n))]`
-/

namespace A175792.P14943136931241584262
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (9 - A030644 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175792.P14943136931241584262

/-! ## A175792.P9153400269272294238

`∑[1-2*A030657(n+1)]`
-/

namespace A175792.P9153400269272294238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A030657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175792.P9153400269272294238

/-! ## A175792.P7178334149910360668

`∑[A014647(Δ[A059582(n)])]`
-/

namespace A175792.P7178334149910360668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014647 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175792.P7178334149910360668

/-!
# A175793: Excess of the number of even over the number of odd digits in the first n digits of the decimal expansion of E.

The programs for A175793, there is no canonical definition to state claims against.
-/

/-! ## A175793.P12184581690703926739

`∑[1-val(A135725(n)!, 3)]`
-/

namespace A175793.P12184581690703926739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.valuation (Nat.factorial (A135725 n).toNat) 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175793.P12184581690703926739

/-! ## A175793.P15612762122960417954

`∑[1-2*A071981(n+1)]`
-/

namespace A175793.P15612762122960417954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A071981 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175793.P15612762122960417954

/-! ## A175793.P5433822752982973200

`∑[(1-4/2)^A001113(n)]`
-/

namespace A175793.P5433822752982973200
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (4 : ℚ) / 2) ^ (A001113 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175793.P5433822752982973200

/-! ## A175793.P7641354638815750782

`∑[(-1)^A001355(2*(n+1))]`
-/

namespace A175793.P7641354638815750782
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A001355 (2 * (n + 1)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175793.P7641354638815750782

/-! ## A175793.P13494322536002692219

`∑[xor(1, A001113(n))-A001113(n)]`
-/

namespace A175793.P13494322536002692219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A001113 (n + 1)) - A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175793.P13494322536002692219

/-! ## A175793.P4087799539183460406

`∑[A290975((A001113(n)%2)^(n+1))]`
-/

namespace A175793.P4087799539183460406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290975 (Int.tmod (A001113 (n + 1)) 2 ^ (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175793.P4087799539183460406

/-! ## A175793.P15965917135768859033

`∑[A016377(and(1, A001113(n))^(n+1))]`
-/

namespace A175793.P15965917135768859033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016377 (Int.land 1 (A001113 (n + 1)) ^ (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175793.P15965917135768859033

/-!
# A175794: a(n) = Sum_{k=1..n} (-1)^A001620(k).

The programs for A175794, there is no canonical definition to state claims against.
-/

/-! ## A175794.P4669671345067465286

`∑[(-1)^A001620(n)]`
-/

namespace A175794.P4669671345067465286
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A001620 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175794.P4669671345067465286

/-! ## A175794.P17499988683260865277

`∑[A015595(Δ[A093084(n)])]`
-/

namespace A175794.P17499988683260865277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093084 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015595 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175794.P17499988683260865277

/-! ## A175794.P12249489993008572972

`∑[A033999(Δ[A093084(n)])]`
-/

namespace A175794.P12249489993008572972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093084 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175794.P12249489993008572972

/-! ## A175794.P10587306258736852201

`∑[A016327(A001620(n)/gcd(n, n+1))]`
-/

namespace A175794.P10587306258736852201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016327 (SequenceMachineLib.roundAway ((A001620 n : ℚ) / (Nat.gcd n (n + 1) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175794.P10587306258736852201

/-! ## A175794.P8569568925373568969

`∑[(-1)^(9-A153810(n))]`
-/

namespace A175794.P8569568925373568969
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (9 - A153810 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175794.P8569568925373568969

/-!
# A175796: H_n(n, 2) where H_c(a, b) is the hyperoperation function with operator c.

The programs for A175796, there is no canonical definition to state claims against.
-/

/-! ## A175796.P3096568795936634491

`∑{p}[n^n+1, xor(1, #)]`
-/

namespace A175796.P3096568795936634491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.xor 1 p

end

end A175796.P3096568795936634491

/-!
# A175799: Number of real zeros of the polynomial whose coefficients are the decimal expansion of Pi truncated to n places (A011545).

The programs for A175799, there is no canonical definition to state claims against.
-/

/-! ## A175799.P16962820557178528731

`val(A228726(n+1)+2, 2)^log2(gcd(2, n))`
-/

namespace A175799.P16962820557178528731
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A228726 (n + 1) + 2).toNat 2 : ℝ) ^ (Real.logb 2 (Nat.gcd 2 n : ℝ))

end

end A175799.P16962820557178528731

/-! ## A175799.P3500595880224921237

`A330166(lcm((1-n)%2, A053424(n+1)))`
-/

namespace A175799.P3500595880224921237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330166 (Int.lcm (Int.tmod (1 - (n : ℤ)) 2) (A053424 (n + 1)))

end

end A175799.P3500595880224921237

/-! ## A175799.P6779933043126631002

`A284376(A325604(n+8))%A175834(n+9)`
-/

namespace A175799.P6779933043126631002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284376 (A325604 (n + 8)).toNat) (A175834 (n + 9))

end

end A175799.P6779933043126631002

/-! ## A175799.P8159776138526761910

`(A325604(n+7)-A175834(n+4))%A175834(n+9)`
-/

namespace A175799.P8159776138526761910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325604 (n + 7) - A175834 (n + 4)) (A175834 (n + 9))

end

end A175799.P8159776138526761910

/-! ## A175799.P5629572652095093461

`and(A128947(n+1), A284620(n+1))`
-/

namespace A175799.P5629572652095093461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A128947 (n + 1)) (A284620 (n + 1))

end

end A175799.P5629572652095093461

