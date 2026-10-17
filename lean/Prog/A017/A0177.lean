import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C014
import Seq.B000.C017
import Seq.B001.C001
import Seq.B001.C004
import Seq.B001.C009
import Seq.B002.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C006
import Seq.Opaque.C008
import Seq.Opaque.C010
import Seq.Opaque.C013
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023

/-!
# A017700: Denominator of sum of -18th powers of divisors of n.

The programs for A017700, there is no canonical definition to state claims against.
-/

/-! ## A017700.P11288787259599069087

`A053143(A017672(n+1))²²*A017668(n+1)`
-/

namespace A017700.P11288787259599069087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053143 (A017672 (n + 1)).toNat ^ 2) ^ 2 * A017668 (n + 1)

end

end A017700.P11288787259599069087

/-! ## A017700.P9738014633778574168

`(n+1)^18/A043288(A062919(n))`
-/

namespace A017700.P9738014633778574168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 18 : ℚ) / (A043288 (A062919 n).toNat : ℚ)

end

end A017700.P9738014633778574168

/-! ## A017700.P13467041452881346557

`A000583((n+1)²²)*A017668(n+1)`
-/

namespace A017700.P13467041452881346557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (((n + 1) ^ 2) ^ 2) * A017668 (n + 1)

end

end A017700.P13467041452881346557

/-!
# A017701: Numerator of sum of -19th powers of divisors of n.

The programs for A017701, there is no canonical definition to state claims against.
-/

/-! ## A017701.P9687170685684995416

`A013967(n+1)/A112373(A256311(n))`
-/

namespace A017701.P9687170685684995416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013967 (n + 1) : ℚ) / (A112373 (A256311 n).toNat : ℚ)

end

end A017701.P9687170685684995416

/-! ## A017701.P2497063055493526997

`A013967(n+1)/A144871(A035352(n+1))`
-/

namespace A017701.P2497063055493526997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013967 (n + 1) : ℚ) / (A144871 (A035352 (n + 1)).toNat : ℚ)

end

end A017701.P2497063055493526997

/-!
# A017702: Denominator of sum of -19th powers of divisors of n.

The programs for A017702, there is no canonical definition to state claims against.
-/

/-! ## A017702.P16962077076643780683

`record[A127093(n+1)²]*A017698(n+1)`
-/

namespace A017702.P16962077076643780683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A017698 (n + 1)

end

end A017702.P16962077076643780683

/-!
# A017703: Numerator of sum of -20th powers of divisors of n.

The programs for A017703, there is no canonical definition to state claims against.
-/

/-! ## A017703.P17074418450816191389

`A013968(n+1)/A298735(A360451(2*n+5))`
-/

namespace A017703.P17074418450816191389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013968 (n + 1) : ℚ) / (A298735 (A360451 (2 * n + 5)).toNat : ℚ)

end

end A017703.P17074418450816191389

/-! ## A017703.P9350678089230313899

`A013968(n+1)/A293515(A013954(n+1))`
-/

namespace A017703.P9350678089230313899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013968 (n + 1) : ℚ) / (A293515 (A013954 (n + 1)).toNat : ℚ)

end

end A017703.P9350678089230313899

/-!
# A017704: Denominator of sum of -20th powers of divisors of n.

The programs for A017704, there is no canonical definition to state claims against.
-/

/-! ## A017704.P18200125026203683170

`(n+1)^16*A000027(A017672(n+1))`
-/

namespace A017704.P18200125026203683170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 16 : ℤ) * A000027 (A017672 (n + 1)).toNat

end

end A017704.P18200125026203683170

/-!
# A017706: Denominator of sum of -21st powers of divisors of n.

The programs for A017706, there is no canonical definition to state claims against.
-/

/-! ## A017706.P9602047382596875381

`(n+1)^A291469(A241676(n+1))`
-/

namespace A017706.P9602047382596875381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A291469 (A241676 (n + 1)).toNat : ℤ)

end

end A017706.P9602047382596875381

/-! ## A017706.P7673236287470980460

`(n+1)^A300088(or(1, A011898(n)))`
-/

namespace A017706.P7673236287470980460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A300088 (Int.lor 1 (A011898 n)).toNat : ℤ)

end

end A017706.P7673236287470980460

/-!
# A017708: Denominator of sum of -22nd powers of divisors of n.

The programs for A017708, there is no canonical definition to state claims against.
-/

/-! ## A017708.P33200588160040127

`A010810(n+1)/A319567(A074115(n))`
-/

namespace A017708.P33200588160040127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010810 (n + 1) : ℚ) / (A319567 (A074115 n).toNat : ℚ)

end

end A017708.P33200588160040127

/-!
# A017710: 

The programs for A017710, there is no canonical definition to state claims against.
-/

/-! ## A017710.P17077900480396035478

`(n+1)^A000040(3^A020639((2*n)!))`
-/

namespace A017710.P17077900480396035478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A000040 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A020639 (Nat.factorial (2 * n)) : ℤ))).toNat : ℤ)

end

end A017710.P17077900480396035478

/-!
# A017712: 

The programs for A017712, there is no canonical definition to state claims against.
-/

/-! ## A017712.P13991867865079595426

`(n+1)^(gcd(5, n)+3)!`
-/

namespace A017712.P13991867865079595426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ Nat.factorial (Nat.gcd 5 n + 3)

end

end A017712.P13991867865079595426

/-!
# A017713: Binomial coefficients C(n,49).

The programs for A017713, the canonical program `A017713.P16529297107867664074` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017713 has offset 49).

The definition of A017713 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2075 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017713.P13057318743010995544

`(49/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017713.P13057318743010995544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (49 / (n : ℚ) + 1) * a (n - 1)

end

end A017713.P13057318743010995544

namespace A017713

/-- `(49/n+1)*a(n-1)` -/
def P13057318743010995544.Spec : Prop :=
  ∀ n, P13057318743010995544.a n = (A017713 (n + 49) : ℚ)

end A017713

/-! ## A017713.P16529297107867664074

`∑[A011001(n)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A017713

/-- `∑[A011001(n)]` -/
def P16529297107867664074.Spec : Prop :=
  ∀ n, P16529297107867664074.a n = A017713 (n + 49)

theorem P16529297107867664074.correct : P16529297107867664074.Spec := by
  intro n
  simp only [A017713, Nat.add_sub_cancel]

end A017713

/-! ## A017713.P5724431996901410928

`∑[∑[A011000(n)]]`
-/

namespace A017713.P5724431996901410928
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011000 (n + 47)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017713.P5724431996901410928

namespace A017713

/-- `∑[∑[A011000(n)]]` -/
def P5724431996901410928.Spec : Prop :=
  ∀ n, P5724431996901410928.a n = A017713 (n + 49)

end A017713

/-! ## A017713.P12950631795584579777

`∑[∑[∑[A010999(n)]]]`
-/

namespace A017713.P12950631795584579777
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010999 (n + 46)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017713.P12950631795584579777

namespace A017713

/-- `∑[∑[∑[A010999(n)]]]` -/
def P12950631795584579777.Spec : Prop :=
  ∀ n, P12950631795584579777.a n = A017713 (n + 49)

end A017713

/-! ## A017713.P9807602577676882251

`C(n+49, 49)`
-/

namespace A017713.P9807602577676882251
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 49) 49

end

end A017713.P9807602577676882251

namespace A017713

/-- `C(n+49, 49)` -/
def P9807602577676882251.Spec : Prop :=
  ∀ n, (P9807602577676882251.a n : ℤ) = A017713 (n + 49)

end A017713

/-!
# A017714: Binomial coefficients C(n,50).

The programs for A017714, the canonical program `A017714.P6179014877389906983` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017714 has offset 50).

The definition of A017714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1923 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017714.P2170119038312821039

`(50/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017714.P2170119038312821039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (50 / (n : ℚ) + 1) * a (n - 1)

end

end A017714.P2170119038312821039

namespace A017714

/-- `(50/n+1)*a(n-1)` -/
def P2170119038312821039.Spec : Prop :=
  ∀ n, P2170119038312821039.a n = (A017714 (n + 50) : ℚ)

end A017714

/-! ## A017714.P6179014877389906983

`∑[A017713(n)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A017714

/-- `∑[A017713(n)]` -/
def P6179014877389906983.Spec : Prop :=
  ∀ n, P6179014877389906983.a n = A017714 (n + 50)

theorem P6179014877389906983.correct : P6179014877389906983.Spec := by
  intro n
  simp only [A017714, Nat.add_sub_cancel]

end A017714

/-! ## A017714.P10659357708951682618

`∑[∑[A011001(n)]]`
-/

namespace A017714.P10659357708951682618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011001 (n + 48)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017714.P10659357708951682618

namespace A017714

/-- `∑[∑[A011001(n)]]` -/
def P10659357708951682618.Spec : Prop :=
  ∀ n, P10659357708951682618.a n = A017714 (n + 50)

end A017714

/-! ## A017714.P625377724019665251

`∑[∑[∑[A011000(n)]]]`
-/

namespace A017714.P625377724019665251
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011000 (n + 47)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017714.P625377724019665251

namespace A017714

/-- `∑[∑[∑[A011000(n)]]]` -/
def P625377724019665251.Spec : Prop :=
  ∀ n, P625377724019665251.a n = A017714 (n + 50)

end A017714

/-! ## A017714.P15036691043390176521

`C(n+50, 50)`
-/

namespace A017714.P15036691043390176521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 50) 50

end

end A017714.P15036691043390176521

namespace A017714

/-- `C(n+50, 50)` -/
def P15036691043390176521.Spec : Prop :=
  ∀ n, (P15036691043390176521.a n : ℤ) = A017714 (n + 50)

end A017714

/-! ## A017714.P2063207784387926658

`A017715(n+1)-(A017715(n)+A017713(n+1))`
-/

namespace A017714.P2063207784387926658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017715 (n + 1 + 51) - (A017715 (n + 51) + A017713 (n + 1 + 49))

end

end A017714.P2063207784387926658

namespace A017714

/-- `A017715(n+1)-(A017715(n)+A017713(n+1))` -/
def P2063207784387926658.Spec : Prop :=
  ∀ n, P2063207784387926658.a n = A017714 (n + 50)

end A017714

/-!
# A017715: Binomial coefficients C(n,51).

The programs for A017715, the canonical program `A017715.P11410567206555999406` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017715 has offset 51).

The definition of A017715 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1789 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017715.P3119920664205133838

`(51/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017715.P3119920664205133838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (51 / (n : ℚ) + 1) * a (n - 1)

end

end A017715.P3119920664205133838

namespace A017715

/-- `(51/n+1)*a(n-1)` -/
def P3119920664205133838.Spec : Prop :=
  ∀ n, P3119920664205133838.a n = (A017715 (n + 51) : ℚ)

end A017715

/-! ## A017715.P11410567206555999406

`∑[A017714(n)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A017715

/-- `∑[A017714(n)]` -/
def P11410567206555999406.Spec : Prop :=
  ∀ n, P11410567206555999406.a n = A017715 (n + 51)

theorem P11410567206555999406.correct : P11410567206555999406.Spec := by
  intro n
  simp only [A017715, Nat.add_sub_cancel]

end A017715

/-! ## A017715.P17313505540961413762

`∑[∑[A017713(n)]]`
-/

namespace A017715.P17313505540961413762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017713 (n + 49)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017715.P17313505540961413762

namespace A017715

/-- `∑[∑[A017713(n)]]` -/
def P17313505540961413762.Spec : Prop :=
  ∀ n, P17313505540961413762.a n = A017715 (n + 51)

end A017715

/-! ## A017715.P802000083385121870

`∑[∑[∑[A011001(n)]]]`
-/

namespace A017715.P802000083385121870
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011001 (n + 48)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017715.P802000083385121870

namespace A017715

/-- `∑[∑[∑[A011001(n)]]]` -/
def P802000083385121870.Spec : Prop :=
  ∀ n, P802000083385121870.a n = A017715 (n + 51)

end A017715

/-! ## A017715.P11380529323861967982

`C(n+51, 51)`
-/

namespace A017715.P11380529323861967982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 51) 51

end

end A017715.P11380529323861967982

namespace A017715

/-- `C(n+51, 51)` -/
def P11380529323861967982.Spec : Prop :=
  ∀ n, (P11380529323861967982.a n : ℤ) = A017715 (n + 51)

end A017715

/-!
# A017716: Binomial coefficients C(n,52).

The programs for A017716, the canonical program `A017716.P11394297816521342644` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017716 has offset 52).

The definition of A017716 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1668 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017716.P6570984770122793580

`(52/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017716.P6570984770122793580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (52 / (n : ℚ) + 1) * a (n - 1)

end

end A017716.P6570984770122793580

namespace A017716

/-- `(52/n+1)*a(n-1)` -/
def P6570984770122793580.Spec : Prop :=
  ∀ n, P6570984770122793580.a n = (A017716 (n + 52) : ℚ)

end A017716

/-! ## A017716.P11394297816521342644

`∑[A017715(n)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A017716

/-- `∑[A017715(n)]` -/
def P11394297816521342644.Spec : Prop :=
  ∀ n, P11394297816521342644.a n = A017716 (n + 52)

theorem P11394297816521342644.correct : P11394297816521342644.Spec := by
  intro n
  simp only [A017716, Nat.add_sub_cancel]

end A017716

/-! ## A017716.P8751652112443485643

`∑[∑[A017714(n)]]`
-/

namespace A017716.P8751652112443485643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017714 (n + 50)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017716.P8751652112443485643

namespace A017716

/-- `∑[∑[A017714(n)]]` -/
def P8751652112443485643.Spec : Prop :=
  ∀ n, P8751652112443485643.a n = A017716 (n + 52)

end A017716

/-! ## A017716.P9919666434945162330

`∑[∑[∑[A017713(n)]]]`
-/

namespace A017716.P9919666434945162330
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017713 (n + 49)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017716.P9919666434945162330

namespace A017716

/-- `∑[∑[∑[A017713(n)]]]` -/
def P9919666434945162330.Spec : Prop :=
  ∀ n, P9919666434945162330.a n = A017716 (n + 52)

end A017716

/-! ## A017716.P6170450160839832471

`A017717(n+1)-(A017717(n)+A017715(n+1))`
-/

namespace A017716.P6170450160839832471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017717 (n + 1 + 53) - (A017717 (n + 53) + A017715 (n + 1 + 51))

end

end A017716.P6170450160839832471

namespace A017716

/-- `A017717(n+1)-(A017717(n)+A017715(n+1))` -/
def P6170450160839832471.Spec : Prop :=
  ∀ n, P6170450160839832471.a n = A017716 (n + 52)

end A017716

/-! ## A017716.P1196684802682968046

`C(n+52, 52)`
-/

namespace A017716.P1196684802682968046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 52) 52

end

end A017716.P1196684802682968046

namespace A017716

/-- `C(n+52, 52)` -/
def P1196684802682968046.Spec : Prop :=
  ∀ n, (P1196684802682968046.a n : ℤ) = A017716 (n + 52)

end A017716

/-!
# A017717: Binomial coefficients C(n,53).

The programs for A017717, the canonical program `A017717.P7995580545994119710` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017717 has offset 53).

The definition of A017717 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1561 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017717.P17182103546820703227

`(53/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017717.P17182103546820703227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (53 / (n : ℚ) + 1) * a (n - 1)

end

end A017717.P17182103546820703227

namespace A017717

/-- `(53/n+1)*a(n-1)` -/
def P17182103546820703227.Spec : Prop :=
  ∀ n, P17182103546820703227.a n = (A017717 (n + 53) : ℚ)

end A017717

/-! ## A017717.P7995580545994119710

`∑[A017716(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017717

/-- `∑[A017716(n)]` -/
def P7995580545994119710.Spec : Prop :=
  ∀ n, P7995580545994119710.a n = A017717 (n + 53)

theorem P7995580545994119710.correct : P7995580545994119710.Spec := by
  intro n
  simp only [A017717, Nat.add_sub_cancel]

end A017717

/-! ## A017717.P18381912748759535351

`∑[∑[A017715(n)]]`
-/

namespace A017717.P18381912748759535351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017715 (n + 51)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017717.P18381912748759535351

namespace A017717

/-- `∑[∑[A017715(n)]]` -/
def P18381912748759535351.Spec : Prop :=
  ∀ n, P18381912748759535351.a n = A017717 (n + 53)

end A017717

/-! ## A017717.P1494080037535993588

`∑[∑[∑[A017714(n)]]]`
-/

namespace A017717.P1494080037535993588
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017714 (n + 50)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017717.P1494080037535993588

namespace A017717

/-- `∑[∑[∑[A017714(n)]]]` -/
def P1494080037535993588.Spec : Prop :=
  ∀ n, P1494080037535993588.a n = A017717 (n + 53)

end A017717

/-! ## A017717.P9788076803989316397

`C(n+53, 53)`
-/

namespace A017717.P9788076803989316397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 53) 53

end

end A017717.P9788076803989316397

namespace A017717

/-- `C(n+53, 53)` -/
def P9788076803989316397.Spec : Prop :=
  ∀ n, (P9788076803989316397.a n : ℤ) = A017717 (n + 53)

end A017717

/-!
# A017718: Binomial coefficients C(n,54).

The programs for A017718, the canonical program `A017718.P11977487333208709651` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017718 has offset 54).

The definition of A017718 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1464 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017718.P4535421981812699361

`(54/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017718.P4535421981812699361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (54 / (n : ℚ) + 1) * a (n - 1)

end

end A017718.P4535421981812699361

namespace A017718

/-- `(54/n+1)*a(n-1)` -/
def P4535421981812699361.Spec : Prop :=
  ∀ n, P4535421981812699361.a n = (A017718 (n + 54) : ℚ)

end A017718

/-! ## A017718.P11977487333208709651

`∑[A017717(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017718

/-- `∑[A017717(n)]` -/
def P11977487333208709651.Spec : Prop :=
  ∀ n, P11977487333208709651.a n = A017718 (n + 54)

theorem P11977487333208709651.correct : P11977487333208709651.Spec := by
  intro n
  simp only [A017718, Nat.add_sub_cancel]

end A017718

/-! ## A017718.P6667682111055322773

`∑[∑[A017716(n)]]`
-/

namespace A017718.P6667682111055322773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017716 (n + 52)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017718.P6667682111055322773

namespace A017718

/-- `∑[∑[A017716(n)]]` -/
def P6667682111055322773.Spec : Prop :=
  ∀ n, P6667682111055322773.a n = A017718 (n + 54)

end A017718

/-! ## A017718.P17988863625372304091

`∑[∑[∑[A017715(n)]]]`
-/

namespace A017718.P17988863625372304091
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017715 (n + 51)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017718.P17988863625372304091

namespace A017718

/-- `∑[∑[∑[A017715(n)]]]` -/
def P17988863625372304091.Spec : Prop :=
  ∀ n, P17988863625372304091.a n = A017718 (n + 54)

end A017718

/-! ## A017718.P7567004254496258121

`A017719(n+1)-(A017719(n)+A017717(n+1))`
-/

namespace A017718.P7567004254496258121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017719 (n + 1 + 55) - (A017719 (n + 55) + A017717 (n + 1 + 53))

end

end A017718.P7567004254496258121

namespace A017718

/-- `A017719(n+1)-(A017719(n)+A017717(n+1))` -/
def P7567004254496258121.Spec : Prop :=
  ∀ n, P7567004254496258121.a n = A017718 (n + 54)

end A017718

/-! ## A017718.P2516901458738414340

`C(n+54, 54)`
-/

namespace A017718.P2516901458738414340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 54) 54

end

end A017718.P2516901458738414340

namespace A017718

/-- `C(n+54, 54)` -/
def P2516901458738414340.Spec : Prop :=
  ∀ n, (P2516901458738414340.a n : ℤ) = A017718 (n + 54)

end A017718

/-!
# A017719: Binomial coefficients C(n,55).

The programs for A017719, the canonical program `A017719.P5402933991974747899` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017719 has offset 55).

The definition of A017719 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1377 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017719.P17030449060535136776

`(55/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017719.P17030449060535136776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (55 / (n : ℚ) + 1) * a (n - 1)

end

end A017719.P17030449060535136776

namespace A017719

/-- `(55/n+1)*a(n-1)` -/
def P17030449060535136776.Spec : Prop :=
  ∀ n, P17030449060535136776.a n = (A017719 (n + 55) : ℚ)

end A017719

/-! ## A017719.P5402933991974747899

`∑[A017718(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017719

/-- `∑[A017718(n)]` -/
def P5402933991974747899.Spec : Prop :=
  ∀ n, P5402933991974747899.a n = A017719 (n + 55)

theorem P5402933991974747899.correct : P5402933991974747899.Spec := by
  intro n
  simp only [A017719, Nat.add_sub_cancel]

end A017719

/-! ## A017719.P11931885490634338041

`∑[∑[A017717(n)]]`
-/

namespace A017719.P11931885490634338041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017717 (n + 53)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017719.P11931885490634338041

namespace A017719

/-- `∑[∑[A017717(n)]]` -/
def P11931885490634338041.Spec : Prop :=
  ∀ n, P11931885490634338041.a n = A017719 (n + 55)

end A017719

/-! ## A017719.P1649436026609969057

`∑[∑[∑[A017716(n)]]]`
-/

namespace A017719.P1649436026609969057
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017716 (n + 52)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017719.P1649436026609969057

namespace A017719

/-- `∑[∑[∑[A017716(n)]]]` -/
def P1649436026609969057.Spec : Prop :=
  ∀ n, P1649436026609969057.a n = A017719 (n + 55)

end A017719

/-! ## A017719.P5835049287861338158

`C(n+55, 55)`
-/

namespace A017719.P5835049287861338158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 55) 55

end

end A017719.P5835049287861338158

namespace A017719

/-- `C(n+55, 55)` -/
def P5835049287861338158.Spec : Prop :=
  ∀ n, (P5835049287861338158.a n : ℤ) = A017719 (n + 55)

end A017719

/-!
# A017720: Binomial coefficients C(n,56).

The programs for A017720, the canonical program `A017720.P2020099448235417481` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017720 has offset 56).

The definition of A017720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1298 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017720.P1988623839893399236

`(56/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017720.P1988623839893399236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (56 / (n : ℚ) + 1) * a (n - 1)

end

end A017720.P1988623839893399236

namespace A017720

/-- `(56/n+1)*a(n-1)` -/
def P1988623839893399236.Spec : Prop :=
  ∀ n, P1988623839893399236.a n = (A017720 (n + 56) : ℚ)

end A017720

/-! ## A017720.P2020099448235417481

`∑[A017719(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017720

/-- `∑[A017719(n)]` -/
def P2020099448235417481.Spec : Prop :=
  ∀ n, P2020099448235417481.a n = A017720 (n + 56)

theorem P2020099448235417481.correct : P2020099448235417481.Spec := by
  intro n
  simp only [A017720, Nat.add_sub_cancel]

end A017720

/-! ## A017720.P7023426633302526130

`∑[∑[A017718(n)]]`
-/

namespace A017720.P7023426633302526130
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017718 (n + 54)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017720.P7023426633302526130

namespace A017720

/-- `∑[∑[A017718(n)]]` -/
def P7023426633302526130.Spec : Prop :=
  ∀ n, P7023426633302526130.a n = A017720 (n + 56)

end A017720

/-! ## A017720.P13027606282070991647

`∑[∑[∑[A017717(n)]]]`
-/

namespace A017720.P13027606282070991647
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017717 (n + 53)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017720.P13027606282070991647

namespace A017720

/-- `∑[∑[∑[A017717(n)]]]` -/
def P13027606282070991647.Spec : Prop :=
  ∀ n, P13027606282070991647.a n = A017720 (n + 56)

end A017720

/-! ## A017720.P8726861138414770182

`C(n+56, 56)`
-/

namespace A017720.P8726861138414770182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 56) 56

end

end A017720.P8726861138414770182

namespace A017720

/-- `C(n+56, 56)` -/
def P8726861138414770182.Spec : Prop :=
  ∀ n, (P8726861138414770182.a n : ℤ) = A017720 (n + 56)

end A017720

/-!
# A017721: Binomial coefficients C(n,57).

The programs for A017721, the canonical program `A017721.P9193209919299833223` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017721 has offset 57).

