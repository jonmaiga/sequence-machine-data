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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A020806: Decimal expansion of 1/7.

The programs for A020806, the canonical program `A020806.P16271889994640298` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020806 has offset 0).

The definition of A020806 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020806.P16271889994640298

`a(n-1)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=4, a(2)=2, a(3)=8`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020806

/-- `a(n-1)-a(n-3)+a(n-4)` -/
def P16271889994640298.Spec : Prop :=
  ∀ n, P16271889994640298.a n = A020806 n

theorem P16271889994640298.correct : P16271889994640298.Spec := by
  intro n
  simp only [A020806]

end A020806

/-!
# A020817: Decimal expansion of 1/sqrt(60).

The programs for A020817, there is no canonical definition to state claims against.
-/

/-! ## A020817.P14342967096765611046

`A176020(n)-A000007(n)`
-/

namespace A020817.P14342967096765611046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176020 (n + 1) - A000007 n

end

end A020817.P14342967096765611046

/-! ## A020817.P6335941948340035544

`A176020(n)^abs(A062157(n))`
-/

namespace A020817.P6335941948340035544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176020 (n + 1) : ℚ) ^ (|A062157 n| : ℤ)

end

end A020817.P6335941948340035544

/-! ## A020817.P15678607366871957770

`A176020(n)/A000038(n)!`
-/

namespace A020817.P15678607366871957770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176020 (n + 1) : ℚ) / (Nat.factorial (A000038 n).toNat : ℚ)

end

end A020817.P15678607366871957770

/-! ## A020817.P15856913527689927462

`A174296(n+1)+A176020(n)-A010693(n+1)`
-/

namespace A020817.P15856913527689927462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174296 (n + 1) + (A176020 (n + 1) - A010693 (n + 1))

end

end A020817.P15856913527689927462

/-! ## A020817.P4731579824751788351

`A158478(n+1)+A176020(n)-A174296(n+1)`
-/

namespace A020817.P4731579824751788351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 (n + 1) + (A176020 (n + 1) - A174296 (n + 1))

end

end A020817.P4731579824751788351

/-! ## A020817.P508704793939934604

`A176020(n)/A000122(A181105(n+1))!`
-/

namespace A020817.P508704793939934604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176020 (n + 1) : ℚ) / (Nat.factorial (A000122 (A181105 (n + 1)).toNat).toNat : ℚ)

end

end A020817.P508704793939934604

/-! ## A020817.P11805225920803272024

`A176020(n)/(3-A000122(n²))`
-/

namespace A020817.P11805225920803272024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176020 (n + 1) : ℚ) / (3 - A000122 (n ^ 2) : ℚ)

end

end A020817.P11805225920803272024

/-!
# A020821: Decimal expansion of 1/8.

The programs for A020821, the canonical program `A020821.P16925240992492937399` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020821 has offset 0).

The definition of A020821 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020821.P16925240992492937399

