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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A225800: Triangle of rising diagonals of A011973 (with rows displayed as centered text).

The programs for A225800, there is no canonical definition to state claims against.
-/

/-! ## A225800.P17507586413834831550

`A081604(A144553(n+2)²)`
-/

namespace A225800.P17507586413834831550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A144553 (n + 2) ^ 2).toNat

end

end A225800.P17507586413834831550

/-!
# A225801: The only semiprime s such that 2*a < s < 2*b where a, b are consecutive semiprimes.

The programs for A225801, there is no canonical definition to state claims against.
-/

/-! ## A225801.P731816554087246071

`A174653(lt[A174629(2*n+5), A174667(n+2)])`
-/

namespace A225801.P731816554087246071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174629 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174667 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174653 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A225801.P731816554087246071

/-!
# A225802: Position of first occurrence of n in continued fraction for Pi, or -1 if n never occurs.

The programs for A225802, there is no canonical definition to state claims against.
-/

/-! ## A225802.P5798566238929129623

`A032523(n+1)-1`
-/

namespace A225802.P5798566238929129623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032523 (n + 1) - 1

end

end A225802.P5798566238929129623

/-! ## A225802.P1352191907008476682

`A082551(A005100(n+1))+A032523(n+1)`
-/

namespace A225802.P1352191907008476682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (A005100 (n + 1)).toNat + A032523 (n + 1)

end

end A225802.P1352191907008476682

/-! ## A225802.P770414279725497677

`A082551(A006530(n+1))+A032523(n+1)`
-/

namespace A225802.P770414279725497677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (A006530 (n + 1)).toNat + A032523 (n + 1)

end

end A225802.P770414279725497677

/-! ## A225802.P15393405747353388837

`A082551(A020639(n+1))+A032523(n+1)`
-/

namespace A225802.P15393405747353388837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (A020639 (n + 1)).toNat + A032523 (n + 1)

end

end A225802.P15393405747353388837

/-! ## A225802.P2806594260178051352

`A317939(A001358(n+1))+A032523(n+1)`
-/

namespace A225802.P2806594260178051352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317939 (A001358 (n + 1)).toNat + A032523 (n + 1)

end

end A225802.P2806594260178051352

/-! ## A225802.P10025514236164691037

`A163202(A001489(n)+n+1)+A032523(n+1)`
-/

namespace A225802.P10025514236164691037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163202 (A001489 n + (n + 1 : ℤ)).toNat + A032523 (n + 1)

end

end A225802.P10025514236164691037

/-! ## A225802.P3616186029383449824

`A082551(A001747(n+1)/2)+A032523(n+1)`
-/

namespace A225802.P3616186029383449824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (SequenceMachineLib.roundAway ((A001747 (n + 1) : ℚ) / 2)).toNat + A032523 (n + 1)

end

end A225802.P3616186029383449824

/-! ## A225802.P14702910967809546035

`A260196(3*(n+1))+A032523(n+1)`
-/

namespace A225802.P14702910967809546035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (3 * (n + 1)) + A032523 (n + 1)

end

end A225802.P14702910967809546035

/-! ## A225802.P14721811724626921571

`A062157(4*(n+1))+A032523(n+1)`
-/

namespace A225802.P14721811724626921571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (4 * (n + 1)) + A032523 (n + 1)

end

end A225802.P14721811724626921571

/-! ## A225802.P16966848819945530504

`A033999(A008366(n+1))+A032523(n+1)`
-/

namespace A225802.P16966848819945530504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A008366 (n + 1)).toNat + A032523 (n + 1)

end

end A225802.P16966848819945530504

/-! ## A225802.P15886425874872600854

`A092673(A065091(n+1))+A032523(n+1)`
-/

namespace A225802.P15886425874872600854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092673 (A065091 (n + 1)).toNat + A032523 (n + 1)

end

end A225802.P15886425874872600854

/-! ## A225802.P10898108632075698363

`A033999(A084704(n+2))+A032523(n+1)`
-/

namespace A225802.P10898108632075698363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A084704 (n + 2)).toNat + A032523 (n + 1)

end

end A225802.P10898108632075698363

/-! ## A225802.P5211241728948591168

`A082551(A002378(n)+1)+A032523(n+1)`
-/

namespace A225802.P5211241728948591168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (A002378 n + 1).toNat + A032523 (n + 1)

end

end A225802.P5211241728948591168

/-! ## A225802.P10760723790249292426

`A033999(A084696(n+1))+A032523(n+1)`
-/

namespace A225802.P10760723790249292426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A084696 (n + 1)).toNat + A032523 (n + 1)

end

end A225802.P10760723790249292426

/-! ## A225802.P11127724363361571041

`A106400(A059268(n))+A032523(n+1)`
-/

namespace A225802.P11127724363361571041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A059268 n).toNat + A032523 (n + 1)

end

end A225802.P11127724363361571041

/-!
# A225804: Arithmetic mean of the first n primes, rounded up.

The programs for A225804, the canonical program `A225804.P13090922353215695081` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225804 has offset 1).

The definition of A225804 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A225804.P13090922353215695081

`ceil(A007504(n+1)/(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A225804

/-- `ceil(A007504(n+1)/(n+1))` -/
def P13090922353215695081.Spec : Prop :=
  ∀ n, P13090922353215695081.a n = A225804 (n + 1)

theorem P13090922353215695081.correct : P13090922353215695081.Spec := by
  intro n
  simp only [A225804, Nat.add_sub_cancel]

end A225804

/-! ## A225804.P12475370260228491498

`ceil(∑[A000040(n+1)]/(n+1))`
-/

namespace A225804.P12475370260228491498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌉

end

end A225804.P12475370260228491498

namespace A225804

/-- `ceil(∑[A000040(n+1)]/(n+1))` -/
def P12475370260228491498.Spec : Prop :=
  ∀ n, P12475370260228491498.a n = A225804 (n + 1)

end A225804

/-! ## A225804.P17350564643803795100

`ceil(∑[A008578(n+2)]/(n+1))`
-/

namespace A225804.P17350564643803795100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌉

end

end A225804.P17350564643803795100

namespace A225804

/-- `ceil(∑[A008578(n+2)]/(n+1))` -/
def P17350564643803795100.Spec : Prop :=
  ∀ n, P17350564643803795100.a n = A225804 (n + 1)

end A225804

/-! ## A225804.P3507088366072951725

`ceil(∑[sqrt(A001248(n+1))]/(n+1))`
-/

namespace A225804.P3507088366072951725
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(∑ j ∈ Finset.range (n + 1), f1 j) / (n + 1 : ℝ)⌉

end

end A225804.P3507088366072951725

namespace A225804

/-- `ceil(∑[sqrt(A001248(n+1))]/(n+1))` -/
def P3507088366072951725.Spec : Prop :=
  ∀ n, P3507088366072951725.a n = A225804 (n + 1)

end A225804

/-! ## A225804.P7181962519122625450

`ceil(∑[record[A006530(n+2)]]/(n+1))`
-/

namespace A225804.P7181962519122625450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌉

end

end A225804.P7181962519122625450

namespace A225804

/-- `ceil(∑[record[A006530(n+2)]]/(n+1))` -/
def P7181962519122625450.Spec : Prop :=
  ∀ n, P7181962519122625450.a n = A225804 (n + 1)

end A225804

/-! ## A225804.P5878329604862401782

`ceil(∑[record[A020639(n+2)]]/(n+1))`
-/

namespace A225804.P5878329604862401782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌉

end

end A225804.P5878329604862401782

namespace A225804

/-- `ceil(∑[record[A020639(n+2)]]/(n+1))` -/
def P5878329604862401782.Spec : Prop :=
  ∀ n, P5878329604862401782.a n = A225804 (n + 1)

end A225804

/-! ## A225804.P5676022107835789094

`ceil(∑[A006093(n+1)+1]/(n+1))`
-/

namespace A225804.P5676022107835789094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌉

end

end A225804.P5676022107835789094

namespace A225804

/-- `ceil(∑[A006093(n+1)+1]/(n+1))` -/
def P5676022107835789094.Spec : Prop :=
  ∀ n, P5676022107835789094.a n = A225804 (n + 1)

end A225804

/-! ## A225804.P16773567892338481882

`floor(or(1, A237589(n+1))/(n+1))+1`
-/

namespace A225804.P16773567892338481882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.lor 1 (A237589 (n + 1)) : ℚ) / (n + 1 : ℚ)⌋ + 1

end

end A225804.P16773567892338481882

namespace A225804

/-- `floor(or(1, A237589(n+1))/(n+1))+1` -/
def P16773567892338481882.Spec : Prop :=
  ∀ n, P16773567892338481882.a n = A225804 (n + 1)

end A225804

/-! ## A225804.P10339930832975451137

`A267084(n+1)+A060620(n+1)`
-/

namespace A225804.P10339930832975451137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267084 (n + 1) + A060620 (n + 1)

end

end A225804.P10339930832975451137

namespace A225804

/-- `A267084(n+1)+A060620(n+1)` -/
def P10339930832975451137.Spec : Prop :=
  ∀ n, P10339930832975451137.a n = A225804 (n + 1)

theorem P10339930832975451137.correct : P10339930832975451137.Spec := by
  intro n
  simp only [A225804, Nat.add_sub_cancel, A225804.P10339930832975451137.a, A225804.P13090922353215695081.a, A007504, A007504.P14310834286015847203.a, A060620, A060620.P18002916357615302440.a, A267084, A267084.P13753241132986256046.a, A014284, A014284.P18183547548072881472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A225804

/-! ## A225804.P5145198998740606654

`A267087(n+1)-A060620(n+1)`
-/

namespace A225804.P5145198998740606654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267087 (n + 1) - A060620 (n + 1)

end

end A225804.P5145198998740606654

namespace A225804

/-- `A267087(n+1)-A060620(n+1)` -/
def P5145198998740606654.Spec : Prop :=
  ∀ n, P5145198998740606654.a n = A225804 (n + 1)

theorem P5145198998740606654.correct : P5145198998740606654.Spec := by
  intro n
  simp only [A225804, Nat.add_sub_cancel, A225804.P5145198998740606654.a, A225804.P13090922353215695081.a, A007504, A007504.P14310834286015847203.a, A060620, A060620.P18002916357615302440.a, A267087, A267087.P15838477372030421436.a, A014284, A014284.P18183547548072881472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A225804

/-! ## A225804.P18144174001825354557

`ceil(A301273(n+1)/A301274(n+1))`
-/

namespace A225804.P18144174001825354557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A301273 (n + 1) : ℚ) / (A301274 (n + 1) : ℚ)⌉

end

end A225804.P18144174001825354557

namespace A225804

/-- `ceil(A301273(n+1)/A301274(n+1))` -/
def P18144174001825354557.Spec : Prop :=
  ∀ n, P18144174001825354557.a n = A225804 (n + 1)

end A225804

/-! ## A225804.P13557055242427909961

`A065033(A267087(n+1))`
-/

namespace A225804.P13557055242427909961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A267087 (n + 1)).toNat

end

end A225804.P13557055242427909961

namespace A225804

/-- `A065033(A267087(n+1))` -/
def P13557055242427909961.Spec : Prop :=
  ∀ n, P13557055242427909961.a n = A225804 (n + 1)

end A225804

/-!
# A225806: Prime(n) such that 2*n^2 - prime(n) is square.

The programs for A225806, there is no canonical definition to state claims against.
-/

/-! ## A225806.P3242796734025818580

`p?[∑[A051724(A241508(n))]]`
-/

namespace A225806.P3242796734025818580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A241508 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225806.P3242796734025818580

/-!
# A225808: Values (Sum_{1<=i<=k} x_i)^2 = Sum_{1<=i<=k} x_i^3 for 1 <= x_1 <= x_2 <=...<= x_k ordered lexicographically according to (x1, x2,..., xk).

The programs for A225808, there is no canonical definition to state claims against.
-/

/-! ## A225808.P2043890156619820491

`A000038(A342690(n+1))+∑{digits}[A227072(n+1), #]²`
-/

namespace A225808.P2043890156619820491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A342690 (n + 1)).toNat + ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum ^ 2 : ℕ) : ℤ)

end

end A225808.P2043890156619820491

/-! ## A225808.P17342633032284570427

`∑{digits}[A227072(n+1), #]²%A000217(A033537(n+1)+1)`
-/

namespace A225808.P17342633032284570427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum ^ 2 : ℕ) : ℤ) (A000217 (A033537 (n + 1) + 1).toNat)

end

end A225808.P17342633032284570427

/-! ## A225808.P9903890198550229837

`∑{digits}[A227072(n+1), #]^A133265(A059268(n))`
-/

namespace A225808.P9903890198550229837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227072 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℚ) ^ (A133265 (A059268 n).toNat : ℤ)

end

end A225808.P9903890198550229837

/-! ## A225808.P11100859018866699473

`∑{digits}[A227072(n+1), #]²%A070552(A034718(n+1))`
-/

namespace A225808.P11100859018866699473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum ^ 2 : ℕ) : ℤ) (A070552 (A034718 (n + 1)).toNat)

end

end A225808.P11100859018866699473

/-! ## A225808.P2160655690573344501

`(∑{digits}[A227072(n+1), #]%A257681(A005385(n+1)))²`
-/

namespace A225808.P2160655690573344501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) (A257681 (A005385 (n + 1)).toNat) ^ 2

end

end A225808.P2160655690573344501

/-! ## A225808.P2598149214093486468

`A000038(A130321(n))+∑{digits}[A227072(n+1), #]²`
-/

namespace A225808.P2598149214093486468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A130321 n).toNat + ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum ^ 2 : ℕ) : ℤ)

end

end A225808.P2598149214093486468

/-! ## A225808.P6520564847475557742

`(∑{digits}[A227072(n+1), #]%A349242(A065033(n)))²`
-/

namespace A225808.P6520564847475557742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) (A349242 (A065033 n).toNat) ^ 2

end

end A225808.P6520564847475557742

/-! ## A225808.P1682597083323890542

`∑{digits}[A227072(n+1), #]²*A001222(A217047(n+1))`
-/

namespace A225808.P1682597083323890542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum ^ 2 : ℕ) : ℤ) * A001222 (A217047 (n + 1)).toNat

end

end A225808.P1682597083323890542

/-! ## A225808.P6244254705187993112

`(∑{digits}[A227072(n+1), #]*A094267(n²))²`
-/

namespace A225808.P6244254705187993112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) * A094267 (n ^ 2)) ^ 2

end

end A225808.P6244254705187993112

/-! ## A225808.P74594565618093044

`∑{digits}[A227072(n+1), #]²*A008683(A002148(n))²`
-/

namespace A225808.P74594565618093044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum ^ 2 : ℕ) : ℤ) * A008683 (A002148 n).toNat ^ 2

end

end A225808.P74594565618093044

/-!
# A225809: Primes p such that p+q+1 is the square of a prime, where q is the next prime after p.

The programs for A225809, there is no canonical definition to state claims against.
-/

/-! ## A225809.P3812176235660186200

`filter[A242384(n+1), A143536(#)]`
-/

namespace A225809.P3812176235660186200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143536 (f1 j).toNat = 1) n)

end

end A225809.P3812176235660186200

/-! ## A225809.P9531439788576439076

`A055377(∩[A011974(n+1), A084920(n+1)])`
-/

namespace A225809.P9531439788576439076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055377 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A225809.P9531439788576439076

/-!
# A225810: a(n) = (10^n)^2 + 4*(10^n) + 1.

The programs for A225810, the canonical program `A225810.P1708707790492234571` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225810 has offset 0).

The definition of A225810 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10^n)²+4*10^n+1` (program `A225810.P1708707790492234571`, by `A225810.P1708707790492234571.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A225810.P1708707790492234571

`(10^n)²+4*10^n+1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A225810

/-- `(10^n)²+4*10^n+1` -/
def P1708707790492234571.Spec : Prop :=
  ∀ n, (P1708707790492234571.a n : ℤ) = A225810 n

theorem P1708707790492234571.correct : P1708707790492234571.Spec := by
  intro n
  simp only [A225810]

end A225810

/-! ## A225810.P4235222357791685202

`abs(3-(Δ[A002275(n)]+2)²)`
-/

namespace A225810.P4235222357791685202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - (f1 (n + 1) - f1 n + 2) ^ 2|

end

end A225810.P4235222357791685202

namespace A225810

/-- `abs(3-(Δ[A002275(n)]+2)²)` -/
def P4235222357791685202.Spec : Prop :=
  ∀ n, P4235222357791685202.a n = A225810 n

end A225810

/-! ## A225810.P3559398934995850939

`(A225813(n)+ceil((10^n+1/2)²))/2`
-/

namespace A225810.P3559398934995850939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225813 n + ⌈((10 ^ n : ℚ) + (1 : ℚ) / 2) ^ 2⌉ : ℚ) / 2

end

end A225810.P3559398934995850939

namespace A225810

/-- `(A225813(n)+ceil((10^n+1/2)²))/2` -/
def P3559398934995850939.Spec : Prop :=
  ∀ n, P3559398934995850939.a n = (A225810 n : ℚ)

end A225810

/-! ## A225810.P5170158261521556836

`abs(A011557(n)-A171410(n))`
-/

namespace A225810.P5170158261521556836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011557 n - A171410 n|

end

end A225810.P5170158261521556836

namespace A225810

/-- `abs(A011557(n)-A171410(n))` -/
def P5170158261521556836.Spec : Prop :=
  ∀ n, P5170158261521556836.a n = A225810 n

end A225810

/-! ## A225810.P15558813126257231788

`(A171461(n)+A033934(n))/2`
-/

namespace A225810.P15558813126257231788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171461 n + A033934 n : ℚ) / 2

end

end A225810.P15558813126257231788

namespace A225810

/-- `(A171461(n)+A033934(n))/2` -/
def P15558813126257231788.Spec : Prop :=
  ∀ n, P15558813126257231788.a n = (A225810 n : ℚ)

end A225810

/-! ## A225810.P16820478002775892737

`(A171553(n)+A168624(n))/2`
-/

namespace A225810.P16820478002775892737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171553 n + A168624 n : ℚ) / 2

end

end A225810.P16820478002775892737

namespace A225810

/-- `(A171553(n)+A168624(n))/2` -/
def P16820478002775892737.Spec : Prop :=
  ∀ n, P16820478002775892737.a n = (A225810 n : ℚ)

end A225810

/-! ## A225810.P9963660369997333817

`(A171410(n)+A171375(n))/2`
-/

namespace A225810.P9963660369997333817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171410 n + A171375 n : ℚ) / 2

end

end A225810.P9963660369997333817

namespace A225810

/-- `(A171410(n)+A171375(n))/2` -/
def P9963660369997333817.Spec : Prop :=
  ∀ n, P9963660369997333817.a n = (A225810 n : ℚ)

end A225810

/-! ## A225810.P16278008058624311976

`(2*A171410(n))%A171461(n)`
-/

namespace A225810.P16278008058624311976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A171410 n) (A171461 n)

end

end A225810.P16278008058624311976

namespace A225810

/-- `(2*A171410(n))%A171461(n)` -/
def P16278008058624311976.Spec : Prop :=
  ∀ n, P16278008058624311976.a n = A225810 n

end A225810

/-! ## A225810.P1465481756123443185

`(2*A171461(n))%A171513(n)`
-/

namespace A225810.P1465481756123443185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A171461 n) (A171513 n)

end

end A225810.P1465481756123443185

namespace A225810

/-- `(2*A171461(n))%A171513(n)` -/
def P1465481756123443185.Spec : Prop :=
  ∀ n, P1465481756123443185.a n = A225810 n

end A225810

/-! ## A225810.P9913054009575064018

`(3*A171461(n))%A225813(n)`
-/

namespace A225810.P9913054009575064018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A171461 n) (A225813 n)

end

end A225810.P9913054009575064018

namespace A225810

/-- `(3*A171461(n))%A225813(n)` -/
def P9913054009575064018.Spec : Prop :=
  ∀ n, P9913054009575064018.a n = A225810 n

end A225810

/-!
# A225813: a(n) = (10^n)^2 + 7*(10^n) + 1.

The programs for A225813, the canonical program `A225813.P2385719809473072166` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225813 has offset 0).

The definition of A225813 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10^n)²+7*10^n+1` (program `A225813.P2385719809473072166`, by `A225813.P2385719809473072166.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A225813.P2385719809473072166

`(10^n)²+7*10^n+1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A225813

/-- `(10^n)²+7*10^n+1` -/
def P2385719809473072166.Spec : Prop :=
  ∀ n, (P2385719809473072166.a n : ℤ) = A225813 n

theorem P2385719809473072166.correct : P2385719809473072166.Spec := by
  intro n
  simp only [A225813]

end A225813

/-! ## A225813.P4161532271099309605

`abs((10^n+4)²-15-A011557(n))`
-/

namespace A225813.P4161532271099309605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((10 ^ n + 4) ^ 2 : ℤ) - 15 - A011557 n|

end

end A225813.P4161532271099309605

namespace A225813

/-- `abs((10^n+4)²-15-A011557(n))` -/
def P4161532271099309605.Spec : Prop :=
  ∀ n, P4161532271099309605.a n = A225813 n

end A225813

/-! ## A225813.P5641743688061482537

`(A171461(n)+(10^n+4)²-15)/2`
-/

namespace A225813.P5641743688061482537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171461 n + (((10 ^ n + 4) ^ 2 : ℤ) - 15) : ℚ) / 2

end

end A225813.P5641743688061482537

namespace A225813

/-- `(A171461(n)+(10^n+4)²-15)/2` -/
def P5641743688061482537.Spec : Prop :=
  ∀ n, P5641743688061482537.a n = (A225813 n : ℚ)

end A225813

/-! ## A225813.P12155897875986723324

`(A171553(n)+A171410(n))/2`
-/

namespace A225813.P12155897875986723324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171553 n + A171410 n : ℚ) / 2

end

end A225813.P12155897875986723324

namespace A225813

/-- `(A171553(n)+A171410(n))/2` -/
def P12155897875986723324.Spec : Prop :=
  ∀ n, P12155897875986723324.a n = (A225813 n : ℚ)

end A225813

/-! ## A225813.P4776200480294117108

`(A171513(n)+A171461(n))/2`
-/

namespace A225813.P4776200480294117108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171513 n + A171461 n : ℚ) / 2

end

end A225813.P4776200480294117108

namespace A225813

/-- `(A171513(n)+A171461(n))/2` -/
def P4776200480294117108.Spec : Prop :=
  ∀ n, P4776200480294117108.a n = (A225813 n : ℚ)

end A225813

/-!
# A225816: Square array A(n,k) = (k!)^n, n>=0, k>=0, read by antidiagonals.

The programs for A225816, the canonical program `A225816.P14988072160396161937` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225816 has offset 0).

The definition of A225816 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)-col(n))!^col(n)` (program `A225816.P14988072160396161937`, by `A225816.P14988072160396161937.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A225816.P14988072160396161937

