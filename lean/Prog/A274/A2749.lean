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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
# A274903: Largest prime factor of 4^n + 1.

The programs for A274903, the canonical program `A274903.P7767053460689236802` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274903 has offset 0).

The definition of A274903 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A274903.P527656561496338239

`A002587(2*n)`
-/

namespace A274903.P527656561496338239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002587 (2 * n)

end

end A274903.P527656561496338239

namespace A274903

/-- `A002587(2*n)` -/
def P527656561496338239.Spec : Prop :=
  ∀ n, P527656561496338239.a n = A274903 n

end A274903

/-! ## A274903.P7767053460689236802

`A006530(A052539(n))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A274903

/-- `A006530(A052539(n))` -/
def P7767053460689236802.Spec : Prop :=
  ∀ n, P7767053460689236802.a n = A274903 n

theorem P7767053460689236802.correct : P7767053460689236802.Spec := by
  intro n
  simp only [A274903]

end A274903

/-! ## A274903.P15050069088997427685

`A002587(A004277(n))-A000007(n)`
-/

namespace A274903.P15050069088997427685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002587 (A004277 n).toNat - A000007 n

end

end A274903.P15050069088997427685

namespace A274903

/-- `A002587(A004277(n))-A000007(n)` -/
def P15050069088997427685.Spec : Prop :=
  ∀ n, P15050069088997427685.a n = A274903 n

end A274903

/-! ## A274903.P351389168167363661

`gcd(A000038(n), A002587(A005843(n)))`
-/

namespace A274903.P351389168167363661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A002587 (A005843 n).toNat)

end

end A274903.P351389168167363661

namespace A274903

/-- `gcd(A000038(n), A002587(A005843(n)))` -/
def P351389168167363661.Spec : Prop :=
  ∀ n, (P351389168167363661.a n : ℤ) = A274903 n

end A274903

/-! ## A274903.P8740850092853896962

`lcm(A002587(A005843(n)), A033999(n))`
-/

namespace A274903.P8740850092853896962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002587 (A005843 n).toNat) (A033999 n)

end

end A274903.P8740850092853896962

namespace A274903

/-- `lcm(A002587(A005843(n)), A033999(n))` -/
def P8740850092853896962.Spec : Prop :=
  ∀ n, (P8740850092853896962.a n : ℤ) = A274903 n

end A274903

/-! ## A274903.P10379571071732029825

`A060444(eq[6, A060444(n+1)+A060444(n+1)])`
-/

namespace A274903.P10379571071732029825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060444 (n + 1) + A060444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060444 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274903.P10379571071732029825

namespace A274903

/-- `A060444(eq[6, A060444(n+1)+A060444(n+1)])` -/
def P10379571071732029825.Spec : Prop :=
  ∀ n, P10379571071732029825.a n = A274903 n

end A274903

/-! ## A274903.P11068437006402543939

`A002587(n+n)/A001222(A002586(n+1))`
-/

namespace A274903.P11068437006402543939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002587 (n + n) : ℚ) / (A001222 (A002586 (n + 1)).toNat : ℚ)

end

end A274903.P11068437006402543939

namespace A274903

/-- `A002587(n+n)/A001222(A002586(n+1))` -/
def P11068437006402543939.Spec : Prop :=
  ∀ n, P11068437006402543939.a n = (A274903 n : ℚ)

end A274903

/-! ## A274903.P10847750480266387428

`A240554(A054977(n)+A052905(n+1))`
-/

namespace A274903.P10847750480266387428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (A054977 n + A052905 (n + 1)).toNat

end

end A274903.P10847750480266387428

namespace A274903

/-- `A240554(A054977(n)+A052905(n+1))` -/
def P10847750480266387428.Spec : Prop :=
  ∀ n, P10847750480266387428.a n = A274903 n

end A274903

/-! ## A274903.P8000517531626080791

`A240554(A326584(2*(n+1))+A052905(n+1))`
-/

namespace A274903.P8000517531626080791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (A326584 (2 * (n + 1)) + A052905 (n + 1)).toNat

end

end A274903.P8000517531626080791

namespace A274903

/-- `A240554(A326584(2*(n+1))+A052905(n+1))` -/
def P8000517531626080791.Spec : Prop :=
  ∀ n, P8000517531626080791.a n = A274903 n

end A274903

/-!
# A274904: Largest prime factor of 6^n + 1.

The programs for A274904, there is no canonical definition to state claims against.
-/

/-! ## A274904.P451998266728133696

`A240554(A055999(n+3))+A000007(n)`
-/

namespace A274904.P451998266728133696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (A055999 (n + 3)).toNat + A000007 n

end

end A274904.P451998266728133696

/-! ## A274904.P17242990020439652217

`A240554(A055999(n+3))+A088157(n)`
-/

namespace A274904.P17242990020439652217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (A055999 (n + 3)).toNat + A088157 n

end

end A274904.P17242990020439652217

/-! ## A274904.P1153490163768439454

`A240554(A103517(n)+A055998(n+2)+6)`
-/

namespace A274904.P1153490163768439454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (A103517 n + A055998 (n + 2) + 6).toNat

end

end A274904.P1153490163768439454

/-! ## A274904.P5607279310699946783

`A240554(A055999(n+3))+A001223(n+1)%2`
-/

namespace A274904.P5607279310699946783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (A055999 (n + 3)).toNat + Int.tmod (A001223 (n + 1)) 2

end

end A274904.P5607279310699946783

/-! ## A274904.P104414404706845133

`A014963(2*(2*n+1))*A240554(A055999(n+3))`
-/

namespace A274904.P104414404706845133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * (2 * n + 1)) * A240554 (A055999 (n + 3)).toNat

end

end A274904.P104414404706845133

/-! ## A274904.P5887480880802607237

`A000032(A178334(n))*A240554(A055999(n+3))`
-/

namespace A274904.P5887480880802607237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A178334 n).toNat * A240554 (A055999 (n + 3)).toNat

end

end A274904.P5887480880802607237

/-! ## A274904.P5562439598698838638

`A240554(A055999(n+3))+A105964(A105960(n+2))`
-/

namespace A274904.P5562439598698838638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (A055999 (n + 3)).toNat + A105964 (A105960 (n + 2)).toNat

end

end A274904.P5562439598698838638

/-!
# A274905: Largest prime factor of 8^n + 1.

The programs for A274905, the canonical program `A274905.P1279009335390391940` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274905 has offset 0).

The definition of A274905 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A274905.P6474037292601986652

`A002587(3*n)`
-/

namespace A274905.P6474037292601986652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002587 (3 * n)

end

end A274905.P6474037292601986652

namespace A274905

/-- `A002587(3*n)` -/
def P6474037292601986652.Spec : Prop :=
  ∀ n, P6474037292601986652.a n = A274905 n

end A274905

/-! ## A274905.P1279009335390391940

`A006530(A062395(n))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A274905

/-- `A006530(A062395(n))` -/
def P1279009335390391940.Spec : Prop :=
  ∀ n, P1279009335390391940.a n = A274905 n

theorem P1279009335390391940.correct : P1279009335390391940.Spec := by
  intro n
  simp only [A274905]

end A274905

/-! ## A274905.P8476177551055874951

`A002587(A008486(n))-A000007(n)`
-/

namespace A274905.P8476177551055874951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002587 (A008486 n).toNat - A000007 n

end

end A274905.P8476177551055874951

namespace A274905

/-- `A002587(A008486(n))-A000007(n)` -/
def P8476177551055874951.Spec : Prop :=
  ∀ n, P8476177551055874951.a n = A274905 n

end A274905

/-! ## A274905.P13584648947002415913

`A002587(A004277(n)+n)-A000007(n)`
-/

namespace A274905.P13584648947002415913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002587 (A004277 n + (n : ℤ)).toNat - A000007 n

end

end A274905.P13584648947002415913

namespace A274905

/-- `A002587(A004277(n)+n)-A000007(n)` -/
def P13584648947002415913.Spec : Prop :=
  ∀ n, P13584648947002415913.a n = A274905 n

end A274905

/-! ## A274905.P5419907034063406356

`A002587(A008574(n)-n)-A000007(n)`
-/

namespace A274905.P5419907034063406356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002587 (A008574 n - (n : ℤ)).toNat - A000007 n

end

end A274905.P5419907034063406356

namespace A274905

/-- `A002587(A008574(n)-n)-A000007(n)` -/
def P5419907034063406356.Spec : Prop :=
  ∀ n, P5419907034063406356.a n = A274905 n

end A274905

/-! ## A274905.P7582876970760388867

`lcm(A002587(A005843(n)+n), A020985(n))`
-/

namespace A274905.P7582876970760388867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002587 (A005843 n + (n : ℤ)).toNat) (A020985 n)

end

end A274905.P7582876970760388867

namespace A274905

/-- `lcm(A002587(A005843(n)+n), A020985(n))` -/
def P7582876970760388867.Spec : Prop :=
  ∀ n, (P7582876970760388867.a n : ℤ) = A274905 n

end A274905

/-! ## A274905.P18378637830288123659

`A002587(A005843(n)+n)%A000051(n)²`
-/

namespace A274905.P18378637830288123659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002587 (A005843 n + (n : ℤ)).toNat) (A000051 n ^ 2)

end

end A274905.P18378637830288123659

namespace A274905

/-- `A002587(A005843(n)+n)%A000051(n)²` -/
def P18378637830288123659.Spec : Prop :=
  ∀ n, P18378637830288123659.a n = A274905 n

end A274905

/-! ## A274905.P9394396299738906646

`A002587(A005843(n)+n)+A000007(n+1)`
-/

namespace A274905.P9394396299738906646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002587 (A005843 n + (n : ℤ)).toNat + A000007 (n + 1)

end

end A274905.P9394396299738906646

namespace A274905

/-- `A002587(A005843(n)+n)+A000007(n+1)` -/
def P9394396299738906646.Spec : Prop :=
  ∀ n, P9394396299738906646.a n = A274905 n

end A274905

/-! ## A274905.P5407883325379518780

`A002587(A005843(n)+n)+A000038(n+1)`
-/

namespace A274905.P5407883325379518780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002587 (A005843 n + (n : ℤ)).toNat + A000038 (n + 1)

end

end A274905.P5407883325379518780

namespace A274905

/-- `A002587(A005843(n)+n)+A000038(n+1)` -/
def P5407883325379518780.Spec : Prop :=
  ∀ n, P5407883325379518780.a n = A274905 n

end A274905

/-!
# A274906: Largest prime factor of 4^n - 1.

The programs for A274906, the canonical program `A274906.P4413060585807588716` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274906 has offset 1).

The definition of A274906 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A274906.P4413060585807588716

`A006530(A024036(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A274906

/-- `A006530(A024036(n+1))` -/
def P4413060585807588716.Spec : Prop :=
  ∀ n, P4413060585807588716.a n = A274906 (n + 1)

theorem P4413060585807588716.correct : P4413060585807588716.Spec := by
  intro n
  simp only [A274906, Nat.add_sub_cancel]

end A274906

/-! ## A274906.P12345055073988583645

`A005420(2*(n+1))`
-/

namespace A274906.P12345055073988583645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005420 (2 * (n + 1))

end

end A274906.P12345055073988583645

namespace A274906

/-- `A005420(2*(n+1))` -/
def P12345055073988583645.Spec : Prop :=
  ∀ n, P12345055073988583645.a n = A274906 (n + 1)

end A274906

/-! ## A274906.P5941229317956280202

`A005420(n+n+2)%(6^A008619(n))`
-/

namespace A274906.P5941229317956280202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005420 (n + n + 2)) (SequenceMachineLib.roundAway ((6 : ℚ) ^ (A008619 n : ℤ)))

end

end A274906.P5941229317956280202

namespace A274906

/-- `A005420(n+n+2)%(6^A008619(n))` -/
def P5941229317956280202.Spec : Prop :=
  ∀ n, P5941229317956280202.a n = A274906 (n + 1)

end A274906

/-! ## A274906.P17564239641514289901

`A005420(n+n+2)+A005563(n)%(n+2)`
-/

namespace A274906.P17564239641514289901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005420 (n + n + 2) + Int.tmod (A005563 n) (n + 2 : ℤ)

end

end A274906.P17564239641514289901

namespace A274906

/-- `A005420(n+n+2)+A005563(n)%(n+2)` -/
def P17564239641514289901.Spec : Prop :=
  ∀ n, P17564239641514289901.a n = A274906 (n + 1)

end A274906

/-! ## A274906.P17042830726934145787

`A005420(n+n+2)+A000035(A000005(or(2, n)))`
-/

namespace A274906.P17042830726934145787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005420 (n + n + 2) + A000035 (A000005 (Nat.lor 2 n)).toNat

end

end A274906.P17042830726934145787

namespace A274906

/-- `A005420(n+n+2)+A000035(A000005(or(2, n)))` -/
def P17042830726934145787.Spec : Prop :=
  ∀ n, P17042830726934145787.a n = A274906 (n + 1)

end A274906

/-! ## A274906.P4148855702359031323

`A249780(2*(n+1))/3`
-/

namespace A274906.P4148855702359031323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249780 (2 * (n + 1)) : ℚ) / 3

end

end A274906.P4148855702359031323

namespace A274906

/-- `A249780(2*(n+1))/3` -/
def P4148855702359031323.Spec : Prop :=
  ∀ n, P4148855702359031323.a n = (A274906 (n + 1) : ℚ)

end A274906

/-! ## A274906.P3599602502548226968

`A271314(A051755(n+2))`
-/

namespace A274906.P3599602502548226968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271314 (A051755 (n + 2)).toNat

end

end A274906.P3599602502548226968

namespace A274906

/-- `A271314(A051755(n+2))` -/
def P3599602502548226968.Spec : Prop :=
  ∀ n, P3599602502548226968.a n = A274906 (n + 1)

end A274906

/-! ## A274906.P1703850051464720738

`A053186(n²)+A005420(n+n+2)`
-/

namespace A274906.P1703850051464720738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (n ^ 2) + A005420 (n + n + 2)

end

end A274906.P1703850051464720738

namespace A274906

/-- `A053186(n²)+A005420(n+n+2)` -/
def P1703850051464720738.Spec : Prop :=
  ∀ n, P1703850051464720738.a n = A274906 (n + 1)

end A274906

/-!
# A274907: Largest prime factor of 6^n - 1.

The programs for A274907, there is no canonical definition to state claims against.
-/

/-! ## A274907.P11638571830654068228

`A064141(n+1)+p?[A064082(n+1)]`
-/

namespace A274907.P11638571830654068228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064141 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A274907.P11638571830654068228

/-! ## A274907.P5446044599157793802

`A064141(n+1)+A006530(A064082(n+1)^A379733(n+1))`
-/

namespace A274907.P5446044599157793802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064141 (n + 1) + A006530 (SequenceMachineLib.roundAway ((A064082 (n + 1) : ℚ) ^ (A379733 (n + 1) : ℤ))).toNat

end

end A274907.P5446044599157793802

/-! ## A274907.P9822607596965068642

`A006530(record[6*a(n-1)+1])` with `a(0)=5, a(1)=0`
-/

namespace A274907.P9822607596965068642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 0] fun n f1 =>
  6 * f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A274907.P9822607596965068642

/-!
# A274908: Largest prime factor of 8^n - 1.

The programs for A274908, the canonical program `A274908.P10226995600949905090` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274908 has offset 1).

The definition of A274908 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005420, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A274908.P10226995600949905090

`A005420(3*(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A274908

/-- `A005420(3*(n+1))` -/
def P10226995600949905090.Spec : Prop :=
  ∀ n, P10226995600949905090.a n = A274908 (n + 1)

theorem P10226995600949905090.correct : P10226995600949905090.Spec := by
  intro n
  simp only [A274908, Nat.add_sub_cancel]

end A274908

/-!
# A274909: Largest prime factor of 9^n - 1.

The programs for A274909, the canonical program `A274909.P3177028246145164987` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274909 has offset 1).

The definition of A274909 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074477, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A274909.P3177028246145164987

`A074477(2*(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A274909

/-- `A074477(2*(n+1))` -/
def P3177028246145164987.Spec : Prop :=
  ∀ n, P3177028246145164987.a n = A274909 (n + 1)

theorem P3177028246145164987.correct : P3177028246145164987.Spec := by
  intro n
  simp only [A274909, Nat.add_sub_cancel]

end A274909

/-! ## A274909.P8656324541506909194

`or(n%2, A074477(Δ[A202018(n)]))`
-/

namespace A274909.P8656324541506909194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (A074477 (f1 (n + 1) - f1 n).toNat)

end

end A274909.P8656324541506909194

namespace A274909

/-- `or(n%2, A074477(Δ[A202018(n)]))` -/
def P8656324541506909194.Spec : Prop :=
  ∀ n, P8656324541506909194.a n = A274909 (n + 1)

end A274909

/-! ## A274909.P9163364819944156517

`A074477(A005843(n+1))%∏[A010141(n)]`
-/

namespace A274909.P9163364819944156517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010141 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074477 (A005843 (n + 1)).toNat) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A274909.P9163364819944156517

namespace A274909

/-- `A074477(A005843(n+1))%∏[A010141(n)]` -/
def P9163364819944156517.Spec : Prop :=
  ∀ n, P9163364819944156517.a n = A274909 (n + 1)

end A274909

/-! ## A274909.P12432318999547530716

`or(A014625(n+1)², A074477(A005843(n+1)))`
-/

namespace A274909.P12432318999547530716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014625 (n + 1) ^ 2) (A074477 (A005843 (n + 1)).toNat)

end

end A274909.P12432318999547530716

namespace A274909

/-- `or(A014625(n+1)², A074477(A005843(n+1)))` -/
def P12432318999547530716.Spec : Prop :=
  ∀ n, P12432318999547530716.a n = A274909 (n + 1)

end A274909

/-! ## A274909.P8293866842427747696

`A074477(A005843(n+1))+A008683(A054735(n+2))`
-/

namespace A274909.P8293866842427747696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074477 (A005843 (n + 1)).toNat + A008683 (A054735 (n + 2)).toNat

end

end A274909.P8293866842427747696

namespace A274909

/-- `A074477(A005843(n+1))+A008683(A054735(n+2))` -/
def P8293866842427747696.Spec : Prop :=
  ∀ n, P8293866842427747696.a n = A274909 (n + 1)

end A274909

/-! ## A274909.P1969743780485907586

`A074477(A005843(n+1))/A001221(A007510(n+1))`
-/

namespace A274909.P1969743780485907586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074477 (A005843 (n + 1)).toNat : ℚ) / (A001221 (A007510 (n + 1)).toNat : ℚ)

end

end A274909.P1969743780485907586

namespace A274909

/-- `A074477(A005843(n+1))/A001221(A007510(n+1))` -/
def P1969743780485907586.Spec : Prop :=
  ∀ n, P1969743780485907586.a n = (A274909 (n + 1) : ℚ)

end A274909

/-!
# A274910: Largest prime factor of 11^n - 1.

The programs for A274910, there is no canonical definition to state claims against.
-/

/-! ## A274910.P1168667438295178893

`A006530(∑[5*11^n])`
-/

namespace A274910.P1168667438295178893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * 11 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A274910.P1168667438295178893

/-!
# A274912: Square array read by antidiagonals upwards in which each new term is the least nonnegative integer distinct from its neighbors.

The programs for A274912, the canonical program `A274912.P2605630082671546069` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274912 has offset 0).

The definition of A274912 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274912.P15970162213234434831

`A274913(n+1)-1`
-/

namespace A274912.P15970162213234434831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274913 (n + 1) - 1

end

end A274912.P15970162213234434831

namespace A274912

/-- `A274913(n+1)-1` -/
def P15970162213234434831.Spec : Prop :=
  ∀ n, P15970162213234434831.a n = A274912 n

end A274912

/-! ## A274912.P9802466192365082748

`A054238(n)%4`
-/

namespace A274912.P9802466192365082748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054238 n) 4

end

end A274912.P9802466192365082748

namespace A274912

/-- `A054238(n)%4` -/
def P9802466192365082748.Spec : Prop :=
  ∀ n, P9802466192365082748.a n = A274912 n

end A274912

/-! ## A274912.P2605630082671546069

`(A193770(n)-1)%4`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A274912

/-- `(A193770(n)-1)%4` -/
def P2605630082671546069.Spec : Prop :=
  ∀ n, P2605630082671546069.a n = A274912 n

theorem P2605630082671546069.correct : P2605630082671546069.Spec := by
  intro n
  simp only [A274912]

end A274912

/-! ## A274912.P14280212169291238938

`and(6, A120027(n))/2`
-/

namespace A274912.P14280212169291238938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 6 (A120027 n) : ℚ) / 2

end

end A274912.P14280212169291238938

namespace A274912

/-- `and(6, A120027(n))/2` -/
def P14280212169291238938.Spec : Prop :=
  ∀ n, P14280212169291238938.a n = (A274912 n : ℚ)

end A274912

/-! ## A274912.P7548284978760662184

`(A131225(n+1)-1)%4`
-/

namespace A274912.P7548284978760662184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131225 (n + 1) - 1) 4

end

end A274912.P7548284978760662184

namespace A274912

/-- `(A131225(n+1)-1)%4` -/
def P7548284978760662184.Spec : Prop :=
  ∀ n, P7548284978760662184.a n = A274912 n

end A274912

/-! ## A274912.P1465626500117390114

`3-A056203(n+1)%4`
-/

namespace A274912.P1465626500117390114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - Int.tmod (A056203 (n + 1)) 4

end

end A274912.P1465626500117390114

namespace A274912

/-- `3-A056203(n+1)%4` -/
def P1465626500117390114.Spec : Prop :=
  ∀ n, P1465626500117390114.a n = A274912 n

end A274912

/-! ## A274912.P9736069844075287532

`and(3, A057105(n+1)-1)`
-/

namespace A274912.P9736069844075287532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A057105 (n + 1) - 1)

end

end A274912.P9736069844075287532

namespace A274912

/-- `and(3, A057105(n+1)-1)` -/
def P9736069844075287532.Spec : Prop :=
  ∀ n, P9736069844075287532.a n = A274912 n

end A274912

/-! ## A274912.P474640184137937604

`A000032(and(3, n-(1-comp[∑[n]])))-1`
-/

namespace A274912.P474640184137937604
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Int.land 3 ((n : ℤ) - (1 - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)))).toNat - 1

end

end A274912.P474640184137937604

namespace A274912

/-- `A000032(and(3, n-(1-comp[∑[n]])))-1` -/
def P474640184137937604.Spec : Prop :=
  ∀ n, P474640184137937604.a n = A274912 n

end A274912

/-! ## A274912.P16937407179671496505

`A010873(A054238(n))`
-/

namespace A274912.P16937407179671496505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A054238 n).toNat

end

end A274912.P16937407179671496505

namespace A274912

/-- `A010873(A054238(n))` -/
def P16937407179671496505.Spec : Prop :=
  ∀ n, P16937407179671496505.a n = A274912 n

end A274912

/-! ## A274912.P6388552227420799283

`and(3, A163356(A163357(n)))`
-/

namespace A274912.P6388552227420799283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A163356 (A163357 n).toNat)

end

end A274912.P6388552227420799283

namespace A274912

/-- `and(3, A163356(A163357(n)))` -/
def P6388552227420799283.Spec : Prop :=
  ∀ n, P6388552227420799283.a n = A274912 n

end A274912

/-! ## A274912.P13660805530806914258

`and(A054238(n), A122553(n))`
-/

namespace A274912.P13660805530806914258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054238 n) (A122553 n)

end

end A274912.P13660805530806914258

namespace A274912

/-- `and(A054238(n), A122553(n))` -/
def P13660805530806914258.Spec : Prop :=
  ∀ n, P13660805530806914258.a n = A274912 n

end A274912

/-! ## A274912.P14970910416422073275

`A001538(n)%A274913(n+1)`
-/

namespace A274912.P14970910416422073275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001538 n) (A274913 (n + 1))

end

end A274912.P14970910416422073275

namespace A274912

/-- `A001538(n)%A274913(n+1)` -/
def P14970910416422073275.Spec : Prop :=
  ∀ n, P14970910416422073275.a n = A274912 n

end A274912

/-! ## A274912.P14021410878145444345

`A002146(n)%A274913(n+1)`
-/

namespace A274912.P14021410878145444345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002146 n) (A274913 (n + 1))

end

end A274912.P14021410878145444345

namespace A274912

/-- `A002146(n)%A274913(n+1)` -/
def P14021410878145444345.Spec : Prop :=
  ∀ n, P14021410878145444345.a n = A274912 n

end A274912

/-! ## A274912.P1400643262786473979

`A002148(n)%A274913(n+1)`
-/

namespace A274912.P1400643262786473979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002148 n) (A274913 (n + 1))

end

end A274912.P1400643262786473979

namespace A274912

/-- `A002148(n)%A274913(n+1)` -/
def P1400643262786473979.Spec : Prop :=
  ∀ n, P1400643262786473979.a n = A274912 n

end A274912

/-! ## A274912.P12380228017137800216

`A017653(n)%A274913(n+1)`
-/

namespace A274912.P12380228017137800216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017653 n) (A274913 (n + 1))

end

end A274912.P12380228017137800216

namespace A274912

/-- `A017653(n)%A274913(n+1)` -/
def P12380228017137800216.Spec : Prop :=
  ∀ n, P12380228017137800216.a n = A274912 n

end A274912

/-! ## A274912.P6229103918289267149

`A017655(n)%A274913(n+1)`
-/

namespace A274912.P6229103918289267149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017655 n) (A274913 (n + 1))

end

end A274912.P6229103918289267149

namespace A274912

/-- `A017655(n)%A274913(n+1)` -/
def P6229103918289267149.Spec : Prop :=
  ∀ n, P6229103918289267149.a n = A274912 n

end A274912

/-! ## A274912.P11769983801998486950

`A017657(n)%A274913(n+1)`
-/

namespace A274912.P11769983801998486950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017657 n) (A274913 (n + 1))

end

end A274912.P11769983801998486950

namespace A274912

/-- `A017657(n)%A274913(n+1)` -/
def P11769983801998486950.Spec : Prop :=
  ∀ n, P11769983801998486950.a n = A274912 n

end A274912

/-! ## A274912.P8331530755061038459

`A065532(n)%A274913(n+1)`
-/

namespace A274912.P8331530755061038459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065532 n) (A274913 (n + 1))

end

end A274912.P8331530755061038459

namespace A274912

/-- `A065532(n)%A274913(n+1)` -/
def P8331530755061038459.Spec : Prop :=
  ∀ n, P8331530755061038459.a n = A274912 n

end A274912

/-! ## A274912.P9718994279342254385

`A094319(n)%A274913(n+1)`
-/

namespace A274912.P9718994279342254385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094319 n) (A274913 (n + 1))

end

end A274912.P9718994279342254385

namespace A274912

/-- `A094319(n)%A274913(n+1)` -/
def P9718994279342254385.Spec : Prop :=
  ∀ n, P9718994279342254385.a n = A274912 n

end A274912

/-! ## A274912.P18232316941925196860

`A094615(n)%A274913(n+1)`
-/

namespace A274912.P18232316941925196860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094615 n) (A274913 (n + 1))

end

end A274912.P18232316941925196860

namespace A274912

/-- `A094615(n)%A274913(n+1)` -/
def P18232316941925196860.Spec : Prop :=
  ∀ n, P18232316941925196860.a n = A274912 n

end A274912

/-!
# A274913: Square array read by antidiagonals upwards in which each new term is the least positive integer distinct from its neighbors.

The programs for A274913, the canonical program `A274913.P16127943024732483463` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274913 has offset 1).

The definition of A274913 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A274912, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A274913.P16127943024732483463

`A274912(n)+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A274913

/-- `A274912(n)+1` -/
def P16127943024732483463.Spec : Prop :=
  ∀ n, P16127943024732483463.a n = A274913 (n + 1)

theorem P16127943024732483463.correct : P16127943024732483463.Spec := by
  intro n
  simp only [A274913, Nat.add_sub_cancel]

end A274913

/-! ## A274913.P8164690907010373092

`(5-a(n-1))/(char[∑[n]]+1)` with `a(0)=1`
-/

namespace A274913.P8164690907010373092
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (5 - a (n - 1)) / (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ)

end

end A274913.P8164690907010373092

namespace A274913

/-- `(5-a(n-1))/(char[∑[n]]+1)` -/
def P8164690907010373092.Spec : Prop :=
  ∀ n, P8164690907010373092.a n = (A274913 (n + 1) : ℚ)

end A274913

/-! ## A274913.P1330759287726673287

`A054238(n)%4+1`
-/

namespace A274913.P1330759287726673287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054238 n) 4 + 1