`floor(sqrt(C(7, n²)))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020821

/-- `floor(sqrt(C(7, n²)))` -/
def P16925240992492937399.Spec : Prop :=
  ∀ n, (P16925240992492937399.a n : ℤ) = A020821 n

theorem P16925240992492937399.correct : P16925240992492937399.Spec := by
  intro n
  simp only [A020821]

end A020821

/-!
# A020832: Decimal expansion of 1/sqrt(75).

The programs for A020832, there is no canonical definition to state claims against.
-/

/-! ## A020832.P11768847407553286614

`A176053(n)/A010153(n)%3`
-/

namespace A020832.P11768847407553286614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176053 (n + 1) : ℚ) / (Int.tmod (A010153 n) 3 : ℚ)

end

end A020832.P11768847407553286614

/-! ## A020832.P12401669876234044921

`A176053(n+2-A040001(2*n))`
-/

namespace A020832.P12401669876234044921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176053 (((n + 2 : ℤ) - A040001 (2 * n)).toNat + 1)

end

end A020832.P12401669876234044921

/-! ## A020832.P12395538834405372725

`A176053(A152623(2*n)+n)`
-/

namespace A020832.P12395538834405372725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176053 ((A152623 (2 * n + 1) + (n : ℤ)).toNat + 1)

end

end A020832.P12395538834405372725

/-! ## A020832.P7037309079769785826

`A176053(n)-A152623(2*n)`
-/

namespace A020832.P7037309079769785826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176053 (n + 1) - A152623 (2 * n + 1)

end

end A020832.P7037309079769785826

/-! ## A020832.P3559127389395555982

`A176053(n)/A014963(4*n+2)`
-/

namespace A020832.P3559127389395555982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176053 (n + 1) : ℚ) / (A014963 (4 * n + 2) : ℚ)

end

end A020832.P3559127389395555982

/-!
# A020837: Decimal expansion of 1/sqrt(80) = sqrt(5)/20.

The programs for A020837, there is no canonical definition to state claims against.
-/

/-! ## A020837.P14184056318188060256

`A001622(char[1]+n)`
-/

namespace A020837.P14184056318188060256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((if ∃ j, f1 j = n then 1 else 0) + n + 1)

end

end A020837.P14184056318188060256

/-! ## A020837.P3229718827127056719

`A104457(round(acot(n)+n))`
-/

namespace A020837.P3229718827127056719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 ((SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + 1)

end

end A020837.P3229718827127056719

/-! ## A020837.P13050999081711079206

`A001622(n)^floor(atan(n))`
-/

namespace A020837.P13050999081711079206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001622 (n + 1) : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A020837.P13050999081711079206

/-! ## A020837.P16431415859150251591

`dr(A001622(round(acot(n)+n)))`
-/

namespace A020837.P16431415859150251591
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001622 ((SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + 1))

end

end A020837.P16431415859150251591

/-! ## A020837.P3438373635499800365

`A094214(A289207(n)+1)`
-/

namespace A020837.P3438373635499800365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094214 (A289207 n + 1).toNat

end

end A020837.P3438373635499800365

/-! ## A020837.P1288791426018003644

`A104457(A289207(n)+2)`
-/

namespace A020837.P1288791426018003644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 ((A289207 n + 2).toNat + 1)

end

end A020837.P1288791426018003644

/-! ## A020837.P5220590318128044148

`A296184(A289207(n)+2)`
-/

namespace A020837.P5220590318128044148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296184 ((A289207 n + 2).toNat + 1)

end

end A020837.P5220590318128044148

/-! ## A020837.P9675934772209179881

`gcd(A159075(n)², A001622(n))`
-/

namespace A020837.P9675934772209179881
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A159075 n ^ 2) (A001622 (n + 1))

end

end A020837.P9675934772209179881

/-! ## A020837.P13905916909037900172

`A104457(A033322(n+1)+n)`
-/

namespace A020837.P13905916909037900172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 ((A033322 (n + 1) + (n : ℤ)).toNat + 1)

end

end A020837.P13905916909037900172

/-! ## A020837.P15073019822460083197

`A296184(A033322(n+1)+n)`
-/

namespace A020837.P15073019822460083197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296184 ((A033322 (n + 1) + (n : ℤ)).toNat + 1)

end

end A020837.P15073019822460083197

/-! ## A020837.P834416441603359928

`A001622(n)-A020761(xor(1, n))`
-/

namespace A020837.P834416441603359928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1) - A020761 (Nat.xor 1 n)

end

end A020837.P834416441603359928

/-! ## A020837.P6337374965348973925

`A000045(a(n%2))*A001622(n)` with `a(0)=1, a(1)=1`
-/

namespace A020837.P6337374965348973925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000045 (a (n % 2)).toNat * A001622 (n + 1)

end

end A020837.P6337374965348973925

/-! ## A020837.P10890021332557017280

`A001622(n)^A300717(C(n, n²)+1)`
-/

namespace A020837.P10890021332557017280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001622 (n + 1) : ℚ) ^ (A300717 (Nat.choose n (n ^ 2) + 1) : ℤ)

end

end A020837.P10890021332557017280

/-! ## A020837.P9989496014257903366

`A296184(n^A008683(a(and(1, n+1))))` with `a(0)=1, a(1)=1`
-/

namespace A020837.P9989496014257903366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A296184 ((SequenceMachineLib.roundAway ((n : ℚ) ^ (A008683 (a (Nat.land 1 (n + 1))).toNat : ℤ))).toNat + 1)

end

end A020837.P9989496014257903366

/-! ## A020837.P10288556503983268665

`A038573(A220777(a(n-1)))*A104457(n)` with `a(0)=1, a(1)=1`
-/

namespace A020837.P10288556503983268665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A038573 (A220777 (a (n - 1)).toNat).toNat * A104457 (n + 1)

end

end A020837.P10288556503983268665

/-! ## A020837.P1214338200038577348

`A002802(A326626(a(n-1)))*A104457(n)` with `a(0)=1, a(1)=1`
-/

namespace A020837.P1214338200038577348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A002802 (A326626 (a (n - 1)).toNat).toNat * A104457 (n + 1)

end

end A020837.P1214338200038577348

/-! ## A020837.P15907237301703217319

`A179006(A000720(a(n-1)+1))+A104457(n)` with `a(0)=1, a(1)=1`
-/

namespace A020837.P15907237301703217319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A179006 (A000720 (a (n - 1) + 1).toNat).toNat + A104457 (n + 1)

end

end A020837.P15907237301703217319

/-! ## A020837.P786179990542675117

`A040015(n)/A010698(n+1)*A176055(n)`
-/

namespace A020837.P786179990542675117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040015 n : ℚ) / (A010698 (n + 1) : ℚ) * (A176055 (n + 1) : ℚ)

end

end A020837.P786179990542675117

/-! ## A020837.P3273098065951775856

`A382130(A223134(n))`
-/

namespace A020837.P3273098065951775856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382130 (A223134 n).toNat

end

end A020837.P3273098065951775856

/-!
# A020838: Expansion of 1/((1-7x)(1-8x)(1-10x)).

The programs for A020838, the canonical program `A020838.P7298276804429078712` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020838 has offset 0).

The definition of A020838 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020838.P7298276804429078712

`18*a(n-1)-80*a(n-2)+7^n` with `a(0)=1, a(1)=25`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020838

/-- `18*a(n-1)-80*a(n-2)+7^n` -/
def P7298276804429078712.Spec : Prop :=
  ∀ n, P7298276804429078712.a n = A020838 n

theorem P7298276804429078712.correct : P7298276804429078712.Spec := by
  intro n
  simp only [A020838]

end A020838

/-! ## A020838.P12000000800673275180

`7^(n+2)/3+5*10^(n+1)/3-4*8^(n+1)`
-/

namespace A020838.P12000000800673275180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 ^ (n + 2) : ℚ) / 3 + (5 * 10 ^ (n + 1) : ℚ) / 3 - (4 * 8 ^ (n + 1) : ℚ)

end

end A020838.P12000000800673275180

namespace A020838

/-- `7^(n+2)/3+5*10^(n+1)/3-4*8^(n+1)` -/
def P12000000800673275180.Spec : Prop :=
  ∀ n, P12000000800673275180.a n = (A020838 n : ℚ)

theorem P12000000800673275180.correct : P12000000800673275180.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A020838, Nat.add_sub_cancel, A020838.P12000000800673275180.a, A020838.P7298276804429078712.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A020838, Nat.add_sub_cancel, A020838.P12000000800673275180.a, A020838.P7298276804429078712.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A020838

/-! ## A020838.P7022947507511732363

`Δ[A016257(n)-A016252(n)]`
-/

namespace A020838.P7022947507511732363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016257 n - A016252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020838.P7022947507511732363

namespace A020838

/-- `Δ[A016257(n)-A016252(n)]` -/
def P7022947507511732363.Spec : Prop :=
  ∀ n, P7022947507511732363.a n = A020838 n

end A020838

/-! ## A020838.P2065304475963005405

`(A020970(n)+A020782(n))/2`
-/

namespace A020838.P2065304475963005405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020970 n + A020782 n : ℚ) / 2

end

end A020838.P2065304475963005405

namespace A020838

/-- `(A020970(n)+A020782(n))/2` -/
def P2065304475963005405.Spec : Prop :=
  ∀ n, P2065304475963005405.a n = (A020838 n : ℚ)

end A020838

/-!
# A020847: Decimal expansion of 1/sqrt(90) = sqrt(10)/30.

The programs for A020847, the canonical program `A020847.P14878739603806226551` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020847 has offset 0).

The definition of A020847 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020847.P14878739603806226551

`A096483(A005408(n))%10`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A020847

/-- `A096483(A005408(n))%10` -/
def P14878739603806226551.Spec : Prop :=
  ∀ n, P14878739603806226551.a n = A020847 n

theorem P14878739603806226551.correct : P14878739603806226551.Spec := by
  intro n
  simp only [A020847]

end A020847

/-! ## A020847.P16713837248316051048

`A096483(A004273(n+1))%10`
-/

namespace A020847.P16713837248316051048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096483 (A004273 (n + 1)).toNat) 10

end

end A020847.P16713837248316051048

namespace A020847

/-- `A096483(A004273(n+1))%10` -/
def P16713837248316051048.Spec : Prop :=
  ∀ n, P16713837248316051048.a n = A020847 n

end A020847

/-!
# A020857: Decimal expansion of log_2(3).

The programs for A020857, there is no canonical definition to state claims against.
-/

/-! ## A020857.P11530544180286298956

`A020864(xor(xor(n, a(n-1)), a(n-1)))` with `a(0)=1`
-/

namespace A020857.P11530544180286298956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020864 ((Int.xor (Int.xor (n : ℤ) (a (n - 1))) (a (n - 1))).toNat + 1)

end

end A020857.P11530544180286298956

/-! ## A020857.P15839870839132653065

`A020859(n)-A000007(n)`
-/

namespace A020857.P15839870839132653065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020859 (n + 1) - A000007 n

end

end A020857.P15839870839132653065

/-! ## A020857.P15942360879365151788

`A155921(n)/A239700(a(n-1)+1)` with `a(0)=1`
-/

namespace A020857.P15942360879365151788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A155921 (n + 1) : ℚ) / (A239700 (SequenceMachineLib.roundAway (a (n - 1) + 1)).toNat : ℚ)

end

end A020857.P15942360879365151788

/-! ## A020857.P2832576973364303773

`A020858(n)+A020859(n)-A020862(n)`
-/

namespace A020857.P2832576973364303773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020858 (n + 1) + (A020859 (n + 1) - A020862 (n + 1))

end

end A020857.P2832576973364303773

/-! ## A020857.P837643014179715988

`A020859(n)+A020859(n)-A020864(n)`
-/

namespace A020857.P837643014179715988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020859 (n + 1) + (A020859 (n + 1) - A020864 (n + 1))

end

end A020857.P837643014179715988

/-! ## A020857.P11256643688025385309

`A020858(n)+A020864(n)-A155172(n)`
-/

namespace A020857.P11256643688025385309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020858 (n + 1) + (A020864 (n + 1) - A155172 (n + 1))

end

end A020857.P11256643688025385309

/-! ## A020857.P14338805843174691326

`A020859(n)+A020863(n)-A155693(n)`
-/

namespace A020857.P14338805843174691326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020859 (n + 1) + (A020863 (n + 1) - A155693 (n + 1))

end

end A020857.P14338805843174691326

/-! ## A020857.P14641020407207494962

`A020859(n)+A028508(n)-A028232(n+1)`
-/

namespace A020857.P14641020407207494962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020859 (n + 1) + (A028508 n - A028232 (n + 1))

end

end A020857.P14641020407207494962

/-! ## A020857.P3388783166002198854

`A155921(n)+A005089(A139250(a(n-1))+1)` with `a(0)=1`
-/

namespace A020857.P3388783166002198854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A155921 (n + 1) + A005089 (A139250 (a (n - 1)).toNat + 1).toNat

end

end A020857.P3388783166002198854

/-!
# A020858: Decimal expansion of log_2(5).

The programs for A020858, there is no canonical definition to state claims against.
-/

/-! ## A020858.P7488380715857077257

`A020862(n)-A000007(n)`
-/

namespace A020858.P7488380715857077257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020862 (n + 1) - A000007 n

end

end A020858.P7488380715857077257

/-! ## A020858.P17220527809886946507

`A020862(2*A000007(n)+n)`
-/

namespace A020858.P17220527809886946507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020862 ((2 * A000007 n + (n : ℤ)).toNat + 1)

end

end A020858.P17220527809886946507

/-! ## A020858.P14323131450950143446

`2*A020862(n)-A155172(n)`
-/

namespace A020858.P14323131450950143446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020862 (n + 1) - A155172 (n + 1)

end

end A020858.P14323131450950143446

/-! ## A020858.P9764622459859995370

`A020862(n*A025767(C(2, a(n-1))))` with `a(0)=2`
-/

namespace A020858.P9764622459859995370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A020862 (((n : ℤ) * A025767 (Nat.choose 2 (a (n - 1)).toNat)).toNat + 1)

end

end A020858.P9764622459859995370

/-! ## A020858.P5091877604076880022

`A020862(n)+a(n-1)-A028899(a(n-1))` with `a(0)=2`
-/

namespace A020858.P5091877604076880022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A020862 (n + 1) + a (n - 1) - A028899 (a (n - 1)).toNat

end

end A020858.P5091877604076880022

/-! ## A020858.P7176629609586712886

`A020862(A000007(n)+A000007(n)+n)`
-/

namespace A020858.P7176629609586712886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020862 ((A000007 n + (A000007 n + (n : ℤ))).toNat + 1)

end

end A020858.P7176629609586712886

/-! ## A020858.P6875222581786144372

`A020857(n)+A020862(n)-A020859(n)`
-/

namespace A020858.P6875222581786144372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020857 (n + 1) + (A020862 (n + 1) - A020859 (n + 1))

end

end A020858.P6875222581786144372

/-! ## A020858.P358454151645005560

`A020861(n)+A020862(n)-A154905(n)`
-/

namespace A020858.P358454151645005560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020861 (n + 1) + (A020862 (n + 1) - A154905 (n + 1))

end

end A020858.P358454151645005560

/-! ## A020858.P7876965321525679317

`A020862(n)^A007318(A007318(a(n-1)))` with `a(0)=2`
-/

namespace A020858.P7876965321525679317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (A020862 (n + 1) : ℚ) ^ (A007318 (A007318 (SequenceMachineLib.roundAway (a (n - 1))).toNat).toNat : ℤ)

end

end A020858.P7876965321525679317

/-! ## A020858.P1811010614146234840

`A020862(n)+A028508(n)-A028232(n+1)`
-/

namespace A020858.P1811010614146234840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020862 (n + 1) + (A028508 n - A028232 (n + 1))

end

end A020858.P1811010614146234840

/-!
# A020859: Decimal expansion of log_2(6).

The programs for A020859, there is no canonical definition to state claims against.
-/

/-! ## A020859.P14907940051009827792

`A020857(n)+C(2, n+2)`
-/

namespace A020859.P14907940051009827792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020857 (n + 1) + (Nat.choose 2 (n + 2) : ℤ)

end

end A020859.P14907940051009827792

/-! ## A020859.P5113683444505132850

`A020857(n)+A000007(n)`
-/

namespace A020859.P5113683444505132850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020857 (n + 1) + A000007 n

end

end A020859.P5113683444505132850

/-! ## A020859.P13222937278097377706

`floor(A020857(n)+1/A076821(n+1))`
-/

namespace A020859.P13222937278097377706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A020857 (n + 1) : ℚ) + 1 / (A076821 (n + 1) : ℚ)⌋

end

end A020859.P13222937278097377706

/-! ## A020859.P2758312171139966325

`A155921(n/A239700(a(n-1)+1))` with `a(0)=2`
-/

namespace A020859.P2758312171139966325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A155921 ((SequenceMachineLib.roundAway ((n : ℚ) / (A239700 (a (n - 1) + 1).toNat : ℚ))).toNat + 1)

end

end A020859.P2758312171139966325

/-! ## A020859.P6066276062236544123

`A155921(n)+n%A239700(a(n-1)+1)` with `a(0)=2`
-/

namespace A020859.P6066276062236544123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A155921 (n + 1) + Int.tmod (n : ℤ) (A239700 (a (n - 1) + 1).toNat)

end

end A020859.P6066276062236544123

/-! ## A020859.P12251389716355604867

`A020857(n)+A020862(n)-A020858(n)`
-/

namespace A020859.P12251389716355604867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020857 (n + 1) + (A020862 (n + 1) - A020858 (n + 1))

end

end A020859.P12251389716355604867

/-! ## A020859.P4393009068122402904

`A020857(n)+A154905(n)-A020861(n)`
-/

namespace A020859.P4393009068122402904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020857 (n + 1) + (A154905 (n + 1) - A020861 (n + 1))

end

end A020859.P4393009068122402904

/-! ## A020859.P5544157907620852091

`A020857(n)+A155172(n)-A020862(n)`
-/

namespace A020859.P5544157907620852091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020857 (n + 1) + (A155172 (n + 1) - A020862 (n + 1))

end

end A020859.P5544157907620852091

/-! ## A020859.P13141837068281855163

`A020857(n)+A020914(n)-A204399(n)`
-/

namespace A020859.P13141837068281855163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020857 (n + 1) + (A020914 n - A204399 n)

end

end A020859.P13141837068281855163

/-! ## A020859.P2669246536923806525

`A155921(n)+A005089(A139250(a(n-1))+1)` with `a(0)=2`
-/

namespace A020859.P2669246536923806525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A155921 (n + 1) + A005089 (A139250 (a (n - 1)).toNat + 1).toNat

end

end A020859.P2669246536923806525

/-! ## A020859.P16502671735762363537

`A020857(n)*A020914(A020914(n)-A204399(n))`
-/

namespace A020859.P16502671735762363537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020857 (n + 1) * A020914 (A020914 n - A204399 n).toNat

end

end A020859.P16502671735762363537

/-!
# A020860: Decimal expansion of log(7)/log(2).

The programs for A020860, there is no canonical definition to state claims against.
-/

/-! ## A020860.P15964014407326506809

`A154462(n)-A000007(n)`
-/

namespace A020860.P15964014407326506809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154462 (n + 1) - A000007 n

end

end A020860.P15964014407326506809

/-! ## A020860.P4868390760990843283

`A154462(n)+A034518(a(n-1)+1)` with `a(0)=2`
-/

namespace A020860.P4868390760990843283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A154462 (n + 1) + A034518 (a (n - 1) + 1).toNat

end

end A020860.P4868390760990843283

/-! ## A020860.P15422000258640682398

`A020857(n)+A154462(n)-A020859(n)`
-/

namespace A020860.P15422000258640682398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020857 (n + 1) + (A154462 (n + 1) - A020859 (n + 1))

end

end A020860.P15422000258640682398

/-! ## A020860.P14557659801439518632

`A154462(n)+A132213(A132213(a(n-1)+1)+1)` with `a(0)=2`
-/

namespace A020860.P14557659801439518632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A154462 (n + 1) + A132213 (A132213 (a (n - 1) + 1).toNat + 1).toNat

end

end A020860.P14557659801439518632

/-! ## A020860.P10772945416849689380

`A154462(n)/A014963(A267509(A044846(a(n-1)+1)+1))` with `a(0)=2`
-/

namespace A020860.P10772945416849689380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (A154462 (n + 1) : ℚ) / (A014963 (A267509 (A044846 (SequenceMachineLib.roundAway (a (n - 1) + 1)).toNat + 1).toNat).toNat : ℚ)

end

end A020860.P10772945416849689380

/-! ## A020860.P12646360571392986982

`A154462(n)/A014963(A267509(A267509(a(n-1)+1)+1))` with `a(0)=2`
-/

namespace A020860.P12646360571392986982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (A154462 (n + 1) : ℚ) / (A014963 (A267509 (A267509 (SequenceMachineLib.roundAway (a (n - 1) + 1)).toNat + 1).toNat).toNat : ℚ)

end

end A020860.P12646360571392986982

/-!
# A020862: Decimal expansion of log_2(10).

The programs for A020862, there is no canonical definition to state claims against.
-/

/-! ## A020862.P12340504516825583947

`A020858(C(2, n+2)+n)`
-/

namespace A020862.P12340504516825583947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020858 (Nat.choose 2 (n + 2) + n + 1)

end

end A020862.P12340504516825583947

/-! ## A020862.P22981427907891291

`A020858(A000007(n)+n)`
-/

namespace A020862.P22981427907891291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020858 ((A000007 n + (n : ℤ)).toNat + 1)

end

end A020862.P22981427907891291

/-! ## A020862.P3254611718832401764

`A020858(or(n, A000007(n)))`
-/

namespace A020862.P3254611718832401764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020858 ((Int.lor (n : ℤ) (A000007 n)).toNat + 1)

end

end A020862.P3254611718832401764

/-! ## A020862.P49440135194463816

`A020858(xor(n, A000007(n)))`
-/

namespace A020862.P49440135194463816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020858 ((Int.xor (n : ℤ) (A000007 n)).toNat + 1)

end

end A020862.P49440135194463816

/-! ## A020862.P14265767803203684436

`(A155172(n)+A020858(n))/2`
-/

namespace A020862.P14265767803203684436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155172 (n + 1) + A020858 (n + 1) : ℚ) / 2

end

end A020862.P14265767803203684436

/-! ## A020862.P3455080012016455931

`A020858(n)+A020859(n)-A020857(n)`
-/

namespace A020862.P3455080012016455931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020858 (n + 1) + (A020859 (n + 1) - A020857 (n + 1))

end

end A020862.P3455080012016455931

/-! ## A020862.P11511227136426190886

`A020858(n)+A155693(n)-A020863(n)`
-/

namespace A020862.P11511227136426190886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020858 (n + 1) + (A155693 (n + 1) - A020863 (n + 1))

end

end A020862.P11511227136426190886

/-! ## A020862.P5092246110733673008

`A020858(n-(A020857(n)-A020859(n)))`
-/

namespace A020862.P5092246110733673008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020858 (((n : ℤ) - (A020857 (n + 1) - A020859 (n + 1))).toNat + 1)

end

end A020862.P5092246110733673008

/-! ## A020862.P11742835408456220335

`A028232(n+1)+A020858(n)-A028508(n)`
-/

namespace A020862.P11742835408456220335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028232 (n + 1) + (A020858 (n + 1) - A028508 n)

end

end A020862.P11742835408456220335

/-!
# A020863: Decimal expansion of log_2(11).

The programs for A020863, there is no canonical definition to state claims against.
-/

/-! ## A020863.P15820022774309036305

`A155693(n)-A000007(n)`
-/

namespace A020863.P15820022774309036305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155693 (n + 1) - A000007 n

end

end A020863.P15820022774309036305

/-! ## A020863.P14628057590758446332

`A155693(n)-A000035(A005875(n))`
-/

namespace A020863.P14628057590758446332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155693 (n + 1) - A000035 (A005875 n).toNat

end

end A020863.P14628057590758446332

/-! ## A020863.P6082263653877912120

`A020857(n)+A155693(n)-A020859(n)`
-/

namespace A020863.P6082263653877912120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020857 (n + 1) + (A155693 (n + 1) - A020859 (n + 1))

end

end A020863.P6082263653877912120

/-! ## A020863.P17692337712034015846

`A155693(n)-A000035(A008458(n))`
-/

namespace A020863.P17692337712034015846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155693 (n + 1) - A000035 (A008458 n).toNat

end

end A020863.P17692337712034015846

/-! ## A020863.P3629008327500786392

`A155693(n)-A000035(A022144(n))`
-/

namespace A020863.P3629008327500786392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155693 (n + 1) - A000035 (A022144 n).toNat

end

end A020863.P3629008327500786392

/-! ## A020863.P16631165918641845005

`A155693(n)-A000035(A131883(n+1))`
-/

namespace A020863.P16631165918641845005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155693 (n + 1) - A000035 (A131883 (n + 1)).toNat

end

end A020863.P16631165918641845005

/-!
# A020864: Decimal expansion of log(12)/log(2).

The programs for A020864, there is no canonical definition to state claims against.
-/

/-! ## A020864.P1171312016941576650

`A020859(n)+A000007(n)`
-/

namespace A020864.P1171312016941576650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020859 (n + 1) + A000007 n

end

end A020864.P1171312016941576650

/-! ## A020864.P4986102671483809580

`or(A020857(n), A020859(n))`
-/

namespace A020864.P4986102671483809580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020857 (n + 1)) (A020859 (n + 1))

end

end A020864.P4986102671483809580

/-! ## A020864.P13813851571207696715

`(A155921(n)+A020859(n))/2`
-/

namespace A020864.P13813851571207696715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155921 (n + 1) + A020859 (n + 1) : ℚ) / 2

end

end A020864.P13813851571207696715

/-! ## A020864.P9764364428110157707

`A020859(n)+A020862(n)-A020858(n)`
-/

namespace A020864.P9764364428110157707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020859 (n + 1) + (A020862 (n + 1) - A020858 (n + 1))

end

end A020864.P9764364428110157707

/-! ## A020864.P4739037402336299856

`A020857(n)+A155172(n)-A020858(n)`
-/

namespace A020864.P4739037402336299856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020857 (n + 1) + (A155172 (n + 1) - A020858 (n + 1))

end

end A020864.P4739037402336299856

/-! ## A020864.P16520338176830237089

`A020859(n)+A155693(n)-A020863(n)`
-/

namespace A020864.P16520338176830237089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020859 (n + 1) + (A155693 (n + 1) - A020863 (n + 1))

end

end A020864.P16520338176830237089

/-! ## A020864.P17222388979357541354

`A020858(n)+A155921(n)-A020862(n)`
-/

namespace A020864.P17222388979357541354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020858 (n + 1) + (A155921 (n + 1) - A020862 (n + 1))

end

end A020864.P17222388979357541354

/-! ## A020864.P9737134096063565685

`A007318(A007318(a(n-1)))*A020857(n)` with `a(0)=3`
-/

namespace A020864.P9737134096063565685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A007318 (A007318 (a (n - 1)).toNat).toNat * A020857 (n + 1)

end

end A020864.P9737134096063565685

/-! ## A020864.P15301349090856588599

`A028232(n+1)+A020859(n)-A028508(n)`
-/

namespace A020864.P15301349090856588599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028232 (n + 1) + (A020859 (n + 1) - A028508 n)

end

end A020864.P15301349090856588599

/-! ## A020864.P3660185730034900074

`A020857(n)^A007318(A104763(a(n-1)+1))` with `a(0)=3`
-/

namespace A020864.P3660185730034900074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (A020857 (n + 1) : ℚ) ^ (A007318 (A104763 (SequenceMachineLib.roundAway (a (n - 1) + 1)).toNat).toNat : ℤ)

end

end A020864.P3660185730034900074

/-! ## A020864.P14895984832381210598

`A204399(A020914(n)-A204399(n))+A020857(n)`
-/

namespace A020864.P14895984832381210598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204399 (A020914 n - A204399 n).toNat + A020857 (n + 1)

end

end A020864.P14895984832381210598

/-! ## A020864.P6868297426135927658

`A020857(n)^A007318(A007318(A055998(a(n-1))))` with `a(0)=3`
-/

namespace A020864.P6868297426135927658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (A020857 (n + 1) : ℚ) ^ (A007318 (A007318 (A055998 (SequenceMachineLib.roundAway (a (n - 1))).toNat).toNat).toNat : ℤ)

end

end A020864.P6868297426135927658

/-!
# A020865: Number of forests in Moebius ladder M_n.

The programs for A020865, there is no canonical definition to state claims against.
-/

/-! ## A020865.P14980082503400354821

`A056576((n+1)*C(2*(2*n+1), n)/(2*n+1)-(n+1)/2^val(n+1, 2))`
-/

namespace A020865.P14980082503400354821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056576 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((Nat.choose (2 * (2 * n + 1)) n : ℚ) / (2 * n + 1 : ℚ)) - (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A020865.P14980082503400354821

/-!
# A020866: Number of strong edge-subgraphs in Moebius ladder M_n.

The programs for A020866, the canonical program `A020866.P8518708262098363558` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020866 has offset 2).

The definition of A020866 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020866.P8518708262098363558

`A123304(n+2)-2*A033999(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A020866

/-- `A123304(n+2)-2*A033999(n)` -/
def P8518708262098363558.Spec : Prop :=
  ∀ n, P8518708262098363558.a n = A020866 (n + 2)

theorem P8518708262098363558.correct : P8518708262098363558.Spec := by
  intro n
  simp only [A020866, Nat.add_sub_cancel]

end A020866

/-! ## A020866.P10265460757522052216

`A123304(n+2)+A010684(n)-A010684(n+1)`
-/

namespace A020866.P10265460757522052216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123304 (n + 2) + (A010684 n - A010684 (n + 1))

end

end A020866.P10265460757522052216

namespace A020866

/-- `A123304(n+2)+A010684(n)-A010684(n+1)` -/
def P10265460757522052216.Spec : Prop :=
  ∀ n, P10265460757522052216.a n = A020866 (n + 2)

end A020866

/-!
# A020870: Number of strong single-component edge-subgraphs in Moebius ladder M_n.

The programs for A020870, there is no canonical definition to state claims against.
-/

/-! ## A020870.P1963196407426405778

`A013730(3*(n+1))/A013731(n)²-A359622(n+2)`
-/

namespace A020870.P1963196407426405778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013730 (3 * (n + 1)) : ℚ) / (A013731 n ^ 2 : ℚ) - (A359622 (n + 2) : ℚ)