`(row(n)-col(n))!^col(n)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A225816

/-- `(row(n)-col(n))!^col(n)` -/
def P14988072160396161937.Spec : Prop :=
  ∀ n, (P14988072160396161937.a n : ℤ) = A225816 n

theorem P14988072160396161937.correct : P14988072160396161937.Spec := by
  intro n
  simp only [A225816]

end A225816

/-! ## A225816.P250424405528969787

`A119502(n)^col(n)`
-/

namespace A225816.P250424405528969787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 n ^ SequenceMachineLib.triCol n

end

end A225816.P250424405528969787

namespace A225816

/-- `A119502(n)^col(n)` -/
def P250424405528969787.Spec : Prop :=
  ∀ n, P250424405528969787.a n = A225816 n

theorem P250424405528969787.correct : P250424405528969787.Spec := by
  intro n
  simp only [A225816, Nat.add_sub_cancel, A225816.P250424405528969787.a, A225816.P14988072160396161937.a, A119502, A119502.P14623475535698746152.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A225816

/-! ## A225816.P5910007380275304740

`A000142(row(n)-col(n))^col(n)`
-/

namespace A225816.P5910007380275304740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) ^ SequenceMachineLib.triCol n

end

end A225816.P5910007380275304740

namespace A225816

/-- `A000142(row(n)-col(n))^col(n)` -/
def P5910007380275304740.Spec : Prop :=
  ∀ n, P5910007380275304740.a n = A225816 n

end A225816

/-! ## A225816.P10294105972052185568

`A025581(n)!^A002262(n)`
-/

namespace A225816.P10294105972052185568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025581 n).toNat : ℚ) ^ (A002262 n : ℤ)

end

end A225816.P10294105972052185568

namespace A225816

/-- `A025581(n)!^A002262(n)` -/
def P10294105972052185568.Spec : Prop :=
  ∀ n, P10294105972052185568.a n = (A225816 n : ℚ)

end A225816

/-! ## A225816.P7200185596682254176

`A025581(n)!^A057554(Δ[n²])`
-/

namespace A225816.P7200185596682254176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025581 n).toNat : ℚ) ^ (A057554 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℤ)

end

end A225816.P7200185596682254176

namespace A225816

/-- `A025581(n)!^A057554(Δ[n²])` -/
def P7200185596682254176.Spec : Prop :=
  ∀ n, P7200185596682254176.a n = (A225816 n : ℚ)

end A225816

/-! ## A225816.P12683185941443083187

`(A004736(n+1)-1)!^A002262(n)`
-/

namespace A225816.P12683185941443083187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A004736 (n + 1) - 1).toNat : ℚ) ^ (A002262 n : ℤ)

end

end A225816.P12683185941443083187

namespace A225816

/-- `(A004736(n+1)-1)!^A002262(n)` -/
def P12683185941443083187.Spec : Prop :=
  ∀ n, P12683185941443083187.a n = (A225816 n : ℚ)

end A225816

/-! ## A225816.P8340640845742283978

`A025581(n)!^(A002260(n+1)-1)`
-/

namespace A225816.P8340640845742283978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025581 n).toNat : ℚ) ^ (A002260 (n + 1) - 1 : ℤ)

end

end A225816.P8340640845742283978

namespace A225816

/-- `A025581(n)!^(A002260(n+1)-1)` -/
def P8340640845742283978.Spec : Prop :=
  ∀ n, P8340640845742283978.a n = (A225816 n : ℚ)

end A225816

/-! ## A225816.P5288019837827770114

`A057554(2*(n+1))!^A002262(n)`
-/

namespace A225816.P5288019837827770114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A057554 (2 * (n + 1))).toNat : ℚ) ^ (A002262 n : ℤ)

end

end A225816.P5288019837827770114

namespace A225816

/-- `A057554(2*(n+1))!^A002262(n)` -/
def P5288019837827770114.Spec : Prop :=
  ∀ n, P5288019837827770114.a n = (A225816 n : ℚ)

end A225816

/-! ## A225816.P282888500571276886

`(A057555(2*(n+1))-1)!^A002262(n)`
-/

namespace A225816.P282888500571276886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A057555 (2 * (n + 1)) - 1).toNat : ℚ) ^ (A002262 n : ℤ)

end

end A225816.P282888500571276886

namespace A225816

/-- `(A057555(2*(n+1))-1)!^A002262(n)` -/
def P282888500571276886.Spec : Prop :=
  ∀ n, P282888500571276886.a n = (A225816 n : ℚ)

end A225816

/-! ## A225816.P12272308512334304187

`A025581(n)!^(A057555(2*n+1)-1)`
-/

namespace A225816.P12272308512334304187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025581 n).toNat : ℚ) ^ (A057555 (2 * n + 1) - 1 : ℤ)

end

end A225816.P12272308512334304187

namespace A225816

/-- `A025581(n)!^(A057555(2*n+1)-1)` -/
def P12272308512334304187.Spec : Prop :=
  ∀ n, P12272308512334304187.a n = (A225816 n : ℚ)

end A225816

/-! ## A225816.P2620554257549094769

`A025581(n)!^(A057554(2*n+1)%63)`
-/

namespace A225816.P2620554257549094769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025581 n).toNat : ℚ) ^ (Int.tmod (A057554 (2 * n + 1)) 63 : ℤ)

end

end A225816.P2620554257549094769

namespace A225816

/-- `A025581(n)!^(A057554(2*n+1)%63)` -/
def P2620554257549094769.Spec : Prop :=
  ∀ n, P2620554257549094769.a n = (A225816 n : ℚ)

end A225816

/-! ## A225816.P3667714860409527040

`(round(sqrt(2*n+1))-A002260(n+1))!^A002262(n)`
-/

namespace A225816.P3667714860409527040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)) - A002260 (n + 1)).toNat : ℚ) ^ (A002262 n : ℤ)

end

end A225816.P3667714860409527040

namespace A225816

/-- `(round(sqrt(2*n+1))-A002260(n+1))!^A002262(n)` -/
def P3667714860409527040.Spec : Prop :=
  ∀ n, P3667714860409527040.a n = (A225816 n : ℚ)

end A225816

/-! ## A225816.P16735255343576949773

`(round(sqrt(2*n+1))-A002260(n+1))!^(A057555(2*n+1)-1)`
-/

namespace A225816.P16735255343576949773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)) - A002260 (n + 1)).toNat : ℚ) ^ (A057555 (2 * n + 1) - 1 : ℤ)

end

end A225816.P16735255343576949773

namespace A225816

/-- `(round(sqrt(2*n+1))-A002260(n+1))!^(A057555(2*n+1)-1)` -/
def P16735255343576949773.Spec : Prop :=
  ∀ n, P16735255343576949773.a n = (A225816 n : ℚ)

end A225816

/-! ## A225816.P7197652099415435798

`A081123(A099375(n))^A002262(n)`
-/

namespace A225816.P7197652099415435798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081123 (A099375 n).toNat : ℚ) ^ (A002262 n : ℤ)

end

end A225816.P7197652099415435798

namespace A225816

/-- `A081123(A099375(n))^A002262(n)` -/
def P7197652099415435798.Spec : Prop :=
  ∀ n, P7197652099415435798.a n = (A225816 n : ℚ)

end A225816

/-! ## A225816.P1944460925892697311

`A002262(A056943(n))!^A002262(n)`
-/

namespace A225816.P1944460925892697311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 (A056943 n).toNat).toNat : ℚ) ^ (A002262 n : ℤ)

end

end A225816.P1944460925892697311

namespace A225816

/-- `A002262(A056943(n))!^A002262(n)` -/
def P1944460925892697311.Spec : Prop :=
  ∀ n, P1944460925892697311.a n = (A225816 n : ℚ)

end A225816

/-! ## A225816.P2996213895993197940

`A002262(A061579(n))!^A002262(n)`
-/

namespace A225816.P2996213895993197940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 (A061579 n).toNat).toNat : ℚ) ^ (A002262 n : ℤ)

end

end A225816.P2996213895993197940

namespace A225816

/-- `A002262(A061579(n))!^A002262(n)` -/
def P2996213895993197940.Spec : Prop :=
  ∀ n, P2996213895993197940.a n = (A225816 n : ℚ)

end A225816

/-! ## A225816.P12635029819844856235

`A025581(n)!^A025581(A061579(n))`
-/

namespace A225816.P12635029819844856235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025581 n).toNat : ℚ) ^ (A025581 (A061579 n).toNat : ℤ)

end

end A225816.P12635029819844856235

namespace A225816

/-- `A025581(n)!^A025581(A061579(n))` -/
def P12635029819844856235.Spec : Prop :=
  ∀ n, P12635029819844856235.a n = (A225816 n : ℚ)

end A225816

/-! ## A225816.P8700428707014808827

`A104150(A004736(n+1))^A002262(n)`
-/

namespace A225816.P8700428707014808827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104150 (A004736 (n + 1)).toNat : ℚ) ^ (A002262 n : ℤ)

end

end A225816.P8700428707014808827

namespace A225816

/-- `A104150(A004736(n+1))^A002262(n)` -/
def P8700428707014808827.Spec : Prop :=
  ∀ n, P8700428707014808827.a n = (A225816 n : ℚ)

end A225816

/-! ## A225816.P10455392864174464407

`(A000096(A003056(n))-n)!^A002262(n)`
-/

namespace A225816.P10455392864174464407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000096 (A003056 n).toNat - (n : ℤ)).toNat : ℚ) ^ (A002262 n : ℤ)

end

end A225816.P10455392864174464407

namespace A225816

/-- `(A000096(A003056(n))-n)!^A002262(n)` -/
def P10455392864174464407.Spec : Prop :=
  ∀ n, P10455392864174464407.a n = (A225816 n : ℚ)

end A225816

/-! ## A225816.P2522836953808637334

`A025581(n)!^(A026100(A026098(n+1))-1)`
-/

namespace A225816.P2522836953808637334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025581 n).toNat : ℚ) ^ (A026100 (A026098 (n + 1)).toNat - 1 : ℤ)

end

end A225816.P2522836953808637334

namespace A225816

/-- `A025581(n)!^(A026100(A026098(n+1))-1)` -/
def P2522836953808637334.Spec : Prop :=
  ∀ n, P2522836953808637334.a n = (A225816 n : ℚ)

end A225816

/-!
# A225817: Moebius function applied to divisors of n, table read by rows.

The programs for A225817, there is no canonical definition to state claims against.
-/

/-! ## A225817.P12312442116913327300

`A008683(A027750(n+1))`
-/

namespace A225817.P12312442116913327300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A027750 (n + 1)).toNat

end

end A225817.P12312442116913327300

/-! ## A225817.P16928232096617995248

`A008683(abs(A233773(1+n)))`
-/

namespace A225817.P16928232096617995248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 |A233773 (1 + n)|.toNat

end

end A225817.P16928232096617995248

/-! ## A225817.P15818021852261286458

`A008683(A263730(2+n)+1)`
-/

namespace A225817.P15818021852261286458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A263730 (2 + n) + 1).toNat

end

end A225817.P15818021852261286458

/-! ## A225817.P5806773729132611083

`A008683(lcm(A020985(n), A233773(n+1)))`
-/

namespace A225817.P5806773729132611083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.lcm (A020985 n) (A233773 (n + 1)))

end

end A225817.P5806773729132611083

/-! ## A225817.P16130780686093647991

`A008683(A061017(n+1)/A056538(n+1))`
-/

namespace A225817.P16130780686093647991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((A061017 (n + 1) : ℚ) / (A056538 (n + 1) : ℚ))).toNat

end

end A225817.P16130780686093647991

/-! ## A225817.P16113615715457427624

`A008683(gcd(A061017(n+1), A233773(n+1)))`
-/

namespace A225817.P16113615715457427624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.gcd (A061017 (n + 1)) (A233773 (n + 1)))

end

end A225817.P16113615715457427624

/-! ## A225817.P4201957250457672368

`A008683(A002260(A056534(n+1)))`
-/

namespace A225817.P4201957250457672368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002260 (A056534 (n + 1)).toNat).toNat

end

end A225817.P4201957250457672368

/-! ## A225817.P3146733448878348080

`A054527(A056534(n+1))`
-/

namespace A225817.P3146733448878348080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054527 (A056534 (n + 1)).toNat

end

end A225817.P3146733448878348080

/-! ## A225817.P8529359258453715916

`A008683(runs[A244051(n+1)])`
-/

namespace A225817.P8529359258453715916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n)

end

end A225817.P8529359258453715916

/-! ## A225817.P16654020219266365234

`A008683(A046641(A168017(n+1)))`
-/

namespace A225817.P16654020219266365234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A046641 (A168017 (n + 1)).toNat).toNat

end

end A225817.P16654020219266365234

/-!
# A225819: Consider the set of n-tuples such that the sum of cubes of the elements is equal to square of their sum; sequence gives largest element in all such tuples.

The programs for A225819, there is no canonical definition to state claims against.
-/

/-! ## A225819.P16522341380038387846

`A000194(∑[∑[A026099(2*n+1)]])`
-/

namespace A225819.P16522341380038387846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026099 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A225819.P16522341380038387846

/-! ## A225819.P10785110591890426604

`A000196(A009894(n)+∑[A130518(n)])`
-/

namespace A225819.P10785110591890426604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A009894 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A225819.P10785110591890426604

/-! ## A225819.P14615639734089608940

`A259899(∑[record[A284145(n+1)]])`
-/

namespace A225819.P14615639734089608940
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284145 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259899 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A225819.P14615639734089608940

/-! ## A225819.P4965798424826987844

`A180447(2*A089140(n+1))`
-/

namespace A225819.P4965798424826987844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180447 (2 * A089140 (n + 1)).toNat

end

end A225819.P4965798424826987844

/-! ## A225819.P16198816633859732956

`∑[A014675(A069911(n+3)²)]`
-/

namespace A225819.P16198816633859732956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 (A069911 (n + 3) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225819.P16198816633859732956

/-!
# A225821: a(n) = Product_{p | p is prime and p, p-1 both divide n}.

The programs for A225821, the canonical program `A225821.P8890908099529802054` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225821 has offset 1).

The definition of A225821 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027642, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A225821.P8890908099529802054

`gcd(n+1, A027642(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A225821

/-- `gcd(n+1, A027642(n+1))` -/
def P8890908099529802054.Spec : Prop :=
  ∀ n, (P8890908099529802054.a n : ℤ) = A225821 (n + 1)

theorem P8890908099529802054.correct : P8890908099529802054.Spec := by
  intro n
  simp only [A225821, Nat.add_sub_cancel]

end A225821

/-! ## A225821.P6961338941917686029

`gcd((n+1)², A027760(n+1))`
-/

namespace A225821.P6961338941917686029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1) ^ 2 : ℤ) (A027760 (n + 1))

end

end A225821.P6961338941917686029

namespace A225821

/-- `gcd((n+1)², A027760(n+1))` -/
def P6961338941917686029.Spec : Prop :=
  ∀ n, (P6961338941917686029.a n : ℤ) = A225821 (n + 1)

end A225821

/-! ## A225821.P16382048282284443568

`gcd(∏{p}[n+1, #], A079612(n+1))`
-/

namespace A225821.P16382048282284443568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) (A079612 (n + 1))

end

end A225821.P16382048282284443568

namespace A225821

/-- `gcd(∏{p}[n+1, #], A079612(n+1))` -/
def P16382048282284443568.Spec : Prop :=
  ∀ n, (P16382048282284443568.a n : ℤ) = A225821 (n + 1)

end A225821

/-! ## A225821.P4635605665759020032

`gcd((n+1)*∏{p}[n+1, #], A141056(n+1))`
-/

namespace A225821.P4635605665759020032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) : ℕ) : ℤ) (A141056 (n + 1))

end

end A225821.P4635605665759020032

namespace A225821

/-- `gcd((n+1)*∏{p}[n+1, #], A141056(n+1))` -/
def P4635605665759020032.Spec : Prop :=
  ∀ n, (P4635605665759020032.a n : ℤ) = A225821 (n + 1)

end A225821

/-! ## A225821.P17256418892542527820

`gcd(A092486(n), A141056(n+1))`
-/

namespace A225821.P17256418892542527820
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092486 n) (A141056 (n + 1))

end

end A225821.P17256418892542527820

namespace A225821

/-- `gcd(A092486(n), A141056(n+1))` -/
def P17256418892542527820.Spec : Prop :=
  ∀ n, (P17256418892542527820.a n : ℤ) = A225821 (n + 1)

end A225821

/-! ## A225821.P16632270848032124195

`gcd(n*A027760(n+1), ∑[A109613(n)])`
-/

namespace A225821.P16632270848032124195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A027760 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A225821.P16632270848032124195

namespace A225821

/-- `gcd(n*A027760(n+1), ∑[A109613(n)])` -/
def P16632270848032124195.Spec : Prop :=
  ∀ n, (P16632270848032124195.a n : ℤ) = A225821 (n + 1)

end A225821

/-! ## A225821.P5304789348735981275

`A007947(A079612(n+1)/A027760(n+1))`
-/

namespace A225821.P5304789348735981275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway ((A079612 (n + 1) : ℚ) / (A027760 (n + 1) : ℚ))).toNat

end

end A225821.P5304789348735981275

namespace A225821

/-- `A007947(A079612(n+1)/A027760(n+1))` -/
def P5304789348735981275.Spec : Prop :=
  ∀ n, P5304789348735981275.a n = A225821 (n + 1)

end A225821

/-! ## A225821.P5697673380808372533

`A007947(A185633(n+1)/A027760(n+1))`
-/

namespace A225821.P5697673380808372533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway ((A185633 (n + 1) : ℚ) / (A027760 (n + 1) : ℚ))).toNat

end

end A225821.P5697673380808372533

namespace A225821

/-- `A007947(A185633(n+1)/A027760(n+1))` -/
def P5697673380808372533.Spec : Prop :=
  ∀ n, P5697673380808372533.a n = A225821 (n + 1)

end A225821

/-! ## A225821.P12067905610061970860

`gcd(∏{p}[n+1, #]², A176591(n+1))`
-/

namespace A225821.P12067905610061970860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((∏ p ∈ Nat.primeFactors (f1 n), p) ^ 2 : ℕ) : ℤ) (A176591 (n + 1))

end

end A225821.P12067905610061970860

namespace A225821

/-- `gcd(∏{p}[n+1, #]², A176591(n+1))` -/
def P12067905610061970860.Spec : Prop :=
  ∀ n, (P12067905610061970860.a n : ℤ) = A225821 (n + 1)

end A225821

/-! ## A225821.P11433924628341408989

`gcd(A014681(n), A176591(A014681(n)))`
-/

namespace A225821.P11433924628341408989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014681 n) (A176591 (A014681 n).toNat)

end

end A225821.P11433924628341408989

namespace A225821

/-- `gcd(A014681(n), A176591(A014681(n)))` -/
def P11433924628341408989.Spec : Prop :=
  ∀ n, (P11433924628341408989.a n : ℤ) = A225821 (n + 1)

end A225821

/-! ## A225821.P5488495732803287612

`gcd(A050932(n+1), A309132(2*(n+1)))`
-/

namespace A225821.P5488495732803287612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050932 (n + 1)) (A309132 (2 * (n + 1)))

end

end A225821.P5488495732803287612

namespace A225821

/-- `gcd(A050932(n+1), A309132(2*(n+1)))` -/
def P5488495732803287612.Spec : Prop :=
  ∀ n, (P5488495732803287612.a n : ℤ) = A225821 (n + 1)

end A225821

/-! ## A225821.P2518525529182801128

`gcd(A007947(n+1), A172282(n+1))`
-/

namespace A225821.P2518525529182801128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007947 (n + 1)) (A172282 (n + 1))

end

end A225821.P2518525529182801128

namespace A225821

/-- `gcd(A007947(n+1), A172282(n+1))` -/
def P2518525529182801128.Spec : Prop :=
  ∀ n, (P2518525529182801128.a n : ℤ) = A225821 (n + 1)

end A225821

/-! ## A225821.P7924060945867297943

`gcd(1-A004442(n+1), A176289(n+1))`
-/

namespace A225821.P7924060945867297943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A004442 (n + 1)) (A176289 (n + 1))

end

end A225821.P7924060945867297943

namespace A225821

/-- `gcd(1-A004442(n+1), A176289(n+1))` -/
def P7924060945867297943.Spec : Prop :=
  ∀ n, (P7924060945867297943.a n : ℤ) = A225821 (n + 1)

end A225821

/-! ## A225821.P17356905972910417892

`∏{p}[A193267(n+1), #]`
-/

namespace A225821.P17356905972910417892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193267 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A225821.P17356905972910417892

namespace A225821

/-- `∏{p}[A193267(n+1), #]` -/
def P17356905972910417892.Spec : Prop :=
  ∀ n, (P17356905972910417892.a n : ℤ) = A225821 (n + 1)

end A225821

/-! ## A225821.P16263438517399408204

`A007947(A193267(n+1))`
-/

namespace A225821.P16263438517399408204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A193267 (n + 1)).toNat

end

end A225821.P16263438517399408204

namespace A225821

/-- `A007947(A193267(n+1))` -/
def P16263438517399408204.Spec : Prop :=
  ∀ n, P16263438517399408204.a n = A225821 (n + 1)

end A225821

/-! ## A225821.P2853504470251119646

`gcd(A144845(n), A193267(n+1))`
-/

namespace A225821.P2853504470251119646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A144845 n) (A193267 (n + 1))

end

end A225821.P2853504470251119646

namespace A225821

/-- `gcd(A144845(n), A193267(n+1))` -/
def P2853504470251119646.Spec : Prop :=
  ∀ n, (P2853504470251119646.a n : ℤ) = A225821 (n + 1)

end A225821

/-! ## A225821.P15856410253096555047

`A007947((n+1)/A300330(n+1))`
-/

namespace A225821.P15856410253096555047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A300330 (n + 1) : ℚ))).toNat

end

end A225821.P15856410253096555047

namespace A225821

/-- `A007947((n+1)/A300330(n+1))` -/
def P15856410253096555047.Spec : Prop :=
  ∀ n, P15856410253096555047.a n = A225821 (n + 1)

end A225821

/-! ## A225821.P5888374663729321780

`gcd(2*A038572(n+1), A166120(n+2))`
-/

namespace A225821.P5888374663729321780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A038572 (n + 1)) (A166120 (n + 2))

end

end A225821.P5888374663729321780

namespace A225821

/-- `gcd(2*A038572(n+1), A166120(n+2))` -/
def P5888374663729321780.Spec : Prop :=
  ∀ n, (P5888374663729321780.a n : ℤ) = A225821 (n + 1)

end A225821

/-! ## A225821.P8181430811899543944

`gcd(A099985(n+1), A339100(n+1))`
-/

namespace A225821.P8181430811899543944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099985 (n + 1)) (A339100 (n + 1))

end

end A225821.P8181430811899543944

namespace A225821

/-- `gcd(A099985(n+1), A339100(n+1))` -/
def P8181430811899543944.Spec : Prop :=
  ∀ n, (P8181430811899543944.a n : ℤ) = A225821 (n + 1)

end A225821

/-! ## A225821.P8250549798424866798

`gcd(A172282(n+1)², A334085(2*(n+1)))`
-/

namespace A225821.P8250549798424866798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A172282 (n + 1) ^ 2) (A334085 (2 * (n + 1)))

end

end A225821.P8250549798424866798

namespace A225821

/-- `gcd(A172282(n+1)², A334085(2*(n+1)))` -/
def P8250549798424866798.Spec : Prop :=
  ∀ n, (P8250549798424866798.a n : ℤ) = A225821 (n + 1)

end A225821

/-!
# A225822: Lesser of adjacent odd numbers with different parity of binary weight and both isolated from odd numbers of same parity of binary weight.

The programs for A225822, the canonical program `A225822.P16967575723394986569` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225822 has offset 1).

The definition of A225822 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131323, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A225822.P16967575723394986569