end

end A274913.P1330759287726673287

namespace A274913

/-- `A054238(n)%4+1` -/
def P1330759287726673287.Spec : Prop :=
  ∀ n, P1330759287726673287.a n = A274913 (n + 1)

end A274913

/-! ## A274913.P4095719487411586568

`ceil(A120027(n)%8/2)`
-/

namespace A274913.P4095719487411586568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.tmod (A120027 n) 8 : ℚ) / 2⌉

end

end A274913.P4095719487411586568

namespace A274913

/-- `ceil(A120027(n)%8/2)` -/
def P4095719487411586568.Spec : Prop :=
  ∀ n, P4095719487411586568.a n = A274913 (n + 1)

end A274913

/-! ## A274913.P17748259929479417319

`4-A056203(n+1)%4`
-/

namespace A274913.P17748259929479417319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - Int.tmod (A056203 (n + 1)) 4

end

end A274913.P17748259929479417319

namespace A274913

/-- `4-A056203(n+1)%4` -/
def P17748259929479417319.Spec : Prop :=
  ∀ n, P17748259929479417319.a n = A274913 (n + 1)

end A274913

/-! ## A274913.P3712042416822730430

`A000032(and(3, n-(1-comp[∑[n]])))`
-/

namespace A274913.P3712042416822730430
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Int.land 3 ((n : ℤ) - (1 - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)))).toNat

end

end A274913.P3712042416822730430

namespace A274913

/-- `A000032(and(3, n-(1-comp[∑[n]])))` -/
def P3712042416822730430.Spec : Prop :=
  ∀ n, P3712042416822730430.a n = A274913 (n + 1)

end A274913

/-! ## A274913.P3789424367097004867

`floor((5-a(n-1))/A035214(n))` with `a(0)=1`
-/

namespace A274913.P3789424367097004867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(5 - a (n - 1) : ℚ) / (A035214 n : ℚ)⌋

end

end A274913.P3789424367097004867

namespace A274913

/-- `floor((5-a(n-1))/A035214(n))` -/
def P3789424367097004867.Spec : Prop :=
  ∀ n, P3789424367097004867.a n = A274913 (n + 1)

end A274913

/-! ## A274913.P10321733437632483409

`A214684(A131226(n+1))`
-/

namespace A274913.P10321733437632483409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214684 (A131226 (n + 1)).toNat

end

end A274913.P10321733437632483409

namespace A274913

/-- `A214684(A131226(n+1))` -/
def P10321733437632483409.Spec : Prop :=
  ∀ n, P10321733437632483409.a n = A274913 (n + 1)

end A274913

/-! ## A274913.P11886663849306439298

`and(A054238(n), A122553(n))+1`
-/

namespace A274913.P11886663849306439298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054238 n) (A122553 n) + 1

end

end A274913.P11886663849306439298

namespace A274913

/-- `and(A054238(n), A122553(n))+1` -/
def P11886663849306439298.Spec : Prop :=
  ∀ n, P11886663849306439298.a n = A274913 (n + 1)

end A274913

/-! ## A274913.P3329077672811988747

`A070402(2*n+1-round(sqrt(2*n+1)))`
-/

namespace A274913.P3329077672811988747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070402 ((2 * n + 1 : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat

end

end A274913.P3329077672811988747

namespace A274913

/-- `A070402(2*n+1-round(sqrt(2*n+1)))` -/
def P3329077672811988747.Spec : Prop :=
  ∀ n, P3329077672811988747.a n = A274913 (n + 1)

end A274913

/-! ## A274913.P16416286381549817026

`A070352(comp[∑[n]]+n+2)`
-/

namespace A274913.P16416286381549817026
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070352 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (n + 2))

end

end A274913.P16416286381549817026

namespace A274913

/-- `A070352(comp[∑[n]]+n+2)` -/
def P16416286381549817026.Spec : Prop :=
  ∀ n, P16416286381549817026.a n = A274913 (n + 1)

end A274913

/-! ## A274913.P15723401552746851245

`A010883(A054238(n))`
-/

namespace A274913.P15723401552746851245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010883 (A054238 n).toNat

end

end A274913.P15723401552746851245

namespace A274913

/-- `A010883(A054238(n))` -/
def P15723401552746851245.Spec : Prop :=
  ∀ n, P15723401552746851245.a n = A274913 (n + 1)

end A274913

/-! ## A274913.P16360461368396178579

`A110550(2*A133280(n))`
-/

namespace A274913.P16360461368396178579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110550 (2 * A133280 n).toNat

end

end A274913.P16360461368396178579

namespace A274913

/-- `A110550(2*A133280(n))` -/
def P16360461368396178579.Spec : Prop :=
  ∀ n, P16360461368396178579.a n = A274913 (n + 1)

end A274913

/-! ## A274913.P2861613195453621126

`A355487(A163233(n))+1`
-/

namespace A274913.P2861613195453621126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355487 (A163233 n).toNat + 1

end

end A274913.P2861613195453621126

namespace A274913

/-- `A355487(A163233(n))+1` -/
def P2861613195453621126.Spec : Prop :=
  ∀ n, P2861613195453621126.a n = A274913 (n + 1)

end A274913

/-! ## A274913.P5258024812689192312

`A131015(A143804(n+1))`
-/

namespace A274913.P5258024812689192312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131015 (A143804 (n + 1)).toNat

end

end A274913.P5258024812689192312

namespace A274913

/-- `A131015(A143804(n+1))` -/
def P5258024812689192312.Spec : Prop :=
  ∀ n, P5258024812689192312.a n = A274913 (n + 1)

end A274913

/-! ## A274913.P11046187307090531732

`and(A054238(n), A062709(n))+1`
-/

namespace A274913.P11046187307090531732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054238 n) (A062709 n) + 1

end

end A274913.P11046187307090531732

namespace A274913

/-- `and(A054238(n), A062709(n))+1` -/
def P11046187307090531732.Spec : Prop :=
  ∀ n, P11046187307090531732.a n = A274913 (n + 1)

end A274913

/-! ## A274913.P194660927891848443

`and(A054238(n), A164285(n))+1`
-/

namespace A274913.P194660927891848443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054238 n) (A164285 n) + 1

end

end A274913.P194660927891848443

namespace A274913

/-- `and(A054238(n), A164285(n))+1` -/
def P194660927891848443.Spec : Prop :=
  ∀ n, P194660927891848443.a n = A274913 (n + 1)

end A274913

/-! ## A274913.P6551376755478704854

`and(A054238(n), A088578(n))+1`
-/

namespace A274913.P6551376755478704854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054238 n) (A088578 n) + 1

end

end A274913.P6551376755478704854

namespace A274913

/-- `and(A054238(n), A088578(n))+1` -/
def P6551376755478704854.Spec : Prop :=
  ∀ n, P6551376755478704854.a n = A274913 (n + 1)

end A274913

/-! ## A274913.P7916503290397748142

`(2^comp[comp[∑[n]]+n])%5`
-/

namespace A274913.P7916503290397748142
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 5

end

end A274913.P7916503290397748142

namespace A274913

/-- `(2^comp[comp[∑[n]]+n])%5` -/
def P7916503290397748142.Spec : Prop :=
  ∀ n, (P7916503290397748142.a n : ℤ) = A274913 (n + 1)

end A274913

/-! ## A274913.P14690144790162090057

`and(A054238(n), A092841(n))+1`
-/

namespace A274913.P14690144790162090057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054238 n) (A092841 n) + 1

end

end A274913.P14690144790162090057

namespace A274913

/-- `and(A054238(n), A092841(n))+1` -/
def P14690144790162090057.Spec : Prop :=
  ∀ n, P14690144790162090057.a n = A274913 (n + 1)

end A274913

/-!
# A274915: Powers of odd non-Fermat primes.

The programs for A274915, the canonical program `A274915.P5817165163141562259` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274915 has offset 1).

The definition of A274915 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4252 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274915.P11382602853223069338

`record[A034699(A292315(n+1))]`
-/

namespace A274915.P11382602853223069338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A292315 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274915.P11382602853223069338

namespace A274915

/-- `record[A034699(A292315(n+1))]` -/
def P11382602853223069338.Spec : Prop :=
  ∀ n, P11382602853223069338.a n = A274915 (n + 1)

end A274915

/-! ## A274915.P5817165163141562259

`filter[A292315(n+1), A340363(#)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A274915

/-- `filter[A292315(n+1), A340363(#)]` -/
def P5817165163141562259.Spec : Prop :=
  ∀ n, P5817165163141562259.a n = A274915 (n + 1)

theorem P5817165163141562259.correct : P5817165163141562259.Spec := by
  intro n
  simp only [A274915, Nat.add_sub_cancel]

end A274915

/-! ## A274915.P11811293394339335466

`filter[A292315(n+1), A345950(#)]`
-/

namespace A274915.P11811293394339335466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A274915.P11811293394339335466

namespace A274915

/-- `filter[A292315(n+1), A345950(#)]` -/
def P11811293394339335466.Spec : Prop :=
  ∀ n, P11811293394339335466.a n = A274915 (n + 1)

end A274915

/-! ## A274915.P2848768479710734137

`filter[A292315(n+1), A354923(#)]`
-/

namespace A274915.P2848768479710734137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A274915.P2848768479710734137

namespace A274915

/-- `filter[A292315(n+1), A354923(#)]` -/
def P2848768479710734137.Spec : Prop :=
  ∀ n, P2848768479710734137.a n = A274915 (n + 1)

end A274915

/-! ## A274915.P14402053182136013233

`filter[A292315(n+1), A354924(#)]`
-/

namespace A274915.P14402053182136013233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A274915.P14402053182136013233

namespace A274915

/-- `filter[A292315(n+1), A354924(#)]` -/
def P14402053182136013233.Spec : Prop :=
  ∀ n, P14402053182136013233.a n = A274915 (n + 1)

end A274915

/-! ## A274915.P9978069516813428334

`∩[A292315(n+1), A061345(n)]`
-/

namespace A274915.P9978069516813428334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274915.P9978069516813428334

namespace A274915

/-- `∩[A292315(n+1), A061345(n)]` -/
def P9978069516813428334.Spec : Prop :=
  ∀ n, (P9978069516813428334.a n : ℤ) = A274915 (n + 1)

end A274915

/-! ## A274915.P9143769635615796696

`∩[A000961(n+1), A292315(n+1)]`
-/

namespace A274915.P9143769635615796696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274915.P9143769635615796696

namespace A274915

/-- `∩[A000961(n+1), A292315(n+1)]` -/
def P9143769635615796696.Spec : Prop :=
  ∀ n, (P9143769635615796696.a n : ℤ) = A274915 (n + 1)

end A274915

/-! ## A274915.P11446118826806627003

`∩[A033948(n+1), A292315(n+1)]`
-/

namespace A274915.P11446118826806627003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274915.P11446118826806627003

namespace A274915

/-- `∩[A033948(n+1), A292315(n+1)]` -/
def P11446118826806627003.Spec : Prop :=
  ∀ n, (P11446118826806627003.a n : ℤ) = A274915 (n + 1)

end A274915

/-! ## A274915.P4539533801419656926

`∩[A074583(n+1), A292315(n+1)]`
-/

namespace A274915.P4539533801419656926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274915.P4539533801419656926

namespace A274915

/-- `∩[A074583(n+1), A292315(n+1)]` -/
def P4539533801419656926.Spec : Prop :=
  ∀ n, (P4539533801419656926.a n : ℤ) = A274915 (n + 1)

end A274915

/-! ## A274915.P7080665391535570378

`∩[A081061(n+1), A292315(n+1)]`
-/

namespace A274915.P7080665391535570378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274915.P7080665391535570378

namespace A274915

/-- `∩[A081061(n+1), A292315(n+1)]` -/
def P7080665391535570378.Spec : Prop :=
  ∀ n, (P7080665391535570378.a n : ℤ) = A274915 (n + 1)

end A274915

/-! ## A274915.P2842255944178481383

`∩[A164336(n+1), A292315(n+1)]`
-/

namespace A274915.P2842255944178481383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274915.P2842255944178481383

namespace A274915

/-- `∩[A164336(n+1), A292315(n+1)]` -/
def P2842255944178481383.Spec : Prop :=
  ∀ n, (P2842255944178481383.a n : ℤ) = A274915 (n + 1)

end A274915

/-! ## A274915.P557093114383496429

`∩[A324109(n+1), A292315(n+1)]`
-/

namespace A274915.P557093114383496429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274915.P557093114383496429

namespace A274915

/-- `∩[A324109(n+1), A292315(n+1)]` -/
def P557093114383496429.Spec : Prop :=
  ∀ n, (P557093114383496429.a n : ℤ) = A274915 (n + 1)

end A274915

/-! ## A274915.P9304330610345728426

`∩[A380757(n+1), A292315(n+1)]`
-/

namespace A274915.P9304330610345728426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274915.P9304330610345728426

namespace A274915

/-- `∩[A380757(n+1), A292315(n+1)]` -/
def P9304330610345728426.Spec : Prop :=
  ∀ n, (P9304330610345728426.a n : ℤ) = A274915 (n + 1)

end A274915

/-! ## A274915.P16362365245475741243

`∩[A080308(n+1), A061345(n)]`
-/

namespace A274915.P16362365245475741243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274915.P16362365245475741243

namespace A274915

/-- `∩[A080308(n+1), A061345(n)]` -/
def P16362365245475741243.Spec : Prop :=
  ∀ n, (P16362365245475741243.a n : ℤ) = A274915 (n + 1)

end A274915

/-! ## A274915.P5876070593394589841

`filter[A292315(n+1), A010055(#)]`
-/

namespace A274915.P5876070593394589841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A274915.P5876070593394589841

namespace A274915

/-- `filter[A292315(n+1), A010055(#)]` -/
def P5876070593394589841.Spec : Prop :=
  ∀ n, P5876070593394589841.a n = A274915 (n + 1)

end A274915

/-! ## A274915.P3815550800564400155

`record[(2*n+5)%A186690(A002322(2*n+5))]`
-/

namespace A274915.P3815550800564400155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n + 5 : ℤ) (A186690 (A002322 (2 * n + 5)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274915.P3815550800564400155

namespace A274915

/-- `record[(2*n+5)%A186690(A002322(2*n+5))]` -/
def P3815550800564400155.Spec : Prop :=
  ∀ n, P3815550800564400155.a n = A274915 (n + 1)

end A274915

/-! ## A274915.P10631989581168742206

`record[A028233(A292315(A344180(n)))]`
-/

namespace A274915.P10631989581168742206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A292315 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274915.P10631989581168742206

namespace A274915

/-- `record[A028233(A292315(A344180(n)))]` -/
def P10631989581168742206.Spec : Prop :=
  ∀ n, P10631989581168742206.a n = A274915 (n + 1)

end A274915

/-! ## A274915.P4171172764424219357

`record[A028233(A292315(A000027(n+1)))]`
-/

namespace A274915.P4171172764424219357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A292315 (A000027 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274915.P4171172764424219357

namespace A274915

/-- `record[A028233(A292315(A000027(n+1)))]` -/
def P4171172764424219357.Spec : Prop :=
  ∀ n, P4171172764424219357.a n = A274915 (n + 1)

end A274915

/-! ## A274915.P15960171753050493949

`A000265(record[A028233(A292315(n+1))])`
-/

namespace A274915.P15960171753050493949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A292315 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A274915.P15960171753050493949

namespace A274915

/-- `A000265(record[A028233(A292315(n+1))])` -/
def P15960171753050493949.Spec : Prop :=
  ∀ n, P15960171753050493949.a n = A274915 (n + 1)

end A274915

/-! ## A274915.P18350051069009773469

`A053585(record[A053585(A292315(n+1))])`
-/

namespace A274915.P18350051069009773469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (A292315 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A274915.P18350051069009773469

namespace A274915

/-- `A053585(record[A053585(A292315(n+1))])` -/
def P18350051069009773469.Spec : Prop :=
  ∀ n, P18350051069009773469.a n = A274915 (n + 1)

end A274915

/-!
# A274917: Square spiral in which each new term is the least positive integer distinct from its (already assigned) eight neighbors.

The programs for A274917, there is no canonical definition to state claims against.
-/

/-! ## A274917.P16092208998484239831

`A275609(n)+1`
-/

namespace A274917.P16092208998484239831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 n + 1

end

end A274917.P16092208998484239831

/-! ## A274917.P16608113206583364268

`1-A057428(n)*A275609(n)`
-/

namespace A274917.P16608113206583364268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057428 n * A275609 n

end

end A274917.P16608113206583364268

/-! ## A274917.P2795571481885545566

`and(7, A275609(n)-A057769(n))`
-/

namespace A274917.P2795571481885545566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A275609 n - A057769 n)

end

end A274917.P2795571481885545566

/-! ## A274917.P15103743704943553929

`n-A023443(n-A275609(n))`
-/

namespace A274917.P15103743704943553929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 ((n : ℤ) - A275609 n).toNat

end

end A274917.P15103743704943553929

/-! ## A274917.P9701648743421035824

`A008729(lcm((-1)^n, A275609(n)))`
-/

namespace A274917.P9701648743421035824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008729 (Int.lcm ((-1) ^ n) (A275609 n))

end

end A274917.P9701648743421035824

/-! ## A274917.P15546099297394922619

`2-(A007318(C(2, n))-A275609(n))`
-/

namespace A274917.P15546099297394922619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A007318 (Nat.choose 2 n) - A275609 n)

end

end A274917.P15546099297394922619

/-! ## A274917.P5119549790980691237

`A275609(n)-(n-1)-A001489(n)`
-/

namespace A274917.P5119549790980691237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 n - ((n : ℤ) - 1) - A001489 n

end

end A274917.P5119549790980691237

/-! ## A274917.P11435225938832342824

`A005408(n)-(2*n-A275609(n))`
-/

namespace A274917.P11435225938832342824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - ((2 * n : ℤ) - A275609 n)

end

end A274917.P11435225938832342824

/-! ## A274917.P17964509566523935210

`A000265(Δ[n²])-(2*n-A275609(n))`
-/

namespace A274917.P17964509566523935210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - ((2 * n : ℤ) - A275609 n)

end

end A274917.P17964509566523935210

/-! ## A274917.P6272048463131895221

`A111228(A178334(n)*A275609(n))`
-/

namespace A274917.P6272048463131895221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111228 (A178334 n * A275609 n).toNat

end

end A274917.P6272048463131895221

/-! ## A274917.P17729311405299183294

`A000005(A020483(n)^A275609(n))`
-/

namespace A274917.P17729311405299183294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A020483 n : ℚ) ^ (A275609 n : ℤ))).toNat

end

end A274917.P17729311405299183294

/-! ## A274917.P1298462024533402127

`A000005(A060397(n)^A275609(n))`
-/

namespace A274917.P1298462024533402127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A060397 n : ℚ) ^ (A275609 n : ℤ))).toNat

end

end A274917.P1298462024533402127

/-! ## A274917.P7194242672262284292

`abs(A008683(A242675(n))-A275609(n))`
-/

namespace A274917.P7194242672262284292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (A242675 n).toNat - A275609 n|

end

end A274917.P7194242672262284292

/-! ## A274917.P3156954739353114376

`2-(A001222(A089894(n))-A275609(n))`
-/

namespace A274917.P3156954739353114376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A001222 (A089894 n).toNat - A275609 n)

end

end A274917.P3156954739353114376

/-! ## A274917.P10947153893687843749

`A001222(2*A020483(n)^A275609(n))`
-/

namespace A274917.P10947153893687843749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (2 * (A020483 n : ℚ) ^ (A275609 n : ℤ))).toNat

end

end A274917.P10947153893687843749

/-!
# A274918: Numbers n such that the sum of numbers less than n that do not divide n is odd.

The programs for A274918, the canonical program `A274918.P14684548943861349377` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274918 has offset 1).

The definition of A274918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274918.P4811910729557572265

`eq[1, gcd(2, A024816(n+1))]+1`
-/

namespace A274918.P4811910729557572265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A024816 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A274918.P4811910729557572265

namespace A274918

/-- `eq[1, gcd(2, A024816(n+1))]+1` -/
def P4811910729557572265.Spec : Prop :=
  ∀ n, (P4811910729557572265.a n : ℤ) = A274918 (n + 1)

end A274918

/-! ## A274918.P1408244885217092807

`eq[1, A024816(n+2)%2]+2`
-/

namespace A274918.P1408244885217092807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024816 (n + 2)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A274918.P1408244885217092807

namespace A274918

/-- `eq[1, A024816(n+2)%2]+2` -/
def P1408244885217092807.Spec : Prop :=
  ∀ n, (P1408244885217092807.a n : ℤ) = A274918 (n + 1)

end A274918

/-! ## A274918.P13307803610913854028

`eq[A093709(n), A093709(A051074(a(n-2)+1))]` with `a(0)=2, a(1)=0`
-/

namespace A274918.P13307803610913854028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f2 =>
  A093709 (A051074 (f2 (n - 2) + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274918.P13307803610913854028

namespace A274918

/-- `eq[A093709(n), A093709(A051074(a(n-2)+1))]` -/
def P13307803610913854028.Spec : Prop :=
  ∀ n, (P13307803610913854028.a n : ℤ) = A274918 (n + 1)

end A274918

/-! ## A274918.P7661228868834807688

`eq[2, and(2, A082564(n)-n)]`
-/

namespace A274918.P7661228868834807688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A082564 n - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A274918.P7661228868834807688

namespace A274918

/-- `eq[2, and(2, A082564(n)-n)]` -/
def P7661228868834807688.Spec : Prop :=
  ∀ n, (P7661228868834807688.a n : ℤ) = A274918 (n + 1)

end A274918

/-! ## A274918.P14684548943861349377

`lt[(A000217(n+2)+∑{d}[n, #])%2, 1]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A274918

/-- `lt[(A000217(n+2)+∑{d}[n, #])%2, 1]` -/
def P14684548943861349377.Spec : Prop :=
  ∀ n, (P14684548943861349377.a n : ℤ) = A274918 (n + 1)

theorem P14684548943861349377.correct : P14684548943861349377.Spec := by
  intro n
  simp only [A274918, Nat.add_sub_cancel]

end A274918

/-! ## A274918.P10906293462430190578

`eq[1, A084101(A084101(n)+A033715(n))]`
-/

namespace A274918.P10906293462430190578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084101 (A084101 n + A033715 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A274918.P10906293462430190578

namespace A274918

/-- `eq[1, A084101(A084101(n)+A033715(n))]` -/
def P10906293462430190578.Spec : Prop :=
  ∀ n, (P10906293462430190578.a n : ℤ) = A274918 (n + 1)

end A274918

/-! ## A274918.P15185883562759468280

`eq[2, and(2, A292038(n)-n)]`
-/

namespace A274918.P15185883562759468280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A292038 n - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A274918.P15185883562759468280

namespace A274918

/-- `eq[2, and(2, A292038(n)-n)]` -/
def P15185883562759468280.Spec : Prop :=
  ∀ n, (P15185883562759468280.a n : ℤ) = A274918 (n + 1)

end A274918

/-! ## A274918.P1941445339818935974

`lt[4, A020639(A024816(n+1)+2)²]+1`
-/

namespace A274918.P1941445339818935974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A024816 (n + 1) + 2).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A274918.P1941445339818935974

namespace A274918

/-- `lt[4, A020639(A024816(n+1)+2)²]+1` -/
def P1941445339818935974.Spec : Prop :=
  ∀ n, (P1941445339818935974.a n : ℤ) = A274918 (n + 1)

end A274918

/-!
# A274919: Sum of all perimeters of all parts of the symmetric representation of sigma(n).

The programs for A274919, there is no canonical definition to state claims against.
-/

/-! ## A274919.P11956170703163802481

`2*A244363(n+1)`
-/

namespace A274919.P11956170703163802481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A244363 (n + 1)

end

end A274919.P11956170703163802481

/-! ## A274919.P11757461796923300581

`A244371(n+1)/2`
-/

namespace A274919.P11757461796923300581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244371 (n + 1) : ℚ) / 2

end

end A274919.P11757461796923300581

/-! ## A274919.P9776003403541969495

`4*A244361(n+1)`
-/

namespace A274919.P9776003403541969495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A244361 (n + 1)

end

end A274919.P9776003403541969495

/-! ## A274919.P7771262605623370470

`A008586(n+1)-2*A279228(n+1)`
-/

namespace A274919.P7771262605623370470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (n + 1) - 2 * A279228 (n + 1)

end

end A274919.P7771262605623370470

/-! ## A274919.P17381662887727701789

`4*(A348854(n+1)-(n+1))`
-/

namespace A274919.P17381662887727701789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A348854 (n + 1) - (n + 1 : ℤ))

end

end A274919.P17381662887727701789

/-!
# A274920: Spiral constructed on the nodes of the triangular net in which each new term is the least nonnegative integers distinct from its neighbors.

The programs for A274920, the canonical program `A274920.P7331687866389573952` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274920 has offset 0).

The definition of A274920 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274920.P8593367103937043447

`A274921(n)-1`
-/

namespace A274920.P8593367103937043447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274921 n - 1

end

end A274920.P8593367103937043447

namespace A274920

/-- `A274921(n)-1` -/
def P8593367103937043447.Spec : Prop :=
  ∀ n, P8593367103937043447.a n = A274920 n

end A274920

/-! ## A274920.P7331687866389573952

`(12-A328818(n))%3`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A274920

/-- `(12-A328818(n))%3` -/
def P7331687866389573952.Spec : Prop :=
  ∀ n, P7331687866389573952.a n = A274920 n

theorem P7331687866389573952.correct : P7331687866389573952.Spec := by
  intro n
  simp only [A274920]

end A274920

/-! ## A274920.P10789171466807543972

`A001513(n)%A274921(n)`
-/

namespace A274920.P10789171466807543972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001513 n) (A274921 n)

end

end A274920.P10789171466807543972

namespace A274920

/-- `A001513(n)%A274921(n)` -/
def P10789171466807543972.Spec : Prop :=
  ∀ n, P10789171466807543972.a n = A274920 n

end A274920

/-! ## A274920.P4096355197821083140

`A001538(n)%A274921(n)`
-/

namespace A274920.P4096355197821083140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001538 n) (A274921 n)

