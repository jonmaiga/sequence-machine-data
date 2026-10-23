import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C010
import Seq.B000.C014
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C030
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C011
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C021
import Seq.Opaque.C024

/-!
# A011245: a(n) = (n+1)*(2*n+1)*(3*n+1)*(4*n+1).

The programs for A011245, the canonical program `A011245.P9498667021958090682` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011245 has offset 0).

The definition of A011245 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(2*n+1)*(3*n+1)*(4*n+1)` (program `A011245.P9498667021958090682`, by `A011245.P9498667021958090682.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011245.P9498667021958090682

`(n+1)*(2*n+1)*(3*n+1)*(4*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011245

/-- `(n+1)*(2*n+1)*(3*n+1)*(4*n+1)` -/
def P9498667021958090682.Spec : Prop :=
  ∀ n, (P9498667021958090682.a n : ℤ) = A011245 n

theorem P9498667021958090682.correct : P9498667021958090682.Spec := by
  intro n
  simp only [A011245]

end A011245

/-! ## A011245.P4153340875133743897

`A062786(n+1)²-n^4`
-/

namespace A011245.P4153340875133743897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062786 (n + 1) ^ 2 - (n ^ 4 : ℤ)

end

end A011245.P4153340875133743897

namespace A011245

/-- `A062786(n+1)²-n^4` -/
def P4153340875133743897.Spec : Prop :=
  ∀ n, P4153340875133743897.a n = A011245 n

end A011245

/-! ## A011245.P13318353400552814455

`lcm(A011199(n), A079588(n))`
-/

namespace A011245.P13318353400552814455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011199 n) (A079588 n)

end

end A011245.P13318353400552814455

namespace A011245

/-- `lcm(A011199(n), A079588(n))` -/
def P13318353400552814455.Spec : Prop :=
  ∀ n, (P13318353400552814455.a n : ℤ) = A011245 n

end A011245

/-! ## A011245.P3206422367223750838

`A092182(n+1)-A008911(n)`
-/

namespace A011245.P3206422367223750838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092182 (n + 1) - A008911 n

end

end A011245.P3206422367223750838

namespace A011245

/-- `A092182(n+1)-A008911(n)` -/
def P3206422367223750838.Spec : Prop :=
  ∀ n, P3206422367223750838.a n = A011245 n

end A011245

/-! ## A011245.P4026824664755446096

`A016862(A002378(n))-A000583(n)`
-/

namespace A011245.P4026824664755446096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016862 (A002378 n).toNat - A000583 n

end

end A011245.P4026824664755446096

namespace A011245

/-- `A016862(A002378(n))-A000583(n)` -/
def P4026824664755446096.Spec : Prop :=
  ∀ n, P4026824664755446096.a n = A011245 n

end A011245

/-! ## A011245.P11023599665279543777

`A142589(A000217(n+4)+n)`
-/

namespace A011245.P11023599665279543777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142589 (A000217 (n + 4) + (n : ℤ)).toNat

end

end A011245.P11023599665279543777

namespace A011245

/-- `A142589(A000217(n+4)+n)` -/
def P11023599665279543777.Spec : Prop :=
  ∀ n, P11023599665279543777.a n = A011245 n

end A011245

/-!
# A011248: Twice A000364.

The programs for A011248, there is no canonical definition to state claims against.
-/

/-! ## A011248.P3473838635483283871

`2*A000364(n)`
-/

namespace A011248.P3473838635483283871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000364 n

end

end A011248.P3473838635483283871

/-! ## A011248.P15241837278001430146

`A260786(2*n)`
-/

namespace A011248.P15241837278001430146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260786 (2 * n)

end

end A011248.P15241837278001430146

/-! ## A011248.P14653114363114477253

`lcm(2, A028296(n))`
-/

namespace A011248.P14653114363114477253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A028296 n)

end

end A011248.P14653114363114477253

/-! ## A011248.P17271712859037061744

`2*A125053(n²)`
-/

namespace A011248.P17271712859037061744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125053 (n ^ 2)

end

end A011248.P17271712859037061744

/-! ## A011248.P14901047126769386156

`2*A060074(∑[n])`
-/

namespace A011248.P14901047126769386156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060074 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A011248.P14901047126769386156

/-!
# A011251: Numbers n such that phi(n) + sigma(n) = 3n.

The programs for A011251, there is no canonical definition to state claims against.
-/

/-! ## A011251.P11808345623788853346

`A011774(lt[A173911(n), A374630(n)])`
-/

namespace A011251.P11808345623788853346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173911 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374630 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011774 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A011251.P11808345623788853346

/-! ## A011251.P17984527651628892903

`A011774(A164699(n+1)+A086636(n))`
-/

namespace A011251.P17984527651628892903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011774 (A164699 (n + 1) + A086636 n).toNat

end

end A011251.P17984527651628892903

/-!
# A011257: Numbers k such that the geometric mean of phi(k) and sigma(k) is an integer.

The programs for A011257, there is no canonical definition to state claims against.
-/

/-! ## A011257.P1014651134235599701

`eq[A000007(n), A015710(A028310(n))]`
-/

namespace A011257.P1014651134235599701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015710 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A011257.P1014651134235599701

/-! ## A011257.P9866299272442009504

`eq[A000038(n), A015710(A028310(n))]`
-/

namespace A011257.P9866299272442009504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015710 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A011257.P9866299272442009504

/-! ## A011257.P16586833318181011834

`eq[A000007(n), A015710(A000007(n)+n)]`
-/

namespace A011257.P16586833318181011834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015710 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A011257.P16586833318181011834

/-! ## A011257.P7667180415534261710

`eq[A000038(n), A015710(A000038(n)+n)]`
-/

namespace A011257.P7667180415534261710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015710 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A011257.P7667180415534261710

/-! ## A011257.P12101806232658475844

`∪[A293391(n+1), A327624(n+1)]`
-/

namespace A011257.P12101806232658475844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A011257.P12101806232658475844

/-!
# A011260: Number of primitive polynomials of degree n over GF(2).

The programs for A011260, the canonical program `A011260.P16571897072566913412` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011260 has offset 1).

The definition of A011260 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011260.P10685527333392255808

`A000020(2-(1-n)%(n+1))`
-/

namespace A011260.P10685527333392255808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000020 (2 - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A011260.P10685527333392255808

namespace A011260

/-- `A000020(2-(1-n)%(n+1))` -/
def P10685527333392255808.Spec : Prop :=
  ∀ n, P10685527333392255808.a n = A011260 (n + 1)

end A011260

/-! ## A011260.P16218206751963708883

`A000020(floor(n²/(n+1))+2)`
-/

namespace A011260.P16218206751963708883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000020 (⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋ + 2).toNat

end

end A011260.P16218206751963708883

namespace A011260

/-- `A000020(floor(n²/(n+1))+2)` -/
def P16218206751963708883.Spec : Prop :=
  ∀ n, P16218206751963708883.a n = A011260 (n + 1)

end A011260

/-! ## A011260.P15444769136431287054

`A000020(n+1)-A000007(n)`
-/

namespace A011260.P15444769136431287054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000020 (n + 1) - A000007 n

end

end A011260.P15444769136431287054

namespace A011260

/-- `A000020(n+1)-A000007(n)` -/
def P15444769136431287054.Spec : Prop :=
  ∀ n, P15444769136431287054.a n = A011260 (n + 1)

end A011260

/-! ## A011260.P6730385642620770560

`A000020(n+1)/A054977(n)`
-/

namespace A011260.P6730385642620770560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000020 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A011260.P6730385642620770560

namespace A011260

/-- `A000020(n+1)/A054977(n)` -/
def P6730385642620770560.Spec : Prop :=
  ∀ n, P6730385642620770560.a n = (A011260 (n + 1) : ℚ)

end A011260

/-! ## A011260.P4269506745132416977

`A000020(n+1)+A057427(n)-1`
-/

namespace A011260.P4269506745132416977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000020 (n + 1) + (A057427 n - 1)

end

end A011260.P4269506745132416977

namespace A011260

/-- `A000020(n+1)+A057427(n)-1` -/
def P4269506745132416977.Spec : Prop :=
  ∀ n, P4269506745132416977.a n = A011260 (n + 1)

end A011260

/-! ## A011260.P4204144048404715888

`A000020(n+1)/gcd(2, A058943(n+1))`
-/

namespace A011260.P4204144048404715888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000020 (n + 1) : ℚ) / (Int.gcd 2 (A058943 (n + 1)) : ℚ)

end

end A011260.P4204144048404715888

namespace A011260

/-- `A000020(n+1)/gcd(2, A058943(n+1))` -/
def P4204144048404715888.Spec : Prop :=
  ∀ n, P4204144048404715888.a n = (A011260 (n + 1) : ℚ)

end A011260

/-! ## A011260.P12928336263623442866

`gcd(A000020(n+1), A008683(A062383(n)))`
-/

namespace A011260.P12928336263623442866
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000020 (n + 1)) (A008683 (A062383 n).toNat)

end

end A011260.P12928336263623442866

namespace A011260

/-- `gcd(A000020(n+1), A008683(A062383(n)))` -/
def P12928336263623442866.Spec : Prop :=
  ∀ n, (P12928336263623442866.a n : ℤ) = A011260 (n + 1)

end A011260

/-! ## A011260.P1301375005362096066

`A000020(n+1)+A008683(A062383(n+1))`
-/

namespace A011260.P1301375005362096066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000020 (n + 1) + A008683 (A062383 (n + 1)).toNat

end

end A011260.P1301375005362096066

namespace A011260

/-- `A000020(n+1)+A008683(A062383(n+1))` -/
def P1301375005362096066.Spec : Prop :=
  ∀ n, P1301375005362096066.a n = A011260 (n + 1)

end A011260

/-! ## A011260.P4849767715080726104

`A000020(n+1)-A230403(A014580(n+1))`
-/

namespace A011260.P4849767715080726104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000020 (n + 1) - A230403 (A014580 (n + 1)).toNat

end

end A011260.P4849767715080726104

namespace A011260

/-- `A000020(n+1)-A230403(A014580(n+1))` -/
def P4849767715080726104.Spec : Prop :=
  ∀ n, P4849767715080726104.a n = A011260 (n + 1)

end A011260

/-! ## A011260.P12267894505337192302

`A281154(a(A281154(n)))+A000020(n+1)` with `a(0)=1`
-/

namespace A011260.P12267894505337192302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A281154 (a (A281154 n).toNat).toNat + A000020 (n + 1)

end

end A011260.P12267894505337192302

namespace A011260

/-- `A281154(a(A281154(n)))+A000020(n+1)` -/
def P12267894505337192302.Spec : Prop :=
  ∀ n, P12267894505337192302.a n = A011260 (n + 1)

end A011260

/-! ## A011260.P10720297323397633303

`A000020(n+1)-A010054(A010054(n)+n)`
-/

namespace A011260.P10720297323397633303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000020 (n + 1) - A010054 (A010054 n + (n : ℤ)).toNat

end

end A011260.P10720297323397633303

namespace A011260

/-- `A000020(n+1)-A010054(A010054(n)+n)` -/
def P10720297323397633303.Spec : Prop :=
  ∀ n, P10720297323397633303.a n = A011260 (n + 1)

end A011260

/-! ## A011260.P16571897072566913412

`A053287(n+1)/(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A011260

/-- `A053287(n+1)/(n+1)` -/
def P16571897072566913412.Spec : Prop :=
  ∀ n, P16571897072566913412.a n = (A011260 (n + 1) : ℚ)

end A011260

/-! ## A011260.P7544064815442887451

`A053287(n+1)-n*A000020(n+1)`
-/

namespace A011260.P7544064815442887451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053287 (n + 1) - (n : ℤ) * A000020 (n + 1)

end

end A011260.P7544064815442887451

namespace A011260

/-- `A053287(n+1)-n*A000020(n+1)` -/
def P7544064815442887451.Spec : Prop :=
  ∀ n, P7544064815442887451.a n = A011260 (n + 1)

end A011260

/-! ## A011260.P2331702825362373367

`(A126646(n)-A053288(n+1))/(n+1)`
-/

namespace A011260.P2331702825362373367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126646 n - A053288 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A011260.P2331702825362373367

namespace A011260

/-- `(A126646(n)-A053288(n+1))/(n+1)` -/
def P2331702825362373367.Spec : Prop :=
  ∀ n, P2331702825362373367.a n = (A011260 (n + 1) : ℚ)

end A011260

/-! ## A011260.P4679646443932206653

`A000020(n+1)-A008683(A062383(n)²)`
-/

namespace A011260.P4679646443932206653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000020 (n + 1) - A008683 (A062383 n ^ 2).toNat

end

end A011260.P4679646443932206653

namespace A011260

/-- `A000020(n+1)-A008683(A062383(n)²)` -/
def P4679646443932206653.Spec : Prop :=
  ∀ n, P4679646443932206653.a n = A011260 (n + 1)

end A011260

/-! ## A011260.P17867986082100456213

`A000020(n+1)-A097331(2*n)`
-/

namespace A011260.P17867986082100456213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000020 (n + 1) - A097331 (2 * n)

end

end A011260.P17867986082100456213

namespace A011260

/-- `A000020(n+1)-A097331(2*n)` -/
def P17867986082100456213.Spec : Prop :=
  ∀ n, P17867986082100456213.a n = A011260 (n + 1)

end A011260

/-! ## A011260.P2274626989113635637

`A027695(n+1)/A053285(n+1)`
-/

namespace A011260.P2274626989113635637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027695 (n + 1) : ℚ) / (A053285 (n + 1) : ℚ)