`2*A131323(n+1)+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A225822

/-- `2*A131323(n+1)+1` -/
def P16967575723394986569.Spec : Prop :=
  ∀ n, P16967575723394986569.a n = A225822 (n + 1)

theorem P16967575723394986569.correct : P16967575723394986569.Spec := by
  intro n
  simp only [A225822, Nat.add_sub_cancel]

end A225822

/-! ## A225822.P7471570046430775212

`4*A079523(n+1)+3`
-/

namespace A225822.P7471570046430775212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A079523 (n + 1) + 3

end

end A225822.P7471570046430775212

namespace A225822

/-- `4*A079523(n+1)+3` -/
def P7471570046430775212.Spec : Prop :=
  ∀ n, P7471570046430775212.a n = A225822 (n + 1)

theorem P7471570046430775212.correct : P7471570046430775212.Spec := by
  intro n
  simp only [A225822, Nat.add_sub_cancel, A225822.P7471570046430775212.a, A225822.P16967575723394986569.a, A079523, A079523.P16371928625451652770.a, A131323, A131323.P11558536358663034912.a, A081706, A081706.P2549860807253607026.f1, A081706.P2549860807253607026.f2, A081706.P2549860807253607026.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A225822

/-! ## A225822.P2048591052697951998

`8*eq[1, and(n, -n)%3]-1`
-/

namespace A225822.P2048591052697951998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n : ℤ) (-(n : ℤ))) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A225822.P2048591052697951998

namespace A225822

/-- `8*eq[1, and(n, -n)%3]-1` -/
def P2048591052697951998.Spec : Prop :=
  ∀ n, P2048591052697951998.a n = A225822 (n + 1)

end A225822

/-! ## A225822.P18318185801850442378

`4*eq[0, xor(n, n-1)%3]-1`
-/

namespace A225822.P18318185801850442378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A225822.P18318185801850442378

namespace A225822

/-- `4*eq[0, xor(n, n-1)%3]-1` -/
def P18318185801850442378.Spec : Prop :=
  ∀ n, P18318185801850442378.a n = A225822 (n + 1)

end A225822

/-! ## A225822.P11186683133450082960

`4*lt[(-(2*n))^val(n+1, 2), 0]+3`
-/

namespace A225822.P11186683133450082960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(2 * n : ℤ)) ^ SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 3

end

end A225822.P11186683133450082960

namespace A225822

/-- `4*lt[(-(2*n))^val(n+1, 2), 0]+3` -/
def P11186683133450082960.Spec : Prop :=
  ∀ n, (P11186683133450082960.a n : ℤ) = A225822 (n + 1)

end A225822

/-! ## A225822.P687102080542136009

`2*(4*eq[0, val(n+1, 2)%2]+3)+1`
-/

namespace A225822.P687102080542136009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (4 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 3) + 1

end

end A225822.P687102080542136009

namespace A225822

/-- `2*(4*eq[0, val(n+1, 2)%2]+3)+1` -/
def P687102080542136009.Spec : Prop :=
  ∀ n, (P687102080542136009.a n : ℤ) = A225822 (n + 1)

end A225822

/-! ## A225822.P8900506327321967420

`2*A108269(n+1)-1`
-/

namespace A225822.P8900506327321967420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108269 (n + 1) - 1

end

end A225822.P8900506327321967420

namespace A225822

/-- `2*A108269(n+1)-1` -/
def P8900506327321967420.Spec : Prop :=
  ∀ n, P8900506327321967420.a n = A225822 (n + 1)

end A225822

/-! ## A225822.P1026938175914734189

`4*A036554(n+1)-1`
-/

namespace A225822.P1026938175914734189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A036554 (n + 1) - 1

end

end A225822.P1026938175914734189

namespace A225822

/-- `4*A036554(n+1)-1` -/
def P1026938175914734189.Spec : Prop :=
  ∀ n, P1026938175914734189.a n = A225822 (n + 1)

end A225822

/-! ## A225822.P5133895326289751212

`2*A249034(n+1)-3`
-/

namespace A225822.P5133895326289751212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A249034 (n + 1) - 3

end

end A225822.P5133895326289751212

namespace A225822

/-- `2*A249034(n+1)-3` -/
def P5133895326289751212.Spec : Prop :=
  ∀ n, P5133895326289751212.a n = A225822 (n + 1)

end A225822

/-! ## A225822.P374490841150330293

`4*A072939(n+1)-5`
-/

namespace A225822.P374490841150330293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A072939 (n + 1) - 5

end

end A225822.P374490841150330293

namespace A225822

/-- `4*A072939(n+1)-5` -/
def P374490841150330293.Spec : Prop :=
  ∀ n, P374490841150330293.a n = A225822 (n + 1)

end A225822

/-! ## A225822.P2349940376364592501

`2*4*A003159(n+1)-1`
-/

namespace A225822.P2349940376364592501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (4 * A003159 (n + 1)) - 1

end

end A225822.P2349940376364592501

namespace A225822

/-- `2*4*A003159(n+1)-1` -/
def P2349940376364592501.Spec : Prop :=
  ∀ n, P2349940376364592501.a n = A225822 (n + 1)

end A225822

/-! ## A225822.P981124951817034911

`4*eq[3, A020639(xor(n, n+1))]+3`
-/

namespace A225822.P981124951817034911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.xor n (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A225822.P981124951817034911

namespace A225822

/-- `4*eq[3, A020639(xor(n, n+1))]+3` -/
def P981124951817034911.Spec : Prop :=
  ∀ n, (P981124951817034911.a n : ℤ) = A225822 (n + 1)

end A225822

/-! ## A225822.P711462736070558354

`A234648(n+1)+A033999(n)`
-/

namespace A225822.P711462736070558354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234648 (n + 1) + A033999 n

end

end A225822.P711462736070558354

namespace A225822

/-- `A234648(n+1)+A033999(n)` -/
def P711462736070558354.Spec : Prop :=
  ∀ n, P711462736070558354.a n = A225822 (n + 1)

theorem P711462736070558354.correct : P711462736070558354.Spec := by
  intro n
  simp only [A225822, Nat.add_sub_cancel, A225822.P711462736070558354.a, A225822.P16967575723394986569.a, A033999, A033999.P17703899380244199787.a, A131323, A131323.P11558536358663034912.a, A234648, A234648.P5813461578857952792.a, A079523, A079523.P16371928625451652770.a, A081706, A081706.P2549860807253607026.f1, A081706.P2549860807253607026.f2, A081706.P2549860807253607026.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A225822

/-! ## A225822.P6099946468304512566

`A131323(n+1)+A108269(n+1)`
-/

namespace A225822.P6099946468304512566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131323 (n + 1) + A108269 (n + 1)

end

end A225822.P6099946468304512566

namespace A225822

/-- `A131323(n+1)+A108269(n+1)` -/
def P6099946468304512566.Spec : Prop :=
  ∀ n, P6099946468304512566.a n = A225822 (n + 1)

end A225822

/-! ## A225822.P13170724819599983941

`A036554(n+1)+A131323(n+1)+A036554(n+1)`
-/

namespace A225822.P13170724819599983941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1) + (A131323 (n + 1) + A036554 (n + 1))

end

end A225822.P13170724819599983941

namespace A225822

/-- `A036554(n+1)+A131323(n+1)+A036554(n+1)` -/
def P13170724819599983941.Spec : Prop :=
  ∀ n, P13170724819599983941.a n = A225822 (n + 1)

end A225822

/-! ## A225822.P4954078707042894293

`A004771(A121539(n+1))`
-/

namespace A225822.P4954078707042894293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 (A121539 (n + 1)).toNat

end

end A225822.P4954078707042894293

namespace A225822

/-- `A004771(A121539(n+1))` -/
def P4954078707042894293.Spec : Prop :=
  ∀ n, P4954078707042894293.a n = A225822 (n + 1)

end A225822

/-! ## A225822.P18256055122762427515

`A133655(A003159(n+1))`
-/

namespace A225822.P18256055122762427515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133655 (A003159 (n + 1)).toNat

end

end A225822.P18256055122762427515

namespace A225822

/-- `A133655(A003159(n+1))` -/
def P18256055122762427515.Spec : Prop :=
  ∀ n, P18256055122762427515.a n = A225822 (n + 1)

end A225822

/-! ## A225822.P12069274495637517508

`2*A081706(2*(n+1))+1`
-/

namespace A225822.P12069274495637517508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081706 (2 * (n + 1)) + 1

end

end A225822.P12069274495637517508

namespace A225822

/-- `2*A081706(2*(n+1))+1` -/
def P12069274495637517508.Spec : Prop :=
  ∀ n, P12069274495637517508.a n = A225822 (n + 1)

end A225822

/-! ## A225822.P18406097741494138855

`2*A344346(2*n+1)+1`
-/

namespace A225822.P18406097741494138855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A344346 (2 * n + 1) + 1

end

end A225822.P18406097741494138855

namespace A225822

/-- `2*A344346(2*n+1)+1` -/
def P18406097741494138855.Spec : Prop :=
  ∀ n, P18406097741494138855.a n = A225822 (n + 1)

end A225822

/-!
# A225824: The number of increasing rooted identity trees.

The programs for A225824, there is no canonical definition to state claims against.
-/

/-! ## A225824.P2478912979027990727

`A273943(A032317(n+1)+A032301(n+1))`
-/

namespace A225824.P2478912979027990727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A032317 (n + 1) + A032301 (n + 1)).toNat

end

end A225824.P2478912979027990727

/-! ## A225824.P13317559807019999724

`A014682(A032317(n+1)+A032301(n+1))`
-/

namespace A225824.P13317559807019999724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A032317 (n + 1) + A032301 (n + 1)).toNat

end

end A225824.P13317559807019999724

/-!
# A225825: a(2n)=A001896(n). a(2n+1)=(-1)^n*A110501(n+1).

The programs for A225825, there is no canonical definition to state claims against.
-/

/-! ## A225825.P5612272535469216731

`or(-A226158(n+1), A157779(n))`
-/

namespace A225825.P5612272535469216731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A226158 (n + 1)) (A157779 n)

end

end A225825.P5612272535469216731

/-! ## A225825.P8045330812734227743

`or(1, A157779(n)-A036968(n+1))`
-/

namespace A225825.P8045330812734227743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A157779 n - A036968 (n + 1))

end

end A225825.P8045330812734227743

/-! ## A225825.P17380335097356324908

`A151878(n)+A157779(n)-A036968(n+1)`
-/

namespace A225825.P17380335097356324908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n + (A157779 n - A036968 (n + 1))

end

end A225825.P17380335097356324908

/-! ## A225825.P15004882533140413693

`A027641(n)-xor(A036968(n+1), A239275(n))`
-/

namespace A225825.P15004882533140413693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 n - Int.xor (A036968 (n + 1)) (A239275 n)

end

end A225825.P15004882533140413693

/-! ## A225825.P14137459085861291800

`A027642(n+1)*A157779(n)-A036968(n+1)`
-/

namespace A225825.P14137459085861291800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (n + 1) * A157779 n - A036968 (n + 1)

end

end A225825.P14137459085861291800

/-!
# A225826: Number of binary pattern classes in the (2,n)-rectangular grid: two patterns are in same class if one of them can be obtained by a reflection or 180-degree rotation of the other.

The programs for A225826, the canonical program `A225826.P3665911293802474317` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225826 has offset 0).

The definition of A225826 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A225826.P6786992166603631024

`ogf((1-x-9x^2)/(1-4x-4x^2+16x^3))`
-/

namespace A225826.P6786992166603631024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -9] [1, -4, -4, 16] n

end

end A225826.P6786992166603631024

namespace A225826

/-- `ogf((1-x-9x^2)/(1-4x-4x^2+16x^3))` -/
def P6786992166603631024.Spec : Prop :=
  ∀ n, P6786992166603631024.a n = A225826 n

end A225826

/-! ## A225826.P17478068209280919015

`2^(n-3)*(2^(n+1)-(-1)^n+7)`
-/

namespace A225826.P17478068209280919015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * ((2 ^ (n + 1) : ℤ) - (-1) ^ n + 7 : ℚ)

end

end A225826.P17478068209280919015

namespace A225826

/-- `2^(n-3)*(2^(n+1)-(-1)^n+7)` -/
def P17478068209280919015.Spec : Prop :=
  ∀ n, P17478068209280919015.a n = (A225826 n : ℚ)

theorem P17478068209280919015.correct : P17478068209280919015.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A225826, Nat.add_sub_cancel, A225826.P17478068209280919015.a, A225826.P3665911293802474317.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A225826, Nat.add_sub_cancel, A225826.P17478068209280919015.a, A225826.P3665911293802474317.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A225826

/-! ## A225826.P3665911293802474317

`4*a(n-1)+4*a(n-2)-16*a(n-3)` with `a(0)=1, a(1)=3, a(2)=7`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A225826

/-- `4*a(n-1)+4*a(n-2)-16*a(n-3)` -/
def P3665911293802474317.Spec : Prop :=
  ∀ n, P3665911293802474317.a n = A225826 n

theorem P3665911293802474317.correct : P3665911293802474317.Spec := by
  intro n
  simp only [A225826]

end A225826

/-! ## A225826.P1222094463249729201

`4^(n-1)+2^(n-2)*(3+n%2)`
-/

namespace A225826.P1222094463249729201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * ((3 + n % 2 : ℕ) : ℚ)

end

end A225826.P1222094463249729201

namespace A225826

/-- `4^(n-1)+2^(n-2)*(3+n%2)` -/
def P1222094463249729201.Spec : Prop :=
  ∀ n, P1222094463249729201.a n = (A225826 n : ℚ)

end A225826

/-! ## A225826.P11401994516885211235

`or(ceil(2^(n-1))², A134683(n))`
-/

namespace A225826.P11401994516885211235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ ^ 2) (A134683 n)

end

end A225826.P11401994516885211235

namespace A225826

/-- `or(ceil(2^(n-1))², A134683(n))` -/
def P11401994516885211235.Spec : Prop :=
  ∀ n, P11401994516885211235.a n = A225826 n

end A225826

/-! ## A225826.P18291069916715671140

`A134683(n)+A131577(n)²`
-/

namespace A225826.P18291069916715671140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134683 n + A131577 n ^ 2

end

end A225826.P18291069916715671140

namespace A225826

/-- `A134683(n)+A131577(n)²` -/
def P18291069916715671140.Spec : Prop :=
  ∀ n, P18291069916715671140.a n = A225826 n

end A225826

/-! ## A225826.P8060234785759483524

`A166444(2*n)+A134683(n)`
-/

namespace A225826.P8060234785759483524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (2 * n) + A134683 n

end

end A225826.P8060234785759483524

namespace A225826

/-- `A166444(2*n)+A134683(n)` -/
def P8060234785759483524.Spec : Prop :=
  ∀ n, P8060234785759483524.a n = A225826 n

end A225826

/-! ## A225826.P15240362119672091117

`A134683(n)+A034008(n+1)²`
-/

namespace A225826.P15240362119672091117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134683 n + A034008 (n + 1) ^ 2

end

end A225826.P15240362119672091117

namespace A225826

/-- `A134683(n)+A034008(n+1)²` -/
def P15240362119672091117.Spec : Prop :=
  ∀ n, P15240362119672091117.a n = A225826 n

end A225826

/-! ## A225826.P13672463466161872234

`A134683(n)+(A155559(n)/2)²`
-/

namespace A225826.P13672463466161872234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134683 n : ℚ) + ((A155559 n : ℚ) / 2) ^ 2

end

end A225826.P13672463466161872234

namespace A225826

/-- `A134683(n)+(A155559(n)/2)²` -/
def P13672463466161872234.Spec : Prop :=
  ∀ n, P13672463466161872234.a n = (A225826 n : ℚ)

end A225826

/-! ## A225826.P7269910621934855767

`Δ[A305750(n)+A274232(n)]`
-/

namespace A225826.P7269910621934855767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305750 n + A274232 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A225826.P7269910621934855767

namespace A225826

/-- `Δ[A305750(n)+A274232(n)]` -/
def P7269910621934855767.Spec : Prop :=
  ∀ n, P7269910621934855767.a n = A225826 n

end A225826

/-! ## A225826.P3671883097536157924

`(A032121(n)+A000079(n))/2`
-/

namespace A225826.P3671883097536157924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032121 n + A000079 n : ℚ) / 2

end

end A225826.P3671883097536157924

namespace A225826

/-- `(A032121(n)+A000079(n))/2` -/
def P3671883097536157924.Spec : Prop :=
  ∀ n, P3671883097536157924.a n = (A225826 n : ℚ)

end A225826

/-! ## A225826.P6684987915456502302

`A000302(n)+A134683(n)-A002001(n)`
-/

namespace A225826.P6684987915456502302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n + (A134683 n - A002001 n)

end

end A225826.P6684987915456502302

namespace A225826

/-- `A000302(n)+A134683(n)-A002001(n)` -/
def P6684987915456502302.Spec : Prop :=
  ∀ n, P6684987915456502302.a n = A225826 n

end A225826

/-! ## A225826.P2940032979941712190

`A002001(n)+A134683(n)-A081294(n)`
-/

namespace A225826.P2940032979941712190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002001 n + (A134683 n - A081294 n)

end

end A225826.P2940032979941712190

namespace A225826

/-- `A002001(n)+A134683(n)-A081294(n)` -/
def P2940032979941712190.Spec : Prop :=
  ∀ n, P2940032979941712190.a n = A225826 n

end A225826

/-!
# A225827: Number of binary pattern classes in the (3,n)-rectangular grid: two patterns are in same class if one of them can be obtained by a reflection or 180-degree rotation of the other.

The programs for A225827, the canonical program `A225827.P5634314665313026598` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225827 has offset 0).

The definition of A225827 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A225827.P5634314665313026598

`8*a(n-1)+8*a(n-2)-64*a(n-3)-2^(2*n-3)` with `a(0)=1, a(1)=6, a(2)=24`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A225827

/-- `8*a(n-1)+8*a(n-2)-64*a(n-3)-2^(2*n-3)` -/
def P5634314665313026598.Spec : Prop :=
  ∀ n, P5634314665313026598.a n = (A225827 n : ℚ)

end A225827

/-! ## A225827.P3193436911521001824

`A225910(A167614(n+2))`
-/

namespace A225827.P3193436911521001824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225910 (A167614 (n + 2)).toNat

end

end A225827.P3193436911521001824

namespace A225827

/-- `A225910(A167614(n+2))` -/
def P3193436911521001824.Spec : Prop :=
  ∀ n, P3193436911521001824.a n = A225827 n

end A225827

/-! ## A225827.P1791681832173818794

`A225910(A052905(n)+8)`
-/

namespace A225827.P1791681832173818794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225910 (A052905 n + 8).toNat

end

end A225827.P1791681832173818794

namespace A225827

/-- `A225910(A052905(n)+8)` -/
def P1791681832173818794.Spec : Prop :=
  ∀ n, P1791681832173818794.a n = A225827 n

end A225827

/-! ## A225827.P10121320186639836521

`A225910(A055999(n)+9)`
-/

namespace A225827.P10121320186639836521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225910 (A055999 n + 9).toNat

end

end A225827.P10121320186639836521

namespace A225827

/-- `A225910(A055999(n)+9)` -/
def P10121320186639836521.Spec : Prop :=
  ∀ n, P10121320186639836521.a n = A225827 n

end A225827

/-! ## A225827.P9442547235031700069

`A225910(eq[3, A002262(n)])`
-/

namespace A225827.P9442547235031700069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225910 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225827.P9442547235031700069

namespace A225827

/-- `A225910(eq[3, A002262(n)])` -/
def P9442547235031700069.Spec : Prop :=
  ∀ n, P9442547235031700069.a n = A225827 n

end A225827

/-!
# A225828: Number of binary pattern classes in the (4,n)-rectangular grid: two patterns are in the same class if one of them can be obtained by a reflection or 180-degree rotation of the other.

The programs for A225828, the canonical program `A225828.P2608650927962558385` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225828 has offset 0).

The definition of A225828 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A225828.P18332342229922583140

`ogf((1-6x-100x^2)/(1-16x-16x^2+256x^3))`
-/

namespace A225828.P18332342229922583140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6, -100] [1, -16, -16, 256] n

end

end A225828.P18332342229922583140

namespace A225828

/-- `ogf((1-6x-100x^2)/(1-16x-16x^2+256x^3))` -/
def P18332342229922583140.Spec : Prop :=
  ∀ n, P18332342229922583140.a n = A225828 n

end A225828

/-! ## A225828.P2608650927962558385

`2^(2*n-3)*(2^(2*n+1)-3*(-1)^n+9)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A225828

/-- `2^(2*n-3)*(2^(2*n+1)-3*(-1)^n+9)` -/
def P2608650927962558385.Spec : Prop :=
  ∀ n, P2608650927962558385.a n = (A225828 n : ℚ)

end A225828

/-! ## A225828.P9051290417097918764

`A225910(A155212(n)+12)`
-/

namespace A225828.P9051290417097918764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225910 (A155212 n + 12).toNat

end

end A225828.P9051290417097918764

namespace A225828

/-- `A225910(A155212(n)+12)` -/
def P9051290417097918764.Spec : Prop :=
  ∀ n, P9051290417097918764.a n = A225828 n

end A225828

/-! ## A225828.P10004801317264120198

`A225910(A056000(n)+14)`
-/

namespace A225828.P10004801317264120198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225910 (A056000 n + 14).toNat

end

end A225828.P10004801317264120198

namespace A225828

/-- `A225910(A056000(n)+14)` -/
def P10004801317264120198.Spec : Prop :=
  ∀ n, P10004801317264120198.a n = A225828 n

end A225828

/-! ## A225828.P9349996513980159362

`A225910(A167499(n+3)-1)`
-/

namespace A225828.P9349996513980159362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225910 (A167499 (n + 3) - 1).toNat

end

end A225828.P9349996513980159362

namespace A225828

/-- `A225910(A167499(n+3)-1)` -/
def P9349996513980159362.Spec : Prop :=
  ∀ n, P9349996513980159362.a n = A225828 n

end A225828

/-!
# A225829: Number of binary pattern classes in the (5,n)-rectangular grid: two patterns are in the same class if one of them can be obtained by a reflection or 180-degree rotation of the other.

The programs for A225829, there is no canonical definition to state claims against.
-/

/-! ## A225829.P13364606639972534135

`A225910(A167499(n+4))`
-/

namespace A225829.P13364606639972534135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225910 (A167499 (n + 4)).toNat

end

end A225829.P13364606639972534135

/-! ## A225829.P6728006728306882962

`A225910(A056115(n)+20)`
-/

namespace A225829.P6728006728306882962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225910 (A056115 n + 20).toNat

end

end A225829.P6728006728306882962

/-! ## A225829.P6230455666142833304

`A225910(A052905(n+2)+10)`
-/

namespace A225829.P6230455666142833304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225910 (A052905 (n + 2) + 10).toNat

end

end A225829.P6230455666142833304

/-! ## A225829.P2396659785400814141

`A225910(A055999(n+2)+11)`
-/

namespace A225829.P2396659785400814141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225910 (A055999 (n + 2) + 11).toNat

end

end A225829.P2396659785400814141

/-! ## A225829.P14455919600066987814

`A225910(A056000(n+2)+4)`
-/

namespace A225829.P14455919600066987814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225910 (A056000 (n + 2) + 4).toNat

end

end A225829.P14455919600066987814

/-!
# A225830: Number of binary pattern classes in the (6,n)-rectangular grid: two patterns are in the same class if one of them can be obtained by a reflection or 180-degree rotation of the other.

The programs for A225830, the canonical program `A225830.P12443831888781509650` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225830 has offset 0).

The definition of A225830 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A225830.P12443831888781509650

`8^(n-1)*(2^(3*n+1)-7*(-1)^n+13)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A225830

/-- `8^(n-1)*(2^(3*n+1)-7*(-1)^n+13)` -/
def P12443831888781509650.Spec : Prop :=
  ∀ n, P12443831888781509650.a n = (A225830 n : ℚ)

end A225830

/-! ## A225830.P13440103115717367829

`A225910(eq[6, A002262(n)])`
-/

namespace A225830.P13440103115717367829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225910 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225830.P13440103115717367829

namespace A225830

/-- `A225910(eq[6, A002262(n)])` -/
def P13440103115717367829.Spec : Prop :=
  ∀ n, P13440103115717367829.a n = A225830 n

end A225830

/-! ## A225830.P14219893224625539169

`A225910(A155212(n+2)+14)`
-/

namespace A225830.P14219893224625539169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225910 (A155212 (n + 2) + 14).toNat

end

end A225830.P14219893224625539169

namespace A225830

/-- `A225910(A155212(n+2)+14)` -/
def P14219893224625539169.Spec : Prop :=
  ∀ n, P14219893224625539169.a n = A225830 n

end A225830

/-! ## A225830.P17933605855960938540

`A225910(A056000(n+2)+16)`
-/

namespace A225830.P17933605855960938540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225910 (A056000 (n + 2) + 16).toNat

end

end A225830.P17933605855960938540

namespace A225830

/-- `A225910(A056000(n+2)+16)` -/
def P17933605855960938540.Spec : Prop :=
  ∀ n, P17933605855960938540.a n = A225830 n

end A225830

/-! ## A225830.P8889473835542618476

`A225910(eq[7, A002260(n+1)])`
-/

namespace A225830.P8889473835542618476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225910 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225830.P8889473835542618476

namespace A225830

/-- `A225910(eq[7, A002260(n+1)])` -/
def P8889473835542618476.Spec : Prop :=
  ∀ n, P8889473835542618476.a n = A225830 n

end A225830

/-!
# A225831: Number of binary pattern classes in the (7,n)-rectangular grid: two patterns are in the same class if one of them can be obtained by a reflection or 180-degree rotation of the other.

The programs for A225831, there is no canonical definition to state claims against.
-/

/-! ## A225831.P12443960293429727126

`A225910(eq[7, A002262(n)])`
-/

namespace A225831.P12443960293429727126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225910 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225831.P12443960293429727126

/-! ## A225831.P5420544782540051872

`A225910(eq[8, A002260(n+1)])`
-/

namespace A225831.P5420544782540051872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225910 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225831.P5420544782540051872

/-! ## A225831.P11464692861869169748

`A225910(A155212(n+4))`
-/

namespace A225831.P11464692861869169748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225910 (A155212 (n + 4)).toNat

end

end A225831.P11464692861869169748

/-! ## A225831.P2173370535333642944

`A225910(eq[7, A025581(n)])`
-/

namespace A225831.P2173370535333642944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225910 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225831.P2173370535333642944

/-! ## A225831.P10272976861671093059

`A225910(eq[8, A004736(n+1)])`
-/

namespace A225831.P10272976861671093059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225910 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225831.P10272976861671093059

/-!
# A225832: Number of binary pattern classes in the (8,n)-rectangular grid: two patterns are in the same class if one of them can be obtained by a reflection or 180-degree rotation of the other.

The programs for A225832, there is no canonical definition to state claims against.
-/

/-! ## A225832.P10782100098576597640

`A225910(eq[8, A002262(n)])`
-/

namespace A225832.P10782100098576597640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225910 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225832.P10782100098576597640

/-! ## A225832.P18303051459352769974

`A225910(eq[9, A002260(n+1)])`
-/

namespace A225832.P18303051459352769974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225910 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225832.P18303051459352769974

/-! ## A225832.P11861269361063526659

`A225910(eq[7, A116598(n)])`
-/

namespace A225832.P11861269361063526659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225910 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225832.P11861269361063526659

/-! ## A225832.P8001141296253761446

`A225910(eq[8, A025581(n)])`
-/

namespace A225832.P8001141296253761446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225910 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225832.P8001141296253761446

/-! ## A225832.P11377192294587674894

`A225910(eq[9, A004736(n+1)])`
-/

namespace A225832.P11377192294587674894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225910 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225832.P11377192294587674894

/-!
# A225833: Number of binary pattern classes in the (9,n)-rectangular grid: two patterns are in the same class if one of them can be obtained by a reflection or 180-degree rotation of the other.

The programs for A225833, there is no canonical definition to state claims against.
-/

/-! ## A225833.P4109377645442264325

`A225910(eq[9, A002262(n)])`
-/

namespace A225833.P4109377645442264325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225910 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225833.P4109377645442264325

/-! ## A225833.P13953164479365678521

`A225910(eq[10, A002260(n+1)])`
-/

namespace A225833.P13953164479365678521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225910 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225833.P13953164479365678521

/-! ## A225833.P14563459294961486459

`A225910(A056000(n+6))`
-/

namespace A225833.P14563459294961486459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225910 (A056000 (n + 6)).toNat

end

end A225833.P14563459294961486459

/-! ## A225833.P13096705119760567017

`A225910(eq[9, A025581(n)])`
-/

namespace A225833.P13096705119760567017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225910 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225833.P13096705119760567017

/-! ## A225833.P406688314563530233

`A225910(eq[10, A004736(n+1)])`
-/

namespace A225833.P406688314563530233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225910 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225833.P406688314563530233

/-!
# A225834: Number of binary pattern classes in the (10,n)-rectangular grid: two patterns are in the same class if one of them can be obtained by a reflection or 180-degree rotation of the other.

The programs for A225834, there is no canonical definition to state claims against.
-/

/-! ## A225834.P1260374314330592756

`A225910(eq[11, A002260(n+1)])`
-/

namespace A225834.P1260374314330592756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225910 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225834.P1260374314330592756

/-! ## A225834.P5210655773278753970

`A225910(eq[10, A025581(n)])`
-/

namespace A225834.P5210655773278753970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225910 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225834.P5210655773278753970

/-!
# A225836: Numbers of form 2^j*(4k+1), j >= 0, k >= 1.

The programs for A225836, the canonical program `A225836.P17130056112689041821` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225836 has offset 1).

The definition of A225836 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225836.P17130056112689041821

`lt[1, A093178(A103391(n+1)-1)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A225836

/-- `lt[1, A093178(A103391(n+1)-1)]` -/
def P17130056112689041821.Spec : Prop :=
  ∀ n, (P17130056112689041821.a n : ℤ) = A225836 (n + 1)

theorem P17130056112689041821.correct : P17130056112689041821.Spec := by
  intro n
  simp only [A225836, Nat.add_sub_cancel]

end A225836

/-! ## A225836.P11999357762383931836

`A091072(comp[A033921(n)]+1)`
-/

namespace A225836.P11999357762383931836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033921 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091072 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A225836.P11999357762383931836

namespace A225836

/-- `A091072(comp[A033921(n)]+1)` -/
def P11999357762383931836.Spec : Prop :=
  ∀ n, P11999357762383931836.a n = A225836 (n + 1)

end A225836

/-! ## A225836.P12618200425507345401

`A091072(A057716(n+1)+1)`
-/

namespace A225836.P12618200425507345401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091072 (A057716 (n + 1) + 1).toNat

end

end A225836.P12618200425507345401

namespace A225836

/-- `A091072(A057716(n+1)+1)` -/
def P12618200425507345401.Spec : Prop :=
  ∀ n, P12618200425507345401.a n = A225836 (n + 1)

end A225836

/-! ## A225836.P6478436873244515923

`A091072(A138591(n+2)+1)`
-/

namespace A225836.P6478436873244515923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091072 (A138591 (n + 2) + 1).toNat

end

end A225836.P6478436873244515923

namespace A225836

/-- `A091072(A138591(n+2)+1)` -/
def P6478436873244515923.Spec : Prop :=
  ∀ n, P6478436873244515923.a n = A225836 (n + 1)

end A225836

/-! ## A225836.P2463732759164152349

`filter[A091072(n+1), A347523(#)]`
-/

namespace A225836.P2463732759164152349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A225836.P2463732759164152349

namespace A225836

/-- `filter[A091072(n+1), A347523(#)]` -/
def P2463732759164152349.Spec : Prop :=
  ∀ n, P2463732759164152349.a n = A225836 (n + 1)

end A225836

/-! ## A225836.P581973844658656089

`A091072(comp[A048656(n+1)-2]+3)`
-/

namespace A225836.P581973844658656089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048656 (n + 1) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091072 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 3)

end

end A225836.P581973844658656089

namespace A225836

/-- `A091072(comp[A048656(n+1)-2]+3)` -/
def P581973844658656089.Spec : Prop :=
  ∀ n, P581973844658656089.a n = A225836 (n + 1)

end A225836

/-! ## A225836.P15042250515821259406

`lt[0, A322018(A322016(n))]`
-/