end

end A274920.P4096355197821083140

namespace A274920

/-- `A001538(n)%A274921(n)` -/
def P4096355197821083140.Spec : Prop :=
  ∀ n, P4096355197821083140.a n = A274920 n

end A274920

/-! ## A274920.P2154454818437783036

`A002148(n)%A274921(n)`
-/

namespace A274920.P2154454818437783036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002148 n) (A274921 n)

end

end A274920.P2154454818437783036

namespace A274920

/-- `A002148(n)%A274921(n)` -/
def P2154454818437783036.Spec : Prop :=
  ∀ n, P2154454818437783036.a n = A274920 n

end A274920

/-! ## A274920.P6308902546377656809

`A004538(n)%A274921(n)`
-/

namespace A274920.P6308902546377656809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004538 n) (A274921 n)

end

end A274920.P6308902546377656809

namespace A274920

/-- `A004538(n)%A274921(n)` -/
def P6308902546377656809.Spec : Prop :=
  ∀ n, P6308902546377656809.a n = A274920 n

end A274920

/-! ## A274920.P4957533014443805496

`A004933(n)%A274921(n)`
-/

namespace A274920.P4957533014443805496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004933 n) (A274921 n)

end

end A274920.P4957533014443805496

namespace A274920

/-- `A004933(n)%A274921(n)` -/
def P4957533014443805496.Spec : Prop :=
  ∀ n, P4957533014443805496.a n = A274920 n

end A274920

/-! ## A274920.P18426832349671744058

`A016969(n)%A274921(n)`
-/

namespace A274920.P18426832349671744058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016969 n) (A274921 n)

end

end A274920.P18426832349671744058

namespace A274920

/-- `A016969(n)%A274921(n)` -/
def P18426832349671744058.Spec : Prop :=
  ∀ n, P18426832349671744058.a n = A274920 n

end A274920

/-! ## A274920.P14742535952959061067

`A016971(n)%A274921(n)`
-/

namespace A274920.P14742535952959061067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016971 n) (A274921 n)

end

end A274920.P14742535952959061067

namespace A274920

/-- `A016971(n)%A274921(n)` -/
def P14742535952959061067.Spec : Prop :=
  ∀ n, P14742535952959061067.a n = A274920 n

end A274920

/-! ## A274920.P14466761970376121750

`A016973(n)%A274921(n)`
-/

namespace A274920.P14466761970376121750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016973 n) (A274921 n)

end

end A274920.P14466761970376121750

namespace A274920

/-- `A016973(n)%A274921(n)` -/
def P14466761970376121750.Spec : Prop :=
  ∀ n, P14466761970376121750.a n = A274920 n

end A274920

/-! ## A274920.P14487486844967377903

`A016975(n)%A274921(n)`
-/

namespace A274920.P14487486844967377903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016975 n) (A274921 n)

end

end A274920.P14487486844967377903

namespace A274920

/-- `A016975(n)%A274921(n)` -/
def P14487486844967377903.Spec : Prop :=
  ∀ n, P14487486844967377903.a n = A274920 n

end A274920

/-! ## A274920.P13503150171487917893

`A017581(n)%A274921(n)`
-/

namespace A274920.P13503150171487917893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017581 n) (A274921 n)

end

end A274920.P13503150171487917893

namespace A274920

/-- `A017581(n)%A274921(n)` -/
def P13503150171487917893.Spec : Prop :=
  ∀ n, P13503150171487917893.a n = A274920 n

end A274920

/-! ## A274920.P11453775839750975453

`A017583(n)%A274921(n)`
-/

namespace A274920.P11453775839750975453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017583 n) (A274921 n)

end

end A274920.P11453775839750975453

namespace A274920

/-- `A017583(n)%A274921(n)` -/
def P11453775839750975453.Spec : Prop :=
  ∀ n, P11453775839750975453.a n = A274920 n

end A274920

/-! ## A274920.P14126584292699996223

`A017585(n)%A274921(n)`
-/

namespace A274920.P14126584292699996223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017585 n) (A274921 n)

end

end A274920.P14126584292699996223

namespace A274920

/-- `A017585(n)%A274921(n)` -/
def P14126584292699996223.Spec : Prop :=
  ∀ n, P14126584292699996223.a n = A274920 n

end A274920

/-! ## A274920.P400989667547778682

`A017653(n)%A274921(n)`
-/

namespace A274920.P400989667547778682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017653 n) (A274921 n)

end

end A274920.P400989667547778682

namespace A274920

/-- `A017653(n)%A274921(n)` -/
def P400989667547778682.Spec : Prop :=
  ∀ n, P400989667547778682.a n = A274920 n

end A274920

/-! ## A274920.P11785880494565534641

`A017655(n)%A274921(n)`
-/

namespace A274920.P11785880494565534641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017655 n) (A274921 n)

end

end A274920.P11785880494565534641

namespace A274920

/-- `A017655(n)%A274921(n)` -/
def P11785880494565534641.Spec : Prop :=
  ∀ n, P11785880494565534641.a n = A274920 n

end A274920

/-! ## A274920.P5680297708420578220

`A017657(n)%A274921(n)`
-/

namespace A274920.P5680297708420578220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017657 n) (A274921 n)

end

end A274920.P5680297708420578220

namespace A274920

/-- `A017657(n)%A274921(n)` -/
def P5680297708420578220.Spec : Prop :=
  ∀ n, P5680297708420578220.a n = A274920 n

end A274920

/-! ## A274920.P17780991652829335708

`A031929(n)%A274921(n)`
-/

namespace A274920.P17780991652829335708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031929 n) (A274921 n)

end

end A274920.P17780991652829335708

namespace A274920

/-- `A031929(n)%A274921(n)` -/
def P17780991652829335708.Spec : Prop :=
  ∀ n, P17780991652829335708.a n = A274920 n

end A274920

/-! ## A274920.P87445639110402117

`A031935(n)%A274921(n)`
-/

namespace A274920.P87445639110402117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031935 n) (A274921 n)

end

end A274920.P87445639110402117

namespace A274920

/-- `A031935(n)%A274921(n)` -/
def P87445639110402117.Spec : Prop :=
  ∀ n, P87445639110402117.a n = A274920 n

end A274920

/-! ## A274920.P15632160661907413090

`A036545(n)%A274921(n)`
-/

namespace A274920.P15632160661907413090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036545 n) (A274921 n)

end

end A274920.P15632160661907413090

namespace A274920

/-- `A036545(n)%A274921(n)` -/
def P15632160661907413090.Spec : Prop :=
  ∀ n, P15632160661907413090.a n = A274920 n

end A274920

/-!
# A274921: Spiral constructed on the nodes of the triangular net in which each new term is the least positive integer distinct from its neighbors.

The programs for A274921, the canonical program `A274921.P6886949141205773937` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274921 has offset 0).

The definition of A274921 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A274920, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A274921.P6886949141205773937

`A274920(n)+1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A274921

/-- `A274920(n)+1` -/
def P6886949141205773937.Spec : Prop :=
  ∀ n, P6886949141205773937.a n = A274921 n

theorem P6886949141205773937.correct : P6886949141205773937.Spec := by
  intro n
  simp only [A274921]

end A274921

/-! ## A274921.P10266815369061338612

`(3*n-A328818(n))%3+1`
-/

namespace A274921.P10266815369061338612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((3 * n : ℤ) - A328818 n) 3 + 1

end

end A274921.P10266815369061338612

namespace A274921

/-- `(3*n-A328818(n))%3+1` -/
def P10266815369061338612.Spec : Prop :=
  ∀ n, P10266815369061338612.a n = A274921 n

end A274921

/-! ## A274921.P5319830151636406367

`abs((A016789(n)+1-A328818(n))%3+1)`
-/

namespace A274921.P5319830151636406367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A016789 n + 1 - A328818 n) 3 + 1|

end

end A274921.P5319830151636406367

namespace A274921

/-- `abs((A016789(n)+1-A328818(n))%3+1)` -/
def P5319830151636406367.Spec : Prop :=
  ∀ n, P5319830151636406367.a n = A274921 n

end A274921

/-! ## A274921.P6811820139717061631

`floor(((A056905(n+1)-5-A328818(n))%3+1)/sin(1))`
-/

namespace A274921.P6811820139717061631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.tmod (A056905 (n + 1) - 5 - A328818 n) 3 + 1 : ℝ) / Real.sin (1 : ℝ)⌋

end

end A274921.P6811820139717061631

namespace A274921

/-- `floor(((A056905(n+1)-5-A328818(n))%3+1)/sin(1))` -/
def P6811820139717061631.Spec : Prop :=
  ∀ n, P6811820139717061631.a n = A274921 n

end A274921

/-! ## A274921.P8421112710626055150

`(A216453(n+1)-A328818(n))%3-(n-1)-A001489(n)`
-/

namespace A274921.P8421112710626055150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216453 (n + 1) - A328818 n) 3 - ((n : ℤ) - 1) - A001489 n

end

end A274921.P8421112710626055150

namespace A274921

/-- `(A216453(n+1)-A328818(n))%3-(n-1)-A001489(n)` -/
def P8421112710626055150.Spec : Prop :=
  ∀ n, P8421112710626055150.a n = A274921 n

end A274921

/-! ## A274921.P12118836809299095151

`((A139609(n)+A017017(n)-n-A328818(n))%3+1)%12`
-/

namespace A274921.P12118836809299095151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A139609 n + A017017 n - (n : ℤ) - A328818 n) 3 + 1) 12

end

end A274921.P12118836809299095151

namespace A274921

/-- `((A139609(n)+A017017(n)-n-A328818(n))%3+1)%12` -/
def P12118836809299095151.Spec : Prop :=
  ∀ n, P12118836809299095151.a n = A274921 n

end A274921

/-! ## A274921.P14443979626883283557

`1+(A272892(n+1)-A328818(n))%3`
-/

namespace A274921.P14443979626883283557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + Int.tmod (A272892 (n + 1) - A328818 n) 3

end

end A274921.P14443979626883283557

namespace A274921

/-- `1+(A272892(n+1)-A328818(n))%3` -/
def P14443979626883283557.Spec : Prop :=
  ∀ n, P14443979626883283557.a n = A274921 n

end A274921

/-! ## A274921.P14908974016744980933

`1+(A272890(n+1)-A328818(n))%3`
-/

namespace A274921.P14908974016744980933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + Int.tmod (A272890 (n + 1) - A328818 n) 3

end

end A274921.P14908974016744980933

namespace A274921

/-- `1+(A272890(n+1)-A328818(n))%3` -/
def P14908974016744980933.Spec : Prop :=
  ∀ n, P14908974016744980933.a n = A274921 n

end A274921

/-! ## A274921.P17183150613323025290

`A000267(and((12-A328818(n))%3, A001538(n)))`
-/

namespace A274921.P17183150613323025290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (Int.land (Int.tmod (12 - A328818 n) 3) (A001538 n)).toNat

end

end A274921.P17183150613323025290

namespace A274921

/-- `A000267(and((12-A328818(n))%3, A001538(n)))` -/
def P17183150613323025290.Spec : Prop :=
  ∀ n, P17183150613323025290.a n = A274921 n

end A274921

/-! ## A274921.P3181373340007109647

`A000267(xor(n, xor(n, A274920(n))))`
-/

namespace A274921.P3181373340007109647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (Int.xor (n : ℤ) (Int.xor (n : ℤ) (A274920 n))).toNat

end

end A274921.P3181373340007109647

namespace A274921

/-- `A000267(xor(n, xor(n, A274920(n))))` -/
def P3181373340007109647.Spec : Prop :=
  ∀ n, P3181373340007109647.a n = A274921 n

end A274921

/-! ## A274921.P8175886745648379554

`1-A001489(xor(n, xor(n, A274920(n))))`
-/

namespace A274921.P8175886745648379554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001489 (Int.xor (n : ℤ) (Int.xor (n : ℤ) (A274920 n))).toNat

end

end A274921.P8175886745648379554

namespace A274921

/-- `1-A001489(xor(n, xor(n, A274920(n))))` -/
def P8175886745648379554.Spec : Prop :=
  ∀ n, P8175886745648379554.a n = A274921 n

end A274921

/-! ## A274921.P10696683837834439651

`A007318(4*xor(n, xor(n, A274920(n))))`
-/

namespace A274921.P10696683837834439651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (4 * Int.xor (n : ℤ) (Int.xor (n : ℤ) (A274920 n))).toNat

end

end A274921.P10696683837834439651

namespace A274921

/-- `A007318(4*xor(n, xor(n, A274920(n))))` -/
def P10696683837834439651.Spec : Prop :=
  ∀ n, P10696683837834439651.a n = A274921 n

end A274921

/-! ## A274921.P17322866984612350083

`A000005(2^xor(n, xor(n, A274920(n))))`
-/

namespace A274921.P17322866984612350083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (Int.xor (n : ℤ) (Int.xor (n : ℤ) (A274920 n)) : ℤ))).toNat

end

end A274921.P17322866984612350083

namespace A274921

/-- `A000005(2^xor(n, xor(n, A274920(n))))` -/
def P17322866984612350083.Spec : Prop :=
  ∀ n, P17322866984612350083.a n = A274921 n

end A274921

/-! ## A274921.P128631965427649717

`A000120(5^xor(n, xor(n, A274920(n))))`
-/

namespace A274921.P128631965427649717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (Int.xor (n : ℤ) (Int.xor (n : ℤ) (A274920 n)) : ℤ))).toNat

end

end A274921.P128631965427649717

namespace A274921

/-- `A000120(5^xor(n, xor(n, A274920(n))))` -/
def P128631965427649717.Spec : Prop :=
  ∀ n, P128631965427649717.a n = A274921 n

end A274921

/-! ## A274921.P16180323626155191820

`2-(A000010(((-1)^n)²)-A274920(n))`
-/

namespace A274921.P16180323626155191820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A000010 (((-1) ^ n) ^ 2).toNat - A274920 n)

end

end A274921.P16180323626155191820

namespace A274921

/-- `2-(A000010(((-1)^n)²)-A274920(n))` -/
def P16180323626155191820.Spec : Prop :=
  ∀ n, P16180323626155191820.a n = A274921 n

end A274921

/-! ## A274921.P1576606912243835958

`A000005(A007918(n)^A274920(n))`
-/

namespace A274921.P1576606912243835958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A007918 n : ℚ) ^ (A274920 n : ℤ))).toNat

end

end A274921.P1576606912243835958

namespace A274921

/-- `A000005(A007918(n)^A274920(n))` -/
def P1576606912243835958.Spec : Prop :=
  ∀ n, P1576606912243835958.a n = A274921 n

end A274921

/-! ## A274921.P15419715858280919399

`A000005(A020483(n)^A274920(n))`
-/

namespace A274921.P15419715858280919399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A020483 n : ℚ) ^ (A274920 n : ℤ))).toNat

end

end A274921.P15419715858280919399

namespace A274921

/-- `A000005(A020483(n)^A274920(n))` -/
def P15419715858280919399.Spec : Prop :=
  ∀ n, P15419715858280919399.a n = A274921 n

end A274921

/-! ## A274921.P8080468109440791633

`A000005(A060264(n)^A274920(n))`
-/

namespace A274921.P8080468109440791633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A060264 n : ℚ) ^ (A274920 n : ℤ))).toNat

end

end A274921.P8080468109440791633

namespace A274921

/-- `A000005(A060264(n)^A274920(n))` -/
def P8080468109440791633.Spec : Prop :=
  ∀ n, P8080468109440791633.a n = A274921 n

end A274921

/-! ## A274921.P5307128570441390980

`A000005(A151800(n)^A274920(n))`
-/

namespace A274921.P5307128570441390980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A151800 n : ℚ) ^ (A274920 n : ℤ))).toNat

end

end A274921.P5307128570441390980

namespace A274921

/-- `A000005(A151800(n)^A274920(n))` -/
def P5307128570441390980.Spec : Prop :=
  ∀ n, P5307128570441390980.a n = A274921 n

end A274921

/-! ## A274921.P6983050035941896363

`A000005(p?[A004396(n)]^A274920(n))`
-/

namespace A274921.P6983050035941896363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A274920 n : ℤ))).toNat

end

end A274921.P6983050035941896363

namespace A274921

/-- `A000005(p?[A004396(n)]^A274920(n))` -/
def P6983050035941896363.Spec : Prop :=
  ∀ n, P6983050035941896363.a n = A274921 n

end A274921

/-!
# A274922: a(n) = (-1)^n * n if n>0, a(0) = 1.

The programs for A274922, the canonical program `A274922.P9821768908038600101` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274922 has offset 0).

The definition of A274922 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274922.P9821768908038600101

`(-1)^n*A028310(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A274922

/-- `(-1)^n*A028310(n)` -/
def P9821768908038600101.Spec : Prop :=
  ∀ n, P9821768908038600101.a n = A274922 n

theorem P9821768908038600101.correct : P9821768908038600101.Spec := by
  intro n
  simp only [A274922]

end A274922

/-! ## A274922.P18416518536010695280

`round((-1)^n/acot(n))`
-/

namespace A274922.P18416518536010695280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((-1) ^ n : ℝ) / SequenceMachineLib.acot (n : ℝ))

end

end A274922.P18416518536010695280

namespace A274922

/-- `round((-1)^n/acot(n))` -/
def P18416518536010695280.Spec : Prop :=
  ∀ n, P18416518536010695280.a n = A274922 n

end A274922

/-! ## A274922.P3037332626799118647

`round((-n^acot(n))^n)`
-/

namespace A274922.P3037332626799118647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((-((n : ℝ) ^ (SequenceMachineLib.acot (n : ℝ)))) ^ n)

end

end A274922.P3037332626799118647

namespace A274922

/-- `round((-n^acot(n))^n)` -/
def P3037332626799118647.Spec : Prop :=
  ∀ n, P3037332626799118647.a n = A274922 n

end A274922

/-! ## A274922.P15971222344822842174

`n*a(n%2)` with `a(0)=1, a(1)=-1`
-/

namespace A274922.P15971222344822842174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  (n : ℤ) * a (n % 2)

end

end A274922.P15971222344822842174

namespace A274922

/-- `n*a(n%2)` -/
def P15971222344822842174.Spec : Prop :=
  ∀ n, P15971222344822842174.a n = A274922 n

end A274922

/-! ## A274922.P2849789603568373171

`-xor(1, a(n-1))` with `a(0)=1, a(1)=-1`
-/

namespace A274922.P2849789603568373171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  -Int.xor 1 (a (n - 1))

end

end A274922.P2849789603568373171

namespace A274922

/-- `-xor(1, a(n-1))` -/
def P2849789603568373171.Spec : Prop :=
  ∀ n, P2849789603568373171.a n = A274922 n

end A274922

/-! ## A274922.P8027072371889087044

`-n*a(and(1, n+1))` with `a(0)=1`
-/

namespace A274922.P8027072371889087044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -((n : ℤ) * a (Nat.land 1 (n + 1)))

end

end A274922.P8027072371889087044

namespace A274922

/-- `-n*a(and(1, n+1))` -/
def P8027072371889087044.Spec : Prop :=
  ∀ n, P8027072371889087044.a n = A274922 n

end A274922

/-! ## A274922.P13190214619136056570

`-n/a(and(1, n+1))` with `a(0)=1`
-/

namespace A274922.P13190214619136056570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  -((n : ℚ) / a (Nat.land 1 (n + 1)))

end

end A274922.P13190214619136056570

namespace A274922

/-- `-n/a(and(1, n+1))` -/
def P13190214619136056570.Spec : Prop :=
  ∀ n, P13190214619136056570.a n = (A274922 n : ℚ)

end A274922

/-! ## A274922.P1702478053491343194

`(-1)^n-a(n-1)` with `a(0)=1, a(1)=-1`
-/

namespace A274922.P1702478053491343194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  (-1) ^ n - a (n - 1)

end

end A274922.P1702478053491343194

namespace A274922

/-- `(-1)^n-a(n-1)` -/
def P1702478053491343194.Spec : Prop :=
  ∀ n, P1702478053491343194.a n = A274922 n

end A274922

/-! ## A274922.P4413612711699313972

`n*round(-a(n-1)/n)` with `a(0)=1`
-/

namespace A274922.P4413612711699313972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * SequenceMachineLib.roundAway (-((a (n - 1) : ℚ) / (n : ℚ)))

end

end A274922.P4413612711699313972

namespace A274922

/-- `n*round(-a(n-1)/n)` -/
def P4413612711699313972.Spec : Prop :=
  ∀ n, P4413612711699313972.a n = A274922 n

end A274922

/-! ## A274922.P12222184620533962610

`n/round(-a(n-1)/n)` with `a(0)=1`
-/

namespace A274922.P12222184620533962610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) / (SequenceMachineLib.roundAway (-(a (n - 1) / (n : ℚ))) : ℚ)

end

end A274922.P12222184620533962610

namespace A274922

/-- `n/round(-a(n-1)/n)` -/
def P12222184620533962610.Spec : Prop :=
  ∀ n, P12222184620533962610.a n = (A274922 n : ℚ)

end A274922

/-! ## A274922.P13116191422149376903

`floor(Δ[n/(lcm(2, n+1)-n)])`
-/

namespace A274922.P13116191422149376903
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((Nat.lcm 2 (n + 1) : ℤ) - (n : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A274922.P13116191422149376903

namespace A274922

/-- `floor(Δ[n/(lcm(2, n+1)-n)])` -/
def P13116191422149376903.Spec : Prop :=
  ∀ n, P13116191422149376903.a n = A274922 n

end A274922

/-! ## A274922.P10167266178274654403

`(n-n²)/a(n-1)` with `a(0)=1, a(1)=-1`
-/

namespace A274922.P10167266178274654403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, -1] fun n a =>
  ((n : ℤ) - (n ^ 2 : ℤ) : ℚ) / a (n - 1)

end

end A274922.P10167266178274654403

namespace A274922

/-- `(n-n²)/a(n-1)` -/
def P10167266178274654403.Spec : Prop :=
  ∀ n, P10167266178274654403.a n = (A274922 n : ℚ)

end A274922

/-! ## A274922.P17649484649152204480

`a(n-1)/(1/n-1)` with `a(0)=1, a(1)=-1`
-/

namespace A274922.P17649484649152204480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, -1] fun n a =>
  a (n - 1) / (1 / (n : ℚ) - 1)

end

end A274922.P17649484649152204480

namespace A274922

/-- `a(n-1)/(1/n-1)` -/
def P17649484649152204480.Spec : Prop :=
  ∀ n, P17649484649152204480.a n = (A274922 n : ℚ)

end A274922

/-! ## A274922.P8866647316360358600

`floor(1/(n+1)+n*(-1)^n)`
-/

namespace A274922.P8866647316360358600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (n + 1 : ℚ) + ((n : ℤ) * (-1) ^ n : ℚ)⌋

end

end A274922.P8866647316360358600

namespace A274922

/-- `floor(1/(n+1)+n*(-1)^n)` -/
def P8866647316360358600.Spec : Prop :=
  ∀ n, P8866647316360358600.a n = A274922 n

end A274922

/-! ## A274922.P17714486607603927885

`Δ[gcd(2, n+1)-a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A274922.P17714486607603927885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (Nat.gcd 2 (n + 1) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A274922.P17714486607603927885

namespace A274922

/-- `Δ[gcd(2, n+1)-a(n-1)]` -/
def P17714486607603927885.Spec : Prop :=
  ∀ n, P17714486607603927885.a n = A274922 n

end A274922

/-! ## A274922.P6648134253936276204

`xor(1, Δ[and(1, n)-a(n-1)])` with `a(0)=1, a(1)=1`
-/

namespace A274922.P6648134253936276204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (Nat.land 1 n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (n + 1) - f1 n)

end

end A274922.P6648134253936276204

namespace A274922

/-- `xor(1, Δ[and(1, n)-a(n-1)])` -/
def P6648134253936276204.Spec : Prop :=
  ∀ n, P6648134253936276204.a n = A274922 n

end A274922

/-! ## A274922.P3626409650006159025

`(n-2*n)*a(and(1, n+1))` with `a(0)=1`
-/

namespace A274922.P3626409650006159025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) - (2 * n : ℤ)) * a (Nat.land 1 (n + 1))

end

end A274922.P3626409650006159025

namespace A274922

/-- `(n-2*n)*a(and(1, n+1))` -/
def P3626409650006159025.Spec : Prop :=
  ∀ n, P3626409650006159025.a n = A274922 n

end A274922

/-! ## A274922.P11039075860886665242

`and(2*n, a(and(1, n-1)))-n` with `a(0)=1`
-/

namespace A274922.P11039075860886665242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (2 * n : ℤ) (a (Int.land 1 ((n : ℤ) - 1)).toNat) - (n : ℤ)

end

end A274922.P11039075860886665242

namespace A274922

/-- `and(2*n, a(and(1, n-1)))-n` -/
def P11039075860886665242.Spec : Prop :=
  ∀ n, P11039075860886665242.a n = A274922 n

end A274922

/-! ## A274922.P14761936581924296669

`n*a(1-∑[floor(a(n-2))])` with `a(0)=1, a(1)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A274922.P14761936581924296669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  (n : ℤ) * a (1 - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A274922.P14761936581924296669

namespace A274922

/-- `n*a(1-∑[floor(a(n-2))])` -/
def P14761936581924296669.Spec : Prop :=
  ∀ n, P14761936581924296669.a n = A274922 n

end A274922

/-!
# A274923: List of y-coordinates of point moving in counterclockwise square spiral.

The programs for A274923, the canonical program `A274923.P17560489070939647201` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274923 has offset 1).

The definition of A274923 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274923.P17560489070939647201

