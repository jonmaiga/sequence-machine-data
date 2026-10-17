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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
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
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C025

/-!
# A218500: 8th iteration of the hyperbinomial transform on the sequence of 1's.

The programs for A218500, there is no canonical definition to state claims against.
-/

/-! ## A218500.P12239938418895860781

`A144303(eq[3, A104975(n)])`
-/

namespace A218500.P12239938418895860781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218500.P12239938418895860781

/-! ## A218500.P14237063169584887668

`A144303(eq[8, A025581(n)])`
-/

namespace A218500.P14237063169584887668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218500.P14237063169584887668

/-! ## A218500.P16675807045323825309

`A144303(eq[9, A193739(n)])`
-/

namespace A218500.P16675807045323825309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218500.P16675807045323825309

/-! ## A218500.P3589193157791430027

`A144303(eq[16, sqrt(A130321(n))])`
-/

namespace A218500.P3589193157791430027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A130321 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A218500.P3589193157791430027

/-! ## A218500.P9007423440883241598

`A144303(eq[9, A004736(n+1)])`
-/

namespace A218500.P9007423440883241598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218500.P9007423440883241598

/-!
# A218501: 9th iteration of the hyperbinomial transform on the sequence of 1's.

The programs for A218501, there is no canonical definition to state claims against.
-/

/-! ## A218501.P8938517264741878713

`A144303(eq[9, A025581(n)])`
-/

namespace A218501.P8938517264741878713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218501.P8938517264741878713

/-! ## A218501.P8628718446204226320

`A144303(eq[10, A193739(n)])`
-/

namespace A218501.P8628718446204226320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218501.P8628718446204226320

/-! ## A218501.P583464058933613542

`A144303(eq[10, A195663(n)])`
-/

namespace A218501.P583464058933613542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218501.P583464058933613542

/-! ## A218501.P13682576138643675111

`A144303(eq[19, A099375(n)])`
-/

namespace A218501.P13682576138643675111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218501.P13682576138643675111

/-! ## A218501.P11566794889051966907

`A144303(eq[10, A004736(n+1)])`
-/

namespace A218501.P11566794889051966907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218501.P11566794889051966907

/-!
# A218502: 10th iteration of the hyperbinomial transform on the sequence of 1's.

The programs for A218502, there is no canonical definition to state claims against.
-/

/-! ## A218502.P12960544942680528435

`A144303(eq[10, A025581(n)])`
-/

namespace A218502.P12960544942680528435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218502.P12960544942680528435

/-! ## A218502.P15952919183549319601

`A144303(eq[11, A193739(n)])`
-/

namespace A218502.P15952919183549319601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218502.P15952919183549319601

/-! ## A218502.P9819026093055604210

`A144303(eq[21, A099375(n)])`
-/

namespace A218502.P9819026093055604210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218502.P9819026093055604210

/-! ## A218502.P2635675844325425174

`A144303(eq[11, A004736(n+1)])`
-/

namespace A218502.P2635675844325425174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218502.P2635675844325425174

/-! ## A218502.P6565185399128178260

`A144303(eq[18, A185782(n+2)])`
-/

namespace A218502.P6565185399128178260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218502.P6565185399128178260

/-!
# A218503: q-factorial numbers 5!_q.

The programs for A218503, the canonical program `A218503.P11395741053979960510` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218503 has offset 0).

The definition of A218503 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218503.P13607314739072875169

`lcm((n²+1+n)*(n²+1)*(n+1)², ceil((n+1)/acot(n)^3))`
-/

namespace A218503.P13607314739072875169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n ^ 2 + 1 + n) * ((n ^ 2 + 1) * (n + 1) ^ 2) : ℤ) ⌈(n + 1 : ℝ) / SequenceMachineLib.acot (n : ℝ) ^ 3⌉

end

end A218503.P13607314739072875169

namespace A218503

/-- `lcm((n²+1+n)*(n²+1)*(n+1)², ceil((n+1)/acot(n)^3))` -/
def P13607314739072875169.Spec : Prop :=
  ∀ n, (P13607314739072875169.a n : ℤ) = A218503 n

end A218503

/-! ## A218503.P11395741053979960510

`((n+1)*(n^3+n)+1)*(n²+1+n)*(n²+1)*(n+1)²`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A218503

/-- `((n+1)*(n^3+n)+1)*(n²+1+n)*(n²+1)*(n+1)²` -/
def P11395741053979960510.Spec : Prop :=
  ∀ n, (P11395741053979960510.a n : ℤ) = A218503 n

theorem P11395741053979960510.correct : P11395741053979960510.Spec := by
  intro n
  simp only [A218503]

end A218503

/-! ## A218503.P8192254157605048023

`lcm(A053699(n), A069779(n))`
-/

namespace A218503.P8192254157605048023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A053699 n) (A069779 n)

end

end A218503.P8192254157605048023

namespace A218503

/-- `lcm(A053699(n), A069779(n))` -/
def P8192254157605048023.Spec : Prop :=
  ∀ n, (P8192254157605048023.a n : ℤ) = A218503 n

end A218503

/-! ## A218503.P18061416749785177808

`A069779(n)+A027445(n)*A069779(n)`
-/

namespace A218503.P18061416749785177808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069779 n + A027445 n * A069779 n

end

end A218503.P18061416749785177808

namespace A218503

/-- `A069779(n)+A027445(n)*A069779(n)` -/
def P18061416749785177808.Spec : Prop :=
  ∀ n, P18061416749785177808.a n = A218503 n

end A218503

/-! ## A218503.P13922326921465459432

`A059839(n)*A069779(n)/A060884(n)`
-/

namespace A218503.P13922326921465459432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059839 n * A069779 n : ℚ) / (A060884 n : ℚ)

end

end A218503.P13922326921465459432

namespace A218503

/-- `A059839(n)*A069779(n)/A060884(n)` -/
def P13922326921465459432.Spec : Prop :=
  ∀ n, P13922326921465459432.a n = (A218503 n : ℚ)

end A218503

/-!
# A218504: E.g.f.: Product_{n>=1} 1/(1 - tanh(x^n/n)).

The programs for A218504, there is no canonical definition to state claims against.
-/

/-! ## A218504.P4998531575370656337

`A090223(A005651(n)+floor(5^(n/2)^(2/5)))`
-/

namespace A218504.P4998531575370656337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 (A005651 n + ⌊((5 : ℝ) ^ ((n : ℚ) / 2 : ℝ)) ^ ((2 : ℚ) / 5 : ℝ)⌋).toNat

end

end A218504.P4998531575370656337

/-! ## A218504.P8775393597195030817

`A090223(A018126(n)+A005651(n))`
-/

namespace A218504.P8775393597195030817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 (A018126 n + A005651 n).toNat

end

end A218504.P8775393597195030817

/-! ## A218504.P3452384258404490745

`A070548(A000776(n))+A048273(n)`
-/

namespace A218504.P3452384258404490745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070548 (A000776 n).toNat + A048273 n

end

end A218504.P3452384258404490745

/-!
# A218506: Number of partitions of n in which any two parts differ by at most 4.

The programs for A218506, the canonical program `A218506.P14739239847812447530` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218506 has offset 0).

The definition of A218506 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3242 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218506.P14739239847812447530

