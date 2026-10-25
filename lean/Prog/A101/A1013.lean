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
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A101300: Second-smallest prime larger than n.

The programs for A101300, the canonical program `A101300.P7599830743545042440` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101300 has offset 0).

The definition of A101300 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A101300.P7599830743545042440

`A151800(A151800(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A101300

/-- `A151800(A151800(n))` -/
def P7599830743545042440.Spec : Prop :=
  ∀ n, P7599830743545042440.a n = A101300 n

theorem P7599830743545042440.correct : P7599830743545042440.Spec := by
  intro n
  simp only [A101300]

end A101300

/-! ## A101300.P2530860153623183318

`A105161(n)+n`
-/

namespace A101300.P2530860153623183318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105161 n + (n : ℤ)

end

end A101300.P2530860153623183318

namespace A101300

/-- `A105161(n)+n` -/
def P2530860153623183318.Spec : Prop :=
  ∀ n, P2530860153623183318.a n = A101300 n

end A101300

/-! ## A101300.P11264044942674964955

`A067792(Δ[A117842(n)])`
-/

namespace A101300.P11264044942674964955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067792 (f1 (n + 1) - f1 n).toNat

end

end A101300.P11264044942674964955

namespace A101300

/-- `A067792(Δ[A117842(n)])` -/
def P11264044942674964955.Spec : Prop :=
  ∀ n, P11264044942674964955.a n = A101300 n

end A101300

/-! ## A101300.P17706668817514252325

`A067792(A007918(n+1))`
-/

namespace A101300.P17706668817514252325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067792 (A007918 (n + 1)).toNat

end

end A101300.P17706668817514252325

namespace A101300

/-- `A067792(A007918(n+1))` -/
def P17706668817514252325.Spec : Prop :=
  ∀ n, P17706668817514252325.a n = A101300 n

end A101300

/-! ## A101300.P10345330758772957677

`A065091(A230980(n)+1)`
-/

namespace A101300.P10345330758772957677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A230980 n + 1).toNat

end

end A101300.P10345330758772957677

namespace A101300

/-- `A065091(A230980(n)+1)` -/
def P10345330758772957677.Spec : Prop :=
  ∀ n, P10345330758772957677.a n = A101300 n

end A101300

/-! ## A101300.P8385142712219021766

`A000040(A230980(n)+2)`
-/

namespace A101300.P8385142712219021766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A230980 n + 2).toNat

end

end A101300.P8385142712219021766

namespace A101300

/-- `A000040(A230980(n)+2)` -/
def P8385142712219021766.Spec : Prop :=
  ∀ n, P8385142712219021766.a n = A101300 n

end A101300

/-! ## A101300.P6215359873968308973

`A067792(A013632(n)+n)`
-/

namespace A101300.P6215359873968308973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067792 (A013632 n + (n : ℤ)).toNat

end

end A101300.P6215359873968308973

namespace A101300

/-- `A067792(A013632(n)+n)` -/
def P6215359873968308973.Spec : Prop :=
  ∀ n, P6215359873968308973.a n = A101300 n

end A101300

/-! ## A101300.P2573405021441846469

`A006093(A230980(n)+2)+1`
-/

namespace A101300.P2573405021441846469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A230980 n + 2).toNat + 1

end

end A101300.P2573405021441846469

namespace A101300

/-- `A006093(A230980(n)+2)+1` -/
def P2573405021441846469.Spec : Prop :=
  ∀ n, P2573405021441846469.a n = A101300 n

end A101300

/-! ## A101300.P361078254939124524

`A082500(2*(A230980(n)+2))`
-/

namespace A101300.P361078254939124524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * (A230980 n + 2)).toNat

end

end A101300.P361078254939124524

namespace A101300

/-- `A082500(2*(A230980(n)+2))` -/
def P361078254939124524.Spec : Prop :=
  ∀ n, P361078254939124524.a n = A101300 n

end A101300

/-! ## A101300.P7243714903602501919

`A065091(A064427(n+1)-n)`
-/

namespace A101300.P7243714903602501919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A064427 (n + 1) - (n : ℤ)).toNat

end

end A101300.P7243714903602501919

namespace A101300

/-- `A065091(A064427(n+1)-n)` -/
def P7243714903602501919.Spec : Prop :=
  ∀ n, P7243714903602501919.a n = A101300 n

end A101300

/-! ## A101300.P9587228075742436682

`A065091(A095117(n)+1-n)`
-/

namespace A101300.P9587228075742436682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A095117 n + (1 - (n : ℤ))).toNat

end

end A101300.P9587228075742436682

namespace A101300

/-- `A065091(A095117(n)+1-n)` -/
def P9587228075742436682.Spec : Prop :=
  ∀ n, P9587228075742436682.a n = A101300 n

end A101300

/-! ## A101300.P7655490599990199229

`A000040(A095117(n)+2-n)`
-/

namespace A101300.P7655490599990199229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A095117 n + (2 - (n : ℤ))).toNat

end

end A101300.P7655490599990199229

namespace A101300

/-- `A000040(A095117(n)+2-n)` -/
def P7655490599990199229.Spec : Prop :=
  ∀ n, P7655490599990199229.a n = A101300 n

end A101300

/-! ## A101300.P2048083390268399435

`A066169(A013632(n)+n)`
-/

namespace A101300.P2048083390268399435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066169 (A013632 n + (n : ℤ)).toNat

end

end A101300.P2048083390268399435

namespace A101300

/-- `A066169(A013632(n)+n)` -/
def P2048083390268399435.Spec : Prop :=
  ∀ n, P2048083390268399435.a n = A101300 n

end A101300

/-! ## A101300.P3044865187006630632

`A007918(A007918(n+1)+1)`
-/

namespace A101300.P3044865187006630632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A007918 (n + 1) + 1).toNat

end

end A101300.P3044865187006630632

namespace A101300

/-- `A007918(A007918(n+1)+1)` -/
def P3044865187006630632.Spec : Prop :=
  ∀ n, P3044865187006630632.a n = A101300 n

end A101300

/-! ## A101300.P16483987310775635353

`A045966(A136548(n+1))`
-/

namespace A101300.P16483987310775635353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045966 (A136548 (n + 1)).toNat

end

end A101300.P16483987310775635353

namespace A101300

/-- `A045966(A136548(n+1))` -/
def P16483987310775635353.Spec : Prop :=
  ∀ n, P16483987310775635353.a n = A101300 n

end A101300

/-! ## A101300.P14968644251809467763

`A084754(A152948(n+1))`
-/

namespace A101300.P14968644251809467763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084754 (A152948 (n + 1)).toNat

end

end A101300.P14968644251809467763

namespace A101300

/-- `A084754(A152948(n+1))` -/
def P14968644251809467763.Spec : Prop :=
  ∀ n, P14968644251809467763.a n = A101300 n

end A101300

/-!
# A101301: The sum of the first n primes, minus n.

The programs for A101301, the canonical program `A101301.P12618163721935666644` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101301 has offset 1).

The definition of A101301 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A101301.P12618163721935666644

`A007504(n+1)-(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A101301

/-- `A007504(n+1)-(n+1)` -/
def P12618163721935666644.Spec : Prop :=
  ∀ n, P12618163721935666644.a n = A101301 (n + 1)

theorem P12618163721935666644.correct : P12618163721935666644.Spec := by
  intro n
  simp only [A101301, Nat.add_sub_cancel]

end A101301

/-! ## A101301.P4307616430520070075

`∑[∑[A075526(n)]]`
-/

namespace A101301.P4307616430520070075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101301.P4307616430520070075

namespace A101301

/-- `∑[∑[A075526(n)]]` -/
def P4307616430520070075.Spec : Prop :=
  ∀ n, P4307616430520070075.a n = A101301 (n + 1)

end A101301

/-! ## A101301.P12325208145575005874

`∑[A006093(n+1)]`
-/

namespace A101301.P12325208145575005874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101301.P12325208145575005874

namespace A101301

/-- `∑[A006093(n+1)]` -/
def P12325208145575005874.Spec : Prop :=
  ∀ n, P12325208145575005874.a n = A101301 (n + 1)

end A101301

/-! ## A101301.P2064807470482843665

`2*A005521(n)-1`
-/

namespace A101301.P2064807470482843665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005521 n - 1

end

end A101301.P2064807470482843665

namespace A101301

/-- `2*A005521(n)-1` -/
def P2064807470482843665.Spec : Prop :=
  ∀ n, P2064807470482843665.a n = A101301 (n + 1)

end A101301

/-! ## A101301.P2863229439952696286

`A237589(n+1)-n`
-/

namespace A101301.P2863229439952696286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (n + 1) - (n : ℤ)

end

end A101301.P2863229439952696286

namespace A101301

/-- `A237589(n+1)-n` -/
def P2863229439952696286.Spec : Prop :=
  ∀ n, P2863229439952696286.a n = A101301 (n + 1)

theorem P2863229439952696286.correct : P2863229439952696286.Spec := by
  intro n
  simp only [A101301, Nat.add_sub_cancel, A101301.P2863229439952696286.a, A101301.P12618163721935666644.a, A007504, A007504.P16529107901788736493.f1, A007504.P16529107901788736493.a, A237589, A237589.P15064465826932885110.a, A014284, A014284.P16560659510973334811.a, A182986, A182986.P2625431067462217415.a, A054541, A054541.P347795157194570387.a, A046930, A046930.P1162450832993365803.f1, A046930.P1162450832993365803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A101301

/-! ## A101301.P5135497932691727088

`∑[sqrt(A005722(n+1))]`
-/

namespace A101301.P5135497932691727088
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A005722 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101301.P5135497932691727088

namespace A101301

/-- `∑[sqrt(A005722(n+1))]` -/
def P5135497932691727088.Spec : Prop :=
  ∀ n, P5135497932691727088.a n = (A101301 (n + 1) : ℝ)

end A101301

/-! ## A101301.P16229558312583691570

`∑[Δ[A007504(n)]-1]`
-/

namespace A101301.P16229558312583691570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101301.P16229558312583691570

namespace A101301

/-- `∑[Δ[A007504(n)]-1]` -/
def P16229558312583691570.Spec : Prop :=
  ∀ n, P16229558312583691570.a n = A101301 (n + 1)

end A101301

/-! ## A101301.P1606486677247084081

`∑[p?[A259153(n)]-1]`
-/

namespace A101301.P1606486677247084081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101301.P1606486677247084081

namespace A101301

/-- `∑[p?[A259153(n)]-1]` -/
def P1606486677247084081.Spec : Prop :=
  ∀ n, P1606486677247084081.a n = A101301 (n + 1)

end A101301

/-! ## A101301.P10606971538617995704

`∑[A040976(n+1)+1]`
-/

namespace A101301.P10606971538617995704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101301.P10606971538617995704

namespace A101301

/-- `∑[A040976(n+1)+1]` -/
def P10606971538617995704.Spec : Prop :=
  ∀ n, P10606971538617995704.a n = A101301 (n + 1)

end A101301

/-! ## A101301.P10143011636555922137

`∑[A000040(n+1)-1]`
-/

namespace A101301.P10143011636555922137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101301.P10143011636555922137

namespace A101301

/-- `∑[A000040(n+1)-1]` -/
def P10143011636555922137.Spec : Prop :=
  ∀ n, P10143011636555922137.a n = A101301 (n + 1)

end A101301

/-! ## A101301.P17341820249371504663

`∑[A086801(n+1)+2]`
-/

namespace A101301.P17341820249371504663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101301.P17341820249371504663

namespace A101301

/-- `∑[A086801(n+1)+2]` -/
def P17341820249371504663.Spec : Prop :=
  ∀ n, P17341820249371504663.a n = A101301 (n + 1)

end A101301

/-! ## A101301.P2984901175589416550

`∑[A008864(n+1)-2]`
-/

namespace A101301.P2984901175589416550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101301.P2984901175589416550

namespace A101301

/-- `∑[A008864(n+1)-2]` -/
def P2984901175589416550.Spec : Prop :=
  ∀ n, P2984901175589416550.a n = A101301 (n + 1)

end A101301

/-! ## A101301.P1251343857940322429

`∑[A028815(n+1)-2]`
-/

namespace A101301.P1251343857940322429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101301.P1251343857940322429

namespace A101301

/-- `∑[A028815(n+1)-2]` -/
def P1251343857940322429.Spec : Prop :=
  ∀ n, P1251343857940322429.a n = A101301 (n + 1)

end A101301

/-! ## A101301.P11205078345467276360

`∑[A039915(n+1)]-2`
-/

namespace A101301.P11205078345467276360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A101301.P11205078345467276360

namespace A101301

/-- `∑[A039915(n+1)]-2` -/
def P11205078345467276360.Spec : Prop :=
  ∀ n, P11205078345467276360.a n = A101301 (n + 1)

end A101301

/-! ## A101301.P18275010974034206137

`∑[A052147(n+1)-3]`
-/

namespace A101301.P18275010974034206137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101301.P18275010974034206137

namespace A101301

/-- `∑[A052147(n+1)-3]` -/
def P18275010974034206137.Spec : Prop :=
  ∀ n, P18275010974034206137.a n = A101301 (n + 1)

end A101301

/-! ## A101301.P12157685886943106894

`∑[A037168(n+1)/2]`
-/

namespace A101301.P12157685886943106894
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037168 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101301.P12157685886943106894

namespace A101301

/-- `∑[A037168(n+1)/2]` -/
def P12157685886943106894.Spec : Prop :=
  ∀ n, P12157685886943106894.a n = (A101301 (n + 1) : ℚ)

end A101301

/-! ## A101301.P14147775988001959660

`∑[A113935(n+1)-4]`
-/

namespace A101301.P14147775988001959660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101301.P14147775988001959660

namespace A101301

/-- `∑[A113935(n+1)-4]` -/
def P14147775988001959660.Spec : Prop :=
  ∀ n, P14147775988001959660.a n = A101301 (n + 1)

end A101301

/-! ## A101301.P17503523071058145534

`∑[A175221(n+1)-5]`
-/

namespace A101301.P17503523071058145534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175221 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101301.P17503523071058145534

namespace A101301

/-- `∑[A175221(n+1)-5]` -/
def P17503523071058145534.Spec : Prop :=
  ∀ n, P17503523071058145534.a n = A101301 (n + 1)

end A101301

/-! ## A101301.P11460047699655204367

`A103976(n+1)+n+1`
-/

namespace A101301.P11460047699655204367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103976 (n + 1) + (n + 1 : ℤ)

end

end A101301.P11460047699655204367

namespace A101301

/-- `A103976(n+1)+n+1` -/
def P11460047699655204367.Spec : Prop :=
  ∀ n, P11460047699655204367.a n = A101301 (n + 1)

end A101301

/-! ## A101301.P13048485473445613376

`-∑[1-A000040(2*n-(n-1))]`
-/

namespace A101301.P13048485473445613376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101301.P13048485473445613376

namespace A101301

/-- `-∑[1-A000040(2*n-(n-1))]` -/
def P13048485473445613376.Spec : Prop :=
  ∀ n, P13048485473445613376.a n = A101301 (n + 1)

end A101301

/-!
# A101302: Primes of the form Sum_{k=1..n} phi(prime(k)).

The programs for A101302, there is no canonical definition to state claims against.
-/

/-! ## A101302.P15241086496209860818

`p?[∑[p?[comp[n²]]-1]]`
-/

namespace A101302.P15241086496209860818
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101302.P15241086496209860818

/-! ## A101302.P10012576189114530141

`p?[∑[p?[Δ[n²]]]-n]`
-/

namespace A101302.P10012576189114530141
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f4 (n + 1) : ℤ) - (f4 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101302.P10012576189114530141

/-! ## A101302.P18410556893739797793

`p?[A101301(n+1)]`
-/

namespace A101302.P18410556893739797793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101302.P18410556893739797793

/-! ## A101302.P16283350995877355329

`p?[A007504(n)-n]`
-/

namespace A101302.P16283350995877355329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101302.P16283350995877355329

/-! ## A101302.P1308511328740498351

`p?[∑[A006093(n+1)]]`
-/

namespace A101302.P1308511328740498351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101302.P1308511328740498351

/-! ## A101302.P12704365081769020749

`p?[Δ[A160793(n+1)]]`
-/

namespace A101302.P12704365081769020749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160793 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101302.P12704365081769020749

/-! ## A101302.P17209750222785422780

`p?[∑[A028815(n)-2]]`
-/

namespace A101302.P17209750222785422780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101302.P17209750222785422780

/-! ## A101302.P10811494235578250880

`p?[∑[A068499(n+3)]]`
-/

namespace A101302.P10811494235578250880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068499 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101302.P10811494235578250880

/-! ## A101302.P16465855156216146543

`p?[A071148(n+1)-n]`
-/

namespace A101302.P16465855156216146543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071148 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101302.P16465855156216146543

/-! ## A101302.P6627650997755136769

`p?[A237589(n+1)-n]`
-/

namespace A101302.P6627650997755136769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101302.P6627650997755136769

/-!
# A101303: a(n) = sigma() [A000203] applied n times to prime(n).

The programs for A101303, there is no canonical definition to state claims against.
-/

/-! ## A101303.P14558489555076568245

`A062402(A370888(n+2)-A194923(n+1))`
-/

namespace A101303.P14558489555076568245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062402 (A370888 (n + 2) - A194923 (n + 1)).toNat

end

end A101303.P14558489555076568245

/-!
# A101304: a(n) = 2^(prime(n) + 1) + 1.

The programs for A101304, there is no canonical definition to state claims against.
-/

/-! ## A101304.P12778863894384570428

`A279882(n+1)+2`
-/

namespace A101304.P12778863894384570428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279882 (n + 1) + 2

end

end A101304.P12778863894384570428

/-! ## A101304.P6185884474720334773

`2*A034785(n+1)+1`
-/

namespace A101304.P6185884474720334773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034785 (n + 1) + 1

end

end A101304.P6185884474720334773

/-! ## A101304.P12202228423573889793

`2*A098640(n+1)-1`
-/

namespace A101304.P12202228423573889793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098640 (n + 1) - 1

end

end A101304.P12202228423573889793

/-! ## A101304.P2953697999104766532

`2*A001348(n+1)+3`
-/

namespace A101304.P2953697999104766532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001348 (n + 1) + 3

end

end A101304.P2953697999104766532

/-! ## A101304.P17086843810003917599

`4*A061286(n+1)+1`
-/

namespace A101304.P17086843810003917599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A061286 (n + 1) + 1

end

end A101304.P17086843810003917599

/-! ## A101304.P10596197909813837656

`2*A241573(n+1)-5`
-/

namespace A101304.P10596197909813837656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A241573 (n + 1) - 5

end

end A101304.P10596197909813837656

/-! ## A101304.P4447129953632556685

`4*A278741(n+1)-3`
-/

namespace A101304.P4447129953632556685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A278741 (n + 1) - 3

end

end A101304.P4447129953632556685

/-! ## A101304.P10631737958142709257

`2^A008864(n+1)+1`
-/

namespace A101304.P10631737958142709257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008864 (n + 1) : ℤ) + 1

end

end A101304.P10631737958142709257

/-! ## A101304.P18445833844768472010

`2^A028815(n+1)+1`
-/

namespace A101304.P18445833844768472010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A028815 (n + 1) : ℤ) + 1

end

end A101304.P18445833844768472010

/-! ## A101304.P14873197957882136117

`4*A098102(n+1)+5`
-/

namespace A101304.P14873197957882136117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A098102 (n + 1) + 5

end

end A101304.P14873197957882136117

/-!
# A101305: Begin with 0 and at each successive iteration append the next power of 10.

The programs for A101305, there is no canonical definition to state claims against.
-/

/-! ## A101305.P11954627481727121546

`(10*a(n-1)+1)*10^n` with `a(0)=0`
-/

namespace A101305.P11954627481727121546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (10 * a (n - 1) + 1) * 10 ^ n

end

end A101305.P11954627481727121546

/-! ## A101305.P10256125477102640960

`10^n*or(1, 10*a(n-1))` with `a(0)=0`
-/

namespace A101305.P10256125477102640960
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  10 ^ n * Nat.lor 1 (10 * a (n - 1))

end

end A101305.P10256125477102640960

/-! ## A101305.P11403020393343903006

`10^n*A076127(n)`
-/

namespace A101305.P11403020393343903006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * A076127 n

end

end A101305.P11403020393343903006

/-!
# A101306: a(n) = Sum_{i=1..n} {last digit of prime(i)}.

The programs for A101306, the canonical program `A101306.P320530847100994328` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101306 has offset 1).

The definition of A101306 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101306.P320530847100994328

`∑[A007652(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A101306

/-- `∑[A007652(n+1)]` -/
def P320530847100994328.Spec : Prop :=
  ∀ n, P320530847100994328.a n = A101306 (n + 1)

theorem P320530847100994328.correct : P320530847100994328.Spec := by
  intro n
  simp only [A101306, Nat.add_sub_cancel]

end A101306

/-! ## A101306.P3139028242930917612

`∑[Δ[A007504(n)]%10]`
-/

namespace A101306.P3139028242930917612
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101306.P3139028242930917612

namespace A101306

/-- `∑[Δ[A007504(n)]%10]` -/
def P3139028242930917612.Spec : Prop :=
  ∀ n, P3139028242930917612.a n = A101306 (n + 1)

end A101306

/-! ## A101306.P10656587969964482435

`∑[5-A277097(n+1)]`
-/

namespace A101306.P10656587969964482435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A277097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101306.P10656587969964482435

namespace A101306

/-- `∑[5-A277097(n+1)]` -/
def P10656587969964482435.Spec : Prop :=
  ∀ n, P10656587969964482435.a n = A101306 (n + 1)

theorem P10656587969964482435.correct : P10656587969964482435.Spec := by
  intro n
  simp only [A101306, Nat.add_sub_cancel, A101306.P10656587969964482435.f1, A101306.P10656587969964482435.a, A101306.P320530847100994328.f1, A101306.P320530847100994328.a, A007652, A007652.P8278837090424156821.a, A277097, A277097.P13283059158650942872.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A010879, A010879.P10561743211919002802.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A101306

/-! ## A101306.P8246405024968187303

`∑[A000040(n+1)%10]`
-/

namespace A101306.P8246405024968187303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101306.P8246405024968187303

namespace A101306

/-- `∑[A000040(n+1)%10]` -/
def P8246405024968187303.Spec : Prop :=
  ∀ n, P8246405024968187303.a n = A101306 (n + 1)

end A101306

/-! ## A101306.P3453053077442668435

`∑[A045532(n+1)%10]`
-/

namespace A101306.P3453053077442668435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045532 (n + 1)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101306.P3453053077442668435

namespace A101306

/-- `∑[A045532(n+1)%10]` -/
def P3453053077442668435.Spec : Prop :=
  ∀ n, P3453053077442668435.a n = A101306 (n + 1)

end A101306

/-! ## A101306.P5043152213110038705

`∑[A080437(n+1)%10]`
-/

namespace A101306.P5043152213110038705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080437 (n + 1)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101306.P5043152213110038705

namespace A101306

/-- `∑[A080437(n+1)%10]` -/
def P5043152213110038705.Spec : Prop :=
  ∀ n, P5043152213110038705.a n = A101306 (n + 1)

end A101306

/-! ## A101306.P10150466263242992970

`∑[(A006093(n+1)+1)%10]`
-/

namespace A101306.P10150466263242992970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006093 (n + 1) + 1) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101306.P10150466263242992970

namespace A101306

/-- `∑[(A006093(n+1)+1)%10]` -/
def P10150466263242992970.Spec : Prop :=
  ∀ n, P10150466263242992970.a n = A101306 (n + 1)

end A101306

/-! ## A101306.P3582045532364838993

`5*(n+1)-A184593(n+1)`
-/

namespace A101306.P3582045532364838993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) : ℤ) - A184593 (n + 1)

end

end A101306.P3582045532364838993

namespace A101306

/-- `5*(n+1)-A184593(n+1)` -/
def P3582045532364838993.Spec : Prop :=
  ∀ n, P3582045532364838993.a n = A101306 (n + 1)

end A101306

/-! ## A101306.P17991986912192299199

`∑[A010879(A110923(n+1))]`
-/

namespace A101306.P17991986912192299199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A110923 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101306.P17991986912192299199

namespace A101306

/-- `∑[A010879(A110923(n+1))]` -/
def P17991986912192299199.Spec : Prop :=
  ∀ n, P17991986912192299199.a n = A101306 (n + 1)

end A101306

/-! ## A101306.P7306182174765120514

`∑[A010879(A137589(n+1))]`
-/

namespace A101306.P7306182174765120514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A137589 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101306.P7306182174765120514

namespace A101306

/-- `∑[A010879(A137589(n+1))]` -/
def P7306182174765120514.Spec : Prop :=
  ∀ n, P7306182174765120514.a n = A101306 (n + 1)

end A101306

/-! ## A101306.P1431261038270037360

`A122754(n+1)-(A184593(n+1)+A184593(n+1))`
-/

namespace A101306.P1431261038270037360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122754 (n + 1) - (A184593 (n + 1) + A184593 (n + 1))

end

end A101306.P1431261038270037360

namespace A101306

/-- `A122754(n+1)-(A184593(n+1)+A184593(n+1))` -/
def P1431261038270037360.Spec : Prop :=
  ∀ n, P1431261038270037360.a n = A101306 (n + 1)

end A101306

/-! ## A101306.P3563017397995339601

`∑[record[A006530(n+2)]%10]`
-/

namespace A101306.P3563017397995339601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101306.P3563017397995339601

namespace A101306

/-- `∑[record[A006530(n+2)]%10]` -/
def P3563017397995339601.Spec : Prop :=
  ∀ n, P3563017397995339601.a n = A101306 (n + 1)

end A101306

/-! ## A101306.P9839165243035673681

`∑[record[A020639(n+2)]%10]`
-/

namespace A101306.P9839165243035673681
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101306.P9839165243035673681

namespace A101306

/-- `∑[record[A020639(n+2)]%10]` -/
def P9839165243035673681.Spec : Prop :=
  ∀ n, P9839165243035673681.a n = A101306 (n + 1)

end A101306

/-! ## A101306.P10245739628596396025

`∑[A006530(lt[n, A006530(n+2)]+2)%10]`
-/

namespace A101306.P10245739628596396025
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 2)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101306.P10245739628596396025

namespace A101306

/-- `∑[A006530(lt[n, A006530(n+2)]+2)%10]` -/
def P10245739628596396025.Spec : Prop :=
  ∀ n, P10245739628596396025.a n = A101306 (n + 1)

end A101306

/-! ## A101306.P651559241656066197

`∑[(lt[A000010(n+1), A020639(n+1)]+1)%10]`
-/

namespace A101306.P651559241656066197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j < f3 j) n + 1) % 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101306.P651559241656066197

namespace A101306

/-- `∑[(lt[A000010(n+1), A020639(n+1)]+1)%10]` -/
def P651559241656066197.Spec : Prop :=
  ∀ n, (P651559241656066197.a n : ℤ) = A101306 (n + 1)

end A101306

/-! ## A101306.P15336381188189494820

`∑[A228355(A068670(n))]`
-/

namespace A101306.P15336381188189494820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228355 (A068670 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101306.P15336381188189494820

namespace A101306

/-- `∑[A228355(A068670(n))]` -/
def P15336381188189494820.Spec : Prop :=
  ∀ n, P15336381188189494820.a n = A101306 (n + 1)

end A101306

/-! ## A101306.P1532605831255848541

`∑[A063482(n+1)/A006530(A063482(n+1))]`
-/

namespace A101306.P1532605831255848541
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063482 (n + 1) : ℚ) / (A006530 (A063482 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101306.P1532605831255848541

namespace A101306

/-- `∑[A063482(n+1)/A006530(A063482(n+1))]` -/
def P1532605831255848541.Spec : Prop :=
  ∀ n, P1532605831255848541.a n = (A101306 (n + 1) : ℚ)

end A101306

/-! ## A101306.P13259167964667455021

`∑[record[A014963(n+2)]%10]`
-/

namespace A101306.P13259167964667455021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101306.P13259167964667455021

namespace A101306

/-- `∑[record[A014963(n+2)]%10]` -/
def P13259167964667455021.Spec : Prop :=
  ∀ n, P13259167964667455021.a n = A101306 (n + 1)

end A101306

/-! ## A101306.P11555182287118201141

`∑[A010879(A000040(n+1))]`
-/

namespace A101306.P11555182287118201141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101306.P11555182287118201141

namespace A101306

/-- `∑[A010879(A000040(n+1))]` -/
def P11555182287118201141.Spec : Prop :=
  ∀ n, P11555182287118201141.a n = A101306 (n + 1)

end A101306

/-! ## A101306.P17527992604671091348

`∑[A010879(A008578(n+2))]`
-/

namespace A101306.P17527992604671091348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101306.P17527992604671091348

namespace A101306

/-- `∑[A010879(A008578(n+2))]` -/
def P17527992604671091348.Spec : Prop :=
  ∀ n, P17527992604671091348.a n = A101306 (n + 1)

end A101306

/-!
# A101308: Number of ordered trees with n edges and having no branches of length 2.

The programs for A101308, there is no canonical definition to state claims against.
-/

/-! ## A101308.P15874779622586697063

`A101307(A076921(n+1))`
-/

namespace A101308.P15874779622586697063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101307 (A076921 (n + 1)).toNat

end

end A101308.P15874779622586697063

/-! ## A101308.P10689702243054888898

`A101307(lt[A101280(n+1), n+1])`
-/

namespace A101308.P10689702243054888898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101280 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101307 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A101308.P10689702243054888898

/-! ## A101308.P7143177098730824961

`A184415(A055226(n))`
-/

namespace A101308.P7143177098730824961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184415 (A055226 n).toNat

end

end A101308.P7143177098730824961

/-! ## A101308.P16741686510375346774

`A378379(A191526(n+1))`
-/

namespace A101308.P16741686510375346774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378379 (A191526 (n + 1)).toNat

end

end A101308.P16741686510375346774

/-!
# A101309: Matrix logarithm of A047999 (Pascal's triangle mod 2).

The programs for A101309, the canonical program `A101309.P11105508438679129334` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101309 has offset 0).

The definition of A101309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101309.P16248524923027660952

`char[eq[2, A166453(n)]]`
-/

namespace A101309.P16248524923027660952
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166453 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A101309.P16248524923027660952

namespace A101309

/-- `char[eq[2, A166453(n)]]` -/
def P16248524923027660952.Spec : Prop :=
  ∀ n, (P16248524923027660952.a n : ℤ) = A101309 n

end A101309

/-! ## A101309.P15037203933818771266

`and(2, A117852(n))/2`
-/

namespace A101309.P15037203933818771266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A117852 n) : ℚ) / 2

end

end A101309.P15037203933818771266

namespace A101309

/-- `and(2, A117852(n))/2` -/
def P15037203933818771266.Spec : Prop :=
  ∀ n, P15037203933818771266.a n = (A101309 n : ℚ)

end A101309

/-! ## A101309.P11105508438679129334

`A014707(A166453(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A101309

/-- `A014707(A166453(n))` -/
def P11105508438679129334.Spec : Prop :=
  ∀ n, P11105508438679129334.a n = A101309 n

theorem P11105508438679129334.correct : P11105508438679129334.Spec := by
  intro n
  simp only [A101309]

end A101309

/-! ## A101309.P5499414054338638086

`A209229(A051933(n))`
-/

namespace A101309.P5499414054338638086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A051933 n).toNat

end

end A101309.P5499414054338638086

namespace A101309

/-- `A209229(A051933(n))` -/
def P5499414054338638086.Spec : Prop :=
  ∀ n, P5499414054338638086.a n = A101309 n

end A101309

/-! ## A101309.P7673805323824932604

`A020987(A166453(n)+1)`
-/

namespace A101309.P7673805323824932604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020987 (A166453 n + 1).toNat

end

end A101309.P7673805323824932604

namespace A101309

/-- `A020987(A166453(n)+1)` -/
def P7673805323824932604.Spec : Prop :=
  ∀ n, P7673805323824932604.a n = A101309 n

end A101309

/-! ## A101309.P8267205171204175914

`A185706(A166453(n)+1)`
-/

namespace A101309.P8267205171204175914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185706 (A166453 n + 1).toNat

end

end A101309.P8267205171204175914

namespace A101309

/-- `A185706(A166453(n)+1)` -/
def P8267205171204175914.Spec : Prop :=
  ∀ n, P8267205171204175914.a n = A101309 n

end A101309

/-! ## A101309.P16077444388613751142

`A251764(A166453(n)+1)`
-/

namespace A101309.P16077444388613751142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251764 (A166453 n + 1).toNat

end

end A101309.P16077444388613751142

namespace A101309

/-- `A251764(A166453(n)+1)` -/
def P16077444388613751142.Spec : Prop :=
  ∀ n, P16077444388613751142.a n = A101309 n

end A101309

/-! ## A101309.P4328409790067445800

`A048105(A166453(n)+2)`
-/

namespace A101309.P4328409790067445800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (A166453 n + 2).toNat

end

end A101309.P4328409790067445800

namespace A101309

/-- `A048105(A166453(n)+2)` -/
def P4328409790067445800.Spec : Prop :=
  ∀ n, P4328409790067445800.a n = A101309 n

end A101309

/-! ## A101309.P5435159124119877123

`A151666(A166453(n)+2)`
-/

namespace A101309.P5435159124119877123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151666 (A166453 n + 2).toNat

end

end A101309.P5435159124119877123

namespace A101309

/-- `A151666(A166453(n)+2)` -/
def P5435159124119877123.Spec : Prop :=
  ∀ n, P5435159124119877123.a n = A101309 n

end A101309

/-! ## A101309.P15566119291774458575

`A025463(5*A166453(n))`
-/

namespace A101309.P15566119291774458575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025463 (5 * A166453 n).toNat

end

end A101309.P15566119291774458575

namespace A101309

/-- `A025463(5*A166453(n))` -/
def P15566119291774458575.Spec : Prop :=
  ∀ n, P15566119291774458575.a n = A101309 n

end A101309

/-! ## A101309.P8133489460770948896

`A025463(A166453(n)+8)`
-/

namespace A101309.P8133489460770948896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025463 (A166453 n + 8).toNat

end

end A101309.P8133489460770948896

namespace A101309

/-- `A025463(A166453(n)+8)` -/
def P8133489460770948896.Spec : Prop :=
  ∀ n, P8133489460770948896.a n = A101309 n

end A101309

/-! ## A101309.P15019547340112938361

`A302777(2^A051933(n))`
-/

namespace A101309.P15019547340112938361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302777 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A051933 n : ℤ))).toNat