end

end A011260.P2274626989113635637

namespace A011260

/-- `A027695(n+1)/A053285(n+1)` -/
def P2274626989113635637.Spec : Prop :=
  ∀ n, P2274626989113635637.a n = (A011260 (n + 1) : ℚ)

end A011260

/-! ## A011260.P1604176711725126294

`A027742(n+1)/A063474(n+1)`
-/

namespace A011260.P1604176711725126294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027742 (n + 1) : ℚ) / (A063474 (n + 1) : ℚ)

end

end A011260.P1604176711725126294

namespace A011260

/-- `A027742(n+1)/A063474(n+1)` -/
def P1604176711725126294.Spec : Prop :=
  ∀ n, P1604176711725126294.a n = (A011260 (n + 1) : ℚ)

end A011260

/-!
# A011262: In the prime factorization of n, increment odd powers and decrement even powers (multiplicative and self-inverse).

The programs for A011262, the canonical program `A011262.P4477044997236671341` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011262 has offset 1).

The definition of A011262 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011262.P1581491013510984820

`(n+1)²/A011264(n+1)`
-/

namespace A011262.P1581491013510984820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A011264 (n + 1) : ℚ)

end

end A011262.P1581491013510984820

namespace A011262

/-- `(n+1)²/A011264(n+1)` -/
def P1581491013510984820.Spec : Prop :=
  ∀ n, P1581491013510984820.a n = (A011262 (n + 1) : ℚ)