`-A268038(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A274923

/-- `-A268038(n+1)` -/
def P17560489070939647201.Spec : Prop :=
  ∀ n, P17560489070939647201.a n = A274923 (n + 1)

theorem P17560489070939647201.correct : P17560489070939647201.Spec := by
  intro n
  simp only [A274923, Nat.add_sub_cancel]

end A274923

/-! ## A274923.P4007282752194986284

`A296030(2*(n+1))`
-/

namespace A274923.P4007282752194986284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (2 * (n + 1))

end

end A274923.P4007282752194986284

namespace A274923

/-- `A296030(2*(n+1))` -/
def P4007282752194986284.Spec : Prop :=
  ∀ n, P4007282752194986284.a n = A274923 (n + 1)

end A274923

/-! ## A274923.P2586403088027766512

`A174344(A020703(n+1))`
-/

namespace A274923.P2586403088027766512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (A020703 (n + 1)).toNat

end

end A274923.P2586403088027766512

namespace A274923

/-- `A174344(A020703(n+1))` -/
def P2586403088027766512.Spec : Prop :=
  ∀ n, P2586403088027766512.a n = A274923 (n + 1)

end A274923

/-! ## A274923.P8880451056332481509

`A174344(A028391(n)+1)`
-/

namespace A274923.P8880451056332481509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (A028391 n + 1).toNat

end

end A274923.P8880451056332481509

namespace A274923

/-- `A174344(A028391(n)+1)` -/
def P8880451056332481509.Spec : Prop :=
  ∀ n, P8880451056332481509.a n = A274923 (n + 1)

end A274923

/-! ## A274923.P4405983891478732780

`A174344(A056847(n)+1)`
-/

namespace A274923.P4405983891478732780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (A056847 n + 1).toNat

end

end A274923.P4405983891478732780

namespace A274923

/-- `A174344(A056847(n)+1)` -/
def P4405983891478732780.Spec : Prop :=
  ∀ n, P4405983891478732780.a n = A274923 (n + 1)

end A274923

/-! ## A274923.P6036049692172868919

`A305576(A308081(n+1))`
-/

namespace A274923.P6036049692172868919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305576 (A308081 (n + 1)).toNat

end

end A274923.P6036049692172868919

namespace A274923

/-- `A305576(A308081(n+1))` -/
def P6036049692172868919.Spec : Prop :=
  ∀ n, P6036049692172868919.a n = A274923 (n + 1)

end A274923

/-! ## A274923.P17062718139087525410

`A174344(1-A000194(n)+n)`
-/

namespace A274923.P17062718139087525410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (1 - A000194 n + (n : ℤ)).toNat

end

end A274923.P17062718139087525410

namespace A274923

/-- `A174344(1-A000194(n)+n)` -/
def P17062718139087525410.Spec : Prop :=
  ∀ n, P17062718139087525410.a n = A274923 (n + 1)

end A274923

/-! ## A274923.P11870700493108320319

`A174344(1-A000196(n)+n)`
-/

namespace A274923.P11870700493108320319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (1 - A000196 n + (n : ℤ)).toNat

end

end A274923.P11870700493108320319

namespace A274923

/-- `A174344(1-A000196(n)+n)` -/
def P11870700493108320319.Spec : Prop :=
  ∀ n, P11870700493108320319.a n = A274923 (n + 1)

end A274923

/-! ## A274923.P9229083264489776940

`A180714(n)-A174344(n+1)`
-/

namespace A274923.P9229083264489776940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180714 n - A174344 (n + 1)

end

end A274923.P9229083264489776940

namespace A274923

/-- `A180714(n)-A174344(n+1)` -/
def P9229083264489776940.Spec : Prop :=
  ∀ n, P9229083264489776940.a n = A274923 (n + 1)

end A274923

/-! ## A274923.P16998057004489683374

`A174344(n+1)-A329116(n)`
-/

namespace A274923.P16998057004489683374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (n + 1) - A329116 n

end

end A274923.P16998057004489683374

namespace A274923

/-- `A174344(n+1)-A329116(n)` -/
def P16998057004489683374.Spec : Prop :=
  ∀ n, P16998057004489683374.a n = A274923 (n + 1)

end A274923

/-! ## A274923.P14855420599270091202

`A174344(1-(A000196(n)-n))`
-/

namespace A274923.P14855420599270091202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (1 - (A000196 n - (n : ℤ))).toNat

end

end A274923.P14855420599270091202

namespace A274923

/-- `A174344(1-(A000196(n)-n))` -/
def P14855420599270091202.Spec : Prop :=
  ∀ n, P14855420599270091202.a n = A274923 (n + 1)

end A274923

/-! ## A274923.P14739840148920536831

`A057428(n)*A268038(n+1)`
-/

namespace A274923.P14739840148920536831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A268038 (n + 1)

end

end A274923.P14739840148920536831

namespace A274923

/-- `A057428(n)*A268038(n+1)` -/
def P14739840148920536831.Spec : Prop :=
  ∀ n, P14739840148920536831.a n = A274923 (n + 1)

end A274923

/-! ## A274923.P4875747182759504276

`A134824(n)*A268038(n+1)`
-/

namespace A274923.P4875747182759504276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 n * A268038 (n + 1)

end

end A274923.P4875747182759504276

namespace A274923

/-- `A134824(n)*A268038(n+1)` -/
def P4875747182759504276.Spec : Prop :=
  ∀ n, P4875747182759504276.a n = A274923 (n + 1)

end A274923

/-! ## A274923.P11985260219963950952

`A260196(n)*A268038(n+1)`
-/

namespace A274923.P11985260219963950952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n * A268038 (n + 1)

end

end A274923.P11985260219963950952

namespace A274923

/-- `A260196(n)*A268038(n+1)` -/
def P11985260219963950952.Spec : Prop :=
  ∀ n, P11985260219963950952.a n = A274923 (n + 1)

end A274923

/-! ## A274923.P4464125345767108187

`A180714(n-A053615(n))/2`
-/

namespace A274923.P4464125345767108187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180714 ((n : ℤ) - A053615 n).toNat : ℚ) / 2

end

end A274923.P4464125345767108187

namespace A274923

/-- `A180714(n-A053615(n))/2` -/
def P4464125345767108187.Spec : Prop :=
  ∀ n, P4464125345767108187.a n = (A274923 (n + 1) : ℚ)

end A274923

/-! ## A274923.P4317648014573785422

`(A180714(n)-A329116(n))/2`
-/

namespace A274923.P4317648014573785422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180714 n - A329116 n : ℚ) / 2

end

end A274923.P4317648014573785422

namespace A274923

/-- `(A180714(n)-A329116(n))/2` -/
def P4317648014573785422.Spec : Prop :=
  ∀ n, P4317648014573785422.a n = (A274923 (n + 1) : ℚ)

end A274923

/-! ## A274923.P4686420848242914621

`A010751(∑[char[A004202(n+1)]])`
-/

namespace A274923.P4686420848242914621
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004202 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010751 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A274923.P4686420848242914621

namespace A274923

/-- `A010751(∑[char[A004202(n+1)]])` -/
def P4686420848242914621.Spec : Prop :=
  ∀ n, P4686420848242914621.a n = A274923 (n + 1)

end A274923

/-! ## A274923.P8868940024216557185

`A153881(n+1)*A268038(n+1)`
-/

namespace A274923.P8868940024216557185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1) * A268038 (n + 1)

end

end A274923.P8868940024216557185

namespace A274923

/-- `A153881(n+1)*A268038(n+1)` -/
def P8868940024216557185.Spec : Prop :=
  ∀ n, P8868940024216557185.a n = A274923 (n + 1)

end A274923

/-! ## A274923.P10633551634763548378

`n²-(A268038(n+1)+A000290(n))`
-/

namespace A274923.P10633551634763548378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (A268038 (n + 1) + A000290 n)

end

end A274923.P10633551634763548378

namespace A274923

/-- `n²-(A268038(n+1)+A000290(n))` -/
def P10633551634763548378.Spec : Prop :=
  ∀ n, P10633551634763548378.a n = A274923 (n + 1)

end A274923

/-! ## A274923.P14684939497558429264

`A002262(n-A002262(n))-A268038(n+1)`
-/

namespace A274923.P14684939497558429264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 ((n : ℤ) - A002262 n).toNat - A268038 (n + 1)

end

end A274923.P14684939497558429264

namespace A274923

/-- `A002262(n-A002262(n))-A268038(n+1)` -/
def P14684939497558429264.Spec : Prop :=
  ∀ n, P14684939497558429264.a n = A274923 (n + 1)

end A274923

/-!
# A274924: East spoke of spiral in A274640.

The programs for A274924, there is no canonical definition to state claims against.
-/

/-! ## A274924.P6793367081114608998

`A275877(A004277(n))`
-/

namespace A274924.P6793367081114608998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275877 (A004277 n).toNat

end

end A274924.P6793367081114608998

/-! ## A274924.P5559426520950409117

`A275877(A004275(n+1))`
-/

namespace A274924.P5559426520950409117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275877 (A004275 (n + 1)).toNat

end

end A274924.P5559426520950409117

/-! ## A274924.P15867210420569257080

`A275877(A004273(n)+1)`
-/

namespace A274924.P15867210420569257080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275877 (A004273 n + 1).toNat

end

end A274924.P15867210420569257080

/-! ## A274924.P8458090662586023152

`A275877(floor(sqrt(A265056(n))))`
-/

namespace A274924.P8458090662586023152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275877 (Int.sqrt (A265056 n)).toNat

end

end A274924.P8458090662586023152

/-! ## A274924.P6455647796764485814

`A275877(record[A106617(n)+1])`
-/

namespace A274924.P6455647796764485814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275877 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A274924.P6455647796764485814

/-! ## A274924.P9482507748634696987

`A275877(A027379(n)-∑[n])`
-/

namespace A274924.P9482507748634696987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275877 (A027379 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A274924.P9482507748634696987

/-! ## A274924.P12930316704290579615

`A275877(A000007(n)+2*n)`
-/

namespace A274924.P12930316704290579615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275877 (A000007 n + (2 * n : ℤ)).toNat

end

end A274924.P12930316704290579615

/-! ## A274924.P4633127242622610772

`A275877(A000007(n)+n+n)`
-/

namespace A274924.P4633127242622610772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275877 (A000007 n + (n : ℤ) + (n : ℤ)).toNat

end

end A274924.P4633127242622610772

/-! ## A274924.P18184357819322462449

`A275877(2*n-char[A275877(n+1)]+1)`
-/

namespace A274924.P18184357819322462449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275877 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275877 ((2 * n : ℤ) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + 1).toNat

end

end A274924.P18184357819322462449

/-! ## A274924.P16792179922961078472

`A275877(A005408(n)-char[A275877(n+1)])`
-/

namespace A274924.P16792179922961078472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275877 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275877 (A005408 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A274924.P16792179922961078472

/-!
# A274925: Northeast spoke of spiral in A274640.

The programs for A274925, there is no canonical definition to state claims against.
-/

/-! ## A274925.P2796448005187150908

`A274640(n*record[lcm(2, n)])`
-/

namespace A274925.P2796448005187150908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 (n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A274925.P2796448005187150908

/-! ## A274925.P11270011433163857683

`A274640(2*C(2*n, 2))`
-/

namespace A274925.P11270011433163857683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 (2 * Nat.choose (2 * n) 2)

end

end A274925.P11270011433163857683

/-! ## A274925.P3562471864109859074

`A274640(n*(4*n-2))`
-/

namespace A274925.P3562471864109859074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 ((n : ℤ) * ((4 * n : ℤ) - 2)).toNat

end

end A274925.P3562471864109859074

/-! ## A274925.P6592452552754992344

`A274641((2*n)²-n-n)+1`
-/

namespace A274925.P6592452552754992344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 (((2 * n) ^ 2 : ℤ) - (n : ℤ) - (n : ℤ)).toNat + 1

end

end A274925.P6592452552754992344

/-! ## A274925.P11790043738158598738

`lcm((-1)^n, A274640(A002939(n)))`
-/

namespace A274925.P11790043738158598738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A274640 (A002939 n).toNat)

end

end A274925.P11790043738158598738

/-! ## A274925.P309114426979321440

`abs(A274640(A001107(n)+n)-1)+1`
-/

namespace A274925.P309114426979321440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A274640 (A001107 n + (n : ℤ)).toNat - 1| + 1

end

end A274925.P309114426979321440

/-! ## A274925.P8179145824886901947

`abs(A274640(A033991(n)-n)-1)+1`
-/

namespace A274925.P8179145824886901947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A274640 (A033991 n - (n : ℤ)).toNat - 1| + 1

end

end A274925.P8179145824886901947

/-! ## A274925.P10581344034899392159

`gcd(A154269(n²+2), A274640(A002939(n)))`
-/

namespace A274925.P10581344034899392159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A154269 (n ^ 2 + 2)) (A274640 (A002939 n).toNat)

end

end A274925.P10581344034899392159

/-! ## A274925.P11958235246013367898

`A324775(n)+1`
-/

namespace A274925.P11958235246013367898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324775 n + 1

end

end A274925.P11958235246013367898

/-!
# A274926: North spoke of spiral in A274640.

The programs for A274926, there is no canonical definition to state claims against.
-/

/-! ## A274926.P8613742514648810661

`A276036(comp[2*(n+1)]+1)`
-/

namespace A274926.P8613742514648810661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276036 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A274926.P8613742514648810661

/-! ## A274926.P12542463082039087062

`abs(A276036(record[n*n%2]+1)-1)+1`
-/

namespace A274926.P12542463082039087062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A276036 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1) - 1| + 1

end

end A274926.P12542463082039087062

/-! ## A274926.P12396876231694204758

`abs(A276036(A004277(n))-1)+1`
-/

namespace A274926.P12396876231694204758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A276036 (A004277 n).toNat - 1| + 1

end

end A274926.P12396876231694204758

/-! ## A274926.P10465075202242414554

`A057427(A001316(n))+A276036(A004277(n))-1`
-/

namespace A274926.P10465075202242414554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A001316 n).toNat + (A276036 (A004277 n).toNat - 1)

end

end A274926.P10465075202242414554

/-! ## A274926.P2243736690025024423

`A057427(A008620(n))+A276036(A004277(n))-1`
-/

namespace A274926.P2243736690025024423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A008620 n).toNat + (A276036 (A004277 n).toNat - 1)

end

end A274926.P2243736690025024423

/-! ## A274926.P14999446262653007567

`A057427(A028310(n))+A276036(A004277(n))-1`
-/

namespace A274926.P14999446262653007567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A028310 n).toNat + (A276036 (A004277 n).toNat - 1)

end

end A274926.P14999446262653007567

/-! ## A274926.P13847270184307433703

`A057427(A274924(n))+A276036(A004277(n))-1`
-/

namespace A274926.P13847270184307433703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A274924 n).toNat + (A276036 (A004277 n).toNat - 1)

end

end A274926.P13847270184307433703

/-! ## A274926.P2549566803543505234

`A057427(A274928(n))+A276036(A004277(n))-1`
-/

namespace A274926.P2549566803543505234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A274928 n).toNat + (A276036 (A004277 n).toNat - 1)

end

end A274926.P2549566803543505234

/-! ## A274926.P10769441951696039530

`A001221(A306370(n+1))+A276036(A004277(n))-1`
-/

namespace A274926.P10769441951696039530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A306370 (n + 1)).toNat + (A276036 (A004277 n).toNat - 1)

end

end A274926.P10769441951696039530

/-! ## A274926.P214795673956112573

`A057427(A153080(n))+A276036(A004277(n))-1`
-/

namespace A274926.P214795673956112573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A153080 n).toNat + (A276036 (A004277 n).toNat - 1)

end

end A274926.P214795673956112573

/-! ## A274926.P644208285549646296

`A014963(A153080(3*n+1))+A276036(A004277(n))-1`
-/

namespace A274926.P644208285549646296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A153080 (3 * n + 1)).toNat + (A276036 (A004277 n).toNat - 1)

end

end A274926.P644208285549646296

/-!
# A274927: Northwest spoke of spiral in A274640.

The programs for A274927, there is no canonical definition to state claims against.
-/

/-! ## A274927.P17951293372180413699

`A274640((2*n)²)`
-/

namespace A274927.P17951293372180413699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 ((2 * n) ^ 2)

end

end A274927.P17951293372180413699

/-! ## A274927.P12503637335132609652

`A274641((2*n)²)+1`
-/

namespace A274927.P12503637335132609652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 ((2 * n) ^ 2) + 1

end

end A274927.P12503637335132609652

/-! ## A274927.P4855193903886554231

`or(char[2], A274640(A016742(n)))`
-/

namespace A274927.P4855193903886554231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A274640 (A016742 n).toNat)

end

end A274927.P4855193903886554231

/-! ## A274927.P6498524033074771481

`A028310(A274640((2*n)^2))`
-/

namespace A274927.P6498524033074771481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A274640 ((2 * n) ^ 2)).toNat

end

end A274927.P6498524033074771481

/-! ## A274927.P15871374706885135810

`A274640((2*n)^2)%A000040(n+1)`
-/

namespace A274927.P15871374706885135810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274640 ((2 * n) ^ 2)) (A000040 (n + 1))

end

end A274927.P15871374706885135810

/-! ## A274927.P1833921304778542817

`A014963(15*(n+1))*A274640((2*n)^2)`
-/

namespace A274927.P1833921304778542817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (15 * (n + 1)) * A274640 ((2 * n) ^ 2)

end

end A274927.P1833921304778542817

/-! ## A274927.P11670434185761769830

`A000108(∏{d}[1-n, #%2])*A274640((2*n)^2)`
-/

namespace A274927.P11670434185761769830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (∏ d ∈ Nat.divisors (f1 n).natAbs, d % 2) * A274640 ((2 * n) ^ 2)

end

end A274927.P11670434185761769830

/-! ## A274927.P10916771192991228823

`∑{d}[A274640(A016742(n)), A000010(#)]`
-/

namespace A274927.P10916771192991228823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 (A016742 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A274927.P10916771192991228823

/-! ## A274927.P1598701614515310685

`∏{d}[A274640(A016742(n)), A014963(#)]`
-/

namespace A274927.P1598701614515310685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 (A016742 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A274927.P1598701614515310685

/-! ## A274927.P11213799006918849258

`A274640(A016742(n))%A000041(n+2)`
-/

namespace A274927.P11213799006918849258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274640 (A016742 n).toNat) (A000041 (n + 2))

end

end A274927.P11213799006918849258

/-!
# A274928: West spoke of spiral in A274640.

The programs for A274928, there is no canonical definition to state claims against.
-/

/-! ## A274928.P497065031599611103

`A275877(Δ[n²])`
-/

namespace A274928.P497065031599611103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275877 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A274928.P497065031599611103

/-! ## A274928.P13438271051599844510

`A275877(2*n+1)%(n²+4)`
-/

namespace A274928.P13438271051599844510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275877 (2 * n + 1)) (n ^ 2 + 4 : ℤ)

end

end A274928.P13438271051599844510

/-! ## A274928.P4471085096342522454

`or(char[1], A275877(A005408(n)))`
-/

namespace A274928.P4471085096342522454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A275877 (A005408 n).toNat)

end

end A274928.P4471085096342522454

/-! ## A274928.P3744137994726988315

`A275877(2*n+1)+A008683(4*(n+1))`
-/

namespace A274928.P3744137994726988315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275877 (2 * n + 1) + A008683 (4 * (n + 1))

end

end A274928.P3744137994726988315

/-! ## A274928.P15991614980005533081

`lcm(A033999(n), A275877(A005408(n)))`
-/

namespace A274928.P15991614980005533081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A275877 (A005408 n).toNat)

end

end A274928.P15991614980005533081

/-! ## A274928.P10846272711471269532

`∏{d}[A275877(A005408(n)), A014963(#)]`
-/

namespace A274928.P10846272711471269532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275877 (A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A274928.P10846272711471269532

/-! ## A274928.P7862248065167980979

`A033999(2*n)*A275877(A005408(n))`
-/

namespace A274928.P7862248065167980979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A275877 (A005408 n).toNat

end

end A274928.P7862248065167980979

/-! ## A274928.P3236131239449758574

`A345060(A007918(n))+A275877(n+1+n)`
-/

namespace A274928.P3236131239449758574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345060 (A007918 n).toNat + A275877 (n + 1 + n)

end

end A274928.P3236131239449758574

/-! ## A274928.P16157851407727633390

`A001221(A306370(n+1))*A275877(2*n+1)`
-/

namespace A274928.P16157851407727633390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A306370 (n + 1)).toNat * A275877 (2 * n + 1)

end

end A274928.P16157851407727633390

/-! ## A274928.P1387217274623191288

`A275877(A005408(n))/A033999(A275877(n+1))²`
-/

namespace A274928.P1387217274623191288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275877 (A005408 n).toNat : ℚ) / (A033999 (A275877 (n + 1)).toNat ^ 2 : ℚ)

end

end A274928.P1387217274623191288

/-! ## A274928.P5680156378660451197

`A275877(n+1+n)+A002262(∑[n])`
-/

namespace A274928.P5680156378660451197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275877 (n + 1 + n) + A002262 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A274928.P5680156378660451197

/-!
# A274929: Southwest spoke of spiral in A274640.

The programs for A274929, there is no canonical definition to state claims against.
-/

/-! ## A274929.P8353103309070290059

`A274640(n*(4*n+2))`
-/

namespace A274929.P8353103309070290059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 (n * (4 * n + 2))

end

end A274929.P8353103309070290059

/-! ## A274929.P10985460378465010647

`A274641(n*(4*n+2))+1`
-/

namespace A274929.P10985460378465010647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 (n * (4 * n + 2)) + 1

end

end A274929.P10985460378465010647

/-! ## A274929.P1798466206305121672

`A274640(A033954(n)-n)%(n+5)²`
-/

namespace A274929.P1798466206305121672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274640 (A033954 n - (n : ℤ)).toNat) ((n + 5) ^ 2 : ℤ)

end

end A274929.P1798466206305121672

/-! ## A274929.P11399232119974418617

`A274640(A002943(n))%A029888(n)`
-/

namespace A274929.P11399232119974418617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274640 (A002943 n).toNat) (A029888 n)

end

end A274929.P11399232119974418617

/-! ## A274929.P7512468747848172730

`or(A000007(n), A274640(A002943(n)))`
-/

namespace A274929.P7512468747848172730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A274640 (A002943 n).toNat)

end

end A274929.P7512468747848172730

/-! ## A274929.P110799667360510393

`∑{d}[A274640(A002943(n)), A000010(#)]`
-/

namespace A274929.P110799667360510393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 (A002943 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A274929.P110799667360510393

/-! ## A274929.P8231925412714503288

`A007318(C(2, n))*A274640(A002943(n))`
-/

namespace A274929.P8231925412714503288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A274640 (A002943 n).toNat

end

end A274929.P8231925412714503288

/-! ## A274929.P7887175236543096054

`A274640(A002943(n))/A000040(n+5)%2`
-/

namespace A274929.P7887175236543096054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274640 (A002943 n).toNat : ℚ) / (Int.tmod (A000040 (n + 5)) 2 : ℚ)

end

end A274929.P7887175236543096054

/-! ## A274929.P6097236490792156803

`A274640(A002943(n))+2%A000108(C(2, n))`
-/

namespace A274929.P6097236490792156803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 (A002943 n).toNat + Int.tmod 2 (A000108 (Nat.choose 2 n))

end

end A274929.P6097236490792156803

/-! ## A274929.P13735708332216991638

`A324779(n)+1`
-/

namespace A274929.P13735708332216991638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324779 n + 1

end

end A274929.P13735708332216991638

/-!
# A274930: South spoke of spiral in A274640.

The programs for A274930, there is no canonical definition to state claims against.
-/

/-! ## A274930.P2245792133077377659

`A276036(Δ[n²])`
-/

namespace A274930.P2245792133077377659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276036 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A274930.P2245792133077377659

/-! ## A274930.P17493984777382726965

`round(1/acot(A276036(2*n+1)))`
-/

namespace A274930.P17493984777382726965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (A276036 (2 * n + 1) : ℝ))

end

end A274930.P17493984777382726965

/-! ## A274930.P4166508287308977488

`A028310(A276036(2*n+1))`
-/

namespace A274930.P4166508287308977488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A276036 (2 * n + 1)).toNat

end

end A274930.P4166508287308977488

/-! ## A274930.P18396601167887272471

`lcm((-1)^n, A276036(A005408(n)))`
-/

namespace A274930.P18396601167887272471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A276036 (A005408 n).toNat)

end

end A274930.P18396601167887272471

/-! ## A274930.P14556378178061450765

`A276036(2*n+1)%A275918(n)`
-/

namespace A274930.P14556378178061450765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276036 (2 * n + 1)) (A275918 n)

end

end A274930.P14556378178061450765

/-! ## A274930.P14765415944749187655

`A057427(n+1)*A276036(2*n+1)`
-/

namespace A274930.P14765415944749187655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A276036 (2 * n + 1)

end

end A274930.P14765415944749187655

/-! ## A274930.P11351863138292087422

`(A035337(n)%2)!*A276036(2*n+1)`
-/

namespace A274930.P11351863138292087422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A035337 n) 2).toNat : ℤ) * A276036 (2 * n + 1)

end

end A274930.P11351863138292087422

/-! ## A274930.P9149722371235434307

`A276036(2*n+1)+A000217(n)-∑[n]`
-/

namespace A274930.P9149722371235434307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276036 (2 * n + 1) + (A000217 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A274930.P9149722371235434307

/-! ## A274930.P6831515304042662570

`A276036(A005408(n))%A016886(n)`
-/

namespace A274930.P6831515304042662570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276036 (A005408 n).toNat) (A016886 n)

end

end A274930.P6831515304042662570

/-! ## A274930.P1225792980974552147

`A331576(A090996(n))+A276036(2*n+1)`
-/

namespace A274930.P1225792980974552147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331576 (A090996 n).toNat + A276036 (2 * n + 1)

end

end A274930.P1225792980974552147

/-! ## A274930.P6418843668095416494

`A331576(Δ[A001951(n)])+A276036(n+1+n)`
-/

namespace A274930.P6418843668095416494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331576 (f1 (n + 1) - f1 n).toNat + A276036 (n + 1 + n)

end

end A274930.P6418843668095416494

/-! ## A274930.P6675478332044955217

`A001221(A303809(n+2))*A276036(2*n+1)`
-/

namespace A274930.P6675478332044955217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A303809 (n + 2)).toNat * A276036 (2 * n + 1)

end

end A274930.P6675478332044955217

/-! ## A274930.P7810128423767448742

`A001221(A306370(n+2))*A276036(2*n+1)`
-/

namespace A274930.P7810128423767448742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A306370 (n + 2)).toNat * A276036 (2 * n + 1)

end

end A274930.P7810128423767448742

/-! ## A274930.P2811220461672302888

`A276036(2*n+1)+A182492(Δ[A026232(n+1)]+3)`
-/

namespace A274930.P2811220461672302888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276036 (2 * n + 1) + A182492 (f1 (n + 1) - f1 n + 3).toNat

end

end A274930.P2811220461672302888

/-! ## A274930.P16106613343704689392

`A276036(2*n+1)-A134059(Δ[A026232(n+1)])+3`
-/

namespace A274930.P16106613343704689392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276036 (2 * n + 1) - A134059 (f1 (n + 1) - f1 n).toNat + 3

end

end A274930.P16106613343704689392

/-! ## A274930.P13669589720456650739

`A276036(2*n+1)+n*A182492(2*n)`
-/

namespace A274930.P13669589720456650739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276036 (2 * n + 1) + (n : ℤ) * A182492 (2 * n)

end

end A274930.P13669589720456650739

/-! ## A274930.P6441063907415015644

`A276036(2*n+1)+A002262(∑[n])`
-/

namespace A274930.P6441063907415015644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276036 (2 * n + 1) + A002262 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A274930.P6441063907415015644

/-! ## A274930.P17571794025082176060

`A276036(2*n+1)+A274641(A273059(n))`
-/

namespace A274930.P17571794025082176060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276036 (2 * n + 1) + A274641 (A273059 n).toNat

end

end A274930.P17571794025082176060

/-! ## A274930.P13823341330426946829

`A276036(n+1+n)/A274640(A273059(n+1))`
-/

namespace A274930.P13823341330426946829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276036 (n + 1 + n) : ℚ) / (A274640 (A273059 (n + 1)).toNat : ℚ)

end

end A274930.P13823341330426946829

/-!
# A274931: Southeast spoke of spiral in A274640.

The programs for A274931, there is no canonical definition to state claims against.
-/

/-! ## A274931.P3530597379143300330

`A274640(∑[8*n])`
-/

namespace A274931.P3530597379143300330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A274931.P3530597379143300330

/-! ## A274931.P1753675006812668814

`A274641(∑[8*n])+1`
-/