namespace A225836.P15042250515821259406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322018 (A322016 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A225836.P15042250515821259406

namespace A225836

/-- `lt[0, A322018(A322016(n))]` -/
def P15042250515821259406.Spec : Prop :=
  ∀ n, (P15042250515821259406.a n : ℤ) = A225836 (n + 1)

end A225836

/-! ## A225836.P16254994348887998275

`eq[A089309(n), A293668(n)]`
-/

namespace A225836.P16254994348887998275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293668 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225836.P16254994348887998275

namespace A225836

/-- `eq[A089309(n), A293668(n)]` -/
def P16254994348887998275.Spec : Prop :=
  ∀ n, (P16254994348887998275.a n : ℤ) = A225836 (n + 1)

end A225836

/-! ## A225836.P1683772842483525022

`eq[A089309(n), A347523(n)]`
-/

namespace A225836.P1683772842483525022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347523 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225836.P1683772842483525022

namespace A225836

/-- `eq[A089309(n), A347523(n)]` -/
def P1683772842483525022.Spec : Prop :=
  ∀ n, (P1683772842483525022.a n : ℤ) = A225836 (n + 1)

end A225836

/-! ## A225836.P18300156825837946160

`eq[A089309(n), A369028(n)]`
-/

namespace A225836.P18300156825837946160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225836.P18300156825837946160

namespace A225836

/-- `eq[A089309(n), A369028(n)]` -/
def P18300156825837946160.Spec : Prop :=
  ∀ n, (P18300156825837946160.a n : ℤ) = A225836 (n + 1)

end A225836

/-! ## A225836.P17127389789260751799

`∩[A091072(n+1), A267312(n+1)]`
-/

namespace A225836.P17127389789260751799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225836.P17127389789260751799

namespace A225836

/-- `∩[A091072(n+1), A267312(n+1)]` -/
def P17127389789260751799.Spec : Prop :=
  ∀ n, (P17127389789260751799.a n : ℤ) = A225836 (n + 1)

end A225836

/-! ## A225836.P409753703677832270

`∩[A091072(n+1), A391250(n+1)]`
-/

namespace A225836.P409753703677832270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225836.P409753703677832270

namespace A225836

/-- `∩[A091072(n+1), A391250(n+1)]` -/
def P409753703677832270.Spec : Prop :=
  ∀ n, (P409753703677832270.a n : ℤ) = A225836 (n + 1)

end A225836

/-! ## A225836.P14624190360101156292

`∩[A091072(n+1), A101082(n+1)]`
-/

namespace A225836.P14624190360101156292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225836.P14624190360101156292

namespace A225836

/-- `∩[A091072(n+1), A101082(n+1)]` -/
def P14624190360101156292.Spec : Prop :=
  ∀ n, (P14624190360101156292.a n : ℤ) = A225836 (n + 1)

end A225836

/-! ## A225836.P13546782146034228649

`∩[A091072(n+1), A116451(n)]`
-/

namespace A225836.P13546782146034228649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116451 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225836.P13546782146034228649

namespace A225836

/-- `∩[A091072(n+1), A116451(n)]` -/
def P13546782146034228649.Spec : Prop :=
  ∀ n, (P13546782146034228649.a n : ℤ) = A225836 (n + 1)

end A225836

/-! ## A225836.P13494487371353955727

`eq[1, A019426(A025480(n))]+1`
-/

namespace A225836.P13494487371353955727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A025480 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A225836.P13494487371353955727

namespace A225836

/-- `eq[1, A019426(A025480(n))]+1` -/
def P13494487371353955727.Spec : Prop :=
  ∀ n, (P13494487371353955727.a n : ℤ) = A225836 (n + 1)

end A225836

/-! ## A225836.P14902578641683960155

`lt[1, A379015(n)]`
-/

namespace A225836.P14902578641683960155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379015 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A225836.P14902578641683960155

namespace A225836

/-- `lt[1, A379015(n)]` -/
def P14902578641683960155.Spec : Prop :=
  ∀ n, (P14902578641683960155.a n : ℤ) = A225836 (n + 1)

end A225836

/-! ## A225836.P16525237875406030508

`lt[5, A204372(n)]`
-/

namespace A225836.P16525237875406030508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204372 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A225836.P16525237875406030508

namespace A225836

/-- `lt[5, A204372(n)]` -/
def P16525237875406030508.Spec : Prop :=
  ∀ n, (P16525237875406030508.a n : ℤ) = A225836 (n + 1)

end A225836

/-! ## A225836.P8582690622998066086

`eq[A112347(n), A293668(n)]`
-/

namespace A225836.P8582690622998066086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112347 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293668 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225836.P8582690622998066086

namespace A225836

/-- `eq[A112347(n), A293668(n)]` -/
def P8582690622998066086.Spec : Prop :=
  ∀ n, (P8582690622998066086.a n : ℤ) = A225836 (n + 1)

end A225836

/-! ## A225836.P17180839131850520066

`eq[A112347(n), A347523(n)]`
-/

namespace A225836.P17180839131850520066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112347 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347523 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225836.P17180839131850520066

namespace A225836

/-- `eq[A112347(n), A347523(n)]` -/
def P17180839131850520066.Spec : Prop :=
  ∀ n, (P17180839131850520066.a n : ℤ) = A225836 (n + 1)

end A225836

/-! ## A225836.P8431515430663991474

`eq[A112347(n), A369028(n)]`
-/

namespace A225836.P8431515430663991474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112347 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225836.P8431515430663991474

namespace A225836

/-- `eq[A112347(n), A369028(n)]` -/
def P8431515430663991474.Spec : Prop :=
  ∀ n, (P8431515430663991474.a n : ℤ) = A225836 (n + 1)

end A225836

/-!
# A225837: Numbers of form 2^i*3^j*(6k+1), i, j, k >= 0.

The programs for A225837, the canonical program `A225837.P15943743665974385746` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225837 has offset 1).

The definition of A225837 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5025 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225837.P14553974694201650511

`comp[A225838(n+1)-1]+1`
-/

namespace A225837.P14553974694201650511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225838 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A225837.P14553974694201650511

namespace A225837

/-- `comp[A225838(n+1)-1]+1` -/
def P14553974694201650511.Spec : Prop :=
  ∀ n, (P14553974694201650511.a n : ℤ) = A225837 (n + 1)

end A225837

/-! ## A225837.P14003670831131224935

`eq[1, A126760(n)%2]`
-/

namespace A225837.P14003670831131224935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126760 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225837.P14003670831131224935

namespace A225837

/-- `eq[1, A126760(n)%2]` -/
def P14003670831131224935.Spec : Prop :=
  ∀ n, (P14003670831131224935.a n : ℤ) = A225837 (n + 1)

end A225837

/-! ## A225837.P2136906206766284166

`eq[0, A059841(A126760(n))]`
-/

namespace A225837.P2136906206766284166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A126760 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225837.P2136906206766284166

namespace A225837

/-- `eq[0, A059841(A126760(n))]` -/
def P2136906206766284166.Spec : Prop :=
  ∀ n, (P2136906206766284166.a n : ℤ) = A225837 (n + 1)

end A225837

/-! ## A225837.P17295413338308131530

`eq[1, A010684(A126760(n)+1)]`
-/

namespace A225837.P17295413338308131530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (A126760 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225837.P17295413338308131530

namespace A225837

/-- `eq[1, A010684(A126760(n)+1)]` -/
def P17295413338308131530.Spec : Prop :=
  ∀ n, (P17295413338308131530.a n : ℤ) = A225837 (n + 1)

end A225837

/-! ## A225837.P4601916446958001791

`lt[A325596(A126760(n)+1), 1]`
-/

namespace A225837.P4601916446958001791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325596 (A126760 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A225837.P4601916446958001791

namespace A225837

/-- `lt[A325596(A126760(n)+1), 1]` -/
def P4601916446958001791.Spec : Prop :=
  ∀ n, (P4601916446958001791.a n : ℤ) = A225837 (n + 1)

end A225837

/-! ## A225837.P7831009466724732256

`lt[A040340(A126760(n))-9, A322027(n+1)]`
-/

namespace A225837.P7831009466724732256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040340 (A126760 n).toNat - 9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322027 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225837.P7831009466724732256

namespace A225837

/-- `lt[A040340(A126760(n))-9, A322027(n+1)]` -/
def P7831009466724732256.Spec : Prop :=
  ∀ n, (P7831009466724732256.a n : ℤ) = A225837 (n + 1)

end A225837

/-! ## A225837.P4111675995264107864

`lt[A008434(2*A126760(n)), 1]`
-/

namespace A225837.P4111675995264107864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008434 (2 * A126760 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A225837.P4111675995264107864

namespace A225837

/-- `lt[A008434(2*A126760(n)), 1]` -/
def P4111675995264107864.Spec : Prop :=
  ∀ n, (P4111675995264107864.a n : ℤ) = A225837 (n + 1)

end A225837

/-! ## A225837.P17709043623217789241

`eq[2, A014695(2*A126760(n))]`
-/

namespace A225837.P17709043623217789241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 (2 * A126760 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225837.P17709043623217789241

namespace A225837

/-- `eq[2, A014695(2*A126760(n))]` -/
def P17709043623217789241.Spec : Prop :=
  ∀ n, (P17709043623217789241.a n : ℤ) = A225837 (n + 1)

end A225837

/-! ## A225837.P3750724769249313864

`eq[2, gcd(2, A126759(n))]`
-/

namespace A225837.P3750724769249313864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A126759 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225837.P3750724769249313864

namespace A225837

/-- `eq[2, gcd(2, A126759(n))]` -/
def P3750724769249313864.Spec : Prop :=
  ∀ n, (P3750724769249313864.a n : ℤ) = A225837 (n + 1)

end A225837

/-! ## A225837.P11907811234676837701

`eq[0, A000035(A126759(n))]`
-/

namespace A225837.P11907811234676837701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A126759 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225837.P11907811234676837701

namespace A225837

/-- `eq[0, A000035(A126759(n))]` -/
def P11907811234676837701.Spec : Prop :=
  ∀ n, (P11907811234676837701.a n : ℤ) = A225837 (n + 1)

end A225837

/-! ## A225837.P8335426629902963458

`eq[1, A040001(A126759(n)+1)]`
-/

namespace A225837.P8335426629902963458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A126759 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225837.P8335426629902963458

namespace A225837

/-- `eq[1, A040001(A126759(n)+1)]` -/
def P8335426629902963458.Spec : Prop :=
  ∀ n, (P8335426629902963458.a n : ℤ) = A225837 (n + 1)

end A225837

/-! ## A225837.P834270643728123427

`eq[1, A115364(A126759(n)+1)]`
-/

namespace A225837.P834270643728123427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115364 (A126759 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225837.P834270643728123427

namespace A225837

/-- `eq[1, A115364(A126759(n)+1)]` -/
def P834270643728123427.Spec : Prop :=
  ∀ n, (P834270643728123427.a n : ℤ) = A225837 (n + 1)

end A225837

/-! ## A225837.P6147363344805353731

`eq[1, A019427(A126759(n)+2)]`
-/

namespace A225837.P6147363344805353731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 (A126759 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225837.P6147363344805353731

namespace A225837

/-- `eq[1, A019427(A126759(n)+2)]` -/
def P6147363344805353731.Spec : Prop :=
  ∀ n, (P6147363344805353731.a n : ℤ) = A225837 (n + 1)

end A225837

/-! ## A225837.P14753863982242636503

`lt[2, A020639(A126759(n)+1)]`
-/

namespace A225837.P14753863982242636503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A126759 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A225837.P14753863982242636503

namespace A225837

/-- `lt[2, A020639(A126759(n)+1)]` -/
def P14753863982242636503.Spec : Prop :=
  ∀ n, (P14753863982242636503.a n : ℤ) = A225837 (n + 1)

end A225837

/-! ## A225837.P5726585310891875928

`eq[2, A133265(A126759(n)+2)]`
-/

namespace A225837.P5726585310891875928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (A126759 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225837.P5726585310891875928

namespace A225837

/-- `eq[2, A133265(A126759(n)+2)]` -/
def P5726585310891875928.Spec : Prop :=
  ∀ n, (P5726585310891875928.a n : ℤ) = A225837 (n + 1)

end A225837

/-! ## A225837.P1218880941649444285

`eq[2, A275365(A126759(n)+2)]`
-/

namespace A225837.P1218880941649444285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275365 (A126759 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225837.P1218880941649444285

namespace A225837

/-- `eq[2, A275365(A126759(n)+2)]` -/
def P1218880941649444285.Spec : Prop :=
  ∀ n, (P1218880941649444285.a n : ℤ) = A225837 (n + 1)

end A225837

/-! ## A225837.P3442411134730004703

`lt[1, A084100(2*A126759(n))]`
-/

namespace A225837.P3442411134730004703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084100 (2 * A126759 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A225837.P3442411134730004703

namespace A225837

/-- `lt[1, A084100(2*A126759(n))]` -/
def P3442411134730004703.Spec : Prop :=
  ∀ n, (P3442411134730004703.a n : ℤ) = A225837 (n + 1)

end A225837

/-! ## A225837.P15943743665974385746

`eq[A189640(n+1), A284948(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A225837

/-- `eq[A189640(n+1), A284948(n+1)]` -/
def P15943743665974385746.Spec : Prop :=
  ∀ n, (P15943743665974385746.a n : ℤ) = A225837 (n + 1)

theorem P15943743665974385746.correct : P15943743665974385746.Spec := by
  intro n
  simp only [A225837, Nat.add_sub_cancel]

end A225837

/-! ## A225837.P14610934078853921216

`eq[A189673(n+1), A285384(n+1)]`
-/

namespace A225837.P14610934078853921216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285384 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225837.P14610934078853921216

namespace A225837

/-- `eq[A189673(n+1), A285384(n+1)]` -/
def P14610934078853921216.Spec : Prop :=
  ∀ n, (P14610934078853921216.a n : ℤ) = A225837 (n + 1)

end A225837

/-! ## A225837.P600417218370949446

`eq[1, and(1, A126760(2*n))]`
-/

namespace A225837.P600417218370949446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A126760 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225837.P600417218370949446

namespace A225837

/-- `eq[1, and(1, A126760(2*n))]` -/
def P600417218370949446.Spec : Prop :=
  ∀ n, (P600417218370949446.a n : ℤ) = A225837 (n + 1)

end A225837

/-!
# A225838: Numbers of form 2^i*3^j*(6k+5), i, j, k >= 0.

The programs for A225838, the canonical program `A225838.P9291105408956679938` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225838 has offset 1).

The definition of A225838 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4974 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225838.P814981463338164748

`eq[1, (A126760(n)-1)%2]`
-/

namespace A225838.P814981463338164748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126760 n - 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225838.P814981463338164748

namespace A225838

/-- `eq[1, (A126760(n)-1)%2]` -/
def P814981463338164748.Spec : Prop :=
  ∀ n, (P814981463338164748.a n : ℤ) = A225838 (n + 1)

end A225838

/-! ## A225838.P8455022375336824519

`lt[A126760(n+1)%2, 1]+1`
-/

namespace A225838.P8455022375336824519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126760 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A225838.P8455022375336824519

namespace A225838

/-- `lt[A126760(n+1)%2, 1]+1` -/
def P8455022375336824519.Spec : Prop :=
  ∀ n, (P8455022375336824519.a n : ℤ) = A225838 (n + 1)

end A225838

/-! ## A225838.P11522323462695738900

`lt[1, A040001(A126760(n))]`
-/

namespace A225838.P11522323462695738900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A126760 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A225838.P11522323462695738900

namespace A225838

/-- `lt[1, A040001(A126760(n))]` -/
def P11522323462695738900.Spec : Prop :=
  ∀ n, (P11522323462695738900.a n : ℤ) = A225838 (n + 1)

end A225838

/-! ## A225838.P6871697854541752650

`lt[1, A325596(A126760(n)+1)]`
-/

namespace A225838.P6871697854541752650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325596 (A126760 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A225838.P6871697854541752650

namespace A225838

/-- `lt[1, A325596(A126760(n)+1)]` -/
def P6871697854541752650.Spec : Prop :=
  ∀ n, (P6871697854541752650.a n : ℤ) = A225838 (n + 1)

end A225838

/-! ## A225838.P10257705823856523841

`eq[1, A010684(A126760(n+1))]+1`
-/

namespace A225838.P10257705823856523841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (A126760 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A225838.P10257705823856523841

namespace A225838

/-- `eq[1, A010684(A126760(n+1))]+1` -/
def P10257705823856523841.Spec : Prop :=
  ∀ n, (P10257705823856523841.a n : ℤ) = A225838 (n + 1)

end A225838

/-! ## A225838.P15225980801771843379

`lt[A001057(A126760(n)), A355943(n+4)]`
-/

namespace A225838.P15225980801771843379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A126760 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355943 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225838.P15225980801771843379

namespace A225838

/-- `lt[A001057(A126760(n)), A355943(n+4)]` -/
def P15225980801771843379.Spec : Prop :=
  ∀ n, (P15225980801771843379.a n : ℤ) = A225838 (n + 1)

end A225838

/-! ## A225838.P8163499913351752992

`lt[1, A008434(2*A126760(n))]`
-/

namespace A225838.P8163499913351752992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008434 (2 * A126760 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A225838.P8163499913351752992

namespace A225838

/-- `lt[1, A008434(2*A126760(n))]` -/
def P8163499913351752992.Spec : Prop :=
  ∀ n, (P8163499913351752992.a n : ℤ) = A225838 (n + 1)

end A225838

/-! ## A225838.P9291105408956679938

`eq[2, A065330(n+1)%3]+1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A225838

/-- `eq[2, A065330(n+1)%3]+1` -/
def P9291105408956679938.Spec : Prop :=
  ∀ n, (P9291105408956679938.a n : ℤ) = A225838 (n + 1)

theorem P9291105408956679938.correct : P9291105408956679938.Spec := by
  intro n
  simp only [A225838, Nat.add_sub_cancel]

end A225838

/-! ## A225838.P5500241153801730234

`lt[1, A019425(A126759(n))]`
-/

namespace A225838.P5500241153801730234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A126759 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A225838.P5500241153801730234

namespace A225838

/-- `lt[1, A019425(A126759(n))]` -/
def P5500241153801730234.Spec : Prop :=
  ∀ n, (P5500241153801730234.a n : ℤ) = A225838 (n + 1)

end A225838

/-! ## A225838.P4394836727213605438

`eq[1, A019427(A126759(n)-1)]`
-/

namespace A225838.P4394836727213605438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 (A126759 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225838.P4394836727213605438

namespace A225838

/-- `eq[1, A019427(A126759(n)-1)]` -/
def P4394836727213605438.Spec : Prop :=
  ∀ n, (P4394836727213605438.a n : ℤ) = A225838 (n + 1)

end A225838

/-! ## A225838.P2847424133622468958

`eq[2, A040001(A126759(n)-1)]`
-/

namespace A225838.P2847424133622468958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A126759 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225838.P2847424133622468958

namespace A225838

/-- `eq[2, A040001(A126759(n)-1)]` -/
def P2847424133622468958.Spec : Prop :=
  ∀ n, (P2847424133622468958.a n : ℤ) = A225838 (n + 1)

end A225838

/-! ## A225838.P5959028743376911546

`eq[A189673(n+1), A284948(n+1)]`
-/

namespace A225838.P5959028743376911546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284948 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225838.P5959028743376911546

namespace A225838

/-- `eq[A189673(n+1), A284948(n+1)]` -/
def P5959028743376911546.Spec : Prop :=
  ∀ n, (P5959028743376911546.a n : ℤ) = A225838 (n + 1)

end A225838

/-! ## A225838.P16181991837260235778

`eq[A189640(n+1), A285384(n+1)]`
-/

namespace A225838.P16181991837260235778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285384 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225838.P16181991837260235778

namespace A225838

/-- `eq[A189640(n+1), A285384(n+1)]` -/
def P16181991837260235778.Spec : Prop :=
  ∀ n, (P16181991837260235778.a n : ℤ) = A225838 (n + 1)

end A225838

/-! ## A225838.P6306876882563908557

`eq[A014695(2*A126760(n)), A057427(n)]`
-/

namespace A225838.P6306876882563908557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 (2 * A126760 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225838.P6306876882563908557

namespace A225838

/-- `eq[A014695(2*A126760(n)), A057427(n)]` -/
def P6306876882563908557.Spec : Prop :=
  ∀ n, (P6306876882563908557.a n : ℤ) = A225838 (n + 1)

end A225838

/-! ## A225838.P7432722597528528544

`eq[2, A205032(A126759(n)²)]`
-/

namespace A225838.P7432722597528528544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205032 (A126759 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225838.P7432722597528528544

namespace A225838

/-- `eq[2, A205032(A126759(n)²)]` -/
def P7432722597528528544.Spec : Prop :=
  ∀ n, (P7432722597528528544.a n : ℤ) = A225838 (n + 1)

end A225838

/-! ## A225838.P3620807444588608605

`lt[1, A008434(A126760(n)²)]`
-/

namespace A225838.P3620807444588608605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008434 (A126760 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A225838.P3620807444588608605

namespace A225838

/-- `lt[1, A008434(A126760(n)²)]` -/
def P3620807444588608605.Spec : Prop :=
  ∀ n, (P3620807444588608605.a n : ℤ) = A225838 (n + 1)

end A225838

/-! ## A225838.P13687560326629720069

`eq[A014695(A126760(n)²), A057427(n)]`
-/

namespace A225838.P13687560326629720069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 (A126760 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225838.P13687560326629720069

namespace A225838

/-- `eq[A014695(A126760(n)²), A057427(n)]` -/
def P13687560326629720069.Spec : Prop :=
  ∀ n, (P13687560326629720069.a n : ℤ) = A225838 (n + 1)

end A225838

/-! ## A225838.P1876353756051239739

`lt[A001057(A126760(n)²), A126760(n)]`
-/

namespace A225838.P1876353756051239739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A126760 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225838.P1876353756051239739

namespace A225838

/-- `lt[A001057(A126760(n)²), A126760(n)]` -/
def P1876353756051239739.Spec : Prop :=
  ∀ n, (P1876353756051239739.a n : ℤ) = A225838 (n + 1)

end A225838

/-!
# A225839: Triangular numbers representable as triangular(m) + triangular(2m).

The programs for A225839, there is no canonical definition to state claims against.
-/

/-! ## A225839.P10404700285614545051

`C(A254627(A042948(n+1)), 2)`
-/

namespace A225839.P10404700285614545051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A254627 (A042948 (n + 1)).toNat).toNat 2

end

end A225839.P10404700285614545051

/-! ## A225839.P1570513088666352872

`C(A254627(A338062(n+1)), 2)`
-/

namespace A225839.P1570513088666352872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A254627 (A338062 (n + 1)).toNat).toNat 2

end

end A225839.P1570513088666352872

/-! ## A225839.P15294342579305399064

`A212673(A190949(n+1))`
-/

namespace A225839.P15294342579305399064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212673 (A190949 (n + 1)).toNat

end

end A225839.P15294342579305399064

/-!
# A225840: Largest number less than n occurring in Collatz trajectory starting with n.

The programs for A225840, there is no canonical definition to state claims against.
-/

/-! ## A225840.P3524183348318867924

`A214614(∑[A159999(n+2)])`
-/

namespace A225840.P3524183348318867924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159999 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214614 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A225840.P3524183348318867924

/-! ## A225840.P10827271091704346644

`A214614(∑[A076228(n+2)+1])`
-/

namespace A225840.P10827271091704346644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076228 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214614 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A225840.P10827271091704346644

/-! ## A225840.P16602872694910560913

`A214614(eq[A057427(n), A214614(n+2)])`
-/

namespace A225840.P16602872694910560913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214614 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214614 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A225840.P16602872694910560913

/-! ## A225840.P8499939708873712658

`A214614(lt[A214614(n+2), A214614(n+1)])`
-/

namespace A225840.P8499939708873712658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214614 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214614 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A225840.P8499939708873712658

/-! ## A225840.P9887987239332052514

`A220237(A186701(n+2)-A213204(n+2))`
-/

namespace A225840.P9887987239332052514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220237 (A186701 (n + 2) - A213204 (n + 2)).toNat

end

end A225840.P9887987239332052514

/-!
# A225841: Numbers n such that the sum of first n primorial numbers is divisible by n.

The programs for A225841, there is no canonical definition to state claims against.
-/

/-! ## A225841.P5417633396632732855

`A101947(2^A037314(n))`
-/

namespace A225841.P5417633396632732855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101947 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A037314 n : ℤ))).toNat

end

end A225841.P5417633396632732855

/-!
# A225843: Integral parts of sums of the reciprocals of the Collatz (3x+1) sequence starting with n.

The programs for A225843, there is no canonical definition to state claims against.
-/

/-! ## A225843.P16007031076889257660

`floor(A225761(n+1)/A225784(n+1))`
-/

namespace A225843.P16007031076889257660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A225761 (n + 1) : ℚ) / (A225784 (n + 1) : ℚ)⌋

end

end A225843.P16007031076889257660

/-! ## A225843.P11130572924755817117

`A071187(A087051((n+1)/2^val(n+1, 2)))`
-/

namespace A225843.P11130572924755817117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071187 (A087051 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat).toNat

end

end A225843.P11130572924755817117

/-! ## A225843.P3359451654541879145

`A020639(A213343(A064989(n+1)))`
-/

namespace A225843.P3359451654541879145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A213343 (A064989 (n + 1)).toNat).toNat

end

end A225843.P3359451654541879145

/-! ## A225843.P17583937109308779911

`A020639(A213343(A250470(n+1)))`
-/

namespace A225843.P17583937109308779911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A213343 (A250470 (n + 1)).toNat).toNat

end

end A225843.P17583937109308779911

/-! ## A225843.P9879979232109382845

`A020639(A001227(n+1)*A333769(2*n+3))`
-/

namespace A225843.P9879979232109382845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001227 (n + 1) * A333769 (2 * n + 3)).toNat

end

end A225843.P9879979232109382845

/-!
# A225846: Denominator of c(n) = 2^(2*n)*(2^(2*n) - 1)/(2*n)!, a coefficient used in the expansion of tan(x) as Sum_{n>=1} c(n)*|Bernoulli(2*n)|*x^(2*n-1).

The programs for A225846, there is no canonical definition to state claims against.
-/

/-! ## A225846.P10907861694812278416

`A349161(∑[ceil(xor(1, n)/4)]!)`
-/

namespace A225846.P10907861694812278416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 n : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349161 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A225846.P10907861694812278416

/-! ## A225846.P791262596889311667

`gcd(∑[4^n*∑[(5/2)^n]], ∏[A124480(n+2)])`
-/

namespace A225846.P791262596889311667
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 : ℚ) / 2) ^ n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℚ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124480 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)) (∏ j ∈ Finset.range (n + 1), f3 j)

end

end A225846.P791262596889311667

/-!
# A225851: For the Collatz (3x+1) iterations starting with a prime number p, a(n) is the smallest p such that the trajectory contains n successive prime numbers.

The programs for A225851, there is no canonical definition to state claims against.
-/

/-! ## A225851.P3005903194703893572

`A161423(or(A005185(n+1), A094587(n)))`
-/

namespace A225851.P3005903194703893572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161423 (Int.lor (A005185 (n + 1)) (A094587 n)).toNat

end

end A225851.P3005903194703893572

/-! ## A225851.P7131278924782083097

`A161423(or(A219607(3*n+1), A248231(n+1)))`
-/

namespace A225851.P7131278924782083097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161423 (Int.lor (A219607 (3 * n + 1)) (A248231 (n + 1))).toNat

end

end A225851.P7131278924782083097

/-! ## A225851.P348011987632873718

`p?[A160552(A089472(n))]`
-/

namespace A225851.P348011987632873718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 (A089472 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225851.P348011987632873718

/-! ## A225851.P10912771094035066290

`A160552(A089472(n+2))`
-/

namespace A225851.P10912771094035066290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 (A089472 (n + 2)).toNat

end

end A225851.P10912771094035066290

/-! ## A225851.P13078743815482599405

`A007970(∏[A088326(n+2)])`
-/

namespace A225851.P13078743815482599405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088326 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007970 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A225851.P13078743815482599405

/-!
# A225852: The number of people required for there to be at least a 50% chance that at least 3 share a birthday in a year with n days.

The programs for A225852, there is no canonical definition to state claims against.
-/

/-! ## A225852.P104709143149758173

`A227177(A020914(n²))+2`
-/

namespace A225852.P104709143149758173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (A020914 (n ^ 2)).toNat + 2

end

end A225852.P104709143149758173

/-! ## A225852.P14949882146353368959

`3-(A262681(n)-A227177(A020914(n²)))`
-/

namespace A225852.P14949882146353368959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (A262681 n - A227177 (A020914 (n ^ 2)).toNat)

end

end A225852.P14949882146353368959

/-! ## A225852.P7446968017755264871

`3-(char[A061601(n)]-A227177(A020914(n²)))`
-/

namespace A225852.P7446968017755264871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A227177 (A020914 (n ^ 2)).toNat)

end

end A225852.P7446968017755264871

/-! ## A225852.P15298180231826261837

`2-(A002262(A000217(n))-A227177(A020914(n²)))`
-/

namespace A225852.P15298180231826261837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A002262 (A000217 n).toNat - A227177 (A020914 (n ^ 2)).toNat)