end A011262

/-! ## A011262.P11853949869604553157

`(n+1)/∏{p}[n+1, #]*A007913(n+1)²`
-/

namespace A011262.P11853949869604553157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A007913 (n + 1) ^ 2 : ℚ)

end

end A011262.P11853949869604553157

namespace A011262

/-- `(n+1)/∏{p}[n+1, #]*A007913(n+1)²` -/
def P11853949869604553157.Spec : Prop :=
  ∀ n, P11853949869604553157.a n = (A011262 (n + 1) : ℚ)

end A011262

/-! ## A011262.P8460977689900404479

`A003557(n+1)*A055491(n+1)`
-/

namespace A011262.P8460977689900404479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A055491 (n + 1)

end

end A011262.P8460977689900404479

namespace A011262

/-- `A003557(n+1)*A055491(n+1)` -/
def P8460977689900404479.Spec : Prop :=
  ∀ n, P8460977689900404479.a n = A011262 (n + 1)

end A011262

/-! ## A011262.P3915255668004365484

`A007913(n+1)*A350390(n+1)`
-/

namespace A011262.P3915255668004365484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * A350390 (n + 1)

end

end A011262.P3915255668004365484

namespace A011262

/-- `A007913(n+1)*A350390(n+1)` -/
def P3915255668004365484.Spec : Prop :=
  ∀ n, P3915255668004365484.a n = A011262 (n + 1)