end

end A020870.P1963196407426405778

/-!
# A020871: Number of spanning trees in a Moebius ladder M_n with 2n vertices.

The programs for A020871, the canonical program `A020871.P9685259222526495419` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020871 has offset 0).

The definition of A020871 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020871.P9685259222526495419

`n*A121401(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A020871

/-- `n*A121401(n)` -/
def P9685259222526495419.Spec : Prop :=
  ∀ n, P9685259222526495419.a n = A020871 n

theorem P9685259222526495419.correct : P9685259222526495419.Spec := by
  intro n
  simp only [A020871]

end A020871

/-! ## A020871.P6870831336772950847

`(floor((sqrt(3)+2)^n)+1)*n/2+n`
-/

namespace A020871.P6870831336772950847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(Real.sqrt (3 : ℝ) + 2) ^ n⌋ + 1 : ℚ) * ((n : ℚ) / 2) + (n : ℚ)

end

end A020871.P6870831336772950847

namespace A020871

/-- `(floor((sqrt(3)+2)^n)+1)*n/2+n` -/
def P6870831336772950847.Spec : Prop :=
  ∀ n, P6870831336772950847.a n = (A020871 n : ℚ)

end A020871

/-! ## A020871.P3915411780593996136

`n*(∑[4*a(n-1)-a(n-2)]+2)` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A020871.P3915411780593996136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5] fun n f1 =>
  4 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A020871.P3915411780593996136

namespace A020871

/-- `n*(∑[4*a(n-1)-a(n-2)]+2)` -/
def P3915411780593996136.Spec : Prop :=
  ∀ n, P3915411780593996136.a n = A020871 n

end A020871

/-! ## A020871.P750724725029049625

`n*(A001075(n)+1)`
-/

namespace A020871.P750724725029049625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A001075 n + 1)

end

end A020871.P750724725029049625

namespace A020871

/-- `n*(A001075(n)+1)` -/
def P750724725029049625.Spec : Prop :=
  ∀ n, P750724725029049625.a n = A020871 n

end A020871

/-! ## A020871.P3677211811890082937

`n*(A092184(n)+2)`
-/

namespace A020871.P3677211811890082937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A092184 n + 2)

end

end A020871.P3677211811890082937

namespace A020871

/-- `n*(A092184(n)+2)` -/
def P3677211811890082937.Spec : Prop :=
  ∀ n, P3677211811890082937.a n = A020871 n

end A020871

/-! ## A020871.P10542373705968758527

`n*(A072110(n)+A001835(n))`
-/

namespace A020871.P10542373705968758527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A072110 n + A001835 n)

end

end A020871.P10542373705968758527

namespace A020871

/-- `n*(A072110(n)+A001835(n))` -/
def P10542373705968758527.Spec : Prop :=
  ∀ n, P10542373705968758527.a n = A020871 n

end A020871

/-! ## A020871.P13690644664238472855

`n*(A003500(n)-A092184(n))`
-/

namespace A020871.P13690644664238472855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A003500 n - A092184 n)

end

end A020871.P13690644664238472855

namespace A020871

/-- `n*(A003500(n)-A092184(n))` -/
def P13690644664238472855.Spec : Prop :=
  ∀ n, P13690644664238472855.a n = A020871 n

end A020871

/-! ## A020871.P4994822723857278632

`n*(A102206(n)-A001834(n))`
-/

namespace A020871.P4994822723857278632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A102206 n - A001834 n)

end

end A020871.P4994822723857278632

namespace A020871

/-- `n*(A102206(n)-A001834(n))` -/
def P4994822723857278632.Spec : Prop :=
  ∀ n, P4994822723857278632.a n = A020871 n

end A020871

/-! ## A020871.P7702791692492778090

`n*(A101879(n)+A101265(n+1))`
-/

namespace A020871.P7702791692492778090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A101879 n + A101265 (n + 1))

end

end A020871.P7702791692492778090

namespace A020871

/-- `n*(A101879(n)+A101265(n+1))` -/
def P7702791692492778090.Spec : Prop :=
  ∀ n, P7702791692492778090.a n = A020871 n

end A020871

/-! ## A020871.P1186601782289853752

`n*(A151961(n+1)-A016064(n))`
-/

namespace A020871.P1186601782289853752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A151961 (n + 1) - A016064 n)

end

end A020871.P1186601782289853752

namespace A020871

/-- `n*(A151961(n+1)-A016064(n))` -/
def P1186601782289853752.Spec : Prop :=
  ∀ n, P1186601782289853752.a n = A020871 n

end A020871

/-! ## A020871.P17297081059009855608

`n*(A133161(n+1)-A082840(n))`
-/

namespace A020871.P17297081059009855608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A133161 (n + 1) - A082840 n)

end

end A020871.P17297081059009855608

namespace A020871

/-- `n*(A133161(n+1)-A082840(n))` -/
def P17297081059009855608.Spec : Prop :=
  ∀ n, P17297081059009855608.a n = A020871 n

end A020871

/-!
# A020873: a(n) is number of cycles in Moebius ladder M_n.

The programs for A020873, the canonical program `A020873.P5294214750322063011` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020873 has offset 0).

The definition of A020873 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020873.P5294214750322063011

`2^n+n²-n+1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020873

/-- `2^n+n²-n+1` -/
def P5294214750322063011.Spec : Prop :=
  ∀ n, P5294214750322063011.a n = A020873 n

theorem P5294214750322063011.correct : P5294214750322063011.Spec := by
  intro n
  simp only [A020873]

end A020873

/-! ## A020873.P7266506044298223706

`∑[2*(a(n-1)+3-n)]` with `a(0)=2, a(1)=1`
-/

namespace A020873.P7266506044298223706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  2 * (f1 (n - 1) + (3 - (n : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020873.P7266506044298223706

namespace A020873

/-- `∑[2*(a(n-1)+3-n)]` -/
def P7266506044298223706.Spec : Prop :=
  ∀ n, P7266506044298223706.a n = A020873 n

end A020873

/-! ## A020873.P12658031673808141060

`∑[2*(3-(n-a(n-1)))]` with `a(0)=2, a(1)=1`
-/

namespace A020873.P12658031673808141060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  2 * (3 - ((n : ℤ) - f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020873.P12658031673808141060

namespace A020873

/-- `∑[2*(3-(n-a(n-1)))]` -/
def P12658031673808141060.Spec : Prop :=
  ∀ n, P12658031673808141060.a n = A020873 n

end A020873

/-! ## A020873.P178585162956748948

`∑[∑[a(n-1)+a(n-1)-2]]` with `a(0)=2, a(1)=-1, a(2)=3`
-/

namespace A020873.P178585162956748948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, -1, 3] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020873.P178585162956748948

namespace A020873

/-- `∑[∑[a(n-1)+a(n-1)-2]]` -/
def P178585162956748948.Spec : Prop :=
  ∀ n, P178585162956748948.a n = A020873 n

end A020873

/-! ## A020873.P725167731147881954

`∑[∑[a(n-1)-(2-a(n-1))]]` with `a(0)=2, a(1)=-1, a(2)=3`
-/

namespace A020873.P725167731147881954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, -1, 3] fun n f2 =>
  f2 (n - 1) - (2 - f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020873.P725167731147881954

namespace A020873

/-- `∑[∑[a(n-1)-(2-a(n-1))]]` -/
def P725167731147881954.Spec : Prop :=
  ∀ n, P725167731147881954.a n = A020873 n

end A020873

/-! ## A020873.P2586735312051761418

`xor(n²-n, A000051(n))`
-/

namespace A020873.P2586735312051761418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n ^ 2 : ℤ) - (n : ℤ)) (A000051 n)

end

end A020873.P2586735312051761418

namespace A020873

/-- `xor(n²-n, A000051(n))` -/
def P2586735312051761418.Spec : Prop :=
  ∀ n, P2586735312051761418.a n = A020873 n

end A020873

/-! ## A020873.P2268158649443291339

`or(A000225(n)+2, n²-n)`
-/

namespace A020873.P2268158649443291339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000225 n + 2) ((n ^ 2 : ℤ) - (n : ℤ))

end

end A020873.P2268158649443291339

namespace A020873

/-- `or(A000225(n)+2, n²-n)` -/
def P2268158649443291339.Spec : Prop :=
  ∀ n, P2268158649443291339.a n = A020873 n

end A020873

/-! ## A020873.P4935321540120904569

`abs(abs(A131924(n)+1-n)-n)`
-/

namespace A020873.P4935321540120904569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|A131924 n + (1 - (n : ℤ))| - (n : ℤ))|

end

end A020873.P4935321540120904569

namespace A020873

/-- `abs(abs(A131924(n)+1-n)-n)` -/
def P4935321540120904569.Spec : Prop :=
  ∀ n, P4935321540120904569.a n = A020873 n

end A020873

/-! ## A020873.P1255869807506758061

`abs(n²+A000079(n)+1-n)`
-/

namespace A020873.P1255869807506758061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) + (A000079 n + 1) - (n : ℤ)|

end

end A020873.P1255869807506758061

namespace A020873

/-- `abs(n²+A000079(n)+1-n)` -/
def P1255869807506758061.Spec : Prop :=
  ∀ n, P1255869807506758061.a n = A020873 n

end A020873

/-! ## A020873.P6095768494516613855

`xor(A002061(n), A171559(n))`
-/

namespace A020873.P6095768494516613855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002061 n) (A171559 n)

end

end A020873.P6095768494516613855

namespace A020873

/-- `xor(A002061(n), A171559(n))` -/
def P6095768494516613855.Spec : Prop :=
  ∀ n, P6095768494516613855.a n = A020873 n

end A020873

/-! ## A020873.P5154974055964342918

`xor(A054977(n), A290699(n))`
-/

namespace A020873.P5154974055964342918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A054977 n) (A290699 n)

end

end A020873.P5154974055964342918

namespace A020873

/-- `xor(A054977(n), A290699(n))` -/
def P5154974055964342918.Spec : Prop :=
  ∀ n, P5154974055964342918.a n = A020873 n

end A020873

/-! ## A020873.P6764171211714879163

`or(∑[A004275(n)], A000051(n))`
-/

namespace A020873.P6764171211714879163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000051 n)

end

end A020873.P6764171211714879163

namespace A020873

/-- `or(∑[A004275(n)], A000051(n))` -/
def P6764171211714879163.Spec : Prop :=
  ∀ n, P6764171211714879163.a n = A020873 n

end A020873

/-! ## A020873.P5973010087371389690

`xor(A000051(n), A279019(n+4))`
-/

namespace A020873.P5973010087371389690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000051 n) (A279019 (n + 4))

end

end A020873.P5973010087371389690

namespace A020873

/-- `xor(A000051(n), A279019(n+4))` -/
def P5973010087371389690.Spec : Prop :=
  ∀ n, P5973010087371389690.a n = A020873 n

end A020873

/-! ## A020873.P5517465582114839420

`floor(A000079(n)+A051890(n)/2)`
-/

namespace A020873.P5517465582114839420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000079 n : ℚ) + (A051890 n : ℚ) / 2⌋

end

end A020873.P5517465582114839420

namespace A020873

/-- `floor(A000079(n)+A051890(n)/2)` -/
def P5517465582114839420.Spec : Prop :=
  ∀ n, P5517465582114839420.a n = A020873 n

end A020873

/-! ## A020873.P9539504425840901323

`floor(A000079(n)+((n-1)*(A005563(n)-(n-1))+2)/(n+1))`
-/

namespace A020873.P9539504425840901323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000079 n : ℚ) + (((n : ℤ) - 1) * (A005563 n - ((n : ℤ) - 1)) + 2 : ℚ) / (n + 1 : ℚ)⌋

end

end A020873.P9539504425840901323

namespace A020873

/-- `floor(A000079(n)+((n-1)*(A005563(n)-(n-1))+2)/(n+1))` -/
def P9539504425840901323.Spec : Prop :=
  ∀ n, P9539504425840901323.a n = A020873 n

end A020873

/-! ## A020873.P12960531703103162127

`Δ[2^n+2*C(n, 3)+1+n]`
-/

namespace A020873.P12960531703103162127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + (2 * Nat.choose n 3 + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A020873.P12960531703103162127

namespace A020873

/-- `Δ[2^n+2*C(n, 3)+1+n]` -/
def P12960531703103162127.Spec : Prop :=
  ∀ n, P12960531703103162127.a n = A020873 n

end A020873

/-!
# A020874: Number of paths in Moebius ladder M_n.

The programs for A020874, the canonical program `A020874.P2297157166849985116` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020874 has offset 0).

The definition of A020874 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020874.P2297157166849985116

`10*n*2^n-n^3-5*n²-11*n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020874

/-- `10*n*2^n-n^3-5*n²-11*n` -/
def P2297157166849985116.Spec : Prop :=
  ∀ n, P2297157166849985116.a n = A020874 n

theorem P2297157166849985116.correct : P2297157166849985116.Spec := by
  intro n
  simp only [A020874]

end A020874

/-! ## A020874.P4162170800099943215

`n*(∑[2*(a(n-1)+n)]-2)` with `a(0)=1`
-/

namespace A020874.P4162170800099943215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * (f1 (n - 1) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2)

end

end A020874.P4162170800099943215

namespace A020874

/-- `n*(∑[2*(a(n-1)+n)]-2)` -/
def P4162170800099943215.Spec : Prop :=
  ∀ n, P4162170800099943215.a n = A020874 n

end A020874

/-! ## A020874.P9592086516459636503

`n*(∑[A097809(n)]-2)`
-/

namespace A020874.P9592086516459636503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097809 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A020874.P9592086516459636503

namespace A020874

/-- `n*(∑[A097809(n)]-2)` -/
def P9592086516459636503.Spec : Prop :=
  ∀ n, P9592086516459636503.a n = A020874 n

end A020874

/-! ## A020874.P10656377545876703955

`n*∑[A134062(n)-A005843(n+1)]`
-/

namespace A020874.P10656377545876703955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134062 n - A005843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A020874.P10656377545876703955

namespace A020874

/-- `n*∑[A134062(n)-A005843(n+1)]` -/
def P10656377545876703955.Spec : Prop :=
  ∀ n, P10656377545876703955.a n = A020874 n

end A020874

/-!
# A020875: Number of (undirected) Hamiltonian paths in n-Moebius ladder.

The programs for A020875, the canonical program `A020875.P6811453810729654905` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020875 has offset 0).

The definition of A020875 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020875.P6811453810729654905

`n*(n%2+n²+2)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020875

/-- `n*(n%2+n²+2)` -/
def P6811453810729654905.Spec : Prop :=
  ∀ n, (P6811453810729654905.a n : ℤ) = A020875 n

theorem P6811453810729654905.correct : P6811453810729654905.Spec := by
  intro n
  simp only [A020875]

end A020875

/-! ## A020875.P6931423792824299230

`n*(n²-gcd(2, n)+4)`
-/

namespace A020875.P6931423792824299230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n ^ 2 : ℤ) - (Nat.gcd 2 n : ℤ) + 4)

end

end A020875.P6931423792824299230

namespace A020875

/-- `n*(n²-gcd(2, n)+4)` -/
def P6931423792824299230.Spec : Prop :=
  ∀ n, P6931423792824299230.a n = A020875 n

end A020875

/-! ## A020875.P13654469141643849769

`2*n*∑[abs(or(1, -n))]`
-/