The definition of A017721 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1226 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017721.P4167270771932517792

`(57/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017721.P4167270771932517792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (57 / (n : ℚ) + 1) * a (n - 1)

end

end A017721.P4167270771932517792

namespace A017721

/-- `(57/n+1)*a(n-1)` -/
def P4167270771932517792.Spec : Prop :=
  ∀ n, P4167270771932517792.a n = (A017721 (n + 57) : ℚ)

end A017721

/-! ## A017721.P9193209919299833223

`∑[A017720(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017721

/-- `∑[A017720(n)]` -/
def P9193209919299833223.Spec : Prop :=
  ∀ n, P9193209919299833223.a n = A017721 (n + 57)

theorem P9193209919299833223.correct : P9193209919299833223.Spec := by
  intro n
  simp only [A017721, Nat.add_sub_cancel]

end A017721

/-! ## A017721.P15318966234240779953

`∑[∑[A017719(n)]]`
-/

namespace A017721.P15318966234240779953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017719 (n + 55)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017721.P15318966234240779953

namespace A017721

/-- `∑[∑[A017719(n)]]` -/
def P15318966234240779953.Spec : Prop :=
  ∀ n, P15318966234240779953.a n = A017721 (n + 57)

end A017721

/-! ## A017721.P6608093199703500274

`∑[∑[∑[A017718(n)]]]`
-/

namespace A017721.P6608093199703500274
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017718 (n + 54)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017721.P6608093199703500274

namespace A017721

/-- `∑[∑[∑[A017718(n)]]]` -/
def P6608093199703500274.Spec : Prop :=
  ∀ n, P6608093199703500274.a n = A017721 (n + 57)

end A017721

/-! ## A017721.P5465309258776685988

`C(n+57, 57)`
-/

namespace A017721.P5465309258776685988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 57) 57

end

end A017721.P5465309258776685988

namespace A017721

/-- `C(n+57, 57)` -/
def P5465309258776685988.Spec : Prop :=
  ∀ n, (P5465309258776685988.a n : ℤ) = A017721 (n + 57)

end A017721

/-!
# A017722: Binomial coefficients C(n,58).

The programs for A017722, the canonical program `A017722.P514475061778722021` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017722 has offset 58).

The definition of A017722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1161 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017722.P7969521568131393158

`(58/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017722.P7969521568131393158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (58 / (n : ℚ) + 1) * a (n - 1)

end

end A017722.P7969521568131393158

namespace A017722

/-- `(58/n+1)*a(n-1)` -/
def P7969521568131393158.Spec : Prop :=
  ∀ n, P7969521568131393158.a n = (A017722 (n + 58) : ℚ)

end A017722

/-! ## A017722.P514475061778722021

`∑[A017721(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017722

/-- `∑[A017721(n)]` -/
def P514475061778722021.Spec : Prop :=
  ∀ n, P514475061778722021.a n = A017722 (n + 58)

theorem P514475061778722021.correct : P514475061778722021.Spec := by
  intro n
  simp only [A017722, Nat.add_sub_cancel]

end A017722

/-! ## A017722.P17359375592995678461

`∑[∑[A017720(n)]]`
-/

namespace A017722.P17359375592995678461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017720 (n + 56)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017722.P17359375592995678461

namespace A017722

/-- `∑[∑[A017720(n)]]` -/
def P17359375592995678461.Spec : Prop :=
  ∀ n, P17359375592995678461.a n = A017722 (n + 58)

end A017722

/-! ## A017722.P1824502151694417786

`∑[∑[∑[A017719(n)]]]`
-/

namespace A017722.P1824502151694417786
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017719 (n + 55)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017722.P1824502151694417786

namespace A017722

/-- `∑[∑[∑[A017719(n)]]]` -/
def P1824502151694417786.Spec : Prop :=
  ∀ n, P1824502151694417786.a n = A017722 (n + 58)

end A017722

/-! ## A017722.P9499149341784985462

`C(n+58, 58)`
-/

namespace A017722.P9499149341784985462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 58) 58

end

end A017722.P9499149341784985462

namespace A017722

/-- `C(n+58, 58)` -/
def P9499149341784985462.Spec : Prop :=
  ∀ n, (P9499149341784985462.a n : ℤ) = A017722 (n + 58)

end A017722

/-!
# A017723: Binomial coefficients C(n,59).

The programs for A017723, the canonical program `A017723.P14508312129852500030` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017723 has offset 59).

The definition of A017723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017723.P17704748175988720688

`(59/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017723.P17704748175988720688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (59 / (n : ℚ) + 1) * a (n - 1)

end

end A017723.P17704748175988720688

namespace A017723

/-- `(59/n+1)*a(n-1)` -/
def P17704748175988720688.Spec : Prop :=
  ∀ n, P17704748175988720688.a n = (A017723 (n + 59) : ℚ)

end A017723

/-! ## A017723.P14508312129852500030

`∑[A017722(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017723

/-- `∑[A017722(n)]` -/
def P14508312129852500030.Spec : Prop :=
  ∀ n, P14508312129852500030.a n = A017723 (n + 59)

theorem P14508312129852500030.correct : P14508312129852500030.Spec := by
  intro n
  simp only [A017723, Nat.add_sub_cancel]

end A017723

/-! ## A017723.P13558393761397091015

`∑[∑[A017721(n)]]`
-/

namespace A017723.P13558393761397091015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017721 (n + 57)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017723.P13558393761397091015

namespace A017723

/-- `∑[∑[A017721(n)]]` -/
def P13558393761397091015.Spec : Prop :=
  ∀ n, P13558393761397091015.a n = A017723 (n + 59)

end A017723

/-! ## A017723.P5164878223770483311

`∑[∑[∑[A017720(n)]]]`
-/

namespace A017723.P5164878223770483311
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017720 (n + 56)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017723.P5164878223770483311

namespace A017723

/-- `∑[∑[∑[A017720(n)]]]` -/
def P5164878223770483311.Spec : Prop :=
  ∀ n, P5164878223770483311.a n = A017723 (n + 59)

end A017723

/-! ## A017723.P8404478540813400832

`C(n+59, 59)`
-/

namespace A017723.P8404478540813400832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 59) 59

end

end A017723.P8404478540813400832

namespace A017723

/-- `C(n+59, 59)` -/
def P8404478540813400832.Spec : Prop :=
  ∀ n, (P8404478540813400832.a n : ℤ) = A017723 (n + 59)

end A017723

/-!
# A017724: Binomial coefficients C(n,60).

The programs for A017724, the canonical program `A017724.P14770689145357839161` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017724 has offset 60).

The definition of A017724 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1047 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017724.P8545923703334506040

`(60/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017724.P8545923703334506040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (60 / (n : ℚ) + 1) * a (n - 1)

end

end A017724.P8545923703334506040

namespace A017724

/-- `(60/n+1)*a(n-1)` -/
def P8545923703334506040.Spec : Prop :=
  ∀ n, P8545923703334506040.a n = (A017724 (n + 60) : ℚ)

end A017724

/-! ## A017724.P14770689145357839161

`∑[A017723(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017724

/-- `∑[A017723(n)]` -/
def P14770689145357839161.Spec : Prop :=
  ∀ n, P14770689145357839161.a n = A017724 (n + 60)

theorem P14770689145357839161.correct : P14770689145357839161.Spec := by
  intro n
  simp only [A017724, Nat.add_sub_cancel]

end A017724

/-! ## A017724.P15633665439522119954

`∑[∑[A017722(n)]]`
-/

namespace A017724.P15633665439522119954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017722 (n + 58)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017724.P15633665439522119954

namespace A017724

/-- `∑[∑[A017722(n)]]` -/
def P15633665439522119954.Spec : Prop :=
  ∀ n, P15633665439522119954.a n = A017724 (n + 60)

end A017724

/-! ## A017724.P2354506001198923035

`∑[∑[∑[A017721(n)]]]`
-/

namespace A017724.P2354506001198923035
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017721 (n + 57)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017724.P2354506001198923035

namespace A017724

/-- `∑[∑[∑[A017721(n)]]]` -/
def P2354506001198923035.Spec : Prop :=
  ∀ n, P2354506001198923035.a n = A017724 (n + 60)

end A017724

/-! ## A017724.P13572772177497320718

`C(n+60, 60)`
-/

namespace A017724.P13572772177497320718
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 60) 60

end

end A017724.P13572772177497320718

namespace A017724

/-- `C(n+60, 60)` -/
def P13572772177497320718.Spec : Prop :=
  ∀ n, (P13572772177497320718.a n : ℤ) = A017724 (n + 60)

end A017724

/-!
# A017725: Binomial coefficients C(n,61).

The programs for A017725, the canonical program `A017725.P6691572762081257149` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017725 has offset 61).

The definition of A017725 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017725.P18046708923591241059

`(61/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017725.P18046708923591241059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (61 / (n : ℚ) + 1) * a (n - 1)

end

end A017725.P18046708923591241059

namespace A017725

/-- `(61/n+1)*a(n-1)` -/
def P18046708923591241059.Spec : Prop :=
  ∀ n, P18046708923591241059.a n = (A017725 (n + 61) : ℚ)

end A017725

/-! ## A017725.P6691572762081257149

`∑[A017724(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017725

/-- `∑[A017724(n)]` -/
def P6691572762081257149.Spec : Prop :=
  ∀ n, P6691572762081257149.a n = A017725 (n + 61)

theorem P6691572762081257149.correct : P6691572762081257149.Spec := by
  intro n
  simp only [A017725, Nat.add_sub_cancel]

end A017725

/-! ## A017725.P4266586693605087685

`∑[∑[A017723(n)]]`
-/

namespace A017725.P4266586693605087685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017723 (n + 59)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017725.P4266586693605087685

namespace A017725

/-- `∑[∑[A017723(n)]]` -/
def P4266586693605087685.Spec : Prop :=
  ∀ n, P4266586693605087685.a n = A017725 (n + 61)

end A017725

/-! ## A017725.P14998559874581157289

`∑[∑[∑[A017722(n)]]]`
-/

namespace A017725.P14998559874581157289
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017722 (n + 58)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017725.P14998559874581157289

namespace A017725

/-- `∑[∑[∑[A017722(n)]]]` -/
def P14998559874581157289.Spec : Prop :=
  ∀ n, P14998559874581157289.a n = A017725 (n + 61)

end A017725

/-! ## A017725.P13481703121702196573

`C(n+61, 61)`
-/

namespace A017725.P13481703121702196573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 61) 61

end

end A017725.P13481703121702196573

namespace A017725

/-- `C(n+61, 61)` -/
def P13481703121702196573.Spec : Prop :=
  ∀ n, (P13481703121702196573.a n : ℤ) = A017725 (n + 61)

end A017725

/-!
# A017726: Binomial coefficients C(n,62).

The programs for A017726, the canonical program `A017726.P1017718756452369022` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017726 has offset 62).

The definition of A017726 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 951 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017726.P7902234228981687381

`(62/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017726.P7902234228981687381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (62 / (n : ℚ) + 1) * a (n - 1)

end

end A017726.P7902234228981687381

namespace A017726

/-- `(62/n+1)*a(n-1)` -/
def P7902234228981687381.Spec : Prop :=
  ∀ n, P7902234228981687381.a n = (A017726 (n + 62) : ℚ)

end A017726

/-! ## A017726.P1017718756452369022

`∑[A017725(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017726

/-- `∑[A017725(n)]` -/
def P1017718756452369022.Spec : Prop :=
  ∀ n, P1017718756452369022.a n = A017726 (n + 62)

theorem P1017718756452369022.correct : P1017718756452369022.Spec := by
  intro n
  simp only [A017726, Nat.add_sub_cancel]

end A017726

/-! ## A017726.P4576974841809087481

`∑[∑[A017724(n)]]`
-/

namespace A017726.P4576974841809087481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017724 (n + 60)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017726.P4576974841809087481

namespace A017726

/-- `∑[∑[A017724(n)]]` -/
def P4576974841809087481.Spec : Prop :=
  ∀ n, P4576974841809087481.a n = A017726 (n + 62)

end A017726

/-! ## A017726.P3253815809126222396

`∑[∑[∑[A017723(n)]]]`
-/

namespace A017726.P3253815809126222396
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017723 (n + 59)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017726.P3253815809126222396

namespace A017726

/-- `∑[∑[∑[A017723(n)]]]` -/
def P3253815809126222396.Spec : Prop :=
  ∀ n, P3253815809126222396.a n = A017726 (n + 62)

end A017726

/-! ## A017726.P16865516253409696038

`C(n+62, 62)`
-/

namespace A017726.P16865516253409696038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 62) 62

end

end A017726.P16865516253409696038

namespace A017726

/-- `C(n+62, 62)` -/
def P16865516253409696038.Spec : Prop :=
  ∀ n, (P16865516253409696038.a n : ℤ) = A017726 (n + 62)

end A017726

/-!
# A017727: Binomial coefficients C(n,63).

The programs for A017727, the canonical program `A017727.P17582810854778171163` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017727 has offset 63).

The definition of A017727 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 908 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017727.P6622634027447979668

`(63/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017727.P6622634027447979668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (63 / (n : ℚ) + 1) * a (n - 1)

end

end A017727.P6622634027447979668

namespace A017727

/-- `(63/n+1)*a(n-1)` -/
def P6622634027447979668.Spec : Prop :=
  ∀ n, P6622634027447979668.a n = (A017727 (n + 63) : ℚ)

end A017727

/-! ## A017727.P17582810854778171163

`∑[A017726(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017727

/-- `∑[A017726(n)]` -/
def P17582810854778171163.Spec : Prop :=
  ∀ n, P17582810854778171163.a n = A017727 (n + 63)

theorem P17582810854778171163.correct : P17582810854778171163.Spec := by
  intro n
  simp only [A017727, Nat.add_sub_cancel]

end A017727

/-! ## A017727.P6136801978393691879

`∑[∑[A017725(n)]]`
-/

namespace A017727.P6136801978393691879
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017725 (n + 61)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017727.P6136801978393691879

namespace A017727

/-- `∑[∑[A017725(n)]]` -/
def P6136801978393691879.Spec : Prop :=
  ∀ n, P6136801978393691879.a n = A017727 (n + 63)

end A017727

/-! ## A017727.P9757182884686236595

`∑[∑[∑[A017724(n)]]]`
-/

namespace A017727.P9757182884686236595
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017724 (n + 60)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017727.P9757182884686236595

namespace A017727

/-- `∑[∑[∑[A017724(n)]]]` -/
def P9757182884686236595.Spec : Prop :=
  ∀ n, P9757182884686236595.a n = A017727 (n + 63)

end A017727

/-! ## A017727.P8434369615383516214

`C(n+63, 63)`
-/

namespace A017727.P8434369615383516214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 63) 63

end

end A017727.P8434369615383516214

namespace A017727

/-- `C(n+63, 63)` -/
def P8434369615383516214.Spec : Prop :=
  ∀ n, (P8434369615383516214.a n : ℤ) = A017727 (n + 63)

end A017727

/-!
# A017728: Binomial coefficients C(n,64).

The programs for A017728, the canonical program `A017728.P11431522665384639769` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017728 has offset 64).

The definition of A017728 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 869 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017728.P4954556143990496213

`(64/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017728.P4954556143990496213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (64 / (n : ℚ) + 1) * a (n - 1)

end

end A017728.P4954556143990496213

namespace A017728

/-- `(64/n+1)*a(n-1)` -/
def P4954556143990496213.Spec : Prop :=
  ∀ n, P4954556143990496213.a n = (A017728 (n + 64) : ℚ)

end A017728

/-! ## A017728.P11431522665384639769

`∑[A017727(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017728

/-- `∑[A017727(n)]` -/
def P11431522665384639769.Spec : Prop :=
  ∀ n, P11431522665384639769.a n = A017728 (n + 64)

theorem P11431522665384639769.correct : P11431522665384639769.Spec := by
  intro n
  simp only [A017728, Nat.add_sub_cancel]

end A017728

/-! ## A017728.P16971607360287633319

`∑[∑[A017726(n)]]`
-/

namespace A017728.P16971607360287633319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017726 (n + 62)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017728.P16971607360287633319

namespace A017728

/-- `∑[∑[A017726(n)]]` -/
def P16971607360287633319.Spec : Prop :=
  ∀ n, P16971607360287633319.a n = A017728 (n + 64)

end A017728

/-! ## A017728.P2886095878218056238

`∑[∑[∑[A017725(n)]]]`
-/

namespace A017728.P2886095878218056238
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017725 (n + 61)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017728.P2886095878218056238

namespace A017728

/-- `∑[∑[∑[A017725(n)]]]` -/
def P2886095878218056238.Spec : Prop :=
  ∀ n, P2886095878218056238.a n = A017728 (n + 64)

end A017728

/-! ## A017728.P12407562263254602045

`C(n+64, 64)`
-/

namespace A017728.P12407562263254602045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 64) 64

end

end A017728.P12407562263254602045

namespace A017728

/-- `C(n+64, 64)` -/
def P12407562263254602045.Spec : Prop :=
  ∀ n, (P12407562263254602045.a n : ℤ) = A017728 (n + 64)

end A017728

/-!
# A017729: Binomial coefficients C(n,65).

The programs for A017729, the canonical program `A017729.P16774850262266733762` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017729 has offset 65).

The definition of A017729 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 833 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017729.P3416246275868346060

`(65/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017729.P3416246275868346060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (65 / (n : ℚ) + 1) * a (n - 1)

end

end A017729.P3416246275868346060

namespace A017729

/-- `(65/n+1)*a(n-1)` -/
def P3416246275868346060.Spec : Prop :=
  ∀ n, P3416246275868346060.a n = (A017729 (n + 65) : ℚ)

end A017729

/-! ## A017729.P16774850262266733762

`∑[A017728(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017729

/-- `∑[A017728(n)]` -/
def P16774850262266733762.Spec : Prop :=
  ∀ n, P16774850262266733762.a n = A017729 (n + 65)

theorem P16774850262266733762.correct : P16774850262266733762.Spec := by
  intro n
  simp only [A017729, Nat.add_sub_cancel]

end A017729

/-! ## A017729.P2469485910558106105

`∑[∑[A017727(n)]]`
-/

namespace A017729.P2469485910558106105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017727 (n + 63)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017729.P2469485910558106105

namespace A017729

/-- `∑[∑[A017727(n)]]` -/
def P2469485910558106105.Spec : Prop :=
  ∀ n, P2469485910558106105.a n = A017729 (n + 65)

end A017729

/-! ## A017729.P332900304722305112

`∑[∑[∑[A017726(n)]]]`
-/

namespace A017729.P332900304722305112
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017726 (n + 62)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017729.P332900304722305112

namespace A017729

/-- `∑[∑[∑[A017726(n)]]]` -/
def P332900304722305112.Spec : Prop :=
  ∀ n, P332900304722305112.a n = A017729 (n + 65)

end A017729

/-! ## A017729.P10017176030672921714

`C(n+65, 65)`
-/

namespace A017729.P10017176030672921714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 65) 65

end

end A017729.P10017176030672921714

namespace A017729

/-- `C(n+65, 65)` -/
def P10017176030672921714.Spec : Prop :=
  ∀ n, (P10017176030672921714.a n : ℤ) = A017729 (n + 65)

end A017729

/-!
# A017730: Binomial coefficients C(n,66).

The programs for A017730, the canonical program `A017730.P5179396934849345126` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017730 has offset 66).

The definition of A017730 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 799 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017730.P11438337648031238653

`(66/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017730.P11438337648031238653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (66 / (n : ℚ) + 1) * a (n - 1)

end

end A017730.P11438337648031238653

namespace A017730

/-- `(66/n+1)*a(n-1)` -/
def P11438337648031238653.Spec : Prop :=
  ∀ n, P11438337648031238653.a n = (A017730 (n + 66) : ℚ)

end A017730

/-! ## A017730.P5179396934849345126

`∑[A017729(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017730

/-- `∑[A017729(n)]` -/
def P5179396934849345126.Spec : Prop :=
  ∀ n, P5179396934849345126.a n = A017730 (n + 66)

theorem P5179396934849345126.correct : P5179396934849345126.Spec := by
  intro n
  simp only [A017730, Nat.add_sub_cancel]

end A017730

/-! ## A017730.P6783789016659088361

`∑[∑[A017728(n)]]`
-/

namespace A017730.P6783789016659088361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017728 (n + 64)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017730.P6783789016659088361

namespace A017730

/-- `∑[∑[A017728(n)]]` -/
def P6783789016659088361.Spec : Prop :=
  ∀ n, P6783789016659088361.a n = A017730 (n + 66)

end A017730

/-! ## A017730.P16249272866881920164

`∑[∑[∑[A017727(n)]]]`
-/

namespace A017730.P16249272866881920164
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017727 (n + 63)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017730.P16249272866881920164

namespace A017730

/-- `∑[∑[∑[A017727(n)]]]` -/
def P16249272866881920164.Spec : Prop :=
  ∀ n, P16249272866881920164.a n = A017730 (n + 66)

end A017730

/-! ## A017730.P9249337563545520695

`C(n+66, 66)`
-/

namespace A017730.P9249337563545520695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 66) 66

end

end A017730.P9249337563545520695

namespace A017730

/-- `C(n+66, 66)` -/
def P9249337563545520695.Spec : Prop :=
  ∀ n, (P9249337563545520695.a n : ℤ) = A017730 (n + 66)

end A017730

/-!
# A017731: Binomial coefficients C(n,67).

The programs for A017731, the canonical program `A017731.P13324034856362815070` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017731 has offset 67).

The definition of A017731 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 768 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017731.P8187843863695872003

`(67/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017731.P8187843863695872003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (67 / (n : ℚ) + 1) * a (n - 1)

end

end A017731.P8187843863695872003

namespace A017731

/-- `(67/n+1)*a(n-1)` -/
def P8187843863695872003.Spec : Prop :=
  ∀ n, P8187843863695872003.a n = (A017731 (n + 67) : ℚ)

end A017731

/-! ## A017731.P13324034856362815070

`∑[A017730(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017731

/-- `∑[A017730(n)]` -/
def P13324034856362815070.Spec : Prop :=
  ∀ n, P13324034856362815070.a n = A017731 (n + 67)

theorem P13324034856362815070.correct : P13324034856362815070.Spec := by
  intro n
  simp only [A017731, Nat.add_sub_cancel]

end A017731

/-! ## A017731.P3880054704631786191

`∑[∑[A017729(n)]]`
-/

namespace A017731.P3880054704631786191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017729 (n + 65)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017731.P3880054704631786191

namespace A017731

/-- `∑[∑[A017729(n)]]` -/
def P3880054704631786191.Spec : Prop :=
  ∀ n, P3880054704631786191.a n = A017731 (n + 67)

end A017731

/-! ## A017731.P6346895163901552719

`∑[∑[∑[A017728(n)]]]`
-/

namespace A017731.P6346895163901552719
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017728 (n + 64)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017731.P6346895163901552719

namespace A017731

/-- `∑[∑[∑[A017728(n)]]]` -/
def P6346895163901552719.Spec : Prop :=
  ∀ n, P6346895163901552719.a n = A017731 (n + 67)

end A017731

/-! ## A017731.P120937673771027676

`C(n+67, 67)`
-/

namespace A017731.P120937673771027676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 67) 67

end

end A017731.P120937673771027676

namespace A017731

/-- `C(n+67, 67)` -/
def P120937673771027676.Spec : Prop :=
  ∀ n, (P120937673771027676.a n : ℤ) = A017731 (n + 67)

end A017731

/-!
# A017732: Binomial coefficients C(n,68).

The programs for A017732, the canonical program `A017732.P14236783115378075278` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017732 has offset 68).

The definition of A017732 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 739 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017732.P18279228588272920322