namespace A274931.P1753675006812668814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A274931.P1753675006812668814

/-! ## A274931.P921257200216092439

`or(char[2], A274640(A033996(n)))`
-/

namespace A274931.P921257200216092439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A274640 (A033996 n).toNat)

end

end A274931.P921257200216092439

/-! ## A274931.P16275866375300112448

`A008619(2*A274641(∑[8*n]))`
-/

namespace A274931.P16275866375300112448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A274641 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A274931.P16275866375300112448

/-! ## A274931.P5537586345306474489

`A008611(3*A274641(∑[8*n]))`
-/

namespace A274931.P5537586345306474489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A274641 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A274931.P5537586345306474489

/-! ## A274931.P12151889623967340352

`(A274640(A008590(∑[n]))^(1/2))²`
-/

namespace A274931.P12151889623967340352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A274640 (A008590 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)) ^ 2

end

end A274931.P12151889623967340352

/-! ## A274931.P12407415281844627592

`A274640(A033996(n))%A153080(n)`
-/

namespace A274931.P12407415281844627592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274640 (A033996 n).toNat) (A153080 n)

end

end A274931.P12407415281844627592

/-! ## A274931.P10485551917620088082

`∑{d}[A274640(A033996(n)), A000010(#)]`
-/

namespace A274931.P10485551917620088082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 (A033996 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A274931.P10485551917620088082

/-! ## A274931.P3391247079354443776

`∏{d}[A274640(A033996(n)), A014963(#)]`
-/

namespace A274931.P3391247079354443776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 (A033996 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A274931.P3391247079354443776

/-! ## A274931.P395361071151299914

`A324781(n)+1`
-/

namespace A274931.P395361071151299914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324781 n + 1

end

end A274931.P395361071151299914

/-!
# A274933: Maximal number of non-attacking queens on a quarter chessboard containing n^2 squares.

The programs for A274933, there is no canonical definition to state claims against.
-/

/-! ## A274933.P14124002706385900019

`A287864(Δ[n²])`
-/

namespace A274933.P14124002706385900019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287864 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A274933.P14124002706385900019

/-! ## A274933.P17945421894685275792

`n-A287867(Δ[n²])`
-/

namespace A274933.P17945421894685275792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A287867 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A274933.P17945421894685275792

/-! ## A274933.P491601354829312403

`A287864(2*n+1)%(n+2)`
-/

namespace A274933.P491601354829312403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287864 (2 * n + 1)) (n + 2 : ℤ)

end

end A274933.P491601354829312403

/-! ## A274933.P11262027629096800858

`A000027(A287864(2*n+1))`
-/

namespace A274933.P11262027629096800858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A287864 (2 * n + 1)).toNat

end

end A274933.P11262027629096800858

/-! ## A274933.P2395575514397953607

`A000027(n-A287867(2*n+1))`
-/

namespace A274933.P2395575514397953607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((n : ℤ) - A287867 (2 * n + 1)).toNat

end

end A274933.P2395575514397953607

/-! ## A274933.P9728545594034213202

`abs(A287867(2*n+1)+A001057(2*n))`
-/

namespace A274933.P9728545594034213202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A287867 (2 * n + 1) + A001057 (2 * n)|

end

end A274933.P9728545594034213202

/-! ## A274933.P16755543123562556134

`1-A287866(n+1)+n`
-/

namespace A274933.P16755543123562556134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A287866 (n + 1) + (n : ℤ)

end

end A274933.P16755543123562556134

/-!
# A274934: Number of unlabeled graphs with n nodes that have two components, neither of which is the empty graph.

The programs for A274934, there is no canonical definition to state claims against.
-/

/-! ## A274934.P14874397501925707696

`A275165(n)-A001349(n)`
-/

namespace A274934.P14874397501925707696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275165 n - A001349 n

end

end A274934.P14874397501925707696

/-! ## A274934.P3964357670068922510

`A275165(n)-A304311(A000217(n))`
-/

namespace A274934.P3964357670068922510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275165 n - A304311 (A000217 n).toNat

end

end A274934.P3964357670068922510

/-! ## A274934.P9515423322758740397

`A201922(A238531(n))%A000088(n)`
-/

namespace A274934.P9515423322758740397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201922 (A238531 n).toNat) (A000088 n)

end

end A274934.P9515423322758740397

/-! ## A274934.P15921951752977028027

`A201922(A238531(n))-A019590(n+1)`
-/

namespace A274934.P15921951752977028027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A238531 n).toNat - A019590 (n + 1)

end

end A274934.P15921951752977028027

/-! ## A274934.P14125330838279653386

`A275165(n)-A201922(A152947(n+1))`
-/

namespace A274934.P14125330838279653386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275165 n - A201922 (A152947 (n + 1)).toNat

end

end A274934.P14125330838279653386

/-!
# A274935: Number of n-node unlabeled forests with two connected components.

The programs for A274935, there is no canonical definition to state claims against.
-/

/-! ## A274935.P9313903583691044718

`A274937(n)+A000055(n)`
-/

namespace A274935.P9313903583691044718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274937 n + A000055 n

end

end A274935.P9313903583691044718

/-! ## A274935.P14574010196951698256

`A144520(n)+A274937(n)+1`
-/

namespace A274935.P14574010196951698256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144520 n + (A274937 n + 1)

end

end A274935.P14574010196951698256

/-! ## A274935.P9626419427409349194

`A006706(n)-A274936(n)`
-/

namespace A274935.P9626419427409349194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006706 n - A274936 n

end

end A274935.P9626419427409349194

/-! ## A274935.P6002994853536768700

`A000081(A028310(n))+A274937(n)-A217420(n+1)`
-/

namespace A274935.P6002994853536768700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (A028310 n).toNat + (A274937 n - A217420 (n + 1))

end

end A274935.P6002994853536768700

/-! ## A274935.P12121876921036152240

`A038001(A004280(n+1))+A274937(n)-A217420(n+1)`
-/

namespace A274935.P12121876921036152240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038001 (A004280 (n + 1)).toNat + (A274937 n - A217420 (n + 1))

end

end A274935.P12121876921036152240

/-! ## A274935.P17001269946164180550

`A000081(A233583(n+1))+A274937(n)-A217420(n+1)`
-/

namespace A274935.P17001269946164180550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (A233583 (n + 1)).toNat + (A274937 n - A217420 (n + 1))

end

end A274935.P17001269946164180550

/-! ## A274935.P12889319733582809968

`A274937(n)+A095133(∑[abs(1-n)])`
-/

namespace A274935.P12889319733582809968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274937 n + A095133 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A274935.P12889319733582809968

/-! ## A274935.P2807517824529497573

`A274937(n)+A106237(∑[abs(1-n)])`
-/

namespace A274935.P2807517824529497573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274937 n + A106237 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A274935.P2807517824529497573

/-! ## A274935.P54170778886346747

`A274937(n)+A136605(abs((n+2)*(1-n))/2+1)`
-/

namespace A274935.P54170778886346747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274937 n + A136605 (SequenceMachineLib.roundAway ((|(n + 2 : ℤ) * (1 - (n : ℤ))| : ℚ) / 2 + 1)).toNat

end

end A274935.P54170778886346747

/-! ## A274935.P17604811954419317643

`A274937(n)+A105821(A133263(n))`
-/

namespace A274935.P17604811954419317643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274937 n + A105821 (A133263 n).toNat

end

end A274935.P17604811954419317643

/-! ## A274935.P13652408059507806482

`A105821(A133263(n)+1)+A000055(n)`
-/

namespace A274935.P13652408059507806482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105821 (A133263 n + 1).toNat + A000055 n

end

end A274935.P13652408059507806482

/-! ## A274935.P12759779220708864763

`A274937(n)+A105821(A238531(n+1))`
-/

namespace A274935.P12759779220708864763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274937 n + A105821 (A238531 (n + 1)).toNat

end

end A274935.P12759779220708864763

/-! ## A274935.P16430979129263156750

`A274937(n)+sqrt(A001256(n))`
-/

namespace A274935.P16430979129263156750
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A274937 n : ℝ) + Real.sqrt (A001256 n : ℝ)

end

end A274935.P16430979129263156750

/-!
# A274936: Number of n-node unlabeled forests that have 2 non-isomorphic components.

The programs for A274936, there is no canonical definition to state claims against.
-/

/-! ## A274936.P3735640428484167152

`A000055(n)+A274938(n)-A000007(n)`
-/

namespace A274936.P3735640428484167152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 n + (A274938 n - A000007 n)

end

end A274936.P3735640428484167152

/-! ## A274936.P12664037263134581629

`A274938(n)+A000055(n)*A057427(n)`
-/

namespace A274936.P12664037263134581629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274938 n + A000055 n * A057427 n

end

end A274936.P12664037263134581629

/-! ## A274936.P15253046469963024274

`A274938(n)-A000055(n)*A057428(n)`
-/

namespace A274936.P15253046469963024274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274938 n - A000055 n * A057428 n

end

end A274936.P15253046469963024274

/-! ## A274936.P4378738702817166646

`(A274938(n)+A000055(n))*A005665(n)%2`
-/

namespace A274936.P4378738702817166646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A274938 n + A000055 n) * Int.tmod (A005665 n) 2

end

end A274936.P4378738702817166646

/-! ## A274936.P2633601896932298807

`A274938(n)+A000055(n)-C(2, A022280(n))`
-/

namespace A274936.P2633601896932298807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274938 n + A000055 n - (Nat.choose 2 (A022280 n).toNat : ℤ)

end

end A274936.P2633601896932298807

/-! ## A274936.P9629918293225090495

`A274938(n)+A000055(n)-C(n, A001634(n))`
-/

namespace A274936.P9629918293225090495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274938 n + A000055 n - (Nat.choose n (A001634 n).toNat : ℤ)

end

end A274936.P9629918293225090495

/-! ## A274936.P12794369713369515981

`A006706(n)-A274935(n)`
-/

namespace A274936.P12794369713369515981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006706 n - A274935 n

end

end A274936.P12794369713369515981

/-! ## A274936.P9101871227716581733

`A006706(n)-(A274937(n)+A000055(n))`
-/

namespace A274936.P9101871227716581733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006706 n - (A274937 n + A000055 n)

end

end A274936.P9101871227716581733

/-!
# A274937: Number of unlabeled forests on n nodes that have exactly two nonempty components.

The programs for A274937, there is no canonical definition to state claims against.
-/

/-! ## A274937.P11117243070337132226

`A274935(n)-A000055(n)`
-/

namespace A274937.P11117243070337132226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274935 n - A000055 n

end

end A274937.P11117243070337132226

/-! ## A274937.P288472140226065458

`A274935(n)-(A144520(n)+1)`
-/

namespace A274937.P288472140226065458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274935 n - (A144520 n + 1)

end

end A274937.P288472140226065458

/-! ## A274937.P2723852351407391287

`A217420(n+1)+A274935(n)-A000081(A028310(n))`
-/

namespace A274937.P2723852351407391287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217420 (n + 1) + (A274935 n - A000081 (A028310 n).toNat)

end

end A274937.P2723852351407391287

/-! ## A274937.P7052636379408432743

`A217420(n+1)+A274935(n)-A038001(A004280(n+1))`
-/

namespace A274937.P7052636379408432743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217420 (n + 1) + (A274935 n - A038001 (A004280 (n + 1)).toNat)

end

end A274937.P7052636379408432743

/-! ## A274937.P11411254908964992026

`A217420(n+1)+A274935(n)-A000081(A233583(n+1))`
-/

namespace A274937.P11411254908964992026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217420 (n + 1) + (A274935 n - A000081 (A233583 (n + 1)).toNat)

end

end A274937.P11411254908964992026

/-! ## A274937.P3084117376707205968

`A274935(n)-A095133(C(n, 2)+1)`
-/

namespace A274937.P3084117376707205968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274935 n - A095133 (Nat.choose n 2 + 1)

end

end A274937.P3084117376707205968

/-! ## A274937.P10697892255336472504

`A274935(n)-A095133(∑[abs(1-n)])`
-/

namespace A274937.P10697892255336472504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274935 n - A095133 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A274937.P10697892255336472504

/-! ## A274937.P161310098740766412

`A274935(n)-A106237(∑[abs(1-n)])`
-/

namespace A274937.P161310098740766412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274935 n - A106237 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A274937.P161310098740766412

/-! ## A274937.P10517078561604084594

`A274935(n)-A136605(abs((n+2)*(1-n))/2+1)`
-/

namespace A274937.P10517078561604084594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274935 n - A136605 (SequenceMachineLib.roundAway ((|(n + 2 : ℤ) * (1 - (n : ℤ))| : ℚ) / 2 + 1)).toNat

end

end A274937.P10517078561604084594

/-! ## A274937.P9968147450193317366

`A095133(A238531(n))%A274935(n)`
-/

namespace A274937.P9968147450193317366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095133 (A238531 n).toNat) (A274935 n)

end

end A274937.P9968147450193317366

/-! ## A274937.P15997449971855323556

`A105821(∑[char[1]+n]+2)`
-/

namespace A274937.P15997449971855323556
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105821 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A274937.P15997449971855323556

/-! ## A274937.P3345948497630036825

`A274935(n)-A105821(A133263(n))`
-/

namespace A274937.P3345948497630036825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274935 n - A105821 (A133263 n).toNat

end

end A274937.P3345948497630036825

/-!
# A274938: Number of unlabeled forests with n nodes that have two components, neither of which is the empty graph.

The programs for A274938, there is no canonical definition to state claims against.
-/

/-! ## A274938.P6703656936012787742

`A274936(floor(n+2-atan(n)))-A000055(n)`
-/

namespace A274938.P6703656936012787742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274936 ⌊(n + 2 : ℝ) - Real.arctan (n : ℝ)⌋.toNat - A000055 n

end

end A274938.P6703656936012787742

/-! ## A274938.P5420688504170018628

`A274936(log2(ceil(2^(n-1)))+1)-A000055(n)`
-/

namespace A274938.P5420688504170018628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274936 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ) + 1)).toNat - A000055 n

end

end A274938.P5420688504170018628

/-! ## A274938.P17662938513162558486

`A274936(A028310(n))-(A144520(n)+1)`
-/

namespace A274938.P17662938513162558486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274936 (A028310 n).toNat - (A144520 n + 1)

end

end A274938.P17662938513162558486

/-! ## A274938.P17562654812755596256

`A000007(n)+A274936(n)-A000055(n)`
-/

namespace A274938.P17562654812755596256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A274936 n - A000055 n)

end

end A274938.P17562654812755596256

/-! ## A274938.P12418205982871411254

`(A274936(n)-A000055(n))*A157928(n)`
-/

namespace A274938.P12418205982871411254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A274936 n - A000055 n) * A157928 n

end

end A274938.P12418205982871411254

/-! ## A274938.P11263473964950122547

`(A274936(n)-A000055(n))*char[A065648(n)]`
-/

namespace A274938.P11263473964950122547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065648 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A274936 n - A000055 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A274938.P11263473964950122547

/-! ## A274938.P13709091123314252519

`A274936(n)-char[A108738(n+1)]*A000055(n)`
-/

namespace A274938.P13709091123314252519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108738 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274936 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A000055 n

end

end A274938.P13709091123314252519

/-! ## A274938.P12405018124201025902

`A274936(n)-A000055(n)*A048766(A048766(n))`
-/

namespace A274938.P12405018124201025902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274936 n - A000055 n * A048766 (A048766 n).toNat

end

end A274938.P12405018124201025902

/-! ## A274938.P12548238065106656198

`(A274937(n)+A274936(n))%A274935(n)`
-/

namespace A274938.P12548238065106656198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274937 n + A274936 n) (A274935 n)

end

end A274938.P12548238065106656198

/-! ## A274938.P188543113472222678

`(A274936(n)-A000055(n))%A005195(n)`
-/

namespace A274938.P188543113472222678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274936 n - A000055 n) (A005195 n)

end

end A274938.P188543113472222678

/-!
# A274939: Numbers n with property that in the factorization of sigma(n)/n into a product of prime powers, the largest prime power is found in the denominator (here sigma(n) is the sum of the divisors of n, A000203(n)).

The programs for A274939, there is no canonical definition to state claims against.
-/

/-! ## A274939.P3810057042351868082

`lt[A274940(n+1), n]+1`
-/

namespace A274939.P3810057042351868082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274940 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A274939.P3810057042351868082

/-! ## A274939.P7751170661314223612

`lt[A274940(n*a(C(2, n))), n]` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A274939.P7751170661314223612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n f1 =>
  A274940 ((n : ℤ) * f1 (Nat.choose 2 n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A274939.P7751170661314223612

/-! ## A274939.P2009225716050793114

`lt[A274940(A028310(n)), n]`
-/

namespace A274939.P2009225716050793114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274940 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A274939.P2009225716050793114

/-! ## A274939.P14525900900215748346

`lt[A274940(A233583(n+1)), n]`
-/

namespace A274939.P14525900900215748346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274940 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A274939.P14525900900215748346

/-! ## A274939.P11118276743268160787

`lt[A274940(A000007(n)+n), n]`
-/

namespace A274939.P11118276743268160787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274940 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A274939.P11118276743268160787

/-! ## A274939.P15134920042544756009

`lt[A274940(A000038(n)+n), n]`
-/

namespace A274939.P15134920042544756009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274940 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A274939.P15134920042544756009

/-! ## A274939.P4772991030436238192

`lt[A274940(A004277(n)-n), n]`
-/

namespace A274939.P4772991030436238192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274940 (A004277 n - (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A274939.P4772991030436238192

/-! ## A274939.P16051237309063653390

`lt[A274940(A008574(n)-3*n), n]`
-/

namespace A274939.P16051237309063653390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274940 (A008574 n - (3 * n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A274939.P16051237309063653390

/-!
# A274941: Trajectory of 2 under the map x -> A274940(x).

The programs for A274941, there is no canonical definition to state claims against.
-/

/-! ## A274941.P6964797947132499337

`A274940(a(n-1))` with `a(0)=2`
-/

namespace A274941.P6964797947132499337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A274940 (a (n - 1)).toNat

end

end A274941.P6964797947132499337

/-! ## A274941.P1059362581809150352

`A274940(A028310(a(floor(n²/(n+1)))))` with `a(0)=2`
-/

namespace A274941.P1059362581809150352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A274940 (A028310 (a ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat).toNat).toNat

end

end A274941.P1059362581809150352

/-!
# A274944: Numbers with at least three digits and with the property that the sum of the squares of the first and last digits equals the number obtained when the first and last digits are deleted.

The programs for A274944, there is no canonical definition to state claims against.
-/

/-! ## A274944.P12168977494504283250

`A274945(A032551(n+2))`
-/

namespace A274944.P12168977494504283250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274945 (A032551 (n + 2)).toNat

end

end A274944.P12168977494504283250

/-! ## A274944.P17891378173309635591

`A274945(sqrt(A000005(6^n)))`
-/

namespace A274944.P17891378173309635591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274945 (SequenceMachineLib.roundAway (Real.sqrt (A000005 (6 ^ n) : ℝ))).toNat

end

end A274944.P17891378173309635591

/-! ## A274944.P16008462970324079914

`A274945(A228050(n+1)+1)`
-/

namespace A274944.P16008462970324079914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274945 (A228050 (n + 1) + 1).toNat

end

end A274944.P16008462970324079914

/-!
# A274946: Boyd's Pisot-like sequence F(0,5,11).

The programs for A274946, the canonical program `A274946.P8191381547070518280` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274946 has offset 0).

The definition of A274946 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274946.P8191381547070518280

`a(n-1)+a(n-3)+a(n-5)-a(n-6)` with `a(0)=0, a(1)=5, a(2)=11, a(3)=19, a(4)=30, a(5)=46`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A274946

/-- `a(n-1)+a(n-3)+a(n-5)-a(n-6)` -/
def P8191381547070518280.Spec : Prop :=
  ∀ n, P8191381547070518280.a n = A274946 n

theorem P8191381547070518280.correct : P8191381547070518280.Spec := by
  intro n
  simp only [A274946]

end A274946

/-! ## A274946.P13420591231225221822

`A233583(∑[A048583(n)]+1)-A048583(n)`
-/

namespace A274946.P13420591231225221822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048583 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat - A048583 n

end

end A274946.P13420591231225221822

namespace A274946

/-- `A233583(∑[A048583(n)]+1)-A048583(n)` -/
def P13420591231225221822.Spec : Prop :=
  ∀ n, P13420591231225221822.a n = A274946 n

end A274946

/-! ## A274946.P13427309183348193941

`∑[A048583(abs(1-n))%A277398(n+1)]`
-/

namespace A274946.P13427309183348193941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048583 |1 - (n : ℤ)|.toNat) (A277398 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274946.P13427309183348193941

namespace A274946

/-- `∑[A048583(abs(1-n))%A277398(n+1)]` -/
def P13427309183348193941.Spec : Prop :=
  ∀ n, P13427309183348193941.a n = A274946 n

end A274946

/-! ## A274946.P16511362871085870521

`∪[A003056(10*((n+2)*2^(n-1)-1)), ∑[A048583(n)]]`
-/

namespace A274946.P16511362871085870521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.roundAway (10 * ((n + 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1))).toNat

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048583 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A274946.P16511362871085870521

namespace A274946

/-- `∪[A003056(10*((n+2)*2^(n-1)-1)), ∑[A048583(n)]]` -/
def P16511362871085870521.Spec : Prop :=
  ∀ n, (P16511362871085870521.a n : ℤ) = A274946 n

end A274946

/-!
# A274949: Complete list of prime powers arising in classification of modular curves of prime-power level and genus 0 with infinitely many rational points.

The programs for A274949, there is no canonical definition to state claims against.
-/

/-! ## A274949.P4329638873695538631

`record[A063972(n+3)]`
-/

namespace A274949.P4329638873695538631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063972 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274949.P4329638873695538631

/-! ## A274949.P12325841902928548276

`A056781(comp[8*n])`
-/

namespace A274949.P12325841902928548276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056781 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A274949.P12325841902928548276

/-! ## A274949.P11706051831572828261

`A332739(n+2)-1`
-/

namespace A274949.P11706051831572828261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332739 (n + 2) - 1

end

end A274949.P11706051831572828261

/-! ## A274949.P3479802720782596826

`eq[n, A063972(n+1)]`
-/

namespace A274949.P3479802720782596826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063972 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A274949.P3479802720782596826

/-! ## A274949.P1519801070037482630

`eq[1, A051712(∏{p}[n, #])]`
-/

namespace A274949.P1519801070037482630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051712 (∏ p ∈ Nat.primeFactors (f3 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A274949.P1519801070037482630

/-!
# A274950: Trajectory of 0 under the morphism 0 -> 0001101, 1 -> 0011001.

The programs for A274950, there is no canonical definition to state claims against.
-/

/-! ## A274950.P8939334494716420047

`A330037(xor(A196300(n+1), A226040(n)))`
-/

namespace A274950.P8939334494716420047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330037 (Int.xor (A196300 (n + 1)) (A226040 n)).toNat

end

end A274950.P8939334494716420047

/-! ## A274950.P7259930020735481419

`A261185(lcm(13, A153679(n+1)))`
-/

namespace A274950.P7259930020735481419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261185 (Int.lcm 13 (A153679 (n + 1)))

end

end A274950.P7259930020735481419

/-! ## A274950.P5726452540775648914

`A000035(A193744(n)+A174948(n))`
-/

namespace A274950.P5726452540775648914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A193744 n + A174948 n).toNat

end

end A274950.P5726452540775648914

/-! ## A274950.P12717630298832316713

`A176405(A318758(3*n+1)*A339263(3*n))`
-/

namespace A274950.P12717630298832316713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176405 (A318758 (3 * n + 1) * A339263 (3 * n + 1)).toNat

end

end A274950.P12717630298832316713

/-! ## A274950.P11118658145685752448

`A344120(3*A138234(n))`
-/

namespace A274950.P11118658145685752448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344120 (3 * A138234 n).toNat

end

end A274950.P11118658145685752448

/-!
# A274951: Pisot sequence E(8,12), a(n) = floor( a(n-1)^2/a(n-2) + 1/2 ).

The programs for A274951, the canonical program `A274951.P2855869483060505620` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274951 has offset 0).

The definition of A274951 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2)+1/2)` (program `A274951.P2855869483060505620`, by `A274951.P2855869483060505620.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A274951.P2855869483060505620

`floor(a(n-1)²/a(n-2)+1/2)` with `a(0)=8, a(1)=12`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A274951

/-- `floor(a(n-1)²/a(n-2)+1/2)` -/
def P2855869483060505620.Spec : Prop :=
  ∀ n, P2855869483060505620.a n = A274951 n

theorem P2855869483060505620.correct : P2855869483060505620.Spec := by
  intro n
  simp only [A274951]

end A274951

/-! ## A274951.P9838747057147455320

`round(a(n-1)/a(n-2)*a(n-1))` with `a(0)=8, a(1)=12`
-/

namespace A274951.P9838747057147455320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 12] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ))

end

end A274951.P9838747057147455320

namespace A274951

/-- `round(a(n-1)/a(n-2)*a(n-1))` -/
def P9838747057147455320.Spec : Prop :=
  ∀ n, P9838747057147455320.a n = A274951 n

end A274951

/-! ## A274951.P7261945351115577988

`round(a(n-1)²/a(n-2))` with `a(0)=8, a(1)=12`
-/

namespace A274951.P7261945351115577988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 12] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ))

end

end A274951.P7261945351115577988

namespace A274951

/-- `round(a(n-1)²/a(n-2))` -/
def P7261945351115577988.Spec : Prop :=
  ∀ n, P7261945351115577988.a n = A274951 n

end A274951

/-! ## A274951.P14821338246716556814

`A020741(n)+A000005(A046872(n+1))`
-/

namespace A274951.P14821338246716556814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020741 n + A000005 (A046872 (n + 1)).toNat

end

end A274951.P14821338246716556814

namespace A274951

/-- `A020741(n)+A000005(A046872(n+1))` -/
def P14821338246716556814.Spec : Prop :=
  ∀ n, P14821338246716556814.a n = A274951 n

end A274951

/-! ## A274951.P1338684804370850380

`A020741(n)+A000005(A125876(n+1))`
-/

namespace A274951.P1338684804370850380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020741 n + A000005 (A125876 (n + 1)).toNat

end

end A274951.P1338684804370850380

namespace A274951

/-- `A020741(n)+A000005(A125876(n+1))` -/
def P1338684804370850380.Spec : Prop :=
  ∀ n, P1338684804370850380.a n = A274951 n

end A274951

/-!
# A274953: Number of n X n 0..2 arrays with no element equal to any value at offset (-1,-1), (-2,0) or (0,-2) and new values introduced in order 0..2.

The programs for A274953, there is no canonical definition to state claims against.
-/

/-! ## A274953.P9623320230793478900

`A274959(∑[4*n]+1)`
-/

namespace A274953.P9623320230793478900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274959 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A274953.P9623320230793478900

/-! ## A274953.P4372858071235904444

`A274959(A001844(n))+A108782(n)`
-/

namespace A274953.P4372858071235904444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274959 (A001844 n).toNat + A108782 n

end

end A274953.P4372858071235904444

/-! ## A274953.P7582459227514708238

`A274959(A001844(n))+A185284(n)`
-/

namespace A274953.P7582459227514708238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274959 (A001844 n).toNat + A185284 n