end A011262

/-! ## A011262.P10832564148939058267

`A053143(n+1)/A336643(n+1)`
-/

namespace A011262.P10832564148939058267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053143 (n + 1) : ℚ) / (A336643 (n + 1) : ℚ)

end

end A011262.P10832564148939058267

namespace A011262

/-- `A053143(n+1)/A336643(n+1)` -/
def P10832564148939058267.Spec : Prop :=
  ∀ n, P10832564148939058267.a n = (A011262 (n + 1) : ℚ)

end A011262

/-! ## A011262.P10173829793581301691

`Δ[A069891(n)]²*A003557(n+1)`
-/

namespace A011262.P10173829793581301691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A003557 (n + 1)

end

end A011262.P10173829793581301691

namespace A011262

/-- `Δ[A069891(n)]²*A003557(n+1)` -/
def P10173829793581301691.Spec : Prop :=
  ∀ n, P10173829793581301691.a n = A011262 (n + 1)

end A011262

/-! ## A011262.P4477044997236671341

`A007913(n+1)²*A003557(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A011262

/-- `A007913(n+1)²*A003557(n+1)` -/
def P4477044997236671341.Spec : Prop :=
  ∀ n, P4477044997236671341.a n = A011262 (n + 1)

theorem P4477044997236671341.correct : P4477044997236671341.Spec := by
  intro n
  simp only [A011262, Nat.add_sub_cancel]

end A011262

/-! ## A011262.P7127507917259384693

`A053143(n+1)²/A064549(n+1)`
-/

namespace A011262.P7127507917259384693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053143 (n + 1) ^ 2 : ℚ) / (A064549 (n + 1) : ℚ)

end

end A011262.P7127507917259384693

namespace A011262

/-- `A053143(n+1)²/A064549(n+1)` -/
def P7127507917259384693.Spec : Prop :=
  ∀ n, P7127507917259384693.a n = (A011262 (n + 1) : ℚ)

end A011262

/-! ## A011262.P2518913513583469283

`A350390(n+1)²/A003557(n+1)`
-/

namespace A011262.P2518913513583469283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350390 (n + 1) ^ 2 : ℚ) / (A003557 (n + 1) : ℚ)

end

end A011262.P2518913513583469283

namespace A011262

/-- `A350390(n+1)²/A003557(n+1)` -/
def P2518913513583469283.Spec : Prop :=
  ∀ n, P2518913513583469283.a n = (A011262 (n + 1) : ℚ)

end A011262

/-! ## A011262.P15953578517319869753

`A019554(n+1)²/A336643(n+1)`
-/

namespace A011262.P15953578517319869753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019554 (n + 1) ^ 2 : ℚ) / (A336643 (n + 1) : ℚ)

end

end A011262.P15953578517319869753

namespace A011262

/-- `A019554(n+1)²/A336643(n+1)` -/
def P15953578517319869753.Spec : Prop :=
  ∀ n, P15953578517319869753.a n = (A011262 (n + 1) : ℚ)

end A011262

/-! ## A011262.P17729098881131889668

`A064549(n+1)/A336643(n+1)²`
-/

namespace A011262.P17729098881131889668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064549 (n + 1) : ℚ) / (A336643 (n + 1) ^ 2 : ℚ)

end

end A011262.P17729098881131889668

namespace A011262

/-- `A064549(n+1)/A336643(n+1)²` -/
def P17729098881131889668.Spec : Prop :=
  ∀ n, P17729098881131889668.a n = (A011262 (n + 1) : ℚ)

end A011262

/-! ## A011262.P4066846571098033567

`A019554(n+1)²²/A064549(n+1)`
-/

namespace A011262.P4066846571098033567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A019554 (n + 1) ^ 2) ^ 2 : ℚ) / (A064549 (n + 1) : ℚ)

end

end A011262.P4066846571098033567

namespace A011262

/-- `A019554(n+1)²²/A064549(n+1)` -/
def P4066846571098033567.Spec : Prop :=
  ∀ n, P4066846571098033567.a n = (A011262 (n + 1) : ℚ)

end A011262

/-! ## A011262.P7851022536091532664

`(A336551(n+1)+1)*A007913(n+1)²`
-/

namespace A011262.P7851022536091532664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A336551 (n + 1) + 1) * A007913 (n + 1) ^ 2

end

end A011262.P7851022536091532664

namespace A011262

/-- `(A336551(n+1)+1)*A007913(n+1)²` -/
def P7851022536091532664.Spec : Prop :=
  ∀ n, P7851022536091532664.a n = A011262 (n + 1)

end A011262

/-! ## A011262.P2681671880718177012

`(n+1-A326128(n+1))²*A003557(n+1)`
-/

namespace A011262.P2681671880718177012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A326128 (n + 1)) ^ 2 * A003557 (n + 1)

end

end A011262.P2681671880718177012

namespace A011262

/-- `(n+1-A326128(n+1))²*A003557(n+1)` -/
def P2681671880718177012.Spec : Prop :=
  ∀ n, P2681671880718177012.a n = A011262 (n + 1)

end A011262

/-! ## A011262.P13063988530849089862

`A007913(n+1)*A102631(A019554(n+1))`
-/

namespace A011262.P13063988530849089862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * A102631 (A019554 (n + 1)).toNat

end

end A011262.P13063988530849089862

namespace A011262

/-- `A007913(n+1)*A102631(A019554(n+1))` -/
def P13063988530849089862.Spec : Prop :=
  ∀ n, P13063988530849089862.a n = A011262 (n + 1)

end A011262

/-! ## A011262.P11164722337856351193

`A053143(n+1)/A007913(A003557(n+1))`
-/

namespace A011262.P11164722337856351193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053143 (n + 1) : ℚ) / (A007913 (A003557 (n + 1)).toNat : ℚ)

end

end A011262.P11164722337856351193

namespace A011262

/-- `A053143(n+1)/A007913(A003557(n+1))` -/
def P11164722337856351193.Spec : Prop :=
  ∀ n, P11164722337856351193.a n = (A011262 (n + 1) : ℚ)

end A011262

/-! ## A011262.P1801356918761600709

`A019554(n+1)²/A007913(A003557(n+1))`
-/

namespace A011262.P1801356918761600709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019554 (n + 1) ^ 2 : ℚ) / (A007913 (A003557 (n + 1)).toNat : ℚ)

end

end A011262.P1801356918761600709

namespace A011262

/-- `A019554(n+1)²/A007913(A003557(n+1))` -/
def P1801356918761600709.Spec : Prop :=
  ∀ n, P1801356918761600709.a n = (A011262 (n + 1) : ℚ)

end A011262

/-! ## A011262.P12027589819598159292

`A064549(n+1)/A007913(A003557(n+1))²`
-/

namespace A011262.P12027589819598159292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064549 (n + 1) : ℚ) / (A007913 (A003557 (n + 1)).toNat ^ 2 : ℚ)

end

end A011262.P12027589819598159292

namespace A011262

/-- `A064549(n+1)/A007913(A003557(n+1))²` -/
def P12027589819598159292.Spec : Prop :=
  ∀ n, P12027589819598159292.a n = (A011262 (n + 1) : ℚ)

end A011262

/-! ## A011262.P14876102523383327214

`A064549(n+1)/A007948(A071974(n+1)²)`
-/

namespace A011262.P14876102523383327214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064549 (n + 1) : ℚ) / (A007948 (A071974 (n + 1) ^ 2).toNat : ℚ)

end

end A011262.P14876102523383327214

namespace A011262

/-- `A064549(n+1)/A007948(A071974(n+1)²)` -/
def P14876102523383327214.Spec : Prop :=
  ∀ n, P14876102523383327214.a n = (A011262 (n + 1) : ℚ)

end A011262

/-! ## A011262.P8432567748835115296

`A007913(n+1)/A007947(n+1)*A053143(n+1)`
-/

namespace A011262.P8432567748835115296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007913 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ) * (A053143 (n + 1) : ℚ)

end

end A011262.P8432567748835115296

namespace A011262

/-- `A007913(n+1)/A007947(n+1)*A053143(n+1)` -/
def P8432567748835115296.Spec : Prop :=
  ∀ n, P8432567748835115296.a n = (A011262 (n + 1) : ℚ)

end A011262

/-!
# A011264: In the prime factorization of n, increment even powers and decrement odd powers (multiplicative).

The programs for A011264, the canonical program `A011264.P11087742381931658999` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011264 has offset 1).

The definition of A011264 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, A356191, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A011264.P12233860437058591143

`(n+1)²/A011262(n+1)`
-/

namespace A011264.P12233860437058591143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A011262 (n + 1) : ℚ)

end

end A011264.P12233860437058591143

namespace A011264

/-- `(n+1)²/A011262(n+1)` -/
def P12233860437058591143.Spec : Prop :=
  ∀ n, P12233860437058591143.a n = (A011264 (n + 1) : ℚ)

end A011264

/-! ## A011264.P11087742381931658999

`A356191(n+1)/A007913(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A011264

/-- `A356191(n+1)/A007913(n+1)` -/
def P11087742381931658999.Spec : Prop :=
  ∀ n, P11087742381931658999.a n = (A011264 (n + 1) : ℚ)

end A011264

/-! ## A011264.P16366248841370934571

`(n+1)*A336643(n+1)/A007913(n+1)`
-/

namespace A011264.P16366248841370934571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A336643 (n + 1) : ℚ) / (A007913 (n + 1) : ℚ)