`A308733(n+4)-char[4*(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A218506

/-- `A308733(n+4)-char[4*(n+1)]` -/
def P14739239847812447530.Spec : Prop :=
  ∀ n, P14739239847812447530.a n = A218506 n

theorem P14739239847812447530.correct : P14739239847812447530.Spec := by
  intro n
  simp only [A218506]

end A218506

/-! ## A218506.P15487708512446008052

`A194621(A027379(n)-A004271(n))`
-/

namespace A218506.P15487708512446008052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194621 (A027379 n - A004271 n).toNat

end

end A218506.P15487708512446008052

namespace A218506

/-- `A194621(A027379(n)-A004271(n))` -/
def P15487708512446008052.Spec : Prop :=
  ∀ n, P15487708512446008052.a n = A218506 n

end A218506

/-! ## A218506.P16906629070758004307

`A194621(A055998(n)-A004271(n))`
-/

namespace A218506.P16906629070758004307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194621 (A055998 n - A004271 n).toNat

end

end A218506.P16906629070758004307

namespace A218506

/-- `A194621(A055998(n)-A004271(n))` -/
def P16906629070758004307.Spec : Prop :=
  ∀ n, P16906629070758004307.a n = A218506 n

end A218506

/-! ## A218506.P11789094332581545965

`A000196(∑[A001840(A058187(n))])`
-/

namespace A218506.P11789094332581545965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (A058187 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A218506.P11789094332581545965

namespace A218506

/-- `A000196(∑[A001840(A058187(n))])` -/
def P11789094332581545965.Spec : Prop :=
  ∀ n, P11789094332581545965.a n = A218506 n

end A218506

/-! ## A218506.P13694730094238763309

`A330640(n)-A056556(A349796(n)²)`
-/

namespace A218506.P13694730094238763309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330640 n - A056556 (A349796 n ^ 2).toNat

end

end A218506.P13694730094238763309

namespace A218506

/-- `A330640(n)-A056556(A349796(n)²)` -/
def P13694730094238763309.Spec : Prop :=
  ∀ n, P13694730094238763309.a n = A218506 n

end A218506

/-!
# A218507: Number of partitions of n in which any two parts differ by at most 5.

The programs for A218507, there is no canonical definition to state claims against.
-/

/-! ## A218507.P7703897492446623758

`A202305(A160525(n))-(n+1)`
-/

namespace A218507.P7703897492446623758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202305 (A160525 n).toNat - (n + 1 : ℤ)

end

end A218507.P7703897492446623758

/-! ## A218507.P5878443234283449886

`abs(A008619(2*n)-A202305(A160525(n)))`
-/

namespace A218507.P5878443234283449886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008619 (2 * n) - A202305 (A160525 n).toNat|

end

end A218507.P5878443234283449886

/-! ## A218507.P7977188600642401862

`∑[A048766(A347206(n)²)]`
-/

namespace A218507.P7977188600642401862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A347206 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218507.P7977188600642401862

/-! ## A218507.P8708051657098075063

`∑[A048766(A238945(n+1)²)]`
-/

namespace A218507.P8708051657098075063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A238945 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218507.P8708051657098075063

/-! ## A218507.P2395131479982821157

`A118759(∑[A318029(n+3)]+1)`
-/

namespace A218507.P2395131479982821157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318029 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A218507.P2395131479982821157

/-!
# A218508: Number of partitions of n in which any two parts differ by at most 6.

The programs for A218508, there is no canonical definition to state claims against.
-/

/-! ## A218508.P10457432013115171956

`A008631(n)-A210631(A187829(n+1))`
-/

namespace A218508.P10457432013115171956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008631 n - A210631 (A187829 (n + 1)).toNat

end

end A218508.P10457432013115171956

/-! ## A218508.P4372429900422160357

`A008637(n)-A210631(A187829(n+1))`
-/

namespace A218508.P4372429900422160357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008637 n - A210631 (A187829 (n + 1)).toNat

end

end A218508.P4372429900422160357

/-! ## A218508.P1716494661117150754

`A035988(n)-A326597(A187829(n+1))`
-/

namespace A218508.P1716494661117150754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035988 n - A326597 (A187829 (n + 1)).toNat

end

end A218508.P1716494661117150754

/-! ## A218508.P2385555059954358822

`A340719(n)-A210631(A187829(n+1))`
-/

namespace A218508.P2385555059954358822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340719 (n + 36) - A210631 (A187829 (n + 1)).toNat

end

end A218508.P2385555059954358822

/-! ## A218508.P7138880080838476997

`A347574(n)-A210631(A187829(n+1))`
-/

namespace A218508.P7138880080838476997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347574 (n + 28) - A210631 (A187829 (n + 1)).toNat

end

end A218508.P7138880080838476997

/-!
# A218509: Number of partitions of n in which any two parts differ by at most 7.

The programs for A218509, there is no canonical definition to state claims against.
-/

/-! ## A218509.P14562865129588687471

`A000041(n)-A146167(A006206(n+1))`
-/

namespace A218509.P14562865129588687471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A146167 (A006206 (n + 1)).toNat

end

end A218509.P14562865129588687471

/-! ## A218509.P7229549950297188139

`A028392(A363238(3*n+3))-A363238(3*n+3)`
-/

namespace A218509.P7229549950297188139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028392 (A363238 (3 * n + 3)).toNat - A363238 (3 * n + 3)

end

end A218509.P7229549950297188139

/-!
# A218510: Number of partitions of n in which any two parts differ by at most 8.

The programs for A218510, there is no canonical definition to state claims against.
-/

/-! ## A218510.P18175551845802586425

`A122922(A113019(n))+A008632(n)`
-/

namespace A218510.P18175551845802586425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122922 (A113019 n).toNat + A008632 n

end

end A218510.P18175551845802586425

/-! ## A218510.P11127165839850893573

`A122922(A113019(n))+A008638(n)`
-/

namespace A218510.P11127165839850893573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122922 (A113019 n).toNat + A008638 n

end

end A218510.P11127165839850893573

/-! ## A218510.P17522809019028794492

`A309058(n)+A050728(A326597(n))`
-/

namespace A218510.P17522809019028794492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309058 n + A050728 (A326597 n).toNat

end

end A218510.P17522809019028794492

/-! ## A218510.P1645339977501887471

`A008639(n)-A102683(A011782(n))`
-/

namespace A218510.P1645339977501887471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008639 n - A102683 (A011782 n).toNat

end

end A218510.P1645339977501887471

/-! ## A218510.P4896802840957091313

`A341914(n)+A030217(A341905(n))`
-/

namespace A218510.P4896802840957091313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341914 (n + 55) + A030217 (A341905 n).toNat

end

end A218510.P4896802840957091313

/-!
# A218511: Number of partitions of n in which any two parts differ by at most 9.

The programs for A218511, there is no canonical definition to state claims against.
-/

/-! ## A218511.P3910309115695616527

`A008634(n)-A224782(A014375(n))`
-/

namespace A218511.P3910309115695616527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008634 n - A224782 (A014375 n).toNat

end

end A218511.P3910309115695616527

/-! ## A218511.P1995476110140438355

`A008640(n)-A224782(A014375(n))`
-/

namespace A218511.P1995476110140438355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008640 n - A224782 (A014375 n).toNat

end

end A218511.P1995476110140438355

/-! ## A218511.P2897081030661334756

`A008640(n)-A179801(A113019(n))`
-/

namespace A218511.P2897081030661334756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008640 n - A179801 (A113019 n).toNat

end

end A218511.P2897081030661334756

/-! ## A218511.P3430750817349190580

`A347577(n)-A224782(A014375(n))`
-/

namespace A218511.P3430750817349190580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347577 (n + 55) - A224782 (A014375 n).toNat

end

end A218511.P3430750817349190580

/-! ## A218511.P18269573374477721175

`A238869(n)-A340998(A066806(n))`
-/

namespace A218511.P18269573374477721175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238869 n - A340998 ((A066806 n).toNat + 140)

end

end A218511.P18269573374477721175

/-!
# A218512: Number of partitions of n in which any two parts differ by at most 10.

The programs for A218512, there is no canonical definition to state claims against.
-/

/-! ## A218512.P15782408005474437895

`A194621(∑[char[A255404(n)]+n])`
-/

namespace A218512.P15782408005474437895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255404 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194621 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A218512.P15782408005474437895

/-! ## A218512.P5977996572157071512

`A008641(n)-A107846(A038754(n))`
-/

namespace A218512.P5977996572157071512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008641 n - A107846 (A038754 n).toNat

end

end A218512.P5977996572157071512

/-! ## A218512.P1756538830485978492

`A008641(n)-∑[A302110(A008862(n))]`
-/

namespace A218512.P1756538830485978492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302110 (A008862 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008641 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218512.P1756538830485978492

/-! ## A218512.P17198529161820808400

`∑[A266780(n)-A302110(A008862(n))]`
-/

namespace A218512.P17198529161820808400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266780 n - A302110 (A008862 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218512.P17198529161820808400

/-! ## A218512.P1277782574418009087

`A008641(n)-A011731(A146606(n+1))`
-/

namespace A218512.P1277782574418009087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008641 n - A011731 (A146606 (n + 1)).toNat

end

end A218512.P1277782574418009087

/-!
# A218514: Number of n-colorings of the icosahedral graph.

The programs for A218514, there is no canonical definition to state claims against.
-/

/-! ## A218514.P12264492134725229535

`Δ[A277016(∏[A277039(n)])]`
-/

namespace A218514.P12264492134725229535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277039 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277016 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218514.P12264492134725229535

/-! ## A218514.P281677975746196556

`A054861(A003095(n))*A353358(n)`
-/

namespace A218514.P281677975746196556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (A003095 n).toNat * A353358 n

end

end A218514.P281677975746196556

/-!
# A218515: Number of n X n arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random 0..3 n X n array.

The programs for A218515, there is no canonical definition to state claims against.
-/

/-! ## A218515.P8075314436582280392

`A218522((n+1)²+n²)`
-/

namespace A218515.P8075314436582280392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218522 ((n + 1) ^ 2 + n ^ 2)

end

end A218515.P8075314436582280392

/-!
# A218516: Number of n X 2 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random 0..3 n X 2 array.

The programs for A218516, the canonical program `A218516.P9593290001197156008` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218516 has offset 1).

The definition of A218516 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218516.P9593290001197156008

`A218051(2*(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A218516

/-- `A218051(2*(n+1))` -/
def P9593290001197156008.Spec : Prop :=
  ∀ n, P9593290001197156008.a n = A218516 (n + 1)

theorem P9593290001197156008.correct : P9593290001197156008.Spec := by
  intro n
  simp only [A218516, Nat.add_sub_cancel]

end A218516

/-! ## A218516.P529488103004297537

`lcm((-1)^n, A218051(n+2+n))`
-/

namespace A218516.P529488103004297537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A218051 (n + 2 + n))

end

end A218516.P529488103004297537

namespace A218516

/-- `lcm((-1)^n, A218051(n+2+n))` -/
def P529488103004297537.Spec : Prop :=
  ∀ n, (P529488103004297537.a n : ℤ) = A218516 (n + 1)

end A218516

/-! ## A218516.P9893117266301921292

`record[A218051(A133265(n))]`
-/

namespace A218516.P9893117266301921292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218051 (A133265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218516.P9893117266301921292

namespace A218516

/-- `record[A218051(A133265(n))]` -/
def P9893117266301921292.Spec : Prop :=
  ∀ n, P9893117266301921292.a n = A218516 (n + 1)

end A218516

/-! ## A218516.P7025366241857500193

`record[A218051(A006257(n)+1)]`
-/

namespace A218516.P7025366241857500193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218051 (A006257 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218516.P7025366241857500193

namespace A218516

/-- `record[A218051(A006257(n)+1)]` -/
def P7025366241857500193.Spec : Prop :=
  ∀ n, P7025366241857500193.a n = A218516 (n + 1)

end A218516

/-! ## A218516.P8590371869171237660

`record[A218051(A348717(n+1))]`
-/

namespace A218516.P8590371869171237660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218051 (A348717 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218516.P8590371869171237660

namespace A218516

/-- `record[A218051(A348717(n+1))]` -/
def P8590371869171237660.Spec : Prop :=
  ∀ n, P8590371869171237660.a n = A218516 (n + 1)

end A218516

/-! ## A218516.P9993207216156025062

`record[A218051(A117910(2*n))]`
-/

namespace A218516.P9993207216156025062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218051 (A117910 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218516.P9993207216156025062

namespace A218516

/-- `record[A218051(A117910(2*n))]` -/
def P9993207216156025062.Spec : Prop :=
  ∀ n, P9993207216156025062.a n = A218516 (n + 1)

end A218516

/-! ## A218516.P17072726000676179632

`record[A218051(2*A328399(n))]`
-/

namespace A218516.P17072726000676179632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218051 (2 * A328399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218516.P17072726000676179632

namespace A218516

/-- `record[A218051(2*A328399(n))]` -/
def P17072726000676179632.Spec : Prop :=
  ∀ n, P17072726000676179632.a n = A218516 (n + 1)

end A218516

/-! ## A218516.P7427347377820050576

`record[A218051(2*A344180(n))]`
-/

namespace A218516.P7427347377820050576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218051 (2 * A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218516.P7427347377820050576

namespace A218516

/-- `record[A218051(2*A344180(n))]` -/
def P7427347377820050576.Spec : Prop :=
  ∀ n, P7427347377820050576.a n = A218516 (n + 1)

end A218516

/-! ## A218516.P11140719908110062297

`record[gcd(A007814(n+1), A218051(n+2))]`
-/

namespace A218516.P11140719908110062297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (n + 1)) (A218051 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218516.P11140719908110062297

namespace A218516

/-- `record[gcd(A007814(n+1), A218051(n+2))]` -/
def P11140719908110062297.Spec : Prop :=
  ∀ n, (P11140719908110062297.a n : ℤ) = A218516 (n + 1)

end A218516

/-! ## A218516.P13660557663055541848

`A218051(A005843(n+1))+char[A017512(n)]`
-/

namespace A218516.P13660557663055541848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017512 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218051 (A005843 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A218516.P13660557663055541848

namespace A218516

/-- `A218051(A005843(n+1))+char[A017512(n)]` -/
def P13660557663055541848.Spec : Prop :=
  ∀ n, P13660557663055541848.a n = A218516 (n + 1)

end A218516

/-! ## A218516.P12613306593771507531

`A218051(A005843(n+1))/A007318(A057944(n))`
-/

namespace A218516.P12613306593771507531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218051 (A005843 (n + 1)).toNat : ℚ) / (A007318 (A057944 n).toNat : ℚ)

end

end A218516.P12613306593771507531

namespace A218516

/-- `A218051(A005843(n+1))/A007318(A057944(n))` -/
def P12613306593771507531.Spec : Prop :=
  ∀ n, P12613306593771507531.a n = (A218516 (n + 1) : ℚ)

end A218516

/-! ## A218516.P12541150123803871049

`A240875(A001178(n+1))+A218051(A005843(n+1))`
-/

namespace A218516.P12541150123803871049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240875 (A001178 (n + 1)).toNat + A218051 (A005843 (n + 1)).toNat

end

end A218516.P12541150123803871049

namespace A218516

/-- `A240875(A001178(n+1))+A218051(A005843(n+1))` -/
def P12541150123803871049.Spec : Prop :=
  ∀ n, P12541150123803871049.a n = A218516 (n + 1)

end A218516

/-! ## A218516.P16618200783824014380

`A218051(A005843(n+1))/A001222(A072742(n+1))`
-/

namespace A218516.P16618200783824014380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218051 (A005843 (n + 1)).toNat : ℚ) / (A001222 (A072742 (n + 1)).toNat : ℚ)

end

end A218516.P16618200783824014380

namespace A218516

/-- `A218051(A005843(n+1))/A001222(A072742(n+1))` -/
def P16618200783824014380.Spec : Prop :=
  ∀ n, P16618200783824014380.a n = (A218516 (n + 1) : ℚ)

end A218516

/-!
# A218517: Number of n X 3 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random 0..3 n X 3 array.

The programs for A218517, there is no canonical definition to state claims against.
-/

/-! ## A218517.P59888121690280608

`A218522(∑[n+3]+1)`
-/

namespace A218517.P59888121690280608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218522 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A218517.P59888121690280608

/-! ## A218517.P13625306673677496404

`record[A218522(A198464(n+1))]`
-/

namespace A218517.P13625306673677496404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218522 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218517.P13625306673677496404

/-!
# A218518: Number of nX4 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random 0..3 nX4 array.

The programs for A218518, there is no canonical definition to state claims against.
-/

/-! ## A218518.P6776058958621857543

`A218522(A141214(n+1))`
-/

namespace A218518.P6776058958621857543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218522 (A141214 (n + 1)).toNat

end

end A218518.P6776058958621857543

/-! ## A218518.P6494000096637829883

`A218522(A155212(n)+5)`
-/

namespace A218518.P6494000096637829883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218522 (A155212 n + 5).toNat

end

end A218518.P6494000096637829883

/-! ## A218518.P9821931292136674687

`A218522(A056000(n)+7)`
-/

namespace A218518.P9821931292136674687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218522 (A056000 n + 7).toNat

end

end A218518.P9821931292136674687

/-! ## A218518.P16414744222822574778

`A218522(eq[2, A152157(n)])`
-/

namespace A218518.P16414744222822574778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218518.P16414744222822574778

/-! ## A218518.P2319247199690169409

`A218522(eq[4, A140996(n)])`
-/

namespace A218518.P2319247199690169409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218518.P2319247199690169409

/-!
# A218519: Number of n X 5 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random 0..3 n X 5 array.

The programs for A218519, there is no canonical definition to state claims against.
-/

/-! ## A218519.P1276766038942893372

`A218522(Δ[A264443(n)])`
-/

namespace A218519.P1276766038942893372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218522 (f1 (n + 1) - f1 n).toNat

end

end A218519.P1276766038942893372

/-! ## A218519.P11559154450418441978

`A218522(eq[3, A152157(n)])`
-/

namespace A218519.P11559154450418441978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218519.P11559154450418441978

/-! ## A218519.P18369004955902471864

`A218522(eq[4, A193592(n)])`
-/

namespace A218519.P18369004955902471864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218519.P18369004955902471864

/-! ## A218519.P971278773100346940

`A218522(eq[8, A140996(n)])`
-/

namespace A218519.P971278773100346940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218519.P971278773100346940

/-! ## A218519.P9794589490360711767

`A218522(Δ[A023545(n+1)])`
-/

namespace A218519.P9794589490360711767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218522 (f1 (n + 1) - f1 n).toNat

end

end A218519.P9794589490360711767

/-!
# A218520: Number of nX6 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random 0..3 nX6 array.

The programs for A218520, there is no canonical definition to state claims against.
-/

/-! ## A218520.P5150530049663680851

`A218522(A052905(n+3))`
-/

namespace A218520.P5150530049663680851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218522 (A052905 (n + 3)).toNat

end

end A218520.P5150530049663680851

/-! ## A218520.P9680347881116817146

`A218522(A056119(n)+16)`
-/

namespace A218520.P9680347881116817146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218522 (A056119 n + 16).toNat

end

end A218520.P9680347881116817146

/-! ## A218520.P16183332570162973381

`A218522(eq[3, A219347(n)])`
-/

namespace A218520.P16183332570162973381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218520.P16183332570162973381

/-! ## A218520.P17314831579911899503

`A218522(eq[5, A193592(n)])`
-/

namespace A218520.P17314831579911899503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218520.P17314831579911899503

/-!
# A218521: Number of nX7 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random 0..3 nX7 array.

The programs for A218521, there is no canonical definition to state claims against.
-/

/-! ## A218521.P7872987258674952080

`A218522(A055999(n+4))`
-/

namespace A218521.P7872987258674952080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218522 (A055999 (n + 4)).toNat

end

end A218521.P7872987258674952080

/-! ## A218521.P11586851151667579017

`A218522(eq[2, A219347(n)-2])`
-/

namespace A218521.P11586851151667579017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218521.P11586851151667579017

/-!
# A218523: Number of 2Xn arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random 0..3 2Xn array.

The programs for A218523, there is no canonical definition to state claims against.
-/

/-! ## A218523.P9711228296958699491

`A218522(∑[n+1]+2)`
-/

namespace A218523.P9711228296958699491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218522 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A218523.P9711228296958699491

/-! ## A218523.P8816593035023654912

`record[A218522(A133263(val(n+1, 2)+1))]`
-/

namespace A218523.P8816593035023654912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218522 (A133263 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218523.P8816593035023654912

/-! ## A218523.P16578730151033844402

`record[A218522(n+3)/A364709(n+1)]`
-/

namespace A218523.P16578730151033844402
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218522 (n + 3) : ℚ) / (A364709 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218523.P16578730151033844402

/-! ## A218523.P1113610061543528921

`A218522(A133263(n+1))%A006960(2*n+3)`
-/

namespace A218523.P1113610061543528921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218522 (A133263 (n + 1)).toNat) (A006960 (2 * n + 3))

end

end A218523.P1113610061543528921

/-! ## A218523.P14242032532479858768

`record[gcd(A218522(n+3), A221200(n+1))]`
-/

namespace A218523.P14242032532479858768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A218522 (n + 3)) (A221200 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218523.P14242032532479858768

/-!
# A218524: Number of 3Xn arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random 0..3 3Xn array.

The programs for A218524, there is no canonical definition to state claims against.
-/

/-! ## A218524.P9186354579487594765

`A218522(∑[n+2]+4)`
-/

namespace A218524.P9186354579487594765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218522 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A218524.P9186354579487594765

/-! ## A218524.P12074734854854978920

`lcm(2, A218522(A167614(n+1)))`
-/

namespace A218524.P12074734854854978920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A218522 (A167614 (n + 1)).toNat)

end

end A218524.P12074734854854978920

/-! ## A218524.P15735862531848243735

`A218522(A167614(n+1))+A011738(n)`
-/

namespace A218524.P15735862531848243735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218522 (A167614 (n + 1)).toNat + A011738 n

end

end A218524.P15735862531848243735

/-! ## A218524.P4192882997970162747

`A218522(A167614(n+1))+A025438(n)`
-/

namespace A218524.P4192882997970162747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218522 (A167614 (n + 1)).toNat + A025438 n

end

end A218524.P4192882997970162747

/-! ## A218524.P11371682952173848830

`A218522(A167614(n+1))+A025442(n)`
-/

namespace A218524.P11371682952173848830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218522 (A167614 (n + 1)).toNat + A025442 n

end

end A218524.P11371682952173848830

/-!
# A218525: Number of 4Xn arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random 0..3 4Xn array.

The programs for A218525, there is no canonical definition to state claims against.
-/

/-! ## A218525.P550886451084788325

`A218522(A141214(n)+7)`
-/

namespace A218525.P550886451084788325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218522 (A141214 n + 7).toNat

end

end A218525.P550886451084788325

/-! ## A218525.P3896195065813754299

`A218522(A052905(n)+9)`
-/

namespace A218525.P3896195065813754299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218522 (A052905 n + 9).toNat

end

end A218525.P3896195065813754299

/-! ## A218525.P11949783348864963745

`A218522(A055999(n)+10)`
-/

namespace A218525.P11949783348864963745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218522 (A055999 n + 10).toNat

end

end A218525.P11949783348864963745

/-! ## A218525.P16494139229553565506

`A218522(A167614(n+2)+1)`
-/

namespace A218525.P16494139229553565506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218522 (A167614 (n + 2) + 1).toNat

end

end A218525.P16494139229553565506

/-! ## A218525.P5184797116322107228

`A218522(A166136(n+2)-2)`
-/

namespace A218525.P5184797116322107228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218522 (A166136 (n + 2) - 2).toNat

end

end A218525.P5184797116322107228

/-!
# A218526: Number of 5Xn arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random 0..3 5Xn array.

The programs for A218526, there is no canonical definition to state claims against.
-/

/-! ## A218526.P1907182557846223001

`A218522(A155212(n)+13)`
-/

namespace A218526.P1907182557846223001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218522 (A155212 n + 13).toNat

end

end A218526.P1907182557846223001

/-! ## A218526.P5819543351531056364

`A218522(A056000(n)+15)`
-/

namespace A218526.P5819543351531056364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218522 (A056000 n + 15).toNat

end

end A218526.P5819543351531056364

/-! ## A218526.P11734554112498846514

`A218522(eq[7, A066657(n)])`
-/

namespace A218526.P11734554112498846514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218526.P11734554112498846514

/-! ## A218526.P8819398665181260871

`A218522(eq[4, A002262(n)]+1)`
-/

namespace A218526.P8819398665181260871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A218526.P8819398665181260871

/-! ## A218526.P14480500789519652290

`A218522(eq[6, A131818(n+1)])`
-/

namespace A218526.P14480500789519652290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218526.P14480500789519652290

/-!
# A218527: Number of 6Xn arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random 0..3 6Xn array.

The programs for A218527, there is no canonical definition to state claims against.
-/

/-! ## A218527.P14868206944675435520

`A218522(A166136(n+4))`
-/

namespace A218527.P14868206944675435520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218522 (A166136 (n + 4)).toNat

end

end A218527.P14868206944675435520

/-! ## A218527.P7557160831702447679

`A218522(A056115(n)+21)`
-/

namespace A218527.P7557160831702447679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218522 (A056115 n + 21).toNat

end

end A218527.P7557160831702447679

/-! ## A218527.P12620184599126228125

`A218522(A167499(n+4)+1)`
-/

namespace A218527.P12620184599126228125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218522 (A167499 (n + 4) + 1).toNat

end

end A218527.P12620184599126228125

/-! ## A218527.P14768165077513967436

`A218522(A167614(n+4)+3)`
-/

namespace A218527.P14768165077513967436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218522 (A167614 (n + 4) + 3).toNat

end

end A218527.P14768165077513967436

/-!
# A218528: Number of 7Xn arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random 0..3 7Xn array.

The programs for A218528, there is no canonical definition to state claims against.
-/

/-! ## A218528.P11991117930324286236

`A218522(eq[8, A131818(n+1)])`
-/

namespace A218528.P11991117930324286236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218528.P11991117930324286236

/-!
# A218529: Binomial transform of -1, -1, 1, 2, -5, -16, ... (signed variant of A000111).

The programs for A218529, there is no canonical definition to state claims against.
-/

/-! ## A218529.P580245824959189362

`A163747(n)-1`
-/

namespace A218529.P580245824959189362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163747 n - 1

end

end A218529.P580245824959189362

/-! ## A218529.P10400355891799637122

`∑[-A323833(∑[n]+1)]`
-/

namespace A218529.P10400355891799637122
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A323833 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218529.P10400355891799637122

/-! ## A218529.P5236610815406088321

`-∑[A323833(A000124(n))]`
-/

namespace A218529.P5236610815406088321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323833 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A218529.P5236610815406088321

/-! ## A218529.P17168146448620221380

`-(A323833(A000217(n))+1)`
-/

namespace A218529.P17168146448620221380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A323833 (A000217 n).toNat + 1)

end

end A218529.P17168146448620221380

/-! ## A218529.P13853307789438506510

`-(A155585(n)+A009832(n))`
-/

namespace A218529.P13853307789438506510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A155585 n + A009832 n)

end

end A218529.P13853307789438506510

/-! ## A218529.P16050219320444619949

`1-(A155585(n)+A119880(n))`
-/

namespace A218529.P16050219320444619949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A155585 n + A119880 n)

end

end A218529.P16050219320444619949

/-! ## A218529.P3929257535208806719

`A122045(n)-(A155585(n)+1)`
-/

namespace A218529.P3929257535208806719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122045 n - (A155585 n + 1)

end

end A218529.P3929257535208806719

/-! ## A218529.P10444080249915635850

`A062157(n)*A163982(n)-1`
-/

namespace A218529.P10444080249915635850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A163982 n - 1

end

end A218529.P10444080249915635850

/-! ## A218529.P9909765699392439281

`A217714(n)-2*A155585(n)`
-/

namespace A218529.P9909765699392439281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217714 n - 2 * A155585 n

end

end A218529.P9909765699392439281

/-! ## A218529.P3166300383286786142

`Δ[A009390(n)]-(A155585(n)+1)`
-/

namespace A218529.P3166300383286786142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A155585 n + 1)

end

end A218529.P3166300383286786142

/-!
# A218530: Partial sums of floor(n/11).

The programs for A218530, the canonical program `A218530.P5434774884141080743` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218530 has offset 0).