`(68/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017732.P18279228588272920322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (68 / (n : ℚ) + 1) * a (n - 1)

end

end A017732.P18279228588272920322

namespace A017732

/-- `(68/n+1)*a(n-1)` -/
def P18279228588272920322.Spec : Prop :=
  ∀ n, P18279228588272920322.a n = (A017732 (n + 68) : ℚ)

end A017732

/-! ## A017732.P14236783115378075278

`∑[A017731(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017732

/-- `∑[A017731(n)]` -/
def P14236783115378075278.Spec : Prop :=
  ∀ n, P14236783115378075278.a n = A017732 (n + 68)

theorem P14236783115378075278.correct : P14236783115378075278.Spec := by
  intro n
  simp only [A017732, Nat.add_sub_cancel]

end A017732

/-! ## A017732.P9560112754702893279

`∑[∑[A017730(n)]]`
-/

namespace A017732.P9560112754702893279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017730 (n + 66)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017732.P9560112754702893279

namespace A017732

/-- `∑[∑[A017730(n)]]` -/
def P9560112754702893279.Spec : Prop :=
  ∀ n, P9560112754702893279.a n = A017732 (n + 68)

end A017732

/-! ## A017732.P909584269195196455

`∑[∑[∑[A017729(n)]]]`
-/

namespace A017732.P909584269195196455
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017729 (n + 65)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017732.P909584269195196455

namespace A017732

/-- `∑[∑[∑[A017729(n)]]]` -/
def P909584269195196455.Spec : Prop :=
  ∀ n, P909584269195196455.a n = A017732 (n + 68)

end A017732

/-! ## A017732.P2006003175052110600

`C(n+68, 68)`
-/

namespace A017732.P2006003175052110600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 68) 68

end

end A017732.P2006003175052110600

namespace A017732

/-- `C(n+68, 68)` -/
def P2006003175052110600.Spec : Prop :=
  ∀ n, (P2006003175052110600.a n : ℤ) = A017732 (n + 68)

end A017732

/-!
# A017733: Binomial coefficients C(n,69).

The programs for A017733, the canonical program `A017733.P4674817067329465653` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017733 has offset 69).

The definition of A017733 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 712 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017733.P8495764270228206136

`(69/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017733.P8495764270228206136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (69 / (n : ℚ) + 1) * a (n - 1)

end

end A017733.P8495764270228206136

namespace A017733

/-- `(69/n+1)*a(n-1)` -/
def P8495764270228206136.Spec : Prop :=
  ∀ n, P8495764270228206136.a n = (A017733 (n + 69) : ℚ)

end A017733

/-! ## A017733.P4674817067329465653

`∑[A017732(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017733

/-- `∑[A017732(n)]` -/
def P4674817067329465653.Spec : Prop :=
  ∀ n, P4674817067329465653.a n = A017733 (n + 69)

theorem P4674817067329465653.correct : P4674817067329465653.Spec := by
  intro n
  simp only [A017733, Nat.add_sub_cancel]

end A017733

/-! ## A017733.P5803946007760753414

`∑[∑[A017731(n)]]`
-/

namespace A017733.P5803946007760753414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017731 (n + 67)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017733.P5803946007760753414

namespace A017733

/-- `∑[∑[A017731(n)]]` -/
def P5803946007760753414.Spec : Prop :=
  ∀ n, P5803946007760753414.a n = A017733 (n + 69)

end A017733

/-! ## A017733.P12768663319491780103

`∑[∑[∑[A017730(n)]]]`
-/

namespace A017733.P12768663319491780103
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017730 (n + 66)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017733.P12768663319491780103

namespace A017733

/-- `∑[∑[∑[A017730(n)]]]` -/
def P12768663319491780103.Spec : Prop :=
  ∀ n, P12768663319491780103.a n = A017733 (n + 69)

end A017733

/-! ## A017733.P1961586987919174819

`C(n+69, 69)`
-/

namespace A017733.P1961586987919174819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 69) 69

end

end A017733.P1961586987919174819

namespace A017733

/-- `C(n+69, 69)` -/
def P1961586987919174819.Spec : Prop :=
  ∀ n, (P1961586987919174819.a n : ℤ) = A017733 (n + 69)

end A017733

/-!
# A017734: Binomial coefficients C(n,70).

The programs for A017734, the canonical program `A017734.P5644106172077716898` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017734 has offset 70).

The definition of A017734 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 687 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017734.P5608570938073065439

`(70/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017734.P5608570938073065439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (70 / (n : ℚ) + 1) * a (n - 1)

end

end A017734.P5608570938073065439

namespace A017734

/-- `(70/n+1)*a(n-1)` -/
def P5608570938073065439.Spec : Prop :=
  ∀ n, P5608570938073065439.a n = (A017734 (n + 70) : ℚ)

end A017734

/-! ## A017734.P5644106172077716898

`∑[A017733(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017734

/-- `∑[A017733(n)]` -/
def P5644106172077716898.Spec : Prop :=
  ∀ n, P5644106172077716898.a n = A017734 (n + 70)

theorem P5644106172077716898.correct : P5644106172077716898.Spec := by
  intro n
  simp only [A017734, Nat.add_sub_cancel]

end A017734

/-! ## A017734.P7634025915400838074

`∑[∑[A017732(n)]]`
-/

namespace A017734.P7634025915400838074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017732 (n + 68)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017734.P7634025915400838074

namespace A017734

/-- `∑[∑[A017732(n)]]` -/
def P7634025915400838074.Spec : Prop :=
  ∀ n, P7634025915400838074.a n = A017734 (n + 70)

end A017734

/-! ## A017734.P5466482245048585403

`∑[∑[∑[A017731(n)]]]`
-/

namespace A017734.P5466482245048585403
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017731 (n + 67)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017734.P5466482245048585403

namespace A017734

/-- `∑[∑[∑[A017731(n)]]]` -/
def P5466482245048585403.Spec : Prop :=
  ∀ n, P5466482245048585403.a n = A017734 (n + 70)

end A017734

/-! ## A017734.P2971952044452986326

`C(n+70, 70)`
-/

namespace A017734.P2971952044452986326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 70) 70

end

end A017734.P2971952044452986326

namespace A017734

/-- `C(n+70, 70)` -/
def P2971952044452986326.Spec : Prop :=
  ∀ n, (P2971952044452986326.a n : ℤ) = A017734 (n + 70)

end A017734

/-!
# A017735: Binomial coefficients C(n,71).

The programs for A017735, the canonical program `A017735.P717836609477066075` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017735 has offset 71).

The definition of A017735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017735.P13988252608853977644

`(71/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017735.P13988252608853977644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (71 / (n : ℚ) + 1) * a (n - 1)

end

end A017735.P13988252608853977644

namespace A017735

/-- `(71/n+1)*a(n-1)` -/
def P13988252608853977644.Spec : Prop :=
  ∀ n, P13988252608853977644.a n = (A017735 (n + 71) : ℚ)

end A017735

/-! ## A017735.P717836609477066075

`∑[A017734(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017735

/-- `∑[A017734(n)]` -/
def P717836609477066075.Spec : Prop :=
  ∀ n, P717836609477066075.a n = A017735 (n + 71)

theorem P717836609477066075.correct : P717836609477066075.Spec := by
  intro n
  simp only [A017735, Nat.add_sub_cancel]

end A017735

/-! ## A017735.P15134110049170034605

`∑[∑[A017733(n)]]`
-/

namespace A017735.P15134110049170034605
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017733 (n + 69)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017735.P15134110049170034605

namespace A017735

/-- `∑[∑[A017733(n)]]` -/
def P15134110049170034605.Spec : Prop :=
  ∀ n, P15134110049170034605.a n = A017735 (n + 71)

end A017735

/-! ## A017735.P9178601917915643208

`∑[∑[∑[A017732(n)]]]`
-/

namespace A017735.P9178601917915643208
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017732 (n + 68)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017735.P9178601917915643208

namespace A017735

/-- `∑[∑[∑[A017732(n)]]]` -/
def P9178601917915643208.Spec : Prop :=
  ∀ n, P9178601917915643208.a n = A017735 (n + 71)

end A017735

/-! ## A017735.P9614447423984953136

`C(n+71, 71)`
-/

namespace A017735.P9614447423984953136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 71) 71

end

end A017735.P9614447423984953136

namespace A017735

/-- `C(n+71, 71)` -/
def P9614447423984953136.Spec : Prop :=
  ∀ n, (P9614447423984953136.a n : ℤ) = A017735 (n + 71)

end A017735

/-!
# A017736: Binomial coefficients C(n,72).

The programs for A017736, the canonical program `A017736.P16724522171775059003` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017736 has offset 72).

The definition of A017736 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 641 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017736.P7984271122512589336

`(72/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017736.P7984271122512589336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (72 / (n : ℚ) + 1) * a (n - 1)

end

end A017736.P7984271122512589336

namespace A017736

/-- `(72/n+1)*a(n-1)` -/
def P7984271122512589336.Spec : Prop :=
  ∀ n, P7984271122512589336.a n = (A017736 (n + 72) : ℚ)

end A017736

/-! ## A017736.P16724522171775059003

`∑[A017735(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017736

/-- `∑[A017735(n)]` -/
def P16724522171775059003.Spec : Prop :=
  ∀ n, P16724522171775059003.a n = A017736 (n + 72)

theorem P16724522171775059003.correct : P16724522171775059003.Spec := by
  intro n
  simp only [A017736, Nat.add_sub_cancel]

end A017736

/-! ## A017736.P3389268845609033013

`∑[∑[A017734(n)]]`
-/

namespace A017736.P3389268845609033013
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017734 (n + 70)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017736.P3389268845609033013

namespace A017736

/-- `∑[∑[A017734(n)]]` -/
def P3389268845609033013.Spec : Prop :=
  ∀ n, P3389268845609033013.a n = A017736 (n + 72)

end A017736

/-! ## A017736.P12042466576201941091

`∑[∑[∑[A017733(n)]]]`
-/

namespace A017736.P12042466576201941091
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017733 (n + 69)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017736.P12042466576201941091

namespace A017736

/-- `∑[∑[∑[A017733(n)]]]` -/
def P12042466576201941091.Spec : Prop :=
  ∀ n, P12042466576201941091.a n = A017736 (n + 72)

end A017736

/-! ## A017736.P9362685868129630472

`C(n+72, 72)`
-/

namespace A017736.P9362685868129630472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 72) 72

end

end A017736.P9362685868129630472

namespace A017736

/-- `C(n+72, 72)` -/
def P9362685868129630472.Spec : Prop :=
  ∀ n, (P9362685868129630472.a n : ℤ) = A017736 (n + 72)

end A017736

/-!
# A017737: Binomial coefficients C(n,73).

The programs for A017737, the canonical program `A017737.P4098759893718384492` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017737 has offset 73).

The definition of A017737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 620 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017737.P12063113302042168313

`(73/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017737.P12063113302042168313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (73 / (n : ℚ) + 1) * a (n - 1)

end

end A017737.P12063113302042168313

namespace A017737

/-- `(73/n+1)*a(n-1)` -/
def P12063113302042168313.Spec : Prop :=
  ∀ n, P12063113302042168313.a n = (A017737 (n + 73) : ℚ)

end A017737

/-! ## A017737.P4098759893718384492

`∑[A017736(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017737

/-- `∑[A017736(n)]` -/
def P4098759893718384492.Spec : Prop :=
  ∀ n, P4098759893718384492.a n = A017737 (n + 73)

theorem P4098759893718384492.correct : P4098759893718384492.Spec := by
  intro n
  simp only [A017737, Nat.add_sub_cancel]

end A017737

/-! ## A017737.P2835351354093803805

`∑[∑[A017735(n)]]`
-/

namespace A017737.P2835351354093803805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017735 (n + 71)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017737.P2835351354093803805

namespace A017737

/-- `∑[∑[A017735(n)]]` -/
def P2835351354093803805.Spec : Prop :=
  ∀ n, P2835351354093803805.a n = A017737 (n + 73)

end A017737

/-! ## A017737.P13548565597736594560

`∑[∑[∑[A017734(n)]]]`
-/

namespace A017737.P13548565597736594560
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017734 (n + 70)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017737.P13548565597736594560

namespace A017737

/-- `∑[∑[∑[A017734(n)]]]` -/
def P13548565597736594560.Spec : Prop :=
  ∀ n, P13548565597736594560.a n = A017737 (n + 73)

end A017737

/-! ## A017737.P11993178932222286433

`C(n+73, 73)`
-/

namespace A017737.P11993178932222286433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 73) 73

end

end A017737.P11993178932222286433

namespace A017737

/-- `C(n+73, 73)` -/
def P11993178932222286433.Spec : Prop :=
  ∀ n, (P11993178932222286433.a n : ℤ) = A017737 (n + 73)

end A017737

/-!
# A017738: Binomial coefficients C(n,74).

The programs for A017738, the canonical program `A017738.P2828578506606250974` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017738 has offset 74).

The definition of A017738 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 601 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017738.P280265319006834497

`(74/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017738.P280265319006834497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (74 / (n : ℚ) + 1) * a (n - 1)

end

end A017738.P280265319006834497

namespace A017738

/-- `(74/n+1)*a(n-1)` -/
def P280265319006834497.Spec : Prop :=
  ∀ n, P280265319006834497.a n = (A017738 (n + 74) : ℚ)

end A017738

/-! ## A017738.P2828578506606250974

`∑[A017737(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017738

/-- `∑[A017737(n)]` -/
def P2828578506606250974.Spec : Prop :=
  ∀ n, P2828578506606250974.a n = A017738 (n + 74)

theorem P2828578506606250974.correct : P2828578506606250974.Spec := by
  intro n
  simp only [A017738, Nat.add_sub_cancel]

end A017738

/-! ## A017738.P13939719414795012354

`∑[∑[A017736(n)]]`
-/

namespace A017738.P13939719414795012354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017736 (n + 72)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017738.P13939719414795012354

namespace A017738

/-- `∑[∑[A017736(n)]]` -/
def P13939719414795012354.Spec : Prop :=
  ∀ n, P13939719414795012354.a n = A017738 (n + 74)

end A017738

/-! ## A017738.P16380662790494044846

`∑[∑[∑[A017735(n)]]]`
-/

namespace A017738.P16380662790494044846
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017735 (n + 71)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017738.P16380662790494044846

namespace A017738

/-- `∑[∑[∑[A017735(n)]]]` -/
def P16380662790494044846.Spec : Prop :=
  ∀ n, P16380662790494044846.a n = A017738 (n + 74)

end A017738

/-! ## A017738.P7361057726420731663

`C(n+74, 74)`
-/

namespace A017738.P7361057726420731663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 74) 74

end

end A017738.P7361057726420731663

namespace A017738

/-- `C(n+74, 74)` -/
def P7361057726420731663.Spec : Prop :=
  ∀ n, (P7361057726420731663.a n : ℤ) = A017738 (n + 74)

end A017738

/-!
# A017739: Binomial coefficients C(n,75).

The programs for A017739, the canonical program `A017739.P13670725559083869896` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017739 has offset 75).

The definition of A017739 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 582 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017739.P15752363518524091100

`(75/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017739.P15752363518524091100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (75 / (n : ℚ) + 1) * a (n - 1)

end

end A017739.P15752363518524091100

namespace A017739

/-- `(75/n+1)*a(n-1)` -/
def P15752363518524091100.Spec : Prop :=
  ∀ n, P15752363518524091100.a n = (A017739 (n + 75) : ℚ)

end A017739

/-! ## A017739.P13670725559083869896

`∑[A017738(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017739

/-- `∑[A017738(n)]` -/
def P13670725559083869896.Spec : Prop :=
  ∀ n, P13670725559083869896.a n = A017739 (n + 75)

theorem P13670725559083869896.correct : P13670725559083869896.Spec := by
  intro n
  simp only [A017739, Nat.add_sub_cancel]

end A017739

/-! ## A017739.P2767224238144470134

`∑[∑[A017737(n)]]`
-/

namespace A017739.P2767224238144470134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017737 (n + 73)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017739.P2767224238144470134

namespace A017739

/-- `∑[∑[A017737(n)]]` -/
def P2767224238144470134.Spec : Prop :=
  ∀ n, P2767224238144470134.a n = A017739 (n + 75)

end A017739

/-! ## A017739.P1489188424503007741

`∑[∑[∑[A017736(n)]]]`
-/

namespace A017739.P1489188424503007741
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017736 (n + 72)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017739.P1489188424503007741

namespace A017739

/-- `∑[∑[∑[A017736(n)]]]` -/
def P1489188424503007741.Spec : Prop :=
  ∀ n, P1489188424503007741.a n = A017739 (n + 75)

end A017739

/-! ## A017739.P17560968630717273417

`C(n+75, 75)`
-/

namespace A017739.P17560968630717273417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 75) 75

end

end A017739.P17560968630717273417

namespace A017739

/-- `C(n+75, 75)` -/
def P17560968630717273417.Spec : Prop :=
  ∀ n, (P17560968630717273417.a n : ℤ) = A017739 (n + 75)

end A017739

/-!
# A017740: Binomial coefficients C(n,76).

The programs for A017740, the canonical program `A017740.P17010489652914152743` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017740 has offset 76).

The definition of A017740 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 565 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017740.P2678890799562343000

`(76/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017740.P2678890799562343000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (76 / (n : ℚ) + 1) * a (n - 1)

end

end A017740.P2678890799562343000

namespace A017740

/-- `(76/n+1)*a(n-1)` -/
def P2678890799562343000.Spec : Prop :=
  ∀ n, P2678890799562343000.a n = (A017740 (n + 76) : ℚ)

end A017740

/-! ## A017740.P17010489652914152743

`∑[A017739(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017740

/-- `∑[A017739(n)]` -/
def P17010489652914152743.Spec : Prop :=
  ∀ n, P17010489652914152743.a n = A017740 (n + 76)

theorem P17010489652914152743.correct : P17010489652914152743.Spec := by
  intro n
  simp only [A017740, Nat.add_sub_cancel]

end A017740

/-! ## A017740.P992131507779017228

`∑[∑[A017738(n)]]`
-/

namespace A017740.P992131507779017228
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017738 (n + 74)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017740.P992131507779017228

namespace A017740

/-- `∑[∑[A017738(n)]]` -/
def P992131507779017228.Spec : Prop :=
  ∀ n, P992131507779017228.a n = A017740 (n + 76)

end A017740

/-! ## A017740.P4064790977580595416

`∑[∑[∑[A017737(n)]]]`
-/

namespace A017740.P4064790977580595416
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017737 (n + 73)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017740.P4064790977580595416

namespace A017740

/-- `∑[∑[∑[A017737(n)]]]` -/
def P4064790977580595416.Spec : Prop :=
  ∀ n, P4064790977580595416.a n = A017740 (n + 76)

end A017740

/-! ## A017740.P2201040595470185034

`C(n+76, 76)`
-/

namespace A017740.P2201040595470185034
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 76) 76

end

end A017740.P2201040595470185034

namespace A017740

/-- `C(n+76, 76)` -/
def P2201040595470185034.Spec : Prop :=
  ∀ n, (P2201040595470185034.a n : ℤ) = A017740 (n + 76)

end A017740

/-! ## A017740.P15282758699954936614

`A007318(A000217(n+77)-77)`
-/

namespace A017740.P15282758699954936614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 77) - 77).toNat

end

end A017740.P15282758699954936614

namespace A017740

/-- `A007318(A000217(n+77)-77)` -/
def P15282758699954936614.Spec : Prop :=
  ∀ n, P15282758699954936614.a n = A017740 (n + 76)

end A017740

/-!
# A017741: Binomial coefficients C(n,77).

The programs for A017741, the canonical program `A017741.P7867024922435714400` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017741 has offset 77).

The definition of A017741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 549 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017741.P3308438299541253746

`(77/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017741.P3308438299541253746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (77 / (n : ℚ) + 1) * a (n - 1)

end

end A017741.P3308438299541253746

namespace A017741

/-- `(77/n+1)*a(n-1)` -/
def P3308438299541253746.Spec : Prop :=
  ∀ n, P3308438299541253746.a n = (A017741 (n + 77) : ℚ)

end A017741

/-! ## A017741.P7867024922435714400

`∑[A017740(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017741

/-- `∑[A017740(n)]` -/
def P7867024922435714400.Spec : Prop :=
  ∀ n, P7867024922435714400.a n = A017741 (n + 77)

theorem P7867024922435714400.correct : P7867024922435714400.Spec := by
  intro n
  simp only [A017741, Nat.add_sub_cancel]

end A017741

/-! ## A017741.P15034786774483677745

`∑[∑[A017739(n)]]`
-/

namespace A017741.P15034786774483677745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017739 (n + 75)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017741.P15034786774483677745

namespace A017741

/-- `∑[∑[A017739(n)]]` -/
def P15034786774483677745.Spec : Prop :=
  ∀ n, P15034786774483677745.a n = A017741 (n + 77)

end A017741

/-! ## A017741.P2564876115867707756

`∑[∑[∑[A017738(n)]]]`
-/

namespace A017741.P2564876115867707756
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017738 (n + 74)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017741.P2564876115867707756

namespace A017741

/-- `∑[∑[∑[A017738(n)]]]` -/
def P2564876115867707756.Spec : Prop :=
  ∀ n, P2564876115867707756.a n = A017741 (n + 77)

end A017741

/-! ## A017741.P12751885510525302214

`C(n+77, 77)`
-/

namespace A017741.P12751885510525302214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 77) 77

end

end A017741.P12751885510525302214

namespace A017741

/-- `C(n+77, 77)` -/
def P12751885510525302214.Spec : Prop :=
  ∀ n, (P12751885510525302214.a n : ℤ) = A017741 (n + 77)

end A017741

/-! ## A017741.P16020708569877998578

`A007318(A000217(n+77)+77)`
-/

namespace A017741.P16020708569877998578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 77) + 77).toNat

end

end A017741.P16020708569877998578

namespace A017741

/-- `A007318(A000217(n+77)+77)` -/
def P16020708569877998578.Spec : Prop :=
  ∀ n, P16020708569877998578.a n = A017741 (n + 77)

end A017741

/-!
# A017742: Binomial coefficients C(n,78).

The programs for A017742, the canonical program `A017742.P13517504407657218501` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017742 has offset 78).

The definition of A017742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 533 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017742.P9866611644184478094

`(78/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017742.P9866611644184478094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (78 / (n : ℚ) + 1) * a (n - 1)

end

end A017742.P9866611644184478094

namespace A017742

/-- `(78/n+1)*a(n-1)` -/
def P9866611644184478094.Spec : Prop :=
  ∀ n, P9866611644184478094.a n = (A017742 (n + 78) : ℚ)

end A017742

/-! ## A017742.P13517504407657218501

`∑[A017741(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017742

/-- `∑[A017741(n)]` -/
def P13517504407657218501.Spec : Prop :=
  ∀ n, P13517504407657218501.a n = A017742 (n + 78)

theorem P13517504407657218501.correct : P13517504407657218501.Spec := by
  intro n
  simp only [A017742, Nat.add_sub_cancel]

end A017742

/-! ## A017742.P17053459533607709233

`∑[∑[A017740(n)]]`
-/

namespace A017742.P17053459533607709233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017740 (n + 76)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017742.P17053459533607709233

namespace A017742

/-- `∑[∑[A017740(n)]]` -/
def P17053459533607709233.Spec : Prop :=
  ∀ n, P17053459533607709233.a n = A017742 (n + 78)

end A017742

/-! ## A017742.P3224795430097723880

`∑[∑[∑[A017739(n)]]]`
-/

namespace A017742.P3224795430097723880
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017739 (n + 75)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017742.P3224795430097723880

namespace A017742

/-- `∑[∑[∑[A017739(n)]]]` -/
def P3224795430097723880.Spec : Prop :=
  ∀ n, P3224795430097723880.a n = A017742 (n + 78)

end A017742

/-! ## A017742.P7315692116591556690

`C(n+78, 78)`
-/

namespace A017742.P7315692116591556690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 78) 78

end

end A017742.P7315692116591556690

namespace A017742

/-- `C(n+78, 78)` -/
def P7315692116591556690.Spec : Prop :=
  ∀ n, (P7315692116591556690.a n : ℤ) = A017742 (n + 78)

end A017742

/-!
# A017743: Binomial coefficients C(n,79).

The programs for A017743, the canonical program `A017743.P16737334430865006958` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017743 has offset 79).