namespace A020875.P13654469141643849769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (-(n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A020875.P13654469141643849769

namespace A020875

/-- `2*n*∑[abs(or(1, -n))]` -/
def P13654469141643849769.Spec : Prop :=
  ∀ n, P13654469141643849769.a n = A020875 n

end A020875

/-! ## A020875.P15356094422380952748

`n*n²+lcm(2, n)+n`
-/

namespace A020875.P15356094422380952748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2 + (Nat.lcm 2 n + n)

end

end A020875.P15356094422380952748

namespace A020875

/-- `n*n²+lcm(2, n)+n` -/
def P15356094422380952748.Spec : Prop :=
  ∀ n, (P15356094422380952748.a n : ℤ) = A020875 n

end A020875

/-! ## A020875.P14969818263296451290

`2*n*(ceil(n²/2)+1)`
-/

namespace A020875.P14969818263296451290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * (⌈(n ^ 2 : ℚ) / 2⌉ + 1))

end

end A020875.P14969818263296451290

namespace A020875

/-- `2*n*(ceil(n²/2)+1)` -/
def P14969818263296451290.Spec : Prop :=
  ∀ n, P14969818263296451290.a n = A020875 n

end A020875

/-! ## A020875.P337271780110285036

`A034262(n)+lcm(2, n)`
-/

namespace A020875.P337271780110285036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034262 n + (Nat.lcm 2 n : ℤ)

end

end A020875.P337271780110285036

namespace A020875

/-- `A034262(n)+lcm(2, n)` -/
def P337271780110285036.Spec : Prop :=
  ∀ n, P337271780110285036.a n = A020875 n

end A020875

/-! ## A020875.P15266598527812172644

`2*n+2*n*A000982(n)`
-/

namespace A020875.P15266598527812172644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + 2 * ((n : ℤ) * A000982 n)

end

end A020875.P15266598527812172644

namespace A020875

/-- `2*n+2*n*A000982(n)` -/
def P15266598527812172644.Spec : Prop :=
  ∀ n, P15266598527812172644.a n = A020875 n

end A020875

/-! ## A020875.P12704958254581925362

`A109043(n)+A034262(n)`
-/

namespace A020875.P12704958254581925362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 n + A034262 n

end

end A020875.P12704958254581925362

namespace A020875

/-- `A109043(n)+A034262(n)` -/
def P12704958254581925362.Spec : Prop :=
  ∀ n, P12704958254581925362.a n = A020875 n

end A020875

/-! ## A020875.P6537579072407764102

`A155965(n)-A022998(n)`
-/

namespace A020875.P6537579072407764102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155965 n - A022998 n

end

end A020875.P6537579072407764102

namespace A020875

/-- `A155965(n)-A022998(n)` -/
def P6537579072407764102.Spec : Prop :=
  ∀ n, P6537579072407764102.a n = A020875 n

end A020875

/-! ## A020875.P5029436263426180508

`A217873(n)-A212686(n)`
-/

namespace A020875.P5029436263426180508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217873 n - A212686 n

end

end A020875.P5029436263426180508

namespace A020875

/-- `A217873(n)-A212686(n)` -/
def P5029436263426180508.Spec : Prop :=
  ∀ n, P5029436263426180508.a n = A020875 n

end A020875

/-! ## A020875.P5838557600797999880

`A000578(n)+n*A010693(n)`
-/

namespace A020875.P5838557600797999880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n + (n : ℤ) * A010693 n

end

end A020875.P5838557600797999880

namespace A020875

/-- `A000578(n)+n*A010693(n)` -/
def P5838557600797999880.Spec : Prop :=
  ∀ n, P5838557600797999880.a n = A020875 n

end A020875

/-! ## A020875.P921588244395394102

`A034262(n)+n*A000034(n)`
-/

namespace A020875.P921588244395394102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034262 n + (n : ℤ) * A000034 n

end

end A020875.P921588244395394102

namespace A020875

/-- `A034262(n)+n*A000034(n)` -/
def P921588244395394102.Spec : Prop :=
  ∀ n, P921588244395394102.a n = A020875 n

end A020875

/-! ## A020875.P14483562631462821341

`A054602(n)+n*A000035(n)`
-/

namespace A020875.P14483562631462821341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054602 n + (n : ℤ) * A000035 n

end

end A020875.P14483562631462821341

namespace A020875

/-- `A054602(n)+n*A000035(n)` -/
def P14483562631462821341.Spec : Prop :=
  ∀ n, P14483562631462821341.a n = A020875 n

end A020875

/-! ## A020875.P9963087416804701419

`n*A080335(n)-A000384(n)`
-/

namespace A020875.P9963087416804701419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A080335 n - A000384 n

end

end A020875.P9963087416804701419

namespace A020875

/-- `n*A080335(n)-A000384(n)` -/
def P9963087416804701419.Spec : Prop :=
  ∀ n, P9963087416804701419.a n = A020875 n

end A020875

/-! ## A020875.P7057234079302940522

`2*n+A000982(n)*A004277(n)`
-/

namespace A020875.P7057234079302940522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A000982 n * A004277 n

end

end A020875.P7057234079302940522

namespace A020875

/-- `2*n+A000982(n)*A004277(n)` -/
def P7057234079302940522.Spec : Prop :=
  ∀ n, P7057234079302940522.a n = A020875 n

end A020875

/-! ## A020875.P14768034381744098611

`A005843(n)+A000982(n)*A005843(n)`
-/

namespace A020875.P14768034381744098611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A000982 n * A005843 n

end

end A020875.P14768034381744098611

namespace A020875

/-- `A005843(n)+A000982(n)*A005843(n)` -/
def P14768034381744098611.Spec : Prop :=
  ∀ n, P14768034381744098611.a n = A020875 n

end A020875

/-! ## A020875.P16439227645836657221

`2*(n²+n)+n*A182568(2*n)`
-/

namespace A020875.P16439227645836657221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n ^ 2 + n) : ℤ) + (n : ℤ) * A182568 (2 * n)

end

end A020875.P16439227645836657221

namespace A020875

/-- `2*(n²+n)+n*A182568(2*n)` -/
def P16439227645836657221.Spec : Prop :=
  ∀ n, P16439227645836657221.a n = A020875 n

end A020875

/-! ## A020875.P14126656154468254404

`n*A008811(2*n)-A001489(2*n)`
-/

namespace A020875.P14126656154468254404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008811 (2 * n) - A001489 (2 * n)

end

end A020875.P14126656154468254404

namespace A020875

/-- `n*A008811(2*n)-A001489(2*n)` -/
def P14126656154468254404.Spec : Prop :=
  ∀ n, P14126656154468254404.a n = A020875 n

end A020875

/-! ## A020875.P11113058493413528502

`record[Δ[A046092(A024165(n+1))]]`
-/

namespace A020875.P11113058493413528502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 (A024165 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020875.P11113058493413528502

namespace A020875

/-- `record[Δ[A046092(A024165(n+1))]]` -/
def P11113058493413528502.Spec : Prop :=
  ∀ n, P11113058493413528502.a n = A020875 n

end A020875

/-!
# A020876: a(n) = ((5+sqrt(5))/2)^n + ((5-sqrt(5))/2)^n.

The programs for A020876, the canonical program `A020876.P14077743003153328435` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020876 has offset 0).

The definition of A020876 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020876.P14077743003153328435

`5*a(n-1)-5*a(n-2)` with `a(0)=2, a(1)=5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020876

/-- `5*a(n-1)-5*a(n-2)` -/
def P14077743003153328435.Spec : Prop :=
  ∀ n, P14077743003153328435.a n = A020876 n

theorem P14077743003153328435.correct : P14077743003153328435.Spec := by
  intro n
  simp only [A020876]

end A020876

/-! ## A020876.P7575554778577121989

`ogf((2-5x)/(1-5x+5x^2))`
-/

namespace A020876.P7575554778577121989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -5] [1, -5, 5] n

end

end A020876.P7575554778577121989

namespace A020876

/-- `ogf((2-5x)/(1-5x+5x^2))` -/
def P7575554778577121989.Spec : Prop :=
  ∀ n, P7575554778577121989.a n = A020876 n

end A020876

/-! ## A020876.P3218158354213713721

`5*(a(n-1)-a(n-2))` with `a(0)=2, a(1)=5`
-/

namespace A020876.P3218158354213713721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  5 * (a (n - 1) - a (n - 2))

end

end A020876.P3218158354213713721

namespace A020876

/-- `5*(a(n-1)-a(n-2))` -/
def P3218158354213713721.Spec : Prop :=
  ∀ n, P3218158354213713721.a n = A020876 n

theorem P3218158354213713721.correct : P3218158354213713721.Spec := by
  intro n
  simp only [A020876, Nat.add_sub_cancel, A020876.P3218158354213713721.a, A020876.P14077743003153328435.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A020876

/-! ## A020876.P5468947080660052741

`(sqrt(5)*ϕ)^n+(sqrt(5)/ϕ)^n`
-/

namespace A020876.P5468947080660052741
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (5 : ℝ) * Real.goldenRatio) ^ n + (Real.sqrt (5 : ℝ) / Real.goldenRatio) ^ n

end

end A020876.P5468947080660052741

namespace A020876

/-- `(sqrt(5)*ϕ)^n+(sqrt(5)/ϕ)^n` -/
def P5468947080660052741.Spec : Prop :=
  ∀ n, P5468947080660052741.a n = (A020876 n : ℝ)

end A020876

/-! ## A020876.P4013000295159663160

`A093129(n+1)`
-/

namespace A020876.P4013000295159663160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093129 (n + 1)

end

end A020876.P4013000295159663160

namespace A020876

/-- `A093129(n+1)` -/
def P4013000295159663160.Spec : Prop :=
  ∀ n, P4013000295159663160.a n = A020876 n

end A020876

/-! ## A020876.P7158341161507399907

`record[A093129(abs(1-n))]`
-/

namespace A020876.P7158341161507399907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093129 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020876.P7158341161507399907

namespace A020876

/-- `record[A093129(abs(1-n))]` -/
def P7158341161507399907.Spec : Prop :=
  ∀ n, P7158341161507399907.a n = A020876 n

end A020876

/-! ## A020876.P2223732009242749979

`∑[floor(A081567(n)+acot(n))]`
-/

namespace A020876.P2223732009242749979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A081567 n : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020876.P2223732009242749979

namespace A020876

/-- `∑[floor(A081567(n)+acot(n))]` -/
def P2223732009242749979.Spec : Prop :=
  ∀ n, P2223732009242749979.a n = A020876 n

end A020876

/-! ## A020876.P13632936480714516011

`A005247(n)*A056451(n)`
-/

namespace A020876.P13632936480714516011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005247 n * A056451 n

end

end A020876.P13632936480714516011

namespace A020876

/-- `A005247(n)*A056451(n)` -/
def P13632936480714516011.Spec : Prop :=
  ∀ n, P13632936480714516011.a n = A020876 n

end A020876

/-! ## A020876.P5244080309184091119

`∑[A178381(A004273(n)+2)]`
-/

namespace A020876.P5244080309184091119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178381 (A004273 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020876.P5244080309184091119

namespace A020876

/-- `∑[A178381(A004273(n)+2)]` -/
def P5244080309184091119.Spec : Prop :=
  ∀ n, P5244080309184091119.a n = A020876 n

end A020876

/-! ## A020876.P3145593184462474524

`floor(A189315(n)/2)`
-/

namespace A020876.P3145593184462474524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A189315 n : ℚ) / 2⌋

end

end A020876.P3145593184462474524

namespace A020876

/-- `floor(A189315(n)/2)` -/
def P3145593184462474524.Spec : Prop :=
  ∀ n, P3145593184462474524.a n = A020876 n

end A020876

/-! ## A020876.P4632713989069977006

`Δ[A260304(n+1)]`
-/

namespace A020876.P4632713989069977006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020876.P4632713989069977006

namespace A020876

/-- `Δ[A260304(n+1)]` -/
def P4632713989069977006.Spec : Prop :=
  ∀ n, P4632713989069977006.a n = A020876 n

end A020876

/-! ## A020876.P15698792659670744113

`A260304(n+3)/5`
-/

namespace A020876.P15698792659670744113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260304 (n + 3) : ℚ) / 5

end

end A020876.P15698792659670744113

namespace A020876

/-- `A260304(n+3)/5` -/
def P15698792659670744113.Spec : Prop :=
  ∀ n, P15698792659670744113.a n = (A020876 n : ℚ)

end A020876

/-! ## A020876.P15742349707387757222

`A093123(n+1)/A000079(n+1)`
-/

namespace A020876.P15742349707387757222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093123 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A020876.P15742349707387757222

namespace A020876

/-- `A093123(n+1)/A000079(n+1)` -/
def P15742349707387757222.Spec : Prop :=
  ∀ n, P15742349707387757222.a n = (A020876 n : ℚ)

end A020876

/-! ## A020876.P6600662572171007382

`A093123(n+1)/A011782(n+2)`
-/

namespace A020876.P6600662572171007382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093123 (n + 1) : ℚ) / (A011782 (n + 2) : ℚ)

end

end A020876.P6600662572171007382

namespace A020876

/-- `A093123(n+1)/A011782(n+2)` -/
def P6600662572171007382.Spec : Prop :=
  ∀ n, P6600662572171007382.a n = (A020876 n : ℚ)

end A020876

/-!
# A020877: Number of matchings in Moebius ladder M_n.

The programs for A020877, the canonical program `A020877.P8157097664321090601` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020877 has offset 2).

The definition of A020877 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020877.P8157097664321090601

`2*a(n-1)+4*a(n-2)-a(n-4)` with `a(0)=10, a(1)=34, a(2)=106, a(3)=344`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020877

/-- `2*a(n-1)+4*a(n-2)-a(n-4)` -/
def P8157097664321090601.Spec : Prop :=
  ∀ n, P8157097664321090601.a n = A020877 (n + 2)

theorem P8157097664321090601.correct : P8157097664321090601.Spec := by
  intro n
  simp only [A020877, Nat.add_sub_cancel]

end A020877

/-! ## A020877.P16340186371613542227

`A061703(n+2)-A010673(n+1)`
-/

namespace A020877.P16340186371613542227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061703 (n + 2) - A010673 (n + 1)

end

end A020877.P16340186371613542227

namespace A020877

/-- `A061703(n+2)-A010673(n+1)` -/
def P16340186371613542227.Spec : Prop :=
  ∀ n, P16340186371613542227.a n = A020877 (n + 2)

end A020877

/-! ## A020877.P2388572532641055961

`A102080(n+2)+2*A033999(n+1)`
-/

namespace A020877.P2388572532641055961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102080 (n + 2) + 2 * A033999 (n + 1)

end

end A020877.P2388572532641055961

namespace A020877

/-- `A102080(n+2)+2*A033999(n+1)` -/
def P2388572532641055961.Spec : Prop :=
  ∀ n, P2388572532641055961.a n = A020877 (n + 2)

end A020877

/-! ## A020877.P4074170440436594505

`A102080(n+2)+2/A087960(2*n+1)`
-/

namespace A020877.P4074170440436594505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102080 (n + 2) : ℚ) + 2 / (A087960 (2 * n + 1) : ℚ)

end

end A020877.P4074170440436594505

namespace A020877

/-- `A102080(n+2)+2/A087960(2*n+1)` -/
def P4074170440436594505.Spec : Prop :=
  ∀ n, P4074170440436594505.a n = (A020877 (n + 2) : ℚ)

end A020877

/-! ## A020877.P14727830345589529010

`A102080(n+2)+A087960(2*n+1)-A087960(2*n)`
-/

namespace A020877.P14727830345589529010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102080 (n + 2) + (A087960 (2 * n + 1) - A087960 (2 * n))

end

end A020877.P14727830345589529010

namespace A020877

/-- `A102080(n+2)+A087960(2*n+1)-A087960(2*n)` -/
def P14727830345589529010.Spec : Prop :=
  ∀ n, P14727830345589529010.a n = A020877 (n + 2)

end A020877

/-! ## A020877.P14767455937369034630

`Δ[A087960(n²)+∑[A102080(n+1)]]`
-/

namespace A020877.P14767455937369034630
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102080 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (n ^ 2) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020877.P14767455937369034630

namespace A020877

/-- `Δ[A087960(n²)+∑[A102080(n+1)]]` -/
def P14767455937369034630.Spec : Prop :=
  ∀ n, P14767455937369034630.a n = A020877 (n + 2)

end A020877

/-!
# A020878: Number of maximum matchings in the n-Moebius ladder M_n.

The programs for A020878, the canonical program `A020878.P2717610554730428774` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020878 has offset 0).

The definition of A020878 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020878.P2717610554730428774

`A001350(n)+2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A020878