The definition of A218530 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218530.P5434774884141080743

`∑[floor(n/11)]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A218530

/-- `∑[floor(n/11)]` -/
def P5434774884141080743.Spec : Prop :=
  ∀ n, P5434774884141080743.a n = A218530 n

theorem P5434774884141080743.correct : P5434774884141080743.Spec := by
  intro n
  simp only [A218530]

end A218530

/-! ## A218530.P5825962729855826122

`∑[n-n%11]/11`
-/

namespace A218530.P5825962729855826122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((n % 11 : ℕ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 11

end

end A218530.P5825962729855826122

namespace A218530

/-- `∑[n-n%11]/11` -/
def P5825962729855826122.Spec : Prop :=
  ∀ n, P5825962729855826122.a n = (A218530 n : ℚ)

end A218530

/-! ## A218530.P17111784403775971837

`floor(a(n-1)+n/11)` with `a(0)=0`
-/

namespace A218530.P17111784403775971837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + (n : ℚ) / 11⌋

end

end A218530.P17111784403775971837

namespace A218530

/-- `floor(a(n-1)+n/11)` -/
def P17111784403775971837.Spec : Prop :=
  ∀ n, P17111784403775971837.a n = A218530 n

end A218530

/-! ## A218530.P17926510623660749118

`∑[∑[char[lcm(11, n)]]]-(n+1)`
-/

namespace A218530.P17926510623660749118
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 11 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A218530.P17926510623660749118

namespace A218530

/-- `∑[∑[char[lcm(11, n)]]]-(n+1)` -/
def P17926510623660749118.Spec : Prop :=
  ∀ n, P17926510623660749118.a n = A218530 n

end A218530

/-! ## A218530.P2110427677081364062

`A008729(n)-(n+1)`
-/

namespace A218530.P2110427677081364062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008729 n - (n + 1 : ℤ)

end

end A218530.P2110427677081364062

namespace A218530

/-- `A008729(n)-(n+1)` -/
def P2110427677081364062.Spec : Prop :=
  ∀ n, P2110427677081364062.a n = A218530 n

end A218530

/-! ## A218530.P11855390705461778317

`A344420(n)+a(n-1)` with `a(0)=0`
-/

namespace A218530.P11855390705461778317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A344420 n + a (n - 1)

end

end A218530.P11855390705461778317

namespace A218530

/-- `A344420(n)+a(n-1)` -/
def P11855390705461778317.Spec : Prop :=
  ∀ n, P11855390705461778317.a n = A218530 n

end A218530

/-! ## A218530.P5708824864047341673

`∑[∑[char[A017509(n)+1]]]%(n²+1)`
-/

namespace A218530.P5708824864047341673
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 n + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n ^ 2 + 1)

end

end A218530.P5708824864047341673

namespace A218530

/-- `∑[∑[char[A017509(n)+1]]]%(n²+1)` -/
def P5708824864047341673.Spec : Prop :=
  ∀ n, (P5708824864047341673.a n : ℤ) = A218530 n

end A218530

/-! ## A218530.P7196261496736612386

`∑[n]-A033443(n+1)`
-/

namespace A218530.P7196261496736612386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A033443 (n + 1)

end

end A218530.P7196261496736612386

namespace A218530

/-- `∑[n]-A033443(n+1)` -/
def P7196261496736612386.Spec : Prop :=
  ∀ n, P7196261496736612386.a n = A218530 n

end A218530

/-! ## A218530.P9689725523317975960

`A002620(n+1)+A002620(n)-A033443(n+1)`
-/

namespace A218530.P9689725523317975960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) + (A002620 n - A033443 (n + 1))

end

end A218530.P9689725523317975960

namespace A218530

/-- `A002620(n+1)+A002620(n)-A033443(n+1)` -/
def P9689725523317975960.Spec : Prop :=
  ∀ n, P9689725523317975960.a n = A218530 n

end A218530

/-! ## A218530.P2298079857646679894

`record[A008723(n)]-(n+1)`
-/

namespace A218530.P2298079857646679894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n + 1 : ℤ)

end

end A218530.P2298079857646679894

namespace A218530

/-- `record[A008723(n)]-(n+1)` -/
def P2298079857646679894.Spec : Prop :=
  ∀ n, P2298079857646679894.a n = A218530 n

end A218530

/-! ## A218530.P16088648018195775065

`A008723(2*n)-(n+1)`
-/

namespace A218530.P16088648018195775065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008723 (2 * n) - (n + 1 : ℤ)

end

end A218530.P16088648018195775065

namespace A218530

/-- `A008723(2*n)-(n+1)` -/
def P16088648018195775065.Spec : Prop :=
  ∀ n, P16088648018195775065.a n = A218530 n

end A218530

/-!
# A218531: The maximal number of solutions for a given row of a skyscraper puzzle of size n X n.

The programs for A218531, there is no canonical definition to state claims against.
-/

/-! ## A218531.P11886743266946193589

`A130275(n)+A011729(A058892(n))`
-/

namespace A218531.P11886743266946193589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130275 n + A011729 (A058892 n).toNat

end

end A218531.P11886743266946193589

/-! ## A218531.P12137564157213686688

`A130275(n)+A025465(A088715(n))`
-/

namespace A218531.P12137564157213686688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130275 n + A025465 (A088715 n).toNat

end

end A218531.P12137564157213686688

/-! ## A218531.P1596670023296366825

`A130275(n)+A124761(A002478(n))`
-/

namespace A218531.P1596670023296366825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130275 n + A124761 (A002478 n).toNat

end

end A218531.P1596670023296366825

/-!
# A218533: Numerators of the ratios of consecutive terms in A176352.

The programs for A218533, there is no canonical definition to state claims against.
-/

/-! ## A218533.P12838180664025756829

`A176352(n+1)/A218535(n+1)`
-/

namespace A218533.P12838180664025756829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176352 (n + 1) : ℚ) / (A218535 (n + 1) : ℚ)

end

end A218533.P12838180664025756829

/-! ## A218533.P18006269138874736525

`A218534(n+1)/ratio[A176352(n+1)]`
-/

namespace A218533.P18006269138874736525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176352 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218534 (n + 1) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A218533.P18006269138874736525

/-! ## A218533.P11718276182646073726

`A176352(n+1)*A218534(n+1)/A176352(n+2)`
-/

namespace A218533.P11718276182646073726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176352 (n + 1) * A218534 (n + 1) : ℚ) / (A176352 (n + 2) : ℚ)

end

end A218533.P11718276182646073726

/-! ## A218533.P18421043934187641847

`gcd(A000523(A338577(n+1)), A176352(n+1))`
-/

namespace A218533.P18421043934187641847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000523 (A338577 (n + 1)).toNat) (A176352 (n + 1))

end

end A218533.P18421043934187641847

/-! ## A218533.P6594509624700599220

`gcd(A000069(A349566(n+1)), A064413(n+1))`
-/

namespace A218533.P6594509624700599220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000069 (A349566 (n + 1)).toNat) (A064413 (n + 1))

end

end A218533.P6594509624700599220

/-!
# A218534: Denominators of the ratios of consecutive terms in A176352.

The programs for A218534, there is no canonical definition to state claims against.
-/

/-! ## A218534.P18227875521359241174

`A176352(n+2)/A218535(n+1)`
-/

namespace A218534.P18227875521359241174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176352 (n + 2) : ℚ) / (A218535 (n + 1) : ℚ)

end

end A218534.P18227875521359241174

/-! ## A218534.P5812701997095154496

`ratio[A176352(n+1)]*A218533(n+1)`
-/

namespace A218534.P5812701997095154496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176352 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A218533 (n + 1) : ℚ)

end

end A218534.P5812701997095154496

/-! ## A218534.P17249672858718727504

`ratio[A218535(n+1)]*A218533(n+2)`
-/

namespace A218534.P17249672858718727504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218535 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A218533 (n + 2) : ℚ)

end

end A218534.P17249672858718727504

/-! ## A218534.P4963848045655930407

`A218533(n+1)/A176352(n+1)*A176352(n+2)`
-/

namespace A218534.P4963848045655930407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218533 (n + 1) : ℚ) / (A176352 (n + 1) : ℚ) * (A176352 (n + 2) : ℚ)

end

end A218534.P4963848045655930407

/-! ## A218534.P3226354236509934530

`A218533(n+2)/A218535(n+1)*A218535(n+2)`
-/

namespace A218534.P3226354236509934530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218533 (n + 2) : ℚ) / (A218535 (n + 1) : ℚ) * (A218535 (n + 2) : ℚ)

end

end A218534.P3226354236509934530

/-!
# A218535: Greatest common divisor of consecutive terms in A176352.

The programs for A218535, there is no canonical definition to state claims against.
-/

/-! ## A218535.P13031257878409766867

`A176352(n+1)/A218533(n+1)`
-/

namespace A218535.P13031257878409766867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176352 (n + 1) : ℚ) / (A218533 (n + 1) : ℚ)

end

end A218535.P13031257878409766867

/-! ## A218535.P6049948042086502504

`A176352(n+2)/A218534(n+1)`
-/

namespace A218535.P6049948042086502504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176352 (n + 2) : ℚ) / (A218534 (n + 1) : ℚ)

end

end A218535.P6049948042086502504

/-! ## A218535.P15610114817766683180

`gcd(A176352(n+1), A176352(n+2))`
-/

namespace A218535.P15610114817766683180
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A176352 (n + 1)) (A176352 (n + 2))

end

end A218535.P15610114817766683180

/-!
# A218536: 1^2 * 3^2 * 5^2 * ... * (p-4)^2 * (p-2)^2 where p is the n-th prime number (n >= 2).

The programs for A218536, there is no canonical definition to state claims against.
-/

/-! ## A218536.P8860429324594149242

`record[A135876(3*n)²]`
-/

namespace A218536.P8860429324594149242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135876 (3 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218536.P8860429324594149242

/-! ## A218536.P9846354368713441645

`record[A144270(3*n+1)²]`
-/

namespace A218536.P9846354368713441645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144270 (3 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218536.P9846354368713441645

/-!
# A218539: Numbers that are equal to the sum of the uniform platonic polyhedral (figurate) numbers (tetrahedral, cubic, octahedral, dodecahedral, or icosahedral) on each of their digits.

The programs for A218539, there is no canonical definition to state claims against.
-/

/-! ## A218539.P14416802632307611578

`and(∑[A115100(n+1)], A001652(n))`
-/

namespace A218539.P14416802632307611578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A001652 n)

end

end A218539.P14416802632307611578

/-! ## A218539.P1563900335573841793

`A277025(A173687(n+1)*A173715(n+1))`
-/

namespace A218539.P1563900335573841793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277025 (A173687 (n + 1) * A173715 (n + 1)).toNat

end

end A218539.P1563900335573841793

/-!
# A218540: Reduced third-order Patalan numbers.

The programs for A218540, the canonical program `A218540.P16836144759603430934` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218540 has offset 0).

The definition of A218540 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025748, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A218540.P16836144759603430934

`A025748(n)/A108411(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A218540

/-- `A025748(n)/A108411(n)` -/
def P16836144759603430934.Spec : Prop :=
  ∀ n, P16836144759603430934.a n = (A218540 n : ℚ)

end A218540

/-! ## A218540.P16154099621809098306

`A025748(n)/A111575(2*n)`
-/

namespace A218540.P16154099621809098306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025748 n : ℚ) / (A111575 (2 * n) : ℚ)