The definition of A017743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 518 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017743.P2034630111464007147

`(79/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017743.P2034630111464007147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (79 / (n : ℚ) + 1) * a (n - 1)

end

end A017743.P2034630111464007147

namespace A017743

/-- `(79/n+1)*a(n-1)` -/
def P2034630111464007147.Spec : Prop :=
  ∀ n, P2034630111464007147.a n = (A017743 (n + 79) : ℚ)

end A017743

/-! ## A017743.P16737334430865006958

`∑[A017742(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017743

/-- `∑[A017742(n)]` -/
def P16737334430865006958.Spec : Prop :=
  ∀ n, P16737334430865006958.a n = A017743 (n + 79)

theorem P16737334430865006958.correct : P16737334430865006958.Spec := by
  intro n
  simp only [A017743, Nat.add_sub_cancel]

end A017743

/-! ## A017743.P11264055816396236234

`∑[∑[A017741(n)]]`
-/

namespace A017743.P11264055816396236234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017741 (n + 77)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017743.P11264055816396236234

namespace A017743

/-- `∑[∑[A017741(n)]]` -/
def P11264055816396236234.Spec : Prop :=
  ∀ n, P11264055816396236234.a n = A017743 (n + 79)

end A017743

/-! ## A017743.P1059232049173038397

`∑[∑[∑[A017740(n)]]]`
-/

namespace A017743.P1059232049173038397
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017740 (n + 76)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017743.P1059232049173038397

namespace A017743

/-- `∑[∑[∑[A017740(n)]]]` -/
def P1059232049173038397.Spec : Prop :=
  ∀ n, P1059232049173038397.a n = A017743 (n + 79)

end A017743

/-! ## A017743.P429793667627121284

`C(n+79, 79)`
-/

namespace A017743.P429793667627121284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 79) 79

end

end A017743.P429793667627121284

namespace A017743

/-- `C(n+79, 79)` -/
def P429793667627121284.Spec : Prop :=
  ∀ n, (P429793667627121284.a n : ℤ) = A017743 (n + 79)

end A017743

/-!
# A017744: Binomial coefficients C(n,80).

The programs for A017744, the canonical program `A017744.P4353024609833997912` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017744 has offset 80).

The definition of A017744 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 505 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017744.P16836706923103666980

`(80/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017744.P16836706923103666980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (80 / (n : ℚ) + 1) * a (n - 1)

end

end A017744.P16836706923103666980

namespace A017744

/-- `(80/n+1)*a(n-1)` -/
def P16836706923103666980.Spec : Prop :=
  ∀ n, P16836706923103666980.a n = (A017744 (n + 80) : ℚ)

end A017744

/-! ## A017744.P4353024609833997912

`∑[A017743(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017744

/-- `∑[A017743(n)]` -/
def P4353024609833997912.Spec : Prop :=
  ∀ n, P4353024609833997912.a n = A017744 (n + 80)

theorem P4353024609833997912.correct : P4353024609833997912.Spec := by
  intro n
  simp only [A017744, Nat.add_sub_cancel]

end A017744

/-! ## A017744.P9168590463307780625

`∑[∑[A017742(n)]]`
-/

namespace A017744.P9168590463307780625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017742 (n + 78)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017744.P9168590463307780625

namespace A017744

/-- `∑[∑[A017742(n)]]` -/
def P9168590463307780625.Spec : Prop :=
  ∀ n, P9168590463307780625.a n = A017744 (n + 80)

end A017744

/-! ## A017744.P16612743953152771744

`∑[∑[∑[A017741(n)]]]`
-/

namespace A017744.P16612743953152771744
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017741 (n + 77)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017744.P16612743953152771744

namespace A017744

/-- `∑[∑[∑[A017741(n)]]]` -/
def P16612743953152771744.Spec : Prop :=
  ∀ n, P16612743953152771744.a n = A017744 (n + 80)

end A017744

/-! ## A017744.P15495633841747974789

`C(n+80, 80)`
-/

namespace A017744.P15495633841747974789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 80) 80

end

end A017744.P15495633841747974789

namespace A017744

/-- `C(n+80, 80)` -/
def P15495633841747974789.Spec : Prop :=
  ∀ n, (P15495633841747974789.a n : ℤ) = A017744 (n + 80)

end A017744

/-!
# A017745: Binomial coefficients C(n,81).

The programs for A017745, the canonical program `A017745.P4783384828780675852` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017745 has offset 81).

The definition of A017745 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 491 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017745.P5912152555171194591

`(81/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017745.P5912152555171194591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (81 / (n : ℚ) + 1) * a (n - 1)

end

end A017745.P5912152555171194591

namespace A017745

/-- `(81/n+1)*a(n-1)` -/
def P5912152555171194591.Spec : Prop :=
  ∀ n, P5912152555171194591.a n = (A017745 (n + 81) : ℚ)

end A017745

/-! ## A017745.P4783384828780675852

`∑[A017744(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017745

/-- `∑[A017744(n)]` -/
def P4783384828780675852.Spec : Prop :=
  ∀ n, P4783384828780675852.a n = A017745 (n + 81)

theorem P4783384828780675852.correct : P4783384828780675852.Spec := by
  intro n
  simp only [A017745, Nat.add_sub_cancel]

end A017745

/-! ## A017745.P16052852173680002786

`∑[∑[A017743(n)]]`
-/

namespace A017745.P16052852173680002786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017743 (n + 79)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017745.P16052852173680002786

namespace A017745

/-- `∑[∑[A017743(n)]]` -/
def P16052852173680002786.Spec : Prop :=
  ∀ n, P16052852173680002786.a n = A017745 (n + 81)

end A017745

/-! ## A017745.P13245946340983076382

`∑[∑[∑[A017742(n)]]]`
-/

namespace A017745.P13245946340983076382
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017742 (n + 78)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017745.P13245946340983076382

namespace A017745

/-- `∑[∑[∑[A017742(n)]]]` -/
def P13245946340983076382.Spec : Prop :=
  ∀ n, P13245946340983076382.a n = A017745 (n + 81)

end A017745

/-! ## A017745.P1569751063085898063

`C(n+81, 81)`
-/

namespace A017745.P1569751063085898063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 81) 81

end

end A017745.P1569751063085898063

namespace A017745

/-- `C(n+81, 81)` -/
def P1569751063085898063.Spec : Prop :=
  ∀ n, (P1569751063085898063.a n : ℤ) = A017745 (n + 81)

end A017745

/-!
# A017746: Binomial coefficients C(n,82).

The programs for A017746, the canonical program `A017746.P14848294736962142476` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017746 has offset 82).

The definition of A017746 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017746.P3932546072212185904

`(82/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017746.P3932546072212185904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (82 / (n : ℚ) + 1) * a (n - 1)

end

end A017746.P3932546072212185904

namespace A017746

/-- `(82/n+1)*a(n-1)` -/
def P3932546072212185904.Spec : Prop :=
  ∀ n, P3932546072212185904.a n = (A017746 (n + 82) : ℚ)

end A017746

/-! ## A017746.P14848294736962142476

`∑[A017745(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017746

/-- `∑[A017745(n)]` -/
def P14848294736962142476.Spec : Prop :=
  ∀ n, P14848294736962142476.a n = A017746 (n + 82)

theorem P14848294736962142476.correct : P14848294736962142476.Spec := by
  intro n
  simp only [A017746, Nat.add_sub_cancel]

end A017746

/-! ## A017746.P7741232648251184942

`∑[∑[A017744(n)]]`
-/

namespace A017746.P7741232648251184942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017744 (n + 80)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017746.P7741232648251184942

namespace A017746

/-- `∑[∑[A017744(n)]]` -/
def P7741232648251184942.Spec : Prop :=
  ∀ n, P7741232648251184942.a n = A017746 (n + 82)

end A017746

/-! ## A017746.P15153624125656143973

`∑[∑[∑[A017743(n)]]]`
-/

namespace A017746.P15153624125656143973
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017743 (n + 79)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017746.P15153624125656143973

namespace A017746

/-- `∑[∑[∑[A017743(n)]]]` -/
def P15153624125656143973.Spec : Prop :=
  ∀ n, P15153624125656143973.a n = A017746 (n + 82)

end A017746

/-! ## A017746.P17558020388955248026

`C(n+82, 82)`
-/

namespace A017746.P17558020388955248026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 82) 82

end

end A017746.P17558020388955248026

namespace A017746

/-- `C(n+82, 82)` -/
def P17558020388955248026.Spec : Prop :=
  ∀ n, (P17558020388955248026.a n : ℤ) = A017746 (n + 82)

end A017746

/-!
# A017747: Binomial coefficients C(n,83).

The programs for A017747, the canonical program `A017747.P3536552219103736348` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017747 has offset 83).

The definition of A017747 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017747.P16844615245508135404

`(83/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017747.P16844615245508135404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (83 / (n : ℚ) + 1) * a (n - 1)

end

end A017747.P16844615245508135404

namespace A017747

/-- `(83/n+1)*a(n-1)` -/
def P16844615245508135404.Spec : Prop :=
  ∀ n, P16844615245508135404.a n = (A017747 (n + 83) : ℚ)

end A017747

/-! ## A017747.P3536552219103736348

`∑[A017746(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017747

/-- `∑[A017746(n)]` -/
def P3536552219103736348.Spec : Prop :=
  ∀ n, P3536552219103736348.a n = A017747 (n + 83)

theorem P3536552219103736348.correct : P3536552219103736348.Spec := by
  intro n
  simp only [A017747, Nat.add_sub_cancel]

end A017747

/-! ## A017747.P81856377858478928

`∑[∑[A017745(n)]]`
-/

namespace A017747.P81856377858478928
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017745 (n + 81)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017747.P81856377858478928

namespace A017747

/-- `∑[∑[A017745(n)]]` -/
def P81856377858478928.Spec : Prop :=
  ∀ n, P81856377858478928.a n = A017747 (n + 83)

end A017747

/-! ## A017747.P9418653395639911451

`∑[∑[∑[A017744(n)]]]`
-/

namespace A017747.P9418653395639911451
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017744 (n + 80)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017747.P9418653395639911451

namespace A017747

/-- `∑[∑[∑[A017744(n)]]]` -/
def P9418653395639911451.Spec : Prop :=
  ∀ n, P9418653395639911451.a n = A017747 (n + 83)

end A017747

/-! ## A017747.P9401384061571310569

`C(n+83, 83)`
-/

namespace A017747.P9401384061571310569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 83) 83

end

end A017747.P9401384061571310569

namespace A017747

/-- `C(n+83, 83)` -/
def P9401384061571310569.Spec : Prop :=
  ∀ n, (P9401384061571310569.a n : ℤ) = A017747 (n + 83)

end A017747

/-!
# A017748: Binomial coefficients C(n,84).

The programs for A017748, the canonical program `A017748.P10041396662727238779` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017748 has offset 84).

The definition of A017748 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017748.P3817187027245892846

`(84/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017748.P3817187027245892846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (84 / (n : ℚ) + 1) * a (n - 1)

end

end A017748.P3817187027245892846

namespace A017748

/-- `(84/n+1)*a(n-1)` -/
def P3817187027245892846.Spec : Prop :=
  ∀ n, P3817187027245892846.a n = (A017748 (n + 84) : ℚ)

end A017748

/-! ## A017748.P10041396662727238779

`∑[A017747(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017748

/-- `∑[A017747(n)]` -/
def P10041396662727238779.Spec : Prop :=
  ∀ n, P10041396662727238779.a n = A017748 (n + 84)

theorem P10041396662727238779.correct : P10041396662727238779.Spec := by
  intro n
  simp only [A017748, Nat.add_sub_cancel]

end A017748

/-! ## A017748.P17212475326804343106

`∑[∑[A017746(n)]]`
-/

namespace A017748.P17212475326804343106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017746 (n + 82)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017748.P17212475326804343106

namespace A017748

/-- `∑[∑[A017746(n)]]` -/
def P17212475326804343106.Spec : Prop :=
  ∀ n, P17212475326804343106.a n = A017748 (n + 84)

end A017748

/-! ## A017748.P697788906913634491

`∑[∑[∑[A017745(n)]]]`
-/

namespace A017748.P697788906913634491
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017745 (n + 81)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017748.P697788906913634491

namespace A017748

/-- `∑[∑[∑[A017745(n)]]]` -/
def P697788906913634491.Spec : Prop :=
  ∀ n, P697788906913634491.a n = A017748 (n + 84)

end A017748

/-! ## A017748.P8582516829553709319

`C(n+84, 84)`
-/

namespace A017748.P8582516829553709319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 84) 84

end

end A017748.P8582516829553709319

namespace A017748

/-- `C(n+84, 84)` -/
def P8582516829553709319.Spec : Prop :=
  ∀ n, (P8582516829553709319.a n : ℤ) = A017748 (n + 84)

end A017748

/-!
# A017749: Binomial coefficients C(n,85).

The programs for A017749, the canonical program `A017749.P11859062333262707382` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017749 has offset 85).

The definition of A017749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 445 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017749.P14166009282608815697

`(85/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017749.P14166009282608815697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (85 / (n : ℚ) + 1) * a (n - 1)

end

end A017749.P14166009282608815697

namespace A017749

/-- `(85/n+1)*a(n-1)` -/
def P14166009282608815697.Spec : Prop :=
  ∀ n, P14166009282608815697.a n = (A017749 (n + 85) : ℚ)

end A017749

/-! ## A017749.P11859062333262707382

`∑[A017748(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017749

/-- `∑[A017748(n)]` -/
def P11859062333262707382.Spec : Prop :=
  ∀ n, P11859062333262707382.a n = A017749 (n + 85)

theorem P11859062333262707382.correct : P11859062333262707382.Spec := by
  intro n
  simp only [A017749, Nat.add_sub_cancel]

end A017749

/-! ## A017749.P13887217325340105000

`∑[∑[A017747(n)]]`
-/

namespace A017749.P13887217325340105000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017747 (n + 83)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017749.P13887217325340105000

namespace A017749

/-- `∑[∑[A017747(n)]]` -/
def P13887217325340105000.Spec : Prop :=
  ∀ n, P13887217325340105000.a n = A017749 (n + 85)

end A017749

/-! ## A017749.P5470192221179694403

`∑[∑[∑[A017746(n)]]]`
-/

namespace A017749.P5470192221179694403
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017746 (n + 82)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017749.P5470192221179694403

namespace A017749

/-- `∑[∑[∑[A017746(n)]]]` -/
def P5470192221179694403.Spec : Prop :=
  ∀ n, P5470192221179694403.a n = A017749 (n + 85)

end A017749

/-! ## A017749.P12395845313280254335

`C(n+85, 85)`
-/

namespace A017749.P12395845313280254335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 85) 85

end

end A017749.P12395845313280254335

namespace A017749

/-- `C(n+85, 85)` -/
def P12395845313280254335.Spec : Prop :=
  ∀ n, (P12395845313280254335.a n : ℤ) = A017749 (n + 85)

end A017749

/-!
# A017750: Binomial coefficients C(n,86).

The programs for A017750, the canonical program `A017750.P50224293552260670` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017750 has offset 86).

The definition of A017750 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 435 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017750.P7755840363991907178

`(86/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017750.P7755840363991907178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (86 / (n : ℚ) + 1) * a (n - 1)

end

end A017750.P7755840363991907178

namespace A017750

/-- `(86/n+1)*a(n-1)` -/
def P7755840363991907178.Spec : Prop :=
  ∀ n, P7755840363991907178.a n = (A017750 (n + 86) : ℚ)

end A017750

/-! ## A017750.P50224293552260670

`∑[A017749(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017750

/-- `∑[A017749(n)]` -/
def P50224293552260670.Spec : Prop :=
  ∀ n, P50224293552260670.a n = A017750 (n + 86)

theorem P50224293552260670.correct : P50224293552260670.Spec := by
  intro n
  simp only [A017750, Nat.add_sub_cancel]

end A017750

/-! ## A017750.P690873888579538280

`∑[∑[A017748(n)]]`
-/

namespace A017750.P690873888579538280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017748 (n + 84)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017750.P690873888579538280

namespace A017750

/-- `∑[∑[A017748(n)]]` -/
def P690873888579538280.Spec : Prop :=
  ∀ n, P690873888579538280.a n = A017750 (n + 86)

end A017750

/-! ## A017750.P17979600133452469346

`∑[∑[∑[A017747(n)]]]`
-/

namespace A017750.P17979600133452469346
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017747 (n + 83)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017750.P17979600133452469346

namespace A017750

/-- `∑[∑[∑[A017747(n)]]]` -/
def P17979600133452469346.Spec : Prop :=
  ∀ n, P17979600133452469346.a n = A017750 (n + 86)

end A017750

/-! ## A017750.P1364513924689593527

`C(n+86, 86)`
-/

namespace A017750.P1364513924689593527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 86) 86

end

end A017750.P1364513924689593527

namespace A017750

/-- `C(n+86, 86)` -/
def P1364513924689593527.Spec : Prop :=
  ∀ n, (P1364513924689593527.a n : ℤ) = A017750 (n + 86)

end A017750

/-!
# A017751: Binomial coefficients C(n,87).

The programs for A017751, the canonical program `A017751.P10018961267285139199` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017751 has offset 87).

The definition of A017751 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 425 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017751.P17969698833023651734

`(87/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017751.P17969698833023651734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (87 / (n : ℚ) + 1) * a (n - 1)

end

end A017751.P17969698833023651734

namespace A017751

/-- `(87/n+1)*a(n-1)` -/
def P17969698833023651734.Spec : Prop :=
  ∀ n, P17969698833023651734.a n = (A017751 (n + 87) : ℚ)

end A017751

/-! ## A017751.P10018961267285139199

`∑[A017750(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017751

/-- `∑[A017750(n)]` -/
def P10018961267285139199.Spec : Prop :=
  ∀ n, P10018961267285139199.a n = A017751 (n + 87)

theorem P10018961267285139199.correct : P10018961267285139199.Spec := by
  intro n
  simp only [A017751, Nat.add_sub_cancel]

end A017751

/-! ## A017751.P3937628991742948635

`∑[∑[A017749(n)]]`
-/

namespace A017751.P3937628991742948635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017749 (n + 85)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017751.P3937628991742948635

namespace A017751

/-- `∑[∑[A017749(n)]]` -/
def P3937628991742948635.Spec : Prop :=
  ∀ n, P3937628991742948635.a n = A017751 (n + 87)

end A017751

/-! ## A017751.P9939251437704523839

`∑[∑[∑[A017748(n)]]]`
-/

namespace A017751.P9939251437704523839
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017748 (n + 84)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017751.P9939251437704523839

namespace A017751

/-- `∑[∑[∑[A017748(n)]]]` -/
def P9939251437704523839.Spec : Prop :=
  ∀ n, P9939251437704523839.a n = A017751 (n + 87)

end A017751

/-! ## A017751.P2304497608712004292

`C(n+87, 87)`
-/

namespace A017751.P2304497608712004292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 87) 87

end

end A017751.P2304497608712004292

namespace A017751

/-- `C(n+87, 87)` -/
def P2304497608712004292.Spec : Prop :=
  ∀ n, (P2304497608712004292.a n : ℤ) = A017751 (n + 87)

end A017751

/-!
# A017752: Binomial coefficients C(n,88).

The programs for A017752, the canonical program `A017752.P10808631347264368737` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017752 has offset 88).

The definition of A017752 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 416 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017752.P9498486341632607653

`(88/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017752.P9498486341632607653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (88 / (n : ℚ) + 1) * a (n - 1)

end

end A017752.P9498486341632607653

namespace A017752

/-- `(88/n+1)*a(n-1)` -/
def P9498486341632607653.Spec : Prop :=
  ∀ n, P9498486341632607653.a n = (A017752 (n + 88) : ℚ)

end A017752

/-! ## A017752.P10808631347264368737

`∑[A017751(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017752

/-- `∑[A017751(n)]` -/
def P10808631347264368737.Spec : Prop :=
  ∀ n, P10808631347264368737.a n = A017752 (n + 88)

theorem P10808631347264368737.correct : P10808631347264368737.Spec := by
  intro n
  simp only [A017752, Nat.add_sub_cancel]

end A017752

/-! ## A017752.P4466241693914193419

`∑[∑[A017750(n)]]`
-/

namespace A017752.P4466241693914193419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017750 (n + 86)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017752.P4466241693914193419

namespace A017752

/-- `∑[∑[A017750(n)]]` -/
def P4466241693914193419.Spec : Prop :=
  ∀ n, P4466241693914193419.a n = A017752 (n + 88)

end A017752

/-! ## A017752.P11379951190091035587

`∑[∑[∑[A017749(n)]]]`
-/

namespace A017752.P11379951190091035587
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017749 (n + 85)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017752.P11379951190091035587

namespace A017752

/-- `∑[∑[∑[A017749(n)]]]` -/
def P11379951190091035587.Spec : Prop :=
  ∀ n, P11379951190091035587.a n = A017752 (n + 88)

end A017752

/-! ## A017752.P18103408541420215447

`C(n+88, 88)`
-/

namespace A017752.P18103408541420215447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 88) 88

end

end A017752.P18103408541420215447

namespace A017752

/-- `C(n+88, 88)` -/
def P18103408541420215447.Spec : Prop :=
  ∀ n, (P18103408541420215447.a n : ℤ) = A017752 (n + 88)

end A017752

/-!
# A017753: Binomial coefficients C(n,89).

The programs for A017753, the canonical program `A017753.P7446741173959579445` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017753 has offset 89).

The definition of A017753 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 407 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017753.P17397297292292598169

`(89/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017753.P17397297292292598169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (89 / (n : ℚ) + 1) * a (n - 1)

end

end A017753.P17397297292292598169

namespace A017753

/-- `(89/n+1)*a(n-1)` -/
def P17397297292292598169.Spec : Prop :=
  ∀ n, P17397297292292598169.a n = (A017753 (n + 89) : ℚ)

end A017753

/-! ## A017753.P7446741173959579445

`∑[A017752(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017753

/-- `∑[A017752(n)]` -/
def P7446741173959579445.Spec : Prop :=
  ∀ n, P7446741173959579445.a n = A017753 (n + 89)

theorem P7446741173959579445.correct : P7446741173959579445.Spec := by
  intro n
  simp only [A017753, Nat.add_sub_cancel]

end A017753

/-! ## A017753.P16858815542379816791

`∑[∑[A017751(n)]]`
-/

namespace A017753.P16858815542379816791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017751 (n + 87)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017753.P16858815542379816791

namespace A017753

/-- `∑[∑[A017751(n)]]` -/
def P16858815542379816791.Spec : Prop :=
  ∀ n, P16858815542379816791.a n = A017753 (n + 89)

end A017753

/-! ## A017753.P16057038438585533737

`∑[∑[∑[A017750(n)]]]`
-/

namespace A017753.P16057038438585533737
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017750 (n + 86)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017753.P16057038438585533737

namespace A017753

/-- `∑[∑[∑[A017750(n)]]]` -/
def P16057038438585533737.Spec : Prop :=
  ∀ n, P16057038438585533737.a n = A017753 (n + 89)

end A017753

/-! ## A017753.P15918367159709412743

`C(n+89, 89)`
-/

namespace A017753.P15918367159709412743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 89) 89

end

end A017753.P15918367159709412743

namespace A017753

/-- `C(n+89, 89)` -/
def P15918367159709412743.Spec : Prop :=
  ∀ n, (P15918367159709412743.a n : ℤ) = A017753 (n + 89)

end A017753

/-!
# A017754: Binomial coefficients C(n,90).

The programs for A017754, the canonical program `A017754.P14684133807210668465` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017754 has offset 90).

The definition of A017754 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 399 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017754.P515464607534325837