/-- `A001350(n)+2` -/
def P2717610554730428774.Spec : Prop :=
  ∀ n, P2717610554730428774.a n = A020878 n

theorem P2717610554730428774.correct : P2717610554730428774.Spec := by
  intro n
  simp only [A020878]

end A020878

/-! ## A020878.P6404732513130796991

`a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` with `a(0)=2, a(1)=3, a(2)=3, a(3)=6`
-/

namespace A020878.P6404732513130796991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 3, 6] fun n a =>
  a (n - 1) + 2 * a (n - 2) - a (n - 3) - a (n - 4)

end

end A020878.P6404732513130796991

namespace A020878

/-- `a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` -/
def P6404732513130796991.Spec : Prop :=
  ∀ n, P6404732513130796991.a n = A020878 n

end A020878

/-! ## A020878.P15207095586313934424

`ogf((2+x-4x^2-x^3)/(1-x-2x^2+x^3+x^4))`
-/

namespace A020878.P15207095586313934424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, -4, -1] [1, -1, -2, 1, 1] n

end

end A020878.P15207095586313934424

namespace A020878

/-- `ogf((2+x-4x^2-x^3)/(1-x-2x^2+x^3+x^4))` -/
def P15207095586313934424.Spec : Prop :=
  ∀ n, P15207095586313934424.a n = A020878 n

end A020878

/-! ## A020878.P13545985442088107141

`a(n-3)+2*(a(n-2)-1)` with `a(0)=2, a(1)=3, a(2)=3`
-/

namespace A020878.P13545985442088107141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 3] fun n a =>
  a (n - 3) + 2 * (a (n - 2) - 1)

end

end A020878.P13545985442088107141

namespace A020878

/-- `a(n-3)+2*(a(n-2)-1)` -/
def P13545985442088107141.Spec : Prop :=
  ∀ n, P13545985442088107141.a n = A020878 n

end A020878

/-! ## A020878.P2532195823277919696

`a(n-3)-2*(1-a(n-2))` with `a(0)=2, a(1)=3, a(2)=3`
-/

namespace A020878.P2532195823277919696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 3] fun n a =>
  a (n - 3) - 2 * (1 - a (n - 2))

end

end A020878.P2532195823277919696

namespace A020878

/-- `a(n-3)-2*(1-a(n-2))` -/
def P2532195823277919696.Spec : Prop :=
  ∀ n, P2532195823277919696.a n = A020878 n

end A020878

/-! ## A020878.P7819001580240823882

`∑[a(n-1)+a(n-2)]-(-1)^n` with `a(0)=3, a(1)=-1`
-/

namespace A020878.P7819001580240823882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, -1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (-1) ^ n

end

end A020878.P7819001580240823882

namespace A020878

/-- `∑[a(n-1)+a(n-2)]-(-1)^n` -/
def P7819001580240823882.Spec : Prop :=
  ∀ n, P7819001580240823882.a n = A020878 n

end A020878

/-! ## A020878.P11630168492690313695

`a(n-2)-2+a(n-2)+a(n-3)` with `a(0)=2, a(1)=3, a(2)=3`
-/

namespace A020878.P11630168492690313695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 3] fun n a =>
  a (n - 2) - 2 + (a (n - 2) + a (n - 3))

end

end A020878.P11630168492690313695

namespace A020878

/-- `a(n-2)-2+a(n-2)+a(n-3)` -/
def P11630168492690313695.Spec : Prop :=
  ∀ n, P11630168492690313695.a n = A020878 n

end A020878

/-! ## A020878.P15772464754498681307

`a(n-2)-(2-a(n-2)-a(n-3))` with `a(0)=2, a(1)=3, a(2)=3`
-/

namespace A020878.P15772464754498681307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 3] fun n a =>
  a (n - 2) - (2 - a (n - 2) - a (n - 3))

end

end A020878.P15772464754498681307

namespace A020878

/-- `a(n-2)-(2-a(n-2)-a(n-3))` -/
def P15772464754498681307.Spec : Prop :=
  ∀ n, P15772464754498681307.a n = A020878 n

end A020878

/-! ## A020878.P3556102965061275319

`A098600(n)+1`
-/

namespace A020878.P3556102965061275319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098600 n + 1

end

end A020878.P3556102965061275319

namespace A020878

/-- `A098600(n)+1` -/
def P3556102965061275319.Spec : Prop :=
  ∀ n, P3556102965061275319.a n = A020878 n

end A020878

/-! ## A020878.P2894271617981156745

`abs(A355021(n))+1`
-/

namespace A020878.P2894271617981156745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A355021 n| + 1

end

end A020878.P2894271617981156745

namespace A020878

/-- `abs(A355021(n))+1` -/
def P2894271617981156745.Spec : Prop :=
  ∀ n, P2894271617981156745.a n = A020878 n

end A020878

/-! ## A020878.P9740813432291852287

`A181716(n+1)+1`
-/

namespace A020878.P9740813432291852287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181716 (n + 1) + 1

end

end A020878.P9740813432291852287

namespace A020878

/-- `A181716(n+1)+1` -/
def P9740813432291852287.Spec : Prop :=
  ∀ n, P9740813432291852287.a n = A020878 n

end A020878

/-! ## A020878.P6426868047288440658

`Δ[or(1, n)]+A000032(n)`
-/

namespace A020878.P6426868047288440658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + A000032 n

end

end A020878.P6426868047288440658

namespace A020878

/-- `Δ[or(1, n)]+A000032(n)` -/
def P6426868047288440658.Spec : Prop :=
  ∀ n, P6426868047288440658.a n = A020878 n

end A020878

/-! ## A020878.P134256340841695159

`A000032(n-1)+a(n-2)` with `a(0)=2, a(1)=3`
-/

namespace A020878.P134256340841695159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A000032 (n - 1) + a (n - 2)

end

end A020878.P134256340841695159

namespace A020878

/-- `A000032(n-1)+a(n-2)` -/
def P134256340841695159.Spec : Prop :=
  ∀ n, P134256340841695159.a n = A020878 n

end A020878

/-! ## A020878.P14825619191599810277

`A000032(2*n-n)+and(2, 2*n)`
-/

namespace A020878.P14825619191599810277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n - n) + (Nat.land 2 (2 * n) : ℤ)

end

end A020878.P14825619191599810277

namespace A020878

/-- `A000032(2*n-n)+and(2, 2*n)` -/
def P14825619191599810277.Spec : Prop :=
  ∀ n, P14825619191599810277.a n = A020878 n

end A020878

/-! ## A020878.P16363316396939548190

`A010673(n)+A000032(n)`
-/

namespace A020878.P16363316396939548190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n + A000032 n

end

end A020878.P16363316396939548190

namespace A020878

/-- `A010673(n)+A000032(n)` -/
def P16363316396939548190.Spec : Prop :=
  ∀ n, P16363316396939548190.a n = A020878 n

end A020878

/-! ## A020878.P201235739007122514

`A014217(n)+A000034(n)`
-/

namespace A020878.P201235739007122514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 n + A000034 n

end

end A020878.P201235739007122514

namespace A020878

/-- `A014217(n)+A000034(n)` -/
def P201235739007122514.Spec : Prop :=
  ∀ n, P201235739007122514.a n = A020878 n

end A020878

/-! ## A020878.P9681621938314454496

`A062724(n)+A000035(n)`
-/

namespace A020878.P9681621938314454496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062724 n + A000035 n

end

end A020878.P9681621938314454496

namespace A020878

/-- `A062724(n)+A000035(n)` -/
def P9681621938314454496.Spec : Prop :=
  ∀ n, P9681621938314454496.a n = A020878 n

end A020878

/-! ## A020878.P9642402433366739007

`A001612(n)-A033999(n)`
-/

namespace A020878.P9642402433366739007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 n - A033999 n

end

end A020878.P9642402433366739007

namespace A020878

/-- `A001612(n)-A033999(n)` -/
def P9642402433366739007.Spec : Prop :=
  ∀ n, P9642402433366739007.a n = A020878 n

end A020878

/-! ## A020878.P7569870638058536634

`xor(A098600(n), A109007(n))`
-/

namespace A020878.P7569870638058536634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A098600 n) (A109007 n)

end

end A020878.P7569870638058536634

namespace A020878

/-- `xor(A098600(n), A109007(n))` -/
def P7569870638058536634.Spec : Prop :=
  ∀ n, P7569870638058536634.a n = A020878 n

end A020878

/-! ## A020878.P4538925878780907506

`A000032(n)+Δ[A109613(n)]`
-/

namespace A020878.P4538925878780907506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (f1 (n + 1) - f1 n)

end

end A020878.P4538925878780907506

namespace A020878

/-- `A000032(n)+Δ[A109613(n)]` -/
def P4538925878780907506.Spec : Prop :=
  ∀ n, P4538925878780907506.a n = A020878 n

end A020878

/-!
# A020880: Number of strong elementary edge-subgraphs in Moebius ladder M_n.

The programs for A020880, there is no canonical definition to state claims against.
-/

/-! ## A020880.P14575512217456185096

`A212287(n+1)+record[A281822(n)]`
-/

namespace A020880.P14575512217456185096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281822 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212287 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020880.P14575512217456185096

/-!
# A020882: Ordered hypotenuses (with multiplicity) of primitive Pythagorean triangles.

The programs for A020882, there is no canonical definition to state claims against.
-/

/-! ## A020882.P5741631498279390979

`sqrt(A046086(n+1)²+A046087(n+1)²)`
-/

namespace A020882.P5741631498279390979
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A046086 (n + 1) ^ 2 + A046087 (n + 1) ^ 2 : ℝ)

end

end A020882.P5741631498279390979

/-! ## A020882.P14526528512900451783

`sqrt((A120681(n+1)²+A120682(n+1)²)/2)`
-/

namespace A020882.P14526528512900451783
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A120681 (n + 1) ^ 2 + A120682 (n + 1) ^ 2 : ℚ) / 2 : ℝ)

end

end A020882.P14526528512900451783

/-! ## A020882.P17088898381064986303

`sqrt(A180620(n+1)²+A231100(n+1)²)`
-/

namespace A020882.P17088898381064986303
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A180620 (n + 1) ^ 2 + A231100 (n + 1) ^ 2 : ℝ)

end

end A020882.P17088898381064986303

/-! ## A020882.P9633696195614324165

`2*A226485(n+1)+1`
-/

namespace A020882.P9633696195614324165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226485 (n + 1) + 1

end

end A020882.P9633696195614324165

/-! ## A020882.P977252674598475691

`A118961(n+1)+A046087(n+1)`
-/

namespace A020882.P977252674598475691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118961 (n + 1) + A046087 (n + 1)

end

end A020882.P977252674598475691

/-! ## A020882.P2216352544787950383

`A118962(n+1)+A046086(n+1)`
-/

namespace A020882.P2216352544787950383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118962 (n + 1) + A046086 (n + 1)

end

end A020882.P2216352544787950383

/-! ## A020882.P13809069815656889600

`A120681(n+1)-A087459(n+1)`
-/

namespace A020882.P13809069815656889600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120681 (n + 1) - A087459 (n + 1)

end

end A020882.P13809069815656889600

/-! ## A020882.P230768395444122812

`A120681(n+1)-2*A014498(n+1)`
-/

namespace A020882.P230768395444122812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120681 (n + 1) - 2 * A014498 (n + 1)

end

end A020882.P230768395444122812

/-! ## A020882.P9046206161375516687

`A046086(n+1)+A120682(n+1)+A118961(n+1)`
-/

namespace A020882.P9046206161375516687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046086 (n + 1) + (A120682 (n + 1) + A118961 (n + 1))

end

end A020882.P9046206161375516687

/-! ## A020882.P12879014493959500338

`A087459(n+1)+A118962(n+1)+A118961(n+1)`
-/

namespace A020882.P12879014493959500338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087459 (n + 1) + (A118962 (n + 1) + A118961 (n + 1))

end

end A020882.P12879014493959500338

/-! ## A020882.P10046375115087192870

`A046086(n+1)+A046087(n+1)-A087459(n+1)`
-/

namespace A020882.P10046375115087192870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046086 (n + 1) + (A046087 (n + 1) - A087459 (n + 1))

end

end A020882.P10046375115087192870

/-! ## A020882.P6727171185100626985

`A046087(n+1)+A118962(n+1)-A120682(n+1)`
-/

namespace A020882.P6727171185100626985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046087 (n + 1) + (A118962 (n + 1) - A120682 (n + 1))

end

end A020882.P6727171185100626985

/-! ## A020882.P1447546316789475586

`A118962(n+1)+A120681(n+1)-A046087(n+1)`
-/

namespace A020882.P1447546316789475586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118962 (n + 1) + (A120681 (n + 1) - A046087 (n + 1))

end

end A020882.P1447546316789475586

/-! ## A020882.P3296742792482591110

`filter[A037942(n+1), A355450(#)]`
-/

namespace A020882.P3296742792482591110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355450 (f1 j).toNat = 1) n)

end

end A020882.P3296742792482591110

/-! ## A020882.P15708349078964493710

`filter[A037942(n+2), A035263(#)]`
-/

namespace A020882.P15708349078964493710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037942 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A020882.P15708349078964493710

/-! ## A020882.P2473371119184618070

`filter[A037942(n+2), A093719(#)]`
-/

namespace A020882.P2473371119184618070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037942 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A020882.P2473371119184618070

/-! ## A020882.P14478114827992414507

`filter[A037942(n+2), A152822(#)]`
-/

namespace A020882.P14478114827992414507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037942 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A020882.P14478114827992414507

/-! ## A020882.P10625273317662863557

`filter[A037942(n+2), A187074(#)]`
-/

namespace A020882.P10625273317662863557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037942 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A020882.P10625273317662863557

/-! ## A020882.P7696058040247938198

`A132981(Δ[n²])`
-/

namespace A020882.P7696058040247938198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132981 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A020882.P7696058040247938198

/-! ## A020882.P11928894604038279457

`filter[A132981(2*n+1), A014306(#)]`
-/

namespace A020882.P11928894604038279457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132981 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A020882.P11928894604038279457

/-!
# A020883: Ordered long legs of primitive Pythagorean triangles.

The programs for A020883, there is no canonical definition to state claims against.
-/

/-! ## A020883.P15954181315532304624

`A343894(n+1)-(A343893(n+1)+A343892(n+1))`
-/

namespace A020883.P15954181315532304624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343894 (n + 1) - (A343893 (n + 1) + A343892 (n + 1))

end

end A020883.P15954181315532304624

/-! ## A020883.P8865574629100124275

`A343891(3*n+1)`
-/

namespace A020883.P8865574629100124275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343891 (3 * n + 1)

end

end A020883.P8865574629100124275

/-! ## A020883.P7662228940523200444

`A024354(A002260(2*(n+1)²))`
-/

namespace A020883.P7662228940523200444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024354 (A002260 (2 * (n + 1) ^ 2)).toNat

end

end A020883.P7662228940523200444

/-! ## A020883.P17680718203402845487

`A024354(n+1)%A253798(n+1)`
-/

namespace A020883.P17680718203402845487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024354 (n + 1)) (A253798 (n + 1))

end

end A020883.P17680718203402845487

/-! ## A020883.P17876522555214594201

`A024354(n+1)+A000007(A003114(n))`
-/

namespace A020883.P17876522555214594201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024354 (n + 1) + A000007 (A003114 n).toNat

end

end A020883.P17876522555214594201

/-! ## A020883.P5534709174578364044

`A024354(n+1)+A000007(A063948(n+1))`
-/

namespace A020883.P5534709174578364044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024354 (n + 1) + A000007 (A063948 (n + 1)).toNat

end

end A020883.P5534709174578364044

/-! ## A020883.P3865223342106392687

`A024354(n+1)+A000007(A098745(n+1))`
-/

namespace A020883.P3865223342106392687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024354 (n + 1) + A000007 (A098745 (n + 1)).toNat

end

end A020883.P3865223342106392687

/-! ## A020883.P1001169406022702185

`A024354(n+1)%A002189(n)`
-/

namespace A020883.P1001169406022702185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024354 (n + 1)) (A002189 n)

end

end A020883.P1001169406022702185

/-! ## A020883.P3827223110508463063

`A024354(n+1)*A306682(A306682(n+1)²)`
-/

namespace A020883.P3827223110508463063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024354 (n + 1) * A306682 (A306682 (n + 1) ^ 2).toNat

end

end A020883.P3827223110508463063

/-! ## A020883.P2797105790389761971