end

end A011264.P16366248841370934571

namespace A011264

/-- `(n+1)*A336643(n+1)/A007913(n+1)` -/
def P16366248841370934571.Spec : Prop :=
  ∀ n, P16366248841370934571.a n = (A011264 (n + 1) : ℚ)

end A011264

/-! ## A011264.P4399887061679902830

`(n+1)*A007947(n+1)/A007913(n+1)²`
-/

namespace A011264.P4399887061679902830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A007947 (n + 1) : ℚ) / (A007913 (n + 1) ^ 2 : ℚ)

end

end A011264.P4399887061679902830

namespace A011264

/-- `(n+1)*A007947(n+1)/A007913(n+1)²` -/
def P4399887061679902830.Spec : Prop :=
  ∀ n, P4399887061679902830.a n = (A011264 (n + 1) : ℚ)

end A011264

/-! ## A011264.P12884032598630772649

`A008833(n+1)*A336643(n+1)`
-/

namespace A011264.P12884032598630772649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1) * A336643 (n + 1)

end

end A011264.P12884032598630772649

namespace A011264

/-- `A008833(n+1)*A336643(n+1)` -/
def P12884032598630772649.Spec : Prop :=
  ∀ n, P12884032598630772649.a n = A011264 (n + 1)

end A011264