end

end A218540.P16154099621809098306

namespace A218540

/-- `A025748(n)/A111575(2*n)` -/
def P16154099621809098306.Spec : Prop :=
  ∀ n, P16154099621809098306.a n = (A218540 n : ℚ)

end A218540

/-! ## A218540.P549714348470055217

`A048966(C(n, 2)+1)/A108411(n)`
-/

namespace A218540.P549714348470055217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048966 (Nat.choose n 2 + 1) : ℚ) / (A108411 n : ℚ)

end

end A218540.P549714348470055217

namespace A218540

/-- `A048966(C(n, 2)+1)/A108411(n)` -/
def P549714348470055217.Spec : Prop :=
  ∀ n, P549714348470055217.a n = (A218540 n : ℚ)

end A218540

/-! ## A218540.P11917822146458946944

`A048966(∑[abs(1-n)])/A108411(n)`
-/

namespace A218540.P11917822146458946944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048966 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / (A108411 n : ℚ)

end

end A218540.P11917822146458946944

namespace A218540

/-- `A048966(∑[abs(1-n)])/A108411(n)` -/
def P11917822146458946944.Spec : Prop :=
  ∀ n, P11917822146458946944.a n = (A218540 n : ℚ)

end A218540

/-! ## A218540.P3341055493264595789

`A025748(n)/A017913(A052928(n))`
-/

namespace A218540.P3341055493264595789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025748 n : ℚ) / (A017913 (A052928 n).toNat : ℚ)

end

end A218540.P3341055493264595789

namespace A218540

/-- `A025748(n)/A017913(A052928(n))` -/
def P3341055493264595789.Spec : Prop :=
  ∀ n, P3341055493264595789.a n = (A218540 n : ℚ)

end A218540

/-! ## A218540.P10448955111907166345

`A025748(n)/A127975(A007494(n))`
-/

namespace A218540.P10448955111907166345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025748 n : ℚ) / (A127975 (A007494 n).toNat : ℚ)

end

end A218540.P10448955111907166345

namespace A218540

/-- `A025748(n)/A127975(A007494(n))` -/
def P10448955111907166345.Spec : Prop :=
  ∀ n, P10448955111907166345.a n = (A218540 n : ℚ)

end A218540

/-!
# A218541: First differences of A213715.

The programs for A218541, there is no canonical definition to state claims against.
-/

/-! ## A218541.P148213376166140901

`A213715(n+1)-A213715(n)`
-/

namespace A218541.P148213376166140901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213715 (n + 1) - A213715 n

end

end A218541.P148213376166140901

/-! ## A218541.P13297432404218969188

`Δ[or(1, A179016(n+1))/2]`
-/

namespace A218541.P13297432404218969188
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 1 (A179016 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218541.P13297432404218969188

/-! ## A218541.P11039974502641256940

`Δ[A213715(n)]`
-/

namespace A218541.P11039974502641256940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218541.P11039974502641256940

/-! ## A218541.P424008876903808298

`Δ[A004526(A213730(n))]`
-/

namespace A218541.P424008876903808298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A213730 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218541.P424008876903808298

/-! ## A218541.P16584205375937826044

`Δ[A008619(A179016(n+1))]`
-/

namespace A218541.P16584205375937826044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A179016 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218541.P16584205375937826044

/-! ## A218541.P17069464794612026374

`A213714(A179016(n+1))-A213714(A179016(n))`
-/

namespace A218541.P17069464794612026374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213714 (A179016 (n + 1)).toNat - A213714 (A179016 n).toNat

end

end A218541.P17069464794612026374

/-! ## A218541.P13691190586875663012

`Δ[eq[1, A213719(A005187(n))]]`
-/

namespace A218541.P13691190586875663012
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213719 (A005187 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A218541.P13691190586875663012

/-!
# A218542: Number of times when an even number is encountered, when going from 2^(n+1)-1 to (2^n)-1 using the iterative process described in A071542.

The programs for A218542, there is no canonical definition to state claims against.
-/

/-! ## A218542.P4792308138906355388

`A213709(n)-A218543(n)`
-/

namespace A218542.P4792308138906355388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213709 n - A218543 n

end

end A218542.P4792308138906355388

/-! ## A218542.P18033724039155621713

`A257259(n)+A218543(n)`
-/

namespace A218542.P18033724039155621713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257259 n + A218543 n

end

end A218542.P18033724039155621713

/-! ## A218542.P3090128481241766179

`(A257259(n)+A213709(n))/2`
-/

namespace A218542.P3090128481241766179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257259 n + A213709 n : ℚ) / 2

end

end A218542.P3090128481241766179

/-! ## A218542.P11640549407649712556

`∑[A226060(abs(1-n))]-A218543(n)`
-/

namespace A218542.P11640549407649712556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226060 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A218543 n

end

end A218542.P11640549407649712556

/-! ## A218542.P15289291492889726630

`A218543(n)+Δ[A257805(abs(1-n))]`
-/

namespace A218542.P15289291492889726630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257805 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218543 n + (f1 (n + 1) - f1 n)

end

end A218542.P15289291492889726630

/-!
# A218543: Number of times when an odd number is encountered, when going from 2^(n+1)-1 to (2^n)-1 using the iterative process described in A071542.

The programs for A218543, there is no canonical definition to state claims against.
-/

/-! ## A218543.P12558626023533193983

`A213709(n)-A218542(n)`
-/

namespace A218543.P12558626023533193983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213709 n - A218542 n

end

end A218543.P12558626023533193983

/-! ## A218543.P9884519669800506784

`A218542(n)-A257259(n)`
-/

namespace A218543.P9884519669800506784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218542 n - A257259 n

end

end A218543.P9884519669800506784

/-! ## A218543.P7206966892298728356

`(A213709(n)-A257259(n))/2`
-/

namespace A218543.P7206966892298728356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213709 n - A257259 n : ℚ) / 2

end

end A218543.P7206966892298728356

/-! ## A218543.P16017116034089376705

`∑[A226060(abs(1-n))]-A218542(n)`
-/

namespace A218543.P16017116034089376705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226060 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A218542 n

end

end A218543.P16017116034089376705

/-! ## A218543.P8682106723475818841

`A218542(n)-Δ[A257805(abs(1-n))]`
-/

namespace A218543.P8682106723475818841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257805 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218542 n - (f1 (n + 1) - f1 n)

end

end A218543.P8682106723475818841

/-!
# A218544: a(n) = A218784(n)+1.

The programs for A218544, there is no canonical definition to state claims against.
-/

/-! ## A218544.P14743435416397178717

`1+A218784(n)`
-/

namespace A218544.P14743435416397178717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A218784 n

end

end A218544.P14743435416397178717

/-! ## A218544.P560183837356055056

`A218545(n)+a(n-1)` with `a(0)=1`
-/

namespace A218544.P560183837356055056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A218545 n + a (n - 1)

end

end A218544.P560183837356055056

/-! ## A218544.P472710747731482376

`∑[A218545(A028310(n))]`
-/

namespace A218544.P472710747731482376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218545 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218544.P472710747731482376

/-! ## A218544.P10504094437913088574

`∑[A218545(A000007(n)+n)]`
-/

namespace A218544.P10504094437913088574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218545 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218544.P10504094437913088574

/-! ## A218544.P1468998131412708794

`1--A218784(n)%A166943(n)`
-/

namespace A218544.P1468998131412708794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (-A218784 n) (A166943 n)

end

end A218544.P1468998131412708794

/-! ## A218544.P12108882427570826022

`∑[A218545(n+1)]+1-A218545(n+1)`
-/

namespace A218544.P12108882427570826022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A218545 (n + 1))

end

end A218544.P12108882427570826022

/-! ## A218544.P4461797938854541868

`eq[A026741(A213712(n)), A213712(n)]+1`
-/

namespace A218544.P4461797938854541868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A213712 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213712 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A218544.P4461797938854541868

/-! ## A218544.P1206367206157188542

`2-(A086645(∑[n])-A218784(n))`
-/

namespace A218544.P1206367206157188542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A086645 (∑ j ∈ Finset.range (n + 1), f1 j) - A218784 n)

end

end A218544.P1206367206157188542

/-!
# A218545: First differences of A218784. Lengths of runs in A213728 and A213729.

The programs for A218545, there is no canonical definition to state claims against.
-/

/-! ## A218545.P12342342779016511516

`Δ[A218544(n)]`
-/

namespace A218545.P12342342779016511516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218544 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218545.P12342342779016511516

/-! ## A218545.P4322338697944463395

`Δ[A218784(n)]`
-/

namespace A218545.P4322338697944463395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218784 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218545.P4322338697944463395

/-! ## A218545.P12115742986921172630

`A218544(n+1)-A218544(n)`
-/

namespace A218545.P12115742986921172630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218544 (n + 1) - A218544 n

end

end A218545.P12115742986921172630

/-! ## A218545.P13306589596734860669

`A218784(n+1)-A218784(n)`
-/

namespace A218545.P13306589596734860669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218784 (n + 1) - A218784 n

end

end A218545.P13306589596734860669

/-! ## A218545.P769151164379302813

`A218784(n+1)%A218544(n)+1`
-/

namespace A218545.P769151164379302813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218784 (n + 1)) (A218544 n) + 1

end

end A218545.P769151164379302813

/-!
# A218546: The positions of records in A218545.

The programs for A218546, there is no canonical definition to state claims against.
-/

/-! ## A218546.P3946993291635713533

`record[A132610(3*n)^A152406(n)]`
-/