`A024354(n+1)+A008683(A024354(n+1)²)`
-/

namespace A020883.P2797105790389761971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024354 (n + 1) + A008683 (A024354 (n + 1) ^ 2).toNat

end

end A020883.P2797105790389761971

/-!
# A020884: Ordered short legs of primitive Pythagorean triangles.

The programs for A020884, there is no canonical definition to state claims against.
-/

/-! ## A020884.P788272616121812658

`A263728(3*n+1)`
-/

namespace A020884.P788272616121812658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263728 (3 * n + 1)

end

end A020884.P788272616121812658

/-! ## A020884.P6291887564539288978

`A263728(A016777(n))%(n+2)²`
-/

namespace A020884.P6291887564539288978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263728 (A016777 n).toNat) ((n + 2) ^ 2 : ℤ)

end

end A020884.P6291887564539288978

/-! ## A020884.P7732643269414784863

`A002033(∑[(-1)^n])*A263728(A016777(n))`
-/

namespace A020884.P7732643269414784863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A263728 (A016777 n).toNat

end

end A020884.P7732643269414784863

/-! ## A020884.P9663156168685214104

`A263728(A016777(n))/A001222(A002476(n+1))`
-/

namespace A020884.P9663156168685214104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263728 (A016777 n).toNat : ℚ) / (A001222 (A002476 (n + 1)).toNat : ℚ)

end

end A020884.P9663156168685214104

/-! ## A020884.P1899418688999054463

`A263728(A016777(n))/A001222(A118721(n+1))`
-/

namespace A020884.P1899418688999054463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263728 (A016777 n).toNat : ℚ) / (A001222 (A118721 (n + 1)).toNat : ℚ)

end

end A020884.P1899418688999054463

/-! ## A020884.P8631681359467287013

`A263728(A016777(n))+A057110(A023234(n+1))`
-/

namespace A020884.P8631681359467287013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263728 (A016777 n).toNat + A057110 (A023234 (n + 1)).toNat

end

end A020884.P8631681359467287013

/-! ## A020884.P5369004448947186468

`sqrt(A156679(n+1)²-A156678(n+1)²)`
-/

namespace A020884.P5369004448947186468
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A156679 (n + 1) ^ 2 - A156678 (n + 1) ^ 2 : ℝ)

end

end A020884.P5369004448947186468

/-! ## A020884.P4030710373924532601

`A263728(A016777(n))/A001222(A118725(n+1))`
-/

namespace A020884.P4030710373924532601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263728 (A016777 n).toNat : ℚ) / (A001222 (A118725 (n + 1)).toNat : ℚ)

end

end A020884.P4030710373924532601

/-! ## A020884.P18347938841986548342

`A156678(n+1)-A156680(n+1)`
-/

namespace A020884.P18347938841986548342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156678 (n + 1) - A156680 (n + 1)

end

end A020884.P18347938841986548342

/-! ## A020884.P5963854608378158994

`A263728(A016789(n))-A156680(n+1)`
-/

namespace A020884.P5963854608378158994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263728 (A016789 n).toNat - A156680 (n + 1)

end

end A020884.P5963854608378158994

/-!
# A020885: Ordered areas (divided by 6) of primitive Pythagorean triangles (with multiple entries).

The programs for A020885, there is no canonical definition to state claims against.
-/

/-! ## A020885.P18445426974061659149

`A024406(n+1)/6`
-/

namespace A020885.P18445426974061659149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024406 (n + 1) : ℚ) / 6

end

end A020885.P18445426974061659149

/-! ## A020885.P16579116288973714035

`6^A325970(A006512(n+1))*A024406(n+1)`
-/

namespace A020885.P16579116288973714035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A325970 (A006512 (n + 1)).toNat : ℤ) * (A024406 (n + 1) : ℚ)

end

end A020885.P16579116288973714035

/-! ## A020885.P5301657284833225850

`A255591(A024406(n+1))`
-/

namespace A020885.P5301657284833225850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 (A024406 (n + 1)).toNat

end

end A020885.P5301657284833225850

/-! ## A020885.P17748696965802763941

`A008612(A024406(n+1)+1)`
-/

namespace A020885.P17748696965802763941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A024406 (n + 1) + 1).toNat

end

end A020885.P17748696965802763941

/-! ## A020885.P14909471511845850697

`A008615(A024406(n+1)+1)`
-/

namespace A020885.P14909471511845850697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A024406 (n + 1) + 1).toNat

end

end A020885.P14909471511845850697

/-!
# A020886: Ordered semiperimeters of primitive Pythagorean triangles.

The programs for A020886, there is no canonical definition to state claims against.
-/

/-! ## A020886.P8405750527116203305

`A024364(n+1)/2`
-/

namespace A020886.P8405750527116203305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024364 (n + 1) : ℚ) / 2

end

end A020886.P8405750527116203305

/-! ## A020886.P17301951309502376624

`A103391(A024364(n+1)-2)`
-/

namespace A020886.P17301951309502376624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A024364 (n + 1) - 2).toNat

end

end A020886.P17301951309502376624

/-! ## A020886.P13914480497848893406

`A000217(A024364(n+1)-1)%A024364(n+1)`
-/

namespace A020886.P13914480497848893406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A024364 (n + 1) - 1).toNat) (A024364 (n + 1))

end

end A020886.P13914480497848893406

/-! ## A020886.P7619199104509879200

`lt[0, A070109(2*(n+1))]+1`
-/

namespace A020886.P7619199104509879200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070109 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A020886.P7619199104509879200

/-! ## A020886.P11591662932092122737

`(lt[abs(sin(n)), A070109(n+1)]+1)/2`
-/

namespace A020886.P11591662932092122737
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.sin (n : ℝ)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070109 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1 : ℚ) / 2

end

end A020886.P11591662932092122737

/-! ## A020886.P8228787406137776446

`A001281(A024364(n+1))`
-/

namespace A020886.P8228787406137776446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A024364 (n + 1)).toNat

end

end A020886.P8228787406137776446

/-! ## A020886.P3055601142743192040

`A008619(A024364(n+1)-1)`
-/

namespace A020886.P3055601142743192040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A024364 (n + 1) - 1).toNat

end

end A020886.P3055601142743192040

/-! ## A020886.P13734330615900720204

`A029578(lcm(2, A024364(n+1)))`
-/

namespace A020886.P13734330615900720204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (Int.lcm 2 (A024364 (n + 1)))

end

end A020886.P13734330615900720204

/-! ## A020886.P5336993444735114621

`A029578(A024364(n+1)+2)-1`
-/

namespace A020886.P5336993444735114621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A024364 (n + 1) + 2).toNat - 1

end

end A020886.P5336993444735114621

/-! ## A020886.P15712268485135986063

`A032742(A024364(n+1)+2)-1`
-/

namespace A020886.P15712268485135986063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A024364 (n + 1) + 2).toNat - 1

end

end A020886.P15712268485135986063

/-! ## A020886.P14409996206091083440

`A004525(A024364(n+1))%A139612(n)`
-/

namespace A020886.P14409996206091083440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004525 (A024364 (n + 1)).toNat) (A139612 n)

end

end A020886.P14409996206091083440

/-! ## A020886.P9718652492686148018

`A004525(A024364(n+1)%A304839(n+1))`
-/

namespace A020886.P9718652492686148018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.tmod (A024364 (n + 1)) (A304839 (n + 1))).toNat

end

end A020886.P9718652492686148018

/-! ## A020886.P4705581832223492056

`gcd(A000217(3*A024364(n+1)), A024364(n+1))`
-/

namespace A020886.P4705581832223492056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (3 * A024364 (n + 1)).toNat) (A024364 (n + 1))

end

end A020886.P4705581832223492056

/-!
# A020887: Ordered set of a + b - c as (a,b,c) runs through all primitive Pythagorean triples with a

The programs for A020887, the canonical program `A020887.P8491908464742690034` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020887 has offset 1).

The definition of A020887 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020888, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A020887.P8491908464742690034

`2*A020888(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A020887

/-- `2*A020888(n+1)` -/
def P8491908464742690034.Spec : Prop :=
  ∀ n, P8491908464742690034.a n = A020887 (n + 1)

theorem P8491908464742690034.correct : P8491908464742690034.Spec := by
  intro n
  simp only [A020887, Nat.add_sub_cancel]

end A020887

/-! ## A020887.P16302314816976265756

`A120427(n+1)/2`
-/

namespace A020887.P16302314816976265756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120427 (n + 1) : ℚ) / 2

end

end A020887.P16302314816976265756

namespace A020887

/-- `A120427(n+1)/2` -/
def P16302314816976265756.Spec : Prop :=
  ∀ n, P16302314816976265756.a n = (A020887 (n + 1) : ℚ)

end A020887

/-! ## A020887.P13292252835420295009

`A004277(A020888(n+1))`
-/

namespace A020887.P13292252835420295009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A020888 (n + 1)).toNat

end

end A020887.P13292252835420295009

namespace A020887

/-- `A004277(A020888(n+1))` -/
def P13292252835420295009.Spec : Prop :=
  ∀ n, P13292252835420295009.a n = A020887 (n + 1)

end A020887

/-! ## A020887.P13139661107644653325

`A020888(char[7]+1+n)+A020888(n+1)`
-/

namespace A020887.P13139661107644653325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020888 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) + A020888 (n + 1)

end

end A020887.P13139661107644653325

namespace A020887

/-- `A020888(char[7]+1+n)+A020888(n+1)` -/
def P13139661107644653325.Spec : Prop :=
  ∀ n, P13139661107644653325.a n = A020887 (n + 1)

end A020887

/-! ## A020887.P5799819052042367922

`A120427(n+1)-A020888(n+1)-A020888(n+1)`
-/

namespace A020887.P5799819052042367922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120427 (n + 1) - A020888 (n + 1) - A020888 (n + 1)

end

end A020887.P5799819052042367922

namespace A020887

/-- `A120427(n+1)-A020888(n+1)-A020888(n+1)` -/
def P5799819052042367922.Spec : Prop :=
  ∀ n, P5799819052042367922.a n = A020887 (n + 1)

end A020887

/-! ## A020887.P12907979416404523266

`(A020888(n+1)+A020888(n+1))%A020886(n+1)`
-/

namespace A020887.P12907979416404523266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020888 (n + 1) + A020888 (n + 1)) (A020886 (n + 1))

end

end A020887.P12907979416404523266

namespace A020887

/-- `(A020888(n+1)+A020888(n+1))%A020886(n+1)` -/
def P12907979416404523266.Spec : Prop :=
  ∀ n, P12907979416404523266.a n = A020887 (n + 1)

end A020887

/-! ## A020887.P14424547576320227344

`A001281(A120427(n+1))`
-/

namespace A020887.P14424547576320227344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A120427 (n + 1)).toNat

end

end A020887.P14424547576320227344

namespace A020887

/-- `A001281(A120427(n+1))` -/
def P14424547576320227344.Spec : Prop :=
  ∀ n, P14424547576320227344.a n = A020887 (n + 1)

end A020887

/-! ## A020887.P4925623609405479718

`filter[A020888(n+1), A059841(#)]`
-/

namespace A020887.P4925623609405479718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A020887.P4925623609405479718

namespace A020887

/-- `filter[A020888(n+1), A059841(#)]` -/
def P4925623609405479718.Spec : Prop :=
  ∀ n, P4925623609405479718.a n = A020887 (n + 1)

end A020887

/-! ## A020887.P8906424866648849243

`filter[A020888(n+2), A135528(#)]`
-/

namespace A020887.P8906424866648849243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020888 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A020887.P8906424866648849243

namespace A020887

/-- `filter[A020888(n+2), A135528(#)]` -/
def P8906424866648849243.Spec : Prop :=
  ∀ n, P8906424866648849243.a n = A020887 (n + 1)

end A020887

/-! ## A020887.P3854875105702504936

`filter[A020888(n+2), A266591(#)]`
-/

namespace A020887.P3854875105702504936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020888 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A020887.P3854875105702504936

namespace A020887

/-- `filter[A020888(n+2), A266591(#)]` -/
def P3854875105702504936.Spec : Prop :=
  ∀ n, P3854875105702504936.a n = A020887 (n + 1)

end A020887

/-! ## A020887.P1907518408342647644

`A002265(2*A120427(n+1))`
-/

namespace A020887.P1907518408342647644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A120427 (n + 1)).toNat

end

end A020887.P1907518408342647644

namespace A020887

/-- `A002265(2*A120427(n+1))` -/
def P1907518408342647644.Spec : Prop :=
  ∀ n, P1907518408342647644.a n = A020887 (n + 1)

end A020887

/-! ## A020887.P17517342187836590546

`A002265(A120427(n+1)+A120427(n+1)+1)`
-/

namespace A020887.P17517342187836590546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A120427 (n + 1) + (A120427 (n + 1) + 1)).toNat

end

end A020887.P17517342187836590546

namespace A020887

/-- `A002265(A120427(n+1)+A120427(n+1)+1)` -/
def P17517342187836590546.Spec : Prop :=
  ∀ n, P17517342187836590546.a n = A020887 (n + 1)

end A020887

/-! ## A020887.P10586039143686202128

`val(A016116(A120427(n+1)+1), 2)`
-/

namespace A020887.P10586039143686202128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A016116 (A120427 (n + 1) + 1).toNat).toNat 2

end

end A020887.P10586039143686202128

namespace A020887

/-- `val(A016116(A120427(n+1)+1), 2)` -/
def P10586039143686202128.Spec : Prop :=
  ∀ n, (P10586039143686202128.a n : ℤ) = A020887 (n + 1)

end A020887

/-! ## A020887.P4305262749162614388

`A020888(n+1)+A000196(A020888(n+1)²)`
-/

namespace A020887.P4305262749162614388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020888 (n + 1) + A000196 (A020888 (n + 1) ^ 2).toNat

end

end A020887.P4305262749162614388

namespace A020887

/-- `A020888(n+1)+A000196(A020888(n+1)²)` -/
def P4305262749162614388.Spec : Prop :=
  ∀ n, P4305262749162614388.a n = A020887 (n + 1)

end A020887

/-!
# A020888: Ordered set of (a + b - c)/2 as (a,b,c) runs through all primitive Pythagorean triples with a

The programs for A020888, the canonical program `A020888.P7815334307482986800` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020888 has offset 1).

The definition of A020888 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020888.P3138670577662192774

`A020887(n+1)/2`
-/

namespace A020888.P3138670577662192774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020887 (n + 1) : ℚ) / 2

end

end A020888.P3138670577662192774

namespace A020888

/-- `A020887(n+1)/2` -/
def P3138670577662192774.Spec : Prop :=
  ∀ n, P3138670577662192774.a n = (A020888 (n + 1) : ℚ)

end A020888

/-! ## A020888.P6985416844738900163

`A120427(n+1)/4`
-/

namespace A020888.P6985416844738900163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120427 (n + 1) : ℚ) / 4

end

end A020888.P6985416844738900163

namespace A020888

/-- `A120427(n+1)/4` -/
def P6985416844738900163.Spec : Prop :=
  ∀ n, P6985416844738900163.a n = (A020888 (n + 1) : ℚ)

end A020888

/-! ## A020888.P7815334307482986800