/-! ## A011264.P14597080711511510022

`A064549(n+1)/A055491(n+1)`
-/

namespace A011264.P14597080711511510022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064549 (n + 1) : ℚ) / (A055491 (n + 1) : ℚ)

end

end A011264.P14597080711511510022

namespace A011264

/-- `A064549(n+1)/A055491(n+1)` -/
def P14597080711511510022.Spec : Prop :=
  ∀ n, P14597080711511510022.a n = (A011264 (n + 1) : ℚ)

end A011264

/-! ## A011264.P12375207406149898392

`A000188(n+1)²*A336643(n+1)`
-/

namespace A011264.P12375207406149898392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1) ^ 2 * A336643 (n + 1)

end

end A011264.P12375207406149898392

namespace A011264

/-- `A000188(n+1)²*A336643(n+1)` -/
def P12375207406149898392.Spec : Prop :=
  ∀ n, P12375207406149898392.a n = A011264 (n + 1)

end A011264

/-! ## A011264.P4559912102717865011

`A336643(n+1)²*A003557(n+1)`
-/

namespace A011264.P4559912102717865011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (n + 1) ^ 2 * A003557 (n + 1)

end

end A011264.P4559912102717865011

namespace A011264

/-- `A336643(n+1)²*A003557(n+1)` -/
def P4559912102717865011.Spec : Prop :=
  ∀ n, P4559912102717865011.a n = A011264 (n + 1)

end A011264

/-! ## A011264.P2184640401167050691

`A008833(n+1)²/A003557(n+1)`
-/

namespace A011264.P2184640401167050691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008833 (n + 1) ^ 2 : ℚ) / (A003557 (n + 1) : ℚ)

end

end A011264.P2184640401167050691

namespace A011264

/-- `A008833(n+1)²/A003557(n+1)` -/
def P2184640401167050691.Spec : Prop :=
  ∀ n, P2184640401167050691.a n = (A011264 (n + 1) : ℚ)

end A011264

/-! ## A011264.P16463294895045229370

`A064549(n+1)/A007913(n+1)²`
-/

namespace A011264.P16463294895045229370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064549 (n + 1) : ℚ) / (A007913 (n + 1) ^ 2 : ℚ)

end

end A011264.P16463294895045229370

namespace A011264

/-- `A064549(n+1)/A007913(n+1)²` -/
def P16463294895045229370.Spec : Prop :=
  ∀ n, P16463294895045229370.a n = (A011264 (n + 1) : ℚ)

end A011264

/-! ## A011264.P7533761006687541536

`A356191(n+1)²/A064549(n+1)`
-/

namespace A011264.P7533761006687541536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356191 (n + 1) ^ 2 : ℚ) / (A064549 (n + 1) : ℚ)

end

end A011264.P7533761006687541536

namespace A011264

/-- `A356191(n+1)²/A064549(n+1)` -/
def P7533761006687541536.Spec : Prop :=
  ∀ n, P7533761006687541536.a n = (A011264 (n + 1) : ℚ)

end A011264

/-! ## A011264.P5085558487583302923

`(A336642(n+1)+1)*A336643(n+1)`
-/

namespace A011264.P5085558487583302923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A336642 (n + 1) + 1) * A336643 (n + 1)

end

end A011264.P5085558487583302923

namespace A011264

/-- `(A336642(n+1)+1)*A336643(n+1)` -/
def P5085558487583302923.Spec : Prop :=
  ∀ n, P5085558487583302923.a n = A011264 (n + 1)

end A011264

/-! ## A011264.P4240348058814834214

`A000188(n+1)²²/A003557(n+1)`
-/

namespace A011264.P4240348058814834214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000188 (n + 1) ^ 2) ^ 2 : ℚ) / (A003557 (n + 1) : ℚ)

end

end A011264.P4240348058814834214

namespace A011264

/-- `A000188(n+1)²²/A003557(n+1)` -/
def P4240348058814834214.Spec : Prop :=
  ∀ n, P4240348058814834214.a n = (A011264 (n + 1) : ℚ)

end A011264

/-! ## A011264.P3788847393531587312