end

end A101309.P15019547340112938361

namespace A101309

/-- `A302777(2^A051933(n))` -/
def P15019547340112938361.Spec : Prop :=
  ∀ n, P15019547340112938361.a n = A101309 n

end A101309

/-! ## A101309.P4902427583762607019

`A025464(val(A117852(n), 2))`
-/

namespace A101309.P4902427583762607019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025464 (SequenceMachineLib.valuation (A117852 n).toNat 2)

end

end A101309.P4902427583762607019

namespace A101309

/-- `A025464(val(A117852(n), 2))` -/
def P4902427583762607019.Spec : Prop :=
  ∀ n, P4902427583762607019.a n = A101309 n

end A101309

/-! ## A101309.P11332227914761460856

`A033683(val(A117852(n), 2))`
-/

namespace A101309.P11332227914761460856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033683 (SequenceMachineLib.valuation (A117852 n).toNat 2)

end

end A101309.P11332227914761460856

namespace A101309

/-- `A033683(val(A117852(n), 2))` -/
def P11332227914761460856.Spec : Prop :=
  ∀ n, P11332227914761460856.a n = A101309 n

end A101309

/-! ## A101309.P10162561045943517438

`A063524(val(A117852(n), 2))`
-/

namespace A101309.P10162561045943517438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (SequenceMachineLib.valuation (A117852 n).toNat 2)

end

end A101309.P10162561045943517438

namespace A101309

/-- `A063524(val(A117852(n), 2))` -/
def P10162561045943517438.Spec : Prop :=
  ∀ n, P10162561045943517438.a n = A101309 n

end A101309

/-! ## A101309.P747967665405428469

`A106268(n)%A178474(n)`
-/

namespace A101309.P747967665405428469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106268 n) (A178474 n)

end

end A101309.P747967665405428469

namespace A101309

/-- `A106268(n)%A178474(n)` -/
def P747967665405428469.Spec : Prop :=
  ∀ n, P747967665405428469.a n = A101309 n

end A101309

/-! ## A101309.P17972123867817871148

`∑{d}[A051933(n), A087003(#)]`
-/

namespace A101309.P17972123867817871148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051933 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A087003 d

end

end A101309.P17972123867817871148

namespace A101309

/-- `∑{d}[A051933(n), A087003(#)]` -/
def P17972123867817871148.Spec : Prop :=
  ∀ n, P17972123867817871148.a n = A101309 n

end A101309

/-! ## A101309.P6153671407386319318

`A000045(and(2, 1-A117852(n)))`
-/

namespace A101309.P6153671407386319318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land 2 (1 - A117852 n)).toNat

end

end A101309.P6153671407386319318

namespace A101309

/-- `A000045(and(2, 1-A117852(n)))` -/
def P6153671407386319318.Spec : Prop :=
  ∀ n, P6153671407386319318.a n = A101309 n

end A101309

/-! ## A101309.P18372767944283648022

`A021913(and(2, 1-A117852(n)))`
-/

namespace A101309.P18372767944283648022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (Int.land 2 (1 - A117852 n)).toNat

end

end A101309.P18372767944283648022

namespace A101309

/-- `A021913(and(2, 1-A117852(n)))` -/
def P18372767944283648022.Spec : Prop :=
  ∀ n, P18372767944283648022.a n = A101309 n

end A101309

/-! ## A101309.P343650899761814979

`A014317(val(A117852(n), 2)+11)`
-/

namespace A101309.P343650899761814979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014317 (SequenceMachineLib.valuation (A117852 n).toNat 2 + 11)

end

end A101309.P343650899761814979

namespace A101309

/-- `A014317(val(A117852(n), 2)+11)` -/
def P343650899761814979.Spec : Prop :=
  ∀ n, P343650899761814979.a n = A101309 n

end A101309

/-!
# A101310: Sum(prime(k)*10^(k),k=1..n).

The programs for A101310, there is no canonical definition to state claims against.
-/

/-! ## A101310.P2574729786976876118

`∑[10^n*A182986(n+1)]`
-/

namespace A101310.P2574729786976876118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * A182986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101310.P2574729786976876118

/-! ## A101310.P2966596582599075852

`∑[10^n*record[A008472(n+1)]]`
-/

namespace A101310.P2966596582599075852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101310.P2966596582599075852

/-! ## A101310.P8512279164567566789

`∑[10^n*comp[A018252(n+1)]]`
-/

namespace A101310.P8512279164567566789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101310.P8512279164567566789

/-! ## A101310.P9779845590161847332

`∑[A001747(n+1)/2*10^n]-1`
-/

namespace A101310.P9779845590161847332
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001747 (n + 1) : ℚ) / 2 * (10 ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A101310.P9779845590161847332

/-! ## A101310.P8785345385409563384

`∑[comp[A018252(n+1)]*A011557(n)]`
-/

namespace A101310.P8785345385409563384
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) * A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101310.P8785345385409563384

/-!
# A101311: Decimal numbers n such that after possibly prefixing a leading 0 to n, the resulting number n' can be broken into 2 strings of the same length, n' = xy, such that x^2+y^2 = n.

The programs for A101311, there is no canonical definition to state claims against.
-/

/-! ## A101311.P12911300329214806076

`gcd(C(2, n+2), A178530(n+4))`
-/

namespace A101311.P12911300329214806076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (n + 2) : ℤ) (A178530 (n + 4))

end

end A101311.P12911300329214806076

/-! ## A101311.P14729319398936896359

`A178530((n+4)/ceil(2/(n+1)))`
-/

namespace A101311.P14729319398936896359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178530 (SequenceMachineLib.roundAway ((n + 4 : ℚ) / (⌈2 / (n + 1 : ℚ)⌉ : ℚ))).toNat

end

end A101311.P14729319398936896359

/-! ## A101311.P7838425029939417102

`gcd(floor(1/(n+1)), A368416(n+1))`
-/

namespace A101311.P7838425029939417102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊1 / (n + 1 : ℚ)⌋ (A368416 (n + 1))

end

end A101311.P7838425029939417102

/-! ## A101311.P15317264991128606858

`A368416(n+1)^A178489(n)`
-/

namespace A101311.P15317264991128606858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368416 (n + 1) : ℚ) ^ (A178489 n : ℤ)

end

end A101311.P15317264991128606858

/-! ## A101311.P1999697914287758352

`A178530(n+4)^A178487(n)`
-/

namespace A101311.P1999697914287758352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178530 (n + 4) : ℚ) ^ (A178487 n : ℤ)

end

end A101311.P1999697914287758352

/-!
# A101312: Number of "Friday the 13ths" in year n (starting at 1901).

The programs for A101312, there is no canonical definition to state claims against.
-/

/-! ## A101312.P961199988559118295

`A245555(lcm(2, A005282(3*n+1)))`
-/

namespace A101312.P961199988559118295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245555 (Int.lcm 2 (A005282 (3 * n + 1)))

end

end A101312.P961199988559118295

/-! ## A101312.P3871160946928875618

`A227736(lcm(A043276(n+9), A318926(n+4)))`
-/

namespace A101312.P3871160946928875618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227736 (Int.lcm (A043276 (n + 9)) (A318926 (n + 4)))

end

end A101312.P3871160946928875618

/-! ## A101312.P6336410593958315666

`A269971(A121262(n)+A057054(n+1))`
-/

namespace A101312.P6336410593958315666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269971 (A121262 n + A057054 (n + 1)).toNat

end

end A101312.P6336410593958315666

/-! ## A101312.P1657959819236174054

`A040286(A040237(3*n+1)+A022390(n))`
-/

namespace A101312.P1657959819236174054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040286 (A040237 (3 * n + 1) + A022390 n).toNat

end

end A101312.P1657959819236174054

/-!
# A101313: Number of painted forests - exactly one of its trees is painted - on labeled vertex set [n].

The programs for A101313, there is no canonical definition to state claims against.
-/

/-! ## A101313.P14518325177013806429

`A028900(A003478(∑[n]))`
-/

namespace A101313.P14518325177013806429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (A003478 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A101313.P14518325177013806429

/-!
# A101315: Primes p such that p+2, p^2 - 2p + 2, and p^2 - 2p + 4 are all prime.

The programs for A101315, there is no canonical definition to state claims against.
-/

/-! ## A101315.P5132401106128121726

`A001359(record[(n+1)/A099742(n+1)])`
-/

namespace A101315.P5132401106128121726
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A099742 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A101315.P5132401106128121726

/-! ## A101315.P8333407345583445939

`record[root(A001359(n+1), A099742(n+1))]`
-/

namespace A101315.P8333407345583445939
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A001359 (n + 1) : ℝ) ^ (1 / (A099742 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101315.P8333407345583445939

/-! ## A101315.P9391700912364977359

`p?[A014574(n+1)-A000010(A099742(n+1))]`
-/

namespace A101315.P9391700912364977359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) - A000010 (A099742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101315.P9391700912364977359

/-! ## A101315.P6688521727884634735

`p?[A006512(n+1)-A088175(A099742(n+1))]`
-/

namespace A101315.P6688521727884634735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) - A088175 (A099742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101315.P6688521727884634735

/-!
# A101317: Numbers n with >= 3 digits such that sum of external digits = sum of internal digits.

The programs for A101317, there is no canonical definition to state claims against.
-/

/-! ## A101317.P10094954208031224451

`11*eq[1, A273005(n)-dr(n)]`
-/

namespace A101317.P10094954208031224451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273005 n - (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A101317.P10094954208031224451

/-! ## A101317.P16795748509473411606

`11*lt[A056142(n-9*floor(n/10)), n]`
-/

namespace A101317.P16795748509473411606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 ((n : ℤ) - 9 * ⌊(n : ℚ) / 10⌋).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A101317.P16795748509473411606

/-! ## A101317.P5465655277186587744

`A360443(A214527(n+1))`
-/

namespace A101317.P5465655277186587744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360443 (A214527 (n + 1)).toNat

end

end A101317.P5465655277186587744

/-! ## A101317.P17071012252772409967

`∩[A168104(n), A240237(n)]`
-/

namespace A101317.P17071012252772409967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168104 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240237 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101317.P17071012252772409967

/-! ## A101317.P1736445396753310725

`∩[A008593(n), A348139(n+1)]`
-/

namespace A101317.P1736445396753310725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101317.P1736445396753310725

/-!
# A101318: Numbers n such that Sum_of_Digits modulo n <= 2.

The programs for A101318, there is no canonical definition to state claims against.
-/

/-! ## A101318.P4281800483322675910

`lt[A128936(n), A000217(n+1)]`
-/

namespace A101318.P4281800483322675910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128936 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A101318.P4281800483322675910

/-! ## A101318.P14768783925821793369

`lt[A070565(n)*A118880(n), A108773(n)]`
-/

namespace A101318.P14768783925821793369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070565 n * A118880 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108773 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A101318.P14768783925821793369

/-! ## A101318.P10973354871968257198

`lt[A307629(n), A004218(n+1)+A004216(n+1)]`
-/

namespace A101318.P10973354871968257198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307629 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 1) + A004216 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A101318.P10973354871968257198

/-! ## A101318.P10485121658124252139

`lt[A160942(n+1), A175884(n+1)+A118881(n)]`
-/

namespace A101318.P10485121658124252139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175884 (n + 1) + A118881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A101318.P10485121658124252139

/-! ## A101318.P2596242768389249354

`lt[A007953(n)*A066568(n), A079667(2*n+1)]`
-/

namespace A101318.P2596242768389249354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n * A066568 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079667 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A101318.P2596242768389249354

/-!
# A101321: Table T(n,m) = 1 + n*m*(m+1)/2 read by antidiagonals: centered polygonal numbers.

The programs for A101321, the canonical program `A101321.P11435036558127374472` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101321 has offset 0).

The definition of A101321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101321.P11435036558127374472

`A062707(n)+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A101321

/-- `A062707(n)+1` -/
def P11435036558127374472.Spec : Prop :=
  ∀ n, P11435036558127374472.a n = A101321 n

theorem P11435036558127374472.correct : P11435036558127374472.Spec := by
  intro n
  simp only [A101321]

end A101321

/-! ## A101321.P6346006570174705492

`A134394(n+1)-A025581(n)`
-/

namespace A101321.P6346006570174705492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134394 (n + 1) - A025581 n

end

end A101321.P6346006570174705492

namespace A101321

/-- `A134394(n+1)-A025581(n)` -/
def P6346006570174705492.Spec : Prop :=
  ∀ n, P6346006570174705492.a n = A101321 n

theorem P6346006570174705492.correct : P6346006570174705492.Spec := by
  intro n
  simp only [A101321, Nat.add_sub_cancel, A101321.P6346006570174705492.a, A101321.P11435036558127374472.a, A025581, A025581.P420762180635059694.a, A062707, A062707.P7585015757933557598.a, A134394, A134394.P12565304534102440412.a, A002262, A002262.P12129691700837801527.a, A004736, A004736.P10337537277358081527.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A057944, A057944.P16851463738746886639.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A101321

/-! ## A101321.P481290531679817601

`A128141(n+1)-A059036(n)`
-/

namespace A101321.P481290531679817601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128141 (n + 1) - A059036 n

end

end A101321.P481290531679817601

namespace A101321

/-- `A128141(n+1)-A059036(n)` -/
def P481290531679817601.Spec : Prop :=
  ∀ n, P481290531679817601.a n = A101321 n

theorem P481290531679817601.correct : P481290531679817601.Spec := by
  intro n
  simp only [A101321, Nat.add_sub_cancel, A101321.P481290531679817601.a, A101321.P11435036558127374472.a, A059036, A059036.P10984433159116004346.a, A062707, A062707.P7585015757933557598.a, A128141, A128141.P68200204376407770.a, A002262, A002262.P12129691700837801527.a, A003991, A003991.P14084851459366035567.a, A004736, A004736.P10337537277358081527.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A002260, A002260.P769748059679640451.a, A057944, A057944.P16851463738746886639.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A101321

/-! ## A101321.P7079829804866662986

`A285192(n)+2-A080853(n)`
-/

namespace A101321.P7079829804866662986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285192 n + (2 - A080853 n)

end

end A101321.P7079829804866662986

namespace A101321

/-- `A285192(n)+2-A080853(n)` -/
def P7079829804866662986.Spec : Prop :=
  ∀ n, P7079829804866662986.a n = A101321 n

end A101321

/-! ## A101321.P10124937444298478180

`n-(A023443(n)-A062707(n))`
-/

namespace A101321.P10124937444298478180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A062707 n)

end

end A101321.P10124937444298478180

namespace A101321

/-- `n-(A023443(n)-A062707(n))` -/
def P10124937444298478180.Spec : Prop :=
  ∀ n, P10124937444298478180.a n = A101321 n

theorem P10124937444298478180.correct : P10124937444298478180.Spec := by
  intro n
  simp only [A101321, Nat.add_sub_cancel, A101321.P10124937444298478180.a, A101321.P11435036558127374472.a, A023443, A023443.P2966051066474347068.a, A062707, A062707.P7585015757933557598.a, A002262, A002262.P12129691700837801527.a, A004736, A004736.P10337537277358081527.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A057944, A057944.P16851463738746886639.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A101321

/-! ## A101321.P773179587686585417

`A086272(n+1)-A095832(n+1)`
-/

namespace A101321.P773179587686585417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086272 (n + 1) - A095832 (n + 1)

end

end A101321.P773179587686585417

namespace A101321

/-- `A086272(n+1)-A095832(n+1)` -/
def P773179587686585417.Spec : Prop :=
  ∀ n, P773179587686585417.a n = A101321 n

end A101321

/-! ## A101321.P3079472673544445227

`A128141(n+1)+1-A003991(n+1)`
-/

namespace A101321.P3079472673544445227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128141 (n + 1) + (1 - A003991 (n + 1))

end

end A101321.P3079472673544445227

namespace A101321

/-- `A128141(n+1)+1-A003991(n+1)` -/
def P3079472673544445227.Spec : Prop :=
  ∀ n, P3079472673544445227.a n = A101321 n

theorem P3079472673544445227.correct : P3079472673544445227.Spec := by
  intro n
  simp only [A101321, Nat.add_sub_cancel, A101321.P3079472673544445227.a, A101321.P11435036558127374472.a, A003991, A003991.P14084851459366035567.a, A062707, A062707.P7585015757933557598.a, A128141, A128141.P68200204376407770.a, A002260, A002260.P769748059679640451.a, A002262, A002262.P12129691700837801527.a, A004736, A004736.P10337537277358081527.a, A059036, A059036.P10984433159116004346.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A057944, A057944.P16851463738746886639.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A101321

/-! ## A101321.P14195848220697988584

`A134394(n+1)+1-A004736(n+1)`
-/

namespace A101321.P14195848220697988584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134394 (n + 1) + (1 - A004736 (n + 1))

end

end A101321.P14195848220697988584

namespace A101321

/-- `A134394(n+1)+1-A004736(n+1)` -/
def P14195848220697988584.Spec : Prop :=
  ∀ n, P14195848220697988584.a n = A101321 n

theorem P14195848220697988584.correct : P14195848220697988584.Spec := by
  intro n
  simp only [A101321, Nat.add_sub_cancel, A101321.P14195848220697988584.a, A101321.P11435036558127374472.a, A004736, A004736.P10337537277358081527.a, A062707, A062707.P7585015757933557598.a, A134394, A134394.P12565304534102440412.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P12129691700837801527.a, A025581, A025581.P420762180635059694.a, A057944, A057944.P16851463738746886639.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A101321

/-! ## A101321.P2605854773415110892

`A104633(n+1)+1-A049777(n+1)`
-/

namespace A101321.P2605854773415110892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104633 (n + 1) + (1 - A049777 (n + 1))

end

end A101321.P2605854773415110892

namespace A101321

/-- `A104633(n+1)+1-A049777(n+1)` -/
def P2605854773415110892.Spec : Prop :=
  ∀ n, P2605854773415110892.a n = A101321 n

theorem P2605854773415110892.correct : P2605854773415110892.Spec := by
  intro n
  simp only [A101321, Nat.add_sub_cancel, A101321.P2605854773415110892.a, A101321.P11435036558127374472.a, A049777, A049777.P827072266685734770.a, A062707, A062707.P7585015757933557598.a, A104633, A104633.P12323607776174508310.a, A002262, A002262.P12129691700837801527.a, A004736, A004736.P10337537277358081527.a, A112367, A112367.P5378126856570841990.a, A127739, A127739.P6291269565293973198.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A003057, A003057.P16308936517940939054.a, A057944, A057944.P16851463738746886639.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A101321

/-! ## A101321.P11772446925366614304

`A213751(n+1)+1-A104634(n+1)`
-/

namespace A101321.P11772446925366614304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213751 (n + 1) + (1 - A104634 (n + 1))

end

end A101321.P11772446925366614304

namespace A101321

/-- `A213751(n+1)+1-A104634(n+1)` -/
def P11772446925366614304.Spec : Prop :=
  ∀ n, P11772446925366614304.a n = A101321 n

theorem P11772446925366614304.correct : P11772446925366614304.Spec := by
  intro n
  simp only [A101321, Nat.add_sub_cancel, A101321.P11772446925366614304.a, A101321.P11435036558127374472.a, A062707, A062707.P7585015757933557598.a, A104634, A104634.P15686132702936156286.a, A213751, A213751.P3389573996948061720.a, A000292, A000292.P18322089543142633594.a, A002262, A002262.P12129691700837801527.a, A004736, A004736.P10337537277358081527.a, A025581, A025581.P420762180635059694.a, A104633, A104633.P12323607776174508310.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A049777, A049777.P827072266685734770.a, A057944, A057944.P16851463738746886639.a, A003056, A003056.P5318256527314048597.a, A112367, A112367.P5378126856570841990.a, A127739, A127739.P6291269565293973198.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A101321

/-! ## A101321.P13729373230014088109

`A004247(n)*A004736(n+1)/2+1`
-/

namespace A101321.P13729373230014088109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004247 n * A004736 (n + 1) : ℚ) / 2 + 1

end

end A101321.P13729373230014088109

namespace A101321

/-- `A004247(n)*A004736(n+1)/2+1` -/
def P13729373230014088109.Spec : Prop :=
  ∀ n, P13729373230014088109.a n = (A101321 n : ℚ)

end A101321

/-! ## A101321.P14031917185480581544

`2-(A000203(((-1)^n)²)-A062707(n))`
-/

namespace A101321.P14031917185480581544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A000203 (((-1) ^ n) ^ 2).toNat - A062707 n)

end

end A101321.P14031917185480581544

namespace A101321

/-- `2-(A000203(((-1)^n)²)-A062707(n))` -/
def P14031917185480581544.Spec : Prop :=
  ∀ n, P14031917185480581544.a n = A101321 n

end A101321

/-! ## A101321.P16393694357922975783

`A244911(A061579(n))`
-/

namespace A101321.P16393694357922975783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244911 (A061579 n).toNat

end

end A101321.P16393694357922975783

namespace A101321

/-- `A244911(A061579(n))` -/
def P16393694357922975783.Spec : Prop :=
  ∀ n, P16393694357922975783.a n = A101321 n

end A101321

/-! ## A101321.P871152561608896206

`A244911(A038722(n+1)-1)`
-/

namespace A101321.P871152561608896206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244911 (A038722 (n + 1) - 1).toNat

end

end A101321.P871152561608896206

namespace A101321

/-- `A244911(A038722(n+1)-1)` -/
def P871152561608896206.Spec : Prop :=
  ∀ n, P871152561608896206.a n = A101321 n

end A101321

/-! ## A101321.P2803511365727127592

`A244911(A038722(n+2))`
-/

namespace A101321.P2803511365727127592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244911 (A038722 (n + 2)).toNat

end

end A101321.P2803511365727127592

namespace A101321

/-- `A244911(A038722(n+2))` -/
def P2803511365727127592.Spec : Prop :=
  ∀ n, P2803511365727127592.a n = A101321 n

end A101321

/-! ## A101321.P14376997939167458789

`A008619(2*A062707(n))`
-/

namespace A101321.P14376997939167458789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A062707 n).toNat

end

end A101321.P14376997939167458789

namespace A101321

/-- `A008619(2*A062707(n))` -/
def P14376997939167458789.Spec : Prop :=
  ∀ n, P14376997939167458789.a n = A101321 n

end A101321

/-! ## A101321.P6433848945393062837

`A027656(2*A062707(n))`
-/

namespace A101321.P6433848945393062837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (2 * A062707 n).toNat

end

end A101321.P6433848945393062837

namespace A101321

/-- `A027656(2*A062707(n))` -/
def P6433848945393062837.Spec : Prop :=
  ∀ n, P6433848945393062837.a n = A101321 n

end A101321

/-! ## A101321.P12642762627172219193

`A028242(2*A062707(n))`
-/

namespace A101321.P12642762627172219193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A062707 n).toNat

end

end A101321.P12642762627172219193

namespace A101321

/-- `A028242(2*A062707(n))` -/
def P12642762627172219193.Spec : Prop :=
  ∀ n, P12642762627172219193.a n = A101321 n

end A101321

/-! ## A101321.P7351488644800587613

`A029579(2*A062707(n))`
-/

namespace A101321.P7351488644800587613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A062707 n).toNat

end

end A101321.P7351488644800587613

namespace A101321

/-- `A029579(2*A062707(n))` -/
def P7351488644800587613.Spec : Prop :=
  ∀ n, P7351488644800587613.a n = A101321 n

end A101321

/-! ## A101321.P6984411927806507990

`A052938(2*A062707(n))`
-/

namespace A101321.P6984411927806507990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A062707 n).toNat

end

end A101321.P6984411927806507990

namespace A101321

/-- `A052938(2*A062707(n))` -/
def P6984411927806507990.Spec : Prop :=
  ∀ n, P6984411927806507990.a n = A101321 n

end A101321

/-!
# A101322: a(n) = n - (least divisor of n >= the square root of n) + (greatest divisor of n <= the square root of n).

The programs for A101322, there is no canonical definition to state claims against.
-/

/-! ## A101322.P1131071387052436202

`n+1+A033676(n+1)-A033677(n+1)`
-/

namespace A101322.P1131071387052436202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A033676 (n + 1) - A033677 (n + 1)

end

end A101322.P1131071387052436202

/-! ## A101322.P3444282339322973382

`1-A056737(n+1)+n`
-/

namespace A101322.P3444282339322973382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A056737 (n + 1) + (n : ℤ)

end

end A101322.P3444282339322973382

/-! ## A101322.P15228130815336540006

`a(n-1)+1-A163984(n)` with `a(0)=1`
-/

namespace A101322.P15228130815336540006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (1 - A163984 n)

end

end A101322.P15228130815336540006

/-! ## A101322.P9210291715308615377

`1-(A056737(n-log2(1/2))-n)`
-/

namespace A101322.P9210291715308615377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A056737 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat - (n : ℤ))

end

end A101322.P9210291715308615377

/-! ## A101322.P15590341900346169223

`1-n%(A033677(n+1)+1)+n`
-/

namespace A101322.P15590341900346169223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (n : ℤ) (A033677 (n + 1) + 1) + (n : ℤ)

end

end A101322.P15590341900346169223

/-! ## A101322.P9071521145477595706

`1-Δ[A161416(round(sqrt(n²+1)))]+n`
-/

namespace A101322.P9071521145477595706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161416 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n) + (n : ℤ)

end

end A101322.P9071521145477595706

/-! ## A101322.P2555388820678908860

`Δ[n²]-n-A056737(Δ[n²]-n)`
-/

namespace A101322.P2555388820678908860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ) - A056737 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

end

end A101322.P2555388820678908860

/-! ## A101322.P12097694086643536326

`1-sqrt(A323728(n+1)-2*(n+1))+n`
-/

namespace A101322.P12097694086643536326
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 - Real.sqrt (A323728 (n + 1) - (2 * (n + 1) : ℤ) : ℝ) + (n : ℝ)

end

end A101322.P12097694086643536326

/-! ## A101322.P14689623824299431953

`A024000(A056737(n+1))+n`
-/

namespace A101322.P14689623824299431953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A056737 (n + 1)).toNat + (n : ℤ)

end

end A101322.P14689623824299431953

/-! ## A101322.P3626500681248536809

`abs(A056737(n+1)+A001478(n+1))`
-/

namespace A101322.P3626500681248536809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056737 (n + 1) + A001478 (n + 1)|

end

end A101322.P3626500681248536809

/-!
# A101323: Numbers n such that 2^n*(n+1)!-1 is prime.

The programs for A101323, there is no canonical definition to state claims against.
-/

/-! ## A101323.P18386669981213049944

`A336815(n)+A306548(A331330(n))`
-/

namespace A101323.P18386669981213049944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336815 n + A306548 (A331330 n).toNat

end

end A101323.P18386669981213049944

/-! ## A101323.P14188375012212101144

`A325323(n+1)+A010051(A168243(n))`
-/

namespace A101323.P14188375012212101144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325323 (n + 1) + A010051 (A168243 n).toNat

end

end A101323.P14188375012212101144

/-! ## A101323.P8630444158147277121

`A002024(∑[A130493(n+1)+A029575(n)])`
-/

namespace A101323.P8630444158147277121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130493 (n + 1) + A029575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A101323.P8630444158147277121

/-! ## A101323.P17236921573680279033

`A002024(∑[A130493(n+1)+A061140(n)])`
-/

namespace A101323.P17236921573680279033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130493 (n + 1) + A061140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A101323.P17236921573680279033

/-!
# A101324: Primes p such that p+1=C(q)=q-th composite and q is prime.

The programs for A101324, the canonical program `A101324.P581730034148578791` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101324 has offset 1).

The definition of A101324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101324.P4785947925996253922

`A227420(n+2)`
-/

namespace A101324.P4785947925996253922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227420 (n + 2)

end

end A101324.P4785947925996253922

namespace A101324

/-- `A227420(n+2)` -/
def P4785947925996253922.Spec : Prop :=
  ∀ n, P4785947925996253922.a n = A101324 (n + 1)

end A101324

/-! ## A101324.P581730034148578791

`p?[A078782(n+2)+1]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A101324

/-- `p?[A078782(n+2)+1]` -/
def P581730034148578791.Spec : Prop :=
  ∀ n, P581730034148578791.a n = A101324 (n + 1)

theorem P581730034148578791.correct : P581730034148578791.Spec := by
  intro n
  simp only [A101324, Nat.add_sub_cancel]

end A101324

/-! ## A101324.P2846622370436860788

`A064270(n+2)+A064269(n+2)`
-/

namespace A101324.P2846622370436860788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064270 (n + 2) + A064269 (n + 2)

end

end A101324.P2846622370436860788

namespace A101324

/-- `A064270(n+2)+A064269(n+2)` -/
def P2846622370436860788.Spec : Prop :=
  ∀ n, P2846622370436860788.a n = A101324 (n + 1)

end A101324

/-! ## A101324.P6985364224833105890

`A000040(A064269(n+2))`
-/

namespace A101324.P6985364224833105890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A064269 (n + 2)).toNat

end

end A101324.P6985364224833105890

namespace A101324

/-- `A000040(A064269(n+2))` -/
def P6985364224833105890.Spec : Prop :=
  ∀ n, P6985364224833105890.a n = A101324 (n + 1)

end A101324

/-! ## A101324.P3079123839351582027

`A008578(A064269(n+2)+1)`
-/

namespace A101324.P3079123839351582027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A064269 (n + 2) + 1).toNat

end

end A101324.P3079123839351582027

namespace A101324

/-- `A008578(A064269(n+2)+1)` -/
def P3079123839351582027.Spec : Prop :=
  ∀ n, P3079123839351582027.a n = A101324 (n + 1)

end A101324

/-! ## A101324.P6029093271814827022

`A002808(A064270(n+2))-1`
-/

namespace A101324.P6029093271814827022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A064270 (n + 2)).toNat - 1

end

end A101324.P6029093271814827022

namespace A101324

/-- `A002808(A064270(n+2))-1` -/
def P6029093271814827022.Spec : Prop :=
  ∀ n, P6029093271814827022.a n = A101324 (n + 1)

end A101324

/-! ## A101324.P2954456059386881518

`p?[A018252(A004139(n+1))+1]`
-/

namespace A101324.P2954456059386881518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A004139 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101324.P2954456059386881518

namespace A101324

/-- `p?[A018252(A004139(n+1))+1]` -/
def P2954456059386881518.Spec : Prop :=
  ∀ n, P2954456059386881518.a n = A101324 (n + 1)

end A101324

/-! ## A101324.P5077215245776033757

`p?[A018252(A065091(n+1))+1]`
-/

namespace A101324.P5077215245776033757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A065091 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101324.P5077215245776033757

namespace A101324

/-- `p?[A018252(A065091(n+1))+1]` -/
def P5077215245776033757.Spec : Prop :=
  ∀ n, P5077215245776033757.a n = A101324 (n + 1)

end A101324

/-! ## A101324.P17957894243872916199

`p?[A002808(2*n+1)-A010051(2*n+1)]`
-/

namespace A101324.P17957894243872916199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (2 * n + 1) - A010051 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101324.P17957894243872916199

namespace A101324

/-- `p?[A002808(2*n+1)-A010051(2*n+1)]` -/
def P17957894243872916199.Spec : Prop :=
  ∀ n, P17957894243872916199.a n = A101324 (n + 1)

end A101324

/-! ## A101324.P4827644637278449

`p?[A072022(p?[2*n+1])]`
-/

namespace A101324.P4827644637278449
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072022 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101324.P4827644637278449

namespace A101324

/-- `p?[A072022(p?[2*n+1])]` -/
def P4827644637278449.Spec : Prop :=
  ∀ n, P4827644637278449.a n = A101324 (n + 1)

end A101324

/-! ## A101324.P9045152436182505017

`p?[A072668(p?[2*n+1])]`
-/

namespace A101324.P9045152436182505017
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101324.P9045152436182505017

namespace A101324

/-- `p?[A072668(p?[2*n+1])]` -/
def P9045152436182505017.Spec : Prop :=
  ∀ n, P9045152436182505017.a n = A101324 (n + 1)

end A101324

/-! ## A101324.P11680429937458160196

`p?[A361708(p?[2*n+1])]`
-/

namespace A101324.P11680429937458160196
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361708 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101324.P11680429937458160196

namespace A101324

/-- `p?[A361708(p?[2*n+1])]` -/
def P11680429937458160196.Spec : Prop :=
  ∀ n, P11680429937458160196.a n = A101324 (n + 1)

end A101324

/-! ## A101324.P6424081474973806830

`A072022(A064270(n+2))`
-/

namespace A101324.P6424081474973806830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072022 (A064270 (n + 2)).toNat

end

end A101324.P6424081474973806830

namespace A101324