namespace A218546.P3946993291635713533
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132610 (3 * n) : ℚ) ^ (A152406 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218546.P3946993291635713533

/-!
# A218547: a(n) = A218617(n)+1.

The programs for A218547, there is no canonical definition to state claims against.
-/

/-! ## A218547.P11727636463466363773

`1+A218617(n+1)`
-/

namespace A218547.P11727636463466363773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A218617 (n + 1)

end

end A218547.P11727636463466363773

/-!
# A218548: Positions of records in A213726.

The programs for A218548, there is no canonical definition to state claims against.
-/

/-! ## A218548.P8178471453810509834

`A181940(A006007(n))+A046103(n+1)`
-/

namespace A218548.P8178471453810509834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181940 (A006007 n).toNat + A046103 (n + 1)

end

end A218548.P8178471453810509834

/-!
# A218549: Record values in A213726.

The programs for A218549, there is no canonical definition to state claims against.
-/

/-! ## A218549.P14301002733351485066

`A001057(record[abs(A218618(n))])`
-/

namespace A218549.P14301002733351485066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A218618 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A218549.P14301002733351485066

/-! ## A218549.P14438783175010459430

`lt[A290056(n+3), A252938(A263725(n+2))]`
-/

namespace A218549.P14438783175010459430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290056 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252938 (A263725 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A218549.P14438783175010459430

/-! ## A218549.P436455757471109580

`lt[A324753(n), A330717(A245577(2*n+1))]`
-/

namespace A218549.P436455757471109580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324753 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330717 (A245577 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A218549.P436455757471109580

/-!
# A218551: G.f. satisfies: A(x) = exp( Sum_{n>=1} x^n/n * Product_{k>=1} 1/(1 - x^(n*k)*A(x^k)^n) ).

The programs for A218551, there is no canonical definition to state claims against.
-/

/-! ## A218551.P3476943121330812881

`floor(sqrt((n+2)*A270050(n!+1)/4))`
-/

namespace A218551.P3476943121330812881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (((n + 2 : ℤ) * A270050 (Nat.factorial n + 1) : ℚ) / 4 : ℝ)⌋

end

end A218551.P3476943121330812881

/-! ## A218551.P3257889056218710998

`A024417(A149252(n))`
-/

namespace A218551.P3257889056218710998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A149252 n).toNat

end

end A218551.P3257889056218710998

/-! ## A218551.P14272867745711210094

`∑[A080595(A354412(n))]`
-/

namespace A218551.P14272867745711210094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080595 (A354412 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218551.P14272867745711210094

/-! ## A218551.P10887637895182519138

`A004396(round(root(A118450(n+1), 3)))`
-/

namespace A218551.P10887637895182519138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (SequenceMachineLib.roundAway ((A118450 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat

end

end A218551.P10887637895182519138

/-!
# A218552: G.f. satisfies: A(x) = exp( Sum_{n>=1} x^n/n * Product_{k>=1} (1 + x^(n*k)*A(x^k)^n) ).

The programs for A218552, there is no canonical definition to state claims against.
-/

/-! ## A218552.P1675287951986130978

`A226762(A142586(n))`
-/

namespace A218552.P1675287951986130978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A142586 n).toNat

end

end A218552.P1675287951986130978

/-! ## A218552.P17279424163745036433

`A108586(A003008(n+1))`
-/

namespace A218552.P17279424163745036433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108586 (A003008 (n + 1)).toNat

end

end A218552.P17279424163745036433

/-! ## A218552.P13279140417874130641

`A157271(2*A052806(n))`
-/

namespace A218552.P13279140417874130641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (2 * A052806 n).toNat

end

end A218552.P13279140417874130641

/-! ## A218552.P13998177696705580829

`A001462(A307401(n))+char[8]`
-/

namespace A218552.P13998177696705580829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A307401 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A218552.P13998177696705580829

/-! ## A218552.P11748237598799177928

`A000006(∑[∑[A056273(n)]])-n`
-/

namespace A218552.P11748237598799177928
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056273 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n : ℤ)

end

end A218552.P11748237598799177928

/-!
# A218556: Numbers with d distinct decimal digits (d=1,...,10) such that for each k=1,...,d, some digit occurs exactly k times.

The programs for A218556, there is no canonical definition to state claims against.
-/

/-! ## A218556.P10521246664438837132

`eq[1, A196564(A139337(n))]`
-/

namespace A218556.P10521246664438837132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A139337 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A218556.P10521246664438837132

/-! ## A218556.P13940233106296537912

`eq[1, A010873(A332550(n))]`
-/

namespace A218556.P13940233106296537912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A332550 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A218556.P13940233106296537912

/-! ## A218556.P652594469185107899

`eq[1, A000002(A358497(n))]`
-/

namespace A218556.P652594469185107899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A358497 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A218556.P652594469185107899

/-! ## A218556.P16181302733095051072

`eq[A136522(n), A196368(n)]`
-/

namespace A218556.P16181302733095051072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A218556.P16181302733095051072

/-! ## A218556.P14471585086074101647

`eq[A178788(n), A202022(n)]`
-/

namespace A218556.P14471585086074101647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202022 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A218556.P14471585086074101647

/-! ## A218556.P14090384078933498271

`eq[A202022(n), A307651(n)]`
-/

namespace A218556.P14090384078933498271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202022 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307651 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A218556.P14090384078933498271

/-! ## A218556.P1013039577591470338

`eq[A320485(n), A346511(n)]`
-/

namespace A218556.P1013039577591470338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320485 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346511 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A218556.P1013039577591470338

/-! ## A218556.P11944966953516646837

`∪[A044866(n+1), A050783(n+1)]`
-/

namespace A218556.P11944966953516646837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A218556.P11944966953516646837

/-! ## A218556.P17955296597017564758

`∪[A004893(n+1), A210666(n+1)]`
-/

namespace A218556.P17955296597017564758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A218556.P17955296597017564758

/-! ## A218556.P17656657650811710210

`∪[A004904(n+1), A210666(n+1)]`
-/

namespace A218556.P17656657650811710210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A218556.P17656657650811710210

/-!
# A218557: Smallest prime >= n-th Lucas number.

The programs for A218557, there is no canonical definition to state claims against.
-/

/-! ## A218557.P5640685455899382764

`A151800(round(ϕ^n)-1)`
-/

namespace A218557.P5640685455899382764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.roundAway (Real.goldenRatio ^ n) - 1).toNat

end

end A218557.P5640685455899382764

/-! ## A218557.P5361252917494694851

`p?[A151800(A324015(n))]`
-/

namespace A218557.P5361252917494694851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A324015 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A218557.P5361252917494694851

/-! ## A218557.P17147597096149370709

`p?[A151800(A001612(n)-2)]`
-/

namespace A218557.P17147597096149370709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A001612 n - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A218557.P17147597096149370709

/-! ## A218557.P10641999704232701885

`∑{p}[A151800(A000032(n)-1), #]`
-/

namespace A218557.P10641999704232701885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A000032 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A218557.P10641999704232701885

/-! ## A218557.P17148396979035433794

`A007318(C(n, 2))*A151800(A324015(n))`
-/

namespace A218557.P17148396979035433794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A151800 (A324015 n).toNat

end

end A218557.P17148396979035433794

/-!
# A218558: Next number that is the product of exactly three (not necessarily distinct) primes, after 10*n.

The programs for A218558, there is no canonical definition to state claims against.
-/

/-! ## A218558.P9400656800890468509

`A014612(A072114(10*n)+1)`
-/

namespace A218558.P9400656800890468509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (A072114 (10 * n) + 1).toNat

end

end A218558.P9400656800890468509

/-! ## A218558.P18057479066107900104

`A218643(∑[n+3]+1)`
-/

namespace A218558.P18057479066107900104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218643 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A218558.P18057479066107900104

/-!
# A218561: 4-gap primes: Prime p is a term iff there is no prime between 4*p and 4*nextprime(p), where nextprime=A151800.

The programs for A218561, there is no canonical definition to state claims against.
-/

/-! ## A218561.P7552118622261570328

`filter[A374613(n+1), A296212(#)]`
-/

namespace A218561.P7552118622261570328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296212 (f1 j).toNat = 1) n)

end

end A218561.P7552118622261570328

/-! ## A218561.P16009766246014486281

`filter[A374613(n+1), A353463(#)]`
-/

namespace A218561.P16009766246014486281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353463 (f1 j).toNat = 1) n)

end

end A218561.P16009766246014486281

/-! ## A218561.P15502788030582844053

`∩[A374613(n+1), A087693(n)]`
-/

namespace A218561.P15502788030582844053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087693 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218561.P15502788030582844053

/-! ## A218561.P11736430701850836798

`∩[A001359(n+1), A374613(n+1)]`
-/

namespace A218561.P11736430701850836798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218561.P11736430701850836798

/-! ## A218561.P5407711159299654762

`∩[A001838(n+1), A374613(n+1)]`
-/

namespace A218561.P5407711159299654762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218561.P5407711159299654762

/-!
# A218562: Numbers k such that k^2 + 1 is divisible by a cube.

The programs for A218562, there is no canonical definition to state claims against.
-/

/-! ## A218562.P10071960240153483260

`eq[and(6, A278162(n)), A000007(n)]`
-/