`(A336551(n+1)+1)*A336643(n+1)²`
-/

namespace A011264.P3788847393531587312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A336551 (n + 1) + 1) * A336643 (n + 1) ^ 2

end

end A011264.P3788847393531587312

namespace A011264

/-- `(A336551(n+1)+1)*A336643(n+1)²` -/
def P3788847393531587312.Spec : Prop :=
  ∀ n, P3788847393531587312.a n = A011264 (n + 1)

end A011264

/-! ## A011264.P10469521193320541787

`A008833(n+1)²/(A336551(n+1)+1)`
-/

namespace A011264.P10469521193320541787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008833 (n + 1) ^ 2 : ℚ) / (A336551 (n + 1) + 1 : ℚ)

end

end A011264.P10469521193320541787

namespace A011264

/-- `A008833(n+1)²/(A336551(n+1)+1)` -/
def P10469521193320541787.Spec : Prop :=
  ∀ n, P10469521193320541787.a n = (A011264 (n + 1) : ℚ)

end A011264

/-! ## A011264.P4001788732779233775

`(A078310(n+1)-1)/A007913(n+1)²`
-/

namespace A011264.P4001788732779233775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078310 (n + 1) - 1 : ℚ) / (A007913 (n + 1) ^ 2 : ℚ)

end

end A011264.P4001788732779233775

namespace A011264

/-- `(A078310(n+1)-1)/A007913(n+1)²` -/
def P4001788732779233775.Spec : Prop :=
  ∀ n, P4001788732779233775.a n = (A011264 (n + 1) : ℚ)

end A011264

/-! ## A011264.P16419874377665635470

`(n+1)²/(A007913(n+1)*A350390(n+1))`
-/

namespace A011264.P16419874377665635470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A007913 (n + 1) * A350390 (n + 1) : ℚ)

end

end A011264.P16419874377665635470

namespace A011264

/-- `(n+1)²/(A007913(n+1)*A350390(n+1))` -/
def P16419874377665635470.Spec : Prop :=
  ∀ n, P16419874377665635470.a n = (A011264 (n + 1) : ℚ)

end A011264

/-! ## A011264.P7185275490793523359

`((n+1)/A007913(n+1))²/A003557(n+1)`
-/

namespace A011264.P7185275490793523359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (A007913 (n + 1) : ℚ)) ^ 2 / (A003557 (n + 1) : ℚ)

end

end A011264.P7185275490793523359

namespace A011264

/-- `((n+1)/A007913(n+1))²/A003557(n+1)` -/
def P7185275490793523359.Spec : Prop :=
  ∀ n, P7185275490793523359.a n = (A011264 (n + 1) : ℚ)

end A011264

/-! ## A011264.P995475034000969709

`A007913((n+1)/∏{p}[n+1, #])*A008833(n+1)`
-/

namespace A011264.P995475034000969709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat * A008833 (n + 1)

end

end A011264.P995475034000969709

namespace A011264

/-- `A007913((n+1)/∏{p}[n+1, #])*A008833(n+1)` -/
def P995475034000969709.Spec : Prop :=
  ∀ n, P995475034000969709.a n = A011264 (n + 1)

end A011264

/-! ## A011264.P4388569397625880581

`A008833(n+1)*A071773(A350388(n+1))`
-/

namespace A011264.P4388569397625880581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1) * A071773 (A350388 (n + 1)).toNat

end

end A011264.P4388569397625880581

namespace A011264

/-- `A008833(n+1)*A071773(A350388(n+1))` -/
def P4388569397625880581.Spec : Prop :=
  ∀ n, P4388569397625880581.a n = A011264 (n + 1)

end A011264

/-!
# A011266: a(n) = 2^(n*(n-1)/2)*n!.

The programs for A011266, the canonical program `A011266.P17725103883829805372` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011266 has offset 0).

The definition of A011266 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011266.P17725103883829805372

`2^(n*(n-1)/2)*n!`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011266

/-- `2^(n*(n-1)/2)*n!` -/
def P17725103883829805372.Spec : Prop :=
  ∀ n, P17725103883829805372.a n = (A011266 n : ℝ)

end A011266

/-! ## A011266.P5670598938924620425

`a(n-1)*n*2^(n-1)` with `a(0)=1`
-/

namespace A011266.P5670598938924620425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A011266.P5670598938924620425

namespace A011266

/-- `a(n-1)*n*2^(n-1)` -/
def P5670598938924620425.Spec : Prop :=
  ∀ n, P5670598938924620425.a n = (A011266 n : ℚ)

end A011266

/-! ## A011266.P3362771047185665780

`n!*2^C(n, 2)`
-/

namespace A011266.P3362771047185665780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * 2 ^ Nat.choose n 2

end

end A011266.P3362771047185665780

namespace A011266

/-- `n!*2^C(n, 2)` -/
def P3362771047185665780.Spec : Prop :=
  ∀ n, (P3362771047185665780.a n : ℤ) = A011266 n

end A011266

/-! ## A011266.P5802364178925845498

`n!*∏[ceil(2^(n-1))]`
-/

namespace A011266.P5802364178925845498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A011266.P5802364178925845498

namespace A011266

/-- `n!*∏[ceil(2^(n-1))]` -/
def P5802364178925845498.Spec : Prop :=
  ∀ n, P5802364178925845498.a n = A011266 n