end

end A274953.P7582459227514708238

/-! ## A274953.P11418912529291632395

`A007318(and(2, 1-n))*A274959(A001844(n))`
-/

namespace A274953.P11418912529291632395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 2 (1 - (n : ℤ))).toNat * A274959 (A001844 n).toNat

end

end A274953.P11418912529291632395

/-! ## A274953.P3209408454150881960

`A014963(C(n+5, 3))*A274959(A001844(n))`
-/

namespace A274953.P3209408454150881960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.choose (n + 5) 3) * A274959 (A001844 n).toNat

end

end A274953.P3209408454150881960

/-!
# A274954: Number of n X 3 0..2 arrays with no element equal to any value at offset (-1,-1) (-2,0) or (0,-2) and new values introduced in order 0..2.

The programs for A274954, the canonical program `A274954.P10035714956963324201` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274954 has offset 1).

The definition of A274954 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274954.P8523695317498179026

`A006498(3*n+1)*A329510(A048867(n+1))`
-/

namespace A274954.P8523695317498179026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (3 * n + 1) * A329510 (A048867 (n + 1)).toNat

end

end A274954.P8523695317498179026

namespace A274954

/-- `A006498(3*n+1)*A329510(A048867(n+1))` -/
def P8523695317498179026.Spec : Prop :=
  ∀ n, P8523695317498179026.a n = A274954 (n + 1)

end A274954

/-! ## A274954.P5633528662460966587

`3*A006498(3*n+1)*A034444(A034444(n+1))`
-/

namespace A274954.P5633528662460966587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A006498 (3 * n + 1) * A034444 (A034444 (n + 1)).toNat)

end

end A274954.P5633528662460966587

namespace A274954

/-- `3*A006498(3*n+1)*A034444(A034444(n+1))` -/
def P5633528662460966587.Spec : Prop :=
  ∀ n, P5633528662460966587.a n = A274954 (n + 1)

end A274954

/-! ## A274954.P10035714956963324201

`A000217(p?[A133700(3*n+2)])*A006498(3*n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A274954

/-- `A000217(p?[A133700(3*n+2)])*A006498(3*n+1)` -/
def P10035714956963324201.Spec : Prop :=
  ∀ n, P10035714956963324201.a n = A274954 (n + 1)

theorem P10035714956963324201.correct : P10035714956963324201.Spec := by
  intro n
  simp only [A274954, Nat.add_sub_cancel]

end A274954

/-! ## A274954.P8238473254576665733

`A274959(∑[n+2]+4)`
-/

namespace A274954.P8238473254576665733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274959 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A274954.P8238473254576665733

namespace A274954

/-- `A274959(∑[n+2]+4)` -/
def P8238473254576665733.Spec : Prop :=
  ∀ n, P8238473254576665733.a n = A274954 (n + 1)

end A274954

/-!
# A274955: Number of nX4 0..2 arrays with no element equal to any value at offset (-1,-1) (-2,0) or (0,-2) and new values introduced in order 0..2.

The programs for A274955, there is no canonical definition to state claims against.
-/

/-! ## A274955.P5946368189190458024

`A274959(A141214(n)+7)`
-/

namespace A274955.P5946368189190458024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274959 (A141214 n + 7).toNat

end

end A274955.P5946368189190458024

/-! ## A274955.P3436678225180628876

`A274959(A052905(n)+9)`
-/

namespace A274955.P3436678225180628876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274959 (A052905 n + 9).toNat

end

end A274955.P3436678225180628876

/-! ## A274955.P10334172450621604598

`A274959(A055999(n)+10)`
-/

namespace A274955.P10334172450621604598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274959 (A055999 n + 10).toNat

end

end A274955.P10334172450621604598

/-! ## A274955.P5615549706630783086

`A274959(A167614(n+2)+1)`
-/

namespace A274955.P5615549706630783086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274959 (A167614 (n + 2) + 1).toNat

end

end A274955.P5615549706630783086

/-! ## A274955.P15552129785895971723

`A274959(A166136(n+2)-2)`
-/

namespace A274955.P15552129785895971723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274959 (A166136 (n + 2) - 2).toNat

end

end A274955.P15552129785895971723

/-!
# A274956: Number of nX5 0..2 arrays with no element equal to any value at offset (-1,-1) (-2,0) or (0,-2) and new values introduced in order 0..2.

The programs for A274956, there is no canonical definition to state claims against.
-/

/-! ## A274956.P9799161308119376097

`A274959(Δ[A264443(n)])`
-/

namespace A274956.P9799161308119376097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274959 (f1 (n + 1) - f1 n).toNat

end

end A274956.P9799161308119376097

/-! ## A274956.P6453629994055978820

`A274959(A374005(n+1))`
-/

namespace A274956.P6453629994055978820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274959 (A374005 (n + 1)).toNat

end

end A274956.P6453629994055978820

/-! ## A274956.P11369906249687901579

`A274959(A046691(n+3))`
-/

namespace A274956.P11369906249687901579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274959 (A046691 (n + 3)).toNat

end

end A274956.P11369906249687901579

/-! ## A274956.P6655874964255542108

`A274959(A056115(n)+11)`
-/

namespace A274956.P6655874964255542108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274959 (A056115 n + 11).toNat

end

end A274956.P6655874964255542108

/-! ## A274956.P4555316919803870326

`A274959(eq[4, A193592(n)])`
-/

namespace A274956.P4555316919803870326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274959 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274956.P4555316919803870326

/-!
# A274957: Number of nX6 0..2 arrays with no element equal to any value at offset (-1,-1) (-2,0) or (0,-2) and new values introduced in order 0..2.

The programs for A274957, there is no canonical definition to state claims against.
-/

/-! ## A274957.P15734710043419522352

`A274959(A166136(n+4))`
-/

namespace A274957.P15734710043419522352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274959 (A166136 (n + 4)).toNat

end

end A274957.P15734710043419522352

/-! ## A274957.P14049272339652036464

`A274959(A056115(n)+21)`
-/

namespace A274957.P14049272339652036464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274959 (A056115 n + 21).toNat

end

end A274957.P14049272339652036464

/-! ## A274957.P5461069524200313326

`A274959(A374007(n+1))`
-/

namespace A274957.P5461069524200313326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274959 (A374007 (n + 1)).toNat

end

end A274957.P5461069524200313326

/-! ## A274957.P4692008390796681149

`A274959(A052905(n+3))`
-/

namespace A274957.P4692008390796681149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274959 (A052905 (n + 3)).toNat

end

end A274957.P4692008390796681149

/-! ## A274957.P9529866858804248653

`A274959(eq[3, A219347(n)])`
-/

namespace A274957.P9529866858804248653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274959 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274957.P9529866858804248653

/-!
# A274958: Number of nX7 0..2 arrays with no element equal to any value at offset (-1,-1) (-2,0) or (0,-2) and new values introduced in order 0..2.

The programs for A274958, there is no canonical definition to state claims against.
-/

/-! ## A274958.P14585187396613065636

`A274959(A027379(n+4)+10)`
-/

namespace A274958.P14585187396613065636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274959 (A027379 (n + 4) + 10).toNat

end

end A274958.P14585187396613065636

/-! ## A274958.P17281451591562986102

`A274959(eq[8, A131818(n+1)])`
-/

namespace A274958.P17281451591562986102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274959 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274958.P17281451591562986102

/-! ## A274958.P13708855049326847319

`A274959(A374008(n+1))`
-/

namespace A274958.P13708855049326847319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274959 (A374008 (n + 1)).toNat

end

end A274958.P13708855049326847319

/-! ## A274958.P15947585985678425496

`A274959(A055999(n+4))`
-/

namespace A274958.P15947585985678425496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274959 (A055999 (n + 4)).toNat

end

end A274958.P15947585985678425496

/-! ## A274958.P10855644924909089946

`A274959(eq[4, A219347(n)])`
-/

namespace A274958.P10855644924909089946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274959 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274958.P10855644924909089946

/-!
# A274961: G.f.: 1 = ...((((1/(1-x) - a(1)*x )^2 - a(2)*x^2 )^2 - a(3)*x^3 )^2 - a(4)*x^4 )^2 -..., an infinite series of nested squares.

The programs for A274961, there is no canonical definition to state claims against.
-/

/-! ## A274961.P11462844402250409001

`A142727(A026119(n))`
-/

namespace A274961.P11462844402250409001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142727 (A026119 n).toNat

end

end A274961.P11462844402250409001

/-! ## A274961.P12069273000436431751

`A228354(A047081(n))`
-/

namespace A274961.P12069273000436431751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228354 (A047081 n).toNat

end

end A274961.P12069273000436431751

/-! ## A274961.P3947519704085033455

`A142727(A149834(n))`
-/

namespace A274961.P3947519704085033455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142727 (A149834 n).toNat

end

end A274961.P3947519704085033455

/-!
# A274963: Numbers n such that both sigma(n) and sigma(n) - 2 are primes.

The programs for A274963, there is no canonical definition to state claims against.
-/

/-! ## A274963.P7287938969112632553

`∩[A023194(n+1), A249485(n+1)]`
-/

namespace A274963.P7287938969112632553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274963.P7287938969112632553

/-! ## A274963.P11056675347293506912

`∩[A055638(n+1)², A249485(n+1)]`
-/

namespace A274963.P11056675347293506912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055638 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274963.P11056675347293506912

/-! ## A274963.P15101615949701425624

`∩[A249485(n+1), A270413(n+1)-1]`
-/

namespace A274963.P15101615949701425624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270413 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274963.P15101615949701425624

/-! ## A274963.P17996796386066452078

`∩[A249485(n+1), ceil(A292446(n+1)/2)]`
-/

namespace A274963.P17996796386066452078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A292446 (n + 1) : ℚ) / 2⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274963.P17996796386066452078

/-!
# A274964: G.f.: 1 = ...(((1/(1-x) - a(1)*0!*x )^2 - a(2)*1!*x^2 )^3 - a(3)*2!*x^3 )^4 - a(4)*3!*x^4 )^5 -..., an infinite series of nested powers.

The programs for A274964, there is no canonical definition to state claims against.
-/

/-! ## A274964.P9856798980843515107

`xor(A145864(n+1), A248327(A274963(n+1)))`
-/

namespace A274964.P9856798980843515107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A145864 (n + 1)) (A248327 (A274963 (n + 1)).toNat)

end

end A274964.P9856798980843515107

/-!
# A274965: G.f. A(x) satisfies: 1 = ...(((((A(x) - x)^(1/2) - x^2)^(1/2) - x^3)^(1/2) - x^4)^(1/2) - x^5)^(1/2) -...- x^n)^(1/2) -..., an infinite series of nested square roots.

The programs for A274965, there is no canonical definition to state claims against.
-/

/-! ## A274965.P6604981814650451760

`A249728(A165538(n))`
-/

namespace A274965.P6604981814650451760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (A165538 n).toNat

end

end A274965.P6604981814650451760

/-! ## A274965.P11742790782005631977

`A005041(or(1, A279569(n)))`
-/

namespace A274965.P11742790782005631977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (Int.lor 1 (A279569 n)).toNat

end

end A274965.P11742790782005631977

/-! ## A274965.P7927353073516554592

`A005041(xor(1, A279569(n)))`
-/

namespace A274965.P7927353073516554592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (Int.xor 1 (A279569 n)).toNat

end

end A274965.P7927353073516554592

/-! ## A274965.P12004758608578500560

`round(A100022(n+1)/A008776(n))`
-/

namespace A274965.P12004758608578500560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A100022 (n + 1) : ℚ) / (A008776 n : ℚ))

end

end A274965.P12004758608578500560

/-! ## A274965.P15228174406596833918

`A001462(ceil(Δ[A204678(n+1)]/4))`
-/

namespace A274965.P15228174406596833918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204678 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 ⌈(f1 (n + 1) - f1 n : ℚ) / 4⌉.toNat

end

end A274965.P15228174406596833918

/-!
# A274966: E.g.f. A(x) satisfies: 1 = ...(((((A(x) - x)^(1/2) - x^2/2!)^(1/3) - x^3/3!)^(1/4) - x^4/4!)^(1/5) - x^5/5!)^(1/6) -...- x^n/n!)^(1/(n+1)) -...

The programs for A274966, there is no canonical definition to state claims against.
-/

/-! ## A274966.P12188562254768219718

`A001281(A058583(n)+n!)`
-/

namespace A274966.P12188562254768219718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A058583 n + (Nat.factorial n : ℤ)).toNat

end

end A274966.P12188562254768219718

/-! ## A274966.P494977167770846264

`A004526(A058583(n)+n!)`
-/

namespace A274966.P494977167770846264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A058583 n + (Nat.factorial n : ℤ)).toNat

end

end A274966.P494977167770846264

/-! ## A274966.P1780570244434867666

`A025480(A058583(n)+A000142(n))`
-/

namespace A274966.P1780570244434867666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A058583 n + A000142 n).toNat

end

end A274966.P1780570244434867666

/-!
# A274967: Odd composite numbers n which are not m-gonal number for 3 <= m < n.

The programs for A274967, there is no canonical definition to state claims against.
-/

/-! ## A274967.P11420095298887330066

`filter[A176949(n+1), A093719(#)]`
-/

namespace A274967.P11420095298887330066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A274967.P11420095298887330066

/-! ## A274967.P16994468692257488822

`filter[A176949(n+1), A162289(#)]`
-/

namespace A274967.P16994468692257488822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A274967.P16994468692257488822

/-! ## A274967.P3609137937015655246

`filter[A176949(n+1), A320106(#)]`
-/

namespace A274967.P3609137937015655246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A274967.P3609137937015655246

/-! ## A274967.P15129101305241181382

`filter[A176949(n+1), A324908(#)]`
-/

namespace A274967.P15129101305241181382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A274967.P15129101305241181382

/-! ## A274967.P13118874753873788966

`filter[A176949(n+1), A353638(#)]`
-/

namespace A274967.P13118874753873788966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353638 (f1 j).toNat = 1) n)

end

end A274967.P13118874753873788966

/-! ## A274967.P10976631116298738822

`filter[A176949(n+1), A354354(#)]`
-/

namespace A274967.P10976631116298738822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A274967.P10976631116298738822

/-! ## A274967.P17708533767836594201

`filter[A176949(n+1), A355450(#)]`
-/

namespace A274967.P17708533767836594201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355450 (f1 j).toNat = 1) n)

end

end A274967.P17708533767836594201

/-! ## A274967.P17331620497190471951

`∩[A038509(n+1), A176949(n+1)]`
-/

namespace A274967.P17331620497190471951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274967.P17331620497190471951

/-! ## A274967.P817599726221980686

`∩[A038510(n+1), A176949(n+1)]`
-/

namespace A274967.P817599726221980686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274967.P817599726221980686

/-! ## A274967.P6211240793068290772

`∩[A067793(n+1), A176949(n+1)]`
-/

namespace A274967.P6211240793068290772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274967.P6211240793068290772

/-! ## A274967.P18342332830017719538

`∩[A121707(n+1), A176949(n+1)]`
-/

namespace A274967.P18342332830017719538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274967.P18342332830017719538

/-! ## A274967.P11120717738491490132

`∩[A176949(n+1), A274172(n+1)]`
-/

namespace A274967.P11120717738491490132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274967.P11120717738491490132

/-! ## A274967.P4239630107731762207

`∩[A176949(n+1), A340269(n+1)]`
-/

namespace A274967.P4239630107731762207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274967.P4239630107731762207

/-! ## A274967.P12448082348717360796

`∩[A176949(n+1), A070884(n)]`
-/

namespace A274967.P12448082348717360796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274967.P12448082348717360796

/-! ## A274967.P10986804735647557475

`∩[A007775(n+1), A176949(n+1)]`
-/

namespace A274967.P10986804735647557475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274967.P10986804735647557475

/-! ## A274967.P18121602197479742800

`∩[A054403(n+1), A176949(n+1)]`
-/

namespace A274967.P18121602197479742800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274967.P18121602197479742800

/-! ## A274967.P11060942020784453029

`∩[A069063(n+1), A176949(n+1)]`
-/

namespace A274967.P11060942020784453029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274967.P11060942020784453029

/-! ## A274967.P3019573792643571060

`∩[A176949(n+1), A100490(n)]`
-/

namespace A274967.P3019573792643571060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100490 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274967.P3019573792643571060

/-! ## A274967.P12996074724499257284

`∩[A053795(n+1), A176949(n+1)]`
-/

namespace A274967.P12996074724499257284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274967.P12996074724499257284

/-! ## A274967.P8629147392602760682

`∩[A176949(n+1), A261271(n+1)]`
-/

namespace A274967.P8629147392602760682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274967.P8629147392602760682

/-!
# A274968: Even numbers n >= 4 which are not m-gonal number for 3 <= m < n.

The programs for A274968, there is no canonical definition to state claims against.
-/

/-! ## A274968.P1289725102452480880

`filter[A176949(n+1), A120325(#)]`
-/

namespace A274968.P1289725102452480880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120325 (f1 j).toNat = 1) n)

end

end A274968.P1289725102452480880

/-! ## A274968.P18036530552576467573

`filter[A176949(n+1), A353525(#)]`
-/

namespace A274968.P18036530552576467573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353525 (f1 j).toNat = 1) n)

end

end A274968.P18036530552576467573

/-! ## A274968.P17547383797027749985

`filter[A176949(n+1), A354034(#)]`
-/

namespace A274968.P17547383797027749985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A274968.P17547383797027749985

/-! ## A274968.P2440044410926239131

`∩[A026145(n+1), A176949(n+1)]`
-/

namespace A274968.P2440044410926239131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274968.P2440044410926239131

/-! ## A274968.P15398543952195449611

`∩[A140164(n+1), A176949(n+1)]`
-/

namespace A274968.P15398543952195449611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274968.P15398543952195449611

/-! ## A274968.P8776839029468796946

`∩[A192489(n+1)+1, A176949(n+1)]`
-/

namespace A274968.P8776839029468796946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192489 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274968.P8776839029468796946

/-! ## A274968.P6496193015047810019

`∩[A047235(n+1), A176949(n+1)]`
-/

namespace A274968.P6496193015047810019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274968.P6496193015047810019

/-! ## A274968.P7954219575596778504

`∩[A118286(n+1), A176949(n+1)]`
-/

namespace A274968.P7954219575596778504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118286 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274968.P7954219575596778504

/-! ## A274968.P7371937500331815530

`∩[A038179(n+1)+1, A176949(n+1)]`
-/

namespace A274968.P7371937500331815530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038179 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274968.P7371937500331815530

/-! ## A274968.P9072665276616624166

`∩[A342050(n+1), A176949(n+1)]`
-/

namespace A274968.P9072665276616624166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274968.P9072665276616624166

/-! ## A274968.P6827052259347071312

`filter[A090467(n+3), A120325(#)]`
-/

namespace A274968.P6827052259347071312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090467 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120325 (f1 j).toNat = 1) n)

end

end A274968.P6827052259347071312

/-! ## A274968.P762082089646417687

`filter[A090467(n+3), A353525(#)]`
-/

namespace A274968.P762082089646417687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090467 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353525 (f1 j).toNat = 1) n)

end

end A274968.P762082089646417687

/-! ## A274968.P5912989960336915456

`filter[A090467(n+3), A354034(#)]`
-/

namespace A274968.P5912989960336915456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090467 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A274968.P5912989960336915456

/-! ## A274968.P9654782752283720546

`∩[A176949(n+1), A004271(n)]`
-/

namespace A274968.P9654782752283720546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274968.P9654782752283720546

/-! ## A274968.P8526625186335154715

`∩[A176949(n+1), A004275(n)]`
-/

namespace A274968.P8526625186335154715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274968.P8526625186335154715

/-! ## A274968.P6114072991380996677

`∩[A176949(n+1), A004277(n)]`
-/

namespace A274968.P6114072991380996677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274968.P6114072991380996677

/-! ## A274968.P14438925820676757704

`∩[A176949(n+1), A004279(n)]`
-/

namespace A274968.P14438925820676757704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274968.P14438925820676757704

/-! ## A274968.P173958040479689030

`∩[A176949(n+1), A005843(n)]`
-/

namespace A274968.P173958040479689030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274968.P173958040479689030

/-!
# A274969: Number of walks in the first quadrant starting and ending at (0,0) consisting of 3n steps taken from {E=(1, 0), D=(-1, 1), S=(0, -1)}, no S step occurring before the final E step.

The programs for A274969, the canonical program `A274969.P429463321413355336` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274969 has offset 0).

The definition of A274969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274969.P3919472758520299919

`A387700(∑[n+1]+n)`
-/

namespace A274969.P3919472758520299919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387700 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A274969.P3919472758520299919

namespace A274969

/-- `A387700(∑[n+1]+n)` -/
def P3919472758520299919.Spec : Prop :=
  ∀ n, P3919472758520299919.a n = A274969 n

end A274969

/-! ## A274969.P16377119580636020936

`(∑[n]+1)/2*A000139(n)`
-/

namespace A274969.P16377119580636020936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) / 2 * (A000139 n : ℚ)

end

end A274969.P16377119580636020936

namespace A274969

/-- `(∑[n]+1)/2*A000139(n)` -/
def P16377119580636020936.Spec : Prop :=
  ∀ n, P16377119580636020936.a n = (A274969 n : ℚ)

end A274969

/-! ## A274969.P429463321413355336