namespace A218562.P10071960240153483260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 6 (A278162 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A218562.P10071960240153483260

/-! ## A218562.P10958355322575020192

`eq[and(6, A278162(n)), A000038(n)]`
-/

namespace A218562.P10958355322575020192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 6 (A278162 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A218562.P10958355322575020192

/-! ## A218562.P6277651619264666676

`eq[and(6, A278162(n)), A103451(n)]`
-/

namespace A218562.P6277651619264666676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 6 (A278162 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A218562.P6277651619264666676

/-! ## A218562.P1331799618900261309

`eq[A320130(n)%2, and(6, A278162(n))]`
-/

namespace A218562.P1331799618900261309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320130 n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 6 (A278162 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A218562.P1331799618900261309

/-! ## A218562.P6191147158262953101

`eq[and(6, A278162(n))+n, A065033(2*n)]`
-/

namespace A218562.P6191147158262953101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 6 (A278162 n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A218562.P6191147158262953101

/-!
# A218563: Numbers n such that n^2 + 1 is divisible by a 4th power.

The programs for A218563, there is no canonical definition to state claims against.
-/

/-! ## A218563.P4896550226276251384

`eq[3, A237835(A278162(n))]`
-/

namespace A218563.P4896550226276251384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237835 (A278162 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A218563.P4896550226276251384

/-!
# A218564: Numbers n such that n^2 + 1 is divisible by a 5th power.

The programs for A218564, there is no canonical definition to state claims against.
-/

/-! ## A218564.P17565270074981965162

`filter[A056102(n+1), A022925(#)]`
-/

namespace A218564.P17565270074981965162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022925 (f1 j).toNat = 1) n)

end

end A218564.P17565270074981965162

/-!
# A218565: Numbers k such that k^2 + 1 is divisible by a 6th power.

The programs for A218565, there is no canonical definition to state claims against.
-/

/-! ## A218565.P3339753017538221157

`A218564(A109839(n+1))`
-/

namespace A218565.P3339753017538221157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218564 (A109839 (n + 1)).toNat

end

end A218565.P3339753017538221157

/-!
# A218566: Triangle T[r,c]=(r-1)*binomial(r-1,c-1)*(c-1)!*A093883(c), read by rows.

The programs for A218566, there is no canonical definition to state claims against.
-/

/-! ## A218566.P9263591078796772172

`A071611(a(n-1))` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2`
-/

namespace A218566.P9263591078796772172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 2] fun n a =>
  A071611 (a (n - 1)).toNat

end

end A218566.P9263591078796772172

/-! ## A218566.P4863337281283728871

`A100948(a(n-2)+lcm(3, a(n-1)))` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A218566.P4863337281283728871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  A100948 (a (n - 2) + (Int.lcm 3 (a (n - 1)) : ℤ)).toNat

end

end A218566.P4863337281283728871

/-!
# A218567: Number of partitions p of n such that max(p)-min(p) = 4.

The programs for A218567, the canonical program `A218567.P2187862195306331309` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218567 has offset 6).

The definition of A218567 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2397 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218567.P2187862195306331309

`A218506(n+6)-A117143(n+6)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A218567

/-- `A218506(n+6)-A117143(n+6)` -/
def P2187862195306331309.Spec : Prop :=
  ∀ n, P2187862195306331309.a n = A218567 (n + 6)

theorem P2187862195306331309.correct : P2187862195306331309.Spec := by
  intro n
  simp only [A218567, Nat.add_sub_cancel]

end A218567

/-! ## A218567.P11549762254022348663

`A116685(A166136(n+3))`
-/

namespace A218567.P11549762254022348663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116685 (A166136 (n + 3)).toNat

end

end A218567.P11549762254022348663

namespace A218567

/-- `A116685(A166136(n+3))` -/
def P11549762254022348663.Spec : Prop :=
  ∀ n, P11549762254022348663.a n = A218567 (n + 6)

end A218567

/-! ## A218567.P1958462001887703948

`A116685(A155212(n)+14)`
-/

namespace A218567.P1958462001887703948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116685 (A155212 n + 14).toNat

end

end A218567.P1958462001887703948

namespace A218567

/-- `A116685(A155212(n)+14)` -/
def P1958462001887703948.Spec : Prop :=
  ∀ n, P1958462001887703948.a n = A218567 (n + 6)

end A218567

/-! ## A218567.P16399974664346693959

`A116685(A056000(n)+16)`
-/

namespace A218567.P16399974664346693959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116685 (A056000 n + 16).toNat

end

end A218567.P16399974664346693959

namespace A218567

/-- `A116685(A056000(n)+16)` -/
def P16399974664346693959.Spec : Prop :=
  ∀ n, P16399974664346693959.a n = A218567 (n + 6)

end A218567

/-! ## A218567.P18081076397346743471

`A116685(A167499(n+3)+1)`
-/

namespace A218567.P18081076397346743471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116685 (A167499 (n + 3) + 1).toNat

end

end A218567.P18081076397346743471

namespace A218567

/-- `A116685(A167499(n+3)+1)` -/
def P18081076397346743471.Spec : Prop :=
  ∀ n, P18081076397346743471.a n = A218567 (n + 6)

end A218567

/-! ## A218567.P4085947947710589144

`A116685(A167614(n+3)+3)`
-/

namespace A218567.P4085947947710589144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116685 (A167614 (n + 3) + 3).toNat

end

end A218567.P4085947947710589144

namespace A218567

/-- `A116685(A167614(n+3)+3)` -/
def P4085947947710589144.Spec : Prop :=
  ∀ n, P4085947947710589144.a n = A218567 (n + 6)

end A218567

/-! ## A218567.P14269753389922693021

`A116685(A133263(n+4)+4)`
-/

namespace A218567.P14269753389922693021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116685 (A133263 (n + 4) + 4).toNat

end

end A218567.P14269753389922693021

namespace A218567

/-- `A116685(A133263(n+4)+4)` -/
def P14269753389922693021.Spec : Prop :=
  ∀ n, P14269753389922693021.a n = A218567 (n + 6)

end A218567

/-! ## A218567.P17715553382923060808

`A116685(A000124(n+4)+5)`
-/

namespace A218567.P17715553382923060808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116685 (A000124 (n + 4) + 5).toNat

end

end A218567.P17715553382923060808

namespace A218567

/-- `A116685(A000124(n+4)+5)` -/
def P17715553382923060808.Spec : Prop :=
  ∀ n, P17715553382923060808.a n = A218567 (n + 6)

end A218567

/-! ## A218567.P1157690717184496373

`A116685(A000217(n+4)+6)`
-/

namespace A218567.P1157690717184496373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116685 (A000217 (n + 4) + 6).toNat

end

end A218567.P1157690717184496373

namespace A218567

/-- `A116685(A000217(n+4)+6)` -/
def P1157690717184496373.Spec : Prop :=
  ∀ n, P1157690717184496373.a n = A218567 (n + 6)

end A218567

/-! ## A218567.P18052877757959743128

`A116685(A000096(n+4)-(n-2))`
-/

namespace A218567.P18052877757959743128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116685 (A000096 (n + 4) - ((n : ℤ) - 2)).toNat

end

end A218567.P18052877757959743128

namespace A218567

/-- `A116685(A000096(n+4)-(n-2))` -/
def P18052877757959743128.Spec : Prop :=
  ∀ n, P18052877757959743128.a n = A218567 (n + 6)

end A218567

/-! ## A218567.P12489925259936766417

`A116685(A005843(n+7)+∑[n+2])`
-/

namespace A218567.P12489925259936766417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116685 (A005843 (n + 7) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A218567.P12489925259936766417

namespace A218567

/-- `A116685(A005843(n+7)+∑[n+2])` -/
def P12489925259936766417.Spec : Prop :=
  ∀ n, P12489925259936766417.a n = A218567 (n + 6)

end A218567

/-! ## A218567.P8979856360814663828

`A116685(A004275(n+8)+∑[n+2])`
-/

namespace A218567.P8979856360814663828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116685 (A004275 (n + 8) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A218567.P8979856360814663828

namespace A218567

/-- `A116685(A004275(n+8)+∑[n+2])` -/
def P8979856360814663828.Spec : Prop :=
  ∀ n, P8979856360814663828.a n = A218567 (n + 6)

end A218567

/-!
# A218568: Number of partitions p of n such that max(p)-min(p) = 5.

The programs for A218568, there is no canonical definition to state claims against.
-/

/-! ## A218568.P11594265535014033480

`A218507(n+7)-A218506(n+7)`
-/

namespace A218568.P11594265535014033480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218507 (n + 7) - A218506 (n + 7)

end

end A218568.P11594265535014033480

/-! ## A218568.P1055800608622722370

`A116685(A167487(n+4))`
-/

namespace A218568.P1055800608622722370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116685 (A167487 (n + 4)).toNat

end

end A218568.P1055800608622722370

/-! ## A218568.P10201320374391940067

`A116685(Δ[A264443(n)]+11)`
-/

namespace A218568.P10201320374391940067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116685 (f1 (n + 1) - f1 n + 11).toNat

end

end A218568.P10201320374391940067

/-! ## A218568.P12389318481959006946

`A116685(A166136(n+4)+1)`
-/

namespace A218568.P12389318481959006946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116685 (A166136 (n + 4) + 1).toNat

end

end A218568.P12389318481959006946

/-! ## A218568.P9729624651884976891

`A116685(A167499(n+4)+2)`
-/

namespace A218568.P9729624651884976891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116685 (A167499 (n + 4) + 2).toNat

end

end A218568.P9729624651884976891

/-! ## A218568.P16435616158070196181

`A116685(A167614(n+4)+4)`
-/

namespace A218568.P16435616158070196181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116685 (A167614 (n + 4) + 4).toNat

end

end A218568.P16435616158070196181

/-! ## A218568.P15397775117290458140

`A116685(A000124(n+5)+6)`
-/

namespace A218568.P15397775117290458140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116685 (A000124 (n + 5) + 6).toNat

end

end A218568.P15397775117290458140

/-! ## A218568.P8296771663063968711

`A116685(A000217(n+5)+7)`
-/

namespace A218568.P8296771663063968711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116685 (A000217 (n + 5) + 7).toNat

end

end A218568.P8296771663063968711

/-! ## A218568.P10215233392456499474

`A116685(Δ[A023545(n+1)]+11)`
-/

namespace A218568.P10215233392456499474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116685 (f1 (n + 1) - f1 n + 11).toNat

end

end A218568.P10215233392456499474

/-! ## A218568.P5937647294774019125

`A116685(A000096(n+5)-(n-2))`
-/

namespace A218568.P5937647294774019125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116685 (A000096 (n + 5) - ((n : ℤ) - 2)).toNat

end

end A218568.P5937647294774019125

/-! ## A218568.P17036388057812890007

`A116685(A055999(n+4)-2*n)`
-/

namespace A218568.P17036388057812890007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116685 (A055999 (n + 4) - (2 * n : ℤ)).toNat

end

end A218568.P17036388057812890007

/-! ## A218568.P4885505488933668370

`A116685(A055998(n+5)-3-2*n)`
-/

namespace A218568.P4885505488933668370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116685 (A055998 (n + 5) - 3 - (2 * n : ℤ)).toNat

end

end A218568.P4885505488933668370

/-!
# A218569: Number of partitions p of n such that max(p)-min(p) = 6.

The programs for A218569, there is no canonical definition to state claims against.
-/

/-! ## A218569.P12102376064779304157

`A218508(n+8)-A218507(n+8)`
-/

namespace A218569.P12102376064779304157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218508 (n + 8) - A218507 (n + 8)

end

end A218569.P12102376064779304157

/-! ## A218569.P61957477064187386

`A116685(C(n+7, 2)+8)`
-/

namespace A218569.P61957477064187386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116685 (Nat.choose (n + 7) 2 + 8)

end

end A218569.P61957477064187386

/-! ## A218569.P5984241963236647007

`A116685(A167487(n+5)+1)`
-/

namespace A218569.P5984241963236647007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116685 (A167487 (n + 5) + 1).toNat

end

end A218569.P5984241963236647007

/-! ## A218569.P14391625295904861409

`A116685(A166136(n+5)+2)`
-/

namespace A218569.P14391625295904861409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116685 (A166136 (n + 5) + 2).toNat

end

end A218569.P14391625295904861409

/-! ## A218569.P15432905141795849881

`A116685(A167499(n+5)+3)`
-/

namespace A218569.P15432905141795849881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116685 (A167499 (n + 5) + 3).toNat

end

end A218569.P15432905141795849881

/-! ## A218569.P9440368209845582610

`A116685(A000124(n+6)+7)`
-/

namespace A218569.P9440368209845582610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116685 (A000124 (n + 6) + 7).toNat

end

end A218569.P9440368209845582610

/-! ## A218569.P15132041783143244571

`A116685(A000096(n+5)+9)`
-/

namespace A218569.P15132041783143244571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116685 (A000096 (n + 5) + 9).toNat

end

end A218569.P15132041783143244571

/-! ## A218569.P9698217424640229489

`A116685(A000217(n+6)+8)`
-/

namespace A218569.P9698217424640229489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116685 (A000217 (n + 6) + 8).toNat

end

end A218569.P9698217424640229489

/-! ## A218569.P13892084887217796131

`A097364(A167487(n+6))`
-/

namespace A218569.P13892084887217796131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097364 (A167487 (n + 6)).toNat

end

end A218569.P13892084887217796131

/-! ## A218569.P5614861846627440107

`A097364(A000096(n+6)+8)`
-/

namespace A218569.P5614861846627440107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097364 (A000096 (n + 6) + 8).toNat

end

end A218569.P5614861846627440107

/-!
# A218570: Number of partitions p of n such that max(p)-min(p) = 7.

The programs for A218570, there is no canonical definition to state claims against.
-/

/-! ## A218570.P592703872920471242

`A218509(n+9)-A218508(n+9)`
-/

namespace A218570.P592703872920471242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218509 (n + 9) - A218508 (n + 9)

end

end A218570.P592703872920471242

/-! ## A218570.P8130534087538947426

`A116685(A167499(n+6)+4)`
-/

namespace A218570.P8130534087538947426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116685 (A167499 (n + 6) + 4).toNat

end

end A218570.P8130534087538947426

/-! ## A218570.P17679641494363064248

`A116685(A000124(n+7)+8)`
-/

namespace A218570.P17679641494363064248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116685 (A000124 (n + 7) + 8).toNat

end

end A218570.P17679641494363064248

/-! ## A218570.P4766622917590553086

`A116685(A000217(n+7)+9)`
-/

namespace A218570.P4766622917590553086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116685 (A000217 (n + 7) + 9).toNat

end

end A218570.P4766622917590553086

/-! ## A218570.P447327706272529106

`A097364(A166136(n+7)+2)`
-/

namespace A218570.P447327706272529106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097364 (A166136 (n + 7) + 2).toNat

end

end A218570.P447327706272529106

/-! ## A218570.P1567403458384682957

`A097364(A000096(n+7)+9)`
-/

namespace A218570.P1567403458384682957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097364 (A000096 (n + 7) + 9).toNat

end

end A218570.P1567403458384682957

/-! ## A218570.P18297895841354437397

`A097364(A000217(n+8)+8)`
-/

namespace A218570.P18297895841354437397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097364 (A000217 (n + 8) + 8).toNat

end

end A218570.P18297895841354437397

/-!
# A218571: Number of partitions p of n such that max(p)-min(p) = 8.

The programs for A218571, there is no canonical definition to state claims against.
-/

/-! ## A218571.P17656695490097073290

`A116685(A000124(n+8)+9)`
-/

namespace A218571.P17656695490097073290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116685 (A000124 (n + 8) + 9).toNat

end

end A218571.P17656695490097073290

/-! ## A218571.P8429037673171229334

`A116685(A000096(n+7)+11)`
-/

namespace A218571.P8429037673171229334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116685 (A000096 (n + 7) + 11).toNat

end

end A218571.P8429037673171229334

/-! ## A218571.P15201725818066004138

`A116685(A000217(n+8)+10)`
-/

namespace A218571.P15201725818066004138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116685 (A000217 (n + 8) + 10).toNat

end

end A218571.P15201725818066004138

/-! ## A218571.P4954157776561235925

`A116685(A161680(n+9)+10)`
-/

namespace A218571.P4954157776561235925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116685 (A161680 (n + 9) + 10).toNat

end

end A218571.P4954157776561235925

/-! ## A218571.P10759226714763202261

`A097364(A000096(n+8)+10)`
-/

namespace A218571.P10759226714763202261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097364 (A000096 (n + 8) + 10).toNat

end

end A218571.P10759226714763202261

/-! ## A218571.P14812501755821347538

`A097364(A000217(n+9)+9)`
-/

namespace A218571.P14812501755821347538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097364 (A000217 (n + 9) + 9).toNat

end

end A218571.P14812501755821347538

/-! ## A218571.P17402775727405956693

`A097364(A052905(n+8)-A004273(n+4))`
-/

namespace A218571.P17402775727405956693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097364 (A052905 (n + 8) - A004273 (n + 4)).toNat

end

end A218571.P17402775727405956693

/-!
# A218572: Number of partitions p of n such that max(p)-min(p) = 9.

The programs for A218572, there is no canonical definition to state claims against.
-/

/-! ## A218572.P2708990091571089085

`A218511(n+11)-A218510(n+11)`
-/

namespace A218572.P2708990091571089085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218511 (n + 11) - A218510 (n + 11)

end

end A218572.P2708990091571089085

/-! ## A218572.P12184090939199205602

`A116685(A000217(n+9)+11)`
-/

namespace A218572.P12184090939199205602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116685 (A000217 (n + 9) + 11).toNat

end

end A218572.P12184090939199205602

/-! ## A218572.P13515198612534880066

`A116685(A056000(n+7)-2*n)`
-/

namespace A218572.P13515198612534880066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116685 (A056000 (n + 7) - (2 * n : ℤ)).toNat

end

end A218572.P13515198612534880066

/-! ## A218572.P15702695148117147605

`A097364(A000124(n+10)+9)`
-/

namespace A218572.P15702695148117147605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097364 (A000124 (n + 10) + 9).toNat

end

end A218572.P15702695148117147605

/-! ## A218572.P16128057154575328162

`A097364(A000217(n+10)+10)`
-/

namespace A218572.P16128057154575328162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097364 (A000217 (n + 10) + 10).toNat

end

end A218572.P16128057154575328162

/-! ## A218572.P7632898438880310210

`A097364(A167614(n+10)-(n+4))`
-/

namespace A218572.P7632898438880310210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097364 (A167614 (n + 10) - (n + 4 : ℤ)).toNat

end

end A218572.P7632898438880310210

/-!
# A218573: Number of partitions p of n such that max(p) - min(p) = 10.

The programs for A218573, there is no canonical definition to state claims against.
-/

/-! ## A218573.P12503720167932907337

`A116685(A000217(n+10)+12)`
-/

namespace A218573.P12503720167932907337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116685 (A000217 (n + 10) + 12).toNat

end

end A218573.P12503720167932907337

/-! ## A218573.P9382829489211704594

`A097364(A000217(n+11)+11)`
-/

namespace A218573.P9382829489211704594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097364 (A000217 (n + 11) + 11).toNat

end

end A218573.P9382829489211704594

/-! ## A218573.P18015154991383848149

`A218572(n)+A102683(Δ[A008862(n)])`
-/

namespace A218573.P18015154991383848149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218572 (n + 11) + A102683 (f1 (n + 1) - f1 n).toNat

end

end A218573.P18015154991383848149

/-! ## A218573.P11236916957714715879

`A218572(n)+A102683(∑[2^n])`
-/

namespace A218573.P11236916957714715879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218572 (n + 11) + A102683 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A218573.P11236916957714715879

/-! ## A218573.P9858329547771335402

`A218572(n)+A179801(A089408(n))`
-/

namespace A218573.P9858329547771335402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218572 (n + 11) + A179801 (A089408 n).toNat

end

end A218573.P9858329547771335402

/-!
# A218575: G.f.: exp( Sum_{n>=1} x^n/n * Product_{k>=1} 1/(1 - x^(n*k)*(1 + x^k)^n) ).

The programs for A218575, there is no canonical definition to state claims against.
-/

/-! ## A218575.P3708406248709302369

`A280951(∑[n]+n²+1)`
-/

namespace A218575.P3708406248709302369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280951 (∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2 + 1)

end

end A218575.P3708406248709302369

/-! ## A218575.P14106039146547822880

`A105223(A084781(n+1))`
-/

namespace A218575.P14106039146547822880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105223 (A084781 (n + 1)).toNat

end

end A218575.P14106039146547822880

/-! ## A218575.P5217273724223196324

`A321578(A378255(n+1))`
-/

namespace A218575.P5217273724223196324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321578 (A378255 (n + 1)).toNat

end

end A218575.P5217273724223196324

/-! ## A218575.P12590702722363494110

`A297618(n+1)-A052146(A071755(n+1))`
-/

namespace A218575.P12590702722363494110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297618 (n + 1) - A052146 (A071755 (n + 1)).toNat

end

end A218575.P12590702722363494110

/-!
# A218576: G.f.: exp( Sum_{n>=1} x^n/n * Product_{k>=1} (1 + x^(n*k)*(1 + x^k)^n) ).

The programs for A218576, there is no canonical definition to state claims against.
-/

/-! ## A218576.P12711235541373157474

`A003056(∑[ceil(3^(n-1))]-A007179(n))`
-/

namespace A218576.P12711235541373157474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j - A007179 n).toNat

end

end A218576.P12711235541373157474

/-! ## A218576.P16979213734621790083

`A003056(A115098(n)-A026731(n))`
-/

namespace A218576.P16979213734621790083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A115098 n - A026731 n).toNat

end

end A218576.P16979213734621790083

/-! ## A218576.P15146824961947471154

`A003056(A115098(n))-A008616(n+3)`
-/

namespace A218576.P15146824961947471154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A115098 n).toNat - A008616 (n + 3)

end

end A218576.P15146824961947471154

/-! ## A218576.P12373010695193444853

`A003056(A002260(n+1))+A003056(A056279(n+1))`
-/

namespace A218576.P12373010695193444853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A002260 (n + 1)).toNat + A003056 (A056279 (n + 1)).toNat

end

end A218576.P12373010695193444853

/-! ## A218576.P2419547581409534838

`A024890(3^n+∑[char[∑[n]]]+2)`
-/

namespace A218576.P2419547581409534838
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024890 (3 ^ n + (∑ j ∈ Finset.range (n + 1), f1 j + 2))

end

end A218576.P2419547581409534838

/-!
# A218577: Triangle read by rows: T(n,k) is the number of ascent sequences of length n with maximal element k-1.

The programs for A218577, there is no canonical definition to state claims against.
-/

/-! ## A218577.P5720102423038711065

`or(A008277(n+1), A010059(32*n²))`
-/

namespace A218577.P5720102423038711065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008277 (n + 1)) (A010059 (32 * n ^ 2))

end

end A218577.P5720102423038711065

/-! ## A218577.P7690414461782613847

`or(A008277(n+1), A373474(ceil(2^(n-1))))`
-/

namespace A218577.P7690414461782613847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008277 (n + 1)) (A373474 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat)