/-- `A072022(A064270(n+2))` -/
def P6424081474973806830.Spec : Prop :=
  ∀ n, P6424081474973806830.a n = A101324 (n + 1)

end A101324

/-! ## A101324.P18362900187955080228

`p?[A072022(A000040(n+2))]`
-/

namespace A101324.P18362900187955080228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072022 (A000040 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101324.P18362900187955080228

namespace A101324

/-- `p?[A072022(A000040(n+2))]` -/
def P18362900187955080228.Spec : Prop :=
  ∀ n, P18362900187955080228.a n = A101324 (n + 1)

end A101324

/-! ## A101324.P17771463113462327899

`p?[A060462(2*(n+1))+A005171(2*n+1)]`
-/

namespace A101324.P17771463113462327899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060462 (2 * (n + 1)) + A005171 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101324.P17771463113462327899

namespace A101324

/-- `p?[A060462(2*(n+1))+A005171(2*n+1)]` -/
def P17771463113462327899.Spec : Prop :=
  ∀ n, P17771463113462327899.a n = A101324 (n + 1)

end A101324

/-!
# A101328: Recurring numbers in the count of consecutive composite numbers between balanced primes and their lower or upper prime neighbors.

The programs for A101328, the canonical program `A101328.P2073670304859432399` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101328 has offset 2).

The definition of A101328 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101328.P2073670304859432399

`abs(1-6*n)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101328

/-- `abs(1-6*n)` -/
def P2073670304859432399.Spec : Prop :=
  ∀ n, P2073670304859432399.a n = A101328 (n + 2)

theorem P2073670304859432399.correct : P2073670304859432399.Spec := by
  intro n
  simp only [A101328, Nat.add_sub_cancel]

end A101328

/-!
# A101330: Array read by antidiagonals: T(n, k) = Knuth's Fibonacci (or circle) product of n and k ("n o k"), n >= 1, k >= 1.

The programs for A101330, there is no canonical definition to state claims against.
-/

/-! ## A101330.P4729105410652414002

`A135090(eq[0, A103451(n)])`
-/

namespace A101330.P4729105410652414002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A101330.P4729105410652414002

/-! ## A101330.P13073852114746969998

`A135090(eq[0, A103452(n)])`
-/

namespace A101330.P13073852114746969998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A101330.P13073852114746969998

/-! ## A101330.P5105809913413394756

`A135090(eq[0, A145677(n)])`
-/

namespace A101330.P5105809913413394756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A101330.P5105809913413394756

/-! ## A101330.P7527109440056719016

`A135090(lt[0, A135090(n)])`
-/

namespace A101330.P7527109440056719016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A101330.P7527109440056719016

/-! ## A101330.P13584921127681908601

`filter[A135090(n), A095792(#)]`
-/

namespace A101330.P13584921127681908601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A095792 (f1 j).toNat = 1) n)

end

end A101330.P13584921127681908601

/-! ## A101330.P4857008565778707658

`A135090(A014132(comp[∑[n]]))`
-/

namespace A101330.P4857008565778707658
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135090 (A014132 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A101330.P4857008565778707658

/-! ## A101330.P9275376681589794710

`A135090(A140978(n+1)-n)`
-/

namespace A101330.P9275376681589794710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135090 (A140978 (n + 1) - (n : ℤ)).toNat

end

end A101330.P9275376681589794710

/-! ## A101330.P15350335194272386253

`A135090(A131507(n)+3+n)`
-/

namespace A101330.P15350335194272386253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135090 (A131507 n + 3 + (n : ℤ)).toNat

end

end A101330.P15350335194272386253

/-! ## A101330.P11460649966720266770

`A135090(comp[n-A135090(n)²])`
-/

namespace A101330.P11460649966720266770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A135090 n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135090 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A101330.P11460649966720266770

/-! ## A101330.P318986044059231233

`A135090(2*A014132(n+1)-n)`
-/

namespace A101330.P318986044059231233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135090 (2 * A014132 (n + 1) - (n : ℤ)).toNat

end

end A101330.P318986044059231233

/-! ## A101330.P12874277501495953185

`A135090(eq[1, A057427(A135090(n))])`
-/

namespace A101330.P12874277501495953185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A135090 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A101330.P12874277501495953185

/-!
# A101332: a(n) = Knuth's Fibonacci (or circle) square "n o n".

The programs for A101332, the canonical program `A101332.P12137526032187480116` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101332 has offset 1).

The definition of A101332 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101332.P12137526032187480116

`(n+1)*∑[A050141(n+1)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A101332

/-- `(n+1)*∑[A050141(n+1)]` -/
def P12137526032187480116.Spec : Prop :=
  ∀ n, P12137526032187480116.a n = A101332 (n + 1)

theorem P12137526032187480116.correct : P12137526032187480116.Spec := by
  intro n
  simp only [A101332, Nat.add_sub_cancel]

end A101332

/-! ## A101332.P17979018357285534150

`(n+1)*(A050140(n+2)-1)`
-/

namespace A101332.P17979018357285534150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A050140 (n + 2) - 1)

end

end A101332.P17979018357285534150

namespace A101332

/-- `(n+1)*(A050140(n+2)-1)` -/
def P17979018357285534150.Spec : Prop :=
  ∀ n, P17979018357285534150.a n = A101332 (n + 1)

end A101332

/-! ## A101332.P12826129270318942980

`(n+1)*(A284625(n+2)-3)`
-/

namespace A101332.P12826129270318942980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A284625 (n + 2) - 3)

end

end A101332.P12826129270318942980

namespace A101332

/-- `(n+1)*(A284625(n+2)-3)` -/
def P12826129270318942980.Spec : Prop :=
  ∀ n, P12826129270318942980.a n = A101332 (n + 1)

end A101332

/-! ## A101332.P8318866651571080450

`(n+1)*∑[2*A005614(n)+1]`
-/

namespace A101332.P8318866651571080450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005614 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101332.P8318866651571080450

namespace A101332

/-- `(n+1)*∑[2*A005614(n)+1]` -/
def P8318866651571080450.Spec : Prop :=
  ∀ n, P8318866651571080450.a n = A101332 (n + 1)

end A101332

/-! ## A101332.P11386683339253784480

`(n+1)*(A075317(n+2)-(n+2))`
-/

namespace A101332.P11386683339253784480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A075317 (n + 2) - (n + 2 : ℤ))

end

end A101332.P11386683339253784480

namespace A101332

/-- `(n+1)*(A075317(n+2)-(n+2))` -/
def P11386683339253784480.Spec : Prop :=
  ∀ n, P11386683339253784480.a n = A101332 (n + 1)

end A101332

/-! ## A101332.P10217524359122464612

`(n+1)*(A283233(n+2)-(n+3))`
-/

namespace A101332.P10217524359122464612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A283233 (n + 2) - (n + 3 : ℤ))

end

end A101332.P10217524359122464612

namespace A101332

/-- `(n+1)*(A283233(n+2)-(n+3))` -/
def P10217524359122464612.Spec : Prop :=
  ∀ n, P10217524359122464612.a n = A101332 (n + 1)

end A101332

/-! ## A101332.P8446538590973445047

`(2*A005206(n+1)+n+1)*(n+1)`
-/

namespace A101332.P8446538590973445047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A005206 (n + 1) + (n + 1 : ℤ)) * (n + 1 : ℤ)

end

end A101332.P8446538590973445047

namespace A101332

/-- `(2*A005206(n+1)+n+1)*(n+1)` -/
def P8446538590973445047.Spec : Prop :=
  ∀ n, P8446538590973445047.a n = A101332 (n + 1)

end A101332

/-! ## A101332.P17195011592863732597

`(n+1)*A063732(A000201(n+2))`
-/

namespace A101332.P17195011592863732597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A063732 (A000201 (n + 2)).toNat

end

end A101332.P17195011592863732597

namespace A101332

/-- `(n+1)*A063732(A000201(n+2))` -/
def P17195011592863732597.Spec : Prop :=
  ∀ n, P17195011592863732597.a n = A101332 (n + 1)

end A101332

/-! ## A101332.P12701861249405290598

`(n+1)*A063732(A066096(n+2))`
-/

namespace A101332.P12701861249405290598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A063732 (A066096 (n + 2)).toNat

end

end A101332.P12701861249405290598

namespace A101332

/-- `(n+1)*A063732(A066096(n+2))` -/
def P12701861249405290598.Spec : Prop :=
  ∀ n, P12701861249405290598.a n = A101332 (n + 1)

end A101332

/-! ## A101332.P1670731455372897271

`A022342(n+2)²-A005206(n+1)²`
-/

namespace A101332.P1670731455372897271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (n + 2) ^ 2 - A005206 (n + 1) ^ 2

end

end A101332.P1670731455372897271

namespace A101332

/-- `A022342(n+2)²-A005206(n+1)²` -/
def P1670731455372897271.Spec : Prop :=
  ∀ n, P1670731455372897271.a n = A101332 (n + 1)

end A101332

/-! ## A101332.P17723175599473351884

`(n+1)*∑[A000201(Δ[A000201(n+1)])]`
-/

namespace A101332.P17723175599473351884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101332.P17723175599473351884

namespace A101332

/-- `(n+1)*∑[A000201(Δ[A000201(n+1)])]` -/
def P17723175599473351884.Spec : Prop :=
  ∀ n, P17723175599473351884.a n = A101332 (n + 1)

end A101332

/-! ## A101332.P13006596452665359286

`(n+1)*∑[A133512(Δ[A005206(n)]+1)]`
-/

namespace A101332.P13006596452665359286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133512 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101332.P13006596452665359286

namespace A101332

/-- `(n+1)*∑[A133512(Δ[A005206(n)]+1)]` -/
def P13006596452665359286.Spec : Prop :=
  ∀ n, P13006596452665359286.a n = A101332 (n + 1)

end A101332

/-! ## A101332.P11122860618016383355

`A371388(n+2)-(A022342(n+2)+A000201(n+2))`
-/

namespace A101332.P11122860618016383355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371388 (n + 2) - (A022342 (n + 2) + A000201 (n + 2))

end

end A101332.P11122860618016383355

namespace A101332

/-- `A371388(n+2)-(A022342(n+2)+A000201(n+2))` -/
def P11122860618016383355.Spec : Prop :=
  ∀ n, P11122860618016383355.a n = A101332 (n + 1)

end A101332

/-!
# A101333: A081254-A072762.

The programs for A101333, there is no canonical definition to state claims against.
-/

/-! ## A101333.P13319811462576645116

`floor(5*2^n/3)-A072762(n+2)`
-/

namespace A101333.P13319811462576645116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * ((2 ^ n : ℚ) / 3)⌋ - A072762 (n + 2)

end

end A101333.P13319811462576645116

/-! ## A101333.P13017672021152601278

`and(A000975(n), A118255(n+2))`
-/

namespace A101333.P13017672021152601278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000975 n) (A118255 (n + 2))

end

end A101333.P13017672021152601278

/-! ## A101333.P12808293267212685608

`A118255(n+2)-A081253(n+1)`
-/

namespace A101333.P12808293267212685608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118255 (n + 2) - A081253 (n + 1)

end

end A101333.P12808293267212685608

/-! ## A101333.P13262050272706312211

`and(A081254(n+1), A118255(n+2))`
-/

namespace A101333.P13262050272706312211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A081254 (n + 1)) (A118255 (n + 2))

end

end A101333.P13262050272706312211

/-! ## A101333.P4287085064129005876

`xor(A072762(n+2), A081254(n+1))`
-/

namespace A101333.P4287085064129005876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A072762 (n + 2)) (A081254 (n + 1))

end

end A101333.P4287085064129005876

/-!
# A101334: a(n) = n^n - (n+1)^(n-1).

The programs for A101334, the canonical program `A101334.P5724577027891316913` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101334 has offset 0).

The definition of A101334 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101334.P5724577027891316913

`n^n-(n+1)^(n-1)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101334

/-- `n^n-(n+1)^(n-1)` -/
def P5724577027891316913.Spec : Prop :=
  ∀ n, P5724577027891316913.a n = (A101334 n : ℚ)

end A101334

/-! ## A101334.P10806713568119331254

`abs(A000312(n)-Δ[A173249(n)])`
-/

namespace A101334.P10806713568119331254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000312 n - (f1 (n + 1) - f1 n)|

end

end A101334.P10806713568119331254

namespace A101334

/-- `abs(A000312(n)-Δ[A173249(n)])` -/
def P10806713568119331254.Spec : Prop :=
  ∀ n, P10806713568119331254.a n = A101334 n

end A101334

/-! ## A101334.P17242648417559978693

`abs(A000272(n+1)-A000312(n))`
-/

namespace A101334.P17242648417559978693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000272 (n + 1) - A000312 n|

end

end A101334.P17242648417559978693

namespace A101334

/-- `abs(A000272(n+1)-A000312(n))` -/
def P17242648417559978693.Spec : Prop :=
  ∀ n, P17242648417559978693.a n = A101334 n

end A101334

/-! ## A101334.P11402713449200067657

`A055861(n)%A055869(round(sqrt(n²+1)))`
-/

namespace A101334.P11402713449200067657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055861 n) (A055869 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat)

end

end A101334.P11402713449200067657

namespace A101334

/-- `A055861(n)%A055869(round(sqrt(n²+1)))` -/
def P11402713449200067657.Spec : Prop :=
  ∀ n, P11402713449200067657.a n = A101334 n

end A101334

/-! ## A101334.P1171462545689911836

`A053506(n+1)%A055869(round(sqrt(n²+1)))`
-/

namespace A101334.P1171462545689911836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053506 (n + 1)) (A055869 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat)

end

end A101334.P1171462545689911836

namespace A101334

/-- `A053506(n+1)%A055869(round(sqrt(n²+1)))` -/
def P1171462545689911836.Spec : Prop :=
  ∀ n, P1171462545689911836.a n = A101334 n

end A101334

/-! ## A101334.P2311801521786271338

`(A053506(n+1)+A000312(n))%A000169(n+1)`
-/

namespace A101334.P2311801521786271338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053506 (n + 1) + A000312 n) (A000169 (n + 1))

end

end A101334.P2311801521786271338

namespace A101334

/-- `(A053506(n+1)+A000312(n))%A000169(n+1)` -/
def P2311801521786271338.Spec : Prop :=
  ∀ n, P2311801521786271338.a n = A101334 n

end A101334

/-!
# A101335: Let n = d_1 d_2 ... d_k in base 10 and f(n) = Sum_{i=1..k} d_i^k; sequence gives numbers n such that n != f(n) but n = f(f(n)).

The programs for A101335, there is no canonical definition to state claims against.
-/

/-! ## A101335.P376274839733009725

`A262615(record[A344531(n)+1])`
-/

namespace A101335.P376274839733009725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344531 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262615 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A101335.P376274839733009725

/-! ## A101335.P6808462461260993731

`A264958(record[A344531(n)+1])`
-/

namespace A101335.P6808462461260993731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344531 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264958 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A101335.P6808462461260993731

/-!
# A101337: Sum of (each digit of n raised to the power (number of digits in n)).

The programs for A101337, the canonical program `A101337.P13079162381244238891` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101337 has offset 1).

The definition of A101337 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101337.P13079162381244238891

`∑{digits}[n+1, #^A055642(n)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A101337

/-- `∑{digits}[n+1, #^A055642(n)]` -/
def P13079162381244238891.Spec : Prop :=
  ∀ n, P13079162381244238891.a n = (A101337 (n + 1) : ℚ)

end A101337

/-! ## A101337.P1216251246747810341

`∑{digits}[n+1, #^dr(A348783(n))]`
-/

namespace A101337.P1216251246747810341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ SequenceMachineLib.digitalRoot (A348783 n)).sum

end

end A101337.P1216251246747810341

namespace A101337

/-- `∑{digits}[n+1, #^dr(A348783(n))]` -/
def P1216251246747810341.Spec : Prop :=
  ∀ n, (P1216251246747810341.a n : ℤ) = A101337 (n + 1)

end A101337

/-! ## A101337.P11574997519882849218

`∑{digits}[A048376(n+1), #^A004216(n+1)]`
-/

namespace A101337.P11574997519882849218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048376 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (x : ℚ) ^ (A004216 (n + 1) : ℤ)).sum

end

end A101337.P11574997519882849218

namespace A101337

/-- `∑{digits}[A048376(n+1), #^A004216(n+1)]` -/
def P11574997519882849218.Spec : Prop :=
  ∀ n, P11574997519882849218.a n = (A101337 (n + 1) : ℚ)

end A101337

/-! ## A101337.P11876768225550866798

`∑{digits}[n+1, #^A276502(n+1)]`
-/

namespace A101337.P11876768225550866798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℚ) ^ (A276502 (n + 1) : ℤ)).sum

end

end A101337.P11876768225550866798

namespace A101337

/-- `∑{digits}[n+1, #^A276502(n+1)]` -/
def P11876768225550866798.Spec : Prop :=
  ∀ n, P11876768225550866798.a n = (A101337 (n + 1) : ℚ)

end A101337

/-! ## A101337.P4567243080736629694

`gcd(A003132(n+1), A007954(A051022(n+1)))`
-/

namespace A101337.P4567243080736629694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003132 (n + 1)) (A007954 (A051022 (n + 1)).toNat)

end

end A101337.P4567243080736629694

namespace A101337

/-- `gcd(A003132(n+1), A007954(A051022(n+1)))` -/
def P4567243080736629694.Spec : Prop :=
  ∀ n, (P4567243080736629694.a n : ℤ) = A101337 (n + 1)

end A101337

/-!
# A101338: Antidiagonal sums in A101321.

The programs for A101338, the canonical program `A101338.P10530776329656726949` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101338 has offset 0).

The definition of A101338 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101338.P10530776329656726949

`n^4/24+n^3/12-n²/24+11*n/12+1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101338

/-- `n^4/24+n^3/12-n²/24+11*n/12+1` -/
def P10530776329656726949.Spec : Prop :=
  ∀ n, P10530776329656726949.a n = (A101338 n : ℚ)

end A101338

/-! ## A101338.P15799619038471647844

`∑[∑[C(n, 2)]+1]`
-/

namespace A101338.P15799619038471647844
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101338.P15799619038471647844

namespace A101338

/-- `∑[∑[C(n, 2)]+1]` -/
def P15799619038471647844.Spec : Prop :=
  ∀ n, (P15799619038471647844.a n : ℤ) = A101338 n

end A101338

/-! ## A101338.P10874963430046149547

`floor(∑[a(n-1)-(n-∑[n])])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A101338.P10874963430046149547
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101338.P10874963430046149547

namespace A101338

/-- `floor(∑[a(n-1)-(n-∑[n])])` -/
def P10874963430046149547.Spec : Prop :=
  ∀ n, P10874963430046149547.a n = A101338 n

end A101338

/-! ## A101338.P6157146281571875709

`∑[a(n-1)-(n-n²)]/2` with `a(0)=2`
-/