`2*A174687(n)-A026004(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A274969

/-- `2*A174687(n)-A026004(n)` -/
def P429463321413355336.Spec : Prop :=
  ∀ n, P429463321413355336.a n = A274969 n

theorem P429463321413355336.correct : P429463321413355336.Spec := by
  intro n
  simp only [A274969]

end A274969

/-! ## A274969.P20099958542242038

`A000124(n)*A000139(n)/2`
-/

namespace A274969.P20099958542242038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000124 n * A000139 n : ℚ) / 2

end

end A274969.P20099958542242038

namespace A274969

/-- `A000124(n)*A000139(n)/2` -/
def P20099958542242038.Spec : Prop :=
  ∀ n, P20099958542242038.a n = (A274969 n : ℚ)

end A274969

/-! ## A274969.P1260224003834499250

`A000124(n)/(n+1)*A001764(n)`
-/

namespace A274969.P1260224003834499250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000124 n : ℚ) / (n + 1 : ℚ) * (A001764 n : ℚ)

end

end A274969.P1260224003834499250

namespace A274969

/-- `A000124(n)/(n+1)*A001764(n)` -/
def P1260224003834499250.Spec : Prop :=
  ∀ n, P1260224003834499250.a n = (A274969 n : ℚ)

end A274969

/-! ## A274969.P12345927793070664457

`∑[A028310(n)]/(n+1)*A001764(n)`
-/

namespace A274969.P12345927793070664457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ) * (A001764 n : ℚ)

end

end A274969.P12345927793070664457

namespace A274969

/-- `∑[A028310(n)]/(n+1)*A001764(n)` -/
def P12345927793070664457.Spec : Prop :=
  ∀ n, P12345927793070664457.a n = (A274969 n : ℚ)

end A274969

/-! ## A274969.P13112591120874115702

`A000124(n)/A016777(n)*A006013(n)`
-/

namespace A274969.P13112591120874115702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000124 n : ℚ) / (A016777 n : ℚ) * (A006013 n : ℚ)

end

end A274969.P13112591120874115702

namespace A274969

/-- `A000124(n)/A016777(n)*A006013(n)` -/
def P13112591120874115702.Spec : Prop :=
  ∀ n, P13112591120874115702.a n = (A274969 n : ℚ)

end A274969

/-! ## A274969.P16303875248781654554

`(3*A001764(n)-A006013(n))/2*A000124(n)`
-/

namespace A274969.P16303875248781654554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A001764 n - A006013 n : ℚ) / 2 * (A000124 n : ℚ)

end

end A274969.P16303875248781654554

namespace A274969

/-- `(3*A001764(n)-A006013(n))/2*A000124(n)` -/
def P16303875248781654554.Spec : Prop :=
  ∀ n, P16303875248781654554.a n = (A274969 n : ℚ)

end A274969

/-! ## A274969.P15559616403093466595

`A052183(n)%A103938(n+1)/2*A000124(n)`
-/

namespace A274969.P15559616403093466595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A052183 n) (A103938 (n + 1)) : ℚ) / 2 * (A000124 n : ℚ)

end

end A274969.P15559616403093466595

namespace A274969

/-- `A052183(n)%A103938(n+1)/2*A000124(n)` -/
def P15559616403093466595.Spec : Prop :=
  ∀ n, P15559616403093466595.a n = (A274969 n : ℚ)

end A274969

/-! ## A274969.P14002554788944895960

`gcd(2*A001764(n), A007226(n))/2*A000124(n)`
-/

namespace A274969.P14002554788944895960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (2 * A001764 n) (A007226 n) : ℚ) / 2 * (A000124 n : ℚ)

end

end A274969.P14002554788944895960

namespace A274969

/-- `gcd(2*A001764(n), A007226(n))/2*A000124(n)` -/
def P14002554788944895960.Spec : Prop :=
  ∀ n, P14002554788944895960.a n = (A274969 n : ℚ)

end A274969

/-! ## A274969.P712827843439522725

`(A103938(n+1)-∑{d}[n+1, A251662(#)])/2*A000124(n)`
-/

namespace A274969.P712827843439522725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A103938 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A251662 d : ℤ) : ℚ) / 2 * (A000124 n : ℚ)

end

end A274969.P712827843439522725

namespace A274969

/-- `(A103938(n+1)-∑{d}[n+1, A251662(#)])/2*A000124(n)` -/
def P712827843439522725.Spec : Prop :=
  ∀ n, P712827843439522725.a n = (A274969 n : ℚ)

end A274969

/-!
# A274970: Number of 2-stack pushall sortable permutations of length n.

The programs for A274970, there is no canonical definition to state claims against.
-/

/-! ## A274970.P11480047046453095242

`n!-A123262(2^n-1)`
-/

namespace A274970.P11480047046453095242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A123262 (2 ^ n - 1)

end

end A274970.P11480047046453095242

/-! ## A274970.P13675737301152857419

`A127289(A127292(n!))`
-/

namespace A274970.P13675737301152857419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127289 (A127292 (Nat.factorial n)).toNat

end

end A274970.P13675737301152857419

/-! ## A274970.P9785011915247454201

`A130343(A130382(n!))`
-/

namespace A274970.P9785011915247454201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130343 (A130382 (Nat.factorial n)).toNat

end

end A274970.P9785011915247454201

/-!
# A274971: Numbers k such that (x+1)^3 - x^3 = k*y^2 has integer solutions.

The programs for A274971, there is no canonical definition to state claims against.
-/

/-! ## A274971.P107785084143341901

`record[A170824(A304802(n)²)]`
-/

namespace A274971.P107785084143341901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170824 (A304802 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274971.P107785084143341901

/-! ## A274971.P12297333251321013685

`eq[A000035(n), A033630(A028563(n))]`
-/

namespace A274971.P12297333251321013685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 (A028563 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274971.P12297333251321013685

/-! ## A274971.P13263989577916274099

`A016921(eq[A309932(n), A324748(n)])`
-/

namespace A274971.P13263989577916274099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309932 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A274971.P13263989577916274099

/-! ## A274971.P5854939159680557389

`eq[A006955(n), A210445(A068140(n+4))]`
-/

namespace A274971.P5854939159680557389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006955 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210445 (A068140 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274971.P5854939159680557389

/-! ## A274971.P2375670597800217730

`A121289(A136054(n+1))`
-/

namespace A274971.P2375670597800217730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121289 (A136054 (n + 1)).toNat

end

end A274971.P2375670597800217730

/-!
# A274972: Numbers x such that there exists n in N : (x+1)^3 - x^3 = 61*n^2.

The programs for A274972, there is no canonical definition to state claims against.
-/

/-! ## A274972.P9167553356518115725

`A263948(n+1)/61`
-/

namespace A274972.P9167553356518115725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263948 (n + 1) : ℚ) / 61

end

end A274972.P9167553356518115725

/-!
# A274973: Centered cubohemioctahedral numbers: a(n) = 2*n^3+9*n^2+n+1.

The programs for A274973, the canonical program `A274973.P1909887349450309276` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274973 has offset 0).

The definition of A274973 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n^3+9*n²+n+1` (program `A274973.P1909887349450309276`, by `A274973.P1909887349450309276.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A274973.P1909887349450309276

`2*n^3+9*n²+n+1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A274973

/-- `2*n^3+9*n²+n+1` -/
def P1909887349450309276.Spec : Prop :=
  ∀ n, (P1909887349450309276.a n : ℤ) = A274973 n

theorem P1909887349450309276.correct : P1909887349450309276.Spec := by
  intro n
  simp only [A274973]

end A274973

/-! ## A274973.P15162780228437634126

`abs(A244803(n+1)+2*n+(2*n-3)*n²)`
-/

namespace A274973.P15162780228437634126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A244803 (n + 1) + ((2 * n : ℤ) + ((2 * n : ℤ) - 3) * (n ^ 2 : ℤ))|

end

end A274973.P15162780228437634126

namespace A274973

/-- `abs(A244803(n+1)+2*n+(2*n-3)*n²)` -/
def P15162780228437634126.Spec : Prop :=
  ∀ n, P15162780228437634126.a n = A274973 n

end A274973

/-! ## A274973.P15678498354146142108

`round(A244803(n+1)+(A160378(abs(1-n)+1)+1)*2*n/(n+1))`
-/

namespace A274973.P15678498354146142108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A244803 (n + 1) : ℚ) + ((A160378 (|1 - (n : ℤ)| + 1).toNat + 1) * (2 * n : ℤ) : ℚ) / (n + 1 : ℚ))

end

end A274973.P15678498354146142108

namespace A274973

/-- `round(A244803(n+1)+(A160378(abs(1-n)+1)+1)*2*n/(n+1))` -/
def P15678498354146142108.Spec : Prop :=
  ∀ n, P15678498354146142108.a n = A274973 n

end A274973

/-! ## A274973.P9764240939515717955

`or(1, Δ[A289223(n+2)])`
-/

namespace A274973.P9764240939515717955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289223 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A274973.P9764240939515717955

namespace A274973

/-- `or(1, Δ[A289223(n+2)])` -/
def P9764240939515717955.Spec : Prop :=
  ∀ n, P9764240939515717955.a n = A274973 n

end A274973

/-! ## A274973.P2553962002894649440

`Δ[(n²-n)*A046691(n)+n]`
-/

namespace A274973.P2553962002894649440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - (n : ℤ)) * A046691 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A274973.P2553962002894649440

namespace A274973

/-- `Δ[(n²-n)*A046691(n)+n]` -/
def P2553962002894649440.Spec : Prop :=
  ∀ n, P2553962002894649440.a n = A274973 n

end A274973

/-! ## A274973.P12593485120032480714

`Δ[A289223(n+2)-A024000(n)]`
-/

namespace A274973.P12593485120032480714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289223 (n + 2) - A024000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A274973.P12593485120032480714

namespace A274973

/-- `Δ[A289223(n+2)-A024000(n)]` -/
def P12593485120032480714.Spec : Prop :=
  ∀ n, P12593485120032480714.a n = A274973 n

end A274973

/-! ## A274973.P9544103964325716622

`Δ[A289223(n+2)+A000027(n+1)]`
-/

namespace A274973.P9544103964325716622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289223 (n + 2) + A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A274973.P9544103964325716622

namespace A274973

/-- `Δ[A289223(n+2)+A000027(n+1)]` -/
def P9544103964325716622.Spec : Prop :=
  ∀ n, P9544103964325716622.a n = A274973 n

end A274973

/-! ## A274973.P13862983808161306289

`record[A055522(n+3)-(6*n+5)]`
-/

namespace A274973.P13862983808161306289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055522 (n + 3) - (6 * n + 5 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274973.P13862983808161306289

namespace A274973

/-- `record[A055522(n+3)-(6*n+5)]` -/
def P13862983808161306289.Spec : Prop :=
  ∀ n, P13862983808161306289.a n = A274973 n

end A274973

/-! ## A274973.P15654999760002983956

`∑[A008458(A004273(n)+n²)]`
-/

namespace A274973.P15654999760002983956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A004273 n + (n ^ 2 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274973.P15654999760002983956

namespace A274973

/-- `∑[A008458(A004273(n)+n²)]` -/
def P15654999760002983956.Spec : Prop :=
  ∀ n, P15654999760002983956.a n = A274973 n

end A274973

/-! ## A274973.P6192576134562472229

`∑[A204502(2*(n+1)²)]`
-/

namespace A274973.P6192576134562472229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204502 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274973.P6192576134562472229

namespace A274973

/-- `∑[A204502(2*(n+1)²)]` -/
def P6192576134562472229.Spec : Prop :=
  ∀ n, P6192576134562472229.a n = A274973 n

end A274973

/-!
# A274974: Centered octahemioctahedral numbers: a(n) = (4*n^3+24*n^2+8*n+3)/3.

The programs for A274974, the canonical program `A274974.P5151845161253712593` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274974 has offset 0).

The definition of A274974 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274974.P5151845161253712593

`(4*n^3+24*n²+8*n+3)/3`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A274974

/-- `(4*n^3+24*n²+8*n+3)/3` -/
def P5151845161253712593.Spec : Prop :=
  ∀ n, P5151845161253712593.a n = (A274974 n : ℚ)

end A274974

/-! ## A274974.P2700263825694604014

`5-∑[a(n-1)-8*(n+1)]` with `a(0)=4`
-/

namespace A274974.P2700263825694604014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) - (8 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274974.P2700263825694604014

namespace A274974

/-- `5-∑[a(n-1)-8*(n+1)]` -/
def P2700263825694604014.Spec : Prop :=
  ∀ n, P2700263825694604014.a n = A274974 n

end A274974

/-! ## A274974.P9045663913064770439

`or(1, A001845(n)+6*n²)`
-/

namespace A274974.P9045663913064770439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001845 n + (6 * n ^ 2 : ℤ))

end

end A274974.P9045663913064770439

namespace A274974

/-- `or(1, A001845(n)+6*n²)` -/
def P9045663913064770439.Spec : Prop :=
  ∀ n, P9045663913064770439.a n = A274974 n

end A274974

/-! ## A274974.P5855146704077512609

`A033581(n)+A001845(n)`
-/

namespace A274974.P5855146704077512609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n + A001845 n

end

end A274974.P5855146704077512609

namespace A274974

/-- `A033581(n)+A001845(n)` -/
def P5855146704077512609.Spec : Prop :=
  ∀ n, P5855146704077512609.a n = A274974 n

end A274974

/-! ## A274974.P6932710399976368175

`A051662(n)+A022266(n)`
-/

namespace A274974.P6932710399976368175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051662 n + A022266 n

end

end A274974.P6932710399976368175

namespace A274974

/-- `A051662(n)+A022266(n)` -/
def P6932710399976368175.Spec : Prop :=
  ∀ n, P6932710399976368175.a n = A274974 n

end A274974

/-! ## A274974.P16096982525186405470

`A139277(n)+A030440(n)`
-/

namespace A274974.P16096982525186405470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139277 n + A030440 n

end

end A274974.P16096982525186405470

namespace A274974

/-- `A139277(n)+A030440(n)` -/
def P16096982525186405470.Spec : Prop :=
  ∀ n, P16096982525186405470.a n = A274974 n

end A274974

/-! ## A274974.P9534981432718752946

`A161712(n)+A033583(n)`
-/

namespace A274974.P9534981432718752946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161712 n + A033583 n

end

end A274974.P9534981432718752946

namespace A274974

/-- `A161712(n)+A033583(n)` -/
def P9534981432718752946.Spec : Prop :=
  ∀ n, P9534981432718752946.a n = A274974 n

end A274974

/-! ## A274974.P11835061723639228468

`A166464(n)+A033580(n)`
-/

namespace A274974.P11835061723639228468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166464 n + A033580 n

end

end A274974.P11835061723639228468

namespace A274974

/-- `A166464(n)+A033580(n)` -/
def P11835061723639228468.Spec : Prop :=
  ∀ n, P11835061723639228468.a n = A274974 n

end A274974

/-! ## A274974.P4276630359785971812

`A188135(n)+A035597(n)`
-/

namespace A274974.P4276630359785971812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188135 n + A035597 n

end

end A274974.P4276630359785971812

namespace A274974

/-- `A188135(n)+A035597(n)` -/
def P4276630359785971812.Spec : Prop :=
  ∀ n, P4276630359785971812.a n = A274974 n

end A274974

/-! ## A274974.P11063420131901453671

`A236267(n)+A000447(n)`
-/

namespace A274974.P11063420131901453671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236267 n + A000447 n

end

end A274974.P11063420131901453671

namespace A274974

/-- `A236267(n)+A000447(n)` -/
def P11063420131901453671.Spec : Prop :=
  ∀ n, P11063420131901453671.a n = A274974 n

end A274974

/-! ## A274974.P15908078213342060985

`A139275(n)+A100503(n)`
-/

namespace A274974.P15908078213342060985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139275 n + A100503 n

end

end A274974.P15908078213342060985

namespace A274974

/-- `A139275(n)+A100503(n)` -/
def P15908078213342060985.Spec : Prop :=
  ∀ n, P15908078213342060985.a n = A274974 n

end A274974

/-! ## A274974.P5681127397742067500

`A140811(n)+A100504(n)`
-/

namespace A274974.P5681127397742067500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140811 n + A100504 n

end

end A274974.P5681127397742067500

namespace A274974

/-- `A140811(n)+A100504(n)` -/
def P5681127397742067500.Spec : Prop :=
  ∀ n, P5681127397742067500.a n = A274974 n

end A274974

/-! ## A274974.P15591906400512055046

`A161703(n)+A126964(n)`
-/

namespace A274974.P15591906400512055046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161703 n + A126964 n

end

end A274974.P15591906400512055046

namespace A274974

/-- `A161703(n)+A126964(n)` -/
def P15591906400512055046.Spec : Prop :=
  ∀ n, P15591906400512055046.a n = A274974 n

end A274974

/-! ## A274974.P11513945051650577856

`A273316(n)+A016742(n)`
-/

namespace A274974.P11513945051650577856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273316 n + A016742 n

end

end A274974.P11513945051650577856

namespace A274974

/-- `A273316(n)+A016742(n)` -/
def P11513945051650577856.Spec : Prop :=
  ∀ n, P11513945051650577856.a n = A274974 n

end A274974

/-! ## A274974.P13207445005273163399

`A217873(n)+A081585(n)`
-/

namespace A274974.P13207445005273163399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217873 n + A081585 n

end

end A274974.P13207445005273163399

namespace A274974

/-- `A217873(n)+A081585(n)` -/
def P13207445005273163399.Spec : Prop :=
  ∀ n, P13207445005273163399.a n = A274974 n

end A274974

/-! ## A274974.P11562262813071907215

`A202803(n)+A098931(n)`
-/

namespace A274974.P11562262813071907215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202803 n + A098931 n

end

end A274974.P11562262813071907215

namespace A274974

/-- `A202803(n)+A098931(n)` -/
def P11562262813071907215.Spec : Prop :=
  ∀ n, P11562262813071907215.a n = A274974 n

end A274974

/-! ## A274974.P10865588635222340547

`A273408(n)+A033954(n)`
-/

namespace A274974.P10865588635222340547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273408 n + A033954 n

end

end A274974.P10865588635222340547

namespace A274974

/-- `A273408(n)+A033954(n)` -/
def P10865588635222340547.Spec : Prop :=
  ∀ n, P10865588635222340547.a n = A274974 n

end A274974

/-! ## A274974.P14570438190394200644

`A322594(n)+A033996(n)`
-/

namespace A274974.P14570438190394200644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322594 n + A033996 n

end

end A274974.P14570438190394200644

namespace A274974

/-- `A322594(n)+A033996(n)` -/
def P14570438190394200644.Spec : Prop :=
  ∀ n, P14570438190394200644.a n = A274974 n

end A274974

/-! ## A274974.P15807740462469467866

`A381390(n)+A275876(n)`
-/

namespace A274974.P15807740462469467866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381390 n + A275876 n

end

end A274974.P15807740462469467866

namespace A274974

/-- `A381390(n)+A275876(n)` -/
def P15807740462469467866.Spec : Prop :=
  ∀ n, P15807740462469467866.a n = A274974 n

end A274974

/-! ## A274974.P5673842445426076118

`A100178(n+1)+A033429(n)`
-/

namespace A274974.P5673842445426076118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100178 (n + 1) + A033429 n

end

end A274974.P5673842445426076118

namespace A274974

/-- `A100178(n+1)+A033429(n)` -/
def P5673842445426076118.Spec : Prop :=
  ∀ n, P5673842445426076118.a n = A274974 n

end A274974

/-!
# A274975: Sum of n-th powers of the three roots of x^3-2*x^2-x+1.

The programs for A274975, the canonical program `A274975.P15751467252794409162` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274975 has offset 0).

The definition of A274975 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274975.P15751467252794409162

`2*a(n-1)+a(n-2)-a(n-3)` with `a(0)=3, a(1)=2, a(2)=6`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A274975

/-- `2*a(n-1)+a(n-2)-a(n-3)` -/
def P15751467252794409162.Spec : Prop :=
  ∀ n, P15751467252794409162.a n = A274975 n

theorem P15751467252794409162.correct : P15751467252794409162.Spec := by
  intro n
  simp only [A274975]

end A274975

/-! ## A274975.P3683947383877462370

`A157928(n)+A107298(n)`
-/

namespace A274975.P3683947383877462370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n + A107298 n

end

end A274975.P3683947383877462370

namespace A274975

/-- `A157928(n)+A107298(n)` -/
def P3683947383877462370.Spec : Prop :=
  ∀ n, P3683947383877462370.a n = A274975 n

end A274975

/-! ## A274975.P9174939993377858978

`A033304(log2(A011782(n)))+A000007(n)`
-/

namespace A274975.P9174939993377858978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033304 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat + A000007 n

end

end A274975.P9174939993377858978

namespace A274975

/-- `A033304(log2(A011782(n)))+A000007(n)` -/
def P9174939993377858978.Spec : Prop :=
  ∀ n, P9174939993377858978.a n = A274975 n

end A274975

/-! ## A274975.P7241766463043211074

`A187068(2*n)+A052994(n+1)-A187068(2*n+1)`
-/

namespace A274975.P7241766463043211074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187068 (2 * n) + (A052994 (n + 1) - A187068 (2 * n + 1))

end

end A274975.P7241766463043211074

namespace A274975

/-- `A187068(2*n)+A052994(n+1)-A187068(2*n+1)` -/
def P7241766463043211074.Spec : Prop :=
  ∀ n, P7241766463043211074.a n = A274975 n

end A274975

/-! ## A274975.P8115896890955908545

`A187069(2*n+1)+A187068(2*n)+A038196(2*n)`
-/

namespace A274975.P8115896890955908545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187069 (2 * n + 1) + (A187068 (2 * n) + A038196 (2 * n))

end

end A274975.P8115896890955908545

namespace A274975

/-- `A187069(2*n+1)+A187068(2*n)+A038196(2*n)` -/
def P8115896890955908545.Spec : Prop :=
  ∀ n, P8115896890955908545.a n = A274975 n

end A274975

/-! ## A274975.P2538185777846680394

`abs(A321174(n+1)-A321173(n))`
-/

namespace A274975.P2538185777846680394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A321174 (n + 1) - A321173 n|

end

end A274975.P2538185777846680394

namespace A274975

/-- `abs(A321174(n+1)-A321173(n))` -/
def P2538185777846680394.Spec : Prop :=
  ∀ n, P2538185777846680394.a n = A274975 n

end A274975

/-! ## A274975.P2183718085659952849

`A006356(n+1)-4*A006054(n+1)`
-/

namespace A274975.P2183718085659952849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006356 (n + 1) - 4 * A006054 (n + 1)

end

end A274975.P2183718085659952849

namespace A274975

/-- `A006356(n+1)-4*A006054(n+1)` -/
def P2183718085659952849.Spec : Prop :=
  ∀ n, P2183718085659952849.a n = A274975 n

end A274975

/-! ## A274975.P3497800469192223929

`3*A006054(n+2)-4*A006054(n+1)-A006054(n)`
-/

namespace A274975.P3497800469192223929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006054 (n + 2) - 4 * A006054 (n + 1) - A006054 n

end

end A274975.P3497800469192223929

namespace A274975

/-- `3*A006054(n+2)-4*A006054(n+1)-A006054(n)` -/
def P3497800469192223929.Spec : Prop :=
  ∀ n, P3497800469192223929.a n = A274975 n

end A274975

/-! ## A274975.P4700155678092597701

`Δ[A033304(n)]-abs(A321173(n))`
-/

namespace A274975.P4700155678092597701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - |A321173 n|

end

end A274975.P4700155678092597701

namespace A274975

/-- `Δ[A033304(n)]-abs(A321173(n))` -/
def P4700155678092597701.Spec : Prop :=
  ∀ n, P4700155678092597701.a n = A274975 n

end A274975

/-! ## A274975.P13026024753871217700

`A033304(n+1)-abs(A321173(n+1))`
-/

namespace A274975.P13026024753871217700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033304 (n + 1) - |A321173 (n + 1)|

end

end A274975.P13026024753871217700

namespace A274975

/-- `A033304(n+1)-abs(A321173(n+1))` -/
def P13026024753871217700.Spec : Prop :=
  ∀ n, P13026024753871217700.a n = A274975 n

end A274975

/-! ## A274975.P16425557102106116214

`A033304(n+1)-(∑[A033304(n)]+1)`
-/

namespace A274975.P16425557102106116214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033304 (n + 1) - (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A274975.P16425557102106116214

namespace A274975

/-- `A033304(n+1)-(∑[A033304(n)]+1)` -/
def P16425557102106116214.Spec : Prop :=
  ∀ n, P16425557102106116214.a n = A274975 n

end A274975

/-!
# A274977: a(n) = a(n-1) + 3*a(n-2) with n>1, a(0)=1, a(1)=6.

The programs for A274977, the canonical program `A274977.P4109414490029570491` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274977 has offset 0).

The definition of A274977 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)` (program `A274977.P4109414490029570491`, by `A274977.P4109414490029570491.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A274977.P4109414490029570491

`a(n-1)+3*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A274977

/-- `a(n-1)+3*a(n-2)` -/
def P4109414490029570491.Spec : Prop :=
  ∀ n, (P4109414490029570491.a n : ℤ) = A274977 n

theorem P4109414490029570491.correct : P4109414490029570491.Spec := by
  intro n
  simp only [A274977]

end A274977

/-! ## A274977.P8810795263581029715

`4*a(n-2)-(a(n-2)-a(n-1))` with `a(0)=1, a(1)=6`
-/

namespace A274977.P8810795263581029715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  4 * a (n - 2) - (a (n - 2) - a (n - 1))

end

end A274977.P8810795263581029715

namespace A274977

/-- `4*a(n-2)-(a(n-2)-a(n-1))` -/
def P8810795263581029715.Spec : Prop :=
  ∀ n, P8810795263581029715.a n = A274977 n

end A274977

/-! ## A274977.P4374941725535628608

`a(n-2)+a(n-2)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=6`
-/

namespace A274977.P4374941725535628608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 1) + a (n - 2)))

end

end A274977.P4374941725535628608

namespace A274977

/-- `a(n-2)+a(n-2)+a(n-1)+a(n-2)` -/
def P4374941725535628608.Spec : Prop :=
  ∀ n, (P4374941725535628608.a n : ℤ) = A274977 n

end A274977

/-! ## A274977.P8772464821105258642

`Δ[A006130(n)]+Δ[A006138(n)]`
-/

namespace A274977.P8772464821105258642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (f2 (n + 1) - f2 n)

end

end A274977.P8772464821105258642

namespace A274977

/-- `Δ[A006130(n)]+Δ[A006138(n)]` -/
def P8772464821105258642.Spec : Prop :=
  ∀ n, P8772464821105258642.a n = A274977 n

end A274977

/-! ## A274977.P3740456840965326216

`A052533(n)+2*Δ[A006130(n)]`
-/

namespace A274977.P3740456840965326216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052533 n + 2 * (f1 (n + 1) - f1 n)

end

end A274977.P3740456840965326216

namespace A274977

/-- `A052533(n)+2*Δ[A006130(n)]` -/
def P3740456840965326216.Spec : Prop :=
  ∀ n, P3740456840965326216.a n = A274977 n

end A274977

/-! ## A274977.P7347855481362771990

`A105476(n+1)+A052533(n+1)`
-/

namespace A274977.P7347855481362771990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105476 (n + 1) + A052533 (n + 1)

end

end A274977.P7347855481362771990

namespace A274977

/-- `A105476(n+1)+A052533(n+1)` -/
def P7347855481362771990.Spec : Prop :=
  ∀ n, P7347855481362771990.a n = A274977 n

end A274977

/-! ## A274977.P13187858392678305642

`A006138(n)+A105963(n)-A006130(n)`
-/

namespace A274977.P13187858392678305642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006138 n + (A105963 n - A006130 n)

end

end A274977.P13187858392678305642

namespace A274977

/-- `A006138(n)+A105963(n)-A006130(n)` -/
def P13187858392678305642.Spec : Prop :=
  ∀ n, P13187858392678305642.a n = A274977 n

end A274977

/-! ## A274977.P15679120067024880191

`A006130(n)+A105963(n)-A052533(n)`
-/

namespace A274977.P15679120067024880191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 n + (A105963 n - A052533 n)

end

end A274977.P15679120067024880191

namespace A274977

/-- `A006130(n)+A105963(n)-A052533(n)` -/
def P15679120067024880191.Spec : Prop :=
  ∀ n, P15679120067024880191.a n = A274977 n

end A274977

/-! ## A274977.P15900911664973038201

`A006130(n+1)+A006138(n)-A052533(n)`
-/

namespace A274977.P15900911664973038201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 (n + 1) + (A006138 n - A052533 n)

end

end A274977.P15900911664973038201

namespace A274977

/-- `A006130(n+1)+A006138(n)-A052533(n)` -/
def P15900911664973038201.Spec : Prop :=
  ∀ n, P15900911664973038201.a n = A274977 n

end A274977

/-! ## A274977.P13704816964852114983

`A006138(n+1)+A006138(n)-A075118(n)`
-/

namespace A274977.P13704816964852114983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006138 (n + 1) + (A006138 n - A075118 n)

end

end A274977.P13704816964852114983

namespace A274977

/-- `A006138(n+1)+A006138(n)-A075118(n)` -/
def P13704816964852114983.Spec : Prop :=
  ∀ n, P13704816964852114983.a n = A274977 n

end A274977

/-! ## A274977.P4381442158509025411

`A075118(n+1)+A052533(n)-A006130(n)`
-/

namespace A274977.P4381442158509025411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075118 (n + 1) + (A052533 n - A006130 n)

end

end A274977.P4381442158509025411

namespace A274977

/-- `A075118(n+1)+A052533(n)-A006130(n)` -/
def P4381442158509025411.Spec : Prop :=
  ∀ n, P4381442158509025411.a n = A274977 n

end A274977

/-! ## A274977.P4448110712436142582

`A105476(n+1)+A105963(n)-A006138(n)`
-/

namespace A274977.P4448110712436142582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105476 (n + 1) + (A105963 n - A006138 n)

end

end A274977.P4448110712436142582

namespace A274977

/-- `A105476(n+1)+A105963(n)-A006138(n)` -/
def P4448110712436142582.Spec : Prop :=
  ∀ n, P4448110712436142582.a n = A274977 n

end A274977

/-! ## A274977.P16730613278110646768

`A105963(n)+A105963(n)-A006130(n+1)`
-/

namespace A274977.P16730613278110646768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105963 n + (A105963 n - A006130 (n + 1))

end

end A274977.P16730613278110646768

namespace A274977

/-- `A105963(n)+A105963(n)-A006130(n+1)` -/
def P16730613278110646768.Spec : Prop :=
  ∀ n, P16730613278110646768.a n = A274977 n

end A274977

/-! ## A274977.P16622507306917535842

`A052533(n+1)+A052533(n+1)+A052533(n)`
-/

namespace A274977.P16622507306917535842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052533 (n + 1) + (A052533 (n + 1) + A052533 n)

end

end A274977.P16622507306917535842

namespace A274977

/-- `A052533(n+1)+A052533(n+1)+A052533(n)` -/
def P16622507306917535842.Spec : Prop :=
  ∀ n, P16622507306917535842.a n = A274977 n

end A274977

/-! ## A274977.P13935882607688528650

`A006130(n+1)+A105476(n+1)-A006130(n)`
-/

namespace A274977.P13935882607688528650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 (n + 1) + (A105476 (n + 1) - A006130 n)

end

end A274977.P13935882607688528650

namespace A274977

/-- `A006130(n+1)+A105476(n+1)-A006130(n)` -/
def P13935882607688528650.Spec : Prop :=
  ∀ n, P13935882607688528650.a n = A274977 n

end A274977

/-! ## A274977.P8588637559597293316

`Δ[A006138(n)+A006130(n)]`
-/

namespace A274977.P8588637559597293316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006138 n + A006130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A274977.P8588637559597293316

namespace A274977

/-- `Δ[A006138(n)+A006130(n)]` -/
def P8588637559597293316.Spec : Prop :=
  ∀ n, P8588637559597293316.a n = A274977 n

end A274977

/-! ## A274977.P13928214761163977586

`A228661(n+2)-A006138(n)`
-/

namespace A274977.P13928214761163977586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228661 (n + 2) - A006138 n

end

end A274977.P13928214761163977586

namespace A274977

/-- `A228661(n+2)-A006138(n)` -/
def P13928214761163977586.Spec : Prop :=
  ∀ n, P13928214761163977586.a n = A274977 n

end A274977

/-! ## A274977.P14870175166230978819

`Δ[A052533(n+2)-A052533(n)]`
-/

namespace A274977.P14870175166230978819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052533 (n + 2) - A052533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A274977.P14870175166230978819

namespace A274977

/-- `Δ[A052533(n+2)-A052533(n)]` -/
def P14870175166230978819.Spec : Prop :=
  ∀ n, P14870175166230978819.a n = A274977 n

end A274977

/-! ## A274977.P10339328774885889148

`A105963(n+1)-2*A075118(n)`
-/

namespace A274977.P10339328774885889148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105963 (n + 1) - 2 * A075118 n

end

end A274977.P10339328774885889148

namespace A274977