`∑[char[∑[A068068(n+1)]]]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A020888

/-- `∑[char[∑[A068068(n+1)]]]+1` -/
def P7815334307482986800.Spec : Prop :=
  ∀ n, (P7815334307482986800.a n : ℤ) = A020888 (n + 1)

theorem P7815334307482986800.correct : P7815334307482986800.Spec := by
  intro n
  simp only [A020888, Nat.add_sub_cancel]

end A020888

/-! ## A020888.P12619410324074676083

`∑[char[∑[A024361(2*(n+1))]]]`
-/

namespace A020888.P12619410324074676083
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020888.P12619410324074676083

namespace A020888

/-- `∑[char[∑[A024361(2*(n+1))]]]` -/
def P12619410324074676083.Spec : Prop :=
  ∀ n, (P12619410324074676083.a n : ℤ) = A020888 (n + 1)

end A020888

/-! ## A020888.P18388219499255636618

`A001281(A020887(n+1))`
-/

namespace A020888.P18388219499255636618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A020887 (n + 1)).toNat

end

end A020888.P18388219499255636618

namespace A020888

/-- `A001281(A020887(n+1))` -/
def P18388219499255636618.Spec : Prop :=
  ∀ n, P18388219499255636618.a n = A020888 (n + 1)

end A020888

/-! ## A020888.P14362127565296521862

`A004526(A020887(n+1)+1)`
-/

namespace A020888.P14362127565296521862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A020887 (n + 1) + 1).toNat

end

end A020888.P14362127565296521862

namespace A020888

/-- `A004526(A020887(n+1)+1)` -/
def P14362127565296521862.Spec : Prop :=
  ∀ n, P14362127565296521862.a n = A020888 (n + 1)

end A020888

/-! ## A020888.P6014478640914090322

`A008619(A020887(n+1)-1)`
-/

namespace A020888.P6014478640914090322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A020887 (n + 1) - 1).toNat

end

end A020888.P6014478640914090322

namespace A020888

/-- `A008619(A020887(n+1)-1)` -/
def P6014478640914090322.Spec : Prop :=
  ∀ n, P6014478640914090322.a n = A020888 (n + 1)

end A020888

/-! ## A020888.P2443877405259456161

`A002265(A120427(n+1))`
-/

namespace A020888.P2443877405259456161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A120427 (n + 1)).toNat

end

end A020888.P2443877405259456161

namespace A020888

/-- `A002265(A120427(n+1))` -/
def P2443877405259456161.Spec : Prop :=
  ∀ n, P2443877405259456161.a n = A020888 (n + 1)

end A020888

/-!
# A020889: Ordered set of b + c - a as (a,b,c) runs through all primitive Pythagorean triples with a

The programs for A020889, there is no canonical definition to state claims against.
-/

/-! ## A020889.P6804303549341757509

`2*A020890(n+1)`
-/

namespace A020889.P6804303549341757509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020890 (n + 1)

end

end A020889.P6804303549341757509

/-! ## A020889.P16931463664172447983

`A020890(A000027(n+1))+A020890(n+1)`
-/

namespace A020889.P16931463664172447983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020890 (A000027 (n + 1)).toNat + A020890 (n + 1)

end

end A020889.P16931463664172447983

/-! ## A020889.P14949191934096158887

`A020890(n+1)+A020890((n+1)%A061802(n))`
-/

namespace A020889.P14949191934096158887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020890 (n + 1) + A020890 (Int.tmod (n + 1 : ℤ) (A061802 n)).toNat

end

end A020889.P14949191934096158887

/-! ## A020889.P6549572443732824959

`A020890(n+1)+A020890(n+1)%A020882(n+1)`
-/

namespace A020889.P6549572443732824959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020890 (n + 1) + Int.tmod (A020890 (n + 1)) (A020882 (n + 1))

end

end A020889.P6549572443732824959

/-! ## A020889.P13153865556978330654

`(A020890(n+1)+A020890(n+1))%A024410(n+1)`
-/

namespace A020889.P13153865556978330654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020890 (n + 1) + A020890 (n + 1)) (A024410 (n + 1))

end

end A020889.P13153865556978330654

/-! ## A020889.P7475800116998209091

`A004277(A020890(n+1))`
-/

namespace A020889.P7475800116998209091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A020890 (n + 1)).toNat

end

end A020889.P7475800116998209091

/-! ## A020889.P6091820292011905248

`A059029(A020890(n+1)+A020890(n+1))`
-/

namespace A020889.P6091820292011905248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 (A020890 (n + 1) + A020890 (n + 1)).toNat

end

end A020889.P6091820292011905248

/-!
# A020890: Ordered set of (b + c - a)/2 as (a,b,c) runs through all primitive Pythagorean triples with a < b < c.

The programs for A020890, there is no canonical definition to state claims against.
-/

/-! ## A020890.P1870464859474227255

`A020889(n+1)/2`
-/

namespace A020890.P1870464859474227255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020889 (n + 1) : ℚ) / 2

end

end A020890.P1870464859474227255

/-! ## A020890.P15402925862304771202

`A001281(A020889(n+1))`
-/

namespace A020890.P15402925862304771202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A020889 (n + 1)).toNat

end

end A020890.P15402925862304771202

/-! ## A020890.P5408751786629837037

`A003602(A020889(n+1)-1)`
-/

namespace A020890.P5408751786629837037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A020889 (n + 1) - 1).toNat

end

end A020890.P5408751786629837037

/-! ## A020890.P384156458156781286

`A008619(A020889(n+1)-1)`
-/

namespace A020890.P384156458156781286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A020889 (n + 1) - 1).toNat

end

end A020890.P384156458156781286

/-! ## A020890.P15323843592644824995

`A052938(A020889(n+1)-2)`
-/

namespace A020890.P15323843592644824995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A020889 (n + 1) - 2).toNat

end

end A020890.P15323843592644824995

/-! ## A020890.P16753925223919840311

`A174571(2*A020889(n+1))`
-/

namespace A020890.P16753925223919840311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (2 * A020889 (n + 1)).toNat

end

end A020890.P16753925223919840311

/-! ## A020890.P3405130078434802098

`A106609(4*A020889(n+1))`
-/

namespace A020890.P3405130078434802098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (4 * A020889 (n + 1)).toNat

end

end A020890.P3405130078434802098

/-! ## A020890.P7727816986232951128

`A076314(5*A020889(n+1))`
-/

namespace A020890.P7727816986232951128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 (5 * A020889 (n + 1)).toNat

end

end A020890.P7727816986232951128

/-!
# A020891: Ordered set of c + a - b as (a,b,c) runs through all primitive Pythagorean triples with a

The programs for A020891, there is no canonical definition to state claims against.
-/

/-! ## A020891.P12293210107191457149

`2*A020892(n+1)`
-/

namespace A020891.P12293210107191457149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020892 (n + 1)

end

end A020891.P12293210107191457149

/-! ## A020891.P11138224254718695369

`A004277(A020892(n+1))`
-/

namespace A020891.P11138224254718695369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A020892 (n + 1)).toNat

end

end A020891.P11138224254718695369

/-! ## A020891.P647597022955061258

`A103517(A020892(n+1)-1)`
-/

namespace A020891.P647597022955061258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A020892 (n + 1) - 1).toNat

end

end A020891.P647597022955061258

/-! ## A020891.P17389763323644977866

`A005843(A020892(n+1)%(n+4))`
-/

namespace A020891.P17389763323644977866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.tmod (A020892 (n + 1)) (n + 4 : ℤ)).toNat

end

end A020891.P17389763323644977866

/-! ## A020891.P281749639941158591

`A020892(A000027(n+1))+A020892(n+1)`
-/

namespace A020891.P281749639941158591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020892 (A000027 (n + 1)).toNat + A020892 (n + 1)

end

end A020891.P281749639941158591

/-! ## A020891.P13348214647140436609

`A000267(A020892(n+1)²)`
-/

namespace A020891.P13348214647140436609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A020892 (n + 1) ^ 2).toNat

end

end A020891.P13348214647140436609

/-!
# A020892: Ordered set of (c + a - b)/2 as (a,b,c) runs through all primitive Pythagorean triples with a

The programs for A020892, there is no canonical definition to state claims against.
-/

/-! ## A020892.P4701042714578867416

`A020891(n+1)/2`
-/

namespace A020892.P4701042714578867416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020891 (n + 1) : ℚ) / 2

end

end A020892.P4701042714578867416

/-! ## A020892.P16052910810290786456

`A001281(A020891(n+1))`
-/

namespace A020892.P16052910810290786456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A020891 (n + 1)).toNat

end

end A020892.P16052910810290786456

/-! ## A020892.P6259871213699561139

`A004524(A020891(n+1)+1)`
-/

namespace A020892.P6259871213699561139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A020891 (n + 1) + 1).toNat

end

end A020892.P6259871213699561139

/-! ## A020892.P11117973390085535091

`A004526(A020891(n+1)+1)`
-/

namespace A020892.P11117973390085535091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A020891 (n + 1) + 1).toNat

end

end A020892.P11117973390085535091

/-! ## A020892.P7744845616468430270

`A057979(A020891(n+1)+1)`
-/

namespace A020892.P7744845616468430270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A020891 (n + 1) + 1).toNat

end

end A020892.P7744845616468430270

/-! ## A020892.P18205746523486064875

`A001057(A020891(n+1)-1)`
-/

namespace A020892.P18205746523486064875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A020891 (n + 1) - 1).toNat

end

end A020892.P18205746523486064875

/-! ## A020892.P2258858158015431418

`A052938(A020891(n+1)-2)`
-/

namespace A020892.P2258858158015431418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A020891 (n + 1) - 2).toNat

end

end A020892.P2258858158015431418

/-! ## A020892.P6928012142438415273

`A080513(A020891(n+1)-2)`
-/

namespace A020892.P6928012142438415273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A020891 (n + 1) - 2).toNat

end

end A020892.P6928012142438415273

/-! ## A020892.P15681696704508238959

`A002265(2*A020891(n+1))`
-/

namespace A020892.P15681696704508238959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A020891 (n + 1)).toNat

end

end A020892.P15681696704508238959

/-! ## A020892.P8925306042635356870

`A002265(A020891(n+1)+A020891(n+1)+1)`
-/

namespace A020892.P8925306042635356870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A020891 (n + 1) + (A020891 (n + 1) + 1)).toNat

end

end A020892.P8925306042635356870

/-!
# A020893: Squarefree sums of two squares; or squarefree numbers with no prime factors of the form 4k+3.

The programs for A020893, the canonical program `A020893.P11290844334682551427` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020893 has offset 1).

The definition of A020893 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9316 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020893.P8852078337086833673

`∪[2*A231754(n+1), A231754(n+1)]`
-/

namespace A020893.P8852078337086833673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A231754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A020893.P8852078337086833673

namespace A020893

/-- `∪[2*A231754(n+1), A231754(n+1)]` -/
def P8852078337086833673.Spec : Prop :=
  ∀ n, (P8852078337086833673.a n : ℤ) = A020893 (n + 1)

end A020893

/-! ## A020893.P7574656455469860367

`record[A007947(A008784(n+1))]`
-/

namespace A020893.P7574656455469860367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A008784 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020893.P7574656455469860367

namespace A020893

/-- `record[A007947(A008784(n+1))]` -/
def P7574656455469860367.Spec : Prop :=
  ∀ n, P7574656455469860367.a n = A020893 (n + 1)

end A020893

/-! ## A020893.P2964337375182359166

`filter[A008784(n+1), A008966(#)]`
-/

namespace A020893.P2964337375182359166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A020893.P2964337375182359166

namespace A020893

/-- `filter[A008784(n+1), A008966(#)]` -/
def P2964337375182359166.Spec : Prop :=
  ∀ n, P2964337375182359166.a n = A020893 (n + 1)

end A020893

/-! ## A020893.P11290844334682551427

`filter[A008784(n+1), A359377(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A020893

/-- `filter[A008784(n+1), A359377(#)]` -/
def P11290844334682551427.Spec : Prop :=
  ∀ n, P11290844334682551427.a n = A020893 (n + 1)

theorem P11290844334682551427.correct : P11290844334682551427.Spec := by
  intro n
  simp only [A020893, Nat.add_sub_cancel]

end A020893

/-! ## A020893.P6247460104879639163

`filter[A008784(n+1), A359834(#)]`
-/

namespace A020893.P6247460104879639163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A020893.P6247460104879639163

namespace A020893

/-- `filter[A008784(n+1), A359834(#)]` -/
def P6247460104879639163.Spec : Prop :=
  ∀ n, P6247460104879639163.a n = A020893 (n + 1)

end A020893

/-! ## A020893.P15727758124064342883

`∩[A005117(n+1), A008784(n+1)]`
-/

namespace A020893.P15727758124064342883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020893.P15727758124064342883

namespace A020893

/-- `∩[A005117(n+1), A008784(n+1)]` -/
def P15727758124064342883.Spec : Prop :=
  ∀ n, (P15727758124064342883.a n : ℤ) = A020893 (n + 1)

end A020893

/-! ## A020893.P2235659394381887808

`filter[A008784(n+1), A323154(#)]`
-/

namespace A020893.P2235659394381887808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A020893.P2235659394381887808

namespace A020893

/-- `filter[A008784(n+1), A323154(#)]` -/
def P2235659394381887808.Spec : Prop :=
  ∀ n, P2235659394381887808.a n = A020893 (n + 1)

end A020893

/-! ## A020893.P567962847254819081

`filter[A008784(n+1), A353559(#)]`
-/

namespace A020893.P567962847254819081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A020893.P567962847254819081

namespace A020893

/-- `filter[A008784(n+1), A353559(#)]` -/
def P567962847254819081.Spec : Prop :=
  ∀ n, P567962847254819081.a n = A020893 (n + 1)

end A020893

/-! ## A020893.P2039664397757174630

`filter[A008784(n+1), A353627(#)]`
-/

namespace A020893.P2039664397757174630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A020893.P2039664397757174630

namespace A020893

/-- `filter[A008784(n+1), A353627(#)]` -/
def P2039664397757174630.Spec : Prop :=
  ∀ n, P2039664397757174630.a n = A020893 (n + 1)

end A020893

/-! ## A020893.P12740232682340776667

`filter[A008784(n+1), A364250(#)]`
-/

namespace A020893.P12740232682340776667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364250 (f1 j).toNat = 1) n)

end

end A020893.P12740232682340776667

namespace A020893

/-- `filter[A008784(n+1), A364250(#)]` -/
def P12740232682340776667.Spec : Prop :=
  ∀ n, P12740232682340776667.a n = A020893 (n + 1)

end A020893

/-! ## A020893.P2094706019198586752

`filter[A046711(n+1), A008966(#)]`
-/

namespace A020893.P2094706019198586752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A020893.P2094706019198586752

namespace A020893

/-- `filter[A046711(n+1), A008966(#)]` -/
def P2094706019198586752.Spec : Prop :=
  ∀ n, P2094706019198586752.a n = A020893 (n + 1)

end A020893

/-! ## A020893.P3420315467549979321

`filter[A046711(n+1), A323154(#)]`
-/

namespace A020893.P3420315467549979321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A020893.P3420315467549979321

namespace A020893

/-- `filter[A046711(n+1), A323154(#)]` -/
def P3420315467549979321.Spec : Prop :=
  ∀ n, P3420315467549979321.a n = A020893 (n + 1)

end A020893

/-! ## A020893.P9165762206912273516

`filter[A046711(n+1), A353559(#)]`
-/

namespace A020893.P9165762206912273516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A020893.P9165762206912273516

namespace A020893

/-- `filter[A046711(n+1), A353559(#)]` -/
def P9165762206912273516.Spec : Prop :=
  ∀ n, P9165762206912273516.a n = A020893 (n + 1)

end A020893

/-! ## A020893.P367095107342083040

`filter[A046711(n+1), A353627(#)]`
-/

namespace A020893.P367095107342083040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A020893.P367095107342083040

namespace A020893

/-- `filter[A046711(n+1), A353627(#)]` -/
def P367095107342083040.Spec : Prop :=
  ∀ n, P367095107342083040.a n = A020893 (n + 1)

end A020893

/-! ## A020893.P2584401637803130089

`filter[A046711(n+1), A359377(#)]`
-/

namespace A020893.P2584401637803130089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A020893.P2584401637803130089

namespace A020893

/-- `filter[A046711(n+1), A359377(#)]` -/
def P2584401637803130089.Spec : Prop :=
  ∀ n, P2584401637803130089.a n = A020893 (n + 1)

end A020893

/-! ## A020893.P2731756669623694526

`filter[A046711(n+1), A359834(#)]`
-/

namespace A020893.P2731756669623694526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A020893.P2731756669623694526

namespace A020893

/-- `filter[A046711(n+1), A359834(#)]` -/
def P2731756669623694526.Spec : Prop :=
  ∀ n, P2731756669623694526.a n = A020893 (n + 1)

end A020893

/-! ## A020893.P8797789113049899284

`∩[A005117(n+1), A046711(n+1)]`
-/

namespace A020893.P8797789113049899284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020893.P8797789113049899284

namespace A020893

/-- `∩[A005117(n+1), A046711(n+1)]` -/
def P8797789113049899284.Spec : Prop :=
  ∀ n, (P8797789113049899284.a n : ℤ) = A020893 (n + 1)

end A020893

/-! ## A020893.P12753695013340219125

`filter[A057129(n+1), A008966(#)]`
-/

namespace A020893.P12753695013340219125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A020893.P12753695013340219125

namespace A020893

/-- `filter[A057129(n+1), A008966(#)]` -/
def P12753695013340219125.Spec : Prop :=
  ∀ n, P12753695013340219125.a n = A020893 (n + 1)

end A020893

/-! ## A020893.P12105998995678609289

`filter[A057129(n+1), A323154(#)]`
-/

namespace A020893.P12105998995678609289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A020893.P12105998995678609289

namespace A020893

/-- `filter[A057129(n+1), A323154(#)]` -/
def P12105998995678609289.Spec : Prop :=
  ∀ n, P12105998995678609289.a n = A020893 (n + 1)

end A020893

/-! ## A020893.P1639609243472817870

`filter[A057129(n+1), A353559(#)]`
-/

namespace A020893.P1639609243472817870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A020893.P1639609243472817870

namespace A020893

/-- `filter[A057129(n+1), A353559(#)]` -/
def P1639609243472817870.Spec : Prop :=
  ∀ n, P1639609243472817870.a n = A020893 (n + 1)

end A020893

/-!
# A020894: Nonnegative numbers that are sums of two nonzero cubes.

The programs for A020894, there is no canonical definition to state claims against.
-/

/-! ## A020894.P13046703862529610696

`∪[A003325(n+1), A181123(n+1)]`
-/

namespace A020894.P13046703862529610696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A020894.P13046703862529610696

/-! ## A020894.P6811486914388255902

`∩[comp[A000578(n+1)], A045980(n+1)]`
-/

namespace A020894.P6811486914388255902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A020894.P6811486914388255902

/-! ## A020894.P4549180636640431501

`A111660(A270248(n+1))+A111660(n)`
-/

namespace A020894.P4549180636640431501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A270248 (n + 1)).toNat + A111660 n

end

end A020894.P4549180636640431501

/-!
# A020895: Cubefree sums of two nonzero cubes.

The programs for A020895, there is no canonical definition to state claims against.
-/

/-! ## A020895.P16107522419872242764

`filter[A020894(n+2), A212793(#)]`
-/

namespace A020895.P16107522419872242764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020894 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A020895.P16107522419872242764

/-! ## A020895.P5917074453134569768

`filter[A293645(n+2), A212793(#)]`
-/

namespace A020895.P5917074453134569768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293645 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A020895.P5917074453134569768

/-! ## A020895.P18165946784594947098

`filter[A045980(n+3), A212793(#)]`
-/

namespace A020895.P18165946784594947098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045980 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A020895.P18165946784594947098

/-! ## A020895.P10340968140792232012

`∩[A004709(n+1), A020894(n+1)]`
-/

namespace A020895.P10340968140792232012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020895.P10340968140792232012

/-! ## A020895.P2143248793479765312

`∩[A045980(n+1), A004709(n+2)]`
-/

namespace A020895.P2143248793479765312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020895.P2143248793479765312

/-! ## A020895.P7747237178405961990

`∩[A004709(n+1), A293645(n+2)]`
-/

namespace A020895.P7747237178405961990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293645 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020895.P7747237178405961990

/-! ## A020895.P448124202862116805

`∩[A293645(n+2), A377019(n+2)]`
-/

namespace A020895.P448124202862116805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293645 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377019 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020895.P448124202862116805

/-! ## A020895.P9742623519142103189

`record[A050985(A020894(n+2))]`
-/

namespace A020895.P9742623519142103189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (A020894 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020895.P9742623519142103189

/-! ## A020895.P6595398718179997910

`record[A050985(A293645(n+2))]`
-/

namespace A020895.P6595398718179997910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (A293645 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020895.P6595398718179997910

/-! ## A020895.P9437620040912947805

`record[A050985(A045980(n+3))]`
-/

namespace A020895.P9437620040912947805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (A045980 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020895.P9437620040912947805

/-!
# A020896: Positive numbers k such that k = x^5 + y^5 has a solution in nonzero integers x, y.

The programs for A020896, there is no canonical definition to state claims against.
-/

/-! ## A020896.P12731360147693251193

`∩[A247099(n+1), A373868(n+1)]`
-/

namespace A020896.P12731360147693251193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020896.P12731360147693251193

/-!
# A020897: Sum of two nonzero rational cubes.

The programs for A020897, there is no canonical definition to state claims against.
-/

/-! ## A020897.P11729670126713137900

`eq[char[A185345(n+1)], A010057(n)]`
-/

namespace A020897.P11729670126713137900
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185345 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A020897.P11729670126713137900

/-! ## A020897.P5912829709745802971

`comp[∪[A185345(n+1), A000578(n)]]`
-/

namespace A020897.P5912829709745802971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185345 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A020897.P5912829709745802971

/-! ## A020897.P16798176626558258489

`∩[A007412(n+1), A159843(n+1)]`
-/

namespace A020897.P16798176626558258489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020897.P16798176626558258489

/-! ## A020897.P15080912565286885108

`∪[A003325(n+1), A228499(n+1)]`
-/

namespace A020897.P15080912565286885108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A020897.P15080912565286885108

/-! ## A020897.P1340818523924853824

`∪[A005996(n+1), A228499(n+1)]`
-/

namespace A020897.P1340818523924853824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A020897.P1340818523924853824

/-! ## A020897.P12511225067342227319

`∪[A051386(n+1), A228499(n+1)]`
-/

namespace A020897.P12511225067342227319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A020897.P12511225067342227319

/-! ## A020897.P17970384507779553061

`∪[A101420(n+1), A228499(n+1)]`
-/

namespace A020897.P17970384507779553061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A020897.P17970384507779553061

/-! ## A020897.P1169588123710528507

`∪[A228499(n+1), A337529(n+1)]`
-/

namespace A020897.P1169588123710528507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A020897.P1169588123710528507

/-! ## A020897.P10839734014014898354

`∪[A228499(n+1), A338667(n+1)]`
-/

namespace A020897.P10839734014014898354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A020897.P10839734014014898354

/-! ## A020897.P14268231685627582452

`∪[A228499(n+1), A383642(n+1)]`
-/

namespace A020897.P14268231685627582452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383642 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A020897.P14268231685627582452

/-!
# A020898: Positive cubefree integers n such that the Diophantine equation X^3 + Y^3 = n*Z^3 has solutions.

The programs for A020898, there is no canonical definition to state claims against.
-/

/-! ## A020898.P9087779166486352203

`record[A007948(A159843(n+2))]`
-/

namespace A020898.P9087779166486352203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A159843 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020898.P9087779166486352203

/-! ## A020898.P7718369051704023496

`filter[A159843(n+2), A212793(#)]`
-/

namespace A020898.P7718369051704023496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159843 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A020898.P7718369051704023496

/-! ## A020898.P449673665271827623

`eq[char[A159843(n+2)], A294333(n)]`
-/

namespace A020898.P449673665271827623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159843 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294333 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A020898.P449673665271827623

/-! ## A020898.P1915319883138768888

`record[A007948(A020897(n+1))]`
-/

namespace A020898.P1915319883138768888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A020897 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020898.P1915319883138768888

/-! ## A020898.P13352133609534577113

`filter[A020897(n+1), A212793(#)]`
-/

namespace A020898.P13352133609534577113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A020898.P13352133609534577113

/-! ## A020898.P14505391098210771973

`filter[A020897(n+1), A359471(#)]`
-/

namespace A020898.P14505391098210771973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A020898.P14505391098210771973

/-! ## A020898.P17122340028486157982

`eq[char[A020897(n+1)], A294333(n)]`
-/

namespace A020898.P17122340028486157982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020897 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294333 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A020898.P17122340028486157982

/-! ## A020898.P327032389495577696

`∩[A004709(n+1), A020897(n+1)]`
-/

namespace A020898.P327032389495577696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020898.P327032389495577696

/-! ## A020898.P18258748133225071251

`∩[A020897(n+1), A048107(n+1)]`
-/

namespace A020898.P18258748133225071251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020898.P18258748133225071251

/-! ## A020898.P6975307364621454286

`∩[A020897(n+1), A377019(n+1)]`
-/

namespace A020898.P6975307364621454286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020898.P6975307364621454286

/-!
# A020899: Numbers k with an odd number of terms in their Zeckendorf representation (write k as a sum of non-consecutive distinct Fibonacci numbers).

The programs for A020899, the canonical program `A020899.P3391896508179438506` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020899 has offset 1).

The definition of A020899 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020899.P3429316066675102811

`∪[A337289(n+1), A337290(n+1)]`
-/

namespace A020899.P3429316066675102811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A020899.P3429316066675102811

namespace A020899

/-- `∪[A337289(n+1), A337290(n+1)]` -/
def P3429316066675102811.Spec : Prop :=
  ∀ n, (P3429316066675102811.a n : ℤ) = A020899 (n + 1)

end A020899

/-! ## A020899.P3391896508179438506

`comp[A095096(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A020899

/-- `comp[A095096(n+1)]` -/
def P3391896508179438506.Spec : Prop :=
  ∀ n, (P3391896508179438506.a n : ℤ) = A020899 (n + 1)

theorem P3391896508179438506.correct : P3391896508179438506.Spec := by
  intro n
  simp only [A020899, Nat.add_sub_cancel]

end A020899

/-! ## A020899.P12991004808944413101

`eq[1, A227351(n)%2]`
-/

namespace A020899.P12991004808944413101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227351 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020899.P12991004808944413101

namespace A020899

/-- `eq[1, A227351(n)%2]` -/
def P12991004808944413101.Spec : Prop :=
  ∀ n, (P12991004808944413101.a n : ℤ) = A020899 (n + 1)

end A020899

/-! ## A020899.P1986666271562260648

`eq[A105774(n+1), A343647(n)]`
-/

namespace A020899.P1986666271562260648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343647 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020899.P1986666271562260648

namespace A020899

/-- `eq[A105774(n+1), A343647(n)]` -/
def P1986666271562260648.Spec : Prop :=
  ∀ n, (P1986666271562260648.a n : ℤ) = A020899 (n + 1)

end A020899

/-! ## A020899.P18070224353067872010

`eq[0, A095111(n)]`
-/

namespace A020899.P18070224353067872010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095111 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020899.P18070224353067872010

namespace A020899

/-- `eq[0, A095111(n)]` -/
def P18070224353067872010.Spec : Prop :=
  ∀ n, (P18070224353067872010.a n : ℤ) = A020899 (n + 1)

end A020899

/-! ## A020899.P2936033293211006060

`lt[0, A095076(n)]`
-/

namespace A020899.P2936033293211006060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A020899.P2936033293211006060

namespace A020899

/-- `lt[0, A095076(n)]` -/
def P2936033293211006060.Spec : Prop :=
  ∀ n, (P2936033293211006060.a n : ℤ) = A020899 (n + 1)

end A020899

/-! ## A020899.P407132473760746687

`eq[1, A007895(n)%2]`
-/

namespace A020899.P407132473760746687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007895 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020899.P407132473760746687

namespace A020899

/-- `eq[1, A007895(n)%2]` -/
def P407132473760746687.Spec : Prop :=
  ∀ n, (P407132473760746687.a n : ℤ) = A020899 (n + 1)

end A020899

/-! ## A020899.P9027618558964218181

`eq[1, and(1, A060140(n))]`
-/

namespace A020899.P9027618558964218181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A060140 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020899.P9027618558964218181

namespace A020899

/-- `eq[1, and(1, A060140(n))]` -/
def P9027618558964218181.Spec : Prop :=
  ∀ n, (P9027618558964218181.a n : ℤ) = A020899 (n + 1)

end A020899

/-! ## A020899.P3853394874233762502

`filter[n+1, A095076(#)]`
-/

namespace A020899.P3853394874233762502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A095076 (f1 j) = 1) n)

end

end A020899.P3853394874233762502

namespace A020899

/-- `filter[n+1, A095076(#)]` -/
def P3853394874233762502.Spec : Prop :=
  ∀ n, (P3853394874233762502.a n : ℤ) = A020899 (n + 1)

end A020899

/-! ## A020899.P12372607226160447608

`lt[1, A232723(n+1)+1]`
-/

namespace A020899.P12372607226160447608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232723 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A020899.P12372607226160447608

namespace A020899

/-- `lt[1, A232723(n+1)+1]` -/
def P12372607226160447608.Spec : Prop :=
  ∀ n, (P12372607226160447608.a n : ℤ) = A020899 (n + 1)

end A020899

/-! ## A020899.P122204313578150525

`eq[A054977(n), A095076(n)]`
-/

namespace A020899.P122204313578150525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020899.P122204313578150525

namespace A020899

/-- `eq[A054977(n), A095076(n)]` -/
def P122204313578150525.Spec : Prop :=
  ∀ n, (P122204313578150525.a n : ℤ) = A020899 (n + 1)

end A020899

/-! ## A020899.P1926865289503070855

`eq[A095076(n), A158388(n)]`
-/

namespace A020899.P1926865289503070855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020899.P1926865289503070855

namespace A020899

/-- `eq[A095076(n), A158388(n)]` -/
def P1926865289503070855.Spec : Prop :=
  ∀ n, (P1926865289503070855.a n : ℤ) = A020899 (n + 1)

end A020899

/-! ## A020899.P13080481594189745670

`eq[2, A020639(A288601(n+2))]`
-/

namespace A020899.P13080481594189745670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A288601 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020899.P13080481594189745670

namespace A020899

/-- `eq[2, A020639(A288601(n+2))]` -/
def P13080481594189745670.Spec : Prop :=
  ∀ n, (P13080481594189745670.a n : ℤ) = A020899 (n + 1)

end A020899

/-! ## A020899.P16988466665109131872

`lt[2, A020639(A288625(n+1))]`
-/

namespace A020899.P16988466665109131872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A288625 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A020899.P16988466665109131872

namespace A020899

/-- `lt[2, A020639(A288625(n+1))]` -/
def P16988466665109131872.Spec : Prop :=
  ∀ n, (P16988466665109131872.a n : ℤ) = A020899 (n + 1)

end A020899

/-! ## A020899.P14644841108321011466

`eq[1, A095076(n*A095076(n))]`
-/

namespace A020899.P14644841108321011466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 ((n : ℤ) * A095076 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020899.P14644841108321011466

namespace A020899

/-- `eq[1, A095076(n*A095076(n))]` -/
def P14644841108321011466.Spec : Prop :=
  ∀ n, (P14644841108321011466.a n : ℤ) = A020899 (n + 1)

end A020899

/-! ## A020899.P5674817082150043917

`lt[A279270(n-A219641(n)), 1]`
-/

namespace A020899.P5674817082150043917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279270 ((n : ℤ) - A219641 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A020899.P5674817082150043917

namespace A020899

/-- `lt[A279270(n-A219641(n)), 1]` -/
def P5674817082150043917.Spec : Prop :=
  ∀ n, (P5674817082150043917.a n : ℤ) = A020899 (n + 1)

end A020899

/-! ## A020899.P9312405923775928557

`eq[char[A337287(n+1)]+1, A095076(n)]`
-/

namespace A020899.P9312405923775928557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337287 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A020899.P9312405923775928557

namespace A020899

/-- `eq[char[A337287(n+1)]+1, A095076(n)]` -/
def P9312405923775928557.Spec : Prop :=
  ∀ n, (P9312405923775928557.a n : ℤ) = A020899 (n + 1)

end A020899

/-! ## A020899.P7192506979390489888

`eq[A001222(A095074(n+1)), A095076(n)]`
-/

namespace A020899.P7192506979390489888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A095074 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020899.P7192506979390489888

namespace A020899

/-- `eq[A001222(A095074(n+1)), A095076(n)]` -/
def P7192506979390489888.Spec : Prop :=
  ∀ n, (P7192506979390489888.a n : ℤ) = A020899 (n + 1)

end A020899

/-! ## A020899.P1650761874951396724

`eq[A001222(A095070(n+1)), A095076(n)]`
-/

namespace A020899.P1650761874951396724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A095070 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020899.P1650761874951396724

namespace A020899

/-- `eq[A001222(A095070(n+1)), A095076(n)]` -/
def P1650761874951396724.Spec : Prop :=
  ∀ n, (P1650761874951396724.a n : ℤ) = A020899 (n + 1)

end A020899

/-! ## A020899.P9805115704290109255

`lt[A279270(A219641(n)+n), 1]`
-/

namespace A020899.P9805115704290109255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279270 (A219641 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A020899.P9805115704290109255

namespace A020899

/-- `lt[A279270(A219641(n)+n), 1]` -/
def P9805115704290109255.Spec : Prop :=
  ∀ n, (P9805115704290109255.a n : ℤ) = A020899 (n + 1)

end A020899