end A011266

/-! ## A011266.P17608522041288275641

`∏[2*n/(n-1)*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A011266.P17608522041288275641
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (2 * n : ℚ) / ((n : ℤ) - 1 : ℚ) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A011266.P17608522041288275641

namespace A011266

/-- `∏[2*n/(n-1)*a(n-1)]` -/
def P17608522041288275641.Spec : Prop :=
  ∀ n, P17608522041288275641.a n = (A011266 n : ℚ)

end A011266

/-!
# A011270: Hybrid binary rooted trees with n nodes whose root is labeled by "n".

The programs for A011270, there is no canonical definition to state claims against.
-/

/-! ## A011270.P17007788821157969848

`A011274(A133263(n))`
-/

namespace A011270.P17007788821157969848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011274 (A133263 n).toNat

end

end A011270.P17007788821157969848

/-! ## A011270.P9922306933675102989

`A011274(A238531(n+1))`
-/

namespace A011270.P9922306933675102989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011274 (A238531 (n + 1)).toNat

end

end A011270.P9922306933675102989

/-! ## A011270.P2959665656411509865

`A007863(n)-A011272(n)`
-/

namespace A011270.P2959665656411509865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007863 n - A011272 n

end

end A011270.P2959665656411509865

/-! ## A011270.P9265753392152488373

`A011274(∑[n]+1)-A011272(n)`
-/

namespace A011270.P9265753392152488373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011274 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A011272 n

end

end A011270.P9265753392152488373

/-! ## A011270.P12535426324354553480

`A011274(∑[A172471(A000124(n))])`
-/

namespace A011270.P12535426324354553480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011274 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011270.P12535426324354553480

/-! ## A011270.P9279671279735103657

`A011274(A057427(n)+A000124(n))`
-/

namespace A011270.P9279671279735103657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011274 (A057427 n + A000124 n).toNat

end

end A011270.P9279671279735103657

/-! ## A011270.P4425792558351375529

`A011274(A010000(n)-A161680(n))`
-/

namespace A011270.P4425792558351375529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011274 (A010000 n - A161680 n).toNat

end

end A011270.P4425792558351375529

/-! ## A011270.P12910607608605515071

`A011274(2-(A057427(n)-A000124(n)))`
-/

namespace A011270.P12910607608605515071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011274 (2 - (A057427 n - A000124 n)).toNat

end

end A011270.P12910607608605515071

/-!
# A011272: Hybrid binary rooted trees with n nodes whose root is labeled by "a".

The programs for A011272, there is no canonical definition to state claims against.
-/

/-! ## A011272.P1314592587126434166

`A007863(n)-A011270(n)`
-/

namespace A011272.P1314592587126434166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007863 n - A011270 n

end

end A011272.P1314592587126434166

/-! ## A011272.P12420460519471997389

`A011274(∑[n]+1)-A011270(n)`
-/

namespace A011272.P12420460519471997389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011274 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A011270 n

end

end A011272.P12420460519471997389

/-! ## A011272.P3457995789864652905

`record[A011274(n+1)]-A011270(n)`
-/

namespace A011272.P3457995789864652905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A011270 n

end

end A011272.P3457995789864652905

/-! ## A011272.P13727062080742460963

`A011365(n+1)+2*A007863(n)`
-/

namespace A011272.P13727062080742460963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011365 (n + 1) + 2 * A007863 n

end

end A011272.P13727062080742460963

/-! ## A011272.P13527998810024564146

`record[A011274(n+1)]-A011274(A133263(n))`
-/

namespace A011272.P13527998810024564146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A011274 (A133263 n).toNat

end

end A011272.P13527998810024564146

/-!
# A011274: Triangle of numbers of hybrid rooted trees (divided by Fibonacci numbers).

The programs for A011274, there is no canonical definition to state claims against.
-/

/-! ## A011274.P13661739482365297370

`A193589(∑[2*n]%comp[∑[n]])`
-/

namespace A011274.P13661739482365297370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193589 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A011274.P13661739482365297370

/-! ## A011274.P4026565834238677394

`A193589(∑[char[∑[n]]]²-(n+1))`
-/

namespace A011274.P4026565834238677394
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193589 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A011274.P4026565834238677394

/-! ## A011274.P9974489448797343287

`lcm(A033999(n), A193589(A061579(n)))`
-/

namespace A011274.P9974489448797343287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A193589 (A061579 n).toNat)

end

end A011274.P9974489448797343287

/-! ## A011274.P3536844685827380240

`A193589(A061579(n))%A000051(n)`
-/

namespace A011274.P3536844685827380240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193589 (A061579 n).toNat) (A000051 n)

end

end A011274.P3536844685827380240

/-! ## A011274.P16341073102114440372

`A033999(A035544(2*n+1))*A193589(A061579(n))`
-/

namespace A011274.P16341073102114440372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A035544 (2 * n + 1)).toNat * A193589 (A061579 n).toNat

end

end A011274.P16341073102114440372

/-! ## A011274.P4415941684888553083

`A033999(A270297(n+1))*A193589(A061579(n))`
-/

namespace A011274.P4415941684888553083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A270297 (n + 1)).toNat * A193589 (A061579 n).toNat

end

end A011274.P4415941684888553083