/-- `A105963(n+1)-2*A075118(n)` -/
def P10339328774885889148.Spec : Prop :=
  ∀ n, P10339328774885889148.a n = A274977 n

end A274977

/-!
# A274978: Integers of the form m*(m + 6)/7.

The programs for A274978, the canonical program `A274978.P3579789868362272826` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274978 has offset 1).

The definition of A274978 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274978.P11080512204629993462

`(14*n*(n+1)-5*(2*(n+1)-1)*(-1)^(n+1)-5)/8`
-/

namespace A274978.P11080512204629993462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((14 * (n * (n + 1)) : ℤ) - 5 * (((2 * (n + 1) : ℤ) - 1) * (-1) ^ (n + 1)) - 5 : ℚ) / 8

end

end A274978.P11080512204629993462

namespace A274978

/-- `(14*n*(n+1)-5*(2*(n+1)-1)*(-1)^(n+1)-5)/8` -/
def P11080512204629993462.Spec : Prop :=
  ∀ n, P11080512204629993462.a n = (A274978 (n + 1) : ℚ)

theorem P11080512204629993462.correct : P11080512204629993462.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A274978, Nat.add_sub_cancel, A274978.P11080512204629993462.a, A274978.P3579789868362272826.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A274978, Nat.add_sub_cancel, A274978.P11080512204629993462.a, A274978.P3579789868362272826.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A274978

/-! ## A274978.P3579789868362272826

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=13, a(3)=16, a(4)=40`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A274978

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P3579789868362272826.Spec : Prop :=
  ∀ n, P3579789868362272826.a n = A274978 (n + 1)

theorem P3579789868362272826.correct : P3579789868362272826.Spec := by
  intro n
  simp only [A274978, Nat.add_sub_cancel]

end A274978

/-! ## A274978.P3588690827171265653

`∑[n*gcd(6, n%2)]`
-/

namespace A274978.P3588690827171265653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 6 (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274978.P3588690827171265653

namespace A274978

/-- `∑[n*gcd(6, n%2)]` -/
def P3588690827171265653.Spec : Prop :=
  ∀ n, (P3588690827171265653.a n : ℤ) = A274978 (n + 1)

end A274978

/-! ## A274978.P2992346804600947407

`∑[n*gcd(2, n)^log2(6)]`
-/

namespace A274978.P2992346804600947407
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * (Nat.gcd 2 n : ℝ) ^ (Real.logb 2 (6 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274978.P2992346804600947407

namespace A274978

/-- `∑[n*gcd(2, n)^log2(6)]` -/
def P2992346804600947407.Spec : Prop :=
  ∀ n, P2992346804600947407.a n = (A274978 (n + 1) : ℝ)

end A274978

/-! ## A274978.P14739388349909697787

`A374584(n+1)-1`
-/

namespace A274978.P14739388349909697787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374584 (n + 1) - 1

end

end A274978.P14739388349909697787

namespace A274978

/-- `A374584(n+1)-1` -/
def P14739388349909697787.Spec : Prop :=
  ∀ n, P14739388349909697787.a n = A274978 (n + 1)

end A274978

/-! ## A274978.P4777812366144671257

`or(∑[A317312(n)], char[1])`
-/

namespace A274978.P4777812366144671257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317312 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A274978.P4777812366144671257

namespace A274978

/-- `or(∑[A317312(n)], char[1])` -/
def P4777812366144671257.Spec : Prop :=
  ∀ n, P4777812366144671257.a n = A274978 (n + 1)

end A274978

/-! ## A274978.P5347632087157591087

`2*A195160(n)-∑[n]`
-/

namespace A274978.P5347632087157591087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195160 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A274978.P5347632087157591087

namespace A274978

/-- `2*A195160(n)-∑[n]` -/
def P5347632087157591087.Spec : Prop :=
  ∀ n, P5347632087157591087.a n = A274978 (n + 1)

end A274978

/-! ## A274978.P7844582415274514579

`A195145(n)-a(n-1)` with `a(0)=0`
-/

namespace A274978.P7844582415274514579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A195145 n - a (n - 1)

end

end A274978.P7844582415274514579

namespace A274978

/-- `A195145(n)-a(n-1)` -/
def P7844582415274514579.Spec : Prop :=
  ∀ n, P7844582415274514579.a n = A274978 (n + 1)

end A274978

/-! ## A274978.P3144375760335534201

`A195818(n)+A110660(n)`
-/

namespace A274978.P3144375760335534201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195818 n + A110660 n

end

end A274978.P3144375760335534201

namespace A274978

/-- `A195818(n)+A110660(n)` -/
def P3144375760335534201.Spec : Prop :=
  ∀ n, P3144375760335534201.a n = A274978 (n + 1)

end A274978

/-! ## A274978.P1800330840249083865

`A273367(n)-A257083(n)`
-/

namespace A274978.P1800330840249083865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273367 n - A257083 n

end

end A274978.P1800330840249083865

namespace A274978

/-- `A273367(n)-A257083(n)` -/
def P1800330840249083865.Spec : Prop :=
  ∀ n, P1800330840249083865.a n = A274978 (n + 1)

end A274978

/-! ## A274978.P5279386768712310072

`A124080(A004526(n))+∑[n]`
-/

namespace A274978.P5279386768712310072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124080 (A004526 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A274978.P5279386768712310072

namespace A274978

/-- `A124080(A004526(n))+∑[n]` -/
def P5279386768712310072.Spec : Prop :=
  ∀ n, P5279386768712310072.a n = A274978 (n + 1)

end A274978

/-! ## A274978.P12255264629783354928

`A033996(n)-A132355(n+1)`
-/

namespace A274978.P12255264629783354928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033996 n - A132355 (n + 1)

end

end A274978.P12255264629783354928

namespace A274978

/-- `A033996(n)-A132355(n+1)` -/
def P12255264629783354928.Spec : Prop :=
  ∀ n, P12255264629783354928.a n = A274978 (n + 1)

end A274978

/-! ## A274978.P12212059768944207437

`A024966(n)-A219191(n+1)`
-/

namespace A274978.P12212059768944207437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024966 n - A219191 (n + 1)

end

end A274978.P12212059768944207437

namespace A274978

/-- `A024966(n)-A219191(n+1)` -/
def P12212059768944207437.Spec : Prop :=
  ∀ n, P12212059768944207437.a n = A274978 (n + 1)

end A274978

/-! ## A274978.P13450460234443768200

`A132354(n)+A157142(n)-1`
-/

namespace A274978.P13450460234443768200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132354 n + (A157142 n - 1)

end

end A274978.P13450460234443768200

namespace A274978

/-- `A132354(n)+A157142(n)-1` -/
def P13450460234443768200.Spec : Prop :=
  ∀ n, P13450460234443768200.a n = A274978 (n + 1)

end A274978

/-! ## A274978.P15745770146854427414

`A274979(n+1)-A110660(n)`
-/

namespace A274978.P15745770146854427414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274979 (n + 1) - A110660 n

end

end A274978.P15745770146854427414

namespace A274978

/-- `A274979(n+1)-A110660(n)` -/
def P15745770146854427414.Spec : Prop :=
  ∀ n, P15745770146854427414.a n = A274978 (n + 1)

end A274978

/-! ## A274978.P483420200905815687

`A186424(n)-(A317300(n)+1)`
-/

namespace A274978.P483420200905815687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186424 n - (A317300 n + 1)

end

end A274978.P483420200905815687

namespace A274978

/-- `A186424(n)-(A317300(n)+1)` -/
def P483420200905815687.Spec : Prop :=
  ∀ n, P483420200905815687.a n = A274978 (n + 1)

end A274978

/-! ## A274978.P4612028286339650025

`A130472(n)+2*A118277(n)`
-/

namespace A274978.P4612028286339650025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 n + 2 * A118277 n

end

end A274978.P4612028286339650025

namespace A274978

/-- `A130472(n)+2*A118277(n)` -/
def P4612028286339650025.Spec : Prop :=
  ∀ n, P4612028286339650025.a n = A274978 (n + 1)

end A274978

/-! ## A274978.P1444670178986174173

`A195162(n)+2*A110660(n)`
-/

namespace A274978.P1444670178986174173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195162 n + 2 * A110660 n

end

end A274978.P1444670178986174173

namespace A274978

/-- `A195162(n)+2*A110660(n)` -/
def P1444670178986174173.Spec : Prop :=
  ∀ n, P1444670178986174173.a n = A274978 (n + 1)

end A274978

/-! ## A274978.P15863307914443342124

`2*A118277(n)-A001057(n)`
-/

namespace A274978.P15863307914443342124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A118277 n - A001057 n

end

end A274978.P15863307914443342124

namespace A274978

/-- `2*A118277(n)-A001057(n)` -/
def P15863307914443342124.Spec : Prop :=
  ∀ n, P15863307914443342124.a n = A274978 (n + 1)

end A274978

/-! ## A274978.P3804811019349198836

`2*A195313(n)-A074377(n)`
-/

namespace A274978.P3804811019349198836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195313 n - A074377 n

end

end A274978.P3804811019349198836

namespace A274978

/-- `2*A195313(n)-A074377(n)` -/
def P3804811019349198836.Spec : Prop :=
  ∀ n, P3804811019349198836.a n = A274978 (n + 1)

end A274978

/-!
# A274979: Integers of the form m*(m + 7)/8.

The programs for A274979, the canonical program `A274979.P10479852887550652141` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274979 has offset 1).

The definition of A274979 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274979.P7892613638378687450

`(8*n*(n+1)-3*(2*(n+1)-1)*(-1)^(n+1)-3)/4`
-/

namespace A274979.P7892613638378687450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 * (n * (n + 1)) : ℤ) - 3 * (((2 * (n + 1) : ℤ) - 1) * (-1) ^ (n + 1)) - 3 : ℚ) / 4

end

end A274979.P7892613638378687450

namespace A274979

/-- `(8*n*(n+1)-3*(2*(n+1)-1)*(-1)^(n+1)-3)/4` -/
def P7892613638378687450.Spec : Prop :=
  ∀ n, P7892613638378687450.a n = (A274979 (n + 1) : ℚ)

theorem P7892613638378687450.correct : P7892613638378687450.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A274979, Nat.add_sub_cancel, A274979.P7892613638378687450.a, A274979.P10479852887550652141.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A274979, Nat.add_sub_cancel, A274979.P7892613638378687450.a, A274979.P10479852887550652141.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A274979

/-! ## A274979.P10479852887550652141

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=15, a(3)=18, a(4)=46`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A274979

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P10479852887550652141.Spec : Prop :=
  ∀ n, P10479852887550652141.a n = A274979 (n + 1)

theorem P10479852887550652141.correct : P10479852887550652141.Spec := by
  intro n
  simp only [A274979, Nat.add_sub_cancel]

end A274979

/-! ## A274979.P11494492184999969691

`∑[n*gcd(7, n%2)]`
-/

namespace A274979.P11494492184999969691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 7 (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274979.P11494492184999969691

namespace A274979

/-- `∑[n*gcd(7, n%2)]` -/
def P11494492184999969691.Spec : Prop :=
  ∀ n, (P11494492184999969691.a n : ℤ) = A274979 (n + 1)

end A274979

/-! ## A274979.P17777734090824583898

`∑[n*dr(gcd(2, n)²²)]`
-/

namespace A274979.P17777734090824583898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.digitalRoot ((Nat.gcd 2 n ^ 2) ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274979.P17777734090824583898

namespace A274979

/-- `∑[n*dr(gcd(2, n)²²)]` -/
def P17777734090824583898.Spec : Prop :=
  ∀ n, (P17777734090824583898.a n : ℤ) = A274979 (n + 1)

end A274979

/-! ## A274979.P4450587988449417446

`2*∑[A317314(n)/2]`
-/

namespace A274979.P4450587988449417446
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317314 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A274979.P4450587988449417446

namespace A274979

/-- `2*∑[A317314(n)/2]` -/
def P4450587988449417446.Spec : Prop :=
  ∀ n, P4450587988449417446.a n = (A274979 (n + 1) : ℚ)

end A274979

/-! ## A274979.P14526794453311482839

`2*A195162(n)-∑[n]`
-/

namespace A274979.P14526794453311482839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195162 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A274979.P14526794453311482839

namespace A274979

/-- `2*A195162(n)-∑[n]` -/
def P14526794453311482839.Spec : Prop :=
  ∀ n, P14526794453311482839.a n = A274979 (n + 1)

end A274979

/-! ## A274979.P4004307245317587604

`A195146(n)-a(n-1)` with `a(0)=0`
-/

namespace A274979.P4004307245317587604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A195146 n - a (n - 1)

end

end A274979.P4004307245317587604

namespace A274979

/-- `A195146(n)-a(n-1)` -/
def P4004307245317587604.Spec : Prop :=
  ∀ n, P4004307245317587604.a n = A274979 (n + 1)

end A274979

/-! ## A274979.P17611851547800253602

`A027468(n)-A132356(n)`
-/

namespace A274979.P17611851547800253602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027468 n - A132356 n

end

end A274979.P17611851547800253602

namespace A274979

/-- `A027468(n)-A132356(n)` -/
def P17611851547800253602.Spec : Prop :=
  ∀ n, P17611851547800253602.a n = A274979 (n + 1)

end A274979

/-! ## A274979.P13385821860058474310

`A273367(n)-A000124(n)`
-/

namespace A274979.P13385821860058474310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273367 n - A000124 n

end

end A274979.P13385821860058474310

namespace A274979

/-- `A273367(n)-A000124(n)` -/
def P13385821860058474310.Spec : Prop :=
  ∀ n, P13385821860058474310.a n = A274979 (n + 1)

end A274979

/-! ## A274979.P13965189993127910567

`A298039(n)-A005891(n)`
-/

namespace A274979.P13965189993127910567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298039 n - A005891 n

end

end A274979.P13965189993127910567

namespace A274979

/-- `A298039(n)-A005891(n)` -/
def P13965189993127910567.Spec : Prop :=
  ∀ n, P13965189993127910567.a n = A274979 (n + 1)

end A274979

/-! ## A274979.P11238502102194784496

`∪[A051870(n), A139278(n)]`
-/

namespace A274979.P11238502102194784496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051870 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139278 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A274979.P11238502102194784496

namespace A274979

/-- `∪[A051870(n), A139278(n)]` -/
def P11238502102194784496.Spec : Prop :=
  ∀ n, (P11238502102194784496.a n : ℤ) = A274979 (n + 1)

end A274979

/-! ## A274979.P14943190155546971681

`A274978(n+1)+A110660(n)`
-/

namespace A274979.P14943190155546971681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274978 (n + 1) + A110660 n

end

end A274979.P14943190155546971681

namespace A274979

/-- `A274978(n+1)+A110660(n)` -/
def P14943190155546971681.Spec : Prop :=
  ∀ n, P14943190155546971681.a n = A274979 (n + 1)

end A274979

/-! ## A274979.P11292665687803963297

`A033996(n)-A154260(n+1)`
-/

namespace A274979.P11292665687803963297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033996 n - A154260 (n + 1)

end

end A274979.P11292665687803963297

namespace A274979

/-- `A033996(n)-A154260(n+1)` -/
def P11292665687803963297.Spec : Prop :=
  ∀ n, P11292665687803963297.a n = A274979 (n + 1)

end A274979

/-! ## A274979.P1829256228987822799

`A218864(n+1)-A110660(n)`
-/

namespace A274979.P1829256228987822799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218864 (n + 1) - A110660 n

end

end A274979.P1829256228987822799

namespace A274979

/-- `A218864(n+1)-A110660(n)` -/
def P1829256228987822799.Spec : Prop :=
  ∀ n, P1829256228987822799.a n = A274979 (n + 1)

end A274979

/-! ## A274979.P4020360634520325863

`A069126(n+1)-A298037(n)`
-/

namespace A274979.P4020360634520325863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069126 (n + 1) - A298037 n

end

end A274979.P4020360634520325863

namespace A274979

/-- `A069126(n+1)-A298037(n)` -/
def P4020360634520325863.Spec : Prop :=
  ∀ n, P4020360634520325863.a n = A274979 (n + 1)

end A274979

/-! ## A274979.P3598658330456422980

`A124080(n)-A274757(n+1)`
-/

namespace A274979.P3598658330456422980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124080 n - A274757 (n + 1)

end

end A274979.P3598658330456422980

namespace A274979

/-- `A124080(n)-A274757(n+1)` -/
def P3598658330456422980.Spec : Prop :=
  ∀ n, P3598658330456422980.a n = A274979 (n + 1)

end A274979

/-! ## A274979.P17797446609903400866

`A130472(n)+2*A074377(n)`
-/

namespace A274979.P17797446609903400866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 n + 2 * A074377 n

end

end A274979.P17797446609903400866

namespace A274979

/-- `A130472(n)+2*A074377(n)` -/
def P17797446609903400866.Spec : Prop :=
  ∀ n, P17797446609903400866.a n = A274979 (n + 1)

end A274979

/-! ## A274979.P16923932318760989534

`A195818(n)+2*A110660(n)`
-/

namespace A274979.P16923932318760989534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195818 n + 2 * A110660 n

end

end A274979.P16923932318760989534

namespace A274979

/-- `A195818(n)+2*A110660(n)` -/
def P16923932318760989534.Spec : Prop :=
  ∀ n, P16923932318760989534.a n = A274979 (n + 1)

end A274979

/-!
# A274980: Denominator of the alternating n-th partial sum of the reciprocals of the successive prime gaps.

The programs for A274980, there is no canonical definition to state claims against.
-/

/-! ## A274980.P17281731913834109146

`A274826(n+1)/A274842(A274842(n))!`
-/

namespace A274980.P17281731913834109146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274826 (n + 1) : ℚ) / (Nat.factorial (A274842 (A274842 n).toNat).toNat : ℚ)

end

end A274980.P17281731913834109146

/-!
# A274981: Decimal expansion of gamma(2) = 7/5.

The programs for A274981, the canonical program `A274981.P5834201814185212237` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274981 has offset 1).

The definition of A274981 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274981.P5834201814185212237

`C(4, 3*n)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A274981

/-- `C(4, 3*n)` -/
def P5834201814185212237.Spec : Prop :=
  ∀ n, (P5834201814185212237.a n : ℤ) = A274981 (n + 1)

theorem P5834201814185212237.correct : P5834201814185212237.Spec := by
  intro n
  simp only [A274981, Nat.add_sub_cancel]

end A274981

/-!
# A274983: a(n) = [n]_phi! + [n]_{1-phi}!, where [n]_q! is the q-factorial, phi = (1+sqrt(5))/2.

The programs for A274983, there is no canonical definition to state claims against.
-/

/-! ## A274983.P14535446081527964409

`ceil(ratio[∑[A275924(n)]])`
-/

namespace A274983.P14535446081527964409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275924 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A274983.P14535446081527964409

/-!
# A274985: a(n) = ([n]_phi! - [n]_{1-phi}!)/sqrt(5), where [n]_q! is the q-factorial, phi = (1+sqrt(5))/2.

The programs for A274985, there is no canonical definition to state claims against.
-/

/-! ## A274985.P7908346636114261515

`floor(A274983(n)/sqrt(5))`
-/

namespace A274985.P7908346636114261515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A274983 n : ℝ) / Real.sqrt (5 : ℝ)⌋

end

end A274985.P7908346636114261515

/-! ## A274985.P15730744223208209574

`A005379(abs(Δ[A276991(n)]))`
-/

namespace A274985.P15730744223208209574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276991 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 |f1 (n + 1) - f1 n|.toNat

end

end A274985.P15730744223208209574

/-!
# A274986: Numbers k such that (10^k + 23)/3 is prime.

The programs for A274986, there is no canonical definition to state claims against.
-/

/-! ## A274986.P12606582522142492010

`(A194055(10*(a(n-2)+1))+1)²+2` with `a(0)=1, a(1)=2`
-/

namespace A274986.P12606582522142492010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (A194055 (10 * (a (n - 2) + 1)).toNat + 1) ^ 2 + 2

end

end A274986.P12606582522142492010

/-!
# A274987: Primes p such that A274601(p) is a prime.

The programs for A274987, the canonical program `A274987.P13758219418933082249` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274987 has offset 1).

The definition of A274987 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274987.P13758219418933082249

`p?[A274601(p?[A274601(n+1)])]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A274987

/-- `p?[A274601(p?[A274601(n+1)])]` -/
def P13758219418933082249.Spec : Prop :=
  ∀ n, P13758219418933082249.a n = A274987 (n + 1)

theorem P13758219418933082249.correct : P13758219418933082249.Spec := by
  intro n
  simp only [A274987, Nat.add_sub_cancel]

end A274987

/-! ## A274987.P17002391769297018447

`A274601(p?[A274601(p?[2*n-3])])`
-/

namespace A274987.P17002391769297018447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274601 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274601 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A274987.P17002391769297018447

namespace A274987

/-- `A274601(p?[A274601(p?[2*n-3])])` -/
def P17002391769297018447.Spec : Prop :=
  ∀ n, P17002391769297018447.a n = A274987 (n + 1)

end A274987

/-! ## A274987.P14452306698670802170

`A274601(p?[A274601(A128059(n))])`
-/

namespace A274987.P14452306698670802170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274601 (A128059 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274601 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A274987.P14452306698670802170

namespace A274987

/-- `A274601(p?[A274601(A128059(n))])` -/
def P14452306698670802170.Spec : Prop :=
  ∀ n, P14452306698670802170.a n = A274987 (n + 1)

end A274987

/-! ## A274987.P1062049702760981226

`p?[record[A097284(A029094(n))]]`
-/

namespace A274987.P1062049702760981226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097284 (A029094 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A274987.P1062049702760981226

namespace A274987

/-- `p?[record[A097284(A029094(n))]]` -/
def P1062049702760981226.Spec : Prop :=
  ∀ n, P1062049702760981226.a n = A274987 (n + 1)

end A274987

/-! ## A274987.P3340330792525241176

`p?[lt[A346703(n+1), A001414(n+1)]]`
-/

namespace A274987.P3340330792525241176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346703 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A274987.P3340330792525241176

namespace A274987

/-- `p?[lt[A346703(n+1), A001414(n+1)]]` -/
def P3340330792525241176.Spec : Prop :=
  ∀ n, (P3340330792525241176.a n : ℤ) = A274987 (n + 1)

end A274987

/-!
# A274990: a(n) = 2[n](n-2).

The programs for A274990, there is no canonical definition to state claims against.
-/

/-! ## A274990.P6158826509881158290

`2^a(n-1)²` with `a(0)=-1, a(1)=1, a(2)=0, a(3)=2, a(4)=4`
-/

namespace A274990.P6158826509881158290
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [-1, 1, 0, 2, 4] fun n a =>
  (2 : ℝ) ^ (a (n - 1) ^ 2)

end

end A274990.P6158826509881158290

/-!
# A274993: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 126", based on the 5-celled von Neumann neighborhood.

The programs for A274993, there is no canonical definition to state claims against.
-/

/-! ## A274993.P2551327049968757526

`A325401(A274059(n))`
-/

namespace A274993.P2551327049968757526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A274059 n).toNat

end

end A274993.P2551327049968757526

/-! ## A274993.P748790286803920914

`A030101(lcm(2, A274059(n))/2)`
-/

namespace A274993.P748790286803920914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((Int.lcm 2 (A274059 n) : ℚ) / 2)).toNat

end

end A274993.P748790286803920914

/-! ## A274993.P11827492470275906631

`A030101(A274059(n)/A003108(n))`
-/

namespace A274993.P11827492470275906631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A274059 n : ℚ) / (A003108 n : ℚ))).toNat

end

end A274993.P11827492470275906631

/-! ## A274993.P15061019162706296677

`A030101(ceil(A274059(n)/(A112345(n)+1)))`
-/

namespace A274993.P15061019162706296677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 ⌈(A274059 n : ℚ) / (A112345 n + 1 : ℚ)⌉.toNat

end

end A274993.P15061019162706296677

/-! ## A274993.P18100510015479597737

`A030101(A274059(n)/(A004601(3*n+4)+1))`
-/

namespace A274993.P18100510015479597737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A274059 n : ℚ) / (A004601 (3 * n + 4) + 1 : ℚ))).toNat

end

end A274993.P18100510015479597737

/-!
# A274996: a(n) = F(F(F(n))) mod F(F(n)), where F = Fibonacci = A000045.

The programs for A274996, there is no canonical definition to state claims against.
-/

/-! ## A274996.P16808915510293994764

`A263101(Δ[round(ϕ*a(n-1))])` with `a(0)=1`
-/

namespace A274996.P16808915510293994764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263101 (f1 (n + 1) - f1 n).toNat

end

end A274996.P16808915510293994764

/-! ## A274996.P9964544400313855471

`A263101(∑[round(ϕ*a(n-1))])` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A274996.P9964544400313855471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263101 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A274996.P9964544400313855471

/-! ## A274996.P4177628756918170036

`A263101(∑[a(n-1)+a(n-2)])` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A274996.P4177628756918170036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263101 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A274996.P4177628756918170036

/-! ## A274996.P17322755035083780985

`A263101(∑[2-(4/2-a(n-1)-a(n-2))])` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A274996.P17322755035083780985
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  2 - ((4 : ℚ) / 2 - f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263101 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A274996.P17322755035083780985

/-! ## A274996.P12465037888484388755

`A263101(A000045(n+1))`
-/

namespace A274996.P12465037888484388755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263101 (A000045 (n + 1)).toNat

end

end A274996.P12465037888484388755

/-!
# A274997: Number of permutations of [n] having exactly one doubledescent.

The programs for A274997, there is no canonical definition to state claims against.
-/

/-! ## A274997.P11733433065267581956

`n!-(A230620(n)+A049774(n))`
-/

namespace A274997.P11733433065267581956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - (A230620 n + A049774 n)

end

end A274997.P11733433065267581956

/-! ## A274997.P14473450724808982548

`A065429(A028310(n))-A230620(n)`
-/

namespace A274997.P14473450724808982548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065429 (A028310 n).toNat - A230620 n

end

end A274997.P14473450724808982548

/-! ## A274997.P2211957406641408482

`A000142(n)-(A230620(n)+A049774(n))`
-/

namespace A274997.P2211957406641408482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - (A230620 n + A049774 n)

end

end A274997.P2211957406641408482

/-! ## A274997.P10257891366515751648

`∏[A000007(n)+n]-(A230620(n)+A049774(n))`
-/

namespace A274997.P10257891366515751648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (A230620 n + A049774 n)

end

end A274997.P10257891366515751648

/-! ## A274997.P453725298658061978

`A162975(A016028(n+1))%∑[A183611(n)]`
-/

namespace A274997.P453725298658061978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162975 (A016028 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A274997.P453725298658061978

/-!
# A274998: Expansion of Product_{k>=1} 1/(1 - x^k)^(k*(3*k-2)).

The programs for A274998, there is no canonical definition to state claims against.
-/

/-! ## A274998.P4179110535972421182

`A233583(n*A000045(Δ[n²])+1)-a(n-1)` with `a(0)=1`
-/

namespace A274998.P4179110535972421182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A233583 ((n : ℤ) * A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1).toNat - a (n - 1)

end

end A274998.P4179110535972421182

/-! ## A274998.P10798184365289883667

`A277246(n)-A182423(A175657(n))`
-/

namespace A274998.P10798184365289883667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277246 n - A182423 (A175657 n).toNat

end

end A274998.P10798184365289883667