namespace A101338.P6157146281571875709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) - ((n : ℤ) - (n ^ 2 : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A101338.P6157146281571875709

namespace A101338

/-- `∑[a(n-1)-(n-n²)]/2` -/
def P6157146281571875709.Spec : Prop :=
  ∀ n, P6157146281571875709.a n = (A101338 n : ℚ)

end A101338

/-! ## A101338.P2979979985057022585

`∑[A000125(n)-n]`
-/

namespace A101338.P2979979985057022585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101338.P2979979985057022585

namespace A101338

/-- `∑[A000125(n)-n]` -/
def P2979979985057022585.Spec : Prop :=
  ∀ n, P2979979985057022585.a n = A101338 n

end A101338

/-! ## A101338.P14915709723248779962

`∑[A121968(n+1)-n²]`
-/

namespace A101338.P14915709723248779962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121968 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101338.P14915709723248779962

namespace A101338

/-- `∑[A121968(n+1)-n²]` -/
def P14915709723248779962.Spec : Prop :=
  ∀ n, P14915709723248779962.a n = A101338 n

end A101338

/-! ## A101338.P15371270043115367380

`∑[A011826(n+1)-(n+1)]`
-/

namespace A101338.P15371270043115367380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011826 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101338.P15371270043115367380

namespace A101338

/-- `∑[A011826(n+1)-(n+1)]` -/
def P15371270043115367380.Spec : Prop :=
  ∀ n, P15371270043115367380.a n = A101338 n

end A101338

/-! ## A101338.P12153587237344800437

`∑[A050407(n+2)]`
-/

namespace A101338.P12153587237344800437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050407 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101338.P12153587237344800437

namespace A101338

/-- `∑[A050407(n+2)]` -/
def P12153587237344800437.Spec : Prop :=
  ∀ n, P12153587237344800437.a n = A101338 n

end A101338

/-! ## A101338.P17816688994298784800

`∑[A051631(∑[n+3])]`
-/

namespace A101338.P17816688994298784800
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051631 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101338.P17816688994298784800

namespace A101338

/-- `∑[A051631(∑[n+3])]` -/
def P17816688994298784800.Spec : Prop :=
  ∀ n, P17816688994298784800.a n = A101338 n

end A101338

/-! ## A101338.P13122008057059052282

`∑[∑[A165007(2*n+1)]]`
-/

namespace A101338.P13122008057059052282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165007 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101338.P13122008057059052282

namespace A101338

/-- `∑[∑[A165007(2*n+1)]]` -/
def P13122008057059052282.Spec : Prop :=
  ∀ n, P13122008057059052282.a n = A101338 n

end A101338

/-!
# A101339: a(n) = prime(n)^prime(n)-prime(n).

The programs for A101339, the canonical program `A101339.P9413652513648766075` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101339 has offset 1).

The definition of A101339 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101339.P9413652513648766075

`A061190(A000040(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A101339

/-- `A061190(A000040(n+1))` -/
def P9413652513648766075.Spec : Prop :=
  ∀ n, P9413652513648766075.a n = A101339 (n + 1)

theorem P9413652513648766075.correct : P9413652513648766075.Spec := by
  intro n
  simp only [A101339, Nat.add_sub_cancel]

end A101339

/-! ## A101339.P3273721197648761537

`record[∑{p}[n+2, #^#-#]]`
-/

namespace A101339.P3273721197648761537
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ((p ^ p : ℤ) - (p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101339.P3273721197648761537

namespace A101339

/-- `record[∑{p}[n+2, #^#-#]]` -/
def P3273721197648761537.Spec : Prop :=
  ∀ n, P3273721197648761537.a n = A101339 (n + 1)

end A101339

/-! ## A101339.P9127663569356345837

`record[∏{p}[n+2, #^#-#]]`
-/

namespace A101339.P9127663569356345837
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((p ^ p : ℤ) - (p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101339.P9127663569356345837

namespace A101339

/-- `record[∏{p}[n+2, #^#-#]]` -/
def P9127663569356345837.Spec : Prop :=
  ∀ n, P9127663569356345837.a n = A101339 (n + 1)

end A101339

/-! ## A101339.P16956205742679943935

`record[(n+2)^A006530(n+2)-(n+2)]`
-/

namespace A101339.P16956205742679943935
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A006530 (n + 2) : ℤ) - (n + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101339.P16956205742679943935

namespace A101339

/-- `record[(n+2)^A006530(n+2)-(n+2)]` -/
def P16956205742679943935.Spec : Prop :=
  ∀ n, P16956205742679943935.a n = (A101339 (n + 1) : ℚ)

end A101339

/-! ## A101339.P13815570167535277597

`A051674(n+1)-A000040(n+1)`
-/

namespace A101339.P13815570167535277597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051674 (n + 1) - A000040 (n + 1)

end

end A101339.P13815570167535277597

namespace A101339

/-- `A051674(n+1)-A000040(n+1)` -/
def P13815570167535277597.Spec : Prop :=
  ∀ n, P13815570167535277597.a n = A101339 (n + 1)

end A101339

/-!
# A101340: a(n) = p^p + p, with p = prime(n).

The programs for A101340, the canonical program `A101340.P17215631478577904943` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101340 has offset 1).

The definition of A101340 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101340.P17215631478577904943

`A051674(n+1)+A000040(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A101340

/-- `A051674(n+1)+A000040(n+1)` -/
def P17215631478577904943.Spec : Prop :=
  ∀ n, P17215631478577904943.a n = A101340 (n + 1)

theorem P17215631478577904943.correct : P17215631478577904943.Spec := by
  intro n
  simp only [A101340, Nat.add_sub_cancel]

end A101340

/-! ## A101340.P3305755888855278572

`record[∑{p}[n+2, #^#+#]]`
-/

namespace A101340.P3305755888855278572
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), (p ^ p + p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101340.P3305755888855278572

namespace A101340

/-- `record[∑{p}[n+2, #^#+#]]` -/
def P3305755888855278572.Spec : Prop :=
  ∀ n, (P3305755888855278572.a n : ℤ) = A101340 (n + 1)

end A101340

/-! ## A101340.P1497360255865063022

`record[∏{p}[n+2, #^#+#]]`
-/

namespace A101340.P1497360255865063022
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (p ^ p + p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101340.P1497360255865063022

namespace A101340

/-- `record[∏{p}[n+2, #^#+#]]` -/
def P1497360255865063022.Spec : Prop :=
  ∀ n, (P1497360255865063022.a n : ℤ) = A101340 (n + 1)

end A101340

/-! ## A101340.P17953468136540345900

`record[(n+2)^A006530(n+2)+n+2]`
-/

namespace A101340.P17953468136540345900
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A006530 (n + 2) : ℤ) + (n + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101340.P17953468136540345900

namespace A101340

/-- `record[(n+2)^A006530(n+2)+n+2]` -/
def P17953468136540345900.Spec : Prop :=
  ∀ n, P17953468136540345900.a n = (A101340 (n + 1) : ℚ)

end A101340

/-! ## A101340.P14400865517436301361

`A066108(record[A006530(n+2)])`
-/

namespace A101340.P14400865517436301361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066108 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A101340.P14400865517436301361

namespace A101340

/-- `A066108(record[A006530(n+2)])` -/
def P14400865517436301361.Spec : Prop :=
  ∀ n, P14400865517436301361.a n = A101340 (n + 1)

end A101340

/-!
# A101342: Fibonacci-Mersenne numbers: a(n) = Fibonacci(2^n-1).

The programs for A101342, the canonical program `A101342.P11648604390926055153` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101342 has offset 0).

The definition of A101342 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101342.P11648604390926055153

`A000045(A000225(n))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A101342

/-- `A000045(A000225(n))` -/
def P11648604390926055153.Spec : Prop :=
  ∀ n, P11648604390926055153.a n = A101342 n

theorem P11648604390926055153.correct : P11648604390926055153.Spec := by
  intro n
  simp only [A101342]

end A101342

/-! ## A101342.P6056053722795927074

`A212804(2^n)`
-/

namespace A101342.P6056053722795927074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (2 ^ n)

end

end A101342.P6056053722795927074

namespace A101342

/-- `A212804(2^n)` -/
def P6056053722795927074.Spec : Prop :=
  ∀ n, P6056053722795927074.a n = A101342 n

end A101342

/-! ## A101342.P3540319654354638112

`A103609(∑[2^n])`
-/

namespace A101342.P3540319654354638112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101342.P3540319654354638112

namespace A101342

/-- `A103609(∑[2^n])` -/
def P3540319654354638112.Spec : Prop :=
  ∀ n, P3540319654354638112.a n = A101342 n

end A101342

/-! ## A101342.P12035808125985850629

`A129982(∑[2^n])`
-/

namespace A101342.P12035808125985850629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129982 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101342.P12035808125985850629

namespace A101342

/-- `A129982(∑[2^n])` -/
def P12035808125985850629.Spec : Prop :=
  ∀ n, P12035808125985850629.a n = A101342 n

end A101342

/-! ## A101342.P1288269862046427653

`A303427(∑[2^n])`
-/

namespace A101342.P1288269862046427653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303427 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101342.P1288269862046427653

namespace A101342

/-- `A303427(∑[2^n])` -/
def P1288269862046427653.Spec : Prop :=
  ∀ n, P1288269862046427653.a n = A101342 n

end A101342

/-!
# A101343: Triangle read by rows: nonzero coefficients of the polynomials F_n(x) which express derivatives of tan(z) in terms of powers of tan(z).

The programs for A101343, there is no canonical definition to state claims against.
-/

/-! ## A101343.P15262622162755101668

`A009223(A003080(n)+A000035(n))`
-/

namespace A101343.P15262622162755101668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009223 (A003080 n + A000035 n).toNat

end

end A101343.P15262622162755101668

/-! ## A101343.P17098135641086547350

`A009223(A238618(n+1)+A003080(n))`
-/

namespace A101343.P17098135641086547350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009223 (A238618 (n + 1) + A003080 n).toNat

end

end A101343.P17098135641086547350

/-! ## A101343.P15496242764455567048

`and(A000005(A000246(n)), A049313(n+1))`
-/

namespace A101343.P15496242764455567048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000005 (A000246 n).toNat) (A049313 (n + 1))

end

end A101343.P15496242764455567048

/-! ## A101343.P15049396674106699617

`A009223(A038189(n²+5)+A003080(n))`
-/

namespace A101343.P15049396674106699617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009223 (A038189 (n ^ 2 + 5) + A003080 n).toNat

end

end A101343.P15049396674106699617

/-! ## A101343.P6467852605595993414

`A014673(n+1)*A201159(A357629(n+1)!)`
-/

namespace A101343.P6467852605595993414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (n + 1) * A201159 (Nat.factorial (A357629 (n + 1)).toNat)

end

end A101343.P6467852605595993414

/-!
# A101344: Number of primes between prime(n) and 3prime(n).

The programs for A101344, there is no canonical definition to state claims against.
-/

/-! ## A101344.P6374702466872304511

`A020901(n+1)-(n+1)`
-/

namespace A101344.P6374702466872304511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020901 (n + 1) - (n + 1 : ℤ)

end

end A101344.P6374702466872304511

/-! ## A101344.P449000288785090144

`A298864(n+1)-2*(n+1)`
-/

namespace A101344.P449000288785090144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298864 (n + 1) - (2 * (n + 1) : ℤ)

end

end A101344.P449000288785090144

/-! ## A101344.P12458010654797118262

`A000720(3*p?[round(8*n/7)])-(n+1)`
-/

namespace A101344.P12458010654797118262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - (n + 1 : ℤ)

end

end A101344.P12458010654797118262

/-! ## A101344.P8938461591438372788

`A000720(A001748(n+1))-(n+1)`
-/

namespace A101344.P8938461591438372788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001748 (n + 1)).toNat - (n + 1 : ℤ)

end

end A101344.P8938461591438372788

/-! ## A101344.P2922197513988210872

`A000720(A370009(n+1))-(n+2)`
-/

namespace A101344.P2922197513988210872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A370009 (n + 1)).toNat - (n + 2 : ℤ)

end

end A101344.P2922197513988210872

/-! ## A101344.P13669636965776045806

`A037037(p?[xor(1, n)])-1`
-/

namespace A101344.P13669636965776045806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037037 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) - 1

end

end A101344.P13669636965776045806

/-! ## A101344.P13280899406792585439

`A074990(A000040(n+1))`
-/

namespace A101344.P13280899406792585439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074990 (A000040 (n + 1)).toNat

end

end A101344.P13280899406792585439

/-! ## A101344.P17194521836165425252

`A074990(A006005(n+1))`
-/

namespace A101344.P17194521836165425252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074990 (A006005 (n + 1)).toNat

end

end A101344.P17194521836165425252

/-! ## A101344.P11153529162238655430

`A074990(A008578(n+2))`
-/

namespace A101344.P11153529162238655430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074990 (A008578 (n + 2)).toNat

end

end A101344.P11153529162238655430

/-! ## A101344.P7558077433342724502

`A074990(A075643(n+2))`
-/

namespace A101344.P7558077433342724502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074990 (A075643 (n + 2)).toNat

end

end A101344.P7558077433342724502

/-! ## A101344.P3872187939444869388

`A074990(A171525(n+2))`
-/

namespace A101344.P3872187939444869388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074990 (A171525 (n + 2)).toNat

end

end A101344.P3872187939444869388

/-! ## A101344.P13571931810017014707

`A074990(A182986(n+2))`
-/

namespace A101344.P13571931810017014707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074990 (A182986 (n + 2)).toNat

end

end A101344.P13571931810017014707

/-! ## A101344.P642555093582630095

`A037037(p?[A128054(n)])-1`
-/

namespace A101344.P642555093582630095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037037 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A101344.P642555093582630095

/-! ## A101344.P3029571983926989113

`A037037(record[A006530(n+2)])-1`
-/

namespace A101344.P3029571983926989113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037037 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A101344.P3029571983926989113

/-! ## A101344.P10410307832976285276

`A037037(record[A014963(n+2)])-1`
-/

namespace A101344.P10410307832976285276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037037 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A101344.P10410307832976285276

/-! ## A101344.P15977476201507313543

`A033270(3*A000040(n+1))-n`
-/

namespace A101344.P15977476201507313543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (3 * A000040 (n + 1)).toNat - (n : ℤ)

end

end A101344.P15977476201507313543

/-!
# A101345: a(n) = Knuth's Fibonacci (or circle) product "2 o n".

The programs for A101345, the canonical program `A101345.P11977815776574156688` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101345 has offset 1).

The definition of A101345 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101345.P11977815776574156688

`floor(ϕ^3*(n+2))-3-floor(2*ϕ*(n+2))+2*floor(ϕ*(n+2))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101345

/-- `floor(ϕ^3*(n+2))-3-floor(2*ϕ*(n+2))+2*floor(ϕ*(n+2))` -/
def P11977815776574156688.Spec : Prop :=
  ∀ n, P11977815776574156688.a n = A101345 (n + 1)

theorem P11977815776574156688.correct : P11977815776574156688.Spec := by
  intro n
  simp only [A101345, Nat.add_sub_cancel]

end A101345

/-! ## A101345.P2558177228849833792

`∑[A194584(n+1)]`
-/

namespace A101345.P2558177228849833792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101345.P2558177228849833792

namespace A101345

/-- `∑[A194584(n+1)]` -/
def P2558177228849833792.Spec : Prop :=
  ∀ n, P2558177228849833792.a n = A101345 (n + 1)

end A101345

/-! ## A101345.P7308956943207164920

`∑[A050141(n+1)+2]`
-/

namespace A101345.P7308956943207164920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050141 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101345.P7308956943207164920

namespace A101345

/-- `∑[A050141(n+1)+2]` -/
def P7308956943207164920.Spec : Prop :=
  ∀ n, P7308956943207164920.a n = A101345 (n + 1)

end A101345

/-! ## A101345.P7940156287791205660

`∑[2*A014675(n)+1]`
-/

namespace A101345.P7940156287791205660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014675 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101345.P7940156287791205660

namespace A101345

/-- `∑[2*A014675(n)+1]` -/
def P7940156287791205660.Spec : Prop :=
  ∀ n, P7940156287791205660.a n = A101345 (n + 1)

end A101345

/-! ## A101345.P623188234758159100

`∑[A000040(Δ[floor((n+1)*ϕ²)])]`
-/

namespace A101345.P623188234758159100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.goldenRatio ^ 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101345.P623188234758159100

namespace A101345

/-- `∑[A000040(Δ[floor((n+1)*ϕ²)])]` -/
def P623188234758159100.Spec : Prop :=
  ∀ n, P623188234758159100.a n = A101345 (n + 1)

end A101345

/-! ## A101345.P16226548935185825215

`∑[A000045(Δ[floor((n+1)/ϕ)]+4)]`
-/

namespace A101345.P16226548935185825215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f2 (n + 1) - f2 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101345.P16226548935185825215

namespace A101345

/-- `∑[A000045(Δ[floor((n+1)/ϕ)]+4)]` -/
def P16226548935185825215.Spec : Prop :=
  ∀ n, P16226548935185825215.a n = A101345 (n + 1)

end A101345

/-! ## A101345.P2661989696047825111

`∑[A007318(8*Δ[floor(ϕ*(n+1))])]`
-/

namespace A101345.P2661989696047825111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (8 * (f2 (n + 1) - f2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101345.P2661989696047825111

namespace A101345

/-- `∑[A007318(8*Δ[floor(ϕ*(n+1))])]` -/
def P2661989696047825111.Spec : Prop :=
  ∀ n, P2661989696047825111.a n = A101345 (n + 1)

end A101345

/-! ## A101345.P2294965622845842807

`∪[A101642(n+1), A035338(n)]`
-/

namespace A101345.P2294965622845842807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035338 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A101345.P2294965622845842807

namespace A101345

/-- `∪[A101642(n+1), A035338(n)]` -/
def P2294965622845842807.Spec : Prop :=
  ∀ n, (P2294965622845842807.a n : ℤ) = A101345 (n + 1)

end A101345

/-! ## A101345.P2015484023576064858

`A022413(A026273(n+1))`
-/

namespace A101345.P2015484023576064858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022413 (A026273 (n + 1)).toNat

end

end A101345.P2015484023576064858

namespace A101345

/-- `A022413(A026273(n+1))` -/
def P2015484023576064858.Spec : Prop :=
  ∀ n, P2015484023576064858.a n = A101345 (n + 1)

end A101345

/-! ## A101345.P14340237980421988732

`A022413(A022342(n+2)-1)`
-/

namespace A101345.P14340237980421988732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022413 (A022342 (n + 2) - 1).toNat

end

end A101345.P14340237980421988732

namespace A101345

/-- `A022413(A022342(n+2)-1)` -/
def P14340237980421988732.Spec : Prop :=
  ∀ n, P14340237980421988732.a n = A101345 (n + 1)

end A101345

/-! ## A101345.P14820908097362565165

`A022413(A000201(n+2)-2)`
-/

namespace A101345.P14820908097362565165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022413 (A000201 (n + 2) - 2).toNat

end

end A101345.P14820908097362565165

namespace A101345

/-- `A022413(A000201(n+2)-2)` -/
def P14820908097362565165.Spec : Prop :=
  ∀ n, P14820908097362565165.a n = A101345 (n + 1)

end A101345

/-! ## A101345.P2007948355981824027

`A004937(A022342(n+2))`
-/

namespace A101345.P2007948355981824027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 (A022342 (n + 2)).toNat

end

end A101345.P2007948355981824027

namespace A101345

/-- `A004937(A022342(n+2))` -/
def P2007948355981824027.Spec : Prop :=
  ∀ n, P2007948355981824027.a n = A101345 (n + 1)

end A101345

/-! ## A101345.P7564386839161695078

`A026274(A026273(n+1)+1)`
-/

namespace A101345.P7564386839161695078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026274 (A026273 (n + 1) + 1).toNat

end

end A101345.P7564386839161695078

namespace A101345

/-- `A026274(A026273(n+1)+1)` -/
def P7564386839161695078.Spec : Prop :=
  ∀ n, P7564386839161695078.a n = A101345 (n + 1)

end A101345

/-! ## A101345.P5309686677175348369

`A026274(A000201(n+2)-1)`
-/

namespace A101345.P5309686677175348369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026274 (A000201 (n + 2) - 1).toNat

end

end A101345.P5309686677175348369

namespace A101345

/-- `A026274(A000201(n+2)-1)` -/
def P5309686677175348369.Spec : Prop :=
  ∀ n, P5309686677175348369.a n = A101345 (n + 1)

end A101345

/-! ## A101345.P5979325167955762326

`A184659(A000201(n+2)-1)`
-/

namespace A101345.P5979325167955762326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (A000201 (n + 2) - 1).toNat

end

end A101345.P5979325167955762326

namespace A101345

/-- `A184659(A000201(n+2)-1)` -/
def P5979325167955762326.Spec : Prop :=
  ∀ n, P5979325167955762326.a n = A101345 (n + 1)

end A101345

/-! ## A101345.P13769130921704470550

`A184733(A000201(n+2)-1)`
-/

namespace A101345.P13769130921704470550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184733 (A000201 (n + 2) - 1).toNat

end

end A101345.P13769130921704470550

namespace A101345

/-- `A184733(A000201(n+2)-1)` -/
def P13769130921704470550.Spec : Prop :=
  ∀ n, P13769130921704470550.a n = A101345 (n + 1)

end A101345

/-! ## A101345.P7695639533567951324

`A247426(A000201(n+2)-1)`
-/

namespace A101345.P7695639533567951324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247426 (A000201 (n + 2) - 1).toNat

end

end A101345.P7695639533567951324

namespace A101345

/-- `A247426(A000201(n+2)-1)` -/
def P7695639533567951324.Spec : Prop :=
  ∀ n, P7695639533567951324.a n = A101345 (n + 1)

end A101345

/-! ## A101345.P5855912855784771734

`A003258(A026274(n+1))`
-/

namespace A101345.P5855912855784771734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003258 (A026274 (n + 1)).toNat

end

end A101345.P5855912855784771734

namespace A101345

/-- `A003258(A026274(n+1))` -/
def P5855912855784771734.Spec : Prop :=
  ∀ n, P5855912855784771734.a n = A101345 (n + 1)

end A101345

/-! ## A101345.P657107757917308568

`A022342(A003622(n+2))`
-/

namespace A101345.P657107757917308568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (A003622 (n + 2)).toNat

end

end A101345.P657107757917308568

namespace A101345

/-- `A022342(A003622(n+2))` -/
def P657107757917308568.Spec : Prop :=
  ∀ n, P657107757917308568.a n = A101345 (n + 1)

end A101345

/-!
# A101346: a(n) = binomial(2^n, n-1).

The programs for A101346, the canonical program `A101346.P1632442445681403035` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101346 has offset 1).

The definition of A101346 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2^(n+1), n)` (program `A101346.P1632442445681403035`, by `A101346.P1632442445681403035.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A101346.P1632442445681403035

`C(2^(n+1), n)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101346

/-- `C(2^(n+1), n)` -/
def P1632442445681403035.Spec : Prop :=
  ∀ n, (P1632442445681403035.a n : ℤ) = A101346 (n + 1)

theorem P1632442445681403035.correct : P1632442445681403035.Spec := by
  intro n
  simp only [A101346, Nat.add_sub_cancel]

end A101346

/-! ## A101346.P8486043675840161755

`A136501(∑[2*(2*n+1)])`
-/

namespace A101346.P8486043675840161755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136501 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101346.P8486043675840161755

namespace A101346

/-- `A136501(∑[2*(2*n+1)])` -/
def P8486043675840161755.Spec : Prop :=
  ∀ n, P8486043675840161755.a n = A101346 (n + 1)

end A101346

/-! ## A101346.P4615567061227771761

`abs(C(A000079(n+1), n)-1)+1`
-/

namespace A101346.P4615567061227771761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (A000079 (n + 1)).toNat n : ℤ) - 1| + 1

end

end A101346.P4615567061227771761

namespace A101346

/-- `abs(C(A000079(n+1), n)-1)+1` -/
def P4615567061227771761.Spec : Prop :=
  ∀ n, P4615567061227771761.a n = A101346 (n + 1)

end A101346

/-! ## A101346.P6036936671365913465

`abs(1-C(A181821(A000040(n+1)), n))+1`
-/

namespace A101346.P6036936671365913465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.choose (A181821 (A000040 (n + 1)).toNat).toNat n : ℤ)| + 1

end

end A101346.P6036936671365913465

namespace A101346

/-- `abs(1-C(A181821(A000040(n+1)), n))+1` -/
def P6036936671365913465.Spec : Prop :=
  ∀ n, P6036936671365913465.a n = A101346 (n + 1)

end A101346

/-! ## A101346.P12735825251586785662

`lcm(A001222(n+1)!, C(A126646(n)+1, n))`
-/

namespace A101346.P12735825251586785662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (Nat.factorial (A001222 (n + 1)).toNat) (Nat.choose (A126646 n + 1).toNat n)

end

end A101346.P12735825251586785662

namespace A101346

/-- `lcm(A001222(n+1)!, C(A126646(n)+1, n))` -/
def P12735825251586785662.Spec : Prop :=
  ∀ n, (P12735825251586785662.a n : ℤ) = A101346 (n + 1)

end A101346

/-!
# A101348: Arises from a particular cyclic transformation of the floretion - .5'i - .5i' - .5'ij' - .5'ik' + .5'ji' + .5'ki'.

The programs for A101348, the canonical program `A101348.P11946240456356224351` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101348 has offset 0).

The definition of A101348 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101348.P11946240456356224351

`Δ[A001399(n)]%2*A008620(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A101348

/-- `Δ[A001399(n)]%2*A008620(n)` -/
def P11946240456356224351.Spec : Prop :=
  ∀ n, P11946240456356224351.a n = A101348 n

theorem P11946240456356224351.correct : P11946240456356224351.Spec := by
  intro n
  simp only [A101348]

end A101348

/-! ## A101348.P2591422030585633166

`A063197(n+1)%2*A008620(n)`
-/

namespace A101348.P2591422030585633166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063197 (n + 1)) 2 * A008620 n

end

end A101348.P2591422030585633166

namespace A101348

/-- `A063197(n+1)%2*A008620(n)` -/
def P2591422030585633166.Spec : Prop :=
  ∀ n, P2591422030585633166.a n = A101348 n

end A101348

/-! ## A101348.P14687484302393498096

`A063204(n+1)%2*A008620(n)`
-/

namespace A101348.P14687484302393498096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063204 (n + 1)) 2 * A008620 n

end

end A101348.P14687484302393498096

namespace A101348

/-- `A063204(n+1)%2*A008620(n)` -/
def P14687484302393498096.Spec : Prop :=
  ∀ n, P14687484302393498096.a n = A101348 n

end A101348

/-! ## A101348.P16806385409858775052

`A092353(n+1)%2*A008620(n)`
-/

namespace A101348.P16806385409858775052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092353 (n + 1)) 2 * A008620 n

end

end A101348.P16806385409858775052

namespace A101348

/-- `A092353(n+1)%2*A008620(n)` -/
def P16806385409858775052.Spec : Prop :=
  ∀ n, P16806385409858775052.a n = A101348 n

end A101348

/-! ## A101348.P12488055281496579323

`lcm(∑[char[3*n]], A112690(n+2))`
-/

namespace A101348.P12488055281496579323
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A112690 (n + 2))

end

end A101348.P12488055281496579323

namespace A101348

/-- `lcm(∑[char[3*n]], A112690(n+2))` -/
def P12488055281496579323.Spec : Prop :=
  ∀ n, (P12488055281496579323.a n : ℤ) = A101348 n

end A101348

/-! ## A101348.P11981831765961436614

`and(1, A103221(n+1))*A103221(2*n)`
-/

namespace A101348.P11981831765961436614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A103221 (n + 1)) * A103221 (2 * n)

end

end A101348.P11981831765961436614

namespace A101348

/-- `and(1, A103221(n+1))*A103221(2*n)` -/
def P11981831765961436614.Spec : Prop :=
  ∀ n, P11981831765961436614.a n = A101348 n

end A101348

/-! ## A101348.P9358514414260147849

`A000035(A103221(n+1))*A103221(2*n)`
-/

namespace A101348.P9358514414260147849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A103221 (n + 1)).toNat * A103221 (2 * n)

end

end A101348.P9358514414260147849

namespace A101348

/-- `A000035(A103221(n+1))*A103221(2*n)` -/
def P9358514414260147849.Spec : Prop :=
  ∀ n, P9358514414260147849.a n = A101348 n

end A101348

/-! ## A101348.P15348949020388104287

`A028289(2*(n+1))%2*A008620(n)`
-/

namespace A101348.P15348949020388104287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028289 (2 * (n + 1))) 2 * A008620 n

end

end A101348.P15348949020388104287

namespace A101348

/-- `A028289(2*(n+1))%2*A008620(n)` -/
def P15348949020388104287.Spec : Prop :=
  ∀ n, P15348949020388104287.a n = A101348 n

end A101348

/-! ## A101348.P2431192134173480224

`lcm(Δ[A291984(2*n+1)], A291983(2*n+1))`
-/

namespace A101348.P2431192134173480224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291984 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A291983 (2 * n + 1))

end

end A101348.P2431192134173480224

namespace A101348

/-- `lcm(Δ[A291984(2*n+1)], A291983(2*n+1))` -/
def P2431192134173480224.Spec : Prop :=
  ∀ n, (P2431192134173480224.a n : ℤ) = A101348 n

end A101348

/-! ## A101348.P13564432091873340257

`∑[char[3*n]]*A000035(A033183(6*(n+1)))`
-/

namespace A101348.P13564432091873340257
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000035 (A033183 (6 * (n + 1))).toNat

end

end A101348.P13564432091873340257

namespace A101348

/-- `∑[char[3*n]]*A000035(A033183(6*(n+1)))` -/
def P13564432091873340257.Spec : Prop :=
  ∀ n, P13564432091873340257.a n = A101348 n

end A101348

/-! ## A101348.P2417536214996921893

`A008620(n)*A131735(A052938(n)²)`
-/

namespace A101348.P2417536214996921893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n * A131735 (A052938 n ^ 2).toNat

end

end A101348.P2417536214996921893

namespace A101348

/-- `A008620(n)*A131735(A052938(n)²)` -/
def P2417536214996921893.Spec : Prop :=
  ∀ n, P2417536214996921893.a n = A101348 n

end A101348

/-! ## A101348.P17877763681663493218

`A008620(n)*A131532(A052905(n))`
-/

namespace A101348.P17877763681663493218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n * A131532 (A052905 n).toNat

end

end A101348.P17877763681663493218

namespace A101348

/-- `A008620(n)*A131532(A052905(n))` -/
def P17877763681663493218.Spec : Prop :=
  ∀ n, P17877763681663493218.a n = A101348 n

end A101348

/-!
# A101349: Numbers of cubes between prime(n) and prime(n+1).

The programs for A101349, the canonical program `A101349.P7339435361473560082` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101349 has offset 1).

The definition of A101349 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101349.P4689644932391004494

`Δ[floor(root(p?[xor(1, n)], 3))]`
-/

namespace A101349.P4689644932391004494
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℝ) ^ (1 / (3 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101349.P4689644932391004494

namespace A101349

/-- `Δ[floor(root(p?[xor(1, n)], 3))]` -/
def P4689644932391004494.Spec : Prop :=
  ∀ n, P4689644932391004494.a n = A101349 (n + 1)

end A101349

/-! ## A101349.P4625269779502996237

`Δ[A104147(n)]`
-/

namespace A101349.P4625269779502996237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104147 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101349.P4625269779502996237

namespace A101349

/-- `Δ[A104147(n)]` -/
def P4625269779502996237.Spec : Prop :=
  ∀ n, P4625269779502996237.a n = A101349 (n + 1)

theorem P4625269779502996237.correct : P4625269779502996237.Spec := by
  intro n
  simp only [A101349, Nat.add_sub_cancel, A101349.P4625269779502996237.f1, A101349.P4625269779502996237.a, A101349.P7339435361473560082.f1, A101349.P7339435361473560082.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A048766, A048766.P11393263195670548898.a, A104147, A104147.P7291418644979591770.a, A263846, A263846.P12034222114530177158.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A101349

/-! ## A101349.P17757614847590360386

`Δ[A263846(n+1)]`
-/

namespace A101349.P17757614847590360386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101349.P17757614847590360386

namespace A101349

/-- `Δ[A263846(n+1)]` -/
def P17757614847590360386.Spec : Prop :=
  ∀ n, P17757614847590360386.a n = A101349 (n + 1)

end A101349

/-! ## A101349.P12232971852003228282

`char[∑[A060199(n)]-1]`
-/

namespace A101349.P12232971852003228282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060199 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A101349.P12232971852003228282

namespace A101349

/-- `char[∑[A060199(n)]-1]` -/
def P12232971852003228282.Spec : Prop :=
  ∀ n, (P12232971852003228282.a n : ℤ) = A101349 (n + 1)

end A101349

/-! ## A101349.P10774721939894690525

`char[A038098(n+1)-1]`
-/

namespace A101349.P10774721939894690525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038098 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A101349.P10774721939894690525

namespace A101349

/-- `char[A038098(n+1)-1]` -/
def P10774721939894690525.Spec : Prop :=
  ∀ n, (P10774721939894690525.a n : ℤ) = A101349 (n + 1)

end A101349

/-! ## A101349.P9660662069209647776

`Δ[root(A145446(n+1), 3)]`
-/

namespace A101349.P9660662069209647776
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A145446 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101349.P9660662069209647776

namespace A101349

/-- `Δ[root(A145446(n+1), 3)]` -/
def P9660662069209647776.Spec : Prop :=
  ∀ n, P9660662069209647776.a n = (A101349 (n + 1) : ℝ)

end A101349

/-! ## A101349.P16220535345406809994

`char[A033270((n+2)^3)]`
-/

namespace A101349.P16220535345406809994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 ((n + 2) ^ 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A101349.P16220535345406809994

namespace A101349

/-- `char[A033270((n+2)^3)]` -/
def P16220535345406809994.Spec : Prop :=
  ∀ n, (P16220535345406809994.a n : ℤ) = A101349 (n + 1)

end A101349

/-! ## A101349.P15399011527041035830

`Δ[floor(root(A000040(n+1), 3))]`
-/

namespace A101349.P15399011527041035830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101349.P15399011527041035830

namespace A101349

/-- `Δ[floor(root(A000040(n+1), 3))]` -/
def P15399011527041035830.Spec : Prop :=
  ∀ n, P15399011527041035830.a n = A101349 (n + 1)

end A101349

/-! ## A101349.P7987132793624636061

`Δ[floor(root(A006093(n+1), 3))]`
-/

namespace A101349.P7987132793624636061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006093 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101349.P7987132793624636061

namespace A101349

/-- `Δ[floor(root(A006093(n+1), 3))]` -/
def P7987132793624636061.Spec : Prop :=
  ∀ n, P7987132793624636061.a n = A101349 (n + 1)

end A101349

/-! ## A101349.P14554833286159563414

`Δ[floor(root(A001248(n+1), 6))]`
-/

namespace A101349.P14554833286159563414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001248 (n + 1) : ℝ) ^ (1 / (6 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101349.P14554833286159563414

namespace A101349

/-- `Δ[floor(root(A001248(n+1), 6))]` -/
def P14554833286159563414.Spec : Prop :=
  ∀ n, P14554833286159563414.a n = A101349 (n + 1)

end A101349

/-! ## A101349.P6108385910026657047

`char[A000720((n+1)^3)-1]`
-/

namespace A101349.P6108385910026657047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n + 1) ^ 3) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A101349.P6108385910026657047

namespace A101349

/-- `char[A000720((n+1)^3)-1]` -/
def P6108385910026657047.Spec : Prop :=
  ∀ n, (P6108385910026657047.a n : ℤ) = A101349 (n + 1)

end A101349

/-! ## A101349.P13118666736921252481

`Δ[ceil(root(A000040(4/2+n-1), 3))]`
-/

namespace A101349.P13118666736921252481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000040 (SequenceMachineLib.roundAway ((4 : ℚ) / 2 + ((n : ℤ) - 1 : ℚ))).toNat : ℝ) ^ (1 / (3 : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101349.P13118666736921252481

namespace A101349

/-- `Δ[ceil(root(A000040(4/2+n-1), 3))]` -/
def P13118666736921252481.Spec : Prop :=
  ∀ n, P13118666736921252481.a n = A101349 (n + 1)

end A101349

/-! ## A101349.P13915953381658120201

`A001222(ceil(ratio[A104147(n)]))`
-/

namespace A101349.P13915953381658120201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104147 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A101349.P13915953381658120201

namespace A101349

/-- `A001222(ceil(ratio[A104147(n)]))` -/
def P13915953381658120201.Spec : Prop :=
  ∀ n, P13915953381658120201.a n = A101349 (n + 1)

end A101349

/-! ## A101349.P7339435361473560082

`Δ[A048766(A000040(n+1))]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A101349

/-- `Δ[A048766(A000040(n+1))]` -/
def P7339435361473560082.Spec : Prop :=
  ∀ n, P7339435361473560082.a n = A101349 (n + 1)

theorem P7339435361473560082.correct : P7339435361473560082.Spec := by
  intro n
  simp only [A101349, Nat.add_sub_cancel]

end A101349

/-! ## A101349.P1306118329249163455

`Δ[A048766(A006093(n+1))]`
-/

namespace A101349.P1306118329249163455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101349.P1306118329249163455

namespace A101349

/-- `Δ[A048766(A006093(n+1))]` -/
def P1306118329249163455.Spec : Prop :=
  ∀ n, P1306118329249163455.a n = A101349 (n + 1)

end A101349

/-! ## A101349.P2802530468428471447

`Δ[A048766(A014686(n+1))]`
-/

namespace A101349.P2802530468428471447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A014686 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101349.P2802530468428471447

namespace A101349

/-- `Δ[A048766(A014686(n+1))]` -/
def P2802530468428471447.Spec : Prop :=
  ∀ n, P2802530468428471447.a n = A101349 (n + 1)

end A101349

/-! ## A101349.P10458427761202426585

`Δ[A048766(A039915(n+1))]`
-/

namespace A101349.P10458427761202426585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A039915 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101349.P10458427761202426585

namespace A101349

/-- `Δ[A048766(A039915(n+1))]` -/
def P10458427761202426585.Spec : Prop :=
  ∀ n, P10458427761202426585.a n = A101349 (n + 1)

end A101349

/-! ## A101349.P11147774041928317702

`Δ[A048766(A051701(n+1))]`
-/

namespace A101349.P11147774041928317702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A051701 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101349.P11147774041928317702

namespace A101349

/-- `Δ[A048766(A051701(n+1))]` -/
def P11147774041928317702.Spec : Prop :=
  ∀ n, P11147774041928317702.a n = A101349 (n + 1)

end A101349

/-! ## A101349.P15501895090260863200

`A104147(n+1)-A104147(n)`
-/

namespace A101349.P15501895090260863200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104147 (n + 1) - A104147 n

end

end A101349.P15501895090260863200

namespace A101349

/-- `A104147(n+1)-A104147(n)` -/
def P15501895090260863200.Spec : Prop :=
  ∀ n, P15501895090260863200.a n = A101349 (n + 1)

theorem P15501895090260863200.correct : P15501895090260863200.Spec := by
  intro n
  simp only [A101349, Nat.add_sub_cancel, A101349.P15501895090260863200.a, A101349.P7339435361473560082.f1, A101349.P7339435361473560082.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A048766, A048766.P11393263195670548898.a, A104147, A104147.P7291418644979591770.a, A263846, A263846.P12034222114530177158.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A101349

/-! ## A101349.P16875412755246865431

`A263846(n+2)-A263846(n+1)`
-/

namespace A101349.P16875412755246865431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263846 (n + 2) - A263846 (n + 1)

end

end A101349.P16875412755246865431

namespace A101349

/-- `A263846(n+2)-A263846(n+1)` -/
def P16875412755246865431.Spec : Prop :=
  ∀ n, P16875412755246865431.a n = A101349 (n + 1)

theorem P16875412755246865431.correct : P16875412755246865431.Spec := by
  intro n
  simp only [A101349, Nat.add_sub_cancel, A101349.P16875412755246865431.a, A101349.P7339435361473560082.f1, A101349.P7339435361473560082.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A048766, A048766.P11393263195670548898.a, A263846, A263846.P12034222114530177158.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A101349

/-!
# A101351: a(n) = 2^n-1 + Fibonacci(n).

The programs for A101351, the canonical program `A101351.P7271349714224022844` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101351 has offset 1).

The definition of A101351 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101351.P7271349714224022844

`4*a(n-1)-4*a(n-2)-a(n-3)+2*a(n-4)` with `a(0)=2, a(1)=4, a(2)=9, a(3)=18`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101351

/-- `4*a(n-1)-4*a(n-2)-a(n-3)+2*a(n-4)` -/
def P7271349714224022844.Spec : Prop :=
  ∀ n, P7271349714224022844.a n = A101351 (n + 1)

theorem P7271349714224022844.correct : P7271349714224022844.Spec := by
  intro n
  simp only [A101351, Nat.add_sub_cancel]

end A101351

/-! ## A101351.P866533763500982688

`((1+sqrt(5))^(n+1)-(1-sqrt(5))^(n+1))/(2^(n+1)*sqrt(5))+2^(n+1)-1`
-/

namespace A101351.P866533763500982688
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (5 : ℝ)) ^ (n + 1) - (1 - Real.sqrt (5 : ℝ)) ^ (n + 1)) / ((2 ^ (n + 1) : ℝ) * Real.sqrt (5 : ℝ)) + (2 ^ (n + 1) : ℝ) - 1

end

end A101351.P866533763500982688

namespace A101351

/-- `((1+sqrt(5))^(n+1)-(1-sqrt(5))^(n+1))/(2^(n+1)*sqrt(5))+2^(n+1)-1` -/
def P866533763500982688.Spec : Prop :=
  ∀ n, P866533763500982688.a n = (A101351 (n + 1) : ℝ)

theorem P866533763500982688.correct : P866533763500982688.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A101351, Nat.add_sub_cancel, A101351.P866533763500982688.a, A101351.P7271349714224022844.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A101351, Nat.add_sub_cancel, A101351.P866533763500982688.a, A101351.P7271349714224022844.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A101351

/-! ## A101351.P12669600659216218750

`∑[ogf((2-4x+x^2)/(1-3x+x^2+2x^3))]`
-/

namespace A101351.P12669600659216218750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -4, 1] [1, -3, 1, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101351.P12669600659216218750

namespace A101351

/-- `∑[ogf((2-4x+x^2)/(1-3x+x^2+2x^3))]` -/
def P12669600659216218750.Spec : Prop :=
  ∀ n, P12669600659216218750.a n = A101351 (n + 1)

end A101351

/-! ## A101351.P6596756901450621976

`ogf((2-4x+x^2)/(1-4x+4x^2+x^3-2x^4))`
-/

namespace A101351.P6596756901450621976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -4, 1] [1, -4, 4, 1, -2] n

end

end A101351.P6596756901450621976

namespace A101351

/-- `ogf((2-4x+x^2)/(1-4x+4x^2+x^3-2x^4))` -/
def P6596756901450621976.Spec : Prop :=
  ∀ n, P6596756901450621976.a n = A101351 (n + 1)

end A101351

/-! ## A101351.P16526526908410234976

`∑[Δ[A000045(n)]+2^n]`
-/

namespace A101351.P16526526908410234976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101351.P16526526908410234976

namespace A101351

/-- `∑[Δ[A000045(n)]+2^n]` -/
def P16526526908410234976.Spec : Prop :=
  ∀ n, P16526526908410234976.a n = A101351 (n + 1)

end A101351

/-! ## A101351.P7325452592291498090

`∑[A027934(n)+A000032(n)]`
-/

namespace A101351.P7325452592291498090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027934 n + A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101351.P7325452592291498090

namespace A101351

/-- `∑[A027934(n)+A000032(n)]` -/
def P7325452592291498090.Spec : Prop :=
  ∀ n, P7325452592291498090.a n = A101351 (n + 1)

end A101351

/-! ## A101351.P7759808355187513127

`∑[A212804(n)+∑[A011782(n)]]`
-/

namespace A101351.P7759808355187513127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101351.P7759808355187513127

namespace A101351

/-- `∑[A212804(n)+∑[A011782(n)]]` -/
def P7759808355187513127.Spec : Prop :=
  ∀ n, P7759808355187513127.a n = A101351 (n + 1)

end A101351

/-! ## A101351.P9405224978782596018

`Δ[A101352(n)]`
-/

namespace A101351.P9405224978782596018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101352 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101351.P9405224978782596018

namespace A101351

/-- `Δ[A101352(n)]` -/
def P9405224978782596018.Spec : Prop :=
  ∀ n, P9405224978782596018.a n = A101351 (n + 1)

end A101351

/-! ## A101351.P1807668812219413426

`xor(A027934(n), A153893(n))`
-/

namespace A101351.P1807668812219413426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A027934 n) (A153893 n)

end

end A101351.P1807668812219413426

namespace A101351

/-- `xor(A027934(n), A153893(n))` -/
def P1807668812219413426.Spec : Prop :=
  ∀ n, P1807668812219413426.a n = A101351 (n + 1)

end A101351

/-!
# A101352: Partial sums of A101351.

The programs for A101352, the canonical program `A101352.P10543662595786334617` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101352 has offset 0).

The definition of A101352 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101352.P5903269112439424572

`∑[round(ϕ^n/sqrt(5))+2^n-1]`
-/

namespace A101352.P5903269112439424572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) + ((2 ^ n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101352.P5903269112439424572

namespace A101352

/-- `∑[round(ϕ^n/sqrt(5))+2^n-1]` -/
def P5903269112439424572.Spec : Prop :=
  ∀ n, P5903269112439424572.a n = A101352 n

end A101352

/-! ## A101352.P14875904123047555781

`∑[ogf((1-3x^2)/(1-3x+x^2+2x^3))]-(n+1)`
-/

namespace A101352.P14875904123047555781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -3] [1, -3, 1, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A101352.P14875904123047555781

namespace A101352

/-- `∑[ogf((1-3x^2)/(1-3x+x^2+2x^3))]-(n+1)` -/
def P14875904123047555781.Spec : Prop :=
  ∀ n, P14875904123047555781.a n = A101352 n

end A101352

/-! ## A101352.P16340457647503653610

`∑[ogf((1-3x^2)/(1-3x+x^2+2x^3))]-1-n`
-/

namespace A101352.P16340457647503653610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -3] [1, -3, 1, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1 - (n : ℤ)

end

end A101352.P16340457647503653610

namespace A101352

/-- `∑[ogf((1-3x^2)/(1-3x+x^2+2x^3))]-1-n` -/
def P16340457647503653610.Spec : Prop :=
  ∀ n, P16340457647503653610.a n = A101352 n

end A101352

/-! ## A101352.P10543662595786334617

`A101353(n)-(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A101352

/-- `A101353(n)-(n+1)` -/
def P10543662595786334617.Spec : Prop :=
  ∀ n, P10543662595786334617.a n = A101352 n

theorem P10543662595786334617.correct : P10543662595786334617.Spec := by
  intro n
  simp only [A101352]

end A101352

/-! ## A101352.P17512402695658940673

`∑[A117591(n)]-(n+1)`
-/

namespace A101352.P17512402695658940673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A101352.P17512402695658940673

namespace A101352

/-- `∑[A117591(n)]-(n+1)` -/
def P17512402695658940673.Spec : Prop :=
  ∀ n, P17512402695658940673.a n = A101352 n

end A101352

/-! ## A101352.P3595830560080860415

`A052956(n+1)-(n+3)`
-/

namespace A101352.P3595830560080860415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052956 (n + 1) - (n + 3 : ℤ)

end

end A101352.P3595830560080860415

namespace A101352

/-- `A052956(n+1)-(n+3)` -/
def P3595830560080860415.Spec : Prop :=
  ∀ n, P3595830560080860415.a n = A101352 n

end A101352

/-! ## A101352.P7160869792703782053

`A000071(n+2)+∑[2^n-1]`
-/

namespace A101352.P7160869792703782053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101352.P7160869792703782053

namespace A101352

/-- `A000071(n+2)+∑[2^n-1]` -/
def P7160869792703782053.Spec : Prop :=
  ∀ n, P7160869792703782053.a n = A101352 n

end A101352

/-! ## A101352.P12136473163851521347

`2^(n+1)+A000045(n+2)-(n+3)`
-/

namespace A101352.P12136473163851521347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) + (A000045 (n + 2) - (n + 3 : ℤ))

end

end A101352.P12136473163851521347

namespace A101352

/-- `2^(n+1)+A000045(n+2)-(n+3)` -/
def P12136473163851521347.Spec : Prop :=
  ∀ n, P12136473163851521347.a n = A101352 n

end A101352

/-! ## A101352.P6115769681228526044

`2*a(n-1)+n+1-A000045(n-1)` with `a(0)=0`
-/

namespace A101352.P6115769681228526044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) + ((n + 1 : ℤ) - A000045 (n - 1))

end

end A101352.P6115769681228526044

namespace A101352

/-- `2*a(n-1)+n+1-A000045(n-1)` -/
def P6115769681228526044.Spec : Prop :=
  ∀ n, P6115769681228526044.a n = A101352 n

end A101352

/-! ## A101352.P14878941322270173590

`∑[A000045(n)]+∑[A000225(n)]`
-/

namespace A101352.P14878941322270173590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A101352.P14878941322270173590

namespace A101352

/-- `∑[A000045(n)]+∑[A000225(n)]` -/
def P14878941322270173590.Spec : Prop :=
  ∀ n, P14878941322270173590.a n = A101352 n

end A101352

/-! ## A101352.P9069080712282713660

`∑[A155559(n)+A000045(n)]-n`
-/

namespace A101352.P9069080712282713660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n + A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A101352.P9069080712282713660

namespace A101352

/-- `∑[A155559(n)+A000045(n)]-n` -/
def P9069080712282713660.Spec : Prop :=
  ∀ n, P9069080712282713660.a n = A101352 n

end A101352

/-! ## A101352.P12099051718068037595

`A000295(n+1)+A000071(n+2)`
-/

namespace A101352.P12099051718068037595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 (n + 1) + A000071 (n + 2)

end

end A101352.P12099051718068037595

namespace A101352

/-- `A000295(n+1)+A000071(n+2)` -/
def P12099051718068037595.Spec : Prop :=
  ∀ n, P12099051718068037595.a n = A101352 n

end A101352

/-! ## A101352.P4250148423571909274

`∑[A000079(n)]-∑[1-A000045(n)]`
-/

namespace A101352.P4250148423571909274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A101352.P4250148423571909274

namespace A101352

/-- `∑[A000079(n)]-∑[1-A000045(n)]` -/
def P4250148423571909274.Spec : Prop :=
  ∀ n, P4250148423571909274.a n = A101352 n

end A101352

/-! ## A101352.P18392193348982646878

`A000325(n+1)+A000071(n+2)-1`
-/

namespace A101352.P18392193348982646878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 (n + 1) + (A000071 (n + 2) - 1)

end

end A101352.P18392193348982646878

namespace A101352

/-- `A000325(n+1)+A000071(n+2)-1` -/
def P18392193348982646878.Spec : Prop :=
  ∀ n, P18392193348982646878.a n = A101352 n

end A101352

/-! ## A101352.P16985460549502739818

`∑[A011782(n+1)-1]+∑[A000045(n)]`
-/

namespace A101352.P16985460549502739818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A101352.P16985460549502739818

namespace A101352

/-- `∑[A011782(n+1)-1]+∑[A000045(n)]` -/
def P16985460549502739818.Spec : Prop :=
  ∀ n, P16985460549502739818.a n = A101352 n

end A101352

/-! ## A101352.P12885278046002350100

`A000295(n+1)+A000225(n)-A008466(n)`
-/

namespace A101352.P12885278046002350100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 (n + 1) + (A000225 n - A008466 n)

end

end A101352.P12885278046002350100

namespace A101352

/-- `A000295(n+1)+A000225(n)-A008466(n)` -/
def P12885278046002350100.Spec : Prop :=
  ∀ n, P12885278046002350100.a n = A101352 n

end A101352

/-! ## A101352.P15790705177604398244

`A228078(n+1)+A001924(n)-A000071(n+2)`
-/

namespace A101352.P15790705177604398244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228078 (n + 1) + (A001924 n - A000071 (n + 2))

end

end A101352.P15790705177604398244

namespace A101352

/-- `A228078(n+1)+A001924(n)-A000071(n+2)` -/
def P15790705177604398244.Spec : Prop :=
  ∀ n, P15790705177604398244.a n = A101352 n

end A101352

/-! ## A101352.P1962899419132345078

`A095151(n)-A008466(n)`
-/

namespace A101352.P1962899419132345078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095151 n - A008466 n

end

end A101352.P1962899419132345078

namespace A101352

/-- `A095151(n)-A008466(n)` -/
def P1962899419132345078.Spec : Prop :=
  ∀ n, P1962899419132345078.a n = A101352 n

end A101352

/-! ## A101352.P16167713450946352479

`∑[∑[∑[A011782(n)]]]-A027934(n+1)`
-/

namespace A101352.P16167713450946352479
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A027934 (n + 1)

end

end A101352.P16167713450946352479

namespace A101352

/-- `∑[∑[∑[A011782(n)]]]-A027934(n+1)` -/
def P16167713450946352479.Spec : Prop :=
  ∀ n, P16167713450946352479.a n = A101352 n

end A101352

/-! ## A101352.P4583588842548336638

`A097813(n+1)-(A027934(n+1)+A000325(n+1))`
-/

namespace A101352.P4583588842548336638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097813 (n + 1) - (A027934 (n + 1) + A000325 (n + 1))

end

end A101352.P4583588842548336638

namespace A101352

/-- `A097813(n+1)-(A027934(n+1)+A000325(n+1))` -/
def P4583588842548336638.Spec : Prop :=
  ∀ n, P4583588842548336638.a n = A101352 n

end A101352

/-!
# A101353: a(n) = Sum_{k=0..n} (2^k + Fibonacci(k)).

The programs for A101353, the canonical program `A101353.P1735995123571446378` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101353 has offset 0).

The definition of A101353 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101353.P1735995123571446378

`4*a(n-1)-4*a(n-2)-a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=4, a(2)=9, a(3)=19`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101353

/-- `4*a(n-1)-4*a(n-2)-a(n-3)+2*a(n-4)` -/
def P1735995123571446378.Spec : Prop :=
  ∀ n, P1735995123571446378.a n = A101353 n

theorem P1735995123571446378.correct : P1735995123571446378.Spec := by
  intro n
  simp only [A101353]

end A101353

/-! ## A101353.P12426117305842150568

`∑[ogf((1-3x^2)/(1-3x+x^2+2x^3))]`
-/

namespace A101353.P12426117305842150568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -3] [1, -3, 1, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101353.P12426117305842150568

namespace A101353

/-- `∑[ogf((1-3x^2)/(1-3x+x^2+2x^3))]` -/
def P12426117305842150568.Spec : Prop :=
  ∀ n, P12426117305842150568.a n = A101353 n

end A101353

/-! ## A101353.P7106552542829996943

`ogf((1-3x^2)/(1-4x+4x^2+x^3-2x^4))`
-/

namespace A101353.P7106552542829996943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -3] [1, -4, 4, 1, -2] n

end

end A101353.P7106552542829996943

namespace A101353

/-- `ogf((1-3x^2)/(1-4x+4x^2+x^3-2x^4))` -/
def P7106552542829996943.Spec : Prop :=
  ∀ n, P7106552542829996943.a n = A101353 n

end A101353

/-! ## A101353.P15143965209242096986

`∑[A117591(n)]`
-/

namespace A101353.P15143965209242096986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101353.P15143965209242096986

namespace A101353

/-- `∑[A117591(n)]` -/
def P15143965209242096986.Spec : Prop :=
  ∀ n, P15143965209242096986.a n = A101353 n

end A101353

/-! ## A101353.P14007546278254246974

`∑[abs(Δ[A052956(n)])]`
-/

namespace A101353.P14007546278254246974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052956 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101353.P14007546278254246974

namespace A101353

/-- `∑[abs(Δ[A052956(n)])]` -/
def P14007546278254246974.Spec : Prop :=
  ∀ n, P14007546278254246974.a n = A101353 n

end A101353

/-! ## A101353.P5268964211651358450

`A052956(n+1)-2`
-/

namespace A101353.P5268964211651358450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052956 (n + 1) - 2

end

end A101353.P5268964211651358450

namespace A101353

/-- `A052956(n+1)-2` -/
def P5268964211651358450.Spec : Prop :=
  ∀ n, P5268964211651358450.a n = A101353 n

end A101353

/-! ## A101353.P13997242454301542767

`A101352(n)+1+n`
-/

namespace A101353.P13997242454301542767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101352 n + 1 + (n : ℤ)

end

end A101353.P13997242454301542767

namespace A101353

/-- `A101352(n)+1+n` -/
def P13997242454301542767.Spec : Prop :=
  ∀ n, P13997242454301542767.a n = A101353 n

theorem P13997242454301542767.correct : P13997242454301542767.Spec := by
  intro n
  simp only [A101353, Nat.add_sub_cancel, A101353.P13997242454301542767.a, A101353.P1735995123571446378.a, A101352, A101352.P10543662595786334617.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A101353

/-! ## A101353.P12474544335226892813

`∑[A000045(n)+2^n]`
-/

namespace A101353.P12474544335226892813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101353.P12474544335226892813

namespace A101353

/-- `∑[A000045(n)+2^n]` -/
def P12474544335226892813.Spec : Prop :=
  ∀ n, P12474544335226892813.a n = A101353 n

end A101353

/-! ## A101353.P8354436855864083957

`2^(n+1)+A000045(n+2)-2`
-/

namespace A101353.P8354436855864083957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) + (A000045 (n + 2) - 2)

end

end A101353.P8354436855864083957

namespace A101353

/-- `2^(n+1)+A000045(n+2)-2` -/
def P8354436855864083957.Spec : Prop :=
  ∀ n, P8354436855864083957.a n = A101353 n

end A101353

/-! ## A101353.P13227625950987025740

`2*(a(n-1)+1)-A000045(n-1)` with `a(0)=1`
-/

namespace A101353.P13227625950987025740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + 1) - A000045 (n - 1)