`(90/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017754.P515464607534325837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (90 / (n : ℚ) + 1) * a (n - 1)

end

end A017754.P515464607534325837

namespace A017754

/-- `(90/n+1)*a(n-1)` -/
def P515464607534325837.Spec : Prop :=
  ∀ n, P515464607534325837.a n = (A017754 (n + 90) : ℚ)

end A017754

/-! ## A017754.P14684133807210668465

`∑[A017753(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017754

/-- `∑[A017753(n)]` -/
def P14684133807210668465.Spec : Prop :=
  ∀ n, P14684133807210668465.a n = A017754 (n + 90)

theorem P14684133807210668465.correct : P14684133807210668465.Spec := by
  intro n
  simp only [A017754, Nat.add_sub_cancel]

end A017754

/-! ## A017754.P14746594314213893300

`∑[∑[A017752(n)]]`
-/

namespace A017754.P14746594314213893300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017752 (n + 88)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017754.P14746594314213893300

namespace A017754

/-- `∑[∑[A017752(n)]]` -/
def P14746594314213893300.Spec : Prop :=
  ∀ n, P14746594314213893300.a n = A017754 (n + 90)

end A017754

/-! ## A017754.P825624360061296890

`∑[∑[∑[A017751(n)]]]`
-/

namespace A017754.P825624360061296890
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017751 (n + 87)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017754.P825624360061296890

namespace A017754

/-- `∑[∑[∑[A017751(n)]]]` -/
def P825624360061296890.Spec : Prop :=
  ∀ n, P825624360061296890.a n = A017754 (n + 90)

end A017754

/-! ## A017754.P14579152332609088985

`C(n+90, 90)`
-/

namespace A017754.P14579152332609088985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 90) 90

end

end A017754.P14579152332609088985

namespace A017754

/-- `C(n+90, 90)` -/
def P14579152332609088985.Spec : Prop :=
  ∀ n, (P14579152332609088985.a n : ℤ) = A017754 (n + 90)

end A017754

/-! ## A017754.P7464424008278585607

`record[C(n, A140278(n))]`
-/

namespace A017754.P7464424008278585607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A140278 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017754.P7464424008278585607

namespace A017754

/-- `record[C(n, A140278(n))]` -/
def P7464424008278585607.Spec : Prop :=
  ∀ n, (P7464424008278585607.a n : ℤ) = A017754 (n + 90)

end A017754

/-!
# A017755: Binomial coefficients C(n,91).

The programs for A017755, the canonical program `A017755.P8993976898448649564` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017755 has offset 91).

The definition of A017755 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 391 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017755.P13741479287564460876

`(91/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017755.P13741479287564460876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (91 / (n : ℚ) + 1) * a (n - 1)

end

end A017755.P13741479287564460876

namespace A017755

/-- `(91/n+1)*a(n-1)` -/
def P13741479287564460876.Spec : Prop :=
  ∀ n, P13741479287564460876.a n = (A017755 (n + 91) : ℚ)

end A017755

/-! ## A017755.P8993976898448649564

`∑[A017754(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017755

/-- `∑[A017754(n)]` -/
def P8993976898448649564.Spec : Prop :=
  ∀ n, P8993976898448649564.a n = A017755 (n + 91)

theorem P8993976898448649564.correct : P8993976898448649564.Spec := by
  intro n
  simp only [A017755, Nat.add_sub_cancel]

end A017755

/-! ## A017755.P667009930141700792

`∑[∑[A017753(n)]]`
-/

namespace A017755.P667009930141700792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017753 (n + 89)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017755.P667009930141700792

namespace A017755

/-- `∑[∑[A017753(n)]]` -/
def P667009930141700792.Spec : Prop :=
  ∀ n, P667009930141700792.a n = A017755 (n + 91)

end A017755

/-! ## A017755.P5895954587428799872

`∑[∑[∑[A017752(n)]]]`
-/

namespace A017755.P5895954587428799872
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017752 (n + 88)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017755.P5895954587428799872

namespace A017755

/-- `∑[∑[∑[A017752(n)]]]` -/
def P5895954587428799872.Spec : Prop :=
  ∀ n, P5895954587428799872.a n = A017755 (n + 91)

end A017755

/-! ## A017755.P14022347701157365027

`C(n+91, 91)`
-/

namespace A017755.P14022347701157365027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 91) 91

end

end A017755.P14022347701157365027

namespace A017755

/-- `C(n+91, 91)` -/
def P14022347701157365027.Spec : Prop :=
  ∀ n, (P14022347701157365027.a n : ℤ) = A017755 (n + 91)

end A017755

/-!
# A017756: Binomial coefficients C(n,92).

The programs for A017756, the canonical program `A017756.P14268685915824430967` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017756 has offset 92).

The definition of A017756 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 383 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017756.P1051084140035898114

`(92/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017756.P1051084140035898114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (92 / (n : ℚ) + 1) * a (n - 1)

end

end A017756.P1051084140035898114

namespace A017756

/-- `(92/n+1)*a(n-1)` -/
def P1051084140035898114.Spec : Prop :=
  ∀ n, P1051084140035898114.a n = (A017756 (n + 92) : ℚ)

end A017756

/-! ## A017756.P14268685915824430967

`∑[A017755(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017756

/-- `∑[A017755(n)]` -/
def P14268685915824430967.Spec : Prop :=
  ∀ n, P14268685915824430967.a n = A017756 (n + 92)

theorem P14268685915824430967.correct : P14268685915824430967.Spec := by
  intro n
  simp only [A017756, Nat.add_sub_cancel]

end A017756

/-! ## A017756.P7711749770524822805

`∑[∑[A017754(n)]]`
-/

namespace A017756.P7711749770524822805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017754 (n + 90)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017756.P7711749770524822805

namespace A017756

/-- `∑[∑[A017754(n)]]` -/
def P7711749770524822805.Spec : Prop :=
  ∀ n, P7711749770524822805.a n = A017756 (n + 92)

end A017756

/-! ## A017756.P8354256470491443813

`∑[∑[∑[A017753(n)]]]`
-/

namespace A017756.P8354256470491443813
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017753 (n + 89)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017756.P8354256470491443813

namespace A017756

/-- `∑[∑[∑[A017753(n)]]]` -/
def P8354256470491443813.Spec : Prop :=
  ∀ n, P8354256470491443813.a n = A017756 (n + 92)

end A017756

/-! ## A017756.P418794764302101860

`C(n+92, 92)`
-/

namespace A017756.P418794764302101860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 92) 92

end

end A017756.P418794764302101860

namespace A017756

/-- `C(n+92, 92)` -/
def P418794764302101860.Spec : Prop :=
  ∀ n, (P418794764302101860.a n : ℤ) = A017756 (n + 92)

end A017756

/-!
# A017757: Binomial coefficients C(n,93).

The programs for A017757, the canonical program `A017757.P17286600241345579105` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017757 has offset 93).

The definition of A017757 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 375 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017757.P17223157567254637252

`(93/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017757.P17223157567254637252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (93 / (n : ℚ) + 1) * a (n - 1)

end

end A017757.P17223157567254637252

namespace A017757

/-- `(93/n+1)*a(n-1)` -/
def P17223157567254637252.Spec : Prop :=
  ∀ n, P17223157567254637252.a n = (A017757 (n + 93) : ℚ)

end A017757

/-! ## A017757.P17286600241345579105

`∑[A017756(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017757

/-- `∑[A017756(n)]` -/
def P17286600241345579105.Spec : Prop :=
  ∀ n, P17286600241345579105.a n = A017757 (n + 93)

theorem P17286600241345579105.correct : P17286600241345579105.Spec := by
  intro n
  simp only [A017757, Nat.add_sub_cancel]

end A017757

/-! ## A017757.P17536711390542682050

`∑[∑[A017755(n)]]`
-/

namespace A017757.P17536711390542682050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017755 (n + 91)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017757.P17536711390542682050

namespace A017757

/-- `∑[∑[A017755(n)]]` -/
def P17536711390542682050.Spec : Prop :=
  ∀ n, P17536711390542682050.a n = A017757 (n + 93)

end A017757

/-! ## A017757.P11888134978342629996

`∑[∑[∑[A017754(n)]]]`
-/

namespace A017757.P11888134978342629996
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017754 (n + 90)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017757.P11888134978342629996

namespace A017757

/-- `∑[∑[∑[A017754(n)]]]` -/
def P11888134978342629996.Spec : Prop :=
  ∀ n, P11888134978342629996.a n = A017757 (n + 93)

end A017757

/-! ## A017757.P13297335151725599853

`C(n+93, 93)`
-/

namespace A017757.P13297335151725599853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 93) 93

end

end A017757.P13297335151725599853

namespace A017757

/-- `C(n+93, 93)` -/
def P13297335151725599853.Spec : Prop :=
  ∀ n, (P13297335151725599853.a n : ℤ) = A017757 (n + 93)

end A017757

/-!
# A017758: Binomial coefficients C(n,94).

The programs for A017758, the canonical program `A017758.P7573098188353341125` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017758 has offset 94).

The definition of A017758 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 368 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017758.P6428977177378214599

`(94/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017758.P6428977177378214599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (94 / (n : ℚ) + 1) * a (n - 1)

end

end A017758.P6428977177378214599

namespace A017758

/-- `(94/n+1)*a(n-1)` -/
def P6428977177378214599.Spec : Prop :=
  ∀ n, P6428977177378214599.a n = (A017758 (n + 94) : ℚ)

end A017758

/-! ## A017758.P7573098188353341125

`∑[A017757(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017758

/-- `∑[A017757(n)]` -/
def P7573098188353341125.Spec : Prop :=
  ∀ n, P7573098188353341125.a n = A017758 (n + 94)

theorem P7573098188353341125.correct : P7573098188353341125.Spec := by
  intro n
  simp only [A017758, Nat.add_sub_cancel]

end A017758

/-! ## A017758.P18384906785758841016

`∑[∑[A017756(n)]]`
-/

namespace A017758.P18384906785758841016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017756 (n + 92)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017758.P18384906785758841016

namespace A017758

/-- `∑[∑[A017756(n)]]` -/
def P18384906785758841016.Spec : Prop :=
  ∀ n, P18384906785758841016.a n = A017758 (n + 94)

end A017758

/-! ## A017758.P15833066831081580879

`∑[∑[∑[A017755(n)]]]`
-/

namespace A017758.P15833066831081580879
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017755 (n + 91)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017758.P15833066831081580879

namespace A017758

/-- `∑[∑[∑[A017755(n)]]]` -/
def P15833066831081580879.Spec : Prop :=
  ∀ n, P15833066831081580879.a n = A017758 (n + 94)

end A017758

/-! ## A017758.P17579749127925304747

`A017759(n+1)-(A017759(n)+A017757(n+1))`
-/

namespace A017758.P17579749127925304747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017759 (n + 1 + 95) - (A017759 (n + 95) + A017757 (n + 1 + 93))

end

end A017758.P17579749127925304747

namespace A017758

/-- `A017759(n+1)-(A017759(n)+A017757(n+1))` -/
def P17579749127925304747.Spec : Prop :=
  ∀ n, P17579749127925304747.a n = A017758 (n + 94)

end A017758

/-! ## A017758.P17008135558324968468

`C(n+94, 94)`
-/

namespace A017758.P17008135558324968468
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 94) 94

end

end A017758.P17008135558324968468

namespace A017758

/-- `C(n+94, 94)` -/
def P17008135558324968468.Spec : Prop :=
  ∀ n, (P17008135558324968468.a n : ℤ) = A017758 (n + 94)

end A017758

/-!
# A017759: Binomial coefficients C(n,95).

The programs for A017759, the canonical program `A017759.P8368845838168328182` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017759 has offset 95).

The definition of A017759 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 361 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017759.P640365480494351044

`(95/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017759.P640365480494351044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (95 / (n : ℚ) + 1) * a (n - 1)

end

end A017759.P640365480494351044

namespace A017759

/-- `(95/n+1)*a(n-1)` -/
def P640365480494351044.Spec : Prop :=
  ∀ n, P640365480494351044.a n = (A017759 (n + 95) : ℚ)

end A017759

/-! ## A017759.P8368845838168328182

`∑[A017758(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017759

/-- `∑[A017758(n)]` -/
def P8368845838168328182.Spec : Prop :=
  ∀ n, P8368845838168328182.a n = A017759 (n + 95)

theorem P8368845838168328182.correct : P8368845838168328182.Spec := by
  intro n
  simp only [A017759, Nat.add_sub_cancel]

end A017759

/-! ## A017759.P17857020237295652117

`∑[∑[A017757(n)]]`
-/

namespace A017759.P17857020237295652117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017757 (n + 93)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017759.P17857020237295652117

namespace A017759

/-- `∑[∑[A017757(n)]]` -/
def P17857020237295652117.Spec : Prop :=
  ∀ n, P17857020237295652117.a n = A017759 (n + 95)

end A017759

/-! ## A017759.P16000547544031128516

`∑[∑[∑[A017756(n)]]]`
-/

namespace A017759.P16000547544031128516
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017756 (n + 92)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017759.P16000547544031128516

namespace A017759

/-- `∑[∑[∑[A017756(n)]]]` -/
def P16000547544031128516.Spec : Prop :=
  ∀ n, P16000547544031128516.a n = A017759 (n + 95)

end A017759

/-! ## A017759.P7204179667055112656

`A017760(n+1)-(A017760(n)+A017758(n+1))`
-/

namespace A017759.P7204179667055112656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017760 (n + 1 + 96) - (A017760 (n + 96) + A017758 (n + 1 + 94))

end

end A017759.P7204179667055112656

namespace A017759

/-- `A017760(n+1)-(A017760(n)+A017758(n+1))` -/
def P7204179667055112656.Spec : Prop :=
  ∀ n, P7204179667055112656.a n = A017759 (n + 95)

end A017759

/-! ## A017759.P9998129953134062483

`C(n+95, 95)`
-/

namespace A017759.P9998129953134062483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 95) 95

end

end A017759.P9998129953134062483

namespace A017759

/-- `C(n+95, 95)` -/
def P9998129953134062483.Spec : Prop :=
  ∀ n, (P9998129953134062483.a n : ℤ) = A017759 (n + 95)

end A017759

/-!
# A017760: Binomial coefficients C(n,96).

The programs for A017760, the canonical program `A017760.P17570627757291950631` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017760 has offset 96).

The definition of A017760 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017760.P13018497513400140674

`(96/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017760.P13018497513400140674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (96 / (n : ℚ) + 1) * a (n - 1)

end

end A017760.P13018497513400140674

namespace A017760

/-- `(96/n+1)*a(n-1)` -/
def P13018497513400140674.Spec : Prop :=
  ∀ n, P13018497513400140674.a n = (A017760 (n + 96) : ℚ)

end A017760

/-! ## A017760.P17570627757291950631

`∑[A017759(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017760

/-- `∑[A017759(n)]` -/
def P17570627757291950631.Spec : Prop :=
  ∀ n, P17570627757291950631.a n = A017760 (n + 96)

theorem P17570627757291950631.correct : P17570627757291950631.Spec := by
  intro n
  simp only [A017760, Nat.add_sub_cancel]

end A017760

/-! ## A017760.P11865718346289519755

`∑[∑[A017758(n)]]`
-/

namespace A017760.P11865718346289519755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017758 (n + 94)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017760.P11865718346289519755

namespace A017760

/-- `∑[∑[A017758(n)]]` -/
def P11865718346289519755.Spec : Prop :=
  ∀ n, P11865718346289519755.a n = A017760 (n + 96)

end A017760

/-! ## A017760.P2542101370722127181

`∑[∑[∑[A017757(n)]]]`
-/

namespace A017760.P2542101370722127181
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017757 (n + 93)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017760.P2542101370722127181

namespace A017760

/-- `∑[∑[∑[A017757(n)]]]` -/
def P2542101370722127181.Spec : Prop :=
  ∀ n, P2542101370722127181.a n = A017760 (n + 96)

end A017760

/-! ## A017760.P2054307882697067450

`A017761(n+1)-(A017761(n)+A017759(n+1))`
-/

namespace A017760.P2054307882697067450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017761 (n + 1 + 97) - (A017761 (n + 97) + A017759 (n + 1 + 95))

end

end A017760.P2054307882697067450

namespace A017760

/-- `A017761(n+1)-(A017761(n)+A017759(n+1))` -/
def P2054307882697067450.Spec : Prop :=
  ∀ n, P2054307882697067450.a n = A017760 (n + 96)

end A017760

/-! ## A017760.P14854703272452945959

`C(n+96, 96)`
-/

namespace A017760.P14854703272452945959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 96) 96

end

end A017760.P14854703272452945959

namespace A017760

/-- `C(n+96, 96)` -/
def P14854703272452945959.Spec : Prop :=
  ∀ n, (P14854703272452945959.a n : ℤ) = A017760 (n + 96)

end A017760

/-!
# A017761: Binomial coefficients C(n,97).

The programs for A017761, the canonical program `A017761.P6130510267687483270` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017761 has offset 97).

The definition of A017761 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 349 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017761.P10313347869880169948

`(97/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017761.P10313347869880169948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (97 / (n : ℚ) + 1) * a (n - 1)

end

end A017761.P10313347869880169948

namespace A017761

/-- `(97/n+1)*a(n-1)` -/
def P10313347869880169948.Spec : Prop :=
  ∀ n, P10313347869880169948.a n = (A017761 (n + 97) : ℚ)

end A017761

/-! ## A017761.P6130510267687483270

`∑[A017760(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017761

/-- `∑[A017760(n)]` -/
def P6130510267687483270.Spec : Prop :=
  ∀ n, P6130510267687483270.a n = A017761 (n + 97)

theorem P6130510267687483270.correct : P6130510267687483270.Spec := by
  intro n
  simp only [A017761, Nat.add_sub_cancel]

end A017761

/-! ## A017761.P16303556450161120549

`∑[∑[A017759(n)]]`
-/

namespace A017761.P16303556450161120549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017759 (n + 95)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017761.P16303556450161120549

namespace A017761

/-- `∑[∑[A017759(n)]]` -/
def P16303556450161120549.Spec : Prop :=
  ∀ n, P16303556450161120549.a n = A017761 (n + 97)

end A017761

/-! ## A017761.P659561425362228349

`∑[∑[∑[A017758(n)]]]`
-/

namespace A017761.P659561425362228349
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017758 (n + 94)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017761.P659561425362228349

namespace A017761

/-- `∑[∑[∑[A017758(n)]]]` -/
def P659561425362228349.Spec : Prop :=
  ∀ n, P659561425362228349.a n = A017761 (n + 97)

end A017761

/-! ## A017761.P16700807679097992631

`A017762(n+1)-(A017762(n)+A017760(n+1))`
-/

namespace A017761.P16700807679097992631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017762 (n + 1 + 98) - (A017762 (n + 98) + A017760 (n + 1 + 96))

end

end A017761.P16700807679097992631

namespace A017761

/-- `A017762(n+1)-(A017762(n)+A017760(n+1))` -/
def P16700807679097992631.Spec : Prop :=
  ∀ n, P16700807679097992631.a n = A017761 (n + 97)

end A017761

/-! ## A017761.P10362268186402142333

`C(n+97, 97)`
-/

namespace A017761.P10362268186402142333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 97) 97

end

end A017761.P10362268186402142333

namespace A017761

/-- `C(n+97, 97)` -/
def P10362268186402142333.Spec : Prop :=
  ∀ n, (P10362268186402142333.a n : ℤ) = A017761 (n + 97)

end A017761

/-!
# A017762: Binomial coefficients C(n,98).

The programs for A017762, the canonical program `A017762.P10601217411507736843` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017762 has offset 98).

The definition of A017762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017762.P12212752664164725322

`(98/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017762.P12212752664164725322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (98 / (n : ℚ) + 1) * a (n - 1)

end

end A017762.P12212752664164725322

namespace A017762

/-- `(98/n+1)*a(n-1)` -/
def P12212752664164725322.Spec : Prop :=
  ∀ n, P12212752664164725322.a n = (A017762 (n + 98) : ℚ)

end A017762

/-! ## A017762.P10601217411507736843

`∑[A017761(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017762

/-- `∑[A017761(n)]` -/
def P10601217411507736843.Spec : Prop :=
  ∀ n, P10601217411507736843.a n = A017762 (n + 98)

theorem P10601217411507736843.correct : P10601217411507736843.Spec := by
  intro n
  simp only [A017762, Nat.add_sub_cancel]

end A017762

/-! ## A017762.P2789559247578297267

`∑[∑[A017760(n)]]`
-/

namespace A017762.P2789559247578297267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017760 (n + 96)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017762.P2789559247578297267

namespace A017762

/-- `∑[∑[A017760(n)]]` -/
def P2789559247578297267.Spec : Prop :=
  ∀ n, P2789559247578297267.a n = A017762 (n + 98)

end A017762

/-! ## A017762.P16039636370042224578

`∑[∑[∑[A017759(n)]]]`
-/

namespace A017762.P16039636370042224578
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017759 (n + 95)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017762.P16039636370042224578

namespace A017762

/-- `∑[∑[∑[A017759(n)]]]` -/
def P16039636370042224578.Spec : Prop :=
  ∀ n, P16039636370042224578.a n = A017762 (n + 98)

end A017762

/-! ## A017762.P14405833980050006080

`C(n+98, 98)`
-/

namespace A017762.P14405833980050006080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 98) 98

end

end A017762.P14405833980050006080

namespace A017762

/-- `C(n+98, 98)` -/
def P14405833980050006080.Spec : Prop :=
  ∀ n, (P14405833980050006080.a n : ℤ) = A017762 (n + 98)

end A017762

/-!
# A017763: a(n) = binomial coefficient C(n,99).

The programs for A017763, the canonical program `A017763.P17968994238974275907` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017763 has offset 99).

The definition of A017763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017763.P11080459615281354680

`(99/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A017763.P11080459615281354680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (99 / (n : ℚ) + 1) * a (n - 1)

end

end A017763.P11080459615281354680

namespace A017763

/-- `(99/n+1)*a(n-1)` -/
def P11080459615281354680.Spec : Prop :=
  ∀ n, P11080459615281354680.a n = (A017763 (n + 99) : ℚ)

end A017763

/-! ## A017763.P17968994238974275907

`∑[A017762(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017763

/-- `∑[A017762(n)]` -/
def P17968994238974275907.Spec : Prop :=
  ∀ n, P17968994238974275907.a n = A017763 (n + 99)

theorem P17968994238974275907.correct : P17968994238974275907.Spec := by
  intro n
  simp only [A017763, Nat.add_sub_cancel]

end A017763

/-! ## A017763.P8471476035671433296

`∑[∑[A017761(n)]]`
-/

namespace A017763.P8471476035671433296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017761 (n + 97)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017763.P8471476035671433296

namespace A017763

/-- `∑[∑[A017761(n)]]` -/
def P8471476035671433296.Spec : Prop :=
  ∀ n, P8471476035671433296.a n = A017763 (n + 99)

end A017763

/-! ## A017763.P15887009064662427733

`∑[∑[∑[A017760(n)]]]`
-/

namespace A017763.P15887009064662427733
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017760 (n + 96)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017763.P15887009064662427733

namespace A017763

/-- `∑[∑[∑[A017760(n)]]]` -/
def P15887009064662427733.Spec : Prop :=
  ∀ n, P15887009064662427733.a n = A017763 (n + 99)

end A017763

/-! ## A017763.P1300016330019703436

`C(n+99, 99)`
-/

namespace A017763.P1300016330019703436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 99) 99

end

end A017763.P1300016330019703436

namespace A017763

/-- `C(n+99, 99)` -/
def P1300016330019703436.Spec : Prop :=
  ∀ n, (P1300016330019703436.a n : ℤ) = A017763 (n + 99)

end A017763

/-!
# A017764: a(n) = binomial coefficient C(n,100).

The programs for A017764, the canonical program `A017764.P3747891598830656448` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017764 has offset 100).

The definition of A017764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017764.P3747891598830656448