end

end A225852.P15298180231826261837

/-! ## A225852.P1857823437828663536

`A316843(A008619(∑[A005381(n+1)]))`
-/

namespace A225852.P1857823437828663536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316843 (A008619 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A225852.P1857823437828663536

/-! ## A225852.P5272111153281209923

`A227177(∑[A176423(A226894(n+1))])`
-/

namespace A225852.P5272111153281209923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (A226894 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A225852.P5272111153281209923

/-! ## A225852.P8602490551673239797

`A227177(∑[A189151(n+1)+A078358(n+1)])`
-/

namespace A225852.P8602490551673239797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189151 (n + 1) + A078358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A225852.P8602490551673239797

/-!
# A225853: Expansion of phi(x) / f(-x^4) in powers of x where phi(), f() are Ramanujan theta functions.

The programs for A225853, there is no canonical definition to state claims against.
-/

/-! ## A225853.P17598855872821337388

`(-1)^n*A143161(n)`
-/

namespace A225853.P17598855872821337388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A143161 n

end

end A225853.P17598855872821337388

/-! ## A225853.P92391188821958218

`abs(A143161(n))`
-/

namespace A225853.P92391188821958218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143161 n|

end

end A225853.P92391188821958218

/-! ## A225853.P15387681704904404196

`A143161(n)*A219977(n)`
-/

namespace A225853.P15387681704904404196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143161 n * A219977 n

end

end A225853.P15387681704904404196

/-! ## A225853.P5719510582741392421

`gcd(A000038(n), A143161(n))`
-/

namespace A225853.P5719510582741392421
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A143161 n)

end

end A225853.P5719510582741392421

/-! ## A225853.P2462818894375907373

`lcm(A000034(n), A143161(n))`
-/

namespace A225853.P2462818894375907373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A143161 n)

end

end A225853.P2462818894375907373

/-! ## A225853.P6803536086309323373

`A143161(n)*A309873(n+1)`
-/

namespace A225853.P6803536086309323373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143161 n * A309873 (n + 1)

end

end A225853.P6803536086309323373

/-! ## A225853.P15825261686187384155

`sqrt(A143161(n)*A143161(n%(n+1)))`
-/

namespace A225853.P15825261686187384155
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A143161 n * A143161 (n % (n + 1)) : ℝ)

end

end A225853.P15825261686187384155

/-!
# A225854: Frequency of prime numbers between consecutive partial sums of primes.

The programs for A225854, the canonical program `A225854.P1162875142972506100` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225854 has offset 1).

The definition of A225854 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225854.P1162875142972506100

`Δ[A061568(abs(1-n)+1)%A002522(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A225854

/-- `Δ[A061568(abs(1-n)+1)%A002522(n)]` -/
def P1162875142972506100.Spec : Prop :=
  ∀ n, P1162875142972506100.a n = A225854 (n + 1)

theorem P1162875142972506100.correct : P1162875142972506100.Spec := by
  intro n
  simp only [A225854, Nat.add_sub_cancel]

end A225854

/-! ## A225854.P14450406051700599320

`Δ[A061568(A028310(n))+A040000(n)]`
-/

namespace A225854.P14450406051700599320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061568 (A028310 n).toNat + A040000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A225854.P14450406051700599320

namespace A225854

/-- `Δ[A061568(A028310(n))+A040000(n)]` -/
def P14450406051700599320.Spec : Prop :=
  ∀ n, P14450406051700599320.a n = A225854 (n + 1)

end A225854

/-! ## A225854.P10937518111953336346

`A061568(n+1)-A000720(record[A160793(n+1)])`
-/

namespace A225854.P10937518111953336346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061568 (n + 1) - A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A225854.P10937518111953336346

namespace A225854

/-- `A061568(n+1)-A000720(record[A160793(n+1)])` -/
def P10937518111953336346.Spec : Prop :=
  ∀ n, P10937518111953336346.a n = A225854 (n + 1)

end A225854

/-! ## A225854.P14957452969867282262

`Δ[A000720(record[A160793(n+1)])]`
-/

namespace A225854.P14957452969867282262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160793 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A225854.P14957452969867282262

namespace A225854

/-- `Δ[A000720(record[A160793(n+1)])]` -/
def P14957452969867282262.Spec : Prop :=
  ∀ n, P14957452969867282262.a n = A225854 (n + 1)

end A225854

/-! ## A225854.P11272005897111479097

`Δ[A000720(A007504(n)+(n+1)%2)]`
-/

namespace A225854.P11272005897111479097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A007504 n + (((n + 1) % 2 : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A225854.P11272005897111479097

namespace A225854

/-- `Δ[A000720(A007504(n)+(n+1)%2)]` -/
def P11272005897111479097.Spec : Prop :=
  ∀ n, P11272005897111479097.a n = A225854 (n + 1)

end A225854

/-! ## A225854.P3705349854784788258

`Δ[A000720(A007504(n)-and(1, n)+1)]`
-/

namespace A225854.P3705349854784788258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A007504 n - (Nat.land 1 n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A225854.P3705349854784788258

namespace A225854

/-- `Δ[A000720(A007504(n)-and(1, n)+1)]` -/
def P3705349854784788258.Spec : Prop :=
  ∀ n, P3705349854784788258.a n = A225854 (n + 1)

end A225854

/-! ## A225854.P12498426897819878812

`Δ[A000720(A151800(A007504(n)))]`
-/

namespace A225854.P12498426897819878812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A151800 (A007504 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A225854.P12498426897819878812

namespace A225854

/-- `Δ[A000720(A151800(A007504(n)))]` -/
def P12498426897819878812.Spec : Prop :=
  ∀ n, P12498426897819878812.a n = A225854 (n + 1)

end A225854

/-! ## A225854.P5446432983698163594

`Δ[A000720(A007504(n)+A000007(n))]`
-/

namespace A225854.P5446432983698163594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A007504 n + A000007 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A225854.P5446432983698163594

namespace A225854

/-- `Δ[A000720(A007504(n)+A000007(n))]` -/
def P5446432983698163594.Spec : Prop :=
  ∀ n, P5446432983698163594.a n = A225854 (n + 1)

end A225854

/-! ## A225854.P14783818801702716313

`Δ[A000720(A007504(n)+A005369(n))]`
-/

namespace A225854.P14783818801702716313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A007504 n + A005369 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A225854.P14783818801702716313

namespace A225854

/-- `Δ[A000720(A007504(n)+A005369(n))]` -/
def P14783818801702716313.Spec : Prop :=
  ∀ n, P14783818801702716313.a n = A225854 (n + 1)

end A225854

/-! ## A225854.P3218150988572168429

`Δ[A000720(A059841(n)+A007504(n))]`
-/

namespace A225854.P3218150988572168429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A059841 n + A007504 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A225854.P3218150988572168429

namespace A225854

/-- `Δ[A000720(A059841(n)+A007504(n))]` -/
def P3218150988572168429.Spec : Prop :=
  ∀ n, P3218150988572168429.a n = A225854 (n + 1)

end A225854

/-! ## A225854.P8930359381681005208

`Δ[A000720(A112316(n)+A007504(n))]`
-/

namespace A225854.P8930359381681005208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A112316 n + A007504 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A225854.P8930359381681005208

namespace A225854

/-- `Δ[A000720(A112316(n)+A007504(n))]` -/
def P8930359381681005208.Spec : Prop :=
  ∀ n, P8930359381681005208.a n = A225854 (n + 1)

end A225854

/-!
# A225856: Primes p such that p^2 + 1 is squarefree.

The programs for A225856, the canonical program `A225856.P11800117262539165010` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225856 has offset 1).

The definition of A225856 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225856.P11800117262539165010

`floor(sqrt(sqrt(A225892(n+1))))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A225856

/-- `floor(sqrt(sqrt(A225892(n+1))))` -/
def P11800117262539165010.Spec : Prop :=
  ∀ n, P11800117262539165010.a n = A225856 (n + 1)

theorem P11800117262539165010.correct : P11800117262539165010.Spec := by
  intro n
  simp only [A225856, Nat.add_sub_cancel]

end A225856

/-! ## A225856.P10834813129144267011

`p?[A080401(n+1)]`
-/

namespace A225856.P10834813129144267011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225856.P10834813129144267011

namespace A225856

/-- `p?[A080401(n+1)]` -/
def P10834813129144267011.Spec : Prop :=
  ∀ n, P10834813129144267011.a n = A225856 (n + 1)

end A225856

/-! ## A225856.P14059173989063102241

`record[A006530(A080401(n+2))]`
-/

namespace A225856.P14059173989063102241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A080401 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225856.P14059173989063102241

namespace A225856

/-- `record[A006530(A080401(n+2))]` -/
def P14059173989063102241.Spec : Prop :=
  ∀ n, P14059173989063102241.a n = A225856 (n + 1)

end A225856

/-! ## A225856.P8614018296231033454

`filter[A080401(n+1), A010051(#)]`
-/

namespace A225856.P8614018296231033454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A225856.P8614018296231033454

namespace A225856

/-- `filter[A080401(n+1), A010051(#)]` -/
def P8614018296231033454.Spec : Prop :=
  ∀ n, P8614018296231033454.a n = A225856 (n + 1)

end A225856

/-! ## A225856.P5343665155611341475

`filter[A080401(n+1), A252233(#)]`
-/

namespace A225856.P5343665155611341475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A225856.P5343665155611341475

namespace A225856

/-- `filter[A080401(n+1), A252233(#)]` -/
def P5343665155611341475.Spec : Prop :=
  ∀ n, P5343665155611341475.a n = A225856 (n + 1)

end A225856

/-! ## A225856.P17908599040039556132

`filter[A080401(n+1), A353499(#)]`
-/

namespace A225856.P17908599040039556132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353499 (f1 j).toNat = 1) n)

end

end A225856.P17908599040039556132

namespace A225856

/-- `filter[A080401(n+1), A353499(#)]` -/
def P17908599040039556132.Spec : Prop :=
  ∀ n, P17908599040039556132.a n = A225856 (n + 1)

end A225856

/-! ## A225856.P16561017274037481075

`∩[A000040(n+1), A080401(n+1)]`
-/

namespace A225856.P16561017274037481075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225856.P16561017274037481075

namespace A225856

/-- `∩[A000040(n+1), A080401(n+1)]` -/
def P16561017274037481075.Spec : Prop :=
  ∀ n, (P16561017274037481075.a n : ℤ) = A225856 (n + 1)

end A225856

/-! ## A225856.P14775955288813622689

`∩[A070159(n+1), A080401(n+1)]`
-/

namespace A225856.P14775955288813622689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225856.P14775955288813622689

namespace A225856

/-- `∩[A070159(n+1), A080401(n+1)]` -/
def P14775955288813622689.Spec : Prop :=
  ∀ n, (P14775955288813622689.a n : ℤ) = A225856 (n + 1)

end A225856

/-! ## A225856.P14585408559428458318

`∩[A080401(n+1), A116974(n+1)]`
-/

namespace A225856.P14585408559428458318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225856.P14585408559428458318

namespace A225856

/-- `∩[A080401(n+1), A116974(n+1)]` -/
def P14585408559428458318.Spec : Prop :=
  ∀ n, (P14585408559428458318.a n : ℤ) = A225856 (n + 1)

end A225856

/-! ## A225856.P11435376211051028988

`∩[A080401(n+1), A182140(n+1)]`
-/

namespace A225856.P11435376211051028988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225856.P11435376211051028988

namespace A225856

/-- `∩[A080401(n+1), A182140(n+1)]` -/
def P11435376211051028988.Spec : Prop :=
  ∀ n, (P11435376211051028988.a n : ℤ) = A225856 (n + 1)

end A225856

/-! ## A225856.P10167941461928019671

`∩[A080401(n+1), A182986(n+1)]`
-/

namespace A225856.P10167941461928019671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225856.P10167941461928019671

namespace A225856

/-- `∩[A080401(n+1), A182986(n+1)]` -/
def P10167941461928019671.Spec : Prop :=
  ∀ n, (P10167941461928019671.a n : ℤ) = A225856 (n + 1)

end A225856

/-! ## A225856.P669482056202870432

`∩[A030059(n+1), A080401(n+1)]`
-/

namespace A225856.P669482056202870432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225856.P669482056202870432

namespace A225856

/-- `∩[A030059(n+1), A080401(n+1)]` -/
def P669482056202870432.Spec : Prop :=
  ∀ n, (P669482056202870432.a n : ℤ) = A225856 (n + 1)

end A225856

/-! ## A225856.P2589386264594246085

`∩[A072697(n+1), A080401(n+1)]`
-/

namespace A225856.P2589386264594246085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225856.P2589386264594246085

namespace A225856

/-- `∩[A072697(n+1), A080401(n+1)]` -/
def P2589386264594246085.Spec : Prop :=
  ∀ n, (P2589386264594246085.a n : ℤ) = A225856 (n + 1)

end A225856

/-! ## A225856.P9241649448289583453

`p?[A049533(n+1)]`
-/

namespace A225856.P9241649448289583453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225856.P9241649448289583453

namespace A225856

/-- `p?[A049533(n+1)]` -/
def P9241649448289583453.Spec : Prop :=
  ∀ n, P9241649448289583453.a n = A225856 (n + 1)

end A225856

/-! ## A225856.P12609805223299893423

`record[A006530(A049533(n+2))]`
-/

namespace A225856.P12609805223299893423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A049533 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225856.P12609805223299893423

namespace A225856

/-- `record[A006530(A049533(n+2))]` -/
def P12609805223299893423.Spec : Prop :=
  ∀ n, P12609805223299893423.a n = A225856 (n + 1)

end A225856

/-! ## A225856.P1836425594476622337

`filter[A049533(n+1), A010051(#)]`
-/

namespace A225856.P1836425594476622337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A225856.P1836425594476622337

namespace A225856

/-- `filter[A049533(n+1), A010051(#)]` -/
def P1836425594476622337.Spec : Prop :=
  ∀ n, P1836425594476622337.a n = A225856 (n + 1)

end A225856

/-! ## A225856.P8527038496789974814

`∩[A000040(n+1), A049533(n+1)]`
-/

namespace A225856.P8527038496789974814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225856.P8527038496789974814

namespace A225856

/-- `∩[A000040(n+1), A049533(n+1)]` -/
def P8527038496789974814.Spec : Prop :=
  ∀ n, (P8527038496789974814.a n : ℤ) = A225856 (n + 1)

end A225856

/-! ## A225856.P12493607642941357846

`∩[A049533(n+1), A182986(n+1)]`
-/

namespace A225856.P12493607642941357846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225856.P12493607642941357846

namespace A225856

/-- `∩[A049533(n+1), A182986(n+1)]` -/
def P12493607642941357846.Spec : Prop :=
  ∀ n, (P12493607642941357846.a n : ℤ) = A225856 (n + 1)

end A225856

/-! ## A225856.P4440036923971108041

`eq[A003415(n), A059592(n)]`
-/

namespace A225856.P4440036923971108041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225856.P4440036923971108041

namespace A225856

/-- `eq[A003415(n), A059592(n)]` -/
def P4440036923971108041.Spec : Prop :=
  ∀ n, (P4440036923971108041.a n : ℤ) = A225856 (n + 1)

end A225856

/-! ## A225856.P12455290844512733692

`eq[A018783(n), A059592(n)]`
-/

namespace A225856.P12455290844512733692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225856.P12455290844512733692

namespace A225856

/-- `eq[A018783(n), A059592(n)]` -/
def P12455290844512733692.Spec : Prop :=
  ∀ n, (P12455290844512733692.a n : ℤ) = A225856 (n + 1)

end A225856

/-!
# A225857: Numbers of the form 2^i*3^j*(12k+1) or 2^i*3^j*(12k+5), i, j, k >= 0.

The programs for A225857, the canonical program `A225857.P2485415157108914782` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225857 has offset 1).

The definition of A225857 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225857.P2485415157108914782

`eq[1, (floor((n+1)/2^val(n+1, 2))/3^val(n+1, 3))%4]+1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A225857

/-- `eq[1, (floor((n+1)/2^val(n+1, 2))/3^val(n+1, 3))%4]+1` -/
def P2485415157108914782.Spec : Prop :=
  ∀ n, (P2485415157108914782.a n : ℤ) = A225857 (n + 1)

theorem P2485415157108914782.correct : P2485415157108914782.Spec := by
  intro n
  simp only [A225857, Nat.add_sub_cancel]

end A225857

/-! ## A225857.P4866208644057742408

`comp[A225858(n+1)-1]+1`
-/

namespace A225857.P4866208644057742408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225858 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A225857.P4866208644057742408

namespace A225857

/-- `comp[A225858(n+1)-1]+1` -/
def P4866208644057742408.Spec : Prop :=
  ∀ n, (P4866208644057742408.a n : ℤ) = A225857 (n + 1)

end A225857

/-! ## A225857.P2711225983619923402

`eq[1, ceil(A126760(n)/2)%2]`
-/

namespace A225857.P2711225983619923402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A126760 n : ℚ) / 2⌉ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225857.P2711225983619923402

namespace A225857

/-- `eq[1, ceil(A126760(n)/2)%2]` -/
def P2711225983619923402.Spec : Prop :=
  ∀ n, (P2711225983619923402.a n : ℤ) = A225857 (n + 1)

end A225857

/-! ## A225857.P2927632507767461899

`eq[2, and(2, A126760(n+1)+1)]+1`
-/

namespace A225857.P2927632507767461899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A126760 (n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A225857.P2927632507767461899

namespace A225857

/-- `eq[2, and(2, A126760(n+1)+1)]+1` -/
def P2927632507767461899.Spec : Prop :=
  ∀ n, (P2927632507767461899.a n : ℤ) = A225857 (n + 1)

end A225857

/-! ## A225857.P12214210255962612767

`lt[A008434(A126760(n)), 1]`
-/

namespace A225857.P12214210255962612767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008434 (A126760 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A225857.P12214210255962612767

namespace A225857

/-- `lt[A008434(A126760(n)), 1]` -/
def P12214210255962612767.Spec : Prop :=
  ∀ n, (P12214210255962612767.a n : ℤ) = A225857 (n + 1)

end A225857

/-! ## A225857.P11478849323477431946

`lt[1, A126759(n)%4]`
-/

namespace A225857.P11478849323477431946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126759 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A225857.P11478849323477431946

namespace A225857

/-- `lt[1, A126759(n)%4]` -/
def P11478849323477431946.Spec : Prop :=
  ∀ n, (P11478849323477431946.a n : ℤ) = A225857 (n + 1)

end A225857

/-! ## A225857.P6855509202308244695

`eq[1, A065330(n+1)%4]+1`
-/

namespace A225857.P6855509202308244695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065330 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A225857.P6855509202308244695

namespace A225857

/-- `eq[1, A065330(n+1)%4]+1` -/
def P6855509202308244695.Spec : Prop :=
  ∀ n, (P6855509202308244695.a n : ℤ) = A225857 (n + 1)

end A225857

/-! ## A225857.P11177313180599644545

`eq[2, and(2, A126759(n+1))]+1`
-/

namespace A225857.P11177313180599644545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A126759 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A225857.P11177313180599644545

namespace A225857

/-- `eq[2, and(2, A126759(n+1))]+1` -/
def P11177313180599644545.Spec : Prop :=
  ∀ n, (P11177313180599644545.a n : ℤ) = A225857 (n + 1)

end A225857

/-! ## A225857.P14193091611501277172

`lt[A084100(A126759(n)), 0]`
-/

namespace A225857.P14193091611501277172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084100 (A126759 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A225857.P14193091611501277172

namespace A225857

/-- `lt[A084100(A126759(n)), 0]` -/
def P14193091611501277172.Spec : Prop :=
  ∀ n, (P14193091611501277172.a n : ℤ) = A225857 (n + 1)

end A225857

/-! ## A225857.P9214644354696312254

`eq[2, and(A040000(n), A126759(n))]`
-/

namespace A225857.P9214644354696312254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A040000 n) (A126759 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225857.P9214644354696312254

namespace A225857

/-- `eq[2, and(A040000(n), A126759(n))]` -/
def P9214644354696312254.Spec : Prop :=
  ∀ n, (P9214644354696312254.a n : ℤ) = A225857 (n + 1)

end A225857

/-! ## A225857.P15975681937925301445

`lt[0, and(2, A126759(2*n))]`
-/

namespace A225857.P15975681937925301445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A126759 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A225857.P15975681937925301445

namespace A225857

/-- `lt[0, and(2, A126759(2*n))]` -/
def P15975681937925301445.Spec : Prop :=
  ∀ n, (P15975681937925301445.a n : ℤ) = A225857 (n + 1)

end A225857

/-! ## A225857.P4969405038858528846

`eq[1, A284254(2*(n+1))%4]+1`
-/

namespace A225857.P4969405038858528846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284254 (2 * (n + 1))) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A225857.P4969405038858528846

namespace A225857

/-- `eq[1, A284254(2*(n+1))%4]+1` -/
def P4969405038858528846.Spec : Prop :=
  ∀ n, (P4969405038858528846.a n : ℤ) = A225857 (n + 1)

end A225857

/-! ## A225857.P7060504182636432667

`eq[2, and(2, A126759(3*n))]`
-/

namespace A225857.P7060504182636432667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A126759 (3 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225857.P7060504182636432667

namespace A225857

/-- `eq[2, and(2, A126759(3*n))]` -/
def P7060504182636432667.Spec : Prop :=
  ∀ n, (P7060504182636432667.a n : ℤ) = A225857 (n + 1)

end A225857

/-!
# A225858: Numbers of the form 2^i*3^j*(12k+7) or 2^i*3^j*(12k+11), i, j, k >= 0.

The programs for A225858, the canonical program `A225858.P8779142669579381779` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225858 has offset 1).

The definition of A225858 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4963 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225858.P3775592918791154657

`lt[1, A008434(A126760(n))]`
-/

namespace A225858.P3775592918791154657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008434 (A126760 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A225858.P3775592918791154657

namespace A225858

/-- `lt[1, A008434(A126760(n))]` -/
def P3775592918791154657.Spec : Prop :=
  ∀ n, (P3775592918791154657.a n : ℤ) = A225858 (n + 1)

end A225858

/-! ## A225858.P11732085668925811458

`eq[C(2, n)², and(2, A126759(n))]`
-/

namespace A225858.P11732085668925811458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A126759 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225858.P11732085668925811458

namespace A225858

/-- `eq[C(2, n)², and(2, A126759(n))]` -/
def P11732085668925811458.Spec : Prop :=
  ∀ n, (P11732085668925811458.a n : ℤ) = A225858 (n + 1)

end A225858

/-! ## A225858.P8779142669579381779

`lt[1, A065330(n+1)%4]+1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A225858

/-- `lt[1, A065330(n+1)%4]+1` -/
def P8779142669579381779.Spec : Prop :=
  ∀ n, (P8779142669579381779.a n : ℤ) = A225858 (n + 1)

theorem P8779142669579381779.correct : P8779142669579381779.Spec := by
  intro n
  simp only [A225858, Nat.add_sub_cancel]

end A225858

/-! ## A225858.P4437219015186038376

`lt[1, A084100(A126759(n))]`
-/