end

end A101353.P13227625950987025740

namespace A101353

/-- `2*(a(n-1)+1)-A000045(n-1)` -/
def P13227625950987025740.Spec : Prop :=
  ∀ n, P13227625950987025740.a n = A101353 n

end A101353

/-! ## A101353.P9393010440244638384

`∑[A000079(n)+A000045(n)]`
-/

namespace A101353.P9393010440244638384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101353.P9393010440244638384

namespace A101353

/-- `∑[A000079(n)+A000045(n)]` -/
def P9393010440244638384.Spec : Prop :=
  ∀ n, P9393010440244638384.a n = A101353 n

end A101353

/-! ## A101353.P15464052581910951547

`A099036(n+1)+A001911(n)`
-/

namespace A101353.P15464052581910951547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099036 (n + 1) + A001911 n

end

end A101353.P15464052581910951547

namespace A101353

/-- `A099036(n+1)+A001911(n)` -/
def P15464052581910951547.Spec : Prop :=
  ∀ n, P15464052581910951547.a n = A101353 n

end A101353

/-! ## A101353.P11498721384567018433

`∑[∑[A011782(n)]+A000045(n)]`
-/

namespace A101353.P11498721384567018433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101353.P11498721384567018433

namespace A101353

/-- `∑[∑[A011782(n)]+A000045(n)]` -/
def P11498721384567018433.Spec : Prop :=
  ∀ n, P11498721384567018433.a n = A101353 n

end A101353

/-! ## A101353.P567847095557489755

`∑[A001611(n)+∑[A131577(n)]]`
-/

namespace A101353.P567847095557489755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101353.P567847095557489755

namespace A101353

/-- `∑[A001611(n)+∑[A131577(n)]]` -/
def P567847095557489755.Spec : Prop :=
  ∀ n, P567847095557489755.a n = A101353 n

end A101353

/-! ## A101353.P12753672500677858772

`∑[Δ[A000051(n)]+A000045(n)]`
-/

namespace A101353.P12753672500677858772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101353.P12753672500677858772

namespace A101353

/-- `∑[Δ[A000051(n)]+A000045(n)]` -/
def P12753672500677858772.Spec : Prop :=
  ∀ n, P12753672500677858772.a n = A101353 n

end A101353

/-! ## A101353.P6872976284493362544

`∑[Δ[A000225(n)]+A000045(n)]`
-/

namespace A101353.P6872976284493362544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101353.P6872976284493362544

namespace A101353

/-- `∑[Δ[A000225(n)]+A000045(n)]` -/
def P6872976284493362544.Spec : Prop :=
  ∀ n, P6872976284493362544.a n = A101353 n

end A101353

/-! ## A101353.P4619153986937822685

`∑[Δ[A168616(n)]+A000045(n)]`
-/

namespace A101353.P4619153986937822685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168616 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101353.P4619153986937822685

namespace A101353

/-- `∑[Δ[A168616(n)]+A000045(n)]` -/
def P4619153986937822685.Spec : Prop :=
  ∀ n, P4619153986937822685.a n = A101353 n

end A101353

/-! ## A101353.P14754106391302969357

`A000225(n+1)+∑[A000045(n)]`
-/

namespace A101353.P14754106391302969357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101353.P14754106391302969357

namespace A101353

/-- `A000225(n+1)+∑[A000045(n)]` -/
def P14754106391302969357.Spec : Prop :=
  ∀ n, P14754106391302969357.a n = A101353 n

end A101353

/-! ## A101353.P17378961897308377638

`∑[A131577(n+1)+A000045(n)]`
-/

namespace A101353.P17378961897308377638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (n + 1) + A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101353.P17378961897308377638

namespace A101353

/-- `∑[A131577(n+1)+A000045(n)]` -/
def P17378961897308377638.Spec : Prop :=
  ∀ n, P17378961897308377638.a n = A101353 n

end A101353

/-! ## A101353.P12739865002853054724

`∑[A155559(n)+A000045(n)]+1`
-/

namespace A101353.P12739865002853054724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n + A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A101353.P12739865002853054724

namespace A101353

/-- `∑[A155559(n)+A000045(n)]+1` -/
def P12739865002853054724.Spec : Prop :=
  ∀ n, P12739865002853054724.a n = A101353 n

end A101353

/-!
# A101354: a(n) = A101254(n) + A098661(n).

The programs for A101354, there is no canonical definition to state claims against.
-/

/-! ## A101354.P17051906315662476069

`A101254(n+1)+A098661(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A101354.P17051906315662476069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101254 (n + 1) + A098661 (n + 1)

end

end A101354.P17051906315662476069

/-! ## A101354.P6621809759067076743

`A098661(n+1)+∑[A101231(n+1)]`
-/

namespace A101354.P6621809759067076743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098661 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101354.P6621809759067076743

/-! ## A101354.P2990761097496288019

`∑[A101253(n+1)+A101231(n+1)]`
-/

namespace A101354.P2990761097496288019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101253 (n + 1) + A101231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101354.P2990761097496288019

/-! ## A101354.P1016340753119967631

`A101254(n+1)+∑[A101253(n+1)]`
-/

namespace A101354.P1016340753119967631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101254 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101354.P1016340753119967631

/-!
# A101356: Binomial( 2*binomial(2*n,n-1),n-1).

The programs for A101356, there is no canonical definition to state claims against.
-/

/-! ## A101356.P3928431709415524920

`C(2*C(2*(n+1), n), n)`
-/

namespace A101356.P3928431709415524920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * Nat.choose (2 * (n + 1)) n) n

end

end A101356.P3928431709415524920

/-! ## A101356.P13700956452997303379

`C(A162551(n+1), n)`
-/

namespace A101356.P13700956452997303379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A162551 (n + 1)).toNat n

end

end A101356.P13700956452997303379

/-! ## A101356.P16392020175984352724

`C(2*A001791(n+1), n)`
-/

namespace A101356.P16392020175984352724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * A001791 (n + 1)).toNat n

end

end A101356.P16392020175984352724

/-! ## A101356.P17746601455627036275

`C(A026023(2*n+1), n)`
-/

namespace A101356.P17746601455627036275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A026023 (2 * n + 1)).toNat n

end

end A101356.P17746601455627036275

/-!
# A101357: Partial sums of A060354.

The programs for A101357, the canonical program `A101357.P857864650594224203` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101357 has offset 0).

The definition of A101357 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101357.P857864650594224203

`∑[3*C(n, 3)+n]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101357

/-- `∑[3*C(n, 3)+n]` -/
def P857864650594224203.Spec : Prop :=
  ∀ n, (P857864650594224203.a n : ℤ) = A101357 n

theorem P857864650594224203.correct : P857864650594224203.Spec := by
  intro n
  simp only [A101357]

end A101357

/-! ## A101357.P6453075448074000334

`∑[n]+C(C(n, 2), 2)`
-/

namespace A101357.P6453075448074000334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (Nat.choose n 2) 2

end

end A101357.P6453075448074000334

namespace A101357

/-- `∑[n]+C(C(n, 2), 2)` -/
def P6453075448074000334.Spec : Prop :=
  ∀ n, (P6453075448074000334.a n : ℤ) = A101357 n

end A101357

/-! ## A101357.P17451836878257720563

`C(C(n, 2)+1, 2)+n`
-/

namespace A101357.P17451836878257720563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose n 2 + 1) 2 + n

end

end A101357.P17451836878257720563

namespace A101357

/-- `C(C(n, 2)+1, 2)+n` -/
def P17451836878257720563.Spec : Prop :=
  ∀ n, (P17451836878257720563.a n : ℤ) = A101357 n

end A101357

/-! ## A101357.P93723631939494901

`∑[n*(∑[n-2]+4)]`
-/

namespace A101357.P93723631939494901
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101357.P93723631939494901

namespace A101357

/-- `∑[n*(∑[n-2]+4)]` -/
def P93723631939494901.Spec : Prop :=
  ∀ n, P93723631939494901.a n = A101357 n

end A101357

/-! ## A101357.P5096560422004735515

`C(∑[n], 2)-n*∑[n-1]`
-/

namespace A101357.P5096560422004735515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) - (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A101357.P5096560422004735515

namespace A101357

/-- `C(∑[n], 2)-n*∑[n-1]` -/
def P5096560422004735515.Spec : Prop :=
  ∀ n, P5096560422004735515.a n = A101357 n

end A101357

/-! ## A101357.P13394654049590818953

`floor(∑[∑[∑[a(n-1)+3]]])` with `a(0)=0, a(1)=1, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A101357.P13394654049590818953
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f3 =>
  f3 (n - 1) + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101357.P13394654049590818953

namespace A101357

/-- `floor(∑[∑[∑[a(n-1)+3]]])` -/
def P13394654049590818953.Spec : Prop :=
  ∀ n, (P13394654049590818953.a n : ℤ) = A101357 n

end A101357

/-! ## A101357.P1648076691654809301

`A062026(n)/2`
-/

namespace A101357.P1648076691654809301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062026 n : ℚ) / 2

end

end A101357.P1648076691654809301

namespace A101357

/-- `A062026(n)/2` -/
def P1648076691654809301.Spec : Prop :=
  ∀ n, P1648076691654809301.a n = (A101357 n : ℚ)

end A101357

/-! ## A101357.P1077363478063529794

`A050534(n)+∑[n]`
-/

namespace A101357.P1077363478063529794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050534 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A101357.P1077363478063529794

namespace A101357

/-- `A050534(n)+∑[n]` -/
def P1077363478063529794.Spec : Prop :=
  ∀ n, P1077363478063529794.a n = A101357 n

end A101357

/-! ## A101357.P4107327829012931145

`A212135(n)/4+n`
-/

namespace A101357.P4107327829012931145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212135 n : ℚ) / 4 + (n : ℚ)

end

end A101357.P4107327829012931145

namespace A101357

/-- `A212135(n)/4+n` -/
def P4107327829012931145.Spec : Prop :=
  ∀ n, P4107327829012931145.a n = (A101357 n : ℚ)

end A101357

/-! ## A101357.P12951930193881243754

`∑[n]+C(A161680(n), 2)`
-/

namespace A101357.P12951930193881243754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (A161680 n).toNat 2

end

end A101357.P12951930193881243754

namespace A101357

/-- `∑[n]+C(A161680(n), 2)` -/
def P12951930193881243754.Spec : Prop :=
  ∀ n, (P12951930193881243754.a n : ℤ) = A101357 n

end A101357

/-! ## A101357.P3917563352023719990

`A037255(n)+n-∑[n]`
-/

namespace A101357.P3917563352023719990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037255 n + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A101357.P3917563352023719990

namespace A101357

/-- `A037255(n)+n-∑[n]` -/
def P3917563352023719990.Spec : Prop :=
  ∀ n, P3917563352023719990.a n = A101357 n

end A101357

/-! ## A101357.P17548755552392886010

`(A341703(n+1)-1)/2`
-/

namespace A101357.P17548755552392886010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341703 (n + 1) - 1 : ℚ) / 2

end

end A101357.P17548755552392886010

namespace A101357

/-- `(A341703(n+1)-1)/2` -/
def P17548755552392886010.Spec : Prop :=
  ∀ n, P17548755552392886010.a n = (A101357 n : ℚ)

end A101357

/-! ## A101357.P6396084484599345084

`3/(n+2)*A301973(n)`
-/

namespace A101357.P6396084484599345084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (n + 2 : ℚ) * (A301973 n : ℚ)

end

end A101357.P6396084484599345084

namespace A101357

/-- `3/(n+2)*A301973(n)` -/
def P6396084484599345084.Spec : Prop :=
  ∀ n, P6396084484599345084.a n = (A101357 n : ℚ)

end A101357

/-! ## A101357.P12031030004152106076

`A002817(n)-Δ[C(C(n, 2), 2)]`
-/

namespace A101357.P12031030004152106076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose n 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A101357.P12031030004152106076

namespace A101357

/-- `A002817(n)-Δ[C(C(n, 2), 2)]` -/
def P12031030004152106076.Spec : Prop :=
  ∀ n, P12031030004152106076.a n = A101357 n

end A101357

/-! ## A101357.P5853129019104691076

`A014626(n)+A002415(n)`
-/

namespace A101357.P5853129019104691076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014626 n + A002415 n

end

end A101357.P5853129019104691076

namespace A101357

/-- `A014626(n)+A002415(n)` -/
def P5853129019104691076.Spec : Prop :=
  ∀ n, P5853129019104691076.a n = A101357 n

end A101357

/-! ## A101357.P2840637468021608140

`A002817(n)-A135503(n)`
-/

namespace A101357.P2840637468021608140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 n - A135503 n

end

end A101357.P2840637468021608140

namespace A101357

/-- `A002817(n)-A135503(n)` -/
def P2840637468021608140.Spec : Prop :=
  ∀ n, P2840637468021608140.a n = A101357 n

end A101357

/-! ## A101357.P13483900874539319505

`A241765(n)-A002492(n)`
-/

namespace A101357.P13483900874539319505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241765 n - A002492 n

end

end A101357.P13483900874539319505

namespace A101357

/-- `A241765(n)-A002492(n)` -/
def P13483900874539319505.Spec : Prop :=
  ∀ n, P13483900874539319505.a n = A101357 n

end A101357

/-! ## A101357.P13252362903593675870

`A071237(n)-A236770(n)`
-/

namespace A101357.P13252362903593675870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071237 n - A236770 n

end

end A101357.P13252362903593675870

namespace A101357

/-- `A071237(n)-A236770(n)` -/
def P13252362903593675870.Spec : Prop :=
  ∀ n, P13252362903593675870.a n = A101357 n

end A101357

/-! ## A101357.P15595540028995774378

`A267707(n)-A100119(n)`
-/

namespace A101357.P15595540028995774378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267707 n - A100119 n

end

end A101357.P15595540028995774378

namespace A101357

/-- `A267707(n)-A100119(n)` -/
def P15595540028995774378.Spec : Prop :=
  ∀ n, P15595540028995774378.a n = A101357 n

end A101357

/-! ## A101357.P7816635351668608289

`A215862(n)-A255211(n)`
-/

namespace A101357.P7816635351668608289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215862 n - A255211 n

end

end A101357.P7816635351668608289

namespace A101357

/-- `A215862(n)-A255211(n)` -/
def P7816635351668608289.Spec : Prop :=
  ∀ n, P7816635351668608289.a n = A101357 n

end A101357

/-!
# A101358: Electron affinity numbers (atomic numbers corresponding to the electron affinity).

The programs for A101358, there is no canonical definition to state claims against.
-/

/-! ## A101358.P18410966715828667193

`comp[A101359(n)]`
-/

namespace A101358.P18410966715828667193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101359 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A101358.P18410966715828667193

/-! ## A101358.P13025218251249013611

`comp[xor(A267418(A122007(n+1)), A267452(n))]`
-/

namespace A101358.P13025218251249013611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A267418 (A122007 (n + 1)).toNat) (A267452 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A101358.P13025218251249013611

/-! ## A101358.P16082419462282694407

`comp[A077255(2*n+1)-A070939(A007239(n+1))]`
-/

namespace A101358.P16082419462282694407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077255 (2 * n + 1) - A070939 (A007239 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A101358.P16082419462282694407

/-! ## A101358.P7380112611979123638

`∑[A079260(A339319(n+1)+A181937(3*n+4))+1]`
-/

namespace A101358.P7380112611979123638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079260 (A339319 (n + 1) + A181937 (3 * n + 4)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101358.P7380112611979123638

/-! ## A101358.P14975382716253901785

`∑[2-A005171(n*A212364(n)+1)]`
-/

namespace A101358.P14975382716253901785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A005171 ((n : ℤ) * A212364 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101358.P14975382716253901785

/-!
# A101359: Complement of A101358.

The programs for A101359, there is no canonical definition to state claims against.
-/

/-! ## A101359.P15353652593913724506

`comp[A101358(n)]`
-/

namespace A101359.P15353652593913724506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101358 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A101359.P15353652593913724506

/-! ## A101359.P4996604651171829023

`eq[0, char[A101358(n)]*A252628(n+1)]`
-/

namespace A101359.P4996604651171829023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101358 n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A252628 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A101359.P4996604651171829023

/-! ## A101359.P4544041269591348582

`xor(A267418(A122007(n+1)), A267452(n))`
-/

namespace A101359.P4544041269591348582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A267418 (A122007 (n + 1)).toNat) (A267452 n)

end

end A101359.P4544041269591348582

/-!
# A101360: a(n) = ceiling((3-sqrt(3))*4^(n-3)) + 1.

The programs for A101360, the canonical program `A101360.P15874295695395124527` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101360 has offset 0).

The definition of A101360 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((3-sqrt(3))*4^(n-3))+1` (program `A101360.P15874295695395124527`, by `A101360.P15874295695395124527.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A101360.P15874295695395124527

`ceil((3-sqrt(3))*4^(n-3))+1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101360

/-- `ceil((3-sqrt(3))*4^(n-3))+1` -/
def P15874295695395124527.Spec : Prop :=
  ∀ n, P15874295695395124527.a n = A101360 n

theorem P15874295695395124527.correct : P15874295695395124527.Spec := by
  intro n
  simp only [A101360]

end A101360

/-! ## A101360.P17962544770088446369

`A094062(A233583(n+1))`
-/

namespace A101360.P17962544770088446369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094062 (A233583 (n + 1)).toNat

end

end A101360.P17962544770088446369

namespace A101360

/-- `A094062(A233583(n+1))` -/
def P17962544770088446369.Spec : Prop :=
  ∀ n, P17962544770088446369.a n = A101360 n

end A101360

/-! ## A101360.P18053809931021751390

`A094062(A289207(n)+2)`
-/

namespace A101360.P18053809931021751390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094062 (A289207 n + 2).toNat

end

end A101360.P18053809931021751390

namespace A101360

/-- `A094062(A289207(n)+2)` -/
def P18053809931021751390.Spec : Prop :=
  ∀ n, P18053809931021751390.a n = A101360 n

end A101360

/-! ## A101360.P3322810195173074484

`A094062(A004275(n)+2-n)`
-/

namespace A101360.P3322810195173074484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094062 (A004275 n + (2 - (n : ℤ))).toNat

end

end A101360.P3322810195173074484

namespace A101360

/-- `A094062(A004275(n)+2-n)` -/
def P3322810195173074484.Spec : Prop :=
  ∀ n, P3322810195173074484.a n = A101360 n

end A101360

/-! ## A101360.P13283161954767979614

`A094062(2-(n-A004275(n)))`
-/

namespace A101360.P13283161954767979614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094062 (2 - ((n : ℤ) - A004275 n)).toNat

end

end A101360.P13283161954767979614

namespace A101360

/-- `A094062(2-(n-A004275(n)))` -/
def P13283161954767979614.Spec : Prop :=
  ∀ n, P13283161954767979614.a n = A101360 n

end A101360

/-! ## A101360.P9973942529154034648

`A094062(eq[1, A082460(n+1)]-(n-1))`
-/

namespace A101360.P9973942529154034648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094062 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - ((n : ℤ) - 1)).toNat

end

end A101360.P9973942529154034648

namespace A101360

/-- `A094062(eq[1, A082460(n+1)]-(n-1))` -/
def P9973942529154034648.Spec : Prop :=
  ∀ n, P9973942529154034648.a n = A101360 n

end A101360

/-!
# A101361: a(1) = a(2) = 1; for n > 2, a(n) = Knuth's Fibonacci (or circle) product "a(n-1) o a(n-2)".

The programs for A101361, the canonical program `A101361.P2631680910729705512` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101361 has offset 1).

The definition of A101361 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101361.P2631680910729705512