end

end A218577.P7690414461782613847

/-! ## A218577.P17389690260254636973

`A025465(A007053(n))+A008277(n+1)`
-/

namespace A218577.P17389690260254636973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025465 (A007053 n).toNat + A008277 (n + 1)

end

end A218577.P17389690260254636973

/-! ## A218577.P6797986877542711030

`A055641(A017990(n))+A008277(n+1)`
-/

namespace A218577.P6797986877542711030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A017990 n).toNat + A008277 (n + 1)

end

end A218577.P6797986877542711030

/-! ## A218577.P15812993969752368811

`A079260(A003242(n))+A008277(n+1)`
-/

namespace A218577.P15812993969752368811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079260 (A003242 n).toNat + A008277 (n + 1)

end

end A218577.P15812993969752368811

/-!
# A218578: The number of times n occurs in A095972.

The programs for A218578, there is no canonical definition to state claims against.
-/

/-! ## A218578.P875585520066560490

`val(A081913(3*n+2)%A117779(2*(n+2)), 2)`
-/

namespace A218578.P875585520066560490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.tmod (A081913 (3 * n + 2)) (A117779 (2 * (n + 2)))).toNat 2

end

end A218578.P875585520066560490

/-! ## A218578.P9956513992181026990

`A344299(3*(n+1))+A188031(A136367(n+1))`
-/

namespace A218578.P9956513992181026990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344299 (3 * (n + 1)) + A188031 (A136367 (n + 1)).toNat

end

end A218578.P9956513992181026990

/-!
# A218579: Triangle read by rows: T(n,k) is the number of ascent sequences of length n with last zero at position k-1.

The programs for A218579, there is no canonical definition to state claims against.
-/

/-! ## A218579.P15692714980047547105

`A095149(n)-A016389(A180652(n))`
-/

namespace A218579.P15692714980047547105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 n - A016389 (A180652 n).toNat

end

end A218579.P15692714980047547105

/-! ## A218579.P2558960421800680834

`A095149(n)+A011727(A201888(n+1))`
-/

namespace A218579.P2558960421800680834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 n + A011727 (A201888 (n + 1)).toNat

end

end A218579.P2558960421800680834

/-! ## A218579.P15376226297161431527

`A096904(A207885(n+1))+A095149(n)`
-/

namespace A218579.P15376226297161431527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096904 (A207885 (n + 1)).toNat + A095149 n

end

end A218579.P15376226297161431527

/-! ## A218579.P9464711354523651066

`A101605(A239047(n+1))+A095149(n)`
-/

namespace A218579.P9464711354523651066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (A239047 (n + 1)).toNat + A095149 n

end

end A218579.P9464711354523651066

/-! ## A218579.P3996663134393782506

`A101637(A331606(n+1))+A095149(n)`
-/

namespace A218579.P3996663134393782506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (A331606 (n + 1)).toNat + A095149 n

end

end A218579.P3996663134393782506

/-!
# A218580: Triangle read by rows: T(n,k) is the number of ascent sequences of length n with first occurrence of the maximal value at position k-1.

The programs for A218580, there is no canonical definition to state claims against.
-/

/-! ## A218580.P632016777755455352

`A113547(n+1)+and(1, A113561(n+1))`
-/

namespace A218580.P632016777755455352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113547 (n + 1) + Int.land 1 (A113561 (n + 1))

end

end A218580.P632016777755455352

/-! ## A218580.P16827838020951470905

`A185236(A122890(n))+A113547(n+1)`
-/

namespace A218580.P16827838020951470905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185236 (A122890 n).toNat + A113547 (n + 1)

end

end A218580.P16827838020951470905

/-! ## A218580.P3537956963457544262

`A113547(n+1)+A010894(A334437(n))`
-/

namespace A218580.P3537956963457544262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113547 (n + 1) + A010894 ((A334437 n).toNat + 21)

end

end A218580.P3537956963457544262

/-! ## A218580.P10768482340417540562

`A113547(n+1)+A010894(A255509(n+1))`
-/

namespace A218580.P10768482340417540562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113547 (n + 1) + A010894 ((A255509 (n + 1)).toNat + 21)

end

end A218580.P10768482340417540562

/-! ## A218580.P11039253699326737910

`A113547(n+1)+A010815(A007629(n+1))`
-/

namespace A218580.P11039253699326737910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113547 (n + 1) + A010815 (A007629 (n + 1)).toNat

end

end A218580.P11039253699326737910

/-!
# A218581: Triangle read by rows: T(n,k) is the number of ascent sequences of length n with last occurrence of the maximal value at position k-1.

The programs for A218581, there is no canonical definition to state claims against.
-/

/-! ## A218581.P6298536114537793057

`A271466(n+1)+A067169(A271466(n+1))`
-/

namespace A218581.P6298536114537793057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (n + 1) + A067169 ((A271466 (n + 1)).toNat + 11)

end

end A218581.P6298536114537793057

/-! ## A218581.P2496724708810396679

`A271466(n+1)+A185236(A122890(n))`
-/

namespace A218581.P2496724708810396679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (n + 1) + A185236 (A122890 n).toNat

end

end A218581.P2496724708810396679

/-! ## A218581.P2782601549045966078

`A271466(n+1)+A010894(A334437(n))`
-/

namespace A218581.P2782601549045966078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (n + 1) + A010894 ((A334437 n).toNat + 21)

end

end A218581.P2782601549045966078

/-! ## A218581.P15257418799233886715

`A368413(A033638(n))+A271466(n+1)`
-/

namespace A218581.P15257418799233886715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368413 (A033638 n).toNat + A271466 (n + 1)

end

end A218581.P15257418799233886715

/-! ## A218581.P3344596718795343547

`or(A011738(A001590(n)), A271466(n+1))`
-/

namespace A218581.P3344596718795343547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011738 (A001590 n).toNat) (A271466 (n + 1))

end

end A218581.P3344596718795343547

/-!
# A218582: Primes which do not divide any Mersenne number M(p) = 2^p - 1 with prime p.

The programs for A218582, there is no canonical definition to state claims against.
-/

/-! ## A218582.P11951773721957340311

`p?[A065091(n+1)-A010051(A014664(n+2))]`
-/