namespace A225858.P4437219015186038376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084100 (A126759 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A225858.P4437219015186038376

namespace A225858

/-- `lt[1, A084100(A126759(n))]` -/
def P4437219015186038376.Spec : Prop :=
  ∀ n, (P4437219015186038376.a n : ℤ) = A225858 (n + 1)

end A225858

/-! ## A225858.P2682995655479732754

`eq[A014578(n), A089013(n)]`
-/

namespace A225858.P2682995655479732754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089013 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225858.P2682995655479732754

namespace A225858

/-- `eq[A014578(n), A089013(n)]` -/
def P2682995655479732754.Spec : Prop :=
  ∀ n, (P2682995655479732754.a n : ℤ) = A225858 (n + 1)

end A225858

/-! ## A225858.P17692175703556814362

`eq[0, and(A040000(n), A126759(n))]`
-/

namespace A225858.P17692175703556814362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A040000 n) (A126759 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225858.P17692175703556814362

namespace A225858

/-- `eq[0, and(A040000(n), A126759(n))]` -/
def P17692175703556814362.Spec : Prop :=
  ∀ n, (P17692175703556814362.a n : ℤ) = A225858 (n + 1)

end A225858

/-! ## A225858.P16577363990323372495

`eq[A014695(A126760(n)), A057427(n)]`
-/

namespace A225858.P16577363990323372495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 (A126760 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225858.P16577363990323372495

namespace A225858

/-- `eq[A014695(A126760(n)), A057427(n)]` -/
def P16577363990323372495.Spec : Prop :=
  ∀ n, (P16577363990323372495.a n : ℤ) = A225858 (n + 1)

end A225858

/-! ## A225858.P4702049087430456607

`eq[3, and(3, A065330(n*a(n-2)))]` with `a(0)=1, a(1)=1`
-/

namespace A225858.P4702049087430456607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  Int.land 3 (A065330 ((n : ℤ) * f2 (n - 2)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225858.P4702049087430456607

namespace A225858

/-- `eq[3, and(3, A065330(n*a(n-2)))]` -/
def P4702049087430456607.Spec : Prop :=
  ∀ n, (P4702049087430456607.a n : ℤ) = A225858 (n + 1)

end A225858

/-! ## A225858.P3731726225549615566

`eq[1, ceil(A126760(11*n)/2)%2]`
-/

namespace A225858.P3731726225549615566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A126760 (11 * n) : ℚ) / 2⌉ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225858.P3731726225549615566

namespace A225858

/-- `eq[1, ceil(A126760(11*n)/2)%2]` -/
def P3731726225549615566.Spec : Prop :=
  ∀ n, (P3731726225549615566.a n : ℤ) = A225858 (n + 1)

end A225858

/-!
# A225859: Smallest k such that n numbers can be picked in {1,...,k} with no five terms in arithmetic progression.

The programs for A225859, there is no canonical definition to state claims against.
-/

/-! ## A225859.P6960436366178936564

`∑[gcd(A000196(2*n), A129312(gcd(A001405(2*n), A061676(n+1))))]`
-/

namespace A225859.P6960436366178936564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000196 (2 * n)) (A129312 (Int.gcd (A001405 (2 * n)) (A061676 (n + 1))))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225859.P6960436366178936564

/-! ## A225859.P9819045061950033792

`lt[ceil(abs((1-n)/2)), A004159(∏{digits}[n, #]+∑{digits}[n, #])]`
-/

namespace A225859.P9819045061950033792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).prod + ((SequenceMachineLib.digits10 (f4 n)).map fun (x : ℕ) => x).sum)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225859.P9819045061950033792

/-! ## A225859.P14139129246173034457

`lt[n, A169805(A061762(n)²)]`
-/

namespace A225859.P14139129246173034457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 (A061762 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A225859.P14139129246173034457

/-! ## A225859.P14672011299210901562

`∑[gcd(A317815(n+1), A321496(n+5))]`
-/

namespace A225859.P14672011299210901562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A317815 (n + 1)) (A321496 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225859.P14672011299210901562

/-! ## A225859.P15455025083923787200

`lt[A004526(n), A004159(A061762(n))]`
-/

namespace A225859.P15455025083923787200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (A061762 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225859.P15455025083923787200

/-!
# A225861: Numbers n such that (n + prime(n))/2 is a prime.

The programs for A225861, the canonical program `A225861.P15928051477974949432` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225861 has offset 1).

The definition of A225861 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225861.P7782020943037625947

`eq[2, A001222(A014688(A093178(n)))]`
-/

namespace A225861.P7782020943037625947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A014688 (A093178 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225861.P7782020943037625947

namespace A225861

/-- `eq[2, A001222(A014688(A093178(n)))]` -/
def P7782020943037625947.Spec : Prop :=
  ∀ n, (P7782020943037625947.a n : ℤ) = A225861 (n + 1)

end A225861

/-! ## A225861.P15928051477974949432

`eq[2, A322826(A008578(n+1)+n)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A225861

/-- `eq[2, A322826(A008578(n+1)+n)]` -/
def P15928051477974949432.Spec : Prop :=
  ∀ n, (P15928051477974949432.a n : ℤ) = A225861 (n + 1)

theorem P15928051477974949432.correct : P15928051477974949432.Spec := by
  intro n
  simp only [A225861, Nat.add_sub_cancel]

end A225861

/-! ## A225861.P8686056723377593196

`eq[2, A052126(A008578(n+1)+n)]`
-/

namespace A225861.P8686056723377593196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A008578 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225861.P8686056723377593196

namespace A225861

/-- `eq[2, A052126(A008578(n+1)+n)]` -/
def P8686056723377593196.Spec : Prop :=
  ∀ n, (P8686056723377593196.a n : ℤ) = A225861 (n + 1)

end A225861

/-! ## A225861.P15804163512500490622

`eq[n, A252736(A008578(n+1)+n)+A004442(n)]`
-/

namespace A225861.P15804163512500490622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A008578 (n + 1) + (n : ℤ)).toNat + A004442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225861.P15804163512500490622

namespace A225861

/-- `eq[n, A252736(A008578(n+1)+n)+A004442(n)]` -/
def P15804163512500490622.Spec : Prop :=
  ∀ n, (P15804163512500490622.a n : ℤ) = A225861 (n + 1)

end A225861

/-! ## A225861.P322431978475465077

`eq[6, A034836(A008578(n+1)+n)*A117367(n+1)]`
-/

namespace A225861.P322431978475465077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (A008578 (n + 1) + (n : ℤ)).toNat * A117367 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225861.P322431978475465077

namespace A225861

/-- `eq[6, A034836(A008578(n+1)+n)*A117367(n+1)]` -/
def P322431978475465077.Spec : Prop :=
  ∀ n, (P322431978475465077.a n : ℤ) = A225861 (n + 1)

end A225861

/-! ## A225861.P6393006849566306238

`eq[A020639(55*n+3), A034836(A008578(n+1)+n)]`
-/

namespace A225861.P6393006849566306238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (55 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (A008578 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225861.P6393006849566306238

namespace A225861

/-- `eq[A020639(55*n+3), A034836(A008578(n+1)+n)]` -/
def P6393006849566306238.Spec : Prop :=
  ∀ n, (P6393006849566306238.a n : ℤ) = A225861 (n + 1)

end A225861

/-!
# A225862: Primes of the form (n + prime(n))/2.

The programs for A225862, the canonical program `A225862.P12697072099318197817` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225862 has offset 1).

The definition of A225862 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 507 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225862.P7802097843797798294

`p?[A098090(2*(n+1))+n]`
-/

namespace A225862.P7802097843797798294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (2 * (n + 1)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225862.P7802097843797798294

namespace A225862

/-- `p?[A098090(2*(n+1))+n]` -/
def P7802097843797798294.Spec : Prop :=
  ∀ n, P7802097843797798294.a n = A225862 (n + 1)

end A225862

/-! ## A225862.P12697072099318197817

`p?[A111333(2*n+1)+n]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A225862

/-- `p?[A111333(2*n+1)+n]` -/
def P12697072099318197817.Spec : Prop :=
  ∀ n, P12697072099318197817.a n = A225862 (n + 1)

theorem P12697072099318197817.correct : P12697072099318197817.Spec := by
  intro n
  simp only [A225862, Nat.add_sub_cancel]

end A225862

/-! ## A225862.P15477411805140268631

`p?[A163057(2*(n+1))-n]`
-/

namespace A225862.P15477411805140268631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163057 (2 * (n + 1)) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225862.P15477411805140268631

namespace A225862

/-- `p?[A163057(2*(n+1))-n]` -/
def P15477411805140268631.Spec : Prop :=
  ∀ n, P15477411805140268631.a n = A225862 (n + 1)

end A225862

/-! ## A225862.P13138479384702832541

`p?[n+1+A006254(2*(n+1))]`
-/

namespace A225862.P13138479384702832541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A006254 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225862.P13138479384702832541

namespace A225862

/-- `p?[n+1+A006254(2*(n+1))]` -/
def P13138479384702832541.Spec : Prop :=
  ∀ n, P13138479384702832541.a n = A225862 (n + 1)

end A225862

/-! ## A225862.P8933000909626699634

`p?[A102781(2*n+1)+n+1]`
-/

namespace A225862.P8933000909626699634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (2 * n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225862.P8933000909626699634

namespace A225862

/-- `p?[A102781(2*n+1)+n+1]` -/
def P8933000909626699634.Spec : Prop :=
  ∀ n, P8933000909626699634.a n = A225862 (n + 1)

end A225862

/-! ## A225862.P1515887882098905593

`p?[A175540(2*(n+1))-n+1]`
-/

namespace A225862.P1515887882098905593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175540 (2 * (n + 1)) - (n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225862.P1515887882098905593

namespace A225862

/-- `p?[A175540(2*(n+1))-n+1]` -/
def P1515887882098905593.Spec : Prop :=
  ∀ n, P1515887882098905593.a n = A225862 (n + 1)

end A225862

/-! ## A225862.P1927528007973177535

`p?[A175540(Δ[(n+1)²]+1)-n]`
-/

namespace A225862.P1927528007973177535
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175540 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225862.P1927528007973177535

namespace A225862

/-- `p?[A175540(Δ[(n+1)²]+1)-n]` -/
def P1927528007973177535.Spec : Prop :=
  ∀ n, P1927528007973177535.a n = A225862 (n + 1)

end A225862

/-! ## A225862.P5337833622770141978

`p?[round(A040976(2*n+1)/2)+1+n]`
-/

namespace A225862.P5337833622770141978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A040976 (2 * n + 1) : ℚ) / 2) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225862.P5337833622770141978

namespace A225862

/-- `p?[round(A040976(2*n+1)/2)+1+n]` -/
def P5337833622770141978.Spec : Prop :=
  ∀ n, P5337833622770141978.a n = A225862 (n + 1)

end A225862

/-! ## A225862.P10878829838229710019

`p?[round(A000040(2*n+3)/2)+1+n]`
-/

namespace A225862.P10878829838229710019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000040 (2 * n + 3) : ℚ) / 2) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225862.P10878829838229710019

namespace A225862

/-- `p?[round(A000040(2*n+3)/2)+1+n]` -/
def P10878829838229710019.Spec : Prop :=
  ∀ n, P10878829838229710019.a n = A225862 (n + 1)

end A225862

/-! ## A225862.P6564399700515764152

`A076556(A225861(n+1))`
-/

namespace A225862.P6564399700515764152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076556 (A225861 (n + 1)).toNat

end

end A225862.P6564399700515764152

namespace A225862

/-- `A076556(A225861(n+1))` -/
def P6564399700515764152.Spec : Prop :=
  ∀ n, P6564399700515764152.a n = A225862 (n + 1)

end A225862

/-! ## A225862.P14973721218920749277

`∩[A098090(2*(n+1))+n, A000040(n+2)]`
-/

namespace A225862.P14973721218920749277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (2 * (n + 1)) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225862.P14973721218920749277

namespace A225862

/-- `∩[A098090(2*(n+1))+n, A000040(n+2)]` -/
def P14973721218920749277.Spec : Prop :=
  ∀ n, (P14973721218920749277.a n : ℤ) = A225862 (n + 1)

end A225862

/-! ## A225862.P15015686393966710117

`p?[A014688(n+1)-A014682(A014688(n+1))]`
-/

namespace A225862.P15015686393966710117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) - A014682 (A014688 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225862.P15015686393966710117

namespace A225862

/-- `p?[A014688(n+1)-A014682(A014688(n+1))]` -/
def P15015686393966710117.Spec : Prop :=
  ∀ n, P15015686393966710117.a n = A225862 (n + 1)

end A225862

/-! ## A225862.P10675205584980357104

`p?[A302042(A000040(2*n+1)+1)+n]`
-/

namespace A225862.P10675205584980357104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A000040 (2 * n + 1) + 1).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225862.P10675205584980357104

namespace A225862

/-- `p?[A302042(A000040(2*n+1)+1)+n]` -/
def P10675205584980357104.Spec : Prop :=
  ∀ n, P10675205584980357104.a n = A225862 (n + 1)

end A225862

/-! ## A225862.P12386744635257075556

`p?[A336840(A000040(2*(n+1)))+n]`
-/

namespace A225862.P12386744635257075556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336840 (A000040 (2 * (n + 1))).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225862.P12386744635257075556

namespace A225862

/-- `p?[A336840(A000040(2*(n+1)))+n]` -/
def P12386744635257075556.Spec : Prop :=
  ∀ n, P12386744635257075556.a n = A225862 (n + 1)

end A225862

/-!
# A225863: Primes for which both sum and product of digits are nonprimes.

The programs for A225863, there is no canonical definition to state claims against.
-/

/-! ## A225863.P5997331747580785890

`filter[A180545(n+2), A153778(#)]`
-/

namespace A225863.P5997331747580785890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A153778 (f1 j).toNat = 1) n)

end

end A225863.P5997331747580785890

/-!
# A225864: Composite numbers for which both sum and product of digits are primes.

The programs for A225864, there is no canonical definition to state claims against.
-/

/-! ## A225864.P13647060685596619869

`filter[A052430(n+2), A354108(#)]`
-/

namespace A225864.P13647060685596619869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052430 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A225864.P13647060685596619869

/-! ## A225864.P3685669142475486619

`filter[A052430(n+1), A005171(#)]`
-/

namespace A225864.P3685669142475486619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A225864.P3685669142475486619

/-! ## A225864.P5595071995957080972

`filter[A052430(n+1), A066247(#)]`
-/

namespace A225864.P5595071995957080972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A225864.P5595071995957080972

/-! ## A225864.P6480937413380249050

`filter[A052430(n+1), A202238(#)]`
-/

namespace A225864.P6480937413380249050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A225864.P6480937413380249050

/-! ## A225864.P10993374774287122024

`filter[A052430(n+1), A174898(#)]`
-/

namespace A225864.P10993374774287122024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A225864.P10993374774287122024

/-!
# A225865: a(n) = 2^m minus (the total number of distinct subsets of length-(m-n) binary words that can appear as the factor of a word of length m, for 0 <= n < m/2).

The programs for A225865, there is no canonical definition to state claims against.
-/

/-! ## A225865.P4332074923781945896

`∑[n*Δ[A173270(n)]]`
-/

namespace A225865.P4332074923781945896
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173270 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225865.P4332074923781945896

/-! ## A225865.P7058179321313086220

`∑[A001037(n+1)*n]`
-/

namespace A225865.P7058179321313086220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (n + 1) * (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225865.P7058179321313086220

/-! ## A225865.P5196779422810010574

`∑[A059966(n+1)*n]`
-/

namespace A225865.P5196779422810010574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (n + 1) * (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225865.P5196779422810010574

/-! ## A225865.P10310636113631024643

`∑[A060477(n+1)*n]`
-/

namespace A225865.P10310636113631024643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060477 (n + 1) * (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225865.P10310636113631024643

/-! ## A225865.P7620197234764948124

`∑[n*A123223(∑[n+1])]`
-/

namespace A225865.P7620197234764948124
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A123223 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225865.P7620197234764948124

/-!
# A225866: Numbers n such that the sum of the numbers in the Collatz (3x+1) iteration of n is a perfect square.

The programs for A225866, there is no canonical definition to state claims against.
-/

/-! ## A225866.P6511532191352521761

`A025047(n)*A115871(A349055(n+2))`
-/

namespace A225866.P6511532191352521761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025047 n * A115871 (A349055 (n + 2)).toNat

end

end A225866.P6511532191352521761

/-!
# A225868: Numbers m for which max_{2 <= k <= (m-2)/2} Sum_{d>1, d|m+k, k|m+d} 1 = 3.

The programs for A225868, there is no canonical definition to state claims against.
-/

/-! ## A225868.P6259803726272010276

`eq[3, A225867(n+6)]+6`
-/

namespace A225868.P6259803726272010276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225867 (n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 6

end

end A225868.P6259803726272010276

/-! ## A225868.P12985071428142453508

`A020715(eq[3, A225867(n+6)])`
-/

namespace A225868.P12985071428142453508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225867 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020715 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225868.P12985071428142453508

/-!
# A225870: Nonnegative integers of the form x*y*z*(x+y-z) with integers x>=y>=z.

The programs for A225870, there is no canonical definition to state claims against.
-/

/-! ## A225870.P10589391976564171143

`A196054(A113570(n+1))`
-/

namespace A225870.P10589391976564171143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196054 (A113570 (n + 1)).toNat

end

end A225870.P10589391976564171143

/-! ## A225870.P16840245707185415019

`lt[A318284(A247278(n+2)), 2]`
-/

namespace A225870.P16840245707185415019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (A247278 (n + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A225870.P16840245707185415019

/-! ## A225870.P672986715916820985

`eq[A157972(n+2), A337910(n+1)]`
-/

namespace A225870.P672986715916820985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157972 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337910 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225870.P672986715916820985

/-! ## A225870.P14319132587627319646

`eq[char[A186861(n+1)], A163100(n+5)]`
-/

namespace A225870.P14319132587627319646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186861 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163100 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A225870.P14319132587627319646

/-! ## A225870.P10662390496303509046

`record[A051903(3*(n+1))*A374706(n+1)]`
-/

namespace A225870.P10662390496303509046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (3 * (n + 1)) * A374706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225870.P10662390496303509046

/-!
# A225871: Number of people required for there to be a 50% probability that at least 4 share a birthday in a year with n days.

The programs for A225871, there is no canonical definition to state claims against.
-/

/-! ## A225871.P16134760282543187891

`A316843(A052221(n+1)+Δ[n^3])`
-/

namespace A225871.P16134760282543187891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316843 (A052221 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A225871.P16134760282543187891

/-! ## A225871.P9549959799576634020

`A074279(∑[6*(4*n+3)])`
-/

namespace A225871.P9549959799576634020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (4 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074279 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A225871.P9549959799576634020

/-! ## A225871.P18354130333085086779

`A316843(A244370(n+1)-A004273(n))`
-/

namespace A225871.P18354130333085086779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316843 (A244370 (n + 1) - A004273 n).toNat

end

end A225871.P18354130333085086779

/-! ## A225871.P12132908799965896518

`A025126(A168240(n+2))`
-/

namespace A225871.P12132908799965896518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025126 (A168240 (n + 2)).toNat

end

end A225871.P12132908799965896518

/-!
# A225872: Expansion of k(q)^3 * k'(q)^2 * (K(q) / (Pi/2))^6 / 64 in powers of q where k(), k'(), K() are Jacobi elliptic functions.

The programs for A225872, there is no canonical definition to state claims against.
-/

/-! ## A225872.P12613970729693907794

`(A225543(n)-A000735(n))/16`
-/

namespace A225872.P12613970729693907794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225543 n - A000735 n : ℚ) / 16

end

end A225872.P12613970729693907794

/-! ## A225872.P1341277248608466427

`(A225923(n)-A225543(n))/16`
-/

namespace A225872.P1341277248608466427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225923 n - A225543 n : ℚ) / 16

end

end A225872.P1341277248608466427

/-! ## A225872.P14451982031493822177

`(A225923(n)-A000735(n))/32`
-/

namespace A225872.P14451982031493822177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225923 n - A000735 n : ℚ) / 32

end

end A225872.P14451982031493822177

/-! ## A225872.P10969273984185439300

`(A225923(n)-A000735(n))*32^A008683(A006450(n+1))`
-/

namespace A225872.P10969273984185439300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225923 n - A000735 n : ℚ) * (32 : ℚ) ^ (A008683 (A006450 (n + 1)).toNat : ℤ)

end

end A225872.P10969273984185439300

/-! ## A225872.P15911126065646423205

`(A225543(n)-A227239(2*n+1))/16`
-/

namespace A225872.P15911126065646423205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225543 n - A227239 (2 * n + 1) : ℚ) / 16

end

end A225872.P15911126065646423205

/-!
# A225873: Squares that become prime when their most significant (or leftmost) digit is removed.

The programs for A225873, there is no canonical definition to state claims against.
-/

/-! ## A225873.P13550306157858567610

`A249589(n+1)²`
-/

namespace A225873.P13550306157858567610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249589 (n + 1) ^ 2

end

end A225873.P13550306157858567610

/-! ## A225873.P5832081279396624009

`A249589(A000027(n+1))*A249589(n+1)`
-/

namespace A225873.P5832081279396624009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249589 (A000027 (n + 1)).toNat * A249589 (n + 1)

end

end A225873.P5832081279396624009

/-! ## A225873.P15000463095098895792

`A249589(A005843(n+1)-(n+1))*A249589(n+1)`
-/

namespace A225873.P15000463095098895792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249589 (A005843 (n + 1) - (n + 1 : ℤ)).toNat * A249589 (n + 1)

end

end A225873.P15000463095098895792

/-! ## A225873.P17662254662950272699

`A249589(n+1)%A249589(n+2)*A249589(n+1)`
-/

namespace A225873.P17662254662950272699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249589 (n + 1)) (A249589 (n + 2)) * A249589 (n + 1)

end

end A225873.P17662254662950272699

/-! ## A225873.P958690746155939450

`A249589(n+1)^(A126114(A126114(n+2)+1)+1)`
-/

namespace A225873.P958690746155939450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249589 (n + 1) : ℚ) ^ (A126114 (A126114 (n + 2) + 1).toNat + 1 : ℤ)

end

end A225873.P958690746155939450

/-! ## A225873.P15298809050942793279

`A249589(n+1)^A000005(A137812(n+1))`
-/

namespace A225873.P15298809050942793279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249589 (n + 1) : ℚ) ^ (A000005 (A137812 (n + 1)).toNat : ℤ)

end

end A225873.P15298809050942793279

/-! ## A225873.P485516996023221009

`A168077(or(1, A249589(n+1)))`
-/

namespace A225873.P485516996023221009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168077 (Int.lor 1 (A249589 (n + 1))).toNat

end

end A225873.P485516996023221009

/-! ## A225873.P3305136169292869646

`A249589(n+1)^A000005(A024785(n+1))`
-/

namespace A225873.P3305136169292869646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249589 (n + 1) : ℚ) ^ (A000005 (A024785 (n + 1)).toNat : ℤ)

end

end A225873.P3305136169292869646

/-!
# A225874: Primes of the form 5*p^2+5*p+1, where p is a prime.

The programs for A225874, there is no canonical definition to state claims against.
-/

/-! ## A225874.P14310524938605611287

`p?[10*C(A000040(n+1)+1, 2)+1]`
-/

namespace A225874.P14310524938605611287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * Nat.choose (A000040 (n + 1) + 1).toNat 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A225874.P14310524938605611287

/-! ## A225874.P15635483910664815174

`A125239(A175063(n+1))`
-/

namespace A225874.P15635483910664815174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125239 (A175063 (n + 1)).toNat

end

end A225874.P15635483910664815174

/-! ## A225874.P6719352892105020958

`record[A125239(A000040(n+1))]`
-/

namespace A225874.P6719352892105020958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125239 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225874.P6719352892105020958

/-! ## A225874.P1098266871235107819

`record[A125239(A006530(n+2))]`
-/