`(a(n-1)²-a(n-2)²)/a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101361

/-- `(a(n-1)²-a(n-2)²)/a(n-3)` -/
def P2631680910729705512.Spec : Prop :=
  ∀ n, P2631680910729705512.a n = (A101361 (n + 1) : ℚ)

end A101361

/-! ## A101361.P5731308871564271741

`A001906(Δ[round(ϕ*a(n-1))])` with `a(0)=1`
-/

namespace A101361.P5731308871564271741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (f1 (n + 1) - f1 n).toNat

end

end A101361.P5731308871564271741

namespace A101361

/-- `A001906(Δ[round(ϕ*a(n-1))])` -/
def P5731308871564271741.Spec : Prop :=
  ∀ n, P5731308871564271741.a n = A101361 (n + 1)

end A101361

/-! ## A101361.P10085023955394415837

`A088305(Δ[round(ϕ*a(n-1))])` with `a(0)=1`
-/

namespace A101361.P10085023955394415837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 (f1 (n + 1) - f1 n).toNat

end

end A101361.P10085023955394415837

namespace A101361

/-- `A088305(Δ[round(ϕ*a(n-1))])` -/
def P10085023955394415837.Spec : Prop :=
  ∀ n, P10085023955394415837.a n = A101361 (n + 1)

end A101361

/-!
# A101362: a(n) = (n+1)*n^4.

The programs for A101362, the canonical program `A101362.P467268516433551878` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101362 has offset 0).

The definition of A101362 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*n^4` (program `A101362.P467268516433551878`, by `A101362.P467268516433551878.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A101362.P467268516433551878

`(n+1)*n^4`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101362

/-- `(n+1)*n^4` -/
def P467268516433551878.Spec : Prop :=
  ∀ n, (P467268516433551878.a n : ℤ) = A101362 n

theorem P467268516433551878.correct : P467268516433551878.Spec := by
  intro n
  simp only [A101362]

end A101362

/-! ## A101362.P14201906297886377321

`lcm(n+1, n^4)`
-/

namespace A101362.P14201906297886377321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (n ^ 4)

end

end A101362.P14201906297886377321

namespace A101362

/-- `lcm(n+1, n^4)` -/
def P14201906297886377321.Spec : Prop :=
  ∀ n, (P14201906297886377321.a n : ℤ) = A101362 n

end A101362

/-! ## A101362.P3930584911158408835

`floor((n+1)/acot(n^4))`
-/

namespace A101362.P3930584911158408835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / SequenceMachineLib.acot (n ^ 4 : ℝ)⌋

end

end A101362.P3930584911158408835

namespace A101362

/-- `floor((n+1)/acot(n^4))` -/
def P3930584911158408835.Spec : Prop :=
  ∀ n, P3930584911158408835.a n = A101362 n

end A101362

/-! ## A101362.P14021169220400812042

`n^4/tan(acot(n+1))`
-/

namespace A101362.P14021169220400812042
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℝ) / Real.tan (SequenceMachineLib.acot (n + 1 : ℝ))

end

end A101362.P14021169220400812042

namespace A101362

/-- `n^4/tan(acot(n+1))` -/
def P14021169220400812042.Spec : Prop :=
  ∀ n, P14021169220400812042.a n = (A101362 n : ℝ)

end A101362

/-! ## A101362.P9010747135042594974

`n^4/cot(atan(n+1))`
-/

namespace A101362.P9010747135042594974
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℝ) / Real.cot (Real.arctan (n + 1 : ℝ))

end

end A101362.P9010747135042594974

namespace A101362

/-- `n^4/cot(atan(n+1))` -/
def P9010747135042594974.Spec : Prop :=
  ∀ n, P9010747135042594974.a n = (A101362 n : ℝ)

end A101362

/-! ## A101362.P11767900881345341796

`and((n+1)*n²², -2)`
-/

namespace A101362.P11767900881345341796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n + 1) * (n ^ 2) ^ 2 : ℤ) (-2)

end

end A101362.P11767900881345341796

namespace A101362

/-- `and((n+1)*n²², -2)` -/
def P11767900881345341796.Spec : Prop :=
  ∀ n, P11767900881345341796.a n = A101362 n

end A101362

/-! ## A101362.P11187387235661411124

`sqrt(lcm(n²²², (n+1)²))`
-/

namespace A101362.P11187387235661411124
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.lcm (((n ^ 2) ^ 2) ^ 2) ((n + 1) ^ 2) : ℝ)

end

end A101362.P11187387235661411124

namespace A101362

/-- `sqrt(lcm(n²²², (n+1)²))` -/
def P11187387235661411124.Spec : Prop :=
  ∀ n, P11187387235661411124.a n = (A101362 n : ℝ)

end A101362

/-! ## A101362.P5586344590254230071

`xor(1, (n+1)*n²²+1)`
-/

namespace A101362.P5586344590254230071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((n + 1) * (n ^ 2) ^ 2 + 1)

end

end A101362.P5586344590254230071

namespace A101362

/-- `xor(1, (n+1)*n²²+1)` -/
def P5586344590254230071.Spec : Prop :=
  ∀ n, (P5586344590254230071.a n : ℤ) = A101362 n

end A101362

/-! ## A101362.P17052294502745004883

`∑[lcm(2, Δ[n*(1-n)²²])]`
-/

namespace A101362.P17052294502745004883
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((1 - (n : ℤ)) ^ 2) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101362.P17052294502745004883

namespace A101362

/-- `∑[lcm(2, Δ[n*(1-n)²²])]` -/
def P17052294502745004883.Spec : Prop :=
  ∀ n, (P17052294502745004883.a n : ℤ) = A101362 n

end A101362

/-! ## A101362.P10487614905906682515

`n^4+gcd(n, a(n-1))^5` with `a(0)=0`
-/

namespace A101362.P10487614905906682515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n ^ 4 + Nat.gcd n (a (n - 1)) ^ 5

end

end A101362.P10487614905906682515

namespace A101362

/-- `n^4+gcd(n, a(n-1))^5` -/
def P10487614905906682515.Spec : Prop :=
  ∀ n, (P10487614905906682515.a n : ℤ) = A101362 n

end A101362

/-! ## A101362.P9439984266117666398

`C(2, n+3)+(n+1)*n²²`
-/

namespace A101362.P9439984266117666398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 3) + (n + 1) * (n ^ 2) ^ 2

end

end A101362.P9439984266117666398

namespace A101362

/-- `C(2, n+3)+(n+1)*n²²` -/
def P9439984266117666398.Spec : Prop :=
  ∀ n, (P9439984266117666398.a n : ℤ) = A101362 n

end A101362

/-! ## A101362.P3486886433129031427

`and(1, 2*n)+(n+1)*n²²`
-/

namespace A101362.P3486886433129031427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (2 * n) + (n + 1) * (n ^ 2) ^ 2

end

end A101362.P3486886433129031427

namespace A101362

/-- `and(1, 2*n)+(n+1)*n²²` -/
def P3486886433129031427.Spec : Prop :=
  ∀ n, (P3486886433129031427.a n : ℤ) = A101362 n

end A101362

/-! ## A101362.P7911722401726843304

`Δ[a(n-1)+n*(1-n)²²]` with `a(0)=0`
-/

namespace A101362.P7911722401726843304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + (n : ℤ) * ((1 - (n : ℤ)) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101362.P7911722401726843304

namespace A101362

/-- `Δ[a(n-1)+n*(1-n)²²]` -/
def P7911722401726843304.Spec : Prop :=
  ∀ n, P7911722401726843304.a n = A101362 n

end A101362

/-! ## A101362.P7935655165149282792

`floor((n+1)*∑[a(n-1)+2]²)` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A101362.P7935655165149282792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A101362.P7935655165149282792

namespace A101362

/-- `floor((n+1)*∑[a(n-1)+2]²)` -/
def P7935655165149282792.Spec : Prop :=
  ∀ n, (P7935655165149282792.a n : ℤ) = A101362 n

end A101362

/-! ## A101362.P12903070960482906420

`(n*∑[a(n-1)+2])²/(n+1)` with `a(0)=0`
-/

namespace A101362.P12903070960482906420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n * (∑ j ∈ Finset.range (n + 1), f1 j)) ^ 2 : ℕ) : ℚ) / (n + 1 : ℚ)

end

end A101362.P12903070960482906420

namespace A101362

/-- `(n*∑[a(n-1)+2])²/(n+1)` -/
def P12903070960482906420.Spec : Prop :=
  ∀ n, P12903070960482906420.a n = (A101362 n : ℚ)

end A101362

/-! ## A101362.P3068219679922651453

`A000583(n)+n^5`
-/

namespace A101362.P3068219679922651453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n + (n ^ 5 : ℤ)

end

end A101362.P3068219679922651453

namespace A101362

/-- `A000583(n)+n^5` -/
def P3068219679922651453.Spec : Prop :=
  ∀ n, P3068219679922651453.a n = A101362 n

theorem P3068219679922651453.correct : P3068219679922651453.Spec := by
  intro n
  simp only [A101362, Nat.add_sub_cancel, A101362.P3068219679922651453.a, A101362.P467268516433551878.a, A000583, A000583.P14547500281748394449.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A101362

/-! ## A101362.P1694528976984935895

`A000584(n)+n²²`
-/

namespace A101362.P1694528976984935895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n + ((n ^ 2) ^ 2 : ℤ)

end

end A101362.P1694528976984935895

namespace A101362

/-- `A000584(n)+n²²` -/
def P1694528976984935895.Spec : Prop :=
  ∀ n, P1694528976984935895.a n = A101362 n

theorem P1694528976984935895.correct : P1694528976984935895.Spec := by
  intro n
  simp only [A101362, Nat.add_sub_cancel, A101362.P1694528976984935895.a, A101362.P467268516433551878.a, A000584, A000584.P5477385692209315495.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A101362

/-! ## A101362.P12320578389768124029

`A011379(n)²/(n+1)`
-/

namespace A101362.P12320578389768124029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011379 n ^ 2 : ℚ) / (n + 1 : ℚ)

end

end A101362.P12320578389768124029

namespace A101362

/-- `A011379(n)²/(n+1)` -/
def P12320578389768124029.Spec : Prop :=
  ∀ n, P12320578389768124029.a n = (A101362 n : ℚ)

end A101362

/-! ## A101362.P9070131389920240190

`sqrt(A008454(n))+n²²`
-/

namespace A101362.P9070131389920240190
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008454 n : ℝ) + ((n ^ 2) ^ 2 : ℝ)

end

end A101362.P9070131389920240190

namespace A101362

/-- `sqrt(A008454(n))+n²²` -/
def P9070131389920240190.Spec : Prop :=
  ∀ n, P9070131389920240190.a n = (A101362 n : ℝ)

end A101362

/-! ## A101362.P11233564555045387779

`2*A163274(n)/(n+1)`
-/

namespace A101362.P11233564555045387779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A163274 n : ℚ) / (n + 1 : ℚ)

end

end A101362.P11233564555045387779

namespace A101362

/-- `2*A163274(n)/(n+1)` -/
def P11233564555045387779.Spec : Prop :=
  ∀ n, P11233564555045387779.a n = (A101362 n : ℚ)

end A101362

/-!
# A101363: In the interior of a regular 2n-gon with all diagonals drawn, the number of points where exactly three diagonals intersect.

The programs for A101363, there is no canonical definition to state claims against.
-/

/-! ## A101363.P661548507546549113

`A292105(∑[n+3]+3)`
-/

namespace A101363.P661548507546549113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292105 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A101363.P661548507546549113

/-! ## A101363.P3676857335386234526

`A292105(A000217(n+3))%A020714(n)`
-/

namespace A101363.P3676857335386234526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292105 (A000217 (n + 3)).toNat) (A020714 n)

end

end A101363.P3676857335386234526

/-! ## A101363.P13483671421983792712

`A292105(A000217(n+3))+A000007(2*(n+2))`
-/

namespace A101363.P13483671421983792712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292105 (A000217 (n + 3)).toNat + A000007 (2 * (n + 2))

end

end A101363.P13483671421983792712

/-! ## A101363.P16984653171505187077

`A292105(A000217(n+3))/A097712(A000217(n))`
-/

namespace A101363.P16984653171505187077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292105 (A000217 (n + 3)).toNat : ℚ) / (A097712 (A000217 n).toNat : ℚ)

end

end A101363.P16984653171505187077

/-! ## A101363.P1829062566635439923

`record[A292105(n+1)^A136630(n)]`
-/

namespace A101363.P1829062566635439923
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292105 (n + 1) : ℚ) ^ (A136630 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101363.P1829062566635439923

/-!
# A101365: In the interior of a regular n-gon with all diagonals drawn, the number of points where exactly five diagonals intersect.

The programs for A101365, there is no canonical definition to state claims against.
-/

/-! ## A101365.P5588365322629089203

`A008437(A027562(n)/2)`
-/

namespace A101365.P5588365322629089203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008437 (SequenceMachineLib.roundAway ((A027562 n : ℚ) / 2)).toNat

end

end A101365.P5588365322629089203

/-! ## A101365.P13462320664847413447

`A081130(∏{e}[A113224(n), #])`
-/

namespace A101365.P13462320664847413447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113224 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081130 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A101365.P13462320664847413447

/-! ## A101365.P1275890856397857629

`A309954(∑[∑[A137361(n)]])`
-/

namespace A101365.P1275890856397857629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137361 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309954 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A101365.P1275890856397857629

/-! ## A101365.P9774799337760983297

`A320893(2*(n+1))%A107047(val(n+1, 2))`
-/

namespace A101365.P9774799337760983297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320893 (2 * (n + 1))) (A107047 (SequenceMachineLib.valuation (n + 1) 2))

end

end A101365.P9774799337760983297

/-! ## A101365.P16974288873643610869

`A239955(A051823(n+1)%(2^val(n+1, 2)))`
-/

namespace A101365.P16974288873643610869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239955 (Int.tmod (A051823 (n + 1)) (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ)).toNat

end

end A101365.P16974288873643610869

/-!
# A101368: The sequence solves the following problem: find all the pairs (i,j) such that i divides 1+j+j^2 and j divides 1+i+i^2. In fact, the pairs (a(n),a(n+1)), n>0, are all the solutions.

The programs for A101368, the canonical program `A101368.P3241443226039739397` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101368 has offset 1).

The definition of A101368 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101368.P3241443226039739397

`5*a(n-1)-a(n-2)-1` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101368

/-- `5*a(n-1)-a(n-2)-1` -/
def P3241443226039739397.Spec : Prop :=
  ∀ n, P3241443226039739397.a n = A101368 (n + 1)

theorem P3241443226039739397.correct : P3241443226039739397.Spec := by
  intro n
  simp only [A101368, Nat.add_sub_cancel]

end A101368

/-! ## A101368.P18172751749665922933

`(1+a(n-1)+a(n-1)²)/a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A101368.P18172751749665922933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (1 + a (n - 1) + a (n - 1) ^ 2) / a (n - 2)

end

end A101368.P18172751749665922933

namespace A101368

/-- `(1+a(n-1)+a(n-1)²)/a(n-2)` -/
def P18172751749665922933.Spec : Prop :=
  ∀ n, P18172751749665922933.a n = (A101368 (n + 1) : ℚ)

end A101368

/-! ## A101368.P1341633991193897827

`∑[ogf((1-5x+3x^2)/(1-5x+x^2))]`
-/

namespace A101368.P1341633991193897827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 3] [1, -5, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101368.P1341633991193897827

namespace A101368

/-- `∑[ogf((1-5x+3x^2)/(1-5x+x^2))]` -/
def P1341633991193897827.Spec : Prop :=
  ∀ n, P1341633991193897827.a n = A101368 (n + 1)

end A101368

/-! ## A101368.P11013595543479743459

`ogf((1-5x+3x^2)/(1-6x+6x^2-x^3))`
-/

namespace A101368.P11013595543479743459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 3] [1, -6, 6, -1] n

end

end A101368.P11013595543479743459

namespace A101368

/-- `ogf((1-5x+3x^2)/(1-6x+6x^2-x^3))` -/
def P11013595543479743459.Spec : Prop :=
  ∀ n, P11013595543479743459.a n = A101368 (n + 1)

end A101368

/-! ## A101368.P7557948217370010385

`lcm(5, a(n-1))-(a(n-2)+1)` with `a(0)=1, a(1)=1`
-/

namespace A101368.P7557948217370010385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (Int.lcm 5 (a (n - 1)) : ℤ) - (a (n - 2) + 1)

end

end A101368.P7557948217370010385

namespace A101368

/-- `lcm(5, a(n-1))-(a(n-2)+1)` -/
def P7557948217370010385.Spec : Prop :=
  ∀ n, P7557948217370010385.a n = A101368 (n + 1)

end A101368

/-! ## A101368.P7139910727975651909

`A002310(n)-∑[A004254(n)]`
-/

namespace A101368.P7139910727975651909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002310 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101368.P7139910727975651909

namespace A101368

/-- `A002310(n)-∑[A004254(n)]` -/
def P7139910727975651909.Spec : Prop :=
  ∀ n, P7139910727975651909.a n = A101368 (n + 1)

end A101368

/-! ## A101368.P9424427075138853157

`A002320(n)+1-∑[A002310(n)]`
-/

namespace A101368.P9424427075138853157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002320 n + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101368.P9424427075138853157

namespace A101368

/-- `A002320(n)+1-∑[A002310(n)]` -/
def P9424427075138853157.Spec : Prop :=
  ∀ n, P9424427075138853157.a n = A101368 (n + 1)

end A101368

/-! ## A101368.P1688025585051930068

`A217787(A016777(n))-∑[A004254(n)]`
-/

namespace A101368.P1688025585051930068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217787 (A016777 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101368.P1688025585051930068

namespace A101368

/-- `A217787(A016777(n))-∑[A004254(n)]` -/
def P1688025585051930068.Spec : Prop :=
  ∀ n, P1688025585051930068.a n = A101368 (n + 1)

end A101368

/-! ## A101368.P7270700978383420954

`A002310(n)-∑[A002310(n+1)%A004253(n+1)]`
-/

namespace A101368.P7270700978383420954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002310 (n + 1)) (A004253 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002310 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101368.P7270700978383420954

namespace A101368

/-- `A002310(n)-∑[A002310(n+1)%A004253(n+1)]` -/
def P7270700978383420954.Spec : Prop :=
  ∀ n, P7270700978383420954.a n = A101368 (n + 1)

end A101368

/-!
# A101369: a(2n-1) = the smallest positive integer not occurring earlier in the sequence. a(2n) = the a(2n-1)th smallest positive integer among those not occurring earlier in the sequence.

The programs for A101369, the canonical program `A101369.P1559296949486113777` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101369 has offset 1).

The definition of A101369 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101369.P1559296949486113777

`A086377(A008619(n))+A001057(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A101369

/-- `A086377(A008619(n))+A001057(n)` -/
def P1559296949486113777.Spec : Prop :=
  ∀ n, P1559296949486113777.a n = A101369 (n + 1)

theorem P1559296949486113777.correct : P1559296949486113777.Spec := by
  intro n
  simp only [A101369, Nat.add_sub_cancel]

end A101369

/-! ## A101369.P18124265622376989984

`A086377(∑[A059841(n)])+A001057(n)`
-/

namespace A101369.P18124265622376989984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086377 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A001057 n

end

end A101369.P18124265622376989984

namespace A101369

/-- `A086377(∑[A059841(n)])+A001057(n)` -/
def P18124265622376989984.Spec : Prop :=
  ∀ n, P18124265622376989984.a n = A101369 (n + 1)

end A101369

/-! ## A101369.P2440701938269257196

`A136119(A008619(n))+Δ[A008794(n)]`
-/

namespace A101369.P2440701938269257196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136119 (A008619 n).toNat + (f1 (n + 1) - f1 n)

end

end A101369.P2440701938269257196

namespace A101369

/-- `A136119(A008619(n))+Δ[A008794(n)]` -/
def P2440701938269257196.Spec : Prop :=
  ∀ n, P2440701938269257196.a n = A101369 (n + 1)

end A101369

/-! ## A101369.P13709273146554906190

`A086377(A004526(n)+1)+A001057(n)`
-/

namespace A101369.P13709273146554906190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086377 (A004526 n + 1).toNat + A001057 n

end

end A101369.P13709273146554906190

namespace A101369

/-- `A086377(A004526(n)+1)+A001057(n)` -/
def P13709273146554906190.Spec : Prop :=
  ∀ n, P13709273146554906190.a n = A101369 (n + 1)

theorem P13709273146554906190.correct : P13709273146554906190.Spec := by
  intro n
  simp only [A101369, Nat.add_sub_cancel, A101369.P13709273146554906190.a, A101369.P1559296949486113777.a, A001057, A001057.P5698194758103254717.a, A004526, A004526.P10084182425416171735.a, A008619, A008619.P16053834178911111118.a, A086377, A086377.P18272257375655639388.a, A064437, A064437.P5587334447792693443.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A101369

/-! ## A101369.P13297481827919270983

`A136119(A004526(n)+1)+Δ[A008794(n)]`
-/

namespace A101369.P13297481827919270983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136119 (A004526 n + 1).toNat + (f1 (n + 1) - f1 n)

end

end A101369.P13297481827919270983

namespace A101369

/-- `A136119(A004526(n)+1)+Δ[A008794(n)]` -/
def P13297481827919270983.Spec : Prop :=
  ∀ n, P13297481827919270983.a n = A101369 (n + 1)

end A101369

/-! ## A101369.P11357164551483727476

`A353592(A114112(n+1))`
-/

namespace A101369.P11357164551483727476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353592 (A114112 (n + 1)).toNat

end

end A101369.P11357164551483727476

namespace A101369

/-- `A353592(A114112(n+1))` -/
def P11357164551483727476.Spec : Prop :=
  ∀ n, P11357164551483727476.a n = A101369 (n + 1)

end A101369

/-!
# A101370: Number of zero-one matrices with n ones and no zero rows or columns.

The programs for A101370, there is no canonical definition to state claims against.
-/

/-! ## A101370.P17509821835125922469

`A312620(round((n+2)^n/3))`
-/

namespace A101370.P17509821835125922469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312620 (SequenceMachineLib.roundAway (((n + 2) ^ n : ℚ) / 3)).toNat

end

end A101370.P17509821835125922469

/-!
# A101372: Triangle read by rows: T(n,k) is number of leaves at level k in all noncrossing rooted trees on n+1 nodes.

The programs for A101372, there is no canonical definition to state claims against.
-/

/-! ## A101372.P4638160701075941675

`abs(A059268(n)*A124821(n))`
-/

namespace A101372.P4638160701075941675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A059268 n * A124821 n|

end

end A101372.P4638160701075941675

/-! ## A101372.P11286591530872701956

`gcd(A000038(n), A124821(n))*A059268(n)`
-/

namespace A101372.P11286591530872701956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000038 n) (A124821 n) : ℤ) * A059268 n

end

end A101372.P11286591530872701956

/-! ## A101372.P17624158740258885409

`lcm(A033999(n), A124821(n))*A059268(n)`
-/

namespace A101372.P17624158740258885409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A033999 n) (A124821 n) : ℤ) * A059268 n

end

end A101372.P17624158740258885409

/-! ## A101372.P13563194598195878994

`A059268(n)*A124821(n)*A009531(A099375(n))`
-/

namespace A101372.P13563194598195878994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A124821 n * A009531 (A099375 n).toNat

end

end A101372.P13563194598195878994

/-!
# A101373: a(n) = A063740(A100827(n)).

The programs for A101373, there is no canonical definition to state claims against.
-/

/-! ## A101373.P1184570154637467382

`A063740(A100827(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A101373.P1184570154637467382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063740 (A100827 (n + 1)).toNat

end

end A101373.P1184570154637467382

/-! ## A101373.P5325217343640706762

`record[A063740(n+2)]`
-/

namespace A101373.P5325217343640706762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063740 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101373.P5325217343640706762

/-!
# A101374: a(n) = n*(n^3 - n + 2)/2.

The programs for A101374, the canonical program `A101374.P11484643934356411829` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101374 has offset 0).

The definition of A101374 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n^3-n+2)/2` (program `A101374.P9337005877945755412`, by `A101374.P9337005877945755412.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A101374.P9337005877945755412

`n*(n^3-n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A101374.P9337005877945755412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n ^ 3 : ℤ) - (n : ℤ) + 2) : ℚ) / 2

end

end A101374.P9337005877945755412

namespace A101374

/-- `n*(n^3-n+2)/2` -/
def P9337005877945755412.Spec : Prop :=
  ∀ n, P9337005877945755412.a n = (A101374 n : ℚ)

theorem P9337005877945755412.correct : P9337005877945755412.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A101374, Nat.add_sub_cancel, A101374.P9337005877945755412.a, A101374.P11484643934356411829.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A101374, Nat.add_sub_cancel, A101374.P9337005877945755412.a, A101374.P11484643934356411829.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A101374

/-! ## A101374.P11484643934356411829

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=8, a(3)=39, a(4)=124`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101374

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P11484643934356411829.Spec : Prop :=
  ∀ n, P11484643934356411829.a n = A101374 n

theorem P11484643934356411829.correct : P11484643934356411829.Spec := by
  intro n
  simp only [A101374]

end A101374

/-! ## A101374.P14425623017187529116

`C(n², 2)+n`
-/

namespace A101374.P14425623017187529116
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2) 2 + n

end

end A101374.P14425623017187529116

namespace A101374

/-- `C(n², 2)+n` -/
def P14425623017187529116.Spec : Prop :=
  ∀ n, (P14425623017187529116.a n : ℤ) = A101374 n

end A101374

/-! ## A101374.P7033306720819624536

`n*(∑[3*C(n, 2)]+1)`
-/

namespace A101374.P7033306720819624536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A101374.P7033306720819624536

namespace A101374

/-- `n*(∑[3*C(n, 2)]+1)` -/
def P7033306720819624536.Spec : Prop :=
  ∀ n, (P7033306720819624536.a n : ℤ) = A101374 n

end A101374

/-! ## A101374.P5833254383090082483

`n*(Δ[C(C(n, 2), 2)]+1)`
-/

namespace A101374.P5833254383090082483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose n 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1)

end

end A101374.P5833254383090082483

namespace A101374

/-- `n*(Δ[C(C(n, 2), 2)]+1)` -/
def P5833254383090082483.Spec : Prop :=
  ∀ n, P5833254383090082483.a n = A101374 n

end A101374

/-! ## A101374.P14392901794358118034

`2*n-(n-C(n², 2))`
-/

namespace A101374.P14392901794358118034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - (Nat.choose (n ^ 2) 2 : ℤ))

end

end A101374.P14392901794358118034

namespace A101374

/-- `2*n-(n-C(n², 2))` -/
def P14392901794358118034.Spec : Prop :=
  ∀ n, P14392901794358118034.a n = A101374 n

end A101374

/-! ## A101374.P4123219145946024099

`n*(3*C(n+1, 3)+1)`
-/

namespace A101374.P4123219145946024099
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (3 * Nat.choose (n + 1) 3 + 1)

end

end A101374.P4123219145946024099

namespace A101374

/-- `n*(3*C(n+1, 3)+1)` -/
def P4123219145946024099.Spec : Prop :=
  ∀ n, (P4123219145946024099.a n : ℤ) = A101374 n

end A101374

/-! ## A101374.P17861214052749856973

`n*∑[∑[a(n-1)+3]]` with `a(0)=1, a(1)=-1, a(2)=3`
-/

namespace A101374.P17861214052749856973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 3] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101374.P17861214052749856973

namespace A101374

/-- `n*∑[∑[a(n-1)+3]]` -/
def P17861214052749856973.Spec : Prop :=
  ∀ n, P17861214052749856973.a n = A101374 n

end A101374

/-! ## A101374.P12731204111967165961

`n*(∑[∑[ogf(3x^2/(1-2x+x^2))]]+1)`
-/

namespace A101374.P12731204111967165961
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 3] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A101374.P12731204111967165961

namespace A101374

/-- `n*(∑[∑[ogf(3x^2/(1-2x+x^2))]]+1)` -/
def P12731204111967165961.Spec : Prop :=
  ∀ n, P12731204111967165961.a n = A101374 n

end A101374

/-! ## A101374.P7014652576323025358

`n*A158842(n)`
-/

namespace A101374.P7014652576323025358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A158842 n

end

end A101374.P7014652576323025358

namespace A101374

/-- `n*A158842(n)` -/
def P7014652576323025358.Spec : Prop :=
  ∀ n, P7014652576323025358.a n = A101374 n

end A101374

/-! ## A101374.P5204536065187179017

`n*(A135503(n)+1)`
-/

namespace A101374.P5204536065187179017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A135503 n + 1)

end

end A101374.P5204536065187179017

namespace A101374

/-- `n*(A135503(n)+1)` -/
def P5204536065187179017.Spec : Prop :=
  ∀ n, P5204536065187179017.a n = A101374 n

end A101374

/-! ## A101374.P2413162561848188025

`2*A006011(n)+n`
-/

namespace A101374.P2413162561848188025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006011 n + (n : ℤ)

end

end A101374.P2413162561848188025

namespace A101374

/-- `2*A006011(n)+n` -/
def P2413162561848188025.Spec : Prop :=
  ∀ n, P2413162561848188025.a n = A101374 n

end A101374

/-! ## A101374.P8491128624305943648

`3*A008911(n)+n`
-/

namespace A101374.P8491128624305943648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A008911 n + (n : ℤ)

end

end A101374.P8491128624305943648

namespace A101374

/-- `3*A008911(n)+n` -/
def P8491128624305943648.Spec : Prop :=
  ∀ n, P8491128624305943648.a n = A101374 n

end A101374

/-! ## A101374.P14935971382953643577

`n*ceil(A061600(n)/2)`
-/

namespace A101374.P14935971382953643577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈(A061600 n : ℚ) / 2⌉

end

end A101374.P14935971382953643577

namespace A101374

/-- `n*ceil(A061600(n)/2)` -/
def P14935971382953643577.Spec : Prop :=
  ∀ n, P14935971382953643577.a n = A101374 n

end A101374

/-! ## A101374.P10607459869385746597

`n*(Δ[A050534(n)]+1)`
-/

namespace A101374.P10607459869385746597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050534 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n + 1)

end

end A101374.P10607459869385746597

namespace A101374

/-- `n*(Δ[A050534(n)]+1)` -/
def P10607459869385746597.Spec : Prop :=
  ∀ n, P10607459869385746597.a n = A101374 n

end A101374

/-! ## A101374.P13272151120510621050

`n*(Δ[A101357(n)]-n)`
-/

namespace A101374.P13272151120510621050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n - (n : ℤ))

end

end A101374.P13272151120510621050

namespace A101374

/-- `n*(Δ[A101357(n)]-n)` -/
def P13272151120510621050.Spec : Prop :=
  ∀ n, P13272151120510621050.a n = A101374 n

end A101374

/-! ## A101374.P561429204440974248

`n*(A006003(n)+1-n)`
-/

namespace A101374.P561429204440974248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A006003 n + (1 - (n : ℤ)))

end

end A101374.P561429204440974248

namespace A101374

/-- `n*(A006003(n)+1-n)` -/
def P561429204440974248.Spec : Prop :=
  ∀ n, P561429204440974248.a n = A101374 n

end A101374

/-! ## A101374.P17563949785844377408

`A152015(n)+A117665(n)`
-/

namespace A101374.P17563949785844377408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152015 n + A117665 n

end

end A101374.P17563949785844377408

namespace A101374

/-- `A152015(n)+A117665(n)` -/
def P17563949785844377408.Spec : Prop :=
  ∀ n, P17563949785844377408.a n = A101374 n

end A101374

/-! ## A101374.P4055028346932518594

`A330700(n)+A006484(n)`
-/

namespace A101374.P4055028346932518594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330700 n + A006484 n

end

end A101374.P4055028346932518594

namespace A101374

/-- `A330700(n)+A006484(n)` -/
def P4055028346932518594.Spec : Prop :=
  ∀ n, P4055028346932518594.a n = A101374 n

end A101374

/-! ## A101374.P492505224691586593

`A229183(n)+A171129(n)`
-/

namespace A101374.P492505224691586593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229183 n + A171129 n

end

end A101374.P492505224691586593

namespace A101374

/-- `A229183(n)+A171129(n)` -/
def P492505224691586593.Spec : Prop :=
  ∀ n, P492505224691586593.a n = A101374 n

end A101374

/-!
# A101375: a(n) = n*(n+1)*(n^2-2*n+2)/2.

The programs for A101375, the canonical program `A101375.P13767665924746932093` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101375 has offset 0).

The definition of A101375 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(n²-2*n+2)/2` (program `A101375.P4129420492349424787`, by `A101375.P4129420492349424787.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A101375.P4129420492349424787

`n*(n+1)*(n²-2*n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A101375.P4129420492349424787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) : ℤ) * ((n ^ 2 : ℤ) - (2 * n : ℤ) + 2) : ℚ) / 2

end

end A101375.P4129420492349424787

namespace A101375

/-- `n*(n+1)*(n²-2*n+2)/2` -/
def P4129420492349424787.Spec : Prop :=
  ∀ n, P4129420492349424787.a n = (A101375 n : ℚ)

theorem P4129420492349424787.correct : P4129420492349424787.Spec := by
  intro n
  simp only [A101375, Nat.add_sub_cancel, A101375.P4129420492349424787.a, A101375.P13767665924746932093.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A101375

/-! ## A101375.P4164678391762913260

`C(n, 2)*n²+n`
-/

namespace A101375.P4164678391762913260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 * n ^ 2 + n

end

end A101375.P4164678391762913260

namespace A101375

/-- `C(n, 2)*n²+n` -/
def P4164678391762913260.Spec : Prop :=
  ∀ n, (P4164678391762913260.a n : ℤ) = A101375 n

end A101375

/-! ## A101375.P13767665924746932093

`n*(n*C(n, 2)+1)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101375

/-- `n*(n*C(n, 2)+1)` -/
def P13767665924746932093.Spec : Prop :=
  ∀ n, (P13767665924746932093.a n : ℤ) = A101375 n

theorem P13767665924746932093.correct : P13767665924746932093.Spec := by
  intro n
  simp only [A101375]

end A101375

/-! ## A101375.P13721299645813543813

`C(n², 2)-n*∑[n-1]`
-/

namespace A101375.P13721299645813543813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 2) 2 : ℤ) - (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101375.P13721299645813543813

namespace A101375

/-- `C(n², 2)-n*∑[n-1]` -/
def P13721299645813543813.Spec : Prop :=
  ∀ n, P13721299645813543813.a n = A101375 n

end A101375

/-! ## A101375.P3777969616531973093

`lcm(n, ∑[C(n, 2)+(1-n)²])`
-/

namespace A101375.P3777969616531973093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) + (1 - (n : ℤ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101375.P3777969616531973093

namespace A101375

/-- `lcm(n, ∑[C(n, 2)+(1-n)²])` -/
def P3777969616531973093.Spec : Prop :=
  ∀ n, (P3777969616531973093.a n : ℤ) = A101375 n

end A101375

/-! ## A101375.P17803803007877763018

`∑[∑[∑[ogf((x+x^2+10x^3)/(1-2x+x^2))]]]`
-/

namespace A101375.P17803803007877763018
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 10] [1, -2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101375.P17803803007877763018

namespace A101375

/-- `∑[∑[∑[ogf((x+x^2+10x^3)/(1-2x+x^2))]]]` -/
def P17803803007877763018.Spec : Prop :=
  ∀ n, P17803803007877763018.a n = A101375 n

end A101375

/-! ## A101375.P8233586762595818887

`floor(n*∑[∑[a(n-1)+3]])` with `a(0)=1, a(1)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A101375.P8233586762595818887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101375.P8233586762595818887

namespace A101375

/-- `floor(n*∑[∑[a(n-1)+3]])` -/
def P8233586762595818887.Spec : Prop :=
  ∀ n, P8233586762595818887.a n = A101375 n

end A101375

/-! ## A101375.P17141208933886585609

`∑[n]*A160457(n)`
-/

namespace A101375.P17141208933886585609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A160457 n

end

end A101375.P17141208933886585609

namespace A101375

/-- `∑[n]*A160457(n)` -/
def P17141208933886585609.Spec : Prop :=
  ∀ n, P17141208933886585609.a n = A101375 n

end A101375

/-! ## A101375.P13760614109291452871

`A085537(n)/2+n`
-/

namespace A101375.P13760614109291452871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085537 n : ℚ) / 2 + (n : ℚ)

end

end A101375.P13760614109291452871

namespace A101375

/-- `A085537(n)/2+n` -/
def P13760614109291452871.Spec : Prop :=
  ∀ n, P13760614109291452871.a n = (A101375 n : ℚ)

end A101375

/-! ## A101375.P12971788141522825060

`n*(A218152(n)-n)`
-/

namespace A101375.P12971788141522825060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A218152 n - (n : ℤ))

end

end A101375.P12971788141522825060

namespace A101375

/-- `n*(A218152(n)-n)` -/
def P12971788141522825060.Spec : Prop :=
  ∀ n, P12971788141522825060.a n = A101375 n

end A101375

/-! ## A101375.P5649302337090990269

`ceil(A101377(n)/(n+1))`
-/

namespace A101375.P5649302337090990269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A101377 n : ℚ) / (n + 1 : ℚ)⌉

end

end A101375.P5649302337090990269

namespace A101375

/-- `ceil(A101377(n)/(n+1))` -/
def P5649302337090990269.Spec : Prop :=
  ∀ n, P5649302337090990269.a n = A101375 n

end A101375

/-! ## A101375.P5427940139971612431