namespace A218582.P11951773721957340311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A010051 (A014664 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A218582.P11951773721957340311

/-! ## A218582.P5260305297030085228

`p?[A005843(n)+A005171(A002326(n))]`
-/

namespace A218582.P5260305297030085228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A005171 (A002326 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A218582.P5260305297030085228

/-! ## A218582.P1138329098986127393

`p?[A005408(n)-A010051(A002326(n))]`
-/

namespace A218582.P1138329098986127393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - A010051 (A002326 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A218582.P1138329098986127393

/-! ## A218582.P16344918775058461990

`p?[A085090(n+1)-A080339(A002326(n))]`
-/

namespace A218582.P16344918775058461990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085090 (n + 1) - A080339 (A002326 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A218582.P16344918775058461990

/-! ## A218582.P13525126449750760696

`p?[(n+1)*A005171(A007733(n+1))]`
-/

namespace A218582.P13525126449750760696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005171 (A007733 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A218582.P13525126449750760696

/-! ## A218582.P4302710976872059049

`p?[A061397(n+1)+A010051(A007733(n+1))]`
-/

namespace A218582.P4302710976872059049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1) + A010051 (A007733 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A218582.P4302710976872059049

/-!
# A218584: Numbers n such that 2^A000010(n*x) == 1 (mod (n*x)^2), where x = 3837523 is the product of the first 2 Wieferich primes 1093 and 3511.

The programs for A218584, there is no canonical definition to state claims against.
-/

/-! ## A218584.P14130281643592520872

`eq[and(1, n), A007376(A039755(n))]`
-/

namespace A218584.P14130281643592520872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A039755 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A218584.P14130281643592520872

/-! ## A218584.P10918715103146845597

`eq[A000035(n), A007376(A039755(n))]`
-/

namespace A218584.P10918715103146845597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A039755 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A218584.P10918715103146845597

/-! ## A218584.P1239129427884064507

`eq[A000035(n), A004718(A091351(n))]`
-/

namespace A218584.P1239129427884064507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A091351 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A218584.P1239129427884064507

/-! ## A218584.P11385043527665625558

`or(A170978(A000217(n)), A174572(n+1))`
-/

namespace A218584.P11385043527665625558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A170978 (A000217 n).toNat) (A174572 (n + 1))

end

end A218584.P11385043527665625558

/-! ## A218584.P16894864535654300620

`lt[A046816(A008277(n+1)), A091090(n+2)]`
-/

namespace A218584.P16894864535654300620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046816 (A008277 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A218584.P16894864535654300620

/-!
# A218585: Number of ways to write n as x+y with 0

The programs for A218585, there is no canonical definition to state claims against.
-/

/-! ## A218585.P4595837992503844989

`A077267((n+1)*A037399(n+2))`
-/

namespace A218585.P4595837992503844989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 ((n + 1 : ℤ) * A037399 (n + 2)).toNat

end

end A218585.P4595837992503844989

/-! ## A218585.P8734668618566604323

`A077267(A037399(n+2)*A348553(n))`
-/

namespace A218585.P8734668618566604323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (A037399 (n + 2) * A348553 n).toNat

end

end A218585.P8734668618566604323

/-! ## A218585.P9778025922234749403

`A077267((n+1)*A127839(4*n+1))`
-/

namespace A218585.P9778025922234749403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 ((n + 1 : ℤ) * A127839 (4 * n + 1)).toNat

end

end A218585.P9778025922234749403

/-! ## A218585.P15022483865098719306

`A325511(A083487(n+5))%A001918(n+1)`
-/

namespace A218585.P15022483865098719306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325511 (A083487 (n + 5)).toNat) (A001918 (n + 1))

end

end A218585.P15022483865098719306

/-! ## A218585.P11376227152342135514

`A193929(A075221(n+1))-A001221(A053000(n))`
-/

namespace A218585.P11376227152342135514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 (A075221 (n + 1)).toNat - A001221 (A053000 n).toNat

end

end A218585.P11376227152342135514

/-!
# A218586: Hilltop maps: number of n X n binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or antidiagonal neighbor in a random 0..2 n X n array.

The programs for A218586, there is no canonical definition to state claims against.
-/

/-! ## A218586.P10044905747837622940

`A218592(∑[4*n]+1)`
-/

namespace A218586.P10044905747837622940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A218586.P10044905747837622940

/-! ## A218586.P7547587230009264637

`or(1, A218592(A001844(n)))`
-/

namespace A218586.P7547587230009264637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A218592 (A001844 n).toNat)

end

end A218586.P7547587230009264637

/-! ## A218586.P13124559880126168102

`A218592(∑[A008574(n)])+C(n, 64)`
-/

namespace A218586.P13124559880126168102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (Nat.choose n 64 : ℤ)

end

end A218586.P13124559880126168102

/-! ## A218586.P12160515803900782839

`gcd(A000038(n), A218592(A001844(n)))`
-/

namespace A218586.P12160515803900782839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A218592 (A001844 n).toNat)

end

end A218586.P12160515803900782839

/-! ## A218586.P10902638688815076697

`A033999(n)²*A218592(∑[A008574(n)])`
-/

namespace A218586.P10902638688815076697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A218592 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A218586.P10902638688815076697

/-!
# A218587: Hilltop maps: number of n X 3 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or antidiagonal neighbor in a random 0..2 n X 3 array.

The programs for A218587, there is no canonical definition to state claims against.
-/

/-! ## A218587.P8421582892603031945

`A218592(∑[n+3]+1)`
-/

namespace A218587.P8421582892603031945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A218587.P8421582892603031945

/-! ## A218587.P13080748335057379584

`A218592(A186752(n+4))+A025443(n)`
-/

namespace A218587.P13080748335057379584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (A186752 (n + 4)).toNat + A025443 n

end

end A218587.P13080748335057379584

/-! ## A218587.P5767360147316144904

`A218592(A034856(n+2))%A218588(n+1)`
-/

namespace A218587.P5767360147316144904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218592 (A034856 (n + 2)).toNat) (A218588 (n + 1))

end

end A218587.P5767360147316144904

/-!
# A218588: Hilltop maps: number of nX4 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or antidiagonal neighbor in a random 0..2 nX4 array.

The programs for A218588, there is no canonical definition to state claims against.
-/

/-! ## A218588.P12007131919541980199

`A218592(A141214(n+1))`
-/

namespace A218588.P12007131919541980199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (A141214 (n + 1)).toNat

end

end A218588.P12007131919541980199

/-! ## A218588.P12460979803945587915

`A218592(A056000(n)+7)`
-/

namespace A218588.P12460979803945587915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (A056000 n + 7).toNat

end

end A218588.P12460979803945587915

/-! ## A218588.P591066344565730268

`A218592(eq[3, A193592(n)])`
-/

namespace A218588.P591066344565730268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218588.P591066344565730268

/-! ## A218588.P18360648530007873137

`A218592(Δ[A006416(n+2)])`
-/

namespace A218588.P18360648530007873137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (f1 (n + 1) - f1 n).toNat

end

end A218588.P18360648530007873137

/-! ## A218588.P11239724975008620510

`A218592(A052905(n+1)+2)`
-/

namespace A218588.P11239724975008620510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (A052905 (n + 1) + 2).toNat

end

end A218588.P11239724975008620510

/-!
# A218589: Hilltop maps: number of nX5 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or antidiagonal neighbor in a random 0..2 nX5 array.

The programs for A218589, there is no canonical definition to state claims against.
-/

/-! ## A218589.P14173830472533898569

`A218592(Δ[A264443(n)])`
-/

namespace A218589.P14173830472533898569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (f1 (n + 1) - f1 n).toNat

end

end A218589.P14173830472533898569

/-! ## A218589.P7196495237079002665

`A218592(A046691(n+3))`
-/

namespace A218589.P7196495237079002665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (A046691 (n + 3)).toNat

end

end A218589.P7196495237079002665

/-! ## A218589.P9745083027470186635

`A218592(A056115(n)+11)`
-/

namespace A218589.P9745083027470186635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (A056115 n + 11).toNat

end

end A218589.P9745083027470186635

/-! ## A218589.P9149241641371806358

`A218592(eq[4, A193592(n)])`
-/

namespace A218589.P9149241641371806358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218589.P9149241641371806358

/-! ## A218589.P11996595153142164585

`A218592(Δ[A023545(n+1)])`
-/

namespace A218589.P11996595153142164585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (f1 (n + 1) - f1 n).toNat

end

end A218589.P11996595153142164585

/-!
# A218590: Hilltop maps: number of nX6 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or antidiagonal neighbor in a random 0..2 nX6 array.

The programs for A218590, there is no canonical definition to state claims against.
-/

/-! ## A218590.P3628406763931319596

`A218592(eq[3, A219347(n)])`
-/

namespace A218590.P3628406763931319596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218590.P3628406763931319596

/-! ## A218590.P5132886087965678604

`A218592(eq[5, A193592(n)])`
-/

namespace A218590.P5132886087965678604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218590.P5132886087965678604

/-! ## A218590.P1069238286125097504

`A218592(eq[6, A200370(n+1)])`
-/

namespace A218590.P1069238286125097504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218590.P1069238286125097504

/-! ## A218590.P9559250248155028816

`A218592(eq[8, A185782(n+1)])`
-/

namespace A218590.P9559250248155028816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218590.P9559250248155028816

/-! ## A218590.P2084554465657205628

`A218592(eq[16, A057728(n+1)])`
-/

namespace A218590.P2084554465657205628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218590.P2084554465657205628

/-!
# A218591: Hilltop maps: number of nX7 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or antidiagonal neighbor in a random 0..2 nX7 array.

The programs for A218591, there is no canonical definition to state claims against.
-/

/-! ## A218591.P4821827755828863175

`A218592(eq[4, A219347(n)])`
-/

namespace A218591.P4821827755828863175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218591.P4821827755828863175

/-! ## A218591.P17428611747101846266

`A218592(eq[6, A193592(n)])`
-/

namespace A218591.P17428611747101846266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218591.P17428611747101846266

/-! ## A218591.P8629546980044757829

`A218592(eq[7, A200370(n+1)])`
-/

namespace A218591.P8629546980044757829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218591.P8629546980044757829

/-! ## A218591.P15844242716869062960

`A218592(eq[10, A185782(n+1)])`
-/

namespace A218591.P15844242716869062960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218591.P15844242716869062960

/-! ## A218591.P15579549718679451043

`A218592(eq[32, A057728(n+1)])`
-/

namespace A218591.P15579549718679451043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218591.P15579549718679451043

/-!
# A218593: Hilltop maps: number of 2Xn binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or antidiagonal neighbor in a random 0..2 2Xn array.

The programs for A218593, there is no canonical definition to state claims against.
-/

/-! ## A218593.P15336893372390971891

`A218592(∑[n+1]+2)`
-/

namespace A218593.P15336893372390971891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A218593.P15336893372390971891

/-! ## A218593.P164105780375648150

`record[ratio[A218592(A080036(n))]]`
-/

namespace A218593.P164105780375648150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (A080036 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218593.P164105780375648150

/-! ## A218593.P6828276222026784642

`record[C(A218592(n+1), A278074(n))]`
-/

namespace A218593.P6828276222026784642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A218592 (n + 1)).toNat (A278074 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218593.P6828276222026784642

/-! ## A218593.P9722937401687665635

`record[gcd(A211318(n+1), A218592(n+2))]`
-/

namespace A218593.P9722937401687665635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A211318 (n + 1)) (A218592 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218593.P9722937401687665635

/-! ## A218593.P905085245223549316

`record[gcd(A086800(n+1), A218592(n+3))]`
-/

namespace A218593.P905085245223549316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A086800 (n + 1)) (A218592 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218593.P905085245223549316

/-!
# A218594: Hilltop maps: number of 3 X n binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or antidiagonal neighbor in a random 0..2 3 X n array.

The programs for A218594, there is no canonical definition to state claims against.
-/

/-! ## A218594.P15244605155552308871

`A218592(∑[n+2]+4)`
-/

namespace A218594.P15244605155552308871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A218594.P15244605155552308871

/-! ## A218594.P15242647607539669546

`or(1, A218592(A167614(n+1)))`
-/

namespace A218594.P15242647607539669546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A218592 (A167614 (n + 1)).toNat)

end

end A218594.P15242647607539669546

/-! ## A218594.P12725138747198601276

`A218592(A167614(n+1))+A185284(n)`
-/

namespace A218594.P12725138747198601276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (A167614 (n + 1)).toNat + A185284 n

end

end A218594.P12725138747198601276

/-! ## A218594.P5068265549197410155

`A218592(A167614(n+1))^A178334(n)`
-/

namespace A218594.P5068265549197410155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218592 (A167614 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A218594.P5068265549197410155

/-! ## A218594.P933929103122928964

`A218592(A167614(n+1))%A016892(n)`
-/

namespace A218594.P933929103122928964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218592 (A167614 (n + 1)).toNat) (A016892 n)

end

end A218594.P933929103122928964

/-!
# A218595: Hilltop maps: number of 4Xn binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or antidiagonal neighbor in a random 0..2 4Xn array.

The programs for A218595, there is no canonical definition to state claims against.
-/

/-! ## A218595.P11475341870104980585

`A218592(A141214(n)+7)`
-/

namespace A218595.P11475341870104980585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (A141214 n + 7).toNat

end

end A218595.P11475341870104980585

/-! ## A218595.P10467742902706550323

`A218592(A052905(n)+9)`
-/

namespace A218595.P10467742902706550323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (A052905 n + 9).toNat

end

end A218595.P10467742902706550323

/-! ## A218595.P16844586709415188565

`A218592(A055999(n)+10)`
-/

namespace A218595.P16844586709415188565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (A055999 n + 10).toNat

end

end A218595.P16844586709415188565

/-! ## A218595.P14011851609174168782

`A218592(A167614(n+2)+1)`
-/

namespace A218595.P14011851609174168782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (A167614 (n + 2) + 1).toNat

end

end A218595.P14011851609174168782

/-! ## A218595.P4708785489094399447

`A218592(eq[3, A002262(n)]+1)`
-/

namespace A218595.P4708785489094399447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A218595.P4708785489094399447

/-!
# A218596: Hilltop maps: number of 5Xn binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or antidiagonal neighbor in a random 0..2 5Xn array.

The programs for A218596, there is no canonical definition to state claims against.
-/

/-! ## A218596.P3504069212222352709

`A218592(A167499(n+3))`
-/

namespace A218596.P3504069212222352709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (A167499 (n + 3)).toNat

end

end A218596.P3504069212222352709

/-! ## A218596.P444212656696688843

`A218592(eq[7, A066657(n)])`
-/

namespace A218596.P444212656696688843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218596.P444212656696688843

/-! ## A218596.P14590909571353752679

`A218592(A000096(n+3)+6)`
-/

namespace A218596.P14590909571353752679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (A000096 (n + 3) + 6).toNat

end

end A218596.P14590909571353752679

/-! ## A218596.P7671552069942989250

`A218592(eq[6, A131818(n+1)])`
-/

namespace A218596.P7671552069942989250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218596.P7671552069942989250

/-! ## A218596.P8200104092594508540

`A218592(eq[9, A158405(n+1)]+1)`
-/

namespace A218596.P8200104092594508540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A218596.P8200104092594508540

/-!
# A218597: Hilltop maps: number of 6Xn binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or antidiagonal neighbor in a random 0..2 6Xn array.

The programs for A218597, there is no canonical definition to state claims against.
-/

/-! ## A218597.P4190822893374012628

`A218592(eq[6, A130270(n+1)])`
-/

namespace A218597.P4190822893374012628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218597.P4190822893374012628

/-! ## A218597.P4757074430789070651

`A218592(eq[7, A131818(n+1)])`
-/

namespace A218597.P4757074430789070651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218597.P4757074430789070651

/-! ## A218597.P8887597474185984865

`A218592(Δ[A023545(n+1)]+10)`
-/

namespace A218597.P8887597474185984865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (f1 (n + 1) - f1 n + 10).toNat

end

end A218597.P8887597474185984865

/-! ## A218597.P4700908580211700783

`A218592(A034856(n+5)-(n-2))`
-/

namespace A218597.P4700908580211700783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (A034856 (n + 5) - ((n : ℤ) - 2)).toNat

end

end A218597.P4700908580211700783

/-! ## A218597.P14798141103133163547

`A218592(eq[9, A158405(n+1)]+n+7)`
-/

namespace A218597.P14798141103133163547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (n + 7))

end

end A218597.P14798141103133163547

/-!
# A218598: Hilltop maps: number of 7Xn binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or antidiagonal neighbor in a random 0..2 7Xn array.

The programs for A218598, there is no canonical definition to state claims against.
-/

/-! ## A218598.P15226141004291263141

`A218592(eq[11, A066657(n)])`
-/

namespace A218598.P15226141004291263141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218598.P15226141004291263141

/-! ## A218598.P12171229916929042674

`A218592(A167499(n+5)+2)`
-/

namespace A218598.P12171229916929042674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (A167499 (n + 5) + 2).toNat

end

end A218598.P12171229916929042674

/-! ## A218598.P12843110804765667578

`A218592(A000217(n+6)+7)`
-/

namespace A218598.P12843110804765667578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (A000217 (n + 6) + 7).toNat

end

end A218598.P12843110804765667578

/-! ## A218598.P16793516399259647692

`A218592(A141214(n+3)+10)`
-/

namespace A218598.P16793516399259647692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (A141214 (n + 3) + 10).toNat

end

end A218598.P16793516399259647692

/-! ## A218598.P2325611099278869342

`A218592(eq[8, A131818(n+1)])`
-/

namespace A218598.P2325611099278869342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218592 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218598.P2325611099278869342

/-!
# A218599: After the first zero, integers from A213709(n)-1 to 0 followed by integers from A213709(n+1)-1 to 0, etc.

The programs for A218599, there is no canonical definition to state claims against.
-/

/-! ## A218599.P7011879157996841970

`A218600(A213711(n))-n`
-/

namespace A218599.P7011879157996841970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218600 (A213711 n).toNat - (n : ℤ)

end

end A218599.P7011879157996841970

/-! ## A218599.P11963834561904331502

`A218601(A218602(n))`
-/

namespace A218599.P11963834561904331502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218601 (A218602 n).toNat

end

end A218599.P11963834561904331502

/-! ## A218599.P7036696954525859805

`A218601(A071542(A218616(n)))`
-/

namespace A218599.P7036696954525859805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218601 (A071542 (A218616 n).toNat).toNat

end

end A218599.P7036696954525859805

/-! ## A218599.P6276043333319696666

`(A213710(A213711(n))%A213717(n+1))%(n+1)`
-/

namespace A218599.P6276043333319696666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A213710 (A213711 n).toNat) (A213717 (n + 1))) (n + 1 : ℤ)

end

end A218599.P6276043333319696666

/-! ## A218599.P16587101541934243395

`A218600(A213711(n))%A065033(2*n)`
-/

namespace A218599.P16587101541934243395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218600 (A213711 n).toNat) (A065033 (2 * n))

end

end A218599.P16587101541934243395

/-! ## A218599.P16096158236179231236

`A213710(A213711(n))-A127648(A000096(n))`
-/

namespace A218599.P16096158236179231236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213710 (A213711 n).toNat - A127648 (A000096 n).toNat

end

end A218599.P16096158236179231236