`∑[A017763(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A017764

/-- `∑[A017763(n)]` -/
def P3747891598830656448.Spec : Prop :=
  ∀ n, P3747891598830656448.a n = A017764 (n + 100)

theorem P3747891598830656448.correct : P3747891598830656448.Spec := by
  intro n
  simp only [A017764, Nat.add_sub_cancel]

end A017764

/-! ## A017764.P909531571651630830

`∑[∑[A017762(n)]]`
-/

namespace A017764.P909531571651630830
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017762 (n + 98)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017764.P909531571651630830

namespace A017764

/-- `∑[∑[A017762(n)]]` -/
def P909531571651630830.Spec : Prop :=
  ∀ n, P909531571651630830.a n = A017764 (n + 100)

end A017764

/-! ## A017764.P654523791489998672

`∑[∑[∑[A017761(n)]]]`
-/

namespace A017764.P654523791489998672
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017761 (n + 97)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017764.P654523791489998672

namespace A017764

/-- `∑[∑[∑[A017761(n)]]]` -/
def P654523791489998672.Spec : Prop :=
  ∀ n, P654523791489998672.a n = A017764 (n + 100)

end A017764

/-! ## A017764.P16474915288836417500

`∑[C(n+99, 99)]`
-/

namespace A017764.P16474915288836417500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 99) 99

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017764.P16474915288836417500

namespace A017764

/-- `∑[C(n+99, 99)]` -/
def P16474915288836417500.Spec : Prop :=
  ∀ n, (P16474915288836417500.a n : ℤ) = A017764 (n + 100)

end A017764

/-! ## A017764.P17692209638610155946

`C(A135600(n+1), n)`
-/

namespace A017764.P17692209638610155946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A135600 (n + 1)).toNat n

end

end A017764.P17692209638610155946

namespace A017764

/-- `C(A135600(n+1), n)` -/
def P17692209638610155946.Spec : Prop :=
  ∀ n, (P17692209638610155946.a n : ℤ) = A017764 (n + 100)

end A017764

/-! ## A017764.P16344717872052500631

`C((A001903(n+2)+A001903(n))²+n, n)`
-/

namespace A017764.P16344717872052500631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((A001903 (n + 2) + A001903 n) ^ 2 + (n : ℤ)).toNat n

end

end A017764.P16344717872052500631

namespace A017764

/-- `C((A001903(n+2)+A001903(n))²+n, n)` -/
def P16344717872052500631.Spec : Prop :=
  ∀ n, (P16344717872052500631.a n : ℤ) = A017764 (n + 100)

end A017764

/-!
# A017765: Binomial coefficients C(49,n).

The programs for A017765, the canonical program `A017765.P14858806485080067820` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017765 has offset 0).

The definition of A017765 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(49, n)` (program `A017765.P14858806485080067820`, by `A017765.P14858806485080067820.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017765.P14858806485080067820

`C(49, n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017765

/-- `C(49, n)` -/
def P14858806485080067820.Spec : Prop :=
  ∀ n, (P14858806485080067820.a n : ℤ) = A017765 n

theorem P14858806485080067820.correct : P14858806485080067820.Spec := by
  intro n
  simp only [A017765]

end A017765

/-! ## A017765.P17793739050144251390

`(50/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017765.P17793739050144251390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (50 / (n : ℚ) - 1) * a (n - 1)

end

end A017765.P17793739050144251390

namespace A017765

/-- `(50/n-1)*a(n-1)` -/
def P17793739050144251390.Spec : Prop :=
  ∀ n, P17793739050144251390.a n = (A017765 n : ℚ)

end A017765

/-! ## A017765.P16516044998697995355

`A217285(n+98)`
-/

namespace A017765.P16516044998697995355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217285 (n + 98)

end

end A017765.P16516044998697995355

namespace A017765

/-- `A217285(n+98)` -/
def P16516044998697995355.Spec : Prop :=
  ∀ n, P16516044998697995355.a n = A017765 n

end A017765

/-! ## A017765.P13998596916984052204

`A007318((70/2)²+n)`
-/

namespace A017765.P13998596916984052204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.roundAway (((70 : ℚ) / 2) ^ 2 + (n : ℚ))).toNat

end

end A017765.P13998596916984052204

namespace A017765

/-- `A007318((70/2)²+n)` -/
def P13998596916984052204.Spec : Prop :=
  ∀ n, P13998596916984052204.a n = A017765 n

end A017765

/-! ## A017765.P4137498313861911736

`A074909(280+abs(945-n))`
-/

namespace A017765.P4137498313861911736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (280 + |945 - (n : ℤ)|).toNat

end

end A017765.P4137498313861911736

namespace A017765

/-- `A074909(280+abs(945-n))` -/
def P4137498313861911736.Spec : Prop :=
  ∀ n, P4137498313861911736.a n = A017765 n

end A017765

/-! ## A017765.P8396136505958116801

`A017766(n)-a(n-1)` with `a(0)=1`
-/

namespace A017765.P8396136505958116801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017766 n - a (n - 1)

end

end A017765.P8396136505958116801

namespace A017765

/-- `A017766(n)-a(n-1)` -/
def P8396136505958116801.Spec : Prop :=
  ∀ n, P8396136505958116801.a n = A017765 n

end A017765

/-! ## A017765.P2652612581835503837

`A173246(n)+a(n-2)` with `a(0)=1, a(1)=49`
-/

namespace A017765.P2652612581835503837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 49] fun n a =>
  A173246 n + a (n - 2)

end

end A017765.P2652612581835503837

namespace A017765

/-- `A173246(n)+a(n-2)` -/
def P2652612581835503837.Spec : Prop :=
  ∀ n, P2652612581835503837.a n = A017765 n

end A017765

/-!
# A017766: Binomial coefficients C(50,n).

The programs for A017766, the canonical program `A017766.P12649998521655219418` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017766 has offset 0).

The definition of A017766 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(50, n)` (program `A017766.P12649998521655219418`, by `A017766.P12649998521655219418.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017766.P12649998521655219418

`C(50, n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017766

/-- `C(50, n)` -/
def P12649998521655219418.Spec : Prop :=
  ∀ n, (P12649998521655219418.a n : ℤ) = A017766 n

theorem P12649998521655219418.correct : P12649998521655219418.Spec := by
  intro n
  simp only [A017766]

end A017766

/-! ## A017766.P11304015961058107651

`(51/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017766.P11304015961058107651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (51 / (n : ℚ) - 1) * a (n - 1)

end

end A017766.P11304015961058107651

namespace A017766

/-- `(51/n-1)*a(n-1)` -/
def P11304015961058107651.Spec : Prop :=
  ∀ n, P11304015961058107651.a n = (A017766 n : ℚ)

end A017766

/-! ## A017766.P2781360883318369279

`∑[A173246(n)]`
-/

namespace A017766.P2781360883318369279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173246 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017766.P2781360883318369279

namespace A017766

/-- `∑[A173246(n)]` -/
def P2781360883318369279.Spec : Prop :=
  ∀ n, P2781360883318369279.a n = A017766 n

end A017766

/-! ## A017766.P5255802697357490908

`A074909(385+abs(890-n))`
-/

namespace A017766.P5255802697357490908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (385 + |890 - (n : ℤ)|).toNat

end

end A017766.P5255802697357490908

namespace A017766

/-- `A074909(385+abs(890-n))` -/
def P5255802697357490908.Spec : Prop :=
  ∀ n, P5255802697357490908.a n = A017766 n

end A017766

/-! ## A017766.P11342627354992788857

`A017767(n)-a(n-1)` with `a(0)=1`
-/

namespace A017766.P11342627354992788857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017767 n - a (n - 1)

end

end A017766.P11342627354992788857

namespace A017766

/-- `A017767(n)-a(n-1)` -/
def P11342627354992788857.Spec : Prop :=
  ∀ n, P11342627354992788857.a n = A017766 n

end A017766

/-! ## A017766.P2400500734125454115

`abs(∑[A017767(n)*A033999(n)])`
-/

namespace A017766.P2400500734125454115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017767 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A017766.P2400500734125454115

namespace A017766

/-- `abs(∑[A017767(n)*A033999(n)])` -/
def P2400500734125454115.Spec : Prop :=
  ∀ n, P2400500734125454115.a n = A017766 n

end A017766

/-!
# A017767: Binomial coefficients C(51,n).

The programs for A017767, the canonical program `A017767.P18296299769207493652` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017767 has offset 0).

The definition of A017767 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(51, n)` (program `A017767.P18296299769207493652`, by `A017767.P18296299769207493652.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017767.P18296299769207493652

`C(51, n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017767

/-- `C(51, n)` -/
def P18296299769207493652.Spec : Prop :=
  ∀ n, (P18296299769207493652.a n : ℤ) = A017767 n

theorem P18296299769207493652.correct : P18296299769207493652.Spec := by
  intro n
  simp only [A017767]

end A017767

/-! ## A017767.P5847323122618266856

`(52/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017767.P5847323122618266856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (52 / (n : ℚ) - 1) * a (n - 1)

end

end A017767.P5847323122618266856

namespace A017767

/-- `(52/n-1)*a(n-1)` -/
def P5847323122618266856.Spec : Prop :=
  ∀ n, P5847323122618266856.a n = (A017767 n : ℚ)

end A017767

/-! ## A017767.P5346349881418483888

`A074909(663+abs(663-n))`
-/

namespace A017767.P5346349881418483888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (663 + |663 - (n : ℤ)|).toNat

end

end A017767.P5346349881418483888

namespace A017767

/-- `A074909(663+abs(663-n))` -/
def P5346349881418483888.Spec : Prop :=
  ∀ n, P5346349881418483888.a n = A017767 n

end A017767

/-! ## A017767.P8063569049112302729

`A017768(n)-a(n-1)` with `a(0)=1`
-/

namespace A017767.P8063569049112302729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017768 n - a (n - 1)

end

end A017767.P8063569049112302729

namespace A017767

/-- `A017768(n)-a(n-1)` -/
def P8063569049112302729.Spec : Prop :=
  ∀ n, P8063569049112302729.a n = A017767 n

end A017767

/-! ## A017767.P12543359777064706922

`A007318(A007318(A250582(A014963(10*(n+1))))+n)`
-/

namespace A017767.P12543359777064706922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A007318 (A250582 (A014963 (10 * (n + 1))).toNat).toNat + (n : ℤ)).toNat

end

end A017767.P12543359777064706922

namespace A017767

/-- `A007318(A007318(A250582(A014963(10*(n+1))))+n)` -/
def P12543359777064706922.Spec : Prop :=
  ∀ n, P12543359777064706922.a n = A017767 n

end A017767

/-! ## A017767.P14172422417311573874

`2*A017766(n)-A173246(n)`
-/

namespace A017767.P14172422417311573874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A017766 n - A173246 n

end

end A017767.P14172422417311573874

namespace A017767

/-- `2*A017766(n)-A173246(n)` -/
def P14172422417311573874.Spec : Prop :=
  ∀ n, P14172422417311573874.a n = A017767 n

end A017767

/-!
# A017768: Binomial coefficients C(52,n).

The programs for A017768, the canonical program `A017768.P747222679050944569` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017768 has offset 0).

The definition of A017768 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(52, n)` (program `A017768.P747222679050944569`, by `A017768.P747222679050944569.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017768.P747222679050944569

`C(52, n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017768

/-- `C(52, n)` -/
def P747222679050944569.Spec : Prop :=
  ∀ n, (P747222679050944569.a n : ℤ) = A017768 n

theorem P747222679050944569.correct : P747222679050944569.Spec := by
  intro n
  simp only [A017768]

end A017768

/-! ## A017768.P7770655799066048085

`(53/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017768.P7770655799066048085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (53 / (n : ℚ) - 1) * a (n - 1)

end

end A017768.P7770655799066048085

namespace A017768

/-- `(53/n-1)*a(n-1)` -/
def P7770655799066048085.Spec : Prop :=
  ∀ n, P7770655799066048085.a n = (A017768 n : ℚ)

end A017768

/-! ## A017768.P12839405423562644135

`A074909(624+abs(754-n))`
-/

namespace A017768.P12839405423562644135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (624 + |754 - (n : ℤ)|).toNat

end

end A017768.P12839405423562644135

namespace A017768

/-- `A074909(624+abs(754-n))` -/
def P12839405423562644135.Spec : Prop :=
  ∀ n, P12839405423562644135.a n = A017768 n

end A017768

/-! ## A017768.P13352813743319155627

`A017769(n)-a(n-1)` with `a(0)=1`
-/

namespace A017768.P13352813743319155627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017769 n - a (n - 1)

end

end A017768.P13352813743319155627

namespace A017768

/-- `A017769(n)-a(n-1)` -/
def P13352813743319155627.Spec : Prop :=
  ∀ n, P13352813743319155627.a n = A017768 n

end A017768

/-! ## A017768.P5291388901132905993

`A007318(A064305(A007318(∑[n]))-n)`
-/

namespace A017768.P5291388901132905993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A064305 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - (n : ℤ)).toNat

end

end A017768.P5291388901132905993

namespace A017768

/-- `A007318(A064305(A007318(∑[n]))-n)` -/
def P5291388901132905993.Spec : Prop :=
  ∀ n, P5291388901132905993.a n = A017768 n

end A017768

/-! ## A017768.P14153380318762356202

`A007318(A215548(A007318(∑[n]))-n)`
-/

namespace A017768.P14153380318762356202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A215548 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - (n : ℤ)).toNat

end

end A017768.P14153380318762356202

namespace A017768

/-- `A007318(A215548(A007318(∑[n]))-n)` -/
def P14153380318762356202.Spec : Prop :=
  ∀ n, P14153380318762356202.a n = A017768 n

end A017768

/-!
# A017769: Binomial coefficients C(53,n).

The programs for A017769, the canonical program `A017769.P16616649518720506172` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017769 has offset 0).

The definition of A017769 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(53, n)` (program `A017769.P16616649518720506172`, by `A017769.P16616649518720506172.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017769.P16616649518720506172

`C(53, n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017769

/-- `C(53, n)` -/
def P16616649518720506172.Spec : Prop :=
  ∀ n, (P16616649518720506172.a n : ℤ) = A017769 n

theorem P16616649518720506172.correct : P16616649518720506172.Spec := by
  intro n
  simp only [A017769]

end A017769

/-! ## A017769.P5849867284263907647

`(54/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017769.P5849867284263907647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (54 / (n : ℚ) - 1) * a (n - 1)

end

end A017769.P5849867284263907647

namespace A017769

/-- `(54/n-1)*a(n-1)` -/
def P5849867284263907647.Spec : Prop :=
  ∀ n, P5849867284263907647.a n = (A017769 n : ℚ)

end A017769

/-! ## A017769.P17040892712882529204

`A074909(688+abs(743-n))`
-/

namespace A017769.P17040892712882529204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (688 + |743 - (n : ℤ)|).toNat

end

end A017769.P17040892712882529204

namespace A017769

/-- `A074909(688+abs(743-n))` -/
def P17040892712882529204.Spec : Prop :=
  ∀ n, P17040892712882529204.a n = A017769 n

end A017769

/-! ## A017769.P17047408885041456666

`A017770(n)-a(n-1)` with `a(0)=1`
-/

namespace A017769.P17047408885041456666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017770 n - a (n - 1)

end

end A017769.P17047408885041456666

namespace A017769

/-- `A017770(n)-a(n-1)` -/
def P17047408885041456666.Spec : Prop :=
  ∀ n, P17047408885041456666.a n = A017769 n

end A017769

/-! ## A017769.P2437985218339440721

`A007318(A178518(xor(n, xor(37, n)))+n+1)`
-/

namespace A017769.P2437985218339440721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A178518 (Nat.xor n (Nat.xor 37 n)) + (n + 1 : ℤ)).toNat

end

end A017769.P2437985218339440721

namespace A017769

/-- `A007318(A178518(xor(n, xor(37, n)))+n+1)` -/
def P2437985218339440721.Spec : Prop :=
  ∀ n, P2437985218339440721.a n = A017769 n

end A017769

/-! ## A017769.P1596263881143001969

`A007318(A064305(A007318(∑[n]))+n+1)`
-/

namespace A017769.P1596263881143001969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A064305 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + (n + 1 : ℤ)).toNat

end

end A017769.P1596263881143001969

namespace A017769

/-- `A007318(A064305(A007318(∑[n]))+n+1)` -/
def P1596263881143001969.Spec : Prop :=
  ∀ n, P1596263881143001969.a n = A017769 n

end A017769

/-! ## A017769.P8228265729497614557

`(n+1)*A017770(n+1)/A017770(A262079(n+1))`
-/

namespace A017769.P8228265729497614557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A017770 (n + 1) : ℚ) / (A017770 (A262079 (n + 1)).toNat : ℚ))

end

end A017769.P8228265729497614557

namespace A017769

/-- `(n+1)*A017770(n+1)/A017770(A262079(n+1))` -/
def P8228265729497614557.Spec : Prop :=
  ∀ n, P8228265729497614557.a n = (A017769 n : ℚ)

end A017769

/-! ## A017769.P4225853754619632604

`A017770(n+1)-(A017768(n+1)+A017768(n))`
-/

namespace A017769.P4225853754619632604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017770 (n + 1) - (A017768 (n + 1) + A017768 n)

end

end A017769.P4225853754619632604

namespace A017769

/-- `A017770(n+1)-(A017768(n+1)+A017768(n))` -/
def P4225853754619632604.Spec : Prop :=
  ∀ n, P4225853754619632604.a n = A017769 n

end A017769

/-!
# A017770: Binomial coefficients C(54,n).

The programs for A017770, the canonical program `A017770.P10226311632531693317` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017770 has offset 0).

The definition of A017770 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(54, n)` (program `A017770.P10226311632531693317`, by `A017770.P10226311632531693317.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017770.P10226311632531693317

`C(54, n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017770

/-- `C(54, n)` -/
def P10226311632531693317.Spec : Prop :=
  ∀ n, (P10226311632531693317.a n : ℤ) = A017770 n

theorem P10226311632531693317.correct : P10226311632531693317.Spec := by
  intro n
  simp only [A017770]

end A017770

/-! ## A017770.P9885723150033573370

`(55/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017770.P9885723150033573370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (55 / (n : ℚ) - 1) * a (n - 1)

end

end A017770.P9885723150033573370

namespace A017770

/-- `(55/n-1)*a(n-1)` -/
def P9885723150033573370.Spec : Prop :=
  ∀ n, P9885723150033573370.a n = (A017770 n : ℚ)

end A017770

/-! ## A017770.P8857501112665637828

`A074909(524+abs(961-n))`
-/

namespace A017770.P8857501112665637828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (524 + |961 - (n : ℤ)|).toNat

end

end A017770.P8857501112665637828

namespace A017770

/-- `A074909(524+abs(961-n))` -/
def P8857501112665637828.Spec : Prop :=
  ∀ n, P8857501112665637828.a n = A017770 n

end A017770

/-! ## A017770.P13106792663125458970

`A034870(27*(n/27+27))`
-/

namespace A017770.P13106792663125458970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034870 (SequenceMachineLib.roundAway (27 * ((n : ℚ) / 27 + 27))).toNat

end

end A017770.P13106792663125458970

namespace A017770

/-- `A034870(27*(n/27+27))` -/
def P13106792663125458970.Spec : Prop :=
  ∀ n, P13106792663125458970.a n = A017770 n

end A017770

/-! ## A017770.P18291170083284850940

`A007318(15*(n/15+99))`
-/

namespace A017770.P18291170083284850940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.roundAway (15 * ((n : ℚ) / 15 + 99))).toNat

end

end A017770.P18291170083284850940

namespace A017770

/-- `A007318(15*(n/15+99))` -/
def P18291170083284850940.Spec : Prop :=
  ∀ n, P18291170083284850940.a n = A017770 n

end A017770

/-! ## A017770.P6679695346816847183

`A017771(n)-a(n-1)` with `a(0)=1`
-/

namespace A017770.P6679695346816847183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017771 n - a (n - 1)

end

end A017770.P6679695346816847183

namespace A017770

/-- `A017771(n)-a(n-1)` -/
def P6679695346816847183.Spec : Prop :=
  ∀ n, P6679695346816847183.a n = A017770 n

end A017770

/-! ## A017770.P6324736829797163694

`A135278(A178518(xor(n, xor(37, n)))+n)`
-/

namespace A017770.P6324736829797163694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (A178518 (Nat.xor n (Nat.xor 37 n)) + (n : ℤ)).toNat

end

end A017770.P6324736829797163694

namespace A017770

/-- `A135278(A178518(xor(n, xor(37, n)))+n)` -/
def P6324736829797163694.Spec : Prop :=
  ∀ n, P6324736829797163694.a n = A017770 n

end A017770

/-! ## A017770.P15281180355735434957

`A017771(n+1)-(A017769(n+1)+A017769(n))`
-/

namespace A017770.P15281180355735434957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017771 (n + 1) - (A017769 (n + 1) + A017769 n)

end

end A017770.P15281180355735434957

namespace A017770

/-- `A017771(n+1)-(A017769(n+1)+A017769(n))` -/
def P15281180355735434957.Spec : Prop :=
  ∀ n, P15281180355735434957.a n = A017770 n

end A017770

/-!
# A017771: Binomial coefficients C(55,n).

The programs for A017771, the canonical program `A017771.P1323684444254584846` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017771 has offset 0).

The definition of A017771 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(55, n)` (program `A017771.P1323684444254584846`, by `A017771.P1323684444254584846.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017771.P1323684444254584846

`C(55, n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017771

/-- `C(55, n)` -/
def P1323684444254584846.Spec : Prop :=
  ∀ n, (P1323684444254584846.a n : ℤ) = A017771 n

theorem P1323684444254584846.correct : P1323684444254584846.Spec := by
  intro n
  simp only [A017771]

end A017771

/-! ## A017771.P9428697550935122105

`(56/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017771.P9428697550935122105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (56 / (n : ℚ) - 1) * a (n - 1)

end

end A017771.P9428697550935122105

namespace A017771

/-- `(56/n-1)*a(n-1)` -/
def P9428697550935122105.Spec : Prop :=
  ∀ n, P9428697550935122105.a n = (A017771 n : ℚ)

end A017771

/-! ## A017771.P7993961398870373655

`A261507(n+98)`
-/

namespace A017771.P7993961398870373655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261507 (n + 98)

end

end A017771.P7993961398870373655

namespace A017771

/-- `A261507(n+98)` -/
def P7993961398870373655.Spec : Prop :=
  ∀ n, P7993961398870373655.a n = A017771 n

end A017771

/-! ## A017771.P18062078203219543717

`A074909(600+abs(940-n))`
-/

namespace A017771.P18062078203219543717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (600 + |940 - (n : ℤ)|).toNat

end

end A017771.P18062078203219543717

namespace A017771

/-- `A074909(600+abs(940-n))` -/
def P18062078203219543717.Spec : Prop :=
  ∀ n, P18062078203219543717.a n = A017771 n

end A017771

/-! ## A017771.P6996400176933813461

`A017772(n)-a(n-1)` with `a(0)=1`
-/

namespace A017771.P6996400176933813461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017772 n - a (n - 1)

end

end A017771.P6996400176933813461

namespace A017771

/-- `A017772(n)-a(n-1)` -/
def P6996400176933813461.Spec : Prop :=
  ∀ n, P6996400176933813461.a n = A017771 n

end A017771

/-! ## A017771.P15593720571018295577

`A007318(A283900(4*n+1)+n)`
-/

namespace A017771.P15593720571018295577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A283900 (4 * n + 1) + (n : ℤ)).toNat

end

end A017771.P15593720571018295577

namespace A017771

/-- `A007318(A283900(4*n+1)+n)` -/
def P15593720571018295577.Spec : Prop :=
  ∀ n, P15593720571018295577.a n = A017771 n

end A017771

/-! ## A017771.P2755563022579560001

`A007318(A104167(A007318(∑[n]))+n)`
-/

namespace A017771.P2755563022579560001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A104167 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + (n : ℤ)).toNat

end

end A017771.P2755563022579560001

namespace A017771

/-- `A007318(A104167(A007318(∑[n]))+n)` -/
def P2755563022579560001.Spec : Prop :=
  ∀ n, P2755563022579560001.a n = A017771 n

end A017771

/-! ## A017771.P15452466744190037110

`A007318(A316336(A007318(∑[n]))-n)`
-/

namespace A017771.P15452466744190037110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A316336 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - (n : ℤ)).toNat

end

end A017771.P15452466744190037110

namespace A017771

/-- `A007318(A316336(A007318(∑[n]))-n)` -/
def P15452466744190037110.Spec : Prop :=
  ∀ n, P15452466744190037110.a n = A017771 n

end A017771

/-! ## A017771.P18068503456932581521

`A017772(n+1)-(A017770(n+1)+A017770(n))`
-/

namespace A017771.P18068503456932581521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017772 (n + 1) - (A017770 (n + 1) + A017770 n)

end

end A017771.P18068503456932581521

namespace A017771

/-- `A017772(n+1)-(A017770(n+1)+A017770(n))` -/
def P18068503456932581521.Spec : Prop :=
  ∀ n, P18068503456932581521.a n = A017771 n

end A017771

/-!
# A017772: Binomial coefficients C(56,n).

The programs for A017772, the canonical program `A017772.P11787099465757899344` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017772 has offset 0).

The definition of A017772 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(56, n)` (program `A017772.P11787099465757899344`, by `A017772.P11787099465757899344.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017772.P11787099465757899344

`C(56, n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017772

/-- `C(56, n)` -/
def P11787099465757899344.Spec : Prop :=
  ∀ n, (P11787099465757899344.a n : ℤ) = A017772 n

theorem P11787099465757899344.correct : P11787099465757899344.Spec := by
  intro n
  simp only [A017772]

end A017772

/-! ## A017772.P9019557523293775792

`(57/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017772.P9019557523293775792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (57 / (n : ℚ) - 1) * a (n - 1)

end

end A017772.P9019557523293775792

namespace A017772

/-- `(57/n-1)*a(n-1)` -/
def P9019557523293775792.Spec : Prop :=
  ∀ n, P9019557523293775792.a n = (A017772 n : ℚ)

end A017772

/-! ## A017772.P2843056819509941971

`A074909(653+abs(943-n))`
-/

namespace A017772.P2843056819509941971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (653 + |943 - (n : ℤ)|).toNat

end

end A017772.P2843056819509941971

namespace A017772

/-- `A074909(653+abs(943-n))` -/
def P2843056819509941971.Spec : Prop :=
  ∀ n, P2843056819509941971.a n = A017772 n

end A017772

/-! ## A017772.P12228385768468419813

`A017773(n)-a(n-1)` with `a(0)=1`
-/

namespace A017772.P12228385768468419813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017773 n - a (n - 1)

end

end A017772.P12228385768468419813

namespace A017772

/-- `A017773(n)-a(n-1)` -/
def P12228385768468419813.Spec : Prop :=
  ∀ n, P12228385768468419813.a n = A017772 n

end A017772

/-! ## A017772.P14699659997986739052

`A007318(29*((n+1)/29+55))`
-/

namespace A017772.P14699659997986739052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.roundAway (29 * ((n + 1 : ℚ) / 29 + 55))).toNat

end

end A017772.P14699659997986739052

namespace A017772

/-- `A007318(29*((n+1)/29+55))` -/
def P14699659997986739052.Spec : Prop :=
  ∀ n, P14699659997986739052.a n = A017772 n

end A017772

/-! ## A017772.P1315911805412833582

`A017773(n+1)-(A017771(n+1)+A017771(n))`
-/

namespace A017772.P1315911805412833582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017773 (n + 1) - (A017771 (n + 1) + A017771 n)

end

end A017772.P1315911805412833582

namespace A017772

/-- `A017773(n+1)-(A017771(n+1)+A017771(n))` -/
def P1315911805412833582.Spec : Prop :=
  ∀ n, P1315911805412833582.a n = A017772 n

end A017772

/-!
# A017773: Binomial coefficients C(57,n).

The programs for A017773, the canonical program `A017773.P13549616587620712924` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017773 has offset 0).

The definition of A017773 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(57, n)` (program `A017773.P13549616587620712924`, by `A017773.P13549616587620712924.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017773.P13549616587620712924

`C(57, n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017773

/-- `C(57, n)` -/
def P13549616587620712924.Spec : Prop :=
  ∀ n, (P13549616587620712924.a n : ℤ) = A017773 n

theorem P13549616587620712924.correct : P13549616587620712924.Spec := by
  intro n
  simp only [A017773]

end A017773

/-! ## A017773.P15425192855498453727

`(58/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017773.P15425192855498453727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (58 / (n : ℚ) - 1) * a (n - 1)

end

end A017773.P15425192855498453727

namespace A017773

/-- `(58/n-1)*a(n-1)` -/
def P15425192855498453727.Spec : Prop :=
  ∀ n, P15425192855498453727.a n = (A017773 n : ℚ)

end A017773

/-! ## A017773.P9416114010385346795

`A017774(n)-a(n-1)` with `a(0)=1`
-/

namespace A017773.P9416114010385346795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017774 n - a (n - 1)

end

end A017773.P9416114010385346795

namespace A017773

/-- `A017774(n)-a(n-1)` -/
def P9416114010385346795.Spec : Prop :=
  ∀ n, P9416114010385346795.a n = A017773 n

end A017773

/-! ## A017773.P1507238308576428921

`A017774(n+1)-(A017772(n+1)+A017772(n))`
-/

namespace A017773.P1507238308576428921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017774 (n + 1) - (A017772 (n + 1) + A017772 n)

end

end A017773.P1507238308576428921

namespace A017773

/-- `A017774(n+1)-(A017772(n+1)+A017772(n))` -/
def P1507238308576428921.Spec : Prop :=
  ∀ n, P1507238308576428921.a n = A017773 n

end A017773

/-!
# A017774: Binomial coefficients C(58,n).

The programs for A017774, the canonical program `A017774.P17358424810509228590` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017774 has offset 0).

The definition of A017774 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(58, n)` (program `A017774.P17358424810509228590`, by `A017774.P17358424810509228590.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017774.P17358424810509228590

`C(58, n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017774

/-- `C(58, n)` -/
def P17358424810509228590.Spec : Prop :=
  ∀ n, (P17358424810509228590.a n : ℤ) = A017774 n

theorem P17358424810509228590.correct : P17358424810509228590.Spec := by
  intro n
  simp only [A017774]

end A017774

/-! ## A017774.P831477749608437050

`(59/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017774.P831477749608437050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (59 / (n : ℚ) - 1) * a (n - 1)

end

end A017774.P831477749608437050

namespace A017774

/-- `(59/n-1)*a(n-1)` -/
def P831477749608437050.Spec : Prop :=
  ∀ n, P831477749608437050.a n = (A017774 n : ℚ)

end A017774

/-! ## A017774.P16642364600901722823

`A017775(n)-a(n-1)` with `a(0)=1`
-/

namespace A017774.P16642364600901722823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017775 n - a (n - 1)

end

end A017774.P16642364600901722823

namespace A017774

/-- `A017775(n)-a(n-1)` -/
def P16642364600901722823.Spec : Prop :=
  ∀ n, P16642364600901722823.a n = A017774 n

end A017774

/-!
# A017775: Binomial coefficients C(59,n).

The programs for A017775, the canonical program `A017775.P8406159058908895030` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017775 has offset 0).

The definition of A017775 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(59, n)` (program `A017775.P8406159058908895030`, by `A017775.P8406159058908895030.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017775.P8406159058908895030

`C(59, n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017775

/-- `C(59, n)` -/
def P8406159058908895030.Spec : Prop :=
  ∀ n, (P8406159058908895030.a n : ℤ) = A017775 n

theorem P8406159058908895030.correct : P8406159058908895030.Spec := by
  intro n
  simp only [A017775]

end A017775

/-! ## A017775.P7585254475103010622

`(60/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017775.P7585254475103010622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (60 / (n : ℚ) - 1) * a (n - 1)

end

end A017775.P7585254475103010622

namespace A017775

/-- `(60/n-1)*a(n-1)` -/
def P7585254475103010622.Spec : Prop :=
  ∀ n, P7585254475103010622.a n = (A017775 n : ℚ)

end A017775

/-! ## A017775.P3938432732007874968

`A017776(n)-a(n-1)` with `a(0)=1`
-/

namespace A017775.P3938432732007874968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017776 n - a (n - 1)

end

end A017775.P3938432732007874968

namespace A017775

/-- `A017776(n)-a(n-1)` -/
def P3938432732007874968.Spec : Prop :=
  ∀ n, P3938432732007874968.a n = A017775 n

end A017775

/-!
# A017776: Binomial coefficients C(60,n).

The programs for A017776, the canonical program `A017776.P10359970919049504631` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017776 has offset 0).

The definition of A017776 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(60, n)` (program `A017776.P10359970919049504631`, by `A017776.P10359970919049504631.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017776.P10359970919049504631

`C(60, n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017776

/-- `C(60, n)` -/
def P10359970919049504631.Spec : Prop :=
  ∀ n, (P10359970919049504631.a n : ℤ) = A017776 n

theorem P10359970919049504631.correct : P10359970919049504631.Spec := by
  intro n
  simp only [A017776]

end A017776

/-! ## A017776.P8576268021816566134

`(61/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017776.P8576268021816566134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (61 / (n : ℚ) - 1) * a (n - 1)

end

end A017776.P8576268021816566134

namespace A017776

/-- `(61/n-1)*a(n-1)` -/
def P8576268021816566134.Spec : Prop :=
  ∀ n, P8576268021816566134.a n = (A017776 n : ℚ)

end A017776

/-! ## A017776.P236036399791319865

`lcm(61, a(n-1))/n-a(n-1)` with `a(0)=1`
-/

namespace A017776.P236036399791319865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 61 (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) / (n : ℚ) - a (n - 1)

end

end A017776.P236036399791319865

namespace A017776

/-- `lcm(61, a(n-1))/n-a(n-1)` -/
def P236036399791319865.Spec : Prop :=
  ∀ n, P236036399791319865.a n = (A017776 n : ℚ)

end A017776

/-! ## A017776.P287100425056030427

`A017777(n)-a(n-1)` with `a(0)=1`
-/

namespace A017776.P287100425056030427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017777 n - a (n - 1)

end

end A017776.P287100425056030427

namespace A017776

/-- `A017777(n)-a(n-1)` -/
def P287100425056030427.Spec : Prop :=
  ∀ n, P287100425056030427.a n = A017776 n

end A017776

/-! ## A017776.P13793701298080179081

`A277080(lt[A277098(n+1), A277100(2*n+1)])`
-/

namespace A017776.P13793701298080179081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277100 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277080 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A017776.P13793701298080179081

namespace A017776

/-- `A277080(lt[A277098(n+1), A277100(2*n+1)])` -/
def P13793701298080179081.Spec : Prop :=
  ∀ n, P13793701298080179081.a n = A017776 n

end A017776

/-!
# A017777: Binomial coefficients C(61,n).

The programs for A017777, the canonical program `A017777.P8859995029156515088` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017777 has offset 0).

The definition of A017777 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(61, n)` (program `A017777.P8859995029156515088`, by `A017777.P8859995029156515088.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017777.P8859995029156515088

`C(61, n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017777

/-- `C(61, n)` -/
def P8859995029156515088.Spec : Prop :=
  ∀ n, (P8859995029156515088.a n : ℤ) = A017777 n

theorem P8859995029156515088.correct : P8859995029156515088.Spec := by
  intro n
  simp only [A017777]

end A017777

/-! ## A017777.P14253487383572882253

`(62/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017777.P14253487383572882253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (62 / (n : ℚ) - 1) * a (n - 1)

end

end A017777.P14253487383572882253

namespace A017777

/-- `(62/n-1)*a(n-1)` -/
def P14253487383572882253.Spec : Prop :=
  ∀ n, P14253487383572882253.a n = (A017777 n : ℚ)

end A017777

/-! ## A017777.P16076949591581959826

`A017778(n)-a(n-1)` with `a(0)=1`
-/

namespace A017777.P16076949591581959826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017778 n - a (n - 1)

end

end A017777.P16076949591581959826

namespace A017777

/-- `A017778(n)-a(n-1)` -/
def P16076949591581959826.Spec : Prop :=
  ∀ n, P16076949591581959826.a n = A017777 n

end A017777

/-!
# A017778: Binomial coefficients C(62,n).

The programs for A017778, the canonical program `A017778.P10415812771243267335` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017778 has offset 0).

The definition of A017778 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(62, n)` (program `A017778.P10415812771243267335`, by `A017778.P10415812771243267335.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017778.P10415812771243267335

`C(62, n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017778

/-- `C(62, n)` -/
def P10415812771243267335.Spec : Prop :=
  ∀ n, (P10415812771243267335.a n : ℤ) = A017778 n

theorem P10415812771243267335.correct : P10415812771243267335.Spec := by
  intro n
  simp only [A017778]

end A017778

/-! ## A017778.P16719533064277780320

`(63/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017778.P16719533064277780320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (63 / (n : ℚ) - 1) * a (n - 1)

end

end A017778.P16719533064277780320

namespace A017778

/-- `(63/n-1)*a(n-1)` -/
def P16719533064277780320.Spec : Prop :=
  ∀ n, P16719533064277780320.a n = (A017778 n : ℚ)

end A017778

/-! ## A017778.P16150483465139403386

`A017779(n)-a(n-1)` with `a(0)=1`
-/

namespace A017778.P16150483465139403386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017779 n - a (n - 1)

end

end A017778.P16150483465139403386

namespace A017778

/-- `A017779(n)-a(n-1)` -/
def P16150483465139403386.Spec : Prop :=
  ∀ n, P16150483465139403386.a n = A017778 n

end A017778

/-! ## A017778.P1990091797821417089

`A116088(eq[31, A002262(n)])`
-/

namespace A017778.P1990091797821417089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A017778.P1990091797821417089

namespace A017778

/-- `A116088(eq[31, A002262(n)])` -/
def P1990091797821417089.Spec : Prop :=
  ∀ n, P1990091797821417089.a n = A017778 n

end A017778

/-!
# A017779: Binomial coefficients C(63,n).

The programs for A017779, the canonical program `A017779.P18354486094451341286` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017779 has offset 0).

The definition of A017779 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(63, n)` (program `A017779.P18354486094451341286`, by `A017779.P18354486094451341286.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017779.P18354486094451341286

`C(63, n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017779

/-- `C(63, n)` -/
def P18354486094451341286.Spec : Prop :=
  ∀ n, (P18354486094451341286.a n : ℤ) = A017779 n

theorem P18354486094451341286.correct : P18354486094451341286.Spec := by
  intro n
  simp only [A017779]

end A017779

/-! ## A017779.P7016398766631075910

`(64/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017779.P7016398766631075910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (64 / (n : ℚ) - 1) * a (n - 1)

end

end A017779.P7016398766631075910

namespace A017779

/-- `(64/n-1)*a(n-1)` -/
def P7016398766631075910.Spec : Prop :=
  ∀ n, P7016398766631075910.a n = (A017779 n : ℚ)

end A017779

/-! ## A017779.P13463140454229228186

`A017780(n)-a(n-1)` with `a(0)=1`
-/

namespace A017779.P13463140454229228186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017780 n - a (n - 1)

end

end A017779.P13463140454229228186

namespace A017779

/-- `A017780(n)-a(n-1)` -/
def P13463140454229228186.Spec : Prop :=
  ∀ n, P13463140454229228186.a n = A017779 n

end A017779

/-!
# A017780: Binomial coefficients C(64,n).

The programs for A017780, the canonical program `A017780.P12802421464599476262` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017780 has offset 0).

The definition of A017780 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(64, n)` (program `A017780.P12802421464599476262`, by `A017780.P12802421464599476262.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017780.P12802421464599476262

`C(64, n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017780

/-- `C(64, n)` -/
def P12802421464599476262.Spec : Prop :=
  ∀ n, (P12802421464599476262.a n : ℤ) = A017780 n

theorem P12802421464599476262.correct : P12802421464599476262.Spec := by
  intro n
  simp only [A017780]

end A017780

/-! ## A017780.P14564896709162976235

`(65/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017780.P14564896709162976235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (65 / (n : ℚ) - 1) * a (n - 1)

end

end A017780.P14564896709162976235

namespace A017780

/-- `(65/n-1)*a(n-1)` -/
def P14564896709162976235.Spec : Prop :=
  ∀ n, P14564896709162976235.a n = (A017780 n : ℚ)

end A017780

/-! ## A017780.P7449920146513348934

`A345135(n+64)`
-/

namespace A017780.P7449920146513348934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345135 (n + 64)

end

end A017780.P7449920146513348934

namespace A017780

/-- `A345135(n+64)` -/
def P7449920146513348934.Spec : Prop :=
  ∀ n, P7449920146513348934.a n = A017780 n

end A017780

/-! ## A017780.P1611130494801690705

`A017781(n)-a(n-1)` with `a(0)=1`
-/

namespace A017780.P1611130494801690705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017781 n - a (n - 1)

end

end A017780.P1611130494801690705

namespace A017780

/-- `A017781(n)-a(n-1)` -/
def P1611130494801690705.Spec : Prop :=
  ∀ n, P1611130494801690705.a n = A017780 n

end A017780

/-! ## A017780.P16566250400092402073

`A136501(eq[6, A002262(n)])`
-/

namespace A017780.P16566250400092402073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A017780.P16566250400092402073

namespace A017780

/-- `A136501(eq[6, A002262(n)])` -/
def P16566250400092402073.Spec : Prop :=
  ∀ n, P16566250400092402073.a n = A017780 n

end A017780

/-!
# A017781: Binomial coefficients C(65,n).

The programs for A017781, the canonical program `A017781.P12662897479069396194` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017781 has offset 0).

The definition of A017781 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(65, n)` (program `A017781.P12662897479069396194`, by `A017781.P12662897479069396194.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017781.P12662897479069396194

`C(65, n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017781

/-- `C(65, n)` -/
def P12662897479069396194.Spec : Prop :=
  ∀ n, (P12662897479069396194.a n : ℤ) = A017781 n

theorem P12662897479069396194.correct : P12662897479069396194.Spec := by
  intro n
  simp only [A017781]

end A017781

/-! ## A017781.P15085641804558592761

`(66/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017781.P15085641804558592761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (66 / (n : ℚ) - 1) * a (n - 1)

end

end A017781.P15085641804558592761

namespace A017781

/-- `(66/n-1)*a(n-1)` -/
def P15085641804558592761.Spec : Prop :=
  ∀ n, P15085641804558592761.a n = (A017781 n : ℚ)

end A017781

/-! ## A017781.P14336634561815519853

`A017782(n)-a(n-1)` with `a(0)=1`
-/

namespace A017781.P14336634561815519853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017782 n - a (n - 1)

end

end A017781.P14336634561815519853

namespace A017781

/-- `A017782(n)-a(n-1)` -/
def P14336634561815519853.Spec : Prop :=
  ∀ n, P14336634561815519853.a n = A017781 n

end A017781

/-!
# A017782: Binomial coefficients C(66,n).

The programs for A017782, the canonical program `A017782.P12017808024268510138` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017782 has offset 0).

The definition of A017782 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(66, n)` (program `A017782.P12017808024268510138`, by `A017782.P12017808024268510138.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017782.P12017808024268510138

`C(66, n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017782

/-- `C(66, n)` -/
def P12017808024268510138.Spec : Prop :=
  ∀ n, (P12017808024268510138.a n : ℤ) = A017782 n

theorem P12017808024268510138.correct : P12017808024268510138.Spec := by
  intro n
  simp only [A017782]

end A017782

/-! ## A017782.P11261814431591095082

`(67/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017782.P11261814431591095082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (67 / (n : ℚ) - 1) * a (n - 1)

end

end A017782.P11261814431591095082

namespace A017782

/-- `(67/n-1)*a(n-1)` -/
def P11261814431591095082.Spec : Prop :=
  ∀ n, P11261814431591095082.a n = (A017782 n : ℚ)

end A017782

/-! ## A017782.P5012907147073275222

`A017783(n)-a(n-1)` with `a(0)=1`
-/

namespace A017782.P5012907147073275222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017783 n - a (n - 1)

end

end A017782.P5012907147073275222

namespace A017782

/-- `A017783(n)-a(n-1)` -/
def P5012907147073275222.Spec : Prop :=
  ∀ n, P5012907147073275222.a n = A017782 n

end A017782

/-!
# A017783: Binomial coefficients C(67,n).

The programs for A017783, the canonical program `A017783.P6170367346702585504` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017783 has offset 0).

The definition of A017783 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(67, n)` (program `A017783.P6170367346702585504`, by `A017783.P6170367346702585504.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017783.P6170367346702585504

`C(67, n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017783

/-- `C(67, n)` -/
def P6170367346702585504.Spec : Prop :=
  ∀ n, (P6170367346702585504.a n : ℤ) = A017783 n

theorem P6170367346702585504.correct : P6170367346702585504.Spec := by
  intro n
  simp only [A017783]

end A017783

/-! ## A017783.P16148405942144641219

`(68/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017783.P16148405942144641219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (68 / (n : ℚ) - 1) * a (n - 1)

end

end A017783.P16148405942144641219

namespace A017783

/-- `(68/n-1)*a(n-1)` -/
def P16148405942144641219.Spec : Prop :=
  ∀ n, P16148405942144641219.a n = (A017783 n : ℚ)

end A017783

/-! ## A017783.P1013677371970306064

`A017784(n)-a(n-1)` with `a(0)=1`
-/

namespace A017783.P1013677371970306064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017784 n - a (n - 1)

end

end A017783.P1013677371970306064

namespace A017783

/-- `A017784(n)-a(n-1)` -/
def P1013677371970306064.Spec : Prop :=
  ∀ n, P1013677371970306064.a n = A017783 n

end A017783

/-!
# A017784: Binomial coefficients C(68,n).

The programs for A017784, the canonical program `A017784.P15095521963023134906` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017784 has offset 0).

The definition of A017784 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(68, n)` (program `A017784.P15095521963023134906`, by `A017784.P15095521963023134906.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017784.P15095521963023134906

`C(68, n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017784

/-- `C(68, n)` -/
def P15095521963023134906.Spec : Prop :=
  ∀ n, (P15095521963023134906.a n : ℤ) = A017784 n

theorem P15095521963023134906.correct : P15095521963023134906.Spec := by
  intro n
  simp only [A017784]

end A017784

/-! ## A017784.P9952133011243600147

`(69/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017784.P9952133011243600147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (69 / (n : ℚ) - 1) * a (n - 1)

end

end A017784.P9952133011243600147

namespace A017784

/-- `(69/n-1)*a(n-1)` -/
def P9952133011243600147.Spec : Prop :=
  ∀ n, P9952133011243600147.a n = (A017784 n : ℚ)

end A017784

/-! ## A017784.P6384028417947316798

`A017785(n)-a(n-1)` with `a(0)=1`
-/

namespace A017784.P6384028417947316798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017785 n - a (n - 1)

end

end A017784.P6384028417947316798

namespace A017784

/-- `A017785(n)-a(n-1)` -/
def P6384028417947316798.Spec : Prop :=
  ∀ n, P6384028417947316798.a n = A017784 n

end A017784

/-!
# A017785: Binomial coefficients C(69,n).

The programs for A017785, the canonical program `A017785.P11029509720794556207` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017785 has offset 0).

The definition of A017785 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(69, n)` (program `A017785.P11029509720794556207`, by `A017785.P11029509720794556207.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017785.P11029509720794556207

`C(69, n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017785

/-- `C(69, n)` -/
def P11029509720794556207.Spec : Prop :=
  ∀ n, (P11029509720794556207.a n : ℤ) = A017785 n

theorem P11029509720794556207.correct : P11029509720794556207.Spec := by
  intro n
  simp only [A017785]

end A017785

/-! ## A017785.P14059002475773352689

`(70/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017785.P14059002475773352689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (70 / (n : ℚ) - 1) * a (n - 1)

end

end A017785.P14059002475773352689

namespace A017785

/-- `(70/n-1)*a(n-1)` -/
def P14059002475773352689.Spec : Prop :=
  ∀ n, P14059002475773352689.a n = (A017785 n : ℚ)

end A017785

/-! ## A017785.P3603775272384960033

`A017786(n)-a(n-1)` with `a(0)=1`
-/

namespace A017785.P3603775272384960033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017786 n - a (n - 1)

end

end A017785.P3603775272384960033

namespace A017785

/-- `A017786(n)-a(n-1)` -/
def P3603775272384960033.Spec : Prop :=
  ∀ n, P3603775272384960033.a n = A017785 n

end A017785

/-! ## A017785.P8718279920950500420

`A017786(n+1)-A017784(n+1)-A017784(n)`
-/

namespace A017785.P8718279920950500420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017786 (n + 1) - A017784 (n + 1) - A017784 n

end

end A017785.P8718279920950500420

namespace A017785

/-- `A017786(n+1)-A017784(n+1)-A017784(n)` -/
def P8718279920950500420.Spec : Prop :=
  ∀ n, P8718279920950500420.a n = A017785 n

end A017785

/-!
# A017786: Binomial coefficients C(70,n).

The programs for A017786, the canonical program `A017786.P17701950594833448658` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017786 has offset 0).

The definition of A017786 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(70, n)` (program `A017786.P17701950594833448658`, by `A017786.P17701950594833448658.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017786.P17701950594833448658

`C(70, n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017786

/-- `C(70, n)` -/
def P17701950594833448658.Spec : Prop :=
  ∀ n, (P17701950594833448658.a n : ℤ) = A017786 n

theorem P17701950594833448658.correct : P17701950594833448658.Spec := by
  intro n
  simp only [A017786]

end A017786

/-! ## A017786.P9137832044851855294

`(71/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017786.P9137832044851855294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (71 / (n : ℚ) - 1) * a (n - 1)

end

end A017786.P9137832044851855294

namespace A017786

/-- `(71/n-1)*a(n-1)` -/
def P9137832044851855294.Spec : Prop :=
  ∀ n, P9137832044851855294.a n = (A017786 n : ℚ)

end A017786

/-! ## A017786.P7319157665089771258

`A017787(n)-a(n-1)` with `a(0)=1`
-/

namespace A017786.P7319157665089771258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017787 n - a (n - 1)

end

end A017786.P7319157665089771258

namespace A017786

/-- `A017787(n)-a(n-1)` -/
def P7319157665089771258.Spec : Prop :=
  ∀ n, P7319157665089771258.a n = A017786 n

end A017786

/-!
# A017787: Binomial coefficients C(71,n).

The programs for A017787, the canonical program `A017787.P10301516785868451293` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017787 has offset 0).

The definition of A017787 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(71, n)` (program `A017787.P10301516785868451293`, by `A017787.P10301516785868451293.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017787.P10301516785868451293

`C(71, n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017787

/-- `C(71, n)` -/
def P10301516785868451293.Spec : Prop :=
  ∀ n, (P10301516785868451293.a n : ℤ) = A017787 n

theorem P10301516785868451293.correct : P10301516785868451293.Spec := by
  intro n
  simp only [A017787]

end A017787

/-! ## A017787.P13527313872930382811

`(72/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017787.P13527313872930382811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (72 / (n : ℚ) - 1) * a (n - 1)

end

end A017787.P13527313872930382811

namespace A017787

/-- `(72/n-1)*a(n-1)` -/
def P13527313872930382811.Spec : Prop :=
  ∀ n, P13527313872930382811.a n = (A017787 n : ℚ)

end A017787

/-! ## A017787.P1168272893315750150

`A017788(n)-a(n-1)` with `a(0)=1`
-/

namespace A017787.P1168272893315750150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017788 n - a (n - 1)

end

end A017787.P1168272893315750150

namespace A017787

/-- `A017788(n)-a(n-1)` -/
def P1168272893315750150.Spec : Prop :=
  ∀ n, P1168272893315750150.a n = A017787 n

end A017787

/-!
# A017788: Binomial coefficients C(72,n).

The programs for A017788, the canonical program `A017788.P9697233496427914286` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017788 has offset 0).

The definition of A017788 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(72, n)` (program `A017788.P9697233496427914286`, by `A017788.P9697233496427914286.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017788.P9697233496427914286

`C(72, n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017788

/-- `C(72, n)` -/
def P9697233496427914286.Spec : Prop :=
  ∀ n, (P9697233496427914286.a n : ℤ) = A017788 n

theorem P9697233496427914286.correct : P9697233496427914286.Spec := by
  intro n
  simp only [A017788]

end A017788

/-! ## A017788.P9838155875352652187

`(73/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017788.P9838155875352652187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (73 / (n : ℚ) - 1) * a (n - 1)

end

end A017788.P9838155875352652187

namespace A017788

/-- `(73/n-1)*a(n-1)` -/
def P9838155875352652187.Spec : Prop :=
  ∀ n, P9838155875352652187.a n = (A017788 n : ℚ)

end A017788

/-! ## A017788.P10427843353134038051

`A017789(n)-a(n-1)` with `a(0)=1`
-/

namespace A017788.P10427843353134038051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017789 n - a (n - 1)

end

end A017788.P10427843353134038051

namespace A017788

/-- `A017789(n)-a(n-1)` -/
def P10427843353134038051.Spec : Prop :=
  ∀ n, P10427843353134038051.a n = A017788 n

end A017788

/-! ## A017788.P8360609489722667841

`A116089(eq[24, A002262(n)])`
-/

namespace A017788.P8360609489722667841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116089 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A017788.P8360609489722667841

namespace A017788

/-- `A116089(eq[24, A002262(n)])` -/
def P8360609489722667841.Spec : Prop :=
  ∀ n, P8360609489722667841.a n = A017788 n

end A017788

/-!
# A017789: Binomial coefficients C(73,n).

The programs for A017789, the canonical program `A017789.P3548350436695320950` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017789 has offset 0).

The definition of A017789 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(73, n)` (program `A017789.P3548350436695320950`, by `A017789.P3548350436695320950.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017789.P3548350436695320950

`C(73, n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017789

/-- `C(73, n)` -/
def P3548350436695320950.Spec : Prop :=
  ∀ n, (P3548350436695320950.a n : ℤ) = A017789 n

theorem P3548350436695320950.correct : P3548350436695320950.Spec := by
  intro n
  simp only [A017789]

end A017789

/-! ## A017789.P16887852503218602450

`(74/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017789.P16887852503218602450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (74 / (n : ℚ) - 1) * a (n - 1)

end

end A017789.P16887852503218602450

namespace A017789

/-- `(74/n-1)*a(n-1)` -/
def P16887852503218602450.Spec : Prop :=
  ∀ n, P16887852503218602450.a n = (A017789 n : ℚ)

end A017789

/-! ## A017789.P129066231419914870

`A017790(n)-a(n-1)` with `a(0)=1`
-/

namespace A017789.P129066231419914870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017790 n - a (n - 1)

end

end A017789.P129066231419914870

namespace A017789

/-- `A017790(n)-a(n-1)` -/
def P129066231419914870.Spec : Prop :=
  ∀ n, P129066231419914870.a n = A017789 n

end A017789

/-!
# A017790: Binomial coefficients C(74,n).

The programs for A017790, the canonical program `A017790.P9430690807979640225` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017790 has offset 0).

The definition of A017790 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(74, n)` (program `A017790.P9430690807979640225`, by `A017790.P9430690807979640225.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017790.P9430690807979640225

`C(74, n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017790

/-- `C(74, n)` -/
def P9430690807979640225.Spec : Prop :=
  ∀ n, (P9430690807979640225.a n : ℤ) = A017790 n

theorem P9430690807979640225.correct : P9430690807979640225.Spec := by
  intro n
  simp only [A017790]

end A017790

/-! ## A017790.P14794580327322226785

`(75/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017790.P14794580327322226785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (75 / (n : ℚ) - 1) * a (n - 1)

end

end A017790.P14794580327322226785

namespace A017790

/-- `(75/n-1)*a(n-1)` -/
def P14794580327322226785.Spec : Prop :=
  ∀ n, P14794580327322226785.a n = (A017790 n : ℚ)

end A017790

/-! ## A017790.P5863978006731270667

`A017791(n)-a(n-1)` with `a(0)=1`
-/

namespace A017790.P5863978006731270667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017791 n - a (n - 1)

end

end A017790.P5863978006731270667

namespace A017790

/-- `A017791(n)-a(n-1)` -/
def P5863978006731270667.Spec : Prop :=
  ∀ n, P5863978006731270667.a n = A017790 n

end A017790

/-! ## A017790.P18260705449839716119

`∏[(75/n-1)/a(A306024(A000217(n+11))-1)]` with `a(0)=1`
-/

namespace A017790.P18260705449839716119
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (75 / (n : ℚ) - 1) / f1 (A306024 (A000217 (n + 11)).toNat - 1).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A017790.P18260705449839716119

namespace A017790

/-- `∏[(75/n-1)/a(A306024(A000217(n+11))-1)]` -/
def P18260705449839716119.Spec : Prop :=
  ∀ n, P18260705449839716119.a n = (A017790 n : ℚ)

end A017790

/-! ## A017790.P5200376245712420810

`∏[(75/n-1)/a(A100073(A007530(n+1))-1)]` with `a(0)=1`
-/

namespace A017790.P5200376245712420810
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (75 / (n : ℚ) - 1) / f1 (A100073 (A007530 (n + 1)).toNat - 1).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A017790.P5200376245712420810

namespace A017790

/-- `∏[(75/n-1)/a(A100073(A007530(n+1))-1)]` -/
def P5200376245712420810.Spec : Prop :=
  ∀ n, P5200376245712420810.a n = (A017790 n : ℚ)

end A017790

/-!
# A017791: Binomial coefficients C(75,n).

The programs for A017791, the canonical program `A017791.P61262627564578955` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017791 has offset 0).

The definition of A017791 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(75, n)` (program `A017791.P61262627564578955`, by `A017791.P61262627564578955.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017791.P61262627564578955

`C(75, n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017791

/-- `C(75, n)` -/
def P61262627564578955.Spec : Prop :=
  ∀ n, (P61262627564578955.a n : ℤ) = A017791 n

theorem P61262627564578955.correct : P61262627564578955.Spec := by
  intro n
  simp only [A017791]

end A017791

/-! ## A017791.P4461015698252169662

`(76/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017791.P4461015698252169662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (76 / (n : ℚ) - 1) * a (n - 1)

end

end A017791.P4461015698252169662

namespace A017791

/-- `(76/n-1)*a(n-1)` -/
def P4461015698252169662.Spec : Prop :=
  ∀ n, P4461015698252169662.a n = (A017791 n : ℚ)

end A017791

/-! ## A017791.P8711408326711777025

`A017792(n)-a(n-1)` with `a(0)=1`
-/

namespace A017791.P8711408326711777025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017792 n - a (n - 1)

end

end A017791.P8711408326711777025

namespace A017791

/-- `A017792(n)-a(n-1)` -/
def P8711408326711777025.Spec : Prop :=
  ∀ n, P8711408326711777025.a n = A017791 n

end A017791

/-!
# A017792: Binomial coefficients C(76,n).

The programs for A017792, the canonical program `A017792.P3218955352025917617` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017792 has offset 0).

The definition of A017792 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(76, n)` (program `A017792.P3218955352025917617`, by `A017792.P3218955352025917617.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017792.P3218955352025917617

`C(76, n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017792

/-- `C(76, n)` -/
def P3218955352025917617.Spec : Prop :=
  ∀ n, (P3218955352025917617.a n : ℤ) = A017792 n

theorem P3218955352025917617.correct : P3218955352025917617.Spec := by
  intro n
  simp only [A017792]

end A017792

/-! ## A017792.P12344155219956469317

`(77/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017792.P12344155219956469317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (77 / (n : ℚ) - 1) * a (n - 1)

end

end A017792.P12344155219956469317

namespace A017792

/-- `(77/n-1)*a(n-1)` -/
def P12344155219956469317.Spec : Prop :=
  ∀ n, P12344155219956469317.a n = (A017792 n : ℚ)

end A017792

/-! ## A017792.P17999499237833563540

`A291057(n+43)`
-/

namespace A017792.P17999499237833563540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291057 (n + 43)

end

end A017792.P17999499237833563540

namespace A017792

/-- `A291057(n+43)` -/
def P17999499237833563540.Spec : Prop :=
  ∀ n, P17999499237833563540.a n = A017792 n

end A017792

/-! ## A017792.P12612371330719006060

`A017793(n)-a(n-1)` with `a(0)=1`
-/

namespace A017792.P12612371330719006060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017793 n - a (n - 1)

end

end A017792.P12612371330719006060

namespace A017792

/-- `A017793(n)-a(n-1)` -/
def P12612371330719006060.Spec : Prop :=
  ∀ n, P12612371330719006060.a n = A017792 n

end A017792

/-!
# A017793: Binomial coefficients C(77, n).

The programs for A017793, the canonical program `A017793.P15093264781796627998` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017793 has offset 0).

The definition of A017793 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(77, n)` (program `A017793.P15093264781796627998`, by `A017793.P15093264781796627998.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017793.P15093264781796627998

`C(77, n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017793

/-- `C(77, n)` -/
def P15093264781796627998.Spec : Prop :=
  ∀ n, (P15093264781796627998.a n : ℤ) = A017793 n

theorem P15093264781796627998.correct : P15093264781796627998.Spec := by
  intro n
  simp only [A017793]

end A017793

/-! ## A017793.P16568167456103142483

`(78/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017793.P16568167456103142483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (78 / (n : ℚ) - 1) * a (n - 1)

end

end A017793.P16568167456103142483

namespace A017793

/-- `(78/n-1)*a(n-1)` -/
def P16568167456103142483.Spec : Prop :=
  ∀ n, P16568167456103142483.a n = (A017793 n : ℚ)

end A017793

/-! ## A017793.P961244303614723356

`A017794(n)-a(n-1)` with `a(0)=1`
-/

namespace A017793.P961244303614723356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017794 n - a (n - 1)

end

end A017793.P961244303614723356

namespace A017793

/-- `A017794(n)-a(n-1)` -/
def P961244303614723356.Spec : Prop :=
  ∀ n, P961244303614723356.a n = A017793 n

end A017793

/-!
# A017794: Binomial coefficients C(78,n).

The programs for A017794, the canonical program `A017794.P4385481901137767581` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017794 has offset 0).

The definition of A017794 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(78, n)` (program `A017794.P4385481901137767581`, by `A017794.P4385481901137767581.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017794.P4385481901137767581

`C(78, n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017794

/-- `C(78, n)` -/
def P4385481901137767581.Spec : Prop :=
  ∀ n, (P4385481901137767581.a n : ℤ) = A017794 n

theorem P4385481901137767581.correct : P4385481901137767581.Spec := by
  intro n
  simp only [A017794]

end A017794

/-! ## A017794.P13412899101681429499

`(79/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017794.P13412899101681429499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (79 / (n : ℚ) - 1) * a (n - 1)

end

end A017794.P13412899101681429499

namespace A017794

/-- `(79/n-1)*a(n-1)` -/
def P13412899101681429499.Spec : Prop :=
  ∀ n, P13412899101681429499.a n = (A017794 n : ℚ)

end A017794

/-! ## A017794.P6183009756101713987

`A017795(n)-a(n-1)` with `a(0)=1`
-/

namespace A017794.P6183009756101713987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017795 n - a (n - 1)

end

end A017794.P6183009756101713987

namespace A017794

/-- `A017795(n)-a(n-1)` -/
def P6183009756101713987.Spec : Prop :=
  ∀ n, P6183009756101713987.a n = A017794 n

end A017794

/-! ## A017794.P8665097595989539082

`abs(∑[∑[(1-2*n%2)*A017796(n)]])`
-/

namespace A017794.P8665097595989539082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((2 * (n % 2) : ℕ) : ℤ)) * A017796 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A017794.P8665097595989539082

namespace A017794

/-- `abs(∑[∑[(1-2*n%2)*A017796(n)]])` -/
def P8665097595989539082.Spec : Prop :=
  ∀ n, P8665097595989539082.a n = A017794 n

end A017794

/-! ## A017794.P8803791607911784096

`∑[A017795(n)*A033999(n)]*A033999(n)`
-/

namespace A017794.P8803791607911784096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017795 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A017794.P8803791607911784096

namespace A017794

/-- `∑[A017795(n)*A033999(n)]*A033999(n)` -/
def P8803791607911784096.Spec : Prop :=
  ∀ n, P8803791607911784096.a n = A017794 n

end A017794

/-!
# A017795: Binomial coefficients C(79,n).

The programs for A017795, the canonical program `A017795.P9768346869208385729` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017795 has offset 0).

The definition of A017795 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(79, n)` (program `A017795.P9768346869208385729`, by `A017795.P9768346869208385729.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017795.P9768346869208385729

`C(79, n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017795

/-- `C(79, n)` -/
def P9768346869208385729.Spec : Prop :=
  ∀ n, (P9768346869208385729.a n : ℤ) = A017795 n

theorem P9768346869208385729.correct : P9768346869208385729.Spec := by
  intro n
  simp only [A017795]

end A017795

/-! ## A017795.P12849973902915664129

`(80/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017795.P12849973902915664129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (80 / (n : ℚ) - 1) * a (n - 1)

end

end A017795.P12849973902915664129

namespace A017795

/-- `(80/n-1)*a(n-1)` -/
def P12849973902915664129.Spec : Prop :=
  ∀ n, P12849973902915664129.a n = (A017795 n : ℚ)

end A017795

/-! ## A017795.P9266169986327098500

`A017796(n)-a(n-1)` with `a(0)=1`
-/

namespace A017795.P9266169986327098500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017796 n - a (n - 1)

end

end A017795.P9266169986327098500

namespace A017795

/-- `A017796(n)-a(n-1)` -/
def P9266169986327098500.Spec : Prop :=
  ∀ n, P9266169986327098500.a n = A017795 n

end A017795

/-!
# A017796: Binomial coefficients C(80,n).

The programs for A017796, the canonical program `A017796.P3397887812961617373` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017796 has offset 0).

The definition of A017796 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(80, n)` (program `A017796.P3397887812961617373`, by `A017796.P3397887812961617373.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017796.P3397887812961617373

`C(80, n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017796

/-- `C(80, n)` -/
def P3397887812961617373.Spec : Prop :=
  ∀ n, (P3397887812961617373.a n : ℤ) = A017796 n

theorem P3397887812961617373.correct : P3397887812961617373.Spec := by
  intro n
  simp only [A017796]

end A017796

/-! ## A017796.P47934323868487878

`(81/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017796.P47934323868487878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (81 / (n : ℚ) - 1) * a (n - 1)

end

end A017796.P47934323868487878

namespace A017796

/-- `(81/n-1)*a(n-1)` -/
def P47934323868487878.Spec : Prop :=
  ∀ n, P47934323868487878.a n = (A017796 n : ℚ)

end A017796

/-! ## A017796.P10339185528777216503

`A017797(n)-a(n-1)` with `a(0)=1`
-/

namespace A017796.P10339185528777216503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017797 n - a (n - 1)

end

end A017796.P10339185528777216503

namespace A017796

/-- `A017797(n)-a(n-1)` -/
def P10339185528777216503.Spec : Prop :=
  ∀ n, P10339185528777216503.a n = A017796 n

end A017796

/-!
# A017797: Binomial coefficients C(81,n).

The programs for A017797, the canonical program `A017797.P16395931957826566178` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017797 has offset 0).

The definition of A017797 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(81, n)` (program `A017797.P16395931957826566178`, by `A017797.P16395931957826566178.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017797.P16395931957826566178

`C(81, n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017797

/-- `C(81, n)` -/
def P16395931957826566178.Spec : Prop :=
  ∀ n, (P16395931957826566178.a n : ℤ) = A017797 n

theorem P16395931957826566178.correct : P16395931957826566178.Spec := by
  intro n
  simp only [A017797]

end A017797

/-! ## A017797.P3007019537588623449

`(82/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017797.P3007019537588623449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (82 / (n : ℚ) - 1) * a (n - 1)

end

end A017797.P3007019537588623449

namespace A017797

/-- `(82/n-1)*a(n-1)` -/
def P3007019537588623449.Spec : Prop :=
  ∀ n, P3007019537588623449.a n = (A017797 n : ℚ)

end A017797

/-! ## A017797.P3861077201478181173

`A017798(n)-a(n-1)` with `a(0)=1`
-/

namespace A017797.P3861077201478181173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017798 n - a (n - 1)

end

end A017797.P3861077201478181173

namespace A017797

/-- `A017798(n)-a(n-1)` -/
def P3861077201478181173.Spec : Prop :=
  ∀ n, P3861077201478181173.a n = A017797 n

end A017797

/-!
# A017798: Binomial coefficients C(82,n).

The programs for A017798, the canonical program `A017798.P15926533653345839947` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017798 has offset 0).

The definition of A017798 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(82, n)` (program `A017798.P15926533653345839947`, by `A017798.P15926533653345839947.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017798.P15926533653345839947

`C(82, n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017798

/-- `C(82, n)` -/
def P15926533653345839947.Spec : Prop :=
  ∀ n, (P15926533653345839947.a n : ℤ) = A017798 n

theorem P15926533653345839947.correct : P15926533653345839947.Spec := by
  intro n
  simp only [A017798]

end A017798

/-! ## A017798.P10534237677181904580

`(83/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017798.P10534237677181904580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (83 / (n : ℚ) - 1) * a (n - 1)

end

end A017798.P10534237677181904580

namespace A017798

/-- `(83/n-1)*a(n-1)` -/
def P10534237677181904580.Spec : Prop :=
  ∀ n, P10534237677181904580.a n = (A017798 n : ℚ)

end A017798

/-! ## A017798.P17499273168285140736

`A017799(n)-a(n-1)` with `a(0)=1`
-/

namespace A017798.P17499273168285140736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017799 n - a (n - 1)

end

end A017798.P17499273168285140736

namespace A017798

/-- `A017799(n)-a(n-1)` -/
def P17499273168285140736.Spec : Prop :=
  ∀ n, P17499273168285140736.a n = A017798 n

end A017798

/-! ## A017798.P2840077757233183720

`A017797((a(n-1)-1+n)%n)+A017797(n)` with `a(0)=1`
-/

namespace A017798.P2840077757233183720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017797 (Int.tmod (a (n - 1) - 1 + (n : ℤ)) (n : ℤ)).toNat + A017797 n

end

end A017798.P2840077757233183720

namespace A017798

/-- `A017797((a(n-1)-1+n)%n)+A017797(n)` -/
def P2840077757233183720.Spec : Prop :=
  ∀ n, P2840077757233183720.a n = A017798 n

end A017798

/-!
# A017799: Binomial coefficients C(83,n).

The programs for A017799, the canonical program `A017799.P13591565946344417310` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017799 has offset 0).

The definition of A017799 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(83, n)` (program `A017799.P13591565946344417310`, by `A017799.P13591565946344417310.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017799.P13591565946344417310

`C(83, n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017799

/-- `C(83, n)` -/
def P13591565946344417310.Spec : Prop :=
  ∀ n, (P13591565946344417310.a n : ℤ) = A017799 n

theorem P13591565946344417310.correct : P13591565946344417310.Spec := by
  intro n
  simp only [A017799]

end A017799

/-! ## A017799.P17803400234476928674

`(84/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017799.P17803400234476928674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (84 / (n : ℚ) - 1) * a (n - 1)

end

end A017799.P17803400234476928674

namespace A017799

/-- `(84/n-1)*a(n-1)` -/
def P17803400234476928674.Spec : Prop :=
  ∀ n, P17803400234476928674.a n = (A017799 n : ℚ)

end A017799

/-! ## A017799.P11809954295919881852

`A017800(n)-a(n-1)` with `a(0)=1`
-/

namespace A017799.P11809954295919881852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017800 n - a (n - 1)

end

end A017799.P11809954295919881852

namespace A017799

/-- `A017800(n)-a(n-1)` -/
def P11809954295919881852.Spec : Prop :=
  ∀ n, P11809954295919881852.a n = A017799 n

end A017799