namespace A225874.P1098266871235107819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125239 (A006530 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225874.P1098266871235107819

/-! ## A225874.P5644318546073226548

`record[A125239(A020639(n+2))]`
-/

namespace A225874.P5644318546073226548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125239 (A020639 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225874.P5644318546073226548

/-!
# A225875: We write the 1 + 4*k numbers once and twice the others.

The programs for A225875, the canonical program `A225875.P1433923532831611650` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225875 has offset 1).

The definition of A225875 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A225875.P1433923532831611650

`n+1-floor(3*(n+1)/7)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A225875

/-- `n+1-floor(3*(n+1)/7)` -/
def P1433923532831611650.Spec : Prop :=
  ∀ n, P1433923532831611650.a n = A225875 (n + 1)

theorem P1433923532831611650.correct : P1433923532831611650.Spec := by
  intro n
  simp only [A225875, Nat.add_sub_cancel]

end A225875

/-! ## A225875.P7978306299447079517

`ogf((1+x+x^3+x^5)/(1-x-x^7+x^8))`
-/

namespace A225875.P7978306299447079517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 0, 1, 0, 1] [1, -1, 0, 0, 0, 0, 0, -1, 1] n

end

end A225875.P7978306299447079517

namespace A225875

/-- `ogf((1+x+x^3+x^5)/(1-x-x^7+x^8))` -/
def P7978306299447079517.Spec : Prop :=
  ∀ n, P7978306299447079517.a n = A225875 (n + 1)

end A225875

/-! ## A225875.P17294947270999145027

`∑[((n%7)%2)^a(n-1)]` with `a(0)=1`
-/

namespace A225875.P17294947270999145027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  (n % 7 % 2) ^ f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225875.P17294947270999145027

namespace A225875

/-- `∑[((n%7)%2)^a(n-1)]` -/
def P17294947270999145027.Spec : Prop :=
  ∀ n, (P17294947270999145027.a n : ℤ) = A225875 (n + 1)

end A225875

/-! ## A225875.P11449234708272792928

`ceil(A004771(n)/14)`
-/

namespace A225875.P11449234708272792928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004771 n : ℚ) / 14⌉

end

end A225875.P11449234708272792928

namespace A225875

/-- `ceil(A004771(n)/14)` -/
def P11449234708272792928.Spec : Prop :=
  ∀ n, P11449234708272792928.a n = A225875 (n + 1)

end A225875

/-! ## A225875.P15101388091831333115

`ceil(A017653(n)/21)`
-/

namespace A225875.P15101388091831333115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017653 n : ℚ) / 21⌉

end

end A225875.P15101388091831333115

namespace A225875

/-- `ceil(A017653(n)/21)` -/
def P15101388091831333115.Spec : Prop :=
  ∀ n, P15101388091831333115.a n = A225875 (n + 1)

end A225875

/-! ## A225875.P196749001467767513

`∑[char[A047392(n+1)]]`
-/

namespace A225875.P196749001467767513
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047392 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225875.P196749001467767513

namespace A225875

/-- `∑[char[A047392(n+1)]]` -/
def P196749001467767513.Spec : Prop :=
  ∀ n, (P196749001467767513.a n : ℤ) = A225875 (n + 1)

end A225875

/-! ## A225875.P9303298840718207228

`∑[char[A057353(n)+n]]`
-/

namespace A225875.P9303298840718207228
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225875.P9303298840718207228

namespace A225875

/-- `∑[char[A057353(n)+n]]` -/
def P9303298840718207228.Spec : Prop :=
  ∀ n, (P9303298840718207228.a n : ℤ) = A225875 (n + 1)

end A225875

/-! ## A225875.P305456496551968042

`A008619(A047594(n+1))`
-/

namespace A225875.P305456496551968042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A047594 (n + 1)).toNat

end

end A225875.P305456496551968042

namespace A225875

/-- `A008619(A047594(n+1))` -/
def P305456496551968042.Spec : Prop :=
  ∀ n, P305456496551968042.a n = A225875 (n + 1)

end A225875

/-! ## A225875.P11294612527778558286

`A008619(comp[8*n])`
-/

namespace A225875.P11294612527778558286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A225875.P11294612527778558286

namespace A225875

/-- `A008619(comp[8*n])` -/
def P11294612527778558286.Spec : Prop :=
  ∀ n, P11294612527778558286.a n = A225875 (n + 1)

end A225875

/-! ## A225875.P17105871622263976511

`A080513(A004777(n+1))`
-/

namespace A225875.P17105871622263976511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A004777 (n + 1)).toNat

end

end A225875.P17105871622263976511

namespace A225875

/-- `A080513(A004777(n+1))` -/
def P17105871622263976511.Spec : Prop :=
  ∀ n, P17105871622263976511.a n = A225875 (n + 1)

end A225875

/-! ## A225875.P3759902206679470022

`A086161(A060107(n+1))`
-/

namespace A225875.P3759902206679470022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 (A060107 (n + 1)).toNat

end

end A225875.P3759902206679470022

namespace A225875

/-- `A086161(A060107(n+1))` -/
def P3759902206679470022.Spec : Prop :=
  ∀ n, P3759902206679470022.a n = A225875 (n + 1)

end A225875

/-! ## A225875.P14936082241558137696

`A086161(A083033(n+1))`
-/

namespace A225875.P14936082241558137696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 (A083033 (n + 1)).toNat

end

end A225875.P14936082241558137696

namespace A225875

/-- `A086161(A083033(n+1))` -/
def P14936082241558137696.Spec : Prop :=
  ∀ n, P14936082241558137696.a n = A225875 (n + 1)

end A225875

/-! ## A225875.P10430877854042103483

`A008620(A083026(n+2)-1)`
-/

namespace A225875.P10430877854042103483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A083026 (n + 2) - 1).toNat

end

end A225875.P10430877854042103483

namespace A225875

/-- `A008620(A083026(n+2)-1)` -/
def P10430877854042103483.Spec : Prop :=
  ∀ n, P10430877854042103483.a n = A225875 (n + 1)

end A225875

/-! ## A225875.P10019938137012673269

`A086161(A083120(n+2)-2)`
-/

namespace A225875.P10019938137012673269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 (A083120 (n + 2) - 2).toNat

end

end A225875.P10019938137012673269

namespace A225875

/-- `A086161(A083120(n+2)-2)` -/
def P10019938137012673269.Spec : Prop :=
  ∀ n, P10019938137012673269.a n = A225875 (n + 1)

end A225875

/-! ## A225875.P9998172743888459430

`A086161(A083120(n+1))`
-/

namespace A225875.P9998172743888459430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 (A083120 (n + 1)).toNat

end

end A225875.P9998172743888459430

namespace A225875

/-- `A086161(A083120(n+1))` -/
def P9998172743888459430.Spec : Prop :=
  ∀ n, P9998172743888459430.a n = A225875 (n + 1)

end A225875

/-! ## A225875.P7553317647459459909

`A004523(A057357(2*n+1)+2)`
-/

namespace A225875.P7553317647459459909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A057357 (2 * n + 1) + 2).toNat

end

end A225875.P7553317647459459909

namespace A225875

/-- `A004523(A057357(2*n+1)+2)` -/
def P7553317647459459909.Spec : Prop :=
  ∀ n, P7553317647459459909.a n = A225875 (n + 1)

end A225875

/-! ## A225875.P4031977357693261636

`A004526(A008617(2*n)+n+2)`
-/

namespace A225875.P4031977357693261636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A008617 (2 * n) + (n + 2 : ℤ)).toNat

end

end A225875.P4031977357693261636

namespace A225875

/-- `A004526(A008617(2*n)+n+2)` -/
def P4031977357693261636.Spec : Prop :=
  ∀ n, P4031977357693261636.a n = A225875 (n + 1)

end A225875

/-! ## A225875.P6479954643175024435

`A057356(2*n+5)`
-/

namespace A225875.P6479954643175024435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 (2 * n + 5)

end

end A225875.P6479954643175024435

namespace A225875

/-- `A057356(2*n+5)` -/
def P6479954643175024435.Spec : Prop :=
  ∀ n, P6479954643175024435.a n = A225875 (n + 1)

end A225875

/-! ## A225875.P17589240640520118161

`∑[A130657(3*n)]`
-/

namespace A225875.P17589240640520118161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130657 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225875.P17589240640520118161

namespace A225875

/-- `∑[A130657(3*n)]` -/
def P17589240640520118161.Spec : Prop :=
  ∀ n, P17589240640520118161.a n = A225875 (n + 1)

end A225875

/-! ## A225875.P8651247269887499632

`A008617(A017137(n))`
-/

namespace A225875.P8651247269887499632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A017137 n).toNat

end

end A225875.P8651247269887499632

namespace A225875

/-- `A008617(A017137(n))` -/
def P8651247269887499632.Spec : Prop :=
  ∀ n, P8651247269887499632.a n = A225875 (n + 1)

end A225875

/-!
# A225877: Number of (2n-1)-step self-avoiding paths between two adjacent sites of a 2-dimensional square lattice.

The programs for A225877, there is no canonical definition to state claims against.
-/

/-! ## A225877.P9473511276684077632

`(n+1)*A002931(round(sqrt(n²+1))+1)`
-/

namespace A225877.P9473511276684077632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002931 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat

end

end A225877.P9473511276684077632

/-! ## A225877.P12110387523922591937

`A000007(n)+A010566(n+1)/4`
-/

namespace A225877.P12110387523922591937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 n : ℚ) + (A010566 (n + 1) : ℚ) / 4

end

end A225877.P12110387523922591937

/-! ## A225877.P12375743173086131922

`A151878(n)+A010566(n+1)/4`
-/

namespace A225877.P12375743173086131922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151878 n : ℚ) + (A010566 (n + 1) : ℚ) / 4

end

end A225877.P12375743173086131922

/-! ## A225877.P17176568764607635801

`(A010566(n+1)/4)^A178334(n)`
-/

namespace A225877.P17176568764607635801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A010566 (n + 1) : ℚ) / 4) ^ (A178334 n : ℤ)

end

end A225877.P17176568764607635801

/-! ## A225877.P16846312673194139580

`(n+1)*(A002931(n+1)+A000007(n))`
-/

namespace A225877.P16846312673194139580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A002931 (n + 1) + A000007 n)

end

end A225877.P16846312673194139580

/-! ## A225877.P5291990702756969959

`(A010566(n+1)/4)^(2-p?[A086965(n+1)])²`
-/

namespace A225877.P5291990702756969959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086965 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A010566 (n + 1) : ℚ) / 4) ^ ((2 - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) ^ 2 : ℤ)

end

end A225877.P5291990702756969959

/-!
# A225878: Numbers n such that the products n*(sum of the reciprocals of the Collatz (3x+1) sequence beginning at n) are integers.

The programs for A225878, there is no canonical definition to state claims against.
-/

/-! ## A225878.P17990794621799629701

`A323097((n+1)^(∑{digits}[n, 10^#]%9))`
-/

namespace A225878.P17990794621799629701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323097 ((n + 1) ^ (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum % 9))

end

end A225878.P17990794621799629701

/-! ## A225878.P14691610148640938561

`A228731(A016089(n+1))`
-/

namespace A225878.P14691610148640938561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228731 (A016089 (n + 1)).toNat

end

end A225878.P14691610148640938561

/-! ## A225878.P12083486919863991613

`A323097(A043315(n+1))`
-/

namespace A225878.P12083486919863991613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323097 (A043315 (n + 1)).toNat

end

end A225878.P12083486919863991613

/-! ## A225878.P4037032204291808755

`A323097(A044912(n+1))`
-/

namespace A225878.P4037032204291808755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323097 (A044912 (n + 1)).toNat

end

end A225878.P4037032204291808755

/-! ## A225878.P2310181559724103714

`A323097(A055649(n+1))`
-/

namespace A225878.P2310181559724103714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323097 (A055649 (n + 1)).toNat

end

end A225878.P2310181559724103714

/-!
# A225879: Number of n-length words w over ternary alphabet {1,2,3} such that for every prefix z of w we have 0<=#(z,1)-#(z,2)<=2 and 0<=#(z,2)-#(z,3)<=2 and #(z,x) gives the number of occurrences of letter x in z.

The programs for A225879, the canonical program `A225879.P15447071235751425538` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225879 has offset 0).

The definition of A225879 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A225879.P15447071235751425538

`7*a(n-3)+2*a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=7, a(5)=14`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A225879

/-- `7*a(n-3)+2*a(n-6)` -/
def P15447071235751425538.Spec : Prop :=
  ∀ n, (P15447071235751425538.a n : ℤ) = A225879 n

theorem P15447071235751425538.correct : P15447071235751425538.Spec := by
  intro n
  simp only [A225879]

end A225879

/-! ## A225879.P1333808566751085785

`ogf((1+x+2x^2-4x^3)/(1-7x^3-2x^6))`
-/

namespace A225879.P1333808566751085785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2, -4] [1, 0, 0, -7, 0, 0, -2] n

end

end A225879.P1333808566751085785

namespace A225879

/-- `ogf((1+x+2x^2-4x^3)/(1-7x^3-2x^6))` -/
def P1333808566751085785.Spec : Prop :=
  ∀ n, P1333808566751085785.a n = A225879 n

end A225879

/-! ## A225879.P204151584864745354

`A103841(A294444(n+1))`
-/

namespace A225879.P204151584864745354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103841 (A294444 (n + 1)).toNat

end

end A225879.P204151584864745354

namespace A225879

/-- `A103841(A294444(n+1))` -/
def P204151584864745354.Spec : Prop :=
  ∀ n, P204151584864745354.a n = A225879 n

end A225879

/-! ## A225879.P1747152261276144571

`A382426(A080239(n+1))`
-/

namespace A225879.P1747152261276144571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382426 (A080239 (n + 1)).toNat

end

end A225879.P1747152261276144571

namespace A225879

/-- `A382426(A080239(n+1))` -/
def P1747152261276144571.Spec : Prop :=
  ∀ n, P1747152261276144571.a n = A225879 n

end A225879

/-!
# A225880: Numbers that can be expressed as the product of largest odd proper divisor and the sum of odd proper divisors.

The programs for A225880, there is no canonical definition to state claims against.
-/

/-! ## A225880.P5621629894595734736

`A046528(n+2)*A094502(n+2)`
-/

namespace A225880.P5621629894595734736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046528 (n + 2) * A094502 (n + 2)

end

end A225880.P5621629894595734736

/-! ## A225880.P16536799879000703934

`2^A048947(n+2)*A046528(n+2)`
-/

namespace A225880.P16536799879000703934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A048947 (n + 2) : ℤ) * (A046528 (n + 2) : ℚ)

end

end A225880.P16536799879000703934

/-! ## A225880.P6950780558581450747

`A000079(A048947(n+2))*A046528(n+2)`
-/

namespace A225880.P6950780558581450747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A048947 (n + 2)).toNat * A046528 (n + 2)

end

end A225880.P6950780558581450747

/-! ## A225880.P14705321533337617651

`∩[A363121(n+1), A383428(n+1)]`
-/

namespace A225880.P14705321533337617651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225880.P14705321533337617651

/-! ## A225880.P2716380554278172780

`A000082(A046528(n+2))`
-/

namespace A225880.P2716380554278172780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000082 (A046528 (n + 2)).toNat

end

end A225880.P2716380554278172780

/-!
# A225882: Numbers k such that core(k) is equal to the sum of the proper square divisors of k, where core(k) = A007913(k).

The programs for A225882, there is no canonical definition to state claims against.
-/

/-! ## A225882.P11856426645086176445

`filter[A386745(n), A011715(#)]`
-/

namespace A225882.P11856426645086176445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386745 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011715 (f1 j).toNat = 1) n)

end

end A225882.P11856426645086176445

/-!
# A225883: a(n) = (-1)^n * (1 - 2^n).

The programs for A225883, the canonical program `A225883.P7216556814437295336` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225883 has offset 0).

The definition of A225883 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^n*(1-2^n)` (program `A225883.P7216556814437295336`, by `A225883.P7216556814437295336.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A225883.P4028474419491833441

`ogf(x/(1+3x+2x^2))`
-/

namespace A225883.P4028474419491833441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, 3, 2] n

end

end A225883.P4028474419491833441

namespace A225883

/-- `ogf(x/(1+3x+2x^2))` -/
def P4028474419491833441.Spec : Prop :=
  ∀ n, P4028474419491833441.a n = A225883 n

end A225883

/-! ## A225883.P7216556814437295336

`(-1)^n*(1-2^n)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A225883

/-- `(-1)^n*(1-2^n)` -/
def P7216556814437295336.Spec : Prop :=
  ∀ n, P7216556814437295336.a n = A225883 n

theorem P7216556814437295336.correct : P7216556814437295336.Spec := by
  intro n
  simp only [A225883]

end A225883

/-! ## A225883.P8846860644403472499

`(-2)^(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A225883.P8846860644403472499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (-2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1)

end

end A225883.P8846860644403472499

namespace A225883

/-- `(-2)^(n-1)-a(n-1)` -/
def P8846860644403472499.Spec : Prop :=
  ∀ n, P8846860644403472499.a n = (A225883 n : ℚ)

end A225883

/-! ## A225883.P1838426788438802420

`∑{#}[n-1, 2^#*(-1)^(n+1)]`
-/

namespace A225883.P1838426788438802420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (2 ^ k : ℤ) * (-1) ^ (n + 1)

end

end A225883.P1838426788438802420

namespace A225883

/-- `∑{#}[n-1, 2^#*(-1)^(n+1)]` -/
def P1838426788438802420.Spec : Prop :=
  ∀ n, P1838426788438802420.a n = A225883 n

end A225883

/-! ## A225883.P3089272616928180411

`Δ[and(1, n+1)-2*a(n-1)]` with `a(0)=0`
-/

namespace A225883.P3089272616928180411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (Nat.land 1 (n + 1) : ℤ) - 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A225883.P3089272616928180411

namespace A225883

/-- `Δ[and(1, n+1)-2*a(n-1)]` -/
def P3089272616928180411.Spec : Prop :=
  ∀ n, P3089272616928180411.a n = A225883 n

end A225883

/-! ## A225883.P12103587731828336047

`xor(abs(a(n-1))+1, -a(n-1))` with `a(0)=0`
-/

namespace A225883.P12103587731828336047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (|a (n - 1)| + 1) (-a (n - 1))

end

end A225883.P12103587731828336047

namespace A225883

/-- `xor(abs(a(n-1))+1, -a(n-1))` -/
def P12103587731828336047.Spec : Prop :=
  ∀ n, P12103587731828336047.a n = A225883 n

end A225883

/-! ## A225883.P10124850800047185187

`gcd(3, a(n-1))-2*(a(n-1)+1)` with `a(0)=0`
-/

namespace A225883.P10124850800047185187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Int.gcd 3 (a (n - 1)) : ℤ) - 2 * (a (n - 1) + 1)

end

end A225883.P10124850800047185187

namespace A225883

/-- `gcd(3, a(n-1))-2*(a(n-1)+1)` -/
def P10124850800047185187.Spec : Prop :=
  ∀ n, P10124850800047185187.a n = A225883 n

end A225883

/-! ## A225883.P16753905863134459955