`n²*A161680(n)+n`
-/

namespace A101375.P5427940139971612431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A161680 n + (n : ℤ)

end

end A101375.P5427940139971612431

namespace A101375

/-- `n²*A161680(n)+n` -/
def P5427940139971612431.Spec : Prop :=
  ∀ n, P5427940139971612431.a n = A101375 n

end A101375

/-! ## A101375.P4659396857203877796

`A100855(n)+n-∑[n]`
-/

namespace A101375.P4659396857203877796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100855 n + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A101375.P4659396857203877796

namespace A101375

/-- `A100855(n)+n-∑[n]` -/
def P4659396857203877796.Spec : Prop :=
  ∀ n, P4659396857203877796.a n = A101375 n

end A101375

/-! ## A101375.P7982260346988487620

`A321672(n)/(n+1)+n`
-/

namespace A101375.P7982260346988487620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321672 n : ℚ) / (n + 1 : ℚ) + (n : ℚ)

end

end A101375.P7982260346988487620

namespace A101375

/-- `A321672(n)/(n+1)+n` -/
def P7982260346988487620.Spec : Prop :=
  ∀ n, P7982260346988487620.a n = (A101375 n : ℚ)

end A101375

/-! ## A101375.P8478676205154449976

`(A000217(n)-n)*n²+n`
-/

namespace A101375.P8478676205154449976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 n - (n : ℤ)) * (n ^ 2 : ℤ) + (n : ℤ)

end

end A101375.P8478676205154449976

namespace A101375

/-- `(A000217(n)-n)*n²+n` -/
def P8478676205154449976.Spec : Prop :=
  ∀ n, P8478676205154449976.a n = A101375 n

end A101375

/-! ## A101375.P9543384539661098661

`2/(n+1)*A288962(n+1)`
-/

namespace A101375.P9543384539661098661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A288962 (n + 1) : ℚ)

end

end A101375.P9543384539661098661

namespace A101375

/-- `2/(n+1)*A288962(n+1)` -/
def P9543384539661098661.Spec : Prop :=
  ∀ n, P9543384539661098661.a n = (A101375 n : ℚ)

end A101375

/-! ## A101375.P15283949070036705992

`(n-1)*A000578(n)/2+n`
-/

namespace A101375.P15283949070036705992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) * A000578 n : ℚ) / 2 + (n : ℚ)

end

end A101375.P15283949070036705992

namespace A101375

/-- `(n-1)*A000578(n)/2+n` -/
def P15283949070036705992.Spec : Prop :=
  ∀ n, P15283949070036705992.a n = (A101375 n : ℚ)

end A101375

/-! ## A101375.P1288103226473708027

`A171129(n)+A000096(n)`
-/

namespace A101375.P1288103226473708027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171129 n + A000096 n

end

end A101375.P1288103226473708027

namespace A101375

/-- `A171129(n)+A000096(n)` -/
def P1288103226473708027.Spec : Prop :=
  ∀ n, P1288103226473708027.a n = A101375 n

end A101375

/-! ## A101375.P11810457191300219834

`A212135(n)+A060354(n)`
-/

namespace A101375.P11810457191300219834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212135 n + A060354 n

end

end A101375.P11810457191300219834

namespace A101375

/-- `A212135(n)+A060354(n)` -/
def P11810457191300219834.Spec : Prop :=
  ∀ n, P11810457191300219834.a n = A101375 n

end A101375

/-! ## A101375.P17347805085431710437

`A391092(n)+A006527(n)`
-/

namespace A101375.P17347805085431710437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391092 n + A006527 n

end

end A101375.P17347805085431710437

namespace A101375

/-- `A391092(n)+A006527(n)` -/
def P17347805085431710437.Spec : Prop :=
  ∀ n, P17347805085431710437.a n = A101375 n

end A101375

/-!
# A101376: a(n) = n^2*(n^3 - n^2 + n + 1)/2.

The programs for A101376, the canonical program `A101376.P10666075770793963008` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101376 has offset 0).

The definition of A101376 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(n^3-n²+n+1)/2` (program `A101376.P10266637315351384810`, by `A101376.P10266637315351384810.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A101376.P10266637315351384810

`n²*(n^3-n²+n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A101376.P10266637315351384810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * ((n ^ 3 : ℤ) - (n ^ 2 : ℤ) + (n : ℤ) + 1) : ℚ) / 2

end

end A101376.P10266637315351384810

namespace A101376

/-- `n²*(n^3-n²+n+1)/2` -/
def P10266637315351384810.Spec : Prop :=
  ∀ n, P10266637315351384810.a n = (A101376 n : ℚ)

theorem P10266637315351384810.correct : P10266637315351384810.Spec := by
  intro n
  simp only [A101376, Nat.add_sub_cancel, A101376.P10266637315351384810.a, A101376.P10666075770793963008.a, A071252, A071252.P13937739183146272210.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A101376

/-! ## A101376.P8703016801500901307

`n*A100855(n)`
-/

namespace A101376.P8703016801500901307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A100855 n

end

end A101376.P8703016801500901307

namespace A101376

/-- `n*A100855(n)` -/
def P8703016801500901307.Spec : Prop :=
  ∀ n, P8703016801500901307.a n = A101376 n

end A101376

/-! ## A101376.P10666075770793963008

`n*(A071252(n)+n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A101376

/-- `n*(A071252(n)+n)` -/
def P10666075770793963008.Spec : Prop :=
  ∀ n, P10666075770793963008.a n = A101376 n

theorem P10666075770793963008.correct : P10666075770793963008.Spec := by
  intro n
  simp only [A101376]

end A101376

/-! ## A101376.P4388522057792441006

`n²+A037250(n)/2`
-/

namespace A101376.P4388522057792441006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) + (A037250 n : ℚ) / 2

end

end A101376.P4388522057792441006

namespace A101376

/-- `n²+A037250(n)/2` -/
def P4388522057792441006.Spec : Prop :=
  ∀ n, P4388522057792441006.a n = (A101376 n : ℚ)

end A101376

/-! ## A101376.P12981834931809977513

`(n+1)*A058919(n)-1`
-/

namespace A101376.P12981834931809977513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A058919 n - 1

end

end A101376.P12981834931809977513

namespace A101376

/-- `(n+1)*A058919(n)-1` -/
def P12981834931809977513.Spec : Prop :=
  ∀ n, P12981834931809977513.a n = A101376 n

end A101376

/-! ## A101376.P15500734538815759846

`(n+1)*A212135(n)+n`
-/

namespace A101376.P15500734538815759846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A212135 n + (n : ℤ)

end

end A101376.P15500734538815759846

namespace A101376

/-- `(n+1)*A212135(n)+n` -/
def P15500734538815759846.Spec : Prop :=
  ∀ n, P15500734538815759846.a n = A101376 n

end A101376

/-! ## A101376.P8768174438561438323

`n*A071237(n)-n²²`
-/

namespace A101376.P8768174438561438323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A071237 n - ((n ^ 2) ^ 2 : ℤ)

end

end A101376.P8768174438561438323

namespace A101376

/-- `n*A071237(n)-n²²` -/
def P8768174438561438323.Spec : Prop :=
  ∀ n, P8768174438561438323.a n = A101376 n

end A101376

/-! ## A101376.P10075466776962656314

`A100242(n)-A321672(n)`
-/

namespace A101376.P10075466776962656314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100242 n - A321672 n

end

end A101376.P10075466776962656314

namespace A101376

/-- `A100242(n)-A321672(n)` -/
def P10075466776962656314.Spec : Prop :=
  ∀ n, P10075466776962656314.a n = A101376 n

end A101376

/-! ## A101376.P7636694581142541729

`lcm(A100855(n), A129194(n))`
-/

namespace A101376.P7636694581142541729
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A100855 n) (A129194 n)

end

end A101376.P7636694581142541729

namespace A101376

/-- `lcm(A100855(n), A129194(n))` -/
def P7636694581142541729.Spec : Prop :=
  ∀ n, (P7636694581142541729.a n : ℤ) = A101376 n

end A101376

/-! ## A101376.P8118149463349857023

`A282613(n)%(A168178(n)+1)`
-/

namespace A101376.P8118149463349857023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282613 n) (A168178 n + 1)

end

end A101376.P8118149463349857023

namespace A101376

/-- `A282613(n)%(A168178(n)+1)` -/
def P8118149463349857023.Spec : Prop :=
  ∀ n, P8118149463349857023.a n = A101376 n

end A101376

/-! ## A101376.P6339606971506817797

`A212135(n)+n*A058919(n)`
-/

namespace A101376.P6339606971506817797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212135 n + (n : ℤ) * A058919 n

end

end A101376.P6339606971506817797

namespace A101376

/-- `A212135(n)+n*A058919(n)` -/
def P6339606971506817797.Spec : Prop :=
  ∀ n, P6339606971506817797.a n = A101376 n

end A101376

/-! ## A101376.P8992489589025751205

`A168178(n)-n*A135503(n)`
-/

namespace A101376.P8992489589025751205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168178 n - (n : ℤ) * A135503 n

end

end A101376.P8992489589025751205

namespace A101376

/-- `A168178(n)-n*A135503(n)` -/
def P8992489589025751205.Spec : Prop :=
  ∀ n, P8992489589025751205.a n = A101376 n

end A101376

/-! ## A101376.P17776849341717425645

`n*A163102(n)-A260810(n)`
-/

namespace A101376.P17776849341717425645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A163102 n - A260810 n

end

end A101376.P17776849341717425645

namespace A101376

/-- `n*A163102(n)-A260810(n)` -/
def P17776849341717425645.Spec : Prop :=
  ∀ n, P17776849341717425645.a n = A101376 n

end A101376

/-! ## A101376.P1248185743298902572

`n²+A034262(n)*A161680(n)`
-/

namespace A101376.P1248185743298902572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + A034262 n * A161680 n

end

end A101376.P1248185743298902572

namespace A101376

/-- `n²+A034262(n)*A161680(n)` -/
def P1248185743298902572.Spec : Prop :=
  ∀ n, P1248185743298902572.a n = A101376 n

end A101376

/-! ## A101376.P14350382620448976220

`A101378(n)-n²*A161680(n)`
-/

namespace A101376.P14350382620448976220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101378 n - (n ^ 2 : ℤ) * A161680 n

end

end A101376.P14350382620448976220

namespace A101376

/-- `A101378(n)-n²*A161680(n)` -/
def P14350382620448976220.Spec : Prop :=
  ∀ n, P14350382620448976220.a n = A101376 n

end A101376

/-! ## A101376.P3604659343981926535

`∑[abs(1-n)]*A007531(n+1)+n`
-/

namespace A101376.P3604659343981926535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A007531 (n + 1) + (n : ℤ)

end

end A101376.P3604659343981926535

namespace A101376

/-- `∑[abs(1-n)]*A007531(n+1)+n` -/
def P3604659343981926535.Spec : Prop :=
  ∀ n, P3604659343981926535.a n = A101376 n

end A101376

/-! ## A101376.P14346469306073923725

`(n+1)*A046092(C(n, 2))+n`
-/

namespace A101376.P14346469306073923725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A046092 (Nat.choose n 2) + (n : ℤ)

end

end A101376.P14346469306073923725

namespace A101376

/-- `(n+1)*A046092(C(n, 2))+n` -/
def P14346469306073923725.Spec : Prop :=
  ∀ n, P14346469306073923725.a n = A101376 n

end A101376

/-!
# A101377: a(n) = n^2*(n^3-n+2)/2.

The programs for A101377, the canonical program `A101377.P8020524187896428552` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101377 has offset 0).

The definition of A101377 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(n^3-n+2)/2` (program `A101377.P6537119802636727116`, by `A101377.P6537119802636727116.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A101377.P6537119802636727116

`n²*(n^3-n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A101377.P6537119802636727116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * ((n ^ 3 : ℤ) - (n : ℤ) + 2) : ℚ) / 2

end

end A101377.P6537119802636727116

namespace A101377

/-- `n²*(n^3-n+2)/2` -/
def P6537119802636727116.Spec : Prop :=
  ∀ n, P6537119802636727116.a n = (A101377 n : ℚ)

theorem P6537119802636727116.correct : P6537119802636727116.Spec := by
  intro n
  simp only [A101377, Nat.add_sub_cancel, A101377.P6537119802636727116.a, A101377.P8020524187896428552.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A101377

/-! ## A101377.P8363174113638606995

`n*(C(n², 2)+n)`
-/

namespace A101377.P8363174113638606995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.choose (n ^ 2) 2 + n)

end

end A101377.P8363174113638606995

namespace A101377

/-- `n*(C(n², 2)+n)` -/
def P8363174113638606995.Spec : Prop :=
  ∀ n, (P8363174113638606995.a n : ℤ) = A101377 n

end A101377

/-! ## A101377.P8020524187896428552

`n*C(n^2, 2)+n*n`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101377

/-- `n*C(n^2, 2)+n*n` -/
def P8020524187896428552.Spec : Prop :=
  ∀ n, (P8020524187896428552.a n : ℤ) = A101377 n

theorem P8020524187896428552.correct : P8020524187896428552.Spec := by
  intro n
  simp only [A101377]

end A101377

/-! ## A101377.P1134938818998649461

`n*A101374(n)`
-/

namespace A101377.P1134938818998649461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A101374 n

end

end A101377.P1134938818998649461

namespace A101377

/-- `n*A101374(n)` -/
def P1134938818998649461.Spec : Prop :=
  ∀ n, P1134938818998649461.a n = A101377 n

end A101377

/-! ## A101377.P13936873441758532611

`A321672(n)+n²`
-/

namespace A101377.P13936873441758532611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321672 n + (n ^ 2 : ℤ)

end

end A101377.P13936873441758532611

namespace A101377

/-- `A321672(n)+n²` -/
def P13936873441758532611.Spec : Prop :=
  ∀ n, P13936873441758532611.a n = A101377 n

end A101377

/-! ## A101377.P5178594854966779403

`n²*A158842(n)`
-/

namespace A101377.P5178594854966779403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A158842 n

end

end A101377.P5178594854966779403

namespace A101377

/-- `n²*A158842(n)` -/
def P5178594854966779403.Spec : Prop :=
  ∀ n, P5178594854966779403.a n = A101377 n

end A101377

/-! ## A101377.P4100754491551742036

`n²+A133754(n)/2`
-/

namespace A101377.P4100754491551742036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) + (A133754 n : ℚ) / 2

end

end A101377.P4100754491551742036

namespace A101377

/-- `n²+A133754(n)/2` -/
def P4100754491551742036.Spec : Prop :=
  ∀ n, P4100754491551742036.a n = (A101377 n : ℚ)

end A101377

/-! ## A101377.P7695351183370849128

`2*A288962(n+1)-n`
-/

namespace A101377.P7695351183370849128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A288962 (n + 1) - (n : ℤ)

end

end A101377.P7695351183370849128

namespace A101377

/-- `2*A288962(n+1)-n` -/
def P7695351183370849128.Spec : Prop :=
  ∀ n, P7695351183370849128.a n = A101377 n

end A101377

/-! ## A101377.P9693478109275472323

`(n+1)*A101375(n)-n`
-/

namespace A101377.P9693478109275472323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A101375 n - (n : ℤ)

end

end A101377.P9693478109275472323

namespace A101377

/-- `(n+1)*A101375(n)-n` -/
def P9693478109275472323.Spec : Prop :=
  ∀ n, P9693478109275472323.a n = A101377 n

end A101377

/-! ## A101377.P2931753631373992014

`A168178(n)-A045991(n)`
-/

namespace A101377.P2931753631373992014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168178 n - A045991 n

end

end A101377.P2931753631373992014

namespace A101377

/-- `A168178(n)-A045991(n)` -/
def P2931753631373992014.Spec : Prop :=
  ∀ n, P2931753631373992014.a n = A101377 n

end A101377

/-! ## A101377.P12145801781053023292

`A133071(n)-A321672(n)`
-/

namespace A101377.P12145801781053023292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133071 n - A321672 n

end

end A101377.P12145801781053023292

namespace A101377

/-- `A133071(n)-A321672(n)` -/
def P12145801781053023292.Spec : Prop :=
  ∀ n, P12145801781053023292.a n = A101377 n

end A101377

/-! ## A101377.P9002068982885583460

`n*A037270(n)-A045991(n)`
-/

namespace A101377.P9002068982885583460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A037270 n - A045991 n

end

end A101377.P9002068982885583460

namespace A101377

/-- `n*A037270(n)-A045991(n)` -/
def P9002068982885583460.Spec : Prop :=
  ∀ n, P9002068982885583460.a n = A101377 n

end A101377

/-! ## A101377.P12787215561413835026

`A101378(n)-n*A161680(n)`
-/

namespace A101377.P12787215561413835026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101378 n - (n : ℤ) * A161680 n

end

end A101377.P12787215561413835026

namespace A101377

/-- `A101378(n)-n*A161680(n)` -/
def P12787215561413835026.Spec : Prop :=
  ∀ n, P12787215561413835026.a n = A101377 n

end A101377

/-! ## A101377.P15752997399744866164

`n²+A021003(n)-A006003(n)`
-/

namespace A101377.P15752997399744866164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A021003 n - A006003 n)

end

end A101377.P15752997399744866164

namespace A101377

/-- `n²+A021003(n)-A006003(n)` -/
def P15752997399744866164.Spec : Prop :=
  ∀ n, P15752997399744866164.a n = A101377 n

end A101377

/-! ## A101377.P15015080408462459159

`n²+A101378(n)-A002411(n)`
-/

namespace A101377.P15015080408462459159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A101378 n - A002411 n)

end

end A101377.P15015080408462459159

namespace A101377

/-- `n²+A101378(n)-A002411(n)` -/
def P15015080408462459159.Spec : Prop :=
  ∀ n, P15015080408462459159.a n = A101377 n

end A101377

/-! ## A101377.P12342391053169606003

`n²+A000584(n)-A168178(n)`
-/

namespace A101377.P12342391053169606003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A000584 n - A168178 n)

end

end A101377.P12342391053169606003

namespace A101377

/-- `n²+A000584(n)-A168178(n)` -/
def P12342391053169606003.Spec : Prop :=
  ∀ n, P12342391053169606003.a n = A101377 n

end A101377

/-! ## A101377.P12898297466892046274

`n²+A168178(n)-A000578(n)`
-/

namespace A101377.P12898297466892046274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A168178 n - A000578 n)

end

end A101377.P12898297466892046274

namespace A101377

/-- `n²+A168178(n)-A000578(n)` -/
def P12898297466892046274.Spec : Prop :=
  ∀ n, P12898297466892046274.a n = A101377 n

end A101377

/-! ## A101377.P5472726032372841251

`n²+A004277(n)*A006011(n)`
-/

namespace A101377.P5472726032372841251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + A004277 n * A006011 n

end

end A101377.P5472726032372841251

namespace A101377

/-- `n²+A004277(n)*A006011(n)` -/
def P5472726032372841251.Spec : Prop :=
  ∀ n, P5472726032372841251.a n = A101377 n

end A101377

/-! ## A101377.P12383836721083603018

`n²+A002415(n)*A008458(n)`
-/

namespace A101377.P12383836721083603018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + A002415 n * A008458 n

end

end A101377.P12383836721083603018

namespace A101377

/-- `n²+A002415(n)*A008458(n)` -/
def P12383836721083603018.Spec : Prop :=
  ∀ n, P12383836721083603018.a n = A101377 n

end A101377

/-! ## A101377.P15934593451859081042

`n²+A000217(n)*A045991(n)`
-/

namespace A101377.P15934593451859081042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + A000217 n * A045991 n

end

end A101377.P15934593451859081042

namespace A101377

/-- `n²+A000217(n)*A045991(n)` -/
def P15934593451859081042.Spec : Prop :=
  ∀ n, P15934593451859081042.a n = A101377 n

end A101377

/-!
# A101378: a(n) = n^2*(n^3+1)/2.

The programs for A101378, the canonical program `A101378.P4037537634242594435` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101378 has offset 0).

The definition of A101378 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101378.P4037537634242594435

`n²*(n^3+1)/2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101378

/-- `n²*(n^3+1)/2` -/
def P4037537634242594435.Spec : Prop :=
  ∀ n, P4037537634242594435.a n = (A101378 n : ℚ)

end A101378

/-! ## A101378.P10573305701449316358

`n*(∑[n]+C(n², 2))`
-/

namespace A101378.P10573305701449316358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (n ^ 2) 2)

end

end A101378.P10573305701449316358

namespace A101378

/-- `n*(∑[n]+C(n², 2))` -/
def P10573305701449316358.Spec : Prop :=
  ∀ n, (P10573305701449316358.a n : ℤ) = A101378 n

end A101378

/-! ## A101378.P3933606246581046549

`(lcm(n-1, n²)+n)*∑[n]`
-/

namespace A101378.P3933606246581046549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.lcm ((n : ℤ) - 1) (n ^ 2 : ℤ) + n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101378.P3933606246581046549

namespace A101378

/-- `(lcm(n-1, n²)+n)*∑[n]` -/
def P3933606246581046549.Spec : Prop :=
  ∀ n, (P3933606246581046549.a n : ℤ) = A101378 n

end A101378

/-! ## A101378.P17695732896853296910

`n*A027441(n)`
-/

namespace A101378.P17695732896853296910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A027441 n

end

end A101378.P17695732896853296910

namespace A101378

/-- `n*A027441(n)` -/
def P17695732896853296910.Spec : Prop :=
  ∀ n, P17695732896853296910.a n = A101378 n

end A101378

/-! ## A101378.P11763118844771234773

`n*∑[A212133(n)]`
-/

namespace A101378.P11763118844771234773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101378.P11763118844771234773

namespace A101378

/-- `n*∑[A212133(n)]` -/
def P11763118844771234773.Spec : Prop :=
  ∀ n, P11763118844771234773.a n = A101378 n

end A101378

/-! ## A101378.P15532015882116656898

`n²+A135497(n)/2`
-/

namespace A101378.P15532015882116656898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) + (A135497 n : ℚ) / 2

end

end A101378.P15532015882116656898

namespace A101378

/-- `n²+A135497(n)/2` -/
def P15532015882116656898.Spec : Prop :=
  ∀ n, P15532015882116656898.a n = (A101378 n : ℚ)

end A101378

/-! ## A101378.P10082361764835002948

`∑[n]+A061167(n)/2`
-/

namespace A101378.P10082361764835002948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (A061167 n : ℚ) / 2

end

end A101378.P10082361764835002948

namespace A101378

/-- `∑[n]+A061167(n)/2` -/
def P10082361764835002948.Spec : Prop :=
  ∀ n, P10082361764835002948.a n = (A101378 n : ℚ)

end A101378

/-! ## A101378.P4002347442400363504

`A321672(n)+n*∑[n]`
-/

namespace A101378.P4002347442400363504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321672 n + ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A101378.P4002347442400363504

namespace A101378

/-- `A321672(n)+n*∑[n]` -/
def P4002347442400363504.Spec : Prop :=
  ∀ n, P4002347442400363504.a n = A101378 n

end A101378

/-! ## A101378.P8289024231950839053

`n/2*A091940(n+1)`
-/

namespace A101378.P8289024231950839053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A091940 (n + 1) : ℚ)

end

end A101378.P8289024231950839053

namespace A101378

/-- `n/2*A091940(n+1)` -/
def P8289024231950839053.Spec : Prop :=
  ∀ n, P8289024231950839053.a n = (A101378 n : ℚ)

end A101378

/-! ## A101378.P16837111485424630806

`(n+1)/2*A309372(n)`
-/

namespace A101378.P16837111485424630806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A309372 n : ℚ)

end

end A101378.P16837111485424630806

namespace A101378

/-- `(n+1)/2*A309372(n)` -/
def P16837111485424630806.Spec : Prop :=
  ∀ n, P16837111485424630806.a n = (A101378 n : ℚ)

end A101378

/-! ## A101378.P4461866804449362790

`A161680(n)+A021003(n)`
-/

namespace A101378.P4461866804449362790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + A021003 n

end

end A101378.P4461866804449362790

namespace A101378

/-- `A161680(n)+A021003(n)` -/
def P4461866804449362790.Spec : Prop :=
  ∀ n, P4461866804449362790.a n = A101378 n

end A101378

/-! ## A101378.P8042535606404944279

`A002061(n)*A002411(n)`
-/

namespace A101378.P8042535606404944279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n * A002411 n

end

end A101378.P8042535606404944279

namespace A101378

/-- `A002061(n)*A002411(n)` -/
def P8042535606404944279.Spec : Prop :=
  ∀ n, P8042535606404944279.a n = A101378 n

end A101378

/-! ## A101378.P1212858956705325179

`A071236(n)%A053717(n)`
-/

namespace A101378.P1212858956705325179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071236 n) (A053717 n)

end

end A101378.P1212858956705325179

namespace A101378

/-- `A071236(n)%A053717(n)` -/
def P1212858956705325179.Spec : Prop :=
  ∀ n, P1212858956705325179.a n = A101378 n

end A101378

/-! ## A101378.P1886113591529043928

`A168412(n)%A060883(n)`
-/

namespace A101378.P1886113591529043928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168412 n) (A060883 n)

end

end A101378.P1886113591529043928

namespace A101378

/-- `A168412(n)%A060883(n)` -/
def P1886113591529043928.Spec : Prop :=
  ∀ n, P1886113591529043928.a n = A101378 n

end A101378

/-! ## A101378.P12815313502894024378

`A168118(n)%A281661(n)`
-/

namespace A101378.P12815313502894024378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168118 n) (A281661 n)

end

end A101378.P12815313502894024378

namespace A101378

/-- `A168118(n)%A281661(n)` -/
def P12815313502894024378.Spec : Prop :=
  ∀ n, P12815313502894024378.a n = A101378 n

end A101378

/-! ## A101378.P9281674784120407331

`A168555(n)%A281661(n)`
-/

namespace A101378.P9281674784120407331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168555 n) (A281661 n)

end

end A101378.P9281674784120407331

namespace A101378

/-- `A168555(n)%A281661(n)` -/
def P9281674784120407331.Spec : Prop :=
  ∀ n, P9281674784120407331.a n = A101378 n

end A101378

/-! ## A101378.P14717451024987762468

`gcd(A037251(n), A168153(n))`
-/

namespace A101378.P14717451024987762468
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037251 n) (A168153 n)

end

end A101378.P14717451024987762468

namespace A101378

/-- `gcd(A037251(n), A168153(n))` -/
def P14717451024987762468.Spec : Prop :=
  ∀ n, (P14717451024987762468.a n : ℤ) = A101378 n

end A101378

/-! ## A101378.P16217100394084945305

`lcm(A002411(n), A027441(n))`
-/

namespace A101378.P16217100394084945305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002411 n) (A027441 n)

end

end A101378.P16217100394084945305

namespace A101378

/-- `lcm(A002411(n), A027441(n))` -/
def P16217100394084945305.Spec : Prop :=
  ∀ n, (P16217100394084945305.a n : ℤ) = A101378 n

end A101378

/-! ## A101378.P11371643736554783163

`(A158842(n+1)-A002061(n+1))*A002061(n)`
-/

namespace A101378.P11371643736554783163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A158842 (n + 1) - A002061 (n + 1)) * A002061 n

end

end A101378.P11371643736554783163

namespace A101378

/-- `(A158842(n+1)-A002061(n+1))*A002061(n)` -/
def P11371643736554783163.Spec : Prop :=
  ∀ n, P11371643736554783163.a n = A101378 n

end A101378

/-! ## A101378.P12593496718284192818

`(A218152(n+1)-A000124(n+1))*A002061(n)`
-/

namespace A101378.P12593496718284192818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A218152 (n + 1) - A000124 (n + 1)) * A002061 n

end

end A101378.P12593496718284192818

namespace A101378

/-- `(A218152(n+1)-A000124(n+1))*A002061(n)` -/
def P12593496718284192818.Spec : Prop :=
  ∀ n, P12593496718284192818.a n = A101378 n

end A101378

/-!
# A101379: a(n) = n*(n+1)^2*(6*n^3-5*n^2+3*n+2)/24.

The programs for A101379, the canonical program `A101379.P13255299419516851383` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101379 has offset 0).

The definition of A101379 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101379.P13255299419516851383

`n*(n+1)²*(6*n^3-5*n²+3*n+2)/24`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101379

/-- `n*(n+1)²*(6*n^3-5*n²+3*n+2)/24` -/
def P13255299419516851383.Spec : Prop :=
  ∀ n, P13255299419516851383.a n = (A101379 n : ℚ)

end A101379

/-!
# A101380: a(n) = n^2*(n+1)*(4*n^3 - 2*n^2 + n + 3)/12.

The programs for A101380, the canonical program `A101380.P13817097757943738002` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101380 has offset 0).

The definition of A101380 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(n+1)*(4*n^3-2*n²+n+3)/12` (program `A101380.P4377376605634571513`, by `A101380.P4377376605634571513.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A101380.P4377376605634571513

`n²*(n+1)*(4*n^3-2*n²+n+3)/12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A101380.P4377376605634571513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 * (n + 1) : ℤ) * ((4 * n ^ 3 : ℤ) - (2 * n ^ 2 : ℤ) + (n : ℤ) + 3) : ℚ) / 12

end

end A101380.P4377376605634571513

namespace A101380

/-- `n²*(n+1)*(4*n^3-2*n²+n+3)/12` -/
def P4377376605634571513.Spec : Prop :=
  ∀ n, P4377376605634571513.a n = (A101380 n : ℚ)

theorem P4377376605634571513.correct : P4377376605634571513.Spec := by
  intro n
  simp only [A101380, Nat.add_sub_cancel, A101380.P4377376605634571513.a, A101380.P13817097757943738002.a, A000217, A000217.P10269402890581615239.a, A008911, A008911.P13273812959186450040.a, A014105, A014105.P182524374866796289.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A101380

/-! ## A101380.P15675008848173542207

`A000537(n)+∑[n²]*A045991(n)`
-/

namespace A101380.P15675008848173542207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A045991 n

end

end A101380.P15675008848173542207

namespace A101380

/-- `A000537(n)+∑[n²]*A045991(n)` -/
def P15675008848173542207.Spec : Prop :=
  ∀ n, P15675008848173542207.a n = A101380 n

end A101380

/-! ## A101380.P16986487198760697455

`A000537(n)+A008911(n)*A014105(n)`
-/

namespace A101380.P16986487198760697455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n + A008911 n * A014105 n

end

end A101380.P16986487198760697455

namespace A101380

/-- `A000537(n)+A008911(n)*A014105(n)` -/
def P16986487198760697455.Spec : Prop :=
  ∀ n, P16986487198760697455.a n = A101380 n

end A101380

/-! ## A101380.P13817097757943738002

`A000217(n)²+A008911(n)*A014105(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A101380

/-- `A000217(n)²+A008911(n)*A014105(n)` -/
def P13817097757943738002.Spec : Prop :=
  ∀ n, P13817097757943738002.a n = A101380 n

theorem P13817097757943738002.correct : P13817097757943738002.Spec := by
  intro n
  simp only [A101380]

end A101380

/-! ## A101380.P14437924829230268467

`A000217(n)²+A000330(n)*A045991(n)`
-/

namespace A101380.P14437924829230268467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n ^ 2 + A000330 n * A045991 n

end

end A101380.P14437924829230268467

namespace A101380

/-- `A000217(n)²+A000330(n)*A045991(n)` -/
def P14437924829230268467.Spec : Prop :=
  ∀ n, P14437924829230268467.a n = A101380 n

end A101380

/-!
# A101381: a(n) = n^2*(n+1)^2*(4*n^2 - 5*n + 4)/12.

The programs for A101381, the canonical program `A101381.P1636319080173833325` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101381 has offset 0).

The definition of A101381 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101381.P1636319080173833325

`n²*(n+1)²*(4*n²-5*n+4)/12`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101381

/-- `n²*(n+1)²*(4*n²-5*n+4)/12` -/
def P1636319080173833325.Spec : Prop :=
  ∀ n, P1636319080173833325.a n = (A101381 n : ℚ)

end A101381

/-! ## A101381.P9154726034845969013

`2*A179058(n+1)+n*∑[n]²`
-/

namespace A101381.P9154726034845969013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A179058 (n + 1) + ((n * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A101381.P9154726034845969013

namespace A101381

/-- `2*A179058(n+1)+n*∑[n]²` -/
def P9154726034845969013.Spec : Prop :=
  ∀ n, P9154726034845969013.a n = A101381 n

end A101381

/-! ## A101381.P10821819726972205673

`∑[A168178(n)]+A135503(n)²`
-/

namespace A101381.P10821819726972205673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A135503 n ^ 2

end

end A101381.P10821819726972205673

namespace A101381

/-- `∑[A168178(n)]+A135503(n)²` -/
def P10821819726972205673.Spec : Prop :=
  ∀ n, P10821819726972205673.a n = A101381 n

end A101381

/-! ## A101381.P8265062705151055319

`A160831(n)+A331528(n)-A160788(n)`
-/

namespace A101381.P8265062705151055319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160831 n + (A331528 n - A160788 n)

end

end A101381.P8265062705151055319

namespace A101381

/-- `A160831(n)+A331528(n)-A160788(n)` -/
def P8265062705151055319.Spec : Prop :=
  ∀ n, P8265062705151055319.a n = A101381 n

end A101381

/-! ## A101381.P459214451416669085

`A000537(n)+A002412(n)*A135503(n)`
-/

namespace A101381.P459214451416669085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n + A002412 n * A135503 n

end

end A101381.P459214451416669085

namespace A101381

/-- `A000537(n)+A002412(n)*A135503(n)` -/
def P459214451416669085.Spec : Prop :=
  ∀ n, P459214451416669085.a n = A101381 n

end A101381

/-! ## A101381.P7385533907182024964

`A000217(n)²+A002412(n)*A135503(n)`
-/

namespace A101381.P7385533907182024964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n ^ 2 + A002412 n * A135503 n

end

end A101381.P7385533907182024964

namespace A101381

/-- `A000217(n)²+A002412(n)*A135503(n)` -/
def P7385533907182024964.Spec : Prop :=
  ∀ n, P7385533907182024964.a n = A101381 n

end A101381

/-!
# A101382: a(n) = n*(n+1)*(2*n^3 - n^2 + 2)^2/6.

The programs for A101382, the canonical program `A101382.P9177886643032851565` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101382 has offset 0).

The definition of A101382 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101382.P9177886643032851565

`n*(n+1)*(2*n^3-n²+2)²/6`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101382

/-- `n*(n+1)*(2*n^3-n²+2)²/6` -/
def P9177886643032851565.Spec : Prop :=
  ∀ n, P9177886643032851565.a n = (A101382 n : ℚ)

end A101382

/-!
# A101383: a(n) = n*(n+1)*(2*n^3 - n^2 + 2)/6.

The programs for A101383, the canonical program `A101383.P13658733463376693202` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101383 has offset 0).