`a(n-2)-3*(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A225883.P16753905863134459955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) - 3 * (a (n - 1) + a (n - 2))

end

end A225883.P16753905863134459955

namespace A225883

/-- `a(n-2)-3*(a(n-1)+a(n-2))` -/
def P16753905863134459955.Spec : Prop :=
  ∀ n, P16753905863134459955.a n = A225883 n

theorem P16753905863134459955.correct : P16753905863134459955.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A225883, Nat.add_sub_cancel, A225883.P16753905863134459955.a, A225883.P7216556814437295336.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A225883, Nat.add_sub_cancel, A225883.P16753905863134459955.a, A225883.P7216556814437295336.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A225883

/-! ## A225883.P4171409448599884632

`A080924(n+1)-2^n`
-/

namespace A225883.P4171409448599884632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080924 (n + 1) - (2 ^ n : ℤ)

end

end A225883.P4171409448599884632

namespace A225883

/-- `A080924(n+1)-2^n` -/
def P4171409448599884632.Spec : Prop :=
  ∀ n, P4171409448599884632.a n = A225883 n

end A225883

/-! ## A225883.P12840229239739702596

`A033999(n)-A122803(n)`
-/

namespace A225883.P12840229239739702596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n - A122803 n

end

end A225883.P12840229239739702596

namespace A225883

/-- `A033999(n)-A122803(n)` -/
def P12840229239739702596.Spec : Prop :=
  ∀ n, P12840229239739702596.a n = A225883 n

end A225883

/-! ## A225883.P4941932833831387332

`A167193(n)-A077925(n)`
-/

namespace A225883.P4941932833831387332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167193 n - A077925 n

end

end A225883.P4941932833831387332

namespace A225883

/-- `A167193(n)-A077925(n)` -/
def P4941932833831387332.Spec : Prop :=
  ∀ n, P4941932833831387332.a n = A225883 n

end A225883

/-! ## A225883.P15583311981219905816

`A280412(n)-A051049(n)`
-/

namespace A225883.P15583311981219905816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280412 n - A051049 n

end

end A225883.P15583311981219905816

namespace A225883

/-- `A280412(n)-A051049(n)` -/
def P15583311981219905816.Spec : Prop :=
  ∀ n, P15583311981219905816.a n = A225883 n

end A225883

/-! ## A225883.P6079664788840548739

`A122959(n)-A248155(n)`
-/

namespace A225883.P6079664788840548739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122959 n - A248155 n

end

end A225883.P6079664788840548739

namespace A225883

/-- `A122959(n)-A248155(n)` -/
def P6079664788840548739.Spec : Prop :=
  ∀ n, P6079664788840548739.a n = A225883 n

end A225883

/-! ## A225883.P18282229999745251859

`A277866(n)-A099430(n)`
-/

namespace A225883.P18282229999745251859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277866 n - A099430 n

end

end A225883.P18282229999745251859

namespace A225883

/-- `A277866(n)-A099430(n)` -/
def P18282229999745251859.Spec : Prop :=
  ∀ n, P18282229999745251859.a n = A225883 n

end A225883

/-! ## A225883.P11041814572505527006

`A056594(2*n)-A122803(n)`
-/

namespace A225883.P11041814572505527006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) - A122803 n

end

end A225883.P11041814572505527006

namespace A225883

/-- `A056594(2*n)-A122803(n)` -/
def P11041814572505527006.Spec : Prop :=
  ∀ n, P11041814572505527006.a n = A225883 n

end A225883

/-! ## A225883.P18390592857911108791

`A066532(n+1)-A059222(n+1)`
-/

namespace A225883.P18390592857911108791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066532 (n + 1) - A059222 (n + 1)

end

end A225883.P18390592857911108791

namespace A225883

/-- `A066532(n+1)-A059222(n+1)` -/
def P18390592857911108791.Spec : Prop :=
  ∀ n, P18390592857911108791.a n = A225883 n

end A225883

/-! ## A225883.P9529950114905299898

`A117569(2*n+1)-A122803(n)`
-/

namespace A225883.P9529950114905299898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117569 (2 * n + 1) - A122803 n

end

end A225883.P9529950114905299898

namespace A225883

/-- `A117569(2*n+1)-A122803(n)` -/
def P9529950114905299898.Spec : Prop :=
  ∀ n, P9529950114905299898.a n = A225883 n

end A225883

/-! ## A225883.P7385351541878183469

`A033999(n)-A000079(n)*A033999(n)`
-/

namespace A225883.P7385351541878183469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n - A000079 n * A033999 n

end

end A225883.P7385351541878183469

namespace A225883

/-- `A033999(n)-A000079(n)*A033999(n)` -/
def P7385351541878183469.Spec : Prop :=
  ∀ n, P7385351541878183469.a n = A225883 n

theorem P7385351541878183469.correct : P7385351541878183469.Spec := by
  intro n
  simp only [A225883, Nat.add_sub_cancel, A225883.P7385351541878183469.a, A225883.P7216556814437295336.a, A000079, A000079.P10855139691139572931.a, A033999, A033999.P17703899380244199787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A225883

/-! ## A225883.P2318883465709969382

`A000079(n)/A122803(n)-A122803(n)`
-/

namespace A225883.P2318883465709969382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / (A122803 n : ℚ) - (A122803 n : ℚ)

end

end A225883.P2318883465709969382

namespace A225883

/-- `A000079(n)/A122803(n)-A122803(n)` -/
def P2318883465709969382.Spec : Prop :=
  ∀ n, P2318883465709969382.a n = (A225883 n : ℚ)

end A225883

/-! ## A225883.P242225836947350494

`A000034(n+1)-(A122803(n)+A000034(n))`
-/

namespace A225883.P242225836947350494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) - (A122803 n + A000034 n)

end

end A225883.P242225836947350494

namespace A225883

/-- `A000034(n+1)-(A122803(n)+A000034(n))` -/
def P242225836947350494.Spec : Prop :=
  ∀ n, P242225836947350494.a n = A225883 n

end A225883

/-!
# A225884: Triangular numbers whose binary and decimal reversals are also triangular numbers.

The programs for A225884, there is no canonical definition to state claims against.
-/

/-! ## A225884.P2461355694167860893

`∩[∑[n], lt[A275806(n), 2]]`
-/

namespace A225884.P2461355694167860893
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f4 j < (f5 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = x) n

end

end A225884.P2461355694167860893

/-! ## A225884.P11762371262715515942

`A061455(record[A218704(n)])`
-/

namespace A225884.P11762371262715515942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218704 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061455 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A225884.P11762371262715515942

/-! ## A225884.P7617744335148768793

`A061455(A018231(n+1))`
-/

namespace A225884.P7617744335148768793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061455 (A018231 (n + 1)).toNat

end

end A225884.P7617744335148768793

/-!
# A225885: Square numbers that remain square when their most-significant (or leftmost) digit is removed.

The programs for A225885, there is no canonical definition to state claims against.
-/

/-! ## A225885.P17676000756714855793

`A249587(n+1)²`
-/

namespace A225885.P17676000756714855793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249587 (n + 1) ^ 2

end

end A225885.P17676000756714855793

/-! ## A225885.P14957625307327725380

`A249587(n+1)^A020639(2*(n+2))`
-/

namespace A225885.P14957625307327725380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249587 (n + 1) : ℚ) ^ (A020639 (2 * (n + 2)) : ℤ)

end

end A225885.P14957625307327725380

/-! ## A225885.P418872748589389455

`A249587(n+1)^ceil((A040000(n)+1)/ϕ)`
-/

namespace A225885.P418872748589389455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249587 (n + 1) : ℚ) ^ (⌈(A040000 n + 1 : ℝ) / Real.goldenRatio⌉ : ℤ)

end

end A225885.P418872748589389455

/-! ## A225885.P15801016746140887973

`A249587(A000027(n+1))*A249587(n+1)`
-/

namespace A225885.P15801016746140887973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249587 (A000027 (n + 1)).toNat * A249587 (n + 1)

end

end A225885.P15801016746140887973

/-! ## A225885.P5072265448210061228

`A249587(n+1)^A000005(A008578(n+1))`
-/

namespace A225885.P5072265448210061228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249587 (n + 1) : ℚ) ^ (A000005 (A008578 (n + 1)).toNat : ℤ)

end

end A225885.P5072265448210061228

/-! ## A225885.P6921413486333956815

`A249587(n+1)^A046072(A046388(n+1))`
-/

namespace A225885.P6921413486333956815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249587 (n + 1) : ℚ) ^ (A046072 (A046388 (n + 1)).toNat : ℤ)

end

end A225885.P6921413486333956815

/-! ## A225885.P16300099476501899040

`A249587(n+1)^A325636(A106282(n+1))`
-/

namespace A225885.P16300099476501899040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249587 (n + 1) : ℚ) ^ (A325636 (A106282 (n + 1)).toNat : ℤ)

end

end A225885.P16300099476501899040

/-! ## A225885.P9829273154557432878

`A249587(n+1)^A325636(A219528(n+1))`
-/

namespace A225885.P9829273154557432878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249587 (n + 1) : ℚ) ^ (A325636 (A219528 (n + 1)).toNat : ℤ)

end

end A225885.P9829273154557432878

/-!
# A225887: a(n) = A212205(2*n + 1).

The programs for A225887, the canonical program `A225887.P18168249121695771555` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225887 has offset 0).

The definition of A225887 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225887.P16999891495604626863

`A212205(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A225887.P16999891495604626863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212205 (2 * n + 1)

end

end A225887.P16999891495604626863

namespace A225887

/-- `A212205(2*n+1)` -/
def P16999891495604626863.Spec : Prop :=
  ∀ n, P16999891495604626863.a n = A225887 n

end A225887

/-! ## A225887.P9265007652430472003

`record[and((-1)^n, A212205(n))]`
-/

namespace A225887.P9265007652430472003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((-1) ^ n) (A212205 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225887.P9265007652430472003

namespace A225887

/-- `record[and((-1)^n, A212205(n))]` -/
def P9265007652430472003.Spec : Prop :=
  ∀ n, P9265007652430472003.a n = A225887 n

end A225887

/-! ## A225887.P18168249121695771555

`6*a(n-1)-A006318(n)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A225887

/-- `6*a(n-1)-A006318(n)` -/
def P18168249121695771555.Spec : Prop :=
  ∀ n, P18168249121695771555.a n = A225887 n

theorem P18168249121695771555.correct : P18168249121695771555.Spec := by
  intro n
  simp only [A225887]

end A225887

/-! ## A225887.P12173825145457236648

`record[A212205(A093411(n))]`
-/

namespace A225887.P12173825145457236648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212205 (A093411 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225887.P12173825145457236648

namespace A225887

/-- `record[A212205(A093411(n))]` -/
def P12173825145457236648.Spec : Prop :=
  ∀ n, P12173825145457236648.a n = A225887 n

end A225887

/-! ## A225887.P109635037409942972

`record[A212205(A000265(n+1))]`
-/

namespace A225887.P109635037409942972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212205 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225887.P109635037409942972

namespace A225887

/-- `record[A212205(A000265(n+1))]` -/
def P109635037409942972.Spec : Prop :=
  ∀ n, P109635037409942972.a n = A225887 n

end A225887

/-! ## A225887.P13555486659421238908

`record[A212205(A014681(n)+1)]`
-/

namespace A225887.P13555486659421238908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212205 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225887.P13555486659421238908

namespace A225887

/-- `record[A212205(A014681(n)+1)]` -/
def P13555486659421238908.Spec : Prop :=
  ∀ n, P13555486659421238908.a n = A225887 n

end A225887

/-! ## A225887.P11422083564100849612

`A212205(A005408(n))/A043277(A031941(n+1))`
-/

namespace A225887.P11422083564100849612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212205 (A005408 n).toNat : ℚ) / (A043277 (A031941 (n + 1)).toNat : ℚ)

end

end A225887.P11422083564100849612

namespace A225887

/-- `A212205(A005408(n))/A043277(A031941(n+1))` -/
def P11422083564100849612.Spec : Prop :=
  ∀ n, P11422083564100849612.a n = (A225887 n : ℚ)

end A225887

/-! ## A225887.P2709850286471308146

`A212205(A005408(n))/A043290(A043276(n+1))`
-/

namespace A225887.P2709850286471308146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212205 (A005408 n).toNat : ℚ) / (A043290 (A043276 (n + 1)).toNat : ℚ)

end

end A225887.P2709850286471308146

namespace A225887

/-- `A212205(A005408(n))/A043290(A043276(n+1))` -/
def P2709850286471308146.Spec : Prop :=
  ∀ n, P2709850286471308146.a n = (A225887 n : ℚ)

end A225887

/-! ## A225887.P9817740291721961941

`A109980(n+1)/2`
-/

namespace A225887.P9817740291721961941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109980 (n + 1) : ℚ) / 2

end

end A225887.P9817740291721961941

namespace A225887

/-- `A109980(n+1)/2` -/
def P9817740291721961941.Spec : Prop :=
  ∀ n, P9817740291721961941.a n = (A225887 n : ℚ)

end A225887

/-! ## A225887.P15207913795274147468

`A178594(n+3)/6`
-/

namespace A225887.P15207913795274147468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178594 (n + 3) : ℚ) / 6

end

end A225887.P15207913795274147468

namespace A225887

/-- `A178594(n+3)/6` -/
def P15207913795274147468.Spec : Prop :=
  ∀ n, P15207913795274147468.a n = (A225887 n : ℚ)

end A225887

/-! ## A225887.P10589073927842388010

`A109979(∑[n+1])/2`
-/

namespace A225887.P10589073927842388010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109979 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A225887.P10589073927842388010

namespace A225887

/-- `A109979(∑[n+1])/2` -/
def P10589073927842388010.Spec : Prop :=
  ∀ n, P10589073927842388010.a n = (A225887 n : ℚ)

end A225887

/-!
# A225888: Primes p such that neither 2 nor 3 are primitive roots, but together 2 and 3 generate the nonzero residues mod p.

The programs for A225888, there is no canonical definition to state claims against.
-/

/-! ## A225888.P8896113116435339952

`∩[A019336(n+1), A285513(n+1)]`
-/

namespace A225888.P8896113116435339952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225888.P8896113116435339952

/-! ## A225888.P9905882228960727826

`∩[A167794(n+1), A285513(n+1)]`
-/

namespace A225888.P9905882228960727826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225888.P9905882228960727826

/-! ## A225888.P16168853657228584171

`∩[A222717(n+1), A320384(n+1)]`
-/

namespace A225888.P16168853657228584171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222717 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225888.P16168853657228584171

/-! ## A225888.P10051406008242597841

`∩[A285513(n+1), A320384(n+1)]`
-/

namespace A225888.P10051406008242597841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225888.P10051406008242597841

/-!
# A225889: Least prime p_m such that n = p_m-p_{m-1}+...+(-1)^(m-k)*p_k for some 0<k<m, where p_j denotes the j-th prime.

The programs for A225889, there is no canonical definition to state claims against.
-/

/-! ## A225889.P4680008097424166284

`p?[C(A334220(n+4), A334201(n+5))]`
-/

namespace A225889.P4680008097424166284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A334220 (n + 4)).toNat (A334201 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A225889.P4680008097424166284

/-! ## A225889.P12940726521693962558

`p?[A120229(2*n+1)%A120232(2*(n+1))]`
-/

namespace A225889.P12940726521693962558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120229 (2 * n + 1)) (A120232 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225889.P12940726521693962558

/-! ## A225889.P12971144457869033923

`A222579(n+1)-A321537(A222555(2*n+5))`
-/

namespace A225889.P12971144457869033923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222579 (n + 1) - A321537 (A222555 (2 * n + 5)).toNat

end

end A225889.P12971144457869033923

/-!
# A225891: Numbers obtained by rotating left the indices in the prime signature of n.

The programs for A225891, there is no canonical definition to state claims against.
-/

/-! ## A225891.P11497596676944990264

`A069799(A105119(A069799(n+1)))`
-/

namespace A225891.P11497596676944990264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069799 (A105119 (A069799 (n + 1)).toNat).toNat

end

end A225891.P11497596676944990264

/-! ## A225891.P4210437389702103716

`gcd(A069799(A129202(n)), A295417(n+1))`
-/

namespace A225891.P4210437389702103716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A069799 (A129202 n).toNat) (A295417 (n + 1))

end

end A225891.P4210437389702103716

/-! ## A225891.P13747096780606749225

`A242419(A105119(A242419(n+1)))`
-/

namespace A225891.P13747096780606749225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242419 (A105119 (A242419 (n + 1)).toNat).toNat

end

end A225891.P13747096780606749225

/-! ## A225891.P5347945360478189558

`A295417(n+1)%(A242419(A242415(n+1))+A085079(n+1))`
-/

namespace A225891.P5347945360478189558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295417 (n + 1)) (A242419 (A242415 (n + 1)).toNat + A085079 (n + 1))

end

end A225891.P5347945360478189558

/-!
# A225892: Numbers of the form p^2 * (p^2 + 1) where p is in A225856.

The programs for A225892, the canonical program `A225892.P12355316938491472002` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225892 has offset 1).

The definition of A225892 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1066 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225892.P16757558042957118458

`A071253(A225856(n+1))`
-/

namespace A225892.P16757558042957118458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071253 (A225856 (n + 1)).toNat

end

end A225892.P16757558042957118458

namespace A225892

/-- `A071253(A225856(n+1))` -/
def P16757558042957118458.Spec : Prop :=
  ∀ n, P16757558042957118458.a n = A225892 (n + 1)

end A225892

/-! ## A225892.P12355316938491472002

`A071253(p?[A049533(n+1)])`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A225892

/-- `A071253(p?[A049533(n+1)])` -/
def P12355316938491472002.Spec : Prop :=
  ∀ n, P12355316938491472002.a n = A225892 (n + 1)

theorem P12355316938491472002.correct : P12355316938491472002.Spec := by
  intro n
  simp only [A225892, Nat.add_sub_cancel]

end A225892

/-! ## A225892.P9380515996275564717

`2*A037270(p?[A049533(n+1)])`
-/

namespace A225892.P9380515996275564717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037270 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A225892.P9380515996275564717

namespace A225892

/-- `2*A037270(p?[A049533(n+1)])` -/
def P9380515996275564717.Spec : Prop :=
  ∀ n, P9380515996275564717.a n = A225892 (n + 1)

end A225892

/-! ## A225892.P11030132803937911586

`record[A014963(n+2)²*A188525(n+2)]`
-/

namespace A225892.P11030132803937911586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) ^ 2 * A188525 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225892.P11030132803937911586

namespace A225892

/-- `record[A014963(n+2)²*A188525(n+2)]` -/
def P11030132803937911586.Spec : Prop :=
  ∀ n, P11030132803937911586.a n = A225892 (n + 1)

end A225892

/-! ## A225892.P8555760756197329019

`record[A020639(n+2)²*A188525(n+2)]`
-/

namespace A225892.P8555760756197329019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 2 * A188525 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225892.P8555760756197329019

namespace A225892

/-- `record[A020639(n+2)²*A188525(n+2)]` -/
def P8555760756197329019.Spec : Prop :=
  ∀ n, P8555760756197329019.a n = A225892 (n + 1)

end A225892

/-! ## A225892.P14582351108287937649

`p?[A049533(n+1)]*A034262(A225856(n+1))`
-/

namespace A225892.P14582351108287937649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A034262 (A225856 (n + 1)).toNat

end

end A225892.P14582351108287937649

namespace A225892

/-- `p?[A049533(n+1)]*A034262(A225856(n+1))` -/
def P14582351108287937649.Spec : Prop :=
  ∀ n, P14582351108287937649.a n = A225892 (n + 1)

end A225892

/-! ## A225892.P13518129153080221008

`A155977(p?[A049533(n+1)])/A225856(n+1)`
-/

namespace A225892.P13518129153080221008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049533 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155977 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / (A225856 (n + 1) : ℚ)

end

end A225892.P13518129153080221008

namespace A225892

/-- `A155977(p?[A049533(n+1)])/A225856(n+1)` -/
def P13518129153080221008.Spec : Prop :=
  ∀ n, P13518129153080221008.a n = (A225892 (n + 1) : ℚ)

end A225892

/-! ## A225892.P15826634169148633686

`∩[A071253(n), A225882(n+1)]`
-/

namespace A225892.P15826634169148633686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071253 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225892.P15826634169148633686

namespace A225892

/-- `∩[A071253(n), A225882(n+1)]` -/
def P15826634169148633686.Spec : Prop :=
  ∀ n, (P15826634169148633686.a n : ℤ) = A225892 (n + 1)

end A225892

/-! ## A225892.P1998535288270012169

`∩[A063663(n+1), A225882(n+1)]`
-/

namespace A225892.P1998535288270012169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225892.P1998535288270012169

namespace A225892

/-- `∩[A063663(n+1), A225882(n+1)]` -/
def P1998535288270012169.Spec : Prop :=
  ∀ n, (P1998535288270012169.a n : ℤ) = A225892 (n + 1)

end A225892

/-! ## A225892.P3113577324103230420

`∩[A069187(n+1), A225882(n+1)]`
-/

namespace A225892.P3113577324103230420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225892.P3113577324103230420

namespace A225892

/-- `∩[A069187(n+1), A225882(n+1)]` -/
def P3113577324103230420.Spec : Prop :=
  ∀ n, (P3113577324103230420.a n : ℤ) = A225892 (n + 1)

end A225892

/-!
# A225893: Numbers of the form p^2 * (p^2 + 1), where p = A224718.

The programs for A225893, there is no canonical definition to state claims against.
-/

/-! ## A225893.P8826146217859148480

`A071253(A224718(n+1))`
-/

namespace A225893.P8826146217859148480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071253 (A224718 (n + 1)).toNat

end

end A225893.P8826146217859148480

/-! ## A225893.P3746636749756250970

`A071253(p?[A049532(n+1)])`
-/

namespace A225893.P3746636749756250970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071253 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A225893.P3746636749756250970

/-! ## A225893.P13045442316662000409

`A071253(p?[A080666(n+1)])`
-/

namespace A225893.P13045442316662000409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071253 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A225893.P13045442316662000409

/-! ## A225893.P16932721588544567466

`A071253(record[A020639(A049532(n+1))])`
-/

namespace A225893.P16932721588544567466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A049532 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071253 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A225893.P16932721588544567466

/-! ## A225893.P663035715859233105

`A071253(∩[A000040(n+1), A049532(n+1)])`
-/

namespace A225893.P663035715859233105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049532 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071253 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A225893.P663035715859233105

/-!
# A225894: Number of n X 2 binary arrays whose sum with another n X 2 binary array containing no more than a single 1 has rows and columns in lexicographically nondecreasing order.

The programs for A225894, the canonical program `A225894.P15108305860955135822` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225894 has offset 1).

The definition of A225894 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225894.P5198574320908455900

`ogf((4-8x+13x^2-7x^3+2x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A225894.P5198574320908455900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -8, 13, -7, 2] [1, -5, 10, -10, 5, -1] n

end

end A225894.P5198574320908455900

namespace A225894

/-- `ogf((4-8x+13x^2-7x^3+2x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P5198574320908455900.Spec : Prop :=
  ∀ n, P5198574320908455900.a n = A225894 (n + 1)

end A225894

/-! ## A225894.P1041691972541856410

`(∑[(n+1)/3]+1)*((n+1)²+2)`
-/

namespace A225894.P1041691972541856410
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * ((n + 1) ^ 2 + 2 : ℚ)

end

end A225894.P1041691972541856410

namespace A225894

/-- `(∑[(n+1)/3]+1)*((n+1)²+2)` -/
def P1041691972541856410.Spec : Prop :=
  ∀ n, P1041691972541856410.a n = (A225894 (n + 1) : ℚ)

end A225894

/-! ## A225894.P3865914029181894042

`C(n, 2)+(∑[∑[n]+1]+1)*(n+2)`
-/

namespace A225894.P3865914029181894042
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + (∑ j ∈ Finset.range (n + 1), f1 j + 1) * (n + 2)

end

end A225894.P3865914029181894042

namespace A225894

/-- `C(n, 2)+(∑[∑[n]+1]+1)*(n+2)` -/
def P3865914029181894042.Spec : Prop :=
  ∀ n, (P3865914029181894042.a n : ℤ) = A225894 (n + 1)

end A225894

/-! ## A225894.P15108305860955135822

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=4, a(1)=12, a(2)=33, a(3)=78, a(4)=162`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A225894

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P15108305860955135822.Spec : Prop :=
  ∀ n, P15108305860955135822.a n = A225894 (n + 1)

theorem P15108305860955135822.correct : P15108305860955135822.Spec := by
  intro n
  simp only [A225894, Nat.add_sub_cancel]

end A225894

/-! ## A225894.P4495665974153578456

`∑[∑[A096376(n)]+n]+2`
-/

namespace A225894.P4495665974153578456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096376 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A225894.P4495665974153578456

namespace A225894

/-- `∑[∑[A096376(n)]+n]+2` -/
def P4495665974153578456.Spec : Prop :=
  ∀ n, P4495665974153578456.a n = A225894 (n + 1)

end A225894

/-! ## A225894.P5593540724602735369

`∑[∑[A005893(n)+1+n]]+2`
-/

namespace A225894.P5593540724602735369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n + 1 + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A225894.P5593540724602735369

namespace A225894

/-- `∑[∑[A005893(n)+1+n]]+2` -/
def P5593540724602735369.Spec : Prop :=
  ∀ n, P5593540724602735369.a n = A225894 (n + 1)

end A225894

/-! ## A225894.P9039846921360367128

`∑[A005894(n)+∑[n+1]]+2`
-/

namespace A225894.P9039846921360367128
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005894 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A225894.P9039846921360367128

namespace A225894

/-- `∑[A005894(n)+∑[n+1]]+2` -/
def P9039846921360367128.Spec : Prop :=
  ∀ n, P9039846921360367128.a n = A225894 (n + 1)

end A225894

/-! ## A225894.P13203712997814360503

`∑[∑[A000217(2*n)+2]+n]+2`
-/

namespace A225894.P13203712997814360503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A225894.P13203712997814360503

namespace A225894

/-- `∑[∑[A000217(2*n)+2]+n]+2` -/
def P13203712997814360503.Spec : Prop :=
  ∀ n, P13203712997814360503.a n = A225894 (n + 1)

end A225894

/-! ## A225894.P1108317899891578421

`A105163(n+1)+∑[∑[2*n²+3]]`
-/

namespace A225894.P1108317899891578421
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2 + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105163 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A225894.P1108317899891578421

namespace A225894

/-- `A105163(n+1)+∑[∑[2*n²+3]]` -/
def P1108317899891578421.Spec : Prop :=
  ∀ n, P1108317899891578421.a n = A225894 (n + 1)

end A225894

/-! ## A225894.P7015960383771133033

`(n+2)*∑[∑[n+1]]+2-A006002(n)`
-/

namespace A225894.P7015960383771133033
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 2) * (∑ j ∈ Finset.range (n + 1), f1 j) + 2 : ℕ) : ℤ) - A006002 n

end

end A225894.P7015960383771133033

namespace A225894

/-- `(n+2)*∑[∑[n+1]]+2-A006002(n)` -/
def P7015960383771133033.Spec : Prop :=
  ∀ n, P7015960383771133033.a n = A225894 (n + 1)

end A225894

/-! ## A225894.P13715106408509597141

`A219846(n+1)+A133252(n)`
-/

namespace A225894.P13715106408509597141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219846 (n + 1) + A133252 n

end

end A225894.P13715106408509597141

namespace A225894

/-- `A219846(n+1)+A133252(n)` -/
def P13715106408509597141.Spec : Prop :=
  ∀ n, P13715106408509597141.a n = A225894 (n + 1)

end A225894

/-! ## A225894.P5938958828634838888

`A267707(n)+A227259(n+1)`
-/

namespace A225894.P5938958828634838888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267707 n + A227259 (n + 1)

end

end A225894.P5938958828634838888

namespace A225894

/-- `A267707(n)+A227259(n+1)` -/
def P5938958828634838888.Spec : Prop :=
  ∀ n, P5938958828634838888.a n = A225894 (n + 1)

end A225894

/-! ## A225894.P14980272268482665168

`A257890(n)+2-A161701(n)`
-/

namespace A225894.P14980272268482665168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257890 n + (2 - A161701 n)

end

end A225894.P14980272268482665168

namespace A225894

/-- `A257890(n)+2-A161701(n)` -/
def P14980272268482665168.Spec : Prop :=
  ∀ n, P14980272268482665168.a n = A225894 (n + 1)

end A225894

/-! ## A225894.P13382073905649350752

`A004320(n)+A140090(n)+4`
-/

namespace A225894.P13382073905649350752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004320 n + (A140090 n + 4)

end

end A225894.P13382073905649350752

namespace A225894

/-- `A004320(n)+A140090(n)+4` -/
def P13382073905649350752.Spec : Prop :=
  ∀ n, P13382073905649350752.a n = A225894 (n + 1)

end A225894

/-! ## A225894.P8345507657634399177

`A219846(n+1)+∑[A006000(n)]`
-/

namespace A225894.P8345507657634399177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219846 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225894.P8345507657634399177

namespace A225894

/-- `A219846(n+1)+∑[A006000(n)]` -/
def P8345507657634399177.Spec : Prop :=
  ∀ n, P8345507657634399177.a n = A225894 (n + 1)

end A225894

/-! ## A225894.P18380409700663236564

`A223718(n+1)+A144335(n+1)`
-/

namespace A225894.P18380409700663236564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223718 (n + 1) + A144335 (n + 1)

end

end A225894.P18380409700663236564

namespace A225894

/-- `A223718(n+1)+A144335(n+1)` -/
def P18380409700663236564.Spec : Prop :=
  ∀ n, P18380409700663236564.a n = A225894 (n + 1)

end A225894

/-! ## A225894.P17459343209145093830

`A005582(n+1)+A002817(n)+2`
-/

namespace A225894.P17459343209145093830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 (n + 1) + (A002817 n + 2)

end

end A225894.P17459343209145093830

namespace A225894

/-- `A005582(n+1)+A002817(n)+2` -/
def P17459343209145093830.Spec : Prop :=
  ∀ n, P17459343209145093830.a n = A225894 (n + 1)

end A225894

/-! ## A225894.P13342430265893747763

`A000292(n+1)+A132366(n)+2`
-/

namespace A225894.P13342430265893747763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (A132366 n + 2)

end

end A225894.P13342430265893747763

namespace A225894

/-- `A000292(n+1)+A132366(n)+2` -/
def P13342430265893747763.Spec : Prop :=
  ∀ n, P13342430265893747763.a n = A225894 (n + 1)

end A225894

/-! ## A225894.P11922431697564033515

`A000125(n)+A132366(n)+A014206(n)`
-/

namespace A225894.P11922431697564033515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n + (A132366 n + A014206 n)

end

end A225894.P11922431697564033515

namespace A225894

/-- `A000125(n)+A132366(n)+A014206(n)` -/
def P11922431697564033515.Spec : Prop :=
  ∀ n, P11922431697564033515.a n = A225894 (n + 1)

end A225894

/-! ## A225894.P11421219271671320576

`A227161(n)+A004255(n+2)`
-/

namespace A225894.P11421219271671320576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227161 n + A004255 (n + 2)

end

end A225894.P11421219271671320576

namespace A225894

/-- `A227161(n)+A004255(n+2)` -/
def P11421219271671320576.Spec : Prop :=
  ∀ n, P11421219271671320576.a n = A225894 (n + 1)

end A225894

/-!
# A225895: Number of n X 3 binary arrays whose sum with another n X 3 binary array containing no more than a single 1 has rows and columns in lexicographically nondecreasing order.

The programs for A225895, there is no canonical definition to state claims against.
-/

/-! ## A225895.P12648941762939366500

`A225900(∑[n+2]+4)`
-/

namespace A225895.P12648941762939366500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225900 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A225895.P12648941762939366500

/-! ## A225895.P5786218242807732703

`A225900(A167614(n+1))+A025469(n)`
-/

namespace A225895.P5786218242807732703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225900 (A167614 (n + 1)).toNat + A025469 n

end

end A225895.P5786218242807732703

/-! ## A225895.P7634010421645995110

`A225900(A167614(n+1))+A061858(n)`
-/

namespace A225895.P7634010421645995110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225900 (A167614 (n + 1)).toNat + A061858 n

end

end A225895.P7634010421645995110

/-! ## A225895.P18393967816812236776

`A225900(A167614(n+1))+A185037(n)`
-/

namespace A225895.P18393967816812236776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225900 (A167614 (n + 1)).toNat + A185037 n

end

end A225895.P18393967816812236776

/-! ## A225895.P2769691800485158459

`A225900(A167614(n+1))+A185284(n)`
-/

namespace A225895.P2769691800485158459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225900 (A167614 (n + 1)).toNat + A185284 n

end

end A225895.P2769691800485158459

/-!
# A225896: Number of nX4 binary arrays whose sum with another nX4 binary array containing no more than a single 1 has rows and columns in lexicographically nondecreasing order.

The programs for A225896, there is no canonical definition to state claims against.
-/

/-! ## A225896.P138922475845743094

`A225900(A141214(n)+7)`
-/

namespace A225896.P138922475845743094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225900 (A141214 n + 7).toNat

end

end A225896.P138922475845743094

/-! ## A225896.P1814332660076383524

`A225900(A052905(n)+9)`
-/

namespace A225896.P1814332660076383524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225900 (A052905 n + 9).toNat

end

end A225896.P1814332660076383524

/-! ## A225896.P16285492168395254401

`A225900(A167614(n+2)+1)`
-/

namespace A225896.P16285492168395254401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225900 (A167614 (n + 2) + 1).toNat

end

end A225896.P16285492168395254401

/-! ## A225896.P8871797240760249820

`A225900(eq[5, A131818(n+1)])`
-/

namespace A225896.P8871797240760249820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225900 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225896.P8871797240760249820

/-! ## A225896.P11109002530828161257

`A225900(A000124(n+4)-(n+1))`
-/

namespace A225896.P11109002530828161257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225900 (A000124 (n + 4) - (n + 1 : ℤ)).toNat

end

end A225896.P11109002530828161257

/-!
# A225897: Number of nX5 binary arrays whose sum with another nX5 binary array containing no more than a single 1 has rows and columns in lexicographically nondecreasing order.

The programs for A225897, there is no canonical definition to state claims against.
-/

/-! ## A225897.P15688242444044862355

`A225900(A167499(n+3))`
-/

namespace A225897.P15688242444044862355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225900 (A167499 (n + 3)).toNat

end

end A225897.P15688242444044862355

/-! ## A225897.P13344182240995940030

`A225900(A051936(n+4)+14)`
-/

namespace A225897.P13344182240995940030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225900 (A051936 (n + 4) + 14).toNat

end

end A225897.P13344182240995940030

/-! ## A225897.P277280589746447311

`A225900(eq[6, A131818(n+1)])`
-/

namespace A225897.P277280589746447311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225900 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225897.P277280589746447311

/-! ## A225897.P5290930825651317278

`A225900(A374005(n+1))`
-/

namespace A225897.P5290930825651317278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225900 (A374005 (n + 1)).toNat

end

end A225897.P5290930825651317278

/-! ## A225897.P8767259538595428533

`A225900(A046691(n+3))`
-/

namespace A225897.P8767259538595428533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225900 (A046691 (n + 3)).toNat

end

end A225897.P8767259538595428533

/-!
# A225898: Number of nX6 binary arrays whose sum with another nX6 binary array containing no more than a single 1 has rows and columns in lexicographically nondecreasing order.

The programs for A225898, there is no canonical definition to state claims against.
-/

/-! ## A225898.P16104277757513223329

`A225900(A000124(n+6)-(n+1))`
-/

namespace A225898.P16104277757513223329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225900 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A225898.P16104277757513223329

/-! ## A225898.P8432904437497750077

`A225900(A374007(n+1))`
-/

namespace A225898.P8432904437497750077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225900 (A374007 (n + 1)).toNat

end

end A225898.P8432904437497750077

/-! ## A225898.P16615745261471895229

`A225900(A052905(n+3))`
-/

namespace A225898.P16615745261471895229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225900 (A052905 (n + 3)).toNat

end

end A225898.P16615745261471895229

/-! ## A225898.P3582536258031965857

`A225900(eq[3, A219347(n)])`
-/

namespace A225898.P3582536258031965857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225900 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225898.P3582536258031965857

/-! ## A225898.P3080797378713626425

`A225900(eq[5, A193592(n)])`
-/

namespace A225898.P3080797378713626425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225900 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225898.P3080797378713626425

/-!
# A225899: Number of nX7 binary arrays whose sum with another nX7 binary array containing no more than a single 1 has rows and columns in lexicographically nondecreasing order.

The programs for A225899, there is no canonical definition to state claims against.
-/

/-! ## A225899.P3117053738703646072

`A225900(A056119(n)+28)`
-/

namespace A225899.P3117053738703646072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225900 (A056119 n + 28).toNat

end

end A225899.P3117053738703646072

/-! ## A225899.P4941725964762639791

`A225900(eq[11, A066657(n)])`
-/

namespace A225899.P4941725964762639791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225900 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225899.P4941725964762639791

/-! ## A225899.P2354104945357063310

`A225900(eq[8, A131818(n+1)])`
-/

namespace A225899.P2354104945357063310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225900 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225899.P2354104945357063310

/-! ## A225899.P8988548831807948442

`A225900(A374008(n+1))`
-/

namespace A225899.P8988548831807948442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225900 (A374008 (n + 1)).toNat

end

end A225899.P8988548831807948442

/-! ## A225899.P5099390251019851398

`A225900(A055999(n+4))`
-/

namespace A225899.P5099390251019851398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225900 (A055999 (n + 4)).toNat

end

end A225899.P5099390251019851398