The definition of A101383 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101383.P13658733463376693202

`n*(n+1)*(2*n^3-n²+2)/6`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101383

/-- `n*(n+1)*(2*n^3-n²+2)/6` -/
def P13658733463376693202.Spec : Prop :=
  ∀ n, P13658733463376693202.a n = (A101383 n : ℚ)

end A101383

/-! ## A101383.P2068390837471976078

`∑[∑[n]]+C(2*n+1, 2)*C(n+1, 3)`
-/

namespace A101383.P2068390837471976078
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (2 * n + 1) 2 * Nat.choose (n + 1) 3

end

end A101383.P2068390837471976078

namespace A101383

/-- `∑[∑[n]]+C(2*n+1, 2)*C(n+1, 3)` -/
def P2068390837471976078.Spec : Prop :=
  ∀ n, (P2068390837471976078.a n : ℤ) = A101383 n

end A101383

/-! ## A101383.P16056177442627430642

`A373561(n)-A288961(n+1)`
-/

namespace A101383.P16056177442627430642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373561 n - A288961 (n + 1)

end

end A101383.P16056177442627430642

namespace A101383

/-- `A373561(n)-A288961(n+1)` -/
def P16056177442627430642.Spec : Prop :=
  ∀ n, P16056177442627430642.a n = A101383 n

end A101383

/-! ## A101383.P8291996947618081301

`A071239(n)+n*A112742(n)`
-/

namespace A101383.P8291996947618081301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071239 n + (n : ℤ) * A112742 n

end

end A101383.P8291996947618081301

namespace A101383

/-- `A071239(n)+n*A112742(n)` -/
def P8291996947618081301.Spec : Prop :=
  ∀ n, P8291996947618081301.a n = A101383 n

end A101383

/-! ## A101383.P18312010542175033468

`A000292(n)+(n²-n)*A000330(n)`
-/

namespace A101383.P18312010542175033468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + ((n ^ 2 : ℤ) - (n : ℤ)) * A000330 n

end

end A101383.P18312010542175033468

namespace A101383

/-- `A000292(n)+(n²-n)*A000330(n)` -/
def P18312010542175033468.Spec : Prop :=
  ∀ n, P18312010542175033468.a n = A101383 n

end A101383

/-!
# A101384: a(n) = n*(n-1)^3*(n^2-n-1)/2.

The programs for A101384, the canonical program `A101384.P15008305073997468661` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101384 has offset 0).

The definition of A101384 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101384.P15008305073997468661

`n*(n-1)^3*(n²-n-1)/2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101384

/-- `n*(n-1)^3*(n²-n-1)/2` -/
def P15008305073997468661.Spec : Prop :=
  ∀ n, P15008305073997468661.a n = (A101384 n : ℚ)

end A101384

/-! ## A101384.P2779813846771810030

`(1-n)²*C(n²-n, 2)`
-/

namespace A101384.P2779813846771810030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 * (Nat.choose ((n ^ 2 : ℤ) - (n : ℤ)).toNat 2 : ℤ)

end

end A101384.P2779813846771810030

namespace A101384

/-- `(1-n)²*C(n²-n, 2)` -/
def P2779813846771810030.Spec : Prop :=
  ∀ n, P2779813846771810030.a n = A101384 n

end A101384

/-! ## A101384.P18028695003891020700

`(n-1)*(n-1)*C(2*C(n, 2), 2)`
-/

namespace A101384.P18028695003891020700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (((n : ℤ) - 1) * (Nat.choose (2 * Nat.choose n 2) 2 : ℤ))

end

end A101384.P18028695003891020700

namespace A101384

/-- `(n-1)*(n-1)*C(2*C(n, 2), 2)` -/
def P18028695003891020700.Spec : Prop :=
  ∀ n, P18028695003891020700.a n = A101384 n

end A101384

/-! ## A101384.P17665532457690717851

`(n²-(n+1))*A019582(n)`
-/

namespace A101384.P17665532457690717851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - (n + 1 : ℤ)) * A019582 n

end

end A101384.P17665532457690717851

namespace A101384

/-- `(n²-(n+1))*A019582(n)` -/
def P17665532457690717851.Spec : Prop :=
  ∀ n, P17665532457690717851.a n = A101384 n

end A101384

/-! ## A101384.P3454333888622297268

`A019582(n)*A165900(n)`
-/

namespace A101384.P3454333888622297268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019582 n * A165900 n

end

end A101384.P3454333888622297268

namespace A101384

/-- `A019582(n)*A165900(n)` -/
def P3454333888622297268.Spec : Prop :=
  ∀ n, P3454333888622297268.a n = A101384 n

end A101384

/-! ## A101384.P3596079308141733666

`n*A019583(n)-A019582(n)`
-/

namespace A101384.P3596079308141733666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A019583 n - A019582 n

end

end A101384.P3596079308141733666

namespace A101384

/-- `n*A019583(n)-A019582(n)` -/
def P3596079308141733666.Spec : Prop :=
  ∀ n, P3596079308141733666.a n = A101384 n

end A101384

/-! ## A101384.P15903839996981050642

`lcm(A080956(n)-A161680(n), A019582(n))`
-/

namespace A101384.P15903839996981050642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A080956 n - A161680 n) (A019582 n)

end

end A101384.P15903839996981050642

namespace A101384

/-- `lcm(A080956(n)-A161680(n), A019582(n))` -/
def P15903839996981050642.Spec : Prop :=
  ∀ n, (P15903839996981050642.a n : ℤ) = A101384 n

end A101384

/-! ## A101384.P17452868737047998707

`(1-n)²*A161680(A103505(n))`
-/

namespace A101384.P17452868737047998707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 * A161680 (A103505 n).toNat

end

end A101384.P17452868737047998707

namespace A101384

/-- `(1-n)²*A161680(A103505(n))` -/
def P17452868737047998707.Spec : Prop :=
  ∀ n, P17452868737047998707.a n = A101384 n

end A101384

/-!
# A101386: Expansion of g.f.: (5 - 3*x)/(1 - 6*x + x^2).

The programs for A101386, the canonical program `A101386.P15589218914966303647` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101386 has offset 0).

The definition of A101386 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((5-3x)/(1-6x+x^2))` (program `A101386.P15589218914966303647`, by `A101386.P15589218914966303647.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A101386.P15589218914966303647

`ogf((5-3x)/(1-6x+x^2))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101386

/-- `ogf((5-3x)/(1-6x+x^2))` -/
def P15589218914966303647.Spec : Prop :=
  ∀ n, P15589218914966303647.a n = A101386 n

theorem P15589218914966303647.correct : P15589218914966303647.Spec := by
  intro n
  simp only [A101386]

end A101386

/-! ## A101386.P11594880764859001310

`6*a(n-1)-a(n-2)` with `a(0)=5, a(1)=27`
-/

namespace A101386.P11594880764859001310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 27] fun n a =>
  6 * a (n - 1) - a (n - 2)

end

end A101386.P11594880764859001310

namespace A101386

/-- `6*a(n-1)-a(n-2)` -/
def P11594880764859001310.Spec : Prop :=
  ∀ n, P11594880764859001310.a n = A101386 n

end A101386

/-! ## A101386.P18110632196674255815

`A002315(n)+A077445(n+1)`
-/

namespace A101386.P18110632196674255815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n + A077445 (n + 1)

end

end A101386.P18110632196674255815

namespace A101386

/-- `A002315(n)+A077445(n+1)` -/
def P18110632196674255815.Spec : Prop :=
  ∀ n, P18110632196674255815.a n = A101386 n

end A101386

/-! ## A101386.P9211131106010857266

`5*A001109(n+1)-3*A001109(n)`
-/

namespace A101386.P9211131106010857266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A001109 (n + 1) - 3 * A001109 n

end

end A101386.P9211131106010857266

namespace A101386

/-- `5*A001109(n+1)-3*A001109(n)` -/
def P9211131106010857266.Spec : Prop :=
  ∀ n, P9211131106010857266.a n = A101386 n

end A101386

/-! ## A101386.P7838044206819644510

`record[a(n-2)-a(n-1)-a(n-1)]` with `a(0)=5, a(1)=3`
-/

namespace A101386.P7838044206819644510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 3] fun n f1 =>
  f1 (n - 2) - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101386.P7838044206819644510

namespace A101386

/-- `record[a(n-2)-a(n-1)-a(n-1)]` -/
def P7838044206819644510.Spec : Prop :=
  ∀ n, P7838044206819644510.a n = A101386 n

end A101386

/-! ## A101386.P1259869048986852199

`((5+sqrt(18))*(3+sqrt(8))^n+(5-sqrt(18))*(3-sqrt(8))^n)/2`
-/

namespace A101386.P1259869048986852199
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + Real.sqrt (18 : ℝ)) * (3 + Real.sqrt (8 : ℝ)) ^ n + (5 - Real.sqrt (18 : ℝ)) * (3 - Real.sqrt (8 : ℝ)) ^ n) / 2

end

end A101386.P1259869048986852199

namespace A101386

/-- `((5+sqrt(18))*(3+sqrt(8))^n+(5-sqrt(18))*(3-sqrt(8))^n)/2` -/
def P1259869048986852199.Spec : Prop :=
  ∀ n, P1259869048986852199.a n = (A101386 n : ℝ)

end A101386

/-! ## A101386.P852647288611584684

`A048655(Δ[n²])`
-/

namespace A101386.P852647288611584684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048655 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A101386.P852647288611584684

namespace A101386

/-- `A048655(Δ[n²])` -/
def P852647288611584684.Spec : Prop :=
  ∀ n, P852647288611584684.a n = A101386 n

end A101386

/-! ## A101386.P7727086683344292228

`record[Δ[A159582(n)]]`
-/

namespace A101386.P7727086683344292228
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159582 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101386.P7727086683344292228

namespace A101386

/-- `record[Δ[A159582(n)]]` -/
def P7727086683344292228.Spec : Prop :=
  ∀ n, P7727086683344292228.a n = A101386 n

end A101386

/-! ## A101386.P919679901638629648

`Δ[A006451(2*n)]`
-/

namespace A101386.P919679901638629648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101386.P919679901638629648

namespace A101386

/-- `Δ[A006451(2*n)]` -/
def P919679901638629648.Spec : Prop :=
  ∀ n, P919679901638629648.a n = A101386 n

end A101386

/-! ## A101386.P621741394102231156

`Δ[A054490(n)/2]`
-/

namespace A101386.P621741394102231156
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054490 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101386.P621741394102231156

namespace A101386

/-- `Δ[A054490(n)/2]` -/
def P621741394102231156.Spec : Prop :=
  ∀ n, P621741394102231156.a n = (A101386 n : ℚ)

end A101386

/-! ## A101386.P10673357198211092748

`Δ[A364319(Δ[n²])]`
-/

namespace A101386.P10673357198211092748
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364319 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101386.P10673357198211092748

namespace A101386

/-- `Δ[A364319(Δ[n²])]` -/
def P10673357198211092748.Spec : Prop :=
  ∀ n, P10673357198211092748.a n = A101386 n

end A101386

/-! ## A101386.P6043577662079206457

`A077443(2*(n+1))`
-/

namespace A101386.P6043577662079206457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077443 (2 * (n + 1))

end

end A101386.P6043577662079206457

namespace A101386

/-- `A077443(2*(n+1))` -/
def P6043577662079206457.Spec : Prop :=
  ∀ n, P6043577662079206457.a n = A101386 n

end A101386

/-! ## A101386.P9703755022580014987

`A135246(4*n+2)`
-/

namespace A101386.P9703755022580014987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135246 (4 * n + 2)

end

end A101386.P9703755022580014987

namespace A101386

/-- `A135246(4*n+2)` -/
def P9703755022580014987.Spec : Prop :=
  ∀ n, P9703755022580014987.a n = A101386 n

end A101386

/-! ## A101386.P14119762282053713077

`Δ[Δ[A210695(n)/2]]`
-/

namespace A101386.P14119762282053713077
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210695 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101386.P14119762282053713077

namespace A101386

/-- `Δ[Δ[A210695(n)/2]]` -/
def P14119762282053713077.Spec : Prop :=
  ∀ n, P14119762282053713077.a n = (A101386 n : ℚ)

end A101386

/-! ## A101386.P12650479206322756533

`Δ[A048655(2*n)/2]`
-/

namespace A101386.P12650479206322756533
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048655 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101386.P12650479206322756533

namespace A101386

/-- `Δ[A048655(2*n)/2]` -/
def P12650479206322756533.Spec : Prop :=
  ∀ n, P12650479206322756533.a n = (A101386 n : ℚ)

end A101386

/-! ## A101386.P8490189743065414633

`2*A098586(2*n)+1`
-/

namespace A101386.P8490189743065414633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098586 (2 * n) + 1

end

end A101386.P8490189743065414633

namespace A101386

/-- `2*A098586(2*n)+1` -/
def P8490189743065414633.Spec : Prop :=
  ∀ n, P8490189743065414633.a n = A101386 n

end A101386

/-! ## A101386.P4951047346749029678

`A266505(3*(n+1)+n)`
-/

namespace A101386.P4951047346749029678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266505 (3 * (n + 1) + n)

end

end A101386.P4951047346749029678

namespace A101386

/-- `A266505(3*(n+1)+n)` -/
def P4951047346749029678.Spec : Prop :=
  ∀ n, P4951047346749029678.a n = A101386 n

end A101386

/-! ## A101386.P1435470442298150999

`Δ[A077446(2*n+1)/2]`
-/

namespace A101386.P1435470442298150999
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077446 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101386.P1435470442298150999

namespace A101386

/-- `Δ[A077446(2*n+1)/2]` -/
def P1435470442298150999.Spec : Prop :=
  ∀ n, P1435470442298150999.a n = (A101386 n : ℚ)

end A101386

/-! ## A101386.P307691978210918065

`2*A124124(2*(n+1))+1`
-/

namespace A101386.P307691978210918065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124124 (2 * (n + 1)) + 1

end

end A101386.P307691978210918065

namespace A101386

/-- `2*A124124(2*(n+1))+1` -/
def P307691978210918065.Spec : Prop :=
  ∀ n, P307691978210918065.a n = A101386 n

end A101386

/-! ## A101386.P13116798733027840644

`A266506(A004771(n))`
-/

namespace A101386.P13116798733027840644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266506 (A004771 n).toNat

end

end A101386.P13116798733027840644

namespace A101386

/-- `A266506(A004771(n))` -/
def P13116798733027840644.Spec : Prop :=
  ∀ n, P13116798733027840644.a n = A101386 n

end A101386

/-!
# A101387: Quet transform of A002260.

The programs for A101387, there is no canonical definition to state claims against.
-/

/-! ## A101387.P7675960175743782157

`A132118(A065579(n+1))-n`
-/

namespace A101387.P7675960175743782157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132118 (A065579 (n + 1)).toNat - (n : ℤ)

end

end A101387.P7675960175743782157

/-! ## A101387.P5832037315545222937

`gcd(A168052(n), A329936(A329919(n)))`
-/

namespace A101387.P5832037315545222937
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A168052 n) (A329936 (A329919 n).toNat)

end

end A101387.P5832037315545222937

/-! ## A101387.P3258192104961000171

`A281541(A027750(n+1)^A331510(n+1))`
-/

namespace A101387.P3258192104961000171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281541 (SequenceMachineLib.roundAway ((A027750 (n + 1) : ℚ) ^ (A331510 (n + 1) : ℤ))).toNat

end

end A101387.P3258192104961000171

/-! ## A101387.P16819793540028645475

`gcd(A005916(A000079(n)), A317686(n+1))`
-/

namespace A101387.P16819793540028645475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005916 (A000079 n).toNat) (A317686 (n + 1))

end

end A101387.P16819793540028645475

/-! ## A101387.P7379486495439665494

`gcd(A094216(A078649(n+1)), A156351(n+1))`
-/

namespace A101387.P7379486495439665494
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A094216 (A078649 (n + 1)).toNat) (A156351 (n + 1))

end

end A101387.P7379486495439665494

/-!
# A101388: Number of n-vertex unlabeled digraphs without endpoints.

The programs for A101388, there is no canonical definition to state claims against.
-/

/-! ## A101388.P18250876219736165505

`A038568(C(n², 7))`
-/

namespace A101388.P18250876219736165505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 (Nat.choose (n ^ 2) 7)

end

end A101388.P18250876219736165505

/-!
# A101389: Number of n-vertex unlabeled oriented graphs without endpoints.

The programs for A101389, there is no canonical definition to state claims against.
-/

/-! ## A101389.P17617575386305296638

`A056895(A001187(n))`
-/

namespace A101389.P17617575386305296638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056895 (A001187 n).toNat

end

end A101389.P17617575386305296638

/-! ## A101389.P644851916958793578

`A074780(A165903(n))`
-/

namespace A101389.P644851916958793578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074780 (A165903 n).toNat

end

end A101389.P644851916958793578

/-!
# A101390: Number of n-vertex unlabeled mating graphs (cf. A006024) without endpoints.

The programs for A101390, there is no canonical definition to state claims against.
-/

/-! ## A101390.P12519202756359259849

`A103221(A180271(n+1)+∑{d}[n+1, -(-1)^#])`
-/

namespace A101390.P12519202756359259849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A180271 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), (-((-1) ^ d))).toNat

end

end A101390.P12519202756359259849

/-! ## A101390.P1137148654253605898

`or(A008618(n), A008618(A231274(n)))`
-/

namespace A101390.P1137148654253605898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008618 n) (A008618 (A231274 n).toNat)

end

end A101390.P1137148654253605898

/-! ## A101390.P11668159910817740298

`A008616(A126201(n+1)+A008862(n))`
-/

namespace A101390.P11668159910817740298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A126201 (n + 1) + A008862 n).toNat

end

end A101390.P11668159910817740298

/-!
# A101391: Triangle read by rows: T(n,k) is the number of compositions of n into k parts x_1, x_2, ..., x_k such that gcd(x_1,x_2,...,x_k) = 1 (1<=k<=n).

The programs for A101391, there is no canonical definition to state claims against.
-/

/-! ## A101391.P5194002100961138996

`A039911(∑[char[∑[n]]]²-n)`
-/

namespace A101391.P5194002100961138996
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039911 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A101391.P5194002100961138996

/-! ## A101391.P2439879246576043124

`A381423(A262071(n))`
-/

namespace A101391.P2439879246576043124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381423 (A262071 n).toNat

end

end A101391.P2439879246576043124

/-! ## A101391.P12108126702640625609

`A001227(A111825(n))-char[∑[n+1]]`
-/

namespace A101391.P12108126702640625609
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A111825 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A101391.P12108126702640625609

/-! ## A101391.P10408514523766810155

`A210472(A281446(n))+A014473(n)`
-/

namespace A101391.P10408514523766810155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210472 (A281446 n).toNat + A014473 n

end

end A101391.P10408514523766810155

/-! ## A101391.P9424347113283641860

`A007318(n)-A239261(A113092(n))`
-/

namespace A101391.P9424347113283641860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A239261 (A113092 n).toNat

end

end A101391.P9424347113283641860

/-!
# A101392: Numbers k such that 2*10^k+9 is prime.

The programs for A101392, there is no canonical definition to state claims against.
-/

/-! ## A101392.P16338727857259837313

`A101952(A028310(n))-(floor(acot(n))-1)`
-/

namespace A101392.P16338727857259837313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101952 (A028310 n).toNat - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

end

end A101392.P16338727857259837313

/-! ## A101392.P10007066962303285963

`A101952(round(sqrt(n²+1)))+1-A000007(n)`
-/

namespace A101392.P10007066962303285963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101952 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + (1 - A000007 n)

end

end A101392.P10007066962303285963

/-! ## A101392.P3754531626659732040

`A101952(A028310(n))+A055640(n)`
-/

namespace A101392.P3754531626659732040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101952 (A028310 n).toNat + A055640 n

end

end A101392.P3754531626659732040

/-! ## A101392.P15040704054291884266

`A101952(A028310(n))+A057427(n)`
-/

namespace A101392.P15040704054291884266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101952 (A028310 n).toNat + A057427 n

end

end A101392.P15040704054291884266

/-! ## A101392.P11587179986908456783

`A178334(n)+A101952(A028310(n))`
-/

namespace A101392.P11587179986908456783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A101952 (A028310 n).toNat

end

end A101392.P11587179986908456783

/-!
# A101393: Numbers k such that 3*10^k + R_k + 6 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A101393, there is no canonical definition to state claims against.
-/

/-! ## A101393.P16904450316089896525

`A101826(n+1)+1`
-/

namespace A101393.P16904450316089896525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101826 (n + 1) + 1

end

end A101393.P16904450316089896525

/-!
# A101395: Numbers k such that 4*10^k+7 is prime.

The programs for A101395, there is no canonical definition to state claims against.
-/

/-! ## A101395.P7406195738032303469

`A277021(∑[A182747(n)²])`
-/

namespace A101395.P7406195738032303469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182747 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277021 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A101395.P7406195738032303469

/-!
# A101396: Numbers k such that 4*10^k - 9 is prime.

The programs for A101396, there is no canonical definition to state claims against.
-/

/-! ## A101396.P13451581780864215946

`A101848(n+1)+1`
-/

namespace A101396.P13451581780864215946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101848 (n + 1) + 1

end

end A101396.P13451581780864215946

/-! ## A101396.P10020935666237811275

`or(1, A101848(A077168(n)))`
-/

namespace A101396.P10020935666237811275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A101848 (A077168 n).toNat)

end

end A101396.P10020935666237811275

/-! ## A101396.P12566403076365949730

`or(1, A101848(A291769(n)))`
-/

namespace A101396.P12566403076365949730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A101848 (A291769 n).toNat)

end

end A101396.P12566403076365949730

/-! ## A101396.P14567909573002929276

`or(1, A101848(A348553(n)))`
-/

namespace A101396.P14567909573002929276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A101848 (A348553 n).toNat)

end

end A101396.P14567909573002929276

/-! ## A101396.P5672846741891455887

`or(1, A101848(A008619(2*n)))`
-/

namespace A101396.P5672846741891455887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A101848 (A008619 (2 * n)).toNat)

end

end A101396.P5672846741891455887

/-!
# A101397: Numbers k such that 4*10^k+3 is prime.

The programs for A101397, there is no canonical definition to state claims against.
-/

/-! ## A101397.P1402264956440739440

`A101713(A028310(n))+A057427(n)`
-/

namespace A101397.P1402264956440739440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101713 (A028310 n).toNat + A057427 n

end

end A101397.P1402264956440739440

/-! ## A101397.P8472517731002949609

`A178334(n)+A101713(A028310(n))`
-/

namespace A101397.P8472517731002949609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A101713 (A028310 n).toNat

end

end A101397.P8472517731002949609

/-! ## A101397.P5116349103807861006

`A178489(n)+A101713(A028310(n))`
-/

namespace A101397.P5116349103807861006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n + A101713 (A028310 n).toNat

end

end A101397.P5116349103807861006

/-! ## A101397.P10706749146491860359

`A101713(A028310(n))-A057428(n)`
-/

namespace A101397.P10706749146491860359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101713 (A028310 n).toNat - A057428 n

end

end A101397.P10706749146491860359

/-! ## A101397.P18256323734806933488

`A101713(A028310(n))+char[A007318(n)]`
-/

namespace A101397.P18256323734806933488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101713 (A028310 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A101397.P18256323734806933488

/-!
# A101398: Numbers k such that 4*10^k-3 is prime.

The programs for A101398, there is no canonical definition to state claims against.
-/

/-! ## A101398.P12630518947002389463

`A101849(n+1)+1`
-/

namespace A101398.P12630518947002389463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101849 (n + 1) + 1

end

end A101398.P12630518947002389463

/-! ## A101398.P7145458723858800463

`A164020(A101849(n+1))`
-/

namespace A101398.P7145458723858800463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 (A101849 (n + 1)).toNat

end

end A101398.P7145458723858800463

/-!
# A101399: a(0) = 1, a(1) = 2, a(2) = 5; for n >= 3, a(n) = a(n-1) + 2*a(n-2) + a(n-3).

The programs for A101399, the canonical program `A101399.P17458613530710300852` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101399 has offset 0).

The definition of A101399 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*a(n-2)+a(n-3)` (program `A101399.P17458613530710300852`, by `A101399.P17458613530710300852.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A101399.P17458613530710300852

`a(n-1)+2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101399

/-- `a(n-1)+2*a(n-2)+a(n-3)` -/
def P17458613530710300852.Spec : Prop :=
  ∀ n, (P17458613530710300852.a n : ℤ) = A101399 n

theorem P17458613530710300852.correct : P17458613530710300852.Spec := by
  intro n
  simp only [A101399]

end A101399

/-! ## A101399.P16728234180572976573

`ogf((1+x+x^2)/(1-x-2x^2-x^3))`
-/

namespace A101399.P16728234180572976573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1] [1, -1, -2, -1] n

end

end A101399.P16728234180572976573

namespace A101399

/-- `ogf((1+x+x^2)/(1-x-2x^2-x^3))` -/
def P16728234180572976573.Spec : Prop :=
  ∀ n, P16728234180572976573.a n = A101399 n

end A101399

/-! ## A101399.P9655889644245506614

`record[-(a(n-3)+a(n-1))]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A101399.P9655889644245506614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  -(f1 (n - 3) + f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101399.P9655889644245506614

namespace A101399

/-- `record[-(a(n-3)+a(n-1))]` -/
def P9655889644245506614.Spec : Prop :=
  ∀ n, P9655889644245506614.a n = A101399 n

end A101399

/-! ## A101399.P4249327482094846352

`a(n-1)+a(n-2)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A101399.P4249327482094846352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 2) + a (n - 3)))

end

end A101399.P4249327482094846352

namespace A101399

/-- `a(n-1)+a(n-2)+a(n-2)+a(n-3)` -/
def P4249327482094846352.Spec : Prop :=
  ∀ n, (P4249327482094846352.a n : ℤ) = A101399 n

theorem P4249327482094846352.correct : P4249327482094846352.Spec := by
  intro n
  simp only [A101399, Nat.add_sub_cancel, A101399.P4249327482094846352.a, A101399.P17458613530710300852.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A101399

/-! ## A101399.P17382497531057165909

`A097333(2*n)`
-/

namespace A101399.P17382497531057165909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097333 (2 * n)

end

end A101399.P17382497531057165909

namespace A101399

/-- `A097333(2*n)` -/
def P17382497531057165909.Spec : Prop :=
  ∀ n, P17382497531057165909.a n = A101399 n

end A101399

/-! ## A101399.P15904541255425522652

`A109533(3*n)`
-/

namespace A101399.P15904541255425522652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109533 (3 * n)

end

end A101399.P15904541255425522652

namespace A101399

/-- `A109533(3*n)` -/
def P15904541255425522652.Spec : Prop :=
  ∀ n, P15904541255425522652.a n = A101399 n

end A101399

/-! ## A101399.P11203672144679317522

`∑[A141685(n+1)]`
-/

namespace A101399.P11203672144679317522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101399.P11203672144679317522

namespace A101399

/-- `∑[A141685(n+1)]` -/
def P11203672144679317522.Spec : Prop :=
  ∀ n, P11203672144679317522.a n = A101399 n

end A101399

/-! ## A101399.P16949864954445976827

`A058278(2*n+3)`
-/

namespace A101399.P16949864954445976827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058278 (2 * n + 3)

end

end A101399.P16949864954445976827

namespace A101399

/-- `A058278(2*n+3)` -/
def P16949864954445976827.Spec : Prop :=
  ∀ n, P16949864954445976827.a n = A101399 n

end A101399

/-! ## A101399.P5805392761529699541

`A226916(4*(n+2))`
-/

namespace A101399.P5805392761529699541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226916 (4 * (n + 2))

end

end A101399.P5805392761529699541

namespace A101399

/-- `A226916(4*(n+2))` -/
def P5805392761529699541.Spec : Prop :=
  ∀ n, P5805392761529699541.a n = A101399 n

end A101399

/-! ## A101399.P11888981325472051067

`A226275(2*n)-char[1]`
-/

namespace A101399.P11888981325472051067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226275 (2 * n) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A101399.P11888981325472051067

namespace A101399

/-- `A226275(2*n)-char[1]` -/
def P11888981325472051067.Spec : Prop :=
  ∀ n, P11888981325472051067.a n = A101399 n

end A101399

/-! ## A101399.P14847131794571999337

`record[A003410(C(n, a(n-1)))]` with `a(0)=1`
-/

namespace A101399.P14847131794571999337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A003410 (Nat.choose n (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101399.P14847131794571999337

namespace A101399

/-- `record[A003410(C(n, a(n-1)))]` -/
def P14847131794571999337.Spec : Prop :=
  ∀ n, P14847131794571999337.a n = A101399 n

end A101399

/-! ## A101399.P16169350137876688694

`A179070(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A101399.P16169350137876688694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A179070 (2 * n) + a (n - 1)

end

end A101399.P16169350137876688694

namespace A101399

/-- `A179070(2*n)+a(n-1)` -/
def P16169350137876688694.Spec : Prop :=
  ∀ n, P16169350137876688694.a n = A101399 n

end A101399

/-! ## A101399.P7116074841830145280

`A003410(A004273(n))`
-/

namespace A101399.P7116074841830145280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003410 (A004273 n).toNat

end

end A101399.P7116074841830145280

namespace A101399

/-- `A003410(A004273(n))` -/
def P7116074841830145280.Spec : Prop :=
  ∀ n, P7116074841830145280.a n = A101399 n

end A101399

/-! ## A101399.P2863517521036500067

`A141015(n)+A002478(n)`
-/

namespace A101399.P2863517521036500067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141015 n + A002478 n

end

end A101399.P2863517521036500067

namespace A101399

/-- `A141015(n)+A002478(n)` -/
def P2863517521036500067.Spec : Prop :=
  ∀ n, P2863517521036500067.a n = A101399 n

end A101399

/-! ## A101399.P11962219425181888771

`A003410(A289207(2*n+1))`
-/

namespace A101399.P11962219425181888771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003410 (A289207 (2 * n + 1)).toNat

end

end A101399.P11962219425181888771

namespace A101399

/-- `A003410(A289207(2*n+1))` -/
def P11962219425181888771.Spec : Prop :=
  ∀ n, P11962219425181888771.a n = A101399 n

end A101399

/-! ## A101399.P17724896287965803112

`A003410(A028310(2*n)-1)`
-/

namespace A101399.P17724896287965803112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003410 (A028310 (2 * n) - 1).toNat

end

end A101399.P17724896287965803112

namespace A101399

/-- `A003410(A028310(2*n)-1)` -/
def P17724896287965803112.Spec : Prop :=
  ∀ n, P17724896287965803112.a n = A101399 n

end A101399

/-! ## A101399.P13435081366215272636

`A078007(n+1)+A078007(n)`
-/

namespace A101399.P13435081366215272636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078007 (n + 1) + A078007 n

end

end A101399.P13435081366215272636

namespace A101399

/-- `A078007(n+1)+A078007(n)` -/
def P13435081366215272636.Spec : Prop :=
  ∀ n, P13435081366215272636.a n = A101399 n

end A101399

/-! ## A101399.P17427168569364526193

`A003410(A289207(n+1)+n)`
-/

namespace A101399.P17427168569364526193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003410 (A289207 (n + 1) + (n : ℤ)).toNat

end

end A101399.P17427168569364526193

namespace A101399

/-- `A003410(A289207(n+1)+n)` -/
def P17427168569364526193.Spec : Prop :=
  ∀ n, P17427168569364526193.a n = A101399 n

end A101399

/-! ## A101399.P11825724657694098996

`A003410(A028310(n)-1+n)`
-/

namespace A101399.P11825724657694098996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003410 (A028310 n - 1 + (n : ℤ)).toNat

end

end A101399.P11825724657694098996

namespace A101399

/-- `A003410(A028310(n)-1+n)` -/
def P11825724657694098996.Spec : Prop :=
  ∀ n, P11825724657694098996.a n = A101399 n

end A101399

/-! ## A101399.P1280681253267053969

`A142474(n+2)+A002478(n)`
-/

namespace A101399.P1280681253267053969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142474 (n + 2) + A002478 n

end

end A101399.P1280681253267053969

namespace A101399

/-- `A142474(n+2)+A002478(n)` -/
def P1280681253267053969.Spec : Prop :=
  ∀ n, P1280681253267053969.a n = A101399 n

end A101399

